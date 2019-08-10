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
    DBGridProject: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    MatcoMainMenu: TMainMenu;
    Home: TMenuItem;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
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
  private
    myFile: TextFile;
    text: string;
    procedure NotesRead();
    procedure NotesSave();
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
  DMMatco.tblProjectTicket.Delete;
  frmProjectTicket := TfrmProjectTicket.Create(owner);
  frmProjectTicket.ShowModal;
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

// Ticket
procedure TfrmMatco.BitBtnTicketDeleteClick(Sender: TObject);
begin
  DMMatco.tblTicket.Delete;
  frmTicket := TfrmTicket.Create(owner);
  frmTicket.ShowModal;
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
  DMMatco.tblUser.Delete;
  frmUser := TfrmUser.Create(owner);
  frmUser.ShowModal;
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
  NotesSave;
  NotesRead;
end;

procedure TfrmMatco.BitBtnClientDeleteClick(Sender: TObject);
begin
  DMMatco.tblClient.Delete;
  frmClient := TfrmClient.Create(owner);
  frmClient.ShowModal;
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
  DMMatco.tblClient.Delete;
  frmProject := TfrmProject.Create(owner);
  frmProject.ShowModal;
end;

procedure TfrmMatco.BitBtnProjectEditClick(Sender: TObject);
begin
  DMMatco.tblProject.Edit;
  frmProject := TfrmProject.Create(owner);
  frmProject.ShowModal;
end;

procedure TfrmMatco.BitBtnProjectInsertClick(Sender: TObject);
begin
  DMMatco.tblClient.Insert;
  frmProject := TfrmProject.Create(owner);
  frmProject.ShowModal;
end;

procedure TfrmMatco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmMatco.FormCreate(Sender: TObject);
begin
  NotesRead;
end;

procedure TfrmMatco.NotesRead;
var
  sNotes: String;
  tNotes: TextFile;
begin
  AssignFile(tNotes, 'notes.txt');
  try
    Reset(tNotes);
  except
    ShowMessage('File not found');
    Exit;
  end;
  try
    while not EoF(tNotes) do
    begin
      Readln(tNotes, sNotes);
      reNotes.Lines.Append(sNotes);
    end;
  finally
    CloseFile(tNotes);
  end;
end;

procedure TfrmMatco.NotesSave;
var
  sNotes: String;
  tNotes: TextFile;
begin
  reNotes.PlainText := True;
  reNotes.Lines.SaveToFile('notes.txt');
  reNotes.PlainText := False;
  reNotes.Lines.Clear;
end;

end.
