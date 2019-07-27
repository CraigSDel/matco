unit frmTicket_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Ticket_u, TicketService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmTicket = class(TForm)
    MatcoMainMenu: TMainMenu;
    Description: TLabel;
    create: TButton;
    edtFullname: TEdit;
    Home: TMenuItem;
    lblTicket: TLabel;
    btnFindTicket: TButton;
    spnEdtTicketID: TSpinEdit;
    DBGrid1: TDBGrid;
    procedure createClick(Sender: TObject);
    procedure HomeClick(Sender: TObject);
    procedure Ticket2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFindTicketClick(Sender: TObject);
  private
    TicketService: TTicketService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTicket: TfrmTicket;

implementation

{$R *.dfm}
uses frmMatco_u;

procedure TfrmTicket.btnFindTicketClick(Sender: TObject);
var
  Ticket: TTicket;
begin
  Ticket := TicketService.findById(spnEdtTicketID.Value);
end;

procedure TfrmTicket.createClick(Sender: TObject);
var
  Ticket: TTicket;
begin
  Ticket := TTicket.create;
  Ticket.setDescription(edtFullname.Text);
  TicketService.save(Ticket);
end;

procedure TfrmTicket.FormCreate(Sender: TObject);
begin

  TicketService := TTicketService.create;
end;

procedure TfrmTicket.HomeClick(Sender: TObject);
begin
  frmMatco.Show;
  frmTicket.Hide;
end;

procedure TfrmTicket.Ticket2Click(Sender: TObject);
begin
  frmMatco.Hide;
  frmTicket.Show;
end;

end.
