unit interface_sql_documentMessageReceiver;

interface

  uses
     //--[ common ]--
     myAccess,
     //--[ interfaces ]--
     interface_documentMessage,
     interface_documentMessageReceiver
     ;

  const
    IID_Isql_documentMessageReceiver : TGUID = '{5FA81701-76CA-4734-B46F-4F3EF346F9FC}';

  type
    Isql_documentMessageReceiver = interface( IDocumentMessageReceiver )
                                    ['{5FA81701-76CA-4734-B46F-4F3EF346F9FC}']
       procedure set_query( query : TMyQuery );
    end;//interface

implementation

end.
 