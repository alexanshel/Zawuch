unit UDepSpecCurr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, ExtCtrls, DBGrids, StdCtrls, Menus, Buttons, RXDBCtrl,
  RXSplit, Placemnt, URTReport, ImgList, ActnList, XPStyleActnCtrls,
  ActnMan, frxClass, frxDBSet, IBCustomDataSet, JvExDBGrids, JvDBGrid,
  IBQuery;

type
  TfmDepSpec = class(TForm)
    dsDepartment: TDataSource;
    dsSpecialization: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    miAddDep: TMenuItem;
    miEditDep: TMenuItem;
    miDelDep: TMenuItem;
    N5: TMenuItem;
    miAddSpec: TMenuItem;
    miEditSpec: TMenuItem;
    miDelSpec: TMenuItem;
    N9: TMenuItem;
    miCurr: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    miHelp: TMenuItem;
    RxSplitter1: TRxSplitter;
    GroupBox1: TGroupBox;
    dbgDepartment: TRxDBGrid;
    GroupBox2: TGroupBox;
    dbgSpecialization: TRxDBGrid;
    Panel1: TPanel;
    btnAddDep: TSpeedButton;
    btnEditDep: TSpeedButton;
    btnDelDep: TSpeedButton;
    btnCurr: TSpeedButton;
    Panel2: TPanel;
    btnDelSpec: TSpeedButton;
    btnEditSpec: TSpeedButton;
    btnAddSpec: TSpeedButton;
    FormStorage1: TFormStorage;
    N2: TMenuItem;
    miDepPrint: TMenuItem;
    miSpecPrint: TMenuItem;
    miDepSpecPrint: TMenuItem;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    ActionManager: TActionManager;
    aAddDept: TAction;
    aEditDept: TAction;
    aDelDept: TAction;
    aAddSpec: TAction;
    aEditSpec: TAction;
    aDelSpec: TAction;
    IBDataSet1: TIBDataSet;
    Panel3: TPanel;
    btnDepMoveDown: TSpeedButton;
    btnDepMoveUp: TSpeedButton;
    Panel4: TPanel;
    btnSpecMoveDown: TSpeedButton;
    btnSpecMoveUp: TSpeedButton;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    dbgCurr: TJvDBGrid;
    dsCurr: TDataSource;
    aCurrAdd: TAction;
    aCurrEdit: TAction;
    aCurrDel: TAction;
    Panel7: TPanel;
    btnCurrMoveUp: TSpeedButton;
    btnCurrMoveDown: TSpeedButton;
    ibdsCurriculum: TIBDataSet;
    ibdsCurriculumID: TIntegerField;
    ibdsCurriculumNAME: TIBStringField;
    ibdsCurriculumPERIOD_FOR_PRINT: TIBStringField;
    ibdsDepartment: TIBDataSet;
    ibdsDepartmentID: TIntegerField;
    ibdsDepartmentCode: TIntegerField;
    ibdsDepartmentName: TIBStringField;
    ibdsDepartmentInfo: TIBStringField;
    ibdsDepartmentCURR_ID: TIntegerField;
    ibdsDepartmentCurriculum: TIBStringField;
    ibdsDepartmentPeriod: TSmallintField;
    ibdsSpecialization: TIBDataSet;
    ibdsSpecializationID: TIntegerField;
    ibdsSpecializationDepartmentID: TIntegerField;
    ibdsSpecializationCode: TIntegerField;
    ibdsSpecializationName: TIBStringField;
    ibdsSpecializationBudget: TFloatField;
    ibdsSpecializationSelf_Repayment: TFloatField;
    ibdsSpecializationInfo: TIBStringField;
    ibqProc: TIBQuery;
    ibdsDepartmentIBDataSet: TIBDataSet;
    ibdsDepartmentIntegerField: TIntegerField;
    ibdsDepartmentIntegerField2: TIntegerField;
    ibdsDepartmentIBStringField: TIBStringField;
    ibdsDepartmentStringField: TStringField;
    ibdsDepartmentIBStringField2: TIBStringField;
    ibdsDepartmentIntegerField3: TIntegerField;
    ibdsDepartmentIBStringField3: TIBStringField;
    ibdsDepartmentSmallintField: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N9Click(Sender: TObject);
    procedure dsDepartmentDataChange(Sender: TObject; Field: TField);
    procedure btnCurrClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgDepartmentDblClick(Sender: TObject);
    procedure dbgDepartmentKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSpecializationDblClick(Sender: TObject);
    procedure dbgSpecializationKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
    procedure miDepPrintClick(Sender: TObject);
    procedure miSpecPrintClick(Sender: TObject);
    procedure miDepSpecPrintClick(Sender: TObject);
    procedure aAddDeptExecute(Sender: TObject);
    procedure aEditDeptExecute(Sender: TObject);
    procedure aDelDeptExecute(Sender: TObject);
    procedure aAddSpecExecute(Sender: TObject);
    procedure aEditSpecExecute(Sender: TObject);
    procedure aDelSpecExecute(Sender: TObject);
    procedure btnDepMoveUpClick(Sender: TObject);
    procedure btnDepMoveDownClick(Sender: TObject);
    procedure btnSpecMoveUpClick(Sender: TObject);
    procedure btnSpecMoveDownClick(Sender: TObject);
    procedure btnCurrMoveUpClick(Sender: TObject);
    procedure btnCurrMoveDownClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fSelectSql: String;
    procedure Check;
  public
    selectedSpecID:   Variant;
    selectedDepID:    Variant;
    selectedCurrID:   Variant;
    selectedSpecName: String;
    selectedDepName:  String;
    isLookupMode: boolean;
    procedure locate(specID, deptID, currID: Integer);
    // crud begin
    function AddDepartment(ID: Integer; Code:Integer; Name: String; YearQty: Integer; Info: String): Integer;
    procedure DelDepartment(ID: Integer);

    function AddSpecialization(ID:Integer; DepID: Integer; Code: Integer; Name: String;
      Budget: Currency; SelfRepayment: Currency; Info: String): Integer;
    procedure DelSpecialization(ID: Integer);

    procedure completeIds(var specID, depID, currID: Variant);
    // crud end
    { Public declarations }
  end;

