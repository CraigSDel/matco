unit TicketResource_u;

interface

uses
  DMMatco_u, Ticket_u;

type
  TTicketResource = class
  private
    { Private declarations }
  public
    { Public declarations }
    procedure save(ticket: TTicket);
  end;

implementation

procedure TTicketResource.save(ticket: TTicket);
begin
  with DMMatco do
  begin
    TicketTable.Open;
    TicketTable.Insert;
    TicketTable['id'] := ticket.getId;
    TicketTable['ticket_number'] := ticket.getId;
    TicketTable['description'] := ticket.getDescription;
    TicketTable['date_created'] := ticket.getDateCreated;
    TicketTable['assignee'] := ticket.getAssignee;
    TicketTable['status'] := ticket.getStatus;
    TicketTable.Post;
    TicketTable.Close;
  end;
end;

end.
