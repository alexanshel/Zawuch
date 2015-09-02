
{**********************************************************************}
{                                                                      }
{ Модуль NXDBGrids                                                     }
{ Copyright (c) 2002 ООО "ЛУКОЙЛ - Нижневолжскнефть"                   }
{ ОИТиВТ                                                               }
{                                                                      }
{ Компонент, отображающиий данные в строках и столбцах                 }
{                                                                      }
{ Разработчик : Денис Полеонов                                         }
{ Модифицирован : 22 января 2002                                       }
{                                                                      }
{**********************************************************************}

unit NXDBGrids;

{$R-}

interface

uses
  Windows, SysUtils, Messages, Classes, Controls, Forms, StdCtrls,
  Graphics, Grids, DBCtrls, Db, Menus, ImgList, Variants;

type
  TNXColumnValue = (cvColor, cvWidth, cvFont, cvAlignment, cvReadOnly,
   cvTitleColor, cvTitleCaption, cvTitleAlignment, cvTitleFont, cvImeMode,
   cvImeName);
  TNXColumnValues = set of TNXColumnValue;

const
  ColumnTitleValues = [cvTitleColor..cvTitleFont];
  cm_DeferLayout = WM_USER + 100;

type
  TNXColumn = class;
  TNXCustomDBGrid = class;

  TNXColumnTitle = class(TPersistent)
  private
    FColumn: TNXColumn;
    FCaption: string;
    FFont: TFont;
    FColor: TColor;
    FAlignment: TAlignment;
    procedure FontChanged(Sender: TObject);
    function GetAlignment: TAlignment;
    function GetColor: TColor;
    function GetCaption: string;
    function GetFont: TFont;
    function IsAlignmentStored: Boolean;
    function IsColorStored: Boolean;
    function IsFontStored: Boolean;
    function IsCaptionStored: Boolean;
    procedure SetAlignment(Value: TAlignment);
    procedure SetColor(Value: TColor);
    procedure SetFont(Value: TFont);
    procedure SetCaption(const Value: string); virtual;
  protected
    procedure RefreshDefaultFont;
  public
    constructor Create(Column: TNXColumn);
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    function DefaultAlignment: TAlignment;
    function DefaultColor: TColor;
    function DefaultFont: TFont;
    function DefaultCaption: string;
    procedure RestoreDefaults; virtual;
    property Column: TNXColumn read FColumn;
  published
    property Alignment: TAlignment read GetAlignment write SetAlignment
     stored IsAlignmentStored;
    property Caption: string read GetCaption write SetCaption
     stored IsCaptionStored;
    property Color: TColor read GetColor write SetColor stored IsColorStored;
    property Font: TFont read GetFont write SetFont stored IsFontStored;
  end;

  TNXColumnButtonStyle = (cbsAuto, cbsDate, cbsDateTime, cbsEllipsis, cbsFloat,
   cbsInteger, cbsNone, cbsTime);

  TNXColumn = class(TCollectionItem)
  private
    FField: TField;
    FFieldName: string;
    FColor: TColor;
    FWidth: Integer;
    FTitle: TNXColumnTitle;
    FFont: TFont;
    FImeMode: TImeMode;
    FImeName: TImeName;
    FPickList: TStrings;
    FPopupMenu: TPopupMenu;
    FDropDownRows: Cardinal;
    FButtonStyle: TNXColumnButtonStyle;
    FAlignment: TAlignment;
    FReadonly: Boolean;
    FAssignedValues: TNXColumnValues;
    FVisible: Boolean;
    FExpanded: Boolean;
    FStored: Boolean;
    procedure FontChanged(Sender: TObject);
    function GetAlignment: TAlignment;
    function GetColor: TColor;
    function GetExpanded: Boolean;
    function GetField: TField;
    function GetFont: TFont;
    function GetImeMode: TImeMode;
    function GetImeName: TImeName;
    function GetParentColumn: TNXColumn;
    function GetPickList: TStrings;
    function GetReadOnly: Boolean;
    function GetShowing: Boolean;
    function GetWidth: Integer;
    function GetVisible: Boolean;
    function IsAlignmentStored: Boolean;
    function IsColorStored: Boolean;
    function IsFontStored: Boolean;
    function IsImeModeStored: Boolean;
    function IsImeNameStored: Boolean;
    function IsReadOnlyStored: Boolean;
    function IsWidthStored: Boolean;
    procedure SetAlignment(Value: TAlignment); virtual;
    procedure SetButtonStyle(Value: TNXColumnButtonStyle);
    procedure SetColor(Value: TColor);
    procedure SetExpanded(Value: Boolean);
    procedure SetField(Value: TField); virtual;
    procedure SetFieldName(const Value: string);
    procedure SetFont(Value: TFont);
    procedure SetImeMode(Value: TImeMode); virtual;
    procedure SetImeName(Value: TImeName); virtual;
    procedure SetPickList(Value: TStrings);
    procedure SetPopupMenu(Value: TPopupMenu);
    procedure SetReadOnly(Value: Boolean); virtual;
    procedure SetTitle(Value: TNXColumnTitle);
    procedure SetWidth(Value: Integer); virtual;
    procedure SetVisible(Value: Boolean);
    function GetExpandable: Boolean;
  protected
    function CreateTitle: TNXColumnTitle; virtual;
    function GetGrid: TNXCustomDBGrid;
    function GetDisplayName: string; override;
    procedure RefreshDefaultFont;
    procedure SetIndex(Value: Integer); override;
    property IsStored: Boolean read FStored write FStored default True;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    function DefaultAlignment: TAlignment;
    function DefaultColor: TColor;
    function DefaultFont: TFont;
    function DefaultImeMode: TImeMode;
    function DefaultImeName: TImeName;
    function DefaultReadOnly: Boolean;
    function DefaultWidth: Integer;
    function Depth: Integer;
    procedure RestoreDefaults; virtual;
    property Grid: TNXCustomDBGrid read GetGrid;
    property AssignedValues: TNXColumnValues read FAssignedValues;
    property Expandable: Boolean read GetExpandable;
    property Field: TField read GetField write SetField;
    property ParentColumn: TNXColumn read GetParentColumn;
    property Showing: Boolean read GetShowing;
  published
    property Alignment: TAlignment read GetAlignment write SetAlignment
     stored IsAlignmentStored;
    property ButtonStyle: TNXColumnButtonStyle read FButtonStyle
     write SetButtonStyle default cbsAuto;
    property Color: TColor read GetColor write SetColor stored IsColorStored;
    property DropDownRows: Cardinal read FDropDownRows write FDropDownRows
     default 7;
    property Expanded: Boolean read GetExpanded write SetExpanded default True;
    property FieldName: string read FFieldName write SetFieldName;
    property Font: TFont read GetFont write SetFont stored IsFontStored;
    property ImeMode: TImeMode read GetImeMode write SetImeMode
     stored IsImeModeStored;
    property ImeName: TImeName read GetImeName write SetImeName
     stored IsImeNameStored;
    property PickList: TStrings read GetPickList write SetPickList;
    property PopupMenu: TPopupMenu read FPopupMenu write SetPopupMenu;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly
     stored IsReadOnlyStored;
    property Title: TNXColumnTitle read FTitle write SetTitle;
    property Width: Integer read GetWidth write SetWidth stored IsWidthStored;
    property Visible: Boolean read GetVisible write SetVisible;
  end;

  TNXColumnClass = class of TNXColumn;

  TNXDBGridColumnsState = (csDefault, csCustomized);

  TNXDBGridColumns = class(TCollection)
  private
    FGrid: TNXCustomDBGrid;
    function GetColumn(Index: Integer): TNXColumn;
    function InternalAdd: TNXColumn;
    procedure SetColumn(Index: Integer; Value: TNXColumn);
    procedure SetState(NewState: TNXDBGridColumnsState);
    function GetState: TNXDBGridColumnsState;
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(Grid: TNXCustomDBGrid; ColumnClass: TNXColumnClass);
    function Add: TNXColumn;
    procedure LoadFromFile(const Filename: string);
    procedure LoadFromStream(S: TStream);
    procedure RestoreDefaults;
    procedure RebuildColumns;
    procedure SaveToFile(const Filename: string);
    procedure SaveToStream(S: TStream);
    property State: TNXDBGridColumnsState read GetState write SetState;
    property Grid: TNXCustomDBGrid read FGrid;
    property Items[Index: Integer]: TNXColumn read GetColumn
    write SetColumn; default;
  end;

  TNXGridDataLink = class(TDataLink)
  private
    FGrid: TNXCustomDBGrid;
    FFieldCount: Integer;
    FFieldMap: array of Integer;
    FModified: Boolean;
    FInUpdateData: Boolean;
    FSparseMap: Boolean;
    function GetDefaultFields: Boolean;
    function GetFields(I: Integer): TField;
  protected
    procedure ActiveChanged; override;
    procedure BuildAggMap;
    procedure DataSetChanged; override;
    procedure DataSetScrolled(Distance: Integer); override;
    procedure FocusControl(Field: TFieldRef); override;
    procedure EditingChanged; override;
    function IsAggRow(Value: Integer): Boolean; virtual;
    procedure LayoutChanged; override;
    procedure RecordChanged(Field: TField); override;
    procedure UpdateData; override;
    function GetMappedIndex(ColIndex: Integer): Integer;
  public
    constructor Create(AGrid: TNXCustomDBGrid);
    destructor Destroy; override;
    function AddMapping(const FieldName: string): Boolean;
    procedure ClearMapping;
    procedure Modified;
    procedure Reset;
    property DefaultFields: Boolean read GetDefaultFields;
    property FieldCount: Integer read FFieldCount;
    property Fields[I: Integer]: TField read GetFields;
    property SparseMap: Boolean read FSparseMap write FSparseMap;
  end;

  TNXBookmarkList = class
  private
    FList: TStringList;
    FGrid: TNXCustomDBGrid;
    FCache: TBookmarkStr;
    FCacheIndex: Integer;
    FCacheFind: Boolean;
    FLinkActive: Boolean;
    function GetCount: Integer;
    function GetCurrentRowSelected: Boolean;
    function GetItem(Index: Integer): TBookmarkStr;
    procedure SetCurrentRowSelected(Value: Boolean);
    procedure StringsChanged(Sender: TObject);
  protected
    function CurrentRow: TBookmarkStr;
    function Compare(const Item1, Item2: TBookmarkStr): Integer;
    procedure LinkActive(Value: Boolean);
  public
    constructor Create(AGrid: TNXCustomDBGrid);
    destructor Destroy; override;
    procedure Clear;
    procedure Delete;
    function Find(const Item: TBookmarkStr; var Index: Integer): Boolean;
    function IndexOf(const Item: TBookmarkStr): Integer;
    function Refresh: Boolean;
    property Count: Integer read GetCount;
    property CurrentRowSelected: Boolean read GetCurrentRowSelected
     write SetCurrentRowSelected;
    property Items[Index: Integer]: TBookmarkStr read GetItem; default;
  end;

  TNXDBGridOption = (dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator,
   dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect,
   dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect);
  TNXDBGridOptions = set of TNXDBGridOption;

  TDrawDataCellEvent = procedure(Sender: TObject; const Rect: TRect;
   Field: TField; State: TGridDrawState) of object;

  TDrawColumnCellEvent = procedure(Sender: TObject; const Rect: TRect;
   DataCol: Integer; Column: TNXColumn; State: TGridDrawState) of object;
  TDBGridClickEvent = procedure(Column: TNXColumn) of object;

  TNXCustomDBGrid = class(TCustomGrid)
  private
    FIndicators: TImageList;
    FConvIndicators: TImageList;
    FTitleFont: TFont;
    FReadOnly: Boolean;
    FOriginalImeName: TImeName;
    FOriginalImeMode: TImeMode;
    FUserChange: Boolean;
    FIsESCKey: Boolean;
    FLayoutFromDataset: Boolean;
    FOptions: TNXDBGridOptions;
    FTitleOffset, FIndicatorOffset: Byte;
    FUpdateLock: Byte;
    FLayoutLock: Byte;
    FInColExit: Boolean;
    FDefaultDrawing: Boolean;
    FSelfChangingTitleFont: Boolean;
    FSelecting: Boolean;
    FSelRow: Integer;
    FDataLink: TNXGridDataLink;
    FOnColEnter: TNotifyEvent;
    FOnColExit: TNotifyEvent;
    FOnDrawDataCell: TDrawDataCellEvent;
    FOnDrawColumnCell: TDrawColumnCellEvent;
    FEditText: string;
    FColumns: TNXDBGridColumns;
    FVisibleColumns: TList;
    FBookmarks: TNXBookmarkList;
    FSelectionAnchor: TBookmarkStr;
    FOnEditButtonClick: TNotifyEvent;
    FOnColumnMoved: TMovedEvent;
    FOnCellClick: TDBGridClickEvent;
    FOnTitleClick: TDBGridClickEvent;
    FDragCol: TNXColumn;
    FTransformed: Boolean;
    FSizingIndex: Integer;
    function AcquireFocus: Boolean;
    procedure DataChanged;
    procedure EditingChanged;
    function GetDataSource: TDataSource;
    function GetFieldCount: Integer;
    function GetFields(FieldIndex: Integer): TField;
    function GetSelectedField: TField;
    function GetSelectedIndex: Integer;
    procedure InternalLayout;
    procedure MoveCol(RawCol, Direction: Integer);
    function PtInExpandButton(X, Y: Integer; var MasterCol: TNXColumn): Boolean;
    procedure ReadColumns(Reader: TReader);
    procedure RecordChanged(Field: TField);
    procedure SetIme;
    procedure SetColumns(Value: TNXDBGridColumns);
    procedure SetTransformed(Value: Boolean);
    procedure SetDataSource(Value: TDataSource);
    procedure SetOptions(Value: TNXDBGridOptions);
    procedure SetSelectedField(Value: TField);
    procedure SetSelectedIndex(Value: Integer);
    procedure SetTitleFont(Value: TFont);
    procedure TitleFontChanged(Sender: TObject);
    procedure UpdateData;
    procedure UpdateActive;
    procedure UpdateIme;
    procedure UpdateScrollBar;
    procedure UpdateRowCount;
    procedure WriteColumns(Writer: TWriter);
    procedure CMBiDiModeChanged(var Message: TMessage);
     message CM_BIDIMODECHANGED;
    procedure CMExit(var Message: TMessage); message CM_EXIT;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMParentFontChanged(var Message: TMessage);
     message CM_PARENTFONTCHANGED;
    procedure CMDeferLayout(var Message); message cm_DeferLayout;
    procedure CMDesignHitTest(var Msg: TCMDesignHitTest);
     message CM_DESIGNHITTEST;
    procedure WMSetCursor(var Msg: TWMSetCursor); message WM_SETCURSOR;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMVScroll(var Message: TWMVScroll); message WM_VSCROLL;
    procedure WMHScroll(var Message: TWMHScroll); message WM_HSCROLL;
    procedure WMIMEStartComp(var Message: TMessage);
     message WM_IME_STARTCOMPOSITION;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SetFOCUS;
    procedure WMKillFocus(var Message: TMessage); message WM_KillFocus;
  protected
    FUpdateFields: Boolean;
    FAcquireFocus: Boolean;
    function RawToDataColumn(ACol: Integer): Integer;
    function DataToRawColumn(ACol: Integer): Integer;
    function AcquireLayoutLock: Boolean;
    procedure BeginLayout;
    procedure BeginUpdate;
    procedure CalcSizingState(X, Y: Integer; var State: TGridState;
     var Index: Longint; var SizingPos, SizingOfs: Integer;
     var FixedInfo: TGridDrawInfo); override;
    procedure CancelLayout;
    function CanEditAcceptKey(Key: Char): Boolean; override;
    function CanEditModify: Boolean; override;
    function CanEditShow: Boolean; override;
    procedure CellClick(Column: TNXColumn); dynamic;
    procedure ColumnMoved(FromIndex, ToIndex: Longint); override;
    procedure RowMoved(FromIndex, ToIndex: Longint); override;
    function CalcTitleRect(Col: TNXColumn; ARow: Integer;
     var MasterCol: TNXColumn): TRect;
    function ColumnAtDepth(Col: TNXColumn; ADepth: Integer): TNXColumn;
    procedure ColEnter; dynamic;
    procedure ColExit; dynamic;
    procedure ColWidthsChanged; override;
    function CreateColumns: TNXDBGridColumns; dynamic;
    function CreateEditor: TInplaceEdit; override;
    procedure CreateWnd; override;
    procedure DeferLayout;
    procedure DefineFieldMap; virtual;
    procedure DefineProperties(Filer: TFiler); override;
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect;
     AState: TGridDrawState); override;
    procedure DrawDataCell(const Rect: TRect; Field: TField;
     State: TGridDrawState); dynamic;
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
     Column: TNXColumn; State: TGridDrawState); dynamic;
    procedure EditButtonClick; dynamic;
    procedure EndLayout;
    procedure EndUpdate;
    function GetColField(DataCol: Integer): TField;
    function GetEditLimit: Integer; override;
    function GetEditMask(ACol, ARow: Longint): string; override;
    function GetEditText(ACol, ARow: Longint): string; override;
    function GetFieldValue(ACol: Integer): string;
    function HighlightCell(DataCol, DataRow: Integer; const Value: string;
     AState: TGridDrawState): Boolean; virtual;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure InvalidateTitles;
    procedure LayoutChanged; virtual;
    procedure LinkActive(Value: Boolean); virtual;
    procedure Loaded; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
     X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
     X, Y: Integer); override;
    procedure Notification(AComponent: TComponent;
     Operation: TOperation); override;
    procedure Scroll(Distance: Integer); virtual;
    procedure SetColumnAttributes; virtual;
    procedure SetEditText(ACol, ARow: Longint; const Value: string); override;
    function StoreColumns: Boolean;
    procedure TimedScroll(Direction: TGridScrollDirection); override;
    procedure TitleClick(Column: TNXColumn); dynamic;
    procedure TopLeftChanged; override;
    function UseRightToLeftAlignmentForField(const AField: TField;
     Alignment: TAlignment): Boolean;
    function BeginColumnDrag(var Origin, Destination: Integer;
     const MousePt: TPoint): Boolean; override;
    function CheckColumnDrag(var Origin, Destination: Integer;
     const MousePt: TPoint): Boolean; override;
    function EndColumnDrag(var Origin, Destination: Integer;
     const MousePt: TPoint): Boolean; override;
    property Columns: TNXDBGridColumns read FColumns write SetColumns;
    property Transformed: Boolean read FTransformed write SetTransformed
     default False;
    property DefaultDrawing: Boolean read FDefaultDrawing write FDefaultDrawing
      default True;
    property DataLink: TNXGridDataLink read FDataLink;
    property IndicatorOffset: Byte read FIndicatorOffset;
    property LayoutLock: Byte read FLayoutLock;
    property Options: TNXDBGridOptions read FOptions write SetOptions
     default [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines,
     dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
    property ParentColor default False;
    property ReadOnly: Boolean read FReadOnly write FReadOnly default False;
    property SelectedRows: TNXBookmarkList read FBookmarks;
    property TitleFont: TFont read FTitleFont write SetTitleFont;
    property UpdateLock: Byte read FUpdateLock;
    property OnColEnter: TNotifyEvent read FOnColEnter write FOnColEnter;
    property OnColExit: TNotifyEvent read FOnColExit write FOnColExit;
    property OnDrawDataCell: TDrawDataCellEvent read FOnDrawDataCell
     write FOnDrawDataCell;
    property OnDrawColumnCell: TDrawColumnCellEvent read FOnDrawColumnCell
     write FOnDrawColumnCell;
    property OnEditButtonClick: TNotifyEvent read FOnEditButtonClick
     write FOnEditButtonClick;
    property OnColumnMoved: TMovedEvent read FOnColumnMoved
     write FOnColumnMoved;
    property OnCellClick: TDBGridClickEvent read FOnCellClick
     write FOnCellClick;
    property OnTitleClick: TDBGridClickEvent read FOnTitleClick
     write FOnTitleClick;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DefaultDrawDataCell(const Rect: TRect; Field: TField;
     State: TGridDrawState);
    procedure DefaultDrawColumnCell(const Rect: TRect; DataCol: Integer;
     Column: TNXColumn; State: TGridDrawState);
    procedure DefaultHandler(var Msg); override;
    function ExecuteAction(Action: TBasicAction): Boolean; override;
    procedure ShowPopupEditor(Column: TNXColumn; X: Integer = Low(Integer);
     Y: Integer = Low(Integer)); dynamic;
    function UpdateAction(Action: TBasicAction): Boolean; override;
    function ValidFieldIndex(FieldIndex: Integer): Boolean;
    property EditorMode;
    property FieldCount: Integer read GetFieldCount;
    property Fields[FieldIndex: Integer]: TField read GetFields;
    property SelectedField: TField read GetSelectedField write SetSelectedField;
    property SelectedIndex: Integer read GetSelectedIndex
     write SetSelectedIndex;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
  end;

  TNXDBGrid = class(TNXCustomDBGrid)
  public
    property Canvas;
    property SelectedRows;
  published
    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Columns stored False;
    property Constraints;
    property Transformed;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property FixedColor;
    property Font;
    property ImeMode;
    property ImeName;
    property Options;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property TitleFont;
    property Visible;
    property OnCellClick;
    property OnColEnter;
    property OnColExit;
    property OnColumnMoved;
    property OnDrawDataCell;
    property OnDrawColumnCell;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEditButtonClick;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
    property OnTitleClick;
  end;

const
  IndicatorWidth = 11;

procedure Register;

implementation

uses
  Math, DBConsts, Dialogs, ComCtrls, CommCtrl;

{$R *.RES}

const
  bmArrow = 'NXDBGARROW';
  bmEdit = 'NXDBEDIT';
  bmInsert = 'NXDBINSERT';
  bmMultiDot = 'NXDBMULTIDOT';
  bmMultiArrow = 'NXDBMULTIARROW';
  bmConvArrow = 'NXDBCONVGARROW';
  bmConvMultiArrow = 'NXDBCONVMULTIARROW';

  MaxMapSize = (MaxInt div 2) div SizeOf(Integer);

procedure RaiseGridError(const S: string);
begin
  raise EInvalidGridOperation.Create(S);
end;

procedure KillMessage(Wnd: HWnd; Msg: Integer);
var
  M: TMsg;
begin
  M.Message := 0;
  if PeekMessage(M, Wnd, Msg, Msg, pm_Remove) and (M.Message = WM_QUIT) then
    PostQuitMessage(M.wparam);
end;

{ TNXDBGridInplaceEdit }

const
  LongMonthNames: array[1..12] of string = ('января', 'феврапя', 'марта',
    'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября',
    'декабря');

type
  TEditStyle = (esSimple, esEllipsis, esPickList, esDataList, esDatePicker,
    esTimePicker, esDateTimePicker, esFloat, esInteger, esDatePickList,
    esTimePickList, esDateTimePickList, esFloatPickList, esIntegerPickList);
  TPopupListbox = class;
  TCalendar = class;

  TNXDBGridInplaceEdit = class(TInplaceEdit)
  private
    FButtonWidth: Integer;
    FDataList: TDBLookupListBox;
    FPickList: TPopupListbox;
    FActiveList: TWinControl;
    FLookupSource: TDatasource;
    FEditStyle: TEditStyle;
    FListVisible: Boolean;
    FTracking: Boolean;
    FPressed: Boolean;
    FSysDT: TSystemTime;
    FDateFmtArray: array of string;
    FTimeFmtArray: array of string;
    FDateTimeFmtArray: array of string;
    FDateValArray: array of string;
    FTimeValArray: array of string;
    FDateTimeValArray: array of string;
    FTempValArray: array of string;
    FIPos: Integer;
    FDblKeyPress: Boolean;
    FCalendar: TCalendar;
    procedure ListMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SetEditStyle(Value: TEditStyle);
    procedure StopTracking;
    procedure TrackButton(X, Y: Integer);
    procedure CMCancelMode(var Message: TCMCancelMode); message CM_CancelMode;
    procedure WMCancelMode(var Message: TMessage); message WM_CancelMode;
    procedure WMKillFocus(var Message: TMessage); message WM_KillFocus;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk);
      message wm_LButtonDblClk;
    procedure WMPaint(var Message: TWMPaint); message wm_Paint;
    procedure WMSetCursor(var Message: TWMSetCursor); message WM_SetCursor;
    function OverButton(const P: TPoint): Boolean;
    function ButtonRect: TRect;
    procedure FillDTFmtArray;
    procedure FillDTValArray;
    procedure FillDTTempValArray;
    function GetDTStrFromArray(TempArray: Boolean): string;
    procedure FindDTIPos;
    procedure DoFmtVal;
    procedure DoLongVal(IPos: Integer);
    procedure SelRangeByDTIPos(TempArray: Boolean);
    function CorrectDTVal(var SysDT: TSystemTime): Boolean;
    function SetCorrectDTVal(SysDT: TSystemTime): Boolean;
    function FillByCorrectDTValue: Boolean;
    procedure InitDTValArray(ADate: TDate; ATime: TTime);
    procedure StrToDT(const DT: string; var ADate: TDate; var ATime: TTime);
    function DayNumber(Day: string): Integer;
    function MonthNumber(Month: string): Integer;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure WMTimer(var Message: TWMTimer); message WM_TIMER;
    procedure WMContextMenu(var Message: TWMContextMenu);
      message WM_CONTEXTMENU;
  protected
    procedure BoundsChanged; override;
    procedure CloseUp(Accept: Boolean);
    procedure DoDropDownKeys(var Key: Word; Shift: TShiftState);
    procedure DropDown;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure KeyPress(var Key: Char); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure PaintWindow(DC: HDC); override;
    procedure UpdateContents; override;
    procedure WndProc(var Message: TMessage); override;
    property EditStyle: TEditStyle read FEditStyle write SetEditStyle;
    property ActiveList: TWinControl read FActiveList write FActiveList;
    property DataList: TDBLookupListBox read FDataList;
    property PickList: TPopupListbox read FPickList;
    property Calendar: TCalendar read FCalendar;
  public
    constructor Create(Owner: TComponent); override;
  end;

{ TPopupListbox }

  TPopupListBox = class(TCustomListbox)
  private
    FSearchText: string;
    FSearchTickCount: Longint;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure KeyPress(var Key: Char); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
      override;
  end;

{ TCalendar }

  TCalendar = class(TMonthCalendar)
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
     override;
  end;

{ TPopupListbox }

procedure TPopupListBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := Style or WS_BORDER;
    ExStyle := WS_EX_TOOLWINDOW or WS_EX_TOPMOST;
    AddBiDiModeExStyle(ExStyle);
    WindowClass.Style := CS_SAVEBITS;
  end;
end;

procedure TPopupListbox.CreateWnd;
begin
  inherited CreateWnd;
  Windows.SetParent(Handle, 0);
  CallWindowProc(DefWndProc, Handle, wm_SetFocus, 0, 0);
