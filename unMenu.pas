unit unMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls;

type
  TfrmMenu = class(TForm)
    pnlTop: TPanel;
    sbNew: TSpeedButton;
    sbApply: TSpeedButton;
    sbCancel: TSpeedButton;
    sbEdit: TSpeedButton;
    sbDelete: TSpeedButton;
    sbRefresh: TSpeedButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    sbExit: TSpeedButton;
    Bevel6: TBevel;
    procedure sbEditClick(Sender: TObject); virtual;abstract;
    procedure sbApplyClick(Sender: TObject); virtual; abstract;
    procedure sbCancelClick(Sender: TObject);  virtual;abstract;
    procedure sbRefreshClick(Sender: TObject);virtual; abstract;
    procedure sbDEleteClick(Sender: TObject); virtual; abstract;
    procedure sbNewClick(Sender: TObject);  virtual;abstract;
    procedure sbExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

procedure TfrmMenu.sbExitClick(Sender: TObject);
begin
  close;
end;

end.
