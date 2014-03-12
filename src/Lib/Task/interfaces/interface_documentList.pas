unit interface_documentList;

interface

  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_document
    ;


 const
   IID_IDocumentList : TGUID = '{BBE0E43D-77F5-4071-8D77-683CF32C2D2B}';

 type
   IDocumentList = interface( IInterfaceList )
                   ['{BBE0E43D-77F5-4071-8D77-683CF32C2D2B}']
    function GetDocuments(index: integer): IDocument;
    procedure SetDocuments(index: integer; const Value: IDocument);

    property Documents[ index : integer ] : IDocument read GetDocuments write SetDocuments;default;
   end;//interface
implementation

end.
 