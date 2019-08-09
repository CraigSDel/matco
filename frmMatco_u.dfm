object frmMatco: TfrmMatco
  Left = 0
  Top = 0
  Caption = 'Matco'
  ClientHeight = 201
  ClientWidth = 447
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
  object PageControl1: TPageControl
    Left = 80
    Top = 8
    Width = 289
    Height = 193
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
  object MatcoMainMenu: TMainMenu
    Left = 8
    Top = 8
    object Home: TMenuItem
      Caption = 'Home'
      OnClick = HomeClick
    end
    object Client: TMenuItem
      Caption = 'Client'
      OnClick = ClientClick
    end
    object Project: TMenuItem
      Caption = 'Project'
      OnClick = ProjectClick
    end
    object ProjectTicket: TMenuItem
      Caption = 'ProjectTicket'
      OnClick = ProjectTicketClick
    end
    object Ticket: TMenuItem
      Caption = 'Ticket'
      OnClick = TicketClick
    end
    object User: TMenuItem
      Caption = 'User'
      OnClick = UserClick
    end
  end
end
