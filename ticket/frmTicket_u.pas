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
    create: TButton;
    edtNumber: TEdit;
    Home: TMenuItem;
    lblTicket: TLabel;
    spnEdtTicketID: TSpinEdit;
    Number: TLabel;
    btnFindTicket: TButton;
    Description: TLabel;
    cmbAssignee: TComboBox;
    edtDescription: TEdit;
    Label1: TLabel;
    cmbStatus: TComboBox;
    Label2: TLabel;
    DBGridTicket: TDBGrid;
    procedure createClick(Sender: TObject);
    procedure HomeClick(Sender: TObject);
    procedure Ticket2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFindTicketClick(Sender: TObject);
  private
    TicketService: TTicketService;
    Status : array[0..2] of string;
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
  Ticket.setDescription(edtDescription.Text);
  Ticket.setTicketNumber(edtNumber.Text);
  TicketService.save(Ticket);
end;

procedure TfrmTicket.FormCreate(Sender: TObject);
var
  i: integer;
begin
  TicketService := TTicketService.create;
  Status[0] := 'TODO';
  Status[1] := 'In Progress';
  Status[2] := 'Done';

  for i := 0 to Length(Status) -1 do
     cmbStatus.Items.Add(Status[i]);
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
