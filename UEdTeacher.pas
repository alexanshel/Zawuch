unit UEdTeacher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Mask, DB, Grids, DBGrids,
  Menus, Spin, IniFiles, Placemnt, ToolEdit, IBCustomDataSet, JvExControls,
  JvDBLookup, JvExMask, JvToolEdit, JvDBLookupComboEdit, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, JvEdit, JvDBSearchEdit;

type
  TfmEdTeacher = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edName: TLabeledEdit;
    mAddress: TMemo;
    Label2: TLabel;
    Label1: TLabel;
    edTelephone: TLabeledEdit;
    GroupBox5: TGroupBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    edStage: TMaskEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Label9: TLabel;
    edTabNum: TLabeledEdit;
    edBirthDate: TDateEdit;
    edStageDate: TDateEdit;
    edFilial: TComboEdit;
    edPost: TComboEdit;
    Label11: TLabel;
    Label12: TLabel;
    edSubject: TComboEdit;
    Label13: TLabel;
    edEnterDate: TDateEdit;
    Label5: TLabel;
    edReleaseDate: TDateEdit;
    Label6: TLabel;
    dsTitle: TDataSource;
    ibdsTitle: TIBDataSet;
    jdblcTitle: TJvDBLookupCombo;
    jdblcCategory: TJvDBLookupCombo;
    Label15: TLabel;
    Label16: TLabel;
    dsCategory: TDataSource;
    ibdsCategory: TIBDataSet;
    ibdsCategoryF_ID: TIntegerField;
    ibdsCategoryF_NAME: TIBStringField;
    ibdsCategoryF_PRINT: TIBStringField;
    ibdsTitleF_ID: TIntegerField;
    ibdsTitleF_NAME: TIBStringField;
    ibdsTitleF_PRINT: TIBStringField;
    sbTitleClear: TSpeedButton;
    dbCategoryClear: TSpeedButton;
    Label17: TLabel;
    jdblcCategoryConc: TJvDBLookupCombo;
    sbCategoryConcClear: TSpeedButton;
    edCatDate: TDateEdit;
    edCatConcDate: TDateEdit;
    Label18: TLabel;
    Label19: TLabel;
    Panel1: TPanel;
    Label10: TLabel;
    mDiploma: TMemo;
    Label3: TLabel;
    Panel2: TPanel;
    cbEducation2: TJvDBLookupCombo;
    Label7: TLabel;
    mDiploma2: TMemo;
    dsQualification: TDataSource;
    ibdsQualification: TIBDataSet;
    ibdsQualificationID: TIntegerField;
    ibdsQualificationNAME: TIBStringField;
    ibdsEducation: TIBDataSet;
    dsEducation: TDataSource;
    ibdsEducationID: TIntegerField;
    ibdsEducationName: TIBStringField;
    cbEducation: TJvDBLookupCombo;
    cbQualification: TJvDBLookupEdit;
    cbQualification2: TJvDBLookupEdit;
    Label8: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    FormStorage1: TFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure btnChoiceFilialClick(Sender: TObject);
    procedure btnChoicePostClick(Sender: TObject);
    procedure btnChoiceSubjectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edGradeKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fmPostmiCloseClick(Sender: TObject);
    procedure edTabNumKeyPress(Sender: TObject; var Key: Char);
    procedure edBirthDateExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbCategoryClearClick(Sender: TObject);
    procedure sbTitleClearClick(Sender: TObject);
    procedure sbCategoryConcClearClick(Sender: TObject);
  private
    { Private declarations }
    btnOkClicked: boolean;
    function FillingTest: boolean;
    procedure AddTeacher(TID: Integer);
  public
    { Public declarations }
    EditMode: boolean;
  end;

var
  fmEdTeacher: TfmEdTeacher;

implementation

uses UDM, UEducation, UFilial, UPost, USubject, UEdTeacherAdding, Math;

{$R *.dfm}

