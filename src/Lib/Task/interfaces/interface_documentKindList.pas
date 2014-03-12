unit interface_documentKindList;

interface
  uses  //--[ common ]--
        classes,
        //--[ interfaces ]--
        interface_documentKindInfo,
        //--[ types ]--
        type_documentInfo
        ;

const
  IID_IDocumentKindList : TGUID = '{7C054C5E-74E8-48C3-9CB9-4A2FD5AA0A0D}';

type
  IDocumentKindList = interface( IInterfaceList )
                        ['{7C054C5E-74E8-48C3-9CB9-4A2FD5AA0A0D}']

    //--[ accessors ]--
      function get_document_kind( index : integer ) : IDocumentKindInfo;

    //--[ mutators ]--
      procedure set_document_kind( index : integer; value : IDocumentKindInfo );

    //--[ properties ]--
    property DocumentKinds[ index : integer ] : IDocumentKindInfo read get_document_kind write set_document_kind;

    //--[ methods ]--
    procedure assign_from( source : IDocumentKindList );
    function  IndexOf( kind : TDocumentSubKind ) : integer;overload;
  end;//interface
implementation

end.
 