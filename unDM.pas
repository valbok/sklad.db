unit unDM;

interface

uses
  SysUtils, Classes, DB, DBTables,  Variants,dialogs;




type
  TDM = class(TDataModule)
    Database: TDatabase;
    tblClients: TTable;
    tblRashod: TTable;
    tblCosts: TTable;
    tblAccounts: TTable;
    qClients: TQuery;
    qRashod: TQuery;
    qCosts: TQuery;
    qAccounts: TQuery;
    dsqClients: TDataSource;
    dsqRashod: TDataSource;
    dsqCosts: TDataSource;
    dsqAccounts: TDataSource;
    usClients: TUpdateSQL;
    usRashod: TUpdateSQL;
    usCosts: TUpdateSQL;
    usAccounts: TUpdateSQL;
    qAccount_by_client: TQuery;
    dsqAccount_by_client: TDataSource;
    usa_by_c: TUpdateSQL;
    qinsertAccount: TQuery;
    qUpdateAccount: TQuery;
    qClientsid: TIntegerField;
    qClientsName: TStringField;
    qClientsPhone: TStringField;
    qClientsaddress: TStringField;
    qClientsComment: TStringField;
    qRashodid: TIntegerField;
    qRashodthedate: TDateField;
    qRashodclient_id: TIntegerField;
    qRashodmk: TIntegerField;
    qRashodmp: TIntegerField;
    qRashodprostoe: TIntegerField;
    qRashodbugel: TIntegerField;
    qRashodvkl: TIntegerField;
    qRashodgel: TIntegerField;
    qRashodluc: TStringField;
    qAccountsid: TIntegerField;
    qAccountsclient_id: TIntegerField;
    qAccountsonaccount: TFloatField;
    qAccountslastDate: TDateField;
    qAccountsluc: TStringField;
    qCostsid: TIntegerField;
    qCostsclient_id: TIntegerField;
    qCostsmk: TFloatField;
    qCostsmp: TFloatField;
    qCostsprostoe: TFloatField;
    qCostsbugel: TFloatField;
    qCostsvkl: TFloatField;
    qCostsgel: TFloatField;
    qCostsluc: TStringField;
    qRashod_by_Client: TQuery;
    usr_b_c: TUpdateSQL;
    dsqRashod_by_client: TDataSource;
    qRashod_by_Clientid: TIntegerField;
    qRashod_by_Clientthedate: TDateField;
    qRashod_by_Clientluc: TStringField;
    qRashod_by_Clientclient_id: TIntegerField;
    qRashod_by_Clientmk: TIntegerField;
    qRashod_by_Clientmp: TIntegerField;
    qRashod_by_Clientprostoe: TIntegerField;
    qRashod_by_Clientbugel: TIntegerField;
    qRashod_by_Clientvkl: TIntegerField;
    qRashod_by_Clientgel: TIntegerField;
    qREsultRashod: TQuery;
    tblRashod_costs: TTable;
    qinsert_rashod_costs: TQuery;
    qCosts_by_client: TQuery;
    qCosts_by_client_is_null: TQuery;
    qDeleteRashod_costs: TQuery;
    qDelRashod_by_cl: TQuery;
    qDelCosts_by_cl: TQuery;
    qDelaccount_by_cl: TQuery;
    qsummint: TQuery;
    qSummFloat: TQuery;
    q: TQuery;
    qRashodbugelC: TIntegerField;
    qRashod_by_ClientbugelC: TIntegerField;
    qRashod_by_ClientbugelA: TIntegerField;
    qRashodbugelA: TIntegerField;
    qCostsbugelA: TFloatField;
    qCostsbugelC: TFloatField;
    procedure DatabaseAfterConnect(Sender: TObject);
    procedure DatabaseAfterDisconnect(Sender: TObject);
    procedure qRashodBeforePost(DataSet: TDataSet);
    procedure qRashod_by_ClientBeforePost(DataSet: TDataSet);
    procedure qCostsBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses unMain;

{$R *.dfm}

