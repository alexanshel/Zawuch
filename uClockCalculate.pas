unit uClockCalculate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvPageList, JvExControls, ComCtrls,
  JvExComCtrls, JvPageListTreeView, ToolWin,
  DB,
  JvgGridHeaderControl, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvMemoryDataset, frxClass,
  frxPreview, JvExStdCtrls, JvRichEdit, ActnList, JvHtControls,
  JvDBHTLabel, JvSpeedButton, IBCustomDataSet, IBQuery, uCalcPackEdit, uCalcPackAdd,
  ImgList, JvGroupHeader, UCalcIndividualAdd, JvExExtCtrls,
  JvNetscapeSplitter, UCalcGroupAdd, JvDataSource, Buttons, JvButton,
  JvCtrls, JvStringHolder, Clipbrd, Mask, JvExMask, JvToolEdit, uClockCalculateClasses,
  JvExGrids, JvGrids, JvStringGrid, JvgStringGrid, JvgVertDBGrid, 
  NXDBGrids, AppEvnts, frxDBSet, frxRich, frxDBXComponents, frxExportRTF,
  frxExportXLS, frxDesgn;

const
  M_CLOSE_WINDOW_MESSAGE = WM_USER + 100;
  M_REFRESH_TREE = WM_USER + 101;
  M_REFRESH_NODE = WM_USER + 102;

