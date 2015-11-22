unit UEdCurr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt;

type
  TfmEdCurr = class(TForm)
    Panel2: TPanel;
    edName: TLabeledEdit;
    GroupBox1: TGroupBox;
    cbPeriod: TComboBox;
    Panel3: TPanel;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    edPeriodForPrint: TEdit;
    Label1: TLabel;
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
