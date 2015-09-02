unit uTeacherAddings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Buttons, DB, IBCustomDataSet;

type
  TfmTeacherAddings = class(TForm)
    btnAddAding: TSpeedButton;
    btnEditAdding: TSpeedButton;
    btnDelAdding: TSpeedButton;
    dbgAddings: TDBGrid;
    Panel1: TPanel;
    dsAddings: TDataSource;
    ibdsTeacherAddings: TIBDataSet;
    ibdsTeacherAddingsID: TIntegerField;
    ibdsTeacherAddingsTeacherID: TIntegerField;
    ibdsTeacherAddingsName: TIBStringField;
    ibdsTeacherAddingsPercent: TFloatField;
    ibdsTeacherAddingsSum: TFloatField;
    procedure btnEditAddingClick(Sender: TObject);
    procedure btnDelAddingClick(Sender: TObject);
    procedure btnAddAdingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    teacherID: Integer;
    procedure CheckBtn;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; teacherId: integer); overload;
    { Public declarations }
  end;

var
  fmTeacherAddings: TfmTeacherAddings;

implementation

uses UEdTeacherAdding, UDM;

{$R *.dfm}

procedure TfmTeacherAddings.btnEditAddingClick(Sender: TObject);
begin
  fmEdTeacherAdding := TfmEdTeacherAdding.Create(Self);
  fmEdTeacherAdding.edName.Text := ibdsTeacherAddingsName.Value;
  fmEdTeacherAdding.edPercent.Text := ibdsTeacherAddingsPercent.AsString;
  fmEdTeacherAdding.edSum.Text := ibdsTeacherAddingsSum.AsString;
  if fmEdTeacherAdding.ShowModal = mrOk then
  begin
    DM.AddTeacherAdding(ibdsTeacherAddingsID.Value, DM.ibdsTeacherID.Value,
      fmEdTeacherAdding.edName.Text, StrToInt(fmEdTeacherAdding.edPercent.Text),
      StrToFloat(fmEdTeacherAdding.edSum.Text));
    ibdsTeacherAddings.Refresh;
  end;
end;

procedure TfmTeacherAddings.btnDelAddingClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите удалить надбавку?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelTeacherAdding(ibdsTeacherAddingsID.Value);
    ibdsTeacherAddings.Close;
    ibdsTeacherAddings.Open;
  end;
end;

procedure TfmTeacherAddings.btnAddAdingClick(Sender: TObject);
var
  id: Integer;
begin
  fmEdTeacherAdding := TfmEdTeacherAdding.Create(Self);
  if fmEdTeacherAdding.ShowModal = mrOk then
  begin
    id := DM.AddTeacherAdding(0, DM.ibdsTeacherID.Value,
      fmEdTeacherAdding.edName.Text, StrToInt(fmEdTeacherAdding.edPercent.Text),
      StrToFloat(fmEdTeacherAdding.edSum.Text));
    ibdsTeacherAddings.Close;
    ibdsTeacherAddings.Open;
    ibdsTeacherAddings.Locate('ID', VarArrayOf([id]), []);
  end;
  CheckBtn;
end;

procedure TfmTeacherAddings.FormCreate(Sender: TObject);
begin
  ibdsTeacherAddings.Close;
  ibdsTeacherAddings.ParamByName('id').AsInteger := teacherID;
  ibdsTeacherAddings.Open;
  dsAddings.DataSet := ibdsTeacherAddings;
  CheckBtn;
end;

constructor TfmTeacherAddings.Create(AOwner: TComponent;
  teacherId: integer);
begin
  inherited Create(AOwner);
  self.teacherID := teacherId;
end;



procedure TfmTeacherAddings.CheckBtn;
begin
  btnDelAdding.Enabled := ibdsTeacherAddings.RecordCount <> 0;
  btnEditAdding.Enabled := btnDelAdding.Enabled;
end;

procedure TfmTeacherAddings.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsAddings.DataSet := nil;
end;

end.
