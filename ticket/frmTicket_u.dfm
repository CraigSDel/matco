object frmTicket: TfrmTicket
  Left = 0
  Top = 0
  Caption = 'Ticket'
  ClientHeight = 390
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBTextTicketID: TDBText
    Left = 96
    Top = 8
    Width = 65
    Height = 17
    DataField = 'id'
    DataSource = DMMatco.TicketDataSource
  end
  object lblTicketID: TLabel
    Left = 8
    Top = 12
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object lblTicketDescription: TLabel
    Left = 8
    Top = 43
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object lblTicketNumber: TLabel
    Left = 8
    Top = 70
    Width = 68
    Height = 13
    Caption = 'Ticket Number'
  end
  object lblDateCreated: TLabel
    Left = 8
    Top = 148
    Width = 65
    Height = 13
    Caption = 'Date Created'
  end
  object lblAssignee: TLabel
    Left = 8
    Top = 102
    Width = 43
    Height = 13
    Caption = 'Assignee'
  end
  object lblStatus: TLabel
    Left = 8
    Top = 131
    Width = 43
    Height = 11
    Caption = 'Assignee'
  end
  object DBEditTicketDescription: TDBEdit
    Left = 96
    Top = 40
    Width = 169
    Height = 21
    DataField = 'description'
    DataSource = DMMatco.TicketDataSource
    TabOrder = 0
  end
  object DBEditTicketNumber: TDBEdit
    Left = 96
    Top = 67
    Width = 169
    Height = 21
    DataField = 'ticket_number'
    DataSource = DMMatco.TicketDataSource
    TabOrder = 1
  end
  object DBLookupComboBoxTicketAssignee: TDBLookupComboBox
    Left = 96
    Top = 94
    Width = 169
    Height = 21
    DataField = 'assignee'
    DataSource = DMMatco.TicketDataSource
    KeyField = 'id'
    ListField = 'full_name'
    ListSource = DMMatco.UserDataSource
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 145
    Width = 169
    Height = 21
    DataField = 'description'
    DataSource = DMMatco.TicketDataSource
    TabOrder = 3
  end
  object BitBtnTicketOk: TBitBtn
    Left = 96
    Top = 172
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtnTicketCancel: TBitBtn
    Left = 190
    Top = 172
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object DBLookupComboBoxStatus: TDBLookupComboBox
    Left = 96
    Top = 121
    Width = 169
    Height = 21
    DataField = 'status'
    DataSource = DMMatco.TicketDataSource
    KeyField = 'ID'
    ListField = 'description'
    ListSource = DMMatco.DataSourceStatus
    TabOrder = 6
  end
end
