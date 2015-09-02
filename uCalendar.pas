unit uCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Calendar, ComCtrls, UDM, DB,
  IBCustomDataSet;

type
  TfmCalendar = class(TForm)
    Panel1: TPanel;
    btnOK: TBitBtn;
    ibdsCalendar: TIBDataSet;
    DataSource1: TDataSource;
    gCalendar: TStringGrid;
    ibdsSysdate: TIBDataSet;
    ibdsSysdateSYSTEM_DATE: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure gCalendarDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure gCalendarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    currYear, currMonth, currDay: Word;
    hollyDays: array of Word;
  public
    { Public declarations }
  end;

var
  fmCalendar: TfmCalendar;

implementation

uses DateUtils;

{$R *.dfm}

procedure TfmCalendar.FormCreate(Sender: TObject);
var
  qDays, i, row, weekDay: word;
  date: TDateTime;
begin
  ibdsSysdate.Open;
  ibdsSysdate.First;
  date := ibdsSysdateSYSTEM_DATE.Value;
  dm.CalendarController.refresh(ibdsSysdateSYSTEM_DATE.Value);
  DecodeDate(date, currYear, currMonth, currDay);
  ibdsSysdate.Close;
  ibdsCalendar.Open;
  qDays := DaysInMonth(date);
  // заполняем календарь
  row := 1;
  for i := 1 to qDays do
  begin
    date := EncodeDate(currYear, currMonth, i);
    weekDay := DayOfTheWeek(date);
    gCalendar.Cells[weekDay - 1, row] := IntToStr(i);
    if weekDay = 7 then inc(row);
  end;
  gCalendar.Rows[0].CommaText := 'Пн.,Вт.,Ср.,Чт.,Пт.,Сб.,Вс.'
end;

procedure TfmCalendar.gCalendarDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  sg: TStringGrid;
  currStatus: variant;
  day: integer;
  data: string;
  colorToSet: TColor;
  styleToSet: TFontStyles;
  RectForText: TRect;
begin
  if ARow = 0 then Exit;
  sg := (Sender as TStringGrid);
  colorToSet := clBlack;
  styleToSet := [];
  data := sg.Cells[ACol, ARow];
  if TryStrToInt(data, day) then
  begin
    currStatus := ibdsCalendar
      .Lookup('THE_DAY', EncodeDate(currYear, currMonth, day), 'IS_HOLIDAY');
    if (currStatus <> null) and (VarToStr(currStatus) = 'Y') then
    begin
      colorToSet := clRed;
      styleToSet := [fsBold];
    end;
  end;
  if colorToSet <> sg.Font.Color then
  begin
    // Fill rectangle with colour
    sg.Canvas.Brush.Color := clWhite;
    sg.Canvas.FillRect(Rect);
    // Next, draw the text in the rectangle
    sg.Canvas.Font.Color := colorToSet;
    sg.Canvas.Font.Style := styleToSet;
    RectForText := Rect;
    // Make the rectangle where the text will be displayed a bit smaller than the cell
    // so the text is not "glued" to the grid lines
    InflateRect(RectForText, -2, -2);
    // Edit: using TextRect instead of TextOut to prevent overflowing of text
    //sg.Canvas.TextRect(RectForText, IntToStr(day));
    sg.Canvas.TextRect(RectForText, RectForText.Left+2, RectForText.Top+2, data);
    //sg.Canvas.Font.Color := colorToSet;
  end;
end;

procedure TfmCalendar.FormDestroy(Sender: TObject);
begin
  ibdsCalendar.Close;
end;

procedure TfmCalendar.gCalendarKeyPress(Sender: TObject; var Key: Char);
var
  day: integer;
begin
  if TryStrToInt(gCalendar.Cells[gCalendar.Selection.Left, gCalendar.Selection.Top], day) then
  begin
    DM.CalendarController.reverseDay(EncodeDate(currYear, currMonth, day));
    ibdsCalendar.Close;
    ibdsCalendar.Open;
    gCalendar.Invalidate;
  end;
end;

end.
