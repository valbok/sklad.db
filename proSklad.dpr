program proSklad;

uses
  Forms,
  unMain in 'unMain.pas' {frmMain},
  unDM in 'unDM.pas' {DM: TDataModule},
  unClients in 'unClients.pas' {frmClients},
  unMenu in 'unMenu.pas' {frmMenu},
  unClientEdit in 'unClientEdit.pas' {frmClientsEdit},
  unAccounts in 'unAccounts.pas' {frmAccounts},
  unAccountsEdit in 'unAccountsEdit.pas' {frmAccountsEdit},
  unRashod in 'unRashod.pas' {frmRashod},
  unRashodEdit in 'unRashodEdit.pas' {frmRashodEdit},
  unCosts in 'unCosts.pas' {frmCosts},
  unCostsEdit in 'unCostsEdit.pas' {frmCostsEdit},
  unZAdolgnost in 'unZAdolgnost.pas' {frmZadolgnost},
  unAbout in 'unAbout.pas' {frmAbout},
  unFindTo in 'unFindTo.pas' {frmFindTo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmClients, frmClients);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmClientsEdit, frmClientsEdit);
  Application.CreateForm(TfrmAccounts, frmAccounts);
  Application.CreateForm(TfrmAccountsEdit, frmAccountsEdit);
  Application.CreateForm(TfrmRashod, frmRashod);
  Application.CreateForm(TfrmRashodEdit, frmRashodEdit);
  Application.CreateForm(TfrmCosts, frmCosts);
  Application.CreateForm(TfrmCostsEdit, frmCostsEdit);
  Application.CreateForm(TfrmZadolgnost, frmZadolgnost);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmFindTo, frmFindTo);
  Application.Run;
end.
