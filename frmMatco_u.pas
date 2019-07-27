unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, User_u, UserService_u;

type
    TfrmMatco = class(TForm)
    MatcoMainMenu: TMainMenu;
    User1: TMenuItem;
    User2: TMenuItem;
    Client1: TMenuItem;
    procedure User1Click(Sender: TObject);
    procedure User2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Client1Click(Sender: TObject);
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
uses frmUser_u, frmClient_u;

procedure TfrmMatco.Client1Click(Sender: TObject);
begin
  frmClient.Show;
  frmMatco.Hide;
  frmUser.Hide;
end;

procedure TfrmMatco.FormCreate(Sender: TObject);
begin
  userService := TUserService.create;
end;

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
