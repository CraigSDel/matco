unit frmTicket_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Ticket_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmTicket = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTicket: TfrmTicket;

implementation

{$R *.dfm}

end.
