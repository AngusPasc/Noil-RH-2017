unit UnitTSemanticFormulizer;

interface

uses
  SysUtils,UnitTSintaxFormulizer;
  
type

TSemanticFormulizer=class
private
  sFormula:string;
  bError:boolean;
  sDescError:string;
  //metodos para propiedades
  Procedure setsFormula(sEntrada:string);
  //metodos de operacion
  Function esToken(sEntrada:string):boolean;//quitar
  Function esOperador(sEntrada:string):boolean;
  Function esCondicional(sEntrada:string):boolean;
  Function esNumero(sEntrada:string):boolean;
  Function valor(sEntrada:string):real;
  Function buscarValor(sEntrada:string):real;
  Function suma(oper1,oper2:real):real;
  Function resta(oper1,oper2:real):real;
  Function producto(oper1,oper2:real):real;
  Function division(oper1,oper2:real):real;
  Function calcular(rAcumulado:real;sToken,sOperador:string):real;
  Function parsearCondicional(sEntrada:string):real;
  Function parsearCadena(sCadena:string):real;
public
  //propiedades
  property error:boolean read bError;
  property descError:string read sDescError;
  property formula:string read sFormula write setsFormula;
  //metodos publicos
  constructor Create(sEntrada:string);
  Function generarResult:real;
  Function verificarSintaxis:boolean;
end;

implementation

constructor TSemanticFormulizer.Create(sEntrada:string);
BEGIN
  sFormula:=sEntrada;
  bError:=false;
  sDescError:='';
END;

Function TSemanticFormulizer.generarResult:real;
BEGIN
  result:=parsearCadena(sFormula);
END;

Procedure TSemanticFormulizer.setsFormula(sEntrada:string);
BEGIN
  //Aqui validar si la entrada es correcta
  sFormula:=sEntrada;
END;

Function TSemanticFormulizer.buscarValor(sEntrada:string):real;
const
  variables : array[0..9] of string =('a', 'b', 'c', 'd', 'e', 'f', 'ab', 'abc', 'ba', 'cde') ;
    valores : array[0..9] of   real =( 1,   2,   3,  -4,   5,  5.5, -1.32,  0,   -0.79,  2.6) ;
var
  ii,jj:integer;
BEGIN
  jj:=-1;
  ii:=0;
  while (ii<length(variables))and(jj<0) do begin
    if variables[ii]=sEntrada then
      jj:=ii
    else
      inc(ii);
  end;
  result:=0;
  if jj<0 then begin//la variable no existe
    sDescError:='La variable '+sEntrada+' no existe.';
    bError:=true;
    //break;
  end
  else
    result:=valores[jj];
END;

Function TSemanticFormulizer.valor(sEntrada:string):real;
BEGIN
  if esNumero(sEntrada) then
    result:=strtofloat(sEntrada)
  else
    result:=buscarValor(sEntrada);
END;

Function TSemanticFormulizer.verificarSintaxis:boolean;
var
  sintax:TSintaxFormulizer;
BEGIN
   result:=true;
   sintax:=TSintaxFormulizer.Create(sFormula);
   if not sintax.verificarSintaxis then begin
     result:=false;
     bError:=true;
     sDescError:=sintax.descError;
   end;
END;

Function TSemanticFormulizer.esToken(sEntrada:string):boolean;
BEGIN
  result:=true;
END;

Function TSemanticFormulizer.esOperador(sEntrada:string):boolean;
BEGIN
  result:=false;
  if (sEntrada='+')
  or (sEntrada='-')
  or (sEntrada='*')
  or (sEntrada='/')
  then
    result:=true
END;

Function TSemanticFormulizer.esCondicional(sEntrada:string):boolean;
BEGIN
  result:=false;
  if sEntrada='?' then
    result:=true;
END;

