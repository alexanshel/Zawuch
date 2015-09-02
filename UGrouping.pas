unit UGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, RXDBCtrl, ExtCtrls, StdCtrls, Buttons,
  RXSplit, Placemnt, Menus;

type
  TfmGrouping = class(TForm)
    pGroupings: TPanel;
    pGrouping: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dbgGrouping: TRxDBGrid;
    dsGroupingDept: TDataSource;
    dsGrouping: TDataSource;
    dbgGrSubject: TRxDBGrid;
    pSubjCtrl: TPanel;
    btnAddSubj: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelSubj: TSpeedButton;
    btnExtractAll: TSpeedButton;
    GroupBox1: TGroupBox;
    btnAddGrouping: TSpeedButton;
    btnEditGrouping: TSpeedButton;
    btnDelGrouping: TSpeedButton;
    pDepts: TPanel;
    dbgGroupingDept: TRxDBGrid;
    Panel5: TPanel;
    spGr_Dept: TRxSplitter;
    spGrDept_Subj: TRxSplitter;
    pGrSubj: TPanel;
    dsGrSubj: TDataSource;
    FormStorage: TFormStorage;
    MainMenu1: TMainMenu;
    miHelp: TMenuItem;
    miClose: TMenuItem;
    btnUp: TSpeedButton;
    btnDown: TSpeedButton;
    procedure btnAddGroupingClick(Sender: TObject);
    procedure btnEditGroupingClick(Sender: TObject);
    procedure btnDelGroupingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddSubjClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelSubjClick(Sender: TObject);
    procedure btnExtractAllClick(Sender: TObject);
    procedure dbgGrSubjectDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgGrSubjectDblClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
    procedure dsGrSubjDataChange(Sender: TObject; Field: TField);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn;
  public
    { Public declarations }
  end;

var
  fmGrouping: TfmGrouping;

implementation

uses UEdGrouping, UDM, UEdGroupSubj;

{$R *.dfm}

procedure TfmGrouping.btnAddGroupingClick(Sender: TObject);
begin
  fmEdGrouping := TfmEdGrouping.Create(Self);
  fmEdGrouping.isEditMode := false;
  fmEdGrouping.ShowModal;
  fmEdGrouping.Release;
  CheckBtn;
end;

procedure TfmGrouping.btnEditGroupingClick(Sender: TObject);
begin
  fmEdGrouping := TfmEdGrouping.Create(Self);
  fmEdGrouping.isEditMode := true;
  fmEdGrouping.cbFinancing.Checked := DM.ibdsGroupingFinancing.Value;
  fmEdGrouping.ShowModal;
  fmEdGrouping.Release;
end;

procedure TfmGrouping.btnDelGroupingClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно '+
  'хотите удалить совокупность: ' + DM.ibdsGroupingNAME.Value, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelGrouping(DM.ibdsGroupingID.Value);
    DM.ibdsGrouping.Close;
    DM.ibdsGrouping.Open;
    CheckBtn;
  end;
end;

procedure TfmGrouping.FormCreate(Sender: TObject);
begin
  dsGrouping.DataSet := DM.ibdsGrouping;
  DM.ibdsGroupingDept.DataSource := dsGrouping;
  dsGroupingDept.DataSet := DM.ibdsGroupingDept;
  DM.ibdsTeacherGroupSubj.DataSource := dsGrouping;
  DM.ibdsGroupingSubj.DataSource := dsGrouping;
  dsGrSubj.DataSet := DM.ibdsGroupingSubj;
  CheckBtn;
end;

procedure TfmGrouping.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ibdsGroupingDept.DataSource := nil;
  DM.ibdsGroupingSubj.DataSource := nil;
  dsGroupingDept.DataSet := nil;
  dsGrouping.DataSet := nil;
  dsGrSubj.DataSet := nil;
end;

procedure TfmGrouping.CheckBtn;
begin
  btnEditGrouping.Enabled := not DM.ibdsGrouping.IsEmpty;
  btnDelGrouping.Enabled :=   btnEditGrouping.Enabled;
  btnEdit.Enabled := not DM.ibdsGroupingSubj.IsEmpty;
  btnDelSubj.Enabled := btnEdit.Enabled;
  btnAddSubj.Enabled := btnEditGrouping.Enabled;
  btnExtractAll.Enabled :=  btnAddSubj.Enabled;
