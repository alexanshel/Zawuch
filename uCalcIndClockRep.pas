unit uCalcIndClockRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, JvExControls, JvDBLookup, Menus, ActnList,
  frxClass, frxDBSet, ExtCtrls, frxPreview, StdCtrls, frxExportRTF,
  frxExportXLS, Buttons, ToolWin, ComCtrls, ShellAPI, JvAppStorage,
  JvAppRegistryStorage, JvComponentBase, JvFormPlacement, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvExExtCtrls, JvNetscapeSplitter;

type
  TfmCalcIndClockRep = class(TForm)
    frxPreview: TfrxPreview;
    frxReport: TfrxReport;
    frxdbdsCurrRecord: TfrxDBDataset;
    ActionList1: TActionList;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ibdsCurrRecord: TIBDataSet;
    dsCurrRecord: TDataSource;
    ibdsCurrRecordSUBJECT_ID: TIntegerField;
    ibdsCurrRecordSUBJECT_NAME: TIBStringField;
    ibdsCurrRecordQ_0: TLargeintField;
    ibdsCurrRecordT_0: TFloatField;
    ibdsCurrRecordQ_V_0: TLargeintField;
    ibdsCurrRecordT_V_0: TFloatField;
    ibdsCurrRecordQ_1: TLargeintField;
    ibdsCurrRecordT_1: TFloatField;
    ibdsCurrRecordQ_V_1: TLargeintField;
    ibdsCurrRecordT_V_1: TFloatField;
    ibdsCurrRecordQ_2: TLargeintField;
    ibdsCurrRecordT_2: TFloatField;
    ibdsCurrRecordQ_V_2: TLargeintField;
    ibdsCurrRecordT_V_2: TFloatField;
    ibdsCurrRecordQ_3: TLargeintField;
    ibdsCurrRecordT_3: TFloatField;
    ibdsCurrRecordQ_V_3: TLargeintField;
    ibdsCurrRecordT_V_3: TFloatField;
    ibdsCurrRecordQ_4: TLargeintField;
    ibdsCurrRecordT_4: TFloatField;
    ibdsCurrRecordQ_V_4: TLargeintField;
    ibdsCurrRecordT_V_4: TFloatField;
    ibdsCurrRecordQ_5: TLargeintField;
    ibdsCurrRecordT_5: TFloatField;
    ibdsCurrRecordQ_V_5: TLargeintField;
    ibdsCurrRecordT_V_5: TFloatField;
    ibdsCurrRecordQ_6: TLargeintField;
    ibdsCurrRecordT_6: TFloatField;
    ibdsCurrRecordQ_V_6: TLargeintField;
    ibdsCurrRecordT_V_6: TFloatField;
    ibdsCurrRecordQ_7: TLargeintField;
    ibdsCurrRecordT_7: TFloatField;
    ibdsCurrRecordQ_V_7: TLargeintField;
    ibdsCurrRecordT_V_7: TFloatField;
    ibdsCurrRecordQ_8: TLargeintField;
    ibdsCurrRecordT_8: TFloatField;
    ibdsCurrRecordQ_V_8: TLargeintField;
    ibdsCurrRecordT_V_8: TFloatField;
    ibdsCurrRecordQ_Y_TOTAL: TLargeintField;
    ibdsCurrRecordT_Y_TOTAL: TFloatField;
    ibdsCurrRecordQ_V_Y_TOTAL: TLargeintField;
    ibdsCurrRecordT_V_Y_TOTAL: TFloatField;
    ibdsCurrRecordQ_O_TOTAL: TLargeintField;
    ibdsCurrRecordT_O_TOTAL: TFloatField;
    ibdsCurrRecordQ_V_O_TOTAL: TLargeintField;
    ibdsCurrRecordT_V_O_TOTAL: TFloatField;
    ibdsCurrRecordQ_C_TOTAL: TLargeintField;
    ibdsCurrRecordT_C_TOTAL: TFloatField;
    ibdsCurrRecordQ_V_C_TOTAL: TLargeintField;
    ibdsCurrRecordT_V_C_TOTAL: TFloatField;
    ibdsCurrRecordQ_TOTAL: TLargeintField;
    ibdsCurrRecordT_TOTAL: TFloatField;
    ibdsCurrRecordQ_V_TOTAL: TLargeintField;
    ibdsCurrRecordT_V_TOTAL: TFloatField;
    dsDepartment: TDataSource;
    ibdsDepartment: TIBDataSet;
    frxdbdsCurriculum: TfrxDBDataset;
    frxXLSExport: TfrxXLSExport;
    frxRTFExport: TfrxRTFExport;
    aPrint: TAction;
    aExportRtf: TAction;
    aExportExcel: TAction;
    aExit: TAction;
    ibdsCurrRecordID: TIntegerField;
    CoolBar: TCoolBar;
    frxReport0in1: TfrxReport;
    aZeroSumWithOne: TAction;
    ibdsCurrRecordQ_01: TLargeintField;
    ibdsCurrRecordT_01: TFloatField;
    ibdsCurrRecordQ_V_01: TLargeintField;
    ibdsCurrRecordT_V_01: TFloatField;
    JvFormStorage1: TJvFormStorage;
    JvAppRegistryStorage: TJvAppRegistryStorage;
    cbZeroClassInOne: TCheckBox;
    jvdblcbCurriculum: TJvDBLookupCombo;
    ibdsDepartmentID: TIntegerField;
    ibdsDepartmentDEPT_NAME: TIBStringField;
    ibdsDepartmentPERIOD: TSmallintField;
    ibdsDepartmentCAT_0: TLargeintField;
    ibdsDepartmentCAT_1: TLargeintField;
    ibdsDepartmentCAT_2: TLargeintField;
    ibdsDepartmentCAT_3: TLargeintField;
    ibdsDepartmentCAT_4: TLargeintField;
    ibdsDepartmentCAT_5: TLargeintField;
    ibdsDepartmentCAT_6: TLargeintField;
    ibdsDepartmentCAT_7: TLargeintField;
    ibdsDepartmentCAT_8: TLargeintField;
    ibdsDepartmentQ_0: TLargeintField;
    ibdsDepartmentQ_1: TLargeintField;
    ibdsDepartmentQ_01: TLargeintField;
    ibdsDepartmentQ_2: TLargeintField;
    ibdsDepartmentQ_3: TLargeintField;
    ibdsDepartmentQ_4: TLargeintField;
    ibdsDepartmentQ_5: TLargeintField;
    ibdsDepartmentQ_6: TLargeintField;
    ibdsDepartmentQ_7: TLargeintField;
    ibdsDepartmentQ_8: TLargeintField;
    ibdsDepartmentQ_Y: TLargeintField;
    ibdsDepartmentQ_O: TLargeintField;
    ibdsDepartmentQ_C: TLargeintField;
    procedure jvdblcbCurriculumChange(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aExportExcelExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aExportRtfExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aZeroSumWithOneExecute(Sender: TObject);
  private
    { Private declarations }
    FCurrReport: TfrxReport;
  public
    { Public declarations }
  end;

var
  fmCalcIndClockRep: TfmCalcIndClockRep;

implementation

uses
  UDM;
{$R *.dfm}

procedure TfmCalcIndClockRep.jvdblcbCurriculumChange(Sender: TObject);
begin
  //FCurrReport.PrepareReport;
  frxReport.PrepareReport;
  frxReport0in1.PrepareReport;
end;

procedure TfmCalcIndClockRep.aExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmCalcIndClockRep.aExportExcelExecute(Sender: TObject);
begin
  FCurrReport.Export(frxXLSExport);
  frxPreview.RefreshReport;
end;

procedure TfmCalcIndClockRep.aPrintExecute(Sender: TObject);
begin
  FCurrReport.Print;
end;

procedure TfmCalcIndClockRep.aExportRtfExecute(Sender: TObject);
var
  i: integer;
  FName: string;
begin
  i := 0;
  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\tmp') then
      if not CreateDir(ExtractFilePath(Application.ExeName) + '\tmp') then
        raise Exception.Create('Невозможно создать директорию tmp');
    while FileExists(ExtractFilePath(Application.ExeName) +
      'tmp\' + 'tmp' + IntToStr(i) + '.rtf') do inc(i);
    FName := ExtractFilePath(Application.ExeName) +
      'tmp\' + 'tmp' + IntToStr(i) + '.rtf';
  except
    MessageDlg('Невозможна запись в файл.', mtError, [mbOK], 0);
  end;

  frxRTFExport.FileName := FName;
  FCurrReport.Export(frxRTFExport);
  ShellExecute(Handle, nil, PChar(FName), nil, nil, SW_RESTORE);
  frxPreview.RefreshReport;
end;

procedure TfmCalcIndClockRep.FormCreate(Sender: TObject);
begin
  FCurrReport := frxReport;
  ibdsDepartment.Open;
  ibdsCurrRecord.Open;
  jvdblcbCurriculum.KeyValue := ibdsDepartmentID.Value;
end;

procedure TfmCalcIndClockRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibdsCurrRecord.Close;
  ibdsDepartment.Close;
end;

procedure TfmCalcIndClockRep.aZeroSumWithOneExecute(Sender: TObject);
begin
  FCurrReport.Preview := nil;
  if aZeroSumWithOne.Checked
  then FCurrReport := frxReport0in1
  else FCurrReport := frxReport;
  FCurrReport.Preview := frxPreview;
  //FCurrReport.PrepareReport;
  //frxReport.ShowPreparedReport;
  frxPreview.Repaint;
end;

end.
