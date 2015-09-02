unit uClockCalculateClasses;

interface

uses SysUtils, Classes, ComCtrls, JvPageListTreeView,
  IBCustomDataSet, IBQuery, UDM, JvMemoryDataset, DB;

type
  TCalcIndSubjClassDetailItem = class(TCollectionItem)
  private
    FClassNumber: Integer;
    FClockCurriculum: Double;
    FQtyFact: Integer;
  public
    property ClassNumber: Integer read FClassNumber;
    property ClockCurriculum: Double read FClockCurriculum;
    property QtyFact: Integer read FQtyFact;
  end;

  TNodeIndividualCalcSubject = class;

  TCalcIndSubjClassDetail = class(TCollection)
  private
    FOwner: TNodeIndividualCalcSubject;
    function GetItem(Index: Integer): TCalcIndSubjClassDetailItem;
    procedure SetItem(Index: Integer; Value: TCalcIndSubjClassDetailItem);
  public
    constructor Create(AOwner: TNodeIndividualCalcSubject);
    property Items[Index: Integer]: TCalcIndSubjClassDetailItem read GetItem write SetItem;
    function Add: TCalcIndSubjClassDetailItem;
    function AddSubjectDetail(ClassNumber: Integer; ClockCurriculum: Double; QtyFact: Integer): TCalcIndSubjClassDetailItem;
  end;

  TCalcIndClassDetailItem = class(TCollectionItem)
  private
    FClassNumber: Integer;
    FCategory: Boolean;
    FQtyStudent: Integer;
  public
    property ClassNumber: Integer read FClassNumber;
    property Category: Boolean read FCategory;
    property QtyStudent: Integer read FQtyStudent;
  end;

  TNodeIndividualCalc = class;

  TCalcIndClassDetail = class(TCollection)
  private
    FOwner: TNodeIndividualCalc;
    function GetItem(Index: Integer): TCalcIndClassDetailItem;
    procedure SetItem(Index: Integer; Value: TCalcIndClassDetailItem);
  public
    constructor Create(AOwner: TNodeIndividualCalc);
    property Items[Index: Integer]: TCalcIndClassDetailItem read GetItem write SetItem;
    function Add: TCalcIndClassDetailItem;
    function AddClassDetail(ClassNumber: Integer; Category: Boolean; QtyStudent: Integer): TCalcIndClassDetailItem;
  end;


  TNodeCustom = class(TJvPageIndexNode)
  public
    //ID: Integer; //данные уровня
    constructor Create(AOwner: TTreeNodes); virtual;
    procedure Refresh(ReloadChilds: boolean); virtual; abstract;
    class function AssignNode(Node: TNodeCustom): Boolean; virtual;
  end;

  TNodeRoot = class(TNodeCustom)
  private
    FCalcPackMemoryData: TJvMemoryData;
    procedure LoadPackages;
  public
    property CalcPackMemoryData: TJvMemoryData read FCalcPackMemoryData;
    constructor Create(AOwner: TTreeNodes); overload;
    destructor Destroy; override;
    procedure Refresh(ReloadChilds: Boolean); override;
  end;

  //узел - пакет расчёта
  TNodePackage = class(TNodeCustom)
  private
    FID: Integer;
  public
    property ID: Integer read FID;
    constructor Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: String); overload;
    procedure Refresh(ReloadChilds: Boolean); override;
    class procedure LoadPackages(AOwner: TTreeNodes); virtual;
  end;

  //узел - корень индивидуальных расчётов
  TNodeIndCalcParent = class(TNodeCustom)
  private
    FCalcIndividualMemoryData: TJvMemoryData;
    function getPackage: TNodePackage;
    procedure AddIndCalcs;
  public
    constructor Create(AOwner: TTreeNodes; AParent: TTreeNode); overload;
    destructor Destroy; override;
    procedure Refresh(ReloadChilds: Boolean); override;
    property Package: TNodePackage read getPackage;
    property CalcIndividualMemoryData: TJvMemoryData read FCalcIndividualMemoryData;
  end;

  //узел - индивидуальный расчёт
  TNodeIndividualCalc = class(TNodeCustom)
  private
    FID: Integer;
    FFooter: string;
    FHeader: string;
    FClassDetail: TCalcIndClassDetail;
    FClassDetailMemoryData: TJvMemoryData;
    FSubjectMemoryData: TJvMemoryData;
    function getPackage: TNodePackage;
    procedure AddSubjects;
    procedure LoadClassDetail;
    procedure OnAfterPostClassDetail(DataSet: TDataSet);
  public
    constructor Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string; AHeader: string; AFooter: string); overload;
    destructor Destroy; override;
    procedure Refresh(ReloadChilds: Boolean); override;
    property Package: TNodePackage read getPackage;
    property ID: Integer read FID;
    property Header: string read FHeader;
    property Footer: string read FFooter;
    property ClassDetail: TCalcIndClassDetail read FClassDetail;
    property ClassDetailMemoryData: TJvMemoryData read FClassDetailMemoryData;
    property SubjectMemoryData: TJvMemoryData read FSubjectMemoryData;
  end;

  //узел - предмет индивидуального расчёта
  TNodeIndividualCalcSubject = class(TNodeCustom)
  private
    FSubjectDetail: TCalcIndSubjClassDetail;
    FSubjectDetailMemoryData: TJvMemoryData;
    FID: Integer;
    function getIndividualCalc: TNodeIndividualCalc;
    procedure OnAfterPostSubjectDetail(DataSet: TDataSet);
    procedure LoadSubjectDetail;
  public
    constructor Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string); overload; virtual;
    destructor Destroy; override;
    procedure Refresh(ReloadChilds: Boolean); override;
    property ID: Integer read FID;
    property IndividualCalc: TNodeIndividualCalc read getIndividualCalc;
    property SubjectDetail: TCalcIndSubjClassDetail read FSubjectDetail;
    property SubjectDetailMemoryData: TJvMemoryData read FSubjectDetailMemoryData;
  end;

  //узел - корень групповых расчётов
  TNodeGroupCalcParent = class(TNodeCustom)
  private
    FCalcGrouplMemoryData: TJvMemoryData;
    function getPackage: TNodePackage;
    procedure AddGroupCalcs;
  public
    constructor Create(AOwner: TTreeNodes; ARoot: TTreeNode); overload;
    destructor Destroy; override;
    procedure Refresh(ReloadChilds: Boolean); override;
    property Package: TNodePackage read getPackage;
    property CalcGrouplMemoryData: TJvMemoryData read FCalcGrouplMemoryData;
  end;

  //узел - групповой расчёт
  TNodeGroupCalc = class(TNodeCustom)
  private
    FID: Integer;
    FHeader: string;
    FFooter: string;
    FClassDetailMemoryData: TJvMemoryData;
    FSubjectMemoryData: TJvMemoryData;
    function getPackage: TNodePackage;
    procedure AddSubjects;
    procedure LoadClassDetail;
    procedure OnAfterPostClassDetail(DataSet: TDataSet);
  public
    constructor Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string; AHeader: string; AFooter: string); overload;
    destructor Destroy;
    procedure Refresh(ReloadChilds: Boolean); override;
    property Package: TNodePackage read getPackage;
    property ID: Integer read FID;
    property Header: string read FHeader;
    property Footer: string read FFooter;
    property ClassDetailMemoryData: TJvMemoryData read FClassDetailMemoryData;
    property SubjectMemoryData: TJvMemoryData read FSubjectMemoryData;
  end;

  //узел - предмет группового расчёта
  TNodeGroupCalcSubject = class(TNodeCustom)
  private
    FID: Integer;
    FSubjectDetailMemoryData: TJvMemoryData;
    function getGroupCalc: TNodeGroupCalc;
    procedure LoadSubjectDetail;
    procedure OnAfterPostSubjectDetail(DataSet: TDataSet);
  public
    constructor Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string); overload;
    procedure Refresh(ReloadChilds: Boolean); override;
    property ID: Integer read FID;
    property GroupCalc: TNodeGroupCalc read getGroupCalc;
    property SubjectDetailMemoryData: TJvMemoryData read FSubjectDetailMemoryData;
  end;

  TNodeCustomClass = class of TNodeCustom;

