unit UCurriculum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, DB, DBGrids, DBCtrls, dbcgrids, Menus,
  AxCtrls, OleCtrls, VCF1, Buttons, RXDBCtrl, URTReport, ShellApi;

type
  TfmCurriculum = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    miExit: TMenuItem;
    Panel2: TPanel;
    dsCurr: TDataSource;
    dsCurrRec: TDataSource;
    Panel7: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
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
    Panel18: TPanel;
    Panel19: TPanel;
    pCat0: TPanel;
    pCat1: TPanel;
    pCat2: TPanel;
    pCat3: TPanel;
    pCat4: TPanel;
    pCat5: TPanel;
    pCat6: TPanel;
    pCat7: TPanel;
    pCat8: TPanel;
    Panel20: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    pGr: TPanel;
    pYO0: TPanel;
    pYO1: TPanel;
    pYO2: TPanel;
    pYO3: TPanel;
    pYO4: TPanel;
    pYO5: TPanel;
    pYO6: TPanel;
    pYO7: TPanel;
    pYO8: TPanel;
    pSumY: TPanel;
    pSumO: TPanel;
    Panel48: TPanel;
    Panel5: TPanel;
    pGrC: TPanel;
    pC0: TPanel;
    pC1: TPanel;
    pC2: TPanel;
    pC3: TPanel;
    pC4: TPanel;
    pC5: TPanel;
    pC6: TPanel;
    pC7: TPanel;
    pC8: TPanel;
    pSumC: TPanel;
    Panel47: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    PGrAll: TPanel;
    pAll0: TPanel;
    pAll1: TPanel;
    pAll2: TPanel;
    pAll3: TPanel;
    pAll4: TPanel;
    pAll5: TPanel;
    pAll6: TPanel;
    pAll7: TPanel;
    pAll8: TPanel;
    Panel63: TPanel;
    Panel21: TPanel;
    Panel6: TPanel;
    btnAddCurr: TSpeedButton;
    btnEditCurr: TSpeedButton;
    btnDelCurr: TSpeedButton;
    GroupBox1: TGroupBox;
    btnAddSubj: TButton;
    btnEditSubj: TButton;
    btnDelSubj: TButton;
    dbgCurrRec: TRxDBGrid;
    dbgCurr: TRxDBGrid;
    N1: TMenuItem;
    miWord: TMenuItem;
    miParam: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    miAddCurr: TMenuItem;
    miEditCurr: TMenuItem;
    miDelCurr: TMenuItem;
    miAddCurrRec: TMenuItem;
    miEditCurrRec: TMenuItem;
    miDelCurrRec: TMenuItem;
    miHelp: TMenuItem;
    Panel22: TPanel;
    btnCurMoveDown: TSpeedButton;
    btnCurMoveUp: TSpeedButton;
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddCurrClick(Sender: TObject);
    procedure btnEditCurrClick(Sender: TObject);
    procedure btnAddSubjClick(Sender: TObject);
    procedure dbgCurrRecDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEditSubjClick(Sender: TObject);
    procedure btnDelSubjClick(Sender: TObject);
    procedure btnDelCurrClick(Sender: TObject);
    procedure dsCurrDataChange(Sender: TObject; Field: TField);
    procedure dbgCurrRecKeyPress(Sender: TObject; var Key: Char);
    procedure miWordClick(Sender: TObject);
    procedure miParamClick(Sender: TObject);
    procedure dbgCurrKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCurrDblClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
    procedure btnCurMoveUpClick(Sender: TObject);
    procedure btnCurMoveDownClick(Sender: TObject);
  private
    { Private declarations }
    CurrRecSQL: TStrings;
    procedure CheckBtn;
    procedure Calc;
    procedure Resize;
  public
    { Public declarations }
    InChoiceMode: boolean;
  end;

var
  fmCurriculum: TfmCurriculum;

implementation

uses UDM, UEdCurr, UEdCurrRec, IBSQL, UCurrParam;

{$R *.dfm}

