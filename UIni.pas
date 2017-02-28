unit UIni;

interface

Uses
  Global, SysUtils, StrUtils;

function lCheckReporte(): Boolean;

implementation

function lCheckReporte(): Boolean;
var
  MiArchivo: string;
  FileText: TextFile;
  iPos: Byte;
  wCadena: string;
begin
  MiArchivo := global_ruta + 'Inteligent.ini';
  AssignFile(FileText, MiArchivo);
  Reset(FileText);
  Result := True;
  while not Eof(FileText) do
  begin
    ReadLn(FileText, wCadena);
    iPos := Pos('=', wCadena);
    if UpperCase(MidStr(wCadena, 1, iPos - 1)) = 'DETALLAR REPORTE' then
      if UpperCase(MidStr(wCadena, iPos + 1, Length(wCadena))) = 'SI' then
        Result := True
      else
        Result := False;
  end;
  CloseFile(FileText);
end;

end.
