object fmMAIN: TfmMAIN
  Left = 310
  Top = 165
  Width = 599
  Height = 468
  Caption = #1047#1072#1074#1091#1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 96
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object MainMenu: TMainMenu
    Left = 8
    Top = 40
    object N3: TMenuItem
      Caption = #1060#1072#1081#1083
      object miLoadBase: TMenuItem
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1073#1072#1079#1091
        OnClick = miLoadBaseClick
      end
      object miSaveBase: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1073#1072#1079#1091
      end
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object miTeacher: TMenuItem
        Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
        OnClick = miTeacherClick
      end
      object miStudent: TMenuItem
        Caption = #1059#1095#1077#1085#1080#1082#1080
        OnClick = miStudentClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miSubjects: TMenuItem
        Caption = #1055#1088#1077#1076#1084#1077#1090#1099
        OnClick = miSubjectsClick
      end
      object miDepSpec: TMenuItem
        Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103', '#1089#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1080
        OnClick = miDepSpecClick
      end
      object miFilial: TMenuItem
        Caption = #1060#1080#1083#1080#1072#1083#1099
        OnClick = miFilialClick
      end
      object miConst: TMenuItem
        Caption = #1050#1086#1085#1089#1090#1072#1085#1090#1099
        OnClick = miConstClick
      end
      object miCurrs: TMenuItem
        Caption = #1059#1095#1077#1073#1085#1099#1077' '#1087#1083#1072#1085#1099
        OnClick = miCurrsClick
      end
      object miTariffication: TMenuItem
        Caption = #1058#1072#1088#1080#1092#1085#1099#1081' '#1089#1090#1072#1074#1082#1080
        OnClick = miTarifficationClick
      end
    end
    object N4: TMenuItem
      Caption = #1056#1072#1089#1095#1077#1090
      object miGroup: TMenuItem
        Caption = #1043#1088#1091#1087#1087#1099
        OnClick = miGroupClick
      end
    end
    object miClose: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = miCloseClick
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'fdb'
    FileName = 'zawuch'
    Filter = '.fdb'
    Left = 40
    Top = 40
  end
  object DataSource1: TDataSource
    Left = 440
    Top = 208
  end
end
