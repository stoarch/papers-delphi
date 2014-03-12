unit interface_userInfoList;

interface
  uses
    //--[ commo ]--
    classes,
    //--[ interfaces ]--
    interface_userInfo
    ;

  const
    IID_IUserInfoList : TGUID = '{6F54B11E-ADD0-4C7F-BBA9-B8C0132E34A0}';

  type
    IUserInfoList = interface( IInterfaceList )
                    ['{6F54B11E-ADD0-4C7F-BBA9-B8C0132E34A0}']
      function get_user_info( index : integer ) : IUserInfo;
      procedure set_user_info( index : integer; value : IUserInfo );

      property UserInfo[ index : integer ] : IUserInfo read get_user_info write set_user_info;
    end;//interface

implementation

end.
 