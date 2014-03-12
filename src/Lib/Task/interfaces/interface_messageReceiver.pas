unit interface_messageReceiver;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_Message,
    interface_UserData
    ;

  const
    IID_IMessageReceiver : TGUID = '{A75E0042-9311-469D-A50E-22CF6AD56199}';

  type
    IMessageReceiver = interface( IInterface )
                       ['{A75E0042-9311-469D-A50E-22CF6AD56199}']
      function execute() : boolean;

      function get_message() : IMessage;

      procedure set_user_data( data : IUserData );
    end;//interface

implementation

end.
 