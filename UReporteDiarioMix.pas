unit UReporteDiarioMix;

interface

uses
  Windows, Classes, FrxClass, FrxDBSet, ZDataset, frm_connection, Global, UIni,
  Variants, utilerias, Dialogs, Controls, RxMemDS, SysUtils, StrUtils,
  StdCtrls, DB, DBCtrls, Forms;


var
  CadAnexos: string;
  mBitacoraMix: TrxMemoryData;
  rDiario: TFrxReport;

procedure rDiarioFirmas(sParamContrato, sParamOrden: string; dParamFecha: tDate; tOrigen: TComponent);
procedure procCreateObject(tOrigen: TComponent);
procedure procLimpia();

{Funcion para tomar el perido de reprogramacion del barco..}
procedure definirPeriodo(sParamContrato: string; dParamFecha: tDate); //*BRITO 30-11-10
{Funcion para determinar que numeracion de partidas se imprime en el reporte diario}
function historialPartidas(sParamContrato, sParamOrden: string; dParamFecha: tDate; lmostrarAnt: boolean): string;
procedure procReporteDiarioCotemarMix(TOrigen: TComponent;
  tProcedure: tfrxGETvalueEvent;
  tDblClick: tfrxClickObjectEvent;
  sParamContrato: string;
  sParamOrden: string;
  sParamReporte: string;
  sParamConvenio: string;
  dParamFecha: TDate;
  sParamTurno: string;
  sParamDestino: string;
  lParamMostrarAnt: boolean = false; FormatosExp: string = ''; PermisosExp: string = ''); //(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);

implementation

var
  //rDiario: TFrxReport;  conflicto entre programadores

  QryConfiguracion,
    QryConfiguracionOrden,
    QryReporteFotografico,
    QryOrdenesdeTrabajo,
    QryReporteDiario,
    QryAvancesAcum,
    QryBitacora1,
    QryNotas,
    rptPersonal,
    rptPersonalPU,
    rptEquipos,
    rptEquiposPU,
    rptMaterial,
    TiempoMuerto,
    QryAdmon,
    QryPernoctas,
    QryBuscarAux,
    rptTiempoExtra,
    QryAcumulados: TZReadOnlyQuery;

  mBitacora1,
  //mBitacoraMix,
  mNotas,
    mPernocta: TrxMemoryData;

  dsConfiguracion,
    dsConfiguracionOrden,
    dsReporteFotografico,
    dsOrden,
    dsReporteDiario,
    dsAvancesAcum,
    dsmBitacora1,
    dsmBitacoraMix,
    dsmNotas,
    dsPersonal,
    dsTiempoExtra,
    dsPersonalPU,
    dsEquipos,
    dsEquiposPU,
    dsMaterial,
    dsTiempoMuerto,
    dsAdmon,
    dsPernoctas: TfrxDBDataSet;

procedure rDiarioFirmas(sParamContrato, sParamOrden: string; dParamFecha: tDate; tOrigen: TComponent);
var
  QryBuscarFirmas: tzReadOnlyQuery;
begin
  sSuperIntendente := '';
  sSuperIntendentePatio := '';
  sRepresentanteTecnico := '';
  sSupervisor := '';
  sSupervisorPatio := '';
  sSupervisorGenerador := '';
  sSupervisorEstimacion := '';
  sSupervisorSubContratista := '';
  sPuestoSupervisorSubContratista := '';
  sPuestoSuperintendente := '';
  sPuestoSupervisor := '';
  sPuestoSupervisorGenerador := '';
  sPuestoSupervisorEstimacion := '';
  sSupervisorTierra := '';
  sPuestoSupervisorTierra := '';
  sPuestoRepresentanteTecnico := '';
  sResidente := '';
  sPuestoResidente := '';
  QryBuscarFirmas := tzReadOnlyQuery.Create(tOrigen);
  QryBuscarFirmas.Connection := connection.zconnection;
  QryBuscarFirmas.Active := False;
  QryBuscarFirmas.SQL.Clear;
  if sParamOrden <> '' then
  begin
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sNumeroOrden = :Orden And dIdFecha = :fecha');
    QryBuscarFirmas.ParamByName('Orden').AsString := sParamOrden;
  end
  else
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha = :fecha');
  QryBuscarFirmas.ParamByName('Contrato').AsString := sParamContrato;
  QryBuscarFirmas.ParamByName('fecha').AsDate := dParamFecha;
  QryBuscarFirmas.Open;
  if QryBuscarFirmas.RecordCount > 0 then
  begin
    sSuperintendente := QryBuscarFirmas.FieldValues['sFirmante1'];
    sSuperintendentePatio := QryBuscarFirmas.FieldValues['sFirmante7'];
    sRepresentanteTecnico := QryBuscarFirmas.FieldValues['sFirmante9'];
    sSupervisor := QryBuscarFirmas.FieldValues['sFirmante2'];
    sSupervisorPatio := QryBuscarFirmas.FieldValues['sFirmante8'];
    sSupervisorGenerador := QryBuscarFirmas.FieldValues['sFirmante3'];
    sSupervisorEstimacion := QryBuscarFirmas.FieldValues['sFirmante4'];
    sSupervisorTierra := QryBuscarFirmas.FieldValues['sFirmante5'];
    sResidente := QryBuscarFirmas.FieldValues['sFirmante6'];
    sSupervisorSubContratista := QryBuscarFirmas.FieldValues['sFirmante10'];

    sPuestoSuperintendente := QryBuscarFirmas.FieldValues['sPuesto1'];
    sPuestoSuperintendentePatio := QryBuscarFirmas.FieldValues['sPuesto7'];
    sPuestoRepresentanteTecnico := QryBuscarFirmas.FieldValues['sPuesto9'];
    sPuestoSupervisor := QryBuscarFirmas.FieldValues['sPuesto2'];
    sPuestoSupervisorPatio := QryBuscarFirmas.FieldValues['sPuesto8'];
    sPuestoSupervisorGenerador := QryBuscarFirmas.FieldValues['sPuesto3'];
    sPuestoSupervisorEstimacion := QryBuscarFirmas.FieldValues['sPuesto4'];
    sPuestoSupervisorTierra := QryBuscarFirmas.FieldValues['sPuesto5'];
    sPuestoResidente := QryBuscarFirmas.FieldValues['sPuesto6'];
    sPuestoSupervisorSubContratista := QryBuscarFirmas.FieldValues['sPuesto10'];
  end
  else
  begin
    QryBuscarFirmas.Active := False;
    QryBuscarFirmas.SQL.Clear;
    if sParamOrden <> '' then
    begin
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sNumeroOrden = :Orden And dIdFecha <= :fecha Order By dIdFecha DESC');
      QryBuscarFirmas.ParamByName('Orden').AsString := sParamOrden;
    end
    else
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha <= :fecha Order By dIdFecha DESC');

    QryBuscarFirmas.ParamByName('Contrato').AsString := sParamContrato;
    QryBuscarFirmas.ParamByName('fecha').AsDate := dParamFecha;
    QryBuscarFirmas.Open;
    if QryBuscarFirmas.RecordCount > 0 then
    begin
      sSuperintendente := QryBuscarFirmas.FieldValues['sFirmante1'];
      sSuperintendentePatio := QryBuscarFirmas.FieldValues['sFirmante7'];
      sRepresentanteTecnico := QryBuscarFirmas.FieldValues['sFirmante9'];
      sSupervisor := QryBuscarFirmas.FieldValues['sFirmante2'];
      sSupervisorPatio := QryBuscarFirmas.FieldValues['sFirmante8'];
      sSupervisorGenerador := QryBuscarFirmas.FieldValues['sFirmante3'];
      sSupervisorEstimacion := QryBuscarFirmas.FieldValues['sFirmante4'];
      sSupervisorTierra := QryBuscarFirmas.FieldValues['sFirmante5'];
      sResidente := QryBuscarFirmas.FieldValues['sFirmante6'];
      sPuestoSuperintendente := QryBuscarFirmas.FieldValues['sPuesto1'];
      sPuestoSuperintendentePatio := QryBuscarFirmas.FieldValues['sPuesto7'];
      sPuestoSupervisor := QryBuscarFirmas.FieldValues['sPuesto2'];
      sPuestoSupervisorPatio := QryBuscarFirmas.FieldValues['sPuesto8'];
      sPuestoRepresentanteTecnico := QryBuscarFirmas.FieldValues['sPuesto9'];
      sPuestoSupervisorGenerador := QryBuscarFirmas.FieldValues['sPuesto3'];
      sPuestoSupervisorEstimacion := QryBuscarFirmas.FieldValues['sPuesto4'];
      sPuestoSupervisorTierra := QryBuscarFirmas.FieldValues['sPuesto5'];
      sPuestoResidente := QryBuscarFirmas.FieldValues['sPuesto6'];

      sSupervisorSubContratista := QryBuscarFirmas.FieldValues['sFirmante10'];
      sPuestoSupervisorSubContratista := QryBuscarFirmas.FieldValues['sPuesto10'];
    end
  end;
  QryBuscarFirmas.Destroy;
end;

