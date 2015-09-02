object fmSubject: TfmSubject
  Left = 272
  Top = 143
  Width = 613
  Height = 565
  HelpContext = 13
  Caption = #1055#1088#1077#1076#1084#1077#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  HelpFile = 'zawuch.hlp'
  Menu = MainMenu
  OldCreateOrder = False
  ScreenSnap = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 57
    Align = alTop
    TabOrder = 1
    object btnAdd: TSpeedButton
      Left = 160
      Top = 16
      Width = 105
      Height = 30
      BiDiMode = bdLeftToRight
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentBiDiMode = False
      OnClick = miAddClick
    end
    object btnEdit: TSpeedButton
      Left = 280
      Top = 16
      Width = 145
      Height = 30
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = miEditClick
    end
    object btnDel: TSpeedButton
      Left = 456
      Top = 16
      Width = 97
      Height = 30
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
    object edSearch: TLabeledEdit
      Left = 8
      Top = 24
      Width = 129
      Height = 28
      TabStop = False
      EditLabel.Width = 46
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1086#1080#1089#1082
      TabOrder = 0
      OnChange = edSearchChange
    end
  end
  object dbgSubject: TRxDBGrid
    Left = 0
    Top = 57
    Width = 605
    Height = 454
    Align = alClient
    DataSource = dsSubject
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgSubjectDblClick
    OnKeyPress = dbgSubjectKeyPress
  end
  object dsSubject: TDataSource
    Left = 8
    Top = 104
  end
  object MainMenu: TMainMenu
    Left = 424
    Top = 8
    object N1: TMenuItem
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      object miAdd: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = miAddClick
      end
      object miEdit: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
        OnClick = miEditClick
      end
      object miDel: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
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
    Left = 88
    Top = 120
  end
end
