unit global;
interface
uses windows, SysUtils, controls, classes, Graphics;
const
//  IntelPass ='cleopatra';
//  IntelUser = 'root';
  IntelPass = 'cmmi_nomina1216';
  IntelUser = 'dsaisolu_cmmi_16';
  Global_TamOrden = 10;
  Global_SepOrden = '.';
  EsBkColor: array[1..6] of tColor = ($00FEC6BA, $00FEE7BA, $00D7FDBB, $00BAFEC9, $00BBFDF4, $00BAE1FE);
  LongNivel = 10;
  Fondo = '$00CAD5EC';
  EleCondicionTexto = 3;
  EleCondicionNumero = 6;
  EleCondicionFecha = 6;
  OptCondicionTexto: array[1..3] of string = ('IGUAL', 'DIFERENTE DE', 'CONTIENE');
  AccCondicionTexto: array[1..3] of string = (' = ', ' <> ', ' LIKE');
  OptCondicionNumero: array[1..6] of string = ('IGUAL', 'MAYOR', 'MAYOR QUE', 'MENOR', 'MENOR QUE', 'DIFERENTE');
  AccCondicionNumero: array[1..6] of string = (' = ', ' > ', ' >= ', ' < ', ' <= ', ' <> ');
  OptCondicionFecha: array[1..6] of string = ('IGUAL', 'MAYOR', 'MAYOR QUE', 'MENOR', 'MENOR QUE', 'DIFERENTE');
  AccCondicionFecha: array[1..6] of string = (' = ', ' > ', ' >= ', ' < ', ' <= ', ' <> ');
  //ANALISIS DE PRECIOS...     iv@n...
  folio: array[1..5] of string = ('sIdPersonal', 'sIdEquipo', 'sIdHerramientas', 'sIdInsumo', 'sIdBasico');
  tipo: array[1..5] of string = ('PERSONAL', 'EQUIPO', 'HERRAMIENTAS', 'MATERIAL', 'BASICOS');
  tablas: array[1..5] of string = ('recursospersonal', 'recursosequipo', 'recursosherramientas', 'recursosanexo', 'recursosbasicos');
  tablas_2: array[1..5] of string = ('recursospersonalnuevos', 'recursosequiposnuevos', 'recursosherramientasnuevos', 'recursosanexosnuevos', 'recursosbasicosnuevos');
  catalogo: array[1..5] of string = ('personal', 'equipos', 'herramientas', 'insumos', 'basicos');
