object fmEdSpec: TfmEdSpec
  Left = 372
  Top = 190
  Width = 350
  Height = 342
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 342
    Height = 241
    Align = alTop
    TabOrder = 0
    object edCode: TLabeledEdit
      Left = 8
      Top = 32
      Width = 49
      Height = 28
      EditLabel.Width = 30
      EditLabel.Height = 20
      EditLabel.Caption = #1050#1086#1076
      TabOrder = 2
      OnKeyPress = edCodeKeyPress
    end
    object edName: TLabeledEdit
      Left = 88
      Top = 32
      Width = 225
      Height = 28
      EditLabel.Width = 113
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      MaxLength = 20
      TabOrder = 0
    end
    object edInfo: TLabeledEdit
      Left = 8
      Top = 192
      Width = 305
      Height = 28
      EditLabel.Width = 95
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      MaxLength = 50
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 72
      Width = 305
      Height = 89
      Caption = #1057#1090#1072#1074#1082#1080
      TabOrder = 1
      object edSelfRepayment: TLabeledEdit
        Left = 128
        Top = 44
        Width = 89
        Height = 28
        EditLabel.Width = 137
        EditLabel.Height = 20
        EditLabel.Caption = #1057#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100
        TabOrder = 1
        OnKeyPress = edSelfRepaymentKeyPress
      end
      object edBudget: TLabeledEdit
        Left = 16
        Top = 44
        Width = 89
        Height = 28
        EditLabel.Width = 63
        EditLabel.Height = 20
        EditLabel.Caption = #1041#1102#1076#1078#1077#1090
        TabOrder = 0
        OnKeyPress = edBudgetKeyPress
      end
    end
  end
  object btnOK: TBitBtn
    Left = 8
    Top = 256
    Width = 97
    Height = 33
    TabOrder = 1
    Kind = bkOK
  end
  object btnCancel: TBitBtn
    Left = 128
    Top = 256
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 264
    Top = 256
  end
end
