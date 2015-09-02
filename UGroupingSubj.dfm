object fmGroupingSubj: TfmGroupingSubj
  Left = 60
  Top = 79
  Width = 898
  Height = 577
  Caption = #1043#1088#1091#1087#1087#1099' '#1087#1086' '#1087#1088#1077#1076#1084#1077#1090#1072#1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Panel1: TPanel
    Left = 0
    Top = 461
    Width = 890
    Height = 62
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object btnClose: TBitBtn
      Left = 16
      Top = 16
      Width = 129
      Height = 33
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      Kind = bkClose
      Style = bsNew
    end
  end
  object dbgGrSubj: TRxDBGrid
    Left = 0
    Top = 0
    Width = 890
    Height = 461
    Align = alClient
    DataSource = dsGroupingSubj
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = dbgGrSubjDrawColumnCell
    OnDblClick = dbgGrSubjDblClick
    OnKeyDown = dbgGrSubjKeyDown
    OnKeyPress = dbgGrSubjKeyPress
    OnEditChange = dbgGrSubjEditChange
    Columns = <
      item
        Expanded = False
        FieldName = 'GR_SUBJ_NAME'
        ReadOnly = True
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GR_QTY'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_QTY_8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'S_QTY_8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 42
        Visible = True
      end>
  end
  object dsGroupingSubj: TDataSource
    Left = 88
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 136
    object N1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      object miWord: TMenuItem
        Caption = '-> Word'
        OnClick = miWordClick
      end
    end
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
end
