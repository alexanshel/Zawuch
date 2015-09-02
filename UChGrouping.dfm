object fmChGrouping: TfmChGrouping
  Left = 282
  Top = 229
  Width = 338
  Height = 198
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 96
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 106
      Height = 20
      Caption = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1100
    end
    object cbGrouping: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 297
      Height = 28
      ListSource = dsGrouping
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 330
    Height = 68
    Align = alBottom
    TabOrder = 1
    object btnCancel: TBitBtn
      Left = 168
      Top = 16
      Width = 105
      Height = 33
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = btnCancelClick
      Kind = bkCancel
    end
    object btnOK: TBitBtn
      Left = 24
      Top = 16
      Width = 97
      Height = 33
      TabOrder = 1
      OnClick = btnOKClick
      Kind = bkOK
    end
  end
  object dsGrouping: TDataSource
    Left = 16
    Top = 64
  end
  object FormPlacement1: TFormPlacement
    Left = 216
    Top = 72
  end
end
