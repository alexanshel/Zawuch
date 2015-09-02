unit UdmLTG;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, UDM, IBQuery;

type
  TdmLTG = class(TDataModule)
    ibdsLTG: TIBDataSet;
    ibdsLTGID: TIntegerField;
    ibdsLTGFINANCING_ID: TIntegerField;
    ibdsLTGNAME: TIBStringField;
    ibdsLTGFinancing: TStringField;
    ibdsLTGSubject: TIBDataSet;
    ibdsLTGSubjectLTG_ID: TIntegerField;
    ibdsLTGSubjectSUBJ_ID: TIntegerField;
    ibdsLTGSubjectSUBJ_NAME: TIBStringField;
    ibdsLTGSubjectSUBJ_CODE: TIntegerField;
    ibdsLTGSubjectGR_QTY: TIntegerField;
    ibdsLTGISubject: TIBDataSet;
    ibdsLTGISubjectLTG_ID: TIntegerField;
    ibdsLTGISubjectID: TIntegerField;
    ibdsLTGISubjectPOS: TIntegerField;
    ibdsLTGISubjectNAME: TIBStringField;
    ibdsLTGISubjCurr: TIBDataSet;
    ibdsLTGISubjCurrLTG_ID: TIntegerField;
    ibdsLTGISubjCurrLTG_I_SUBJ_ID: TIntegerField;
    ibdsLTGISubjCurrSUBJ_NAME: TIBStringField;
    ibdsLTGISubjCurrCURR_ID: TIntegerField;
    ibdsLTGISubjCurrCURR_NAME: TIBStringField;
    ibdsLTGISubjCurrCURR_REC_ID: TIntegerField;
    ibdsLTGGrouping: TIBDataSet;
    ibdsLTGGroupingLTG_ID: TIntegerField;
    ibdsLTGGroupingGROUPING_ID: TIntegerField;
    ibdsLTGGroupingGROUPING_NAME: TIBStringField;
    ibdsLTGCurr: TIBDataSet;
    ibdsLTGCurrCURR_ID: TIntegerField;
    ibdsLTGReportRecG: TIBDataSet;
    ibdsLTGReportRecGG_SUBJ_ID: TIntegerField;
    ibdsLTGReportRecGSUBJECT_NAME: TIBStringField;
    ibdsLTGReportRecGSUBJECT_CODE: TIntegerField;
    ibdsLTGReportRecGGROUP_QTY: TIntegerField;
    ibdsLTGReportRecGQTY_0: TIntegerField;
    ibdsLTGReportRecGQTY_1: TIntegerField;
    ibdsLTGReportRecGQTY_2: TIntegerField;
    ibdsLTGReportRecGQTY_3: TIntegerField;
    ibdsLTGReportRecGQTY_4: TIntegerField;
    ibdsLTGReportRecGQTY_5: TIntegerField;
    ibdsLTGReportRecGQTY_6: TIntegerField;
    ibdsLTGReportRecGQTY_7: TIntegerField;
    ibdsLTGReportRecGQTY_8: TIntegerField;
    ibdsLTGReportRecGT_0: TFloatField;
    ibdsLTGReportRecGT_1: TFloatField;
    ibdsLTGReportRecGT_2: TFloatField;
    ibdsLTGReportRecGT_3: TFloatField;
    ibdsLTGReportRecGT_4: TFloatField;
    ibdsLTGReportRecGT_5: TFloatField;
    ibdsLTGReportRecGT_6: TFloatField;
    ibdsLTGReportRecGT_7: TFloatField;
    ibdsLTGReportRecGT_8: TFloatField;
    ibdsLTGReportRecGT_ALL_Y: TFloatField;
    ibdsLTGReportRecGT_ALL_O: TFloatField;
    ibdsLTGReportRecGT_ALL_C: TFloatField;
    ibdsLTGReportRecGT_V_Y: TFloatField;
    ibdsLTGReportRecGT_V_O: TFloatField;
    ibdsLTGReportRecGT_V_C: TFloatField;
    ibdsLTGReportRecGT_V_0: TFloatField;
    ibdsLTGReportRecGT_V_1: TFloatField;
    ibdsLTGReportRecGT_V_2: TFloatField;
    ibdsLTGReportRecGT_V_3: TFloatField;
    ibdsLTGReportRecGT_V_4: TFloatField;
    ibdsLTGReportRecGT_V_5: TFloatField;
    ibdsLTGReportRecGT_V_6: TFloatField;
    ibdsLTGReportRecGT_V_7: TFloatField;
    ibdsLTGReportRecGT_V_8: TFloatField;
    ibdsLTGReportRecGG_QTY_Y: TIntegerField;
    ibdsLTGReportRecGG_QTY_O: TIntegerField;
    ibdsLTGReportRecI: TIBDataSet;
    ibdsLTGReportRecILTG_SUBJ_ID: TIntegerField;
    ibdsLTGReportRecILTG_SUBJ_POS: TIntegerField;
    ibdsLTGReportRecISUBJECT_NAME: TIBStringField;
    ibdsLTGReportRecISUBJECT_CODE: TIntegerField;
    ibdsLTGReportRecIGROUP_QTY: TIntegerField;
    ibdsLTGReportRecIQTY_0: TIntegerField;
    ibdsLTGReportRecIQTY_1: TIntegerField;
    ibdsLTGReportRecIQTY_2: TIntegerField;
    ibdsLTGReportRecIQTY_3: TIntegerField;
    ibdsLTGReportRecIQTY_4: TIntegerField;
    ibdsLTGReportRecIQTY_5: TIntegerField;
    ibdsLTGReportRecIQTY_6: TIntegerField;
    ibdsLTGReportRecIQTY_7: TIntegerField;
    ibdsLTGReportRecIQTY_8: TIntegerField;
    ibdsLTGReportRecIT_0: TFloatField;
    ibdsLTGReportRecIT_1: TFloatField;
    ibdsLTGReportRecIT_2: TFloatField;
    ibdsLTGReportRecIT_3: TFloatField;
    ibdsLTGReportRecIT_4: TFloatField;
    ibdsLTGReportRecIT_5: TFloatField;
    ibdsLTGReportRecIT_6: TFloatField;
    ibdsLTGReportRecIT_7: TFloatField;
    ibdsLTGReportRecIT_8: TFloatField;
    ibdsLTGReportRecIT_ALL_Y: TFloatField;
    ibdsLTGReportRecIT_ALL_O: TFloatField;
    ibdsLTGReportRecIT_ALL_C: TFloatField;
    ibdsLTGReportRecIT_V_Y: TFloatField;
    ibdsLTGReportRecIT_V_O: TFloatField;
    ibdsLTGReportRecIT_V_C: TFloatField;
    ibdsLTGReportRecIQTY_Y: TIntegerField;
    ibdsLTGReportRecIQTY_O: TIntegerField;
    ibdsLTGReportRecIQTY_C: TIntegerField;
    ibdsLTGReportRecIQTY_V_Y: TIntegerField;
    ibdsLTGReportRecIQTY_V_O: TIntegerField;
    ibdsLTGReportRecIQTY_V_C: TIntegerField;
    ibdsLTGReportRecIT_V_0: TFloatField;
    ibdsLTGReportRecIT_V_1: TFloatField;
    ibdsLTGReportRecIT_V_2: TFloatField;
    ibdsLTGReportRecIT_V_3: TFloatField;
    ibdsLTGReportRecIT_V_4: TFloatField;
    ibdsLTGReportRecIT_V_5: TFloatField;
    ibdsLTGReportRecIT_V_6: TFloatField;
    ibdsLTGReportRecIT_V_7: TFloatField;
    ibdsLTGReportRecIT_V_8: TFloatField;
    ibdsLTGReport: TIBDataSet;
    ibdsLTGReportQ_0: TIntegerField;
    ibdsLTGReportQ_1: TIntegerField;
    ibdsLTGReportQ_2: TIntegerField;
    ibdsLTGReportQ_3: TIntegerField;
    ibdsLTGReportQ_4: TIntegerField;
    ibdsLTGReportQ_5: TIntegerField;
    ibdsLTGReportQ_6: TIntegerField;
    ibdsLTGReportQ_7: TIntegerField;
    ibdsLTGReportQ_8: TIntegerField;
    ibdsLTGReportQ_ALL_Y: TIntegerField;
    ibdsLTGReportQ_ALL_O: TIntegerField;
    ibdsLTGReportQ_ALL_C: TIntegerField;
    ibdsLTGReportQ_V_Y: TIntegerField;
    ibdsLTGReportQ_V_O: TIntegerField;
    ibdsLTGReportQ_V_C: TIntegerField;
    ibdsLTGReportT_V_0: TFloatField;
    ibdsLTGReportT_V_1: TFloatField;
    ibdsLTGReportT_V_2: TFloatField;
    ibdsLTGReportT_V_3: TFloatField;
    ibdsLTGReportT_V_4: TFloatField;
    ibdsLTGReportT_V_5: TFloatField;
    ibdsLTGReportT_V_6: TFloatField;
    ibdsLTGReportT_V_7: TFloatField;
    ibdsLTGReportT_V_8: TFloatField;
    ibdsLTGReportT_0: TFloatField;
    ibdsLTGReportT_1: TFloatField;
    ibdsLTGReportT_2: TFloatField;
    ibdsLTGReportT_3: TFloatField;
    ibdsLTGReportT_4: TFloatField;
    ibdsLTGReportT_5: TFloatField;
    ibdsLTGReportT_6: TFloatField;
    ibdsLTGReportT_7: TFloatField;
    ibdsLTGReportT_8: TFloatField;
    ibdsLTGReportT_A_Y: TFloatField;
    ibdsLTGReportT_A_O: TFloatField;
    ibdsLTGReportT_A_C: TFloatField;
    ibdsLTGReportT_V_Y: TFloatField;
    ibdsLTGReportT_V_O: TFloatField;
    ibdsLTGReportT_V_C: TFloatField;
    ibdsLTGReportG_Y: TIntegerField;
    ibdsLTGReportG_O: TIntegerField;
    ibdsLTGReportT_T_0: TFloatField;
    ibdsLTGReportT_T_1: TFloatField;
    ibdsLTGReportT_T_2: TFloatField;
    ibdsLTGReportT_T_3: TFloatField;
    ibdsLTGReportT_T_4: TFloatField;
    ibdsLTGReportT_T_5: TFloatField;
    ibdsLTGReportT_T_6: TFloatField;
    ibdsLTGReportT_T_7: TFloatField;
    ibdsLTGReportT_T_8: TFloatField;
    ibdsLTGReportT_T_Y: TFloatField;
    ibdsLTGReportT_T_O: TFloatField;
    ibdsLTGReportT_T_C: TFloatField;
    ibqProc: TIBQuery;
    ibdsCurrISubj: TIBDataSet;
    ibdsCurrISubjCURR_ID: TIntegerField;
    ibdsCurrISubjCR_ID: TIntegerField;
    ibdsCurrISubjS_ID: TIntegerField;
    ibdsCurrISubjName: TIBStringField;
    ibdsCurrISubjCode: TIntegerField;
    ibdsCurriculum: TIBDataSet;
    ibdsCurriculumID: TIntegerField;
    ibdsCurriculumNAME: TIBStringField;
    ibdsCurriculumPERIOD_FOR_PRINT: TIBStringField;
    ibdsCurriculumPERIOD: TSmallintField;
    ibdsCurriculumCAT_0: TLargeintField;
    ibdsCurriculumCAT_1: TLargeintField;
    ibdsCurriculumCAT_2: TLargeintField;
    ibdsCurriculumCAT_3: TLargeintField;
    ibdsCurriculumCAT_4: TLargeintField;
    ibdsCurriculumCAT_5: TLargeintField;
    ibdsCurriculumCAT_6: TLargeintField;
    ibdsCurriculumCAT_7: TLargeintField;
    ibdsCurriculumCAT_8: TLargeintField;
    ibdsCurrCat: TIBDataSet;
    ibdsCurrCatID: TIntegerField;
    ibdsCurrCatC_0: TLargeintField;
    ibdsCurrCatC_1: TLargeintField;
    ibdsCurrCatC_2: TLargeintField;
    ibdsCurrCatC_3: TLargeintField;
    ibdsCurrCatC_4: TLargeintField;
    ibdsCurrCatC_5: TLargeintField;
    ibdsCurrCatC_6: TLargeintField;
    ibdsCurrCatC_7: TLargeintField;
    ibdsCurrCatC_8: TLargeintField;
    ibdsCurrCatC_9: TLargeintField;
    ibdsCurrCatC_NAME_0: TIBStringField;
    ibdsCurrCatC_NAME_1: TIBStringField;
    ibdsCurrCatC_NAME_2: TIBStringField;
    ibdsCurrCatC_NAME_3: TIBStringField;
    ibdsCurrCatC_NAME_4: TIBStringField;
    ibdsCurrCatC_NAME_5: TIBStringField;
    ibdsCurrCatC_NAME_6: TIBStringField;
    ibdsCurrCatC_NAME_7: TIBStringField;
    ibdsCurrCatC_NAME_8: TIBStringField;
    ibdsCurrCatC_NAME_9: TIBStringField;
    ibds: TIBDataSet;
    procedure ibdsLTGCalcFields(DataSet: TDataSet);
    procedure ibdsLTGReportCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function  AddLearnTimeGrid(ID: Variant; Financing: Integer; Name: string): integer;
    procedure AddLTGGrouping(LTG_ID: Integer; GroupingID: Integer);
    function  AddLTGISubj(LTG_ID: Integer; ISubjID: Variant; ISubjName: String; Pos: Variant): Integer;
    procedure AddLTGISubjCurr(LTG_ID, ISubjID, CurrID, CurrRecID: Integer);
    procedure DelLTG(ID: Integer);
    procedure DelLTGGrouping(LTG_ID, GroupingID: Integer);
    procedure DelLTGISubj(LTG_ID, ISubjID: Integer);
    procedure DelLTGISubjCurr(LTG_ID, ISubjID, CurrID, CurrRecID: Integer);
  end;