Function TSemanticFormulizer.esNumero(sEntrada:string):boolean;
const
  numeros : array[0..9] of string =('0', '1', '2', '3', '4', '5', '6', '7', '8', '9') ;
BEGIN
  result:=false;
  if (sEntrada[1]='0')
  or (sEntrada[1]='1')
  or (sEntrada[1]='2')
  or (sEntrada[1]='3')
  or (sEntrada[1]='4')
  or (sEntrada[1]='5')
  or (sEntrada[1]='6')
  or (sEntrada[1]='7')
  or (sEntrada[1]='8')
  or (sEntrada[1]='9') then
    result:=true;
END;

Function TSemanticFormulizer.suma(oper1,oper2:real):real;
BEGIN
  result:=oper1+oper2;
END;

Function TSemanticFormulizer.resta(oper1,oper2:real):real;
BEGIN
  result:=oper1-oper2
END;

Function TSemanticFormulizer.producto(oper1,oper2:real):real;
BEGIN
  result:=oper1*oper2;
END;

Function TSemanticFormulizer.division(oper1,oper2:real):real;
BEGIN
  result:=0;
  if oper2=0 then begin
    bError:=true;
    sDescError:='division entre cero no permitida';
  end else
    result:=oper1/oper2;
END;

FUNCTION TSemanticFormulizer.calcular(rAcumulado:real;sToken,sOperador:string):real;
var
  rOperando:real;
BEGIN
  result:=0;
  if sToken[1]='(' then begin
    sToken:=copy(sToken,2,length(sToken)-2);
    rOperando:=parsearCadena(sToken);
  end
  else if sToken[1]='?' then begin
    sToken:=copy(sToken,3,length(sToken)-3);
    rOperando:=parsearCondicional(sToken);
  end
  else begin
    rOperando:=valor(sToken);
  end;
  if sOperador='+' then
    result:=suma(rAcumulado,rOperando)
  else if sOperador='-' then
    result:=resta(rAcumulado,rOperando)
  else if sOperador='*' then
    result:=producto(rAcumulado,rOperando)
  else if sOperador='/' then
    result:=division(rAcumulado,rOperando)
END;

Function TSemanticFormulizer.parsearCondicional(sEntrada:string):real;

function esOperadorCond(sEntrada:char):boolean;  
begin
  result:=false;
  if (sEntrada='=')
  or (sEntrada='<')
  or (sEntrada='>') then
    result:=true;
end;

function resolverCond(operando1,operando2,operador:string):boolean;
var
  rOp1,rOp2:real;
begin
  result:=false;
  rOp1:=parsearCadena(operando1);
  rOp2:=parsearCadena(operando2);
  if operador='=' then begin
    if rOp1=rOp2 then
      result:=true;
  end
  else if operador='<' then begin
    if rOp1<rOp2 then
      result:=true;
  end
  else if operador='>' then begin
    if rOp1>rOp2 then
      result:=true;
  end
  else if operador='<=' then begin
    if rOp1<=rOp2 then
      result:=true;
  end
  else if operador='>=' then begin 
    if rOp1>=rOp2 then
      result:=true;
  end
  else begin //<>
    if rOp1<>rOp2 then
      result:=true;
  end;
end;

var
  operando1,operando2,respuesta1,respuesta2,operador:string;
  ii,jj,iParentesis:integer;
