unit interface_documentDirection;

interface
   uses //--[ interfaces ]--
       interface_documentKindList,
       interface_userInfo;

const
  IID_IDocumentDirection : TGUID = '{7E7E4B5C-B22E-4F86-A0FA-9F521A7CA88C}';

type
  IDocumentDirection = interface( IInterface )
                        ['{7E7E4B5C-B22E-4F86-A0FA-9F521A7CA88C}']

     //--[ accessors ]--
     function get_direction_index() : integer;
     function get_document_kind_list() : IDocumentKindList;
     function get_from_user() : IUserInfo;
     function get_to_user() : IUserInfo;

     //--[ mutators ]--
     procedure set_direction_index( value : integer );
     procedure set_document_kind_list( value : IDocumentKindList );
     procedure set_from_user( value : IUserInfo );
     procedure set_to_user( value : IUserInfo );

     //--[ properties ]--
     property direction_index : integer read get_direction_index write set_direction_index;
     property document_kind_list : IDocumentKindList read get_document_kind_list write set_document_kind_list;
     property from_user : IUserInfo read get_from_user write set_from_user;
     property to_user   : IUserInfo read get_to_user write set_to_user;
  end;//interface

implementation

end.
 