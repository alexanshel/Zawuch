unit UEdStudent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids, UDM, IniFiles,
  Placemnt, RXCtrls, ToolEdit, Mask, IBCustomDataSet, JvExControls,
  JvDBLookup;

type
  TfmEdStudent = class(TForm)
    Panel1: TPanel;
    edName: TLabeledEdit;
    rgFinancing: TRadioGroup;
    edPercent: TLabeledEdit;
    Label2: TLabel;
    mAddress: TMemo;
    Label3: TLabel;
    edTelephone: TLabeledEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edEnterInfo: TEdit;
    edReleaseInfo: TEdit;
    edRestoreInfo: TEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edAcademBInfo: TEdit;
    edAcademEInfo: TEdit;
    cbClass: TComboBox;
    Label1: TLabel;
    btnCancel: TBitBtn;
    btnOk: TBitBtn;
    FormPlacement1: TFormPlacement;
    edFilial: TComboEdit;
    Label9: TLabel;
    Label10: TLabel;
    edCurator: TComboEdit;
    edBirthDate: TDateEdit;
    edEnterDate: TDateEdit;
    edReleaseDate: TDateEdit;
    edRestoreDate: TDateEdit;
    edAcademBDate: TDateEdit;
    edAcademEDate: TDateEdit;
    edSpec: TComboEdit;
    RxLabel1: TRxLabel;
    jdblcSex: TJvDBLookupCombo;
    ibdsSex: TIBDataSet;
    dsSex: TDataSource;
    procedure btnChSpecClick(Sender: TObject);
    procedure edPercentKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cbClassKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChoiceFilialClick(Sender: TObject);
    procedure btnChoiceMasterIDClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    btnOkClicked: boolean;
    deptID, currID: integer;
    function FillingTest: boolean;
    procedure SaveStudent(ID: Integer);
  public
    { Public declarations }
    EditMode: boolean;
  end;

var
  fmEdStudent: TfmEdStudent;

implementation

uses UDepSpecCurr,  UFilial, UTeacher, UEdStudentPlan;

{$R *.dfm}

procedure TfmEdStudent.btnChSpecClick(Sender: TObject);
begin
  fmDepSpec := TfmDepSpec.Create(Self);
  fmDepSpec.isLookupMode := true;
  fmDepSpec.selectedSpecID := edSpec.Tag;
  fmDepSpec.selectedDepID  := deptID;
  fmDepSpec.selectedCurrID := currID;
  fmDepSpec.ShowModal;
  edSpec.Text := fmDepSpec.selectedSpecName;
  edSpec.Tag  := fmDepSpec.selectedSpecID;
  currID := fmDepSpec.selectedCurrID;
  deptID := fmDepSpec.selectedDepID;
  fmDepSpec.Release;
end;

function TfmEdStudent.FillingTest;
begin
  Result := false;
  if edName.Text = '' then begin ShowMessage('Введите Ф.И.О.'); Exit; end;
  if edPercent.Text = '' then begin ShowMessage('Введите процент оплаты'); Exit; end;
  if edFilial.Text = '' then begin ShowMessage('Выберите филиал'); Exit; end;
  if edCurator.Text = '' then begin ShowMessage('Выберите куратора'); Exit; end;
  Result := true;
end;

