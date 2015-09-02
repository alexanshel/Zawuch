unit UEdGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt;

type
  TfmEdGroup = class(TForm)
    edGroupQty: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    procedure edGroupQtyKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdGroup: TfmEdGroup;

implementation

{$R *.dfm}

procedure TfmEdGroup.edGroupQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

end.
