unit interface_messageScaner;

interface
  uses
     //--[ common ]--
     classes,
     //--[ interfaces ]--
     interface_messageClient,
     interface_messageReceiver
     ;

  const
    IID_IMessageScaner : TGUID = '{A92D1D55-0C13-4CB2-B2FE-B01BC407D19E}';

  type
    IMessageScaner = interface( IInterface )
                    ['{A92D1D55-0C13-4CB2-B2FE-B01BC407D19E}']
      procedure setMessageClient( client : IMessageClient );
      procedure setMessageReceiver( receiver : IMessageReceiver );

      procedure start();
      procedure stop();
    end;//interface

implementation

end.
 