const
  PAGE_FIRST = 0;
  PAGE_PACKAGE = 1;
  PAGE_INDIVIDUAL_CALC_PARENT = 2;
  PAGE_INDIVIDUAL_CALC = 3;
  PAGE_INDIVIDUAL_SUBJECT = 4;
  PAGE_GROUP_CALC_PARENT = 5;
  PAGE_GROUP_CALC = 6;
  PAGE_GROUP_SUBJECT = 7;

implementation

{ TCalcIndSubjClassDetailCollection }

function TCalcIndSubjClassDetail.Add: TCalcIndSubjClassDetailItem;
begin
  Result := inherited Add as TCalcIndSubjClassDetailItem;
end;

function TCalcIndSubjClassDetail.AddSubjectDetail(ClassNumber: Integer;
  ClockCurriculum: Double; QtyFact: Integer): TCalcIndSubjClassDetailItem;
begin
  Result := Add as TCalcIndSubjClassDetailItem;
  Result.FClassNumber := ClassNumber;
  Result.FClockCurriculum := ClockCurriculum;
  Result.FQtyFact := QtyFact;
end;

constructor TCalcIndSubjClassDetail.Create(AOwner: TNodeIndividualCalcSubject);
begin
  inherited Create(TCalcIndSubjClassDetailItem);
  Self.FOwner := AOwner;
