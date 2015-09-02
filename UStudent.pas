unit UStudent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, DB, Grids, DBGrids, Buttons, DBCtrls,
  Mask, URTReport, ShellAPI, ComCtrls, AppEvnts, RXDBCtrl, Clipbrd,
  Placemnt, JvExStdCtrls, JvButton, JvCtrls, ActnList, XPStyleActnCtrls,
  ActnMan, frxClass, frxDBSet, IBEvents, IBCustomDataSet;

type
  TfmStudent = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dsStudent: TDataSource;
    edSearch: TLabeledEdit;
    MainMenu: TMainMenu;
    miExit: TMenuItem;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelStudent: TSpeedButton;
    GroupBox2: TGroupBox;
    dbeRestoreDate: TDBEdit;
    dbeEnterDate: TDBEdit;
    dbeReleaseDate: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbeEnterInfo: TDBEdit;
    dbeReleaseInfo: TDBEdit;
    dbRestoreInfo: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dsPlan: TDataSource;
    N1: TMenuItem;
    miPrintList: TMenuItem;
    miPrintDept: TMenuItem;
    btnFilter: TSpeedButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    dbeTelephone: TDBEdit;
    dbeBirthDate: TDBEdit;
    N2: TMenuItem;
    miChangeData: TMenuItem;
    miSetTeachers: TMenuItem;
    miPrintClassWithDates: TMenuItem;
    sBar: TStatusBar;
    dbgStudent: TRxDBGrid;
    dbgPlan: TRxDBGrid;
    miChangeTeacher: TMenuItem;
    dbeFilial: TDBEdit;
    Label13: TLabel;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    N6: TMenuItem;
    miHelp: TMenuItem;
    PopupMenu: TPopupMenu;
    miCopyRecord: TMenuItem;
    miPasteRecord: TMenuItem;
    N3: TMenuItem;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    N4: TMenuItem;
    miRDepTeacherW: TMenuItem;
    miRDepTeacherParams: TMenuItem;
    FormStorage1: TFormStorage;
    miFIOAddrC: TMenuItem;
    ActionManager: TActionManager;
    aFilter: TAction;
    aAdd: TAction;
    aEdit: TAction;
    Action1: TAction;
    miPrintOnDeptForTeacherSubj: TMenuItem;
    miPrintFoTeacher: TMenuItem;
    IBEvents: TIBEvents;
    ibdsCurriculumRecord: TIBDataSet;
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
    dsCurrRec: TDataSource;
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dbgPlanDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnFilterClick(Sender: TObject);
    procedure dbgStudentDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure miPrintListClick(Sender: TObject);
    procedure miPrintDeptClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure miSetTeachersClick(Sender: TObject);
    procedure miChangeDataClick(Sender: TObject);
    procedure miPrintClassWithDatesClick(Sender: TObject);
    procedure RefreshCount;
    procedure btnDelStudentClick(Sender: TObject);
    procedure dbgStudentKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPlanDblClick(Sender: TObject);
    procedure dbgPlanKeyPress(Sender: TObject; var Key: Char);
    procedure dbgStudentDblClick(Sender: TObject);
    procedure dbgPlanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure miChangeTeacherClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
    procedure miCopyRecordClick(Sender: TObject);
    procedure miPasteRecordClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure MainMenuChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure miRDepTeacherWClick(Sender: TObject);
    procedure miRDepTeacherParamsClick(Sender: TObject);
    procedure dbgStudentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgStudentMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgPlanEnter(Sender: TObject);
    procedure dbgStudentEnter(Sender: TObject);
    procedure dbgStudentCellClick(Column: TColumn);
    procedure miFIOAddrCClick(Sender: TObject);
    procedure miPrintOnDeptForTeacherSubjClick(Sender: TObject);
    procedure miPrintFoTeacherClick(Sender: TObject);
    procedure IBEventsEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStudent: TfmStudent;

implementation

uses UDM, UEdStudent, UStudentFilter, USetTeachers, USetStudentsData,
  UEdStudentPlan, UChangeTeacherSTP, UDeptStTRepParam, StrUtils,
  UfmStudentFilter;

{$R *.dfm}

procedure TfmStudent.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmStudent.FormCreate(Sender: TObject);
begin
  DM.ibdsStudent.Close;
  DM.ibdsStudent.Open;
  DM.ibdsStudentPlan.Close;
  DM.ibdsStudentPlan.Open;
  dsStudent.DataSet := DM.ibdsStudent;
  DM.ibdsStudentPlan.DataSource := dsStudent;
  dsPlan.DataSet := DM.ibdsStudentPlan;
  DM.ibdsStudent.FetchAll;
  sBar.Panels[0].Text := 'Количество учеников: ' +
    IntToStr(DM.ibdsStudent.RecordCount);
  IBEvents.RegisterEvents;
end;

procedure TfmStudent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsPlan.DataSet := nil;
  DM.ibdsStudentPlan.DataSource := nil;
  dsStudent.DataSet := nil;
  DM.ibdsStudent.Filtered := false;
end;

procedure TfmStudent.btnAddClick(Sender: TObject);
begin
  DM.ibdsStudent.DisableControls;
  fmEdStudent := TfmEdStudent.Create(Self);
  fmEdStudent.ShowModal;
  fmEdStudent.Release;
  RefreshCount;
  DM.ibdsStudent.EnableControls;
end;

procedure TfmStudent.btnEditClick(Sender: TObject);
begin
  if DM.ibdsStudent.IsEmpty then Exit;
  DM.ibdsStudent.DisableControls;
  fmEdStudent := TfmEdStudent.Create(Self);
  fmEdStudent.EditMode := true;
  fmEdStudent.ShowModal;
  fmEdStudent.Release;
  DM.ibdsStudent.EnableControls;
  DM.ibdsStudentPlan.Close;
  DM.ibdsStudentPlan.Open;
end;

procedure TfmStudent.dbgPlanDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdSelected in State) then
  begin
    if not DM.ibdsStudentPlanUseBool.Value then dbgPlan.Canvas.Font.Color := clGrayText;
    if Column.Field.AsString = '0' then
      dbgPlan.Canvas.Font.Color := dbgPlan.Canvas.Brush.Color;
  end;
  dbgPlan.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmStudent.btnFilterClick(Sender: TObject);
var
  ID_Student: Integer;
begin
  ID_Student := DM.ibdsStudentID.Value;

  fmStudentFilter := TfmStudentFilter.Create(Self);
  fmStudentFilter.cbOnOff.Checked := not btnFilter.Down;
  fmStudentFilter.ShowModal;
  DM.ibdsStudent.Close;
  if fmStudentFilter.cbOnOff.Checked then
    DM.ibdsStudent.SelectSQL.Text :=
    'SELECT VS.* ' +
    'FROM VIEW_STUDENT VS ' +
    ' INNER JOIN GET_FILTRED_STUDENT(' + IntToStr(fmStudentFilter.ID_Filter) + ') FS'+
    ' ON FS.ID = VS.ID ' +
    'ORDER BY VS.Name'
  else
    DM.ibdsStudent.SelectSQL.Text :=
      'select * from VIEW_STUDENT order by Name';

  DM.ibdsStudent.Open;
  DM.ibdsStudent.Locate('ID', ID_Student, []);
  btnFilter.Down := fmStudentFilter.cbOnOff.Checked;
  fmStudentFilter.Release;

  RefreshCount;
