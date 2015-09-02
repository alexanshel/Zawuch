unit UDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBStoredProc, IBDatabase, IBTable,
  IBSQL, IBQuery, Variants, IniFiles, Dialogs, IBScript, Registry,
  Provider, DBClient, Forms;

type

  TCalcPack = class;
  TCalcIndividual = class;
  TCalcGroup = class;
  TTeacherTitle = class;
  TTeacherController = class;
  TConstController = class;
  TCalendarController = class;
  TDBWorker = class;

  TDM = class(TDataModule)
    ibDatabase: TIBDatabase;
    ibTransaction: TIBTransaction;
    ibReadTransaction: TIBTransaction;
    ibdsFilial: TIBDataSet;
    ibdsFilialID: TIntegerField;
    ibdsFilialCode: TIntegerField;
    ibdsFilialInfo: TIBStringField;
    ibdsTariff: TIBDataSet;
    ibdsSubject: TIBDataSet;
    ibdsSubjectID: TIntegerField;
    ibdsSubjectCode: TIntegerField;
    ibdsSubjectInfo: TIBStringField;
    ibdsTariffGrade: TIntegerField;
    ibdsTariffSalary: TFloatField;
    ibdsTariffInfo: TIBStringField;
    ibSQL: TIBSQL;
    ibdsTeacher: TIBDataSet;
    ibdsTeacherID: TIntegerField;
    ibdsTeacherName: TIBStringField;
    ibdsTeacherFilialID: TIntegerField;
    ibdsTeacherSubjectID: TIntegerField;
    ibdsTeacherEducationID: TIntegerField;
    ibdsTeacherStageDate: TDateField;
    ibdsTeacherBirthDate: TDateField;
    ibdsTeacherEnterDate: TDateField;
    ibdsTeacherReleaseDate: TDateField;
    ibdsTeacherDiploma: TIBStringField;
    ibdsTeacherAddress: TIBStringField;
    ibdsTeacherTelephone: TIBStringField;
    ibdsTeacherSubject: TStringField;
    ibdsEducation: TIBDataSet;
    ibdsEducationID: TIntegerField;
    ibdsTeacherEducation: TStringField;
    ibdsTeacherPostID: TIntegerField;
    ibdsPost: TIBDataSet;
    ibdsPostID: TIntegerField;
    ibdsTeacherPost: TStringField;
    ibdsTeacherFilial: TStringField;
    ibdsTeacherisWorking: TBooleanField;
    ibqProc: TIBQuery;
    ibdsStudent: TIBDataSet;
    ibdsStudentStage: TStringField;
    ibdsStudentFinancing: TStringField;
    ibdsStudentPlan: TIBDataSet;
    ibdsConst: TIBDataSet;
    ibdsConstYTCOEF: TFloatField;
    ibdsConstOTCOEF: TFloatField;
    ibdsConstCTCOEF: TFloatField;
    ibdsStudentPlanUseBool: TBooleanField;
    ibdsTeacherTM: TIBDataSet;
    ibdsTeacherTMOUTYTIME: TFloatField;
    ibdsTeacherTMOUTOTIME: TFloatField;
    ibdsTeacherTMOUTCTIME: TFloatField;
    ibdsTeacherTMOUTYPAY: TFloatField;
    ibdsTeacherTMOUTOPAY: TFloatField;
    ibdsTeacherTMOUTCPAY: TFloatField;
    ibdsTeacherTMOUTYTIME1: TFloatField;
    ibdsTeacherTMOUTOTIME1: TFloatField;
    ibdsTeacherTMOUTCTIME1: TFloatField;
    ibdsTeacherTMOUTYPAY1: TFloatField;
    ibdsTeacherTMOUTOPAY1: TFloatField;
    ibdsTeacherTMOUTCPAY1: TFloatField;
    ibdsTeacherTMOUTSUMTIME: TFloatField;
    ibdsTeacherTMOUTSUMPAY: TFloatField;
    ibdsTeacherTMOUTSUMTIME1: TFloatField;
    ibdsTeacherTMOUTSUMPAY1: TFloatField;
    ibdsTeacherTMSUMTIME: TFloatField;
    ibdsTeacherTMSUMPAY: TFloatField;
    ibdsTeacherTMOUTADDSUM: TFloatField;
    ibdsTeacherTMTOTALSUM: TFloatField;
    ibdsTeacherStage: TStringField;
    ibdsTeacherSTAGE_Y: TSmallintField;
    ibdsTeacherSTAGE_M: TSmallintField;
    ibdsTeacherSTAGE_D: TSmallintField;
    ibdsConstSYSTEM_DATE: TDateField;
    ibdsConstVTEACH: TFloatField;
    ibdsConstVCONC: TFloatField;
    ibdsTeacherCurrStageM: TIntegerField;
    ibdsTeacherCurrStageY: TFloatField;
    ibdsTeacherCurrStage: TStringField;
    ibdsTeacherTMName: TStringField;
    ibdsStudentAge: TIntegerField;
    ibdsStudentState: TIntegerField;
    ibdsConstPASPORT_CODE: TIBStringField;
    ibdsConstPASPORT_NAME: TIBStringField;
    ibdsConstPASPORT_DIRECTOR_SIGN: TIBStringField;
    ibdsConstPASPORT_TARIFFICATION_SIGN: TIBStringField;
    ibdsSubjectName: TIBStringField;
    ibdsFilialName: TIBStringField;
    ibdsEducationName: TIBStringField;
    ibdsPostName: TIBStringField;
    ibdsGrouping: TIBDataSet;
    ibdsGroupingDept: TIBDataSet;
    ibdsGroupingID: TIntegerField;
    ibdsGroupingNAME: TIBStringField;
    ibdsGroupingDeptGROUPING_ID: TIntegerField;
    ibdsDeptNotGrouping: TIBDataSet;
    ibdsGroupingFINANCING_ID: TIntegerField;
    ibdsGroupingFinancing: TBooleanField;
    ibdsGroupingSubjCurrs: TIBDataSet;
    ibdsGroupingSubjCurrsGROUPING_ID: TIntegerField;
    ibdsTariffication: TIBDataSet;
    ibdsTarifficationRec: TIBDataSet;
    ibdsTarifficationINFO: TIBStringField;
    ibdsTarifficationCOEF_Y_TIME: TFloatField;
    ibdsTarifficationCOEF_O_TIME: TFloatField;
    ibdsTarifficationCOEF_C_TIME: TFloatField;
    ibdsTarifficationRecTEACHER_ID: TIntegerField;
    ibdsTarifficationRecT_NAME: TIBStringField;
    ibdsTarifficationRecT_SUBJ: TIBStringField;
    ibdsTarifficationRecT_POST: TIBStringField;
    ibdsTarifficationRecT_EDUCATION: TIBStringField;
    ibdsTarifficationRecT_STAGE_D: TSmallintField;
    ibdsTarifficationRecT_STAGE_M: TSmallintField;
    ibdsTarifficationRecT_STAGE_Y: TSmallintField;
    ibdsTarifficationRecT_MAIN_GRADE: TSmallintField;
    ibdsTarifficationRecT_CONCERT_GRADE: TSmallintField;
    ibdsTarifficationRecT_MAIN_SALARY: TFloatField;
    ibdsTarifficationRecT_CONCERT_SALARY: TFloatField;
    ibdsTarifficationRecT_B_TIME_Y: TFloatField;
    ibdsTarifficationRecT_B_TIME_O: TFloatField;
    ibdsTarifficationRecT_B_TIME_C: TFloatField;
    ibdsTarifficationRecT_S_TIME_Y: TFloatField;
    ibdsTarifficationRecT_S_TIME_O: TFloatField;
    ibdsTarifficationRecT_S_TIME_C: TFloatField;
    ibdsTarifficationRecT_ADDINGS: TFloatField;
    ibdsTarifficationDOC_DATE: TDateTimeField;
    ibdsTarifficationRecDOC_DATE: TDateTimeField;
    ibdsTarifficationRecStage: TStringField;
    ibdsTarifficationRecT_DIPLOMA: TIBStringField;
    ibdsTarifficationSYS_DATE: TDateField;
    ibdsTarifficationRecT_ENTER_DATE: TDateField;
    ibdsTarifficationRecSumB: TCurrencyField;
    ibdsTarifficationRecSumS: TCurrencyField;
    ibdsTarifficationRecBMoneyY: TCurrencyField;
    ibdsTarifficationRecBMoneyO: TCurrencyField;
    ibdsTarifficationRecBMoneyC: TCurrencyField;
    ibdsTarifficationRecSMoneyY: TCurrencyField;
    ibdsTarifficationRecSMoneyO: TCurrencyField;
    ibdsTarifficationRecSMoneyC: TCurrencyField;
    ibdsTarifficationRecSUM: TCurrencyField;
    ibdsTarifficationRecCurrStageY: TIntegerField;
    ibdsTarifficationRecCurrStageM: TIntegerField;
    ibdsTarifficationRecCurrStageD: TIntegerField;
    ibdsMainTab: TIBDataSet;
    ibdsMainTabTEACHER_NAME: TIBStringField;
    ibdsMainTabB_Y_TIME: TFloatField;
    ibdsMainTabB_O_TIME: TFloatField;
    ibdsMainTabB_C_TIME: TFloatField;
    ibdsMainTabSIGN: TIntegerField;
    ibdsMainTabTEACHER_ID: TIntegerField;
    ibdsTeacherTAB_NUM: TIntegerField;
    ibdsStudentCategoryStr: TStringField;
    ibdsDeptNotGroupingID: TIntegerField;
    ibdsDeptNotGroupingName: TIBStringField;
    ibdsStudentPAY_SUM: TFloatField;
    ibdsStudentFILIAL: TIBStringField;
    ibdsStudentID: TIntegerField;
    ibdsStudentCODE: TIntegerField;
    ibdsStudentNAME: TIBStringField;
    ibdsStudentFILIALID: TIntegerField;
    ibdsStudentFINANCINGID: TSmallintField;
    ibdsStudentCLASS: TSmallintField;
    ibdsStudentCURATORID: TIntegerField;
    ibdsStudentCURATOR: TIBStringField;
    ibdsStudentPERCENT: TSmallintField;
    ibdsStudentENTERDATE: TDateField;
    ibdsStudentBIRTHDATE: TDateField;
    ibdsStudentRELEASEDATE: TDateField;
    ibdsStudentRESTOREDATE: TDateField;
    ibdsStudentACADEMYBDATE: TDateField;
    ibdsStudentACADEMYEDATE: TDateField;
    ibdsStudentADDRESS: TIBStringField;
    ibdsStudentTELEPHONE: TIBStringField;
    ibdsStudentDEPARTMENTID: TIntegerField;
    ibdsStudentENTERINFO: TIBStringField;
    ibdsStudentRELEASEINFO: TIBStringField;
    ibdsStudentRESTOREINFO: TIBStringField;
    ibdsStudentACADEMYBINFO: TIBStringField;
    ibdsStudentACADEMYEINFO: TIBStringField;
    ibdsStudentSPECIALIZATION: TIBStringField;
    ibdsStudentDEPARTMENT: TIBStringField;
    ibdsStudentCURRICULUMID: TIntegerField;
    ibdsStudentSPECIALIZATIONID: TIntegerField;
    ibdsStudentPERIOD: TIntegerField;
    ibdsMainTabTAB_NUM: TIntegerField;
    ibdsRepTab: TIBDataSet;
    ibdsRepTabTEACHER_ID: TIntegerField;
    ibdsRepTabTAB_NUM: TIntegerField;
    ibdsRepTabTEACHER_NAME: TIBStringField;
    ibdsRepTabDAYS_QTY: TIntegerField;
    ibdsRepTabB_Y_TIME: TFloatField;
    ibdsRepTabB_O_TIME: TFloatField;
    ibdsRepTabB_C_TIME: TFloatField;
    ibdsRepTabS_Y_TIME: TFloatField;
    ibdsRepTabS_O_TIME: TFloatField;
    ibdsRepTabS_C_TIME: TFloatField;
    ibdsRepTabBEGIN_Y_TIME: TFloatField;
    ibdsRepTabBEGIN_C_TIME: TFloatField;
    ibdsRepTabT_DATE: TDateField;
    ibdsRepTabSIGN: TIntegerField;
    ibdsRepTabID: TIntegerField;
    ibdsStudentPlanSTUDENT_ID: TIntegerField;
    ibdsStudentPlanID: TIntegerField;
    ibdsStudentPlanUSE: TSmallintField;
    ibdsStudentPlanSUBJ_ID: TIntegerField;
    ibdsStudentPlanSUBJ_NAME: TIBStringField;
    ibdsStudentPlanSUBJ_CODE: TIntegerField;
    ibdsStudentPlanTEACHER_ID: TIntegerField;
    ibdsStudentPlanTEACHER_NAME: TIBStringField;
    ibdsStudentPlanCLASS_TIME: TFloatField;
    ibdsStudentPlanGR_QTY: TSmallintField;
    ibdsStudentPlanCURR_ID: TIntegerField;
    ibdsTarifficationRecT_STAGE_DATE: TDateField;
    ibdsRepTabExt: TIBDataSet;
    ibdsStudentPlanNUM: TIntegerField;
    ibdsGroupingCurr: TIBDataSet;
    ibdsGroupingCurrGROUPING_ID: TIntegerField;
    ibdsGroupingCurrCURR_ID: TIntegerField;
    ibdsGroupingCurrCURR_NAME: TIBStringField;
    ibdsGroupCurrSubj: TIBDataSet;
    ibdsGroupCurrSubjCURR_ID: TIntegerField;
    ibdsGroupCurrSubjCURR_REC_ID: TIntegerField;
    ibdsGroupCurrSubjSUBJECT_ID: TIntegerField;
    ibdsGroupCurrSubjSUBJECT_NAME: TIBStringField;
    ibdsGroupCurrSubjGR_QTY: TSmallintField;
    ibdsGroupingSubjs: TIBDataSet;
    ibdsGroupingSubj: TIBDataSet;
    ibdsGroupCurrSubjSUBJECT_CODE: TIntegerField;
    ibdsGroupingSubjCurrsCURR_ID: TIntegerField;
    ibdsGroupingSubjCurrsCURR_REC_ID: TIntegerField;
    ibdsGroupingSubjsGROUPING_ID: TIntegerField;
    ibdsGroupingSubjsGROUPING_SUBJ_ID: TIntegerField;
    ibdsGroupingSubjsCURR_ID: TIntegerField;
    ibdsGroupingSubjsCURR_NAME: TIBStringField;
    ibdsGroupingSubjsCURR_REC_ID: TIntegerField;
    ibdsGroupingSubjsSUBJECT_ID: TIntegerField;
    ibdsGroupingSubjsSUBJECT_NAME: TIBStringField;
    ibdsGroupingSubjsSUBJECT_CODE: TIntegerField;
    ibdsGroupingSubjsSUBJECT_GR_QTY: TSmallintField;
    ibdsTeacherGroupClss: TIBDataSet;
    ibdsGroupingDeptDEPT_ID: TIntegerField;
    ibdsGroupingDeptDEPT_NAME: TIBStringField;
    ibdsGroupingDeptDEPT_INFO: TIBStringField;
    ibdsGroupingDeptDepartment: TStringField;
    ibdsGroupingSubjClss: TIBDataSet;
    ibdsGroupingSubjClssGROUPING_ID: TIntegerField;
    ibdsGroupingSubjClssGR_SUBJ_ID: TIntegerField;
    ibdsGroupingSubjClssGR_SUBJ_NAME: TIBStringField;
    ibdsGroupingSubjClssGR_SUBJ_CODE: TIntegerField;
    ibdsGroupingSubjClssGR_QTY: TIntegerField;
    ibdsGroupingSubjClssG_QTY_0: TIntegerField;
    ibdsGroupingSubjClssG_QTY_1: TIntegerField;
    ibdsGroupingSubjClssG_QTY_2: TIntegerField;
    ibdsGroupingSubjClssG_QTY_3: TIntegerField;
    ibdsGroupingSubjClssG_QTY_4: TIntegerField;
    ibdsGroupingSubjClssG_QTY_5: TIntegerField;
    ibdsGroupingSubjClssG_QTY_6: TIntegerField;
    ibdsGroupingSubjClssG_QTY_7: TIntegerField;
    ibdsGroupingSubjClssG_QTY_8: TIntegerField;
    ibdsGroupingSubjClssS_QTY_0: TIntegerField;
    ibdsGroupingSubjClssS_QTY_1: TIntegerField;
    ibdsGroupingSubjClssS_QTY_2: TIntegerField;
    ibdsGroupingSubjClssS_QTY_3: TIntegerField;
    ibdsGroupingSubjClssS_QTY_4: TIntegerField;
    ibdsGroupingSubjClssS_QTY_5: TIntegerField;
    ibdsGroupingSubjClssS_QTY_6: TIntegerField;
    ibdsGroupingSubjClssS_QTY_7: TIntegerField;
    ibdsGroupingSubjClssS_QTY_8: TIntegerField;
    ibdsReportParam: TIBDataSet;
    ibdsReportParamID: TIntegerField;
    ibdsReportParamNAME: TIBStringField;
    ibdsReportParamPAGE_ORIENT: TSmallintField;
    ibdsReportParamM_LEFT: TIntegerField;
    ibdsReportParamM_RIGHT: TIntegerField;
    ibdsReportParamM_TOP: TIntegerField;
    ibdsReportParamM_BOTTOM: TIntegerField;
    ibdsReportParamSIZES_1: TIBStringField;
    ibdsReportParamSIZES_2: TIBStringField;
    ibdsReportParamSIZES_3: TIBStringField;
    ibdsStudentRELEASED: TSmallintField;
    ibdsStudentACADEMY: TSmallintField;
    ibdsTeacherFilter: TIBDataSet;
    ibdsStudentCATEGORY: TIntegerField;
    ibdsTeacherGroupClssGrSum: TIntegerField;
    ibds: TIBDataSet;
    ibdsTeacherGroupClssGROUPING_ID: TIntegerField;
    ibdsTeacherGroupClssGROUPING_NAME: TIBStringField;
    ibdsTeacherGroupClssTEACHER_ID: TIntegerField;
    ibdsTeacherGroupClssTEACHER: TIBStringField;
    ibdsTeacherGroupClssGR_QTY_0: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_1: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_2: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_3: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_4: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_5: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_6: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_7: TIntegerField;
    ibdsTeacherGroupClssGR_QTY_8: TIntegerField;
    ibdsTeacherGroupClssTeacherShortName: TStringField;
    ibdsGroupingSubjClssTEACHER_ID: TIntegerField;
    ibdsTeacherGroupSubj: TIBDataSet;
    ibdsTeacherGroupSubjID: TIntegerField;
    ibdsTeacherGroupSubjNAME: TIBStringField;
    ibdsTeacherGroupSubjCODE: TSmallintField;
    ibdsTeacherGroupSubjGROUPING_ID: TIntegerField;
    ibdsTeacherGroupSubjGROUP_QTY: TIntegerField;
    ibdsConstPASPORT_TAB_SIGN: TIBStringField;
    ibdsSubj: TIBDataSet;
    ibdsSubjID: TIntegerField;
    ibdsSubjSUBJ_ID: TIntegerField;
    ibdsSubjName: TIBStringField;
    ibdsT: TIBDataSet;
    ibdsTREPORT_NAME: TIBStringField;
    ibdsTPARAMS: TMemoField;
    ibdsGroupingSubjGROUPING_ID: TIntegerField;
    ibdsGroupingSubjGR_SUBJ_ID: TIntegerField;
    ibdsGroupingSubjGR_SUBJ_NAME: TIBStringField;
    ibdsGroupingSubjGR_QTY: TIntegerField;
    ibdsGroupingSubjGR_SUBJ_CODE: TSmallintField;
    ibdsGroupingSubjPOS: TIntegerField;
    ibdsRepTabExt2: TIBDataSet;
    ibds2: TIBDataSet;
    ibdsStudentFilter: TIBDataSet;
    ibdsStudentFilterSpec: TIBDataSet;
    ibdsStudentFilterSpecID_FILTER: TIntegerField;
    ibdsStudentFilterSpecID_SPECIALIZATION: TIntegerField;
    ibdsStudentFilterSpecSPEC_NAME: TIBStringField;
    dsStudentFilter: TDataSource;
    ibdsRepTabExtREC_TIME: TDateTimeField;
    ibdsRepTabExtTEACHER_NAME: TIBStringField;
    ibdsRepTabExtTAB_MONTH: TDateField;
    ibdsRepTabExtY_T: TFloatField;
    ibdsRepTabExtO_T: TFloatField;
    ibdsRepTabExtC_T: TFloatField;
    ibdsRepTabExtY_T_OOD: TFloatField;
    ibdsRepTabExtO_T_OOD: TFloatField;
    ibdsRepTabExtC_T_OOD: TFloatField;
    ibdsRepTabExtY_T_FILIAL: TFloatField;
    ibdsRepTabExtO_T_FILIAL: TFloatField;
    ibdsRepTabExtC_T_FILIAL: TFloatField;
    ibdsRepTabExt2REC_TIME: TDateTimeField;
    ibdsRepTabExt2TEACHER_NAME: TIBStringField;
    ibdsRepTabExt2TAB_MONTH: TDateField;
    ibdsRepTabExt2Y_T: TFloatField;
    ibdsRepTabExt2O_T: TFloatField;
    ibdsRepTabExt2C_T: TFloatField;
    ibdsRepTabExt2Y_T_OOD: TFloatField;
    ibdsRepTabExt2O_T_OOD: TFloatField;
    ibdsRepTabExt2C_T_OOD: TFloatField;
    ibdsRepTabExt2Y_T_FILIAL: TFloatField;
    ibdsRepTabExt2O_T_FILIAL: TFloatField;
    ibdsRepTabExt2C_T_FILIAL: TFloatField;
    ibdsTarifficationRecT_MAIN_GRADE_ADD: TSmallintField;
    ibdsTarifficationRecT_CONCERT_GRADE_ADD: TSmallintField;
    ibdsTarifficationRecT_MAIN_SALARY_ADD: TFloatField;
    ibdsTarifficationRecT_CONCERT_SALARY_ADD: TFloatField;
    ibdsTeacherID_TITLE: TIntegerField;
    ibdsTeacherID_CATEGORY: TIntegerField;
    ibdsStudentSEX_ID: TIntegerField;
    ibdsStudentSEX_NAME: TIBStringField;
    ibdsStudentFilterID: TIntegerField;
    ibdsStudentFilterNAME: TIBStringField;
    ibdsStudentFilterFILIAL_ID: TIntegerField;
    ibdsStudentFilterFILIAL_NAME: TIBStringField;
    ibdsStudentFilterCLASS_B: TIntegerField;
    ibdsStudentFilterCLASS_E: TIntegerField;
    ibdsStudentFilterCURATOR_ID: TIntegerField;
    ibdsStudentFilterCURATOR_NAME: TIBStringField;
    ibdsStudentFilterCATEGORY: TIntegerField;
    ibdsStudentFilterPERIOD: TIntegerField;
    ibdsStudentFilterSTATUS: TIntegerField;
    ibdsStudentFilterPAY_PERCENT: TIntegerField;
    ibdsStudentFilterAGE_B: TIntegerField;
    ibdsStudentFilterAGE_E: TIntegerField;
    ibdsStudentFilterENTER_D_B: TDateField;
    ibdsStudentFilterENTER_D_E: TDateField;
    ibdsStudentFilterRELEASE_D_B: TDateField;
    ibdsStudentFilterRELEASE_D_E: TDateField;
    ibdsStudentFilterRESTORE_D_B: TDateField;
    ibdsStudentFilterRESTORE_D_E: TDateField;
    ibdsStudentFilterACADEMY_D_B: TDateField;
    ibdsStudentFilterACADEMY_D_E: TDateField;
    ibdsStudentFilterSUBJECT_ID_1: TIntegerField;
    ibdsStudentFilterSUBJECT_NAME_1: TIBStringField;
    ibdsStudentFilterTEACHER_ID_1: TIntegerField;
    ibdsStudentFilterTEACHER_NAME_1: TIBStringField;
    ibdsStudentFilterSUBJECT_ID_2: TIntegerField;
    ibdsStudentFilterSUBJECT_NAME_2: TIBStringField;
    ibdsStudentFilterTEACHER_ID_2: TIntegerField;
    ibdsStudentFilterTEACHER_NAME_2: TIBStringField;
    ibdsStudentFilterSUBJ_STATE: TIntegerField;
    ibdsStudentFilterFINANCING_ID: TIntegerField;
    ibdsStudentFilterID_SEX: TIntegerField;
    ibdsTeacherID_CATEGORY_CONC: TIntegerField;
    ibdsTeacherCATEGORY_T: TIBStringField;
    ibdsTeacherCATEGORY_C: TIBStringField;
    ibdsTeacherCATEGORY_T_DATE: TDateField;
    ibdsTeacherCATEGORY_C_DATE: TDateField;
    ibdsTeacherTITLE_NAME: TIBStringField;
    ibdsTeacherFilterID: TIntegerField;
    ibdsTeacherFilterNAME: TIBStringField;
    ibdsTeacherFilterMAIN_SUBJ_ID: TIntegerField;
    ibdsTeacherFilterMAIN_SUBJ_NAME: TIBStringField;
    ibdsTeacherFilterMAIN_GRADE: TIntegerField;
    ibdsTeacherFilterCONC_GRADE: TIntegerField;
    ibdsTeacherFilterFILIAL_ID: TIntegerField;
    ibdsTeacherFilterFILIAL_NAME: TIBStringField;
    ibdsTeacherFilterSTATE: TIntegerField;
    ibdsTeacherFilterSTAGE_B: TIntegerField;
    ibdsTeacherFilterSTAGE_E: TIntegerField;
    ibdsTeacherFilterBIRTH_D_B: TDateField;
    ibdsTeacherFilterBIRTH_D_E: TDateField;
    ibdsTeacherFilterENTER_D_B: TDateField;
    ibdsTeacherFilterENTER_D_E: TDateField;
    ibdsTeacherFilterRELEASE_D_B: TDateField;
    ibdsTeacherFilterRELEASE_D_E: TDateField;
    ibdsTeacherFilterSTAGE_B_M: TIntegerField;
    ibdsTeacherFilterSTAGE_E_M: TIntegerField;
    ibdsSubjectSHORT_NAME: TIBStringField;
    ibdsTeacherAddings: TIBDataSet;
    ibdsTeacherAddingsID: TIntegerField;
    ibdsTeacherAddingsTeacherID: TIntegerField;
    ibdsTeacherAddingsName: TIBStringField;
    ibdsTeacherAddingsPercent: TFloatField;
    ibdsTeacherAddingsSum: TFloatField;
    ibdsTeacherQUALIFICATION_ID: TIntegerField;
    ibdsTeacherEDUCATION_2_ID: TIntegerField;
    ibdsTeacherQUALIFICATION_2_ID: TIntegerField;
    ibdsTeacherDIPLOMA_2: TIBStringField;
    ibdsTeacherQUALIFICATION_NAME: TIBStringField;
    ibdsTeacherQUALIFICATION_2_NAME: TIBStringField;
    ibdsMainTabCOMMENTS: TIBStringField;
    ibdsMainTabSWP_Y_TIME: TFloatField;
    ibdsMainTabSWP_O_TIME: TFloatField;
    ibdsMainTabSWP_C_TIME: TFloatField;
    ibdsMainTabPRECENCE_QTY: TLargeintField;
    ibdsTeacherFilterAGE_B: TIntegerField;
    ibdsTeacherFilterAGE_E: TIntegerField;
    ibdsStudentPERIOD_FOR_PRINT: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ibdsTeacherCalcFields(DataSet: TDataSet);
    procedure ibdsStudentCalcFields(DataSet: TDataSet);
    procedure ibdsStudentPlanCalcFields(DataSet: TDataSet);
    procedure ibdsTeacherTMCalcFields(DataSet: TDataSet);
    procedure ibdsGroupingCalcFields(DataSet: TDataSet);
    procedure ibdsTeacherGroupSubjCalcFields(DataSet: TDataSet);
    procedure ibdsTarifficationRecCalcFields(DataSet: TDataSet);
    procedure ibdsGroupingDeptCalcFields(DataSet: TDataSet);
    procedure ibdsTeacherGroupClssCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    procedure TableBookmarkIU(TableName, BookMark: string);
    { Private declarations }
  public
    { Public declarations }
    function AddSubject(ID: Integer; Code: Integer; Name: String; Info: String; ShortName: String): Integer;

    function AddFilial(ID: Integer; Code: Integer; Name: String; Info: String): Integer;
    function AddTariff(Grade: Integer; Salary: Currency; Info: String): Integer;

    function getQualificationID(name: String): Variant;
    function AddTeacher(ID, TabNum: Integer; Name: String; FilialID, SubjectID,
      EducationID, PostID: Integer; StageY, StageM, StageD: byte;
      StageDate, BirthDate, EnterDate, ReleaseDate: Variant;
      GradeID, ConcertID: Integer; Diploma, Address, Telephone: String; IDGradeAdd,
      IDGradeConcertAdd, IDTitle, IDCategory, IDCategoryConc,
      CategoryDate, CategoryConcDate, Qualification, Education2ID, Qualification2, Diploma2: Variant): Integer;
    function AddPost(ID: Integer; Name: String): Integer;
    function AddEducation(ID: Integer; Name: String): Integer;
    function AddTeacherAdding(ID, TeacherID: Integer; Name: String; Percent: word; Sum: double): Integer;
    function AddStudent(ID, Code: Integer; Name: String;
      SpecID, FilialID, FinancingID, MasterID, Cls, Percent: Integer; BirthDate, EnterDate, ReleaseDate, RestoreDate: Variant;
      EnterInfo, ReleaseInfo, RestoreInfo: String; AcademyBDate, AcademyEDate: Variant; AcademyBInfo, AcademyEInfo: String;
      Address, Telephone: String; IDSex: Variant): Integer;
    function AddStudentPlan(ID, StudentID, Use: Integer; TeacherID: Variant): Integer;
    function AddGrouping(ID: Integer; Name: String; FinancingID: Integer): Integer;
    procedure AddGroupingDept(GrID, DeptID: Integer);
    function AddGroupingSubj(GroupingID: Integer; SubjID: Variant; SubjName: String; Code, GrQty: Integer; Pos: Variant): Integer;
    procedure AddGroupingSubjCurr(GroupingID, GrSubjID, CurrID, CurrRecID: Integer);
    function AddRepTabExt(RecTime: Variant; TeacherName: String;
      TabMonth: TDateTime; y_t, o_t, c_t, y_t_ood, o_t_ood, c_t_ood,
      y_t_filial, o_t_filial, c_t_filial: Double): TDateTime;
    function AddRepTabExt2(RecTime: Variant; TeacherName: String;
      TabMonth: TDateTime; y_t, o_t, c_t, y_t_ood, o_t_ood, c_t_ood,
      y_t_filial, o_t_filial, c_t_filial: Double): TDateTime;
    function AddStudentFilter(
      ID: Variant; Name: String;
      FilialID,
      ClassB, ClassE, CuratorID, Category, Period, Status,
      PayPercent, AgeB, AgeE, EnterDB, EnterDE,
      ReleaseDB, ReleaseDE, RestoreDB, RestoreDE,
      AcademyDB, AcademyDE, SubjectID1, TeacherID1,
      SubjectID2, TeacherID2, SubjState, FinancingID, IDSex: Variant): Integer;
    function AddTeacherFilter(
      ID: Variant; Name: String;
      MainSubjID, MainGrade, ConcGrade, PostID, EducationID, FilialID,
      State, StageB, StageE, BirthDB, BirthDE, EnterDB, EnterDE,
      ReleaseDB, ReleaseDE, StageBM, StageEM, CatIDPed, CatIDConc, TitleID,
      AgeB, AgeE: Variant
    ): Integer;




    procedure SaveReportParam(ID: Integer; Sizes: String);
    function AddReportParam(ID, Name, PageOrient, MLeft, MRight, MTop, MBottom,
      Sizes1, Sizes2, Sizes3, Qty1, Qty2, Qty3: Variant): Integer;
    function NewTariffication(Info: String): TDateTime;
    procedure DelTariffication(DocDate: TDateTime);
    procedure DelGroupingDept(GrID, DeptID: Integer);
    procedure DelGrouping(ID: Integer);
    procedure DelStudent(ID: Integer);
    procedure DelStudentPlan(ID: Integer; StudentID: Integer);
    procedure DelTeacherAdding(ID: Integer);
    procedure DelEducation(ID: Integer);
    procedure DelPost(ID: Integer);
    procedure DelTeacher(ID: Integer);
    procedure DelTariff(ID: Integer);
    procedure DelSubject(ID: Integer);
    procedure DelFilial(ID: Integer);

    procedure DelRepTabExt(RecTime: TDateTime);
    procedure DelRepTabExt2(RecTime: TDateTime);
    procedure DelGroupingSubj(GroupingID, GroupingSubjID: Integer);
    procedure DelGroupingSubjCurr(GroupingID, GroupingSubjID: Integer);
    procedure ChangeConstants(
      YTCoef, OTCoef, CTCoef: Double; Code, Name, DirectorSign, TarifficationSign, TabSign: String
    );
    procedure ChangeSysDate(SDate: TDateTime);
    procedure AddTeacherGroup(
      GroupingID, TeacherID, GrSubjID, ClassNum, Gr: integer);
    procedure AutoCalcTeacherGroup(GroupingID, ClassNum, GrSubjectID, ReplType: Variant); overload;
    procedure AutoCalcTeacherGroup(GroupingID, TeacherID, ReplType: Variant); overload;
    procedure ExtractAllGroup(GroupingID: integer);
    procedure ExtractSubjects(GroupingID: Integer);
    procedure Forming_Main_Tab(DaysQty: Integer);
    procedure EditMainTab(ID: Integer;
      b_y_t, b_o_t, b_c_t: double;
      comments, swp_y_time, swp_o_time, swp_c_time: variant);
    procedure AddSTFilterSpec(IDFilter, IDSpec: Integer);
    procedure ClearStudentFilterSpec(IDFilter: Integer);
    procedure TableBookmarkRefresh(TableName: string; BookMark: string);
    procedure TableBookmarkDelete(TableName: string);
    function TableBookmarkGet(TableName: string): Variant;
    procedure ChangePosition(
      pTableName: variant;
      pOrderBy:   variant;
      pID:        integer;
      pSteep:     integer
    );
    function AddTeacherCatKind(
      pID: variant;
      pName: string;
      pPrint: string;
      pCoef: Double
    ): Integer;
    procedure DeleteRow(
      pTableName:   string;
      pIDFieldName: string;
      pID:          integer
    );
    function GetSysdate: TDateTime;

    procedure OpenDB;
    procedure CloseDB;

  private
    FCalcPack: TCalcPack;
    FCalcIndividual: TCalcIndividual;
    FCalcGroup: TCalcGroup;
    FTeacherTitle: TTeacherTitle;
    FTeacherController: TTeacherController;
    FConstController: TConstController;
    FCalendarController: TCalendarController;
    FDBWorker: TDBWorker;
  public
    property CalcPack: TCalcPack read FCalcPack;
    property CalcIndividual: TCalcIndividual read FCalcIndividual;
    property CalcGroup: TCalcGroup read FCalcGroup;
    //property TeacherTitle: TTeacherTitle read FTeacherTitle;
    property TeacherController: TTeacherController read FTeacherController;
    property ConstController: TConstController read FConstController;
    property CalendarController: TCalendarController read FCalendarController;
    property DBWorker: TDBWorker read FDBWorker;
    property SysDate: TDateTime read GetSysdate;
  end;

  TQueriedClass = class
  private
    FQuery: TIBQuery;
  public
    constructor Create(Transaction: TIBTransaction);
    destructor Destroy;
    property Query: TIBQuery read FQuery;
  end;

  //пакет расчёта
  TCalcPack = class(TQueriedClass)
  public
    function Add(Name: String): Integer;
    procedure Delete(ID: Integer);
    procedure NameChange(ID: Integer; Name: String);
    function GetName(ID: Integer): string;
  end;

  //пакет расчёта индивидуальных часов
  TCalcIndividual = class(TQueriedClass)
  public
    function Add(ID_Calc_Pack: Integer; Name, Header, Footer: string; ShowPosition: Integer): Integer;
    procedure Delete(ID_Calc_Pack: Integer; ID: Integer);
    procedure NameChange(ID_Calc_Pack: Integer; ID: Integer; Name: string);
    procedure HeaderChange(ID_Calc_Pack: Integer; ID: Integer; Header: string);
    procedure FooterChange(ID_Calc_Pack: Integer; ID: Integer; Footer: string);
    function GetName(ID_Calc_Pack: Integer; ID: Integer): string;
    function GetList(ID_Calc_Pack: Integer): TStrings;
    function AddSubject(ID_Calc_Pack, ID_Calc_Individual: Integer; Name_Subject: String; ID_Department: Integer; ID_Curr_Rec: Integer; Is_Concertmaster: boolean): Integer;
    procedure SubjectDelete(ID_Calc_Pack, ID_Calc_Individual, ID: Integer);
    procedure ChangeSubjectFactStudentQty(ClassNumber, IDCalcIndividualSubject, IDCalcIndividual, IDCalcPack, QtyFact: Integer);
    procedure ChangeFactStudentQty(ClassNumber, IDCalcIndividual, IDCalcPack, QtyFact: Integer);
    procedure ReCalculate(IDCalcIndividual, IDCalcPack: Integer);
    procedure FillFromDepartment(IDCalcIndividual, IDCalcPack, IDDepartment: Integer);
    //function
  end;

  //пакет расчёта групповых часов
  TCalcGroup = class(TQueriedClass)
  public
    function Add(ID_Calc_Pack: Integer; Name, Header, Footer: string; ShowPosition: Integer): Integer;
    procedure Delete(ID_Calc_Pack: Integer; ID: Integer);
    procedure NameChange(ID_Calc_Pack: Integer; ID: Integer; Name: string);
    function GetName(ID_Calc_Pack: Integer; ID: Integer): string;
    function GetList(ID_Calc_Pack: Integer): TStrings;
    procedure ChangeFactStudentQty(ClassNumber, IDCalcGroup, IDCalcPack, QtyStudent: Integer);
    procedure ChangeSubjectFactStudentQty(ClassNumber, IDCalcGroupSubject, IDCalcGroup, IDCalcPack, QtyFact: Integer);
    function AddSubject(IDCalcPack, IDCalcGroup: Integer; NameSubject: String; IDGrouping: Integer; IDGroupingSubject: Integer; IsConcertmaster: boolean): Integer;
    procedure ReCalculate(IDCalcGroup, IDCalcPack: Integer);
    procedure SubjectDelete(IDCalcPack, IDCalcGroup, ID: Integer);
    procedure HeaderChange(ID_Calc_Pack, ID: Integer; Header: string);
    procedure FooterChange(ID_Calc_Pack: Integer; ID: Integer; Footer: string);
    procedure FillFromGrouping(ID_Calc_Pack: Integer; ID: Integer; ID_Grouping: Integer);
    //function
  end;

  TTeacherTitle = class(TQueriedClass)
  private
    FID: Variant;
    FIDTeacher: Integer;
    FIDKind: Integer;
    FDate: TDateTime;
    FSeriesNumber: String;
  public
    procedure Load(ID: Integer);
    procedure New(IDTeacher: Integer; IDTitleKind: Integer; DateDoc: TDateTime; SeriesNumber: String); overload;
    procedure New; overload;
    procedure Remove(ID: Integer); overload;
    procedure Remove; overload;
    procedure SaveChanges;
    //procedure SetKind(IDKind: Integer);
    //procedure SetDate(Date: TDateTime);
   // procedure SetSeriesNumber(SeriesNumber: String);
    property ID: Variant read FID write FID;
    property IDTeacher: Integer read FIDTeacher write FIDTeacher;
    property IDKind: Integer read FIDKind write FIDKind;
    property Date: TDateTime read FDate write FDate;
    property SeriesNumber: String read FSeriesNumber write FSeriesNumber;
  end;

  {
  TTeacherCategory = class(TQueriedClass)
  private
    FID: Variant;
    FIDTeacher: Integer;
    FIDCatKind: Integer;
    FDateBegin: TDateTime;
  public
    procedure Load(ID: Integer);
    procedure New;
    procedure Remove;

    property ID: Integer read FID write SetID;
    property IDTeacher: Integer read FIDTeacher write FIDTeacher;
    property IDCatKind: Integer read FIDCatKind write FIDCatKind;
    property DateBegin: DateTime read FDateBegin write FDateBegin;
  end;
  }

  TTeacherController = class(TQueriedClass)
  public
    procedure setTitle(ID: Integer; IDTitle: Variant);
    procedure setCatgory(ID: Integer; IDCategory: Variant);
  end;

  TConstController = class(TQueriedClass)
  public
    procedure addConstant(pCode: String; pName: String; pType: Integer);
    procedure setConstant(pCode: String; pValue: Double);
    function getConstant(pCode: String): Double;
  end;

  TCalendarController = class(TQueriedClass)
  private
    procedure storeDay(day: TDateTime; isHoliDay: boolean);
    function  isDayStored(day: TDateTime): boolean;
  public
    procedure refresh(onMonth: TDateTime);
    procedure setHoliDay(day: TDateTime);
    procedure setWorkDay(day: TDateTime);
    procedure reverseDay(day: TDateTime);
  end;

  TDBWorker = class(TQueriedClass)
  public
    function genID(generatorName: String = 'GEN_COMMON'): Integer;
  end;
