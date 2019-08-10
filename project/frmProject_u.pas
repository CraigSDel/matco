unit frmProject_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Project_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
    TfrmProject = class(TForm)
    DBTextProjectID: TDBText;
    DBEdit1: TDBEdit;
    DBEditProjectName: TDBEdit;
    projectID: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnProjectOk: TBitBtn;
    BitBtnProjectCancel: TBitBtn;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProject: TfrmProject;

implementation

{$R *.dfm}
uses frmMatco_u;

procedure TfrmProject.BitBtnSaveClick(Sender: TObject);
begin
   DMMatco.tblProject.Post;
end;

procedure TfrmProject.BitBtnCancelClick(Sender: TObject);
begin
   DMMatco.tblProject.Cancel;
end;

end.
