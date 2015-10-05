object fmRepCurriculum: TfmRepCurriculum
  Left = 364
  Top = 157
  Width = 958
  Height = 666
  HelpContext = 34
  Caption = #1054#1090#1095#1077#1090': '#1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 107
      Height = 20
      Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
    end
    object Label3: TLabel
      Left = 208
      Top = 16
      Width = 131
      Height = 20
      Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1077
    end
    object cbCurr: TComboBox
      Left = 8
      Top = 40
      Width = 169
      Height = 28
      ItemHeight = 20
      TabOrder = 0
      Text = 'cbCurr'
      OnChange = cbCurrChange
      OnKeyPress = cbCurrKeyPress
    end
    object cbFinancing: TComboBox
      Left = 208
      Top = 40
      Width = 145
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 1
      Text = #1073#1102#1076#1078#1077#1090
      OnChange = cbFinancingChange
      Items.Strings = (
        #1073#1102#1076#1078#1077#1090
        #1089#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100)
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 89
    Width = 950
    Height = 523
    Align = alClient
    AutoScroll = False
    TabOrder = 1
    object dbgCurrRec: TRxDBGrid
      Left = 0
      Top = 97
      Width = 946
      Height = 304
      Align = alClient
      DataSource = dsCurrRec
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgCurrRecDrawColumnCell
      Columns = <
        item
          Color = 16776176
          Expanded = False
          FieldName = 'SUBJECT_NAME'
          Width = 274
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'GROUP_QTY'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'QTY_8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Color = clWindow
          Width = 40
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'T_ALL_Y'
          Title.Color = clWindow
          Width = 90
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'T_ALL_O'
          Title.Color = clWindow
          Width = 90
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'T_ALL_C'
          Title.Color = clWindow
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_V_Y'
          Title.Color = clWindow
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_V_O'
          Title.Color = clWindow
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'T_V_C'
          Title.Color = clWindow
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'G_QTY_Y'
          Title.Color = clWindow
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'G_QTY_O'
          Title.Color = clWindow
          Visible = True
        end>
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 946
      Height = 97
      Align = alTop
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 392
        Height = 95
        Align = alLeft
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 390
          Height = 56
          Align = alTop
          Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080' ->'
          TabOrder = 0
        end
        object Panel6: TPanel
          Left = 1
          Top = 57
          Width = 390
          Height = 37
          Align = alClient
          Caption = #1050#1086#1083' - '#1074#1086' '#1075#1088#1091#1087#1087'/'#1091#1095#1077#1085#1080#1082#1086#1074' ->'
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        Left = 393
        Top = 1
        Width = 552
        Height = 95
        Align = alClient
        TabOrder = 1
        object dbgCurr: TRxDBGrid
          Left = 1
          Top = 57
          Width = 550
          Height = 37
          Align = alClient
          DataSource = dsCurr
          Options = [dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Q_0'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_1'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_2'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_3'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_4'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_5'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_6'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_7'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_8'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_ALL_Y'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_ALL_O'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_ALL_C'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_V_Y'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_V_O'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Q_V_C'
              Width = 91
              Visible = True
            end>
        end
        object dbgCurrCat: TRxDBGrid
          Left = 1
          Top = 1
          Width = 550
          Height = 56
          Align = alTop
          DataSource = dsCurrCat
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgCurrCatDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'C_NAME_0'
              Title.Caption = #1050#1083#1072#1089#1089' 0'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_1'
              Title.Caption = #1050#1083#1072#1089#1089' 1'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_2'
              Title.Caption = #1050#1083#1072#1089#1089' 2'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_3'
              Title.Caption = #1050#1083#1072#1089#1089' 3'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_4'
              Title.Caption = #1050#1083#1072#1089#1089' 4'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_5'
              Title.Caption = #1050#1083#1072#1089#1089' 5'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_6'
              Title.Caption = #1050#1083#1072#1089#1089' 6'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_7'
              Title.Caption = #1050#1083#1072#1089#1089' 7'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_8'
              Title.Caption = #1050#1083#1072#1089#1089' 8'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C_NAME_9'
              Title.Caption = #1050#1083#1072#1089#1089' 9'
              Visible = True
            end>
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 401
      Width = 946
      Height = 118
      Align = alBottom
      TabOrder = 2
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 392
        Height = 116
        Align = alLeft
        TabOrder = 0
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 390
          Height = 40
          Align = alTop
          Caption = #1042#1089#1077#1075#1086
          TabOrder = 0
        end
        object Panel10: TPanel
          Left = 1
          Top = 41
          Width = 390
          Height = 39
          Align = alClient
          Caption = #1053#1077#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1085#1099#1077
          TabOrder = 1
        end
        object Panel11: TPanel
          Left = 1
          Top = 80
          Width = 390
          Height = 35
          Align = alBottom
          Caption = #1048#1058#1054#1043#1054
          TabOrder = 2
        end
      end
      object Panel12: TPanel
        Left = 393
        Top = 1
        Width = 552
        Height = 116
        Align = alClient
        TabOrder = 1
        object dbgCurrTotal: TRxDBGrid
          Left = 1
          Top = 80
          Width = 550
          Height = 35
          Align = alBottom
          DataSource = dsCurr
          Options = [dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 't_t_0'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_4'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_5'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_6'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_7'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 't_t_8'
              Visible = True
            end>
        end
        object dbgCurrVSum: TRxDBGrid
          Left = 1
          Top = 41
          Width = 550
          Height = 39
          Align = alClient
          DataSource = dsCurr
          Options = [dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'T_V_0'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_4'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_5'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_6'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_7'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_8'
              Visible = True
            end>
        end
        object dbgCurrSum: TRxDBGrid
          Left = 1
          Top = 1
          Width = 550
          Height = 40
          Align = alTop
          DataSource = dsCurr
          Options = [dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'T_0'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_4'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_5'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_6'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_7'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_8'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_A_Y'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_A_O'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_A_C'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_Y'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_O'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'T_V_C'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'G_Y'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'G_O'
              Visible = True
            end>
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 640
    Top = 24
    object miPrint: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object Word1: TMenuItem
        Caption = '-> Word'
        OnClick = Word1Click
      end
      object N1: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        OnClick = N1Click
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
  object dsCurr: TDataSource
    DataSet = ibdsCurrReport
    Left = 464
    Top = 248
  end
  object dsCurrRec: TDataSource
    DataSet = ibdsCurrReportRec
    Left = 464
    Top = 288
  end
  object dsCurrCat: TDataSource
    DataSet = ibdsCurrCat
    Left = 465
    Top = 328
  end
  object ibdsCurriculum: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    RefreshSQL.Strings = (
      'select * from V_CURRICULUM where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from V_CURRICULUM order by pos')
    Left = 584
    Top = 256
    object ibdsCurriculumID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VIEW_CURRICULUM"."ID"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 50
      FieldKind = fkInternalCalc
      FieldName = 'Name'
      Origin = '"VIEW_CURRICULUM"."NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ibdsCurriculumPERIOD_FOR_PRINT: TIBStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD_FOR_PRINT'
      Origin = '"VIEW_CURRICULUM"."PERIOD_FOR_PRINT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ibdsCurriculumPERIOD: TSmallintField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD'
      Origin = '"VIEW_CURRICULUM"."PERIOD"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_0: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_0'
      Origin = '"VIEW_CURRICULUM"."CAT_0"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_1: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_1'
      Origin = '"VIEW_CURRICULUM"."CAT_1"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_2: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_2'
      Origin = '"VIEW_CURRICULUM"."CAT_2"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_3: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_3'
      Origin = '"VIEW_CURRICULUM"."CAT_3"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_4: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_4'
      Origin = '"VIEW_CURRICULUM"."CAT_4"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_5: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_5'
      Origin = '"VIEW_CURRICULUM"."CAT_5"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_6: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_6'
      Origin = '"VIEW_CURRICULUM"."CAT_6"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_7: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_7'
      Origin = '"VIEW_CURRICULUM"."CAT_7"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_8: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_8'
      Origin = '"VIEW_CURRICULUM"."CAT_8"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    Left = 816
    Top = 40
  end
  object ibdsCurrReport: TIBDataSet
    Tag = -1
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    SelectSQL.Strings = (
      'select *'
      'from proc_curr_report(:curr_id, :financing_id);')
    Left = 432
    Top = 248
    object ibdsCurrReportQ_0: TIntegerField
      FieldName = 'Q_0'
      Origin = '"PROC_CURR_REPORT"."Q_0"'
    end
    object ibdsCurrReportQ_1: TIntegerField
      FieldName = 'Q_1'
      Origin = '"PROC_CURR_REPORT"."Q_1"'
    end
    object ibdsCurrReportQ_2: TIntegerField
      FieldName = 'Q_2'
      Origin = '"PROC_CURR_REPORT"."Q_2"'
    end
    object ibdsCurrReportQ_3: TIntegerField
      FieldName = 'Q_3'
      Origin = '"PROC_CURR_REPORT"."Q_3"'
    end
    object ibdsCurrReportQ_4: TIntegerField
      FieldName = 'Q_4'
      Origin = '"PROC_CURR_REPORT"."Q_4"'
    end
    object ibdsCurrReportQ_5: TIntegerField
      FieldName = 'Q_5'
      Origin = '"PROC_CURR_REPORT"."Q_5"'
    end
    object ibdsCurrReportQ_6: TIntegerField
      FieldName = 'Q_6'
      Origin = '"PROC_CURR_REPORT"."Q_6"'
    end
    object ibdsCurrReportQ_7: TIntegerField
      FieldName = 'Q_7'
      Origin = '"PROC_CURR_REPORT"."Q_7"'
    end
    object ibdsCurrReportQ_8: TIntegerField
      FieldName = 'Q_8'
      Origin = '"PROC_CURR_REPORT"."Q_8"'
    end
    object ibdsCurrReportQ_ALL_Y: TIntegerField
      FieldName = 'Q_ALL_Y'
      Origin = '"PROC_CURR_REPORT"."Q_ALL_Y"'
    end
    object ibdsCurrReportQ_ALL_O: TIntegerField
      FieldName = 'Q_ALL_O'
      Origin = '"PROC_CURR_REPORT"."Q_ALL_O"'
    end
    object ibdsCurrReportQ_ALL_C: TIntegerField
      FieldName = 'Q_ALL_C'
      Origin = '"PROC_CURR_REPORT"."Q_ALL_C"'
    end
    object ibdsCurrReportQ_V_Y: TIntegerField
      FieldName = 'Q_V_Y'
      Origin = '"PROC_CURR_REPORT"."Q_V_Y"'
    end
    object ibdsCurrReportQ_V_O: TIntegerField
      FieldName = 'Q_V_O'
      Origin = '"PROC_CURR_REPORT"."Q_V_O"'
    end
    object ibdsCurrReportQ_V_C: TIntegerField
      FieldName = 'Q_V_C'
      Origin = '"PROC_CURR_REPORT"."Q_V_C"'
    end
    object ibdsCurrReportT_V_0: TFloatField
      FieldName = 'T_V_0'
      Origin = '"PROC_CURR_REPORT"."T_V_0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_1: TFloatField
      FieldName = 'T_V_1'
      Origin = '"PROC_CURR_REPORT"."T_V_1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_2: TFloatField
      FieldName = 'T_V_2'
      Origin = '"PROC_CURR_REPORT"."T_V_2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_3: TFloatField
      FieldName = 'T_V_3'
      Origin = '"PROC_CURR_REPORT"."T_V_3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_4: TFloatField
      FieldName = 'T_V_4'
      Origin = '"PROC_CURR_REPORT"."T_V_4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_5: TFloatField
      FieldName = 'T_V_5'
      Origin = '"PROC_CURR_REPORT"."T_V_5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_6: TFloatField
      FieldName = 'T_V_6'
      Origin = '"PROC_CURR_REPORT"."T_V_6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_7: TFloatField
      FieldName = 'T_V_7'
      Origin = '"PROC_CURR_REPORT"."T_V_7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_8: TFloatField
      FieldName = 'T_V_8'
      Origin = '"PROC_CURR_REPORT"."T_V_8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_Y: TFloatField
      FieldName = 'T_V_Y'
      Origin = '"PROC_CURR_REPORT"."T_V_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_O: TFloatField
      FieldName = 'T_V_O'
      Origin = '"PROC_CURR_REPORT"."T_V_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_C: TFloatField
      FieldName = 'T_V_C'
      Origin = '"PROC_CURR_REPORT"."T_V_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_0: TFloatField
      FieldName = 'T_0'
      Origin = '"PROC_CURR_REPORT"."T_0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_1: TFloatField
      FieldName = 'T_1'
      Origin = '"PROC_CURR_REPORT"."T_1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_2: TFloatField
      FieldName = 'T_2'
      Origin = '"PROC_CURR_REPORT"."T_2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_3: TFloatField
      FieldName = 'T_3'
      Origin = '"PROC_CURR_REPORT"."T_3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_4: TFloatField
      FieldName = 'T_4'
      Origin = '"PROC_CURR_REPORT"."T_4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_5: TFloatField
      FieldName = 'T_5'
      Origin = '"PROC_CURR_REPORT"."T_5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_6: TFloatField
      FieldName = 'T_6'
      Origin = '"PROC_CURR_REPORT"."T_6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_7: TFloatField
      FieldName = 'T_7'
      Origin = '"PROC_CURR_REPORT"."T_7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_8: TFloatField
      FieldName = 'T_8'
      Origin = '"PROC_CURR_REPORT"."T_8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_A_Y: TFloatField
      FieldName = 'T_A_Y'
      Origin = '"PROC_CURR_REPORT"."T_A_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_A_O: TFloatField
      FieldName = 'T_A_O'
      Origin = '"PROC_CURR_REPORT"."T_A_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_A_C: TFloatField
      FieldName = 'T_A_C'
      Origin = '"PROC_CURR_REPORT"."T_A_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportt_t_0: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_0'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_1: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_1'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_2'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_3: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_3'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_4: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_4'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_5: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_5'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_6: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_6'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_7: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_7'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_8: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_8'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_y: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_y'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_o: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_o'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_c: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_c'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportG_Y: TIntegerField
      FieldName = 'G_Y'
      Origin = '"PROC_CURR_REPORT"."G_Y"'
    end
    object ibdsCurrReportG_O: TIntegerField
      FieldName = 'G_O'
      Origin = '"PROC_CURR_REPORT"."G_O"'
    end
  end
  object ibdsCurrReportRec: TIBDataSet
    Tag = -1
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    SelectSQL.Strings = (
      'select *'
      'from proc_curr_rec_report(:curr_id, :financing_id)'
      'order by curr_rec_num')
    Left = 432
    Top = 288
    object ibdsCurrReportRecCURR_REC_ID: TIntegerField
      FieldName = 'CURR_REC_ID'
      Origin = '"PROC_CURR_REC_REPORT"."CURR_REC_ID"'
      Visible = False
    end
    object ibdsCurrReportRecCURR_REC_NUM: TIntegerField
      FieldName = 'CURR_REC_NUM'
      Origin = '"PROC_CURR_REC_REPORT"."CURR_REC_NUM"'
      Visible = False
    end
    object ibdsCurrReportRecSUBJECT_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 25
      FieldName = 'SUBJECT_NAME'
      Origin = '"PROC_CURR_REC_REPORT"."SUBJECT_NAME"'
      Size = 30
    end
    object ibdsCurrReportRecSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = '"PROC_CURR_REC_REPORT"."SUBJECT_CODE"'
      Visible = False
    end
    object ibdsCurrReportRecGROUP_QTY: TIntegerField
      DisplayLabel = #1043#1088'.'
      DisplayWidth = 3
      FieldName = 'GROUP_QTY'
      Origin = '"PROC_CURR_REC_REPORT"."GROUP_QTY"'
    end
    object ibdsCurrReportRecT_0: TFloatField
      DisplayLabel = #1042#1088'. 0'
      DisplayWidth = 5
      FieldName = 'T_0'
      Origin = '"PROC_CURR_REC_REPORT"."T_0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_0: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_0'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_0"'
    end
    object ibdsCurrReportRecT_1: TFloatField
      DisplayLabel = #1042#1088'. 1'
      DisplayWidth = 5
      FieldName = 'T_1'
      Origin = '"PROC_CURR_REC_REPORT"."T_1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_1: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_1'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_1"'
    end
    object ibdsCurrReportRecT_2: TFloatField
      DisplayLabel = #1042#1088'. 2'
      DisplayWidth = 5
      FieldName = 'T_2'
      Origin = '"PROC_CURR_REC_REPORT"."T_2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_2: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_2'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_2"'
    end
    object ibdsCurrReportRecT_3: TFloatField
      DisplayLabel = #1042#1088'. 3'
      DisplayWidth = 5
      FieldName = 'T_3'
      Origin = '"PROC_CURR_REC_REPORT"."T_3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_3: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_3'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_3"'
    end
    object ibdsCurrReportRecT_4: TFloatField
      DisplayLabel = #1042#1088'. 4'
      DisplayWidth = 5
      FieldName = 'T_4'
      Origin = '"PROC_CURR_REC_REPORT"."T_4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_4: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_4'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_4"'
    end
    object ibdsCurrReportRecT_5: TFloatField
      DisplayLabel = #1042#1088'. 5'
      DisplayWidth = 5
      FieldName = 'T_5'
      Origin = '"PROC_CURR_REC_REPORT"."T_5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_5: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_5'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_5"'
    end
    object ibdsCurrReportRecT_6: TFloatField
      DisplayLabel = #1042#1088'. 6'
      DisplayWidth = 5
      FieldName = 'T_6'
      Origin = '"PROC_CURR_REC_REPORT"."T_6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_6: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_6'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_6"'
    end
    object ibdsCurrReportRecT_7: TFloatField
      DisplayLabel = #1042#1088'. 7'
      DisplayWidth = 5
      FieldName = 'T_7'
      Origin = '"PROC_CURR_REC_REPORT"."T_7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_7: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_7'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_7"'
    end
    object ibdsCurrReportRecT_8: TFloatField
      DisplayLabel = #1042#1088'. 8'
      DisplayWidth = 5
      FieldName = 'T_8'
      Origin = '"PROC_CURR_REC_REPORT"."T_8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_8: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_8'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_8"'
    end
    object ibdsCurrReportRecT_ALL_Y: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086' '#1084#1083'.'
      DisplayWidth = 5
      FieldName = 'T_ALL_Y'
      Origin = '"PROC_CURR_REC_REPORT"."T_ALL_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_ALL_O: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086' '#1089#1090'.'
      DisplayWidth = 5
      FieldName = 'T_ALL_O'
      Origin = '"PROC_CURR_REC_REPORT"."T_ALL_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_ALL_C: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086' '#1082#1086#1085#1094'.'
      DisplayWidth = 5
      FieldName = 'T_ALL_C'
      Origin = '"PROC_CURR_REC_REPORT"."T_ALL_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_V_Y: TFloatField
      DisplayLabel = #1053#1077#1088#1072#1089#1087'. '#1084#1083'.'
      FieldName = 'T_V_Y'
      Origin = '"PROC_CURR_REC_REPORT"."T_V_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_V_O: TFloatField
      DisplayLabel = #1053#1077#1088#1072#1089#1087'. '#1089#1090'.'
      FieldName = 'T_V_O'
      Origin = '"PROC_CURR_REC_REPORT"."T_V_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_V_C: TFloatField
      DisplayLabel = #1053#1077#1088#1072#1089#1087'. '#1082#1086#1085#1094'.'
      FieldName = 'T_V_C'
      Origin = '"PROC_CURR_REC_REPORT"."T_V_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecG_QTY_Y: TIntegerField
      DisplayLabel = #1050'-'#1074#1086' '#1075#1088'. '#1084#1083'.'
      FieldName = 'G_QTY_Y'
      Origin = '"PROC_CURR_REC_REPORT"."G_QTY_Y"'
    end
    object ibdsCurrReportRecG_QTY_O: TIntegerField
      DisplayLabel = #1050'-'#1074#1086' '#1075#1088'. '#1089#1090'.'
      FieldName = 'G_QTY_O'
      Origin = '"PROC_CURR_REC_REPORT"."G_QTY_O"'
    end
    object ibdsCurrReportRecQTY_Y: TIntegerField
      FieldName = 'QTY_Y'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_Y"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_O: TIntegerField
      FieldName = 'QTY_O'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_O"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_C: TIntegerField
      FieldName = 'QTY_C'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_C"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_V_Y: TIntegerField
      FieldName = 'QTY_V_Y'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_V_Y"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_V_O: TIntegerField
      FieldName = 'QTY_V_O'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_V_O"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_V_C: TIntegerField
      FieldName = 'QTY_V_C'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_V_C"'
      Visible = False
    end
  end
  object ibdsCurrCat: TIBDataSet
    Tag = -1
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    SelectSQL.Strings = (
      'select * '
      'from V_CURRICULUM_CAT VCC'
      'where VCC.id = :curr_id')
    Left = 432
    Top = 328
    object ibdsCurrCatID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"V_CURRICULUM_CAT"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrCatC_0: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_0'
      Origin = '"VIEW_CURR_CAT"."C_0"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_1: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_1'
      Origin = '"VIEW_CURR_CAT"."C_1"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_2: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_2'
      Origin = '"VIEW_CURR_CAT"."C_2"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_3: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_3'
      Origin = '"VIEW_CURR_CAT"."C_3"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_4: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_4'
      Origin = '"VIEW_CURR_CAT"."C_4"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_5: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_5'
      Origin = '"VIEW_CURR_CAT"."C_5"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_6: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_6'
      Origin = '"VIEW_CURR_CAT"."C_6"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_7: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_7'
      Origin = '"VIEW_CURR_CAT"."C_7"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_8: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_8'
      Origin = '"VIEW_CURR_CAT"."C_8"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_9: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_9'
      Origin = '"V_CURRICULUM_CAT"."C_9"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrCatC_NAME_0: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_0'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_0"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_1'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_1"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_2'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_2"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_3: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_3'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_3"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_4: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_4'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_4"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_5: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_5'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_5"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_6: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_6'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_6"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_7: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_7'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_7"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_8: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_8'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_8"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_9: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_9'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_9"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
end
