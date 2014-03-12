unit interface_messageSender;

interface

const
  IID_IMessageSender : TGUID = '{58F0924E-A51D-4713-A6F3-3FFEAA0460CD}';

type
  IMessageSender = interface( IInterface )
                   ['{58F0924E-A51D-4713-A6F3-3FFEAA0460CD}']

    procedure send( sourceId, clientId : integer; message : string );
  end;//interface

implementation

end.
 