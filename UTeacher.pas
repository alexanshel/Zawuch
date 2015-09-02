unit UTeacher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DB, Grids, DBGrids, ExtCtrls, Menus,
  Mask, IBCustomDataSet, IBQuery, ComCtrls, URTReport, ShellAPI, RXDBCtrl,
  Placemnt, Clipbrd, ActnList, ToolWin, JvExDBGrids, JvDBGrid, ImgList,
  IBEvents, frxClass, frxExportRTF, frxDBSet, JvHtControls, JvExStdCtrls,
  JvDBHTLabel, JvHLEditorPropertyForm;

type
  TfmTeacher = class(TForm)
    MainMenu: TMainMenu;
    miClose: TMenuItem;
    dsTeacher: TDataSource;
    dsTeacherAdding: TDataSource;
    dsTeacherTM: TDataSource;
    N1: TMenuItem;
    miRepN: TMenuItem;
    N2: TMenuItem;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    miHelp: TMenuItem;
    FormStorage1: TFormStorage;
    N4: TMenuItem;
    miWordSrRepTs: TMenuItem;
    miParamStRepTs: TMenuItem;
    PopupMenu: TPopupMenu;
    miCopyRecord: TMenuItem;
    miPasteRecord: TMenuItem;
    N5: TMenuItem;
    miCopy: TMenuItem;
    miPaste: TMenuItem;
    miRepName: TMenuItem;
    miRepNSPAT: TMenuItem;
    miNSP: TMenuItem;
    miTeacherLoad: TMenuItem;
    ActionList1: TActionList;
    aTitleEdit: TAction;
    dsTitle: TDataSource;
    ibdsTitle: TIBDataSet;
    ImageList1: TImageList;
    aTitleAdd: TAction;
    aTitleDel: TAction;
    ibdsTitleF_ID: TIntegerField;
    ibdsTitleF_NAME: TIBStringField;
    ibdsCategory: TIBDataSet;
    dsCategory: TDataSource;
    ibdsCategoryF_ID: TIntegerField;
    ibdsCategoryF_NAME: TIBStringField;
    dsCategoryConst: TDataSource;
    ibdsCategoryConc: TIBDataSet;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBEvents: TIBEvents;
    aPrintWithPerc: TAction;
    frxRTeacherPercents: TfrxReport;
    frxDBDSTeacherPercents: TfrxDBDataset;
    frxRTFExport: TfrxRTFExport;
    ibdsTeacherPercents: TIBDataSet;
    N6: TMenuItem;
    JvHLEdPropDlg1: TJvHLEdPropDlg;
    ibdsReports: TIBDataSet;
    ibdsReportsID: TIntegerField;
    ibdsReportsNAME: TIBStringField;
    ibdsReportsDATA: TMemoField;
    miFioTitle: TMenuItem;
    aPrintWithCategory: TAction;
    N3: TMenuItem;
    frxTeachersWithCat: TfrxReport;
    frxDBDSReportWithCat: TfrxDBDataset;
    ibdsReportWithCat: TIBDataSet;
    miAddings: TMenuItem;
    procedure miCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddTeacherClick(Sender: TObject);
    procedure btnEditTeacherClick(Sender: TObject);
    procedure dbgTeacherDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edSearchChange(Sender: TObject);
    procedure btnDelTeacherClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFilterClick(Sender: TObject);
    procedure miRepAddressClick(Sender: TObject);
    procedure miRepNClick(Sender: TObject);
    procedure dbgTeacherDblClick(Sender: TObject);
    procedure dbgTeacherKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
    procedure miWordStRepClick(Sender: TObject);
    procedure miParamStRepClick(Sender: TObject);
    procedure miWordSrRepTsClick(Sender: TObject);
    procedure miCopyRecordClick(Sender: TObject);
    procedure miPasteRecordClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure MainMenuChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure miRepNameClick(Sender: TObject);
    procedure miRepNSPATClick(Sender: TObject);
    procedure miNSPClick(Sender: TObject);
    procedure miTeacherLoadClick(Sender: TObject);
    procedure dbgTeacherKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgTeacherCellClick(Column: TColumn);
    procedure IBEventsEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure aPrintWithPercExecute(Sender: TObject);
    procedure miFioTitleClick(Sender: TObject);
    procedure aPrintWithCategoryExecute(Sender: TObject);
    procedure miAddingsClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn;
    procedure RefreshCount;
  public
    isLookupMode: boolean;
    { Public declarations }
  end;

var
  fmTeacher: TfmTeacher;

implementation

uses UDM, UEdTeacher, UTeacherFilter, UStRepFTParam, uTeacherAddings;

{$R *.dfm}

