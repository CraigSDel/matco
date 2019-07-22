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
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Description: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object create: TButton
    Left = 121
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = createClick
  end
  object RoleEdit: TEdit
    Left = 75
    Top = 5
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'RoleEdit'
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 232
    object User1: TMenuItem
      Caption = 'User'
      OnClick = User1Click
    end
    object icket1: TMenuItem
      Caption = 'Ticket'
      OnClick = icket1Click
    end
  end
end
