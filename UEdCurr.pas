unit UEdCurr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt;

type
  TfmEdCurr = class(TForm)
    Panel2: TPanel;
    edName: TLabeledEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    rgCat0: TRadioGroup;
    rgCat1: TRadioGroup;
    rgCat2: TRadioGroup;
    rgCat3: TRadioGroup;
    rgCat4: TRadioGroup;
    rgCat5: TRadioGroup;
    rgCat6: TRadioGroup;
    rgCat7: TRadioGroup;
    rgCat8: TRadioGroup;
    GroupBox1: TGroupBox;
    cbPeriod: TComboBox;
    FormPlacement1: TFormPlacement;
    Panel3: TPanel;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    procedure edNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdCurr: TfmEdCurr;

implementation

{$R *.dfm}

procedure TfmEdCurr.edNameChange(Sender: TObject);
begin
  (Sender as TComponent).Tag := 1
end;

end.
