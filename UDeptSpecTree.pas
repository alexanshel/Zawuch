unit UDeptSpecTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExExtCtrls, JvExtComponent, JvFooter, ComCtrls,
  JvExComCtrls, JvComCtrls, JvCheckTreeView, StdCtrls, JvExStdCtrls,
  JvButton, JvCtrls, UDM, DB, IBCustomDataSet, JvSplitter, JvAppStorage,
  JvAppRegistryStorage, JvComponentBase, JvFormPlacement, JvMemoryDataset,
  JvgCaption, JvgTreeView, ImgList;

type
  TfmDeptSpecTree = class(TForm)
    JvFooter1: TJvFooter;
    jvfbOK: TJvFooterBtn;
    jvfbCancel: TJvFooterBtn;
    ibdsCurriculum: TIBDataSet;
    ibdsDepartment: TIBDataSet;
    ibdsSpecialization: TIBDataSet;
    dsCurriculum: TDataSource;
    dsDepartment: TDataSource;
    ibdsCurriculumID: TIntegerField;
    ibdsCurriculumNAME: TIBStringField;
    ibdsCurriculumPERIOD: TSmallintField;
    ibdsDepartmentID: TIntegerField;
    ibdsDepartmentCode: TIntegerField;
    ibdsDepartmentName: TIBStringField;
    ibdsDepartmentCurriculumID: TIntegerField;
    ibdsDepartmentInfo: TIBStringField;
    ibdsSpecializationID: TIntegerField;
    ibdsSpecializationDepartmentID: TIntegerField;
    ibdsSpecializationCode: TIntegerField;
    ibdsSpecializationName: TIBStringField;
    ibdsSpecializationBudget: TFloatField;
    ibdsSpecializationSelf_Repayment: TFloatField;
    ibdsSpecializationInfo: TIBStringField;
    gbSpec: TGroupBox;
    lbCheckedSpec: TListBox;
    JvSplitter: TJvSplitter;
    gbTree: TGroupBox;
    jvctvDeptSpec: TJvCheckTreeView;
    JvFormStorage: TJvFormStorage;
    JvAppRegistryStorage: TJvAppRegistryStorage;
    il: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure jvctvDeptSpecNodeCheckedChange(Sender: TObject;
      Node: TJvTreeNode);
    procedure jvfbOKClick(Sender: TObject);
  private
    { Private declarations }
    FSpecDataSet: TJvMemoryData;
  public
    procedure CheckSpec(ID_Spec: Integer);
    procedure CheckDept(ID_Dept: Integer);
    procedure LoadDeptSpecTree;
    procedure RefreshChecked(Root: TTreeNode);
    constructor Create(AOwner: TComponent; ASpecDataSet: TJvMemoryData);
    { Public declarations }
  end;

var
  fmDeptSpecTree: TfmDeptSpecTree;

implementation

//uses UDM;

{$R *.dfm}

{ TfmDeptSpecTree }

procedure TfmDeptSpecTree.CheckDept(ID_Dept: Integer);
begin
//выбор отделения
end;

procedure TfmDeptSpecTree.CheckSpec(ID_Spec: Integer);
begin
//выбор специализации
end;

procedure TfmDeptSpecTree.LoadDeptSpecTree;
var
  Root: TTreeNode;
  tnCurr, tnDept, tnSpec: TTreeNode;
begin
  ibdsCurriculum.Open;
  ibdsDepartment.Open;
  ibdsSpecialization.Open;

  ibdsCurriculum.First;
  while not ibdsCurriculum.Eof do
  begin
    // если уч план содержит 1 отделение, то попускаем создание уч плана
    ibdsDepartment.FetchAll;
    if ibdsDepartment.RecordCount > 1 then
    begin
      tnCurr := jvctvDeptSpec.Items.Add(nil, ibdsCurriculumNAME.Value);
      tnCurr.Data := Pointer(ibdsCurriculumID.AsInteger);
    end
    else
      tnCurr := nil;

    while not ibdsDepartment.Eof do
    begin
      tnDept := jvctvDeptSpec.Items.AddChild(tnCurr, ibdsDepartmentName.Value);
      tnDept.Data := Pointer(ibdsDepartmentID.Value);

      while not ibdsSpecialization.Eof do
      begin
        tnSpec := jvctvDeptSpec.Items.AddChild(tnDept, ibdsSpecializationName.Value);
        tnSpec.Data := Pointer(ibdsSpecializationID.Value);
        jvctvDeptSpec.Checked[tnSpec] := FSpecDataSet.Locate('ID_SPECIALIZATION', ibdsSpecializationID.Value, []);
        ibdsSpecialization.Next;
      end;
      ibdsDepartment.Next;
    end;
    ibdsCurriculum.Next;
  end;

  lbCheckedSpec.Clear;
  Root := jvctvDeptSpec.Items.GetFirstNode;
  while Root <> nil do
  begin
    RefreshChecked(Root);
    Root := Root.getNextSibling;
  end;
end;

procedure TfmDeptSpecTree.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibdsSpecialization.Close;
  ibdsDepartment.Close;
  ibdsCurriculum.Close;
end;

procedure TfmDeptSpecTree.RefreshChecked(Root: TTreeNode);
var
  tnChild: TTreeNode;
begin
  tnChild := Root.getFirstChild;

  if not Assigned(tnChild) then
  begin
    if jvctvDeptSpec.Checked[Root] then
      lbCheckedSpec.AddItem(Root.Text, TObject(Root.Data));
  end
  else
    while Assigned(tnChild) do
    begin
      RefreshChecked(tnChild);
      tnChild := Root.GetNextChild(tnChild);
    end;
end;

procedure TfmDeptSpecTree.jvctvDeptSpecNodeCheckedChange(Sender: TObject;
  Node: TJvTreeNode);
var
  Root: TTreeNode;
begin
  lbCheckedSpec.Clear;
  Root := jvctvDeptSpec.Items.GetFirstNode;
  while Root <> nil do
  begin
    RefreshChecked(Root);
    Root := Root.getNextSibling;
  end;
end;

procedure TfmDeptSpecTree.jvfbOKClick(Sender: TObject);
var
  i: Integer;
begin
  FSpecDataSet.EmptyTable;
  for i := 0 to lbCheckedSpec.Count - 1 do
  begin
    FSpecDataSet.Append;
    FSpecDataSet.FieldByName('ID_SPECIALIZATION').Value := Integer(lbCheckedSpec.Items.Objects[i]);
    FSpecDataSet.FieldByName('SPEC_NAME').Value := lbCheckedSpec.Items[i];
    FSpecDataSet.Post;
  end;
end;

constructor TfmDeptSpecTree.Create(AOwner: TComponent;
  ASpecDataSet: TJvMemoryData);
begin
  inherited Create(AOwner);
  FSpecDataSet := ASpecDataSet;
end;

end.
