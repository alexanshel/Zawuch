unit uGroupingChoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls,
  JvExControls, JvDBLookup;

type
  TfmGroupingChoice = class(TForm)
    dsGrouping: TDataSource;
    ibqGrouping: TIBQuery;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    ibqGroupingID: TIntegerField;
    ibqGroupingNAME: TIBStringField;
    ibqGroupingFINANCING_ID: TIntegerField;
    jvdblcGrouping: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGroupingChoice: TfmGroupingChoice;

implementation

uses UDM;

{$R *.dfm}

procedure TfmGroupingChoice.FormCreate(Sender: TObject);
begin
  ibqGrouping.Open;
end;

procedure TfmGroupingChoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ibqGrouping.Close;
end;

end.
