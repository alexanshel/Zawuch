object fmEdISubject: TfmEdISubject
  Left = 563
  Top = 435
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1086#1075#1086' '#1087#1088#1077#1076#1084#1077#1090#1072' '#1088#1072#1089#1095#1105#1090#1072' '#1091#1095#1077#1073#1085#1099#1093' '#1095#1072#1089#1086#1074
  ClientHeight = 170
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    548
    170)
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
    Width = 73
    Height = 16
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 166
    Height = 16
    Caption = #1055#1088#1077#1076#1084#1077#1090' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1087#1083#1072#1085#1072
  end
  object jvdblcDepartment: TJvDBLookupCombo
    Left = 184
    Top = 40
    Width = 358
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'ID'
    LookupDisplay = 'Name'
    LookupSource = dsDepartment
    TabOrder = 0
    OnChange = jvdblcDepartmentChange
  end
  object edName: TEdit
    Left = 184
    Top = 8
    Width = 358
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object jvdblcCurrRec: TJvDBLookupCombo
    Left = 184
    Top = 72
    Width = 358
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'ID'
    LookupDisplay = 'SUBJECT_NAME'
    LookupSource = dsCurrRec
    TabOrder = 2
  end
  object JvFooter1: TJvFooter
    Left = 0
    Top = 133
    Width = 548
    Height = 37
    Align = alBottom
    DesignSize = (
      548
      37)
    object btnOK: TJvFooterBtn
      Left = 388
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
      Left = 466
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
  object dsDepartment: TDataSource
    DataSet = ibqDepartment
    Left = 184
    Top = 96
  end
  object dsCurrRec: TDataSource
    DataSet = ibqCurrRec
    Left = 256
    Top = 96
  end
  object ibqDepartment: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    Active = True
    SQL.Strings = (
      'select * from "Department"')
    Left = 336
    Top = 96
  end
  object ibqCurrRec: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SQL.Strings = (
      'select * '
      'from VIEW_CURRICULUM_RECORDS'
      'WHERE "CurriculumID" = :CurriculumID')
    Left = 408
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CurriculumID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
end
