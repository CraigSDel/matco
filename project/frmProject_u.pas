unit frmProject_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Project_u, ProjectService_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u;

type
    TfrmProject = class(TForm)
    MatcoMainMenu: TMainMenu;
    Description: TLabel;
    create: TButton;
    edtFullname: TEdit;
    Home: TMenuItem;
    lblProject: TLabel;
    btnFindProject: TButton;
    spnEdtProjectID: TSpinEdit;
    DBGrid1: TDBGrid;
    procedure createClick(Sender: TObject);
    procedure HomeClick(Sender: TObject);
    procedure Project2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFindProjectClick(Sender: TObject);
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

procedure TfrmProject.btnFindProjectClick(Sender: TObject);
var
  Project: TProject;
begin
  Project := ProjectService.findById(spnEdtProjectID.Value);
end;

procedure TfrmProject.createClick(Sender: TObject);
var
  Project: TProject;
begin
  Project := TProject.create;
  Project.setFullname(edtFullname.Text);
  ProjectService.save(Project);
end;

procedure TfrmProject.FormCreate(Sender: TObject);
begin

  ProjectService := TProjectService.create;
end;

procedure TfrmProject.HomeClick(Sender: TObject);
begin
  frmMatco.Show;
  frmProject.Hide;
end;

procedure TfrmProject.Project2Click(Sender: TObject);
begin
  frmMatco.Hide;
  frmProject.Show;
end;

end.