end;

function TCalcIndSubjClassDetail.GetItem(
  Index: Integer): TCalcIndSubjClassDetailItem;
begin
  Result := TCalcIndSubjClassDetailItem(inherited Items[Index]);
end;

procedure TCalcIndSubjClassDetail.SetItem(Index: Integer;
  Value: TCalcIndSubjClassDetailItem);
begin
  inherited SetItem(Index, TCollectionItem(Value));
end;

{ TJvPageIndexNodeIndividualCalc }

procedure TNodeIndividualCalc.AddSubjects;
begin
  if Assigned(FSubjectMemoryData) then FSubjectMemoryData.EmptyTable
  else
    FSubjectMemoryData := TJvMemoryData.Create(nil);
  //добавляем все предметы
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT ' +
      '   CIS.ID, ' +
      '   CIS.NAME_SUBJECT, ' +
      '   CIS.ID_DEPARTMENT, ' +
      '   CIS.NAME_DEPARTMENT, ' +
      '   CIS.ID_CURRICULUM, ' +
      '   CIS.NAME_CURRICULUM, ' +
      '   CIS.IS_CONCERTMASTER ' +
      ' FROM V_CALC_I_SUBJECT CIS ' +
      ' WHERE CIS.ID_CALC_INDIVIDUAL = :ID_CALC_INDIVIDUAL AND CIS.ID_CALC_PACK = :ID_CALC_PACK ' +
      ' ORDER BY CIS.SHOW_POSITION ';
    ParamByName('ID_CALC_PACK').Value := Package.ID;
    ParamByName('ID_CALC_INDIVIDUAL').Value := ID;
    Open;
    while not Eof do
    begin
      TNodeIndividualCalcSubject.Create(Self.Owner, Self, FieldByName('ID').AsInteger, FieldByName('NAME_SUBJECT').AsString);
      Next;
    end;
    First;
    FSubjectMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
  finally
    Free;
  end;
end;

constructor TNodeIndividualCalc.Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string; AHeader: string; AFooter: string);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_INDIVIDUAL_CALC;
  FID := AID;
  FHeader := AHeader;
  FFooter := AFooter;

  Self.Owner.AddNode(
    Self,
    AParent,
    AName,
    nil,
    naAddChild
  );

  AddSubjects;
  LoadClassDetail;
end;

{ TJvPageIndexNodePackage }

constructor TNodePackage.Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: String);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_PACKAGE;
  FID := AID;
  AOwner.AddNode(
    Self,
    AParent,
    AName,
    nil,
    naAddChild
  );

  //создание узла пакета порождает создание двух узлов:
  // 1 узла-родителя индивидуальных расчётов
  // 2 узла-родителя групповых расчетов
  TNodeIndCalcParent.Create(AOwner, Self);
  TNodeGroupCalcParent.Create(AOwner, Self);
end;

{ TJvPageIndexNodeIndividualCalcSubject }

constructor TNodeIndividualCalcSubject.Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_INDIVIDUAL_SUBJECT;
  FID := AID;

  AOwner.AddNode(
    Self,
    AParent,
    AName,
    nil,
    naAddChild
  );

  FSubjectDetailMemoryData := TJvMemoryData.Create(nil);

  LoadSubjectDetail;
end;

{ TNodeGroupCalc }

procedure TNodeGroupCalc.AddSubjects;
begin
  FSubjectMemoryData.EmptyTable;

  //добавляем все предметы
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT ID, ID_CALC_GROUP, ID_CALC_PACK, NAME_SUBJECT, ID_GROUPING, NAME_GROUPING, ID_GROUPING_SUBJ, SHOW_POSITION, IS_CONCERTMASTER ' +
      ' FROM V_CALC_G_SUBJECT CGS ' +
      ' WHERE CGS.ID_CALC_GROUP = :ID_CALC_GROUP AND CGS.ID_CALC_PACK = :ID_CALC_PACK ' +
      ' ORDER BY CGS.SHOW_POSITION ';
    ParamByName('ID_CALC_PACK').Value := Package.ID;
    ParamByName('ID_CALC_GROUP').Value := ID;
    Open;
    while not Eof do
    begin
      TNodeGroupCalcSubject.Create(Self.Owner, Self, FieldByName('ID').AsInteger, FieldByName('NAME_SUBJECT').AsString);
      Next;
    end;
    First;
    FSubjectMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
  finally
    Free;
  end;