end;

procedure TPopupListbox.Keypress(var Key: Char);
var
  TickCount: Integer;
begin
  case Key of
    #8, #27: FSearchText := '';
    #32..#255:
      begin
        TickCount := GetTickCount;
        if TickCount - FSearchTickCount > 2000 then FSearchText := '';
        FSearchTickCount := TickCount;
        if Length(FSearchText) < 32 then FSearchText := FSearchText + Key;
        SendMessage(Handle, LB_SelectString, WORD(-1),
         Longint(PChar(FSearchText)));
        Key := #0;
      end;
  end;
  inherited Keypress(Key);
end;

procedure TPopupListbox.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited MouseUp(Button, Shift, X, Y);
  TNXDBGridInplaceEdit(Owner).CloseUp((X >= 0) and (Y >= 0) and
    (X < Width) and (Y < Height));
end;

{ TCalendar }

procedure TCalendar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := Style or WS_BORDER;
    ExStyle := WS_EX_TOOLWINDOW or WS_EX_TOPMOST;
    WindowClass.Style := CS_SAVEBITS;
  end;
end;

procedure TCalendar.CreateWnd;
begin
  inherited CreateWnd;
  Windows.SetParent(Handle, 0);
  CallWindowProc(DefWndProc, Handle, wm_SetFocus, 0, 0);
end;

procedure TCalendar.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var MCHInfo: TMCHitTestInfo;
begin
  inherited MouseUp(Button, Shift, X, Y);
  MCHInfo.cbSize := SizeOf(TMCHitTestInfo);
  MCHInfo.pt.x := X;
  MCHInfo.pt.y := Y;
  MonthCal_HitTest(Handle, MCHInfo);
  if ((MCHInfo.uHit and MCHT_CALENDARDATE) > 0)
   and (MCHInfo.uHit <> MCHT_CALENDARDAY)
   and (MCHInfo.uHit <> MCHT_TITLEBTNNEXT)
   and (MCHInfo.uHit <> MCHT_TITLEBTNPREV) then
    TNXDBGridInplaceEdit(Owner).CloseUp(True)
  else
    if (MCHInfo.uHit and MCHT_NOWHERE > 0) then
      TNXDBGridInplaceEdit(Owner).CloseUp(False)
    else
      if not ((X >= 0) and (Y >= 0) and (X < Width) and (Y < Height)) then
        TNXDBGridInplaceEdit(Owner).CloseUp(False);
end;

{ TNXDBGridInplaceEdit }

constructor TNXDBGridInplaceEdit.Create(Owner: TComponent);
begin
  inherited Create(Owner);
  FLookupSource := TDataSource.Create(Self);
  FButtonWidth := GetSystemMetrics(SM_CXVSCROLL);
  FEditStyle := esSimple;
  FIPos := -1;
  FDblKeyPress := False;
  FillDTFmtArray;
end;

procedure TNXDBGridInplaceEdit.BoundsChanged;
var
  R: TRect;
begin
  SetRect(R, 2, 2, Width - 2, Height);
  if not (FEditStyle in [esSimple, esTimePicker, esFloat, esInteger]) then
    if not TNXCustomDBGrid(Owner).UseRightToLeftAlignment then
      Dec(R.Right, FButtonWidth)
    else
      Inc(R.Left, FButtonWidth - 2);
  SendMessage(Handle, EM_SETRECTNP, 0, LongInt(@R));
  SendMessage(Handle, EM_SCROLLCARET, 0, 0);
  if SysLocale.FarEast then
    SetImeCompositionWindow(Font, R.Left, R.Top);
end;

procedure TNXDBGridInplaceEdit.CloseUp(Accept: Boolean);
var
  MasterField: TField;
  Value: Variant;
  ADate: TDate;
  ATime: TTime;
begin
  if FListVisible then
  begin
    if GetCapture <> 0 then
      SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
    if FActiveList = FDataList then
      Value := FDataList.KeyValue;
    if FActiveList = FPickList then
      if FPickList.ItemIndex <> -1 then
      begin
        case FEditStyle of
          esDatePickList:
            begin
              StrToDT(FPickList.Items[FPicklist.ItemIndex], ADate, ATime);
              Value := ADate;
            end;
          esTimePickList:
            begin
              StrToDT(FPickList.Items[FPicklist.ItemIndex], ADate, ATime);
              Value := ATime;
            end;
          esDateTimePickList:
            begin
              StrToDT(FPickList.Items[FPicklist.ItemIndex], ADate, ATime);
              Value := VarFromDateTime(ADate + ATime);
            end;
        else
          Value := FPickList.Items[FPicklist.ItemIndex];
        end;
      end;
    if FActiveList = FCalendar then
      if FEditStyle in [esDateTimePicker, esDateTimePickList] then
      begin
        if Text <> '' then
        begin
          StrToDT(Text, ADate, ATime);
          Value := VarFromDateTime(FCalendar.Date + ATime);
        end
        else
          Value := VarFromDateTime(FCalendar.Date);
      end
      else
      begin
        Value := FCalendar.Date;
      end;
    SetWindowPos(FActiveList.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);
    FListVisible := False;
    if Assigned(FDataList) then
      FDataList.ListSource := nil;
    FLookupSource.DataSet := nil;
    Invalidate;
    if Accept then
      if FActiveList = FDataList then
        with TNXCustomDBGrid(Grid), Columns[SelectedIndex].Field do
        begin
          MasterField := DataSet.FieldByName(KeyFields);
          if MasterField.CanModify and FDataLink.Edit then
            MasterField.Value := Value;
        end
      else
        if (not VarIsNull(Value)) and EditCanModify then
          with TNXCustomDBGrid(Grid) do
          begin
            Text := Value;
            Columns[SelectedIndex].Field.Value := Value;
          end;
  end;
end;