procedure TfmTeacher.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmTeacher.FormCreate(Sender: TObject);
begin
  DM.ibdsTeacher.Close;
  // ��������� ����� ��� ����������
  DM.ibdsTeacher.ParamByName('filter_id').Value := Null;
  DM.ibdsTeacher.Open;
  DM.ibdsTeacherTM.Close;
  DM.ibdsTeacherTM.Open;

  dsTeacher.DataSet := DM.ibdsTeacher;
  DM.ibdsTeacherAddings.DataSource := dsTeacher;
  dsTeacherAdding.DataSet := DM.ibdsTeacherAddings;
  dsTeacherTM.DataSet := DM.ibdsTeacherTM;
  DM.ibdsTeacherTM.DataSource := dsTeacher;
  ibdsTitle.Open;
  ibdsCategory.Open;
  IBEvents.RegisterEvents;  
  CheckBtn;
  isLookupMode := false;

  RefreshCount;
end;

procedure TfmTeacher.btnAddTeacherClick(Sender: TObject);
begin
  fmEdTeacher := TfmEdTeacher.Create(Self);
  fmEdTeacher.ShowModal;
  fmEdTeacher.Release;
  CheckBtn;
  RefreshCount;
end;

procedure TfmTeacher.CheckBtn;
begin
  btnDelTeacher.Enabled := DM.ibdsTeacher.RecordCount <> 0;
  btnEditTeacher.Enabled := btnDelTeacher.Enabled;
end;

procedure TfmTeacher.btnEditTeacherClick(Sender: TObject);
begin
  if DM.ibdsTeacherID.Value = 0 then Exit;
  fmEdTeacher := TfmEdTeacher.Create(Self);
  fmEdTeacher.EditMode := true;
  fmEdTeacher.ShowModal;
  fmEdTeacher.Release;
  DM.ibdsTeacherTM.Close;
  DM.ibdsTeacherTM.Open;
end;

procedure TfmTeacher.dbgTeacherDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //
  if gdSelected in State then Exit;
  if not DM.ibdsTeacherisWorking.Value then
    dbgTeacher.Canvas.Font.Color := clRed
  else
    dbgTeacher.Canvas.Font.Color := clBlack;
  if DM.ibdsTeacherID.Value = 0 then
    dbgTeacher.Canvas.Font.Color := clBlue;  
  //if Column.Field.AsString = '0' then
  //  dbgCurrRec.Canvas.Font.Color := dbgCurrRec.Canvas.Brush.Color;
  dbgTeacher.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmTeacher.edSearchChange(Sender: TObject);
begin
  if edSearch.Text <> '' then
    DM.ibdsTeacher.Locate('Name', VarArrayOf([edSearch.Text]), [loCaseInsensitive, loPartialKey])
end;

