unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Menus, Ticket_u, TicketService_u, UserService_u, User_u, frmUser_u;

type
    TfrmMatco = class(TForm)
    MatcoMainMenu: TMainMenu;
    User1: TMenuItem;
    User2: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
