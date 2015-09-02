object fmDepChoice: TfmDepChoice
  Left = 422
  Top = 459
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1086#1088' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
  ClientHeight = 114
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    356
    114)
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 87
    Height = 20
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
  end
  object jvdblcDepartment: TJvDBLookupCombo
    Left = 8
    Top = 32
    Width = 337
    Height = 27
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'ID'
    LookupDisplay = 'Name'
    LookupSource = dsDepartment
    TabOrder = 0
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
  object bbOK: TBitBtn
    Left = 120
    Top = 72
    Width = 105
    Height = 33
    TabOrder = 2
    Kind = bkOK
  end
  object dsDepartment: TDataSource
    DataSet = ibqDepartment
    Left = 200
    Top = 24
  end
  object ibqDepartment: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SQL.Strings = (
      'SELECT *'
      'FROM "Department"')
    Left = 272
    Top = 24
    object ibqDepartmentID: TIntegerField
      FieldName = 'ID'
      Origin = '"Department"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibqDepartmentCode: TIntegerField
      FieldName = 'Code'
      Origin = '"Department"."Code"'
    end
    object ibqDepartmentName: TIBStringField
      FieldName = 'Name'
      Origin = '"Department"."Name"'
      Size = 50
    end
    object ibqDepartmentCurriculumID: TIntegerField
      FieldName = 'CurriculumID'
      Origin = '"Department"."CurriculumID"'
    end
    object ibqDepartmentInfo: TIBStringField
      FieldName = 'Info'
      Origin = '"Department"."Info"'
      Size = 100
    end
  end
end