procedure TNXDBGridInplaceEdit.DoDropDownKeys(var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP, VK_DOWN:
      if ssAlt in Shift then
      begin
        if FListVisible then CloseUp(True) else DropDown;
        Key := 0;
      end;
    VK_RETURN, VK_ESCAPE:
      if FListVisible and not (ssAlt in Shift) then
      begin
        CloseUp(Key = VK_RETURN);
        Key := 0;
      end;
  end;
end;

procedure TNXDBGridInplaceEdit.DropDown;
var
  P: TPoint;
  I, J, Y: Integer;
  Column: TNXColumn;
  R: TRect;
  ADate: TDate;
  ATime: TTime;
begin
  if not FListVisible and Assigned(FActiveList) then
  begin
    FActiveList.Width := Width;
    with TNXCustomDBGrid(Grid) do
      Column := Columns[SelectedIndex];
    if FActiveList = FDataList then
      with Column.Field do
      begin
        FDataList.Color := Color;
        FDataList.Font := Font;
        FDataList.RowCount := Column.DropDownRows;
        FLookupSource.DataSet := LookupDataSet;
        FDataList.KeyField := LookupKeyFields;
        FDataList.ListField := LookupResultField;
        FDataList.ListSource := FLookupSource;
        FDataList.KeyValue := DataSet.FieldByName(KeyFields).Value;
        J := Column.DefaultWidth;
        if J > FDataList.ClientWidth then
          FDataList.ClientWidth := J;
      end;
    if FActiveList = FPickList then
    begin
      FPickList.Color := Color;
      FPickList.Font := Font;
      FPickList.Items := Column.Picklist;
      if FPickList.Items.Count >= Integer(Column.DropDownRows) then
        FPickList.Height :=
         Integer(Column.DropDownRows) * FPickList.ItemHeight + 4
      else
        FPickList.Height := FPickList.Items.Count * FPickList.ItemHeight + 4;
      if Column.Field.IsNull then
        FPickList.ItemIndex := -1
      else
        FPickList.ItemIndex :=
         FPickList.Items.IndexOf(VarToStr(Column.Field.Value));
      J := FPickList.ClientWidth;
      for I := 0 to FPickList.Items.Count - 1 do
      begin
        Y := FPickList.Canvas.TextWidth(FPickList.Items[I]);
        if Y > J then J := Y;
      end;
      FPickList.ClientWidth := J;
    end;
    if FActiveList = FCalendar then
    begin
      FCalendar.Color := Color;
      FCalendar.Font := Font;
      if Text = '' then
        FCalendar.Date := Date
      else
      begin
        StrToDT(Text, ADate, ATime);
        FCalendar.Date := ADate;
      end;
      MonthCal_GetMinReqRect(FCalendar.Handle, R);
      FCalendar.Width := R.Right - R.Left;
      FCalendar.Height := R.Bottom - R.Top;
    end;
    P := Parent.ClientToScreen(Point(Left, Top));
    Y := P.Y + Height;
    if Y + FActiveList.Height > Screen.Height then
      Y := P.Y - FActiveList.Height;
    SetWindowPos(FActiveList.Handle, HWND_TOP, P.X, Y, 0, 0,
     SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW);
    FListVisible := True;
    Invalidate;
    Windows.SetFocus(Handle);
  end;
end;

type
  TWinControlCracker = class(TWinControl) end;

procedure TNXDBGridInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
var
  Value: string;

  function _MaxDayOfMonth: Word;
  var
    OldSysDT: TSystemTime;
    Year, Month: Word;
  begin
    OldSysDT := FSysDT;
    if OldSysDT.wMonth < 12 then
      Inc(OldSysDT.wMonth)
    else
      OldSysDT.wMonth := 1;
    if OldSysDT.wMonth = 1 then
      Inc(OldSysDT.wYear);
    DecodeDate(EncodeDate(OldSysDT.wYear, OldSysDT.wMonth, 1) -
      EncodeTime(0, 1, 0, 0), Year, Month, Result);
  end;

  procedure _MoveToLeft(FmtArray, ValArray: array of string);
  begin
    repeat
      if Low(ValArray) < FIPos then
        Dec(FIPos)
      else
        FIPos := High(ValArray);
    until (FmtArray[FIPos][1] in ['M', 'y', 'H', 'h', 'm', 's', 't']) or
      ((FmtArray[FIPos][1] = 'd') and (Length(FmtArray[FIPos]) < 3))
  end;

  procedure _MoveToRight(FmtArray, ValArray: array of string);
  begin
    repeat
      if High(ValArray) > FIPos then
        Inc(FIPos)
      else
        FIPos := 0;
    until (FmtArray[FIPos][1] in ['M', 'y', 'H', 'h', 'm', 's', 't']) or
      ((FmtArray[FIPos][1] = 'd') and (Length(FmtArray[FIPos]) < 3))
  end;

  procedure _DoNextVal(FmtArray: array of string);
  begin
    if FmtArray[FIPos][1] = 'd' then begin
      if FSysDT.wDay < _MaxDayOfMonth then
        Inc(FSysDT.wDay)
      else
        FSysDT.wDay := 1;
      FSysDT.wDayOfWeek := DayOfWeek(EncodeDate(
        FSysDT.wYear, FSysDT.wMonth, FSysDT.wDay));
    end;
    if FmtArray[FIPos][1] = 'M' then begin
      if FSysDT.wMonth < 12 then
        Inc(FSysDT.wMonth)
      else
        FSysDT.wMonth := 1;
      if _MaxDayOfMonth < FSysDT.wDay then
        FSysDT.wDay := _MaxDayOfMonth;
      FSysDT.wDayOfWeek := DayOfWeek(EncodeDate(
        FSysDT.wYear, FSysDT.wMonth, FSysDT.wDay));
    end;
    if FmtArray[FIPos][1] = 'y' then begin
      Inc(FSysDT.wYear);
      if _MaxDayOfMonth < FSysDT.wDay then
        FSysDT.wDay := _MaxDayOfMonth;
      FSysDT.wDayOfWeek := DayOfWeek(EncodeDate(
        FSysDT.wYear, FSysDT.wMonth, FSysDT.wDay));
    end;
    if FmtArray[FIPos][1] in ['H', 'h'] then begin
      if FSysDT.wHour < 23 then
        Inc(FSysDT.wHour)
      else
        FSysDT.wHour := 0;
    end;
    if FmtArray[FIPos][1] = 'm' then begin
      if FSysDT.wMinute < 59 then
        Inc(FSysDT.wMinute)
      else
        FSysDT.wMinute := 0;
    end;
    if FmtArray[FIPos][1] = 's' then begin
      if FSysDT.wSecond < 59 then
        Inc(FSysDT.wSecond)
      else
        FSysDT.wSecond := 0;
    end;
    if FmtArray[FIPos][1] = 't' then begin
      if FSysDT.wHour < 12 then
        FSysDT.wHour := FSysDT.wHour + 12
      else
        FSysDT.wHour := FSysDT.wHour - 12;
    end;
  end;

  procedure _DoPriorVal(FmtArray: array of string);
  begin
    if FmtArray[FIPos][1] = 'd' then begin
      if FSysDT.wDay > 1 then
        Dec(FSysDT.wDay)
      else
        FSysDT.wDay := _MaxDayOfMonth;
      FSysDT.wDayOfWeek := DayOfWeek(EncodeDate(
        FSysDT.wYear, FSysDT.wMonth, FSysDT.wDay));
    end;
    if FmtArray[FIPos][1] = 'M' then begin
      if FSysDT.wMonth > 1 then
        Dec(FSysDT.wMonth)
      else
        FSysDT.wMonth := 12;
      if _MaxDayOfMonth < FSysDT.wDay then
        FSysDT.wDay := _MaxDayOfMonth;
      FSysDT.wDayOfWeek := DayOfWeek(EncodeDate(
        FSysDT.wYear, FSysDT.wMonth, FSysDT.wDay));
    end;
    if FmtArray[FIPos][1] = 'y' then begin
      Dec(FSysDT.wYear);
      if _MaxDayOfMonth < FSysDT.wDay then
        FSysDT.wDay := _MaxDayOfMonth;
      FSysDT.wDayOfWeek := DayOfWeek(EncodeDate(
        FSysDT.wYear, FSysDT.wMonth, FSysDT.wDay));
    end;
    if FmtArray[FIPos][1] in ['H', 'h'] then begin
      if FSysDT.wHour > 0 then
        Dec(FSysDT.wHour)
      else
        FSysDT.wHour := 23;
    end;
    if FmtArray[FIPos][1] = 'm' then begin
      if FSysDT.wMinute > 0 then
        Dec(FSysDT.wMinute)
      else
        FSysDT.wMinute := 59;
    end;
    if FmtArray[FIPos][1] = 's' then begin
      if FSysDT.wSecond > 0 then
        Dec(FSysDT.wSecond)
      else
        FSysDT.wSecond := 59;
    end;
    if FmtArray[FIPos][1] = 't' then begin
      if FSysDT.wHour < 12 then
        FSysDT.wHour := FSysDT.wHour + 12
      else
        FSysDT.wHour := FSysDT.wHour - 12;
    end;
  end;

begin
  if EditStyle in [esDatePicker, esTimePicker, esDateTimePicker,
   esDatePickList, esTimePickList, esDateTimePickList] then
  begin
    if (Key in [VK_LEFT, VK_RIGHT {, VK_UP, VK_DOWN}])
     and not (ssShift in Shift) and (Text <> '') then
    begin
      case Key of
        VK_LEFT:
          begin
            FillByCorrectDTValue;
            DoFmtVal;
            if EditStyle in [esDatePicker, esDatePickList] then
              _MoveToLeft(FDateFmtArray, FDateValArray);
            if EditStyle in [esTimePicker, esTimePickList] then
              _MoveToLeft(FTimeFmtArray, FTimeValArray);
            if EditStyle in [esDateTimePicker, esDateTimePickList] then
              _MoveToLeft(FDateTimeFmtArray, FDateTimeValArray);
          end;
        VK_RIGHT:
          begin
            FillByCorrectDTValue;
            DoFmtVal;
            if EditStyle in [esDatePicker, esDatePickList] then
              _MoveToRight(FDateFmtArray, FDateValArray);
            if EditStyle in [esTimePicker, esTimePickList] then
              _MoveToRight(FTimeFmtArray, FTimeValArray);
            if EditStyle in [esDateTimePicker, esDateTimePickList] then
              _MoveToRight(FDateTimeFmtArray, FDateTimeValArray);
          end;
        VK_UP:
          begin
            if EditStyle in [esDatePicker, esDatePickList] then
              _DoNextVal(FDateFmtArray);
            if EditStyle in [esTimePicker, esTimePickList] then
              _DoNextVal(FTimeFmtArray);
            if EditStyle in [esDateTimePicker, esDateTimePickList] then
              _DoNextVal(FDateTimeFmtArray);
            FillDTValArray;
          end;
        VK_DOWN:
          begin
            if EditStyle in [esDatePicker, esDatePickList] then
              _DoPriorVal(FDateFmtArray);
            if EditStyle in [esTimePicker, esTimePickList] then
              _DoPriorVal(FTimeFmtArray);
            if EditStyle in [esDateTimePicker, esDateTimePickList] then
              _DoPriorVal(FDateTimeFmtArray);
            FillDTValArray;
          end;
      end;
      DoLongVal(FIPos);
      Text := GetDTStrFromArray(False);
      SelRangeByDTIPos(False);
      if TNXCustomDBGrid(Grid).CanEditModify then
      begin
        Value := Text;
        with TNXCustomDBGrid(Grid) do
          SetEditText(Col, Row, Value);
      end;
      Abort;
    end;
    if (Key in [VK_HOME, VK_END]) and (ssShift in Shift) then
    begin
      SelStart := 0;
      SelLength := Length(Text);
      Abort;
    end;
    if (Key = VK_DELETE) and not (ssShift in Shift)
     and (SelLength = Length(Text)) then
    begin
      ClearSelection;
      Abort;
    end;
    if (Key in [VK_HOME, VK_END, VK_BACK, VK_DELETE])
     and not (ssShift in Shift) then
      Abort;
  end;
  if (EditStyle = esEllipsis) and (Key = VK_RETURN) and (Shift = [ssCtrl]) then
  begin
    TNXCustomDBGrid(Grid).EditButtonClick;
    KillMessage(Handle, WM_CHAR);
  end
  else
    inherited KeyDown(Key, Shift);
end;

procedure TNXDBGridInplaceEdit.ListMouseUp(Sender: TObject;
 Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    CloseUp(PtInRect(FActiveList.ClientRect, Point(X, Y)));
end;

procedure TNXDBGridInplaceEdit.MouseDown(Button: TMouseButton;
 Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft)
   and not (FEditStyle in [esSimple, esTimePicker, esFloat, esInteger])
   and OverButton(Point(X, Y)) then
  begin
    if FListVisible then
      CloseUp(False)
    else
    begin
      MouseCapture := True;
      FTracking := True;
      TrackButton(X, Y);
      if Assigned(FActiveList) then
        DropDown;
    end;
  end;
  inherited MouseDown(Button, Shift, X, Y);
  if FEditStyle in [esDatePicker, esTimePicker, esDateTimePicker,
   esDatePickList, esTimePickList, esDateTimePickList] then
  begin
    if not ((SelStart = 0) and (SelLength = Length(Text))) then
    begin
      FindDTIPos;
      DoFmtVal;
      FillByCorrectDTValue;
      Text := GetDTStrFromArray(False);
      SelRangeByDTIPos(False);
    end;
    Abort;
  end;
end;

procedure TNXDBGridInplaceEdit.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  ListPos: TPoint;
  MousePos: TSmallPoint;
begin
  Cursor := crArrow;
  if FTracking then
  begin
    TrackButton(X, Y);
    if FListVisible then
    begin
      ListPos := FActiveList.ScreenToClient(ClientToScreen(Point(X, Y)));
      if PtInRect(FActiveList.ClientRect, ListPos) then
      begin
        StopTracking;
        MousePos := PointToSmallPoint(ListPos);
        SendMessage(FActiveList.Handle, WM_LBUTTONDOWN, 0, Integer(MousePos));
        Exit;
      end;
    end;
  end;
  inherited MouseMove(Shift, X, Y);
end;

procedure TNXDBGridInplaceEdit.MouseUp(Button: TMouseButton; Shift: TShiftState;
 X, Y: Integer);
var
  WasPressed: Boolean;
begin
  WasPressed := FPressed;
  StopTracking;
  if (Button = mbLeft) and (FEditStyle = esEllipsis) and WasPressed then
    TNXCustomDBGrid(Grid).EditButtonClick;
  inherited MouseUp(Button, Shift, X, Y);
end;

procedure TNXDBGridInplaceEdit.PaintWindow(DC: HDC);
var
  R: TRect;
  Flags: Integer;
  W, X, Y: Integer;
begin
  if not (FEditStyle in [esSimple, esTimePicker, esFloat, esInteger]) then
  begin
    R := ButtonRect;
    Flags := 0;
    if FEditStyle in [esDataList, esPickList, esDatePicker,
      esDateTimePicker, esDatePickList, esTimePickList, esDateTimePickList,
      esFloatPickList, esIntegerPickList] then
    begin
      if FActiveList = nil then
        Flags := DFCS_INACTIVE
      else
        if FPressed then
          Flags := DFCS_FLAT or DFCS_PUSHED;
      DrawFrameControl(DC, R, DFC_SCROLL, Flags or DFCS_SCROLLCOMBOBOX);
    end
    else
    begin
      if FPressed then
        Flags := BF_FLAT;
      DrawEdge(DC, R, EDGE_RAISED, BF_RECT or BF_MIDDLE or Flags);
      X := R.Left + ((R.Right - R.Left) shr 1) - 1 + Ord(FPressed);
      Y := R.Top + ((R.Bottom - R.Top) shr 1) - 1 + Ord(FPressed);
      W := FButtonWidth shr 3;
      if W = 0 then W := 1;
      PatBlt(DC, X, Y, W, W, BLACKNESS);
      PatBlt(DC, X - (W * 2), Y, W, W, BLACKNESS);
      PatBlt(DC, X + (W * 2), Y, W, W, BLACKNESS);
    end;
    ExcludeClipRect(DC, R.Left, R.Top, R.Right, R.Bottom);
  end;
  inherited PaintWindow(DC);
end;

procedure TNXDBGridInplaceEdit.SetEditStyle(Value: TEditStyle);
begin
  if Value = FEditStyle then Exit;
  FEditStyle := Value;
  case Value of
    esPickList,
    esDatePickList, esTimePickList, esDateTimePickList,
    esFloatPickList, esIntegerPickList:
      begin
        if FPickList = nil then
        begin
          FPickList := TPopupListbox.Create(Self);
          FPickList.Visible := False;
          FPickList.Parent := Self;
          FPickList.OnMouseUp := ListMouseUp;
          FPickList.IntegralHeight := True;
          FPickList.ItemHeight := 11;
        end;
        FActiveList := FPickList;
      end;
    esDataList:
      begin
        if FDataList = nil then
        begin
          FDataList := TPopupDataList.Create(Self);
          FDataList.Visible := False;
          FDataList.Parent := Self;
          FDataList.OnMouseUp := ListMouseUp;
        end;
        FActiveList := FDataList;
      end;
    esDatePicker, esDateTimePicker:
      begin
        if FCalendar = nil then
        begin
          FCalendar := TCalendar.Create(Self);
          FCalendar.Visible := False;
          FCalendar.Parent := Self;
        end;
        FActiveList := FCalendar;
      end;
  else
    FActiveList := nil;
  end;
  with TNXCustomDBGrid(Grid) do
    Self.ReadOnly := Columns[SelectedIndex].ReadOnly;
  Repaint;
end;

procedure TNXDBGridInplaceEdit.StopTracking;
begin
  if FTracking then
  begin
    TrackButton(-1, -1);
    FTracking := False;
    MouseCapture := False;
  end;
end;

procedure TNXDBGridInplaceEdit.TrackButton(X, Y: Integer);
var
  NewState: Boolean;
  R: TRect;
begin
  R := ButtonRect;
  NewState := PtInRect(R, Point(X, Y));
  if FPressed <> NewState then
  begin
    FPressed := NewState;
    InvalidateRect(Handle, @R, False);
  end;
end;

procedure TNXDBGridInplaceEdit.UpdateContents;
var
  Column: TNXColumn;
  NewStyle: TEditStyle;
  MasterField: TField;
begin
  with TNXCustomDBGrid(Grid) do
    Column := Columns[SelectedIndex];
  NewStyle := esSimple;
  case Column.ButtonStyle of
    cbsEllipsis: NewStyle := esEllipsis;
    cbsAuto:
      if Assigned(Column.Field) then
        with Column.Field do
        begin
          if FieldKind = fkLookup then
          begin
            MasterField := Dataset.FieldByName(KeyFields);
            if Assigned(MasterField) and MasterField.CanModify
             and not ((cvReadOnly in Column.AssignedValues)
             and Column.ReadOnly) then
               with TNXCustomDBGrid(Grid) do
                 if not ReadOnly and DataLink.Active
                  and not Datalink.ReadOnly then
                   NewStyle := esDataList
                 end
                 else
                   if Assigned(Column.Picklist)
                    and (Column.PickList.Count > 0)
                    and not Column.ReadOnly then
                   begin
                     NewStyle := esPickList;
                     if DataType in [ftDate] then
                       NewStyle := esDatePickList;
                     if DataType in [ftTime] then
                       NewStyle := esTimePickList;
                     if DataType in [ftDateTime] then
                       NewStyle := esDateTimePickList;
                     if DataType in [ftFloat] then
                       NewStyle := esFloatPickList;
                     if DataType in [ftInteger] then
                       NewStyle := esIntegerPickList;
                   end
                   else
                   begin
                     if DataType in [ftDataset, ftReference] then
                       NewStyle := esEllipsis;
                     if (DataType in [ftDate]) and not Column.ReadOnly then
                       NewStyle := esDatePicker;
                     if (DataType in [ftTime]) and not Column.ReadOnly then
                       NewStyle := esTimePicker;
                     if (DataType in [ftDateTime]) and not Column.ReadOnly then
                       NewStyle := esDateTimePicker;
                     if (DataType in [ftFloat]) and not Column.ReadOnly then
                       NewStyle := esFloat;
                     if (DataType in [ftInteger]) and not Column.ReadOnly then
                       NewStyle := esInteger;
                   end;
          end;
    cbsDate:
      NewStyle := esDatePicker;
    cbsTime:
      NewStyle := esTimePicker;
    cbsDateTime:
      NewStyle := esDateTimePicker;
    cbsFloat:
      NewStyle := esFloat;
    cbsInteger:
      NewStyle := esInteger;
  end;
  EditStyle := NewStyle;
  inherited UpdateContents;
  Font.Assign(Column.Font);
  ImeMode := Column.ImeMode;
  ImeName := Column.ImeName;
end;

procedure TNXDBGridInplaceEdit.CMCancelMode(var Message: TCMCancelMode);
begin
  if (Message.Sender <> Self) and (Message.Sender <> FActiveList) then
    CloseUp(False);
end;

procedure TNXDBGridInplaceEdit.WMCancelMode(var Message: TMessage);
begin
  StopTracking;
  inherited;
end;

procedure TNXDBGridInplaceEdit.WMKillFocus(var Message: TMessage);
begin
  if not SysLocale.FarEast then
    inherited
  else
  begin
    ImeName := Screen.DefaultIme;
    ImeMode := imDontCare;
    inherited;
    if HWND(Message.WParam) <> TNXCustomDBGrid(Grid).Handle then
      ActivateKeyboardLayout(Screen.DefaultKbLayout, KLF_ACTIVATE);
  end;
  CloseUp(False);
end;

function TNXDBGridInplaceEdit.ButtonRect: TRect;
begin
  if not TNXCustomDBGrid(Owner).UseRightToLeftAlignment then
    Result := Rect(Width - FButtonWidth, 0, Width, Height)
  else
    Result := Rect(0, 0, FButtonWidth, Height);
end;

function TNXDBGridInplaceEdit.OverButton(const P: TPoint): Boolean;
begin
  Result := PtInRect(ButtonRect, P);
end;

procedure TNXDBGridInplaceEdit.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  with Message do
    if not (FEditStyle in [esSimple, esTimePicker, esFloat, esInteger])
     and OverButton(Point(XPos, YPos)) then
      Exit;
  inherited;
end;

procedure TNXDBGridInplaceEdit.WMPaint(var Message: TWMPaint);
begin
  PaintHandler(Message);
end;

procedure TNXDBGridInplaceEdit.WMSetCursor(var Message: TWMSetCursor);
var
  P: TPoint;
begin
  GetCursorPos(P);
  P := ScreenToClient(P);
  if not (FEditStyle in [esSimple, esTimePicker, esFloat, esInteger])
   and OverButton(P) then
    Windows.SetCursor(LoadCursor(0, idc_Arrow))
  else
    inherited;
end;

procedure TNXDBGridInplaceEdit.WndProc(var Message: TMessage);
begin
  case Message.Msg of
    wm_KeyDown, wm_SysKeyDown, wm_Char:
      if FEditStyle in [esDataList, esPickList, esDatePicker,
       esDateTimePicker, esDatePickList, esTimePickList, esDateTimePickList,
       esFloatPickList, esIntegerPickList] then
        with TWMKey(Message) do
        begin
          DoDropDownKeys(CharCode, KeyDataToShiftState(KeyData));
          if (CharCode <> 0) and FListVisible then
          begin
            with TMessage(Message) do
              SendMessage(FActiveList.Handle, Msg, WParam, LParam);
            Exit;
          end;
        end;
  end;
  inherited;
end;

procedure TNXDBGridInplaceEdit.FillDTFmtArray;
var
  P, I: Integer;
  SShortDate, STimeFmt: string;
begin
{
  SShortDate := GetLocaleStr(GetThreadLocale, LOCALE_SSHORTDATE, 'dd.MM.yyyy');
}
  SShortDate := ShortDateFormat;
  if Length(SShortDate) > 0 then
    SetLength(FDateFmtArray, 1);
  for I := 1 to Length(SShortDate) do
  begin
    FDateFmtArray[High(FDateFmtArray)] := FDateFmtArray[High(FDateFmtArray)] +
      SShortDate[I];
    if SShortDate[I] in ['d', 'M', 'y'] then
    begin
      if (SShortDate[I] <> SShortDate[I + 1]) and
        (I < Length(SShortDate)) then
        SetLength(FDateFmtArray, High(FDateFmtArray) + 2);
    end
    else begin
      if (SShortDate[I + 1] in ['d', 'M', 'y']) and
        (I < Length(SShortDate)) then
        SetLength(FDateFmtArray, High(FDateFmtArray) + 2);
    end;
  end;
{
  STimeFmt := GetLocaleStr(GetThreadLocale, LOCALE_STIMEFORMAT, 'H:mm:ss');
}
  STimeFmt := LongTimeFormat;
  P := Pos('AMPM', LongTimeFormat);
  if P > 0 then begin
    Delete(STimeFmt, P, 4);
    Insert('tt', STimeFmt, P);
  end
  else begin
    while Pos('h', STimeFmt) > 0 do
    begin
      P := Pos('h', STimeFmt);
      Delete(STimeFmt, P, 1);
      Insert('H', STimeFmt, P);
    end;
  end;
  if Length(STimeFmt) > 0 then
    SetLength(FTimeFmtArray, 1);
  for I := 1 to Length(STimeFmt) do
  begin
    FTimeFmtArray[High(FTimeFmtArray)] := FTimeFmtArray[High(FTimeFmtArray)] +
     STimeFmt[I];
    if STimeFmt[I] in ['H', 'h', 'm', 's', 't'] then begin
      if (STimeFmt[I] <> STimeFmt[I + 1])
       and (I < Length(STimeFmt)) then
        SetLength(FTimeFmtArray, High(FTimeFmtArray) + 2);
    end
    else
    begin
      if (STimeFmt[I + 1] in ['H', 'h', 'm', 's', 't'])
       and (I < Length(STimeFmt)) then
        SetLength(FTimeFmtArray, High(FTimeFmtArray) + 2);
    end;
  end;
  SetLength(FDateTimeFmtArray, High(FDateFmtArray) + High(FTimeFmtArray) + 3);
  for I := Low(FDateTimeFmtArray) to High(FDateTimeFmtArray) do
  begin
    if I - 1 < High(FDateFmtArray) then
      FDateTimeFmtArray[I] := FDateFmtArray[I];
    if I - 1 = High(FDateFmtArray) then
      FDateTimeFmtArray[I] := ' ';
    if I - 1 > High(FDateFmtArray) then
      FDateTimeFmtArray[I] := FTimeFmtArray[I - High(FDateFmtArray) - 2];
  end;
end;

procedure TNXDBGridInplaceEdit.FillDTValArray;
var
  I: Integer;
  STimeAMString, STimePMString: string;
begin
  if FEditStyle in [esDatePicker, esDateTimePicker, esDatePickList,
   esDateTimePickList] then
  begin
    FDateValArray := nil;
    SetLength(FDateValArray, High(FDateFmtArray) + 1);
    for I := Low(FDateFmtArray) to High(FDateFmtArray) do
    begin
      if FDateFmtArray[I][1] = 'd' then
      begin
        if Length(FDateFmtArray[I]) = 1 then
          FDateValArray[I] := IntToStr(FSysDT.wDay);
        if Length(FDateFmtArray[I]) = 2 then
        begin
          if FSysDT.wDay in [1..9] then
            FDateValArray[I] := '0' + IntToStr(FSysDT.wDay)
          else
            FDateValArray[I] := IntToStr(FSysDT.wDay);
        end;
        if Length(FDateFmtArray[I]) = 3 then
          FDateValArray[I] := ShortDayNames[FSysDT.wDayOfWeek];
        if Length(FDateFmtArray[I]) > 3 then
          FDateValArray[I] := LongDayNames[FSysDT.wDayOfWeek];
      end;
      if FDateFmtArray[I][1] = 'M' then
      begin
        if Length(FDateFmtArray[I]) = 1 then
          FDateValArray[I] := IntToStr(FSysDT.wMonth);
        if Length(FDateFmtArray[I]) = 2 then
        begin
          if FSysDT.wMonth in [1..9] then
            FDateValArray[I] := '0' + IntToStr(FSysDT.wMonth)
          else
            FDateValArray[I] := IntToStr(FSysDT.wMonth);
        end;
        if Length(FDateFmtArray[I]) = 3 then
          FDateValArray[I] := ShortMonthNames[FSysDT.wMonth];
        if Length(FDateFmtArray[I]) > 3 then
          FDateValArray[I] := LongMonthNames[FSysDT.wMonth];
      end;
      if FDateFmtArray[I][1] = 'y' then
      begin
        if Length(FDateFmtArray[I]) = 1 then
          FDateValArray[I] := Copy(IntToStr(FSysDT.wYear), 4, 1);
        if Length(FDateFmtArray[I]) = 2 then
        begin
          FDateValArray[I] := Copy(IntToStr(FSysDT.wYear), 3, 2);
        end;
        if Length(FDateFmtArray[I]) > 2 then
          FDateValArray[I] := IntToStr(FSysDT.wYear);
      end;
      if not (FDateFmtArray[I][1] in ['d', 'M', 'y']) then
        FDateValArray[I] := FDateFmtArray[I];
    end;
  end;
  if FEditStyle in [esTimePicker, esDateTimePicker, esTimePickList,
   esDateTimePickList] then
  begin
    FTimeValArray := nil;
    SetLength(FTimeValArray, High(FTimeFmtArray) + 1);
    for I := Low(FTimeFmtArray) to High(FTimeFmtArray) do
    begin
      if FTimeFmtArray[I][1] = 'H' then
      begin
        if Length(FTimeFmtArray[I]) = 1 then
          FTimeValArray[I] := IntToStr(FSysDT.wHour);
        if Length(FTimeFmtArray[I]) > 1 then
        begin
          if FSysDT.wHour in [0..9] then
            FTimeValArray[I] := '0' + IntToStr(FSysDT.wHour)
          else
            FTimeValArray[I] := IntToStr(FSysDT.wHour);
        end;
      end;
      if FTimeFmtArray[I][1] = 'h' then
      begin
        if FSysDT.wHour > 12 then
          FTimeValArray[I] := IntToStr(FSysDT.wHour - 12)
        else
        begin
          if FSysDT.wHour = 0 then
            FTimeValArray[I] := '12'
          else
            FTimeValArray[I] := IntToStr(FSysDT.wHour);
        end;
        if Length(FTimeFmtArray[I]) > 1 then
          if StrToInt(FTimeValArray[I]) in [1..9] then
            FTimeValArray[I] := '0' + FTimeValArray[I]
      end;
      if FTimeFmtArray[I][1] = 'm' then
      begin
        if Length(FTimeFmtArray[I]) = 1 then
          FTimeValArray[I] := IntToStr(FSysDT.wMinute);
        if Length(FTimeFmtArray[I]) > 1 then
        begin
          if FSysDT.wMinute in [0..9] then
            FTimeValArray[I] := '0' + IntToStr(FSysDT.wMinute)
          else
            FTimeValArray[I] := IntToStr(FSysDT.wMinute);
        end;
      end;
      if FTimeFmtArray[I][1] = 's' then
      begin
        if Length(FTimeFmtArray[I]) = 1 then
          FTimeValArray[I] := IntToStr(FSysDT.wSecond);
        if Length(FTimeFmtArray[I]) > 1 then
        begin
          if FSysDT.wSecond in [0..9] then
            FTimeValArray[I] := '0' + IntToStr(FSysDT.wSecond)
          else
            FTimeValArray[I] := IntToStr(FSysDT.wSecond);
        end;
      end;
      if FTimeFmtArray[I][1] = 't' then
      begin
{
        STimeAMString := GetLocaleStr(GetThreadLocale, LOCALE_S1159, 'am');
        STimePMString := GetLocaleStr(GetThreadLocale, LOCALE_S2359, 'pm');
}
        STimeAMString := TimeAMString;
        STimePMString := TimePMString;
        if Length(FTimeFmtArray[I]) > 1 then
        begin
          if FSysDT.wHour < 12 then
            FTimeValArray[I] := STimeAMString
          else
            FTimeValArray[I] := STimePMString
        end
        else
        begin
          if FSysDT.wHour < 12 then
            FTimeValArray[I] := Copy(STimeAMString, 1, 1)
          else
            FTimeValArray[I] := Copy(STimePMString, 1, 1);
        end;
      end;
      if not (FTimeFmtArray[I][1] in ['H', 'h', 'm', 's', 't']) then
        FTimeValArray[I] := FTimeFmtArray[I];
    end;
  end;
  if FEditStyle in [esDateTimePicker, esDateTimePickList] then
  begin
    FDateTimeValArray := nil;
    SetLength(FDateTimeValArray, High(FDateValArray) + High(FTimeValArray) + 3);
    for I := Low(FDateTimeValArray) to High(FDateTimeValArray) do
    begin
      if I - 1 < High(FDateValArray) then
        FDateTimeValArray[I] := FDateValArray[I];
      if I - 1 = High(FDateValArray) then
        FDateTimeValArray[I] := ' ';
      if I - 1 > High(FDateValArray) then
        FDateTimeValArray[I] := FTimeValArray[I - High(FDateValArray) - 2];
    end;
  end;
end;

procedure TNXDBGridInplaceEdit.FillDTTempValArray;

  procedure _FillTempValArray(FValArray: array of string);
  var
    I: Integer;
  begin
    SetLength(FTempValArray, High(FValArray) + 1);
    for I := Low(FValArray) to High(FValArray) do
      FTempValArray[I] := FValArray[i];
  end;

begin
  FTempValArray := nil;
  if FEditStyle in [esDatePicker, esDatePickList] then
    _FillTempValArray(FDateValArray);
  if FEditStyle in [esTimePicker, esTimePickList] then
    _FillTempValArray(FTimeValArray);
  if FEditStyle in [esDateTimePicker, esDateTimePickList] then
    _FillTempValArray(FDateTimeValArray);
end;

function TNXDBGridInplaceEdit.GetDTStrFromArray(TempArray: Boolean): string;

  procedure _GetDTStrFromArray(ValArray: array of string);
  var
    I: Integer;
  begin
    for I := Low(ValArray) to High(ValArray) do
      Result := Result + ValArray[I];
  end;

begin
  Result := '';
  if not TempArray then
  begin
    if FEditStyle in [esDatePicker, esDatePickList] then
      _GetDTStrFromArray(FDateValArray);
    if FEditStyle in [esTimePicker, esTimePickList] then
      _GetDTStrFromArray(FTimeValArray);
    if FEditStyle in [esDateTimePicker, esDateTimePickList] then
      _GetDTStrFromArray(FDateTimeValArray);
  end
  else
    _GetDTStrFromArray(FTempValArray);
end;

procedure TNXDBGridInplaceEdit.FindDTIPos;

  procedure _FindIPos(FmtArray, ValArray: array of string);
  var
    Len, I: Integer;
  begin
    Len := 0;
    for I := Low(ValArray) to High(ValArray) do begin
      Len := Len + Length(ValArray[I]);
      if (Len >= SelStart) and
        ((FmtArray[I][1] in ['M', 'y']) or
        ((FmtArray[I][1] = 'd') and (Length(FmtArray[I]) < 3)) or
        (FmtArray[I][1] in ['H', 'h', 'm', 's', 't'])) then begin
        FIPos := I;
        Break;
      end;
    end;
  end;

begin
  if FEditStyle in [esDatePicker, esDatePickList] then
    _FindIPos(FDateFmtArray, FDateValArray);
  if FEditStyle in [esTimePicker, esTimePickList] then
    _FindIPos(FTimeFmtArray, FTimeValArray);
  if FEditStyle in [esDateTimePicker, esDateTimePickList] then
    _FindIPos(FDateTimeFmtArray, FDateTimeValArray);
end;

procedure TNXDBGridInplaceEdit.DoFmtVal;
begin
  FillDTValArray;
  FillDTTempValArray;
end;

procedure TNXDBGridInplaceEdit.DoLongVal(IPos: Integer);

  procedure _DoLongVal(FmtArray: array of string;
    var ValArray: array of string);
  begin
    if FmtArray[IPos][1] = 'y' then
      ValArray[IPos] := IntToStr(FSysDT.wYear);
    if FmtArray[IPos][1] in ['d', 'M', 'H', 'h', 'm', 's'] then
      if (Length(FmtArray[IPos]) = 1) and (Length(ValArray[IPos]) = 1) then
        ValArray[IPos] := ' ' + ValArray[IPos];
  end;

begin
  if IPos <> (-1) then begin
    if FEditStyle in [esDatePicker, esDatePickList] then
      _DoLongVal(FDateFmtArray, FDateValArray);
    if FEditStyle in [esTimePicker, esTimePickList] then
      _DoLongVal(FTimeFmtArray, FTimeValArray);
    if FEditStyle in [esDateTimePicker, esDateTimePickList] then
      _DoLongVal(FDateTimeFmtArray, FDateTimeValArray);
    FillDTTempValArray;
  end;
end;

procedure TNXDBGridInplaceEdit.SelRangeByDTIPos(TempArray: Boolean);

  procedure _SelRangeByIPos(ValArray: array of string);
  var
    I: Integer;
  begin
    SelStart := 0;
    for I := Low(ValArray) to FIPos - 1 do
      SelStart := SelStart + Length(ValArray[I]);
    SelLength := Length(ValArray[FIPos]);
  end;

begin
  if not TempArray then begin
    if FEditStyle in [esDatePicker, esDatePickList] then
      _SelRangeByIPos(FDateValArray);
    if FEditStyle in [esTimePicker, esTimePickList] then
      _SelRangeByIPos(FTimeValArray);
    if FEditStyle in [esDateTimePicker, esDateTimePickList] then
      _SelRangeByIPos(FDateTimeValArray);
  end
  else
    _SelRangeByIPos(FTempValArray);
end;

function TNXDBGridInplaceEdit.CorrectDTVal(var SysDT: TSystemTime): Boolean;
var
  Year, Month, Day: Word;
  Hour, Min, Sec, MSec: Word;
  BufferD, BufferT: array[Byte] of Char;
  SysShortDateFormat, SysLongTimeFormat: string;
  SysDateSeparator, SysTimeSeparator: Char;
begin
  Result := False;
  SysDateSeparator := DateSeparator;
  SysTimeSeparator := TimeSeparator;
  SysShortDateFormat := ShortDateFormat;
  SysLongTimeFormat := LongTimeFormat;
  try
    DateSeparator := '.';
    TimeSeparator := ':';
    ShortDateFormat := 'dd.MM.yyyy';
    LongTimeFormat := 'H:mm:ss';
    if (GetDateFormat(GetThreadLocale, DATE_USE_ALT_CALENDAR, @SysDT,
      PChar(ShortDateFormat), BufferD, SizeOf(BufferD)) <> 0) and
      (GetTimeFormat(GetThreadLocale, DATE_USE_ALT_CALENDAR, @SysDT,
      PChar(LongTimeFormat), BufferT, SizeOf(BufferT)) <> 0) then begin
      DecodeDate(StrToDate(string(BufferD)), Year, Month, Day);
      DecodeTime(StrToTime(string(BufferT)), Hour, Min, Sec, MSec);
      with SysDT do begin
        wYear := Year;
        wMonth := Month;
        wDayOfWeek := DayOfWeek(StrToDate(string(BufferD)));
        wDay := Day;
        wHour := Hour;
        wMinute := Min;
        wSecond := Sec;
        wMilliSeconds := MSec;
      end;
      Result := True;
    end;
  finally
    DateSeparator := SysDateSeparator;
    TimeSeparator := SysTimeSeparator;
    ShortDateFormat := SysShortDateFormat;
    LongTimeFormat := SysLongTimeFormat;
  end;
end;

function TNXDBGridInplaceEdit.SetCorrectDTVal(SysDT: TSystemTime): Boolean;
begin
  Result := CorrectDTVal(SysDT);
  if Result then begin
    FSysDT := SysDT;
    FillDTValArray;
  end;
  DoLongVal(FIPos);
  Text := GetDTStrFromArray(False);
  SelRangeByDTIPos(False);
end;

function TNXDBGridInplaceEdit.FillByCorrectDTValue: Boolean;

  procedure _FillByCorrectValue(FmtArray, ValArray: array of string);
  var
    SysDT: TSystemTime;
    I: Integer;
  begin
    if (FmtArray[FIPos][1] in ['d', 'y', 'H', 'h', 'm', 's'])
     or ((FmtArray[FIPos][1] = 'M') and (Length(FmtArray[FIPos]) < 3)) then
    begin
      SysDT := FSysDT;
      if FmtArray[FIPos][1] = 'd' then
        if Length(FmtArray[FIPos]) < 3 then
          SysDT.wDay := StrToInt(FTempValArray[FIPos])
        else
          SysDT.wDay := DayNumber(FTempValArray[FIPos]);
      if FmtArray[FIPos][1] = 'M' then
        if Length(FmtArray[FIPos]) < 3 then
          SysDT.wMonth := StrToInt(FTempValArray[FIPos])
        else
          SysDT.wMonth := MonthNumber(FTempValArray[FIPos]);
      if FmtArray[FIPos][1] = 'y' then
        SysDT.wYear := StrToInt(FTempValArray[FIPos]);
      if FmtArray[FIPos][1] in ['H', 'h'] then
        SysDT.wHour := StrToInt(FTempValArray[FIPos]);
      if FmtArray[FIPos][1] = 'h' then
      begin
        for I := Low(FmtArray) to High(FmtArray) do
        begin
          if FmtArray[I][1] = 't' then
          begin
            if FTempValArray[I] = TimePMString then
              SysDT.wHour := StrToInt(FTempValArray[FIPos]) + 12
            else
              if FTempValArray[FIPos] = '12' then
                SysDT.wHour := 0
              else
                SysDT.wHour := StrToInt(FTempValArray[FIPos]);
            Break;
          end;
        end;
      end;
      if FmtArray[FIPos][1] = 'm' then
        SysDT.wMinute := StrToInt(FTempValArray[FIPos]);
      if FmtArray[FIPos][1] = 's' then
        SysDT.wSecond := StrToInt(FTempValArray[FIPos]);
      Result := SetCorrectDTVal(SysDT);
    end
    else
      if (FmtArray[FIPos][1] = 'M') and (Length(FmtArray[FIPos]) > 2) then
        Result := True;
  end;

begin
  if FEditStyle in [esDatePicker, esDatePickList] then
    _FillByCorrectValue(FDateFmtArray, FDateValArray);
  if FEditStyle in [esTimePicker, esTimePickList] then
    _FillByCorrectValue(FTimeFmtArray, FTimeValArray);
  if FEditStyle in [esDateTimePicker, esDateTimePickList] then
    _FillByCorrectValue(FDateTimeFmtArray, FDateTimeValArray);
end;

procedure TNXDBGridInplaceEdit.InitDTValArray(ADate: TDate; ATime: TTime);
var
  Year, Month, Day: Word;
  Hour, Min, Sec, MSec: Word;
begin
  FIPos := 0;
  DecodeDate(ADate, Year, Month, Day);
  DecodeTime(ATime, Hour, Min, Sec, MSec);
  with FSysDT do begin
    wYear := Year;
    wMonth := Month;
    wDayOfWeek := DayOfWeek(ADate);
    wDay := Day;
    wHour := Hour;
    wMinute := Min;
    wSecond := Sec;
    wMilliSeconds := MSec;
  end;
  FillDTValArray;
  FillDTTempValArray;
end;

procedure TNXDBGridInplaceEdit.StrToDT(const DT: string; var ADate: TDate;
 var ATime: TTime);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;

  function _GetType(FmtArray: array of string; DT: string): TEditStyle;
  var
    I, J: Integer;
  begin
    Result := esDateTimePicker;
    for I := Low(FmtArray) to High(FmtArray) do
    begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(DT, 1, Pos(FmtArray[I], DT)), DT) = 1 then
          Delete(DT, 1, Pos(FmtArray[I], DT) + Length(FmtArray[I]) - 1)
        else
        begin
          for J := Low(FmtArray) to High(FmtArray) - I do
          begin
            if FmtArray[I + J][1] in ['d', 'M', 'y'] then
            begin
              Result := esTimePicker;
              Exit;
            end;
            if FmtArray[I + J][1] in ['H', 'h', 'm', 's', 't'] then
            begin
              Result := esDatePicker;
              Exit;
            end;
          end;
        end;
    end;
  end;

  procedure _StrToDT(FmtArray: array of string; DT: string);
  var
    TempDT, TempDT1, Y, T: string;
    I, J: Integer;
    D, M: Word;
  begin
    TempDT := DT;
    for I := Low(FmtArray) to High(FmtArray) do
    begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(TempDT, 1, Pos(FmtArray[I], TempDT)), TempDT) = 1 then
          Delete(TempDT, 1, Pos(FmtArray[I], TempDT) + Length(FmtArray[I]) - 1);
      if FmtArray[I][1] = 'y' then
      begin
        if Length(FmtArray[I]) in [1, 2] then
        begin
          DecodeDate(Date, Year, M, D);
          Y := IntToStr(Year);
          Delete(Y, Length(Y) - Length(FmtArray[I]) + 1,
           Length(FmtArray[I]) + 1);
          Year := StrToInt(Y + Copy(TempDT, 1, Length(FmtArray[I])));
        end;
        if Length(FmtArray[I]) > 2 then
        begin
          Year := StrToInt(Copy(TempDT, 1, 4));
          Break;
        end;
      end;
    end;
    TempDT := DT;
    for I := Low(FmtArray) to High(FmtArray) do
    begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(TempDT, 1, Pos(FmtArray[I], TempDT)), TempDT) = 1 then
          Delete(TempDT, 1, Pos(FmtArray[I], TempDT) + Length(FmtArray[I]) - 1);
      if FmtArray[I][1] = 'M' then
      begin
        if Length(FmtArray[I]) = 1 then
          if TempDT[2] in ['0'..'2'] then
            Month := StrToInt(Copy(TempDT, 1, 2))
          else
          begin
            Month := StrToInt(Copy(TempDT, 1, 1));
            Break;
          end;
        if Length(FmtArray[I]) = 2 then
        begin
          Month := StrToInt(Copy(TempDT, 1, 2));
          Break;
        end;
        if Length(FmtArray[I]) = 3 then begin
          for J := 1 to 12 do
            if Pos(ShortMonthNames[J], TempDT) = 1 then
            begin
              Month := J;
              Break;
            end;
          Break;
        end;
        if Length(FmtArray[I]) > 3 then
        begin
          for J := 1 to 12 do
            if Pos(LongMonthNames[J], TempDT) = 1 then
            begin
              Month := J;
              Break;
            end;
          Break;
        end;
      end;
    end;
    TempDT := DT;
    for I := Low(FmtArray) to High(FmtArray) do
    begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(TempDT, 1, Pos(FmtArray[I], TempDT)), TempDT) = 1 then
          Delete(TempDT, 1, Pos(FmtArray[I], TempDT) + Length(FmtArray[I]) - 1);
      if FmtArray[I][1] = 'd' then
      begin
        if Length(FmtArray[I]) = 1 then
          if TempDT[2] in ['0'..'9'] then
            Day := StrToInt(Copy(TempDT, 1, 2))
          else
          begin
            Day := StrToInt(Copy(TempDT, 1, 1));
            Break;
          end;
        if Length(FmtArray[I]) = 2 then
        begin
          Day := StrToInt(Copy(TempDT, 1, 2));
          Break;
        end;
        if Length(FmtArray[I]) = 3 then
          for J := 1 to 7 do
            if Pos(ShortDayNames[DayOfWeek(EncodeDate(Year, Month, J))],
             TempDT) = 1 then
            begin
              Day := J;
              Break;
            end;
        if Length(FmtArray[I]) > 3 then
          for J := 1 to 7 do
            if Pos(LongDayNames[DayOfWeek(EncodeDate(Year, Month, J))],
             TempDT) = 1 then
            begin
              Day := J;
              Break;
            end;
      end;
    end;
    TempDT := DT;
    for I := Low(FmtArray) to High(FmtArray) do begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(TempDT, 1, Pos(FmtArray[I], TempDT)), TempDT) = 1 then
          Delete(TempDT, 1, Pos(FmtArray[I], TempDT) + Length(FmtArray[I]) - 1);
      if FmtArray[I][1] = 's' then
      begin
        if Length(FmtArray[I]) = 1 then
          if TempDT[2] in ['0'..'9'] then
            Sec := StrToInt(Copy(TempDT, 1, 2))
          else
          begin
            Sec := StrToInt(Copy(TempDT, 1, 1));
            Break;
          end;
        if Length(FmtArray[I]) = 2 then
        begin
          Sec := StrToInt(Copy(TempDT, 1, 2));
          Break;
        end;
      end;
    end;
    TempDT := DT;
    for I := Low(FmtArray) to High(FmtArray) do
    begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(TempDT, 1, Pos(FmtArray[I], TempDT)), TempDT) = 1 then
          Delete(TempDT, 1, Pos(FmtArray[I], TempDT) + Length(FmtArray[I]) - 1);
      if FmtArray[I][1] = 'm' then
      begin
        if Length(FmtArray[I]) = 1 then
          if TempDT[2] in ['0'..'9'] then
            Min := StrToInt(Copy(TempDT, 1, 2))
          else
          begin
            Min := StrToInt(Copy(TempDT, 1, 1));
            Break;
          end;
        if Length(FmtArray[I]) = 2 then
        begin
          Min := StrToInt(Copy(TempDT, 1, 2));
          Break;
        end;
      end;
    end;
    TempDT := DT;
    for I := Low(FmtArray) to High(FmtArray) do
    begin
      if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't']) then
        if Pos(Copy(TempDT, 1, Pos(FmtArray[I], TempDT)), TempDT) = 1 then
          Delete(TempDT, 1, Pos(FmtArray[I], TempDT) + Length(FmtArray[I]) - 1);
      if FmtArray[I][1] = 'H' then
      begin
        if Length(FmtArray[I]) = 1 then
          if TempDT[2] in ['0'..'9'] then
            Hour := StrToInt(Copy(TempDT, 1, 2))
          else
          begin
            Hour := StrToInt(Copy(TempDT, 1, 1));
            Break;
          end;
        if Length(FmtArray[I]) = 2 then
        begin
          Hour := StrToInt(Copy(TempDT, 1, 2));
          Break;
        end;
      end;
      if FmtArray[I][1] = 'h' then
      begin
        TempDT1 := DT;
        T := 'am';
        for J := Low(FmtArray) to High(FmtArray) do
        begin
          if not (FmtArray[I][1] in ['d', 'M', 'y', 'H', 'h', 'm', 's', 't'])
          then
            if Pos(Copy(TempDT1, 1, Pos(FmtArray[I], TempDT1)), TempDT1) = 1
            then
              Delete(TempDT1, 1, Pos(FmtArray[I], TempDT1) + Length(FmtArray[I])
               - 1);
          if FmtArray[J][1] = 't' then
          begin
            if Pos(TimePMString, TempDT1) = 1 then
              T := 'pm';
            Break;
          end;
        end;
        if Length(FmtArray[I]) = 1 then
          if TempDT[2] in ['0'..'2'] then
          begin
            Hour := StrToInt(Copy(TempDT, 1, 2));
            if T = 'pm' then
              if Hour = 12 then
                Hour := 0
              else
                Hour := Hour + 12;
          end
          else
          begin
            Hour := StrToInt(Copy(TempDT, 1, 1));
            if T = 'pm' then
              if Hour = 12 then
                Hour := 0
              else
                Hour := Hour + 12;
            Break;
          end;
        if Length(FmtArray[I]) = 2 then
        begin
          Hour := StrToInt(Copy(TempDT, 1, 2));
          if T = 'pm' then
            if Hour = 12 then
              Hour := 0
            else
              Hour := Hour + 12;
          Break;
        end;
      end;
    end;
  end;

