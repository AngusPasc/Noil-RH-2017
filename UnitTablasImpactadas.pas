unit UnitTablasImpactadas;

interface

uses
  SysUtils, ZDataset, ZConnection, Classes, frm_connection;

type
  ArrayDependientes = array[0..29] of String;
  
const
  tablasMaestras: array[ 0..19 ] of String = ('equipos','equipos1','basicos','embarcaciones','estimacionperiodo',
  'fases','herramientas','insumos','insumos1','isometricos','isometricos1','personal','ordenesdetrabajo','turnos','tiposdemovimiento',
  'ordendecambio','ordendecambio1','contrato_trinomio','direcciones','condiciones') ;

  relEquipos: ArrayDependientes = ('bitacoradeequipos','distribuciondeequipos','equipos_contrato','equiposxpersonal',
  'estimacionxequipo','recursosequipo','recursosequiposnuevos','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relEquipos1: ArrayDependientes = ('ordenesdetrabajo','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relBasicos: ArrayDependientes = ('recursosbasicos','recursosbasicosnuevos','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relEmbarcaciones: ArrayDependientes = ('jornadasdiarias','movimientosdepersonal','recursos','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relEstimacionPeriodo: ArrayDependientes = ('actividadesxestimacion','estimaciones','estimacionxpartidaprov','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relFases: ArrayDependientes = ('insumos','movimientosdeembarcacion','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relHerramientas: ArrayDependientes = ('recursosherramientas','recursosherramientasnuevos','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relInsumos: ArrayDependientes = ('bitacoradesalida','recursosanexo','recursosanexosnuevos','anexo_prequisicion','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relInsumos1: ArrayDependientes = ('distribuciondematerial','bitacorademateriales','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relIsometricos: ArrayDependientes = ('bitacoradeactividades','estimacionxisometrico','estimacionxpartidaprov','isometricos_partidas','presupuestosxpartida','puntosdeinspeccion','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relIsometricos1: ArrayDependientes = ('estimacionxpartida','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relPersonal: ArrayDependientes = ('bitacoradepersonal','bitacoradetiemposextras','distribuciondepersonal','estimacionxpersonal','personal_contrato','recursospersonal','recursospersonalnuevos','estimapersonal','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relOrdenesDeTrabajo: ArrayDependientes = ('actividadesxorden','avancesglobales','reportediario','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relTurnos: ArrayDependientes = ('comentariosxanexo','ganttavances','movimientosdepersonal','reportediario','bitacoragerencial','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relTiposDeMovimiento: ArrayDependientes = ('bitacoradeactividades','jornadasdiarias','movimientos_contrato','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relOrdenDeCambio: ArrayDependientes = ('ordendecambio_p','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relOrdenDeCambio1: ArrayDependientes = ('estimacionxpartida','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relContrato_Trinomio: ArrayDependientes = ('estimacionxpartida','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relDirecciones: ArrayDependientes = ('condicionesclimatologicas','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

  relCondiciones: ArrayDependientes = ('condicionesclimatologicas','','','','','','','','',''
  ,'','','','','','','','','','','','','','','','','','','','') ;

var
  dbError, xError: string;

function impactar(sTablaMaestra: string; ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList): boolean;

function hayDependientes(sTablaMaestra: string; ParamNamesWHERE,ParamValuesWHERE: TStringList): boolean;

function boolRelaciones(Conection: TZConnection): boolean;//entra a la configuracion y averigua si la base de datos tiene relaciones

implementation

function dbExec(Conection: TZConnection; sSQLCommand: string; paramNames1, paramValues1, paramNames2, paramValues2: TStringList): boolean;
var
  ZExec: TZQuery;
  ii: integer;
begin
  result := true;
  dbError := '';//reiniciar el error DB
  ZExec := TZQuery.Create(Conection.Owner); //crear el componente
  ZExec.Connection := Conection;
  ZExec.Active := false;
  ZExec.SQL.Clear;
  ZExec.SQL.Add(sSQLCommand);//agregar la instruccion
  if (paramNames1 <> nil) and (paramValues1 <> nil)then begin
    for ii := 0 to paramNames1.Count - 1 do begin //agregar los parametros
      ZExec.ParamByName(paramNames1[ii] + '1').Value := paramValues1[ii];
    end;
  end;
  if (paramNames2 <> nil) and (paramValues2 <> nil)then begin
    for ii := 0 to paramNames2.Count - 1 do begin //agregar los parametros
      ZExec.ParamByName(paramNames2[ii] + '2').Value := paramValues2[ii];
    end;
  end;
  try
    ZExec.ExecSQL;
  except
    on E: exception do begin  //se devuelve falso y se registra el error
      dbError := E.Message;
      result := false;
    end;
  end;
  ZExec.Free;
end;

function indiceArray(tabla: string): integer;
var
  ii: integer;
begin
  ii := 0;
  result := -1;
  while (result = -1) and (ii < Length(tablasMaestras)) do
  begin
    if tablasMaestras[ii] = tabla then
      result := ii;
    inc(ii);
  end;
end;

function armarQuery(ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList):string;
var
  sSET, sWHERE: string;
  ii: integer;
begin
  sSET := '';
  sWHERE := ' WHERE 1 = 1 ';
  if (paramNamesSET <> nil) and (paramValuesSET <> nil) then
  begin
    for ii := 0 to paramNamesSET.Count - 1 do begin //agregar los parametros
      sSET := sSET + paramNamesSET[ii] + ' = :' + paramNamesSET[ii] + '1, ';
    end;
    sSET := Copy(sSET, 1, Length(sSET)-2);//restarle los 2 ultimos caracteres(', ')
  end;
  if sSET <> '' then
    sSET := ' SET ' + sSET + ' ';

  if (ParamNamesWHERE <> nil) and (ParamValuesWHERE <> nil) then
  begin
    for ii := 0 to ParamNamesWHERE.Count - 1 do begin //agregar los parametros
      sWHERE := sWHERE + ' AND ' + ParamNamesWHERE[ii] + ' = :' + ParamNamesWHERE[ii] + '2';
    end;
  end;

  result := sSET + sWHERE;
end;

function impactar(sTablaMaestra: string; ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList): boolean;
var
  dependientes: ArrayDependientes;
  indice, iTotal, ii: integer;
  sSQL, sSQLCommand, sTabla: string;
begin
  //reiniciar errores
  result := true;
  xError := '';
  //obtener el indice de la tabla maestra
  indice := indiceArray(sTablaMaestra);
  if indice < 0 then//la tabla no esta en la lista
  begin
    result := false;
    xError := 'La tabla no esta en la lista';
    exit;
  end;

  //ya se tiene el indice de la tabla, obtener el arreglo de tablas dependientes
  case indice of
    0: begin dependientes := relEquipos; iTotal := 7; end;
    1: begin dependientes := relEquipos1; iTotal := 1; end;
    2: begin dependientes := relBasicos; iTotal := 2; end;
    3: begin dependientes := relEmbarcaciones; iTotal := 3; end;
    4: begin dependientes := relEstimacionPeriodo; iTotal := 3; end;
    5: begin dependientes := relFases; iTotal := 2; end;
    6: begin dependientes := relHerramientas; iTotal := 2; end;
    7: begin dependientes := relInsumos; iTotal := 4; end;
    8: begin dependientes := relInsumos1; iTotal := 2; end;
    9: begin dependientes := relIsometricos; iTotal := 6; end;
    10: begin dependientes := relIsometricos1; iTotal := 1; end;
    11: begin dependientes := relPersonal; iTotal := 8; end;
    12: begin dependientes := relOrdenesDeTrabajo; iTotal := 3; end;
    13: begin dependientes := relTurnos; iTotal := 5; end;
    14: begin dependientes := relTiposDeMovimiento; iTotal := 3; end;
    15: begin dependientes := relOrdenDeCambio; iTotal := 1; end;
    16: begin dependientes := relOrdenDeCambio1; iTotal := 1; end;
    17: begin dependientes := relContrato_Trinomio; iTotal := 1; end;
    18: begin dependientes := relDirecciones; iTotal := 1; end;
    19: begin dependientes := relCondiciones; iTotal := 1; end;
  end;

  //armar la query
  sSQL := armarQuery(ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE);

  //recorrer el array de tablas dependientes y aplicar el UPDATE
  for ii := 0 to iTotal - 1 do
  begin
    sTabla := dependientes[ii];
    sSQLCommand := 'UPDATE ' + sTabla + sSQL;
    if not dbExec(connection.zConnection,sSQLCommand,ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
    begin
      xError := dbError;
      result := false;
    end;
  end;
end;

function boolRelaciones(Conection: TZConnection): boolean;//entra a la configuracion y averigua si la base de datos tiene relaciones
var
  ZExec: TZReadOnlyQuery;
  ii: integer;
  sSQL: string;
begin
  result := false;
  ZExec := TZReadOnlyQuery.Create(Conection.Owner); //crear el componente
  ZExec.Connection := Conection;
  ZExec.Active := false;
  ZExec.SQL.Clear;
  sSQL := 'SELECT lBaseRelacional FROM configuracion LIMIT 1';
  ZExec.SQL.Add(sSQL);//agregar la instruccion
  try
    ZExec.Open;
    if ZExec.RecordCount > 0 then
    begin
      if ZExec.FieldByName('lBaseRelacional').AsString = 'Si' then
      begin
        result := true;
      end;
    end;
  except
    on E: exception do begin  //se devuelve falso y se registra el error
      dbError := E.Message;
      result := false;
    end;
  end;
  ZExec.Free;
end;

function dbOpen(Conection: TZConnection; sSQLCommand: string; paramNames, paramValues: TStringList): boolean;
var
  ZConsulta: TZReadOnlyQuery;
  ii: integer;
begin
  result := false;
  dbError := '';//reiniciar el error DB
  ZConsulta := TZReadOnlyQuery.Create(Conection.Owner); //crear el componente
  ZConsulta.Connection := Conection;
  ZConsulta.Active := false;
  ZConsulta.SQL.Clear;
  ZConsulta.SQL.Add(sSQLCommand);//agregar la instruccion
  if (paramNames <> nil) and (paramValues <> nil)then begin
    for ii := 0 to paramNames.Count - 1 do begin //agregar los parametros
      ZConsulta.ParamByName(paramNames[ii]).Value := paramValues[ii];
    end;
  end;
  try
    ZConsulta.Open;
    result := ZConsulta.RecordCount > 0;
  except
    on E: exception do begin  //se devuelve falso y se registra el error
      dbError := E.Message;
      result := true;
    end;
  end;
  ZConsulta.Free;
end;

function armarConsulta(ParamNamesWHERE,ParamValuesWHERE: TStringList):string;
var
  sWHERE: string;
  ii: integer;
begin
  sWHERE := ' WHERE 1 = 1 ';
  if (ParamNamesWHERE <> nil) and (ParamValuesWHERE <> nil) then
  begin
    for ii := 0 to ParamNamesWHERE.Count - 1 do begin //agregar los parametros
      sWHERE := sWHERE + ' AND ' + ParamNamesWHERE[ii] + ' = :' + ParamNamesWHERE[ii];
    end;
  end;
  result := sWHERE;
end;

function hayDependientes(sTablaMaestra: string; ParamNamesWHERE,ParamValuesWHERE: TStringList): boolean;
var
  dependientes: ArrayDependientes;
  indice, iTotal, ii: integer;
  sSQL, sSQLCommand, sTabla: string;
begin
  //reiniciar errores
  result := false;
  xError := '';
  //obtener el indice de la tabla maestra
  indice := indiceArray(sTablaMaestra);
  if indice < 0 then//la tabla no esta en la lista
  begin
    result := true;
    xError := 'La tabla no esta en la lista';
    exit;
  end;

  //ya se tiene el indice de la tabla, obtener el arreglo de tablas dependientes
  case indice of
    0: begin dependientes := relEquipos; iTotal := 7; end;
    1: begin dependientes := relEquipos1; iTotal := 1; end;
    2: begin dependientes := relBasicos; iTotal := 2; end;
    3: begin dependientes := relEmbarcaciones; iTotal := 3; end;
    4: begin dependientes := relEstimacionPeriodo; iTotal := 3; end;
    5: begin dependientes := relFases; iTotal := 2; end;
    6: begin dependientes := relHerramientas; iTotal := 2; end;
    7: begin dependientes := relInsumos; iTotal := 4; end;
    8: begin dependientes := relInsumos1; iTotal := 2; end;
    9: begin dependientes := relIsometricos; iTotal := 6; end;
    10: begin dependientes := relIsometricos1; iTotal := 1; end;
    11: begin dependientes := relPersonal; iTotal := 8; end;
    12: begin dependientes := relOrdenesDeTrabajo; iTotal := 3; end;
    13: begin dependientes := relTurnos; iTotal := 5; end;
    14: begin dependientes := relTiposDeMovimiento; iTotal := 3; end;
    15: begin dependientes := relOrdenDeCambio; iTotal := 1; end;
    16: begin dependientes := relOrdenDeCambio1; iTotal := 1; end;
    17: begin dependientes := relContrato_Trinomio; iTotal := 1; end;
    18: begin dependientes := relDirecciones; iTotal := 1; end;
    19: begin dependientes := relCondiciones; iTotal := 1; end;
  end;

  //armar la consulta
  sSQL := armarConsulta(ParamNamesWHERE,ParamValuesWHERE);

  //recorrer el array de tablas dependientes y aplicar el UPDATE
  for ii := 0 to iTotal - 1 do
  begin
    sTabla := dependientes[ii];
    sSQLCommand := 'SELECT ' + ParamNamesWHERE[0] + ' FROM ' + sTabla + sSQL;
    if dbOpen(connection.zConnection,sSQLCommand,ParamNamesWHERE,ParamValuesWHERE) then
    begin
      xError := dbError;
      result := true;
    end;
  end;
end;

end.
