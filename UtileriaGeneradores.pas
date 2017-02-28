unit UtileriaGeneradores;

interface
uses
  Windows, DateUtils, StrUtils, Dialogs, SysUtils, Math, Controls, adoDB, RxMemDS, DB, ShellAPI,
  frm_connection, frxClass, frxDBSet, Classes, global, variants, Graphics, ZDataset,
  DBCtrls, Forms, StdCtrls, RXDBCtrl, IdAttachmentFile, IdSSLOpenSSL, ZDbcIntfs, ComCtrls;

var
  RngTipoAjuste: Integer = 0;

  procedure procAlbumGeneradorGob(sParamContrato, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
  procedure procSemanalSinConImportes(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
  procedure rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent);
  procedure procNumeroGenerador(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procCaratulaGenerador(iParamNivel :integer; sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procCaratulaGeneradorPerf(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
  procedure procCaratulaGeneradorMod(iParamNivel :integer; sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procListadeVerificacion(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procHojasegGeneradores(sParamContrato, sParamEstimacion, sParamGenerador: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
  procedure procCaratulaPersonalEquipo(sParamContrato, sParamOrden, sParamConvenio, sTipo: string; dParamFechaI, dParamFechaT: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent);
  procedure procNumeroGeneradorDespiezado(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
  procedure procGeneradorConversiones(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lReporte: string; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procFichaTecnica(sParamContrato, sParamConvenio, sParamActividad: string; tOrigen: TComponent; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procAlbumGeneradorDac(sParamContrato, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
  procedure rOrdenCambio(sParamContrato: string; iParamCedula: Integer; tOrigen: TComponent);
  procedure procReporteBarco(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
  procedure procAjustaBarco(dParamFecha: tDate; sParamEmbarcacion: string; sParamDecimales: Integer; tOrigen: TComponent);
  procedure procCaratulaGeneradorGob(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
  function funcSql(dbParamTable: TZReadOnlyQuery; sTable: string): WideString;
  function dfnGeneradoAnterior(sParamContrato, sParamActividad: string; iParamConsecutivo: Word; tOrigen: TComponent): Double;
  function rfnDecimal(sParamCantidad: string): Real;
  function sfnFactor(sParamHoraInicio: string; sParamHoraFinal: string; iParamJornadas: Real; iDecimales: Integer): string;
  function sProrrateaBarco(dParamFecha: TDate; sParamBarco: string; tOrigen: TComponent; iParamRedondeo: Integer): string;
  function SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, Adjunto, texto: ansistring): boolean;
  function Tamanyo(Archivo: string): Real;
  function espaces(paramNivel: Integer): string;
  function lCheckMaximized(): Boolean;
  function lVerificaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad: string; dParamFecha: tDate; iParamConsecutivo: Word; dParamCantidad: Double; tOrigen: TComponent): Byte;
  function lfnValidaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamGenerador: string; tOrigen: TComponent): Boolean;
  function xIntToLletres(Numero: LongInt): string;
  function xxIntToLletres(Valor: LongInt): string;

  type
  TEventHandlers = class // create a dummy class
    procedure ButtonClick(Sender: TObject);
  end;

var
  Propuesta_General, sNombreFrente: string;
  rDiario: TfrxReport;
  dsFichaTecnica: TfrxDBDataSet;
  QryReporteDiario: TZReadOnlyQuery;
  QryGenerador: TZReadOnlyQuery;
  QryReporteFotografico, qryReporteFotograficoCampo: TZReadOnlyQuery;
  Bitacora3: tZReadOnlyQuery;
  QryAcumulados: TZReadOnlyQuery;
  QryAlternos: TZReadOnlyQuery;
  TiempoMuerto: tZReadOnlyQuery;
  TiempoMuertoPersonal: tZReadOnlyQuery;
  QryMovimientosdePersonal: TZReadOnlyQuery;
  QryOrdenesdeTrabajo: TZReadOnlyQuery;
  QryBuscar: TZReadOnlyQuery;
  QryBuscarAux: TZReadOnlyQuery;
  Consolidado, Consolidadoeq, GruposHoras, GrupoPersonal: TZReadOnlyQuery;
  rptPersonal,
    rptTiempoExtra,
    rptEquipos,
    rptEquiposSeguridad: TZReadOnlyQuery;
  Permisos: TZReadOnlyQuery;
  QryConfiguracion: tZReadOnlyQuery;
  QryTrinomios: tZReadOnlyQuery;
  QryAuxiliar,
    QryPernoctas,
    QryPeriodo,
    QryExisteFoto,
    QryAdmon: tzReadOnlyQuery;
  Q_Paquetes, QrCantInstall,
  Tripulacion,
    TripulacionFlotel,
    TripulacionFlotelAdmon,
    Totales,
    TotalesEquipos : tzReadOnlyquery;

   //memorys
  mBitacora1,
    mPernocta,
    mBitacoraActividades,
    mMovimientos,
    mTiempoPersonal,
    mEquipoSeguridad,
    mPersonalxPartida,
    mMaterialxPartida,
    mResumenTiempos,
    mExistencias: TrxMemoryData;

  dsOrden,
    dsMovimientos,
    dsPersonal,
    dsTiempoExtra,
    dsConOt, dsSolicitado,
    dsGrupoPersonal,
    dsGrupoHoras,
    dsBitacora3,
    dsSeguridad,
    dsReporteDiario,
    dsConfiguracion,
    dsReporteFotografico,
    dsReporteFotograficoCampo,
    dsPermisos,
    dsEquipos,
    dsTiemposMuertos,
    dsTiempoMuertoPersonal,
    dsPersonalxPartida,
    dsMaterialxPartida,
    dsCentroCosto,
    dsmBitacora1,
    dsmBitacoraActividades,
    dsPernoctas,
    dsPeriodo,
    dsExisteFoto,
    dsAdmon,
    dsResumenTiempos,
    dsExistencias,
    dsTripulacion,
    dsTripulacionFlotel,
    dsTripulacionFlotelAdmon,
    dsTotales,
    dsTotalesEquipos : TfrxDBDataSet;

  dValorPonderado,
    dValorProgramado,
    dValorReal: Double;
  dValorMN,
    dValorDLL,
    dValorGenerado: Currency;
  dsActividadesxOrden: TfrxDBDataSet;
  dsIsometricoReferencia: TfrxDBDataSet;
  dsComentariosAdicionales: TfrxDBDataSet;
  qryComentariosAdicionales: TZReadOnlyQuery;
  qryPers13: TzReadOnlyQuery;
  QryC14: TZReadOnlyQuery;
  QryC15: TZReadOnlyQuery;
  QryC14te: TZReadOnlyQuery;
  dsC14: TfrxDBDataSet;
  dsC15: TfrxDBDataSet;
  dsC14te: TfrxDBDataSet;
  dsPers13: TfrxDBDataSet;
  mBitacora3: TrxMemoryData;
  dsComentariosxActividad: TfrxDBDataSet;
  qryComentariosxActividad: TZReadOnlyQuery;
  dsConfiguracionOrden: TfrxDBDataSet;
  qryConfiguracionOrden: TZReadOnlyQuery;

  Bitacora: TZQuery;
  MaximoDiario: TZQuery;

  qryOcupacionBarco: TZReadOnlyQuery;
  dsOcupacionBarco: TfrxDBDataSet;
  qryPernoctaBarco: TZReadOnlyQuery;
  dsPernoctaBarco: TfrxDBDataSet;

  //Esto es para la primera hoja de barco de programadas.
  Prorrateos,
    QryArribos,
    QryArribosVuelo,
    QryClimaReporte,
    QryRecursosReporte,
    QrynotasGenerales : TZReadOnlyQuery;

    detProrrateos,
    dsClimaReporte,
    ArribosReporte,
    ArribosReporteVuelo,
    dsRecursosReporte,
    dsNotasGenerales : TfrxDBDataSet;

  implementation
  const
  ProgPartes = 6;
  var
  AcumulaProgress: Real;

  procedure TEventHandlers.ButtonClick(Sender: TObject);
begin
  global_opcion_window := 'Si';
end;

function lVerificaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamWbs, sParamActividad: string; dParamFecha: tDate; iParamConsecutivo: Word; dParamCantidad: Double; tOrigen: TComponent): Byte;
var
  QryConsulta: tzReadOnlyQuery;
  dCantidadReportada: Double;
  dCantidadGenerada: Double;
  dSuma: Real;
begin

  QryConsulta := tzReadOnlyQuery.Create(tOrigen);
  QryConsulta.Connection := connection.zConnection;

  QryConsulta.Active := False;
  Qryconsulta.SQL.Clear;
  if sParamWbs <> '' then
    QryConsulta.SQL.Add('Select format(Sum(dCantidad),4) as dReportado from bitacoradeactividades ' +
      'Where sContrato = :Contrato and sNumeroOrden = :Orden And sWbs = :Wbs And ' +
      'sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sContrato')
  else
    QryConsulta.SQL.Add('Select format(Sum(dCantidad),4) as dReportado from bitacoradeactividades ' +
      'Where sContrato = :Contrato and sNumeroOrden = :Orden And ' +
      'sNumeroActividad = :Actividad And dIdFecha <= :Fecha Group By sContrato');
  QryConsulta.Params.ParamByName('contrato').DataType := ftString;
  QryConsulta.Params.ParamByName('contrato').Value := sParamContrato;
  QryConsulta.Params.ParamByName('orden').DataType := ftString;
  QryConsulta.Params.ParamByName('orden').Value := sParamOrden;
  if sParamWbs <> '' then
  begin
    QryConsulta.Params.ParamByName('wbs').DataType := ftString;
    QryConsulta.Params.ParamByName('wbs').Value := sParamWbs;
  end;
  QryConsulta.Params.ParamByName('actividad').DataType := ftString;
  QryConsulta.Params.ParamByName('actividad').Value := sParamActividad;
  QryConsulta.Params.ParamByName('fecha').DataType := ftDate;
  QryConsulta.Params.ParamByName('fecha').Value := dParamFecha;
  QryConsulta.Open;
  if QryConsulta.RecordCount > 0 then
    dCantidadReportada := QryConsulta.FieldValues['dReportado']
  else
    dCantidadReportada := 0;

  QryConsulta.Active := False;
  Qryconsulta.SQL.Clear;
  if sParamWbs <> '' then
    QryConsulta.SQL.Add('Select format(Sum(e.dCantidad),4) as dGenerado from estimacionxpartida e ' +
      'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden And e2.sNumeroGenerador = e.sNumeroGenerador And e2.iConsecutivo <= :Consecutivo) ' +
      'Where e.sContrato = :Contrato and e.sNumeroOrden = :Orden And e.sWbs = :Wbs And e.sNumeroActividad = :Actividad  Group By e.sContrato')
  else
    QryConsulta.SQL.Add('Select format(Sum(e.dCantidad),4) as dGenerado from estimacionxpartida e ' +
      'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden And e2.sNumeroGenerador = e.sNumeroGenerador And e2.iConsecutivo <= :Consecutivo) ' +
      'Where e.sContrato = :Contrato and e.sNumeroOrden = :Orden And e.sNumeroActividad = :Actividad  Group By e.sContrato');
  QryConsulta.Params.ParamByName('contrato').DataType := ftString;
  QryConsulta.Params.ParamByName('contrato').Value := sParamContrato;
  QryConsulta.Params.ParamByName('orden').DataType := ftString;
  QryConsulta.Params.ParamByName('orden').Value := sParamOrden;
  if sParamWbs <> '' then
  begin
    QryConsulta.Params.ParamByName('wbs').DataType := ftString;
    QryConsulta.Params.ParamByName('wbs').Value := sParamWbs;
  end;
  QryConsulta.Params.ParamByName('actividad').DataType := ftString;
  QryConsulta.Params.ParamByName('actividad').Value := sParamActividad;
  QryConsulta.Params.ParamByName('consecutivo').DataType := ftInteger;
  QryConsulta.Params.ParamByName('consecutivo').Value := iParamConsecutivo;
  QryConsulta.Open;
  if QryConsulta.RecordCount > 0 then
    dCantidadGenerada := QryConsulta.FieldValues['dGenerado']
  else
    dCantidadGenerada := 0;

  //soad -> Decimales de la sumatoria..
  dSuma := dCantidadGenerada + dParamCantidad;

  QryConsulta.Destroy;

  if dSuma > dCantidadReportada then
    if connection.configuracion.FieldValues['sSeguridadGenerador'] = 'Con Seguridad' then
              // 1. - Notificar que existe un excedente en la cantidad de la cantidad reportada contra la cantidad generada ...
              // 2. - Desea ir a la bitacora de actividades para reportar el faltante ?
              // Si la respuesta es Si, devolver el valor de 13
      if MessageDlg('La cantidad acumulada en los generadores de obra es superior a la cantidad manifestada en los reportes diarios. ' + chr(13) +
        'Cantidad acumulada hasta el Generador de Obra en la partida  ' + sParamActividad + '  (Acumulado + Cantidad a Generar) = ' + floatToStr(dCantidadGenerada + dParamCantidad) +
        ', Cantidad Manifestada en Reportes Diarios = ' + floatToStr(dCantidadReportada) + ', necesita reportar la cantidad de ' +
        floatToStr((dCantidadGenerada + dParamCantidad) - dCantidadReportada) + '. ' + chr(13) +
        'Desea ir a la bitacora de actividades y reportar el faltante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        result := 13
      else
        result := 0
    else
      result := 1
  else
    Result := 1
end;

function espaces(paramNivel: Integer): string;
var
  pos: integer;
  sCadena: string;
begin
  sCadena := '';
  for pos := 0 to (paramNivel * 2) do
    sCadena := sCadena + ' ';
  result := sCadena;
end;


procedure procAlbumGeneradorGob(sParamContrato, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  QryAuxiliar,
    rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select o.sIdFolio, o.sDescripcionCorta, i.sIsometrico, i.sPrefijo, i.iImagen, i.bIsometrico, i.mDescripcion, ao.sNumeroActividad, ao.mDescripcion as DescripcionActividad, '+
                      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioAutoriza, '+
                      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimacionxisometrico i '+
                      'inner join estimaciones e2 on (i.sContrato = e2.sContrato And e2.sNumeroOrden = i.sNumeroOrden And e2.sNumeroGenerador = i.sNumeroGenerador) '+
                      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) '+
                      'Inner Join ordenesdetrabajo o On (e2.sContrato=o.sContrato And e2.sNumeroOrden=o.sNumeroOrden) '+
                      'Left Join actividadesxorden ao on (i.sContrato = ao.sContrato and ao.sIdConvenio =:Convenio and i.sNumeroOrden = ao.sNumeroOrden '+
                      'and ao.sWbs = i.sWbs and ao.sNumeroActividad = i.sNumeroActividad) '+
                      'where i.sContrato =:Contrato And i.sNumeroOrden =:Orden And i.sNumeroGenerador =:Generador group by ao.sNumeroActividad, i.sIsometrico, i.iImagen '+
                      'Order By ao.iItemOrden, i.sIsometrico, i.iImagen');
  QryGenerador.Params.ParamByName('Contrato').DataType  := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value     := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType  := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value     := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType     := ftString;
  QryGenerador.Params.ParamByName('Orden').Value        := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value    := sParamGenerador;
  QryGenerador.Open;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  rCaratula.LoadFromFile(global_files +  global_MiReporte + '_AlbumGenerador.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procCaratulaGeneradorGob(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean );
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 30, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);
  rCaratula.DataSets.Add(dsCentroCosto);

//  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sWbs as sNumeroActividad, a.sMedida, a.dCantidad as dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxorden a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador And e1.sWbs = a.sWbs And e1.sNumeroActividad = a.sNumeroActividad) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sIdConvenio = :Convenio Order By a.iItemOrden, e1.sIsometrico, e1.sPrefijo');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];
      rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];
      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
            'sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;
          dCantidadOrden := 0;
          while not QryAcumulados.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
            QryAcumulados.Next
          end;


          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbs = :wbs) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sWbs');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('wbs').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;
          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbs = :wbs) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sWbs');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('wbs').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;
        dAcumuladoAnexo := 0;
        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
      end;

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;
  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  if QryConfiguracion.FieldValues['iFirmas'] = '3' then
    rCaratula.LoadFromFile(global_files + 'CaratulaGeneradorGob.fr3')
  else
    rCaratula.LoadFromFile(global_files + 'CaratulaGenerador4Gob.fr3');
  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;


procedure rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent);
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
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno and sNumeroOrden = :Orden And dIdFecha = :fecha');
    QryBuscarFirmas.Params.ParamByName('Orden').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Orden').Value := sParamOrden;
  end
  else
    QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno And dIdFecha = :fecha');
  QryBuscarFirmas.Params.ParamByName('Contrato').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Contrato').Value := sParamContrato;
  QryBuscarFirmas.Params.ParamByName('Turno').DataType := ftString;
  QryBuscarFirmas.Params.ParamByName('Turno').Value := sParamTurno;
  QryBuscarFirmas.Params.ParamByName('fecha').DataType := ftDate;
  QryBuscarFirmas.Params.ParamByName('fecha').Value := dParamFecha;
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
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sNumeroOrden = :Orden and sIdTurno =:Turno And dIdFecha <= :fecha Order By dIdFecha DESC');
      QryBuscarFirmas.Params.ParamByName('Orden').DataType := ftString;
      QryBuscarFirmas.Params.ParamByName('Orden').Value := sParamOrden;
    end
    else
      QryBuscarFirmas.SQL.Add('Select * from firmas where sContrato = :contrato and sIdTurno =:Turno And dIdFecha <= :fecha Order By dIdFecha DESC');

    QryBuscarFirmas.Params.ParamByName('Contrato').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Contrato').Value := sParamContrato;
    QryBuscarFirmas.Params.ParamByName('Turno').DataType := ftString;
    QryBuscarFirmas.Params.ParamByName('Turno').Value := sParamTurno;
    QryBuscarFirmas.Params.ParamByName('fecha').DataType := ftDate;
    QryBuscarFirmas.Params.ParamByName('fecha').Value := dParamFecha;
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

procedure procFichaTecnica(sParamContrato, sParamConvenio, sParamActividad: string; tOrigen: TComponent; FormatosExp: string = ''; PermisosExp: string = '');
var
  QryFichaTecnica: tzReadOnlyQuery;
  rFichaTecnica: TfrxReport;
begin
  QryFichaTecnica := tzReadOnlyQuery.Create(tOrigen);
  QryFichaTecnica.Connection := connection.zconnection;

  rFichaTecnica := TfrxReport.Create(tOrigen);
  rFichaTecnica.PreviewOptions.MDIChild := False;
  rFichaTecnica.PreviewOptions.Modal := True;
  rFichaTecnica.PreviewOptions.Maximized := lCheckMaximized();
  rFichaTecnica.PreviewOptions.ShowCaptions := False;
  rFichaTecnica.Previewoptions.ZoomMode := zmPageWidth;


  dsFichaTecnica := TfrxDBDataSet.Create(tOrigen);
  dsFichaTecnica.DataSet := QryFichaTecnica;
  dsFichaTecnica.UserName := 'dsFichaTecnica';
  QryFichaTecnica.Active := False;
  QryFichaTecnica.SQL.Clear;
  QryFichaTecnica.SQL.Add('Select f.*, a.mDescripcion, a.dCantidadAnexo, a.sMedida, a.sEspecificacion From fichatecnica f ' +
    'INNER JOIN actividadesxanexo a ON (a.sContrato = f.sContrato And a.sIdConvenio = :Convenio And a.sNumeroActividad = f.sNumeroActividad And a.sTipoActividad = "Actividad") ' +
    'Where f.sContrato = :Contrato And f.sNumeroActividad = :Actividad');
  QryFichaTecnica.Params.ParamByName('Contrato').DataType := ftString;
  QryFichaTecnica.Params.ParamByName('Contrato').Value := sParamContrato;
  QryFichaTecnica.Params.ParamByName('Convenio').DataType := ftString;
  QryFichaTecnica.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryFichaTecnica.Params.ParamByName('Actividad').DataType := ftString;
  QryFichaTecnica.Params.ParamByName('Actividad').Value := sParamActividad;
  QryFichaTecnica.Open;

  rFichaTecnica.LoadFromFile(global_files + 'rFichaTecnica.fr3');
  rFichaTecnica.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  //<ROJAS>
  rFichaTecnica.ShowReport(FormatosExp, PermisosExp); //
  rFichaTecnica.Destroy;
  QryFichaTecnica.Destroy;
  dsFichaTecnica.Destroy;
end;

function Tamanyo(Archivo: string): Real;
var
  Busca: TsearchRec;
begin
  if FindFirst(Archivo, faAnyFile, Busca) = 0 then
    Result := Busca.size / 1024
  else
    Result := 0;
end;

procedure procCaratulaGeneradorMod(iParamNivel :integer; sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad, WbsAnterior, WbsAnteriorPaquete, WbsActual: string;
  dCantidadOrden,
  dAcumuladoOrden,
  dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
  x, num, iNivel: integer;
  ArrayPaquetes: array[1..10, 1..4] of string;
begin
  //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select dac.descripcion, c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) INNER JOIN ( select (mDescripcion)AS descripcion from contratos c2 where c2.sContrato = c2.scodigo ) as dac Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  if QryConfiguracion.RecordCount > 0 then
    global_MiReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sTipoActividad', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sIdFolio', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sDescripcionCorta', ftString, 50, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sWbs', ftString, 75, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sNumeroAnexo', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sIsometricoReferencia', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);

  rxGenerador.FieldDefs.Add('anterior', ftFloat, 0, True);

  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sSimbolo', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion1', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion2', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion3', ftString, 20, True);
  rxGenerador.FieldDefs.Add('dConstante', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAlto', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dLargo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAncho', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dSubtotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dTotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sAnexo', ftString, 5, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);



  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select o.sDescripcionCorta, o.sIdFolio, a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, a.sWbsAnterior, ' +
    'e2.sContrato, e2.sNumeroOrden,e2.sNumeroAnexo, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio,  e1.sIsometricoReferencia, e1.iidGrupo, e1.iidPerimetro, e1.dConstante, e1.dAlto, e1.dAncho, e1.dLargo, e1.dSubtotal, a.sAnexo, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, (( select ifnull(sum(ep.dCantidad), 0)from estimacionxpartida ep ' +
    'inner join estimaciones es on (ep.sContrato = es.sContrato And ep.sNumeroOrden = es.sNumeroOrden And ep.sNumeroGenerador = es.sNumeroGenerador) inner join estimacionperiodo ed  ' +
    'on (es.sContrato =  ed.sContrato And es.iNumeroEstimacion = ed.iNumeroEstimacion)where ep.scontrato = e1.scontrato And  ep.sNumeroOrden =e1.sNumeroOrden  ' +
    'AND ep.sWbs = e1.sWbs and ep.sNumeroActividad =e1.sNumeroActividad and es.dFechaInicio <= e2.dFechaFinal) - e1.dCantidad )as Anterior from actividadesxanexo a inner join estimaciones e2 ' +
    'on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador and   replace(a.sWbs," ","") =replace(e1.sWbsContrato ," ","") AND    replace(a.sNumeroActividad," ","")=replace(e1.sNumeroActividad ," ","") ) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) inner Join ordenesdetrabajo o on (o.sContrato=e2.sContrato And o.sNumeroOrden=e2.sNumeroOrden) ' +
    'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Order By a.sWbs, a.iItemOrden, e1.sIsometrico, e1.sPrefijo ');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    WbsAnterior := 'iv@n';
    WbsActual   := 'iv@n';
    WbsAnteriorPaquete := 'iv@an';
    while not QryGenerador.Eof do
    begin
        WbsAnterior := QryGenerador.FieldValues['sWbsAnterior'];
        num    := 1;
        iNivel := iParamNivel;
       //Insertamos los paquetes de las partidas si aplican
       if WbsAnteriorPaquete <> WbsAnterior then
       begin
          WbsAnteriorPaquete := WbsAnterior;
          while iNivel > 0 do
          begin
              //Consultamos los paquetes que le corresponden a cada partida.
              connection.QryBusca.Active;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('select sWbs, sWbsAnterior, sNumeroActividad, mDescripcion, dPonderado '+
                                          'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
              connection.QryBusca.ParamByName('Contrato').AsString  := sParamContrato;
              connection.QryBusca.ParamByName('Convenio').AsString  := sParamConvenio;
              connection.QryBusca.ParamByName('Orden').AsString     := sParamOrden;
              connection.QryBusca.ParamByName('Wbs').AsString       := WbsAnterior;
              connection.QryBusca.Open;

              if connection.QryBusca.RecordCount > 0 then
              begin
                  WbsAnterior          := connection.QryBusca.FieldValues['sWbsAnterior'];
                  ArrayPaquetes[num,1] := connection.QryBusca.FieldValues['sNumeroActividad'];
                  ArrayPaquetes[num,2] := connection.QryBusca.FieldValues['mDescripcion'];
                  ArrayPaquetes[num,3] := 'Paquete';
                  inc(num);
               end;
              iNivel := iNivel - 1;
          end;
      end;

      dec(num);
      while num > 0 do
      begin
          //Insertamos las partidas y paquetes..
          rxGenerador.Append;
          rxGenerador.FieldValues['sContrato']          := QryGenerador.FieldValues['sContrato'];
          rxGenerador.FieldValues['sIdFolio']           := QryGenerador.FieldValues['sIdFolio'];
          rxGenerador.FieldValues['sDescripcionCorta']  := QryGenerador.FieldValues['sDescripcionCorta'];

          rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
          rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
          rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

          if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
            rxGenerador.FieldValues['lValida'] := True
          else
            rxGenerador.FieldValues['lValida'] := False;

          if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
            rxGenerador.FieldValues['lAutoriza'] := True
          else
            rxGenerador.FieldValues['lAutoriza'] := False;

          rxGenerador.FieldValues['sTipoActividad']   := 'Paquete';
          rxGenerador.FieldValues['sWbs']             := QryGenerador.FieldValues['sWbs'];
          rxGenerador.FieldValues['sNumeroActividad'] := ArrayPaquetes[num,1];
          rxGenerador.FieldValues['mDescripcion']     := ArrayPaquetes[num,2];
          dec(num);
      end;

      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato']          := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sIdFolio']           := QryGenerador.FieldValues['sIdFolio'];
      rxGenerador.FieldValues['sDescripcionCorta']  := QryGenerador.FieldValues['sDescripcionCorta'];

      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sTipoActividad']   := 'Actividad';
      rxGenerador.FieldValues['sWbs']             := QryGenerador.FieldValues['sWbs'];

      if iParamNivel > 0 then
      begin
          if WbsActual <> QryGenerador.FieldValues['sWbs'] then
          begin
              rxGenerador.FieldValues['sMedida']          := QryGenerador.FieldValues['sMedida'];
              rxGenerador.FieldValues['dConstante']       := QryGenerador.FieldValues['dCantidadAnexo'];
              rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
              rxGenerador.FieldValues['mDescripcion']     := QryGenerador.FieldValues['mDescripcion'];
              rxGenerador.FieldValues['sAnexo']           := QryGenerador.FieldValues['sAnexo'];
              WbsActual := QryGenerador.FieldValues['sWbs'];
          end;
      end
      else
      begin
          rxGenerador.FieldValues['sMedida']          := QryGenerador.FieldValues['sMedida'];
          rxGenerador.FieldValues['dConstante']       := QryGenerador.FieldValues['dCantidadAnexo'];
          rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
          rxGenerador.FieldValues['mDescripcion']     := QryGenerador.FieldValues['mDescripcion'];
          rxGenerador.FieldValues['sAnexo']           := QryGenerador.FieldValues['sAnexo'];
          WbsActual := QryGenerador.FieldValues['sWbs'];
      end;

      //Obtenemos la cantidad de Anexo de las partidas dentro del programa principal..
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
//      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
//        'sIdConvenio = :Convenio And sWbs = :Wbs And sTipoActividad = "Actividad"');
      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
                            'sIdConvenio = :Convenio And sNumeroActividad= :Actividad And sTipoActividad = "Actividad"');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
      QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
     // QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
     //QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').Value    := QryGenerador.FieldValues['sNumeroActividad'];

      QryAcumulados.Open;

      if QryAcumulados.RecordCount > 0 then
        rxGenerador.FieldValues['dCantidadAnexo'] := QryAcumulados.FieldValues['dCantidadAnexo']
      else
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
            'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbsContrato = :Wbs And sTipoActividad = "Actividad"');
          QryAcumulados.Params.ParamByName('Contrato').DataType  := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value     := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType     := ftString;
          QryAcumulados.Params.ParamByName('orden').Value        := sParamOrden;
          QryAcumulados.Params.ParamByName('Convenio').DataType  := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value     := sParamConvenio;
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value    := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value          := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dCantidadOrden := 0;
          while not QryAcumulados.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
            QryAcumulados.Next
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
            'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","")= :Wbs And replace(e.sNumeroActividad ," ","")= :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
          'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","") = :Wbs And replace(e.sNumeroActividad ," ","") = :Actividad) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sNumeroActividad');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;

        dAcumuladoAnexo := 0;
        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
      end;

      //coigo comentado, codigo eliminado,

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sIsometricoReferencia'] := QryGenerador.FieldValues['sIsometricoReferencia'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.FieldValues['sNumeroAnexo'] := QryGenerador.FieldValues['sNumeroAnexo'];
      rxGenerador.FieldValues['anterior'] := QryGenerador.FieldValues['Anterior'];

      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;

      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;
  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);

  if iParamNivel = 0 then
  begin
      if lParamMultiple then
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiple.fr3')
      else
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGenerador.fr3');
  end;

  if iParamNivel > 0 then
  begin
      if lParamMultiple then
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiplePaquete.fr3')
      else
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorPaqueteMod.fr3');
  end;

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
//  rCaratula.ShowReport(FormatosExp, PermisosExp);
    rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procListadeVerificacion(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

//  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, Sum(e1.dCantidad) as dGenerado, e1.iOrdenCambio, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group By a.sNumeroActividad Order By a.iItemOrden');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if QryGenerador.RecordCount > 0 then
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];
      rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('Select Sum(dCantidad) as dAcumulado from estimacionxpartida a ' +
        'inner join estimaciones b on (a.sContrato = b.sContrato And a.sNumeroOrden = b.sNumeroOrden And a.sNumeroGenerador = b.sNumeroGenerador And b.dFechaFinal <= :Fecha) ' +
        'Where a.sContrato = :Contrato And a.sNumeroActividad = :Actividad ' +
        'Group By a.sNumeroActividad');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Fecha').DataType := ftDate;
      QryAcumulados.Params.ParamByName('Fecha').Value := QryGenerador.FieldValues['dFechaFinal'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
      QryAcumulados.Open;
      dAcumuladoOrden := 0;
      if QryAcumulados.RecordCount > 0 then
        dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];



      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dGenerado'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;

      QryAuxiliar.Active := False;
      QryAuxiliar.SQL.Clear;
      QryAuxiliar.SQL.Add('Select f.sReferencia, e.dCantidad from anexo_psuministro e ' +
        'inner join anexo_suministro f on (e.sContrato = f.sContrato And e.iFolio = f.iFolio And f.dFechaAviso <= :Fecha) ' +
        'where e.sContrato = :Contrato and e.sNumeroActividad = :Actividad Order By f.sReferencia');
      QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Contrato').Value := global_Contrato;
      QryAuxiliar.Params.ParamByName('Actividad').DataType := ftString;
      QryAuxiliar.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
      QryAuxiliar.Params.ParamByName('Fecha').DataType := ftDate;
      QryAuxiliar.Params.ParamByName('Fecha').Value := QryGenerador.FieldValues['dFechaFinal'];
      QryAuxiliar.Open;
      dAcumuladoAnexo := 0;
      if QryAuxiliar.RecordCount > 0 then
        while not QryAuxiliar.Eof do
        begin
          if rxGenerador.FieldValues['mComentarios'] <> '' then
            rxGenerador.FieldValues['mComentarios'] := rxGenerador.FieldValues['mComentarios'] + ', ';

          rxGenerador.FieldValues['mComentarios'] := rxGenerador.FieldValues['mComentarios'] + QryAuxiliar.FieldValues['sReferencia'];
          dAcumuladoAnexo := dAcumuladoAnexo + QryAuxiliar.FieldValues['dCantidad'];
          QryAuxiliar.Next
        end;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoAnexo;

      rxGenerador.Post;
      QryGenerador.Next
    end
  end;
  if QryConfiguracion.FieldValues['iFirmas'] = '2' then
    rCaratula.LoadFromFile(global_files + 'ListadeVerificacion2.fr3');

  if QryConfiguracion.FieldValues['iFirmas'] = '3' then
    rCaratula.LoadFromFile(global_files + 'ListadeVerificacion.fr3');

  if QryConfiguracion.FieldValues['iFirmas'] = '4' then
    rCaratula.LoadFromFile(global_files + 'ListadeVerificacion4.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport(FormatosExp, PermisosExp);
  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;


function xxIntToLletres(Valor: LongInt): string;
const
  aUnitat: array[1..15] of string = ('UN', 'DOS', 'TRES', 'CUATRO', 'CINCO', 'SEIS',
    'SIETE', 'OCHO', 'NUEVE', 'DIEZ', 'ONCE', 'DOCE',
    'TRECE', 'CATORCE', 'QUINCE');
  aCentena: array[1..9] of string = ('CIENTO', 'DOSCIENTOS', 'TRESCIENTOS',
    'CUATROCIENTOS', 'QUINIENTOS', 'SEISCIENTOS',
    'SETECIENTOS', 'OCHOCIENTOS', 'NOVECIENTOS');
  aDecena: array[1..9] of string = ('DIECI', 'VEINTI', 'TREINTA', 'CUARENTA', 'CINCUENTA',
    'SESENTA', 'SETENTA', 'OCHENTA', 'NOVENTA');
var
  Centena, Decena, Unitat, Doble: LongInt;
  Linea: string;
begin
  if valor = 100 then Linea := ' CIEN ' {Maximo Valor sera 999, ejemplo con 123}
  else begin
    Linea := '';
    Centena := Valor div 100; {1 }
    Doble := Valor - (Centena * 100); {23}
    Decena := (Valor div 10) - (Centena * 10); {2 }
    Unitat := Valor - (Decena * 10) - (Centena * 100); {3 }
    if Centena > 0 then Linea := Linea + Acentena[centena] + ' ';
    if Doble > 0 then begin
      if Doble = 20 then Linea := Linea + ' VEINTE '
      else begin
        if doble < 16 then Linea := Linea + Aunitat[Doble]
        else begin
          Linea := Linea + ' ' + Adecena[Decena];
          if (Decena > 2) and (Unitat <> 0) then Linea := Linea + ' Y ';
          if Unitat > 0 then Linea := Linea + Aunitat[Unitat];
        end;
      end;
    end;
  end;
  Result := Linea;
end;

procedure procNumeroGeneradorDespiezado(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;
  dsTitulos: TfrxDBDataSet;
  rxGenerador: TrxMemoryData;
  qryBuscarTitulo, qryBuscarAct: TZReadOnlyQuery;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
    //Revisado por <ivan> ... 16 Sept 2010..
  qryBuscarTitulo := tzReadOnlyQuery.Create(tOrigen);
  qryBuscarTitulo.Connection := Connection.zConnection;

  qryBuscarAct := tzReadOnlyQuery.Create(tOrigen);
  qryBuscarAct.Connection := Connection.zConnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsGenerador);
  rCaratula.DataSets.Add(dsTitulos);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;

  //VAMOS A sacar los Titulos de los Encabezados de los Anexos "C"
  qryBuscarAct.Active := False;
  qryBuscarAct.SQL.Clear;
  qryBuscarAct.SQL.Add('select distinct ep.sNumeroActividad, a.sWbsAnterior, a.mDescripcion ' +
    'from estimacionxpartida ep ' +
    'inner join actividadesxanexo a On ' +
    '(a.sContrato=ep.sContrato And a.sNumeroActividad=ep.sNumeroActividad ' +
    'And a.sTipoActividad="Actividad") ' +
    'Where ep.sContrato=:Contrato  And a.sIdConvenio=:Convenio ' +
    'And ep.sNumeroGenerador=:Generador And a.sIdFase <> "" order by a.iItemOrden ');
  qryBuscarAct.Params.ParamByName('Contrato').DataType := ftString;
  qryBuscarAct.Params.ParamByName('Contrato').Value := sParamContrato;
  qryBuscarAct.Params.ParamByName('Generador').DataType := ftString;
  qryBuscarAct.Params.ParamByName('Generador').Value := sParamGenerador;
  qryBuscarAct.Params.ParamByName('Convenio').DataType := ftString;
  qryBuscarAct.Params.ParamByName('Convenio').Value := Global_Convenio;
  qryBuscarAct.Open;

  if qryBuscarAct.RecordCount > 0 then
  begin
    qryBuscarAct.First;
    while not qryBuscarAct.Eof do
    begin

      qryBuscarTitulo.Active := False;
      qryBuscarTitulo.SQL.Clear;
      qryBuscarTitulo.SQL.Add('Select sNumeroActividad, iItemOrden, mDescripcion From actividadesxanexo Where sContrato =:Contrato ' +
        'And sIdConvenio = :Convenio And sWbs =:Wbs And sTipoActividad="Paquete" ');
      qryBuscarTitulo.Params.ParamByName('Contrato').DataType := ftString;
      qryBuscarTitulo.Params.ParamByName('Contrato').Value := sParamContrato;
      qryBuscarTitulo.Params.ParamByName('Convenio').DataType := ftString;
      qryBuscarTitulo.Params.ParamByName('Convenio').Value := sParamConvenio;
      qryBuscarTitulo.Params.ParamByName('Wbs').DataType := ftString;
      qryBuscarTitulo.Params.ParamByName('Wbs').Value := qryBuscarAct.FieldValues['sWbsAnterior'];
      qryBuscarTitulo.Open;
      if qryBuscarTitulo.RecordCount > 0 then
      begin
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('update estimacionxpartida set sTitulo =:Titulo where sContrato =:Contrato and ' +
          'sNumeroGenerador =:Generador And sNumeroActividad =:Partida');
        Connection.zCommand.Params.ParamByName('Titulo').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Titulo').Value := qryBuscarTitulo.FieldValues['mDescripcion'];
        Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Generador').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Generador').Value := sParamGenerador;
        Connection.zCommand.Params.ParamByName('Partida').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Partida').Value := qryBuscarAct.FieldValues['sNumeroActividad'];
        Connection.zCommand.ExecSQL;
        qryBuscarAct.Next;
      end
      else
        qryBuscarAct.Next;
    end;
  end;

  if sParamReporte = 'Cliente' then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sWbsAnterior, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
      'e1.nPiezas, e1.sMarcaRev, e1.sSubMca, e1.sLongArea, e1.sLongAreaTotal, e1.sPesoxUnidad, e1.dPesoTotal,  ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, ' +
      'e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.sTitulo, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo ' +
      'from estimacionxpartida e1 inner join estimaciones e2 on ' +
      '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And ' +
      'e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs And a.sTipoActividad = "Actividad" ) Where ' +
      'e1.sContrato = :Contrato And a.sMedida <> "ACTIVIDAD" And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador  ' +
      'Order By a.iItemOrden, e1.sNumeroActividad, e1.sIsometricoReferencia, e1.sMarcaRev, e1.sSubMca ');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if QryGenerador.RecordCount > 0 then
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    if sParamReporte = 'Cliente' then
      rCaratula.LoadFromFile(global_files + 'NumerosGeneradoresDespiezados.fr3');

    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
    rCaratula.ShowReport();
  end;

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procReporteBarco(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent; FormatosExp: string = ''; PermisosExp: string = '');
var
    mFactores: TrxMemoryData;

    qryActividadesAnexos,
    Prorrateos,
    Prorrateos2,
    QryArribos,
    QryArribosVuelo,
    QryClimaReporte,
    QryDisposicionesReporte,
    QryRecursosReporte,
    QryRecursosEmbarcacion,
    QryResumenRecursos,
    QrynotasGenerales,
    Tripulacion,
    TripulacionFlotel,
    TripulacionFlotelAdmon,
    Totales, embarcacion,
    lista_personal,
    TotalesOperativos,
    QryReprograma,
    QryBarcoVigencia: TZReadOnlyQuery;

  dsClimaReporte,
    dsActividades,
    detProrrateos,
    detProrrateos2,
    ArribosReporte,
    ArribosReporteVuelo,
    DisposicionesReporte,
    dsRecursosReporte,
    dsRecursosEmbarcacion,
    dsResumenRecursos,
    dsNotasGenerales,
    dsTripulacion,
    dsTripulacionFlotel,
    dsTripulacionFlotelAdmon,
    dsTotales, dsEmbarcacion,
    dsLista_personal,
    dsTotalesOperativos: TfrxDBDataSet;

    rDiario: TfrxReport;

    transcurridos,diferencia, iValor: integer;
    fechaAntes: tDate;
    lTiempoxCia : boolean;
    CuentaP     : Real;
    Progress    : TProgressBar;
    sTurnoBarco, Cadena : string;