begin
  DecodeDate(0, Year, Month, Day);
  DecodeTime(0, Hour, Min, Sec, MSec);
  if FEditStyle in [esDatePicker, esDatePickList] then
    _StrToDT(FDateFmtArray, DT);
  if FEditStyle in [esTimePicker, esTimePickList] then
    _StrToDT(FTimeFmtArray, DT);
  if FEditStyle in [esDateTimePicker, esDateTimePickList] then
    case _GetType(FDateTimeFmtArray, DT) of
      esDatePicker: _StrToDT(FDateFmtArray, DT);
      esTimePicker: _StrToDT(FTimeFmtArray, DT);
      esDateTimePicker: _StrToDT(FDateTimeFmtArray, DT);
    end;
  ADate := EncodeDate(Year, Month, Day);
  ATime := EncodeTime(Hour, Min, Sec, MSec);
end;

function TNXDBGridInplaceEdit.DayNumber(Day: string): Integer;
begin
  for Result := 1 to 7 do
  begin
    if AnsiCompareText(ShortDayNames[Result], Day) = 0 then Break;
    if AnsiCompareText(LongDayNames[Result], Day) = 0 then Break;
  end;
end;

function TNXDBGridInplaceEdit.MonthNumber(Month: string): Integer;
begin
  for Result := 1 to 12 do
  begin
    if AnsiCompareText(ShortMonthNames[Result], Month) = 0 then Break;
    if AnsiCompareText(LongMonthNames[Result], Month) = 0 then Break;
  end;
end;

procedure TNXDBGridInplaceEdit.WMSetFocus(var Message: TWMSetFocus);
var
  ADate: TDate;
  ATime: TTime;
begin
  inherited;
  if FEditStyle in [esDatePicker, esTimePicker, esDateTimePicker,
   esDatePickList, esTimePickList, esDateTimePickList] then
  begin
    if Text <> '' then
    begin
      StrToDT(Text, ADate, ATime);
      InitDTValArray(ADate, ATime);
      FindDTIPos;
      DoFmtVal;
      DoLongVal(FIPos);
      Text := GetDTStrFromArray(False);
      SelRangeByDTIPos(False);
    end;
  end;
end;

procedure TNXDBGridInplaceEdit.WMTimer(var Message: TWMTimer);
begin
  KillTimer(Handle, 1);
  FDblKeyPress := False;
end;

procedure TNXDBGridInplaceEdit.WMContextMenu(var Message: TWMContextMenu);
begin
end;

procedure TNXDBGridInplaceEdit.KeyPress(var Key: Char);
var
  SysDT: TSystemTime;
  SelS: Integer;
  Value: string;
  IsSel: Boolean;

  procedure _SetDTVal(ValArray: array of string);
  begin
    FTempValArray[FIPos] := FTempValArray[FIPos] + Key;
    if FTempValArray[FIPos][1] = ' ' then
      Delete(FTempValArray[FIPos], 1, 1);
    while Length(ValArray[FIPos]) > Length(FTempValArray[FIPos]) do
      FTempValArray[FIPos] := ' ' + FTempValArray[FIPos];
    Text := GetDTStrFromArray(True);
    SelRangeByDTIPos(True);
  end;

  procedure _FillByCorrectDTValue(FmtArray, ValArray: array of string);
  begin
    if (FmtArray[FIPos][1] in ['d', 'y', 'H', 'h', 'm', 's'])
     or ((FmtArray[FIPos][1] = 'M') and (Length(FmtArray[FIPos]) < 3)) then
    begin
      _SetDTVal(ValArray);
      if Length(ValArray[FIPos]) < Length(FTempValArray[FIPos]) then
      begin
        FTempValArray[FIPos] := '';
        _SetDTVal(ValArray);
      end;
    end;
    if (FmtArray[FIPos][1] = 'M') and (Length(FmtArray[FIPos]) > 2) then
    begin
      SysDT := FSysDT;
      if not FDblKeyPress then begin
        SetTimer(Handle, 1, 300, nil);
        SysDT.wMonth := StrToInt(Key);
        FDblKeyPress := True;
      end
      else
      begin
        SysDT.wMonth := StrToInt(IntToStr(SysDT.wMonth) + Key);
        FDblKeyPress := False;
      end;
      SetCorrectDTVal(SysDT);
    end;
  end;

  procedure _FillByCorrectIntValue;
  begin
    IsSel := SelLength > 0;
    if IsSel then
      ClearSelection;
    Value := Text;
    SelS := SelStart + 1;
    Insert(Key, Value, SelS);
    if not ((Value[1] = '0') and (Value[2] in ['0'..'9'])) then
    begin
      Text := Value;
      SelStart := SelS;
    end
    else
      if IsSel then Undo;
  end;

begin
  inherited;
  if FEditStyle in [esDatePicker, esTimePicker, esDateTimePicker,
   esDatePickList, esTimePickList, esDateTimePickList] then
  begin
    if Key in ['0'..'9'] then
    begin
      if Text = '' then
      begin
        InitDTValArray(Date, Time);
        FindDTIPos;
      end;
      if FEditStyle in [esDatePicker, esDatePickList] then
        _FillByCorrectDTValue(FDateFmtArray, FDateValArray);
      if FEditStyle in [esTimePicker, esTimePickList] then
        _FillByCorrectDTValue(FTimeFmtArray, FTimeValArray);
      if FEditStyle in [esDateTimePicker, esDateTimePickList] then
        _FillByCorrectDTValue(FDateTimeFmtArray, FDateTimeValArray);
      if FTempValArray[FIPos][1] <> ' ' then
        if not FillByCorrectDTValue then
        begin
          if FEditStyle in [esDatePicker, esDatePickList] then
          begin
            FTempValArray[FIPos] := '';
            _FillByCorrectDTValue(FDateFmtArray, FDateValArray);
          end;
          if FEditStyle in [esTimePicker, esTimePickList] then
          begin
            FTempValArray[FIPos] := '';
            _FillByCorrectDTValue(FTimeFmtArray, FTimeValArray);
          end;
          if FEditStyle in [esDateTimePicker, esDateTimePickList] then
          begin
            FTempValArray[FIPos] := '';
            _FillByCorrectDTValue(FDateTimeFmtArray, FDateTimeValArray);
          end;
        end;
      Value := Text;
      with TNXCustomDBGrid(Grid) do
        SetEditText(Col, Row, Value);
    end
    else
      if Key <> #0 then
        MessageBeep(0);
    Abort;
  end;
  if FEditStyle in [esFloat, esFloatPickList] then
  begin
    if (Key in ['0'..'9', '-']) or ((Key = DecimalSeparator)
     and (Pos(DecimalSeparator, Text) = 0)) or ((Key in ['E', 'e'])
     and (Pos('E', Text) = 0) and (Pos('e', Text) = 0)) then
    begin
      _FillByCorrectIntValue;
      Value := Text;
      with TNXCustomDBGrid(Grid) do
        SetEditText(Col, Row, Value);
    end;
    if Key <> #8 then
      Abort;
  end;
  if FEditStyle in [esInteger, esIntegerPickList] then
  begin
    if Key in ['0'..'9', '-'] then
    begin
      _FillByCorrectIntValue;
      Value := Text;
      with TNXCustomDBGrid(Grid) do
        SetEditText(Col, Row, Value);
    end;
    if Key <> #8 then
      Abort;
  end;
end;

{ TNXGridDataLink }

type
  TIntArray = array[0..MaxMapSize] of Integer;
  PIntArray = ^TIntArray;

constructor TNXGridDataLink.Create(AGrid: TNXCustomDBGrid);
begin
  inherited Create;
  FGrid := AGrid;
  VisualControl := True;
end;

destructor TNXGridDataLink.Destroy;
begin
  ClearMapping;
  inherited Destroy;
end;

function TNXGridDataLink.GetDefaultFields: Boolean;
var
  I: Integer;
begin
  Result := True;
  if DataSet <> nil then
    Result := DataSet.DefaultFields;
  if Result and SparseMap then
    for I := 0 to FFieldCount - 1 do
      if FFieldMap[I] < 0 then
      begin
        Result := False;
        Exit;
      end;
end;

function TNXGridDataLink.GetFields(I: Integer): TField;
begin
  if (0 <= I) and (I < FFieldCount) and (FFieldMap[I] >= 0) then
    Result := DataSet.FieldList[FFieldMap[I]]
  else
    Result := nil;
end;

function TNXGridDataLink.AddMapping(const FieldName: string): Boolean;
var
  Field: TField;
  NewSize: Integer;
begin
  Result := True;
  if FFieldCount >= MaxMapSize then
    RaiseGridError(STooManyColumns);
  if SparseMap then
    Field := DataSet.FindField(FieldName)
  else
    Field := DataSet.FieldByName(FieldName);
  if FFieldCount = Length(FFieldMap) then
  begin
    NewSize := Length(FFieldMap);
    if NewSize = 0 then
      NewSize := 8
    else
      Inc(NewSize, NewSize);
    if (NewSize < FFieldCount) then
      NewSize := FFieldCount + 1;
    if (NewSize > MaxMapSize) then
      NewSize := MaxMapSize;
    SetLength(FFieldMap, NewSize);
  end;
  if Assigned(Field) then
  begin
    FFieldMap[FFieldCount] := Dataset.FieldList.IndexOfObject(Field);
    Field.FreeNotification(FGrid);
  end
  else
    FFieldMap[FFieldCount] := -1;
  Inc(FFieldCount);
end;

procedure TNXGridDataLink.ActiveChanged;
begin
  FGrid.LinkActive(Active);
  FModified := False;
end;

procedure TNXGridDataLink.ClearMapping;
begin
  FFieldMap := nil;
  FFieldCount := 0;
end;

procedure TNXGridDataLink.Modified;
begin
  FModified := True;
end;

procedure TNXGridDataLink.DataSetChanged;
begin
  FGrid.DataChanged;
  FModified := False;
end;

procedure TNXGridDataLink.DataSetScrolled(Distance: Integer);
begin
  FGrid.Scroll(Distance);
end;

procedure TNXGridDataLink.LayoutChanged;
var
  SaveState: Boolean;
begin
  SaveState := FGrid.FLayoutFromDataset;
  FGrid.FLayoutFromDataset := True;
  try
    FGrid.LayoutChanged;
  finally
    FGrid.FLayoutFromDataset := SaveState;
  end;
  inherited LayoutChanged;
end;

procedure TNXGridDataLink.FocusControl(Field: TFieldRef);
begin
  if Assigned(Field) and Assigned(Field^) then
  begin
    FGrid.SelectedField := Field^;
    if (FGrid.SelectedField = Field^) and FGrid.AcquireFocus then
    begin
      Field^ := nil;
      FGrid.ShowEditor;
    end;
  end;
end;

procedure TNXGridDataLink.EditingChanged;
begin
  FGrid.EditingChanged;
end;

procedure TNXGridDataLink.RecordChanged(Field: TField);
begin
  FGrid.RecordChanged(Field);
  FModified := False;
end;

procedure TNXGridDataLink.UpdateData;
begin
  FInUpdateData := True;
  try
    if FModified then FGrid.UpdateData;
    FModified := False;
  finally
    FInUpdateData := False;
  end;
end;

function TNXGridDataLink.GetMappedIndex(ColIndex: Integer): Integer;
begin
  if (0 <= ColIndex) and (ColIndex < FFieldCount) then
    Result := FFieldMap[ColIndex]
  else
    Result := -1;
end;

procedure TNXGridDataLink.Reset;
begin
  if FModified then
    RecordChanged(nil) else Dataset.Cancel;
end;

function TNXGridDataLink.IsAggRow(Value: Integer): Boolean;
begin
  Result := False;
end;

procedure TNXGridDataLink.BuildAggMap;
begin
end;

{ TNXColumnTitle }

constructor TNXColumnTitle.Create(Column: TNXColumn);
begin
  inherited Create;
  FColumn := Column;
  FFont := TFont.Create;
  FFont.Assign(DefaultFont);
  FFont.OnChange := FontChanged;
end;

destructor TNXColumnTitle.Destroy;
begin
  FFont.Free;
  inherited Destroy;
end;

procedure TNXColumnTitle.Assign(Source: TPersistent);
begin
  if Source is TNXColumnTitle then
  begin
    if cvTitleAlignment in TNXColumnTitle(Source).FColumn.FAssignedValues then
      Alignment := TNXColumnTitle(Source).Alignment;
    if cvTitleColor in TNXColumnTitle(Source).FColumn.FAssignedValues then
      Color := TNXColumnTitle(Source).Color;
    if cvTitleCaption in TNXColumnTitle(Source).FColumn.FAssignedValues then
      Caption := TNXColumnTitle(Source).Caption;
    if cvTitleFont in TNXColumnTitle(Source).FColumn.FAssignedValues then
      Font := TNXColumnTitle(Source).Font;
  end
  else
    inherited Assign(Source);
end;

function TNXColumnTitle.DefaultAlignment: TAlignment;
begin
  Result := taLeftJustify;
end;

function TNXColumnTitle.DefaultColor: TColor;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := FColumn.GetGrid;
  if Assigned(Grid) then
    Result := Grid.FixedColor
  else
    Result := clBtnFace;
end;

function TNXColumnTitle.DefaultFont: TFont;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := FColumn.GetGrid;
  if Assigned(Grid) then
    Result := Grid.TitleFont
  else
    Result := FColumn.Font;
end;

function TNXColumnTitle.DefaultCaption: string;
var
  Field: TField;
begin
  Field := FColumn.Field;
  if Assigned(Field) then
    Result := Field.DisplayName
  else
    Result := FColumn.FieldName;
end;

procedure TNXColumnTitle.FontChanged(Sender: TObject);
begin
  Include(FColumn.FAssignedValues, cvTitleFont);
  FColumn.Changed(True);
end;

function TNXColumnTitle.GetAlignment: TAlignment;
begin
  if cvTitleAlignment in FColumn.FAssignedValues then
    Result := FAlignment
  else
    Result := DefaultAlignment;
end;

function TNXColumnTitle.GetColor: TColor;
begin
  if cvTitleColor in FColumn.FAssignedValues then
    Result := FColor
  else
    Result := DefaultColor;
end;

function TNXColumnTitle.GetCaption: string;
begin
  if cvTitleCaption in FColumn.FAssignedValues then
    Result := FCaption
  else
    Result := DefaultCaption;
end;

function TNXColumnTitle.GetFont: TFont;
var
  Save: TNotifyEvent;
  Def: TFont;
begin
  if not (cvTitleFont in FColumn.FAssignedValues) then
  begin
    Def := DefaultFont;
    if (FFont.Handle <> Def.Handle) or (FFont.Color <> Def.Color) then
    begin
      Save := FFont.OnChange;
      FFont.OnChange := nil;
      FFont.Assign(DefaultFont);
      FFont.OnChange := Save;
    end;
  end;
  Result := FFont;
end;

function TNXColumnTitle.IsAlignmentStored: Boolean;
begin
  Result := (cvTitleAlignment in FColumn.FAssignedValues)
   and (FAlignment <> DefaultAlignment);
end;

function TNXColumnTitle.IsColorStored: Boolean;
begin
  Result := (cvTitleColor in FColumn.FAssignedValues)
   and (FColor <> DefaultColor);
end;

function TNXColumnTitle.IsFontStored: Boolean;
begin
  Result := (cvTitleFont in FColumn.FAssignedValues);
end;

function TNXColumnTitle.IsCaptionStored: Boolean;
begin
  Result := (cvTitleCaption in FColumn.FAssignedValues)
   and (FCaption <> DefaultCaption);
end;

procedure TNXColumnTitle.RefreshDefaultFont;
var
  Save: TNotifyEvent;
begin
  if (cvTitleFont in FColumn.FAssignedValues) then Exit;
  Save := FFont.OnChange;
  FFont.OnChange := nil;
  try
    FFont.Assign(DefaultFont);
  finally
    FFont.OnChange := Save;
  end;
end;

procedure TNXColumnTitle.RestoreDefaults;
var
  FontAssigned: Boolean;
begin
  FontAssigned := cvTitleFont in FColumn.FAssignedValues;
  FColumn.FAssignedValues := FColumn.FAssignedValues - ColumnTitleValues;
  FCaption := '';
  RefreshDefaultFont;
  FColumn.Changed(FontAssigned);
end;

procedure TNXColumnTitle.SetAlignment(Value: TAlignment);
begin
  if (cvTitleAlignment in FColumn.FAssignedValues)
   and (Value = FAlignment) then Exit;
  FAlignment := Value;
  Include(FColumn.FAssignedValues, cvTitleAlignment);
  FColumn.Changed(False);
end;

procedure TNXColumnTitle.SetColor(Value: TColor);
begin
  if (cvTitleColor in FColumn.FAssignedValues) and (Value = FColor) then Exit;
  FColor := Value;
  Include(FColumn.FAssignedValues, cvTitleColor);
  FColumn.Changed(False);
end;

procedure TNXColumnTitle.SetFont(Value: TFont);
begin
  FFont.Assign(Value);
end;

procedure TNXColumnTitle.SetCaption(const Value: string);
var
  Grid: TNXCustomDBGrid;
begin
  if Column.IsStored then
  begin
    if (cvTitleCaption in FColumn.FAssignedValues)
     and (Value = FCaption) then Exit;
    FCaption := Value;
    Include(Column.FAssignedValues, cvTitleCaption);
    Column.Changed(False);
  end
  else
  begin
    Grid := Column.GetGrid;
    if Assigned(Grid) and (Grid.Datalink.Active) and Assigned(Column.Field) then
      Column.Field.DisplayLabel := Value;
  end;
end;

{ TNXColumn }

constructor TNXColumn.Create(Collection: TCollection);
var
  Grid: TNXCustomDBGrid;
begin
  Grid := nil;
  if Assigned(Collection) and (Collection is TNXDBGridColumns) then
    Grid := (Collection as TNXDBGridColumns).Grid;
  if Assigned(Grid) then Grid.BeginLayout;
  try
    inherited Create(Collection);
    FDropDownRows := 7;
    FButtonStyle := cbsAuto;
    FFont := TFont.Create;
    FFont.Assign(DefaultFont);
    FFont.OnChange := FontChanged;
    FImeMode := imDontCare;
    FImeName := Screen.DefaultIme;
    FTitle := CreateTitle;
    FVisible := True;
    FExpanded := True;
    FStored := True;
  finally
    if Assigned(Grid) then Grid.EndLayout;
  end;
end;

destructor TNXColumn.Destroy;
begin
  FTitle.Free;
  FFont.Free;
  FPickList.Free;
  inherited Destroy;
end;

procedure TNXColumn.Assign(Source: TPersistent);
begin
  if Source is TNXColumn then
  begin
    if Assigned(Collection) then Collection.BeginUpdate;
    try
      RestoreDefaults;
      FieldName := TNXColumn(Source).FieldName;
      if cvColor in TNXColumn(Source).AssignedValues then
        Color := TNXColumn(Source).Color;
      if cvWidth in TNXColumn(Source).AssignedValues then
        Width := TNXColumn(Source).Width;
      if cvFont in TNXColumn(Source).AssignedValues then
        Font := TNXColumn(Source).Font;
      if cvImeMode in TNXColumn(Source).AssignedValues then
        ImeMode := TNXColumn(Source).ImeMode;
      if cvImeName in TNXColumn(Source).AssignedValues then
        ImeName := TNXColumn(Source).ImeName;
      if cvAlignment in TNXColumn(Source).AssignedValues then
        Alignment := TNXColumn(Source).Alignment;
      if cvReadOnly in TNXColumn(Source).AssignedValues then
        ReadOnly := TNXColumn(Source).ReadOnly;
      Title := TNXColumn(Source).Title;
      DropDownRows := TNXColumn(Source).DropDownRows;
      ButtonStyle := TNXColumn(Source).ButtonStyle;
      PickList := TNXColumn(Source).PickList;
      PopupMenu := TNXColumn(Source).PopupMenu;
      FVisible := TNXColumn(Source).FVisible;
      FExpanded := TNXColumn(Source).FExpanded;
    finally
      if Assigned(Collection) then Collection.EndUpdate;
    end;
  end
  else
    inherited Assign(Source);
end;

function TNXColumn.CreateTitle: TNXColumnTitle;
begin
  Result := TNXColumnTitle.Create(Self);
end;

function TNXColumn.DefaultAlignment: TAlignment;
begin
  if Assigned(Field) then
    Result := FField.Alignment
  else
    Result := taLeftJustify;
end;

function TNXColumn.DefaultColor: TColor;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  if Assigned(Grid) then
    Result := Grid.Color
  else
    Result := clWindow;
end;

function TNXColumn.DefaultFont: TFont;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  if Assigned(Grid) then
    Result := Grid.Font
  else
    Result := FFont;
end;

function TNXColumn.DefaultImeMode: TImeMode;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  if Assigned(Grid) then
    Result := Grid.ImeMode
  else
    Result := FImeMode;
end;

function TNXColumn.DefaultImeName: TImeName;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  if Assigned(Grid) then
    Result := Grid.ImeName
  else
    Result := FImeName;
end;

function TNXColumn.DefaultReadOnly: Boolean;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  Result := (Assigned(Grid) and Grid.ReadOnly)
   or (Assigned(Field) and FField.ReadOnly);
end;

function TNXColumn.DefaultWidth: Integer;
var
  W: Integer;
  RestoreCanvas: Boolean;
  TM: TTextMetric;
begin
  if GetGrid = nil then
  begin
    Result := 64;
    Exit;
  end;
  with GetGrid do
  begin
    if Assigned(Field) then
    begin
      RestoreCanvas := not HandleAllocated;
      if RestoreCanvas then
        Canvas.Handle := GetDC(0);
      try
        Canvas.Font := Self.Font;
        GetTextMetrics(Canvas.Handle, TM);
        Result := Field.DisplayWidth * (Canvas.TextWidth('0') - TM.tmOverhang) +
         TM.tmOverhang + 4;
        if dgTitles in Options then
        begin
          Canvas.Font := Title.Font;
          W := Canvas.TextWidth(Title.Caption) + 4;
          if Result < W then
            Result := W;
        end;
      finally
        if RestoreCanvas then
        begin
          ReleaseDC(0, Canvas.Handle);
          Canvas.Handle := 0;
        end;
      end;
    end
    else
      Result := DefaultColWidth;
  end;
end;

procedure TNXColumn.FontChanged;
begin
  Include(FAssignedValues, cvFont);
  Title.RefreshDefaultFont;
  Changed(False);
end;

function TNXColumn.GetAlignment: TAlignment;
begin
  if cvAlignment in FAssignedValues then
    Result := FAlignment
  else
    Result := DefaultAlignment;
end;

function TNXColumn.GetColor: TColor;
begin
  if cvColor in FAssignedValues then
    Result := FColor
  else
    Result := DefaultColor;
