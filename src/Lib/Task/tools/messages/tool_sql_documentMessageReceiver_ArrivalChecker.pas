unit tool_sql_documentMessageReceiver_ArrivalChecker;

interface
  uses
    //--[ common ]--
    sysUtils,
    //--[ tools ]--
    tool_sql_documentMessageReceiver
    ;

  type
   Tsql_documentMessageReceiver_ArrivalChecker = class( Tsql_documentMessageReceiver )
     protected
          procedure update_messages;override;

   end;//class

implementation

{ Tsql_documentMessageReceiver_ArrivalChecker }

procedure Tsql_documentMessageReceiver_ArrivalChecker.update_messages;
  //** check all messages for reason of optimisation.
  //*  !1! fired only first message from list. For this reason -
  //*      load all documents again
begin
  try
    //2. check that this message is readen
    m_query.sql.clear();
    m_query.SQL.add(
      'update messages set status = 1 ' +  //1 = MSG_STATE_READEN
      ' where key_ind >= ' + IntToStr( DocumentMessage.msg_key_ind ) +
      '  and to_user = ' + IntToStr( m_user_data.user_index )
    );
    m_query.Execute();
  except
    on e:exception do
      raise Exception.Create( 'Tsql_documentMessageReceiver_ArrivalChecker.update_messages->' + e.message );
  end;//try--except
end;

end.
 