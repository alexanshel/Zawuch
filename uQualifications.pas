unit uQualifications;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, Buttons, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, UDM, IB;

type
  TfmQualifications = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    btnAdd: TSpeedButton;
    btnDel: TSpeedButton;
    btnEdit: TSpeedButton;
    ibdsQualification: TIBDataSet;
    ds: TDataSource;
    ibdsQualificationID: TIntegerField;
    ibdsQualificationNAME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmQualifications: TfmQualifications;

implementation

uses IBQuery;

{$R *.dfm}

procedure TfmQualifications.FormCreate(Sender: TObject);
begin
  ibdsQualification.Open;
end;

procedure TfmQualifications.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibdsQualification.Close;
end;

procedure TfmQualifications.btnAddClick(Sender: TObject);
var
  qName: String;
  id: Integer;
begin
  qName := InputBox('Создание квалификации', 'Наименование: ', '');
  if qName <> '' then
  begin
    id := dm.DBWorker.genID();
    with dm.DBWorker.Query do
    begin
      SQL.Text := 'insert into qualification (id, name) values (:p_id, :p_name);';
      ParamByName('p_id').AsInteger := id;
      ParamByName('p_name').Value := qName;
      try
        ExecSQL;
      except
        Transaction.Rollback;
        raise;
      end;
      if Transaction.InTransaction then Transaction.Commit;
    end;
    ibdsQualification.Close;
    ibdsQualification.Open;
    ibdsQualification.Locate('id', VarArrayOf([id]), []);
  end;
end;

procedure TfmQualifications.btnDelClick(Sender: TObject);
var
  mess: String;
begin
  if ibdsQualification.IsEmpty then
    exit;
  mess := 'Действительно удалить квалификацию ' +
    ibdsQualification.FieldByName('name').AsString + '?';
  if Application.MessageBox(PAnsiChar(mess), 'Подтверждение', MB_YESNO) = mrYes
  then
  begin
    try
      dm.DeleteRow('qualification', 'id', ibdsQualification.FieldByName('id').AsInteger);
    except
      on EIBInterBaseError do ShowMessage('Удаление невозможно. Имеются преподаватели с данной квалификацией!');
    end;
    ibdsQualification.Close;
    ibdsQualification.Open;
  end;
end;

procedure TfmQualifications.btnEditClick(Sender: TObject);
var
  qName: String;
  id: Integer;
begin
  if ibdsQualification.IsEmpty then exit;
  qName := InputBox('Изменение квалификации', 'Наименование: ', ibdsQualificationNAME.Value);
  id := ibdsQualificationID.AsInteger;
  if (qName <> '') and (ibdsQualificationNAME.AsString <> qName) then
  begin
    with dm.DBWorker.Query do
    begin
      SQL.Text := 'update qualification set name = :name where id = :id;';
      ParamByName('id').AsInteger := ibdsQualificationID.Value;
      ParamByName('name').Value := qName;
      try
        ExecSQL;
      except
        Transaction.Rollback;
        raise;
      end;
      if Transaction.InTransaction then Transaction.Commit;
    end;
    ibdsQualification.Close;
    ibdsQualification.Open;
    ibdsQualification.Locate('id', VarArrayOf([id]), []);
  end;
end;

procedure TfmQualifications.FormActivate(Sender: TObject);
begin
  ibdsQualification.Close;
  ibdsQualification.Open;
end;

procedure TfmQualifications.JvDBGrid1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
