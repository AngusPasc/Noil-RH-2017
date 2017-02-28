unit UnitTCifrador;

interface

uses
  SysUtils, StrUtils;

type
  TCifrador = class
    clave : array[0..9] of byte;//La clave es una secuencia de 10 digitos
    mensaje: string;//El mensaje es el texto sin cifrar
    cifra: string;//El resultado de cifrar el texto plano
    KeyPointer:byte;//apunta a uno de los digitos de la clave para cifrar un caracter del texto plano

    constructor crear(m:string);

    function getClave: string;
    function getMensaje: string;
    function getCifra: string;

    function letraAnum(c:char):byte;
    function numAletra(b:byte):char;
    //**********Version 5**********
    function nv5Anum(c:char):byte;
    function numAnv5(b:byte):char;
    //**********Version 5**********
    function parAnum(numero,letra:char):integer;
    function cifrado(x,a:integer):integer;
    function descifrado(y,a:integer):integer;

    procedure incrementarPointer;
    procedure generarClave;
    //**********Version 5**********
    procedure generarClaveBR1;
    //**********Version 5**********
    function insertarClave(s:string):boolean;
    procedure cifrar;
    function descifrar:string;
  end;

implementation

constructor TCifrador.crear(m:string);//Se recibe el mensaje como entrada
begin
  mensaje:=m;
  cifra:='';
  KeyPointer:=0;
  randomize;
end;

function TCifrador.getClave: string;//Devuelve la clave
var
  i:integer;
begin
  result:='';
  for i:=0 to 9 do
    result:=result+inttostr(clave[i]);
end;

function TCifrador.getMensaje: string;//Devuelve el mensaje sin cifrar
begin
  result:=mensaje;
end;

function TCifrador.getCifra: string;//Devuelve el mensaje cifrado
begin
  result:=cifra;
end;

function TCifrador.letraAnum(c:char):byte;//da el equivalente numerico de una letra
begin
  result:=0;//**********Version 5**********modificacion
  case c of
    'a':result:=1;//**********Version 5**********
    'b':result:=2;
    'c':result:=3;
    'd':result:=4;
    'e':result:=5;
    'f':result:=6;
    'g':result:=7;
    'h':result:=8;
    'i':result:=9;
    'j':result:=10;
    'k':result:=11;
    'l':result:=12;
    'm':result:=13;
    'n':result:=14;
    'o':result:=15;
    'p':result:=16;
    'q':result:=17;
    'r':result:=18;
    's':result:=19;
    't':result:=20;
    'u':result:=21;
    'v':result:=22;
    'w':result:=23;
    'x':result:=24;
    'y':result:=25;
    'z':result:=26;
    ' ':result:=27;
  end;
end;

function TCifrador.numAletra(b:byte):char;//da la letra equivalente a un numero
begin
  result:='?';//**********Version 5**********modificacion
  case b of
    1:result:='a';//**********Version 5**********
    2:result:='b';
    3:result:='c';
    4:result:='d';
    5:result:='e';
    6:result:='f';
    7:result:='g';
    8:result:='h';
    9:result:='i';
    10:result:='j';
    11:result:='k';
    12:result:='l';
    13:result:='m';
    14:result:='n';
    15:result:='o';
    16:result:='p';
    17:result:='q';
    18:result:='r';
    19:result:='s';
    20:result:='t';
    21:result:='u';
    22:result:='v';
    23:result:='w';
    24:result:='x';
    25:result:='y';
    26:result:='z';
    27:result:=' ';
  end;
end;

//**********Version 5**********
function TCifrador.nv5Anum(c:char):byte;
begin
  result := 12;
  case c of
    '0':result:=0;
    '1':result:=1;
    '2':result:=2;
    '3':result:=3;
    '4':result:=4;
    '5':result:=5;
    '6':result:=6;
    '7':result:=7;
    '8':result:=8;
    '9':result:=9;
    '%':result:=10;
    '$':result:=11;
  end;
end;

function TCifrador.numAnv5(b:byte):char;
begin
  result := '#';
  case b of
    0:result:='0';
    1:result:='1';
    2:result:='2';
    3:result:='3';
    4:result:='4';
    5:result:='5';
    6:result:='6';
    7:result:='7';
    8:result:='8';
    9:result:='9';
    10:result:='%';
    11:result:='$';
  end;
end;
//**********Version 5**********


function TCifrador.parAnum(numero,letra:char):integer;//convierte un par en su equivalente numerico
begin
  //el numero indica la cantidad de saltos sobre los 26 caracteres
  //y la letra la cantidad que se le debe sumar a esa cantidad de saltos
  //Esta funcion devuelve un numero listo para descifrar con la funcion de descifrado
  result:=(nv5Anum(numero)*26)+letraAnum(letra);//**********Version 5**********modificado
