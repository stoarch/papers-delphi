unit Frame_document_footer_viewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, ExtCtrls, bsSkinCtrls,
  bsSkinData;

type
  Tdocument_footer_view_frame = class(TSkinedFrame)
    date_label: TbsSkinLabel;
    sign_label: TbsSkinLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setSkinData( data : tbsSkinData );override;
  end;

var
  document_footer_view_frame: Tdocument_footer_view_frame;

implementation

{$R *.dfm}

{ Tdocument_footer_view_frame }

procedure Tdocument_footer_view_frame.setSkinData(data: tbsSkinData);
begin
  inherited;

  date_label.SkinData := data;
  sign_label.SkinData := data;
end;

end.
