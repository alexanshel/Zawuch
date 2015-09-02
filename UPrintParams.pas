unit UPrintParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, ValEdit, Placemnt;

type
  TfrmPrintParams = class(TFrame)
    VLE: TValueListEditor;
    GroupBox1: TGroupBox;
    edMLeft: TLabeledEdit;
    edMRight: TLabeledEdit;
    edMTop: TLabeledEdit;
    edMBottom: TLabeledEdit;
    rgOrient: TRadioGroup;
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure edMLeftKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmPrintParams.edMLeftKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

end.
