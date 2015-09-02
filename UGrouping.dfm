object fmGrouping: TfmGrouping
  Left = 108
  Top = 1
  Width = 869
  Height = 713
  HelpContext = 24
  Caption = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080' '#1086#1090#1076#1077#1083#1077#1085#1080#1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'zawuch.hlp'
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object pGroupings: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 289
    Align = alTop
    TabOrder = 0
    object pGrouping: TPanel
      Left = 177
      Top = 1
      Width = 415
      Height = 287
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 415
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 415
          Height = 25
          Align = alTop
          Caption = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080' '#1086#1090#1076#1077#1083#1077#1085#1080#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object dbgGrouping: TRxDBGrid
        Left = 0
        Top = 25
        Width = 415
        Height = 262
        Align = alClient
        DataSource = dsGrouping
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        IniStorage = FormStorage
        Columns = <
          item
            Expanded = False
            FieldName = 'NAME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Financing'
            Visible = True
          end>
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 176
      Height = 287
      Align = alLeft
      Caption = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object btnAddGrouping: TSpeedButton
        Left = 8
        Top = 34
        Width = 153
        Height = 32
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAddGroupingClick
      end
      object btnEditGrouping: TSpeedButton
        Left = 8
        Top = 75
        Width = 153
        Height = 33
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10485760
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnEditGroupingClick
      end
      object btnDelGrouping: TSpeedButton
        Left = 8
        Top = 120
        Width = 153
        Height = 33
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnDelGroupingClick
      end
    end
    object pDepts: TPanel
      Left = 595
      Top = 1
      Width = 265
      Height = 287
      Align = alClient
      TabOrder = 2
      object dbgGroupingDept: TRxDBGrid
        Left = 1
        Top = 26
        Width = 263
        Height = 260
        TabStop = False
        Align = alClient
        Color = clInfoBk
        DataSource = dsGroupingDept
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        IniStorage = FormStorage
        Columns = <
          item
            Expanded = False
            FieldName = 'Department'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 263
        Height = 25
        Align = alTop
        Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object spGr_Dept: TRxSplitter
      Left = 592
      Top = 1
      Width = 3
      Height = 287
      ControlFirst = pGrouping
      ControlSecond = pDepts
      Align = alLeft
    end
  end
  object spGrDept_Subj: TRxSplitter
    Left = 0
    Top = 289
    Width = 861
    Height = 0
    ControlFirst = pGroupings
    ControlSecond = pGrSubj
    Align = alTop
  end
  object pGrSubj: TPanel
    Left = 0
    Top = 289
    Width = 861
    Height = 370
    Align = alClient
    TabOrder = 2
    object pSubjCtrl: TPanel
      Left = 1
      Top = 1
      Width = 249
      Height = 368
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object btnAddSubj: TSpeedButton
        Left = 5
        Top = 19
        Width = 236
        Height = 33
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnAddSubjClick
      end
      object btnEdit: TSpeedButton
        Left = 5
        Top = 85
        Width = 236
        Height = 33
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnEditClick
      end
      object btnDelSubj: TSpeedButton
        Left = 5
        Top = 134
        Width = 236
        Height = 33
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnDelSubjClick
      end
      object btnExtractAll: TSpeedButton
        Left = 5
        Top = 184
        Width = 236
        Height = 58
        Caption = #1048#1079#1074#1083#1077#1095#1100' '#1074#1089#1077' '#1087#1088#1077#1076#1084#1077#1090#1099#10#13#1072#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnExtractAllClick
      end
      object btnUp: TSpeedButton
        Left = 200
        Top = 264
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
        Left = 200
        Top = 312
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
    object dbgGrSubject: TRxDBGrid
      Left = 250
      Top = 1
      Width = 610
      Height = 368
      Align = alClient
      DataSource = dsGrSubj
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgGrSubjectDrawColumnCell
      OnDblClick = dbgGrSubjectDblClick
      IniStorage = FormStorage
      Columns = <
        item
          Expanded = False
          FieldName = 'GR_SUBJ_NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY'
          Visible = True
        end>
    end
  end
  object dsGroupingDept: TDataSource
    Left = 721
    Top = 145
  end
  object dsGrouping: TDataSource
    Left = 344
    Top = 184
  end
  object dsGrSubj: TDataSource
    OnDataChange = dsGrSubjDataChange
    Left = 440
    Top = 508
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'pGrouping.Width'
      'pGroupings.Height')
    StoredValues = <>
    Left = 73
    Top = 177
  end
  object MainMenu1: TMainMenu
    Left = 217
    Top = 153
    object miHelp: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = miHelpClick
    end
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
end
