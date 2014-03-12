unit tool_documentMessageSender;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_documentMessageSender,
    //--[ tools ]--
    tool_messageSender
    ;

  type
    TDocumentMessageSender = class(
                                    TMessageSender,
                                    IDocumentMessageSender
                                  )
                                  
      procedure send( sourceId, destId : integer; docId : integer; message : string );overload;virtual;
    end;//class

implementation

{ TDocumentMessageSender }


{ TDocumentMessageSender }

procedure TDocumentMessageSender.send(sourceId, destId, docId: integer;
  message: string);
begin

end;

end.
 