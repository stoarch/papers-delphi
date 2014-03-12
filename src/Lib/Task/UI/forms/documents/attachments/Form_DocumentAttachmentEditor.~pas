unit Form_DocumentAttachmentEditor;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, sSkinProvider,
  //--[ frames ]--
  Frame_Skined,
  Frame_Editor,
  Frame_AttachmentEditor,
  //--[ forms ]--
  Form_Skined,
  //--[ interfaces ]--
  interface_documentAttachment
  ;

type
  TDocumentAttachment_EditorForm = class(TSkinedForm)
    Attachment_EditorFrame: TAttachment_EditorFrame;
    submit_button: TsButton;
    cancel_button: TsButton;
  private
    FAttachment: IDocumentAttachment;
    function get_attachment() : IDocumentAttachment;
    procedure SetAttachment(const Value: IDocumentAttachment);
    procedure update_data;
    procedure update_interface;
    { Private declarations }
  public
    {  Public declarations }
    destructor Destroy();override;

    //--[ methods ]--
    function execute() : boolean;
    //--[ properties ]--
    property Attachment : IDocumentAttachment read get_Attachment write SetAttachment;
  end;

var
  DocumentAttachment_EditorForm: TDocumentAttachment_EditorForm;

implementation

{$R *.dfm}

{ TDocumentAttachment_EditorForm }

destructor TDocumentAttachment_EditorForm.Destroy;
begin
  FAttachment := nil;
  
  inherited;
end;

function TDocumentAttachment_EditorForm.execute: boolean;
begin
 result := false;
 if( showmodaL() = mrOk )then
   result := true;
end;

function TDocumentAttachment_EditorForm.get_attachment: IDocumentAttachment;
begin
  update_data();
  result := FAttachment;
end;

procedure TDocumentAttachment_EditorForm.SetAttachment(
  const Value: IDocumentAttachment);
begin
  FAttachment := Value;

  update_interface();
end;


procedure TDocumentAttachment_EditorForm.update_data();
begin
  FAttachment := Attachment_EditorFrame.attachment;
end;

procedure TDocumentAttachment_EditorForm.update_interface();
begin
  Attachment_EditorFrame.attachment := Fattachment;
end;



end.
