unit URepCurriculum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, DB, Menus, DBGrids, DBCtrls, RXDBCtrl,
  RxRichEd, dbcgrids, URTReport, DateUtils, ShellApi, IBCustomDataSet;

type
  TfmRepCurriculum = class(TForm)
    Panel1: TPanel;
    cbCurr: TComboBox;
    MainMenu1: TMainMenu;
    miExit: TMenuItem;
    miPrint: TMenuItem;
    cbFinancing: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    dsCurr: TDataSource;
    dsCurrRec: TDataSource;
    ScrollBox1: TScrollBox;
    dbgCurrRec: TRxDBGrid;
    Panel4: TPanel;
    dbgCurr: TRxDBGrid;
    dbgCurrCat: TRxDBGrid;
    Panel7: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    dsCurrCat: TDataSource;
    Panel8: TPanel;
    Panel2: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    dbgCurrTotal: TRxDBGrid;
    dbgCurrVSum: TRxDBGrid;
    dbgCurrSum: TRxDBGrid;
    Word1: TMenuItem;
    N1: TMenuItem;
    miHelp: TMenuItem;
    ibdsCurriculum: TIBDataSet;
    ibdsCurriculumID: TIntegerField;
    ibdsCurriculumNAME: TIBStringField;
    ibdsCurriculumPERIOD_FOR_PRINT: TIBStringField;
    ibdsCurriculumPERIOD: TSmallintField;
    ibdsCurriculumCAT_0: TLargeintField;
    ibdsCurriculumCAT_1: TLargeintField;
    ibdsCurriculumCAT_2: TLargeintField;
    ibdsCurriculumCAT_3: TLargeintField;
    ibdsCurriculumCAT_4: TLargeintField;
    ibdsCurriculumCAT_5: TLargeintField;
    ibdsCurriculumCAT_6: TLargeintField;
    ibdsCurriculumCAT_7: TLargeintField;
    ibdsCurriculumCAT_8: TLargeintField;
    DataSource1: TDataSource;
    ibdsCurrReport: TIBDataSet;
    ibdsCurrReportQ_0: TIntegerField;
    ibdsCurrReportQ_1: TIntegerField;
    ibdsCurrReportQ_2: TIntegerField;
    ibdsCurrReportQ_3: TIntegerField;
    ibdsCurrReportQ_4: TIntegerField;
    ibdsCurrReportQ_5: TIntegerField;
    ibdsCurrReportQ_6: TIntegerField;
    ibdsCurrReportQ_7: TIntegerField;
    ibdsCurrReportQ_8: TIntegerField;
    ibdsCurrReportQ_ALL_Y: TIntegerField;
    ibdsCurrReportQ_ALL_O: TIntegerField;
    ibdsCurrReportQ_ALL_C: TIntegerField;
    ibdsCurrReportQ_V_Y: TIntegerField;
    ibdsCurrReportQ_V_O: TIntegerField;
    ibdsCurrReportQ_V_C: TIntegerField;
    ibdsCurrReportT_V_0: TFloatField;
    ibdsCurrReportT_V_1: TFloatField;
    ibdsCurrReportT_V_2: TFloatField;
    ibdsCurrReportT_V_3: TFloatField;
    ibdsCurrReportT_V_4: TFloatField;
    ibdsCurrReportT_V_5: TFloatField;
    ibdsCurrReportT_V_6: TFloatField;
    ibdsCurrReportT_V_7: TFloatField;
    ibdsCurrReportT_V_8: TFloatField;
    ibdsCurrReportT_V_Y: TFloatField;
    ibdsCurrReportT_V_O: TFloatField;
    ibdsCurrReportT_V_C: TFloatField;
    ibdsCurrReportT_0: TFloatField;
    ibdsCurrReportT_1: TFloatField;
    ibdsCurrReportT_2: TFloatField;
    ibdsCurrReportT_3: TFloatField;
    ibdsCurrReportT_4: TFloatField;
    ibdsCurrReportT_5: TFloatField;
    ibdsCurrReportT_6: TFloatField;
    ibdsCurrReportT_7: TFloatField;
    ibdsCurrReportT_8: TFloatField;
    ibdsCurrReportT_A_Y: TFloatField;
    ibdsCurrReportT_A_O: TFloatField;
    ibdsCurrReportT_A_C: TFloatField;
    ibdsCurrReportt_t_0: TFloatField;
    ibdsCurrReportt_t_1: TFloatField;
    ibdsCurrReportt_t_2: TFloatField;
    ibdsCurrReportt_t_3: TFloatField;
    ibdsCurrReportt_t_4: TFloatField;
    ibdsCurrReportt_t_5: TFloatField;
    ibdsCurrReportt_t_6: TFloatField;
    ibdsCurrReportt_t_7: TFloatField;
    ibdsCurrReportt_t_8: TFloatField;
    ibdsCurrReportt_t_y: TFloatField;
    ibdsCurrReportt_t_o: TFloatField;
    ibdsCurrReportt_t_c: TFloatField;
    ibdsCurrReportG_Y: TIntegerField;
    ibdsCurrReportG_O: TIntegerField;
    ibdsCurrReportRec: TIBDataSet;
    ibdsCurrReportRecCURR_REC_ID: TIntegerField;
    ibdsCurrReportRecCURR_REC_NUM: TIntegerField;
    ibdsCurrReportRecSUBJECT_NAME: TIBStringField;
    ibdsCurrReportRecSUBJECT_CODE: TIntegerField;
    ibdsCurrReportRecGROUP_QTY: TIntegerField;
    ibdsCurrReportRecT_0: TFloatField;
    ibdsCurrReportRecQTY_0: TIntegerField;
    ibdsCurrReportRecT_1: TFloatField;
    ibdsCurrReportRecQTY_1: TIntegerField;
    ibdsCurrReportRecT_2: TFloatField;
    ibdsCurrReportRecQTY_2: TIntegerField;
    ibdsCurrReportRecT_3: TFloatField;
    ibdsCurrReportRecQTY_3: TIntegerField;
    ibdsCurrReportRecT_4: TFloatField;
    ibdsCurrReportRecQTY_4: TIntegerField;
    ibdsCurrReportRecT_5: TFloatField;
    ibdsCurrReportRecQTY_5: TIntegerField;
    ibdsCurrReportRecT_6: TFloatField;
    ibdsCurrReportRecQTY_6: TIntegerField;
    ibdsCurrReportRecT_7: TFloatField;
    ibdsCurrReportRecQTY_7: TIntegerField;
    ibdsCurrReportRecT_8: TFloatField;
    ibdsCurrReportRecQTY_8: TIntegerField;
    ibdsCurrReportRecT_ALL_Y: TFloatField;
    ibdsCurrReportRecT_ALL_O: TFloatField;
    ibdsCurrReportRecT_ALL_C: TFloatField;
    ibdsCurrReportRecT_V_Y: TFloatField;
    ibdsCurrReportRecT_V_O: TFloatField;
    ibdsCurrReportRecT_V_C: TFloatField;
    ibdsCurrReportRecG_QTY_Y: TIntegerField;
    ibdsCurrReportRecG_QTY_O: TIntegerField;
    ibdsCurrReportRecQTY_Y: TIntegerField;
    ibdsCurrReportRecQTY_O: TIntegerField;
    ibdsCurrReportRecQTY_C: TIntegerField;
    ibdsCurrReportRecQTY_V_Y: TIntegerField;
    ibdsCurrReportRecQTY_V_O: TIntegerField;
    ibdsCurrReportRecQTY_V_C: TIntegerField;
    ibdsCurrCat: TIBDataSet;
    ibdsCurrCatC_0: TLargeintField;
    ibdsCurrCatC_1: TLargeintField;
    ibdsCurrCatC_2: TLargeintField;
    ibdsCurrCatC_3: TLargeintField;
    ibdsCurrCatC_4: TLargeintField;
    ibdsCurrCatC_5: TLargeintField;
    ibdsCurrCatC_6: TLargeintField;
    ibdsCurrCatC_7: TLargeintField;
    ibdsCurrCatC_8: TLargeintField;
    ibdsCurrCatID: TIntegerField;
    ibdsCurrCatC_9: TLargeintField;
    ibdsCurrCatC_NAME_0: TIBStringField;
    ibdsCurrCatC_NAME_1: TIBStringField;
    ibdsCurrCatC_NAME_2: TIBStringField;
    ibdsCurrCatC_NAME_3: TIBStringField;
    ibdsCurrCatC_NAME_4: TIBStringField;
    ibdsCurrCatC_NAME_5: TIBStringField;
    ibdsCurrCatC_NAME_6: TIBStringField;
    ibdsCurrCatC_NAME_7: TIBStringField;
    ibdsCurrCatC_NAME_8: TIBStringField;
    ibdsCurrCatC_NAME_9: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure cbCurrKeyPress(Sender: TObject; var Key: Char);
    procedure cbCurrChange(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure rgFinancingClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cbFinancingChange(Sender: TObject);
    procedure dbgCurrRecDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgCurrCatDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure miHelpClick(Sender: TObject);
    procedure SetSizes;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRepCurriculum: TfmRepCurriculum;


implementation

uses UDM, IBSQL, UCurrRepParam;

{$R *.dfm}

procedure TfmRepCurriculum.FormCreate(Sender: TObject);
begin
  cbCurr.Clear;
  ibdsCurriculum.First;
  while not ibdsCurriculum.Eof do
  begin
    cbCurr.AddItem(ibdsCurriculumNAME.Value, TObject(ibdsCurriculumID.Value));
    ibdsCurriculum.Next;
  end;
  cbCurr.ItemIndex := 0;
  cbCurr.OnChange(Self);
  dsCurr.DataSet := ibdsCurrReport;
  dsCurrRec.DataSet := ibdsCurrReportRec;
  dsCurrCat.DataSet := ibdsCurrCat;
  SetSizes;
end;

procedure TfmRepCurriculum.cbCurrKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0
end;

  function Fmt(Value: integer): String;
  begin
    if Value = 0 then Result := '' else Result := IntToStr(Value)
  end;

  function FormatD(Value: Double): String;
  begin
    if Value = 0 then Result := ''
    else Result := Format('%.2f', [Value])
  end;

procedure TfmRepCurriculum.cbCurrChange(Sender: TObject);
begin
  //GroupingID := Integer(cbCurr.Items.Objects[cbCurr.ItemIndex]);
  DM.ibdsCurrReport.Params[0].Value :=
    Integer(cbCurr.Items.Objects[cbCurr.ItemIndex]);
  DM.ibdsCurrReport.Params[1].Value := cbFinancing.ItemIndex;
  DM.ibdsCurrReport.Close;
  DM.ibdsCurrReport.Open;
  DM.ibdsCurrReportRec.Params[0].Value :=
    Integer(cbCurr.Items.Objects[cbCurr.ItemIndex]);
  DM.ibdsCurrReportRec.Params[1].Value := cbFinancing.ItemIndex;
  DM.ibdsCurrReportRec.Close;
  DM.ibdsCurrReportRec.Open;
  DM.ibdsCurrCat.Params[0].Value :=
    Integer(cbCurr.Items.Objects[cbCurr.ItemIndex]);
  DM.ibdsCurrCat.Close;
  DM.ibdsCurrCat.Open;
end;

procedure TfmRepCurriculum.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmRepCurriculum.rgFinancingClick(Sender: TObject);
begin
  cbCurr.OnChange(Sender);
end;

procedure TfmRepCurriculum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsCurr.DataSet := nil;
  dsCurrRec.DataSet := nil;
  dsCurrCat.DataSet := nil;
end;

procedure TfmRepCurriculum.FormActivate(Sender: TObject);
var
  i: integer;
begin
  Panel3.Width := dbgCurrRec.Columns[0].Width + dbgCurrRec.Columns[1].Width;
  Panel2.Width := dbgCurrRec.Columns[0].Width + dbgCurrRec.Columns[1].Width;
  for i := 0 to 8 do
  begin
    dbgCurr.Columns[i].Width :=
      dbgCurrRec.Columns[2].Width + dbgCurrRec.Columns[3].Width + 1;
    dbgCurrSum.Columns[i].Width := dbgCurr.Columns[i].Width;
    dbgCurrVSum.Columns[i].Width := dbgCurr.Columns[i].Width;
    dbgCurrTotal.Columns[i].Width := dbgCurr.Columns[i].Width;
    dbgCurrCat.Columns[i].Width := dbgCurrRec.Columns[2].Width + dbgCurrRec.Columns[3].Width + 1;
  end;
  for i := 20 to 27 do
    dbgCurrSum.Columns[i - 11].Width := dbgCurrRec.Columns[i].Width;
  dbgCurr.Columns[9].Width := dbgCurrRec.Columns[20].Width;
  dbgCurr.Columns[10].Width := dbgCurrRec.Columns[20].Width;
  dbgCurr.Columns[11].Width := dbgCurrRec.Columns[20].Width;
  dbgCurr.Columns[12].Width := dbgCurrRec.Columns[23].Width;
  dbgCurr.Columns[13].Width := dbgCurrRec.Columns[23].Width;
  dbgCurr.Columns[14].Width := dbgCurrRec.Columns[25].Width;
end;

procedure TfmRepCurriculum.Word1Click(Sender: TObject);
const FIELD_QTY = 20;
var
  rep: TRTReport;
  P: array[0 .. FIELD_QTY - 1] of Integer;
  S: String[30];
  i: integer;
  BM: TBookmark;
  function iFormat(Value: Integer): String;
  begin
    if Value = 0 then Result := ''
    else Result :=  IntToStr(Value);
  end;
  function dFormat(Value: Double): String;
  begin
    if Value = 0 then Result := ''
    else Result := Format('%.2f', [Value]);
  end;
  function cFormat(Value: Currency): String;
  begin
    if Value = 0 then Result := ''
    else Result := Format('%m', [Value]);
  end;
  function gr: String;
  begin
    if DM.ibdsCurrReportRecGROUP_QTY.Value = 1 then
      result := 'Учащихся'
    else
      result := 'Групп';
  end;
begin
  LocateReportParam('CurriculumReport',
    #3#24#4#15#15#15#15#15#15#15#15#15#20#20#20#20#20#20#12#12);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*57;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1]) * TWIPS_IN_MM;

  rep := TRTReport.Create('CurriculumReport');

  rep.AddText('\headery300 {\header ');  //верхний колонтитул
  rep.ParSet12Arial;
  rep.AddText(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddText(' Филиал ' + DM.ibdsFilialName.Value);
  rep.AddText('\tx14000\tab\b Лист \chpgn\par}');

  rep.AddPar('\qc ' + 'УЧЕБНЫЙ ПЛАН    ' +
     mon[MonthOf(DM.ibdsConstSYSTEM_DATE.Value)] + ' ' +
     IntToStr(YearOf(DM.ibdsConstSYSTEM_DATE.Value)) + '\par');
  rep.AddPar('\qc ' +  cbCurr.Items[cbCurr.ItemIndex] + '   ' +
    cbFinancing.Items[cbFinancing.ItemIndex]);
  rep.ParSetLongTableHead;


  rep.CreateMergeHeader(
    [P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8], P[9], P[10], P[11],
     P[14], P[17], P[19]], [0], []);
  rep.AddRow(['№', 'Классы ->', '0', '1', '2', '3', '4', '5', '6', '7', '8',
    'Всего часов', 'Нераспред. часов', 'Кол-во гр.']);

  rep.Complete2MergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[12], P[13], P[14], P[15], P[16], P[17], P[18], P[19]],
    [0], [17, 18], []);

  rep.AddRow(['', 'Кол-во уч-ся ->',
    DM.ibdsCurrReportQ_0.AsString, DM.ibdsCurrReportQ_1.AsString,
    DM.ibdsCurrReportQ_2.AsString, DM.ibdsCurrReportQ_3.AsString,
    DM.ibdsCurrReportQ_4.AsString, DM.ibdsCurrReportQ_5.AsString,
    DM.ibdsCurrReportQ_6.AsString, DM.ibdsCurrReportQ_7.AsString,
    DM.ibdsCurrReportQ_8.AsString,
    DM.ibdsCurrReportQ_ALL_Y.AsString, DM.ibdsCurrReportQ_ALL_O.AsString,
    DM.ibdsCurrReportQ_ALL_C.AsString, DM.ibdsCurrReportQ_V_Y.AsString,
    DM.ibdsCurrReportQ_V_O.AsString, DM.ibdsCurrReportQ_V_C.AsString,
    'мл.', 'ст.']);
  rep.Complete2MergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[12], P[13], P[14], P[15], P[16], P[17], P[18], P[19]],
    [0, 17, 18],
    [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], []
  );

  rep.AddRow(['', 'Категория ->',
    DM.ibdsCurrCatCat0.Value, DM.ibdsCurrCatCat1.Value,
    DM.ibdsCurrCatCat2.Value, DM.ibdsCurrCatCat3.Value,
    DM.ibdsCurrCatCat4.Value, DM.ibdsCurrCatCat5.Value,
    DM.ibdsCurrCatCat6.Value, DM.ibdsCurrCatCat7.Value,
    DM.ibdsCurrCatCat8.Value, 'мл.', 'ст.', 'конц.',
    'мл.', 'ст.', 'конц.', '', '']
  );
  rep.CompleteMergeHeader(P,
    [0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19], []
  );
  rep.AddRow(['', 'Предмет', 'Гр.', '', '', '', '', '', '',
    '', '', '', '', '', '', '', '', '', '', '']);

  rep.CreateTable(P, []);
  CurrencyString := '';
  CurrencyFormat := 1;
  ThousandSeparator := '''';
  DecimalSeparator := ',';
  CurrencyDecimals := 2;

  DM.ibdsCurrReportRec.DisableControls;
  BM := DM.ibdsCurrReportRec.GetBookmark;
  DM.ibdsCurrReportRec.First;
  i := 0;
  while not DM.ibdsCurrReportRec.Eof do
  begin
    inc(i);
    rep.AddRow(['\qr ' + IntToStr(i),
      '\ql ' + DM.ibdsCurrReportRecSUBJECT_NAME.Value + '\par\qr ' + gr,
      DM.ibdsCurrReportRecGROUP_QTY.AsString,
      dFormat(DM.ibdsCurrReportRecT_0.Value) + '\par ' + DM.ibdsCurrReportRecQTY_0.AsString,
      dFormat(DM.ibdsCurrReportRecT_1.Value) + '\par ' + DM.ibdsCurrReportRecQTY_1.AsString,
      dFormat(DM.ibdsCurrReportRecT_2.Value) + '\par ' + DM.ibdsCurrReportRecQTY_2.AsString,
      dFormat(DM.ibdsCurrReportRecT_3.Value) + '\par ' + DM.ibdsCurrReportRecQTY_3.AsString,
      dFormat(DM.ibdsCurrReportRecT_4.Value) + '\par ' + DM.ibdsCurrReportRecQTY_4.AsString,
      dFormat(DM.ibdsCurrReportRecT_5.Value) + '\par ' + DM.ibdsCurrReportRecQTY_5.AsString,
      dFormat(DM.ibdsCurrReportRecT_6.Value) + '\par ' + DM.ibdsCurrReportRecQTY_6.AsString,
      dFormat(DM.ibdsCurrReportRecT_7.Value) + '\par ' + DM.ibdsCurrReportRecQTY_7.AsString,
      dFormat(DM.ibdsCurrReportRecT_8.Value) + '\par ' + DM.ibdsCurrReportRecQTY_8.AsString,
      dFormat(DM.ibdsCurrReportRecT_ALL_Y.Value),
      dFormat(DM.ibdsCurrReportRecT_ALL_O.Value),
      dFormat(DM.ibdsCurrReportRecT_ALL_C.Value),
      dFormat(DM.ibdsCurrReportRecT_V_Y.Value),
      dFormat(DM.ibdsCurrReportRecT_V_O.Value),
      dFormat(DM.ibdsCurrReportRecT_V_C.Value),
      iFormat(DM.ibdsCurrReportRecG_QTY_Y.Value),
      iFormat(DM.ibdsCurrReportRecG_QTY_O.Value)
    ]);
    DM.ibdsCurrReportRec.Next;
  end;

  rep.CreateTable([P[2], P[3], P[4], P[5], P[6], P[7], P[8], P[9],
    P[10], P[11], P[12], P[13], P[14], P[15], P[16], P[17], P[18], P[19]], []);

  rep.AddRow([
    'Всего',
    dFormat(DM.ibdsCurrReportT_0.Value),
    dFormat(DM.ibdsCurrReportT_1.Value),
    dFormat(DM.ibdsCurrReportT_2.Value),
    dFormat(DM.ibdsCurrReportT_3.Value),
    dFormat(DM.ibdsCurrReportT_4.Value),
    dFormat(DM.ibdsCurrReportT_5.Value),
    dFormat(DM.ibdsCurrReportT_6.Value),
    dFormat(DM.ibdsCurrReportT_7.Value),
    dFormat(DM.ibdsCurrReportT_8.Value),
    dFormat(DM.ibdsCurrReportT_A_Y.Value),
    dFormat(DM.ibdsCurrReportT_A_O.Value),
    dFormat(DM.ibdsCurrReportT_A_C.Value),
    '', '', '',
    iFormat(DM.ibdsCurrReportG_Y.Value),
    iFormat(DM.ibdsCurrReportG_O.Value)
  ]);

  rep.AddRow([
    'Нерасперделённые часы',
    dFormat(DM.ibdsCurrReportT_V_0.Value),
    dFormat(DM.ibdsCurrReportT_V_1.Value),
    dFormat(DM.ibdsCurrReportT_V_2.Value),
    dFormat(DM.ibdsCurrReportT_V_3.Value),
    dFormat(DM.ibdsCurrReportT_V_4.Value),
    dFormat(DM.ibdsCurrReportT_V_5.Value),
    dFormat(DM.ibdsCurrReportT_V_6.Value),
    dFormat(DM.ibdsCurrReportT_V_7.Value),
    dFormat(DM.ibdsCurrReportT_V_8.Value),
    dFormat(DM.ibdsCurrReportT_V_Y.Value),
    dFormat(DM.ibdsCurrReportT_V_O.Value),
    dFormat(DM.ibdsCurrReportT_V_C.Value),
    dFormat(DM.ibdsCurrReportT_V_Y.Value),
    dFormat(DM.ibdsCurrReportT_V_O.Value),
    dFormat(DM.ibdsCurrReportT_V_C.Value),
    '', ''
  ]);

  rep.AddRow([
    'Итого',
    dFormat(DM.ibdsCurrReportt_t_0.Value),
    dFormat(DM.ibdsCurrReportt_t_1.Value),
    dFormat(DM.ibdsCurrReportt_t_2.Value),
    dFormat(DM.ibdsCurrReportt_t_3.Value),
    dFormat(DM.ibdsCurrReportt_t_4.Value),
    dFormat(DM.ibdsCurrReportt_t_5.Value),
    dFormat(DM.ibdsCurrReportt_t_6.Value),
    dFormat(DM.ibdsCurrReportt_t_7.Value),
    dFormat(DM.ibdsCurrReportt_t_8.Value),
    dFormat(DM.ibdsCurrReportt_t_y.Value),
    dFormat(DM.ibdsCurrReportt_t_o.Value),
    dFormat(DM.ibdsCurrReportt_t_c.Value),
    '', '', '', '', ''
  ]);

  rep.AddText('\pard ');
  rep.ParSet(fTimes, 12, [fstBold]);
  rep.AddPar('\line\line\line \qr Зам директора по учебной работе                   Кулясова Н.В.');
  DM.ibdsCurrReportRec.GotoBookmark(BM);
  DM.ibdsCurrReportRec.FreeBookmark(BM);
  DM.ibdsCurrReportRec.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Отчёт учебный план');
end;

procedure TfmRepCurriculum.N1Click(Sender: TObject);
begin
  fmCurrRepParam := TfmCurrRepParam.Create(Self);
  fmCurrRepParam.ShowModal;
  fmCurrRepParam.Release;
end;

procedure TfmRepCurriculum.cbFinancingChange(Sender: TObject);
begin
  cbCurrChange(Sender);
end;

procedure TfmRepCurriculum.dbgCurrRecDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (DataCol > 0) and (Column.Field.AsFloat = 0) then
    dbgCurrRec.Canvas.Font.Color := dbgCurrRec.Canvas.Brush.Color;
  if DM.ibdsCurrReportRecSUBJECT_CODE.Value = 1 then
    dbgCurrRec.Canvas.Font.Color := clBlue;

  dbgCurrRec.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmRepCurriculum.dbgCurrCatDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Field.AsString = 'мл.' then
    dbgCurrCat.Canvas.Font.Color := clGreen
  else
    dbgCurrCat.Canvas.Font.Color := clRed;
  dbgCurrCat.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmRepCurriculum.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 34);
end;

procedure TfmRepCurriculum.SetSizes;
var
  i: integer;
  Sz: integer;
  SzM: integer;
begin
  Sz := 0;
  for i := 0 to dbgCurrRec.Columns.Count - 1 do
    Sz := Sz + dbgCurrRec.Columns[i].Width;
//  dbgCurrRec.Width := Sz + dbgCurrRec.Columns.Count * 2;
  ScrollBox1.HorzScrollBar.Range := Sz + dbgCurrRec.Columns.Count * 3;
end;

end.
