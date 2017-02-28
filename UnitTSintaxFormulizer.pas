unit UnitTSintaxFormulizer;

interface

uses
  SysUtils;
  
type

TSintaxFormulizer=class
private
  sFormula:string;
  bError:boolean;
  sDescError:string;
  Function evalToken(sEntrada:string):boolean;
  Function esOperador(sEntrada:string):boolean;
  Function esCondicional(sEntrada:string):boolean;
  Function esNumero(cEntrada:char):boolean;
  Function evalParentesis(sEntrada:string):boolean;
  Function evalCondicional(sEntrada:string):boolean;
  Function evalAgrupacion(sEntrada:string):boolean;
  Function evalCadena(sCadena:string):boolean;
  Function generarError(sEntrada:string):boolean;
  Function quitarEspacios(sEntrada:string):string;
public
  //propiedades
  property error:boolean read bError;
  property descError:string read sDescError;
  //metodos publicos
  constructor Create(sEntrada:string);
  Function verificarSintaxis:boolean;
end;

implementation

constructor TSintaxFormulizer.Create(sEntrada:string);
BEGIN
  sFormula:=quitarEspacios(sEntrada);
  if length(sEntrada)>0 then begin
    bError:=false;
    sDescError:='';
  end
  else
    generarError('La formula esta vacia');
END;

Function TSintaxFormulizer.verificarSintaxis:boolean;
BEGIN
  if evalParentesis(sFormula) then
    result:=evalCadena(sFormula)
  else
    result:=false;
END;

Function TSintaxFormulizer.generarError(sEntrada:string):boolean;
BEGIN
  result:=false;
  bError:=true;
  sDescError:=sEntrada;
END;

Function TSintaxFormulizer.quitarEspacios(sEntrada:string):string;
var
  ii:integer;
BEGIN
  result:='';
  for ii:=1 to length(sEntrada) do begin
    if sEntrada[ii]<>' ' then
      result:=result+sEntrada[ii];
  end;
END;

Function TSintaxFormulizer.evalToken(sEntrada:string):boolean;
const
  noPermitidos:string='?,!=<>''|&;)(';
var
  ii:integer;
  numerico,numaux:boolean;
BEGIN
  result:=true;
  numerico:=false;
  if esNumero(sEntrada[1]) then
    numerico:=true;
  numaux:=numerico;
  for ii:=1 to length(sEntrada) do begin
    if pos(sEntrada[ii],noPermitidos)>0 then begin
      generarError('Caracter " '+sEntrada[ii]+' " no permitido en identificador');
      break;
    end;
    if esNumero(sEntrada[ii]) then
      numerico:=true
    else
      numerico:=false;  
    if numaux<>numerico then begin
      generarError('No permitidos numeros en identificadores de tipo variables, caracter: " '+sEntrada[ii]+' "');
      break;
    end;
  end;
  if not bError then begin
    if pos('select',sEntrada)>0 then generarError('cadena "select" no permitida en identificadores')
    else if pos('Select',sEntrada)>0 then generarError('cadena "select" no permitida en identificadores')
    else if pos('SELECT',sEntrada)>0 then generarError('cadena "select" no permitida en identificadores')
    else if pos('insert',sEntrada)>0 then generarError('cadena "insert" no permitida en identificadores')
    else if pos('Insert',sEntrada)>0 then generarError('cadena "insert" no permitida en identificadores')
    else if pos('INSERT',sEntrada)>0 then generarError('cadena "insert" no permitida en identificadores')
    else if pos('update',sEntrada)>0 then generarError('cadena "update" no permitida en identificadores')
    else if pos('Update',sEntrada)>0 then generarError('cadena "update" no permitida en identificadores')
    else if pos('UPDATE',sEntrada)>0 then generarError('cadena "update" no permitida en identificadores')
    else if pos('delete',sEntrada)>0 then generarError('cadena "delete" no permitida en identificadores')
    else if pos('Delete',sEntrada)>0 then generarError('cadena "delete" no permitida en identificadores')
    else if pos('DELETE',sEntrada)>0 then generarError('cadena "delete" no permitida en identificadores')
    else if pos('count',sEntrada)>0 then generarError('cadena "count" no permitida en identificadores')
    else if pos('Count',sEntrada)>0 then generarError('cadena "count" no permitida en identificadores')
    else if pos('COUNT',sEntrada)>0 then generarError('cadena "count" no permitida en identificadores')
    else if pos('from',sEntrada)>0 then generarError('cadena "from" no permitida en identificadores')
    else if pos('From',sEntrada)>0 then generarError('cadena "from" no permitida en identificadores')
    else if pos('FROM',sEntrada)>0 then generarError('cadena "from" no permitida en identificadores')
    else if pos('where',sEntrada)>0 then generarError('cadena "where" no permitida en identificadores')
    else if pos('Where',sEntrada)>0 then generarError('cadena "where" no permitida en identificadores')
    else if pos('WHERE',sEntrada)>0 then generarError('cadena "where" no permitida en identificadores')
    else if pos('join',sEntrada)>0 then generarError('cadena "join" no permitida en identificadores')
    else if pos('Join',sEntrada)>0 then generarError('cadena "join" no permitida en identificadores')
    else if pos('JOIN',sEntrada)>0 then generarError('cadena "join" no permitida en identificadores')
    else if pos('union',sEntrada)>0 then generarError('cadena "union" no permitida en identificadores')
    else if pos('Union',sEntrada)>0 then generarError('cadena "union" no permitida en identificadores')
    else if pos('UNION',sEntrada)>0 then generarError('cadena "union" no permitida en identificadores');
  end;
