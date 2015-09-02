object fmCalcIndClockRep: TfmCalcIndClockRep
  Left = 355
  Top = 192
  Width = 753
  Height = 522
  Caption = #1056#1072#1095#1077#1090' '#1091#1095#1077#1073#1085#1099#1093' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1093' '#1095#1072#1089#1086#1074
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
  object CoolBar: TCoolBar
    Left = 0
    Top = 0
    Width = 745
    Height = 33
    BandMaximize = bmNone
    Bands = <
      item
        Break = False
        Control = jvdblcbCurriculum
        ImageIndex = -1
        MinHeight = 27
        Text = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        Width = 291
      end
      item
        Break = False
        Control = cbZeroClassInOne
        ImageIndex = -1
        MinHeight = 23
        Width = 452
      end>
    EdgeBorders = []
    FixedSize = True
    FixedOrder = True
    object cbZeroClassInOne: TCheckBox
      Left = 302
      Top = 2
      Width = 439
      Height = 23
      Action = aZeroSumWithOne
      TabOrder = 0
    end
    object jvdblcbCurriculum: TJvDBLookupCombo
      Left = 95
      Top = 0
      Width = 192
      Height = 27
      LookupField = 'ID'
      LookupDisplay = 'DEPT_NAME'
      LookupSource = dsDepartment
      TabOrder = 1
      OnChange = jvdblcbCurriculumChange
    end
  end
  object frxPreview: TfrxPreview
    Left = 0
    Top = 33
    Width = 745
    Height = 435
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
  end
  object frxReport: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    EngineOptions.ConvertNulls = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    Preview = frxPreview
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39314.790248657400000000
    ReportOptions.LastChange = 39328.480488634260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '{'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_0">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_0">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q0'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_0">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_1">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_1">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q1'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_1">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_2">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_2">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q2'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_2">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_3">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_3">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q3'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_3">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_4">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_4">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q4'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_4">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_5">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_5">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q5'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_5">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_6">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_6">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q6'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_6">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_7">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_7">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q7'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_7">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_8">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_8">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q8'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_8">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">, MasterData1)> <> Nul' +
        'l) and (<SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">, MasterData1)> <> 0' +
        ') then'
      
        '       Set('#39'QY'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">' +
        ', MasterData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_O_TOTAL">, MasterData1)> <> Nul' +
        'l) and (<SUM(<frxdbdsCurrRecord."Q_O_TOTAL">, MasterData1)> <> 0' +
        ') then'
      
        '       Set('#39'QO'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_O_TOTAL">' +
        ', MasterData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_C_TOTAL">, MasterData1)> <> Nul' +
        'l) and (<SUM(<frxdbdsCurrRecord."Q_C_TOTAL">, MasterData1)> <> 0' +
        ') then'
      
        '       Set('#39'QC'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_C_TOTAL">' +
        ', MasterData1)>));'
      '       }'
      'end;'
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '{'
      '  if Engine.FinalPass then'
      '  begin'
      
        '    if Get('#39'Q0'#39') <> Null then mQ0.Text := Get('#39'Q0'#39') else mQ0.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q1'#39') <> Null then mQ1.Text := Get('#39'Q1'#39') else mQ1.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q2'#39') <> Null then mQ2.Text := Get('#39'Q2'#39') else mQ2.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q3'#39') <> Null then mQ3.Text := Get('#39'Q3'#39') else mQ3.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q4'#39') <> Null then mQ4.Text := Get('#39'Q4'#39') else mQ4.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q5'#39') <> Null then mQ5.Text := Get('#39'Q5'#39') else mQ5.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q6'#39') <> Null then mQ6.Text := Get('#39'Q6'#39') else mQ6.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q7'#39') <> Null then mQ7.Text := Get('#39'Q7'#39') else mQ7.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q8'#39') <> Null then mQ8.Text := Get('#39'Q8'#39') else mQ8.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'QY'#39') <> Null then mQY.Text := Get('#39'QY'#39') else mQY.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'QO'#39') <> Null then mQO.Text := Get('#39'QO'#39') else mQO.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'QC'#39') <> Null then mQC.Text := Get('#39'QC'#39') else mQC.Tex' +
        't := '#39#39';'
      '  end;'
      '  }'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStartReport = 'frxReportOnStartReport'
    OnStopReport = 'frxReportOnStopReport'
    Left = 472
    Top = 232
    Datasets = <
      item
        DataSet = frxdbdsCurriculum
        DataSetName = 'frxdbdsCurriculum'
      end
      item
        DataSet = frxdbdsCurrRecord
        DataSetName = 'frxdbdsCurrRecord'
      end>
    Variables = <
      item
        Name = ' QTY'
        Value = Null
      end
      item
        Name = 'Q0'
        Value = Null
      end
      item
        Name = 'Q1'
        Value = Null
      end
      item
        Name = 'Q2'
        Value = Null
      end
      item
        Name = 'Q3'
        Value = Null
      end
      item
        Name = 'Q4'
        Value = Null
      end
      item
        Name = 'Q5'
        Value = Null
      end
      item
        Name = 'Q6'
        Value = Null
      end
      item
        Name = 'Q7'
        Value = Null
      end
      item
        Name = 'Q8'
        Value = Null
      end
      item
        Name = 'QY'
        Value = Null
      end
      item
        Name = 'QO'
        Value = Null
      end
      item
        Name = 'QC'
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
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsCurrRecord
        DataSetName = 'frxdbdsCurrRecord'
        RowCount = 0
        object Memo72: TfrxMemoView
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DataField = 'SUBJECT_NAME'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."SUBJECT_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 113.385900000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_0"> + <frxdbdsCurrRecord."T_V_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_0'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_1"> + <frxdbdsCurrRecord."T_V_1">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_1'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_2"> + <frxdbdsCurrRecord."T_V_2">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_2'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 294.803340000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_3"> + <frxdbdsCurrRecord."T_V_3">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_3'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 355.275820000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_4"> + <frxdbdsCurrRecord."T_V_4">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_4'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_5"> + <frxdbdsCurrRecord."T_V_5">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_5'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_6"> + <frxdbdsCurrRecord."T_V_6">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_6'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 536.693260000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_7"> + <frxdbdsCurrRecord."T_V_7">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_7'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 597.165740000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_8"> + <frxdbdsCurrRecord."T_V_8">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897649999999880000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_8'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 657.638220000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsCurrRecord."T_Y_TOTAL"> + <frxdbdsCurrRecord."T_V_Y_TOT' +
              'AL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 657.638220000000000000
          Top = 18.897649999999880000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'T_Y_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_Y_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 721.890230000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_V_Y_TOTAL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 786.142240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsCurrRecord."T_O_TOTAL"> + <frxdbdsCurrRecord."T_V_O_TOT' +
              'AL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 786.142240000000000000
          Top = 18.897649999999880000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'T_O_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_O_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 850.394250000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataField = 'T_V_O_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_V_O_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 914.646260000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsCurrRecord."T_C_TOTAL"> + <frxdbdsCurrRecord."T_V_C_TOT' +
              'AL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 914.646260000000000000
          Top = 18.897649999999880000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'T_C_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_C_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 978.898270000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataField = 'T_C_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_C_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 109.606370000000000000
        Top = 136.063080000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object Memo1: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#176#1057#1027#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '0')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1107#1057#8225'-'#1057#1027#1057#1039)
          ParentFont = False
        end
        object mQ0: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_0"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000110000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
        end
        object mQ2: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_2"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 294.803340000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
        end
        object mQ3: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_3"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 355.275820000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
        end
        object mQ4: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_4"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
        end
        object mQ5: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_5"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
        end
        object mQ6: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_6"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 536.693260000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
        end
        object mQ7: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_7"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 597.165740000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
        end
        object mQ8: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_8"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 657.638220000000000000
          Width = 385.512060000000000000
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
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
        end
        object mQY: TfrxMemoView
          Left = 657.638220000000000000
          Top = 18.897650000000000000
          Width = 128.503978500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_Y"]')
          ParentFont = False
        end
        object mQO: TfrxMemoView
          Left = 786.142240000000000000
          Top = 18.897650000000000000
          Width = 128.503978500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_O"]')
          ParentFont = False
        end
        object mQC: TfrxMemoView
          Left = 914.646260000000000000
          Top = 18.897650000000000000
          Width = 128.503978500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_C"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 56.692949999999990000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107'./'
            #1057#8222#1056#176#1056#1108#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105' '#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_0"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_0"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 173.858380000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_1"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_1"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 234.330860000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_2"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_2"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_3"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_3"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 355.275820000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_4"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_4"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 415.748300000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_5"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_5"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_6"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_6"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 536.693260000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_7"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_7"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 597.165740000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_8"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_8"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 657.638220000000000000
          Top = 37.795300000000200000
          Width = 128.503978500000000000
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
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 786.142240000000000000
          Top = 37.795300000000200000
          Width = 128.503978500000000000
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
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 914.646260000000000000
          Top = 37.795300000000200000
          Width = 128.503978500000000000
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
            #1056#1108#1056#1109#1056#1029#1057#8224' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 113.385900000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 113.385900000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 173.858380000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 173.858380000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 721.890230000000000000
          Top = 56.692950000000190000
          Width = 64.251968500000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 234.330860000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 234.330860000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 294.803340000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 294.803340000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 355.275820000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 355.275820000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 415.748300000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 415.748300000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 476.220780000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 476.220780000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 536.693260000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 536.693260000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 597.165740000000000000
          Top = 56.692950000000190000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 597.165740000000000000
          Top = 83.149660000000100000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 657.638220000000000000
          Top = 56.692950000000190000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 657.638220000000000000
          Top = 83.149660000000100000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 850.394250000000000000
          Top = 56.692950000000190000
          Width = 64.251968500000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 786.142240000000000000
          Top = 56.692950000000190000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 786.142240000000000000
          Top = 83.149660000000100000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 978.898270000000000000
          Top = 56.692950000000190000
          Width = 64.251968500000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 914.646260000000000000
          Top = 56.692950000000190000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 914.646260000000000000
          Top = 83.149660000000100000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object mQ1: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_1"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000010000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo100: TfrxMemoView
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 113.385900000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_0"> + <frxdbdsCurrRecord."T_V_0">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_0">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_1"> + <frxdbdsCurrRecord."T_V_1">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_1">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_2"> + <frxdbdsCurrRecord."T_V_2">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_2">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 294.803340000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_3"> + <frxdbdsCurrRecord."T_V_3">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_3">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 355.275820000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_4"> + <frxdbdsCurrRecord."T_V_4">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_4">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_5"> + <frxdbdsCurrRecord."T_V_5">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_5">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_6"> + <frxdbdsCurrRecord."T_V_6">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_6">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 536.693260000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_7"> + <frxdbdsCurrRecord."T_V_7">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_7">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 597.165740000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_8"> + <frxdbdsCurrRecord."T_V_8">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_8">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 657.638220000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_Y_TOTAL"> + <frxdbdsCurrRecord."T_V_Y' +
              '_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 657.638220000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_Y_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 721.890230000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_V_Y_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 786.142240000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_O_TOTAL"> + <frxdbdsCurrRecord."T_V_O' +
              '_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 786.142240000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_O_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 850.394250000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_V_O_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 914.646260000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_C_TOTAL"> + <frxdbdsCurrRecord."T_V_C' +
              '_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 914.646260000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_C_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 978.898270000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_C_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 173.858380000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_1">)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_0">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_3">)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 234.330860000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_2">)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 415.748300000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_5">)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 355.275820000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_4">)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 536.693260000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_7">)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_6">)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 657.638220000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 597.165740000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_8">)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 786.142240000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_O_TOTAL">)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 914.646260000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_C_TOTAL">)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000010000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo125: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 56.692950000000010000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          GapX = 10.000000000000000000
          Memo.UTF8 = (
            
              #1056#160#1056#176#1057#8225#1056#181#1057#8218' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1057#8249#1057#8230' '#1056#1105#1056#1029#1056#1169#1056#1105#1056#1030#1056#1105#1056#1169#1057#1107#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1057#8230' '#1057#8225#1056#176#1057#1027#1056#1109#1056 +
              #1030' '#1056#1029#1056#176' '#1056#1109#1057#8218#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#1105' [frxdbdsCurriculum."DEPT_NAME"], '#1056#1169#1056#187#1057 +
              #1039' '#1057#1107#1057#8225#1056#176#1057#8240#1056#1105#1057#8230#1057#1027#1057#1039' [frxdbdsCurriculum."PERIOD"] - '#1056#187#1056#181#1057#8218#1056#1029#1056#181#1056#8470' '#1057 +
              #8222#1056#1109#1057#1026#1056#1112#1057#8249' '#1056#1109#1056#177#1057#1107#1057#8225#1056#181#1056#1029#1056#1105#1057#1039'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdsCurrRecord: TfrxDBDataset
    UserName = 'frxdbdsCurrRecord'
    CloseDataSource = False
    DataSource = dsCurrRecord
    Left = 472
    Top = 296
  end
  object ActionList1: TActionList
    Left = 408
    Top = 232
    object aPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      OnExecute = aPrintExecute
    end
    object aExportRtf: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Word'
      OnExecute = aExportRtfExecute
    end
    object aExportExcel: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnExecute = aExportExcelExecute
    end
    object aExit: TAction
      Caption = #1042#1099#1093#1086#1076
      OnExecute = aExitExecute
    end
    object aZeroSumWithOne: TAction
      AutoCheck = True
      Caption = '0-'#1081' '#1082#1083#1072#1089#1089' '#1074' 1-'#1084
      OnExecute = aZeroSumWithOneExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 440
    Top = 232
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Action = aPrint
      end
      object Word1: TMenuItem
        Action = aExportRtf
      end
      object Excel1: TMenuItem
        Action = aExportExcel
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N4: TMenuItem
        Action = aExit
      end
    end
  end
  object ibdsCurrRecord: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select'
      '    D."ID",'
      '    CR.SUBJECT_ID SUBJECT_ID,'
      '    SUBJ."Name" SUBJECT_NAME,'
      
        '    SUM(CASE WHEN S."Class" = 0 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_0,'
      
        '    SUM(CASE WHEN S."Class" = 0 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_0,'
      
        '    SUM(CASE WHEN S."Class" = 0 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_0,'
      
        '    SUM(CASE WHEN S."Class" = 0 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_0,'
      ''
      
        '    SUM(CASE WHEN S."Class" in (0, 1) THEN (CASE COALESCE(CRT.c_' +
        'time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_01,'
      
        '    SUM(CASE WHEN S."Class" in (0, 1) THEN COALESCE(CRT.c_time, ' +
        '0) ELSE 0 END) T_01,'
      
        '    SUM(CASE WHEN S."Class" in (0, 1) AND STP."TeacherID" = 0 TH' +
        'EN (CASE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE ' +
        '0 END) Q_V_01,'
      
        '    SUM(CASE WHEN S."Class" in (0, 1) AND STP."TeacherID" = 0 TH' +
        'EN COALESCE(CRT.c_time, 0) ELSE 0 END) T_V_01,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 1 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_1,'
      
        '    SUM(CASE WHEN S."Class" = 1 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_1,'
      
        '    SUM(CASE WHEN S."Class" = 1 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_1,'
      
        '    SUM(CASE WHEN S."Class" = 1 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_1,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 2 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_2,'
      
        '    SUM(CASE WHEN S."Class" = 2 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_2,'
      
        '    SUM(CASE WHEN S."Class" = 2 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_2,'
      
        '    SUM(CASE WHEN S."Class" = 2 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_2,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 3 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_3,'
      
        '    SUM(CASE WHEN S."Class" = 3 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_3,'
      
        '    SUM(CASE WHEN S."Class" = 3 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_3,'
      
        '    SUM(CASE WHEN S."Class" = 3 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_3,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 4 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_4,'
      
        '    SUM(CASE WHEN S."Class" = 4 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_4,'
      
        '    SUM(CASE WHEN S."Class" = 4 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_4,'
      
        '    SUM(CASE WHEN S."Class" = 4 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_4,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 5 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_5,'
      
        '    SUM(CASE WHEN S."Class" = 5 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_5,'
      
        '    SUM(CASE WHEN S."Class" = 5 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_5,'
      
        '    SUM(CASE WHEN S."Class" = 5 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_5,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 6 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_6,'
      
        '    SUM(CASE WHEN S."Class" = 6 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_6,'
      
        '    SUM(CASE WHEN S."Class" = 6 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_6,'
      
        '    SUM(CASE WHEN S."Class" = 6 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_6,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 7 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_7,'
      
        '    SUM(CASE WHEN S."Class" = 7 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_7,'
      
        '    SUM(CASE WHEN S."Class" = 7 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_7,'
      
        '    SUM(CASE WHEN S."Class" = 7 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_7,'
      ''
      
        '    SUM(CASE WHEN S."Class" = 8 THEN (CASE COALESCE(CRT.c_time, ' +
        '0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_8,'
      
        '    SUM(CASE WHEN S."Class" = 8 THEN COALESCE(CRT.c_time, 0) ELS' +
        'E 0 END) T_8,'
      
        '    SUM(CASE WHEN S."Class" = 8 AND STP."TeacherID" = 0 THEN (CA' +
        'SE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END)' +
        ' Q_V_8,'
      
        '    SUM(CASE WHEN S."Class" = 8 AND STP."TeacherID" = 0 THEN COA' +
        'LESCE(CRT.c_time, 0) ELSE 0 END) T_V_8,'
      ''
      
        '    SUM(CASE WHEN CC.CATEGORY = 0 AND SUBJ."Code" <> 1 THEN (CAS' +
        'E COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) ' +
        'Q_Y_TOTAL,'
      
        '    SUM(CASE WHEN CC.CATEGORY = 0 AND SUBJ."Code" <> 1 THEN COAL' +
        'ESCE(CRT.c_time, 0) ELSE 0 END) T_Y_TOTAL,'
      
        '    SUM(CASE WHEN CC.CATEGORY = 0 AND SUBJ."Code" <> 1 AND STP."' +
        'TeacherID" = 0 THEN (CASE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ' +
        'ELSE 1 END) ELSE 0 END) Q_V_Y_TOTAL,'
      
        '    SUM(CASE WHEN CC.CATEGORY = 0 AND SUBJ."Code" <> 1 AND STP."' +
        'TeacherID" = 0 THEN COALESCE(CRT.c_time, 0) ELSE 0 END) T_V_Y_TO' +
        'TAL,'
      ''
      
        '    SUM(CASE WHEN CC.CATEGORY = 1 AND SUBJ."Code" <> 1 THEN (CAS' +
        'E COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) ' +
        'Q_O_TOTAL,'
      
        '    SUM(CASE WHEN CC.CATEGORY = 1 AND SUBJ."Code" <> 1 THEN COAL' +
        'ESCE(CRT.c_time, 0) ELSE 0 END) T_O_TOTAL,'
      
        '    SUM(CASE WHEN CC.CATEGORY = 1 AND SUBJ."Code" <> 1 AND STP."' +
        'TeacherID" = 0 THEN (CASE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ' +
        'ELSE 1 END) ELSE 0 END) Q_V_O_TOTAL,'
      
        '    SUM(CASE WHEN CC.CATEGORY = 1 AND SUBJ."Code" <> 1 AND STP."' +
        'TeacherID" = 0 THEN COALESCE(CRT.c_time, 0) ELSE 0 END) T_V_O_TO' +
        'TAL,'
      ''
      
        '    SUM(CASE WHEN SUBJ."Code" = 1 THEN (CASE COALESCE(CRT.c_time' +
        ', 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_C_TOTAL,'
      
        '    SUM(CASE WHEN SUBJ."Code" = 1 THEN COALESCE(CRT.c_time, 0) E' +
        'LSE 0 END) T_C_TOTAL,'
      
        '    SUM(CASE WHEN SUBJ."Code" = 1 AND STP."TeacherID" = 0 THEN (' +
        'CASE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 EN' +
        'D) Q_V_C_TOTAL,'
      
        '    SUM(CASE WHEN SUBJ."Code" = 1 AND STP."TeacherID" = 0 THEN C' +
        'OALESCE(CRT.c_time, 0) ELSE 0 END) T_V_C_TOTAL,'
      ''
      
        '    SUM(CASE COALESCE(CRT.c_time, 0) WHEN 0 THEN 0 ELSE 1 END) Q' +
        '_TOTAL,'
      '    SUM(CRT.c_time) T_TOTAL,'
      
        '    SUM(CASE WHEN STP."TeacherID" = 0 THEN (CASE COALESCE(CRT.c_' +
        'time, 0) WHEN 0 THEN 0 ELSE 1 END) ELSE 0 END) Q_V_TOTAL,'
      
        '    SUM(CASE WHEN STP."TeacherID" = 0 THEN COALESCE(CRT.c_time, ' +
        '0) ELSE 0 END) T_V_TOTAL'
      'from "Student_Plan" STP'
      '    join "Student" S on STP."StudentID" = S.id'
      '    join "Specialization" SP on SP.id = S."SpecializationID"'
      '    join "Department" D on D.id = SP."DepartmentID"'
      '    join CURR_CAT CC ON'
      '      CC.CURR_ID = D."CurriculumID" AND'
      '      CC.CLASS_NUM = S."Class"'
      '    join curr_rec CR on'
      '      D."CurriculumID" = CR.curr_id AND'
      '      CR.id = STP.curr_rec_id AND'
      '      CR.GROUP_QTY = 1'
      '    join "Subject" SUBJ ON'
      '      SUBJ.ID = CR.SUBJECT_ID'
      
        '    join curr_rec_time CRT on CRT.curr_id = CR.curr_id and CRT.c' +
        'urr_rec_id = CR.id'
      '        and CRT.class_num = S."Class"'
      'where D."ID" = :ID AND'
      '  STP."Use" > 0 and STP."TeacherID" is not null and'
      
        '  S."ReleaseDate" is null and (S."AcademyBDate" is null or S."Ac' +
        'ademyEDate" is not null)'
      'group by D."ID", CR.SUBJECT_ID, CR.Num, SUBJ."Name"'
      'order by CR.Num')
    DataSource = dsDepartment
    Left = 408
    Top = 296
    object ibdsCurrRecordID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = []
    end
    object ibdsCurrRecordSUBJECT_ID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'SUBJECT_ID'
      Origin = '"V_CURR_INDIVIDUAL"."SUBJECT_ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordSUBJECT_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SUBJECT_NAME'
      Origin = '"V_CURR_INDIVIDUAL"."SUBJECT_NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object ibdsCurrRecordQ_0: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_0'
      Origin = '"V_CURR_INDIVIDUAL"."Q_0"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_0: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_0'
      Origin = '"V_CURR_INDIVIDUAL"."T_0"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_0: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_0'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_0"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_0: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_0'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_0"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_1: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_1'
      Origin = '"V_CURR_INDIVIDUAL"."Q_1"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_1'
      Origin = '"V_CURR_INDIVIDUAL"."T_1"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_1: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_1'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_1"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_1: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_1'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_1"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_2: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_2'
      Origin = '"V_CURR_INDIVIDUAL"."Q_2"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_2'
      Origin = '"V_CURR_INDIVIDUAL"."T_2"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_2: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_2'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_2"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_2: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_2'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_2"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_3: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_3'
      Origin = '"V_CURR_INDIVIDUAL"."Q_3"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_3: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_3'
      Origin = '"V_CURR_INDIVIDUAL"."T_3"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_3: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_3'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_3"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_3: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_3'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_3"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_4: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_4'
      Origin = '"V_CURR_INDIVIDUAL"."Q_4"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_4: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_4'
      Origin = '"V_CURR_INDIVIDUAL"."T_4"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_4: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_4'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_4"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_4: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_4'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_4"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_5: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_5'
      Origin = '"V_CURR_INDIVIDUAL"."Q_5"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_5: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_5'
      Origin = '"V_CURR_INDIVIDUAL"."T_5"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_5: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_5'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_5"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_5: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_5'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_5"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_6: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_6'
      Origin = '"V_CURR_INDIVIDUAL"."Q_6"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_6: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_6'
      Origin = '"V_CURR_INDIVIDUAL"."T_6"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_6: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_6'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_6"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_6: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_6'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_6"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_7: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_7'
      Origin = '"V_CURR_INDIVIDUAL"."Q_7"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_7: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_7'
      Origin = '"V_CURR_INDIVIDUAL"."T_7"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_7: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_7'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_7"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_7: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_7'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_7"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_8: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_8'
      Origin = '"V_CURR_INDIVIDUAL"."Q_8"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_8: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_8'
      Origin = '"V_CURR_INDIVIDUAL"."T_8"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_8: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_8'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_8"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_8: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_8'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_8"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_Y_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_Y_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_Y_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_Y_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_Y_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_Y_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_Y_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_Y_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_Y_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_Y_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_Y_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_Y_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_O_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_O_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_O_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_O_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_O_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_O_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_O_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_O_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_O_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_O_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_O_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_O_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_C_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_C_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_C_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_C_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_C_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_C_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_C_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_C_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_C_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_C_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_C_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_C_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_V_TOTAL: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_V_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."Q_V_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordT_V_TOTAL: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'T_V_TOTAL'
      Origin = '"V_CURR_INDIVIDUAL"."T_V_TOTAL"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrRecordQ_01: TLargeintField
      FieldName = 'Q_01'
      ProviderFlags = []
    end
    object ibdsCurrRecordT_01: TFloatField
      FieldName = 'T_01'
      ProviderFlags = []
    end
    object ibdsCurrRecordQ_V_01: TLargeintField
      FieldName = 'Q_V_01'
      ProviderFlags = []
    end
    object ibdsCurrRecordT_V_01: TFloatField
      FieldName = 'T_V_01'
      ProviderFlags = []
    end
  end
  object dsCurrRecord: TDataSource
    DataSet = ibdsCurrRecord
    Left = 440
    Top = 296
  end
  object dsDepartment: TDataSource
    DataSet = ibdsDepartment
    Left = 440
    Top = 264
  end
  object ibdsDepartment: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'SELECT *'
      'FROM V_DEPT_IND_QTY'
      'ORDER BY DEPT_NAME')
    Left = 408
    Top = 264
    object ibdsDepartmentID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"V_DEPT_IND_QTY"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentDEPT_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'DEPT_NAME'
      Origin = '"V_DEPT_IND_QTY"."DEPT_NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object ibdsDepartmentPERIOD: TSmallintField
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD'
      Origin = '"V_DEPT_IND_QTY"."PERIOD"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_0: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_0'
      Origin = '"V_DEPT_IND_QTY"."CAT_0"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_1: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_1'
      Origin = '"V_DEPT_IND_QTY"."CAT_1"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_2: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_2'
      Origin = '"V_DEPT_IND_QTY"."CAT_2"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_3: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_3'
      Origin = '"V_DEPT_IND_QTY"."CAT_3"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_4: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_4'
      Origin = '"V_DEPT_IND_QTY"."CAT_4"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_5: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_5'
      Origin = '"V_DEPT_IND_QTY"."CAT_5"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_6: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_6'
      Origin = '"V_DEPT_IND_QTY"."CAT_6"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_7: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_7'
      Origin = '"V_DEPT_IND_QTY"."CAT_7"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentCAT_8: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'CAT_8'
      Origin = '"V_DEPT_IND_QTY"."CAT_8"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_0: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_0'
      Origin = '"V_DEPT_IND_QTY"."Q_0"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_1: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_1'
      Origin = '"V_DEPT_IND_QTY"."Q_1"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_01: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_01'
      Origin = '"V_DEPT_IND_QTY"."Q_01"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_2: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_2'
      Origin = '"V_DEPT_IND_QTY"."Q_2"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_3: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_3'
      Origin = '"V_DEPT_IND_QTY"."Q_3"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_4: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_4'
      Origin = '"V_DEPT_IND_QTY"."Q_4"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_5: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_5'
      Origin = '"V_DEPT_IND_QTY"."Q_5"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_6: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_6'
      Origin = '"V_DEPT_IND_QTY"."Q_6"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_7: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_7'
      Origin = '"V_DEPT_IND_QTY"."Q_7"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_8: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_8'
      Origin = '"V_DEPT_IND_QTY"."Q_8"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_Y: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_Y'
      Origin = '"V_DEPT_IND_QTY"."Q_Y"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_O: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_O'
      Origin = '"V_DEPT_IND_QTY"."Q_O"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsDepartmentQ_C: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'Q_C'
      Origin = '"V_DEPT_IND_QTY"."Q_C"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxdbdsCurriculum: TfrxDBDataset
    UserName = 'frxdbdsCurriculum'
    CloseDataSource = False
    DataSource = dsDepartment
    Left = 472
    Top = 264
  end
  object frxXLSExport: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 512
    Top = 232
  end
  object frxRTFExport: TfrxRTFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    ExportPageBreaks = False
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'ASh'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 512
    Top = 264
  end
  object frxReport0in1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    EngineOptions.ConvertNulls = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39314.790248657400000000
    ReportOptions.LastChange = 39328.480488634260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '{'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_01">, MasterData1)> <> Null) an' +
        'd (<SUM(<frxdbdsCurrRecord."Q_01">, MasterData1)> <> 0)'
      '  then'
      
        '       Set('#39'Q1'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_01">, Mas' +
        'terData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_2">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_2">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q2'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_2">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_3">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_3">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q3'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_3">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_4">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_4">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q4'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_4">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_5">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_5">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q5'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_5">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_6">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_6">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q6'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_6">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_7">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_7">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q7'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_7">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_8">, MasterData1)> <> Null) and' +
        ' (<SUM(<frxdbdsCurrRecord."Q_8">, MasterData1)> <> 0) then'
      
        '       Set('#39'Q8'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_8">, Mast' +
        'erData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">, MasterData1)> <> Nul' +
        'l) and (<SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">, MasterData1)> <> 0' +
        ') then'
      
        '       Set('#39'QY'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">' +
        ', MasterData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_O_TOTAL">, MasterData1)> <> Nul' +
        'l) and (<SUM(<frxdbdsCurrRecord."Q_O_TOTAL">, MasterData1)> <> 0' +
        ') then'
      
        '       Set('#39'QO'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_O_TOTAL">' +
        ', MasterData1)>));'
      
        '  if (<SUM(<frxdbdsCurrRecord."Q_C_TOTAL">, MasterData1)> <> Nul' +
        'l) and (<SUM(<frxdbdsCurrRecord."Q_C_TOTAL">, MasterData1)> <> 0' +
        ') then'
      
        '       Set('#39'QC'#39', FloatToStr(<SUM(<frxdbdsCurrRecord."Q_C_TOTAL">' +
        ', MasterData1)>));'
      '}'
      'end;'
      ''
      'procedure Header1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '{'
      '  if Engine.FinalPass then'
      '  begin'
      
        '    if Get('#39'Q1'#39') <> Null then mQ1.Text := Get('#39'Q1'#39') else mQ1.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q2'#39') <> Null then mQ2.Text := Get('#39'Q2'#39') else mQ2.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q3'#39') <> Null then mQ3.Text := Get('#39'Q3'#39') else mQ3.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q4'#39') <> Null then mQ4.Text := Get('#39'Q4'#39') else mQ4.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q5'#39') <> Null then mQ5.Text := Get('#39'Q5'#39') else mQ5.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q6'#39') <> Null then mQ6.Text := Get('#39'Q6'#39') else mQ6.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q7'#39') <> Null then mQ7.Text := Get('#39'Q7'#39') else mQ7.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'Q8'#39') <> Null then mQ8.Text := Get('#39'Q8'#39') else mQ8.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'QY'#39') <> Null then mQY.Text := Get('#39'QY'#39') else mQY.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'QO'#39') <> Null then mQO.Text := Get('#39'QO'#39') else mQO.Tex' +
        't := '#39#39';'
      
        '    if Get('#39'QC'#39') <> Null then mQC.Text := Get('#39'QC'#39') else mQC.Tex' +
        't := '#39#39';'
      '  end;'
      '}'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStartReport = 'frxReportOnStartReport'
    OnStopReport = 'frxReportOnStopReport'
    Left = 472
    Top = 176
    Datasets = <
      item
        DataSet = frxdbdsCurriculum
        DataSetName = 'frxdbdsCurriculum'
      end
      item
        DataSet = frxdbdsCurrRecord
        DataSetName = 'frxdbdsCurrRecord'
      end>
    Variables = <
      item
        Name = ' QTY'
        Value = Null
      end
      item
        Name = 'Q0'
        Value = Null
      end
      item
        Name = 'Q1'
        Value = Null
      end
      item
        Name = 'Q2'
        Value = Null
      end
      item
        Name = 'Q3'
        Value = Null
      end
      item
        Name = 'Q4'
        Value = Null
      end
      item
        Name = 'Q5'
        Value = Null
      end
      item
        Name = 'Q6'
        Value = Null
      end
      item
        Name = 'Q7'
        Value = Null
      end
      item
        Name = 'Q8'
        Value = Null
      end
      item
        Name = 'QY'
        Value = Null
      end
      item
        Name = 'QO'
        Value = Null
      end
      item
        Name = 'QC'
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
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsCurrRecord
        DataSetName = 'frxdbdsCurrRecord'
        RowCount = 0
        object Memo72: TfrxMemoView
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DataField = 'SUBJECT_NAME'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."SUBJECT_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 113.385900000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_01"> + <frxdbdsCurrRecord."T_V_01">]'
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_01">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_2"> + <frxdbdsCurrRecord."T_V_2">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_2'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_3"> + <frxdbdsCurrRecord."T_V_3">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_3'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 294.803340000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_4"> + <frxdbdsCurrRecord."T_V_4">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_4'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 355.275820000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_5"> + <frxdbdsCurrRecord."T_V_5">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_5'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_6"> + <frxdbdsCurrRecord."T_V_6">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_6'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_7"> + <frxdbdsCurrRecord."T_V_7">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_7'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 536.693260000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_8"> + <frxdbdsCurrRecord."T_V_8">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataField = 'T_8'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 597.165740000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsCurrRecord."T_Y_TOTAL"> + <frxdbdsCurrRecord."T_V_Y_TOT' +
              'AL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'T_Y_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_Y_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 661.417750000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsCurrRecord."T_V_Y_TOTAL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 725.669760000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsCurrRecord."T_O_TOTAL"> + <frxdbdsCurrRecord."T_V_O_TOT' +
              'AL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 725.669760000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'T_O_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_O_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 789.921770000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataField = 'T_V_O_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_V_O_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 854.173780000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsCurrRecord."T_C_TOTAL"> + <frxdbdsCurrRecord."T_V_C_TOT' +
              'AL">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 854.173780000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataField = 'T_C_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
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
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_C_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 918.425790000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataField = 'T_C_TOTAL'
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurrRecord."T_C_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        Height = 109.606370000000000000
        Top = 136.063080000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
        object Memo1: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#176#1057#1027#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1107#1057#8225'-'#1057#1027#1057#1039)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 113.385900000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000110000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
        end
        object mQ2: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_2"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
        end
        object mQ3: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_3"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 294.803340000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
        end
        object mQ4: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_4"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 355.275820000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
        end
        object mQ5: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_5"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
        end
        object mQ6: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_6"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
        end
        object mQ7: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_7"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 536.693260000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
        end
        object mQ8: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_8"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 597.165740000000000000
          Width = 385.512060000000000000
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
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
        end
        object mQY: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 128.503978500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_Y"]')
          ParentFont = False
        end
        object mQO: TfrxMemoView
          Left = 725.669760000000000000
          Top = 18.897650000000000000
          Width = 128.503978500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_O"]')
          ParentFont = False
        end
        object mQC: TfrxMemoView
          Left = 854.173780000000000000
          Top = 18.897650000000000000
          Width = 128.503978500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_C"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 56.692949999999990000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107'./'
            #1057#8222#1056#176#1056#1108#1057#8218#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105' '#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_1"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_1"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 173.858380000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_2"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_2"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 234.330860000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_3"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_3"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_4"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_4"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 355.275820000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_5"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_5"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 415.748300000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_6"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_6"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_7"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_7"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 536.693260000000000000
          Top = 37.795300000000000000
          Width = 60.472438500000000000
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
            
              '[IIF(<frxdbdsCurriculum."CAT_8"> = NULL, '#39#39', IIF(<frxdbdsCurricu' +
              'lum."CAT_8"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 597.165740000000000000
          Top = 37.795300000000000000
          Width = 128.503978500000000000
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
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 725.669760000000000000
          Top = 37.795300000000000000
          Width = 128.503978500000000000
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
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 854.173780000000000000
          Top = 37.795300000000000000
          Width = 128.503978500000000000
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
            #1056#1108#1056#1109#1056#1029#1057#8224' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 113.385900000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 113.385900000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 661.417750000000000000
          Top = 56.692949999999990000
          Width = 64.251968500000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 173.858380000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 173.858380000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 234.330860000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 234.330860000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 294.803340000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 294.803340000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 355.275820000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 355.275820000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 415.748300000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 415.748300000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 476.220780000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 476.220780000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 536.693260000000000000
          Top = 56.692949999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 536.693260000000000000
          Top = 83.149659999999990000
          Width = 60.472438500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 597.165740000000000000
          Top = 56.692949999999990000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 597.165740000000000000
          Top = 83.149659999999990000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 789.921770000000000000
          Top = 56.692949999999990000
          Width = 64.251968500000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 725.669760000000000000
          Top = 56.692949999999990000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 725.669760000000000000
          Top = 83.149659999999990000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 918.425790000000000000
          Top = 56.692949999999990000
          Width = 64.251968500000000000
          Height = 52.913420000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 854.173780000000000000
          Top = 56.692949999999990000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'. '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 854.173780000000000000
          Top = 83.149659999999990000
          Width = 64.251968500000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
        object mQ1: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsCurriculum."Q_01"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000010000
        Top = 328.819110000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object Memo100: TfrxMemoView
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 113.385900000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_01"> + <frxdbdsCurrRecord."T_V_01">, ' +
              'MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_01">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_2"> + <frxdbdsCurrRecord."T_V_2">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 173.858380000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_2">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 234.330860000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_3"> + <frxdbdsCurrRecord."T_V_3">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 234.330860000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_3">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 294.803340000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_4"> + <frxdbdsCurrRecord."T_V_4">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 294.803340000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_4">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 355.275820000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_5"> + <frxdbdsCurrRecord."T_V_5">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 355.275820000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_5">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 415.748300000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_6"> + <frxdbdsCurrRecord."T_V_6">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 415.748300000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_6">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 476.220780000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_7"> + <frxdbdsCurrRecord."T_V_7">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_7">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 536.693260000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_8"> + <frxdbdsCurrRecord."T_V_8">, Ma' +
              'sterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897650000000000000
          Width = 60.472438500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_8">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 597.165740000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_Y_TOTAL"> + <frxdbdsCurrRecord."T_V_Y' +
              '_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_Y_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 661.417750000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_V_Y_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 725.669760000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_O_TOTAL"> + <frxdbdsCurrRecord."T_V_O' +
              '_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 725.669760000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_O_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 789.921770000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_V_O_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 854.173780000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[SUM(<frxdbdsCurrRecord."T_C_TOTAL"> + <frxdbdsCurrRecord."T_V_C' +
              '_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 854.173780000000000000
          Top = 18.897650000000000000
          Width = 64.251968500000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_C_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 918.425790000000000000
          Width = 64.251968500000000000
          Height = 37.795300000000000000
          DataSet = frxdbdsCurrRecord
          DataSetName = 'frxdbdsCurrRecord'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."T_C_TOTAL">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_01">)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 234.330860000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_3">)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 173.858380000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_2">)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 355.275820000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_5">)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_4">)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 536.693260000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_7">)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 415.748300000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_6">)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 597.165740000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_Y_TOTAL">)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 536.693260000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_8">)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 725.669760000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_O_TOTAL">)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 854.173780000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_C_TOTAL">)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Visible = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[SUM(<frxdbdsCurrRecord."Q_7">)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000010000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo125: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 56.692950000000010000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          GapX = 10.000000000000000000
          Memo.UTF8 = (
            
              #1056#160#1056#176#1057#8225#1056#181#1057#8218' '#1057#1107#1057#8225#1056#181#1056#177#1056#1029#1057#8249#1057#8230' '#1056#1105#1056#1029#1056#1169#1056#1105#1056#1030#1056#1105#1056#1169#1057#1107#1056#176#1056#187#1057#1034#1056#1029#1057#8249#1057#8230' '#1057#8225#1056#176#1057#1027#1056#1109#1056 +
              #1030' '#1056#1029#1056#176' '#1056#1109#1057#8218#1056#1169#1056#181#1056#187#1056#181#1056#1029#1056#1105#1056#1105' [frxdbdsCurriculum."DEPT_NAME"], '#1056#1169#1056#187#1057 +
              #1039' '#1057#1107#1057#8225#1056#176#1057#8240#1056#1105#1057#8230#1057#1027#1057#1039' [frxdbdsCurriculum."PERIOD"] - '#1056#187#1056#181#1057#8218#1056#1029#1056#181#1056#8470' '#1057 +
              #8222#1056#1109#1057#1026#1056#1112#1057#8249' '#1056#1109#1056#177#1057#1107#1057#8225#1056#181#1056#1029#1056#1105#1057#1039'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object JvFormStorage1: TJvFormStorage
    AppStoragePath = 'fmCalcIndClockRep\'
    StoredValues = <>
    Left = 304
    Top = 256
  end
  object JvAppRegistryStorage: TJvAppRegistryStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    Root = '%NONE%'
    SubStorages = <>
    Left = 272
    Top = 256
  end
end
