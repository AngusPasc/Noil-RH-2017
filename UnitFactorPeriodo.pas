unit UnitFactorPeriodo;

interface

uses
  SysUtils, frm_connection, DBCtrls,
  DB, Global, frxDBSet, Classes,ZAbstractRODataset, ZAbstractDataset,
  ZDataset, RXDBCtrl, Math;

type

TFactorPeriodo=class(TComponent)
private
  bError:boolean;
  sContrato:string;
  rFactorPer:real;
  fFechaIni:tDateTime;
  fFechaFin:tDateTime;
  bCriterio:byte;
  //metodos para propiedades
  function getFactPer:real;
  //metodos de operacion
  function diasDelMes(wMes:word):integer;
  function diasAlMes(fecha:tDateTime):real;
  function diasALaQuincena(fecha:tDateTime):real;
  function diaDeLaSemana(fecha:tDateTime):real;
  function diario:real;
  function semanal:real;
  function quincenal:real;
  function mensual:real;
public
  //propiedades
  property error:boolean read bError;
  property factorPer:real read getFactPer;
  //metodos publicos
  constructor Create(sContrato:string);
  function facCriterio:real;
  function obtenerConf:boolean;
  function generarConf:boolean;
  function calcular:real;
end;

implementation

constructor TFactorPeriodo.Create(sContrato:string);
BEGIN
  self.sContrato:=sContrato;
  rFactorPer:=0;
  bError:=false;
  if not obtenerConf then
    bError := not generarConf;
  calcular;
END;

function TFactorPeriodo.getFactPer:real;
BEGIN
  result:=roundto(rFactorPer, -2);
END;

function TFactorPeriodo.facCriterio:real;
BEGIN
  result:=0;
  case self.bCriterio of
    0:result:=365.25;
    1:result:=52.18;
    2:result:=24;
    3:result:=12;
  end;
END;

function TFactorPeriodo.obtenerConf:boolean;
var
  zConsulta:TZQuery;
  sSQL:string;
BEGIN
  result:=true;
  //buscar la configuracion
  sSQL:='SELECT * FROM confcalculoindirectos'
       +' WHERE sContrato = :contrato';
  zConsulta := TZQuery.Create(self);
  zConsulta.Connection := connection.zConnection;
  zConsulta.Active := False;
  zConsulta.SQL.Clear;
  zConsulta.SQL.Add(sSQL);
  zConsulta.Params.ParamByName('contrato').DataType := ftString ;
  zConsulta.Params.ParamByName('contrato').Value    := sContrato ;
  zConsulta.Open;
  if zConsulta.RecordCount>0 then begin
    fFechaIni := zConsulta.FieldValues['fFechaIni'];
    fFechaFin := zConsulta.FieldValues['fFechaFin'];
    if zConsulta.FieldValues['sPeriodo'] = 'Días' then
      bCriterio := 0
    else if zConsulta.FieldValues['sPeriodo'] = 'Semanas' then
      bCriterio := 1
    else if zConsulta.FieldValues['sPeriodo'] = 'Quincenas' then
      bCriterio := 2
    else                //meses
      bCriterio := 3;
  end
  else
    result:=false;
END;

function TFactorPeriodo.generarConf:boolean;
var
  zConsulta:TZQuery;
  sSQL:string;
BEGIN
  result:=true;
  //aqui se averiguan los valores
  sSQL:='SELECT * FROM actividadesxanexo'
       +' WHERE sContrato = :contrato AND sWbs = :wbs';
  zConsulta := TZQuery.Create(self);
  zConsulta.Connection := connection.zConnection;
  zConsulta.Active := False;
  zConsulta.SQL.Clear;
  zConsulta.SQL.Add(sSQL);
  zConsulta.Params.ParamByName('contrato').DataType := ftString ;
  zConsulta.Params.ParamByName('contrato').Value    := sContrato ;
  zConsulta.Params.ParamByName('wbs').DataType := ftString ;
  zConsulta.Params.ParamByName('wbs').Value    := 'A' ;
  zConsulta.Open;
  fFechaIni:=zConsulta.FieldValues['dFechaInicio'];
  fFechaFin:=zConsulta.FieldValues['dFechaFinal'];
  bCriterio := 3;//meses
  //aqui se insertan los datos recien generados
  //si algo sale mal: result:=false;
END;

function TFactorPeriodo.diasDelMes(wMes:word):integer;
BEGIN
  result:=0;
  case wMes of
    1 : result := 31;
    2 : result := 28;
    3 : result := 31;
    4 : result := 30;
    5 : result := 31;
    6 : result := 30;
    7 : result := 31;
    8 : result := 31;
    9 : result := 30;
    10 : result := 31;
    11 : result := 30;
    12 : result := 31;
  end;
END;

function TFactorPeriodo.diasALaQuincena(fecha:tDateTime):real;
var
  myYear, myMonth, myDay : Word;
  fIni,fFin:tDateTime;
  rAcDias:real;
