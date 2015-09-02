object fmTeacherTitleEditor: TfmTeacherTitleEditor
  Left = 434
  Top = 523
  BorderStyle = bsDialog
  Caption = #1055#1086#1095#1105#1090#1085#1099#1077' '#1079#1074#1072#1085#1080#1103' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 161
  ClientWidth = 579
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
    579
    161)
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 56
    Height = 20
    Caption = #1047#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 296
    Top = 16
    Width = 132
    Height = 20
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1089#1074#1086#1077#1085#1080#1103
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 233
    Height = 20
    Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088' '#1089#1074#1077#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072
  end
  object dtpDate: TDateTimePicker
    Left = 440
    Top = 8
    Width = 133
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    Date = 40049.681489976850000000
    Time = 40049.681489976850000000
    TabOrder = 0
  end
  object JvDBLCTitle: TJvDBLookupCombo
    Left = 72
    Top = 8
    Width = 209
    Height = 27
    LookupField = 'F_ID'
    LookupDisplay = 'F_NAME'
    LookupSource = dsTitle
    TabOrder = 1
  end
  object edSerieNumber: TEdit
    Left = 248
    Top = 48
    Width = 325
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object JvFooter1: TJvFooter
    Left = 0
    Top = 124
    Width = 579
    Height = 37
    Align = alBottom
    DesignSize = (
      579
      37)
    object jfbOK: TJvFooterBtn
      Left = 419
      Top = 7
      Width = 74
      Height = 23
      Action = aOK
      Anchors = [akRight, akBottom]
      ModalResult = 1
      TabOrder = 0
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ButtonIndex = 0
      SpaceInterval = 6
    end
    object jfbCancel: TJvFooterBtn
      Left = 497
      Top = 7
      Width = 74
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ButtonIndex = 1
      SpaceInterval = 6
    end
  end
  object dsTitle: TDataSource
    DataSet = ibdsTitle
    Left = 40
    Top = 104
  end
  object ibdsTitle: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT *'
      'FROM teacher_title_kind')
    Left = 80
    Top = 104
    object ibdsTitleF_ID: TIntegerField
      FieldName = 'F_ID'
      Origin = 'TEACHER_TITLE_KIND.F_ID'
      Required = True
      Visible = False
    end
    object ibdsTitleF_NAME: TIBStringField
      FieldName = 'F_NAME'
      Origin = 'TEACHER_TITLE_KIND.F_NAME'
      Required = True
      Size = 100
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 88
    object aOK: TAction
      Caption = #1054#1050
      OnExecute = aOKExecute
      OnUpdate = aOKUpdate
    end
    object aCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
    end
  end
end