end;

constructor TNodeGroupCalc.Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string; AHeader: string; AFooter: string);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_GROUP_CALC;
  FID := AID;
  FHeader := AHeader;
  FFooter := FFooter;
  FSubjectMemoryData := TJvMemoryData.Create(nil);
  FClassDetailMemoryData := TJvMemoryData.Create(nil);

  AOwner.AddNode(
    Self,
    AParent,
    AName,
    nil,
    naAddChild
  );

  LoadClassDetail;
  AddSubjects;
end;

destructor TNodeGroupCalc.Destroy;
begin
  FClassDetailMemoryData.Free;
  FSubjectMemoryData.Free;
end;

function TNodeGroupCalc.getPackage: TNodePackage;
begin
  Result := (Self.Parent as TNodeGroupCalcParent).getPackage;
end;

procedure TNodeGroupCalc.LoadClassDetail;
begin
  FClassDetailMemoryData.EmptyTable;

  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT CLASS_NUMBER, ' +
      '   CASE WHEN CATEGORY > 0 THEN ''старшие'' WHEN CATEGORY = 0 THEN ''младшие'' ELSE '''' END CATEGORY, QTY_STUDENT ' +
      ' FROM CALC_GROUP_CLASS_DETAIL ' +
      ' WHERE ID_CALC_GROUP = :ID_CALC_GROUP AND ID_CALC_PACK = :ID_CALC_PACK ';
    ParamByName('ID_CALC_GROUP').Value := ID;
    ParamByName('ID_CALC_PACK').Value := Self.Package.ID;
    Open;
    FetchAll;

    FClassDetailMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
    FClassDetailMemoryData.AfterPost := OnAfterPostClassDetail;
  finally
    Free;
  end;
end;

procedure TNodeGroupCalc.OnAfterPostClassDetail(DataSet: TDataSet);
begin
  DM.CalcGroup.ChangeFactStudentQty(
    FClassDetailMemoryData.FieldByName('CLASS_NUMBER').AsInteger,
    Self.ID,
    Self.Package.ID,
    FClassDetailMemoryData.FieldByName('QTY_STUDENT').AsInteger
  );
end;

procedure TNodeGroupCalc.Refresh(ReloadChilds: Boolean);
begin
  Owner.BeginUpdate;
  //обновляем имя
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text := 'SELECT ID, NAME, HEADER, FOOTER FROM CALC_GROUP WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID';
    ParamByName('ID_CALC_PACK').Value := Package.ID;
    ParamByName('ID').Value := ID;
    Open;
    Self.Text := FieldByName('NAME').AsString;
    Self.FHeader := FieldByName('HEADER').AsString;
    Self.FFooter := FieldByName('FOOTER').AsString;
  finally
    Free;
  end;
  LoadClassDetail;
  if ReloadChilds then
  begin
    Self.DeleteChildren;
    AddSubjects;
  end;
  Owner.EndUpdate;
end;

{ TNodeGroupCalcSubject }

constructor TNodeGroupCalcSubject.Create(AOwner: TTreeNodes; AParent: TTreeNode; AID: Integer; AName: string);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_GROUP_SUBJECT;
  FID := AID;

  AOwner.AddNode(
    Self,
    AParent,
    AName,
    nil,
    naAddChild
  );

  FSubjectDetailMemoryData := TJvMemoryData.Create(nil);

  LoadSubjectDetail;
end;

{ TNodeCustom }

class function TNodeCustom.AssignNode(Node: TNodeCustom): Boolean;
begin
  Result := Node is Self;
end;

constructor TNodeCustom.Create(AOwner: TTreeNodes);
begin
  inherited Create(AOwner);
end;

{ TNodeIndCalcParent }

procedure TNodeIndCalcParent.AddIndCalcs;
begin
  //добавляем все индивидуальные расчёты
  FCalcIndividualMemoryData.EmptyTable;
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT ID, NAME, HEADER, FOOTER FROM CALC_INDIVIDUAL WHERE ID_CALC_PACK = :ID_CALC_PACK ' +
      ' ORDER BY SHOW_POSITION ';
    ParamByName('ID_CALC_PACK').Value := Package.ID;
    Open;
    while not Eof do
    begin
      TNodeIndividualCalc.Create(
        Self.Owner, Self,
        FieldByName('ID').AsInteger,
        FieldByName('NAME').AsString,
        FieldByName('HEADER').AsString,
        FieldByName('FOOTER').AsString
      );
      Next;
    end;
    First;
    FCalcIndividualMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
  finally
    Free;
  end;
end;

constructor TNodeIndCalcParent.Create(AOwner: TTreeNodes; AParent: TTreeNode);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_INDIVIDUAL_CALC_PARENT;

  AOwner.AddNode(
    Self,
    AParent,
    'Расчёт индивидуальных предметов',
    nil,
    naAddChild
  );
  FCalcIndividualMemoryData := TJvMemoryData.Create(nil);

  AddIndCalcs;
end;

destructor TNodeIndCalcParent.Destroy;
begin
  FCalcIndividualMemoryData.Free;
  inherited Destroy;
end;

function TNodeIndCalcParent.getPackage: TNodePackage;
begin
  Result := Self.Parent as TNodePackage;
end;

class procedure TNodePackage.LoadPackages(AOwner: TTreeNodes);
var
  i: Integer;
  tn: TTreeNode;
  tn_Root: TTreeNode;
begin
  AOwner.BeginUpdate;
  AOwner.Clear;
  tn_Root := AOwner.Add(nil, 'Пакеты расчётов');
  (tn_Root as TJvPageIndexNode).PageIndex := PAGE_FIRST;
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text := 'SELECT ID, NAME FROM CALC_PACK ORDER BY SHOW_POSITION';
    Open;
    while not Eof do
    begin
      tn := TNodePackage.Create(AOwner, tn_Root, FieldByName('ID').AsInteger, FieldByName('NAME').AsString);
      Next;
    end;
  finally
    Free;
  end;
  AOwner.EndUpdate;
end;

procedure TNodeIndCalcParent.Refresh(ReloadChilds: Boolean);
begin
  Owner.BeginUpdate;
  if ReloadChilds then
  begin
    Self.DeleteChildren;
    AddIndCalcs;
  end;
  Owner.EndUpdate;
end;

{ TNodeGroupCalcParent }

procedure TNodeGroupCalcParent.AddGroupCalcs;
begin
  //добавляем все групповые расчёты
  FCalcGrouplMemoryData.EmptyTable;
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text := 'SELECT ID, NAME, HEADER, FOOTER FROM CALC_GROUP WHERE ID_CALC_PACK = :ID_CALC_PACK';
    ParamByName('ID_CALC_PACK').Value := Package.ID;
    Open;
    while not Eof do
    begin
      TNodeGroupCalc.Create(
        Self.Owner, Self,
        FieldByName('ID').AsInteger,
        FieldByName('NAME').AsString,
        FieldByName('HEADER').AsString,
        FieldByName('FOOTER').AsString
      );
      Next;
    end;
    First;
    FCalcGrouplMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
  finally
    Free;
  end;
end;

constructor TNodeGroupCalcParent.Create(AOwner: TTreeNodes; ARoot: TTreeNode);
begin
  inherited Create(AOwner);
  PageIndex := PAGE_GROUP_CALC_PARENT;

  AOwner.AddNode(
    Self,
    ARoot,
    'Расчёт групповых предметов',
    nil,
    naAddChild
  );
  FCalcGrouplMemoryData := TJvMemoryData.Create(nil);

  AddGroupCalcs;
end;

destructor TNodeIndividualCalc.Destroy;
begin
  FClassDetail.Free;
  FClassDetailMemoryData.Free;
  FSubjectMemoryData.Free;
  inherited Destroy;
end;

function TNodeIndividualCalc.getPackage: TNodePackage;
begin
  Result := (Self.Parent as TNodeIndCalcParent).Package;
end;

destructor TNodeGroupCalcParent.Destroy;
begin
  FCalcGrouplMemoryData.Free;
  inherited Destroy;
end;

function TNodeGroupCalcParent.getPackage: TNodePackage;
begin
  Result := (Self.Parent as TNodePackage);
end;

procedure TNodePackage.Refresh(ReloadChilds: boolean);
begin
  Owner.BeginUpdate;
  //обновление узла (надо обновить свое имя и всех детишек)
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text := 'SELECT NAME FROM CALC_PACK WHERE ID = :ID';
    ParamByName('ID').Value := FID;
    Open;
    Self.Text := FieldByName('NAME').Value
  finally
    Free;
  end;
  if ReloadChilds then
  begin
    Self.DeleteChildren;
    TNodeIndCalcParent.Create(Owner, Self);
    TNodeGroupCalcParent.Create(Owner, Self);
  end;
  Owner.EndUpdate;
end;

procedure TNodeIndividualCalc.LoadClassDetail;
begin
  if Assigned(FClassDetail) then FreeAndNil(FClassDetail);
  if Assigned(FClassDetailMemoryData) then FreeAndNil(FClassDetailMemoryData);

  FClassDetail := TCalcIndClassDetail.Create(Self);
  FClassDetailMemoryData := TJvMemoryData.Create(nil);

  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT CLASS_NUMBER, CATEGORY, QTY_STUDENT ' +
      ' FROM CALC_INDIVIDUAL_CLASS_DETAIL ' +
      ' WHERE ID_CALC_INDIVIDUAL = :ID_CALC_INDIVIDUAL AND ID_CALC_PACK = :ID_CALC_PACK ';
    ParamByName('ID_CALC_INDIVIDUAL').Value := ID;
    ParamByName('ID_CALC_PACK').Value := Self.Package.ID;
    Open;

    while not Eof do
    begin
      FClassDetail.AddClassDetail(
        FieldByName('CLASS_NUMBER').AsInteger,
        FieldByName('CATEGORY').AsInteger <> 0,
        FieldByName('QTY_STUDENT').AsInteger
      );
      Next;
    end;

    SQL.Text :=
      ' SELECT CLASS_NUMBER, ' +
      '   CASE WHEN CATEGORY > 0 THEN ''старшие'' WHEN CATEGORY = 0 THEN ''младшие'' ELSE '''' END CATEGORY, QTY_STUDENT ' +
      ' FROM CALC_INDIVIDUAL_CLASS_DETAIL ' +
      ' WHERE ID_CALC_INDIVIDUAL = :ID_CALC_INDIVIDUAL AND ID_CALC_PACK = :ID_CALC_PACK ';
    ParamByName('ID_CALC_INDIVIDUAL').Value := ID;
    ParamByName('ID_CALC_PACK').Value := Self.Package.ID;
    Open;
    FetchAll;


    FClassDetailMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
    FClassDetailMemoryData.AfterPost := OnAfterPostClassDetail;
  finally
    Free;
  end;
