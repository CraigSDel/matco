program matco_p;

uses
  Vcl.Forms,
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule} ,
  frmMatco_u in 'frmMatco_u.pas' {frmMatco} ,
  User_u in 'user\User_u.pas',
  client_u in 'client\client_u.pas',
  ProjectTicket_u in 'project_ticket\ProjectTicket_u.pas',
  project_u in 'project\project_u.pas',
  Ticket_u in 'ticket\Ticket_u.pas',
  frmClient_u in 'client\frmClient_u.pas' {frmClient} ,
  frmProjectTicket_u
    in 'project_ticket\frmProjectTicket_u.pas' {frmProjectTicket} ,
  frmProject_u in 'project\frmProject_u.pas' {frmProject} ,
  frmTicket_u in 'ticket\frmTicket_u.pas' {frmTicket} ,
  frmUser_u in 'user\frmUser_u.pas' {frmUser} ,
  util_u in 'util_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMatco, frmMatco);
  Application.CreateForm(TDMMatco, DMMatco);
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(TfrmProject, frmProject);
  Application.Run;

end.
