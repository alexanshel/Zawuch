unit UTeacherFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, ComCtrls, Placemnt,
  ToolEdit, RXCtrls, Mask, Spin, DB, IBCustomDataSet, JvExControls,
  JvDBLookup, CheckLst, IBQuery;

type
  TfmTeacherFilter = class(TForm)
    rgWorked: TRadioGroup;
    GroupBox1: TGroupBox;
    edBStage: TLabeledEdit;
    edEStage: TLabeledEdit;
    btnResetMainSubj: TSpeedButton;
    btnResetPost: TSpeedButton;
    btnResetFilial: TSpeedButton;
    BitBtn1: TBitBtn;
    cbOnOff: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    FormPlacement1: TFormPlacement;
    edMainSubj: TComboEdit;
    RxLabel1: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    edFilial: TComboEdit;
    btnResetEduc: TSpeedButton;
    edBirthDB: TDateEdit;
    edBirthDE: TDateEdit;
    edEnterDB: TDateEdit;
    edEnterDE: TDateEdit;
    edRelDB: TDateEdit;
    edRelDE: TDateEdit;
    btnRDB: TSpeedButton;
    btnRDE: TSpeedButton;
    btnRDR: TSpeedButton;
    edBStageM: TLabeledEdit;
    edEStageM: TLabeledEdit;
    sbStageClear: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    sbCatPedClear: TSpeedButton;
    sbCatConcClear: TSpeedButton;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    dsCategory: TDataSource;
    ibdsCategory: TIBDataSet;
    dsTitle: TDataSource;
    ibdsTitle: TIBDataSet;
    sbClearTitle: TSpeedButton;
    cbTitle: TCheckBox;
    clbCatPed: TCheckListBox;
    ibq: TIBQuery;
    clbCatConc: TCheckListBox;
    clbTitle: TCheckListBox;
    clbPost: TCheckListBox;
    clbEdu: TCheckListBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnChMainSubjClick(Sender: TObject);
    procedure btnResetMainSubjClick(Sender: TObject);
    procedure btnResetPostClick(Sender: TObject);
    procedure btnChFilialClick(Sender: TObject);
    procedure btnResetFilialClick(Sender: TObject);
    procedure edEStageKeyPress(Sender: TObject; var Key: Char);
    procedure btnResetEducClick(Sender: TObject);
    procedure ResetDates(Sender: TObject);
    procedure sbStageClearClick(Sender: TObject);
    procedure sbCatPedClearClick(Sender: TObject);
    procedure sbCatConcClearClick(Sender: TObject);
    procedure sbClearTitleClick(Sender: TObject);
    procedure cbTitleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherFilter: TfmTeacherFilter;

implementation

uses UDM, USubject, UTarif, UPost, UFilial, UEducation, Math;

{$R *.dfm}

function I2V(V: Integer): Variant;
begin
  if V = -1 then Result := Null else Result := V
end;

function D2V(DE: TDateEdit): Variant;
var
  DT: TDateTime;
begin
  if TryStrToDate(DE.Text, DT) then Result := DE.Date
  else Result := Null;
end;

function StringsIDsToCSV(value: TCheckListBox): Variant;
var
  i: Integer;
begin
  for i := 0 to value.Count - 1 do
  begin
    if (value.Checked[i]) then
      result := result + IntToStr(Integer(value.Items.Objects[i])) + ',';
  end;
end;

procedure TfmTeacherFilter.FormClose(Sender: TObject; var Action: TCloseAction);
var
  filterTitleID: Variant;
