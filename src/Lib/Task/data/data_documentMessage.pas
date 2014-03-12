unit data_documentMessage;

interface
  uses
    //--[ constants ]--
    const_documentMessage,
    //--[ data ]--
    data_message,
    //--[ interfaces ]--
    interface_documentMessage
    ;

  type
    TDocumentMessage = class( TMessage, IDocumentMessage )
    private
       m_message_ind,
       m_doc_ind,
       m_doc_key_ind   : integer;
    public
      destructor Destroy();override;

      //--[ accessors ]--
      function get_message_ind() : integer;
      function get_doc_ind() : integer;
      function get_doc_key_ind() : integer;

      //--[ mutators ]--
      procedure set_message_ind( value : integer );
      procedure set_doc_ind( value : integer );
      procedure set_doc_key_ind( value : integer );

      //--[ properties ]--
      property message_ind : integer read get_message_ind write set_message_ind;
      property doc_ind : integer read get_doc_ind write set_doc_ind;
      property doc_key_ind : integer read get_doc_key_ind write set_doc_key_ind;
    end;//class

implementation

{ TDocumentMessage }

destructor TDocumentMessage.Destroy;
begin

  inherited;
end;

function TDocumentMessage.get_doc_ind: integer;
begin
  result := m_doc_ind;
end;

function TDocumentMessage.get_doc_key_ind: integer;
begin
  result := m_doc_key_ind;
end;

function TDocumentMessage.get_message_ind: integer;
begin
  result := m_message_ind;
end;

procedure TDocumentMessage.set_doc_ind(value: integer);
begin
  m_doc_ind := value;
end;

procedure TDocumentMessage.set_doc_key_ind(value: integer);
begin
  m_doc_key_ind := value;
end;

procedure TDocumentMessage.set_message_ind(value: integer);
begin
  m_message_ind := value;
end;

end.
