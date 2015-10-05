unit uEdISubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvDBLookup, UDM, DB, IBCustomDataSet,
  IBQuery, JvExStdCtrls, JvButton, JvCtrls, JvFooter, ExtCtrls,
  JvExExtCtrls, JvExtComponent;

type
  TfmEdISubject = class(TForm)
    jvdblcDepartment: TJvDBLookupCombo;
    Label1: TLabel;
    edName: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    jvdblcCurrRec: TJvDBLookupCombo;
    JvFooter1: TJvFooter;
    btnOK: TJvFooterBtn;
    JvFooterBtn3: TJvFooterBtn;
    dsDepartment: TDataSource;
    dsCurrRec: TDataSource;
    ibqDepartment: TIBQuery;
    ibqCurrRec: TIBQuery;
    cbConcertmaster: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure jvdblcDepartmentChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOnwer: TComponent; SubjectName: string; IDDepartment: Variant; IDCurrRec: Variant); overload;
  end;

var
  fmEdISubject: TfmEdISubject;

implementation

{$R *.dfm}

procedure TfmEdISubject.FormCreate(Sender: TObject);
begin
  ibqDepartment.Open;
  ibqCurrRec.Open;
  ibqDepartment.Locate('ID', jvdblcDepartment.KeyValue, []);
  ibqCurrRec.Close;
  ibqCurrRec.ParamByName('CurriculumID').Value := ibqDepartment.FieldValues['ID'];
  ibqCurrRec.Open;
end;

procedure TfmEdISubject.btnOKClick(Sender: TObject);
var
  ErrorText: string;
begin
  ErrorText := '';
  if edName.Text = '' then ErrorText := 'Имя предмета не может быть пустым.' + #13#10;
  if jvdblcDepartment.KeyValue = Null then ErrorText := ErrorText + 'Не указано отделение.' + #13#10;
  if jvdblcCurrRec.KeyValue = Null then ErrorText := ErrorText + 'Не указан предмет учебного плана.' + #13#10;
  if ErrorText = '' then
    ModalResult := mrOk
  else
    MessageDlg(ErrorText, mtError, mbOKCancel, 0);
end;

procedure TfmEdISubject.jvdblcDepartmentChange(Sender: TObject);
begin
  ibqDepartment.Locate('ID', jvdblcDepartment.KeyValue, []);
  ibqCurrRec.Close;
  ibqCurrRec.ParamByName('CurriculumID').Value := ibqDepartment.FieldValues['CURR_ID'];
  ibqCurrRec.Open;
  if (jvdblcCurrRec.KeyValue = Null) or ibqCurrRec.Locate('ID', jvdblcCurrRec.KeyValue, []) then Exit;
  jvdblcCurrRec.KeyValue := Null;
end;

constructor TfmEdISubject.Create(AOnwer: TComponent; SubjectName: string;
  IDDepartment, IDCurrRec: Variant);
begin
  inherited Create(AOnwer);
  jvdblcDepartment.KeyValue := IDDepartment;
  jvdblcCurrRec.KeyValue := IDCurrRec;
  edName.Text := SubjectName;
end;

end.
