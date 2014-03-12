unit frame_functions;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, ComCtrls, sFrameAdapter, sTabControl,
  //--[ storage ]--
  storage_objectHashTable
  ;

type
  TFunctionsFrame = class(TSkinedFrame)
    tabs_functions: TsTabControl;
    procedure tabs_functionsChange(Sender: TObject);
  private
    { Private declarations }
    m_functions : TObjectHashTable;
    m_frame     : TSkinedFrame;
    m_internal_changes : boolean;
    
    function is_function(caption: string): boolean;
    function get_function_frame(index: integer): TSkinedFrame;
    function get_functions_count: integer;
    procedure show_frame(frame_name: string);
  public
    { Public declarations }
    constructor Create( aowner : TComponent );override;
    destructor Destroy();override;

    procedure add_function( caption : string; frame : TSkinedFrame );
    procedure clear();
    procedure select_function( caption : string );overload;
    procedure select_function( index   : integer );overload;
    procedure delete_function( caption : string );


    //--[ properties ]--
    property functions_count : integer read get_functions_count;
    property functions[ index : integer ] : TSkinedFrame read get_function_frame;

  end;

var
  FunctionsFrame: TFunctionsFrame;

implementation

{$R *.dfm}

{ TFunctionsFrame }
function TFunctionsFrame.is_function( caption : string ):boolean;
begin
  result := tabs_functions.tabs.indexOf( caption ) <> -1;
end;//function

procedure TFunctionsFrame.add_function(caption: string;frame: TSkinedFrame);
begin
  if( not is_function( caption ) )then
    begin
      m_internal_changes := true;

      tabs_functions.tabs.add( caption );
      m_functions.put( caption, frame );

      m_internal_changes := false;
    end;//if
  //select_function( caption );
  tabs_functions.visible := m_functions.count > 1;
end;

constructor TFunctionsFrame.Create(aowner: TComponent);
begin
  inherited;
  m_functions := TObjectHashTable.Create();
  m_functions.OwnObjects := true;
end;

procedure TFunctionsFrame.delete_function(caption: string);
begin
  assert( is_function( caption ), 'No function with name ' + caption );
  m_functions.delete( caption );
  tabs_functions.tabs.delete(
    tabs_functions.tabs.indexOf( caption )
  );
  if( not m_functions.is_empty )then
    select_function( tabs_functions.tabs[ 0 ] );
  tabs_functions.visible := m_functions.count > 1;
end;

destructor TFunctionsFrame.Destroy;
begin
  FreeAndNil( m_functions );
  inherited;
end;

procedure TFunctionsFrame.select_function(caption: string);
begin
  assert( is_function( caption ), 'No function with name ' + caption );
  if( tabs_functions.tabs.indexOf( caption ) = tabs_functions.tabIndex )then
    exit;

  tabs_functions.tabIndex := tabs_functions.tabs.indexOf( caption );
  show_frame( caption );
end;

procedure TFunctionsFrame.select_function(index: integer);
begin
  assert( ( index >= 0 )and( index < tabs_functions.tabs.count ), 'Invalid index specified ' + IntToStr( index ) + '. Not in range: 0..' + IntToStr( tabs_functions.tabs.count ) );

  tabs_functions.tabIndex := index;
  show_frame( tabs_functions.tabs[ tabs_functions.tabIndex ] );
end;


procedure TFunctionsFrame.tabs_functionsChange(Sender: TObject);
begin
  inherited;
  if( m_internal_changes )then exit;
  if(tabs_functions.tabIndex = -1)then exit;

  show_frame( tabs_functions.tabs[ tabs_functions.tabIndex ] );
end;

procedure TFunctionsFrame.show_frame( frame_name : string );
begin
  if( assigned( m_frame ) )then
  begin
    m_frame.hide();
    m_frame.parent := nil;
  end;//if

  m_frame := m_functions.get( frame_name ) as TSkinedFrame;
  m_frame.align := alClient;
  m_frame.parent:= self;
  m_frame.show();
  m_frame.setFocus();
end;

procedure TFunctionsFrame.clear;
begin
  if( tabs_functions = nil )or( tabs_functions.tabs.count = 0 )then
    exit;

  if( assigned( m_frame ) )then
  begin
    m_frame.hide();
    m_frame.parent := nil;
  end;//if
  tabs_functions.hide();
  application.processMessages;

  tabs_functions.tabs.clear();
  m_functions.clear();
end;

function TFunctionsFrame.get_function_frame(index: integer): TSkinedFrame;
begin
  result := nil;
  if tabs_functions.Tabs.count = 0 then
    exit;

  result := m_functions.get( tabs_functions.tabs[ index ] ) as TSkinedFrame;
end;

function TFunctionsFrame.get_functions_count: integer;
begin
  result := m_functions.count;
end;

end.
