unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, User_u, UserService_u, frmUser_u,
  frmClient_u, frmProject_u, frmProjectTicket_u, frmTicket_u, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
  TfrmMatco = class(TForm)
    Matco: TPageControl;
    ProejctTicket: TTabSheet;
    Client: TTabSheet;
    dbgClient: TDBGrid;
    DBGridProjectTicket: TDBGrid;
    Panel2: TPanel;
    BitBtnInsertClient: TBitBtn;
    BitBtnEditClient: TBitBtn;
    BitBtnDeleteClient: TBitBtn;
    Panel1: TPanel;
    BitBtnInsertProjectTicket: TBitBtn;
    BitBtnEditProjectTicket: TBitBtn;
    BitBtnDeleteProjectTicket: TBitBtn;
    Project: TTabSheet;
    TabSheetTicket: TTabSheet;
    User: TTabSheet;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtnInsertUser: TBitBtn;
    BitBtnEditUser: TBitBtn;
    BitBtnDeleteUser: TBitBtn;
    Panel4: TPanel;
    BitBtnInsertProject: TBitBtn;
    BitBtnEditProject: TBitBtn;
    BitBtnDeleteProject: TBitBtn;
    Panel5: TPanel;
    BitBtnInsertTicket: TBitBtn;
    BitBtnEditTicket: TBitBtn;
    BitBtnDeleteTicket: TBitBtn;
    MatcoMainMenu: TMainMenu;
    Home: TMenuItem;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnInsertClientClick(Sender: TObject);
    procedure BitBtnEditClientClick(Sender: TObject);
    procedure BitBtnDeleteClientClick(Sender: TObject);
  private
    userService: TUserService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatco: TfrmMatco;

implementation

{$R *.dfm}

procedure TfrmMatco.BitBtnEditClientClick(Sender: TObject);
begin
  DMMatco.tblClient.Edit;
  frmClient := TfrmClient.Create(owner);
  frmClient.ShowModal;
end;

procedure TfrmMatco.BitBtnDeleteClientClick(Sender: TObject);
begin
  DMMatco.tblClient.Delete;
  frmClient := TfrmClient.Create(owner);
  frmProjectTicket.ShowModal;
end;

procedure TfrmMatco.BitBtnInsertClientClick(Sender: TObject);
begin
  DMMatco.tblClient.Insert;
  frmClient := TfrmClient.Create(owner);
  frmClient.ShowModal;
end;

procedure TfrmMatco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmMatco.FormCreate(Sender: TObject);
begin
  userService := TUserService.Create;
end;

end.
