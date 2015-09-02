unit UTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, URTReport;

type
  TForm1 = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  report: TRTReport;
  sizes: array of integer;
  s: TStrings;
begin
  report := TRTReport.Create;

  report.CreateTable([3000, 6000, 9000, 10000]);
  report.AddRow(['fsdfs', 'gfghdfgd', 'herhe', 'hdetre']);
  report.AddRow(['2-я строка, 1 столбец',
    '2-я строка, 2 столбец', '2-я строка, 3 столбец',
    '2-я строка, 4 столбец']);
  report.CreateTable([1000, 2000, 3000, 4000, 5000]);
  report.AddRow(['1','2','3','4', '5']);
  report.AddRow(['6','7','8','9','10']);
  report.AddText('\pard\f0\b\par', 'Привет!');
  report.SaveToFile('tmp.rtf');
  RichEdit1.Lines.LoadFromFile('tmp.rtf');
end;

end.
