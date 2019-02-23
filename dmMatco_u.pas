unit dmMatco_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDMMatco = class(TDataModule)
    MatcoADOConnection: TADOConnection;
    RoleTable: TADOTable;
    RoleDataSource: TDataSource;
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
