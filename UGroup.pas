unit UGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Grids, DBGrids, Menus, DB, StdCtrls;

type
  TfmGroup = class(TForm)
    Panel1: TPanel;
    btnEditGrouping: TSpeedButton;
    btnDelGrouping: TSpeedButton;
    btnAddGrouping: TSpeedButton;
    MainMenu: TMainMenu;
    miExit: TMenuItem;
    dsGrouping: TDataSource;
    dsSubject: TDataSource;
    Panel2: TPanel;
    dbgClassificator: TDBGrid;
    dbgGroupingDept: TDBGrid;
    Splitter1: TSplitter;
    dsGroupingDept: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    dbgSubject: TDBGrid;
    dsTeacherGroup: TDataSource;
    Panel9: TPanel;
    cbClass: TComboBox;
    Label1: TLabel;
    Panel8: TPanel;
    btnCalc: TSpeedButton;
    Panel7: TPanel;
    dbgTeacherGroup: TDBGrid;
    Panel10: TPanel;
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddGroupingClick(Sender: TObject);
    procedure btnEditGroupingClick(Sender: TObject);
    procedure btnDelGroupingClick(Sender: TObject);
    procedure dbgSubjectDblClick(Sender: TObject);
    procedure dbgSubjectDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsGroupingDataChange(Sender: TObject; Field: TField);
    procedure cbClassChange(Sender: TObject);
    procedure dsSubjectDataChange(Sender: TObject; Field: TField);
    procedure cbClassKeyPress(Sender: TObject; var Key: Char);
    procedure dbgTeacherGroupDblClick(Sender: TObject);
    procedure dbgTeacherGroupKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn;
  public
    { Public declarations }
  end;

var
  fmGroup: TfmGroup;

implementation

uses UDM, UEdGrouping, UGroupingSubj, UEdGroup, UGrCalcParam;

{$R *.dfm}

procedure TfmGroup.miExitClick(Sender: TObject);
begin
  Close
end;

procedure TfmGroup.FormCreate(Sender: TObject);
begin
  //DM.ExtractAllGroup;
 { dsGrouping.DataSet := DM.ibdsGrouping;
  dsTeacherGroup.DataSet := DM.ibdsTeacherGroup;
  DM.ibdsGroupingDept.DataSource := dsGrouping;
  dsGroupingDept.DataSet := DM.ibdsGroupingDept;
  DM.ibdsTeacherGroupSubj.DataSource := dsGrouping;
  dsSubject.DataSet := DM.ibdsTeacherGroupSubj;
  CheckBtn;}
end;

procedure TfmGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.ibdsGroupingDept.DataSource := nil;
  DM.ibdsTeacherGroupSubj.DataSource := nil;
  dsGroupingDept.DataSet := nil;
  dsSubject.DataSet := nil;
  dsGrouping.DataSet := nil;
end;

procedure TfmGroup.CheckBtn;
begin
  btnEditGrouping.Enabled := not DM.ibdsGrouping.IsEmpty;
  btnDelGrouping.Enabled :=   btnEditGrouping.Enabled;
end;

procedure TfmGroup.btnAddGroupingClick(Sender: TObject);
begin
  fmEdGrouping := TfmEdGrouping.Create(Self);
  fmEdGrouping.isEditMode := false;
  fmEdGrouping.ShowModal;
  fmEdGrouping.Release;
  CheckBtn;
end;

procedure TfmGroup.btnEditGroupingClick(Sender: TObject);
begin
  fmEdGrouping := TfmEdGrouping.Create(Self);
  fmEdGrouping.isEditMode := true;
  fmEdGrouping.cbFinancing.Checked := DM.ibdsGroupingFinancing.Value;
  fmEdGrouping.ShowModal;
  fmEdGrouping.Release;
end;

procedure TfmGroup.btnDelGroupingClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно '+
  'эхотите совокупность ' + DM.ibdsGroupingNAME.Value, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelGrouping(DM.ibdsGroupingID.Value);
    DM.ibdsGrouping.Close;
    DM.ibdsGrouping.Open;
  end;  
end;

procedure TfmGroup.dbgSubjectDblClick(Sender: TObject);
begin
 // DM.ibdsTeacherGroupSubj.DataSource := dsTeacherGroup;
 // fmGroupingSubj := TfmGroupingSubj.Create(Self);
 // fmGroupingSubj.ShowModal;
 // fmGroupingSubj.Release;
 // DM.ibdsTeacherGroupSubj.DataSource := nil;
