unit interface_messageList;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_message,
    //--[ types ]--
    type_message
    ;

  const
    IID_IMessageList : TGUID = '{86C6C7DA-69A8-47F7-BF2A-86310CFE0193}';

  type
    IMessageList = interface( IInterfaceList )
      //--[ accessors ]--
      function get_message( index : integer ) : IMessage;

      //--[ mutators ]--
      procedure set_message( index : integer; const message : IMessage );

      //--[ properties ]--
      property messages[ index : integer ] : IMessage read get_message write set_message;

      //--[ methods ]--
      function findBy( kind : TMessageKind ) : IMessage;
    end;//interface
implementation

end.
