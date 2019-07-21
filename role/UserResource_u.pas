unit UserResource_u;

interface

uses
  DMMatco_u, User_u;

type
  TUserResource = class
  private
    { Private declarations }
  public
    procedure save(user: TUser);
  end;

implementation

{ TRoleReource }

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

end.
