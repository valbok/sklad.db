unit unAccounts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,unMenu, DBCtrls, Grids, DBGrids;

type
  TfrmAccounts = class(TfrmMenu)
    pnlMain: TPanel;
    Grid: TDBGrid;
    Navigator: TDBNavigator;
    procedure sbNewClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccounts: TfrmAccounts;

implementation
uses unDm, unClientEdit, unAccountsEdit;
{$R *.dfm}
procedure TfrmAccounts.sbNewClick(Sender: TObject);
begin
  with dm do
  if Database.Connected then
  begin
//    qAccounts.Insert;

    if not qClients.Active then
      qClients.Open;
    if not qAccount_by_client.Active then
      qAccount_by_client.Open;

    frmAccountsEdit.show;
  end;
end;
//-----
procedure TfrmAccounts.sbDEleteClick(Sender: TObject);
begin
  if messageDLG('¬ы уверены что желаете удалить эту запись?'
                ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    dm.qAccounts.Delete;
end;
//------------------
procedure TfrmAccounts.sbApplyClick(Sender: TObject);
begin
 dm.qAccounts.ApplyUpdates;
end;
//-------------------------
procedure TfrmAccounts.sbCancelClick(Sender: TObject);
begin
 dm.qAccounts.CancelUpdates;
end;
//////--------------
procedure TfrmAccounts.sbRefreshClick(Sender: TObject);
begin
   dm.qAccounts.Close;
   dm.qAccounts.Open;
end;
///-------------------------
procedure TfrmAccounts.sbEditClick(Sender: TObject);
begin
  if dm.Database.Connected then
  begin
    if not dm.qClients.Active then
      dm.qClients.Open;

    if not dm.qAccount_by_client.Active then
      dm.qAccount_by_client.Open;

    frmAccountsEdit.cbClient.KeyValue:=dm.qAccounts.fieldByName('client_id').AsInteger;
    frmAccountsEdit.eOnAccount.Refresh;
    frmAccountsEdit.eLastDate.Refresh;
    frmAccountsEdit.show;
  end;
end;
//--------
end.