procedure TfmEdTeacher.FormCreate(Sender: TObject);
begin
  ibdsTitle.Open;
  ibdsCategory.Open;
  ibdsQualification.Open;
  ibdsEducation.Open;

  edStageDate.Date := Date;
  EditMode := false;

  btnOkClicked := false;
  edFilial.Text := DM.ibdsFilialName.Value;
  edFilial.Tag := DM.ibdsFilialID.Value;
end;

function TfmEdTeacher.FillingTest: boolean;
begin
  Result := false;
  if cbEducation.KeyValue = Null then
  begin
    ShowMessage('Выберите образование');
    Exit;
  end;
  if edFilial.Text = '' then
  begin
    ShowMessage('Выберите филиал');
    Exit;
  end;
  if edPost.Text = '' then
  begin
    ShowMessage('Выберите должность');
    Exit;
  end;
  if edSubject.Text = '' then
  begin
    ShowMessage('Выберите предмет');
    Exit;
  end;
 { if ((edEnterDate.Text = '') or (edReleaseDate.Text = '')) and
    (edEnterDate.Date > edReleaseDate.Date) and edReleaseDate.Checked then
  begin
    ShowMessage('Даты поступления и увольнение указаны не верно');
    Exit;
  end;
  if edEnterDate.Checked and edBirthDate.Checked and
    (edEnterDate.Date < edBirthDate.Date) then
  begin
    ShowMessage('Даты рождения и поступления указаны не верно');
    Exit;
  end;}
  Result := true;
end;

function NullIf(Condition: Boolean; Value: Variant): Variant;
begin
  if Condition then
    result := Null
  else
    result := Value;
end;

procedure TfmEdTeacher.AddTeacher(TID: Integer);
var
  id: integer;
  function d(DE: TDateEdit): Variant;
  var
    dt: TDateTime;
  begin
    if TryStrToDate(DE.Text, dt) then Result := DE.Date
    else Result := Null;
  end;

begin
  id := DM.AddTeacher(TID,
    StrToIntDef(edTabNum.Text, 0),
    edName.Text, edFilial.Tag, edSubject.Tag, cbEducation.KeyValue, edPost.Tag,
    StrToIntDef(Copy(edStage.Text, 1, 2), 0),
    StrToIntDef(Copy(edStage.Text, 4, 2), 0),
    StrToIntDef(Copy(edStage.Text, 7, 2), 0),
    d(edStageDate), d(edBirthDate),
    d(edEnterDate), d(edReleaseDate),
    0, // GradeID
    0, // ConcertGradeID
    mDiploma.Text, mAddress.Text, edTelephone.Text,
    Null, //GradeAddID
    Null, //ConcertGradeAddID
    jdblcTitle.KeyValue,
    jdblcCategory.KeyValue,
    jdblcCategoryConc.KeyValue,
    d(edCatDate),
    d(edCatConcDate),
    cbQualification.Text,
    cbEducation2.KeyValue,
    cbQualification2.Text,
    mDiploma2.Text
  );

  DM.ibdsTeacher.Close;
  DM.ibdsTeacher.Open;
  DM.ibdsTeacher.Locate('id', VarArrayOf([id]), []);
end;

