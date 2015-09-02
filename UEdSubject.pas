unit UEdSubject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt;

type
  TfmEdSubject = class(TForm)
    edCode: TLabeledEdit;
    edName: TLabeledEdit;
    edInfo: TLabeledEdit;
    bntOK: TBitBtn;
    btnCancel: TBitBtn;
    FormPlacement1: TFormPlacement;
    edShortName: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure edCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdSubject: TfmEdSubject;

implementation

{$R *.dfm}

procedure TfmEdSubject.FormCreate(Sender: TObject);

begin

  edCode.Text := '0';
end;

procedure TfmEdSubject.edCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8]) then Key := #0
end;

end.
