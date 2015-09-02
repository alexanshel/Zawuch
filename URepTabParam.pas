unit URepTabParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPrintParams, IniFiles, URTReport, Placemnt;

type
  TfmRepTabParam = class(TForm)
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
  fmRepTabParam: TfmRepTabParam;

implementation

uses UDM;

{$R *.dfm}

procedure TfmRepTabParam.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  if not LocateReportParam('RepTab', #7#65#7#13#13#13#13#13#13#13#13#13)
  then Exit;
  with frmParams do
  begin
    for i := 1 to 4 do
      VLE.Values[VLE.Keys[i]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[i]));
    //дата
    VLE.Values[VLE.Keys[5]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[12]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;
  end;
end;

procedure TfmRepTabParam.frmParamsbtnOkClick(Sender: TObject);
var
  S: string[30];
  i: Integer;
begin
  with frmParams do
  begin
    s := '';
    for i := 1 to 3 do
      s := s + char(StrToIntDef(VLE.Values[VLE.Keys[i]], 10));
    for i := 4 to 11 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[4]], 10));
      s := s + char(StrToIntDef(VLE.Values[VLE.Keys[5]], 10));

    DM.ibdsReportParam.Locate('Name', VarArrayOf(['RepTab']), []);
    DM.AddReportParam(DM.ibdsReportParamID.Value, 'RepTab',
      rgOrient.ItemIndex,
      edMLeft.Text, edMRight.Text, edMTop.Text, edMBottom.Text, S,
      Null, Null, Length(S), Null, Null);
  end;
end;

end.
