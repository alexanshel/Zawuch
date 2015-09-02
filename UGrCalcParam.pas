unit UGrCalcParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt;

type
  TfmGrCalcParam = class(TForm)
    rgType: TRadioGroup;
    rgRegion: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGrCalcParam: TfmGrCalcParam;

implementation

{$R *.dfm}

end.
