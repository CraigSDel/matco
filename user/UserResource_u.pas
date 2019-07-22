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
    procedure update(user: TUser);
  end;

implementation

procedure TUserResource.save(user: TUser);
begin
  with DMMatco do
  begin
    tblUser.Open;
    tblUser.Insert;
    tblUser['full_name'] := user.getFullname;
    tblUser.Post;
    tblUser.Close;
  end;
end;

procedure TUserResource.update(user: TUser);
begin
  with DMMatco do
  begin
    tblUser.Open;
    tblUser.UpdateRecord;
    tblUser['id'] := user.getId;
    tblUser['full_name'] := user.getFullname;
    tblUser.Post;
    tblUser.Close;
  end;

end;

end.
