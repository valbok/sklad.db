unit unMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, Buttons;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    pnlMenu: TPanel;
    sbRashod: TSpeedButton;
    sbCosts: TSpeedButton;
    sbAccounts: TSpeedButton;
    sbClients: TSpeedButton;
    sbExit: TSpeedButton;
    Bevel: TBevel;
    miConnect: TMenuItem;
    miDisconnect: TMenuItem;
    miData: TMenuItem;
    miClients: TMenuItem;
    miAccounts: TMenuItem;
    miRashod: TMenuItem;
    miCosts: TMenuItem;
    N3: TMenuItem;
    miSave: TMenuItem;
    miCancel: TMenuItem;
    miAbout: TMenuItem;
    procedure sbExitClick(Sender: TObject);
    procedure SetEnabled(value:boolean);
    procedure miConnectClick(Sender: TObject);
    procedure miDisconnectClick(Sender: TObject);
    procedure sbClientsClick(Sender: TObject);
    procedure sbAccountsClick(Sender: TObject);
    procedure sbRashodClick(Sender: TObject);
    procedure sbCostsClick(Sender: TObject);
    procedure miClientsClick(Sender: TObject);
    procedure miAccountsClick(Sender: TObject);
    procedure miCostsClick(Sender: TObject);
    procedure miRashodClick(Sender: TObject);
    procedure miSaveClick(Sender: TObject);
    procedure miCancelClick(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
uses unDm, unClients, unAccounts, unRashod, unCosts, unAbout;
{$R *.dfm}
procedure TfrmMain.SetEnabled(value:boolean);
begin
  miConnect.Enabled:=not value;
  miDisConnect.Enabled:= value;

  sbClients.Enabled:=value;
  sbCosts.Enabled:=value;
  sbRashod.Enabled:=value;
  sbAccounts.Enabled:=value;
  miData.Enabled:=value;
end;
procedure TfrmMain.sbExitClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMain.miConnectClick(Sender: TObject);
begin
   dm.Database.Open;
end;

procedure TfrmMain.miDisconnectClick(Sender: TObject);
begin
  dm.Database.Close;
end;

procedure TfrmMain.sbClientsClick(Sender: TObject);
begin
  if dm.qClients.Active =false then
    dm.qClients.Open;
    if not DM.qCosts.Active then
      dM.qCosts.Open;

  frmClients.Show;
end;

procedure TfrmMain.sbAccountsClick(Sender: TObject);
begin
   if dm.qAccounts.Active =false then
    dm.qaccounts.Open;
  frmaccounts.Show;
end;

procedure TfrmMain.sbRashodClick(Sender: TObject);
begin
  if dm.qRashod.Active = false then
    dm.qRashod.Open;
  frmRashod.SetDS(dm.dsqRashod);  
  frmRashod.qry:=dm.qRashod;
  frmrashod.Show;
end;

procedure TfrmMain.sbCostsClick(Sender: TObject);
begin
   if dm.qCosts.Active =false then
    dm.qCosts.Open;
  frmcosts.Show;

end;

procedure TfrmMain.miClientsClick(Sender: TObject);
begin
  sbClients.Click;
end;

procedure TfrmMain.miAccountsClick(Sender: TObject);
begin
  sbAccounts.Click;
end;

procedure TfrmMain.miCostsClick(Sender: TObject);
begin
  sbCosts.Click;
end;

procedure TfrmMain.miRashodClick(Sender: TObject);
begin
  sbRashod.Click;
end;

procedure TfrmMain.miSaveClick(Sender: TObject);
begin
  with  dm do
  begin
  if qClients.Active then
    qClients.ApplyUpdates;
  if qRashod.Active then
    qRashod.ApplyUpdates;
  if qCosts.Active then
    qCosts.ApplyUpdates;
  if qAccounts.Active then
    qAccounts.ApplyUpdates;
  end;
end;

procedure TfrmMain.miCancelClick(Sender: TObject);
begin
  with  dm do
  begin
  if qClients.Active then
    qClients.CancelUpdates;
  if qRashod.Active then
    qRashod.CancelUpdates;
  if qCosts.Active then
    qCosts.CancelUpdates;
  if qAccounts.Active then    
    qAccounts.CancelUpdates;
    end;

end;

procedure TfrmMain.miAboutClick(Sender: TObject);
begin
  frmAbout.show;
end;

end.
