unit UEdLTGSubj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXSplit, Buttons, Grids, DBGrids, RXDBCtrl, StdCtrls, ExtCtrls,
  Menus, Placemnt, ActnList, DB;

type
  TfmEdLTGSubj = class(TForm)
    gbGrouping: TGroupBox;
    dbgGrouping: TRxDBGrid;
    pGrCtrl: TPanel;
    btnAddGrouping: TSpeedButton;
    btnDelGrouping: TSpeedButton;
    gbISubj: TGroupBox;
    RxSplitter1: TRxSplitter;
    RxSplitter2: TRxSplitter;
    FormStorage1: TFormStorage;
    dbgISubj: TRxDBGrid;
    pISubjCtrl: TPanel;
    RxSplitter3: TRxSplitter;
    btnAddISubj: TSpeedButton;
    btnEditISubj: TSpeedButton;
    btnDelISubj: TSpeedButton;
    MainMenu: TMainMenu;
    miOperations: TMenuItem;
    miPrint: TMenuItem;
    miClose: TMenuItem;
    miGrouping: TMenuItem;
    N2: TMenuItem;
    miISubj: TMenuItem;
    miAddGrouping: TMenuItem;
    miDelGrouping: TMenuItem;
    miAddISubj: TMenuItem;
    miEditISubj: TMenuItem;
    miDelISubj: TMenuItem;
    dsGrouping: TDataSource;
    dsISubj: TDataSource;
    AL: TActionList;
    aAddGrouping: TAction;
    aDelGrouping: TAction;
    aAddISubj: TAction;
    aEditISubj: TAction;
    aDelISubj: TAction;
    aCheckBtn: TAction;
    btnUp: TSpeedButton;
    btnDown: TSpeedButton;
    procedure miCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aCheckBtnExecute(Sender: TObject);
    procedure dsGroupingDataChange(Sender: TObject; Field: TField);
    procedure dsISubjDataChange(Sender: TObject; Field: TField);
    procedure aAddGroupingExecute(Sender: TObject);
    constructor Create(AOwner: TComponent; ALTG_ID: Integer); overload;
    procedure aDelGroupingExecute(Sender: TObject);
    procedure aAddISubjExecute(Sender: TObject);
    procedure aEditISubjExecute(Sender: TObject);
    procedure aDelISubjExecute(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure dbgISubjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FLTG_ID: Integer;
  public
    { Public declarations }
  end;

var
  fmEdLTGSubj: TfmEdLTGSubj;

implementation

uses UdmLTG, UChGrouping, UEdLTGISubj;

{$R *.dfm}

procedure TfmEdLTGSubj.miCloseClick(Sender: TObject);
begin
  Close
end;

procedure TfmEdLTGSubj.FormCreate(Sender: TObject);
begin
  dmLTG.ibdsLTGGrouping.Params[0].AsInteger := FLTG_ID;
  dmLTG.ibdsLTGGrouping.Close;
  dmLTG.ibdsLTGGrouping.Open;
  dsGrouping.DataSet := dmLTG.ibdsLTGGrouping;
  dmLTG.ibdsLTGISubject.Params[0].AsInteger := FLTG_ID;
  dmLTG.ibdsLTGISubject.Close;
  dmLTG.ibdsLTGISubject.Open;
  dsISubj.DataSet := dmLTG.ibdsLTGISubject;
end;

procedure TfmEdLTGSubj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsISubj.DataSet := nil;
  dsGrouping.DataSet := nil;
end;

procedure TfmEdLTGSubj.aCheckBtnExecute(Sender: TObject);
begin
  aDelGrouping.Enabled := not dmLTG.ibdsLTGGrouping.IsEmpty;
  aEditISubj.Enabled := not dmLTG.ibdsLTGISubject.IsEmpty;
  aDelISubj.Enabled := aEditISubj.Enabled;
  btnDown.Enabled := aEditISubj.Enabled and
    (dbgISubj.VisibleRowCount <> dbgISubj.Row);
  btnUp.Enabled := aEditISubj.Enabled and (dbgISubj.Row <> 1);
end;

procedure TfmEdLTGSubj.dsGroupingDataChange(Sender: TObject;
  Field: TField);
begin
  aCheckBtn.Execute;
end;

procedure TfmEdLTGSubj.dsISubjDataChange(Sender: TObject; Field: TField);
begin
  aCheckBtn.Execute;
end;

procedure TfmEdLTGSubj.aAddGroupingExecute(Sender: TObject);
begin
  fmChGrouping := TfmChGrouping.Create(Self);
  if fmChGrouping.ShowModal = mrOK then
  begin
    dmLTG.AddLTGGrouping(FLTG_ID, fmChGrouping.cbGrouping.KeyValue);
    dmLTG.ibdsLTGGrouping.Close;
    dmLTG.ibdsLTGGrouping.Open;
    dmLTG.ibdsLTGGrouping.Locate('GROUPING_ID', VarArrayOf([fmChGrouping.cbGrouping.KeyValue]), []);
  end;
  fmChGrouping.Release;
end;

constructor TfmEdLTGSubj.Create(AOwner: TComponent; ALTG_ID: Integer);
begin
  inherited Create(AOwner);
  FLTG_ID := ALTG_ID;
end;

procedure TfmEdLTGSubj.aDelGroupingExecute(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить совокупность?', 'Удаление', MB_YESNO) = ID_YES
  then begin
    dmLTG.DelLTGGrouping(FLTG_ID, dmLTG.ibdsLTGGroupingGROUPING_ID.Value);
    dmLTG.ibdsLTGGrouping.Close;
    dmLTG.ibdsLTGGrouping.Open;
  end;
end;

procedure TfmEdLTGSubj.aAddISubjExecute(Sender: TObject);
var
  i: Integer;
  i_subj_id: Integer;
  inf: TInfo;
  f_exist: boolean;
begin
  fmEdLTGISubj := TfmEdLTGISubj.Create(Self);
  if fmEdLTGISubj.ShowModal = mrOK then
  begin
    i_subj_id := dmLTG.AddLTGISubj(dmLTG.ibdsLTGID.Value, Null, fmEdLTGISubj.edSubjName.Text, Null);
    dmLTG.ibdsLTGISubjCurr.ParamByName('LTG_ID').AsInteger := dmLTG.ibdsLTGID.Value;
    dmLTG.ibdsLTGISubjCurr.ParamByName('LTG_I_SUBJ_ID').AsInteger := i_subj_id;
    with fmEdLTGISubj do
    begin
      for i := 0 to Pred(lbISubj.Count) do
      begin
        inf := lbISubj.Items.Objects[i] as TInfo;
        dmLTG.AddLTGISubjCurr(dmLTG.ibdsLTGID.Value, i_subj_id, inf.FCurrID, inf.FCurrRecID);
      end;
    end;
    dmLTG.ibdsLTGISubject.Close;
    dmLTG.ibdsLTGISubject.Open;
    dmLTG.ibdsLTGISubject.Locate('ID', VarArrayOf([i_subj_id]), []);
  end;
  fmEdLTGISubj.Release;
end;

procedure TfmEdLTGSubj.aEditISubjExecute(Sender: TObject);
var
  inf: TInfo;
  i: Integer;
  f_exist: boolean;
begin
  fmEdLTGISubj := TfmEdLTGISubj.Create(Self);
  dmLTG.ibdsLTGISubjCurr.ParamByName('LTG_ID').AsInteger := dmLTG.ibdsLTGID.Value;
  dmLTG.ibdsLTGISubjCurr.ParamByName('LTG_I_SUBJ_ID').AsInteger :=
    dmLTG.ibdsLTGISubjectID.Value;
  dmLTG.ibdsLTGISubjCurr.Close;
  dmLTG.ibdsLTGISubjCurr.Open;
  dmLTG.ibdsLTGISubjCurr.First;
  fmEdLTGISubj.edSubjName.Text := dmLTG.ibdsLTGISubjectNAME.Value;
  while not dmLTG.ibdsLTGISubjCurr.Eof do
  begin
    fmEdLTGISubj.lbISubj.AddItem(dmLTG.ibdsLTGISubjCurrSUBJ_NAME.Value + ' (' +
      dmLTG.ibdsLTGISubjCurrCURR_NAME.Value + ')',
      TInfo.Create(dmLTG.ibdsLTGISubjCurrCURR_ID.Value, dmLTG.ibdsLTGISubjCurrCURR_REC_ID.Value));
    dmLTG.ibdsLTGISubjCurr.Next;
  end;

  if fmEdLTGISubj.ShowModal = mrOK then
  begin
    dmLTG.AddLTGISubj(dmLTG.ibdsLTGID.Value, dmLTG.ibdsLTGISubjectID.Value,
      fmEdLTGISubj.edSubjName.Text, dmLTG.ibdsLTGISubjectPOS.Value);

    with fmEdLTGISubj do
    begin
      for i := 0 to Pred(lbISubj.Count) do
      begin
        inf := lbISubj.Items.Objects[i] as TInfo;
        dmLTG.AddLTGISubjCurr(dmLTG.ibdsLTGID.Value, dmLTG.ibdsLTGISubjectID.Value,
          inf.FCurrID, inf.FCurrRecID);
      end;
      dmLTG.ibdsLTGISubjCurr.Close;
      dmLTG.ibdsLTGISubjCurr.Open;
      dmLTG.ibdsLTGISubjCurr.First;
      while not dmLTG.ibdsLTGISubjCurr.Eof do
      begin
        f_exist := false;
        for i := 0 to Pred(lbISubj.Count) do
        begin
          inf := lbISubj.Items.Objects[i] as TInfo;
          if (inf.FCurrID = dmLTG.ibdsLTGISubjCurrCURR_ID.Value) and
            (inf.FCurrRecID = dmLTG.ibdsLTGISubjCurrCURR_REC_ID.Value)
          then
          begin f_exist := true;
            break;
          end;
        end;
        if not f_exist then
          dmLTG.DelLTGISubjCurr(dmLTG.ibdsLTGID.Value, dmLTG.ibdsLTGISubjectID.Value,
            dmLTG.ibdsLTGISubjCurrCURR_ID.Value,
            dmLTG.ibdsLTGISubjCurrCURR_REC_ID.Value);
        dmLTG.ibdsLTGISubjCurr.Next;
      end;
    end;
    dmLTG.ibdsLTGISubject.Refresh;
  end;

  fmEdLTGISubj.Release;
end;

procedure TfmEdLTGSubj.aDelISubjExecute(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить предмет',
    'Удаление', MB_YESNO) = ID_YES
  then begin
    dmLTG.DelLTGISubj(dmLTG.ibdsLTGISubjectLTG_ID.Value, dmLTG.ibdsLTGISubjectID.Value);
    dmLTG.ibdsLTGISubject.Close;
    dmLTG.ibdsLTGISubject.Open;
  end;
end;

procedure TfmEdLTGSubj.btnUpClick(Sender: TObject);
var
  id: Integer;
begin
  if dbgISubj.Row = 1 then Exit;
  id := dmLTG.AddLTGISubj(dmLTG.ibdsLTGISubjectLTG_ID.Value,
    dmLTG.ibdsLTGISubjectID.Value, dmLTG.ibdsLTGISubjectNAME.Value,
    dmLTG.ibdsLTGISubjectPOS.Value - 1);
  dmLTG.ibdsLTGISubject.Close;
  dmLTG.ibdsLTGISubject.Open;
  dmLTG.ibdsLTGISubject.Locate('ID', VarArrayOf([id]), []);
end;

procedure TfmEdLTGSubj.btnDownClick(Sender: TObject);
var
  id: Integer;
begin
  id := dmLTG.AddLTGISubj(dmLTG.ibdsLTGISubjectLTG_ID.Value,
    dmLTG.ibdsLTGISubjectID.Value, dmLTG.ibdsLTGISubjectNAME.Value,
    dmLTG.ibdsLTGISubjectPOS.Value + 1);
  dmLTG.ibdsLTGISubject.Close;
  dmLTG.ibdsLTGISubject.Open;
  dmLTG.ibdsLTGISubject.Locate('ID', VarArrayOf([id]), []);
end;

procedure TfmEdLTGSubj.dbgISubjDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Trim(dmLTG.ibdsLTGISubjectNAME.Value) = 'Концертмейстер' then
    dbgISubj.Canvas.Font.Color := clBlue;
  dbgISubj.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
