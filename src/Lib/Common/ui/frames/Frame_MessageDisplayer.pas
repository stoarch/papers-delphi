unit Frame_MessageDisplayer;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, ComCtrls, bsSkinCtrls, bsSkinData, bsSkinBoxCtrls,
  //--[ interfaces ]--
  interface_message,
  interface_messageInformationDisplayer
  ;

type
  TOnSelectMessage = procedure ( sender : tobject; msg_index : integer ) of object;

  TMessageDisplayer = class(TSkinedFrame)
    messages_list_box: TbsSkinListBox;
    procedure messages_list_boxClick(Sender: TObject);
  private
    { Private declarations }
    m_displayer : IMessageInformationDisplayer;
    m_on_select_message : TOnSelectMessage;
    procedure set_on_select_message(const Value: TOnSelectMessage);
    procedure fire_on_select_message;
  public
    { Public declarations }
    destructor Destroy();override;

    procedure add( message : IMessage );
    procedure remove( index : integer );

    procedure setSkinData( value : TbsSkinData );override;

    procedure setMessageInformationDisplayer( displayer : IMessageInformationDisplayer );

    //--[ events ]--
    property OnSelectMessage : TOnSelectMessage read m_on_select_message write set_on_select_message;
  end;

var
  MessageDisplayer: TMessageDisplayer;

implementation

{$R *.dfm}

{ TMessageDisplayer }

procedure TMessageDisplayer.add(message: IMessage);
begin
  messages_list_box.Items.Insert( 0, message.message );
end;

destructor TMessageDisplayer.Destroy;
begin
  m_displayer := nil;
  
  inherited;
end;

procedure TMessageDisplayer.setMessageInformationDisplayer(
  displayer: IMessageInformationDisplayer);
begin
  m_displayer := displayer;
end;

procedure TMessageDisplayer.setSkinData(value: TbsSkinData);
begin
  inherited;

  messages_list_box.SkinData := value;
end;

procedure TMessageDisplayer.fire_on_select_message();
begin
  if( assigned( m_on_select_message ))then
    m_on_select_message( self, messages_list_box.ItemIndex );
end;




procedure TMessageDisplayer.set_on_select_message(
  const Value: TOnSelectMessage);
begin
  m_on_select_message := value;
end;

procedure TMessageDisplayer.remove(index: integer);
begin
  messages_list_box.Items.Delete( index );
end;

procedure TMessageDisplayer.messages_list_boxClick(Sender: TObject);
begin
  showmessage( 'clicked' );
  fire_on_select_message();
end;

end.
