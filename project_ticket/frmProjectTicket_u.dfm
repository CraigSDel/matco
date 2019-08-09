object frmProjectTicket: TfrmProjectTicket
  Left = 0
  Top = 0
  Caption = 'ProjectTicket'
  ClientHeight = 279
  ClientWidth = 635
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
  object Description: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Fullname'
  end
  object lblProjectTicket: TLabel
    Left = 8
    Top = 72
    Width = 76
    Height = 13
    Caption = 'ProjectTicket ID'
  end
  object create: TButton
    Left = 102
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = createClick
  end
  object edtFullname: TEdit
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnFindProjectTicket: TButton
    Left = 102
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 2
    OnClick = btnFindProjectTicketClick
  end
  object spnEdtProjectTicketID: TSpinEdit
    Left = 56
    Top = 66
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 1
    TabOrder = 3
    Value = 1
  end
  object MatcoMainMenu: TMainMenu
    Left = 600
    Top = 240
    object Home: TMenuItem
      Caption = 'Home'
      OnClick = HomeClick
    end
  end
end
