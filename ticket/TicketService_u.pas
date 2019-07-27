unit TicketService_u;

interface

uses
  Ticket_u, TicketResource_u;

type
  TTicketService = class
  private
    { Private declarations }
    ticketResource: TTicketResource;
  public
    { Public declarations }
    constructor create;
    procedure save(ticket: TTicket);
    function findById(pId: integer): TTicket;
  end;

implementation

constructor TTicketService.create;
begin
  ticketResource := TTicketResource.create;
end;

function TTicketService.findById(pId: integer): TTicket;
begin
  result := ticketResource.findById(pId);
end;

procedure TTicketService.save(ticket: TTicket);
begin
  ticketResource.save(ticket);
end;

end.
