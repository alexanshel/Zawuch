object fmLearnTimeGrid: TfmLearnTimeGrid
  Left = 192
  Top = 140
  Width = 696
  Height = 480
  Caption = #1057#1077#1090#1082#1072' '#1091#1095#1077#1073#1085#1099#1093' '#1095#1072#1089#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 145
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object dbgLearnTimeGreed: TRxDBGrid
      Left = 209
      Top = 1
      Width = 478
      Height = 143
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 208
      Height = 143
      Align = alLeft
      TabOrder = 1
      object btnAddLTG: TSpeedButton
        Left = 8
        Top = 16
        Width = 161
        Height = 33
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1077#1090#1082#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnEditLTG: TSpeedButton
        Left = 8
        Top = 56
        Width = 161
        Height = 33
        Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1089#1077#1090#1082#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnDelLTG: TSpeedButton
        Left = 8
        Top = 96
        Width = 161
        Height = 33
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1077#1090#1082#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RxSplitter1: TRxSplitter
    Left = 0
    Top = 145
    Width = 688
    Height = 3
    ControlFirst = Panel1
    Align = alTop
  end
  object Panel3: TPanel
    Left = 0
    Top = 148
    Width = 688
    Height = 298
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object dbgLTGRecord: TRxDBGrid
      Left = 187
      Top = 1
      Width = 500
      Height = 296
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 296
      Align = alLeft
      TabOrder = 1
    end
    object RxSplitter2: TRxSplitter
      Left = 186
      Top = 1
      Width = 1
      Height = 296
      ControlFirst = Panel4
      ControlSecond = dbgLTGRecord
      Align = alLeft
    end
  end
  object ActionList1: TActionList
    Left = 360
    Top = 24
    object aEditDelete: TAction
      Caption = 'aEditDelete'
    end
  end
end
