object frmProjectTicket: TfrmProjectTicket
  Left = 0
  Top = 0
  Caption = 'ProjectTicket'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblProjectTicketID: TLabel
    Left = 8
    Top = 45
    Width = 64
    Height = 13
    Caption = 'Project Name'
  end
  object lblClient: TLabel
    Left = 8
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Ticket'
  end
  object BitBtnProjectTicketInsert: TBitBtn
    Left = 119
    Top = 64
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtnProjectTicketInsertClick
  end
  object BitBtnProjectTicketCancel: TBitBtn
    Left = 200
    Top = 64
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtnProjectTicketCancelClick
  end
  object DBLookupComboBoxProjectID: TDBLookupComboBox
    Left = 119
    Top = 37
    Width = 156
    Height = 21
    DataField = 'project_id'
    DataSource = DMMatco.ProjectTicketDataSource
    KeyField = 'id'
    ListField = 'project_name'
    ListSource = DMMatco.ProjectDataSource
    TabOrder = 2
  end
  object DBLookupComboBoxTicketID: TDBLookupComboBox
    Left = 119
    Top = 8
    Width = 156
    Height = 21
    DataField = 'ticket_id'
    DataSource = DMMatco.ProjectTicketDataSource
    KeyField = 'id'
    ListField = 'ticket_number'
    ListSource = DMMatco.TicketDataSource
    TabOrder = 3
  end
end
