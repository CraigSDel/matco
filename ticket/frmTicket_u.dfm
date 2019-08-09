object frmTicket: TfrmTicket
  Left = 0
  Top = 0
  Caption = 'Ticket'
  ClientHeight = 370
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MatcoMainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTicket: TLabel
    Left = 432
    Top = 144
    Width = 42
    Height = 13
    Caption = 'Ticket ID'
  end
  object Number: TLabel
    Left = 8
    Top = 144
    Width = 37
    Height = 13
    Caption = 'Number'
  end
  object Description: TLabel
    Left = 8
    Top = 174
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object Label1: TLabel
    Left = 8
    Top = 203
    Width = 43
    Height = 13
    Caption = 'Assignee'
  end
  object Label2: TLabel
    Left = 8
    Top = 230
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object create: TButton
    Left = 166
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = createClick
  end
  object edtNumber: TEdit
    Left = 96
    Top = 146
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object spnEdtTicketID: TSpinEdit
    Left = 496
    Top = 141
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object btnFindTicket: TButton
    Left = 542
    Top = 169
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 3
    OnClick = btnFindTicketClick
  end
  object cmbAssignee: TComboBox
    Left = 96
    Top = 200
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Assignee'
  end
  object edtDescription: TEdit
    Left = 96
    Top = 173
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object cmbStatus: TComboBox
    Left = 96
    Top = 227
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'Status'
  end
  object DBGridTicket: TDBGrid
    Left = 8
    Top = 8
    Width = 619
    Height = 120
    DataSource = DMMatco.TicketDataSource
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MatcoMainMenu: TMainMenu
    Left = 728
    object Home: TMenuItem
      Caption = 'Home'
      OnClick = HomeClick
    end
  end
end
