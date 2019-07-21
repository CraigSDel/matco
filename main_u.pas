unit Main_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Ticket_u, TicketService_u;

type
    TMatcoForm = class(TForm)
    create: TButton;
    Description: TLabel;
    RoleEdit: TEdit;
    procedure createClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ticketService:TTicketService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatcoForm: TMatcoForm;

implementation

{$R *.dfm}

procedure TMatcoForm.createClick(Sender: TObject);
var
  ticket:TTicket;
begin
  ticket := TTicket.create();
  ticket.setDescription(RoleEdit.Text);
  ticketService.save(ticket);
end;

procedure TMatcoForm.FormCreate(Sender: TObject);
begin
    ticketService := TTicketService.Create;
end;

end.
