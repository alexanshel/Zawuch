unit URepTabExt2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ExtCtrls, Menus, URTReport,
  DateUtils, ShellAPI, RXDBCtrl, Buttons, Placemnt, JvExDBGrids, JvDBGrid,
  JvFormPlacement, JvComponentBase, JvAppStorage, JvAppRegistryStorage;

type
  TfmRepTabExt2 = class(TForm)
    Panel1: TPanel;
    dsRepTabExt: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    miClose: TMenuItem;
    miWord: TMenuItem;
    miParam: TMenuItem;
    btnAddRec: TSpeedButton;
    btnEditRec: TSpeedButton;
    btnDelRec: TSpeedButton;
    miHelp: TMenuItem;
    jvdbgRepTabExt: TJvDBGrid;
    JvAppRegistryStorage: TJvAppRegistryStorage;
    JvFormStorage: TJvFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddRecClick(Sender: TObject);
    procedure btnDelRecClick(Sender: TObject);
    procedure miParamClick(Sender: TObject);
    procedure miWordClick(Sender: TObject);
    procedure miCloseClick(Sender: TObject);
    procedure btnEditRecClick(Sender: TObject);
    procedure dbgRepTabExtDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgRepTabExtKeyPress(Sender: TObject; var Key: Char);
    procedure miHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRepTabExt2: TfmRepTabExt2;

implementation

uses UDM, UEdRepTabExt, URepTabExtParam;

{$R *.dfm}

procedure TfmRepTabExt2.FormCreate(Sender: TObject);
begin
  DM.ibdsRepTabExt2.Close;
  DM.ibdsRepTabExt2.Open;
  dsRepTabExt.DataSet := DM.ibdsRepTabExt2;
end;

procedure TfmRepTabExt2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsRepTabExt.DataSet := nil;
end;

procedure TfmRepTabExt2.btnAddRecClick(Sender: TObject);
begin
  fmEdRepTabExt := TfmEdRepTabExt.Create(Self);
  if fmEdRepTabExt.ShowModal = mrOk then
  begin
    DM.AddRepTabExt2(null, fmEdRepTabExt.edTName.Text, fmEdRepTabExt.dtpMonth.DateTime,
      StrToFloatDef(fmEdRepTabExt.edY_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_Filial.Text, 0));
    DM.ibdsRepTabExt2.Close;
    DM.ibdsRepTabExt2.Open;
  end;
  fmEdRepTabExt.Release;
end;

procedure TfmRepTabExt2.btnDelRecClick(Sender: TObject);
begin
  DM.DelRepTabExt2(DM.ibdsRepTabExt2REC_TIME.Value);
  DM.ibdsRepTabExt2.Close;
  DM.ibdsRepTabExt2.Open;
end;

procedure TfmRepTabExt2.miParamClick(Sender: TObject);
begin
  fmRepTabExtParam := TfmRepTabExtParam.Create(Self);
  fmRepTabExtParam.ShowModal;
  fmRepTabExtParam.Release;
end;

procedure TfmRepTabExt2.miWordClick(Sender: TObject);
var
  rep: TRTReport;
  P: array of Integer;
  S: TStrings;
  i: integer;
  BM: TBookmark;
  function iFormat(Value: Integer): String;
  begin
    if Value = 0 then Result := ''
    else Result :=  IntToStr(Value);
  end;
  function dFormat(Value: Double): String;
  begin
    if Value = 0 then Result := ''
    else Result := FloatToStr(Value);// Format('%.2f', [Value]);
  end;
  function cFormat(Value: Currency): String;
  begin
    if Value = 0 then Result := ''
    else Result := Format('%m', [Value]);
  end;
