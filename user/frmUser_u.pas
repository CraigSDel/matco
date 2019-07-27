unit frmUser_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, User_u, UserService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmUser = class(TForm)
    MatcoMainMenu: TMainMenu;
    Description: TLabel;
    create: TButton;
    edtFullname: TEdit;
    User1: TMenuItem;
    User2: TMenuItem;
    lblUser: TLabel;
    btnFindUser: TButton;
    spnEdtUserID: TSpinEdit;
    DBGrid1: TDBGrid;
    procedure createClick(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure User2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFindUserClick(Sender: TObject);
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

procedure TfrmUser.btnFindUserClick(Sender: TObject);
var
  user: TUser;
begin
  user := userService.findById(spnEdtUserID.Value);
end;

procedure TfrmUser.createClick(Sender: TObject);
var
  user: TUser;
begin
  user := TUser.create;
  user.setFullname(edtFullname.Text);
  userService.save(user);
end;

procedure TfrmUser.FormCreate(Sender: TObject);
begin
  userService := TUserService.create;
end;

procedure TfrmUser.User1Click(Sender: TObject);
begin
  frmMatco.Show;
  frmUser.Hide;
end;

procedure TfrmUser.User2Click(Sender: TObject);
begin
  frmMatco.Hide;
  frmUser.Show;
end;

end.
