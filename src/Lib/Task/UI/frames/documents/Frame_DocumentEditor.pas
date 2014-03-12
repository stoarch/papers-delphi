{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M+,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit Frame_DocumentEditor;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, ExtCtrls,
  //--[ constants ]--
  const_document,
  const_user,
  //--[ factories ]--
  factory_documents,
  factory_users,
  //--[ frames ]--
  Frame_DocumentBody_Editor,
  Frame_DocumentHeaderEditor,
  Frame_DocumentAttachments_Editor,
  Frame_ContainerEditor,
  Frame_Editor,
  //--[ interfaces ]--
  interface_document,
  interface_documentKindList,
  interface_userData,
  //--[ types ]--
  type_documentInfo, sFrameAdapter
  ;

type
  //****************************************************************************
  // kind: class
  // goal: provide the ability of editing the document
  // scenary:
  //  1. make an instance
  //  2. set user data
  //  3. set document data
  Tdocument_editor_frame = class(TContainerEditorFrame)
    document_attachments_editor: Tdocument_attachments_editor;
    document_body_editor_frame: Tdocument_body_editor_frame;
    document_header_editor_frame: Tdocument_header_editor_frame;
  private
    Fdocument   : IDocument;
    m_user_data : IUserData;

    procedure Setdocument(const Value: IDocument);
    function get_document: IDocument;
    procedure update_data;
    procedure update_interface;
    function get_user_data: IUserData;
    procedure set_user_data(const Value: IUserData);

  protected
    { Private declarations }
    procedure Handle_HeaderDataChanged( sender : Tobject );
  public
    constructor Create( Aowner : TComponent );override;
    destructor  Destroy();override;

    { Public declarations }

    property document : IDocument read get_document write Setdocument;
    property user     : IUserData read get_user_data write set_user_data;
  end;

var
  document_editor_frame: Tdocument_editor_frame;

implementation

uses
  Paperwork_ClassFactory, interface_userInfo,
  interface_documentDirectionsList, interface_documentDirection,
  interface_documentKindInfo;

{$R *.dfm}

{ Tdocument_editor_frame }

procedure  Tdocument_editor_frame.update_data();
begin
  Fdocument.attachment_list := document_attachments_editor.attachment_list;
  Fdocument.document_kind   :=
    TDocumentSubKind(
      user
       .destination_list
          .Directions[
            document_header_editor_frame.direction_index
          ]
           .document_kind_list
             .DocumentKinds[
               document_body_editor_frame
                .document_kind_index
              ]
               .kind_index
    );
end;//update_data



procedure Tdocument_editor_frame.update_interface();
  var
    _direction_index : integer;
begin
  document_header_editor_frame.document := Fdocument;
  document_body_editor_frame.document := Fdocument;

  with document_header_editor_frame do
  begin
    destination_list := user.destination_list;
    source           := user;
    initialize();
  end;//with

  with document_body_editor_frame do
  begin
    _direction_index := user
                         .destination_list
                           .indexOfUser(
                              user
                               .destination_list
                                 .userByPipe(
                                        Fdocument.pipe_ind
                                     )
                             )
                        ;

    document_kind_list := user
                            .destination_list
                              .Directions[
                                _direction_index
                               ]
                               .document_kind_list;

    document_kind_index := user.destination_list[ _direction_index ].document_kind_list.IndexOf( Fdocument.Document_kind );
    initialize();
  end;//with

  with document_attachments_editor do
  begin
    attachment_list    := Fdocument.attachment_list;
    initialize();
  end;//with
end;//update_interface



function Tdocument_editor_frame.get_document: IDocument;
begin
  update_data();

  result := fDocument;
end;

procedure Tdocument_editor_frame.Setdocument(const Value: IDocument);
begin
  Fdocument := ( Value );

  update_interface();
end;


function Tdocument_editor_frame.get_user_data: IUserData;
begin
  result := m_user_data;
end;

procedure Tdocument_editor_frame.set_user_data(const Value: IUserData);
begin
  m_user_data := ( value );
end;

constructor Tdocument_editor_frame.Create(Aowner: TComponent);
begin
  inherited;

  Fdocument := documents_factory.createInstance(CLSID_DOCUMENT,IID_IDocument) as IDocument;
  m_user_data:= users_factory.createInstance(CLSID_USERDATA, IID_IUserData) as IUserData;

  document_attachments_editor.OnDataChanged  := Handle_DataChanged;
  document_body_editor_frame.OnDataChanged   := Handle_DataChanged;
  //document_footer_editor_frame.OnDataChanged := Handle_DataChanged;
  document_header_editor_frame.OnDataChanged := Handle_HeaderDataChanged;
end;

destructor Tdocument_editor_frame.Destroy;
begin
  Fdocument := nil;
  m_user_data := nil;

  inherited;
end;




procedure Tdocument_editor_frame.Handle_HeaderDataChanged(sender: Tobject);
  var
    kind_list : IDocumentKindList;
begin
  kind_list := user.destination_list[
                 document_header_editor_frame.direction_index
               ]
                .document_kind_list;


  document_body_editor_frame.document_kind_list := kind_list;
  document_body_editor_frame.document_kind_index := 0;

  Handle_DataChanged( sender );
end;

end.