type
  TfmClockCalculate = class(TForm)
    jvpltv: TJvPageListTreeView;
    jvplCalcClock: TJvPageList;
    jvspPackage: TJvStandardPage;
    jvspIndividualParent: TJvStandardPage;
    jvspGroupParent: TJvStandardPage;
    jvspFirst: TJvStandardPage;
    jvspGroupCalc: TJvStandardPage;
    jvspIndCalc: TJvStandardPage;
    CoolBar1: TCoolBar;
    tbMain: TToolBar;
    tbNewCalcPacket: TToolButton;
    frxrIndividual: TfrxReport;
    jvspIndCalcSubj: TJvStandardPage;
    JvDBGrid1: TJvDBGrid;
    al: TActionList;
    aNewCalcPack: TAction;
    aPrintCalcPack: TAction;
    aDelCalcPack: TAction;
    pHeader: TPanel;
    JvSpeedButton1: TJvSpeedButton;
    pFrame: TPanel;
    il: TImageList;
    aPackageNameChange: TAction;
    jvspGroupSubj: TJvStandardPage;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    aCalcIndividualNew: TAction;
    pCIFrame: TPanel;
    JvNetscapeSplitter1: TJvNetscapeSplitter;
    jvhtlCIPHeader: TJvHTLabel;
    Bevel1: TBevel;
    jvhtlCGPHeader: TJvHTLabel;
    cbCGParent: TCoolBar;
    tbCGParent: TToolBar;
    tbCGPCalcGroupAdd: TToolButton;
    pCGFrame: TPanel;
    aCalcGroupNew: TAction;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    aISubjectNew: TAction;
    jvdsCISDetail: TJvDataSource;
    aISubjectEdit: TAction;
    aISubjectDel: TAction;
    ToolButton4: TToolButton;
    aICalcRefresh: TAction;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    jvhtlicHeader: TJvHTLabel;
    aCINameChange: TAction;
    Panel6: TPanel;
    jvhtlisHeader: TJvHTLabel;
    jvdsICClassDetail: TJvDataSource;
    aCISRefresh: TAction;
    aCIReCalculate: TAction;
    GroupBox1: TGroupBox;
    jvdsCIS: TJvDataSource;
    Panel9: TPanel;
    SpeedButton2: TSpeedButton;
    jvhtlgcHeader: TJvHTLabel;
    GroupBox2: TGroupBox;
    ToolBar3: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    aCGRefresh: TAction;
    aGSubjectNew: TAction;
    aGSubjectDel: TAction;
    aCGReCalculate: TAction;
    aCGNameChange: TAction;
    aCGHeaderChange: TAction;
    GroupBox4: TGroupBox;
    JvDBUltimGrid2: TJvDBUltimGrid;
    JvDBGrid3: TJvDBGrid;
    Panel15: TPanel;
    jvhtlgsHeader: TJvHTLabel;
    jvhtlcpHeader: TJvHTLabel;
    nxdbgGClassDetail: TNXDBGrid;
    nxdbgIClassDetail: TNXDBGrid;
    GroupBox5: TGroupBox;
    JvDBUltimGrid1: TJvDBUltimGrid;
    CoolBar4: TCoolBar;
    ToolBar4: TToolBar;
    ToolButton8: TToolButton;
    ToolButton3: TToolButton;
    aCIHeaderChange: TAction;
    aCIFooterChange: TAction;
    ToolButton9: TToolButton;
    sbInfo: TStatusBar;
    ApplicationEvents: TApplicationEvents;
    CoolBar3: TCoolBar;
    ToolBar5: TToolBar;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    aCGFooterChange: TAction;
    JvDBGrid2: TJvDBGrid;
    jvdsCI: TJvDataSource;
    aCIPRefresh: TAction;
    ToolButton7: TToolButton;
    aCIDel: TAction;
    jvdbgCGP: TJvDBGrid;
    jvdsCG: TJvDataSource;
    aCGPRefresh: TAction;
    ToolButton13: TToolButton;
    aCGDel: TAction;
    JvDBGrid4: TJvDBGrid;
    ToolButton14: TToolButton;
    aCPDel: TAction;
    aFRefresh: TAction;
    jvdsPackage: TJvDataSource;
    Panel14: TPanel;
    aCGSRefresh: TAction;
    ToolButton15: TToolButton;
    aCIPrint: TAction;
    frxdbdsHeader: TfrxDBDataset;
    frxdbdsMaster: TfrxDBDataset;
    ibdsHeader: TIBDataSet;
    ibdsMaster: TIBDataSet;
    frxRichObject1: TfrxRichObject;
    frxrGroup: TfrxReport;
    ToolButton16: TToolButton;
    aCGPrint: TAction;
    ToolButton17: TToolButton;
    aCGFillFromGrouping: TAction;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolButton18: TToolButton;
    aCIFillFromDepartment: TAction;
    ibdsFr: TIBDataSet;
    frxDBXComponents1: TfrxDBXComponents;
    frxrIndividualWT0: TfrxReport;
    aCIPrintWT0: TAction;
    ToolButton19: TToolButton;
    frxrGroupWT0: TfrxReport;
    ToolButton20: TToolButton;
    aCGPrintWT0: TAction;
    frxXLSExport: TfrxXLSExport;
    frxRTFExport: TfrxRTFExport;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    aCIWordExport: TAction;
    aCIWordExportWT0: TAction;
    aCGWordExport: TAction;
    aCGWordExportWT0: TAction;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    aCIPrintFormEdit: TAction;
    aCIPrintFormEditWT0: TAction;
    ToolButton25: TToolButton;
    aEditPrintForm: TAction;
    frxDesigner: TfrxDesigner;
    frxReport: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure aNewCalcPackExecute(Sender: TObject);
    procedure jvpltvChange(Sender: TObject; Node: TTreeNode);
    procedure aPackageNameChangeExecute(Sender: TObject);
    procedure aCalcIndividualNewExecute(Sender: TObject);
    procedure aCalcGroupNewExecute(Sender: TObject);
    procedure aISubjectNewExecute(Sender: TObject);
    procedure aICalcRefreshExecute(Sender: TObject);
    procedure btnICalcHeaderEditClick(Sender: TObject);
    procedure aISubjectDelExecute(Sender: TObject);
    procedure aCINameChangeExecute(Sender: TObject);
    procedure aCISRefreshExecute(Sender: TObject);
    procedure aCIReCalculateExecute(Sender: TObject);
    procedure aCGRefreshExecute(Sender: TObject);
    procedure aCGNameChangeExecute(Sender: TObject);
    procedure aGSubjectNewExecute(Sender: TObject);
    procedure aCGReCalculateExecute(Sender: TObject);
    procedure aGSubjectDelExecute(Sender: TObject);
    procedure aGSubjectDelUpdate(Sender: TObject);
    procedure aCIHeaderChangeExecute(Sender: TObject);
    procedure aCIFooterChangeExecute(Sender: TObject);
    procedure ApplicationEventsShowHint(var HintStr: String;
      var CanShow: Boolean; var HintInfo: THintInfo);
    procedure aCGHeaderChangeExecute(Sender: TObject);
    procedure aCGFooterChangeExecute(Sender: TObject);
    procedure aCIPRefreshExecute(Sender: TObject);
    procedure aCIDelExecute(Sender: TObject);
    procedure aCIDelUpdate(Sender: TObject);
    procedure aCGPRefreshExecute(Sender: TObject);
    procedure aCGDelExecute(Sender: TObject);
    procedure aFRefreshExecute(Sender: TObject);
    procedure aCPDelExecute(Sender: TObject);
    procedure aCPDelUpdate(Sender: TObject);
    procedure aCGSRefreshExecute(Sender: TObject);
    procedure aCIPrintExecute(Sender: TObject);
    procedure aCGPrintExecute(Sender: TObject);
    procedure aCGFillFromGroupingExecute(Sender: TObject);
    procedure aCIFillFromDepartmentExecute(Sender: TObject);
    procedure aCIPrintWT0Execute(Sender: TObject);
    procedure aCGPrintWT0Execute(Sender: TObject);
    procedure aCIWordExportExecute(Sender: TObject);
    procedure aCIWordExportWT0Execute(Sender: TObject);
    procedure aCGWordExportExecute(Sender: TObject);
    procedure aCGWordExportWT0Execute(Sender: TObject);
    procedure aEditPrintFormExecute(Sender: TObject);
  private
    { Private declarations }
    FCurrentFrame: TFrame;
    FCurrentForm: TForm;
    procedure RefreshTree; overload;
    procedure RefreshTree(var Msg: TMessage); overload; message  M_REFRESH_TREE;
    procedure RefreshNode(var Msg: TMessage); overload; message  M_REFRESH_NODE;
    procedure RefreshNode(Node: TNodeCustom; WithChilds: Boolean = False); overload;
    procedure CloseCurrentForm(var Msg: TMessage); message M_CLOSE_WINDOW_MESSAGE;
  public
    { Public declarations }
  end;


