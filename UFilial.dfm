object fmFilial: TfmFilial
  Left = 252
  Top = 186
  Width = 554
  Height = 496
  HelpType = htKeyword
  HelpContext = 15
  Caption = #1060#1080#1083#1080#1072#1083#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'zawuch.hlp'
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 546
    Height = 57
    Align = alTop
    TabOrder = 0
    object btnAdd: TSpeedButton
      Left = 8
      Top = 16
      Width = 129
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAddClick
    end
    object btnEdit: TSpeedButton
      Left = 160
      Top = 16
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
      OnClick = btnEditClick
    end
    object btnDel: TSpeedButton
      Left = 344
      Top = 16
      Width = 97
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 546
    Height = 385
    Align = alClient
    DataSource = dsFilial
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 184
    object N1: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object miAdd: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = btnAddClick
      end
      object miEdit: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = btnEditClick
      end
      object miDel: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = btnDelClick
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
  object dsFilial: TDataSource
    Left = 272
    Top = 64
  end
  object FormPlacement1: TFormPlacement
    Left = 160
    Top = 144
  end
end
