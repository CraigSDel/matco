unit ProjectTicketResource_u;

interface

uses
  DMMatco_u, ProjectTicket_u;

type
  TProjectTicketResource = class
  private
    { Private declarations }
  public
    { Public declarations }
    procedure save(ProjectTicket: TProjectTicket);
    function findById(id: integer): TProjectTicket;
  end;

implementation

function TProjectTicketResource.findById(id: integer): TProjectTicket;
var
  ProjectTicket: TProjectTicket;
begin
  ProjectTicket := TProjectTicket.create;
  with DMMatco do
  begin
    tblProjectTicket.Open;
    tblProjectTicket.First;
    while not tblProjectTicket.Eof do
    begin
      if tblProjectTicket['id'] = id then
      begin
        ProjectTicket.setProjectId(tblProject['project_id']);
        ProjectTicket.setTicketId(tblProject['ticket_id']);
        result := ProjectTicket;
      end
      else
        tblProject.Next;
    end;
  end;
end;

procedure TProjectTicketResource.save(ProjectTicket: TProjectTicket);
begin
  with DMMatco do
  begin
    tblProjectTicket.Open;
    tblProjectTicket.Insert;
    tblProjectTicket['project_id'] := ProjectTicket.getProjectId;
    tblProjectTicket['ticket_id'] := ProjectTicket.getTicketId;
    tblProjectTicket.Post;
  end;
end;

end.