end;

function TCifrador.cifrado(x,a:integer):integer;
begin
  a:=a+2;//**********Version 5**********
  result:=(x+2)*a-x;//x es el numero a cifrar, a es uno de los 10 digitosde la clave
end;

function TCifrador.descifrado(y,a:integer):integer;
begin
  a:=a+2;//**********Version 5**********
  result:=(y-(2*a))div(a-1);//y es el numero a descifrar, a es uno de los 10 digitosde la clave
end;

procedure TCifrador.incrementarPointer;//Incrementa el puntero de la clave
begin
  if KeyPointer>8 then
    KeyPointer:=0
  else
    inc(KeyPointer);
end;

procedure TCifrador.generarClave;
var
  i:byte;
begin
  //Genera una clave aleatoria de 10 digitos en el rango de 0 a 9
  for i:=0 to 9 do
    clave[i]:=random(10);//**********Version 5**********modificado
end;

//**********Version 5**********
//Este algoritmo genera una clave de 10 digitos a partir del año, el mes, el dia,
//el dia de la semana codificado a numero y la hora (sin minutos)
procedure TCifrador.generarClaveBR1;
var
  fecha:TDateTime;
  myYear, myMonth, myDay, myDayOfWeek : Word;
  rHora:real;
  iHora:integer;
  sAnho,sMes,sDia,sDiaSemana,sHora:string;
begin
  //Obtener la fecha y la hora actual
  fecha:=Now;
  rHora:=Time;
  //decodificar la fecha en partes
  myDayOfWeek:=DayOfWeek(fecha);
  DecodeDate(fecha, myYear, myMonth, myDay);
  //obtener la hora
  rHora:=rHora*1440;//cantidad de minutos que lleva el dia
  iHora:=Round(rHora);//cantidad de minutos redondeada
  iHora:=iHora div 60;//la hora que se usa para la clave
  //Convertir todo a formato string de 2 digitos
  sAnho:=copy(inttostr(myYear),3,2);
  sMes:=RightStr('0'+inttostr(myMonth),2);
  sDia:=RightStr('0'+inttostr(myDay),2);
  sDiaSemana:=RightStr('0'+inttostr(myDayOfWeek),2);
  sHora:=RightStr('0'+inttostr(iHora),2);
  //se asigna a la clave del objeto la composicion de las partes calculadas aqui
  clave[0]:=strtoint(sAnho[1]);
  clave[1]:=strtoint(sAnho[2]);
  clave[2]:=strtoint(sMes[1]);
  clave[3]:=strtoint(sMes[2]);
  clave[4]:=strtoint(sDia[1]);
  clave[5]:=strtoint(sDia[2]);
  clave[6]:=strtoint(sDiaSemana[1]);
  clave[7]:=strtoint(sDiaSemana[2]);
  clave[8]:=strtoint(sHora[1]);
  clave[9]:=strtoint(sHora[2]);
end;
//**********Version 5**********

function TCifrador.insertarClave(s:string):boolean;
var
  i:byte;
  claveAux : array[0..9] of char;
begin
  //Inserta una clave de 10 digitos en el rango de 0 a 9
  result:=true;
  if length(s)<>10 then
    result:=false
  else begin
    for i:=0 to 9 do begin
      if ( (s[i]<>'1')and(s[i]<>'2')and(s[i]<>'3')and(s[i]<>'4')and(s[i]<>'5')
        and(s[i]<>'6')and(s[i]<>'7')and(s[i]<>'8')and(s[i]<>'9')and(s[i]<>'0')  ) then
        result:=false;
      claveAux[i]:=s[i];
    end;
  end;
  if result then
    for i:=0 to 9 do
      clave[i]:=strtoint(claveAux[i]);
end;

procedure TCifrador.cifrar;
var
  i,valor:integer;//es un numero cifrado el cual se convertira en el par cifrado
  par:string;//es un par cifrado que compone el mensaje cifrado(compuesto por un digito y una letra)
begin
  for i:=1 to length(mensaje) do begin
    valor:=cifrado(letraAnum(mensaje[i]), clave[KeyPointer]);
    incrementarPointer;
    par:=numAnv5(valor div 26);//**********Version 5**********modificado
    par:=par+numAletra(valor mod 26);
    cifra:=cifra+par;
  end;
end;

function TCifrador.descifrar:string;
var
  i:integer;
  letra,numero:char;//los componentes de un par cifrado
begin
  result:='';
  KeyPointer:=0;
  i:=0;
  while i < length(cifra) do begin
    inc(i);
    numero:=cifra[i];
    inc(i);
    letra:=cifra[i];
    result:=result+numAletra(descifrado(parAnum(numero,letra),clave[KeyPointer]));
    incrementarPointer;
  end;
end;

end.
