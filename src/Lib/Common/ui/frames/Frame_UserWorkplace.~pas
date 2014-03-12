unit Frame_UserWorkplace;

interface

uses
  //--[ class factories ]--
  paperwork_classFactory,
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, Menus, sFrameAdapter, 
  //--[ constants ]--
  const_messageScaner,
  //--[ interfaces ]--
  interface_IProgressDisplayer,
  interface_messageClient,
  interface_messageReceiver,
  interface_messageScaner,
  interface_messageSender,
  interface_userInfo,
  interface_userData,
  //--[ types ]--
  type_userInfo
  ;

type
  TWorkplaceClass = class of TUserWorkplace;

  TUserWorkplace = class(TSkinedFrame)
    Funcs_MainMenu: TMainMenu;
  private
    { Private declarations }
  protected
    m_version : integer;
    m_role    : TUserRole;
    m_user_data   : IUserData;

    m_message_sender      : IMessageSender;

    m_progress_displayer  : IProgressDisplayer;

    procedure initialize_data();virtual;

    procedure set_task_name( name : string );
    procedure set_subtask_name( name : string );
    procedure show_progress();
    procedure hide_progress();
    procedure set_task_progress( current, total : integer );
    procedure set_subtask_progress( current, total : integer );
  public
    { Public declarations }
    constructor create( AOwner : TComponent );override;
    destructor destroy();override;

    //-- operators --
    function getMenu() : TMainMenu;
    function getUserRole() : TUserRole;
    function getVersion() : integer;

    procedure initialize();
    procedure setUser( data : IUserData );

    procedure setMessageSender( sender : IMessageSender );
    procedure setProgressDisplayer( displayer : IProgressDisplayer );
  end;

var
  UserWorkplace: TUserWorkplace;

implementation

{$R *.dfm}

{ TUserWorkplace }

constructor TUserWorkplace.create(AOwner: TComponent);
begin
  inherited;
end;

destructor TUserWorkplace.destroy;
begin
 try
    m_user_data := nil;
    m_message_sender := nil;
    m_progress_displayer      := nil;
 except
   on e:exception do
    raise Exception.create( 'TUserWorkplace.destroy->' + e.message );
 end;//try--except--

  inherited;
end;

function TUserWorkplace.getMenu: TMainMenu;
begin
  result := Funcs_MainMenu;
end;

function TUserWorkplace.getUserRole: TUserRole;
begin
  result := m_role;
end;

function TUserWorkplace.getVersion: integer;
begin
  result := m_version;
end;

procedure TUserWorkplace.initialize_data;
begin
  //do nothing: must be implemented in childs
end;



procedure TUserWorkplace.initialize();
begin
  initialize_data();
end;

procedure TUserWorkplace.setMessageSender(sender: IMessageSender);
begin
  m_message_sender := sender;
end;

procedure TUserWorkplace.setUser(data: IUserData);
begin
  m_user_data := data;
end;

procedure TUserWorkplace.setProgressDisplayer(
  displayer: IProgressDisplayer);
begin
  m_progress_displayer := displayer;
end;

procedure TUserWorkplace.hide_progress;
begin
 if m_progress_displayer = nil then exit;

 m_progress_displayer.hide();
end;

procedure TUserWorkplace.set_subtask_name(name: string);
begin
 if m_progress_displayer = nil then exit;

 m_progress_displayer.setSubTaskCaption( name );
end;

procedure TUserWorkplace.set_subtask_progress(current, total: integer);
begin
 if m_progress_displayer = nil then exit;

 m_progress_displayer.setSubTaskProgress( current, total );
end;

procedure TUserWorkplace.set_task_name(name: string);
begin
 if m_progress_displayer = nil then exit;

 m_progress_displayer.setTaskCaption( name );
end;

procedure TUserWorkplace.set_task_progress(current, total: integer);
begin
 if m_progress_displayer = nil then exit;

 m_progress_displayer.setSubTaskProgress( current, total );
end;

procedure TUserWorkplace.show_progress;
begin
 if m_progress_displayer = nil then exit;

 m_progress_displayer.show();
end;

end.
