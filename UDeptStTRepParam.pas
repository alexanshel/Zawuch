unit UDeptStTRepParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Placemnt, UPrintParams, URTReport, UDM;

type
  TfmDeptStTRepParam = class(TForm)
    frmPrintParams: TfrmPrintParams;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure frmPrintParamsbtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDeptStTRepParam: TfmDeptStTRepParam;

implementation

{$R *.dfm}

procedure TfmDeptStTRepParam.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  if not LocateReportParam('DeptStRepForTeacher', #7#30#5#20#30#15#15#45)
  then Exit;
  with frmPrintParams do
  begin
    for i := 1 to 8 do
      VLE.Values[VLE.Keys[i]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[i]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;
  end;
end;

procedure TfmDeptStTRepParam.frmPrintParamsbtnOkClick(Sender: TObject);
var
  S: string[30];
  i: Integer;
begin
  with frmPrintParams do
  begin
    s := '';
    for i := 1 to 8 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[i]], 10));

    DM.ibdsReportParam.Locate('Name', VarArrayOf(['DeptStRepForTeacher']), []);
    DM.AddReportParam(DM.ibdsReportParamID.Value, 'DeptStRepForTeacher',
      rgOrient.ItemIndex,
      edMLeft.Text, edMRight.Text, edMTop.Text, edMBottom.Text, S,
      Null, Null, Length(S), Null, Null);
  end;
end;

end.
