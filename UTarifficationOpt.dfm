object fmTarifficationOpt: TfmTarifficationOpt
  Left = 252
  Top = 20
  Width = 504
  Height = 689
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  inline frmParams: TfrmPrintParams
    Left = 0
    Top = 0
    Width = 496
    Height = 655
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited VLE: TValueListEditor
      Width = 496
      Height = 326
      Strings.Strings = (
        #8470'='
        #1060'.'#1048'.'#1054'.='
        #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077'='
        #1044#1080#1087#1083#1086#1084'='
        #1055#1077#1076'. '#1089#1090#1072#1078'='
        #1056#1072#1079#1088#1103#1076'='
        #1057#1090#1072#1074#1082#1072'='
        #1063#1072#1089#1099'='
        #1047'/'#1087#1083#1072#1090#1072'='
        #1057#1091#1084#1084#1072'='
        #1053#1072#1076#1073#1072#1074#1082#1072'='
        #1048#1090#1086#1075#1086'=')
      ColWidths = (
        337
        136)
    end
    inherited GroupBox1: TGroupBox
      Top = 398
      Width = 496
      ParentFont = False
    end
    inherited rgOrient: TRadioGroup
      Top = 326
      Width = 496
      ParentFont = False
    end
    inherited Panel1: TPanel
      Top = 563
      Width = 496
      inherited btnOk: TBitBtn
        OnClick = frmParamsbtnOkClick
      end
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 384
    Top = 424
  end
end