procedure procCreateObject(tOrigen: TComponent);
begin
  rDiario := TfrxReport.Create(tOrigen);
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := True;
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;
  rDiario.DataSets.Clear;

  QryReporteDiario := TZReadOnlyQuery.Create(tOrigen);
  QryReporteDiario.Connection := connection.zConnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zConnection;

  QryConfiguracionOrden := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracionOrden.Connection := connection.zConnection;

  QryReporteFotografico := TZReadOnlyQuery.Create(tOrigen);
  QryReporteFotografico.Connection := connection.zConnection;

  QryOrdenesdeTrabajo := TZReadOnlyQuery.Create(tOrigen);
  QryOrdenesdeTrabajo.Connection := connection.zConnection;

  QryAvancesAcum := TZReadOnlyQuery.Create(tOrigen);
  QryAvancesAcum.Connection := Connection.zConnection;

  QryBitacora1 := TZReadOnlyQuery.Create(tOrigen);
  QryBitacora1.Connection := Connection.zConnection;

  QryNotas := TZReadOnlyQuery.Create(tOrigen);
  QryNotas.Connection := Connection.zConnection;

  QryBuscarAux := TZReadOnlyQuery.Create(tOrigen);
  QryBuscarAux.Connection := Connection.zConnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := Connection.zConnection;

  QryPeriodo := TZReadOnlyQuery.Create(tOrigen);
  QryPeriodo.Connection := connection.zConnection;

  mBitacora1 := TrxMemoryData.Create(tOrigen);

  mBitacoraMix := TrxMemoryData.Create(tOrigen);

  mNotas := TrxMemoryData.Create(tOrigen);

  mPernocta := TrxMemoryData.Create(tOrigen);

  mPernocta := TrxMemoryData.Create(tOrigen);
  mPernocta.Active := False;
  mPernocta.FieldDefs.Add('sContrato', ftString, 15, True);
  mPernocta.FieldDefs.Add('sPernocta', ftString, 50, True);
  mPernocta.FieldDefs.Add('dCantidad', ftInteger, 0, True);
  mPernocta.FieldDefs.Add('sTipoPernocta', ftString, 4, True);
  mPernocta.FieldDefs.Add('DescribePernocta', ftMemo, 200, True);
  mPernocta.Active := True;

  rptPersonal := TZReadOnlyQuery.Create(tOrigen);
  rptPersonal.Connection := connection.zConnection;

  rptTiempoExtra := TZReadOnlyQuery.Create(tOrigen);
  rptTiempoExtra.Connection := connection.zConnection;

  rptPersonalPU := TZReadOnlyQuery.Create(tOrigen);
  rptPersonalPU.Connection := connection.zConnection;

  rptEquipos := TZReadOnlyQuery.Create(tOrigen);
  rptEquipos.Connection := connection.zConnection;

  rptEquiposPU := TZReadOnlyQuery.Create(tOrigen);
  rptEquiposPU.Connection := connection.zConnection;

  rptMaterial := TZReadOnlyQuery.Create(tOrigen);
  rptMaterial.Connection := connection.zConnection;

  TiempoMuerto := TZReadOnlyQuery.Create(tOrigen);
  TiempoMuerto.Connection := connection.zConnection;

  QryAdmon := TZReadOnlyQuery.Create(tOrigen);
  QryAdmon.Connection := connection.zConnection;

  QryPernoctas := TZReadOnlyQuery.Create(tOrigen);
  QryPernoctas.Connection := connection.zConnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracionOrden := TfrxDBDataSet.Create(tOrigen);
  dsReporteFotografico := TfrxDBDataSet.Create(tOrigen);
  dsOrden := TfrxDBDataSet.Create(tOrigen);
  dsReporteDiario := TfrxDBDataSet.Create(tOrigen);
  dsAvancesAcum := TfrxDBDataSet.Create(tOrigen);
  dsmBitacora1 := TfrxDBDataSet.Create(tOrigen);
  dsmBitacoraMix := TfrxDBDataSet.Create(tOrigen);
  dsmNotas := TfrxDBDataSet.Create(tOrigen);
  dsPersonal := TfrxDBDataSet.Create(tOrigen);
  dsTiempoExtra := TfrxDBDataSet.Create(tOrigen);
  dsPersonalPU := TfrxDBDataSet.Create(tOrigen);
  dsEquipos := TfrxDBDataSet.Create(tOrigen);
  dsEquiposPU := TfrxDBDataSet.Create(tOrigen);
  dsMaterial := TfrxDBDataSet.Create(tOrigen);
  dsTiempoMuerto := TfrxDBDataSet.Create(tOrigen);
  dsAdmon := TfrxDBDataSet.Create(tOrigen);
  dsPernoctas := TfrxDBDataSet.Create(tOrigen);
  dsPeriodo := TfrxDBDataSet.Create(tOrigen);

  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracionOrden.DataSet := qryConfiguracionOrden;
  dsReporteFotografico.DataSet := QryReporteFotografico;
  dsOrden.DataSet := QryOrdenesdeTrabajo;
  dsReporteDiario.DataSet := QryReporteDiario;
  dsAvancesAcum.DataSet := QryAvancesAcum;
  dsPersonal.DataSet := rptPersonal;
  dsTiempoExtra.DataSet := rptTiempoExtra;
  dsPersonalPU.DataSet := rptPersonalPU;
  dsEquipos.DataSet := rptEquipos;
  dsEquiposPU.DataSet := rptEquiposPU;
  dsMaterial.DataSet := rptMaterial;
  dsTiempoMuerto.DataSet := TiempoMuerto;
  dsAdmon.DataSet := QryAdmon;
  dsPernoctas.DataSet := mPernocta;
  dsPeriodo.DataSet := QryPeriodo;

  dsConfiguracion.FieldAliases.Clear;
  dsConfiguracionOrden.FieldAliases.Clear;
  dsReporteFotografico.FieldAliases.Clear;
  dsOrden.FieldAliases.Clear;
  dsReporteDiario.FieldAliases.Clear;
  dsAvancesAcum.FieldAliases.Clear;
  dsAdmon.FieldAliases.Clear;
  dsPernoctas.FieldAliases.Clear;
  dsPeriodo.FieldAliases.Clear;


  dsConfiguracion.UserName := 'dsConfiguracion';
  dsConfiguracionOrden.UserName := 'dsConfiguracionOrden';
  dsReporteFotografico.UserName := 'dsReporteFotografico';
  dsOrden.UserName := 'dsOrden';
  dsReporteDiario.UserName := 'dsReporteDiario';
  dsAvancesAcum.UserName := 'dsAvancesAcum';
  dsPersonal.UserName := 'dsPersonal';
  dsTiempoExtra.UserName := 'dsTiempoExtra';
  dsPersonalPU.UserName := 'dsPersonalPU';
  dsEquipos.UserName := 'dsEquipos';
  dsEquiposPU.UserName := 'dsEquiposPU';
  dsMaterial.UserName := 'dsMaterial';
  dsTiempoMuerto.UserName := 'dsTiempoMuerto';
  dsAdmon.UserName := 'dsAdmon';
  dsPernoctas.UserName := 'dsPernoctas';
  dsPeriodo.UserName := 'dsPeriodo';

  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsConfiguracionOrden);
  rDiario.DataSets.Add(dsReporteFotografico);
  rDiario.DataSets.Add(dsOrden);
  rDiario.DataSets.Add(dsReporteDiario);
  rDiario.DataSets.Add(dsAvancesAcum);
  rDiario.DataSets.Add(dsPersonal);
  rDiario.DataSets.Add(dsTiempoExtra);
  rDiario.DataSets.Add(dsPersonalPU);
  rDiario.DataSets.Add(dsEquipos);
  rDiario.DataSets.Add(dsEquiposPU);
  rDiario.DataSets.Add(dsMaterial);
  rDiario.DataSets.Add(dsTiempoMuerto);
  rDiario.DataSets.Add(dsAdmon);
  rDiario.DataSets.Add(dsPernoctas);
  rDiario.DataSets.Add(dsPeriodo);

end;

procedure procLimpia();
begin
  dsConfiguracion.Destroy;
  dsConfiguracionOrden.Destroy;
  dsReporteFotografico.Destroy;
  dsOrden.Destroy;
  dsReporteDiario.Destroy;
  dsAvancesAcum.Destroy;
  dsmBitacora1.Destroy;
  dsmBitacoraMix.Destroy;
  dsmNotas.Destroy;
  dsPersonal.Destroy;
  dsTiempoExtra.Destroy;
  dsPersonalPU.Destroy;
  rptPersonal.Destroy;
  rptTiempoExtra.Destroy;
  rptPersonalPU.Destroy;
  dsEquipos.Destroy;
  dsEquiposPU.Destroy;
  dsMaterial.Destroy;
  rptMaterial.Destroy;
  dsTiempoMuerto.Destroy;
  dsAdmon.Destroy;
  dsPernoctas.Destroy;


  QryConfiguracion.Destroy;
  QryConfiguracionOrden.Destroy;
  QryReporteFotografico.Destroy;
  QryReporteDiario.Destroy;
  QryAvancesAcum.Destroy;
  mBitacora1.Destroy;
  mBitacoraMix.Destroy;
  mNotas.Destroy;
  rptEquipos.Destroy;
  rptEquiposPU.Destroy;
  TiempoMuerto.Destroy;
  QryAdmon.Destroy;
  QryPernoctas.Destroy;
  QryBuscarAux.Destroy;
  QryAcumulados.Destroy;
  QryPeriodo.Destroy;
  dsPeriodo.Destroy;

  rDiario.Destroy;
end;

function rfnDecimal(sParamCantidad: string): Real;
var
  Code: Integer;
  Resultado: Real;
begin
  Val(sParamCantidad, Resultado, Code);
  if Code <> 0 then
    Resultado := 0;
  rfnDecimal := Resultado;
end;

function sfnSumaHoras(sParamHorasMax, sParamHorasMin: string): string;
var
  nHorasMax, nMinutosMax: Real;
  nHorasMin, nMinutosMin: Real;
  nHorasResult, nMinutosResult: Real;
  sHoras, sMinutos: string;
begin
  sParamHorasMax := Trim(sParamHorasMax);
  sParamHorasMin := Trim(sParamHorasMin);
  nHorasMax := rfnDecimal(MidStr(sParamHorasMax, 1, Pos(':', sParamHorasMax) - 1));
  nMinutosMax := rfnDecimal(MidStr(sParamHorasMax, Pos(':', sParamHorasMax) + 1, 2));

  nHorasMin := rfnDecimal(MidStr(sParamHorasMin, 1, 2));
  nMinutosMin := rfnDecimal(MidStr(sParamHorasMin, 4, 2));

  nMinutosResult := nMinutosMax + nMinutosMin;
  nHorasResult := nHorasMax + nHorasMin;

  if nMinutosResult >= 60 then
  begin
    nHorasResult := nHorasResult + 1;
    nMinutosResult := nMinutosResult - 60;
  end;

  Str(nHorasResult: 2: 0, sHoras);
  sHoras := Trim(sHoras);
  if nHorasResult >= 10 then
    sHoras := sHoras + ':'
  else
    sHoras := '0' + sHoras + ':';

  Str(nMinutosResult: 2: 0, sMinutos);
  sMinutos := Trim(sMinutos);
  if nMinutosResult >= 10 then
    sfnSumaHoras := sHoras + sMinutos
  else
    sfnSumaHoras := sHoras + '0' + sMinutos;
