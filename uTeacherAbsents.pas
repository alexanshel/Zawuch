unit uTeacherAbsents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, StdCtrls, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, UDM, Buttons, Mask, JvExMask, JvToolEdit, IBQuery;

type
  TfmTeacherAbsents = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    dsAbsents: TDataSource;
    ibdsAbsents: TIBDataSet;
    ibdsAbsentsABSENT_DATE: TDateField;
    ibdsAbsentsCODES: TMemoField;
    Panel2: TPanel;
    btnOK: TButton;
    btnEdit: TSpeedButton;
    edComments: TJvComboEdit;
    procedure edCommentsButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
  private
    teacherID: integer;
  public
    constructor Create(AOwner: TComponent; teacherId: integer); overload;
    { Public declarations }
  end;

var
  fmTeacherAbsents: TfmTeacherAbsents;

implementation

uses uTeacherAbsentsEd, Math;

{$R *.dfm}

{ TfmTeacherAbsents }

constructor TfmTeacherAbsents.Create(AOwner: TComponent;
  teacherId: integer);
begin
  inherited Create(AOwner);
  self.teacherID := teacherID;
end;

procedure TfmTeacherAbsents.edCommentsButtonClick(Sender: TObject);
var
  query: TIBQuery;
  comments: string;
begin
  comments := edComments.Text;
  if InputQuery('Комментарии', 'Введите значения:', comments) then
  begin
    edComments.Text := comments;
    query := DM.ibqProc;
    if query.Transaction.InTransaction then query.Transaction.Commit;
    query.SQL.Clear;
    query.SQL.Append('EXECUTE PROCEDURE TEACHER_ABSENT_DATA_EDIT(:teacher_id, :comments)');
    query.ParamByName('teacher_id').Value := teacherID;
    query.ParamByName('comments').Value  := comments;
    try
      query.ExecSQL;
    except
      Application.MessageBox('Ошибка при обновлении данных. Попробуйте ещё раз.', 'Ошибка', mrOk);
    end;
    if query.Transaction.InTransaction then query.Transaction.Commit;
  end;
end;

procedure TfmTeacherAbsents.FormCreate(Sender: TObject);
var
  query: TIBQuery;
begin
  ibdsAbsents.ParamByName('teacher_id').Value := teacherID;
  ibdsAbsents.Open;
  query := DM.ibqProc;
  query.SQL.Text := 'select tam.comments from v_teacher_absent_month_data tam where tam.teacher_id = :teacher_id';
  query.ParamByName('teacher_id').Value := teacherID;
  query.Open;
  query.First;
  if not query.Eof then
  begin
    edComments.Text := query.FieldByName('comments').AsString;
  end;
  query.Close;
end;

procedure TfmTeacherAbsents.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibdsAbsents.Close;
end;

procedure TfmTeacherAbsents.btnEditClick(Sender: TObject);
begin
  fmTeacherAbsentsEd := TfmTeacherAbsentsEd.Create(Self, teacherID, ibdsAbsentsABSENT_DATE.Value);
  fmTeacherAbsentsEd.ShowModal;
  fmTeacherAbsentsEd.Release;
  ibdsAbsents.Close;
  ibdsAbsents.Open;
end;

end.