end;

procedure TfmStudent.dbgStudentDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdSelected in State) then
    case DM.ibdsStudentState.Value of
      0: dbgStudent.Canvas.Font.Color := clRed; //отчислен
      1: dbgStudent.Canvas.Font.Color := clBlue;
    else
      dbgStudent.Canvas.Font.Color := clBlack;
    end;

  dbgStudent.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmStudent.miPrintListClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.ParSet12Arial;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('\par');
  rep.ParSetTableHead;
  rep.CreateTableMMSz([8, 53, 70, 15, 45], []);
  rep.AddRow(['№', 'Ф.И.О', 'Куратор', 'Кл.', 'Отделение']);
  rep.ParSetTable;
  BM := DM.ibdsStudent.GetBookmark;
  DM.ibdsStudent.DisableControls;
  DM.ibdsStudent.First;
  i := 1;
  while not DM.ibdsStudent.Eof do
  begin
    rep.AddRow([IntToStr(i), DM.ibdsStudentName.Value,
      DM.ibdsStudentCURATOR.Value,
      DM.ibdsStudentCLASS.AsString + '(' + DM.ibdsStudent.FieldByName('PERIOD_FOR_PRINT').AsString + ')',
      DM.ibdsStudentDEPARTMENT.Value]);
    DM.ibdsStudent.Next;
    inc(i);
  end;

  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Список учеников (Ф.И.О., куратор, класс)');
end;

procedure TfmStudent.miPrintDeptClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i, k: Integer;
  IDs: TStringList;
  Names: TStringList;
begin
  BM := DM.ibdsStudent.GetBookmark;
  IDs := TStringList.Create;
  Names := TStringList.Create;
  rep := TRTReport.Create;
  rep.SetMarginsMM;


  rep.AddText('{\header ');  //верхний колонтитул
  rep.ParSet12Arial;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddText('\par}');

  DM.ibdsStudent.DisableControls;
  DM.ibdsStudent.First;
  //getting all DepartmentID
  while not DM.ibdsStudent.Eof do
  begin
    if IDs.IndexOf(DM.ibdsStudentDepartmentID.AsString) = -1 then
    begin
      IDs.Append(DM.ibdsStudentDepartmentID.AsString);
      Names.Append(DM.ibdsStudentDepartment.Value);
    end;
    DM.ibdsStudent.Next;
  end;

  for i := 0 to IDs.Count - 1 do
  begin
    rep.ParSet12Times;
    rep.AddText('\sb90\sa90 ' + 'Отделение: ' + Names[i] + '\par ');
    rep.ParSetTableHead;
    rep.CreateTableMMSz([10, 50, 20, 45, 65], []);

    rep.AddRow(['№', 'Ф.И.О.', 'Кл. (период)', 'Специализация', 'Куратор']);
    rep.ParSetTable;

    DM.ibdsStudent.First;
    k := 1;
    while not DM.ibdsStudent.Eof do
    begin
      if IDs.IndexOf(DM.ibdsStudentDepartmentID.AsString) = i then
      begin
        rep.AddRow([IntToStr(k), DM.ibdsStudentName.Value,
            DM.ibdsStudentCLASS.AsString + '(' + DM.ibdsStudent.FieldByName('PERIOD_FOR_PRINT').AsString + ')',
            DM.ibdsStudentSpecialization.Value,
            DM.ibdsStudentCURATOR.Value
            ]);
        inc(k);    
      end;
      DM.ibdsStudent.Next;
    end;
    //rep.AddPar(' ');
  end;

  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Список учеников по отделениям');
end;

procedure TfmStudent.edSearchChange(Sender: TObject);
begin
  if edSearch.Text = '' then Exit;
  DM.ibdsStudentPlan.DataSource := nil;
  DM.ibdsStudent.Locate('Name', VarArrayOf([edSearch.Text]), [loCaseInsensitive, loPartialKey]);
  DM.ibdsStudentPlan.DataSource := dsStudent;
end;

procedure TfmStudent.miSetTeachersClick(Sender: TObject);
var
  bm: TBookmark;
  CID: Integer;
  Cls: Integer;
  ClsNotEq: boolean;
  i: Integer;
