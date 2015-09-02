object fmEdTeacherAdding: TfmEdTeacherAdding
  Left = 366
  Top = 257
  Width = 560
  Height = 235
  Caption = #1053#1072#1076#1073#1072#1074#1082#1072
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
    Width = 552
    Height = 97
    Align = alTop
    TabOrder = 0
    object edName: TLabeledEdit
      Left = 16
      Top = 40
      Width = 193
      Height = 28
      EditLabel.Width = 113
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      MaxLength = 20
      TabOrder = 0
    end
    object edPercent: TLabeledEdit
      Left = 232
      Top = 40
      Width = 81
      Height = 28
      EditLabel.Width = 66
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1086#1094#1077#1085#1090
      MaxLength = 3
      TabOrder = 1
      OnKeyPress = edPercentKeyPress
    end
    object edSum: TLabeledEdit
      Left = 336
      Top = 40
      Width = 97
      Height = 28
      EditLabel.Width = 49
      EditLabel.Height = 20
      EditLabel.Caption = #1057#1091#1084#1084#1072
      TabOrder = 2
      OnKeyPress = edSumKeyPress
    end
  end
  object btnOk: TBitBtn
    Left = 8
    Top = 112
    Width = 97
    Height = 33
    TabOrder = 1
    OnClick = btnOkClick
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 136
    Top = 112
    Width = 97
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 272
    Top = 112
  end
end
