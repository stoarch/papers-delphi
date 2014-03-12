unit tool_sql_documentMessageReceiver;

interface
  uses
    //--[ common ]--
    classes, sysUtils, myAccess,
    //--[ constants ]--
    const_documentMessage,
    //--[ interfaces ]--
    interface_documentMessage,
    interface_sql_documentMessageReceiver,
    //--[ tools ]--
    tool_documentMessageReceiver,
    //--[ types ]--
    type_Message
    ;

  type
    Tsql_documentMessageReceiver = class(
                                          TDocumentMessageReceiver,
                                          Isql_documentMessageReceiver
                                        )
     private

     protected
          m_query : TMyQuery;

          function get_thread_name() : string;
          procedure update_messages;virtual;

     public

       procedure set_query( query : TMyQuery );

       function execute() : boolean;override;
    end;//class

implementation

uses tool_messageReceiver, Paperwork_ClassFactory, interface_message;

{ Tsql_documentMessageReceiver }

function Tsql_documentMessageReceiver.execute: boolean;
begin
  try
    result := false;

    m_query.sql.clear();
    m_query.sql.add(
      'select messages.key_ind as msg_key_ind, ' +
      '   messages.from_user, ' +
      '   messages.to_user, ' +
      '   messages.message, ' +
      '   messages.kind,' +
      '   doc_message.key_ind as doc_key_ind, ' +
      '   doc_message.message_ind, ' +
      '   doc_message.doc_ind ' +
      ' from messages, doc_message ' +
      ' where messages.key_ind = doc_message.message_ind ' +
      '   and messages.to_user = ' + IntToStr( m_user_data.user_index ) + ' '+
      '   and messages.kind = 1 ' + //1 = MSG_KIND_DOCUMENT
      '   and messages.status = 0' + // 0 = MSG_STATE_UNREAD
      ' limit 1'
  );
    m_query.open();

    if( m_query.eof )then exit;

    //1. read the message and document attached with it
    with DocumentMessage do
    begin
      msg_key_ind := m_query.fieldByName( 'msg_key_ind' ).asInteger;
      from_user   := m_query.fieldByName( 'from_user' ).asInteger;
      to_user     := m_query.fieldByName( 'to_user' ).asInteger;
      message     := m_query.fieldByName( 'message' ).asString;
      doc_key_ind := m_query.fieldByName( 'doc_key_ind' ).asInteger;
      message_ind := m_query.fieldByName( 'message_ind' ).asInteger;
      doc_ind     := m_query.fieldByName( 'doc_ind' ).asInteger;
      message_kind := TMessageKind( m_query.fieldByName( 'kind' ).asInteger );
    end;//with

    update_messages();

    result := true;
  except
    on e:exception do
     raise Exception.Create( 'Tsql_documentMessageReceiver.execute->' + e.message );
  end;//try--except
end;


procedure Tsql_documentMessageReceiver.update_messages();
  //** Update the messages list for indicating - we read these messages
begin
  try
    //2. check that this message is readen
    m_query.sql.clear();
    m_query.SQL.add(
      'update messages set status = 1 ' +  //1 = MSG_STATE_READEN
      ' where key_ind = ' + IntToStr( DocumentMessage.msg_key_ind )
    );
    m_query.Execute();
  except
    on e:exception do
      raise Exception.Create( 'Tsql_documentMessageReceiver.update_messages->' + e.message );
  end;//try--except
end;

function Tsql_documentMessageReceiver.get_thread_name: string;
begin
  result := 'Tsql_documentMessageReceiver';
end;

procedure Tsql_documentMessageReceiver.set_query(query: TMyQuery);
begin
  m_query := query;
end;

end.
