unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, bsdbctrls,
  BusinessSkinForm, bsMessages, bsSkinHint, bsSkinData;

type
  TPaperworkAdmin_MainForm = class(TForm)
    users_db_grid: TbsSkinDBGrid;
    skin_data: TbsSkinData;
    stored_skin: TbsCompressedStoredSkin;
    skin_hint: TbsSkinHint;
    skin_message: TbsSkinMessage;
    skin_form: TbsBusinessSkinForm;
    bsSkinLabel1: TbsSkinLabel;
    users_vscroll: TbsSkinScrollBar;
    pipes_dbGrid: TbsSkinDBGrid;
    bsSkinLabel2: TbsSkinLabel;
    pipes_vscroll: TbsSkinScrollBar;
    doc_subkind_dbGrid: TbsSkinDBGrid;
    bsSkinLabel3: TbsSkinLabel;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinDBNavigator1: TbsSkinDBNavigator;
    bsSkinDBNavigator2: TbsSkinDBNavigator;
    bsSkinDBNavigator3: TbsSkinDBNavigator;
    subkings_hscroll: TbsSkinScrollBar;
    pipes_hscroll: TbsSkinScrollBar;
    users_hscroll: TbsSkinScrollBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaperworkAdmin_MainForm: TPaperworkAdmin_MainForm;

implementation

uses paperwork_dataModule;

{$R *.dfm}

end.
