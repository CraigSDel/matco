object frmProject: TfrmProject
  Left = 0
  Top = 0
  Caption = 'Project'
  ClientHeight = 299
  ClientWidth = 635
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
  object CleintID: TLabel
    Left = 8
    Top = 43
    Width = 40
    Height = 13
    Caption = 'Client Id'
  end
  object Client: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object TDBText
    Left = 102
    Top = 8
    Width = 156
    Height = 17
    DataField = 'project_name'
    DataSource = DMMatco.DataSourceProject
  end
  object Label1: TLabel
    Left = 8
    Top = 67
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object BitBtnSave: TBitBtn
    Left = 102
    Top = 91
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = BitBtnSaveClick
  end
  object BitBtnCancel: TBitBtn
    Left = 183
    Top = 91
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtnCancelClick
  end
  object TDBEdit
    Left = 102
    Top = 37
    Width = 156
    Height = 21
    DataField = 'id'
    DataSource = DMMatco.DataSourceProject
    TabOrder = 2
  end
  object TDBEdit
    Left = 102
    Top = 64
    Width = 156
    Height = 21
    DataField = 'project_name'
    DataSource = DMMatco.DataSourceProject
    TabOrder = 3
  end
end
