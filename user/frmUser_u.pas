unit frmUser_u;

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
   DMMatco.tblProjectTicket.Cancel;
end;

procedure TfrmUser.BitBtnUserOkClick(Sender: TObject);
begin
   DMMatco.tblProjectTicket.Post;
end;

end.
