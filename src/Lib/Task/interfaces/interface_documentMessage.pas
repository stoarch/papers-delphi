unit interface_documentMessage;

interface
  uses
      //--[ common ]--
      //--[ interfaces ]--
      interface_message
      ;

  const
     IID_IDocumentMessage : TGUID = '{81145D57-67AB-490E-80D4-A9F1FC56A27C}';

  type
    IDocumentMessage = interface( IMessage )
                       ['{81145D57-67AB-490E-80D4-A9F1FC56A27C}']

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
    end;//interface
implementation

end.
 