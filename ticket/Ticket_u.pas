unit Ticket_u;

// Craig Stroberg
// 70854
// The ticket object is a representation of what is needed for a ticket
interface

uses
  SysUtils;

type
  TTicket = class
  private
    id: integer;
    ticketNumber: string;
    description: string;
    dateCreated: TDateTime;
    assignee: integer;
    status: string;
    { Private declarations }
  public
    // ID
    function getId(): integer;
    procedure setId(pid: integer);
    // Ticket Number
    function getTicketNumber(): string;
    procedure setTicketNumber(pTicketNumber: string);
    // Description
    function getDescription(): string;
    procedure setDescription(pdescription: string);
    // DateCreated
    function getDateCreated(): TDateTime;
    procedure setDateCreated(pDateCreated: TDateTime);
    // Assignee
    function getAssignee(): integer;
    procedure setAssignee(pAssignee: integer);
    // Status
    function getStatus(): string;
    procedure setStatus(pstatus: string);
    { Public declarations }
  end;

implementation

// ID
function TTicket.getId: integer;
begin
  result := id;
end;

procedure TTicket.setId(pid: integer);
begin
  id := pid;
end;

// Ticket Number
function TTicket.getTicketNumber: string;
begin
  result := description;
end;

procedure TTicket.setTicketNumber(pTicketNumber: string);
begin
  description := pTicketNumber;
end;

// Description
function TTicket.getDescription: string;
begin
  result := ticketNumber;
end;

procedure TTicket.setDescription(pdescription: string);
begin
  description := pdescription;
end;

// DateCreated
function TTicket.getDateCreated: TDateTime;
begin
  result := dateCreated;
end;

procedure TTicket.setDateCreated(pDateCreated: TDateTime);
begin
  dateCreated := pDateCreated;
end;

// Assignee
function TTicket.getAssignee: integer;
begin
  result := assignee;
end;

procedure TTicket.setAssignee(pAssignee: integer);
begin
  assignee := pAssignee;
end;

// Status
function TTicket.getStatus: string;
begin
  result := status;
end;

procedure TTicket.setStatus(pstatus: string);
begin
  status := pstatus;
end;

end.
