unit UEdTarif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt;

type
  TfmEdTarif = class(TForm)
    P1: TPanel;
    edSalary: TLabeledEdit;
    edInfo: TLabeledEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    edGrade: TComboBox;
    Label1: TLabel;
    FormPlacement1: TFormPlacement;
    procedure edGradeKeyPress(Sender: TObject; var Key: Char);
    procedure edSalaryKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    btnOkClicked: boolean;
  public
    { Public declarations }
  end;

var
  fmEdTarif: TfmEdTarif;

implementation

{$R *.dfm}

procedure TfmEdTarif.edGradeKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TfmEdTarif.edSalaryKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    if (Key in [',', '.']) and (Pos('.', edSalary.Text) = 0) then
      Key := ','
    else
      Key := #0;
end;

procedure TfmEdTarif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if edSalary.Text = '' then edSalary.Text := '0';
  if btnOkClicked and (edGrade.Text = '') then
  begin
    Action := caNone;
    MessageDlg('Выберите разряд', mtInformation, [mbOk], 0);
    btnOkClicked := false;
  end;
end;

procedure TfmEdTarif.FormCreate(Sender: TObject);
begin
  btnOkClicked := false;
end;

procedure TfmEdTarif.btnOkClick(Sender: TObject);
begin
  btnOkClicked := true;
end;

end.
