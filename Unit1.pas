unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, IBCustomDataSet, IBDatabase, IBTable,
  ExtCtrls, DBCtrls, StdCtrls, IBStoredProc, Menus, RpRave, RpDefine,
  RpCon, RpConDS, RpBase, RpSystem, RpRender, RpRenderRTF, RpRenderText,
  RpRenderCanvas, RpRenderPreview, RpFiler, TeEngine, Series, TeeProcs,
  Chart, DbChart;

type
  TfmMAIN = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    miSubjects: TMenuItem;
    miDepSpec: TMenuItem;
    miClose: TMenuItem;
    miFilial: TMenuItem;
    miConst: TMenuItem;
    miCurrs: TMenuItem;
    miTariffication: TMenuItem;
    N2: TMenuItem;
    miTeacher: TMenuItem;
    miStudent: TMenuItem;
    N3: TMenuItem;
    miLoadBase: TMenuItem;
    miSaveBase: TMenuItem;
    OpenDialog: TOpenDialog;
    DataSource1: TDataSource;
    N4: TMenuItem;
    miGroup: TMenuItem;
    Button1: TButton;
    procedure miSubjectsClick(Sender: TObject);
    procedure miDepSpecClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure miFilialClick(Sender: TObject);
    procedure miConstClick(Sender: TObject);
    procedure miCurrsClick(Sender: TObject);
    procedure miTarifficationClick(Sender: TObject);
    procedure miTeacherClick(Sender: TObject);
    procedure miStudentClick(Sender: TObject);
    procedure miLoadBaseClick(Sender: TObject);
    procedure miGroupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMAIN: TfmMAIN;

implementation

uses UDM, USubject, UDepSpecCurr, UCurriculum, Unit2, UConst, UFilial,
  UTarif, UTeacher, UEdStudent, UStudent, UEdCurr, UEdCurrRec,
  UStudentFilter, UGroup;

{$R *.dfm}

procedure TfmMAIN.miSubjectsClick(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  fmSubject.ShowModal;
end;

procedure TfmMAIN.miDepSpecClick(Sender: TObject);
begin
  fmDepSpec := TfmDepSpec.Create(Self);
  fmDepSpec.ShowModal;
  fmDepSpec.Release;
end;

procedure TfmMAIN.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMAIN.miFilialClick(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  fmFilial.ShowModal;
  fmFilial.Release;
end;

procedure TfmMAIN.miConstClick(Sender: TObject);
begin
  fmConst := TFmConst.Create(Self);
  fmConst.ShowModal;
  fmConst.Release;
end;

procedure TfmMAIN.miCurrsClick(Sender: TObject);
begin
  fmCurriculum := TfmCurriculum.Create(Self);
  fmCurriculum.ShowModal;
  fmCurriculum.Release;
end;

procedure TfmMAIN.miTarifficationClick(Sender: TObject);
begin
  fmTariff := TfmTariff.Create(Self);
  fmTariff.ShowModal;
  fmTariff.Release;
end;

procedure TfmMAIN.miTeacherClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.ShowModal;
  fmTeacher.Release;
end;

procedure TfmMAIN.miStudentClick(Sender: TObject);
begin
  fmStudent := TfmStudent.Create(Self);
  fmStudent.ShowModal;
  fmStudent.Release;
end;

procedure TfmMAIN.miLoadBaseClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    DM.ibDatabase.Close;
    DM.ibDatabase.DatabaseName := OpenDialog.FileName;
    DM.ibDatabase.Open;
    DM.OpenDB;
  end;
end;

procedure TfmMAIN.miGroupClick(Sender: TObject);
begin
  DM.ibdsTeacherGroup.Close;
  DM.ibdsTeacherGroup.Open;
  DM.ibdsTeacherGroupSubj.Close;
  DM.ibdsTeacherGroupSubj.Open;
  fmGroup := TfmGroup.Create(Self);
  fmGroup.ShowModal;
  fmGroup.Release; 
end;

end.
