object frmPrintParams: TfrmPrintParams
  Left = 0
  Top = 0
  Width = 443
  Height = 270
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object VLE: TValueListEditor
    Left = 0
    Top = 0
    Width = 426
    Height = 0
    Align = alClient
    DefaultRowHeight = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleCaptions.Strings = (
      #1050#1086#1083#1086#1085#1082#1072
      #1056#1072#1079#1084#1077#1088' ('#1084#1084'.)')
    OnKeyPress = edMLeftKeyPress
    ColWidths = (
      337
      87)
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 426
    Height = 165
    Align = alBottom
    Caption = #1055#1086#1083#1103' '#1083#1080#1089#1090#1072
    TabOrder = 1
    object edMLeft: TLabeledEdit
      Left = 24
      Top = 80
      Width = 121
      Height = 28
      EditLabel.Width = 48
      EditLabel.Height = 20
      EditLabel.Caption = #1051#1077#1074#1086#1077
      TabOrder = 0
      OnKeyPress = edMLeftKeyPress
    end
    object edMRight: TLabeledEdit
      Left = 344
      Top = 80
      Width = 121
      Height = 28
      EditLabel.Width = 57
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1072#1074#1086#1077
      TabOrder = 1
    end
    object edMTop: TLabeledEdit
      Left = 184
      Top = 48
      Width = 121
      Height = 28
      EditLabel.Width = 63
      EditLabel.Height = 20
      EditLabel.Caption = #1042#1077#1088#1093#1085#1077#1077
      TabOrder = 2
    end
    object edMBottom: TLabeledEdit
      Left = 184
      Top = 120
      Width = 121
      Height = 28
      EditLabel.Width = 59
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1080#1078#1085#1077#1077
      TabOrder = 3
    end
  end
  object rgOrient: TRadioGroup
    Left = 0
    Top = 165
    Width = 426
    Height = 72
    Align = alBottom
    Caption = #1054#1088#1080#1077#1085#1090#1072#1094#1080#1103' '#1073#1091#1084#1072#1075#1080
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1086#1073#1099#1095#1085#1072#1103
      #1072#1083#1100#1073#1086#1084#1085#1072#1103)
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 426
    Height = 92
    Align = alBottom
    TabOrder = 3
    object btnOk: TBitBtn
      Left = 40
      Top = 32
      Width = 121
      Height = 41
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 200
      Top = 32
      Width = 121
      Height = 41
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
