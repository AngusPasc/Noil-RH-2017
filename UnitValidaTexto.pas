unit UnitValidaTexto;

interface

uses
  Classes, SysUtils;

var
  errorValidaTexto: string;

function validaTexto(nombres, cadenas: TStringList; nombreID, valorID: string):boolean;

implementation

function caracteresValidos(c:char):boolean;
begin
  result := false;
  case c of
    'a':result:=true;'b':result:=true;'c':result:=true;'d':result:=true;'e':result:=true;
    'f':result:=true;'g':result:=true;'h':result:=true;'i':result:=true;'j':result:=true;
    'k':result:=true;'l':result:=true;'m':result:=true;'n':result:=true;'o':result:=true;
    'p':result:=true;'q':result:=true;'r':result:=true;'s':result:=true;'t':result:=true;
    'u':result:=true;'v':result:=true;'w':result:=true;'x':result:=true;'y':result:=true;
    'z':result:=true;
    'A':result:=true;'B':result:=true;'C':result:=true;'D':result:=true;'E':result:=true;
    'F':result:=true;'G':result:=true;'H':result:=true;'I':result:=true;'J':result:=true;
    'K':result:=true;'L':result:=true;'M':result:=true;'N':result:=true;'O':result:=true;
    'P':result:=true;'Q':result:=true;'R':result:=true;'S':result:=true;'T':result:=true;
    'U':result:=true;'V':result:=true;'W':result:=true;'X':result:=true;'Y':result:=true;
    'Z':result:=true;
    '0':result:=true;'1':result:=true;'2':result:=true;'3':result:=true;'4':result:=true;
    '5':result:=true;'6':result:=true;'7':result:=true;'8':result:=true;'9':result:=true;
  end;
end;

function validaTexto(nombres, cadenas: TStringList; nombreID, valorID: string):boolean;
var
  ii: integer;
  sCampos: string;
begin
  result := true;
  errorValidaTexto := '';
  sCampos := '';
  //revisar si el ID viene vacio
  if (trim(valorID) = '') and (nombreID <> '') then//el ID esta vacio y es necesario
  begin
    sCampos := sCampos + ', ' + nombreID;
  end
  else begin
    //el ID no esta vacio, validar su primer caracter
    if (nombreID <> '') and (not caracteresValidos(valorID[1])) then
    begin
      result := false;
      errorValidaTexto := 'El valor ' + valorID + ' no está permitido para el campo ' + nombreID;
    end;
  end;
  if result then
  begin
    //el primer caracter del ID no es incorrecto, continuar validando los demas campos
    if (nombres <> nil) and (cadenas <> nil)then begin
      //recorrer la lista
      for ii := 0 to nombres.Count - 1 do begin
        if trim(cadenas[ii]) = '' then
        begin
          //agregar el campo a la lista de vacios
          sCampos := sCampos + ', ' + nombres[ii];
        end;
      end;
    end;
    if sCampos <> '' then //hay algun campo vacio
    begin
      result := false;
      errorValidaTexto := 'Existen datos vacios: ' + System.Copy(sCampos,3,Length(sCampos));//se quitan los 2 primeros caracteres
    end;
  end;
end;

end.
