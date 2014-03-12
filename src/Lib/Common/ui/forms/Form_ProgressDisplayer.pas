unit Form_ProgressDisplayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Skined, StdCtrls, sGauge, sLabel, sSkinProvider,
  //-- interfaces --
  interface_IProgressDisplayer
  ;

type
  TProgressDisplayer = class(TSkinedForm, IProgressDisplayer)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    task_status_label: TsLabel;
    task_gauge: TsGauge;
    subtask_gauge: TsGauge;
    subtask_status_label: TsLabel;
  private
    { Private declarations }
    m_callback : TProgressCancelationProcedure;

    procedure show_progress;
    procedure hide_progress;
  public
    { Public declarations }

    //-- IProgressDisplayer --
      procedure setTaskCaption( caption : string );
      procedure setTaskProgress( current, total : integer );
      procedure setSubTaskCaption( caption : string );
      procedure setSubTaskProgress( current, total : integer );

      procedure setCancelCallback( callback : TProgressCancelationProcedure );

      procedure IProgressDisplayer.show = show_progress;
      procedure IProgressDisplayer.hide = hide_progress;
  end;

var
  ProgressDisplayer: TProgressDisplayer;

implementation

{$R *.dfm}

{ TProgressDisplayer }

procedure TProgressDisplayer.hide_progress;
begin
  hide;
end;

procedure TProgressDisplayer.setCancelCallback(
  callback: TProgressCancelationProcedure);
begin
  m_callback := callback;
end;


procedure TProgressDisplayer.setSubTaskCaption(caption: string);
begin
  subtask_status_label.Caption := caption;
  Application.ProcessMessages();
end;

procedure TProgressDisplayer.setSubTaskProgress(current, total: integer);
begin
  if( total = 0 )then exit;
  
  subtask_gauge.Progress := trunc( current / total )*100;
end;

procedure TProgressDisplayer.setTaskCaption(caption: string);
begin
  task_status_label.Caption := caption;
  Application.ProcessMessages();
end;

procedure TProgressDisplayer.setTaskProgress(current, total: integer);
begin
  if( total = 0 )then exit;

  task_gauge.Progress := trunc( current / total )*100;
end;

procedure TProgressDisplayer.show_progress;
begin
  show();
end;

end.
