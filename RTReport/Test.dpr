program Test;

uses
  Forms,
  UTest in 'UTest.pas' {Form1},
  URTReport in 'URTReport.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
