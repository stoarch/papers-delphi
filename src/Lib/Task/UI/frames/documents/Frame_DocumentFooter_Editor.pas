unit Frame_DocumentFooter_Editor;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, ExtCtrls, StdCtrls, bsSkinCtrls,
  bsSkinData,
  //--[ frames ]--
  frame_Editor;

type
  Tdocument_footer_editor_frame = class(TEditorFrame)
    date_label: TbsSkinLabel;
    scribe_sign_caption: TbsSkinLabel;
    Image1: TImage;
  private
    Fdate: TDateTime;
    Fsign_image: TImage;
    procedure Setdate(const Value: TDateTime);
    procedure Setsign_image(const Value: TImage);
    { Private declarations }
  public
    { Public declarations }
    procedure setSkinData( data : TbsSkinData );override;

    //--[ properties ]--
    property date : TDateTime read Fdate write Setdate;
    property sign_image : TImage read Fsign_image write Setsign_image;
  end;


var
  document_footer_editor_frame: Tdocument_footer_editor_frame;

implementation

{$R *.dfm}

{ Tdocument_footer_editor_frame }

procedure Tdocument_footer_editor_frame.Setdate(const Value: TDateTime);
begin
  Fdate := Value;
end;

procedure Tdocument_footer_editor_frame.Setsign_image(const Value: TImage);
begin
  Fsign_image := Value;
end;

procedure Tdocument_footer_editor_frame.setSkinData(data: TbsSkinData);
begin
  inherited;

  date_label.SkinData := data;
  scribe_sign_caption.SkinData := data;
end;

end.
