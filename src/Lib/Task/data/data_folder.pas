unit data_folder;

interface
  uses
    //--[ common ]--
    classes,
    //--[ constants ]--
    const_documentList,
    //--[ interfaces ]--
    interface_documentList,
    interface_folder,
    //--[ factories ]--
    factory_documents
    ;

  type
    TFolder = class( TInterfacedObject, IFolder )
    private
      m_active_document_index : integer;
      m_documents             : IDocumentList;
    public
      constructor Create();
      destructor Destroy();override;
      
      //--[ IFolder ]--
      
      //--[ accessors ]--
      function get_active_document_index() : integer;
      function get_documents() : IDocumentList;

      //--[ mutators ]--
      procedure set_active_document_index( value : integer );
      procedure set_documents( value : IDocumentList );

      //--[ properties ]--
      property active_document_index : integer read get_active_document_index write set_active_document_index;
      property documents : IDocumentList read get_documents write set_documents;
    end;//class


implementation

{ TFolder }

constructor TFolder.Create;
begin
  inherited;

  m_documents := documents_factory.createInstance( CLSID_DocumentList, IID_IDocumentList ) as IDocumentList;
end;

destructor TFolder.Destroy;
begin
  m_documents := nil;
  
  inherited;
end;

function TFolder.get_active_document_index: integer;
begin
  result := m_active_document_index;
end;

function TFolder.get_documents: IDocumentList;
begin
  result := m_documents;
end;

procedure TFolder.set_active_document_index(value: integer);
begin
  m_active_document_index := value;
end;

procedure TFolder.set_documents(value: IDocumentList);
begin
  m_documents := value;
end;

end.
 