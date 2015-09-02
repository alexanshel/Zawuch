object fmEdTarif: TfmEdTarif
  Left = 334
  Top = 228
  Width = 469
  Height = 248
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
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
  object P1: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 56
      Height = 20
      Caption = #1056#1072#1079#1088#1103#1076
    end
    object edSalary: TLabeledEdit
      Left = 144
      Top = 32
      Width = 217
      Height = 28
      EditLabel.Width = 55
      EditLabel.Height = 20
      EditLabel.Caption = #1057#1090#1072#1074#1082#1072
      TabOrder = 0
      OnKeyPress = edSalaryKeyPress
    end
    object edInfo: TLabeledEdit
      Left = 16
      Top = 96
      Width = 345
      Height = 28
      EditLabel.Width = 95
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      TabOrder = 1
    end
    object edGrade: TComboBox
      Left = 16
      Top = 32
      Width = 89
      Height = 28
      ItemHeight = 20
      TabOrder = 2
      OnKeyPress = edGradeKeyPress
    end
  end
  object btnOk: TBitBtn
    Left = 16
    Top = 152
    Width = 105
    Height = 33
    TabOrder = 1
    OnClick = btnOkClick
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 152
    Top = 152
    Width = 97
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 312
    Top = 160
  end
end
