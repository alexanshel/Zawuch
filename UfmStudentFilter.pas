unit UfmStudentFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls,  IniFiles, IBSQL, DB,
  IBCustomDataSet, IBQuery, IBFilterDialog, Placemnt, ToolEdit, RXCtrls,
  Mask, RXSwitch, Menus, XPMan, JvExMask, JvToolEdit, JvCombobox, ImgList,
  JvExControls, JvLabel, uStudentFilter, JvExComCtrls, JvgTreeView,
  JvDataSource, JvMemoryDataset, JvSpeedButton, JvDBLookup;

type
  TfmStudentFilter = class(TForm)
    cbBClass: TComboBox;
    Label1: TLabel;
    cbFinanc: TComboBox;
    Label2: TLabel;
    cbMoney: TComboBox;
    Label3: TLabel;
    cbStatus: TComboBox;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox5: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Panel1: TPanel;
    btnSave: TBitBtn;
    cbOnOff: TCheckBox;
    cbSubjState: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    cbEClass: TComboBox;
    Label19: TLabel;
    btnAllCls: TSpeedButton;
    Label20: TLabel;
    cbPeriod: TComboBox;
    edAgeB: TEdit;
    edAgeE: TEdit;
    FormPlacement1: TFormPlacement;
    RxLabel1: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    MainMenu1: TMainMenu;
    miClose: TMenuItem;
    XPManifest1: TXPManifest;
    jvceSpec: TJvComboEdit;
    jvlSpec: TJvLabel;
    il: TImageList;
    ibdsStudentFilter: TIBDataSet;
    ibdsStudentFilterID: TIntegerField;
    ibdsStudentFilterNAME: TIBStringField;
    ibdsStudentFilterDATA: TBlobField;
    jvmdStudentFilter: TJvMemoryData;
    jvmdStudentFilterSpec: TJvMemoryData;
    jvmdStudentFilterSpecID_SPECIALIZATION: TIntegerField;
    jvmdStudentFilterSpecSPEC_NAME: TStringField;
    jvspClearSpec: TJvSpeedButton;
    jvspResetFilial: TJvSpeedButton;
    jvsbMasterReset: TJvSpeedButton;
    jvceFilial: TJvComboEdit;
    jvceCurator: TJvComboEdit;
    jvceSubject1: TJvComboEdit;
    jvceSubject2: TJvComboEdit;
    jvceTeacher1: TJvComboEdit;
    jvceTeacher2: TJvComboEdit;
    jvsbResetSubj1: TJvSpeedButton;
    jvceResetSubj2: TJvSpeedButton;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    jvdeEnterDE: TJvDateEdit;
    JvSpeedButton3: TJvSpeedButton;
    JvSpeedButton4: TJvSpeedButton;
    JvSpeedButton5: TJvSpeedButton;
    JvSpeedButton6: TJvSpeedButton;
    jvdeReleaseDB: TJvDateEdit;
    jvdeReleaseDE: TJvDateEdit;
    jvdeRestoreDB: TJvDateEdit;
    jvdeRestoreDE: TJvDateEdit;
    jvdeAcademDB: TJvDateEdit;
    jvdeAcademDE: TJvDateEdit;
    jvdeEnterDB: TJvDateEdit;
    jdblcSex: TJvDBLookupCombo;
    Label5: TLabel;
    jsbSexClear: TJvSpeedButton;
    dsSex: TDataSource;
    ibdsSex: TIBDataSet;
    dsStudentFilter: TDataSource;
    jvmdStudentFilterID: TIntegerField;
    jvmdStudentFilterNAME: TStringField;
    jvmdStudentFilterFILIAL_ID: TIntegerField;
    jvmdStudentFilterFILIAL_NAME: TStringField;
    jvmdStudentFilterCLASS_B: TIntegerField;
    jvmdStudentFilterCLASS_E: TIntegerField;
    jvmdStudentFilterCURATOR_ID: TIntegerField;
    jvmdStudentFilterCURATOR_NAME: TStringField;
    jvmdStudentFilterCATEGORY: TIntegerField;
    jvmdStudentFilterPERIOD: TIntegerField;
    jvmdStudentFilterSTATUS: TIntegerField;
    jvmdStudentFilterPAY_PERCENT: TIntegerField;
    jvmdStudentFilterAGE_B: TIntegerField;
    jvmdStudentFilterAGE_E: TIntegerField;
    jvmdStudentFilterENTER_D_B: TDateField;
    jvmdStudentFilterENTER_D_E: TDateField;
    jvmdStudentFilterRELEASE_D_B: TDateField;
    jvmdStudentFilterRELEASE_D_E: TDateField;
    jvmdStudentFilterRESTORE_D_B: TDateField;
    jvmdStudentFilterRESTORE_D_E: TDateField;
    jvmdStudentFilterACADEMY_D_B: TDateField;
    jvmdStudentFilterACADEMY_D_E: TDateField;
    jvmdStudentFilterSUBJECT_ID_1: TIntegerField;
    jvmdStudentFilterSUBJECT_NAME_1: TStringField;
    jvmdStudentFilterTEACHER_ID_1: TIntegerField;
    jvmdStudentFilterTEACHER_NAME_1: TStringField;
    jvmdStudentFilterSUBJECT_ID_2: TIntegerField;
    jvmdStudentFilterSUBJECT_NAME_2: TStringField;
    jvmdStudentFilterTEACHER_ID_2: TIntegerField;
    jvmdStudentFilterTEACHER_NAME_2: TStringField;
    jvmdStudentFilterSUBJ_STATE: TIntegerField;
    jvmdStudentFilterFINANCING_ID: TIntegerField;
    jvmdStudentFilterID_SEX: TIntegerField;
    ibqProc: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChMasterClick(Sender: TObject);
    procedure btnChFilialClick(Sender: TObject);
    procedure btnResetFilialClick(Sender: TObject);
    procedure btnChSubj1Click(Sender: TObject);
    procedure btnChSubj2Click(Sender: TObject);
    procedure btnResetSubj2Click(Sender: TObject);
    procedure btnResetSubj1Click(Sender: TObject);
    procedure btnChTeacher1Click(Sender: TObject);
    procedure btnResetTeacher1Click(Sender: TObject);
    procedure btnChTeacher2Click(Sender: TObject);
    procedure btnResetTeacher2Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnAllClsClick(Sender: TObject);
    procedure cbPeriodKeyPress(Sender: TObject; var Key: Char);
    procedure edAgeBKeyPress(Sender: TObject; var Key: Char);
    procedure ResetDates(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure btnMasterResetClick(Sender: TObject);
    procedure jvceSpecButtonClick(Sender: TObject);
    procedure edAgeBChange(Sender: TObject);
    procedure edAgeEChange(Sender: TObject);
    procedure edEnterDBChange(Sender: TObject);
    procedure edEnterDEChange(Sender: TObject);
    procedure edReleaseDBChange(Sender: TObject);
    procedure edReleaseDEChange(Sender: TObject);
    procedure edRestoreDBChange(Sender: TObject);
    procedure edRestoreDEChange(Sender: TObject);
    procedure edAcademDBChange(Sender: TObject);
    procedure edAcademDEChange(Sender: TObject);
    procedure cbSubjStateChange(Sender: TObject);
    procedure cbFinancChange(Sender: TObject);
    procedure cbBClassChange(Sender: TObject);
    procedure cbEClassChange(Sender: TObject);
    procedure jvspClearSpecClick(Sender: TObject);
    procedure cbPeriodChange(Sender: TObject);
    procedure cbMoneyChange(Sender: TObject);
    procedure jsbSexClearClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    btnSaveClicked: boolean;
    procedure RefreshSpec;
    function AddStudentFilter(
      ID: Variant;
      Name: String;
      FilialID,
      ClassB,
      ClassE,
      CuratorID,
      Period,
      Status,
      PayPercent,
      AgeB,
      AgeE,
      EnterDB,
      EnterDE,
      ReleaseDB,
      ReleaseDE,
      RestoreDB,
      RestoreDE,
      AcademyDB,
      AcademyDE,
      SubjectID1,
      TeacherID1,
      SubjectID2, TeacherID2, SubjState, FinancingID, IDSex: Variant
    ): Integer;
  public
    { Public declarations }
    ID_Filter: Integer;
    procedure LoadFilter(FilterName: string);
    procedure SaveFilter(FilterName: string);
  end;

var
  fmStudentFilter: TfmStudentFilter;

implementation

uses UDM, UDepSpecCurr, UTeacher, UFilial, USubject, Math, StrUtils, VarUtils,
  UDeptSpecTree, UStudent;

{$R *.dfm}

function Coalesce(Values: array of const): Variant;
var
  i: Integer;
begin
  Result := Null;
  for i := Low(Values) to High(Values) do
    if (Values[i].VVariant)^ <> Null then
    begin
      Result := (Values[i].VVariant)^;
      Break;
    end;
end;

procedure TfmStudentFilter.FormCreate(Sender: TObject);
var
  //Ini: TIniFile;
  Tmp: Variant;
  function V2E(V: Variant; Ed: TComboEdit): boolean;
  begin
    if V = Null then Ed.Tag := -1
    else Ed.Tag := V;
    Result := Ed.Tag <> -1;
  end;
  function nl(V: Variant): integer;
  begin
    if V = Null then Result := -1
    else Result := V;
  end;

begin
  ID_Filter := 1;

  cbOnOff.Checked := DM.ibdsStudent.Filtered;

  fmStudent.ibdsStudentFilter.Close;
  fmStudent.ibdsStudentFilterSpec.Close;
  fmStudent.ibdsStudentFilter.Open;
  fmStudent.ibdsStudentFilter.Locate('ID', 1, []);
  fmStudent.ibdsStudentFilterSpec.Open;
  jvmdStudentFilter.Open;
  jvmdStudentFilterSpec.Open;
  ibdsSex.Open;


  jvceCurator.Text := jvmdStudentFilterCURATOR_NAME.Value;
  jvceFilial.Text := jvmdStudentFilterFILIAL_NAME.Value;
  cbBClass.ItemIndex := Coalesce([jvmdStudentFilterCLASS_B.AsVariant, Variant(-1)]) + 1;
  cbEClass.ItemIndex := Coalesce([jvmdStudentFilterCLASS_E.AsVariant, Variant(-1)]) + 1;
  cbFinanc.ItemIndex := Coalesce([jvmdStudentFilterFINANCING_ID.AsVariant, Variant(-1)]) + 1;
  cbMoney.ItemIndex := Coalesce([jvmdStudentFilterPAY_PERCENT.AsVariant, Variant(-1)]) + 1;
  cbStatus.ItemIndex := Coalesce([jvmdStudentFilterSTATUS.AsVariant, Variant(-1)]) + 1;
  edAgeB.Text := jvmdStudentFilterAGE_B.AsString; fmStudent.ibdsStudentFilterAGE_B.AsString;
  edAgeE.Text := jvmdStudentFilterAGE_E.AsString;
  jvdeEnterDB.Text := jvmdStudentFilterENTER_D_B.AsString;
  jvdeEnterDE.Text := jvmdStudentFilterENTER_D_E.AsString;
  jvdeReleaseDB.Text := jvmdStudentFilterRELEASE_D_B.Text;
  jvdeReleaseDE.Text := jvmdStudentFilterRELEASE_D_E.Text;
  jvdeRestoreDB.Text := jvmdStudentFilterRESTORE_D_B.Text;
  jvdeRestoreDE.Text := jvmdStudentFilterRESTORE_D_E.Text;
  jvdeAcademDB.Text := jvmdStudentFilterACADEMY_D_B.Text;
  jvdeAcademDE.Text := jvmdStudentFilterACADEMY_D_E.Text;
  jvceSubject1.Text := jvmdStudentFilterSUBJECT_NAME_1.Text;
  jvceSubject2.Text := jvmdStudentFilterSUBJECT_NAME_2.Text;
  jvceTeacher1.Text := jvmdStudentFilterTEACHER_NAME_1.Text;
  jvceTeacher2.Text := jvmdStudentFilterTEACHER_NAME_2.Text;
  cbSubjState.ItemIndex := Coalesce([jvmdStudentFilterSUBJ_STATE.AsVariant, Variant(-1)]) + 1;
  cbPeriod.ItemIndex := Coalesce([jvmdStudentFilterPERIOD.AsVariant, Variant(0)]);
  jdblcSex.KeyValue := jvmdStudentFilterID_SEX.AsVariant;

  RefreshSpec;

  btnSaveClicked := False;
end;

procedure TfmStudentFilter.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i, j, l: integer;
//  Ini: TIniFile;
  function nl(V: integer): Variant;
  begin
    Result := V;
    if V = -1 then Result := Null;
  end;
  function d(DE: TDateEdit): Variant;
  var
    d: TDateTime;
  begin
    if TryStrToDate(DE.Text, d) then Result := DE.Date
    else Result := null;
  end;

begin
  //DM.ibdsStudentFilter.Close;
  //DM.ibdsStudentFilter.Open;
  //DM.ibdsStudentFilter.First;
  if btnSaveClicked then
  begin
    btnSaveClicked := false;

    AddStudentFilter(jvmdStudentFilterID.Value,
      jvmdStudentFilterNAME.Value,
      jvmdStudentFilterFILIAL_ID.AsVariant,
      jvmdStudentFilterCLASS_B.AsVariant,
      jvmdStudentFilterCLASS_E.AsVariant,
      jvmdStudentFilterCURATOR_ID.AsVariant,
      jvmdStudentFilterPERIOD.AsVariant,
      jvmdStudentFilterSTATUS.AsVariant,
      jvmdStudentFilterPAY_PERCENT.AsVariant,
      jvmdStudentFilterAGE_B.AsVariant,
      jvmdStudentFilterAGE_E.AsVariant,
      jvmdStudentFilterENTER_D_B.AsVariant,
      jvmdStudentFilterENTER_D_E.AsVariant,
      jvmdStudentFilterRELEASE_D_B.AsVariant,
      jvmdStudentFilterRELEASE_D_E.AsVariant,
      jvmdStudentFilterRESTORE_D_B.AsVariant,
      jvmdStudentFilterRESTORE_D_E.AsVariant,
      jvmdStudentFilterACADEMY_D_B.AsVariant,
      jvmdStudentFilterACADEMY_D_E.AsVariant,
      jvmdStudentFilterSUBJECT_ID_1.AsVariant,
      jvmdStudentFilterTEACHER_ID_1.AsVariant,
      jvmdStudentFilterSUBJECT_ID_2.AsVariant,
      jvmdStudentFilterTEACHER_ID_2.AsVariant,
      jvmdStudentFilterSUBJ_STATE.AsVariant,
      jvmdStudentFilterFINANCING_ID.AsVariant,
      jvmdStudentFilterID_SEX.AsVariant
    );
    DM.ClearStudentFilterSpec(jvmdStudentFilterID.Value);
    jvmdStudentFilterSpec.First;
    while not jvmdStudentFilterSpec.Eof do
    begin
      DM.AddSTFilterSpec(jvmdStudentFilterID.Value, jvmdStudentFilterSpecID_SPECIALIZATION.Value);
      jvmdStudentFilterSpec.Next;
    end;

    //DM.ibdsStudentFilter.Close;
    //DM.ibdsStudentFilter.Open;
    //DM.ibdsStudentFilter.Locate('ID', 1, []);
  end;
end;

procedure TfmStudentFilter.btnChMasterClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', VarArrayOf([jvmdStudentFilterCURATOR_ID.Value]), []);
  fmTeacher.ShowModal;
  fmTeacher.Release;

  jvmdStudentFilter.Edit;
  jvmdStudentFilterCURATOR_ID.Value := DM.ibdsTeacherID.Value;
  jvmdStudentFilterCURATOR_NAME.Value := DM.ibdsTeacherName.Value;
  jvmdStudentFilter.Post;
  jvceCurator.Text := DM.ibdsTeacherName.Value;
end;

procedure TfmStudentFilter.btnChFilialClick(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  fmFilial.isLookupMode := true;
  fmFilial.ShowModal;
  fmFilial.Release;
  jvmdStudentFilter.Edit;
  jvmdStudentFilterFILIAL_ID.Value := DM.ibdsFilialID.Value;
  jvmdStudentFilterFILIAL_NAME.Value := DM.ibdsFilialName.Value;
  jvmdStudentFilter.Post;
  jvceFilial.Text := DM.ibdsFilialName.Value;
end;

procedure TfmStudentFilter.btnResetFilialClick(Sender: TObject);
begin
  jvmdStudentFilter.Edit;
  jvmdStudentFilterFILIAL_ID.AsVariant := Null;
  jvmdStudentFilter.Post;
  jvceFilial.Text := 'кчани';
end;

procedure TfmStudentFilter.btnChSubj1Click(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  DM.ibdsSubject.Locate('ID', VarArrayOf([jvmdStudentFilterSUBJECT_ID_1.Value]), []);
  fmSubject.LookupMode := true;
  fmSubject.ShowModal;
  fmSubject.Release;

  jvmdStudentFilter.Edit;
  jvmdStudentFilterSUBJECT_ID_1.Value := DM.ibdsSubjectID.Value;
  jvmdStudentFilterSUBJECT_NAME_1.Value := DM.ibdsSubjectName.Value;
  jvmdStudentFilter.Post;

  jvceSubject1.Text := DM.ibdsSubjectName.Value;
end;

procedure TfmStudentFilter.btnChSubj2Click(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  DM.ibdsSubject.Locate('ID', VarArrayOf([jvmdStudentFilterSUBJECT_ID_2.Value]), []);
  fmSubject.LookupMode := true;
  fmSubject.ShowModal;
  fmSubject.Release;

  jvmdStudentFilter.Edit;
  jvmdStudentFilterSUBJECT_ID_2.Value := DM.ibdsSubjectID.Value;
  jvmdStudentFilterSUBJECT_NAME_2.Value := DM.ibdsSubjectName.Value;
  jvmdStudentFilter.Post;

  jvceSubject2.Text := DM.ibdsSubjectName.Value;
end;

procedure TfmStudentFilter.btnResetSubj2Click(Sender: TObject);
begin
  jvmdStudentFilter.Edit;
  jvmdStudentFilterSUBJECT_ID_2.AsVariant := Null;
  jvmdStudentFilter.Post;
  jvceSubject2.Text := 'кчани';
end;

procedure TfmStudentFilter.btnResetSubj1Click(Sender: TObject);
begin
  jvmdStudentFilter.Edit;
  jvmdStudentFilterSUBJECT_ID_1.AsVariant := Null;
  jvmdStudentFilter.Post;
  jvceSubject1.Text := 'кчани';
end;

procedure TfmStudentFilter.btnChTeacher1Click(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', VarArrayOf([jvmdStudentFilterTEACHER_ID_1.Value]), []);
  fmTeacher.ShowModal;
  fmTeacher.Release;

  jvmdStudentFilter.Edit;
  jvmdStudentFilterTEACHER_ID_1.Value := DM.ibdsTeacherID.Value;
  jvmdStudentFilterTEACHER_NAME_1.Value := DM.ibdsTeacherName.Value;
  jvmdStudentFilter.Post;

  jvceTeacher1.Text := DM.ibdsTeacherName.Value;
end;

procedure TfmStudentFilter.btnResetTeacher1Click(Sender: TObject);
begin
  jvmdStudentFilter.Edit;
  jvmdStudentFilterTEACHER_ID_1.AsVariant := Null;
  jvmdStudentFilter.Post;

  jvceTeacher1.Text := 'кчани';
end;

procedure TfmStudentFilter.btnChTeacher2Click(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', VarArrayOf([jvmdStudentFilterTEACHER_ID_2.Value]), []);
  fmTeacher.ShowModal;
  fmTeacher.Release;

  jvmdStudentFilter.Edit;
  jvmdStudentFilterTEACHER_ID_2.Value := DM.ibdsTeacherID.Value;
  jvmdStudentFilterTEACHER_NAME_2.Value := DM.ibdsTeacherName.Value;
  jvmdStudentFilter.Post;

  jvceTeacher2.Text := DM.ibdsTeacherName.Value;
end;

procedure TfmStudentFilter.btnResetTeacher2Click(Sender: TObject);
begin
  jvmdStudentFilter.Edit;
  jvmdStudentFilterTEACHER_ID_2.AsVariant := Null;
  jvmdStudentFilter.Post;
  jvceTeacher2.Text := 'кчани';
end;

procedure TfmStudentFilter.btnSaveClick(Sender: TObject);
begin
  btnSaveClicked := true;
end;

procedure TfmStudentFilter.btnAllClsClick(Sender: TObject);
begin
  cbBClass.ItemIndex := 0;
  cbBClass.OnChange(Sender);
  cbEClass.ItemIndex := 0;
  cbEClass.OnChange(Sender);  
end;

procedure TfmStudentFilter.cbPeriodKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0
end;

procedure TfmStudentFilter.edAgeBKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmStudentFilter.ResetDates(Sender: TObject);
var
  i: Integer;
  c: TComponent;
begin
  c := (Sender as TJvSpeedButton).Parent;
  if c is TGroupBox then
    for i := 0 to (c as TGroupBox).ControlCount - 1 do
      if (c as TGroupBox).Controls[i] is TJvDateEdit then
        ((c as TGroupBox).Controls[i] as TJvDateEdit).Text := '';
end;

procedure TfmStudentFilter.miCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfmStudentFilter.cbStatusChange(Sender: TObject);
begin
  cbStatus.Hint := cbStatus.Items[cbStatus.ItemIndex];
  if cbStatus.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterSTATUS.AsVariant := NULL;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterSTATUS.AsVariant := cbStatus.ItemIndex - 1;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.LoadFilter(FilterName: string);
begin

end;

procedure TfmStudentFilter.SaveFilter(FilterName: string);
begin

end;

procedure TfmStudentFilter.btnMasterResetClick(Sender: TObject);
begin
  jvmdStudentFilter.Edit;
  jvmdStudentFilterCURATOR_ID.AsVariant := Null;
  jvmdStudentFilter.Post;
  jvceCurator.Text := 'кчани';
end;

procedure TfmStudentFilter.jvceSpecButtonClick(Sender: TObject);
begin
  fmDeptSpecTree := TfmDeptSpecTree.Create(Self, jvmdStudentFilterSpec);
  fmDeptSpecTree.LoadDeptSpecTree;
  fmDeptSpecTree.ShowModal;
  fmDeptSpecTree.Release;

  RefreshSpec;
end;

procedure TfmStudentFilter.edAgeBChange(Sender: TObject);
begin
  if edAgeB.Text = '' then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterAGE_B.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterAGE_B.AsVariant := edAgeB.Text;
    jvmdStudentFilter.Post;
  end;
end;

procedure TfmStudentFilter.edAgeEChange(Sender: TObject);
begin
  if edAgeE.Text = '' then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterAGE_E.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterAGE_E.AsVariant := edAgeE.Text;
    jvmdStudentFilter.Post;
  end;
end;

procedure TfmStudentFilter.edEnterDBChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeEnterDB.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterENTER_D_B.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterENTER_D_B.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDB.Text := '';
  end;
end;

procedure TfmStudentFilter.edEnterDEChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeEnterDE.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterENTER_D_E.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterENTER_D_E.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.edReleaseDBChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeReleaseDB.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRELEASE_D_B.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRELEASE_D_B.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.edReleaseDEChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeReleaseDE.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRELEASE_D_E.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRELEASE_D_E.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.edRestoreDBChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeRestoreDB.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRESTORE_D_B.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRESTORE_D_B.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.edRestoreDEChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeRestoreDE.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRESTORE_D_E.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterRESTORE_D_E.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.edAcademDBChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeAcademDB.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterACADEMY_D_B.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterACADEMY_D_B.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.edAcademDEChange(Sender: TObject);
var
  D: TDateTime;
begin
  if TryStrToDate(jvdeAcademDE.Text, D) then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterACADEMY_D_E.AsVariant := D;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterACADEMY_D_E.AsVariant := Null;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.cbSubjStateChange(Sender: TObject);
begin
  if cbSubjState.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterSUBJ_STATE.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterSUBJ_STATE.AsVariant := cbSubjState.ItemIndex - 1;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.cbFinancChange(Sender: TObject);
begin
  if cbFinanc.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterFINANCING_ID.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterFINANCING_ID.AsVariant := cbFinanc.ItemIndex - 1;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.cbBClassChange(Sender: TObject);
begin
  if cbBClass.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterCLASS_B.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterCLASS_B.AsVariant := cbBClass.ItemIndex - 1;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.cbEClassChange(Sender: TObject);
begin
  if cbEClass.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterCLASS_E.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterCLASS_E.AsVariant := cbEClass.ItemIndex - 1;
    jvmdStudentFilter.Post;
    //edEnterDE.Text := '';
  end;
end;

procedure TfmStudentFilter.RefreshSpec;
begin
  jvceSpec.Clear;
  jvmdStudentFilterSpec.First;
  if jvmdStudentFilterSpec.Eof then jvceSpec.Text := 'бяе';
  while not jvmdStudentFilterSpec.Eof do
  begin
    jvceSpec.Text := jvceSpec.Text + jvmdStudentFilterSpecSPEC_NAME.Value + ';';
    jvmdStudentFilterSpec.Next;
  end;
end;

procedure TfmStudentFilter.jvspClearSpecClick(Sender: TObject);
begin
  jvmdStudentFilterSpec.EmptyTable;
  RefreshSpec;
end;

procedure TfmStudentFilter.cbPeriodChange(Sender: TObject);
begin
  if cbPeriod.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterPERIOD.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterPERIOD.AsVariant := cbPeriod.ItemIndex;
    jvmdStudentFilter.Post;
  end;
end;

procedure TfmStudentFilter.cbMoneyChange(Sender: TObject);
begin
  if cbMoney.ItemIndex = 0 then
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterPAY_PERCENT.AsVariant := Null;
    jvmdStudentFilter.Post;
  end
  else
  begin
    jvmdStudentFilter.Edit;
    jvmdStudentFilterPAY_PERCENT.AsVariant := cbMoney.ItemIndex - 1;
    jvmdStudentFilter.Post;
  end;
end;

procedure TfmStudentFilter.jsbSexClearClick(Sender: TObject);
begin
  jdblcSex.KeyValue := null;
end;

procedure TfmStudentFilter.FormDestroy(Sender: TObject);
begin
  ibdsSex.Close;
end;

function TfmStudentFilter.AddStudentFilter(ID: Variant; Name: String;
  FilialID, ClassB, ClassE, CuratorID, Period, Status,
  PayPercent, AgeB, AgeE, EnterDB, EnterDE, ReleaseDB, ReleaseDE,
  RestoreDB, RestoreDE, AcademyDB, AcademyDE, SubjectID1, TeacherID1,
  SubjectID2, TeacherID2, SubjState, FinancingID, IDSex: Variant): Integer;
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append(
    'EXECUTE PROCEDURE ADD_STUDENT_FILTER( ' +
    ':in_id, :in_name, :in_filial_id, ' +
    ':in_class_b, :in_class_e, :in_curator_id, :in_period, :in_status, ' +
    ':in_pay_percent, :in_age_b, :in_age_e, :in_enter_d_b, :in_enter_d_e, :in_release_d_b, ' +
    ':in_release_d_e, :in_restore_d_b, :in_restore_d_e, :in_academy_d_b, :in_academy_d_e, ' +
    ':in_subject_id_1, :in_teacher_id_1, :in_subject_id_2, :in_teacher_id_2, :in_subj_state, :in_financing_id, :in_id_sex)');

  ibqProc.ParamByName('in_id').Value := ID;
  ibqProc.ParamByName('in_name').Value := Name;
  ibqProc.ParamByName('in_filial_id').Value := FilialID;
  ibqProc.ParamByName('in_class_b').Value := ClassB;
  ibqProc.ParamByName('in_class_e').Value := ClassE;
  ibqProc.ParamByName('in_curator_id').Value := CuratorID;
  ibqProc.ParamByName('in_period').Value := Period;
  ibqProc.ParamByName('in_status').Value := Status;
  ibqProc.ParamByName('in_pay_percent').Value := PayPercent;
  ibqProc.ParamByName('in_age_b').Value := AgeB;
  ibqProc.ParamByName('in_age_e').Value := AgeE;
  ibqProc.ParamByName('in_enter_d_b').Value := EnterDB;
  ibqProc.ParamByName('in_enter_d_e').Value := EnterDE;
  ibqProc.ParamByName('in_release_d_b').Value := ReleaseDB;
  ibqProc.ParamByName('in_release_d_e').Value := ReleaseDE;
  ibqProc.ParamByName('in_restore_d_b').Value := RestoreDB;
  ibqProc.ParamByName('in_restore_d_e').Value := RestoreDE;
  ibqProc.ParamByName('in_academy_d_b').Value := AcademyDB;
  ibqProc.ParamByName('in_academy_d_e').Value := AcademyDE;
  ibqProc.ParamByName('in_subject_id_1').Value := SubjectID1;
  ibqProc.ParamByName('in_teacher_id_1').Value := TeacherID1;
  ibqProc.ParamByName('in_subject_id_2').Value := SubjectID2;
  ibqProc.ParamByName('in_teacher_id_2').Value := TeacherID2;
  ibqProc.ParamByName('in_subj_state').Value := SubjState;
  ibqProc.ParamByName('in_financing_id').Value := FinancingID;
  ibqProc.ParamByName('in_id_sex').Value := IDSex;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

end.
