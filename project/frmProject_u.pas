unit frmProject_u;

// Craig Stroberg
// 70854
// Project form allows the user to interact with the data
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Project_u, Vcl.Samples.Spin,
  Vcl.Grids, Vcl.DBGrids, dmMatco_u, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TfrmProject = class(TForm)
    DBTextProjectID: TDBText;
    DBEditProjectName: TDBEdit;
    projectID: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnProjectOk: TBitBtn;
    BitBtnProjectCancel: TBitBtn;
    DBLookupComboBoxClientId: TDBLookupComboBox;
    procedure BitBtnProjectOkClick(Sender: TObject);
    procedure BitBtnProjectCancelClick(Sender: TObject);
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

procedure TfrmProject.BitBtnProjectCancelClick(Sender: TObject);
begin
  DMMatco.tblProject.Cancel;
end;

procedure TfrmProject.BitBtnProjectOkClick(Sender: TObject);
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
      DMMatco.tblProject.Post;
      ShowMessage('Saved! Please refresh the data');
    except
      on E: Exception do
      begin
        ShowMessage('Unable to save');
        DMMatco.tblProject.CancelUpdates;
      end;
    end;

  end;
end;

end.
