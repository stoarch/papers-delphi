unit interface_documentMessageReceiver;

interface
  uses
    //--[ interfaces ]--
    interface_documentMessage,
    interface_messageReceiver
    ;

  const
    IID_IDocumentMessageReceiver : TGUID = '{43EB03DE-9207-40FD-9C98-5DE6F977EBF3}';

  type
    IDocumentMessageReceiver = interface( IMessageReceiver )
                               ['{43EB03DE-9207-40FD-9C98-5DE6F977EBF3}']
         function get_doc_msg: IDocumentMessage;
         procedure set_doc_msg(const Value: IDocumentMessage);

         property DocumentMessage : IDocumentMessage read get_doc_msg write set_doc_msg;
    end;//interface

implementation

end.
 