procedure TfmTeacher.btnDelTeacherClick(Sender: TObject);
begin
  if DM.ibdsTeacher.IsEmpty then Exit;

  DM.ibds.Close;
  DM.ibds.SelectSQL.Text :=
    'select first 1 * from "Student_Plan" STP where STP."TeacherID" = :in_t_id;';
  DM.ibds.Params[0].AsInteger := DM.ibdsTeacherID.Value;
  DM.ibds.Open;
  if not DM.ibds.IsEmpty then
    if MessageDlg('��������! ������ ������������� ���������� � ���������� ��������.' + #13#10 +
      '��� ������������� �������� ������ ������� �������������' + #13#10 +
      '����� ������������ ���������������� ����.' + #13#10 +
      '�� ����� ������� �������������?',
      mtWarning, [mbYes, mbNo], 0) = mrNo then Exit
    else DM.DelTeacher(DM.ibdsTeacherID.Value)
  else
    if MessageDlg('�� ������������� ������ ������� �������������?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then DM.DelTeacher(DM.ibdsTeacherID.Value);
  DM.ibdsTeacher.Close;
  DM.ibdsTeacher.Open;
  RefreshCount;
end;

procedure TfmTeacher.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ibdsTitle.Close;
  ibdsCategory.Close;
  DM.ibdsTeacherTM.DataSource := nil;
  DM.ibdsTeacherAddings.DataSource := nil;
  dsTeacherAdding.DataSet := nil;
  dsTeacherTM.DataSet := nil;
  dsTeacher.DataSet := nil;
  DM.ibdsTeacher.Filtered := false;
end;

procedure TfmTeacher.btnFilterClick(Sender: TObject);
var
  teacherID: Integer;
begin
  teacherID := DM.ibdsTeacherID.Value;

  fmTeacherFilter := TfmTeacherFilter.Create(Self);
  fmTeacherFilter.ShowModal;
  fmTeacherFilter.Release;
  btnFilter.Down := DM.ibdsTeacher.Filtered;
  DM.ibdsTeacher.Close;
  if btnFilter.Down then
    DM.ibdsTeacher.Params.ByName('filter_id').Value :=
      DM.ibdsTeacherFilterID.Value
  else
    DM.ibdsTeacher.Params.ByName('filter_id').Value := Null;
  DM.ibdsTeacher.Open;
  DM.ibdsTeacher.Locate( 'ID', teacherID, []);

  RefreshCount;
  //btnNoFltr.Down := true;

  //else btnFilter.Font.Color := clBlack;
end;

procedure TfmTeacher.miRepAddressClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
begin
  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');  
  rep.CreateTableMMSz([10, 70, 75, 40], []);
  rep.ParSetTableHead;
  rep.AddRow(['�', '�.�.�.', '�����', '�������']);
  rep.ParSetTable;
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;

  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow([IntToStr(i), DM.ibdsTeacherName.Value, DM.ibdsTeacherAddress.Value,
        DM.ibdsTeacherTelephone.Value]);
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;
  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
  rep.SaveAndExecuteReport(Handle, '�.�.�, �����, ������� ��������������');
end;

procedure TfmTeacher.miRepNClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
  YT, OT, CT: Double;
begin
  YT := 0; OT := 0; CT := 0;
  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');   
  rep.ParSet(fTimes, 12, [fstBold]);
  rep.AddPar('\qc�������� ��������������\line');

  rep.ParSetTableHead;
  rep.CreateTableMMSz([10, 45, 35, 20, 30, 13, 13, 13, 15], []);
  rep.AddRow(['�', '�.�.�.', '�������', '�����������',
    '���������', '\fs20��. ����', '��. ����', '����. ����', '����� ����\b0']);
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;

  rep.ParSetTable;
  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    DM.ibdsTeacherTM.Close;
    DM.ibdsTeacherTM.Params[0].AsInteger := DM.ibdsTeacherID.Value;
    DM.ibdsTeacherTM.Open;
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow(['\ql ' + IntToStr(i), DM.ibdsTeacherName.Value, DM.ibdsTeacherSubject.Value,
        DM.ibdsTeacherEducation.Value, DM.ibdsTeacherPost.Value,
        '\qr ' + dFormat(DM.ibdsTeacherTMOUTYTIME.Value),
        dFormat(DM.ibdsTeacherTMOUTOTIME.Value),
        dFormat(DM.ibdsTeacherTMOUTCTIME.Value),
        dFormat(DM.ibdsTeacherTMOUTSUMTIME.Value)]);
      YT := YT + DM.ibdsTeacherTMOUTYTIME.Value;
      OT := OT + DM.ibdsTeacherTMOUTOTIME.Value;
      CT := CT + DM.ibdsTeacherTMOUTCTIME.Value;
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;
  rep.AddRow(['', '\ql �����', '', '', '', '\qr ' +  dFormat(YT), dFormat(OT), dFormat(CT), dFormat(YT + OT +CT)]);  
  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
  rep.SaveAndExecuteReport(Handle, '�������� ��������������');
end;

procedure TfmTeacher.dbgTeacherDblClick(Sender: TObject);
begin
  if isLookupMode then Close
  else btnEditTeacherClick(Sender);
end;

procedure TfmTeacher.dbgTeacherKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '�'..'�':  edSearch.Text := edSearch.Text + Key;
    #8:
      edSearch.Text := Copy(edSearch.Text, 1, Length(edSearch.Text) - 1);
    #13: begin
      edSearch.Text := '';
      dbgTeacherDblClick(Sender);
    end;
    #27: Close;
    else
      edSearch.Text := '';
  end;
end;

procedure TfmTeacher.RefreshCount;
var
  BM: TBookmark;
  c: Integer;
begin
  if not DM.ibdsTeacher.Filtered then
  begin
    DM.ibdsTeacher.FetchAll;
    stBar.Panels[0].Text := '���������� ��������������: ' +
      IntToStr(DM.ibdsTeacher.RecordCount);
    Exit;
  end;

  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;

  c := 0;
  DM.ibdsTeacher.First;
  while not DM.ibdsTeacher.Eof do
  begin
    DM.ibdsTeacher.Next;
    inc(c);
  end;
  stBar.Panels[0].Text := '���������� ��������������: ' + IntToStr(c);

  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
end;

procedure TfmTeacher.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 11);
end;

procedure TfmTeacher.miWordStRepClick(Sender: TObject);
const
  FIELD_QTY = 6;
var
  rep: TRTReport;
  S: string[30];
  P: array[0..FIELD_QTY - 1] of Integer;
  i: integer;
