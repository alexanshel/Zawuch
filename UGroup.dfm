object fmGroup: TfmGroup
  Left = 220
  Top = 136
  Width = 718
  Height = 570
  Caption = #1056#1072#1089#1095#1077#1090' '#1075#1088#1091#1087#1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 185
    Align = alTop
    TabOrder = 0
    object btnEditGrouping: TSpeedButton
      Left = 624
      Top = 64
      Width = 153
      Height = 33
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnEditGroupingClick
    end
    object btnDelGrouping: TSpeedButton
      Left = 624
      Top = 112
      Width = 153
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnDelGroupingClick
    end
    object btnAddGrouping: TSpeedButton
      Left = 624
      Top = 16
      Width = 153
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnAddGroupingClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 568
      Height = 183
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 313
        Top = 25
        Width = 0
        Height = 158
      end
      object dbgClassificator: TDBGrid
        Left = 0
        Top = 25
        Width = 313
        Height = 158
        Align = alLeft
        DataSource = dsGrouping
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object dbgGroupingDept: TDBGrid
        Left = 313
        Top = 25
        Width = 255
        Height = 158
        Align = alClient
        DataSource = dsGroupingDept
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 568
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 313
          Height = 25
          Align = alLeft
          Caption = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080' '#1086#1090#1076#1077#1083#1077#1085#1080#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 313
          Top = 0
          Width = 255
          Height = 25
          Align = alClient
          Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 257
    Width = 345
    Height = 259
    Align = alLeft
    Caption = 'Panel6'
    TabOrder = 1
    object dbgSubject: TDBGrid
      Left = 1
      Top = 33
      Width = 343
      Height = 225
      Align = alClient
      DataSource = dsSubject
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgSubjectDrawColumnCell
      OnDblClick = dbgSubjectDblClick
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 343
      Height = 32
      Align = alTop
      Caption = #1055#1088#1077#1076#1084#1077#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 185
    Width = 710
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 19
      Top = 28
      Width = 52
      Height = 24
      Caption = #1050#1083#1072#1089#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnCalc: TSpeedButton
      Left = 176
      Top = 15
      Width = 281
      Height = 33
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1105#1090' '#1075#1088#1091#1087#1087
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnCalcClick
    end
    object cbClass: TComboBox
      Left = 80
      Top = 20
      Width = 57
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnChange = cbClassChange
      OnKeyPress = cbClassKeyPress
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
    end
  end
  object Panel7: TPanel
    Left = 345
    Top = 257
    Width = 365
    Height = 259
    Align = alClient
    Caption = 'Panel7'
    TabOrder = 3
    object dbgTeacherGroup: TDBGrid
      Left = 1
      Top = 33
      Width = 363
      Height = 225
      Align = alClient
      DataSource = dsTeacherGroup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgTeacherGroupDblClick
      OnKeyPress = dbgTeacherGroupKeyPress
    end
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 363
      Height = 32
      Align = alTop
      Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080' '#1080' '#1080#1093' '#1075#1088#1091#1087#1087#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object MainMenu: TMainMenu
    Left = 416
    Top = 88
    object miExit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miExitClick
    end
  end
  object dsGrouping: TDataSource
    OnDataChange = dsGroupingDataChange
    Left = 24
    Top = 56
  end
  object dsSubject: TDataSource
    OnDataChange = dsSubjectDataChange
    Left = 136
    Top = 328
  end
  object dsGroupingDept: TDataSource
    Left = 225
    Top = 57
  end
  object dsTeacherGroup: TDataSource
    Left = 256
    Top = 312
  end
end
