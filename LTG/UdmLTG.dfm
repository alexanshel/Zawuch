object dmLTG: TdmLTG
  OldCreateOrder = False
  Left = 262
  Top = 366
  Height = 534
  Width = 416
  object ibdsLTG: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    OnCalcFields = ibdsLTGCalcFields
    RefreshSQL.Strings = (
      'select * from LEARN_TIME_GRID where ID=:ID order by NAME')
    SelectSQL.Strings = (
      'select * from LEARN_TIME_GRID order by NAME')
    Left = 32
    Top = 16
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
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
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
    Left = 104
    Top = 16
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
  object ibdsLTGISubject: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    RefreshSQL.Strings = (
      'select * from LTG_I_SUBJECT where LTG_ID=:LTG_ID and ID=:ID')
    SelectSQL.Strings = (
      'select * from LTG_I_SUBJECT where LTG_ID=:ID order by POS')
    Left = 208
    Top = 24
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
  object ibdsLTGISubjCurr: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
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
    Left = 208
    Top = 80
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
  object ibdsLTGGrouping: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
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
    Left = 104
    Top = 72
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
  object ibdsLTGCurr: TIBDataSet
    Tag = -1
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      
        'select distinct CURR_ID from LTG_I_SUBJ_CURR LISC where LISC.LTG' +
        '_ID = :LTG_ID'
      'union'
      'select distinct GSCI.curr_id from ltg_grouping LG'
      'join grouping_subj_curr_id GSCI on LG.ltg_id = :LTG_ID and'
      'LG.grouping_id = GSCI.grouping_id')
    Left = 208
    Top = 136
    object ibdsLTGCurrCURR_ID: TIntegerField
      FieldName = 'CURR_ID'
      ProviderFlags = []
    end
  end
  object ibdsLTGReportRecG: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select * from proc_ltg_report_rec_g(:ltg_id)')
    Left = 160
    Top = 216
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
  object ibdsLTGReportRecI: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select * from proc_ltg_report_rec_i(:ltg_id)')
    Left = 40
    Top = 224
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
  object ibdsLTGReport: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    OnCalcFields = ibdsLTGReportCalcFields
    SelectSQL.Strings = (
      'select * from PROC_LTG_REPORT(:ltg_id)')
    Left = 112
    Top = 160
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
  object ibqProc: TIBQuery
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    Left = 280
    Top = 16
  end
  object ibdsCurrISubj: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    SelectSQL.Strings = (
      'select CR.curr_id, CR.id CR_ID, S.id S_ID, S."Name", S."Code"'
      'from curr_rec CR join "Subject" S on cr.subject_id = S.id'
      'where CR.group_qty = 1 and CR.curr_id = :id'
      'order by CR.curr_id, CR.num')
    Left = 264
    Top = 200
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
  object ibdsCurriculum: TIBDataSet
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    RefreshSQL.Strings = (
      'select * from V_CURRICULUM where "ID"=:"ID"')
    SelectSQL.Strings = (
      'select * from V_CURRICULUM order by pos')
    Left = 336
    Top = 80
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
      DisplayWidth = 50
      FieldKind = fkInternalCalc
      FieldName = 'Name'
      Origin = '"VIEW_CURRICULUM"."NAME"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ibdsCurriculumPERIOD_FOR_PRINT: TIBStringField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD_FOR_PRINT'
      Origin = '"VIEW_CURRICULUM"."PERIOD_FOR_PRINT"'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object ibdsCurriculumPERIOD: TSmallintField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      DisplayWidth = 5
      FieldKind = fkInternalCalc
      FieldName = 'PERIOD'
      Origin = '"VIEW_CURRICULUM"."PERIOD"'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
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
  object ibdsCurrCat: TIBDataSet
    Tag = -1
    Database = DM.ibDatabase
    Transaction = DM.ibTransaction
    SelectSQL.Strings = (
      'select * '
      'from V_CURRICULUM_CAT VCC'
      'where VCC.id = :curr_id')
    Left = 267
    Top = 128
    object ibdsCurrCatID: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ID'
      Origin = '"V_CURRICULUM_CAT"."ID"'
      ProviderFlags = []
      ReadOnly = True
    end
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
    object ibdsCurrCatC_9: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'C_9'
      Origin = '"V_CURRICULUM_CAT"."C_9"'
      ProviderFlags = []
      ReadOnly = True
    end
    object ibdsCurrCatC_NAME_0: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_0'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_0"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_1: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_1'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_1"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_2: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_2'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_2"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_3: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_3'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_3"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_4: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_4'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_4"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_5: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_5'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_5"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_6: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_6'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_6"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_7: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_7'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_7"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_8: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_8'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_8"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object ibdsCurrCatC_NAME_9: TIBStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_NAME_9'
      Origin = '"V_CURRICULUM_CAT"."C_NAME_9"'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object ibds: TIBDataSet
    Tag = -1
    Database = DM.ibDatabase
    Transaction = DM.ibReadTransaction
    Left = 160
    Top = 296
  end
end