end;

function TNXColumn.GetExpanded: Boolean;
begin
  Result := FExpanded and Expandable;
end;

function TNXColumn.GetField: TField;
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  if (FField = nil) and (Length(FFieldName) > 0) and Assigned(Grid) and
    Assigned(Grid.DataLink.DataSet) then
    with Grid.Datalink.Dataset do
      if Active or (not DefaultFields) then
        SetField(FindField(FieldName));
  Result := FField;
end;

function TNXColumn.GetFont: TFont;
var
  Save: TNotifyEvent;
begin
  if not (cvFont in FAssignedValues)
   and (FFont.Handle <> DefaultFont.Handle) then
  begin
    Save := FFont.OnChange;
    FFont.OnChange := nil;
    FFont.Assign(DefaultFont);
    FFont.OnChange := Save;
  end;
  Result := FFont;
end;

function TNXColumn.GetGrid: TNXCustomDBGrid;
begin
  if Assigned(Collection) and (Collection is TNXDBGridColumns) then
    Result := (Collection as TNXDBGridColumns).Grid
  else
    Result := nil;
end;

function TNXColumn.GetDisplayName: string;
begin
  Result := FFieldName;
  if Result = '' then
    Result := inherited GetDisplayName;
end;

function TNXColumn.GetImeMode: TImeMode;
begin
  if cvImeMode in FAssignedValues then
    Result := FImeMode
  else
    Result := DefaultImeMode;
end;

function TNXColumn.GetImeName: TImeName;
begin
  if cvImeName in FAssignedValues then
    Result := FImeName
  else
    Result := DefaultImeName;
end;

function TNXColumn.GetParentColumn: TNXColumn;
var
  Col: TNXColumn;
  Fld: TField;
  I: Integer;
begin
  Result := nil;
  Fld := Field;
  if (Fld <> nil) and (Fld.ParentField <> nil) and (Collection <> nil) then
    for I := Index - 1 downto 0 do
    begin
      Col := TNXColumn(Collection.Items[I]);
      if Fld.ParentField = Col.Field then
      begin
        Result := Col;
        Exit;
      end;
    end;
end;

function TNXColumn.GetPickList: TStrings;
begin
  if FPickList = nil then
    FPickList := TStringList.Create;
  Result := FPickList;
end;

function TNXColumn.GetReadOnly: Boolean;
begin
  if cvReadOnly in FAssignedValues then
    Result := FReadOnly
  else
    Result := DefaultReadOnly;
end;

function TNXColumn.GetShowing: Boolean;
var
  Col: TNXColumn;
begin
  Result := not Expanded and Visible;
  if Result then
  begin
    Col := Self;
    repeat
      Col := Col.ParentColumn;
    until (Col = nil) or not Col.Expanded;
    Result := Col = nil;
  end;
end;

function TNXColumn.GetVisible: Boolean;
var
  Col: TNXColumn;
begin
  Result := FVisible;
  if Result then
  begin
    Col := ParentColumn;
    Result := Result and ((Col = nil) or Col.Visible);
  end;
end;

function TNXColumn.GetWidth: Integer;
begin
  if not Showing then
    Result := -1
  else
    if cvWidth in FAssignedValues then
      Result := FWidth
  else
    Result := DefaultWidth;
end;

function TNXColumn.IsAlignmentStored: Boolean;
begin
  Result := (cvAlignment in FAssignedValues)
   and (FAlignment <> DefaultAlignment);
end;

function TNXColumn.IsColorStored: Boolean;
begin
  Result := (cvColor in FAssignedValues) and (FColor <> DefaultColor);
end;

function TNXColumn.IsFontStored: Boolean;
begin
  Result := (cvFont in FAssignedValues);
end;

function TNXColumn.IsImeModeStored: Boolean;
begin
  Result := (cvImeMode in FAssignedValues) and (FImeMode <> DefaultImeMode);
end;

function TNXColumn.IsImeNameStored: Boolean;
begin
  Result := (cvImeName in FAssignedValues) and (FImeName <> DefaultImeName);
end;

function TNXColumn.IsReadOnlyStored: Boolean;
begin
  Result := (cvReadOnly in FAssignedValues) and (FReadOnly <> DefaultReadOnly);
end;

function TNXColumn.IsWidthStored: Boolean;
begin
  Result := (cvWidth in FAssignedValues) and (FWidth <> DefaultWidth);
end;

procedure TNXColumn.RefreshDefaultFont;
var
  Save: TNotifyEvent;
begin
  if cvFont in FAssignedValues then Exit;
  Save := FFont.OnChange;
  FFont.OnChange := nil;
  try
    FFont.Assign(DefaultFont);
  finally
    FFont.OnChange := Save;
  end;
end;

procedure TNXColumn.RestoreDefaults;
var
  FontAssigned: Boolean;
begin
  FontAssigned := cvFont in FAssignedValues;
  FTitle.RestoreDefaults;
  FAssignedValues := [];
  RefreshDefaultFont;
  FPickList.Free;
  FPickList := nil;
  ButtonStyle := cbsAuto;
  Changed(FontAssigned);
end;

procedure TNXColumn.SetAlignment(Value: TAlignment);
var
  Grid: TNXCustomDBGrid;
begin
  if IsStored then
  begin
    if (cvAlignment in FAssignedValues) and (Value = FAlignment) then Exit;
    FAlignment := Value;
    Include(FAssignedValues, cvAlignment);
    Changed(False);
  end
  else
  begin
    Grid := GetGrid;
    if Assigned(Grid) and (Grid.Datalink.Active) and Assigned(Field) then
      Field.Alignment := Value;
  end;
end;

procedure TNXColumn.SetButtonStyle(Value: TNXColumnButtonStyle);
begin
  if Value = FButtonStyle then Exit;
  FButtonStyle := Value;
  Changed(False);
end;

procedure TNXColumn.SetColor(Value: TColor);
begin
  if (cvColor in FAssignedValues) and (Value = FColor) then Exit;
  FColor := Value;
  Include(FAssignedValues, cvColor);
  Changed(False);
end;

procedure TNXColumn.SetField(Value: TField);
begin
  if FField = Value then Exit;
  if Assigned(FField)
   and (GetGrid <> nil) then
    FField.RemoveFreeNotification(GetGrid);
  FField := Value;
  if Assigned(Value) then
  begin
    if GetGrid <> nil then
      FField.FreeNotification(GetGrid);
    FFieldName := Value.FullName;
  end;
  if not IsStored then
  begin
    if Value = nil then
      FFieldName := '';
    RestoreDefaults;
  end;
  Changed(False);
end;

procedure TNXColumn.SetFieldName(const Value: string);
var
  AField: TField;
  Grid: TNXCustomDBGrid;
begin
  AField := nil;
  Grid := GetGrid;
  if Assigned(Grid) and Assigned(Grid.DataLink.DataSet)
   and not (csLoading in Grid.ComponentState) and (Length(Value) > 0) then
    AField := Grid.DataLink.DataSet.FindField(Value);
  FFieldName := Value;
  SetField(AField);
  Changed(False);
end;

procedure TNXColumn.SetFont(Value: TFont);
begin
  FFont.Assign(Value);
  Include(FAssignedValues, cvFont);
  Changed(False);
end;

procedure TNXColumn.SetImeMode(Value: TImeMode);
begin
  if (cvImeMode in FAssignedValues) or (Value <> DefaultImeMode) then
  begin
    FImeMode := Value;
    Include(FAssignedValues, cvImeMode);
  end;
  Changed(False);
end;

procedure TNXColumn.SetImeName(Value: TImeName);
begin
  if (cvImeName in FAssignedValues) or (Value <> DefaultImeName) then
  begin
    FImeName := Value;
    Include(FAssignedValues, cvImeName);
  end;
  Changed(False);
end;

procedure TNXColumn.SetIndex(Value: Integer);
var
  Grid: TNXCustomDBGrid;
  Fld: TField;
  I, OldIndex: Integer;
  Col: TNXColumn;
begin
  OldIndex := Index;
  Grid := GetGrid;
  if IsStored then
  begin
    Grid.BeginLayout;
    try
      I := OldIndex + 1;
      while (I < Collection.Count)
       and (TNXColumn(Collection.Items[I]).ParentColumn = Self) do
        Inc(I);
      Dec(I);
      if OldIndex > Value then
      begin
        while I > OldIndex do
        begin
          Collection.Items[I].Index := Value;
          Inc(OldIndex);
        end;
        inherited SetIndex(Value);
      end
      else
      begin
        inherited SetIndex(Value);
        while I > OldIndex do
        begin
          Collection.Items[OldIndex].Index := Value;
          Dec(I);
        end;
      end;
    finally
      Grid.EndLayout;
    end;
  end
  else
  begin
    if (Grid <> nil) and Grid.Datalink.Active then
    begin
      if Grid.AcquireLayoutLock then
      try
        Col := Grid.ColumnAtDepth(Grid.Columns[Value], Depth);
        if (Col <> nil) then
        begin
          Fld := Col.Field;
          if Assigned(Fld) then
            Field.Index := Fld.Index;
        end;
      finally
        Grid.EndLayout;
      end;
    end;
    inherited SetIndex(Value);
  end;
end;

procedure TNXColumn.SetPickList(Value: TStrings);
begin
  if Value = nil then
  begin
    FPickList.Free;
    FPickList := nil;
    Exit;
  end;
  PickList.Assign(Value);
end;

procedure TNXColumn.SetPopupMenu(Value: TPopupMenu);
begin
  FPopupMenu := Value;
  if Value <> nil then Value.FreeNotification(GetGrid);
end;

procedure TNXColumn.SetReadOnly(Value: Boolean);
var
  Grid: TNXCustomDBGrid;
begin
  Grid := GetGrid;
  if not IsStored and Assigned(Grid) and Grid.Datalink.Active
   and Assigned(Field) then
    Field.ReadOnly := Value
  else
  begin
    if (cvReadOnly in FAssignedValues) and (Value = FReadOnly) then Exit;
    FReadOnly := Value;
    Include(FAssignedValues, cvReadOnly);
    Changed(False);
  end;
end;

procedure TNXColumn.SetTitle(Value: TNXColumnTitle);
begin
  FTitle.Assign(Value);
end;

procedure TNXColumn.SetWidth(Value: Integer);
var
  Grid: TNXCustomDBGrid;
  TM: TTextMetric;
  DoSetWidth: Boolean;
begin
  DoSetWidth := IsStored;
  if not DoSetWidth then
  begin
    Grid := GetGrid;
    if Assigned(Grid) then
    begin
      if Grid.HandleAllocated and Assigned(Field) and Grid.FUpdateFields then
        with Grid do
        begin
          Canvas.Font := Self.Font;
          GetTextMetrics(Canvas.Handle, TM);
          Field.DisplayWidth := (Value + (TM.tmAveCharWidth div 2) -
           TM.tmOverhang - 3) div TM.tmAveCharWidth;
        end;
      if (not Grid.FLayoutFromDataset) or (cvWidth in FAssignedValues) then
        DoSetWidth := True;
    end
    else
      DoSetWidth := True;
  end;
  if DoSetWidth then
  begin
    if ((cvWidth in FAssignedValues) or (Value <> DefaultWidth))
     and (Value <> -1) then
    begin
      FWidth := Value;
      Include(FAssignedValues, cvWidth);
    end;
    Changed(False);
  end;
end;

procedure TNXColumn.SetVisible(Value: Boolean);
begin
  if Value <> FVisible then
  begin
    FVisible := Value;
    Changed(True);
  end;
end;

procedure TNXColumn.SetExpanded(Value: Boolean);
const
  Direction: array[Boolean] of ShortInt = (-1, 1);
var
  Grid: TNXCustomDBGrid;
  WasShowing: Boolean;
begin
  if Value <> FExpanded then
  begin
    Grid := GetGrid;
    WasShowing := (Grid <> nil) and Grid.Columns[Grid.SelectedIndex].Showing;
    FExpanded := Value;
    Changed(True);
    if (Grid <> nil) and WasShowing then
    begin
      if not Grid.Columns[Grid.SelectedIndex].Showing then
        Grid.MoveCol(Grid.Col, Direction[FExpanded]);
    end;
  end;
end;

function TNXColumn.Depth: Integer;
var
  Col: TNXColumn;
begin
  Result := 0;
  Col := ParentColumn;
  if Col <> nil then
    Result := Col.Depth + 1;
end;

function TNXColumn.GetExpandable: Boolean;
var
  Fld: TField;
begin
  Fld := Field;
  Result := (Fld <> nil) and (Fld.DataType in [ftADT, ftArray]);
end;

{ TNXDBGridColumns }

constructor TNXDBGridColumns.Create(Grid: TNXCustomDBGrid;
 ColumnClass: TNXColumnClass);
begin
  inherited Create(ColumnClass);
  FGrid := Grid;
end;

function TNXDBGridColumns.Add: TNXColumn;
begin
  Result := TNXColumn(inherited Add);
end;

function TNXDBGridColumns.GetColumn(Index: Integer): TNXColumn;
begin
  Result := TNXColumn(inherited Items[Index]);
end;

function TNXDBGridColumns.GetOwner: TPersistent;
begin
  Result := FGrid;
end;

procedure TNXDBGridColumns.LoadFromFile(const Filename: string);
var
  S: TFileStream;
begin
  S := TFileStream.Create(Filename, fmOpenRead);
  try
    LoadFromStream(S);
  finally
    S.Free;
  end;
end;

type
  TColumnsWrapper = class(TComponent)
  private
    FColumns: TNXDBGridColumns;
  published
    property Columns: TNXDBGridColumns read FColumns write FColumns;
  end;

procedure TNXDBGridColumns.LoadFromStream(S: TStream);
var
  Wrapper: TColumnsWrapper;
begin
  Wrapper := TColumnsWrapper.Create(nil);
  try
    Wrapper.Columns := FGrid.CreateColumns;
    S.ReadComponent(Wrapper);
    Assign(Wrapper.Columns);
  finally
    Wrapper.Columns.Free;
    Wrapper.Free;
  end;
end;

procedure TNXDBGridColumns.RestoreDefaults;
var
  I: Integer;
begin
  BeginUpdate;
  try
    for I := 0 to Count - 1 do
      Items[I].RestoreDefaults;
  finally
    EndUpdate;
  end;
end;

procedure TNXDBGridColumns.RebuildColumns;

  procedure _AddFields(Fields: TFields; Depth: Integer);
  var
    I: Integer;
  begin
    Inc(Depth);
    for I := 0 to Fields.Count - 1 do
    begin
      Add.FieldName := Fields[I].FullName;
      if Fields[I].DataType in [ftADT, ftArray] then
        _AddFields((Fields[I] as TObjectField).Fields, Depth);
    end;
  end;

begin
  if Assigned(FGrid) and Assigned(FGrid.DataSource)
   and Assigned(FGrid.Datasource.Dataset) then
  begin
    FGrid.BeginLayout;
    try
      Clear;
      _AddFields(FGrid.Datasource.Dataset.Fields, 0);
    finally
      FGrid.EndLayout;
    end
  end
  else
    Clear;
end;

procedure TNXDBGridColumns.SaveToFile(const Filename: string);
var
  S: TStream;
begin
  S := TFileStream.Create(Filename, fmCreate);
  try
    SaveToStream(S);
  finally
    S.Free;
  end;
end;

procedure TNXDBGridColumns.SaveToStream(S: TStream);
var
  Wrapper: TColumnsWrapper;
begin
  Wrapper := TColumnsWrapper.Create(nil);
  try
    Wrapper.Columns := Self;
    S.WriteComponent(Wrapper);
  finally
    Wrapper.Free;
  end;
end;

procedure TNXDBGridColumns.SetColumn(Index: Integer; Value: TNXColumn);
begin
  Items[Index].Assign(Value);
end;

procedure TNXDBGridColumns.SetState(NewState: TNXDBGridColumnsState);
begin
  if NewState = State then Exit;
  if NewState = csDefault then
    Clear
  else
    RebuildColumns;
end;

procedure TNXDBGridColumns.Update(Item: TCollectionItem);
var
  Raw: Integer;
begin
  if (FGrid = nil) or (csLoading in FGrid.ComponentState) then Exit;
  if Item = nil then
  begin
    FGrid.LayoutChanged;
  end
  else
  begin
    if not FGrid.FTransformed then
    begin
      Raw := FGrid.DataToRawColumn(Item.Index);
      FGrid.InvalidateCol(Raw);
      FGrid.ColWidths[Raw] := TNXColumn(Item).Width;
    end;
  end;
end;

function TNXDBGridColumns.InternalAdd: TNXColumn;
begin
  Result := Add;
  Result.IsStored := False;
end;

function TNXDBGridColumns.GetState: TNXDBGridColumnsState;
begin
  Result := TNXDBGridColumnsState((Count > 0) and Items[0].IsStored);
end;

{ TNXBookmarkList }

constructor TNXBookmarkList.Create(AGrid: TNXCustomDBGrid);
begin
  inherited Create;
  FList := TStringList.Create;
  FList.OnChange := StringsChanged;
  FGrid := AGrid;
end;

destructor TNXBookmarkList.Destroy;
begin
  Clear;
  FList.Free;
  inherited Destroy;
end;

procedure TNXBookmarkList.Clear;
begin
  if FList.Count = 0 then Exit;
  FList.Clear;
  FGrid.Invalidate;
end;

function TNXBookmarkList.Compare(const Item1, Item2: TBookmarkStr): Integer;
begin
  with FGrid.Datalink.Datasource.Dataset do
    Result := CompareBookmarks(TBookmark(Item1), TBookmark(Item2));
end;

function TNXBookmarkList.CurrentRow: TBookmarkStr;
begin
  if not FLinkActive then RaiseGridError(sDataSetClosed);
  Result := FGrid.Datalink.Datasource.Dataset.Bookmark;
end;

function TNXBookmarkList.GetCurrentRowSelected: Boolean;
var
  Index: Integer;
begin
  Result := Find(CurrentRow, Index);
end;

function TNXBookmarkList.Find(const Item: TBookmarkStr;
 var Index: Integer): Boolean;
var
  L, H, I, C: Integer;
begin
  if (Item = FCache) and (FCacheIndex >= 0) then
  begin
    Index := FCacheIndex;
    Result := FCacheFind;
    Exit;
  end;
  Result := False;
  L := 0;
  H := FList.Count - 1;
  while L <= H do
  begin
    I := (L + H) shr 1;
    C := Compare(FList[I], Item);
    if C < 0 then L := I + 1 else
    begin
      H := I - 1;
      if C = 0 then
      begin
        Result := True;
        L := I;
      end;
    end;
  end;
  Index := L;
  FCache := Item;
  FCacheIndex := Index;
  FCacheFind := Result;
end;

function TNXBookmarkList.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TNXBookmarkList.GetItem(Index: Integer): TBookmarkStr;
begin
  Result := FList[Index];
end;

function TNXBookmarkList.IndexOf(const Item: TBookmarkStr): Integer;
begin
  if not Find(Item, Result) then
    Result := -1;
end;

procedure TNXBookmarkList.LinkActive(Value: Boolean);
begin
  Clear;
  FLinkActive := Value;
end;

procedure TNXBookmarkList.Delete;
var
  I: Integer;
begin
  with FGrid.Datalink.Datasource.Dataset do
  begin
    DisableControls;
    try
      for I := FList.Count - 1 downto 0 do
      begin
        Bookmark := FList[I];
        Delete;
        FList.Delete(I);
      end;
    finally
      EnableControls;
    end;
  end;
end;

function TNXBookmarkList.Refresh: Boolean;
var
  I: Integer;
begin
  Result := False;
  with FGrid.DataLink.Datasource.Dataset do
  try
    CheckBrowseMode;
    for I := FList.Count - 1 downto 0 do
      if not BookmarkValid(TBookmark(FList[I])) then
      begin
        Result := True;
        FList.Delete(I);
      end;
  finally
    UpdateCursorPos;
    if Result then FGrid.Invalidate;
  end;
end;

procedure TNXBookmarkList.SetCurrentRowSelected(Value: Boolean);
var
  Index: Integer;
  Current: TBookmarkStr;
begin
  Current := CurrentRow;
  if (Length(Current) = 0) or (Find(Current, Index) = Value) then Exit;
  if Value then
    FList.Insert(Index, Current)
  else
    FList.Delete(Index);
  if not FGrid.FTransformed then
    FGrid.InvalidateRow(FGrid.Row)
  else
    FGrid.InvalidateCol(FGrid.Col);
end;

procedure TNXBookmarkList.StringsChanged(Sender: TObject);
begin
  FCache := '';
  FCacheIndex := -1;
end;

{ TNXCustomDBGrid }

var
  DrawBitmap: TBitmap;
  UserCount: Integer;

procedure UsesBitmap;
begin
  if UserCount = 0 then
    DrawBitmap := TBitmap.Create;
  Inc(UserCount);
end;

procedure ReleaseBitmap;
begin
  Dec(UserCount);
  if UserCount = 0 then DrawBitmap.Free;
end;

procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
 const Text: string; Alignment: TAlignment; ARightToLeft: Boolean);
const
  AlignFlags: array[TAlignment] of Integer =
  (DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
   DT_RIGHT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
   DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX);
  RTL: array[Boolean] of Integer = (0, DT_RTLREADING);
var
  B, R: TRect;
  Hold, Left: Integer;
  I: TColorRef;
begin
  I := ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then
  begin
    if (ACanvas.CanvasOrientation = coRightToLeft) and (not ARightToLeft) then
      ChangeBiDiModeAlignment(Alignment);
    case Alignment of
      taLeftJustify:
        Left := ARect.Left + DX;
      taRightJustify:
        Left := ARect.Right - ACanvas.TextWidth(Text) - 3;
    else
      Left := ARect.Left + (ARect.Right - ARect.Left) shr 1
        - (ACanvas.TextWidth(Text) shr 1);
    end;
    ACanvas.TextRect(ARect, Left, ARect.Top + DY, Text);
  end
  else
  begin
    DrawBitmap.Canvas.Lock;
    try
      with DrawBitmap, ARect do
      begin
        Width := Max(Width, Right - Left);
        Height := Max(Height, Bottom - Top);
        R := Rect(DX, DY, Right - Left - 1, Bottom - Top - 1);
        B := Rect(0, 0, Right - Left, Bottom - Top);
      end;
      with DrawBitmap.Canvas do
      begin
        Font := ACanvas.Font;
        Font.Color := ACanvas.Font.Color;
        Brush := ACanvas.Brush;
        Brush.Style := bsSolid;
        FillRect(B);
        SetBkMode(Handle, TRANSPARENT);
        if (ACanvas.CanvasOrientation = coRightToLeft) then
          ChangeBiDiModeAlignment(Alignment);
        DrawText(Handle, PChar(Text), Length(Text), R,
         AlignFlags[Alignment] or RTL[ARightToLeft]);
      end;
      if (ACanvas.CanvasOrientation = coRightToLeft) then
      begin
        Hold := ARect.Left;
        ARect.Left := ARect.Right;
        ARect.Right := Hold;
      end;
      ACanvas.CopyRect(ARect, DrawBitmap.Canvas, B);
    finally
      DrawBitmap.Canvas.Unlock;
    end;
  end;
end;

constructor TNXCustomDBGrid.Create(AOwner: TComponent);
var
  Bmp: TBitmap;