begin
  LocateReportParam('StRepForTeacher', #7#30#4#7#15#30);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*57;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1]) * TWIPS_IN_MM;

  rep := TRTReport.Create('StRepForTeacher');
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);

  rep.AddText('\headery300 {\footer ');  //������� ����������
  rep.ParSet12Arial;
  rep.AddText('\qc\tab\b \chpgn\par}\ql');

  rep.ParSet(fTimes, 12, [fstBold]);
  rep.AddPar('\ql\sb90 �������������: ' + DM.ibdsTeacherName.Value);
  rep.ParSetTableHead;
  rep.CreateTable(P, []);
  rep.AddRow(['\b\qc �','�.�.�. ��������� (�������)', '��.', '���-�� ��.',
    '���-�� ����� � ������', '����������']);
  rep.ParSet(fTimes, 11);
  DM.ibds.Close;
  DM.ibds.SelectSQL.Clear;
  DM.ibds.SelectSQL.Append(
    'select ST."Name", ST."Class", C.period, sum(CRT.c_time) '+
    'from "Student" ST ' +
    'join "Specialization" SP on SP.id = ST."SpecializationID" ' +
    'join "Department" D on D.id =SP."DepartmentID" ' +
    'join curriculum C on C.id = D."CurriculumID" ' +
    'join "Student_Plan" STP on ST.id = STP."StudentID" ' +
    'join curr_rec CR on CR.id = STP.curr_rec_id and C.id = CR.curr_id ' +
    'join curr_rec_time CRT on CRT.curr_id = D."CurriculumID" and ' +
    'CRT.curr_rec_id = STP.curr_rec_id and ST."Class" = CRT.class_num ' +
    'where ST.released = 0 and ST.academy = 0 and STP."Use" > 0 and ' +
    'STP."TeacherID" = :in_teacher_id and CR.group_qty = 1  and CRT.c_time > 0 ' +
    'group by ST."Name", ST."Class", C.period ' +
    'order by ST."Name"; '
  );
  DM.ibds.Params[0].AsInteger := DM.ibdsTeacherID.Value;
  DM.ibds.Open;
  DM.ibds.First;
  i := 0;
  while not DM.ibds.Eof do
  begin
    inc(i);
    rep.AddRow(['\qc ' + IntToStr(i),
      '\ql ' + DM.ibds.Fields[0].AsString,
      '\qc ' + DM.ibds.Fields[1].AsString + '(' + DM.ibds.Fields[2].AsString + ')',
      '', '\qr ' + Format('%.2f', [DM.ibds.Fields[3].AsFloat]), '']);
    DM.ibds.Next;
  end;
  DM.ibds.Close;
  DM.ibds.SelectSQL.Clear;
  DM.ibds.SelectSQL.Append(
    'select GS.name, TG.class_num, C.period, TG.group_q, TG.group_q*CRT.c_time, GS.code, GS1.name ' +
    'from teacher_group TG ' +
    '  join grouping_subj GS on TG.grouping_id = GS.grouping_id and ' +
    '    TG.gr_subj_id = GS.id ' +
    '  join grouping_subj_curr_id GSCI on GSCI.grouping_id = TG.grouping_id and ' +
    '    GSCI.grouping_subj_id = TG.gr_subj_id ' +
    '  join curriculum C on GSCI.curr_id = C.id ' +
    '  join curr_rec_time CRT on CRT.curr_id = GSCI.curr_id and ' +
    '    CRT.class_num = TG.class_num and CRT.curr_rec_id = GSCI.curr_rec_id ' +
    '  left join grouping_subj GS1 on TG.grouping_id = GS1.grouping_id and ' +
    '    GS1.id = GS.id - 1 ' +
    'where TG.teacher_id = :in_teacher_id and ' +
    '  C.id in (select min(GSCI2.curr_id) from grouping_subj_curr_id GSCI2 where ' +
    '    GSCI2.grouping_id = TG.grouping_id and ' +
    '    GSCI2.grouping_subj_id = TG.gr_subj_id) ' +
    'order by TG.grouping_id, GS.id;'
  );
  DM.ibds.Params[0].AsInteger := DM.ibdsTeacherID.Value;
  DM.ibds.Open;
  DM.ibds.First;
  while not DM.ibds.Eof do
  begin
    inc(i);
    if DM.ibds.Fields[5].AsInteger = 1 then
      rep.AddRow(['\qc ' + IntToStr(i),
        '\qr ' + DM.ibds.Fields[0].AsString + ' [' + DM.ibds.Fields[6].AsString + ']',
        '\qc ' + DM.ibds.Fields[1].AsString + '(' + DM.ibds.Fields[2].AsString + ')',
        '\qc ' + DM.ibds.Fields[3].AsString, '\qr ' + dFormat(DM.ibds.Fields[4].AsFloat), ''])
    else
      rep.AddRow(['\qc ' + IntToStr(i),
        '\qr ' + DM.ibds.Fields[0].AsString,
        '\qc ' + DM.ibds.Fields[1].AsString + '(' + DM.ibds.Fields[2].AsString + ')',
        '\qc ' + DM.ibds.Fields[3].AsString, '\qr ' + dFormat(DM.ibds.Fields[4].AsFloat), '']);
    DM.ibds.Next;
  end;
  DM.ibds.Close;

  rep.SaveAndExecuteReport(Handle, '����� �� �������� � ������� �������������');