begin
  rDiario := TfrxReport.Create(tOrigen);
  AcumulaProgress := 0;

  qryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  qryConfiguracion.Connection := connection.zConnection;
  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

    // Recalcular las fases xorden

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sCodigo, c.iFirmas,c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, sReportesCIA, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, rd.sIdUsuarioValida, rd.sIdUsuarioResidente, rd.sIdUsuarioAutoriza, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, ' +
    'c.lImprimeExtraordinario, c.sIdEmbarcacion, c.iRedondeoEmbarcacion, c.iFirmasBarco, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c3.dFechaInicio, c3.dFechaFinal ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'inner join convenios c3 on (c2.sContrato = c3.sContrato and c.sIdConvenio = c3.sIdConvenio) ' +
    'inner join reportediario rd on (rd.sContrato = c2.sContrato and rd.sNumeroOrden =:Orden and rd.dIdFecha =:Fecha) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Params.ParamByName('Orden').DataType := ftString;
  QryConfiguracion.Params.ParamByName('Orden').Value := sParamOrden;
  QryConfiguracion.Params.ParamByName('Fecha').DataType := ftDate;
  QryConfiguracion.Params.ParamByName('Fecha').Value := dParamFecha;
  QryConfiguracion.Open;

  procAjustaBarco(dParamFecha, QryConfiguracion.FieldValues['sIdEmbarcacion'], QryConfiguracion.FieldValues['iRedondeoEmbarcacion'], tOrigen);

  embarcacion := TzReadOnlyQuery.Create(tOrigen);
  embarcacion.Connection := connection.zConnection;
  qryActividadesAnexos := TZReadOnlyQuery.Create(tOrigen);
  qryActividadesAnexos.Connection := connection.zConnection;
  Prorrateos := TZReadOnlyQuery.Create(tOrigen);
  Prorrateos.Connection := connection.zConnection;
  Prorrateos2 := TZReadOnlyQuery.Create(tOrigen);
  Prorrateos2.Connection := connection.zConnection;
  QryArribos := TZReadOnlyQuery.Create(tOrigen);
  QryArribos.Connection := connection.zConnection;
  QryArribosVuelo := TZReadOnlyQuery.Create(tOrigen);
  QryArribosVuelo.Connection := connection.zConnection;
  QryClimaReporte := TZReadOnlyQuery.Create(tOrigen);
  QryClimaReporte.Connection := connection.zConnection;
  qryDisposicionesReporte := TZReadOnlyQuery.Create(tOrigen);
  qryDisposicionesReporte.Connection := connection.zConnection;
  qryRecursosReporte := TZReadOnlyQuery.Create(tOrigen);
  qryRecursosReporte.Connection := connection.zConnection;
  qryRecursosEmbarcacion := TZReadOnlyQuery.Create(tOrigen);
  qryRecursosEmbarcacion.Connection := connection.zConnection;
  qryResumenRecursos := TZReadOnlyQuery.Create(tOrigen);
  qryResumenRecursos.Connection := connection.zConnection;
  qryNotasGenerales := TZReadOnlyQuery.Create(tOrigen);
  qryNotasGenerales.Connection := connection.zConnection;
  Tripulacion := TZReadOnlyQuery.Create(tOrigen);
  Tripulacion.Connection := connection.zConnection;
  TripulacionFlotel := TZReadOnlyQuery.Create(tOrigen);
  TripulacionFlotel.Connection := connection.zConnection;
  TripulacionFlotelAdmon := TZReadOnlyQuery.Create(tOrigen);
  TripulacionFlotelAdmon.Connection := connection.zConnection;
  Totales := TZReadOnlyQuery.Create(tOrigen);
  Totales.Connection := connection.zConnection;
  lista_personal := TZReadOnlyQuery.Create(tOrigen);
  lista_personal.Connection := connection.zConnection;
  TotalesOperativos := TZReadOnlyQuery.Create(tOrigen);
  TotalesOperativos.Connection := connection.zConnection;
  QryReprograma := TZReadOnlyQuery.Create(tOrigen);
  QryReprograma.Connection := connection.zConnection;
  QryBarcoVigencia := TZReadOnlyQuery.Create(tOrigen);
  QryBarcoVigencia.Connection := connection.zConnection;
  qryOcupacionBarco := TZReadOnlyQuery.Create(tOrigen);
  qryOcupacionBarco.Connection := connection.zConnection;
  qryPernoctaBarco := TZReadOnlyQuery.Create(tOrigen);
  qryPernoctaBarco.Connection := connection.zConnection;

  mFactores := TrxMemoryData.Create(tOrigen);
  mFactores.Active := False;
  mFactores.FieldDefs.Add('sContrato', ftString, 25, True);
  mFactores.FieldDefs.Add('dIdFecha', ftDate, 0, True);
  mFactores.FieldDefs.Add('dMOV', ftFloat, 0, True);
  mFactores.FieldDefs.Add('dDES', ftFloat, 0, True);
  mFactores.FieldDefs.Add('dCDP', ftFloat, 0, True);
  mFactores.FieldDefs.Add('dSDP', ftFloat, 0, True);
  mFactores.FieldDefs.Add('dESP', ftFloat, 0, True);
  mFactores.FieldDefs.Add('dCIA', ftFloat, 0, True);
  mFactores.FieldDefs.Add('sMov_1', ftString, 5, True);
  mFactores.FieldDefs.Add('sMov_2', ftString, 5, True);
  mFactores.FieldDefs.Add('sMov_3', ftString, 5, True);
  mFactores.FieldDefs.Add('sMov_4', ftString, 5, True);
  mFactores.FieldDefs.Add('sMov_5', ftString, 5, True);
  mFactores.FieldDefs.Add('sMov_6', ftString, 5, True);
  mFactores.Active := True;

  dsPernoctaBarco := TfrxDBDataSet.Create(tOrigen);
  dsPernoctaBarco.DataSet := qryPernoctaBarco;
  dsPernoctaBarco.UserName := 'dsPernoctaBarco';

  dsOcupacionBarco := TfrxDBDataSet.Create(tOrigen);
  dsOcupacionBarco.DataSet := qryOcupacionBarco;
  dsOcupacionBarco.UserName := 'dsOcupacionBarco';

  dsActividades := TfrxDBDataSet.Create(tOrigen);
  dsActividades.DataSet := qryActividadesAnexos;
  dsActividades.UserName := 'Actividades';

  detProrrateos := TfrxDBDataSet.Create(tOrigen);
  detProrrateos.DataSet := Prorrateos;
  detProrrateos.UserName := 'detProrrateos';

  detProrrateos2 := TfrxDBDataSet.Create(tOrigen);
  detProrrateos2.DataSet := mFactores;
  detProrrateos2.UserName := 'detProrrateos2';

  ArribosReporte := TfrxDBDataSet.Create(tOrigen);
  ArribosReporte.DataSet := QryArribos;
  ArribosReporte.UserName := 'ArribosReporte';

  ArribosReporteVuelo := TfrxDBDataSet.Create(tOrigen);
  ArribosReporteVuelo.DataSet := QryArribosVuelo;
  ArribosReporteVuelo.UserName := 'ArribosReporteVuelo';

  dsClimaReporte := TfrxDBDataSet.Create(tOrigen);
  dsClimaReporte.DataSet := QryClimaReporte;
  dsClimaReporte.UserName := 'dsClimaReporte';

  DisposicionesReporte := TfrxDBDataSet.Create(tOrigen);
  DisposicionesReporte.DataSet := qryDisposicionesReporte;
  DisposicionesReporte.UserName := 'DisposicionesReporte';

  dsRecursosReporte := TfrxDBDataSet.Create(tOrigen);
  dsRecursosReporte.DataSet := qryRecursosReporte;
  dsRecursosReporte.UserName := 'dsRecursosReporte';

  dsRecursosEmbarcacion := TfrxDBDataSet.Create(tOrigen);
  dsRecursosEmbarcacion.DataSet := QryRecursosEmbarcacion;
  dsRecursosEmbarcacion.UserName := 'dsRecursosEmbarcacion';

  dsResumenRecursos := TfrxDBDataSet.Create(tOrigen);
  dsResumenRecursos.DataSet := QryResumenRecursos;
  dsResumenRecursos.UserName := 'dsResumenRecursos';

  dsNotasGenerales := TfrxDBDataSet.Create(tOrigen);
  dsNotasGenerales.DataSet := qryNotasGenerales;
  dsNotasGenerales.UserName := 'dsNotasGenerales';

  dsTripulacion := TfrxDBDataSet.Create(tOrigen);
  dsTripulacion.DataSet := Tripulacion;
  dsTripulacion.UserName := 'dsTripulacion';

  dsTripulacionFlotel := TfrxDBDataSet.Create(tOrigen);
  dsTripulacionFlotel.DataSet  := TripulacionFlotel;
  dsTripulacionFlotel.UserName := 'dsTripulacionFlotel';

  dsTripulacionFlotelAdmon := TfrxDBDataSet.Create(tOrigen);
  dsTripulacionFlotelAdmon.DataSet  := TripulacionFlotelAdmon;
  dsTripulacionFlotelAdmon.UserName := 'dsTripulacionFlotelAdmon';

  dsTotales := TfrxDBDataSet.Create(tOrigen);
  dsTotales.DataSet := Totales;
  dsTotales.UserName := 'dsTotales';

  dsLista_personal := TfrxDBDataSet.Create(tOrigen);
  dsLista_personal.DataSet := lista_personal;
  dsLista_personal.UserName := 'dsLista_personal';

  dsTotalesOperativos := TfrxDBDataSet.Create(tOrigen);
  dsTotalesOperativos.DataSet := TotalesOperativos;
  dsTotalesOperativos.UserName := 'dsTotalesOperativos';

  dsEmbarcacion := TfrxDBDataSet.Create(tOrigen);
  dsEmbarcacion.DataSet := embarcacion;
  dsEmbarcacion.UserName := 'dsEmbarcacion';

  rDiario.DataSets.Add(ArribosReporte);
  rDiario.DataSets.Add(ArribosReporteVuelo);
  rDiario.DataSets.Add(dsClimaReporte);
  rDiario.DataSets.Add(dsActividades);
  rDiario.DataSets.Add(detProrrateos);
  rDiario.DataSets.Add(detProrrateos2);
  rDiario.DataSets.Add(DisposicionesReporte);
  rDiario.DataSets.Add(dsRecursosReporte);
  rDiario.DataSets.Add(dsRecursosEmbarcacion);
  rDiario.DataSets.Add(dsResumenRecursos);
  rDiario.DataSets.Add(dsNotasGenerales);
  rDiario.DataSets.Add(dsTripulacion);
  rDiario.DataSets.Add(dsTripulacionFlotel);
  rDiario.DataSets.Add(dsTripulacionFlotelAdmon);
  rDiario.DataSets.Add(dsTotales);
  rDiario.DataSets.Add(dsLista_personal);
  rDiario.DataSets.Add(dsTotalesOperativos);
  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsOcupacionBarco);
  rDiario.DataSets.Add(dsPernoctaBarco);

  global_fecha_barco := dParamFecha;

  QryReprograma.Active := False;
  QryReprograma.SQL.Clear;
  QryReprograma.SQL.Add('select * from reprogramacion_barco where sContrato =:Contrato ');
  QryReprograma.ParamByName('Contrato').AsString := Global_Contrato_Barco;
  QryReprograma.Open;

    // Verificar si se cuenta con un objeto de progreso
  for iValor := 0 to tOrigen.ComponentCount - 1 do
    if (CompareText(tOrigen.Components[iValor].ClassName, 'tpanel') = 0) and (tOrigen.Components[iValor].Name = 'PanelProgress') then
      if (TWinControl(tOrigen.Components[iValor]).ControlCount = 5) and (CompareText(TWinControl(TWinControl(tOrigen.Components[iValor]).Controls[4]).Name, 'progressbar1') = 0) then
        Progress := TProgressBar(TWinControl(tOrigen.Components[iValor]).Controls[4]);

  if Assigned(Progress) then
  begin
    CuentaP := ((1 / ProgPartes) / (QryReprograma.RecordCount + 1)) * (Progress.Max - Progress.Min);
    AcumulaProgress := AcumulaProgress + CuentaP;
    Progress.Position := Trunc(AcumulaProgress);
  end;

  if QryReprograma.RecordCount > 0 then
  begin
    transcurridos := 0;
    global_dias_por_transcurrir := 0;
    global_dias_transcurridos := 0;
    while not QryReprograma.Eof do
    begin
      if Assigned(Progress) then
      begin
        AcumulaProgress := AcumulaProgress + CuentaP;
        Progress.Position := Trunc(AcumulaProgress);
      end;

      if dParamFecha > QryReprograma.FieldValues['dFechaFinal'] then
        transcurridos := transcurridos + QryReprograma.FieldValues['dDuracion'];

      if dParamFecha <= QryReprograma.FieldValues['dFechaFinal'] then
      begin
        diferencia := QryReprograma.FieldValues['dFechaFinal'] - dParamFecha;
        global_dias_por_transcurrir := diferencia;

        global_dias_transcurridos := transcurridos + (dParamFecha - QryReprograma.FieldValues['dFechaInicio']) + 1;
        QryReprograma.Last;
      end;
      QryReprograma.Next;
    end;
  end;

  qryOcupacionBarco.Active := false;
  qryOcupacionBarco.SQL.Clear;
  qryOcupacionBarco.SQL.Add('select sContrato, ' +
    ' dCantidad as dPernoctaFuera, ' +
    ' dCantidadBordo , ' +
    ' dCantidad + dCantidadBordo as dTotalPersonal, ' +
    ' (select dCapacidadTripulacion from contratos where sContrato = tripulacionpernocta.sContrato) as Capacidad, ' +
    '  mNotas, mEspacios ' +
    ' from ' +
    ' tripulacionpernocta where sContrato =:contrato and dIdFecha = :fecha and sIdTurno = :turno group by sContrato ');
  qryOcupacionBarco.ParamByName('contrato').AsString := global_contrato_barco;
  qryOcupacionBarco.ParamByName('fecha').AsDate := dParamFecha;
  qryOcupacionBarco.ParamByName('turno').AsString := sParamTurno;
  qryOcupacionBarco.Open;

  qryPernoctaBarco.Active := false;
  qryPernoctaBarco.SQL.Clear;
  qryPernoctaBarco.SQL.Add('select c.sIdPernocta, c.sDescripcion ,c.sMedida, '+
      '(select if(sum(dCantidad) is null,0,sum(dCantidad)) from bitacoradepersonal b where b.sTipoPernocta =c.sIdCuenta and '+
      'b.dIdFecha=:fecha ) as dCantidad '+
      'from cuentas c');
  qryPernoctaBarco.ParamByName('fecha').AsDate   := dParamFecha;
  qryPernoctaBarco.Open;

  QryBarcoVigencia.Active := False;
  QryBarcoVigencia.SQL.Clear;
  QryBarcoVigencia.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :FechaI and dFechaFinal >=:FechaF ');
  QryBarcoVigencia.ParamByName('Contrato').AsString := global_contrato_barco;
  QryBarcoVigencia.ParamByName('FechaI').AsDate := dParamFecha;
  QryBarcoVigencia.ParamByName('FechaF').AsDate := dParamFecha;
  QryBarcoVigencia.Open;

  sTurnoBarco := '';
  if QryBarcoVigencia.RecordCount = 0 then
    messageDLG('No existe una Vigencia de Embarcacion Principal!, ' + #13 + 'Favor de Registrala en el menu Administracion de Catalogos', mtInformation, [mbOk], 0);

  if QryBarcoVigencia.RecordCount = 1 then
    global_barco := QryBarcoVigencia.FieldValues['sIdEmbarcacion'];

  if QryBarcoVigencia.RecordCount > 1 then
  begin
    embarcacion.Active := False;
    embarcacion.SQL.Clear;
    embarcacion.SQL.Add('Select sHoraInicio, sHoraFinal, sIdPernocta from jornadasdiarias Where sContrato =:Contrato and dIdFecha = :Fecha ' +
      'and sNumeroOrden = :Orden and sIdTurno = :Turno ');
    embarcacion.Params.ParamByName('Contrato').AsString := sParamContrato;
    embarcacion.Params.ParamByName('Fecha').AsDate := dParamFecha;
    embarcacion.Params.ParamByName('Orden').AsString := sParamOrden;
    embarcacion.Params.ParamByName('Turno').AsString := sParamTurno;
    embarcacion.Open;

    if embarcacion.RecordCount > 0 then
    begin
      global_barco := embarcacion.FieldValues['sIdPernocta'];
      sTurnoBarco := ' and m.sHoraInicio >= "' + embarcacion.FieldValues['sHoraInicio'] + '"  and ' +
        ' m.sHoraFinal <= "' + embarcacion.FieldValues['sHoraFinal'] + '" ';
    end;

  end;

  embarcacion.Active := False;
  embarcacion.SQL.Clear;
  embarcacion.SQL.Add('Select sDescripcion from embarcaciones Where sContrato = :Contrato and sIdEmbarcacion =:Embarcacion And sTipo="Principal"');
  embarcacion.Params.ParamByName('Contrato').DataType := ftString;
  embarcacion.Params.ParamByName('Contrato').Value := Global_Contrato_Barco;
  embarcacion.Params.ParamByName('Embarcacion').DataType := ftString;
  embarcacion.Params.ParamByName('Embarcacion').Value := Global_barco;
  embarcacion.Open;

  if embarcacion.RecordCount > 0 then
    Global_nombre_Embarcacion := embarcacion.FieldValues['sDescripcion'];

    //Cargar el query de Actividades anexo
  qryActividadesAnexos.Active := False;
  qryActividadesAnexos.SQL.Clear;
  qryActividadesAnexos.SQL.Add('select me.sClasificacion as sIdFase, tm.iOrden, tm.sDescripcion, ' +
    'me.dIdFecha, sum(me.sFactor) sFactor from tiposdemovimiento tm ' +
    'inner join movimientosdeembarcacion me on (tm.sContrato=me.sContrato ' +
    'And tm.sIdTipoMovimiento=me.sClasificacion and me.dIdFecha=:Fecha and me.sIdEmbarcacion =:Embarcacion ) ' +
    'Where me.sContrato = :Contrato group by tm.sIdTipoMovimiento order by tm.iOrden');
  qryActividadesAnexos.ParamByName('Contrato').DataType := ftString;
  qryActividadesAnexos.ParamByName('Contrato').Value := sParamContrato;
  qryActividadesAnexos.ParamByName('Fecha').DataType := ftDate;
  qryActividadesAnexos.ParamByName('Fecha').Value := dParamFecha;
  qryActividadesAnexos.ParamByName('Embarcacion').Value := global_barco;
  qryActividadesAnexos.Open;

  //Cargar el query de prorrateos
  Prorrateos.Active := False;
  Prorrateos.Sql.Clear;
//  Prorrateos.Sql.Add('select f.sContrato, p.sDescripcion as sNumeroOrden, f.sFactor, me.sClasificacion, me.sIdFase, me.sTipo, ' +
  Prorrateos.Sql.Add('select if( c.sProrrateoBarco="*" or c.sProrrateoBarco is null, f.sContrato , c.sProrrateoBarco) as sContrato, p.sDescripcion as sNumeroOrden, f.sFactor, me.sClasificacion, me.sIdFase, me.sTipo, ' +
    'me.mDescripcion,  me.sHoraInicio,  me.sHoraFinal, me.dIdFecha, f.dPersonalOrden  from movimientosdeembarcacion me ' +
    'Inner join fasesxorden f on (f.dIdFecha=me.dIdFecha and f.iIdDiario=me.iIdDiario) ' +
    'Inner join contratos c on (c.sContrato=f.sContrato)  ' +
    'Inner join ordenesdetrabajo o on (o.sContrato = f.sContrato and o.sNumeroOrden = f.sNumeroOrden) ' +
    'Inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) ' +
    'Where me.sContrato=:Contrato and me.dIdFecha=:Fecha and me.sIdEmbarcacion =:Embarcacion order by me.sHoraInicio, sContrato');
  Prorrateos.ParamByName('Contrato').DataType := ftString;
  Prorrateos.ParamByName('Contrato').Value := sParamContrato;
  Prorrateos.ParamByName('Fecha').DataType := ftDate;
  Prorrateos.ParamByName('Fecha').Value := dParamFecha;
  Prorrateos.ParamByName('Embarcacion').Value := global_barco;
  Prorrateos.Open;

   //Cargar el query de resumen de prorrateos..
  Prorrateos2.Active := False;
  Prorrateos2.Sql.Clear;
//  Prorrateos2.Sql.Add('select f.sContrato , sum(f.sFactor) as sFactor, me.sClasificacion, me.sIdFase, me.sTipo, iOrden ' +
  Prorrateos2.Sql.Add('select if( c.sProrrateoBarco="*" or c.sProrrateoBarco is null, f.sContrato , c.sProrrateoBarco) as sContrato, sum(f.sFactor) as sFactor, me.sClasificacion, me.sIdFase, me.sTipo, iOrden ' +
    'from movimientosdeembarcacion me ' +
    'Inner join fasesxorden f on (f.dIdFecha=me.dIdFecha and f.iIdDiario=me.iIdDiario) ' +
    'Inner join contratos c on (c.sContrato=f.sContrato)  ' +
    'Inner join tiposdemovimiento t on (t.sContrato = me.sContrato and t.sIdTipoMovimiento = me.sClasificacion)' +
    'Where me.sContrato=:Contrato and me.dIdFecha=:Fecha and sIdEmbarcacion =:Embarcacion group by sTipo, sContrato  order by sContrato ');
  Prorrateos2.ParamByName('Contrato').DataType := ftString;
  Prorrateos2.ParamByName('Contrato').Value := sParamContrato;
  Prorrateos2.ParamByName('Fecha').DataType := ftDate;
  Prorrateos2.ParamByName('Fecha').Value := dParamFecha;
  Prorrateos2.ParamByName('Embarcacion').Value := global_barco;
  Prorrateos2.Open;

    // Verificar si se cuenta con un objeto de progreso
  for iValor := 0 to tOrigen.ComponentCount - 1 do
    if (CompareText(tOrigen.Components[iValor].ClassName, 'tpanel') = 0) and (tOrigen.Components[iValor].Name = 'PanelProgress') then
      if (TWinControl(tOrigen.Components[iValor]).ControlCount = 5) and (CompareText(TWinControl(TWinControl(tOrigen.Components[iValor]).Controls[4]).Name, 'progressbar1') = 0) then
        Progress := TProgressBar(TWinControl(tOrigen.Components[iValor]).Controls[4]);

  if Assigned(Progress) then
  begin
    CuentaP := ((1 / ProgPartes) / (Prorrateos2.RecordCount + 1)) * (Progress.Max - Progress.Min);
    AcumulaProgress := AcumulaProgress + CuentaP;
    Progress.Position := Trunc(AcumulaProgress);
  end;

  lTiempoxCia := false;
  if Prorrateos2.RecordCount > 0 then
  begin
    sNombreFrente := '';
    while not Prorrateos2.Eof do
    begin
      if Assigned(Progress) then
      begin
        AcumulaProgress := AcumulaProgress + CuentaP;
        Progress.Position := Trunc(AcumulaProgress);
      end;

      if sNombreFrente <> Prorrateos2.FieldValues['sContrato'] then
        mFactores.Append
      else
        mFactores.Edit;
      if Prorrateos2.FieldValues['iOrden'] = 1 then
        mFactores.FieldValues['dMOV'] := Prorrateos2.FieldValues['sFactor'];

      if Prorrateos2.FieldValues['iOrden'] = 2 then
        mFactores.FieldValues['dDES'] := Prorrateos2.FieldValues['sFactor'];

      if Prorrateos2.FieldValues['iOrden'] = 3 then
        mFactores.FieldValues['dCDP'] := Prorrateos2.FieldValues['sFactor'];

      if Prorrateos2.FieldValues['iOrden'] = 4 then
        mFactores.FieldValues['dSDP'] := Prorrateos2.FieldValues['sFactor'];

      if Prorrateos2.FieldValues['iOrden'] = 5 then
        mFactores.FieldValues['dESP'] := Prorrateos2.FieldValues['sFactor'];

      if Prorrateos2.FieldValues['iOrden'] = 6 then begin
        mFactores.FieldValues['dCIA'] := Prorrateos2.FieldValues['sFactor'];
        lTiempoxCia := true;
      end;

      mFactores.FieldValues['sContrato'] := Prorrateos2.FieldValues['sContrato'];
      mFactores.FieldValues['dIdFecha'] := dParamFecha;
      sNombreFrente := Prorrateos2.FieldValues['sContrato'];

      mFactores.Post;
      Prorrateos2.Next;
    end;
  end;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select t.sTipo, t.iOrden from tiposdemovimiento t ' +
    'inner join contratos c on (c.sContrato = t.sContrato and c.sTipoObra = "BARCO") ' +
    'where t.sContrato =:Contrato and t.sClasificacion = "Movimiento de Barco"');
  connection.zCommand.ParamByName('Contrato').AsString := sParamContrato;
  connection.zCommand.Open;

  for iValor := 0 to tOrigen.ComponentCount - 1 do
    if (CompareText(tOrigen.Components[iValor].ClassName, 'tpanel') = 0) and (tOrigen.Components[iValor].Name = 'PanelProgress') then
      if (TWinControl(tOrigen.Components[iValor]).ControlCount = 5) and (CompareText(TWinControl(TWinControl(tOrigen.Components[iValor]).Controls[4]).Name, 'progressbar1') = 0) then
        Progress := TProgressBar(TWinControl(tOrigen.Components[iValor]).Controls[4]);

  if Assigned(Progress) then
  begin
    CuentaP := ((1 / ProgPartes) / (connection.zCommand.RecordCount + 1)) * (Progress.Max - Progress.Min);
    AcumulaProgress := AcumulaProgress + CuentaP;
    Progress.Position := Trunc(AcumulaProgress);
  end;

  if connection.zCommand.RecordCount > 0 then
  begin
    mFactores.First;
    while not connection.zCommand.Eof do
    begin
      if Assigned(Progress) then
      begin
        AcumulaProgress := AcumulaProgress + CuentaP;
        Progress.Position := Trunc(AcumulaProgress);
      end;

      mFactores.Edit;
      if connection.zCommand.FieldValues['iOrden'] = 1 then
        mFactores.FieldValues['sMov_1'] := connection.zCommand.FieldValues['sTipo'];

      if connection.zCommand.FieldValues['iOrden'] = 2 then
        mFactores.FieldValues['sMov_2'] := connection.zCommand.FieldValues['sTipo'];

      if connection.zCommand.FieldValues['iOrden'] = 3 then
        mFactores.FieldValues['sMov_3'] := connection.zCommand.FieldValues['sTipo'];

      if connection.zCommand.FieldValues['iOrden'] = 4 then
        mFactores.FieldValues['sMov_4'] := connection.zCommand.FieldValues['sTipo'];

      if connection.zCommand.FieldValues['iOrden'] = 5 then
        mFactores.FieldValues['sMov_5'] := connection.zCommand.FieldValues['sTipo'];

      if not lTiempoxCia then
        mFactores.FieldValues['sMov_6'] := 'NADA';
      if (connection.zCommand.FieldValues['iOrden'] = 6) and (lTiempoxCia) then
        mFactores.FieldValues['sMov_6'] := connection.zCommand.FieldValues['sTipo'];

      mFactores.Post;
      connection.zCommand.Next;
    end;
  end;

  //Cargar el query de arribos
  qryArribos.Active := False;
  qryArribos.SQL.Clear;
  qryArribos.SQL.Add('Select m.sContrato, m.dIdFecha, m.sHoraInicio, m.sHoraFinal, mDescripcion, ' +
    'e.sIdTipoEmbarcacion from movimientosdeembarcacion m ' +
    'inner join embarcaciones e On ( m.sContrato=e.sContrato And m.sIdEmbarcacion=e.sIdEmbarcacion) ' +
    'Where m.dIdFecha= :fecha And m.sContrato= :contrato And m.sTipo = "ARRIBO" and sIdTipoEmbarcacion <> "AE" ' + sTurnoBarco + 'order by sHoraInicio');
  qryArribos.ParamByName('Contrato').DataType := ftString;
  qryArribos.ParamByName('Contrato').Value := sParamContrato;
  qryArribos.ParamByName('Fecha').DataType := ftDate;
  qryArribos.ParamByName('Fecha').Value := dParamFecha;
  qryArribos.Open;

  //Cargar el query de arribos
  qryArribosVuelo.Active := False;
  qryArribosVuelo.SQL.Clear;
  qryArribosVuelo.SQL.Add('Select m.sContrato, m.dIdFecha, m.sHoraInicio, m.sHoraFinal, mDescripcion, ' +
    'e.sIdTipoEmbarcacion from movimientosdeembarcacion m ' +
    'inner join embarcaciones e On ( m.sContrato=e.sContrato And m.sIdEmbarcacion=e.sIdEmbarcacion) ' +
    'Where m.dIdFecha= :fecha And m.sContrato= :contrato And m.sTipo = "ARRIBO" and sIdTipoEmbarcacion = "AE" ' + sTurnoBarco + 'order by sHoraInicio');
  qryArribosVuelo.ParamByName('Contrato').DataType := ftString;
  qryArribosVuelo.ParamByName('Contrato').Value := sParamContrato;
  qryArribosVuelo.ParamByName('Fecha').DataType := ftDate;
  qryArribosVuelo.ParamByName('Fecha').Value := dParamFecha;
  qryArribosVuelo.Open;

  //Cargar el query de Condiciones Climatologicas
  qryClimaReporte.Active := False;
  qryClimareporte.Sql.Clear;
  qryClimaReporte.Sql.Add('select max(cm.dCantidad) as maximo, cm.sCantidad, c.sDescripcion as sDescripcionTiempo, ' +
    'd.sDescripcion as Direccion ,c.sMedida from condicionesclimatologicas cm ' +
    'inner join condiciones c on (cm.iIdCondicion=c.iIdCondicion) ' +
    'inner join direcciones d on (cm.iIdDireccion=d.iIdDireccion) ' +
    'where cm.dIdFecha=:Fecha and cm.sContrato=:Contrato and cm.sHorario ="24:00" Group By sDescripcionTiempo');
  qryClimaReporte.ParamByName('Contrato').DataType := ftString;
  qryClimaReporte.ParamByName('Contrato').Value := sParamContrato;  //se coloca a 24:00 para que no se mezclez con el gerencial.
  qryClimaReporte.ParamByName('Fecha').DataType := ftDate;
  qryClimaReporte.ParamByName('Fecha').Value := dParamFecha;
  qryClimaReporte.Open;

  //Cargar el query de Movimientos de Disposiciones
  qryDisposicionesReporte.Active := False;
  qryDisposicionesReporte.Sql.Clear;
  qryDisposicionesReporte.Sql.Add('select m.sIdEmbarcacion, m.sHoraInicio, m.sHoraFinal, m.mDescripcion, ' +
    'e.sDescripcion as nomlancha  from movimientosdeembarcacion m ' +
    'Inner Join  embarcaciones e On (m.sContrato=e.sContrato And m.sIdEmbarcacion= e.sIdEmbarcacion) ' +
    'where m.dIdFecha=:Fecha And m.sContrato=:Contrato and m.sTipo="DISPOSICION" ' + sTurnoBarco +
    'order by e.sDescripcion, m.sHoraInicio');
  qryDisposicionesReporte.ParamByName('Contrato').DataType := ftString;
  qryDisposicionesReporte.ParamByName('Contrato').Value := sParamContrato;
  qryDisposicionesReporte.ParamByName('Fecha').DataType := ftDate;
  qryDisposicionesReporte.ParamByName('Fecha').Value := dParamFecha;
  qryDisposicionesReporte.Open;

  //Cargar el query de Recursos o mezclas embarcacion..
  qryRecursosReporte.Active := False;
  qryRecursosReporte.Sql.Clear;
  qryRecursosReporte.Sql.Add('select r.*, e.sTipo, re.sMedida, re.sDescripcion as concepto, e.sDescripcion from recursos r ' +
    'inner join recursosdeexistencias re on (r.iIdRecursoExistencia=re.iIdRecursoExistencia) ' +
    'inner join embarcaciones e on (e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion and e.sTipo = "Principal") ' +
    'where r.dIdFecha=:Fecha and r.sContrato=:Contrato and r.sIdEmbarcacion =:Embarcacion ');
  qryRecursosReporte.ParamByName('Contrato').DataType := ftString;
  qryRecursosReporte.ParamByName('Contrato').Value := sParamContrato;
  qryRecursosReporte.ParamByName('Fecha').DataType := ftDate;
  qryRecursosReporte.ParamByName('Fecha').Value := dParamFecha;
  qryRecursosReporte.ParamByName('Embarcacion').DataType := ftString;
  qryRecursosReporte.ParamByName('Embarcacion').Value := global_barco;
  qryRecursosReporte.Open;

   //Cargar el query de Recursos o mezclas embarcacioness
  QryRecursosEmbarcacion.Active := False;
  QryRecursosEmbarcacion.Sql.Clear;
  QryRecursosEmbarcacion.Sql.Add('select r.*, e.sTipo, re.sMedida, re.sDescripcion as concepto, e.sDescripcion from recursos r ' +
    'inner join recursosdeexistencias re on (r.iIdRecursoExistencia=re.iIdRecursoExistencia) ' +
    'inner join embarcaciones e on (e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion and e.sTipo = "Secundario") ' +
    'where r.dIdFecha=:Fecha and r.sContrato=:Contrato order by e.sDescripcion ');
  QryRecursosEmbarcacion.ParamByName('Contrato').DataType := ftString;
  QryRecursosEmbarcacion.ParamByName('Contrato').Value := sParamContrato;
  QryRecursosEmbarcacion.ParamByName('Fecha').DataType := ftDate;
  QryRecursosEmbarcacion.ParamByName('Fecha').Value := dParamFecha;
  QryRecursosEmbarcacion.Open;

    //Cargar el query de Resumen recursos...
  QryResumenRecursos.Active := False;
  QryResumenRecursos.Sql.Clear;
  QryResumenRecursos.Sql.Add('select r.*, re.sMedida, e.sDescripcion, re.sDescripcion as Concepto, e.sTipo from recursos r ' +
    'inner join recursosdeexistencias re on (r.iIdRecursoExistencia=re.iIdRecursoExistencia) ' +
    'inner join embarcaciones e on (e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion and re.lCombustible = "Si" ) ' +
    'where r.dIdFecha=:Fecha and r.sContrato=:Contrato order by r.iIdRecursoExistencia, e.sDescripcion ');
  QryResumenRecursos.ParamByName('Contrato').DataType := ftString;
  QryResumenRecursos.ParamByName('Contrato').Value := sParamContrato;
  QryResumenRecursos.ParamByName('Fecha').DataType := ftDate;
  QryResumenRecursos.ParamByName('Fecha').Value := dParamFecha;
  //QryResumenRecursos.ParamByName('Embarcacion').DataType := ftString;
  //QryResumenRecursos.ParamByName('Embarcacion').Value := global_barco;
  QryResumenRecursos.Open;

  //Cargar el query de Notas Generales
  qryNotasGenerales.Active := False;
  qryNotasGenerales.Sql.Clear;
  qryNotasGenerales.Sql.Add('select mDescripcion from bitacoradeactividades ' +
    'where sContrato=:Contrato and dIdFecha=:Fecha and sIdTipoMovimiento="B" and sIdTurno =:Turno ');
  qryNotasGenerales.ParamByName('Contrato').DataType := ftString;
  qryNotasGenerales.ParamByName('Contrato').Value := sParamContrato;
  qryNotasGenerales.ParamByName('Turno').DataType := ftString;
  qryNotasGenerales.ParamByName('Turno').Value := sParamTurno;
  qryNotasGenerales.ParamByName('Fecha').DataType := ftDate;
  qryNotasGenerales.ParamByName('Fecha').Value := dParamFecha;
  qryNotasGenerales.Open;

  //Vigencia de personal de tripulacion..
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select dFechaVigencia from categorias group by dFechaVigencia order by dFechaVigencia ');
  connection.zCommand.Open;

  for iValor := 0 to tOrigen.ComponentCount - 1 do
    if (CompareText(tOrigen.Components[iValor].ClassName, 'tpanel') = 0) and (tOrigen.Components[iValor].Name = 'PanelProgress') then
      if (TWinControl(tOrigen.Components[iValor]).ControlCount = 5) and (CompareText(TWinControl(TWinControl(tOrigen.Components[iValor]).Controls[4]).Name, 'progressbar1') = 0) then
        Progress := TProgressBar(TWinControl(tOrigen.Components[iValor]).Controls[4]);

  if Assigned(Progress) then
  begin
    CuentaP := ((1 / ProgPartes) / (connection.zCommand.RecordCount + 1)) * (Progress.Max - Progress.Min);
    AcumulaProgress := AcumulaProgress + CuentaP;
    Progress.Position := Trunc(AcumulaProgress);
  end;

  fechaAntes := date;
  if connection.zCommand.RecordCount > 0 then
  begin
    fechaAntes := connection.zCommand.FieldValues['dFechaVigencia'];
    while not connection.zCommand.Eof do
    begin
      if Assigned(Progress) then
      begin
        AcumulaProgress := AcumulaProgress + CuentaP;
        Progress.Position := Trunc(AcumulaProgress);
      end;

      if dParamFecha >= connection.zCommand.FieldValues['dFechaVigencia'] then
        fechaAntes := connection.zCommand.FieldValues['dFechaVigencia'];
      connection.zCommand.Next;
    end;
  end;

  // Ajustar el progreso exacto para detener de porma automatica el timer
  if Assigned(Progress) then
    Progress.Position := Progress.Max;

  Tripulacion.Active := False;
  Tripulacion.SQL.Clear;
  Tripulacion.SQL.Add(
    ' SELECT td.sOrden, o.sProrrateoBarco, c.sIdCategoria, td.dIdFecha, c.sDescripcion as sCategoria , t.sDescripcionGrupo as sDescripcion, Sum(td.iNacionales) as iNacionales,' +
    ' Sum(td.iExtranjeros) as iExtranjeros FROM tripulaciondiaria td '+
    ' INNER JOIN tripulacion t ON (t.sContrato = td.sContrato And t.sIdTripulacion = td.sIdTripulacion and t.dFechaVigencia =:FechaVig ) ' +
    ' INNER JOIN categorias c ON (t.sIdCategoria = c.sIdCategoria and c.dFechaVigencia =:FechaVig ) ' +
    ' LEFT JOIN contratos o on (o.sContrato = td.sOrden ) '+
    ' Where td.sContrato =:Contrato And td.dIdFecha = :Fecha and td.sIdTurno =:Turno ' +
    ' Group By td.sOrden, t.sIdTripulacionGrupo Order By td.sOrden, c.sIdCategoria, t.iOrden ');
  Tripulacion.ParamByName('Contrato').DataType := ftString;
  Tripulacion.ParamByName('Contrato').Value := sParamContrato;
  Tripulacion.ParamByName('Turno').DataType := ftString;
  Tripulacion.ParamByName('Turno').Value := sParamTurno;
  Tripulacion.ParamByName('Fecha').DataType := ftDate;
  Tripulacion.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Tripulacion.ParamByName('FechaVig').DataType := ftDate;
  Tripulacion.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Tripulacion.Open;

  //Personal de operacion pernoctando en otras embarcaicones, plataformas
  TripulacionFlotel.Active := False;
  TripulacionFlotel.SQL.Clear;
  TripulacionFlotel.SQL.Add('select b.dIdFecha, b.sIdPernocta, t.sDescripcion, sum(b.dCantidad) as dCantidad from bitacoradepersonal b '+
                            'inner join pernoctan t on (t.sIdPernocta = b.sIdPernocta) '+
                            'inner join personal p on (p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal and p.sIdTipoPersonal <> "PE-A") '+
                            'where b.dIdFecha =:Fecha and b.sIdPernocta <> :Barco group by b.sIdPernocta order by t.sDescripcion');
  TripulacionFlotel.ParamByName('Barco').DataType := ftString;
  TripulacionFlotel.ParamByName('Barco').Value    := global_barco;
  TripulacionFlotel.ParamByName('Fecha').DataType := ftDate;
  TripulacionFlotel.ParamByName('Fecha').Value    := dParamFecha;
  TripulacionFlotel.Open;

  //Personal administrativo pernoctando en otras embarcaciones..
  TripulacionFlotelAdmon.Active := False;
  TripulacionFlotelAdmon.SQL.Clear;
  TripulacionFlotelAdmon.SQL.Add('SELECT bp.dIdFecha, sum(bp.dCantidad) as dCantidad FROM bitacoradepersonal bp '+
                                 'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.lPernocta = "Si" and p.sIdTipoPersonal = "PE-A") '+
                                 'WHERE bp.dIdFecha =:fecha and bp.sIdPernocta <> :Barco and bp.sIdPernOcta <> "TIERRA" GROUP BY bp.dIdFecha');
  TripulacionFlotelAdmon.ParamByName('Barco').DataType := ftString;
  TripulacionFlotelAdmon.ParamByName('Barco').Value    := global_barco;
  TripulacionFlotelAdmon.ParamByName('Fecha').DataType := ftDate;
  TripulacionFlotelAdmon.ParamByName('Fecha').Value    := dParamFecha;
  TripulacionFlotelAdmon.Open;

  //Cargo totalizado
  TotalesOperativos.Active := False;
  TotalesOperativos.Sql.Clear;
  TotalesOperativos.Sql.Add('select t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen, t.lPersonalAnexo from tripulaciondiaria td ' +
    'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
    'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno and t.lPersonalAnexo = "Si" group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion');
  TotalesOperativos.ParamByName('Contrato').DataType := ftString;
  TotalesOperativos.ParamByName('Contrato').Value := sParamContrato;
  TotalesOperativos.ParamByName('Turno').DataType := ftString;
  TotalesOperativos.ParamByName('Turno').Value := sParamTurno;
  TotalesOperativos.ParamByName('Fecha').DataType := ftDate;
  TotalesOperativos.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  TotalesOperativos.ParamByName('FechaVig').DataType := ftDate;
  TotalesOperativos.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  TotalesOperativos.Open;

  Totales.Active := False;
  Totales.Sql.Clear;
  Totales.Sql.Add('select t.sDescripcion, sum(td.iNacionales) as nacionales, t.sMiGrupoResumen, t.lPersonalAnexo from tripulaciondiaria td ' +
    'inner join categorias t On (t.sIdCategoria=td.sIdCategoria and t.dFechaVigencia =:FechaVig) ' +
    'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno and t.lPersonalAnexo = "No" group by t.sIdCategoria order by t.sIdCategoria, t.sDescripcion');
  Totales.ParamByName('Contrato').DataType := ftString;
  Totales.ParamByName('Contrato').Value := sParamContrato;
  Totales.ParamByName('Turno').DataType := ftString;
  Totales.ParamByName('Turno').Value := sParamTurno;
  Totales.ParamByName('Fecha').DataType := ftDate;
  Totales.ParamByName('Fecha').Value := dParamFecha;
  cadena := datetostr(dParamFecha);
  Totales.ParamByName('FechaVig').DataType := ftDate;
  Totales.ParamByName('FechaVig').Value := fechaAntes;
  cadena := datetostr(fechaAntes);
  Totales.Open;

  lista_personal.Active := False;
  lista_personal.Sql.Clear;
  lista_personal.Sql.Add('select td.*, o.sProrrateoBarco from tripulaciondiaria_listado td ' +
       'LEFT JOIN contratos o on (o.sContrato = td.sOrden ) '+
       'where td.sContrato=:Contrato and td.dIdFecha=:Fecha and td.sIdTurno =:Turno order by td.sOrden, td.sDescripcion ');
  lista_personal.ParamByName('Contrato').DataType := ftString;
  lista_personal.ParamByName('Contrato').Value := sParamContrato;
  lista_personal.ParamByName('Turno').DataType := ftString;
  lista_personal.ParamByName('Turno').Value := sParamTurno;
  lista_personal.ParamByName('Fecha').DataType := ftDate;
  lista_personal.ParamByName('Fecha').Value := dParamFecha;
  lista_personal.Open;

  rDiario.OnGetValue := tProcedure;
  rDiarioFirmas(sParamContrato, sParamOrden, sParamTurno, dParamFecha, tOrigen);

  global_miReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  rDiario.LoadFromFile(global_files + global_miReporte + '_rDiarioBarco.fr3');

    //Verificamos si solo se enviara el mail o solo se imprimira el reporte diario..
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
      rDiario.ShowReport(FormatosExp, PermisosExp);
  end;

    // Destruye Objetos ...
   rDiario.Destroy;
   qryActividadesAnexos.Destroy;
   Prorrateos.Destroy;
   Prorrateos2.Destroy;
   QryArribos.Destroy;
   QryArribosVuelo.Destroy;
   QryClimaReporte.Destroy;
   qryDisposicionesReporte.Destroy;
   qryRecursosReporte.Destroy;
   qryRecursosEmbarcacion.Destroy;
   qryResumenRecursos.Destroy;
   dsRecursosEmbarcacion.Destroy;
   dsResumenRecursos.Destroy;
   qryNotasGenerales.Destroy;
   QryConfiguracion.Destroy;
   Tripulacion.Destroy;
   TripulacionFlotel.Destroy;
   TripulacionFlotelAdmon.Destroy;
   Totales.Destroy;
   lista_personal.Destroy;
   TotalesOperativos.Destroy;
   dsActividades.Destroy;
   detProrrateos.Destroy;
   detProrrateos2.Destroy;
   mFactores.Destroy;
   ArribosReporte.Destroy;
   ArribosReporteVuelo.Destroy;
   dsClimaReporte.Destroy;
   DisposicionesReporte.Destroy;
   dsRecursosReporte.Destroy;
   dsNotasGenerales.Destroy;
   dsTripulacion.Destroy;
   dsTripulacionFlotel.Destroy;
   dsTripulacionFlotelAdmon.Destroy;
   dsTotales.Destroy;
   dsLista_personal.Destroy;
   dsTotalesOperativos.Destroy;
   embarcacion.Destroy;
   dsEmbarcacion.Destroy;
   QryReprograma.Destroy;
   dsConfiguracion.Destroy;
   qryOcupacionBarco.Destroy;
   qryPernoctaBarco.Destroy;
   dsOcupacionBarco.Destroy;
   dsPernoctaBarco.Destroy;
