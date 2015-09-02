object fmReportParams: TfmReportParams
  Left = 152
  Top = 51
  Width = 722
  Height = 664
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
  object Panel1: TPanel
    Left = 0
    Top = 469
    Width = 714
    Height = 161
    Align = alBottom
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 264
      Height = 111
      Align = alLeft
      Caption = #1055#1086#1083#1103' ('#1084#1084'.)'
      TabOrder = 0
      object edMTop: TRxSpinEdit
        Left = 96
        Top = 24
        Width = 73
        Height = 28
        MaxValue = 255.000000000000000000
        TabOrder = 0
      end
      object edMLeft: TRxSpinEdit
        Left = 16
        Top = 48
        Width = 73
        Height = 28
        MaxValue = 255.000000000000000000
        TabOrder = 1
      end
      object edMRight: TRxSpinEdit
        Left = 176
        Top = 48
        Width = 73
        Height = 28
        MaxValue = 255.000000000000000000
        TabOrder = 2
      end
      object edMBottom: TRxSpinEdit
        Left = 96
        Top = 72
        Width = 73
        Height = 28
        MaxValue = 255.000000000000000000
        TabOrder = 3
      end
    end
    object rgLandscape: TRadioGroup
      Left = 265
      Top = 1
      Width = 448
      Height = 111
      Align = alClient
      Caption = #1054#1088#1080#1077#1085#1090#1072#1094#1080#1103' '#1083#1080#1089#1090#1072
      ItemIndex = 0
      Items.Strings = (
        #1087#1086#1088#1090#1088#1077#1090#1085#1072#1103
        #1072#1083#1100#1073#1086#1084#1085#1072#1103)
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 112
      Width = 712
      Height = 48
      Align = alBottom
      TabOrder = 2
      object btnOK: TBitBtn
        Left = 24
        Top = 8
        Width = 97
        Height = 33
        TabOrder = 0
        OnClick = btnOKClick
        Kind = bkOK
      end
      object BitBtn2: TBitBtn
        Left = 144
        Top = 8
        Width = 105
        Height = 33
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 1
        Kind = bkCancel
      end
    end
  end
  object RxSplitter1: TRxSplitter
    Left = 0
    Top = 466
    Width = 714
    Height = 3
    Align = alBottom
  end
  object gbHeader: TGroupBox
    Left = 0
    Top = 0
    Width = 714
    Height = 121
    Align = alTop
    Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1086#1090#1095#1105#1090#1072
    Constraints.MinHeight = 100
    TabOrder = 2
    object reHeader: TRxRichEdit
      Left = 2
      Top = 22
      Width = 710
      Height = 97
      Align = alClient
      TabOrder = 0
      WantTabs = True
      OnSelectionChange = reHeaderSelectionChange
    end
  end
  object gbFooter: TGroupBox
    Left = 0
    Top = 342
    Width = 714
    Height = 124
    Align = alBottom
    Caption = #1055#1086#1076#1087#1080#1089#1100' '#1086#1090#1095#1105#1090#1072
    Constraints.MinHeight = 100
    TabOrder = 3
    object reFooter: TRichEdit
      Left = 2
      Top = 22
      Width = 710
      Height = 100
      Align = alClient
      Lines.Strings = (
        'RichEdit1')
      TabOrder = 0
    end
  end
  object gbFields: TGroupBox
    Left = 0
    Top = 124
    Width = 714
    Height = 215
    Align = alClient
    Caption = #1055#1086#1083#1103' '#1090#1072#1073#1083#1080#1094#1099' '#1086#1090#1095#1105#1090#1072
    Constraints.MinHeight = 100
    TabOrder = 4
    object tvFields: TTreeView
      Left = 2
      Top = 22
      Width = 522
      Height = 191
      Align = alClient
      HideSelection = False
      Indent = 19
      TabOrder = 0
      OnChange = tvFieldsChange
      Items.Data = {
        090000001A0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
        01B93A0000000000000000000000FFFFFFFFFFFFFFFF000000000000000021CF
        F0E5EFEEE4E0E2E0F2E5EBFC2C20E4EEEBE6EDEEF1F2FC2C20EFF0E5E4ECE5F2
        240000000000000000000000FFFFFFFFFFFFFFFF00000000000000000BCEE1F0
        E0E7EEE2E0EDE8E5230000000000000000000000FFFFFFFFFFFFFFFF00000000
        000000000ACFE5E42E20F1F2E0E62E1F0000000000000000000000FFFFFFFFFF
        FFFFFF000000000000000006D1F2E0E2EAE01F0000000000000000000000FFFF
        FFFFFFFFFFFF000000000300000006C1FEE4E6E5F21D00000000000000000000
        00FFFFFFFFFFFFFFFF000000000300000004D7E0F1FB1C000000000000000000
        0000FFFFFFFFFFFFFFFF000000000000000003ECEB2E1C000000000000000000
        0000FFFFFFFFFFFFFFFF000000000000000003F1F22E1E000000000000000000
        0000FFFFFFFFFFFFFFFF000000000000000005EAEEEDF62E2000000000000000
        00000000FFFFFFFFFFFFFFFF000000000300000007C72FEFEBE0F2E01C000000
        0000000000000000FFFFFFFFFFFFFFFF000000000000000003ECEB2E1C000000
        0000000000000000FFFFFFFFFFFFFFFF000000000000000003F1F22E1E000000
        0000000000000000FFFFFFFFFFFFFFFF000000000000000005EAEEEDF62E1E00
        00000000000000000000FFFFFFFFFFFFFFFF000000000000000005D1F3ECECE0
        280000000000000000000000FFFFFFFFFFFFFFFF00000000030000000FD1E0EC
        EEEEEAF3EFE0E5ECEEF1F2FC1D0000000000000000000000FFFFFFFFFFFFFFFF
        000000000300000004D7E0F1FB1C0000000000000000000000FFFFFFFFFFFFFF
        FF000000000000000003ECEB2E1C0000000000000000000000FFFFFFFFFFFFFF
        FF000000000000000003F1F22E1E0000000000000000000000FFFFFFFFFFFFFF
        FF000000000000000005EAEEEDF62E200000000000000000000000FFFFFFFFFF
        FFFFFF000000000300000007C72FEFEBE0F2E01C0000000000000000000000FF
        FFFFFFFFFFFFFF000000000000000003ECEB2E1C0000000000000000000000FF
        FFFFFFFFFFFFFF000000000000000003F1F22E1E0000000000000000000000FF
        FFFFFFFFFFFFFF000000000000000005EAEEEDF62E1E00000000000000000000
        00FFFFFFFFFFFFFFFF000000000000000005D1F3ECECE0210000000000000000
        000000FFFFFFFFFFFFFFFF000000000000000008CDE0E4E1E0E2EAE01E000000
        0000000000000000FFFFFFFFFFFFFFFF000000000000000005C8F2EEE3EE}
    end
    object RxSplitter2: TRxSplitter
      Left = 524
      Top = 22
      Width = 3
      Height = 191
      ControlFirst = tvFields
      ControlSecond = gbSize
      Align = alRight
    end
    object gbSize: TGroupBox
      Left = 527
      Top = 22
      Width = 185
      Height = 191
      Align = alRight
      Caption = #1056#1072#1079#1084#1077#1088' '#1089#1090#1086#1083#1073#1094#1072
      TabOrder = 2
      DesignSize = (
        185
        191)
      object btnBold: TSpeedButton
        Left = 24
        Top = 136
        Width = 33
        Height = 33
        AllowAllUp = True
        GroupIndex = 1
        Caption = #1046
        OnClick = btnBoldClick
      end
      object edFSize: TRxSpinEdit
        Left = 16
        Top = 40
        Width = 153
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        TabOrder = 0
        OnChange = edFSizeChange
      end
      object RxSpinEdit1: TRxSpinEdit
        Left = 16
        Top = 96
        Width = 121
        Height = 28
        MinValue = 1.000000000000000000
        TabOrder = 1
      end
    end
  end
  object RxSplitter3: TRxSplitter
    Left = 0
    Top = 121
    Width = 714
    Height = 3
    ControlFirst = gbHeader
    ControlSecond = gbFields
    Align = alTop
  end
  object RxSplitter4: TRxSplitter
    Left = 0
    Top = 339
    Width = 714
    Height = 3
    ControlFirst = gbFooter
    ControlSecond = gbFields
    Align = alBottom
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'gbSize.Width'
      'gbHeader.Height'
      'gbFooter.Height')
    StoredValues = <>
    Left = 631
    Top = 287
  end
end
