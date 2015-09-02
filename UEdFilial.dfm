object fmEdFilial: TfmEdFilial
  Left = 327
  Top = 252
  Width = 405
  Height = 250
  Caption = #1060#1080#1083#1080#1072#1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 20
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 145
    Align = alTop
    TabOrder = 0
    object edCode: TLabeledEdit
      Left = 16
      Top = 32
      Width = 65
      Height = 28
      EditLabel.Width = 30
      EditLabel.Height = 20
      EditLabel.Caption = #1050#1086#1076
      TabOrder = 0
      OnKeyPress = edCodeKeyPress
    end
    object edName: TLabeledEdit
      Left = 104
      Top = 32
      Width = 265
      Height = 28
      EditLabel.Width = 113
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      TabOrder = 1
    end
    object edInfo: TLabeledEdit
      Left = 16
      Top = 96
      Width = 353
      Height = 28
      EditLabel.Width = 95
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 160
    Width = 113
    Height = 33
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 160
    Width = 89
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 288
    Top = 160
  end
end
