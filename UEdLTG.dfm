object fmEdLTG: TfmEdLTG
  Left = 228
  Top = 180
  Width = 435
  Height = 234
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
    Top = 0
    Width = 427
    Height = 128
    Align = alClient
    TabOrder = 0
    DesignSize = (
      427
      128)
    object edLTGName: TLabeledEdit
      Left = 8
      Top = 32
      Width = 409
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 273
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1077#1090#1082#1080' '#1091#1095#1077#1073#1085#1099#1093' '#1095#1072#1089#1086#1074
      MaxLength = 50
      TabOrder = 0
    end
    object cbSelfRep: TCheckBox
      Left = 8
      Top = 80
      Width = 281
      Height = 17
      Caption = #1089#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 128
    Width = 427
    Height = 72
    Align = alBottom
    TabOrder = 1
    object btnCancel: TBitBtn
      Left = 144
      Top = 23
      Width = 113
      Height = 33
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      Kind = bkCancel
    end
    object btnOK: TBitBtn
      Left = 16
      Top = 23
      Width = 97
      Height = 33
      TabOrder = 1
      Kind = bkOK
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 288
    Top = 80
  end
end
