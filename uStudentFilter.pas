unit uStudentFilter;

interface

uses Classes, Variants;

type
  TStudentFilter = class(TComponent)
  private
    FClassEnd: Variant;
    FAgeBegin: Variant;
    FSubjectID2: Variant;
    FClassBegin: Variant;
    FTeacherID1: Variant;
    FSubjectState: Variant;
    FSubjectID1: Variant;
    FTeacherID2: Variant;
    FPayPercent: Variant;
    FCategory: Variant;
    FPeriod: Variant;
    FFilialID: Variant;
    FAgeEnd: Variant;
    FStatus: Variant;
    FCuratorID: Variant;
    FFinancingID: Variant;
    FDateAcademyBegin: Variant;
    FDateEnterEnd: Variant;
    FDateReleaseEnd: Variant;
    FDateReleaseBegin: Variant;
    FDateAcademyEnd: Variant;
    FDateEnterBegin: Variant;
    FSpecializations: TStrings;
  published
    property FilialID: Variant read FFilialID write FFilialID;
    property Specializations: TStrings read FSpecializations write FSpecializations;
    property ClassBegin: Variant read FClassBegin write FClassBegin;
    property ClassEnd: Variant read FClassEnd write FClassEnd;
    property CuratorID: Variant read FCuratorID write FCuratorID;
    property Category: Variant read FCategory write FCategory;
    property Period: Variant read FPeriod write FPeriod;
    property Status: Variant read FStatus write FStatus;
    property PayPercent: Variant read FPayPercent write FPayPercent;
    property AgeBegin: Variant read FAgeBegin write FAgeBegin;
    property AgeEnd: Variant read FAgeEnd write FAgeEnd;
    property DateEnterBegin: Variant read FDateEnterBegin write FDateEnterBegin;
    property DateEnterEnd: Variant read FDateEnterEnd write FDateEnterEnd;
    property DateReleaseBegin: Variant read FDateReleaseBegin write FDateReleaseBegin;
    property DateReleaseEnd: Variant read FDateReleaseEnd write FDateReleaseEnd;
    property DateAcademyBegin: Variant read FDateAcademyBegin write FDateAcademyBegin;
    property DateAcademyEnd: Variant read FDateAcademyEnd write FDateAcademyEnd;
    property SubjectID1: Variant read FSubjectID1 write FSubjectID1;
    property TeacherID1: Variant read FTeacherID1 write FTeacherID1;
    property SubjectID2: Variant read FSubjectID2 write FSubjectID2;
    property TeacherID2: Variant read FTeacherID2 write FTeacherID2;
    property SubjectState: Variant read FSubjectState write FSubjectState;
    property FinancingID: Variant read FFinancingID write FFinancingID;
  public
    constructor Create; overload;
  end;

implementation

{ StudentFilter }

constructor TStudentFilter.Create;
begin
  inherited Create(nil);

  Specializations := nil;
  FClassEnd := Null;
  FAgeBegin := Null;
  FSubjectID2 := Null;
  FClassBegin := Null;
  FTeacherID1 := Null;
  FSubjectState := Null;
  FSubjectID1 := Null;
  FTeacherID2 := Null;
  FPayPercent := Null;
  FCategory := Null;
  FPeriod := Null;
  FFilialID := Null;
  FAgeEnd := Null;
  FStatus := Null;
  FCuratorID := Null;
  FFinancingID := Null;
  FDateAcademyBegin := Null;
  FDateEnterEnd := Null;
  FDateReleaseEnd := Null;
  FDateReleaseBegin := Null;
  FDateAcademyEnd := Null;
  FDateEnterBegin := Null;
end;

end.
