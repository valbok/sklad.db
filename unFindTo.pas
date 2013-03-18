unit unFindTo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmFindTo = class(TForm)
    pnlMain: TPanel;
    Label1: TLabel;
    eValue: TEdit;
    procedure eValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    existValue:boolean;
    value:string;
  end;

var
  frmFindTo: TfrmFindTo;

implementation

{$R *.dfm}

procedure TfrmFindTo.eValueKeyPress(Sender: TObject; var Key: Char);
begin
if key =#27 then
 begin
  existvalue:=false;
  close;
 end else
if key =#13 then
begin
  value:=eValue.text;
  existValue:=true;
  close;
end;
end;

procedure TfrmFindTo.FormActivate(Sender: TObject);
begin
  eValue.Clear;
  eValue.SetFocus;
end;

end.
