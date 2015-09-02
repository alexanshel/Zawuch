object fmEdTarifficationRec: TfmEdTarifficationRec
  Left = 245
  Top = 225
  Width = 583
  Height = 418
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 20
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 441
    Height = 105
    Caption = #1042#1088#1077#1084#1103' ('#1073#1102#1076#1078#1077#1090')'
    TabOrder = 0
    object edTYB: TLabeledEdit
      Left = 16
      Top = 56
      Width = 121
      Height = 28
      EditLabel.Width = 25
      EditLabel.Height = 20
      EditLabel.Caption = #1084#1083'.'
      TabOrder = 0
      OnKeyPress = edTYBKeyPress
    end
    object edTOB: TLabeledEdit
      Left = 160
      Top = 56
      Width = 121
      Height = 28
      EditLabel.Width = 21
      EditLabel.Height = 20
      EditLabel.Caption = #1089#1090'.'
      TabOrder = 1
      OnKeyPress = edTYBKeyPress
    end
    object edTCB: TLabeledEdit
      Left = 304
      Top = 56
      Width = 121
      Height = 28
      EditLabel.Width = 39
      EditLabel.Height = 20
      EditLabel.Caption = #1082#1086#1085#1094'.'
      TabOrder = 2
      OnKeyPress = edTYBKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 128
    Width = 441
    Height = 105
    Caption = #1042#1088#1077#1084#1103' ('#1089#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100')'
    TabOrder = 1
    object edTYS: TLabeledEdit
      Left = 16
      Top = 56
      Width = 121
      Height = 28
      EditLabel.Width = 25
      EditLabel.Height = 20
      EditLabel.Caption = #1084#1083'.'
      TabOrder = 0
      OnKeyPress = edTYBKeyPress
    end
    object edTOS: TLabeledEdit
      Left = 160
      Top = 56
      Width = 121
      Height = 28
      EditLabel.Width = 21
      EditLabel.Height = 20
      EditLabel.Caption = #1089#1090'.'
      TabOrder = 1
      OnKeyPress = edTYBKeyPress
    end
    object edTCS: TLabeledEdit
      Left = 304
      Top = 56
      Width = 121
      Height = 28
      EditLabel.Width = 39
      EditLabel.Height = 20
      EditLabel.Caption = #1082#1086#1085#1094'.'
      TabOrder = 2
      OnKeyPress = edTYBKeyPress
    end
  end
  object btnOk: TBitBtn
    Left = 210
    Top = 258
    Width = 96
    Height = 32
    TabOrder = 2
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 344
    Top = 258
    Width = 105
    Height = 32
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 16
    Top = 248
  end
end