procedure TfmEdStudent.edPercentKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key  in ['0'..'9', #8]) then Key := #0;
end;

procedure TfmEdStudent.FormCreate(Sender: TObject);
begin
  edEnterDate.Date := Date;
  btnOkClicked := false;
  ibdsSex.Open;
end;

procedure TfmEdStudent.cbClassKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0
end;

procedure TfmEdStudent.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnOkClicked then
    if FillingTest and (edSpec.Tag <> 0) then
      if EditMode then  SaveStudent(DM.ibdsStudentID.Value)
      else SaveStudent(0)
    else
    begin
      Action := caNone;
      btnOkClicked := false;
      Exit;
    end;
end;

procedure TfmEdStudent.btnChoiceFilialClick(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  fmFilial.isLookupMode := true;
  fmFilial.ShowModal;
  fmFilial.Release;
  edFilial.Text := DM.ibdsFilialName.Value;
  edFilial.Tag := DM.ibdsFilialID.Value;
end;

procedure TfmEdStudent.btnChoiceMasterIDClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', edCurator.Tag, []);
  fmTeacher.ShowModal;
  fmTeacher.Release;
  edCurator.Text := DM.ibdsTeacherName.Value;
  edCurator.Tag := DM.ibdsTeacherID.Value;
end;

procedure TfmEdStudent.SaveStudent(ID: Integer);
var
  i: Integer;
  function nl(d: TDateEdit): Variant;
  var
    dt: TDateTime;
  begin
    if TryStrToDate(d.Text, dt) then Result := d.Date
    else
      Result := Null;
  end;

begin
  i := DM.AddStudent(ID, 0, edName.Text, edSpec.Tag, edFilial.Tag,
      rgFinancing.ItemIndex, edCurator.Tag,
      cbClass.ItemIndex, StrToInt(edPercent.Text), nl(edBirthDate),
      nl(edEnterDate), nl(edReleaseDate), nl(edRestoreDate),
      edEnterInfo.Text, edReleaseInfo.Text, edRestoreInfo.Text,
      nl(edAcademBDate), nl(edAcademEDate), edAcademBInfo.Text,
      edAcademEInfo.Text, mAddress.Text, edTelephone.Text,
      jdblcSex.KeyValue);
  if EditMode then
  begin
    DM.ibdsStudent.Refresh;
    DM.ibdsStudentPlan.Refresh;
  end
  else
  begin
    DM.ibdsStudent.Close;
    DM.ibdsStudent.Open;
    DM.ibdsStudent.Locate('ID', VarArrayOf([i]), []);
  end;
end;

procedure TfmEdStudent.FormActivate(Sender: TObject);
var
  i: Integer;
begin
  if EditMode then
  begin
    edName.Text := DM.ibdsStudentName.Value;
    edFilial.Text := DM.ibdsStudentFilial.Value;
    edFilial.Tag := DM.ibdsStudentFilialID.Value;
    edCurator.Text := DM.ibdsStudentCURATOR.Value;
    edCurator.Tag := DM.ibdsStudentCURATORID.Value;
    edPercent.Text := DM.ibdsStudentPercent.AsString;

    edBirthDate.Text := DM.ibdsStudentBirthDate.Text;

    edTelephone.Text := DM.ibdsStudentTelephone.Value;

    edEnterDate.Text := DM.ibdsStudentEnterDate.Text;

    edReleaseDate.Text := DM.ibdsStudentReleaseDate.Text;

    edRestoreDate.Text := DM.ibdsStudentRestoreDate.Text ;

    edAcademBDate.Text := DM.ibdsStudentAcademyBDate.Text;

    edAcademEDate.Text := DM.ibdsStudentAcademyEDate.Text;

    edEnterInfo.Text := DM.ibdsStudentEnterInfo.Value;
    edReleaseInfo.Text := DM.ibdsStudentReleaseInfo.Value;
    edRestoreInfo.Text := DM.ibdsStudentRestoreInfo.Value;
    edAcademBInfo.Text := DM.ibdsStudentAcademyBInfo.Value;
    edAcademEInfo.Text := DM.ibdsStudentAcademyEInfo.Value;
    edSpec.Text := DM.ibdsStudentSpecialization.Value;
    edSpec.Tag := DM.ibdsStudentSpecializationID.Value;
    deptID := DM.ibdsStudentDEPARTMENTID.Value;
    currID := DM.ibdsStudentCURRICULUMID.Value;
    mAddress.Text := DM.ibdsStudentAddress.Value;
    cbClass.ItemIndex := DM.ibdsStudentCLASS.Value;
    rgFinancing.ItemIndex := DM.ibdsStudentFinancingID.Value;
    jdblcSex.KeyValue := DM.ibdsStudentSEX_ID.AsVariant;
  end
  else
  begin
    edFilial.Text := DM.ibdsFilialName.Value;
    edFilial.Tag := DM.ibdsFilialID.Value;
    edEnterDate.Date := Date;
  end;
end;

procedure TfmEdStudent.btnOkClick(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdStudent.FormDestroy(Sender: TObject);
begin
  ibdsSex.Close;
end;

end.