begin
  inherited Create(AOwner);
  inherited DefaultDrawing := False;
  FAcquireFocus := True;
  Bmp := TBitmap.Create;
  try
    Bmp.LoadFromResourceName(HInstance, bmArrow);
    FIndicators := TImageList.CreateSize(Bmp.Width, Bmp.Height);
    FIndicators.AddMasked(Bmp, clWhite);
    Bmp.LoadFromResourceName(HInstance, bmEdit);
    FIndicators.AddMasked(Bmp, clWhite);
    Bmp.LoadFromResourceName(HInstance, bmInsert);
    FIndicators.AddMasked(Bmp, clWhite);
    Bmp.LoadFromResourceName(HInstance, bmMultiDot);
    FIndicators.AddMasked(Bmp, clWhite);
    Bmp.LoadFromResourceName(HInstance, bmMultiArrow);
    FIndicators.AddMasked(Bmp, clWhite);
    Bmp.LoadFromResourceName(HInstance, bmConvArrow);
    FConvIndicators := TImageList.CreateSize(Bmp.Width, Bmp.Height);
    FConvIndicators.AddMasked(Bmp, clWhite);
    Bmp.LoadFromResourceName(HInstance, bmConvMultiArrow);
    FConvIndicators.AddMasked(Bmp, clWhite);
  finally
    Bmp.Free;
  end;
  FTitleOffset := 1;
  FIndicatorOffset := 1;
  FUpdateFields := True;
  FOptions := [dgEditing, dgTitles, dgIndicator, dgColumnResize,
   dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
  if SysLocale.PriLangID = LANG_KOREAN then
    Include(FOptions, dgAlwaysShowEditor);
  DesignOptionsBoost := [goColSizing];
  VirtualView := True;
  UsesBitmap;
  ScrollBars := ssHorizontal;
  inherited Options := [goFixedHorzLine, goFixedVertLine, goHorzLine,
   goVertLine, goColSizing, goColMoving, goTabs, goEditing];
  FColumns := CreateColumns;
  FVisibleColumns := TList.Create;
  inherited RowCount := 2;
  inherited ColCount := 2;
  FDataLink := TNXGridDataLink.Create(Self);
  Color := clWindow;
  ParentColor := False;
  FTitleFont := TFont.Create;
  FTitleFont.OnChange := TitleFontChanged;
  FSaveCellExtents := False;
  FUserChange := True;
  FDefaultDrawing := True;
  FBookmarks := TNXBookmarkList.Create(Self);
  HideEditor;
end;

destructor TNXCustomDBGrid.Destroy;
begin
  FColumns.Free;
  FColumns := nil;
  FVisibleColumns.Free;
  FVisibleColumns := nil;
  FDataLink.Free;
  FDataLink := nil;
  FIndicators.Free;
  FConvIndicators.Free;
  FTitleFont.Free;
  FTitleFont := nil;
  FBookmarks.Free;
  FBookmarks := nil;
  inherited Destroy;
  ReleaseBitmap;
end;

function TNXCustomDBGrid.AcquireFocus: Boolean;
begin
  Result := True;
  if FAcquireFocus and CanFocus and not (csDesigning in ComponentState) then
  begin
    SetFocus;
    Result := Focused or (InplaceEditor <> nil) and InplaceEditor.Focused;
  end;
end;

function TNXCustomDBGrid.RawToDataColumn(ACol: Integer): Integer;
begin
  Result := ACol - FIndicatorOffset;
end;

function TNXCustomDBGrid.DataToRawColumn(ACol: Integer): Integer;
begin
  Result := ACol + FIndicatorOffset;
end;

function TNXCustomDBGrid.AcquireLayoutLock: Boolean;
begin
  Result := (FUpdateLock = 0) and (FLayoutLock = 0);
  if Result then BeginLayout;
end;

procedure TNXCustomDBGrid.BeginLayout;
begin
  BeginUpdate;
  if FLayoutLock = 0 then Columns.BeginUpdate;
  Inc(FLayoutLock);
end;

procedure TNXCustomDBGrid.BeginUpdate;
begin
  Inc(FUpdateLock);
end;

procedure TNXCustomDBGrid.CancelLayout;
begin
  if FLayoutLock > 0 then
  begin
    if FLayoutLock = 1 then
      Columns.EndUpdate;
    Dec(FLayoutLock);
    EndUpdate;
  end;
end;

function TNXCustomDBGrid.CanEditAcceptKey(Key: Char): Boolean;
begin
  with Columns[SelectedIndex] do
    Result := FDatalink.Active and Assigned(Field) and Field.IsValidChar(Key);
end;

function TNXCustomDBGrid.CanEditModify: Boolean;
begin
  Result := False;
  if not ReadOnly and FDatalink.Active and not FDatalink.ReadOnly then
    with Columns[SelectedIndex] do
      if (not ReadOnly) and Assigned(Field) and Field.CanModify
       and (not (Field.DataType in ftNonTextTypes)
       or Assigned(Field.OnSetText)) then
      begin
        FDatalink.Edit;
        Result := FDatalink.Editing;
        if Result then FDatalink.Modified;
      end;
end;

function TNXCustomDBGrid.CanEditShow: Boolean;
begin
  Result := (LayoutLock = 0) and inherited CanEditShow;
end;

procedure TNXCustomDBGrid.CellClick(Column: TNXColumn);
begin
  if Assigned(FOnCellClick) then FOnCellClick(Column);
end;

procedure TNXCustomDBGrid.ColEnter;
begin
  UpdateIme;
  if Assigned(FOnColEnter) then FOnColEnter(Self);
end;

procedure TNXCustomDBGrid.ColExit;
begin
  if Assigned(FOnColExit) then FOnColExit(Self);
end;

procedure TNXCustomDBGrid.ColumnMoved(FromIndex, ToIndex: Longint);
begin
  FromIndex := RawToDataColumn(FromIndex);
  ToIndex := RawToDataColumn(ToIndex);
  Columns[FromIndex].Index := ToIndex;
  if Assigned(FOnColumnMoved) then
    FOnColumnMoved(Self, FromIndex, ToIndex);
end;

procedure TNXCustomDBGrid.RowMoved(FromIndex, ToIndex: Longint);
begin
  FromIndex := RawToDataColumn(FromIndex);
  ToIndex := RawToDataColumn(ToIndex);
  Columns[FromIndex].Index := ToIndex;
  if Assigned(FOnColumnMoved) then
    FOnColumnMoved(Self, FromIndex, ToIndex);
end;

procedure TNXCustomDBGrid.ColWidthsChanged;
var
  I: Integer;
begin
  inherited ColWidthsChanged;
  if (FDatalink.Active or (FColumns.State = csCustomized)) and
    AcquireLayoutLock then
  try
    if not FTransformed then
      for I := FIndicatorOffset to ColCount - 1 do
        FColumns[I - FIndicatorOffset].Width := ColWidths[I]
    else
      DefaultColWidth := ColWidths[FSizingIndex];
  finally
    EndLayout;
  end;
end;

function TNXCustomDBGrid.CreateColumns: TNXDBGridColumns;
begin
  Result := TNXDBGridColumns.Create(Self, TNXColumn);
end;

function TNXCustomDBGrid.CreateEditor: TInplaceEdit;
begin
  Result := TNXDBGridInplaceEdit.Create(Self);
end;

procedure TNXCustomDBGrid.CreateWnd;
begin
  BeginUpdate;
  try
    inherited CreateWnd;
  finally
    EndUpdate;
  end;
  UpdateRowCount;
  UpdateActive;
  UpdateScrollBar;
  FOriginalImeName := ImeName;
  FOriginalImeMode := ImeMode;
end;

procedure TNXCustomDBGrid.DataChanged;
begin
  if not HandleAllocated then Exit;
  UpdateRowCount;
  UpdateScrollBar;
  UpdateActive;
  InvalidateEditor;
  ValidateRect(Handle, nil);
  Invalidate;
end;

procedure TNXCustomDBGrid.DefaultHandler(var Msg);
var
  P: TPopupMenu;
  Cell: TGridCoord;
begin
  inherited DefaultHandler(Msg);
  if TMessage(Msg).Msg = wm_RButtonUp then
    with TWMRButtonUp(Msg) do
    begin
      Cell := MouseCoord(XPos, YPos);
      if not FTransformed then
      begin
        if (Cell.X < FIndicatorOffset) or (Cell.Y < 0) then Exit;
        P := Columns[RawToDataColumn(Cell.X)].PopupMenu;
      end
      else
      begin
        if (Cell.Y < FIndicatorOffset) or (Cell.X < 0) then Exit;
        P := Columns[RawToDataColumn(Cell.Y)].PopupMenu;
      end;
      if (P <> nil) and P.AutoPopup then
      begin
        SendCancelMode(nil);
        P.PopupComponent := Self;
        with ClientToScreen(SmallPointToPoint(Pos)) do
          P.Popup(X, Y);
        Result := 1;
      end;
    end;
end;
//------------------------------------------------------------------------------

procedure TNXCustomDBGrid.DeferLayout;
var
  M: TMsg;
begin
  if HandleAllocated
   and not PeekMessage(M, Handle, cm_DeferLayout, cm_DeferLayout,
   pm_NoRemove) then
    PostMessage(Handle, cm_DeferLayout, 0, 0);
  CancelLayout;
end;

procedure TNXCustomDBGrid.DefineFieldMap;
var
  I: Integer;
begin
  if FColumns.State = csCustomized then
  begin
    DataLink.SparseMap := True;
    for I := 0 to FColumns.Count - 1 do
      FDataLink.AddMapping(FColumns[I].FieldName);
  end
  else
  begin
    FDataLink.SparseMap := False;
    with Datalink.Dataset do
      for I := 0 to FieldList.Count - 1 do
        with FieldList[I] do if Visible then Datalink.AddMapping(FullName);
  end;
end;

function TNXCustomDBGrid.UseRightToLeftAlignmentForField(const AField: TField;
  Alignment: TAlignment): Boolean;
begin
  Result := False;
  if IsRightToLeft then
    Result := OkToChangeFieldAlignment(AField, Alignment);
end;

procedure TNXCustomDBGrid.DefaultDrawDataCell(const Rect: TRect; Field: TField;
  State: TGridDrawState);
var
  Alignment: TAlignment;
  Value: string;
begin
  Alignment := taLeftJustify;
  Value := '';
  if Assigned(Field) then
  begin
    Alignment := Field.Alignment;
    Value := VarToStr(Field.Value);
  end;
  WriteText(Canvas, Rect, 2, 2, Value, Alignment,
    UseRightToLeftAlignmentForField(Field, Alignment));
end;

procedure TNXCustomDBGrid.DefaultDrawColumnCell(const Rect: TRect;
  DataCol: Integer; Column: TNXColumn; State: TGridDrawState);
var
  Value: string;
begin
  Value := '';
  if Assigned(Column.Field) then
    Value := VarToStr(Column.Field.Value);
  WriteText(Canvas, Rect, 2, 2, Value, Column.Alignment,
   UseRightToLeftAlignmentForField(Column.Field, Column.Alignment));
end;

procedure TNXCustomDBGrid.ReadColumns(Reader: TReader);
begin
  Columns.Clear;
  Reader.ReadValue;
  Reader.ReadCollection(Columns);
end;

procedure TNXCustomDBGrid.WriteColumns(Writer: TWriter);
begin
  if Columns.State = csCustomized then
    Writer.WriteCollection(Columns)
  else
    Writer.WriteCollection(nil);
end;

procedure TNXCustomDBGrid.DefineProperties(Filer: TFiler);
var
  StoreIt: Boolean;
  vState: TNXDBGridColumnsState;
begin
  vState := Columns.State;
  if Filer.Ancestor = nil then
    StoreIt := vState = csCustomized
  else
    if vState <> TNXCustomDBGrid(Filer.Ancestor).Columns.State then
      StoreIt := True
    else
      StoreIt := (vState = csCustomized) and
       (not CollectionsEqual(Columns, TNXCustomDBGrid(Filer.Ancestor).Columns,
       Columns.Grid, TNXCustomDBGrid(Filer.Ancestor).Columns.Grid));
  Filer.DefineProperty('Columns', ReadColumns, WriteColumns, StoreIt);
end;

function TNXCustomDBGrid.ColumnAtDepth(Col: TNXColumn; ADepth: Integer): TNXColumn;
begin
  Result := Col;
  while (Result <> nil) and (Result.Depth > ADepth) do
    Result := Result.ParentColumn;
end;

function TNXCustomDBGrid.CalcTitleRect(Col: TNXColumn; ARow: Integer;
 var MasterCol: TNXColumn): TRect;
var
  I, J: Integer;
  InBiDiMode: Boolean;
  DrawInfo: TGridDrawInfo;
begin
  MasterCol := ColumnAtDepth(Col, ARow);
  if MasterCol = nil then Exit;
  I := DataToRawColumn(MasterCol.Index);
  if not FTransformed then
  begin
    if I >= LeftCol then
      J := MasterCol.Depth
    else
    begin
      I := LeftCol;
      if Col.Depth > ARow then
        J := ARow
      else
        J := Col.Depth;
    end;
    Result := CellRect(I, J);
  end
  else
  begin
    if I >= TopRow then
      J := MasterCol.Depth
    else
    begin
      I := TopRow;
      if Col.Depth > ARow then
        J := ARow
      else
        J := Col.Depth;
    end;
    Result := CellRect(J, I);
  end;
  InBiDiMode := UseRightToLeftAlignment and
    (Canvas.CanvasOrientation = coLeftToRight);
  for I := Col.Index to Columns.Count - 1 do
  begin
    if ColumnAtDepth(Columns[I], ARow) <> MasterCol then Break;
    if not FTransformed then
      if not InBiDiMode then
      begin
        J := CellRect(DataToRawColumn(I), ARow).Right;
        if J = 0 then Break;
        Result.Right := Max(Result.Right, J);
      end
      else
      begin
        J := CellRect(DataToRawColumn(I), ARow).Left;
        if J >= ClientWidth then Break;
        Result.Left := J;
      end
    else
      if not InBiDiMode then
      begin
        J := CellRect(ARow, DataToRawColumn(I)).Bottom;
        if J = 0 then Break;
        Result.Bottom := Max(Result.Bottom, J);
      end
      else
      begin
        J := CellRect(ARow, DataToRawColumn(I)).Top;
        if J >= ClientHeight then Break;
        Result.Top := J;
      end;
  end;
  J := Col.Depth;
  if not FTransformed then
    if (J <= ARow) and (J < FixedRows - 1) then
    begin
      CalcFixedInfo(DrawInfo);
      Result.Bottom := DrawInfo.Vert.FixedBoundary -
       DrawInfo.Vert.EffectiveLineWidth;
    end
    else
      if (J <= ARow) and (J < FixedCols - 1) then
      begin
        CalcFixedInfo(DrawInfo);
        Result.Right := DrawInfo.Horz.FixedBoundary -
         DrawInfo.Horz.EffectiveLineWidth;
      end;
end;

procedure TNXCustomDBGrid.DrawCell(ACol, ARow: Longint; ARect: TRect;
 AState: TGridDrawState);
var
  FrameOffs: Byte;

  function _RowIsMultiSelected: Boolean;
  var
    Index: Integer;
  begin
    Result := (dgMultiSelect in Options) and Datalink.Active and
      FBookmarks.Find(Datalink.Datasource.Dataset.Bookmark, Index);
  end;

  procedure _DrawTitleCell(ACol, ARow: Integer; Column: TNXColumn;
   var AState: TGridDrawState);
  const
    ScrollArrows: array[Boolean, Boolean] of Integer =
     ((DFCS_SCROLLRIGHT, DFCS_SCROLLLEFT), (DFCS_SCROLLLEFT, DFCS_SCROLLRIGHT));
  var
    MasterCol: TNXColumn;
    TitleRect, TextRect, ButtonRect: TRect;
    I: Integer;
    InBiDiMode: Boolean;
  begin
    TitleRect := CalcTitleRect(Column, ARow, MasterCol);
    if MasterCol = nil then
    begin
      Canvas.FillRect(ARect);
      Exit;
    end;
    Canvas.Font := MasterCol.Title.Font;
    Canvas.Brush.Color := MasterCol.Title.Color;
    if [dgRowLines, dgColLines] * Options = [dgRowLines, dgColLines] then
      InflateRect(TitleRect, -1, -1);
    TextRect := TitleRect;
    I := GetSystemMetrics(SM_CXHSCROLL);
    if ((TextRect.Right - TextRect.Left) > I) and MasterCol.Expandable then
    begin
      Dec(TextRect.Right, I);
      ButtonRect := TitleRect;
      ButtonRect.Left := TextRect.Right;
      I := SaveDC(Canvas.Handle);
      try
        Canvas.FillRect(ButtonRect);
        InflateRect(ButtonRect, -1, -1);
        IntersectClipRect(Canvas.Handle, ButtonRect.Left,
          ButtonRect.Top, ButtonRect.Right, ButtonRect.Bottom);
        InflateRect(ButtonRect, 1, 1);
        InBiDiMode := Canvas.CanvasOrientation = coRightToLeft;
        if InBiDiMode then
          Inc(ButtonRect.Right, GetSystemMetrics(SM_CXHSCROLL) + 4);
        DrawFrameControl(Canvas.Handle, ButtonRect, DFC_SCROLL,
         ScrollArrows[InBiDiMode, MasterCol.Expanded] or DFCS_FLAT);
      finally
        RestoreDC(Canvas.Handle, I);
      end;
    end;
    with MasterCol.Title do
      WriteText(Canvas, TextRect, FrameOffs, FrameOffs, Caption, Alignment,
       IsRightToLeft);
    if [dgRowLines, dgColLines] * Options = [dgRowLines, dgColLines] then
    begin
      InflateRect(TitleRect, 1, 1);
      DrawEdge(Canvas.Handle, TitleRect, BDR_RAISEDINNER, BF_BOTTOMRIGHT);
      DrawEdge(Canvas.Handle, TitleRect, BDR_RAISEDINNER, BF_TOPLEFT);
    end;
    AState := AState - [gdFixed];
  end;

var
  OldActive: Integer;
  Indicator, ConvIndicator: Integer;
  Highlight: Boolean;
  Value: string;
  DrawColumn: TNXColumn;
  MultiSelected: Boolean;
  ALeft: Integer;
begin
  if csLoading in ComponentState then
  begin
    Canvas.Brush.Color := Color;
    Canvas.FillRect(ARect);
    Exit;
  end;
  if not FTransformed then
  begin
    Dec(ARow, FTitleOffset);
    Dec(ACol, FIndicatorOffset);
  end
  else
  begin
    Dec(ACol, FTitleOffset);
    Dec(ARow, FIndicatorOffset);
  end;
  if (gdFixed in AState) and ([dgRowLines, dgColLines] * Options =
   [dgRowLines, dgColLines]) then
  begin
    InflateRect(ARect, -1, -1);
    FrameOffs := 1;
  end
  else
    FrameOffs := 2;
  if not FTransformed then
  begin
    if (gdFixed in AState) and (ACol < 0) then
    begin
      Canvas.Brush.Color := FixedColor;
      Canvas.FillRect(ARect);
      if Assigned(DataLink) and DataLink.Active then
      begin
        MultiSelected := False;
        if ARow >= 0 then
        begin
          OldActive := FDataLink.ActiveRecord;
          try
            FDatalink.ActiveRecord := ARow;
            MultiSelected := _RowIsMultiSelected;
          finally
            FDatalink.ActiveRecord := OldActive;
          end;
        end;
        if (ARow = FDataLink.ActiveRecord) or MultiSelected then
        begin
          Indicator := 0;
          if FDataLink.DataSet <> nil then
            case FDataLink.DataSet.State of
              dsEdit: Indicator := 1;
              dsInsert: Indicator := 2;
              dsBrowse:
                if MultiSelected then
                  if (ARow <> FDatalink.ActiveRecord) then
                    Indicator := 3
                  else
                    Indicator := 4;
            end;
          FIndicators.BkColor := FixedColor;
          ALeft := ARect.Right - FIndicators.Width - FrameOffs;
          if Canvas.CanvasOrientation = coRightToLeft then Inc(ALeft);
          FIndicators.Draw(Canvas, ALeft,
           (ARect.Top + ARect.Bottom - FIndicators.Height) shr 1, Indicator,
           True);
          if ARow = FDatalink.ActiveRecord then
            FSelRow := ARow + FTitleOffset;
        end;
      end;
    end
    else
      with Canvas do
      begin
        DrawColumn := Columns[ACol];
        if not DrawColumn.Showing then Exit;
        if not (gdFixed in AState) then
        begin
          Font := DrawColumn.Font;
          Brush.Color := DrawColumn.Color;
        end;
        if ARow < 0 then
          _DrawTitleCell(ACol, ARow + FTitleOffset, DrawColumn, AState)
        else
          if (FDataLink = nil) or not FDataLink.Active then
            FillRect(ARect)
          else
          begin
            Value := '';
            OldActive := FDataLink.ActiveRecord;
            try
              FDataLink.ActiveRecord := ARow;
              if Assigned(DrawColumn.Field) then
                Value := VarToStr(DrawColumn.Field.Value);
              Highlight := HighlightCell(ACol, ARow, Value, AState);
              if Highlight then
              begin
                Brush.Color := clHighlight;
                Font.Color := clHighlightText;
              end;
              if not Enabled then
                Font.Color := clGrayText;
              if FDefaultDrawing then
                WriteText(Canvas, ARect, 2, 2, Value, DrawColumn.Alignment,
                 UseRightToLeftAlignmentForField(DrawColumn.Field,
                 DrawColumn.Alignment));
              if Columns.State = csDefault then
                DrawDataCell(ARect, DrawColumn.Field, AState);
              DrawColumnCell(ARect, ACol, DrawColumn, AState);
            finally
              FDataLink.ActiveRecord := OldActive;
            end;
            if FDefaultDrawing and (gdSelected in AState)
             and ((dgAlwaysShowSelection in Options) or Focused)
             and not (csDesigning in ComponentState)
             and not (dgRowSelect in Options)
             and (UpdateLock = 0)
             and (ValidParentForm(Self).ActiveControl = Self) then
              Windows.DrawFocusRect(Handle, ARect);
          end;
      end;
  end
  else
  begin
    if (gdFixed in AState) and (ARow < 0) then
    begin
      Canvas.Brush.Color := FixedColor;
      Canvas.FillRect(ARect);
      if Assigned(DataLink) and DataLink.Active then
      begin
        MultiSelected := False;
        if ACol >= 0 then
        begin
          OldActive := FDataLink.ActiveRecord;
          try
            FDatalink.ActiveRecord := ACol;
            MultiSelected := _RowIsMultiSelected;
          finally
            FDatalink.ActiveRecord := OldActive;
          end;
        end;
        if (ACol = FDataLink.ActiveRecord) or MultiSelected then
        begin
          Indicator := 0;
          ConvIndicator := 0;
          if FDataLink.DataSet <> nil then
            case FDataLink.DataSet.State of
              dsEdit: Indicator := 1;
              dsInsert: Indicator := 2;
              dsBrowse:
                if MultiSelected then
                  if (ACol <> FDatalink.ActiveRecord) then
                    Indicator := 3
                  else
                    ConvIndicator := 1;
            end;
          if Indicator = 0 then
          begin
            FConvIndicators.BkColor := FixedColor;
            ALeft := (ARect.Left + ARect.Right - FConvIndicators.Width) shr 1;
            if Canvas.CanvasOrientation = coRightToLeft then Inc(ALeft);
            FConvIndicators.Draw(Canvas, ALeft, (ARect.Top + ARect.Bottom -
              FConvIndicators.Height) shr 1, ConvIndicator, True);
          end
          else
          begin
            FIndicators.BkColor := FixedColor;
            ALeft := (ARect.Left + ARect.Right - FConvIndicators.Width) shr 1;
            if Canvas.CanvasOrientation = coRightToLeft then Inc(ALeft);
            FIndicators.Draw(Canvas, ALeft, (ARect.Top + ARect.Bottom -
             FIndicators.Height) shr 1, Indicator, True);
          end;
          if ACol = FDatalink.ActiveRecord then
            FSelRow := ACol + FTitleOffset;
        end;
      end;
    end
    else
      with Canvas do
      begin
        DrawColumn := Columns[ARow];
        if not DrawColumn.Showing then Exit;
        if not (gdFixed in AState) then
        begin
          Font := DrawColumn.Font;
          Brush.Color := DrawColumn.Color;
        end;
        if ACol < 0 then
          _DrawTitleCell(ARow, ACol + FTitleOffset, DrawColumn, AState)
        else
          if (FDataLink = nil) or not FDataLink.Active then
            FillRect(ARect)
          else
          begin
            Value := '';
            OldActive := FDataLink.ActiveRecord;
            try
              FDataLink.ActiveRecord := ACol;
              if Assigned(DrawColumn.Field) then
                Value := VarToStr(DrawColumn.Field.Value);
              Highlight := HighlightCell(ARow, ACol, Value, AState);
              if Highlight then
              begin
                Brush.Color := clHighlight;
                Font.Color := clHighlightText;
              end;
              if not Enabled then
                Font.Color := clGrayText;
              if FDefaultDrawing then
                WriteText(Canvas, ARect, 2, 2, Value, DrawColumn.Alignment,
                 UseRightToLeftAlignmentForField(DrawColumn.Field,
                 DrawColumn.Alignment));
              if Columns.State = csDefault then
                DrawDataCell(ARect, DrawColumn.Field, AState);
              DrawColumnCell(ARect, ARow, DrawColumn, AState);
            finally
              FDataLink.ActiveRecord := OldActive;
            end;
            if FDefaultDrawing and (gdSelected in AState)
             and ((dgAlwaysShowSelection in Options) or Focused)
             and not (csDesigning in ComponentState)
             and not (dgRowSelect in Options)
             and (UpdateLock = 0)
             and (ValidParentForm(Self).ActiveControl = Self) then
              Windows.DrawFocusRect(Handle, ARect);
          end;
      end;
  end;
  if (gdFixed in AState) and ([dgRowLines, dgColLines] * Options =
   [dgRowLines, dgColLines]) then
  begin
    InflateRect(ARect, 1, 1);
    DrawEdge(Canvas.Handle, ARect, BDR_RAISEDINNER, BF_BOTTOMRIGHT);
    DrawEdge(Canvas.Handle, ARect, BDR_RAISEDINNER, BF_TOPLEFT);
  end;
end;

procedure TNXCustomDBGrid.DrawDataCell(const Rect: TRect; Field: TField;
 State: TGridDrawState);
begin
  if Assigned(FOnDrawDataCell) then FOnDrawDataCell(Self, Rect, Field, State);
end;

procedure TNXCustomDBGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer;
 Column: TNXColumn; State: TGridDrawState);
begin
  if Assigned(OnDrawColumnCell) then
    OnDrawColumnCell(Self, Rect, DataCol, Column, State);
end;

procedure TNXCustomDBGrid.EditButtonClick;
begin
  if Assigned(FOnEditButtonClick) then
    FOnEditButtonClick(Self)
  else
    ShowPopupEditor(Columns[SelectedIndex]);
end;

procedure TNXCustomDBGrid.EditingChanged;
begin
  if not FTransformed then
    if dgIndicator in Options then
      InvalidateCell(0, FSelRow)
    else
      if dgIndicator in Options then
        InvalidateCell(FSelRow, 0);
end;

procedure TNXCustomDBGrid.EndLayout;
begin
  if FLayoutLock > 0 then
  begin
    try
      try
        if FLayoutLock = 1 then
          InternalLayout;
      finally
        if FLayoutLock = 1 then
          FColumns.EndUpdate;
      end;
    finally
      Dec(FLayoutLock);
      EndUpdate;
    end;
  end;
end;

procedure TNXCustomDBGrid.EndUpdate;
begin
  if FUpdateLock > 0 then
    Dec(FUpdateLock);
end;

function TNXCustomDBGrid.GetColField(DataCol: Integer): TField;
begin
  Result := nil;
  if (DataCol >= 0) and FDatalink.Active and (DataCol < Columns.Count) then
    Result := Columns[DataCol].Field;
end;

function TNXCustomDBGrid.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

function TNXCustomDBGrid.GetEditLimit: Integer;
begin
  Result := 0;
  if Assigned(SelectedField)
   and (SelectedField.DataType in [ftString, ftWideString]) then
    Result := SelectedField.Size;
end;

function TNXCustomDBGrid.GetEditMask(ACol, ARow: Longint): string;
begin
  Result := '';
  if FDatalink.Active then
    if not FTransformed then
    begin
      with Columns[RawToDataColumn(ACol)] do
        if Assigned(Field) then
          Result := Field.EditMask;
    end
    else begin
      with Columns[RawToDataColumn(ARow)] do
        if Assigned(Field) then
          Result := Field.EditMask;
    end;
end;

function TNXCustomDBGrid.GetEditText(ACol, ARow: Longint): string;
begin
  Result := '';
  if FDatalink.Active then
    if not FTransformed then
    begin
      with Columns[RawToDataColumn(ACol)] do
        if Assigned(Field) then
          Result := VarToStr(Field.Value);
    end
    else
    begin
      with Columns[RawToDataColumn(ARow)] do
        if Assigned(Field) then
          Result := VarToStr(Field.Value);
    end;
  FEditText := Result;
end;

function TNXCustomDBGrid.GetFieldCount: Integer;
begin
  Result := FDatalink.FieldCount;
end;

function TNXCustomDBGrid.GetFields(FieldIndex: Integer): TField;
begin
  Result := FDatalink.Fields[FieldIndex];
end;

function TNXCustomDBGrid.GetFieldValue(ACol: Integer): string;
var
  Field: TField;
begin
  Result := '';
  Field := GetColField(ACol);
  if Field <> nil then Result := VarToStr(Field.Value);
end;

function TNXCustomDBGrid.GetSelectedField: TField;
var
  Index: Integer;
begin
  Index := SelectedIndex;
  if Index <> -1 then
    Result := Columns[Index].Field
  else
    Result := nil;
end;

function TNXCustomDBGrid.GetSelectedIndex: Integer;
begin
  if not FTransformed then
    Result := RawToDataColumn(Col)
  else
    Result := RawToDataColumn(Row);
end;

function TNXCustomDBGrid.HighlightCell(DataCol, DataRow: Integer;
  const Value: string; AState: TGridDrawState): Boolean;
var
  Index: Integer;