var
  dmLTG: TdmLTG;

implementation

{$R *.dfm}

function TdmLTG.AddLearnTimeGrid(ID: Variant; Financing: Integer;
  Name: string): integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'EXECUTE PROCEDURE ' +
    'ADD_LEARN_TIME_GRID(:ID, :FINANCING_ID, :NAME);';
  ibqProc.ParamByName('ID').Value := ID;
  ibqProc.ParamByName('FINANCING_ID').AsInteger := Financing;
  ibqProc.ParamByName('NAME').AsString := Name;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TdmLTG.AddLTGGrouping(LTG_ID, GroupingID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'DELETE FROM LTG_GROUPING LG ' +
    'WHERE LG.LTG_ID = :L_ID and LG.GROUPING_ID = :GR_ID';

  ibqProc.ParamByName('L_ID').AsInteger := LTG_ID;
  ibqProc.ParamByName('GR_ID').AsInteger := GroupingID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

function TdmLTG.AddLTGISubj(LTG_ID: Integer; ISubjID: Variant;
  ISubjName: String; Pos: Variant): Integer;
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'EXECUTE PROCEDURE ADD_LTG_I_SUBJECT(' +
    ':LTG_ID, :I_S_ID, :I_S_NAME, :POS)';

  ibqProc.ParamByName('LTG_ID').AsInteger := LTG_ID;
  ibqProc.ParamByName('I_S_ID').Value := ISubjID;
  ibqProc.ParamByName('I_S_NAME').AsString := ISubjName;
  ibqProc.ParamByName('POS').Value := Pos;

  try
    ibqProc.ExecSQL;
    Result := ibqProc.Current.Vars[0].AsInteger;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TdmLTG.AddLTGISubjCurr(LTG_ID, ISubjID, CurrID,
  CurrRecID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'EXECUTE PROCEDURE ADD_LTG_I_SUBJ_CURR(' +
    ':LTG_ID, :I_S_ID, :CURR_ID, :CR_ID)';

  ibqProc.ParamByName('LTG_ID').AsInteger := LTG_ID;
  ibqProc.ParamByName('I_S_ID').AsInteger := ISubjID;
  ibqProc.ParamByName('CURR_ID').AsInteger := CurrID;
  ibqProc.ParamByName('CR_ID').AsInteger := CurrRecID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TdmLTG.DelLTG(ID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'DELETE FROM LEARN_TIME_GRID WHERE ID = :IN_ID';
  ibqProc.ParamByName('IN_ID').AsInteger := ID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TdmLTG.DelLTGGrouping(LTG_ID, GroupingID: Integer);
begin

end;

procedure TdmLTG.DelLTGISubj(LTG_ID, ISubjID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'DELETE FROM LTG_I_SUBJECT LIS WHERE ' +
    'LIS.LTG_ID = :LTG_ID and LIS.ID = :I_S_ID';

  ibqProc.ParamByName('LTG_ID').AsInteger := LTG_ID;
  ibqProc.ParamByName('I_S_ID').AsInteger := ISubjID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TdmLTG.DelLTGISubjCurr(LTG_ID, ISubjID, CurrID,
  CurrRecID: Integer);
begin
  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;

  ibqProc.SQL.Text := 'DELETE FROM LTG_I_SUBJ_CURR LISC WHERE ' +
    'LISC.LTG_ID = :LTG_ID and LISC.LTG_I_SUBJ_ID = :I_S_ID and ' +
    'LISC.CURR_ID = :CURR_ID and LISC.CURR_REC_ID = :CR_ID';

  ibqProc.ParamByName('LTG_ID').AsInteger := LTG_ID;
  ibqProc.ParamByName('I_S_ID').AsInteger := ISubjID;
  ibqProc.ParamByName('CURR_ID').AsInteger := CurrID;
  ibqProc.ParamByName('CR_ID').AsInteger := CurrRecID;

  try
    ibqProc.ExecSQL;
  except
    ibqProc.Transaction.Rollback;
  end;

  if ibqProc.Transaction.InTransaction then ibqProc.Transaction.Commit;
end;

procedure TdmLTG.ibdsLTGCalcFields(DataSet: TDataSet);
begin
  if ibdsLTGFINANCING_ID.Value = 0 then
    ibdsLTGFinancing.Value := 'Á'
  else
    ibdsLTGFinancing.Value := 'Ñ';
end;

procedure TdmLTG.ibdsLTGReportCalcFields(DataSet: TDataSet);
var i: Integer;
begin
  for i := 0 to 8 do
    ibdsLTGReport.FieldByName('T_T_' + IntToStr(i)).AsFloat :=
      ibdsLTGReport.FieldByName('T_V_' + IntToStr(i)).AsFloat +
      ibdsLTGReport.FieldByName('T_' + IntToStr(i)).AsFloat;
  ibdsLTGReportT_T_Y.Value :=
    ibdsLTGReportT_V_Y.Value + ibdsLTGReportT_A_Y.Value;
  ibdsLTGReportT_T_O.Value :=
    ibdsLTGReportT_V_O.Value + ibdsLTGReportT_A_O.Value;
  ibdsLTGReportT_T_C.Value :=
    ibdsLTGReportT_V_C.Value + ibdsLTGReportT_A_C.Value;
end;

end.
