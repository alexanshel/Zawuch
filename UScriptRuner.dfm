object fmScriptRuner: TfmScriptRuner
  Left = 362
  Top = 105
  Width = 608
  Height = 550
  Caption = 'fmScriptRuner'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 600
    Height = 305
    Align = alTop
    Caption = 'Script'
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 262
      Width = 596
      Height = 41
      Align = alBottom
      TabOrder = 0
      object btnRun: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Run'
        TabOrder = 0
        OnClick = btnRunClick
      end
    end
    object mScript: TMemo
      Left = 2
      Top = 15
      Width = 596
      Height = 247
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object RxDBGrid1: TRxDBGrid
    Left = 188
    Top = 305
    Width = 412
    Height = 211
    Align = alClient
    DataSource = ds
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 305
    Width = 185
    Height = 211
    Align = alLeft
    Caption = 'GroupBox2'
    TabOrder = 2
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 181
      Height = 146
      Align = alTop
      TabOrder = 0
    end
    object btnRunQ: TButton
      Left = 8
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 1
      OnClick = btnRunQClick
    end
  end
  object RxSplitter1: TRxSplitter
    Left = 185
    Top = 305
    Width = 3
    Height = 211
    ControlFirst = GroupBox2
    ControlSecond = RxDBGrid1
    Align = alLeft
  end
  object FormPlacement1: TFormPlacement
    Left = 176
    Top = 136
  end
  object ds: TDataSource
    Left = 304
    Top = 336
  end
end
