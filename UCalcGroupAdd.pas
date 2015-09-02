unit UCalcGroupAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmCalcGroupAdd = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edName: TEdit;
    mHeader: TMemo;
    mFooter: TMemo;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbOKClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
    FID_Calc_Pack: Integer;
    FSaved: Boolean;
    procedure SaveChanges;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; AID_Calc_Pack: Integer);
  end;

var
  fmCalcGroupAdd: TfmCalcGroupAdd;

implementation

{$R *.dfm}

uses UDM, uClockCalculate;

constructor TfmCalcGroupAdd.Create(AOwner: TComponent;
  AID_Calc_Pack: Integer);
begin
  inherited Create(AOwner);
  FID_Calc_Pack := AID_Calc_Pack;
  FSaved := False;
end;

procedure TfmCalcGroupAdd.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (not FSaved) and (Application.MessageBox('Хотите ли вы сохранить изменения', 'Сохранить изменеия?', MB_YESNO) = mrYes) then
  begin
    SaveChanges;
  end;
end;

procedure TfmCalcGroupAdd.SaveChanges;
begin
  PostMessage(
    (Self.Owner as TForm).Handle,
    M_REFRESH_NODE,
    DM.CalcGroup.Add(FID_Calc_Pack, edName.Text, mHeader.Text, mFooter.Text, 1),
    1);
  FSaved := True;
end;

procedure TfmCalcGroupAdd.bbOKClick(Sender: TObject);
begin
  SaveChanges;
  PostMessage((Self.Owner as TForm).Handle, M_CLOSE_WINDOW_MESSAGE, 0, 0);
end;

procedure TfmCalcGroupAdd.bbCancelClick(Sender: TObject);
begin
  FSaved := True;
  PostMessage((Self.Owner as TForm).Handle, M_CLOSE_WINDOW_MESSAGE, 0, 0);
end;

end.