var
  DM: TDM;

implementation

uses DateUtils, UMain, Math, StrUtils;

{$R *.dfm}

function coalesce(Value: Variant; ValueIfNull: Variant): Variant;
begin
  if (Value = Null) then
    result := ValueIfNull
  else
    result := Value;
end;

{ TDM }



function TDM.AddEducation(ID: Integer; Name: String): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_EDUCATION(:P0, :P1)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsString := Name;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddFilial(ID, Code: Integer; Name, Info: String): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_FILIAL(:P0, :P1, :P2, :P3)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := Code;
  ibqProc.Params[2].AsString := Name;
  ibqProc.Params[3].AsString := Info;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddPost(ID: Integer; Name: String): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_POST(:P0, :P1)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsString := Name;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddStudent(ID, Code: Integer; Name: String; SpecID, FilialID, FinancingID, MasterID,
  Cls, Percent: Integer; BirthDate, EnterDate, ReleaseDate,
  RestoreDate: Variant; EnterInfo, ReleaseInfo, RestoreInfo: String;
  AcademyBDate, AcademyEDate: Variant; AcademyBInfo, AcademyEInfo, Address,
  Telephone: String; IDSex: Variant): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_STUDENT(:P1, :P2, :P3, :P4, :P5, ' +
   ':P6, :P7, :P8, :P9, :P10, :P11, :P12, :P13, :P14, :P15, :P16, :P17, :P18, :P19, :P20, :P21 , :P22, :P23);');
  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := Code;
  ibqProc.Params[2].AsString := Name;
  ibqProc.Params[3].AsInteger := SpecID;
  ibqProc.Params[4].AsInteger := FilialID;
  ibqProc.Params[5].AsInteger := FinancingID;
  ibqProc.Params[6].AsInteger := MasterID;
  ibqProc.Params[7].AsInteger := Cls;
  ibqProc.Params[8].AsInteger := Percent;
  ibqProc.Params[9].Value := BirthDate;
  ibqProc.Params[10].Value := EnterDate;
  ibqProc.Params[11].Value := ReleaseDate;
  ibqProc.Params[12].Value := RestoreDate;
  ibqProc.Params[13].AsString := EnterInfo;
  ibqProc.Params[14].AsString := ReleaseInfo;
  ibqProc.Params[15].AsString := RestoreInfo;
  ibqProc.Params[16].Value := AcademyBDate;
  ibqProc.Params[17].Value := AcademyEDate;
  ibqProc.Params[18].AsString := AcademyBInfo;
  ibqProc.Params[19].AsString := AcademyEInfo;
  ibqProc.Params[20].AsString := Address;
  ibqProc.Params[21].AsString := Telephone;
  ibqProc.Params[22].Value := IDSex;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddStudentPlan(ID, StudentID, Use: Integer;
  TeacherID: Variant): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;

  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_STUDENT_Plan(:P1, :P2, :P3, :P4);');
  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := StudentID;
  ibqProc.Params[2].AsInteger := Use;
  ibqProc.Params[3].Value := TeacherID;
  ibqProc.ExecSQL;
  Result := ibqProc.Current.Vars[0].AsInteger;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddSubject(ID, Code: Integer; Name, Info, ShortName: String): Integer;
