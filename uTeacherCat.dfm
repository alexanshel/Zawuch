object fmTeacherCat: TfmTeacherCat
  Left = 357
  Top = 269
  Width = 852
  Height = 484
  Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object JvDBGrid1: TJvDBGrid
    Left = 129
    Top = 0
    Width = 715
    Height = 450
    Align = alClient
    DataSource = dsCat
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = btnEditClick
    OnKeyPress = JvDBGrid1KeyPress
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
        FieldName = 'f_name'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 307
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'f_print'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1083#1103' '#1087#1077#1095#1072#1090#1080
        Width = 279
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'f_coef'
        Title.Caption = #1050#1086#1101#1092#1080#1094#1080#1077#1085#1090
        Width = 110
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 129
    Height = 450
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object btnAdd: TSpeedButton
      Left = 8
      Top = 16
      Width = 113
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = btnAddClick
    end
    object btnEdit: TSpeedButton
      Left = 8
      Top = 56
      Width = 113
      Height = 33
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = btnEditClick
    end
    object btnDel: TSpeedButton
      Left = 8
      Top = 96
      Width = 113
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = btnDelClick
    end
  end
  object dsCat: TDataSource
    DataSet = ibdsCategory
    Left = 296
    Top = 32
  end
  object ibdsCategory: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    RefreshSQL.Strings = (
      'select * from teacher_cat_kind where f_id = :f_id')
    SelectSQL.Strings = (
      'select * from teacher_cat_kind order by f_coef')
    Left = 256
    Top = 32
  end
end
