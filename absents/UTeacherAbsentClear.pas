unit UTeacherAbsentClear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit, DB,
  IBCustomDataSet, IBQuery;

type
  TfmTeacherAbsentsClear = class(TForm)
    dtpTo: TJvDateEdit;
    dtpFrom: TJvDateEdit;
    Label3: TLabel;
    Label1: TLabel;
    Panel3: TPanel;
    btnOK: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  end;

var
  fmTeacherAbsentsClear: TfmTeacherAbsentsClear;

implementation

uses UDM;

{$R *.dfm}

procedure TfmTeacherAbsentsClear.FormCreate(Sender: TObject);
begin
  if date <> Null then
  begin
    dtpFrom.Date := date;
    dtpTo.Date   := date;
  end;
end;


constructor TfmTeacherAbsentsClear.Create(
  AOwner:     TComponent;
  teacherID: integer;
  date:      variant
);
begin
  inherited Create(AOwner);
  self.teacherID := teacherID;
  self.date      := date;
end;

procedure TfmTeacherAbsentsClear.btnOKClick(Sender: TObject);
var
  query:      TIBQuery;
  i:          integer;
begin
  query := dm.ibqProc;
  if query.Transaction.InTransaction then query.Transaction.Commit;
  query.SQL.Clear;
  query.SQL.Append('EXECUTE PROCEDURE TEACHER_ABSENTS_EDIT(:teacher_id, :date_from, :date_to, :absents);');
  query.ParamByName('teacher_id').Value  := teacherID;
  query.ParamByName('date_from').AsDate  := dtpFrom.Date;
  query.ParamByName('date_to').AsDate    := dtpTo.Date;
  query.ParamByName('absents').AsString  := '';
  try
    query.ExecSQL;
  except
    Application.MessageBox('Ошибка при изменении данных. Пожалуйста повторите действие.', 'Ошибка', mrOk);
  end;
  if query.Transaction.InTransaction then query.Transaction.Commit;
end;

end.
