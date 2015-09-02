object fmStRepTeacher: TfmStRepTeacher
  Left = 248
  Top = 77
  Width = 521
  Height = 650
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline frmPrintParams: TfrmPrintParams
    Left = 0
    Top = 0
    Width = 513
    Height = 616
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited VLE: TValueListEditor
      Width = 513
      Strings.Strings = (
        #8470'='
        #1060'.'#1048'.'#1054'. ('#1087#1088#1077#1076#1084#1077#1090')='
        #1050#1083#1072#1089#1089'='
        #1050#1086#1083'-'#1074#1086' '#1075#1088#1091#1087#1087'='
        #1050#1086#1083'-'#1074#1086' '#1095#1072#1089#1086#1074' '#1074' '#1085#1077#1076#1077#1083#1102'='
        #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'=')
      ColWidths = (
        337
        170)
    end
    inherited GroupBox1: TGroupBox
      Width = 513
    end
    inherited rgOrient: TRadioGroup
      Width = 513
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 408
    Top = 576
  end
end
