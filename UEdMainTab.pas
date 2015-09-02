unit UEdMainTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, IniFiles, Placemnt, DB,
  IBCustomDataSet, Grids, DBGrids, JvExDBGrids, JvDBGrid, IBQuery;

type
  TfmEditMainTab = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel4: TPanel;
    btnEdit: TSpeedButton;
    GroupBox4: TGroupBox;
    dsAbsents: TDataSource;
    ibdsAbsents: TIBDataSet;
    ibdsAbsentsABSENT_DATE: TDateField;
    ibdsAbsentsCODES: TMemoField;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    edBYT: TLabeledEdit;
    edBCT: TLabeledEdit;
    edBOT: TLabeledEdit;
    edComments: TLabeledEdit;
    GroupBox5: TGroupBox;
    edSwpY: TLabeledEdit;
    edSwpO: TLabeledEdit;
    edSwpC: TLabeledEdit;
    btnDel: TSpeedButton;
    procedure edDaysQtyKeyPress(Sender: TObject; var Key: Char);
    procedure edBYTKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    teacherID: integer;
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; teacherID: Integer); overload;
  end;

var
  fmEditMainTab: TfmEditMainTab;

implementation

uses uTeacherAbsentsEd, Math, UTeacherAbsentClear, UDM;

{$R *.dfm}

procedure TfmEditMainTab.edDaysQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEditMainTab.edBYTKeyPress(Sender: TObject; var Key: Char);
begin
   if not
     ((Key in ['0'..'9', #8]) or
     ((Key = ',') and (Pos(',', (Sender as TLabeledEdit).Text) = 0)))
   then Key := #0
end;

procedure TfmEditMainTab.btnEditClick(Sender: TObject);
var
  dt: TDateTime;
begin
  dt := IfThen(ibdsAbsentsABSENT_DATE.AsVariant = Null, Date, ibdsAbsentsABSENT_DATE.Value);
  fmTeacherAbsentsEd := TfmTeacherAbsentsEd.Create(Self, teacherID, dt);
  fmTeacherAbsentsEd.ShowModal;
  fmTeacherAbsentsEd.Release;
  ibdsAbsents.Close;
  ibdsAbsents.Open;
end;

procedure TfmEditMainTab.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibdsAbsents.Close;
end;

constructor TfmEditMainTab.Create(AOwner: TComponent; teacherID: integer);
begin
  inherited Create(AOwner);
  Self.teacherID := teacherID;
end;

procedure TfmEditMainTab.FormCreate(Sender: TObject);
begin
  ibdsAbsents.ParamByName('teacher_id').Value := teacherID;
  ibdsAbsents.Open;
end;

procedure TfmEditMainTab.JvDBGrid1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TfmEditMainTab.btnDelClick(Sender: TObject);
var
  query: TIBQuery;
begin
  if Application.MessageBox(
      'Действительно удалить все отсутствия преподавателя?',
      'Удаление записей об отсутствиях',
      MB_YESNO
    ) = mrYes
  then
  begin
    query := dm.ibqProc;
    if query.Transaction.InTransaction then query.Transaction.Commit;
    query.SQL.Clear;
    query.SQL.Append('EXECUTE PROCEDURE TEACHER_ABSENTS_CLEAR(:teacher_id);');
    query.ParamByName('teacher_id').Value  := teacherID;
    try
      query.ExecSQL;
    except
      Application.MessageBox('Ошибка при удалении. Пожалуйста повторите действие.', 'Ошибка', mrOk);
    end;
    if query.Transaction.InTransaction then query.Transaction.Commit;
  end;
  ibdsAbsents.Close;
  ibdsAbsents.Open;
end;

end.
