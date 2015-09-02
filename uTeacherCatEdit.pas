unit uTeacherCatEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExStdCtrls, JvEdit, JvValidateEdit,
  ExtCtrls;

type
  TfmTeacherCatEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edName: TLabeledEdit;
    edPrintName: TLabeledEdit;
    edCoef: TJvValidateEdit;
    Label1: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTeacherCatEdit: TfmTeacherCatEdit;

implementation

{$R *.dfm}

procedure TfmTeacherCatEdit.btnOkClick(Sender: TObject);
begin
  if edName.Text = '' then
  begin
    ModalResult := mrNone;
    Application.MessageBox('Для сохранения необходимо заполненить наименование!', 'Внимание!', MB_OK);
  end;
end;

end.
