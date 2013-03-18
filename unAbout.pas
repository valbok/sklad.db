unit unAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmAbout = class(TForm)
    pnlMain: TPanel;
    sbClose: TSpeedButton;
    pnl1: TPanel;
    Bevel1: TBevel;
    memAbout: TMemo;
    Image1: TImage;
    Label1: TLabel;
    procedure sbCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

procedure TfrmAbout.sbCloseClick(Sender: TObject);
begin
  close;
end;

end.
