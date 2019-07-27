unit User_u;

interface

uses
  SysUtils;

type
  TClient = class
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
    function TClient.getId: integer;
    begin
      result := id;
    end;

    procedure TClient.setId(pId:integer);
    begin
      id := pId;
    end;

    // Fullname
    function TClient.getFullname: string;
    begin
      result := fullname;
    end;

    procedure TClient.setFullname(pFullname: string);
    begin
      fullname := pFullname;
    end;
end.
