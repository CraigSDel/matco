unit frmUser_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, User_u, UserService_u, Vcl.StdCtrls, Vcl.Menus;

type
    TfrmUser = class(TForm)
    MatcoMainMenu: TMainMenu;
    Description: TLabel;
    create: TButton;
    RoleEdit: TEdit;
    User1: TMenuItem;
    User2: TMenuItem;
    procedure createClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    userService: TUserService;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmUser.createClick(Sender: TObject);
var
  user:TUser;
begin
  user := TUser.create();
  //user.setFullname(RoleEdit.Text);
  userService.save(user);
end;

procedure TfrmUser.FormCreate(Sender: TObject);
begin
    userService := TUserService.Create;
end;

end.
