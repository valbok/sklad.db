unit unRashod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,unMenu, DBCtrls, Grids, DBGrids,DBTables,db, Menus,
  ekbasereport, ekrtf, ekfunc;

type
  TfrmRashod = class(TfrmMenu)
    pnlMain: TPanel;
    grid: TDBGrid;
    Navigator: TDBNavigator;
    PopupMenu: TPopupMenu;
    MSWord1: TMenuItem;
    EkRTF: TEkRTF;
    InvFn: TEkUDFList;
    procedure sbNewClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure sbEditClick(Sender: TObject);
    procedure SetDS(_ds:tdatasource);
    procedure MSWord1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ds:TDatasource;
    qry:TQuery;
  end;

var
  frmRashod: TfrmRashod;

implementation
uses unDM, unRashodEdit;
{$R *.dfm}
procedure tfrmrashod.SetDS(_ds:tdatasource);
begin
   grid.DataSource:=_ds;
   Navigator.DataSource:=_ds;
   ds:=_ds;
end;
//---------------------
procedure Tfrmrashod.sbNewClick(Sender: TObject);
var cid:integer;
begin
  with dm do
  if Database.Connected then
  begin
    if not qClients.Active then
      qClients.Open;

    cid:=qry.fieldByName('client_id').asInteger;
    qry.Insert;

    frmRashodEdit.SetDS(ds);

    frmRashodEdit.eTheDate.Text:=DateToStr(date);
    frmRashodEdit.cbClient.Enabled:=True;
    frmRashodEdit.cbClient.KeyValue:=cid;    
    frmRashodedit.show;

  end;
end;
//-----

