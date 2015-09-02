object Form2: TForm2
  Left = 362
  Top = 253
  Width = 377
  Height = 160
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 16
    Top = 88
    Width = 75
    Height = 25
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 88
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    Kind = bkCancel
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 81
    Align = alTop
    TabOrder = 2
    object edName: TLabeledEdit
      Left = 80
      Top = 24
      Width = 105
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      MaxLength = 20
      TabOrder = 0
    end
    object edInfo: TLabeledEdit
      Left = 200
      Top = 24
      Width = 153
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      MaxLength = 50
      TabOrder = 1
    end
    object edCode: TLabeledEdit
      Left = 16
      Top = 24
      Width = 49
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1076
      TabOrder = 2
    end
  end
end
