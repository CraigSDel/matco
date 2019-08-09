unit UserService_u;

interface

uses
  User_u, UserResource_u;

type
  TUserService = class
  private
    { Private declarations }
    userResource: TUserResource;
    TUserArray = array of User;
  public
    { Public declarations }
    constructor create;
    procedure save(user: TUser);
    function findById(id: integer): TUser;
    function getUsers(): TUserArray;
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

function TUserService.getUsers: TUserArray;
begin
    result := userResource.getUsers();
end;

procedure TUserService.save(user: TUser);
begin
  userResource.save(user);
end;

end.