begin

  DM.ibdsTeacher.Filtered := false;

  DM.AddTeacherFilter(DM.ibdsTeacherFilterID.Value, DM.ibdsTeacherFilterNAME.Value,
    I2V(edMainSubj.Tag), Null, Null,
    StringsIDsToCSV(clbPost), StringsIDsToCSV(clbEdu), I2V(edFilial.Tag),
    rgWorked.ItemIndex, edBStage.Text, edEStage.Text,
    D2V(edBirthDB), D2V(edBirthDE),
    D2V(edEnterDB), D2V(edEnterDE),
    D2V(edRelDB), D2V(edRelDE),
    edBStageM.Text,
    edEStageM.Text,
    StringsIDsToCSV(clbCatPed),
    StringsIDsToCSV(clbCatConc),
    StringsIDsToCSV(clbTitle)
  );
  DM.ibdsTeacherFilter.Refresh;

  DM.ibdsTeacher.Filtered := cbOnOff.Checked;
  ibdsCategory.Close;
  ibdsTitle.Close;
end;

function V2I(V: Variant): Integer;
begin
  if V = Null then Result := -1
  else
    Result := V;
end;

function LoadCheckList(
  clb: TCheckListBox;
  aSql: String
): Boolean;
begin
  result := true;
  with DM.ibqProc do
  begin
    SQL.Clear;
    SQL.Append(aSql);
    ParamByName('tf_id').Value := 1;
    Open;
    while not Eof do
    begin
      clb.Checked[
        clb.Items.AddObject(FieldByName('f_name').Value, TObject(FieldByName('f_id').AsInteger))
      ] := FieldByName('f_checked').Value = 1;
      result := result and FieldByName('f_checked').Value = 1;
      Next;
    end;
    Close;
  end;
end;

procedure ClearClbChecked(clb: TCheckListBox);
var
  i: Integer;
begin
  for i := 0 to clb.Count - 1 do clb.Checked[i] := false;
end;

procedure TfmTeacherFilter.FormCreate(Sender: TObject);
begin

  cbOnOff.Checked := DM.ibdsTeacher.Filtered;

  DM.ibdsTeacherFilter.Close;
  DM.ibdsTeacherFilter.Open;
  DM.ibdsTeacherFilter.Locate('ID', 1, []);
  ibdsCategory.Open;
  ibdsTitle.Open;

  // Í‡ÚÂ„ÓËË
  LoadCheckList(
    clbCatPed,
    'select f_id, f_name, f_checked_ped f_checked from v_tf_cat where f_tf_id = :tf_id'
  );
  LoadCheckList(
    clbCatConc,
    'select f_id, f_name, f_checked_ped f_checked from v_tf_cat where f_tf_id = :tf_id'
  );

  // Á‚‡ÌËÂ
  cbTitle.Checked := LoadCheckList(
    clbTitle,
    'select f_id, f_name, f_checked from v_tf_title where f_tf_id = :tf_id order by f_name'
  );
  clbTitle.Enabled := not cbTitle.Checked;

  // ‰ÓÎÊÌÓÒÚ¸
  LoadCheckList(
    clbPost,
    'select f_id, f_name, f_checked from v_tf_post where f_tf_id = :tf_id order by f_name'
  );

  // Ó·‡ÁÓ‚‡ÌËÂ
  LoadCheckList(
    clbEdu,
    'select f_id, f_name, f_checked from v_tf_education where f_tf_id = :tf_id order by f_name'
  );

  edMainSubj.Tag := V2I(DM.ibdsTeacherFilterMAIN_SUBJ_ID.AsVariant);
  if edMainSubj.Tag = -1 then edMainSubj.Text := 'Àﬁ¡Œ…'
  else
    edMainSubj.Text := DM.ibdsTeacherFilterMAIN_SUBJ_NAME.AsVariant;

  edFilial.Tag := V2I(DM.ibdsTeacherFilterFILIAL_ID.AsVariant);
  if edFilial.Tag = -1 then edFilial.Text := 'Àﬁ¡Œ…'
  else
    edFilial.Text := DM.ibdsTeacherFilterFILIAL_NAME.Value;

  edBStage.Text := DM.ibdsTeacherFilterSTAGE_B.AsString;
  edEStage.Text := DM.ibdsTeacherFilterSTAGE_E.AsString;
  edBStageM.Text := DM.ibdsTeacherFilterSTAGE_B_M.AsString;
  edEStageM.Text := DM.ibdsTeacherFilterSTAGE_E_M.AsString;

  rgWorked.ItemIndex := DM.ibdsTeacherFilterSTATE.Value;

  edBirthDB.Text := DM.ibdsTeacherFilterBIRTH_D_B.Text;
  edBirthDE.Text := DM.ibdsTeacherFilterBIRTH_D_E.Text;

  edEnterDB.Text := DM.ibdsTeacherFilterENTER_D_B.Text;
  edEnterDE.Text := DM.ibdsTeacherFilterENTER_D_E.Text;

  edRelDB.Text := DM.ibdsTeacherFilterRELEASE_D_B.Text;
  edRelDE.Text := DM.ibdsTeacherFilterRELEASE_D_E.Text;
