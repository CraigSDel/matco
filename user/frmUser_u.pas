unit frmUser_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, User_u,
  UserService_u;

type
  TfrmUser = class(TForm)
    MainMenu1: TMainMenu;
    User1: TMenuItem;
    Description: TLabel;
    create: TButton;
    RoleEdit: TEdit;
    icket1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure createClick(Sender: TObject);
    procedure icket1Click(Sender: TObject);
  private
    userService: TUserService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

uses frmMatco_u;

procedure TfrmUser.createClick(Sender: TObject);
var
  user: TUser;
begin
  user := TUser.create();
  user.setFullname(RoleEdit.Text);
  userService.save(user);
end;

procedure TfrmUser.FormCreate(Sender: TObject);
begin
    userService := TUserService.Create;
end;

procedure TfrmUser.icket1Click(Sender: TObject);
begin
  frmUser.Hide;
  frmMatco.Show;
end;

procedure TfrmUser.User1Click(Sender: TObject);
begin
  frmUser.Show;
  frmMatco.Hide;
end;

end.
