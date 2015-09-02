unit USetTeachers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, Grids, StdCtrls, Buttons, ValEdit, CheckLst,
  ExtCtrls, IniFiles, Placemnt;

type
  TInf = class
    CRID: integer;
    TID: integer;
    Use: boolean;
    constructor Create(CRID, TID: Integer; Use: boolean);
  end;

  TfmSetTeachers = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    VLE: TValueListEditor;
    FormPlacement1: TFormPlacement;
    procedure VLEEditButtonClick(Sender: TObject);
    procedure VLEDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSetTeachers: TfmSetTeachers;

implementation

uses UTeacher, UDM, UEdStudentPlan;

{$R *.dfm}

procedure TfmSetTeachers.VLEEditButtonClick(Sender: TObject);
var
  Inf: TInf;
begin
  Inf := VLE.Strings.Objects[VLE.Row - 1] as TInf;
  if VLE.RowCount = 1 then Exit;
  fmEdStudentPlan := TfmEdStudentPlan.Create(Self);
  fmEdStudentPlan.cbUse.Checked := Inf.use;

  fmEdStudentPlan.edTeacher.Tag := Inf.tid;
  if not DM.ibdsTeacher.Active then DM.ibdsTeacher.Open;

  if DM.ibdsTeacher.Locate('ID', fmEdStudentPlan.edTeacher.Tag, []) then
    fmEdStudentPlan.edTeacher.Text := DM.ibdsTeacherName.Value;
  if fmEdStudentPlan.ShowModal = mrOk then
  begin
    Inf.tid := fmEdStudentPlan.edTeacher.Tag;
    Inf.use := fmEdStudentPlan.cbUse.Checked;
    if fmEdStudentPlan.edTeacher.Text = '' then
      VLE.Strings.ValueFromIndex[VLE.Row - 1] := '----'
    else
      VLE.Strings.ValueFromIndex[VLE.Row - 1] :=
        fmEdStudentPlan.edTeacher.Text;
  end;
  fmEdStudentPlan.Release;
  VLE.Refresh;
end;

{ TInf }

constructor TInf.Create(CRID, TID: Integer; Use: boolean);
begin
  Self.CRID := CRID;
  Self.TID := TID;
  Self.Use := Use;
end;

procedure TfmSetTeachers.VLEDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ARow = 0 then Exit;
  if VLE.Strings.Objects[ARow - 1] is TInf and
    (not (VLE.Strings.Objects[ARow - 1] as TInf).use) then
  begin
    VLE.Canvas.Brush.Color := clWhite;
    VLE.Canvas.Font.Color := clGrayText;
    VLE.Canvas.FillRect(Rect);
    inc(Rect.Left, 2); inc(Rect.Top, 2);
    VLE.Canvas.TextOut(Rect.Left, Rect.Top, VLE.Cells[ACol,ARow]);
  end
  else
  begin
    VLE.Canvas.Brush.Color := clWhite;
    VLE.Canvas.Font.Color := clWindowText;
    VLE.Canvas.FillRect(Rect);
    inc(Rect.Left, 2); inc(Rect.Top, 2);
    VLE.Canvas.TextOut(Rect.Left, Rect.Top, VLE.Cells[ACol,ARow]);
  end;
end;

end.
