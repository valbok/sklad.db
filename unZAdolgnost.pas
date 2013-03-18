unit unZAdolgnost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TfrmZadolgnost = class(TForm)
    pnlMain: TPanel;
    sbClose: TSpeedButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label4: TLabel;
    eName: TEdit;
    eCitems: TEdit;
    eCMoney: TEdit;
    eOnAccount: TEdit;
    Label2: TLabel;
    eOstatok: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eBugel: TEdit;
    Evkl: TEdit;
    eGel: TEdit;
    eMp: TEdit;
    eProstoe: TEdit;
    eMk: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    sbSet: TSpeedButton;
    Label14: TLabel;
    eBugelA: TEdit;
    eBugelCC: TEdit;
    Label15: TLabel;
    emkc: TEdit;
    empc: TEdit;
    eProstoec: TEdit;
    eBugelc: TEdit;
    eBugelCa: TEdit;
    eBugelCCC: TEdit;
    eVklc: TEdit;
    eGelc: TEdit;
    procedure sbCloseClick(Sender: TObject);
    procedure setzad(name,citems,nasummu,onaccount,ostatok,
        mk,mkc,mp,mpc,prostoe,prostoec,bugel,bugelc,bugela,bugelCa,bugelcc,bugelCcc,vkl,vklc,gel,gelc:string;clientid:integer);
    procedure sbSetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    client_id:integer;
  public
    { Public declarations }
  end;

var
  frmZadolgnost: TfrmZadolgnost;

implementation

uses unDM;

{$R *.dfm}
procedure TfrmZadolgnost.setzad(name,citems,nasummu,onaccount,ostatok,
        mk,mkc,mp,mpc,prostoe,prostoec,bugel,bugelc,bugela,bugelCa,bugelcc,bugelCcc,vkl,vklc,gel,gelc:string;clientid:integer);
begin
  eName.Text:=name;
  eCitems.Text:=citems;
  eCMoney.Text:=nasummu;
  eOnAccount.Text:=onaccount;
  eOstatok.Text:=Ostatok;
  emk.Text:=mk;
  emkc.Text:=mkc;
  emp.Text:=mp;
  empc.Text:=mpc;
  eProstoe.Text:=prostoe;
  eProstoec.Text:=prostoec;
  eBugel.Text:=bugel;
  eBugelc.Text:=bugelc;

  eBugelA.Text:=bugelA;
  eBugelCA.Text:=bugelCA;  
  eBugelCc.Text:=bugelcC;
  eBugelCcC.Text:=bugelcCC;  


  Evkl.Text:=vkl;
  eVklc.Text:=vklc;
  eGel.Text:=gel;
  eGelc.Text:=gelc;
  client_id:=clientid;
end;

procedure TfrmZadolgnost.sbCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmZadolgnost.sbSetClick(Sender: TObject);
begin
{  if StrToFloat(eOstatok.Text) < 0 then
  begin
      messageDLG('Остаток меньше 0, обнавление невозможно!',mtError,[mbOk],0);
      exit;
  end;}
  if  messagedlg('Обновить счёт? Все расходы этого клиента удалятся!',mtConfirmation,[mbYes,mbNo],0)=mrNo then exit; 

  dm.qAccount_by_client.ParamByName('id').AsInteger:=client_id;
  if  dm.qAccount_by_client.RecordCount >0 then
  begin
    dm.qUpdateAccount.ParamByName('client_id').AsInteger:=client_id;
    dm.qUpdateAccount.ParamByName('onaccount').AsFloat:=StrToFloat(eOstatok.text);
    dm.qUpdateAccount.ParamByName('lastdate').AsDate:=Date;
    DM.qUpdateAccount.ExecSQL;
  end else
  begin
    dm.qinsertAccount.ParamByName('client_id').AsInteger:=client_id;
    dm.qinsertAccount.ParamByName('onaccount').AsFloat:=StrToFloat(eOstatok.text);
    dm.qinsertAccount.ParamByName('lastdate').AsDate:=Date;
    DM.qinsertAccount.ExecSQL;
  end;


  dm.qDelRashod_by_cl.ParamByName('id').AsInteger:=client_id;
  dm.qDelRashod_by_cl.ExecSQL;
end;

procedure TfrmZadolgnost.FormCreate(Sender: TObject);
begin
 frmZadolgnost.Caption:='Состояние задолжности на '+dateToStr(date);
end;

end.
