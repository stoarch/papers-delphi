unit data_documentAttachment;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_documentAttachment
    ;

type
  TDocumentAttachment = class( TInterfacedObject, IDocumentAttachment )
    private
      m_doc_ind : integer;
      m_doc_file : string;
      m_caption : string;
      m_URN     : string;
    public
       destructor Destroy();override;
       //--[ accessors ]--
       function get_doc_ind() : integer;
       function get_doc_file() : string;
       function get_caption() : string;
       function get_URN()     : string;

       //--[ mutators ]--
       procedure set_doc_ind( value : integer );
       procedure set_doc_file( value : string );
       procedure set_caption( value : string );
       procedure set_URN( value : string );

       //--[ property ]--
       property doc_ind : integer read get_doc_ind write set_doc_ind;
       property doc_file : string read get_doc_file write set_doc_file;
       property caption : string read get_caption write set_caption;
       property URN : string read get_URN write set_URN;
  end;//class

implementation

{ TDocumentAttachment }

destructor TDocumentAttachment.Destroy;
begin

  inherited;
end;

function TDocumentAttachment.get_caption: string;
begin
  result := m_caption;
end;

function TDocumentAttachment.get_doc_file: string;
begin
  result := m_doc_file; 
end;

function TDocumentAttachment.get_doc_ind: integer;
begin
  result := m_doc_ind;
end;

function TDocumentAttachment.get_URN: string;
begin
  result := m_URN;
end;

procedure TDocumentAttachment.set_caption(value: string);
begin
  m_caption := value;
end;

procedure TDocumentAttachment.set_doc_file(value: string);
begin
  m_doc_file := value;
end;

procedure TDocumentAttachment.set_doc_ind(value: integer);
begin
  m_doc_ind := value;
end;

procedure TDocumentAttachment.set_URN(value: string);
begin
  m_URN := value;
end;

end.
 