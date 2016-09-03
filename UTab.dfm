object fmTab: TfmTab
  Left = 243
  Top = 249
  HelpContext = 31
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058#1072#1073#1077#1083#1100
  ClientHeight = 533
  ClientWidth = 1661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'zawuch.hlp'
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1661
    Height = 61
    Align = alTop
    TabOrder = 0
    object btnForming: TSpeedButton
      Left = 16
      Top = 8
      Width = 185
      Height = 41
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFormingClick
    end
    object btnEdit: TSpeedButton
      Left = 216
      Top = 8
      Width = 205
      Height = 41
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -22
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = dbgTabDblClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 61
    Width = 1661
    Height = 60
    Align = alTop
    TabOrder = 1
    object pHeader01: TPanel
      Left = 103
      Top = 0
      Width = 287
      Height = 61
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      TabOrder = 0
    end
    object pHeader02: TPanel
      Left = 390
      Top = 0
      Width = 63
      Height = 61
      Caption = #1044#1085#1080
      TabOrder = 1
    end
    object pHeader03: TPanel
      Left = 453
      Top = 30
      Width = 85
      Height = 31
      Caption = #1084#1083'.'
      TabOrder = 2
    end
    object pHeader04: TPanel
      Left = 538
      Top = 30
      Width = 85
      Height = 31
      Caption = #1089#1090'.'
      TabOrder = 3
    end
    object pHeader05: TPanel
      Left = 623
      Top = 30
      Width = 85
      Height = 31
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 4
    end
    object pHeader06: TPanel
      Left = 708
      Top = 30
      Width = 85
      Height = 31
      Caption = #1084#1083'.'
      TabOrder = 5
    end
    object pHeader07: TPanel
      Left = 793
      Top = 30
      Width = 85
      Height = 31
      Caption = #1089#1090'.'
      TabOrder = 6
    end
    object pHeader08: TPanel
      Left = 878
      Top = 30
      Width = 85
      Height = 31
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 7
    end
    object Panel11: TPanel
      Left = 453
      Top = 0
      Width = 255
      Height = 30
      Caption = #1063#1072#1089#1099
      TabOrder = 8
    end
    object Panel12: TPanel
      Left = 708
      Top = 0
      Width = 255
      Height = 30
      Caption = #1063#1072#1089#1099' ('#1079#1072#1084#1077#1097#1077#1085#1080#1077')'
      TabOrder = 9
    end
    object pHeader09: TPanel
      Left = 963
      Top = 0
      Width = 318
      Height = 61
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
      TabOrder = 10
    end
  end
  object pHeader00: TPanel
    Left = 0
    Top = 61
    Width = 103
    Height = 62
    Caption = #1058#1072#1073'. '#8470
    TabOrder = 2
  end
  object dbgTab: TRxDBGrid
    Left = 0
    Top = 121
    Width = 1661
    Height = 412
    Align = alClient
    DataSource = dsTab
    Options = [dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -20
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
    ReportOptions.LastChange = 42611.982191793980000000
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
      '  {'
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
      '  }'
      'end;'
      ''
      'procedure m55OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  comments: variant;'
      'begin'
      '  {'
      '  comments := <frxDBDSTab2."COMMENTS">;'
      
        '  TfrxMemoView(Sender).Visible := not((comments <> Null) and (le' +
        'ngth(comments) > 0));'
      '  }'
      'end;'
      ''
      'procedure mCommentsOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  comments: variant;'
      'begin'
      '  {'
      '  comments := <frxDBDSTab2."COMMENTS">;'
      
        '  TfrxMemoView(Sender).Visible := not((comments = Null) or (leng' +
        'th(comments) = 0));'
      '  }'
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
    Variables = <
      item
        Name = ' report'
        Value = Null
      end
      item
        Name = 'isDraftMode'
        Value = Null
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
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Duplex = dmHorizontal
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo109: TfrxMemoView
          Left = 147.401670000000000000
          Top = 56.692949999999990000
          Width = 457.323130000000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1056#177#1056#181#1056#187#1057#1034' '#1074#8222#8211' __________'
            
              #1057#1107#1057#8225#1056#181#1057#8218#1056#176' '#1056#1105#1057#1027#1056#1111#1056#1109#1056#187#1057#1034#1056#183#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1057#1026#1056#176#1056#177#1056#1109#1057#8225#1056#181#1056#1110#1056#1109' '#1056#1030#1057#1026#1056#181#1056#1112#1056 +
              #181#1056#1029#1056#1105)
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 147.401670000000000000
          Top = 109.606370000000000000
          Width = 457.323130000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' 1 '#1056#1111#1056#1109' __ ____________ 2016 '#1056#1110'.')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Top = 132.283550000000000000
          Width = 133.795362000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1032#1057#8225#1056#181#1057#1026#1056#181#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 147.401670000000000000
          Top = 132.283550000000000000
          Width = 458.834942000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1114#1056#1115#1056#1032#1056#8221#1056#1115#1056#8221' '#1056#8221#1056#1025#1056#152' '#1056#1105#1056#1112'. '#1056#8220'. '#1056#164'. '#1056#1119#1056#1109#1056#1029#1056#1109#1056#1112#1056#176#1057#1026#1056#181#1056#1029#1056#1108#1056#1109' '#1056#1114#1056#1115' '#1056#1110 +
              #1056#1109#1057#1026#1056#1109#1056#1169' '#1056#1113#1057#1026#1056#176#1057#1027#1056#1029#1056#1109#1056#1169#1056#176#1057#1026'                ')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Top = 147.401670000000000000
          Width = 133.795362000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1057#8218#1057#1026#1057#1107#1056#1108#1057#8218#1057#1107#1057#1026#1056#1029#1056#1109#1056#181' '#1056#1111#1056#1109#1056#1169#1057#1026#1056#176#1056#183#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 147.401670000000000000
          Top = 147.401670000000000000
          Width = 458.834942000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#1027#1056#1029#1056#1109#1056#1030#1056#1029#1056#1109#1056#8470' '#1056#1111#1056#181#1057#1026#1057#1027#1056#1109#1056#1029#1056#176#1056#187)
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Top = 162.519790000000000000
          Width = 133.795362000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8217#1056#1105#1056#1169' '#1057#8218#1056#176#1056#177#1056#181#1056#187#1057#1039)
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 725.669760000000000000
          Top = 86.929190000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1115#1056#8221#1056#171)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 725.669760000000000000
          Top = 177.637910000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Now]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 608.504330000000000000
          Top = 162.519790000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1057#1026' '#1056#1108#1056#1109#1057#1026#1057#1026#1056#181#1056#1108#1057#8218#1056#1105#1057#1026#1056#1109#1056#1030#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 631.181510000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1119#1056#1115)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 631.181510000000000000
          Top = 117.165430000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 608.504330000000000000
          Top = 102.047310000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#164#1056#1109#1057#1026#1056#1112#1056#176' '#1056#1111#1056#1109' '#1056#1115#1056#1113#1056#1032#1056#8221)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 725.669760000000000000
          Top = 102.047310000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '0504421')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 725.669760000000000000
          Top = 117.165430000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 725.669760000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '31821185')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 725.669760000000000000
          Top = 147.401670000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 725.669760000000000000
          Top = 162.519790000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 559.370440000000000000
          Top = 177.637910000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#8222#1056#1109#1057#1026#1056#1112#1056#1105#1057#1026#1056#1109#1056#1030#1056#176#1056#1029#1056#1105#1057#1039' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 147.401670000000000000
          Top = 162.519790000000000000
          Width = 458.834942000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#181#1057#1026#1056#1030#1056#1105#1057#8225#1056#1029#1057#8249#1056#8470)
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 147.401670000000000000
          Top = 177.637910000000000000
          Width = 458.834942000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '('#1056#1111#1056#181#1057#1026#1056#1030#1056#1105#1057#8225#1056#1029#1057#8249#1056#8470' -- 0; '#1056#1108#1056#1109#1057#1026#1057#1026#1056#181#1056#1108#1057#8218#1056#1105#1057#1026#1057#1107#1057#1035#1057#8240#1056#1105#1056#8470' -- 1,2 '#1056#1105 +
              ' '#1057#8218'.'#1056#1111'.)')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 400.630180000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDSAT1
        DataSetName = 'frxDBDSAbsentTab1'
        KeepHeader = True
        RowCount = 0
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 15.118119999999980000
          Width = 124.724490000000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8 = (
            '[<frxDBDSAbsentTab1."TEACHER_NAME">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          ShiftMode = smDontShift
          Top = 15.118119999999980000
          Width = 15.118120000000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          ShiftMode = smDontShift
          Left = 192.756030000000000000
          Top = 15.118119999999980000
          Width = 64.252010000000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'TEACHER_POST'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."TEACHER_POST"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 257.008040000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_1'
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."DAY_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 272.126160000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_2'
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
            '[frxDBDSAbsentTab1."DAY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 287.244280000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_3'
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
            '[frxDBDSAbsentTab1."DAY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 302.362400000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_4'
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
            '[frxDBDSAbsentTab1."DAY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay5: TfrxMemoView
          ShiftMode = smDontShift
          Left = 317.480520000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_5'
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
            '[frxDBDSAbsentTab1."DAY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay6: TfrxMemoView
          ShiftMode = smDontShift
          Left = 332.598640000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_6'
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
            '[frxDBDSAbsentTab1."DAY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay7: TfrxMemoView
          ShiftMode = smDontShift
          Left = 347.716759999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_7'
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
            '[frxDBDSAbsentTab1."DAY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 362.834879999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_8'
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
            '[frxDBDSAbsentTab1."DAY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 377.952999999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_9'
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
            '[frxDBDSAbsentTab1."DAY_9"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 393.071119999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_10'
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
            '[frxDBDSAbsentTab1."DAY_10"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay11: TfrxMemoView
          ShiftMode = smDontShift
          Left = 408.189239999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_11'
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
            '[frxDBDSAbsentTab1."DAY_11"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay12: TfrxMemoView
          ShiftMode = smDontShift
          Left = 423.307359999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_12'
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
            '[frxDBDSAbsentTab1."DAY_12"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay13: TfrxMemoView
          ShiftMode = smDontShift
          Left = 438.425479999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_13'
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
            '[frxDBDSAbsentTab1."DAY_13"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay14: TfrxMemoView
          ShiftMode = smDontShift
          Left = 453.543599999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_14'
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
            '[frxDBDSAbsentTab1."DAY_14"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay15: TfrxMemoView
          ShiftMode = smDontShift
          Left = 468.661719999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_15'
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
            '[frxDBDSAbsentTab1."DAY_15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay16: TfrxMemoView
          ShiftMode = smDontShift
          Left = 544.252320000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_16'
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
            '[frxDBDSAbsentTab1."DAY_16"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 559.370440000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_17'
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
            '[frxDBDSAbsentTab1."DAY_17"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 574.488560000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_18'
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
            '[frxDBDSAbsentTab1."DAY_18"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay19: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606680000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_19'
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
            '[frxDBDSAbsentTab1."DAY_19"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay20: TfrxMemoView
          ShiftMode = smDontShift
          Left = 604.724799999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_20'
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
            '[frxDBDSAbsentTab1."DAY_20"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay21: TfrxMemoView
          ShiftMode = smDontShift
          Left = 619.842920000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_21'
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
            '[frxDBDSAbsentTab1."DAY_21"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay22: TfrxMemoView
          ShiftMode = smDontShift
          Left = 634.961039999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_22'
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
            '[frxDBDSAbsentTab1."DAY_22"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay23: TfrxMemoView
          ShiftMode = smDontShift
          Left = 650.079160000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_23'
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
            '[frxDBDSAbsentTab1."DAY_23"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay24: TfrxMemoView
          ShiftMode = smDontShift
          Left = 665.197279999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_24'
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
            '[frxDBDSAbsentTab1."DAY_24"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay25: TfrxMemoView
          ShiftMode = smDontShift
          Left = 680.315400000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_25'
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
            '[frxDBDSAbsentTab1."DAY_25"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 695.433519999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_26'
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
            '[frxDBDSAbsentTab1."DAY_26"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay27: TfrxMemoView
          ShiftMode = smDontShift
          Left = 710.551640000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_27'
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
            '[frxDBDSAbsentTab1."DAY_27"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 725.669759999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_28'
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
            '[frxDBDSAbsentTab1."DAY_28"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 740.787880000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_29'
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
            '[frxDBDSAbsentTab1."DAY_29"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 755.905999999999000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_30'
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
            '[frxDBDSAbsentTab1."DAY_30"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object mDay31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 771.024120000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'DAY_31'
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
            '[frxDBDSAbsentTab1."DAY_31"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          ShiftMode = smDontShift
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          ShiftMode = smDontShift
          Left = 139.842610000000000000
          Top = 15.118119999999980000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Copy(<frxDBDSTab2."TEACHER_TAB_NUM">, 1, 3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          ShiftMode = smDontShift
          Left = 166.299320000000000000
          Top = 15.118119999999980000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Copy(<frxDBDSTab2."TEACHER_TAB_NUM">, 4, 3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          ShiftMode = smDontShift
          Left = 139.842610000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          ShiftMode = smDontShift
          Left = 166.299320000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          ShiftMode = smDontShift
          Left = 192.756030000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          ShiftMode = smDontShift
          Left = 257.008040000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          ShiftMode = smDontShift
          Left = 272.126160000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          ShiftMode = smDontShift
          Left = 287.244280000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          ShiftMode = smDontShift
          Left = 302.362400000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          ShiftMode = smDontShift
          Left = 317.480520000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          ShiftMode = smDontShift
          Left = 332.598640000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          ShiftMode = smDontShift
          Left = 347.716760000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          ShiftMode = smDontShift
          Left = 362.834880000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          ShiftMode = smDontShift
          Left = 377.953000000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          ShiftMode = smDontShift
          Left = 393.071120000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          ShiftMode = smDontShift
          Left = 408.189240000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          ShiftMode = smDontShift
          Left = 423.307360000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          ShiftMode = smDontShift
          Left = 438.425480000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          ShiftMode = smDontShift
          Left = 453.543600000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          ShiftMode = smDontShift
          Left = 453.543600000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          ShiftMode = smDontShift
          Left = 468.661720000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          ShiftMode = smDontShift
          Left = 544.252320000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          ShiftMode = smDontShift
          Left = 559.370440000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          ShiftMode = smDontShift
          Left = 574.488560000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo129: TfrxMemoView
          ShiftMode = smDontShift
          Left = 574.488560000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          ShiftMode = smDontShift
          Left = 589.606680000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          ShiftMode = smDontShift
          Left = 604.724800000000000000
          Top = 0.000000000000056843
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          ShiftMode = smDontShift
          Left = 619.842920000000000000
          Top = 0.000000000000056843
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          ShiftMode = smDontShift
          Left = 634.961040000000000000
          Top = 0.000000000000056843
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          ShiftMode = smDontShift
          Left = 634.961040000000000000
          Top = 0.000000000000056843
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          ShiftMode = smDontShift
          Left = 650.079160000000000000
          Top = 0.000000000000056843
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          ShiftMode = smDontShift
          Left = 665.197280000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          ShiftMode = smDontShift
          Left = 680.315400000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          ShiftMode = smDontShift
          Left = 695.433520000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          ShiftMode = smDontShift
          Left = 695.433520000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          ShiftMode = smDontShift
          Left = 710.551640000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          ShiftMode = smDontShift
          Left = 725.669760000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo142: TfrxMemoView
          ShiftMode = smDontShift
          Left = 740.787880000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          ShiftMode = smDontShift
          Left = 755.906000000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          ShiftMode = smDontShift
          Left = 755.906000000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          ShiftMode = smDontShift
          Left = 771.024120000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          ShiftMode = smDontShift
          Left = 786.142240000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          ShiftMode = smDontShift
          Left = 816.378480000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'ABSENT_QTY'
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
            '[frxDBDSAbsentTab1."ABSENT_QTY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          ShiftMode = smDontShift
          Left = 786.142240000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'PRECENCE_QTY'
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
            '[frxDBDSAbsentTab1."PRECENCE_QTY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 816.378480000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'ABSENT_REASONS'
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
            '[frxDBDSAbsentTab1."ABSENT_REASONS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Left = 483.779840000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          ShiftMode = smDontShift
          Left = 514.016080000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DataField = 'ABSENT_QTY_15'
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
            '[frxDBDSAbsentTab1."ABSENT_QTY_15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          ShiftMode = smDontShift
          Left = 483.779840000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'PRECENCE_QTY_15'
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
            '[frxDBDSAbsentTab1."PRECENCE_QTY_15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          ShiftMode = smDontShift
          Left = 514.016080000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataField = 'ABSENT_REASONS_15'
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
            '[frxDBDSAbsentTab1."ABSENT_REASONS_15"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          ShiftMode = smDontShift
          Left = 846.614720000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          ShiftMode = smDontShift
          Left = 895.748610000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          ShiftMode = smDontShift
          Left = 944.882500000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          ShiftMode = smDontShift
          Left = 994.016390000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          ShiftMode = smDontShift
          Left = 846.614720000000000000
          Top = 15.118119999999980000
          Width = 49.133875350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
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
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxDBDSAbsentTab1."CLOCK_SWP_Y">+<frxDBDSAbsentTab1."CLOCK_SWP' +
              '_O">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          ShiftMode = smDontShift
          Left = 895.748610000000000000
          Top = 15.118119999999980000
          Width = 49.133875350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxDBDSAbsentTab1."CLOCK_SWP_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          ShiftMode = smDontShift
          Left = 944.882500000000000000
          Top = 15.118119999999980000
          Width = 49.133875350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[IIF(<isDraftMode>, <frxDBDSAbsentTab1."CLOCK_Y">+<frxDBDSAbsent' +
              'Tab1."CLOCK_O">,0)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          ShiftMode = smDontShift
          Left = 994.016390000000000000
          Top = 15.118119999999980000
          Width = 52.913405350000000000
          Height = 15.118098030000000000
          StretchMode = smActualHeight
          DataSet = frxDBDSAT1
          DataSetName = 'frxDBDSAbsentTab1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[IIF(<isDraftMode>, <frxDBDSAbsentTab1."CLOCK_C">,0)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 98.267780000000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object Memo5: TfrxMemoView
          Width = 139.842519690000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039', '#1056#1105#1056#1112#1057#1039', '
            #1056#1109#1057#8218#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 192.756030000000000000
          Width = 64.252010000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034
            '('#1056#1111#1057#1026#1056#1109#1057#8222#1056#181#1057#1027#1057#1027#1056#1105#1057#1039')')
          ParentFont = False
        end
        object mMonthNum1: TfrxMemoView
          Left = 257.008040000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum2: TfrxMemoView
          Align = baLeft
          Left = 272.126145350000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum3: TfrxMemoView
          Left = 287.244250700000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum4: TfrxMemoView
          Left = 302.362356050000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum5: TfrxMemoView
          Left = 317.480461400000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum6: TfrxMemoView
          Left = 332.598566750000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum7: TfrxMemoView
          Left = 347.716672100000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum8: TfrxMemoView
          Left = 362.834777450000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum9: TfrxMemoView
          Left = 377.952882800000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum10: TfrxMemoView
          Left = 393.070988150000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum11: TfrxMemoView
          Left = 408.189093500000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum12: TfrxMemoView
          Left = 423.307198850000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum13: TfrxMemoView
          Left = 438.425304200000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum14: TfrxMemoView
          Left = 453.543409550000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum15: TfrxMemoView
          Left = 468.661514900000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum16: TfrxMemoView
          Left = 544.252100250000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum17: TfrxMemoView
          Left = 559.370205600000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum18: TfrxMemoView
          Left = 574.488310950000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum19: TfrxMemoView
          Left = 589.606416300000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum20: TfrxMemoView
          Left = 604.724521650000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum21: TfrxMemoView
          Left = 619.842627000000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '21')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum22: TfrxMemoView
          Left = 634.960732350000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '22')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum23: TfrxMemoView
          Left = 650.078837700000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '23')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum24: TfrxMemoView
          Left = 665.196943050000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '24')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum25: TfrxMemoView
          Left = 680.315048400000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '25')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum26: TfrxMemoView
          Left = 695.433153750000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '26')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum27: TfrxMemoView
          Left = 710.551259100000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '27')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum28: TfrxMemoView
          Left = 725.669364450000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '28')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum29: TfrxMemoView
          Left = 740.787469800000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '29')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum30: TfrxMemoView
          Left = 755.905575150000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '30')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum31: TfrxMemoView
          Left = 771.023680500000000000
          Top = 15.118119999999980000
          Width = 15.118105350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '31')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthDays: TfrxMemoView
          Left = 257.008040000000000000
          Width = 789.921755350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#167#1056#1105#1057#1027#1056#187#1056#176' '#1056#1112#1056#181#1057#1027#1057#1039#1057#8224#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Top = 83.149659999999990000
          Width = 139.842600240000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 139.842610000000000000
          Top = 83.149659999999990000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 166.299320000000000000
          Top = 83.149659999999990000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 192.756030000000000000
          Top = 83.149659999999990000
          Width = 64.251995350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 257.008040000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 272.126160000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 287.244280000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 302.362400000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 317.480520000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 332.598640000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 347.716760000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 362.834880000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 377.953000000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 393.071120000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 408.189240000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 423.307360000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 438.425480000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 453.543600000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 468.661720000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 483.779840000000000000
          Top = 83.149659999999990000
          Width = 30.236225350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 544.252320000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 559.370440000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 574.488560000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 589.606680000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 604.724800000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 619.842920000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 634.961040000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 650.079160000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 665.197280000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 680.315400000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 695.433520000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 710.551640000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 725.669760000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
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
          Left = 740.787880000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '34')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 139.842610000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1032#1057#8225#1057#8216#1057#8218#1056#1029#1057#8249#1056#8470' '#1056#1029#1056#1109#1056#1112#1056#181#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 166.299320000000000000
          Top = 34.015769999999970000
          Width = 26.456692910000000000
          Height = 49.133890000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 139.842610000000000000
          Top = 34.015769999999970000
          Width = 26.456692910000000000
          Height = 49.133890000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum1to25: TfrxMemoView
          Left = 483.779840000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109
            #1056#1169#1056#1029#1056#181#1056#8470' '
            '('#1057#8225#1056#176#1057#1027#1056#1109#1056#1030')'
            #1057#1039#1056#1030#1056#1109#1056#1108
            '('#1056#1029#1056#181#1057#1039#1056#1030#1056#1109#1056#1108')'
            #1057#1027' 1'
            #1056#1111#1056#1109' 15')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum20a: TfrxMemoView
          Left = 514.016080000000000000
          Top = 83.149659999999990000
          Width = 30.236225350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '20a')
          ParentFont = False
          VAlign = vaCenter
        end
        object mMonthNum1to25abs: TfrxMemoView
          Left = 514.016080000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109
            #1056#1169#1056#1029#1056#181#1056#8470' '
            '('#1057#8225#1056#176#1057#1027#1056#1109#1056#1030')'
            #1056#1029#1056#181#1057#1039#1056#1030#1056#1109#1056#1108
            ''
            #1057#1027' 1'
            #1056#1111#1056#1109' 15')
          ParentFont = False
          VAlign = vaCenter
        end
        object mHeadNum35: TfrxMemoView
          Left = 755.906000000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '35')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 771.024120000000000000
          Top = 83.149659999999990000
          Width = 15.118105350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '36')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 786.142240000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109
            #1056#1169#1056#1029#1056#181#1056#8470
            '('#1057#8225#1056#176#1057#1027#1056#1109#1056#1030')'
            #1057#1039#1056#1030#1056#1109#1056#1108
            '('#1056#1029#1056#181#1057#1039#1056#1030#1056#1109#1056#1108')'
            #1056#183#1056#176
            #1056#1112#1056#181#1057#1027#1057#1039#1057#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 816.378480000000000000
          Top = 15.118119999999980000
          Width = 30.236225350000000000
          Height = 68.031540000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109
            #1056#1169#1056#1029#1056#181#1056#8470
            '('#1057#8225#1056#176#1057#1027#1056#1109#1056#1030')'
            #1057#1039#1056#1030#1056#1109#1056#1108
            ''
            #1056#183#1056#176
            #1056#1112#1056#181#1057#1027#1057#1039#1057#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 786.142240000000000000
          Top = 83.149659999999990000
          Width = 30.236225350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '37')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 816.378480000000000000
          Top = 83.149659999999990000
          Width = 30.236225350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '37a')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          Left = 846.614720000000000000
          Top = 15.118119999999980000
          Width = 49.133875350000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181
            '('#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1057#8249#1056#181')'
            #1056#1111#1057#1026#1056#181#1056#1111#1056#1109#1056#1169#1056#176#1056#1030#1056#176'-'
            #1057#8218#1056#181#1056#187#1057#1034#1057#1027#1056#1108#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Left = 895.748610000000000000
          Top = 15.118119999999980000
          Width = 49.133875350000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112#1056#181#1057#8240#1056#181#1056#1029#1056#1105#1056#181
            '('#1057#1026#1056#176#1056#183#1056#1109#1056#1030#1057#8249#1056#181')'
            #1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218#1056#1112#1056#181#1056#8470'-'
            #1057#1027#1057#8218#1056#181#1057#1026#1057#1027#1056#1108#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          Left = 944.882500000000000000
          Top = 15.118119999999980000
          Width = 49.133875350000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<isDraftMode>, '#39#1056#1119#1056#181#1056#1169'. '#1057#8225#1056#176#1057#1027#1057#8249#39','#39#1056#160#1056#176#1056#177#1056#1109#1057#8218#1056#176' '#1056#1030' '#1056#1030#1057#8249#1057#8230#1056#1109 +
              #1056#1169#1056#1029#1057#8249#1056#181', '#1056#1111#1057#1026#1056#176#1056#183#1056#1169#1056#1029#1056#1105#1057#8225#1056#1029#1057#8249#1056#181' '#1056#1169#1056#1029#1056#1105#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Left = 994.016390000000000000
          Top = 15.118119999999980000
          Width = 52.913405350000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<isDraftMode>, '#39#1056#1113#1056#1109#1056#1029#1057#8224'. '#1057#8225#1056#176#1057#1027#1057#8249#39','#39#1056#1038#1056#1030#1056#181#1057#1026#1057#8230#1057#1107#1057#1026#1056#1109#1057#8225#1056#1029#1056#176 +
              #1057#1039' '#1057#1026#1056#176#1056#177#1056#1109#1057#8218#1056#176#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          Left = 846.614720000000000000
          Top = 83.149659999999990000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '38')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 895.748610000000000000
          Top = 83.149659999999990000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '39')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 944.882500000000000000
          Top = 83.149659999999990000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '40')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 994.016390000000000000
          Top = 83.149659999999990000
          Width = 52.913405350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '41')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          Left = 846.614720000000000000
          Top = 68.031540000000010000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 895.748610000000000000
          Top = 68.031540000000010000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          Left = 944.882500000000000000
          Top = 68.031540000000010000
          Width = 49.133875350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Left = 994.016390000000000000
          Top = 68.031540000000010000
          Width = 52.913405350000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 151.181200000000000000
        Top = 491.338900000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Top = 37.795299999999940000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1030#1056#181#1057#8218#1057#1027#1057#8218#1056#1030#1056#181#1056#1029#1056#1029#1057#8249#1056#8470' '#1056#1105#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Top = 37.795299999999940000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 75.590600000000000000
          Top = 52.913420000000030000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034')')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 177.637910000000000000
          Top = 37.795299999999940000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 177.637910000000000000
          Top = 52.913420000000030000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034')')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 279.685220000000000000
          Top = 37.795299999999940000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217'.'#1056#1106'. '#1056#1113#1056#1109#1056#1030#1056#176#1056#187#1056#181#1056#1030#1056#176)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 279.685220000000000000
          Top = 52.913420000000030000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1057#1026#1056#176#1057#1027#1057#8364#1056#1105#1057#8222#1057#1026#1056#1109#1056#1030#1056#1108#1056#176' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1056#1105')')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 79.370129999999960000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 75.590600000000000000
          Top = 79.370129999999960000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1112'. '#1056#1169#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026#1056#176)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 75.590600000000000000
          Top = 94.488250000000050000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034')')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 177.637910000000000000
          Top = 79.370129999999960000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 177.637910000000000000
          Top = 94.488250000000050000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034')')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 279.685220000000000000
          Top = 79.370129999999960000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116'.'#1056#8217'. '#1056#1113#1057#1107#1056#187#1057#1039#1057#1027#1056#1109#1056#1030#1056#176)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 279.685220000000000000
          Top = 94.488250000000050000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1057#1026#1056#176#1057#1027#1057#8364#1056#1105#1057#8222#1057#1026#1056#1109#1056#1030#1056#1108#1056#176' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1056#1105')')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 453.543600000000000000
          Top = 37.795299999999940000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1057#8218#1056#1112#1056#181#1057#8218#1056#1108#1056#176' '#1056#177#1057#1107#1057#8230#1056#1110#1056#176#1056#187#1057#8218#1056#181#1057#1026#1056#1105#1056#1105' '#1056#1109' '#1056#1111#1057#1026#1056#1105#1056#1029#1057#1039#1057#8218#1056#1105#1056#1105' '#1056#1029#1056#176#1057#1027 +
              #1057#8218#1056#1109#1057#1039#1057#8240#1056#181#1056#1110#1056#1109' '#1057#8218#1056#176#1056#177#1056#181#1056#187#1057#1039)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 453.543600000000000000
          Top = 52.913420000000030000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 468.661720000000000000
          Top = 68.031539999999900000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1057#1027#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 559.370440000000000000
          Top = 68.031539999999900000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 559.370440000000000000
          Top = 83.149659999999990000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1056#1169#1056#1109#1056#187#1056#182#1056#1029#1056#1109#1057#1027#1057#8218#1057#1034')')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 653.858690000000000000
          Top = 68.031539999999900000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 653.858690000000000000
          Top = 83.149659999999990000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1057#1034')')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 744.567410000000000000
          Top = 68.031539999999900000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 744.567410000000000000
          Top = 83.149659999999990000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '('#1057#1026#1056#176#1057#1027#1057#8364#1056#1105#1057#8222#1057#1026#1056#1109#1056#1030#1056#1108#1056#176' '#1056#1111#1056#1109#1056#1169#1056#1111#1056#1105#1057#1027#1056#1105')')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 468.661720000000000000
          Top = 102.047310000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '"___"________________________ 20___'#1056#1110'.')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 453.543600000000000000
          Top = 37.795299999999940000
          Width = 442.205010000000000000
          Height = 90.708720000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Style = fsDashDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Top = 109.606370000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Top = 124.724490000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '"___"________________________ 20___'#1056#1110'.')
          ParentFont = False
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
