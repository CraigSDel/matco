unit frmClient_u;
//Craig Stroberg
//70854
//Client form allows the user to interact with the data
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Client_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
    TfrmClient = class(TForm)
    Description: TLabel;
    BitBtnSave: TBitBtn;
    BitBtnCancel: TBitBtn;
    DBEditName: TDBEdit;
    Client: TLabel;
    lblContactPerson: TLabel;
    DBEditContactPerson: TDBEdit;
    lblEmail: TLabel;
    DBEditEmail: TDBEdit;
    lblPhoneNumber: TLabel;
    DBEditPhoneNumber: TDBEdit;
    DBTextClientID: TDBText;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation

{$R *.dfm}
uses frmMatco_u, util_u, dmMatco_u;

procedure TfrmClient.BitBtnSaveClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Show a confirmation dialog
  if (DBEditName.GetTextLen > 0)
    and (DBEditContactPerson.GetTextLen > 0)
    and (DBEditEmail.GetTextLen > 0)
    and (DBEditPhoneNumber.GetTextLen > 0)
    and  not (util.isNumber(DBEditName.Text))
    and  not (util.isNumber(DBEditContactPerson.Text))
    and (util.isNumber(DBEditPhoneNumber.Text))
    and (util.isValidEmail(DBEditEmail.Text)) then
  begin
    buttonSelected := messagedlg('Are you sure you want to complete this action?',mtWarning, mbOKCancel, 0);
    // Show the button type selected
    if buttonSelected = mrOK then
      begin
        DMMatco.tblClient.Post;
        ShowMessage('Submitted');
      end;

    if buttonSelected = mrCancel then
    begin
      DMMatco.tblClient.Cancel;
    end
  end
  else
  begin
    DMMatco.tblClient.Cancel;
    MessageDlg('The data entered in is incorrect ensure that the person name does not contatin numbers and that the phone number does not include non numerical characters', mtError, mbOKCancel,0);
  end
end;

procedure TfrmClient.BitBtnCancelClick(Sender: TObject);
begin
   DMMatco.tblClient.Cancel;
end;
end.
