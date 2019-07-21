unit UserResource_u;

interface

uses
  DMMatco_u, User_u;

type
  TUserResource = class
  private
    { Private declarations }
  public
    { Public declarations }
    procedure save(user: TUser);
  end;

implementation

procedure TUserResource.save(user: TUser);
begin
  with DMMatco do
  begin
    UserTable.Open;
    UserTable.Insert;
    UserTable['id'] := user.getId;
    UserTable['full_name'] := user.getFullname;
    UserTable.Post;
    UserTable.Close;
  end;
end;

end.
