object fmDeptStTRepParam: TfmDeptStTRepParam
  Left = 227
  Top = 95
  Width = 498
  Height = 643
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline frmPrintParams: TfrmPrintParams
    Left = 0
    Top = 0
    Width = 490
    Height = 609
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited VLE: TValueListEditor
      Width = 490
      Height = 280
      Strings.Strings = (
        #8470'='
        #1060'.'#1048'.'#1054'. '#1091#1095#1077#1085#1080#1082#1072'='
        #1050#1083#1072#1089#1089'='
        #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103'='
        #1050#1091#1088#1072#1090#1086#1088'='
        #1050#1086#1083'-'#1074#1086' '#1075#1088#1091#1087#1087'='
        #1050#1086#1083'-'#1074#1086' '#1095#1072#1089#1086#1074'='
        #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'=')
      ColWidths = (
        337
        147)
    end
    inherited GroupBox1: TGroupBox
      Top = 280
      Width = 490
    end
    inherited rgOrient: TRadioGroup
      Top = 445
      Width = 490
    end
    inherited Panel1: TPanel
      Top = 517
      Width = 490
      inherited btnOk: TBitBtn
        OnClick = frmPrintParamsbtnOkClick
      end
      inherited btnCancel: TBitBtn
        ParentFont = False
      end
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 352
    Top = 328
  end
end
