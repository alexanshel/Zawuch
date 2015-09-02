unit UEdGroupingSubj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfmEdGroupingSubj = class(TForm)
    btnOk: TBitBtn;
    BitBtn2: TBitBtn;
    edSubj: TLabeledEdit;
    edCl0: TLabeledEdit;
    edCl1: TLabeledEdit;
    edCl2: TLabeledEdit;
    edCl3: TLabeledEdit;
    edCl4: TLabeledEdit;
    edCl5: TLabeledEdit;
    edCl6: TLabeledEdit;
    edCl7: TLabeledEdit;
    edCl8: TLabeledEdit;
    procedure FormActivate(Sender: TObject);
    procedure edCl0KeyPress(Sender: TObject; var Key: Char);
    procedure edSubjKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEdGroupingSubj: TfmEdGroupingSubj;

implementation

uses UDM, DB;

{$R *.dfm}

procedure TfmEdGroupingSubj.FormActivate(Sender: TObject);
begin
  {edCl0.Text := DM.ibdsTeacherGroupSubjG_0.AsString;
  edCl1.Text := DM.ibdsTeacherGroupSubjG_1.AsString;
  edCl2.Text := DM.ibdsTeacherGroupSubjG_2.AsString;
  edCl3.Text := DM.ibdsTeacherGroupSubjG_3.AsString;
  edCl4.Text := DM.ibdsTeacherGroupSubjG_4.AsString;
  edCl5.Text := DM.ibdsTeacherGroupSubjG_5.AsString;
  edCl6.Text := DM.ibdsTeacherGroupSubjG_6.AsString;
  edCl7.Text := DM.ibdsTeacherGroupSubjG_7.AsString;
  edCl8.Text := DM.ibdsTeacherGroupSubjG_8.AsString;
  edSubj.Text := DM.ibdsTeacherGroupSubjSubject.Value;}
end;

procedure TfmEdGroupingSubj.edCl0KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then Key := #0
end;

procedure TfmEdGroupingSubj.edSubjKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

end.