end;

//************************BRITO 30-11-10****************************************
//funcion que devuelve la cadena "sNumeroActividad" si se debe imprimir el numero de partida actual
//o la cadena "sActividadAnterior" si se imprime la partida anterior en el reporte diario

function historialPartidas(sParamContrato, sParamOrden: string; dParamFecha: tDate; lmostrarAnt: boolean): string;
begin
  result := 'sNumeroActividad';
  //Buscar en la configuracion si se imprimen partidas anteriores por frente o por reporte
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT lHistorialPartidas FROM configuracion WHERE sContrato = :contrato');
  connection.QryBusca.ParamByName('contrato').AsString := sParamContrato;
  connection.QryBusca.Open;
  //Si no se encontro nada en configuracion el valor por defecto es "sNumeroActividad"
  if connection.QryBusca.RecordCount > 0 then begin
    if connection.QryBusca.FieldByName('lHistorialPartidas').AsString = 'Reporte' then begin
      //Se imprime por reporte, solo verificar si el reporte en cuestion tiene activado imrpimir la partida anterior
      if lmostrarAnt then begin
        result := 'sActividadAnterior';
      end;
    end
    else begin
      //Se imprime por frente, verificar en la tabla ordenesdetrabajo
      connection.QryBusca.Active := false;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT lMostrarPartidasReportes, dFechaIniPReportes, dFechaFinPReportes ' +
        'FROM ordenesdetrabajo WHERE sContrato = :contrato AND sNumeroOrden = :orden');
      connection.QryBusca.ParamByName('contrato').AsString := sParamContrato;
      connection.QryBusca.ParamByName('orden').AsString := sParamOrden;
      connection.QryBusca.Open;
      //Si el valor de lMostrarPartidasReportes es Actuales, se toma el resultado por defecto
      if connection.QryBusca.FieldByName('lMostrarPartidasReportes').AsString = 'Anteriores' then begin
        //Se imprimen partidas anteriores, revisar que el reporte en cuestion este en el rango de fechas
        if (dParamFecha >= connection.QryBusca.FieldByName('dFechaIniPReportes').AsDateTime) and
          (dParamFecha <= connection.QryBusca.FieldByName('dFechaFinPReportes').AsDateTime) then begin
          //la fecha esta en el rango, devolver 'sActividadAnterior'
          result := 'sActividadAnterior';
        end;
      end;
    end;
  end;
end;

procedure definirPeriodo(sParamContrato: string; dParamFecha: tDate);
var
  sSQLPer: string;
begin
  //buscarla en los rangos de la tabla reprogramacion_barco
  sSQLPer :=
    'select * from reprogramacion_barco ' +
    'where sContrato = :contrato ' +
    'and dFechaInicio <= :fecha ' +
    'and dFechaFinal >= :fecha';
  QryPeriodo.Active := false;
  QryPeriodo.SQL.Clear;
  QryPeriodo.SQL.Add(sSQLPer);
  QryPeriodo.ParamByName('contrato').AsString := global_contrato_barco;
  QryPeriodo.ParamByName('fecha').AsDate := dParamFecha;
  //estas son las fechas que se mandan al reporte
  QryPeriodo.Open;
end;


procedure procReporteDiarioCotemarMix(TOrigen: TComponent;
  tProcedure: tfrxGETvalueEvent;
  tDblClick: tfrxClickObjectEvent;
  sParamContrato: string;
  sParamOrden: string;
  sParamReporte: string;
  sParamConvenio: string;
  dParamFecha: TDate;
  sParamTurno: string;
  sParamDestino: string;
  lParamMostrarAnt: boolean = false; FormatosExp: string = ''; PermisosExp: string = ''); //(sParamContrato, sParamOrden, sParamReporte, sParamTurno, sParamConvenio: string; dParamFecha: tDate; sParamDestino: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent);
var
  Cta: Integer;
  sPaquete,
    sActividad: string;
  sBkPaquete: string;
  lEncontrado: Boolean;
  dAvance: Real;
  sTipoOrden: string;
  sListPaquetes: string;
  iNumeroBloques, j, k, i, x: Integer;
  ListaAnexos: TStringList;
  Indice: Integer;
  Embarcacion, NumeroPaquete, linea: string;
  lGerencial, lcontinua: boolean;

  {paqueteo...}
  MiWbs: string;
  iPos, NumPaq, Nivel: Integer;
  Q_Paquetes, QrCantInstall: tzReadOnlyquery;
  ArrayPaquetes: array[1..10, 1..2] of string;

  sHistorialPartidas: string;
begin
  // Creo los abjetos del reporte diario ...
  procCreateObject(tOrigen);

  NumeroPaquete := '';

  rDiario.OnGetValue := tProcedure;
  if Assigned(tDblClick) then
    rDiario.OnDblClickObject := tDblClick;
  definirPeriodo(sParamContrato, dParamFecha);


   {Llamamos la funcion para obtener la numeracion de partidas a mostrar}

  sHistorialPartidas := historialPartidas(sParamContrato, sParamOrden, dParamFecha, lParamMostrarAnt);
  if sHistorialPartidas = 'sNumeroActividad' then
    sHistorialPartidas := 'b.' + sHistorialPartidas + ', '
  else
     //sHistorialPartidas := 'b.' + sHistorialPartidas + ' as sNumeroActividad, ';
    sHistorialPartidas := '(if(b.' + sHistorialPartidas + ' <> "", b.' + sHistorialPartidas + ', b.sNumeroActividad)) as sNumeroActividad, ';

  {Obtenermos el numero de paquetes a mostrar..}
  Q_Paquetes := tzReadOnlyQuery.Create(tOrigen);
  Q_Paquetes.Connection := connection.zConnection;

  Q_Paquetes.Active := False;
  Q_Paquetes.SQL.Clear;
  Q_Paquetes.SQL.Add('select iNiveles from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Orden ');
  Q_Paquetes.ParamByName('Contrato').AsString := sParamContrato;
  Q_Paquetes.ParamByName('Orden').AsString := sParamOrden;
  Q_Paquetes.Open;

  if Q_Paquetes.RecordCount > 0 then
    Nivel := Q_Paquetes.FieldValues['iNiveles'];

  qryConfiguracionOrden.Active := False;
  qryConfiguracionOrden.SQL.Clear;
  qryConfiguracionOrden.SQL.Add('select * from ordenesdetrabajo where sContrato=:Contrato and sNumeroOrden=:Orden ');
  qryConfiguracionOrden.ParamByName('Contrato').AsString := sParamContrato;
  qryConfiguracionOrden.ParamByName('Orden').AsString := sParamOrden;
  qryConfiguracionOrden.Open;


  //QrCantInstall:=TzReadOnlyQuery.Create(nil);
  //QrCantInstall.Connection:=connection.zConnection;
  //QrCantInstall.SQL.Text:='select (select sum(b.dCantidad) from bitacoradeactividades b where b.sContrato = :contrato and b.sNumeroOrden = :orden '+
    //                      'and b.dIdFecha < :fecha and b.sIdTurno = :turno and b.sWbs =:Wbs and b.sNumeroActividad =:Actividad) as dCantidadAnterior, ' +
      //                    'ba.dCantidad as dCantidadActual, ao.dCantidad, ao.sMedida from actividadesxorden ao ' +
        //                  'left join bitacoradeactividades ba on (ao.sContrato = ba.sContrato and ao.sNumeroOrden = ba.sNumeroOrden '+
          //                'and ao.sWbs = ba.sWbs and ao.sNumeroActividad = ba.sNumeroActividad and ba.dIdFecha =:Fecha and ba.sIdTurno =:Turno '+
            //              'and ao.sIdConvenio =:Convenio and ao.sTipoActividad = "Actividad") ' +
              //            'where ao.sContrato =:Contrato and ao.sNumeroOrden =:Orden and ao.sWbs =:Wbs and ao.sNumeroActividad =:Actividad ' ;



  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.iFirmasReportes, c.sMostrarAvances,c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sReportesCIA, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
    'c.bImagen, c.sContrato, c.sNombre, c2.sCodigo, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, sImpresionPaquetes  ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.ParamByName('contrato').AsString := sParamContrato;
  QryConfiguracion.Open;

  QryReporteFotografico.Active := False;
  QryReporteFotografico.SQL.Clear;
  QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
    'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
  QryReporteFotografico.ParamByName('contrato').AsString := sParamContrato;
  QryReporteFotografico.ParamByName('Reporte').AsString := sParamReporte;
  QryReporteFotografico.Open;

  QryReporteDiario.Active := False;
  QryReporteDiario.SQL.Clear;
  if lCheckReporte() then
    QryReporteDiario.SQL.Text := 'Select r.*, o.sDescripcionCorta, o.sIdFolio, o.mDescripcion, o.sIdPlataforma, o.lMostrarAvanceProgramado, ' +
      'o.sOficioAutorizacion, t.sOrigenTierra, t.sDescripcion, p.sTema From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) ' +
      'left join platicasdeseguridad p on (p.scontrato = r.scontrato and p.snumeroorden = r.snumeroorden and p.didfecha = r.didfecha) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno'
  else
    QryReporteDiario.SQL.Text := 'Select r.*, o.sDescripcionCorta, o.sIdFolio, o.mDescripcion, o.lMostrarAvanceProgramado, o.sOficioAutorizacion, p.sTema ' +
      'From reportediario r ' +
      'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
      'left join platicasdeseguridad p on (p.scontrato = r.scontrato and p.snumeroorden = r.snumeroorden and p.didfecha = r.didfecha) ' +
      'Where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha = :Fecha And r.sIdTurno = :Turno';
  QryReporteDiario.ParamByName('contrato').AsString := sParamContrato;
  QryReporteDiario.ParamByName('orden').AsString := sParamOrden;
  QryReporteDiario.ParamByName('Fecha').AsDate := dParamFecha;
  QryReporteDiario.ParamByName('Turno').AsString := sParamTurno;
  QryReporteDiario.Open;

  // Obtener los avances correspondientes al día
  QryAvancesAcum.Active := False;
  QryAvancesAcum.SQL.Text := 'Select 0 as dAvanceGeneralAnterior, 0 as dAvanceGeneralDiario, 0 as dAvanceProgGeneralAnerior, 0 as dAvanceProgGeneralDiario, ' +
    'sum(a.dAvance) as dAvanceAnterior, (select b.dAvance from avancesglobalesxorden b where b.scontrato = :contrato and ' +
    'b.sidconvenio = :convenio and b.snumeroorden = :orden and b.didfecha = :fecha and b.sidturno = :turno) as dAvanceDiario, ' +
    '(select sum(d.dAvancePonderadoDia) from avancesglobales d where d.scontrato = :contrato and d.sidconvenio = :convenio and ' +
    'd.snumeroorden = :orden and d.didfecha < :fecha) as dAvanceProgAnterior, (select sum(d.dAvancePonderadoDia) from avancesglobales d ' +
    'where d.scontrato = :contrato and d.sidconvenio = :convenio and d.snumeroorden = :orden and d.didfecha = :fecha) as dAvanceProgDiario ' +
    'From avancesglobalesxorden a Where a.sContrato = :contrato And a.sIdConvenio = :convenio And ' +
    'a.sNumeroOrden = :orden And a.dIdFecha < :fecha And a.sIdTurno = :turno';
  QryAvancesAcum.ParamByName('contrato').AsString := sParamContrato;
  QryAvancesAcum.ParamByName('convenio').AsString := sParamConvenio;
  QryAvancesAcum.ParamByName('orden').AsString := sParamOrden;
  QryAvancesAcum.ParamByName('fecha').AsDate := dParamFecha;
  QryAvancesAcum.ParamByName('turno').AsString := sParamTurno;
  QryAvancesAcum.Open;