end;

function sfnFactor(sParamHoraInicio: string; sParamHoraFinal: string; iParamJornadas: Real; iDecimales: Integer): string;
var
  nHorasInicio: Real;
  nMinutosInicio: Real;
  nHorasFinal: Real;
  nMinutosFinal: Real;
  sFactor: string;
begin
  sParamHoraInicio := Trim(sParamHoraInicio);
  nHorasInicio := rfnDecimal(MidStr(sParamHoraInicio, 1, 2)) * 60;
  nMinutosInicio := (nHorasInicio + rfnDecimal(MidStr(sParamHoraInicio, 4, 2))) / 60;

  sParamHoraFinal := Trim(sParamHoraFinal);
  nHorasFinal := rfnDecimal(MidStr(sParamHoraFinal, 1, 2)) * 60;
  nMinutosFinal := (nHorasFinal + rfnDecimal(MidStr(sParamHoraFinal, 4, 2))) / 60;
  Str(((nMinutosFinal - nMinutosInicio) / iParamJornadas): 10: iDecimales, sFactor);
  sfnFactor := Trim(sFactor);
end;

function sfnHora(sParamHoras: string): Real;
var
  nHoras, nMinutos: Real;
begin
  sParamHoras := Trim(sParamHoras);
  nHoras := rfnDecimal(MidStr(sParamHoras, 1, 2)) * 60;
  nMinutos := nHoras + rfnDecimal(MidStr(sParamHoras, 4, 2));
  sfnHora := (nMinutos / 60)
