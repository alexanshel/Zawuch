object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 475
  Top = 136
  Height = 632
  Width = 713
  object ibDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:C:\Projects\Zawuch\zawuch.FDB'
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
  object ibdsCurriculum: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from VIEW_CURRICULUM where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from VIEW_CURRICULUM order by pos')
    Left = 456
    Top = 8
    object ibdsCurriculumID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"VIEW_CURRICULUM"."ID"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 25
      FieldKind = fkInternalCalc
      FieldName = 'Name'
      Origin = '"VIEW_CURRICULUM"."NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object ibdsCurriculumPERIOD: TSmallintField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD'
      Origin = '"VIEW_CURRICULUM"."PERIOD"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurriculumCAT_0: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_0'
      Origin = '"VIEW_CURRICULUM"."CAT_0"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_1: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_1'
      Origin = '"VIEW_CURRICULUM"."CAT_1"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_2: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_2'
      Origin = '"VIEW_CURRICULUM"."CAT_2"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_3: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_3'
      Origin = '"VIEW_CURRICULUM"."CAT_3"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_4: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_4'
      Origin = '"VIEW_CURRICULUM"."CAT_4"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_5: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_5'
      Origin = '"VIEW_CURRICULUM"."CAT_5"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_6: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_6'
      Origin = '"VIEW_CURRICULUM"."CAT_6"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_7: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_7'
      Origin = '"VIEW_CURRICULUM"."CAT_7"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumCAT_8: TLargeintField
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'CAT_8'
      Origin = '"VIEW_CURRICULUM"."CAT_8"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
  end
  object ibdsDepartment: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Department" where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Department" ORDER BY pos, "Name"')
    Left = 104
    Top = 64
    object ibdsDepartmentID: TIntegerField
      FieldName = 'ID'
      Origin = '"Department"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsDepartmentCode: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 4
      FieldName = 'Code'
      Origin = '"Department"."Code"'
      Visible = False
    end
    object ibdsDepartmentName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'Name'
      Origin = '"Department"."Name"'
      Size = 30
    end
    object ibdsDepartmentCurriculum: TStringField
      DisplayLabel = #1059#1095#1077#1073#1085#1099#1081' '#1087#1083#1072#1085
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'Curriculum'
      LookupDataSet = ibdsCurriculum
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'CurriculumID'
      Lookup = True
    end
    object ibdsDepartmentPeriod: TIntegerField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'Period'
      LookupDataSet = ibdsCurriculum
      LookupKeyFields = 'ID'
      LookupResultField = 'Period'
      KeyFields = 'CurriculumID'
      Lookup = True
    end
    object ibdsDepartmentInfo: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DisplayWidth = 20
      FieldName = 'Info'
      Origin = '"Department"."Info"'
      Size = 50
    end
    object ibdsDepartmentCurriculumID: TIntegerField
      FieldName = 'CurriculumID'
      Origin = '"Department"."CurriculumID"'
      Visible = False
    end
  end
  object ibdsSpecialization: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Specialization" where "ID"=:"ID"')
    SelectSQL.Strings = (
      
        'select * from "Specialization" where "DepartmentID"=:id order by' +
        ' pos')
    Left = 192
    Top = 64
    object ibdsSpecializationID: TIntegerField
      FieldName = 'ID'
      Origin = '"Specialization"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsSpecializationDepartmentID: TIntegerField
      FieldName = 'DepartmentID'
      Origin = '"Specialization"."DepartmentID"'
      Visible = False
    end
    object ibdsSpecializationCode: TIntegerField
      DisplayLabel = #1050#1086#1076
      DisplayWidth = 4
      FieldName = 'Code'
      Origin = '"Specialization"."Code"'
    end
    object ibdsSpecializationName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'Name'
      Origin = '"Specialization"."Name"'
      Size = 30
    end
    object ibdsSpecializationBudget: TFloatField
      DisplayLabel = #1041#1102#1076#1078#1077#1090
      DisplayWidth = 7
      FieldName = 'Budget'
      Origin = '"Specialization"."Budget"'
      currency = True
    end
    object ibdsSpecializationSelf_Repayment: TFloatField
      DisplayLabel = #1057#1072#1084#1086#1086#1082#1091#1087'.'
      DisplayWidth = 7
      FieldName = 'Self_Repayment'
      Origin = '"Specialization"."Self_Repayment"'
      currency = True
    end
    object ibdsSpecializationInfo: TIBStringField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      DisplayWidth = 30
      FieldName = 'Info'
      Origin = '"Specialization"."Info"'
      Size = 50
    end
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
    Active = True
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
    Active = True
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
  object ibdsCurriculumRecord: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsCurriculumRecordCalcFields
    RefreshSQL.Strings = (
      
        'select * from  VIEW_CURRICULUM_RECORDS where ("ID"=:"ID") and ("' +
        'CurriculumID"=:"CurriculumID")')
    SelectSQL.Strings = (
      
        'select * from  VIEW_CURRICULUM_RECORDS WHERE "CurriculumID"=:"ID' +
        '" order by "Num"')
    Left = 456
    Top = 56
    object ibdsCurriculumRecordID: TIntegerField
      FieldName = 'ID'
      Origin = '"Curriculum_Record"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsCurriculumRecordCurriculumID: TIntegerField
      FieldName = 'CurriculumID'
      Origin = '"Curriculum_Record"."CurriculumID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsCurriculumRecordSubjectID: TIntegerField
      FieldName = 'SubjectID'
      Origin = '"Curriculum_Record"."SubjectID"'
      Required = True
      Visible = False
    end
    object ibdsCurriculumRecordSubjName: TStringField
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'SubjName'
      LookupDataSet = ibdsSubject
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'SubjectID'
      Size = 30
      Lookup = True
    end
    object ibdsCurriculumRecordGroup: TIntegerField
      DisplayWidth = 6
      FieldName = 'Group'
      Origin = '"Curriculum_Record"."Group"'
    end
    object ibdsCurriculumRecordTime0: TFloatField
      DisplayWidth = 7
      FieldName = 'Time0'
      Origin = '"Curriculum_Record"."Time0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime1: TFloatField
      DisplayWidth = 7
      FieldName = 'Time1'
      Origin = '"Curriculum_Record"."Time1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime2: TFloatField
      DisplayWidth = 7
      FieldName = 'Time2'
      Origin = '"Curriculum_Record"."Time2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime3: TFloatField
      DisplayWidth = 7
      FieldName = 'Time3'
      Origin = '"Curriculum_Record"."Time3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime4: TFloatField
      DisplayWidth = 7
      FieldName = 'Time4'
      Origin = '"Curriculum_Record"."Time4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime5: TFloatField
      DisplayWidth = 7
      FieldName = 'Time5'
      Origin = '"Curriculum_Record"."Time5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime6: TFloatField
      DisplayWidth = 7
      FieldName = 'Time6'
      Origin = '"Curriculum_Record"."Time6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime7: TFloatField
      DisplayWidth = 7
      FieldName = 'Time7'
      Origin = '"Curriculum_Record"."Time7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordTime8: TFloatField
      DisplayWidth = 7
      FieldName = 'Time8'
      Origin = '"Curriculum_Record"."Time8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurriculumRecordYT: TFloatField
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'YT'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurriculumRecordOT: TFloatField
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'OT'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurriculumRecordCT: TFloatField
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'CT'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurriculumRecordNum: TSmallintField
      FieldName = 'Num'
      Origin = '"Curriculum_Record"."Num"'
      Visible = False
    end
    object ibdsCurriculumRecordSubjCode: TIntegerField
      FieldKind = fkLookup
      FieldName = 'SubjCode'
      LookupDataSet = ibdsSubject
      LookupKeyFields = 'ID'
      LookupResultField = 'Code'
      KeyFields = 'SubjectID'
      Visible = False
      Lookup = True
    end
    object ibdsCurriculumRecordSUMT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUMT'
      Origin = '"VIEW_CURRICULUM"."SUMT"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurriculumRecordSUMOT: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'SUMOT'
      Origin = '"VIEW_CURRICULUM"."SUMOT"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
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
  end
  object ibdsEducation: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from "Education" where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from "Education"')
    Active = True
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
    Active = True
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
  object ibdsTeacherTM: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsTeacherTMCalcFields
    SelectSQL.Strings = (
      
        'select * from proc_teacher_tm(:"ID", 0) PTTM0, proc_teacher_tm(:' +
        '"ID", 1) PTTM1;')
    Left = 32
    Top = 216
    object ibdsTeacherTMOUTYTIME: TFloatField
      FieldName = 'OUTYTIME'
      Origin = '"PROC_TEACHER_TM"."OUTYTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTOTIME: TFloatField
      FieldName = 'OUTOTIME'
      Origin = '"PROC_TEACHER_TM"."OUTOTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTCTIME: TFloatField
      FieldName = 'OUTCTIME'
      Origin = '"PROC_TEACHER_TM"."OUTCTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTYPAY: TFloatField
      FieldName = 'OUTYPAY'
      Origin = '"PROC_TEACHER_TM"."OUTYPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTOPAY: TFloatField
      FieldName = 'OUTOPAY'
      Origin = '"PROC_TEACHER_TM"."OUTOPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTCPAY: TFloatField
      FieldName = 'OUTCPAY'
      Origin = '"PROC_TEACHER_TM"."OUTCPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTYTIME1: TFloatField
      FieldName = 'OUTYTIME1'
      Origin = '"PROC_TEACHER_TM"."OUTYTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTOTIME1: TFloatField
      FieldName = 'OUTOTIME1'
      Origin = '"PROC_TEACHER_TM"."OUTOTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTCTIME1: TFloatField
      FieldName = 'OUTCTIME1'
      Origin = '"PROC_TEACHER_TM"."OUTCTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTYPAY1: TFloatField
      FieldName = 'OUTYPAY1'
      Origin = '"PROC_TEACHER_TM"."OUTYPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTOPAY1: TFloatField
      FieldName = 'OUTOPAY1'
      Origin = '"PROC_TEACHER_TM"."OUTOPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTCPAY1: TFloatField
      FieldName = 'OUTCPAY1'
      Origin = '"PROC_TEACHER_TM"."OUTCPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTSUMTIME: TFloatField
      FieldName = 'OUTSUMTIME'
      Origin = '"PROC_TEACHER_TM"."OUTSUMTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTSUMPAY: TFloatField
      FieldName = 'OUTSUMPAY'
      Origin = '"PROC_TEACHER_TM"."OUTSUMPAY"'
      currency = True
    end
    object ibdsTeacherTMOUTSUMTIME1: TFloatField
      FieldName = 'OUTSUMTIME1'
      Origin = '"PROC_TEACHER_TM"."OUTSUMTIME"'
      DisplayFormat = '0.00'
    end
    object ibdsTeacherTMOUTSUMPAY1: TFloatField
      FieldName = 'OUTSUMPAY1'
      Origin = '"PROC_TEACHER_TM"."OUTSUMPAY"'
      currency = True
    end
    object ibdsTeacherTMSUMTIME: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMTIME'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsTeacherTMSUMPAY: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMPAY'
      currency = True
      Calculated = True
    end
    object ibdsTeacherTMOUTADDSUM: TFloatField
      FieldName = 'OUTADDSUM'
      Origin = '"PROC_TEACHER_TM"."OUTADDSUM"'
      currency = True
    end
    object ibdsTeacherTMTOTALSUM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALSUM'
      currency = True
      Calculated = True
    end
    object ibdsTeacherTMName: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name'
      Calculated = True
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
      'select * from MAIN_TAB'
      'where teacher_id=:teacher_id')
    SelectSQL.Strings = (
      'select * from MAIN_TAB order by TEACHER_NAME')
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
    object ibdsMainTabDAYS_QTY: TIntegerField
      DisplayLabel = #1044#1085#1080
      DisplayWidth = 5
      FieldName = 'DAYS_QTY'
      Origin = '"MAIN_TAB"."DAYS_QTY"'
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
    object ibdsMainTabS_Y_TIME: TFloatField
      DisplayLabel = #1089'. '#1084#1083'.'
      DisplayWidth = 7
      FieldName = 'S_Y_TIME'
      Origin = '"MAIN_TAB"."S_Y_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabS_O_TIME: TFloatField
      DisplayLabel = #1089'. '#1089#1090'.'
      DisplayWidth = 7
      FieldName = 'S_O_TIME'
      Origin = '"MAIN_TAB"."S_O_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabS_C_TIME: TFloatField
      DisplayLabel = #1089'. '#1082#1085'.'
      DisplayWidth = 7
      FieldName = 'S_C_TIME'
      Origin = '"MAIN_TAB"."S_C_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabBEGIN_Y_TIME: TFloatField
      DisplayLabel = #1087#1086#1076#1075'. '#1084#1083'.'
      DisplayWidth = 7
      FieldName = 'BEGIN_Y_TIME'
      Origin = '"MAIN_TAB"."BEGIN_Y_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabBEGIN_C_TIME: TFloatField
      DisplayWidth = 7
      FieldName = 'BEGIN_C_TIME'
      Origin = '"MAIN_TAB"."BEGIN_C_TIME"'
      DisplayFormat = '0.00'
    end
    object ibdsMainTabT_DATE: TDateField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 8
      FieldName = 'T_DATE'
      Origin = '"MAIN_TAB"."T_DATE"'
      DisplayFormat = 'mm.yyyy'
    end
    object ibdsMainTabSIGN: TIntegerField
      FieldName = 'SIGN'
      Origin = '"MAIN_TAB"."SIGN"'
      Visible = False
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
  object ibdsCurrReport: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsCurrReportCalcFields
    SelectSQL.Strings = (
      'select *'
      'from proc_curr_report(:curr_id, :financing_id);')
    Left = 352
    Top = 336
    object ibdsCurrReportQ_0: TIntegerField
      FieldName = 'Q_0'
      Origin = '"PROC_CURR_REPORT"."Q_0"'
    end
    object ibdsCurrReportQ_1: TIntegerField
      FieldName = 'Q_1'
      Origin = '"PROC_CURR_REPORT"."Q_1"'
    end
    object ibdsCurrReportQ_2: TIntegerField
      FieldName = 'Q_2'
      Origin = '"PROC_CURR_REPORT"."Q_2"'
    end
    object ibdsCurrReportQ_3: TIntegerField
      FieldName = 'Q_3'
      Origin = '"PROC_CURR_REPORT"."Q_3"'
    end
    object ibdsCurrReportQ_4: TIntegerField
      FieldName = 'Q_4'
      Origin = '"PROC_CURR_REPORT"."Q_4"'
    end
    object ibdsCurrReportQ_5: TIntegerField
      FieldName = 'Q_5'
      Origin = '"PROC_CURR_REPORT"."Q_5"'
    end
    object ibdsCurrReportQ_6: TIntegerField
      FieldName = 'Q_6'
      Origin = '"PROC_CURR_REPORT"."Q_6"'
    end
    object ibdsCurrReportQ_7: TIntegerField
      FieldName = 'Q_7'
      Origin = '"PROC_CURR_REPORT"."Q_7"'
    end
    object ibdsCurrReportQ_8: TIntegerField
      FieldName = 'Q_8'
      Origin = '"PROC_CURR_REPORT"."Q_8"'
    end
    object ibdsCurrReportQ_ALL_Y: TIntegerField
      FieldName = 'Q_ALL_Y'
      Origin = '"PROC_CURR_REPORT"."Q_ALL_Y"'
    end
    object ibdsCurrReportQ_ALL_O: TIntegerField
      FieldName = 'Q_ALL_O'
      Origin = '"PROC_CURR_REPORT"."Q_ALL_O"'
    end
    object ibdsCurrReportQ_ALL_C: TIntegerField
      FieldName = 'Q_ALL_C'
      Origin = '"PROC_CURR_REPORT"."Q_ALL_C"'
    end
    object ibdsCurrReportQ_V_Y: TIntegerField
      FieldName = 'Q_V_Y'
      Origin = '"PROC_CURR_REPORT"."Q_V_Y"'
    end
    object ibdsCurrReportQ_V_O: TIntegerField
      FieldName = 'Q_V_O'
      Origin = '"PROC_CURR_REPORT"."Q_V_O"'
    end
    object ibdsCurrReportQ_V_C: TIntegerField
      FieldName = 'Q_V_C'
      Origin = '"PROC_CURR_REPORT"."Q_V_C"'
    end
    object ibdsCurrReportT_V_0: TFloatField
      FieldName = 'T_V_0'
      Origin = '"PROC_CURR_REPORT"."T_V_0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_1: TFloatField
      FieldName = 'T_V_1'
      Origin = '"PROC_CURR_REPORT"."T_V_1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_2: TFloatField
      FieldName = 'T_V_2'
      Origin = '"PROC_CURR_REPORT"."T_V_2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_3: TFloatField
      FieldName = 'T_V_3'
      Origin = '"PROC_CURR_REPORT"."T_V_3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_4: TFloatField
      FieldName = 'T_V_4'
      Origin = '"PROC_CURR_REPORT"."T_V_4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_5: TFloatField
      FieldName = 'T_V_5'
      Origin = '"PROC_CURR_REPORT"."T_V_5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_6: TFloatField
      FieldName = 'T_V_6'
      Origin = '"PROC_CURR_REPORT"."T_V_6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_7: TFloatField
      FieldName = 'T_V_7'
      Origin = '"PROC_CURR_REPORT"."T_V_7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_8: TFloatField
      FieldName = 'T_V_8'
      Origin = '"PROC_CURR_REPORT"."T_V_8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_Y: TFloatField
      FieldName = 'T_V_Y'
      Origin = '"PROC_CURR_REPORT"."T_V_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_O: TFloatField
      FieldName = 'T_V_O'
      Origin = '"PROC_CURR_REPORT"."T_V_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_V_C: TFloatField
      FieldName = 'T_V_C'
      Origin = '"PROC_CURR_REPORT"."T_V_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_0: TFloatField
      FieldName = 'T_0'
      Origin = '"PROC_CURR_REPORT"."T_0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_1: TFloatField
      FieldName = 'T_1'
      Origin = '"PROC_CURR_REPORT"."T_1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_2: TFloatField
      FieldName = 'T_2'
      Origin = '"PROC_CURR_REPORT"."T_2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_3: TFloatField
      FieldName = 'T_3'
      Origin = '"PROC_CURR_REPORT"."T_3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_4: TFloatField
      FieldName = 'T_4'
      Origin = '"PROC_CURR_REPORT"."T_4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_5: TFloatField
      FieldName = 'T_5'
      Origin = '"PROC_CURR_REPORT"."T_5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_6: TFloatField
      FieldName = 'T_6'
      Origin = '"PROC_CURR_REPORT"."T_6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_7: TFloatField
      FieldName = 'T_7'
      Origin = '"PROC_CURR_REPORT"."T_7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_8: TFloatField
      FieldName = 'T_8'
      Origin = '"PROC_CURR_REPORT"."T_8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_A_Y: TFloatField
      FieldName = 'T_A_Y'
      Origin = '"PROC_CURR_REPORT"."T_A_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_A_O: TFloatField
      FieldName = 'T_A_O'
      Origin = '"PROC_CURR_REPORT"."T_A_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportT_A_C: TFloatField
      FieldName = 'T_A_C'
      Origin = '"PROC_CURR_REPORT"."T_A_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportt_t_0: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_0'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_1: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_1'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_2'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_3: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_3'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_4: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_4'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_5: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_5'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_6: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_6'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_7: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_7'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_8: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_8'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_y: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_y'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_o: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_o'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportt_t_c: TFloatField
      FieldKind = fkCalculated
      FieldName = 't_t_c'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object ibdsCurrReportG_Y: TIntegerField
      FieldName = 'G_Y'
      Origin = '"PROC_CURR_REPORT"."G_Y"'
    end
    object ibdsCurrReportG_O: TIntegerField
      FieldName = 'G_O'
      Origin = '"PROC_CURR_REPORT"."G_O"'
    end
  end
  object ibdsCurrReportRec: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select *'
      'from proc_curr_rec_report(:curr_id, :financing_id)'
      'order by curr_rec_num')
    Left = 352
    Top = 392
    object ibdsCurrReportRecCURR_REC_ID: TIntegerField
      FieldName = 'CURR_REC_ID'
      Origin = '"PROC_CURR_REC_REPORT"."CURR_REC_ID"'
      Visible = False
    end
    object ibdsCurrReportRecCURR_REC_NUM: TIntegerField
      FieldName = 'CURR_REC_NUM'
      Origin = '"PROC_CURR_REC_REPORT"."CURR_REC_NUM"'
      Visible = False
    end
    object ibdsCurrReportRecSUBJECT_NAME: TIBStringField
      DisplayLabel = #1055#1088#1077#1076#1084#1077#1090
      DisplayWidth = 25
      FieldName = 'SUBJECT_NAME'
      Origin = '"PROC_CURR_REC_REPORT"."SUBJECT_NAME"'
      Size = 30
    end
    object ibdsCurrReportRecSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = '"PROC_CURR_REC_REPORT"."SUBJECT_CODE"'
      Visible = False
    end
    object ibdsCurrReportRecGROUP_QTY: TIntegerField
      DisplayLabel = #1043#1088'.'
      DisplayWidth = 3
      FieldName = 'GROUP_QTY'
      Origin = '"PROC_CURR_REC_REPORT"."GROUP_QTY"'
    end
    object ibdsCurrReportRecT_0: TFloatField
      DisplayLabel = #1042#1088'. 0'
      DisplayWidth = 5
      FieldName = 'T_0'
      Origin = '"PROC_CURR_REC_REPORT"."T_0"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_0: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_0'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_0"'
    end
    object ibdsCurrReportRecT_1: TFloatField
      DisplayLabel = #1042#1088'. 1'
      DisplayWidth = 5
      FieldName = 'T_1'
      Origin = '"PROC_CURR_REC_REPORT"."T_1"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_1: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_1'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_1"'
    end
    object ibdsCurrReportRecT_2: TFloatField
      DisplayLabel = #1042#1088'. 2'
      DisplayWidth = 5
      FieldName = 'T_2'
      Origin = '"PROC_CURR_REC_REPORT"."T_2"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_2: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_2'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_2"'
    end
    object ibdsCurrReportRecT_3: TFloatField
      DisplayLabel = #1042#1088'. 3'
      DisplayWidth = 5
      FieldName = 'T_3'
      Origin = '"PROC_CURR_REC_REPORT"."T_3"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_3: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_3'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_3"'
    end
    object ibdsCurrReportRecT_4: TFloatField
      DisplayLabel = #1042#1088'. 4'
      DisplayWidth = 5
      FieldName = 'T_4'
      Origin = '"PROC_CURR_REC_REPORT"."T_4"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_4: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_4'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_4"'
    end
    object ibdsCurrReportRecT_5: TFloatField
      DisplayLabel = #1042#1088'. 5'
      DisplayWidth = 5
      FieldName = 'T_5'
      Origin = '"PROC_CURR_REC_REPORT"."T_5"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_5: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_5'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_5"'
    end
    object ibdsCurrReportRecT_6: TFloatField
      DisplayLabel = #1042#1088'. 6'
      DisplayWidth = 5
      FieldName = 'T_6'
      Origin = '"PROC_CURR_REC_REPORT"."T_6"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_6: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_6'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_6"'
    end
    object ibdsCurrReportRecT_7: TFloatField
      DisplayLabel = #1042#1088'. 7'
      DisplayWidth = 5
      FieldName = 'T_7'
      Origin = '"PROC_CURR_REC_REPORT"."T_7"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_7: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_7'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_7"'
    end
    object ibdsCurrReportRecT_8: TFloatField
      DisplayLabel = #1042#1088'. 8'
      DisplayWidth = 5
      FieldName = 'T_8'
      Origin = '"PROC_CURR_REC_REPORT"."T_8"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecQTY_8: TIntegerField
      DisplayLabel = #1082'-'#1074#1086
      DisplayWidth = 3
      FieldName = 'QTY_8'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_8"'
    end
    object ibdsCurrReportRecT_ALL_Y: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086' '#1084#1083'.'
      DisplayWidth = 5
      FieldName = 'T_ALL_Y'
      Origin = '"PROC_CURR_REC_REPORT"."T_ALL_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_ALL_O: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086' '#1089#1090'.'
      DisplayWidth = 5
      FieldName = 'T_ALL_O'
      Origin = '"PROC_CURR_REC_REPORT"."T_ALL_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_ALL_C: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086' '#1082#1086#1085#1094'.'
      DisplayWidth = 5
      FieldName = 'T_ALL_C'
      Origin = '"PROC_CURR_REC_REPORT"."T_ALL_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_V_Y: TFloatField
      DisplayLabel = #1053#1077#1088#1072#1089#1087'. '#1084#1083'.'
      FieldName = 'T_V_Y'
      Origin = '"PROC_CURR_REC_REPORT"."T_V_Y"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_V_O: TFloatField
      DisplayLabel = #1053#1077#1088#1072#1089#1087'. '#1089#1090'.'
      FieldName = 'T_V_O'
      Origin = '"PROC_CURR_REC_REPORT"."T_V_O"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecT_V_C: TFloatField
      DisplayLabel = #1053#1077#1088#1072#1089#1087'. '#1082#1086#1085#1094'.'
      FieldName = 'T_V_C'
      Origin = '"PROC_CURR_REC_REPORT"."T_V_C"'
      DisplayFormat = '0.00'
    end
    object ibdsCurrReportRecG_QTY_Y: TIntegerField
      DisplayLabel = #1050'-'#1074#1086' '#1075#1088'. '#1084#1083'.'
      FieldName = 'G_QTY_Y'
      Origin = '"PROC_CURR_REC_REPORT"."G_QTY_Y"'
    end
    object ibdsCurrReportRecG_QTY_O: TIntegerField
      DisplayLabel = #1050'-'#1074#1086' '#1075#1088'. '#1089#1090'.'
      FieldName = 'G_QTY_O'
      Origin = '"PROC_CURR_REC_REPORT"."G_QTY_O"'
    end
    object ibdsCurrReportRecQTY_Y: TIntegerField
      FieldName = 'QTY_Y'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_Y"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_O: TIntegerField
      FieldName = 'QTY_O'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_O"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_C: TIntegerField
      FieldName = 'QTY_C'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_C"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_V_Y: TIntegerField
      FieldName = 'QTY_V_Y'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_V_Y"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_V_O: TIntegerField
      FieldName = 'QTY_V_O'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_V_O"'
      Visible = False
    end
    object ibdsCurrReportRecQTY_V_C: TIntegerField
      FieldName = 'QTY_V_C'
      Origin = '"PROC_CURR_REC_REPORT"."QTY_V_C"'
      Visible = False
    end
  end
  object ibdsCurrCat: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsCurrCatCalcFields
    SelectSQL.Strings = (
      'select * '
      'from VIEW_CURR_CAT VCC'
      'where VCC.curr_id=:curr_id')
    Left = 352
    Top = 448
    object ibdsCurrCatC_0: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_0'
      Origin = '"VIEW_CURR_CAT"."C_0"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_1: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_1'
      Origin = '"VIEW_CURR_CAT"."C_1"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_2: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_2'
      Origin = '"VIEW_CURR_CAT"."C_2"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_3: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_3'
      Origin = '"VIEW_CURR_CAT"."C_3"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_4: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_4'
      Origin = '"VIEW_CURR_CAT"."C_4"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_5: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_5'
      Origin = '"VIEW_CURR_CAT"."C_5"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_6: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_6'
      Origin = '"VIEW_CURR_CAT"."C_6"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_7: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_7'
      Origin = '"VIEW_CURR_CAT"."C_7"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatC_8: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_8'
      Origin = '"VIEW_CURR_CAT"."C_8"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
    end
    object ibdsCurrCatCat0: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 0'
      FieldKind = fkCalculated
      FieldName = 'Cat0'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat1: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 1'
      FieldKind = fkCalculated
      FieldName = 'Cat1'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat2: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 2'
      FieldKind = fkCalculated
      FieldName = 'Cat2'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat3: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 3'
      FieldKind = fkCalculated
      FieldName = 'Cat3'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat4: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 4'
      FieldKind = fkCalculated
      FieldName = 'Cat4'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat5: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 5'
      FieldKind = fkCalculated
      FieldName = 'Cat5'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat6: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 6'
      FieldKind = fkCalculated
      FieldName = 'Cat6'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat7: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 7'
      FieldKind = fkCalculated
      FieldName = 'Cat7'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCat8: TStringField
      DisplayLabel = #1050#1083#1072#1089#1089' 8'
      FieldKind = fkCalculated
      FieldName = 'Cat8'
      Size = 3
      Calculated = True
    end
    object ibdsCurrCatCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"VIEW_CURR_CAT"."CURR_ID"'
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
  object ibdsLTG: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsLTGCalcFields
    RefreshSQL.Strings = (
      'select * from LEARN_TIME_GRID where ID=:ID order by NAME')
    SelectSQL.Strings = (
      'select * from LEARN_TIME_GRID order by NAME')
    Left = 480
    Top = 192
    object ibdsLTGID: TIntegerField
      FieldName = 'ID'
      Origin = '"LEARN_TIME_GRID"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsLTGFINANCING_ID: TIntegerField
      FieldName = 'FINANCING_ID'
      Origin = '"LEARN_TIME_GRID"."FINANCING_ID"'
      Visible = False
    end
    object ibdsLTGNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"LEARN_TIME_GRID"."NAME"'
      Size = 50
    end
    object ibdsLTGFinancing: TStringField
      DisplayLabel = #1060
      FieldKind = fkCalculated
      FieldName = 'Financing'
      Size = 1
      Calculated = True
    end
  end
  object ibdsLTGSubject: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsLTGSubjectCalcFields
    SelectSQL.Strings = (
      'select distinct LTG.id LTG_ID, LTGIS.pos pos_i, 0 pos_g,'
      
        '  LTGIS.id SUBJ_ID, LTGIS.name SUBJ_NAME, S."Code" SUBJ_CODE, 1 ' +
        'GR_QTY'
      
        'from LEARN_TIME_GRID LTG join LTG_I_SUBJECT LTGIS on LTG.ID = LT' +
        'GIS.LTG_ID'
      
        '  left join ltg_i_subj_curr LISC on LISC.ltg_id = LTG.id and LIS' +
        'C.ltg_i_subj_id = LTGIS.id'
      
        '  left join curr_rec CR on LISC.curr_id = CR.curr_id and LISC.cu' +
        'rr_rec_id = CR.id'
      '  left join "Subject" S on S.id = CR.subject_id'
      'where LTG.id = :ID'
      'union all'
      'select LTG.id LTG_ID, 0 pos_i, GS.pos pos_g,'
      
        '  GS.id SUBJ_ID, GS.name SUBJ_NAME, cast(GS.code as Integer) SUB' +
        'J_CODE, GS.group_qty GR_QTY'
      'from LEARN_TIME_GRID LTG'
      '  join ltg_grouping LTGG on LTGG.ltg_id = LTG.id'
      '  left join grouping G on G.id = LTGG.grouping_id'
      '  left join grouping_subj GS on GS.grouping_id = G.id'
      'where LTG.id = :ID'
      'order by 2 asc, 3 asc')
    Left = 480
    Top = 240
    object ibdsLTGSubjectLTG_ID: TIntegerField
      FieldName = 'LTG_ID'
      ProviderFlags = []
    end
    object ibdsLTGSubjectSUBJ_ID: TIntegerField
      FieldName = 'SUBJ_ID'
      ProviderFlags = []
    end
    object ibdsLTGSubjectSUBJ_NAME: TIBStringField
      FieldName = 'SUBJ_NAME'
      ProviderFlags = []
      Size = 30
    end
    object ibdsLTGSubjectSUBJ_CODE: TIntegerField
      FieldName = 'SUBJ_CODE'
      ProviderFlags = []
    end
    object ibdsLTGSubjectGR_QTY: TIntegerField
      FieldName = 'GR_QTY'
      ProviderFlags = []
    end
  end
  object ibdsLTGGrouping: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      
        'select LTGG.LTG_ID LTG_ID, G.ID Grouping_ID, G.NAME Grouping_Nam' +
        'e'
      'from LTG_GROUPING LTGG '
      '  join GROUPING G on LTGG.GROUPING_ID = G.ID'
      'where LTG_ID=:LTG_ID')
    SelectSQL.Strings = (
      
        'select LTGG.LTG_ID LTG_ID, G.ID Grouping_ID, G.NAME Grouping_Nam' +
        'e'
      'from LTG_GROUPING LTGG '
      '  join GROUPING G on LTGG.GROUPING_ID = G.ID'
      'where LTGG.LTG_ID=:LTG_ID')
    Left = 480
    Top = 360
    object ibdsLTGGroupingLTG_ID: TIntegerField
      FieldName = 'LTG_ID'
      Origin = '"LTG_GROUPING"."LTG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ibdsLTGGroupingGROUPING_ID: TIntegerField
      FieldName = 'GROUPING_ID'
      Origin = '"GROUPING"."ID"'
      Required = True
      Visible = False
    end
    object ibdsLTGGroupingGROUPING_NAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1086#1074#1086#1082#1091#1087#1085#1086#1089#1090#1080
      FieldName = 'GROUPING_NAME'
      Origin = '"GROUPING"."NAME"'
      Size = 30
    end
  end
  object ibdsLTGISubject: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    RefreshSQL.Strings = (
      'select * from LTG_I_SUBJECT where LTG_ID=:LTG_ID and ID=:ID')
    SelectSQL.Strings = (
      'select * from LTG_I_SUBJECT where LTG_ID=:ID order by POS')
    Left = 480
    Top = 280
    object ibdsLTGISubjectLTG_ID: TIntegerField
      FieldName = 'LTG_ID'
      Origin = '"LTG_I_SUBJECT"."LTG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object ibdsLTGISubjectID: TIntegerField
      FieldName = 'ID'
      Origin = '"LTG_I_SUBJECT"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsLTGISubjectPOS: TIntegerField
      FieldName = 'POS'
      Origin = '"LTG_I_SUBJECT"."POS"'
      Visible = False
    end
    object ibdsLTGISubjectNAME: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Origin = '"LTG_I_SUBJECT"."NAME"'
      Size = 30
    end
  end
  object ibdsCurrISubj: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select CR.curr_id, CR.id CR_ID, S.id S_ID, S."Name", S."Code"'
      'from curr_rec CR join "Subject" S on cr.subject_id = S.id'
      'where CR.group_qty = 1 and CR.curr_id = :id'
      'order by CR.curr_id, CR.num')
    Left = 480
    Top = 400
    object ibdsCurrISubjCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"CURR_REC"."CURR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object ibdsCurrISubjCR_ID: TIntegerField
      FieldName = 'CR_ID'
      Origin = '"CURR_REC"."ID"'
      Required = True
      Visible = False
    end
    object ibdsCurrISubjS_ID: TIntegerField
      FieldName = 'S_ID'
      Origin = '"Subject"."ID"'
      Required = True
      Visible = False
    end
    object ibdsCurrISubjName: TIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1076#1084#1077#1090#1072
      FieldName = 'Name'
      Origin = '"Subject"."Name"'
      Size = 30
    end
    object ibdsCurrISubjCode: TIntegerField
      FieldName = 'Code'
      Origin = '"Subject"."Code"'
      Visible = False
    end
  end
  object ibdsLTGISubjCurr: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      
        'select LISC.ltg_id, LISC.ltg_i_subj_id, S."Name" SUBJ_NAME, LISC' +
        '.curr_id, C.name CURR_NAME,'
      '  LISC.curr_rec_id'
      'from LTG_I_SUBJ_CURR LISC '
      '  join curriculum C on LISC.curr_id = C.id'
      
        '  join curr_rec CR on LISC.curr_rec_id = CR.id and CR.curr_id = ' +
        'C.id'
      '  join "Subject" S on S.id = CR.subject_id'
      
        'where LISC.LTG_ID = :LTG_ID and LISC.LTG_i_subj_id = :LTG_i_subj' +
        '_id')
    Left = 480
    Top = 320
    object ibdsLTGISubjCurrLTG_ID: TIntegerField
      FieldName = 'LTG_ID'
      Origin = '"LTG_I_SUBJ_CURR"."LTG_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsLTGISubjCurrLTG_I_SUBJ_ID: TIntegerField
      FieldName = 'LTG_I_SUBJ_ID'
      Origin = '"LTG_I_SUBJ_CURR"."LTG_I_SUBJ_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsLTGISubjCurrSUBJ_NAME: TIBStringField
      FieldName = 'SUBJ_NAME'
      Origin = '"Subject"."Name"'
      Size = 30
    end
    object ibdsLTGISubjCurrCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      Origin = '"LTG_I_SUBJ_CURR"."CURR_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ibdsLTGISubjCurrCURR_NAME: TIBStringField
      FieldName = 'CURR_NAME'
      Origin = '"CURRICULUM"."NAME"'
      Size = 30
    end
    object ibdsLTGISubjCurrCURR_REC_ID: TIntegerField
      FieldName = 'CURR_REC_ID'
      Origin = '"LTG_I_SUBJ_CURR"."CURR_REC_ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object ibdsLTGReport: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    OnCalcFields = ibdsLTGReportCalcFields
    SelectSQL.Strings = (
      'select * from PROC_LTG_REPORT(:ltg_id)')
    Left = 480
    Top = 448
    object ibdsLTGReportQ_0: TIntegerField
      FieldName = 'Q_0'
      Origin = '"PROC_LTG_REPORT"."Q_0"'
    end
    object ibdsLTGReportQ_1: TIntegerField
      FieldName = 'Q_1'
      Origin = '"PROC_LTG_REPORT"."Q_1"'
    end
    object ibdsLTGReportQ_2: TIntegerField
      FieldName = 'Q_2'
      Origin = '"PROC_LTG_REPORT"."Q_2"'
    end
    object ibdsLTGReportQ_3: TIntegerField
      FieldName = 'Q_3'
      Origin = '"PROC_LTG_REPORT"."Q_3"'
    end
    object ibdsLTGReportQ_4: TIntegerField
      FieldName = 'Q_4'
      Origin = '"PROC_LTG_REPORT"."Q_4"'
    end
    object ibdsLTGReportQ_5: TIntegerField
      FieldName = 'Q_5'
      Origin = '"PROC_LTG_REPORT"."Q_5"'
    end
    object ibdsLTGReportQ_6: TIntegerField
      FieldName = 'Q_6'
      Origin = '"PROC_LTG_REPORT"."Q_6"'
    end
    object ibdsLTGReportQ_7: TIntegerField
      FieldName = 'Q_7'
      Origin = '"PROC_LTG_REPORT"."Q_7"'
    end
    object ibdsLTGReportQ_8: TIntegerField
      FieldName = 'Q_8'
      Origin = '"PROC_LTG_REPORT"."Q_8"'
    end
    object ibdsLTGReportQ_ALL_Y: TIntegerField
      FieldName = 'Q_ALL_Y'
      Origin = '"PROC_LTG_REPORT"."Q_ALL_Y"'
    end
    object ibdsLTGReportQ_ALL_O: TIntegerField
      FieldName = 'Q_ALL_O'
      Origin = '"PROC_LTG_REPORT"."Q_ALL_O"'
    end
    object ibdsLTGReportQ_ALL_C: TIntegerField
      FieldName = 'Q_ALL_C'
      Origin = '"PROC_LTG_REPORT"."Q_ALL_C"'
    end
    object ibdsLTGReportQ_V_Y: TIntegerField
      FieldName = 'Q_V_Y'
      Origin = '"PROC_LTG_REPORT"."Q_V_Y"'
    end
    object ibdsLTGReportQ_V_O: TIntegerField
      FieldName = 'Q_V_O'
      Origin = '"PROC_LTG_REPORT"."Q_V_O"'
    end
    object ibdsLTGReportQ_V_C: TIntegerField
      FieldName = 'Q_V_C'
      Origin = '"PROC_LTG_REPORT"."Q_V_C"'
    end
    object ibdsLTGReportT_V_0: TFloatField
      FieldName = 'T_V_0'
      Origin = '"PROC_LTG_REPORT"."T_V_0"'
    end
    object ibdsLTGReportT_V_1: TFloatField
      FieldName = 'T_V_1'
      Origin = '"PROC_LTG_REPORT"."T_V_1"'
    end
    object ibdsLTGReportT_V_2: TFloatField
      FieldName = 'T_V_2'
      Origin = '"PROC_LTG_REPORT"."T_V_2"'
    end
    object ibdsLTGReportT_V_3: TFloatField
      FieldName = 'T_V_3'
      Origin = '"PROC_LTG_REPORT"."T_V_3"'
    end
    object ibdsLTGReportT_V_4: TFloatField
      FieldName = 'T_V_4'
      Origin = '"PROC_LTG_REPORT"."T_V_4"'
    end
    object ibdsLTGReportT_V_5: TFloatField
      FieldName = 'T_V_5'
      Origin = '"PROC_LTG_REPORT"."T_V_5"'
    end
    object ibdsLTGReportT_V_6: TFloatField
      FieldName = 'T_V_6'
      Origin = '"PROC_LTG_REPORT"."T_V_6"'
    end
    object ibdsLTGReportT_V_7: TFloatField
      FieldName = 'T_V_7'
      Origin = '"PROC_LTG_REPORT"."T_V_7"'
    end
    object ibdsLTGReportT_V_8: TFloatField
      FieldName = 'T_V_8'
      Origin = '"PROC_LTG_REPORT"."T_V_8"'
    end
    object ibdsLTGReportT_0: TFloatField
      FieldName = 'T_0'
      Origin = '"PROC_LTG_REPORT"."T_0"'
    end
    object ibdsLTGReportT_1: TFloatField
      FieldName = 'T_1'
      Origin = '"PROC_LTG_REPORT"."T_1"'
    end
    object ibdsLTGReportT_2: TFloatField
      FieldName = 'T_2'
      Origin = '"PROC_LTG_REPORT"."T_2"'
    end
    object ibdsLTGReportT_3: TFloatField
      FieldName = 'T_3'
      Origin = '"PROC_LTG_REPORT"."T_3"'
    end
    object ibdsLTGReportT_4: TFloatField
      FieldName = 'T_4'
      Origin = '"PROC_LTG_REPORT"."T_4"'
    end
    object ibdsLTGReportT_5: TFloatField
      FieldName = 'T_5'
      Origin = '"PROC_LTG_REPORT"."T_5"'
    end
    object ibdsLTGReportT_6: TFloatField
      FieldName = 'T_6'
      Origin = '"PROC_LTG_REPORT"."T_6"'
    end
    object ibdsLTGReportT_7: TFloatField
      FieldName = 'T_7'
      Origin = '"PROC_LTG_REPORT"."T_7"'
    end
    object ibdsLTGReportT_8: TFloatField
      FieldName = 'T_8'
      Origin = '"PROC_LTG_REPORT"."T_8"'
    end
    object ibdsLTGReportT_A_Y: TFloatField
      FieldName = 'T_A_Y'
      Origin = '"PROC_LTG_REPORT"."T_A_Y"'
    end
    object ibdsLTGReportT_A_O: TFloatField
      FieldName = 'T_A_O'
      Origin = '"PROC_LTG_REPORT"."T_A_O"'
    end
    object ibdsLTGReportT_A_C: TFloatField
      FieldName = 'T_A_C'
      Origin = '"PROC_LTG_REPORT"."T_A_C"'
    end
    object ibdsLTGReportT_V_Y: TFloatField
      FieldName = 'T_V_Y'
      Origin = '"PROC_LTG_REPORT"."T_V_Y"'
    end
    object ibdsLTGReportT_V_O: TFloatField
      FieldName = 'T_V_O'
      Origin = '"PROC_LTG_REPORT"."T_V_O"'
    end
    object ibdsLTGReportT_V_C: TFloatField
      FieldName = 'T_V_C'
      Origin = '"PROC_LTG_REPORT"."T_V_C"'
    end
    object ibdsLTGReportG_Y: TIntegerField
      FieldName = 'G_Y'
      Origin = '"PROC_LTG_REPORT"."G_Y"'
    end
    object ibdsLTGReportG_O: TIntegerField
      FieldName = 'G_O'
      Origin = '"PROC_LTG_REPORT"."G_O"'
    end
    object ibdsLTGReportT_T_0: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_0'
      Calculated = True
    end
    object ibdsLTGReportT_T_1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_1'
      Calculated = True
    end
    object ibdsLTGReportT_T_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_2'
      Calculated = True
    end
    object ibdsLTGReportT_T_3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_3'
      Calculated = True
    end
    object ibdsLTGReportT_T_4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_4'
      Calculated = True
    end
    object ibdsLTGReportT_T_5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_5'
      Calculated = True
    end
    object ibdsLTGReportT_T_6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_6'
      Calculated = True
    end
    object ibdsLTGReportT_T_7: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_7'
      Calculated = True
    end
    object ibdsLTGReportT_T_8: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_8'
      Calculated = True
    end
    object ibdsLTGReportT_T_Y: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_Y'
      Calculated = True
    end
    object ibdsLTGReportT_T_O: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_O'
      Calculated = True
    end
    object ibdsLTGReportT_T_C: TFloatField
      FieldKind = fkCalculated
      FieldName = 'T_T_C'
      Calculated = True
    end
  end
  object ibdsLTGReportRecI: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from proc_ltg_report_rec_i(:ltg_id)')
    Left = 480
    Top = 496
    object ibdsLTGReportRecILTG_SUBJ_ID: TIntegerField
      FieldName = 'LTG_SUBJ_ID'
      Origin = '"PROC_LTG_REPORT_REC_I"."LTG_SUBJ_ID"'
    end
    object ibdsLTGReportRecILTG_SUBJ_POS: TIntegerField
      FieldName = 'LTG_SUBJ_POS'
      Origin = '"PROC_LTG_REPORT_REC_I"."LTG_SUBJ_POS"'
    end
    object ibdsLTGReportRecISUBJECT_NAME: TIBStringField
      FieldName = 'SUBJECT_NAME'
      Origin = '"PROC_LTG_REPORT_REC_I"."SUBJECT_NAME"'
      Size = 30
    end
    object ibdsLTGReportRecISUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = '"PROC_LTG_REPORT_REC_I"."SUBJECT_CODE"'
    end
    object ibdsLTGReportRecIGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = '"PROC_LTG_REPORT_REC_I"."GROUP_QTY"'
    end
    object ibdsLTGReportRecIQTY_0: TIntegerField
      FieldName = 'QTY_0'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_0"'
    end
    object ibdsLTGReportRecIQTY_1: TIntegerField
      FieldName = 'QTY_1'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_1"'
    end
    object ibdsLTGReportRecIQTY_2: TIntegerField
      FieldName = 'QTY_2'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_2"'
    end
    object ibdsLTGReportRecIQTY_3: TIntegerField
      FieldName = 'QTY_3'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_3"'
    end
    object ibdsLTGReportRecIQTY_4: TIntegerField
      FieldName = 'QTY_4'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_4"'
    end
    object ibdsLTGReportRecIQTY_5: TIntegerField
      FieldName = 'QTY_5'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_5"'
    end
    object ibdsLTGReportRecIQTY_6: TIntegerField
      FieldName = 'QTY_6'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_6"'
    end
    object ibdsLTGReportRecIQTY_7: TIntegerField
      FieldName = 'QTY_7'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_7"'
    end
    object ibdsLTGReportRecIQTY_8: TIntegerField
      FieldName = 'QTY_8'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_8"'
    end
    object ibdsLTGReportRecIT_0: TFloatField
      FieldName = 'T_0'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_0"'
    end
    object ibdsLTGReportRecIT_1: TFloatField
      FieldName = 'T_1'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_1"'
    end
    object ibdsLTGReportRecIT_2: TFloatField
      FieldName = 'T_2'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_2"'
    end
    object ibdsLTGReportRecIT_3: TFloatField
      FieldName = 'T_3'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_3"'
    end
    object ibdsLTGReportRecIT_4: TFloatField
      FieldName = 'T_4'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_4"'
    end
    object ibdsLTGReportRecIT_5: TFloatField
      FieldName = 'T_5'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_5"'
    end
    object ibdsLTGReportRecIT_6: TFloatField
      FieldName = 'T_6'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_6"'
    end
    object ibdsLTGReportRecIT_7: TFloatField
      FieldName = 'T_7'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_7"'
    end
    object ibdsLTGReportRecIT_8: TFloatField
      FieldName = 'T_8'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_8"'
    end
    object ibdsLTGReportRecIT_ALL_Y: TFloatField
      FieldName = 'T_ALL_Y'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_ALL_Y"'
    end
    object ibdsLTGReportRecIT_ALL_O: TFloatField
      FieldName = 'T_ALL_O'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_ALL_O"'
    end
    object ibdsLTGReportRecIT_ALL_C: TFloatField
      FieldName = 'T_ALL_C'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_ALL_C"'
    end
    object ibdsLTGReportRecIT_V_Y: TFloatField
      FieldName = 'T_V_Y'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_Y"'
    end
    object ibdsLTGReportRecIT_V_O: TFloatField
      FieldName = 'T_V_O'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_O"'
    end
    object ibdsLTGReportRecIT_V_C: TFloatField
      FieldName = 'T_V_C'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_C"'
    end
    object ibdsLTGReportRecIQTY_Y: TIntegerField
      FieldName = 'QTY_Y'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_Y"'
    end
    object ibdsLTGReportRecIQTY_O: TIntegerField
      FieldName = 'QTY_O'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_O"'
    end
    object ibdsLTGReportRecIQTY_C: TIntegerField
      FieldName = 'QTY_C'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_C"'
    end
    object ibdsLTGReportRecIQTY_V_Y: TIntegerField
      FieldName = 'QTY_V_Y'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_V_Y"'
    end
    object ibdsLTGReportRecIQTY_V_O: TIntegerField
      FieldName = 'QTY_V_O'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_V_O"'
    end
    object ibdsLTGReportRecIQTY_V_C: TIntegerField
      FieldName = 'QTY_V_C'
      Origin = '"PROC_LTG_REPORT_REC_I"."QTY_V_C"'
    end
    object ibdsLTGReportRecIT_V_0: TFloatField
      FieldName = 'T_V_0'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_0"'
    end
    object ibdsLTGReportRecIT_V_1: TFloatField
      FieldName = 'T_V_1'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_1"'
    end
    object ibdsLTGReportRecIT_V_2: TFloatField
      FieldName = 'T_V_2'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_2"'
    end
    object ibdsLTGReportRecIT_V_3: TFloatField
      FieldName = 'T_V_3'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_3"'
    end
    object ibdsLTGReportRecIT_V_4: TFloatField
      FieldName = 'T_V_4'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_4"'
    end
    object ibdsLTGReportRecIT_V_5: TFloatField
      FieldName = 'T_V_5'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_5"'
    end
    object ibdsLTGReportRecIT_V_6: TFloatField
      FieldName = 'T_V_6'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_6"'
    end
    object ibdsLTGReportRecIT_V_7: TFloatField
      FieldName = 'T_V_7'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_7"'
    end
    object ibdsLTGReportRecIT_V_8: TFloatField
      FieldName = 'T_V_8'
      Origin = '"PROC_LTG_REPORT_REC_I"."T_V_8"'
    end
  end
  object ibdsLTGReportRecG: TIBDataSet
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      'select * from proc_ltg_report_rec_g(:ltg_id)')
    Left = 480
    Top = 544
    object ibdsLTGReportRecGG_SUBJ_ID: TIntegerField
      FieldName = 'G_SUBJ_ID'
      Origin = '"PROC_LTG_REPORT_REC_G"."G_SUBJ_ID"'
    end
    object ibdsLTGReportRecGSUBJECT_NAME: TIBStringField
      FieldName = 'SUBJECT_NAME'
      Origin = '"PROC_LTG_REPORT_REC_G"."SUBJECT_NAME"'
      Size = 30
    end
    object ibdsLTGReportRecGSUBJECT_CODE: TIntegerField
      FieldName = 'SUBJECT_CODE'
      Origin = '"PROC_LTG_REPORT_REC_G"."SUBJECT_CODE"'
    end
    object ibdsLTGReportRecGGROUP_QTY: TIntegerField
      FieldName = 'GROUP_QTY'
      Origin = '"PROC_LTG_REPORT_REC_G"."GROUP_QTY"'
    end
    object ibdsLTGReportRecGQTY_0: TIntegerField
      FieldName = 'QTY_0'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_0"'
    end
    object ibdsLTGReportRecGQTY_1: TIntegerField
      FieldName = 'QTY_1'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_1"'
    end
    object ibdsLTGReportRecGQTY_2: TIntegerField
      FieldName = 'QTY_2'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_2"'
    end
    object ibdsLTGReportRecGQTY_3: TIntegerField
      FieldName = 'QTY_3'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_3"'
    end
    object ibdsLTGReportRecGQTY_4: TIntegerField
      FieldName = 'QTY_4'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_4"'
    end
    object ibdsLTGReportRecGQTY_5: TIntegerField
      FieldName = 'QTY_5'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_5"'
    end
    object ibdsLTGReportRecGQTY_6: TIntegerField
      FieldName = 'QTY_6'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_6"'
    end
    object ibdsLTGReportRecGQTY_7: TIntegerField
      FieldName = 'QTY_7'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_7"'
    end
    object ibdsLTGReportRecGQTY_8: TIntegerField
      FieldName = 'QTY_8'
      Origin = '"PROC_LTG_REPORT_REC_G"."QTY_8"'
    end
    object ibdsLTGReportRecGT_0: TFloatField
      FieldName = 'T_0'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_0"'
    end
    object ibdsLTGReportRecGT_1: TFloatField
      FieldName = 'T_1'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_1"'
    end
    object ibdsLTGReportRecGT_2: TFloatField
      FieldName = 'T_2'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_2"'
    end
    object ibdsLTGReportRecGT_3: TFloatField
      FieldName = 'T_3'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_3"'
    end
    object ibdsLTGReportRecGT_4: TFloatField
      FieldName = 'T_4'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_4"'
    end
    object ibdsLTGReportRecGT_5: TFloatField
      FieldName = 'T_5'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_5"'
    end
    object ibdsLTGReportRecGT_6: TFloatField
      FieldName = 'T_6'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_6"'
    end
    object ibdsLTGReportRecGT_7: TFloatField
      FieldName = 'T_7'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_7"'
    end
    object ibdsLTGReportRecGT_8: TFloatField
      FieldName = 'T_8'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_8"'
    end
    object ibdsLTGReportRecGT_ALL_Y: TFloatField
      FieldName = 'T_ALL_Y'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_ALL_Y"'
    end
    object ibdsLTGReportRecGT_ALL_O: TFloatField
      FieldName = 'T_ALL_O'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_ALL_O"'
    end
    object ibdsLTGReportRecGT_ALL_C: TFloatField
      FieldName = 'T_ALL_C'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_ALL_C"'
    end
    object ibdsLTGReportRecGT_V_Y: TFloatField
      FieldName = 'T_V_Y'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_Y"'
    end
    object ibdsLTGReportRecGT_V_O: TFloatField
      FieldName = 'T_V_O'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_O"'
    end
    object ibdsLTGReportRecGT_V_C: TFloatField
      FieldName = 'T_V_C'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_C"'
    end
    object ibdsLTGReportRecGT_V_0: TFloatField
      FieldName = 'T_V_0'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_0"'
    end
    object ibdsLTGReportRecGT_V_1: TFloatField
      FieldName = 'T_V_1'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_1"'
    end
    object ibdsLTGReportRecGT_V_2: TFloatField
      FieldName = 'T_V_2'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_2"'
    end
    object ibdsLTGReportRecGT_V_3: TFloatField
      FieldName = 'T_V_3'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_3"'
    end
    object ibdsLTGReportRecGT_V_4: TFloatField
      FieldName = 'T_V_4'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_4"'
    end
    object ibdsLTGReportRecGT_V_5: TFloatField
      FieldName = 'T_V_5'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_5"'
    end
    object ibdsLTGReportRecGT_V_6: TFloatField
      FieldName = 'T_V_6'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_6"'
    end
    object ibdsLTGReportRecGT_V_7: TFloatField
      FieldName = 'T_V_7'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_7"'
    end
    object ibdsLTGReportRecGT_V_8: TFloatField
      FieldName = 'T_V_8'
      Origin = '"PROC_LTG_REPORT_REC_G"."T_V_8"'
    end
    object ibdsLTGReportRecGG_QTY_Y: TIntegerField
      FieldName = 'G_QTY_Y'
      Origin = '"PROC_LTG_REPORT_REC_G"."G_QTY_Y"'
    end
    object ibdsLTGReportRecGG_QTY_O: TIntegerField
      FieldName = 'G_QTY_O'
      Origin = '"PROC_LTG_REPORT_REC_G"."G_QTY_O"'
    end
  end
  object ibdsLTGCurr: TIBDataSet
    Tag = -1
    Database = ibDatabase
    Transaction = ibReadTransaction
    SelectSQL.Strings = (
      
        'select distinct CURR_ID from LTG_I_SUBJ_CURR LISC where LISC.LTG' +
        '_ID = :LTG_ID'
      'union'
      'select distinct GSCI.curr_id from ltg_grouping LG'
      'join grouping_subj_curr_id GSCI on LG.ltg_id = :LTG_ID and'
      'LG.grouping_id = GSCI.grouping_id')
    Left = 568
    Top = 544
    object ibdsLTGCurrCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      ProviderFlags = []
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
