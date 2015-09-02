unit uTeacherAbsentsEd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvDBLookup, Mask, JvExMask,
  JvToolEdit, UDM, DB, IBCustomDataSet, IBQuery, CheckLst, ExtCtrls;

type
  TFormMode = (mCreate, mEdit);
  TfmTeacherAbsentsEd = class(TForm)
    dtpFrom: TJvDateEdit;
    btnOK: TBitBtn;
    Label1: TLabel;
    dtpTo: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    ibdsAbsentTypes: TIBDataSet;
    ibdsAbsentTypesID: TIntegerField;
    ibdsAbsentTypesNAME: TIBStringField;
    ibdsAbsentTypesCODE: TIBStringField;
    ibdsAbsentTypesIS_CALENDAR_TYPE: TSmallintField;
    Panel1: TPanel;
    Panel2: TPanel;
    cbAbsentTypes: TCheckListBox;
    Label2: TLabel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    teacherID: integer;
    date:      variant;
    { Private declarations }
  public
    constructor Create(
      AOwner:     TComponent;
      teacherID: integer;
      date:      variant
    ); overload;
    { Public declarations }
  end;

var
  fmTeacherAbsentsEd: TfmTeacherAbsentsEd;

implementation

{$R *.dfm}

procedure TfmTeacherAbsentsEd.FormCreate(Sender: TObject);
begin
  ibdsAbsentTypes.Open;
  cbAbsentTypes.Clear;
  ibdsAbsentTypes.First;
  if date <> Null then
  begin
    dtpFrom.Date := date;
    dtpTo.Date   := date;
  end;
  while not ibdsAbsentTypes.Eof do
  begin
    cbAbsentTypes.AddItem(
     '[' + ibdsAbsentTypesCODE.Value + '] ' + ibdsAbsentTypesNAME.Value,
     TObject(ibdsAbsentTypesID.Value)
    );
    ibdsAbsentTypes.Next;
  end;
  ibdsAbsentTypes.Close;
end;


constructor TfmTeacherAbsentsEd.Create(
  AOwner:     TComponent;
  teacherID: integer;
  date:      variant
);
begin
  inherited Create(AOwner);
  self.teacherID := teacherID;
  self.date      := date;
end;

procedure TfmTeacherAbsentsEd.btnOKClick(Sender: TObject);
var
  query:      TIBQuery;
  i:          integer;
  absentsCSV: string;
begin
  absentsCSV := '';
  for i := 0 to cbAbsentTypes.Count - 1 do
    if cbAbsentTypes.Checked[i] then
      absentsCSV := absentsCSV + IntToStr(Integer(cbAbsentTypes.Items.Objects[i])) + ',';
  if (absentsCSV = '') and (Application.MessageBox(
    'Внимание! Ничего не отмечено. ' + #13#10 +
    'Это приведёт к удалению данных по отсутствию преподавателя за указанный период.',
    'Удаление',
     MB_OKCANCEL
    ) = mrCancel)
  then
    Exit;

  query := dm.ibqProc;
  if query.Transaction.InTransaction then query.Transaction.Commit;
  query.SQL.Clear;
  query.SQL.Append('EXECUTE PROCEDURE TEACHER_ABSENTS_EDIT(:teacher_id, :date_from, :date_to, :absents);');
  query.ParamByName('teacher_id').Value  := teacherID;
  query.ParamByName('date_from').AsDate  := dtpFrom.Date;
  query.ParamByName('date_to').AsDate    := dtpTo.Date;
  query.ParamByName('absents').AsString  := absentsCSV;
  try
    query.ExecSQL;
  except
    Application.MessageBox('Ошибка при изменении данных. Пожалуйста повторите действие.', 'Ошибка', mrOk);
  end;
  if query.Transaction.InTransaction then query.Transaction.Commit;
end;

end.
