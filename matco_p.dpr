program matco_p;

uses
  Vcl.Forms,
  main_u in 'main_u.pas' {Matco},
  Role_u in 'role\Role_u.pas',
  dmMatco_u in 'dmMatco_u.pas' {DMMatco: TDataModule},
  RoleService_u in 'role\RoleService_u.pas',
  RoleResource_u in 'role\RoleResource_u.pas',
  Ticket_u in 'ticket\Ticket_u.pas',
  TicketService_u in 'ticket\TicketService_u.pas',
  TicketResource_u in 'ticket\TicketResource_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMatcoForm, MatcoForm);
  Application.CreateForm(TDMMatco, DMMatco);
  Application.Run;
end.