unit uDepChoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, JvExControls,
  JvDBLookup;

type
  TfmDepChoice = class(TForm)
    jvdblcDepartment: TJvDBLookupCombo;
    Label1: TLabel;
    bbCancel: TBitBtn;
    bbOK: TBitBtn;
    dsDepartment: TDataSource;
    ibqDepartment: TIBQuery;
    ibqDepartmentID: TIntegerField;
    ibqDepartmentCode: TIntegerField;
    ibqDepartmentName: TIBStringField;
    ibqDepartmentCurriculumID: TIntegerField;
    ibqDepartmentInfo: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDepChoice: TfmDepChoice;

implementation

uses UDM;

{$R *.dfm}

procedure TfmDepChoice.FormCreate(Sender: TObject);
begin
  ibqDepartment.Open;
end;

procedure TfmDepChoice.FormDestroy(Sender: TObject);
begin
  ibqDepartment.Close;
end;

end.