procedure TfrmRashod.sbDEleteClick(Sender: TObject);
begin
  if messageDLG('¬ы уверены что желаете удалить эту запись?'
                ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    qry.Delete;
end;
//------------------
procedure Tfrmrashod.sbApplyClick(Sender: TObject);
begin
 qry.ApplyUpdates;
end;
//-------------------------
procedure Tfrmrashod.sbCancelClick(Sender: TObject);
begin
 qry.CancelUpdates;
end;
//////--------------
procedure Tfrmrashod.sbRefreshClick(Sender: TObject);
begin
   qry.Close;
   qry.Open;
end;
///-------------------------
procedure Tfrmrashod.sbEditClick(Sender: TObject);
begin
  if dm.Database.Connected then
  begin
    if not dm.qClients.Active then
      dm.qClients.Open;
    qry.Edit;
    frmRashodEdit.SetDS(ds);
    frmRashodEdit.cbClient.Enabled:=false;
    frmRashodEdit.Show;
  end;
end;
//--------

procedure TfrmRashod.MSWord1Click(Sender: TObject);
var clientid:integer;
    mpc,mkc,prostoec,bugelc,bugelcC,bugelcA,vklc,gelc:real;
begin
  inherited;
with dm do
try
 try
   grid.Cursor:=crHourGlass;
   qry.Open;
   qry.First;
   try
     qDeleteRashod_costs.ExecSQL;
   except
   end;
   while not qry.Eof do
   begin
      clientid:=qry.fieldByName('client_id').AsInteger;

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
                bugelcC:=qCosts_by_client.fieldByName('bugelC').AsFloat;
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
                        bugelcC:=qCosts_by_client_is_null.fieldByName('bugelC').AsFloat;
                        vklc:=qCosts_by_client_is_null.fieldByName('vkl').AsFloat;
                        gelc:=qCosts_by_client_is_null.fieldByName('gel').AsFloat;
                end else
                begin
                   messageDLG('ќтсутствуют цены по умолчанию!',mtError,[mbOk],0);
                   exit;
                end;


        end;
       if qry.fieldByName('thedate').AsDateTime <> 0 then
          qinsert_rashod_costs.ParamByName('thedate').AsDateTime:=qry.fieldByName('thedate').AsDateTime
            else
                qinsert_rashod_costs.ParamByName('thedate').AsDateTime:=Date;
      qinsert_rashod_costs.ParamByName('name').AsString
                                :=qry.fieldByName('luc').AsString;
      qinsert_rashod_costs.ParamByName('mk').AsInteger
                                :=qry.fieldByName('mk').AsInteger;
      qinsert_rashod_costs.ParamByName('mkc').AsFloat
                                :=mkc*qry.fieldByName('mk').AsInteger;
      qinsert_rashod_costs.ParamByName('mp').AsInteger
                                :=qry.fieldByName('mp').AsInteger;
      qinsert_rashod_costs.ParamByName('mpc').AsFloat
                                :=mpc*qry.fieldByName('mp').AsInteger;
      qinsert_rashod_costs.ParamByName('prostoe').AsInteger
                                :=qry.fieldByName('prostoe').AsInteger;
      qinsert_rashod_costs.ParamByName('prostoec').AsFloat
                                :=prostoec*qry.fieldByName('prostoe').AsInteger;
      qinsert_rashod_costs.ParamByName('bugel').AsInteger
                                :=qry.fieldByName('bugel').AsInteger;
      qinsert_rashod_costs.ParamByName('bugelc').AsFloat
                                :=bugelc*qry.fieldByName('bugel').AsInteger;

      qinsert_rashod_costs.ParamByName('bugelA').AsInteger
                                :=qry.fieldByName('bugelA').AsInteger;
      qinsert_rashod_costs.ParamByName('bugelcA').AsFloat
                                :=bugelca*qry.fieldByName('bugelA').AsInteger;

      qinsert_rashod_costs.ParamByName('bugelCC').AsInteger
                                :=qry.fieldByName('bugelC').AsInteger;
      qinsert_rashod_costs.ParamByName('bugelCCC').AsFloat
                                :=bugelCC*qry.fieldByName('bugelC').AsInteger;

      qinsert_rashod_costs.ParamByName('vkl').AsInteger
                                :=qry.fieldByName('vkl').AsInteger;
      qinsert_rashod_costs.ParamByName('vklc').AsFloat
                                :=vklc*qry.fieldByName('vkl').AsInteger;
      qinsert_rashod_costs.ParamByName('gel').AsInteger
                                :=qry.fieldByName('gel').AsInteger;
      qinsert_rashod_costs.ParamByName('gelc').AsFloat
                                :=gelc*qry.fieldByName('gel').AsInteger;
      qinsert_rashod_costs.ParamByName('nowdate').AsDate
                                :=date;

      qinsert_rashod_costs.ParamByName('sumint').AsInteger:=
                   qry.fieldByName('mk').AsInteger+
                   qry.fieldByName('mp').AsInteger+
                   qry.fieldByName('prostoe').AsInteger+
                   qry.fieldByName('bugel').AsInteger+
                   qry.fieldByName('bugelA').AsInteger+
                   qry.fieldByName('bugelC').AsInteger+
                   qry.fieldByName('vkl').AsInteger+
                   qry.fieldByName('gel').AsInteger;
      qinsert_rashod_costs.ParamByName('sumfloat').AsFloat:=
                   mpc*qry.fieldByName('mp').AsInteger+
                   mkc*qry.fieldByName('mk').AsInteger+
                   prostoec*qry.fieldByName('prostoe').AsInteger+
                   bugelc*qry.fieldByName('bugel').AsInteger+
                   bugelcA*qry.fieldByName('bugelA').AsInteger+
                   bugelcC*qry.fieldByName('bugelC').AsInteger+                                      
                   vklc*qry.fieldByName('vkl').AsInteger+
                   gelc*qry.fieldByName('gel').AsInteger;

      qinsert_rashod_costs.ExecSQL;
      qry.next;
   end;



 //---------------------------------------
   tblRashod_costs.Open;
   With EKRTF do Begin
   OutFile:=CreateFileName('','reports/tmp/list');
   ExecuteOpen([tblRashod_costs],SW_SHOW);
   End;
   finally
       grid.Cursor:=crDefault;
   end;
 except
  on E:Exception do
    messageDLG(E.Message,mtError,[mbOk],0);
 end;
end;

end.
