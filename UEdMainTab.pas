unit UEdMainTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, IniFiles, Placemnt;

type
  TfmEditMainTab = class(TForm)
    edDaysQty: TLabeledEdit;
    edDate: TDateTimePicker;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edBYT: TLabeledEdit;
    edBOT: TLabeledEdit;
    edBCT: TLabeledEdit;
    edSYT: TLabeledEdit;
    edSOT: TLabeledEdit;
    edSCT: TLabeledEdit;
    GroupBox3: TGroupBox;
    edBeYT: TLabeledEdit;
    edBeCT: TLabeledEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    procedure edDaysQtyKeyPress(Sender: TObject; var Key: Char);
    procedure edBYTKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEditMainTab: TfmEditMainTab;

implementation

{$R *.dfm}

procedure TfmEditMainTab.edDaysQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEditMainTab.edBYTKeyPress(Sender: TObject; var Key: Char);
begin
   if not
     ((Key in ['0'..'9', #8]) or
     ((Key = ',') and (Pos(',', (Sender as TLabeledEdit).Text) = 0)))
   then Key := #0
end;

end.
