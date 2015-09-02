object fmRepTab: TfmRepTab
  Left = 80
  Top = 100
  HelpContext = 32
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058#1072#1073#1077#1083#1100' '#1079#1072#1084#1077#1097#1077#1085#1080#1103
  ClientHeight = 684
  ClientWidth = 1061
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
    Width = 1061
    Height = 49
    Align = alTop
    TabOrder = 0
    object btnAdd: TSpeedButton
      Left = 8
      Top = 8
      Width = 185
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAddClick
    end
    object btnDel: TSpeedButton
      Left = 432
      Top = 8
      Width = 113
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDelClick
    end
    object btnEdit: TSpeedButton
      Left = 232
      Top = 8
      Width = 161
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1061
    Height = 48
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 73
      Top = 0
      Width = 256
      Height = 49
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 329
      Top = 0
      Width = 56
      Height = 49
      Caption = #1044#1085#1080
      TabOrder = 1
    end
    object Panel5: TPanel
      Left = 385
      Top = 24
      Width = 64
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 2
    end
    object Panel6: TPanel
      Left = 449
      Top = 24
      Width = 64
      Height = 25
      Caption = #1089#1090'.'
      TabOrder = 3
    end
    object Panel7: TPanel
      Left = 513
      Top = 24
      Width = 64
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 4
    end
    object Panel8: TPanel
      Left = 577
      Top = 24
      Width = 64
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 5
    end
    object Panel9: TPanel
      Left = 641
      Top = 24
      Width = 64
      Height = 25
      Caption = #1089#1090'.'
      TabOrder = 6
    end
    object Panel10: TPanel
      Left = 705
      Top = 24
      Width = 64
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 7
    end
    object Panel11: TPanel
      Left = 385
      Top = 0
      Width = 192
      Height = 24
      Caption = #1041#1102#1076#1078#1077#1090
      TabOrder = 8
    end
    object Panel12: TPanel
      Left = 577
      Top = 0
      Width = 192
      Height = 24
      Caption = #1057#1072#1084#1086#1086#1082#1091#1087#1072#1077#1084#1086#1089#1090#1100
      TabOrder = 9
    end
    object Panel13: TPanel
      Left = 1
      Top = 0
      Width = 10
      Height = 49
      TabOrder = 10
    end
    object Panel14: TPanel
      Left = 833
      Top = 24
      Width = 64
      Height = 25
      Caption = #1082#1086#1085#1094'.'
      TabOrder = 11
    end
    object Panel15: TPanel
      Left = 769
      Top = 0
      Width = 128
      Height = 24
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1080#1090'.'
      TabOrder = 12
    end
    object Panel16: TPanel
      Left = 769
      Top = 24
      Width = 64
      Height = 25
      Caption = #1084#1083'.'
      TabOrder = 13
    end
    object Panel17: TPanel
      Left = 897
      Top = 0
      Width = 104
      Height = 49
      Caption = #1044#1072#1090#1072
      TabOrder = 14
    end
    object Panel18: TPanel
      Left = 11
      Top = 0
      Width = 62
      Height = 49
      Caption = #1058#1072#1073'. '#8470
      TabOrder = 15
    end
  end
  object dbgTab: TRxDBGrid
    Left = 0
    Top = 97
    Width = 1061
    Height = 587
    Align = alClient
    DataSource = dsTab
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgTabDrawColumnCell
    OnDblClick = btnEditClick
    OnKeyPress = dbgTabKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'TAB_NUM'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEACHER_NAME'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAYS_QTY'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_Y_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_O_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'B_C_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_Y_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_O_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'S_C_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BEGIN_Y_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BEGIN_C_TIME'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'T_DATE'
        Width = 130
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 536
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
    DataSet = DM.ibdsRepTab
    Left = 192
    Top = 176
  end
end
