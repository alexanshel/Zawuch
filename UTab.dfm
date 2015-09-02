object fmTab: TfmTab
  Left = 243
  Top = 249
  HelpContext = 31
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058#1072#1073#1077#1083#1100
  ClientHeight = 426
  ClientWidth = 1329
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
    Width = 1329
    Height = 49
    Align = alTop
    TabOrder = 0
    object btnForming: TSpeedButton
      Left = 13
      Top = 6
      Width = 148
      Height = 33
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFormingClick
    end
    object btnEdit: TSpeedButton
      Left = 173
      Top = 6
      Width = 164
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = dbgTabDblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1329
    Height = 48
    Align = alTop
    TabOrder = 1
    object pHeader01: TPanel
      Left = 82
      Top = 0
      Width = 230
      Height = 49
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      TabOrder = 0
    end
    object pHeader02: TPanel
      Left = 312
      Top = 0
      Width = 50
      Height = 49
      Caption = #1044#1085#1080
      TabOrder = 1
    end
    object pHeader03: TPanel
      Left = 362
      Top = 24
      Width = 68
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 2
    end
    object pHeader04: TPanel
      Left = 430
      Top = 24
      Width = 68
      Height = 25
      Caption = #1089#1090'.'
      TabOrder = 3
    end
    object pHeader05: TPanel
      Left = 498
      Top = 24
      Width = 68
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 4
    end
    object pHeader06: TPanel
      Left = 566
      Top = 24
      Width = 68
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 5
    end
    object pHeader07: TPanel
      Left = 634
      Top = 24
      Width = 68
      Height = 25
      Caption = #1089#1090'.'
      TabOrder = 6
    end
    object pHeader08: TPanel
      Left = 702
      Top = 24
      Width = 68
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 7
    end
    object Panel11: TPanel
      Left = 362
      Top = 0
      Width = 204
      Height = 24
      Caption = #1063#1072#1089#1099
      TabOrder = 8
    end
    object Panel12: TPanel
      Left = 566
      Top = 0
      Width = 204
      Height = 24
      Caption = #1063#1072#1089#1099' ('#1079#1072#1084#1077#1097#1077#1085#1080#1077')'
      TabOrder = 9
    end
    object pHeader09: TPanel
      Left = 770
      Top = 0
      Width = 255
      Height = 49
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      TabOrder = 10
    end
  end
  object pHeader00: TPanel
    Left = 0
    Top = 49
    Width = 82
    Height = 49
    Caption = #1058#1072#1073'. '#8470
    TabOrder = 2
  end
  object dbgTab: TRxDBGrid
    Left = 0
    Top = 97
    Width = 1329
    Height = 329
    Align = alClient
    DataSource = dsTab
    Options = [dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgTabDrawColumnCell
    OnDblClick = dbgTabDblClick
    OnKeyPress = dbgTabKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Tab_num'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEACHER_NAME'
        Width = 286
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECENCE_QTY'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_Y_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_O_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_C_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SWP_Y_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SWP_O_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SWP_C_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMMENTS'
        Width = 100
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 8
    object miCPrint: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object miPrint: TMenuItem
        Caption = #1044#1077#1090#1072#1083#1100#1085#1099#1081
        OnClick = miPrintClick
      end
      object mPrintSimple: TMenuItem
        Caption = #1054#1073#1099#1095#1085#1099#1081
        OnClick = mPrintSimpleClick
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
  object dsTab: TDataSource
    DataSet = DM.ibdsMainTab
    Left = 192
    Top = 176
  end
  object frxAbsentTab: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40133.946396261600000000
    ReportOptions.LastChange = 41610.860527175920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  m: TfrxMemoView;'
      '  i: integer;'
      '  daysQty: integer;'
      '  width: double;'
      'begin'
      
        '  // '#1091#1073#1080#1088#1072#1077#1084' '#1083#1080#1096#1085#1080#1077' '#1082#1086#1083#1086#1085#1082#1080' ('#1080#1089#1082#1083#1102#1095#1072#1077#1084' '#1085#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1097#1080#1077' '#1076#1085#1080' '#1090#1077#1082#1091#1097 +
        #1077#1075#1086' '#1084#1077#1089#1103#1094#1072')'
      '  daysQty := <frxDBDSTabParams."CURR_MONTH_DAYS_QTY">;'
      ''
      '  if daysQty = 31 then exit;'
      '  for i := daysQty + 1 to 31 do'
      '  begin'
      
        '    m := TfrxMemoView(Sender.FindObject('#39'mMonthNum'#39' + IntToStr(i' +
        ')));'
      '    m.Visible := false;'
      
        '    m := TfrxMemoView(Sender.FindObject('#39'mHeadNum'#39' + IntToStr(i ' +
        '+ 3)));'
      '    m.Visible := false;'
      
        '    m := TfrxMemoView(MasterData1.FindObject('#39'mDay'#39' + IntToStr(i' +
        ')));'
      '    m.Visible := false;'
      '  end;'
      ''
      '  width := mMonthDays.Width / daysQty;'
      '  for i := 1 to daysQty do'
      '  begin'
      
        '    m := TfrxMemoView(Sender.FindObject('#39'mMonthNum'#39' + IntToStr(i' +
        ')));'
      '    m.Width := width;'
      '    m.Align := baLeft;'
      
        '    m := TfrxMemoView(Sender.FindObject('#39'mHeadNum'#39' + IntToStr(i ' +
        '+ 3)));'
      '    m.Width := width;'
      '    m.Align := baLeft;'
      
        '    m := TfrxMemoView(MasterData1.FindObject('#39'mDay'#39' + IntToStr(i' +
        ')));'
      '    m.Width := width;'
      '    m.Align := baLeft;'
      '  end;'
      'end;'
      ''
      'procedure m55OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  comments: variant;'
      'begin'
      '  comments := <frxDBDSTab2."COMMENTS">;'
      
        '  TfrxMemoView(Sender).Visible := not((comments <> Null) and (le' +
        'ngth(comments) > 0));'
      'end;'
      ''
      'procedure mCommentsOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  comments: variant;'
      'begin'
      '  comments := <frxDBDSTab2."COMMENTS">;'
      
        '  TfrxMemoView(Sender).Visible := not((comments = Null) or (leng' +
        'th(comments) = 0));'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDSAT1
        DataSetName = 'frxDBDSAbsentTab1'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDSTab2'
      end
      item
        DataSet = frxDBDSParams
        DataSetName = 'frxDBDSTabParams'
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
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Duplex = dmHorizontal
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        Height = 699.213050000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo109: TfrxMemoView
          Align = baWidth
          Top = 120.944960000000000000
          Width = 1046.929810000000000000
          Height = 79.370130000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1106#1056#8216#1056#8226#1056#8250#1056#172
            
              #1056#1032#1057#8225#1056#181#1057#8218#1056#176' '#1056#1105#1057#1027#1056#1111#1056#1109#1056#187#1057#1034#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056 +
              #181#1056#1029#1056#1105' '#1056#1105' '#1057#1026#1056#176#1057#1027#1057#8225#1057#8216#1057#8218#1056#176' '#1056#183#1056#176#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#1109#1056#8470' '#1056#1111#1056#187#1056#176#1057#8218#1057#8249
            
              #1056#1105' '#1057#1107#1057#8225#1057#8216#1057#8218#1056#176' '#1057#1027#1056#1109#1056#1030#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1111#1056#181#1056#1169#1056#176#1056#1110#1056#1109#1056#1110#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1057#8230' ' +
              #1056#1105' '#1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470#1057#1027#1057#8218#1056#181#1057#1026#1057#1027#1056#1108#1056#1105#1057#8230' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030
            
              #1056#1030#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1029#1056#1109' '#1056#1109#1057#8218#1057#1027#1057#1107#1057#8218#1057#1027#1057#8218#1056#1030#1057#1107#1057#1035#1057#8240#1056#1105#1057#8230' '#1056#1111#1057#1026#1056#181#1056#1111#1056#1109#1056#1169#1056#176#1056#1030#1056#176#1057#8218 +
              #1056#181#1056#187#1056#181#1056#8470' '#1056#1105' '#1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470#1057#1027#1057#8218#1056#181#1057#1026#1056#1109#1056#1030)
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Align = baWidth
          Top = 204.094620000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#183#1056#176' ____________ 2013')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 37.795300000000000000
          Top = 249.448980000000000000
          Width = 96.000062000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1032#1057#8225#1056#181#1057#1026#1056#181#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 136.063080000000000000
          Top = 249.448980000000000000
          Width = 659.150032000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            
              '           '#1056#1114#1056#1115#1056#1032#1056#8221#1056#1115#1056#8221' '#1056#8221#1056#181#1057#8218#1057#1027#1056#1108#1056#176#1057#1039' '#1057#8364#1056#1108#1056#1109#1056#187#1056#176' '#1056#1105#1057#1027#1056#1108#1057#1107#1057#1027#1057#1027#1057#8218 +
              #1056#1030' '#1056#1105#1056#1112'. '#1056#8220'. '#1056#164'. '#1056#1119#1056#1109#1056#1029#1056#1109#1056#1112#1056#176#1057#1026#1056#181#1056#1029#1056#1108#1056#1109' '#1056#1114#1056#1115' '#1056#1110#1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027 +
              #1056#1029#1056#1109#1056#1169#1056#176#1057#1026'                ')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 37.795300000000000000
          Top = 272.126160000000000000
          Width = 179.149722000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1057#1107#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1111#1056#1109#1056#1169#1057#1026#1056#176#1056#183#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 215.433210000000000000
          Top = 272.126160000000000000
          Width = 579.779902000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8 = (
            
              '                                                                ' +
              '                                                                ' +
              '        ')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 37.795300000000000000
          Top = 294.803340000000000000
          Width = 224.504082000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#1105#1057#8230' '#1056#1169#1056#1029#1056#181#1056#8470' '#1056#1030' '#1056#1112#1056#181#1057#1027#1057#1039#1057#8224#1056#181)
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 264.567100000000000000
          Top = 294.803340000000000000
          Width = 39.307112000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSTabParams."CURR_MONTH_WORK_DAYS_QTY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 922.205320000000000000
          Top = 204.094620000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1115#1056#8221#1056#171)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 922.205320000000000000
          Top = 283.464750000000000000
          Width = 94.488250000000000000
          Height = 7.559060000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 922.205320000000000000
          Top = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 922.205320000000000000
          Top = 222.992270000000000000
          Width = 94.488250000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 827.717070000000000000
          Top = 302.362400000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1057#1027#1057#8225#1056#181#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 827.717070000000000000
          Top = 264.567100000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 827.717070000000000000
          Top = 241.889920000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 805.039890000000000000
          Top = 222.992270000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1032#1056#8221)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Align = baWidth
          Top = 336.378170000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1032#1057#1027#1056#187#1056#1109#1056#1030#1056#1029#1057#8249#1056#181' '#1056#1109#1056#177#1056#1109#1056#183#1056#1029#1056#176#1057#8225#1056#181#1056#1029#1056#1105#1057#1039':')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 415.748300000000000000
          Top = 370.393940000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 37.795300000000000000
          Top = 370.393940000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1111#1056#1109#1056#1108#1056#176#1056#183#1056#176#1057#8218#1056#181#1056#187#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          Left = 37.795300000000000000
          Top = 389.291590000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#8217#1057#8249#1057#8230#1056#1109#1056#1169#1056#1029#1057#8249#1056#181' '#1056#1105' '#1056#1111#1057#1026#1056#176#1056#183#1056#1169#1056#1029#1056#1105#1057#8225#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 415.748300000000000000
          Top = 389.291590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 37.795300000000000000
          Top = 408.189240000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#160#1056#176#1056#177#1056#1109#1057#8218#1056#176' '#1056#1030' '#1056#1029#1056#1109#1057#8225#1056#1029#1056#1109#1056#181' '#1056#1030#1057#1026#1056#181#1056#1112#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Left = 415.748300000000000000
          Top = 408.189240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          Left = 37.795300000000000000
          Top = 427.086890000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#8217#1057#8249#1056#1111#1056#1109#1056#187#1056#1029#1056#181#1056#1029#1056#1105#1056#181' '#1056#1110#1056#1109#1057#1027#1056#1109#1056#177#1057#1039#1056#183#1056#176#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218#1056#181#1056#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          Left = 415.748300000000000000
          Top = 427.086890000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8220)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          Left = 37.795300000000000000
          Top = 445.984540000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            
              #1056#1115#1057#8225#1056#181#1057#1026#1056#181#1056#1169#1056#1029#1057#8249#1056#181' '#1056#1105' '#1056#1169#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#8249#1056#181' '#1056#1109#1057#8218#1056#1111#1057#1107#1057#1027#1056#1108#1056 +
              #176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          Left = 415.748300000000000000
          Top = 445.984540000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          Left = 37.795300000000000000
          Top = 464.882190000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#8217#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1029#1056#176#1057#1039' '#1056#1029#1056#181#1057#8218#1057#1026#1057#1107#1056#1169#1056#1109#1057#1027#1056#1111#1056#1109#1057#1027#1056#1109#1056#177#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034',')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          Left = 415.748300000000000000
          Top = 464.882190000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          Left = 37.795300000000000000
          Top = 483.779840000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            
              #1056#1029#1056#181#1057#8218#1057#1026#1057#1107#1056#1169#1056#1109#1057#1027#1056#1111#1056#1109#1057#1027#1056#1109#1056#177#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034' '#1056#1111#1056#1109' '#1056#177#1056#181#1057#1026#1056#181#1056#1112#1056#181#1056#1029#1056#1029#1056#1109#1057#1027#1057#8218 +
              #1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 415.748300000000000000
          Top = 483.779840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 37.795300000000000000
          Top = 502.677490000000100000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1105' '#1057#1026#1056#1109#1056#1169#1056#176#1056#1112)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          Left = 415.748300000000000000
          Top = 502.677490000000100000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8216)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 37.795300000000000000
          Top = 521.575140000000100000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1111#1057#1107#1057#1027#1056#1108' '#1056#1111#1056#1109' '#1057#1107#1057#8230#1056#1109#1056#1169#1057#1107' '#1056#183#1056#176' '#1057#1026#1056#181#1056#177#1056#181#1056#1029#1056#1108#1056#1109#1056#1112)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 415.748300000000000000
          Top = 521.575140000000100000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 37.795300000000000000
          Top = 540.472790000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#167#1056#176#1057#1027#1057#8249' '#1057#1027#1056#1030#1056#181#1057#8230#1057#1107#1057#1026#1056#1109#1057#8225#1056#1029#1056#1109#1056#8470' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 415.748300000000000000
          Top = 540.472790000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 37.795300000000000000
          Top = 559.370440000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1110#1057#1107#1056#187#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 415.748300000000000000
          Top = 559.370440000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Left = 37.795300000000000000
          Top = 578.268090000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            
              #1056#1113#1056#176#1056#187#1056#181#1056#1029#1056#1169#1056#176#1057#1026#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105' '#1056#1169#1056#1109' '#1056#1111#1057#1026#1056#1105#1056#181#1056#1112#1056#176' '#1056#1105'('#1056#1105#1056#187#1056#1105') '#1056#1111#1056#1109#1057 +
              #1027#1056#187#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 415.748300000000000000
          Top = 578.268090000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 37.795300000000000000
          Top = 597.165740000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1057#1107#1056#1030#1056#1109#1056#187#1057#1034#1056#1029#1056#181#1056#1029#1056#1105#1057#1039' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#1029#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 415.748300000000000000
          Top = 597.165740000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '---')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 941.102970000000000000
          Top = 370.393940000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          Left = 563.149970000000000000
          Top = 370.393940000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1105#1056#1112#1056#181#1056#1029#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1056#181' '#1056#1111#1056#1109#1056#1108#1056#176#1056#183#1056#176#1057#8218#1056#181#1056#187#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 563.149970000000000000
          Top = 389.291590000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1116#1056#181#1057#1039#1056#1030#1056#1108#1056#1105' '#1057#1027' '#1057#1026#1056#176#1056#183#1057#1026#1056#181#1057#8364#1056#181#1056#1029#1056#1105#1057#1039' '#1056#176#1056#1169#1056#1112#1056#1105#1056#1029#1056#1105#1057#1027#1057#8218#1057#1026#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 941.102970000000000000
          Top = 389.291590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1106)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          Left = 563.149970000000000000
          Top = 408.189240000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#8217#1057#8249#1057#8230#1056#1109#1056#1169#1056#1029#1057#8249#1056#181' '#1056#1111#1056#1109' '#1057#1107#1057#8225#1056#181#1056#177#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          Left = 941.102970000000000000
          Top = 408.189240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#1032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 563.149970000000000000
          Top = 427.086890000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1032#1057#8225#1056#181#1056#177#1056#1029#1057#8249#1056#8470' '#1056#1109#1057#8218#1056#1111#1057#1107#1057#1027#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 941.102970000000000000
          Top = 427.086890000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1032)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          Left = 563.149970000000000000
          Top = 445.984540000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' '#1056#1030' 1 - 3 '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176#1057#8230)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          Left = 941.102970000000000000
          Top = 445.984540000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#1116)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 563.149970000000000000
          Top = 464.882190000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            
              #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' '#1056#1030' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111#1056#176#1057#8230' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#187#1056#181#1056#1029#1056#1029#1056#1109#1056#1110#1056#1109' '#1056#1169#1056#1029 +
              #1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          Left = 941.102970000000000000
          Top = 464.882190000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#1119)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 563.149970000000000000
          Top = 483.779840000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' '#1056#1030' 4 - 11 '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176#1057#8230)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          Left = 941.102970000000000000
          Top = 483.779840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#1038)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 563.149970000000000000
          Top = 502.677490000000100000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#160#1056#176#1056#177#1056#1109#1057#8218#1056#176' '#1056#1030' '#1056#1111#1057#1026#1056#176#1056#183#1056#1169#1056#1029#1056#1105#1057#8225#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Left = 941.102970000000000000
          Top = 502.677490000000100000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#1119)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Left = 563.149970000000000000
          Top = 521.575140000000100000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1108#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1056#181' '#1056#1109#1057#8218#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#176#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 941.102970000000000000
          Top = 521.575140000000100000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Left = 563.149970000000000000
          Top = 540.472790000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1112#1056#176#1056#1029#1056#1169#1056#1105#1057#1026#1056#1109#1056#1030#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          Left = 941.102970000000000000
          Top = 540.472790000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          Left = 563.149970000000000000
          Top = 559.370440000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#1030#1057#8249#1057#8364#1056#181#1056#1029#1056#1105#1056#181' '#1056#1108#1056#1030#1056#176#1056#187#1056#1105#1057#8222#1056#1105#1056#1108#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          Left = 941.102970000000000000
          Top = 559.370440000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1113)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          Left = 563.149970000000000000
          Top = 578.268090000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            #1056#1116#1056#181#1057#1039#1056#1030#1056#1108#1056#1105' '#1056#1111#1056#1109' '#1056#1029#1056#181#1056#1030#1057#8249#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1056#1029#1057#8249#1056#1112' '#1056#1111#1057#1026#1056#1105#1057#8225#1056#1105#1056#1029#1056#176#1056#1112)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          Left = 941.102970000000000000
          Top = 578.268090000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1116)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          Left = 563.149970000000000000
          Top = 597.165740000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8 = (
            
              #1056#8221#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1057#8249#1056#181' '#1056#1030#1057#8249#1057#8230#1056#1109#1056#1169#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105' ('#1056#1109#1056#1111#1056#187#1056#176#1057#8225 +
              #1056#1105#1056#1030#1056#176#1056#181#1056#1112#1057#8249#1056#181')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          Left = 941.102970000000000000
          Top = 597.165740000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#8217)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo181: TfrxMemoView
          Left = 37.795300000000000000
          Top = 638.740570000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '*')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 56.692950000000000000
          Top = 638.740570000000000000
          Width = 960.000620000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              #1056#8217' '#1057#1027#1056#187#1057#1107#1057#8225#1056#176#1056#181' '#1056#1029#1056#176#1056#187#1056#1105#1057#8225#1056#1105#1057#1039' '#1056#1169#1056#1030#1057#1107#1057#8230' '#1056#1105' '#1056#177#1056#1109#1056#187#1056#181#1056#181' '#1056#1111#1057#1026#1056#1105#1057#8225#1056#1105 +
              #1056#1029' '#1056#1109#1057#8218#1056#1108#1056#187#1056#1109#1056#1029#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1111#1057#1026#1056#1105#1056#1112#1056#181#1056#1029#1057#1039#1056#181#1057#8218#1057#1027#1057#1039' '#1057#1027#1056#187#1056#1109#1056#182#1056#1029#1057#8249#1056#8470' '#1056#1108 +
              #1056#1109#1056#1169', '#1056#177#1057#1107#1056#1108#1056#1030#1056#181#1056#1029#1056#1029#1056#1109#1056#181' '#1056#1109#1056#177#1056#1109#1056#183#1056#1029#1056#176#1057#8225#1056#181#1056#1029#1056#1105#1056#181' '#1056#1108#1056#1109#1057#8218#1056#1109#1057#1026#1056#1109#1056#1110#1056#1109 +
              ' '#1056#183#1056#176#1056#1111#1056#1105#1057#1027#1057#8249#1056#1030#1056#176#1056#181#1057#8218#1057#1027#1057#1039' '#1057#8225#1056#181#1057#1026#1056#181#1056#183' '#1056#1111#1057#1026#1056#1109#1056#177#1056#181#1056#187'.'
            
              #1056#1116#1056#176#1056#1111#1057#1026#1056#1105#1056#1112#1056#181#1057#1026', '#1056#1108#1056#1109#1056#1112#1056#1112#1056#176#1056#1029#1056#1169#1056#1105#1057#1026#1056#1109#1056#1030#1056#1108#1056#176', '#1056#1111#1057#1026#1056#1105#1057#8230#1056#1109#1056#1169#1057#1039#1057#8240#1056#176 +
              #1057#1039#1057#1027#1057#1039' '#1056#1029#1056#176' '#1056#1030#1057#8249#1057#8230#1056#1109#1056#1169#1056#1029#1057#8249#1056#181' '#1056#1105' '#1056#1111#1057#1026#1056#176#1056#183#1056#1169#1056#1029#1056#1105#1057#8225#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105', '#1056 +
              #177#1057#1107#1056#1169#1056#181#1057#8218' '#1056#1105#1056#1112#1056#181#1057#8218#1057#1034' '#1056#1109#1056#177#1056#1109#1056#183#1056#1029#1056#176#1057#8225#1056#181#1056#1029#1056#1105#1056#181' - '#1056#1113' '#1056#8217'.')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 922.205320000000000000
          Top = 222.992270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '0504421')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 922.205320000000000000
          Top = 241.889920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 922.205320000000000000
          Top = 260.787570000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 120.944960000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C6673776973735C6663
            6861727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C20
            4359523B7D7B5C66315C666E696C204D532053616E732053657269663B7D7D0D
            0A5C766965776B696E64345C7563315C706172645C6C69383334305C66305C66
            7332302020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020205C2764335C2766325C2765325C2765355C
            2766305C2765365C2765345C2765305C2766655C7061720D0A5C7061720D0A5C
            2764305C2766335C2765615C2765655C2765325C2765655C2765345C2765385C
            2766325C2765355C2765625C2766632020205F5F5F5F5F5F5F5F5F5F5F5F5F20
            2020205F5F5F5F5C756C5C2763322E5C2763302E205C2763615C2765655C2765
            325C2765305C2765625C2765355C2765325C2765305C756C6E6F6E65205F5F5F
            5F5C7061720D0A5C2766335C2766375C2765355C2766305C2765355C2765365C
            2765345C2765355C2765645C2765385C276666202020202020202020285C2765
            665C2765655C2765345C2765665C2765385C2766315C27666329202020202020
            202020285C2766305C2765305C2766315C2766385C2765385C2766345C276630
            5C2765655C2765325C2765615C276530205C2765665C2765655C2765345C2765
            665C2765385C2766315C276538295C7061720D0A5C7061720D0A5C7061720D0A
            225C756C20202020202020205C756C6E6F6E6520222020205F5F5F5F5F5F5F5F
            5F5F5F5F5F5F5F5F202020323031335C66315C7061720D0A7D0D0A00}
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015748030000000000
        Top = 891.969080000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDSAT1
        DataSetName = 'frxDBDSAbsentTab1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 22.677180000000000000
          Width = 204.094620000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'TEACHER_NAME'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."TEACHER_NAME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 22.677180000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'TEACHER_POST'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."TEACHER_POST"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay1: TfrxMemoView
          Left = 306.141930000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_1'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay2: TfrxMemoView
          Left = 328.819110000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_2'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay3: TfrxMemoView
          Left = 351.496290000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_3'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay4: TfrxMemoView
          Left = 374.173470000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_4'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay5: TfrxMemoView
          Left = 396.850650000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_5'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay6: TfrxMemoView
          Left = 419.527830000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_6'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay7: TfrxMemoView
          Left = 442.205010000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_7'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay8: TfrxMemoView
          Left = 464.882190000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_8'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay9: TfrxMemoView
          Left = 487.559370000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_9'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay10: TfrxMemoView
          Left = 510.236550000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_10'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay11: TfrxMemoView
          Left = 532.913730000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_11'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay12: TfrxMemoView
          Left = 555.590910000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_12'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay13: TfrxMemoView
          Left = 578.268090000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_13'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay14: TfrxMemoView
          Left = 600.945270000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_14'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay15: TfrxMemoView
          Left = 623.622450000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_15'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay16: TfrxMemoView
          Left = 646.299630000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_16'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_16"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay17: TfrxMemoView
          Left = 668.976810000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_17'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_17"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay18: TfrxMemoView
          Left = 691.653990000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_18'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_18"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay19: TfrxMemoView
          Left = 714.331170000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_19'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_19"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay20: TfrxMemoView
          Left = 737.008350000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_20'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_20"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay21: TfrxMemoView
          Left = 759.685530000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_21'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_21"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay22: TfrxMemoView
          Left = 782.362710000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_22'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_22"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay23: TfrxMemoView
          Left = 805.039890000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_23'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_23"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay24: TfrxMemoView
          Left = 827.717070000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_24'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_24"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay25: TfrxMemoView
          Left = 850.394250000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_25'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_25"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay26: TfrxMemoView
          Left = 873.071430000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_26'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_26"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay27: TfrxMemoView
          Left = 895.748610000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_27'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_27"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay28: TfrxMemoView
          Left = 918.425790000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_28'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_28"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay29: TfrxMemoView
          Left = 941.102970000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_29'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_29"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay30: TfrxMemoView
          Left = 963.780150000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_30'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_30"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay31: TfrxMemoView
          Left = 986.457330000000000000
          Width = 22.677165350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'DAY_31'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_31"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 1009.134510000000000000
          Width = 37.795285350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataField = 'PRECENCE_QTY'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."PRECENCE_QTY"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 90.708720000000000000
        Top = 778.583180000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        ReprintOnNewPage = True
        StartNewPage = True
        object Memo5: TfrxMemoView
          Left = 22.677180000000000000
          Width = 204.094620000000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164'.'#1056#152'.'#1056#1115'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 226.771800000000000000
          Width = 79.370130000000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034
            '('#1056#1111#1057#1026#1056#181#1056#1169#1056#1112#1056#181#1057#8218')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 22.677180000000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum1: TfrxMemoView
          Left = 306.141930000000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum2: TfrxMemoView
          Align = baLeft
          Left = 328.819095350000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum3: TfrxMemoView
          Left = 351.496260700000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum4: TfrxMemoView
          Left = 374.173426050000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum5: TfrxMemoView
          Left = 396.850591400000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum6: TfrxMemoView
          Left = 419.527756750000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum7: TfrxMemoView
          Left = 442.204922100000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum8: TfrxMemoView
          Left = 464.882087450000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum9: TfrxMemoView
          Left = 487.559252800000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum10: TfrxMemoView
          Left = 510.236418150000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum11: TfrxMemoView
          Left = 532.913583500000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum12: TfrxMemoView
          Left = 555.590748850000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum13: TfrxMemoView
          Left = 578.267914200000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum14: TfrxMemoView
          Left = 600.945079550000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum15: TfrxMemoView
          Left = 623.622244900000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum16: TfrxMemoView
          Left = 646.299410250000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum17: TfrxMemoView
          Left = 668.976575600000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum18: TfrxMemoView
          Left = 691.653740950000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum19: TfrxMemoView
          Left = 714.330906300000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum20: TfrxMemoView
          Left = 737.008071650000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum21: TfrxMemoView
          Left = 759.685237000000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum22: TfrxMemoView
          Left = 782.362402350000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum23: TfrxMemoView
          Left = 805.039567700000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum24: TfrxMemoView
          Left = 827.716733050000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum25: TfrxMemoView
          Left = 850.393898400000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum26: TfrxMemoView
          Left = 873.071063750000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum27: TfrxMemoView
          Left = 895.748229100000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum28: TfrxMemoView
          Left = 918.425394450000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum29: TfrxMemoView
          Left = 941.102559800000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum30: TfrxMemoView
          Left = 963.779725150000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum31: TfrxMemoView
          Left = 986.456890500000000000
          Top = 45.354360000000040000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 45.354360000000040000
          Width = 37.795285350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 1009.134510000000000000
          Width = 37.795285350000000000
          Height = 45.354360000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1029#1056#1105' ('#1057#8225#1056#176#1057#1027#1057#8249') '#1057#1039#1056#1030#1056#1109#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthDays: TfrxMemoView
          Left = 306.141930000000000000
          Width = 702.992565350000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#167#1056#1105#1057#1027#1056#187#1056#176' '#1056#1112#1056#181#1057#1027#1057#1039#1057#8224#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 68.031540000000060000
          Width = 22.677180000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo46: TfrxMemoView
          Left = 22.677180000000000000
          Top = 68.031540000000060000
          Width = 204.094620000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo47: TfrxMemoView
          Left = 226.771800000000000000
          Top = 68.031540000000060000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum4: TfrxMemoView
          Left = 306.141930000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum5: TfrxMemoView
          Left = 328.819110000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum6: TfrxMemoView
          Left = 351.496290000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum7: TfrxMemoView
          Left = 374.173470000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum8: TfrxMemoView
          Left = 396.850650000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum9: TfrxMemoView
          Left = 419.527830000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum10: TfrxMemoView
          Left = 442.205010000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum11: TfrxMemoView
          Left = 464.882190000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum12: TfrxMemoView
          Left = 487.559370000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum13: TfrxMemoView
          Left = 510.236550000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum15: TfrxMemoView
          Left = 555.590910000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum16: TfrxMemoView
          Left = 578.268090000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum17: TfrxMemoView
          Left = 600.945270000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum18: TfrxMemoView
          Left = 623.622450000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum19: TfrxMemoView
          Left = 646.299630000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
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
        object mHeadNum20: TfrxMemoView
          Left = 668.976810000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum21: TfrxMemoView
          Left = 691.653990000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum22: TfrxMemoView
          Left = 714.331170000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum23: TfrxMemoView
          Left = 737.008350000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum24: TfrxMemoView
          Left = 759.685530000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum25: TfrxMemoView
          Left = 782.362710000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum26: TfrxMemoView
          Left = 805.039890000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum27: TfrxMemoView
          Left = 827.717070000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum28: TfrxMemoView
          Left = 850.394250000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum29: TfrxMemoView
          Left = 873.071430000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum30: TfrxMemoView
          Left = 895.748610000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum31: TfrxMemoView
          Left = 918.425790000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum32: TfrxMemoView
          Left = 941.102970000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '32')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum33: TfrxMemoView
          Left = 963.780150000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '33')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum34: TfrxMemoView
          Left = 986.457330000000000000
          Top = 68.031540000000060000
          Width = 22.677165350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '34')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 1009.134510000000000000
          Top = 68.031540000000060000
          Width = 37.795285350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '34a')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 1.500000000000000000
      object Header2: TfrxHeader
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          Left = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 68.031540000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1029#1056#1105
            '('#1057#8225#1056#176#1057#1027#1057#8249')'
            #1056#1029#1056#181#1057#1039'-'
            #1056#1030#1056#1109#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Width = 26.456710000000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1111'/'#1056#1111)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 68.031540000000010000
          Width = 26.456710000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '34'#1056#177)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 26.456710000000000000
          Top = 68.031540000000010000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '35')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 154.960730000000000000
          Top = 68.031540000000010000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '38')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 219.212740000000000000
          Top = 68.031540000000010000
          Width = 45.354345350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '39')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 64.252010000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#176#1056#187#1056#1109#1056#1110#1056#1109'-'
            #1056#1111#1056#187#1056#176#1057#8218#1056#181#1056#187#1057#1034#1057#8240#1056#1105#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 109.606370000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#181#1057#1026#1057#1027#1056#1109#1056#1029#1056#176#1056#187#1057#1034'-'
            #1056#1029#1056#176#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 64.252010000000000000
          Top = 68.031540000000010000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '36')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 109.606370000000000000
          Top = 68.031540000000010000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '37')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 154.960730000000000000
          Width = 64.252010000000000000
          Height = 68.031540000000010000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034'-'
            #1056#1029#1057#8249#1056#8470
            #1056#1029#1056#1109#1056#1112#1056#181#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 219.212740000000000000
          Width = 45.354360000000000000
          Height = 68.031540000000010000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#1109#1056#1105'-'
            #1056#1112#1056#1109#1057#1027#1057#8218#1057#1034
            '1-'#1056#1110#1056#1109
            #1056#1169#1056#1029#1057#1039
            '('#1057#8225#1056#176#1057#1027#1056#176')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 264.567100000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1030#1056#1105#1056#1169
            #1056#1109#1056#1111#1056#187#1056#176
            '-'#1057#8218#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 306.141930000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112'-'
            #1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 264.567100000000000000
          Top = 68.031540000000010000
          Width = 41.574815350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '40')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 306.141930000000000000
          Top = 68.031540000000010000
          Width = 41.574815350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '41')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 347.716760000000000000
          Top = 68.031540000000010000
          Width = 41.574815350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '42')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 347.716760000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1169#1056#1029#1056#1105
            '('#1057#8225#1056#176#1057#1027#1057#8249')'
            #1056#1029#1056#181#1057#1039'-'
            #1056#1030#1056#1109#1056#1108)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 264.567100000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#8218#1056#1109#1057#1026#1056#1029#1056#1109' '#1056#1029#1056#176#1057#8225#1056#1105#1057#1027#1056#187#1056#181#1056#1029#1056#1105#1056#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 389.291590000000000000
          Width = 657.638220000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 389.291590000000000000
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000010000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' ('#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1057#8249#1056#181')'
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 506.457020000000000000
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000010000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' ('#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1057#8249#1056#181')'
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 623.622450000000000000
          Top = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000010000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181' ('#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1057#8249#1056#181')'
            #1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470#1057#1027#1057#8218#1056#181#1057#1026#1057#1027#1056#1108#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 740.787880000000000000
          Top = 15.118120000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#176#1056#177#1056#1109#1057#8218#1056#176' '#1056#1030' '#1056#1030#1057#8249#1057#8230#1056#1109#1056#1169#1056#1029#1057#8249#1056#181'.'
            #1056#1111#1057#1026#1056#176#1056#183#1056#1169#1056#1029#1056#1105#1057#8225#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 891.969080000000000000
          Top = 15.118120000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1030#1056#181#1057#1026#1057#8230#1057#1107#1057#1026#1056#1109#1057#8225#1056#1029#1056#176#1057#1039' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 740.787880000000000000
          Top = 34.015770000000010000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1112#1056#1112#1056#181#1056#1029#1057#8218#1056#176#1057#1026#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 623.622450000000000000
          Top = 49.133890000000010000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 680.315400000000000000
          Top = 49.133890000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 623.622450000000000000
          Top = 68.031540000000010000
          Width = 56.692935350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '47')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 680.315400000000000000
          Top = 68.031540000000010000
          Width = 60.472465350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '48')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 740.787880000000000000
          Top = 49.133889999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 816.378480000000000000
          Top = 49.133889999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 891.969080000000000000
          Top = 49.133889999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 967.559680000000000000
          Top = 49.133889999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 740.787880000000000000
          Top = 68.031540000000010000
          Width = 75.590585350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '49')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 816.378480000000000000
          Top = 68.031540000000010000
          Width = 75.590585350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '50')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 891.969080000000000000
          Top = 68.031540000000010000
          Width = 75.590585350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '51')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 967.559680000000000000
          Top = 68.031540000000010000
          Width = 79.370115350000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '52')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 506.457020000000000000
          Top = 49.133890000000010000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 563.149970000000100000
          Top = 49.133890000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 506.457020000000000000
          Top = 68.031540000000010000
          Width = 56.692935350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '45')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 563.149970000000100000
          Top = 68.031540000000010000
          Width = 60.472465350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '46')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 389.291590000000000000
          Top = 49.133890000000010000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 445.984540000000000000
          Top = 49.133890000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 389.291590000000000000
          Top = 68.031540000000010000
          Width = 56.692935350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '43')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 445.984540000000000000
          Top = 68.031540000000010000
          Width = 60.472465350000000000
          Height = 22.677180000000000000
          Color = clSilver
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '44')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 34.015748030000000000
        Top = 132.283550000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDSTab2'
        RowCount = 0
        object Memo74: TfrxMemoView
          Width = 26.456710000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 26.456710000000000000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataField = 'ABSENCE_CODES'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSTab2."ABSENCE_CODES"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 64.252010000000000000
          Width = 45.354360000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1026#1056#181#1056#183#1056#1105#1056#1169#1056#181#1056#1029#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 109.606370000000000000
          Width = 45.354360000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1109#1057#1027#1056#1029#1056#1109#1056#1030#1056#1029#1056#1109#1056#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 154.960730000000000000
          Width = 64.252010000000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DataField = 'TEACHER_TAB_NUM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSTab2."TEACHER_TAB_NUM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 219.212740000000000000
          Width = 45.354345350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 264.567100000000000000
          Width = 41.574815350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 306.141930000000000000
          Width = 41.574815350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 347.716760000000000000
          Width = 41.574815350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 389.291590000000000000
          Width = 56.692935350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 445.984540000000000000
          Width = 60.472465350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 506.457020000000000000
          Width = 56.692935350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 563.149970000000100000
          Width = 64.251995350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 623.622450000000000000
          Width = 56.692935350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 680.315400000000000000
          Width = 60.472465350000000000
          Height = 34.015748030000000000
          StretchMode = smMaxHeight
          Color = clSilver
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.RightLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object m55: TfrxMemoView
          Left = 740.787880000000000000
          Width = 75.590585350000000000
          Height = 34.015748030000000000
          OnBeforePrint = 'm55OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object m56: TfrxMemoView
          Left = 816.378480000000000000
          Width = 75.590585350000000000
          Height = 34.015748030000000000
          OnBeforePrint = 'm55OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object m57: TfrxMemoView
          Left = 891.969080000000000000
          Width = 75.590585350000000000
          Height = 34.015748030000000000
          OnBeforePrint = 'm55OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object m58: TfrxMemoView
          Left = 967.559680000000000000
          Width = 79.370115350000000000
          Height = 34.015748030000000000
          OnBeforePrint = 'm55OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object mComments: TfrxMemoView
          Left = 740.787880000000000000
          Width = 306.141915350000000000
          Height = 34.015748030000000000
          OnBeforePrint = 'mCommentsOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'COMMENTS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDSTab2'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 1.500000000000000000
          Memo.UTF8 = (
            '[frxDBDSTab2."COMMENTS"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 109.606370000000000000
        Top = 226.771800000000000000
        Width = 1046.929810000000000000
        object Rich1: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 109.606370000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743230347B5C2A5C666E616D652054696D6573204E657720526F6D616E
            3B7D54696D6573204E657720526F6D616E204359523B7D7B5C66315C666E696C
            5C6663686172736574302054696D6573204E657720526F6D616E3B7D7D0D0A5C
            766965776B696E64345C7563315C706172645C66305C667332345C7061720D0A
            5C7061720D0A5C2763385C2766315C2765665C2765655C2765625C2765645C27
            65385C2766325C2765355C2765625C2766635C6C616E67313033335C6631203A
            205C6C616E67313034395C66305C2763375C2765305C2765632E205C2765345C
            2765385C2766305C2765355C2765615C2766325C2765655C2766305C27653020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F2020
            202020202020202020202020205C2763642E5C2763322E205C2763615C276633
            5C2765625C2766665C2766315C2765655C2765325C2765305C7061720D0A5C70
            61720D0A20202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020205C6C616E67313033335C6631
            202220202020205C6C616E67313034395C66302020205C6C616E67313033335C
            663120222020202020202020202020202020202020202032303133205C6C616E
            67313034395C66305C2765335C2765655C2765345C2765305C756C5C66315C70
            61720D0A7D0D0A00}
        end
      end
    end
  end
  object frxDBDSAT1: TfrxDBDataset
    UserName = 'frxDBDSAbsentTab1'
    CloseDataSource = False
    DataSet = ibdsAbsentTab1
    Left = 360
    Top = 216
  end
  object ibdsAbsentTab1: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select *'
      'from v_main_tab_part_1')
    Left = 392
    Top = 216
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
    Left = 704
    Top = 128
  end
  object ibdsTabParams: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select *'
      'from v_main_tab_params')
    Left = 392
    Top = 248
  end
  object frxDBDSParams: TfrxDBDataset
    UserName = 'frxDBDSTabParams'
    CloseDataSource = False
    DataSet = ibdsTabParams
    Left = 360
    Top = 248
  end
  object ibdsTabPart2: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select *'
      'from main_tab_part_2')
    Left = 392
    Top = 184
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDSTab2'
    CloseDataSource = False
    DataSet = ibdsTabPart2
    Left = 360
    Top = 184
  end
end
