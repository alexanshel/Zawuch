object fmEdCurr: TfmEdCurr
  Left = 266
  Top = 286
  Width = 821
  Height = 296
  Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 81
    Align = alTop
    TabOrder = 0
    object edName: TLabeledEdit
      Left = 16
      Top = 36
      Width = 377
      Height = 28
      EditLabel.Width = 113
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      TabOrder = 0
      OnEnter = edNameChange
    end
    object GroupBox1: TGroupBox
      Left = 400
      Top = 8
      Width = 329
      Height = 65
      Caption = #1055#1077#1088#1080#1086#1076' '#1086#1073#1091#1095#1077#1085#1080#1103
      TabOrder = 1
      object Label1: TLabel
        Left = 104
        Top = 31
        Width = 92
        Height = 20
        Caption = #1076#1083#1103' '#1087#1077#1095#1072#1090#1080':'
      end
      object cbPeriod: TComboBox
        Left = 10
        Top = 28
        Width = 73
        Height = 28
        AutoComplete = False
        ItemHeight = 20
        ItemIndex = 7
        TabOrder = 0
        Text = '8'
        OnEnter = edNameChange
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
      object edPeriodForPrint: TEdit
        Left = 200
        Top = 28
        Width = 121
        Height = 28
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 813
    Height = 120
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 811
      Height = 118
      Align = alClient
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
      TabOrder = 0
      object rgCat0: TRadioGroup
        Left = 8
        Top = 24
        Width = 70
        Height = 80
        Caption = '0 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 0
        OnEnter = edNameChange
      end
      object rgCat1: TRadioGroup
        Left = 88
        Top = 24
        Width = 70
        Height = 80
        Caption = '1 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 1
        OnEnter = edNameChange
      end
      object rgCat2: TRadioGroup
        Left = 168
        Top = 24
        Width = 70
        Height = 80
        Caption = '2 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 2
        OnEnter = edNameChange
      end
      object rgCat3: TRadioGroup
        Left = 248
        Top = 24
        Width = 70
        Height = 80
        Caption = '3 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 3
        OnEnter = edNameChange
      end
      object rgCat4: TRadioGroup
        Left = 328
        Top = 24
        Width = 70
        Height = 80
        Caption = '4 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 4
        OnEnter = edNameChange
      end
      object rgCat5: TRadioGroup
        Left = 408
        Top = 24
        Width = 70
        Height = 80
        Caption = '5 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 5
        OnEnter = edNameChange
      end
      object rgCat6: TRadioGroup
        Left = 488
        Top = 24
        Width = 70
        Height = 80
        Caption = '6 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 6
        OnEnter = edNameChange
      end
      object rgCat7: TRadioGroup
        Left = 568
        Top = 24
        Width = 70
        Height = 80
        Caption = '7 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 7
        OnEnter = edNameChange
      end
      object rgCat8: TRadioGroup
        Left = 648
        Top = 24
        Width = 70
        Height = 80
        Caption = '8 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 8
        OnEnter = edNameChange
      end
      object rgCat9: TRadioGroup
        Left = 728
        Top = 24
        Width = 70
        Height = 80
        Caption = '9 '#1082#1083#1072#1089#1089
        ItemIndex = 0
        Items.Strings = (
          '----'
          #1084#1083'.'
          #1089#1090'.')
        TabOrder = 9
        OnEnter = edNameChange
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 201
    Width = 813
    Height = 61
    Align = alClient
    TabOrder = 2
    object btnCancel: TBitBtn
      Left = 160
      Top = 12
      Width = 97
      Height = 33
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      Kind = bkCancel
    end
    object btnOK: TBitBtn
      Left = 16
      Top = 12
      Width = 89
      Height = 33
      TabOrder = 1
      Kind = bkOK
    end
  end
  object FormPlacement1: TFormPlacement
    Options = [fpPosition]
    Left = 296
    Top = 208
  end
end
