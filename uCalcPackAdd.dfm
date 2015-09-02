object fmCalcPackAdd: TfmCalcPackAdd
  Left = 407
  Top = 249
  BorderStyle = bsNone
  Caption = 'fmCalcPackAdd'
  ClientHeight = 428
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pFrame: TPanel
    Left = 0
    Top = 0
    Width = 629
    Height = 428
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 6
      Top = 6
      Width = 617
      Height = 416
      Align = alClient
      Caption = #1053#1086#1074#1099#1081' '#1087#1072#1082#1077#1090' '#1088#1072#1089#1095#1105#1090#1086#1074
      TabOrder = 0
      DesignSize = (
        617
        416)
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      object Label6: TLabel
        Left = 8
        Top = 80
        Width = 54
        Height = 13
        Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
      end
      object Label7: TLabel
        Left = 8
        Top = 216
        Width = 44
        Height = 13
        Caption = #1055#1086#1076#1087#1080#1089#1100
      end
      object edName: TEdit
        Left = 8
        Top = 48
        Width = 601
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object mHeader: TMemo
        Left = 8
        Top = 104
        Width = 600
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object mFooter: TMemo
        Left = 8
        Top = 240
        Width = 600
        Height = 113
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object bbOK: TBitBtn
        Left = 313
        Top = 367
        Width = 142
        Height = 33
        Anchors = [akRight, akBottom]
        Caption = #1054#1050
        TabOrder = 3
        OnClick = bbOKClick
      end
      object bbCancel: TBitBtn
        Left = 465
        Top = 367
        Width = 142
        Height = 33
        Anchors = [akRight, akBottom]
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        TabOrder = 4
        OnClick = bbCancelClick
      end
    end
  end
  object al: TActionList
    Left = 408
    Top = 64
  end
end
