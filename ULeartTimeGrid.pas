unit ULeartTimeGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Buttons, RXSplit, Grids, DBGrids, RXDBCtrl, ExtCtrls,
  Menus, DB, DBActns, Placemnt, URTReport, frxClass, frxDBSet,
  IBCustomDataSet, IBQuery, frxExportRTF, ShellAPI;

type
  TfmLearnTimeGrid = class(TForm)
    Panel1: TPanel;
    dbgLearnTimeGreed: TRxDBGrid;
    Panel2: TPanel;
    RxSplitter1: TRxSplitter;
    Panel3: TPanel;
    dbgLTGRecord: TRxDBGrid;
    RxSplitter2: TRxSplitter;
    btnAddLTG: TSpeedButton;
    btnEditLTG: TSpeedButton;
    btnDelLTG: TSpeedButton;
    AL: TActionList;
    btnSetupSubj: TSpeedButton;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    miClose: TMenuItem;
    miAddLTG: TMenuItem;
    miEditLTG: TMenuItem;
    miDelLTG: TMenuItem;
    N4: TMenuItem;
    miSetupSubj: TMenuItem;
    dsLTG: TDataSource;
    dsLTGRec: TDataSource;
    aAddLTG: TAction;
    aEditLTG: TAction;
    aDelLTG: TAction;
    aCheckBtn: TAction;
    aSetupSubj: TAction;
    FormStorage1: TFormStorage;
    miWord: TMenuItem;
    miPrintParams: TMenuItem;
    Splitter1: TSplitter;
    miWordW0Cls: TMenuItem;
    frxReport: TfrxReport;
    frxdbdsTotalTable: TfrxDBDataset;
    ibqTotalTable: TIBQuery;
    ibqTotalTableT5_Y: TFloatField;
    ibqTotalTableT5_O: TFloatField;
    ibqTotalTableT5_C: TFloatField;
    ibqTotalTableT5_V_Y: TFloatField;
    ibqTotalTableT5_V_O: TFloatField;
    ibqTotalTableT5_V_C: TFloatField;
    ibqTotalTableT7_Y: TFloatField;
    ibqTotalTableT7_O: TFloatField;
    ibqTotalTableT7_C: TFloatField;
    ibqTotalTableT7_V_Y: TFloatField;
    ibqTotalTableT7_V_O: TFloatField;
    ibqTotalTableT7_V_C: TFloatField;
    ibqTotalTableTOOD_Y: TFloatField;
    ibqTotalTableTOOD_O: TFloatField;
    ibqTotalTableTOOD_C: TFloatField;
    ibqTotalTableTOOD_V_Y: TFloatField;
    ibqTotalTableTOOD_V_O: TFloatField;
    ibqTotalTableTOOD_V_C: TFloatField;
    aPrintTotalTable: TAction;
    frxRTFExport: TfrxRTFExport;
    N5: TMenuItem;
    procedure miCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aAddLTGExecute(Sender: TObject);
    procedure aEditLTGExecute(Sender: TObject);
    procedure aDelLTGExecute(Sender: TObject);
    procedure aCheckBtnExecute(Sender: TObject);
    procedure dsLTGDataChange(Sender: TObject; Field: TField);
    procedure aSetupSubjExecute(Sender: TObject);
    procedure dbgLTGRecordDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure miWordClick(Sender: TObject);
    procedure miPrintParamsClick(Sender: TObject);
    procedure aPrintTotalTableExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLearnTimeGrid: TfmLearnTimeGrid;

implementation

uses UdmLTG, UEdLTG, UEdLTGSubj, UCurrRepParam, UDM;

{$R *.dfm}

procedure TfmLearnTimeGrid.miCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfmLearnTimeGrid.FormCreate(Sender: TObject);
begin
  dmLTG.ibdsLTGSubject.Close;
  dmLTG.ibdsLTGSubject.Open;
  dsLTG.DataSet := dmLTG.ibdsLTG;
  dmLTG.ibdsLTGSubject.DataSource := dsLTG;
  dsLTGRec.DataSet := dmLTG.ibdsLTGSubject;
end;

procedure TfmLearnTimeGrid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsLTGRec.DataSet := nil;
  dmLTG.ibdsLTGSubject.DataSource := nil;
  dsLTG.DataSet := nil;
end;

procedure TfmLearnTimeGrid.aAddLTGExecute(Sender: TObject);
var
  id: Integer;
