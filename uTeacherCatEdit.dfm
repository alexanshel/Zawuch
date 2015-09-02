object fmTeacherCatEdit: TfmTeacherCatEdit
  Left = 520
  Top = 305
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1080
  ClientHeight = 247
  ClientWidth = 631
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
    Top = 196
    Width = 631
    Height = 51
    Align = alBottom
    TabOrder = 0
    object btnOk: TBitBtn
      Left = 22
      Top = 12
      Width = 113
      Height = 33
      TabOrder = 0
      OnClick = btnOkClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 174
      Top = 12
      Width = 113
      Height = 33
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 631
    Height = 196
    Align = alClient
    TabOrder = 1
    DesignSize = (
      631
      196)
    object Label1: TLabel
      Left = 8
      Top = 128
      Width = 112
      Height = 20
      Caption = #1050#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
    end
    object edName: TLabeledEdit
      Left = 8
      Top = 32
      Width = 360
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 113
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      TabOrder = 0
    end
    object edPrintName: TLabeledEdit
      Left = 8
      Top = 88
      Width = 612
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 205
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1087#1077#1095#1072#1090#1080
      TabOrder = 1
    end
    object edCoef: TJvValidateEdit
      Left = 8
      Top = 152
      Width = 121
      Height = 28
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloatGeneral
      EditText = '0'
      TabOrder = 2
    end
  end
end
