unit UDepSpecCurr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, ExtCtrls, DBGrids, StdCtrls, Menus, Buttons, RXDBCtrl,
  RXSplit, Placemnt, URTReport, ImgList, ActnList, XPStyleActnCtrls,
  ActnMan, frxClass, frxDBSet, IBCustomDataSet, JvExDBGrids, JvDBGrid;

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
    procedure aCurrAddExecute(Sender: TObject);
    procedure aCurrEditExecute(Sender: TObject);
    procedure aCurrDelExecute(Sender: TObject);
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
    { Public declarations }
  end;

var
  fmDepSpec: TfmDepSpec;

implementation

uses UDM, UEdDep, UEdSpec, UCurriculum, uDMImages, UEdCurr;

{$R *.dfm}

procedure TfmDepSpec.Check;
begin
  aEditDept.Enabled := //DM.ibtDepartment.RecordCount > 0;
    DM.ibdsDepartment.RecordCount > 0;
  aDelDept.Enabled := aEditDept.Enabled;
  aAddSpec.Enabled := aEditDept.Enabled;
  btnCurr.Enabled := btnEditDep.Enabled;
  miCurr.Enabled := btnEditDep.Enabled;

  aEditSpec.Enabled :=
    (DM.ibdsSpecialization.RecordCount > 0) and
    btnEditDep.Enabled;
  aDelSpec.Enabled := aEditSpec.Enabled;
end;

procedure TfmDepSpec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  selectedSpecID   := DM.ibdsSpecializationID.Value;
  selectedSpecName := DM.ibdsSpecializationName.Value;
  selectedDepID    := DM.ibdsDepartmentID.Value;
  selectedDepName  := DM.ibdsDepartmentName.Value;
  selectedCurrID   := DM.ibdsCurriculumID.Value;
  DM.ibdsDepartment.Close;
  DM.ibdsDepartment.SelectSQL.DelimitedText := fSelectSql;
  DM.ibdsDepartment.DataSource := nil;
  DM.ibdsDepartment.Open;

  dsSpecialization.DataSet := nil;
  dsDepartment.DataSet := nil;
  DM.ibdsSpecialization.DataSource := nil;
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
  DM.ibdsCurriculum.Locate('ID', VarArrayOf([DM.ibdsDepartmentCurriculumID.Value]), []);
  fmCurriculum.ShowModal;
  fmCurriculum.Release;
end;

procedure TfmDepSpec.FormCreate(Sender: TObject);
begin
  isLookupMode := false;
  DM.ibdsDepartment.Close;
  fSelectSql := DM.ibdsDepartment.SelectSQL.DelimitedText;
  DM.ibdsDepartment.SelectSQL.Clear;
  DM.ibdsDepartment.SelectSQL.Append(
    'select * from "Department" where "CurriculumID" = :ID ' +
    'order by pos, "Name"'
  );
  DM.ibdsDepartment.DataSource := dsCurr;
  DM.ibdsSpecialization.DataSource := dsDepartment;
  DM.ibdsDepartment.Open;
  DM.ibdsSpecialization.Open;
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

  BM := DM.ibdsDepartment.GetBookmark;
  DM.ibdsDepartment.DisableControls;

  rep.ParSetTable;
  rep.CreateTableMM([10, 50 + 10, 30 + 60, 20 + 90, 50 + 110], []);
  rep.ParSetTableHead;
  rep.AddRow(['№', 'Наименование', 'Уч. план', 'Период', 'Примечание']);
  rep.ParSetTable;
  DM.ibdsDepartment.First;
  i := 1;
  while not DM.ibdsDepartment.Eof do
  begin
    rep.AddRow([
      IntToStr(i),
      DM.ibdsDepartmentName.Value,
      DM.ibdsDepartmentCurriculum.Value,
      DM.ibdsDepartmentPeriod.AsString,
      DM.ibdsDepartmentInfo.Value
    ]);
    inc(i);
    DM.ibdsDepartment.Next;
  end;

  DM.ibdsDepartment.GotoBookmark(BM);
  DM.ibdsDepartment.FreeBookmark(BM);
  DM.ibdsDepartment.EnableControls;
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

  BM := DM.ibdsSpecialization.GetBookmark;
  DM.ibdsSpecialization.DisableControls;

  rep.ParSet12Arial;
  rep.AddPar('Специализации отделения: ' + DM.ibdsDepartmentName.Value);
  rep.CreateTableMMSz([10, 50, 20, 20, 70], []);
  rep.ParSetTableHead;
  rep.AddRow(['№', 'Наименование', 'Бюджет', 'Самоокуп.', 'Примечание']);
  rep.ParSetTable;
  DM.ibdsSpecialization.First;
  i := 1;
  while not DM.ibdsSpecialization.Eof do
  begin
    rep.AddRow([
      IntToStr(i),
      DM.ibdsSpecializationName.Value,
      dFormat(DM.ibdsSpecializationBudget.Value),
      dFormat(DM.ibdsSpecializationSelf_Repayment.Value),
      DM.ibdsSpecializationInfo.Value
    ]);
    inc(i);
    DM.ibdsSpecialization.Next;
  end;

  DM.ibdsSpecialization.GotoBookmark(BM);
  DM.ibdsSpecialization.FreeBookmark(BM);
  DM.ibdsSpecialization.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Специализации');  
