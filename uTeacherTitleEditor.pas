unit uTeacherTitleEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, StdCtrls, JvExStdCtrls, JvButton, JvCtrls,
  JvFooter, ExtCtrls, JvExExtCtrls, JvExtComponent, JvExControls,
  JvDBLookup, ComCtrls, UDM, ActnList;

type
  TfmTeacherTitleEditor = class(TForm)
    dtpDate: TDateTimePicker;
    JvDBLCTitle: TJvDBLookupCombo;
    edSerieNumber: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvFooter1: TJvFooter;
    jfbOK: TJvFooterBtn;
    jfbCancel: TJvFooterBtn;
    dsTitle: TDataSource;
    ibdsTitle: TIBDataSet;
    ibdsTitleF_ID: TIntegerField;
    ibdsTitleF_NAME: TIBStringField;
    ActionList1: TActionList;
    aOK: TAction;
    aCancel: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure aOKExecute(Sender: TObject);
    procedure aOKUpdate(Sender: TObject);
  private
    FTeacherTitle: TTeacherTitle;
    { Private declarations }
  public
    constructor New(AOwner: TComponent);
    //constructor Edit(AOwner: TComponent; TeacherTitle: TTeacherTitle);
    { Public declarations }
  end;

var
  fmTeacherTitleEditor: TfmTeacherTitleEditor;

implementation

{$R *.dfm}



procedure TfmTeacherTitleEditor.FormCreate(Sender: TObject);
begin
  ibdsTitle.Open;
  if DM.TeacherTitle.ID <> Null then
  begin
    JvDBLCTitle.KeyValue := DM.TeacherTitle.IDKind;
    dtpDate.DateTime := DM.TeacherTitle.Date;
    edSerieNumber.Text := DM.TeacherTitle.SeriesNumber;
  end;
end;

procedure TfmTeacherTitleEditor.FormDestroy(Sender: TObject);
begin
  ibdsTitle.Close;
end;

constructor TfmTeacherTitleEditor.New(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTeacherTitle := nil;
end;

procedure TfmTeacherTitleEditor.aOKExecute(Sender: TObject);
begin
  DM.TeacherTitle.IDKind := JvDBLCTitle.KeyValue;
  DM.TeacherTitle.Date := dtpDate.DateTime;
  DM.TeacherTitle.SeriesNumber := edSerieNumber.Text;
  if DM.TeacherTitle.ID = Null then
    DM.TeacherTitle.New
  else
    DM.TeacherTitle.SaveChanges;
  //FTeacherTitle := TTeacherTitle.Create();
end;

procedure TfmTeacherTitleEditor.aOKUpdate(Sender: TObject);
begin
  aOK.Enabled := JvDBLCTitle.KeyValue <> Null;
end;

end.
