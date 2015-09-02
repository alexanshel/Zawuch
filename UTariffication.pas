unit UTariffication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  URTReport, ShellAPI, IniFiles, Menus, RXDBCtrl, Placemnt, ActnList,
  frxClass, IBCustomDataSet, IBQuery, frxDBSet, frxExportRTF, frxDesgn;

type
  TfmTariffication = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsTariffication: TDataSource;
    dsTarifficationRec: TDataSource;
    btnCalc: TSpeedButton;
    btnDel: TSpeedButton;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    DBEdit16: TDBEdit;
    Label13: TLabel;
    DBEdit17: TDBEdit;
    Label14: TLabel;
    MainMenu1: TMainMenu;
    miExit: TMenuItem;
    miPrint: TMenuItem;
    miWord: TMenuItem;
    miOptions: TMenuItem;
    dbgTarifficationRec: TRxDBGrid;
    dbgTariffication: TRxDBGrid;
    btnDelRec: TSpeedButton;
    btnEditRec: TSpeedButton;
    miHelp: TMenuItem;
    FormStorage1: TFormStorage;
    ActionList: TActionList;
    aEditRecord: TAction;
    frxReport: TfrxReport;
    frxdbdsTariffTotalTable: TfrxDBDataset;
    ibqTariffTotallTable: TIBQuery;
    ibqTariffTotallTableT_Y: TFloatField;
    ibqTariffTotallTableT_O: TFloatField;
    ibqTariffTotallTableT_C: TFloatField;
    ibqTariffTotallTableT_V_Y: TFloatField;
    ibqTariffTotallTableT_V_O: TFloatField;
    ibqTariffTotallTableT_V_C: TFloatField;
    ibqTariffTotallTableM_Y: TFloatField;
    ibqTariffTotallTableM_O: TFloatField;
    ibqTariffTotallTableM_C: TFloatField;
    ibqTariffTotallTableM_V_Y: TFloatField;
    ibqTariffTotallTableM_V_O: TFloatField;
    ibqTariffTotallTableM_V_C: TFloatField;
    miTariffTotalTable: TMenuItem;
    frxRTFExport: TfrxRTFExport;
    frxrTarriffication: TfrxReport;
    frxDesigner1: TfrxDesigner;
    aPrintTarriffication: TAction;
    frxdbdsTarriffication: TfrxDBDataset;
    miOldVerson: TMenuItem;
    miShowTarriffication: TMenuItem;
    miEditTarrifficationPrintForm: TMenuItem;
    aEditTarrifficationPrintForm: TAction;
    ibqTarRecord: TIBQuery;
    frxdbdsTarrRecord: TfrxDBDataset;
    ibqTariffication: TIBQuery;
    pInfo: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcClick(Sender: TObject);
    procedure dbgTarifficationRecCellClick(Column: TColumn);
    procedure dbgTarifficationRecDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnDelClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure miOptionsClick(Sender: TObject);
    procedure miWordClick(Sender: TObject);
    procedure btnDelRecClick(Sender: TObject);
    procedure btnEditRecClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
    procedure miTariffTotalTableClick(Sender: TObject);
    procedure aPrintTarrifficationExecute(Sender: TObject);
    procedure miShowTarrifficationClick(Sender: TObject);
    procedure aEditTarrifficationPrintFormExecute(Sender: TObject);
    procedure dbgTarifficationRecDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTariffication: TfmTariffication;

implementation

uses UDM, DateUtils, UTarifficationOpt, UEdTarifficationRec;

{$R *.dfm}

procedure TfmTariffication.FormCreate(Sender: TObject);
begin
  dsTariffication.DataSet := DM.ibdsTariffication;
  DM.ibdsTarifficationRec.DataSource := dsTariffication;
  dsTarifficationRec.DataSet := DM.ibdsTarifficationRec;

  ibqTariffTotallTable.Open;
end;

procedure TfmTariffication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.ibdsTarifficationRec.DataSource := nil;
  dsTarifficationRec.DataSet := nil;
  dsTariffication.DataSet := nil;
  ibqTariffTotallTable.Close;
end;

procedure TfmTariffication.btnCalcClick(Sender: TObject);
var
  d: TDateTime;
