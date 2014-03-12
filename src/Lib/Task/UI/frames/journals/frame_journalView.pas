unit frame_journalView;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, bsSkinCtrls, bsSkinGrids,
  //--[ interfaces ]--
  interface_journal
  ;

type
  TJournalViewFrame = class(TSkinedFrame)
    journal_group_box: TbsSkinGroupBox;
    journal_grid: TbsSkinStringGrid;
    journal_vscroll: TbsSkinScrollBar;
    journal_hscroll: TbsSkinScrollBar;
  private
    { Private declarations }
    m_journal : IJournal;

    function get_journal() : IJournal;
    procedure set_journal( journal : IJournal );
  public
    { Public declarations }
    //--[ properties ]--
    property journal : IJournal read get_journal write set_journal;
  end;

var
  JournalViewFrame: TJournalViewFrame;

implementation

{$R *.dfm}

{ TJournalViewFrame }

function TJournalViewFrame.get_journal: IJournal;
begin
  result := m_journal;
end;

procedure TJournalViewFrame.set_journal(journal: IJournal);
begin
  m_journal := journal;
end;

end.