end;

procedure TfmGroup.dbgSubjectDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.ibdsTeacherGroupSubjCode.Value = 1 then
    dbgSubject.Canvas.Font.Color := clBlue
  else
    dbgSubject.Canvas.Font.Color := clBlack;

  dbgSubject.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmGroup.dsGroupingDataChange(Sender: TObject; Field: TField);
begin
{  DM.ibdsTeacherGroup.Params[0].AsInteger := DM.ibdsGroupingID.Value;
  DM.ibdsTeacherGroup.Params[1].AsInteger := DM.ibdsTeacherGroupSubjID.Value;
  DM.ibdsTeacherGroup.Params[2].AsInteger := cbClass.ItemIndex;
  DM.ibdsTeacherGroup.Close;
  DM.ibdsTeacherGroup.Open;}
end;

procedure TfmGroup.cbClassChange(Sender: TObject);
begin
{  DM.ibdsTeacherGroup.Params[2].AsInteger := cbClass.ItemIndex;
  DM.ibdsTeacherGroup.Close;
  DM.ibdsTeacherGroup.Open;}
end;

procedure TfmGroup.dsSubjectDataChange(Sender: TObject; Field: TField);
begin
  DM.ibdsTeacherGroup.Params[1].AsInteger := DM.ibdsTeacherGroupSubjID.Value;
  DM.ibdsTeacherGroup.Close;
  DM.ibdsTeacherGroup.Open;
end;

procedure TfmGroup.cbClassKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0
end;

procedure TfmGroup.dbgTeacherGroupDblClick(Sender: TObject);
var
  BM: TBookmark;
begin
  if DM.ibdsTeacherGroup.IsEmpty then Exit;
  fmEdGroup := TfmEdGroup.Create(Self);
  fmEdGroup.edGroupQty.Text := DM.ibdsTeacherGroupGR_QTY.AsString;
  if fmEdGroup.ShowModal = mrOK then
  begin
    DM.AddTeacherGroup(DM.ibdsGroupingID.Value,
      DM.ibdsTeacherGroupTEACHER_ID.Value, DM.ibdsTeacherGroupSubjID.Value,
      cbClass.ItemIndex, StrToIntDef(fmEdGroup.edGroupQty.Text, -1));
    BM := DM.ibdsTeacherGroup.GetBookmark;
    DM.ibdsTeacherGroup.Close;
    DM.ibdsTeacherGroup.Open;
    DM.ibdsTeacherGroup.GotoBookmark(BM);
    DM.ibdsTeacherGroup.FreeBookmark(BM);
  end;
  fmEdGroup.Release;
end;

procedure TfmGroup.dbgTeacherGroupKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbgTeacherGroupDblClick(Sender);
end;

procedure TfmGroup.btnCalcClick(Sender: TObject);
var
  BM: TBookmark;
begin
  fmGrCalcParam := TfmGrCalcParam.Create(Self);
  if (fmGrCalcParam.ShowModal = mrOK)
    and (MessageDlg('Вы действительно хотите сделать расчёт? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes)
  then
  begin
    case fmGrCalcParam.rgRegion.ItemIndex of
      0: DM.AutoCalcTeacherGroup(DM.ibdsGroupingID.Value,
           cbClass.ItemIndex, DM.ibdsTeacherGroupSubjID.Value,
           fmGrCalcParam.rgType.ItemIndex);
         //замена в пределах предмета
      1: DM.AutoCalcTeacherGroup(DM.ibdsGroupingID.Value,
           cbClass.ItemIndex, Null,
           fmGrCalcParam.rgType.ItemIndex);
         //замена в пределах класса
      2: DM.AutoCalcTeacherGroup(DM.ibdsGroupingID.Value,
           Null, Null,
           fmGrCalcParam.rgType.ItemIndex);
         //замена в пределах совокупности
      3: DM.AutoCalcTeacherGroup(Null, Null, Null,
           fmGrCalcParam.rgType.ItemIndex);
        //замена всего
    end;
    BM := DM.ibdsTeacherGroup.GetBookmark;
    DM.ibdsTeacherGroup.Close;
    DM.ibdsTeacherGroup.Open;
    DM.ibdsTeacherGroup.GotoBookmark(BM);
    DM.ibdsTeacherGroup.FreeBookmark(BM);
  end;
  fmGrCalcParam.Release;
end;

end.