procedure TfmCurriculum.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCurriculum.FormCreate(Sender: TObject);
begin
  dsCurr.DataSet := DM.ibdsCurriculum;
  DM.ibdsCurriculumRecord.Close;
  CurrRecSQL := DM.ibdsCurriculumRecord.SelectSQL;
  DM.ibdsCurriculumRecord.DataSource := dsCurr;
  DM.ibdsCurriculumRecord.Open;
  dsCurrRec.DataSet := DM.ibdsCurriculumRecord;
  CheckBtn;
  InChoiceMode := false;
  Resize;
end;

procedure TfmCurriculum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.ibdsCurriculumRecord.Close;
  DM.ibdsCurriculumRecord.DataSource := nil;
  DM.ibdsCurriculumRecord.SelectSQL := CurrRecSQL;
  DM.ibdsCurriculumRecord.Open;
  dsCurr.DataSet := nil;
end;

procedure TfmCurriculum.btnAddCurrClick(Sender: TObject);
var
  id, i: Integer;
  function Preo(i: Integer): Variant;
  begin
    case i of
      0: Result := Null;
      1: Result := 0;
      2: Result := 1;
    end;
  end;
begin
  fmEdCurr := TfmEdCurr.Create(Self);
  for i := 0 to 8 do
    (fmEdCurr.Components[i + 6] as TRadioGroup).Enabled := true;
  if fmEdCurr.ShowModal = mrOK then
  begin
    id := DM.AddCurriculum(0, fmEdCurr.edName.Text, fmEdCurr.cbPeriod.ItemIndex + 1);
    DM.AddCurriculumCat(id, 0, Preo(fmEdCurr.rgCat0.ItemIndex));
    DM.AddCurriculumCat(id, 1, Preo(fmEdCurr.rgCat1.ItemIndex));
    DM.AddCurriculumCat(id, 2, Preo(fmEdCurr.rgCat2.ItemIndex));
    DM.AddCurriculumCat(id, 3, Preo(fmEdCurr.rgCat3.ItemIndex));
    DM.AddCurriculumCat(id, 4, Preo(fmEdCurr.rgCat4.ItemIndex));
    DM.AddCurriculumCat(id, 5, Preo(fmEdCurr.rgCat5.ItemIndex));
    DM.AddCurriculumCat(id, 6, Preo(fmEdCurr.rgCat3.ItemIndex));
    DM.AddCurriculumCat(id, 7, Preo(fmEdCurr.rgCat7.ItemIndex));
    DM.AddCurriculumCat(id, 8, Preo(fmEdCurr.rgCat8.ItemIndex));
    DM.ibdsCurriculum.Close;
    DM.ibdsCurriculum.Open;
    DM.ibdsCurriculum.Locate('ID', VarArrayOf([id]), []);
    CheckBtn;
  end;
  fmEdCurr.Release;
  Calc;
end;

procedure TfmCurriculum.btnEditCurrClick(Sender: TObject);
var
  i: Integer;
  function P(i: Integer): Variant;
  begin
    case i of
    0: Result := Null;
    1: Result := 0;
    2: Result := 1;
    end;
  end;
begin
  if DM.ibdsCurriculum.IsEmpty then Exit;
  fmEdCurr := TfmEdCurr.Create(Self);

  for i := 6 to 7 + 7 do
  begin
    //(fmEdCurr.Components[i] as TRadioGroup).Enabled := true;
    if DM.ibdsCurriculum.Fields[i - 3].IsNull then
      (fmEdCurr.Components[i] as TRadioGroup).ItemIndex := 0
    else
      (fmEdCurr.Components[i] as TRadioGroup).ItemIndex :=
        DM.ibdsCurriculum.Fields[i - 3].AsInteger + 1;
  end;

  fmEdCurr.cbPeriod.ItemIndex := DM.ibdsCurriculumPeriod.Value - 1;
  fmEdCurr.edName.Text := DM.ibdsCurriculumName.Value;
  if fmEdCurr.ShowModal = mrOK then
  begin
    DM.AddCurriculum(DM.ibdsCurriculumID.Value,
      fmEdCurr.edName.Text, fmEdCurr.cbPeriod.ItemIndex + 1);
    for i := 6 to 7 + 7 do
    begin
      if (fmEdCurr.Components[i] as TRadioGroup).Tag = 1 then
        DM.AddCurriculumCat(DM.ibdsCurriculumID.Value, i - 6,
          P((fmEdCurr.Components[i] as TRadioGroup).ItemIndex));
    end;
    DM.ibdsCurriculum.Refresh;
  end;
  DM.ibdsCurriculumRecord.Close;
  DM.ibdsCurriculumRecord.Open;
  fmEdCurr.Release;
  Calc;
