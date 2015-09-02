object fmCalcIndividualAdd: TfmCalcIndividualAdd
  Left = 410
  Top = 297
  BorderStyle = bsNone
  Caption = 'fmCalcIndividualAdd'
  ClientHeight = 417
  ClientWidth = 608
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
    Width = 608
    Height = 417
    Align = alClient
    Caption = #1053#1086#1074#1099#1081' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1089#1095#1105#1090
    TabOrder = 0
    DesignSize = (
      608
      417)
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
      Width = 592
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object mHeader: TMemo
      Left = 8
      Top = 104
      Width = 591
      Height = 105
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object mFooter: TMemo
      Left = 8
      Top = 240
      Width = 591
      Height = 113
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object bbOK: TBitBtn
      Left = 304
      Top = 376
      Width = 142
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = #1054#1050
      TabOrder = 3
      OnClick = bbOKClick
    end
    object bbCancel: TBitBtn
      Left = 456
      Top = 376
      Width = 142
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = bbCancelClick
    end
  end
end
