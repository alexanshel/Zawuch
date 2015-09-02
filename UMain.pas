unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, IBCustomDataSet, IBDatabase, IBTable,
  ExtCtrls, DBCtrls, StdCtrls, IBStoredProc, Menus, TeEngine, Series, TeeProcs,
  Chart, DbChart, IniFiles, Registry, ImgList, ComCtrls, ValEdit, Placemnt,
  ToolWin, ActnMan, ActnCtrls, ActnList, XPStyleActnCtrls, ActnMenus,
  CustomizeDlg, ActnColorMaps, StdStyleActnCtrls, JvImageList, StdActns,
  frxClass, frxDBSet;

type
  TfmMAIN = class(TForm)
    OpenDialog: TOpenDialog;
    Images: TImageList;
    FR: TFormPlacement;
    StatusBar1: TStatusBar;
    CustomizeDlg: TCustomizeDlg;
    XPColorMap: TXPColorMap;
    ActionToolBar: TActionToolBar;
    ActionMainMenuBar: TActionMainMenuBar;
    ActionManager: TActionManager;
    aStudent: TAction;
    aTeacher: TAction;
    aSubject: TAction;
    aCurrDeptSpec: TAction;
    aCurriculum: TAction;
    aConst: TAction;
    aTariff: TAction;
    aPost: TAction;
    aEducation: TAction;
    aFilial: TAction;
    aCalcGroup: TAction;
    aMainTab: TAction;
    aReplaceTab: TAction;
    aOnetimeClockTab: TAction;
    aAbsenceTab: TAction;
    aFactCurriculum: TAction;
    aTariffication: TAction;
    aLearnTimeGrid: TAction;
    aHelp: TAction;
    HelpContents1: THelpContents;
    aExit: TAction;
    aReport: TAction;
    aCalc: TAction;
    aClockCalculate: TAction;
    aTeacherCat: TAction;
    aQualifications: TAction;
    procedure miSubjectsClick(Sender: TObject);
    procedure miDepSpecClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure miFilialClick(Sender: TObject);
    procedure miConstClick(Sender: TObject);
    procedure miCurrsClick(Sender: TObject);
    procedure miTariffClick(Sender: TObject);
    procedure miTeacherClick(Sender: TObject);
    procedure miLoadBaseClick(Sender: TObject);
    procedure miTarifficationClick(Sender: TObject);
    procedure miTabClick(Sender: TObject);
    procedure LWDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miRepCPlanClick(Sender: TObject);
    procedure miRepTabClick(Sender: TObject);
    procedure miRepTabExtClick(Sender: TObject);
    procedure LWKeyPress(Sender: TObject; var Key: Char);
    procedure miGroupExtClick(Sender: TObject);
    procedure miPostClick(Sender: TObject);
    procedure miEducationClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure miLearnTimeGridClick(Sender: TObject);
    procedure miRepTabExt2Click(Sender: TObject);
    procedure aStudentExecute(Sender: TObject);
    procedure aTeacherExecute(Sender: TObject);
    procedure aSubjectExecute(Sender: TObject);
    procedure aCurrDeptSpecExecute(Sender: TObject);
    procedure aCurriculumExecute(Sender: TObject);
    procedure aConstExecute(Sender: TObject);
    procedure aTariffExecute(Sender: TObject);
    procedure aPostExecute(Sender: TObject);
    procedure aEducationExecute(Sender: TObject);
    procedure aFilialExecute(Sender: TObject);
    procedure aCalcGroupExecute(Sender: TObject);
    procedure aMainTabExecute(Sender: TObject);
    procedure aReplaceTabExecute(Sender: TObject);
    procedure aOnetimeClockTabExecute(Sender: TObject);
    procedure aAbsenceTabExecute(Sender: TObject);
    procedure aFactCurriculumExecute(Sender: TObject);
    procedure aTarifficationExecute(Sender: TObject);
    procedure aLearnTimeGridExecute(Sender: TObject);
    procedure HelpContents1Execute(Sender: TObject);
    procedure aHelpExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aCalcIndClockRepExecute(Sender: TObject);
    procedure aClockCalculateExecute(Sender: TObject);
    procedure aTeacherCatExecute(Sender: TObject);
    procedure aQualificationsExecute(Sender: TObject);
  private
    { Private declarations }
    procedure InitDefaultReportsParams;
    procedure LoadHeader;
  public
    { Public declarations }
  end;

