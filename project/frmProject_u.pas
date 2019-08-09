unit frmProject_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Project_u, ProjectService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
    TfrmProject = class(TForm)
    CleintID: TLabel;
    BitBtnSave: TBitBtn;
    BitBtnCancel: TBitBtn;
    Client: TLabel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    ProjectService: TProjectService;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProject: TfrmProject;

implementation

{$R *.dfm}
uses frmMatco_u;

procedure TfrmProject.FormCreate(Sender: TObject);
begin
  ProjectService := TProjectService.create;
end;
procedure TfrmProject.BitBtnSaveClick(Sender: TObject);
begin
   DMMatco.tblClient.Post;
end;

procedure TfrmProject.BitBtnCancelClick(Sender: TObject);
begin
   DMMatco.tblClient.Cancel;
end;

end.
