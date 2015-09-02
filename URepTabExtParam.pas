unit URepTabExtParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, IniFiles, UPrintParams,
  URTReport, Placemnt;

type
  TfmRepTabExtParam = class(TForm)
    frmParams: TfrmPrintParams;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure frmParamsbtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRepTabExtParam: TfmRepTabExtParam;

implementation

uses UDM;

{$R *.dfm}

procedure TfmRepTabExtParam.FormCreate(Sender: TObject);
begin
  with frmParams do
  begin
    LocateReportParam('RepTabExt', #30#20#15);

    VLE.Values[VLE.Keys[1]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[1]));
    VLE.Values[VLE.Keys[2]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[2]));
    VLE.Values[VLE.Keys[3]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[3]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;
  end;
end;

procedure TfmRepTabExtParam.frmParamsbtnOkClick(Sender: TObject);
var
  s: string[30];
  i: integer;
begin
  with frmParams do
  begin
    s := '';
    s := s + char(StrToInt(VLE.Values[VLE.Keys[1]]));
    s := s + char(StrToInt(VLE.Values[VLE.Keys[2]]));
    for i := 3 to 11 do s := s + char(StrToInt(VLE.Values[VLE.Keys[3]]));
    DM.AddReportParam(DM.ibdsReportParamID.Value, 'RepTabExt',
      rgOrient.ItemIndex, edMLeft.Text, edMRight.Text,
      edMTop.Text, edMBottom.Text, S, Null, Null, Length(S), Null, Null);
  end;
end;

end.
