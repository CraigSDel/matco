program matco_p;

uses
  Vcl.Forms,
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule},
  Ticket_u in 'ticket\Ticket_u.pas',
  TicketService_u in 'ticket\TicketService_u.pas',
  TicketResource_u in 'ticket\TicketResource_u.pas',
  UserResource_u in 'user\UserResource_u.pas',
  UserService_u in 'user\UserService_u.pas',
  User_u in 'user\User_u.pas',
  frmUser_u in 'user\frmUser_u.pas' {frmUser},
  frmMatco_u in 'frmMatco_u.pas' {frmMatco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMatco, TfrmMatco);
  Application.CreateForm(TDMMatco, DMMatco);
  Application.CreateForm(TfrmUser, TfrmUser);
  Application.Run;
end.

