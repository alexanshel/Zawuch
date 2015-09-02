unit URepTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, ExtCtrls, Grids, DBGrids, URTReport, IniFiles,
  ShellApi, Buttons, RXDBCtrl;

type
  TfmRepTab = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    miExit: TMenuItem;
    dsTab: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
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
    btnAdd: TSpeedButton;
    btnDel: TSpeedButton;
    btnEdit: TSpeedButton;
    dbgTab: TRxDBGrid;
    Panel18: TPanel;
    miHelp: TMenuItem;
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgTabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure miPrintClick(Sender: TObject);
    procedure miPrintOptionsClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure dbgTabKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRepTab: TfmRepTab;

implementation

uses UDM, UEdMainTab, DateUtils, UMTPrintSet, UEdRepTab, URepTabParam;

{$R *.dfm}

procedure TfmRepTab.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmRepTab.FormCreate(Sender: TObject);
begin
  DM.ibdsRepTab.Close;
  DM.ibdsRepTab.Open;
  dsTab.DataSet := DM.ibdsRepTab;
end;

procedure TfmRepTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsTab.DataSet := nil;
end;

procedure TfmRepTab.dbgTabDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.Field.AsString = '0' then
    dbgTab.Canvas.Font.Color := dbgTab.Canvas.Brush.Color;
  if DM.ibdsMainTabTEACHER_ID.Value = 0 then
    dbgTab.Canvas.Font.Color := clRed;
  dbgTab.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmRepTab.miPrintClick(Sender: TObject);
const
  FIELD_QTY = 12;
var
  BM: TBookmark;
  rep: TRTReport;
  P: array[0..11] of Integer; //массив размеров
  S: string[30];
  i: Integer;
  function FormatFM(Value: Double): String;
  begin
    if Value = 0 then Result := ''
    else
      Result := FloatToStr(Value);//Format('%.2f', [Value]);
  end;
