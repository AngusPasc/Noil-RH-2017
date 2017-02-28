unit Unit_Barras;

interface

uses
  SysUtils, Classes;

  type
  TBarras = Class
    Private
      ListaBarras: TStringList;   // Objeto que ha de guardar la lista de las barras
      IntCuentaBarras: Integer;   // Indicador de número de barras creadas
      IntPosicionClick: Integer;  // 1 - Se toma la barra de lado izaquierdo, 2 del centro y 3 del lado derecho
      IntLastNumBarra: Integer;   // Número de barra clicada
      BolLastBarra: Boolean;      // ¿Se tecleó una barra?
      function ProcGetX(Index: Integer): Integer;
      function ProcGetY(Index: Integer): Integer;
      function ProcGetWidth(Index: Integer): Integer;
      function ProcGetHeight(Index: Integer): Integer;
      function ProcGetTipo(Index: Integer): String;
      function ProcGetNumero(Index: Integer): String;
      function ProcGetInicio(Index: Integer): TDateTime;
      function ProcGetTermino(Index: Integer): TDateTime;
      function ProcExisteBarra(X,Y,Cual: Integer): Integer;
      procedure SetPosicionClick(Value: Integer);
      function ProcFechaHora(X: Integer; Inicio,Termino,Periodo,Ancho: Real; sbPosition: Integer): TDateTime;
    Public
      constructor create;
      destructor Destroy;
      procedure CrearBarra(IntBarraX, IntBarraY, IntBarraWidth, IntBarraHeight: Integer; StrBarraNumeroActividad: String; StrBarraTipoA: String; DateBarraInicio, DateBarraTermino: TDateTime);
      procedure QuitaReferenciaBarra;
      procedure Limpiar;
      property CuentaBarras: Integer Read IntCuentaBarras;
      property X[Index: Integer]: Integer Read ProcGetX;
      property Y[Index: Integer]: Integer Read ProcGetY;
      property Width[Index: Integer]: Integer Read ProcGetWidth;
      property Height[Index: Integer]: Integer Read ProcGetHeight;
      property Tipo[Index: Integer]: String Read ProcGetTipo;
      property NumeroActividad[Index: Integer]: String Read ProcGetNumero;
      property Inicio[Index: Integer]: TDateTime Read ProcGetInicio;
      property Termino[Index: Integer]: TDateTime Read ProcGetTermino;
      property ExisteBarra[X,Y,Cual: Integer]: Integer Read ProcExisteBarra;
      property PosicionClick: Integer Read IntPosicionClick Write SetPosicionClick;
      property LastNumBarra: Integer Read IntLastNumBarra;
      property LastBarra: Boolean Read BolLastBarra;
      property FechaHora[X: Integer; Inicio,Termino,Periodo,Ancho: Real; sbPosition: Integer]: TDateTime Read ProcFechaHora;
  End;

implementation

Function Entry(Cadena: String; Indice: Integer): String;
var
  subcad: String;
  Continua: Boolean;
  cta, Buscar: Integer;
Begin
  cta := 0;
  subcad := '';
  Continua := True;
  Buscar := 0;
  while (cta < Length(Cadena)) And (Continua) do
  begin
    inc(cta);
    if Cadena[cta] = ':' then
    begin
      Inc(Buscar);
      Continua := Buscar <> Indice;
      if Continua then
        subcad := ''; // Preparar el inicio de una nueva cadena a buscar
    end
    else
    Begin
      subcad := subcad + cadena[cta];
    End;
  end;

  Entry := SubCad;
End;

function TBarras.ProcFechaHora(X: Integer; Inicio,Termino,Periodo,Ancho: Real; sbPosition: Integer): TDateTime;
var
  mFecha: TDateTime;
  iInicia: Integer;
begin
  mFecha := Inicio;
  iInicia := -1;
  while (mFecha <= Termino) and (iInicia <= X) do
  Begin
    iInicia := Trunc((((mFecha - Inicio) / Periodo) * (Periodo * Ancho)) - (sbPosition * Ancho));
    if iInicia <= X then mFecha := mFecha + 1;
  End;
  mFecha := mFecha - 1; // Ajustar también porque siempre sale un dia despues

  ProcFechaHora := mFecha;
end;

Procedure TBarras.SetPosicionClick(Value: Integer);
Begin
  IntPosicionClick := Value;
End;

