unit frmProjectTicket_u;
//Craig Stroberg
//70854
//Project Ticket form allows the user to interact with the data

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, ProjectTicket_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmProjectTicket = class(TForm)
    BitBtnProjectTicketInsert: TBitBtn;
    BitBtnProjectTicketCancel: TBitBtn;
    lblProjectTicketID: TLabel;
    lblClient: TLabel;
    DBLookupComboBoxProjectID: TDBLookupComboBox;
    DBLookupComboBoxTicketID: TDBLookupComboBox;
    procedure BitBtnProjectTicketInsertClick(Sender: TObject);
    procedure BitBtnProjectTicketCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjectTicket: TfrmProjectTicket;

implementation

{$R *.dfm}

procedure TfrmProjectTicket.BitBtnProjectTicketInsertClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblProjectTicket.Post;
    ShowMessage('Submitted');
  end;
end;

procedure TfrmProjectTicket.BitBtnProjectTicketCancelClick(Sender: TObject);
begin
   DMMatco.tblProjectTicket.Cancel;
end;

end.
