object fmEditMainTab: TfmEditMainTab
  Left = 195
  Top = 264
  BorderStyle = bsSingle
  ClientHeight = 197
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 312
    Top = 130
    Width = 39
    Height = 20
    Caption = #1044#1072#1090#1072
  end
  object edDaysQty: TLabeledEdit
    Left = 248
    Top = 154
    Width = 49
    Height = 28
    EditLabel.Width = 30
    EditLabel.Height = 20
    EditLabel.Caption = #1044#1085#1080
    TabOrder = 3
    OnKeyPress = edDaysQtyKeyPress
  end
  object edDate: TDateTimePicker
    Left = 312
    Top = 154
    Width = 161
    Height = 28
    Date = 38799.436612615740000000
    Format = 'MMMM.yyyy'
    Time = 38799.436612615740000000
    DateFormat = dfLong
    DateMode = dmUpDown
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 217
    Height = 97
    Caption = #1041#1102#1076#1078#1077#1090
    TabOrder = 0
    object edBYT: TLabeledEdit
      Left = 12
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 25
      EditLabel.Height = 20
      EditLabel.Caption = #1084#1083'.'
      TabOrder = 0
      OnKeyPress = edBYTKeyPress
    end
    object edBOT: TLabeledEdit
      Left = 81
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 21
      EditLabel.Height = 20
      EditLabel.Caption = #1089#1090'.'
      TabOrder = 1
      OnKeyPress = edBYTKeyPress
    end
    object edBCT: TLabeledEdit
      Left = 150
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 35
      EditLabel.Height = 20
      EditLabel.Caption = #1082#1086#1085#1094
      TabOrder = 2
      OnKeyPress = edBYTKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 248
    Top = 16
    Width = 217
    Height = 97
    Caption = #1057#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100
    TabOrder = 1
    object edSYT: TLabeledEdit
      Left = 12
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 25
      EditLabel.Height = 20
      EditLabel.Caption = #1084#1083'.'
      TabOrder = 0
      OnKeyPress = edBYTKeyPress
    end
    object edSOT: TLabeledEdit
      Left = 81
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 21
      EditLabel.Height = 20
      EditLabel.Caption = #1089#1090'.'
      TabOrder = 1
      OnKeyPress = edBYTKeyPress
    end
    object edSCT: TLabeledEdit
      Left = 150
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 39
      EditLabel.Height = 20
      EditLabel.Caption = #1082#1086#1085#1094'.'
      TabOrder = 2
      OnKeyPress = edBYTKeyPress
    end
  end
  object GroupBox3: TGroupBox
    Left = 480
    Top = 16
    Width = 153
    Height = 97
    Caption = #1055#1086#1076#1075#1086#1090#1086#1074'.'
    TabOrder = 2
    object edBeYT: TLabeledEdit
      Left = 13
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 25
      EditLabel.Height = 20
      EditLabel.Caption = #1084#1083'.'
      TabOrder = 0
      OnKeyPress = edBYTKeyPress
    end
    object edBeCT: TLabeledEdit
      Left = 82
      Top = 52
      Width = 49
      Height = 28
      EditLabel.Width = 39
      EditLabel.Height = 20
      EditLabel.Caption = #1082#1086#1085#1094'.'
      TabOrder = 1
      OnKeyPress = edBYTKeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 152
    Width = 89
    Height = 33
    TabOrder = 5
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 152
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 6
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 504
    Top = 160
  end
end
