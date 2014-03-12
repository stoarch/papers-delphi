unit interface_folder;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_documentList
    ;

  const
    IID_IFolder : TGUID = '{C72C3BA9-DFF4-41C2-B72E-F923BAB508A9}';

  type
    IFolder = interface
         ['{C72C3BA9-DFF4-41C2-B72E-F923BAB508A9}']

      //--[ accessors ]--
      function get_active_document_index() : integer;
      function get_documents() : IDocumentList;

      //--[ mutators ]--
      procedure set_active_document_index( value : integer );
      procedure set_documents( value : IDocumentList );
      
      //--[ properties ]--
      property active_document_index : integer read get_active_document_index write set_active_document_index;
      property documents : IDocumentList read get_documents write set_documents;
    end;//interface

implementation

end.
 