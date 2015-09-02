unit UPost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, DB, Grids, DBGrids, Menus, RXDBCtrl, IniFiles,
  Placemnt;

type
  TfmPost = class(TForm)
    dsPost: TDataSource;
    Panel1: TPanel;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDel: TSpeedButton;
    dbgPost: TRxDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    miHelp: TMenuItem;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    miClose: TMenuItem;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure dbgPostDblClick(Sender: TObject);
    procedure dbgPostKeyPress(Sender: TObject; var Key: Char);
    procedure miCloseClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn; 
  public
    { Public declarations }
    IsLookupMode: boolean;
  end;

var
  fmPost: TfmPost;

implementation

uses UDM, Math;

{$R *.dfm}

procedure TfmPost.FormCreate(Sender: TObject);
begin
  dsPost.DataSet := DM.ibdsPost;
  IsLookupMode := false;
  CheckBtn;
end;

procedure TfmPost.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  dsPost.DataSet := nil;
end;

procedure TfmPost.FormDblClick(Sender: TObject);
begin
  if IsLookupMode then Close;
end;

procedure TfmPost.btnAddClick(Sender: TObject);
var
  s: String;
  id: Integer;
begin
  s := InputBox('Новая должность', 'Наименование:', '');
  if s <> '' then
  begin
    id := DM.AddPost(0, s);
    DM.ibdsPost.Close;
    DM.ibdsPost.Open;
    DM.ibdsPost.Locate('ID', VarArrayOf([id]), []);
    CheckBtn;
  end;
end;

procedure TfmPost.btnEditClick(Sender: TObject);
var
  s: String;
begin
  s := InputBox('Редактирование должности', 'Наименование:', DM.ibdsPostName.Value);
  if s <> '' then
  begin
    DM.AddPost(DM.ibdsPostID.Value, s);
    DM.ibdsPost.Refresh;
  end;
end;

procedure TfmPost.btnDelClick(Sender: TObject);
begin
  DM.ibds.Close;
  DM.ibds.SelectSQL.Text :=
    'select first 1 * from "Teacher" T where T."PostID" = :in_p_id';
  DM.ibds.Params[0].AsInteger := DM.ibdsPostID.Value;
  DM.ibds.Open;
  if not DM.ibds.IsEmpty then
    MessageDlg('Удаление невозможно. Данное наименование должности используется в таблице Преподаватели.', mtWarning, [mbOK], 0)
  else
    if MessageDlg('Вы действительно хотите удалить должность', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DM.DelPost(DM.ibdsPostID.Value);
      DM.ibdsPost.Close;
      DM.ibdsPost.Open;
      CheckBtn;
    end;
end;

procedure TfmPost.CheckBtn;
begin
  btnDel.Enabled := DM.ibdsPost.RecordCount <> 0;
  btnEdit.Enabled := btnDel.Enabled;
end;

procedure TfmPost.dbgPostDblClick(Sender: TObject);
begin
  if IsLookupMode then Close;
end;

procedure TfmPost.dbgPostKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbgPostDblClick(Sender);
end;

procedure TfmPost.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmPost.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 19);
end;

end.