begin
  LocateReportParam('RepTabExt', #30#20#15);

  try
    s := TStringList.Create;
    s.Delimiter := ';';

    s.DelimitedText := DM.ibdsReportParamSIZES_1.Value;

    SetLength(p, s.Count);
    P[0] := StrToInt(s.ValueFromIndex[0])*TWIPS_IN_MM;
    for i := 1 to s.Count - 1 do
      P[i] := P[i - 1] + StrToInt(s.ValueFromIndex[i]) * TWIPS_IN_MM;


    rep := TRTReport.Create('RepTabExt');

    rep.AddText('\headery300 {\header ');  //‚ÂıÌËÈ ÍÓÎÓÌÚËÚÛÎ
    rep.ParSet12Arial;

    rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
    //rep.AddText(DM.ibdsFilialName.Value);
    rep.AddText('\tx9000\tab\b ÀËÒÚ \chpgn\par}');

    rep.AddPar('\line \line \qc ' + '“¿¡≈À‹ Œ“–¿¡Œ“ » œ≈ƒ¿√Œ√»◊≈— »’ ◊¿—Œ¬ ¬–≈Ã≈ÕÕŒ Œ“—”“—“¬”ﬁŸ»’ œ–≈œŒƒ¿¬¿“≈À≈…    ' + '\par Á‡ ' +
       mon[MonthOf(DM.ibdsConstSYSTEM_DATE.Value)] + ' ' +
       IntToStr(YearOf(DM.ibdsConstSYSTEM_DATE.Value)) + ' „Ó‰‡\par');
    rep.ParSetLongTableHead;


    rep.CreateMergeHeader( [P[0], P[s.Count - 1]], [0], []);
    rep.AddRow(['œÂÔÓ‰‡‚‡ÚÂÎ¸', '¡˛‰ÊÂÚ']);

    rep.CompleteMergeHeader(P, [0], []);
    rep.AddRow(['', 'ÃÂÒˇˆ', 'ÃÎ.(˜)', '—Ú.(˜)', ' ÓÌˆ.(˜)']);
    rep.CreateTable(P, []);
    CurrencyString := '';
    CurrencyFormat := 1;
    ThousandSeparator := '''';
    DecimalSeparator := ',';
    CurrencyDecimals := 2;

    rep.CreateTable(P, []);
    rep.ParSet(fTimes, 11);
    BM := DM.ibdsRepTabExt2.GetBookmark;
    DM.ibdsRepTabExt2.DisableControls;
    DM.ibdsRepTabExt2.First;
    while not DM.ibdsRepTabExt2.Eof do
    begin
      rep.AddRow(['\ql' +
        DM.ibdsRepTabExt2TEACHER_NAME.Value,
        mon[MonthOf(DM.ibdsRepTabExt2TAB_MONTH.Value)],
        '\qr ' + dFormat(DM.ibdsRepTabExt2Y_T.Value),
        dFormat(DM.ibdsRepTabExt2O_T.Value),
        dFormat(DM.ibdsRepTabExt2C_T.Value)
      ]);
      DM.ibdsRepTabExt2.Next;
    end;
    rep.ParSet(fTimes, 12, [fstBold]);// Arial('\b\fs24');
    rep.AddText(rep.TextToRTF(DM.ibdsConstPASPORT_TAB_SIGN.Value));

    DM.ibdsRepTabExt2.GotoBookmark(BM);
    DM.ibdsRepTabExt2.FreeBookmark(BM);
  finally
    FreeAndNil(s);
    DM.ibdsRepTabExt.EnableControls;
  end;
    rep.SaveAndExecuteReport(Handle, 'ŒÚ˜∏Ú Ú‡·ÂÎ¸ Á‡ÏÂ˘ÂÌËˇ ‚ÒÂ ÙËÎË‡Î˚');
end;

procedure TfmRepTabExt2.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRepTabExt2.btnEditRecClick(Sender: TObject);
begin
  if DM.ibdsRepTabExt2.IsEmpty then Exit;
  fmEdRepTabExt := TfmEdRepTabExt.Create(Self);
  fmEdRepTabExt.edY_T.Text := DM.ibdsRepTabExt2Y_T.AsString;
  fmEdRepTabExt.edO_T.Text := DM.ibdsRepTabExt2O_T.AsString;
  fmEdRepTabExt.edC_T.Text := DM.ibdsRepTabExt2C_T.AsString;
  fmEdRepTabExt.edY_T_OOD.Text := DM.ibdsRepTabExt2Y_T_OOD.AsString;
  fmEdRepTabExt.edO_T_OOD.Text := DM.ibdsRepTabExt2O_T_OOD.AsString;
  fmEdRepTabExt.edC_T_OOD.Text := DM.ibdsRepTabExt2C_T_OOD.AsString;
  fmEdRepTabExt.edY_T_Filial.Text := DM.ibdsRepTabExt2Y_T_FILIAL.AsString;
  fmEdRepTabExt.edO_T_Filial.Text := DM.ibdsRepTabExt2O_T_FILIAL.AsString;
  fmEdRepTabExt.edC_T_Filial.Text := DM.ibdsRepTabExt2C_T_FILIAL.AsString;
  fmEdRepTabExt.edTName.Text := DM.ibdsRepTabExt2TEACHER_NAME.Value;
  fmEdRepTabExt.dtpMonth.DateTime := DM.ibdsRepTabExt2TAB_MONTH.Value;


  if fmEdRepTabExt.ShowModal = mrOk then
  begin
    DM.AddRepTabExt2(DM.ibdsRepTabExt2REC_TIME.AsVariant, fmEdRepTabExt.edTName.Text, fmEdRepTabExt.dtpMonth.DateTime,
      StrToFloatDef(fmEdRepTabExt.edY_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_Filial.Text, 0));
    //DM.ibdsRepTabExt2.Refresh;
    DM.ibdsRepTabExt2.Close;
    DM.ibdsRepTabExt2.Open;
  end;
  fmEdRepTabExt.Release;
end;

procedure TfmRepTabExt2.dbgRepTabExtDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Field.AsString = '0' then
    jvdbgRepTabExt.Canvas.Font.Color := jvdbgRepTabExt.Canvas.Brush.Color;
  jvdbgRepTabExT.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmRepTabExt2.dbgRepTabExtKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then btnEditRec.Click;
end;

procedure TfmRepTabExt2.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 33);
end;

end.
