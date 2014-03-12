unit list_messages;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_message,
    interface_messageList
    ;

  type
    TMessagesList = class( TInterfaceList, IMessageList )
      public
        //--[ accessors ]--
        function get_message( index : integer ) : IMessage;

        //--[ mutators ]--
        procedure set_message( index : integer; const message : IMessage );

        //--[ properties ]--
        property messages[ index : integer ] : IMessage read get_message write set_message;

        //--[ methods ]--
        function findBy( kind : TMessageKind ) : IMessage;
    end;//class


implementation

{ TMessagesList }

function TMessagesList.findBy(kind: TMessageKind): IMessage;
  var
    i : integer;
begin
  result := nil;

  for i := 0 to count - 1 do
   begin
     if messages[ i ]. then
      begin

      end;//if
   end;//for
end;

function TMessagesList.get_message(index: integer): IMessage;
begin
  result := inherited Items[ index ] as IMessage;
end;

procedure TMessagesList.set_message(index: integer;
  const message: IMessage);
begin
  inherited Items[ index ] := value;
end;

end.
