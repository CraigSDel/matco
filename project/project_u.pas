unit Project_u;

// Craig Stroberg
// 70854
// The project object is a representation of what is needed for a project
interface

uses
  SysUtils;

type
  TProject = class
  private
    id: integer;
    fullname: string;
    { Private declarations }
  public
    // ID
    function getId(): integer;
    procedure setId(pId: integer);
    // Fullname
    function getFullname(): string;
    procedure setFullname(pFullname: string);
    { Public declarations }
  end;

implementation

// ID
function TProject.getId: integer;
begin
  result := id;
end;

procedure TProject.setId(pId: integer);
begin
  id := pId;
end;

// Fullname
function TProject.getFullname: string;
begin
  result := fullname;
end;

procedure TProject.setFullname(pFullname: string);
begin
  fullname := pFullname;
end;

end.
