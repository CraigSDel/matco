unit Main_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, User_u, UserService_u;

type
    TMatcoForm = class(TForm)
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
  MatcoForm: TMatcoForm;

implementation

{$R *.dfm}

procedure TMatcoForm.createClick(Sender: TObject);
var
  user: TUser;
begin
  user := TUser.create();
  user.setFullname(RoleEdit.Text);
  userService.save(user);
end;

procedure TMatcoForm.FormCreate(Sender: TObject);
begin
    userService := TUserService.Create;
end;

end.
