unit UCurrRepParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, IniFiles, URTReport,
  UPrintParams, Placemnt;

type
  TfmCurrRepParam = class(TForm)
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
  fmCurrRepParam: TfmCurrRepParam;

implementation

uses UDM;

{$R *.dfm}

procedure TfmCurrRepParam.FormCreate(Sender: TObject);
begin

  LocateReportParam('CurriculumReport',
    #3#24#4#15#15#15#15#15#15#15#15#15#20#20#20#20#20#20#12#12);
  with frmParams do
  begin
    VLE.Values[VLE.Keys[1]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[1]));
    VLE.Values[VLE.Keys[2]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[2]));
    VLE.Values[VLE.Keys[3]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[3]));
    VLE.Values[VLE.Keys[4]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[4]));
    VLE.Values[VLE.Keys[5]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[13]));
    VLE.Values[VLE.Keys[6]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[19]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;    
  end;
end;

procedure TfmCurrRepParam.frmParamsbtnOkClick(Sender: TObject);
var
  s: string[30];
  i: integer;
begin
  with frmParams do
  begin
    s := '';
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[1]], 10));
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[2]], 10));
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[3]], 10));
    for i := 4 to 12 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[4]], 10));
    for i := 13 to 18 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[5]], 10));
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[6]], 10)) +
      char(StrToIntDef(VLE.Values[VLE.Keys[6]], 10));
    DM.AddReportParam(DM.ibdsReportParamID.Value, 'CurriculumReport',
      rgOrient.ItemIndex, edMLeft.Text, edMRight.Text,
      edMTop.Text, edMBottom.Text, S, Null, Null, 15, Null, Null);
  end;
end;

end.