end;

function funcSql(dbParamTable: TZReadOnlyQuery; sTable: string): WideString;
var
  sCadenaInsert,
    sCadenaValues: WideString;
  Registro: Byte;
begin
  sCadenaInsert := 'INSERT INTO ' + sTable + ' (';
  sCadenaValues := 'VALUES ( ';
  for Registro := 0 to dbParamTable.FieldCount - 1 do
  begin
    sCadenaInsert := sCadenaInsert + dbParamTable.Fields[Registro].DisplayName;
    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaInsert := sCadenaInsert + ', '
    else
      sCadenaInsert := sCadenaInsert + ') ';

    sCadenaValues := sCadenaValues + ':Param' + Trim(IntToStr(Registro + 1));
    if Registro < (dbParamTable.FieldCount - 1) then
      sCadenaValues := sCadenaValues + ', '
    else
      sCadenaValues := sCadenaValues + ') '
  end;
  funcSql := sCadenaInsert + sCadenaValues;
end;

procedure procAjustaBarco(dParamFecha: tDate; sParamEmbarcacion: string; sParamDecimales: Integer; tOrigen: TComponent);
var
  QryMovimientoBarco,
    roqBusca: TzReadOnlyQuery;
  qBusca: TZQuery;
  iValor: Integer;

  iMultiplo: Integer;
  iDecimales: Integer;
  iFila, iColumna,
    iCountFilas,
    iColumnaReal: Byte;
  dAjuste,
    dResult, dRedond: Extended;

  iFilaMayor: Byte;
  dValorMayor: Double;

  sContratoOrden,
    MayorContrato,
    MayorOrden: string;
  Localizado: Boolean;
  Progress: TProgressBar;
  CuentaP: Real;
  OldIdDiario: Integer;
  MarcaMayor,
    AjusteExcel,
    mExcel: Extended;
  DiarioMayor, i: Integer;
  ListaPrimaria: TStringList;
  qAjuste: TZReadOnlyQuery;