begin
  fmEdLTG := TfmEdLTG.Create(Self);
  if fmEdLTG.ShowModal = mrOK then
  begin
    id := dmLTG.AddLearnTimeGrid(Null, Ord(fmEdLTG.cbSelfRep.Checked),
      fmEdLTG.edLTGName.Text);
    dmLTG.ibdsLTG.Close;
    dmLTG.ibdsLTG.Open;
    dmLTG.ibdsLTG.Locate('ID', VarArrayOf([id]), []);
  end;
  fmEdLTG.Release;
end;

procedure TfmLearnTimeGrid.aEditLTGExecute(Sender: TObject);
var
  id: Integer;
begin
  fmEdLTG := TfmEdLTG.Create(Self);
  fmEdLTG.edLTGName.Text := dmLTG.ibdsLTGNAME.Value;
  fmEdLTG.cbSelfRep.Checked := Boolean(dmLTG.ibdsLTGFINANCING_ID.Value);
  if fmEdLTG.ShowModal = mrOK then
  begin
    dmLTG.AddLearnTimeGrid(dmLTG.ibdsLTGID.Value, Ord(fmEdLTG.cbSelfRep.Checked),
      fmEdLTG.edLTGName.Text);
    dmLTG.ibdsLTG.Refresh;
  end;
  fmEdLTG.Release;
end;

procedure TfmLearnTimeGrid.aDelLTGExecute(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить сетку "'
    , 'Удаление', MB_YESNO) = ID_YES
  then
  begin
    dmLTG.DelLTG(dmLTG.ibdsLTGID.Value);
    dmLTG.ibdsLTG.Close;
    dmLTG.ibdsLTG.Open;
  end;
end;

procedure TfmLearnTimeGrid.aCheckBtnExecute(Sender: TObject);
begin
  aEditLTG.Enabled := not dmLTG.ibdsLTG.IsEmpty;
  aDelLTG.Enabled := aEditLTG.Enabled;
  aSetupSubj.Enabled := aEditLTG.Enabled;
end;

procedure TfmLearnTimeGrid.dsLTGDataChange(Sender: TObject; Field: TField);
begin
  aCheckBtn.Execute;
end;

procedure TfmLearnTimeGrid.aSetupSubjExecute(Sender: TObject);
var
  id: integer;
begin
  fmEdLTGSubj := TfmEdLTGSubj.Create(Self, dmLTG.ibdsLTGID.Value);
  fmEdLTGSubj.ShowModal;
  fmEdLTGSubj.Release;
  dmLTG.ibdsLTGSubject.DisableControls;
  dmLTG.ibdsLTGSubject.Close;
  dmLTG.ibdsLTGSubject.Open;
  dmLTG.ibdsLTGSubject.EnableControls;
end;