begin

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
  ibqProc.SQL.Clear;

  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_SUBJECT(:P1, :P2, :P3, :P4, :P5);');
  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := Code;
  ibqProc.Params[2].AsString := Name;
  ibqProc.Params[3].AsString := Info;
  ibqProc.Params[4].AsString := ShortName;
  ibqProc.ExecSQL;
  Result := ibqProc.Current.Vars[0].AsInteger;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddTariff(Grade: Integer; Salary: Currency; Info: String): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_TARIFF(:P0, :P1, :P2)');
  ibqProc.Params[0].AsInteger := Grade;
  ibqProc.Params[1].AsCurrency := Salary;
  ibqProc.Params[2].AsString := Info;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddTeacher(ID, TabNum: Integer; Name: String; FilialID, SubjectID,
  EducationID, PostID: Integer; StageY, StageM, StageD: byte;
  StageDate, BirthDate, EnterDate, ReleaseDate: Variant; GradeID, ConcertID: Integer; Diploma,
  Address, Telephone: String; IDGradeAdd, IDGradeConcertAdd, IDTitle, IDCategory, IDCategoryConc,
  CategoryDate, CategoryConcDate, Qualification, Education2ID, Qualification2, Diploma2: Variant): Integer;
var
  qID, q2ID: Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  qID := getQualificationID(Qualification);
  q2ID := getQualificationID(Qualification2);
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_TEACHER(' +
    ':P0, :P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P9, :P10, :P11, :P12, :P13, ' +
    ':P14, :P15, :P16, :P17, :P18, :P19, :P20, :P21, :P22, :P23, :P24, :P25, :P26, :P27, :P28, :P29)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := TabNum;
  ibqProc.Params[2].AsString := Name;
  ibqProc.Params[3].AsInteger := FilialID;
  ibqProc.Params[4].AsInteger := SubjectID;
  ibqProc.Params[5].AsInteger := EducationID;
  ibqProc.Params[6].AsInteger := PostID;
  ibqProc.Params[7].Value := StageDate;
  ibqProc.Params[8].Value := BirthDate;
  ibqProc.Params[9].Value := EnterDate;
  ibqProc.Params[10].Value := ReleaseDate;
  ibqProc.Params[11].AsInteger := GradeID;
  ibqProc.Params[12].AsInteger := ConcertID;
  ibqProc.Params[13].AsString := Diploma;
  ibqProc.Params[14].AsString := Address;
  ibqProc.Params[15].AsString := Telephone;
  ibqProc.Params[16].AsInteger := StageY;
  ibqProc.Params[17].AsInteger := StageM;
  ibqProc.Params[18].AsInteger := StageD;
  ibqProc.Params[19].Value := IDGradeAdd;
  ibqProc.Params[20].Value := IDGradeConcertAdd;
  ibqProc.Params[21].Value := IDTitle;
  ibqProc.Params[22].Value := IDCategory;
  ibqProc.Params[23].Value := IDCategoryConc;
  ibqProc.Params[24].Value := CategoryDate;
  ibqProc.Params[25].Value := CategoryConcDate;
  ibqProc.Params[26].Value := qID;
  ibqProc.Params[27].Value := Education2ID;
  ibqProc.Params[28].Value := q2ID;
  ibqProc.Params[29].Value := Diploma2;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddTeacherAdding(ID, TeacherID: Integer; Name: String;
  Percent: word; Sum: double): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_TEACHER_ADDING(' +
    ':P0, :P1, :P2, :P3, :P4)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsInteger := TeacherID;
  ibqProc.Params[2].AsString := Name;
  ibqProc.Params[3].AsInteger := Percent;
  ibqProc.Params[4].AsFloat := Sum;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  Reg : TRegIniFile;
  Ini: TIniFile;
begin
  try
    try
      Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.INI'));
      ibDatabase.Close;
      ibDatabase.DatabaseName :=
        Ini.ReadString('DataBase', 'HOST', 'localhost') +
        Ini.ReadString('DataBase', 'PROTOCOL', ':') +
        Ini.ReadString('DataBase', 'DATABASE', ChangeFileExt(Application.ExeName, '.FDB'));
      ibDatabase.Open;
    except
      MessageDlg('Базу данных не удалось загрузить', mtWarning, [mbOk], 0);
      raise;
    end;
  finally
    Ini.Free;
  end;
  OpenDB;
  FCalcPack := TCalcPack.Create(ibTransaction);
  FCalcIndividual := TCalcIndividual.Create(ibTransaction);
  FCalcGroup := TCalcGroup.Create(ibTransaction);
  FConstController := TConstController.Create(ibTransaction);
  FCalendarController := TCalendarController.Create(ibTransaction);
  FDBWorker := TDBWorker.Create(ibTransaction);
  FCalendarController.refresh(SysDate);
end;



procedure TDM.DelEducation(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_EDUCATION(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelFilial(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_FILIAL(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelPost(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_POST(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelStudent(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('delete from "Student" S where S."ID" = :P0');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelStudentPlan(ID: Integer; StudentID: Integer);
begin

end;

procedure TDM.DelSubject(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_SUBJECT(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelTariff(ID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_TARIFF(:P0)');
  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;
  
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelTeacher(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_TEACHER(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelTeacherAdding(ID: Integer);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_TEACHER_ADDING(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ibdsTeacherCalcFields(DataSet: TDataSet);
var
  y, m, d: integer;
begin
  ibdsTeacherisWorking.Value := ibdsTeacherReleaseDate.IsNull;

  ibdsTeacherStage.Value := Format('%.2d-%.2d-%.2d',
    [ibdsTeacherSTAGE_Y.AsInteger, ibdsTeacherSTAGE_M.AsInteger, ibdsTeacherSTAGE_D.AsInteger]);

  y := ibdsTeacherSTAGE_Y.Value;
  m := ibdsTeacherSTAGE_M.Value;
  d := ibdsTeacherSTAGE_D.Value;

  if ibdsTeacherEnterDate.Value < ibdsTeacherStageDate.Value then
  //т.е поступил раньше, чем обозначен стаж
  begin
    ibdsTeacherCurrStageY.Value :=
      y + 
      (MonthsBetween(ibdsConstSYSTEM_DATE.Value, ibdsTeacherStageDate.Value) + m) div 12;
    ibdsTeacherCurrStageM.Value :=
      (MonthsBetween(ibdsConstSYSTEM_DATE.Value, ibdsTeacherStageDate.Value) + m) mod 12;
  end
  else
  begin
    ibdsTeacherCurrStageY.Value :=
      y + 
      (MonthsBetween(ibdsConstSYSTEM_DATE.Value, ibdsTeacherEnterDate.Value) + m) div 12;
    ibdsTeacherCurrStageM.Value :=
      (MonthsBetween(ibdsConstSYSTEM_DATE.Value, ibdsTeacherEnterDate.Value) + m) mod 12;
  end;
  ibdsTeacherCurrStage.Value := Format('%.2d-%.2d-%.2d',
    [ibdsTeacherCurrStageY.AsInteger, ibdsTeacherCurrStageM.AsInteger, ibdsTeacherSTAGE_D.AsInteger]);
end;

procedure TDM.ibdsStudentCalcFields(DataSet: TDataSet);
begin
  if ibdsStudentRELEASED.Value > 0 then
    ibdsStudentState.Value := 0 // отчислен
  else
    if ibdsStudentACADEMY.Value > 0 then
      ibdsStudentState.Value := 1 //академ
    else
      ibdsStudentState.Value := 2;

  case ibdsStudentState.Value of
    0: ibdsStudentStage.Value := 'отчислен';
    1: ibdsStudentStage.Value := 'академ';
    2: ibdsStudentStage.Value := 'учится';
  end;

  if ibdsStudentFinancingID.Value = 0 then
    ibdsStudentFinancing.Value := 'Б'
  else
    ibdsStudentFinancing.Value := 'С';
  ibdsStudentAge.AsVariant := Null;
  if not ibdsStudentBirthDate.IsNull then
    ibdsStudentAge.Value :=
      YearsBetween(Date, ibdsStudentBirthDate.Value);
  if ibdsStudentCATEGORY.Value = 0 then
    ibdsStudentCategoryStr.Value := 'мл.'
  else
    if ibdsStudentCategory.Value > 0 then
      ibdsStudentCategoryStr.Value := 'ст.'
    else
      ibdsStudentCategoryStr.Value := '';
end;

procedure TDM.ibdsStudentPlanCalcFields(DataSet: TDataSet);
begin
  ibdsStudentPlanUseBool.Value := ibdsStudentPlanUSE.Value <> 0;
end;

procedure TDM.CloseDB;
var i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TIBDataSet then
      if (Components[i] as TIBDataSet).Tag > -1 then
        (Components[i] as TIBDataSet).Close;
end;

procedure TDM.OpenDB;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TIBDataSet then
      if (Components[i] as TIBDataSet).Tag > -1 then
        try
          (Components[i] as TIBDataSet).Open;
        except
          ShowMessage('Ошибка при открытии: ' + (Components[i] as TIBDataSet).Name);
          raise;
        end;
end;

procedure TDM.ibdsTeacherTMCalcFields(DataSet: TDataSet);
begin
  ibdsTeacherTMSUMTIME.Value :=
    ibdsTeacherTMOUTSUMTIME.Value + ibdsTeacherTMOUTSUMTIME1.Value;
  if ibdsTeacherTMSUMTIME.Value = 0 then ibdsTeacherTMSUMTIME.AsVariant := Null;

  ibdsTeacherTMSUMPAY.Value :=
    ibdsTeacherTMOUTSUMPAY.Value + ibdsTeacherTMOUTSUMPAY1.Value;
  if ibdsTeacherTMSUMPAY.Value = 0 then
    ibdsTeacherTMSUMPAY.AsVariant := Null;
  ibdsTeacherTMTOTALSUM.Value := ibdsTeacherTMSUMPAY.Value +
    ibdsTeacherTMOUTADDSUM.Value;
  if ibdsTeacherTMTOTALSUM.Value = 0 then
    ibdsTeacherTMTOTALSUM.AsVariant := Null;
  ibdsTeacherTMName.Value := DM.ibdsTeacherName.Value;
end;

procedure TDM.ChangeConstants(YTCoef, OTCoef, CTCoef: double;
  Code, Name, DirectorSign, TarifficationSign, TabSign: String);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE CHANGE_CONSTANTS(' +
    ':P0, :P1, :P2, :P3, :P4, :P5, :P6, :P7)');

  ibqProc.Params[0].AsFloat := YTCoef;
  ibqProc.Params[1].AsFloat := OTCoef;
  ibqProc.Params[2].AsFloat := CTCoef;
  ibqProc.Params[3].AsString := Code;
  ibqProc.Params[4].AsString := Name;
  ibqProc.Params[5].AsString := DirectorSign;
  ibqProc.Params[6].AsString := TarifficationSign;
  ibqProc.Params[7].AsString := TabSign;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ChangeSysDate(SDate: TDateTime);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE CHANGE_SYS_DATE(:P0)');

  ibqProc.Params[0].AsDate := SDate;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddGrouping(ID: Integer; Name: String; FinancingID: Integer): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_GROUPING(:P0, :P1, :P2)');

  ibqProc.Params[0].AsInteger := ID;
  ibqProc.Params[1].AsString := Name;
  ibqProc.Params[2].AsInteger := FinancingID;
    
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.AddGroupingDept(GrID, DeptID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_GROUPING_DEPT(:P0, :P1)');

  ibqProc.Params[0].AsInteger := GrID;
  ibqProc.Params[1].AsInteger := DeptID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelGrouping(ID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_GROUPING(:P0)');

  ibqProc.Params[0].AsInteger := ID;
  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelGroupingDept(GrID, DeptID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_GROUPING_DEPT(:P0, :P1)');

  ibqProc.Params[0].AsInteger := GrID;
  ibqProc.Params[1].AsInteger := DeptID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.AddTeacherGroup(GroupingID, TeacherID, GrSubjID, ClassNum, Gr: integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_TEACHER_GROUP(' +
    ':grouping_id, :teacher_id, :gr_subj_id, :class_num, :group_q);');
  ibqProc.ParamByName('grouping_id').AsInteger := GroupingID;
  ibqProc.ParamByName('teacher_id').AsInteger := TeacherID;
  ibqProc.ParamByName('gr_subj_id').AsInteger := GrSubjID;
  ibqProc.ParamByName('class_num').AsInteger := ClassNum;
  if Gr = -1 then
    ibqProc.ParamByName('group_q').Value := Null
  else
  ibqProc.ParamByName('group_q').AsInteger := Gr;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.AutoCalcTeacherGroup(GroupingID, ClassNum, GrSubjectID, ReplType: Variant);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE PROC_CALC_TEACHER_GROUP(' +
    ':grouping_id, :class_num, :gr_subj_id, :repl_type)');

  ibqProc.Params[0].Value := GroupingID;
  ibqProc.Params[1].Value := ClassNum;
  ibqProc.Params[2].Value := GrSubjectID;
  ibqProc.Params[3].Value := ReplType;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ibdsGroupingCalcFields(DataSet: TDataSet);
begin
  ibdsGroupingFinancing.Value := ibdsGroupingFINANCING_ID.Value <> 0;
end;

procedure TDM.ExtractAllGroup(GroupingID: integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE PROC_EXTRACT_ALL_GROUP(' +
    IntToStr(GroupingID) + ')');

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ExtractSubjects(GroupingID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE PROC_EXTRACT_GR_SUBJECTS(:P)');

  ibqProc.Params[0].AsInteger := GroupingID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ibdsTeacherGroupSubjCalcFields(DataSet: TDataSet);
begin
 { ibdsTeacherGroupSubjCurrs.Value := '';
  CurrIDs := ibdsGroupingSubjCurrs.Lookup('GROUPING_ID;GROUPING_SUBJ_ID',
    VarArrayOf([DM.ibdsTeacherGroupSubjGROUPING_ID.AsInteger,
    DM.ibdsTeacherGroupSubjGR_SUBJ_ID.AsInteger]), 'CURRICULUM_ID');
  if CurrIDs <> null then
  begin
    s := ibdsCurriculum.Lookup('ID', CurrIDs, 'Name');
      if s <> null then
        ibdsTeacherGroupSubjCurrs.Value := ibdsTeacherGroupSubjCurrs.Value + s + '; ';
  end;    }
end;

procedure TDM.DelTariffication(DocDate: TDateTime);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_TARIFFICATION(:P0)');

  ibqProc.Params[0].AsDateTime := DocDate;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.NewTariffication(Info: String): TDateTime;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  Result := 0;
  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE PROC_NEW_TARIFFICATION(:P)');

  ibqProc.Params[0].AsString := Info;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsDateTime;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ibdsTarifficationRecCalcFields(DataSet: TDataSet);
var
  d, m, y: integer;
begin

  d := ibdsTarifficationRecT_STAGE_D.Value;
  m := ibdsTarifficationRecT_STAGE_M.Value;
  y := ibdsTarifficationRecT_STAGE_Y.Value;

  if ibdsTarifficationRecT_ENTER_DATE.Value < ibdsTarifficationRecT_STAGE_DATE.Value then
  begin
    y := y +
      (MonthsBetween(ibdsTarifficationSYS_DATE.Value, ibdsTarifficationRecT_STAGE_DATE.Value) + m) div 12;
    m := (MonthsBetween(ibdsTarifficationSYS_DATE.Value, ibdsTarifficationRecT_STAGE_DATE.Value) + m) mod 12;
  end
  else
  begin
    y := y +
      (MonthsBetween(ibdsTarifficationSYS_DATE.Value, ibdsTarifficationRecT_ENTER_DATE.Value) + m) div 12;
    m := (MonthsBetween(ibdsTarifficationSYS_DATE.Value, ibdsTarifficationRecT_ENTER_DATE.Value) + m) mod 12;
  end;

  ibdsTarifficationRecStage.Value := Format('%.2d-%.2d-%.2d', [y, m, d]);
  ibdsTarifficationRecCurrStageY.Value := y;
  ibdsTarifficationRecCurrStageM.Value := m;
  ibdsTarifficationRecCurrStageD.Value := d;

  ibdsTarifficationRecBMoneyY.Value :=
    ibdsTarifficationRecT_B_TIME_Y.Value *
    ibdsTarifficationRecT_MAIN_SALARY.Value / ibdsTarifficationCOEF_Y_TIME.Value;
  ibdsTarifficationRecBMoneyO.Value :=
    ibdsTarifficationRecT_B_TIME_O.Value *
    ibdsTarifficationRecT_MAIN_SALARY.Value / ibdsTarifficationCOEF_O_TIME.Value;
  ibdsTarifficationRecBMoneyC.Value :=
    ibdsTarifficationRecT_B_TIME_C.Value *
    ibdsTarifficationRecT_CONCERT_SALARY.Value / ibdsTarifficationCOEF_C_TIME.Value;

  ibdsTarifficationRecSMoneyY.Value :=
    ibdsTarifficationRecT_S_TIME_Y.Value *
    ibdsTarifficationRecT_MAIN_SALARY.Value / ibdsTarifficationCOEF_Y_TIME.Value;
  ibdsTarifficationRecSMoneyO.Value :=
    ibdsTarifficationRecT_S_TIME_O.Value *
    ibdsTarifficationRecT_MAIN_SALARY.Value / ibdsTarifficationCOEF_O_TIME.Value;
  ibdsTarifficationRecSMoneyC.Value :=
    ibdsTarifficationRecT_S_TIME_C.Value *
    ibdsTarifficationRecT_CONCERT_SALARY.Value / ibdsTarifficationCOEF_C_TIME.Value;

  ibdsTarifficationRecSumB.Value := ibdsTarifficationRecBMoneyY.Value +
    ibdsTarifficationRecBMoneyO.Value + ibdsTarifficationRecBMoneyC.Value;

  ibdsTarifficationRecSumS.Value := ibdsTarifficationRecSMoneyY.Value +
    ibdsTarifficationRecSMoneyO.Value + ibdsTarifficationRecSMoneyC.Value;

  ibdsTarifficationRecSUM.Value := ibdsTarifficationRecSumB.Value +
    ibdsTarifficationRecSumS.Value + ibdsTarifficationRecT_ADDINGS.Value;

end;

procedure TDM.Forming_Main_Tab(DaysQty: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE PROC_MAIN_TAB(:P0)');

  ibqProc.Params[0].AsInteger := DaysQty;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.EditMainTab(ID: Integer; b_y_t, b_o_t, b_c_t: double;
  comments, swp_y_time, swp_o_time, swp_c_time: variant);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE EDIT_MAIN_TAB(:teacher_id, :time_y,' +
  ' :time_o, :time_c, :comments, :time_y_swp, :time_o_swp, :time_c_swp)');

  ibqProc.ParamByName('teacher_id').AsInteger := ID;
  ibqProc.ParamByName('time_y').AsFloat := b_y_t;
  ibqProc.ParamByName('time_o').AsFloat := b_o_t;
  ibqProc.ParamByName('time_c').AsFloat := b_c_t;
  ibqProc.ParamByName('comments').Value := comments;
  ibqProc.ParamByName('time_y_swp').Value := swp_y_time;
  ibqProc.ParamByName('time_o_swp').Value := swp_o_time;
  ibqProc.ParamByName('time_c_swp').Value := swp_c_time;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;





function TDM.AddRepTabExt(RecTime: Variant; TeacherName: String;
  TabMonth: TDateTime; y_t, o_t, c_t, y_t_ood, o_t_ood, c_t_ood,
  y_t_filial, o_t_filial, c_t_filial: Double): TDateTime;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_REP_TAB_EXT(' +
    ' :rec_time, :t_name, :tab_month, :y_t, :o_t, :c_t, :y_t_ood,' +
    ' :o_t_ood, :c_t_ood, :y_t_filial, :o_t_filial, :c_t_filial)');

  ibqProc.Params[0].Value := RecTime;
  ibqProc.Params[1].AsString := TeacherName;
  ibqProc.Params[2].AsDateTime := TabMonth;
  ibqProc.Params[3].AsFloat := y_t;
  ibqProc.Params[4].AsFloat := o_t;
  ibqProc.Params[5].AsFloat := c_t;
  ibqProc.Params[6].AsFloat := y_t_ood;
  ibqProc.Params[7].AsFloat := o_t_ood;
  ibqProc.Params[8].AsFloat := c_t_ood;
  ibqProc.Params[9].AsFloat := y_t_filial;
  ibqProc.Params[10].AsFloat := o_t_filial;
  ibqProc.Params[11].AsFloat := c_t_filial;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsDateTime;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelRepTabExt(RecTime: TDateTime);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_REP_TAB_EXT(:rec_time)');

  ibqProc.Params[0].Value := RecTime;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelGroupingSubj(GroupingID, GroupingSubjID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('delete from grouping_subj where grouping_id=:grouping_id and id=:id;');

  ibqProc.Params[0].Value := GroupingID;
  ibqProc.Params[1].Value := GroupingSubjID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddGroupingSubj(GroupingID: Integer; SubjID: Variant; SubjName: String;
  Code, GrQty: Integer; Pos: Variant): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_GROUPING_SUBJ(:GR_ID, :S_ID, :S_NAME, :S_CODE, :GR_QTY, :POS);');

  ibqProc.ParamByName('GR_ID').Value := GroupingID;
  ibqProc.ParamByName('S_ID').Value := SubjID;
  ibqProc.ParamByName('S_NAME').Value := SubjName;
  ibqProc.ParamByName('S_CODE').Value := Code;
  ibqProc.ParamByName('GR_QTY').Value := GrQty;
  ibqProc.ParamByName('POS').Value := Pos;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.AddGroupingSubjCurr(GroupingID, GrSubjID, CurrID,
  CurrRecID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_GROUPING_SUBJ_CURR(' +
     ':GR_ID, :GR_SUBJ_ID, :CURR_ID, :CURR_REC_ID);');

  ibqProc.Params[0].Value := GroupingID;
  ibqProc.Params[1].Value := GrSubjID;
  ibqProc.Params[2].Value := CurrID;
  ibqProc.Params[3].Value := CurrRecID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelGroupingSubjCurr(GroupingID, GroupingSubjID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('delete from grouping_subj_curr_id GSCI where ' +
    ' GSCI.grouping_id=:gr_id and GSCI.grouping_subj_id=:gr_subj_id;');

  ibqProc.Params[0].Value := GroupingID;
  ibqProc.Params[1].Value := GroupingSubjID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ibdsGroupingDeptCalcFields(DataSet: TDataSet);
begin
  ibdsGroupingDeptDepartment.Value :=
    ibdsGroupingDeptDEPT_NAME.Value + ' (' +
    ibdsGroupingDeptDEPT_INFO.Value + ')';
end;

procedure TDM.AutoCalcTeacherGroup(GroupingID, TeacherID,
  ReplType: Variant);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE PROC_CALC_TEACHER_GROUP_EXT(' +
    ':grouping_id, :teacher_id, :repl_type)');

  ibqProc.Params[0].Value := GroupingID;
  ibqProc.Params[1].Value := TeacherID;
  ibqProc.Params[2].Value := ReplType;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.SaveReportParam(ID: Integer; Sizes: String);
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('update report_param set SIZES_1 = :sizes where ID=:ID');

  ibqProc.ParamByName('ID').Value := ID;
  ibqProc.ParamByName('sizes').Value := Sizes;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddStudentFilter(ID: Variant; Name: String; FilialID,
  ClassB, ClassE, CuratorID, Category, Period, Status,
  PayPercent, AgeB, AgeE, EnterDB, EnterDE, ReleaseDB, ReleaseDE,
  RestoreDB, RestoreDE, AcademyDB, AcademyDE, SubjectID1, TeacherID1,
  SubjectID2, TeacherID2, SubjState, FinancingID, IDSex: Variant): Integer;
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append(
    'EXECUTE PROCEDURE ADD_STUDENT_FILTER( ' +
    ':in_id, :in_name, :in_filial_id, ' +
    ':in_class_b, :in_class_e, :in_curator_id, :in_category, :in_period, :in_status, ' +
    ':in_pay_percent, :in_age_b, :in_age_e, :in_enter_d_b, :in_enter_d_e, :in_release_d_b, ' +
    ':in_release_d_e, :in_restore_d_b, :in_restore_d_e, :in_academy_d_b, :in_academy_d_e, ' +
    ':in_subject_id_1, :in_teacher_id_1, :in_subject_id_2, :in_teacher_id_2, :in_subj_state, :in_financing_id, :in_id_sex)');

  ibqProc.ParamByName('in_id').Value := ID;
  ibqProc.ParamByName('in_name').Value := Name;
  ibqProc.ParamByName('in_filial_id').Value := FilialID;
  ibqProc.ParamByName('in_class_b').Value := ClassB;
  ibqProc.ParamByName('in_class_e').Value := ClassE;
  ibqProc.ParamByName('in_curator_id').Value := CuratorID;
  ibqProc.ParamByName('in_category').Value := Category;
  ibqProc.ParamByName('in_period').Value := Period;
  ibqProc.ParamByName('in_status').Value := Status;
  ibqProc.ParamByName('in_pay_percent').Value := PayPercent;
  ibqProc.ParamByName('in_age_b').Value := AgeB;
  ibqProc.ParamByName('in_age_e').Value := AgeE;
  ibqProc.ParamByName('in_enter_d_b').Value := EnterDB;
  ibqProc.ParamByName('in_enter_d_e').Value := EnterDE;
  ibqProc.ParamByName('in_release_d_b').Value := ReleaseDB;
  ibqProc.ParamByName('in_release_d_e').Value := ReleaseDE;
  ibqProc.ParamByName('in_restore_d_b').Value := RestoreDB;
  ibqProc.ParamByName('in_restore_d_e').Value := RestoreDE;
  ibqProc.ParamByName('in_academy_d_b').Value := AcademyDB;
  ibqProc.ParamByName('in_academy_d_e').Value := AcademyDE;
  ibqProc.ParamByName('in_subject_id_1').Value := SubjectID1;
  ibqProc.ParamByName('in_teacher_id_1').Value := TeacherID1;
  ibqProc.ParamByName('in_subject_id_2').Value := SubjectID2;
  ibqProc.ParamByName('in_teacher_id_2').Value := TeacherID2;
  ibqProc.ParamByName('in_subj_state').Value := SubjState;
  ibqProc.ParamByName('in_financing_id').Value := FinancingID;
  ibqProc.ParamByName('in_id_sex').Value := IDSex;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddTeacherFilter(ID: Variant; Name: String; MainSubjID,
  MainGrade, ConcGrade, PostID, EducationID, FilialID, State, StageB,
  StageE, BirthDB, BirthDE, EnterDB, EnterDE, ReleaseDB,
  ReleaseDE, StageBM, StageEM, CatIDPed, CatIDConc, TitleID,
  AgeB, AgeE: Variant
): Integer;
begin
if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_TEACHER_FILTER('+
    ':in_id, :in_name, :in_main_subj_id, :in_main_grade, ' +
    ':in_conc_grade, :in_post_id, :in_education_id, :in_filial_id, ' +
    ':in_state, :in_stage_b, :in_stage_e, :in_birth_d_b, :in_birth_d_e, ' +
    ':in_enter_d_b, :in_enter_d_e, :in_release_d_b, :in_release_d_e, ' +
    ':in_stage_b_m, :in_stage_e_m, ' +
    ':in_cat_id_ped, :in_cat_id_conc, :in_title_id, :in_age_b, :in_age_e);');

  ibqProc.ParamByName('in_id').Value := ID;
  ibqProc.ParamByName('in_name').Value := Name;
  ibqProc.ParamByName('in_main_subj_id').Value := MainSubjID;
  ibqProc.ParamByName('in_main_grade').Value := MainGrade;
  ibqProc.ParamByName('in_conc_grade').Value := ConcGrade;
  ibqProc.ParamByName('in_post_id').Value := PostID;
  ibqProc.ParamByName('in_education_id').Value := EducationID;
  ibqProc.ParamByName('in_filial_id').Value := FilialID;
  ibqProc.ParamByName('in_state').Value := State;
  ibqProc.ParamByName('in_stage_b').Value := StageB;
  ibqProc.ParamByName('in_stage_e').Value := StageE;
  ibqProc.ParamByName('in_birth_d_b').Value := BirthDB;
  ibqProc.ParamByName('in_birth_d_e').Value := BirthDE;
  ibqProc.ParamByName('in_enter_d_b').Value := EnterDB;
  ibqProc.ParamByName('in_enter_d_e').Value := EnterDE;
  ibqProc.ParamByName('in_release_d_b').Value := ReleaseDB;
  ibqProc.ParamByName('in_release_d_e').Value := ReleaseDE;
  ibqProc.ParamByName('in_stage_b_m').Value := StageBM;
  ibqProc.ParamByName('in_stage_e_m').Value := StageEM;
  ibqProc.ParamByName('in_cat_id_ped').Value := CatIDPed;
  ibqProc.ParamByName('in_cat_id_conc').Value := CatIDConc;
  ibqProc.ParamByName('in_title_id').Value := TitleID;
  ibqProc.ParamByName('in_age_b').Value := AgeB;
  ibqProc.ParamByName('in_age_e').Value := AgeE;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ibdsTeacherGroupClssCalcFields(DataSet: TDataSet);
var
  s: TStrings;
begin
  ibdsTeacherGroupClssGrSum.Value :=
      ibdsTeacherGroupClssGR_QTY_0.Value +
      ibdsTeacherGroupClssGR_QTY_1.Value +
      ibdsTeacherGroupClssGR_QTY_2.Value +
      ibdsTeacherGroupClssGR_QTY_3.Value +
      ibdsTeacherGroupClssGR_QTY_4.Value +
      ibdsTeacherGroupClssGR_QTY_5.Value +
      ibdsTeacherGroupClssGR_QTY_6.Value +
      ibdsTeacherGroupClssGR_QTY_7.Value +
      ibdsTeacherGroupClssGR_QTY_8.Value;
  if ibdsTeacherGroupClssGrSum.Value = 0 then
    ibdsTeacherGroupClssGrSum.AsString := '';
  s := TStringList.Create;
  s.DelimitedText := Trim(ibdsTeacherGroupClssTEACHER.Value);
  //s := ibdsTeacherGroupClssTEACHER.Value;
  if s.Count = 3 then
    ibdsTeacherGroupClssTeacherShortName.Value :=
      s[0] + ' ' +s[1][1] + '. ' + s[2][1] + '.'
  else
    ibdsTeacherGroupClssTeacherShortName.Value := s[0];
  s.Free;
end;

function TDM.AddReportParam(ID, Name, PageOrient, MLeft, MRight, MTop,
  MBottom, Sizes1, Sizes2, Sizes3, Qty1, Qty2, Qty3: Variant): Integer;
begin

if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_REPORT_PARAM('+
    ':in_id, :in_name, :in_page_orient, :in_m_left, ' +
    ':in_m_right, :in_m_top, :in_m_bottom, :in_sizes_1, ' +
    ':in_sizes_2, :in_sizes_3, :in_qty_1, :in_qty_2, :in_qty_3);');

  ibqProc.ParamByName('in_id').Value := ID;
  ibqProc.ParamByName('in_name').Value := Name;
  ibqProc.ParamByName('in_page_orient').Value := PageOrient;
  ibqProc.ParamByName('in_m_left').Value := MLeft;
  ibqProc.ParamByName('in_m_right').Value := MRight;
  ibqProc.ParamByName('in_m_top').Value := MTop;
  ibqProc.ParamByName('in_m_bottom').Value := MBottom;
  ibqProc.ParamByName('in_sizes_1').Value := Sizes1;
  ibqProc.ParamByName('in_sizes_2').Value := Sizes2;
  ibqProc.ParamByName('in_sizes_3').Value := Sizes3;
  ibqProc.ParamByName('in_qty_1').Value := Qty1;
  ibqProc.ParamByName('in_qty_2').Value := Qty2;
  ibqProc.ParamByName('in_qty_3').Value := Qty3;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddRepTabExt2(RecTime: Variant; TeacherName: String;
  TabMonth: TDateTime; y_t, o_t, c_t, y_t_ood, o_t_ood, c_t_ood,
  y_t_filial, o_t_filial, c_t_filial: Double): TDateTime;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_REP_TAB_EXT_2(' +
    ' :rec_time, :t_name, :tab_month, :y_t, :o_t, :c_t, :y_t_ood,' +
    ' :o_t_ood, :c_t_ood, :y_t_filial, :o_t_filial, :c_t_filial)');

  ibqProc.Params[0].Value := RecTime;
  ibqProc.Params[1].AsString := TeacherName;
  ibqProc.Params[2].AsDateTime := TabMonth;
  ibqProc.Params[3].AsFloat := y_t;
  ibqProc.Params[4].AsFloat := o_t;
  ibqProc.Params[5].AsFloat := c_t;
  ibqProc.Params[6].AsFloat := y_t_ood;
  ibqProc.Params[7].AsFloat := o_t_ood;
  ibqProc.Params[8].AsFloat := c_t_ood;
  ibqProc.Params[9].AsFloat := y_t_filial;
  ibqProc.Params[10].AsFloat := o_t_filial;
  ibqProc.Params[11].AsFloat := c_t_filial;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsDateTime;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DelRepTabExt2(RecTime: TDateTime);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE DELETE_REP_TAB_EXT_2(:rec_time)');

  ibqProc.Params[0].Value := RecTime;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.AddSTFilterSpec(IDFilter, IDSpec: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE ADD_STUDENT_FILTER_SPEC(:ID_FILTER, :ID_SPECIALIZATION)');

  ibqProc.Params[0].Value := IDFilter;
  ibqProc.Params[1].Value := IDSpec;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.ClearStudentFilterSpec(IDFilter: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE CLEAR_STUDENT_FILTER_SPEC(:ID_FILTER)');

  ibqProc.Params[0].Value := IDFilter;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.TableBookmarkDelete(TableName: string);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE TABLE_BOOKMARK_D(:TABLE_NAME)');

  ibqProc.Params[0].Value := TableName;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.TableBookmarkRefresh(TableName, BookMark: string);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE TABLE_BOOKMARK_IU(:TABLE_NAME, :BOOKMARK)');

  ibqProc.Params[0].Value := TableName;
  ibqProc.Params[1].Value := BookMark;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.TableBookmarkGet(TableName: string): Variant;
var
  s: string;
begin
{
  ibds.Close;
  ibds.SelectSQL.Text := 'SELECT BOOKMARK FROM TABLE_BOOKMARK WHERE TABLE_NAME = ' + TableName;
  ibds.Open;
  s := ibds.Fields[0].AsString;
  with TStringList.Create do
    Delimiter := ';';
    Text := s;
    Result := VarArrayCreate([0, 4], varVariant);
}
  Result := Null;
end;

procedure TDM.TableBookmarkIU(TableName, BookMark: string);
begin

end;

procedure TDM.ChangePosition(
  pTableName, pOrderBy: variant;
  pID, pSteep: Integer
);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append(
    'EXECUTE PROCEDURE POS_CHANGE(' +
    ' :p_table_name,' +
    ' :p_order_by,'   +
    ' :p_id,'         +
    ' :p_steep'       +
    ')'
  );

  ibqProc.ParamByName('p_table_name').Value := pTableName;
  ibqProc.ParamByName('p_order_by').Value := pOrderBy;
  ibqProc.ParamByName('p_id').Value := pID;
  ibqProc.ParamByName('p_steep').Value := pSteep;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.AddTeacherCatKind(pID: variant; pName, pPrint: string;
  pCoef: Double): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append(
    'EXECUTE PROCEDURE add_teacher_cat_kind (' +
    ' :p_id,'    +
    ' :p_name,'  +
    ' :p_print,' +
    ' :p_coef'   +
    ')'
  );

  ibqProc.ParamByName('p_id').Value := pID;
  ibqProc.ParamByName('p_name').Value := pName;
  ibqProc.ParamByName('p_print').Value := pPrint;
  ibqProc.ParamByName('p_coef').Value := pCoef;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TDM.DeleteRow(pTableName, pIDFieldName: string; pID: integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append(
    'delete from ' + pTableName + ' where ' + pIDFieldName + ' = :p_id'
  );
  ibqProc.ParamByName('p_id').Value := pID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.getQualificationID(name: String): Variant;
begin
  if length(name) = 0 then
  begin
    result := Null;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('EXECUTE PROCEDURE get_qualification_id (:p_name)');
  ibqProc.ParamByName('p_name').Value := name;
  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TDM.GetSysdate: TDateTime;
begin
  if length(name) = 0 then
  begin
    result := Null;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Clear;
  ibqProc.SQL.Append('select system_date from constants');
  try
    ibqProc.Open;
    Result := ibqProc.FieldByName('system_date').AsDateTime
  except
    ibqProc.Transaction.Rollback;
    raise;
  end;
  ibqProc.Close;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

{ TCalcPack }

function TCalcPack.Add(Name: String): Integer;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CP_ADD_EDIT(NULL, :NAME)');

  FQuery.Params[0].Value := Name;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcPack.NameChange(ID: Integer; Name: String);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CP_ADD_EDIT(:ID, :NAME)');

  FQuery.ParamByName('ID').Value := ID;
  FQuery.ParamByName('NAME').Value := Name;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FCalcPack);
  FreeAndNil(FCalcIndividual);
  FreeAndNil(FCalcGroup);
  FreeAndNil(FTeacherTitle);
  FreeAndNil(FConstController);
  FreeAndNil(FCalendarController);
  FreeAndNil(FDBWorker);
end;

function TCalcPack.GetName(ID: Integer): string;
begin
  FQuery.SQL.Text := 'SELECT NAME FROM CALC_PACK WHERE ID = :ID';
  FQuery.ParamByName('ID').Value := ID;
  FQuery.Open;
  if FQuery.IsEmpty then raise Exception.Create('Пакета с ID = ' + IntToStr(ID) + ' не существует');
  Result := FQuery.FieldByName('NAME').AsString;
end;

procedure TCalcPack.Delete(ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CP_DELETE(:ID_CALC_PACK)');

  FQuery.ParamByName('ID_CALC_PACK').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

{ TQueriedClass }

constructor TQueriedClass.Create(Transaction: TIBTransaction);
begin
  FQuery := TIBQuery.Create(nil);
  FQuery.Transaction := Transaction;
end;

destructor TQueriedClass.Destroy;
begin
  FQuery.Transaction := nil;
  FreeAndNil(FQuery)
end;

{ TCalcIndividual }

function TCalcIndividual.Add(ID_Calc_Pack: Integer; Name, Header, Footer: string; ShowPosition: Integer): Integer;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CI_ADD(:ID_CALC_PACK, :NAME, :HEADER, :FOOTER, :SHOW_POSITION)');

  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('NAME').Value := Name;
  FQuery.ParamByName('HEADER').Value := Header;
  FQuery.ParamByName('FOOTER').Value := Footer;
  FQuery.ParamByName('SHOW_POSITION').Value := ShowPosition;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

function TCalcIndividual.AddSubject(ID_Calc_Pack, ID_Calc_Individual: Integer;
  Name_Subject: String; ID_Department,
  ID_Curr_Rec: Integer; Is_Concertmaster: boolean): Integer;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CIS_ADD (:ID_CALC_INDIVIDUAL, :ID_CALC_PACK, :NAME, :ID_DEPARTMENT, :ID_CURR_REC, :SHOW_POSITION, :IS_CONCERTMASTER)';

  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := ID_Calc_Individual;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('NAME').Value := Name_Subject;
  FQuery.ParamByName('ID_DEPARTMENT').Value := ID_Department;
  FQuery.ParamByName('ID_CURR_REC').Value := ID_Curr_Rec;
  FQuery.ParamByName('SHOW_POSITION').Value := NULL;
  FQuery.ParamByName('IS_CONCERTMASTER').Value := IfThen(Is_Concertmaster, 1, 0);

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.ChangeFactStudentQty(ClassNumber,
  IDCalcIndividual, IDCalcPack, QtyFact: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CICD_QTY_STUDENT_CHANGE  (:CLASS_NUMBER, :ID_CALC_INDIVIDUAL, :ID_CALC_PACK, :QTY_STUDENT)';

  FQuery.ParamByName('CLASS_NUMBER').Value := ClassNumber;
  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := IDCalcIndividual;
  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('QTY_STUDENT').Value := QtyFact;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.ChangeSubjectFactStudentQty(ClassNumber,
  IDCalcIndividualSubject, IDCalcIndividual, IDCalcPack, QtyFact: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CISCD_QTY_FACT_CHANGE (:CLASS_NUMBER, :ID_CALC_INDIVIDUAL_SUBJECT, :ID_CALC_INDIVIDUAL, :ID_CALC_PACK, :QTY_FACT)';

  FQuery.ParamByName('CLASS_NUMBER').Value := ClassNumber;
  FQuery.ParamByName('ID_CALC_INDIVIDUAL_SUBJECT').Value := IDCalcIndividualSubject;
  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := IDCalcIndividual;
  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('QTY_FACT').Value := QtyFact;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.Delete(ID_Calc_Pack, ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CI_DELETE(:ID_CALC_INDIVIDUAL, :ID_CALC_PACK)';

  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.FillFromDepartment(IDCalcIndividual, IDCalcPack,
  IDDepartment: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CI_FILL_FROM_DEPT(:ID_CALC_PACK, :ID_CALC_INDIVIDUAL, :ID_DEPARTMENT)';

  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := IDCalcIndividual;
  FQuery.ParamByName('ID_DEPARTMENT').Value := IDDepartment;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.FooterChange(ID_Calc_Pack, ID: Integer;
  Footer: string);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CI_FOOTER_CHANGE(:ID_CALC_INDIVIDUAL, :ID_CALC_PACK, :FOOTER)';

  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('FOOTER').Value := Footer;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

function TCalcIndividual.GetList(
  ID_Calc_Pack: Integer): TStrings;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'SELECT ID, NAME FROM CALC_INDIVIDUAL WHERE ID_CALC_PACK = :ID_CALC_PACK';
  FQuery.Open;
  Result := TStringList.Create;
  while not FQuery.Eof do
  begin
    Result.AddObject(FQuery.FieldByName('NAME').AsString, TObject(FQuery.FieldByName('ID').AsInteger));
    FQuery.Next;
  end;
  FQuery.Close;
end;

function TCalcIndividual.GetName(ID_Calc_Pack, ID: Integer): string;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Text := 'SELECT NAME FROM CALC_INDIVIDUAL WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID';
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('ID').Value := ID;
  FQuery.Open;
  if FQuery.IsEmpty then raise Exception.Create('Пакета с ID = ' + IntToStr(ID) + ' не существует');
  Result := FQuery.FieldByName('NAME').AsString;
end;

procedure TCalcIndividual.HeaderChange(ID_Calc_Pack, ID: Integer;
  Header: string);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CI_HEADER_CHANGE(:ID_CALC_INDIVIDUAL, :ID_CALC_PACK, :HEADER)';

  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('HEADER').Value := Header;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.NameChange(ID_Calc_Pack, ID: Integer;
  Name: string);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CI_NAME_CHANGE(:ID, :ID_CALC_PACK, :NAME)');

  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('ID').Value := ID;
  FQuery.ParamByName('NAME').Value := Name;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.ReCalculate(IDCalcIndividual,
  IDCalcPack: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CI_RECALCULATE(:ID_CALC_INDIVIDUAL, :ID_CALC_PACK)');

  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := IDCalcIndividual;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcIndividual.SubjectDelete(ID_Calc_Pack, ID_Calc_Individual,
  ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CIS_DELETE(:ID, :ID_CALC_INDIVIDUAL, :ID_CALC_PACK)');

  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('ID_CALC_INDIVIDUAL').Value := ID_Calc_Individual;
  FQuery.ParamByName('ID').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

{ TCalcGroup }

function TCalcGroup.Add(ID_Calc_Pack: Integer; Name, Header,
  Footer: string; ShowPosition: Integer): Integer;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CG_ADD(:ID_CALC_PACK, :NAME, :HEADER, :FOOTER, :SHOW_POSITION)');

  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('NAME').Value := Name;
  FQuery.ParamByName('HEADER').Value := Header;
  FQuery.ParamByName('FOOTER').Value := Footer;
  FQuery.ParamByName('SHOW_POSITION').Value := ShowPosition;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

function TCalcGroup.AddSubject(IDCalcPack, IDCalcGroup: Integer;
  NameSubject: String; IDGrouping, IDGroupingSubject: Integer;
  IsConcertmaster: boolean): Integer;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CGS_ADD(:ID_CALC_GROUP, :ID_CALC_PACK, :NAME, :ID_GROUPING, :ID_GROUPING_SUBJ, :SHOW_POSITION, :IS_CONCERTMASTER)');

  FQuery.ParamByName('ID_CALC_GROUP').Value := IDCalcGroup;
  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('NAME').Value := NameSubject;
  FQuery.ParamByName('ID_GROUPING').Value := IDGrouping;
  FQuery.ParamByName('ID_GROUPING_SUBJ').Value := IDGroupingSubject;
  FQuery.ParamByName('SHOW_POSITION').Value := Null;
  FQuery.ParamByName('IS_CONCERTMASTER').Value := IfThen(IsConcertmaster, 1, 0);

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.ChangeFactStudentQty(ClassNumber, IDCalcGroup,
  IDCalcPack, QtyStudent: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CGCD_QTY_STUDENT_CHANGE  (:CLASS_NUMBER, :ID_CALC_GROUP, :ID_CALC_PACK, :QTY_STUDENT)';

  FQuery.ParamByName('CLASS_NUMBER').Value := ClassNumber;
  FQuery.ParamByName('ID_CALC_GROUP').Value := IDCalcGroup;
  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('QTY_STUDENT').Value := QtyStudent;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.ChangeSubjectFactStudentQty(ClassNumber,
  IDCalcGroupSubject, IDCalcGroup, IDCalcPack, QtyFact: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CGSCD_QTY_FACT_CHANGE (:CLASS_NUMBER, :ID_CALC_GROUP_SUBJECT, :ID_CALC_GROUP, :ID_CALC_PACK, :QTY_FACT)';

  FQuery.ParamByName('CLASS_NUMBER').Value := ClassNumber;
  FQuery.ParamByName('ID_CALC_GROUP_SUBJECT').Value := IDCalcGroupSubject;
  FQuery.ParamByName('ID_CALC_GROUP').Value := IDCalcGroup;
  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('QTY_FACT').Value := QtyFact;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.Delete(ID_Calc_Pack, ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CG_DELETE(:ID_CALC_GROUP, :ID_CALC_PACK)';

  FQuery.ParamByName('ID_CALC_GROUP').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.FillFromGrouping(ID_Calc_Pack, ID,
  ID_Grouping: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CG_FILL_FROM_GROUPING(:ID_CALC_PACK, :ID_CALC_GROUP, :ID_GROUPING)';

  FQuery.ParamByName('ID_CALC_GROUP').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('ID_GROUPING').Value := ID_Grouping;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.FooterChange(ID_Calc_Pack, ID: Integer;
  Footer: string);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CG_FOOTER_CHANGE(:ID_CALC_GROUP, :ID_CALC_PACK, :FOOTER)';

  FQuery.ParamByName('ID_CALC_GROUP').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('FOOTER').Value := Footer;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

function TCalcGroup.GetList(ID_Calc_Pack: Integer): TStrings;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'SELECT ID, NAME FROM CALC_GROUP WHERE ID_CALC_PACK = :ID_CALC_PACK';
  FQuery.Open;
  Result := TStringList.Create;
  while not FQuery.Eof do
  begin
    Result.AddObject(FQuery.FieldByName('NAME').AsString, TObject(FQuery.FieldByName('ID').AsInteger));
    FQuery.Next;
  end;
  FQuery.Close;
end;

function TCalcGroup.GetName(ID_Calc_Pack, ID: Integer): string;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Text := 'SELECT NAME FROM CALC_GROUP WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID';
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('ID').Value := ID;
  FQuery.Open;
  if FQuery.IsEmpty then raise Exception.Create('Пакета с ID = ' + IntToStr(ID) + ' не существует');
  Result := FQuery.FieldByName('NAME').AsString;
end;

procedure TCalcGroup.HeaderChange(ID_Calc_Pack, ID: Integer;
  Header: string);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
  FQuery.SQL.Text := 'EXECUTE PROCEDURE CG_HEADER_CHANGE(:ID_CALC_GROUP, :ID_CALC_PACK, :HEADER)';

  FQuery.ParamByName('ID_CALC_GROUP').Value := ID;
  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('HEADER').Value := Header;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

//  Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.NameChange(ID_Calc_Pack, ID: Integer; Name: string);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CG_NAME_CHANGE(:ID, :ID_CALC_PACK, :NAME)');

  FQuery.ParamByName('ID_CALC_PACK').Value := ID_Calc_Pack;
  FQuery.ParamByName('ID').Value := ID;
  FQuery.ParamByName('NAME').Value := Name;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.ReCalculate(IDCalcGroup, IDCalcPack: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CG_RECALCULATE(:ID_CALC_GROUP, :ID_CALC_PACK)');

  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('ID_CALC_GROUP').Value := IDCalcGroup;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalcGroup.SubjectDelete(IDCalcPack, IDCalcGroup, ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE CGS_DELETE(:ID, :ID_CALC_GROUP, :ID_CALC_PACK)');

  FQuery.ParamByName('ID_CALC_PACK').Value := IDCalcPack;
  FQuery.ParamByName('ID_CALC_GROUP').Value := IDCalcGroup;
  FQuery.ParamByName('ID').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  //Result := FQuery.Current.Vars[0].AsInteger;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

{ TTeacherTitle }

procedure TTeacherTitle.Load(ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Text := 'SELECT tt.f_id_teacher, tt.f_id_kind, tt.f_date, tt.f_series_number FROM teacher_title tt WHERE tt.f_id = :p_id';
  FQuery.ParamByName('p_id').Value := ID;
  FQuery.Open;
  if FQuery.IsEmpty then raise Exception.Create('Записи TeacherTitle с ID = ' + IntToStr(ID) + ' не существует');
  FIDTeacher := FQuery.FieldByName('f_id_teacher').AsInteger;
  FIDKind := FQuery.FieldByName('f_id_kind').AsInteger;
  FDate := FQuery.FieldByName('f_date').AsDateTime;
  FSeriesNumber := FQuery.FieldByName('f_series_number').AsString;
end;

procedure TTeacherTitle.New(IDTeacher, IDTitleKind: Integer;
  DateDoc: TDateTime; SeriesNumber: String);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('EXECUTE PROCEDURE TT_ADD (:p_id_teacher, :p_id_kind, :p_date, :p_series_number)');

  FQuery.ParamByName('p_id_teacher').Value := IDTeacher;
  FQuery.ParamByName('p_id_kind').Value := IDTitleKind;
  FQuery.ParamByName('p_date').Value := DateDoc;
  FQuery.ParamByName('p_series_number').Value := SeriesNumber;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  FIDTeacher := IDTeacher;
  FIDKind := IDTitleKind;
  FDate := DateDoc;
  FSeriesNumber := SeriesNumber;
  FID := FQuery.Current.Vars[0].Value;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

{
procedure TTeacherTitle.SetDate(Date: TDateTime);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('UPDATE teacher_title TT SET tt.f_date = :p_date WHERE tt.f_id = :p_id');

  FQuery.ParamByName('p_date').Value := Date;
  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  FDate := Date;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TTeacherTitle.SetKind(IDKind: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('UPDATE teacher_title TT SET tt.f_id_kind = :p_id_kind WHERE tt.f_id = :p_id');

  FQuery.ParamByName('p_id_kind').Value := IDKind;
  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  FIDKind := IDKind;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TTeacherTitle.SetSeriesNumber(SeriesNumber: String);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('UPDATE teacher_title TT SET tt.f_series_number = :p_series_number WHERE tt.f_id = :p_id');

  FQuery.ParamByName('p_series_number').Value := SeriesNumber;
  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  FSeriesNumber := SeriesNumber;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;
}

procedure TTeacherTitle.SaveChanges;
begin


  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append(
    'UPDATE teacher_title TT ' +
    'SET tt.f_id_kind = :p_id_kind, ' +
    ' tt.f_date = :p_date, ' +
    ' tt.f_series_number = :p_series_number ' +
    'WHERE tt.f_id = :p_id'
  );

  FQuery.ParamByName('p_id_kind').Value := FID;
  FQuery.ParamByName('p_date').Value := SeriesNumber;
  FQuery.ParamByName('p_series_number').Value := SeriesNumber;
  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  FSeriesNumber := SeriesNumber;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TTeacherTitle.New;
begin
  Self.New(FIDTeacher, FIDKind, FDate, FSeriesNumber);  
end;

procedure TTeacherTitle.Remove(ID: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('DELETE FROM TEACHER_TITLE TT WHERE TT.F_ID = :p_id');

  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  FID := Null;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TTeacherTitle.Remove;
begin
  Remove(FID);
end;

{ TTeacherCategory }



{ TTeacherController }

procedure TTeacherController.setCatgory(ID: Integer; IDCategory: Variant);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('UPDATE "Teacher" T SET t.id_category = :p_id_category WHERE t.ID = :p_id');

  FQuery.ParamByName('p_id_category').Value := IDCategory;
  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TTeacherController.setTitle(ID: Integer; IDTitle: Variant);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('UPDATE "Teacher" T SET t.id_title = :p_id_title WHERE t.ID = :p_id');

  FQuery.ParamByName('p_id_title').Value := IDTitle;
  FQuery.ParamByName('p_id').Value := ID;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

{ TConstController }

procedure TConstController.addConstant(pCode, pName: String;
  pType: Integer);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('execute procedure const_add(:p_code, :p_name, :p_type);');

  FQuery.ParamByName('p_code').Value := pCode;
  FQuery.ParamByName('p_name').Value := pName;
  FQuery.ParamByName('p_type').Value := pType;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

function TConstController.getConstant(pCode: String): Double;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('select f_value from v_const_float where f_code = :p_code');

  FQuery.ParamByName('p_code').Value := pCode;
  FQuery.Open;
  result := FQuery.FieldByName('f_value').AsFloat
end;

procedure TConstController.setConstant(pCode: String; pValue: Double);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('execute procedure const_float_set(:p_code, :p_value);');

  FQuery.ParamByName('p_code').Value := pCode;
  FQuery.ParamByName('p_value').AsFloat := pValue;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

{ TCalendarController }

function TCalendarController.isDayStored(day: TDateTime): boolean;
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  result := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Append('select 1 from calendar c where c.the_day = :p_day');
  FQuery.ParamByName('p_day').Value := day;

  try
    FQuery.Open;
    result := not FQuery.IsEmpty;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalendarController.refresh(onMonth: TDateTime);
var
  day: TDateTime;
  i: integer;
  endDay: Integer;
begin
  day := StartOfTheMonth(onMonth);
  endDay := DaysInMonth(day);
  for i := 0 to endDay - 1 do
  begin
    if not isDayStored(day + i) then
      storeDay(day + i, DayOfTheWeek(day + i) in [7]);
  end;
end;

procedure TCalendarController.reverseDay(day: TDateTime);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append('update calendar c set c.is_holiday = case when c.is_holiday = ''Y'' then null else ''Y'' end where c.the_day = :p_day;');
  FQuery.ParamByName('p_day').Value := day;
  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalendarController.setHoliDay(day: TDateTime);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append(
    'update calendar c set c.is_holiday = ''Y'' ' +
    'where c.the_day = :p_the_day;'
  );
  FQuery.ParamByName('p_the_day').AsDate := day;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalendarController.setWorkDay(day: TDateTime);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append(
    'update calendar c set c.is_holiday = null ' +
    'where c.the_day = :p_the_day;'
  );
  FQuery.ParamByName('p_the_day').AsDate := day;

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;

procedure TCalendarController.storeDay(day: TDateTime; isHoliDay: boolean);
begin
  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;

  FQuery.SQL.Clear;
  FQuery.SQL.Append(
    'insert into calendar(the_day, is_holiday) ' +
    'values (:p_the_day, :p_is_holiday);'
  );
  FQuery.ParamByName('p_the_day').AsDate := day;
  if isHoliDay then
    FQuery.ParamByName('p_is_holiday').Value := 'Y';

  try
    FQuery.ExecSQL;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;

  if FQuery.Transaction.InTransaction then FQuery.Transaction.Commit;
end;



{ TDBWorker }

function TDBWorker.genID(generatorName: String): Integer;
begin
  FQuery.SQL.Clear;
  FQuery.SQL.Append('SELECT NEXT VALUE FOR ' + generatorName + '  FROM RDB$DATABASE;');
  try
    FQuery.Open;
    result := FQuery.Fields[0].AsInteger;
  except
    FQuery.Transaction.Rollback;
    raise;
  end;
end;

end.
