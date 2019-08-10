unit frmProjectTicket_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, ProjectTicket_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmProjectTicket = class(TForm)
    BitBtnProjectTicketInsert: TBitBtn;
    BitBtn2: TBitBtn;
    lblProjectTicketID: TLabel;
    lblClient: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupListBox1: TDBLookupListBox;
    procedure BitBtnProjectTicketInsertClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
begin
   DMMatco.tblProjectTicket.Post;
end;

procedure TfrmProjectTicket.BitBtn2Click(Sender: TObject);
begin
   DMMatco.tblProjectTicket.Cancel;
end;

end.
