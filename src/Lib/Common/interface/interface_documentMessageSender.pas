unit interface_documentMessageSender;

interface
  uses
    //--[ interfaces ]--
    interface_messageSender
    ;

  const
    IID_IDocumentMessageSender : TGUID = '{F453D73E-ABD8-4924-8406-58E98C30044B}';

  type
    IDocumentMessageSender = interface( IMessageSender )
                            ['{F453D73E-ABD8-4924-8406-58E98C30044B}']
      procedure send( sourceId, destId : integer; docId : integer; message : string );overload;
    end;//interface
implementation

end.
 