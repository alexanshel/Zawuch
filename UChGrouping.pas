unit UChGrouping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDM, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, Placemnt;

type
  TfmChGrouping = class(TForm)
    Panel1: TPanel;
    cbGrouping: TDBLookupComboBox;
    Label1: TLabel;
    Panel2: TPanel;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    dsGrouping: TDataSource;
    FormPlacement1: TFormPlacement;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmChGrouping: TfmChGrouping;

implementation

{$R *.dfm}

procedure TfmChGrouping.FormCreate(Sender: TObject);
begin
  DM.ibds.Close;
  DM.ibds.SelectSQL.Text :=
    'select G.id, G.name from grouping G ' +
    'where G.financing_id = ' + DM.ibdsLTGFINANCING_ID.AsString +
    ' and not exists ' +
    ' (select l.grouping_id from ltg_grouping L where G.ID = L.grouping_ID)';
  DM.ibds.Open;
  DM.ibds.FetchAll;
  dsGrouping.DataSet := DM.ibds;
  cbGrouping.ListField := 'NAME';
  cbGrouping.KeyField := 'ID';
end;

procedure TfmChGrouping.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (btnOK.Tag = 1) and (cbGrouping.KeyValue = Null) then
  begin
    Action := caNone;
    Application.MessageBox('Пожалуйста, выберите совокупность либо нажмите кнопку Отмена.', 'Ошибка');
    Exit;
  end;
  dsGrouping.DataSet := nil;
  DM.ibds.Close;
end;

procedure TfmChGrouping.btnOKClick(Sender: TObject);
begin
  btnOK.Tag := 1;
end;

procedure TfmChGrouping.btnCancelClick(Sender: TObject);
begin
  btnOK.Tag := 0;
end;

end.
