unit unClientEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons;

type
  TfrmClientsEdit = class(TForm)
    pnlMain: TPanel;
    Label3: TLabel;
    Navigator: TDBNavigator;
    sbClose: TSpeedButton;
    pnl1: TPanel;
    memComment: TDBMemo;
    Label5: TLabel;
    eAddress: TDBEdit;
    Label4: TLabel;
    ePhone: TDBEdit;
    Label2: TLabel;
    eName: TDBEdit;
    Label1: TLabel;
    procedure sbCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientsEdit: TfrmClientsEdit;

implementation
uses unDm;
{$R *.dfm}

procedure TfrmClientsEdit.sbCloseClick(Sender: TObject);
begin
  close;
end;

end.