end;

procedure TNodeIndividualCalc.OnAfterPostClassDetail(DataSet: TDataSet);
begin
  DM.CalcIndividual.ChangeFactStudentQty(
    FClassDetailMemoryData.FieldByName('CLASS_NUMBER').AsInteger,
    Self.ID,
    Self.Package.ID,
    FClassDetailMemoryData.FieldByName('QTY_STUDENT').AsInteger
  );
  //
end;

procedure TNodeIndividualCalc.Refresh(ReloadChilds: Boolean);
begin
  Owner.BeginUpdate;
  //обновляем имя
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT NAME, HEADER, FOOTER FROM CALC_INDIVIDUAL WHERE ID_CALC_PACK = :ID_CALC_PACK AND ID = :ID ' +
      ' ORDER BY SHOW_POSITION ';
    ParamByName('ID_CALC_PACK').Value := Package.ID;
    ParamByName('ID').Value := ID;
    Open;
    Self.Text := FieldByName('NAME').AsString;
    Self.FHeader := FieldByName('HEADER').AsString;
    Self.FFooter := FieldByName('FOOTER').AsString;
  finally
    Free;
  end;
  LoadClassDetail;
  if ReloadChilds then
  begin
    Self.DeleteChildren;
    AddSubjects;
  end;
  Owner.EndUpdate;