begin
  if MessageDlg('Вы действительно хотите расчетать новую тарификационную ведомость?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then begin
    //d := DM.NewTariffication(InputBox('Информация', 'Введите текст', ''));
    pInfo.Show;
    Application.ProcessMessages;
    d := DM.NewTariffication('');

    pInfo.Hide;

    DM.ibdsTariffication.Close;
    DM.ibdsTariffication.Open;
    DM.ibdsTariffication.Locate('doc_date', VarArrayOf([d]), []);
  end;
end;

procedure TfmTariffication.dbgTarifficationRecCellClick(Column: TColumn);
begin
  dbgTarifficationRec.Hint := dbgTarifficationRec.SelectedField.AsString;
end;

procedure TfmTariffication.dbgTarifficationRecDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (DM.ibdsTarifficationRecTEACHER_ID.Value = 0) and not
    (gdSelected	in State) then
    dbgTarifficationRec.Canvas.Font.Color := clRed;
  dbgTarifficationRec.DefaultDrawColumnCell(Rect, DataCol, Column, State);  
end;

procedure TfmTariffication.btnDelClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите удалить тарификацию '+ #13+#10 + '"' +
    DM.ibdsTarifficationINFO.Value + '"', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelTariffication(DM.ibdsTarifficationDOC_DATE.Value);
    DM.ibdsTariffication.Close;
    DM.ibdsTariffication.Open;
  end;
end;

procedure TfmTariffication.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmTariffication.miOptionsClick(Sender: TObject);
begin
  fmTarifficationOpt := TfmTarifficationOpt.Create(Self);
  fmTarifficationOpt.ShowModal;
  fmTarifficationOpt.Release;
end;

procedure TfmTariffication.miWordClick(Sender: TObject);
const
  FIELD_QTY = 23;
  TWIPS_IN_MM = 57;
var
  BM: TBookmark;
  rep: TRTReport;
  i, TarYear: integer;
  P: array[0..FIELD_QTY - 1] of Integer;
  S: String[30];
  YBTime, OBTime, CBTime, YBSum, OBSum, CBSum, BSum,
  YSTime, OSTime, CSTime, YSSum, OSSum, CSSum, SSum, ASum, SUM: double;
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
  function isFormat(iValue: Integer; sValue: String): String;
  begin
    if iValue = 0 then Result := ''
    else Result := IntToStr(iValue) + ' ' + sValue
  end;
  function F1310toPar(S: String): String;
  var
    p: integer;
  begin
    p := pos(#9, S);
    while p <> 0 do
    begin
      S := copy(S, 1, p - 1) + '\tab' + copy(S, p + 1, Length(S) - p);
      p := pos(#9, S);
    end;
    Result := '';
    p := pos(#13, S);
    while p <> 0 do
    begin
      Result := Result + copy(S, 1, p - 1) + '\par ';
      S := copy(S, p + 2, Length(S) - p - 1);
      p := pos(#13, S);
    end;
    Result := Result + S;
  end;
begin
  LocateReportParam('Tariffication',
    #3#24#4#28#5#4#12#11#11#11#12#12#12#14#11#11#11#12#12#12#14#14#16);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*TWIPS_IN_MM;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1])*TWIPS_IN_MM;


  YBTime := 0; OBTime := 0; CBTime := 0; YBSum := 0; OBSum := 0; CBSum := 0; BSum := 0;
  YSTime := 0; OSTime := 0; CSTime := 0; YSSum := 0; OSSum := 0; CSSum := 0; SSum := 0;
  ASum := 0; SUM := 0;

  DM.ibdsTarifficationRec.DisableControls;
  BM := DM.ibdsTarifficationRec.GetBookmark;
  DM.ibdsTarifficationRec.First;

  rep := TRTReport.Create('Tariffication');

  rep.AddText('\headery300 {\header ');  //верхний колонтитул
  rep.ParSet12Arial;
  rep.AddText(DM.ibdsConstPASPORT_NAME.Value + '  ' + DM.ibdsFilialName.Value);
  rep.AddText('\tx14000\tab\b Лист \chpgn\par}');
  //rep.AddText('{\footer  }');

  TarYear := YearOf(DM.ibdsConstSYSTEM_DATE.Value);
  if MonthOf(DM.ibdsConstSYSTEM_DATE.Value) <= 6 then Dec(TarYear);

  rep.AddPar('\line\ql "Согласовано" \tx12000\tab "Утверждаю"');
  rep.AddPar('Председатель ПК                Павлов М.А.\tab' + DM.ibdsConstPASPORT_DIRECTOR_SIGN.Value);
  rep.AddPar('"___"______________ 20___г.\tab "___"______________ 20___г.');
  rep.AddPar('\qc ' + 'ТАРИФИКАЦИОННАЯ ВЕДОМОСТЬ');
  rep.AddPar('на преподавателей и концертмейстеров на  ' +
     IntToStr(TarYear) + '-' +
     IntToStr(TarYear + 1) + ' учебный год' +
     '\par');
  rep.ParSetLongTableHead;

//  rep.CreateMergeHeader(
//    [P[0], P[1], P[2], P[3], P[4], P[5], P[6], P[13], P[20], P[21], P[22]],
//    [0, 1, 2, 3, 4, 5, 6, 9, 10], [2, 4, 5]);
//  rep.AddRow(['№', 'Ф.И.О, предмет, должность', '\fs14 Образование \fs16',
//    'Данные диплома', 'Пед. стаж', '\fs14 Разряд \fs16', 'Ставка', 'Бюджет',
//    'Платные образовательные услуги', 'Надбавка', 'Итого']);
  rep.CreateMergeHeader(
    [P[0], P[1], P[2], P[3], P[4], P[5], P[6], P[13], P[20], P[21], P[22]],
    [0, 1, 2, 3, 4, 5, 6, 9, 10], [2, 4, 5]);
  rep.AddRow([
    '№',
    'Ф.И.О',
    'Наименование должности, преподаваемый предмет',
    '\fs14 Образование, наименование и дата окончания образования образовательного учереждения \fs16',
    'Стаж педагогической работы', '\fs14 Разряд \fs16', 'Ставка', 'Бюджет',
    'Платные образовательные услуги', 'Надбавка', 'Итого']);


  rep.Complete2MergeHeader(
    [P[0], P[1], P[2], P[3], P[4], P[5], P[6], P[9], P[12], P[13], P[16],
     P[19], P[20], P[21], P[22]],
    [0, 1, 2, 3, 4, 5, 6, 13, 14], [9, 12], [2, 4, 5]);
  rep.AddRow(['', '', '', '', '', '', '', 'Часы', 'З/плата', 'Сумма', 'Часы',
    'З/плата', 'Сумма', '', '']);

  rep.CompleteMergeHeader( P, [0, 1, 2, 3, 4, 5, 6, 13, 20, 21, 22], [2, 4, 5]);
  rep.AddText('\trrh550');
  rep.AddRow(['', '', '', '', '', '', '', 'мл.', 'ст.', 'конц.', 'мл.', 'ст.', 'конц.', '',
    'мл.', 'ст.', 'конц.', 'мл.', 'ст.', 'конц.', '', '', '']);

  rep.CreateTable(P, [2]);
  CurrencyString := '';
  CurrencyFormat := 1;
  ThousandSeparator := '''';
  DecimalSeparator := ',';
  CurrencyDecimals := 2;
  //GetLocaleFormatSettings(1, Fmt);

  rep.ParSetTableTimes8;
  i := 1;
  while not DM.ibdsTarifficationRec.Eof do
  begin
    if DM.ibdsTarifficationRecTEACHER_ID.Value = 0 then
    begin
      DM.ibdsTarifficationRec.Next;
      Continue;
    end;
    rep.AddRow(
      ['\ql\fs12 ' + IntToStr(i) + '\fs16',
       '\b\fs20 ' + Copy(DM.ibdsTarifficationRecT_NAME.Value, 1, Pos(' ', DM.ibdsTarifficationRecT_NAME.Value) - 1) +
       '\b0\fs16\par ' + Copy(DM.ibdsTarifficationRecT_NAME.Value, Pos(' ', DM.ibdsTarifficationRecT_NAME.Value) + 1,
         Length(DM.ibdsTarifficationRecT_NAME.Value) - Pos(' ', DM.ibdsTarifficationRecT_NAME.Value)) +
       ',\par ' + DM.ibdsTarifficationRecT_SUBJ.Value + ',\par ' +
       DM.ibdsTarifficationRecT_POST.Value,
       '\pard \qc\fs14 ' + DM.ibdsTarifficationRecT_EDUCATION.Value,
       '\pard \ql\fs16 ' + DM.ibdsTarifficationRecT_DIPLOMA.Value,
       isFormat(DM.ibdsTarifficationRecCurrStageY.Value, '\par лет') + '\par ' +
       isFormat(DM.ibdsTarifficationRecCurrStageM.Value, '\par мес') + '\par ' +
       isFormat(DM.ibdsTarifficationRecCurrStageD.Value, '\par дн.'),
       '\fs14 ' +
       iFormat(DM.ibdsTarifficationRecT_MAIN_GRADE.Value) + '\par ' +
       iFormat(DM.ibdsTarifficationRecT_CONCERT_GRADE.Value),
       cFormat(DM.ibdsTarifficationRecT_MAIN_SALARY.AsCurrency) + '\par ' +
       cFormat(DM.ibdsTarifficationRecT_CONCERT_SALARY.AsCurrency),
       '\qr ' + dFormat(DM.ibdsTarifficationRecT_B_TIME_Y.Value),
       dFormat(DM.ibdsTarifficationRecT_B_TIME_O.Value),
       '\par ' + dFormat(DM.ibdsTarifficationRecT_B_TIME_C.Value),
       '\fs14 ' + dFormat(DM.ibdsTarifficationRecBMoneyY.Value),
       cFormat(DM.ibdsTarifficationRecBMoneyO.Value),
       '\par ' + cFormat(DM.ibdsTarifficationRecBMoneyC.Value),
       cFormat(DM.ibdsTarifficationRecSumB.Value),
       dFormat(DM.ibdsTarifficationRecT_S_TIME_Y.Value),
       dFormat(DM.ibdsTarifficationRecT_S_TIME_O.Value),
       '\par ' + dFormat(DM.ibdsTarifficationRecT_S_TIME_C.Value),
       cFormat(DM.ibdsTarifficationRecSMoneyY.Value),
       cFormat(DM.ibdsTarifficationRecSMoneyO.Value),
       '\par ' + cFormat(DM.ibdsTarifficationRecSMoneyC.Value),
       cFormat(DM.ibdsTarifficationRecSumS.Value),
       cFormat(DM.ibdsTarifficationRecT_ADDINGS.Value),
       cFormat(DM.ibdsTarifficationRecSUM.Value)
      ]);
    YBTime := YBTime + DM.ibdsTarifficationRecT_B_TIME_Y.Value;
    OBTime := OBTime + DM.ibdsTarifficationRecT_B_TIME_O.Value;
    CBTime := CBTime + DM.ibdsTarifficationRecT_B_TIME_C.Value;
    YBSum := YBSum + DM.ibdsTarifficationRecBMoneyY.Value;
    OBSum := OBSum + DM.ibdsTarifficationRecBMoneyO.Value;
    CBSum := CBSum + DM.ibdsTarifficationRecBMoneyC.Value;
    BSum := BSum + DM.ibdsTarifficationRecSumB.Value;

    YSTime := YSTime + DM.ibdsTarifficationRecT_S_TIME_Y.Value;
    OSTime := OSTime + DM.ibdsTarifficationRecT_S_TIME_O.Value;
    CSTime := CSTime + DM.ibdsTarifficationRecT_S_TIME_C.Value;
    YSSum := YSSum + DM.ibdsTarifficationRecSMoneyY.Value;
    OSSum := OSSum + DM.ibdsTarifficationRecSMoneyO.Value;
    CSSum := CSSum + DM.ibdsTarifficationRecSMoneyC.Value;
    SSum := SSum + DM.ibdsTarifficationRecSumS.Value;

    ASum := ASum + DM.ibdsTarifficationRecT_ADDINGS.Value;
    SUM := SUM + DM.ibdsTarifficationRecSUM.Value;

    inc(i);
    DM.ibdsTarifficationRec.Next;
  end;

  rep.AddRow(
   ['\ql\fs16 ', 'ВСЕГО', '', '', '', '', ' ',
    '\qr\fs14 ' + dFormat(YBTime), dFormat(OBTime), dFormat(CBTime),
    cFormat(YBSum), cFormat(OBSum), cFormat(CBSum), cFormat(BSum),
    dFormat(YSTime), dFormat(OSTime), dFormat(CSTime),
    cFormat(YSSum), cFormat(OSSum), cFormat(CSSum), cFormat(SSum),
    cFormat(ASum), cFormat(SUM)
   ]);

    DM.ibdsTarifficationRec.Locate('TEACHER_ID', 0, []);

    rep.AddRow(
      ['\ql\fs12 ', 'НЕРАСПРЕДЕЛЕННЫЕ ЧАСЫ\fs14', '', '', '',
       DM.ibdsTarifficationRecT_MAIN_GRADE.AsString + '\par ' +
       DM.ibdsTarifficationRecT_CONCERT_GRADE.AsString,
       cFormat(DM.ibdsTarifficationRecT_MAIN_SALARY.AsCurrency) + '\par ' +
       cFormat(DM.ibdsTarifficationRecT_CONCERT_SALARY.AsCurrency),
       '\qr ' + dFormat(DM.ibdsTarifficationRecT_B_TIME_Y.Value),
       dFormat(DM.ibdsTarifficationRecT_B_TIME_O.Value),
       '\par ' + dFormat(DM.ibdsTarifficationRecT_B_TIME_C.Value),
       cFormat(DM.ibdsTarifficationRecBMoneyY.Value),
       cFormat(DM.ibdsTarifficationRecBMoneyO.Value),
       '\par ' + cFormat(DM.ibdsTarifficationRecBMoneyC.Value),
       cFormat(DM.ibdsTarifficationRecSumB.Value),
       dFormat(DM.ibdsTarifficationRecT_S_TIME_Y.Value),
       dFormat(DM.ibdsTarifficationRecT_S_TIME_O.Value),
       '\par ' + dFormat(DM.ibdsTarifficationRecT_S_TIME_C.Value),
       cFormat(DM.ibdsTarifficationRecSMoneyY.Value),
       cFormat(DM.ibdsTarifficationRecSMoneyO.Value),
       '\par ' + cFormat(DM.ibdsTarifficationRecSMoneyC.Value),
       cFormat(DM.ibdsTarifficationRecSumS.Value),
       cFormat(DM.ibdsTarifficationRecT_ADDINGS.Value),
       cFormat(DM.ibdsTarifficationRecSUM.Value)
      ]);

    YBTime := YBTime + DM.ibdsTarifficationRecT_B_TIME_Y.Value;
    OBTime := OBTime + DM.ibdsTarifficationRecT_B_TIME_O.Value;
    CBTime := CBTime + DM.ibdsTarifficationRecT_B_TIME_C.Value;
    YBSum := YBSum + DM.ibdsTarifficationRecBMoneyY.Value;
    OBSum := OBSum + DM.ibdsTarifficationRecBMoneyO.Value;
    CBSum := CBSum + DM.ibdsTarifficationRecBMoneyC.Value;
    BSum := BSum + DM.ibdsTarifficationRecSumB.Value;

    YSTime := YSTime + DM.ibdsTarifficationRecT_S_TIME_Y.Value;
    OSTime := OSTime + DM.ibdsTarifficationRecT_S_TIME_O.Value;
    CSTime := CSTime + DM.ibdsTarifficationRecT_S_TIME_C.Value;
    YSSum := YSSum + DM.ibdsTarifficationRecSMoneyY.Value;
    OSSum := OSSum + DM.ibdsTarifficationRecSMoneyO.Value;
    CSSum := CSSum + DM.ibdsTarifficationRecSMoneyC.Value;
    SSum := SSum + DM.ibdsTarifficationRecSumS.Value;

    ASum := ASum + DM.ibdsTarifficationRecT_ADDINGS.Value;
    SUM := SUM + DM.ibdsTarifficationRecSUM.Value;

  rep.AddRow(
   ['\ql\fs16 ', 'ИТОГО', '', '', '', '', ' ',
    '\qr\fs14 ' + dFormat(YBTime), dFormat(OBTime), dFormat(CBTime),
    cFormat(YBSum), cFormat(OBSum), cFormat(CBSum), cFormat(BSum),
    dFormat(YSTime), dFormat(OSTime), dFormat(CSTime),
    cFormat(YSSum), cFormat(OSSum), cFormat(CSSum), cFormat(SSum),
    cFormat(ASum), cFormat(SUM)
   ]);
  rep.ParSet10Times;
  rep.AddPar('\line\line\line\line\pard \fs24\tx6000 ' +
    F1310toPar(DM.ibdsConstPASPORT_TARIFFICATION_SIGN.Value));

  DM.ibdsTarifficationRec.GotoBookmark(BM);
  DM.ibdsTarifficationRec.FreeBookmark(BM);
  DM.ibdsTarifficationRec.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Тарификация');
end;

procedure TfmTariffication.btnDelRecClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',
    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;

  if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;

  DM.ibqProc.SQL.Clear;
  DM.ibqProc.SQL.Append(
    'delete from tariffication_record TR ' +
    'where TR.doc_date = :in_doc_date and ' +
    'TR.teacher_id = :in_teacher_id;');
  DM.ibqProc.ParamByName('in_doc_date').Value := DM.ibdsTarifficationRecDOC_DATE.Value;
  DM.ibqProc.ParamByName('in_teacher_id').Value := DM.ibdsTarifficationRecTEACHER_ID.Value;

  try
    DM.ibqProc.ExecSQL;
  except
    DM.ibqProc.Transaction.Rollback;
  end;

  if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;

  DM.ibdsTarifficationRec.Close;
  DM.ibdsTarifficationRec.Open;
end;

procedure TfmTariffication.btnEditRecClick(Sender: TObject);
begin
  fmEdTarifficationRec := TfmEdTarifficationRec.Create(Self);
  fmEdTarifficationRec.edTYB.Text := DM.ibdsTarifficationRecT_B_TIME_Y.AsString;
  fmEdTarifficationRec.edTOB.Text := DM.ibdsTarifficationRecT_B_TIME_O.AsString;
  fmEdTarifficationRec.edTCB.Text := DM.ibdsTarifficationRecT_B_TIME_C.AsString;
  fmEdTarifficationRec.edTYS.Text := DM.ibdsTarifficationRecT_S_TIME_Y.AsString;
  fmEdTarifficationRec.edTOS.Text := DM.ibdsTarifficationRecT_S_TIME_O.AsString;
  fmEdTarifficationRec.edTCS.Text := DM.ibdsTarifficationRecT_S_TIME_C.AsString;
  if fmEdTarifficationRec.ShowModal = mrOk then
  begin
    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;

    DM.ibqProc.SQL.Clear;
    DM.ibqProc.SQL.Append('update tariffication_record TF '+
      'set TF.t_b_time_y = :tyb, TF.t_b_time_o = :tob, TF.t_b_time_c = :tcb, '+
      'TF.t_s_time_y = :tys, TF.t_s_time_o = :tos, TF.t_s_time_c = :tcs '+
      'where TF.doc_date = :doc_date and TF.teacher_id = :teacher_id;');
    DM.ibqProc.ParamByName('tyb').AsFloat := StrToFloatDef(fmEdTarifficationRec.edTYB.Text, 0);
    DM.ibqProc.ParamByName('tob').AsFloat := StrToFloatDef(fmEdTarifficationRec.edTOB.Text, 0);
    DM.ibqProc.ParamByName('tcb').AsFloat := StrToFloatDef(fmEdTarifficationRec.edTCB.Text, 0);
    DM.ibqProc.ParamByName('tys').AsFloat := StrToFloatDef(fmEdTarifficationRec.edTYS.Text, 0);
    DM.ibqProc.ParamByName('tos').AsFloat := StrToFloatDef(fmEdTarifficationRec.edTOS.Text, 0);
    DM.ibqProc.ParamByName('tcs').AsFloat := StrToFloatDef(fmEdTarifficationRec.edTCS.Text, 0);
    DM.ibqProc.ParamByName('doc_date').Value := DM.ibdsTarifficationRecDOC_DATE.Value;
    DM.ibqProc.ParamByName('teacher_id').Value := DM.ibdsTarifficationRecTEACHER_ID.Value;
    try
      DM.ibqProc.ExecSQL;
    except
      DM.ibqProc.Transaction.Rollback;
    end;

    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
    DM.ibdsTarifficationRec.Refresh;
  end;
  fmEdTarifficationRec.Release;
  ibqTarRecord.Close;
  ibqTarRecord.Open;
end;

procedure TfmTariffication.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 35);
end;

procedure TfmTariffication.miTariffTotalTableClick(Sender: TObject);
var
  i: integer;
  FName: string;
begin
  i := 0;
  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\tmp') then
      if not CreateDir(ExtractFilePath(Application.ExeName) + '\tmp') then
        raise Exception.Create('Невозможно создать директорию tmp');
    while FileExists(ExtractFilePath(Application.ExeName) +
      'tmp\' + 'tmp' + IntToStr(i) + '.rtf') do inc(i);
    FName := ExtractFilePath(Application.ExeName) +
      'tmp\' + 'tmp' + IntToStr(i) + '.rtf';
  except
    MessageDlg('Невозможна запись в файл.', mtError, [mbOK], 0);
  end;

  frxRTFExport.FileName := FName;
  frxReport.PrepareReport;
  frxReport.Export(frxRTFExport);
{
  if not FileExists('Tariffication.fr3')  then
  begin
    frxrTarriffication.SaveToFile('Tariffication.fr3');
  end;
  //frxrTarriffication.ShowReport;
  frxrTarriffication.LoadFromFile('Tariffication.fr3');

  frxrTarriffication.PrepareReport;
  frxrTarriffication.Export(frxRTFExport);
}

  ShellExecute(Handle, nil, PChar(FName), nil, nil, SW_RESTORE);
end;

procedure TfmTariffication.aPrintTarrifficationExecute(Sender: TObject);
var
  i: integer;
  FName: string;
begin
  i := 0;
  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\tmp') then
      if not CreateDir(ExtractFilePath(Application.ExeName) + '\tmp') then
        raise Exception.Create('Невозможно создать директорию tmp');
    while FileExists(ExtractFilePath(Application.ExeName) +
      'tmp\' + 'tmp' + IntToStr(i) + '.rtf') do inc(i);
    FName := ExtractFilePath(Application.ExeName) +
      'tmp\' + 'tmp' + IntToStr(i) + '.rtf';
  except
    MessageDlg('Невозможна запись в файл.', mtError, [mbOK], 0);
  end;

  frxRTFExport.FileName := FName;

  if not FileExists('fr\Tariffication.fr3')  then
  begin
    frxrTarriffication.SaveToFile('fr\Tariffication.fr3');
  end;
  //frxrTarriffication.ShowReport;
  frxrTarriffication.LoadFromFile('fr\Tariffication.fr3');
  frxrTarriffication.PrepareReport;
  frxrTarriffication.Export(frxRTFExport);
  //ShellExecute(Handle, nil, PChar(FName), nil, nil, SW_RESTORE);
end;

procedure TfmTariffication.miShowTarrifficationClick(Sender: TObject);
begin
  if not FileExists('fr\Tariffication.fr3')  then
  begin
    frxrTarriffication.SaveToFile('fr\Tariffication.fr3');
  end;
  frxrTarriffication.LoadFromFile('fr\Tariffication.fr3');
  frxrTarriffication.ShowReport;
end;

procedure TfmTariffication.aEditTarrifficationPrintFormExecute(
  Sender: TObject);
begin
  if not FileExists('fr\Tariffication.fr3')  then
  begin
    frxrTarriffication.SaveToFile('fr\Tariffication.fr3');
  end;

  frxrTarriffication.LoadFromFile('fr\Tariffication.fr3');
  frxrTarriffication.DesignReport;
end;

procedure TfmTariffication.dbgTarifficationRecDblClick(Sender: TObject);
begin
  btnEditRecClick(Sender);  
end;

end.
