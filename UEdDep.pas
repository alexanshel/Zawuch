unit UEdDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt, Mask, ToolEdit,
  RXCtrls;

type
  TfmEdDep = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    edName: TLabeledEdit;
    edInfo: TLabeledEdit;
    edCode: TLabeledEdit;
    FormPlacement1: TFormPlacement;
    edCurriculum: TComboEdit;
    RxLabel1: TRxLabel;
    procedure edQtyYearsKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChoiceCurrClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    btnOkClicked: boolean;
  public
    { Public declarations }
  end;

var
  fmEdDep: TfmEdDep;

implementation

uses UCurriculum, UDM;

{$R *.dfm}

procedure TfmEdDep.edQtyYearsKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfmEdDep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if edCode.Text = '' then edCode.Text := '0';
  if btnOkClicked and (edCurriculum.Text = '') then
  begin
    ShowMessage('Пожалуйста, укажите учебный план');
    Action := caNone;
    btnOkClicked := false;
  end;
end;

procedure TfmEdDep.btnChoiceCurrClick(Sender: TObject);
begin
  fmCurriculum := TfmCurriculum.Create(Self);
  fmCurriculum.InChoiceMode := true;
  DM.ibdsCurriculum.Locate('ID', VarArrayOf([edCurriculum.Tag]), []);
  fmCurriculum.ShowModal;
  edCurriculum.Tag := DM.ibdsCurriculumID.Value;
  edCurriculum.Text := DM.ibdsCurriculumName.Value;
  fmCurriculum.Release;
end;

procedure TfmEdDep.BitBtn1Click(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdDep.FormCreate(Sender: TObject);
begin

  btnOkClicked := false;
end;

end.
