unit UEdDep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt, Mask, ToolEdit,
  RXCtrls, DB, IBCustomDataSet, DBCtrls;

type
  TfmEdDep = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    edName: TLabeledEdit;
    edInfo: TLabeledEdit;
    edCode: TLabeledEdit;
    edCurriculum: TDBLookupComboBox;
    dsCurr: TDataSource;
    ibdsCurriculum: TIBDataSet;
    ibdsCurriculumID: TIntegerField;
    ibdsCurriculumNAME: TIBStringField;
    lCurr: TLabel;
    procedure edQtyYearsKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

uses UDM;

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
  end
  else begin
    ibdsCurriculum.Close;
  end;
end;

procedure TfmEdDep.BitBtn1Click(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdDep.FormCreate(Sender: TObject);
begin
  ibdsCurriculum.Open;
  btnOkClicked := false;
end;

end.
