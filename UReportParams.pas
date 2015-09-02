unit UReportParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RXSpin, ExtCtrls, Grids, ValEdit, DB,
  ComCtrls, RXSplit, RxRichEd, Placemnt;

type
  TRepParams = class;
  TfmReportParams = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    rgLandscape: TRadioGroup;
    Panel2: TPanel;
    edMTop: TRxSpinEdit;
    edMLeft: TRxSpinEdit;
    edMRight: TRxSpinEdit;
    edMBottom: TRxSpinEdit;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    RxSplitter1: TRxSplitter;
    gbHeader: TGroupBox;
    gbFooter: TGroupBox;
    reFooter: TRichEdit;
    gbFields: TGroupBox;
    tvFields: TTreeView;
    RxSplitter2: TRxSplitter;
    gbSize: TGroupBox;
    edFSize: TRxSpinEdit;
    btnBold: TSpeedButton;
    reHeader: TRxRichEdit;
    FormStorage1: TFormStorage;
    RxSpinEdit1: TRxSpinEdit;
    RxSplitter3: TRxSplitter;
    RxSplitter4: TRxSplitter;
    procedure FormCreate(Sender: TObject);
    constructor Create(AOwner: TComponent; RepName: string); virtual;
    procedure btnOKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvFieldsChange(Sender: TObject; Node: TTreeNode);
    procedure edFSizeChange(Sender: TObject);
    procedure btnBoldClick(Sender: TObject);
    procedure reHeaderSelectionChange(Sender: TObject);
  private
    { Private declarations }
    IsAddMode: boolean;
    P: TRepParams;
    function CalcFieldSize(Node: TTreeNode): integer;
  public
    ReportName: string;
    { Public declarations }
  end;

  TRepParams = class(TComponent)
    constructor Create(ATableFieldsOwner: TCustomTreeView); virtual;
    destructor Destroy; virtual;
  private
    FLandscape: Boolean;
    FMRight: byte;
    FMLeft: byte;
    FMTop: byte;
    FMBottom: byte;
    FTableFields: TTreeNodes;
    FFooter: TStrings;
    FHeader: TStrings;
    procedure SetLandscape(const Value: Boolean);
    procedure SetMBottom(const Value: byte);
    procedure SetMLeft(const Value: byte);
    procedure SetMRight(const Value: byte);
    procedure SetMTop(const Value: byte);
    procedure SetTableFields(const Value: TTreeNodes);
    procedure SetFooter(const Value: TStrings);
    procedure SetHeader(const Value: TStrings);
  published
    property TableFields: TTreeNodes read FTableFields write SetTableFields;
    property Header: TStrings read FHeader write SetHeader;
    property Footer: TStrings read FFooter write SetFooter;
    property MTop: byte read FMTop write SetMTop;
    property MBottom: byte read FMBottom write SetMBottom;
    property MLeft: byte read FMLeft write SetMLeft;
    property MRight: byte read FMRight write SetMRight;
    property Landscape: Boolean read FLandscape write SetLandscape;
  end;
var
  fmReportParams: TfmReportParams;

implementation

uses UDM, IBQuery, IBCustomDataSet, DBTables;

{$R *.dfm}

constructor TfmReportParams.Create(AOwner: TComponent; RepName: string);
var
  s1, s2: TMemoryStream;
  i: Integer;
  tmp: string;
begin
  inherited Create(AOwner);
  ReportName := RepName;
  p := TRepParams.Create(tvFields);

  DM.ibdsT.Close;
  DM.ibdsT.Open;
  if not DM.ibdsT.Locate('REPORT_NAME', VarArrayOf([RepName]), []) then
  begin
    IsAddMode := True;
    Exit;
  end;
  IsAddMode := False;
  s1 := TMemoryStream.Create;
  s2 := TMemoryStream.Create;
  try
    DM.ibdsTPARAMS.SaveToStream(s1);
    s1.Position := 0;
    ObjectTextToBinary(s1, s2);
    s2.Position := 0;
    s2.ReadComponent(p);
  finally
    s1.Free;
    s2.Free;
  end;
  tmp := '';
  {
  for i := 0 to p.Table.Count - 1 do
  begin
    if p.Table[i].Name <> tmp then
      VLE.InsertRow(p.Table[i].Name, p.Table[i].AsString, true);
    tmp := p.Table[i].Name;
  end;
  }
  edMTop.Value := p.MTop;
  edMBottom.Value := p.MBottom;
  edMLeft.Value := p.MLeft;
  edMRight.Value := p.MRight;
  rgLandscape.ItemIndex := ord(p.Landscape);
  reHeader.PlainText := true;
  reFooter.PlainText := true;
  reHeader.Lines := p.Header;
  reFooter.Lines := p.Footer;
end;

procedure TfmReportParams.FormCreate(Sender: TObject);
begin

end;

{ TRepParams }

constructor TRepParams.Create(ATableFieldsOwner: TCustomTreeView);
begin
  inherited Create(nil);
  FTableFields := TTreeNodes.Create(ATableFieldsOwner);
  FHeader := TStringList.Create;
  FFooter := TStringList.Create;
end;

destructor TRepParams.Destroy;
begin
  FTableFields.Free;
