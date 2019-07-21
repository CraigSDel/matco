object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 289
  Width = 215
  object MatcoADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\my' +
      'workbench\impaq\matco\matco.mdb;Mode=Share Deny None;Persist Sec' +
      'urity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry' +
      ' Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;' +
      'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk ' +
      'Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Databas' +
      'e Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:E' +
      'ncrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fal' +
      'se;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=' +
      'False'
    Mode = cmShareDenyNone
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
