unit UStRepFTParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Placemnt, UPrintParams, URTReport;

type
  TfmStRepFTParam = class(TForm)
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
  fmStRepFTParam: TfmStRepFTParam;

implementation

uses UDM;

{$R *.dfm}

procedure TfmStRepFTParam.FormCreate(Sender: TObject);
begin
  with frmPrintParams do
  begin
    LocateReportParam('StRepForTeacher', #7#30#4#7#15#30);
    VLE.Values[VLE.Keys[1]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[1]));
    VLE.Values[VLE.Keys[2]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[2]));
    VLE.Values[VLE.Keys[3]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[3]));
    VLE.Values[VLE.Keys[4]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[4]));
    VLE.Values[VLE.Keys[5]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[5]));
    VLE.Values[VLE.Keys[6]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[6]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;
  end;
end;

procedure TfmStRepFTParam.frmPrintParamsbtnOkClick(Sender: TObject);
var
  s: string[30];
  i: integer;
begin
  with frmPrintParams do
  begin
    s := '';
    for i := 1 to 6 do
      s := s + char(StrToIntDef(VLE.Values[VLE.Keys[i]], 10));

    DM.AddReportParam(DM.ibdsReportParamID.Value, 'StRepForTeacher',
      rgOrient.ItemIndex, edMLeft.Text, edMRight.Text,
      edMTop.Text, edMBottom.Text, S, Null, Null, length(s), Null, Null);
  end;
end;

end.
