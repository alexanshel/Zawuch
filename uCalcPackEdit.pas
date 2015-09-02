unit uCalcPackEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls, ActnList;

type
  TfrmCalcPackEdit = class(TFrame)
    pFrame: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edHeader: TEdit;
    mHeader: TMemo;
    mFooter: TMemo;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    procedure bbOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses uClockCalculate;

procedure TfrmCalcPackEdit.bbOKClick(Sender: TObject);
begin
  PostMessage((Self.Owner as TForm).Handle, M_CLOSE_WINDOW_MESSAGE, 0, 0);
end;

end.