begin
  // Obtener el parámetro de Tipo de Ajuste antes de llamar el procedimiento
  Try
    Try
      // Localizar el reporte diario para analizar su modo de cálculo
      qAjuste := TZReadOnlyQuery.Create(Nil);
      qAjuste.Connection := Connection.zConnection;
      qAjuste.SQL.Text := 'Select TipoAjuste From reportediario where sContrato = :Contrato and dIdFecha = :Fecha';
      qAjuste.ParamByName('Contrato').AsString := global_contrato;
      qAjuste.ParamByName('Fecha').AsDate := dParamFecha;
      qAjuste.Open;

      if qAjuste.RecordCount = 0 then Raise Exception.Create('*');
      RngTipoAjuste := qAjuste.FieldByName('TipoAjuste').AsInteger;
    Finally
      if Assigned(qAjuste) then
        qAjuste.Close;

      qAjuste.Free;
    End;
  Except
    RngTipoAjuste := 0;
  End;

  // Inicio código de corrección para minimizar el tiempo de generación del reporte
  sProrrateaBarco(dParamFecha, sParamEmbarcacion, tOrigen, sParamDecimales); // Reprorratear el barco

  QryMovimientoBarco := TZReadOnlyQuery.Create(tOrigen);
  QryMovimientoBarco.Connection := connection.zConnection;
  QryMovimientoBarco.SQL.Text := 'select a.*, b.sContrato as sContrato2, b.sNumeroOrden, b.dPersonalOrden, (b.dPersonalOrden / (select sum(dPersonalOrden) from fasesxorden where dIdFecha = a.dIdFecha and iIdDiario = a.iIdDiario)) * a.sFactor as dFactor ' +
    'from movimientosdeembarcacion a ' +
    'inner join tiposdemovimiento c on (c.sIdTipoMovimiento = a.sClasificacion) ' +
    'left join fasesxorden b on (b.dIdFecha = a.dIdFecha and b.iIdDiario = a.iIdDiario) ' +
    'where a.sContrato = :Contrato and a.dIdFecha = :Fecha and a.sIdEmbarcacion = :Barco ' +
    'order by a.sHoraFinal';
  QryMovimientoBarco.ParambyName('Contrato').AsString := global_contrato;
  QryMovimientoBarco.ParambyName('Barco').AsString := sParamEmbarcacion;
  QryMovimientoBarco.ParambyName('Fecha').AsDate := dParamFecha;
  QryMovimientoBarco.Open;

  qBusca := TZQuery.Create(nil);
  qBusca.Connection := Connection.zConnection;
  qBusca.Sql.Text := 'select * from fasesxorden where dIdFecha = :Fecha and iIdDiario = :Diario and sContrato = :Contrato and sNumeroOrden = :Orden';
  qBusca.ParamByName('Fecha').AsDate := dParamFecha;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select * from fasesxorden where sContrato = :Contrato and sNumeroOrden = :Orden and dIdFecha = :Fecha and iIdDiario = :Diario');
  connection.zCommand.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.Open;

  Connection.configuracion.Refresh;
  iDecimales := Connection.configuracion.FieldValues['iRedondeoEmbarcacion'];
  iMultiplo := iDecimales * -1;
  dAjuste := 0;
  OldIdDiario := QryMovimientoBarco.FieldByName('iIdDiario').AsInteger;
  MarcaMayor := 0;
  DiarioMayor := 0;
  AjusteExcel := 5;
  mExcel := 0.1;
  for I := 0 to iDecimales do
  begin
    AjusteExcel := AjusteExcel / 10;
    mExcel := mExcel * 10;
  end;

    // Actualizar la barra de avance
  if Assigned(Progress) then
  begin
    CuentaP := ((1 / ProgPartes) / (qBusca.RecordCount + 1)) * (Progress.Max - Progress.Min);
    AcumulaProgress := AcumulaProgress + CuentaP;
    Progress.Position := Trunc(AcumulaProgress);
  end;

  while not QryMovimientoBarco.Eof do
  begin
    if Assigned(Progress) then
    begin
      AcumulaProgress := AcumulaProgress + CuentaP;
      Progress.Position := Trunc(AcumulaProgress);
    end;

    if (OldIdDiario <> QryMovimientoBarco.FieldByName('iIdDiario').AsInteger) or (QryMovimientoBarco.RecNo = QryMovimientoBarco.RecordCount) then
    begin
      if (QryMovimientoBarco.RecNo = QryMovimientoBarco.RecordCount) and (OldIdDiario = QryMovimientoBarco.FieldByName('iIdDiario').AsInteger) then
      begin
        MarcaMayor := QryMovimientoBarco.FieldByName('dPersonalOrden').AsFloat;
        DiarioMayor := QryMovimientoBarco.FieldByName('iIdDiario').AsInteger;
        MayorContrato := QryMovimientoBarco.FieldByName('sContrato2').AsString;
        MayorOrden := QryMovimientoBarco.FieldByName('sNumeroOrden').AsString;
      end;

      if dAjuste <> 0 then
      begin
          // Si ya se ha terminado el grupo entonces agregar el ajuste a la cantidad de personal mayor
        connection.zCommand.Close;
        connection.zCommand.ParamByName('Diario').AsInteger := DiarioMayor;
        connection.zCommand.ParamByName('Contrato').AsString := MayorContrato;
        connection.zCommand.ParamByName('Orden').AsString := MayorOrden;
        connection.zCommand.ParamByName('Fecha').AsDate := QryMovimientoBarco.FieldByName('dIdFecha').AsDateTime;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
          connection.zCommand.Edit;
            {21/feb/2010: adal, marcaba error de conversion}
          dResult := Trunc((StrToFloat(connection.zCommand.FieldByName('sFactor').AsString) + dAjuste + AjusteExcel) * mExcel) / mExcel;
            //dResult := RoundTo(StrToFloat(connection.zCommand.FieldByName('sFactor').AsString) + dAjuste, iMultiplo);
          connection.zCommand.FieldByName('sFactor').AsString := FloatToStr(dResult);
          connection.zCommand.Post;
        end;
      end;

      dAjuste := 0;
      DiarioMayor := 0;
      MayorContrato := '';
      MayorOrden := '';
      MarcaMayor := 0;
    end;

    //dResult := StrToFloat(QryMovimientoBarco.FieldByName('dFactor').AsString);

    dResult := (QryMovimientoBarco.FieldByName('dFactor').AsFloat);
    dRedond := Trunc((dResult + AjusteExcel) * mExcel) / mExcel;
      //dRedond := RoundTo(dResult, iMultiplo);
    dAjuste := dAjuste + (dResult - dRedond);

    if QryMovimientoBarco.FieldByName('dPersonalOrden').AsFloat > MarcaMayor then
    begin
      MarcaMayor := QryMovimientoBarco.FieldByName('dPersonalOrden').AsFloat;
      DiarioMayor := QryMovimientoBarco.FieldByName('iIdDiario').AsInteger;
      MayorContrato := QryMovimientoBarco.FieldByName('sContrato2').AsString;
      MayorOrden := QryMovimientoBarco.FieldByName('sNumeroOrden').AsString;
    end;

    qBusca.Close;
    qBusca.ParamByName('Contrato').AsString := QryMovimientoBarco.FieldByName('sContrato2').AsString;
    qBusca.ParamByName('Orden').AsString := QryMovimientoBarco.FieldByName('sNumeroOrden').AsString;
    qBusca.ParamByName('Diario').AsInteger := QryMovimientoBarco.FieldByName('iIdDiario').AsInteger;
    qBusca.Open;
    if qBusca.RecordCount > 0 then
    begin
      if qBusca.FieldByName('sFactor').AsString <> FloatToStr(dRedond) then
      begin
        qBusca.Edit;
        qBusca.FieldByName('sFactor').AsString := FloatToStr(dRedond);
        qBusca.Post;
      end;
    end;

    OldIdDiario := QryMovimientoBarco.FieldByName('iIdDiario').AsInteger;
    QryMovimientoBarco.Next;
  end;

  {Segundo Ajuste de Prorateo de Barco..}
  QryMovimientoBarco := TZReadOnlyQuery.Create(tOrigen);
  QryMovimientoBarco.Connection := connection.zConnection;
  QryMovimientoBarco.SQL.Text := 'select a.sContrato, a.sClasificacion, a.dIdFecha, a.sHoraInicio, a.sHoraFinal, sum(sFactor) as Factor ' +
    'from movimientosdeembarcacion a ' +
    'inner join tiposdemovimiento c on (c.sIdTipoMovimiento = a.sClasificacion) ' +
    'where a.sContrato =:Contrato and a.dIdFecha =:Fecha and a.sIdEmbarcacion =:Barco ' +
    'group by a.sClasificacion order by a.sHoraInicio';
  QryMovimientoBarco.ParambyName('Contrato').AsString := global_contrato;
  QryMovimientoBarco.ParambyName('Barco').AsString := sParamEmbarcacion;
  QryMovimientoBarco.ParambyName('Fecha').AsDate := dParamFecha;
  QryMovimientoBarco.Open;

  while not QryMovimientoBarco.Eof do
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select f.sContrato, SUM(f.sFactor) as Factor, me.sClasificacion from movimientosdeembarcacion me ' +
      'Inner join fasesxorden f on (f.dIdFecha = me.dIdFecha and f.iIdDiario = me.iIdDiario) ' +
      'Where me.sContrato=:Contrato and me.dIdFecha=:Fecha and me.sIdEmbarcacion =:barco and f.sClasificacion =:Clasificacion ' +
      'group by me.sClasificacion order by me.sHoraInicio');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Fecha').AsDate := dParamFecha;
    connection.zCommand.ParamByName('Barco').AsString := sParamEmbarcacion;
    connection.zCommand.ParamByName('Clasificacion').AsString := QryMovimientoBarco.FieldValues['sClasificacion'];
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      if connection.zCommand.FieldValues['Factor'] <> QryMovimientoBarco.FieldValues['Factor'] then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select f.sContrato, f.sNumeroOrden, f.dIdFecha, f.iIdDiario, f.sFactor as Factor from movimientosdeembarcacion me ' +
          'Inner join fasesxorden f on (f.dIdFecha=me.dIdFecha and f.iIdDiario=me.iIdDiario) ' +
          'Where me.sContrato=:Contrato and me.dIdFecha=:Fecha and me.sIdEmbarcacion =:Barco and f.sClasificacion =:Clasificacion ' +
          'order by Factor desc ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Fecha').AsDate := dParamFecha;
        connection.QryBusca.ParamByName('Barco').AsString := sParamEmbarcacion;
        connection.QryBusca.ParamByName('Clasificacion').AsString := QryMovimientoBarco.FieldValues['sClasificacion'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          if connection.zCommand.FieldValues['Factor'] < QryMovimientoBarco.FieldValues['Factor'] then
            dRedond := connection.QryBusca.FieldValues['Factor'] + (StrToFloat(QryMovimientoBarco.FieldValues['Factor']) - StrToFloat(connection.zCommand.FieldValues['Factor']));

          if connection.zCommand.FieldValues['Factor'] > QryMovimientoBarco.FieldValues['Factor'] then
            dRedond := connection.QryBusca.FieldValues['Factor'] - (StrToFloat(connection.zCommand.FieldValues['Factor']) - StrToFloat(QryMovimientoBarco.FieldValues['Factor']));

          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('Update fasesxorden set sFactor =:Factor where sContrato =:Contrato and sNumeroOrden =:Orden and dIdFecha =:Fecha and iIdDiario =:Diario');
          connection.QryBusca2.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
          connection.QryBusca2.ParamByName('Orden').AsString := connection.QryBusca.FieldValues['sNumeroOrden'];
          connection.QryBusca2.ParamByName('Fecha').AsDate := connection.QryBusca.FieldValues['dIdFecha'];
          connection.QryBusca2.ParamByName('Diario').AsInteger := connection.QryBusca.FieldValues['iIdDiario'];
          connection.QryBusca2.ParamByName('Factor').AsString := FloatToStr(dRedond);
          connection.QryBusca2.ExecSQL;
        end;
      end;
    end;

    QryMovimientoBarco.Next;
  end;
end;

function dfnGeneradoAnterior(sParamContrato, sParamActividad: string; iParamConsecutivo: Word; tOrigen: TComponent): Double;
var
  QryConsulta: tzReadOnlyQuery;
begin
  QryConsulta := tzReadOnlyQuery.Create(tOrigen);
  QryConsulta.Connection := connection.zConnection;
  QryConsulta.Active := False;
  Qryconsulta.SQL.Clear;
  QryConsulta.SQL.Add('Select Sum(e.dCantidad) as dGenerado from estimacionxpartida e ' +
    'inner join estimaciones e2 on (e.sContrato = e2.sContrato and e.sNumeroOrden = e2.sNumeroOrden And ' +
    'e2.sNumeroGenerador = e.sNumeroGenerador And e2.iConsecutivo <= :Consecutivo And e2.lStatus = "Validado") ' +
    'Where e.sContrato = :Contrato And e.sNumeroActividad = :Actividad  Group By e.sContrato');
  QryConsulta.Params.ParamByName('contrato').DataType := ftString;
  QryConsulta.Params.ParamByName('contrato').Value := sParamContrato;
  QryConsulta.Params.ParamByName('actividad').DataType := ftString;
  QryConsulta.Params.ParamByName('actividad').Value := sParamActividad;
  QryConsulta.Params.ParamByName('consecutivo').DataType := ftInteger;
  QryConsulta.Params.ParamByName('consecutivo').Value := iParamConsecutivo;
  QryConsulta.Open;
  if QryConsulta.RecordCount > 0 then
    result := QryConsulta.FieldValues['dGenerado']
  else
    result := 0;
  QryConsulta.Destroy;
end;

procedure procCaratulaGeneradorPerf(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sCadena, sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden, dAcumuladoGral, dMonto,
    dAcumuladoAnexo: Currency;
  iValorNumerico: LongInt;
  Resultado: Real;
  mOrdenCambio: WideString;
  lAlterno: boolean;
begin
   //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;
  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,  ' +
    'c.bImagen, c.sContrato, c.sRFC, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra,  ' +
    'cv.dFechaInicio, cv.dFechaFinal, cv.dMontoMN ' +
    'From contratos c2 ' +
    'INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'INNER JOIN convenios cv  on (c.sContrato=cv.sContrato And c.sIdConvenio=cv.sIdConvenio)' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryTrinomios := TZReadOnlyQuery.Create(tOrigen);
  QryTrinomios.Connection := connection.zconnection;
  dsCentroCosto := TfrxDBDataSet.Create(tOrigen);
  dsCentroCosto.FieldAliases.Clear;
  dsCentroCosto.DataSet := QryTrinomios;
  dsCentroCosto.UserName := 'dsCentroCosto';

  QryTrinomios.Active := False;
  QryTrinomios.SQL.Clear;
  QryTrinomios.SQL.Add('select sBeneficio From contrato_trinomio Where sContrato  = :Contrato And sInstalacion = :Orden');
  QryTrinomios.Params.ParamByName('Contrato').DataType := ftString;
  QryTrinomios.Params.ParamByName('Contrato').Value := sParamContrato;
  QryTrinomios.Params.ParamByName('Orden').DataType := ftString;
  QryTrinomios.Params.ParamByName('Orden').Value := sParamOrden;
  QryTrinomios.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAlternos := TZReadOnlyQuery.Create(tOrigen);
  QryAlternos.Connection := connection.zconnection;


  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  QryAcumulados.Active := False;
  QryAlternos.SQL.Clear;
  QryAlternos.SQL.Add('select sum(e.dCantidad*a.dVentaMN) as SumaGenerador from estimacionxpartida e ' +
    'inner join actividadesxanexo a On (a.sContrato=e.sContrato And e.sNumeroActividad=a.sNumeroActividad) ' +
    'where e.sContrato = :Contrato And e.sNumeroGenerador = :Generador ' +
    'And a.sIdConvenio = :Convenio And a.sTipoActividad="Actividad" And e.sNumeroOrden = :Orden ' +
    'group by e.sNumeroGenerador');
  QryAlternos.Params.ParamByName('Contrato').DataType := ftString;
  QryAlternos.Params.ParamByName('Contrato').Value := global_contrato;
  QryAlternos.Params.ParamByName('Convenio').DataType := ftString;
  QryAlternos.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryAlternos.Params.ParamByName('Generador').DataType := ftString;
  QryAlternos.Params.ParamByName('Generador').Value := sParamGenerador;
  QryAlternos.Params.ParamByName('Orden').DataType := ftString;
  QryAlternos.Params.ParamByName('Orden').Value := sParamOrden;
  QryAlternos.Open;
  if QryAlternos.RecordCount > 0 then
  begin
    dMonto := QryAlternos.FieldValues['SumaGenerador'];
    iValorNumerico := Trunc(dMonto);
    sCadena := xIntToLletres(iValorNumerico) + ' PESOS CON ';
    Resultado := roundto(dMonto - iValorNumerico, -2);
    Resultado := Resultado * 100;
    iValorNumerico := Trunc(Resultado);
    sCadena := sCadena + xIntToLletres(iValorNumerico) + ' CENTAVOS /100 M.N.';
  end;

  QryAlternos.Active := False;
  QryAlternos.SQL.Clear;
  QryAlternos.SQL.Add('select sum(e.dCantidad*a.dVentaMN) as SumaAnexo from estimacionxpartida e ' +
    'inner join actividadesxanexo a On (a.sContrato=e.sContrato And e.sWbs=a.sWbs) ' +
    'where e.sContrato = :Contrato ' +
    'And a.sIdConvenio = :Convenio And a.sTipoActividad="Actividad" ' +
    'group by e.sContrato');
  QryAlternos.Params.ParamByName('Contrato').DataType := ftString;
  QryAlternos.Params.ParamByName('Contrato').Value := global_contrato;
  QryAlternos.Params.ParamByName('Convenio').DataType := ftString;
  QryAlternos.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryAlternos.Open;
  if QryAlternos.RecordCount > 0 then
    dAcumuladoGral := QryAlternos.FieldValues['SumaAnexo'];

  //detalle de partidas
  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dVentaMN', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sIdPlataforma', ftstring, 10, True);
  rxGenerador.FieldDefs.Add('sEquipo', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sPozo', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sCosto', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sCentroGestorEjecutor', ftstring, 16, True);
  rxGenerador.FieldDefs.Add('sBeneficio', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sCuentaMayor', ftstring, 8, True);
  rxGenerador.FieldDefs.Add('sPosicionFinanciera', ftstring, 9, True);
  rxGenerador.FieldDefs.Add('sActividad', ftstring, 10, True);
  rxGenerador.FieldDefs.Add('sFondo', ftstring, 10, True);
  rxGenerador.FieldDefs.Add('sElementoPEP', ftstring, 20, True);
  rxGenerador.FieldDefs.Add('sUtilizacionFondo', ftstring, 25, True);
  rxGenerador.FieldDefs.Add('dMonto', ftFloat, 0, True);
  rxGenerador.fieldDefs.Add('dAcumuladoGral', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sLetra', ftString, 190, True);
  rxGenerador.Active := True;

//  rxGenerador.FieldValues['dMonto'] =

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);
  rCaratula.DataSets.Add(dsCentroCosto);

  //soad -> cambio para programadas caratula de estimacion...
  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  if (Global_Optativa = 'PROGRAMADA') or (Global_Optativa = 'MIXTA') then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, a.dVentaMN,' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
      'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
      'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
      'e1.sNumeroGenerador = e2.sNumeroGenerador and e1.sWbsContrato = a.sWbs and e1.sNumeroActividad = a.sNumeroActividad ) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group by e1.sWbs Order By a.iItemOrden, e1.sIsometrico, e1.sPrefijo')
  else
    QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, a.dVentaMN, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
      'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
      'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
      'e1.sNumeroGenerador = e2.sNumeroGenerador and e1.sWbsContrato = a.sWbs and e1.sNumeroActividad = a.sNumeroActividad And e1.sWbs=a.sWbs ) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Group by e1.sWbs Order By a.iItemOrden, e1.sIsometrico, e1.sPrefijo');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    while not QryGenerador.Eof do
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['dMonto'] := dMonto;
      rxGenerador.FieldValues['dAcumuladoGral'] := dAcumuladoGral;
      rxGenerador.FieldValues['sLetra'] := sCadena;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['dVentaMN'] := QryGenerador.FieldValues['dVentaMN'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
      rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];

      //Obtenemos la cantidad de Anexo de las partidas dentro del programa principal.. <ivan>
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
        'sIdConvenio = :Convenio And sWbs = :Wbs And sTipoActividad = "Actividad"');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
      QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
      QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
      QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
      QryAcumulados.Open;

      if QryAcumulados.RecordCount > 0 then
        rxGenerador.FieldValues['dCantidadAnexo'] := QryAcumulados.FieldValues['dCantidadAnexo']
      else
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      lAlterno := False;
      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAlternos.Active := False;
          QryAlternos.SQL.Clear;
          QryAlternos.SQL.Add('Select c.*, o.sPozo, o.sIdPlataforma, o.sEquipo, a.dCantidad From actividadesxorden a ' +
            'Inner Join Ordenesdetrabajo o On (a.sContrato=o.sContrato And a.sNumeroOrden=o.sNumeroOrden) ' +
            'Inner Join contrato_trinomio c On (o.sContrato=c.sContrato And o.sNumeroOrden=c.sInstalacion) ' +
            'Where a.sContrato = :Contrato And a.sNumeroOrden = :Orden And ' +
            'a.sIdConvenio = :Convenio And a.sNumeroActividad = :Actividad a.sWbsContrato = :Wbs And a.sTipoActividad = "Actividad"');
          QryAlternos.Params.ParamByName('Contrato').DataType := ftString;
          QryAlternos.Params.ParamByName('Contrato').Value := global_contrato;
          QryAlternos.Params.ParamByName('orden').DataType := ftString;
          QryAlternos.Params.ParamByName('orden').Value := sParamOrden;
          QryAlternos.Params.ParamByName('Convenio').DataType := ftString;
          QryAlternos.Params.ParamByName('Convenio').Value := sParamConvenio;
          QryAlternos.Params.ParamByName('Actividad').DataType := ftString;
          QryAlternos.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAlternos.Params.ParamByName('Wbs').DataType := ftString;
          QryAlternos.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAlternos.Open;

          dCantidadOrden := 0;
          while not QryAlternos.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAlternos.FieldValues['dCantidad'];
            QryAlternos.Next;
            lAlterno := True;
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sNumeroActividad = :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sWbsContrato = :Wbs  And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And e.sNumeroGenerador = e1.sNumeroGenerador And e.sNumeroActividad = :Actividad) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sNumeroActividad');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;
        dAcumuladoAnexo := 0;

        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];

        if lAlterno then
        begin
          rxGenerador.FieldValues['sIdPlataforma'] := QryAlternos.FieldValues['sIdPlataforma'];
          rxGenerador.FieldValues['sEquipo'] := QryAlternos.FieldValues['sEquipo'];
          rxGenerador.FieldValues['sPozo'] := QryAlternos.FieldValues['sPozo'];
          rxGenerador.FieldValues['sCosto'] := QryAlternos.FieldValues['sCosto'];
          rxGenerador.FieldValues['sCentroGestorEjecutor'] := QryAlternos.FieldValues['sCentroGestorEjecutor'];
          rxGenerador.FieldValues['sBeneficio'] := QryAlternos.FieldValues['sBeneficio'];
          rxGenerador.FieldValues['sCuentaMayor'] := QryAlternos.FieldValues['sCuentaMayor'];
          rxGenerador.FieldValues['sPosicionFinanciera'] := QryAlternos.FieldValues['sPosicionFinanciera'];
          rxGenerador.FieldValues['sActividad'] := QryAlternos.FieldValues['sActividad'];
          rxGenerador.FieldValues['sFondo'] := QryAlternos.FieldValues['sFondo'];
          rxGenerador.FieldValues['sElementoPEP'] := QryAlternos.FieldValues['sElementoPEP'];
          rxGenerador.FieldValues['sUtilizacionFondo'] := QryAlternos.FieldValues['sUtilizacionFondo'];
        end;
      end;

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  if lParamMultiple then
    rCaratula.LoadFromFile(global_files + 'CaratulaGeneradorMultiplePerf.fr3')
  else
    rCaratula.LoadFromFile(global_files + 'CaratulaGenerador.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];

  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
  qryTrinomios.Destroy;
  qryAlternos.Destroy;
  dsCentroCosto.Destroy;
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


procedure procAlbumGeneradorDac(sParamContrato, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  QryAuxiliar,
    rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select dac.descripcion, c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) INNER JOIN ( select (mDescripcion)AS descripcion from contratos c2 where c2.sContrato = c2.scodigo ) as dac Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select o.sIdFolio, o.sDescripcionCorta, i.sIsometrico, i.sPrefijo, i.iImagen, i.bIsometrico, i.mDescripcion, ao.sNumeroActividad, ao.mDescripcion as DescripcionActividad, '+
                      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioAutoriza, '+
                      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimacionxisometrico i '+
                      'inner join estimaciones e2 on (i.sContrato = e2.sContrato And e2.sNumeroOrden = i.sNumeroOrden And e2.sNumeroGenerador = i.sNumeroGenerador) '+
                      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) '+
                      'Inner Join ordenesdetrabajo o On (e2.sContrato=o.sContrato And e2.sNumeroOrden=o.sNumeroOrden) '+
                      'Left Join actividadesxorden ao on (i.sContrato = ao.sContrato and ao.sIdConvenio =:Convenio and i.sNumeroOrden = ao.sNumeroOrden '+
                      'and ao.sWbs = i.sWbs and ao.sNumeroActividad = i.sNumeroActividad) '+
                      'where i.sContrato =:Contrato And i.sNumeroOrden =:Orden And i.sNumeroGenerador =:Generador group by ao.sNumeroActividad, i.sIsometrico, i.iImagen '+
                      'Order By ao.iItemOrden, i.sIsometrico, i.iImagen');
  QryGenerador.Params.ParamByName('Contrato').DataType  := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value     := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType  := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value     := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType     := ftString;
  QryGenerador.Params.ParamByName('Orden').Value        := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value    := sParamGenerador;
  QryGenerador.Open;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
  rCaratula.LoadFromFile(global_files +  global_MiReporte + '_CaratulaGenerador.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procHojasegGeneradores(sParamContrato, sParamEstimacion, sParamGenerador: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean);
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad: string;
begin
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := qryGenerador;
  dsGenerador.UserName := 'dsGenerador';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select ep.iNumeroEstimacion, ep.sMoneda, ep.dFechaInicio as dFechaInicioEst, ep.dFechaFinal as dFechaFinalEst, e.dFechaInicio, e.dFechaFinal ' +
    'From estimacionperiodo ep ' +
    'inner join estimaciones e on (ep.sContrato = e.sContrato and ep.iNumeroEstimacion = e.iNumeroEstimacion and e.sNumeroGenerador =:Generador ) ' +
    'where ep.sContrato =:Contrato And ep.iNumeroEstimacion =:Estimacion ');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Estimacion').DataType := ftString;
  QryGenerador.Params.ParamByName('Estimacion').Value := sParamEstimacion;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  rCaratula.LoadFromFile(global_files + 'hojaseggeneradores.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryConfiguracion.Destroy;

  dsGenerador.Destroy;
  dsConfiguracion.Destroy;

end;

procedure procCaratulaPersonalEquipo(sParamContrato, sParamOrden, sParamConvenio, sTipo: string; dParamFechaI, dParamFechaT: tDate; tOrigen: TComponent; tProcedure: tfrxGetValueEvent);
var
  rDiario: TfrxReport;
  dsbitacora, dsOt: TfrxDBDataSet;
  Auxiliar, Auxiliar2: TZReadOnlyQuery;
  Cadena: string;
begin


  rDiario := TfrxReport.Create(tOrigen);

  Auxiliar := tzReadOnlyQuery.Create(tOrigen);
  Auxiliar.Connection := Connection.zConnection;
  Auxiliar2 := tzReadOnlyQuery.Create(tOrigen);
  Auxiliar2.Connection := Connection.zConnection;

  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsBitacora := TfrxDBDataSet.Create(tOrigen);
  if (sTipo = 'Personal') or (sTipo = 'Personalxoptativa') then
    dsBitacora.UserName := 'bitacorapersonal';
  if (sTipo = 'Equipo') or (sTipo = 'Equipoxoptativa') then
    dsBitacora.UserName := 'bitacoraEquipo';
  if sTipo = 'Pernoctas' then
    dsBitacora.UserName := 'Pernoctas';
  if sTipo = 'barcoxoptativas' then
    dsBitacora.UserName := 'movbarcoxopt';
  if (sTipo = 'barcoxtotaloptativas') or (sTipo = 'barcoxtotalprogramadas') then
    dsBitacora.UserName := 'totalxoptprog';

  dsOt := TfrxDBDataSet.Create(tOrigen);
  dsOt.UserName := 'Ordenes';

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sCodigo, .c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');

  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  Auxiliar.Active := False;
  Auxiliar.SQL.Clear;

  if sTipo = 'barcoxoptativas' then
    Auxiliar.SQL.Add('select p.sContrato, p.dIdFecha, p.sClasificacion, a.mDescripcion, Sum(p.dProrrateoOrden) as dProrrateoOrden, ' +
      'p.sNumeroOrden from prorrateos p ' +
      'Left Join actividadesxanexo a  On(a.sContrato=p.sContrato And a.sTipoActividad="Actividad" ' +
      'And a.sTipo="BARCO" And a.sIdConvenio=:Convenio And p.sClasificacion=a.sWbs) ' +
      'where p.sContrato = :Contrato ' +
      'And p.dIdFecha >= :FechaInicio ' +
      'And p.dIdFecha <= :FechaFinal ' +
      'Group by p.sClasificacion, p.dIdFecha');


  if sTipo = 'Pernoctas' then
    Auxiliar.SQL.Add('select bp.sNumeroActividad, bp.dIdFecha, SUM(bp.dCantidad) as total, a.mDescripcion from  bitacoradepernocta bp ' +
      'INNER JOIN actividadesxanexo a On (a.sContrato=bp.sIdAnexo And a.sTipoActividad="Actividad"  ' +
      'And a.sTipo="Pernocta" And a.sNumeroActividad=bp.sNumeroActividad And a.sIdConvenio=:Convenio) ' +
      'Where bp.sIdAnexo =:Contrato And bp.sNumeroActividad="1" ' +
      'And bp.dIdFecha >= :FechaInicio ' +
      'And bp.dIdFecha <= :FechaFinal ' +
      'And bp.sIdPernocta= ' + Global_Pernocta + ' Group by bp.dIdFecha, bp.sNumeroActividad');

  if sTipo = 'Equipo' then
    Auxiliar.SQL.Add('select a.iItemOrden, a.sMedida, be.dIdFecha, be.sIdEquipo, be.sNumeroOrden, be.dCantidad, ' +
      'be.sDescripcion, a.sNumeroActividad from bitacoradeequipos be ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=be.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=be.sIdEquipo ' +
      'And a.sTipo="EQUIPO") ' +
      'Where be.dIdFecha>=:FechaInicio ' +
      'And be.dIdFecha <= :FechaFinal ' +
      'And be.sContrato=:Contrato  and be.sNumeroOrden=:Orden ' +
      'order by be.dIdFecha, a.iItemOrden ');

  if sTipo = 'Equipoxoptativa' then
    Auxiliar.SQL.Add('select be.sIdEquipo, be.dIdFecha, a.iItemOrden, be.sDescripcion, ' +
      'a.sMedida, SUM(be.dCantidad) As dCantidad from bitacoradeequipos be ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=be.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=be.sIdEquipo ' +
      'And a.sTipo="EQUIPO") ' +
      'Where be.dIdFecha>=:FechaInicio ' +
      'And be.dIdFecha <= :FechaFinal ' +
      'And be.sContrato=:Contrato  ' +
      'Group by be.sIdEquipo, dIdFecha, a.iItemOrden   ' +
      'order by be.dIdFecha, a.iItemOrden ');


  if sTipo = 'Personal' then
    Auxiliar.SQL.Add('select a.iItemOrden, a.sMedida, bp.dIdFecha, bp.sIdPersonal, bp.sNumeroOrden, bp.dCantidad, ' +
      'bp.sDescripcion, a.sNumeroActividad from bitacoradepersonal bp ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=bp.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=bp.sIdPersonal ' +
      'And a.sTipo="PERSONAL") ' +
      'Where bp.dIdFecha>=:FechaInicio ' +
      'And bp.dIdFecha <= :FechaFinal ' +
      'And bp.sContrato=:Contrato  and bp.sNumeroOrden=:Orden ' +
      'And sIdPersonal not like "%S/P%" ' +
      'order by bp.dIdFecha, a.iItemOrden ');


  if sTipo = 'Personalxoptativa' then
    Auxiliar.SQL.Add('select a.iItemOrden, a.sMedida, bp.dIdFecha, bp.sIdPersonal, Sum(bp.dCantidad) as dCantidad, ' +
      'bp.sDescripcion, a.sNumeroActividad from bitacoradepersonal bp ' +
      'Inner join actividadesxanexo a ' +
      'On (a.sContrato=bp.sContrato And a.sIdConvenio=:Convenio ' +
      'And a.sTipoActividad="Actividad" And a.sNumeroActividad=bp.sIdPersonal ' +
      'And a.sTipo="PERSONAL") ' +
      'Where bp.dIdFecha>=:FechaInicio ' +
      'And bp.dIdFecha <= :FechaFinal ' +
      'And bp.sContrato=:Contrato ' +
      'And sIdPersonal not like "%S/P%" ' +
      'Group by bp.sIdPersonal, dIdFecha ' +
      'order by bp.dIdFecha, a.iItemOrden ');


  if sTipo = 'barcoxtotaloptativas' then
    Auxiliar.SQL.Add('select p.sContrato, p.dIdFecha, p.sClasificacion, ' +
      'p.sDescripcion, Sum(p.dProrrateoOrden) as dProrrateoOrden, ' +
      'p.sNumeroOrden from prorrateos p ' +
      'where p.dIdFecha >= :FechaInicio ' +
      'And p.dIdFecha <= :FechaFinal ' +
      'And p.sContrato like "%OT-M-AP%" ' +
      'Group by p.dIdFecha, p.sClasificacion ' +
      'order by p.dIdFecha, p.sClasificacion ');

  if sTipo = 'barcoxtotalprogramadas' then
    Auxiliar.SQL.Add('select p.sContrato, p.dIdFecha, p.sClasificacion, ' +
      'p.sDescripcion, Sum(p.dProrrateoOrden) as dProrrateoOrden, ' +
      'p.sNumeroOrden from prorrateos p ' +
      'where p.dIdFecha >= :FechaInicio ' +
      'And p.dIdFecha <= :FechaFinal ' +
      'And p.sContrato like "%428238%" ' +
      'Group by p.dIdFecha, p.sClasificacion ' +
      'order by p.dIdFecha, p.sClasificacion ');


  if (sTipo <> 'barcoxtotalprogramadas') and (sTipo <> 'barcoxtotaloptativas') then
  begin
    Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
    Auxiliar.Params.ParamByName('Contrato').Value := Global_Contrato;
  end;
  if (sTipo = 'Personal') or (sTipo = 'Equipo') then
  begin
    Auxiliar.Params.ParamByName('Orden').DataType := ftString;
    Auxiliar.Params.ParamByName('Orden').Value := sParamOrden;
  end;

  if (sTipo <> 'barcoxtotalprogramadas') and (sTipo <> 'barcoxtotaloptativas') then
  begin
    Auxiliar.Params.ParamByName('Convenio').DataType := ftString;
    Auxiliar.Params.ParamByName('Convenio').Value := sParamConvenio;
  end;
  Auxiliar.Params.ParamByName('FechaInicio').DataType := ftDate;
  Auxiliar.Params.ParamByName('FechaInicio').Value := dParamFechaI;
  Auxiliar.Params.ParamByName('FechaFinal').DataType := ftDate;
  Auxiliar.Params.ParamByName('FechaFinal').Value := dParamFechaT;
  Auxiliar.open;

  Auxiliar2.Active := False;
  Auxiliar2.SQL.Clear;
  Auxiliar2.SQL.Add('select sNumeroOrden, mDescripcion from ordenesdetrabajo ' +
    'where sContrato  = :Contrato ' +
    'and sNumeroOrden = :Orden ');

  Auxiliar2.Params.ParamByName('Contrato').DataType := ftString;
  Auxiliar2.Params.ParamByName('Contrato').Value := Global_Contrato;
  Auxiliar2.Params.ParamByName('Orden').DataType := ftString;
  Auxiliar2.Params.ParamByName('Orden').Value := sParamOrden;
  Auxiliar2.open;

  dsBitacora.DataSet := Auxiliar;
  dsOt.DataSet := Auxiliar2;
  dsConfiguracion.DataSet := QryConfiguracion;

  rDiario.DataSets.Add(dsConfiguracion);
  rDiario.DataSets.Add(dsBitacora);
  rDiario.DataSets.Add(dsOt);

  sDiarioPeriodo := DateToStr(dParamFechaI) + ' AL ' + DateToStr(dParamFechaT);
  if sTipo = 'barcoxtotaloptativas' then
    sTipoAcumulado := 'TOTAL DE OPTATIVAS POR BARCO';
  if sTipo = 'barcoxtotalprogramadas' then
    sTipoAcumulado := 'TOTAL DE ANEXOS POR BARCO';

  rDiario.OnGetValue := tProcedure;
  rDiario.PreviewOptions.MDIChild := False;
  rDiario.PreviewOptions.Modal := True;
  rDiario.PreviewOptions.Maximized := lCheckMaximized();
  rDiario.PreviewOptions.ShowCaptions := False;
  rDiario.Previewoptions.ZoomMode := zmPageWidth;

  if sTipo = 'Personal' then
    rDiario.LoadFromFile(Global_Files + 'generadorPersonalxot.fr3');
  if sTipo = 'Equipo' then
    rDiario.LoadFromFile(Global_Files + 'generadorEquipoxot.fr3');

  if sTipo = 'Personalxoptativa' then
    rDiario.LoadFromFile(Global_Files + 'generadorPersonal.fr3');

  if sTipo = 'Equipoxoptativa' then
    rDiario.LoadFromFile(Global_Files + 'generadorEquipo.fr3');

  if sTipo = 'Pernoctas' then
    rDiario.LoadFromFile(Global_Files + 'generadorPernocta.fr3');
  if sTipo = 'barcoxoptativas' then
    rDiario.LoadFromFile(Global_Files + 'generadordeBarcoxOptativas.fr3');
  if sTipo = 'barcoxtotaloptativas' then
    rDiario.LoadFromFile(Global_Files + 'generadordeBarcoxtotaloptativas.fr3');
  if sTipo = 'barcoxtotalprogramadas' then
    rDiario.LoadFromFile(Global_Files + 'generadordeBarcoxtotaloptativas.fr3');


  if Auxiliar.RecordCount > 0 then
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', Auxiliar.FieldValues['dIdFecha'], tOrigen);

  rDiario.ShowReport;


  Auxiliar.Destroy;
  Auxiliar2.Destroy;
  dsBitacora.Destroy;
  dsOt.Destroy;
end;


procedure procSemanalSinConImportes(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
  //Revisado por <ivan> ... 17 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sTitulo, c2.sCodigo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3,  ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;


  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';
  //  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, a.dVentaMN, a.dVentaDLL, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, e2.dFechaFinal, ' +
    'e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, a.sAnexo, ' +
    'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, sum(e1.dCantidad) as dGenerado, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo ' +
    'from estimacionxpartida e1 inner join estimaciones e2 on ' +
    '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs ' +
    'And a.sTipoActividad = "Actividad" And a.sMedida<>"ACTIVIDAD" ) ' +
    'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador And e1.lEstima = "Si" Group by ' +
    'e1.sNumeroActividad Order By a.iItemOrden');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;
  if QryGenerador.RecordCount = 0 then
    messageDLG('El Generador No Contine Partidas!', mtInformation, [mbOk], 0)
  else
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    if sParamReporte = 'Sin Importes' then
      rCaratula.LoadFromFile(global_files + 'SemanalSinImportes.fr3');

    if (sParamReporte = 'Con Importes') and (global_Caratula = 'MN') then
      rCaratula.LoadFromFile(global_files + 'SemanalConImportes.fr3');

    if (sParamReporte = 'Con Importes') and (global_Caratula = 'DLL') then
      rCaratula.LoadFromFile(global_files + 'SemanalConImportesDLL.fr3');

    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
 //   rCaratula.ShowReport(FormatosExp, PermisosExp);
      rCaratula.ShowReport();
  end;
  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

procedure procCaratulaGenerador(iParamNivel :integer; sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad, WbsAnterior, WbsAnteriorPaquete, WbsActual: string;
  dCantidadOrden,
  dAcumuladoOrden,
  dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
  x, num, iNivel: integer;
  ArrayPaquetes: array[1..10, 1..4] of string;
begin
  //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select dac.descripcion, c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) INNER JOIN ( select (mDescripcion)AS descripcion from contratos c2 where c2.sContrato = c2.scodigo ) as dac Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  if QryConfiguracion.RecordCount > 0 then
    global_MiReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sTipoActividad', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sIdFolio', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sDescripcionCorta', ftString, 50, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sWbs', ftString, 75, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sIsometricoReferencia', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sSimbolo', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion1', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion2', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sValorConversion3', ftString, 20, True);
  rxGenerador.FieldDefs.Add('dConstante', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAlto', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dLargo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAncho', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dSubtotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dTotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sAnexo', ftString, 5, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select o.sDescripcionCorta, o.sIdFolio, a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sMedida, a.dCantidadAnexo, a.mDescripcion, a.sWbsAnterior, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio,  e1.sIsometricoReferencia, e1.iidGrupo, e1.iidPerimetro, ' +
    'e1.dConstante, e1.dAlto, e1.dAncho, e1.dLargo, e1.dSubtotal, a.sAnexo, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador and   replace(a.sWbs," ","") =replace(e1.sWbsContrato ," ","") AND    replace(a.sNumeroActividad," ","")=replace(e1.sNumeroActividad ," ","") )' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'inner Join ordenesdetrabajo o on (o.sContrato=e2.sContrato And o.sNumeroOrden=e2.sNumeroOrden) ' +
    'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Order By a.sWbs, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    sNumeroActividad := '';
    WbsAnterior := 'iv@n';
    WbsActual   := 'iv@n';
    WbsAnteriorPaquete := 'iv@an';
    while not QryGenerador.Eof do
    begin
        WbsAnterior := QryGenerador.FieldValues['sWbsAnterior'];
        num    := 1;
        iNivel := iParamNivel;
       //Insertamos los paquetes de las partidas si aplican
       if WbsAnteriorPaquete <> WbsAnterior then
       begin
          WbsAnteriorPaquete := WbsAnterior;
          while iNivel > 0 do
          begin
              //Consultamos los paquetes que le corresponden a cada partida.
              connection.QryBusca.Active;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('select sWbs, sWbsAnterior, sNumeroActividad, mDescripcion, dPonderado '+
                                          'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete" ');
              connection.QryBusca.ParamByName('Contrato').AsString  := sParamContrato;
              connection.QryBusca.ParamByName('Convenio').AsString  := sParamConvenio;
              connection.QryBusca.ParamByName('Orden').AsString     := sParamOrden;
              connection.QryBusca.ParamByName('Wbs').AsString       := WbsAnterior;
              connection.QryBusca.Open;

              if connection.QryBusca.RecordCount > 0 then
              begin
                  WbsAnterior          := connection.QryBusca.FieldValues['sWbsAnterior'];
                  ArrayPaquetes[num,1] := connection.QryBusca.FieldValues['sNumeroActividad'];
                  ArrayPaquetes[num,2] := connection.QryBusca.FieldValues['mDescripcion'];
                  ArrayPaquetes[num,3] := 'Paquete';
                  inc(num);
               end;
              iNivel := iNivel - 1;
          end;
      end;

      dec(num);
      while num > 0 do
      begin
          //Insertamos las partidas y paquetes..
          rxGenerador.Append;
          rxGenerador.FieldValues['sContrato']          := QryGenerador.FieldValues['sContrato'];
          rxGenerador.FieldValues['sIdFolio']           := QryGenerador.FieldValues['sIdFolio'];
          rxGenerador.FieldValues['sDescripcionCorta']  := QryGenerador.FieldValues['sDescripcionCorta'];

          rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
          rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
          rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

          if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
            rxGenerador.FieldValues['lValida'] := True
          else
            rxGenerador.FieldValues['lValida'] := False;

          if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
            rxGenerador.FieldValues['lAutoriza'] := True
          else
            rxGenerador.FieldValues['lAutoriza'] := False;

          rxGenerador.FieldValues['sTipoActividad']   := 'Paquete';
          rxGenerador.FieldValues['sWbs']             := QryGenerador.FieldValues['sWbs'];
          rxGenerador.FieldValues['sNumeroActividad'] := ArrayPaquetes[num,1];
          rxGenerador.FieldValues['mDescripcion']     := ArrayPaquetes[num,2];
          dec(num);
      end;

      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato']          := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sIdFolio']           := QryGenerador.FieldValues['sIdFolio'];
      rxGenerador.FieldValues['sDescripcionCorta']  := QryGenerador.FieldValues['sDescripcionCorta'];

      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['sTipoActividad']   := 'Actividad';
      rxGenerador.FieldValues['sWbs']             := QryGenerador.FieldValues['sWbs'];

      if iParamNivel > 0 then
      begin
          if WbsActual <> QryGenerador.FieldValues['sWbs'] then
          begin
              rxGenerador.FieldValues['sMedida']          := QryGenerador.FieldValues['sMedida'];
              rxGenerador.FieldValues['dConstante']       := QryGenerador.FieldValues['dCantidadAnexo'];
              rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
              rxGenerador.FieldValues['mDescripcion']     := QryGenerador.FieldValues['mDescripcion'];
              rxGenerador.FieldValues['sAnexo']           := QryGenerador.FieldValues['sAnexo'];
              WbsActual := QryGenerador.FieldValues['sWbs'];
          end;
      end
      else
      begin
          rxGenerador.FieldValues['sMedida']          := QryGenerador.FieldValues['sMedida'];
          rxGenerador.FieldValues['dConstante']       := QryGenerador.FieldValues['dCantidadAnexo'];
          rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
          rxGenerador.FieldValues['mDescripcion']     := QryGenerador.FieldValues['mDescripcion'];
          rxGenerador.FieldValues['sAnexo']           := QryGenerador.FieldValues['sAnexo'];
          WbsActual := QryGenerador.FieldValues['sWbs'];
      end;

      //Obtenemos la cantidad de Anexo de las partidas dentro del programa principal..
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
//      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
//        'sIdConvenio = :Convenio And sWbs = :Wbs And sTipoActividad = "Actividad"');
      QryAcumulados.SQL.Add('Select sum(dCantidadAnexo) as dCantidadAnexo From actividadesxanexo Where sContrato = :Contrato And ' +
                            'sIdConvenio = :Convenio And sNumeroActividad= :Actividad And sTipoActividad = "Actividad"');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
      QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
      QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
     // QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
     //QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').Value    := QryGenerador.FieldValues['sNumeroActividad'];

      QryAcumulados.Open;

      if QryAcumulados.RecordCount > 0 then
        rxGenerador.FieldValues['dCantidadAnexo'] := QryAcumulados.FieldValues['dCantidadAnexo']
      else
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

      if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
      begin
        sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
        if lParamMultiple then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
            'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbsContrato = :Wbs And sTipoActividad = "Actividad"');
          QryAcumulados.Params.ParamByName('Contrato').DataType  := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value     := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType     := ftString;
          QryAcumulados.Params.ParamByName('orden').Value        := sParamOrden;
          QryAcumulados.Params.ParamByName('Convenio').DataType  := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value     := sParamConvenio;
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value    := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType       := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value          := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dCantidadOrden := 0;
          while not QryAcumulados.Eof do
          begin
            dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
            QryAcumulados.Next
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
            'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","")= :Wbs And replace(e.sNumeroActividad ," ","")= :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('orden').DataType := ftString;
          QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Open;

          dAcumuladoOrden := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
        end;

        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
          'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
          'e.sNumeroGenerador = e1.sNumeroGenerador And replace(e.sWbsContrato ," ","") = :Wbs And replace(e.sNumeroActividad ," ","") = :Actividad) ' +
          'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
          'Group By e.sNumeroActividad');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
        QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
        QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Open;

        dAcumuladoAnexo := 0;
        if QryAcumulados.RecordCount > 0 then
          dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
      end;

      //coigo comentado, codigo eliminado,

      rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
      rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
      rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
      rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
      rxGenerador.FieldValues['sIsometricoReferencia'] := QryGenerador.FieldValues['sIsometricoReferencia'];
      rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
      rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];

      if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
      begin
        QryAuxiliar.Active := False;
        QryAuxiliar.SQL.Clear;
        QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
        QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
        QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
        QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
        QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
        QryAuxiliar.Open;
        mOrdenCambio := '';
        if QryAuxiliar.RecordCount > 0 then
          mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
            chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
            chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
        rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;

      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;
  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);


  if iParamNivel = 0 then
  begin
      if lParamMultiple then
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiple.fr3')
      else
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGenerador.fr3');
  end;

  if iParamNivel > 0 then
  begin
      if lParamMultiple then
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorMultiplePaquete.fr3')
      else
        rCaratula.LoadFromFile(global_files + global_MiReporte + '_CaratulaGeneradorPaquete.fr3');
  end;

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
//  rCaratula.ShowReport(FormatosExp, PermisosExp);
    rCaratula.ShowReport();

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;

function SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, Adjunto, texto: ansistring): boolean;
var
  res: boolean;
  Adj: TIdAttachmentFile;
  cadena: ansiString;

begin

  connection.idMessage.FromList.EMailAddresses := dirOrigen;
  connection.idMessage.Recipients.EMailAddresses := dirdest;

  if cco <> '' then
    connection.idMessage.BccList.Add.Address := cco;
  if cc <> '' then
    connection.idMessage.CCList.Add.Address := cc;

  connection.idMessage.Subject := asunto;
  connection.idMessage.Body.Clear;
  connection.idMessage.Body.Text := texto;

  if Adjunto <> '' then
    adj := TIdAttachmentfile.Create(connection.idMessage.MessageParts, Adjunto)
  else
    adj := nil;
    //TIdAttachmentFile
  res := false;

  if passservidor <> '' then
  begin
    connection.idSMTP.Username := dirOrigen;
    connection.idSMTP.Password := passservidor;

    try
      try
        if not connection.idsmtp.Connected then
        begin
          connection.idsmtp.Connect;
          if connection.idsmtp.Connected then
        end;
        connection.idSMTP.Send(connection.IdMessage);
        Application.MessageBox('Mensaje enviado.', 'Aviso', MB_OK + MB_ICONINFORMATION);
        res := true;
        freeandnil(adj);
      except
        on e: eidosslcouldnotloadssllibrary do
        begin
          freeandnil(adj);
          //result := SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, adjunto, texto);
        end;
      end;
    finally
      connection.idsmtp.Disconnect(true);
    end;
  end;
  result := res;
end;


function lfnValidaGenerador(sParamContrato, sParamConvenio, sParamOrden, sParamGenerador: string; tOrigen: TComponent): Boolean;
var
  QryOrdenCambio: tzReadOnlyQuery;
  QryAuxEstimado: tzReadOnlyQuery;
  lExceso: Boolean;
