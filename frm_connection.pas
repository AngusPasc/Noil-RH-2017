unit frm_connection;

interface

uses
  SysUtils, Classes, DB, ADODB, frxExportMail, frxExportCSV, frxExportText,
  frxExportImage, frxExportPDF, frxExportXML, frxExportRTF, frxExportXLS,
  frxExportHTML, frxClass, frxExportTXT, frxDBSet, ImgList, Menus,
  StdActns, ActnList, Controls, fqbClass, ZAbstractRODataset,
  ZDataset, ZConnection, ZAbstractDataset,
  frxRich, frxGZip, frxDMPExport, RxMemDS,global, ExtCtrls,
  IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, cxGraphics,
  dxLayoutLookAndFeels, cxClasses, cxStyles;
type
  Tconnection = class(TDataModule)
    ds_setup: TDataSource;
    frxTXTExport1: TfrxTXTExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPDFExport1: TfrxPDFExport;
    frxGIFExport1: TfrxGIFExport;
    a: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    ImageList1: TImageList;
    QryBusca: TZReadOnlyQuery;
    zCommand: TZQuery;
    zFolios: TZQuery;
    ds_ContratosxUsuario: TDataSource;
    ContratosxUsuario: TZReadOnlyQuery;
    rpt_contrato: TfrxDBDataset;
    rpt_setup: TfrxDBDataset;
    contrato: TZReadOnlyQuery;
    configuracion: TZReadOnlyQuery;
    ds_estimacionperiodo: TDataSource;
    EstimacionPeriodo: TZQuery;
    QryBusca2: TZReadOnlyQuery;
    contratosContrato: TStringField;
    contratomDescripcion: TMemoField;
    contratomCliente: TMemoField;
    contratobImagen: TBlobField;
    contratosUbicacion: TStringField;
    contratosCodigo: TStringField;
    contratosConvenio: TStringField;
    contratodFechaInicio: TDateField;
    contratodFechaFinal: TDateField;
    contratodMontoMN: TFloatField;
    contratodMontoDLL: TFloatField;
    contratodFecha: TDateField;
    contratobImagenActivo: TBlobField;
    contratosDescripcionActivo: TStringField;
    UsuariosxPrograma: TZReadOnlyQuery;
    GruposxPrograma: TZReadOnlyQuery;
    zConnection: TZConnection;
    frxRichObject1: TfrxRichObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    contratosLicitacion: TStringField;
    contratosTitulo: TMemoField;
    qryROProrrateos: TZReadOnlyQuery;
    frxReport1: TfrxReport;
    contratosTipoObra: TStringField;
    Auxiliar: TZReadOnlyQuery;
    IdSMTP: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage: TIdMessage;
    ConnTrx: TZConnection;
    qryBuscaTrx: TZReadOnlyQuery;
    CommandTrx: TZQuery;
    configuracionsContrato: TStringField;
    configuracionsNombre: TStringField;
    configuracionsNombreCorto: TStringField;
    configuracionsRfc: TStringField;
    configuracionsDireccion1: TStringField;
    configuracionsDireccion2: TStringField;
    configuracionsDireccion3: TStringField;
    configuracionsCiudad: TStringField;
    configuracionsSlogan: TStringField;
    configuracionsPiePagina: TStringField;
    configuracionbImagen: TBlobField;
    configuracionsTelefono: TStringField;
    configuracionsFax: TStringField;
    configuracionsEmail: TStringField;
    configuracionsRepresentanteObra: TStringField;
    configuracionsWeb: TStringField;
    configuracionlLicencia: TStringField;
    configuracioncStatusProceso: TStringField;
    configuracioncStatusSuspendida: TStringField;
    configuracioncStatusTerminada: TStringField;
    configuracionsIdDepartamento: TStringField;
    configuracionsIdEmbarcacion: TStringField;
    configuracioniRedondeoMaterial: TIntegerField;
    configuracioniRedondeoEquipo: TIntegerField;
    configuracioniRedondeoPersonal: TIntegerField;
    configuracioniRedondeoEmbarcacion: TIntegerField;
    configuracionsRangoAjusteMenor: TStringField;
    configuracionsRangoAjusteMayor: TStringField;
    configuracionsTipoContrato: TStringField;
    configuracionsRangoEstimacion: TStringField;
    configuracionsTipoPartida: TStringField;
    configuracionlCalculaFecha: TStringField;
    configuracionsTipoOperacion: TStringField;
    configuracionsTipoAlcance: TStringField;
    configuracionsTipoCIA: TStringField;
    configuracionlAutomatico: TStringField;
    configuracioniIncremento: TIntegerField;
    configuracionsDuracion: TStringField;
    configuracionsReporteDiario: TStringField;
    configuracionsGerencial: TStringField;
    configuracionsIsometricos: TStringField;
    configuracionsHost: TStringField;
    configuracionsFolder: TStringField;
    configuracionsViewIsometrico: TStringField;
    configuracioniFirmas: TStringField;
    configuracionlExporta: TStringField;
    configuracionsTipoSeguridad: TStringField;
    configuracionsFirmasElectronicas: TStringField;
    configuracionsTipsInicial: TStringField;
    configuracionlComentariosReporte: TStringField;
    configuracionsFotografias: TStringField;
    configuracionlIncluyeGrafica: TStringField;
    configuracionlIncluyeAvanceOrdenes: TStringField;
    configuracionlIncluyeAvanceContrato: TStringField;
    configuracioniMeses: TIntegerField;
    configuracionlDistribucion: TStringField;
    configuracionsFasePrincipal: TStringField;
    configuraciondRetencion: TFloatField;
    configuraciondPenaConvencional: TFloatField;
    configuracionsBaseCalculo: TStringField;
    configuracionsImporteRetencion: TStringField;
    configuracionsTipoAjusteCosto: TStringField;
    configuracionsAvanceInicial: TStringField;
    configuracionsAvanceAnterior: TStringField;
    configuracionsFormato: TStringField;
    configuracioniConsecutivo: TIntegerField;
    configuracionlImprimeExtraordinario: TStringField;
    configuracionsAvanceBitacora: TStringField;
    configuracionsClaveTierra: TStringField;
    configuracionsClaveSeguridad: TStringField;
    configuracionsIdPernocta: TStringField;
    configuracionsImprimePEP: TStringField;
    configuracionsImpresionPaquetes: TStringField;
    configuracionsOrdenExtraordinaria: TStringField;
    configuracionsIdFase: TStringField;
    configuracioniLongActividad: TIntegerField;
    configuracionlCalculoPonderado: TStringField;
    configuracionsBaseGeneracion: TStringField;
    configuracionsTipoGeneracion: TStringField;
    configuracionsSeguridadGenerador: TStringField;
    configuracionsTipoEstimacion: TStringField;
    configuracionsTerminoPenalizacion: TStringField;
    configuracionsIdConvenio: TStringField;
    configuracionsPartidaEfectiva: TStringField;
    configuracionsOrdenPerEq: TStringField;
    configuracioniReportesSinValid: TIntegerField;
    configuracionsClaveDevolucion: TStringField;
    configuracionsDevolucion: TStringField;
    configuracionsMedida: TStringField;
    configuraciontxtValidaMaterial: TStringField;
    configuraciontxtMaterialAutomatico: TStringField;
    configuracionsIdAnexo: TStringField;
    configuracionsPaquete: TStringField;
    configuracionsProteccion: TStringField;
    configuracioniJLunes: TFloatField;
    configuracioniJMartes: TFloatField;
    configuracioniJMiercoles: TFloatField;
    configuracioniJJueves: TFloatField;
    configuracioniJViernes: TFloatField;
    configuracioniJSabado: TFloatField;
    configuracioniJDomingo: TFloatField;
    configuracionlAsistencia: TStringField;
    configuracionsIdGuardia: TStringField;
    configuracionsFalta: TStringField;
    configuracionsEquipoSeguridad: TStringField;
    configuracionsPersonalIndependiente: TStringField;
    configuracionsCampPerf: TStringField;
    configuracionsMostrarAvances: TStringField;
    configuracionlProrrateo: TStringField;
    configuracionsGenDesp: TStringField;
    configuracionsAnexos: TStringField;
    configuracionsFormatoCliente: TStringField;
    configuracioniFirmasReportes: TStringField;
    configuracioniFirmasGeneradores: TStringField;
    configuracioniFirmasBarco: TStringField;
    configuracioniFirmasEstimaciones: TStringField;
    configuracionsLeyenda1: TStringField;
    configuracionsLeyenda2: TStringField;
    configuracionsLeyenda3: TStringField;
    configuraciondCostoDirecto: TFloatField;
    configuraciondCostoIndirectos: TFloatField;
    configuraciondFinanciamiento: TFloatField;
    configuraciondUtilidad: TFloatField;
    configuraciondCargosAdicionales: TFloatField;
    configuraciondCargosAdicionales2: TFloatField;
    configuraciondCargosAdicionales3: TFloatField;
    configuracionsSimbolo: TStringField;
    configuracionsExplosion: TStringField;
    configuracionsReportesCIA: TStringField;
    configuracionlEnviaCorreo: TStringField;
    configuracionlValidaBarco: TStringField;
    configuracionlTiempoMuertoTurnos: TStringField;
    configuracionlHistorialPartidas: TStringField;
    configuracionlBaseRelacional: TStringField;
    configuracionsFormatos: TStringField;
    configuracionsPasswordPdf: TStringField;
    configuracionsAplicaPassword: TStringField;
    configuracionlAplicaPu: TStringField;
    configuraciondPorcentajeHerramienta: TFloatField;
    configuracionsRepresentante: TStringField;
    configuracionsAux1: TStringField;
    configuracionsAux2: TStringField;
    configuracionlOrdenaItem: TStringField;
    configuracionlSeguridadVigencia: TStringField;
    configuracionlCalculaPU: TStringField;
    configuracionlImprimeNotasGerenciales: TStringField;
    configuracionlAplicaAvisos: TStringField;
    configuracionlAplicaAvisosGen: TStringField;
    configuracioniEjercicio: TIntegerField;
    configuracionlCompanias: TStringField;
    configuracioneIva: TStringField;
    configuraciondGalones: TFloatField;
    configuracionsPresidente: TStringField;
    configuracionsTitPresidente: TStringField;
    configuracionsTesorerom: TStringField;
    configuracionsTitTesorerom: TStringField;
    configuracionCont: TZQuery;
    frConfiguracionCont: TfrxDBDataset;
    frxDBConfiguracionRH: TfrxDBDataset;
    configuracionNomina: TZQuery;
    configuracionNominasNombre: TStringField;
    configuracionNominasNombreCorto: TStringField;
    configuracionNominasRfc: TStringField;
    configuracionNominasDireccion1: TStringField;
    configuracionNominaiCodigopost: TIntegerField;
    configuracionNominasDireccion2: TStringField;
    configuracionNominasCiudad: TStringField;
    configuracionNominasSlogan: TStringField;
    configuracionNominasPiePagina: TStringField;
    configuracionNominabImagen: TBlobField;
    configuracionNominasTelefono: TStringField;
    configuracionNominasFax: TStringField;
    configuracionNominasEmail: TStringField;
    configuracionNominasWeb: TStringField;
    configuracionNominasRepresentante: TStringField;
    configuracionNominasFirmante2: TStringField;
    configuracionNominasFirmante3: TStringField;
    configuracionVta: TZQuery;
    frxDBConfiguracionVta: TfrxDBDataset;
    contratoidorganizacion: TIntegerField;
    configuracionRecHum: TZQuery;
    configuracionRecHumsPostulanteMasc: TStringField;
    configuracionRecHumiPostulanteConsec: TLargeintField;
    configuracionRecHumsEmpleadoMasc: TStringField;
    configuracionRecHumiEmpleadoConsec: TLargeintField;
    configuracionRecHumsNombre: TStringField;
    configuracionRecHumsNombreCorto: TStringField;
    configuracionRecHumsRfc: TStringField;
    configuracionRecHumsDireccion1: TStringField;
    configuracionRecHumsDireccion2: TStringField;
    configuracionRecHumsDireccion3: TStringField;
    configuracionRecHumsSlogan: TStringField;
    configuracionRecHumsPiePagina: TStringField;
    configuracionRecHumbImagen: TBlobField;
    configuracionRecHumsTelefono: TStringField;
    configuracionRecHumsFax: TStringField;
    configuracionRecHumsEmail: TStringField;
    configuracionRecHumsWeb: TStringField;
    configuracionRecHumsRepresentante: TStringField;
    configuracionRecHumsFirmante2: TStringField;
    configuracionRecHumsFirmante3: TStringField;
    configuracionRecHumsCiudad: TStringField;
    configuracionRecHumbLogoFondo: TBlobField;
    configuracionRecHumbImagenCliente: TBlobField;
    configuracionRecHumsDomicilio_Firmante1: TStringField;
    configuracionRecHumsDomicilio_Firmante2: TStringField;
    configuracionRecHumsNotario: TStringField;
    configuracionRecHumsDomicilio_Notario: TStringField;
    configuracionRecHumeNomina: TStringField;
    configuracionRecHumeQr: TStringField;
    configuracionRecHumeGuardias: TStringField;
    configuracionRecHumiDiasLibreta: TIntegerField;
    configuracioneEstRep: TStringField;
    configuracionVtasNombre: TStringField;
    configuracionVtasNombreCorto: TStringField;
    configuracionVtasRfc: TStringField;
    configuracionVtasDireccion1: TStringField;
    configuracionVtasDireccion2: TStringField;
    configuracionVtasDireccion3: TStringField;
    configuracionVtasSlogan: TStringField;
    configuracionVtasPiePagina: TStringField;
    configuracionVtabImagen: TBlobField;
    configuracionVtasTelefono: TStringField;
    configuracionVtasFax: TStringField;
    configuracionVtasEmail: TStringField;
    configuracionVtasWeb: TStringField;
    configuracionVtasRepresentante: TStringField;
    configuracionVtasPuestoRepresentante: TStringField;
    configuracionVtasFirmante1: TStringField;
    configuracionVtasPuestoFirmante1: TStringField;
    configuracionVtasFirmante2: TStringField;
    configuracionVtasPuestoFirmante2: TStringField;
    configuracionVtasCiudad: TStringField;
    configuracionVtabLogoFondo: TBlobField;
    configuracionVtabImagenCliente: TBlobField;
    configuracionVtaeActivaNotificaciones: TStringField;
    configuracionVtaeCotMuestraTip: TStringField;
    configuracionVtamParrafo1Cot: TMemoField;
    configuracionVtamParrafo2Cot: TMemoField;
    configuracionVtasFuenteHeader: TStringField;
    configuracionVtaiTamanioFuenteHeader: TIntegerField;
    configuracionVtasFolio: TStringField;
    configuracionVtaiMail_Port: TIntegerField;
    configuracionVtasMail_SmtpSever: TStringField;
    configuracionVtasMail_User: TStringField;
    configuracionVtasMail_User_To: TStringField;
    configuracionVtaiConsecutivo: TIntegerField;
    IconosBarra: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    intgrfldconfiguracioniNumReq: TIntegerField;
    intgrfldconfiguracioniId_ZonaGeografica: TIntegerField;
    intgrfldconfiguracioniNumOrdCompra: TIntegerField;
    zqconfiguracionsPrefijoOrdCompra: TStringField;
    zqconfiguracionsPrefijoReq: TStringField;
    zqconfiguracionsAlmPrefijoSal: TStringField;
    intgrfldconfiguracioniAlmConsecutivoReq: TIntegerField;
    intgrfldconfiguracioniAlmConsecutivoCom: TIntegerField;
    intgrfldconfiguracioniAlmConsecutivoSal: TIntegerField;
    intgrfldconfiguracioniAlmNumSal: TIntegerField;
    configuracionnDiasEqHerrCons: TSmallintField;
    configuracionnDiasAnexos: TSmallintField;
    zqconfiguracionsConfConsecutivo: TStringField;
    zqconfiguracionsAlmcon: TStringField;
    cxstylActividadesanexo: TcxStyleRepository;
    cxstylNiv0: TcxStyle;
    cxstylNiv1: TcxStyle;
    cxstylNiv2: TcxStyle;
    cxstylNiv3: TcxStyle;
    cxstylNiv4: TcxStyle;
    contratotituloorganizacion: TStringField;
    contratoregpatimss: TStringField;
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure zConnectionAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  connection: Tconnection;