end;

procedure TfmCurriculum.CheckBtn;
begin
  btnDelCurr.Enabled := DM.ibdsCurriculum.RecordCount <> 0;
  btnEditCurr.Enabled := btnDelCurr.Enabled;
  btnAddSubj.Enabled := btnDelCurr.Enabled;

  btnDelSubj.Enabled := DM.ibdsCurriculumRecord.RecordCount <> 0;
  btnEditSubj.Enabled := btnDelSubj.Enabled;
end;

procedure TfmCurriculum.btnAddSubjClick(Sender: TObject);
var
  id, i: Integer;
  function T2V(T: string): Variant;
  begin
    Result := StrToFloatDef(T, 0);
    if Result = 0 then Result := Null;
  end;
begin
  fmEdCurrRec := TfmEdCurrRec.Create(Self);
  for i := 0 to 8 do
  begin
    if not DM.ibdsCurriculum.Fields[i + 3].IsNull then
      (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled := true;
    (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text := '0,00';
  end;

  if fmEdCurrRec.ShowModal = mrOk then
  begin
    if fmEdCurrRec.cbPos.Checked then
      id := DM.AddCurrRec(0, DM.ibdsCurriculumID.Value,
        fmEdCurrRec.SubjectID, StrToInt(fmEdCurrRec.cbGroup.Text),
        DM.ibdsCurriculumRecordNum.Value)
    else
      id := DM.AddCurrRec(0, DM.ibdsCurriculumID.Value,
        fmEdCurrRec.SubjectID, StrToInt(fmEdCurrRec.cbGroup.Text), null);
    for i := 0 to 8 do
    begin
      if (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled then
        DM.AddCurrRecTime(DM.ibdsCurriculumID.Value, id,
          i, T2V((fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text));
    end;
    DM.ibdsCurriculumRecord.Close;
    DM.ibdsCurriculumRecord.Open;
    DM.ibdsCurriculumRecord.Locate('ID', VarArrayOf([id]), []);
    DM.ibdsCurriculum.Refresh;
    CheckBtn;
  end;
  fmEdCurrRec.Release;
  Calc;
end;

procedure TfmCurriculum.dbgCurrRecDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.ibdsCurriculumRecordSubjCode.Value = 1 then
    dbgCurrRec.Canvas.Font.Color := clBlue
  else
    dbgCurrRec.Canvas.Font.Color := clBlack;
  if Column.Field.AsString = '0' then
    dbgCurrRec.Canvas.Font.Color := dbgCurrRec.Canvas.Brush.Color;
  dbgCurrRec.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmCurriculum.btnEditSubjClick(Sender: TObject);
var
  i: Integer;
  function T2V(T: string): Variant;
  begin
    Result := StrToFloatDef(T, 0);
    if Result = 0 then Result := Null;
  end;

begin
  if DM.ibdsCurriculumRecord.IsEmpty then Exit;
  fmEdCurrRec := TfmEdCurrRec.Create(Self);
  fmEdCurrRec.SubjectID := DM.ibdsCurriculumRecordSubjectID.Value;
  fmEdCurrRec.edSubject.Text := DM.ibdsCurriculumRecordSubjName.Value;
  fmEdCurrRec.cbGroup.Text := DM.ibdsCurriculumRecordGroup.AsString;
  fmEdCurrRec.cbPos.Visible := false;

  for i := 0 to 8 do
  begin
    (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text :=
      Format('%.2f', [DM.ibdsCurriculumRecord.FieldByName('Time' + IntToStr(i)).AsFloat]);
    if not DM.ibdsCurriculum.FieldByName('CAT_' + IntToStr(i)).IsNull then
      (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled := true;
  end;

  if fmEdCurrRec.ShowModal = mrOk then
  begin
    DM.AddCurrRec(DM.ibdsCurriculumRecordID.Value, DM.ibdsCurriculumID.Value,
      fmEdCurrRec.SubjectID, StrToInt(fmEdCurrRec.cbGroup.Text), null);
    for i := 0 to 8 do
    begin
      if (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled and
        ((fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Tag = 1) then
        DM.AddCurrRecTime(DM.ibdsCurriculumID.Value, DM.ibdsCurriculumRecordID.Value,
          i, T2V((fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text));
    end;
    DM.ibdsCurriculumRecord.Refresh;
    DM.ibdsCurriculum.Refresh;
  end;
  fmEdCurrRec.Release;
  Calc;
end;

procedure TfmCurriculum.btnDelSubjClick(Sender: TObject);
begin
  if DM.ibdsCurriculumRecord.IsEmpty then Exit;

  if MessageDlg('Вы действительно ходите удалить предмет' + #13 + #10 +
    DM.ibdsCurriculumRecordSubjName.Value,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelCurrRec(DM.ibdsCurriculumRecordID.Value, DM.ibdsCurriculumID.Value);
    DM.ibdsCurriculumRecord.Close;
    DM.ibdsCurriculumRecord.Open;
  end;
  DM.ibdsCurriculum.Refresh;
  Calc;
end;

procedure TfmCurriculum.btnDelCurrClick(Sender: TObject);
begin
  if DM.ibdsCurriculum.IsEmpty then Exit;
  if MessageDlg('Вы действительно хотите удалить учебный план "' +
    DM.ibdsCurriculumName.Value + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelCurriculum(DM.ibdsCurriculumID.Value);
    DM.ibdsCurriculum.Close;
    DM.ibdsCurriculum.Open;
  end;
  Calc;
end;

procedure TfmCurriculum.Calc;
const
  v: array[0..1] of string = ('мл.', 'ст.');
  col: array[0..1] of TColor = (clGreen, clRed);
var
  i: Integer;
  c: double;
begin
  if DM.ibdsCurriculum.RecordCount <> 0 then
  begin

    //заполняем категории
    for i := 0 to 8 do
    begin
      if DM.ibdsCurriculum.Fields[i + 3].IsNull then
        (Components[i + 17] as TPanel).Caption := ''
      else
      begin
        (Components[i + 17] as TPanel).Caption := v[DM.ibdsCurriculum.Fields[i + 3].AsInteger];
        (Components[i + 17] as TPanel).Font.Color := col[DM.ibdsCurriculum.Fields[i + 3].AsInteger];
      end;
    end;
    //for i := i to 8 do (Components[i + 21] as TPanel).Caption := '';

    DM.ibSQL.Close;
    DM.ibSQL.SQL.Clear;
    DM.ibSQL.SQL.Append('SELECT * FROM CURR_SUM(' + DM.ibdsCurriculumID.AsString + ');');
    DM.ibSQL.ExecQuery;
    pGr.Caption := DM.ibSQL.Fields[0].AsString;
    pGrC.Caption := DM.ibSQL.Fields[1].AsString;
    PGrAll.Caption := DM.ibSQL.Fields[2].AsString;

    for i := 0 to 8 do
      (Components[i + 38 - 4] as TPanel).Caption :=
        Format('%.2f', [DM.ibSQL.Fields[i + 3].AsDouble]);

    c := 0;
    for i := 0 to 8 do c := c + DM.ibSQL.Fields[i + 11].AsDouble;

    for i := 0 to 8 do
      (Components[i + 51 - 4] as TPanel).Caption :=
       Format('%.2f', [DM.ibSQL.Fields[i + 12].AsDouble]);

    for i := 0 to 8 do
      (Components[i + 65 - 4] as TPanel).Caption :=
      Format('%.2f', [DM.ibSQL.Fields[i + 21].AsDouble]);

    pSumY.Caption := Format('%.2f', [DM.ibSQL.Fields[30].AsDouble]);
    pSumO.Caption := Format('%.2f', [DM.ibSQL.Fields[31].AsDouble]);
    pSumC.Caption := Format('%.2f', [DM.ibSQL.Fields[32].AsDouble]);
  end;
end;

procedure TfmCurriculum.dsCurrDataChange(Sender: TObject; Field: TField);
begin
  Calc;
end;

procedure TfmCurriculum.dbgCurrRecKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then btnEditSubj.Click;
end;

procedure TfmCurriculum.miWordClick(Sender: TObject);
const FIELD_QTY = 15;
var
  rep: TRTReport;
  P: array[0 .. FIELD_QTY - 1] of Integer; //positions
  S: String[30];
  i: Integer;
  BM: TBookmark;
  function Cat(V: Variant): String;
  begin
    Result := 'ст.';
    if V = Null then Result := ''
    else
      if V = 0 then Result := 'мл.';
  end;
  function dFormat(Value: Double): String;
  begin
    if Value = 0 then Result := ''
    else Result := Format('%.2f', [Value]);
  end;
begin
  LocateReportParam('Curriculum', #5#30#7#15#15#15#15#15#15#15#15#15#15#15);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*57;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1]) * TWIPS_IN_MM;

  rep := TRTReport.Create('Curriculum');

  rep.AddText('\headery300 {\header ');  //верхний колонтитул
  rep.ParSet12Arial;
  rep.AddText(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddText('\tx14000\tab\b Лист \chpgn\par}');

  rep.AddPar('\qc ' + 'ТИПОВОЙ УЧЕБНЫЙ ПЛАН');
  rep.AddPar('\qc ' + DM.ibdsCurriculumNAME.Value);

  rep.ParSet12Arial;

  rep.CreateMergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[14]], [0], []);
  rep.AddRow(['\qc №', '\ql Класс ->', '\qc 0', '1', '2', '3', '4', '5', '6', '7', '8',
    'Всего']);

  rep.Complete2MergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[12], P[13], P[14]], [0],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], []);
  rep.AddRow(['', '\ql Категория ->', '\qc ' +
    Cat(DM.ibdsCurriculumCAT_0.AsVariant), Cat(DM.ibdsCurriculumCAT_0.AsVariant),
    Cat(DM.ibdsCurriculumCAT_0.AsVariant), Cat(DM.ibdsCurriculumCAT_0.AsVariant),
    Cat(DM.ibdsCurriculumCAT_0.AsVariant), Cat(DM.ibdsCurriculumCAT_0.AsVariant),
    Cat(DM.ibdsCurriculumCAT_0.AsVariant), Cat(DM.ibdsCurriculumCAT_0.AsVariant),
    Cat(DM.ibdsCurriculumCAT_0.AsVariant), 'мл.', 'ст.', 'конц.']);

  rep.CompleteMergeHeader(P, [0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], []);
  rep.AddRow(['', '\ql Предмет', 'Гр.', '', '', '', '', '', '', '', '', '', '', '', '']);
  rep.CreateTable(P, []);
  rep.ParSet12Times;

  BM := DM.ibdsCurriculumRecord.GetBookmark;
  DM.ibdsCurriculumRecord.DisableControls;
  DM.ibdsCurriculumRecord.First;
  i := 0;

  while not DM.ibdsCurriculumRecord.Eof do
  begin
    inc(i);
    rep.AddRow(['\qc ' + IntToStr(i),
      '\ql ' + DM.ibdsCurriculumRecordSubjName.Value,
      '\qc ' + DM.ibdsCurriculumRecordGroup.AsString,
      '\qr ' +
      dFormat(DM.ibdsCurriculumRecordTime0.Value),
      dFormat(DM.ibdsCurriculumRecordTime1.Value),
      dFormat(DM.ibdsCurriculumRecordTime2.Value),
      dFormat(DM.ibdsCurriculumRecordTime3.Value),
      dFormat(DM.ibdsCurriculumRecordTime4.Value),
      dFormat(DM.ibdsCurriculumRecordTime5.Value),
      dFormat(DM.ibdsCurriculumRecordTime6.Value),
      dFormat(DM.ibdsCurriculumRecordTime7.Value),
      dFormat(DM.ibdsCurriculumRecordTime8.Value),
      dFormat(DM.ibdsCurriculumRecordYT.Value),
      dFormat(DM.ibdsCurriculumRecordOT.Value),
      dFormat(DM.ibdsCurriculumRecordCT.Value)]);
    DM.ibdsCurriculumRecord.Next;
  end;

  DM.ibSQL.Close;
  DM.ibSQL.SQL.Clear;
  DM.ibSQL.SQL.Append('SELECT * FROM CURR_SUM(' + DM.ibdsCurriculumID.AsString + ');');
  DM.ibSQL.ExecQuery;

  rep.AddRow(['', '\ql ВСЕГО', '\qr',
    dFormat(DM.ibSQL.Fields[21].AsDouble),
    dFormat(DM.ibSQL.Fields[22].AsDouble),
    dFormat(DM.ibSQL.Fields[23].AsDouble),
    dFormat(DM.ibSQL.Fields[24].AsDouble),
    dFormat(DM.ibSQL.Fields[25].AsDouble),
    dFormat(DM.ibSQL.Fields[26].AsDouble),
    dFormat(DM.ibSQL.Fields[27].AsDouble),
    dFormat(DM.ibSQL.Fields[28].AsDouble),
    dFormat(DM.ibSQL.Fields[29].AsDouble),
    dFormat(DM.ibSQL.Fields[30].AsDouble),
    dFormat(DM.ibSQL.Fields[31].AsDouble),
    dFormat(DM.ibSQL.Fields[32].AsDouble)
  ]);

  DM.ibdsCurriculumRecord.GotoBookmark(BM);
  DM.ibdsCurriculumRecord.FreeBookmark(BM);
  DM.ibdsCurriculumRecord.EnableControls;

  rep.SaveAndExecuteReport(Handle, 'Учебный план');
end;

procedure TfmCurriculum.miParamClick(Sender: TObject);
begin
  fmCurrParam := TfmCurrParam.Create(Self);
  fmCurrParam.ShowModal;
  fmCurrParam.Release;
end;

procedure TfmCurriculum.dbgCurrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbgCurrDblClick(Sender);
end;

procedure TfmCurriculum.dbgCurrDblClick(Sender: TObject);
begin
  if InChoiceMode then Close
  else btnEditCurrClick(Sender);
end;

procedure TfmCurriculum.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 17);
end;

procedure TfmCurriculum.Resize;
var
  i: Integer;
begin
  with dbgCurrRec do
  begin
    Columns[0].Width := Panel9.Width - 1;
    Columns[1].Width := Panel10.Width - 1;
    for i := 2 to 10 do
      Columns[i].Width := pCat0.Width - 1;
    Columns[11].Width := Panel20.Width - 1;
    Columns[12].Width := Panel30.Width - 1;
    Columns[13].Width := Panel31.Width - 1;
  end;
end;

procedure TfmCurriculum.btnCurMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsCurriculumID.Value;
  dm.ChangePosition('"CURRICULUM"', Null, id, -1);
  dm.ibdsCurriculum.Close;
  dm.ibdsCurriculum.Open;
  dm.ibdsCurriculum.Locate('id', id, []);
end;

procedure TfmCurriculum.btnCurMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsCurriculumID.Value;
  dm.ChangePosition('"CURRICULUM"', Null, id, 1);
  dm.ibdsCurriculum.Close;
  dm.ibdsCurriculum.Open;
  dm.ibdsCurriculum.Locate('id', id, []);
end;

end.
