unit UEdFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt;

type
  TfmEdFilial = class(TForm)
    P1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edCode: TLabeledEdit;
    edName: TLabeledEdit;
    edInfo: TLabeledEdit;
    FormPlacement1: TFormPlacement;
    procedure edCodeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdFilial: TfmEdFilial;

implementation

{$R *.dfm}

procedure TfmEdFilial.edCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0
end;

procedure TfmEdFilial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if edCode.Text = '' then edCode.Text := '0';
end;

end.
