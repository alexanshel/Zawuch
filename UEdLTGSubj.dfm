object fmEdLTGSubj: TfmEdLTGSubj
  Left = 229
  Top = 148
  Width = 772
  Height = 550
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1089#1077#1090#1082#1080' '#1091#1095#1077#1073#1085#1099#1093' '#1095#1072#1089#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object gbGrouping: TGroupBox
    Left = 0
    Top = 0
    Width = 764
    Height = 160
    Align = alTop
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1091#1087#1087#1086#1074#1099#1093' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' ('#1089#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080' '#1086#1090#1076#1077#1083#1077#1085#1080#1081')'
    TabOrder = 0
    object dbgGrouping: TRxDBGrid
      Left = 244
      Top = 22
      Width = 518
      Height = 136
      Align = alClient
      DataSource = dsGrouping
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object pGrCtrl: TPanel
      Left = 2
      Top = 22
      Width = 239
      Height = 136
      Align = alLeft
      TabOrder = 1
      DesignSize = (
        239
        136)
      object btnAddGrouping: TSpeedButton
        Left = 8
        Top = 16
        Width = 225
        Height = 33
        Action = aAddGrouping
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnDelGrouping: TSpeedButton
        Left = 8
        Top = 64
        Width = 225
        Height = 33
        Action = aDelGrouping
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RxSplitter2: TRxSplitter
      Left = 241
      Top = 22
      Width = 3
      Height = 136
      ControlFirst = pGrCtrl
      ControlSecond = dbgGrouping
      Align = alLeft
    end
  end
  object gbISubj: TGroupBox
    Left = 0
    Top = 163
    Width = 764
    Height = 333
    Align = alClient
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1093' '#1087#1088#1077#1076#1084#1077#1090#1086#1074
    TabOrder = 1
    object dbgISubj: TRxDBGrid
      Left = 244
      Top = 22
      Width = 518
      Height = 309
      Align = alClient
      DataSource = dsISubj
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgISubjDrawColumnCell
    end
    object pISubjCtrl: TPanel
      Left = 2
      Top = 22
      Width = 239
      Height = 309
      Align = alLeft
      TabOrder = 1
      DesignSize = (
        239
        309)
      object btnAddISubj: TSpeedButton
        Left = 8
        Top = 16
        Width = 225
        Height = 33
        Action = aAddISubj
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnEditISubj: TSpeedButton
        Left = 8
        Top = 64
        Width = 225
        Height = 33
        Action = aEditISubj
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnDelISubj: TSpeedButton
        Left = 8
        Top = 112
        Width = 225
        Height = 33
        Action = aDelISubj
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnUp: TSpeedButton
        Left = 192
        Top = 176
        Width = 33
        Height = 33
        Flat = True
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFF
          AAFFFFAAFFFFFFFFFFFFFFFFFFFFFFFFAAAFFAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFAAAAAAAA
          AAAAAAAAAAAAAAAAFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFAAAAAA
          AAAAAAAAAAAAAAFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFAAAA
          AAAAAAAAAAAAFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFAA
          AAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFF
          FFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnUpClick
      end
      object btnDown: TSpeedButton
        Left = 192
        Top = 216
        Width = 33
        Height = 33
        Flat = True
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFF
          FAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFA
          AAAAAAAAAFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFAAA
          AAAAAAAAAAAFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFAAAAA
          AAAAAAAAAAAAAFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFAAAAAAA
          AAAAAAAAAAAAAAAFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFAAAAAAAAA
          AAAAAAAAAAAAAAAAAFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFF
          AAAFFAAAFFFFFFFFFFFFFFFFFFFFFFFFAAFFFFAAFFFFFFFFFFFFFFFFFFFFFFFF
          AFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnDownClick
      end
    end
    object RxSplitter3: TRxSplitter
      Left = 241
      Top = 22
      Width = 3
      Height = 309
      ControlFirst = pISubjCtrl
      ControlSecond = dbgISubj
      Align = alLeft
    end
  end
  object RxSplitter1: TRxSplitter
    Left = 0
    Top = 160
    Width = 764
    Height = 3
    ControlFirst = gbGrouping
    ControlSecond = gbISubj
    Align = alTop
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'gbGrouping.Height'
      'pGrCtrl.Width'
      'pISubjCtrl.Width')
    StoredValues = <>
    Left = 632
    Top = 25
  end
  object MainMenu: TMainMenu
    Left = 448
    Top = 137
    object miOperations: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object miGrouping: TMenuItem
        Caption = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1100
        object miAddGrouping: TMenuItem
          Action = aAddGrouping
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        end
        object miDelGrouping: TMenuItem
          Action = aDelGrouping
          Caption = #1059#1076#1072#1083#1080#1090#1100
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miISubj: TMenuItem
        Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1084#1077#1090
        object miAddISubj: TMenuItem
          Action = aAddISubj
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        end
        object miEditISubj: TMenuItem
          Action = aEditISubj
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '
        end
        object miDelISubj: TMenuItem
          Action = aDelISubj
          Caption = #1059#1076#1072#1083#1080#1090#1100
        end
      end
    end
    object miPrint: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
    end
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
  object dsGrouping: TDataSource
    OnDataChange = dsGroupingDataChange
    Left = 344
    Top = 104
  end
  object dsISubj: TDataSource
    OnDataChange = dsISubjDataChange
    Left = 344
    Top = 203
  end
  object AL: TActionList
    Left = 528
    Top = 72
    object aAddGrouping: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1100
      OnExecute = aAddGroupingExecute
    end
    object aDelGrouping: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1100
      OnExecute = aDelGroupingExecute
    end
    object aAddISubj: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      OnExecute = aAddISubjExecute
    end
    object aEditISubj: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      OnExecute = aEditISubjExecute
    end
    object aDelISubj: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      OnExecute = aDelISubjExecute
    end
    object aCheckBtn: TAction
      OnExecute = aCheckBtnExecute
    end
  end
end
