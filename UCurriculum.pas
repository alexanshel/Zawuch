unit UCurriculum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, DB, DBGrids, DBCtrls, dbcgrids, Menus,
  AxCtrls, OleCtrls, VCF1, Buttons, RXDBCtrl, URTReport, ShellApi,
  IBCustomDataSet, IBQuery, IBSQL;

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
    Panel23: TPanel;
    pCat9: TPanel;
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
    ibdsCurriculumRecord: TIBDataSet;
    pYO9: TPanel;
    pC9: TPanel;
    pAll9: TPanel;
    ibqProc: TIBQuery;
    ibSQL: TIBSQL;
    ibdsCurriculumRecordID: TIntegerField;
    ibdsCurriculumRecordCURR_ID: TIntegerField;
    ibdsCurriculumRecordNUM: TIntegerField;
    ibdsCurriculumRecordSUBJ_ID: TIntegerField;
    ibdsCurriculumRecordSUBJ_NAME: TIBStringField;
    ibdsCurriculumRecordGROUP_QTY: TSmallintField;
    ibdsCurriculumRecordCLOCK_0: TFloatField;
    ibdsCurriculumRecordCLOCK_1: TFloatField;
    ibdsCurriculumRecordCLOCK_2: TFloatField;
    ibdsCurriculumRecordCLOCK_3: TFloatField;
    ibdsCurriculumRecordCLOCK_4: TFloatField;
    ibdsCurriculumRecordCLOCK_5: TFloatField;
    ibdsCurriculumRecordCLOCK_6: TFloatField;
    ibdsCurriculumRecordCLOCK_7: TFloatField;
    ibdsCurriculumRecordCLOCK_8: TFloatField;
    ibdsCurriculumRecordCLOCK_9: TFloatField;
    ibdsCurriculumRecordYT: TFloatField;
    ibdsCurriculumRecordOT: TFloatField;
    ibdsCurriculumRecordCT: TFloatField;
    ibdsCurriculumRecordSUBJ_CODE: TIntegerField;
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

    function AddCurriculum(
      ID: Integer;
      Name: String;
      Period: Integer;
      PeriodForPrint: String
    ): Integer;
    function AddCurrRec(ID, CurrID, SubjID, Group: Integer; Position: Variant): Integer;

    procedure AddCurriculumCat(CurrID, ClassNum: Integer;  Category: Variant);
    procedure AddCurrRecTime(CurrID, CurrRecID, ClassNum: Integer; CTime: Variant);
    procedure DelCurriculum(ID: Integer);
    procedure DelCurrRec(ID: Integer; CurrID: Integer);
  public
    { Public declarations }
    InChoiceMode: boolean;
  end;

var
  fmCurriculum: TfmCurriculum;
const
  MAX_CLASS_QTY: Integer = 9;

implementation

uses UDM, UEdCurr, UEdCurrRec, UCurrParam, StrUtils;

{$R *.dfm}

