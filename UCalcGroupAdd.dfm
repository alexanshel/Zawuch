object fmCalcGroupAdd: TfmCalcGroupAdd
  Left = 306
  Top = 289
  BorderStyle = bsNone
  Caption = 'fmCalcGroupAdd'
  ClientHeight = 450
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 701
    Height = 450
    Align = alClient
    Caption = #1053#1086#1074#1099#1081' '#1075#1088#1091#1087#1087#1086#1074#1086#1081' '#1088#1072#1089#1095#1105#1090
    TabOrder = 0
    DesignSize = (
      701
      450)
    object Label5: TLabel
      Left = 8
      Top = 32
      Width = 99
      Height = 16
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Label6: TLabel
      Left = 8
      Top = 88
      Width = 70
      Height = 16
      Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
    end
    object Label7: TLabel
      Left = 8
      Top = 224
      Width = 56
      Height = 16
      Caption = #1055#1086#1076#1087#1080#1089#1100
    end
    object edName: TEdit
      Left = 8
      Top = 48
      Width = 685
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object mHeader: TMemo
      Left = 8
      Top = 104
      Width = 684
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object mFooter: TMemo
      Left = 8
      Top = 240
      Width = 684
      Height = 113
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object bbOK: TBitBtn
      Left = 397
      Top = 409
      Width = 142
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = #1054#1050
      TabOrder = 3
      OnClick = bbOKClick
    end
    object bbCancel: TBitBtn
      Left = 549
      Top = 409
      Width = 142
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = bbCancelClick
    end
  end
end
