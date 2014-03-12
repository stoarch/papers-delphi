unit factory_users;

interface
  uses
    //--[ common ]--
    activex, classes, sysUtils
    ;

  type
    users_factory = class
      public
        class function createInstance( clsid : TGUID; iid : TGUID ) : IInterface;
    end;//class factory


implementation
  uses
    //--[ constants ]--
     const_department,
     const_departmentList,
     const_departmentListLoader,
     const_factoryUserData,
     const_user,
     const_userDataLoader,
     const_userInfo,
     const_userInfoList,
     const_userInfoLoader,
    //--[ common ]--
     jclSysUtils,
    //--[ data ]--
     data_department,
     data_factoryUser,
     data_user,
     data_userInfo,
    //--[ list ]--
     list_departments,
     list_userInfo,
    //--[ loader ]--
     loader_departmentList,
     loader_factoryUser,
     loader_userData,
     loader_userInfo,
    //--[ storage ]--
     storage_objectHashTable
    ;


{ users_factory }

class function users_factory.createInstance(clsid, iid: TGUID): IInterface;
  var
    obj : TInterfacedObject;
    intf : IInterface;
    hr  : HRESULT;
begin
  obj := nil;
  result := nil;

  //*make an object
  if( IsEqualGUID( clsid, CLSID_USERDATA ))then
    obj := TFactoryUserData.Create()
  else if ( IsEqualGUID( clsid, CLSID_USERINFO ) ) then
    obj := TUserInfo.Create()
  else if ( IsEqualGUID( clsid, CLSID_Department ) ) then
    obj := TDepartment.Create()
  else if ( IsEqualGUID( clsid, CLSID_FACTORYUSERDATA ) ) then
    obj := TFactoryUserData.Create()
  else if ( IsEqualGUID( clsid, CLSID_UserInfoList ) ) then
    obj := TUserInfoList.Create()
  else if ( IsEqualGUID( clsid, CLSID_DepartmentList ) ) then
    obj := TDepartmentList.Create()
  else if ( IsEqualGUID( clsid, CLSID_USERDATALOADER ) ) then
    obj := TFactoryUserDataLoader.create()
  else if ( IsEqualGUID( clsid, CLSID_DepartmentListLoader) ) then
    obj := TDepartmentListLoader.create()
  else if ( IsEqualGUID( clsid, CLSID_UserInfoLoader ) ) then
    obj := TUserInfoLoader.create()
  else
    //nothing
  ;//end if

  if( obj = nil )then
  begin
    raise Exception.create( 'users_factory.createInstance>>Объект такого типа не поддерживается! CLSID:' + GuidToString( clsid ) );
  end;//if

 intf := obj as IInterface;

 hr := intf.queryInterface( iid, result );

 intf := nil;

 if( failed( hr ))then
  begin
    raise Exception.create( 'users_factory.createInstance>>Интерфейс не поддерживается! IID:' + GuidToString( iid ) );
  end;//if
end;


initialization

finalization
end.