var
  fmClockCalculate: TfmClockCalculate;


implementation

uses UDM, uEdISubject, uRichEditor, uEdGSubject, uGroupingChoice,
  uDepChoice;

{$R *.dfm}

{ TfmClockCalculate }
//полное обновление дерева
procedure TfmClockCalculate.RefreshTree;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDataSource then (Components[i] as TDataSource).DataSet := nil;
    
  TNodeRoot.Create(jvpltv.Items);
  //TNodePackage.LoadPackages(jvpltv.Items);
  
  if jvpltv.Items.GetFirstNode <> nil then
    jvpltv.Items.GetFirstNode.Selected := True;
end;

procedure TfmClockCalculate.CloseCurrentForm(var Msg: TMessage);
begin
  if Assigned(FCurrentFrame) then
  begin
    FCurrentFrame.Free;
    FCurrentFrame := nil;
  end;
  if Assigned(FCurrentForm) then
  begin
    FCurrentForm.Free;
    FCurrentForm := nil;
  end;
end;

procedure TfmClockCalculate.RefreshTree(var Msg: TMessage);
begin
  RefreshTree;
  //Msg.WParam
end;

procedure TfmClockCalculate.RefreshNode(Node: TNodeCustom; WithChilds: Boolean = False);
begin
//  if Node is TNodePackage then
//  begin
    Node.Refresh(WithChilds);
//  end;
end;

procedure TfmClockCalculate.FormCreate(Sender: TObject);
begin
  FCurrentFrame := nil;
  RefreshTree;
  Application.HintPause := 0;
  Application.HintHidePause := 0;
end;

procedure TfmClockCalculate.aNewCalcPackExecute(Sender: TObject);
begin
  if (not Assigned(FCurrentForm)) or FCurrentForm.CloseQuery then
  begin
    FreeAndNil(FCurrentForm);
    FCurrentForm := TfmCalcPackAdd.Create(Self);
    FCurrentForm.Parent := pFrame;
    FCurrentForm.Show;
  end;
end;

procedure TfmClockCalculate.jvpltvChange(Sender: TObject; Node: TTreeNode);
var
  i: Integer;
begin
  //отключаем все датасорсы
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDataSource then (Components[i] as TDataSource).DataSet := nil;

  //убиваем фрейм
  if Assigned(FCurrentForm) then
  begin
    if FCurrentForm.CloseQuery then FreeAndNil(FCurrentForm);
  end;

  if Node is TNodeRoot then
  begin
    aFRefresh.Execute;
  end
  else if Node is TNodePackage then
  begin
    jvhtlcpHeader.Caption := 'Пакет: ' +
      (Node as TNodePackage).Text;
  end
  else if Node is TNodeIndCalcParent then
  begin
    aCIPRefresh.Execute;
  end
  else if Node is TNodeIndividualCalc then
  begin
    aICalcRefresh.Execute;
  end
  else if Node is TNodeIndividualCalcSubject then
  begin
    aCISRefresh.Execute;
  end
  else if Node is TNodeGroupCalcParent then
  begin
    aCGPRefresh.Execute;
  end
  else if Node is TNodeGroupCalc then
  begin
    aCGRefresh.Execute;
  end
  else if Node is TNodeGroupCalcSubject then
  begin
    aCGSRefresh.Execute;
  end;
  //Node as
end;