begin
  bm := DM.ibdsStudent.GetBookmark;
  DM.ibdsStudent.DisableControls;

  DM.ibdsStudent.First;
  CID := DM.ibdsStudentCURRICULUMID.Value;
  ClsNotEq := false;
  Cls := DM.ibdsStudentCLASS.Value;
  while not DM.ibdsStudent.Eof do
  begin
    ClsNotEq := ClsNotEq or (DM.ibdsStudentCLASS.Value <> Cls);
    if CID <> DM.ibdsStudentCURRICULUMID.Value then
      break;                                     
    DM.ibdsStudent.Next;
  end;
  if not DM.ibdsStudent.Eof then
    MessageDlg('Учебный план не совпадает!' + #13#10 +
      'Откорректируйте фильтр.', mtInformation, [mbOk], 0)
  else
  begin
    if ClsNotEq then
    begin
      if MessageDlg('ВНИМАНИЕ: Классы не совпадают.' + #13#10 + 'Продолжить?',
        mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
        fmSetTeachers := TfmSetTeachers.Create(Self);
        ibdsCurriculumRecord.ParamByName('ID').AsInteger := CID;
        ibdsCurriculumRecord.Close;
        ibdsCurriculumRecord.Open;
        ibdsCurriculumRecord.FetchAll;
        ibdsCurriculumRecord.First;
        while not ibdsCurriculumRecord.Eof do
        begin
          with fmSetTeachers.VLE do
          begin
            InsertRow(ibdsCurriculumRecordSUBJ_NAME.Value, '----', true);
            ItemProps[RowCount - 2].EditStyle := esEllipsis;
            Strings.Objects[RowCount - 2] := USetTeachers.TInf.Create(ibdsCurriculumRecordID.Value, -1, false);
            ItemProps[RowCount - 2].ReadOnly := true;
          end;
          ibdsCurriculumRecord.Next;
        end;
        if fmSetTeachers.ShowModal = mrOK then
        begin
          for i := 0 to fmSetTeachers.VLE.RowCount - 2 do
          //-2 потому, что заголовок учитывается
          begin
            //проверяем надо ли вообще устанавливать, если -1, то не надо
            if (fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).tid <> -1 then
            begin
              DM.ibdsStudent.First;
              while not DM.ibdsStudent.Eof do
              begin
                DM.AddStudentPlan(
                  (fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).CRID,
                  DM.ibdsStudentID.Value,
                  Integer((fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).use),
                  (fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).tid
                );
                DM.ibdsStudent.Next;
              end;
            end; //if
          end;//for
        end;
        fmSetTeachers.Release;
      end;
    end
    else
    begin
      //Если все проверки пройдены формируем список предметов
      fmSetTeachers := TfmSetTeachers.Create(Self);
      ibdsCurriculumRecord.Params[0].AsInteger := CID;
      ibdsCurriculumRecord.Close;
      ibdsCurriculumRecord.Open;
      ibdsCurriculumRecord.FetchAll;
      ibdsCurriculumRecord.First;
      while not ibdsCurriculumRecord.Eof do
      begin
        if ibdsCurriculumRecord.FieldByName('CLOCK_' + DM.ibdsStudentCLASS.AsString).AsFloat <> 0 then
        begin
          with fmSetTeachers.VLE do
          begin
            InsertRow(ibdsCurriculumRecordSUBJ_NAME.Value, '----', true);
            ItemProps[RowCount - 2].EditStyle := esEllipsis;
            Strings.Objects[RowCount - 2] := USetTeachers.TInf.Create(ibdsCurriculumRecordID.Value, -1, false);
            ItemProps[RowCount - 2].ReadOnly := true;
          end;
        end;
        ibdsCurriculumRecord.Next;
      end;
      if fmSetTeachers.ShowModal = mrOK then
      begin
        //изменяем список преподаватлей
        for i := 0 to fmSetTeachers.VLE.RowCount - 2 do //-2 потому, что заголовок учитывается
        begin
          //проверяем надо ли вообще устанавливать, если -1, то не надо
          if (fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).tid <> -1 then
          begin
            DM.ibdsStudent.First;
            while not DM.ibdsStudent.Eof do
            begin
              DM.AddStudentPlan((fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).CRID,
                  DM.ibdsStudentID.Value,
                  Integer((fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).use),
                  (fmSetTeachers.VLE.Strings.Objects[i] as USetTeachers.TInf).tid);
              DM.ibdsStudent.Next;
            end;
          end; //if
        end;//for
      end; //if ShowModal
      fmSetTeachers.Release;
    end; //else
  end;
  DM.ibdsStudentPlan.Close;
  DM.ibdsStudentPlan.Open;
  DM.ibdsStudent.Close;
  DM.ibdsStudent.Open;
  DM.ibdsStudent.EnableControls;
  DM.ibdsStudent.GotoBookmark(bm);
  DM.ibdsStudent.FreeBookmark(bm);
end;

procedure TfmStudent.miChangeDataClick(Sender: TObject);
var
  tmpID: Integer;

  procedure RunSQLWithParam(SQL: String; P: Variant);
  begin
    if P = -1 then Exit;
    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
    DM.ibqProc.SQL.Clear;
    DM.ibqProc.SQL.Append(SQL);
    if VarIsOrdinal(P) then
      DM.ibqProc.Params[0].AsInteger := P
    else
      DM.ibqProc.Params[0].AsDateTime := P;
    DM.ibqProc.Params[1].AsInteger := DM.ibdsStudentID.Value;
    
    try
      DM.ibqProc.ExecSQL;
    except
      DM.ibqProc.Transaction.Rollback;
    end;
    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
  end;
begin
  fmSetStudentsData := TfmSetStudentsData.Create(Self);
  if fmSetStudentsData.ShowModal = mrOK then
  begin
    DM.ibdsStudent.DisableControls;
    tmpID := DM.ibdsStudentID.Value;

    DM.ibdsStudent.First;
    while not DM.ibdsStudent.Eof do
    begin
      with fmSetStudentsData do
      begin
        case fmSetStudentsData.rgChangeMethod.ItemIndex of
        0, 2: begin
          RunSQLWithParam(
            'UPDATE "Student" S SET "SpecializationID"=:P0 where "ID"=:P1;',
            edSpec.Tag);
          RunSQLWithParam(
            'UPDATE "Student" S SET "MasterID"=:P0 where "ID"=:P1;',
            edCurator.Tag);
          RunSQLWithParam(
            'UPDATE "Student" S SET "FilialID"=:P0 where "ID"=:P1;',
            edFilial.Tag);
          RunSQLWithParam(
            'UPDATE "Student" S SET "Class"=:P0 where "ID"=:P1;',
            cbClass.ItemIndex);
          RunSQLWithParam(
            'UPDATE "Student" S SET "FinancingID"=:P0 where "ID"=:P1;',
            rgFinancing.ItemIndex - 1);
          RunSQLWithParam(
            'UPDATE "Student" S SET "Percent"=:P0 where "ID"=:P1;',
            edPercent.Tag);
          if edEnterDate.Checked then
            RunSQLWithParam('UPDATE "Student" S SET "EnterDate"=:P0 where "ID"=:P1;',
              edEnterDate.DateTime);
          end;
        end;
        if edReleaseDate.Checked then
          case rgChangeMethod.ItemIndex of
            0: RunSQLWithParam(
                'UPDATE "Student" S SET "ReleaseDate"=:P0 where "ID"=:P1;',
                edReleaseDate.DateTime);
            1: if DM.ibdsStudentReleaseDate.IsNull then
              RunSQLWithParam(
                'UPDATE "Student" S SET "ReleaseDate"=:P0 where "ID"=:P1;',
                edReleaseDate.DateTime);
            2: if not DM.ibdsStudentReleaseDate.IsNull then
              RunSQLWithParam(
                'UPDATE "Student" S SET "ReleaseDate"=:P0 where "ID"=:P1;',
                edReleaseDate.DateTime);
          end;
      end;
      DM.ibdsStudent.Next;
    end;

    DM.ibdsStudent.Close;
    DM.ibdsStudent.Open;
    DM.ibdsStudent.Locate('ID', tmpID, []);
    DM.ibdsStudent.EnableControls;
  end;
  fmSetStudentsData.Release;
end;

procedure TfmStudent.miPrintClassWithDatesClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;
  rep.SetMargins;
  rep.ParSet12Arial;
  rep.AddText('\headery300 {\header ');  //верхний колонтитул
  rep.ParSet10Arial;
  rep.AddText('\qr\b Лист \chpgn\par}');
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');
  rep.ParSetTableHead;
  rep.CreateTableMMSz([10, 50, 10, 60, 18, 18, 18, 18], []);
  rep.AddRow(['№', 'Ф.И.О', '\fs16 Класс (пери-од)\fs20', 'Куратор', 'Дата зачисл.',
    'Дата отчисл.', 'Дата академа', 'Дата возврата']);
  rep.ParSetTable;
  BM := DM.ibdsStudent.GetBookmark;
  DM.ibdsStudent.DisableControls;
  DM.ibdsStudent.First;
  i := 1;
  while not DM.ibdsStudent.Eof do
  begin
    rep.AddRow(['\fs24 ' + IntToStr(i), DM.ibdsStudentName.Value,
      DM.ibdsStudentCLASS.AsString +
      '(' + DM.ibdsStudent.FieldByName('PERIOD_FOR_PRINT').AsString + ')',
      DM.ibdsStudentCURATOR.Value,
      '\fs20 ' + DM.ibdsStudentENTERDATE.AsString,
      DM.ibdsStudentRELEASEDATE.AsString,
      DM.ibdsStudentACADEMYBDATE.AsString,
      DM.ibdsStudentACADEMYEDATE.AsString]);
    DM.ibdsStudent.Next;
    inc(i);
  end;
  rep.ParSet10Arial;
  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Список учеников (даты)');
end;

procedure TfmStudent.RefreshCount;
var
  BM: TBookmark;
  c: integer;
begin
  BM := DM.ibdsStudent.GetBookmark;
  DM.ibdsStudent.First;
  DM.ibdsStudent.DisableControls;
  c := 0;
  while not Dm.ibdsStudent.Eof do
  begin
    inc(c);
    DM.ibdsStudent.Next;
  end;
  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;
  sBar.Panels[0].Text := 'Количество учеников: ' +
    IntToStr(c);

end;

procedure TfmStudent.btnDelStudentClick(Sender: TObject);
begin
  if DM.ibdsStudent.IsEmpty then Exit;
  if MessageDlg('Вы действительно хотите удалить запись на ученика' +#13+#10+
    DM.ibdsStudentNAME.Value, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelStudent(DM.ibdsStudentID.Value);
    DM.ibdsStudent.Close;
    DM.ibdsStudent.Open;
  end;
  RefreshCount;
end;

procedure TfmStudent.dbgStudentKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    'а'..'я', 'А'..'Я': edSearch.Text := edSearch.Text + Key;
    #8: edSearch.Text := Copy(edSearch.Text, 1, Length(edSearch.Text) - 1);
    #13: begin
      if DM.ibdsStudent.IsEmpty then Exit;
      edSearch.Text := '';
      btnEditClick(Sender);
    end;
    #27: Close;
    else
      edSearch.Text := '';
  end;
end;

procedure TfmStudent.dbgPlanDblClick(Sender: TObject);
begin
  DM.ibdsStudentPlan.DisableControls;
  fmEdStudentPlan := TfmEdStudentPlan.Create(Self);
  fmEdStudentPlan.cbUse.Checked := DM.ibdsStudentPlanUseBool.Value;
  fmEdStudentPlan.edTeacher.Tag := DM.ibdsStudentPlanTEACHER_ID.Value;
  fmEdStudentPlan.edTeacher.Text := DM.ibdsStudentPlanTEACHER_NAME.Value;
  if fmEdStudentPlan.ShowModal = mrOk then
  begin
    DM.AddStudentPlan(DM.ibdsStudentPlanID.Value, DM.ibdsStudentID.Value,
      Integer(fmEdStudentPlan.cbUse.Checked), nl(fmEdStudentPlan.edTeacher.Tag));
  end;
  fmEdStudentPlan.Release;
  DM.ibdsStudentPlan.Refresh;
  DM.ibdsStudentPlan.EnableControls;
end;

procedure TfmStudent.dbgPlanKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #13: dbgPlanDblClick(Sender);
  end;
end;

procedure TfmStudent.dbgStudentDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TfmStudent.dbgPlanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 46) and (MessageDlg('Вы действительно хотите очистить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    DM.ibdsStudentPlan.DisableControls;
    DM.AddStudentPlan(DM.ibdsStudentPlanID.Value, DM.ibdsStudentID.Value,
      0, Null);
    DM.ibdsStudentPlan.Refresh;
    DM.ibdsStudentPlan.EnableControls;
  end;
end;

procedure TfmStudent.miChangeTeacherClick(Sender: TObject);
var
  BM: TBookmark;
begin
  fmChangeTeacherSTP := TfmChangeTeacherSTP.Create(Self);
  if fmChangeTeacherSTP.ShowModal = mrOK then
  begin
    BM := DM.ibdsStudent.GetBookmark;
    DM.ibdsStudent.DisableControls;

    DM.ibdsStudent.First;
    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
    DM.ibqProc.SQL.Clear;
    DM.ibqProc.SQL.Append(
      'update "Student_Plan" STP '+
      'set STP."TeacherID" = :in_teacher_2 '+
      'where STP."StudentID" = :in_student_id and STP."TeacherID" = :in_teacher_1;'
    );
    DM.ibqProc.ParamByName('in_teacher_1').AsInteger := fmChangeTeacherSTP.edTeacher1.Tag;
    DM.ibqProc.ParamByName('in_teacher_2').AsInteger := fmChangeTeacherSTP.edTeacher2.Tag;

    while not DM.ibdsStudent.Eof do
    begin
      DM.ibqProc.ParamByName('in_student_id').AsInteger := DM.ibdsStudentID.Value;
      try
        DM.ibqProc.ExecSQL;
      except
        DM.ibqProc.Transaction.Rollback;
      end;
      if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
      DM.ibdsStudent.Next;
    end;

    DM.ibdsStudent.GotoBookmark(BM);
    DM.ibdsStudent.FreeBookmark(BM);
    DM.ibdsStudent.EnableControls;

    if fmChangeTeacherSTP.cbWGroup.Checked then
    begin
      DM.ibds.Close;
      DM.ibds.SelectSQL.Clear;
      DM.ibds.SelectSQL.Append(
        'select TG.grouping_id gr_id, TG.gr_subj_id s_id, ' +
        '  TG.class_num cls_num, TG.group_q gr_qty ' +
        'from Teacher_group TG ' +
        'where tg.teacher_id = :in_t_id;');
      DM.ibds.Params[0].AsInteger := fmChangeTeacherSTP.edTeacher1.Tag;
      DM.ibds.Open;
      DM.ibds.First;
      while not DM.ibds.Eof do
      begin
        DM.ibSQL.Close;
        DM.ibSQL.SQL.Text :=
          'SELECT TG.group_q gr_qty ' +
          'FROM Teacher_group TG ' +
          'WHERE TG.teacher_id = :in_t_id and ' +
          '  TG.grouping_id = :in_gr_id and ' +
          '  TG.gr_subj_id = :in_s_id and ' +
          '  TG.class_num = :in_cls_num;';
        DM.ibSQL.ParamByName('in_gr_id').AsInteger := DM.ibds.FieldByName('gr_id').AsInteger;
        DM.ibSQL.ParamByName('in_t_id').AsInteger := fmChangeTeacherSTP.edTeacher2.Tag;
        DM.ibSQL.ParamByName('in_cls_num').AsInteger := DM.ibds.FieldByName('cls_num').AsInteger;
        DM.ibSQL.ParamByName('in_s_id').AsInteger := DM.ibds.FieldByName('s_id').AsInteger;
        DM.ibSQL.ExecQuery;
        if DM.ibSQL.Fields[0].IsNull then
        begin
          //групп и небыло, создаём
          DM.AddTeacherGroup(DM.ibds.FieldByName('gr_id').AsInteger, fmChangeTeacherSTP.edTeacher2.Tag,
            DM.ibds.FieldByName('s_id').AsInteger, DM.ibds.FieldByName('cls_num').AsInteger,
            DM.ibds.FieldByName('gr_qty').AsInteger);
        end
        else
        begin
          //группы были, добавляем
          DM.AddTeacherGroup(DM.ibds.FieldByName('gr_id').AsInteger, fmChangeTeacherSTP.edTeacher2.Tag,
            DM.ibds.FieldByName('s_id').AsInteger, DM.ibds.FieldByName('cls_num').AsInteger,
            DM.ibds.FieldByName('gr_qty').AsInteger + DM.ibSQL.Fields[0].AsInteger);
        end;
        DM.ibds.Next;
      end;
    end;
  end;
  fmChangeTeacherSTP.Free;
end;

procedure TfmStudent.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 12);
end;

procedure TfmStudent.miCopyRecordClick(Sender: TObject);
var
  S: TStrings;
begin
  S := TStringList.Create;
  S.Delimiter := ';';
  Clipboard.Open;
  Clipboard.Clear;
  S.Append('StudentRecord#');
  S.Append(DM.ibdsStudentCODE.AsString);
  S.Append(DM.ibdsStudentNAME.AsString);
  S.Append(DM.ibdsStudentFINANCINGID.AsString);
  S.Append(DM.ibdsStudentCLASS.AsString);
  S.Append(DM.ibdsStudentPERCENT.AsString);
  S.Append(DM.ibdsStudentENTERDATE.AsString);
  S.Append(DM.ibdsStudentBIRTHDATE.AsString);
  S.Append(DM.ibdsStudentRELEASEDATE.AsString);
  S.Append(DM.ibdsStudentRESTOREDATE.AsString);
  S.Append(DM.ibdsStudentACADEMYBDATE.AsString);
  S.Append(DM.ibdsStudentACADEMYEDATE.AsString);
  S.Append(DM.ibdsStudentADDRESS.AsString);
  S.Append(DM.ibdsStudentTELEPHONE.AsString);
  S.Append(DM.ibdsStudentENTERINFO.Value);
  S.Append(DM.ibdsStudentRELEASEINFO.Value);
  S.Append(DM.ibdsStudentRESTOREINFO.Value);
  S.Append(DM.ibdsStudentACADEMYBINFO.Value);
  S.Append(DM.ibdsStudentACADEMYEINFO.Value);
  Clipboard.AsText := S.DelimitedText;
  Clipboard.Close;
  S.Free;
end;

procedure TfmStudent.miPasteRecordClick(Sender: TObject);
var
  S: TStrings;
  d: TDateTime;
begin
  S := TStringList.Create;
  S.Delimiter := ';';
  Clipboard.Open;
  S.DelimitedText := Clipboard.AsText;
  if S.Count = 19 then
  begin
    DM.ibdsStudent.DisableControls;
    fmEdStudent := TfmEdStudent.Create(Self);
    with fmEdStudent do
    begin
      edName.Text := S[2];
      rgFinancing.ItemIndex := StrToIntDef(S[3], 0);
      cbClass.ItemIndex := StrToIntDef(S[4], 0);
      edPercent.Text := S[5];
      edEnterDate.Text := S[6];
      edBirthDate.Text := S[7];
      edReleaseDate.Text := S[8];
      edRestoreDate.Text := S[9];
      edAcademBDate.Text := S[10];
      edAcademEDate.Text := S[11];
      mAddress.Text := S[12];
      edTelephone.Text := S[13];
      edEnterInfo.Text := S[14];
      edReleaseInfo.Text := S[15];
      edRestoreInfo.Text := S[16];
      edAcademBInfo.Text := S[17];
      edAcademEInfo.Text := S[18];
    end;
    fmEdStudent.ShowModal;
    fmEdStudent.Release;
    RefreshCount;
    DM.ibdsStudent.EnableControls;
  end;
  Clipboard.Close;
  S.Free;
end;

procedure TfmStudent.PopupMenuPopup(Sender: TObject);
begin
  Clipboard.Open;
  miPasteRecord.Enabled := pos('StudentRecord#', Clipboard.AsText) <> 0;
  Clipboard.Close;
end;

procedure TfmStudent.MainMenuChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  Clipboard.Open;
  miPaste.Enabled := pos('StudentRecord#', Clipboard.AsText) <> 0;
  Clipboard.Close;
end;

procedure TfmStudent.miRDepTeacherWClick(Sender: TObject);
const
  FIELD_QTY = 11;
var
  rep: TRTReport;
  //S: string[30];
  P: array[0..FIELD_QTY - 1] of Integer;
  s: TStrings;
  i, k: integer;
  Depts: TStrings;
  DeptIDs: TStrings;
  BM: TBookmark;
  IsHeaderPrinted: boolean;
  function FIOToFInicials(V: string): String;
  var
    i: integer;
  begin
    V := Trim(V);
    Result := Copy(V, 1, Pos(' ', V) - 1);
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + ' ' + V[1] + '.';
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + V[1] + '.';
  end;
  procedure PrintHeader;
  begin
    rep.ParSet(fTimes, 12, [fstBold]);
    rep.AddText('\sb50\sa50 ' + 'Отделение: ' + Depts[i] + '\par ');
    rep.ParSetTableHead;

    rep.CreateTable(P, []);
    rep.AddRow(['\b\qc №', 'Ф.И.О. учащегося', 'Кл.', 'Специализация', 'Куратор' ,
      '\fs14 Кол-во гр. мл.', 'Кол-во гр. ст.',
      'мл. ч.', 'ст. ч.', 'конц. ч.', '\fs14 Примечание']);
    rep.ParSet(fTimes, 11);
    IsHeaderPrinted := true;
  end;
begin
  s := TStringList.Create;
  s.Delimiter := '|';

  DM.ibdsStudentFilter.Close;
  DM.ibdsStudentFilter.Open;
  if (not btnFilter.Down) or DM.ibdsStudentFilterTEACHER_ID_1.IsNull then
  begin
    ShowMessage('Настройте и включите фильтр');
    Exit;
  end;
  LocateReportParam('DeptStRepForTeacher', #7#30#5#20#30#15#15#15#15#15#45);

  s.DelimitedText := DM.ibdsReportParamSIZES_1.Value;
  P[0] := StrToInt(s[0])*TWIPS_IN_MM;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + StrToInt(s[i]) * TWIPS_IN_MM;

  FreeAndNil(s);
  rep := TRTReport.Create('DeptStRepForTeacher');


  rep.ParSet(fArial, 12, [fstBold]);
  DM.ibdsTeacher.Locate('ID', VarArrayOf([DM.ibdsStudentFilterTEACHER_ID_1.Value]), []);
  rep.AddText('\qc Преподаватель: ' + DM.ibdsTeacherName.Value);
  rep.AddPar('');

  BM := DM.ibdsStudent.GetBookmark;
  Depts := TStringList.Create;
  DeptIDs := TStringList.Create;
  DeptIDs.Delimiter := ',';

  DM.ibdsStudent.DisableControls;
  DM.ibdsStudent.First;

  while not DM.ibdsStudent.Eof do
  begin
    if Depts.IndexOfObject(TObject(DM.ibdsStudentDEPARTMENTID.Value)) = -1 then
    begin
      Depts.AddObject(DM.ibdsStudentDEPARTMENT.Value, TObject(DM.ibdsStudentDEPARTMENTID.Value));
      DeptIDs.Add(DM.ibdsStudentDEPARTMENTID.AsString);
    end;
    DM.ibdsStudent.Next;
  end;

  for i := 0 to Depts.Count - 1 do
  begin
    IsHeaderPrinted := False;

    DM.ibdsStudent.First;
    k := 1;
    while not DM.ibdsStudent.Eof do
    begin
      //DM.ibds.First;

      if (Depts.IndexOfObject(TObject(DM.ibdsStudentDEPARTMENTID.Value)) = i) then
      begin
        DM.ibds.Close;
        DM.ibds.SelectSQL.Clear;
        DM.ibds.SelectSQL.Append(
' select ' +
'   sum(CASE WHEN cc.category = 0 AND s."Code" = 0 THEN CRT.c_time ELSE NULL END) TIME_Y, ' +
'   sum(CASE WHEN cc.category = 1 AND s."Code" = 0 THEN CRT.c_time ELSE NULL END) TIME_O, ' +
'   sum(CASE WHEN s."Code" != 0 THEN CRT.c_time ELSE NULL END) TIME_C' +
' from "Student" ST ' +
'   INNER JOIN "Specialization" SP ON ' +
'     SP.id = ST."SpecializationID" ' +
'   INNER JOIN "Department" D ON D.id = SP."DepartmentID" ' +
'   INNER JOIN curriculum C ON D."CurriculumID" = C.id ' +
'   INNER JOIN "Student_Plan" STP ON ST.id = STP."StudentID" ' +
'   INNER JOIN curr_rec CR ON CR.curr_id = C.id AND STP.curr_rec_id = CR.id and CR.GROUP_QTY = 1 ' +
'   INNER JOIN curr_rec_time CRT on CRT.curr_id = C.id and CRT.curr_rec_id = CR.id and ' +
'     ST."Class" = CRT.class_num and CRT.c_time > 0 ' +
'   INNER JOIN curr_cat cc on cc.curr_id = c.id AND st."Class" = cc.class_num ' +
'   INNER JOIN "Subject" s ON s.id = cr.subject_id ' +
' WHERE ST.released = 0 and ST.academy = 0 and STP."Use" > 0 AND st.id = :st_id AND stp."TeacherID" = :t_id '
//          'SELECT TIME_Y, TIME_O, TIME_C FROM V_STUDENT_CURATOR_CLOCK vscc WHERE vscc.ID_STUDENT = :st_id AND vscc.ID_TEACHER = :t_id'
        );
        DM.ibds.ParamByName('st_id').AsInteger := DM.ibdsStudentID.Value;
        DM.ibds.ParamByName('t_id').AsInteger := DM.ibdsStudentFilterTEACHER_ID_1.Value;
        DM.ibds.Open;

        if not DM.ibds.IsEmpty then
        begin
          if not IsHeaderPrinted then PrintHeader;
          rep.AddRow([IntToStr(k), DM.ibdsStudentName.Value,
            DM.ibdsStudentCLASS.AsString + '(' + DM.ibdsStudent.FieldByName('PERIOD_FOR_PRINT').AsString + ')',
            DM.ibdsStudentSpecialization.Value,
            FIOToFInicials(DM.ibdsStudentCURATOR.Value),
            '',
            '',
            '\qr ' + dFormat(DM.ibds.FieldByName('TIME_Y').AsFloat),
            '\qr ' + dFormat(DM.ibds.FieldByName('TIME_O').AsFloat),
            '\qr ' + dFormat(DM.ibds.FieldByName('TIME_C').AsFloat),
            '\ql '
          ]);
          inc(k);
        end;
      end;

      DM.ibdsStudent.Next;
    end;
    DM.ibds.Close;
    DM.ibds.SelectSQL.Clear;
    DM.ibds.SelectSQL.Append('SELECT * FROM PROC_TEACHER_REPORT(:t_id, :dept_id)');
    DM.ibds.ParamByName('dept_id').AsInteger := Integer(Depts.Objects[i]);
    DM.ibds.ParamByName('t_id').AsInteger := DM.ibdsStudentFilterTEACHER_ID_1.Value;
    DM.ibds.Open;
    DM.ibds.First;

    while not DM.ibds.Eof do
    begin
      if not IsHeaderPrinted then PrintHeader;
      rep.AddRow([
        IntToStr(k),
        DM.ibds.Fields[0].AsString,
        DM.ibds.Fields[1].AsString + '(' + DM.ibds.Fields[2].AsString + ')',
        '', '',
        '\qr ' + DM.ibds.Fields[3].AsString,
        DM.ibds.Fields[4].AsString,
        dFormat(DM.ibds.Fields[5].AsFloat),
        dFormat(DM.ibds.Fields[6].AsFloat),
        dFormat(DM.ibds.Fields[7].AsFloat),
        '\ql '
      ]);
      DM.ibds.Next;
      inc(k);
    end;
    rep.AddText('\pard ');
  end;

  DM.ibds.Close;
  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;

  rep.SaveAndExecuteReport(Handle, 'Отчет для педагога по ученикам');
end;

procedure TfmStudent.miRDepTeacherParamsClick(Sender: TObject);
begin
  fmDeptStTRepParam := TfmDeptStTRepParam.Create(Self);
  fmDeptStTRepParam.ShowModal;
  fmDeptStTRepParam.Release;
end;

procedure TfmStudent.dbgStudentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN] then edSearch.Text := '';
end;

procedure TfmStudent.dbgStudentMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edSearch.Text := '';
end;

procedure TfmStudent.dbgPlanEnter(Sender: TObject);
begin
  edSearch.Text := '';
end;

procedure TfmStudent.dbgStudentEnter(Sender: TObject);
begin
  edSearch.Text := '';
end;

procedure TfmStudent.dbgStudentCellClick(Column: TColumn);
begin
  edSearch.Text := '';
end;

procedure TfmStudent.miFIOAddrCClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
begin

  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.ParSet12Arial;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('\par');
  rep.ParSetTableHead;
  rep.CreateTableMMSz([10, 50, 35, 65, 35], []);
  rep.AddRow(['№', 'Ф.И.О', 'Куратор', 'Адрес', 'Телефон']);
  rep.ParSetTable;
  BM := DM.ibdsStudent.GetBookmark;
  DM.ibdsStudent.DisableControls;
  DM.ibdsStudent.First;
  i := 1;
  while not DM.ibdsStudent.Eof do
  begin
    rep.AddRow([IntToStr(i), DM.ibdsStudentName.Value,
      FIOToFInicials(DM.ibdsStudentCURATOR.Value),
      DM.ibdsStudentADDRESS.Value, DM.ibdsStudentTELEPHONE.Value]);
    DM.ibdsStudent.Next;
    inc(i);
  end;

  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Список учеников (Ф.И.О., куратор, адрес, тел.)');
end;

procedure TfmStudent.miPrintOnDeptForTeacherSubjClick(Sender: TObject);
const
  FIELD_QTY = 9;
var
  rep: TRTReport;
  S: string[30];
  P: array[0..FIELD_QTY - 1] of Integer;
  i, k: integer;
  Depts: TStrings;
  DeptIDs: TStrings;
  BM: TBookmark;
  IsHeaderPrinted: boolean;
  function FIOToFInicials(V: string): String;
  var
    i: integer;
  begin
    V := Trim(V);
    Result := Copy(V, 1, Pos(' ', V) - 1);
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + ' ' + V[1] + '.';
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + V[1] + '.';
  end;
  procedure PrintHeader;
  begin
    rep.ParSet(fTimes, 12, [fstBold]);
    rep.AddText('\sb50\sa50 ' + 'Отделение: ' + Depts[i] + '\par ');
    rep.ParSetTableHead;

    rep.CreateTable(P, []);
    rep.AddRow([
      '\b\qc №',
      'Ф.И.О. учащегося',
      'Кл.',
      'Специализация',
      'Куратор' ,
      'Преподаватель',
      '\fs14 Кол-во гр.',
      'Кол-во часов', '\fs20 Примечание']);
    rep.ParSet(fTimes, 11);
    IsHeaderPrinted := true;
  end;
begin
  DM.ibdsStudentFilter.Close;
  DM.ibdsStudentFilter.Open;
  if (not btnFilter.Down) or DM.ibdsStudentFilterSUBJECT_ID_1.IsNull then
  begin
    ShowMessage('Настройте и включите фильтр');
    Exit;
  end;
  LocateReportParam('DeptStRepForTeacherSubj', #5#40#10#33#30#30#10#10#25);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*TWIPS_IN_MM;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1]) * TWIPS_IN_MM;

  rep := TRTReport.Create('DeptStRepForTeacherSubj');

  rep.ParSet(fArial, 12, [fstBold]);
  rep.AddText('\qc Предмет: ' + DM.ibdsStudentFilterSUBJECT_NAME_1.Value);
  rep.AddPar('');

  BM := DM.ibdsStudent.GetBookmark;
  Depts := TStringList.Create;
  DeptIDs := TStringList.Create;
  DeptIDs.Delimiter := ',';

  DM.ibdsStudent.DisableControls;
  DM.ibdsStudent.First;

  while not DM.ibdsStudent.Eof do
  begin
    if Depts.IndexOfObject(TObject(DM.ibdsStudentDEPARTMENTID.Value)) = -1 then
    begin
      Depts.AddObject(DM.ibdsStudentDEPARTMENT.Value, TObject(DM.ibdsStudentDEPARTMENTID.Value));
      DeptIDs.Add(DM.ibdsStudentDEPARTMENTID.AsString);
    end;
    DM.ibdsStudent.Next;
  end;

  for i := 0 to Depts.Count - 1 do
  begin
    IsHeaderPrinted := False;

    DM.ibdsStudent.First;
    k := 1;
    while not DM.ibdsStudent.Eof do
    begin
      DM.ibds.Close;
      DM.ibds.SelectSQL.Clear;
      DM.ibds.SelectSQL.Append(
        'select T."Name", sum(CRT.c_time) ' +
        'from "Student" ST ' +
        'join "Specialization" SP on ' +
        '  SP.id = ST."SpecializationID" and ST.id = :st_id ' +
        'join "Department" D on D.id = SP."DepartmentID" and D.ID = :d_id ' +
        'join curriculum C on D."CurriculumID" = C.id ' +
        'join "Student_Plan" STP on ST.id = STP."StudentID" ' +
        'join curr_rec CR on CR.curr_id = C.id and STP.curr_rec_id = CR.id ' +
        'join "Teacher" T on T.ID = STP."TeacherID" ' +
        'join "Subject" S ON S.ID = CR.SUBJECT_ID ' +
        '  and CR.GROUP_QTY = 1 ' +
        'join curr_rec_time CRT on CRT.curr_id = C.id and ' +
        '  CRT.curr_rec_id = CR.id and ST."Class" = CRT.class_num and ' +
        '  CRT.c_time > 0 ' +
        'where ST.released = 0 and ST.academy = 0 and STP."Use" > 0 and ' +
        ' S.ID = :s_id ' +
        'GROUP BY T."Name";'
      );
      DM.ibds.ParamByName('st_id').AsInteger := DM.ibdsStudentID.Value;
      DM.ibds.ParamByName('s_id').AsInteger := DM.ibdsStudentFilterSUBJECT_ID_1.Value;
      DM.ibds.ParamByName('d_id').AsInteger := Integer(Depts.Objects[i]);
      DM.ibds.Open;
      //DM.ibds.First;

      if (not DM.ibds.Fields[0].IsNull) and
        (Depts.IndexOfObject(TObject(DM.ibdsStudentDEPARTMENTID.Value)) = i) then
      begin
        if not IsHeaderPrinted then PrintHeader;
        rep.AddRow([IntToStr(k),
          DM.ibdsStudentName.Value,
          DM.ibdsStudentCLASS.AsString + '(' + DM.ibdsStudent.FieldByName('PERIOD_FOR_PRINT').AsString + ')',
          DM.ibdsStudentSpecialization.Value,
          FIOToFInicials(DM.ibdsStudentCURATOR.Value),
          FIOToFInicials(DM.ibds.Fields[0].AsString),
          '',
          '\qr ' + dFormat(DM.ibds.Fields[1].AsFloat),
          '\ql '
        ]);
        inc(k);
      end;

      DM.ibdsStudent.Next;
    end;
    DM.ibds.Close;
    DM.ibds.SelectSQL.Clear;
    DM.ibds.SelectSQL.Append(
      'select distinct GS.name, TG.class_num, C.period, TG.group_q, CRT.c_time*TG.group_q ' +
      'from teacher_group TG ' +
      'join grouping_subj GS on TG.grouping_id = GS.grouping_id and ' +
      '  GS.ID = TG.gr_subj_id ' +
      'join grouping_subj_curr_id GSCI on ' +
      '  GSCI.grouping_id = TG.grouping_id and ' +
      '  GSCI.grouping_subj_id = TG.gr_subj_id ' +
      'join grouping_dept GD on TG.grouping_id = GD.grouping_id ' +
      'join "Department" D on D.id = GD.department_id ' +
      'join curriculum C on C.id = D."CurriculumID" and ' +
      '  GSCI.curr_id = C.id ' +
      'join curr_rec_time CRT on CRT.curr_id = C.id and ' +
      '  CRT.curr_rec_id = GSCI.curr_rec_id and ' +
      '  CRT.class_num = TG.class_num ' +
      'where TG.teacher_id = :t_id and ' +
      '  D.id = :dept_id and  ' +
      '  D.id in ' +
      ' (select min(D1.id) ' +
      '  from grouping_dept GD1 ' +
      '    join grouping_subj_curr_id GSCI1 on ' +
      '      GSCI1.grouping_id = TG.grouping_id and ' +
      '      GSCI1.grouping_subj_id = TG.gr_subj_id and ' +
      '      GD1.grouping_id = TG.grouping_id ' +
      '    join "Department" D1 on ' +
      '      GD1.department_id = D1.id and ' +
      '      D1."CurriculumID" = GSCI1.curr_id ' +
      '  where D1.id in (' + DeptIDs.DelimitedText + ')) ' +
      'order by TG.grouping_id, GS.id;'
    );
    DM.ibds.ParamByName('dept_id').AsInteger := Integer(Depts.Objects[i]);
    DM.ibds.ParamByName('t_id').AsInteger := DM.ibdsStudentFilterTEACHER_ID_1.Value;
    DM.ibds.Open;
    DM.ibds.First;

    while not DM.ibds.Eof do
    begin
      if not IsHeaderPrinted then PrintHeader;
      rep.AddRow([
        IntToStr(k),
        DM.ibds.Fields[0].AsString,
        DM.ibds.Fields[1].AsString + '(' + DM.ibds.Fields[2].AsString + ')',
        DM.ibds.Fields[0].AsString,
        '', '',
        '\qr ' + DM.ibds.Fields[3].AsString,
        dFormat(DM.ibds.Fields[4].AsFloat), '\ql '
      ]);
      DM.ibds.Next;
      inc(k);
    end;
    rep.AddText('\pard ');
  end;

  DM.ibds.Close;
  DM.ibdsStudent.GotoBookmark(BM);
  DM.ibdsStudent.FreeBookmark(BM);
  DM.ibdsStudent.EnableControls;

  rep.SaveAndExecuteReport(Handle, 'Отчет для педагога по ученикам');
end;

procedure TfmStudent.miPrintFoTeacherClick(Sender: TObject);
const
  FIELD_QTY = 11;
var
  rep: TRTReport;
  //S: string[30];
  P: array[0..FIELD_QTY - 1] of Integer;
  s: TStrings;
  i, k: integer;
  Depts: TStrings;
  DeptIDs: TStrings;
  BM: TBookmark;
  IsHeaderPrinted: boolean;
  QtyY, QtyO: Integer;
  TimeY, TimeO, TimeC:  Double;

  function FIOToFInicials(V: string): String;
  var
    i: integer;
  begin
    V := Trim(V);
    Result := Copy(V, 1, Pos(' ', V) - 1);
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + ' ' + V[1] + '.';
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + V[1] + '.';
  end;
  procedure PrintHeader;
  begin
    rep.ParSet(fTimes, 12, [fstBold]);
    rep.ParSetTableHead;

    rep.CreateTable(P, []);
    rep.AddRow(['\b\qc №', 'Ф.И.О. учащегося (предмет)', 'Кл.', 'Специализация', 'Куратор' ,
      '\fs14 гр. мл.', 'гр. ст.',
      'мл. ч.', 'ст. ч.', 'конц. ч.', '\fs16 Примечание\fs20']);
    rep.ParSet(fTimes, 11);
    IsHeaderPrinted := true;
  end;
begin
  QtyY := 0; QtyO := 0;
  TimeY := 0; TimeO := 0; TimeC := 0;

  s := TStringList.Create;
  s.Delimiter := '|';

  DM.ibdsStudentFilter.Close;
  DM.ibdsStudentFilter.Open;
  if (not btnFilter.Down) or DM.ibdsStudentFilterTEACHER_ID_1.IsNull then
  begin
    ShowMessage('Настройте и включите фильтр');
    Exit;
  end;
  LocateReportParam('DeptStRepForTeacher', #7#30#5#20#30#15#15#15#15#15#45);

  s.DelimitedText := DM.ibdsReportParamSIZES_1.Value;
  P[0] := StrToInt(s[0])*TWIPS_IN_MM;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + StrToInt(s[i]) * TWIPS_IN_MM;

  FreeAndNil(s);
  rep := TRTReport.Create('DeptStRepForTeacher');


  rep.ParSet(fArial, 12, [fstBold]);
  DM.ibdsTeacher.Locate('ID', VarArrayOf([DM.ibdsStudentFilterTEACHER_ID_1.Value]), []);
  rep.AddText('\qc Преподаватель: ' + DM.ibdsTeacherName.Value);
  rep.AddPar('');

  PrintHeader;

  k := 1;
  DM.ibds.Close;
  DM.ibds.SelectSQL.Clear;
  DM.ibds.SelectSQL.Append(
    ' SELECT vst.NAME, vst.CLASS, vst.PERIOD, vst.SPECIALIZATION, vst.CURATOR, TIME_Y, TIME_O, TIME_C, CLC.CLOCKS ' +
    ' FROM get_filtred_student(1) fs ' +
    '   LEFT JOIN VIEW_STUDENT vst ON vst.id = fs.id ' +
    '   INNER JOIN V_STUDENT_CURATOR_CLOCK vscc ON ' +
    '     fs.id = vscc.id_student ' +
    '   LEFT JOIN GET_ST_I_SUBJ_CLOCKS_CSV(:t_id, fs.id) CLC ON 1 = 1 ' +
    'WHERE vscc.ID_TEACHER = :t_id ' +
    'ORDER BY vst.NAME '
  );
    //    DM.ibds.ParamByName('st_id').AsInteger := DM.ibdsStudentID.Value;
  DM.ibds.ParamByName('t_id').AsInteger := DM.ibdsStudentFilterTEACHER_ID_1.Value;
  DM.ibds.Open;

  while not DM.ibds.Eof do
  begin
    rep.AddRow([
      '\fs20 ' + IntToStr(k),
      DM.ibds.FieldByName('NAME').AsString,
      DM.ibds.FieldByName('CLASS').AsString + '(' + DM.ibds.FieldByName('PERIOD').AsString + ')',
      DM.ibds.FieldByName('SPECIALIZATION').AsString,
      FIOToFInicials(DM.ibds.FieldByName('CURATOR').AsString),
      '',
      '',
      '\qr ' + dFormat(DM.ibds.FieldByName('TIME_Y').AsFloat),
      '\qr ' + dFormat(DM.ibds.FieldByName('TIME_O').AsFloat),
      '\qr ' + dFormat(DM.ibds.FieldByName('TIME_C').AsFloat),
      '\ql \fs16 ' + DM.ibds.FieldByName('CLOCKS').AsString
    ]);
    inc(k);
    TimeY := TimeY + DM.ibds.FieldByName('TIME_Y').AsFloat;
    TimeO := TimeO + DM.ibds.FieldByName('TIME_O').AsFloat;
    TimeC := TimeC + DM.ibds.FieldByName('TIME_C').AsFloat;

    DM.ibds.Next;
    //rep.AddText('\pard ');
  end;

  DM.ibds.Close;
  DM.ibds.SelectSQL.Clear;
  DM.ibds.SelectSQL.Append(
    ' SELECT gs.name, vtgt.class_num, vtgt.period, ' +
    '    vtgt.qty_y, vtgt.qty_o, ' +
    '    vtgt.time_y, vtgt.time_o, vtgt.time_c ' +
    ' FROM v_teacher_group_time vtgt ' +
    '   LEFT JOIN grouping_subj gs ON ' +
    '     vtgt.id_grouping = gs.grouping_id AND ' +
    '     vtgt.id_grouping_subj = gs.id ' +
    ' WHERE vtgt.id_teacher = :t_id ' +
    ' ORDER BY gs.name '
  );
    //DM.ibds.ParamByName('dept_id').AsInteger := Integer(Depts.Objects[i]);
  DM.ibds.ParamByName('t_id').AsInteger := DM.ibdsStudentFilterTEACHER_ID_1.Value;
  DM.ibds.Open;
  DM.ibds.First;

  while not DM.ibds.Eof do
  begin
    rep.AddRow([
      '\fs20 ' + IntToStr(k),
      DM.ibds.Fields[0].AsString,
      DM.ibds.Fields[1].AsString + '(' + DM.ibds.Fields[2].AsString + ')',
      '', '',
      '\qr ' + DM.ibds.Fields[3].AsString,
      DM.ibds.Fields[4].AsString,
      dFormat(DM.ibds.Fields[5].AsFloat),
      dFormat(DM.ibds.Fields[6].AsFloat),
      dFormat(DM.ibds.Fields[7].AsFloat),
      '\ql '
    ]);
    QtyY := QtyY + DM.ibds.Fields[3].AsInteger;
    QtyO := QtyO + DM.ibds.Fields[4].AsInteger;
    TimeY := TimeY + DM.ibds.Fields[5].AsFloat;
    TimeO := TimeO + DM.ibds.Fields[6].AsFloat;
    TimeC := TimeC + DM.ibds.Fields[7].AsFloat;
    DM.ibds.Next;
    inc(k);
  end;

    rep.AddRow([
      IntToStr(k),
      '\b ' + 'ИТОГО' + '\b0 ',
      '',
      '', '',
      '\qr ' + iFormat(QtyY),
      iFormat(QtyO),
      dFormat(TimeY),
      dFormat(TimeO),
      dFormat(TimeC),
      '\ql '
    ]);

  DM.ibds.Close;

  rep.SaveAndExecuteReport(Handle, 'Отчет для педагога по ученикам');
end;

procedure TfmStudent.IBEventsEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
var
  id: Integer;
begin
  try
    DM.ibdsStudent.DisableControls;
    id := DM.ibdsStudentID.Value;
    DM.ibdsStudent.Close;
    DM.ibdsStudent.Open;
    DM.ibdsStudent.Locate('ID', id, []);
  finally
    DM.ibdsStudent.EnableControls;
  end;
end;

end.
