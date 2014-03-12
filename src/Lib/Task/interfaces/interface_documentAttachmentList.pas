unit interface_documentAttachmentList;

interface
  uses
      //--[ common ]--
      classes,
      //--[ interfaces ]--
      interface_documentAttachment
      ;

  const
    IID_IDocumentAttachmentList : TGUID = '{3FFD73D1-5B7A-4661-AFF2-5B42C4353B6B}';

  type
    IDocumentAttachmentList = interface( IInterfaceList )
                              ['{3FFD73D1-5B7A-4661-AFF2-5B42C4353B6B}']
      function GetAttachments(index: integer): IDocumentAttachment;
      procedure SetAttachments(index: integer;  const Value: IDocumentAttachment);

      //--[ property ]--
      property Attachments[ index : integer ] : IDocumentAttachment read GetAttachments write SetAttachments;

      //--[ methods ]--
      procedure assign_from( source : IDocumentAttachmentList );
    end;//interface

implementation

end.
