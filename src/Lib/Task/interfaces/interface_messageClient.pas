unit interface_messageClient;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_message
    ;

  const
    IID_IMessageClient : TGUID = '{B3EB3EC8-D7E4-4D9B-AD52-46D1DCCF63D8}';

  type
    IMessageClient = interface( IInterface )
                     ['{B3EB3EC8-D7E4-4D9B-AD52-46D1DCCF63D8}']
      procedure handle_message_arrival( message : IMessage );
    end;//interface

implementation

end.
 