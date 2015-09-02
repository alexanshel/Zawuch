unit USetStudentsData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, ExtCtrls, IniFiles, ComCtrls,
  Placemnt;

type
  TfmSetStudentsData = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    edDept: TLabeledEdit;
    edSpec: TLabeledEdit;
    btnChSpec: TSpeedButton;
    btnResSpec: TSpeedButton;
    Panel2: TPanel;
    edCurator: TLabeledEdit;
    btnChCurator: TSpeedButton;
    btnResCurator: TSpeedButton;
    edFilial: TLabeledEdit;
    btnChFilial: TSpeedButton;
    btnResFilial: TSpeedButton;
    Panel3: TPanel;
    cbClass: TComboBox;
    Label1: TLabel;
    rgFinancing: TRadioGroup;
    edPercent: TLabeledEdit;
    edResPercent: TSpeedButton;
    Panel4: TPanel;
    edEnterDate: TDateTimePicker;
    Label2: TLabel;
    edReleaseDate: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    btnResClass: TSpeedButton;
    rgChangeMethod: TRadioGroup;
    FormPlacement1: TFormPlacement;
    //procedure btnChDeptClick(Sender: TObject);
    procedure btnResDeptClick(Sender: TObject);
    procedure btnChSpecClick(Sender: TObject);
    procedure btnResSpecClick(Sender: TObject);
    procedure btnChCuratorClick(Sender: TObject);
    procedure btnResCuratorClick(Sender: TObject);
    procedure btnResFilialClick(Sender: TObject);
    procedure btnChFilialClick(Sender: TObject);
    procedure edPercentEnter(Sender: TObject);
    procedure edPercentExit(Sender: TObject);
    procedure edPercentKeyPress(Sender: TObject; var Key: Char);
    procedure edResPercentClick(Sender: TObject);
    procedure btnResClassClick(Sender: TObject);
    procedure cbClassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSetStudentsData: TfmSetStudentsData;

implementation

uses UDM, UDepSpecCurr, UTeacher, UFilial;

{$R *.dfm}

procedure TfmSetStudentsData.btnResDeptClick(Sender: TObject);
begin
  edDept.Tag := -1;
  edDept.Text := 'Не изменять';
end;

procedure TfmSetStudentsData.btnChSpecClick(Sender: TObject);
begin
  fmDepSpec := TfmDepSpec.Create(Self);
  fmDepSpec.isLookupMode := true;
  fmDepSpec.selectedSpecID := edSpec.Tag;
  fmDepSpec.ShowModal;
  edDept.Tag :=  fmDepSpec.selectedDepID;
  edDept.Text := fmDepSpec.selectedDepName;
  edSpec.Tag :=  fmDepSpec.selectedSpecID;
  edSpec.Text := fmDepSpec.selectedSpecName;
  fmDepSpec.Release;
end;

procedure TfmSetStudentsData.btnResSpecClick(Sender: TObject);
begin
  edSpec.Tag := -1;
  edSpec.Text := 'Не изменять';
end;

procedure TfmSetStudentsData.btnChCuratorClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', edCurator.Tag, []);
  fmTeacher.ShowModal;
  edCurator.Tag := DM.ibdsTeacherID.Value;
  edCurator.Text := DM.ibdsTeacherName.Value;
  fmTeacher.Release;
end;

procedure TfmSetStudentsData.btnResCuratorClick(Sender: TObject);
begin
  edCurator.Tag := -1;
  edCurator.Text := 'Не изменять';
end;

procedure TfmSetStudentsData.btnResFilialClick(Sender: TObject);
begin
  edFilial.Tag := -1;
  edFilial.Text := 'Не изменять';
end;

procedure TfmSetStudentsData.btnChFilialClick(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  fmFilial.isLookupMode := true;
  DM.ibdsFilial.Locate('ID', edFilial.Tag, []);
  fmFilial.ShowModal;
  edFilial.Tag := DM.ibdsFilialID.Value;
  edFilial.Text := DM.ibdsFilialName.Value;
  fmFilial.Release;
end;

procedure TfmSetStudentsData.edPercentEnter(Sender: TObject);
begin
  edPercent.Text := '';
end;

procedure TfmSetStudentsData.edPercentExit(Sender: TObject);
var
  i: integer;
begin
  if TryStrToInt(edPercent.Text, i) then
    edPercent.Tag := i
  else begin
    edPercent.Text := 'Не изменять';
    edPercent.Tag := -1;
  end;
end;

procedure TfmSetStudentsData.edPercentKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
end;

procedure TfmSetStudentsData.edResPercentClick(Sender: TObject);
begin
  edPercent.Tag := -1;
  edPercent.Text := 'Не изменять';
end;

procedure TfmSetStudentsData.btnResClassClick(Sender: TObject);
begin
  cbClass.ItemIndex := -1;
  cbClass.Text := 'Не изменять';
end;

procedure TfmSetStudentsData.cbClassKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

end.
