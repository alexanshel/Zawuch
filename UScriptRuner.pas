unit UScriptRuner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Placemnt, RXSplit, DB, Grids, DBGrids,
  RXDBCtrl;

type
  TfmScriptRuner = class(TForm)
    FormPlacement1: TFormPlacement;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    btnRun: TButton;
    mScript: TMemo;
    RxDBGrid1: TRxDBGrid;
    ds: TDataSource;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    btnRunQ: TButton;
    RxSplitter1: TRxSplitter;
    procedure btnRunClick(Sender: TObject);
    procedure btnRunQClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmScriptRuner: TfmScriptRuner;

implementation

uses UDM;

{$R *.dfm}

procedure TfmScriptRuner.btnRunClick(Sender: TObject);
begin
{
  if DM.IBScript.Transaction.InTransaction then
    DM.IBScript.Transaction.Commit;

  DM.IBScript.Script.Clear;
  DM.IBScript.Script := mScript.Lines;
  try
    DM.IBScript.ExecuteScript;
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
      DM.IBScript.Transaction.Rollback;
    end;
  end;

  if DM.IBScript.Transaction.InTransaction then
    DM.IBScript.Transaction.Commit;
  }
end;

procedure TfmScriptRuner.btnRunQClick(Sender: TObject);
begin
  DM.ibds.Close;
  DM.ibds.SelectSQL.Clear;
  DM.ibds.SelectSQL.AddStrings(Memo1.Lines);
  ds.DataSet := DM.ibds;
  DM.ibds.Open;
end;

end.