END;

Function TSintaxFormulizer.esOperador(sEntrada:string):boolean;
BEGIN
  result:=false;
  if (sEntrada='+')
  or (sEntrada='-')
  or (sEntrada='*')
  or (sEntrada='/')
  then
    result:=true
END;

Function TSintaxFormulizer.esCondicional(sEntrada:string):boolean;
BEGIN
  result:=false;
  if sEntrada='?' then
    result:=true;
END;

Function TSintaxFormulizer.esNumero(cEntrada:char):boolean;
BEGIN
  result:=false;
  if (cEntrada='.')
  or (cEntrada='0')
  or (cEntrada='1')
  or (cEntrada='2')
  or (cEntrada='3')
  or (cEntrada='4')
  or (cEntrada='5')
  or (cEntrada='6')
  or (cEntrada='7')
  or (cEntrada='8')
  or (cEntrada='9') then
    result:=true;
END;

Function TSintaxFormulizer.evalParentesis(sEntrada:string):boolean;
var
  ii,iParentesis:integer;
BEGIN
  result:=false;
  iParentesis:=0;
  ii:=0;
  while (ii<=length(sEntrada))and(iParentesis>=0) do begin
    if sEntrada[ii]='(' then
      inc(iParentesis)
    else if sEntrada[ii]=')' then
      dec(iParentesis);
    inc(ii);
  end;
  if iParentesis=0 then
    result:=true
  else
    generarError('Numeros diferentes de parentesis abiertos y cerrados');
END;

Function TSintaxFormulizer.evalCondicional(sEntrada:string):boolean;

function esOperadorCond(sEntrada:char):boolean;
begin
  result:=false;
  if (sEntrada='=')
  or (sEntrada='<')
  or (sEntrada='>') then
    result:=true;
end;

function verifOperador(sEntrada:string):boolean;
begin
  result:=true;
  if esOperadorCond(sEntrada[2]) then begin//operador de dos caracteres
    if sEntrada[1]='<' then begin
      if sEntrada[2]='<' then
        result:=false;
    end
    else if sEntrada[1]='>' then begin
      if sEntrada[2]<>'=' then
        result:=false;
    end
    else   //sEntrada[1]='=' ningun operador de 2 caracteres comienza con '='
      result:=false;
  end;
end;

var
  ii:integer;
  sToken:string;
