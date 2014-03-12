unit tool_sql_documentMessageReceiver_Compound;

interface
  uses
    //--[ factories ]--
    factory_list,
    factory_message,
    //--[ interfaces ]--
    interface_compoundMessage,
    interface_messageList,
    interface_sql_documentMessageReceiver_Compound,
    //--[ tools ]--
    tool_sql_documentMessageReceiver,
    //--[ types ]--
    type_message
    ;

  type
    Tsql_documentMessageReceiver_Compound = class( Tsql_documentMessageReceiver )
     protected
       function make_message() : IMessage;override;
     public
       constructor Create();override;
       destructor  Destroy();override;

       //--[ overriden methods ]--
       function execute() : boolean;override;

      //--[ accessors ]--
      function get_compound_msg() : ICompoundMessage;

      //--[ mutators ]--
      procedure set_compound_msg( value : ICompoundMessage );

      //--[ properties ]--
      property CompoundMessage : ICompoundMessage read get_compound_msg write set_compound_msg;
    end;//class

implementation

{ Tsql_documentMessageReceiver_Compound }


constructor Tsql_documentMessageReceiver_Compound.Create;
begin
  inherited;

  m_messages_list := list_factory.createInstance( CLSID_MessagesList, IID_IMessagesList ) as IMessagesList;
end;

destructor Tsql_documentMessageReceiver_Compound.Destroy;
begin
  m_messages_list := nil;

  inherited;
end;

function Tsql_documentMessageReceiver_Compound.execute: boolean;
  //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  // goal: provide scanning of messages and if found - place it
  //       onto one compound message. All sub messages will be
  //       contained within it.
  var
    msg_kind : TMessageKind;
    msg      : IMessage;
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
      ' from messages' +
      ' where messages.to_user = ' + IntToStr( m_user_data.user_index ) + ' '+
      '   and messages.status = 0'  // 0 = MSG_STATE_UNREAD
  );
    m_query.open();

    if( m_query.eof )then exit;

    while not m_query.eof do
    with CompoundMessage do
     begin
       msg_kind := TMessageKind( m_query.fieldByName( 'kind' ).asInteger );

       case msg_kind of
         MSG_KIND_SIMPLE : begin
                             msg := message_factory.createInstance( CLSID_Message, IID_IMessage ) as IMessage;
                             with msg do
                             begin
                               msg_key_ind := m_query.fieldByName( 'msg_key_ind' ).asInteger;
                               from_user   := m_query.fieldByName( 'from_user' ).asInteger;
                               to_user     := m_query.fieldByName( 'to_user' ).asInteger;
                               message_kind := TMessageKind( m_query.fieldByName( 'kind' ).asInteger );
                               message     := m_query.fieldByName( 'message' ).asString;
                             end;//with
                           end;

         MSG_KIND_DOCUMENT : begin
                                msg := message_factory.createInstance( CLSID_DocumentMessage, IID_IDocumentMessage ) as IDocumentMessage;

                                with msg do
                                begin
                                  msg_key_ind := m_query.fieldByName( 'msg_key_ind' ).asInteger;
                                  from_user   := m_query.fieldByName( 'from_user' ).asInteger;
                                  to_user     := m_query.fieldByName( 'to_user' ).asInteger;
                                  message_kind := TMessageKind( m_query.fieldByName( 'kind' ).asInteger );
                                  message     := m_query.fieldByName( 'message' ).asString;
                                  doc_key_ind := m_query.fieldByName( 'doc_key_ind' ).asInteger;
                                  message_ind := m_query.fieldByName( 'message_ind' ).asInteger;
                                  doc_ind     := m_query.fieldByName( 'doc_ind' ).asInteger;
                                end;//with
                             end;

         else
           GlobalLog.Write(
             Format(
               'Tsql_documentMessageReceiver_Compound.execute->Message kind unknown: message(%d) kind(%d)',
               [
                m_query.fieldByName( 'msg_key_ind' ).asInteger,
                ord( msg_kind )
               ]
             )
           );
           continue;
       end;//case

       CompoundMessage.Add( msg );
       msg := nil;

       m_query.next();
     end;//while

    result := true;
  except
    on e:exception do
     raise Exception.Create( 'Tsql_documentMessageReceiver_Compound.execute->' + e.message );
  end;//try--except
end;

function Tsql_documentMessageReceiver_Compound.get_compound_msg: ICompoundMessage;
begin
  result := m_message as ICompoundMessage;
end;


function Tsql_documentMessageReceiver_Compound.make_message: IMessage;
begin
  result := message_factory.createInstance( CLSID_CompoundMessage, IID_ICompoundMessage ) as ICompoundMessage;
end;

procedure Tsql_documentMessageReceiver_Compound.set_compound_msg(
  value: ICompoundMessage);
begin
  m_message := value;
end;


end.
