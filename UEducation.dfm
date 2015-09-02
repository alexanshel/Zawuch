object fmEducation: TfmEducation
  Left = 334
  Top = 169
  Width = 526
  Height = 526
  HelpContext = 19
  Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
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
    Width = 518
    Height = 65
    Align = alTop
    TabOrder = 0
    object btnAdd: TSpeedButton
      Left = 16
      Top = 16
      Width = 105
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
      Left = 152
      Top = 16
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
    object btnDel: TSpeedButton
      Left = 328
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
  object dbgEduc: TRxDBGrid
    Left = 0
    Top = 65
    Width = 518
    Height = 407
    Align = alClient
    DataSource = dsEducation
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgEducDblClick
    OnKeyPress = dbgEducKeyPress
  end
  object dsEducation: TDataSource
    Left = 224
    Top = 192
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 128
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
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 216
    Top = 144
  end
end
