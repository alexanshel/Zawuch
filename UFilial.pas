unit UFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, Menus, Buttons, IniFiles, Placemnt;

type
  TfmFilial = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    miExit: TMenuItem;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsFilial: TDataSource;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDel: TSpeedButton;
    miHelp: TMenuItem;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure miExitClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn;
  public
    { Public declarations }
    isLookupMode: boolean;
  end;

var
  fmFilial: TfmFilial;

implementation

uses UDM, UEdFilial;

{$R *.dfm}

procedure TfmFilial.CheckBtn;
begin
  btnEdit.Enabled := DM.ibdsFilial.RecordCount > 0;
  btnDel.Enabled := btnEdit.Enabled;
  miEdit.Enabled := btnEdit.Enabled;
  miDel.Enabled := btnEdit.Enabled;
end;

procedure TfmFilial.FormCreate(Sender: TObject);
begin
  dsFilial.DataSet := DM.ibdsFilial;
  CheckBtn;
  isLookupMode := false;
end;

procedure TfmFilial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsFilial.DataSet := nil;
end;

procedure TfmFilial.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmFilial.btnAddClick(Sender: TObject);
begin
  fmEdFilial := TfmEdFilial.Create(Self);
  if fmEdFilial.ShowModal = mrOK then
  begin
    DM.AddFilial(0,
      StrToInt(fmEdFilial.edCode.Text),
      fmEdFilial.edName.Text,
      fmEdFilial.edInfo.Text);
    DM.ibdsFilial.Close;
    DM.ibdsFilial.Open;
  end;
  fmEdFilial.Release;
end;

procedure TfmFilial.btnEditClick(Sender: TObject);
var
  ID: Integer;
begin
  if DM.ibdsFilial.IsEmpty then Exit;
  fmEdFilial := TfmEdFilial.Create(Self);
  fmEdFilial.edCode.Text := DM.ibdsFilialCode.AsString;
  fmEdFilial.edName.Text := DM.ibdsFilialName.Value;
  fmEdFilial.edInfo.Text := DM.ibdsFilialInfo.Value;
  ID := DM.ibdsFilialID.Value;
  if fmEdFilial.ShowModal = mrOK then
  begin
    DM.AddFilial(ID,
      StrToInt(fmEdFilial.edCode.Text),
      fmEdFilial.edName.Text,
      fmEdFilial.edInfo.Text);
    DM.ibdsFilial.Refresh;
  end;
  fmEdFilial.Release;
end;

procedure TfmFilial.btnDelClick(Sender: TObject);
begin
  if DM.ibdsFilial.IsEmpty then Exit;
  if MessageDlg('Удалить филиал?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelFilial(DM.ibdsFilialID.Value);
    DM.ibdsFilial.Close;
    DM.ibdsFilial.Open;
  end;
end;

procedure TfmFilial.DBGrid1DblClick(Sender: TObject);
begin
  if isLookupMode then Close
  else btnEditClick(Sender);
end;

procedure TfmFilial.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then DBGrid1DblClick(Sender);
end;

procedure TfmFilial.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 15);
end;

end.
