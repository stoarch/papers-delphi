unit Frame_Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, sFrameAdapter;

type
  //**[ TEditorFrame ]**********************************************
  //* goal: base class for all editors
  //* protocol:
  //*   1. initialization
  //*     a. make an instance
  //*     b. setup the data (as described in childs)
  //*     c. call the initialize 
  TEditorFrame = class(TSkinedFrame)
  private
    m_changed : boolean;
    FOnDataChanged: TNotifyEvent;
    Fis_internal_changes: boolean;

    procedure SetOnDataChanged(const Value: TNotifyEvent);
    procedure setChanged(const Value: boolean);
    procedure Setis_internal_changes(const Value: boolean);

    { Private declarations }
  published
    //--[ events ]--
    property OnDataChanged : TNotifyEvent read FOnDataChanged write SetOnDataChanged;

  protected
    //--[ methods ]--
    procedure fire_dataChanged;

    //--[ properties ]--
    property data_changed : boolean read m_changed write setChanged;
    property is_internal_changes : boolean read Fis_internal_changes write Setis_internal_changes;
  public
    { Public declarations }
    //--[ methods ]--
    procedure Initialize();virtual;

    //--[ properties ]--
    property isChanged : boolean read m_changed;
  end;

var
  EditorFrame: TEditorFrame;

implementation

{$R *.dfm}

{ TEditorFrame }

procedure TEditorFrame.fire_dataChanged;
begin
  if( assigned( FOnDataChanged ))then
    FOnDataChanged( self );
end;


procedure TEditorFrame.Initialize;
begin
  //do nothing
end;

procedure TEditorFrame.setChanged(const Value: boolean);
begin
  m_changed := value;
  if( value ) then
    fire_dataChanged();
end;

procedure TEditorFrame.Setis_internal_changes(const Value: boolean);
begin
  Fis_internal_changes := Value;
end;

procedure TEditorFrame.SetOnDataChanged(const Value: TNotifyEvent);
begin
  FOnDataChanged := Value;
end;

end.
