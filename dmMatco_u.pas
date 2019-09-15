unit dmMatco_u;

// Craig Stroberg
// 70854
// This is the database module user to interact with the data
interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDMMatco = class(TDataModule)
    MatcoADOConnection: TADOConnection;
    UserDataSource: TDataSource;
    tblTicket: TADOTable;
    tblUser: TADOTable;
    TicketDataSource: TDataSource;
    tblClient: TADOTable;
    ClientDataSource: TDataSource;
    tblProject: TADOTable;
    ProjectDataSource: TDataSource;
    tblProjectTicket: TADOTable;
    ProjectTicketDataSource: TDataSource;
    ADOQueryProjectTicket: TADOQuery;
    QueryProjectTicketDataSource: TDataSource;
    tblStatus: TADOTable;
    StatusDataSource: TDataSource;
    ADOQueryTicket: TADOQuery;
    QueryTicketDataSource: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMatco: TDMMatco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
