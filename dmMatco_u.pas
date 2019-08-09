unit dmMatco_u;

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
    DataSourceProject: TDataSource;
    tblProjectTicket: TADOTable;
    DataSourceProjectTicket: TDataSource;
    ADOQueryClient: TADOQuery;
    ADOQuery1: TADOQuery;
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
