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
  PixelsPerInch = 96
  TextHeight = 13
  object DBTextProjectID: TDBText
    Left = 104
    Top = 8
    Width = 156
    Height = 17
    DataField = 'id'
    DataSource = DMMatco.DataSourceProject
  end
  object projectID: TLabel
    Left = 8
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 34
    Width = 41
    Height = 13
    Caption = 'Client ID'
  end
  object Label3: TLabel
    Left = 8
    Top = 61
    Width = 64
    Height = 13
    Caption = 'Project Name'
  end
  object DBEditProjectName: TDBEdit
    Left = 104
    Top = 58
    Width = 156
    Height = 21
    DataField = 'project_name'
    DataSource = DMMatco.DataSourceProject
    TabOrder = 0
  end
  object BitBtnProjectOk: TBitBtn
    Left = 104
    Top = 85
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtnProjectOkClick
  end
  object BitBtnProjectCancel: TBitBtn
    Left = 185
    Top = 85
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtnProjectCancelClick
  end
  object DBLookupComboBoxClientId: TDBLookupComboBox
    Left = 104
    Top = 31
    Width = 156
    Height = 21
    DataField = 'client_id'
    DataSource = DMMatco.DataSourceProject
    KeyField = 'id'
    ListField = 'client_name'
    ListSource = DMMatco.ClientDataSource
    TabOrder = 3
  end
end
