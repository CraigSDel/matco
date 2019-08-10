object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 491
  Width = 567
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
  object ADOQueryProjectTicket: TADOQuery
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    DataSource = DataSourceProjectTicket
    Parameters = <>
    SQL.Strings = (
      'SELECT project.project_name, ticket.ticket_number'
      
        'FROM ticket INNER JOIN (project INNER JOIN project_tickets ON pr' +
        'oject.id = project_tickets.project_id) ON ticket.id = project_ti' +
        'ckets.ticket_id;')
    Left = 56
    Top = 216
  end
  object DataSourceQueryProjectTicket: TDataSource
    DataSet = ADOQueryProjectTicket
    Left = 56
    Top = 272
  end
  object tblStatus: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableName = 'status'
    Left = 216
    Top = 64
  end
  object DataSourceStatus: TDataSource
    DataSet = tblStatus
    Left = 216
    Top = 112
  end
  object ADOQueryTicket: TADOQuery
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ticket.id, ticket.ticket_number, ticket.description, tick' +
        'et.date_created, users.full_name, ticket.status'
      
        'FROM users INNER JOIN (status INNER JOIN ticket ON status.ID = t' +
        'icket.status) ON users.id = ticket.assignee;')
    Left = 240
    Top = 232
  end
  object DataSourceQueryTicket: TDataSource
    DataSet = ADOQueryTicket
    Left = 232
    Top = 312
  end
end