procedure TfmEdTeacher.btnChoiceFilialClick(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  DM.ibdsFilial.Locate('ID', VarArrayOf([edFilial.Tag]), []);
  fmFilial.isLookupMode := true;
  fmFilial.ShowModal;
  fmFilial.Release;
  edFilial.Tag := DM.ibdsFilialID.Value;
  edFilial.Text := DM.ibdsFilialName.Value;
end;

procedure TfmEdTeacher.btnChoicePostClick(Sender: TObject);
begin
  fmPost := TfmPost.Create(Self);
  DM.ibdsPost.Locate('ID', VarArrayOf([edPost.Tag]), []);
  fmPost.IsLookupMode := true;
  fmPost.ShowModal;
  fmPost.Release;
  edPost.Tag := DM.ibdsPostID.Value;
  edPost.Text := DM.ibdsPostName.Value;
end;

procedure TfmEdTeacher.btnChoiceSubjectClick(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  DM.ibdsSubject.Locate('ID', VarArrayOf([edSubject.Tag]), []);
  fmSubject.LookupMode := true;
  fmSubject.ShowModal;
  fmSubject.Release;
  edSubject.Tag := DM.ibdsSubjectID.Value;
  edSubject.Text := DM.ibdsSubjectName.Value;
end;



procedure TfmEdTeacher.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnOkClicked then
    if not FillingTest then Action := caNone
    else
      if EditMode then
      begin
        btnOkClicked := false;
        AddTeacher(DM.ibdsTeacherID.Value);
      end
      else
      begin
        AddTeacher(0);
      end;
  btnOkClicked := false;
end;

procedure TfmEdTeacher.edGradeKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TfmEdTeacher.btnOkClick(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdTeacher.FormActivate(Sender: TObject);
begin
  if EditMode then
  begin
    edName.Text := DM.ibdsTeacherName.Value;
    edBirthDate.Text := DM.ibdsTeacherBirthDate.AsString;
    edTelephone.Text := DM.ibdsTeacherTelephone.Value;
    edPost.Text := DM.ibdsTeacherPost.Value;
    edPost.Tag := DM.ibdsTeacherPostID.Value;
    edSubject.Text := DM.ibdsTeacherSubject.Value;
    edSubject.Tag := DM.ibdsTeacherSubjectID.Value;
    edFilial.Text := DM.ibdsTeacherFilial.Value;
    edFilial.Tag := DM.ibdsTeacherFilialID.Value;
    cbEducation.KeyValue := DM.ibdsTeacherEducationID.Value;
    cbEducation2.KeyValue := DM.ibdsTeacherEDUCATION_2_ID.Value;
    cbQualification2.Text := DM.ibdsTeacherQUALIFICATION_2_NAME.Value;
    cbQualification.Text := DM.ibdsTeacherQUALIFICATION_NAME.Value;
    mDiploma2.Text := DM.ibdsTeacherDIPLOMA_2.Text;
    edReleaseDate.Text := DM.ibdsTeacherReleaseDate.AsString;
    edEnterDate.Text := DM.ibdsTeacherEnterDate.AsString;
    edStageDate.Text := DM.ibdsTeacherStageDate.AsString;
    edStage.Text := DM.ibdsTeacherStage.Value;
    mAddress.Text := DM.ibdsTeacherAddress.Value;
    mDiploma.Text := DM.ibdsTeacherDiploma.Value;
    edTabNum.Text := DM.ibdsTeacherTAB_NUM.AsString;
    jdblcTitle.KeyValue := DM.ibdsTeacherID_TITLE.AsVariant;
    jdblcCategory.KeyValue := DM.ibdsTeacherID_CATEGORY.AsVariant;
    jdblcCategoryConc.KeyValue := DM.ibdsTeacherID_CATEGORY_CONC.AsVariant;
    edCatDate.Text := DM.ibdsTeacherCATEGORY_T_DATE.AsString;
    edCatConcDate.Text := DM.ibdsTeacherCATEGORY_C_DATE.AsString;
  end;
end;

procedure TfmEdTeacher.fmPostmiCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmEdTeacher.edTabNumKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEdTeacher.edBirthDateExit(Sender: TObject);
begin
  try
    (Sender as TDateEdit).CheckValidDate;
  except
    ShowMessage('Неверно введена дата!' + #13#10 +
      'Пожалуйста повторите ввод даты.');
  end;
end;

procedure TfmEdTeacher.FormDestroy(Sender: TObject);
begin
  ibdsTitle.Close;
  ibdsCategory.Close;
  ibdsQualification.Close;
  ibdsEducation.Close;
end;

procedure TfmEdTeacher.dbCategoryClearClick(Sender: TObject);
begin
  jdblcCategory.KeyValue := Null;
  edCatDate.Text := '';
end;

procedure TfmEdTeacher.sbTitleClearClick(Sender: TObject);
begin
  jdblcTitle.KeyValue := Null;
end;

procedure TfmEdTeacher.sbCategoryConcClearClick(Sender: TObject);
begin
  jdblcCategoryConc.KeyValue := Null;
  edCatConcDate.Text := '';
end;

end.
