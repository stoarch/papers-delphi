unit Form_ConnectionStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg,
  //-- interfaces --
  interface_IDbTaskStatus, sPanel, sSkinProvider, sLabel;

type
  TConnectionStatus_Form = class(TForm, IDbTaskStatus)
    Image1: TImage;
    dbconnection_label: TsLabel;
    task_label: TsLabel;
    skin_provider: TsSkinProvider;
    dbName_Label: TsPanel;
    taskstate_label: TsPanel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


    //--[ operations ]--
    procedure setDbTask( dbTask : string );

    //--[ IDbTaskStatus ]--
    procedure setDbName( dbName : string );
    procedure IDBTaskStatus.SetTaskName = setDbTask;
    procedure setSubTaskName( subTaskName : string );
  end;

var
  ConnectionStatus_Form: TConnectionStatus_Form;

implementation

{$R *.dfm}

{ TConnectionStatus_Form }

procedure TConnectionStatus_Form.setDbName(dbName: string);
begin
  dbName_Label.Caption := dbName;
  Application.ProcessMessages();
end;

procedure TConnectionStatus_Form.setDbTask(dbTask: string);
begin
  taskstate_label.Caption := dbTask;
  Application.ProcessMessages();
end;


procedure TConnectionStatus_Form.FormActivate(Sender: TObject);
begin
  left := Screen.WorkAreaLeft + Screen.WorkAreaWidth - Width - 20;
  top  := Screen.WorkAreaTop + 60;
end;

procedure TConnectionStatus_Form.setSubTaskName(subTaskName: string);
begin
  //todo: implement this
end;

end.
