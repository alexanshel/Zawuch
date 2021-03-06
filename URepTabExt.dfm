object fmRepTabExt: TfmRepTabExt
  Left = 256
  Top = 175
  Width = 912
  Height = 480
  HelpContext = 33
  Caption = #1058#1072#1073#1077#1083#1100' '#1086#1090#1076#1072#1095#1080' '#1088#1072#1079#1086#1074#1099#1093' '#1087#1077#1076#1072#1075#1086#1075#1080#1095#1077#1089#1082#1080#1093' '#1095#1072#1089#1086#1074
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
    Width = 904
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btnAddRec: TSpeedButton
      Left = 13
      Top = 11
      Width = 180
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAddRecClick
    end
    object btnEditRec: TSpeedButton
      Left = 227
      Top = 11
      Width = 166
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditRecClick
    end
    object btnDelRec: TSpeedButton
      Left = 414
      Top = 11
      Width = 104
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDelRecClick
    end
  end
  object jvdbgRepTabExt: TJvDBGrid
    Left = 0
    Top = 57
    Width = 904
    Height = 369
    Align = alClient
    DataSource = dsRepTabExt
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgRepTabExtDrawColumnCell
    IniStorage = JvFormStorage
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 24
    TitleRowHeight = 24
    Columns = <
      item
        Expanded = False
        FieldName = 'TEACHER_NAME'
        Title.Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
        Width = 393
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TAB_MONTH'
        Title.Caption = #1052#1077#1089#1103#1094
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Y_T'
        Title.Caption = #1052#1083'. '#1095'.'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'O_T'
        Title.Caption = #1057#1090'. '#1095'.'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C_T'
        Title.Caption = #1050#1086#1085#1094'. '#1095'.'
        Width = 114
        Visible = True
      end>
  end
  object dsRepTabExt: TDataSource
    Left = 152
    Top = 160
  end
  object MainMenu1: TMainMenu
    Left = 608
    Top = 16
    object N1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object miWord: TMenuItem
        Caption = 'Word ->'
        OnClick = miWordClick
      end
      object miParam: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        OnClick = miParamClick
      end
    end
    object miHelp: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = miHelpClick
    end
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
  object JvAppRegistryStorage: TJvAppRegistryStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    Root = '%NONE%'
    SubStorages = <>
    Left = 304
    Top = 168
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppRegistryStorage
    AppStoragePath = 'fmRepTabExt\'
    StoredValues = <>
    Left = 424
    Top = 168
  end
end
