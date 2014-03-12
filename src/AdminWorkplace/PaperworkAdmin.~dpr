program PaperworkAdmin;

uses
  Forms, SysUtils,
  MainForm in 'MainForm.pas' {PaperworkAdmin_MainForm},
  paperwork_dataModule in 'paperwork_dataModule.pas' {paperwork_dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  paperwork_dm := Tpaperwork_dm.create( Application );
  paperwork_dm.Connect();
  try
    Application.CreateForm(TPaperworkAdmin_MainForm, PaperworkAdmin_MainForm);
    Application.Run;
  finally
    FreeAndNil( paperwork_dm );
  end;//try--finally
end.
