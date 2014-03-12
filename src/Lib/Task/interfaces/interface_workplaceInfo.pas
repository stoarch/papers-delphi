unit interface_workplaceInfo;

interface
 uses
    //--[ common ]--
    classes,
    //--[ frames ]--
    frame_userWorkplace,
    //--[ types ]--
    type_userInfo
    ;

 const
   IID_IWorkplaceInfo : TGuid = '{E19D58E4-B8E8-4AF2-B08E-DED9E5155191}';

 type
   IWorkplaceInfo = interface( IInterface )
                     ['{E19D58E4-B8E8-4AF2-B08E-DED9E5155191}']

    //--[ accessors ]--
    function get_path() : string;
    function get_workplace() : TUserWorkplace;
    function get_package() : HMODULE;
    function get_exportName() : string;
    function get_Role() : TUserRole;
    function get_InUse() : boolean;

    //--[ mutators ]--
    procedure set_path(const Value: string);
    procedure set_workplace(const Value: TUserWorkplace);
    procedure set_Package(const Value: HMODULE );
    procedure set_ExportName(const Value: string);
    procedure set_Role(const Value: TUserRole);
    procedure set_InUse(const Value: boolean);

    //--[ properties ]--
      property workplace : TUserWorkplace read get_workplace write set_workplace;
      property path : string read get_path write set_path;
      property Package : HMODULE read get_Package write set_Package;
      property ExportName : string read get_ExportName write set_ExportName;
      property Role : TUserRole read get_Role write set_Role;
      property InUse : boolean read get_InUse write set_InUse;
   end;//interface

implementation

end.
 