begin
  lExceso := True;
  QryAuxiliar := tzReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  QryOrdenCambio := tzReadOnlyQuery.Create(tOrigen);
  QryOrdenCambio.Connection := connection.zconnection;

  QryAuxEstimado := tzReadOnlyQuery.Create(tOrigen);
  QryAuxEstimado.Connection := connection.zconnection;

  QryAuxEstimado.Active := False;
  QryAuxEstimado.SQL.Clear;
  QryAuxEstimado.SQL.Add('Select Sum(dCantidad) as dTotalEstimado from estimacionxpartida a ' +
    'inner join estimaciones b on (a.sContrato = b.sContrato And a.sNumeroOrden = b.sNumeroOrden And a.sNumeroGenerador = b.sNumeroGenerador And b.iConsecutivo <= :Consecutivo) ' +
    'Where a.sContrato = :Contrato And a.sNumeroActividad = :Actividad Group By a.sNumeroActividad');

  QryAuxiliar.Active := False;
  QryAuxiliar.SQL.Clear;
  QryAuxiliar.SQL.Add('Select e2.iConsecutivo, e.sNumeroActividad, e.dCantidad, e.iOrdenCambio, a.dCantidadAnexo From estimacionxpartida e ' +
    'INNER JOIN actividadesxanexo a ON (a.sContrato = e.sContrato And a.sIdConvenio = :Convenio And a.sNumeroActividad = e.sNumeroActividad And a.sTipoActividad = "Actividad" And a.lExtraordinario = "No") ' +
    'INNER JOIN estimaciones e2 ON (e2.sContrato = e.sContrato And e2.sNumeroOrden = e.sNumeroOrden And e2.sNumeroGenerador = e.sNumeroGenerador) ' +
    'Where e.sContrato = :Contrato And e.sNumeroOrden = :Orden And e.sNumeroGenerador = :Generador');
  QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Contrato').Value := sParamContrato;
  QryAuxiliar.Params.ParamByName('Convenio').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryAuxiliar.Params.ParamByName('Orden').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Orden').Value := sParamOrden;
  QryAuxiliar.Params.ParamByName('Generador').DataType := ftString;
  QryAuxiliar.Params.ParamByName('Generador').Value := sParamGenerador;
  QryAuxiliar.Open;
  lExceso := True;
  while not QryAuxiliar.Eof and lExceso do
  begin
    if QryAuxiliar.FieldValues['dCantidad'] > 0 then
    begin
      QryAuxEstimado.Active := False;
      QryAuxEstimado.Params.ParamByName('Contrato').DataType := ftString;
      QryAuxEstimado.Params.ParamByName('Contrato').Value := sParamContrato;
      QryAuxEstimado.Params.ParamByName('Consecutivo').DataType := ftInteger;
      QryAuxEstimado.Params.ParamByName('Consecutivo').Value := QryAuxiliar.FieldValues['iConsecutivo'];
      QryAuxEstimado.Params.ParamByName('Actividad').DataType := ftString;
      QryAuxEstimado.Params.ParamByName('Actividad').Value := QryAuxiliar.FieldValues['sNumeroActividad'];
      QryAuxEstimado.Open;
      if QryAuxEstimado.RecordCount > 0 then
        if QryAuxEstimado.FieldValues['dTotalEstimado'] > 0 then
          if QryAuxEstimado.FieldValues['dTotalEstimado'] > QryAuxiliar.FieldValues['dCantidadAnexo'] then
            if QryAuxiliar.FieldValues['iOrdenCambio'] = 0 then
              lExceso := False
            else
            begin
              QryOrdenCambio.Active := False;
              QryOrdenCambio.SQL.Clear;
              QryOrdenCambio.SQL.Add('Select iCedulaProcedencia From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
              QryOrdenCambio.Params.ParamByName('Contrato').DataType := ftString;
              QryOrdenCambio.Params.ParamByName('Contrato').Value := global_contrato;
              QryOrdenCambio.Params.ParamByName('orden').DataType := ftInteger;
              QryOrdenCambio.Params.ParamByName('orden').Value := QryAuxiliar.FieldValues['iOrdenCambio'];
              QryOrdenCambio.Open;
              if QryOrdenCambio.RecordCount = 0 then
                lExceso := False
            end
    end;
    QryAuxiliar.Next
  end;
  QryOrdenCambio.Destroy;
  QryAuxiliar.Destroy;
  QryAuxEstimado.Destroy;
  if not lExceso then
  begin
    if connection.configuracion.FieldValues['sSeguridadGenerador'] = 'Sin Seguridad' then
      lExceso := True
    else
      if (global_grupo = 'INTEL-CODE') then
        lExceso := True;
  end;
  result := lExceso
end;

function xIntToLletres(Numero: LongInt): string;
var
  Millions, mils, unitats: Longint;
  Linea: string;
begin
     {Inicializamos el string que contendra las letras segun el valor numerico}
  if numero = 0 then Linea := 'CERO'
  else if numero < 0 then Linea := 'MENOS '
  else if numero > 0 then Linea := '';
     {Determinamos el Nº de millones, miles, i unidades de numero en positivo}
  Numero := Abs(Numero);
  millions := numero div 1000000;
  mils := (numero - (millions * 1000000)) div 1000;
  unitats := numero - ((millions * 1000000) + (mils * 1000));
     {Vamos poniendot en el string las cadenas de los numeros(llamando a subfuncion)}
  if millions = 1 then Linea := Linea + ' UN MILLON '
  else if millions > 1 then Linea := Linea + xxIntToLletres(millions) + ' MILLONES ';
  if mils = 1 then Linea := Linea + ' MIL '
  else if mils > 1 then Linea := Linea + xxIntToLletres(mils) + ' MIL ';
  if unitats > 0 then Linea := Linea + xxIntToLletres(unitats);
  xIntToLletres := Linea;
end;

function sProrrateaBarco(dParamFecha: TDate; sParamBarco: string; tOrigen: TComponent; iParamRedondeo: Integer): string;
var
  QryConsulta: tzQuery;
  Valor,
  Cadena: string;
  PosicionMin, PosicionMax: Pointer;
  iValor,
  Acumulado,
  iDecimales, i: Integer;
  OldRangoMax,
  OldRangoMin,
  Acum,
  CuentaP: Real;
  Progress: TProgressBar;
  PasoValor, mExcel: Extended;
  ExisteAjuste: Boolean;
begin
  // Codigo optimizado por Eduardo Rangel - 03 de Marzo de 2011
  // Función: Optimizar el tiempo de generación de reporte de embarcación
  if iParamRedondeo = -1 then
  begin
    Connection.configuracion.Refresh;
    iDecimales := Connection.configuracion.FieldValues['iRedondeoEmbarcacion'];
  end
  else
    iDecimales := iParamRedondeo;

  mExcel := 0.1;
  for I := 0 to iDecimales do
    mExcel := mExcel * 10;

  // Crear una transacción
  Connection.CommandTrx.Active := False;
  Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
  Connection.CommandTrx.ExecSQL;

  try
    try
      QryConsulta := tzQuery.Create(tOrigen);
      QryConsulta.Connection := connection.ConnTrx;
      QryConsulta.Active := False;
      Qryconsulta.SQL.Clear;
      QryConsulta.Sql.Text := 'select a.*, ' +
                              '(select count(*) from movimientosdeembarcacion b where b.sContrato = a.sContrato and b.dIdfecha = a.dIdFecha and b.sIdEmbarcacion = a.sIdEmbarcacion and ' +
                              '(((LEFT(b.sHoraFinal, 2) * 60) + RIGHT(b.sHoraFinal, 2)) - ((LEFT(b.sHoraInicio, 2) * 60) + RIGHT(b.sHoraInicio, 2))) = ' +
                              '(((LEFT(a.sHoraFinal, 2) * 60) + RIGHT(a.sHoraFinal, 2)) - ((LEFT(a.sHoraInicio, 2) * 60) + RIGHT(a.sHoraInicio, 2)))) as Cuenta ' +
                              'from movimientosdeembarcacion a inner join tiposdemovimiento c on (a.sContrato = c.sContrato and a.sClasificacion = c.sIdTipoMovimiento) ' +
                              'WHERE a.sContrato = :Contrato and a.dIdfecha = :Fecha and a.sIdEmbarcacion = :Barco order by sIdEmbarcacion, sHoraInicio';
      {QryConsulta.SQL.Add('select movimientosdeembarcacion.* ' +
        'from movimientosdeembarcacion ' +
        'inner join tiposdemovimiento on (movimientosdeembarcacion.sContrato = tiposdemovimiento.sContrato ' +
        'and movimientosdeembarcacion.sClasificacion = tiposdemovimiento.sIdTipoMovimiento) ' +
        'where movimientosdeembarcacion.dIdFecha = :Fecha and movimientosdeembarcacion.sIdEmbarcacion = :barco order by sIdEmbarcacion, sHoraInicio');}
      QryConsulta.Active := False;
      QryConsulta.Params.ParamByName('contrato').DataType := ftString;
      QryConsulta.Params.ParamByName('contrato').Value := global_contrato;
      QryConsulta.Params.ParamByName('Fecha').DataType := ftDate;
      QryConsulta.Params.ParamByName('Fecha').Value := dParamFecha;
      QryConsulta.Params.ParamByName('barco').DataType := ftString;
      QryConsulta.Params.ParamByName('barco').Value := sParamBarco;
      QryConsulta.Open;

      // Por seguridad se debe verificar que exista al menos un registro en el cual se pueda aplicar el ajuste final
      ExisteAjuste := False;
      while (not QryConsulta.Eof) and (Not ExisteAjuste) do
      begin
        ExisteAjuste := QryConsulta.FieldByName('Cuenta').AsInteger = 1;
        QryConsulta.Next;
      end;
      QryConsulta.First;

      case RngTipoAjuste of
        0: OldRangoMax := 0;
        1: OldRangoMin := 10;
        2,3: begin
               OldRangoMax := 0;
               OldRangoMin := 10;
             end;
        4: OldRangoMin := 10;
        5: OldRangoMax := 0;
      end;

      Acumulado := 0;
      Acum := 0;

      // Verificar si se cuenta con un objeto de progreso
      for iValor := 0 to tOrigen.ComponentCount - 1 do
        if (CompareText(tOrigen.Components[iValor].ClassName, 'tpanel') = 0) and (tOrigen.Components[iValor].Name = 'PanelProgress') then
          if (TWinControl(tOrigen.Components[iValor]).ControlCount = 5) and (CompareText(TWinControl(TWinControl(tOrigen.Components[iValor]).Controls[4]).Name, 'progressbar1') = 0) then
            Progress := TProgressBar(TWinControl(tOrigen.Components[iValor]).Controls[4]);

      if Assigned(Progress) then
      begin
        CuentaP := ((1 / ProgPartes) / (QryConsulta.RecordCount + 1)) * (Progress.Max - Progress.Min);
        AcumulaProgress := AcumulaProgress + CuentaP;
        Progress.Position := Trunc(AcumulaProgress);
      end;

      while not QryConsulta.Eof do
      begin
        if Assigned(Progress) then
        begin
          AcumulaProgress := AcumulaProgress + CuentaP;
          Progress.Position := Trunc(AcumulaProgress);
        end;

        // Desarrollar el tiempo en minutos
        Cadena := QryConsulta.FieldByName('sHoraFinal').AsString;
        iValor := (StrToInt(leftstr(Cadena, 2)) * 60) + StrToInt(RightStr(Cadena, 2));

        Cadena := QryConsulta.FieldByName('sHoraInicio').AsString;
        iValor := iValor - ((StrToInt(Leftstr(Cadena, 2)) * 60) + StrToInt(RightStr(Cadena, 2)));

        Acumulado := Acumulado + iValor;

        if (QryConsulta.FieldValues['sHoraInicio'] = '00:00') and (QryConsulta.FieldValues['sHoraFinal'] = '24:00') then
          Valor := '1'
        else
          Valor := sfnFactor(QryConsulta.FieldValues['sHoraInicio'], QryConsulta.FieldValues['sHoraFinal'], 24, iDecimales);

        Acum := Acum + Round(StrToFloat(Valor) * mExcel);

        // Verificar que este registro puede ser optativo para ajuste final
        if (QryConsulta.FieldByName('Cuenta').AsInteger = 1) or (Not ExisteAjuste) then
        begin
          // Marcar el registro adecuado en base al criterio indicado por el usuario
          case RngTipoAjuste of
            0: begin
              // Localizar el registro de mayor tiempo
              if StrToFloat(Valor) > OldRangoMax then
              begin
                OldRangoMax := StrToFloat(Valor);
                PosicionMax := QryConsulta.GetBookmark;
              end;
            end;

            1: begin
              // Localizar el registro de menor tiempo
              if StrToFloat(Valor) < OldRangoMin then
              begin
                OldRangoMin := StrToFloat(Valor);
                PosicionMin := QryConsulta.GetBookmark;
              end;
            end;

            2: begin
              // Localizar ambos registros
              if StrToFloat(Valor) > OldRangoMax then
              begin
                OldRangoMax := StrToFloat(Valor);
                PosicionMax := QryConsulta.GetBookmark;
              end;

              if StrToFloat(Valor) < OldRangoMin then
              begin
                OldRangoMin := StrToFloat(Valor);
                PosicionMin := QryConsulta.GetBookmark;
              end;
            end;

            3: begin
              // Localizar ambos registros
              if StrToFloat(Valor) > OldRangoMax then
              begin
                OldRangoMax := StrToFloat(Valor);
                PosicionMax := QryConsulta.GetBookmark;
              end;

              if StrToFloat(Valor) < OldRangoMin then
              begin
                OldRangoMin := StrToFloat(Valor);
                PosicionMin := QryConsulta.GetBookmark;
              end;
            end;

            4: begin
              // Solo el primero debe ser seleccionado
              if QryConsulta.RecNo = 1 then
              begin
                OldRangoMin := StrToFloat(Valor);
                PosicionMin := QryConsulta.GetBookmark;
              end;
            end;

            5: begin
              // Solo seleccionar el último
              if QryConsulta.RecNo = QryConsulta.RecordCount then
              begin
                OldRangoMax := StrToFloat(Valor);
                PosicionMax := QryConsulta.GetBookmark;
              end;
            end;
          end;
        end;

        // Verificar si es necesario grabar la información
        if Valor <> QryConsulta.FieldByName('sFactor').AsString then
        begin
          QryConsulta.Edit;
          QryConsulta.FieldByName('sFactor').AsString := Valor;
          QryConsulta.Post;
        end;

        QryConsulta.Next;
      end;

      // Terminar el ciclo verificar si es necesario ajustar el tiempo
      if Acumulado = 1440 then
      begin
        // Ajustar solamente si se trata del tiempo completo
        case RngTipoAjuste of
          0: begin
            if QryConsulta.BookmarkValid(PosicionMax) then
            begin
              QryConsulta.GotoBookmark(PosicionMax);
              QryConsulta.Edit;
              PasoValor := (Trunc(mExcel) - Acum) / mExcel;
              //PasoValor := (Trunc(mExcel) - Round(Acum * mExcel)) / mExcel;
              QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
              QryConsulta.Post;
            end
            else
              raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
          end;

          1: begin
            if QryConsulta.BookmarkValid(PosicionMin) then
            begin
              QryConsulta.GotoBookmark(PosicionMin);
              QryConsulta.Edit;
              PasoValor := (Trunc(mExcel) - Acum) / mExcel;
              //PasoValor := (Trunc(mExcel) - Round(Acum * mExcel)) / mExcel;
              QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
              QryConsulta.Post;
            end
            else
              raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
          end;

          2: begin
            PasoValor := (Trunc(mExcel) - Acum) / mExcel;
            if PasoValor<>0 then
            begin
              if PasoValor > 0 then
              begin
                if QryConsulta.BookmarkValid(PosicionMin) then
                begin
                  QryConsulta.GotoBookmark(PosicionMin);
                  QryConsulta.Edit;
                  QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
                  QryConsulta.Post;
                end
                else
                  raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
              end
              else
              begin
                if (QryConsulta.BookmarkValid(PosicionMax)) and (PasoValor < 0) then
                begin
                  QryConsulta.GotoBookmark(PosicionMax);
                  QryConsulta.Edit;
                  QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
                  QryConsulta.Post;
                end
                else
                  raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
              end;
            end;
          end;

          3: begin
            PasoValor := (Trunc(mExcel) - Acum) / mExcel;

            if PasoValor<>0 then
            begin
              if PasoValor < 0 then
              begin
                if QryConsulta.BookmarkValid(PosicionMin) then
                begin
                  QryConsulta.GotoBookmark(PosicionMin);
                  QryConsulta.Edit;
                  QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
                  QryConsulta.Post;
                end
                else
                  raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
              end
              else
              begin
                if (QryConsulta.BookmarkValid(PosicionMax)) and (PasoValor < 0) then
                begin
                  QryConsulta.GotoBookmark(PosicionMax);
                  QryConsulta.Edit;
                  QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
                  QryConsulta.Post;
                end
                else
                  raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
              end;
            end;
          end;

          4: begin
            if QryConsulta.BookmarkValid(PosicionMin) then
            begin
              QryConsulta.GotoBookmark(PosicionMin);
              QryConsulta.Edit;
              PasoValor := (Trunc(mExcel) - Acum) / mExcel;
              QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
              QryConsulta.Post;
            end
            else
              raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
          end;

          5: begin
            if QryConsulta.BookmarkValid(PosicionMax) then
            begin
              QryConsulta.GotoBookmark(PosicionMax);
              QryConsulta.Edit;
              PasoValor := (Trunc(mExcel) - Acum) / mExcel;
              QryConsulta.FieldByName('sFactor').AsFloat := QryConsulta.FieldByName('sFactor').AsFloat + PasoValor;
              QryConsulta.Post;
            end
            else
              raise exception.Create('No se ha podido localizar el registro para ajuste de tiempos de embarcación');
          end;
        end;
      end;

      Connection.ConnTrx.Commit; // Terminar la transacción
    finally
      QryConsulta.Destroy;
      result := '0.000000';
    end;
  except
    on e: EZSQLThrowable do
    begin
      Connection.ConnTrx.Rollback;
      messagedlg('Ha ocurrido un error al intentar registrar la distribución de embarcación', mtInformation, [mbOk], 0);
    end;

    on e: Exception do
    begin
      Connection.ConnTrx.Rollback;
      messagedlg('Ha ocurrido un error al intentar registrar la distribución de embarcación', mtInformation, [mbOk], 0);
    end;
  end;
end;


procedure procNumeroGenerador(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio, sParamReporte: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  dsGenerador: TfrxDBDataSet;

  sNumeroActividad: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
begin
   //Revisado por <ivan> ... 16 Sept 2010..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sTitulo, c2.sCodigo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := QryGenerador;
  dsGenerador.UserName := 'dsGenerador';

//  rCaratula.DataSets.Add(dsGenerador) ;

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  if sParamReporte = 'Cliente' then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, sum(e1.dCantidad) as dGenerado, a.sAnexo, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo  ' +
      'from estimacionxpartida e1 inner join estimaciones e2 on ' +
      '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs And a.sTipoActividad = "Actividad" ) ' +
      'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador Group by ' +
      'e1.sIsometricoReferencia, e1.sNumeroActividad Order By e1.sIsometricoReferencia, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');

  if sParamReporte = 'Contratista' then
    QryGenerador.SQL.Add('Select a.sNumeroActividad, a.sMedida, a.dCantidadAnexo, a.mDescripcion, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.sFaseObra, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e1.sIsometricoReferencia, e1.sIsometrico, e1.sPrefijo, sum(e1.dCantidad) as dGenerado, a.sAnexo, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst, e2.sNumeroAnexo ' +
      'from estimacionxpartida e1 inner join estimaciones e2 on ' +
      '(e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And e1.sNumeroGenerador = e2.sNumeroGenerador) ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'inner join actividadesxanexo a on (e1.sContrato = a.sContrato And a.sIdConvenio = :Convenio And e1.sNumeroActividad = a.sNumeroActividad And e1.sWbsContrato = a.sWbs And a.sTipoActividad = "Actividad") Where ' +
      'e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.sNumeroGenerador = :Generador Group by ' +
      'e1.sIsometrico, e1.sNumeroActividad Order By e1.sIsometrico, e1.sPrefijo, a.sWbs, a.iItemOrden');

  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;

  if QryGenerador.RecordCount > 0 then
  begin
    rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);
    if sParamReporte = 'Cliente' then
      rCaratula.LoadFromFile(global_files + 'NumerosGeneradores.fr3')
    else
      rCaratula.LoadFromFile(global_files + 'NumerosGeneradoresContratista.fr3');

    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
   // rCaratula.ShowReport(FormatosExp, PermisosExp);
      rCaratula.ShowReport() ;
  end
  else
    messageDLG('El Generador No Contiene Partidas!', mtInformation, [mbOK], 0);

  rCaratula.Destroy;
  QryGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;


function lCheckMaximized(): Boolean;
var
  MiArchivo: string;
  FileText: TextFile;
  iPos: Byte;
  wCadena: string;
begin
  MiArchivo := global_archivoini;
  AssignFile(FileText, MiArchivo);
  Reset(FileText);
  Result := False;
  while not Eof(FileText) do
  begin
    ReadLn(FileText, wCadena);
    iPos := Pos('=', wCadena);
    if UpperCase(MidStr(wCadena, 1, iPos - 1)) = 'MAXIMIZED' then
      if UpperCase(MidStr(wCadena, iPos + 1, Length(wCadena))) = 'SI' then
        Result := True
  end;
  CloseFile(FileText);
end;

procedure rOrdenCambio(sParamContrato: string; iParamCedula: Integer; tOrigen: TComponent);
var
  frxOrdenCambio: TfrxReport;
  QryOrdenCambio: tzReadOnlyQuery;
  dsOrdendeCambio: TfrxDBDataSet;
begin

  QryOrdenCambio := tzReadOnlyQuery.Create(tOrigen);
  QryOrdenCambio.Connection := connection.zconnection;

  frxOrdenCambio := TfrxReport.Create(tOrigen);
  frxOrdenCambio.PreviewOptions.MDIChild := False;
  frxOrdenCambio.PreviewOptions.Modal := True;
  frxOrdenCambio.PreviewOptions.Maximized := lCheckMaximized();
  frxOrdenCambio.PreviewOptions.ShowCaptions := False;
  frxOrdenCambio.Previewoptions.ZoomMode := zmPageWidth;
  dsOrdendeCambio := TfrxDBDataSet.Create(tOrigen);

  dsOrdendeCambio.FieldAliases.Clear;
  dsOrdendeCambio.DataSet := QryOrdenCambio;
  dsOrdendeCambio.UserName := 'dsOrdendeCambio';

  frxOrdenCambio.DataSets.Add(dsOrdendeCambio);


  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select lLicencia From configuracion Where sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  QryOrdenCambio.Active := False;
  QryOrdenCambio.SQL.Clear;
  QryOrdenCambio.SQL.Add('Select o.*, c.mDescripcion, c.bImagen, c2.sNombre, ' +
    'c2.sDireccion1, c2.sDireccion2, c2.sDireccion3, c2.bImagen as bImagenCIA From ordendecambio o ' +
    'inner join contratos c on (o.sContrato = c.sContrato) ' +
    'inner join configuracion c2 on (o.sContrato = c2.sContrato) ' +
    'Where o.sContrato = :Contrato And o.iCedulaProcedencia = :Cedula');
  QryOrdenCambio.Params.ParamByName('Contrato').DataType := ftString;
  QryOrdenCambio.Params.ParamByName('Contrato').Value := sParamContrato;
  QryOrdenCambio.Params.ParamByName('Cedula').DataType := ftInteger;
  QryOrdenCambio.Params.ParamByName('Cedula').Value := iParamCedula;
  QryOrdenCambio.Open;
  if QryOrdenCambio.RecordCount > 0 then
  begin
    frxOrdenCambio.LoadFromFile(global_files + 'OrdendeCambio.fr3');
    if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
      frxOrdenCambio.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
    else
      frxOrdenCambio.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
    frxOrdenCambio.ShowReport();
  end;

  frxOrdenCambio.Destroy;
  QryOrdenCambio.Destroy;
  dsOrdendeCambio.Destroy;
  QryConfiguracion.Destroy;
end;


procedure procGeneradorConversiones(sParamContrato, sParamEstimacion, sParamOrden, sParamGenerador, sParamConvenio: string; tOrigen: TComponent; tProcedure: tfrxGETvalueEvent; lReporte: string; lParamMultiple: Boolean; FormatosExp: string = ''; PermisosExp: string = '');
var
  rCaratula: TfrxReport;
  rxGenerador: TrxMemoryData;
  dsGenerador: TfrxDBDataSet;
  sNumeroActividad,
    sPaquete, Wbs: string;
  dCantidadOrden,
    dAcumuladoOrden,
    dAcumuladoAnexo: Currency;
  mOrdenCambio: WideString;
  x, num, p_sindespiece: integer;
  lContinua: boolean;
