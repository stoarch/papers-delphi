unit Frame_AttachmentEditor;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Editor,
  StdCtrls, Mask, 
  //--[ interfaces ]--
  interface_documentAttachment, sMaskEdit, sCustomComboEdit, sTooledit,
  sEdit, sLabel, sFrameAdapter
  ;

type
  TAttachment_EditorFrame = class(TEditorFrame)
    caption_label: TsLabel;
    path_label: TsLabel;
    caption_edit: TsEdit;
    path_edit: TsFilenameEdit;
  private
    m_attachment : IDocumentAttachment;
    
    function get_attchment: IDocumentAttachment;
    procedure set_attachment(const Value: IDocumentAttachment);
    procedure update_data;
    procedure update_interface;
    { Private declarations }
  public
    { Public declarations }
    destructor Destroy();override;


    //--[ properties ]--
    property Attachment : IDocumentAttachment read get_attchment write set_attachment;
  end;

var
  Attachment_EditorFrame: TAttachment_EditorFrame;

implementation

{$R *.dfm}

{ TAttachment_EditorFrame }

destructor TAttachment_EditorFrame.Destroy;
begin
  m_attachment := nil;
  
  inherited;
end;

function TAttachment_EditorFrame.get_attchment: IDocumentAttachment;
begin
  update_data();

  result := m_attachment;
end;


procedure TAttachment_EditorFrame.set_attachment(
  const Value: IDocumentAttachment);
begin
  m_attachment := value;

  update_interface();
end;

procedure TAttachment_EditorFrame.update_data();
begin
  if( m_attachment = nil )then exit;

  m_attachment.caption := caption_edit.text;
  m_attachment.doc_file:= path_edit.text;
end;

procedure TAttachment_EditorFrame.update_interface();
begin
  if( m_attachment = nil )then exit;

  caption_edit.text := m_attachment.caption;
  path_edit.text    := m_attachment.doc_file;
end;

end.
