unit UGroupExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Grids, DBGrids, Menus, DB, StdCtrls,
  RxLookup, RXDBCtrl, Placemnt, DBCtrls, ComCtrls;

type
  TfmGroupExt = class(TForm)
    MainMenu: TMainMenu;
    miExit: TMenuItem;
    dsTeacherGroup: TDataSource;
    Panel9: TPanel;
    btnCalc: TSpeedButton;
    Panel7: TPanel;
    Panel10: TPanel;
    dbgTeacherGroup: TRxDBGrid;
    miHelp: TMenuItem;
    FormStorage1: TFormStorage;
    btnEditGrouping: TSpeedButton;
    SB: TStatusBar;
    N1: TMenuItem;
    miAutoCalc: TMenuItem;
    miGroupingSetup: TMenuItem;
    N2: TMenuItem;
    edSearch: TEdit;
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditGroupingClick(Sender: TObject);
    procedure dbgTeacherGroupDblClick(Sender: TObject);
    procedure dbgTeacherGroupKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcClick(Sender: TObject);
    procedure dbgTeacherGroupDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure miHelpClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    DifPrepList: TStrings;
    procedure RefreshGroupCount;
  public
    { Public declarations }
  end;

var
  fmGroupExt: TfmGroupExt;

implementation

uses UDM, UEdGrouping, UGroupingSubj, UEdGroup, UGrCalcParam,
  UGrCalcParamExt, UGroupSubj, UGrouping;

{$R *.dfm}

procedure TfmGroupExt.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmGroupExt.FormCreate(Sender: TObject);
begin
  DM.ibdsTeacherGroupClss.Close;
  DM.ibdsTeacherGroupClss.Open;
  DM.ibdsTeacherGroupClss.First;
  DifPrepList := TStringList.Create;
  while not DM.ibdsTeacherGroupClss.Eof do
  begin
    if DifPrepList.IndexOf(DM.ibdsTeacherGroupClssTEACHER_ID.AsString) = -1 then
      DifPrepList.Add(DM.ibdsTeacherGroupClssTEACHER_ID.AsString);
    DM.ibdsTeacherGroupClss.Next;
  end;
  DM.ibdsTeacherGroupClss.First;
  dsTeacherGroup.DataSet := DM.ibdsTeacherGroupClss;
  RefreshGroupCount;
end;

procedure TfmGroupExt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsTeacherGroup.DataSet := nil;
  DifPrepList.Free;
end;

procedure TfmGroupExt.btnEditGroupingClick(Sender: TObject);
begin
  fmGrouping := TfmGrouping.Create(Self);
  fmGrouping.ShowModal;
  fmGrouping.Release;
  DM.ibdsTeacherGroupClss.Close;
  DM.ibdsTeacherGroupClss.Open;
  RefreshGroupCount;
end;

procedure TfmGroupExt.dbgTeacherGroupDblClick(Sender: TObject);
var
  BM: TBookmark;
  tid: Integer;
  gid: Integer;
begin
  if DM.ibdsTeacherGroupClss.IsEmpty then Exit;

  fmGroupingSubj := TfmGroupingSubj.Create(Self);
  fmGroupingSubj.ShowModal;
  fmGroupingSubj.Release;

  DM.ibSQL.Close;
  DM.ibSQL.SQL.Clear;
  DM.ibSQL.SQL.Append('select sum(TG.group_q) ' +
    'from teacher_group TG ' +
    'where TG.grouping_id = :gr_id and TG.teacher_id = :t_id');
  DM.ibSQL.Params[0].AsInteger := DM.ibdsTeacherGroupClssGROUPING_ID.Value;
  DM.ibSQL.Params[1].AsInteger := DM.ibdsTeacherGroupClssTEACHER_ID.Value;
  DM.ibSQL.ExecQuery;
  if DM.ibSQL.Fields[0].AsString <> '' then
    DM.ibdsTeacherGroupClss.Refresh
  else
  begin
    tid := DM.ibdsTeacherGroupClssTEACHER_ID.Value;
    gid := DM.ibdsTeacherGroupClssGROUPING_ID.Value;
    DM.ibdsTeacherGroupClss.DisableControls;
    DM.ibdsTeacherGroupClss.Close;
    DM.ibdsTeacherGroupClss.Open;
    DM.ibdsTeacherGroupClss.Locate('TEACHER_ID;GROUPING_ID', VarArrayOf([tid, gid]), []);
    DM.ibdsTeacherGroupClss.EnableControls;
  end;
  RefreshGroupCount;
