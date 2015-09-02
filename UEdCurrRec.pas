unit UEdCurrRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles, Placemnt, RXCtrls, Mask,
  ToolEdit;

type
  TfmEdCurrRec = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cbT0: TComboBox;
    Label1: TLabel;
    cbT1: TComboBox;
    Label2: TLabel;
    cbT2: TComboBox;
    Label3: TLabel;
    cbT3: TComboBox;
    Label4: TLabel;
    cbT4: TComboBox;
    Label5: TLabel;
    cbT5: TComboBox;
    Label6: TLabel;
    cbT6: TComboBox;
    Label7: TLabel;
    cbT7: TComboBox;
    Label8: TLabel;
    cbT8: TComboBox;
    Label9: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    cbGroup: TComboBox;
    Label10: TLabel;
    cbPos: TCheckBox;
    edSubject: TComboEdit;
    RxLabel1: TRxLabel;
    cbT9: TComboBox;
    Label11: TLabel;
    procedure btnSubjectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure cbT0KeyPress(Sender: TObject; var Key: Char);
    procedure cbGroupKeyPress(Sender: TObject; var Key: Char);
    procedure cbT0Enter(Sender: TObject);
  private
    { Private declarations }
    btnOkClicked: boolean;
  public
    SubjectID: Integer;
    { Public declarations }
  end;

var
  fmEdCurrRec: TfmEdCurrRec;

implementation

uses USubject, UDM;

{$R *.dfm}

procedure TfmEdCurrRec.btnSubjectClick(Sender: TObject);
begin
  fmSubject := TfmSubject.Create(Self);
  fmSubject.LookupMode := true;
  if fmSubject.ShowModal = mrOk then
  begin
    SubjectID := DM.ibdsSubjectID.Value;
    edSubject.Text := DM.ibdsSubjectName.Value;
  end;
  fmSubject.Release;
end;

procedure TfmEdCurrRec.FormCreate(Sender: TObject);
begin
  btnOkClicked := false;
  SubjectID := -1;
end;

procedure TfmEdCurrRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if btnOkClicked and (edSubject.Text = '') then
  begin
    btnOkClicked := false;
    MessageDlg('Пожалуйста укажите предмет', mtInformation, [mbOK], 0);
    Action := caNone;
  end;
end;

procedure TfmEdCurrRec.btnOkClick(Sender: TObject);
begin
  btnOkClicked := true;
end;

procedure TfmEdCurrRec.cbT0KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    if (Key in [',', '.']) and (Pos('.', TComboBox(Sender).Text) = 0) then
      Key := ','
    else
      Key := #0;
end;

procedure TfmEdCurrRec.cbGroupKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEdCurrRec.cbT0Enter(Sender: TObject);
begin
  (Sender as TComponent).Tag := 1;
end;

end.
