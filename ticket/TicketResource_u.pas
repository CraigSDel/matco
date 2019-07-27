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
    function findById(id: integer): TTicket;
  end;

implementation

function TTicketResource.findById(id: integer): TTicket;
var
  Ticket: TTicket;
begin
  Ticket := TTicket.create;
  with DMMatco do
  begin
    tblTicket.Open;
    tblTicket.First;
    while not tblTicket.Eof do
    begin
      if tblTicket['id'] = id then
      begin
        Ticket.setId(tblProject['id']);
        Ticket.setTicketNumber(tblProject['description']);
        result := Ticket;
      end
      else
        tblProject.Next;
    end;
  end;
end;

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
