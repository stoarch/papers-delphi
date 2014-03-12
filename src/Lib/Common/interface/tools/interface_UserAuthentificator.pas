unit interface_UserAuthentificator;
interface
  uses data_userInfo;
  const
    IID_IUserAuthentificator : TGUID = '{E4BF5FFC-16EB-4719-8550-AC5E2631E5AA}';

  type
    TAuthentificationResult = ( INVALID_AUTHENTIFICATION, SUCCESSFULL_AUTHENTIFICATION );

    IUserAuthentificator = interface( IUnknown )
                            ['{E4BF5FFC-16EB-4719-8550-AC5E2631E5AA}']
      function check_user( nick: string; pwd : string ) : TAuthentificationResult;

      function getCurrent_UserData() : TUserData;
    end;//interface

implementation

end.
 