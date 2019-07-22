unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, frmUser_u;

type
  TfrmMatco = class(TForm)
    MatcoMainMenu: TMainMenu;
    User1: TMenuItem;
    User2: TMenuItem;
    procedure User1Click(Sender: TObject);
    procedure User2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatco: TfrmMatco;

implementation

{$R *.dfm}

procedure TfrmMatco.User1Click(Sender: TObject);
begin
  frmMatco.Show;
  frmUser.Hide;
end;

procedure TfrmMatco.User2Click(Sender: TObject);
begin
  frmMatco.Hide;
  frmUser.Show;
end;

end.
