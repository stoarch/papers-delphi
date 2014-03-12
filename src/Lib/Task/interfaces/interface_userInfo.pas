unit interface_userInfo;

interface
  uses
      //--[ types ]--
      type_userInfo
      ;

const
  IID_IUserInfo : TGUID = '{4257B37D-73CE-4241-A452-0FE5D0B70D23}';

type
  IUserInfo = interface( IInterface )
               ['{4257B37D-73CE-4241-A452-0FE5D0B70D23}']

      //--[ accessors ]--
      function get_user_index() : integer;
      function get_role() : TUserRole;
      function get_fio()  : string;
      function get_role_name() : string;

      //--[ mutators ]--
      procedure set_user_index( value : integer );
      procedure set_role( value : TUserRole );
      procedure set_fio( value : string );

      //--[ properties ]--
      property user_index : integer read get_user_index write set_user_index;
      property role : TUserRole read get_role write set_role;
      property fio : string read get_fio write set_fio;
      property role_name : string read get_role_name;

      //--[ methods ]--
      procedure assign_from( source : IUserInfo );
  end;//interface

implementation

end.
 