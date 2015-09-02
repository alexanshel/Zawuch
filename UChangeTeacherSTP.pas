unit UChangeTeacherSTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IniFiles, Placemnt, RXCtrls, Mask,
  ToolEdit;

type
  TfmChangeTeacherSTP = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    edTeacher1: TComboEdit;
    RxLabel1: TRxLabel;
    edTeacher2: TComboEdit;
    RxLabel2: TRxLabel;
    cbWGroup: TCheckBox;
    procedure btnChoice1Click(Sender: TObject);
    procedure btnChoice2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmChangeTeacherSTP: TfmChangeTeacherSTP;

implementation

uses UTeacher, UDM;

{$R *.dfm}

procedure TfmChangeTeacherSTP.btnChoice1Click(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  fmTeacher.ShowModal;
  edTeacher1.Tag := DM.ibdsTeacherID.Value;
  edTeacher1.Text := DM.ibdsTeacherName.Value;
  fmTeacher.Release;
end;

procedure TfmChangeTeacherSTP.btnChoice2Click(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  fmTeacher.ShowModal;
  edTeacher2.Tag := DM.ibdsTeacherID.Value;
  edTeacher2.Text := DM.ibdsTeacherName.Value;
  fmTeacher.Release;
end;

end.
