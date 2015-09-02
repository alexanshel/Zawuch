unit UEdGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, StdCtrls, Buttons, ExtCtrls, DB, IniFiles,
  Placemnt, RXSplit, IBCustomDataSet;

type
  TfmEdGrouping = class(TForm)
    pDeps: TPanel;
    lbL: TListBox;
    pCtrl: TPanel;
    btnAddAll: TSpeedButton;
    btnDelOne: TSpeedButton;
    btnAddOne: TSpeedButton;
    btnDelAll: TSpeedButton;
    pGrouping: TPanel;
    lbR: TListBox;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Panel4: TPanel;
    edName: TLabeledEdit;
    cbFinancing: TCheckBox;
    RxSplitter1: TRxSplitter;
    FormStorage1: TFormStorage;
    ibdsDepartment: TIBDataSet;
    ibdsDepartmentID: TIntegerField;
    ibdsDepartmentNAME: TIBStringField;
    ibdsDepartmentINFO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnAddOneClick(Sender: TObject);
    procedure btnDelOneClick(Sender: TObject);
    procedure btnDelAllClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bntSubjClick(Sender: TObject);
  private
    { Private declarations }
    btnOkClicked: boolean;
    procedure Save;
  public
    { Public declarations }
    isEditMode: boolean;
  end;

var
  fmEdGrouping: TfmEdGrouping;

implementation

uses UDM, UGroupSubj;

{$R *.dfm}

procedure TfmEdGrouping.FormCreate(Sender: TObject);
var
  i: Integer;
  BM: TBookMark;
begin
  btnOkClicked := false;

  ibdsDepartment.Open;
  while not ibdsDepartment.Eof do
  begin
    lbL.Items.AddObject(
      ibdsDepartmentNAME.AsString + ' (' + ibdsDepartmentINFO.Value + ')',
      TObject(ibdsDepartmentID.Value)
    );
    ibdsDepartment.Next;
  end;
end;

procedure TfmEdGrouping.btnAddOneClick(Sender: TObject);
var
  i, j: Integer;
  f: boolean;
begin
  if lbL.ItemIndex = -1 then Exit;
  if lbR.Items.IndexOfObject(lbl.Items.Objects[lbl.ItemIndex]) = -1 then
    lbR.Items.AddObject(lbL.Items[lbL.ItemIndex], lbL.Items.Objects[lbL.ItemIndex])
end;

procedure TfmEdGrouping.btnDelOneClick(Sender: TObject);
var
  i: Integer;
begin
  if lbR.ItemIndex = -1 then Exit;

  i := lbR.ItemIndex;
  if lbL.Items.IndexOfObject(lbR.Items.Objects[i]) = -1 then
    lbL.Items.AddObject(lbR.Items[i], lbR.Items.Objects[i]);

  lbR.Items.Delete(i);
end;

procedure TfmEdGrouping.btnDelAllClick(Sender: TObject);
var
  f: boolean;
  k, i: integer;
begin
  for k := 0 to lbR.Count - 1 do
    if lbL.Items.IndexOfObject(lbR.Items.Objects[k]) = -1 then
      lbL.Items.AddObject(lbR.Items[k], lbR.Items.Objects[k]);
  lbR.Clear;
end;

procedure TfmEdGrouping.btnAddAllClick(Sender: TObject);
begin
  lbR.Clear;
  lbR.Items.AddStrings(lbl.Items);
end;

procedure TfmEdGrouping.btnOkClick(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdGrouping.FormActivate(Sender: TObject);
begin
  if isEditMode and (Tag = 0) then
  begin
    Tag := 1;
    edName.Text := DM.ibdsGroupingNAME.Value;
    cbFinancing.Checked := DM.ibdsGroupingFinancing.Value;
    DM.ibdsGroupingDept.DisableControls;
    DM.ibdsGroupingDept.First;
    while not DM.ibdsGroupingDept.Eof do
    begin
      lbR.Items.AddObject(DM.ibdsGroupingDeptDepartment.Value,
        TObject(DM.ibdsGroupingDeptDEPT_ID.AsInteger));
      DM.ibdsGroupingDept.Next;
    end;
    DM.ibdsGroupingDept.EnableControls;
  end;
end;

procedure TfmEdGrouping.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i, j: Integer;
  f: boolean;
begin
  if btnOkClicked then
  begin
    Save;
    //DM.ExtractAllGroup(DM.ibdsGroupingID.Value);
    DM.ibdsTeacherGroupClss.Close;
    DM.ibdsTeacherGroupClss.Open;
  end;
end;

procedure TfmEdGrouping.bntSubjClick(Sender: TObject);
begin
  {Save;
  fmGroupSubj := TfmGroupSubj.Create(Self);
  fmGroupSubj.ShowModal;
  fmGroupSubj.Release;}
end;

procedure TfmEdGrouping.Save;
var
  i: integer;
begin
   if isEditMode then
    begin
      i := DM.AddGrouping(DM.ibdsGroupingID.Value, edName.Text, Integer(cbFinancing.Checked));
      DM.ibdsGrouping.Refresh;
      //удаление
      for i := 0 to lbl.Count - 1 do
        if lbR.Items.IndexOfObject(lbL.Items.Objects[i]) = -1 then
          DM.DelGroupingDept(DM.ibdsGroupingID.Value, Integer(lbL.Items.Objects[i]));
      //добавление
      for i := 0 to lbR.Count - 1 do
      begin
        DM.AddGroupingDept(DM.ibdsGroupingID.Value, Integer(lbR.Items.Objects[i]));
      end;
      DM.ibdsGroupingDept.Close;
      DM.ibdsGroupingDept.Open;
      //DM.ExtractSubjects(DM.ibdsGroupingID.Value);
    end
    else
    begin
      i := DM.AddGrouping(0, edName.Text, Integer(cbFinancing.Checked));
      DM.ibdsGrouping.Close;
      DM.ibdsGrouping.Open;
      DM.ibdsGrouping.Locate('ID', i, []);
      //добавление
      for i := 0 to lbR.Count - 1 do
      begin
        DM.AddGroupingDept(DM.ibdsGroupingID.Value, Integer(lbR.Items.Objects[i]));
      end;
      DM.ibdsGroupingDept.Close;
      DM.ibdsGroupingDept.Open;
      //DM.ExtractSubjects(DM.ibdsGroupingID.Value);
    end;
end;

end.
