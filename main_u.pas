unit main_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Role_u, RoleService_u;

type
  TForm1 = class(TForm)
    create: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure createClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    roleService:TRoleService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.createClick(Sender: TObject);
var
  role:TRole;
begin
  role := TRole.create();
  role.setDescription(Edit1.Text);
  roleService.save(role);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    roleService := TRoleService.Create;
end;

end.
