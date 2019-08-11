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
    procedure BitBtnTicketOkClick(Sender: TObject);
    procedure BitBtnTicketCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTicket: TfrmTicket;

implementation

{$R *.dfm}


procedure TfrmTicket.BitBtnTicketCancelClick(Sender: TObject);
begin
  DMMatco.tblTicket.Cancel;
end;

procedure TfrmTicket.BitBtnTicketOkClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblTicket.Post;
    ShowMessage('Submitted');
  end;
end;

end.
