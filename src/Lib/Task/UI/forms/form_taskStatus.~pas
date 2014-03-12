unit form_taskStatus;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Skined, StdCtrls, sLabel, sSkinProvider,
  //--[ interfaces ]--
  interface_taskStatus
  ;

type
  TTaskStatus_Form = class(TSkinedForm, ITaskStatus)
    task_label: TsLabel;
    task_name_label: TsLabel;
    subTask_caption: TsLabel;
    subTask_label: TsLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    //--[ ITaskStatus ]--
    procedure setSubTaskName( subTaskName : string );
    procedure setTaskName( taskName : string );
  end;

var
  TaskStatus_Form: TTaskStatus_Form;

implementation

{$R *.dfm}

{ TTaskStatus_Form }


procedure TTaskStatus_Form.setTaskName(taskName: string);
begin
  task_name_label.caption := taskName;
  application.processMessages();
end;

procedure TTaskStatus_Form.FormActivate(Sender: TObject);
begin
  inherited;
  left := Screen.WorkAreaLeft + Screen.WorkAreaWidth - Width - 20;
  top  := Screen.WorkAreaTop + 60;
end;

procedure TTaskStatus_Form.setSubTaskName(subTaskName: string);
begin
  subTask_label.caption := subTaskName;
  Application.ProcessMessages;
end;

end.
