unit Datemap;

interface

uses
  SysUtils,DateUtils;

function YearOld(ADate,CurrentDate : TDateTime) : Integer; stdcall; overload;
function YearOld(ADate : TDateTime) : Integer; stdcall; overload;


implementation


function YearOld(ADate,CurrentDate : TDateTime) : Integer;
var
  aYear,aMonth,aDay : Word;
  TempDate : TDateTime;
begin

  aYear := YearOf(CurrentDate);
  aMonth := MonthOf(ADate);
  aDay := DayOf(ADate);

//se trata de convertir a una fecha válida 
 if TryEncodeDate(aYear,aMonth,aDay,TempDate) then
  begin

//si la fecha actual es <= a la fecha conformada entonces ya cumplió años 
    if CurrentDate <= TempDate then
    Result := YearOf(CurrentDate) - YearOf(ADate)
    else Result := YearOf(CurrentDate) - YearOf(ADate) -1;
  end
  else Result := 0; // 0 sino puede convertir una fecha válida

end;

function YearOld(ADate : TDateTime) : Integer;
begin
  Result := YearOld(ADate,Date);
end;

end.
