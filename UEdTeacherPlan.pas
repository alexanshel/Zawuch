unit UEdTeacherPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfmEdStudentPlan = class(TForm)
    Panel1: TPanel;
    cbUse: TCheckBox;
    edTeacher: TLabeledEdit;
    btnChoice: TSpeedButton;
    btnClear: TSpeedButton;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdStudentPlan: TfmEdStudentPlan;

implementation

{$R *.dfm}

end.
