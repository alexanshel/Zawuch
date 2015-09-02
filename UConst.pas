unit UConst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ComCtrls,
  ExtCtrls, IniFiles, Menus, Placemnt, ValEdit, JvExStdCtrls, JvEdit,
  JvValidateEdit;

type
  TfmConst = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    edYTC: TEdit;
    edOTC: TEdit;
    edCTC: TEdit;
    edSysDate: TDateTimePicker;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    edCode: TLabeledEdit;
    edName: TLabeledEdit;
    mDirectorSign: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    mTarifficationSign: TMemo;
    MainMenu1: TMainMenu;
    miClose: TMenuItem;
    FormPlacement1: TFormPlacement;
    mTabSign: TMemo;
    btnEdDSign: TSpeedButton;
    btnEdTSign: TSpeedButton;
    Label9: TLabel;
    btnEdTabSign: TSpeedButton;
    edBaseRate: TJvValidateEdit;
    Label10: TLabel;
    Label11: TLabel;
    edIncCoefTeacher: TJvValidateEdit;
    Label12: TLabel;
    edIncCoefConc: TJvValidateEdit;
    edTeacherRate: TJvValidateEdit;
    Label3: TLabel;
    Label5: TLabel;
    edConcRate: TJvValidateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure edSysDateChange(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure btnEdDSignClick(Sender: TObject);
    procedure btnEdTSignClick(Sender: TObject);
    procedure btnEdTabSignClick(Sender: TObject);
  private
    { Private declarations }
    btnSaveClicked: boolean;
  public
    { Public declarations }
  end;

var
  fmConst: TfmConst;

implementation

uses UDM, UEdSign;

{$R *.dfm}

procedure TfmConst.FormCreate(Sender: TObject);
begin

  edYTC.Text := DM.ibdsConstYTCOEF.AsString;
  edOTC.Text := DM.ibdsConstOTCOEF.AsString;
  edCTC.Text := DM.ibdsConstCTCOEF.AsString;
  edSysDate.DateTime := DM.ibdsConstSYSTEM_DATE.Value;
  edCode.Text := DM.ibdsConstPASPORT_CODE.Value;
  edName.Text := DM.ibdsConstPASPORT_NAME.Value;
  mDirectorSign.Text := DM.ibdsConstPASPORT_DIRECTOR_SIGN.Value;
  mTarifficationSign.Text := DM.ibdsConstPASPORT_TARIFFICATION_SIGN.Value;
  mTabSign.Text := DM.ibdsConstPASPORT_TAB_SIGN.Value;
  edBaseRate.Value :=    dm.ConstController.getConstant('Rate.Basic');
  edTeacherRate.Value := dm.ConstController.getConstant('Rate.Teacher');
  edConcRate.Value :=    dm.ConstController.getConstant('Rate.Concertmaster');
  edIncCoefTeacher.Value := dm.ConstController.getConstant('IncreasingCoef.Teacher');
  edIncCoefConc.Value := dm.ConstController.getConstant('IncreasingCoef.Concertmaster');
  btnSaveClicked := false;
end;

procedure TfmConst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if btnSaveClicked then
  begin
    btnSaveClicked := false;
    DM.ChangeConstants(
      StrToFloat(edYTC.Text),
      StrToFloat(edOTC.Text),
      StrToFloat(edCTC.Text),
      edCode.Text,
      edName.Text,
      mDirectorSign.Text,
      mTarifficationSign.Text,
      mTabSign.Text
    );
    if edSysDate.Tag = 1 then
      DM.ChangeSysDate(edSysDate.DateTime);
    //edIncCoefTeacher.Value :=
    dm.ConstController.setConstant('Rate.Basic',                   edBaseRate.AsFloat);
    dm.ConstController.setConstant('Rate.Teacher',                 edTeacherRate.AsFloat);
    dm.ConstController.setConstant('Rate.Concertmaster',           edConcRate.AsFloat);
    dm.ConstController.setConstant('IncreasingCoef.Teacher',       edIncCoefTeacher.AsFloat);
    dm.ConstController.setConstant('IncreasingCoef.Concertmaster', edIncCoefConc.AsFloat);
    DM.ibdsConst.Refresh;
    DM.ibdsTeacher.Refresh;
  end;
end;

procedure TfmConst.btnSaveClick(Sender: TObject);
begin
  btnSaveClicked := true;
end;

procedure TfmConst.edSysDateChange(Sender: TObject);
begin
  edSysDate.Tag := 1;
end;

procedure TfmConst.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmConst.btnEdDSignClick(Sender: TObject);
begin
  fmEdSign := TfmEdSign.Create(Self);
  fmEdSign.mSign.Text := mDirectorSign.Text;
  if fmEdSign.ShowModal = mrOK then
    mDirectorSign.Text := fmEdSign.mSign.Text;
  fmEdSign.Release;
end;

procedure TfmConst.btnEdTSignClick(Sender: TObject);
begin
  fmEdSign := TfmEdSign.Create(Self);
  fmEdSign.mSign.Text := mTarifficationSign.Text;
  if fmEdSign.ShowModal = mrOK then
    mTarifficationSign.Text := fmEdSign.mSign.Text;
  fmEdSign.Release;
end;

procedure TfmConst.btnEdTabSignClick(Sender: TObject);
begin
  fmEdSign := TfmEdSign.Create(Self);
  fmEdSign.mSign.Text := mTabSign.Text;
  if fmEdSign.ShowModal = mrOK then
    mTabSign.Text := fmEdSign.mSign.Text;
  fmEdSign.Release;
end;

end.
