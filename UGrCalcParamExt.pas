unit UGrCalcParamExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt;

type
  TfmGrCalcParamExt = class(TForm)
    rgType: TRadioGroup;
    rgRegion: TRadioGroup;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    FormPlacement1: TFormPlacement;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGrCalcParamExt: TfmGrCalcParamExt;

implementation

{$R *.dfm}

end.
