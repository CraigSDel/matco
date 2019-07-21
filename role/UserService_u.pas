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
  end;

implementation

constructor TUserService.create;
begin
    userResource := TUserResource.Create;
end;

procedure TUserService.save(user: TUser);
begin
    userResource.save(user);
end;
end.
