unit UEdRepTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls, IniFiles, Placemnt,
  RXCtrls, Mask, ToolEdit;

type
  TfmEdRepTab = class(TForm)
    GroupBox1: TGroupBox;
    edBYT: TLabeledEdit;
    edBOT: TLabeledEdit;
    edBCT: TLabeledEdit;
    GroupBox2: TGroupBox;
    edSYT: TLabeledEdit;
    edSOT: TLabeledEdit;
    edSCT: TLabeledEdit;
    GroupBox3: TGroupBox;
    edBeYT: TLabeledEdit;
    edBeCT: TLabeledEdit;
    edDate: TDateTimePicker;
    edDaysQty: TLabeledEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    edTeacher: TComboEdit;
    RxLabel1: TRxLabel;
    procedure btnTChoiceClick(Sender: TObject);
    procedure edDaysQtyKeyPress(Sender: TObject; var Key: Char);
    procedure edBYTKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    BtnOkClicked: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdRepTab: TfmEdRepTab;

implementation

uses UTeacher, UDM;

{$R *.dfm}

procedure TfmEdRepTab.btnTChoiceClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  fmTeacher.ShowModal;
  edTeacher.Text := DM.ibdsTeacherName.Value;
  edTeacher.Tag := DM.ibdsTeacherID.Value;
  fmTeacher.Release;
end;

procedure TfmEdRepTab.edDaysQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEdRepTab.edBYTKeyPress(Sender: TObject; var Key: Char);
begin
   if not
     ((Key in ['0'..'9', #8]) or
     ((Key = ',') and (Pos(',', (Sender as TLabeledEdit).Text) = 0)))
   then Key := #0
end;

procedure TfmEdRepTab.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if edBYT.Text = '' then edBYT.Text := '0';
  if edBOT.Text = '' then edBOT.Text := '0';
  if edBCT.Text = '' then edBCT.Text := '0';
  if edSYT.Text = '' then edSYT.Text := '0';
  if edSOT.Text = '' then edSOT.Text := '0';
  if edSCT.Text = '' then edSCT.Text := '0';
  if edBeYT.Text = '' then edBeYT.Text := '0';
  if edBeCT.Text = '' then edBeCT.Text := '0';
  if edDaysQty.Text = '' then edDaysQty.Text := '0';

  if BtnOkClicked then
  begin
    if edTeacher.Text = '' then
    begin
      ShowMessage('Преподаватель не выбран!');
      Action := caNone;
      BtnOkClicked := false;
    end;
  end;
end;

procedure TfmEdRepTab.BitBtn1Click(Sender: TObject);
begin
  BtnOkClicked := true;
end;

procedure TfmEdRepTab.FormCreate(Sender: TObject);
begin
  BtnOkClicked := false;
end;

end.
