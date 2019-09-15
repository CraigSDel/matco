unit ProjectTicket_u;
//Craig Stroberg
//70854
//The project ticket object is a representation of what is needed for a project
//ticket
interface

uses
  SysUtils;

type
  TProjectTicket = class
  private
    projectId: integer;
    ticketId: integer;
    { Private declarations }
  public
    // Project ID
    function getProjectId(): integer;
    procedure setProjectId(pProjectId: integer);
    // Ticket ID
    function getTicketId(): integer;
    procedure setTicketId(pTicketId: integer);
    { Public declarations }
  end;

implementation

// Proejct ID
function TProjectTicket.getProjectId: integer;
begin
  result := projectId;
end;

function TProjectTicket.getTicketId: integer;
begin
  result := ticketId;
end;

procedure TProjectTicket.setProjectId(pProjectId: integer);
begin
  projectId := pProjectId;
end;

procedure TProjectTicket.setTicketId(pTicketId: integer);
begin
  ticketId := pTicketId;
end;

end.
