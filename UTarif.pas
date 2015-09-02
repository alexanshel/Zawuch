unit UTarif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Menus, Buttons, ExtCtrls, RXDBCtrl, IniFiles,
  Placemnt;

type
  TfmTariff = class(TForm)
    dsTarif: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    miClose: TMenuItem;
    Panel1: TPanel;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDel: TSpeedButton;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    dbgTarif: TRxDBGrid;
    miHelp: TMenuItem;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure miCloseClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgTarifDblClick(Sender: TObject);
    procedure dbgTarifKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn;
  public
    { Public declarations }
    LookupMode: boolean;
  end;

var
  fmTariff: TfmTariff;

implementation

uses UDM, UEdTarif;

{$R *.dfm}

procedure TfmTariff.FormCreate(Sender: TObject);
begin

  dsTarif.DataSet := DM.ibdsTariff;
  LookupMode := false;
end;

procedure TfmTariff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsTarif.DataSet := nil;
end;

procedure TfmTariff.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmTariff.btnAddClick(Sender: TObject);
var
  id: Integer;
  g: set of byte;
  i: byte;
  bm: TBookmark;
begin
  g := [1..30];
  bm := DM.ibdsTariff.GetBookmark;
  DM.ibdsTariff.First;
  while not DM.ibdsTariff.Eof do
  begin
    g := g - [DM.ibdsTariffGrade.Value];
    DM.ibdsTariff.Next;
  end;
  DM.ibdsTariff.GotoBookmark(bm);
  DM.ibdsTariff.FreeBookmark(bm);
  fmEdTarif := TfmEdTarif.Create(Self);
  for i := 1 to 30 do
    if i in g then fmEdTarif.edGrade.Items.Add(IntToStr(i));
  if fmEdTarif.edGrade.Items.Count <> 0 then
    fmEdTarif.edGrade.ItemIndex := 0;
  if fmEdTarif.ShowModal = mrOk then
  begin
    id := DM.AddTariff(
      StrToInt(fmEdTarif.edGrade.Text),
      StrToCurr(fmEdTarif.edSalary.Text),
      fmEdTarif.edInfo.Text);
    DM.ibdsTariff.Close;
    DM.ibdsTariff.Open;
    DM.ibdsTariff.Locate('Grade', VarArrayOf([id]), []);
    CheckBtn;
  end;
  fmEdTarif.Release;
end;

procedure TfmTariff.CheckBtn;
begin
  btnEdit.Enabled := DM.ibdsTariff.RecordCount > 0;
  btnDel.Enabled := btnEdit.Enabled;
  miEdit.Enabled := btnEdit.Enabled;
  miDel.Enabled := btnEdit.Enabled;
end;

procedure TfmTariff.btnEditClick(Sender: TObject);
var
  id: Integer;
  g: set of byte;
  i: byte;
  bm: TBookmark;
begin
  if DM.ibdsTariff.IsEmpty then Exit;
  g := [1..30];
  bm := DM.ibdsTariff.GetBookmark;
  DM.ibdsTariff.First;
  while not DM.ibdsTariff.Eof do
  begin
    g := g - [DM.ibdsTariffGrade.Value];
    DM.ibdsTariff.Next;
  end;
  DM.ibdsTariff.GotoBookmark(bm);
  DM.ibdsTariff.FreeBookmark(bm);
  fmEdTarif := TfmEdTarif.Create(Self);
  for i := 1 to 30 do
    if i in g then fmEdTarif.edGrade.Items.Add(IntToStr(i));
  fmEdTarif.edGrade.Text := IntToStr(DM.ibdsTariffGrade.Value);
  fmEdTarif.edSalary.Text := CurrToStr(DM.ibdsTariffSalary.Value);
  fmEdTarif.edInfo.Text := DM.ibdsTariffInfo.Value;
  fmEdTarif.edGrade.Enabled := false;
  if fmEdTarif.ShowModal = mrOk then
  begin
    id := DM.AddTariff(
      StrToInt(fmEdTarif.edGrade.Text),
      StrToCurr(fmEdTarif.edSalary.Text),
      fmEdTarif.edInfo.Text);
    DM.ibdsTariff.Refresh;
    DM.ibdsTariff.Locate('Grade', VarArrayOf([id]), []);
  end;
  fmEdTarif.Release;
end;

procedure TfmTariff.btnDelClick(Sender: TObject);
begin
  if DM.ibdsTariff.IsEmpty then Exit;
  if MessageDlg('Удалить тариф?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelTariff(DM.ibdsTariffGrade.Value);
    DM.ibdsTariff.Close;
    DM.ibdsTariff.Open;
  end;
  CheckBtn;
end;

procedure TfmTariff.FormActivate(Sender: TObject);
begin
  CheckBtn;
end;

procedure TfmTariff.dbgTarifDblClick(Sender: TObject);
begin
  if LookupMode then Close
end;

procedure TfmTariff.dbgTarifKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbgTarifDblClick(Sender);
end;

procedure TfmTariff.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 18);
end;

end.
