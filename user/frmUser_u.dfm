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
  object lblUser: TLabel
    Left = 8
    Top = 72
    Width = 36
    Height = 13
    Caption = 'User ID'
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
  object btnFindUser: TButton
    Left = 102
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 2
    OnClick = btnFindUserClick
  end
  object spnEdtUserID: TSpinEdit
    Left = 56
    Top = 66
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 1
    TabOrder = 3
    Value = 1
  end
  object DBGrid1: TDBGrid
    Left = 183
    Top = 8
    Width = 320
    Height = 120
    DataSource = DMMatco.UserDataSource
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MatcoMainMenu: TMainMenu
    Left = 600
    Top = 240
    object Client1: TMenuItem
      Caption = 'Client'
      OnClick = Client1Click
    end
    object User2: TMenuItem
      Caption = 'User'
      OnClick = User2Click
    end
    object User1: TMenuItem
      Caption = 'Ticket'
      OnClick = User1Click
    end
  end
end
