unit frmProjectTicket_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, ProjectTicket_u, ProjectTicketService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmProjectTicket = class(TForm)
    MatcoMainMenu: TMainMenu;
    Description: TLabel;
    create: TButton;
    edtFullname: TEdit;
    Home: TMenuItem;
    lblProjectTicket: TLabel;
    btnFindProjectTicket: TButton;
    spnEdtProjectTicketID: TSpinEdit;
    DBGridProjectTicket: TDBGrid;
    procedure createClick(Sender: TObject);
    procedure HomeClick(Sender: TObject);
    procedure ProjectTicket2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFindProjectTicketClick(Sender: TObject);
  private
    ProjectTicketService: TProjectTicketService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjectTicket: TfrmProjectTicket;

implementation

{$R *.dfm}
uses frmMatco_u;

procedure TfrmProjectTicket.btnFindProjectTicketClick(Sender: TObject);
var
  ProjectTicket: TProjectTicket;
begin
  ProjectTicket := ProjectTicketService.findById(spnEdtProjectTicketID.Value);
end;

procedure TfrmProjectTicket.createClick(Sender: TObject);
var
  ProjectTicket: TProjectTicket;
begin
  ProjectTicket := TProjectTicket.create;
  //ProjectTicket.getProjectId(edtFullname.Text);
  ProjectTicketService.save(ProjectTicket);
end;

procedure TfrmProjectTicket.FormCreate(Sender: TObject);
begin

  ProjectTicketService := TProjectTicketService.create;
end;

procedure TfrmProjectTicket.HomeClick(Sender: TObject);
begin
  frmMatco.Show;
  frmProjectTicket.Hide;
end;

procedure TfrmProjectTicket.ProjectTicket2Click(Sender: TObject);
begin
  frmMatco.Hide;
  frmProjectTicket.Show;
end;

end.
