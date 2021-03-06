object fmTariffication: TfmTariffication
  Left = 335
  Top = 253
  Width = 1028
  Height = 566
  HelpContext = 35
  Caption = #1058#1072#1088#1080#1092#1080#1082#1072#1094#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'zawuch.hlp'
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 169
    Align = alTop
    TabOrder = 0
    object btnCalc: TSpeedButton
      Left = 432
      Top = 16
      Width = 145
      Height = 33
      Caption = #1056#1072#1089#1095#1077#1090
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCalcClick
    end
    object btnDel: TSpeedButton
      Left = 600
      Top = 16
      Width = 217
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1072#1088#1080#1092#1080#1082#1072#1094#1080#1102
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDelClick
    end
    object btnDelRec: TSpeedButton
      Left = 672
      Top = 128
      Width = 161
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDelRecClick
    end
    object btnEditRec: TSpeedButton
      Left = 424
      Top = 128
      Width = 225
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditRecClick
    end
    object dbgTariffication: TRxDBGrid
      Left = 1
      Top = 1
      Width = 400
      Height = 167
      DataSource = dsTariffication
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DOC_DATE'
          Title.Caption = #1042#1088#1077#1084#1103' '#1088#1072#1089#1095#1105#1090#1072
          Width = 350
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 1020
    Height = 16
    Align = alTop
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 332
    Width = 1020
    Height = 180
    Align = alBottom
    TabOrder = 2
    object Label12: TLabel
      Left = 848
      Top = 144
      Width = 53
      Height = 20
      Caption = #1048#1058#1054#1043#1054
    end
    object Label13: TLabel
      Left = 923
      Top = 22
      Width = 76
      Height = 20
      Caption = #1053#1072#1076#1073#1072#1074#1082#1080
    end
    object Label14: TLabel
      Left = 16
      Top = 144
      Width = 60
      Height = 20
      Caption = #1044#1080#1087#1083#1086#1084
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 358
      Height = 121
      Caption = #1063#1072#1089#1099
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 48
        Width = 63
        Height = 20
        Caption = #1041#1102#1076#1078#1077#1090
      end
      object Label2: TLabel
        Left = 8
        Top = 88
        Width = 77
        Height = 20
        Caption = #1057#1072#1084#1086#1086#1082#1091#1087'.'
      end
      object Label3: TLabel
        Left = 104
        Top = 16
        Width = 72
        Height = 20
        Caption = #1084#1083#1072#1076#1096#1080#1077
      end
      object Label4: TLabel
        Left = 184
        Top = 16
        Width = 66
        Height = 20
        Caption = #1089#1090#1072#1088#1096#1080#1077
      end
      object Label5: TLabel
        Left = 264
        Top = 16
        Width = 77
        Height = 20
        Caption = #1082#1086#1085#1094#1077#1088#1090#1084'.'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 40
        Width = 65
        Height = 28
        DataField = 'T_B_TIME_Y'
        DataSource = dsTarifficationRec
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 184
        Top = 40
        Width = 65
        Height = 28
        DataField = 'T_B_TIME_O'
        DataSource = dsTarifficationRec
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 264
        Top = 40
        Width = 65
        Height = 28
        DataField = 'T_B_TIME_C'
        DataSource = dsTarifficationRec
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 80
        Width = 65
        Height = 28
        DataField = 'T_S_TIME_Y'
        DataSource = dsTarifficationRec
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 80
        Width = 65
        Height = 28
        DataField = 'T_S_TIME_O'
        DataSource = dsTarifficationRec
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 264
        Top = 80
        Width = 65
        Height = 28
        DataField = 'T_S_TIME_C'
        DataSource = dsTarifficationRec
        TabOrder = 5
      end
    end
    object GroupBox2: TGroupBox
      Left = 373
      Top = 8
      Width = 537
      Height = 121
      Caption = #1047'/'#1087#1083#1072#1090#1072
      TabOrder = 1
      object Label6: TLabel
        Left = 88
        Top = 16
        Width = 72
        Height = 20
        Caption = #1084#1083#1072#1076#1096#1080#1077
      end
      object Label7: TLabel
        Left = 8
        Top = 48
        Width = 63
        Height = 20
        Caption = #1041#1102#1076#1078#1077#1090
      end
      object Label8: TLabel
        Left = 8
        Top = 88
        Width = 77
        Height = 20
        Caption = #1057#1072#1084#1086#1086#1082#1091#1087'.'
      end
      object Label9: TLabel
        Left = 200
        Top = 16
        Width = 66
        Height = 20
        Caption = #1089#1090#1072#1088#1096#1080#1077
      end
      object Label10: TLabel
        Left = 312
        Top = 16
        Width = 77
        Height = 20
        Caption = #1082#1086#1085#1094#1077#1088#1090#1084'.'
      end
      object Label11: TLabel
        Left = 424
        Top = 16
        Width = 49
        Height = 20
        Caption = #1057#1091#1084#1084#1072
      end
      object DBEdit7: TDBEdit
        Left = 88
        Top = 80
        Width = 97
        Height = 28
        DataField = 'SMoneyY'
        DataSource = dsTarifficationRec
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 40
        Width = 97
        Height = 28
        DataField = 'BMoneyY'
        DataSource = dsTarifficationRec
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 200
        Top = 40
        Width = 97
        Height = 28
        DataField = 'BMoneyO'
        DataSource = dsTarifficationRec
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 200
        Top = 80
        Width = 97
        Height = 28
        DataField = 'SMoneyO'
        DataSource = dsTarifficationRec
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 312
        Top = 40
        Width = 97
        Height = 28
        DataField = 'BMoneyC'
        DataSource = dsTarifficationRec
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 312
        Top = 80
        Width = 97
        Height = 28
        DataField = 'SMoneyC'
        DataSource = dsTarifficationRec
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 424
        Top = 40
        Width = 105
        Height = 28
        DataField = 'SumB'
        DataSource = dsTarifficationRec
        TabOrder = 6
      end
      object DBEdit14: TDBEdit
        Left = 424
        Top = 80
        Width = 105
        Height = 28
        DataField = 'SumS'
        DataSource = dsTarifficationRec
        TabOrder = 7
      end
    end
    object DBEdit15: TDBEdit
      Left = 912
      Top = 136
      Width = 97
      Height = 28
      DataField = 'SUM'
      DataSource = dsTarifficationRec
      TabOrder = 2
    end
    object DBEdit16: TDBEdit
      Left = 923
      Top = 46
      Width = 83
      Height = 28
      DataField = 'T_ADDINGS'
      DataSource = dsTarifficationRec
      TabOrder = 3
    end
    object DBEdit17: TDBEdit
      Left = 88
      Top = 136
      Width = 689
      Height = 28
      DataField = 'T_DIPLOMA'
      DataSource = dsTarifficationRec
      TabOrder = 4
    end
  end
  object dbgTarifficationRec: TRxDBGrid
    Left = 0
    Top = 185
    Width = 1020
    Height = 147
    Align = alClient
    DataSource = dsTarifficationRec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgTarifficationRecDrawColumnCell
    OnDblClick = dbgTarifficationRecDblClick
    IniStorage = FormStorage1
    Columns = <
      item
        Expanded = False
        FieldName = 'T_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_SUBJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_POST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_EDUCATION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Stage'
        Visible = True
      end>
  end
  object pInfo: TPanel
    Left = 256
    Top = 160
    Width = 417
    Height = 121
    Caption = #1056#1072#1089#1095#1105#1090' '#1090#1072#1088#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1086#1081' '#1074#1077#1076#1086#1084#1086#1089#1090#1080'...'
    TabOrder = 4
    Visible = False
  end
  object dsTariffication: TDataSource
    Left = 152
    Top = 56
  end
  object dsTarifficationRec: TDataSource
    Left = 16
    Top = 232
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 120
    object miPrint: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object miWord: TMenuItem
        Action = aPrintTarriffication
      end
      object miOptions: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        OnClick = miOptionsClick
      end
      object miTariffTotalTable: TMenuItem
        Caption = #1048#1090#1086#1075#1086#1074#1072#1103' '#1090#1072#1073#1083#1080#1094#1072
        OnClick = miTariffTotalTableClick
      end
      object miOldVerson: TMenuItem
        Caption = #1057#1090#1072#1088#1072#1103' '#1087#1077#1095#1072#1090#1085#1072#1103' '#1092#1086#1088#1084#1072
      end
      object miShowTarriffication: TMenuItem
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1072#1088#1080#1092#1080#1082#1072#1094#1080#1102
        OnClick = miShowTarrifficationClick
      end
      object miEditTarrifficationPrintForm: TMenuItem
        Action = aEditTarrifficationPrintForm
      end
    end
    object miHelp: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = miHelpClick
    end
    object miExit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miExitClick
    end
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 520
    Top = 256
  end
  object ActionList: TActionList
    Left = 440
    Top = 256
    object aEditRecord: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
    end
    object aPrintTarriffication: TAction
      Caption = '-> Word'
      OnExecute = aPrintTarrifficationExecute
    end
    object aEditTarrifficationPrintForm: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1077#1095#1072#1090#1085#1091#1102' '#1092#1086#1088#1084#1091' '#1090#1072#1088#1080#1092#1080#1082#1072#1094#1080#1080
      OnExecute = aEditTarrifficationPrintFormExecute
    end
  end
  object frxReport: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39328.584333576400000000
    ReportOptions.LastChange = 41688.890307581020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 736
    Top = 56
    Datasets = <
      item
        DataSet = frxdbdsTariffTotalTable
        DataSetName = 'frxdbdsTariffTotalTable'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 124.724490000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsTariffTotalTable
        DataSetName = 'frxdbdsTariffTotalTable'
        RowCount = 0
        object Memo21: TfrxMemoView
          Width = 340.157700000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1032#1057#8225#1056#181#1056#177#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#176' '#1056#1111#1056#1109' '#1056#1109#1057#1027#1056#1029#1056#1109#1056#1030#1056#1029#1056#1109#1056#1112#1057#1107' '#1056#1112#1056#181#1057#1027#1057#8218 +
              #1057#1107' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 340.157700000000000000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataField = 'T_Y_FT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_Y_FT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 415.748299999999900000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataField = 'T_O_FT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_O_FT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 491.338899999999700000
          Width = 75.590600000000030000
          Height = 22.677165350000000000
          DataField = 'T_C_FT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_C_FT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 566.929499999999900000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataField = 'M_Y_FT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_Y_FT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 684.094930000000000000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataField = 'M_O_FT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_O_FT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 801.260360000000000000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataField = 'M_C_FT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_C_FT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 22.677179999999990000
          Width = 340.157700000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1032#1057#8225#1056#181#1056#177#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#176' '#1056#1030#1056#1111#1056#1109#1057#1026#1057#1039#1056#1169#1056#1108#1056#181' '#1057#1027#1056#1109#1056#1030#1056#1112#1056#181#1057#1027#1057#8218#1056 +
              #1105#1057#8218#1056#181#1056#187#1057#1034#1057#1027#1057#8218#1056#1030#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 340.157700000000000000
          Top = 22.677179999999990000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataField = 'T_Y_PT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_Y_PT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 415.748299999999900000
          Top = 22.677179999999990000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataField = 'T_O_PT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_O_PT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 491.338899999999700000
          Top = 22.677179999999990000
          Width = 75.590600000000030000
          Height = 22.677165350000000000
          DataField = 'T_C_PT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_C_PT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 566.929499999999900000
          Top = 22.677179999999990000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataField = 'M_Y_PT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_Y_PT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 684.094930000000000000
          Top = 22.677179999999990000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataField = 'M_O_PT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_O_PT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 801.260360000000000000
          Top = 22.677179999999990000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataField = 'M_C_PT'
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_C_PT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Top = 45.354360000000010000
          Width = 340.157700000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1057#8216#1056#1029#1056#1029#1056#176#1057#1039' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 340.157700000000000000
          Top = 45.354360000000010000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_Y_V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 415.748299999999900000
          Top = 45.354360000000010000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_O_V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 491.338899999999700000
          Top = 45.354360000000010000
          Width = 75.590600000000030000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."T_C_V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 566.929499999999900000
          Top = 45.354360000000010000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_Y_V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 684.094930000000000000
          Top = 45.354360000000010000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_O_V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 801.260360000000000000
          Top = 45.354360000000010000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxdbdsTariffTotalTable."M_C_V"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Top = 68.031539999999970000
          Width = 340.157700000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1118#1056#1115#1056#8220#1056#1115)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 340.157700000000000000
          Top = 68.031539999999970000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."T_Y_FT"> + <frxdbdsTariffTotalTable."' +
              'T_Y_PT"> + <frxdbdsTariffTotalTable."T_Y_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 415.748299999999900000
          Top = 68.031539999999970000
          Width = 75.590600000000030000
          Height = 22.677180000000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."T_O_FT"> + <frxdbdsTariffTotalTable."' +
              'T_O_PT"> + <frxdbdsTariffTotalTable."T_O_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 491.338899999999700000
          Top = 68.031539999999970000
          Width = 75.590600000000030000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."T_C_FT"> + <frxdbdsTariffTotalTable."' +
              'T_C_PT"> + <frxdbdsTariffTotalTable."T_C_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 566.929499999999900000
          Top = 68.031539999999970000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."M_Y_FT"> +<frxdbdsTariffTotalTable."M' +
              '_Y_PT"> + <frxdbdsTariffTotalTable."M_Y_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 684.094930000000000000
          Top = 68.031539999999970000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."M_O_FT"> +<frxdbdsTariffTotalTable."M' +
              '_O_PT"> + <frxdbdsTariffTotalTable."M_O_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 801.260360000000000000
          Top = 68.031539999999970000
          Width = 117.165430000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."M_C_FT"> +<frxdbdsTariffTotalTable."M' +
              '_C_PT"> + <frxdbdsTariffTotalTable."M_C_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 918.425790000000000000
          Width = 120.944960000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."M_Y_FT"> + <frxdbdsTariffTotalTable."' +
              'M_O_FT"> +<frxdbdsTariffTotalTable."M_C_FT">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 918.425790000000000000
          Top = 22.677179999999990000
          Width = 120.944960000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."M_Y_PT"> + <frxdbdsTariffTotalTable."' +
              'M_O_PT"> +<frxdbdsTariffTotalTable."M_C_PT">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 918.425790000000000000
          Top = 45.354360000000010000
          Width = 120.944960000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<frxdbdsTariffTotalTable."M_Y_V"> + <frxdbdsTariffTotalTable."M' +
              '_O_V"> +<frxdbdsTariffTotalTable."M_C_V">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 918.425790000000000000
          Top = 68.031539999999970000
          Width = 120.944960000000000000
          Height = 22.677165350000000000
          DataSet = frxdbdsTariffTotalTable
          DataSetName = 'frxdbdsTariffTotalTable'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['
            
              ' <frxdbdsTariffTotalTable."M_Y_FT"> + <frxdbdsTariffTotalTable."' +
              'M_Y_PT"> + <frxdbdsTariffTotalTable."M_Y_V"> +'
            
              ' <frxdbdsTariffTotalTable."M_O_FT"> + <frxdbdsTariffTotalTable."' +
              'M_O_PT"> + <frxdbdsTariffTotalTable."M_O_V"> +'
            
              ' <frxdbdsTariffTotalTable."M_C_FT"> +  <frxdbdsTariffTotalTable.' +
              '"M_C_PT"> + <frxdbdsTariffTotalTable."M_C_V">'
            ']')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 37.795300000000000000
        Top = 173.858380000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#167#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 340.157700000000000000
          Top = 18.897650000000000000
          Width = 75.590514570000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1029#1057#8224'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 566.929499999999900000
          Width = 472.441250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1057#1026'. '#1056#1111#1056#187#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 566.929499999999900000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 684.094930000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1029#1057#8224'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 918.425790000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1105#1057#8218#1056#1109#1056#1110#1056#1109)
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo5: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 94.488250000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1030#1056#1109#1056#1169#1056#1029#1056#176#1057#1039' '#1057#8218#1056#176#1056#177#1056#187#1056#1105#1057#8224#1056#176' '
            
              #1056#1111#1056#181#1056#1169#1056#176#1056#1110#1056#1109#1056#1110#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1057#8230' '#1056#1105' '#1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470#1057#1027#1057#8218#1056#181#1057#1026#1057#1027#1056#1108 +
              #1056#1105#1057#8230' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030
            
              #1056#8221#1056#181#1057#8218#1057#1027#1056#1108#1056#1109#1056#8470' '#1057#8364#1056#1108#1056#1109#1056#187#1057#8249' '#1056#1105#1057#1027#1056#1108#1057#1107#1057#1027#1057#1027#1057#8218#1056#1030' '#1056#1105#1056#1112'. '#1056#8220'.'#1056#164'. '#1056#1119#1056#1109#1056#1029#1056#1109 +
              #1056#1112#1056#176#1057#1026#1056#181#1056#1029#1056#1108#1056#1109' '#1056#1114#1056#1115' '#1056#1110#1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027#1056#1029#1056#1109#1056#1169#1056#176#1057#1026
            #1056#1029#1056#176' ____ _____________  20___ '#1056#1110#1056#1109#1056#1169#1056#176)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 332.598640000000000000
        Top = 419.527830000000000000
        Width = 1046.929810000000000000
        object Memo7: TfrxMemoView
          Top = 3.779530000000022000
          Width = 1046.929810000000000000
          Height = 325.039580000000000000
          AllowHTMLTags = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            ''
            
              '<b>'#1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034':</b>                    '#1056#8212#1056#176#1056#1112'. '#1056#1169#1056#1105#1057#1026 +
              #1056#181#1056#1108#1057#8218#1056#1109#1057#1026#1056#176' '#1056#1111#1056#1109' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1056#1109#1056#8470' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#181'                   ' +
              '                      '#1056#1113#1057#1107#1056#187#1057#1039#1057#1027#1056#1109#1056#1030#1056#176' '#1056#1116'.'#1056#8217'.'
            ''
            ''
            ''
            '<b>'#1056#1119#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056#181#1056#1029#1056#1109':</b>'
            ''
            ''
            ''
            '<b>'#1056#1038#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1109#1056#1030#1056#176#1056#1029#1056#1109':</b>'
            
              #1056#8220#1056#187#1056#176#1056#1030#1056#1029#1057#8249#1056#8470' '#1057#1027#1056#1111#1056#181#1057#8224#1056#1105#1056#176#1056#187#1056#1105#1057#1027#1057#8218' '#1057#1107#1057#1026#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1108#1057#1107#1056#187#1057#1034#1057 +
              #8218#1057#1107#1057#1026#1057#8249' '
            
              #1056#176#1056#1169#1056#1112#1056#1105#1056#1029#1056#1105#1057#1027#1057#8218#1057#1026#1056#176#1057#8224#1056#1105#1056#1105' '#1056#1112#1057#1107#1056#1029#1056#1105#1057#8224#1056#1105#1056#1111#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1109#1056#177#1057#1026#1056#176 +
              #1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039
            #1056#1110#1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027#1056#1029#1056#1109#1056#1169#1056#176#1057#1026
            ''
            '____________________________E.'#1056#8216'. '#1056#1038#1056#181#1057#1026#1056#187#1056#1105#1056#1029#1056#176
            ''
            '"_____"______________________20     '#1056#1110'.')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdsTariffTotalTable: TfrxDBDataset
    UserName = 'frxdbdsTariffTotalTable'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DOC_DATE=DOC_DATE'
      'T_Y_PT=T_Y_PT'
      'T_Y_FT=T_Y_FT'
      'T_O_PT=T_O_PT'
      'T_O_FT=T_O_FT'
      'T_C_PT=T_C_PT'
      'T_C_FT=T_C_FT'
      'T_Y_V=T_Y_V'
      'T_O_V=T_O_V'
      'T_C_V=T_C_V'
      'M_Y_PT=M_Y_PT'
      'M_Y_FT=M_Y_FT'
      'M_O_PT=M_O_PT'
      'M_O_FT=M_O_FT'
      'M_C_PT=M_C_PT'
      'M_C_FT=M_C_FT'
      'M_Y_V=M_Y_V'
      'M_O_V=M_O_V'
      'M_C_V=M_C_V')
    DataSet = ibqTariffTotallTable
    Left = 840
    Top = 96
  end
  object ibqTariffTotallTable: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    DataSource = dsTariffication
    SQL.Strings = (
      'select *'
      'from v_tar_totals '
      'where doc_date = :doc_date')
    Left = 840
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'doc_date'
        ParamType = ptUnknown
      end>
  end
  object frxRTFExport: TfrxRTFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = True
    HeaderFooterMode = hfNone
    Left = 656
    Top = 56
  end
  object frxrTarriffication: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39328.584333576400000000
    ReportOptions.LastChange = 42250.909726331020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  p: Integer;'
      '  tmp: String;'
      ''
      'begin'
      '  Memo20.Text := '#39#39';'
      '  tmp := <ibqTarRecord."T_NAME">;'
      '  p := pos('#39' '#39', tmp);'
      '  if p <> 0 then'
      '  begin'
      '    Memo20.Text := Memo20.Text + copy(tmp, 1, p) + #13#10;'
      '    tmp := trim(copy(tmp, p + 1, length(tmp) - p));'
      '    p := pos('#39' '#39', tmp);'
      '  end;'
      '  if p <> 0 then'
      '  begin'
      '    Memo20.Text := Memo20.Text + copy(tmp, 1, p) + #13#10;'
      '    tmp := trim(copy(tmp, p + 1, length(tmp) - p));'
      '    p := pos('#39' '#39', tmp);'
      '  end;'
      ''
      '  Memo20.Text := Memo20.Text + trim(tmp);'
      ''
      '  Memo23.Text := '#39#39';'
      '  if <ibqTarRecord."T_STAGE_Y"> <> 0 then'
      '  begin'
      '    tmp := '#39' '#1083#1077#1090#39';'
      '    p := <ibqTarRecord."T_STAGE_Y"> mod 10;'
      
        '    if (<ibqTarRecord."T_STAGE_Y"> >= 5) and (<ibqTarRecord."T_S' +
        'TAGE_Y"> <= 20) then tmp := '#39' '#1083#1077#1090#39
      '    else'
      '      if p = 1 then'
      '        tmp := '#39' '#1075#1086#1076#39
      '      else'
      '        if p in [2, 3, 4] then tmp := '#39' '#1075#1086#1076#1072#39';'
      '    Memo23.Text := IntToStr(<ibqTarRecord."T_STAGE_Y">)  + tmp;'
      '  end;'
      '  //Memo23.Text := Memo23.Text + #13#10;'
      '  if <ibqTarRecord."T_STAGE_M"> <> 0 then'
      '  begin'
      
        '    Memo23.Text := Memo23.Text + IntToStr(<ibqTarRecord."T_STAGE' +
        '_M">)  + '#39' '#1084#1077#1089'.'#39';'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 336
    Top = 48
    Datasets = <
      item
        DataSet = frxdbdsTarriffication
        DataSetName = 'ibqTariffication'
      end
      item
        DataSet = frxdbdsTarrRecord
        DataSetName = 'ibqTarRecord'
      end>
    Variables = <
      item
        Name = ' Var'
        Value = Null
      end
      item
        Name = 'TeacherName'
        Value = '<TeacherName>'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      TitleBeforeHeader = False
      object MasterData1: TfrxMasterData
        Height = 60.472480000000000000
        Top = 563.149970000000100000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxdbdsTarrRecord
        DataSetName = 'ibqTarRecord'
        RowCount = 0
        Stretched = True
        object Memo19: TfrxMemoView
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ibqTarRecord."T_NAME"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 132.283549999999900000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[<ibqTarRecord."T_POST">] '
            '[<ibqTarRecord."T_SUBJ">]')
          ParentFont = False
          WordBreak = True
        end
        object Memo22: TfrxMemoView
          Left = 222.992269999999900000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[<ibqTarRecord."T_EDUCATION">],'
            
              '[<ibqTarRecord."T_DIPLOMA">][IIF(<ibqTarRecord."T_EDUCATION_2"> ' +
              '<> '#39#39', '#39';'#39', '#39#39')]'
            
              '[<ibqTarRecord."T_EDUCATION_2">][IIF(<ibqTarRecord."T_EDUCATION_' +
              '2"> <> '#39#39', '#39','#39', '#39#39')]'
            '[<ibqTarRecord."T_DIPLOMA_2">]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 332.598640000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[IIF(<ibqTarRecord."T_STAGE_Y"> <> 0, IntToStr(<ibqTarRecord."T_' +
              'STAGE_Y">) + '#39' '#1056#187#1056#181#1057#8218#39', '#39#39')]'
            
              '[IIF(<ibqTarRecord."T_STAGE_M"> <> 0, IntToStr(<ibqTarRecord."T_' +
              'STAGE_M">) + '#39' '#1056#1112#1056#181#1057#1027'. '#39', '#39#39')] ')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 498.897960000001000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarrRecord
          DataSetName = 'ibqTarRecord'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IIF(<ibqTarRecord."PKU_T"> <> 0, <ibqTarRecord."PKU_T">, 0)]'
            '[IIF(<ibqTarRecord."PKU_C"> <> 0, <ibqTarRecord."PKU_C">, 0)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 570.709030000001000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[IIF(<ibqTarRecord."PKU_T"> <> 0, <ibqTariffication."T_RATE_T">,' +
              ' 0)]'
            
              '[IIF(<ibqTarRecord."PKU_C"> <> 0, <ibqTariffication."T_RATE_C">,' +
              ' 0)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 623.622450000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<ibqTarRecord."T_B_TIME_Y">+<ibqTarRecord."T_B_TIME_O">]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 665.197280000001000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            ''
            '[ibqTarRecord."T_B_TIME_C"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 706.772110000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<ibqTarRecord."SUM_Y">+<ibqTarRecord."SUM_O">]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 759.685530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            ''
            '[ibqTarRecord."SUM_C"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 816.378480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[ibqTarRecord."SUM_TOTAL"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TITLE_NAME'
          DataSet = frxdbdsTarrRecord
          DataSetName = 'ibqTarRecord'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[ibqTarRecord."TITLE_NAME"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 544.252320000001000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[IIF(<ibqTarRecord."PKU_T"> <> 0, <ibqTariffication."T_INC_C_T">' +
              ', 0)]'
            
              '[IIF(<ibqTarRecord."PKU_C"> <> 0, <ibqTariffication."T_INC_C_C">' +
              ', 0)]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 876.850960000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 922.205320000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[ibqTarRecord."SUM_TOTAL"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 457.323130000001000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[IIF(<ibqTarRecord."PKU_T"> <> 0, <ibqTariffication."T_RATE_B">,' +
              ' 0)]'
            
              '[IIF(<ibqTarRecord."PKU_C"> <> 0, <ibqTariffication."T_RATE_B">,' +
              ' 0)]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 389.291590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[<ibqTarRecord."CATEGORY_NAME">][IIF(<ibqTarRecord."CATEGORY_NAM' +
              'E"> <> '#39#39', '#39' '#1056#1111#1057#1026#1056#181#1056#1111#1056#1109#1056#1169#1056#176#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1039' ('#39' +DateToStr(<ibqTarRec' +
              'ord."CATEGORY_DATE">)+'#39')'#39', '#39#39')][IIF((<ibqTarRecord."CATEGORY_NAM' +
              'E"> <> '#39#39') and (<ibqTarRecord."CATEGORY_CONC_NAME"> <> '#39#39'), '#39', '#39 +
              ', '#39#39')][<ibqTarRecord."CATEGORY_CONC_NAME">][IIF(<ibqTarRecord."C' +
              'ATEGORY_CONC_NAME"> <> '#39#39', '#39' '#1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470#1057#1027#1057#8218#1056#181#1057#1026#1056#176' ('#39' +' +
              ' DateToStr(<ibqTarRecord."CATEGORY_CONC_DATE">) + '#39')'#39', '#39#39')]')
          ParentFont = False
          WordBreak = True
        end
      end
      object Header1: TfrxHeader
        Height = 204.094620000000000000
        Top = 336.378170000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 22.677180000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '
            #1056#1111'/'#1056#1111)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105', '#1056#1111#1057#1026#1056#181#1056#1111#1056#1109#1056#1169#1056#176#1056#1030#1056#176#1056 +
              #181#1056#1112#1057#8249#1056#8470' '#1056#1111#1057#1026#1056#181#1056#1169#1056#1112#1056#181#1057#8218)
          ParentFont = False
          WordBreak = True
        end
        object Memo4: TfrxMemoView
          Left = 222.992269999999900000
          Width = 109.606370000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181', '#1056#1029#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1105' '#1056#1169#1056#176#1057#8218#1056#176' '#1056#1109#1056 +
              #1108#1056#1109#1056#1029#1057#8225#1056#176#1056#1029#1056#1105#1057#1039' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1057#1107#1057#8225#1056#181#1057#1026#1056#181#1056#182#1056#1169#1056 +
              #181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
          WordBreak = True
        end
        object Memo5: TfrxMemoView
          Left = 332.598640000000000000
          Width = 56.692950000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1038#1057#8218#1056#176#1056#182' '#1056#1111#1056#181#1056#1169#1056#1109#1056#1110#1056#1109#1056#1110#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1109#1056#8470' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1057#8249' '#1056#1029#1056#176' '#1056#1029#1056#176#1057#8225#1056#176 +
              #1056#187#1056#1109' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1110#1056#1109#1056#1169#1056#176' ('#1057#8225#1056#1105#1057#1027#1056#187#1056#1109' '#1056#187#1056#181#1057#8218' '#1056#1105' '#1056#1112#1056#181#1057#1027#1057#1039#1057#8224#1056 +
              #181#1056#1030')')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 498.897960000001000000
          Width = 45.354360000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1119#1057#1026#1056#1109#1057#8222#1056#181#1057#1027#1057#1027#1056#1105#1056#1109#1056#1029#1056#176#1056#187#1057#1034#1056#1029#1056#1109'-'#1056#1108#1056#1030#1056#176#1056#187#1056#1105#1057#8222#1056#1105#1056#1108#1056#176#1057#8224#1056#1105#1056#1109#1056#1029#1056#1029#1057#8249#1056#8470' ' +
              #1057#1107#1057#1026#1056#1109#1056#1030#1056#181#1056#1029#1057#1034' ('#1056#1119#1056#1113#1056#1032')')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000001000000
          Width = 26.456710000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1030#1057#8249#1057#8364#1056#176#1057#1035#1057#8240#1056#1105#1056#8470' '#1056#1108#1056#1109#1057#1036#1057#8222#1057#8222#1056#1105#1057#8224#1056#1105#1056#181#1056#1029#1057#8218)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 570.709030000001000000
          Width = 52.913420000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1056#1108#1056#187#1056#176#1056#1169' ('#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1056#1029#1056#1109#1056#8470' '#1056#1109#1056#1108#1056#187#1056#176#1056#1169'), '#1057#1027#1057#8218#1056#176#1056#1030#1056#1108#1056#176' '#1056#183#1056 +
              #176#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#1109#1056#8470' '#1056#1111#1056#187#1056#176#1057#8218#1057#8249' '#1056#1030' '#1057#1027#1056#1109#1056#1109#1057#8218#1056#1030#1056#181#1057#8218#1057#1027#1057#8218#1056#1030#1056#1105#1056#1105' '#1057#1027' '#1056#1119#1056#1113 +
              #1056#1032', '#1057#1027' '#1057#1107#1057#8225#1057#8216#1057#8218#1056#1109#1056#1112' 115 '#1057#1026#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 623.622450000001000000
          Width = 83.149660000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#167#1056#1105#1057#1027#1056#187#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1030' '#1056#1029#1056#181#1056#1169#1056#181#1056#187#1057#1035)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 623.622450000001000000
          Top = 41.574830000000020000
          Width = 41.574830000000000000
          Height = 143.622140000000000000
          AllowHTMLTags = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1057#1026#1056#181#1056#1111#1056#1109#1056#1169#1056#176#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1057#1027#1056#1108#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 665.197280000001000000
          Top = 41.574830000000020000
          Width = 41.574830000000000000
          Height = 143.622140000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218
            #1056#1112#1056#181#1056#8470#1057#1027
            #1057#8218#1056#181#1057#1026'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 706.772110000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#176#1057#1039' '#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1056#1030' '#1056#1112#1056#181#1057#1027#1057#1039#1057#8224', '#1057#1026#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 706.772110000000000000
          Top = 41.574830000000020000
          Width = 52.913420000000000000
          Height = 143.622140000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1112#1056#187#1056#176#1056#1169
            #1057#8364#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 759.685530000000000000
          Top = 41.574830000000020000
          Width = 56.692950000000000000
          Height = 143.622140000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470#1057#1027
            #1057#8218#1056#181#1057#1026'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 816.378480000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#183#1056#176#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#176#1057#1039' '#1056#1111#1056#187#1056#176#1057#8218#1056#176', '#1057#1026#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1119#1057#1026#1056#1105#1056#1112#1056#181#1057#8225#1056#176#1056#1029#1056#1105#1056#181' ('#1056#1029#1056#176#1056#187#1056#1105#1057#8225#1056#1105#1056#181' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1056#1109#1056#8470' '#1057#1027#1057#8218#1056#181#1056#1111#1056#181#1056#1029 +
              #1056#1105' '#1056#1105#1056#187#1056#1105' '#1056#1111#1056#1109#1057#8225#1056#181#1057#8218#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1057#1039')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Top = 185.196970000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 22.677180000000000000
          Top = 185.196970000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 132.283549999999900000
          Top = 185.196970000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 222.992269999999900000
          Top = 185.196970000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 332.598640000000000000
          Top = 185.196970000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 457.323130000001000000
          Top = 185.196970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 498.897960000001000000
          Top = 185.196970000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 544.252320000001000000
          Top = 185.196970000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 570.709030000001000000
          Top = 185.196970000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 623.622450000001000000
          Top = 185.196970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 665.197280000001000000
          Top = 185.196970000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 706.772110000000000000
          Top = 185.196970000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 759.685530000000000000
          Top = 185.196970000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 982.677800000000000000
          Top = 185.196970000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 876.850960000000000000
          Top = 41.574830000000020000
          Width = 45.354360000000000000
          Height = 143.622140000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1057#1107' '#1056#1030' '#1057#1027#1056#181#1056#187#1057#1034#1057#1027#1056#1108#1056#1109#1056#8470' '#1056#1112#1056#181#1057#1027#1057#8218#1056#1029#1056#1109#1057#1027#1057#8218#1056#1105' (25%)')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 816.378480000000000000
          Top = 185.196970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 876.850960000000000000
          Top = 185.196970000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 922.205320000000000000
          Width = 60.472480000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1056#183#1056#176#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#176#1057#1039' '#1056#1111#1056#187#1056#176#1057#8218#1056#176' '#1057#1027' '#1057#1107#1057#8225#1057#8216#1057#8218#1056#1109#1056#1112' '#1056#1108#1056#1109#1056 +
              #1112#1056#1111#1056#181#1056#1029#1057#1027#1056#176
            #1057#8224#1056#1105#1056#1109#1056#1029#1056#1029#1057#8249#1057#8230' '#1056#1030#1057#8249#1056#1111#1056#187#1056#176#1057#8218', '#1057#1026#1057#1107#1056#177'.')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 922.205320000000000000
          Top = 185.196970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 876.850960000000000000
          Width = 45.354360000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1112#1056#1111#1056#181#1056#1029#1057#1027#1056#176#1057#8224#1056#1105#1056#1109#1056#1029#1056#1029#1057#8249#1056#181' '#1056#1030#1057#8249#1056#1111#1056#187#1056#176#1057#8218#1057#8249)
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 457.323130000001000000
          Width = 41.574830000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#160#1056#176#1056#183#1056#1112#1056#181#1057#1026' '#1056#1109#1056#1108#1056#187#1056#176#1056#1169#1056#176' ('#1057#1027#1057#8218#1056#176#1056#1030#1056#1108#1056#176' '#1056#183#1056#176#1057#1026#1056#1109#1056#177#1056#1109#1057#8218#1056#1029#1056#1109#1056#8470' '#1056#1111#1056 +
              #187#1056#176#1057#8218#1057#8249')')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 389.291590000000000000
          Top = 185.196970000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 389.291590000000000000
          Width = 68.031540000000000000
          Height = 185.196970000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#187#1056#1105#1057#8225#1056#1105#1056#181' '#1056#1108#1056#1030#1056#176#1056#187#1056#1105#1057#8222#1056#1105#1056#1108#1056#176#1057#8224#1056#1105#1056#1109#1056#1029#1056#1029#1056#1109#1056#8470' '#1056#1108#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105 +
              #1056#1105', '#1056#1169#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1030#1056#181#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1056#176#1057#8218#1057#8218#1056#181#1057#1027#1057#8218#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 86.929190000000000000
        Top = 646.299630000000000000
        Width = 1046.929810000000000000
        object Memo36: TfrxMemoView
          Top = 68.031539999999950000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '4. '#1056#152#1056#1118#1056#1115#1056#8220#1056#1115)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 623.622450000001000000
          Top = 68.031539999999950000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<ibqTarRecord."T_B_TIME_Y">) + <ibqTariffication."T_B_TIME_' +
              'Y"> + SUM(<ibqTarRecord."T_B_TIME_O">) + <ibqTariffication."T_B_' +
              'TIME_O">]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 665.197280000001000000
          Top = 68.031539999999950000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<ibqTarRecord."T_B_TIME_C">) + <ibqTariffication."T_B_TIME_' +
              'C">]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 706.772110000000000000
          Top = 68.031539999999950000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<ibqTarRecord."SUM_Y">) + <ibqTariffication."VSUM_Y">+SUM(<' +
              'ibqTarRecord."SUM_O">) + <ibqTariffication."VSUM_O">]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 759.685530000000000000
          Top = 68.031539999999950000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<ibqTarRecord."SUM_C">) + <ibqTariffication."VSUM_C">]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 816.378480000000000000
          Top = 68.031539999999950000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<ibqTarRecord."SUM_TOTAL">) + <ibqTariffication."VSUM_TOTAL' +
              '">]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 982.677800000000000000
          Top = 68.031539999999950000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '1. '#1056#1032#1057#8225#1056#181#1056#177#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#176' '#1056#1111#1056#1109' '#1056#1109#1057#1027#1056#1029#1056#1109#1056#1030#1056#1029#1056#1109#1056#1112#1057#1107' '#1056#1112#1056#181#1057 +
              #1027#1057#8218#1057#1107' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1057#8249':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 623.622450000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 1,<ibqTarRecord' +
              '."T_B_TIME_Y"> + <ibqTarRecord."T_B_TIME_O">, 0))]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 665.197280000001000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 1,<ibqTarRecord' +
              '."T_B_TIME_C">, 0))]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 706.772110000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 1,<ibqTarRecord' +
              '."SUM_Y"> + <ibqTarRecord."SUM_O">, 0))]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 759.685530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 1,<ibqTarRecord' +
              '."SUM_C">, 0))]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 816.378480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 1,<ibqTarRecord' +
              '."SUM_TOTAL">, 0))]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 982.677800000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Top = 37.795300000000000000
          Width = 570.709030000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '3. '#1056#1116#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1057#8216#1056#1029#1056#1029#1056#176#1057#1039' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056 +
              #1108#1056#176':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 623.622450000001000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<ibqTariffication."T_B_TIME_Y">+<ibqTariffication."T_B_TIME_O">' +
              ']')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 665.197280000001000000
          Top = 37.795300000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            ''
            '[<ibqTariffication."T_B_TIME_C">]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 706.772110000000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<ibqTariffication."VSUM_Y">+<ibqTariffication."VSUM_O">]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 759.685530000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            ''
            '[<ibqTariffication."VSUM_C">]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 816.378480000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[<ibqTariffication."VSUM_TOTAL">]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 982.677800000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 570.709030000001000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 30.236240000000000000
          StretchMode = smActualHeight
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[ibqTariffication."T_RATE_T"]'
            '[ibqTariffication."T_RATE_C"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 876.850960000000000000
          Top = 68.031539999999950000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 876.850960000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 876.850960000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 922.205320000000000000
          Top = 68.031539999999950000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<ibqTarRecord."SUM_TOTAL">) + <ibqTariffication."VSUM_TOTAL' +
              '">]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 922.205320000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 1,<ibqTarRecord' +
              '."SUM_TOTAL">, 0))]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 922.205320000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[<ibqTariffication."VSUM_TOTAL">]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Top = 18.897650000000000000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '2. '#1056#1032#1057#8225#1056#181#1056#177#1056#1029#1056#176#1057#1039' '#1056#1029#1056#176#1056#1110#1057#1026#1057#1107#1056#183#1056#1108#1056#176' '#1056#1030' '#1056#1111#1056#1109#1057#1026#1057#1039#1056#1169#1056#1108#1056#181' '#1057#1027#1056#1109#1056#1030#1056#1112#1056#181#1057 +
              #1027#1057#8218#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1057#1027#1057#8218#1056#1030#1056#176':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 623.622450000001000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 0,<ibqTarRecord' +
              '."T_B_TIME_Y"> + <ibqTarRecord."T_B_TIME_O">, 0))]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 665.197280000001000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 0,<ibqTarRecord' +
              '."T_B_TIME_C">, 0))]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 706.772110000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 0,<ibqTarRecord' +
              '."SUM_Y">+<ibqTarRecord."SUM_O">, 0))]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 759.685530000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 0,<ibqTarRecord' +
              '."SUM_C">, 0))]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 816.378480000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 0,<ibqTarRecord' +
              '."SUM_TOTAL">, 0))]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 982.677800000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 876.850960000000000000
          Top = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 922.205320000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsTarriffication
          DataSetName = 'ibqTariffication'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(IIF(<ibqTarRecord."IS_FULL_TIME_TEACHER"> = 0,<ibqTarRecord' +
              '."SUM_TOTAL">, 0))]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 257.008040000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo35: TfrxMemoView
          Align = baBottom
          Top = 154.960730000000000000
          Width = 1046.929810000000000000
          Height = 102.047310000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1118#1056#1106#1056#160#1056#152#1056#164#1056#152#1056#1113#1056#1106#1056#166#1056#152#1056#1115#1056#1116#1056#1116#1056#171#1056#8482' '#1056#1038#1056#1119#1056#152#1056#1038#1056#1115#1056#1113' '#1056#1119#1056#8226#1056#8221#1056#1106#1056#8220#1056#1115#1056#8220#1056#152#1056#167#1056#8226 +
              #1056#1038#1056#1113#1056#152#1056#1168' '#1056#160#1056#1106#1056#8216#1056#1115#1056#1118#1056#1116#1056#152#1056#1113#1056#1115#1056#8217
            #1056#1029#1056#176' "___"_________________________________  '#1056#1110#1056#1109#1056#1169#1056#176
            
              #1056#1114#1057#1107#1056#1029#1056#1105#1057#8224#1056#1105#1056#1111#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1057#1107 +
              #1057#8225#1056#181#1057#1026#1056#181#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1169#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109 +
              #1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1056#1169#1056#181#1057#8218#1056#181#1056#8470
            
              #1056#8221#1056#181#1057#8218#1057#1027#1056#1108#1056#176#1057#1039' '#1057#8364#1056#1108#1056#1109#1056#187#1056#176' '#1056#1105#1057#1027#1056#1108#1057#1107#1057#1027#1057#1027#1057#8218#1056#1030' '#1056#1105#1056#1112'. '#1056#8220'.'#1056#164'. '#1056#1119#1056#1109#1056#1029#1056#1109 +
              #1056#1112#1056#176#1057#1026#1056#181#1056#1029#1056#1108#1056#1109' '#1056#1112#1057#1107#1056#1029#1056#1105#1057#8224#1056#1105#1056#1111#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1109#1056#177#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105 +
              #1057#1039' '#1056#1110#1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027#1056#1029#1056#1109#1056#1169#1056#176#1057#1026)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 687.874460000000000000
          Width = 359.055350000000000000
          Height = 132.283550000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '"'#1056#1032#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#176#1057#1035'"'
            
              #1056#8221#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026' '#1056#1114#1056#1115#1056#1032#1056#8221#1056#1115#1056#8221' '#1056#8221#1056#1025#1056#152' '#1056#1105#1056#1112'.'#1056#8220'.'#1056#164'. '#1056#1119#1056#1109#1056#1029#1056#1109#1056#1112#1056#176#1057#1026#1056 +
              #181#1056#1029#1056#1108#1056#1109
            #1056#1114#1056#1115' '#1056#1110#1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027#1056#1029#1056#1109#1056#1169#1056#176#1057#1026
            ''
            '_______________________   '#1056#8217'.'#1056#1106'. '#1056#1113#1056#1109#1056#1030#1056#176#1056#187#1056#181#1056#1030#1056#176)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 257.008040000000000000
        Top = 793.701299999999900000
        Width = 1046.929810000000000000
        object Memo44: TfrxMemoView
          Top = 132.283550000000000000
          Width = 411.968770000000000000
          Height = 113.385900000000000000
          AllowHTMLTags = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '<b>'#1056#1038#1056#1109#1056#1110#1056#187#1056#176#1057#1027#1056#1109#1056#1030#1056#176#1056#1029#1056#1109':</b>'
            
              #1056#8220#1056#187#1056#176#1056#1030#1056#1029#1057#8249#1056#8470' '#1057#1027#1056#1111#1056#181#1057#8224#1056#1105#1056#176#1056#187#1056#1105#1057#1027#1057#8218' '#1057#1107#1056#1111#1057#1026#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1108#1057#1107#1056#187#1057 +
              #1034#1057#8218#1057#1107#1057#1026#1057#8249
            
              #1056#176#1056#1169#1056#1112#1056#1105#1056#1029#1056#1105#1057#1027#1057#8218#1057#1026#1056#176#1057#8224#1056#1105#1056#1105' '#1056#1112#1057#1107#1056#1029#1056#1105#1057#8224#1056#1105#1056#1111#1056#176#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1109#1056#177#1057#1026#1056#176 +
              #1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039
            #1056#1110#1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027#1056#1029#1056#1109#1056#1169#1056#176#1057#1026
            '________________________________'#1056#8226'.'#1056#8216'.'#1056#1038#1056#181#1057#1026#1056#187#1056#1105#1056#1029#1056#176
            '"_______"________________________2015'#1056#1110'.')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Top = 26.456710000000040000
          Width = 1046.929810000000000000
          Height = 105.826840000000000000
          AllowHTMLTags = True
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            
              '<b>'#1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034':</b> '#1056#8212#1056#176#1056#1112'. '#1056#1169#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026#1056#176' '#1056#1111#1056#1109' '#1057 +
              #1107#1057#8225#1056#181#1056#177#1056#1029#1056#1109#1056#8470' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#181'                                      ' +
              '                '#1056#1113#1057#1107#1056#187#1057#1039#1057#1027#1056#1109#1056#1030#1056#176' '#1056#1116'.'#1056#8217'.'
            ''
            ''
            '<b>'#1056#1119#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056#181#1056#1029#1056#1109':</b>')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 520
    Top = 64
  end
  object frxdbdsTarriffication: TfrxDBDataset
    UserName = 'ibqTariffication'
    CloseDataSource = False
    DataSet = ibqTariffication
    Left = 248
    Top = 72
  end
  object ibqTarRecord: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    DataSource = dsTariffication
    SQL.Strings = (
      'SELECT *'
      'FROM V_TAR_RECORD T'
      'WHERE T.DOC_DATE = :DOC_DATE'
      'ORDER BY IS_FULL_TIME_TEACHER DESC, T_NAME')
    Left = 152
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOC_DATE'
        ParamType = ptUnknown
      end>
  end
  object frxdbdsTarrRecord: TfrxDBDataset
    UserName = 'ibqTarRecord'
    CloseDataSource = False
    DataSet = ibqTarRecord
    Left = 248
    Top = 24
  end
  object ibqTariffication: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    DataSource = dsTariffication
    SQL.Strings = (
      'SELECT *'
      'FROM V_TARIFFICATION T'
      'WHERE T.DOC_DATE = :DOC_DATE')
    Left = 152
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOC_DATE'
        ParamType = ptUnknown
      end>
  end
end
