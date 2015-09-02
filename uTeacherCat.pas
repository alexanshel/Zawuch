unit uTeacherCat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, Buttons, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, UDM;

type
  TfmTeacherCat = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDel: TSpeedButton;
    dsCat: TDataSource;
    ibdsCategory: TIBDataSet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherCat: TfmTeacherCat;

implementation

uses uTeacherCatEdit;

{$R *.dfm}

procedure TfmTeacherCat.FormCreate(Sender: TObject);
begin
  ibdsCategory.Open;
end;

procedure TfmTeacherCat.FormDestroy(Sender: TObject);
begin
  ibdsCategory.Close;
end;

procedure TfmTeacherCat.btnAddClick(Sender: TObject);
var
  id: Integer;
begin
  fmTeacherCatEdit := TfmTeacherCatEdit.Create(Self);
  if fmTeacherCatEdit.ShowModal = mrOk then
  begin
    id := dm.AddTeacherCatKind(
      Null,
      fmTeacherCatEdit.edName.Text,
      fmTeacherCatEdit.edPrintName.Text,
      fmTeacherCatEdit.edCoef.Value
    );
    ibdsCategory.Close;
    ibdsCategory.Open;
    ibdsCategory.Locate('f_id', id, []);
  end;
  fmTeacherCatEdit.Release;
end;

procedure TfmTeacherCat.btnEditClick(Sender: TObject);
begin
  fmTeacherCatEdit := TfmTeacherCatEdit.Create(Self);
  fmTeacherCatEdit.edName.Text      := ibdsCategory.FieldByName('f_name').AsString;
  fmTeacherCatEdit.edPrintName.Text := ibdsCategory.FieldByName('f_print').AsString;
  fmTeacherCatEdit.edCoef.Value      := ibdsCategory.FieldByName('f_coef').AsFloat;
  //ShowMessage(fmTeacherCatEdit.edCoef.Text);
  if fmTeacherCatEdit.ShowModal = mrOk then
  begin
    dm.AddTeacherCatKind(
      ibdsCategory.fieldByName('f_id').Value,
      fmTeacherCatEdit.edName.Text,
      fmTeacherCatEdit.edPrintName.Text,
      fmTeacherCatEdit.edCoef.Value
    );
  end;
  fmTeacherCatEdit.Release;
  ibdsCategory.Refresh;
end;

procedure TfmTeacherCat.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btnEditClick(Sender);
end;

procedure TfmTeacherCat.btnDelClick(Sender: TObject);
var
  mess: String;
begin
  if ibdsCategory.IsEmpty then
    exit;
  mess := 'Действительно удалить категорию ' +
    ibdsCategory.FieldByName('f_name').AsString + '?';
  if Application.MessageBox(PAnsiChar(mess), 'Подтверждение', MB_YESNO) = mrYes
  then
  begin
    dm.DeleteRow('teacher_cat_kind', 'f_id', ibdsCategory.FieldByName('f_id').AsInteger);
    ibdsCategory.Close;
    ibdsCategory.Open;
  end;
end;

end.
