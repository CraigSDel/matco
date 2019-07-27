unit ProjectTicketService_u;

interface

uses
  ProjectTicket_u, ProjectTicketResource_u;

type
  TProjectTicketService = class
  private
    { Private declarations }
    projectTicketResource: TProjectTicketResource;
  public
    { Public declarations }
    constructor create;
    procedure save(ProjectTicket: TProjectTicket);
    function findById(pId: integer): TProjectTicket;
  end;

implementation

constructor TProjectTicketService.create;
begin
  ProjectTicketResource := TProjectTicketResource.create;
end;

function TProjectTicketService.findById(pId: integer): TProjectTicket;
begin
  result := projectTicketResource.findById(pId);
end;

procedure TProjectTicketService.save(ProjectTicket: TProjectTicket);
begin
  ProjectTicketResource.save(ProjectTicket);
end;

end.
