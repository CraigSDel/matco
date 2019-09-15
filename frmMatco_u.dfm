object frmMatco: TfrmMatco
  Left = 0
  Top = 0
  Caption = 'Matco'
  ClientHeight = 738
  ClientWidth = 879
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
    Width = 873
    Height = 732
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
        Width = 859
        Height = 598
        Align = alClient
        DataSource = DMMatco.QueryProjectTicketDataSource
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
        Top = 607
        Width = 859
        Height = 94
        Align = alBottom
        TabOrder = 0
        object Label1: TLabel
          Left = 96
          Top = 9
          Width = 64
          Height = 13
          Caption = 'Project Name'
        end
        object Label2: TLabel
          Left = 96
          Top = 36
          Width = 68
          Height = 13
          Caption = 'Ticket Number'
        end
        object BitBtnProjectTicketInsert: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtnProjectTicketInsertClick
        end
        object BitBtnProjectTicketEdit: TBitBtn
          Left = 0
          Top = 31
          Width = 75
          Height = 25
          Caption = 'Edit'
          Kind = bkHelp
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtnProjectTicketEditClick
        end
        object BitBtnProjectTicketDelete: TBitBtn
          Left = 0
          Top = 62
          Width = 75
          Height = 25
          Caption = 'Delete'
          Kind = bkAbort
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BitBtnProjectTicketDeleteClick
        end
        object edtProjectName: TEdit
          Left = 176
          Top = 8
          Width = 249
          Height = 21
          TabOrder = 3
        end
        object edtTicketNumber: TEdit
          Left = 176
          Top = 35
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object BitBtnProjectTicketSearch: TBitBtn
          Left = 176
          Top = 62
          Width = 121
          Height = 25
          Caption = '&Search'
          Kind = bkRetry
          NumGlyphs = 2
          TabOrder = 5
          OnClick = BitBtnProjectTicketSearchClick
        end
        object BitBtnSum: TBitBtn
          Left = 303
          Top = 62
          Width = 122
          Height = 25
          Caption = '&Number of Tickets'
          Kind = bkAll
          NumGlyphs = 2
          TabOrder = 6
          OnClick = BitBtnSumClick
        end
        object cmbStatus: TComboBox
          Left = 536
          Top = 9
          Width = 145
          Height = 21
          TabOrder = 7
        end
        object BitBtnSearchByStatus: TBitBtn
          Left = 536
          Top = 53
          Width = 145
          Height = 25
          Caption = 'S&earch By Status'
          Kind = bkRetry
          NumGlyphs = 2
          TabOrder = 8
          OnClick = BitBtnSearchByStatusClick
        end
      end
    end
    object Client: TTabSheet
      Caption = 'Client'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 889
      ExplicitHeight = 606
      object dbgClient: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 859
        Height = 657
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
        Top = 666
        Width = 859
        Height = 35
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 568
        ExplicitWidth = 883
        object BitBtnClientInsert: TBitBtn
          Left = 182
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtnClientInsertClick
        end
        object BitBtnClientDelete: TBitBtn
          Left = 344
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          Kind = bkAbort
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtnClientDeleteClick
        end
        object BitBtnClientEdit: TBitBtn
          Left = 263
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          Kind = bkHelp
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BitBtnClientEditClick
        end
      end
    end
    object Project: TTabSheet
      Caption = 'Project'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 889
      ExplicitHeight = 606
      object dbgProject: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 859
        Height = 657
        Align = alClient
        DataSource = DMMatco.ProjectDataSource
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
        Top = 666
        Width = 859
        Height = 35
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 568
        ExplicitWidth = 883
        object BitBtnProjectDelete: TBitBtn
          Left = 362
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          Kind = bkAbort
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtnProjectDeleteClick
        end
        object BitBtnProjectEdit: TBitBtn
          Left = 281
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          Kind = bkHelp
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtnProjectEditClick
        end
        object BitBtnProjectInsert: TBitBtn
          Left = 200
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BitBtnProjectInsertClick
        end
      end
    end
    object TabSheetTicket: TTabSheet
      Caption = 'Ticket'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 889
      ExplicitHeight = 606
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 666
        Width = 859
        Height = 35
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 568
        ExplicitWidth = 883
        object BitBtnTicketEdit: TBitBtn
          Left = 287
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          Kind = bkHelp
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtnTicketEditClick
        end
        object BitBtnTicketDelete: TBitBtn
          Left = 368
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          Kind = bkAbort
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtnTicketDeleteClick
        end
        object BitBtnTicketInsert: TBitBtn
          Left = 206
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BitBtnTicketInsertClick
        end
      end
      object dbgTicket: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 859
        Height = 657
        Align = alClient
        DataSource = DMMatco.QueryTicketDataSource
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 889
      ExplicitHeight = 606
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 666
        Width = 859
        Height = 35
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 568
        ExplicitWidth = 883
        object BitBtnUserInsert: TBitBtn
          Left = 230
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Insert'
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtnUserInsertClick
        end
        object BitBtnUserDelete: TBitBtn
          Left = 392
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Delete'
          Kind = bkAbort
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BitBtnUserDeleteClick
        end
        object BitBtnUserEdit: TBitBtn
          Left = 311
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Edit'
          Kind = bkHelp
          NumGlyphs = 2
          TabOrder = 2
          OnClick = BitBtnUserEditClick
        end
      end
      object dgbUser: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 859
        Height = 657
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
    object Notes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object reNotes: TRichEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 859
        Height = 657
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PlainText = True
        TabOrder = 0
        Zoom = 100
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 666
        Width = 859
        Height = 35
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 568
        ExplicitWidth = 883
        object BitBtnNotesSave: TBitBtn
          Left = 312
          Top = 0
          Width = 75
          Height = 25
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
          OnClick = BitBtnNotesSaveClick
        end
      end
    end
    object Help: TTabSheet
      Caption = 'Help'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 889
      ExplicitHeight = 606
      object MemoHelp: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 859
        Height = 698
        Align = alClient
        ReadOnly = True
        TabOrder = 0
        ExplicitWidth = 883
        ExplicitHeight = 600
      end
    end
  end
  object MatcoMainMenu: TMainMenu
    Left = 592
    Top = 65528
    object Home: TMenuItem
      Caption = 'Home'
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
  end
end
