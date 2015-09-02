unit UEdLTGISubj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, Grids, DBGrids, RXDBCtrl, StdCtrls, ExtCtrls,
  RXSplit, Placemnt, IBCustomDataSet;

type
  TfmEdLTGISubj = class(TForm)
    pCurrSubj: TPanel;
    RxSplitter1: TRxSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    RxSplitter2: TRxSplitter;
    pSubj: TPanel;
    lbISubj: TListBox;
    Panel4: TPanel;
    edSubjName: TLabeledEdit;
    Panel5: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    dbgCurrSubj: TRxDBGrid;
    dbgCurr: TRxDBGrid;
    btnAddSubj: TSpeedButton;
    btnDelSubj: TSpeedButton;
    dsCurr: TDataSource;
    dsCurrSubj: TDataSource;
    FormStorage1: TFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddSubjClick(Sender: TObject);
    procedure btnDelSubjClick(Sender: TObject);
    procedure dbgCurrSubjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TInfo = class
    FCurrID: Integer;
    FCurrRecID: Integer;
    constructor Create(ACurrID, ACurrRecID: Integer);
  end;

var
  fmEdLTGISubj: TfmEdLTGISubj;

implementation

uses UdmLTG, Math;

{$R *.dfm}

procedure TfmEdLTGISubj.FormCreate(Sender: TObject);
begin
  dsCurr.DataSet := dmLTG.ibdsCurriculum;
  dmLTG.ibdsCurrISubj.DataSource := dsCurr;

  dsCurrSubj.DataSet := dmLTG.ibdsCurrISubj;
  dmLTG.ibdsCurriculum.Close;
  dmLTG.ibdsCurriculum.Open;
  dmLTG.ibdsCurrISubj.Close;
  dmLTG.ibdsCurrISubj.Open;
end;

procedure TfmEdLTGISubj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsCurrSubj := nil;
  dmLTG.ibdsCurrISubj.DataSource := nil;
  dsCurr := nil;
end;

procedure TfmEdLTGISubj.btnAddSubjClick(Sender: TObject);
var
  i: Integer;
  inf: TInfo;
begin
  for i := 0 to Pred(lbISubj.Count) do
  begin
    inf := (lbISubj.Items.Objects[i] as TInfo);
    if (inf.FCurrID = dmLTG.ibdsCurrISubjCURR_ID.Value) and
      (inf.FCurrRecID = dmLTG.ibdsCurrISubjCR_ID.Value)
    then Exit;
  end;

  lbISubj.AddItem(dmLTG.ibdsCurrISubjName.Value + ' (' + dmLTG.ibdsCurriculumNAME.Value + ')',
    TInfo.Create(dmLTG.ibdsCurriculumID.Value, dmLTG.ibdsCurrISubjCR_ID.Value));
  if edSubjName.Text = '' then edSubjName.Text := dmLTG.ibdsCurrISubjName.Value;
end;

{ TInfo }

constructor TInfo.Create(ACurrID, ACurrRecID: Integer);
begin
  FCurrID := ACurrID; FCurrRecID := ACurrRecID;
end;

procedure TfmEdLTGISubj.btnDelSubjClick(Sender: TObject);
begin
  if lbISubj.ItemIndex = -1 then Exit;

  lbISubj.Items.Objects[lbISubj.ItemIndex].Free;
  lbISubj.Items.Delete(lbISubj.ItemIndex);
  if lbISubj.Count = 0 then edSubjName.Text := '';
end;

procedure TfmEdLTGISubj.dbgCurrSubjDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dmLTG.ibdsCurrISubjCode.Value = 1 then
    dbgCurrSubj.Canvas.Font.Color := clBlue
  else
    dbgCurrSubj.Canvas.Font.Color := clBlack;

  dbgCurrSubj.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
