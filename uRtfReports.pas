unit uRtfReports;

interface

uses SysUtils, Classes, ComCtrls, JvPageListTreeView,
  IBCustomDataSet, IBQuery, UDM, JvMemoryDataset, DB;

type
  TRtfReportContent = class(TComponent)
  end;

  TRtfReportTable = class(TRtfReportContent)
  end;

  TRtfTextFontStyles = (fsBold, fsItalic, fsUnderline);
  TRtfTextFontStyle = set of TRtfTextFontStyles;

  TRtfReportTextItem = class(TCollectionItem)
  private
    FIsParagraph: Boolean;
    FFont: Integer;
    FFontStyle: TRtfTextFontStyle; //TRtfTextStyle;
    FText: string;
  published
    property IsParagraph: Boolean read FIsParagraph;
    //constructor
  end;

  TRtfReportText = class(TRtfReportContent)
  private
    FText: string;
  published
    property Text: string read FText write FText;
  end;
  {
  TRtfReport = class(TComponent)
  private
    ContentList: TList;
    //function GetContent(Index: Integer): TRtfReportContent;
  published
    //function AddTable: TRtfReportTable;
    //function AddText: TRtfReportText;
    constructor Create;
    procedure RemoveContentElement(Index: Integer);
    //property Content[Index: Integer]: TRtfReportContent read GetContent;
  end;
  }

implementation

end.