var
  fmMAIN: TfmMAIN;

implementation

uses UDM, USubject, UDepSpecCurr, UCurriculum, Unit2, UConst, UFilial,
  UTarif, UTeacher, UEdStudent, UStudent, UEdCurr, UEdCurrRec,
  UStudentFilter, UTariffication, DateUtils, UTab, USetTeachers,
  URepCurriculum, URepTab, URepTabExt, UGroupExt, UPost, UEducation,
  UScriptRuner, UReportParams, ULeartTimeGrid, URepTabExt2, UDeptSpecTree,
  uCalcIndClockRep, uClockCalculate, uTeacherCat, uQualifications;

{$R *.dfm}

procedure TfmMAIN.miSubjectsClick(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  fmSubject.ShowModal;
  fmSubject.Release;
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
  LoadHeader;
end;

procedure TfmMAIN.miConstClick(Sender: TObject);
begin
  fmConst := TFmConst.Create(Self);
  fmConst.ShowModal;
  fmConst.Release;
  LoadHeader;
end;

procedure TfmMAIN.miCurrsClick(Sender: TObject);
begin
  fmCurriculum := TfmCurriculum.Create(Self);
  fmCurriculum.ShowModal;
  fmCurriculum.Release;
end;

procedure TfmMAIN.miTariffClick(Sender: TObject);
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

procedure TfmMAIN.miLoadBaseClick(Sender: TObject);
var
 Reg : TRegIniFile;
 Ini: TIniFile;
begin
  if OpenDialog.Execute then
  begin
    DM.ibDatabase.Close;
    DM.ibDatabase.DatabaseName := 'localhost:' + OpenDialog.FileName;
    try
      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.INI'));
      Ini.WriteString('Base', 'Path', 'localhost:' + OpenDialog.FileName);
    finally
      Ini.Free;
    end;
    try
      DM.ibDatabase.Open;
      DM.OpenDB;
      LoadHeader;
    except
      MessageDlg('Базу данных не удалось загрузить', mtWarning, [mbOk], 0);
      Exit;
    end;
  end;
end;

procedure TfmMAIN.miTarifficationClick(Sender: TObject);
begin
  fmTariffication := TfmTariffication.Create(Self);
  fmTariffication.ShowModal;
  fmTariffication.Release;
end;

procedure TfmMAIN.miTabClick(Sender: TObject);
begin
  fmTab := TfmTab.Create(Self);
  fmTab.ShowModal;
  fmTab.Release;
end;

procedure TfmMAIN.LWDblClick(Sender: TObject);
begin
{
  case LW.ItemIndex of
  0: miTeacherClick(Sender);
  1: miStudentClick(Sender);
  end;
  }
end;

procedure TfmMAIN.FormCreate(Sender: TObject);
var
  p: string;
  sr: TSearchRec;
begin
  LoadHeader;
  p := ExtractFilePath(Application.ExeName) + 'tmp\';
  if FindFirst(p + '*.*', faAnyFile, sr) = 0 then
    repeat
      DeleteFile(p + sr.Name);
    until not (FindNext(sr) = 0);
end;

procedure TfmMAIN.InitDefaultReportsParams;
begin
end;

procedure TfmMAIN.miRepCPlanClick(Sender: TObject);
begin
  fmRepCurriculum := TfmRepCurriculum.Create(Self);
  fmRepCurriculum.ShowModal;
  fmRepCurriculum.Release;
end;

procedure TfmMAIN.miRepTabClick(Sender: TObject);
begin
  fmRepTab := TfmRepTab.Create(Self);
  fmRepTab.ShowModal;
  fmRepTab.Release;
end;

procedure TfmMAIN.miRepTabExtClick(Sender: TObject);
begin
  fmRepTabExt := TfmRepTabExt.Create(Self);
  fmRepTabExt.ShowModal;
  fmRepTabExt.Release;
end;

procedure TfmMAIN.LWKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #13: LWDblClick(Sender);
  end;
end;

procedure TfmMAIN.miGroupExtClick(Sender: TObject);
begin
  fmGroupExt := TfmGroupExt.Create(Self);
  fmGroupExt.ShowModal;
  fmGroupExt.Release;
end;

procedure TfmMAIN.LoadHeader;
var
  Filials: String;
begin
  DM.ibdsFilial.First;
  Filials := '';
  while not DM.ibdsFilial.Eof do
  begin
    Filials := Filials + DM.ibdsFilialName.Value + ' ';
    DM.ibdsFilial.Next;
  end;
  DM.ibdsFilial.First;
  fmMAIN.Caption := DM.ibdsConstPASPORT_NAME.Value + ' (' +
    Filials + ') ' +
   ' [' +
    FormatDateTime('mmmm yyyyг.', DM.ibdsConstSYSTEM_DATE.Value) + ']';
end;

procedure TfmMAIN.miPostClick(Sender: TObject);
begin
  fmPost := TfmPost.Create(Self);
  fmPost.ShowModal;
  fmPost.Release;
end;

procedure TfmMAIN.miEducationClick(Sender: TObject);
begin
  fmEducation := TfmEducation.Create(Self);
  fmEducation.ShowModal;
  fmEducation.Release;
end;

procedure TfmMAIN.miHelpClick(Sender: TObject);
begin
  WinHelp(fmMain.Handle, 'zawuch.hlp', HELP_CONTEXT, 0);
end;

procedure TfmMAIN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (Key = 83) and (ssShift in Shift) then
  begin
    if not Assigned(fmScriptRuner) then
      fmScriptRuner := TfmScriptRuner.Create(Self);
    fmScriptRuner.Show;
  end;
end;

procedure TfmMAIN.Button1Click(Sender: TObject);
begin
  fmClockCalculate := TfmClockCalculate.Create(Self);
  fmClockCalculate.Show;
end;

procedure TfmMAIN.miLearnTimeGridClick(Sender: TObject);
begin
  fmLearnTimeGrid := TfmLearnTimeGrid.Create(Self);
  fmLearnTimeGrid.ShowModal;
  fmLearnTimeGrid.Release; 
end;

procedure TfmMAIN.miRepTabExt2Click(Sender: TObject);
begin
  fmRepTabExt2 := TfmRepTabExt2.Create(Self);
  fmRepTabExt2.ShowModal;
  fmRepTabExt2.Release;
end;

procedure TfmMAIN.aStudentExecute(Sender: TObject);
begin
  fmStudent := TfmStudent.Create(Self);
  fmStudent.ShowModal;
  fmStudent.Release;
end;

procedure TfmMAIN.aTeacherExecute(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.ShowModal;
  fmTeacher.Release;
end;

procedure TfmMAIN.aSubjectExecute(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  fmSubject.ShowModal;
  fmSubject.Release;
end;

procedure TfmMAIN.aCurrDeptSpecExecute(Sender: TObject);
begin
  fmDepSpec := TfmDepSpec.Create(Self);
  fmDepSpec.ShowModal;
  fmDepSpec.Release;
end;

procedure TfmMAIN.aCurriculumExecute(Sender: TObject);
begin
  fmCurriculum := TfmCurriculum.Create(Self);
  fmCurriculum.ShowModal;
  fmCurriculum.Release;
end;

procedure TfmMAIN.aConstExecute(Sender: TObject);
begin
  fmConst := TFmConst.Create(Self);
  fmConst.ShowModal;
  fmConst.Release;
  LoadHeader;
end;

procedure TfmMAIN.aTariffExecute(Sender: TObject);
begin
  fmTariff := TfmTariff.Create(Self);
  fmTariff.ShowModal;
  fmTariff.Release;
end;

procedure TfmMAIN.aPostExecute(Sender: TObject);
begin
  fmPost := TfmPost.Create(Self);
  fmPost.ShowModal;
  fmPost.Release;
end;

procedure TfmMAIN.aEducationExecute(Sender: TObject);
begin
  fmEducation := TfmEducation.Create(Self);
  fmEducation.ShowModal;
  fmEducation.Release;
end;

procedure TfmMAIN.aFilialExecute(Sender: TObject);
begin
  fmFilial := TfmFilial.Create(Self);
  fmFilial.ShowModal;
  fmFilial.Release;
  LoadHeader;
end;

procedure TfmMAIN.aCalcGroupExecute(Sender: TObject);
begin
  fmGroupExt := TfmGroupExt.Create(Self);
  fmGroupExt.ShowModal;
  fmGroupExt.Release;
end;

procedure TfmMAIN.aMainTabExecute(Sender: TObject);
begin
  fmTab := TfmTab.Create(Self);
  fmTab.ShowModal;
  fmTab.Release;
end;

procedure TfmMAIN.aReplaceTabExecute(Sender: TObject);
begin
  fmRepTab := TfmRepTab.Create(Self);
  fmRepTab.ShowModal;
  fmRepTab.Release;
end;

procedure TfmMAIN.aOnetimeClockTabExecute(Sender: TObject);
begin
  fmRepTabExt := TfmRepTabExt.Create(Self);
  fmRepTabExt.ShowModal;
  fmRepTabExt.Release;
end;

procedure TfmMAIN.aAbsenceTabExecute(Sender: TObject);
begin
  fmRepTabExt2 := TfmRepTabExt2.Create(Self);
  fmRepTabExt2.ShowModal;
  fmRepTabExt2.Release;
end;

procedure TfmMAIN.aFactCurriculumExecute(Sender: TObject);
begin
  fmRepCurriculum := TfmRepCurriculum.Create(Self);
  fmRepCurriculum.ShowModal;
  fmRepCurriculum.Release;
end;

procedure TfmMAIN.aTarifficationExecute(Sender: TObject);
begin
  fmTariffication := TfmTariffication.Create(Self);
  fmTariffication.ShowModal;
  fmTariffication.Release;
end;

procedure TfmMAIN.aLearnTimeGridExecute(Sender: TObject);
begin
  fmLearnTimeGrid := TfmLearnTimeGrid.Create(Self);
  fmLearnTimeGrid.ShowModal;
  fmLearnTimeGrid.Release; 
end;

procedure TfmMAIN.HelpContents1Execute(Sender: TObject);
begin
  WinHelp(fmMain.Handle, 'zawuch.hlp', HELP_CONTEXT, 0);
end;

procedure TfmMAIN.aHelpExecute(Sender: TObject);
begin
  WinHelp(fmMain.Handle, 'zawuch.hlp', HELP_CONTEXT, 0);
end;

procedure TfmMAIN.aExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMAIN.aCalcIndClockRepExecute(Sender: TObject);
begin
  fmCalcIndClockRep := TfmCalcIndClockRep.Create(Self);
  fmCalcIndClockRep.ShowModal;
  fmCalcIndClockRep.Release;
end;

procedure TfmMAIN.aClockCalculateExecute(Sender: TObject);
begin
  fmClockCalculate := TfmClockCalculate.Create(Self);
  fmClockCalculate.ShowModal;
  fmClockCalculate.Release;
end;

procedure TfmMAIN.aTeacherCatExecute(Sender: TObject);
begin
  fmTeacherCat := TfmTeacherCat.Create(Self);
  fmTeacherCat.ShowModal;
  fmTeacherCat.Release;
end;

procedure TfmMAIN.aQualificationsExecute(Sender: TObject);
begin
  fmQualifications := TfmQualifications.Create(Self);
  fmQualifications.ShowModal;
  fmQualifications.Release;
end;

end.
