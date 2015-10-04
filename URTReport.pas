unit URTReport;
interface
uses Classes, Dialogs, UDM, Variants, ShellAPI, Windows, Forms, ComCtrls,
     IBCustomDataSet, IBQuery, frxExportRTF, frxClass;
const
  TWIPS_IN_MM = 57;
type
  TFonts = (fArial, fTimes);
  TFontStyles = (fstBold, fstItalic, fstUnderline);
  TByteSet = set of byte;
  TFontStyleSet = set of TFontStyles;
  TFieldsSizes  = array of Integer;

  TRTReport = class
  protected
    FRepotName: String;
    Buf: String;
    ColQty: Integer;
    FFields: TStrings;
    function GetText: String;
  public
    constructor Create; overload;
    constructor Create(Portraint: boolean); overload;
    constructor Create(ReportName: String); overload;
    function TextToRTF(Text: String): String;
    procedure ParSet10Arial;
    procedure ParSet12Arial;
    procedure ParSet14Arial;
    procedure ParSet10Times;
    procedure ParSet12Times;
    procedure ParSet11Times;
    procedure ParSet14Times;
    procedure ParSet(Font: TFonts; Size: Integer = 12; Style: TFontStyleSet = []);
    procedure ParSetTable;
    procedure ParSetTableTimes8;
    procedure ParSetTableHead;
    procedure ParSetLongTableHead;
    procedure AddText(s: String);
    procedure AddPar(s: String);
    procedure CreateTable(PositionsArray: array of integer; VertFieldsIndex: TByteSet);
    procedure CreateTableMM(PositionsArray: array of integer; VertFieldsIndex: TByteSet);
    procedure CreateTableMMSz(SizesArray: array of Integer; VertFieldsIndex: TByteSet);
    procedure CreateMergeHeader(PositionsArray: array of integer;
      MergeIndexes: TByteSet; VertFieldsIndex: TByteSet);
    procedure CreateMergeHeaderMMSz(SizesArray: array of integer;
      MergeIndexes: TByteSet; VertFieldsIndex: TByteSet);
    procedure CompleteMergeHeader(PositionsArray: array of integer;
      MergeIndexes: TByteSet; VertFieldsIndex: TByteSet);
    procedure CompleteMergeHeaderMMSz(SizesArray: array of integer;
      MergeIndexes: TByteSet; VertFieldsIndex: TByteSet);
    procedure Complete2MergeHeader(PositionsArray: array of integer;
      MergeIndexes: TByteSet; Merge2Indexes: TByteSet; VertFieldsIndex: TByteSet);
    procedure Complete2MergeHeaderMMSz(SizesArray: array of integer;
      MergeIndexes: TByteSet; Merge2Indexes: TByteSet; VertFieldsIndex: TByteSet);
    procedure AddRow(Colums: array of string);
    property Text: String read GetText;
    procedure SaveToFile(FileName: String);
    procedure SetMargins(Left: Integer = 500; Right: Integer = 500;
      Top: Integer = 500; Bottom: Integer = 500);
    procedure SetMarginsMM(Left: Integer = 10; Right: Integer = 10;
      Top: Integer = 10; Bottom: Integer = 10);
    procedure ParSetArial(Params: String);
    procedure ParSetTimes(Params: String);
    function LocateReportParam(TableName, DefaultParams: String;
     Field_qty: Integer): boolean;
    function SaveAndExecuteReport(Handle: Integer; FName: string): boolean;
    function getReportSql(sqlCode: String): String;
    function getFieldsSizes(sqlCode: String): TFieldsSizes;
    function getFieldsPositions(sqlCode: String): TFieldsSizes;
    destructor Destroy; override;
  end;

  {
  TTNTableHeader = class(TTreeNode)
  published
    constructor Crate(Owner:
    property Width: Integer read FWidth write FWidth;
  end;

  TRTFTable = class(TComponent)
  published

  end;
   }
  function LocateReportParam(TableName, DefaultParams: String): boolean;
  function dFormat(V: Double): string;
  function iFormat(V: Integer): string;
  function nl(v: Integer): Variant;
  function FIOToFInicials(V: string): String;
  function getFreeFileName(ext: string = '.rtf'): String;
  function getXSLDir: String;
  function getTmpDir: String;
  function quoteFileName(fileName: string): String;
  procedure runFrxReportAndExport(fileName: String; frReport: TfrxReport; frExport: TfrxRTFExport);
const
  mon: array[1..12] of string = ('Январь', 'Февраль', 'Март',
    'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь',
    'Октябрь' ,'Ноябрь' ,'Декабрь');

implementation

uses SysUtils, ConvUtils, Math, DB;


  function FIOToFInicials(V: string): String;
  var
    i: integer;
  begin
    V := Trim(V);
    Result := Copy(V, 1, Pos(' ', V) - 1);
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + ' ' + V[1] + '.';
    Delete(V, 1, Pos(' ', V));
    V := TrimLeft(V);
    if V <> '' then Result := Result + V[1] + '.';
  end;

  function getFreeFileName(ext: String = '.rtf'): String;
  var
    i: integer;
  begin
    i := 0;
    try
      if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\tmp') then
        if not CreateDir(ExtractFilePath(Application.ExeName) + '\tmp') then
          raise Exception.Create('Невозможно создать директорию tmp');
      while FileExists(ExtractFilePath(Application.ExeName) +
        'tmp\' + 'tmp' + IntToStr(i) + ext) do inc(i);
      result := ExtractFilePath(Application.ExeName) +
        'tmp\' + 'tmp' + IntToStr(i) + ext;
    except
      MessageDlg('Невозможна запись в файл.', mtError, [mbOK], 0);
    end;
  end;

  function getXSLDir: String;
  begin
    result := ExtractFilePath(ParamStr(0)) + 'xsl\';
  end;

  function getTmpDir: String;
  begin
    result := ExtractFilePath(ParamStr(0)) + 'tmp\';
  end;

  function quoteFileName(fileName: string): String;
  begin
    result := '"' + fileName + '"';
  end;

  procedure runFrxReportAndExport(fileName: String; frReport: TfrxReport; frExport: TfrxRTFExport);
  begin
    frExport.FileName := getFreeFileName;

    if not FileExists(fileName) then
    begin
      frReport.SaveToFile(fileName);
    end;

    frReport.LoadFromFile(fileName);
    frReport.PrepareReport;
    frReport.Export(frExport);
  end;

{ TRTReport }

procedure TRTReport.AddPar(s: String);
begin
  buf := buf + s + '\par ';
end;

procedure TRTReport.AddRow(Colums: array of String);
var
  i: Integer;
  l: Integer;
begin
  Buf := Buf + '\intbl';
  l := length(Colums);
  for i := 0 to ColQty - 1 do
    if l > i then
      Buf := Buf + ' ' + Colums[i] + '\cell'
    else
      Buf := Buf + ' ' + '\cell';
  Buf := Buf + '\row';
end;

procedure TRTReport.AddText(s: String);
begin
  Buf := Buf + s;
end;

constructor TRTReport.Create;
begin
  Buf :=
    '{\rtf1\ansi{\fonttbl {\f0\froman Times New Roman;}{\f1\fswiss Arial;}}';
  FFields := TStringList.Create;
  FFields.Delimiter := '$';
end;

procedure TRTReport.CompleteMergeHeader(PositionsArray: array of integer;
  MergeIndexes: TByteSet; VertFieldsIndex: TByteSet);
var i: Integer;
  function V(i: integer): String;
  begin
    if i in VertFieldsIndex then
      Result := '\cltxbtlr '
    else
      Result := '\cltxlrtb '
  end;
begin
  Buf := Buf + '\trowd \trgaph30 ';
  ColQty := High(PositionsArray) + 1;
  for i := 0 to ColQty - 1 do
    if i in MergeIndexes then
      Buf := Buf +  ' ' +
        '\clvmrg\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
        '\cellx' + IntToStr(PositionsArray[i])
    else
      Buf := Buf +  ' ' +
        '\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
        '\cellx' + IntToStr(PositionsArray[i]);
end;

constructor TRTReport.Create(Portraint: boolean);
begin
  Create;
  if not Portraint then
    Buf := Buf + '\paperw16838\paperh11905\landscape\margl950\margr500' +
      '\margt700\margb700';
end;

procedure TRTReport.CreateMergeHeader(PositionsArray: array of Integer;
  MergeIndexes: TByteSet; VertFieldsIndex: TByteSet);
var i: Integer;
  function V(i: integer): String;
  begin
    if i in VertFieldsIndex then
      Result := '\cltxbtlr '
    else
      Result := '\cltxlrtb '
  end;
begin
  Buf := Buf + '\trowd \trgaph30';
  ColQty := High(PositionsArray) + 1;
  for i := 0 to ColQty - 1 do
    if i in MergeIndexes then
      Buf := Buf +  ' ' +
        '\clvmgf\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
        '\cellx' + IntToStr(PositionsArray[i])
    else
      Buf := Buf +  ' ' +
        '\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
        '\cellx' + IntToStr(PositionsArray[i]);
end;

procedure TRTReport.CreateTable(PositionsArray: array of integer;
  VertFieldsIndex: TByteSet);
var i: Integer;
begin
  Buf := Buf + '\trowd \trgaph30\trkeep';
  ColQty := High(PositionsArray) + 1;
  for i := 0 to ColQty - 1 do
    if i in VertFieldsIndex then
      Buf := Buf +  ' ' +
        '\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 \cltxbtlr ' +
        '\cellx' + IntToStr(PositionsArray[i])
    else
      Buf := Buf +  ' ' +
        '\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 \cltxlrtb ' +
        '\cellx' + IntToStr(PositionsArray[i])
end;

function TRTReport.GetText: String;
begin
  Result := Buf + '}';
end;

procedure TRTReport.ParSet10Arial;
begin
  buf := buf + '\pard\b0\f1\fs20\sl360 '
end;

procedure TRTReport.ParSet10Times;
begin
  buf := buf + '\pard\b0\f0\fs20\sl000 '
end;

procedure TRTReport.ParSet12Arial;
begin
  buf := buf + '\pard\b0\f1\fs24\sl360'
end;

procedure TRTReport.ParSet12Times;
begin
  buf := buf + '\pard\b0\f0\fs24\sl360'
end;

procedure TRTReport.ParSetTable;
begin
  buf := buf + '\pard\b0\f0\fs24\sl000\ql'
end;

procedure TRTReport.ParSetTableHead;
begin
  buf := buf + '\pard\b\f1\fs20\sl000\qc'
end;

procedure TRTReport.SaveToFile(FileName: String);
var
  f: Textfile;
begin
  AssignFile(f, FileName);
  try
    Rewrite(f);
    Write(f, Buf + '}');
  except
    CloseFile(f);
    ShowMessage('Закройте файл ' + FileName);
  end;
  CloseFile(f);
end;

procedure TRTReport.ParSetLongTableHead;
begin
  buf := buf + '\pard\qc\b0\f1\fs16\sl000'
end;

procedure TRTReport.Complete2MergeHeader(PositionsArray: array of integer;
  MergeIndexes: TByteSet; Merge2Indexes: TByteSet;
  VertFieldsIndex: TByteSet);
var i: Integer;
  function V(i: integer): String;
  begin
    if i in VertFieldsIndex then
      Result := '\cltxbtlr '
    else
      Result := '\cltxlrtb '
  end;
begin
  Buf := Buf + '\trowd \trgaph30';
  ColQty := High(PositionsArray) + 1;
  for i := 0 to ColQty - 1 do
    if i in MergeIndexes then
      if i in Merge2Indexes then
        Buf := Buf +  ' ' +
          '\clvmgf\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
          '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
          '\cellx' + IntToStr(PositionsArray[i])
      else
        Buf := Buf +  ' ' +
          '\clvmrg\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
          '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
          '\cellx' + IntToStr(PositionsArray[i])
    else
      if i in Merge2Indexes then
        Buf := Buf +  ' ' +
          '\clvmgf\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb '+
          '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
          '\cellx' + IntToStr(PositionsArray[i])
      else
        Buf := Buf +  ' ' +
          '\clvertalc\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
          '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 ' + V(i) +
          '\cellx' + IntToStr(PositionsArray[i]);
end;

procedure TRTReport.ParSetTableTimes8;
begin
  buf := buf + '\pard\b0\f0\fs16\ql\sl000'
end;

procedure TRTReport.SetMargins(Left, Right, Top, Bottom: Integer);
begin
  buf := buf + ' \margl' + IntToStr(Left) + '\margr' + IntToStr(Right) +
    '\margt' + IntToStr(Top) + '\margb' + IntToStr(Bottom);
end;

procedure TRTReport.ParSetArial(Params: String);
begin
  buf := buf + '\pard\f1' + Params;
end;

procedure TRTReport.ParSetTimes(Params: String);
begin
  buf := buf + '\pard\f0' + Params;
end;

function TRTReport.LocateReportParam(TableName, DefaultParams: String;
  Field_qty: Integer): boolean;
var
  ID, i: integer;
  S: String[30];
begin
  DM.ibdsReportParam.Close; DM.ibdsReportParam.Open;
  result := true;

  if DM.ibdsReportParam.Locate('NAME', VarArrayOf([TableName]), []) then
    S := DM.ibdsReportParamSIZES_1.Value
  else begin
    S := DefaultParams;
    ID := DM.AddReportParam(Null, TableName, 0, 10, 10, 10, 10,
      S, Null, Null, Field_qty, Null, Null);
    DM.ibdsReportParam.Close; DM.ibdsReportParam.Open;
    if not DM.ibdsReportParam.Locate('ID', ID, []) then
      result := false;
  end;
end;

constructor TRTReport.Create(ReportName: String);
begin
  FRepotName := ReportName;
  if not DM.ibdsReportParam.Locate('NAME', VarArrayOf([ReportName]), [])
  then Exit;

  Create;
  if DM.ibdsReportParamPAGE_ORIENT.Value = 1 then
    Buf := Buf + '\paperw16838\paperh11905\landscape';
  SetMargins(DM.ibdsReportParamM_LEFT.Value * TWIPS_IN_MM,
    DM.ibdsReportParamM_RIGHT.Value * TWIPS_IN_MM,
    DM.ibdsReportParamM_TOP.Value * TWIPS_IN_MM,
    DM.ibdsReportParamM_BOTTOM.Value * TWIPS_IN_MM);
end;

function LocateReportParam(TableName, DefaultParams: String): boolean;
var
  ID, i: integer;
  S: String[30];
begin
  DM.ibdsReportParam.Close; DM.ibdsReportParam.Open;
  result := true;

  if DM.ibdsReportParam.Locate('NAME', VarArrayOf([TableName]), []) then
    S := DM.ibdsReportParamSIZES_1.Value
  else begin
    S := DefaultParams;
    ID := DM.AddReportParam(Null, TableName, 0, 10, 10, 10, 10,
      S, Null, Null, Length(S), Null, Null);
    DM.ibdsReportParam.Close; DM.ibdsReportParam.Open;
    if not DM.ibdsReportParam.Locate('ID', ID, []) then
      result := false;
  end;
end;

procedure TRTReport.ParSet14Arial;
begin
  buf := buf + '\pard\b0\f1\fs28\sl360'
end;

procedure TRTReport.ParSet14Times;
begin
  buf := buf + '\pard\b0\f0\fs28\sl360'
end;

procedure TRTReport.CreateTableMM(PositionsArray: array of integer;
  VertFieldsIndex: TByteSet);
var i: Integer;
begin
  Buf := Buf + '\trowd \trgaph30\trkeep';
  ColQty := High(PositionsArray) + 1;
  for i := 0 to ColQty - 1 do
    if i in VertFieldsIndex then
      Buf := Buf +  ' ' +
        '\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 \cltxbtlr ' +
        '\cellx' + IntToStr(PositionsArray[i] * TWIPS_IN_MM)
    else
      Buf := Buf +  ' ' +
        '\clbrdrt\brdrs\brdrw10 \clbrdrb\brdrs\brdrw10 '+
        '\clbrdrl\brdrs\brdrw10 \clbrdrr\brdrs\brdrw10 \cltxlrtb ' +
        '\cellx' + IntToStr(PositionsArray[i] * TWIPS_IN_MM)
end;

function TRTReport.SaveAndExecuteReport(Handle: Integer; FName: string): boolean;
var
  i: integer;
begin
  Result := true;
  i := 0;
  try
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + '\tmp') then
      if not CreateDir(ExtractFilePath(Application.ExeName) + '\tmp') then
        raise Exception.Create('Невозможно создать директорию tmp');
    while FileExists(ExtractFilePath(Application.ExeName) +
      'tmp\' + FName + '~' + IntToStr(i) + '.rtf') do inc(i);
    FName := ExtractFilePath(Application.ExeName) +
      'tmp\' + FName + '~' + IntToStr(i) + '.rtf';

    Self.SaveToFile(FName);
    ShellExecute(Handle, nil, PChar(FName), nil, nil, SW_RESTORE);
  except
    MessageDlg('Невозможна запись в файл.', mtError, [mbOK], 0);
    Result := false;
  end;
end;

function dFormat(V: Double): string;
begin
  if V = 0 then Result := ''
  else Result := Format('%2.2f', [v]);
end;

function iFormat(V: Integer): string;
begin
  if V = 0 then Result := ''
  else Result := IntToStr(V);
end;

function nl(v: Integer): Variant;
begin
  if v = -1 then Result := Null
  else Result := v
end;

procedure TRTReport.CreateTableMMSz(SizesArray: array of Integer;
  VertFieldsIndex: TByteSet);
var
  a: array of Integer;
  i: Integer;
begin
  SetLength(a, Length(SizesArray));
  a[0] := SizesArray[0];
  for i := 1 to High(SizesArray) do
    a[i] := a[i - 1] + SizesArray[i];
  CreateTableMM(a, VertFieldsIndex);
end;

procedure TRTReport.SetMarginsMM(Left, Right, Top, Bottom: Integer);
begin
  SetMargins(Left * TWIPS_IN_MM, Right * TWIPS_IN_MM, Top * TWIPS_IN_MM, Bottom * TWIPS_IN_MM);
end;

procedure TRTReport.ParSet11Times;
begin
  buf := buf + '\pard\b0\f0\fs20\sl000 '
end;

procedure TRTReport.ParSet(Font: TFonts; Size: Integer;
  Style: TFontStyleSet);
begin
  case Font of
  fArial: buf := buf + '\pard\f1';
  fTimes: buf := buf + '\pard\f0';
  end;
  buf := buf + '\fs' + IntToStr(Size*2) + '\b0\i0\ulnone ';
  if fstBold in Style then buf := buf + '\b ';
  if fstItalic in Style then buf := buf + '\i ';
  if fstUnderline in Style then buf := buf + '\ul ';
end;

function TRTReport.TextToRTF(Text: String): String;
var
  p: integer;
begin
  p := pos(#9, Text);
  while p <> 0 do
  begin
    Text := copy(Text, 1, p - 1) + '\tab' + copy(Text, p + 1, Length(Text) - p);
    p := pos(#9, Text);
  end;
  Result := '';
  p := pos(#13, Text);
  while p <> 0 do
  begin
    Result := Result + copy(Text, 1, p - 1) + '\par ';
    Text := copy(Text, p + 2, Length(Text) - p - 1);
    p := pos(#13, Text);
  end;
  Result := Result + Text;
end;

procedure TRTReport.CreateMergeHeaderMMSz(SizesArray: array of integer;
  MergeIndexes, VertFieldsIndex: TByteSet);
var
  a: array of Integer;
  i: Integer;
begin
  SetLength(a, Length(SizesArray));
  a[0] := SizesArray[0];
  for i := 1 to High(SizesArray) do a[i] := a[i - 1] + SizesArray[i];
  for i := 0 to High(SizesArray) do a[i] := a[i] * TWIPS_IN_MM;
  CreateMergeHeader(a, MergeIndexes, VertFieldsIndex);
end;

procedure TRTReport.CompleteMergeHeaderMMSz(SizesArray: array of integer;
  MergeIndexes, VertFieldsIndex: TByteSet);
var
  a: array of Integer;
  i: Integer;
begin
  SetLength(a, Length(SizesArray));
  a[0] := SizesArray[0];
  for i := 1 to High(SizesArray) do a[i] := a[i - 1] + SizesArray[i];
  for i := 0 to High(SizesArray) do a[i] := a[i] * TWIPS_IN_MM;
  CompleteMergeHeader(a, MergeIndexes, VertFieldsIndex);
end;

procedure TRTReport.Complete2MergeHeaderMMSz(SizesArray: array of integer;
  MergeIndexes, Merge2Indexes, VertFieldsIndex: TByteSet);
var
  a: array of Integer;
  i: Integer;
begin
  SetLength(a, Length(SizesArray));
  a[0] := SizesArray[0];
  for i := 1 to High(SizesArray) do a[i] := a[i - 1] + SizesArray[i];
  for i := 0 to High(SizesArray) do a[i] := a[i] * TWIPS_IN_MM;
  Complete2MergeHeader(a, MergeIndexes, Merge2Indexes, VertFieldsIndex);
end;

function TRTReport.getReportSql(sqlCode: String): String;
var
  ds :TIBDataSet;
begin
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      'select rs.sql_text ' +
      'from reports r ' +
      '  inner join reports_sql rs on rs.report_id = r.id ' +
      'where r.code = :rep_code and rs.code = :sql_code';
    ParamByName('rep_code').Value := FRepotName;
    ParamByName('sql_code').Value := sqlCode;
    Open;
    //First;
    if not IsEmpty then
    begin
      result := FieldByName('sql_text').AsString;
    end;
  finally
    Free;
  end;
end;

function TRTReport.getFieldsSizes(sqlCode: String): TFieldsSizes;
var
  idx: Integer;
  sl : TStringList;
begin

  idx := FFields.IndexOf(sqlCode);
  if idx > 0 then
  begin
    result := TFieldsSizes(FFields.Objects[idx]);
    exit;
  end;
  sl := TStringList.Create;
  sl.Delimiter := ';';
  //result := TFieldsSizes TStringList.Create;
  //result.Delimiter := ';';
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      'select rs.fields_meta ' +
      'from reports r ' +
      '  inner join reports_sql rs on rs.report_id = r.id ' +
      'where r.code = :rep_code and rs.code = :sql_code';
    ParamByName('rep_code').Value := FRepotName;
    ParamByName('sql_code').Value := sqlCode;
    Open;
    //First;
    if not IsEmpty then
    begin
      sl.DelimitedText := FieldByName('fields_meta').AsString;
      SetLength(result, sl.Count);
      FFields.AddObject(sqlCode, TObject(result));
      for idx := 0 to sl.Count - 1 do
      begin
        try
          result[idx] := StrToInt(sl.ValueFromIndex[idx]);
        except
        end;
      end;
    end;
  finally
    Free;
  end;
end;

function TRTReport.getFieldsPositions(sqlCode: String): TFieldsSizes;
var
  sizes: TFieldsSizes;
  idx:   Integer;
begin
  sizes := getFieldsSizes(sqlCode);
  SetLength(result, length(sizes));
  result[0] := sizes[0] * TWIPS_IN_MM;
  for idx := 0 to length(sizes) - 1 do
  begin
    result[idx] := result[idx - 1] + sizes[idx] * TWIPS_IN_MM;
  end;
end;

destructor TRTReport.Destroy;
var
  idx: Integer;
  v  : TObject;
begin
  for idx := 0 to FFields.Count - 1 do
  begin
    FFields.Objects[idx] := nil;
  end;
  FreeAndNil(FFields);
end;

end.
