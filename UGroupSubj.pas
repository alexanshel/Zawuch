unit UGroupSubj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, RXDBCtrl, Buttons, IniFiles,
  Placemnt;

type
  TfmGroupSubj = class(TForm)
    P1: TPanel;
    dsGrSubj: TDataSource;
    dbgSubj: TRxDBGrid;
    btnAddSubj: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelSubj: TSpeedButton;
    btnExtractAll: TSpeedButton;
    FormPlacement1: TFormPlacement;
    procedure btnAddSubjClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExtractAllClick(Sender: TObject);
    procedure btnDelSubjClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dbgSubjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgSubjDblClick(Sender: TObject);
    procedure CheckBth;
    procedure dbgSubjKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGroupSubj: TfmGroupSubj;

implementation

uses UEdGroupingSubj, UEdGroupSubj, UDM;

{$R *.dfm}

procedure TfmGroupSubj.btnAddSubjClick(Sender: TObject);
begin
  fmEdGroupSubj := TfmEdGroupSubj.Create(Self);
  fmEdGroupSubj.ShowModal;
  fmEdGroupSubj.Release;
  CheckBth;
end;

procedure TfmGroupSubj.FormCreate(Sender: TObject);
begin
  DM.ibdsGroupingSubj.Close;
  DM.ibdsGroupingSubj.Params[0].Value := DM.ibdsGroupingID.Value;
  DM.ibdsGroupingSubj.Open;
  dsGrSubj.DataSet := DM.ibdsGroupingSubj;
  CheckBth;
end;

procedure TfmGroupSubj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsGrSubj.DataSet := nil;
end;

procedure TfmGroupSubj.btnExtractAllClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите извлечь все предметы?' + #13#10 +
    'Остальные предметы будут удалены!', mtConfirmation, [mbYes, mbNo], 0) =
    mrYes
  then
    DM.ExtractSubjects(Dm.ibdsGroupingID.Value);
  DM.ibdsGroupingSubj.Close;
  DM.ibdsGroupingSubj.Open;
end;

procedure TfmGroupSubj.btnDelSubjClick(Sender: TObject);
begin
  if DM.ibdsGroupingSubj.IsEmpty then Exit;
  if MessageDlg('Вы действительно хотите удалить предмет?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelGroupingSubj(DM.ibdsGroupingID.Value, DM.ibdsGroupingSubjGR_SUBJ_ID.Value);
    DM.ibdsGroupingSubj.Close;
    DM.ibdsGroupingSubj.Open;
  end;
  CheckBth;
end;

procedure TfmGroupSubj.btnEditClick(Sender: TObject);
begin
  if DM.ibdsGroupingSubj.IsEmpty then Exit;
  fmEdGroupSubj := TfmEdGroupSubj.Create(Self);
  fmEdGroupSubj.EditMode := true;
  fmEdGroupSubj.ShowModal;
  fmEdGroupSubj.Release;
end;

procedure TfmGroupSubj.dbgSubjDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if DM.ibdsGroupingSubjGR_SUBJ_CODE.Value = 1 then
    dbgSubj.Canvas.Font.Color := clBlue
  else
    dbgSubj.Canvas.Font.Color := clBlack;
  dbgSubj.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmGroupSubj.dbgSubjDblClick(Sender: TObject);
begin
  btnEdit.Click;
end;

procedure TfmGroupSubj.CheckBth;
begin
  btnEdit.Enabled := not DM.ibdsGroupingSubj.IsEmpty;
  btnDelSubj.Enabled := btnEdit.Enabled;
end;

procedure TfmGroupSubj.dbgSubjKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #13: btnEdit.Click;
  #27: Close;
  end;
end;

end.