end;

destructor TNodeIndividualCalcSubject.Destroy;
begin
  FSubjectDetail.Free;
  FSubjectDetailMemoryData.Free;
  inherited Destroy;
end;

function TNodeIndividualCalcSubject.getIndividualCalc: TNodeIndividualCalc;
begin
  Result := Parent as TNodeIndividualCalc;
end;

procedure TNodeIndividualCalcSubject.LoadSubjectDetail;
begin
  if Assigned(FSubjectDetail) then FreeAndNil(FSubjectDetail);
  FSubjectDetail := TCalcIndSubjClassDetail.Create(Self);
  FSubjectDetailMemoryData.EmptyTable;

  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibTransaction;
    SQL.Text :=
      ' SELECT CLASS_NUMBER, CLOCK_CURRICULUM, QTY_FACT ' +
      ' FROM CALC_IND_SUBJ_CLASS_DETAIL ' +
      ' WHERE ' +
      '   ID_CALC_INDIVIDUAL_SUBJECT = :ID_CALC_INDIVIDUAL_SUBJECT AND ' +
      '   ID_CALC_INDIVIDUAL = :ID_CALC_INDIVIDUAL AND ' +
      '   ID_CALC_PACK = :ID_CALC_PACK ';
    ParamByName('ID_CALC_INDIVIDUAL_SUBJECT').Value := Self.ID;
    ParamByName('ID_CALC_INDIVIDUAL').Value := Self.IndividualCalc.ID;
    ParamByName('ID_CALC_PACK').Value := Self.IndividualCalc.Package.ID;
    Open;
    while not Eof do
    begin
      FSubjectDetail.AddSubjectDetail(
        FieldByName('CLASS_NUMBER').AsInteger,
        FieldByName('CLOCK_CURRICULUM').AsFloat,
        FieldByName('QTY_FACT').AsInteger
      );
      Next;
    end;
    First;

    FSubjectDetailMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
    (FSubjectDetailMemoryData.FieldByName('CLOCK_CURRICULUM') as TFloatField).DisplayFormat := '0.00';
    FSubjectDetailMemoryData.AfterPost := OnAfterPostSubjectDetail;
  finally
    Free;
  end;
