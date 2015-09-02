unit UEdTarifficationRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt;

type
  TfmEdTarifficationRec = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    edTYB: TLabeledEdit;
    edTOB: TLabeledEdit;
    edTCB: TLabeledEdit;
    edTYS: TLabeledEdit;
    edTOS: TLabeledEdit;
    edTCS: TLabeledEdit;
    FormPlacement1: TFormPlacement;
    procedure edTYBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdTarifficationRec: TfmEdTarifficationRec;

implementation

{$R *.dfm}

procedure TfmEdTarifficationRec.edTYBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = '.' then Key := ',';
  case Key of
    '0'..'9', #8:;
    ',': if Pos(',', (Sender as TLabeledEdit).Text) <> 0 then Key := #0;
  else
    Key := #0;
  end;
end;

end.
