unit interface_document;

interface
  uses
     //--[ interfaces ]--
     interface_documentAttachmentList,
     interface_integerList,
     interface_userInfo,
     interface_userInfoList,
     //--[ types ]--
     type_documentInfo
     ;
const
  IID_IDocument : TGUID = '{5FDE3CAC-E502-4054-B204-528E41B5851B}';


type
  IDocument = interface( IInterface )
               ['{5FDE3CAC-E502-4054-B204-528E41B5851B}']

    //--[ accessors ]--
      function get_answer_date() : TDateTime;
      function get_attachment() : integer;
      function get_attachment_list() : IDocumentAttachmentList;
      function get_caption() : string;
      function get_content() : string;
      function get_dir_ind() : integer;
      function get_doc_ind() : integer;
      function get_doc_state() : TDocumentState;
      function get_document_kind() : TDocumentSubKind;
      function get_is_readen() : boolean;
      function get_flag() : TDocumentFlag;
      function get_from_user() : IUserInfo;
      function get_kind() : TDocumentKind;
      function get_make_date()    : TDateTime;
      function get_owner_id() : integer;
      function get_pipe_ind() : integer;
      function get_send_date() : TDateTime;
      function get_to_user()      : IUserInfo;

    //--[ mutators ]--
      procedure set_answer_date( value : TDateTime );
      procedure set_attachment( value : integer );
      procedure set_attachment_list( value : IDocumentAttachmentList );
      procedure set_caption( value : string );
      procedure set_content( value : string );
      procedure set_flag( value : TDocumentFlag );
      procedure set_doc_ind( value : integer );
      procedure set_doc_state( state : TDocumentState );
      procedure set_document_kind( value : TDocumentSubKind );
      procedure set_is_readen( value : boolean );
      procedure set_from_user( value : IUserInfo );
      procedure set_kind( value : TDocumentKind );
      procedure set_make_date( value : TDateTime );
      procedure set_owner_id( value : integer );
      procedure set_pipe_ind( value : integer );
      procedure set_send_date( value : TDateTime );
      procedure set_to_user( value : IUserInfo );

    //--[ properties ]--
    property document_kind: TDocumentSubKind read get_document_kind write set_document_kind;
    property content      : string read get_content write set_content;

    property attachment   : integer read get_attachment write set_attachment;
    property attachment_list : IDocumentAttachmentList read get_attachment_list write set_attachment_list;

    property caption      : string read get_caption write set_caption;
    property make_date    : tdateTime read get_make_date write set_make_date;
    property kind         : TDocumentKind read get_kind write set_kind;
    property owner_id : integer read get_owner_id write set_owner_id;

    property from_user      : IUserInfo read get_from_user write set_from_user;
    property to_user        : IUserInfo read get_to_user write set_to_user;

      //provide the pipe index between users as stored in db - 1 based;
    property pipe_ind       : integer read get_pipe_ind write set_pipe_ind;

      //provide the direction  (pipe) index between users. in program
      //        it started from 0.
    property dir_ind        : integer read get_dir_ind;

    property flag : TDocumentFlag read get_flag write set_flag;

    property doc_ind : integer read get_doc_ind write set_doc_ind;

    property state   : TDocumentState read get_doc_state write set_doc_state;

    property isReaden : boolean read get_is_readen write set_is_readen;

    property answer_date : TDateTime read get_answer_date write set_answer_date;
    property send_date : TDateTime read get_send_date write set_send_date;
    //--[ methods ]--
    procedure assign_from( source : IDocument );
  end;//interface

implementation

end.
 