end;

procedure TNodeIndividualCalcSubject.OnAfterPostSubjectDetail(
  DataSet: TDataSet);
begin
  DM.CalcIndividual.ChangeSubjectFactStudentQty(
    FSubjectDetailMemoryData.FieldByName('CLASS_NUMBER').AsInteger,
    Self.ID,
    Self.IndividualCalc.ID,
    Self.IndividualCalc.Package.ID,
    FSubjectDetailMemoryData.FieldByName('QTY_FACT').AsInteger
  );
end;

procedure TNodeIndividualCalcSubject.Refresh(ReloadChilds: Boolean);
begin
  Owner.BeginUpdate;
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT ' +
      '   CIS.NAME_SUBJECT ' +
      ' FROM V_CALC_I_SUBJECT CIS ' +
      ' WHERE CIS.ID_CALC_INDIVIDUAL = :ID_CALC_INDIVIDUAL AND CIS.ID_CALC_PACK = :ID_CALC_PACK ' +
      ' ORDER BY CIS.SHOW_POSITION ';
    ParamByName('ID_CALC_PACK').Value := IndividualCalc.Package.ID;
    ParamByName('ID_CALC_INDIVIDUAL').Value := IndividualCalc.ID;
    ParamByName('ID').Value := ID;
    Open;
    Self.Text := FieldByName('NAME_SUBJECT').AsString;
  finally
    Free;
  end;
  LoadSubjectDetail;
  Owner.EndUpdate;
end;

procedure TNodeGroupCalcParent.Refresh(ReloadChilds: Boolean);
begin
  Owner.BeginUpdate;
  if ReloadChilds then
  begin
    Self.DeleteChildren;
    AddGroupCalcs;
  end;
  Owner.EndUpdate;
end;

function TNodeGroupCalcSubject.getGroupCalc: TNodeGroupCalc;
begin
  Result := Parent as TNodeGroupCalc;
end;

procedure TNodeGroupCalcSubject.LoadSubjectDetail;
begin
  FSubjectDetailMemoryData.EmptyTable;

  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibTransaction;
    SQL.Text :=
      ' SELECT CLASS_NUMBER, CLOCK_CURR, QTY_FACT ' +
      ' FROM CALC_GROUP_SUBJECT_CLASS_DETAIL ' +
      ' WHERE ' +
      '   ID_CALC_GROUP_SUBJECT = :ID_CALC_GROUP_SUBJECT AND ' +
      '   ID_CALC_GROUP = :ID_CALC_GROUP AND ' +
      '   ID_CALC_PACK = :ID_CALC_PACK ';
    ParamByName('ID_CALC_GROUP_SUBJECT').Value := Self.ID;
    ParamByName('ID_CALC_GROUP').Value := Self.GroupCalc.ID;
    ParamByName('ID_CALC_PACK').Value := Self.GroupCalc.Package.ID;
    Open;
    FetchAll;
    First;

    FSubjectDetailMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
    (FSubjectDetailMemoryData.FieldByName('CLOCK_CURR') as TFloatField).DisplayFormat := '0.00';
    FSubjectDetailMemoryData.AfterPost := OnAfterPostSubjectDetail;
  finally
    Free;
  end;
