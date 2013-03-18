unit unAccountsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  TfrmAccountsEdit = class(TForm)
    pnlMain: TPanel;
    pnl1: TPanel;
    cbClient: TDBLookupComboBox;
    Label1: TLabel;
    eOnAccount: TDBEdit;
    Label2: TLabel;
    eLastDate: TDBEdit;
    Label3: TLabel;
    Navigator: TDBNavigator;
    sbClose: TSpeedButton;
    sbAdd: TSpeedButton;
    Bevel1: TBevel;
    Label4: TLabel;
    eMoneyAdd: TEdit;
    eClient_id: TDBEdit;
    Label5: TLabel;
    procedure sbCloseClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure eMoneyAddKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountsEdit: TfrmAccountsEdit;

implementation
uses unDM;
{$R *.dfm}

procedure TfrmAccountsEdit.sbCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAccountsEdit.sbAddClick(Sender: TObject);
var bilo,stalo,naskolko:real;
begin
  if eMoneyAdd.Text='' then exit;

  naskolko:=strToFloat(eMoneyAdd.text);

  if messageDLG('Пополнить счет на '+ eMoneyAdd.text+'?',mtConfirmation,[mbYes,mbNo],0)= mrNo then exit;
  if eOnAccount.Text='' then
    bilo:=0
  else
    bilo:=StrToFloat(eOnAccount.Text);

  Stalo:=bilo+naskolko;
  if dm.qAccount_by_client.RecordCount = 0 then
  begin
     dm.qinsertAccount.ParamByName('client_id').AsInteger:=cbClient.KeyValue;
     dm.qinsertAccount.ParamByName('onaccount').AsFloat:=stalo;
     dm.qinsertAccount.ParamByName('lastdate').Asdate:=date;
     dm.qinsertAccount.ExecSQL;


  end else
  begin
     dm.qUpdateAccount.ParamByName('client_id').AsInteger:=cbClient.KeyValue;
     dm.qUpdateAccount.ParamByName('onaccount').AsFloat:=stalo;
     dm.qUpdateAccount.ParamByName('lastdate').Asdate:=date;
     dm.qUpdateAccount.ExecSQL;
  end;

end;

procedure TfrmAccountsEdit.eMoneyAddKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
 sbAdd.Click;
end;

end.
