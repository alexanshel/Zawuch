unit USubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, DB, Grids, DBGrids, Buttons, StdCtrls, RXDBCtrl,
  IniFiles, Placemnt;

type
  TfmSubject = class(TForm)
    dsSubject: TDataSource;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    miClose: TMenuItem;
    Panel2: TPanel;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDel: TSpeedButton;
    edSearch: TLabeledEdit;
    dbgSubject: TRxDBGrid;
    miHelp: TMenuItem;
    FormPlacement1: TFormPlacement;
    procedure miAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure miEditClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
    procedure dbgSubjectDblClick(Sender: TObject);
    procedure dbgSubjectKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBth;
  public
    LookupMode: boolean;
    { Public declarations }
  end;

var
  fmSubject: TfmSubject;

implementation

uses UDM, UEdSubject;

{$R *.dfm}

procedure TfmSubject.miAddClick(Sender: TObject);
var
  id: Integer;
begin
  fmEdSubject := TfmEdSubject.Create(Self);
  if fmEdSubject.ShowModal = mrOk then
  begin
    id := DM.AddSubject(0,
      StrToInt(fmEdSubject.edCode.Text),
      fmEdSubject.edName.Text,
      fmEdSubject.edInfo.Text,
      fmEdSubject.edShortName.Text
    );
    DM.ibdsSubject.Close;
    DM.ibdsSubject.Open;
    DM.ibdsSubject.Locate('ID', VarArrayOf([id]), []);
    CheckBth;
  end;
  fmEdSubject.Release;
end;

procedure TfmSubject.FormCreate(Sender: TObject);
begin
  DM.ibdsSubject.Close;
  DM.ibdsSubject.Open;
  dsSubject.DataSet := DM.ibdsSubject;
end;

procedure TfmSubject.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsSubject.DataSet := nil;
  if DM.ibdsSubject.RecordCount <> 0 then ModalResult := mrOk;
end;

procedure TfmSubject.miEditClick(Sender: TObject);
var
  i: integer;
begin
  if DM.ibdsSubject.IsEmpty then Exit;
  i := DM.ibdsSubjectID.Value;
  fmEdSubject := TfmEdSubject.Create(Self);
  fmEdSubject.edCode.Text := DM.ibdsSubjectCode.AsString;
  fmEdSubject.edName.Text := DM.ibdsSubjectName.Value;
  fmEdSubject.edInfo.Text := DM.ibdsSubjectInfo.Value;
  fmEdSubject.edShortName.Text := DM.ibdsSubjectSHORT_NAME.Value;
  fmEdSubject.Caption := 'Редактирование';
  if fmEdSubject.ShowModal = mrOK then
  begin
    DM.AddSubject(i,
      StrToInt(fmEdSubject.edCode.Text),
      fmEdSubject.edName.Text,
      fmEdSubject.edInfo.Text,
      fmEdSubject.edShortName.Text
    );
    DM.ibdsSubject.Refresh;
  end;
  fmEdSubject.Release;
end;

procedure TfmSubject.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmSubject.CheckBth;
begin
  btnEdit.Enabled := DM.ibdsSubject.RecordCount > 0;
  btnDel.Enabled := btnEdit.Enabled;
  miEdit.Enabled := btnEdit.Enabled;
  miDel.Enabled := btnEdit.Enabled;
end;

procedure TfmSubject.btnDelClick(Sender: TObject);
begin
  if DM.ibdsSubject.IsEmpty then Exit;
  DM.ibSQL.Close;
  DM.ibSQL.SQL.Clear;
  DM.ibSQL.SQL.Add('SELECT * FROM curr_rec WHERE subject_ID=' +
    DM.ibdsSubjectID.AsString + ';');
  DM.ibSQL.ExecQuery;
  if DM.ibSQL.RecordCount <> 0 then
  begin
    MessageDlg('Невозможно удалить предмет.' + #13 + #10 + 'Данный предмет есть в учебном плане',
     mtWarning, [mbOk], 0);
    Exit;
  end;
  if MessageDlg('Удалить предмет?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.DelSubject(DM.ibdsSubjectID.Value);
    DM.ibdsSubject.Close;
    DM.ibdsSubject.Open;
  end;
end;

procedure TfmSubject.edSearchChange(Sender: TObject);
begin
  DM.ibdsSubject.Locate('Name', VarArrayOf([edSearch.Text]), [loPartialKey, loCaseInsensitive]);
end;

procedure TfmSubject.dbgSubjectDblClick(Sender: TObject);
begin
  if LookupMode then Close
  else miEditClick(Sender);
end;

procedure TfmSubject.dbgSubjectKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  #8: edSearch.Text := Copy(edSearch.Text, 1, length(edSearch.Text) - 1);
  #13: if LookupMode then dbgSubjectDblClick(Sender);
  else
    edSearch.Text := edSearch.Text + Key;
  end;
end;

procedure TfmSubject.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 13);
end;

end.
