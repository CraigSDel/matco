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
    tblTicket.Open;
    tblTicket.Insert;
    tblTicket['id'] := ticket.getId;
    tblTicket['ticket_number'] := ticket.getId;
    tblTicket['description'] := ticket.getDescription;
    tblTicket['date_created'] := ticket.getDateCreated;
    tblTicket['assignee'] := ticket.getAssignee;
    tblTicket['status'] := ticket.getStatus;
    tblTicket.Post;
    tblTicket.Close;
  end;
end;

end.
