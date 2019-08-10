program matco_p;

uses
  Vcl.Forms,
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule},
  frmMatco_u in 'frmMatco_u.pas' {frmMatco},
  frmUser_u in 'user\frmUser_u.pas' {frmUser},
  User_u in 'user\User_u.pas',
  client_u in 'client\client_u.pas',
  frmClient_u in 'client\frmClient_u.pas' {frmClient},
  frmProjectTicket_u in 'project_ticket\frmProjectTicket_u.pas' {frmProjectTicket},
  ProjectTicket_u in 'project_ticket\ProjectTicket_u.pas',
  frmProject_u in 'project\frmProject_u.pas' {frmProject},
  project_u in 'project\project_u.pas',
  frmTicket_u in 'ticket\frmTicket_u.pas' {frmTicket},
  Ticket_u in 'ticket\Ticket_u.pas';

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

