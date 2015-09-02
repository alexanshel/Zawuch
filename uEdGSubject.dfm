object fmEdGSubject: TfmEdGSubject
  Left = 382
  Top = 217
  Width = 509
  Height = 212
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1086#1074#1086#1075#1086' '#1087#1088#1077#1076#1084#1077#1090#1072' '#1088#1072#1089#1095#1105#1090#1072' '#1095#1072#1089#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    501
    178)
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 166
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 112
    Height = 16
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1091#1087#1087
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 171
    Height = 16
    Caption = #1055#1088#1077#1076#1084#1077#1090' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1075#1088#1091#1087#1087
  end
  object edName: TEdit
    Left = 184
    Top = 8
    Width = 309
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object jvdblcGrouping: TJvDBLookupCombo
    Left = 184
    Top = 40
    Width = 309
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'ID'
    LookupDisplay = 'Name'
    LookupSource = dsGrouping
    TabOrder = 1
    OnChange = jvdblcGroupingChange
  end
  object jvdblcGroupingSubj: TJvDBLookupCombo
    Left = 184
    Top = 72
    Width = 309
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'ID'
    LookupDisplay = 'NAME'
    LookupSource = dsCurrRec
    TabOrder = 2
    OnChange = jvdblcGroupingSubjChange
  end
  object JvFooter1: TJvFooter
    Left = 0
    Top = 141
    Width = 501
    Height = 37
    Align = alBottom
    DesignSize = (
      501
      37)
    object btnOK: TJvFooterBtn
      Left = 341
      Top = 7
      Width = 74
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Default = True
      TabOrder = 0
      OnClick = btnOKClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ButtonIndex = 0
      SpaceInterval = 6
    end
    object JvFooterBtn3: TJvFooterBtn
      Left = 419
      Top = 7
      Width = 74
      Height = 23
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -13
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ButtonIndex = 1
      SpaceInterval = 6
    end
  end
  object cbConcertmaster: TCheckBox
    Left = 8
    Top = 112
    Width = 305
    Height = 17
    Caption = #1087#1088#1077#1076#1084#1077#1090' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1082#1086#1085#1094#1077#1088#1090#1084#1077#1081#1089#1090#1077#1088#1089#1082#1080#1084
    TabOrder = 4
  end
  object dsGrouping: TDataSource
    DataSet = ibqGrouping
    Left = 184
    Top = 96
  end
  object dsCurrRec: TDataSource
    DataSet = ibqGroupingSubj
    Left = 256
    Top = 96
  end
  object ibqGrouping: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SQL.Strings = (
      'select * from GROUPING')
    Left = 336
    Top = 96
  end
  object ibqGroupingSubj: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SQL.Strings = (
      'select * '
      'from GROUPING_SUBJ'
      'WHERE GROUPING_ID = :GROUPING_ID'
      'ORDER BY POS')
    Left = 408
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GROUPING_ID'
        ParamType = ptUnknown
      end>
  end
end