procedure TfmClockCalculate.aPackageNameChangeExecute(Sender: TObject);
var
  np: TNodePackage;
  new_name: string;
begin
  if (jvpltv.Selected is TNodePackage) and InputQuery('Пакет расчёта', 'Новое наименование: ', new_name) then
  begin
    np := (jvpltv.Selected as TNodePackage);
    DM.CalcPack.NameChange(np.ID, new_name);
    //RefreshNode(np);
    (jvpltv.Selected as TNodeCustom).Refresh(False);
    //PostMessage(Handle, M_REFRESH_TREE, 0, 0);
  end;
end;

procedure TfmClockCalculate.aCalcIndividualNewExecute(Sender: TObject);
begin
  if
    ((not Assigned(FCurrentForm)) or FCurrentForm.CloseQuery) and
    (jvpltv.Selected <> nil) and
    (jvpltv.Selected.Parent is TNodePackage) then
  begin
    FreeAndNil(FCurrentForm);
    FCurrentForm := TfmCalcIndividualAdd.Create(Self, (jvpltv.Selected.Parent as TNodePackage).ID);
    FCurrentForm.Parent := pCIFrame;
    FCurrentForm.Show;
  end;
end;

procedure TfmClockCalculate.aCalcGroupNewExecute(Sender: TObject);
begin
  if
    ((not Assigned(FCurrentForm)) or FCurrentForm.CloseQuery) and
    (jvpltv.Selected <> nil) and
    (jvpltv.Selected.Parent is TNodePackage) then
  begin
    FreeAndNil(FCurrentForm);
    FCurrentForm := TfmCalcGroupAdd.Create(Self, (jvpltv.Selected.Parent as TNodePackage).ID);
    FCurrentForm.Parent := pCGFrame;
    FCurrentForm.Show;
  end;
end;

procedure TfmClockCalculate.aISubjectNewExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;
  Node := jvpltv.Selected as TNodeIndividualCalc;
  fmEdISubject := TfmEdISubject.Create(Self, '', Null, Null);
  if fmEdISubject.ShowModal = mrOk then
  begin
    DM.CalcIndividual.AddSubject(
      Node.Package.ID,
      Node.ID,
      fmEdISubject.edName.Text,
      fmEdISubject.jvdblcDepartment.KeyValue,
      fmEdISubject.jvdblcCurrRec.KeyValue,
      fmEdISubject.cbConcertmaster.Checked);
    Node.Refresh(True);
  end;
  fmEdISubject.Release;
end;

procedure TfmClockCalculate.aICalcRefreshExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
  S: TStringStream;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;
  Node := jvpltv.Selected as TNodeIndividualCalc;
  jvhtlicHeader.Caption := 'Расчет: ' + Node.Text;

//грузим информацию
  jvdsCIS.DataSet := Node.SubjectMemoryData;
  jvdsICClassDetail.DataSet := Node.ClassDetailMemoryData;
{
  S := TStringStream.Create(Node.Header);
  try
    jvreICalcHeader.Lines.Clear;
    jvreICalcHeader.Lines.LoadFromStream(S);
  finally
    S.Free;
  end;
  S := TStringStream.Create(Node.Footer);
  try
    jvreICalcFooter.Lines.Clear;
    jvreICalcFooter.Lines.LoadFromStream(S);
  finally
    S.Free;
  end;
}
end;

procedure TfmClockCalculate.btnICalcHeaderEditClick(Sender: TObject);
var
  Node: TNodeIndividualCalc;
  S: TStream;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;
  Node := (jvpltv.Selected as TNodeIndividualCalc);
  fmRichEditor := TfmRichEditor.Create(Self);
  S := TStringStream.Create(Node.Header);
  S.Seek(0, soBeginning);
  fmRichEditor.jvreInfo.Lines.LoadFromStream(S);
  if fmRichEditor.ShowModal = mrOK then
  begin
    S.Free;
    S := TStringStream.Create('');
    fmRichEditor.jvreInfo.Lines.SaveToStream(S);
    S.Seek(0, soBeginning);
    DM.CalcIndividual.HeaderChange(Node.Package.ID, Node.ID, (S as TStringStream).ReadString(S.Size));
    Node.Refresh(False);
    aICalcRefresh.Execute;
  end;
  S.Free;
  fmRichEditor.Release;
end;

procedure TfmClockCalculate.aISubjectDelExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;
  Node := jvpltv.Selected as TNodeIndividualCalc;

  if Application.MessageBox('Вы действительно хотите удалить предмет?', 'Удаление', MB_YESNO) = mrYes then
  begin
    DM.CalcIndividual.SubjectDelete(Node.Package.ID, Node.ID, Node.SubjectMemoryData.FieldValues['ID']);
    aICalcRefresh.Execute;
    Node.Refresh(True);
  end;
