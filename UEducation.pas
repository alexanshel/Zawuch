unit UEducation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Grids, DBGrids, DB, RXDBCtrl, IniFiles, Menus,
  Placemnt;

type
  TfmEducation = class(TForm)
    Panel1: TPanel;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDel: TSpeedButton;
    dsEducation: TDataSource;
    dbgEduc: TRxDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    miHelp: TMenuItem;
    miAdd: TMenuItem;
    miEdit: TMenuItem;
    miDel: TMenuItem;
    miClose: TMenuItem;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure dbgEducDblClick(Sender: TObject);
    procedure dbgEducKeyPress(Sender: TObject; var Key: Char);
    procedure miCloseClick(Sender: TObject);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
    procedure CheckBtn;
  public
    { Public declarations }
    isLookUpMode: boolean;
  end;

var
  fmEducation: TfmEducation;

implementation

uses UDM;

{$R *.dfm}

procedure TfmEducation.CheckBtn;
begin
  btnDel.Enabled := DM.ibdsEducation.RecordCount <> 0;
  btnEdit.Enabled := btnDel.Enabled;
end;

procedure TfmEducation.FormCreate(Sender: TObject);
begin
  CheckBtn;
  dsEducation.DataSet := DM.ibdsEducation;
  isLookUpMode := false;
end;

procedure TfmEducation.btnAddClick(Sender: TObject);
var
  s: String;
  id: Integer;
begin
  s := InputBox('Новое образование', 'Наименование:', '');
  if s <> '' then
  begin
    id := DM.AddEducation(0, s);
    DM.ibdsEducation.Close;
    DM.ibdsEducation.Open;
    DM.ibdsEducation.Locate('ID', VarArrayOf([id]), []);
    CheckBtn;
  end;
end;

procedure TfmEducation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsEducation.DataSet := nil;
end;

procedure TfmEducation.btnEditClick(Sender: TObject);
var
  s: String;
begin
  if DM.ibdsPost.IsEmpty then Exit;
  s := InputBox('Редактирование образования', 'Наименование:', DM.ibdsEducationName.Value);
  if s <> '' then
  begin
    DM.AddEducation(DM.ibdsEducationID.Value, s);
    DM.ibdsEducation.Refresh;
  end;
end;

procedure TfmEducation.btnDelClick(Sender: TObject);
begin
  if DM.ibdsPost.IsEmpty then Exit;
  DM.ibds.Close;
  DM.ibds.SelectSQL.Text :=
    'select first 1 T.id from "Teacher" T where T."EducationID" = :in_ed_id;';
  DM.ibds.Params[0].AsInteger := DM.ibdsEducationID.Value;
  DM.ibds.Open;
  if not DM.ibds.IsEmpty then
    MessageDlg('Удаление невозможно. Данное наименование образования используется в таблице Преподаватели.', mtWarning, [mbOK], 0)
  else
    if MessageDlg('Вы действительно хотите удалить запись?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DM.DelEducation(DM.ibdsPostID.Value);
      DM.ibdsEducation.Close;
      DM.ibdsEducation.Open;
      CheckBtn;
    end;
end;

procedure TfmEducation.dbgEducDblClick(Sender: TObject);
begin
  if isLookUpMode then Close
  else btnEditClick(Sender);
end;

procedure TfmEducation.dbgEducKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbgEducDblClick(Sender);
end;

procedure TfmEducation.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmEducation.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 19);
end;

end.
