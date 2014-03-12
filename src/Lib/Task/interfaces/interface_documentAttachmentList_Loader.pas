unit interface_documentAttachmentList_Loader;

interface
  uses
    //--[ interfaces ]--
    interface_document,
    interface_documentAttachment
    ;

  const
    IID_IDocumentAttachmentList_Loader : TGUID = '{04018BDF-4E44-4FCD-A68F-E446E6AD8CAE}';

  type
    IDocumentAttachmentList_Loader = interface
                                   ['{04018BDF-4E44-4FCD-A68F-E446E6AD8CAE}']
      function load( document : IDocument ) : boolean;
    end;//interface
implementation

end.
 