end;

procedure TfmClockCalculate.aCINameChangeExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
  s: string;
begin
  Node := jvpltv.Selected as TNodeIndividualCalc;
  s := Node.Text;
  if InputQuery('Наименование', 'Введите наименование', s) then
  begin
    DM.CalcIndividual.NameChange(Node.Package.ID, Node.ID, s);
    Node.Refresh(False);
    aICalcRefresh.Execute;
  end;
end;

procedure TfmClockCalculate.aCISRefreshExecute(Sender: TObject);
begin
  jvdsCISDetail.DataSet := (jvpltv.Selected as TNodeIndividualCalcSubject).SubjectDetailMemoryData;
  jvhtlisHeader.Caption := 'Предмет: ' + (jvpltv.Selected as TNodeIndividualCalcSubject).Text;
end;

procedure TfmClockCalculate.aCIReCalculateExecute(Sender: TObject);
begin
  DM.CalcIndividual.ReCalculate(
    (jvpltv.Selected as TNodeIndividualCalc).ID,
    (jvpltv.Selected as TNodeIndividualCalc).Package.ID
  );
  (jvpltv.Selected as TNodeIndividualCalc).Refresh(True);
  aICalcRefresh.Execute;
end;

procedure TfmClockCalculate.aCGRefreshExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
  S: TStringStream;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;
  Node := jvpltv.Selected as TNodeGroupCalc;
  jvhtlgcHeader.Caption := 'Расчет: ' + Node.Text;

//грузим информацию
  jvdsCIS.DataSet := Node.SubjectMemoryData;
  jvdsICClassDetail.DataSet := Node.ClassDetailMemoryData;
end;

procedure TfmClockCalculate.aCGNameChangeExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
  s: string;
begin
  Node := jvpltv.Selected as TNodeGroupCalc;
  s := Node.Text;
  if InputQuery('Наименование', 'Введите наименование', s) then
  begin
    DM.CalcGroup.NameChange(Node.Package.ID, Node.ID, s);
    Node.Refresh(False);
    aCGRefresh.Execute;
  end;
end;

procedure TfmClockCalculate.aGSubjectNewExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;
  Node := jvpltv.Selected as TNodeGroupCalc;
  fmEdGSubject := TfmEdGSubject.Create(Self, '', Null, Null);
  if fmEdGSubject.ShowModal = mrOk then
  begin
    DM.CalcGroup.AddSubject(
      Node.Package.ID,
      Node.ID,
      fmEdGSubject.edName.Text,
      fmEdGSubject.jvdblcGrouping.KeyValue,
      fmEdGSubject.jvdblcGroupingSubj.KeyValue,
      fmEdGSubject.cbConcertmaster.Checked);
     Node.Refresh(True);
  end;
  fmEdGSubject.Release;
end;

procedure TfmClockCalculate.aCGReCalculateExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then
    raise Exception.Create('Узел не является групповым расчётом');
  Node := jvpltv.Selected as TNodeGroupCalc;
  DM.CalcGroup.ReCalculate(Node.ID, Node.Package.ID);
  Node.Refresh(True);  //детишек обновляем тоже
end;

procedure TfmClockCalculate.aGSubjectDelExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;
  Node := jvpltv.Selected as TNodeGroupCalc;
  if Application.MessageBox('Вы действительно хотите удалить предмет?', 'Удаление', MB_YESNO) = mrYes then
  begin
    DM.CalcGroup.SubjectDelete(Node.Package.ID, Node.ID, Node.SubjectMemoryData.FieldValues['ID']);
    aCGRefresh.Execute;
    Node.Refresh(True);
  end;
end;

procedure TfmClockCalculate.aGSubjectDelUpdate(Sender: TObject);
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;
  (Sender as TAction).Enabled := not (jvpltv.Selected as TNodeGroupCalc).SubjectMemoryData.IsEmpty;
end;

procedure TfmClockCalculate.aCIHeaderChangeExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
  S: TStream;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;
  Node := (jvpltv.Selected as TNodeIndividualCalc);
  fmRichEditor := TfmRichEditor.Create(Self);
  S := TStringStream.Create(Node.Header);
  S.Seek(0, soBeginning);
  fmRichEditor.jvreInfo.Lines.LoadFromStream(S);
  if fmRichEditor.ShowModal = mrOK then
  begin
    S.Free;
    S := TStringStream.Create('');
    fmRichEditor.jvreInfo.Lines.SaveToStream(S);
    S.Seek(0, soBeginning);
    DM.CalcIndividual.HeaderChange(Node.Package.ID, Node.ID, (S as TStringStream).ReadString(S.Size));
    Node.Refresh(False);
    aICalcRefresh.Execute;
  end;
  S.Free;
  fmRichEditor.Release;