procedure TBarras.QuitaReferenciaBarra;
Begin
  IntLastNumBarra := 0;
  BolLastBarra := False;
  IntPosicionClick := 0;
End;

function TBarras.ProcExisteBarra(X,Y,Cual: Integer): Integer;
var
  cta: Integer;
  LastBarra: Boolean;
begin
  // Identificar en que barra se ha hecho el click
  LastBarra := False;
  cta := 0;
  while (Not LastBarra) and (cta < IntCuentaBarras) do
  Begin
    LastBarra := (X >= ProcGetX(cta)) And (X <= ProcGetWidth(Cta)) And (Y >= ProcGetY(cta)) And (Y <= ProcGetHeight(cta)) And (ProcGetTipo(cta) = 'Actividad');
    Inc(cta);
  End;
  if LastBarra then
  Begin
    Dec(Cta);
    IntLastNumBarra := Cta;     // Indicador de la última barra seleccionada
    IntPosicionClick := 2;      // Por default al centro...
    if (X < ProcGetX(cta) + 4) then IntPosicionClick := 1;
    if (X > ProcGetWidth(cta) - 4) then IntPosicionClick := 3;
  End
  else
    cta := 0;
  BolLastBarra := LastBarra;
  ProcExisteBarra := Cta;
end;

function TBarras.ProcGetX(Index: Integer): Integer;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetX := StrToInt(Entry(Cadena,1));    // Localizar coordenada X
End;

function TBarras.ProcGetY(Index: Integer): Integer;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetY := StrToInt(Entry(Cadena,2));    // Localizar coordenada Y
End;

function TBarras.ProcGetWidth(Index: Integer): Integer;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetWidth := StrToInt(Entry(Cadena,3));    // Localizar el ancho de la barra
End;

function TBarras.ProcGetHeight(Index: Integer): Integer;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetHeight := StrToInt(Entry(Cadena,4));    // Localizar la altura de la barra
End;

function TBarras.ProcGetNumero(Index: Integer): String;
Var
  Cadena: String;
begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetNumero := Entry(Cadena,5);  // Localizar el numero de actividad
end;

function TBarras.ProcGetTipo(Index: Integer): String;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetTipo := Entry(Cadena,6);    // Localizar el tipo de la actividad
End;

function TBarras.ProcGetInicio(Index: Integer): TDateTime;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetInicio := StrToInt(Entry(Cadena,7));    // Localizar la fecha de inicio de la barra
End;

function TBarras.ProcGetTermino(Index: Integer): TDateTime;
Var
  Cadena: String;
Begin
  Cadena := ListaBarras[Index] + ':';
  ProcGetTermino := StrToInt(Entry(Cadena,8));    // Localizar la fecha de termino de la barra
End;

constructor TBarras.Create;
Begin
  ListaBarras := TStringList.Create;
  IntCuentaBarras   := 0;       // Indicador de número de barras creadas
  IntPosicionClick  := 0;       // Ninguna barra seleccionada
  IntLastNumBarra   := 0;       // Número de barra clicada
  BolLastBarra      := False;   // ¿Se tecleó una barra?
End;

destructor TBarras.Destroy;
Begin
  IntCuentaBarras := 0;
  Freeandnil(ListaBarras);
End;

procedure TBarras.CrearBarra(IntBarraX, IntBarraY, IntBarraWidth, IntBarraHeight: Integer; StrBarraNumeroActividad: String; StrBarraTipoA: String; DateBarraInicio, DateBarraTermino: TDateTime);
Begin
  // Agregar la información necesaria para la barra
  ListaBarras.add(IntToStr(IntBarraX) + ':' + IntToStr(IntBarraY) + ':' + IntToStr(IntBarraWidth) + ':' + IntToStr(IntBarraHeight) + ':' + StrBarraNumeroActividad + ':' + StrBarraTipoA + ':' + FloatToStr(DateBarraInicio) + ':' + FloatToStr(DateBarraTermino));
  Inc(IntCuentaBarras);
End;

procedure TBarras.Limpiar;
Var
  Cta: Integer;
begin
  // Limpiar todas las barras existentes
  Cta := 0;
  while Cta < IntCuentaBarras do
  Begin
    ListaBarras.Delete(0);
    Inc(Cta);
  End;
  IntCuentaBarras := 0;
  BolLastBarra := False;
end;

end.
