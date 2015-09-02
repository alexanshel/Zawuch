unit UCurrParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, IniFiles, UPrintParams,
  Placemnt;

type
  TfmCurrParam = class(TForm)
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
  fmCurrParam: TfmCurrParam;

implementation

uses UDM;

{$R *.dfm}

procedure TfmCurrParam.FormCreate(Sender: TObject);
begin
  with frmParams do
  begin
    DM.ibdsReportParam.Close;
    DM.ibdsReportParam.Open;
    DM.ibdsReportParam.Locate('Name', VarArrayOf(['Curriculum']), []);
    VLE.Values[VLE.Keys[1]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[1]));
    VLE.Values[VLE.Keys[2]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[2]));
    VLE.Values[VLE.Keys[3]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[3]));
    VLE.Values[VLE.Keys[4]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[4]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;
  end;
end;

procedure TfmCurrParam.frmParamsbtnOkClick(Sender: TObject);
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
    for i := 4 to 15 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[4]], 10));
    DM.AddReportParam(DM.ibdsReportParamID.Value, 'Curriculum',
      rgOrient.ItemIndex, edMLeft.Text, edMRight.Text,
      edMTop.Text, edMBottom.Text, S, Null, Null, 15, Null, Null);
  end;
end;

end.
