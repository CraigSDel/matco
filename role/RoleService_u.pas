unit RoleService_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Role_u, RoleResource_u;

type
  TRoleService = class
  private
    { Private declarations }
  roleResource:TRoleResource;
  public
    constructor create;
    procedure save(role: TRole);
  end;

implementation

constructor TRoleService.create;
begin
    roleResource := TRoleResource.Create;
end;

procedure TRoleService.save(role: TRole);
begin
  roleResource.save(role);
end;
end.