end;

procedure TfmTeacherFilter.btnChMainSubjClick(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  fmSubject.LookupMode := true;
  DM.ibdsSubject.Locate('ID', VarArrayOf([edMainSubj.Tag]), []);
  fmSubject.ShowModal;
  fmSubject.Release;
  edMainSubj.Tag := DM.ibdsSubjectID.Value;
  edMainSubj.Text := DM.ibdsSubjectName.Value;
end;

procedure TfmTeacherFilter.btnResetMainSubjClick(Sender: TObject);
begin
  edMainSubj.Tag := -1;
  edMainSubj.Text := 'Àﬁ¡Œ…';
end;

procedure TfmTeacherFilter.btnResetPostClick(Sender: TObject);
begin
  ClearClbChecked(clbPost);
end;

procedure TfmTeacherFilter.btnChFilialClick(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  fmFilial.isLookupMode := true;
  DM.ibdsFilial.Locate('ID', VarArrayOf([edFilial.Tag]), []);
  fmFilial.ShowModal;
  fmFilial.Release;
  edFilial.Tag := DM.ibdsFilialID.Value;
  edFilial.Text := DM.ibdsFilialName.Value;
end;

procedure TfmTeacherFilter.btnResetFilialClick(Sender: TObject);
begin
  edFilial.Tag := -1;
  edFilial.Text := 'Àﬁ¡Œ…';
end;

procedure TfmTeacherFilter.edEStageKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmTeacherFilter.btnResetEducClick(Sender: TObject);
begin
  ClearClbChecked(clbEdu);
end;

procedure TfmTeacherFilter.ResetDates(Sender: TObject);
var
  i: Integer;
  c: TComponent;
begin
  c := (Sender as TSpeedButton).Parent;
  if c is TGroupBox then
    for i := 0 to (c as TGroupBox).ControlCount - 1 do
      if (c as TGroupBox).Controls[i] is TDateEdit then
        ((c as TGroupBox).Controls[i] as TDateEdit).Text := '';
end;

procedure TfmTeacherFilter.sbStageClearClick(Sender: TObject);
begin
  edBStage.Text := '';
  edEStage.Text := '';
  edBStageM.Text := '';
  edEStageM.Text := '';
end;

procedure TfmTeacherFilter.sbCatPedClearClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to clbCatPed.Count - 1 do
    clbCatPed.Checked[i] := false;
end;

procedure TfmTeacherFilter.sbCatConcClearClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to clbCatConc.Count - 1 do
    clbCatConc.Checked[i] := false;
end;

procedure TfmTeacherFilter.sbClearTitleClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to clbTitle.Count - 1 do
    clbTitle.Checked[i] := false;
end;

procedure TfmTeacherFilter.cbTitleClick(Sender: TObject);
var
  i: Integer;
begin
  clbTitle.Enabled := not cbTitle.Checked;
  for i := 0 to clbTitle.Count - 1 do clbTitle.Checked[i] := cbTitle.Checked;
end;

end.