var
  fmDepSpec: TfmDepSpec;

implementation

uses UDM, UEdDep, UEdSpec, UCurriculum, uDMImages, UEdCurr;

{$R *.dfm}

//- CRUD BEGIN----------------------------------------------------------------------------------------------------------
function TfmDepSpec.AddDepartment(ID, Code: Integer; Name: String; YearQty: Integer; Info: String): integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_DEPARTMENT(:P0, :P1, :P2, :P3, :P4)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := Code;
  ibqProc.Params[2].AsString := Name;
  ibqProc.Params[3].AsInteger := YearQty;
  ibqProc.Params[4].AsString := Info;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmDepSpec.DelDepartment(ID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_DEPARTMENT(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TfmDepSpec.AddSpecialization(ID, DepID, Code: Integer;
  Name: String; Budget, SelfRepayment: Currency; Info: String): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_SPECIALIZATION(' +
  ':P0, :P1, :P2, :P3, :P4, :P5, :P6)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := DepID;
  ibqProc.Params[2].AsInteger := Code;
  ibqProc.Params[3].AsString := Name;
  ibqProc.Params[4].AsFloat := Budget;
  ibqProc.Params[5].AsFloat := SelfRepayment;
  ibqProc.Params[6].AsString := Info;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmDepSpec.DelSpecialization(ID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_SPECIALIZATION(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TfmDepSpec.completeIds(var specID, depID, currID: Variant);
begin
  if specID <> Null then
  begin
    ibqProc.SQL.Clear;
    ibqProc.SQL.Append(
      'select d.id, d."CurriculumID" c_id from "Specialization" s ' +
      '  inner join "Department" d on d.id = s."DepartmentID" ' +
      'where s.id = :id'
    );
    ibqProc.ParamByName('id').Value := specID;
    ibqProc.Open;
    ibqProc.First;
    depID  := ibqProc.FieldByName('id').AsVariant;
    currID := ibqProc.FieldByName('c_id').AsVariant;
    ibqProc.Close;
  end;
end;

//- CRUD END -----------------------------------------------------------------------------------------------------------

procedure TfmDepSpec.Check;
begin
  aEditDept.Enabled := //DM.ibtDepartment.RecordCount > 0;
  ibdsDepartment.RecordCount > 0;
  aDelDept.Enabled := aEditDept.Enabled;
  aAddSpec.Enabled := aEditDept.Enabled;
  btnCurr.Enabled := btnEditDep.Enabled;
  miCurr.Enabled := btnEditDep.Enabled;

  aEditSpec.Enabled :=
    (ibdsSpecialization.RecordCount > 0) and
    btnEditDep.Enabled;
  aDelSpec.Enabled := aEditSpec.Enabled;
end;

procedure TfmDepSpec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  selectedSpecID   := ibdsSpecializationID.Value;
  selectedSpecName := ibdsSpecializationName.Value;
  selectedDepID    := ibdsDepartmentID.Value;
  selectedDepName  := ibdsDepartmentName.Value;
  selectedCurrID   := ibdsDepartmentCURR_ID.Value;
  ibdsDepartment.Close;
  dsSpecialization.DataSet := nil;
  dsDepartment.DataSet := nil;
  ibdsSpecialization.DataSource := nil;
  //DM.ibdsSpecialization.SelectSQL := SQLSpec;
end;

procedure TfmDepSpec.N9Click(Sender: TObject);
begin
  Close;
end;

procedure TfmDepSpec.dsDepartmentDataChange(Sender: TObject;
  Field: TField);
begin
  Check;
end;

procedure TfmDepSpec.btnCurrClick(Sender: TObject);
begin
  fmCurriculum := TfmCurriculum.Create(Self);
  fmCurriculum.ibdsCurriculum.Locate('ID', VarArrayOf([ibdsDepartmentCURR_ID.Value]), []);
  fmCurriculum.ShowModal;
  fmCurriculum.Release;
end;

procedure TfmDepSpec.FormCreate(Sender: TObject);
begin
  isLookupMode := false;
  ibdsDepartment.Close;
  ibdsDepartment.DataSource := dsCurr;
  ibdsSpecialization.DataSource := dsDepartment;
  ibdsCurriculum.Open;
  ibdsDepartment.Open;
  ibdsSpecialization.Open;
  Check;
end;

procedure TfmDepSpec.dbgDepartmentDblClick(Sender: TObject);
begin
  if isLookupMode then Close
  else aEditDept.Execute;
end;

procedure TfmDepSpec.dbgDepartmentKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbgDepartmentDblClick(Sender);
end;

procedure TfmDepSpec.dbgSpecializationDblClick(Sender: TObject);
begin
  if isLookupMode then Close
  else aEditSpec.Execute;
end;

procedure TfmDepSpec.dbgSpecializationKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then aEditSpec.Execute;
end;

procedure TfmDepSpec.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 14);
end;

procedure TfmDepSpec.miDepPrintClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;

  BM := ibdsDepartment.GetBookmark;
  ibdsDepartment.DisableControls;

  rep.ParSetTable;
  rep.CreateTableMM([10, 50 + 10, 30 + 60, 20 + 90, 50 + 110], []);
  rep.ParSetTableHead;
  rep.AddRow(['№', 'Наименование', 'Уч. план', 'Период', 'Примечание']);
  rep.ParSetTable;
  ibdsDepartment.First;
  i := 1;
  while not ibdsDepartment.Eof do
  begin
    rep.AddRow([
      IntToStr(i),
      ibdsDepartmentName.Value,
      ibdsDepartmentCurriculum.Value,
      ibdsDepartmentPeriod.AsString,
      ibdsDepartmentInfo.Value
    ]);
    inc(i);
    ibdsDepartment.Next;
  end;

  ibdsDepartment.GotoBookmark(BM);
  ibdsDepartment.FreeBookmark(BM);
  ibdsDepartment.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Отделения');
end;

procedure TfmDepSpec.miSpecPrintClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;
  rep.SetMarginsMM;

  BM := ibdsSpecialization.GetBookmark;
  ibdsSpecialization.DisableControls;

  rep.ParSet12Arial;
  rep.AddPar('Специализации отделения: ' + ibdsDepartmentName.Value);
  rep.CreateTableMMSz([10, 50, 20, 20, 70], []);
  rep.ParSetTableHead;
  rep.AddRow(['№', 'Наименование', 'Бюджет', 'Самоокуп.', 'Примечание']);
  rep.ParSetTable;
  ibdsSpecialization.First;
  i := 1;
  while not ibdsSpecialization.Eof do
  begin
    rep.AddRow([
      IntToStr(i),
      ibdsSpecializationName.Value,
      dFormat(ibdsSpecializationBudget.Value),
      dFormat(ibdsSpecializationSelf_Repayment.Value),
      ibdsSpecializationInfo.Value
    ]);
    inc(i);
    ibdsSpecialization.Next;
  end;

  ibdsSpecialization.GotoBookmark(BM);
  ibdsSpecialization.FreeBookmark(BM);
  ibdsSpecialization.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Специализации');  
end;

procedure TfmDepSpec.miDepSpecPrintClick(Sender: TObject);
var
  rep: TRTReport;
  BMD, BMS: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;

  BMD := ibdsDepartment.GetBookmark;
  BMS := ibdsSpecialization.GetBookmark;
  ibdsDepartment.DisableControls;
  ibdsSpecialization.DisableControls;
  ibdsDepartment.First;

  while not ibdsDepartment.Eof do
  begin
    rep.ParSet12Arial;
    rep.AddPar('Специализации отделения: ' + ibdsDepartmentName.Value);
    rep.ParSetTable;
    rep.CreateTableMMSz([10, 50, 20, 20, 70], []);
    rep.ParSetTableHead;
    rep.AddRow(['№', 'Наименование', 'Бюджет', 'Самоокуп.', 'Примечание']);
    rep.ParSetTable;
    ibdsSpecialization.Params[0].AsInteger := ibdsDepartmentID.Value;
    ibdsSpecialization.Close;
    ibdsSpecialization.Open;
    ibdsSpecialization.First;
    i := 1;
    while not ibdsSpecialization.Eof do
    begin
      rep.AddRow([
        IntToStr(i),
        ibdsSpecializationName.Value,
        dFormat(ibdsSpecializationBudget.Value),
        dFormat(ibdsSpecializationSelf_Repayment.Value),
        ibdsSpecializationInfo.Value
      ]);
      inc(i);
      ibdsSpecialization.Next;
    end;
    rep.AddText('\pard \par');
    ibdsDepartment.Next;
  end;

  ibdsDepartment.GotoBookmark(BMD);
  ibdsDepartment.FreeBookmark(BMD);
  ibdsDepartment.EnableControls;
  ibdsSpecialization.GotoBookmark(BMS);
  ibdsSpecialization.FreeBookmark(BMS);
  ibdsSpecialization.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Отделения и специализации');  
end;

procedure TfmDepSpec.aAddDeptExecute(Sender: TObject);
var
  i: Integer;
begin
  fmEdDep := TfmEdDep.Create(Self);
  fmEdDep.Caption := 'Добавление отделения';
  if fmEdDep.ShowModal = mrOK then
  begin
    i := AddDepartment(0, StrToInt(fmEdDep.edCode.Text),
      fmEdDep.edName.Text, fmEdDep.edCurriculum.Tag,
      fmEdDep.edInfo.Text);
      ibdsDepartment.Close;
      ibdsDepartment.Open;
      ibdsDepartment.Locate('ID', VarArrayOf([i]), []);
  end;
  fmEdDep.Release;
  Check;
end;

procedure TfmDepSpec.aEditDeptExecute(Sender: TObject);
var
  i: Integer;
begin
  i := ibdsDepartmentID.Value;
  fmEdDep := TfmEdDep.Create(Self);
  fmEdDep.Caption := 'Редактирование данных отделения';
  fmEdDep.edCode.Text := ibdsDepartmentCode.AsString;
  fmEdDep.edName.Text := ibdsDepartmentName.AsString;
  fmEdDep.edInfo.Text := ibdsDepartmentInfo.Value;
  fmEdDep.edCurriculum.KeyValue := ibdsDepartmentCurriculum.Value;
  if fmEdDep.ShowModal = mrOK then
  begin
    AddDepartment(
      i,
      StrToInt(fmEdDep.edCode.Text),
      fmEdDep.edName.Text,
      fmEdDep.edCurriculum.KeyValue,
      fmEdDep.edInfo.Text
    );
    ibdsDepartment.Refresh;
  end;
  fmEdDep.Release;
end;

procedure TfmDepSpec.aDelDeptExecute(Sender: TObject);
begin
  if MessageDlg('Удалить "' + ibdsDepartmentName.Value +
    '" отделение и все его специализации?',
    mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    DelDepartment(ibdsDepartmentID.Value);
    ibdsDepartment.Close;
    ibdsDepartment.Open;
    Check;
  end;
end;

procedure TfmDepSpec.aAddSpecExecute(Sender: TObject);
var
  i: Integer;
begin
  fmEdSpec := TfmEdSpec.Create(Self);
  fmEdSpec.Caption := 'Добавление специализации в отделение ' +
    ibdsDepartmentName.Value;
  if fmEdSpec.ShowModal = mrOk then
  begin
    i := AddSpecialization(0,
      ibdsDepartmentID.Value,
      StrToInt(fmEdSpec.edCode.Text),
      fmEdSpec.edName.Text,
      StrToCurr(fmEdSpec.edBudget.Text),
      StrToCurr(fmEdSpec.edSelfRepayment.Text),
        fmEdSpec.edInfo.Text);
      ibdsSpecialization.Close;
      ibdsSpecialization.Open;
      ibdsSpecialization.Locate('ID', VarArrayOf([i]), []);
    Check;
  end;
end;

procedure TfmDepSpec.aEditSpecExecute(Sender: TObject);
var
  ID: Integer;
begin
  fmEdSpec := TfmEdSpec.Create(Self);
  fmEdSpec.Caption := 'Редактирование специализации отделения ' +
    ibdsDepartmentName.Value;
  fmEdSpec.edCode.Text := ibdsSpecializationCode.AsString;
  fmEdSpec.edName.Text := ibdsSpecializationName.Value;
  fmEdSpec.edBudget.Text := ibdsSpecializationBudget.AsString;
  fmEdSpec.edSelfRepayment.Text := ibdsSpecializationSelf_Repayment.AsString;
  fmEdSpec.edInfo.Text := ibdsSpecializationInfo.Value;
  ID := ibdsSpecializationID.Value;
  if fmEdSpec.ShowModal = mrOk then
  begin
    AddSpecialization(ID,
      ibdsDepartmentID.Value,
      StrToInt(fmEdSpec.edCode.Text),
      fmEdSpec.edName.Text,
      StrToCurr(fmEdSpec.edBudget.Text),
      StrToCurr(fmEdSpec.edSelfRepayment.Text),
      fmEdSpec.edInfo.Text);
      ibdsSpecialization.Refresh;
      //ibdsSpecialization.Locate('ID', VarArrayOf([ID]), []);
    Check;
  end;
end;

procedure TfmDepSpec.aDelSpecExecute(Sender: TObject);
begin
  if MessageDlg('Удалить специализацию "' +
    ibdsSpecializationName.Value + '"?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DelSpecialization(ibdsSpecializationID.Value);
    ibdsSpecialization.Close;
    ibdsSpecialization.Open;
    Check;
  end;
end;

procedure TfmDepSpec.btnDepMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := ibdsDepartmentID.Value;
  DM.ChangePosition('"Department"', '"CurriculumID"', id, -1);
  ibdsDepartment.Close;
  ibdsDepartment.Open;
  ibdsDepartment.Locate('id', id, []);
end;

procedure TfmDepSpec.btnDepMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := ibdsDepartmentID.Value;
  dm.ChangePosition('"Department"', '"CurriculumID"', id, 1);
  ibdsDepartment.Close;
  ibdsDepartment.Open;
  ibdsDepartment.Locate('id', id, []);
end;

procedure TfmDepSpec.btnSpecMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := ibdsSpecializationID.Value;
  dm.ChangePosition('"Specialization"', '"DepartmentID"', id, -1);
  ibdsSpecialization.Close;
  ibdsSpecialization.Open;
  ibdsSpecialization.Locate('id', id, []);
end;

procedure TfmDepSpec.btnSpecMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := ibdsSpecializationID.Value;
  dm.ChangePosition('"Specialization"', '"DepartmentID"', id, 1);
  ibdsSpecialization.Close;
  ibdsSpecialization.Open;
  ibdsSpecialization.Locate('id', id, []);
end;

procedure TfmDepSpec.btnCurrMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := ibdsCurriculumID.Value;
  dm.ChangePosition('"CURRICULUM"', Null, id, -1);
  ibdsCurriculum.Close;
  ibdsCurriculum.Open;
  ibdsCurriculum.Locate('id', id, []);
end;

procedure TfmDepSpec.btnCurrMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := ibdsCurriculumID.Value;
  DM.ChangePosition('"CURRICULUM"', Null, id, 1);
  ibdsCurriculum.Close;
  ibdsCurriculum.Open;
  ibdsCurriculum.Locate('id', id, []);
end;

procedure TfmDepSpec.locate(specID, deptID, currID: Integer);
begin

end;

procedure TfmDepSpec.FormShow(Sender: TObject);
begin
  completeIds(selectedSpecID, selectedDepID, selectedCurrID);
  // в FormCreate не получается, т.к. локейт специализации не происходит
  if selectedCurrID <> Null then
  begin
    ibdsCurriculum.Locate('id', selectedCurrID, []);
    if selectedDepID <> Null then
    begin
      ibdsDepartment.Locate('id', selectedDepID, []);
      if selectedSpecID <> Null then
      begin
        ibdsSpecialization.Locate('id', selectedSpecID, []);
      end;
    end;
  end;
end;







end.
