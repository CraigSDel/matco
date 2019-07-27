unit frmClient_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Client_u, ClientService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmClient = class(TForm)
    MatcoMainMenu: TMainMenu;
    Description: TLabel;
    create: TButton;
    edtFullname: TEdit;
    Client1: TMenuItem;
    Client2: TMenuItem;
    lblClient: TLabel;
    btnFindClient: TButton;
    spnEdtClientID: TSpinEdit;
    dbgClient: TDBGrid;
    procedure createClick(Sender: TObject);
    procedure Client1Click(Sender: TObject);
    procedure Client2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFindClientClick(Sender: TObject);
  private
    ClientService: TClientService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation

{$R *.dfm}
uses frmMatco_u;

procedure TfrmClient.btnFindClientClick(Sender: TObject);
var
  Client: TClient;
begin
  Client := ClientService.findById(spnEdtClientID.Value);
end;

procedure TfrmClient.createClick(Sender: TObject);
var
  Client: TClient;
begin
  Client := TClient.create;
  Client.setClientName(edtFullname.Text);
  ClientService.save(Client);
end;

procedure TfrmClient.FormCreate(Sender: TObject);
begin

  ClientService := TClientService.create;
end;

procedure TfrmClient.Client1Click(Sender: TObject);
begin
  frmMatco.Show;
  frmClient.Hide;
end;

procedure TfrmClient.Client2Click(Sender: TObject);
begin
  frmMatco.Hide;
  frmClient.Show;
end;

end.
