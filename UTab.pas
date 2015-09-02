unit UTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, ExtCtrls, Grids, DBGrids, URTReport, IniFiles,
  ShellApi, RXDBCtrl, Buttons;

type
  TfmTab = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    miExit: TMenuItem;
    dsTab: TDataSource;
    Panel2: TPanel;
    pTeacher: TPanel;
    pDays: TPanel;
    pTSY: TPanel;
    pTSO: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    miCPrint: TMenuItem;
    miPrint: TMenuItem;
    miPrintOptions: TMenuItem;
    pTabNum: TPanel;
    dbgTab: TRxDBGrid;
    btnForming: TSpeedButton;
    btnEdit: TSpeedButton;
    miHelp: TMenuItem;
    procedure miExitClick(Sender: TObject);
    procedure btnFormingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgTabDblClick(Sender: TObject);
    procedure dbgTabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure miPrintClick(Sender: TObject);
    procedure miPrintOptionsClick(Sender: TObject);
    procedure dbgTabKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTab: TfmTab;

implementation

uses UDM, UEdMainTab, DateUtils, UMTPrintSet;

{$R *.dfm}

procedure TfmTab.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmTab.btnFormingClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите сформировать табель' + #13 + #10 +
    'Внимение: Прежний табель будет отчищен!',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.Forming_Main_Tab(StrToIntDef(InputBox('Параметры', 'Количество дней', '26'), 0));
    DM.ibdsMainTab.Close;
    DM.ibdsMainTab.Open;
  end;
end;

procedure TfmTab.FormCreate(Sender: TObject);
var
  i: integer;
  l: TList;
begin
  dsTab.DataSet := DM.ibdsMainTab;
 { dbgTab.Columns[0].Width := pTabNum.Width;
  dbgTab.Columns[1].Width := pTeacher.Width;
  dbgTab.Columns[2].Width := pDays.Width;}
end;

procedure TfmTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsTab.DataSet := nil;
end;

procedure TfmTab.dbgTabDblClick(Sender: TObject);
begin
  fmEditMainTab := TfmEditMainTab.Create(Self);
  fmEditMainTab.edDaysQty.Text := DM.ibdsMainTabDAYS_QTY.AsString;
  fmEditMainTab.edBYT.Text := DM.ibdsMainTabB_Y_TIME.AsString;
  fmEditMainTab.edBOT.Text := DM.ibdsMainTabB_O_TIME.AsString;
  fmEditMainTab.edBCT.Text := DM.ibdsMainTabB_C_TIME.AsString;
  fmEditMainTab.edSYT.Text := DM.ibdsMainTabS_Y_TIME.AsString;
  fmEditMainTab.edSOT.Text := DM.ibdsMainTabS_O_TIME.AsString;
  fmEditMainTab.edSCT.Text := DM.ibdsMainTabS_C_TIME.AsString;
  fmEditMainTab.edBeYT.Text := DM.ibdsMainTabBEGIN_Y_TIME.AsString;
  fmEditMainTab.edBeCT.Text := DM.ibdsMainTabBEGIN_C_TIME.AsString;
  fmEditMainTab.edDate.DateTime := DM.ibdsMainTabT_DATE.Value;
  if fmEditMainTab.ShowModal = mrOK then
  begin
    
    DM.EditMainTab(DM.ibdsMainTabTEACHER_ID.Value,
      StrToIntDef(fmEditMainTab.edDaysQty.Text, 0),
      StrToFloatDef(fmEditMainTab.edBYT.Text, 0), StrToFloatDef(fmEditMainTab.edBOT.Text, 0),
      StrToFloatDef(fmEditMainTab.edBCT.Text, 0), StrToFloatDef(fmEditMainTab.edSYT.Text, 0),
      StrToFloatDef(fmEditMainTab.edSOT.Text, 0), StrToFloatDef(fmEditMainTab.edSCT.Text, 0),
      StrToFloatDef(fmEditMainTab.edBeYT.Text, 0), StrToFloatDef(fmEditMainTab.edBecT.Text, 0),
      fmEditMainTab.edDate.Date);
    DM.ibdsMainTab.Refresh;
  end;
  fmEditMainTab.Release;
end;

procedure TfmTab.dbgTabDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.Field.AsString = '0' then
    dbgTab.Canvas.Font.Color := dbgTab.Canvas.Brush.Color;
  if DM.ibdsMainTabTEACHER_ID.Value = 0 then
    dbgTab.Canvas.Font.Color := clRed;
  dbgTab.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmTab.miPrintClick(Sender: TObject);
