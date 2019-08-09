object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 289
  Width = 302
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
  object tblProject: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'project'
    Left = 136
    Top = 64
  end
  object DataSourceProject: TDataSource
    DataSet = tblProject
    Left = 136
    Top = 112
  end
  object tblProjectTicket: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    TableDirect = True
    TableName = 'project_tickets'
    Left = 176
    Top = 64
  end
  object DataSourceProjectTicket: TDataSource
    DataSet = tblProjectTicket
    Left = 176
    Top = 112
  end
  object ADOQueryClient: TADOQuery
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    DataSource = ClientDataSource
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Client')
    Left = 16
    Top = 168
  end
end
