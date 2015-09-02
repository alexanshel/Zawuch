object fmCurrRepParam: TfmCurrRepParam
  Left = 228
  Top = 48
  Width = 498
  Height = 676
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
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
    Width = 490
    Height = 642
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
      Height = 313
      Strings.Strings = (
        #8470'='
        #1055#1088#1077#1076#1084#1077#1090'='
        #1043#1088'.='
        #1042#1088#1077#1084#1103'='
        #1057#1091#1084#1084#1072#1088#1085#1086#1077' '#1074#1088#1077#1084#1103'='
        #1050#1086#1083'-'#1074#1086' '#1075#1088#1091#1087#1087'=')
      ColWidths = (
        337
        147)
    end
    inherited GroupBox1: TGroupBox
      Top = 313
      Width = 490
    end
    inherited rgOrient: TRadioGroup
      Top = 478
      Width = 490
    end
    inherited Panel1: TPanel
      Top = 550
      Width = 490
      ParentFont = False
      inherited btnOk: TBitBtn
        OnClick = frmParamsbtnOkClick
      end
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 360
    Top = 584
  end
end
