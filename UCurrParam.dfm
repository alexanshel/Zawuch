object fmCurrParam: TfmCurrParam
  Left = 341
  Top = 43
  Width = 497
  Height = 662
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
    Width = 489
    Height = 628
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited VLE: TValueListEditor
      Width = 489
      Height = 299
      Strings.Strings = (
        #8470'='
        #1055#1088#1077#1076#1084#1077#1090'='
        #1043#1088'.='
        #1042#1088#1077#1084#1103'=')
      ColWidths = (
        337
        146)
    end
    inherited GroupBox1: TGroupBox
      Top = 299
      Width = 489
    end
    inherited rgOrient: TRadioGroup
      Top = 464
      Width = 489
    end
    inherited Panel1: TPanel
      Top = 536
      Width = 489
      ParentFont = False
      inherited btnOk: TBitBtn
        OnClick = frmParamsbtnOkClick
      end
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 368
    Top = 560
  end
end
