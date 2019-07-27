unit ProjectResource_u;

interface

uses
  DMMatco_u, Project_u;

type
  TProjectResource = class
  private
    { Private declarations }
  public
    { Public declarations }
    procedure save(Project: TProject);
    procedure update(Project: TProject);
    function findById(id: integer): TProject;
  end;

implementation

function TProjectResource.findById(id: integer): TProject;
var
  Project: TProject;
begin
  Project := TProject.create;
  with DMMatco do
  begin
    tblProject.Open;
    tblProject.First;
    while not tblProject.Eof do
    begin
      if tblProject['id'] = id then
      begin
        Project.setId(tblProject['id']);
        Project.setFullname(tblProject['full_name']);
        result := Project;
      end
      else
        tblProject.Next;
    end;
  end;
end;

procedure TProjectResource.save(Project: TProject);
begin
  with DMMatco do
  begin
    tblProject.Open;
    tblProject.Insert;
    tblProject['full_name'] := Project.getFullname;
    tblProject.Post;
    tblProject.Close;
  end;
end;

procedure TProjectResource.update(Project: TProject);
begin
  with DMMatco do
  begin
    tblProject.Open;
    tblProject.UpdateRecord;
    tblProject['id'] := Project.getId;
    tblProject['full_name'] := Project.getFullname;
    tblProject.Post;
    tblProject.Close;
  end;

end;

end.
