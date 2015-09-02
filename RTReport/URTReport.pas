unit URTReport;
interface
uses Classes;
type
  TRTReport=class
  protected
    Buf: String;
    ColQty: Integer;
    function GetText: String;
  public
    constructor Create;
    procedure AddText(Format: String; s: String);
    procedure CreateTable(PositionsArray: array of integer);
    procedure AddRow(Colums: array of string);
    property Text: String read GetText;
    procedure SaveToFile(FileName: String);
  end;
implementation

uses SysUtils;

{ TRTReport }

procedure TRTReport.AddRow(Colums: array of String);
var
  i: Integer;
begin
  Buf := Buf + '\intbl';
  for i := 0 to ColQty - 1 do
    Buf := Buf + ' ' + Colums[i] + '\cell';
  Buf := Buf + '\row';
end;

procedure TRTReport.AddText(Format, s: String);
begin
  Buf := Buf + Format + s;
end;

constructor TRTReport.Create;
begin
  Buf :=
  '{\rtf1\ansi{\fonttbl {\f0\froman Times New Roman;}{\f1\fswiss Arial;}}';
end;

procedure TRTReport.CreateTable(PositionsArray: array of integer);
var i: Integer;
begin
  Buf := Buf + '\trowd \trgaph108';
  ColQty := High(PositionsArray) + 1;
  for i := 0 to ColQty - 1 do
    Buf := Buf +  ' ' +
      '\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
      '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' +
      '\cellx' + IntToStr(PositionsArray[i]);
end;

function TRTReport.GetText: String;
begin
  Result := Buf + '}';
end;

procedure TRTReport.SaveToFile(FileName: String);
var
  f: Textfile;
begin
  AssignFile(f, FileName);
  Rewrite(f);
  Write(f, Buf + '}');
  CloseFile(f);
end;

end.
