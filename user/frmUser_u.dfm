object frmUser: TfrmUser
  Left = 0
  Top = 0
  Caption = 'User'
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
  object DBTextUserID: TDBText
    Left = 102
    Top = 8
    Width = 169
    Height = 17
    DataField = 'id'
    DataSource = DMMatco.UserDataSource
  end
  object lblUserID: TLabel
    Left = 16
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object lblUserName: TLabel
    Left = 16
    Top = 34
    Width = 42
    Height = 13
    Caption = 'Fullname'
  end
  object DBEditUserFullname: TDBEdit
    Left = 102
    Top = 31
    Width = 169
    Height = 21
    DataField = 'full_name'
    DataSource = DMMatco.UserDataSource
    TabOrder = 0
  end
  object BitBtnUserOk: TBitBtn
    Left = 102
    Top = 58
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtnUserOkClick
  end
  object BitBtnUserCancel: TBitBtn
    Left = 196
    Top = 58
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtnUserCancelClick
  end
end