BEGIN
  result:=true;
  sToken:='';
  ii:=1;
  if sEntrada[length(sEntrada)]<>')' then begin
    generarError('Condicional debe cerrarse con parentesis, cadena: " '+sEntrada+' "');
  end
  else begin
    sEntrada:=copy(sEntrada,3,length(sEntrada)-3);
    if length(sEntrada)<1 then
      generarError('Condicional incompleta, cadena: " '+sEntrada+' "')
    else
    if (esOperadorCond(sEntrada[1]))
    or(esOperador(sEntrada[1]))
    then begin
      generarError('Primer elemento de una condicional debe ser un identificador, caracter: " '+sEntrada[ii]+' "');
    end
    else begin

      while (ii<=length(sEntrada))and(not esOperadorCond(sEntrada[ii])) do begin
        sToken:=sToken+sEntrada[ii];
        inc(ii);
      end;//ya tenemos el primer operando
      if ii>=length(sEntrada) then begin
        generarError('Condicional incompleta, cadena: " '+sEntrada+' "');
      end
      else begin
        if evalCadena(sToken) then begin//el token es valido?
          if not verifOperador(sEntrada[ii]+sEntrada[ii+1]) then begin
            generarError('Operador de condicional invalido, cadena: " '+sEntrada[ii]+sEntrada[ii+1]+' "');
          end
          else begin//operador correcto, buscar segundo operando
            inc(ii);
            if esOperadorCond(sEntrada[ii]) then//operador de dos caracteres
              inc(ii);
            sToken:='';
            while (ii<=length(sEntrada))and(sEntrada[ii]<>',') do begin
              sToken:=sToken+sEntrada[ii];
              inc(ii);
            end;//ya tenemos el segundo operando
            if evalCadena(sToken) then begin//el token es valido?
              if ii>=length(sEntrada) then begin
                generarError('Condicional incompleta, cadena: " '+sEntrada+' "');
              end
              else begin//buscar primer resultado
                inc(ii);
                sToken:='';
                while (ii<=length(sEntrada))and(sEntrada[ii]<>',') do begin
                  sToken:=sToken+sEntrada[ii];
                  inc(ii);
                end;//ya tenemos el primer resultado
                if evalCadena(sToken) then begin//el token es valido?
                  if ii>=length(sEntrada) then begin
                    generarError('Condicional incompleta, cadena: " '+sEntrada+' "');
                  end
                  else begin//buscar el segundo resultado
                    inc(ii);
                    sToken:='';
                     while ii<=length(sEntrada) do begin
                       sToken:=sToken+sEntrada[ii];
                       inc(ii);
                     end;//ya tenemos el segundo resultado
                     evalCadena(sToken);
                  end;
                end;
              end;
            end;
          end;
        end
      end;

    end;
  end;
  if bError then
    result:=false;
END;

Function TSintaxFormulizer.evalAgrupacion(sEntrada:string):boolean;
BEGIN
  sEntrada:=copy(sEntrada,2,length(sEntrada)-2);
  result:=evalCadena(sEntrada);
END;

Function TSintaxFormulizer.evalCadena(sCadena:string):boolean;
var
  ii,jj:integer;
  sToken:string;
  iParentesis:integer;
BEGIN
  result:=true;
if length(sCadena)>0 then begin

  sToken:='';
  ii:=1;
  iParentesis:=0;
  if esOperador(sCadena[1]) then
    generarError('La formula no puede empezar con un operador');
  if esOperador(sCadena[length(sCadena)]) then
    generarError('La formula no puede terminar con un operador');

  while ii<=length(sCadena) do begin
    if bError then//si hay error, cerrar el ciclo
      break;
    if esOperador(sCadena[ii]) then begin
      if sToken='' then begin
        generarError('No permitido tener dos operadores juntos, caracter: " '+sCadena[ii]+' "');
      end
      else begin
        if (sToken[1]<>'(')and(sToken[1]<>'?') then        
          evalToken(sToken);
        sToken:='';
      end;
    end
    else if esCondicional(sCadena[ii]) then begin
      if sToken='' then begin
        if (ii<length(sCadena))and(sCadena[ii+1]='(') then begin
          sToken:=sToken+sCadena[ii]+sCadena[ii+1];
          inc(iParentesis);
          jj:=ii+2;
          while iParentesis<>0 do begin
            sToken:=sToken+sCadena[jj];
            if sCadena[jj]='(' then
              inc(iParentesis)
            else if sCadena[jj]=')' then
              dec(iParentesis);
            inc(jj);
          end;
          ii:=jj-1;
          evalCondicional(sToken);
        end
        else begin
          generarError('Despues de "?" debe ir un "(", caracter: " '+sCadena[ii+1]+' "');
        end;
      end
      else begin
        generarError('No permitido tener dos indentificadores juntos, caracter: " '+sCadena[ii]+' "');
      end;
    end
    else if sCadena[ii]='(' then begin
      if sToken='' then begin
        sToken:=sToken+sCadena[ii];
        inc(iParentesis);
        jj:=ii+1;
        while iParentesis<>0 do begin
          sToken:=sToken+sCadena[jj];
          if sCadena[jj]='(' then
            inc(iParentesis)
          else if sCadena[jj]=')' then
            dec(iParentesis);
          inc(jj);
        end;
        ii:=jj-1;
        evalAgrupacion(sToken);
      end
      else begin
        generarError('No permitido tener dos indentificadores juntos, caracter: " '+sCadena[ii]+' "');
      end;
    end
    else begin//es un caracter del token
      if (length(sToken)>0)and(sToken[length(sToken)]=')') then
        generarError('No permitido tener dos indentificadores juntos, caracter: " '+sCadena[ii]+' "')
      else  
        sToken:=sToken+sCadena[ii];
    end;
    inc(ii);
  end;
  if not bError then
    if (sToken[1]<>'(')and(sToken[1]<>'?') then
      evalToken(sToken);
end;
if bError then
  result:=false;
END;

end.
