unit tool_messageSender;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_messageSender
    ;

  type
    TMessageSender = class( TInterfacedObject, IMessageSender )
      destructor Destroy();override;
       procedure send( sourceId, clientId : integer; message : string );
    end;//

implementation

{ TMessageSender }

{ TMessageSender }

destructor TMessageSender.Destroy;
begin

  inherited;
end;

procedure TMessageSender.send(sourceId, clientId: integer;
  message: string);
begin

end;

end.
 