unit RoleResource_u;

interface

uses
  DMMatco_u, Role_u;

type
  TRoleResource = class
  private
    { Private declarations }
  public
    procedure save(role: TRole);
  end;

implementation

{ TRoleReource }

procedure TRoleResource.save(role: TRole);
begin
 with DMMatco do
   begin
    RoleTable.Open;
    RoleTable.Insert;
    RoleTable['description'] := role.getDescription;
    RoleTable.Post;
    RoleTable.Close;
   end;
end;

end.
