object frmUser: TfrmUser
  Left = 0
  Top = 0
  Caption = 'User'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Description: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Fullname'
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
  object RoleEdit: TEdit
    Left = 56
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object MatcoMainMenu: TMainMenu
    Left = 600
    Top = 240
    object User1: TMenuItem
      Caption = 'Ticket'
      OnClick = User1Click
    end
    object User2: TMenuItem
      Caption = 'User'
      OnClick = User2Click
    end
  end
end
