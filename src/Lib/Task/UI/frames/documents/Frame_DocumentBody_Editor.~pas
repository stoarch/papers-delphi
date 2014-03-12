unit Frame_DocumentBody_Editor;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, StdCtrls, math,
  //--[ constants ]--
  const_document,
  //--[ factories ]--
  factory_documents,
  //--[ frames ]--
  frame_ContainerEditor,
  frame_Editor,
  frame_RichText_Editor,
  //--[ interfaces ]--
  interface_document,
  interface_documentKindList,
  //--[ types ]--
  type_documentInfo, ExtCtrls, Mask, ComCtrls, ImgList, sGroupBox,
  sComboBox, sLabel, sPanel, sFrameAdapter
  ;

type
  Tdocument_body_editor_frame = class(TContainerEditorFrame)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    doc_kind_combobox: TsComboBox;
    doc_content_group_box: TsGroupBox;
    content_editorFrame: TRichText_EditorFrame;
    procedure doc_content_memoChange(Sender: TObject);
    procedure doc_kind_combobox1Change(Sender: TObject);
  private
    Fdocument_kind_list : IDocumentKindList;
    Fdocument           : IDocument;

    procedure Setdocument_kind_list(const Value: IDocumentKindList);
    procedure check_data;
    procedure load_ui_document_kind_list;
    function get_document_caption: string;
    procedure setDocumentKindIndex(const Value: integer);
    function get_content: string;
    function get_document: IDocument;
    procedure set_document(const Value: IDocument);
    function get_document_kind_index: integer;
    { Private declarations }

  protected
    procedure Handle_DataChanged( sender : tobject );override;

  public
    constructor Create( AOwner : TComponent );override;
    destructor Destroy();override;
    { Public declarations }

    //--[ properties ]--
    property document_kind_index : integer read get_document_kind_index write setDocumentKindIndex;
    property document_kind_list : IDocumentKindList read Fdocument_kind_list write Setdocument_kind_list;
    property document : IDocument read get_document write set_document;
  end;

var
  document_body_editor_frame: Tdocument_body_editor_frame;

implementation

uses Paperwork_ClassFactory, const_documentKindList,
  interface_documentKindInfo;

{$R *.dfm}

{ Tdocument_body_editor_frame }


procedure Tdocument_body_editor_frame.Setdocument_kind_list(
  const Value: IDocumentKindList);
  var
   i : integer;
begin
  check_data();
  Fdocument_kind_list := Value;

  load_ui_document_kind_list();
end;

procedure Tdocument_body_editor_frame.load_ui_document_kind_list();
 var
   i : integer;
begin
  is_internal_changes := true;

  doc_kind_combobox.Items.Clear();
  for i := 0 to Fdocument_kind_list.count - 1 do
  begin
    doc_kind_combobox.Items.Add(
      Fdocument_kind_list.DocumentKinds[ i ].caption
      );
  end;//for

  is_internal_changes := false;
end;


procedure Tdocument_body_editor_frame.check_data();
begin
  if( Fdocument_kind_list = nil )then
    Fdocument_kind_list := documents_factory.createInstance( CLSID_DOCUMENT_KIND_LIST, IID_IDocumentKindList ) as IDocumentKindList;

  if( Fdocument = nil )then
    Fdocument := documents_factory.createInstance( CLSID_Document, IID_IDocument) as IDocument;
end;



constructor Tdocument_body_editor_frame.Create(AOwner: TComponent);
begin
  inherited;

  check_data();

  Fdocument.document_kind := DOCUMENT_SUBKIND_UNKNOWN;

  Content_EditorFrame.OnDataChanged := Handle_DataChanged;
end;

destructor Tdocument_body_editor_frame.Destroy;
begin
  Fdocument_kind_list  := nil;
  Fdocument            := nil;

  inherited;
end;



procedure Tdocument_body_editor_frame.doc_content_memoChange(
  Sender: TObject);
begin
  inherited;

  Fdocument.content  := Content_EditorFrame.Content;

  if( not is_internal_changes )then
    data_changed := true;
end;

function Tdocument_body_editor_frame.get_document_caption: string;
begin
  result := doc_kind_combobox.Text;
end;

procedure Tdocument_body_editor_frame.setDocumentKindIndex(
  const Value: integer);
begin
  is_internal_changes := true;

  if( value < 0 )then
    doc_kind_combobox.ItemIndex := 0
  else
    doc_kind_combobox.ItemIndex := value;

  is_internal_changes := false;
end;


function Tdocument_body_editor_frame.get_content: string;
begin
 result :=   Content_EditorFrame.Content;
end;

function Tdocument_body_editor_frame.get_document: IDocument;
begin
  result := Fdocument;
end;

procedure Tdocument_body_editor_frame.set_document(const Value: IDocument);
begin
  Fdocument := value;

  Content_EditorFrame.Content := Fdocument.content;
end;

function Tdocument_body_editor_frame.get_document_kind_index: integer;
begin
  result := doc_kind_combobox.ItemIndex;
end;


procedure Tdocument_body_editor_frame.Handle_DataChanged(sender: tobject);
begin
  Fdocument.content := Content_EditorFrame.Content;
  Fdocument.caption := doc_kind_combobox.Text;

  inherited;
end;

procedure Tdocument_body_editor_frame.doc_kind_combobox1Change(
  Sender: TObject);
begin
  inherited;
  
  Fdocument.document_kind :=
     TDocumentSubKind(
       Fdocument_kind_list.DocumentKinds[
           doc_kind_combobox.ItemIndex
          ].kind_index
       );

  Fdocument.caption :=
              Fdocument_kind_list.DocumentKinds[
           doc_kind_combobox.ItemIndex
          ].caption;

  if( not is_internal_changes )then
   data_changed := true;
end;

end.