end;

procedure TfmGroupExt.dbgTeacherGroupKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #13: dbgTeacherGroupDblClick(Sender);
  'а'..'я', 'А'..'Я': edSearch.Text := edSearch.Text + Key;
  #8: edSearch.Text := Copy(edSearch.Text, 1, Length(edSearch.Text) - 1);
  #27: Close;
  else
    edSearch.Text := ''
  end;
end;

procedure TfmGroupExt.btnCalcClick(Sender: TObject);
var
  BM: TBookmark;
begin
  fmGrCalcParamExt := TfmGrCalcParamExt.Create(Self);
  if (fmGrCalcParamExt.ShowModal = mrOK)
    and (MessageDlg('Вы действительно хотите сделать расчёт? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes)
  then
  begin
    case fmGrCalcParamExt.rgRegion.ItemIndex of
      0: DM.AutoCalcTeacherGroup(DM.ibdsTeacherGroupClssGROUPING_ID.Value,
           DM.ibdsTeacherGroupClssTEACHER_ID.Value,
           fmGrCalcParamExt.rgType.ItemIndex);
         //замена для текущей записи
      1: DM.AutoCalcTeacherGroup(Null,
           DM.ibdsTeacherGroupClssTEACHER_ID.Value,
           fmGrCalcParamExt.rgType.ItemIndex);
         //замена для всех групп текущего преподавателя
      2: DM.AutoCalcTeacherGroup(Null, Null, fmGrCalcParamExt.rgType.ItemIndex);
        //замена всего
    end;
    BM := DM.ibdsTeacherGroupClss.GetBookmark;
    DM.ibdsTeacherGroupClss.Close;
    DM.ibdsTeacherGroupClss.Open;
    DM.ibdsTeacherGroupClss.GotoBookmark(BM);
    DM.ibdsTeacherGroupClss.FreeBookmark(BM);
  end;
  fmGrCalcParamExt.Release;
  RefreshGroupCount;
end;

procedure TfmGroupExt.dbgTeacherGroupDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.ibdsTeacherGroupClssTEACHER_ID.Value = 0 then
    dbgTeacherGroup.Canvas.Font.Color := clRed;
 { if Column.Field.AsString = '0' then
    dbgTeacherGroup.Canvas.Font.Color := dbgTeacherGroup.Canvas.Brush.Color;}
  if (not (gdSelected in State)) and
    (DifPrepList.IndexOf(DM.ibdsTeacherGroupClssTEACHER_ID.AsString) mod 2 = 1) then
    dbgTeacherGroup.Canvas.Brush.Color := $00E6E6E6;

  dbgTeacherGroup.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmGroupExt.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 2);
end;

procedure TfmGroupExt.RefreshGroupCount;
begin
  DM.ibSQL.Close;
  DM.ibSQL.SQL.Clear;
  DM.ibSQL.SQL.Append('select sum(group_q) from teacher_group;');
  DM.ibSQL.ExecQuery;
  SB.Panels[0].Text := 'Всего групп: ' + DM.ibSQL.Fields[0].AsString;
end;

procedure TfmGroupExt.edSearchChange(Sender: TObject);
begin
  DM.ibdsTeacherGroupClss.Locate('Teacher', VarArrayOf([edSearch.Text]),
    [loCaseInsensitive,	loPartialKey]);
end;

procedure TfmGroupExt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #27: Close;
  end;
end;

end.
