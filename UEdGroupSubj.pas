unit UEdGroupSubj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Buttons, ExtCtrls, RXDBCtrl, IniFiles,
  Placemnt, RXSplit;

type
  TfmEdGroupSubj = class(TForm)
    pCurrSubj: TPanel;
    Panel3: TPanel;
    gbSubj: TGroupBox;
    dbgSubj: TRxDBGrid;
    gbCurr: TGroupBox;
    dbgCurr: TRxDBGrid;
    Panel2: TPanel;
    RxSplitter1: TRxSplitter;
    rxspCurrSubjGSubj: TRxSplitter;
    Panel1: TPanel;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    edGrSubjName: TLabeledEdit;
    edGrQty: TLabeledEdit;
    Label1: TLabel;
    btnAddOne: TSpeedButton;
    btnDelOne: TSpeedButton;
    FormStorage1: TFormStorage;
    procedure FormActivate(Sender: TObject);
    procedure btnAddOneClick(Sender: TObject);
    procedure btnDelOneClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edGrQtyKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSubjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  published
    pGSubj: TPanel;
    lbSubjects: TListBox;
    dsCurr: TDataSource;
    dsSubj: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Error: boolean;
  public
    { Public declarations }
    EditMode: boolean;
  end;

  TSubjInf = class
    curr_id: Integer;
    curr_rec_id: Integer;
    code: Integer;
    gr_qty: Integer;
    constructor Create(curr_id, curr_rec_id, code, gr_qty: Integer);
  end;
var
  fmEdGroupSubj: TfmEdGroupSubj;


implementation

uses UDM;

{$R *.dfm}

procedure TfmEdGroupSubj.FormCreate(Sender: TObject);
begin
  DM.ibdsGroupingCurr.Close;
  DM.ibdsGroupingCurr.Params[0].AsInteger := DM.ibdsGroupingID.Value;
  DM.ibdsGroupingCurr.Open;
  dsCurr.DataSet := DM.ibdsGroupingCurr;

  DM.ibdsGroupCurrSubj.Close;
  DM.ibdsGroupCurrSubj.DataSource := dsCurr;
  DM.ibdsGroupCurrSubj.Open;
  dsSubj.DataSet := DM.ibdsGroupCurrSubj;

  EditMode := false;
  Error := false;
end;

procedure TfmEdGroupSubj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Error then
  begin
    Action := caNone;
    Error := false;
    Exit;
  end;

  DM.ibdsGroupCurrSubj.DataSource := nil;
  dsCurr.DataSet := nil;
  dsSubj.DataSet := nil;
end;

{ TSubjInf }

constructor TSubjInf.Create(curr_id, curr_rec_id, code, gr_qty: Integer);
begin
  Self.curr_id := curr_id;
  Self.curr_rec_id := curr_rec_id;
  Self.gr_qty := gr_qty;
  Self.code := code;
end;

procedure TfmEdGroupSubj.FormActivate(Sender: TObject);
begin
  if EditMode then
  begin
    DM.ibdsGroupingSubjs.Close;
    DM.ibdsGroupingSubjs.ParamByName('grouping_id').AsInteger :=
      DM.ibdsGroupingID.Value;
    DM.ibdsGroupingSubjs.ParamByName('grouping_subj_id').AsInteger :=
      DM.ibdsGroupingSubjGR_SUBJ_ID.Value;
    DM.ibdsGroupingSubjs.Open;
    while not DM.ibdsGroupingSubjs.Eof do
    begin
      lbSubjects.AddItem(DM.ibdsGroupingSubjsSUBJECT_NAME.Value +
        ' (' + DM.ibdsGroupingsubjsCURR_NAME.Value + ')',
        TSubjInf.Create(DM.ibdsGroupingSubjsCURR_ID.Value,
        DM.ibdsGroupingSubjsCURR_REC_ID.Value,
        DM.ibdsGroupingSubjsSUBJECT_CODE.Value,
        DM.ibdsGroupingSubjsSUBJECT_GR_QTY.Value));
      DM.ibdsGroupingSubjs.Next;
    end;
    edGrSubjName.Text := DM.ibdsGroupingSubjGR_SUBJ_NAME.Value;
    edGrQty.Text := DM.ibdsGroupingSubjGR_QTY.AsString;
  end
  else
  begin
  end;
