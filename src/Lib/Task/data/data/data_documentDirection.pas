unit data_documentDirection;

interface
  uses
    //--[ common ]--
      sysUtils,
    //--[ constants ]--
    const_documentKindList,
    const_documentDirection,
    const_userInfo,
    //--[ interface ]--
      interface_documentKindList,
      interface_userInfo,
      interface_documentDirection,
    //--[ factories ]--
      factory_documents,
      factory_users
      ;

type
  TDocumentDirection = class(TInterfacedObject, IDocumentDirection)
  private
    Ffrom_user: IUserInfo;
    Fto_user: IUserInfo;
    Fdirection_index: integer;
    Fdocument_kind_list : IDocumentKindList;
  public
     constructor Create();virtual;
     destructor  Destroy();override;


     //--[ accessors ]--
     function get_direction_index() : integer;
     function get_document_kind_list() : IDocumentKindList;
     function get_from_user() : IUserInfo;
     function get_to_user() : IUserInfo;

     //--[ mutators ]--
     procedure set_direction_index( value : integer );
     procedure set_document_kind_list( value : IDocumentKindList );
     procedure set_from_user( value : IUserInfo );
     procedure set_to_user( value : IUserInfo );

     //--[ properties ]--
     property direction_index : integer read get_direction_index write set_direction_index;
     property document_kind_list : IDocumentKindList read get_document_kind_list write set_document_kind_list;
     property from_user : IUserInfo read get_from_user write set_from_user;
     property to_user   : IUserInfo read get_to_user write set_to_user;
  end;//class

implementation

uses Paperwork_ClassFactory;

{ TDocumentDirection }

constructor TDocumentDirection.Create;
begin
  Ffrom_user := users_factory.createInstance( CLSID_USERINFO, IID_IUserInfo ) as IUserInfo;
  Fto_user   := users_factory.createInstance( CLSID_USERINFO, IID_IUserInfo ) as IUserInfo;
  Fdocument_kind_list := documents_factory.createInstance( CLSID_DOCUMENT_KIND_LIST, IID_IDocumentKindList ) as IDocumentKindList;
end;

destructor TDocumentDirection.Destroy;
begin
  Ffrom_user := nil;
  Fto_user   := nil;
  Fdocument_kind_list := nil;

  inherited;
end;

function TDocumentDirection.get_direction_index: integer;
begin
  result := Fdirection_index;
end;

function TDocumentDirection.get_document_kind_list: IDocumentKindList;
begin
  result := Fdocument_kind_list;
end;

function TDocumentDirection.get_from_user: IUserInfo;
begin
  result := Ffrom_user;
end;

function TDocumentDirection.get_to_user: IUserInfo;
begin
  Result := Fto_user;
end;


procedure TDocumentDirection.set_direction_index(value: integer);
begin
  Fdirection_index := value;
end;

procedure TDocumentDirection.set_document_kind_list(
  value: IDocumentKindList);
begin
  Fdocument_kind_list := value;
end;

procedure TDocumentDirection.set_from_user(value: IUserInfo);
begin
  Ffrom_user := ( value );
end;

procedure TDocumentDirection.set_to_user(value: IUserInfo);
begin
  Fto_user := ( value );
end;

end.
