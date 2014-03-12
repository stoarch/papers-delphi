{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O-,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
unit UserTerminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, winsock,
  Menus, ActnList, db, sDialogs,
  ExtCtrls, TypInfo,
  //--[ constants ]--
  const_authentificator,
  const_sql_documentMessageReceiver,
  const_sql_documentMessageSender,
  const_string,
  const_user,
  const_userDataLoader,
  //--[ factories ]--
  factory_documents,
  factory_users,
  Paperwork_ClassFactory,
  //--[ forms ]--
  form_connectionStatus,
  form_login,
  form_progressDisplayer,
  form_taskStatus,
  //--[ frames ]--
  Frame_OfficeManager_Workplace,
  Frame_OperatorWorkplace,
  Frame_PaperworkUser_Workplace,
  Frame_Skined,
  frame_userWorkplace,
  //--[ interfaces ]--
  interface_factoryUserData,
  interface_userData,
  interface_userDataLoader,
  interface_authentificator,
  interface_sql_documentMessageReceiver,
  interface_sql_documentMessageSender,
  //--[ frames ]--
  frame_functions,
  //--[ loaders ]--
  loader_userData,
  //--[ storage ]--
  storage_integerQueue,
  //--[ tools ]--
  tool_Environment,
  tool_GlobalLog,
  tool_sql_documentMessageSender,
  tool_userInfo,
  //--[ skins ]--
  sSkinProvider, sSkinManager,
  //-[ types ]--
  type_userInfo
  ;


type
  TUserTerminalForm = class(TForm)
    ActionList: TActionList;
    Action_System_Logout: TAction;
    Action_System_Shutdown: TAction;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    menuItem_Logout: TMenuItem;
    N3: TMenuItem;
    menuItem_Shutdown: TMenuItem;
    skin_manager: TsSkinManager;
    skin_provider: TsSkinProvider;
    FunctionsFrame: TFunctionsFrame;
    procedure FormActivate(Sender: TObject);
    procedure Action_System_LogoutExecute(Sender: TObject);
    procedure Action_System_ShutdownExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    m_initialized : boolean;
    m_user_data   : IUserData;
    m_progress_displayer : TProgressDisplayer;
    m_workplace_pool_initialized : boolean;
    m_user_data_loader           : IUserDataLoader;
    m_taskStatus_form            : TTaskStatus_Form;

    procedure connect_to_database;
    procedure authentificate;
    procedure Shutdown;
    function login_user(nick, pwd: string) : TAuthentificationResult;
    procedure load_workplace( data : IUserData );
    procedure logout_user;
    procedure unload_workplace;
    procedure initialize_workplace_pool;
    function get_operator_workplace: TUserWorkplace;
    procedure adjust_paperwork_user_workplace(
      wp: TPaperworkUser_Workplace);
    function get_office_manager_workplace: TUserWorkplace;
    procedure setup_environment;
    function get_paperwork_user_workplace: TUserWorkplace;
{$ifdef DEBUG}
    procedure debugLog(message: string);
{$endif}
    procedure MergeMenuWith(menu: TMainMenu);
    procedure UnmergeMenu(menu: TMainMenu);
    procedure HideTaskStatus;
    procedure SetTaskName(taskName: string);
    procedure ShowTaskStatus;
    procedure SetSubTaskName(taskName: string);
    procedure UnmergeAllMenus;
    { Private declarations }
  public
    { Public declarations }
    constructor Create( AOwner : TComponent );override;
    destructor Destroy();override;

    procedure Initialize;
  end;

var
  UserTerminalForm: TUserTerminalForm;

implementation

uses interface_userInfo;




{$R *.dfm}

{ TUserTerminalForm }
procedure TUserTerminalForm.FormActivate(Sender: TObject);
begin
  left   := screen.desktopLeft;
  top    := screen.desktopTop;
  width  := screen.desktopWidth;
  height := screen.DesktopHeight;

  Constraints.MinHeight := height;
  Constraints.MaxHeight := height;
  Constraints.MaxWidth  := width;
  Constraints.MinWidth  := width;
end;

procedure TUserTerminalForm.setup_environment();
begin
end;


procedure TUserTerminalForm.Initialize();
begin
  if( m_initialized )then exit;

//  connect_to_database();

  setup_environment();

  authentificate();

  m_initialized := true;
end;//proc


procedure TUserTerminalForm.authentificate();
  const
    MAX_TRY_COUNT = 3;

  var
    login_ui : TLoginForm;
    try_count       : integer;
    is_authentificated : boolean;
begin
  try_count := 0;
  is_authentificated := false;

 try
    login_ui := TLoginForm.Create( self );

    try
      repeat
        if( login_ui.showModal() = mrOK )then
          begin
            if( login_user( login_ui.getUserNick(), login_ui.getUserPassword() ) =  SUCCESS_AUTHENTIFICATION )then
              is_authentificated := true
            else
              begin
                   sMessageDlg( 'Аутентификационная информация не верна', mtInformation, [mbOK], 0);
              end;//if-else

            inc( try_count )
          end
        else
          begin
           Shutdown();  //because user want to exit
           exit;
          end;//if-else
      until( try_count >= MAX_TRY_COUNT )or( is_authentificated );

      if not is_authentificated then
       begin
        sMessageDlg(
          Format( 'Пользователю %s доступ запрещен!'+#$D#$A+
                  'Обратитесь к администратору!',
                  [ login_ui.getUserNick() ]
                ),
          mtInformation,
          [mbOK],
          0
        );

        Shutdown();
        exit;
       end;//if


      m_user_data := m_user_data_loader.execute(m_user_data.nick, m_user_data.password) as IFactoryUserData;

      GlobalLog.Write( 'Пользователь ' + m_user_data.nick + ' вошел в систему как ' + get_caption_for( m_user_data.role ));

      load_workplace( m_user_data );
    finally
      FreeAndNil( login_ui );
    end;//try--finally
 except
   on e:exception do
    raise Exception.create( 'TUserTerminalForm.authentificate->' + e.message );
 end;//try--except
end;//proc


procedure TUserTerminalForm.connect_to_database();
begin
end;//proc


procedure TUserTerminalForm.Shutdown();
begin
  GlobalLog.Write( 'Пользователь ' + m_user_data.nick + ' завершил работу' );

  Application.Terminate();
end;//proc



function TUserTerminalForm.login_user( nick : string; pwd : string ) : TAuthentificationResult;
  var
    authentificator : IAuthentificate;
begin
  authentificator :=
          Paperwrk_ClassFactory.createInstance( CLSID_AUTHENTIFICATOR, IID_IAuthentificate ) as IAuthentificate;

  if( authentificator = nil )then
  begin
    sMessageDlg( 'Инициализация неверна!', mtInformation, [mbOK], 0);

    result := NOT_INITIALIZED;
    exit;
  end;//if

  result := authentificator.check_user( nick, pwd );

  m_user_data := authentificator.getCurrent_UserData();

  authentificator := nil;
end;//proc


procedure TUserTerminalForm.load_workplace( data : IUserData );
  var
    menu : TMainMenu;
    i    : integer;
    wp   : TUserWorkplace;
    wp_caption : string;
    user_data       : IFactoryUserData;
begin
   screen.cursor := crHourGlass;
   application.processMessages();
   try
     FunctionsFrame.clear();

     user_data := data as IFactoryUserData;

     for i := 0 to user_data.roles_count - 1 do
      begin
        wp := nil;
        
        case user_data.system_roles[ i ] of
          SYS_ROLE_SERVER_ADMINISTRATOR :
             begin
               wp := nil;
               wp_caption := 'Администратор сервера';
             end;

          SYS_ROLE_TERMINAL_ADMINISTRATOR :
             begin
               wp := nil;
               wp_caption := 'Администратор терминала';
             end;

          SYS_ROLE_OFFICE_MANAGER :
             begin
               wp := get_office_manager_workplace();
               wp_caption := 'Оффис менеджер';
             end;

          SYS_ROLE_EMPLOYEE :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Сотрудник';
             end;

          SYS_ROLE_DEPT_CHIEF :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Начальник отдела';
             end;

          SYS_ROLE_OPERATOR :
             begin
               wp := get_operator_workplace();
               wp_caption := 'Оператор';
             end;

          SYS_ROLE_SECRETARY :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Секретарь - референт';
             end;

          SYS_ROLE_MAIN_OFFICE_MANAGER :
             begin
               wp := get_office_manager_workplace();
               wp_caption := 'Старший офис менеджер';
             end;

          SYS_ROLE_DIRECTOR  :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Директор';
             end;

          SYS_ROLE_PRESIDENT :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Президент';
             end;

          SYS_ROLE_DIRECTOR_INFR :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Директор департамента инфраструктуры';
             end;

          SYS_ROLE_PAPERWORK_USER :
             begin
               wp := get_paperwork_user_workplace();
               wp_caption := 'Пользователь документооборота';
             end;
        end;//case

        if( wp <> nil )then
        begin
           wp.setUser( m_user_data );
           wp.setProgressDisplayer( m_progress_displayer );
           wp.initialize();

           MergeMenuWith( wp.getMenu() );

           FunctionsFrame.add_function( wp_caption, wp );
        end;//if
      end;//for

     FunctionsFrame.select_function( 0 );

     Caption := 'Рабочее место пользователя: ' + user_data.fio + ' ( ' + get_caption_for( user_data.role ) + ' )';

  finally
    screen.cursor := crDefault;
    application.ProcessMessages();
  end;//try-finally
end;

procedure TUserTerminalForm.MergeMenuWith( menu : TMainMenu );
begin
  MainMenu.Merge( menu );
end;//proc

procedure TUserTerminalForm.UnmergeMenu( menu : TMainMenu );
begin
  MainMenu.Unmerge( menu );
end;//proc



function TUserTerminalForm.get_office_manager_workplace() : TUserWorkplace;
  var
    wp : TOfficeManagerWorkplace;
begin
  wp := TOfficeManagerWorkplace.Create( self );

  adjust_paperwork_user_workplace( wp );

  result := wp;
end;//func


function TUserTerminalForm.get_operator_workplace() : TUserWorkplace;
  var
    wp       : TOperatorWorkplace;
begin
  wp := TOperatorWorkplace.create( self );

  adjust_paperwork_user_workplace( wp );

  //4. and return it
  result := wp;
end;//func

function TUserTerminalForm.get_paperwork_user_workplace() : TUserWorkplace;
  const
    wp_count : integer = 0;
  var
    wp       : TPaperworkUser_Workplace;
begin
  wp := TPaperworkUser_Workplace.create( self );
  wp.name := 'Workplace' + intToStr( wp_count );

  wp_count := wp_count + 1;

  adjust_paperwork_user_workplace( wp );

  //4. and return it
  result := wp;
end;//func


procedure TUserTerminalForm.adjust_paperwork_user_workplace( wp : TPaperworkUser_Workplace );
 var
   sender : Isql_DocumentMessageSender;
   receiver : Isql_documentMessageReceiver;
begin
  //1. make the message sender
  sender := documents_factory.createInstance(
               CLSID_sql_documentMessageSender,
               IID_Isql_DocumentMessageSender
             )
               as Isql_DocumentMessageSender;

  //2. make the message receiver
  receiver := documents_factory.createInstance(
                 CLSID_sql_documentMessageReceiver,
                 IID_Isql_documentMessageReceiver
                )
                 as Isql_documentMessageReceiver;

  receiver.set_user_data( m_user_data );


  //3. adjust the operator workplace
  wp.setMessageSender( sender );
  wp.setMessageReceiver( receiver );

  //wp.start_messageScanning();

  //4. clean up
  //sender   := nil;
  //receiver := nil;
end;//proc

constructor TUserTerminalForm.Create(AOwner: TComponent);
begin
  inherited;

  m_initialized := false;
  m_workplace_pool_initialized := false;

  m_progress_displayer := TProgressDisplayer.Create( nil );

  //WorkplaceLoader.setProgressDisplayer( m_progress_displayer );
  //WorkplacePool.setProgressDisplayer( m_progress_displayer );
  m_user_data := users_factory.createInstance( CLSID_USERDATA, IID_IFactoryUserData ) as IFactoryUserData;

  m_user_data_loader := users_factory.createInstance( CLSID_USERDATALOADER, IID_IUserDataLoader ) as IUserDataLoader;

  m_taskStatus_form := TTaskStatus_Form.Create(self);
end;

destructor TUserTerminalForm.Destroy;
begin
  try
    unload_workplace();

    m_user_data_loader := nil;

    m_user_data := nil;

    //WorkplaceLoader.setProgressDisplayer( nil );
    //WorkplacePool.setProgressDisplayer( nil );

    //WorkplacePool.store_workplaces_list();
    //WorkplacePool.clear_workplaces_list();
    if( assigned( m_taskStatus_form ))then
      FreeAndNil( m_taskStatus_form );

    if( assigned( m_progress_displayer ))then
      FreeAndNil( m_progress_displayer );

    inherited;
  except
    on e:exception do
    begin
      GlobalLog.Write( 'TUserTerminalForm.Destroy->' + e.message );
    end;//exception
  end;//try--except
end;

{$ifdef DEBUG}
procedure TUserTerminalForm.debugLog( message : string );
  const
    debug_file_name = 'debug.log';
  var
    textFile : System.Text;
begin
  System.Assign( textFile, debug_file_name );
  if( FileExists( debug_file_name ))then
    Append( textFile )
  else
    Rewrite( textFile );

  try
    WriteLn( textFile, message );
  finally
    System.Close( textFile );
  end;//try--finally
end;

{$endif}

{
procedure TUserTerminalForm.Button1Click(Sender: TObject);
var
    Handle:HMODULE;
    Component:TWorkplaceClass;
    Control:TUserWorkplace;
begin
  Handle:=LoadPackage('.\workplaces\operator.bpl');
  Component:=TWorkplaceClass(GetProcAddress(Handle,'@Frame_operatorworkplace@TOperatorWorkplace@'));
  Control:=Component.Create(self);
  Control.setskinData( bsSkinData );
  Control.Left := 200;
  Control.Top := 200;
  Control.Parent:=panel_content;
end;
}


procedure TUserTerminalForm.Action_System_LogoutExecute(Sender: TObject);
begin
  logout_user();
end;


procedure TUserTerminalForm.logout_user();
  var
    amessage : string;
begin
  if( sMessageDlg( 'Хотите завершить сеанс?', mtConfirmation, [mbYes,mbNo],0 ) = mrNo )then
    exit;

 try
  unload_workplace();
  GlobalLog.Write( 'Пользователь ' + m_user_data.nick + ' завершил сеанс');

  authentificate();
 except
   on e:exception do
   begin
     raise Exception.Create( 'TUserTerminalForm.logout_user->' + e.message );
   end;//exception
 end;//try--except
end;

procedure TUserTerminalForm.unload_workplace();
begin
  try
    Screen.Cursor := crHourGlass;
    Application.ProcessMessages;

    Caption := 'Рабочее место';

    UnmergeAllMenus();

    try
      ShowTaskStatus();
      SetTaskName( 'Завершение сеанса...' );
      setSubTaskName( 'Закрытие рабочего места...' );

      FunctionsFrame.clear();
    finally
      Screen.Cursor := crDefault;
      Application.ProcessMessages;

      HideTaskStatus();
    end;//try-finally
  except
    on e:exception do
      raise Exception.Create( 'TUserTerminalForm.unload_workplace->' + e.message );
  end;//try--except

  //WorkplacePool.release_workplace( m_user_data.role );
end;

procedure TUserTerminalForm.UnmergeAllMenus();
  var
    i : integer;
begin
  for i := 0 to FunctionsFrame.functions_count - 1 do
   begin
     UnmergeMenu(
       ( FunctionsFrame.functions[ i ] as TUserWorkplace )
         .getMenu()
     );
   end;//for
end;//proc


procedure TUserTerminalForm.ShowTaskStatus();
begin
  m_taskStatus_form.show();
end;//proc

procedure TUserTerminalForm.SetTaskName( taskName : string );
begin
  m_taskStatus_form.setTaskName( taskName );
end;//proc

procedure TUserTerminalForm.SetSubTaskName( taskName : string );
begin
  m_taskStatus_form.setSubTaskName( taskName );
end;//proc

procedure TUserTerminalForm.HideTaskStatus();
begin
  m_taskStatus_form.hide();
end;//proc



procedure TUserTerminalForm.Action_System_ShutdownExecute(Sender: TObject);
begin
 Close();
end;

procedure TUserTerminalForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := false;

  if( sMessageDlg( 'Желаете завершить работу?', mtConfirmation, [mbYes,mbNo],0 ) = mrNo )then
    exit;

  GlobalLog.Write( 'Пользователь ' + m_user_data.nick + ' завершил работу' );

  CanClose := true;
end;

procedure TUserTerminalForm.initialize_workplace_pool();
begin
  if( m_workplace_pool_initialized )then
    exit;
{
  m_progress_displayer.show();
  m_progress_displayer.BringToFront();

  try
    WorkplacePool.setWorkplacesOwner( self );
    WorkplacePool.load_workplaces_list();
  finally
    m_progress_displayer.Hide();
  end;//try--finally
}
  m_workplace_pool_initialized := true;
end;



end.

