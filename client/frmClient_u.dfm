object frmClient: TfrmClient
  Left = 0
  Top = 0
  Caption = 'Client'
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
  object Description: TLabel
    Left = 8
    Top = 43
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Client: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object lblContactPerson: TLabel
    Left = 8
    Top = 70
    Width = 74
    Height = 13
    Caption = 'Contact Person'
  end
  object lblEmail: TLabel
    Left = 8
    Top = 97
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lblPhoneNumber: TLabel
    Left = 8
    Top = 124
    Width = 70
    Height = 13
    Caption = 'Phone Number'
  end
  object DBTextClientID: TDBText
    Left = 104
    Top = 8
    Width = 156
    Height = 17
    DataField = 'id'
    DataSource = DMMatco.ClientDataSource
  end
  object BitBtnSave: TBitBtn
    Left = 104
    Top = 148
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtnSaveClick
  end
  object BitBtnCancel: TBitBtn
    Left = 185
    Top = 148
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtnCancelClick
  end
  object DBEditName: TDBEdit
    Left = 104
    Top = 40
    Width = 156
    Height = 21
    DataField = 'client_name'
    DataSource = DMMatco.ClientDataSource
    TabOrder = 2
  end
  object DBEditContactPerson: TDBEdit
    Left = 104
    Top = 67
    Width = 156
    Height = 21
    DataField = 'contact_person'
    DataSource = DMMatco.ClientDataSource
    TabOrder = 3
  end
  object DBEditEmail: TDBEdit
    Left = 104
    Top = 94
    Width = 156
    Height = 21
    DataField = 'email'
    DataSource = DMMatco.ClientDataSource
    TabOrder = 4
  end
  object DBEditPhoneNumber: TDBEdit
    Left = 104
    Top = 121
    Width = 156
    Height = 21
    DataField = 'phone_number'
    DataSource = DMMatco.ClientDataSource
    TabOrder = 5
  end
end
