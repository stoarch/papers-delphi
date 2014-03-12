unit Main_ReminderForm;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinData, bsTrayIcon, BusinessSkinForm, StdCtrls, bsSkinCtrls,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection, ExtCtrls,
  //--[ constants ]--
  const_strings,
  const_sql_documentMessageReceiver_Compound,
  const_user,
   //--[ interfaces ]--
  interface_compoundMessage,
  interface_message,
  interface_messageClient,
  interface_messageReceiver,
  interface_sql_documentMessageReceiver,
  interface_userData,
  //--[ factories ]--
  factory_data,
  factory_receiver,
  //--[ tools ]--
  tool_Environment,
  tool_messageScaner,
  tool_Settings
  ;

type
  TNewDocument_Status_Form = class(TForm, IMessageClient)
    pnl_content: TPanel;
    receive_button: TButton;
    lbl_message: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    m_scaner : TMessageScaner;
    m_document_count: integer;
    m_is_visible      : boolean;

    procedure finalize_db;
    procedure init_db;
    function get_user_data: IUserData;
    procedure showAnimated;
  public
    { Public declarations }
    constructor Create( AOwner : TComponent );override;
    destructor Destroy();override;

    //--[ methods ]--
    procedure initialize;
    procedure handle_message_arrival( message : IMessage );
  end;

var
  NewDocument_Status_Form: TNewDocument_Status_Form;

implementation

{$R *.dfm}

procedure TNewDocument_Status_Form.FormActivate(Sender: TObject);
begin
  ShowWindow( Application.Handle, SW_HIDE );
end;

procedure TNewDocument_Status_Form.init_db();
begin
{  with connection do
   begin
     protocol     := Environment.get_string( c_protocol );
     HostName     := Environment.get_string( c_host_name );
     Database     := Environment.get_string( c_database );
     User         := Environment.get_string( c_user );
     Port         := Environment.get_variant( c_db_port );
     LoginPrompt  := Environment.get_variant( c_login_prompt );
   end;//with

  connection.Connect;
  }
end;//proc

procedure TNewDocument_Status_Form.finalize_db();
begin
  {
   connection.Disconnect();
  }
end;//proc


function TNewDocument_Status_Form.get_user_data(): IUserData;
begin
  result := data_factory.createInstance( CLSID_UserData, IID_IUserData ) as IUserData;

  result.user_index := Settings.get_integer( c_user_ind, c_user_data );
end;//function

constructor TNewDocument_Status_Form.Create(AOwner: TComponent);
begin
  inherited;

  m_is_visible     := false;
  m_document_count := 0;
end;//constructor

procedure TNewDocument_Status_Form.initialize();
  var
    receiver : IMessageReceiver;
begin
  init_db();

  m_scaner := TMessageScaner.Create();

  receiver := receiver_factory.createInstance(
       CLSID_sql_DocumentMessageReceiver_Compound,
       IID_Isql_documentMessageReceiver
     )
      as IMessageReceiver;

  receiver.set_user_data( get_user_data() );

  m_scaner.setMessageClient( self );
  m_scaner.setMessageReceiver(
     receiver
  );

  m_scaner.start();
end;

destructor TNewDocument_Status_Form.Destroy;
begin
  if assigned( m_scaner ) then
  begin
    m_scaner.stop();
    FreeAndNil( m_scaner );
  end;//if

  finalize_db();

  inherited;
end;

procedure TNewDocument_Status_Form.handle_message_arrival(
  message: IMessage);
begin
  if( message is ICompoundMessage )then
  with message as ICompoundMessage do
  begin
    m_document_count := m_document_count + count;
  end;//if

  lbl_message.caption := Format( 'Получено (%d) документ(ов)',[ m_document_count ]);
  if ( not m_is_visible ) then
   begin
     showAnimated();
     m_is_visible := true;
   end
  else
   begin
     //nothing
   end;//if--else

  BringToFront();
end;

procedure TNewDocument_Status_Form.showAnimated();
  const
    STEP_DELAY           = 41;
    SHARP_STEP_DELAY     = 41;
    ANIMATION_STEP_COUNT = 30;

  var
    i : integer;
    step_shift  : integer;
    sharp_shift : integer;
begin
  visible := false;

  Left   := Screen.WorkAreaWidth - Width;
  Top    := Screen.WorkAreaHeight;

  step_shift  := Height div ANIMATION_STEP_COUNT;
  sharp_shift := Height mod ANIMATION_STEP_COUNT;

  visible    := true;

  BringWindowToTop(handle);
  BringWindowToTop(FindWindow('Shell_TrayWnd',''));

  for i := 1 to ANIMATION_STEP_COUNT do
   begin
     application.processMessages();
     sleep( STEP_DELAY );
     top    := top - step_shift;
   end;//for

   for i := 1 to sharp_shift do
     begin
       application.processMessages();
       sleep( SHARP_STEP_DELAY );
       top    := top - 1;
     end;//for
end;//proc



procedure TNewDocument_Status_Form.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := false;
end;

end.