//------------------------------------------------------------------------------
// CRUD
//------------------------------------------------------------------------------
function TfmCurriculum.AddCurriculum(
  ID: Integer;
  Name: String;
  Period: Integer;
  PeriodForPrint: String
): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_CURRICULUM(' +
    ':ID, :Name, :Period, :PeriodForPrint)');
  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsString := Name;
  ibqProc.Params[2].AsInteger := Period;
  ibqProc.Params[3].AsString := IfThen(PeriodForPrint = '', IntToStr(Period), PeriodForPrint);
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TfmCurriculum.AddCurrRec(ID, CurrID, SubjID, Group: Integer; Position: Variant): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_CURR_REC(' +
    ':curr_id, :id, :subj_id, :group_qty, :pos)');
  ibqProc.Params[0].AsInteger := CurrID;
  ibqProc.Params[1].AsInteger := ID;
  ibqProc.Params[2].AsInteger := SubjID;
  ibqProc.Params[3].AsInteger := Group;
  ibqProc.Params[4].Value := Position;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmCurriculum.AddCurriculumCat(CurrID, ClassNum: Integer;
  Category: Variant);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_CURR_CAT(:curr_id, :class_num,' +
  ' :cat)');

  ibqProc.Params[0].AsInteger := CurrID;
  ibqProc.Params[1].AsInteger := ClassNum;
  ibqProc.Params[2].Value := Category;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmCurriculum.AddCurrRecTime(CurrID, CurrRecID, ClassNum: Integer;
  CTime: Variant);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_CURR_REC_TIME(' +
    ' :curr_id, :curr_rec_id, :class_num, :c_time)');

  ibqProc.Params[0].AsInteger := CurrID;
  ibqProc.Params[1].AsInteger := CurrRecID;
  ibqProc.Params[2].AsInteger := ClassNum;
  ibqProc.Params[3].Value := CTime;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmCurriculum.DelCurriculum(ID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_CURRICULUM(:P1)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.ExecSQL;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmCurriculum.DelCurrRec(ID: Integer; CurrID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_CURRICULUM_RECORD(' +
    ':P1, :P2)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := CurrID;
  ibqProc.ExecSQL;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;


//------------------------------------------------------------------------------
// END CRUD
//------------------------------------------------------------------------------

procedure TfmCurriculum.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCurriculum.FormCreate(Sender: TObject);
begin
  dsCurr.DataSet := ibdsCurriculum;
  ibdsCurriculumRecord.Close;
  CurrRecSQL := ibdsCurriculumRecord.SelectSQL;
  ibdsCurriculumRecord.DataSource := dsCurr;
  ibdsCurriculumRecord.Open;
  dsCurrRec.DataSet := ibdsCurriculumRecord;
  CheckBtn;
  InChoiceMode := false;
  Resize;
end;

procedure TfmCurriculum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibdsCurriculumRecord.Close;
  ibdsCurriculumRecord.DataSource := nil;
  ibdsCurriculumRecord.SelectSQL := CurrRecSQL;
  ibdsCurriculumRecord.Open;
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
  for i := 0 to MAX_CLASS_QTY do
    (fmEdCurr.FindComponent('rgCat' + IntToStr(i)) as TRadioGroup).Enabled := true;
  if fmEdCurr.ShowModal = mrOK then
  begin
    id := AddCurriculum(
      0,
      fmEdCurr.edName.Text,
      fmEdCurr.cbPeriod.ItemIndex + 1,
      fmEdCurr.edPeriodForPrint.Text
    );
    for i := 0 to MAX_CLASS_QTY do
      AddCurriculumCat(
        id,
        i,
        Preo((fmEdCurr.FindComponent('rgCat' + IntToStr(i)) as TRadioGroup).ItemIndex)
      );
    ibdsCurriculum.Close;
    ibdsCurriculum.Open;
    ibdsCurriculum.Locate('ID', VarArrayOf([id]), []);
    CheckBtn;
  end;
  fmEdCurr.Release;
  Calc;
end;

procedure TfmCurriculum.btnEditCurrClick(Sender: TObject);
var
  i: Integer;
  field: TField;
  radioGroup: TRadioGroup;
  function P(i: Integer): Variant;
  begin
    case i of
    0: Result := Null;
    1: Result := 0;
    2: Result := 1;
    end;
  end;
begin
  if ibdsCurriculum.IsEmpty then Exit;
  fmEdCurr := TfmEdCurr.Create(Self);

  for i := 0 to MAX_CLASS_QTY do
  begin
    radioGroup := fmEdCurr.FindComponent('rgCat' + IntToStr(i)) as TRadioGroup;
    field := ibdsCurriculum.FieldByName('CAT_' + IntToStr(i));
    if field.IsNull then
      radioGroup.ItemIndex := 0
    else
      radioGroup.ItemIndex := field.AsInteger + 1;
  end;

  fmEdCurr.cbPeriod.ItemIndex := ibdsCurriculumPeriod.Value - 1;
  fmEdCurr.edPeriodForPrint.Text := ibdsCurriculumPERIOD_FOR_PRINT.Value;
  fmEdCurr.edName.Text := ibdsCurriculumName.Value;
  if fmEdCurr.ShowModal = mrOK then
  begin
    AddCurriculum(
      ibdsCurriculumID.Value,
      fmEdCurr.edName.Text,
      fmEdCurr.cbPeriod.ItemIndex + 1,
      fmEdCurr.edPeriodForPrint.Text
    );
    for i := 0 to MAX_CLASS_QTY do
    begin
      radioGroup := fmEdCurr.FindComponent('rgCat' + IntToStr(i)) as TRadioGroup;
      if radioGroup.Tag = 1 then
        AddCurriculumCat(
          ibdsCurriculumID.Value,
          i,
          P(radioGroup.ItemIndex)
        );
    end;
    ibdsCurriculum.Refresh;
  end;
  ibdsCurriculumRecord.Close;
  ibdsCurriculumRecord.Open;
  fmEdCurr.Release;
  Calc;
end;

procedure TfmCurriculum.CheckBtn;
begin
  btnDelCurr.Enabled := ibdsCurriculum.RecordCount <> 0;
  btnEditCurr.Enabled := btnDelCurr.Enabled;
  btnAddSubj.Enabled := btnDelCurr.Enabled;

  btnDelSubj.Enabled := ibdsCurriculumRecord.RecordCount <> 0;
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
  for i := 0 to MAX_CLASS_QTY do
  begin
    if not ibdsCurriculum.FieldByName('CAT_' + IntToStr(i)).IsNull then
      (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled := true;
    (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text := '0,00';
  end;

  if fmEdCurrRec.ShowModal = mrOk then
  begin
    if fmEdCurrRec.cbPos.Checked then
      id := AddCurrRec(0, ibdsCurriculumID.Value,
        fmEdCurrRec.SubjectID, StrToInt(fmEdCurrRec.cbGroup.Text),
        ibdsCurriculumRecordNum.Value)
    else
      id := AddCurrRec(
        0,
        ibdsCurriculumID.Value,
        fmEdCurrRec.SubjectID,
        StrToInt(fmEdCurrRec.cbGroup.Text),
        null
      );
    for i := 0 to MAX_CLASS_QTY do
    begin
      if (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled then
        AddCurrRecTime(
          ibdsCurriculumID.Value,
          id,
          i,
          T2V((fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text)
        );
    end;
    ibdsCurriculumRecord.Close;
    ibdsCurriculumRecord.Open;
    ibdsCurriculumRecord.Locate('ID', VarArrayOf([id]), []);
    ibdsCurriculum.Refresh;
    CheckBtn;
  end;
  fmEdCurrRec.Release;
  Calc;
end;

procedure TfmCurriculum.dbgCurrRecDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ibdsCurriculumRecordSUBJ_CODE.Value = 1 then
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
  if ibdsCurriculumRecord.IsEmpty then Exit;
  fmEdCurrRec := TfmEdCurrRec.Create(Self);
  fmEdCurrRec.SubjectID := ibdsCurriculumRecordSUBJ_ID.Value;
  fmEdCurrRec.edSubject.Text := ibdsCurriculumRecordSUBJ_NAME.Value;
  fmEdCurrRec.cbGroup.Text := ibdsCurriculumRecordGROUP_QTY.AsString;
  fmEdCurrRec.cbPos.Visible := false;

  for i := 0 to MAX_CLASS_QTY do
  begin
    (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text :=
      Format('%.2f', [ibdsCurriculumRecord.FieldByName('CLOCK' + IntToStr(i)).AsFloat]);
    if not ibdsCurriculum.FieldByName('CAT_' + IntToStr(i)).IsNull then
      (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled := true;
  end;

  if fmEdCurrRec.ShowModal = mrOk then
  begin
    AddCurrRec(
      ibdsCurriculumRecordID.Value,
      ibdsCurriculumID.Value,
      fmEdCurrRec.SubjectID,
      StrToInt(fmEdCurrRec.cbGroup.Text),
      null
    );
    for i := 0 to MAX_CLASS_QTY do
    begin
      if (fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Enabled and
        ((fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Tag = 1) then
        AddCurrRecTime(
          ibdsCurriculumID.Value,
          ibdsCurriculumRecordID.Value,
          i,
          T2V((fmEdCurrRec.FindComponent('cbT' + IntToStr(i)) as TComboBox).Text)
        );
    end;
    ibdsCurriculumRecord.Refresh;
    ibdsCurriculum.Refresh;
  end;
  fmEdCurrRec.Release;
  Calc;
end;

procedure TfmCurriculum.btnDelSubjClick(Sender: TObject);
begin
  if ibdsCurriculumRecord.IsEmpty then Exit;

  if MessageDlg('Вы действительно ходите удалить предмет' + #13 + #10 +
    ibdsCurriculumRecordSUBJ_NAME.Value,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DelCurrRec(ibdsCurriculumRecordID.Value, ibdsCurriculumID.Value);
    ibdsCurriculumRecord.Close;
    ibdsCurriculumRecord.Open;
  end;
  ibdsCurriculum.Refresh;
  Calc;
end;

procedure TfmCurriculum.btnDelCurrClick(Sender: TObject);
begin
  if ibdsCurriculum.IsEmpty then Exit;
  if MessageDlg('Вы действительно хотите удалить учебный план "' +
    ibdsCurriculumName.Value + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DelCurriculum(ibdsCurriculumID.Value);
    ibdsCurriculum.Close;
    ibdsCurriculum.Open;
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
  field: TField;
  sIdx: String;
  panel: TPanel;
begin
  if ibdsCurriculum.RecordCount <> 0 then
  begin

    //заполняем категории
    for i := 0 to MAX_CLASS_QTY do
    begin
      sIdx := IntToStr(i);
      field := ibdsCurriculum.FieldByName('CAT_' + sIdx);
      panel := FindComponent('pCat' + sIdx) as TPanel;
      if field.IsNull then
        panel.Caption := ''
      else
      begin
        panel.Caption := v[field.AsInteger];
        panel.Font.Color := col[field.AsInteger];
      end;
    end;
    //for i := i to 8 do (Components[i + 21] as TPanel).Caption := '';

    ibSQL.Close;
    ibSQL.SQL.Clear;
    ibSQL.SQL.Append('select * from v_curriculum_sum where id = :id');
    //ibSQL.Params. ibdsCurriculumID.AsString
    ibSQL.ExecQuery;
    pGr.Caption := ibSQL.Fields[0].AsString;
    pGrC.Caption := ibSQL.Fields[1].AsString;
    PGrAll.Caption := ibSQL.Fields[2].AsString;

    for i := 0 to MAX_CLASS_QTY do
      (Components[i + 38 - 4] as TPanel).Caption :=
        Format('%.2f', [ibSQL.Fields[i + 3].AsDouble]);

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
  LocateReportParam('Curriculum', #5#30#7#15#15#15#15#15#15#15#15#15#15#15#15);

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
  rep.AddPar('\qc ' + ibdsCurriculumNAME.Value);

  rep.ParSet12Arial;

  rep.CreateMergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[14], P[15]], [0], []);
  rep.AddRow(['\qc №', '\ql Класс ->', '\qc 0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
    'Всего']);

  rep.Complete2MergeHeader([P[0], P[2], P[3], P[4], P[5], P[6], P[7], P[8],
    P[9], P[10], P[11], P[12], P[13], P[14]], [0],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], []);
  rep.AddRow(['', '\ql Категория ->', '\qc ' +
    Cat(ibdsCurriculumCAT_0.AsVariant), Cat(ibdsCurriculumCAT_0.AsVariant),
    Cat(ibdsCurriculumCAT_0.AsVariant), Cat(ibdsCurriculumCAT_0.AsVariant),
    Cat(ibdsCurriculumCAT_0.AsVariant), Cat(ibdsCurriculumCAT_0.AsVariant),
    Cat(ibdsCurriculumCAT_0.AsVariant), Cat(ibdsCurriculumCAT_0.AsVariant),
    Cat(ibdsCurriculumCAT_0.AsVariant), 'мл.', 'ст.', 'конц.']);

  rep.CompleteMergeHeader(P, [0, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], []);
  rep.AddRow(['', '\ql Предмет', 'Гр.', '', '', '', '', '', '', '', '', '', '', '', '']);
  rep.CreateTable(P, []);
  rep.ParSet12Times;

  BM := ibdsCurriculumRecord.GetBookmark;
  ibdsCurriculumRecord.DisableControls;
  ibdsCurriculumRecord.First;
  i := 0;

  while not ibdsCurriculumRecord.Eof do
  begin
    inc(i);
    rep.AddRow(['\qc ' + IntToStr(i),
      '\ql ' + ibdsCurriculumRecordSUBJ_NAME.Value,
      '\qc ' + ibdsCurriculumRecordGROUP_QTY.AsString,
      '\qr ' +
      dFormat(ibdsCurriculumRecordCLOCK_0.Value),
      dFormat(ibdsCurriculumRecordCLOCK_1.Value),
      dFormat(ibdsCurriculumRecordCLOCK_2.Value),
      dFormat(ibdsCurriculumRecordCLOCK_3.Value),
      dFormat(ibdsCurriculumRecordCLOCK_4.Value),
      dFormat(ibdsCurriculumRecordCLOCK_5.Value),
      dFormat(ibdsCurriculumRecordCLOCK_6.Value),
      dFormat(ibdsCurriculumRecordCLOCK_7.Value),
      dFormat(ibdsCurriculumRecordCLOCK_8.Value),
      dFormat(ibdsCurriculumRecordCLOCK_9.Value),
      dFormat(ibdsCurriculumRecordYT.Value),
      dFormat(ibdsCurriculumRecordOT.Value),
      dFormat(ibdsCurriculumRecordCT.Value)]);
    ibdsCurriculumRecord.Next;
  end;

  ibSQL.Close;
  ibSQL.SQL.Clear;
  ibSQL.SQL.Append('SELECT * FROM CURR_SUM(' + DM.ibdsCurriculumID.AsString + ');');
  ibSQL.ExecQuery;

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
    for i := 2 to 11 do
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
