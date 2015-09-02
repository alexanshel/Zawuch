unit Uutils;

uses
  JvExMask, JvToolEdit, JvCombobox;

interface
  function dFormat(V: Double): string;
  function nl(v: Integer): Variant;

  procedure FillCCBFromDB(AConnection:  ACCB: TJvCheckedComboBox; ASQL: string);
  begin

  end;


implementation

uses SysUtils, Variants;

  //formating 0 = ''
  function dFormat(V: Double): string;
  begin
    if V = 0 then Result := ''
    else Result := Format('%2.2f', [v]);
  end;

  function nl(v: Integer): Variant;
  begin
    if v = -1 then Result := Null
    else Result := v
  end;
end.