implementation

{$R *.dfm}

procedure Tconnection.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DE LA ORDEN DE TRABAJO ' + global_orden ;

  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := global_fecha  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := global_fecha  ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If global_sOrigen_reporte = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;


  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;

  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;

  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;
                
  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;

end;

procedure Tconnection.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'ORDEN') = 0 then
    Value := 'DE LA ORDEN DE TRABAJO ' + global_orden;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
    Value := global_fecha;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := global_fecha;

  if CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
    Value := sDiarioDescripcionCorta;

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;
  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSuperIntendente
    else
      Value := sSuperIntendentePatio;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSupervisor
    else
      Value := sSupervisorPatio;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sSupervisorTierra
    else
      Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    if global_sOrigen_reporte= 'No' then
      Value := sPuestoSuperIntendente
    else
      Value := sPuestoSuperIntendentePatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    if global_sOrigen_reporte = 'No' then
      Value := sPuestoSupervisor
    else
      Value := sPuestoSupervisorPatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    if global_sOrigen_reporte= 'No' then
      Value := sPuestoSupervisorTierra
    else
      Value := sPuestoResidente;

  if CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
    Value := mDescripcionOrden;
  if CompareText(VarName, 'PLATAFORMA') = 0 then
    Value := sPlataformaOrden;

  if CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
    Value := sJornadasSuspendidas;

  if CompareText(VarName, 'TURNO') = 0 then
    Value := sDescripcionTurno;

  if CompareText(VarName, 'REAL_ANTERIOR') = 0 then
    Value := dRealGlobalAnterior;
  if CompareText(VarName, 'REAL_ACTUAL') = 0 then
    Value := dRealGlobalActual;
  if CompareText(VarName, 'REAL_ACUMULADO') = 0 then
    Value := dRealGlobalAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
    Value := dProgramadoGlobalAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
    Value := dProgramadoGlobalActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
    Value := dProgramadoGlobalAcumulado;


  if CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
    Value := dRealOrdenAnterior;
  if CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
    Value := dRealOrdenActual;
  if CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
    Value := dRealOrdenAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
    Value := dProgramadoOrdenActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAcumulado;


    //;


end;

procedure Tconnection.zConnectionAfterConnect(Sender: TObject);
begin
  // Connectar la base de datos alterna con los datos de la base original
  if ConnTrx.Connected then
    ConnTrx.Disconnect;
  ConnTrx.Catalog  := zConnection.Catalog;
  ConnTrx.Database := zConnection.DataBase;
  ConnTrx.HostName := zConnection.HostName;
  ConnTrx.PassWord := zConnection.PassWord;
  ConnTrx.Port     := zConnection.Port;
  ConnTrx.User     := zConnection.User;
  ConnTrx.Connect;
end;

end.









