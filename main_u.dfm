object MatcoForm: TMatcoForm
  Left = 0
  Top = 0
  Caption = 'MatcoForm'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Description: TLabel
    Left = 24
    Top = 16
    Width = 53
    Height = 13
    Caption = 'Description'
  end
  object create: TButton
    Left = 129
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = createClick
  end
  object RoleEdit: TEdit
    Left = 83
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'RoleEdit'
  end
end
