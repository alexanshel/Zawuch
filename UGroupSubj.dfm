object fmGroupSubj: TfmGroupSubj
  Left = 171
  Top = 73
  Width = 833
  Height = 575
  Caption = #1043#1088#1091#1087#1087#1086#1074#1099#1077' '#1087#1088#1077#1076#1084#1077#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object P1: TPanel
    Left = 576
    Top = 0
    Width = 249
    Height = 541
    Align = alRight
    TabOrder = 1
    object btnAddSubj: TSpeedButton
      Left = 5
      Top = 19
      Width = 236
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnAddSubjClick
    end
    object btnEdit: TSpeedButton
      Left = 8
      Top = 77
      Width = 233
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnEditClick
    end
    object btnDelSubj: TSpeedButton
      Left = 5
      Top = 134
      Width = 236
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnDelSubjClick
    end
    object btnExtractAll: TSpeedButton
      Left = 5
      Top = 282
      Width = 236
      Height = 58
      Caption = #1048#1079#1074#1083#1077#1095#1100' '#1074#1089#1077' '#1087#1088#1077#1076#1084#1077#1090#1099#10#13#1072#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnExtractAllClick
    end
  end
  object dbgSubj: TRxDBGrid
    Left = 0
    Top = 0
    Width = 576
    Height = 541
    Align = alClient
    DataSource = dsGrSubj
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgSubjDrawColumnCell
    OnDblClick = dbgSubjDblClick
    OnKeyPress = dbgSubjKeyPress
  end
  object dsGrSubj: TDataSource
    Left = 120
    Top = 128
  end
  object FormPlacement1: TFormPlacement
    Left = 632
    Top = 416
  end
end
