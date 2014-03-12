unit tool_documentMessageReceiver;

interface
   uses
     //--[ class factories ]--
     paperwork_classFactory,
     //--[ constants ]--
     const_documentMessage,
     const_documentMessageReceiver,
     //--[ interfaces ]--
     interface_message,
     interface_documentMessage,
     interface_documentMessageReceiver,
     //--[ factories ]--
     factory_message,
     //-[ tools ]--
     tool_MessageReceiver
     ;

   type
     TDocumentMessageReceiver = class( TMessageReceiver, IDocumentMessageReceiver )
       protected
         function make_message() : IMessage;override;

       public
         function get_doc_msg: IDocumentMessage;
         procedure set_doc_msg(const Value: IDocumentMessage);

         property DocumentMessage : IDocumentMessage read get_doc_msg write set_doc_msg;
     end;//class

implementation

{ TDocumentMessageReceiver }

function TDocumentMessageReceiver.get_doc_msg: IDocumentMessage;
begin
 result := m_message as IDocumentMessage;
end;

function TDocumentMessageReceiver.make_message: IMessage;
begin
  result := messages_factory.createInstance( CLSID_DocumentMessage, IID_IDocumentMessage ) as IMessage
end;

procedure TDocumentMessageReceiver.set_doc_msg(
  const Value: IDocumentMessage);
begin
  m_message := value;
end;

end.
 