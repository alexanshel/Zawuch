unit URepTabExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ExtCtrls, Menus, URTReport,
  DateUtils, ShellAPI, RXDBCtrl, Buttons, Placemnt, JvFormPlacement,
  JvComponentBase, JvAppStorage, JvAppRegistryStorage, JvExDBGrids,
  JvDBGrid;

type
  TfmRepTabExt = class(TForm)
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
  fmRepTabExt: TfmRepTabExt;

implementation

uses UDM, UEdRepTabExt, URepTabExtParam;

{$R *.dfm}

procedure TfmRepTabExt.FormCreate(Sender: TObject);
begin
  DM.ibdsRepTabExt.Close;
  DM.ibdsRepTabExt.Open;
  dsRepTabExt.DataSet := DM.ibdsRepTabExt;
end;

procedure TfmRepTabExt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsRepTabExt.DataSet := nil;
end;

procedure TfmRepTabExt.btnAddRecClick(Sender: TObject);
begin
  fmEdRepTabExt := TfmEdRepTabExt.Create(Self);
  if fmEdRepTabExt.ShowModal = mrOk then
  begin
    DM.AddRepTabExt(null, fmEdRepTabExt.edTName.Text, fmEdRepTabExt.dtpMonth.DateTime,
      StrToFloatDef(fmEdRepTabExt.edY_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_Filial.Text, 0));
    DM.ibdsRepTabExt.Close;
    DM.ibdsRepTabExt.Open;
  end;
  fmEdRepTabExt.Release;
end;

procedure TfmRepTabExt.btnDelRecClick(Sender: TObject);
begin
  DM.DelRepTabExt(DM.ibdsRepTabExtREC_TIME.Value);
  DM.ibdsRepTabExt.Close;
  Dm.ibdsRepTabExt.Open;
end;

procedure TfmRepTabExt.miParamClick(Sender: TObject);
begin
  fmRepTabExtParam := TfmRepTabExtParam.Create(Self);
  fmRepTabExtParam.ShowModal;
  fmRepTabExtParam.Release;
end;

procedure TfmRepTabExt.miWordClick(Sender: TObject);
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

    rep.AddText('\headery300 {\header ');  //верхний колонтитул
    rep.ParSet12Arial;

    rep.AddPar(DM.ibdsConstPASPORT_NAME.Value);
    //rep.AddText(DM.ibdsFilialName.Value);
    rep.AddText('\tx9000\tab\b Лист \chpgn\par}');

    rep.AddPar('\line \line \qc ' + 'ТАБЕЛЬ ОТДАЧИ РАЗОВЫХ ПЕДАГОГИЧЕСКИХ ЧАСОВ    ' + '\par за ' +
       mon[MonthOf(DM.ibdsConstSYSTEM_DATE.Value)] + ' ' +
       IntToStr(YearOf(DM.ibdsConstSYSTEM_DATE.Value)) + ' года\par');
    rep.ParSetLongTableHead;


    rep.CreateMergeHeader( [P[0], P[s.Count - 1]], [0], []);
    rep.AddRow(['Преподаватель', 'Бюджет']);

    rep.CompleteMergeHeader(P, [0], []);
    rep.AddRow(['', 'Месяц', 'Мл.(ч)', 'Ст.(ч)', 'Конц.(ч)']);
    rep.CreateTable(P, []);
    CurrencyString := '';
    CurrencyFormat := 1;
    ThousandSeparator := '''';
    DecimalSeparator := ',';
    CurrencyDecimals := 2;

    rep.CreateTable(P, []);
    rep.ParSet(fTimes, 11);
    BM := DM.ibdsRepTabExt.GetBookmark;
    DM.ibdsRepTabExt.DisableControls;
    DM.ibdsRepTabExt.First;
    while not DM.ibdsRepTabExt.Eof do
    begin
      rep.AddRow(['\ql ' +
        DM.ibdsRepTabExtTEACHER_NAME.Value,
        mon[MonthOf(DM.ibdsRepTabExtTAB_MONTH.Value)],
        '\qr ' + dFormat(DM.ibdsRepTabExtY_T.Value),
        dFormat(DM.ibdsRepTabExtO_T.Value),
        dFormat(DM.ibdsRepTabExtC_T.Value)
      ]);
      DM.ibdsRepTabExt.Next;
    end;
    rep.ParSet(fTimes, 12, [fstBold]);// Arial('\b\fs24');
    rep.AddText(rep.TextToRTF(DM.ibdsConstPASPORT_TAB_SIGN.Value));


    DM.ibdsRepTabExt.GotoBookmark(BM);
    DM.ibdsRepTabExt.FreeBookmark(BM);
  finally
    FreeAndNil(s);
    DM.ibdsRepTabExt.EnableControls;
  end;

  rep.SaveAndExecuteReport(Handle, 'Отчёт табель замещения все филиалы');
  rep.Free;
end;

procedure TfmRepTabExt.miCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmRepTabExt.btnEditRecClick(Sender: TObject);
begin
  if DM.ibdsRepTabExt.IsEmpty then Exit;
  fmEdRepTabExt := TfmEdRepTabExt.Create(Self);
  fmEdRepTabExt.edY_T.Text := DM.ibdsRepTabExtY_T.AsString;
  fmEdRepTabExt.edO_T.Text := DM.ibdsRepTabExtO_T.AsString;
  fmEdRepTabExt.edC_T.Text := DM.ibdsRepTabExtC_T.AsString;
  fmEdRepTabExt.edY_T_OOD.Text := DM.ibdsRepTabExtY_T_OOD.AsString;
  fmEdRepTabExt.edO_T_OOD.Text := DM.ibdsRepTabExtO_T_OOD.AsString;
  fmEdRepTabExt.edC_T_OOD.Text := DM.ibdsRepTabExtC_T_OOD.AsString;
  fmEdRepTabExt.edY_T_Filial.Text := DM.ibdsRepTabExtY_T_FILIAL.AsString;
  fmEdRepTabExt.edO_T_Filial.Text := DM.ibdsRepTabExtO_T_FILIAL.AsString;
  fmEdRepTabExt.edC_T_Filial.Text := DM.ibdsRepTabExtC_T_FILIAL.AsString;
  fmEdRepTabExt.edTName.Text := DM.ibdsRepTabExtTEACHER_NAME.Value;
  fmEdRepTabExt.dtpMonth.DateTime := DM.ibdsRepTabExtTAB_MONTH.Value;


  if fmEdRepTabExt.ShowModal = mrOk then
  begin
    DM.AddRepTabExt(DM.ibdsRepTabExtREC_TIME.AsVariant, fmEdRepTabExt.edTName.Text, fmEdRepTabExt.dtpMonth.DateTime,
      StrToFloatDef(fmEdRepTabExt.edY_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_OOD.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edY_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edO_T_Filial.Text, 0),
      StrToFloatDef(fmEdRepTabExt.edC_T_Filial.Text, 0));
    //DM.ibdsRepTabExt.Refresh;
    DM.ibdsRepTabExt.Close;
    DM.ibdsRepTabExt.Open;
  end;
  fmEdRepTabExt.Release;
end;

procedure TfmRepTabExt.dbgRepTabExtDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Column.Field.AsString = '0' then
    jvdbgRepTabExt.Canvas.Font.Color := jvdbgRepTabExt.Canvas.Brush.Color;
  jvdbgRepTabExT.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfmRepTabExt.dbgRepTabExtKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then btnEditRec.Click;
end;

procedure TfmRepTabExt.miHelpClick(Sender: TObject);
begin
  WinHelp(Handle, 'zawuch.hlp', HELP_CONTEXT, 33);
end;

end.
