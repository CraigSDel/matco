unit UserService_u;

interface

uses
  User_u, UserResource_u;

type
  TUserService = class
  private
    { Private declarations }
    userResource: TUserResource;
  public
    { Public declarations }
    constructor create;
    procedure save(user: TUser);
    function findById(id: integer): TUser;
  end;

implementation

constructor TUserService.create;
begin
  userResource := TUserResource.create;
end;

function TUserService.findById(id: integer): TUser;
begin
  result := userResource.findById(id);
end;

procedure TUserService.save(user: TUser);
begin
  userResource.save(user);
end;

end.
