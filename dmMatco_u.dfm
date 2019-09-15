object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 491
  Width = 567
  object MatcoADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\matco.mdb;Mode=Sh' +
      'are Deny None;Persist Security Info=False;Jet OLEDB:System datab' +
      'ase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=""' +
      ';Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet O' +
      'LEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transaction' +
      's=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System D' +
      'atabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't C' +
      'opy Locale on Compact=False;Jet OLEDB:Compact Without Replica Re' +
      'pair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
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
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableName = 'ticket'
    Left = 56
    Top = 64
  end
  object tblUser: TADOTable
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