//RANGELITO
  // Seleccionar todos los registros de PU
  QryBitacora1.Close;
  QryBitacora1.SQL.Clear;
  QryBitacora1.SQL.Text := 'select a.sContrato, 0 as iConsec, a.iIdDiario, 1 as sPaquete, "C" as sLeyenda, b.iNivel, b.swbs, b.sWbsAnterior, b.sNumeroOrden, b.sTipoActividad, ' +
    sHistorialPartidas + '"" as sActividadAnterior, a.mDescripcion, a.lCancelada, ' +
    'a.mNotas, b.sMedida, 0 as dCantidadAnexo, b.dVentaMN, b.dCantidad, "" as sTipo, 0 as iFase, (select sum(c.dCantidad) ' +
    'from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha < a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dCantidadAnterior,(select sum(c.dCantidad) ' +
    'from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha = a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dCantidadActual, (select sum(c.dAvance) ' +
    'from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha < a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dAvanceAnterior, 0 as dAvanceActual, ' +
    '(select sum(c.dAvance) from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha = a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dAvance ' +
    'From bitacoradeactividades a ' +
    'inner join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.snumeroorden = a.snumeroorden and ' +
    'b.swbs = a.swbs and b.sTipoAnexo = "PU") Where a.sContrato = :contrato And a.sNumeroOrden = :orden And a.dIdFecha = :fecha And a.sIdTurno = :turno and ' +
    'a.sIdTipoMovimiento = "E" Group by b.sWbs order by sPaquete, a.lCancelada, b.iItemOrden';
  QryBitacora1.ParamByName('convenio').AsString := sParamConvenio;
  QryBitacora1.ParamByName('orden').AsString := sParamOrden;
  QryBitacora1.ParamByName('fecha').AsDate := dparamFecha;
  QryBitacora1.ParamByName('turno').AsString := sParamTurno;
  QryBitacora1.ParamByName('contrato').AsString := sParamContrato;
  QryBitacora1.Open;

  // Crear la estructura para Bitacora de Actividades
  mBitacora1.FieldDefs.Clear;
  mBitacoraMix.FieldDefs.Clear;

  ListaAnexos := TStringList.Create;
  ListaAnexos.Clear;

  for Cta := 0 to QryBitacora1.FieldDefs.Count - 1 do
    mBitacoraMix.FieldDefs.Add(QryBitacora1.FieldDefs.Items[Cta].Name, QryBitacora1.FieldDefs.Items[Cta].DataType, QryBitacora1.FieldDefs.Items[Cta].Size, QryBitacora1.FieldDefs.Items[Cta].Required);

  mBitacoraMix.Open;

  MiWbs := '';
  while not QryBitacora1.Eof do
  begin
      {Implementamos algoritmo de paqueteoo..}

      {Limpiamos el vector..}
    for iPos := 1 to 10 do
    begin
      ArrayPaquetes[iPos, 1] := '';
      ArrayPaquetes[iPos, 2] := '';
    end;

    if MiWbs <> QryBitacora1.FieldValues['sWbsAnterior'] then
    begin
      MiWbs := QryBitacora1.FieldValues['sWbsAnterior'];
      NumPaq := 0;
          {Determinamos los niveles..}
      for iPos := 1 to Nivel do
      begin
              {Empezamos buscando los paquetes..}
        Q_Paquetes.Active := False;
        Q_Paquetes.SQL.Clear;
        Q_Paquetes.SQL.Add('select sWbsAnterior, ' + sHistorialPartidas + 'mDescripcion from actividadesxorden b where sContrato =:Contrato ' +
          'and sIdConvenio =:Convenio and sNumeroOrden  =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
        Q_Paquetes.ParamByName('Contrato').AsString := sParamContrato;
        Q_Paquetes.ParamByName('Convenio').AsString := sParamConvenio;
        Q_Paquetes.ParamByName('Orden').AsString := sParamOrden;
        Q_Paquetes.ParamByName('Wbs').AsString := MiWbs;
        Q_Paquetes.Open;

              {Guardamos los niveles en Array..}
        if Q_Paquetes.RecordCount > 0 then
        begin
          MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
          ArrayPaquetes[iPos, 1] := Q_Paquetes.FieldValues['sNumeroActividad'];
          ArrayPaquetes[iPos, 2] := Q_Paquetes.FieldValues['mDescripcion'];
          Inc(NumPaq);
        end;
      end;
      MiWbs := QryBitacora1.FieldValues['sWbsAnterior'];
    end;

      {Ingresamos los paquetes del Array en orden al RxMemory Data.}
    if NumPaq > 0 then
    begin
      while NumPaq > 0 do
      begin
        mBitacoraMix.Append;
        mBitacoraMix.FieldValues['sContrato'] := sParamContrato;
        mBitacoraMix.FieldValues['iIdDiario'] := 0;
        mBitacoraMix.FieldValues['sNumeroActividad'] := ArrayPaquetes[NumPaq, 1];
        mBitacoraMix.FieldValues['mDescripcion'] := ArrayPaquetes[NumPaq, 2];
        mBitacoraMix.FieldValues['sTipoActividad'] := 'Paquete';
        mBitacoraMix.FieldValues['sPaquete'] := '1';
        mBitacoraMix.FieldValues['lCancelada'] := QryBitacora1.FieldValues['lCancelada'];
        mBitacoraMix.FieldValues['iConsec'] := mBitacoraMix.RecordCount + 1;
        mBitacoraMix.Post;
        DEC(NumPaq)
      end;
    end;
      {Termina porceso de paqueteoo..}

      {continua llenando la partida..}
    mBitacoraMix.Append;
    for Cta := 1 to mBitacoraMix.FieldDefs.Count do
      mBitacoraMix.Fields.FieldByNumber(Cta).AsVariant := QryBitacora1.Fields.FieldByNumber(Cta).AsVariant;

    mBitacoraMix.FieldValues['iConsec'] := mBitacoraMix.RecordCount + 1;
    mBitacoraMix.FieldByName('sPaquete').AsString := '0';
    if mBitacoraMix.FieldByName('mNotas').AsString <> '' then
      mBitacoraMix.FieldByName('mNotas').AsString := '' // Borrar el comentario si es que existe para que no reporte el avance
    else
      mBitacoraMix.FieldByName('mNotas').AsString := mBitacoraMix.FieldByName('mDescripcion').AsString; // Darle un valor a la nota para que genere su avance
    mBitacoraMix.Post;

    if QryBitacora1.FieldByName('mNotas').AsString <> '' then
    begin
        // Si tiene un comentario se deberá genenerar el registro de éste
      mBitacoraMix.Append;
      for Cta := 1 to mBitacoraMix.FieldDefs.Count do
        mBitacoraMix.Fields.FieldByNumber(Cta).AsVariant := QryBitacora1.Fields.FieldByNumber(Cta).AsVariant;
      mBitacoraMix.FieldValues['iConsec'] := mBitacoraMix.RecordCount + 1;
      mBitacoraMix.FieldByName('mDescripcion').AsString := QryBitacora1.FieldByName('mNotas').AsString;
      mBitacoraMix.FieldByName('iIdDiario').AsInteger := mBitacoraMix.FieldByName('iIdDiario').AsInteger * -1;
      mBitacoraMix.Post;
    end;

      // Generar lista de anexos
    if not ListaAnexos.Find(Copy(mBitacoraMix.FieldByName('sNumeroActividad').AsString, 1, 3), Indice) then
      ListaAnexos.Add(Copy(mBitacoraMix.FieldByName('sNumeroActividad').AsString, 1, 3));

      // Aqui se inserta el detalle de movimientos de la Partida.. <Fases>
//    QryBuscarAux.Active := False;
//    QryBuscarAux.SQL.Clear;
//    QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, b.dcantidadanterior, b.davanceanterior, b.dcantidadactual, b.davanceactual, b.mNotas From bitacoradealcances b ' +
//      'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
//      'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.iFase');
//    QryBuscarAux.Params.ParamByName('Contrato').AsString := sParamContrato;
//    QryBuscarAux.Params.ParamByName('Fecha').AsDate := dParamFecha;
//    QryBuscarAux.Params.ParamByName('turno').AsString := sParamTurno;
//    QryBuscarAux.Params.ParamByName('Orden').AsString := sParamOrden;
//    QryBuscarAux.Params.ParamByName('Wbs').AsString := QryBitacora1.FieldValues['sWbs'];
//    QryBuscarAux.Params.ParamByName('Actividad').AsString := QryBitacora1.FieldValues['sNumeroActividad'];
//    QryBuscarAux.Open;

    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear; {10/marzo/2012 : adal, sWbs a la tabla alcance}
    QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, b.dcantidadanterior, b.davanceanterior, b.dcantidadactual, b.davanceactual, b.mNotas  From bitacoradealcances b ' +
      ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and b.sWbs=ao.sWbs and b.sNumeroActividad=ao.sNumeroActividad  )   ' +
      'INNER JOIN alcancesxactividad a ON (ao.sContrato = a.sContrato And ao.sNumeroActividad = a.sNumeroActividad and ao.sWbsContrato=a.sWbs  And b.iFase = a.iFase ) ' +
      'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad and ao.sIdConvenio=:convenio  Order By b.iFase');
    QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAux.Params.ParamByName('turno').DataType := ftString;
    QryBuscarAux.Params.ParamByName('turno').Value := sParamTurno;
    QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAux.Params.ParamByName('Wbs').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Wbs').Value := QryBitacora1.FieldValues['sWbs'];
    QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Actividad').Value := QryBitacora1.FieldValues['sNumeroActividad'];
    QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
    QryBuscarAux.Open;

    if (QryBuscarAux.RecordCount > 0) then
    begin
      while not QryBuscarAux.Eof do
      begin
        mBitacoraMix.Append;
        mBitacoraMix.FieldValues['iConsec'] := mBitacoraMix.RecordCount + 1;
        mBitacoraMix.FieldValues['sContrato'] := sParamContrato;
        mBitacoraMix.FieldValues['sTipoActividad'] := 'Paquete';
        mBitacoraMix.FieldValues['sPaquete'] := '0';

        if Trim(QryBuscarAux.fieldByName('sReferencia').AsString) <> '' then
          mBitacoraMix.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'] + ' [REFERENCIA: ' + QryBuscarAux.FieldValues['sReferencia'] + ']'
        else
          mBitacoraMix.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'];
        mBitacoraMix.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvance'];
        if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradealcances where sContrato = :Contrato and ' +
            'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase ' +
            'Group By sWbs, sNumeroActividad');
          QryAcumulados.Params.ParamByName('contrato').AsString := sParamContrato;
          QryAcumulados.Params.ParamByName('Fecha').AsDate := dParamFecha;
          QryAcumulados.Params.ParamByName('Orden').AsString := sParamOrden;
          QryAcumulados.Params.ParamByName('Wbs').AsString := QryBitacora1.FieldValues['sWbs'];
          QryAcumulados.Params.ParamByName('Actividad').AsString := QryBitacora1.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Fase').AsInteger := QryBuscarAux.FieldValues['iFase'];
          QryAcumulados.Open;

          if QryAcumulados.RecordCount > 0 then
            mBitacoraMix.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance']
          else
            mBitacoraMix.FieldValues['dAvanceAnterior'] := 0;
        end
        else
        begin
          mBitacoraMix.FieldValues['dAvanceAnterior'] := QryBuscarAux.FieldValues['dAvanceAnterior'];
          mBitacoraMix.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvanceActual'];
        end;
        mBitacoraMix.Post;

              //Ponemos las notas por Fases de la partida..
        if QryBuscarAux.FieldByName('mNotas').AsString <> '' then
        begin
                  // Si tiene un comentario se deberá genenerar el registro de éste
          mBitacoraMix.Append;
          mBitacoraMix.FieldValues['iConsec'] := mBitacoraMix.RecordCount + 1;
          mBitacoraMix.FieldValues['sContrato'] := sParamContrato;
          mBitacoraMix.FieldValues['sTipoActividad'] := 'Fase';
          mBitacoraMix.FieldValues['sPaquete'] := '1';
          mBitacoraMix.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['mNotas'];
          mBitacoraMix.FieldValues['lCancelada'] := QryBitacora1.FieldValues['lCancelada'];
          mBitacoraMix.Post;
        end;

        QryBuscarAux.Next
      end;
    end;
    QryBitacora1.Next;
  end;


  QryBitacora1.Close;

  mBitacoraMix.First;
  dsmBitacoraMix.DataSet := mBitacoraMix;
  dsmBitacoraMix.UserName := 'dsmBitacoraMix';
  rDiario.DataSets.Add(dsmBitacoraMix);

  CadAnexos := ListaAnexos.CommaText;

  // Seleccionar los movimientos correspondientes a las partidas de Optatvias
  QryBitacora1.Close;
  QryBitacora1.SQL.Clear;
  QryBitacora1.SQL.Text := 'select a.sContrato, 1 as sPaquete, "C" as sLeyenda, b.swbs, b.sWbsAnterior, b.sNumeroOrden, b.sTipoActividad, ' +
    sHistorialPartidas + '"" as sActividadAnterior, a.mDescripcion, a.lCancelada, ' +
    'a.mNotas, b.sMedida, 0 as dCantidadAnexo, b.dVentaMN, b.dCantidad, "" as sTipo, 0 as iFase, (select sum(c.dCantidad) ' +
    'from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha < a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dCantidadAnterior,(select sum(c.dCantidad) ' +
    'from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha = a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dCantidadActual, (select sum(c.dAvance) ' +
    'from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha < a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dAvanceAnterior, 0 as dAvanceActual, ' +
    '(select sum(c.dAvance) from bitacoradeactividades c where c.scontrato = a.scontrato and c.snumeroorden = a.snumeroorden and c.didfecha = a.didfecha and ' +
    'c.sIdTurno = a.sidturno and c.swbs = a.swbs) as dAvance ' +
    'From bitacoradeactividades a ' +
    'inner join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.snumeroorden = a.snumeroorden and ' +
    'b.swbs = a.swbs and b.sTipoAnexo <> "PU") Where a.sContrato = :contrato And a.sNumeroOrden = :orden And a.dIdFecha = :fecha And a.sIdTurno = :turno and ' +
    'a.sIdTipoMovimiento = "E" Group by b.sWbs order by sPaquete, a.lCancelada, b.iItemOrden';
  QryBitacora1.ParamByName('contrato').AsString := sParamContrato;
  QryBitacora1.ParamByName('convenio').AsString := sParamConvenio;
  QryBitacora1.ParamByName('orden').AsString := sParamOrden;
  QryBitacora1.ParamByName('fecha').AsDate := dparamFecha;
  QryBitacora1.ParamByName('turno').AsString := sParamTurno;
  QryBitacora1.Open;

  // Crear la estructura para Bitacora de Actividades
  for Cta := 0 to QryBitacora1.FieldDefs.Count - 1 do
    mBitacora1.FieldDefs.Add(QryBitacora1.FieldDefs.Items[Cta].Name, QryBitacora1.FieldDefs.Items[Cta].DataType, QryBitacora1.FieldDefs.Items[Cta].Size, QryBitacora1.FieldDefs.Items[Cta].Required);
  mBitacora1.Open;

  MiWbs := '';
  while not QryBitacora1.Eof do
  begin
      {Implementamos algoritmo de paqueteoo..}

      {Limpiamos el vector..}
    for iPos := 1 to 10 do
    begin
      ArrayPaquetes[iPos, 1] := '';
      ArrayPaquetes[iPos, 2] := '';
    end;

    if MiWbs <> QryBitacora1.FieldValues['sWbsAnterior'] then
    begin
      MiWbs := QryBitacora1.FieldValues['sWbsAnterior'];
      NumPaq := 0;
          {Determinamos los niveles..}
      for iPos := 1 to Nivel do
      begin
              {Empezamos buscando los paquetes..}
        Q_Paquetes.Active := False;
        Q_Paquetes.SQL.Clear;
        Q_Paquetes.SQL.Add('select sWbsAnterior, ' + sHistorialPartidas + 'mDescripcion from actividadesxorden b where sContrato =:Contrato ' +
          'and sIdConvenio =:Convenio and sNumeroOrden  =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
        Q_Paquetes.ParamByName('Contrato').AsString := sParamContrato;
        Q_Paquetes.ParamByName('Convenio').AsString := sParamConvenio;
        Q_Paquetes.ParamByName('Orden').AsString := sParamOrden;
        Q_Paquetes.ParamByName('Wbs').AsString := MiWbs;
        Q_Paquetes.Open;

              {Guardamos los niveles en Array..}
        if Q_Paquetes.RecordCount > 0 then
        begin
          MiWbs := Q_Paquetes.FieldValues['sWbsAnterior'];
          ArrayPaquetes[iPos, 1] := Q_Paquetes.FieldValues['sNumeroActividad'];
          ArrayPaquetes[iPos, 2] := Q_Paquetes.FieldValues['mDescripcion'];
          Inc(NumPaq);
        end;
      end;
      MiWbs := QryBitacora1.FieldValues['sWbsAnterior'];
    end;

      {Ingresamos los paquetes del Array en orden al RxMemory Data.}
    if NumPaq > 0 then
    begin
      while NumPaq > 0 do
      begin
        mBitacora1.Append;
        mBitacora1.FieldValues['sContrato'] := sParamContrato;
        mBitacora1.FieldValues['sNumeroActividad'] := ArrayPaquetes[NumPaq, 1];
        mBitacora1.FieldValues['mDescripcion'] := ArrayPaquetes[NumPaq, 2];
        mBitacora1.FieldValues['sTipoActividad'] := 'Paquete';
        mBitacora1.FieldValues['sPaquete'] := '1';
        mBitacora1.FieldValues['lCancelada'] := QryBitacora1.FieldValues['lCancelada'];
        mBitacora1.Post;
        DEC(NumPaq)
      end;
    end;
      {Termina porceso de paqueteoo..}

      {continua llenando la partida..}

    mBitacora1.Append;
    for Cta := 1 to mBitacora1.FieldDefs.Count do
      mBitacora1.Fields.FieldByNumber(Cta).AsVariant := QryBitacora1.Fields.FieldByNumber(Cta).AsVariant;

    mBitacora1.FieldByName('sPaquete').AsString := '0';
    if mBitacora1.FieldByName('mNotas').AsString <> '' then
      mBitacora1.FieldByName('mNotas').AsString := '' // Borrar el comentario si es que existe para que no reporte el avance
    else
      mBitacora1.FieldByName('mNotas').AsString := mBitacora1.FieldByName('mDescripcion').AsString; // Darle un valor a la nota para que genere su avance

    mBitacora1.Post;

    if QryBitacora1.FieldByName('mNotas').AsString <> '' then
    begin
      // Si tiene un comentario se deberá genenerar el registro de éste
      mBitacora1.Append;
      for Cta := 1 to mBitacora1.FieldDefs.Count do
        mBitacora1.Fields.FieldByNumber(Cta).AsVariant := QryBitacora1.Fields.FieldByNumber(Cta).AsVariant;
      mBitacora1.FieldByName('mDescripcion').AsString := QryBitacora1.FieldByName('mNotas').AsString;
      mBitacora1.Post;
    end;

    // Aqui se inserta el detalle de movimientos de la Partida.. <Fases>
//    QryBuscarAux.Active := False;
//    QryBuscarAux.SQL.Clear;
//    QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, b.dcantidadanterior, b.davanceanterior, b.dcantidadactual, b.davanceactual, b.mNotas From bitacoradealcances b ' +
//      'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
//      'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.iFase');
//    QryBuscarAux.Params.ParamByName('Contrato').AsString := sParamContrato;
//    QryBuscarAux.Params.ParamByName('Fecha').AsDate := dParamFecha;
//    QryBuscarAux.Params.ParamByName('turno').AsString := sParamTurno;
//    QryBuscarAux.Params.ParamByName('Orden').AsString := sParamOrden;
//    QryBuscarAux.Params.ParamByName('Wbs').AsString := QryBitacora1.FieldValues['sWbs'];
//    QryBuscarAux.Params.ParamByName('Actividad').AsString := QryBitacora1.FieldValues['sNumeroActividad'];
//    QryBuscarAux.Open;
    QryBuscarAux.Active := False;
    QryBuscarAux.SQL.Clear; {10/marzo/2012 : adal, sWbs a la tabla alcance}
    QryBuscarAux.SQL.Add('Select b.dCantidad, b.dAvance, b.iFase, b.sReferencia, a.sdescripcion, b.dcantidadanterior, b.davanceanterior, b.dcantidadactual, b.davanceactual, b.mNotas  From bitacoradealcances b ' +
      ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and b.sWbs=ao.sWbs and b.sNumeroActividad=ao.sNumeroActividad  )   ' +
      'INNER JOIN alcancesxactividad a ON (ao.sContrato = a.sContrato And ao.sNumeroActividad = a.sNumeroActividad and ao.sWbsContrato=a.sWbs  And b.iFase = a.iFase ) ' +
      'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.sIdTurno = :Turno And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad and ao.sIdConvenio=:convenio  Order By b.iFase');
    QryBuscarAux.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarAux.Params.ParamByName('Fecha').DataType := ftDate;
    QryBuscarAux.Params.ParamByName('Fecha').Value := dParamFecha;
    QryBuscarAux.Params.ParamByName('turno').DataType := ftString;
    QryBuscarAux.Params.ParamByName('turno').Value := sParamTurno;
    QryBuscarAux.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Orden').Value := sParamOrden;
    QryBuscarAux.Params.ParamByName('Wbs').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Wbs').Value := QryBitacora1.FieldValues['sWbs'];
    QryBuscarAux.Params.ParamByName('Actividad').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Actividad').Value := QryBitacora1.FieldValues['sNumeroActividad'];
    QryBuscarAux.Params.ParamByName('Convenio').DataType := ftString;
    QryBuscarAux.Params.ParamByName('Convenio').Value := sParamConvenio;
    QryBuscarAux.Open;

    if QryBuscarAux.RecordCount > 0 then
    begin
      while not QryBuscarAux.Eof do
      begin
        mBitacora1.Append;
        mBitacora1.FieldValues['sContrato'] := sParamContrato;
        mBitacora1.FieldValues['sTipoActividad'] := 'Paquete';
        mBitacora1.FieldValues['sPaquete'] := '0';

        if Trim(QryBuscarAux.fieldByName('sReferencia').AsString) <> '' then
          mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'] + ' [REFERENCIA: ' + QryBuscarAux.FieldValues['sReferencia'] + ']'
        else
          mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['sDescripcion'];
        mBitacora1.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvance'];
        mBitacora1.FieldValues['mNotas'] := 'iv@n';

        if QryReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select sum(dAvance) as dAvance from bitacoradealcances where sContrato = :Contrato and ' +
            'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase ' +
            'Group By sWbs, sNumeroActividad');
          QryAcumulados.Params.ParamByName('contrato').AsString := sParamContrato;
          QryAcumulados.Params.ParamByName('Fecha').AsDate := dParamFecha;
          QryAcumulados.Params.ParamByName('Orden').AsString := sParamOrden;
          QryAcumulados.Params.ParamByName('Wbs').AsString := QryBitacora1.FieldValues['sWbs'];
          QryAcumulados.Params.ParamByName('Actividad').AsString := QryBitacora1.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Fase').AsInteger := QryBuscarAux.FieldValues['iFase'];
          QryAcumulados.Open;

          if QryAcumulados.RecordCount > 0 then
            mBitacora1.FieldValues['dAvanceAnterior'] := QryAcumulados.FieldValues['dAvance']
          else
            mBitacora1.FieldValues['dAvanceAnterior'] := 0;
        end
        else
        begin
          mBitacora1.FieldValues['dAvanceAnterior'] := QryBuscarAux.FieldValues['dAvanceAnterior'];
          mBitacora1.FieldValues['dAvance'] := QryBuscarAux.FieldValues['dAvanceActual'];
        end;
        mBitacora1.Post;

               //Ponemos las notas por Fases de la partida..
        if QryBuscarAux.FieldByName('mNotas').AsString <> '' then
        begin
                  // Si tiene un comentario se deberá genenerar el registro de éste
          mBitacora1.Append;
          mBitacora1.FieldValues['sContrato'] := sParamContrato;
          mBitacora1.FieldValues['sTipoActividad'] := 'Fase';
          mBitacora1.FieldValues['sPaquete'] := '1';
          mBitacora1.FieldValues['mDescripcion'] := QryBuscarAux.FieldValues['mNotas'];
          mBitacora1.FieldValues['lCancelada'] := QryBitacora1.FieldValues['lCancelada'];
          mBitacora1.Post;
        end;

        QryBuscarAux.Next
      end;
    end;

    QryBitacora1.Next;
  end;
  mBitacora1.First;
  dsmBitacora1.DataSet := mBitacora1;
  dsmBitacora1.UserName := 'dsmBitacora1';
  rDiario.DataSets.Add(dsmBitacora1);

  rptPersonal.Active := False;
  rptPersonal.Sql.Clear;

  rptTiempoExtra.Active := False;
  rptTiempoExtra.Sql.Clear;

  rptPersonalPU.Active := False;
  rptPersonalPU.Sql.Clear;

  rptEquipos.Active := False;
  rptEquipos.SQL.Clear;

  rptEquiposPU.Active := False;
  rptEquiposPU.SQL.Clear;

