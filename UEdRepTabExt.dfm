object fmEdRepTabExt: TfmEdRepTabExt
  Left = 277
  Top = 172
  Width = 445
  Height = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 280
    Top = 16
    Width = 48
    Height = 20
    Caption = #1052#1077#1089#1103#1094
  end
  object RxLabel1: TRxLabel
    Left = 16
    Top = 16
    Width = 125
    Height = 20
    Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
  end
  object dtpMonth: TDateTimePicker
    Left = 280
    Top = 40
    Width = 105
    Height = 28
    Date = 38891.076872685180000000
    Format = 'MMMM'
    Time = 38891.076872685180000000
    DateFormat = dfLong
    DateMode = dmUpDown
    TabOrder = 1
  end
  object edY_T: TLabeledEdit
    Left = 16
    Top = 112
    Width = 113
    Height = 28
    EditLabel.Width = 46
    EditLabel.Height = 20
    EditLabel.Caption = #1052#1083'.('#1095')'
    TabOrder = 2
    OnKeyPress = edY_TKeyPress
  end
  object edO_T: TLabeledEdit
    Left = 144
    Top = 112
    Width = 113
    Height = 28
    EditLabel.Width = 43
    EditLabel.Height = 20
    EditLabel.Caption = #1057#1090'.('#1095')'
    TabOrder = 3
    OnKeyPress = edY_TKeyPress
  end
  object edC_T: TLabeledEdit
    Left = 272
    Top = 112
    Width = 113
    Height = 28
    EditLabel.Width = 60
    EditLabel.Height = 20
    EditLabel.Caption = #1050#1086#1085#1094'.('#1095')'
    TabOrder = 4
    OnKeyPress = edY_TKeyPress
  end
  object edC_T_OOD: TLabeledEdit
    Left = 272
    Top = 176
    Width = 113
    Height = 28
    EditLabel.Width = 100
    EditLabel.Height = 20
    EditLabel.Caption = #1050#1086#1085#1094'.('#1095') '#1054#1054#1044
    TabOrder = 7
    OnKeyPress = edY_TKeyPress
  end
  object edO_T_OOD: TLabeledEdit
    Left = 144
    Top = 176
    Width = 113
    Height = 28
    EditLabel.Width = 83
    EditLabel.Height = 20
    EditLabel.Caption = #1057#1090'.('#1095') '#1054#1054#1044
    TabOrder = 6
    OnKeyPress = edY_TKeyPress
  end
  object edY_T_OOD: TLabeledEdit
    Left = 16
    Top = 176
    Width = 113
    Height = 28
    EditLabel.Width = 86
    EditLabel.Height = 20
    EditLabel.Caption = #1052#1083'.('#1095') '#1054#1054#1044
    TabOrder = 5
    OnKeyPress = edY_TKeyPress
  end
  object edC_T_Filial: TLabeledEdit
    Left = 272
    Top = 240
    Width = 113
    Height = 28
    EditLabel.Width = 126
    EditLabel.Height = 20
    EditLabel.Caption = #1050#1086#1085#1094'.('#1095') '#1060#1080#1083#1080#1072#1083
    TabOrder = 10
    OnKeyPress = edY_TKeyPress
  end
  object edO_T_Filial: TLabeledEdit
    Left = 144
    Top = 240
    Width = 113
    Height = 28
    EditLabel.Width = 109
    EditLabel.Height = 20
    EditLabel.Caption = #1057#1090'.('#1095') '#1060#1080#1083#1080#1072#1083
    TabOrder = 9
    OnKeyPress = edY_TKeyPress
  end
  object edY_T_Filial: TLabeledEdit
    Left = 16
    Top = 240
    Width = 113
    Height = 28
    EditLabel.Width = 112
    EditLabel.Height = 20
    EditLabel.Caption = #1052#1083'.('#1095') '#1060#1080#1083#1080#1072#1083
    TabOrder = 8
    OnKeyPress = edY_TKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 304
    Width = 105
    Height = 33
    TabOrder = 11
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 304
    Width = 105
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 12
    Kind = bkCancel
  end
  object edTName: TComboEdit
    Left = 16
    Top = 40
    Width = 241
    Height = 28
    DirectInput = False
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B004000000000000000000000000000000000000E1E1E1E2E2E2
      E2E2E2E4E4E4E1E1E1DEE2DEE5E6E5EEE7EEEDE3EDE9DEE9E7DEE7EAE1EAE9E6
      E9E6E8E6E1E3E1E0E0E0E2E2E2E3E3E3E2E2E2E2E2E2E2E2E2E3E3E3E4E4E4E1
      E2E1E0E3E0F1E8F1DFD6DFA8B6A879A1796996696B966B7F9B7FA7A9A7CFC3CF
      E5E1E5E5E9E5E0E0E0E3E3E3E3E3E3E3E3E3E2E3E2E4E4E4E2E3E2E4E6E4F1E7
      F19FBA9F3997390D980D04A30407A607009F00008F000E840E4183418D948DD7
      CDD7E9EDE9E3E3E3E4E4E4E4E4E4E3E2E3E1E2E1E2E4E2EADFEA7AA97A1DA61D
      3BD03B72EA7289F28985F1856FE96F4BD64B21B421009C000D880D5D7A5DC2B6
      C2E6E9E6E2E2E2E2E2E2E2E1E2DFE2DFF3E8F388B78827B42776F07698F998A3
      F4A3A3F3A39CF39C8EF38E81F38177E87751D25108AA08008E004F764FCBBECB
      E7EBE7DFE0DFDDE0DDEFE8EFC1CEC13ABB3A70F37097F59795E99599E9999BE8
      9B98E89893E89387E78775E87571EC715CD95C0CAC0C109810748574DCD4DCE4
      E8E4E2E3E2EBE1EB75B4754AD54A72E97254CD5482DE829FE89FA0E8A09EE79E
      9AE79A94E59486E28666DD6661E6613EC83E11AE113A8D3AA6A1A6E8E8E8E8E4
      E8DADBDA56C4564DDE4D7ADF7A4BC14B78CE7861CC6166D36677DB7788DF888F
      E08F8ADF8A7ADC7A53D65351DB5131C33128A8287A947ADAD2DAEAE4EACED5CE
      46C4464ED84E89DE8972D67285CD85D0E9D063C3632DB22D35C03560D2607ED9
      7E7BD97B5BD15B3CD13C3CCC3C23B6235C8F5CBFB7BFEAE4EACED5CE3EC13E30
      CD3057CC5751CD5110B210B1E1B1FFFFFFC0DEC069CB6929BB2921BC213FC93F
      3CC83C1EC11E2CC82C28BF28509E50B1AEB1E9E5E9D7DBD73ABC3A02B8021ABC
      1A20C12015C3151CBB1CCBE9CBFFFFFFFFFEFFBAE5BA67CC6729BB290BB60B00
      B50014BC1427C22758AC58AEAEAEE6E4E6E4E0E450BB5000B70014BF141CC31C
      27C92713C01373C873FAFCFAF0F9F0FFFFFFF5F5F54BB94B05B20509BB0908B5
      0821BD2165AF65B5B3B5E0E1E0EFE5EF8FCA8F0FBB0F22C9222BCB2B33D33328
      C928B3E0B3FFFFFFF2F8F295D89539C33922C62220C52018C11813BD131CBC1C
      7AB77ACFC8CFDDDFDDE9E5E9D0D9D040BF4021CB2139D2393BD63B57C657FBFA
      FBB4DCB44CBC4C29C92932D33230D03029CA2920C6201EC21E2BB42B8BA98BD9
      D2D9E1E1E1DDE1DDF0E4F09DCE9D2EC82E48DF4865D96579C97984D7844DD34D
      67E5677FEA7F8AE88A5DDC5D31D03135CF3527C82756B756CAC4CADFE0DFE2E1
      E2E1E1E1E2E3E2EBE4EB81C98143D54353D75381D481B7F0B7C0FAC0BAF7BAB6
      F3B6BFF2BF85E58546DA463ED43E31BB31ACC5ACE6DFE6E0E4E0E1E1E1E3E2E3
      E0E2E0E5E5E5E8E0E887C2874ED54EAAF9AAFAFFFAF7FBF7F3FCF3F1FBF1DAFA
      DA7EEE7E45DF4533BF3391B891E6DCE6E2E5E2E2E1E2E3E3E3E4E4E4E5E4E5E2
      E3E2E4E5E4EDE5EDB3D5B375D57591E391BDEFBDC9F5C9C4F4C485EE8552DB52
      5BC65BABCCABEDE2EDE3E6E3E4E3E4E4E3E4E2E2E2E3E3E3E3E3E3E5E5E5E1E2
      E1E1E3E1EFE6EFDEDCDEB0D3B093D19390D2908CD38C85CE85A7CDA7D6D7D6EF
      E5EFE1E3E1E3E3E3E4E3E4E3E4E3E2E2E2E3E3E3E3E3E3E4E4E4E3E3E3E2E2E2
      DDE1DDE7E4E7F0E5F0EBE1EBE4DFE4E6E0E6EAE0EAEFE4EFE8E5E8DEE2DEE2E2
      E2E4E4E4E3E3E3E3E3E3}
    ButtonWidth = 23
    NumGlyphs = 1
    TabOrder = 0
    OnButtonClick = btnTChoiceClick
  end
  object FormPlacement1: TFormPlacement
    Left = 336
    Top = 304
  end
end
