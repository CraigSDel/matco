unit frmClient_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Client_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

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
uses frmMatco_u;

procedure TfrmClient.BitBtnSaveClick(Sender: TObject);
begin
   DMMatco.tblClient.Post;
end;

procedure TfrmClient.BitBtnCancelClick(Sender: TObject);
begin
   DMMatco.tblClient.Cancel;
end;

end.
