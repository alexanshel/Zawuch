object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 750
  Top = 265
  Height = 632
  Width = 713
  object ibDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:C:\Projects\db\zawuch.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'lc_ctype=WIN1251'
      'password=masterke')
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object ibTransaction: TIBTransaction
    DefaultDatabase = ibDatabase
    Left = 96
    Top = 8
  end
  object ibReadTransaction: TIBTransaction
    Active = True
    DefaultDatabase = ibDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 176
    Top = 8
  end
  object ibdsConst: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from CONSTANTS')
    SelectSQL.Strings = (
      'select * from CONSTANTS')
    Left = 528
    Top = 8
    object ibdsConstYTCOEF: TFloatField
      FieldName = 'YTCOEF'
      Origin = '"CONSTANTS"."YTCOEF"'
    end
    object ibdsConstOTCOEF: TFloatField
      FieldName = 'OTCOEF'
      Origin = '"CONSTANTS"."OTCOEF"'
    end
    object ibdsConstCTCOEF: TFloatField
      FieldName = 'CTCOEF'
      Origin = '"CONSTANTS"."CTCOEF"'
    end
    object ibdsConstSYSTEM_DATE: TDateField
      FieldName = 'SYSTEM_DATE'
      Origin = '"CONSTANTS"."SYSTEM_DATE"'
    end
    object ibdsConstVTEACH: TFloatField
      FieldName = 'VTEACH'
      Origin = '"CONSTANTS"."VTEACH"'
    end
    object ibdsConstVCONC: TFloatField
      FieldName = 'VCONC'
      Origin = '"CONSTANTS"."VCONC"'
    end
    object ibdsConstPASPORT_CODE: TIBStringField
      FieldName = 'PASPORT_CODE'
      Origin = '"CONSTANTS"."PASPORT_CODE"'
      Size = 50
    end
    object ibdsConstPASPORT_NAME: TIBStringField
      FieldName = 'PASPORT_NAME'
      Origin = '"CONSTANTS"."PASPORT_NAME"'
      Size = 256
    end
    object ibdsConstPASPORT_DIRECTOR_SIGN: TIBStringField
      FieldName = 'PASPORT_DIRECTOR_SIGN'
      Origin = '"CONSTANTS"."PASPORT_DIRECTOR_SIGN"'
      Size = 256
    end
    object ibdsConstPASPORT_TARIFFICATION_SIGN: TIBStringField
      FieldName = 'PASPORT_TARIFFICATION_SIGN'
      Origin = '"CONSTANTS"."PASPORT_TARIFFICATION_SIGN"'
      Size = 3000
    end
    object ibdsConstPASPORT_TAB_SIGN: TIBStringField
      FieldName = 'PASPORT_TAB_SIGN'
      Origin = '"CONSTANTS"."PASPORT_TAB_SIGN"'
      Size = 3000
    end
  end
  object ibdsFilial: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'SELECT * FROM "Filial" WHERE "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Filial"')
    Left = 592
    Top = 64
    object ibdsFilialID: TIntegerField
      FieldName = 'ID'
      Origin = '"Filial"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsFilialCode: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 4
      FieldName = 'Code'
      Origin = '"Filial"."Code"'
    end
    object ibdsFilialName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'Name'
      Origin = '"Filial"."Name"'
      Size = 30
    end
    object ibdsFilialInfo: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DisplayWidth = 35
      FieldName = 'Info'
      Origin = '"Filial"."Info"'
      Size = 50
    end
  end
  object ibdsTariff: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Tariff" where "Grade"=:"Grade"')
    SelectSQL.Strings = (
      'select * from "Tariff" ORDER BY "Grade"')
    Left = 656
    Top = 64
    object ibdsTariffGrade: TIntegerField
      DisplayLabel = #1056#1072#1079#1088#1103#1076
      DisplayWidth = 5
      FieldName = 'Grade'
      Origin = '"Tariff"."Grade"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsTariffSalary: TFloatField
      DisplayLabel = #1057#1090#1072#1074#1082#1072
      FieldName = 'Salary'
      Origin = '"Tariff"."Salary"'
    end
    object ibdsTariffInfo: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'Info'
      Origin = '"Tariff"."Info"'
      Size = 50
    end
  end
  object ibdsSubject: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'Select * From "Subject" Where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Subject" order by "Name"')
    Left = 24
    Top = 64
    object ibdsSubjectID: TIntegerField
      FieldName = 'ID'
      Origin = '"Subject"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsSubjectCode: TIntegerField
      FieldName = 'Code'
      Origin = '"Subject"."Code"'
      Visible = False
    end
    object ibdsSubjectName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'Name'
      Origin = '"Subject"."Name"'
      Size = 30
    end
    object ibdsSubjectSHORT_NAME: TIBStringField
      DisplayLabel = #1057#1086#1082#1088#1072#1097#1077#1085#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'SHORT_NAME'
      Origin = '"Subject"."SHORT_NAME"'
      Size = 150
    end
    object ibdsSubjectInfo: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
      DisplayWidth = 30
      FieldName = 'Info'
      Origin = '"Subject"."Info"'
      Size = 50
    end
  end
  object ibSQL: TIBSQL
    Database = ibDatabase
    Transaction = ibReadTransaction
    Left = 272
    Top = 8
  end
  object ibdsTeacher: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsTeacherCalcFields
    RefreshSQL.Strings = (
      'select * from "Teacher" where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select t.*'
      'from get_filtered_teachers(:filter_id) ft'
      '  left join v_teacher t on ft.teacher_id = t.id'
      'order by t."Name"')
    Left = 24
    Top = 120
    object ibdsTeacherID: TIntegerField
      FieldName = 'ID'
      Origin = '"Teacher"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsTeacherTAB_NUM: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      DisplayWidth = 4
      FieldName = 'TAB_NUM'
      Origin = '"Teacher"."TAB_NUM"'
    end
    object ibdsTeacherisWorking: TBooleanField
      DisplayLabel = #1056#1072#1073#1086#1090#1072#1077#1090
      FieldKind = fkCalculated
      FieldName = 'isWorking'
      Visible = False
      DisplayValues = '+;'
      Calculated = True
    end
    object ibdsTeacherName: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054'.'
      DisplayWidth = 30
      FieldName = 'Name'
      Origin = '"Teacher"."Name"'
      Size = 100
    end
    object ibdsTeacherFilialID: TIntegerField
      FieldName = 'FilialID'
      Origin = '"Teacher"."FilialID"'
      Visible = False
    end
    object ibdsTeacherSubjectID: TIntegerField
      FieldName = 'SubjectID'
      Origin = '"Teacher"."SubjectID"'
      Visible = False
    end
    object ibdsTeacherSubject: TStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'Subject'
      LookupDataSet = ibdsSubject
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'SubjectID'
      Lookup = True
    end
    object ibdsTeacherPost: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'Post'
      LookupDataSet = ibdsPost
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'PostID'
      Size = 30
      Lookup = True
    end
    object ibdsTeacherEducationID: TIntegerField
      DisplayWidth = 15
      FieldName = 'EducationID'
      Origin = '"Teacher"."EducationID"'
      Visible = False
    end
    object ibdsTeacherStageDate: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1077#1076#1089#1090#1072#1078#1072
      FieldName = 'StageDate'
      Origin = '"Teacher"."StageDate"'
      Visible = False
    end
    object ibdsTeacherCurrStage: TStringField
      DisplayLabel = #1057#1090#1072#1078
      FieldKind = fkCalculated
      FieldName = 'CurrStage'
      Size = 8
      Calculated = True
    end
    object ibdsTeacherStage: TStringField
      DisplayLabel = #1057#1090#1072#1078
      FieldKind = fkCalculated
      FieldName = 'Stage'
      Visible = False
      EditMask = '00\-00\-00;1;0'
      Size = 8
      Calculated = True
    end
    object ibdsTeacherBirthDate: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      FieldName = 'BirthDate'
      Origin = '"Teacher"."BirthDate"'
      Visible = False
    end
    object ibdsTeacherEnterDate: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      FieldName = 'EnterDate'
      Origin = '"Teacher"."EnterDate"'
      Visible = False
    end
    object ibdsTeacherReleaseDate: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
      FieldName = 'ReleaseDate'
      Origin = '"Teacher"."ReleaseDate"'
      Visible = False
    end
    object ibdsTeacherDiploma: TIBStringField
      DisplayLabel = #1044#1080#1087#1083#1086#1084
      DisplayWidth = 20
      FieldName = 'Diploma'
      Origin = '"Teacher"."Diploma"'
      Visible = False
      Size = 256
    end
    object ibdsTeacherAddress: TIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 30
      FieldName = 'Address'
      Origin = '"Teacher"."Address"'
      Visible = False
      Size = 256
    end
    object ibdsTeacherTelephone: TIBStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 10
      FieldName = 'Telephone'
      Origin = '"Teacher"."Telephone"'
      Visible = False
      Size = 50
    end
    object ibdsTeacherEducation: TStringField
      DisplayLabel = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'Education'
      LookupDataSet = ibdsEducation
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'EducationID'
      Lookup = True
    end
    object ibdsTeacherPostID: TIntegerField
      FieldName = 'PostID'
      Origin = '"Teacher"."PostID"'
      Visible = False
    end
    object ibdsTeacherFilial: TStringField
      FieldKind = fkLookup
      FieldName = 'Filial'
      LookupDataSet = ibdsFilial
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'FilialID'
      Visible = False
      Lookup = True
    end
    object ibdsTeacherSTAGE_Y: TSmallintField
      FieldName = 'STAGE_Y'
      Origin = '"Teacher"."STAGE_Y"'
      Visible = False
    end
    object ibdsTeacherSTAGE_M: TSmallintField
      FieldName = 'STAGE_M'
      Origin = '"Teacher"."STAGE_M"'
      Visible = False
    end
    object ibdsTeacherSTAGE_D: TSmallintField
      FieldName = 'STAGE_D'
      Origin = '"Teacher"."STAGE_D"'
      Visible = False
    end
    object ibdsTeacherCurrStageM: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CurrStageM'
      Visible = False
      Calculated = True
    end
    object ibdsTeacherCurrStageY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CurrStageY'
      Visible = False
      Calculated = True
    end
    object ibdsTeacherID_TITLE: TIntegerField
      FieldName = 'ID_TITLE'
      Origin = 'Teacher.ID_TITLE'
      Visible = False
    end
    object ibdsTeacherID_CATEGORY: TIntegerField
      FieldName = 'ID_CATEGORY'
      Origin = 'Teacher.ID_CATEGORY'
      Visible = False
    end
    object ibdsTeacherID_CATEGORY_CONC: TIntegerField
      FieldName = 'ID_CATEGORY_CONC'
      Origin = '"Teacher"."ID_CATEGORY_CONC"'
      Visible = False
    end
    object ibdsTeacherCATEGORY_T: TIBStringField
      FieldName = 'CATEGORY_T'
      Origin = '"V_TEACHER"."CATEGORY_T"'
      Size = 150
    end
    object ibdsTeacherCATEGORY_C: TIBStringField
      FieldName = 'CATEGORY_C'
      Origin = '"V_TEACHER"."CATEGORY_C"'
      Size = 150
    end
    object ibdsTeacherCATEGORY_T_DATE: TDateField
      FieldName = 'CATEGORY_T_DATE'
      Origin = '"V_TEACHER"."CATEGORY_T_DATE"'
    end
    object ibdsTeacherCATEGORY_C_DATE: TDateField
      FieldName = 'CATEGORY_C_DATE'
      Origin = '"V_TEACHER"."CATEGORY_C_DATE"'
    end
    object ibdsTeacherTITLE_NAME: TIBStringField
      FieldName = 'TITLE_NAME'
      Origin = '"V_TEACHER"."TITLE_NAME"'
      Size = 150
    end
    object ibdsTeacherQUALIFICATION_ID: TIntegerField
      FieldName = 'QUALIFICATION_ID'
      Origin = '"V_TEACHER"."QUALIFICATION_ID"'
    end
    object ibdsTeacherEDUCATION_2_ID: TIntegerField
      FieldName = 'EDUCATION_2_ID'
      Origin = '"V_TEACHER"."EDUCATION_2_ID"'
    end
    object ibdsTeacherQUALIFICATION_2_ID: TIntegerField
      FieldName = 'QUALIFICATION_2_ID'
      Origin = '"V_TEACHER"."QUALIFICATION_2_ID"'
    end
    object ibdsTeacherDIPLOMA_2: TIBStringField
      FieldName = 'DIPLOMA_2'
      Origin = '"V_TEACHER"."DIPLOMA_2"'
      Size = 256
    end
    object ibdsTeacherQUALIFICATION_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'QUALIFICATION_NAME'
      Origin = '"V_TEACHER"."QUALIFICATION_NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ibdsTeacherQUALIFICATION_2_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'QUALIFICATION_2_NAME'
      Origin = '"V_TEACHER"."QUALIFICATION_2_NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
  end
  object ibdsEducation: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Education" where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Education"')
    Left = 592
    Top = 8
    object ibdsEducationID: TIntegerField
      FieldName = 'ID'
      Origin = '"Education"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsEducationName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'Name'
      Origin = '"Education"."Name"'
      Size = 30
    end
  end
  object ibdsPost: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Post" where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Post"')
    Left = 656
    Top = 8
    object ibdsPostID: TIntegerField
      FieldName = 'ID'
      Origin = '"Post"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsPostName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'Name'
      Origin = '"Post"."Name"'
      Size = 30
    end
  end
  object ibqProc: TIBQuery
    Database = ibDatabase
    Transaction = ibTransaction
    Left = 328
    Top = 8
  end
  object ibdsStudent: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsStudentCalcFields
    RefreshSQL.Strings = (
      'select * from VIEW_STUDENT'
      'where ID=:ID'
      'order by Name')
    SelectSQL.Strings = (
      'select * from VIEW_STUDENT order by Name')
    Left = 264
    Top = 88
    object ibdsStudentID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIEW_STUDENT"."ID"'
      Required = True
      Visible = False
    end
    object ibdsStudentCODE: TIntegerField
      FieldName = 'CODE'
      Origin = '"VIEW_STUDENT"."CODE"'
      Visible = False
    end
    object ibdsStudentNAME: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = '"VIEW_STUDENT"."NAME"'
      Size = 50
    end
    object ibdsStudentFILIALID: TIntegerField
      FieldName = 'FILIALID'
      Origin = '"VIEW_STUDENT"."FILIALID"'
      Required = True
      Visible = False
    end
    object ibdsStudentFILIAL: TIBStringField
      DisplayLabel = #1060#1080#1083#1080#1072#1083
      DisplayWidth = 15
      FieldName = 'FILIAL'
      Origin = '"VIEW_STUDENT"."FILIAL"'
      Visible = False
      Size = 30
    end
    object ibdsStudentFINANCINGID: TSmallintField
      FieldName = 'FINANCINGID'
      Origin = '"VIEW_STUDENT"."FINANCINGID"'
      Visible = False
    end
    object ibdsStudentCLASS: TSmallintField
      DisplayLabel = #1050#1083'.'
      DisplayWidth = 3
      FieldName = 'CLASS'
      Origin = '"VIEW_STUDENT"."CLASS"'
    end
    object ibdsStudentCategoryStr: TStringField
      DisplayLabel = #1050#1072#1090'.'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'CategoryStr'
      Calculated = True
    end
    object ibdsStudentCURATORID: TIntegerField
      FieldName = 'CURATORID'
      Origin = '"VIEW_STUDENT"."CURATORID"'
      Visible = False
    end
    object ibdsStudentCURATOR: TIBStringField
      DisplayLabel = #1050#1091#1088#1072#1090#1086#1088
      DisplayWidth = 25
      FieldName = 'CURATOR'
      Origin = '"VIEW_STUDENT"."CURATOR"'
      Size = 150
    end
    object ibdsStudentAge: TIntegerField
      DisplayLabel = #1051#1077#1090
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'Age'
      Calculated = True
    end
    object ibdsStudentFinancing: TStringField
      DisplayLabel = #1060
      DisplayWidth = 1
      FieldKind = fkCalculated
      FieldName = 'Financing'
      Calculated = True
    end
    object ibdsStudentPERCENT: TSmallintField
      DisplayLabel = '%'
      DisplayWidth = 3
      FieldName = 'PERCENT'
      Origin = '"VIEW_STUDENT"."PERCENT"'
    end
    object ibdsStudentDEPARTMENTID: TIntegerField
      DisplayLabel = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      DisplayWidth = 25
      FieldName = 'DEPARTMENTID'
      Origin = '"VIEW_STUDENT"."DEPARTMENTID"'
      Required = True
      Visible = False
    end
    object ibdsStudentDEPARTMENT: TIBStringField
      DisplayLabel = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      DisplayWidth = 15
      FieldName = 'DEPARTMENT'
      Origin = '"VIEW_STUDENT"."DEPARTMENT"'
      Size = 30
    end
    object ibdsStudentSPECIALIZATION: TIBStringField
      DisplayLabel = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103
      DisplayWidth = 15
      FieldName = 'SPECIALIZATION'
      Origin = '"VIEW_STUDENT"."SPECIALIZATION"'
      Size = 30
    end
    object ibdsStudentStage: TStringField
      DisplayLabel = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Stage'
      Calculated = True
    end
    object ibdsStudentState: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'State'
      Visible = False
      Calculated = True
    end
    object ibdsStudentCATEGORY: TIntegerField
      FieldName = 'CATEGORY'
      Origin = '"VIEW_STUDENT"."CATEGORY"'
      Visible = False
    end
    object ibdsStudentPAY_SUM: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'PAY_SUM'
      Origin = '"VIEW_STUDENT"."PAY_SUM"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsStudentENTERDATE: TDateField
      FieldName = 'ENTERDATE'
      Origin = '"VIEW_STUDENT"."ENTERDATE"'
      Visible = False
    end
    object ibdsStudentBIRTHDATE: TDateField
      FieldName = 'BIRTHDATE'
      Origin = '"VIEW_STUDENT"."BIRTHDATE"'
      Visible = False
    end
    object ibdsStudentRELEASEDATE: TDateField
      FieldName = 'RELEASEDATE'
      Origin = '"VIEW_STUDENT"."RELEASEDATE"'
      Visible = False
    end
    object ibdsStudentRESTOREDATE: TDateField
      FieldName = 'RESTOREDATE'
      Origin = '"VIEW_STUDENT"."RESTOREDATE"'
      Visible = False
    end
    object ibdsStudentACADEMYBDATE: TDateField
      FieldName = 'ACADEMYBDATE'
      Origin = '"VIEW_STUDENT"."ACADEMYBDATE"'
      Visible = False
    end
    object ibdsStudentACADEMYEDATE: TDateField
      FieldName = 'ACADEMYEDATE'
      Origin = '"VIEW_STUDENT"."ACADEMYEDATE"'
      Visible = False
    end
    object ibdsStudentADDRESS: TIBStringField
      FieldName = 'ADDRESS'
      Origin = '"VIEW_STUDENT"."ADDRESS"'
      Visible = False
      Size = 256
    end
    object ibdsStudentTELEPHONE: TIBStringField
      FieldName = 'TELEPHONE'
      Origin = '"VIEW_STUDENT"."TELEPHONE"'
      Visible = False
      Size = 50
    end
    object ibdsStudentENTERINFO: TIBStringField
      FieldName = 'ENTERINFO'
      Origin = '"VIEW_STUDENT"."ENTERINFO"'
      Visible = False
      Size = 30
    end
    object ibdsStudentRELEASEINFO: TIBStringField
      FieldName = 'RELEASEINFO'
      Origin = '"VIEW_STUDENT"."RELEASEINFO"'
      Visible = False
      Size = 30
    end
    object ibdsStudentRESTOREINFO: TIBStringField
      FieldName = 'RESTOREINFO'
      Origin = '"VIEW_STUDENT"."RESTOREINFO"'
      Visible = False
      Size = 30
    end
    object ibdsStudentACADEMYBINFO: TIBStringField
      FieldName = 'ACADEMYBINFO'
      Origin = '"VIEW_STUDENT"."ACADEMYBINFO"'
      Visible = False
      Size = 30
    end
    object ibdsStudentACADEMYEINFO: TIBStringField
      FieldName = 'ACADEMYEINFO'
      Origin = '"VIEW_STUDENT"."ACADEMYEINFO"'
      Visible = False
      Size = 30
    end
    object ibdsStudentCURRICULUMID: TIntegerField
      FieldName = 'CURRICULUMID'
      Origin = '"VIEW_STUDENT"."CURRICULUMID"'
      Required = True
      Visible = False
    end
    object ibdsStudentSPECIALIZATIONID: TIntegerField
      FieldName = 'SPECIALIZATIONID'
      Origin = '"VIEW_STUDENT"."SPECIALIZATIONID"'
      Visible = False
    end
    object ibdsStudentPERIOD: TIntegerField
      FieldName = 'PERIOD'
      Origin = '"VIEW_STUDENT"."PERIOD"'
      Visible = False
    end
    object ibdsStudentRELEASED: TSmallintField
      FieldName = 'RELEASED'
      Origin = '"VIEW_STUDENT"."RELEASED"'
      Visible = False
    end
    object ibdsStudentACADEMY: TSmallintField
      FieldName = 'ACADEMY'
      Origin = '"VIEW_STUDENT"."ACADEMY"'
      Visible = False
    end
    object ibdsStudentSEX_ID: TIntegerField
      FieldName = 'SEX_ID'
      Origin = 'VIEW_STUDENT.SEX_ID'
      Visible = False
    end
    object ibdsStudentSEX_NAME: TIBStringField
      FieldName = 'SEX_NAME'
      Origin = 'VIEW_STUDENT.SEX_NAME'
      Size = 150
    end
    object ibdsStudentPERIOD_FOR_PRINT: TIBStringField
      FieldName = 'PERIOD_FOR_PRINT'
      Origin = '"VIEW_STUDENT"."PERIOD_FOR_PRINT"'
      Visible = False
      Size = 150
    end
  end
  object ibdsStudentPlan: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsStudentPlanCalcFields
    RefreshSQL.Strings = (
      'select * from VIEW_STUDENT_PLAN '
      'where Student_ID = :Student_ID and ID=:ID')
    SelectSQL.Strings = (
      'select * from VIEW_STUDENT_PLAN where Student_ID=:"ID"'
      'order by Num')
    Left = 264
    Top = 136
    object ibdsStudentPlanUseBool: TBooleanField
      DisplayLabel = #1048#1089#1087'.'
      FieldKind = fkCalculated
      FieldName = 'UseBool'
      DisplayValues = '+;'
      Calculated = True
    end
    object ibdsStudentPlanSUBJ_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 20
      FieldName = 'SUBJ_NAME'
      Origin = '"VIEW_STUDENT_PLAN"."SUBJ_NAME"'
      Size = 30
    end
    object ibdsStudentPlanCLASS_TIME: TFloatField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldKind = fkInternalCalc
      FieldName = 'CLASS_TIME'
      Origin = '"VIEW_STUDENT_PLAN"."CLASS_TIME"'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '0.00'
    end
    object ibdsStudentPlanTEACHER_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      DisplayWidth = 25
      FieldName = 'TEACHER_NAME'
      Origin = '"VIEW_STUDENT_PLAN"."TEACHER_NAME"'
      Size = 150
    end
    object ibdsStudentPlanSTUDENT_ID: TIntegerField
      FieldName = 'STUDENT_ID'
      Origin = '"VIEW_STUDENT_PLAN"."STUDENT_ID"'
      Required = True
      Visible = False
    end
    object ibdsStudentPlanUSE: TSmallintField
      FieldName = 'USE'
      Origin = '"VIEW_STUDENT_PLAN"."USE"'
      Visible = False
    end
    object ibdsStudentPlanNUM: TIntegerField
      FieldName = 'NUM'
      Origin = '"VIEW_STUDENT_PLAN"."NUM"'
      Visible = False
    end
    object ibdsStudentPlanID: TIntegerField
      FieldName = 'ID'
      Origin = '"VIEW_STUDENT_PLAN"."ID"'
      Required = True
      Visible = False
    end
    object ibdsStudentPlanSUBJ_ID: TIntegerField
      FieldName = 'SUBJ_ID'
      Origin = '"VIEW_STUDENT_PLAN"."SUBJ_ID"'
      Required = True
      Visible = False
    end
    object ibdsStudentPlanSUBJ_CODE: TIntegerField
      FieldName = 'SUBJ_CODE'
      Origin = '"VIEW_STUDENT_PLAN"."SUBJ_CODE"'
      Visible = False
    end
    object ibdsStudentPlanTEACHER_ID: TIntegerField
      FieldName = 'TEACHER_ID'
      Origin = '"VIEW_STUDENT_PLAN"."TEACHER_ID"'
      Visible = False
    end
    object ibdsStudentPlanGR_QTY: TSmallintField
      FieldName = 'GR_QTY'
      Origin = '"VIEW_STUDENT_PLAN"."GR_QTY"'
      Visible = False
    end
    object ibdsStudentPlanCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"VIEW_STUDENT_PLAN"."CURR_ID"'
      Visible = False
    end
  end
  object ibdsGrouping: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsGroupingCalcFields
    RefreshSQL.Strings = (
      'select * from GROUPING where id=:id')
    SelectSQL.Strings = (
      'select * from GROUPING')
    Left = 136
    Top = 168
    object ibdsGroupingID: TIntegerField
      FieldName = 'ID'
      Origin = '"GROUPING"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsGroupingNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'NAME'
      Origin = '"GROUPING"."NAME"'
      Size = 30
    end
    object ibdsGroupingFINANCING_ID: TIntegerField
      DisplayWidth = 2
      FieldName = 'FINANCING_ID'
      Origin = '"GROUPING"."FINANCING_ID"'
      Visible = False
    end
    object ibdsGroupingFinancing: TBooleanField
      DisplayLabel = #1060
      FieldKind = fkCalculated
      FieldName = 'Financing'
      DisplayValues = #1057';'#1041
      Calculated = True
    end
  end
  object ibdsGroupingDept: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsGroupingDeptCalcFields
    RefreshSQL.Strings = (
      
        'select * from GROUPING_DEPT where GROUPING_ID=:GROUPING_ID and D' +
        'EPARTMENT_ID=:DEPARTMENT_ID')
    SelectSQL.Strings = (
      'select * from VIEW_GROUPING_DEPT where GROUPING_ID=:ID')
    Left = 136
    Top = 264
    object ibdsGroupingDeptGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"GROUPING_DEPT"."GROUPING_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsGroupingDeptDepartment: TStringField
      DisplayLabel = #1054#1090#1076#1077#1083#1077#1085#1080#1077
      FieldKind = fkCalculated
      FieldName = 'Department'
      Size = 50
      Calculated = True
    end
    object ibdsGroupingDeptDEPT_ID: TIntegerField
      FieldName = 'DEPT_ID'
      Origin = '"VIEW_GROUPING_DEPT"."DEPT_ID"'
      Required = True
      Visible = False
    end
    object ibdsGroupingDeptDEPT_NAME: TIBStringField
      FieldName = 'DEPT_NAME'
      Origin = '"VIEW_GROUPING_DEPT"."DEPT_NAME"'
      Visible = False
      Size = 30
    end
    object ibdsGroupingDeptDEPT_INFO: TIBStringField
      FieldName = 'DEPT_INFO'
      Origin = '"VIEW_GROUPING_DEPT"."DEPT_INFO"'
      Visible = False
      Size = 50
    end
  end
  object ibdsDeptNotGrouping: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select distinct D.ID, D."Name"'
      'from "Department" D, "Financing" F'
      'where not exists'
      
        '      ( select * from grouping_dept GD join grouping G on GD.gro' +
        'uping_id = G.id and G.financing_id = :financing_id and GD.depart' +
        'ment_id = D.ID);')
    Left = 136
    Top = 320
    object ibdsDeptNotGroupingID: TIntegerField
      FieldName = 'ID'
      Origin = '"Department"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsDeptNotGroupingName: TIBStringField
      FieldName = 'Name'
      Origin = '"Department"."Name"'
      Size = 30
    end
  end
  object ibdsGroupingSubjCurrs: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * '
      'from GROUPING_SUBJ_CURR_ID')
    Left = 136
    Top = 216
    object ibdsGroupingSubjCurrsGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"GROUPING_SUBJ_CURR_NUM"."GROUPING_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsGroupingSubjCurrsCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"GROUPING_SUBJ_CURR_ID"."CURR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsGroupingSubjCurrsCURR_REC_ID: TIntegerField
      FieldName = 'CURR_REC_ID'
      Origin = '"GROUPING_SUBJ_CURR_ID"."CURR_REC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ibdsTariffication: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from TARIFFICATION T where T.doc_date=:doc_date')
    SelectSQL.Strings = (
      'select * from TARIFFICATION order by DOC_DATE')
    Left = 624
    Top = 152
    object ibdsTarifficationDOC_DATE: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'DOC_DATE'
      Origin = '"TARIFFICATION"."DOC_DATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsTarifficationINFO: TIBStringField
      DisplayLabel = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      FieldName = 'INFO'
      Origin = '"TARIFFICATION"."INFO"'
      Size = 50
    end
    object ibdsTarifficationCOEF_Y_TIME: TFloatField
      FieldName = 'COEF_Y_TIME'
      Origin = '"TARIFFICATION"."COEF_Y_TIME"'
      Visible = False
    end
    object ibdsTarifficationCOEF_O_TIME: TFloatField
      FieldName = 'COEF_O_TIME'
      Origin = '"TARIFFICATION"."COEF_O_TIME"'
      Visible = False
    end
    object ibdsTarifficationCOEF_C_TIME: TFloatField
      FieldName = 'COEF_C_TIME'
      Origin = '"TARIFFICATION"."COEF_C_TIME"'
      Visible = False
    end
    object ibdsTarifficationSYS_DATE: TDateField
      FieldName = 'SYS_DATE'
      Origin = '"TARIFFICATION"."SYS_DATE"'
      Visible = False
    end
  end
  object ibdsTarifficationRec: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsTarifficationRecCalcFields
    RefreshSQL.Strings = (
      'select * from TARIFFICATION_RECORD where doc_date=:doc_date and'
      'teacher_id=:teacher_id')
    SelectSQL.Strings = (
      'select * from TARIFFICATION_RECORD where doc_date=:doc_date '
      'order by DOC_DATE, T_NAME')
    Left = 624
    Top = 216
    object ibdsTarifficationRecTEACHER_ID: TIntegerField
      FieldName = 'TEACHER_ID'
      Origin = '"TARIFFICATION_RECORD"."TEACHER_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ibdsTarifficationRecT_NAME: TIBStringField
      DisplayLabel = #1060'.'#1048'.'#1054
      DisplayWidth = 25
      FieldName = 'T_NAME'
      Origin = '"TARIFFICATION_RECORD"."T_NAME"'
      Size = 50
    end
    object ibdsTarifficationRecT_SUBJ: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 15
      FieldName = 'T_SUBJ'
      Origin = '"TARIFFICATION_RECORD"."T_SUBJ"'
      Size = 30
    end
    object ibdsTarifficationRecT_POST: TIBStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      DisplayWidth = 15
      FieldName = 'T_POST'
      Origin = '"TARIFFICATION_RECORD"."T_POST"'
      Size = 30
    end
    object ibdsTarifficationRecT_EDUCATION: TIBStringField
      DisplayLabel = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      DisplayWidth = 12
      FieldName = 'T_EDUCATION'
      Origin = '"TARIFFICATION_RECORD"."T_EDUCATION"'
      Size = 30
    end
    object ibdsTarifficationRecT_STAGE_D: TSmallintField
      FieldName = 'T_STAGE_D'
      Origin = '"TARIFFICATION_RECORD"."T_STAGE_D"'
      Visible = False
    end
    object ibdsTarifficationRecStage: TStringField
      DisplayLabel = #1057#1090#1072#1078
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'Stage'
      Calculated = True
    end
    object ibdsTarifficationRecT_MAIN_GRADE: TSmallintField
      DisplayLabel = #1055#1077#1076'. '#1088'.'
      DisplayWidth = 3
      FieldName = 'T_MAIN_GRADE'
      Origin = '"TARIFFICATION_RECORD"."T_MAIN_GRADE"'
    end
    object ibdsTarifficationRecT_CONCERT_GRADE: TSmallintField
      DisplayLabel = #1050#1086#1085#1094'. '#1088'.'
      DisplayWidth = 3
      FieldName = 'T_CONCERT_GRADE'
      Origin = '"TARIFFICATION_RECORD"."T_CONCERT_GRADE"'
    end
    object ibdsTarifficationRecT_MAIN_SALARY: TFloatField
      DisplayLabel = #1055#1077#1076'. '#1089#1090'.'
      DisplayWidth = 10
      FieldName = 'T_MAIN_SALARY'
      Origin = '"TARIFFICATION_RECORD"."T_MAIN_SALARY"'
      currency = True
    end
    object ibdsTarifficationRecT_CONCERT_SALARY: TFloatField
      DisplayLabel = #1050#1086#1085#1094'. '#1089#1090'.'
      DisplayWidth = 10
      FieldName = 'T_CONCERT_SALARY'
      Origin = '"TARIFFICATION_RECORD"."T_CONCERT_SALARY"'
      currency = True
    end
    object ibdsTarifficationRecT_B_TIME_Y: TFloatField
      FieldName = 'T_B_TIME_Y'
      Origin = '"TARIFFICATION_RECORD"."T_B_TIME_Y"'
      Visible = False
      DisplayFormat = '0.00'
    end
    object ibdsTarifficationRecT_B_TIME_O: TFloatField
      FieldName = 'T_B_TIME_O'
      Origin = '"TARIFFICATION_RECORD"."T_B_TIME_O"'
      Visible = False
      DisplayFormat = '0.00'
    end
    object ibdsTarifficationRecT_B_TIME_C: TFloatField
      FieldName = 'T_B_TIME_C'
      Origin = '"TARIFFICATION_RECORD"."T_B_TIME_C"'
      Visible = False
      DisplayFormat = '0.00'
    end
    object ibdsTarifficationRecT_S_TIME_Y: TFloatField
      FieldName = 'T_S_TIME_Y'
      Origin = '"TARIFFICATION_RECORD"."T_S_TIME_Y"'
      Visible = False
      DisplayFormat = '0.00'
    end
    object ibdsTarifficationRecT_S_TIME_O: TFloatField
      FieldName = 'T_S_TIME_O'
      Origin = '"TARIFFICATION_RECORD"."T_S_TIME_O"'
      Visible = False
      DisplayFormat = '0.00'
    end
    object ibdsTarifficationRecT_S_TIME_C: TFloatField
      FieldName = 'T_S_TIME_C'
      Origin = '"TARIFFICATION_RECORD"."T_S_TIME_C"'
      Visible = False
      DisplayFormat = '0.00'
    end
    object ibdsTarifficationRecT_ADDINGS: TFloatField
      FieldName = 'T_ADDINGS'
      Origin = '"TARIFFICATION_RECORD"."T_ADDINGS"'
      Visible = False
      currency = True
    end
    object ibdsTarifficationRecDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = '"TARIFFICATION_RECORD"."DOC_DATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsTarifficationRecT_DIPLOMA: TIBStringField
      DisplayWidth = 30
      FieldName = 'T_DIPLOMA'
      Origin = '"TARIFFICATION_RECORD"."T_DIPLOMA"'
      Visible = False
      Size = 256
    end
    object ibdsTarifficationRecT_ENTER_DATE: TDateField
      FieldName = 'T_ENTER_DATE'
      Origin = '"TARIFFICATION_RECORD"."T_ENTER_DATE"'
      Visible = False
    end
    object ibdsTarifficationRecT_STAGE_Y: TSmallintField
      FieldName = 'T_STAGE_Y'
      Origin = '"TARIFFICATION_RECORD"."T_STAGE_Y"'
      Visible = False
    end
    object ibdsTarifficationRecT_STAGE_M: TSmallintField
      FieldName = 'T_STAGE_M'
      Origin = '"TARIFFICATION_RECORD"."T_STAGE_M"'
      Visible = False
    end
    object ibdsTarifficationRecSumB: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SumB'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecSumS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SumS'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecBMoneyY: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'BMoneyY'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecBMoneyO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'BMoneyO'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecBMoneyC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'BMoneyC'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecSMoneyY: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SMoneyY'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecSMoneyO: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SMoneyO'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecSMoneyC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SMoneyC'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecSUM: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SUM'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecCurrStageY: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CurrStageY'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecCurrStageM: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CurrStageM'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecCurrStageD: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CurrStageD'
      Visible = False
      Calculated = True
    end
    object ibdsTarifficationRecT_STAGE_DATE: TDateField
      FieldName = 'T_STAGE_DATE'
      Origin = '"TARIFFICATION_RECORD"."T_STAGE_DATE"'
      Visible = False
    end
    object ibdsTarifficationRecT_MAIN_GRADE_ADD: TSmallintField
      FieldName = 'T_MAIN_GRADE_ADD'
      Origin = '"TARIFFICATION_RECORD"."T_MAIN_GRADE_ADD"'
    end
    object ibdsTarifficationRecT_CONCERT_GRADE_ADD: TSmallintField
      FieldName = 'T_CONCERT_GRADE_ADD'
      Origin = '"TARIFFICATION_RECORD"."T_CONCERT_GRADE_ADD"'
    end
    object ibdsTarifficationRecT_MAIN_SALARY_ADD: TFloatField
      FieldName = 'T_MAIN_SALARY_ADD'
      Origin = '"TARIFFICATION_RECORD"."T_MAIN_SALARY_ADD"'
    end
    object ibdsTarifficationRecT_CONCERT_SALARY_ADD: TFloatField
      FieldName = 'T_CONCERT_SALARY_ADD'
      Origin = '"TARIFFICATION_RECORD"."T_CONCERT_SALARY_ADD"'
    end
  end
  object ibdsMainTab: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select mt.*, vmt.precence_qty '
      'from MAIN_TAB mt'
      
        '  left join V_MAIN_TAB_PART_1 vmt on vmt.teacher_id = mt.teacher' +
        '_id'
      'where mt.teacher_id=:teacher_id')
    SelectSQL.Strings = (
      'select mt.*, vmt.precence_qty '
      'from MAIN_TAB mt'
      
        '  left join V_MAIN_TAB_PART_1 vmt on vmt.teacher_id = mt.teacher' +
        '_id'
      'order by TEACHER_NAME')
    Left = 624
    Top = 280
    object ibdsMainTabTEACHER_ID: TIntegerField
      FieldName = 'TEACHER_ID'
      Origin = '"MAIN_TAB"."TEACHER_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsMainTabTAB_NUM: TIntegerField
      DisplayLabel = #1058#1072#1073'. '#8470
      DisplayWidth = 7
      FieldName = 'Tab_num'
      Origin = '"MAIN_TAB"."TAB_NUM"'
    end
    object ibdsMainTabTEACHER_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      DisplayWidth = 25
      FieldName = 'TEACHER_NAME'
      Origin = '"MAIN_TAB"."TEACHER_NAME"'
      Size = 150
    end
    object ibdsMainTabB_Y_TIME: TFloatField
      DisplayLabel = #1073'. '#1084#1083'.'
      DisplayWidth = 7
      FieldName = 'B_Y_TIME'
      Origin = '"MAIN_TAB"."B_Y_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabB_O_TIME: TFloatField
      DisplayLabel = #1073'. '#1089#1090'.'
      DisplayWidth = 7
      FieldName = 'B_O_TIME'
      Origin = '"MAIN_TAB"."B_O_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabB_C_TIME: TFloatField
      DisplayLabel = #1073'. '#1082#1085'.'
      DisplayWidth = 7
      FieldName = 'B_C_TIME'
      Origin = '"MAIN_TAB"."B_C_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabSIGN: TIntegerField
      FieldName = 'SIGN'
      Origin = '"MAIN_TAB"."SIGN"'
      Visible = False
    end
    object ibdsMainTabCOMMENTS: TIBStringField
      FieldName = 'COMMENTS'
      Origin = '"MAIN_TAB"."COMMENTS"'
      Size = 256
    end
    object ibdsMainTabSWP_Y_TIME: TFloatField
      FieldName = 'SWP_Y_TIME'
      Origin = '"MAIN_TAB"."SWP_Y_TIME"'
    end
    object ibdsMainTabSWP_O_TIME: TFloatField
      FieldName = 'SWP_O_TIME'
      Origin = '"MAIN_TAB"."SWP_O_TIME"'
    end
    object ibdsMainTabSWP_C_TIME: TFloatField
      FieldName = 'SWP_C_TIME'
      Origin = '"MAIN_TAB"."SWP_C_TIME"'
    end
    object ibdsMainTabPRECENCE_QTY: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'PRECENCE_QTY'
      Origin = '"V_MAIN_TAB_PART_1"."PRECENCE_QTY"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object ibdsRepTab: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from REP_TAB where ID = :ID')
    SelectSQL.Strings = (
      'select * from REP_TAB order by Teacher_name')
    Left = 624
    Top = 352
    object ibdsRepTabTEACHER_ID: TIntegerField
      FieldName = 'TEACHER_ID'
      Origin = '"REP_TAB"."TEACHER_ID"'
      Required = True
      Visible = False
    end
    object ibdsRepTabTAB_NUM: TIntegerField
      DisplayWidth = 7
      FieldName = 'TAB_NUM'
      Origin = '"REP_TAB"."TAB_NUM"'
    end
    object ibdsRepTabTEACHER_NAME: TIBStringField
      DisplayWidth = 25
      FieldName = 'TEACHER_NAME'
      Origin = '"REP_TAB"."TEACHER_NAME"'
      Size = 150
    end
    object ibdsRepTabDAYS_QTY: TIntegerField
      DisplayWidth = 5
      FieldName = 'DAYS_QTY'
      Origin = '"REP_TAB"."DAYS_QTY"'
    end
    object ibdsRepTabB_Y_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'B_Y_TIME'
      Origin = '"REP_TAB"."B_Y_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabB_O_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'B_O_TIME'
      Origin = '"REP_TAB"."B_O_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabB_C_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'B_C_TIME'
      Origin = '"REP_TAB"."B_C_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabS_Y_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'S_Y_TIME'
      Origin = '"REP_TAB"."S_Y_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabS_O_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'S_O_TIME'
      Origin = '"REP_TAB"."S_O_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabS_C_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'S_C_TIME'
      Origin = '"REP_TAB"."S_C_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabBEGIN_Y_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'BEGIN_Y_TIME'
      Origin = '"REP_TAB"."BEGIN_Y_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabBEGIN_C_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'BEGIN_C_TIME'
      Origin = '"REP_TAB"."BEGIN_C_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabT_DATE: TDateField
      DisplayWidth = 8
      FieldName = 'T_DATE'
      Origin = '"REP_TAB"."T_DATE"'
      DisplayFormat = 'mm.yyyy'
    end
    object ibdsRepTabSIGN: TIntegerField
      FieldName = 'SIGN'
      Origin = '"REP_TAB"."SIGN"'
      Visible = False
    end
    object ibdsRepTabID: TIntegerField
      FieldName = 'ID'
      Origin = '"REP_TAB"."ID"'
      Required = True
      Visible = False
    end
  end
  object ibdsRepTabExt: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from rep_tab_ext rte where rte.rec_time = :rec_time')
    SelectSQL.Strings = (
      'select * from REP_TAB_EXT order by teacher_name')
    Left = 624
    Top = 392
    object ibdsRepTabExtREC_TIME: TDateTimeField
      FieldName = 'REC_TIME'
      Origin = '"REP_TAB_EXT"."REC_TIME"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsRepTabExtTEACHER_NAME: TIBStringField
      FieldName = 'TEACHER_NAME'
      Origin = '"REP_TAB_EXT"."TEACHER_NAME"'
      Size = 150
    end
    object ibdsRepTabExtTAB_MONTH: TDateField
      FieldName = 'TAB_MONTH'
      Origin = '"REP_TAB_EXT"."TAB_MONTH"'
      DisplayFormat = 'mmmm'
    end
    object ibdsRepTabExtY_T: TFloatField
      FieldName = 'Y_T'
      Origin = '"REP_TAB_EXT"."Y_T"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtO_T: TFloatField
      FieldName = 'O_T'
      Origin = '"REP_TAB_EXT"."O_T"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtC_T: TFloatField
      FieldName = 'C_T'
      Origin = '"REP_TAB_EXT"."C_T"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtY_T_OOD: TFloatField
      FieldName = 'Y_T_OOD'
      Origin = '"REP_TAB_EXT"."Y_T_OOD"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtO_T_OOD: TFloatField
      FieldName = 'O_T_OOD'
      Origin = '"REP_TAB_EXT"."O_T_OOD"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtC_T_OOD: TFloatField
      FieldName = 'C_T_OOD'
      Origin = '"REP_TAB_EXT"."C_T_OOD"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtY_T_FILIAL: TFloatField
      FieldName = 'Y_T_FILIAL'
      Origin = '"REP_TAB_EXT"."Y_T_FILIAL"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtO_T_FILIAL: TFloatField
      FieldName = 'O_T_FILIAL'
      Origin = '"REP_TAB_EXT"."O_T_FILIAL"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExtC_T_FILIAL: TFloatField
      FieldName = 'C_T_FILIAL'
      Origin = '"REP_TAB_EXT"."C_T_FILIAL"'
      DisplayFormat = '0.00'
    end
  end
  object ibdsGroupingCurr: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from VIEW_GROUPING_CURR  where grouping_id=:id'
      '')
    Left = 256
    Top = 336
    object ibdsGroupingCurrGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"VIEW_GROUPING_CURR"."GROUPING_ID"'
      Required = True
      Visible = False
    end
    object ibdsGroupingCurrCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"VIEW_GROUPING_CURR"."CURR_ID"'
      Required = True
      Visible = False
    end
    object ibdsGroupingCurrCURR_NAME: TIBStringField
      DisplayLabel = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
      FieldName = 'CURR_NAME'
      Origin = '"VIEW_GROUPING_CURR"."CURR_NAME"'
      Size = 30
    end
  end
  object ibdsGroupCurrSubj: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from view_group_curr_subj VGCS'
      'where VGCS.curr_id=:curr_id'
      'order by VGCS.CURR_REC_NUM')
    Left = 256
    Top = 392
    object ibdsGroupCurrSubjCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"VIEW_GROUP_CURR_SUBJ"."CURR_ID"'
      Required = True
      Visible = False
    end
    object ibdsGroupCurrSubjCURR_REC_ID: TIntegerField
      FieldName = 'CURR_REC_ID'
      Origin = '"VIEW_GROUP_CURR_SUBJ"."CURR_REC_ID"'
      Required = True
      Visible = False
    end
    object ibdsGroupCurrSubjSUBJECT_ID: TIntegerField
      FieldName = 'SUBJECT_ID'
      Origin = '"VIEW_GROUP_CURR_SUBJ"."SUBJECT_ID"'
      Visible = False
    end
    object ibdsGroupCurrSubjSUBJECT_NAME: TIBStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1086#1074#1086#1081' '#1087#1088#1077#1076#1084#1077#1090
      FieldName = 'SUBJECT_NAME'
      Origin = '"VIEW_GROUP_CURR_SUBJ"."SUBJECT_NAME"'
      Size = 30
    end
    object ibdsGroupCurrSubjGR_QTY: TSmallintField
      DisplayLabel = #1050'-'#1074#1086' '#1091#1095'.'
      DisplayWidth = 10
      FieldName = 'GR_QTY'
      Origin = '"VIEW_GROUP_CURR_SUBJ"."GR_QTY"'
    end
    object ibdsGroupCurrSubjSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = '"VIEW_GROUP_CURR_SUBJ"."SUBJECT_CODE"'
      Visible = False
    end
  end
  object ibdsGroupingSubjs: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from view_grouping_subjs VGS'
      'where  VGS.grouping_id=:grouping_id and'
      ' VGS.grouping_subj_id=:grouping_subj_id')
    Left = 256
    Top = 448
    object ibdsGroupingSubjsGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"VIEW_GROUPING_SUBJS"."GROUPING_ID"'
      Required = True
    end
    object ibdsGroupingSubjsGROUPING_SUBJ_ID: TIntegerField
      FieldName = 'GROUPING_SUBJ_ID'
      Origin = '"VIEW_GROUPING_SUBJS"."GROUPING_SUBJ_ID"'
      Required = True
    end
    object ibdsGroupingSubjsCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"VIEW_GROUPING_SUBJS"."CURR_ID"'
      Required = True
    end
    object ibdsGroupingSubjsCURR_NAME: TIBStringField
      FieldName = 'CURR_NAME'
      Origin = '"VIEW_GROUPING_SUBJS"."CURR_NAME"'
      Size = 30
    end
    object ibdsGroupingSubjsCURR_REC_ID: TIntegerField
      FieldName = 'CURR_REC_ID'
      Origin = '"VIEW_GROUPING_SUBJS"."CURR_REC_ID"'
      Required = True
    end
    object ibdsGroupingSubjsSUBJECT_ID: TIntegerField
      FieldName = 'SUBJECT_ID'
      Origin = '"VIEW_GROUPING_SUBJS"."SUBJECT_ID"'
    end
    object ibdsGroupingSubjsSUBJECT_NAME: TIBStringField
      FieldName = 'SUBJECT_NAME'
      Origin = '"VIEW_GROUPING_SUBJS"."SUBJECT_NAME"'
      Size = 30
    end
    object ibdsGroupingSubjsSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = '"VIEW_GROUPING_SUBJS"."SUBJECT_CODE"'
    end
    object ibdsGroupingSubjsSUBJECT_GR_QTY: TSmallintField
      FieldName = 'SUBJECT_GR_QTY'
      Origin = '"VIEW_GROUPING_SUBJS"."SUBJECT_GR_QTY"'
    end
  end
  object ibdsGroupingSubj: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      
        'select GROUPING_ID, ID GR_SUBJ_ID, NAME GR_SUBJ_NAME, GROUP_QTY ' +
        'GR_QTY, CODE GR_SUBJ_CODE, POS '
      'from GROUPING_SUBJ GS '
      'where GS.grouping_id=:grouping_id and GS.ID=:GR_SUBJ_ID')
    SelectSQL.Strings = (
      
        'select GROUPING_ID, ID GR_SUBJ_ID, NAME GR_SUBJ_NAME, GROUP_QTY ' +
        'GR_QTY, CODE GR_SUBJ_CODE, POS from GROUPING_SUBJ GS '
      'where GS.grouping_id=:id'
      'order by POS')
    Left = 256
    Top = 288
    object ibdsGroupingSubjGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"GROUPING_SUBJ"."GROUPING_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsGroupingSubjGR_SUBJ_ID: TIntegerField
      FieldName = 'GR_SUBJ_ID'
      Origin = '"GROUPING_SUBJ"."ID"'
      Required = True
      Visible = False
    end
    object ibdsGroupingSubjGR_SUBJ_NAME: TIBStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1086#1074#1086#1081' '#1087#1088#1077#1076#1084#1077#1090
      FieldName = 'GR_SUBJ_NAME'
      Origin = '"GROUPING_SUBJ"."NAME"'
      Size = 30
    end
    object ibdsGroupingSubjGR_QTY: TIntegerField
      DisplayLabel = #1050#1086#1083'-'#1074#1086' '#1091#1095#1077#1085#1080#1082#1086#1074
      FieldName = 'GR_QTY'
      Origin = '"GROUPING_SUBJ"."GROUP_QTY"'
    end
    object ibdsGroupingSubjGR_SUBJ_CODE: TSmallintField
      FieldName = 'GR_SUBJ_CODE'
      Origin = '"GROUPING_SUBJ"."CODE"'
      Visible = False
    end
    object ibdsGroupingSubjPOS: TIntegerField
      FieldName = 'POS'
      Origin = '"GROUPING_SUBJ"."POS"'
      Visible = False
    end
  end
  object ibdsTeacherGroupClss: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsTeacherGroupClssCalcFields
    RefreshSQL.Strings = (
      'select *'
      'from proc_all_teacher_group(:grouping_id, :teacher_id)')
    SelectSQL.Strings = (
      'select *'
      'from proc_all_teacher_group(null, null)'
      'order by teacher, teacher_id, grouping_name')
    Left = 48
    Top = 384
    object ibdsTeacherGroupClssGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GROUPING_ID"'
      Visible = False
    end
    object ibdsTeacherGroupClssGROUPING_NAME: TIBStringField
      DisplayLabel = #1057#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1100
      FieldName = 'GROUPING_NAME'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GROUPING_NAME"'
      Size = 30
    end
    object ibdsTeacherGroupClssTEACHER_ID: TIntegerField
      FieldName = 'TEACHER_ID'
      Origin = '"PROC_ALL_TEACHER_GROUP"."TEACHER_ID"'
      Visible = False
    end
    object ibdsTeacherGroupClssTeacherShortName: TStringField
      DisplayLabel = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      FieldKind = fkCalculated
      FieldName = 'TeacherShortName'
      Calculated = True
    end
    object ibdsTeacherGroupClssTEACHER: TIBStringField
      DisplayLabel = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
      FieldName = 'TEACHER'
      Origin = '"PROC_ALL_TEACHER_GROUP"."TEACHER"'
      Visible = False
      Size = 50
    end
    object ibdsTeacherGroupClssGR_QTY_0: TIntegerField
      DisplayLabel = #1043#1088'. 0'
      DisplayWidth = 4
      FieldName = 'GR_QTY_0'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_0"'
    end
    object ibdsTeacherGroupClssGR_QTY_1: TIntegerField
      DisplayLabel = #1043#1088'. 1'
      DisplayWidth = 4
      FieldName = 'GR_QTY_1'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_1"'
    end
    object ibdsTeacherGroupClssGR_QTY_2: TIntegerField
      DisplayLabel = #1043#1088'. 2'
      DisplayWidth = 4
      FieldName = 'GR_QTY_2'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_2"'
    end
    object ibdsTeacherGroupClssGR_QTY_3: TIntegerField
      DisplayLabel = #1043#1088'. 3'
      DisplayWidth = 4
      FieldName = 'GR_QTY_3'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_3"'
    end
    object ibdsTeacherGroupClssGR_QTY_4: TIntegerField
      DisplayLabel = #1043#1088'. 4'
      DisplayWidth = 4
      FieldName = 'GR_QTY_4'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_4"'
    end
    object ibdsTeacherGroupClssGR_QTY_5: TIntegerField
      DisplayLabel = #1043#1088'. 5'
      DisplayWidth = 4
      FieldName = 'GR_QTY_5'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_5"'
    end
    object ibdsTeacherGroupClssGR_QTY_6: TIntegerField
      DisplayLabel = #1043#1088'. 6'
      DisplayWidth = 4
      FieldName = 'GR_QTY_6'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_6"'
    end
    object ibdsTeacherGroupClssGR_QTY_7: TIntegerField
      DisplayLabel = #1043#1088'. 7'
      DisplayWidth = 4
      FieldName = 'GR_QTY_7'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_7"'
    end
    object ibdsTeacherGroupClssGR_QTY_8: TIntegerField
      DisplayLabel = #1043#1088'. 8'
      DisplayWidth = 4
      FieldName = 'GR_QTY_8'
      Origin = '"PROC_ALL_TEACHER_GROUP"."GR_QTY_8"'
    end
    object ibdsTeacherGroupClssGrSum: TIntegerField
      DisplayLabel = #1042#1089#1077#1075#1086
      FieldKind = fkCalculated
      FieldName = 'GrSum'
      Calculated = True
    end
  end
  object ibdsGroupingSubjClss: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select *'
      
        'from PROC_GET_TEACHER_GROUP_W_ST_QTY(:grouping_id, :teacher_id, ' +
        ':gr_subj_id)')
    SelectSQL.Strings = (
      'select *'
      
        'from PROC_GET_TEACHER_GROUP_W_ST_QTY(:grouping_id, :teacher_id, ' +
        'null)')
    Left = 48
    Top = 440
    object ibdsGroupingSubjClssGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."GROUPING_ID"'
      Visible = False
    end
    object ibdsGroupingSubjClssGR_SUBJ_ID: TIntegerField
      FieldName = 'GR_SUBJ_ID'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."GR_SUBJ_ID"'
      Visible = False
    end
    object ibdsGroupingSubjClssGR_SUBJ_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      FieldName = 'GR_SUBJ_NAME'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."GR_SUBJ_NAME"'
      Size = 30
    end
    object ibdsGroupingSubjClssGR_SUBJ_CODE: TIntegerField
      FieldName = 'GR_SUBJ_CODE'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."GR_SUBJ_CODE"'
      Visible = False
    end
    object ibdsGroupingSubjClssGR_QTY: TIntegerField
      DisplayLabel = #1043#1088'.'
      DisplayWidth = 3
      FieldName = 'GR_QTY'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."GR_QTY"'
    end
    object ibdsGroupingSubjClssG_QTY_0: TIntegerField
      DisplayLabel = #1043#1088'. 0'
      DisplayWidth = 3
      FieldName = 'G_QTY_0'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_0"'
    end
    object ibdsGroupingSubjClssS_QTY_0: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_0'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_0"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_1: TIntegerField
      DisplayLabel = #1043#1088'. 1'
      DisplayWidth = 3
      FieldName = 'G_QTY_1'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_1"'
    end
    object ibdsGroupingSubjClssS_QTY_1: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_1'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_1"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_2: TIntegerField
      DisplayLabel = #1043#1088'. 2'
      DisplayWidth = 3
      FieldName = 'G_QTY_2'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_2"'
    end
    object ibdsGroupingSubjClssS_QTY_2: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_2'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_2"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_3: TIntegerField
      DisplayLabel = #1043#1088'. 3'
      DisplayWidth = 3
      FieldName = 'G_QTY_3'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_3"'
    end
    object ibdsGroupingSubjClssS_QTY_3: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_3'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_3"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_4: TIntegerField
      DisplayLabel = #1043#1088'. 4'
      DisplayWidth = 3
      FieldName = 'G_QTY_4'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_4"'
    end
    object ibdsGroupingSubjClssS_QTY_4: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_4'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_4"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_5: TIntegerField
      DisplayLabel = #1043#1088'. 5'
      DisplayWidth = 3
      FieldName = 'G_QTY_5'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_5"'
    end
    object ibdsGroupingSubjClssS_QTY_5: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_5'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_5"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_6: TIntegerField
      DisplayLabel = #1043#1088'. 6'
      DisplayWidth = 3
      FieldName = 'G_QTY_6'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_6"'
    end
    object ibdsGroupingSubjClssS_QTY_6: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_6'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_6"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_7: TIntegerField
      DisplayLabel = #1043#1088'. 7'
      DisplayWidth = 3
      FieldName = 'G_QTY_7'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_7"'
    end
    object ibdsGroupingSubjClssS_QTY_7: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_7'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_7"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssG_QTY_8: TIntegerField
      DisplayLabel = #1043#1088'. 8'
      DisplayWidth = 3
      FieldName = 'G_QTY_8'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."G_QTY_8"'
    end
    object ibdsGroupingSubjClssS_QTY_8: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'S_QTY_8'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."S_QTY_8"'
      ReadOnly = True
    end
    object ibdsGroupingSubjClssTEACHER_ID: TIntegerField
      FieldName = 'TEACHER_ID'
      Origin = '"PROC_GET_TEACHER_GROUP_W_ST_QTY"."TEACHER_ID"'
      Visible = False
    end
  end
  object ibdsReportParam: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from REPORT_PARAM')
    Left = 624
    Top = 488
    object ibdsReportParamID: TIntegerField
      FieldName = 'ID'
      Origin = '"REPORT_PARAM"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsReportParamNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"REPORT_PARAM"."NAME"'
      Size = 30
    end
    object ibdsReportParamPAGE_ORIENT: TSmallintField
      FieldName = 'PAGE_ORIENT'
      Origin = '"REPORT_PARAM"."PAGE_ORIENT"'
    end
    object ibdsReportParamM_LEFT: TIntegerField
      FieldName = 'M_LEFT'
      Origin = '"REPORT_PARAM"."M_LEFT"'
    end
    object ibdsReportParamM_RIGHT: TIntegerField
      FieldName = 'M_RIGHT'
      Origin = '"REPORT_PARAM"."M_RIGHT"'
    end
    object ibdsReportParamM_TOP: TIntegerField
      FieldName = 'M_TOP'
      Origin = '"REPORT_PARAM"."M_TOP"'
    end
    object ibdsReportParamM_BOTTOM: TIntegerField
      FieldName = 'M_BOTTOM'
      Origin = '"REPORT_PARAM"."M_BOTTOM"'
    end
    object ibdsReportParamSIZES_1: TIBStringField
      FieldName = 'SIZES_1'
      Origin = '"REPORT_PARAM"."SIZES_1"'
      Size = 150
    end
    object ibdsReportParamSIZES_2: TIBStringField
      FieldName = 'SIZES_2'
      Origin = '"REPORT_PARAM"."SIZES_2"'
      Size = 150
    end
    object ibdsReportParamSIZES_3: TIBStringField
      FieldName = 'SIZES_3'
      Origin = '"REPORT_PARAM"."SIZES_3"'
      Size = 150
    end
  end
  object ibdsTeacherFilter: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from VIEW_TEACHER_FILTER where id=:id')
    SelectSQL.Strings = (
      'select * from VIEW_TEACHER_FILTER')
    Left = 120
    Top = 120
    object ibdsTeacherFilterID: TIntegerField
      FieldName = 'ID'
    end
    object ibdsTeacherFilterNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"VIEW_TEACHER_FILTER"."NAME"'
      Size = 150
    end
    object ibdsTeacherFilterMAIN_SUBJ_ID: TIntegerField
      FieldName = 'MAIN_SUBJ_ID'
      Origin = '"VIEW_TEACHER_FILTER"."MAIN_SUBJ_ID"'
    end
    object ibdsTeacherFilterMAIN_SUBJ_NAME: TIBStringField
      FieldName = 'MAIN_SUBJ_NAME'
      Origin = '"VIEW_TEACHER_FILTER"."MAIN_SUBJ_NAME"'
      Size = 150
    end
    object ibdsTeacherFilterMAIN_GRADE: TIntegerField
      FieldName = 'MAIN_GRADE'
      Origin = '"VIEW_TEACHER_FILTER"."MAIN_GRADE"'
    end
    object ibdsTeacherFilterCONC_GRADE: TIntegerField
      FieldName = 'CONC_GRADE'
      Origin = '"VIEW_TEACHER_FILTER"."CONC_GRADE"'
    end
    object ibdsTeacherFilterFILIAL_ID: TIntegerField
      FieldName = 'FILIAL_ID'
      Origin = '"VIEW_TEACHER_FILTER"."FILIAL_ID"'
    end
    object ibdsTeacherFilterFILIAL_NAME: TIBStringField
      FieldName = 'FILIAL_NAME'
      Origin = '"VIEW_TEACHER_FILTER"."FILIAL_NAME"'
      Size = 150
    end
    object ibdsTeacherFilterSTATE: TIntegerField
      FieldName = 'STATE'
      Origin = '"VIEW_TEACHER_FILTER"."STATE"'
    end
    object ibdsTeacherFilterSTAGE_B: TIntegerField
      FieldName = 'STAGE_B'
      Origin = '"VIEW_TEACHER_FILTER"."STAGE_B"'
    end
    object ibdsTeacherFilterSTAGE_E: TIntegerField
      FieldName = 'STAGE_E'
      Origin = '"VIEW_TEACHER_FILTER"."STAGE_E"'
    end
    object ibdsTeacherFilterBIRTH_D_B: TDateField
      FieldName = 'BIRTH_D_B'
      Origin = '"VIEW_TEACHER_FILTER"."BIRTH_D_B"'
    end
    object ibdsTeacherFilterBIRTH_D_E: TDateField
      FieldName = 'BIRTH_D_E'
      Origin = '"VIEW_TEACHER_FILTER"."BIRTH_D_E"'
    end
    object ibdsTeacherFilterENTER_D_B: TDateField
      FieldName = 'ENTER_D_B'
      Origin = '"VIEW_TEACHER_FILTER"."ENTER_D_B"'
    end
    object ibdsTeacherFilterENTER_D_E: TDateField
      FieldName = 'ENTER_D_E'
      Origin = '"VIEW_TEACHER_FILTER"."ENTER_D_E"'
    end
    object ibdsTeacherFilterRELEASE_D_B: TDateField
      FieldName = 'RELEASE_D_B'
      Origin = '"VIEW_TEACHER_FILTER"."RELEASE_D_B"'
    end
    object ibdsTeacherFilterRELEASE_D_E: TDateField
      FieldName = 'RELEASE_D_E'
      Origin = '"VIEW_TEACHER_FILTER"."RELEASE_D_E"'
    end
    object ibdsTeacherFilterSTAGE_B_M: TIntegerField
      FieldName = 'STAGE_B_M'
      Origin = '"VIEW_TEACHER_FILTER"."STAGE_B_M"'
    end
    object ibdsTeacherFilterSTAGE_E_M: TIntegerField
      FieldName = 'STAGE_E_M'
      Origin = '"VIEW_TEACHER_FILTER"."STAGE_E_M"'
    end
    object ibdsTeacherFilterAGE_B: TIntegerField
      FieldName = 'AGE_B'
      Origin = '"VIEW_TEACHER_FILTER"."AGE_B"'
    end
    object ibdsTeacherFilterAGE_E: TIntegerField
      FieldName = 'AGE_E'
      Origin = '"VIEW_TEACHER_FILTER"."AGE_E"'
    end
  end
  object ibds: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    Left = 152
    Top = 384
  end
  object ibdsTeacherGroupSubj: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      
        'select GS.ID, GS.name, GS.Code, GROUPING_ID, GROUP_QTY from GROU' +
        'PING_SUBJ GS'
      'where GROUPING_ID=:ID')
    Left = 32
    Top = 272
    object ibdsTeacherGroupSubjID: TIntegerField
      FieldName = 'ID'
      Origin = '"GROUPING_SUBJ"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsTeacherGroupSubjNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"GROUPING_SUBJ"."NAME"'
      Size = 30
    end
    object ibdsTeacherGroupSubjCODE: TSmallintField
      FieldName = 'CODE'
      Origin = '"GROUPING_SUBJ"."CODE"'
      Visible = False
    end
    object ibdsTeacherGroupSubjGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"GROUPING_SUBJ"."GROUPING_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsTeacherGroupSubjGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = '"GROUPING_SUBJ"."GROUP_QTY"'
      Visible = False
    end
  end
  object ibdsSubj: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select CR.ID, S.id Subj_id, S."Name"'
      'from curr_rec CR join "Subject" S on CR.subject_id = S.id'
      'where CR.curr_id = :curr_id'
      'order by CR.num')
    Left = 480
    Top = 120
    object ibdsSubjID: TIntegerField
      FieldName = 'ID'
      Origin = '"CURR_REC"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsSubjSUBJ_ID: TIntegerField
      FieldName = 'SUBJ_ID'
      Origin = '"Subject"."ID"'
      Required = True
      Visible = False
    end
    object ibdsSubjName: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      FieldName = 'Name'
      Origin = '"Subject"."Name"'
      Size = 30
    end
  end
  object ibdsT: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from T where report_name=:report_name')
    SelectSQL.Strings = (
      'select * from T')
    Left = 352
    Top = 112
    object ibdsTREPORT_NAME: TIBStringField
      FieldName = 'REPORT_NAME'
      Origin = '"T"."REPORT_NAME"'
      Required = True
      Size = 30
    end
    object ibdsTPARAMS: TMemoField
      FieldName = 'PARAMS'
      Origin = '"T"."PARAMS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object ibdsRepTabExt2: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from rep_tab_ext rte where rte.rec_time = :rec_time')
    SelectSQL.Strings = (
      'select * from REP_TAB_EXT_2 order by teacher_name')
    Left = 624
    Top = 440
    object ibdsRepTabExt2REC_TIME: TDateTimeField
      FieldName = 'REC_TIME'
      Origin = '"REP_TAB_EXT_2"."REC_TIME"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ibdsRepTabExt2TEACHER_NAME: TIBStringField
      FieldName = 'TEACHER_NAME'
      Origin = '"REP_TAB_EXT_2"."TEACHER_NAME"'
      Size = 150
    end
    object ibdsRepTabExt2TAB_MONTH: TDateField
      FieldName = 'TAB_MONTH'
      Origin = '"REP_TAB_EXT_2"."TAB_MONTH"'
      DisplayFormat = 'mmmm'
    end
    object ibdsRepTabExt2Y_T: TFloatField
      FieldName = 'Y_T'
      Origin = '"REP_TAB_EXT_2"."Y_T"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2O_T: TFloatField
      FieldName = 'O_T'
      Origin = '"REP_TAB_EXT_2"."O_T"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2C_T: TFloatField
      FieldName = 'C_T'
      Origin = '"REP_TAB_EXT_2"."C_T"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2Y_T_OOD: TFloatField
      FieldName = 'Y_T_OOD'
      Origin = '"REP_TAB_EXT_2"."Y_T_OOD"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2O_T_OOD: TFloatField
      FieldName = 'O_T_OOD'
      Origin = '"REP_TAB_EXT_2"."O_T_OOD"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2C_T_OOD: TFloatField
      FieldName = 'C_T_OOD'
      Origin = '"REP_TAB_EXT_2"."C_T_OOD"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2Y_T_FILIAL: TFloatField
      FieldName = 'Y_T_FILIAL'
      Origin = '"REP_TAB_EXT_2"."Y_T_FILIAL"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2O_T_FILIAL: TFloatField
      FieldName = 'O_T_FILIAL'
      Origin = '"REP_TAB_EXT_2"."O_T_FILIAL"'
      DisplayFormat = '0.00'
    end
    object ibdsRepTabExt2C_T_FILIAL: TFloatField
      FieldName = 'C_T_FILIAL'
      Origin = '"REP_TAB_EXT_2"."C_T_FILIAL"'
      DisplayFormat = '0.00'
    end
  end
  object ibds2: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    Left = 152
    Top = 440
  end
  object ibdsStudentFilter: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from V_STUDENT_FILTER')
    Left = 288
    Top = 240
    object ibdsStudentFilterID: TIntegerField
      FieldName = 'ID'
      Origin = 'V_STUDENT_FILTER.ID'
      Required = True
    end
    object ibdsStudentFilterNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'V_STUDENT_FILTER.NAME'
      Size = 150
    end
    object ibdsStudentFilterFILIAL_ID: TIntegerField
      FieldName = 'FILIAL_ID'
      Origin = 'V_STUDENT_FILTER.FILIAL_ID'
    end
    object ibdsStudentFilterFILIAL_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'FILIAL_NAME'
      Origin = 'V_STUDENT_FILTER.FILIAL_NAME'
      ReadOnly = True
      Size = 150
    end
    object ibdsStudentFilterCLASS_B: TIntegerField
      FieldName = 'CLASS_B'
      Origin = 'V_STUDENT_FILTER.CLASS_B'
    end
    object ibdsStudentFilterCLASS_E: TIntegerField
      FieldName = 'CLASS_E'
      Origin = 'V_STUDENT_FILTER.CLASS_E'
    end
    object ibdsStudentFilterCURATOR_ID: TIntegerField
      FieldName = 'CURATOR_ID'
      Origin = 'V_STUDENT_FILTER.CURATOR_ID'
    end
    object ibdsStudentFilterCURATOR_NAME: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'CURATOR_NAME'
      Origin = 'V_STUDENT_FILTER.CURATOR_NAME'
      ReadOnly = True
      Size = 255
    end
    object ibdsStudentFilterCATEGORY: TIntegerField
      FieldName = 'CATEGORY'
      Origin = 'V_STUDENT_FILTER.CATEGORY'
    end
    object ibdsStudentFilterPERIOD: TIntegerField
      FieldName = 'PERIOD'
      Origin = 'V_STUDENT_FILTER.PERIOD'
    end
    object ibdsStudentFilterSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'V_STUDENT_FILTER.STATUS'
    end
    object ibdsStudentFilterPAY_PERCENT: TIntegerField
      FieldName = 'PAY_PERCENT'
      Origin = 'V_STUDENT_FILTER.PAY_PERCENT'
    end
    object ibdsStudentFilterAGE_B: TIntegerField
      FieldName = 'AGE_B'
      Origin = 'V_STUDENT_FILTER.AGE_B'
    end
    object ibdsStudentFilterAGE_E: TIntegerField
      FieldName = 'AGE_E'
      Origin = 'V_STUDENT_FILTER.AGE_E'
    end
    object ibdsStudentFilterENTER_D_B: TDateField
      FieldName = 'ENTER_D_B'
      Origin = 'V_STUDENT_FILTER.ENTER_D_B'
    end
    object ibdsStudentFilterENTER_D_E: TDateField
      FieldName = 'ENTER_D_E'
      Origin = 'V_STUDENT_FILTER.ENTER_D_E'
    end
    object ibdsStudentFilterRELEASE_D_B: TDateField
      FieldName = 'RELEASE_D_B'
      Origin = 'V_STUDENT_FILTER.RELEASE_D_B'
    end
    object ibdsStudentFilterRELEASE_D_E: TDateField
      FieldName = 'RELEASE_D_E'
      Origin = 'V_STUDENT_FILTER.RELEASE_D_E'
    end
    object ibdsStudentFilterRESTORE_D_B: TDateField
      FieldName = 'RESTORE_D_B'
      Origin = 'V_STUDENT_FILTER.RESTORE_D_B'
    end
    object ibdsStudentFilterRESTORE_D_E: TDateField
      FieldName = 'RESTORE_D_E'
      Origin = 'V_STUDENT_FILTER.RESTORE_D_E'
    end
    object ibdsStudentFilterACADEMY_D_B: TDateField
      FieldName = 'ACADEMY_D_B'
      Origin = 'V_STUDENT_FILTER.ACADEMY_D_B'
    end
    object ibdsStudentFilterACADEMY_D_E: TDateField
      FieldName = 'ACADEMY_D_E'
      Origin = 'V_STUDENT_FILTER.ACADEMY_D_E'
    end
    object ibdsStudentFilterSUBJECT_ID_1: TIntegerField
      FieldName = 'SUBJECT_ID_1'
      Origin = 'V_STUDENT_FILTER.SUBJECT_ID_1'
    end
    object ibdsStudentFilterSUBJECT_NAME_1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SUBJECT_NAME_1'
      Origin = 'V_STUDENT_FILTER.SUBJECT_NAME_1'
      ReadOnly = True
      Size = 150
    end
    object ibdsStudentFilterTEACHER_ID_1: TIntegerField
      FieldName = 'TEACHER_ID_1'
      Origin = 'V_STUDENT_FILTER.TEACHER_ID_1'
    end
    object ibdsStudentFilterTEACHER_NAME_1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'TEACHER_NAME_1'
      Origin = 'V_STUDENT_FILTER.TEACHER_NAME_1'
      ReadOnly = True
      Size = 255
    end
    object ibdsStudentFilterSUBJECT_ID_2: TIntegerField
      FieldName = 'SUBJECT_ID_2'
      Origin = 'V_STUDENT_FILTER.SUBJECT_ID_2'
    end
    object ibdsStudentFilterSUBJECT_NAME_2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'SUBJECT_NAME_2'
      Origin = 'V_STUDENT_FILTER.SUBJECT_NAME_2'
      ReadOnly = True
      Size = 150
    end
    object ibdsStudentFilterTEACHER_ID_2: TIntegerField
      FieldName = 'TEACHER_ID_2'
      Origin = 'V_STUDENT_FILTER.TEACHER_ID_2'
    end
    object ibdsStudentFilterTEACHER_NAME_2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'TEACHER_NAME_2'
      Origin = 'V_STUDENT_FILTER.TEACHER_NAME_2'
      ReadOnly = True
      Size = 255
    end
    object ibdsStudentFilterSUBJ_STATE: TIntegerField
      FieldName = 'SUBJ_STATE'
      Origin = 'V_STUDENT_FILTER.SUBJ_STATE'
    end
    object ibdsStudentFilterFINANCING_ID: TIntegerField
      FieldName = 'FINANCING_ID'
      Origin = 'V_STUDENT_FILTER.FINANCING_ID'
    end
    object ibdsStudentFilterID_SEX: TIntegerField
      FieldName = 'ID_SEX'
      Origin = 'V_STUDENT_FILTER.ID_SEX'
    end
  end
  object ibdsStudentFilterSpec: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from V_STUDENT_FILTER_SPEC WHERE ID_FILTER = :ID')
    DataSource = dsStudentFilter
    Left = 400
    Top = 192
    object ibdsStudentFilterSpecID_FILTER: TIntegerField
      FieldName = 'ID_FILTER'
      Origin = '"V_STUDENT_FILTER_SPEC"."ID_FILTER"'
      Required = True
    end
    object ibdsStudentFilterSpecID_SPECIALIZATION: TIntegerField
      FieldName = 'ID_SPECIALIZATION'
      Origin = '"V_STUDENT_FILTER_SPEC"."ID_SPECIALIZATION"'
      Required = True
    end
    object ibdsStudentFilterSpecSPEC_NAME: TIBStringField
      FieldName = 'SPEC_NAME'
      Origin = '"V_STUDENT_FILTER_SPEC"."SPEC_NAME"'
      Size = 30
    end
  end
  object dsStudentFilter: TDataSource
    DataSet = ibdsStudentFilter
    Left = 288
    Top = 192
  end
  object ibdsTeacherAddings: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Teacher_Addings" where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Teacher_Addings" where "TeacherID"=:"ID"')
    Left = 24
    Top = 168
    object ibdsTeacherAddingsID: TIntegerField
      FieldName = 'ID'
      Origin = '"Teacher_Addings"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsTeacherAddingsTeacherID: TIntegerField
      FieldName = 'TeacherID'
      Origin = '"Teacher_Addings"."TeacherID"'
      Visible = False
    end
    object ibdsTeacherAddingsName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 17
      FieldName = 'Name'
      Origin = '"Teacher_Addings"."Name"'
    end
    object ibdsTeacherAddingsPercent: TFloatField
      DisplayLabel = '% '#1086#1090' '#1089#1090#1072#1074#1082#1080
      DisplayWidth = 7
      FieldName = 'Percent'
      Origin = '"Teacher_Addings"."Percent"'
    end
    object ibdsTeacherAddingsSum: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      DisplayWidth = 10
      FieldName = 'Sum'
      Origin = '"Teacher_Addings"."Sum"'
      currency = True
    end
  end
end
