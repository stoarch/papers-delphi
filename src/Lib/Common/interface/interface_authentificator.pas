unit interface_authentificator;

interface
   uses //--[ interfaces ]--
        interface_userData
        ;


const
  IID_IAuthentificate : TGUID = '{CE18EDD1-D6AC-4120-8F5F-52AFB9314F07}';

type
  TAuthentificationResult = ( NOT_INITIALIZED, INVALID_AUTHENTIFICATION, SUCCESS_AUTHENTIFICATION );

  IAuthentificate = interface( IInterface )
                      ['{CE18EDD1-D6AC-4120-8F5F-52AFB9314F07}']

      function check_user( nick: string; pwd : string ) : TAuthentificationResult;

      function getCurrent_UserData() : IUserData;
  end;//interface

implementation

end.
 