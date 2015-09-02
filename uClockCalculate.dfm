object fmClockCalculate: TfmClockCalculate
  Left = 141
  Top = 146
  Width = 1008
  Height = 685
  Caption = #1056#1072#1089#1095#1105#1090' '#1091#1095#1077#1073#1085#1099#1093' '#1095#1072#1089#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ScreenSnap = True
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object JvNetscapeSplitter1: TJvNetscapeSplitter
    Left = 313
    Top = 0
    Height = 624
    Align = alLeft
    Maximized = False
    Minimized = False
    ButtonCursor = crDefault
  end
  object jvpltv: TJvPageListTreeView
    Left = 0
    Top = 0
    Width = 313
    Height = 624
    AutoExpand = False
    ShowButtons = True
    ShowLines = True
    PageDefault = 0
    PageList = jvplCalcClock
    Align = alLeft
    Indent = 19
    TabOrder = 0
    OnChange = jvpltvChange
    Items.Data = {
      03000000320000000000000000000000FFFFFFFFFFFFFFFF0000000002000000
      19C3E8ECEDE0E7E8F7E5F1EAE0FF2028372DE820EBE5F2EAE029220000000000
      000000000000FFFFFFFFFFFFFFFF000000000400000009C8EDE42E20F7E0F1FB
      2A0000000000000000000000FFFFFFFFFFFFFFFF050000000200000011D1E5EA
      F6E8FF20F4EEF0F2E5EFE8E0EDEE270000000000000000000000FFFFFFFFFFFF
      FFFF06000000000000000ECCF3E720E8EDF1F2F0F3ECE5EDF226000000000000
      0000000000FFFFFFFFFFFFFFFF06000000000000000DCCF3E7E8F6E8F0EEE2E0
      EDE8E52B0000000000000000000000FFFFFFFFFFFFFFFF050000000000000012
      D1E5EAF6E8FF20EEF0EAE5F1F2F0EEE2FBF5280000000000000000000000FFFF
      FFFFFFFFFFFF05000000000000000FD1E5EAF6E8FF20EDE0F020E8EDF1F22E00
      00000000000000000000FFFFFFFFFFFFFFFF050000000000000015D1E5EAF6E8
      FF20F1EEEBFCEDEEE3EE20EFE5EDE8FF260000000000000000000000FFFFFFFF
      FFFFFFFF00000000010000000DC3F0F3EFEEE2FBE520F7E0F1FB350000000000
      000000000000FFFFFFFFFFFFFFFF00000000000000001CC8EDF1F2F02E20F4EE
      EBFCEAEB20E820F5EEF0EEE2EEE520EEF2E42E320000000000000000000000FF
      FFFFFFFFFFFFFF000000000000000019C3E8ECEDE0E7E8F7E5F1EAE0FF202835
      2DE820EBE5F2EAE029410000000000000000000000FFFFFFFFFFFFFFFF000000
      000000000028C3E8ECEDE0E7E8F7E5F1EAE0FF2028EEF2E4E5EBE5EDE8E520EE
      E4E0F0B8EDFBF520E4E5F2E5E929}
    Items.Links = {
      0C00000000000000000000000500000006000000060000000500000005000000
      0500000000000000000000000000000000000000}
  end
  object jvplCalcClock: TJvPageList
    Left = 323
    Top = 0
    Width = 677
    Height = 624
    ActivePage = jvspGroupCalc
    PropagateEnable = False
    Align = alClient
    ParentBackground = True
    object jvspFirst: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspFirst'
      object CoolBar1: TCoolBar
        Left = 0
        Top = 0
        Width = 677
        Height = 38
        AutoSize = True
        Bands = <
          item
            Control = tbMain
            ImageIndex = -1
            MinHeight = 34
            Width = 673
          end>
        object tbMain: TToolBar
          Left = 9
          Top = 0
          Width = 660
          Height = 34
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 26
          ButtonWidth = 211
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          Flat = True
          Images = il
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          object tbNewCalcPacket: TToolButton
            Left = 0
            Top = 0
            Action = aNewCalcPack
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton14: TToolButton
            Left = 211
            Top = 0
            Action = aCPDel
          end
          object ToolButton25: TToolButton
            Left = 422
            Top = 0
            Action = aEditPrintForm
          end
        end
      end
      object pFrame: TPanel
        Left = 0
        Top = 38
        Width = 677
        Height = 586
        Align = alClient
        TabOrder = 1
        object JvDBGrid4: TJvDBGrid
          Left = 1
          Top = 1
          Width = 675
          Height = 584
          Align = alClient
          DataSource = jvdsPackage
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 24
          TitleRowHeight = 24
          Columns = <
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 658
              Visible = True
            end>
        end
      end
    end
    object jvspPackage: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspPackage'
      object pHeader: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 0
        object JvSpeedButton1: TJvSpeedButton
          Left = 475
          Top = 5
          Width = 197
          Height = 31
          Action = aPackageNameChange
          Align = alRight
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF004C32170D6C5955E6BE895CFFF2AC5FFEF5B266FEF7BB6EFDFDC47AFCFFCB
            81FCFFD089FBFFD590FAFFDD9CFAFFE6ACF9FFEFBCF8FFF8CDF0FF00FF000000
            00034C2F13D7866B62FF525866FFC08655FFECA456FFECA95DFFEFB064FFF5B8
            6FFFFDC47AFFFFCB82FFFFD189FFFFD691FFFFDD9DFFFFE7AEF9FF00FF004B2A
            0DC6D37B2CFFAA7E67FFDCF0FFFFA7B4CFFFC4854FFFECA151FFECA557FFECA9
            5EFFEEB065FFF3B86EFFFCC37AFFFFCC83FFFFD18AFFFFD792FA3D20077FC067
            1BFFFE8D29FFB07E5FFFC5E8FFFF72CBFFFF5595D9FFE49345FFEC9E4BFFECA1
            52FFECA558FFECAA5EFFEDAF66FFF2B86EFFFAC37AFFFFCC83FA482305BDFE81
            19FFFE851FFFB77A50FF3BD1FFFF05B3FFFF1498FEFF8B726CFFF69B42FFEE99
            46FFEC9E4CFFECA252FFECA658FFECAB5FFFEDB067FFFDC174FB391A02C5FE7A
            0EFFFE7D14FFF07D20FF28CFF7FF2CC4FFFF36BBFFFF3F8ED5FFFE9637FFFE9B
            3EFFF69B43FFEF9B48FFEC9F4CFFECA253FFEFA95AFFFEB867FC0000003E4D23
            02C4E36A09F1FE7A0FFF5EA3B8FF2DD5FFFF14C2FFFF119DFDFFB96F3EFFFE92
            31FFFE9738FFFE9C3FFFF69B43FFF19D48FFFCA853FFFEAF5AFDFF00FF000000
            002405020076301601A841342FCE14E1FDFF19C8FFFF30BCFFFF4C80B1FEEB80
            23FFFE8F2CFFFE9332FFFE9739FFFE9C3FFFFEA146FFFEA64DFEFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0039C6EAEF36DBFFFF28CEFFFF23A8F6FF1009
            1186261405983B2009AB4F2C0DBE623913D1C5762CEFFE9D40FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00278FD17310EDFEFF08D0FFFF1FB9FFFF326C
            ACB1FF00FF00FF00FF00FF00FF00000000090A05016056321198FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000062CA0430E0F5FC34E0FFFF34D5FFFF32A7
            E7FC00024D06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0034B3E3B31FF3FFFF09DCFFFF12B8
            FEFF21448674FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00006AD41920F5FCFF28E5FFFF36D8
            FFFF399DD7F0FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0039CCEFDE30F2FFFF1AE6
            FFFF17BFFCFF07125C39FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00138FE54910FBFEFF69D1
            E1FF87BEDBFF1A3C8267FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0041B8EBDF769D
            CAEC406EB177FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -13
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          Layout = blGlyphLeft
          Margin = 0
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 5
          Top = 5
          Width = 470
          Height = 31
          Align = alClient
        end
        object jvhtlcpHeader: TJvHTLabel
          Left = 5
          Top = 5
          Width = 0
          Height = 21
          Align = alClient
          Transparent = False
        end
      end
    end
    object jvspIndividualParent: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspIndividualParent'
      object jvhtlCIPHeader: TJvHTLabel
        Left = 0
        Top = 0
        Width = 677
        Height = 21
        Align = alTop
        Caption = ' '#1056#1072#1089#1095#1105#1090#1099' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1093' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1087#1072#1082#1077#1090#1072': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 21
        Width = 677
        Height = 34
        AutoSize = True
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 30
            Width = 673
          end>
        object ToolBar1: TToolBar
          Left = 9
          Top = 0
          Width = 660
          Height = 30
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 26
          ButtonWidth = 269
          EdgeBorders = []
          Flat = True
          Images = il
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Action = aCalcIndividualNew
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton7: TToolButton
            Left = 269
            Top = 0
            Action = aCIDel
            Wrap = True
          end
        end
      end
      object pCIFrame: TPanel
        Left = 0
        Top = 55
        Width = 677
        Height = 569
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object JvDBGrid2: TJvDBGrid
          Left = 0
          Top = 0
          Width = 677
          Height = 569
          Align = alClient
          DataSource = jvdsCI
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 24
          TitleRowHeight = 24
          Columns = <
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 660
              Visible = True
            end>
        end
      end
    end
    object jvspIndCalc: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspIndCalc'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 648
          Top = 0
          Width = 25
          Height = 25
          Action = aCINameChange
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF004C32170D6C5955E6BE895CFFF2AC5FFEF5B266FEF7BB6EFDFDC47AFCFFCB
            81FCFFD089FBFFD590FAFFDD9CFAFFE6ACF9FFEFBCF8FFF8CDF0FF00FF000000
            00034C2F13D7866B62FF525866FFC08655FFECA456FFECA95DFFEFB064FFF5B8
            6FFFFDC47AFFFFCB82FFFFD189FFFFD691FFFFDD9DFFFFE7AEF9FF00FF004B2A
            0DC6D37B2CFFAA7E67FFDCF0FFFFA7B4CFFFC4854FFFECA151FFECA557FFECA9
            5EFFEEB065FFF3B86EFFFCC37AFFFFCC83FFFFD18AFFFFD792FA3D20077FC067
            1BFFFE8D29FFB07E5FFFC5E8FFFF72CBFFFF5595D9FFE49345FFEC9E4BFFECA1
            52FFECA558FFECAA5EFFEDAF66FFF2B86EFFFAC37AFFFFCC83FA482305BDFE81
            19FFFE851FFFB77A50FF3BD1FFFF05B3FFFF1498FEFF8B726CFFF69B42FFEE99
            46FFEC9E4CFFECA252FFECA658FFECAB5FFFEDB067FFFDC174FB391A02C5FE7A
            0EFFFE7D14FFF07D20FF28CFF7FF2CC4FFFF36BBFFFF3F8ED5FFFE9637FFFE9B
            3EFFF69B43FFEF9B48FFEC9F4CFFECA253FFEFA95AFFFEB867FC0000003E4D23
            02C4E36A09F1FE7A0FFF5EA3B8FF2DD5FFFF14C2FFFF119DFDFFB96F3EFFFE92
            31FFFE9738FFFE9C3FFFF69B43FFF19D48FFFCA853FFFEAF5AFDFF00FF000000
            002405020076301601A841342FCE14E1FDFF19C8FFFF30BCFFFF4C80B1FEEB80
            23FFFE8F2CFFFE9332FFFE9739FFFE9C3FFFFEA146FFFEA64DFEFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0039C6EAEF36DBFFFF28CEFFFF23A8F6FF1009
            1186261405983B2009AB4F2C0DBE623913D1C5762CEFFE9D40FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00278FD17310EDFEFF08D0FFFF1FB9FFFF326C
            ACB1FF00FF00FF00FF00FF00FF00000000090A05016056321198FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000062CA0430E0F5FC34E0FFFF34D5FFFF32A7
            E7FC00024D06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0034B3E3B31FF3FFFF09DCFFFF12B8
            FEFF21448674FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00006AD41920F5FCFF28E5FFFF36D8
            FFFF399DD7F0FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0039CCEFDE30F2FFFF1AE6
            FFFF17BFFCFF07125C39FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00138FE54910FBFEFF69D1
            E1FF87BEDBFF1A3C8267FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0041B8EBDF769D
            CAEC406EB177FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object jvhtlicHeader: TJvHTLabel
          Left = 0
          Top = 0
          Width = 91
          Height = 21
          Align = alLeft
          Caption = 'jvhtlicHeader'
          Layout = tlCenter
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 54
        Width = 677
        Height = 134
        Align = alTop
        Caption = #1050#1086#1083'-'#1074#1086' '#1091#1095'-'#1089#1103' '#1087#1086' '#1082#1083#1072#1089#1089#1072#1084
        TabOrder = 1
        object nxdbgIClassDetail: TNXDBGrid
          Left = 2
          Top = 22
          Width = 673
          Height = 110
          Align = alClient
          Transformed = True
          DataSource = jvdsICClassDetail
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASS_NUMBER'
              ReadOnly = True
              Title.Caption = #1050#1083#1072#1089#1089
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEGORY'
              ReadOnly = True
              Title.Caption = #1050#1072#1090'.'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTY_STUDENT'
              Title.Caption = #1050'-'#1086' '#1091#1095'.'
              Width = 150
              Visible = True
            end>
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 188
        Width = 677
        Height = 436
        Align = alClient
        Caption = #1055#1088#1077#1076#1084#1077#1090#1099
        TabOrder = 2
        object JvDBUltimGrid1: TJvDBUltimGrid
          Left = 2
          Top = 51
          Width = 673
          Height = 383
          Align = alClient
          DataSource = jvdsCIS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 24
          TitleRowHeight = 24
          Columns = <
            item
              Expanded = False
              FieldName = 'NAME_SUBJECT'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
              Width = 342
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME_DEPARTMENT'
              Title.Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077
              Width = 295
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IS_CONCERTMASTER'
              Title.Caption = #1050
              Width = 17
              Visible = True
            end>
        end
        object ToolBar2: TToolBar
          Left = 2
          Top = 22
          Width = 673
          Height = 29
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 26
          ButtonWidth = 173
          EdgeBorders = []
          Images = il
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 1
          object ToolButton2: TToolButton
            Left = 0
            Top = 2
            Action = aISubjectNew
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton4: TToolButton
            Left = 173
            Top = 2
            Action = aISubjectDel
          end
          object ToolButton18: TToolButton
            Left = 346
            Top = 2
            Action = aCIFillFromDepartment
          end
        end
      end
      object CoolBar4: TCoolBar
        Left = 0
        Top = 25
        Width = 677
        Height = 29
        AutoSize = True
        Bands = <
          item
            Control = ToolBar4
            ImageIndex = -1
            Width = 673
          end>
        object ToolBar4: TToolBar
          Left = 9
          Top = 0
          Width = 660
          Height = 25
          AutoSize = True
          ButtonHeight = 23
          ButtonWidth = 25
          Caption = 'ToolBar4'
          EdgeBorders = []
          Images = il
          List = True
          TabOrder = 0
          object ToolButton8: TToolButton
            Left = 0
            Top = 2
            Action = aCIReCalculate
          end
          object ToolButton3: TToolButton
            Left = 25
            Top = 2
            Action = aCIHeaderChange
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton9: TToolButton
            Left = 50
            Top = 2
            Action = aCIFooterChange
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton15: TToolButton
            Left = 75
            Top = 2
            Action = aCIPrint
          end
          object ToolButton19: TToolButton
            Left = 100
            Top = 2
            Action = aCIPrintWT0
          end
          object ToolButton21: TToolButton
            Left = 125
            Top = 2
            Action = aCIWordExport
          end
          object ToolButton22: TToolButton
            Left = 150
            Top = 2
            Action = aCIWordExportWT0
          end
        end
      end
    end
    object jvspIndCalcSubj: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspIndCalcSubj'
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 25
        Width = 677
        Height = 599
        Align = alClient
        DataSource = jvdsCISDetail
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 24
        TitleRowHeight = 24
        Columns = <
          item
            Expanded = False
            FieldName = 'CLASS_NUMBER'
            ReadOnly = True
            Title.Caption = #1050#1083#1072#1089#1089
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLOCK_CURRICULUM'
            ReadOnly = True
            Title.Caption = #1063#1072#1089#1099' '#1087#1086' '#1091#1095' '#1087#1083#1072#1085#1091
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY_FACT'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1091#1095'. '#1087#1086' '#1092#1072#1082#1090#1091
            Width = 281
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object jvhtlisHeader: TJvHTLabel
          Left = 0
          Top = 0
          Width = 91
          Height = 21
          Align = alLeft
          Caption = 'jvhtlisHeader'
          Layout = tlCenter
        end
      end
    end
    object jvspGroupParent: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspGroupParent'
      object jvhtlCGPHeader: TJvHTLabel
        Left = 0
        Top = 0
        Width = 677
        Height = 21
        Align = alTop
        Caption = ' '#1056#1072#1089#1095#1105#1090#1099' '#1075#1088#1091#1087#1087#1086#1074#1099#1093' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1087#1072#1082#1077#1090#1072': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object cbCGParent: TCoolBar
        Left = 0
        Top = 21
        Width = 677
        Height = 34
        AutoSize = True
        Bands = <
          item
            Control = tbCGParent
            ImageIndex = -1
            MinHeight = 30
            Width = 673
          end>
        object tbCGParent: TToolBar
          Left = 9
          Top = 0
          Width = 660
          Height = 30
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 26
          ButtonWidth = 304
          EdgeBorders = []
          Flat = True
          Images = il
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 0
          object tbCGPCalcGroupAdd: TToolButton
            Left = 0
            Top = 0
            Action = aCalcGroupNew
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton13: TToolButton
            Left = 304
            Top = 0
            Action = aCGDel
          end
        end
      end
      object pCGFrame: TPanel
        Left = 0
        Top = 55
        Width = 677
        Height = 569
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object jvdbgCGP: TJvDBGrid
          Left = 0
          Top = 0
          Width = 677
          Height = 569
          Align = alClient
          DataSource = jvdsCG
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 24
          TitleRowHeight = 24
          Columns = <
            item
              Expanded = False
              FieldName = 'NAME'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 660
              Visible = True
            end>
        end
      end
    end
    object jvspGroupCalc: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspGroupCalc'
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object SpeedButton2: TSpeedButton
          Left = 648
          Top = 0
          Width = 33
          Height = 25
          Action = aCGNameChange
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF004C32170D6C5955E6BE895CFFF2AC5FFEF5B266FEF7BB6EFDFDC47AFCFFCB
            81FCFFD089FBFFD590FAFFDD9CFAFFE6ACF9FFEFBCF8FFF8CDF0FF00FF000000
            00034C2F13D7866B62FF525866FFC08655FFECA456FFECA95DFFEFB064FFF5B8
            6FFFFDC47AFFFFCB82FFFFD189FFFFD691FFFFDD9DFFFFE7AEF9FF00FF004B2A
            0DC6D37B2CFFAA7E67FFDCF0FFFFA7B4CFFFC4854FFFECA151FFECA557FFECA9
            5EFFEEB065FFF3B86EFFFCC37AFFFFCC83FFFFD18AFFFFD792FA3D20077FC067
            1BFFFE8D29FFB07E5FFFC5E8FFFF72CBFFFF5595D9FFE49345FFEC9E4BFFECA1
            52FFECA558FFECAA5EFFEDAF66FFF2B86EFFFAC37AFFFFCC83FA482305BDFE81
            19FFFE851FFFB77A50FF3BD1FFFF05B3FFFF1498FEFF8B726CFFF69B42FFEE99
            46FFEC9E4CFFECA252FFECA658FFECAB5FFFEDB067FFFDC174FB391A02C5FE7A
            0EFFFE7D14FFF07D20FF28CFF7FF2CC4FFFF36BBFFFF3F8ED5FFFE9637FFFE9B
            3EFFF69B43FFEF9B48FFEC9F4CFFECA253FFEFA95AFFFEB867FC0000003E4D23
            02C4E36A09F1FE7A0FFF5EA3B8FF2DD5FFFF14C2FFFF119DFDFFB96F3EFFFE92
            31FFFE9738FFFE9C3FFFF69B43FFF19D48FFFCA853FFFEAF5AFDFF00FF000000
            002405020076301601A841342FCE14E1FDFF19C8FFFF30BCFFFF4C80B1FEEB80
            23FFFE8F2CFFFE9332FFFE9739FFFE9C3FFFFEA146FFFEA64DFEFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0039C6EAEF36DBFFFF28CEFFFF23A8F6FF1009
            1186261405983B2009AB4F2C0DBE623913D1C5762CEFFE9D40FFFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00278FD17310EDFEFF08D0FFFF1FB9FFFF326C
            ACB1FF00FF00FF00FF00FF00FF00000000090A05016056321198FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000062CA0430E0F5FC34E0FFFF34D5FFFF32A7
            E7FC00024D06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0034B3E3B31FF3FFFF09DCFFFF12B8
            FEFF21448674FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00006AD41920F5FCFF28E5FFFF36D8
            FFFF399DD7F0FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0039CCEFDE30F2FFFF1AE6
            FFFF17BFFCFF07125C39FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00138FE54910FBFEFF69D1
            E1FF87BEDBFF1A3C8267FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0041B8EBDF769D
            CAEC406EB177FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object jvhtlgcHeader: TJvHTLabel
          Left = 0
          Top = 0
          Width = 91
          Height = 25
          Align = alLeft
          Caption = 'jvhtlicHeader'
          Layout = tlCenter
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 54
        Width = 677
        Height = 129
        Align = alTop
        Caption = #1050#1086#1083'-'#1074#1086' '#1091#1095#1072#1097#1080#1093#1089#1103' '#1087#1086' '#1082#1083#1072#1089#1089#1072#1084
        TabOrder = 1
        object nxdbgGClassDetail: TNXDBGrid
          Left = 2
          Top = 22
          Width = 673
          Height = 105
          Align = alClient
          Transformed = True
          DataSource = jvdsICClassDetail
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CLASS_NUMBER'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #1050#1083#1072#1089#1089
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEGORY'
              ReadOnly = True
              Title.Caption = #1050#1072#1090'-'#1103
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTY_STUDENT'
              Title.Caption = #1050'-'#1086' '#1091#1095'.'
              Width = 150
              Visible = True
            end>
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 183
        Width = 677
        Height = 441
        Align = alClient
        Caption = #1055#1088#1077#1076#1084#1077#1090#1099
        TabOrder = 2
        object JvDBUltimGrid2: TJvDBUltimGrid
          Left = 41
          Top = 54
          Width = 634
          Height = 385
          Align = alClient
          DataSource = jvdsCIS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 24
          TitleRowHeight = 24
          Columns = <
            item
              Expanded = False
              FieldName = 'NAME_SUBJECT'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
              Width = 317
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NAME_GROUPING'
              Title.Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1075#1088#1091#1087#1087
              Width = 261
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IS_CONCERTMASTER'
              Title.Caption = #1050
              Width = 37
              Visible = True
            end>
        end
        object ToolBar3: TToolBar
          Left = 2
          Top = 22
          Width = 673
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 26
          ButtonWidth = 214
          EdgeBorders = []
          Images = il
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 1
          object ToolButton5: TToolButton
            Left = 0
            Top = 2
            Action = aGSubjectNew
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton6: TToolButton
            Left = 214
            Top = 2
            Action = aGSubjectDel
          end
          object ToolButton17: TToolButton
            Left = 428
            Top = 2
            Action = aCGFillFromGrouping
          end
        end
        object Panel1: TPanel
          Left = 2
          Top = 54
          Width = 39
          Height = 385
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object SpeedButton3: TSpeedButton
            Left = 8
            Top = 104
            Width = 23
            Height = 46
            Caption = '^'
          end
          object SpeedButton4: TSpeedButton
            Left = 8
            Top = 160
            Width = 23
            Height = 49
          end
        end
      end
      object CoolBar3: TCoolBar
        Left = 0
        Top = 25
        Width = 677
        Height = 29
        AutoSize = True
        Bands = <
          item
            Control = ToolBar5
            ImageIndex = -1
            Width = 673
          end>
        object ToolBar5: TToolBar
          Left = 9
          Top = 0
          Width = 660
          Height = 25
          AutoSize = True
          ButtonHeight = 23
          ButtonWidth = 25
          Caption = 'ToolBar4'
          EdgeBorders = []
          Images = il
          List = True
          TabOrder = 0
          object ToolButton10: TToolButton
            Left = 0
            Top = 2
            Action = aCGReCalculate
          end
          object ToolButton11: TToolButton
            Left = 25
            Top = 2
            Action = aCGHeaderChange
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton12: TToolButton
            Left = 50
            Top = 2
            Action = aCGFooterChange
            ParentShowHint = False
            ShowHint = True
          end
          object ToolButton16: TToolButton
            Left = 75
            Top = 2
            Action = aCGPrint
          end
          object ToolButton20: TToolButton
            Left = 100
            Top = 2
            Action = aCGPrintWT0
          end
          object ToolButton23: TToolButton
            Left = 125
            Top = 2
            Action = aCGWordExport
          end
          object ToolButton24: TToolButton
            Left = 150
            Top = 2
            Action = aCGWordExportWT0
          end
        end
      end
    end
    object jvspGroupSubj: TJvStandardPage
      Left = 0
      Top = 0
      Width = 677
      Height = 624
      Caption = 'jvspGroupSubj'
      object JvDBGrid3: TJvDBGrid
        Left = 0
        Top = 49
        Width = 677
        Height = 575
        Align = alClient
        DataSource = jvdsCISDetail
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 24
        TitleRowHeight = 24
        Columns = <
          item
            Expanded = False
            FieldName = 'CLASS_NUMBER'
            ReadOnly = True
            Title.Caption = #1050#1083#1072#1089#1089
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLOCK_CURR'
            ReadOnly = True
            Title.Caption = #1063#1072#1089#1099' '#1087#1086' '#1091#1095' '#1087#1083#1072#1085#1091
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTY_FACT'
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1091#1095'. '#1087#1086' '#1092#1072#1082#1090#1091
            Width = 281
            Visible = True
          end>
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 677
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object jvhtlgsHeader: TJvHTLabel
          Left = 0
          Top = 0
          Width = 91
          Height = 21
          Align = alLeft
          Caption = 'jvhtlisHeader'
          Layout = tlCenter
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 25
        Width = 677
        Height = 24
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
  end
  object sbInfo: TStatusBar
    Left = 0
    Top = 624
    Width = 1000
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <>
    SimplePanel = True
    UseSystemFont = False
  end
  object frxrIndividual: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39338.492116608800000000
    ReportOptions.LastChange = 39704.366030995370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 153
    Top = 273
    Datasets = <
      item
        DataSet = frxdbdsHeader
        DataSetName = 'frxdbdsHeader'
      end
      item
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 2.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rTitle: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 75.590600000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 94.488250000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#176#1057#1027#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 241.889920000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 370.393940000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 498.897960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 563.149970000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 627.401980000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 691.653990000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1107#1057#8225#1056#176#1057#8240#1056#1105#1057#8230#1057#1027#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 910.866730000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_0"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_0"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 177.637910000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_1"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_1"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 241.889920000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_2"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_2"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 306.141930000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_3"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_3"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 370.393940000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_4"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_0"> = 4, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 434.645950000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_5"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_5"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 498.897960000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_6"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_6"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 563.149970000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_7"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_7"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 627.401980000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_8"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_8"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 691.653990000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 801.260360000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 910.866730000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 56.692949999999990000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#167#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 113.385900000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 113.385900000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 177.637910000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 177.637910000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 241.889920000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 241.889920000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 306.141930000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 306.141930000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 370.393940000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 370.393940000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 434.645950000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 434.645950000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 498.897960000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 498.897960000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 563.149970000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 563.149970000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 627.401980000000000000
          Top = 56.692949999999990000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 627.401980000000000000
          Top = 75.590600000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 691.653990000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 691.653990000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 748.346940000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 801.260360000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 801.260360000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 857.953310000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 910.866730000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 910.866730000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 967.559680000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
        RowCount = 0
        object Memo66: TfrxMemoView
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DataField = 'NAME'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxdbdsMaster."NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_0'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_0'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_1'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_1'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 241.889920000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 370.393940000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 498.897960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 563.149970000000100000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 627.401980000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 691.653990000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 801.260360000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 910.866730000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 910.866730000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 748.346940000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_UNALL_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 857.953310000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_UNALL_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 967.559680000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_UNALL_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object Memo94: TfrxMemoView
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 113.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_0'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 113.385900000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_0'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 177.637910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_1'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 177.637910000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_1'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 241.889920000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 306.141930000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 370.393940000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 434.645950000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 498.897960000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 498.897960000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 563.149970000000100000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 627.401980000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 627.401980000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 691.653990000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 801.260360000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 910.866730000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 910.866730000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 748.346940000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_UNALL_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 857.953310000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_UNALL_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 967.559680000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_UNALL_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 430.866420000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rSummary: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          DataField = 'FOOTER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object al: TActionList
    Images = il
    Left = 17
    Top = 17
    object aNewCalcPack: TAction
      Category = 'CalcPack'
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1089#1095#1105#1090#1085#1099#1081' '#1087#1072#1082#1077#1090
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1088#1072#1089#1095#1105#1090#1085#1099#1081' '#1087#1072#1082#1077#1090
      ImageIndex = 0
      OnExecute = aNewCalcPackExecute
    end
    object aPrintCalcPack: TAction
      Category = 'CalcPack'
      Caption = 'aPrintCalcPack'
    end
    object aDelCalcPack: TAction
      Category = 'CalcPack'
      Caption = 'aDelCalcPack'
    end
    object aPackageNameChange: TAction
      Category = 'CalcPack'
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      ImageIndex = 1
      OnExecute = aPackageNameChangeExecute
    end
    object aCalcIndividualNew: TAction
      Category = 'CalcIndividual'
      Caption = #1053#1086#1074#1099#1081' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1089#1095#1105#1090
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1089#1095#1105#1090
      ImageIndex = 2
      OnExecute = aCalcIndividualNewExecute
    end
    object aCalcGroupNew: TAction
      Category = 'CalcGroup'
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1089#1095#1105#1090' '#1075#1088#1091#1087#1087#1086#1074#1099#1093' '#1087#1088#1077#1076#1084#1077#1090#1086#1074
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1088#1072#1089#1095#1105#1090' '#1075#1088#1091#1087#1087#1086#1074#1099#1093' '#1087#1088#1077#1076#1084#1077#1090#1086#1074
      ImageIndex = 2
      OnExecute = aCalcGroupNewExecute
    end
    object aISubjectNew: TAction
      Category = 'CalcIndividual'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1087#1088#1077#1076#1084#1077#1090
      ImageIndex = 2
      OnExecute = aISubjectNewExecute
    end
    object aISubjectEdit: TAction
      Category = 'CalcIndividual'
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1084#1077#1090
      ImageIndex = 1
    end
    object aISubjectDel: TAction
      Category = 'CalcIndividual'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1088#1077#1076#1084#1077#1090
      ImageIndex = 3
      OnExecute = aISubjectDelExecute
    end
    object aICalcRefresh: TAction
      Category = 'CalcIndividual'
      Caption = 'aICalcRefresh'
      OnExecute = aICalcRefreshExecute
    end
    object aCINameChange: TAction
      Category = 'CalcIndividual'
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1086#1075#1086' '#1088#1072#1089#1095#1105#1090#1072
      ImageIndex = 1
      OnExecute = aCINameChangeExecute
    end
    object aCISRefresh: TAction
      Category = 'CalcIndividual'
      OnExecute = aCISRefreshExecute
    end
    object aCIReCalculate: TAction
      Category = 'CalcIndividual'
      Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1105#1090
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1080#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1089#1095#1105#1090
      ImageIndex = 4
      OnExecute = aCIReCalculateExecute
    end
    object aCGDel: TAction
      Category = 'CalcGroup'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1075#1088#1091#1087#1087#1086#1074#1086#1081' '#1088#1072#1089#1095#1105#1090
      ImageIndex = 3
      OnExecute = aCGDelExecute
    end
    object aGSubjectNew: TAction
      Category = 'CalcGroup'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1075#1088#1091#1087#1087#1086#1074#1086#1081' '#1087#1088#1077#1076#1084#1077#1090
      ImageIndex = 2
      OnExecute = aGSubjectNewExecute
    end
    object aGSubjectDel: TAction
      Category = 'CalcGroup'
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1084#1077#1090
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1087#1088#1077#1076#1084#1077#1090
      ImageIndex = 3
      OnExecute = aGSubjectDelExecute
      OnUpdate = aGSubjectDelUpdate
    end
    object aCGReCalculate: TAction
      Category = 'CalcGroup'
      Caption = #1055#1077#1088#1077#1088#1072#1089#1095#1105#1090
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1075#1088#1091#1087#1087#1086#1074#1086#1081' '#1088#1072#1089#1095#1105#1090
      ImageIndex = 4
      OnExecute = aCGReCalculateExecute
    end
    object aCGNameChange: TAction
      Category = 'CalcGroup'
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1086#1074#1086#1075#1086' '#1088#1072#1089#1095#1105#1090#1072
      ImageIndex = 1
      OnExecute = aCGNameChangeExecute
    end
    object aCGHeaderChange: TAction
      Category = 'CalcGroup'
      Caption = 'aCGHeaderChange'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1077#1088#1093#1085#1080#1081' '#1082#1086#1083#1086#1085#1090#1080#1090#1091#1083
      ImageIndex = 5
      OnExecute = aCGHeaderChangeExecute
    end
    object aCIHeaderChange: TAction
      Category = 'CalcIndividual'
      Caption = #1042#1077#1088#1093#1085#1080#1081' '#1082#1086#1083#1086#1085#1090#1080#1090#1091#1083
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'/'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' '#1074#1077#1088#1093#1085#1077#1075#1086' '#1082#1086#1083#1086#1085#1090#1080#1090#1091#1083#1072
      ImageIndex = 5
      OnExecute = aCIHeaderChangeExecute
    end
    object aCIFooterChange: TAction
      Category = 'CalcIndividual'
      Caption = #1053#1080#1078#1085#1080#1081' '#1082#1086#1083#1086#1085#1090#1080#1090#1091#1083
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088'/'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' '#1085#1080#1078#1085#1077#1075#1086' '#1082#1086#1083#1086#1085#1090#1080#1090#1091#1083#1072
      ImageIndex = 6
      OnExecute = aCIFooterChangeExecute
    end
    object aCGFooterChange: TAction
      Category = 'CalcGroup'
      Caption = 'aCGFooterChange'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1080#1078#1085#1080#1081' '#1082#1086#1083#1086#1085#1090#1080#1090#1091#1083
      ImageIndex = 6
      OnExecute = aCGFooterChangeExecute
    end
    object aCIPRefresh: TAction
      Category = 'CalcIndividual'
      Caption = 'aCIPRefresh'
      OnExecute = aCIPRefreshExecute
    end
    object aCIDel: TAction
      Category = 'CalcIndividual'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1080#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
      ImageIndex = 3
      OnExecute = aCIDelExecute
      OnUpdate = aCIDelUpdate
    end
    object aCGPRefresh: TAction
      Category = 'CalcGroup'
      Caption = 'aCGPRefresh'
      OnExecute = aCGPRefreshExecute
    end
    object aCGRefresh: TAction
      Category = 'CalcGroup'
      Caption = 'aCGRefresh'
      OnExecute = aCGRefreshExecute
    end
    object aCPDel: TAction
      Category = 'CalcPack'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1082#1077#1090' '#1088#1072#1089#1095#1105#1090#1072
      ImageIndex = 3
      OnExecute = aCPDelExecute
      OnUpdate = aCPDelUpdate
    end
    object aFRefresh: TAction
      Category = 'CalcPack'
      Caption = 'aFRefresh'
      OnExecute = aFRefreshExecute
    end
    object aCGSRefresh: TAction
      Category = 'CalcGroup'
      Caption = 'aCGSRefresh'
      OnExecute = aCGSRefreshExecute
    end
    object aCIPrint: TAction
      Category = 'CalcIndividual'
      Hint = #1055#1077#1095#1072#1090#1100' '#1089' '#1085#1091#1083#1077#1074#1099#1084' '#1082#1083#1072#1089#1089#1086#1084
      ImageIndex = 7
      OnExecute = aCIPrintExecute
    end
    object aCGPrint: TAction
      Category = 'CalcGroup'
      Hint = #1055#1077#1095#1072#1090#1100' '#1089' '#1085#1091#1083#1077#1074#1099#1084' '#1082#1083#1072#1089#1089#1086#1084
      ImageIndex = 7
      OnExecute = aCGPrintExecute
    end
    object aCGFillFromGrouping: TAction
      Category = 'CalcGroup'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077' '#1087#1088#1077#1076#1084#1077#1090#1099
      ImageIndex = 0
      OnExecute = aCGFillFromGroupingExecute
    end
    object aCIFillFromDepartment: TAction
      Category = 'CalcIndividual'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077
      ImageIndex = 0
      OnExecute = aCIFillFromDepartmentExecute
    end
    object aCIPrintWT0: TAction
      Category = 'CalcIndividual'
      Hint = #1055#1077#1095#1072#1090#1100' '#1073#1077#1079' '#1085#1091#1083#1077#1074#1086#1075#1086' '#1082#1083#1072#1089#1089#1072
      ImageIndex = 7
      OnExecute = aCIPrintWT0Execute
    end
    object aCGPrintWT0: TAction
      Category = 'CalcGroup'
      Hint = #1055#1077#1095#1072#1090#1100' '#1073#1077#1079' '#1085#1091#1083#1077#1074#1086#1075#1086' '#1082#1083#1072#1089#1089#1072
      ImageIndex = 7
      OnExecute = aCGPrintWT0Execute
    end
    object aCIWordExport: TAction
      Category = 'CalcIndividual'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Word '#1089' '#1085#1091#1083#1077#1074#1099#1084' '#1082#1083#1072#1089#1089#1086#1084
      ImageIndex = 8
      OnExecute = aCIWordExportExecute
    end
    object aCIWordExportWT0: TAction
      Category = 'CalcIndividual'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Word '#1073#1077#1079' '#1085#1091#1083#1077#1074#1086#1075#1086' '#1082#1083#1072#1089#1089#1072
      ImageIndex = 8
      OnExecute = aCIWordExportWT0Execute
    end
    object aCGWordExport: TAction
      Category = 'CalcGroup'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Word '#1089' '#1085#1091#1083#1077#1074#1099#1084' '#1082#1083#1072#1089#1089#1086#1084
      ImageIndex = 8
      OnExecute = aCGWordExportExecute
    end
    object aCGWordExportWT0: TAction
      Category = 'CalcGroup'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Word '#1073#1077#1079' '#1085#1091#1083#1077#1074#1086#1075#1086' '#1082#1083#1072#1089#1089#1072
      ImageIndex = 8
      OnExecute = aCGWordExportWT0Execute
    end
    object aCIPrintFormEdit: TAction
      Category = 'CalcIndividual'
      Caption = #1056#1077#1076'. '#1087#1077#1095#1072#1090#1085#1091#1102' '#1092#1086#1088#1084#1091
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1077#1095#1072#1090#1085#1091#1102' '#1092#1086#1088#1084#1091
      ImageIndex = 1
    end
    object aCIPrintFormEditWT0: TAction
      Category = 'CalcIndividual'
      Caption = #1056#1077#1076'. '#1087#1077#1095#1072#1090#1085#1091#1102' '#1092#1086#1088#1084#1091' ('#1073#1077#1079' 0 '#1082#1083'.)'
      ImageIndex = 1
    end
    object aEditPrintForm: TAction
      Category = 'CalcPack'
      Caption = #1056#1077#1076'. '#1087#1077#1095#1072#1090#1085#1091#1102' '#1092#1086#1088#1084#1091
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1077#1095#1072#1090#1085#1091#1102' '#1092#1086#1088#1084#1091
      ImageIndex = 1
      OnExecute = aEditPrintFormExecute
    end
  end
  object il: TImageList
    Left = 26
    Top = 384
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000214F3900214F3900214F
      39001A4533001A4533001A453300133529001335290013352900133529000D28
      1F000D281F000D281F000A1F19000A1F19000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C977E00517666005176
      660051766600517666004B6B60004B6B60004B6B60004B6B6000435F5900435F
      5900435F5900435F5900435F59000A1F19000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000047815D006C977E00E8F1E800E6F0
      E600E4EFE400E2EEE300DFECDF00DCEADB00DCEADB00D9E8D900D8E7D800D5E5
      D500D5E5D500D2E4D200435F59000D281F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D8762006C977E00EBF3EB00E8F1
      E800E8F1E800E4EFE400E2EEE300DFECDF00DEEBDE00DCEADB00D9E8D900D8E7
      D800D5E5D500D5E5D500435F59000D281F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D8762006C977E00EDF5ED00EAF2
      E900E8F1E800E6F0E600E2EEE300E0EEE000DFECDF0061996400213B2700213B
      2700213B2700213B2700435F59000D281F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000558E670076A086004B964D001274
      37001C6C3A002C6642003A5F51003A5F51000469040088C792002D874700227F
      4000227F4000D8E7D800435F5900133529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000558E670076A08600F3F8F3004B96
      4D006DB6750073BB7C0055A45A00409347009DD0A700499B5400409347000469
      04001A4D2A00D9E8D9004B6B6000133529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000058966B0081AA8D00F5F9F500F3F8
      F300DAE9DA0055A45A004093470073BB7C0055A45A0055A45A00046904005782
      5A00558E6700DCEADB004B6B6000133529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F9B720081AA8D00F6FAF500F3F8
      F300F3F8F3001D781E00AAD6B2005CAA65005CAA650055A45A00A8C2A800E0EE
      E000DFECDF00DCEADB004B6B6000133529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F9B720081AA8D00F8FAF800F6FA
      F50094C79C00BADEC0006DB6750064AC69005CAA6500579A5E0004690400E2EE
      E300E2EEE300DFECDF004B6B60001A4533000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066A0770081AA8D00FAFDFA005CAA
      6500C4E5CA007CC1850073BB7C0057825A0068B06F0073BB7C0055A45A000469
      0400CDDACD00E2EEE300517666001A4533000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006CA67C008AB795006DB675009DD0
      A70088C7920088C7920061996400F3F8F300CDDACD006DB6750073BB7C0055A4
      5A0057825A00E4EFE400517666001A4533000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006CA67C008AB795006DB6750068B0
      6F0064AC690061996400E3EBE300F3F8F300F3F8F30061996400619964005782
      5A0057825A00E6F0E60051766600214F39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000071AA81008AB7950000000000FDFE
      FD00FBFEFB00FAFDFA00F8FAF800F6FAF500F5F9F500F3F8F300EFF6EF00EDF5
      ED00EBF3EB00E8F1E80051766600214F39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076AF850081AA8D008AB795008AB7
      95008AB795008AB7950081AA8D0081AA8D0081AA8D0076A0860076A0860076A0
      86006C977E006C977E006C977E00214F39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000076AF850076AF850071AA81006CA6
      7C006CA67C0066A0770066A077005F9B72005F9B7200558E6700558E67004D87
      62004D87620047815D00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00989898008787
      8700858585008585850085858500858585008585850085858500858585008585
      85008585850085858500C5C5C500F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000020FF2000000000000000
      0000000000000000000000000000000000008D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF000000007A7A7A005E6365007276
      7800797E7F00797E7F00797E7F00787D7E006F7476006D7274006A6F71006166
      68005A6062004D53550060606000E3E3E3000000000000000000000000003868
      2000487830005890400068A050000000000000FF000020F8280038F8400050F0
      580068E8780078E0900000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFFCFCFCF0040404100303232002E30
      3100272A2A00262829002426270024262700232525001E1F20001F2122002224
      2400232525002526270033343500A5A5A500000000000000000098D8A8003058
      180040702800508038006098480000FF000010FF100028F8280040F0480050F0
      600068E8780080E0980098D8B000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFBF4F59FFBF4F
      59FFBF4F59FFBF4F59FFBF4F59FFBF4F59FFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFFAAAAAA005B5D5E008E929400777D
      8000686E710063686B005C6163005C6163005B60620052565900555A5C005A5F
      61005E626300656A6B00474B4C00858585000000000080E0980080E090002850
      10003860200048783000588840000000000018FF180028F8300040F0480058E8
      680070E8800088E09800A0D8B800000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421D1FF2421
      D1FF2421D1FFFFFFFFFFFFFFFFFF8D7E7AFFAAAAAA006567670072747400888B
      8C00838587008284850082848500818385007F8284007F8283007C7F81007C7F
      8100717476006D6F700050555600858585000000000070E8800068E878000000
      0000000000000000000000000000000000000000000030F83800000000000000
      0000204000002040000028480000284800008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFBF4F59FFBF4F
      59FFBF4F59FFBF4F59FFFFFFFFFFFFFFFFFFFFFFFFFF2421D1FFFFFFFFFF2421
      D1FFFFFFFFFF2421D1FFFFFFFFFF8D7E7AFFAAAAAA00696A6B0096979800D8D9
      DA00D9D9DA00D9D9D900D3D3D300D3D3D300D6D6D600D6D6D600CECFCF00CDCF
      CF00B4B8B900818283005A5F61008585850058E8680058F0600050F0600050F0
      60000000000048F0580000000000000000000000000000000000000000000000
      0000000000003058180038601800386020008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFFAAAAAA008D8E8F00C3C4C500F4F5
      F500FBFBFB00FAFBFB00F8F9FA00FAFBFB00FAFBFB00F5F7F700F3F5F600EFF0
      F000DDDFE000D9DBDB007E8487009292920048F0500040F0480040F0480038F8
      400038F8400038F8400000000000000000000000000000000000000000000000
      0000407028004870300048783000487830008D7E7AFFFFFFFFFFBF4F59FFBF4F
      59FFBF4F59FFBF4F59FFBF4F59FFBF4F59FFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFBF4F59FFBF4F
      59FFBF4F59FFBF4F59FFBF4F59FFBF4F59FFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFFD0D0D0005F5F5F00F7F9F900C0C4
      C60077797A00555555005555550055555500555555005555550055555500898D
      8E00B1B5B700C6CBCD0057585800CACACA000000000028F8300028F8300028F8
      280020F828000000000000000000000000000000000000000000000000000000
      0000588840005888400058904000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF00000000DBDBDB005F5F5F003939
      3900C5C5C50095959500A3A3A3009E9E9E00A0A0A000A2A2A200A6A6A600A9A9
      A9001C1D1E003F414200D6D6D6000000000018FF180018FF180010FF180010FF
      100010FF10000000000000000000000000000000000000000000000000000000
      000068A0500068A8500068A85800000000008D7E7AFFFFFFFFFFBF4F59FFBF4F
      59FFBF4F59FFBF4F59FFFFFFFFFFFFFFFFFFFFFFFFFF2421D1FFFFFFFFFF2421
      D1FFFFFFFFFF2421D1FFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF0000000000000000D0D0D0003939
      3900E5E5E500BBBBBB00C9C9C900C3C3C300C6C6C600CACACA00D4D4D400CACA
      CA0031313100C4C4C400000000000000000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000005890
      40000000000070B0600000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421D1FF2421
      D1FF2421D1FFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF0000000000000000000000005555
      5500EBEBEB00C8C8C800E4E4E400ECECEC00CDCDCD00D4D4D400F4F4F400DDDD
      DD004E4E4E00F5F5F50000000000000000000000000000000000000000000000
      000000FF000010FF100000000000000000000000000000000000487028005888
      400068A050000000000000000000000000008D7E7AFFFFFFFFFFBF4F59FFBF4F
      59FFBF4F59FFBF4F59FFBF4F59FFBF4F59FFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2421
      D1FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF0000000000000000000000005555
      5500E3E3E300A2A2A200D1D1D100CACACA00D0D0D000D3D3D300CACACA00D8D8
      D80051515100FAFAFA00000000000000000000000000000000000000000018FF
      200020F8280030F8380038F84000000000000000000030581000406828005080
      38006098480070B0580000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8D7E7AFF0000000000000000000000005555
      5500E9E9E900C2C2C200D4D4D400CDCDCD00D9D9D900E7E7E700E6E6E600CACA
      CA0054545400FEFEFE00000000000000000000000000000000000000000038F8
      400040F0500050F0580058F06000000000002040000028501000386820004878
      30000000000068A8580000000000000000008D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF0000000000000000000000005555
      5500E5E5E500BBBBBB00CECECE00C6C6C600D1D1D100DFDFDF00DDDDDD00C3C3
      C30054545400FEFEFE0000000000000000000000000000000000000000000000
      000060E8700068E8780078E0880080E090002040000028480000386018000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0090909000A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A7A7A7008585
      85007B7B7B000000000000000000000000000000000000000000000000000000
      000080E0900088E0A00098D8A800A0D8B800A0D8B80020400000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00EDEDED000000000000000000000000000000000000000000000000007766
      62FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF00000000000000004C32170D6C59
      55E6BE895CFFF2AC5FFEF5B266FEF7BB6EFDFDC47AFCFFCB81FCFFD089FBFFD5
      90FAFFDD9CFAFFE6ACF9FFEFBCF8FFF8CDF0776662FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FF000000000000000000000000776662FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FF0000000000000000000000000000000000000000000000008D7E
      7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF5C4B46FF00000000000000034C2F13D7866B
      62FF525866FFC08655FFECA456FFECA95DFFEFB064FFF5B86FFFFDC47AFFFFCB
      82FFFFD189FFFFD691FFFFDD9DFFFFE7AEF98D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF776662FF000000000000000000000000776662FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B46FF5C4B
      46FF5C4B46FFA0938FFFFFFFFFFF5C4B46FF000000004B2A0DC6D37B2CFFAA7E
      67FFDCF0FFFFA7B4CFFFC4854FFFECA151FFECA557FFECA95EFFEEB065FFF3B8
      6EFFFCC37AFFFFCC83FFFFD18AFFFFD792FA8D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFF988B87FF988B
      87FFFFFFFFFF988B87FF988B87FF988B87FF988B87FF988B87FF988B87FFFFFF
      FFFF776662FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FFFFFFFFFFFFFFFFFF5C4B46FF3D20077FC0671BFFFE8D29FFB07E
      5FFFC5E8FFFF72CBFFFF5595D9FFE49345FFEC9E4BFFECA152FFECA558FFECAA
      5EFFEDAF66FFF2B86EFFFAC37AFFFFCC83FA8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF776662FF0000000000000000000000008D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FFA0938FFFFFFFFFFF5C4B46FF482305BDFE8119FFFE851FFFB77A
      50FF3BD1FFFF05B3FFFF1498FEFF8B726CFFF69B42FFEE9946FFEC9E4CFFECA2
      52FFECA658FFECAB5FFFEDB067FFFDC174FB8D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFF988B87FF988B
      87FFFFFFFFFF988B87FF988B87FF988B87FF988B87FF988B87FF988B87FFFFFF
      FFFF776662FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FFFFFFFFFFFFFFFFFF5C4B46FF391A02C5FE7A0EFFFE7D14FFF07D
      20FF28CFF7FF2CC4FFFF36BBFFFF3F8ED5FFFE9637FFFE9B3EFFF69B43FFEF9B
      48FFEC9F4CFFECA253FFEFA95AFFFEB867FC8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF776662FF0000000000000000000000008D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FFA0938FFFFFFFFFFF5C4B46FF0000003E4D2302C4E36A09F1FE7A
      0FFF5EA3B8FF2DD5FFFF14C2FFFF119DFDFFB96F3EFFFE9231FFFE9738FFFE9C
      3FFFF69B43FFF19D48FFFCA853FFFEAF5AFD8D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFF988B87FF988B
      87FFFFFFFFFF988B87FFA0938FFF776662FF988B87FF988B87FF988B87FFFFFF
      FFFF776662FF00000000776662FFA0938FFF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FFFFFFFFFFFFFFFFFF5C4B46FF0000000000000024050200763016
      01A841342FCE14E1FDFF19C8FFFF30BCFFFF4C80B1FEEB8023FFFE8F2CFFFE93
      32FFFE9739FFFE9C3FFFFEA146FFFEA64DFE8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF776662FF0000FFFF5C4B46FFFFFFFFFFFFFFFFFFFFFF
      FFFF776662FF776662FF0000FFFF776662FF8D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FFA0938FFFFFFFFFFF5C4B46FF0000000000000000000000000000
      00000000000039C6EAEF36DBFFFF28CEFFFF23A8F6FF10091186261405983B20
      09AB4F2C0DBE623913D1C5762CEFFE9D40FF8D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFF988B87FF988B
      87FFFFFFFFFF988B87FFA0938FFF0000FFFF0000FFFF5C4B46FF988B87FFFFFF
      FFFF776662FF0000FFFF0000FFFF776662FF8D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FFFFFFFFFFFFFFFFFF5C4B46FF0000000000000000000000000000
      000000000000278FD17310EDFEFF08D0FFFF1FB9FFFF326CACB1000000000000
      000000000000000000090A050160563211988D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFF0000FFFF0000FFFF5C4B46FF7766
      62FF0000FFFF0000FFFF776662FF000000008D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FFA0938FFFFFFFFFFF5C4B46FF0000000000000000000000000000
      0000000000000062CA0430E0F5FC34E0FFFF34D5FFFF32A7E7FC00024D060000
      0000000000000000000000000000000000008D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFF988B87FF988B
      87FFFFFFFFFF988B87FF988B87FF988B87FFA0938FFF0000FFFF0000FFFF0000
      FFFF0000FFFF776662FF00000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FFFFFFFFFFFFFFFFFF5C4B46FF0000000000000000000000000000
      0000000000000000000034B3E3B31FF3FFFF09DCFFFF12B8FEFF214486740000
      0000000000000000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF776662FF0000FFFF0000
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FFBFB5B2FFFFFFFFFF5C4B46FF0000000000000000000000000000
      00000000000000000000006AD41920F5FCFF28E5FFFF36D8FFFF399DD7F00000
      0000000000000000000000000000000000008D7E7AFFFFFFFFFFA0938FFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0938FFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFF988B87FF988B
      87FFFFFFFFFF988B87FF988B87FF988B87FF776662FF0000FFFF0000FFFF0000
      FFFF0000FFFF5C4B46FF00000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFB5B2FFA0938FFFA0938FFFA0938FFFBFB5B2FFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF8D7E7AFF8D7E7AFF776662FF0000000000000000000000000000
      000000000000000000000000000039CCEFDE30F2FFFF1AE6FFFF17BFFCFF0712
      5C39000000000000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5C4B46FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF776662FF0000FFFF0000FFFF776662FFA093
      8FFF0000FFFF0000FFFF5C4B46FF000000008D7E7AFFFFFFFFFFBFB5B2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB5B2FFFFFF
      FFFF5C4B46FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000138FE54910FBFEFF69D1E1FF87BEDBFF1A3C
      8267000000000000000000000000000000008D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF776662FF0000000000000000000000008D7E7AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA0938FFF0000FFFF0000FFFF776662FFFFFFFFFFFFFF
      FFFFA0938FFF0000FFFF0000FFFF776662FF8D7E7A008D7E7AFF8D7E7AFF8D7E
      7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E7AFF8D7E
      7AFF776662FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041B8EBDF769DCAEC406EB1770000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0938FFFA0938FFFA0938FFFA093
      8FFFA0938FFFA0938FFFA0938FFFA0938FFF776662FFA0938FFFA0938FFFA093
      8FFF8D7E7AFFA0938FFF776662FFA0938FFF424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000002000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF8000FFBF000000008000
      E103000000000000C00100000000000081010000000000009FB0000000000000
      0BF800000000000003F000000000000087F100000000800107F100000000C003
      0FEB00000000E003F3C700000000E003E18300000000E003E10B00000000E003
      F01FFFFFFFFFE007F03FFFFFFFFFE007E000C00000070007E000800000070007
      0000800000070007000000000007000700000000000700070000000000070007
      000000000007000400008000000700000000F800000700000000F83800070001
      0000F81F000700030000FC1F000700070000FC1F000700030000FE0F00070001
      0007FE0F000700000007FF1FFFFF000000000000000000000000000000000000
      000000000000}
  end
  object jvdsCISDetail: TJvDataSource
    Left = 227
    Top = 336
  end
  object jvdsICClassDetail: TJvDataSource
    Left = 227
    Top = 285
  end
  object jvdsCIS: TJvDataSource
    Left = 227
    Top = 392
  end
  object ApplicationEvents: TApplicationEvents
    OnShowHint = ApplicationEventsShowHint
    Left = 795
    Top = 118
  end
  object jvdsCI: TJvDataSource
    Left = 224
    Top = 456
  end
  object jvdsCG: TJvDataSource
    Left = 224
    Top = 512
  end
  object jvdsPackage: TJvDataSource
    Left = 224
    Top = 560
  end
  object frxdbdsHeader: TfrxDBDataset
    UserName = 'frxdbdsHeader'
    CloseDataSource = False
    DataSet = ibdsHeader
    Left = 88
    Top = 272
  end
  object frxdbdsMaster: TfrxDBDataset
    UserName = 'frxdbdsMaster'
    CloseDataSource = False
    DataSet = ibdsMaster
    Left = 88
    Top = 320
  end
  object ibdsHeader: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'SELECT *'
      'FROM V_CALC_GROUP'
      'WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID')
    Left = 24
    Top = 272
  end
  object ibdsMaster: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'SELECT *'
      'FROM V_CALC_GROUP_SUBJECT'
      'WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_GROUP = :ID')
    Left = 24
    Top = 320
  end
  object frxRichObject1: TfrxRichObject
    Left = 144
    Top = 384
  end
  object frxrGroup: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39338.492116608800000000
    ReportOptions.LastChange = 39704.366746412040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 153
    Top = 321
    Datasets = <
      item
        DataSet = frxdbdsHeader
        DataSetName = 'frxdbdsHeader'
      end
      item
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 2.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rTitle: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 75.590600000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 139.842610000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#176#1057#1027#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '0')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 914.646260000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1107#1057#8225#1056#176#1057#8240#1056#1105#1057#8230#1057#1027#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 98.267780000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_0'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 98.267780000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_0"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_0"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 56.692949999999990000
          Width = 98.267780000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 98.267780000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 128.504020000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_1'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_1"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_1"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 279.685220000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 279.685220000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 279.685220000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_2"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_2"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 370.393940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 370.393940000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_3"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_3"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 461.102660000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 461.102660000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 461.102660000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_4"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_4"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 551.811380000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 551.811380000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 551.811380000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_5"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_5"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 642.520100000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 642.520100000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 642.520100000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_6"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_6"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 733.228820000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 733.228820000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 733.228820000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_7"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_7"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 823.937540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 823.937540000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 823.937540000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_8"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_8"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 914.646260000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240'. '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 941.102970000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000010000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1112#1056#187'. '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 975.118740000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1027#1057#8218'. '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1108#1056#1109#1056#1029#1057#8224'. '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 188.976500000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 219.212740000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 241.889920000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 279.685220000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 309.921460000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 332.598640000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 370.393940000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 400.630180000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 423.307360000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 461.102660000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 491.338900000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 514.016080000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 551.811380000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 582.047620000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 604.724800000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 642.520100000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 672.756340000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 695.433520000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 733.228820000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 763.465060000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 786.142240000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 823.937540000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 854.173780000000000000
          Top = 56.692949999999990000
          Width = 22.677180000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 876.850960000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
        RowCount = 0
        Stretched = True
        object Memo66: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdsMaster."NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 98.267780000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_0'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 128.504020000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_0'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_0'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 188.976500000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_1'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 219.212740000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_1'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 241.889920000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_1'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 279.685220000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 309.921460000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 332.598640000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 370.393940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 400.630180000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 423.307360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 461.102660000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 491.338900000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 514.016080000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 551.811380000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 582.047620000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 604.724800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 642.520100000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 672.756340000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 695.433520000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 733.228820000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 763.465060000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 786.142240000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 823.937540000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 854.173780000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 876.850960000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 914.646260000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_TOTAL'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 941.102970000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 975.118740000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 1012.914040000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897650000000000000
        Top = 359.055350000000000000
        Width = 1046.929810000000000000
        object Memo94: TfrxMemoView
          Left = 98.267780000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 128.504020000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_0'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_0'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_0"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 188.976500000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 219.212740000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_1'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 241.889920000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_1'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 279.685220000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 309.921460000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 332.598640000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 370.393940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 400.630180000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 423.307360000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 461.102660000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 491.338900000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 514.016080000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 551.811380000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 582.047620000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 604.724800000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 642.520100000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 672.756340000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 695.433520000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 733.228820000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 763.465060000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 786.142240000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 823.937540000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 854.173780000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 876.850960000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 941.102970000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 914.646260000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_TOTAL'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 975.118740000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 1012.914040000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rSummary: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          DataField = 'FOOTER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object ibdsFr: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'SELECT *'
      'FROM V_CALC_GROUP'
      'WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID')
    Left = 368
    Top = 320
  end
  object frxDBXComponents1: TfrxDBXComponents
    Left = 467
    Top = 380
  end
  object frxrIndividualWT0: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39338.492116608800000000
    ReportOptions.LastChange = 39704.366535185190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 225
    Top = 225
    Datasets = <
      item
        DataSet = frxdbdsHeader
        DataSetName = 'frxdbdsHeader'
      end
      item
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 2.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rTitle: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 75.590600000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 94.488250000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#176#1057#1027#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 117.165430000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 260.787570000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 332.598640000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 404.409710000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 476.220780000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 619.842920000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 691.653990000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1107#1057#8225#1056#176#1057#8240#1056#1105#1057#8230#1057#1027#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsHeader."QTY_1"> + <frxdbdsHeader."QTY_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 260.787570000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 332.598640000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 548.031849999999900000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 910.866730000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 37.795300000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 117.165430000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_1"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_1"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_2"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_2"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 260.787570000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_3"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_3"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 332.598640000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_4"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_0"> = 4, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 404.409710000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_5"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_5"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 476.220780000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_6"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_6"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 548.031850000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_7"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_7"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 619.842920000000000000
          Top = 37.795300000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_8"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_8"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 691.653990000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 801.260360000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 910.866730000000000000
          Top = 37.795300000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1108#1056#1109#1056#1029#1057#8224#1056#181#1057#1026#1057#8218' '#1057#8225#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#167#1056#176#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 117.165430000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 117.165430000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 188.976500000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 188.976500000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 260.787570000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 260.787570000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 332.598640000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 332.598640000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 404.409710000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 404.409710000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 476.220780000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 476.220780000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 548.031850000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 548.031850000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 619.842920000000000000
          Top = 56.692949999999990000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 619.842920000000000000
          Top = 75.590600000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 691.653990000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 691.653990000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 748.346940000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 801.260360000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 801.260360000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 857.953310000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 910.866730000000000000
          Top = 56.692949999999990000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#187#1056#176#1056#1029'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 910.866730000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1057#8222#1056#176#1056#1108#1057#8218'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 967.559680000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1029#1056#181#1057#1026#1056#176#1057#1027#1056#1111#1057#1026#1056#181#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
        RowCount = 0
        object Memo66: TfrxMemoView
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          DataField = 'NAME'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxdbdsMaster."NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 117.165430000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsMaster."CLOCK_CURR_1"> + <frxdbdsMaster."CLOCK_CURR_0">' +
              ']')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsMaster."CLOCK_FACT_1">+<frxdbdsMaster."CLOCK_FACT_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 188.976500000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 260.787570000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 260.787570000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 332.598640000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 332.598640000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 404.409710000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 476.220780000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 548.031849999999900000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 548.031850000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 619.842920000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 691.653990000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 801.260360000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 910.866730000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 910.866730000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 1.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_FACT_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 748.346940000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_UNALL_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 857.953310000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_UNALL_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 967.559680000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_UNALL_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 37.795300000000000000
        Top = 332.598640000000000000
        Width = 1046.929810000000000000
        object Memo94: TfrxMemoView
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          Left = 117.165430000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsHeader."CLOCK_CURR_1">+<frxdbdsHeader."CLOCK_CURR_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            
              '[<frxdbdsHeader."CLOCK_FACT_1"> + <frxdbdsHeader."CLOCK_FACT_0">' +
              ']')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 188.976500000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 260.787570000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 260.787570000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 332.598640000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 332.598640000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 404.409710000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 476.220780000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 476.220780000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 548.031849999999900000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 548.031849999999900000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 619.842920000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 619.842920000000000000
          Top = 18.897650000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 691.653990000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 691.653990000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 801.260360000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 801.260360000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 910.866730000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_CURR_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.TopLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_CURR_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 910.866730000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_FACT_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_FACT_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 748.346940000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_UNALL_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 857.953310000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_UNALL_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 967.559680000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          DataField = 'CLOCK_UNALL_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.BottomLine.Width = 2.000000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_UNALL_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 430.866420000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rSummary: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          DataField = 'FOOTER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object frxrGroupWT0: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39338.492116608800000000
    ReportOptions.LastChange = 39704.366909722220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 257
    Top = 377
    Datasets = <
      item
        DataSet = frxdbdsHeader
        DataSetName = 'frxdbdsHeader'
      end
      item
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 2.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rTitle: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 75.590600000000000000
          StretchMode = smActualHeight
          DataField = 'HEADER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 139.842610000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#176#1057#1027#1057#1027#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 914.646260000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1107#1057#8225#1056#176#1057#8240#1056#1105#1057#8230#1057#1027#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#176#1057#8218#1056#181#1056#1110#1056#1109#1057#1026#1056#1105#1057#1039' '#1056#1108#1056#187#1056#176#1057#1027#1057#1027#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Top = 56.692949999999990000
          Width = 98.267780000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsHeader."QTY_ST_0"> + <frxdbdsHeader."QTY_ST_1">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 98.267780000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_1"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_1"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 200.315090000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 200.315090000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 200.315090000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_2"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_2"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 302.362400000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 302.362400000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 302.362400000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_3"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_3"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 404.409710000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 404.409710000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 404.409710000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_4"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_4"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 506.457020000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 506.457020000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 506.457020000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_5"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_5"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 608.504330000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 608.504330000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 608.504330000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_6"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_6"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 710.551640000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 710.551640000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 710.551640000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_7"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_7"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Left = 812.598950000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 812.598950000000000000
          Top = 18.897650000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DataField = 'QTY_ST_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_ST_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 812.598950000000000000
          Top = 37.795300000000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[IIF(<frxdbdsHeader."CAT_8"> = NULL, '#39#39', IIF(<frxdbdsHeader."CAT' +
              '_8"> = 0, '#39#1056#1112#1056#187#1056#176#1056#1169#1057#8364#1056#1105#1056#181#39', '#39#1057#1027#1057#8218#1056#176#1057#1026#1057#8364#1056#1105#1056#181#39'))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 914.646260000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240'. '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 941.102970000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000010000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1112#1056#187'. '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 975.118740000000000000
          Top = 56.692949999999990000
          Width = 37.795300000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1027#1057#8218'. '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 1012.914040000000000000
          Top = 56.692949999999990000
          Width = 34.015770000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#181#1056#181' '#1056#1108#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1108#1056#1109#1056#1029#1057#8224'. '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 98.267780000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 128.504020000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 154.960730000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 200.315090000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 230.551330000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 257.008040000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 302.362400000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 332.598640000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 359.055350000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 404.409710000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 434.645950000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 461.102660000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 506.457020000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 536.693260000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 563.149970000000100000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 608.504330000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 638.740570000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 665.197280000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 710.551640000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 740.787880000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 767.244590000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 812.598950000000000000
          Top = 56.692949999999990000
          Width = 30.236240000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#8225#1056#176#1057#1027#1056#1109#1056#1030' '#1056#1111#1056#1109' '#1057#1107#1057#8225'. '#1056#1111#1056#187#1056#176#1056#1029#1057#1107' '#1056#1029#1056#176' '#1056#1110#1057#1026'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 842.835190000000000000
          Top = 56.692949999999990000
          Width = 26.456710000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1110#1057#1026#1057#1107#1056#1111#1056#1111)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 869.291900000000000000
          Top = 56.692949999999990000
          Width = 45.354360000000000000
          Height = 83.149660000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1057#1026#1056#176#1057#1027#1056#1111'. '#1057#8225#1056#176#1057#1027'.')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdsMaster
        DataSetName = 'frxdbdsMaster'
        RowCount = 0
        Stretched = True
        object Memo66: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdsMaster."NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 98.267780000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsMaster."CLOCK_CURR_1">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 128.504020000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsMaster."QTY_1"> + <frxdbdsMaster."QTY_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 154.960730000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsMaster."CLOCK_1"> + <frxdbdsMaster."CLOCK_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 200.315090000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          Left = 230.551330000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 257.008040000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_2'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 302.362400000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 332.598640000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 359.055350000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_3'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 404.409710000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 434.645950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 461.102660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_4'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          Left = 506.457020000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 536.693260000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 563.149970000000100000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_5'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 608.504330000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Left = 638.740570000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_6'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 710.551640000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 767.244590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_7'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 812.598950000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_CURR_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_CURR_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          Left = 842.835190000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          Left = 869.291900000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_8'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 914.646260000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'QTY_TOTAL'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."QTY_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 941.102970000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_Y'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 975.118740000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_O'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo123: TfrxMemoView
          Left = 1012.914040000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'CLOCK_C'
          DataSet = frxdbdsMaster
          DataSetName = 'frxdbdsMaster'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsMaster."CLOCK_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897650000000000000
        Top = 359.055350000000000000
        Width = 1046.929810000000000000
        object Memo97: TfrxMemoView
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          Left = 98.267780000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 128.504020000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsHeader."QTY_1"> + <frxdbdsHeader."QTY_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 154.960730000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[<frxdbdsHeader."CLOCK_1"> + <frxdbdsHeader."CLOCK_0">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Left = 200.315090000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 230.551330000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 257.008040000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_2'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Left = 302.362400000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Left = 332.598640000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 359.055350000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_3'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 404.409710000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 434.645950000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 461.102660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_4'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          Left = 506.457020000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          Left = 536.693260000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 563.149970000000100000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_5'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_5"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 608.504330000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo114: TfrxMemoView
          Left = 638.740570000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo115: TfrxMemoView
          Left = 665.197280000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_6'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_6"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 710.551640000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo117: TfrxMemoView
          Left = 740.787880000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo118: TfrxMemoView
          Left = 767.244590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_7'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_7"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 812.598950000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 842.835190000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 869.291900000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_8'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_8"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 941.102970000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_Y'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_Y"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 914.646260000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'QTY_TOTAL'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."QTY_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 975.118740000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLOCK_O'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_O"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 1012.914040000000000000
          Width = 34.015770000000010000
          Height = 18.897650000000000000
          DataField = 'CLOCK_C'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8 = (
            '[frxdbdsHeader."CLOCK_C"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 1046.929810000000000000
        Stretched = True
        object rSummary: TfrxRichView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          DataField = 'FOOTER'
          DataSet = frxdbdsHeader
          DataSetName = 'frxdbdsHeader'
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
            666C616E67313034397B5C666F6E7474626C7B5C66305C666E696C204D532053
            616E732053657269663B7D7D0D0A5C766965776B696E64345C7563315C706172
            645C66305C667331365C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object frxXLSExport: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 56
    Top = 464
  end
  object frxRTFExport: TfrxRTFExport
    ShowDialog = False
    FileName = 'clockc'
    UseFileCache = True
    DefaultPath = '\tmp'
    ShowProgress = True
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfPrint
    Left = 144
    Top = 464
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 363
    Top = 182
  end
  object frxReport: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39704.379301388880000000
    ReportOptions.LastChange = 39704.379301388880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 435
    Top = 182
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
    end
  end
end
