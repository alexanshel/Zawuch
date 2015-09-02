unit UEdStudentPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt, RXCtrls, Mask,
  ToolEdit;

type
  TfmEdStudentPlan = class(TForm)
    Panel1: TPanel;
    cbUse: TCheckBox;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    FormPlacement1: TFormPlacement;
    edTeacher: TComboEdit;
    RxLabel1: TRxLabel;
    SpeedButton1: TSpeedButton;
    procedure btnClearClick(Sender: TObject);
    procedure btnChoiceClick(Sender: TObject);
    procedure btnChoiceEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdStudentPlan: TfmEdStudentPlan;

implementation

uses UDM, UTeacher;

{$R *.dfm}

procedure TfmEdStudentPlan.btnClearClick(Sender: TObject);
begin
  edTeacher.Text := '';
  edTeacher.Tag := -1;
  cbUse.Checked := false;
end;

procedure TfmEdStudentPlan.btnChoiceClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', edTeacher.Tag, []);
  fmTeacher.ShowModal;
  fmTeacher.Release;
  edTeacher.Text := DM.ibdsTeacherName.Value;
  edTeacher.Tag := DM.ibdsTeacherID.Value;
  cbUse.Checked := true;
  btnOk.SetFocus;
end;

procedure TfmEdStudentPlan.btnChoiceEnter(Sender: TObject);
begin
//
end;

procedure TfmEdStudentPlan.FormActivate(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  DM.ibdsTeacher.Locate('ID', VarArrayOf([edTeacher.Tag]), []);
  fmTeacher.ShowModal;
  edTeacher.Tag := DM.ibdsTeacherID.Value;
  edTeacher.Text := DM.ibdsTeacherName.Value;
  cbUse.Checked := true;
  fmTeacher.Release;
end;

end.
