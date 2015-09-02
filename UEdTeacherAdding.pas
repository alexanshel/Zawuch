unit UEdTeacherAdding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt;

type
  TfmEdTeacherAdding = class(TForm)
    Panel1: TPanel;
    edName: TLabeledEdit;
    edPercent: TLabeledEdit;
    edSum: TLabeledEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    FormPlacement1: TFormPlacement;
    procedure edPercentKeyPress(Sender: TObject; var Key: Char);
    procedure edSumKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    btnOkClicked: boolean;
  public
    { Public declarations }
  end;

var
  fmEdTeacherAdding: TfmEdTeacherAdding;

implementation

{$R *.dfm}

procedure TfmEdTeacherAdding.edPercentKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0;
end;

procedure TfmEdTeacherAdding.edSumKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    if (Key in [',', '.']) and (Pos('.', edSum.Text) = 0) then
      Key := ','
    else
      Key := #0;
end;

procedure TfmEdTeacherAdding.btnOkClick(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdTeacherAdding.FormCreate(Sender: TObject);
begin
  btnOkClicked := false;
end;

procedure TfmEdTeacherAdding.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnOkClicked then
    if (edPercent.Text = '') and (edSum.Text = '') then
    begin
      Action := caNone;
      ShowMessage('Введите сумму или процент');
      btnOkClicked := false;
    end
    else
    begin
      if edPercent.Text = '' then edPercent.Text := '0';
      if edSum.Text = '' then edSum.Text := '0';
    end;
end;

end.
