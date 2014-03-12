unit data_userInfo;

interface
  uses
    //--[ common ]--
    classes,
    //--[ constants ]--
    const_userInfo,
    //--[ interfaces ]--
    interface_userInfo,
    //--[ tools ]--
    tool_userInfo,
    //--[ types ]--
    type_userInfo
    ;


type
  TUserInfo = class( TInterfacedObject, IUserInfo )
  private
    Frole: TUserRole;
    Fuser_index: integer;
    Ffio: string;
    function get_roleName: string;
    procedure Setfio(const Value: string);
    procedure Setrole(const Value: TUserRole);
    procedure Setuser_index(const Value: integer);

  protected

  public
      constructor Create();virtual;
      destructor Destroy();override;

      //--[ accessors ]--
      function get_user_index() : integer;
      function get_role() : TUserRole;
      function get_fio()  : string;
      function get_role_name() : string;

      //--[ mutators ]--
      procedure set_user_index( value : integer );
      procedure set_role( value : TUserRole );
      procedure set_fio( value : string );

      //--[ methods ]--
      procedure initialize();virtual;

      //--[ properties ]--
      property user_index : integer read Fuser_index write Setuser_index;
      property role : TUserRole read Frole write Setrole;
      property fio : string read Ffio write Setfio;
      property role_name : string read get_roleName;

      procedure assign_from( source : IUserInfo );virtual;
  end;//class


implementation

{ TUserInfo }






procedure TUserInfo.assign_from(source: IUserInfo);
begin
  fio        := source.fio;
  user_index := source.user_index;
  role := source.role;
end;

constructor TUserInfo.Create;
begin
  inherited;
end;

destructor TUserInfo.Destroy;
begin

  inherited;
end;

function TUserInfo.get_fio: string;
begin
  result := Ffio;
end;

function TUserInfo.get_role: TUserRole;
begin
  result := Frole;
end;

function TUserInfo.get_roleName: string;
begin

end;

function TUserInfo.get_role_name: string;
begin
  result := get_caption_for( Frole );
end;

function TUserInfo.get_user_index: integer;
begin
  result := Fuser_index;
end;

procedure TUserInfo.initialize;
begin
  Ffio := '';
  Frole := ROLE_UNKNOWN;
  Fuser_index := -1;
end;



procedure TUserInfo.Setfio(const Value: string);
begin
  Ffio := value;
end;

procedure TUserInfo.Setrole(const Value: TUserRole);
begin
  Frole := value;
end;

procedure TUserInfo.Setuser_index(const Value: integer);
begin
  Fuser_index := value;
end;

procedure TUserInfo.set_fio(value: string);
begin
  Ffio := value;
end;

procedure TUserInfo.set_role(value: TUserRole);
begin
  Frole := value;
end;

procedure TUserInfo.set_user_index(value: integer);
begin
  Fuser_index := value;
end;

end.
 