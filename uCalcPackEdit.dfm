object frmCalcPackEdit: TfrmCalcPackEdit
  Left = 0
  Top = 0
  Width = 506
  Height = 436
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object pFrame: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 436
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 494
      Height = 424
      Align = alClient
      Caption = #1053#1086#1074#1099#1081' '#1087#1072#1082#1077#1090' '#1088#1072#1089#1095#1105#1090#1086#1074
      TabOrder = 0
      DesignSize = (
        494
        424)
      object Label5: TLabel
        Left = 8
        Top = 40
        Width = 113
        Height = 20
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      object Label6: TLabel
        Left = 8
        Top = 80
        Width = 81
        Height = 20
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      end
      object Label7: TLabel
        Left = 8
        Top = 216
        Width = 67
        Height = 20
        Caption = #1055#1086#1076#1087#1080#1089#1100
      end
      object edHeader: TEdit
        Left = 128
        Top = 32
        Width = 347
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object mHeader: TMemo
        Left = 16
        Top = 104
        Width = 459
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object mFooter: TMemo
        Left = 16
        Top = 240
        Width = 459
        Height = 113
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object bbOK: TBitBtn
        Left = 172
        Top = 377
        Width = 142
        Height = 33
        Anchors = [akRight, akBottom]
        Caption = #1054#1050
        TabOrder = 3
        OnClick = bbOKClick
      end
      object bbCancel: TBitBtn
        Left = 335
        Top = 377
        Width = 142
        Height = 33
        Anchors = [akRight, akBottom]
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        TabOrder = 4
      end
    end
  end
end
