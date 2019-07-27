unit ProjectService_u;

interface

uses
  Project_u, ProjectResource_u;

type
  TProjectService = class
  private
    { Private declarations }
    ProjectResource: TProjectResource;
  public
    { Public declarations }
    constructor create;
    procedure save(Project: TProject);
    function findById(id: integer): TProject;
  end;

implementation

constructor TProjectService.create;
begin
  ProjectResource := TProjectResource.create;
end;

function TProjectService.findById(id: integer): TProject;
begin
  result := ProjectResource.findById(id);
end;

procedure TProjectService.save(Project: TProject);
begin
  ProjectResource.save(Project);
end;

end.
