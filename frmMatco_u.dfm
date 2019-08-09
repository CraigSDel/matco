object frmMatco: TfrmMatco
  Left = 0
  Top = 0
  Caption = 'Matco'
  ClientHeight = 448
  ClientWidth = 639
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
  object Matco: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 633
    Height = 442
    ActivePage = Project
    Align = alClient
    TabOrder = 0
    object ProejctTicket: TTabSheet
      Caption = 'Project Ticket'
      ImageIndex = 1
      object DBGridProjectTicket: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 619
        Height = 367
        Align = alClient
        DataSource = DMMatco.DataSourceProjectTicket
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 376
        Width = 619
        Height = 35
        Align = alBottom
        TabOrder = 0
        object BitBtnInsertProjectTicket: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
        end
        object BitBtnEditProjectTicket: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
        end
        object BitBtnDeleteProjectTicket: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
        end
      end
    end
    object Client: TTabSheet
      Caption = 'Client'
      object dbgClient: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 619
        Height = 367
        Align = alClient
        DataSource = DMMatco.ClientDataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 376
        Width = 619
        Height = 35
        Align = alBottom
        TabOrder = 1
        object BitBtnInsertClient: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnInsertClientClick
        end
        object BitBtnEditClient: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = BitBtnEditClientClick
        end
        object BitBtnDeleteClient: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = BitBtnDeleteClientClick
        end
      end
    end
    object Project: TTabSheet
      Caption = 'Project'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 619
        Height = 367
        Align = alClient
        DataSource = DMMatco.DataSourceProject
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 376
        Width = 619
        Height = 35
        Align = alBottom
        TabOrder = 1
        object BitBtnInsertProject: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnInsertClientClick
        end
        object BitBtnEditProject: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = BitBtnEditClientClick
        end
        object BitBtnDeleteProject: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = BitBtnDeleteClientClick
        end
      end
    end
    object TabSheetTicket: TTabSheet
      Caption = 'Ticket'
      ImageIndex = 3
      ExplicitLeft = 0
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 376
        Width = 619
        Height = 35
        Align = alBottom
        TabOrder = 0
        object BitBtnInsertTicket: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnInsertClientClick
        end
        object BitBtnEditTicket: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = BitBtnEditClientClick
        end
        object BitBtnDeleteTicket: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = BitBtnDeleteClientClick
        end
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 619
        Height = 367
        Align = alClient
        DataSource = DMMatco.TicketDataSource
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object User: TTabSheet
      Caption = 'User'
      ImageIndex = 4
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 376
        Width = 619
        Height = 35
        Align = alBottom
        TabOrder = 0
        object BitBtnInsertUser: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnInsertClientClick
        end
        object BitBtnEditUser: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = BitBtnEditClientClick
        end
        object BitBtnDeleteUser: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = BitBtnDeleteClientClick
        end
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 619
        Height = 367
        Align = alClient
        DataSource = DMMatco.UserDataSource
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object MatcoMainMenu: TMainMenu
    Left = 592
    Top = 65528
    object Home: TMenuItem
      Caption = 'Home'
    end
  end
end
