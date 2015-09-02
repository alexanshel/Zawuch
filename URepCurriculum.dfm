object fmRepCurriculum: TfmRepCurriculum
  Left = 63
  Top = 41
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
      Caption = 'Panel7'
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 392
        Height = 95
        Align = alLeft
        Caption = 'Panel3'
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
        Caption = 'Panel4'
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
              FieldName = 'Cat0'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat1'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat2'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat3'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat4'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat5'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat6'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat7'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cat8'
              Width = 91
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
      Caption = 'Panel8'
      TabOrder = 2
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 392
        Height = 116
        Align = alLeft
        Caption = 'Panel2'
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
        Caption = 'Panel12'
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
    Left = 528
    Top = 208
  end
  object dsCurrRec: TDataSource
    DataSet = DM.ibdsCurrReportRec
    Left = 464
    Top = 288
  end
  object dsCurrCat: TDataSource
    DataSet = DM.ibdsCurrCat
    Left = 537
    Top = 130
  end
end