begin
  Result := False;
  if (dgMultiSelect in Options) and Datalink.Active then
    Result := FBookmarks.Find(Datalink.Datasource.Dataset.Bookmark, Index);
  if not Result then
    Result := (gdSelected in AState)
     and ((dgAlwaysShowSelection in Options) or Focused)
     and ((UpdateLock = 0) or (dgRowSelect in Options));
end;

procedure TNXCustomDBGrid.KeyDown(var Key: Word; Shift: TShiftState);
var
  KeyDownEvent: TKeyEvent;

  procedure _ClearSelection;
  begin
    if (dgMultiSelect in Options) then
    begin
      FBookmarks.Clear;
      FSelecting := False;
    end;
  end;

  procedure _DoSelection(Select: Boolean; Direction: Integer);
  var
    AddAfter: Boolean;
  begin
    AddAfter := False;
    BeginUpdate;
    try
      if (dgMultiSelect in Options) and FDatalink.Active then
        if Select and (ssShift in Shift) then
        begin
          if not FSelecting then
          begin
            FSelectionAnchor := FBookmarks.CurrentRow;
            FBookmarks.CurrentRowSelected := True;
            FSelecting := True;
            AddAfter := True;
          end
          else
            with FBookmarks do
            begin
              AddAfter := Compare(CurrentRow, FSelectionAnchor) <> -Direction;
              if not AddAfter then
                CurrentRowSelected := False;
            end
        end
        else
          _ClearSelection;
      FDatalink.MoveBy(Direction);
      if AddAfter then
        FBookmarks.CurrentRowSelected := True;
    finally
      EndUpdate;
    end;
  end;

  procedure _NextRow(Select: Boolean);
  begin
    with FDatalink.Dataset do
    begin
      if (State = dsInsert) and not Modified and not FDatalink.FModified then
        if FDataLink.EOF then
          Exit
        else
          Cancel
      else
        _DoSelection(Select, 1);
      if FDataLink.EOF and CanModify and (not ReadOnly)
       and (dgEditing in Options) then
        Append;
    end;
  end;

  procedure _PriorRow(Select: Boolean);
  begin
    with FDatalink.Dataset do
      if (State = dsInsert) and not Modified and FDataLink.EOF
       and not FDatalink.FModified then
        Cancel
      else
        _DoSelection(Select, -1);
  end;

  procedure _Tab(GoForward: Boolean);
  var
    ACol, Original: Integer;
  begin
    if not FTransformed then
      ACol := Col
    else
      ACol := Row;
    Original := ACol;
    BeginUpdate;
    try
      while True do
      begin
        if GoForward then
          Inc(ACol)
        else
          Dec(ACol);
        if not FTransformed then
        begin
          if ACol >= ColCount then
          begin
            _NextRow(False);
            ACol := FIndicatorOffset;
          end
          else
            if ACol < FIndicatorOffset then
            begin
              _PriorRow(False);
              ACol := ColCount - FIndicatorOffset;
            end;
        end
        else
        begin
          if ACol >= RowCount then
          begin
            _NextRow(False);
            ACol := FIndicatorOffset;
          end
          else
            if ACol < FIndicatorOffset then
            begin
              _PriorRow(False);
              ACol := RowCount - FIndicatorOffset;
            end;
        end;
        if ACol = Original then Exit;
        if TabStops[ACol] then
        begin
          MoveCol(ACol, 0);
          Exit;
        end;
      end;
    finally
      EndUpdate;
    end;
  end;

  function _DeletePrompt: Boolean;
  var
    Msg: string;
  begin
    if (FBookmarks.Count > 1) then
      Msg := SDeleteMultipleRecordsQuestion
    else
      Msg := SDeleteRecordQuestion;
    Result := not (dgConfirmDelete in Options) or
      (MessageDlg(Msg, mtConfirmation, mbOKCancel, 0) <> idCancel);
  end;

const
  RowMovementKeys = [VK_UP, VK_PRIOR, VK_DOWN, VK_NEXT, VK_HOME, VK_END];

begin
  KeyDownEvent := OnKeyDown;
  if Assigned(KeyDownEvent) then KeyDownEvent(Self, Key, Shift);
  if not FDatalink.Active or not CanGridAcceptKey(Key, Shift) then Exit;
  if UseRightToLeftAlignment then
    if Key = VK_LEFT then
      Key := VK_RIGHT
    else if Key = VK_RIGHT then
      Key := VK_LEFT;
  with FDatalink.DataSet do
    if ssCtrl in Shift then
    begin
      if (Key in RowMovementKeys) then _ClearSelection;
      if not FTransformed then
        case Key of
          VK_UP, VK_PRIOR: FDataLink.MoveBy(-FDatalink.ActiveRecord);
          VK_DOWN, VK_NEXT:
            FDataLink.MoveBy(FDatalink.BufferCount -
             FDatalink.ActiveRecord - 1);
          VK_LEFT: MoveCol(FIndicatorOffset, 1);
          VK_RIGHT: MoveCol(ColCount - 1, -1);
          VK_HOME: First;
          VK_END: Last;
          VK_DELETE:
            if (not ReadOnly) and not IsEmpty
             and CanModify and _DeletePrompt then
              if FBookmarks.Count > 0 then
                FBookmarks.Delete
              else
                Delete;
        end
      else
        case Key of
          VK_LEFT: FDataLink.MoveBy(-FDatalink.ActiveRecord);
          VK_RIGHT:
            FDataLink.MoveBy(FDatalink.BufferCount -
             FDatalink.ActiveRecord - 1);
          VK_UP, VK_PRIOR: MoveCol(FIndicatorOffset, 1);
          VK_DOWN, VK_NEXT: MoveCol(RowCount - 1, -1);
          VK_HOME: First;
          VK_END: Last;
          VK_DELETE:
            if (not ReadOnly) and not IsEmpty
             and CanModify and _DeletePrompt then
              if FBookmarks.Count > 0 then
                FBookmarks.Delete
              else
                Delete;
        end;
    end
    else
    begin
      if not FTransformed then
        case Key of
          VK_UP: _PriorRow(True);
          VK_DOWN: _NextRow(True);
          VK_LEFT:
            if dgRowSelect in Options then
              _PriorRow(False)
            else
              MoveCol(Col - 1, -1);
          VK_RIGHT:
            if dgRowSelect in Options then
              _NextRow(False)
            else
              MoveCol(Col + 1, -1);
          VK_HOME:
            if (ColCount = FIndicatorOffset + 1)
             or (dgRowSelect in Options) then
            begin
              _ClearSelection;
              First;
            end
            else
              MoveCol(FIndicatorOffset, 1);
          VK_END:
            if (ColCount = FIndicatorOffset + 1)
             or (dgRowSelect in Options) then
            begin
              _ClearSelection;
              Last;
            end
            else
              MoveCol(ColCount - 1, -1);
          VK_NEXT:
            begin
              _ClearSelection;
              FDataLink.MoveBy(VisibleRowCount);
            end;
          VK_PRIOR:
            begin
              _ClearSelection;
              FDataLink.MoveBy(-VisibleRowCount);
            end;
          VK_INSERT:
            if CanModify and (not ReadOnly) and (dgEditing in Options) then
            begin
              _ClearSelection;
              Insert;
            end;
          VK_TAB:
            if not (ssAlt in Shift) then _Tab(not (ssShift in Shift));
          VK_ESCAPE:
            begin
              if SysLocale.PriLangID = LANG_KOREAN then
                FIsESCKey := True;
              FDatalink.Reset;
              _ClearSelection;
              if not (dgAlwaysShowEditor in Options) then HideEditor;
            end;
          VK_F2: EditorMode := True;
        end
      else
        case Key of
          VK_LEFT: _PriorRow(True);
          VK_RIGHT: _NextRow(True);
          VK_UP, VK_PRIOR:
            if dgRowSelect in Options then
              _PriorRow(False)
            else
              MoveCol(Row - 1, -1);
          VK_DOWN, VK_NEXT:
            if dgRowSelect in Options then
              _NextRow(False)
            else
              MoveCol(Row + 1, -1);
          VK_HOME:
            if (RowCount = FIndicatorOffset + 1)
             or (dgRowSelect in Options) then
            begin
              _ClearSelection;
              First;
            end
            else
              MoveCol(FIndicatorOffset, 1);
          VK_END:
            if (RowCount = FIndicatorOffset + 1)
             or (dgRowSelect in Options) then
            begin
              _ClearSelection;
              Last;
            end
            else
              MoveCol(RowCount - 1, -1);
          VK_INSERT:
            if CanModify and (not ReadOnly) and (dgEditing in Options) then
            begin
              _ClearSelection;
              Insert;
            end;
          VK_TAB: if not (ssAlt in Shift) then _Tab(not (ssShift in Shift));
          VK_ESCAPE:
            begin
              if SysLocale.PriLangID = LANG_KOREAN then
                FIsESCKey := True;
              FDatalink.Reset;
              _ClearSelection;
              if not (dgAlwaysShowEditor in Options) then HideEditor;
            end;
          VK_F2: EditorMode := True;
        end;
    end;
end;

procedure TNXCustomDBGrid.KeyPress(var Key: Char);
begin
  FIsESCKey := False;
  if not (dgAlwaysShowEditor in Options) and (Key = #13) then
    FDatalink.UpdateData;
  inherited KeyPress(Key);
end;

procedure TNXCustomDBGrid.InternalLayout;

  function _FieldIsMapped(F: TField): Boolean;
  var
    X: Integer;
  begin
    Result := False;
    if F = nil then Exit;
    for X := 0 to FDatalink.FieldCount - 1 do
      if FDatalink.Fields[X] = F then
      begin
        Result := True;
        Exit;
      end;
  end;

  procedure _CheckForPassthroughs;
  var
    SeenPassthrough: Boolean;
    I, J: Integer;
    Column: TNXColumn;
  begin
    SeenPassthrough := False;
    for I := 0 to FColumns.Count - 1 do
      if not FColumns[I].IsStored then
        SeenPassthrough := True
      else if SeenPassthrough then
      begin
        for J := FColumns.Count - 1 downto 0 do
        begin
          Column := FColumns[J];
          if not Column.IsStored then
            Column.Free;
        end;
        Exit;
      end;
  end;

  procedure _ResetColumnFieldBindings;
  var
    I, J, K: Integer;
    Fld: TField;
    Column: TNXColumn;
  begin
    if FColumns.State = csDefault then
    begin
      if (not FDataLink.Active) and (FDatalink.DefaultFields) then
        FColumns.Clear
      else
        for J := FColumns.Count - 1 downto 0 do
          with FColumns[J] do
            if not Assigned(Field)
             or not _FieldIsMapped(Field) then Free;
      I := FDataLink.FieldCount;
      if (I = 0) and (FColumns.Count = 0) then Inc(I);
      for J := 0 to I - 1 do
      begin
        Fld := FDatalink.Fields[J];
        if Assigned(Fld) then
        begin
          K := J;
          while (K < FColumns.Count) and (FColumns[K].Field <> Fld) do
            Inc(K);
          if K < FColumns.Count then
            Column := FColumns[K]
          else
          begin
            Column := FColumns.InternalAdd;
            Column.Field := Fld;
          end;
        end
        else
          Column := FColumns.InternalAdd;
        Column.Index := J;
      end;
    end
    else
    begin
      for I := 0 to FColumns.Count - 1 do
        FColumns[I].Field := nil;
    end;
  end;

  procedure _MeasureTitleHeights;
  var
    I, J, K, D, B: Integer;
    RestoreCanvas: Boolean;
    Heights: array of Integer;
  begin
    RestoreCanvas := not HandleAllocated;
    if RestoreCanvas then
      Canvas.Handle := GetDC(0);
    try
      Canvas.Font := Font;
      K := Canvas.TextHeight('Wg') + 3;
      if dgRowLines in Options then
        Inc(K, GridLineWidth);
      DefaultRowHeight := K;
      B := GetSystemMetrics(SM_CYHSCROLL);
      if dgTitles in Options then
      begin
        SetLength(Heights, FTitleOffset + 1);
        for I := 0 to FColumns.Count - 1 do
        begin
          Canvas.Font := FColumns[I].Title.Font;
          D := FColumns[I].Depth;
          if D <= High(Heights) then
          begin
            J := Canvas.TextHeight('Wg') + 4;
            if FColumns[I].Expandable and (B > J) then
              J := B;
            Heights[D] := Max(J, Heights[D]);
          end;
        end;
        if Heights[0] = 0 then
        begin
          Canvas.Font := FTitleFont;
          Heights[0] := Canvas.TextHeight('Wg') + 4;
        end;
        for I := 0 to High(Heights) - 1 do
          RowHeights[I] := Heights[I];
      end;
    finally
      if RestoreCanvas then
      begin
        ReleaseDC(0, Canvas.Handle);
        Canvas.Handle := 0;
      end;
    end;
  end;

var
  I, J: Integer;
begin
  if ([csLoading, csDestroying] * ComponentState) <> [] then Exit;
  if HandleAllocated then KillMessage(Handle, cm_DeferLayout);
  _CheckForPassthroughs;
  FIndicatorOffset := 0;
  if dgIndicator in Options then
    Inc(FIndicatorOffset);
  FDatalink.ClearMapping;
  if FDatalink.Active then DefineFieldMap;
  DoubleBuffered := (FDatalink.Dataset <> nil) and FDatalink.Dataset.ObjectView;
  _ResetColumnFieldBindings;
  FVisibleColumns.Clear;
  for I := 0 to FColumns.Count - 1 do
    if FColumns[I].Showing then FVisibleColumns.Add(FColumns[I]);
  if not FTransformed then begin
    ColCount := FColumns.Count + FIndicatorOffset;
    inherited FixedCols := FIndicatorOffset;
  end
  else begin
    RowCount := FColumns.Count + FIndicatorOffset;
    inherited FixedRows := FIndicatorOffset;
  end;
  FTitleOffset := 0;
  if dgTitles in Options then
  begin
    FTitleOffset := 1;
    if (FDatalink <> nil) and (FDatalink.Dataset <> nil)
     and FDatalink.Dataset.ObjectView then
    begin
      for I := 0 to FColumns.Count - 1 do
      begin
        if FColumns[I].Showing then
        begin
          J := FColumns[I].Depth;
          if J >= FTitleOffset then FTitleOffset := J + 1;
        end;
      end;
    end;
  end;
  UpdateRowCount;
  _MeasureTitleHeights;
  SetColumnAttributes;
  UpdateActive;
  Invalidate;
end;

procedure TNXCustomDBGrid.LayoutChanged;
begin
  if AcquireLayoutLock then
    EndLayout;
end;

procedure TNXCustomDBGrid.LinkActive(Value: Boolean);
var
  Comp: TComponent;
  I: Integer;
begin
  if not Value then HideEditor;
  FBookmarks.LinkActive(Value);
  try
    LayoutChanged;
  finally
    for I := ComponentCount - 1 downto 0 do
    begin
      Comp := Components[I];
      if (Comp is TNXCustomDBGrid)
       and (TNXCustomDBGrid(Comp).DragKind = dkDock) then
        Comp.Free;
    end;
    UpdateScrollBar;
    if Value and (dgAlwaysShowEditor in Options) then ShowEditor;
  end;
end;

procedure TNXCustomDBGrid.Loaded;
begin
  inherited Loaded;
  if FColumns.Count > 0 then begin
    if not FTransformed then
      ColCount := FColumns.Count
    else
      RowCount := FColumns.Count;
  end;
  LayoutChanged;
end;

function TNXCustomDBGrid.PtInExpandButton(X, Y: Integer;
 var MasterCol: TNXColumn): Boolean;
var
  Cell: TGridCoord;
  R: TRect;
begin
  MasterCol := nil;
  Result := False;
  Cell := MouseCoord(X, Y);
  if not FTransformed then
  begin
    if (Cell.Y < FTitleOffset) and FDatalink.Active
     and (Cell.X >= FIndicatorOffset)
     and (RawToDataColumn(Cell.X) < Columns.Count) then
    begin
      R := CalcTitleRect(Columns[RawToDataColumn(Cell.X)], Cell.Y, MasterCol);
      if not UseRightToLeftAlignment then
        R.Left := R.Right - GetSystemMetrics(SM_CXHSCROLL)
      else
        R.Right := R.Left + GetSystemMetrics(SM_CXHSCROLL);
      Result := MasterCol.Expandable and PtInRect(R, Point(X, Y));
    end;
  end
  else begin
    if (Cell.X < FTitleOffset) and FDatalink.Active
     and (Cell.Y >= FIndicatorOffset)
     and (RawToDataColumn(Cell.Y) < Columns.Count) then
    begin
      R := CalcTitleRect(Columns[RawToDataColumn(Cell.Y)], Cell.X, MasterCol);
      if not UseRightToLeftAlignment then
        R.Left := R.Right - GetSystemMetrics(SM_CXHSCROLL)
      else
        R.Right := R.Left + GetSystemMetrics(SM_CXHSCROLL);
      Result := MasterCol.Expandable and PtInRect(R, Point(X, Y));
    end;
  end;
end;

procedure TNXCustomDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState;
 X, Y: Integer);
var
  Cell: TGridCoord;
  OldCol, OldRow: Integer;
  MasterCol: TNXColumn;
begin
  if not AcquireFocus then Exit;
  if (ssDouble in Shift) and (Button = mbLeft) then
  begin
    DblClick;
    Exit;
  end;
  if Sizing(X, Y) then
  begin
    FDatalink.UpdateData;
    inherited MouseDown(Button, Shift, X, Y);
    Exit;
  end;
  Cell := MouseCoord(X, Y);
  if (Cell.X < 0) and (Cell.Y < 0) then
  begin
    inherited MouseDown(Button, Shift, X, Y);
    Exit;
  end;
  if not FTransformed then
  begin
    if (DragKind = dkDock) and (Cell.X < FIndicatorOffset)
     and (Cell.Y < FTitleOffset) and (not (csDesigning in ComponentState)) then
    begin
      BeginDrag(false);
      Exit;
    end;
  end
  else
  begin
    if (DragKind = dkDock) and (Cell.Y < FIndicatorOffset)
     and (Cell.X < FTitleOffset) and (not (csDesigning in ComponentState)) then
    begin
      BeginDrag(false);
      Exit;
    end;
  end;
  if PtInExpandButton(X, Y, MasterCol) then
  begin
    MasterCol.Expanded := not MasterCol.Expanded;
    ReleaseCapture;
    UpdateDesigner;
    Exit;
  end;
  if not FTransformed then
  begin
    if ((csDesigning in ComponentState) or (dgColumnResize in Options))
     and (Cell.Y < FTitleOffset) then
    begin
      FDataLink.UpdateData;
      inherited MouseDown(Button, Shift, X, Y);
      Exit;
    end;
  end
  else begin
    if ((csDesigning in ComponentState) or (dgColumnResize in Options))
     and (Cell.X < FTitleOffset) then
    begin
      FDataLink.UpdateData;
      inherited MouseDown(Button, Shift, X, Y);
      Exit;
    end;
  end;
  if FDatalink.Active then
    with Cell do
    begin
      BeginUpdate;
      try
        FDatalink.UpdateData;
        HideEditor;
        OldCol := Col;
        OldRow := Row;
        if not FTransformed then
        begin
          if (Y >= FTitleOffset) and (Y - Row <> 0) then
            FDatalink.MoveBy(Y - Row);
          if X >= FIndicatorOffset then
            MoveCol(X, 0);
        end
        else
        begin
          if (X >= FTitleOffset) and (X - Col <> 0) then
            FDatalink.MoveBy(X - Col);
          if Y >= FIndicatorOffset then
            MoveCol(Y, 0);
        end;
        if (dgMultiSelect in Options) and FDatalink.Active then
          with FBookmarks do
          begin
            FSelecting := False;
            if ssCtrl in Shift then
              CurrentRowSelected := not CurrentRowSelected
            else
            begin
              Clear;
              CurrentRowSelected := True;
            end;
          end;
        if (Button = mbLeft) and (((X = OldCol) and (Y = OldRow))
         or (dgAlwaysShowEditor in Options)) then
          ShowEditor
        else
          InvalidateEditor;
      finally
        EndUpdate;
      end;
    end;
end;

procedure TNXCustomDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
  Cell: TGridCoord;
  SaveState: TGridState;
begin
  SaveState := FGridState;
  inherited MouseUp(Button, Shift, X, Y);
  if (SaveState = gsRowSizing) or (SaveState = gsColSizing)
   or ((InplaceEditor <> nil) and (InplaceEditor.Visible)
   and (PtInRect(InplaceEditor.BoundsRect, Point(X, Y)))) then Exit;
  Cell := MouseCoord(X, Y);
  if not FTransformed then
  begin
    if (Button = mbLeft) and (Cell.X >= FIndicatorOffset) and (Cell.Y >= 0) then
      if Cell.Y < FTitleOffset then
        TitleClick(Columns[RawToDataColumn(Cell.X)])
      else
        CellClick(Columns[SelectedIndex]);
  end
  else
  begin
    if (Button = mbLeft) and (Cell.Y >= FIndicatorOffset) and (Cell.X >= 0) then
      if Cell.X < FTitleOffset then
        TitleClick(Columns[RawToDataColumn(Cell.Y)])
      else
        CellClick(Columns[SelectedIndex]);
  end;
end;

procedure TNXCustomDBGrid.MoveCol(RawCol, Direction: Integer);
var
  OldCol: Integer;
begin
  FDatalink.UpdateData;
  if not FTransformed then begin
    if RawCol >= ColCount then
      RawCol := ColCount - 1;
    if RawCol < FIndicatorOffset then
      RawCol := FIndicatorOffset;
    if Direction <> 0 then
    begin
      while (RawCol < ColCount) and (RawCol >= FIndicatorOffset)
       and (ColWidths[RawCol] <= 0) do
        Inc(RawCol, Direction);
      if (RawCol >= ColCount) or (RawCol < FIndicatorOffset) then Exit;
    end;
    OldCol := Col;
  end
  else
  begin
    if RawCol >= RowCount then
      RawCol := RowCount - 1;
    if RawCol < FIndicatorOffset then
      RawCol := FIndicatorOffset;
    if Direction <> 0 then
      if (RawCol >= RowCount) or (RawCol < FIndicatorOffset) then Exit;
    OldCol := Row;
  end;
  if RawCol <> OldCol then
  begin
    if not FInColExit then
    begin
      FInColExit := True;
      try
        ColExit;
      finally
        FInColExit := False;
      end;
      if not FTransformed then
      begin
        if Col <> OldCol then Exit;
      end
      else
      begin
        if Row <> OldCol then Exit;
      end;
    end;
    if not (dgAlwaysShowEditor in Options) then HideEditor;
    if not FTransformed then
      Col := RawCol
    else
      Row := RawCol;
    ColEnter;
  end;
end;

procedure TNXCustomDBGrid.Notification(AComponent: TComponent;
 Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
  begin
    if (AComponent is TPopupMenu) then
    begin
      for I := 0 to Columns.Count - 1 do
        if Columns[I].PopupMenu = AComponent then
          Columns[I].PopupMenu := nil;
    end
    else if (FDataLink <> nil) then
      if (AComponent = DataSource) then
        DataSource := nil
      else if (AComponent is TField) then
      begin
        NeedLayout := False;
        BeginLayout;
        try
          for I := 0 to Columns.Count - 1 do
            with Columns[I] do
              if Field = AComponent then
              begin
                Field := nil;
                NeedLayout := True;
              end;
        finally
          if NeedLayout and Assigned(FDatalink.Dataset)
           and not FDatalink.Dataset.ControlsDisabled then
            EndLayout
          else
            DeferLayout;
        end;
      end;
  end;
end;

procedure TNXCustomDBGrid.RecordChanged(Field: TField);
var
  I: Integer;
  CField: TField;
begin
  if not HandleAllocated then Exit;
  if Field = nil then
    Invalidate
  else
  begin
    for I := 0 to Columns.Count - 1 do
      if Columns[I].Field = Field then
      begin
        if not FTransformed then
          InvalidateCol(DataToRawColumn(I))
        else
          InvalidateRow(DataToRawColumn(I));
      end;
  end;
  CField := SelectedField;
  if ((Field = nil) or (CField = Field))
   and (Assigned(CField) and (VarToStr(CField.Value) <> FEditText)
   and ((SysLocale.PriLangID <> LANG_KOREAN) or FIsESCKey)) then
  begin
    InvalidateEditor;
    if InplaceEditor <> nil then InplaceEditor.Deselect;
  end;
end;

procedure TNXCustomDBGrid.Scroll(Distance: Integer);
var
  OldRect, NewRect: TRect;
  RowHeight, ColWidth: Integer;
begin
  if not HandleAllocated then Exit;
  if not FTransformed then
  begin
    OldRect := BoxRect(0, Row, ColCount - 1, Row);
    if (FDataLink.ActiveRecord >= RowCount - FTitleOffset) then UpdateRowCount;
  end
  else
  begin
    OldRect := BoxRect(Col, 0, Col, RowCount - 1);
    if (FDataLink.ActiveRecord >= ColCount - FTitleOffset) then UpdateRowCount;
  end;
  UpdateScrollBar;
  UpdateActive;
  if not FTransformed then
    NewRect := BoxRect(0, Row, ColCount - 1, Row)
  else
    NewRect := BoxRect(Col, 0, Col, RowCount - 1);
  ValidateRect(Handle, @OldRect);
  InvalidateRect(Handle, @OldRect, False);
  InvalidateRect(Handle, @NewRect, False);
  if Distance <> 0 then
  begin
    HideEditor;
    try
      if not FTransformed then
      begin
        if Abs(Distance) > VisibleRowCount then
        begin
          Invalidate;
          Exit;
        end
        else
        begin
          RowHeight := DefaultRowHeight;
          if dgRowLines in Options then Inc(RowHeight, GridLineWidth);
          if dgIndicator in Options then
          begin
            OldRect := BoxRect(0, FSelRow, ColCount - 1, FSelRow);
            InvalidateRect(Handle, @OldRect, False);
          end;
          NewRect := BoxRect(0, FTitleOffset, ColCount - 1, 1000);
          ScrollWindowEx(Handle, 0, -RowHeight * Distance, @NewRect, @NewRect,
           0, nil, SW_Invalidate);
          if dgIndicator in Options then
          begin
            NewRect := BoxRect(0, Row, ColCount - 1, Row);
            InvalidateRect(Handle, @NewRect, False);
          end;
        end;
      end
      else begin
        if Abs(Distance) > VisibleColCount then
        begin
          Invalidate;
          Exit;
        end
        else
        begin
          ColWidth := DefaultColWidth;
          if dgColLines in Options then Inc(ColWidth, GridLineWidth);
          if dgIndicator in Options then
          begin
            OldRect := BoxRect(FSelRow, 0, FSelRow, RowCount - 1);
            InvalidateRect(Handle, @OldRect, False);
          end;
          NewRect := BoxRect(FTitleOffset, 0, 1000, RowCount - 1);
          ScrollWindowEx(Handle, -ColWidth * Distance, 0, @NewRect, @NewRect,
           0, nil, SW_Invalidate);
          if dgIndicator in Options then
          begin
            NewRect := BoxRect(Col, 0, Col, RowCount - 1);
            InvalidateRect(Handle, @NewRect, False);
          end;
        end;
      end;
    finally
      if dgAlwaysShowEditor in Options then ShowEditor;
    end;
  end;
  if UpdateLock = 0 then Update;
end;

procedure TNXCustomDBGrid.SetColumns(Value: TNXDBGridColumns);
begin
  Columns.Assign(Value);
end;

function ReadOnlyField(Field: TField): Boolean;
var
  MasterField: TField;
begin
  Result := Field.ReadOnly;
  if not Result and (Field.FieldKind = fkLookup) then
  begin
    Result := True;
    if Field.DataSet = nil then Exit;
    MasterField := Field.Dataset.FindField(Field.KeyFields);
    if MasterField = nil then Exit;
    Result := MasterField.ReadOnly;
  end;
end;

procedure TNXCustomDBGrid.SetColumnAttributes;
var
  I, TextWidth: Integer;
  DC: HDC;
  Sz: TSize;
begin
  if not FTransformed then
  begin
    for I := 0 to FColumns.Count - 1 do
      with FColumns[I] do
      begin
        TabStops[I + FIndicatorOffset] := Showing and not ReadOnly
         and DataLink.Active and Assigned(Field)
         and not (Field.FieldKind = fkCalculated) and not ReadOnlyField(Field);
        ColWidths[I + FTitleOffset] := Width;
      end;
    if (dgIndicator in Options) then
      ColWidths[0] := IndicatorWidth;
  end
  else
  begin
    for I := 0 to VisibleColCount - 1 do
      ColWidths[I + FTitleOffset] := DefaultColWidth;
    if (dgTitles in Options) then
    begin
      DC := GetDC(Handle);
      try
        for I := 0 to FColumns.Count - 1 do
        begin
          with FColumns[I] do
            GetTextExtentPoint32(DC, PChar(Title.Caption),
             Length(Title.Caption), Sz);
            if Sz.cx <> 0 then
              TextWidth := Sz.cx
            else
              TextWidth := DefaultColWidth;
          ColWidths[0] := Max(ColWidths[0], TextWidth);
        end;
        for I := 0 to FTitleOffset - 1 do
          ColWidths[I] := ColWidths[0];
      finally
        ReleaseDC(Handle, DC);
      end;
    end;
  end;
end;

procedure TNXCustomDBGrid.SetDataSource(Value: TDataSource);
begin
  if Value = FDatalink.Datasource then Exit;
  FBookmarks.Clear;
  FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

procedure TNXCustomDBGrid.SetEditText(ACol, ARow: Longint; const Value: string);
begin
  FEditText := Value;
end;

procedure TNXCustomDBGrid.SetOptions(Value: TNXDBGridOptions);
const
  LayoutOptions = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator,
   dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection];