end;

procedure TfmClockCalculate.aCIFooterChangeExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
  S: TStream;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;
  Node := (jvpltv.Selected as TNodeIndividualCalc);
  fmRichEditor := TfmRichEditor.Create(Self);
  S := TStringStream.Create(Node.Footer);
  S.Seek(0, soBeginning);
  fmRichEditor.jvreInfo.Lines.LoadFromStream(S);
  if fmRichEditor.ShowModal = mrOK then
  begin
    S.Free;
    S := TStringStream.Create('');
    fmRichEditor.jvreInfo.Lines.SaveToStream(S);
    S.Seek(0, soBeginning);
    DM.CalcIndividual.FooterChange(Node.Package.ID, Node.ID, (S as TStringStream).ReadString(S.Size));
    Node.Refresh(False);
    aICalcRefresh.Execute;
  end;
  S.Free;
  fmRichEditor.Release;
end;

procedure TfmClockCalculate.ApplicationEventsShowHint(var HintStr: String;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
  sbInfo.SimpleText := HintStr;
  CanShow := False;
end;



procedure TfmClockCalculate.aCGHeaderChangeExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
  S: TStream;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;
  Node := (jvpltv.Selected as TNodeGroupCalc);
  fmRichEditor := TfmRichEditor.Create(Self);
  S := TStringStream.Create(Node.Header);
  S.Seek(0, soBeginning);
  fmRichEditor.jvreInfo.Lines.LoadFromStream(S);
  if fmRichEditor.ShowModal = mrOK then
  begin
    S.Free;
    S := TStringStream.Create('');
    fmRichEditor.jvreInfo.Lines.SaveToStream(S);
    S.Seek(0, soBeginning);
    DM.CalcGroup.HeaderChange(Node.Package.ID, Node.ID, (S as TStringStream).ReadString(S.Size));
    Node.Refresh(False);
    aCGRefresh.Execute;
  end;
  S.Free;
  fmRichEditor.Release;
end;

procedure TfmClockCalculate.aCGFooterChangeExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
  S: TStream;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;
  Node := (jvpltv.Selected as TNodeGroupCalc);
  fmRichEditor := TfmRichEditor.Create(Self);
  S := TStringStream.Create(Node.Footer);
  S.Seek(0, soBeginning);
  fmRichEditor.jvreInfo.Lines.LoadFromStream(S);
  if fmRichEditor.ShowModal = mrOK then
  begin
    S.Free;
    S := TStringStream.Create('');
    fmRichEditor.jvreInfo.Lines.SaveToStream(S);
    S.Seek(0, soBeginning);
    DM.CalcGroup.FooterChange(Node.Package.ID, Node.ID, (S as TStringStream).ReadString(S.Size));
    Node.Refresh(False);
    aCGRefresh.Execute;
  end;
  S.Free;
  fmRichEditor.Release;
end;

procedure TfmClockCalculate.aCIPRefreshExecute(Sender: TObject);
var
  Node: TNodeIndCalcParent;
begin
  if not (jvpltv.Selected is TNodeIndCalcParent) then Exit;
  Node := jvpltv.Selected as TNodeIndCalcParent;
  jvhtlCIPHeader.Caption :=
      'Расчёты индивидуальных предметов пакета: ' + Node.Package.Text;
  Node := jvpltv.Selected as TNodeIndCalcParent;
  jvdsCI.DataSet := Node.CalcIndividualMemoryData;
end;

procedure TfmClockCalculate.aCIDelExecute(Sender: TObject);
var
  Node: TNodeIndCalcParent;
begin
  if not (jvpltv.Selected is TNodeIndCalcParent) then Exit;

  Node := jvpltv.Selected as TNodeIndCalcParent;

  DM.CalcIndividual.Delete(Node.Package.ID, Node.CalcIndividualMemoryData.FieldByName('ID').Value);
  RefreshNode(Node, True);
end;

procedure TfmClockCalculate.aCIDelUpdate(Sender: TObject);
begin
  (Sender as TAction).Enabled := Assigned(jvdsCI.DataSet) and (not jvdsCI.DataSet.IsEmpty);
end;

procedure TfmClockCalculate.RefreshNode(var Msg: TMessage);
begin
  RefreshNode((jvpltv.Selected as TNodeCustom), Msg.LParam > 0);
end;

procedure TfmClockCalculate.aCGPRefreshExecute(Sender: TObject);
var
  Node: TNodeGroupCalcParent;
begin
  if not (jvpltv.Selected is TNodeGroupCalcParent) then Exit;
  Node := jvpltv.Selected as TNodeGroupCalcParent;
  jvhtlCGPHeader.Caption :=
      'Расчёты групповых предметов пакета: ' + Node.Package.Text;
  jvdsCG.DataSet := Node.CalcGrouplMemoryData;
end;

procedure TfmClockCalculate.aCGDelExecute(Sender: TObject);
var
  Node: TNodeGroupCalcParent;
begin
  if not (jvpltv.Selected is TNodeGroupCalcParent) then Exit;

  Node := jvpltv.Selected as TNodeGroupCalcParent;

  DM.CalcGroup.Delete(Node.Package.ID, Node.CalcGrouplMemoryData.FieldByName('ID').Value);
  RefreshNode(Node, True);
end;

procedure TfmClockCalculate.aFRefreshExecute(Sender: TObject);
var
  Node: TNodeRoot;
begin
  if not (jvpltv.Selected is TNodeRoot) then Exit;
  Node := jvpltv.Selected as TNodeRoot;
  jvdsPackage.DataSet := Node.CalcPackMemoryData;
end;

procedure TfmClockCalculate.aCPDelExecute(Sender: TObject);
var
  Node: TNodeRoot;
begin
  if not (jvpltv.Selected is TNodeRoot) then Exit;
  Node := jvpltv.Selected as TNodeRoot;
  DM.CalcPack.Delete(Node.CalcPackMemoryData.FieldByName('ID').Value);
  jvdsPackage.DataSet := Node.CalcPackMemoryData;
  RefreshNode(Node, True);
end;

procedure TfmClockCalculate.aCPDelUpdate(Sender: TObject);
var
  Node: TNodeRoot;
begin
  if not (jvpltv.Selected is TNodeRoot) then Exit;
  Node := jvpltv.Selected as TNodeRoot;
  (Sender as TAction).Enabled := Assigned(Node.CalcPackMemoryData) and (not Node.CalcPackMemoryData.IsEmpty);
end;

procedure TfmClockCalculate.aCGSRefreshExecute(Sender: TObject);
var
  Node: TNodeGroupCalcSubject;
begin
  if not (jvpltv.Selected is TNodeGroupCalcSubject) then Exit;
  Node := jvpltv.Selected as TNodeGroupCalcSubject;
  jvdsCISDetail.DataSet := Node.SubjectDetailMemoryData;
  jvhtlgsHeader.Caption := 'Предмет: ' + Node.Text;
end;

procedure TfmClockCalculate.aCIPrintExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;

  Node := jvpltv.Selected as TNodeIndividualCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

  if not FileExists('ccIndividual.fr3')  then
  begin
    frxrIndividual.SaveToFile('ccIndividual.fr3');
  end;

  frxrIndividual.LoadFromFile('ccIndividual.fr3');
  frxrIndividual.ShowReport;
end;

procedure TfmClockCalculate.aCGPrintExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;

  Node := jvpltv.Selected as TNodeGroupCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_GROUP = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

  if not FileExists('ccGroup.fr3')  then
  begin
    frxrGroup.SaveToFile('ccGroup.fr3');
  end;

  frxrGroup.LoadFromFile('ccGroup.fr3');
  frxrGroup.ShowReport;
end;

procedure TfmClockCalculate.aCGFillFromGroupingExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;

  Node := jvpltv.Selected as TNodeGroupCalc;

  fmGroupingChoice := TfmGroupingChoice.Create(Self);
  if (fmGroupingChoice.ShowModal = mrOK) and (fmGroupingChoice.jvdblcGrouping.KeyValue <> Null) then
  begin
    DM.CalcGroup.FillFromGrouping(Node.Package.ID, Node.ID, fmGroupingChoice.jvdblcGrouping.KeyValue);
  end;
  fmGroupingChoice.Release;
end;

procedure TfmClockCalculate.aCIFillFromDepartmentExecute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;

  Node := jvpltv.Selected as TNodeIndividualCalc;

  fmDepChoice := TfmDepChoice.Create(Self);
  if (fmDepChoice.ShowModal = mrOK) and (fmDepChoice.jvdblcDepartment.KeyValue <> Null) then
  begin
    DM.CalcIndividual.FillFromDepartment(Node.ID, Node.Package.ID, fmDepChoice.jvdblcDepartment.KeyValue);
  end;
  fmDepChoice.Release;
  Node.Refresh(True);
end;

procedure TfmClockCalculate.aCIPrintWT0Execute(Sender: TObject);
var
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;

  Node := jvpltv.Selected as TNodeIndividualCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

  if not FileExists('ccIndividualWT0.fr3')  then
  begin
    frxrIndividualWT0.SaveToFile('ccIndividualWT0.fr3');
  end;

  frxrIndividualWT0.LoadFromFile('ccIndividualWT0.fr3');
  frxrIndividualWT0.ShowReport;
end;

procedure TfmClockCalculate.aCGPrintWT0Execute(Sender: TObject);
var
  Node: TNodeGroupCalc;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;

  Node := jvpltv.Selected as TNodeGroupCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_GROUP = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

  if not FileExists('ccGroupWT0.fr3')  then
  begin
    frxrGroupWT0.SaveToFile('ccGroupWT0.fr3');
  end;

  frxrGroupWT0.LoadFromFile('ccGroupWT0.fr3');
  frxrGroupWT0.ShowReport;
end;

procedure TfmClockCalculate.aCIWordExportExecute(Sender: TObject);
var
  i: integer;
  FName: string;
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;

  Node := jvpltv.Selected as TNodeIndividualCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

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

  if not FileExists('ccIndividual.fr3')  then
  begin
    frxrIndividual.SaveToFile('ccIndividual.fr3');
  end;

  frxrIndividual.LoadFromFile('ccIndividual.fr3');
  frxrIndividual.PrepareReport;
  frxrIndividual.Export(frxRTFExport);
end;

procedure TfmClockCalculate.aCIWordExportWT0Execute(Sender: TObject);
var
  i: integer;
  FName: string;
  Node: TNodeIndividualCalc;
begin
  if not (jvpltv.Selected is TNodeIndividualCalc) then Exit;

  Node := jvpltv.Selected as TNodeIndividualCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_INDIVIDUAL_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_INDIVIDUAL = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;
  
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

  if not FileExists('ccIndividualWT0.fr3')  then
  begin
    frxrIndividualWT0.SaveToFile('ccIndividualWT0.fr3');
  end;

  frxrIndividualWT0.LoadFromFile('ccIndividualWT0.fr3');
  frxrIndividualWT0.PrepareReport;
  frxrIndividualWT0.Export(frxRTFExport);
end;

procedure TfmClockCalculate.aCGWordExportExecute(Sender: TObject);
var
  Node: TNodeGroupCalc;
  i: integer;
  FName: string;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;

  Node := jvpltv.Selected as TNodeGroupCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_GROUP = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

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

  if not FileExists('ccGroup.fr3')  then
  begin
    frxrGroup.SaveToFile('ccGroup.fr3');
  end;

  frxrGroup.LoadFromFile('ccGroup.fr3');
  frxrGroup.PrepareReport;
  frxrGroup.Export(frxRTFExport);
end;

procedure TfmClockCalculate.aCGWordExportWT0Execute(Sender: TObject);
var
  Node: TNodeGroupCalc;
  i: integer;
  FName: string;
begin
  if not (jvpltv.Selected is TNodeGroupCalc) then Exit;

  Node := jvpltv.Selected as TNodeGroupCalc;

  ibdsHeader.Close;
  ibdsHeader.SelectSQL.Clear;
  ibdsHeader.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID '
  );
  ibdsHeader.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsHeader.ParamByName('ID').Value := Node.ID;
  ibdsHeader.Open;

  ibdsMaster.Close;
  ibdsMaster.SelectSQL.Clear;
  ibdsMaster.SelectSQL.Append(
    ' SELECT * '+
    ' FROM V_CALC_GROUP_SUBJECT ' +
    ' WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID_CALC_GROUP = :ID ' +
    ' ORDER BY SHOW_POSITION '
  );
  ibdsMaster.ParamByName('ID_CALC_PACK').Value := Node.Package.ID;
  ibdsMaster.ParamByName('ID').Value := Node.ID;
  ibdsMaster.Open;

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

  if not FileExists('ccGroupWT0.fr3')  then
  begin
    frxrGroupWT0.SaveToFile('ccGroupWT0.fr3');
  end;

  frxrGroupWT0.LoadFromFile('ccGroupWT0.fr3');
  frxrGroupWT0.PrepareReport;
  frxrGroupWT0.Export(frxRTFExport);
end;

procedure TfmClockCalculate.aEditPrintFormExecute(Sender: TObject);
begin
  frxReport.DesignReport;
end;

end.
