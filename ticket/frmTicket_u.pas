unit frmTicket_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Ticket_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
    TfrmTicket = class(TForm)
    DBEditTicketDescription: TDBEdit;
    DBEditTicketNumber: TDBEdit;
    DBTextTicketID: TDBText;
    lblTicketID: TLabel;
    lblTicketDescription: TLabel;
    lblTicketNumber: TLabel;
    DBLookupComboBoxTicketAssignee: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    lblDateCreated: TLabel;
    lblAssignee: TLabel;
    BitBtnTicketOk: TBitBtn;
    BitBtnTicketCancel: TBitBtn;
    DBLookupComboBoxStatus: TDBLookupComboBox;
    lblStatus: TLabel;
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
