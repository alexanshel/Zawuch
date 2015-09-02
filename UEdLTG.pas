unit UEdLTG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Placemnt;

type
  TfmEdLTG = class(TForm)
    Panel1: TPanel;
    edLTGName: TLabeledEdit;
    cbSelfRep: TCheckBox;
    Panel2: TPanel;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    FormPlacement1: TFormPlacement;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdLTG: TfmEdLTG;

implementation

{$R *.dfm}

end.
