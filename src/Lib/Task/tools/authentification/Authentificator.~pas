unit Authentificator;

interface
  uses
       //--[ common ]--
       activex, sysutils, myAccess,
       //--[ constants ]--
       const_authentificator,
       const_user,
       const_string,
       //--[ interfaces ]--
       interface_userData,
       interface_userInfo,
       interface_authentificator,
       //--[ factories ]--
       factory_users,
       //--[ pool ]--
       pool_query,
       //--[ types ]--
       type_userInfo
       ;


type
  TAuthentificator = class( TInterfacedObject, IAuthentificate )
   private
     m_user_data :IUserData;
    procedure check_data;

   protected
    procedure initialize();virtual;
   public
      function check_user( nick: string; pwd : string ) : TAuthentificationResult;

      function getCurrent_UserData() : IUserData;

      constructor create();virtual;
      destructor destroy();override;
  end;//class

implementation

uses Paperwork_ClassFactory,
     tool_Environment;

{ TAuthentificator }

function TAuthentificator.check_user(nick,
  pwd: string): TAuthentificationResult;

  var
    work_query : TMyQuery;
    cur_pwd    : string;
    coded_pwd  : string;
begin
  result := INVALID_AUTHENTIFICATION;

  work_query := QueryPool.capture_query();
  try
    try
      assert( work_query <> nil, 'An query must exists to normal work' );
        work_query.SQL.Clear();
        work_query.SQL.Add( 'select * from paperwork.users where ' +
          'nick = "' + nick + '"');
        work_query.Open();

        if( work_query.EOF )then
          Abort();

        //--[ Fill user data ]--

        check_data();

        m_user_data.nick  := nick;
        m_user_data.role  := TUserRole( work_query.FieldByName( 'role_ind' ).asInteger );
        m_user_data.user_index := work_query.FieldByName( 'key_ind' ).asInteger;

        //--[ Check password ]--
        cur_pwd := work_query.FieldByName( 'password' ).AsString;

        work_query.sql.clear();
        work_query.sql.add( 'select substr(password("' + pwd + '"),1,16) as coded_pwd' );
        work_query.open();

        coded_pwd := work_query.fieldByName( 'coded_pwd' ).asString;

        if( cur_pwd <> coded_pwd )then
          Abort();
    finally
      QueryPool.release_query( work_query );
    end;//try-finally
  except
    on e:EAbort do
      exit;
  end;//try-except

  result := SUCCESS_AUTHENTIFICATION;
end;


procedure TAuthentificator.check_data();
begin
end;//proc

constructor TAuthentificator.create;
begin
 inherited;

 initialize();
end;

destructor TAuthentificator.destroy;
begin
  m_user_data := nil;

  inherited;
end;

function TAuthentificator.getCurrent_UserData: IUserData;
begin
  result := m_user_data;
end;

procedure TAuthentificator.initialize;
begin
    m_user_data := users_factory.createInstance( CLSID_USERDATA, IID_IUserData ) as IUserData;
end;

end.
 