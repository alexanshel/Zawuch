unit UTarrificationOpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ValEdit, IniFiles;

type
  TfmTarifficationOpt = class(TForm)
    vleSizes: TValueListEditor;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTarifficationOpt: TfmTarifficationOpt;

implementation

{$R *.dfm}

procedure TfmTarifficationOpt.FormCreate(Sender: TObject);
const
  v: array[0..22] of Integer =
    (300, 1700, 450, 1700, 570, 300, 700,
     470, 470, 470, 590, 590, 590, 700,
     570, 570, 570, 590, 590, 590, 700,
     800, 900);
var
  S: TMemoryStream;
  Ini: TIniFile;
  vr: array[0..22] of Integer;
  i: Integer;
begin
  S := TMemoryStream.Create;
  try
    Ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '.INI'));
    if not Ini.ValueExists('Report Table Params', 'Tariffication') then
    begin
      S.SetSize(SizeOf(Integer)*23);
      S.WriteBuffer(v, SizeOf(Integer)*23);
      S.Seek(0, soFromBeginning);
      Ini.WriteBinaryStream('Report Table Params', 'Tariffication', S);
    end
    else
    begin
      S.SetSize(SizeOf(Integer)*23);
      S.Seek(0, soFromBeginning);
      Ini.ReadBinaryStream('Report Table Params', 'Tariffication', S);
      S.Read(vr, SizeOf(Integer)*23);
      for i := 0 to 6 do vleSizes.Values[i] := IntToStr(vr[i]);
      vleSizes.Values[7] := IntToStr(vr[7]);
      vleSizes.Values[8] := IntToStr(vr[10]);
      vleSizes.Values[9] := IntToStr(vr[13]);
      vleSizes.Values[10] := IntToStr(vr[21]);
      vleSizes.Values[11] := IntToStr(vr[22]);
    end;
  finally
    Ini.Free;
    S.Free;
  end;
end;

end.
