unit interface_workplaceInfoList;

interface
  uses
    //--[ common ]--
    classes,
    //--[ frames ]--
    frame_userWorkplace,
    //--[ interfaces ]--
    interface_userInfo,
    //--[ types ]--
    type_userInfo
    ;

const
  IID_IWorkplaceInfoList : TGUID = '{08651E5A-1371-4365-8B53-172ED7EF5BC6}';

type
  IWorkplaceInfoList = interface( IInterfaceList )
                       ['{08651E5A-1371-4365-8B53-172ED7EF5BC6}']
    //--[ accessors ]--
    function getExportWorkplaceName( index : integer ) : string;
    function getWorkplace( index : integer ): TUserWorkplace;
    function getWorkplacePath( index : integer   ): string;
    function getPackage( index : integer  ) : HMODULE;
    function getRole( index : integer  ) : TUserRole;
    function getInUse( index : integer  ) : boolean;

    //--[ mutators ]--
    procedure setExportWorkplaceName( index : integer; const value : string );
    procedure setWorkplace( index : integer ; const value : TUserWorkplace );
    procedure setWorkplacePath( index : integer ; value : string );
    procedure setPackage( index : integer ; value : HMODULE );
    procedure setRole( index : integer ; value : TUserRole );
    procedure setInUse( index : integer ; value : boolean );

    //--[ methods ]--
    function findby( user_role : TUserRole ) : TUserWorkplace;overload;
    function findby( workplace : TUserWorkplace ) : integer;overload;

    function Add( workplace : TUserWorkplace; Workplace_Path : string ) : integer;overload;

    //-- properties --
    property Workplaces[ index : integer ] : TUserWorkplace read getWorkplace write setWorkplace;default;
    property Workplace_Path[ index : integer ] : string read getWorkplacePath write setWorkplacePath;
    property Package[ index : integer ] : HMODULE read getPackage write setPackage;
    property ExportWorkplaceName[ index : integer ] : string read GetExportWorkplaceName write SetExportWorkplaceName;
    property Role[ index : integer ] : TUserRole read GetRole write SetRole;
    property InUse[ index : integer ] : boolean read GetInUse write SetInUse;
  end;

implementation

end.
 