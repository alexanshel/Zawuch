object fmGroupExt: TfmGroupExt
  Left = 13
  Top = 67
  Width = 1007
  Height = 570
  HelpContext = 2
  ActiveControl = dbgTeacherGroup
  Caption = #1056#1072#1089#1095#1077#1090' '#1075#1088#1091#1087#1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'zawuch.hlp'
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 20
  object Panel9: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnCalc: TSpeedButton
      Left = 16
      Top = 7
      Width = 329
      Height = 33
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1105#1090' '#1075#1088#1091#1087#1087
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCalcClick
    end
    object btnEditGrouping: TSpeedButton
      Left = 408
      Top = 8
      Width = 409
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080' '#1086#1090#1076#1077#1083#1077#1085#1080#1081
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditGroupingClick
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 49
    Width = 999
    Height = 467
    Align = alClient
    Caption = 'Panel7'
    TabOrder = 1
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 997
      Height = 48
      Align = alTop
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080' '#1080' '#1080#1093' '#1075#1088#1091#1087#1087#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object edSearch: TEdit
        Left = 16
        Top = 8
        Width = 201
        Height = 32
        TabStop = False
        TabOrder = 0
        OnChange = edSearchChange
      end
    end
    object dbgTeacherGroup: TRxDBGrid
      Left = 1
      Top = 49
      Width = 997
      Height = 398
      Align = alClient
      DataSource = dsTeacherGroup
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgTeacherGroupDrawColumnCell
      OnDblClick = dbgTeacherGroupDblClick
      OnKeyPress = dbgTeacherGroupKeyPress
      IniStorage = FormStorage1
      Columns = <
        item
          Expanded = False
          FieldName = 'TeacherShortName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GROUPING_NAME'
          Width = 201
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_0'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_1'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_2'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_3'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_4'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_5'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_6'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_7'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GR_QTY_8'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GrSum'
          Visible = True
        end>
    end
    object SB: TStatusBar
      Left = 1
      Top = 447
      Width = 997
      Height = 19
      Panels = <
        item
          Text = #1042#1089#1077#1075#1086' '#1075#1088#1091#1087#1087':'
          Width = 50
        end>
    end
  end
  object MainMenu: TMainMenu
    Left = 840
    Top = 24
    object N1: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object miAutoCalc: TMenuItem
        Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1105#1090
        OnClick = btnCalcClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miGroupingSetup: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1077#1081' '#1086#1090#1076#1077#1083#1077#1085#1080#1081
        OnClick = btnEditGroupingClick
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
  object dsTeacherGroup: TDataSource
    DataSet = DM.ibdsTeacherGroupClss
    Left = 264
    Top = 328
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredValues = <>
    Left = 416
    Top = 225
  end
end