BEGIN
  result:=0;
  operando1:='';
  operando2:='';
  respuesta1:='';
  respuesta2:='';
  operador:='';
  ii:=1;
  iParentesis:=0;  
  //while ii<=length(sEntrada) do begin

    //operando1
    if sEntrada[ii]='(' then begin        //operando es una operacion con varios valores
       operando1:=operando1+sEntrada[ii];
       inc(iParentesis);
       jj:=ii+1;
       while iParentesis<>0 do begin
         operando1:=operando1+sEntrada[jj];
         if sEntrada[jj]='(' then
           inc(iParentesis)
         else if sEntrada[jj]=')' then
           dec(iParentesis);
         inc(jj);
       end;
       ii:=jj-1;
    end
    else begin   //operando es un valor
      while not esOperadorCond(sEntrada[ii]) do begin
        operando1:=operando1+sEntrada[ii];
        inc(ii);
      end;
    end;

    //operador
    while esOperadorCond(sEntrada[ii]) do begin
      operador:=operador+sEntrada[ii];
      inc(ii);      
    end;

    //operando2
    if sEntrada[ii]='(' then begin        //operando es una operacion con varios valores
       operando2:=operando2+sEntrada[ii];
       inc(iParentesis);
       jj:=ii+1;
       while iParentesis<>0 do begin
         operando2:=operando2+sEntrada[jj];
         if sEntrada[jj]='(' then
           inc(iParentesis)
         else if sEntrada[jj]=')' then
           dec(iParentesis);
         inc(jj);
       end;
       ii:=jj-1;
    end
    else begin   //operando es un valor
      while sEntrada[ii]<>',' do begin
        operando2:=operando2+sEntrada[ii];
        inc(ii);
      end;
    end;
    inc(ii);

    //respuesta1
    if sEntrada[ii]='(' then begin        //respuesta es una operacion con varios valores
       respuesta1:=respuesta1+sEntrada[ii];
       inc(iParentesis);
       jj:=ii+1;
       while iParentesis<>0 do begin
         respuesta1:=respuesta1+sEntrada[jj];
         if sEntrada[jj]='(' then
           inc(iParentesis)
         else if sEntrada[jj]=')' then
           dec(iParentesis);
         inc(jj);
       end;
       ii:=jj-1;
    end
    else begin   //respuesta es un valor
      while sEntrada[ii]<>',' do begin
        respuesta1:=respuesta1+sEntrada[ii];
        inc(ii);        
      end;
    end;
    inc(ii);

    //respuesta2
    if sEntrada[ii]='(' then begin        //respuesta es una operacion con varios valores
       respuesta2:=respuesta2+sEntrada[ii];
       inc(iParentesis);
       jj:=ii+1;
       while iParentesis<>0 do begin
         respuesta2:=respuesta2+sEntrada[jj];
         if sEntrada[jj]='(' then
           inc(iParentesis)
         else if sEntrada[jj]=')' then
           dec(iParentesis);
         inc(jj);
       end;
       ii:=jj-1;
    end
    else begin   //respuesta es un valor
      while ii<=length(sEntrada) do begin
        respuesta2:=respuesta2+sEntrada[ii];
        inc(ii);
      end;
    end;

    //resultado
    if resolverCond(operando1,operando2,operador) then
      result:=parsearCadena(respuesta1)
    else
      result:=parsearCadena(respuesta2);
    //inc(ii);
  //end;
END;

Function TSemanticFormulizer.parsearCadena(sCadena:string):real;
var
  ii,jj:integer;
  sToken:string;
  sOperador:string;
  rAcumulado:real;
  iParentesis:integer;
BEGIN
   sToken:='';
   sOperador:='+';
   ii:=1;
   iParentesis:=0;
   rAcumulado:=0;
if length(sCadena)>0 then begin
   while ii<=length(sCadena) do begin
     if bError then//si hay error, cerrar el ciclo
       break;
     if esOperador(sCadena[ii]) then begin
       rAcumulado:=calcular(rAcumulado,sToken,sOperador);
       sOperador:=sCadena[ii];
       sToken:='';
     end
     else if esCondicional(sCadena[ii]) then begin
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
     end
     else if sCadena[ii]='(' then begin
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
     end
     else begin//es un caracter del token
       sToken:=sToken+sCadena[ii];
     end;
     inc(ii);
   end;
   if bError then
     rAcumulado:=0
   else
     rAcumulado:=calcular(rAcumulado,sToken,sOperador);
end;
   result:=rAcumulado;
END;

end.