end;

procedure TfmTeacher.miParamStRepClick(Sender: TObject);
begin
  fmStRepFTParam := TfmStRepFTParam.Create(Self);
  fmStRepFTParam.ShowModal;
  fmStRepFTParam.Release;
end;

procedure TfmTeacher.miWordSrRepTsClick(Sender: TObject);
const
  FIELD_QTY = 9;
var
  rep: TRTReport;
  P: TFieldsSizes;
  i: integer;
  BM: TBookmark;
  sum_time_y: Double;
  sum_time_o: Double;
  sum_time_c: Double;
  sum_time_t: Double;
  sum_g_y: Integer;
  sum_g_o: Integer;
begin
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;


  LocateReportParam('StRepForTeacher', #7#30#4#7#15#30);

  //S := DM.ibdsReportParamSIZES_1.Value;


  rep := TRTReport.Create('StRepForTeacher');
  P := rep.getFieldsPositions('individual_sql');

  rep.AddText('\headery300 {\footer ');  //������� ����������
  rep.ParSet12Arial;
  rep.AddText('\qc\tab\b \chpgn\par}\ql');

  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  DM.ibdsTeacher.First;

  while not DM.ibdsTeacher.Eof do
  begin
    if DM.ibdsTeacherID.Value = 0 then
    begin  DM.ibdsTeacher.Next; Continue; end;

    rep.ParSet(fTimes, 12, [fstBold]);
    rep.AddPar('\ql\sb90 �������������: ' + DM.ibdsTeacherName.Value);
    rep.ParSetTableHead;
    rep.CreateTable(P, []);
    rep.AddRow([
      '\b\qc �',
      '�.�.�. ��������� (�������)',
      '�������������',
      '�������',
      '��.',
      '���-�� ��. ��.',
      '���-�� ��. ��.',
      '��. ����� � ���.',
      '��. ����� � ���.',
      '��. ����� � ���.',
      '����������'
    ]);
    rep.ParSet(fTimes, 11);
    DM.ibds.Close;
    DM.ibds.SelectSQL.Clear;
    DM.ibds.SelectSQL.Append(rep.getReportSql('individual_sql'));
    DM.ibds.Params[0].AsInteger := DM.ibdsTeacherID.Value;
    DM.ibds.Open;
    DM.ibds.First;

    i := 0;
    sum_time_y := 0;
    sum_time_o := 0;
    sum_time_c := 0;
    sum_g_y := 0;
    sum_g_o := 0;
    while not DM.ibds.Eof do
    begin
      inc(i);
      rep.AddRow(['\qc ' + IntToStr(i),
        '\ql ' + DM.ibds.FieldByName('student_name').AsString,
        '\ql ' + DM.ibds.FieldByName('spec_name').AsString,
        '\ql ' + FIOToFInicials(DM.ibds.FieldByName('curator_name').AsString),
        '\qc ' +
        DM.ibds.FieldByName('class_number').AsString +
        '(' + DM.ibds.FieldByName('period').AsString + ')',
        '',
        '',
        '\qr ' + dFormat(DM.ibds.FieldByName('time_y').AsFloat),
        '\qr ' + dFormat(DM.ibds.FieldByName('time_o').AsFloat),
        '\qr ' + dFormat(DM.ibds.FieldByName('time_c').AsFloat),
        ''
      ]);
      sum_time_y := sum_time_y + DM.ibds.FieldByName('time_y').AsFloat;
      sum_time_o := sum_time_o + DM.ibds.FieldByName('time_o').AsFloat;
      sum_time_c := sum_time_c + DM.ibds.FieldByName('time_c').AsFloat;
      DM.ibds.Next;
    end;
    {
    rep.AddRow([
      '\qc ',
      '\ql ' + '�����:',
      '\qc ' +
      '',
      '',
      '\qr ' + dFormat(sum_time_y),
      '\qr ' + dFormat(sum_time_o),
      '\qr ' + dFormat(sum_time_c),
      '\qr ' + dFormat(sum_time_t),
      ''
    ]);
    }
    
    DM.ibds.Close;
    DM.ibds.SelectSQL.Clear;
    DM.ibds.SelectSQL.Append(rep.getReportSql('group_sql'));
    DM.ibds.Params[0].AsInteger := DM.ibdsTeacherID.Value;
    DM.ibds.Open;
    DM.ibds.First;
    {
    sum_time_y := 0;
    sum_time_o := 0;
    sum_time_c := 0;
    sum_time_t := 0;
    }
    while not DM.ibds.Eof do
    begin
      inc(i);
      if DM.ibds.FieldByName('subj_code').AsInteger = 1 then
        rep.AddRow([
          '\qc ' + IntToStr(i),
          '\qr ' + DM.ibds.FieldByName('subj_name').AsString + ' [' + DM.ibds.FieldByName('pr_subj_name').AsString + ']',
          '',
          '',
          '\qc ' + DM.ibds.FieldByName('class_num').AsString + '(' + DM.ibds.FieldByName('period').AsString + ')',
          '\qc ' + DM.ibds.FieldByName('group_y').AsString,
          '\qc ' + DM.ibds.FieldByName('group_o').AsString,
          '\qr ' + dFormat(DM.ibds.FieldByName('time_y').AsFloat),
          '\qr ' + dFormat(DM.ibds.FieldByName('time_o').AsFloat),
          '',
          ''
        ])
      else
        rep.AddRow([
          '\qc ' + IntToStr(i),
          '\qr ' + DM.ibds.FieldByName('subj_name').AsString,
          '',
          '',
          '\qc ' + DM.ibds.FieldByName('class_num').AsString + '(' + DM.ibds.FieldByName('period').AsString + ')',
          '\qc ' + DM.ibds.FieldByName('group_y').AsString,
          '\qc ' + DM.ibds.FieldByName('group_o').AsString,
          '\qr ' + dFormat(DM.ibds.FieldByName('time_y').AsFloat),
          '\qr ' + dFormat(DM.ibds.FieldByName('time_o').AsFloat),
          '',
          ''
        ]);
      sum_time_y := sum_time_y + DM.ibds.FieldByName('time_y').AsFloat;
      sum_time_o := sum_time_o + DM.ibds.FieldByName('time_o').AsFloat;
      sum_g_y := sum_g_y + DM.ibds.FieldByName('group_y').AsInteger;
      sum_g_o := sum_g_o + DM.ibds.FieldByName('group_o').AsInteger;
      DM.ibds.Next;
    end;
    DM.ibds.Close;

    rep.AddRow([
      '',
      '\ql\b ' + '�����:',
      '',
      '',
      '',
      '\qr ' + iFormat(sum_g_y),
      '\qr ' + iFormat(sum_g_o),
      '\qr ' + dFormat(sum_time_y),
      '\qr ' + dFormat(sum_time_o),
      '\qr ' + dFormat(sum_time_c),
      ''
    ]);
    DM.ibdsTeacher.Next;
  end;
  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;

  rep.SaveAndExecuteReport(Handle, '����� �� �������� � ������� ���� ��������������');
  rep.Free;
end;

procedure TfmTeacher.miCopyRecordClick(Sender: TObject);
var
  S: TStrings;
begin
  S := TStringList.Create;
  S.Delimiter := ';';
  S.Append('TeacherRecord#');
  S.Append(DM.ibdsTeacherTAB_NUM.AsString);
  S.Append(DM.ibdsTeacherName.Value);
  S.Append(DM.ibdsTeacherSubject.Value);
  S.Append(DM.ibdsTeacherPost.Value);
  S.Append(DM.ibdsTeacherEducation.Value);
  S.Append(DM.ibdsTeacherStageDate.AsString);
  S.Append(DM.ibdsTeacherBirthDate.AsString);
  S.Append(DM.ibdsTeacherEnterDate.AsString);
  S.Append(DM.ibdsTeacherReleaseDate.AsString);
  S.Append(DM.ibdsTeacherDiploma.AsString);
  S.Append(DM.ibdsTeacherAddress.AsString);
  S.Append(DM.ibdsTeacherTelephone.AsString);
  S.Append(Format('%.2d-%.2d-%.2d',
    [DM.ibdsTeacherSTAGE_Y.AsInteger,
     DM.ibdsTeacherSTAGE_M.AsInteger,
     DM.ibdsTeacherSTAGE_D.AsInteger]));
  Clipboard.Open;
  Clipboard.AsText := S.DelimitedText;
  Clipboard.Close;
  S.Free;
end;

procedure TfmTeacher.miPasteRecordClick(Sender: TObject);
var
  S: TStrings;
  d: TDateTime;
begin
  S := TStringList.Create;
  S.Delimiter := ';';
  Clipboard.Open;
  S.DelimitedText := Clipboard.AsText;
  if S.Count = 16 then
  begin
    fmEdTeacher := TfmEdTeacher.Create(Self);
    with fmEdTeacher do
    begin
      edTabNum.Text := S[1];
      edName.Text := S[2];
      if DM.ibdsSubject.Locate('Name', VarArrayOf([S[3]]), []) then
      begin
        edSubject.Text := S[3];
        edSubject.Tag := DM.ibdsSubjectID.Value;
      end;
      if DM.ibdsPost.Locate('Name', VarArrayOf([S[4]]), []) then
      begin
        edPost.Text := S[4];
        edPost.Tag := DM.ibdsPostID.Value;
      end;
      if DM.ibdsEducation.Locate('Name', VarArrayOf([S[5]]), []) then
      begin
        cbEducation.KeyValue := DM.ibdsEducationID.Value;
      end;

      if TryStrToDateTime(S[6], d) then edStageDate.Date := d;

      if TryStrToDateTime(S[7], d) then edBirthDate.Date := d;

      if TryStrToDateTime(S[8], d) then edEnterDate.Date := d;

      if TryStrToDateTime(S[9], d) then edReleaseDate.Date := d;

      mDiploma.Text := S[12];
      mAddress.Text := S[13];
      edTelephone.Text := S[14];
      edStage.Text := S[15];
      fmEdTeacher.ShowModal;
      fmEdTeacher.Release;
    end;
  end;
  S.Free;
  Clipboard.Close;
end;

procedure TfmTeacher.PopupMenuPopup(Sender: TObject);
begin
  Clipboard.Open;
  miPasteRecord.Enabled := pos('TeacherRecord#', Clipboard.AsText) <> 0;
  Clipboard.Close;
end;

procedure TfmTeacher.MainMenuChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  Clipboard.Open;
  miPaste.Enabled := pos('TeacherRecord#', Clipboard.AsText) <> 0;
  Clipboard.Close;
end;

procedure TfmTeacher.miRepNameClick(Sender: TObject);
var
  BM: TBookmark;
  rep: TRTReport;
  i: Integer;
begin
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;


  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');
  rep.ParSetTableHead;
  rep.CreateTableMMSz([10, 90], []);
  rep.AddRow(['�', '�.�.�. �������������']);
  rep.ParSetTable;
  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow([IntToStr(i), DM.ibdsTeacherName.Value]);
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;

  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
  rep.SaveAndExecuteReport(Handle, '������ �.�.�. ��������������');
end;

procedure TfmTeacher.miRepNSPATClick(Sender: TObject);
var
  BM: TBookmark;
  rep: TRTReport;
  i: Integer;
begin
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;

  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');    
  rep.CreateTableMMSz([10, 50, 25, 35, 50, 30], []);
  rep.ParSetTableHead;
  rep.AddRow(['�', '�.�.�. �������������', '�������', '���������', '�����', '�������']);
  rep.ParSetTable;

  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow([IntToStr(i), DM.ibdsTeacherName.Value, DM.ibdsTeacherSubject.Value,
        DM.ibdsTeacherPost.Value, DM.ibdsTeacherAddress.Value, DM.ibdsTeacherTelephone.Value]);
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;

  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
  rep.SaveAndExecuteReport(Handle, '�.�.�., �������, ���������, �����, ������� ��������������');
end;

procedure TfmTeacher.miNSPClick(Sender: TObject);
var
  BM: TBookmark;
  rep: TRTReport;
  i: Integer;
begin
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;

  rep := TRTReport.Create;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');  
  rep.SetMarginsMM;
  rep.ParSetTableHead;
  rep.CreateTableMMSz([7, 55, 25, 45, 38], []);
  rep.AddRow(['�', '�.�.�. �������������', '�������', '���������', '�������\b0']);
  rep.ParSetTable;
  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow([
        IntToStr(i),
        DM.ibdsTeacherName.Value,
        DM.ibdsTeacherSubject.Value,
        DM.ibdsTeacherPost.Value,
        DM.ibdsTeacherTelephone.AsString
      ]);
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;

  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;

  rep.SaveAndExecuteReport(Handle, '�.�.�., �������, ��������� ��������������');
end;

procedure TfmTeacher.miTeacherLoadClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: Integer;
  YT, OT, CT: Double;
begin
  YT := 0; OT := 0; CT := 0;
  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');   
  rep.ParSet(fTimes, 12, [fstBold]);
  rep.AddPar('\qc�������� ��������������\line');
  rep.ParSetTableHead;
  rep.CreateTableMMSz([10, 75, 14, 14, 14, 15], []);
  rep.AddRow(['�', '�.�.�.', '\fs20��. ����', '��. ����', '����. ����', '����� ����\b0']);
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;

  rep.ParSetTable;
  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    DM.ibdsTeacherTM.Close;
    DM.ibdsTeacherTM.Params[0].AsInteger := DM.ibdsTeacherID.Value;
    DM.ibdsTeacherTM.Open;
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow(['\ql ' + IntToStr(i), DM.ibdsTeacherName.Value,
        '\qr ' + dFormat(DM.ibdsTeacherTMOUTYTIME.Value),
        dFormat(DM.ibdsTeacherTMOUTOTIME.Value),
        dFormat(DM.ibdsTeacherTMOUTCTIME.Value),
        dFormat(DM.ibdsTeacherTMOUTSUMTIME.Value)]);
        YT := YT + DM.ibdsTeacherTMOUTYTIME.Value;
        OT := OT + DM.ibdsTeacherTMOUTOTIME.Value;
        CT := CT + DM.ibdsTeacherTMOUTCTIME.Value;
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;
  rep.AddRow(['', '\ql �����', '\qr ' +  dFormat(YT), dFormat(OT), dFormat(CT), dFormat(YT + OT +CT)]);
  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
  rep.SaveAndExecuteReport(Handle, '�������� ��������������');
end;

procedure TfmTeacher.dbgTeacherKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN] then edSearch.Text := '';
end;