end;

procedure TfmEdGroupSubj.btnAddOneClick(Sender: TObject);
var
  i, CID, CRID, GQ: integer;
begin
  if DM.ibdsGroupCurrSubj.IsEmpty then Exit;
  CID := DM.ibdsGroupCurrSubjCURR_ID.Value;
  CRID := DM.ibdsGroupCurrSubjCURR_REC_ID.Value;
  GQ := DM.ibdsGroupCurrSubjGR_QTY.Value;
  for i := 0 to lbSubjects.Count - 1 do
    if (lbSubjects.Items.Objects[i] is TSubjInf) and
       ((lbSubjects.Items.Objects[i] as TSubjInf).curr_id = CID) and
       ((lbSubjects.Items.Objects[i] as TSubjInf).curr_rec_id = CRID)
    then Exit;

  lbSubjects.AddItem(DM.ibdsGroupCurrSubjSUBJECT_NAME.Value + ' (' +
    DM.ibdsGroupingCurrCURR_NAME.Value + ')',
    TSubjInf.Create(CID, CRID, DM.ibdsGroupCurrSubjSUBJECT_CODE.Value, GQ));
  if GQ > StrToIntDef(edGrQty.Text, 0) then
  begin
    edGrQty.Text := IntToStr(GQ);
    edGrSubjName.Text := DM.ibdsGroupCurrSubjSUBJECT_NAME.Value;
  end;
end;

procedure TfmEdGroupSubj.btnDelOneClick(Sender: TObject);
begin
  if lbSubjects.ItemIndex = -1 then Exit;

  lbSubjects.Items.Objects[lbSubjects.ItemIndex].Free;
  lbSubjects.Items.Delete(lbSubjects.ItemIndex);
end;

procedure TfmEdGroupSubj.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  Error := edGrQty.Text = '';
  if Error then
  begin
    ShowMessage('¬ведите групповое кол-во учеников!');
    Exit;
  end;

  if EditMode then
  begin
    i := DM.AddGroupingSubj(DM.ibdsGroupingID.Value,
      DM.ibdsGroupingSubjGR_SUBJ_ID.Value, edGrSubjName.Text,
      (lbSubjects.Items.Objects[0] as TSubjInf).code,
      StrToInt(edGrQty.Text), DM.ibdsGroupingSubjPOS.Value);
    DM.ibdsGroupingSubj.Refresh;
    DM.DelGroupingSubjCurr(DM.ibdsGroupingID.Value,
      DM.ibdsGroupingSubjGR_SUBJ_ID.Value);
    for i := 0 to lbSubjects.Count - 1 do
    begin
      DM.AddGroupingSubjCurr(DM.ibdsGroupingID.Value,
        DM.ibdsGroupingSubjGR_SUBJ_ID.Value,
        (lbSubjects.Items.Objects[i] as TSubjInf).curr_id,
        (lbSubjects.Items.Objects[i] as TSubjInf).curr_rec_id);
    end;
  end
  else
  begin
    i := DM.AddGroupingSubj(DM.ibdsGroupingID.Value, Null, edGrSubjName.Text,
      (lbSubjects.Items.Objects[0] as TSubjInf).code,
      StrToInt(edGrQty.Text), Null);
    DM.ibdsGroupingSubj.Close;
    DM.ibdsGroupingSubj.Open;
    DM.ibdsGroupingSubj.Locate('gr_subj_id', i, []);

    for i := 0 to lbSubjects.Count - 1 do
    begin
      DM.AddGroupingSubjCurr(DM.ibdsGroupingID.Value,
        DM.ibdsGroupingSubjGR_SUBJ_ID.Value,
        (lbSubjects.Items.Objects[i] as TSubjInf).curr_id,
        (lbSubjects.Items.Objects[i] as TSubjInf).curr_rec_id);
    end;
  end;
end;

procedure TfmEdGroupSubj.edGrQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEdGroupSubj.dbgSubjDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.ibdsGroupCurrSubjSUBJECT_CODE.Value = 1 then
    dbgSubj.Canvas.Font.Color := clBlue
  else
    dbgSubj.Canvas.Font.Color := clBlack;

  dbgSubj.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
