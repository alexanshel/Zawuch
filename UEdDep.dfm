object fmEdDep: TfmEdDep
  Left = 457
  Top = 405
  BorderStyle = bsDialog
  ClientHeight = 210
  ClientWidth = 679
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
  object BitBtn1: TBitBtn
    Left = 8
    Top = 160
    Width = 105
    Height = 33
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 160
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    Kind = bkCancel
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 679
    Height = 145
    Align = alTop
    TabOrder = 2
    object lCurr: TLabel
      Left = 296
      Top = 16
      Width = 107
      Height = 20
      Caption = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
    end
    object edName: TLabeledEdit
      Left = 96
      Top = 40
      Width = 169
      Height = 28
      EditLabel.Width = 113
      EditLabel.Height = 20
      EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      MaxLength = 30
      TabOrder = 0
    end
    object edInfo: TLabeledEdit
      Left = 16
      Top = 104
      Width = 649
      Height = 28
      EditLabel.Width = 95
      EditLabel.Height = 20
      EditLabel.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      MaxLength = 50
      TabOrder = 1
    end
    object edCode: TLabeledEdit
      Left = 16
      Top = 40
      Width = 49
      Height = 28
      EditLabel.Width = 30
      EditLabel.Height = 20
      EditLabel.Caption = #1050#1086#1076
      TabOrder = 2
      OnKeyPress = edQtyYearsKeyPress
    end
    object edCurriculum: TDBLookupComboBox
      Left = 296
      Top = 40
      Width = 369
      Height = 28
      KeyField = 'ID'
      ListField = 'NAME'
      ListSource = dsCurr
      TabOrder = 3
    end
  end
  object dsCurr: TDataSource
    DataSet = ibdsCurriculum
    Left = 816
    Top = 40
  end
  object ibdsCurriculum: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    SelectSQL.Strings = (
      'select * '
      'from V_CURRICULUM '
      'order by pos')
    Left = 784
    Top = 40
    object ibdsCurriculumID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"V_CURRICULUM"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurriculumNAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'NAME'
      Origin = '"V_CURRICULUM"."NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
  end
end
