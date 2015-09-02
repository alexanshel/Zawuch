object fmMTPrintSet: TfmMTPrintSet
  Left = 230
  Top = 51
  Width = 509
  Height = 672
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  inline frmParams: TfrmPrintParams
    Left = 0
    Top = 0
    Width = 501
    Height = 638
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited VLE: TValueListEditor
      Width = 501
      Height = 309
      Strings.Strings = (
        #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#8470'='
        #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100'='
        #1044#1085#1080'='
        #1063#1072#1089#1099'='
        #1044#1072#1090#1072'=')
      ColWidths = (
        347
        148)
    end
    inherited GroupBox1: TGroupBox
      Top = 309
      Width = 501
      ParentFont = False
    end
    inherited rgOrient: TRadioGroup
      Top = 474
      Width = 501
      ParentFont = False
    end
    inherited Panel1: TPanel
      Top = 546
      Width = 501
      inherited btnOk: TBitBtn
        OnClick = frmParamsbtnOkClick
      end
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 360
    Top = 576
  end
end