end;

procedure TfmDepSpec.miDepSpecPrintClick(Sender: TObject);
var
  rep: TRTReport;
  BMD, BMS: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;

  BMD := DM.ibdsDepartment.GetBookmark;
  BMS := DM.ibdsSpecialization.GetBookmark;
  DM.ibdsDepartment.DisableControls;
  DM.ibdsSpecialization.DisableControls;
  DM.ibdsDepartment.First;

  while not DM.ibdsDepartment.Eof do
  begin
    rep.ParSet12Arial;
    rep.AddPar('Специализации отделения: ' + DM.ibdsDepartmentName.Value);
    rep.ParSetTable;
    rep.CreateTableMMSz([10, 50, 20, 20, 70], []);
    rep.ParSetTableHead;
    rep.AddRow(['№', 'Наименование', 'Бюджет', 'Самоокуп.', 'Примечание']);
    rep.ParSetTable;
    DM.ibdsSpecialization.Params[0].AsInteger := DM.ibdsDepartmentID.Value;
    DM.ibdsSpecialization.Close;
    DM.ibdsSpecialization.Open;
    DM.ibdsSpecialization.First;
    i := 1;
    while not DM.ibdsSpecialization.Eof do
    begin
      rep.AddRow([
        IntToStr(i),
        DM.ibdsSpecializationName.Value,
        dFormat(DM.ibdsSpecializationBudget.Value),
        dFormat(DM.ibdsSpecializationSelf_Repayment.Value),
        DM.ibdsSpecializationInfo.Value
      ]);
      inc(i);
      DM.ibdsSpecialization.Next;
    end;
    rep.AddText('\pard \par');
    DM.ibdsDepartment.Next;
  end;

  DM.ibdsDepartment.GotoBookmark(BMD);
  DM.ibdsDepartment.FreeBookmark(BMD);
  DM.ibdsDepartment.EnableControls;
  DM.ibdsSpecialization.GotoBookmark(BMS);
  DM.ibdsSpecialization.FreeBookmark(BMS);
  DM.ibdsSpecialization.EnableControls;
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
    i := DM.AddDepartment(0, StrToInt(fmEdDep.edCode.Text),
      fmEdDep.edName.Text, fmEdDep.edCurriculum.Tag,
      fmEdDep.edInfo.Text);
      DM.ibdsDepartment.Close;
      DM.ibdsDepartment.Open;
      DM.ibdsDepartment.Locate('ID', VarArrayOf([i]), []);
  end;
  fmEdDep.Release;
  Check;
end;

procedure TfmDepSpec.aEditDeptExecute(Sender: TObject);
var
  i: Integer;
begin
  i := DM.ibdsDepartmentID.Value;
  fmEdDep := TfmEdDep.Create(Self);
  fmEdDep.Caption := 'Редактирование данных отделения';
  fmEdDep.edCode.Text := DM.ibdsDepartmentCode.AsString;
  fmEdDep.edName.Text := DM.ibdsDepartmentName.AsString;
  fmEdDep.edInfo.Text := DM.ibdsDepartmentInfo.Value;
  fmEdDep.edCurriculum.Text := DM.ibdsDepartmentCurriculum.Value;
  fmEdDep.edCurriculum.Tag := DM.ibdsDepartmentCurriculumID.Value;
  if fmEdDep.ShowModal = mrOK then
  begin
    DM.AddDepartment(i, StrToInt(fmEdDep.edCode.Text),
      fmEdDep.edName.Text, fmEdDep.edCurriculum.Tag,
      fmEdDep.edInfo.Text);
      DM.ibdsDepartment.Refresh;
  end;
  fmEdDep.Release;
