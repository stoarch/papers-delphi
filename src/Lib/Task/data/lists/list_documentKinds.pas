unit list_documentKinds;

interface
  uses //--[ common ]--
       classes,contnrs,
       //--[ constats ]--
       const_documentKindList,
       //--[ interfaces ]--
       interface_documentKindInfo,
       interface_documentKindList,
       //--[ types ]--
       type_documentInfo
       ;

type
  TDocumentKindsList = class( TInterfaceList, IDocumentKindList )
  public
    destructor Destroy();override;
    //--[ accessors ]--
      function get_document_kind( index : integer ) : IDocumentKindInfo;

    //--[ mutators ]--
      procedure set_document_kind( index : integer; value : IDocumentKindInfo );

    //--[ properties ]--
    property DocumentKinds[ index : integer ] : IDocumentKindInfo read get_document_kind write set_document_kind;

    //--[ methods ]--
    procedure assign_from( source : IDocumentKindList );
    function  IndexOf( kind : TDocumentSubKind ) : integer;overload;
  end;//class

implementation

{ TDocumentKindsList }

{ TDocumentKindsList }

procedure TDocumentKindsList.assign_from(source: IDocumentKindList);
  var
    i : integer;
begin
  clear();
  for i := 0 to source.count - 1 do
    add( source.DocumentKinds[ i ] );
end;

destructor TDocumentKindsList.Destroy;
begin

  inherited;
end;

function TDocumentKindsList.get_document_kind(
  index: integer): IDocumentKindInfo;
begin
  result :=  inherited items[ index ]  as  IDocumentKindInfo;
end;

function TDocumentKindsList.IndexOf(kind: TDocumentSubKind): integer;
  var
    i : integer;
begin
  result := -1;

  for i := 0 to count - 1 do
  begin
    if( DocumentKinds[ i ].kind_index = ord( kind ) )then
    begin
      result := i;
      break;
    end;//if
  end;//for
end;

procedure TDocumentKindsList.set_document_kind(index: integer;
  value: IDocumentKindInfo);
begin
  inherited items[ index ] := value;
end;


end.
