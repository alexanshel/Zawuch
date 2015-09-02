object fmGroupingChoice: TfmGroupingChoice
  Left = 493
  Top = 472
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1092#1072#1082#1090#1080#1095#1077#1089#1082#1086#1081' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1075#1088#1091#1087#1087
  ClientHeight = 114
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    355
    114)
  PixelsPerInch = 96
  TextHeight = 20
  object bbOK: TBitBtn
    Left = 120
    Top = 72
    Width = 105
    Height = 33
    TabOrder = 0
    Kind = bkOK
  end
  object bbCancel: TBitBtn
    Left = 8
    Top = 72
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    Kind = bkCancel
  end
  object jvdblcGrouping: TJvDBLookupCombo
    Left = 16
    Top = 8
    Width = 329
    Height = 27
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'ID'
    LookupDisplay = 'NAME'
    LookupSource = dsGrouping
    TabOrder = 2
  end
  object dsGrouping: TDataSource
    DataSet = ibqGrouping
    Left = 248
    Top = 56
  end
  object ibqGrouping: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    SQL.Strings = (
      'SELECT *'
      'FROM GROUPING')
    Left = 304
    Top = 56
    object ibqGroupingID: TIntegerField
      FieldName = 'ID'
      Origin = '"GROUPING"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqGroupingNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"GROUPING"."NAME"'
      Size = 50
    end
    object ibqGroupingFINANCING_ID: TIntegerField
      FieldName = 'FINANCING_ID'
      Origin = '"GROUPING"."FINANCING_ID"'
    end
  end
end