procedure TfmLearnTimeGrid.dbgLTGRecordDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dmLTG.ibdsLTGSubjectSUBJ_CODE.Value = 1 then
    dbgLTGRecord.Canvas.Font.Color := clBlue
  else
    dbgLTGRecord.Canvas.Font.Color := clBlack;

  dbgLTGRecord.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmLearnTimeGrid.miWordClick(Sender: TObject);
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
  rep.AddText(DM.ibdsConstPASPORT_NAME.Value + '  ' + DM.ibdsFilialName.Value);
  rep.AddText('\tx14000\tab\b Лист \chpgn\par}');
  rep.ParSet(fArial, 12, [fstBold]);
  rep.AddPar('\line \qc' + dmLTG.ibdsLTGNAME.Value);

  rep.ParSetLongTableHead;


  rep.CreateMergeHeader(
    [P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8], P[9], P[10], P[11],
     P[14], P[17], P[19]], [0], []);
  rep.AddRow(['№', 'Классы ->', '0', '1', '2', '3', '4', '5', '6', '7', '8',
    'Всего часов', 'Нераспред. часов', 'Кол-во гр.']);

  rep.Complete2MergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[12], P[13], P[14], P[15], P[16], P[17], P[18], P[19]],
    [0], [17, 18], []);

  dmLTG.ibdsLTGReport.Close;
  dmLTG.ibdsLTGReport.ParamByName('LTG_ID').Value := dmLTG.ibdsLTGID.Value;
  dmLTG.ibdsLTGReport.Open;

  rep.AddRow(['', 'Кол-во уч-ся ->',
    dmLTG.ibdsLTGReportQ_0.AsString, dmLTG.ibdsLTGReportQ_1.AsString,
    dmLTG.ibdsLTGReportQ_2.AsString, dmLTG.ibdsLTGReportQ_3.AsString,
    dmLTG.ibdsLTGReportQ_4.AsString, dmLTG.ibdsLTGReportQ_5.AsString,
    dmLTG.ibdsLTGReportQ_6.AsString, dmLTG.ibdsLTGReportQ_7.AsString,
    dmLTG.ibdsLTGReportQ_8.AsString,
    dmLTG.ibdsLTGReportQ_ALL_Y.AsString, dmLTG.ibdsLTGReportQ_ALL_O.AsString,
    dmLTG.ibdsLTGReportQ_ALL_C.AsString, dmLTG.ibdsLTGReportQ_V_Y.AsString,
    dmLTG.ibdsLTGReportQ_V_O.AsString, dmLTG.ibdsLTGReportQ_V_C.AsString,
    'мл.', 'ст.']);
  rep.Complete2MergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[12], P[13], P[14], P[15], P[16], P[17], P[18], P[19]],
    [0, 17, 18],
    [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], []
  );

  dmLTG.ibdsLTGCurr.Close;
  dmLTG.ibdsLTGCurr.ParamByName('LTG_ID').Value := dmLTG.ibdsLTGID.Value;
  dmLTG.ibdsLTGCurr.Open;
  dmLTG.ibdsLTGCurr.First;
  dmLTG.ibdsCurrCat.Close;
  dmLTG.ibdsCurrCat.ParamByName('CURR_ID').Value := dmLTG.ibdsLTGCurrCURR_ID.Value;
  dmLTG.ibdsCurrCat.Open;
  dmLTG.ibdsCurrCat.First;

  rep.AddRow(['', 'Категория ->',
    dmLTG.ibdsCurrCatC_NAME_0.Value, dmLTG.ibdsCurrCatC_NAME_1.Value,
    dmLTG.ibdsCurrCatC_NAME_2.Value, dmLTG.ibdsCurrCatC_NAME_3.Value,
    dmLTG.ibdsCurrCatC_NAME_4.Value, dmLTG.ibdsCurrCatC_NAME_5.Value,
    dmLTG.ibdsCurrCatC_NAME_6.Value, dmLTG.ibdsCurrCatC_NAME_7.Value,
    dmLTG.ibdsCurrCatC_NAME_8.Value, 'мл.', 'ст.', 'конц.',
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

  dmLTG.ibdsLTGReportRecI.Close;
  dmLTG.ibdsLTGReportRecI.ParamByName('LTG_ID').Value := dmLTG.ibdsLTGID.Value;
  dmLTG.ibdsLTGReportRecI.Open;
  dmLTG.ibdsLTGReportRecI.First;

  dmLTG.ibdsLTGReportRecG.Close;
  dmLTG.ibdsLTGReportRecG.ParamByName('LTG_ID').Value := dmLTG.ibdsLTGID.Value;
  dmLTG.ibdsLTGReportRecG.Open;
  dmLTG.ibdsLTGReportRecG.First;

  i := 0;
  while not dmLTG.ibdsLTGReportRecI.Eof do
  begin
    inc(i);
    rep.AddRow(['\qr ' + IntToStr(i),
      '\ql ' + dmLTG.ibdsLTGReportRecISUBJECT_NAME.Value + '\par\qr Учащихся',
      dmLTG.ibdsLTGReportRecIGROUP_QTY.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_0.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_0.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_1.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_1.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_2.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_2.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_3.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_3.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_4.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_4.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_5.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_5.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_6.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_6.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_7.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_7.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_8.Value) + '\par ' + dmLTG.ibdsLTGReportRecIQTY_8.AsString,
      dFormat(dmLTG.ibdsLTGReportRecIT_ALL_Y.Value),
      dFormat(dmLTG.ibdsLTGReportRecIT_ALL_O.Value),
      dFormat(dmLTG.ibdsLTGReportRecIT_ALL_C.Value),
      dFormat(dmLTG.ibdsLTGReportRecIT_V_Y.Value),
      dFormat(dmLTG.ibdsLTGReportRecIT_V_O.Value),
      dFormat(dmLTG.ibdsLTGReportRecIT_V_C.Value),
      '',
      ''
    ]);
    dmLTG.ibdsLTGReportRecI.Next;
  end;
  
  while not dmLTG.ibdsLTGReportRecG.Eof do
  begin
    inc(i);
    rep.AddRow(['\qr ' + IntToStr(i),
      '\ql ' + dmLTG.ibdsLTGReportRecGSUBJECT_NAME.Value + '\par\qr Групп',
      dmLTG.ibdsLTGReportRecGGROUP_QTY.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_0.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_0.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_1.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_1.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_2.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_2.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_3.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_3.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_4.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_4.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_5.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_5.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_6.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_6.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_7.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_7.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_8.Value) + '\par ' + dmLTG.ibdsLTGReportRecGQTY_8.AsString,
      dFormat(dmLTG.ibdsLTGReportRecGT_ALL_Y.Value),
      dFormat(dmLTG.ibdsLTGReportRecGT_ALL_O.Value),
      dFormat(dmLTG.ibdsLTGReportRecGT_ALL_C.Value),
      dFormat(dmLTG.ibdsLTGReportRecGT_V_Y.Value),
      dFormat(dmLTG.ibdsLTGReportRecGT_V_O.Value),
      dFormat(dmLTG.ibdsLTGReportRecGT_V_C.Value),
      iFormat(dmLTG.ibdsLTGReportRecGG_QTY_Y.Value),
      iFormat(dmLTG.ibdsLTGReportRecGG_QTY_O.Value)
    ]);
    dmLTG.ibdsLTGReportRecG.Next;
  end;

  rep.CreateTable([P[2], P[3], P[4], P[5], P[6], P[7], P[8], P[9],
    P[10], P[11], P[12], P[13], P[14], P[15], P[16], P[17], P[18], P[19]], []);

  rep.AddRow([
    'Всего',
    dFormat(dmLTG.ibdsLTGReportT_0.Value),
    dFormat(dmLTG.ibdsLTGReportT_1.Value),
    dFormat(dmLTG.ibdsLTGReportT_2.Value),
    dFormat(dmLTG.ibdsLTGReportT_3.Value),
    dFormat(dmLTG.ibdsLTGReportT_4.Value),
    dFormat(dmLTG.ibdsLTGReportT_5.Value),
    dFormat(dmLTG.ibdsLTGReportT_6.Value),
    dFormat(dmLTG.ibdsLTGReportT_7.Value),
    dFormat(dmLTG.ibdsLTGReportT_8.Value),
    dFormat(dmLTG.ibdsLTGReportT_A_Y.Value),
    dFormat(dmLTG.ibdsLTGReportT_A_O.Value),
    dFormat(dmLTG.ibdsLTGReportT_A_C.Value),
    '', '', '',
    iFormat(dmLTG.ibdsLTGReportG_Y.Value),
    iFormat(dmLTG.ibdsLTGReportG_O.Value)
  ]);

  rep.AddRow([
    'Нерасперделённые часы',
    dFormat(dmLTG.ibdsLTGReportT_V_0.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_1.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_2.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_3.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_4.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_5.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_6.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_7.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_8.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_Y.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_O.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_C.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_Y.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_O.Value),
    dFormat(dmLTG.ibdsLTGReportT_V_C.Value),
    '', ''
  ]);


  rep.AddRow([
    'Итого',
    dFormat(dmLTG.ibdsLTGReportt_t_0.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_1.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_2.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_3.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_4.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_5.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_6.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_7.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_8.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_y.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_o.Value),
    dFormat(dmLTG.ibdsLTGReportt_t_c.Value),
    '', '', '', '', ''
  ]);
  rep.AddText('\pard ');
  rep.ParSet(fTimes, 12, [fstBold]);
  rep.AddPar('\line\line\line \qr Зам. директора по учебной работе                   Кулясова Н.В.');

  rep.SaveAndExecuteReport(Handle, 'Отчёт сетка учебных часов');
end;

procedure TfmLearnTimeGrid.miPrintParamsClick(Sender: TObject);
begin
  fmCurrRepParam := TfmCurrRepParam.Create(Self);
  fmCurrRepParam.ShowModal;
  fmCurrRepParam.Release;
end;

procedure TfmLearnTimeGrid.aPrintTotalTableExecute(Sender: TObject);
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
  ibqTotalTable.Close;
  ibqTotalTable.Open;
  frxReport.PrepareReport;
  frxReport.Export(frxRTFExport);
  ShellExecute(Handle, nil, PChar(FName), nil, nil, SW_RESTORE);
end;

end.
