unit Frame_Skined;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, sFrameAdapter;

type
  TSkinedFrame = class(TFrame)
    Frame_Adapter: TsFrameAdapter;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TSkinedFrame }


procedure TSkinedFrame.FrameResize(Sender: TObject);
begin
  Frame_Adapter.DoHook();
end;

end.