procedure TfmTeacher.dbgTeacherCellClick(Column: TColumn);
begin
  edSearch.Text := '';
end;

procedure TfmTeacher.IBEventsEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
var
  id: Integer;
begin
  try
    DM.ibdsTeacher.DisableControls;
    id := DM.ibdsTeacherID.Value;
    DM.ibdsTeacher.Close;
    DM.ibdsTeacher.Open;
    DM.ibdsTeacher.Locate('ID', id, []);
  finally
    DM.ibdsTeacher.EnableControls;
  end;
end;

procedure TfmTeacher.aPrintWithPercExecute(Sender: TObject);
begin
  frxRTFExport.FileName := URTReport.getFreeFileName;

  if not FileExists('fr\TeacherPercents.fr3')  then
  begin
    frxRTeacherPercents.SaveToFile('fr\TeacherPercents.fr3');
  end;
  //frxrTarriffication.ShowReport;
  ibdsTeacherPercents.Close;
  ibdsTeacherPercents.Open;
  frxRTeacherPercents.LoadFromFile('fr\TeacherPercents.fr3');
  frxRTeacherPercents.PrepareReport;
  frxRTeacherPercents.Export(frxRTFExport);
end;

procedure TfmTeacher.miFioTitleClick(Sender: TObject);
var
  BM: TBookmark;
  rep: TRTReport;
  i: Integer;
