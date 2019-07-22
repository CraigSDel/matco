unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, User_u, UserService_u, frmUser_u,
  Vcl.Menus;

type
    TfrmMatco = class(TForm)
    MainMenu1: TMainMenu;
    icket1: TMenuItem;
    User1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure icket1Click(Sender: TObject);
  private
    userService: TUserService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatco: TfrmMatco;

implementation

{$R *.dfm}

procedure TfrmMatco.FormCreate(Sender: TObject);
begin
    userService := TUserService.Create;
end;

procedure TfrmMatco.icket1Click(Sender: TObject);
begin
  frmUser.Hide;
  frmMatco.Show;
end;

procedure TfrmMatco.User1Click(Sender: TObject);
begin
  frmUser.Show;
  frmMatco.Hide;
end;

end.
