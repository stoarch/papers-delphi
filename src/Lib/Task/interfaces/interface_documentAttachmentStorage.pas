unit interface_documentAttachmentStorage;

interface
  uses
    //--[ interfaces ]--
    interface_document,
    interface_documentAttachment
    ;


  const
    IID_IDocumentAttachmentStorage  : TGUID = '{75DDC854-A480-4A8D-9C37-7FF179EE6F34}';

  type
    IDocumentAttachmentStorage = interface
                                 ['{75DDC854-A480-4A8D-9C37-7FF179EE6F34}']
       function get_document() : IDocument;

       procedure set_document( value : IDocument );
       
       function add( attachment : IDocumentAttachment ) : boolean;
       function add_copy( attachment : IDocumentAttachment ) : boolean;
          //*copies the document attachment without compression and only resolving links to it

       procedure clear();

       property document : IDocument read get_document write set_document;
    end;//interface
implementation

end.
 