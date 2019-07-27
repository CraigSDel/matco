object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 289
  Width = 302
  object MatcoADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\my' +
      'workspace\impaq\tasks\it\pat\matco\matco.mdb;Mode=Share Deny Non' +
      'e;Persist Security Info=False;Jet OLEDB:System database="";Jet O' +
      'LEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:E' +
      'ngine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global ' +
      'Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLED' +
      'B:New Database Password="";Jet OLEDB:Create System Database=Fals' +
      'e;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale o' +
      'n Compact=False;Jet OLEDB:Compact Without Replica Repair=False;J' +
      'et OLEDB:SFP=False'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 8
  end
  object UserDataSource: TDataSource
    DataSet = tblUser
    Left = 96
    Top = 112
  end
  object tblTicket: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableName = 'ticket'
    Left = 56
    Top = 64
  end
  object tblUser: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'users'
    Left = 96
    Top = 64
  end
  object TicketDataSource: TDataSource
    DataSet = tblTicket
    Left = 56
    Top = 112
  end
  object tblClient: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'client'
    Left = 16
    Top = 64
  end
  object ClientDataSource: TDataSource
    DataSet = tblClient
    Left = 16
    Top = 112
  end
end
