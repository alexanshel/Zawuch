unit UEdSpec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt;

type
  TfmEdSpec = class(TForm)
    Panel1: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    edCode: TLabeledEdit;
    edName: TLabeledEdit;
    edInfo: TLabeledEdit;
    GroupBox1: TGroupBox;
    edSelfRepayment: TLabeledEdit;
    edBudget: TLabeledEdit;
    FormPlacement1: TFormPlacement;
    procedure edCodeKeyPress(Sender: TObject; var Key: Char);
    procedure edBudgetKeyPress(Sender: TObject; var Key: Char);
    procedure edSelfRepaymentKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdSpec: TfmEdSpec;

implementation

{$R *.dfm}

procedure TfmEdSpec.edCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TfmEdSpec.edBudgetKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    if (Key in [',', '.']) and (Pos('.', edBudget.Text) = 0) then
      Key := ','
    else
      Key := #0;
end;

procedure TfmEdSpec.edSelfRepaymentKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    if (Key in [',', '.']) and (Pos('.', edSelfRepayment.Text) = 0) then
      Key := ','
    else
      Key := #0;
end;

procedure TfmEdSpec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if edSelfRepayment.Text = '' then edSelfRepayment.Text := '0';
  if edBudget.Text = '' then edBudget.Text := '0';
  if edCode.Text = '' then edCode.Text := '0';
end;

end.
