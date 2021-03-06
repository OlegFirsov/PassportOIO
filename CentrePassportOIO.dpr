program CentrePassportOIO;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDB in 'UnitDB.pas' {DataMdl: TDataModule},
  UnitVariables in 'UnitVariables.pas',
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitAnketaTables in 'UnitAnketaTables.pas' {FormAnketaTables},
  UnitChoose in 'UnitChoose.pas' {FormChoose},
  WebDAV in 'WebDAV.pas',
  UnitThreadProgBar in 'UnitThreadProgBar.pas',
  UnitAbout in 'UnitAbout.pas' {AboutBox},
  UnitAddNewOrg in 'UnitAddNewOrg.pas' {FormAddNewOrg},
  UnitAddRajon in 'UnitAddRajon.pas' {FormAddNewRajon},
  UnitAddRegion in 'UnitAddRegion.pas' {FormAddRegion},
  UnitOkrug in 'UnitOkrug.pas' {FormOkrug},
  UnitSprav in 'UnitSprav.pas' {FormSprav};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDataMdl, DataMdl);
  Application.CreateForm(TFormAnketaTables, FormAnketaTables);
  Application.CreateForm(TFormChoose, FormChoose);
  Application.CreateForm(TFormAddNewOrg, FormAddNewOrg);
  Application.CreateForm(TFormAddNewRajon, FormAddNewRajon);
  Application.CreateForm(TFormAddRegion, FormAddRegion);
  Application.CreateForm(TFormOkrug, FormOkrug);
  Application.CreateForm(TFormSprav, FormSprav);
  FormLogin := TFormLogin.Create(Application);
  FormLogin.ShowModal;
  if ((isTest) and (not isUpdate))  then
  begin
    Application.Run;
  end;
end.
