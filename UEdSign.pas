unit UEdSign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Placemnt;

type
  TfmEdSign = class(TForm)
    Panel1: TPanel;
    mSign: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormStorage1: TFormStorage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdSign: TfmEdSign;

implementation

{$R *.dfm}

end.