procedure TDM.DatabaseAfterConnect(Sender: TObject);
begin
  frmMain.SetEnabled(true);

end;

procedure TDM.DatabaseAfterDisconnect(Sender: TObject);
begin
  frmMain.SetEnabled(false);
end;

procedure TDM.qRashodBeforePost(DataSet: TDataSet);
begin
  if qRashod.FieldByName('mk').AsInteger=0 then
    qRashod.FieldByName('mk').AsInteger:=0;
  if qRashod.FieldByName('mp').AsInteger=0 then
    qRashod.FieldByName('mp').AsInteger:=0;
  if qRashod.FieldByName('prostoe').AsInteger=0 then
    qRashod.FieldByName('prostoe').AsInteger:=0;
  if qRashod.FieldByName('bugel').AsInteger=0 then
    qRashod.FieldByName('bugel').AsInteger:=0;
  if qRashod.FieldByName('bugelC').AsInteger=0 then
    qRashod.FieldByName('bugelC').AsInteger:=0;
  if qRashod.FieldByName('bugelA').AsInteger=0 then
    qRashod.FieldByName('bugelA').AsInteger:=0;

  if qRashod.FieldByName('vkl').AsInteger=0 then
    qRashod.FieldByName('vkl').AsInteger:=0;
  if qRashod.FieldByName('gel').AsInteger=0 then
    qRashod.FieldByName('gel').AsInteger:=0;

// showmessage(intToStr(qRashod.FieldByName('mk').AsInteger));
end;

procedure TDM.qRashod_by_ClientBeforePost(DataSet: TDataSet);
begin
  if qRashod_by_Client.FieldByName('mk').AsInteger=0 then
    qRashod_by_Client.FieldByName('mk').AsInteger:=0;
  if qRashod_by_Client.FieldByName('mp').AsInteger=0 then
    qRashod_by_Client.FieldByName('mp').AsInteger:=0;
  if qRashod_by_Client.FieldByName('prostoe').AsInteger=0 then
    qRashod_by_Client.FieldByName('prostoe').AsInteger:=0;
  if qRashod_by_Client.FieldByName('bugel').AsInteger=0 then
    qRashod_by_Client.FieldByName('bugel').AsInteger:=0;
  if qRashod_by_Client.FieldByName('bugelC').AsInteger=0 then
    qRashod_by_Client.FieldByName('bugelC').AsInteger:=0;
  if qRashod_by_Client.FieldByName('bugelA').AsInteger=0 then
    qRashod_by_Client.FieldByName('bugelA').AsInteger:=0;

  if qRashod_by_Client.FieldByName('vkl').AsInteger=0 then
    qRashod_by_Client.FieldByName('vkl').AsInteger:=0;
  if qRashod_by_Client.FieldByName('gel').AsInteger=0 then
    qRashod_by_Client.FieldByName('gel').AsInteger:=0;
end;

procedure TDM.qCostsBeforePost(DataSet: TDataSet);
begin
  if qCosts.FieldByName('mk').AsInteger=0 then
    qCosts.FieldByName('mk').AsInteger:=0;
  if qCosts.FieldByName('mp').AsInteger=0 then
    qCosts.FieldByName('mp').AsInteger:=0;
  if qCosts.FieldByName('prostoe').AsInteger=0 then
    qCosts.FieldByName('prostoe').AsInteger:=0;
  if qCosts.FieldByName('bugel').AsInteger=0 then
    qCosts.FieldByName('bugel').AsInteger:=0;
  if qCosts.FieldByName('bugelC').AsInteger=0 then
    qCosts.FieldByName('bugelC').AsInteger:=0;
  if qCosts.FieldByName('bugelA').AsInteger=0 then
    qCosts.FieldByName('bugelA').AsInteger:=0;

  if qCosts.FieldByName('vkl').AsInteger=0 then
    qCosts.FieldByName('vkl').AsInteger:=0;
  if qCosts.FieldByName('gel').AsInteger=0 then
    qCosts.FieldByName('gel').AsInteger:=0;
end;

end.
