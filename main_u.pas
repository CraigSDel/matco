unit Main_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Role_u, RoleService_u;

type
  TMatcoForm = class(TForm)
    create: TButton;
    Description: TLabel;
    RoleEdit: TEdit;
    procedure createClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    roleService:TRoleService;
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
  role:TRole;
begin
  role := TRole.create();
  role.setDescription(RoleEdit.Text);
  roleService.save(role);
end;

procedure TMatcoForm.FormCreate(Sender: TObject);
begin
    roleService := TRoleService.Create;
end;

end.