const
  FIELD_QTY = 12;
var
  BM: TBookmark;
  rep: TRTReport;
  P: array[0..FIELD_QTY - 1] of Integer; //массив размеров
  S: String[30];
  i: Integer;
  function FormatFM(Value: Double): String;
  begin
    if Value = 0 then Result := ''
    else
      Result := FloatToStr(Value);// Format('%.2f', [Value]);
  end;
begin
  LocateReportParam('MainTab', #7#65#7#13#13#13#13#13#13#13#13#13);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*TWIPS_IN_MM;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1])*TWIPS_IN_MM;

  rep := TRTReport.Create(true);
  rep.SetMargins(DM.ibdsReportParamM_LEFT.Value * TWIPS_IN_MM,
    DM.ibdsReportParamM_RIGHT.Value * TWIPS_IN_MM,
    DM.ibdsReportParamM_TOP.Value * TWIPS_IN_MM,
    DM.ibdsReportParamM_BOTTOM.Value * TWIPS_IN_MM);

  rep.AddText('\headery300 {\header ');  //верхний колонтитул
  rep.ParSet12Arial;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddText(DM.ibdsFilialName.Value);
  rep.AddText('\tx9600\tab\b Лист \chpgn\par}');

  rep.AddPar('\qc ' + 'ОСНОВНОЙ ТАБЕЛЬ ЗА ' +
     mon[MonthOf(DM.ibdsConstSYSTEM_DATE.Value)] + ' ' +
     IntToStr(YearOf(DM.ibdsConstSYSTEM_DATE.Value)) + '\par');

  rep.ParSetLongTableHead;
  rep.CreateMergeHeader(
    [P[0], P[1], P[2], P[5], P[8], P[10], P[11]],
    [0, 1, 2, 3, 6],[]);
  rep.AddRow(['Таб.№', 'Преподаватель', 'Дни',
    'Бюджет', 'Самоокупаемость', 'Подготов.', 'Дата \line ММ.ГГ']);
  rep.CompleteMergeHeader( P, [0, 1, 2, 11], []);
  rep.AddRow(['', '', '', 'мл.', 'ст.', 'конц.', 'мл.', 'ст.', 'конц.', 'мл.', 'конц.', '']);
  rep.CreateTable(P, []);
  rep.ParSet(fTimes, 11);
  BM := DM.ibdsMainTab.GetBookmark;
  DM.ibdsMainTab.DisableControls;
  DM.ibdsMainTab.First;
  while not DM.ibdsMainTab.Eof do
  begin
    if DM.ibdsMainTabTEACHER_ID.Value <> 0 then
    rep.AddRow([Format('%3.d', [DM.ibdsMainTabTAB_NUM.Value]),
      DM.ibdsMainTabTEACHER_NAME.Value, DM.ibdsMainTabDAYS_QTY.AsString, '\qr '+
      FormatFM(DM.ibdsMainTabB_Y_TIME.Value), FormatFM(DM.ibdsMainTabB_O_TIME.Value),
      FormatFM(DM.ibdsMainTabB_C_TIME.Value), FormatFM(DM.ibdsMainTabS_Y_TIME.Value),
      FormatFM(DM.ibdsMainTabS_O_TIME.Value), FormatFM(DM.ibdsMainTabS_C_TIME.Value),
      FormatFM(DM.ibdsMainTabBEGIN_Y_TIME.Value), FormatFM(DM.ibdsMainTabBEGIN_Y_TIME.Value) + '\ql ',
      FormatDateTime('mm.yy', DM.ibdsMainTabT_DATE.Value)]);
    DM.ibdsMainTab.Next;
  end;
  rep.ParSet(fTimes, 12, [fstBold]);// Arial('\b\fs24');
  rep.AddText(rep.TextToRTF(DM.ibdsConstPASPORT_TAB_SIGN.Value));
  DM.ibdsMainTab.GotoBookmark(BM);
  DM.ibdsMainTab.FreeBookmark(BM);
  DM.ibdsMainTab.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Отчёт основной табель');
end;

procedure TfmTab.miPrintOptionsClick(Sender: TObject);
begin
  fmMTPrintSet := TfmMTPrintSet.Create(Self);
  fmMTPrintSet.ShowModal;
  fmMTPrintSet.Release;
end;

procedure TfmTab.dbgTabKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then btnEdit.Click;
end;

procedure TfmTab.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 31);
end;

end.
