unit UTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, ExtCtrls, Grids, DBGrids, URTReport, IniFiles,
  ShellApi, RXDBCtrl, Buttons, IBCustomDataSet, frxClass, frxDBSet,
  frxExportRTF, frxVariables;

type
  TfmTab = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    miExit: TMenuItem;
    dsTab: TDataSource;
    Panel2: TPanel;
    pHeader01: TPanel;
    pHeader02: TPanel;
    pHeader03: TPanel;
    pHeader04: TPanel;
    pHeader05: TPanel;
    pHeader06: TPanel;
    pHeader07: TPanel;
    pHeader08: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    pHeader09: TPanel;
    miCPrint: TMenuItem;
    miPrint: TMenuItem;
    pHeader00: TPanel;
    dbgTab: TRxDBGrid;
    btnForming: TSpeedButton;
    btnEdit: TSpeedButton;
    miHelp: TMenuItem;
    frxAbsentTab: TfrxReport;
    frxDBDSAT1: TfrxDBDataset;
    ibdsAbsentTab1: TIBDataSet;
    frxRTFExport: TfrxRTFExport;
    ibdsTabParams: TIBDataSet;
    frxDBDSParams: TfrxDBDataset;
    ibdsTabPart2: TIBDataSet;
    frxDBDataset1: TfrxDBDataset;
    mPrintSimple: TMenuItem;
    procedure miExitClick(Sender: TObject);
    procedure btnFormingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgTabDblClick(Sender: TObject);
    procedure dbgTabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure miPrintClick(Sender: TObject);
    procedure miPrintOptionsClick(Sender: TObject);
    procedure dbgTabKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
    procedure mPrintSimpleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTab: TfmTab;

implementation

uses UDM, UEdMainTab, DateUtils, UMTPrintSet;

{$R *.dfm}

procedure TfmTab.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmTab.btnFormingClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите сформировать табель' + #13 + #10 +
    'Внимение: Часы будут очищены!',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    //StrToIntDef(InputBox('Параметры', 'Количество дней', '26'), 0)
    DM.Forming_Main_Tab(26);
    DM.ibdsMainTab.Close;
    DM.ibdsMainTab.Open;
  end;
end;

procedure TfmTab.FormCreate(Sender: TObject);
var
  i: integer;
  l: TList;
  p: TComponent;
begin
  dsTab.DataSet := DM.ibdsMainTab;
  for i := 0 to dbgTab.Columns.Count - 1 do
  begin
    p := FindComponent('pHeader' + Format('%2.2d', [i]));
    if p is TPanel then
    begin
      dbgTab.Columns[i].Width := (p as TPanel).Width;
    end;
  end;
end;

procedure TfmTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsTab.DataSet := nil;
end;

procedure TfmTab.dbgTabDblClick(Sender: TObject);
begin
  fmEditMainTab := TfmEditMainTab.Create(Self, DM.ibdsMainTabTEACHER_ID.Value);
  fmEditMainTab.edBYT.Text := DM.ibdsMainTabB_Y_TIME.AsString;
  fmEditMainTab.edBOT.Text := DM.ibdsMainTabB_O_TIME.AsString;
  fmEditMainTab.edBCT.Text := DM.ibdsMainTabB_C_TIME.AsString;
  fmEditMainTab.edComments.Text := DM.ibdsMainTabCOMMENTS.Value;
  fmEditMainTab.edSwpY.Text := DM.ibdsMainTabSWP_Y_TIME.AsString;
  fmEditMainTab.edSwpO.Text := DM.ibdsMainTabSWP_O_TIME.AsString;
  fmEditMainTab.edSwpC.Text := DM.ibdsMainTabSWP_C_TIME.AsString;
  if fmEditMainTab.ShowModal = mrOK then
  begin

    DM.EditMainTab(DM.ibdsMainTabTEACHER_ID.Value,
      StrToFloatDef(fmEditMainTab.edBYT.Text, 0),
      StrToFloatDef(fmEditMainTab.edBOT.Text, 0),
      StrToFloatDef(fmEditMainTab.edBCT.Text, 0),
      fmEditMainTab.edComments.Text,
      StrToFloatDef(fmEditMainTab.edSwpY.Text, 0),
      StrToFloatDef(fmEditMainTab.edSwpO.Text, 0),
      StrToFloatDef(fmEditMainTab.edSwpC.Text, 0)
    );
    DM.ibdsMainTab.Refresh;
  end;
  fmEditMainTab.Release;
end;

procedure TfmTab.dbgTabDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.Field.AsString = '0' then
    dbgTab.Canvas.Font.Color := dbgTab.Canvas.Brush.Color;
  if DM.ibdsMainTabTEACHER_ID.Value = 0 then
    dbgTab.Canvas.Font.Color := clRed;
  dbgTab.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure setReportDraftModeVariable(variables: TfrxVariables; isDraftMode: boolean);
var
  index: integer;
begin
  index := variables.IndexOf('isDraftMode');
  variables.Items[index].Value := isDraftMode;
end;

procedure TfmTab.miPrintClick(Sender: TObject);
const repFName = 'fr\MainTab.fr3';
begin
  frxRTFExport.FileName := URTReport.getFreeFileName;
  if not FileExists(repFName)  then
  begin
    frxAbsentTab.SaveToFile(repFName);
  end;
  ibdsAbsentTab1.Close;
  ibdsAbsentTab1.Open;
  frxAbsentTab.LoadFromFile(repFName);
  setReportDraftModeVariable(frxAbsentTab.Variables, true);
  frxAbsentTab.PrepareReport;
  frxAbsentTab.Export(frxRTFExport);
  ibdsAbsentTab1.Close;
end;

procedure TfmTab.miPrintOptionsClick(Sender: TObject);
begin
  fmMTPrintSet := TfmMTPrintSet.Create(Self);
  fmMTPrintSet.ShowModal;
  fmMTPrintSet.Release;
end;

procedure TfmTab.dbgTabKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then btnEdit.Click;
end;

procedure TfmTab.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 31);
end;

procedure TfmTab.mPrintSimpleClick(Sender: TObject);
const repFName = 'fr\MainTab.fr3';
begin
  frxRTFExport.FileName := URTReport.getFreeFileName;
  if not FileExists(repFName)  then
  begin
    frxAbsentTab.SaveToFile(repFName);
  end;
  ibdsAbsentTab1.Close;
  ibdsAbsentTab1.Open;
  frxAbsentTab.LoadFromFile(repFName);
  //frxAbsentTab.Variables.AddVariable('report', 'isDraftMode', false);
  setReportDraftModeVariable(frxAbsentTab.Variables, false);
  frxAbsentTab.PrepareReport;
  frxAbsentTab.Export(frxRTFExport);
  ibdsAbsentTab1.Close;
end;

end.
