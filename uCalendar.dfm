object fmCalendar: TfmCalendar
  Left = 442
  Top = 254
  Width = 341
  Height = 268
  Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 333
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 6
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object gCalendar: TStringGrid
    Left = 0
    Top = 0
    Width = 333
    Height = 193
    Align = alClient
    ColCount = 7
    DefaultColWidth = 45
    FixedCols = 0
    RowCount = 7
    TabOrder = 1
    OnDrawCell = gCalendarDrawCell
    OnKeyPress = gCalendarKeyPress
  end
  object ibdsCalendar: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select *'
      'from calendar')
    Left = 136
    Top = 56
  end
  object DataSource1: TDataSource
    Left = 176
    Top = 56
  end
  object ibdsSysdate: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select c.system_date'
      'from constants c')
    Left = 136
    Top = 96
    object ibdsSysdateSYSTEM_DATE: TDateField
      FieldName = 'SYSTEM_DATE'
      Origin = '"CONSTANTS"."SYSTEM_DATE"'
    end
  end
end
