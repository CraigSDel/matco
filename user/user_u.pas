unit User_u;
//Craig Stroberg
//70854
//The user object is a representation of what is needed for a user
interface

uses
  SysUtils;

type
  TUser = class
  private
      id:integer;
      fullname: string;
    { Private declarations }
  public
    // ID
    function getId():integer;
    procedure setId(pId:integer);
    // Fullname
    function getFullname():string;
    procedure setFullname(pFullname:string);
    { Public declarations }
  end;

implementation
    // ID
    function TUser.getId: integer;
    begin
      result := id;
    end;

    procedure TUser.setId(pId:integer);
    begin
      id := pId;
    end;

    // Fullname
    function TUser.getFullname: string;
    begin
      result := fullname;
    end;

    procedure TUser.setFullname(pFullname: string);
    begin
      fullname := pFullname;
    end;
end.
