unit UTarifficationOpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, IniFiles, URTReport,
  UPrintParams, Placemnt;

type
  TfmTarifficationOpt = class(TForm)
    frmParams: TfrmPrintParams;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure frmParamsbtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  TwipsInMM = 56.7;
  mmInTwips = 1/TwipsInMM;

var
  fmTarifficationOpt: TfmTarifficationOpt;

implementation

uses UDM;

{$R *.dfm}

procedure TfmTarifficationOpt.FormCreate(Sender: TObject);
var
  i: Integer;
begin


  LocateReportParam('Tariffication',
    #3#24#4#28#5#4#12#11#11#11#12#12#12#14#11#11#11#12#12#12#14#14#16);

  with frmParams do
  begin
    for i := 1 to 7 do
      VLE.Values[VLE.Keys[i]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[i]));
    //часы
    VLE.Values[VLE.Keys[8]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[8]));
    //з.плата
    VLE.Values[VLE.Keys[9]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[11]));
    //сумма
    VLE.Values[VLE.Keys[10]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[14]));
    //надбавка
    VLE.Values[VLE.Keys[11]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[22]));
    //итого
    VLE.Values[VLE.Keys[12]] := IntToStr(byte(DM.ibdsReportParamSIZES_1.Value[23]));

    edMLeft.Text := DM.ibdsReportParamM_LEFT.AsString;
    edMRight.Text := DM.ibdsReportParamM_RIGHT.AsString;
    edMTop.Text := DM.ibdsReportParamM_TOP.AsString;
    edMBottom.Text := DM.ibdsReportParamM_BOTTOM.AsString;

    rgOrient.ItemIndex := DM.ibdsReportParamPAGE_ORIENT.Value;
  end;
end;

procedure TfmTarifficationOpt.frmParamsbtnOkClick(Sender: TObject);
var
  s: string[30];
  i: integer;
begin
  with frmParams do
  begin
    s := '';
    for i := 1 to 7 do
      s := s + char(StrToIntDef(VLE.Values[VLE.Keys[i]], 10));
    for i := 8 to 10 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[8]], 10));
    for i := 11 to 13 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[9]], 10));
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[10]], 10));
    for i := 15 to 17 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[8]], 10));
    for i := 18 to 20 do s := s + char(StrToIntDef(VLE.Values[VLE.Keys[9]], 10));
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[10]], 10));

    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[11]], 10));
    s := s + char(StrToIntDef(VLE.Values[VLE.Keys[12]], 10));

    DM.ibdsReportParam.Locate('Name', VarArrayOf(['Tariffication']), []);
    DM.AddReportParam(DM.ibdsReportParamID.Value, 'Tariffication',
      rgOrient.ItemIndex, edMLeft.Text, edMRight.Text,
      edMTop.Text, edMBottom.Text, S, Null, Null, Length(S), Null, Null);
  end;
end;

end.
