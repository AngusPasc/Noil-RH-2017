unit UnitActualizarPorReferencias;

interface

uses
  global, frm_connection, SysUtils, ZDataset, ZConnection, Classes, Dialogs;

var
  pdbError: string;

function dbExec(sSQLCommand: string; paramNames, paramValues: TStringList; Owner: TComponent): boolean;
function actualizarTablasActOrden(WbsNuevo, WbsOrig, orden: string; AOwner: TComponent): boolean;
    
implementation

function dbExec(sSQLCommand: string; paramNames, paramValues: TStringList; Owner: TComponent): boolean;
var
  ZExec: TZQuery;
  ii: integer;
begin
  result := true;
  pdbError := '';//reiniciar el error DB
  ZExec := TZQuery.Create(Owner); //crear el componente
  ZExec.Connection := connection.ZConnection;
  ZExec.Active := false;
  ZExec.SQL.Clear;
  ZExec.SQL.Add(sSQLCommand);//agregar la instruccion
  for ii := 0 to paramNames.Count - 1 do begin //agregar los parametros
    ZExec.ParamByName(paramNames[ii]).Value := paramValues[ii];
  end;
  try
    ZExec.ExecSQL;
  except
    on E: exception do begin  //se devuelve falso y se registra el error
      pdbError := E.Message;
      result := false;
    end;
  end;
  ZExec.Free;
end;

function actualizarTablasActOrden(WbsNuevo, WbsOrig, orden: string; AOwner: TComponent): boolean;
var
  sSQL, sTabla, sBloque: string;
  paramNames, paramValues: TStringList;
begin
  paramNames := TStringList.Create; paramValues := TStringList.Create;

  //actualizar solo las wbs
  sBloque :=
  ' SET sWbs = :wbs ' +
  'WHERE sContrato = :contrato AND sIdConvenio = :convenio '+
  'AND sWbs = :wbsOrig AND sNumeroOrden = :orden';
  paramNames.Add('wbs');paramNames.Add('contrato');paramNames.Add('convenio');paramNames.Add('wbsOrig');paramNames.Add('orden');
  paramValues.Add(WbsNuevo);paramValues.Add(global_contrato);paramValues.Add(global_convenio);paramValues.Add(WbsOrig);paramValues.Add(orden);

  sTabla := 'avancesxactividad';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  if not dbExec(sSQL, paramNames, paramValues, AOwner) then
    showmessage(pdbError);

  sTabla := 'bitacoradepaquetes';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  sTabla := 'distribuciondeactividades';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  sTabla := 'ordenes_programamensual';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  paramNames.Clear; paramNames.Clear;
  //actualizar solo las wbs, sin convenio
  sBloque :=
  ' SET sWbs = :wbs ' +
  'WHERE sContrato = :contrato '+
  'AND sWbs = :wbsOrig AND sNumeroOrden = :orden';
  paramNames.Add('wbs');paramNames.Add('contrato');paramNames.Add('wbsOrig');paramNames.Add('orden');
  paramValues.Add(WbsNuevo);paramValues.Add(global_contrato);paramValues.Add(WbsOrig);paramValues.Add(orden);

  sTabla := 'actividadesxgrupo';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  sTabla := 'bitacoradealcances';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  sTabla := 'estimacionxpartida';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  sTabla := 'estimacionxpartidaprov';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

  sTabla := 'bitacoradeactividades';
  sSQL := 'UPDATE ' + sTabla + sBloque;
  dbExec(sSQL, paramNames, paramValues, AOwner);

end;

end.
