object fmRepTabParam: TfmRepTabParam
  Left = 228
  Top = 32
  Width = 515
  Height = 671
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
  inline frmParams: TfrmPrintParams
    Left = 0
    Top = 0
    Width = 507
    Height = 637
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    inherited VLE: TValueListEditor
      Width = 507
      Font.Height = -16
      ParentFont = False
      Strings.Strings = (
        #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#8470'='
        #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100'='
        #1044#1085#1080'='
        #1063#1072#1089#1099'='
        #1044#1072#1090#1072'=')
      ColWidths = (
        345
        156)
    end
    inherited GroupBox1: TGroupBox
      Width = 507
      Font.Height = -16
      ParentFont = False
      inherited edMLeft: TLabeledEdit
        Height = 28
        EditLabel.Width = 48
        EditLabel.Height = 20
      end
      inherited edMRight: TLabeledEdit
        Height = 28
        EditLabel.Width = 57
        EditLabel.Height = 20
      end
      inherited edMTop: TLabeledEdit
        Height = 28
        EditLabel.Width = 63
        EditLabel.Height = 20
      end
      inherited edMBottom: TLabeledEdit
        Height = 28
        EditLabel.Width = 59
        EditLabel.Height = 20
      end
    end
    inherited rgOrient: TRadioGroup
      Width = 507
      Font.Height = -16
      ParentFont = False
    end
    inherited btnOk: TBitBtn
      Font.Height = -16
      ParentFont = False
      OnClick = frmParamsbtnOkClick
    end
    inherited btnCancel: TBitBtn
      Font.Height = -16
      ParentFont = False
    end
  end
  object FormPlacement1: TFormPlacement
    Left = 360
    Top = 576
  end
end
