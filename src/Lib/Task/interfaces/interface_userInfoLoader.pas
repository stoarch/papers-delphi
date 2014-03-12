unit interface_userInfoLoader;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_userInfo
    ;

  const
    IID_IUserInfoLoader : TGUID = '{7498C550-168E-4796-88A0-6445E2AE438E}';


  type
    IUserInfoLoader = interface( IInterface )
                      ['{7498C550-168E-4796-88A0-6445E2AE438E}']
      function execute( userInd : integer ) : IUserInfo;
    end;//interface

implementation

end.
 