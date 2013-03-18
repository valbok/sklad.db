unit unRashodEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons,db;

type
  TfrmRashodEdit = class(TForm)
    pnlMain: TPanel;
    sbClose: TSpeedButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    eMK: TDBEdit;
    emp: TDBEdit;
    eTheDate: TDBEdit;
    Navigator: TDBNavigator;
    cbClient: TDBLookupComboBox;
    Label4: TLabel;
    eProstoe: TDBEdit;
    Label6: TLabel;
    eBugel: TDBEdit;
    Label7: TLabel;
    eVkl: TDBEdit;
    Label8: TLabel;
    eGel: TDBEdit;
    Label9: TLabel;
    eBugelA: TDBEdit;
    Label10: TLabel;
    eBugelC: TDBEdit;
    procedure sbCloseClick(Sender: TObject);
    procedure SetDS(ds:tdatasource);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmRashodEdit: TfrmRashodEdit;

implementation
uses unDM;
{$R *.dfm}
procedure tfrmrashodEdit.SetDS(ds:tdatasource);
begin
   cbClient.DataSource:=ds;
   eTheDate.DataSource:=ds;
   emk.DataSource:=ds;
   emp.DataSource:=ds;
   eProstoe.DataSource:=ds;
   eBugel.DataSource:=ds;
   eBugelC.DataSource:=ds;
   eBugelA.DataSource:=ds;      
   evkl.DataSource:=ds;
   egel.DataSource:=ds;               
   Navigator.DataSource:=ds;

end;
///
procedure TfrmRashodEdit.sbCloseClick(Sender: TObject);
begin
  close;
end;

end.
