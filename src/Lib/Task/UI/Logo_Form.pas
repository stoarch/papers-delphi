unit Logo_Form;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  //--[ interfaces ]--
  interface_taskStatus
  ;

type
  TLogoForm = class(TForm, ITaskStatus)
    Image_Logo: TImage;
    version_label: TLabel;
    task_status_label: TLabel;
    sub_task_status_label: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
      procedure setVersion( version : string );

    //--[ ITaskStatus ]--
      procedure setSubTaskName( asubTaskName : string );
      procedure setTaskName( ataskName : string );
  end;

var
  LogoForm: TLogoForm;

implementation

{$R *.dfm}

{ TLogoForm }


procedure TLogoForm.setTaskName(ataskName: string);
begin
  task_status_label.caption := ataskName;

  application.processMessages();
end;

procedure TLogoForm.setSubTaskName(asubTaskName: string);
begin
  sub_task_status_label.caption := asubTaskName;

  application.processMessages();
end;


procedure TLogoForm.setVersion(version: string);
begin
  version_label.caption := version;
end;

end.
