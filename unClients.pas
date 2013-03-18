unit unClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons,unMenu,unClientEdit,
  Menus;

type
  TfrmClients = class(TfrmMenu)
    pnlMain: TPanel;
    grid: TDBGrid;
    Navigator: TDBNavigator;
    PopupMenu: TPopupMenu;
    miShowAccount: TMenuItem;
    miShowCosts: TMenuItem;
    miShowRashod: TMenuItem;
    N1: TMenuItem;
    miZAdolgnost: TMenuItem;
    Add1000records1: TMenuItem;
    N2: TMenuItem;
    miFind: TMenuItem;
    procedure sbNewClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure miShowAccountClick(Sender: TObject);
    procedure miShowCostsClick(Sender: TObject);
    procedure miShowRashodClick(Sender: TObject);
    procedure miZAdolgnostClick(Sender: TObject);
    procedure Add1000records1Click(Sender: TObject);
    procedure miFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClients: TfrmClients;

implementation
uses unDm, unAccountsEdit, unCostsEdit, unRashod, DB, unZAdolgnost,
  unFindTo;
{$R *.dfm}
procedure TfrmClients.sbNewClick(Sender: TObject);
begin
  if dm.Database.Connected then
  begin
    dm.qClients.Insert;
    frmClientsEdit.show;
  end;