BEGIN
  rAcDias:=0;
  DecodeDate(fecha, myYear, myMonth, myDay);
  if myDay>15 then begin//segunda quincena
    fIni := EncodeDate(myYear, myMonth, 16);
    fFin := EncodeDate(myYear, myMonth, diasDelMes(myMonth));
  end
  else begin//primera quincena
    fIni := EncodeDate(myYear, myMonth, 1);
    fFin := EncodeDate(myYear, myMonth, 15);
  end;
  while fIni<=fFin do begin
    rAcDias:=rAcDias+diaDeLaSemana(fIni);
    fIni:=fIni+1;
  end;
  result:=rAcDias;
END;

function TFactorPeriodo.diasAlMes(fecha:tDateTime):real;
var
  myYear, myMonth, myDay : Word;
  fIni,fFin:tDateTime;
  rAcDias:real;
BEGIN
  rAcDias:=0;
  DecodeDate(fecha, myYear, myMonth, myDay);
  fIni := EncodeDate(myYear, myMonth, 1);
  fFin := EncodeDate(myYear, myMonth, diasDelMes(myMonth));
  while fIni<=fFin do begin
    rAcDias:=rAcDias+diaDeLaSemana(fIni);
    fIni:=fIni+1;
  end;
  result:=rAcDias;
END;

function TFactorPeriodo.diaDeLaSemana(fecha:tDateTime):real;
BEGIN
  result:=0;
  if (DayOfWeek(fecha) > 1)and (DayOfWeek(fecha) < 7) then //lunes a viernes
    result := result + 1
  else if DayOfWeek(fecha) = 7 then //sabado
    result := result + 0.5;
  //domingo, no se hace nada, se queda result:=0
END;

function TFactorPeriodo.diario:real;
var
  fDia:tDateTime;
BEGIN
  result:=0;
  fDia := fFechaIni;
  while fDia<=fFechaFin do begin
    result := result + diaDeLaSemana(fDia);
    fDia:=fDia+1;
  end;
END;

function TFactorPeriodo.semanal:real;
var
  fDia:tDateTime;
BEGIN
  result:=0;
  fDia := fFechaIni;
  while fDia<=fFechaFin do begin
    result := result + diaDeLaSemana(fDia);
    fDia:=fDia+1;
  end;
  result:=result/5.5;
END;

function TFactorPeriodo.quincenal:real;
var
  fDia:tDateTime;
  myYear, myMonth, myDay : Word;
  wMes: word;
  iDiasQuincena :real;
  rAcDias,rAcTotal: real;
  bNoCambio:boolean;
BEGIN
  fDia:=fFechaIni;
  RAcDias:=0;
  rAcTotal:=0;
  DecodeDate(fDia, myYear, myMonth, myDay);
  wMes:=myMonth;
  iDiasQuincena:=diasALaQuincena(fDia);
  bNoCambio:=true;
  if myDay>15 then
    bNoCambio:=false;
  while fDia<=fFechaFin do begin
    DecodeDate(fDia, myYear, myMonth, myDay);
    if wMes = myMonth then begin
      if (bNoCambio)and(myDay>15) then begin//cambiar de quincena
        bNoCambio:=false;
        if iDiasQuincena <> 0 then
          rAcTotal:=rAcTotal+(rAcDias/iDiasQuincena);
        rAcDias:=diaDeLaSemana(fDia);
        iDiasQuincena:=diasALaQuincena(fDia);
      end
      else begin
        rAcDias:=rAcDias+diaDeLaSemana(fDia);
      end;
    end
    else begin//cambiar de mes
      bNoCambio:=true;
      if iDiasQuincena <> 0 then
        rAcTotal:=rAcTotal+(rAcDias/iDiasQuincena);
      rAcDias:=diaDeLaSemana(fDia);
      iDiasQuincena:=diasALaQuincena(fDia);
      wMes:=myMonth;
    end;
    fDia:=fDia+1;
  end;
  if iDiasQuincena <> 0 then
    rAcTotal:=rAcTotal+(rAcDias/iDiasQuincena);
  result:=rAcTotal;
END;

function TFactorPeriodo.mensual:real;
var
  fDia:tDateTime;
  myYear, myMonth, myDay : Word;
  wMes: word;
  iDiasMes :real;
  rAcDias,rAcTotal: real;
BEGIN
  fDia:=fFechaIni;
  RAcDias:=0;
  rAcTotal:=0;
  DecodeDate(fDia, myYear, myMonth, myDay);
  wMes:=myMonth;
  iDiasMes:=diasAlMes(fDia);
  while fDia<=fFechaFin do begin
    DecodeDate(fDia, myYear, myMonth, myDay);
    if wMes = myMonth then begin
      rAcDias:=rAcDias+diaDeLaSemana(fDia);
    end
    else begin
      if iDiasMes <> 0 then
        rAcTotal:=rAcTotal+(rAcDias/iDiasMes);
      rAcDias:=diaDeLaSemana(fDia);
      iDiasMes:=diasAlMes(fDia);
      wMes:=myMonth;
    end;
    fDia:=fDia+1;
  end;
  if iDiasMes <> 0 then
    rAcTotal:=rAcTotal+(rAcDias/iDiasMes);
  result:=rAcTotal;
END;

function TFactorPeriodo.calcular:real;
BEGIN
  result:=0;
  case bCriterio of
    0 : result := diario;
    1 : result := semanal;
    2 : result := quincenal;
    3 : result := mensual;
  end;
  rFactorPer:=result;
END;

end.
