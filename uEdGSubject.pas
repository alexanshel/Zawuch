unit uEdGSubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvFooter, ExtCtrls,
  JvExExtCtrls, JvExtComponent, JvExControls, JvDBLookup, DB,
  IBCustomDataSet, IBQuery;

type
  TfmEdGSubject = class(TForm)
    Label1: TLabel;
    edName: TEdit;
    Label2: TLabel;
    jvdblcGrouping: TJvDBLookupCombo;
    Label3: TLabel;
    jvdblcGroupingSubj: TJvDBLookupCombo;
    JvFooter1: TJvFooter;
    btnOK: TJvFooterBtn;
    JvFooterBtn3: TJvFooterBtn;
    cbConcertmaster: TCheckBox;
    dsGrouping: TDataSource;
    dsCurrRec: TDataSource;
    ibqGrouping: TIBQuery;
    ibqGroupingSubj: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure jvdblcGroupingChange(Sender: TObject);
    procedure jvdblcGroupingSubjChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOnwer: TComponent; SubjectName: string; IDGrouping: Variant; IDGroupingSubj: Variant); overload;
  end;

var
  fmEdGSubject: TfmEdGSubject;

implementation

{$R *.dfm}

procedure TfmEdGSubject.FormCreate(Sender: TObject);
begin
  ibqGrouping.Open;
  ibqGroupingSubj.Open;
  ibqGrouping.Locate('ID', jvdblcGrouping.KeyValue, []);
  ibqGroupingSubj.Close;
  ibqGroupingSubj.ParamByName('GROUPING_ID').Value := ibqGrouping.FieldValues['ID'];
  ibqGroupingSubj.Open;
end;

procedure TfmEdGSubject.btnOKClick(Sender: TObject);
var
  ErrorText: string;
begin
  ErrorText := '';
  if edName.Text = '' then ErrorText := 'Имя предмета не может быть пустым.' + #13#10;
  if jvdblcGrouping.KeyValue = Null then ErrorText := ErrorText + 'Не указано отделение.' + #13#10;
  if jvdblcGroupingSubj.KeyValue = Null then ErrorText := ErrorText + 'Не указан предмет учебного плана.' + #13#10;
  if ErrorText = '' then
    ModalResult := mrOk
  else
    MessageDlg(ErrorText, mtError, mbOKCancel, 0);
end;

procedure TfmEdGSubject.jvdblcGroupingChange(Sender: TObject);
begin
  ibqGrouping.Locate('ID', jvdblcGrouping.KeyValue, []);
  ibqGroupingSubj.Close;
  ibqGroupingSubj.ParamByName('GROUPING_ID').Value := ibqGrouping.FieldValues['ID'];
  ibqGroupingSubj.Open;
  if (jvdblcGroupingSubj.KeyValue = Null) or ibqGroupingSubj.Locate('ID', jvdblcGroupingSubj.KeyValue, []) then Exit;
  jvdblcGroupingSubj.KeyValue := Null;
end;

constructor TfmEdGSubject.Create(AOnwer: TComponent; SubjectName: string;
  IDGrouping, IDGroupingSubj: Variant);
begin
  inherited Create(AOnwer);
  jvdblcGrouping.KeyValue := IDGrouping;
  jvdblcGroupingSubj.KeyValue := IDGroupingSubj;
  edName.Text := SubjectName;
end;

procedure TfmEdGSubject.jvdblcGroupingSubjChange(Sender: TObject);
begin
  edName.Text := jvdblcGroupingSubj.Text;
end;

end.
