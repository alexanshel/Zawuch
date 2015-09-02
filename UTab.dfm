object fmTab: TfmTab
  Left = 105
  Top = 210
  HelpContext = 31
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058#1072#1073#1077#1083#1100
  ClientHeight = 426
  ClientWidth = 1019
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
    Width = 1019
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
    Width = 1019
    Height = 48
    Align = alTop
    TabOrder = 1
    object pTeacher: TPanel
      Left = 82
      Top = 0
      Width = 230
      Height = 49
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      TabOrder = 0
    end
    object pDays: TPanel
      Left = 312
      Top = 0
      Width = 50
      Height = 49
      Caption = #1044#1085#1080
      TabOrder = 1
    end
    object pTSY: TPanel
      Left = 362
      Top = 24
      Width = 68
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 2
    end
    object pTSO: TPanel
      Left = 430
      Top = 24
      Width = 68
      Height = 25
      Caption = #1089#1090'.'
      TabOrder = 3
    end
    object Panel7: TPanel
      Left = 498
      Top = 24
      Width = 68
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 4
    end
    object Panel8: TPanel
      Left = 566
      Top = 24
      Width = 68
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 5
    end
    object Panel9: TPanel
      Left = 634
      Top = 24
      Width = 68
      Height = 25
      Caption = #1089#1090'.'
      TabOrder = 6
    end
    object Panel10: TPanel
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
      Caption = #1041#1102#1076#1078#1077#1090
      TabOrder = 8
    end
    object Panel12: TPanel
      Left = 566
      Top = 0
      Width = 204
      Height = 24
      Caption = #1057#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100
      TabOrder = 9
    end
    object Panel13: TPanel
      Left = 1
      Top = 1
      Width = 10
      Height = 48
      TabOrder = 10
    end
    object Panel14: TPanel
      Left = 838
      Top = 24
      Width = 67
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 11
    end
    object Panel15: TPanel
      Left = 770
      Top = 0
      Width = 135
      Height = 24
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1080#1090'.'
      TabOrder = 12
    end
    object Panel16: TPanel
      Left = 770
      Top = 24
      Width = 68
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 13
    end
    object Panel17: TPanel
      Left = 905
      Top = 0
      Width = 78
      Height = 49
      Caption = #1044#1072#1090#1072
      TabOrder = 14
    end
  end
  object pTabNum: TPanel
    Left = 11
    Top = 49
    Width = 71
    Height = 49
    Caption = #1058#1072#1073'. '#8470
    TabOrder = 2
  end
  object dbgTab: TRxDBGrid
    Left = 0
    Top = 97
    Width = 1019
    Height = 329
    Align = alClient
    DataSource = dsTab
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'DAYS_QTY'
        Width = 62
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
        FieldName = 'S_Y_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_O_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_C_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BEGIN_Y_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BEGIN_C_TIME'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_DATE'
        Width = 96
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 8
    object miCPrint: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object miPrint: TMenuItem
        Caption = '-> Word'
        OnClick = miPrintClick
      end
      object miPrintOptions: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
        OnClick = miPrintOptionsClick
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
end