var
  AccionVisor :string;
  global_barco,
    global_ipServer,
    global_ruta,
    global_archivoini,
    global_sTipoReporte,
    global_usuario,global_firma, global_password,
    global_nombre, global_puesto,
    global_activo, global_depto,
    global_ip, global_contrato,
    global_Contrato_Barco,
    param_global_contrato,
    global_Pernocta,
    global_turno,
    global_sturno: string;
  global_numeroReporte: string;
  global_convenio: string;
  convenio_reporte: string;
  global_isometrico: string;
  global_Optativa: string;
  global_Personal: string;
  global_Equipo: string;
  global_generador: string;
  global_title_embarque: string;
  global_grupo: string;
  global_inicio: integer;
  global_final: integer;
  global_caratula: string;
  OpcButton: string;
  global_dias: Integer;
  global_independiente: string;
  global_orden_general: string;
  global_afectacion: string;
  global_checkgenerador: string;
  sBitacoraOrden: string;
  sBitacoraActividad: string;
  sBitacoraPaquete: string;
  global_db,
    global_menu,
    global_dependencia: string;
  global_wbs,
    sGeneradorOrden,
    sGeneradorNumero,
    sGeneradorStatus: string;
  sGeneradorContrato: string;
  global_orden: string;
  global_fecha: tDate;
  global_turno_reporte: string;
  sAlcancePaquete: string;
  sAlcancePartida: string;
  sAlcanceOrden: string;
  iAlcanceFase: Integer;
  global_Puerto: Integer;
  global_partida: string;
  licencia: string;
  sTipoOrden: string;
  global_valida,
    global_autoriza,
    global_tipo_autorizacion: string;
  global_imprime: string;
  global_server: string;
  global_files: string;
  mDescripcionOrden: WideString;
  sFolio: string;
  sPlataformaOrden: string;
  sJornadasSuspendidas: string;
  sDescripcionturno: string;
  sTituloCentro: string;
  sTipoTitulo: string;
  idMovimientoContable: string;
  sTituloVentana: string;
  stMenu: string;
  global_Usuariocorreo, Global_nombre_Embarcacion, NomPlat1, NomPlat2, NomPlat3, NomPlat4, NomPlat5, NomPlat6, NomPlat7: string;

   global_cambioletrero : Byte ; 

  global_fecha_barco: tDate;
  global_fecha_reportecons: tDate;
  global_dias_por_transcurrir: Integer;
  global_dias_transcurridos: Integer;

  global_familia : string;
   global_subfamilia : integer;

  sSuperIntendente,
    sSuperIntendentePatio,
    sSupervisor,
    sSupervisorPatio,
    sSupervisorGenerador,
    sSupervisorEstimacion,
    sSupervisorTierra,
    sResidente,
    sPuestoSuperintendente,
    sPuestoSuperintendentePatio,
    sPuestoSupervisor,
    sPuestoSupervisorPatio,
    sPuestoSupervisorGenerador,
    sPuestoSupervisorEstimacion,
    sPuestoSupervisorTierra,
    sPuestoResidente,
    sRepresentanteTecnico,
    sPuestoRepresentanteTecnico: string;
  sSupervisorSubContratista,
    sPuestoSupervisorSubContratista: string;

  sDescripcionPda,
    sDiarioDescripcionCorta,
    sDiarioComentario,
    sDiarioPeriodo,
    sTipoAcumulado,
    sDiarioTitulo, sPlataforma1, sPlataforma2, sPlataforma3, sPlataforma4, sPlataforma5, sPlataforma6, sPlataforma7: string;

  dProgramadoGlobalAnterior,
    dProgramadoGlobalActual,
    dProgramadoGlobalAcumulado: Currency;
  dRealGlobalAnterior,
    dRealGlobalActual,
    dRealGlobalAcumulado: Currency;

  SumaPersonal,
    SumaEquipos: Integer;

  dProgramadoOrdenAnterior,
    dProgramadoOrdenActual,
    dProgramadoOrdenAcumulado: Currency;
  dRealOrdenAnterior,
    dRealOrdenActual,
    dRealOrdenAcumulado: Currency;

  sPoliza, sFianza: string;
  dMontoModificado: Currency;
  dMontoContrato: Currency;

  sFechaReporte, sConvenioInicio, sConvenioFinal, sActa, sNuevoInicio, sNuevoFinal: string;
  StringPuesto: TStrings;
  StringNombre: TStrings;

  global_opcion_window: string;
  Global_fsr: string;
    {Adal}
  sReporteDiario: string;
  global_sOrigen_reporte: string;
  global_iIdDiario: Integer;
  global_PendientesOculto: Boolean;

  {ivan}
  global_FrenteTrabajo,
  global_miFecha,
  global_OptGrafica,
  global_miReporte,
  global_editor: string;
  global_RefrescaPU: boolean;
  global_ErrorItem: boolean;
  global_EnviaMail: string;
  mUserMail: array[1..5] of string;
  global_TempPath,
  global_EditorNew: array[0..MAX_PATH - 1] of Char;
  global_RepDirC17: string;
  global_frmActivo: string;
  global_nomina : integer;

   {Heber}
  global_labelPersonal, global_labelPersonalDesc, global_labelEquipoDesc,
  global_labelEquipo, global_Materialtierra, global_Materialbordo,
  global_labelpernocta, global_labelPernoctaDesc, global_MaterialConsumible,
  global_MaterialtierraDesc, global_MaterialbordoDesc: string;

   {Soriano para seguridad por botones...}
  global_Insertar, global_Editar, global_grabar,
  global_Eliminar, global_Imprimir, global_ventana: string;
  global_OrdenOficio, global_OrdenCambio, global_CedulaProcedencia, global_cuenta : string;

   {Gamael Cambio de Password...}
  global_bdpass, global_bduser, Global_ServAcceso: string;
  Global_PortAcceso: Integer;

  global_directorio: string;
  global_proveedor : string;
  global_reportes_fecha: boolean;
  global_PuJor  : String ;

    {Idioma Julian}
  global_idioma     : String;
  global_idiomaDesc : string ;

     {Tesoreria...}
   sParamQuery,
   sParamTitle           : String ;
   sParamTipo,
   sParamEgreso          : String ;
   dParamFecha, dParamFechaI,
   dParamFechaF          : tDate ;
   dParamContrato        : string;
   iParamOrganizacion    : integer;

   iParamFolio     : Integer ;
   global_Iva            : Double ;
   sParamProveedor : String ;
   dParamMonto     : Currency ;
   sParamComprobado : String ;
   sTitleFecha           : String ;
   iIdUsuarioBusqueda : Integer ;
   sIdProveedorBusqueda : String ;
   sParamStatusFolio : string;

   sParamDomicilioProv, sParamEstadoProv,
   sParamCPProv, sParamTelfProv : string;

   sTecla,  sNuevoRecibo,
   global_Poliza, Global_cheque : String ;
      sModulo               : String ;
   guardiasn: Integer;   //Para definir las guardias
   bandera, bandera_formulario:string;
   ProcesarContrato: Boolean;
   Global_Factura : string;

   isOpen : boolean;

   global_EdoCuBanc : Boolean;

   {vta_cotizaciones}
   global_mostrartips : Boolean;
const
  global_color_entrada = $0001E1E7;
  global_color_salida = $00E6FEFF;
  global_color_entradaPU = clGradientActiveCaption;
  global_color_salidaPU = $00FFFFFF;


  global_color_pantalla = $00DEB78F;
  global_color_text = $00E6FEFF;
  global_color_entradaERP = clGradientActiveCaption;
  global_color_salidaERP  = clWhite;
  //global_color_salidaPU = $00FFFFFF;

implementation

end.

