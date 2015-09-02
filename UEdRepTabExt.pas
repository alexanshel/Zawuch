unit UEdRepTabExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, IniFiles, Placemnt,
  RXCtrls, Mask, ToolEdit;

type
  TfmEdRepTabExt = class(TForm)
    dtpMonth: TDateTimePicker;
    edY_T: TLabeledEdit;
    edO_T: TLabeledEdit;
    edC_T: TLabeledEdit;
    edC_T_OOD: TLabeledEdit;
    edO_T_OOD: TLabeledEdit;
    edY_T_OOD: TLabeledEdit;
    edC_T_Filial: TLabeledEdit;
    edO_T_Filial: TLabeledEdit;
    edY_T_Filial: TLabeledEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    edTName: TComboEdit;
    RxLabel1: TRxLabel;
    procedure btnTChoiceClick(Sender: TObject);
    procedure edTNameKeyPress(Sender: TObject; var Key: Char);
    procedure edY_TKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdRepTabExt: TfmEdRepTabExt;

implementation

uses UTeacher, UDM;

{$R *.dfm}

procedure TfmEdRepTabExt.btnTChoiceClick(Sender: TObject);
begin
  fmTeacher := TfmTeacher.Create(Self);
  fmTeacher.isLookupMode := true;
  fmTeacher.ShowModal;
  edTName.Text := DM.ibdsTeacherName.Value;
end;

procedure TfmEdRepTabExt.edTNameKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0
end;

procedure TfmEdRepTabExt.edY_TKeyPress(Sender: TObject; var Key: Char);
begin
   if not
     ((Key in ['0'..'9', #8]) or
     ((Key = ',') and (Pos(',', (Sender as TLabeledEdit).Text) = 0)))
   then Key := #0
end;

end.
