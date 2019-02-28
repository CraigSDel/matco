unit RoleService_u;

interface

uses
  Role_u, RoleResource_u;

type
  TRoleService = class
  private
    { Private declarations }
    roleResource:TRoleResource;
  public
    { Public declarations }
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
