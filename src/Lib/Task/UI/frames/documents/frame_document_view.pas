unit frame_document_view;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, ExtCtrls, 
  Frame_document_header_view, Frame_document_body_viewer,
  Frame_document_attachment_viewer,
  //--[ constants ]--
  const_document,
  //--[ interfaces ]--
  interface_document,
  //--[ factories ]--
  factory_documents,
  //--[ tools ]--
  tool_documentInfo,
  //--[ types ]--
  type_documentInfo, sFrameAdapter
  ;

type
  Tdocument_view_frame = class(TSkinedFrame)
    document_attachment_viewer: Tdocument_attachment_viewer;
    document_header_view_frame: Tdocument_header_view_frame;
    document_body_view_frame: Tdocument_body_view_frame;
  private
    m_document : IDocument;

    function getDocument: IDocument;
    procedure setDocument(const Value: IDocument);
    procedure update_interface;
    procedure initialize;
    { Private declarations }
  public
    constructor Create( AOwner : TComponent );override;
    destructor  Destroy();override;

    { Public declarations }
    //--[ properties ]--
    property document : IDocument read getDocument write setDocument;
  end;

var
  document_view_frame: Tdocument_view_frame;

implementation

uses Paperwork_ClassFactory, interface_userInfo;

{$R *.dfm}

{ Tdocument_view_frame }
procedure Tdocument_view_frame.update_interface();
begin
  with document_header_view_frame do
  begin
    source := m_document.from_user.role_name;
    source_fio := m_document.from_user.fio;
    destination := m_document.to_user.role_name;
    destination_fio := m_document.to_user.fio;
  end;//with

  with document_body_view_frame do
  begin
    doc_kind_caption := get_caption_for( m_document.document_kind );
    content          := m_document.content;
  end;//with

  with document_attachment_viewer do
  begin
    attachment_list := m_document.attachment_list;
  end;//with

end;


function Tdocument_view_frame.getDocument: IDocument;
begin
  result := m_document;
end;

procedure Tdocument_view_frame.setDocument(const Value: IDocument);
begin
  m_document := ( value );

  update_interface();
end;


constructor Tdocument_view_frame.Create(AOwner: TComponent);
begin
  inherited;

  initialize();
end;

procedure Tdocument_view_frame.initialize();
begin
 m_document  := documents_factory.createInstance( CLSID_DOCUMENT, IID_IDocument ) as IDocument ;
end;


destructor Tdocument_view_frame.Destroy;
begin
  m_document := nil;

  inherited;
end;

end.
