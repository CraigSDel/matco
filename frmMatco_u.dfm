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
  PixelsPerInch = 96
  TextHeight = 13
  object Matco: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 633
    Height = 442
    ActivePage = ProjectTicket
    Align = alClient
    TabOrder = 0
    object ProjectTicket: TTabSheet
      Caption = 'Project Ticket'
      ImageIndex = 1
      object dbgProjectTicket: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 619
        Height = 367
        Align = alClient
        DataSource = DMMatco.DataSourceProjectTicketQuery
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
        object BitBtnProjectTicketInsert: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnProjectTicketInsertClick
        end
        object BitBtnProjectTicketEdit: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = BitBtnProjectTicketEditClick
        end
        object BitBtnProjectTicketDelete: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 2
          OnClick = BitBtnProjectTicketDeleteClick
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
        object BitBtnClientInsert: TBitBtn
          Left = 166
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnClientInsertClick
        end
        object BitBtnClientDelete: TBitBtn
          Left = 328
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 1
          OnClick = BitBtnClientDeleteClick
        end
        object BitBtnClientEdit: TBitBtn
          Left = 247
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 2
          OnClick = BitBtnClientEditClick
        end
      end
    end
    object Project: TTabSheet
      Caption = 'Project'
      ImageIndex = 2
      object DBGridProject: TDBGrid
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
        object BitBtnProjectDelete: TBitBtn
          Left = 330
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 0
          OnClick = BitBtnProjectDeleteClick
        end
        object BitBtnProjectEdit: TBitBtn
          Left = 249
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = BitBtnProjectEditClick
        end
        object BitBtnProjectInsert: TBitBtn
          Left = 168
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 2
          OnClick = BitBtnProjectInsertClick
        end
      end
    end
    object TabSheetTicket: TTabSheet
      Caption = 'Ticket'
      ImageIndex = 3
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 376
        Width = 619
        Height = 35
        Align = alBottom
        TabOrder = 0
        object BitBtnTicketEdit: TBitBtn
          Left = 244
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 0
          OnClick = BitBtnTicketEditClick
        end
        object BitBtnTicketDelete: TBitBtn
          Left = 325
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 1
          OnClick = BitBtnTicketDeleteClick
        end
        object BitBtnTicketInsert: TBitBtn
          Left = 163
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 2
          OnClick = BitBtnTicketInsertClick
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
        object BitBtnUserInsert: TBitBtn
          Left = 165
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          TabOrder = 0
          OnClick = BitBtnUserInsertClick
        end
        object BitBtnUserDelete: TBitBtn
          Left = 327
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          TabOrder = 1
          OnClick = BitBtnUserDeleteClick
        end
        object BitBtnUserEdit: TBitBtn
          Left = 246
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 2
          OnClick = BitBtnUserEditClick
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
