unit frmTicket_u;

// Craig Stroberg
// 70854
// Ticket form allows the user to interact with the data
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Ticket_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask,
  System.RegularExpressions;

type
  TfrmTicket = class(TForm)
    DBEditTicketDescription: TDBEdit;
    DBEditTicketNumber: TDBEdit;
    DBTextTicketID: TDBText;
    lblTicketID: TLabel;
    lblTicketDescription: TLabel;
    lblTicketNumber: TLabel;
    DBLookupComboBoxTicketAssignee: TDBLookupComboBox;
    lblDateCreated: TLabel;
    lblAssignee: TLabel;
    BitBtnTicketOk: TBitBtn;
    BitBtnTicketCancel: TBitBtn;
    DBLookupComboBoxStatus: TDBLookupComboBox;
    lblStatus: TLabel;
    DBEditTicketCreatedDate: TDBEdit;
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
  buttonSelected: Integer;
  regexpr: TRegEx;
  match: TMatch;
  group: TGroup;
  i: Integer;
begin
  // Show a confirmation dialog

  regexpr := TRegEx.Create
    ('^([2][0]\d{2}\/([0]\d|[1][0-2])\/([0-2]\d|[3][0-1]))'+
    '$|^([2][0]\d{2}\/([0]\d|[1][0-2])\/([0-2]\d|[3][0-1])\s([0-1]\d|[2][0-3])'+
    '\:[0-5]\d\:[0-5]\d)$',
    [roIgnoreCase, roMultiline]);
  match := regexpr.match(DBEditTicketCreatedDate.Text);
  if match.Success = True then
  begin
    buttonSelected :=
      messagedlg('Are you sure you want to complete this action?', mtCustom,
      mbOKCancel, 0);
    if buttonSelected = mrOK then
    begin

    try
      DMMatco.tblTicket.Post;
      ShowMessage('Saved! Please refresh the data');
    except
      on E: Exception do
      begin
        ShowMessage('Unable to save');
        DMMatco.tblTicket.CancelUpdates;
      end;
    end;
    end
  end
  else
  begin
    ShowMessage('Date is in the incorrect format yyyy/mm/dd e.g. 2019/03/31');
  end;
end;

end.
