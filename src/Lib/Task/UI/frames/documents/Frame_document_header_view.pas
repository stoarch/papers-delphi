unit Frame_document_header_view;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, StdCtrls,
  sLabel, sFrameAdapter;

type
  Tdocument_header_view_frame = class(TSkinedFrame)
    dest_label: TsLabel;
    source_label: TsLabel;
    dest_fio_label: TsLabel;
    source_fio_label: TsLabel;
    procedure FrameResize(Sender: TObject);
  private
    procedure Setdestination(const Value: string);
    procedure Setsource(const Value: string);
    procedure setDestinationFio(const Value: string);
    procedure setSourceFio(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    //--[ properties ]--
    property source : string write Setsource;
    property source_fio : string  write setSourceFio;
    property destination : string write Setdestination;
    property destination_fio : string write setDestinationFio;
  end;

var
  document_header_view_frame: Tdocument_header_view_frame;

implementation

{$R *.dfm}

{ Tdocument_header_view_frame }

procedure Tdocument_header_view_frame.Setdestination(const Value: string);
begin
  dest_label.caption := 'Кому: ' + Value;
end;

procedure Tdocument_header_view_frame.setDestinationFio(
  const Value: string);
begin
  dest_fio_label.Caption := value;
end;


procedure Tdocument_header_view_frame.Setsource(const Value: string);
begin
  source_label.caption := 'От: ' + Value;
end;

procedure Tdocument_header_view_frame.setSourceFio(const Value: string);
begin
  source_fio_label.Caption := value;
end;

procedure Tdocument_header_view_frame.FrameResize(Sender: TObject);
begin
  inherited;

  dest_label.width := width div 2 - 15;

  dest_fio_label.width := dest_label.width;
  source_label.width   := dest_label.width;
  source_fio_label.width := dest_label.width;

  source_label.left      := dest_label.left + dest_label.width + 5;
  source_fio_label.left  := source_label.left;
end;

end.
