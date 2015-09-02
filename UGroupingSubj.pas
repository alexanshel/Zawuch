unit UGroupingSubj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QDialogs, Grids, DBGrids, ExtCtrls, DB, Buttons, RXDBCtrl, StdCtrls,
  Menus;

type
  TfmGroupingSubj = class(TForm)
    Panel1: TPanel;
    dsGroupingSubj: TDataSource;
    dbgGrSubj: TRxDBGrid;
    btnClose: TBitBtn;
    MainMenu1: TMainMenu;
    miClose: TMenuItem;
    N1: TMenuItem;
    miWord: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgGrSubjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgGrSubjDblClick(Sender: TObject);
    procedure dbgGrSubjKeyPress(Sender: TObject; var Key: Char);
    procedure dbgGrSubjEditChange(Sender: TObject);
    procedure dbgGrSubjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure miWordClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGroupingSubj: TfmGroupingSubj;

implementation

uses UDM, UEdGroupingSubj, UEdGroup, URTReport;

{$R *.dfm}

procedure TfmGroupingSubj.FormCreate(Sender: TObject);
begin
  DM.ibdsGroupingSubjClss.Close;
  DM.ibdsGroupingSubjClss.ParamByName('grouping_id').Value :=
    DM.ibdsTeacherGroupClssGROUPING_ID.Value;
  DM.ibdsGroupingSubjClss.ParamByName('teacher_id').Value :=
    DM.ibdsTeacherGroupClssTEACHER_ID.Value;
  DM.ibdsGroupingSubjClss.Open;

  dsGroupingSubj.DataSet := DM.ibdsGroupingSubjClss;
end;

procedure TfmGroupingSubj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsGroupingSubj.DataSet := nil;
end;

procedure TfmGroupingSubj.dbgGrSubjDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not (gdSelected in State) then
    if (DM.ibdsGroupingSubjClssGR_SUBJ_CODE.Value = 1) and
      (DataCol < 2)
    then
      dbgGrSubj.Canvas.Font.Color := clBlue;
 { if Column.Field.AsString = '0' then
    dbgGrSubj.Canvas.Font.Color := dbgGrSubj.Canvas.Brush.Color;}
  dbgGrSubj.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmGroupingSubj.dbgGrSubjDblClick(Sender: TObject);
var
  si, r, g: Integer;
  BM: TBookmark;
begin
  si := dbgGrSubj.SelectedField.Index;

  if (si < 5) or ((si mod 2) = 0)  then Exit;

  fmEdGroup := TfmEdGroup.Create(Self);
  fmEdGroup.edGroupQty.Text := DM.ibdsGroupingSubjClss.Fields[si].AsString;
  if fmEdGroup.ShowModal = mrOk then
  begin
    DM.AddTeacherGroup(DM.ibdsTeacherGroupClssGROUPING_ID.Value,
      DM.ibdsTeacherGroupClssTEACHER_ID.Value,
      DM.ibdsGroupingSubjClssGR_SUBJ_ID.Value,
      (si - 5) div 2,
      StrToIntDef(fmEdGroup.edGroupQty.Text, -1));

    DM.ibdsGroupingSubjClss.Refresh;
  end;
end;

procedure TfmGroupingSubj.dbgGrSubjKeyPress(Sender: TObject;
  var Key: Char);
var
  si: integer;
  BM: TBookmark;
begin
  case Key of
    #13: dbgGrSubjDblClick(Sender);
    #27: Close;
    '0'..'9':
    begin
      si := dbgGrSubj.SelectedField.Index;

      if (si < 5) or ((si mod 2) = 0)  then Exit;

      fmEdGroup := TfmEdGroup.Create(Self);
      fmEdGroup.edGroupQty.Text := Key;
      fmEdGroup.edGroupQty.AutoSelect := false;
      fmEdGroup.edGroupQty.SelStart := Length(fmEdGroup.edGroupQty.Text);
      Key := #0;
//    fmEdGroup.edGroupQty.Text := DM.ibdsGroupingSubjClss.Fields[si].AsString;
      if fmEdGroup.ShowModal = mrOk then
      begin
        DM.AddTeacherGroup(DM.ibdsTeacherGroupClssGROUPING_ID.Value,
          DM.ibdsTeacherGroupClssTEACHER_ID.Value,
          DM.ibdsGroupingSubjClssGR_SUBJ_ID.Value,
          (si - 5) div 2,
          StrToIntDef(fmEdGroup.edGroupQty.Text, -1));

          DM.ibdsGroupingSubjClss.Refresh;
      end;
    end;
  end;
  //dbgGrSubj.ClearSelection := false;
  dbgGrSubj.SetFocus;
  //dbgGrSubj.UnselectAll;