begin
  BM := DM.ibdsTeacher.GetBookmark;
  DM.ibdsTeacher.DisableControls;


  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  rep.AddPar('');
  rep.ParSetTableHead;
  rep.CreateTableMMSz([10, 90, 80], []);
  rep.AddRow(['�', '�.�.�. �������������', '�������� ������']);
  rep.ParSetTable;
  DM.ibdsTeacher.First;
  i := 1;
  while not DM.ibdsTeacher.Eof do
  begin
    if DM.ibdsTeacherID.Value <> 0 then
    begin
      rep.AddRow([
        IntToStr(i),
        DM.ibdsTeacherName.Value,
        DM.ibdsTeacherTITLE_NAME.AsString
      ]);
      inc(i);
    end;
    DM.ibdsTeacher.Next;
  end;

  DM.ibdsTeacher.GotoBookmark(BM);
  DM.ibdsTeacher.FreeBookmark(BM);
  DM.ibdsTeacher.EnableControls;
  rep.SaveAndExecuteReport(Handle, '������ �������������� �.�.�., �������� ������');
end;

procedure TfmTeacher.aPrintWithCategoryExecute(Sender: TObject);
begin
  frxRTFExport.FileName := URTReport.getFreeFileName;

  if not FileExists('fr\TeachersWithCat.fr3')  then
  begin
    frxTeachersWithCat.SaveToFile('fr\TeachersWithCategory.fr3');
  end;
  ibdsReportWithCat.Close;
  if btnFilter.Down then
    ibdsReportWithCat.ParamByName('filter_id').Value := 1
  else
    ibdsReportWithCat.ParamByName('filter_id').Value := Null;
  ibdsReportWithCat.Open;
  frxTeachersWithCat.LoadFromFile('fr\TeachersWithCategory.fr3');
  frxTeachersWithCat.PrepareReport;
  frxTeachersWithCat.Export(frxRTFExport);
  ibdsReportWithCat.Close;
end;

procedure TfmTeacher.miAddingsClick(Sender: TObject);
begin
  if DM.ibdsTeacher.IsEmpty then exit;
  fmTeacherAddings := TfmTeacherAddings.Create(Self, DM.ibdsTeacherID.Value);
  fmTeacherAddings.ShowModal;
  fmTeacherAddings.Release;
end;

end.
