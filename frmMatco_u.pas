unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, User_u, UserService_u;

type
    TfrmMatco = class(TForm)
    create: TButton;
    Description: TLabel;
    RoleEdit: TEdit;
    procedure createClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmMatco.createClick(Sender: TObject);
var
  user: TUser;
begin
  user := TUser.create();
  user.setFullname(RoleEdit.Text);
  userService.save(user);
end;

procedure TfrmMatco.FormCreate(Sender: TObject);
begin
    userService := TUserService.Create;
end;

end.