{  rptEquiposSeguridad.Active := False;
  rptEquiposSeguridad.SQL.Clear;}
  if lCheckReporte() then
  begin
    if QryConfiguracion.FieldValues['sOrdenPerEq'] = 'Pernocta' then
    begin
      rptPersonal.SQL.Add('select b.sContrato,p2.sIdPernocta, p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PU" and p.sIdTipoPersonal <> "PE-A" and p.sIdTipoPersonal <> "PEP") ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden   and p.sDescripcion not like "%TIEMPO%EXTRA%" ' +
        'Group By p2.sIdPernocta, p.sIdPersonal order by p2.sIdPernocta, p.iItemOrden asc');
      rptPersonal.ParamByName('contrato').AsString := sParamContrato;
      rptPersonal.ParamByName('orden').AsString := sParamOrden;
      rptPersonal.ParamByName('fecha').AsDate := dParamFecha;
      rptPersonal.ParamByName('Turno').AsString := sParamTurno;
      rptPersonal.Open;

      rptPersonalPU.SQL.Add('select b.sContrato, p2.sIdPernocta,p2.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal = "PU") ' +
        'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden  and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
        'Group By p2.sIdPernocta, p.sIdPersonal order by p2.sIdPernocta, p.iItemOrden asc');
      rptPersonalPU.ParamByName('contrato').AsString := sParamContrato;
      rptPersonalPU.ParamByName('orden').AsString := sParamOrden;
      rptPersonalPU.ParamByName('fecha').AsDate := dParamFecha;
      rptPersonalPU.ParamByName('Turno').AsString := sParamTurno;
      rptPersonalPU.Open;
    end
    else
    begin
      rptPersonal.SQL.Add('select b.sContrato, b.sIdPernocta,p2.sDescripcion as sPlataforma, p3.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal ' +
        'from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PU" and p.sIdTipoPersonal <> "PE-A" and p.sIdTipoPersonal <> "PEP") ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'left join embarcaciones p3 on (p3.sIdEmbarcacion = b.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden   and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
        'Group By p2.sIdPlataforma, p.sIdPersonal order by p2.sIdPlataforma, p.iItemOrden asc');
      rptPersonal.ParamByName('contrato').AsString := sParamContrato;
      rptPersonal.ParamByName('orden').AsString := sParamOrden;
      rptPersonal.ParamByName('fecha').AsDate := dParamFecha;
      rptPersonal.ParamByName('Turno').AsString := sParamTurno;
      rptPersonal.Open;

      rptPersonalPU.SQL.Add('select b.sContrato, b.sIdPernocta, p2.sDescripcion as sPlataforma, p3.sDescripcion as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal ' +
        'from bitacoradepersonal b ' +
        'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
        'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal = "PU" ) ' +
        'inner join plataformas p2 on (b.sIdPlataforma = p2.sIdPlataforma) ' +
        'left join embarcaciones p3 on (p3.sIdEmbarcacion = b.sIdPernocta) ' +
        'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden   and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
        'Group By p2.sIdPlataforma, p.sIdPersonal order by p2.sIdPlataforma, p.iItemOrden asc');
      rptPersonalPU.ParamByName('contrato').AsString := sParamContrato;
      rptPersonalPU.ParamByName('orden').AsString := sParamOrden;
      rptPersonalPU.ParamByName('fecha').AsDate := dParamFecha;
      rptPersonalPU.ParamByName('Turno').AsString := sParamTurno;
      rptPersonalPU.Open;
    end;

    rptEquipos.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad, b.sIdEquipo  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo and p.sIdTipoEquipo <> "PU") ' +
      'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo  ' +
      'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc');
    rptEquipos.ParamByName('contrato').AsString := sParamContrato;
    rptEquipos.ParamByName('orden').AsString := sParamOrden;
    rptEquipos.ParamByName('fecha').AsDate := dParamFecha;
    rptEquipos.ParamByName('equipo').AsString := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquipos.ParamByName('Turno').AsString := sParamTurno;
    rptEquipos.Open;

    rptEquiposPU.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad, b.sIdEquipo  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo and p.sIdTipoEquipo = "PU" ) ' +
      'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
      'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc');
    rptEquiposPU.ParamByName('contrato').AsString := sParamContrato;
    rptEquiposPU.ParamByName('orden').AsString := sParamOrden;
    rptEquiposPU.ParamByName('fecha').AsDate := dParamFecha;
    rptEquiposPU.ParamByName('equipo').AsString := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquiposPU.ParamByName('Turno').AsString := sParamTurno;
    rptEquiposPU.Open;
  end
  else
  begin
    rptPersonal.SQL.Add('select b.sContrato, "" as b.sPernocta,b.sIdPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal from bitacoradepersonal b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PU" and p.sIdTipoPersonal <> "PE-A" and p.sIdTipoPersonal <> "PEP") ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden   and p.sDescripcion not like "%TIEMPO%EXTRA%"   ' +
      'Group By p.sIdPersonal order by p.iItemOrden asc');
    rptPersonal.ParamByName('contrato').AsString := sParamContrato;
    rptPersonal.ParamByName('orden').AsString := sParamOrden;
    rptPersonal.ParamByName('fecha').AsDate := dParamFecha;
    rptPersonal.ParamByName('Turno').AsString := sParamTurno;
    rptPersonal.Open;

    rptPersonalPU.SQL.Add('select b.sContrato, "" as sPernocta,b.sIdPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal from bitacoradepersonal b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal = "PU" ) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden   and p.sDescripcion not like "%TIEMPO%EXTRA%"  ' +
      'Group By p.sIdPersonal order by p.iItemOrden asc');
    rptPersonalPU.ParamByName('contrato').AsString := sParamContrato;
    rptPersonalPU.ParamByName('orden').AsString := sParamOrden;
    rptPersonalPU.ParamByName('fecha').AsDate := dParamFecha;
    rptPersonalPU.ParamByName('Turno').AsString := sParamTurno;
    rptPersonalPU.Open;

    rptEquipos.SQL.Add('select b.sContrato, "" as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad, b.sIdEquipo  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo And p.lImprime = "Si" and p.sIdTipoEquipo <> "PU" ) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
      'Group By p.sIdEquipo order by p.iItemOrden asc');
    rptEquipos.ParamByName('contrato').AsString := sParamContrato;
    rptEquipos.ParamByName('orden').AsString := sParamOrden;
    rptEquipos.ParamByName('fecha').AsDate := dParamFecha;
    rptEquipos.ParamByName('equipo').AsString := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquipos.ParamByName('Turno').AsString := sParamTurno;
    rptEquipos.Open;

    rptEquiposPU.SQL.Add('select b.sContrato, "" as sPernocta, b.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad, b.sIdEquipo  from bitacoradeequipos b ' +
      'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
      'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo And p.lImprime = "Si" and p.sIdTipoEquipo = "PU" ) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
      'Group By p.sIdEquipo order by p.iItemOrden asc');
    rptEquiposPU.ParamByName('contrato').AsString := sParamContrato;
    rptEquiposPU.ParamByName('orden').AsString := sParamOrden;
    rptEquiposPU.ParamByName('fecha').AsDate := dParamFecha;
    rptEquiposPU.ParamByName('equipo').AsString := QryConfiguracion.FieldValues['sClaveSeguridad'];
    rptEquiposPU.ParamByName('Turno').AsString := sParamTurno;
    rptEquiposPU.Open;
  end;

  //Horas Extras
  rptTiempoExtra.SQL.Add('select p.sIdPersonal,b.sContrato,  b.sDescripcion, Sum(b.dCantidad) as dCantidad from bitacoradepersonal b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal <> "PE-A" and p.sIdTipoPersonal <> "PEP") ' +
    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden and p.sDescripcion like "%TIEMPO%EXTRA%" ' +
    ' Group By p.sIdPersonal order by p.iItemOrden asc');
  rptTiempoExtra.Params.ParamByName('contrato').DataType := ftString;
  rptTiempoExtra.Params.ParamByName('contrato').Value := sParamContrato;
  rptTiempoExtra.Params.ParamByName('orden').DataType := ftString;
  rptTiempoExtra.Params.ParamByName('orden').Value := sParamOrden;
  rptTiempoExtra.Params.ParamByName('fecha').DataType := ftDate;
  rptTiempoExtra.Params.ParamByName('fecha').Value := dParamFecha;
  rptTiempoExtra.Params.ParamByName('Turno').DataType := ftString;
  rptTiempoExtra.Params.ParamByName('Turno').Value := sParamTurno;
  rptTiempoExtra.Open;
  //Materiales reportados...
  rptMaterial.Active := False;
  rptMaterial.Sql.Clear;

  rptMaterial.SQL.Add(
    'SELECT a.*, ' +
    '(SELECT SUM(dCantidad) ' +
    'FROM bitacorademateriales b ' +
    'WHERE sContrato = :contrato ' +
    'AND dIdFecha < :fecha ' +
    'AND a.sWbs = b.sWbs ' +
    'AND a.sAnexo = b.sAnexo ' +
    'AND a.sIdMaterial = b.sIdMaterial)AS anterior ' +
    'FROM bitacorademateriales a ' +
    'WHERE sContrato = :contrato ' +
    'AND dIdFecha = :fecha');
  rptMaterial.ParamByName('contrato').AsString := sParamContrato;
  rptMaterial.ParamByName('fecha').AsDate := dParamFecha;
  rptMaterial.Open;

  QryAdmon.Close;
  QryAdmon.Sql.Text := 'select b.sContrato, b.sIdPernocta as sPernocta, b.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad, b.sIdPersonal from bitacoradepersonal b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.lImprime = "Si" and p.sIdTipoPersonal = "PE-A") ' +
    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden ' +
    'Group By p.sIdPersonal order by p.iItemOrden asc';
  QryAdmon.ParamByName('contrato').AsString := sParamContrato;
  QryAdmon.ParamByName('orden').AsString := sParamOrden;
  QryAdmon.ParamByName('fecha').AsDate := dParamFecha;
  QryAdmon.ParamByName('Turno').AsString := sParamTurno;
  QryAdmon.Open;

  //Primero el Id de la Embarcacion principal... OSA 2011 ivan,,
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate := dParamFecha;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    Embarcacion := connection.QryBusca.FieldValues['sIdEmbarcacion']
  else
    messageDLG('No existe una Vigencia de Embarcacion Principal', mtInformation, [mbOk], 0);

  QryPernoctas.Close;
  QryPernoctas.Sql.Text := 'select b.sContrato, p2.sDescripcion as sPernocta, Sum(b.dCantidad) as dCantidad, b.sTipoPernocta, c.sDescripcion as DescribePernocta from bitacoradepersonal b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And (p.lImprime = "Si" or p.lPernocta = "Si") and p.sIdTipoPersonal <> "PE-A") ' +
    'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
    'inner join cuentas c on (c.sIdCuenta = b.sTipoPernocta )' +
    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden and b.sIdPernocta =:Barco ' +
    'Group By b.sTipoPernocta order by b.sTipoPernocta asc';
  QryPernoctas.ParamByName('contrato').AsString := sParamContrato;
  QryPernoctas.ParamByName('Barco').AsString := Embarcacion;
  QryPernoctas.ParamByName('orden').AsString := sParamOrden;
  QryPernoctas.ParamByName('fecha').AsDate := dParamFecha;
  QryPernoctas.ParamByName('Turno').AsString := sParamTurno;
  QryPernoctas.Open;

  {LLenamos la memoria con los datos del personal con Pernoctas..}
  while not QryPernoctas.Eof do
  begin
    mPernocta.Append;
    mPernocta.FieldValues['sContrato'] := QryPernoctas.FieldValues['sContrato'];
    mPernocta.FieldValues['sPernocta'] := QryPernoctas.FieldValues['sPernocta'];
    mPernocta.FieldValues['dCantidad'] := QryPernoctas.FieldValues['dCantidad'];
    mPernocta.FieldValues['sTipoPernocta'] := QryPernoctas.FieldValues['sTipoPernocta'];
    mPernocta.FieldValues['DescribePernocta'] := QryPernoctas.FieldValues['DescribePernocta'];
    mPernocta.Post;
    QryPernoctas.Next;
  end;

  {Ahora consultamos las pernoctas asignadas directamente..}
  QryPernoctas.Close;
  QryPernoctas.Sql.Text := 'select b.sContrato, Sum(b.dCantidad) as dCantidad, b.sIdCuenta, c.sDescripcion as DescribePernocta from bitacoradepernocta_aux b ' +
    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
    'inner join cuentas c on (c.sIdCuenta = b.sIdCuenta )' +
    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden ' +
    'Group By b.sIdCuenta order by b.sIdCuenta asc';
  QryPernoctas.ParamByName('contrato').AsString := sParamContrato;
  QryPernoctas.ParamByName('orden').AsString := sParamOrden;
  QryPernoctas.ParamByName('fecha').AsDate := dParamFecha;
  QryPernoctas.ParamByName('Turno').AsString := sParamTurno;
  QryPernoctas.Open;

  {Ahora recorremos la memoria para sumar las Pernoctas..}
  if Qrypernoctas.RecordCount > 0 then
  begin
      {Si no se encntraron pernoctas de personal se ingresan como nuevos..}
    while not QryPernoctas.Eof do
    begin
      mPernocta.First;
      lContinua := True;
          {Verificamos si ya existe la Pernocta..}
      while not mPernocta.Eof do
      begin
        if mPernocta.FieldValues['sTipoPernocta'] = QryPernoctas.FieldValues['sIdCuenta'] then
        begin
          mPernocta.Edit;
          mPernocta.FieldValues['dCantidad'] := mPernocta.FieldValues['dCantidad'] + QryPernoctas.FieldValues['dCantidad'];
          mPernocta.Post;
          lContinua := False;
        end;
        mPernocta.Next;
      end;

      if lContinua then
      begin
              {En caso contrario se da de alta..}
        mPernocta.Append;
        mPernocta.FieldValues['sContrato'] := QryPernoctas.FieldValues['sContrato'];
        mPernocta.FieldValues['sPernocta'] := Embarcacion;
        mPernocta.FieldValues['dCantidad'] := QryPernoctas.FieldValues['dCantidad'];
        mPernocta.FieldValues['sTipoPernocta'] := QryPernoctas.FieldValues['sIdCuenta'];
        mPernocta.FieldValues['DescribePernocta'] := QryPernoctas.FieldValues['DescribePernocta'];
        mPernocta.Post;
      end;
      QryPernoctas.Next;
    end;
  end;
  {Termina modificacion de pernoctas ivan- dic-2010}

  {22/02/2012: adal, tenia mal la sentencia, tenia b.sIdTipoMovimiento en lugar de a.sIdTipoMovimiento}
  try
    QryNotas.Close;
    QryNotas.Sql.Text := 'select a.iIdDiario, if(b.iItemOrden = NULL, 1, 0) as iOrden, b.iItemOrden, a.sContrato, "0" as sIdComentario, a.mDescripcion ' +
      'from bitacoradeactividades a ' +
      'left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs) ' +
      'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :orden and a.sIdTurno = :turno and a.sIdTipoMovimiento = "N" and a.sIdTipoMovimiento<>"R" ' +
      'order by iOrden, b.iItemOrden';
    QryNotas.ParamByName('contrato').AsString := sParamContrato;
    QryNotas.ParamByName('convenio').AsString := sParamConvenio;
    QryNotas.ParamByName('orden').AsString := sParamOrden;
    QryNotas.ParamByName('turno').AsString := sParamTurno;
    QryNotas.ParamByName('fecha').AsDate := dParamFecha;
    QryNotas.Open;
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
    end;

  end;

  mNotas.FieldDefs.Clear;
  for Cta := 0 to QryNotas.FieldDefs.Count - 1 do
    mNotas.FieldDefs.Add(QryNotas.FieldDefs.Items[Cta].Name, QryNotas.FieldDefs.Items[Cta].DataType, QryNotas.FieldDefs.Items[Cta].Size, QryNotas.FieldDefs.Items[Cta].Required);
  mNotas.Open;

  QryNotas.First;
  while not QryNotas.Eof do
  begin
    mNotas.Append;
    for Cta := 1 to mNotas.FieldDefs.Count do
      mNotas.Fields.FieldByNumber(Cta).AsVariant := QryNotas.Fields.FieldByNumber(Cta).AsVariant;
    mNotas.FieldByName('sIdComentario').AsString := IntToStr(mNotas.RecordCount);
    mNotas.Post;

    QryNotas.Next;
  end;

  mNotas.First;
  dsmNotas.DataSet := mNotas;
  dsmNotas.UserName := 'dsmNotas';
  rDiario.DataSets.Add(dsmNotas);

  TiempoMuerto.Active := False;
  TiempoMuerto.SQL.Clear;
  TiempoMuerto.SQL.Add('Select t.sNumeroOrden, t.sArea, t.sHoraInicio, t.sHoraFinal, t.dPersonal, t.dFrente, t.sTiempoMuerto, t.sJornada, t.mDescripcion, c.sDescripcion from jornadasdiarias t ' +
    'INNER JOIN tiposdemovimiento c ON (t.sContrato = c.sContrato And t.sIdTipoMovimiento = c.sIdTipoMovimiento) ' +
    'Where t.sContrato = :Contrato And t.dIdFecha = :Fecha And t.sNumeroOrden = :Orden ' +
    'And t.sIdTurno = :Turno And t.sTipo = "Tiempo Inactivo" Order By t.sHoraInicio ASC');
  TiempoMuerto.ParamByName('Contrato').AsString := sParamContrato;
  TiempoMuerto.ParamByName('Fecha').AsDate := dParamFecha;
  TiempoMuerto.ParamByName('Orden').AsString := sParamOrden;
  TiempoMuerto.ParamByName('turno').AsString := sParamTurno;
  TiempoMuerto.Open;
  sJornadasSuspendidas := '00:00';
  while not TiempoMuerto.Eof do
  begin
    sJornadasSuspendidas := sfnSumaHoras(sJornadasSuspendidas, TiempoMuerto.FieldValues['sJornada']);
    TiempoMuerto.Next
  end;

  QryOrdenesdeTrabajo.Active := False;
  QryOrdenesdeTrabajo.SQL.Clear;
  QryOrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, sIdTipoOrden from ordenesdetrabajo where sContrato = :Contrato and sIdTipoOrden <> :Tipo');
  QryOrdenesdeTrabajo.Params.ParamByName('Contrato').AsString := sParamContrato;
  QryOrdenesdeTrabajo.Params.ParamByName('Tipo').AsString := QryConfiguracion.FieldValues['sOrdenExtraordinaria'];
  QryOrdenesdeTrabajo.Open;
  if QryOrdenesdeTrabajo.RecordCount >= 1 then {08/marzo/2012 : adal,calcular los avances aunque sea solo un frente}
    procAvances(sParamContrato, sParamOrden, sParamConvenio, sParamTurno, dParamFecha, True, tOrigen)
  else
    procAvances(sParamContrato, sParamOrden, sParamConvenio, sParamTurno, dParamFecha, False, tOrigen);


  global_miReporte := QryConfiguracion.FieldValues['sReportesCIA'];
  rDiario.LoadFromFile(global_files + global_miReporte + '_rDiarioMix.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rDiario.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rDiario.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rDiarioFirmas(sParamContrato, sParamOrden, dParamFecha, tOrigen);


  if tOrigen.Name = 'frmValida' then
  begin
    if connection.configuracion.FieldValues['lEnviaCorreo'] = 'Si' then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select * from usuarios where sIdUsuario =:Usuario and lEnviaCorreo = "Si" ');
      connection.zCommand.Params.ParamByName('Usuario').AsString := global_usuario;
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
      begin
        connection.frxPDFExport1.ShowProgress := False;
        connection.frxPDFExport1.ShowDialog := False;
        rDiario.PrepareReport(true);
        GetTempPath(SizeOf(global_TempPath), global_TempPath);
        connection.frxPDFExport1.DefaultPath := global_TempPath; // se extrae la ruta de la carpeta temporal
        sNombreFrente := sParamOrden;
        sNombreFrente := AnsireplaceStr(sNombreFrente, '\', '');
        sNombreFrente := AnsireplaceStr(sNombreFrente, '/', '');
        sNombreFrente := AnsireplaceStr(sNombreFrente, '.', '');
        connection.frxPDFExport1.FileName := 'ReporteDiario ' + sNombreFrente + ' ' + formatdatetime('dd-mm-yyyy hhnnss', now) + '.pdf';
        if rDiario.Export(connection.frxPDFExport1) then
        begin
          SendMail(connection.QryBusca2.FieldValues['sMailPrincipal'],
            connection.QryBusca2.FieldValues['clave'],
            connection.QryBusca2.FieldValues['sDestino'],
            connection.QryBusca2.FieldValues['sCC'],
            connection.QryBusca2.FieldValues['sCCO'],
            connection.QryBusca2.FieldValues['sAsunto'],
            connection.frxPDFExport1.FileName,
            connection.QryBusca2.FieldValues['sContenido']);
        end;
      end
    end;
  end
  else
  begin
    if global_reportes_fecha then
    begin
      connection.frxPDFExport1.ShowProgress := False;
      connection.frxPDFExport1.ShowDialog := False;
      rDiario.PrepareReport(true);
      connection.frxPDFExport1.DefaultPath := global_directorio; // se extrae la ruta de la carpeta temporal
      sNombreFrente := sParamOrden;
      sNombreFrente := AnsireplaceStr(sNombreFrente, '\', '');
      sNombreFrente := AnsireplaceStr(sNombreFrente, '/', '');
      sNombreFrente := AnsireplaceStr(sNombreFrente, '.', '');
      connection.frxPDFExport1.FileName := 'Reporte Diario ' + sParamContrato + ' ' + sNombreFrente + ' ' + formatdatetime('dd-mm-yyyy', dParamFecha) + '.pdf';
      rDiario.Export(connection.frxPDFExport1);
    end
    else
    begin
      if sParamDestino = 'Printer' then
        rDiario.Print
      else
        rDiario.ShowReport(FormatosExp, PermisosExp);
    end;
     // rDiario.ShowReport();

  end;

  procLimpia()
end;

end.

