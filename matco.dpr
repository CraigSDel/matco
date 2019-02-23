program matco;

uses
  Vcl.Forms,
  main_u in 'main_u.pas' {Form1},
  role_u in 'role\role_u.pas',
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule},
  RoleService_u in 'role\RoleService_u.pas',
  RoleResource_u in 'role\RoleResource_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMMatco, DMMatco);
  Application.Run;
end.
