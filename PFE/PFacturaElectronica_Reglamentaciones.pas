unit PFacturaElectronica_Reglamentaciones;

interface

type
  TFEReglamentacion = class
      class function ComoMoneda(dMonto: Currency; const aDecimalesDefault: Integer = 2): String;
      class function DeFechaHoraISO8601(const aFechaISO8601: String) : TDateTime;
      class function ComoFechaComun(Fecha: TDateTime): String;
      class function ComoCatalogo(Id: Integer; Digitos: Integer = 3): String; overload;
      class function ComoCatalogo(Clave: String; Digitos: Integer = 3): String; overload;
      class function ComoFechaHora(dtFecha: TDateTime) : String;
  end;

implementation

uses SysUtils, DateUtils {$IF Compilerversion >= 20} ,XSBuiltIns {$ELSE} , XSBuiltIns {$IFEND};

class function TFEReglamentacion.ComoFechaComun(Fecha: TDateTime): String;
begin
  Result := FormatDateTime('yyyy-mm-dd', Fecha);
end;

class function TFEReglamentacion.ComoCatalogo(Id: Integer; Digitos: Integer = 3) : String;
Var
  cVar: String;
begin
  cVar := IntToStr(Id);
  Result := StringOfChar('0', Digitos - Length(cVar)) + cVar;
end;

class function TFEReglamentacion.ComoCatalogo(Clave: String; Digitos: Integer = 3) : String;
begin
  Result := StringOfChar('0', Digitos - Length(Clave)) + Clave;
end;

class function TFEReglamentacion.DeFechaHoraISO8601(const aFechaISO8601: String) : TDateTime;
begin
  with TXSDateTime.Create() do
  try
    XSToNative(aFechaISO8601);
    Result := AsUTCDateTime;
  finally
    Free;
  end;
end;


class function TFEReglamentacion.ComoMoneda(dMonto: Currency; const aDecimalesDefault: Integer = 2): String;
begin
   Result:=CurrToStrF(dMonto, ffFixed, aDecimalesDefault);
end;

class function TFEReglamentacion.ComoFechaHora(dtFecha: TDateTime) : String;
begin
  Result := FormatDateTime('yyyy-mm-dd', dtFecha) + 'T' + FormatDateTime('hh:nn:ss', dtFecha);
end;

end.
