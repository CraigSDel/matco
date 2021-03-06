unit frmUser_u;

// Craig Stroberg
// 70854
// Ticket form allows the user to interact with the data
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, User_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmUser = class(TForm)
    DBTextUserID: TDBText;
    lblUserID: TLabel;
    DBEditUserFullname: TDBEdit;
    lblUserName: TLabel;
    BitBtnUserOk: TBitBtn;
    BitBtnUserCancel: TBitBtn;
    procedure BitBtnUserOkClick(Sender: TObject);
    procedure BitBtnUserCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

procedure TfrmUser.BitBtnUserCancelClick(Sender: TObject);
begin
  DMMatco.tblUser.Cancel;
end;

procedure TfrmUser.BitBtnUserOkClick(Sender: TObject);
var
  buttonSelected: Integer;
begin
  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',
    mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin

   try
      DMMatco.tblUser.Post;
      ShowMessage('Saved! Please refresh the data');
    except
      on E: Exception do
      begin
        ShowMessage('Unable to save');
        DMMatco.tblUser.CancelUpdates;
      end;
    end;
  end;
end;

end.
