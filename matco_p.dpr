program matco_p;

uses
  Vcl.Forms,
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule},
  Ticket_u in 'ticket\Ticket_u.pas',
  TicketService_u in 'ticket\TicketService_u.pas',
  TicketResource_u in 'ticket\TicketResource_u.pas',
  UserResource_u in 'user\UserResource_u.pas',
  UserService_u in 'user\UserService_u.pas',
  frmMatco_u in 'frmMatco_u.pas' {frmMatco},
  frmUser_u in 'user\frmUser_u.pas' {frmUser},
  user_u in 'user\user_u.pas',
  client_u in 'client\client_u.pas',
  ClientResource_u in 'client\ClientResource_u.pas',
  ClientService_u in 'client\ClientService_u.pas',
  frmClient_u in 'client\frmClient_u.pas' {frmClient},
  frmProject_u in 'project\frmProject_u.pas' {frmProject},
  project_u in 'project\project_u.pas',
  ProjectResource_u in 'project\ProjectResource_u.pas',
  ProjectService_u in 'project\ProjectService_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMatco, frmMatco);
  Application.CreateForm(TDMMatco, DMMatco);
  Application.CreateForm(TfrmUser, frmUser);
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(TfrmProject, frmProject);
  Application.Run;
end.

