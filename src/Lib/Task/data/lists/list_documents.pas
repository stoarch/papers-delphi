unit list_documents;

interface
  uses
      //--[ common ]--
      classes,
      //--[ constants ]--
      const_documentList,
      //--[ interfaces ]--
      interface_document,
      interface_documentList
      ;

type
  TDocumentList = class( TInterfaceList, IDocumentList )
  public
    destructor Destroy();override;

    function GetDocuments(index: integer): IDocument;
    procedure SetDocuments(index: integer; const Value: IDocument);

    property Documents[ index : integer ] : IDocument read GetDocuments write SetDocuments;default;
  end;//class

implementation

{ TDocumentList }

destructor TDocumentList.Destroy;
begin

  inherited;
end;

function TDocumentList.GetDocuments(index: integer): IDocument;
begin
  result := inherited Items[ index ] as IDocument;
end;

procedure TDocumentList.SetDocuments(index: integer;
  const Value: IDocument);
begin
  inherited Items[ index ] := value;
end;

end.
 