end;

procedure TRepParams.SetFooter(const Value: TStrings);
begin
  FFooter := Value;
end;

procedure TRepParams.SetHeader(const Value: TStrings);
begin
  FHeader := Value;
end;

procedure TRepParams.SetLandscape(const Value: Boolean);
begin
  FLandscape := Value;
end;

procedure TRepParams.SetMBottom(const Value: byte);
begin
  FMBottom := Value;
end;

procedure TRepParams.SetMLeft(const Value: byte);
begin
  FMLeft := Value;
end;

procedure TRepParams.SetMRight(const Value: byte);
begin
  FMRight := Value;
end;

procedure TRepParams.SetMTop(const Value: byte);
begin
  FMTop := Value;
end;

procedure TfmReportParams.btnOKClick(Sender: TObject);
var
  i, j: Integer;
  s1, s2: TMemoryStream;
  b: PChar;
  str: string;
begin
  p.MTop := Trunc(edMTop.Value);
  p.MBottom := Trunc(edMBottom.Value);
  p.MLeft := Trunc(edMLeft.Value);
  p.MRight := Trunc(edMRight.Value);
  p.Landscape := Boolean(rgLandscape.ItemIndex);
  reHeader.PlainText := true;
  p.Header := reHeader.Lines;
  p.Footer := reFooter.Lines;
  if IsAddMode then
  begin
    s1 := TMemoryStream.Create;
    s2 := TMemoryStream.Create;
    try
      s1.WriteComponent(p);
      s1.Position := 0;
      ObjectBinaryToText(s1, s2);
      s2.Position := 0;
      b := AllocMem(s2.Size + 1);
      s2.ReadBuffer(b^, s2.Size);
    finally
      s1.Free;
      s2.Free;
    end;
    with DM.ibqProc do
    begin
      if Transaction.InTransaction then Transaction.Commit;
      DM.ibqProc.Close;
      SQL.Text := 'INSERT INTO T VALUES (null, :r_name, :r_param);';
      DM.ibqProc.ParamByName('r_name').AsString := ReportName;
      DM.ibqProc.ParamByName('r_param').AsBlob := b;
      try
        ExecSQL;
      except
        Transaction.Rollback;
      end;
      if Transaction.InTransaction then Transaction.Commit;
    end;
  end
  else begin
   { for i := 1 to VLE.RowCount - 1 do
      p.Table.FindParam(VLE.Keys[i]).AsString := VLE.Values[VLE.Keys[i]];
    }
    s1 := TMemoryStream.Create;
    s2 := TMemoryStream.Create;
    try
      s1.WriteComponent(p);
      s1.Position := 0;
      ObjectBinaryToText(s1, s2);
      s2.Position := 0;
      b := AllocMem(s2.Size + 1);
      s2.ReadBuffer(b^, s2.Size);
    finally
      s1.Free;
      s2.Free;
    end;

    with DM.ibqProc do
    begin
      if Transaction.InTransaction then Transaction.Commit;
      SQL.Text := 'UPDATE T SET PARAMS = :r_param WHERE REPORT_NAME = :r_name;';
      Params.ParamByName('r_name').AsString := ReportName;
      Params.ParamByName('r_param').AsBlob := b;
      try
        ExecSQL;
      except
        Transaction.Rollback;
      end;
      if Transaction.InTransaction then Transaction.Commit;
    end;
  end;
  FreeMem(b);
  DM.ibdsT.Refresh;
end;

procedure TfmReportParams.FormDestroy(Sender: TObject);
begin
  P.Free;
end;

procedure TRepParams.SetTableFields(const Value: TTreeNodes);
begin
  FTableFields := Value;
end;

procedure TfmReportParams.tvFieldsChange(Sender: TObject; Node: TTreeNode);
begin
  edFSize.Enabled := Node.getFirstChild = nil;
  if not edFSize.Enabled then edFSize.Value := CalcFieldSize(Node)
  else
    edFSize.Value := Integer(Node.Data);
end;

procedure TfmReportParams.edFSizeChange(Sender: TObject);
begin

  if tvFields.Selected.getFirstChild = nil then
    tvFields.Selected.Data := Pointer(trunc(edFSize.Value));
end;

function TfmReportParams.CalcFieldSize(Node: TTreeNode): integer;
var
  t: TTreeNode;
begin
  if Node.getFirstChild = nil then Result := Integer(Node.Data)
  else
  begin
    t := Node.getFirstChild;
    Result := 0;
    while t <> nil do
    begin
      Inc(Result, CalcFieldSize(t));
      t := Node.GetNextChild(t);
    end;
  end;
end;

procedure TfmReportParams.btnBoldClick(Sender: TObject);
begin
  if btnBold.Down and (fsBold in reHeader.SelAttributes.Style) then
    reHeader.SelAttributes.Style := reHeader.SelAttributes.Style - [fsBold]
  else
    reHeader.SelAttributes.Style := reHeader.SelAttributes.Style + [fsBold];
end;

procedure TfmReportParams.reHeaderSelectionChange(Sender: TObject);
begin
  if fsBold in reHeader.SelAttributes.Style then btnBold.Down := true
  else btnBold.Down := false;
end;

end.
