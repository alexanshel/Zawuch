object fmEdGroupSubj: TfmEdGroupSubj
  Left = 576
  Top = 116
  Width = 865
  Height = 732
  Caption = #1043#1088#1091#1087#1087#1086#1074#1086#1081' '#1087#1088#1077#1076#1084#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 25
  object pGSubj: TPanel
    Left = 495
    Top = 0
    Width = 362
    Height = 692
    Align = alClient
    TabOrder = 0
    object lbSubjects: TListBox
      Left = 1
      Top = 311
      Width = 360
      Height = 289
      Align = alClient
      ItemHeight = 25
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 1
      Top = 600
      Width = 360
      Height = 91
      Align = alBottom
      TabOrder = 1
      object btnOK: TBitBtn
        Left = 45
        Top = 30
        Width = 131
        Height = 41
        TabOrder = 0
        OnClick = btnOKClick
        Kind = bkOK
      end
      object BitBtn2: TBitBtn
        Left = 215
        Top = 30
        Width = 131
        Height = 41
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 1
        Kind = bkCancel
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 360
      Height = 210
      Align = alTop
      TabOrder = 2
      DesignSize = (
        360
        210)
      object edGrSubjName: TLabeledEdit
        Left = 20
        Top = 50
        Width = 531
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 343
        EditLabel.Height = 25
        EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1086#1074#1086#1075#1086' '#1087#1088#1077#1076#1084#1077#1090#1072
        TabOrder = 0
      end
      object edGrQty: TLabeledEdit
        Left = 20
        Top = 130
        Width = 191
        Height = 28
        EditLabel.Width = 335
        EditLabel.Height = 25
        EditLabel.Caption = #1056#1072#1089#1095#1077#1090#1085#1086#1077' '#1082#1086#1083'-'#1074#1086' '#1091#1095#1077#1085#1080#1082#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
        TabOrder = 1
        OnKeyPress = edGrQtyKeyPress
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 211
      Width = 360
      Height = 100
      Align = alTop
      TabOrder = 3
      object Label1: TLabel
        Left = 20
        Top = 30
        Width = 438
        Height = 50
        Caption = 
          #1057#1087#1080#1089#1086#1082' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1080#1079' '#1088#1072#1079#1085#1099#1093' '#1091#1095#1077#1073#1085#1099#1093' '#1087#1083#1072#1085#1086#1074', '#1087#1088#1080#1085#1080#1084#1072#1077#1084#1099#1093' '#1079#1072' '#1086#1076#1080#1085' '#1075 +
          #1088#1091#1087#1087#1086#1074#1086#1081
        WordWrap = True
      end
    end
  end
  object pCurrSubj: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 692
    Align = alLeft
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 419
      Height = 690
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object gbSubj: TGroupBox
        Left = 0
        Top = 334
        Width = 419
        Height = 356
        Align = alClient
        Caption = #1043#1088#1091#1087#1087#1086#1074#1099#1077' '#1087#1088#1077#1076#1084#1077#1090#1099' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1087#1083#1072#1085#1072
        TabOrder = 0
        object dbgSubj: TRxDBGrid
          Left = 2
          Top = 27
          Width = 415
          Height = 327
          Align = alClient
          DataSource = dsSubj
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgSubjDrawColumnCell
        end
      end
      object gbCurr: TGroupBox
        Left = 0
        Top = 0
        Width = 419
        Height = 330
        Align = alTop
        Caption = #1059#1095#1077#1073#1085#1099#1077' '#1087#1083#1072#1085#1099
        TabOrder = 1
        object dbgCurr: TRxDBGrid
          Left = 2
          Top = 27
          Width = 415
          Height = 301
          Align = alClient
          DataSource = dsCurr
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -20
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object RxSplitter1: TRxSplitter
        Left = 0
        Top = 330
        Width = 419
        Height = 4
        ControlFirst = gbCurr
        Align = alTop
      end
    end
    object Panel2: TPanel
      Left = 420
      Top = 1
      Width = 70
      Height = 690
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 1
      object btnAddOne: TSpeedButton
        Left = 20
        Top = 450
        Width = 41
        Height = 41
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFF
          FFFFFFFFFFFFFFFFFFFFFFCCFFCCCCFFFFFFFFFFFFFFFFFFFFFFFFCCFFFFCCCC
          FFFFFFFFFFFFFFFFFFFFFFCCCCFFFFCCCCFFFFFFFFFFFFFFFFFFFFFFCCCCFFFF
          CCCCFFFFFFFFFFFFFFFFFFFFFFCCCCFFFFCCCCCFFFFFFFFFFFFFFFFFFFFFCCCC
          FFFFFCCCCFFFFFFFFFFFFFFFFFFFFFCCCCCFFFFCCCCFFFFFFFFFFFFFFFFFFFFF
          FCCCCFFFFCCCCFFFFFFFFFFFFFFFFFFFFFFCCCCFFFFCCCCFFFFFFFFFFFFFFFFF
          FFFFFCCCCFFFFCCCCFFFFFFFFFFFFFFFFFFFFFFCCCCFFFFCCCCFFFFFFFFFFFFF
          FFFFFFFCCCCFFFFCCCCFFFFFFFFFFFFFFFFFFCCCCFFFFCCCCFFFFFFFFFFFFFFF
          FFFCCCCFFFFCCCCFFFFFFFFFFFFFFFFFFCCCCFFFFCCCCFFFFFFFFFFFFFFFFFCC
          CCCFFFFCCCCFFFFFFFFFFFFFFFFFCCCCCFFFFCCCCFFFFFFFFFFFFFFFFFCCCCFF
          FFCCCCCFFFFFFFFFFFFFFFFFCCCCFFFFCCCCCFFFFFFFFFFFFFFFFFFCCCFFFFCC
          CCFFFFFFFFFFFFFFFFFFFFCCFFFFCCCCFFFFFFFFFFFFFFFFFFFFFFCCFFCCCCFF
          FFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnAddOneClick
      end
      object btnDelOne: TSpeedButton
        Left = 20
        Top = 530
        Width = 41
        Height = 41
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999FFFFFFFFFFFFFF
          FFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFF9999FF99FFFFFFFFFFFFFF
          FFFFFFFF9999FFFF99FFFFFFFFFFFFFFFFFFFF9999FFFF999FFFFFFFFFFFFFFF
          FFF99999FFFF9999FFFFFFFFFFFFFFFFF99999FFFF9999FFFFFFFFFFFFFFFFF9
          999FFFF99999FFFFFFFFFFFFFFFFF9999FFFF99999FFFFFFFFFFFFFFFFF9999F
          FFF9999FFFFFFFFFFFFFFFFFF9999FFFF9999FFFFFFFFFFFFFFFFFF9999FFFF9
          999FFFFFFFFFFFFFFFFFF9999FFFF9999FFFFFFFFFFFFFFFFFFFF9999FFFF999
          9FFFFFFFFFFFFFFFFFFFFFF9999FFFF9999FFFFFFFFFFFFFFFFFFFFFF9999FFF
          F9999FFFFFFFFFFFFFFFFFFFFFF9999FFFF9999FFFFFFFFFFFFFFFFFFFFFF999
          9FFFF99999FFFFFFFFFFFFFFFFFFFFF9999FFFFF9999FFFFFFFFFFFFFFFFFFFF
          F99999FFFF9999FFFFFFFFFFFFFFFFFFFFFF9999FFFF9999FFFFFFFFFFFFFFFF
          FFFFFF9999FFFF9999FFFFFFFFFFFFFFFFFFFFFF9999FFFF99FFFFFFFFFFFFFF
          FFFFFFFFFF9999FF99FFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFF
          FFFFFFFFFFFFFF9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnDelOneClick
      end
    end
  end
  object rxspCurrSubjGSubj: TRxSplitter
    Left = 491
    Top = 0
    Width = 4
    Height = 692
    ControlFirst = pCurrSubj
    ControlSecond = pGSubj
    Align = alLeft
  end
  object dsCurr: TDataSource
    Left = 152
    Top = 48
  end
  object dsSubj: TDataSource
    Left = 288
    Top = 304
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'gbCurr.Height'
      'pCurrSubj.Width')
    StoredValues = <>
    Left = 352
    Top = 209
  end
end
