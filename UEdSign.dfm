object fmEdSign: TfmEdSign
  Left = 84
  Top = 188
  Width = 830
  Height = 382
  Caption = #1055#1086#1076#1087#1080#1089#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 822
    Height = 52
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 89
      Height = 33
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 136
      Top = 8
      Width = 105
      Height = 33
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object mSign: TMemo
    Left = 0
    Top = 0
    Width = 822
    Height = 296
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    WantTabs = True
    WordWrap = False
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 288
    Top = 312
  end
end