begin
  //Revisado por <ivan> ... 18 Julio 2011..
  QryConfiguracion := TZReadOnlyQuery.Create(tOrigen);
  QryConfiguracion.Connection := connection.zconnection;

  dsConfiguracion := TfrxDBDataSet.Create(tOrigen);
  dsConfiguracion.DataSet := QryConfiguracion;
  dsConfiguracion.UserName := 'dsConfiguracion';

  QryConfiguracion.Active := False;
  QryConfiguracion.SQL.Clear;
  QryConfiguracion.SQL.Add('select c2.sLicitacion, c2.sCodigo, c2.sTitulo, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, ' +
    'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, c.sLeyenda1, c.sLeyenda2, c.sLeyenda3, ' +
    'c.bImagen, c.sContrato, c.sNombre, c.sNombreCorto, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.iFirmas, c.sReportesCIA, ' +
    'c2.mDescripcion, c2.mCliente, c2.bImagen as bImagenPEP, c2.sCentroGestor, ' +
    'c2.sCentroBeneficio, c2.sPosicionFinanciera, c2.sElementoPEP,  c2.sCentroCosto, c2.sFondo, c2.sCuentaMayor, c2.sTipoObra ' +
    'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
    'Where c2.sContrato = :Contrato');
  QryConfiguracion.Params.ParamByName('contrato').DataType := ftString;
  QryConfiguracion.Params.ParamByName('contrato').Value := sParamContrato;
  QryConfiguracion.Open;

  if QryConfiguracion.RecordCount > 0 then
    global_MiReporte := QryConfiguracion.FieldValues['sReportesCIA'];

  QryGenerador := TZReadOnlyQuery.Create(tOrigen);
  QryGenerador.Connection := connection.zconnection;

  QryAcumulados := TZReadOnlyQuery.Create(tOrigen);
  QryAcumulados.Connection := connection.zconnection;

  QryAuxiliar := TZReadOnlyQuery.Create(tOrigen);
  QryAuxiliar.Connection := connection.zconnection;

  rCaratula := TfrxReport.Create(tOrigen);
  rCaratula.PreviewOptions.MDIChild := False;
  rCaratula.PreviewOptions.Modal := True;
  rCaratula.PreviewOptions.Maximized := lCheckMaximized();
  rCaratula.PreviewOptions.ShowCaptions := False;
  rCaratula.Previewoptions.ZoomMode := zmPageWidth;
  rCaratula.OnGetValue := tProcedure;

  rxGenerador := TrxMemoryData.Create(tOrigen);
  rxGenerador.Active := False;
  rxGenerador.FieldDefs.Add('sContrato', ftString, 15, True);
  rxGenerador.FieldDefs.Add('sNumeroOrden', ftString, 35, True);
  rxGenerador.FieldDefs.Add('iSemana', ftInteger, 0, True);
  rxGenerador.FieldDefs.Add('sNumeroGenerador', ftString, 10, True);
  rxGenerador.FieldDefs.Add('sWbs', ftString, 50, True);
  rxGenerador.FieldDefs.Add('sNumeroActividad', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sPaquete', ftString, 20, True);
  rxGenerador.FieldDefs.Add('mDescripcion', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('sMedida', ftString, 8, True);
  rxGenerador.FieldDefs.Add('dCantidadAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCantidadOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('sIsometrico', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sIsometricoReferencia', ftString, 35, True);
  rxGenerador.FieldDefs.Add('sPrefijo', ftString, 4, True);
  rxGenerador.FieldDefs.Add('dCantidad', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('mProblematica', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoOrden', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAcumuladoAnexo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
  rxGenerador.FieldDefs.Add('dFechaInicio', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinal', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('sMoneda', ftString, 15, True);
  rxGenerador.FieldDefs.Add('dFechaInicioG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('dFechaFinalG', ftDate, 0, True);
  rxGenerador.FieldDefs.Add('mComentarios', ftMemo, 0, True);
  rxGenerador.FieldDefs.Add('lValida', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('lAutoriza', ftBoolean, 0, True);
  rxGenerador.FieldDefs.Add('sEje', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sEje1', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sEje2', ftString, 20, True);
  rxGenerador.FieldDefs.Add('sTipo', ftString, 20, True);
  rxGenerador.FieldDefs.Add('dNumVeces', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dCaras', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAlto', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dLargo', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dAncho', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dSubtotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('dTotal', ftFloat, 0, True);
  rxGenerador.FieldDefs.Add('bImagen', ftGraphic, 0, True);
  rxGenerador.Active := True;

  dsGenerador := TfrxDBDataSet.Create(tOrigen);
  dsGenerador.FieldAliases.Clear;
  dsGenerador.DataSet := rxGenerador;
  dsGenerador.UserName := 'dsGenerador';

  rCaratula.DataSets.Add(dsConfiguracion);
  rCaratula.DataSets.Add(dsGenerador);

  QryGenerador.Active := False;
  QryGenerador.SQL.Clear;
  QryGenerador.SQL.Add('Select a.sNumeroActividad, e1.sWbsContrato, e1.sWbs, a.sWbsAnterior, a.sMedida, a.dCantidadAnexo, a.mDescripcion, ' +
    'e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.iConsecutivo, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
    'e1.sIsometrico, e1.sPrefijo, e1.dCantidad, e1.iOrdenCambio, e1.sIsometricoReferencia, ' +
    'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from actividadesxanexo a ' +
    'inner join estimaciones e2 on (a.sContrato = e2.sContrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador) ' +
    'INNER JOIN estimacionxpartida e1 ON (e1.sContrato = e2.sContrato And e1.sNumeroOrden = e2.sNumeroOrden And ' +
    'e1.sNumeroGenerador = e2.sNumeroGenerador and e1.sWbsContrato = a.sWbs and e1.sNumeroActividad = a.sNumeroActividad ) ' +
    'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
    'where a.sContrato = :Contrato And a.sMedida<>"ACTIVIDAD" And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" Order By a.sWbs, a.iItemOrden, e1.sIsometrico, e1.sPrefijo');
  QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
  QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
  QryGenerador.Params.ParamByName('Convenio').DataType := ftString;
  QryGenerador.Params.ParamByName('Convenio').Value := sParamConvenio;
  QryGenerador.Params.ParamByName('Orden').DataType := ftString;
  QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
  QryGenerador.Params.ParamByName('Generador').DataType := ftString;
  QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
  QryGenerador.Open;


  if (QryGenerador.RecordCount > 0) then
  begin
    sNumeroActividad := '';
    sPaquete := '';
    while not QryGenerador.Eof do
    begin
      lContinua := False;
      QryAcumulados.Active := False;
      QryAcumulados.SQL.Clear;
      QryAcumulados.SQL.Add('select * from estimaciondespiece where sContrato = :Contrato ' +
        'And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
        'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico ');
      QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
      QryAcumulados.Params.ParamByName('Contrato').value := Global_Contrato;
      QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
      QryAcumulados.Params.ParamByName('Orden').value := QryGenerador.FieldValues['sNumeroOrden'];
      QryAcumulados.Params.ParamByName('Generador').DataType := ftString;
      QryAcumulados.Params.ParamByName('Generador').value := QryGenerador.FieldValues['sNumeroGenerador'];
      QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
      QryAcumulados.Params.ParamByName('Wbs').value := QryGenerador.FieldValues['sWbs'];
      QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
      QryAcumulados.Params.ParamByName('Actividad').value := QryGenerador.FieldValues['sNumeroActividad'];
      QryAcumulados.Params.ParamByName('Isometrico').DataType := ftString;
      QryAcumulados.Params.ParamByName('Isometrico').value := QryGenerador.FieldValues['sIsometrico'];
      QryAcumulados.Open;

      if QryAcumulados.RecordCount = 0 then
        Inc(p_sindespiece);

         {Generador tuberia,,}
      if lReporte = 'ReporteTuberia' then
      begin
        if QryAcumulados.RecordCount > 0 then
        begin
          while not QryAcumulados.Eof do
          begin
            if ((QryAcumulados.FieldValues['sEje'] = 'OC') or (QryAcumulados.FieldValues['sEje'] = 'oc') or
              (QryAcumulados.FieldValues['sEje'] = 'Oc') or (QryAcumulados.FieldValues['sEje'] = 'oC')) then
            begin
              QryAcumulados.Eof;
              lContinua := True;
            end;
            QryAcumulados.Next;
          end;
        end;
      end;

         {Generador perimetro,,}
      if lReporte = 'ReportePerimetro' then
      begin
        QryAcumulados.First;
        while not QryAcumulados.Eof do
        begin
          if ((QryAcumulados.FieldValues['sEje'] = 'IPR') or (QryAcumulados.FieldValues['sEje'] = 'ipr') or
            (QryAcumulados.FieldValues['sEje'] = 'Ipr')) then
          begin
            QryAcumulados.Eof;
            lContinua := True;
          end;
          QryAcumulados.Next;
        end;
      end;

        {Generador angulos,,}
      if lReporte = 'ReporteAngulo' then
      begin
        QryAcumulados.First;
        while not QryAcumulados.Eof do
        begin
          if ((QryAcumulados.FieldValues['sEje'] = 'LI') or (QryAcumulados.FieldValues['sEje'] = 'li') or
            (QryAcumulados.FieldValues['sEje'] = 'Li')) then
          begin
            QryAcumulados.Eof;
            lContinua := True;
          end;
          QryAcumulados.Next;
        end;
      end;

      if lReporte = 'DespiezadoGeneral' then
      begin
            {buscamos los tipos de despieces existentes..}
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select * from perimetros group by sTipo ');
        connection.QryBusca2.Open;


        lContinua := True;

        QryAcumulados.First;
        while not QryAcumulados.Eof do
        begin
          connection.QryBusca2.First;
          while not connection.QryBusca2.Eof do
          begin
            if QryAcumulados.FieldValues['sEje'] = connection.QryBusca2.FieldValues['sTipo'] then
            begin
              lContinua := False;
              connection.QryBusca2.Last;
            end;
            connection.QryBusca2.Next;
          end;
          QryAcumulados.Next;
        end;
      end;

      if lContinua then
      begin
            {Buscamos el paquete de la actividad..}
        if sPaquete <> QryGenerador.FieldValues['sWbs'] then
        begin
          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion From actividadesxanexo ' +
            'Where sContrato = :Contrato And sIdConvenio =:Convenio and sWbs =:WbsAnterior and sTipoActividad = "Paquete"');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
          QryAcumulados.Params.ParamByName('Convenio').Value := global_convenio;
          QryAcumulados.Params.ParamByName('WbsAnterior').DataType := ftString;
          QryAcumulados.Params.ParamByName('WbsAnterior').Value := QryGenerador.FieldValues['sWbsAnterior'];
          QryAcumulados.Open;

          if QryAcumulados.RecordCount > 0 then
          begin
            rxGenerador.Append;
            rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
            rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
            rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
            rxGenerador.FieldValues['sPaquete'] := 'Paquete';
            rxGenerador.FieldValues['sEje'] := '';
            rxGenerador.FieldValues['sWbs'] := QryGenerador.FieldValues['sWbs'];
            rxGenerador.FieldValues['sNumeroActividad'] := QryAcumulados.FieldValues['sNumeroActividad'];
            rxGenerador.FieldValues['mDescripcion'] := QryAcumulados.FieldValues['mDescripcion'];
            rxGenerador.Post;
            sPaquete := QryGenerador.FieldValues['sWbs'];
          end;
        end;

        rxGenerador.Append;
        rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
        rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
        rxGenerador.FieldValues['sWbs'] := QryGenerador.FieldValues['sWbs'];
        rxGenerador.FieldValues['sPaquete'] := 'Actividad';
        rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
        rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

        if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
          rxGenerador.FieldValues['lValida'] := True
        else
          rxGenerador.FieldValues['lValida'] := False;

        if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
          rxGenerador.FieldValues['lAutoriza'] := True
        else
          rxGenerador.FieldValues['lAutoriza'] := False;

        rxGenerador.FieldValues['sNumeroActividad'] := QryGenerador.FieldValues['sNumeroActividad'];
        rxGenerador.FieldValues['mDescripcion'] := QryGenerador.FieldValues['mDescripcion'];
        rxGenerador.FieldValues['dCantidadAnexo'] := QryGenerador.FieldValues['dCantidadAnexo'];

        if QryGenerador.FieldValues['sNumeroActividad'] <> sNumeroActividad then
        begin
          sNumeroActividad := QryGenerador.FieldValues['sNumeroActividad'];
          if lParamMultiple then
          begin
            QryAcumulados.Active := False;
            QryAcumulados.SQL.Clear;
            QryAcumulados.SQL.Add('Select dCantidad From actividadesxorden Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
              'sIdConvenio = :Convenio And sNumeroActividad = :Actividad and sWbsContrato = :Wbs And sTipoActividad = "Actividad"');
            QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
            QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
            QryAcumulados.Params.ParamByName('orden').DataType := ftString;
            QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
            QryAcumulados.Params.ParamByName('Convenio').DataType := ftString;
            QryAcumulados.Params.ParamByName('Convenio').Value := sParamConvenio;
            QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
            QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
            QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
            QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
            QryAcumulados.Open;

            dCantidadOrden := 0;
            while not QryAcumulados.Eof do
            begin
              dCantidadOrden := dCantidadOrden + QryAcumulados.FieldValues['dCantidad'];
              QryAcumulados.Next
            end;

            QryAcumulados.Active := False;
            QryAcumulados.SQL.Clear;
            QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
              'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
              'e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbsContrato = :Wbs And e.sNumeroActividad = :Actividad) ' +
              'Where e1.sContrato = :Contrato And e1.sNumeroOrden = :Orden And e1.iConsecutivo <= :Consecutivo ' +
              'Group By e.sNumeroActividad');
            QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
            QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
            QryAcumulados.Params.ParamByName('orden').DataType := ftString;
            QryAcumulados.Params.ParamByName('orden').Value := sParamOrden;
            QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
            QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
            QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
            QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
            QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
            QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
            QryAcumulados.Open;

            dAcumuladoOrden := 0;
            if QryAcumulados.RecordCount > 0 then
              dAcumuladoOrden := QryAcumulados.FieldValues['dAcumulado'];
          end;

          QryAcumulados.Active := False;
          QryAcumulados.SQL.Clear;
          QryAcumulados.SQL.Add('Select Sum(e.dCantidad) as dAcumulado From estimaciones e1 ' +
            'INNER JOIN estimacionxpartida e ON (e.sContrato = e1.sContrato And e.sNumeroOrden = e1.sNumeroOrden And ' +
            'e.sNumeroGenerador = e1.sNumeroGenerador And e.sWbsContrato = :Wbs And e.sNumeroActividad = :Actividad) ' +
            'Where e1.sContrato = :Contrato And e1.iConsecutivo <= :Consecutivo ' +
            'Group By e.sNumeroActividad');
          QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
          QryAcumulados.Params.ParamByName('Contrato').Value := global_contrato;
          QryAcumulados.Params.ParamByName('Consecutivo').DataType := ftInteger;
          QryAcumulados.Params.ParamByName('Consecutivo').Value := QryGenerador.FieldValues['iConsecutivo'];
          QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
          QryAcumulados.Params.ParamByName('Wbs').Value := QryGenerador.FieldValues['sWbsContrato'];
          QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
          QryAcumulados.Params.ParamByName('Actividad').Value := QryGenerador.FieldValues['sNumeroActividad'];
          QryAcumulados.Open;

          dAcumuladoAnexo := 0;
          if QryAcumulados.RecordCount > 0 then
            dAcumuladoAnexo := QryAcumulados.FieldValues['dAcumulado'];
        end;

        rxGenerador.FieldValues['dCantidadOrden'] := dCantidadOrden;
        rxGenerador.FieldValues['dAcumuladoOrden'] := dAcumuladoOrden;
        rxGenerador.FieldValues['dAcumuladoAnexo'] := dAcumuladoAnexo;
        rxGenerador.FieldValues['sMedida'] := QryGenerador.FieldValues['sMedida'];
        rxGenerador.FieldValues['sIsometrico'] := QryGenerador.FieldValues['sIsometrico'];
        rxGenerador.FieldValues['sIsometricoReferencia'] := QryGenerador.FieldValues['sIsometricoReferencia'];
        rxGenerador.FieldValues['sPrefijo'] := QryGenerador.FieldValues['sPrefijo'];
        rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
        rxGenerador.FieldValues['dFechaInicioG'] := QryGenerador.FieldValues['dFechaInicio'];
        rxGenerador.FieldValues['dFechaFinalG'] := QryGenerador.FieldValues['dFechaFinal'];
        rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
        rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
        rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
        rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];

            {Ahora consultamos las tablas de conversiones...18 Julio 2010 }
        QryAcumulados.Active := False;
        QryAcumulados.SQL.Clear;
        QryAcumulados.SQL.Add('select * from estimaciondespiece where sContrato = :Contrato ' +
          'And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
          'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico ');
        QryAcumulados.Params.ParamByName('Contrato').DataType := ftString;
        QryAcumulados.Params.ParamByName('Contrato').value := Global_Contrato;
        QryAcumulados.Params.ParamByName('Orden').DataType := ftString;
        QryAcumulados.Params.ParamByName('Orden').value := QryGenerador.FieldValues['sNumeroOrden'];
        QryAcumulados.Params.ParamByName('Generador').DataType := ftString;
        QryAcumulados.Params.ParamByName('Generador').value := QryGenerador.FieldValues['sNumeroGenerador'];
        QryAcumulados.Params.ParamByName('Wbs').DataType := ftString;
        QryAcumulados.Params.ParamByName('Wbs').value := QryGenerador.FieldValues['sWbs'];
        QryAcumulados.Params.ParamByName('Actividad').DataType := ftString;
        QryAcumulados.Params.ParamByName('Actividad').value := QryGenerador.FieldValues['sNumeroActividad'];
        QryAcumulados.Params.ParamByName('Isometrico').DataType := ftString;
        QryAcumulados.Params.ParamByName('Isometrico').value := QryGenerador.FieldValues['sIsometrico'];
        QryAcumulados.Open;

        num := 1;
        while not QryAcumulados.Eof do
        begin
          if num > 1 then
          begin
            rxGenerador.Append;
            rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
            rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
            rxGenerador.FieldValues['sWbs'] := QryGenerador.FieldValues['sWbs'];
            rxGenerador.FieldValues['sPaquete'] := 'Actividad';
            rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
            rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];
          end;
          rxGenerador.FieldValues['sEje'] := QryAcumulados.FieldValues['sEje'];
          rxGenerador.FieldValues['sEje1'] := QryAcumulados.FieldValues['sEje1'];
          rxGenerador.FieldValues['sEje2'] := QryAcumulados.FieldValues['sEje2'];
          rxGenerador.FieldValues['sTipo'] := QryAcumulados.FieldValues['sTipo'];
          rxGenerador.FieldValues['dNumVeces'] := QryAcumulados.FieldValues['dNumVeces'];
          rxGenerador.FieldValues['dCaras'] := QryAcumulados.FieldValues['dCaras'];
          rxGenerador.FieldValues['dAlto'] := QryAcumulados.FieldValues['dAlto'];
          rxGenerador.FieldValues['dAncho'] := QryAcumulados.FieldValues['dAncho'];
          rxGenerador.FieldValues['dLargo'] := QryAcumulados.FieldValues['dLargo'];
          rxGenerador.FieldValues['dSubtotal'] := QryAcumulados.FieldValues['dSubtotal'];

          if num > 1 then
            rxGenerador.Post;
          inc(num);
          QryAcumulados.Next;
        end;

            {Ahora consultamos las tablas de depiece por imagen,, }
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select bImagen from estimaciondespiece_imagen where sContrato = :Contrato ' +
          'And sNumeroOrden = :Orden And sNumeroGenerador = :Generador ' +
          'And sWbs = :Wbs And sNumeroActividad = :Actividad And sIsometrico = :Isometrico ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').value := Global_Contrato;
        connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Orden').value := QryGenerador.FieldValues['sNumeroOrden'];
        connection.QryBusca.Params.ParamByName('Generador').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Generador').value := QryGenerador.FieldValues['sNumeroGenerador'];
        connection.QryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Wbs').value := QryGenerador.FieldValues['sWbs'];
        connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Actividad').value := QryGenerador.FieldValues['sNumeroActividad'];
        connection.QryBusca.Params.ParamByName('Isometrico').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Isometrico').value := QryGenerador.FieldValues['sIsometrico'];
        connection.QryBusca.Open;

        rxGenerador.Edit;
        if connection.QryBusca.RecordCount > 0 then
          rxGenerador.FieldValues['bImagen'] := connection.QryBusca.FieldValues['bImagen'];

        rxGenerador.FieldValues['dCantidad'] := QryGenerador.FieldValues['dCantidad'];
        rxGenerador.Post;

        if QryGenerador.FieldValues['iOrdenCambio'] > 0 then
        begin
          QryAuxiliar.Active := False;
          QryAuxiliar.SQL.Clear;
          QryAuxiliar.SQL.Add('Select iCedulaProcedencia, sNotificacionOficio, mCedulaMotivo From ordendecambio Where sContrato = :Contrato And iCedulaProcedencia = :Orden');
          QryAuxiliar.Params.ParamByName('Contrato').DataType := ftString;
          QryAuxiliar.Params.ParamByName('Contrato').Value := global_contrato;
          QryAuxiliar.Params.ParamByName('orden').DataType := ftInteger;
          QryAuxiliar.Params.ParamByName('orden').Value := QryGenerador.FieldValues['iOrdenCambio'];
          QryAuxiliar.Open;
          mOrdenCambio := '';
          if QryAuxiliar.RecordCount > 0 then
            mOrdenCambio := 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No. : ' + IntToStr(QryAuxiliar.FieldValues['iCedulaProcedencia']) +
              chr(13) + 'OFICIO DEL CONTRATISTA No. : ' + QryAuxiliar.FieldValues['sNotificacionOficio'] +
              chr(13) + 'MOTIVO DEL CAMBIO : ' + QryAuxiliar.FieldValues['mCedulaMotivo'];
          rxGenerador.FieldValues['mProblematica'] := mOrdenCambio;
        end;
      end;
      QryGenerador.Next
    end
  end
  else
  begin
    QryGenerador.Active := False;
    QryGenerador.SQL.Clear;
    QryGenerador.SQL.Add('Select e2.sContrato, e2.sNumeroOrden, e2.sNumeroGenerador, e2.dFechaInicio, e2.dFechaFinal, e2.mComentarios, e2.iSemana, e2.sIdUsuarioValida, e2.sIdUsuarioAutoriza, ' +
      'e3.iNumeroEstimacion, e3.sMoneda, e3.dFechaInicio as dFechaInicioEst, e3.dFechaFinal as dFechaFinalEst from estimaciones e2 ' +
      'inner join estimacionperiodo e3 on (e2.sContrato =  e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
      'Where e2.sContrato = :Contrato And e2.sNumeroOrden = :Orden And e2.sNumeroGenerador = :Generador');
    QryGenerador.Params.ParamByName('Contrato').DataType := ftString;
    QryGenerador.Params.ParamByName('Contrato').Value := sParamContrato;
    QryGenerador.Params.ParamByName('Orden').DataType := ftString;
    QryGenerador.Params.ParamByName('Orden').Value := sParamOrden;
    QryGenerador.Params.ParamByName('Generador').DataType := ftString;
    QryGenerador.Params.ParamByName('Generador').Value := sParamGenerador;
    QryGenerador.Open;
    if QryGenerador.RecordCount > 0 then
    begin
      rxGenerador.Append;
      rxGenerador.FieldValues['sContrato'] := QryGenerador.FieldValues['sContrato'];
      rxGenerador.FieldValues['sNumeroOrden'] := QryGenerador.FieldValues['sNumeroOrden'];
      rxGenerador.FieldValues['iSemana'] := QryGenerador.FieldValues['iSemana'];
      rxGenerador.FieldValues['sNumeroGenerador'] := QryGenerador.FieldValues['sNumeroGenerador'];

      if QryGenerador.FieldValues['sIdUsuarioValida'] <> '' then
        rxGenerador.FieldValues['lValida'] := True
      else
        rxGenerador.FieldValues['lValida'] := False;


      if QryGenerador.FieldValues['sIdUsuarioAutoriza'] <> '' then
        rxGenerador.FieldValues['lAutoriza'] := True
      else
        rxGenerador.FieldValues['lAutoriza'] := False;

      rxGenerador.FieldValues['iNumeroEstimacion'] := QryGenerador.FieldValues['iNumeroEstimacion'];
      rxGenerador.FieldValues['dFechaIniciog'] := QryGenerador.FieldValues['dFechaInicio'];
      rxGenerador.FieldValues['dFechaFinalg'] := QryGenerador.FieldValues['dFechaFinal'];
      rxGenerador.FieldValues['sMoneda'] := QryGenerador.FieldValues['sMoneda'];
      rxGenerador.FieldValues['dFechaInicio'] := QryGenerador.FieldValues['dFechaInicioEst'];
      rxGenerador.FieldValues['dFechaFinal'] := QryGenerador.FieldValues['dFechaFinalEst'];
      rxGenerador.FieldValues['mComentarios'] := QryGenerador.FieldValues['mComentarios'];
      rxGenerador.Post;
    end
  end;

  rDiarioFirmas(sParamContrato, sParamOrden, 'A', QryGenerador.FieldValues['dFechaFinal'], tOrigen);

  if lReporte = 'DespiezadoGeneral' then
  begin
    if p_sindespiece > 0 then
      messageDLG('Existen ' + IntToStr(p_sindespiece) + ' partida(s) sin despiece.!', mtInformation, [mbOk], 0);
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorDespiezadoGral.fr3');
  end;

  if lReporte = 'ReporteTuberia' then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorTUB.fr3');

  if lReporte = 'ReportePerimetro' then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorPerimetro.fr3');

  if lReporte = 'ReporteAngulo' then
    rCaratula.LoadFromFile(global_files + global_MiReporte + '_GeneradorAngulo.fr3');

  if QryConfiguracion.FieldValues['lLicencia'] = 'No' then
    rCaratula.PreviewOptions.Buttons := [pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator]
  else
    rCaratula.PreviewOptions.Buttons := [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick];
  rCaratula.ShowReport(FormatosExp, PermisosExp);

  rCaratula.Destroy;
  QryGenerador.Destroy;
  QryAcumulados.Destroy;
  QryAuxiliar.Destroy;
  rxGenerador.Destroy;
  dsGenerador.Destroy;
  QryConfiguracion.Destroy;
  dsConfiguracion.Destroy;
end;


end.

