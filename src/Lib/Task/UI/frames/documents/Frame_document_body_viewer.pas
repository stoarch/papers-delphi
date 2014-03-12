unit Frame_document_body_viewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, StdCtrls,
  ComCtrls, sRichEdit, sGroupBox, ExtCtrls, sPanel,
  sFrameAdapter;

type
  Tdocument_body_view_frame = class(TSkinedFrame)
    sPanel1: TsPanel;
    doc_kind_label: TsPanel;
    sGroupBox1: TsGroupBox;
    document_content: TsRichEdit;
  private
    Fdoc_kind_caption: string;
    Fcontent: string;
    procedure Setdoc_kind_caption(const Value: string);
    procedure Setcontent(const Value: string);
    { Private declarations }
  public
    { Public declarations }

    //--[ properties ]--
    property content : string read Fcontent write Setcontent;
    property doc_kind_caption : string read Fdoc_kind_caption write Setdoc_kind_caption;
  end;

var
  document_body_view_frame: Tdocument_body_view_frame;

implementation

{$R *.dfm}

{ Tdocument_body_view_frame }

procedure Tdocument_body_view_frame.Setcontent(const Value: string);
  var
    stm : TStringStream;
begin
  stm := TStringStream.Create( value );
  try
    document_content.Lines.LoadFromStream( stm );
  finally
    if( assigned( stm ) )then
      FreeAndNil( stm );
  end;//try
end;

procedure Tdocument_body_view_frame.Setdoc_kind_caption(
  const Value: string);
begin
  Fdoc_kind_caption := Value;

  doc_kind_label.caption := value;
end;


end.
