unit frmMatco_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DB, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmMatco = class(TForm)
    Matco: TPageControl;
    ProjectTicket: TTabSheet;
    Client: TTabSheet;
    dbgClient: TDBGrid;
    dbgProjectTicket: TDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    Project: TTabSheet;
    TabSheetTicket: TTabSheet;
    User: TTabSheet;
    dbgProject: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    MatcoMainMenu: TMainMenu;
    Home: TMenuItem;
    dgbUser: TDBGrid;
    dbgTicket: TDBGrid;
    BitBtnProjectTicketInsert: TBitBtn;
    BitBtnProjectTicketEdit: TBitBtn;
    BitBtnProjectTicketDelete: TBitBtn;
    BitBtnUserInsert: TBitBtn;
    BitBtnTicketEdit: TBitBtn;
    BitBtnClientInsert: TBitBtn;
    BitBtnClientEdit: TBitBtn;
    BitBtnClientDelete: TBitBtn;
    BitBtnTicketInsert: TBitBtn;
    BitBtnTicketDelete: TBitBtn;
    BitBtnProjectDelete: TBitBtn;
    BitBtnUserEdit: TBitBtn;
    BitBtnUserDelete: TBitBtn;
    BitBtnProjectEdit: TBitBtn;
    BitBtnProjectInsert: TBitBtn;
    Notes: TTabSheet;
    reNotes: TRichEdit;
    Panel6: TPanel;
    BitBtnNotesSave: TBitBtn;
    Help: TTabSheet;
    edtProjectName: TEdit;
    Label1: TLabel;
    edtTicketNumber: TEdit;
    Label2: TLabel;
    BitBtnProjectTicketSearch: TBitBtn;
    BitBtnSum: TBitBtn;
    cmbStatus: TComboBox;
    BitBtnSearchByStatus: TBitBtn;
    Refresh1: TMenuItem;
    MemoHelp: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnProjectTicketInsertClick(Sender: TObject);
    procedure BitBtnProjectTicketEditClick(Sender: TObject);
    procedure BitBtnProjectTicketDeleteClick(Sender: TObject);
    procedure BitBtnClientInsertClick(Sender: TObject);
    procedure BitBtnClientEditClick(Sender: TObject);
    procedure BitBtnClientDeleteClick(Sender: TObject);
    procedure BitBtnProjectDeleteClick(Sender: TObject);
    procedure BitBtnProjectInsertClick(Sender: TObject);
    procedure BitBtnProjectEditClick(Sender: TObject);
    procedure BitBtnTicketInsertClick(Sender: TObject);
    procedure BitBtnTicketEditClick(Sender: TObject);
    procedure BitBtnTicketDeleteClick(Sender: TObject);
    procedure BitBtnUserInsertClick(Sender: TObject);
    procedure BitBtnUserEditClick(Sender: TObject);
    procedure BitBtnUserDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnNotesSaveClick(Sender: TObject);
    procedure BitBtnProjectTicketSearchClick(Sender: TObject);
    procedure BitBtnSumClick(Sender: TObject);
    procedure BitBtnSearchByStatusClick(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
  private
    myFile: TextFile;
    text: string;
    buttonSelected: Integer;
    function NotesRead(sName: string): string;
    procedure NotesSave(sName: string);
    procedure MatcoQuery(sQuery: string);
    procedure refreshDataSets();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatco: TfrmMatco;

implementation

{$R *.dfm}

uses dmMatco_u, frmClient_u, frmProjectTicket_u, frmProject_u, frmTicket_u,
  frmUser_u;

// Project Ticket
procedure TfrmMatco.BitBtnProjectTicketDeleteClick(Sender: TObject);
begin
  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',
    mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblProjectTicket.Delete;
    ShowMessage('Deleted');
  end;
end;

procedure TfrmMatco.BitBtnProjectTicketEditClick(Sender: TObject);
begin
  DMMatco.tblProjectTicket.Edit;
  frmProjectTicket := TfrmProjectTicket.Create(owner);
  frmProjectTicket.ShowModal;
end;

procedure TfrmMatco.BitBtnProjectTicketInsertClick(Sender: TObject);
begin
  DMMatco.tblProjectTicket.Insert;
  frmProjectTicket := TfrmProjectTicket.Create(owner);
  frmProjectTicket.ShowModal;
end;

procedure TfrmMatco.BitBtnProjectTicketSearchClick(Sender: TObject);
var
  sQuery: string;
begin

  // If the user has not entered a ticket number then query on the project name
  if (edtTicketNumber.GetTextLen = 0) AND (edtProjectName.GetTextLen > 0) then
  begin
    sQuery := 'SELECT project.project_name, ticket.ticket_number';
    sQuery := sQuery +
      ' FROM ticket INNER JOIN (project INNER JOIN project_tickets ON project.id = project_tickets.project_id) ON ticket.id = project_tickets.ticket_id';
    sQuery := sQuery + ' WHERE (((project.project_name) LIKE "%' +
      edtProjectName.text + '%"))';
    sQuery := sQuery + ' ORDER BY ticket.ticket_number, project.project_name;';
    MatcoQuery(sQuery);
  end;

  // If the user has not entered a project name then query on the ticket number
  if (edtTicketNumber.GetTextLen > 0) AND (edtProjectName.GetTextLen = 0) then
  begin
    sQuery := 'SELECT project.project_name, ticket.ticket_number';
    sQuery := sQuery +
      ' FROM ticket INNER JOIN (project INNER JOIN project_tickets ON project.id = project_tickets.project_id) ON ticket.id = project_tickets.ticket_id';
    sQuery := sQuery + ' WHERE (((ticket.ticket_number) LIKE "%' +
      edtTicketNumber.text + '%"))';
    sQuery := sQuery + ' ORDER BY ticket.ticket_number, project.project_name;';
    MatcoQuery(sQuery);
  end;

  // if the user has not entered a ticket number or a project name select everything
  if (edtTicketNumber.GetTextLen = 0) AND (edtProjectName.GetTextLen = 0) then
  begin
    sQuery := 'SELECT project.project_name, ticket.ticket_number';
    sQuery := sQuery +
      ' FROM ticket INNER JOIN (project INNER JOIN project_tickets ON project.id = project_tickets.project_id) ON ticket.id = project_tickets.ticket_id;';
    MatcoQuery(sQuery);
  end;

  // if the user has entered both a ticket number and a project name
  if (edtTicketNumber.GetTextLen > 0) AND (edtProjectName.GetTextLen > 0) then
  begin
    sQuery := 'SELECT project.project_name, ticket.ticket_number';
    sQuery := sQuery +
      ' FROM ticket INNER JOIN (project INNER JOIN project_tickets ON project.id = project_tickets.project_id) ON ticket.id = project_tickets.ticket_id';
    sQuery := sQuery + ' WHERE (((ticket.ticket_number) LIKE "%' +
      edtTicketNumber.text + '%") AND ((project.project_name) LIKE "%' +
      edtProjectName.text + '%"))';
    sQuery := sQuery + ' ORDER BY project.project_name, ticket.ticket_number;';
    MatcoQuery(sQuery);
  end;
end;

procedure TfrmMatco.BitBtnSearchByStatusClick(Sender: TObject);
var
  sQuery: string;
begin
  // Get all the tickets and the sum of tickets in a project with the selected status
  if (cmbStatus.ItemIndex <> -1) AND (edtProjectName.GetTextLen > 0) then
  begin
    sQuery := 'SELECT project.project_name, ticket.ticket_number, COUNT(project_tickets.project_id) AS NumberOfTickets';
    sQuery := sQuery +
      ' FROM status INNER JOIN (ticket INNER JOIN (project INNER JOIN project_tickets ON project.id = project_tickets.project_id) ON ticket.id = project_tickets.ticket_id) ON status.ID = ticket.status';
    sQuery := sQuery + ' WHERE (((status.description)="' + cmbStatus.text +
      '") AND ((project.project_name)="' + edtProjectName.text + '"))';
    sQuery := sQuery + ' GROUP BY project.project_name, ticket.ticket_number';
    sQuery := sQuery + ' ORDER BY project.project_name, ticket.ticket_number;';
    MatcoQuery(sQuery);
  end
  else
    ShowMessage('Please enter a project name and select a status');
end;

procedure TfrmMatco.BitBtnSumClick(Sender: TObject);
var
  sQuery: string;
begin
  // Get the sum of tickets in a project
  if (edtProjectName.GetTextLen > 0) then
  begin
    sQuery := 'SELECT project.project_name, COUNT(project_tickets.project_id) AS NumberOfTickets ';
    sQuery := sQuery +
      ' FROM ticket INNER JOIN (project INNER JOIN project_tickets ON project.id = project_tickets.project_id) ON ticket.id = project_tickets.ticket_id';
    sQuery := sQuery + ' WHERE (((project.project_name)="' +
      edtProjectName.text + '"))';
    sQuery := sQuery + ' GROUP BY project.project_name';
    sQuery := sQuery + ' ORDER BY Sum(project_tickets.project_id)';
    MatcoQuery(sQuery);
  end
  else
    ShowMessage('Please enter a project name!');
end;

// Ticket
procedure TfrmMatco.BitBtnTicketDeleteClick(Sender: TObject);
begin

  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',
    mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblTicket.Delete;
    ShowMessage('Deleted');
  end;
end;

procedure TfrmMatco.BitBtnTicketEditClick(Sender: TObject);
begin
  DMMatco.tblClient.Edit;
  frmTicket := TfrmTicket.Create(owner);
  frmTicket.ShowModal;
end;

procedure TfrmMatco.BitBtnTicketInsertClick(Sender: TObject);
begin
  DMMatco.tblTicket.Insert;
  frmTicket := TfrmTicket.Create(owner);
  frmTicket.ShowModal;
end;

procedure TfrmMatco.BitBtnUserDeleteClick(Sender: TObject);
begin
  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',
    mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblUser.Delete;
    DMMatco.tblTicket.Refresh;
    ShowMessage('Deleted');
  end;
end;

procedure TfrmMatco.BitBtnUserEditClick(Sender: TObject);
begin
  DMMatco.tblUser.Edit;
  frmUser := TfrmUser.Create(owner);
  frmUser.ShowModal;
end;

procedure TfrmMatco.BitBtnUserInsertClick(Sender: TObject);
begin
  DMMatco.tblUser.Insert;
  frmUser := TfrmUser.Create(owner);
  frmUser.ShowModal;
end;

// Client
procedure TfrmMatco.BitBtnClientEditClick(Sender: TObject);
begin
  DMMatco.tblClient.Edit;
  frmClient := TfrmClient.Create(owner);
  frmClient.ShowModal;
end;

procedure TfrmMatco.BitBtnNotesSaveClick(Sender: TObject);
begin
  NotesSave('notes.rtf');
  reNotes.Lines.Add(NotesRead('notes.rtf'));
end;

procedure TfrmMatco.BitBtnClientDeleteClick(Sender: TObject);
begin
  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',
    mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblClient.Delete;
    ShowMessage('Deleted');
  end;
end;

procedure TfrmMatco.BitBtnClientInsertClick(Sender: TObject);
begin
  DMMatco.tblClient.Insert;
  frmClient := TfrmClient.Create(owner);
  frmClient.ShowModal;
end;

// Project
procedure TfrmMatco.BitBtnProjectDeleteClick(Sender: TObject);
begin

  // Show a confirmation dialog
  buttonSelected := messagedlg('Are you sure you want to complete this action?',
    mtCustom, mbOKCancel, 0);

  // Show the button type selected
  if buttonSelected = mrOK then
  begin
    DMMatco.tblClient.Delete;
    ShowMessage('Deleted');
  end;
end;

procedure TfrmMatco.BitBtnProjectEditClick(Sender: TObject);
begin
  DMMatco.tblProject.Edit;
  frmProject := TfrmProject.Create(owner);
  frmProject.ShowModal;
end;

procedure TfrmMatco.BitBtnProjectInsertClick(Sender: TObject);
begin
  DMMatco.tblProject.Insert;
  frmProject := TfrmProject.Create(owner);
  frmProject.ShowModal;
end;

procedure TfrmMatco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmMatco.FormCreate(Sender: TObject);
var
  arrStatus: array  [1 .. 3] of string;
  i, j: Integer;
  temp: string;
begin
  arrStatus[1] := 'Todo';
  arrStatus[2] := 'Done';
  arrStatus[3] := 'In Progress';
  reNotes.Lines.Append(NotesRead('notes.rtf'));
  MemoHelp.Lines.Append(NotesRead('help.txt'));

  For i := 1 to Length(arrStatus) - 1 do
    For j := i + 1 to Length(arrStatus) do
      if arrStatus[i] > arrStatus[j] then
      Begin
        temp := arrStatus[j];
        arrStatus[j] := arrStatus[i];
        arrStatus[i] := temp;
      End;

  for i := 1 to Length(arrStatus) do
    cmbStatus.Items.Add(arrStatus[i]);
end;

procedure TfrmMatco.MatcoQuery(sQuery: string);
begin
  DMMatco.ADOQueryProjectTicket.SQL.Clear;
  DMMatco.ADOQueryProjectTicket.SQL.Add(sQuery);
  DMMatco.ADOQueryProjectTicket.ExecSQL;
  DMMatco.ADOQueryProjectTicket.Active := True;
end;

function TfrmMatco.NotesRead(sName: string): string;
var
  sNotes, sLine: String;
  tNotes: TextFile;
begin
  AssignFile(tNotes, sName);
  try
    Reset(tNotes);
  except
    ShowMessage('File not found');
    Exit;
  end;
  try
    while not EoF(tNotes) do
    begin
      Readln(tNotes, sLine);
      if Length(sNotes) > 0 then
      begin
        sNotes := sNotes + #13#10 + sLine;
      end
      else
        sNotes := sLine;
    end;
  finally
    Result := sNotes;
    CloseFile(tNotes);
  end;
end;

procedure TfrmMatco.NotesSave(sName: string);
var
  sNotes: String;
  tNotes: TextFile;
begin
  reNotes.PlainText := True;
  reNotes.Lines.SaveToFile(sName);
  reNotes.PlainText := False;
  reNotes.Lines.Clear;
end;

procedure TfrmMatco.Refresh1Click(Sender: TObject);
begin
  refreshDataSets;
  ShowMessage('Refreshed all the data you are good to go!');
end;

procedure TfrmMatco.refreshDataSets;
begin
  with DMMatco do
  begin
    // Open the tables
    tblClient.Open;
    tblProject.Open;
    tblProjectTicket.Open;
    tblTicket.Open;
    tblStatus.Open;
    tblUser.Open;
    ADOQueryProjectTicket.Open;
    ADOQueryTicket.Open;
    // Update Ado stuff
    tblClient.Requery;
    tblProject.Requery;
    tblProjectTicket.Requery;
    tblTicket.Requery;
    tblStatus.Requery;
    tblUser.Requery;
    ADOQueryProjectTicket.Requery;
    ADOQueryTicket.Requery;
  end;
end;

end.