end;

procedure TfmGrouping.btnAddSubjClick(Sender: TObject);
begin
  fmEdGroupSubj := TfmEdGroupSubj.Create(Self);
  fmEdGroupSubj.ShowModal;
  fmEdGroupSubj.Release;
  CheckBtn;
end;

procedure TfmGrouping.btnEditClick(Sender: TObject);
begin
  if DM.ibdsGroupingSubj.IsEmpty then Exit;
  fmEdGroupSubj := TfmEdGroupSubj.Create(Self);
  fmEdGroupSubj.EditMode := true;
  fmEdGroupSubj.ShowModal;
  fmEdGroupSubj.Release;
end;

procedure TfmGrouping.btnDelSubjClick(Sender: TObject);
begin
  if DM.ibdsGroupingSubj.IsEmpty then Exit;
  if MessageDlg('Вы действительно хотите удалить предмет?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelGroupingSubj(DM.ibdsGroupingID.Value, DM.ibdsGroupingSubjGR_SUBJ_ID.Value);
    DM.ibdsGroupingSubj.Close;
    DM.ibdsGroupingSubj.Open;
  end;
  CheckBtn;
end;

procedure TfmGrouping.btnExtractAllClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите извлечь все предметы?' + #13#10 +
    'Остальные предметы будут удалены!', mtConfirmation, [mbYes, mbNo], 0) =
    mrYes
  then
    DM.ExtractSubjects(Dm.ibdsGroupingID.Value);
  DM.ibdsGroupingSubj.Close;
  DM.ibdsGroupingSubj.Open;
  CheckBtn;
end;

procedure TfmGrouping.dbgGrSubjectDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.ibdsGroupingSubjGR_SUBJ_CODE.Value = 1 then
    dbgGrSubject.Canvas.Font.Color := clBlue
  else
    dbgGrSubject.Canvas.Font.Color := clBlack;
  dbgGrSubject.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmGrouping.dbgGrSubjectDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfmGrouping.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmGrouping.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 24);
end;

procedure TfmGrouping.dsGrSubjDataChange(Sender: TObject; Field: TField);
begin
  btnUp.Enabled := (dbgGrSubject.Row <> 1) and btnEdit.Enabled;
  btnDown.Enabled := (dbgGrSubject.Row <> dbgGrSubject.VisibleRowCount) and
    btnEdit.Enabled;
end;

procedure TfmGrouping.btnUpClick(Sender: TObject);
var
  i: Integer;
begin
  i := DM.AddGroupingSubj(DM.ibdsGroupingSubjGROUPING_ID.Value,
    DM.ibdsGroupingSubjGR_SUBJ_ID.Value,
    DM.ibdsGroupingSubjGR_SUBJ_NAME.Value,
    DM.ibdsGroupingSubjGR_SUBJ_CODE.Value,
    DM.ibdsGroupingSubjGR_QTY.Value,
    DM.ibdsGroupingSubjPOS.Value - 1);
  DM.ibdsGroupingSubj.Close;
  DM.ibdsGroupingSubj.Open;
  DM.ibdsGroupingSubj.Locate('GR_SUBJ_ID', VarArrayOf([i]), []);
end;

procedure TfmGrouping.btnDownClick(Sender: TObject);
var
  i: Integer;
begin
  i := DM.AddGroupingSubj(DM.ibdsGroupingSubjGROUPING_ID.Value,
    DM.ibdsGroupingSubjGR_SUBJ_ID.Value,
    DM.ibdsGroupingSubjGR_SUBJ_NAME.Value,
    DM.ibdsGroupingSubjGR_SUBJ_CODE.Value,
    DM.ibdsGroupingSubjGR_QTY.Value,
    DM.ibdsGroupingSubjPOS.Value + 1);
  DM.ibdsGroupingSubj.Close;
  DM.ibdsGroupingSubj.Open;
  DM.ibdsGroupingSubj.Locate('GR_SUBJ_ID', VarArrayOf([i]), []);
end;

end.