end;
///-----------------------
procedure TfrmClients.sbDEleteClick(Sender: TObject);
var cid:integer;
begin
  if messageDLG('Вы уверены что желаете удалить Клиента? При этом удалятся аме расходы, цены и удалится счёт! '+#13#10+
      dm.qClients.fieldByName('name').asstring,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  cid:=dm.qClients.fieldByName('id').AsInteger;
  dm.qDelRashod_by_cl.ParamByName('id').AsInteger:=cid;
  dm.qDelCosts_by_cl.ParamByName('id').AsInteger:=cid;
  dm.qDelaccount_by_cl.ParamByName('id').AsInteger:=cid;

  dm.qDelaccount_by_cl.ExecSQL;
  dm.qDelRashod_by_cl.ExecSQL;
  dm.qDelCosts_by_cl.ExecSQL;
  
  dm.qClients.Delete;
end;
///-----------------------
procedure TfrmClients.sbApplyClick(Sender: TObject);
begin
 dm.qClients.ApplyUpdates;
end;
//------------------------
procedure TfrmClients.sbCancelClick(Sender: TObject);
begin
 dm.qClients.CancelUpdates;
end;
//--------------------
procedure TfrmClients.sbRefreshClick(Sender: TObject);
begin
   dm.qClients.Close;
   dm.qClients.Open;
end;
///-------------------------
procedure TfrmClients.sbEditClick(Sender: TObject);
begin
  if dm.Database.Connected then
  begin
    dm.qClients.Edit;
    frmClientsEdit.show;
  end;
end;
//--------
procedure TfrmClients.miShowAccountClick(Sender: TObject);
begin
  inherited;
  //if not dm.Database.Connected then exit;

    if not dm.qAccount_by_client.Active then
      dm.qAccount_by_client.Open;

    frmAccountsEdit.cbClient.KeyValue:=dm.qClients.fieldByName('id').AsInteger;
    frmAccountsEdit.eOnAccount.Refresh;
    frmAccountsEdit.eLastDate.Refresh;
    frmAccountsEdit.show;
end;

procedure TfrmClients.miShowCostsClick(Sender: TObject);
begin
  inherited;

    if not dm.qCosts.Locate('client_id',dm.qClients.fieldByName('id').AsInteger,[])
     then  dm.qCosts.Locate('client_id',null,[]);

    frmCostsEdit.cbClient.Enabled:=false;
    frmCostsEdit.Show;
end;

procedure TfrmClients.miShowRashodClick(Sender: TObject);
begin
  inherited;
  frmRashod.qry:=dm.qRashod_by_Client;
  frmRashod.SetDS(dm.dsqRashod_by_client);
  dm.qRashod_by_Client.close;
  dm.qRashod_by_Client.ParamByName('id').AsInteger:=dm.qClients.fieldByName('id').AsInteger;
  dm.qRashod_by_Client.Open;
  frmRashod.Show;
end;

procedure TfrmClients.miZAdolgnostClick(Sender: TObject);
var clientid,
    mp,mk,prostoe,bugel,bugelA,bugelCC,vkl,gel:integer;
    mpc,mkc,prostoec,bugelc,bugelcA,bugelcCC,vklc,gelc:real;
    nam:string;
    citems:integer;
    nasummu,onaccount,ostatok:real;
begin
  inherited;
with dm do
try
 try
  grid.Cursor:=crHourGlass;
  clientid:=qClients.fieldByName('id').AsInteger;

      //select costs by client
      qCosts_by_client.Close;
      qCosts_by_client.ParamByName('id').AsInteger:=clientid;

      qCosts_by_client.Open;

      if qCosts_by_client.RecordCount <>0 then
        begin
                mpc:=qCosts_by_client.fieldByName('mp').AsFloat;
                mkc:=qCosts_by_client.fieldByName('mk').AsFloat;
                prostoec:=qCosts_by_client.fieldByName('prostoe').AsFloat;
                bugelc:=qCosts_by_client.fieldByName('bugel').AsFloat;
                bugelcA:=qCosts_by_client.fieldByName('bugelA').AsFloat;
                bugelcCC:=qCosts_by_client.fieldByName('bugelC').AsFloat;                

                vklc:=qCosts_by_client.fieldByName('vkl').AsFloat;
                gelc:=qCosts_by_client.fieldByName('gel').AsFloat;
        end else
        begin  // if nema costs by client
              qCosts_by_client_is_null.Close;
              qCosts_by_client_is_null.Open;
              if qCosts_by_client_is_null.RecordCount <>0 then
                begin
                        mpc:=qCosts_by_client_is_null.fieldByName('mp').AsFloat;
                        mkc:=qCosts_by_client_is_null.fieldByName('mk').AsFloat;
                        prostoec:=qCosts_by_client_is_null.fieldByName('prostoe').AsFloat;
                        bugelc:=qCosts_by_client_is_null.fieldByName('bugel').AsFloat;
                        bugelcA:=qCosts_by_client_is_null.fieldByName('bugelA').AsFloat;
                        bugelcCC:=qCosts_by_client_is_null.fieldByName('bugelC').AsFloat;

                        vklc:=qCosts_by_client_is_null.fieldByName('vkl').AsFloat;
                        gelc:=qCosts_by_client_is_null.fieldByName('gel').AsFloat;
                end else
                begin
                   messageDLG('Отсутствуют цены по умолчанию!',mtError,[mbOk],0);
                   exit;
                end;
        end;

    qsummint.Close;
    qsummint.ParamByName('id').AsInteger:=clientid;
    qsummint.Open;

    qSummFloat.ParamByName('mk').AsFloat:=mkc;
    qSummFloat.ParamByName('mp').AsFloat:=mpc;
    qSummFloat.ParamByName('prostoe').AsFloat:=prostoec;
    qSummFloat.ParamByName('bugel').AsFloat:=bugelc;
    qSummFloat.ParamByName('bugelA').AsFloat:=bugelcA;
    qSummFloat.ParamByName('bugelC').AsFloat:=bugelcCC;    

    qSummFloat.ParamByName('vkl').AsFloat:=vklc;
    qSummFloat.ParamByName('gel').AsFloat:=gelc;
    qSummFloat.Close;
    qSummFloat.ParamByName('id').AsInteger:=clientid;
    qSummFloat.Open;



    nam:=qClients.fieldByName('name').AsString;
    citems:=(qsummint.fieldByName('sm').AsInteger);
    nasummu:=qSummFloat.fieldByName('sfloat').AsFloat;
    qAccount_by_client.Close;
    qAccount_by_client.ParamByName('id').AsInteger:=clientid;
    qAccount_by_client.Open;
    onaccount:=qAccount_by_client.fieldByName('onAccount').asfloat;

    ostatok:=onaccount-nasummu;
    mk:=qsummint.fieldByName('smk').AsInteger;
    mp:=qsummint.fieldByName('smp').AsInteger;
    prostoe:=qsummint.fieldByName('sprostoe').AsInteger;
    bugel:=qsummint.fieldByName('sbugel').AsInteger;

    bugelA:=qsummint.fieldByName('sbugelA').AsInteger;
    bugelCC:=qsummint.fieldByName('sbugelC').AsInteger;

    vkl:=qsummint.fieldByName('svkl').AsInteger;
    gel:=qsummint.fieldByName('sgel').AsInteger;

    mkc:=qSummFloat.fieldByName('smkc').AsFloat;
    mpc:=qSummFloat.fieldByName('smpc').AsFloat;
    prostoec:=qSummFloat.fieldByName('sprostoec').AsFloat;

    bugelc:=qSummFloat.fieldByName('sbugelc').AsFloat;
    bugelcA:=qSummFloat.fieldByName('sbugelcA').AsFloat;
    bugelcCC:=qSummFloat.fieldByName('sbugelcC').AsFloat;    

    vklc:=qSummFloat.fieldByName('svklc').AsFloat;
    gelc:=qSummFloat.fieldByName('sgelc').AsFloat;


    frmZadolgnost.setzad(nam,
                        intToStr(citems),
                        floatToStr(nasummu),
                        floatToStr(onaccount),
                        floatToStr(ostatok),
                        intToStr(mk),
                        FloatToStr(mkc),
                        intToStr(mp),
                        FloatToStr(mpc),
                        intToStr(prostoe),
                        FloatToStr(prostoec),
                        intToStr(bugel),
                        FloatToStr(bugelc),

                        intToStr(bugelA),
                        FloatToStr(bugelCA),

                        intToStr(bugelCC),
                        FloatToStr(bugelcCC),

                        intToStr(vkl),
                        FloatToStr(vklc),
                        intToStr(gel),
                        FloatToStr(gelc),clientid);
     frmZadolgnost.Show;
   finally
       grid.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;

end;

procedure TfrmClients.Add1000records1Click(Sender: TObject);
var i:integer;
begin
  inherited;
  with dm do
  begin
  //insert clients
     q.SQL.Text:='insert into clients(name) values(:name)';
     for i:=1 to 1000 do
     begin
       q.ParamByName('name').AsString:='name_'+intToStr(i);
       q.ExecSQL;
     end;
     showmessage('Clients was added');
     //add rashod
     randomize;
     q.SQL.Text:='insert into rashod(client_id,mk,mp,     prostoe,        bugel,  vkl,    gel) '+
                              'values(:client_id,:mk,:mp,:prostoe,:bugel,:vkl,:gel)';
     for i:=1 to 1000 do
     begin
//     '+intToStr(random(1000)+','+random(100),random(100,random(100),random(100),random(100),random(100));
       q.ParamByName('client_id').AsInteger:=random(1000);
       q.ParamByName('mk').AsInteger:=random(100);
       q.ParamByName('mp').AsInteger:=random(100);
       q.ParamByName('prostoe').AsInteger:=random(100);
       q.ParamByName('bugel').AsInteger:=random(100);
//       q.ParamByName('bugelC').AsInteger:=random(100);
//       q.ParamByName('bugelA').AsInteger:=random(100);
       q.ParamByName('vkl').AsInteger:=random(100);
       q.ParamByName('gel').AsInteger:=random(100);
       q.ExecSQL;
     end;
     showmessage('Rashod was added');
     //add costs
     randomize;
     q.SQL.Text:='insert into costs(client_id,mk,mp,     prostoe,        bugel,  vkl,    gel) '+
                              'values(:client_id,:mk,:mp,:prostoe,:bugel,:vkl,:gel)';
     for i:=1 to 100 do
     begin
//     '+intToStr(random(1000)+','+random(100),random(100,random(100),random(100),random(100),random(100));
       q.ParamByName('client_id').AsInteger:=i;
       q.ParamByName('mk').AsFloat:=random(0);
       q.ParamByName('mp').AsFloat:=random(0);
       q.ParamByName('prostoe').AsFloat:=random(0);
       q.ParamByName('bugel').AsFloat:=random(0);
//       q.ParamByName('bugelC').AsFloat:=random(100);
//       q.ParamByName('bugelC').AsFloat:=random(100);
       q.ParamByName('vkl').AsFloat:=random(0);
       q.ParamByName('gel').AsFloat:=random(0);
       q.ExecSQL;
     end;
     showmessage('Costs was added');
     //add accounts
     randomize;
     q.SQL.Text:='insert into accounts(client_id,onaccount) '+
                              'values(:client_id,:onaccount)';
     for i:=1 to 100 do
     begin
       q.ParamByName('client_id').AsInteger:=i;
       q.ParamByName('onaccount').AsFloat:=random(0);
       q.ExecSQL;
     end;
     showmessage('accounts was added');

  end;
end;

procedure TfrmClients.miFindClick(Sender: TObject);
begin
  inherited;
with dm do
try
  try
  Grid.Cursor:=crHourGlass;
  frmFindTo.Top:=frmClients.Top+frmClients.Height-49;
  frmFindTo.Left:=frmClients.Left+5;
  frmFindTo.showmodal;

    if frmFindTo.existValue then
      qClients.Locate('name',frmFindTo.value,[loPartialKey]);


  finally
     Grid.Cursor:=crDefault;
//       Anim.Active:=false;
   end;

 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;


end;

end.
