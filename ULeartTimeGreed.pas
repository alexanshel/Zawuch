unit ULeartTimeGreed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Buttons, RXSplit, Grids, DBGrids, RXDBCtrl, ExtCtrls;

type
  TfmLearnTimeGrid = class(TForm)
    Panel1: TPanel;
    dbgLearnTimeGreed: TRxDBGrid;
    Panel2: TPanel;
    RxSplitter1: TRxSplitter;
    Panel3: TPanel;
    dbgLTGRecord: TRxDBGrid;
    Panel4: TPanel;
    RxSplitter2: TRxSplitter;
    btnAddLTG: TSpeedButton;
    btnEditLTG: TSpeedButton;
    btnDelLTG: TSpeedButton;
    ActionList1: TActionList;
    aEditDelete: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLearnTimeGrid: TfmLearnTimeGrid;

implementation

uses UDM;

{$R *.dfm}

end.
