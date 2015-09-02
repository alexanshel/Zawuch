object fmEdLTGISubj: TfmEdLTGISubj
  Left = 117
  Top = 85
  Width = 771
  Height = 573
  Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1084#1077#1090
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
  object pCurrSubj: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 539
    Align = alLeft
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 353
      Height = 537
      Align = alClient
      TabOrder = 0
      object dbgCurrSubj: TRxDBGrid
        Left = 1
        Top = 164
        Width = 351
        Height = 372
        Align = alClient
        DataSource = dsCurrSubj
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = dbgCurrSubjDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Name'
            Title.Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1077' '#1087#1088#1077#1076#1084#1077#1090#1099' '#1091#1095'. '#1087#1083#1072#1085#1072
            Width = 307
            Visible = True
          end>
      end
      object dbgCurr: TRxDBGrid
        Left = 1
        Top = 1
        Width = 351
        Height = 160
        Align = alTop
        DataSource = dsCurr
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Name'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1095'. '#1087#1083#1072#1085#1072
            Width = 233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERIOD'
            Title.Caption = #1055#1077#1088#1080#1086#1076
            Width = 86
            Visible = True
          end>
      end
      object RxSplitter1: TRxSplitter
        Left = 1
        Top = 161
        Width = 351
        Height = 3
        Align = alTop
      end
    end
    object Panel2: TPanel
      Left = 354
      Top = 1
      Width = 62
      Height = 537
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 1
      object btnAddSubj: TSpeedButton
        Left = 16
        Top = 248
        Width = 33
        Height = 33
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
        OnClick = btnAddSubjClick
      end
      object btnDelSubj: TSpeedButton
        Left = 16
        Top = 296
        Width = 33
        Height = 33
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
        OnClick = btnDelSubjClick
      end
    end
  end
  object RxSplitter2: TRxSplitter
    Left = 417
    Top = 0
    Width = 3
    Height = 539
    ControlFirst = pCurrSubj
    Align = alLeft
  end
  object pSubj: TPanel
    Left = 420
    Top = 0
    Width = 343
    Height = 539
    Align = alClient
    TabOrder = 2
    object lbISubj: TListBox
      Left = 1
      Top = 89
      Width = 341
      Height = 375
      Align = alClient
      ItemHeight = 20
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 341
      Height = 88
      Align = alTop
      TabOrder = 1
      DesignSize = (
        341
        88)
      object edSubjName: TLabeledEdit
        Left = 16
        Top = 32
        Width = 312
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 193
        EditLabel.Height = 20
        EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 464
      Width = 341
      Height = 74
      Align = alBottom
      TabOrder = 2
      object btnOK: TBitBtn
        Left = 24
        Top = 24
        Width = 121
        Height = 33
        TabOrder = 0
        Kind = bkOK
      end
      object btnCancel: TBitBtn
        Left = 192
        Top = 24
        Width = 105
        Height = 33
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 1
        Kind = bkCancel
      end
    end
  end
  object dsCurr: TDataSource
    Left = 161
    Top = 73
  end
  object dsCurrSubj: TDataSource
    Left = 161
    Top = 193
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'dbgCurr.Height'
      'pCurrSubj.Width')
    StoredValues = <>
    Left = 370
    Top = 129
  end
end
