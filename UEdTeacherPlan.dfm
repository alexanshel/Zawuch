object fmEdStudentPlan: TfmEdStudentPlan
  Left = 340
  Top = 329
  Width = 320
  Height = 162
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 89
    Align = alTop
    TabOrder = 0
    object btnChoice: TSpeedButton
      Left = 136
      Top = 56
      Width = 57
      Height = 22
      Caption = #1042#1099#1073#1088#1072#1090#1100
    end
    object btnClear: TSpeedButton
      Left = 216
      Top = 56
      Width = 65
      Height = 22
      Caption = #1054#1090#1095#1080#1089#1090#1080#1090#1100
    end
    object cbUse: TCheckBox
      Left = 16
      Top = 16
      Width = 97
      Height = 17
      Caption = #1048#1089#1087#1086#1083#1100#1079#1091#1077#1090#1089#1103
      TabOrder = 0
    end
    object edTeacher: TLabeledEdit
      Left = 16
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 79
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      TabOrder = 1
    end
  end
  object btnOk: TBitBtn
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 112
    Top = 96
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
end
