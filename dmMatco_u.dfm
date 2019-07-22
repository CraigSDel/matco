object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 289
  Width = 215
  object MatcoADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=.\mat' +
      'co.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 16
  end
  object tblTicket: TADOTable
    Connection = MatcoADOConnection
    TableName = 'ticket'
    Left = 48
    Top = 72
  end
  object TicketDataSource: TDataSource
    DataSet = tblTicket
    Left = 112
    Top = 72
  end
  object tblUser: TADOTable
    Connection = MatcoADOConnection
    TableName = 'users'
    Left = 48
    Top = 128
  end
  object UserDataSource: TDataSource
    DataSet = tblUser
    Left = 112
    Top = 128
  end
end
