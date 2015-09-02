object fmEdSubject: TfmEdSubject
  Left = 378
  Top = 243
  Width = 722
  Height = 210
  Caption = #1055#1088#1077#1076#1084#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object edCode: TLabeledEdit
    Left = 8
    Top = 32
    Width = 89
    Height = 28
    TabStop = False
    EditLabel.Width = 110
    EditLabel.Height = 20
    EditLabel.Caption = #1050#1086#1076' '#1087#1088#1077#1076#1084#1077#1090#1072
    TabOrder = 3
    OnKeyPress = edCodeKeyPress
  end
  object edName: TLabeledEdit
    Left = 144
    Top = 32
    Width = 313
    Height = 28
    EditLabel.Width = 113
    EditLabel.Height = 20
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    TabOrder = 0
  end
  object edInfo: TLabeledEdit
    Left = 8
    Top = 88
    Width = 369
    Height = 28
    EditLabel.Width = 95
    EditLabel.Height = 20
    EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
    TabOrder = 1
  end
  object bntOK: TBitBtn
    Left = 8
    Top = 128
    Width = 97
    Height = 33
    TabOrder = 2
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 128
    Top = 128
    Width = 97
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    Kind = bkCancel
  end
  object edShortName: TLabeledEdit
    Left = 472
    Top = 32
    Width = 233
    Height = 28
    EditLabel.Width = 218
    EditLabel.Height = 20
    EditLabel.Caption = #1057#1086#1082#1088#1072#1097#1105#1085#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    TabOrder = 5
  end
  object FormPlacement1: TFormPlacement
    Left = 360
    Top = 208
  end
end
