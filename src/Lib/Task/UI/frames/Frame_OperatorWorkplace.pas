
unit Frame_OperatorWorkplace;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_PaperworkUser_Workplace, ImgList,
  Frame_Skined, frame_document_view, ComCtrls, ExtCtrls,
  FlexCompress, Menus, ActnList, sFrameAdapter,
  ToolWin, sToolBar, sTreeView, sListView, StdCtrls, sGroupBox, sPanel,
  sSplitter;

type
  TOperatorWorkplace = class(TPaperworkUser_Workplace)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OperatorWorkplace: TOperatorWorkplace;

implementation

{$R *.dfm}

end.
