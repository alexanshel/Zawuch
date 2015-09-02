unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses UDM;

{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
begin
  //DataSource1.DataSet := DM.IBDataSet1;
  //DataSource2.DataSet := DM.IBDataSet2;
  //DM.IBTable2.IndexFieldNames := 'T1ID;ID';
  //DM.IBTable2.MasterFields := 'ID';
  //DM.IBTable2.MasterSource := DataSource1;
  //IBDataSet2.DataSource := DM.DataSource1;
  //DM.IBTable2.Refresh;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {DataSource2.DataSet:=nil;
  DM.IBTable2.MasterSource := nil;
  DM.IBTable2.MasterFields := '';
  DM.IBTable2.IndexFieldNames := 'ID';
  DataSource1.DataSet:=nil;
  dm.IBTable1.IndexFieldNames:='ID';
  dm.IBTable1.Refresh;
  dm.IBTable2.Refresh;}
  //DM.IBDataSet2.DataSource := nil;
end;

end.
