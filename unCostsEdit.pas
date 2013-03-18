unit unCostsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons;

type
  TfrmCostsEdit = class(TForm)
    pnlMain: TPanel;
    sbClose: TSpeedButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    eMK: TDBEdit;
    emp: TDBEdit;
    cbClient: TDBLookupComboBox;
    eProstoe: TDBEdit;
    eBugel: TDBEdit;
    eVkl: TDBEdit;
    eGel: TDBEdit;
    Navigator: TDBNavigator;
    Label5: TLabel;
    eBugelA: TDBEdit;
    Label9: TLabel;
    eBugelC: TDBEdit;
    procedure sbCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCostsEdit: TfrmCostsEdit;

implementation
uses undm;
{$R *.dfm}

procedure TfrmCostsEdit.sbCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCostsEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cbClient.Enabled:=true;
end;

end.
