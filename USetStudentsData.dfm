object fmSetStudentsData: TfmSetStudentsData
  Left = 662
  Top = 241
  Width = 709
  Height = 517
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1076#1072#1085#1085#1099#1093
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
  object BitBtn1: TBitBtn
    Left = 24
    Top = 408
    Width = 113
    Height = 33
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 408
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    Kind = bkCancel
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 81
    Align = alTop
    TabOrder = 2
    object btnChSpec: TSpeedButton
      Left = 512
      Top = 36
      Width = 49
      Height = 29
      Caption = '>>'
      OnClick = btnChSpecClick
    end
    object btnResSpec: TSpeedButton
      Left = 576
      Top = 36
      Width = 33
      Height = 29
      Caption = 'C'
      OnClick = btnResSpecClick
    end
    object edDept: TLabeledEdit
      Tag = -1
      Left = 16
      Top = 37
      Width = 273
      Height = 28
      EditLabel.Width = 87
      EditLabel.Height = 20
      EditLabel.Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      ReadOnly = True
      TabOrder = 0
      Text = #1053#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
    end
    object edSpec: TLabeledEdit
      Tag = -1
      Left = 336
      Top = 37
      Width = 177
      Height = 28
      EditLabel.Width = 119
      EditLabel.Height = 20
      EditLabel.Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
      ReadOnly = True
      TabOrder = 1
      Text = #1053#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 701
    Height = 80
    Align = alTop
    TabOrder = 3
    object btnChCurator: TSpeedButton
      Left = 192
      Top = 35
      Width = 49
      Height = 29
      Caption = '>>'
      OnClick = btnChCuratorClick
    end
    object btnResCurator: TSpeedButton
      Left = 256
      Top = 35
      Width = 33
      Height = 29
      Caption = 'C'
      OnClick = btnResCuratorClick
    end
    object btnChFilial: TSpeedButton
      Left = 512
      Top = 35
      Width = 49
      Height = 29
      Caption = '>>'
      OnClick = btnChFilialClick
    end
    object btnResFilial: TSpeedButton
      Left = 576
      Top = 35
      Width = 33
      Height = 29
      Caption = 'C'
      OnClick = btnResFilialClick
    end
    object edCurator: TLabeledEdit
      Tag = -1
      Left = 16
      Top = 36
      Width = 177
      Height = 28
      EditLabel.Width = 62
      EditLabel.Height = 20
      EditLabel.Caption = #1050#1091#1088#1072#1090#1086#1088
      ReadOnly = True
      TabOrder = 0
      Text = #1053#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
    end
    object edFilial: TLabeledEdit
      Tag = -1
      Left = 336
      Top = 36
      Width = 177
      Height = 28
      EditLabel.Width = 62
      EditLabel.Height = 20
      EditLabel.Caption = #1060#1080#1083#1080#1072#1083
      ReadOnly = True
      TabOrder = 1
      Text = #1053#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 701
    Height = 112
    Align = alTop
    TabOrder = 4
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 45
      Height = 20
      Caption = #1050#1083#1072#1089#1089
    end
    object edResPercent: TSpeedButton
      Left = 640
      Top = 48
      Width = 29
      Height = 28
      Caption = #1057
      OnClick = edResPercentClick
    end
    object btnResClass: TSpeedButton
      Left = 160
      Top = 48
      Width = 27
      Height = 27
      Caption = 'C'
      OnClick = btnResClassClick
    end
    object cbClass: TComboBox
      Left = 16
      Top = 48
      Width = 129
      Height = 28
      ItemHeight = 20
      TabOrder = 0
      Text = #1053#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
      OnKeyPress = cbClassKeyPress
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
    object rgFinancing: TRadioGroup
      Left = 232
      Top = 8
      Width = 217
      Height = 89
      Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1077
      ItemIndex = 0
      Items.Strings = (
        #1085#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
        #1073#1102#1076#1078#1077#1090
        #1089#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1100)
      TabOrder = 1
    end
    object edPercent: TLabeledEdit
      Tag = -1
      Left = 488
      Top = 48
      Width = 137
      Height = 28
      EditLabel.Width = 127
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1086#1094#1077#1085#1090' '#1086#1087#1083#1072#1090#1099
      TabOrder = 2
      Text = #1053#1077' '#1080#1079#1084#1077#1085#1103#1090#1100
      OnEnter = edPercentEnter
      OnExit = edPercentExit
      OnKeyPress = edPercentKeyPress
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 273
    Width = 701
    Height = 112
    Align = alTop
    TabOrder = 5
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 132
      Height = 20
      Caption = #1044#1072#1090#1072' '#1079#1072#1095#1080#1089#1083#1077#1085#1080#1103
    end
    object Label3: TLabel
      Left = 208
      Top = 16
      Width = 133
      Height = 20
      Caption = #1044#1072#1090#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
    end
    object Label4: TLabel
      Left = 16
      Top = 80
      Width = 317
      Height = 20
      Caption = #1055#1088#1080' '#1089#1085#1103#1090#1086#1084' '#1092#1083#1072#1078#1082#1077' '#1076#1072#1090#1072' '#1085#1077' '#1079#1072#1084#1077#1085#1103#1077#1090#1089#1103'!'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edEnterDate: TDateTimePicker
      Left = 16
      Top = 40
      Width = 153
      Height = 28
      Date = 0.639827361112111200
      Time = 0.639827361112111200
      ShowCheckbox = True
      Checked = False
      TabOrder = 0
    end
    object edReleaseDate: TDateTimePicker
      Left = 208
      Top = 40
      Width = 153
      Height = 28
      Date = 0.639827361112111200
      Time = 0.639827361112111200
      ShowCheckbox = True
      Checked = False
      TabOrder = 1
    end
    object rgChangeMethod: TRadioGroup
      Left = 408
      Top = 8
      Width = 281
      Height = 97
      Caption = #1052#1077#1090#1086#1076' '#1079#1072#1084#1077#1085#1099
      ItemIndex = 0
      Items.Strings = (
        #1076#1083#1103' '#1074#1089#1077#1093
        #1090#1086#1083#1100#1082#1086' '#1087#1091#1089#1090#1099#1077
        #1079#1072#1087#1086#1083#1085#1077#1085#1085#1099#1077)
      TabOrder = 2
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 440
    Top = 432
  end
end
