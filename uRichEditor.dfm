object fmRichEditor: TfmRichEditor
  Left = 516
  Top = 327
  Width = 445
  Height = 326
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object jvreInfo: TJvRichEdit
    Left = 0
    Top = 29
    Width = 437
    Height = 226
    Align = alClient
    AutoSize = False
    ParentFlat = False
    StreamMode = [smPlainRtf]
    TabOrder = 0
    WantTabs = True
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 437
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
    object tbBold: TToolButton
      Left = 0
      Top = 2
      ImageIndex = 0
    end
    object tbItalic: TToolButton
      Left = 23
      Top = 2
      Caption = 'tbItalic'
      ImageIndex = 1
    end
    object tbUnderline: TToolButton
      Left = 46
      Top = 2
      ImageIndex = 2
    end
  end
  object JvFooter1: TJvFooter
    Left = 0
    Top = 255
    Width = 437
    Height = 37
    Align = alBottom
    DesignSize = (
      437
      37)
    object btnOK: TJvFooterBtn
      Left = 277
      Top = 7
      Width = 74
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ButtonIndex = 0
      SpaceInterval = 6
    end
    object btnCancel: TJvFooterBtn
      Left = 355
      Top = 7
      Width = 74
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ButtonIndex = 1
      SpaceInterval = 6
    end
  end
end