end;

procedure TfmDepSpec.aDelDeptExecute(Sender: TObject);
begin
  if MessageDlg('Удалить "' + DM.ibdsDepartmentName.Value +
    '" отделение и все его специализации?',
    mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelDepartment(DM.ibdsDepartmentID.Value);
    DM.ibdsDepartment.Close;
    DM.ibdsDepartment.Open;
    Check;
  end;
end;

procedure TfmDepSpec.aAddSpecExecute(Sender: TObject);
var
  i: Integer;
begin
  fmEdSpec := TfmEdSpec.Create(Self);
  fmEdSpec.Caption := 'Добавление специализации в отделение ' +
    DM.ibdsDepartmentName.Value;
  if fmEdSpec.ShowModal = mrOk then
  begin
    i := DM.AddSpecialization(0,
      DM.ibdsDepartmentID.Value,
      StrToInt(fmEdSpec.edCode.Text),
      fmEdSpec.edName.Text,
      StrToCurr(fmEdSpec.edBudget.Text),
      StrToCurr(fmEdSpec.edSelfRepayment.Text),
        fmEdSpec.edInfo.Text);
      DM.ibdsSpecialization.Close;
      DM.ibdsSpecialization.Open;
      DM.ibdsSpecialization.Locate('ID', VarArrayOf([i]), []);
    Check;
  end;
end;

procedure TfmDepSpec.aEditSpecExecute(Sender: TObject);
var
  ID: Integer;
begin
  fmEdSpec := TfmEdSpec.Create(Self);
  fmEdSpec.Caption := 'Редактирование специализации отделения ' +
    DM.ibdsDepartmentName.Value;
  fmEdSpec.edCode.Text := DM.ibdsSpecializationCode.AsString;
  fmEdSpec.edName.Text := DM.ibdsSpecializationName.Value;
  fmEdSpec.edBudget.Text := DM.ibdsSpecializationBudget.AsString;
  fmEdSpec.edSelfRepayment.Text := DM.ibdsSpecializationSelf_Repayment.AsString;
  fmEdSpec.edInfo.Text := DM.ibdsSpecializationInfo.Value;
  ID := DM.ibdsSpecializationID.Value;
  if fmEdSpec.ShowModal = mrOk then
  begin
    DM.AddSpecialization(ID,
      DM.ibdsDepartmentID.Value,
      StrToInt(fmEdSpec.edCode.Text),
      fmEdSpec.edName.Text,
      StrToCurr(fmEdSpec.edBudget.Text),
      StrToCurr(fmEdSpec.edSelfRepayment.Text),
      fmEdSpec.edInfo.Text);
      DM.ibdsSpecialization.Refresh;
      //DM.ibdsSpecialization.Locate('ID', VarArrayOf([ID]), []);
    Check;
  end;
end;

procedure TfmDepSpec.aDelSpecExecute(Sender: TObject);
begin
  if MessageDlg('Удалить специализацию "' +
    DM.ibdsSpecializationName.Value + '"?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelSpecialization(DM.ibdsSpecializationID.Value);
    DM.ibdsSpecialization.Close;
    DM.ibdsSpecialization.Open;
    Check;
  end;
end;

procedure TfmDepSpec.btnDepMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsDepartmentID.Value;
  dm.ChangePosition('"Department"', '"CurriculumID"', id, -1);
  DM.ibdsDepartment.Close;
  DM.ibdsDepartment.Open;
  DM.ibdsDepartment.Locate('id', id, []);
end;

procedure TfmDepSpec.btnDepMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsDepartmentID.Value;
  dm.ChangePosition('"Department"', '"CurriculumID"', id, 1);
  DM.ibdsDepartment.Close;
  DM.ibdsDepartment.Open;
  DM.ibdsDepartment.Locate('id', id, []);
end;

procedure TfmDepSpec.btnSpecMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsSpecializationID.Value;
  dm.ChangePosition('"Specialization"', '"DepartmentID"', id, -1);
  dm.ibdsSpecialization.Close;
  dm.ibdsSpecialization.Open;
  dm.ibdsSpecialization.Locate('id', id, []);
end;

procedure TfmDepSpec.btnSpecMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsSpecializationID.Value;
  dm.ChangePosition('"Specialization"', '"DepartmentID"', id, 1);
  dm.ibdsSpecialization.Close;
  dm.ibdsSpecialization.Open;
  dm.ibdsSpecialization.Locate('id', id, []);
end;

procedure TfmDepSpec.aCurrAddExecute(Sender: TObject);
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
    id := DM.AddCurriculum(
      0,
      fmEdCurr.edName.Text,
      fmEdCurr.cbPeriod.ItemIndex + 1,
      fmEdCurr.edPeriodForPrint.Text
    );
    DM.AddCurriculumCat(id, 0, Preo(fmEdCurr.rgCat0.ItemIndex));
    DM.AddCurriculumCat(id, 1, Preo(fmEdCurr.rgCat1.ItemIndex));
    DM.AddCurriculumCat(id, 2, Preo(fmEdCurr.rgCat2.ItemIndex));
    DM.AddCurriculumCat(id, 3, Preo(fmEdCurr.rgCat3.ItemIndex));
    DM.AddCurriculumCat(id, 4, Preo(fmEdCurr.rgCat4.ItemIndex));
    DM.AddCurriculumCat(id, 5, Preo(fmEdCurr.rgCat5.ItemIndex));
    DM.AddCurriculumCat(id, 6, Preo(fmEdCurr.rgCat6.ItemIndex));
    DM.AddCurriculumCat(id, 7, Preo(fmEdCurr.rgCat7.ItemIndex));
    DM.AddCurriculumCat(id, 8, Preo(fmEdCurr.rgCat8.ItemIndex));
    DM.ibdsCurriculum.Close;
    DM.ibdsCurriculum.Open;
    DM.ibdsCurriculum.Locate('ID', VarArrayOf([id]), []);
  end;
  fmEdCurr.Release;
end;

procedure TfmDepSpec.aCurrEditExecute(Sender: TObject);
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
    DM.AddCurriculum(
      DM.ibdsCurriculumID.Value,
      fmEdCurr.edName.Text,
      fmEdCurr.cbPeriod.ItemIndex + 1,
      fmEdCurr.edPeriodForPrint.Text
    );
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
end;

procedure TfmDepSpec.aCurrDelExecute(Sender: TObject);
begin
  if DM.ibdsCurriculum.IsEmpty then Exit;
  if MessageDlg('Вы действительно хотите удалить учебный план "' +
    DM.ibdsCurriculumName.Value + '"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelCurriculum(DM.ibdsCurriculumID.Value);
    DM.ibdsCurriculum.Close;
    DM.ibdsCurriculum.Open;
  end;
end;

procedure TfmDepSpec.btnCurrMoveUpClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsCurriculumID.Value;
  dm.ChangePosition('"CURRICULUM"', Null, id, -1);
  dm.ibdsCurriculum.Close;
  dm.ibdsCurriculum.Open;
  dm.ibdsCurriculum.Locate('id', id, []);
end;

procedure TfmDepSpec.btnCurrMoveDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := dm.ibdsCurriculumID.Value;
  dm.ChangePosition('"CURRICULUM"', Null, id, 1);
  dm.ibdsCurriculum.Close;
  dm.ibdsCurriculum.Open;
  dm.ibdsCurriculum.Locate('id', id, []);
end;

procedure TfmDepSpec.locate(specID, deptID, currID: Integer);
begin

end;

procedure TfmDepSpec.FormShow(Sender: TObject);
begin
  // в FormCreate не получается, т.к. локейт специализации не происходит
  if selectedCurrID <> Null then
  begin
    DM.ibdsCurriculum.Locate('id', selectedCurrID, []);
    if selectedDepID <> Null then
    begin
      DM.ibdsDepartment.Locate('id', selectedDepID, []);
      if selectedSpecID <> Null then
      begin
        DM.ibdsSpecialization.Locate('id', selectedSpecID, []);
      end;
    end;
  end;
end;

end.