begin
  LocateReportParam('RepTab', #7#65#7#13#13#13#13#13#13#13#13#13);

  S := DM.ibdsReportParamSIZES_1.Value;
  P[0] := Ord(S[1])*TWIPS_IN_MM;
  for i := 1 to FIELD_QTY - 1 do
    P[i] := P[i - 1] + Ord(S[i + 1])*TWIPS_IN_MM;

  rep := TRTReport.Create('RepTab');
  rep.AddText('\headery300 {\header ');  //верхний колонтитул
  rep.ParSet12Arial;
  rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
  //rep.AddText(DM.ibdsFilialName.Value);
  rep.AddText('\tx9600\tab\b Лист \chpgn\par}');

  rep.AddPar('\qc ' + 'ТАБЕЛЬ ЗАМЕЩЕНИЯ ЗА ' +
     mon[MonthOf(DM.ibdsConstSYSTEM_DATE.Value)] + ' ' +
     IntToStr(YearOf(DM.ibdsConstSYSTEM_DATE.Value)) + '\par');

  rep.ParSetLongTableHead;
  rep.CreateMergeHeader(
    [P[0], P[1], P[2], P[5], P[8], P[10], P[11]],
    [0, 1, 2, 3, 6], []);
  rep.AddRow(['Таб.№', 'Преподаватель', 'Дни',
    'Бюджет', 'Самоокупаемость', 'Подготов.', 'Дата \line ММ.ГГ']);
  rep.CompleteMergeHeader( P, [0, 1, 2, 11], []);
  rep.AddRow(['', '', '', 'мл.', 'ст.', 'конц.', 'мл.', 'ст.', 'конц.', 'мл.', 'конц.', '']);
  rep.CreateTable(P, []);
  rep.ParSet(fTimes, 11);
  BM := DM.ibdsRepTab.GetBookmark;
  DM.ibdsRepTab.DisableControls;
  DM.ibdsRepTab.First;
  while not DM.ibdsRepTab.Eof do
  begin
    if DM.ibdsRepTabTEACHER_ID.Value <> 0 then
    rep.AddRow([Format('%3.d', [DM.ibdsMainTabTAB_NUM.Value]),
      DM.ibdsRepTabTEACHER_NAME.Value, DM.ibdsRepTabDAYS_QTY.AsString, '\qr '+
      FormatFM(DM.ibdsRepTabB_Y_TIME.Value), FormatFM(DM.ibdsRepTabB_O_TIME.Value),
      FormatFM(DM.ibdsRepTabB_C_TIME.Value), FormatFM(DM.ibdsRepTabS_Y_TIME.Value),
      FormatFM(DM.ibdsRepTabS_O_TIME.Value), FormatFM(DM.ibdsRepTabS_C_TIME.Value),
      FormatFM(DM.ibdsRepTabBEGIN_Y_TIME.Value), FormatFM(DM.ibdsRepTabBEGIN_Y_TIME.Value) + '\ql ',
      FormatDateTime('mm.yy', DM.ibdsRepTabT_DATE.Value)]);
    DM.ibdsRepTab.Next;
  end;
  rep.ParSet(fTimes, 12, [fstBold]);// Arial('\b\fs24');
  rep.AddText(rep.TextToRTF(DM.ibdsConstPASPORT_TAB_SIGN.Value));
  DM.ibdsRepTab.GotoBookmark(BM);
  DM.ibdsRepTab.FreeBookmark(BM);
  DM.ibdsRepTab.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Отчёт табель замещения');
end;

procedure TfmRepTab.miPrintOptionsClick(Sender: TObject);
begin
  fmRepTabParam := TfmRepTabParam.Create(Self);
  fmRepTabParam.ShowModal;
  fmRepTabParam.Release;
end;

procedure TfmRepTab.btnEditClick(Sender: TObject);
begin
  fmEdRepTab := TfmEdRepTab.Create(Self);
  fmEdRepTab.edTeacher.Text := DM.ibdsRepTabTEACHER_NAME.Value;
  fmEdRepTab.edTeacher.Tag := DM.ibdsRepTabTEACHER_ID.Value;
  fmEdRepTab.edBYT.Text := DM.ibdsRepTabB_Y_TIME.AsString;
  fmEdRepTab.edBOT.Text := DM.ibdsRepTabB_O_TIME.AsString;
  fmEdRepTab.edBCT.Text := DM.ibdsRepTabB_C_TIME.AsString;
  fmEdRepTab.edSYT.Text := DM.ibdsRepTabS_Y_TIME.AsString;
  fmEdRepTab.edSOT.Text := DM.ibdsRepTabS_O_TIME.AsString;
  fmEdRepTab.edSCT.Text := DM.ibdsRepTabS_C_TIME.AsString;
  fmEdRepTab.edBeYT.Text := DM.ibdsRepTabBEGIN_Y_TIME.AsString;
  fmEdRepTab.edBeCT.Text := DM.ibdsRepTabBEGIN_C_TIME.AsString;
  fmEdRepTab.edDate.Date := DM.ibdsRepTabT_DATE.Value;
  fmEdRepTab.edDaysQty.Text := DM.ibdsRepTabDAYS_QTY.AsString;


  if fmEdRepTab.ShowModal = mrOk then
  begin
    DM.ibqProc.SQL.Clear;
    DM.ibqProc.SQL.Append(
      'EXECUTE PROCEDURE ADD_REP_TAB(:ID,'+
      '  :t_id, :tab_num, :t_name, :d_qty, :b_y_t, :b_o_t, ' +
      ':b_c_t, :s_y_t, :s_o_t, :s_c_t, :be_y_t, :be_c_t, :t_date);');
    DM.ibqProc.ParamByName('ID').AsInteger := DM.ibdsRepTabID.Value;
    DM.ibqProc.ParamByName('t_id').AsInteger := fmEdRepTab.edTeacher.Tag;
    DM.ibdsTeacher.Locate('ID', fmEdRepTab.edTeacher.Tag, []);
    DM.ibqProc.ParamByName('tab_num').AsInteger := DM.ibdsTeacherTAB_NUM.Value;
    DM.ibqProc.ParamByName('t_name').AsString := DM.ibdsTeacherName.Value;
    DM.ibqProc.ParamByName('d_qty').AsString := fmEdRepTab.edDaysQty.Text;
    DM.ibqProc.ParamByName('b_y_t').AsFloat := StrToFloatDef(fmEdRepTab.edBYT.Text, 0);
    DM.ibqProc.ParamByName('b_o_t').AsFloat := StrToFloatDef(fmEdRepTab.edBOT.Text, 0);
    DM.ibqProc.ParamByName('b_c_t').AsFloat := StrToFloatDef(fmEdRepTab.edBCT.Text, 0);
    DM.ibqProc.ParamByName('s_y_t').AsFloat := StrToFloatDef(fmEdRepTab.edSYT.Text, 0);
    DM.ibqProc.ParamByName('s_o_t').AsFloat := StrToFloatDef(fmEdRepTab.edSOT.Text, 0);
    DM.ibqProc.ParamByName('s_c_t').AsFloat := StrToFloatDef(fmEdRepTab.edSCT.Text, 0);
    DM.ibqProc.ParamByName('be_y_t').AsFloat := StrToFloatDef(fmEdRepTab.edBeYT.Text, 0);
    DM.ibqProc.ParamByName('be_c_t').AsFloat := StrToFloatDef(fmEdRepTab.edBeCT.Text, 0);
    DM.ibqProc.ParamByName('t_date').AsDate := fmEdRepTab.edDate.Date;

    try
      DM.ibqProc.ExecSQL;
    except
      DM.ibqProc.Transaction.Rollback;
    end;

    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
    DM.ibdsRepTab.Close;
    DM.ibdsRepTab.Open;
    DM.ibdsRepTab.Locate('ID', DM.ibdsRepTabID.Value, []);
  end;
  fmEdRepTab.Release;
end;

procedure TfmRepTab.btnAddClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := 0;
  fmEdRepTab := TfmEdRepTab.Create(Self);
  if fmEdRepTab.ShowModal = mrOk then
  begin
    DM.ibqProc.SQL.Clear;
    DM.ibqProc.SQL.Append(
      'EXECUTE PROCEDURE ADD_REP_TAB' +
      '(0, :t_id, :tab_num, :t_name, :d_qty, :b_y_t, :b_o_t, ' +
      ':b_c_t, :s_y_t, :s_o_t, :s_c_t, :be_y_t, :be_c_t, :t_date);');
    DM.ibqProc.ParamByName('t_id').AsInteger := fmEdRepTab.edTeacher.Tag;
    DM.ibdsTeacher.Locate('ID', fmEdRepTab.edTeacher.Tag, []);
    DM.ibqProc.ParamByName('tab_num').AsInteger := DM.ibdsTeacherTAB_NUM.Value;
    DM.ibqProc.ParamByName('t_name').AsString := DM.ibdsTeacherName.Value;
    DM.ibqProc.ParamByName('d_qty').AsString := fmEdRepTab.edDaysQty.Text;
    DM.ibqProc.ParamByName('b_y_t').AsFloat := StrToFloatDef(fmEdRepTab.edBYT.Text, 0);
    DM.ibqProc.ParamByName('b_o_t').AsFloat := StrToFloatDef(fmEdRepTab.edBOT.Text, 0);
    DM.ibqProc.ParamByName('b_c_t').AsFloat := StrToFloatDef(fmEdRepTab.edBCT.Text, 0);
    DM.ibqProc.ParamByName('s_y_t').AsFloat := StrToFloatDef(fmEdRepTab.edSYT.Text, 0);
    DM.ibqProc.ParamByName('s_o_t').AsFloat := StrToFloatDef(fmEdRepTab.edSOT.Text, 0);
    DM.ibqProc.ParamByName('s_c_t').AsFloat := StrToFloatDef(fmEdRepTab.edSCT.Text, 0);
    DM.ibqProc.ParamByName('be_y_t').AsFloat := StrToFloatDef(fmEdRepTab.edBeYT.Text, 0);
    DM.ibqProc.ParamByName('be_c_t').AsFloat := StrToFloatDef(fmEdRepTab.edBeCT.Text, 0);
    DM.ibqProc.ParamByName('t_date').AsDate := fmEdRepTab.edDate.Date;

    try
      DM.ibqProc.ExecSQL;
      ID := DM.ibqProc.Current.Vars[0].AsInteger;
    except
      DM.ibqProc.Transaction.Rollback;
    end;

    if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;
    DM.ibdsRepTab.Close;
    DM.ibdsRepTab.Open;
    DM.ibdsRepTab.Locate('ID', ID, []);
  end;
  fmEdRepTab.Release;
end;

procedure TfmRepTab.btnDelClick(Sender: TObject);
begin
  DM.ibqProc.SQL.Clear;
  DM.ibqProc.SQL.Append('delete from REP_TAB RT where RT.ID = :ID;');
  DM.ibqProc.Params[0].AsInteger := DM.ibdsRepTabID.Value;

  try
    DM.ibqProc.ExecSQL;
  except
    DM.ibqProc.Transaction.Rollback;
  end;

  if DM.ibqProc.Transaction.InTransaction then DM.ibqProc.Transaction.Commit;

  DM.ibdsRepTab.Close;
  DM.ibdsRepTab.Open;
end;

procedure TfmRepTab.dbgTabKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then btnEdit.Click;
end;

procedure TfmRepTab.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 32);
end;

end.
