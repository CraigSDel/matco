program matco_p;

uses
  Vcl.Forms,
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule},
  UserResource_u in 'user\UserResource_u.pas',
  UserService_u in 'user\UserService_u.pas',
  frmMatco_u in 'frmMatco_u.pas' {frmMatco},
  frmUser_u in 'user\frmUser_u.pas' {frmUser},
  User_u in 'user\User_u.pas',
  client_u in 'client\client_u.pas',
  ClientResource_u in 'client\ClientResource_u.pas',
  ClientService_u in 'client\ClientService_u.pas',
  frmClient_u in 'client\frmClient_u.pas' {frmClient},
  frmProjectTicket_u in 'project_ticket\frmProjectTicket_u.pas' {frmProjectTicket},
  ProjectTicket_u in 'project_ticket\ProjectTicket_u.pas',
  ProjectTicketResource_u in 'project_ticket\ProjectTicketResource_u.pas',
  ProjectTicketService_u in 'project_ticket\ProjectTicketService_u.pas',
  frmProject_u in 'project\frmProject_u.pas' {frmProject},
  project_u in 'project\project_u.pas',
  ProjectResource_u in 'project\ProjectResource_u.pas',
  ProjectService_u in 'project\ProjectService_u.pas',
  frmTicket_u in 'ticket\frmTicket_u.pas' {frmTicket},
  Ticket_u in 'ticket\Ticket_u.pas',
  TicketResource_u in 'ticket\TicketResource_u.pas',
  TicketService_u in 'ticket\TicketService_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMatco, frmMatco);
  Application.CreateForm(TDMMatco, DMMatco);
  Application.CreateForm(TfrmUser, frmUser);
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(TfrmProject, frmProject);
  Application.CreateForm(TfrmProjectTicket, frmProjectTicket);
  Application.CreateForm(TfrmProjectTicket, frmProjectTicket);
  Application.CreateForm(TfrmProject, frmProject);
  Application.CreateForm(TfrmTicket, frmTicket);
  Application.Run;
end.

