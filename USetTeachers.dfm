object fmSetTeachers: TfmSetTeachers
  Left = 252
  Top = 168
  BorderStyle = bsSingle
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 509
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object BitBtn1: TBitBtn
    Left = 24
    Top = 440
    Width = 121
    Height = 33
    TabOrder = 0
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 440
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    Kind = bkCancel
  end
  object VLE: TValueListEditor
    Left = 0
    Top = 0
    Width = 626
    Height = 417
    Align = alTop
    DefaultRowHeight = 27
    Strings.Strings = (
      '=')
    TabOrder = 2
    TitleCaptions.Strings = (
      #1055#1088#1077#1076#1084#1077#1090
      #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100)
    OnDrawCell = VLEDrawCell
    OnEditButtonClick = VLEEditButtonClick
    ColWidths = (
      272
      348)
  end
  object FormPlacement1: TFormPlacement
    Left = 376
    Top = 448
  end
end
