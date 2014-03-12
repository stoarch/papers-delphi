unit data_user;

interface
  uses
    //--[ common ]--
    Classes, ExtCtrls, SysUtils,
    //--[ constants ]--
    const_documentDirection,
    const_documentDirectionsList,
    const_documentKindList,
    const_user,
    //--[ data ]--
    data_userInfo,
    //--[ interfaces ]--
    interface_userData,
    interface_userInfo,
    interface_documentDirectionsList,
    interface_documentKindList,
    //--[ factories ]--
    factory_documents
    ;

type
  TUserData = class( TUserInfo, IUserData )
  private
    Fpassword: string;
    Fnick: string;
    Fdestination_list: IDocumentDirectionsList;
    Fsign_image: TImage;

    procedure check_data;
  protected
  public
      constructor Create();override;
      destructor Destroy();override;

      //--[ accessors ]--
        function get_nick() : string;
        function get_password() : string;
        function get_destination_list() : IDocumentDirectionsList;
        function get_image() : TImage;

      //--[ mutators ]--
        procedure set_nick( value : string );
        procedure set_password( value : string );
        procedure set_destination_list( value : IDocumentDirectionsList );
        procedure set_image( image : TImage );

      //--[ properties ]--
      property nick : string read get_nick write set_nick;
      property password : string read get_password write set_password;

      property destination_list : IDocumentDirectionsList read get_destination_list write set_destination_list;

      property sign_image : TImage read get_image write set_image;

      //--[ methods ]--
      procedure initialize();override;
      procedure assign_from( source : IUserInfo );override;
  end;//class


implementation

uses Paperwork_ClassFactory;

{ TUserData }


constructor TUserData.Create();
begin
  inherited;
  
  initialize();
end;

destructor TUserData.Destroy;
begin
  Fdestination_list := nil;

  if assigned( Fsign_image ) then
    FreeAndNil( Fsign_image );

  inherited;
end;

procedure TUserData.check_data();
begin
  if( pointer( Fdestination_list ) = nil )then
    Fdestination_list    := documents_factory.createInstance( CLSID_DOCUMENT_DIRECTION_LIST, IID_IDocumentDirectionsList ) as IDocumentDirectionsList;

  if( not assigned( Fsign_image ))then
    Fsign_image := TImage.create( nil );
end;

procedure TUserData.initialize;
begin
  inherited;

  check_data();

  Fdestination_list.clear();

  Fpassword := '';
  Fnick     := '';
end;

function TUserData.get_destination_list: IDocumentDirectionsList;
begin
  result := Fdestination_list;
end;


function TUserData.get_image: TImage;
begin
  result := Fsign_image;
end;

function TUserData.get_nick: string;
begin
  result := Fnick;
end;

function TUserData.get_password: string;
begin
  result := Fpassword;
end;

procedure TUserData.set_destination_list(value: IDocumentDirectionsList);
begin
  Fdestination_list := value;
end;


procedure TUserData.set_image(image: TImage);
begin
  Fsign_image.picture.assign( image.picture );
end;

procedure TUserData.set_nick(value: string);
begin
  Fnick := value;
end;

procedure TUserData.set_password(value: string);
begin
  Fpassword := value;
end;

procedure TUserData.assign_from(source: IUserInfo );
  var
    src : IUserData;
begin
  inherited assign_from( source as IUserInfo );

  src := source as IUserData;

  nick                  := src.nick;
  password              := src.password;
  destination_list      := ( src.destination_list );
  sign_image.picture.assign( src.sign_image.picture );

  //src := nil;
end;

end.
 