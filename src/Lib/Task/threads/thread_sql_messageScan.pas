unit thread_sql_messageScan;

interface
  uses
    //--[ common ]--
    activex, classes, sysutils, myAccess,
    //--[ constants ]--
    const_strings,
    //--[ interfaces ]--
    interface_sql_documentMessageReceiver,
    //--[ threads ]--
    thread_messageScan,
    //--[ tools ]--
    tool_Environment
    ;

  type
    TsqlMessageScanThread = class( TMessageScanThread )
    protected
      m_connection : TMyConnection;
      m_work_query : TMyQuery;

      procedure initialize();override;
      procedure finalize();override;
    public
    end;//class

implementation

{ TsqlMessageScanThread }

procedure TsqlMessageScanThread.finalize;
begin
  try
    m_connection.connected := false;

    FreeAndNil( m_connection );
    FreeAndNil( m_work_query );
  except
    on e:exception do
     raise Exception.Create( 'TsqlMessageScanThread.finalize->' + e.message );
  end;//try--except

  inherited;
end;

procedure TsqlMessageScanThread.initialize;
  var
    m_sql_message_receiver : Isql_documentMessageReceiver;
    hr                     : HRESULT;
begin
  inherited;

  try
    m_connection := TMyConnection.Create(nil);

     m_connection.Server       := Environment.get_string( c_host_name );
     m_connection.Database     := Environment.get_string( c_database );
     m_connection.Username     := Environment.get_string( c_user );
     m_connection.Port         := Environment.get_variant( c_db_port );
     m_connection.LoginPrompt  := Environment.get_variant( c_login_prompt );
{   m_connection.protocol := Environment.get_string( c_protocol );
   m_connection.HostName     := Environment.get_string( c_host_name );
   m_connection.Database     := Environment.get_string( c_database );
   m_connection.User         := Environment.get_string( c_user );
   m_connection.Port         := Environment.get_variant( c_db_port );
   m_connection.LoginPrompt  := Environment.get_variant( c_login_prompt );
}

    m_work_query := TMyQuery.Create(nil);
    m_work_query.Connection             := m_connection;

    hr := m_message_receiver.QueryInterface( IID_Isql_documentMessageReceiver, m_sql_message_receiver );

    if( failed( hr ) )then exit;

    m_sql_message_receiver.set_query( m_work_query );
    m_sql_message_receiver := nil;

    m_connection.connected := true;
  except
    on e:exception do
      raise Exception.create( 'TsqlMessageScanThread.initialize->' + e.message );
  end;//try--except
end;


end.
