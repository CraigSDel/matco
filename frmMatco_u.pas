unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, User_u, UserService_u, frmUser_u,
  frmClient_u, frmProject_u, frmProjectTicket_u, frmTicket_u;

type
  TfrmMatco = class(TForm)
    MatcoMainMenu: TMainMenu;
    Ticket: TMenuItem;
    User: TMenuItem;
    Client: TMenuItem;
    ProjectTicket: TMenuItem;
    Project: TMenuItem;
    Home: TMenuItem;
    procedure TicketClick(Sender: TObject);
    procedure UserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientClick(Sender: TObject);
    procedure ProjectTicketClick(Sender: TObject);
    procedure ProjectClick(Sender: TObject);
    procedure HomeClick(Sender: TObject);
  private
    userService: TUserService;
    procedure ChangeScreen(screenName: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatco: TfrmMatco;

implementation

{$R *.dfm}

procedure TfrmMatco.ChangeScreen(screenName: integer);
begin
  frmClient.Hide;
  frmProject.Hide;
  frmProjectTicket.Hide;
  frmTicket.Hide;
  frmUser.Hide;
  frmMatco.Hide;

  Case screenName of
    0:
      frmClient.Show;
    1:
      frmProject.Show;
    2:
      frmProjectTicket.Show;
    3:
      frmTicket.Show;
    4:
      frmUser.Show;
    5:
      frmMatco.Show;
  else
    frmMatco.Show;
  end;
end;

procedure TfrmMatco.FormCreate(Sender: TObject);
begin
  userService := TUserService.create;
end;

procedure TfrmMatco.ClientClick(Sender: TObject);
begin
  ChangeScreen(0);
end;

procedure TfrmMatco.ProjectClick(Sender: TObject);
begin
  ChangeScreen(1);
end;

procedure TfrmMatco.ProjectTicketClick(Sender: TObject);
begin
  ChangeScreen(2);
end;

procedure TfrmMatco.TicketClick(Sender: TObject);
begin
  ChangeScreen(3);
end;

procedure TfrmMatco.UserClick(Sender: TObject);
begin
  ChangeScreen(4);
end;

procedure TfrmMatco.HomeClick(Sender: TObject);
begin
  ChangeScreen(5);
end;

end.