end;

procedure TNodeGroupCalcSubject.OnAfterPostSubjectDetail(DataSet: TDataSet);
begin
  DM.CalcGroup.ChangeSubjectFactStudentQty(
    FSubjectDetailMemoryData.FieldByName('CLASS_NUMBER').AsInteger,
    Self.ID,
    Self.GroupCalc.ID,
    Self.GroupCalc.Package.ID,
    FSubjectDetailMemoryData.FieldByName('QTY_FACT').AsInteger
  );
end;

procedure TNodeGroupCalcSubject.Refresh(ReloadChilds: Boolean);
begin
  Owner.BeginUpdate;
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text :=
      ' SELECT CGS.ID, CGS.NAME ' +
      ' FROM CALC_GROUP_SUBJECT CGS ' +
      ' WHERE CGS.ID_CALC_GROUP = :ID_CALC_GROUP AND CGS.ID_CALC_PACK = :ID_CALC_PACK AND CGS.ID = :ID ' +
      ' ORDER BY CGS.SHOW_POSITION ';
    ParamByName('ID_CALC_PACK').Value :=  GroupCalc.Package.ID;
    ParamByName('ID_CALC_GROUP').Value := GroupCalc.ID;
    ParamByName('ID').Value := ID;
    Open;
    Self.Text := FieldByName('NAME').AsString;
  finally
    Free;
  end;
  LoadSubjectDetail;
  Owner.EndUpdate;
end;

{ TCalcIndClassDetail }

function TCalcIndClassDetail.Add: TCalcIndClassDetailItem;
begin
  Result := inherited Add as TCalcIndClassDetailItem;
end;

function TCalcIndClassDetail.AddClassDetail(ClassNumber: Integer;
  Category: Boolean; QtyStudent: Integer): TCalcIndClassDetailItem;
begin
  Result := Add as TCalcIndClassDetailItem;
  Result.FClassNumber := ClassNumber;
  Result.FCategory := Category;
  Result.FQtyStudent := QtyStudent;
end;

constructor TCalcIndClassDetail.Create(AOwner: TNodeIndividualCalc);
begin
  inherited Create(TCalcIndClassDetailItem);
  FOwner := AOwner;
end;

function TCalcIndClassDetail.GetItem(
  Index: Integer): TCalcIndClassDetailItem;
begin
  Result := TCalcIndClassDetailItem(inherited Items[Index]);
end;

procedure TCalcIndClassDetail.SetItem(Index: Integer;
  Value: TCalcIndClassDetailItem);
begin
  inherited SetItem(Index, TCollectionItem(Value));
end;

{ TNodeRoot }

constructor TNodeRoot.Create(AOwner: TTreeNodes);
var
  i: Integer;
  tn: TTreeNode;
  tn_Root: TTreeNode;
begin
  inherited Create(AOwner);
  PageIndex := PAGE_FIRST;

  AOwner.BeginUpdate;
  AOwner.Clear;
  //добавляем себя
  AOwner.AddNode(
    Self,
    nil,
    'Пакеты расчётов',
    nil,
    naAddFirst
  );
  Self.PageIndex := PAGE_FIRST;
  AOwner.EndUpdate;
  FCalcPackMemoryData := TJvMemoryData.Create(nil);
  LoadPackages;  
end;

destructor TNodeRoot.Destroy;
begin
  FCalcPackMemoryData.Free;
  inherited Destroy;
end;

procedure TNodeRoot.LoadPackages;
var
  TreeNodes: TTreeNodes;
begin
  FCalcPackMemoryData.EmptyTable;

  TreeNodes := Owner;
  Owner.BeginUpdate;
  with TIBQuery.Create(nil) do
  try
    Transaction := DM.ibReadTransaction;
    SQL.Text := 'SELECT ID, NAME FROM CALC_PACK ORDER BY SHOW_POSITION';
    Open;
    while not Eof do
    begin
      TNodePackage.Create(TreeNodes, Self, FieldByName('ID').AsInteger, FieldByName('NAME').AsString);
      Next;
    end;
    First;
    FCalcPackMemoryData.LoadFromDataSet(Fields.DataSet, Fields.DataSet.RecordCount, lmCopy);
  finally
    Free;
  end;
  Owner.EndUpdate;
end;

procedure TNodeRoot.Refresh(ReloadChilds: Boolean);
begin
  if ReloadChilds then
  begin
    DeleteChildren;
    LoadPackages;
  end;
end;

end.
