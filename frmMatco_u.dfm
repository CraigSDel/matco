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
  PixelsPerInch = 96
  TextHeight = 13
  object MatcoMainMenu: TMainMenu
    Left = 8
    Top = 8
    object User1: TMenuItem
      Caption = 'Ticket'
      OnClick = User1Click
    end
    object User2: TMenuItem
      Caption = 'User'
      OnClick = User2Click
    end
  end
end
