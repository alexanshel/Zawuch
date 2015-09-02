unit CalcGroupAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmCalcGroupAdd = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edName: TEdit;
    mHeader: TMemo;
    mFooter: TMemo;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCalcGroupAdd: TfmCalcGroupAdd;

implementation

{$R *.dfm}

end.
