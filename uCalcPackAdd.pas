unit uCalcPackAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls;

type
  TfmCalcPackAdd = class(TForm)
    pFrame: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edName: TEdit;
    mHeader: TMemo;
    mFooter: TMemo;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    al: TActionList;
    procedure bbOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    FSaved: Boolean;
    procedure SaveChanges;
  public
    { Public declarations }
  end;

var
  fmCalcPackAdd: TfmCalcPackAdd;

implementation

{$R *.dfm}

uses uClockCalculate, UDM;

procedure TfmCalcPackAdd.bbOKClick(Sender: TObject);
begin
  SaveChanges;
  PostMessage((Self.Owner as TForm).Handle, M_CLOSE_WINDOW_MESSAGE, 0, 0);
end;

procedure TfmCalcPackAdd.FormCreate(Sender: TObject);
begin
  FSaved := False;
end;

procedure TfmCalcPackAdd.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (not FSaved) and (Application.MessageBox('Хотите ли вы сохранить изменения', 'Сохранить изменеия?', MB_YESNO) = mrYes) then
  begin
    SaveChanges;
  end;
end;

procedure TfmCalcPackAdd.SaveChanges;
begin
  PostMessage((Self.Owner as TForm).Handle, M_REFRESH_TREE, DM.CalcPack.Add(edName.Text), 0);
  FSaved := True;
end;

procedure TfmCalcPackAdd.bbCancelClick(Sender: TObject);
begin
  FSaved := True;
  PostMessage((Self.Owner as TForm).Handle, M_CLOSE_WINDOW_MESSAGE, 0, 0);
end;

end.
