object fmEdGroup: TfmEdGroup
  Left = 410
  Top = 305
  Width = 293
  Height = 201
  Caption = #1043#1088#1091#1087#1087#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object edGroupQty: TLabeledEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 28
    Ctl3D = True
    EditLabel.Width = 97
    EditLabel.Height = 20
    EditLabel.Caption = #1050#1086#1083'-'#1074#1086' '#1075#1088#1091#1087#1087
    ParentCtl3D = False
    TabOrder = 0
    OnKeyPress = edGroupQtyKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 80
    Width = 97
    Height = 33
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 80
    Width = 97
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    Kind = bkCancel
  end
  object FormPlacement1: TFormPlacement
    Left = 216
    Top = 40
  end
end