end;

procedure TfmGroupingSubj.dbgGrSubjEditChange(Sender: TObject);
begin
  dbgGrSubj.EditorMode := false;
end;

procedure TfmGroupingSubj.dbgGrSubjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  si: Integer;
  BM: TBookmark;
begin
  if Key <> 46 then Exit;

  si := dbgGrSubj.SelectedField.Index;

  if (si < 5) or ((si mod 2) = 0)  then Exit;
  DM.AddTeacherGroup(DM.ibdsTeacherGroupClssGROUPING_ID.Value,
    DM.ibdsTeacherGroupClssTEACHER_ID.Value,
    DM.ibdsGroupingSubjClssGR_SUBJ_ID.Value, (si - 5) div 2, -1);

  DM.ibdsGroupingSubjClss.Refresh;
end;

procedure TfmGroupingSubj.miWordClick(Sender: TObject);
var
  rep: TRTReport;
  BM: TBookmark;
  i: integer;
begin
  rep := TRTReport.Create;
  rep.SetMarginsMM;
  rep.ParSet(fTimes, 12, [fstBold]);
  rep.AddPar(DM.ibdsTeacherGroupClssTEACHER.Value + ' (' + DM.ibdsTeacherGroupClssGROUPING_NAME.Value + ')');

  rep.ParSetTableHead;
  rep.CreateMergeHeaderMMSz([7, 35, 10, 15, 15, 15, 15, 15, 15, 15, 15, 15], [0, 1, 2], []);
  rep.AddRow(['¹', 'Ïðåäìåò', 'Ð.\line ê-âî', 'Êëàññ 0', 'Êëàññ 1', 'Êëàññ 2',
    'Êëàññ 3', 'Êëàññ 4', 'Êëàññ 5', 'Êëàññ 6', 'Êëàññ 7', 'Êëàññ 8']);
  rep.CompleteMergeHeaderMMSz([7, 35, 10, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8], [0, 1, 2], []);
  rep.AddRow(['', '', '', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.', 'Ãð.', 'Ó÷.']);
  rep.CreateTableMMSz([7, 35, 10, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8, 7, 8], []);
  rep.ParSetTable;
  DM.ibdsGroupingSubjClss.DisableControls;
  BM := DM.ibdsGroupingSubjClss.GetBookmark;
  DM.ibdsGroupingSubjClss.First;
  i := 1;
  while not DM.ibdsGroupingSubjClss.Eof do
  begin
    rep.AddRow(['\qr ' + IntToStr(i), '\ql ' + DM.ibdsGroupingSubjClssGR_SUBJ_NAME.Value, '\qr ' + DM.ibdsGroupingSubjClssGR_QTY.AsString,
      DM.ibdsGroupingSubjClssG_QTY_0.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_0.Value),
      DM.ibdsGroupingSubjClssG_QTY_1.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_1.Value),
      DM.ibdsGroupingSubjClssG_QTY_2.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_2.Value),
      DM.ibdsGroupingSubjClssG_QTY_3.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_3.Value),
      DM.ibdsGroupingSubjClssG_QTY_4.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_4.Value),
      DM.ibdsGroupingSubjClssG_QTY_5.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_5.Value),
      DM.ibdsGroupingSubjClssG_QTY_6.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_6.Value),
      DM.ibdsGroupingSubjClssG_QTY_7.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_7.Value),
      DM.ibdsGroupingSubjClssG_QTY_8.AsString, iFormat(DM.ibdsGroupingSubjClssS_QTY_8.Value)
    ]);
    inc(i);
    DM.ibdsGroupingSubjClss.Next;
  end;

  DM.ibdsGroupingSubjClss.GotoBookmark(BM);
  DM.ibdsGroupingSubjClss.FreeBookmark(BM);
  DM.ibdsGroupingSubjClss.EnableControls;
  rep.SaveAndExecuteReport(Handle, 'Ãðóïïû');
  rep.Free;
end;

procedure TfmGroupingSubj.miCloseClick(Sender: TObject);
begin
  Close;
end;

end.