var
  NewGridOptions: TGridOptions;
  ChangedOptions: TNXDBGridOptions;
begin
  if FOptions <> Value then
  begin
    NewGridOptions := [];
    if dgColLines in Value then
      NewGridOptions := NewGridOptions + [goFixedVertLine, goVertLine];
    if dgRowLines in Value then
      NewGridOptions := NewGridOptions + [goFixedHorzLine, goHorzLine];
    if dgColumnResize in Value then
      NewGridOptions := NewGridOptions + [goColSizing, goColMoving];
    if dgTabs in Value then Include(NewGridOptions, goTabs);
    if dgRowSelect in Value then
    begin
      Include(NewGridOptions, goRowSelect);
      Exclude(Value, dgAlwaysShowEditor);
      Exclude(Value, dgEditing);
    end;
    if dgEditing in Value then Include(NewGridOptions, goEditing);
    if dgAlwaysShowEditor in Value then
      Include(NewGridOptions, goAlwaysShowEditor);
    inherited Options := NewGridOptions;
    if dgMultiSelect in (FOptions - Value) then FBookmarks.Clear;
    ChangedOptions := (FOptions + Value) - (FOptions * Value);
    FOptions := Value;
    if ChangedOptions * LayoutOptions <> [] then LayoutChanged;
  end;
end;

procedure TNXCustomDBGrid.SetSelectedField(Value: TField);
var
  I: Integer;
begin
  if Value = nil then Exit;
  for I := 0 to Columns.Count - 1 do
    if Columns[I].Field = Value then
      MoveCol(DataToRawColumn(I), 0);
end;

procedure TNXCustomDBGrid.SetSelectedIndex(Value: Integer);
begin
  MoveCol(DataToRawColumn(Value), 0);
end;

procedure TNXCustomDBGrid.SetTitleFont(Value: TFont);
begin
  FTitleFont.Assign(Value);
  if dgTitles in Options then LayoutChanged;
end;

function TNXCustomDBGrid.StoreColumns: Boolean;
begin
  Result := Columns.State = csCustomized;
end;

procedure TNXCustomDBGrid.TimedScroll(Direction: TGridScrollDirection);
begin
  if FDatalink.Active then
  begin
    with FDatalink do
    begin
      if sdUp in Direction then
      begin
        FDataLink.MoveBy(-ActiveRecord - 1);
        Exclude(Direction, sdUp);
      end;
      if sdDown in Direction then
      begin
        FDataLink.MoveBy(RecordCount - ActiveRecord);
        Exclude(Direction, sdDown);
      end;
    end;
    if Direction <> [] then
      inherited TimedScroll(Direction);
  end;
end;

procedure TNXCustomDBGrid.TitleClick(Column: TNXColumn);
begin
  if Assigned(FOnTitleClick) then FOnTitleClick(Column);
end;

procedure TNXCustomDBGrid.TitleFontChanged(Sender: TObject);
begin
  if (not FSelfChangingTitleFont) and not (csLoading in ComponentState) then
    ParentFont := False;
  if dgTitles in Options then LayoutChanged;
end;

procedure TNXCustomDBGrid.UpdateActive;
var
  NewRow: Integer;
  Field: TField;
begin
  if FDatalink.Active and HandleAllocated
   and not (csLoading in ComponentState) then
  begin
    NewRow := FDatalink.ActiveRecord + FTitleOffset;
    if not FTransformed then
    begin
      if Row <> NewRow then
      begin
        if not (dgAlwaysShowEditor in Options) then HideEditor;
        MoveColRow(Col, NewRow, False, False);
        InvalidateEditor;
      end;
    end
    else
    begin
      if Col <> NewRow then
      begin
        if not (dgAlwaysShowEditor in Options) then HideEditor;
        MoveColRow(NewRow, Row, False, False);
        InvalidateEditor;
      end;
    end;
    Field := SelectedField;
    if Assigned(Field) and (VarToStr(Field.Value) <> FEditText) then
      InvalidateEditor;
  end;
end;

procedure TNXCustomDBGrid.UpdateData;
var
  Field: TField;
  Value: Variant;
  ADate: TDate;
  ATime: TTime;
begin
  Field := SelectedField;
  if Assigned(Field) then
  begin
    if FEditText <> '' then
      case TNXDBGridInplaceEdit(InplaceEditor).EditStyle of
        esDatePicker, esDatePickList:
          begin
            TNXDBGridInplaceEdit(InplaceEditor).StrToDT(FEditText, ADate,
             ATime);
            Value := ADate;
          end;
        esTimePicker, esTimePickList:
          begin
            TNXDBGridInplaceEdit(InplaceEditor).StrToDT(FEditText, ADate,
             ATime);
            Value := ATime;
          end;
        esDateTimePicker, esDateTimePickList:
          begin
            TNXDBGridInplaceEdit(InplaceEditor).StrToDT(FEditText, ADate,
             ATime);
            Value := VarFromDateTime(ADate + ATime);
          end;
      else
        Value := FEditText;
      end
    else
      Value := Null;
    Field.Value := Value;
  end;
end;

procedure TNXCustomDBGrid.UpdateRowCount;
var
  OldRowCount, OldColCount: Integer;
begin
  if not FTransformed then
  begin
    OldRowCount := RowCount;
    if RowCount <= FTitleOffset then
      RowCount := FTitleOffset + 1;
    FixedRows := FTitleOffset;
    with FDataLink do
      if not Active or (RecordCount = 0) or not HandleAllocated then
        RowCount := 1 + FTitleOffset
      else
      begin
        RowCount := 1000;
        FDataLink.BufferCount := VisibleRowCount;
        RowCount := RecordCount + FTitleOffset;
        if dgRowSelect in Options then TopRow := FixedRows;
        UpdateActive;
      end;
    if OldRowCount <> RowCount then Invalidate;
  end
  else
  begin
    OldColCount := ColCount;
    if ColCount <= FTitleOffset then
      ColCount := FTitleOffset + 1;
    FixedCols := FTitleOffset;
    with FDataLink do
      if not Active or (RecordCount = 0) or not HandleAllocated then
        ColCount := 1 + FTitleOffset
      else
      begin
        ColCount := 1000;
        FDataLink.BufferCount := VisibleColCount;
        ColCount := RecordCount + FTitleOffset;
        if dgRowSelect in Options then LeftCol := FixedCols;
        UpdateActive;
      end;
    if OldColCount <> ColCount then Invalidate;
  end;
end;

procedure TNXCustomDBGrid.UpdateScrollBar;
var
  SIOld, SINew: TScrollInfo;
begin
  if FDatalink.Active and HandleAllocated then
    with FDatalink.DataSet do
    begin
      SIOld.cbSize := sizeof(SIOld);
      SIOld.fMask := SIF_ALL;
      if not FTransformed then
        GetScrollInfo(Self.Handle, SB_VERT, SIOld)
      else
        GetScrollInfo(Self.Handle, SB_HORZ, SIOld);
      SINew := SIOld;
      if IsSequenced then
      begin
        SINew.nMin := 1;
        if not FTransformed then
          SINew.nPage := Self.VisibleRowCount
        else
          SINew.nPage := Self.VisibleColCount;
        SINew.nMax := Integer(DWORD(RecordCount) + SINew.nPage - 1);
        if State in [dsInactive, dsBrowse, dsEdit] then
          SINew.nPos := RecNo;
      end
      else
      begin
        SINew.nMin := 0;
        SINew.nPage := 0;
        SINew.nMax := 4;
        if FDataLink.BOF then
          SINew.nPos := 0
        else
          if FDataLink.EOF then
            SINew.nPos := 4
        else
          SINew.nPos := 2;
      end;
      if (SINew.nMin <> SIOld.nMin) or (SINew.nMax <> SIOld.nMax)
       or (SINew.nPage <> SIOld.nPage) or (SINew.nPos <> SIOld.nPos) then
      begin
        if not FTransformed then
          SetScrollInfo(Self.Handle, SB_VERT, SINew, True)
        else
          SetScrollInfo(Self.Handle, SB_HORZ, SINew, True);
      end;
    end;
end;

function TNXCustomDBGrid.ValidFieldIndex(FieldIndex: Integer): Boolean;
begin
  Result := DataLink.GetMappedIndex(FieldIndex) >= 0;
end;

procedure TNXCustomDBGrid.CMParentFontChanged(var Message: TMessage);
begin
  inherited;
  if ParentFont then
  begin
    FSelfChangingTitleFont := True;
    try
      TitleFont := Font;
    finally
      FSelfChangingTitleFont := False;
    end;
    LayoutChanged;
  end;
end;

procedure TNXCustomDBGrid.CMBiDiModeChanged(var Message: TMessage);
var
  Loop: Integer;
begin
  inherited;
  for Loop := 0 to ComponentCount - 1 do
    if Components[Loop] is TNXCustomDBGrid then
      with Components[Loop] as TNXCustomDBGrid do
        if Parent <> nil then
          Parent.BiDiMode := Self.BiDiMode;
end;

procedure TNXCustomDBGrid.CMExit(var Message: TMessage);
begin
  try
    if FDatalink.Active then
      with FDatalink.Dataset do
        if (dgCancelOnExit in Options) and (State = dsInsert)
         and not Modified and not FDatalink.FModified then
          Cancel
        else
          FDataLink.UpdateData;
  except
    SetFocus;
    raise;
  end;
  inherited;
end;

procedure TNXCustomDBGrid.CMFontChanged(var Message: TMessage);
var
  I: Integer;
begin
  inherited;
  BeginLayout;
  try
    for I := 0 to Columns.Count - 1 do
      Columns[I].RefreshDefaultFont;
  finally
    EndLayout;
  end;
end;

procedure TNXCustomDBGrid.CMDeferLayout(var Message);
begin
  if AcquireLayoutLock then
    EndLayout
  else
    DeferLayout;
end;

procedure TNXCustomDBGrid.CMDesignHitTest(var Msg: TCMDesignHitTest);
var
  MasterCol: TNXColumn;
begin
  inherited;
  if (Msg.Result = 1) and ((FDataLink = nil)
   or ((Columns.State = csDefault)
   and (FDataLink.DefaultFields or (not FDataLink.Active)))) then
    Msg.Result := 0
  else
    if (Msg.Result = 0) and (FDataLink <> nil) and (FDataLink.Active)
     and (Columns.State = csCustomized)
     and PtInExpandButton(Msg.XPos, Msg.YPos, MasterCol) then
      Msg.Result := 1;
end;

procedure TNXCustomDBGrid.WMSetCursor(var Msg: TWMSetCursor);
begin
  if (csDesigning in ComponentState)
   and ((FDataLink = nil)
   or ((Columns.State = csDefault)
   and (FDataLink.DefaultFields or not FDataLink.Active))) then
    Windows.SetCursor(LoadCursor(0, IDC_ARROW))
  else
    inherited;
end;

procedure TNXCustomDBGrid.WMSize(var Message: TWMSize);
begin
  inherited;
  if UpdateLock = 0 then UpdateRowCount;
  InvalidateTitles;
end;

procedure TNXCustomDBGrid.WMVScroll(var Message: TWMVScroll);
var
  SI: TScrollInfo;
begin
  if not FTransformed then
  begin
    if not AcquireFocus then Exit;
    if FDatalink.Active then
      with Message, FDataLink.DataSet do
        case ScrollCode of
          SB_LINEUP: FDataLink.MoveBy(-FDatalink.ActiveRecord - 1);
          SB_LINEDOWN:
            FDataLink.MoveBy(FDatalink.RecordCount - FDatalink.ActiveRecord);
          SB_PAGEUP: FDataLink.MoveBy(-VisibleRowCount);
          SB_PAGEDOWN: FDataLink.MoveBy(VisibleRowCount);
          SB_THUMBPOSITION:
            begin
              if IsSequenced then
              begin
                SI.cbSize := sizeof(SI);
                SI.fMask := SIF_ALL;
                GetScrollInfo(Self.Handle, SB_VERT, SI);
                if SI.nTrackPos <= 1 then
                  First
                else
                  if SI.nTrackPos >= RecordCount then
                    Last
                  else
                    RecNo := SI.nTrackPos;
              end
              else
                case Pos of
                  0: First;
                  1: FDataLink.MoveBy(-VisibleRowCount);
                  2: Exit;
                  3: FDataLink.MoveBy(VisibleRowCount);
                  4: Last;
                end;
            end;
          SB_BOTTOM: Last;
          SB_TOP: First;
        end;
  end
  else
    inherited;
end;

procedure TNXCustomDBGrid.WMHScroll(var Message: TWMHScroll);
var
  SI: TScrollInfo;
begin
  if FTransformed then
  begin
    if not AcquireFocus then Exit;
    if FDatalink.Active then
      with Message, FDataLink.DataSet do
        case ScrollCode of
          SB_LINEUP: FDataLink.MoveBy(-FDatalink.ActiveRecord - 1);
          SB_LINEDOWN:
            FDataLink.MoveBy(FDatalink.RecordCount - FDatalink.ActiveRecord);
          SB_PAGEUP: FDataLink.MoveBy(-VisibleColCount);
          SB_PAGEDOWN: FDataLink.MoveBy(VisibleColCount);
          SB_THUMBPOSITION:
            begin
              if IsSequenced then
              begin
                SI.cbSize := sizeof(SI);
                SI.fMask := SIF_ALL;
                GetScrollInfo(Self.Handle, SB_HORZ, SI);
                if SI.nTrackPos <= 1 then
                  First
                else
                  if SI.nTrackPos >= RecordCount then
                    Last
                  else
                    RecNo := SI.nTrackPos;
              end
              else
                case Pos of
                  0: First;
                  1: FDataLink.MoveBy(-VisibleColCount);
                  2: Exit;
                  3: FDataLink.MoveBy(VisibleColCount);
                  4: Last;
                end;
            end;
          SB_BOTTOM: Last;
          SB_TOP: First;
        end;
  end
  else
    inherited;
end;

procedure TNXCustomDBGrid.SetIme;
var
  Column: TNXColumn;
begin
  if not SysLocale.FarEast then Exit;
  if Columns.Count = 0 then Exit;
  ImeName := FOriginalImeName;
  ImeMode := FOriginalImeMode;
  Column := Columns[SelectedIndex];
  if Column.IsImeNameStored then ImeName := Column.ImeName;
  if Column.IsImeModeStored then ImeMode := Column.ImeMode;
  if InplaceEditor <> nil then
  begin
    TNXDBGridInplaceEdit(Self).ImeName := ImeName;
    TNXDBGridInplaceEdit(Self).ImeMode := ImeMode;
  end;
end;

procedure TNXCustomDBGrid.UpdateIme;
begin
  if not SysLocale.FarEast then Exit;
  SetIme;
  SetImeName(ImeName);
  SetImeMode(Handle, ImeMode);
end;

procedure TNXCustomDBGrid.WMIMEStartComp(var Message: TMessage);
begin
  inherited;
  ShowEditor;
end;

procedure TNXCustomDBGrid.WMSetFocus(var Message: TWMSetFocus);
begin
  if not ((InplaceEditor <> nil)
   and (Message.FocusedWnd = InplaceEditor.Handle)) then SetIme;
  inherited;
end;

procedure TNXCustomDBGrid.WMKillFocus(var Message: TMessage);
begin
  if not SysLocale.FarEast then
    inherited
  else
  begin
    ImeName := Screen.DefaultIme;
    ImeMode := imDontCare;
    inherited;
    if not ((InplaceEditor <> nil)
     and (HWND(Message.WParam) = InplaceEditor.Handle)) then
      ActivateKeyboardLayout(Screen.DefaultKbLayout, KLF_ACTIVATE);
  end;
end;

function TNXCustomDBGrid.ExecuteAction(Action: TBasicAction): Boolean;
begin
  Result := (DataLink <> nil) and DataLink.ExecuteAction(Action);
end;

function TNXCustomDBGrid.UpdateAction(Action: TBasicAction): Boolean;
begin
  Result := (DataLink <> nil) and DataLink.UpdateAction(Action);
end;

procedure TNXCustomDBGrid.ShowPopupEditor(Column: TNXColumn; X, Y: Integer);
var
  SubGrid: TNXCustomDBGrid;
  DS: TDataSource;
  I: Integer;
  FloatRect: TRect;
  Cmp: TControl;
begin
  if not ((Column.Field <> nil) and (Column.Field is TDataSetField)) then Exit;
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TNXCustomDBGrid then
    begin
      SubGrid := TNXCustomDBGrid(Components[I]);
      if (SubGrid.DataSource <> nil)
       and (SubGrid.DataSource.DataSet =
        (Column.Field as TDatasetField).NestedDataset)
       and SubGrid.CanFocus then
      begin
        SubGrid.Parent.Show;
        SubGrid.SetFocus;
        Exit;
      end;
    end;
  SubGrid := TNXCustomDBGrid(TComponentClass(Self.ClassType).Create(Self));
  try
    DS := TDataSource.Create(SubGrid);
    DS.Dataset := (Column.Field as TDatasetField).NestedDataset;
    DS.DataSet.CheckBrowseMode;
    SubGrid.DataSource := DS;
    SubGrid.Columns.State := Columns.State;
    SubGrid.Columns[0].Expanded := True;
    SubGrid.Visible := False;
    SubGrid.FloatingDockSiteClass := TCustomDockForm;
    FloatRect.TopLeft := ClientToScreen(CellRect(Col, Row).BottomRight);
    if X > Low(Integer) then FloatRect.Left := X;
    if Y > Low(Integer) then FloatRect.Top := Y;
    FloatRect.Right := FloatRect.Left + Width;
    FloatRect.Bottom := FloatRect.Top + Height;
    SubGrid.ManualFloat(FloatRect);
//    SubGrid.ManualDock(nil,nil,alClient);
    SubGrid.Parent.BiDiMode := Self.BiDiMode;
    I := SubGrid.CellRect(SubGrid.ColCount - 1, 0).Right;
    if (I > 0) and (I < Screen.Width div 2) then
      SubGrid.Parent.ClientWidth := I
    else
      SubGrid.Parent.Width := Screen.Width div 4;
    SubGrid.Parent.Height := Screen.Height div 4;
    SubGrid.Align := alClient;
    SubGrid.DragKind := dkDock;
    SubGrid.Color := Color;
    SubGrid.Ctl3D := Ctl3D;
    SubGrid.Cursor := Cursor;
    SubGrid.Enabled := Enabled;
    SubGrid.FixedColor := FixedColor;
    SubGrid.Font := Font;
    SubGrid.HelpContext := HelpContext;
    SubGrid.IMEMode := IMEMode;
    SubGrid.IMEName := IMEName;
    SubGrid.Options := Options;
    Cmp := Self;
    while (Cmp <> nil) and (TNXCustomDBGrid(Cmp).PopupMenu = nil) do
      Cmp := Cmp.Parent;
    if Cmp <> nil then
      SubGrid.PopupMenu := TNXCustomDBGrid(Cmp).PopupMenu;
    SubGrid.TitleFont := TitleFont;
    SubGrid.Visible := True;
    SubGrid.Parent.Show;
  except
    SubGrid.Free;
    raise;
  end;
end;

procedure TNXCustomDBGrid.CalcSizingState(X, Y: Integer;
  var State: TGridState; var Index, SizingPos, SizingOfs: Integer;
  var FixedInfo: TGridDrawInfo);
var
  R: TGridCoord;
begin
  inherited CalcSizingState(X, Y, State, Index, SizingPos, SizingOfs,
   FixedInfo);
  if not FTransformed then
  begin
    if (State = gsColSizing) and (FDataLink <> nil)
     and (FDatalink.Dataset <> nil) and FDataLink.Dataset.ObjectView then
    begin
      R := MouseCoord(X, Y);
      R.X := RawToDataColumn(R.X);
      if (R.X >= 0) and (R.X < Columns.Count)
       and (Columns[R.X].Depth > R.Y) then
        State := gsNormal;
    end;
  end
  else
  begin
    if (State = gsColSizing) and (FDataLink <> nil)
     and (FDatalink.Dataset <> nil) then
      FSizingIndex := Index;
  end;
end;

function TNXCustomDBGrid.CheckColumnDrag(var Origin, Destination: Integer;
  const MousePt: TPoint): Boolean;
var
  I, ARow: Integer;
  DestCol: TNXColumn;
begin
  Result := inherited CheckColumnDrag(Origin, Destination, MousePt);
  if Result and (FDatalink.Dataset <> nil) and FDatalink.Dataset.ObjectView then
  begin
    assert(FDragCol <> nil);
    ARow := FDragCol.Depth;
    if Destination <> Origin then
    begin
      DestCol := ColumnAtDepth(Columns[RawToDataColumn(Destination)], ARow);
      if DestCol.ParentColumn <> FDragCol.ParentColumn then
        if Destination < Origin then
          DestCol := Columns[FDragCol.ParentColumn.Index + 1]
        else
        begin
          I := DestCol.Index;
          while DestCol.ParentColumn <> FDragCol.ParentColumn do
          begin
            Dec(I);
            DestCol := Columns[I];
          end;
        end;
      if (DestCol.Index > FDragCol.Index) then
      begin
        I := DestCol.Index + 1;
        while (I < Columns.Count)
         and (ColumnAtDepth(Columns[I], ARow) = DestCol) do
          Inc(I);
        DestCol := Columns[I - 1];
      end;
      Destination := DataToRawColumn(DestCol.Index);
    end;
  end;
end;

function TNXCustomDBGrid.BeginColumnDrag(var Origin, Destination: Integer;
  const MousePt: TPoint): Boolean;
var
  I, ARow: Integer;
begin
  Result := inherited BeginColumnDrag(Origin, Destination, MousePt);
  if Result and (FDatalink.Dataset <> nil) and FDatalink.Dataset.ObjectView then
  begin
    if not FTransformed then
      ARow := MouseCoord(MousePt.X, MousePt.Y).Y
    else
      ARow := MouseCoord(MousePt.X, MousePt.Y).X;
    FDragCol := ColumnAtDepth(Columns[RawToDataColumn(Origin)], ARow);
    if FDragCol = nil then Exit;
    I := DataToRawColumn(FDragCol.Index);
    if Origin <> I then Origin := I;
    Destination := Origin;
  end;
end;

function TNXCustomDBGrid.EndColumnDrag(var Origin, Destination: Integer;
  const MousePt: TPoint): Boolean;
begin
  Result := inherited EndColumnDrag(Origin, Destination, MousePt);
  FDragCol := nil;
end;

procedure TNXCustomDBGrid.InvalidateTitles;
var
  R: TRect;
  DrawInfo: TGridDrawInfo;
begin
  if HandleAllocated and (dgTitles in Options) then
  begin
    CalcFixedInfo(DrawInfo);
    if not FTransformed then
      R := Rect(0, 0, Width, DrawInfo.Vert.FixedBoundary)
    else
      R := Rect(0, 0, DrawInfo.Horz.FixedBoundary, Height);
    InvalidateRect(Handle, @R, False);
  end;
end;

procedure TNXCustomDBGrid.TopLeftChanged;
begin
  InvalidateTitles;
  inherited TopLeftChanged;
end;

procedure TNXCustomDBGrid.SetTransformed(Value: Boolean);
begin
  BeginLayout;
  try
    FTransformed := Value;
    if not FTransformed then
    begin
      ScrollBars := ssHorizontal;
      inherited Options := [goFixedHorzLine, goFixedVertLine, goHorzLine,
        goVertLine, goColSizing, goColMoving, goTabs, goEditing];
    end
    else
    begin
      ScrollBars := ssVertical;
      inherited Options := [goFixedHorzLine, goFixedVertLine, goHorzLine,
        goVertLine, goColSizing, goRowMoving, goTabs, goEditing];
    end;
  finally
    EndLayout;
  end;
end;

procedure Register;
begin
  RegisterComponents('NX Components', [TNXDBGrid]);
//  RegisterComponentEditor(TNXDBGrid, nil);
end;

end.

