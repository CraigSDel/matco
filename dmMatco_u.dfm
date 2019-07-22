object DMMatco: TDMMatco
  OldCreateOrder = False
  Height = 289
  Width = 302
  object MatcoADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\my' +
      'workspace\personal\github\matco\matco.mdb;Mode=Share Deny None;P' +
      'ersist Security Info=False;Jet OLEDB:System database="";Jet OLED' +
      'B:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engi' +
      'ne Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Par' +
      'tial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:N' +
      'ew Database Password="";Jet OLEDB:Create System Database=False;J' +
      'et OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on C' +
      'ompact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet ' +
      'OLEDB:SFP=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 8
  end
  object UserDataSource: TDataSource
    DataSet = tblUser
    Left = 72
    Top = 64
  end
  object tblTicket: TADOTable
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableName = 'ticket'
    Left = 176
    Top = 112
  end
  object tblUser: TADOTable
    Connection = MatcoADOConnection
    CursorType = ctStatic
    TableDirect = True
    TableName = 'users'
    Left = 72
    Top = 112
  end
  object TicketDataSource: TDataSource
    DataSet = tblTicket
    Left = 176
    Top = 64
  end
end
