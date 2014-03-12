unit interface_factoryUserData;

interface
  uses
    //--[ common ]--
    activeX, classes,
    //--[ interfaces ]--
    interface_userData,
    //--[ types ]--
    type_documentInfo,
    type_userInfo
    ;

  const
    IID_IFactoryUserData : TGUID = '{23A39870-C555-453C-949E-CD8CA1E2BE3F}';

  type
    IFactoryUserData = interface( IUserData )
                         ['{23A39870-C555-453C-949E-CD8CA1E2BE3F}']

      //--[ accessors ]--
      function get_dept_id() : integer;
      function get_roles_count() : integer;
      function get_system_role( index : integer ) : TSystemRole;

      //--[ mutators ]--
      procedure set_dept_id( value : integer );
      procedure set_system_role( index : integer; value : TSystemRole );
      
      //--[ properties ]--
      property dept_id : integer read get_dept_id write set_dept_id;
      property roles_count : integer read get_roles_count;
      property system_roles[ index : integer ]: TSystemRole read get_system_role write set_system_role;

      //--[ methods ]--
      procedure add_system_role( value : TSystemRole );
    end;//interface


implementation

end.
 