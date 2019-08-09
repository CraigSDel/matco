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
    function findById(id: integer): TUser;
  end;

implementation

function TUserResource.findById(id: integer): TUser;
var
  user: TUser;
begin
  user := TUser.create;
  with DMMatco do
  begin
    tblUser.Open;
    tblUser.First;
    while not tblUser.Eof do
    begin
      if tblUser['id'] = id then
      begin
        user.setId(tblUser['id']);
        user.setFullname(tblUser['full_name']);
        result := user;
      end
      else
        tblUser.Next;
    end;
  end;
end;

procedure TUserResource.save(user: TUser);
begin
  with DMMatco do
  begin
    tblUser.Open;
    tblUser.Insert;
    tblUser['full_name'] := user.getFullname;
    tblUser.Post;
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
  end;

end;

end.
