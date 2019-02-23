object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 289
  Width = 215
  object MatcoADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\mat' +
      'co\matco.mdb;Mode=Share Deny None;Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database ' +
      'Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glo' +
      'bal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet O' +
      'LEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fal' +
      'se;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compac' +
      't Without Replica Repair=False;Jet OLEDB:SFP=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 16
  end
  object RoleTable: TADOTable
    Connection = MatcoADOConnection
    TableName = 'role'
    Left = 48
    Top = 64
  end
  object RoleDataSource: TDataSource
    DataSet = RoleTable
    Left = 112
    Top = 64
  end
end
