object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 491
  Width = 567
  object MatcoADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=matco.mdb;Mode=Shar' +
      'e Deny None;Persist Security Info=False;Jet OLEDB:System databas' +
      'e="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";J' +
      'et OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLE' +
      'DB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=' +
      '1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Dat' +
      'abase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Cop' +
      'y Locale on Compact=False;Jet OLEDB:Compact Without Replica Repa' +
      'ir=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
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
  object ProjectDataSource: TDataSource
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
  object ProjectTicketDataSource: TDataSource
    DataSet = tblProjectTicket
    Left = 176
    Top = 112
  end
  object ADOQueryProjectTicket: TADOQuery
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    DataSource = ProjectTicketDataSource
    Parameters = <>
    SQL.Strings = (
      'SELECT project.project_name, ticket.ticket_number'
      
        'FROM ticket INNER JOIN (project INNER JOIN project_tickets ON pr' +
        'oject.id = project_tickets.project_id) ON ticket.id = project_ti' +
        'ckets.ticket_id;')
    Left = 256
    Top = 64
  end
  object QueryProjectTicketDataSource: TDataSource
    DataSet = ADOQueryProjectTicket
    Left = 256
    Top = 112
  end
  object tblStatus: TADOTable
    Active = True
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableName = 'status'
    Left = 216
    Top = 64
  end
  object StatusDataSource: TDataSource
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
    Left = 288
    Top = 64
  end
  object QueryTicketDataSource: TDataSource
    DataSet = ADOQueryTicket
    Left = 296
    Top = 112
  end
end
