unit unCosts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,unMenu, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TfrmCosts = class(TFrmMenu)
    pnlMain: TPanel;
    grid: TDBGrid;
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
  frmCosts: TfrmCosts;

implementation
uses unDM, unCostsEdit;
{$R *.dfm}
procedure TfrmCosts.sbNewClick(Sender: TObject);
begin
  with dm do
  if Database.Connected then
  begin
    if not qClients.Active then
      qClients.Open;
    qCosts.Insert;
    frmCostsEdit.cbClient.Enabled:=true;    
    frmCostsedit.show;
  end;
end;
//-----

procedure TfrmCosts.sbDEleteClick(Sender: TObject);
begin
  if messageDLG('¬ы уверены что желаете удалить эту запись?'
                ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    dm.qCosts.Delete;
end;
//------------------
procedure TfrmCosts.sbApplyClick(Sender: TObject);
begin
 dm.qCosts.ApplyUpdates;
end;
//-------------------------
procedure TfrmCosts.sbCancelClick(Sender: TObject);
begin
 dm.qCosts.CancelUpdates;
end;
//////--------------
procedure TfrmCosts.sbRefreshClick(Sender: TObject);
begin
   dm.qCosts.Close;
   dm.qCosts.Open;
end;
///-------------------------
procedure TfrmCosts.sbEditClick(Sender: TObject);
begin
  if dm.Database.Connected then
  begin
    if not dm.qClients.Active then
      dm.qClients.Open;
    dm.qCosts.Edit;
    frmCostsEdit.cbClient.Enabled:=false;
    frmCostsEdit.Show;
  end;
end;
//--------
end.
