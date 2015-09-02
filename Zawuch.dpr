program Zawuch;

uses
  Forms,
  UMain in 'UMain.pas' {fmMAIN},
  UDM in 'UDM.pas' {DM: TDataModule},
  USubject in 'USubject.pas' {fmSubject},
  UEdSubject in 'UEdSubject.pas' {fmEdSubject},
  UDepSpecCurr in 'UDepSpecCurr.pas' {fmDepSpec},
  UCurriculum in 'UCurriculum.pas' {fmCurriculum},
  UEdDep in 'UEdDep.pas' {fmEdDep},
  UEdSpec in 'UEdSpec.pas' {fmEdSpec},
  UConst in 'UConst.pas' {fmConst},
  UTarif in 'UTarif.pas' {fmTariff},
  UFilial in 'UFilial.pas' {fmFilial},
  UEdFilial in 'UEdFilial.pas' {fmEdFilial},
  UEdTarif in 'UEdTarif.pas' {fmEdTarif},
  UEdCurr in 'UEdCurr.pas' {fmEdCurr},
  UEdCurrRec in 'UEdCurrRec.pas' {fmEdCurrRec},
  UTeacher in 'UTeacher.pas' {fmTeacher},
  UPost in 'UPost.pas' {fmPost},
  UEducation in 'UEducation.pas' {fmEducation},
  UEdTeacher in 'UEdTeacher.pas' {fmEdTeacher},
  UEdTeacherAdding in 'UEdTeacherAdding.pas' {fmEdTeacherAdding},
  UStudent in 'UStudent.pas' {fmStudent},
  UEdStudent in 'UEdStudent.pas' {fmEdStudent},
  UEdStudentPlan in 'UEdStudentPlan.pas' {fmEdStudentPlan},
  UTeacherFilter in 'UTeacherFilter.pas' {fmTeacherFilter},
  URTReport in 'URTReport.pas',
  UfmStudentFilter in 'UfmStudentFilter.pas' {fmStudentFilter},
  UEdGrouping in 'UEdGrouping.pas' {fmEdGrouping},
  UGroupingSubj in 'UGroupingSubj.pas' {fmGroupingSubj},
  UTariffication in 'UTariffication.pas' {fmTariffication},
  UTarifficationOpt in 'UTarifficationOpt.pas' {fmTarifficationOpt},
  UTab in 'UTab.pas' {fmTab},
  UEdMainTab in 'UEdMainTab.pas' {fmEditMainTab},
  USetTeachers in 'USetTeachers.pas' {fmSetTeachers},
  UMTPrintSet in 'UMTPrintSet.pas' {fmMTPrintSet},
  USetStudentsData in 'USetStudentsData.pas' {fmSetStudentsData},
  URepCurriculum in 'URepCurriculum.pas' {fmRepCurriculum},
  URepTab in 'URepTab.pas' {fmRepTab},
  UEdRepTab in 'UEdRepTab.pas' {fmEdRepTab},
  UEdGroup in 'UEdGroup.pas' {fmEdGroup},
  UEdGroupSubj in 'UEdGroupSubj.pas' {fmEdGroupSubj},
  URepTabExt2 in 'URepTabExt2.pas' {fmRepTabExt2},
  UEdRepTabExt in 'UEdRepTabExt.pas' {fmEdRepTabExt},
  UGroupExt in 'UGroupExt.pas' {fmGroupExt},
  UGrCalcParamExt in 'UGrCalcParamExt.pas' {fmGrCalcParamExt},
  UCurrRepParam in 'UCurrRepParam.pas' {fmCurrRepParam},
  URepTabExtParam in 'URepTabExtParam.pas' {fmRepTabExtParam},
  UChangeTeacherSTP in 'UChangeTeacherSTP.pas' {fmChangeTeacherSTP},
  UEdTarifficationRec in 'UEdTarifficationRec.pas' {fmEdTarifficationRec},
  UCurrParam in 'UCurrParam.pas' {fmCurrParam},
  UTools in 'UTools.pas',
  UPrintParams in 'UPrintParams.pas' {frmPrintParams: TFrame},
  URepTabParam in 'URepTabParam.pas' {fmRepTabParam},
  UStRepFTParam in 'UStRepFTParam.pas' {fmStRepFTParam},
  UScriptRuner in 'UScriptRuner.pas' {fmScriptRuner},
  UDeptStTRepParam in 'UDeptStTRepParam.pas' {fmDeptStTRepParam},
  UGrouping in 'UGrouping.pas' {fmGrouping},
  UEdSign in 'UEdSign.pas' {fmEdSign},
  UReportParams in 'UReportParams.pas' {fmReportParams},
  ULeartTimeGrid in 'ULeartTimeGrid.pas' {fmLearnTimeGrid},
  UEdLTGSubj in 'UEdLTGSubj.pas' {fmEdLTGSubj},
  UEdLTG in 'UEdLTG.pas' {fmEdLTG},
  UChGrouping in 'UChGrouping.pas' {fmChGrouping},
  UEdLTGISubj in 'UEdLTGISubj.pas' {fmEdLTGISubj},
  URepTabExt in 'URepTabExt.pas' {fmRepTabExt},
  UDeptSpecTree in 'UDeptSpecTree.pas' {fmDeptSpecTree},
  uStudentFilter in 'uStudentFilter.pas',
  uDMImages in 'uDMImages.pas' {dmImages: TDataModule},
  uCalcIndClockRep in 'uCalcIndClockRep.pas' {fmCalcIndClockRep},
  uClockCalculate in 'uClockCalculate.pas' {fmClockCalculate},
  uCalcPackEdit in 'uCalcPackEdit.pas' {frmCalcPackEdit: TFrame},
  uCalcPackAdd in 'uCalcPackAdd.pas' {fmCalcPackAdd},
  UCalcIndividualAdd in 'UCalcIndividualAdd.pas' {fmCalcIndividualAdd},
  UCalcGroupAdd in 'UCalcGroupAdd.pas' {fmCalcGroupAdd},
  uEdISubject in 'uEdISubject.pas' {fmEdISubject},
  uRichEditor in 'uRichEditor.pas' {fmRichEditor},
  uClockCalculateClasses in 'uClockCalculateClasses.pas',
  uEdGSubject in 'uEdGSubject.pas' {fmEdGSubject},
  uRtfReports in 'uRtfReports.pas',
  uGroupingChoice in 'uGroupingChoice.pas' {fmGroupingChoice},
  uDepChoice in 'uDepChoice.pas' {fmDepChoice},
  uTeacherCat in 'uTeacherCat.pas' {fmTeacherCat},
  uTeacherCatEdit in 'uTeacherCatEdit.pas' {fmTeacherCatEdit},
  uTeacherAddings in 'uTeacherAddings.pas' {fmTeacherAddings},
  uQualifications in 'uQualifications.pas' {fmQualifications},
  uCalendar in 'uCalendar.pas' {fmCalendar},
  uTeacherAbsentsEd in 'uTeacherAbsentsEd.pas' {fmTeacherAbsentsEd},
  UTeacherAbsentClear in 'absents\UTeacherAbsentClear.pas' {fmTeacherAbsentsClear};

{$R *.res}

begin
  Application.Initialize;
  try
    Application.CreateForm(TDM, DM);
  except
    Exit;
  end;
  Application.CreateForm(TfmMAIN, fmMAIN);
  Application.CreateForm(TdmImages, dmImages);
  {
  Application.CreateForm(TfmCalcPackAdd, fmCalcPackAdd);
  Application.CreateForm(TfmCalcIndividualAdd, fmCalcIndividualAdd);
  Application.CreateForm(TfmCalcGroupAdd, fmCalcGroupAdd);
  Application.CreateForm(TfmEdISubject, fmEdISubject);
  Application.CreateForm(TfmRichEditor, fmRichEditor);
  Application.CreateForm(TfmEdGSubject, fmEdGSubject);
  Application.CreateForm(TfmGroupingChoice, fmGroupingChoice);
  Application.CreateForm(TfmDepChoice, fmDepChoice);
  }
  Application.Run;
end.
