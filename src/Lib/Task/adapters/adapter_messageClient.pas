unit adapter_messageClient;

interface
  uses
    //--[ common ]--
    sysUtils,
    //--[ interfaces ]--
    interface_message,
    interface_messageClient
    ;

  type
    TMessageEvent = procedure (message : IMessage) of object;

    TMessageClientAdapter = class( TInterfacedObject, IMessageClient )
      private
        FOnMessageArrival : TMessageEvent;
        procedure set_OnMessageArrival(const Value: TMessageEvent);
      public
        //--[ property ]--
        property OnMessageArrival : TMessageEvent read FOnMessageArrival write set_OnMessageArrival;

        //--[ IMessageClient ]--
        procedure handle_message_arrival( message : IMessage );
    end;//class

implementation

{ TMessageClientAdapter }

procedure TMessageClientAdapter.handle_message_arrival(message: IMessage);
begin
  if( assigned( FOnMessageArrival ) )then
    FOnMessageArrival( message );
end;

procedure TMessageClientAdapter.set_OnMessageArrival(
  const Value: TMessageEvent);
begin
  FOnMessageArrival := Value;
end;

end.
 