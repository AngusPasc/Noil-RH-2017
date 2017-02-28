unit frm_inteligent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, global, ComCtrls, frm_connection, DB, jpeg, ExtCtrls,
  ImgList, StdCtrls, RXClock, StdActns, PSAPI, StrUtils, ShellApi,
  Sockets, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdTime, IdTCPServer, IdUDPBase, IdUDPClient, IdEcho, Mask, sScrollBar, sLabel,
  sPanel, utilerias, StoHtmlHelp, rxSpeedbar,
  frxpngimage, ToolWin, unt_ventas,
  UnitExcepciones, frm_SintesisGerencial,
  frm_herramientas, frm_copiacontratos,             
  JvBackgrounds, Buttons, frm_catalogoerrores, iniFiles, ZConnection,
  unitmanejofondo, masutilerias,
  RxLookup, DBCtrls, Grids, DBGrids, rxToolEdit, rxCurrEdit, RXDBCtrl,
  JvComponentBase, JvAppEvent, CalcEvent, AppEvnts,frm_sincinformes,
  JvAppStorage, frxClass, JvMemoryDataset, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, frm_Zincroligent, ActnList, JvMenus, cxGraphics, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, dxBar, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxNavBarPainter, dxNavBar, dxRibbon, dxRibbonGallery,
  dxSkinChooserGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxNavBarCollns, dxNavBarBase, dxRibbonMiniToolbar, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, dxRibbonBackstageView,dxRibbonForm, dxGallery, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxTabbedMDI,
  cxFontNameComboBox, dxLayoutLookAndFeels, dxRibbonRadialMenu,Clipbrd,
  dxSkinsdxDockControlPainter, cxLocalization, dxDockControl,
  dxBarApplicationMenu, dxBarDBNav, cxPropertiesStore, dxLayoutContainer,
  dxLayoutControl, dxScreenTip, cxLabel, dxAlertWindow, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxImage, dxCustomHint, cxHint, JvBaseDlg,
  JvBrowseFolder, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, DateUtils, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, FormAutoScaler, dxGDIPlusClasses ;

type
  //TfrmInteligent = class(TForm)
  TfrmInteligent = class(TdxRibbonForm)
  Status: TdxRibbonStatusBar;
  Tiempo: TTimer;
  OpenDialog1: TOpenDialog;
  JvAppStorage1: TJvAppStorage;
  frxReport1: TfrxReport;
  JvMemoryData1: TJvMemoryData;
  dxBarManager1: TdxBarManager;
  dxRibbon1Tab1: TdxRibbonTab;
  mInteligent: TdxRibbon;
    mnControlObra: TdxRibbonTab;
  dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
  dxSkinController1: TdxSkinController;
  dxBarManager1Bar9: TdxBar;
  dxBarManager1Bar2: TdxBar;
    mnPrecioUnitario: TdxRibbonTab;
    mnRecursosHumanos: TdxRibbonTab;
  Nominas: TdxRibbonTab;
    mnControlAdmin: TdxRibbonTab;
    mnAlmacen: TdxRibbonTab;
    mnVentas: TdxRibbonTab;
  menuEstimacion: TdxRibbonTab;
  estirado: TdxBarButton;
  centrado: TdxBarButton;
  mosaico: TdxBarButton;
  cascada: TdxBarButton;
  mosaicovertical: TdxBarButton;
  mosaicohorizontal: TdxBarButton;
  sSalir: TdxBarLargeButton;
  dxBarManager1Bar6: TdxBar;
  opSQLAnexo: TdxBarButton;
  cConvenios: TdxBarButton;
  opEmpleados: TdxBarButton;
  cAnexo: TdxBarButton;
  cPolizas: TdxBarButton;
  cDistribuyeO: TdxBarButton;
  cFichaTecnica: TdxBarButton;
  cTrinomios: TdxBarButton;
  cActividades: TdxBarButton;
  cOrdenes: TdxBarButton;
  cRecursos: TdxBarButton;
  cVerifica: TdxBarButton;
  dxBarManager1Bar8: TdxBar;
  mnOperaciones: TdxBarSubItem;
  ControlPers: TdxBarSubItem;
  mnAvances: TdxBarSubItem;
  mnDiario: TdxBarSubItem;
  mnConsultas: TdxBarSubItem;
  mnEstimaciones: TdxBarSubItem;
  adDistPrograma: TdxBarButton;
  cPaquetesAct: TdxBarButton;
  adReg02: TdxBarButton;
  adReg03: TdxBarButton;
  adReg04: TdxBarButton;
  mnuPersonal2: TdxBarButton;
  oficmodif: TdxBarButton;
  MovPerofic: TdxBarButton;
  cAvContrato: TdxBarButton;
  cAvOrden: TdxBarButton;
  cConsulta1: TdxBarButton;
  cConsulta3: TdxBarButton;
  cConsulta6: TdxBarButton;
  cConsulta5: TdxBarButton;
  opComparativo1: TdxBarButton;
  opComparativo5: TdxBarButton;
  rComparativo: TdxBarButton;
  opPermisos: TdxBarButton;
  opFirmas: TdxBarButton;
  rInstalado: TdxBarButton;
  rDiario: TdxBarButton;
  reporteBarco: TdxBarButton;
  rGerencial: TdxBarButton;
  rSintesis: TdxBarButton;
  qComentarios: TdxBarButton;
  opTiemposM: TdxBarButton;
  adCancelacion: TdxBarButton;
  opValida: TdxBarButton;
  opAbre: TdxBarButton;
  opProyeccion: TdxBarButton;
  opEstimaciones: TdxBarButton;
  opValidaEst: TdxBarButton;
  OpCrearGenerado: TdxBarSubItem;
  opGeneradores: TdxBarButton;
  opHistorico: TdxBarButton;
  rPartidasIsom: TdxBarButton;
  dxBarSubItem12: TdxBarSubItem;
  cambiarfondo: TdxBarButton;
  irareportesdiarios: TdxBarButton;
  iraestimaciones: TdxBarButton;
  irageneradores: TdxBarButton;
  cambiarmododefondo: TdxBarSubItem;
  ventanaen: TdxBarSubItem;
  irageneradoresdeinformes: TdxBarButton;
  Cambiarimagendefondo1: TdxBarButton;
  estirado1: TdxBarButton;
  centrado1: TdxBarButton;
  mosaico1: TdxBarButton;
  cambiarmododefondo1: TdxBarSubItem;
  Cascada1: TdxBarButton;
  MosaicoVertical1: TdxBarButton;
  MosaicoHorizontal1: TdxBarButton;
  Ventanasen1: TdxBarSubItem;
  Irareportesdiarios1: TdxBarButton;
  Iraestimaciones1: TdxBarButton;
  Irageneradores1: TdxBarButton;
  Irageneradoresdeinformes1: TdxBarButton;
  cConsulta4: TdxBarButton;
  dxBarManager1Bar10: TdxBar;
  Catalogos2: TdxBarSubItem;
  Empleados1: TdxBarLargeButton;
  Equipos1: TdxBarLargeButton;
  EquipodeSeguridad1: TdxBarSubItem;
  ImprimirContratos1: TdxBarLargeButton;
  ImportaciondeDatos1: TdxBarLargeButton;
  ControldeGuardias1: TdxBarLargeButton;
  ConfiguracionRH1: TdxBarLargeButton;
  EstatusEmpleados1: TdxBarButton;
  Puestos2: TdxBarButton;
  AreasDepartamentos1: TdxBarButton;
  EstatusDiarioEmpleados1: TdxBarButton;
  EstatusEquipos1: TdxBarButton;
  InstitucionesEducativas1: TdxBarButton;
  Profesiones1: TdxBarButton;
  LocalidadesEducativas1: TdxBarButton;
  NiveldeOrganizacin1: TdxBarButton;
  Organizacin1: TdxBarButton;
  EquipodeSeguridad2: TdxBarButton;
  SalidadeEquipodeSeguridad1: TdxBarButton;
  ConsultadeEquipodeSeguridad1: TdxBarButton;
  dxBarManager1Bar11: TdxBar;
  dxBarManager1Bar12: TdxBar;
  dxBarManager1Bar13: TdxBar;
  dxBarManager1Bar14: TdxBar;
  dxBarManager1Bar15: TdxBar;
  Catlogos1: TdxBarSubItem;
  Nminas1: TdxBarSubItem;
  ablasISR1: TdxBarSubItem;
  CatlogodeRegistrosPatronales1: TdxBarButton;
  CatlogodeEmpleados1: TdxBarButton;
  CatlogodePercepciones1: TdxBarButton;
  CatlogodeDeducciones1: TdxBarButton;
  CatlogodePrestacionesdeLey1: TdxBarButton;
  subZonasGeo: TdxBarButton;
  NminasProcesadas1: TdxBarSubItem;
  NminasProcesadas2: TdxBarButton;
  AbrirNmina1: TdxBarButton;
  ProcesarNmina1: TdxBarButton;
  SeleccindeEgresos1: TdxBarButton;
  HojadeIncidencias1: TdxBarButton;
  Recibos1: TdxBarButton;
  GuardarNmina1: TdxBarButton;
  ReportedeNmina1: TdxBarButton;
  ReportedeClculo1: TdxBarButton;
  arifaMensual1: TdxBarButton;
  SubsidiodeEmpleo1: TdxBarButton;
  ablasIMSS1: TdxBarLargeButton;
  Configuracion1: TdxBarLargeButton;
  ProcesarNmina2: TdxBarButton;
  Catalogos1: TdxBarSubItem;
  ControlIngresos1: TdxBarSubItem;
  ControlEgresos1: TdxBarSubItem;
  AperturaValidacion1: TdxBarSubItem;
  GeneracionInformesReportes1: TdxBarSubItem;
  ModuloTraspaso1: TdxBarLargeButton;
  DetalleGastosxEmpleado1: TdxBarLargeButton;
  ConfiguraciondeContabilidad1: TdxBarLargeButton;
  mnuBancos: TdxBarButton;
  Clientes1: TdxBarButton;
  CuentasBancarias1: TdxBarButton;
  CuentasContables1: TdxBarButton;
  Egresos1: TdxBarButton;
  GrupodeEgresos1: TdxBarButton;
  Proveedores1: TdxBarButton;
  DepositosBancarios1: TdxBarButton;
  EstadosdeCuentasBancarios1: TdxBarButton;
  EmisiondeCheques1: TdxBarButton;
  ransferencia1: TdxBarButton;
  ConsultadeGastos1: TdxBarButton;
  HistoricodeEgresos1: TdxBarButton;
  AperturadeComprobacion1: TdxBarButton;
  CerrarComprobacin1: TdxBarButton;
  Ingresos2: TdxBarButton;
  Egresos3: TdxBarButton;
  Catalogos3: TdxBarSubItem;
  ProspectosClientes1: TdxBarLargeButton;
  Vendedores1: TdxBarLargeButton;
  iposdeClientes1: TdxBarLargeButton;
  configuraciones: TdxBarSubItem;
  tbConsult: TdxBarSubItem;
  tbReports: TdxBarSubItem;
  tbHisto: TdxBarSubItem;
  tbSeg: TdxBarSubItem;
  tbbSetup: TdxBarButton;
  tbbPaquetePer: TdxBarButton;
  tbbPaqEq: TdxBarButton;
  tbbConsult6: TdxBarButton;
  tbbRepDiario: TdxBarButton;
  tbbRepBarco: TdxBarButton;
  tbbAvisoEmb: TdxBarButton;
  tbbFotos: TdxBarButton;
  tbbEmpleados: TdxBarButton;
  tbbAutoriza: TdxBarButton;
  tbbDesautoriza: TdxBarButton;
  tbbEstima: TdxBarButton;
  tbbGenera: TdxBarButton;
  tbbInformes: TdxBarButton;
  dxBarSubItem4: TdxBarSubItem;
  dxBarSubItem9: TdxBarSubItem;
  sAcerca: TdxBarButton;
  opAyuda: TdxBarButton;
  sTips: TdxBarButton;
  sWarning: TdxBarButton;
  mnuKardex: TdxBarButton;
  sCambiaP: TdxBarButton;
  sLogin: TdxBarButton;
  sSeleccion: TdxBarButton;
  dxBarSubItem10: TdxBarSubItem;
  mnAdmon: TdxBarSubItem;
  adDeptos: TdxBarButton;
  adProgramas: TdxBarButton;
  adUsuariosC: TdxBarButton;
  AsignaciondeOrd: TdxBarButton;
  adUsuarios: TdxBarButton;
  adGrupos: TdxBarButton;
  SubAdministrador: TdxBarButton;
  adContratos: TdxBarButton;
  adSubContratos: TdxBarButton;
  adConfiguracion: TdxBarButton;
  adTurnos: TdxBarButton;
  catIdiomas: TdxBarButton;
  adFestivos: TdxBarButton;
  adAvisos: TdxBarButton;
  adGrupoP: TdxBarButton;
  opadmonCatalogo: TdxBarButton;
  adTiposMov: TdxBarButton;
  cFases: TdxBarButton;
  cProgPlaticas: TdxBarButton;
  InformedeSincronizado1: TdxBarButton;
  mnAdmonPEP: TdxBarSubItem;
  adResidencias: TdxBarButton;
  adActivos: TdxBarButton;
  cFactorCosto: TdxBarButton;
  CatalogoErrores: TdxBarButton;
  mnHerramientas: TdxBarSubItem;
  adSql: TdxBarButton;
  adImportar: TdxBarButton;
  adExportar: TdxBarButton;
  adImportarOk: TdxBarButton;
  adExportar2: TdxBarButton;
  mnCopiarParametros: TdxBarButton;
  MnuImpAvCont: TdxBarButton;
  CargaPrograma: TdxBarButton;
  Graficador: TdxBarButton;
  ChartPro: TdxBarButton;
  cProveedores: TdxBarLargeButton;
  MnuEntAlmace: TdxBarLargeButton;
  MnuSalAlmacen: TdxBarLargeButton;
  opInventario: TdxBarLargeButton;
  opRequisiciones: TdxBarLargeButton;
  opPedidos: TdxBarLargeButton;
  opAvisodeEmb: TdxBarLargeButton;
  optEstimaciones: TdxBarLargeButton;
  optValida: TdxBarLargeButton;
  optDesautoriza: TdxBarLargeButton;
  mnPanel: TdxRibbonTab;
  dxRibbon1Tab4: TdxRibbonTab;
  dxBarManager1Bar3: TdxBar;
  dxBarManager1Bar7: TdxBar;
  dxBarManager1Bar1: TdxBar;
  GerencialBarco1: TdxBarLargeButton;
  ReportedeProduccion: TdxBarLargeButton;
  geAvFiFin: TdxBarLargeButton;
  ProyecciondeAct: TdxBarLargeButton;
  gePersonalProg: TdxBarLargeButton;
  grPenasRet: TdxBarLargeButton;
  AccesoObra: TdxBarLargeButton;
  FontDialog1: TFontDialog;
  ReplaceDialog: TReplaceDialog;
  dxTabbedMDIManager1: TdxTabbedMDIManager;
  cxLocalizer1: TcxLocalizer;
  menu: TdxBarApplicationMenu;
  dxBarSubItem1: TdxBarSubItem;
  dxBarSubItem2: TdxBarSubItem;
  dxBarSubItem3: TdxBarSubItem;
  dxBarSubItem5: TdxBarSubItem;
  dxBarSubItem6: TdxBarSubItem;
  cEmbarcaciones: TdxBarButton;
  mnPersonal: TdxBarSubItem;
  mnEquipos: TdxBarSubItem;
  mnHerramienta: TdxBarSubItem;
  mnBasicos: TdxBarSubItem;
  mnConsumibles: TdxBarSubItem;
  mnuAgrupacionP: TdxBarButton;
  cPersonal: TdxBarButton;
  cPaquetesPer: TdxBarButton;
  opProgramacion: TdxBarButton;
  Tripulacion: TdxBarButton;
  cEquipos: TdxBarButton;
  cPaquetesEq: TdxBarButton;
  subHerramientas: TdxBarButton;
  subHerramientas_p: TdxBarButton;
  subBasicos: TdxBarButton;
  subBasicos_p: TdxBarButton;
  subMateriales: TdxBarButton;
  dxBarSubItem7: TdxBarSubItem;
  dxBarSubItem8: TdxBarSubItem;
  dxBarSubItem11: TdxBarSubItem;
  dxBarSubItem13: TdxBarSubItem;
  cPlataformas: TdxBarButton;
  cPernoctan: TdxBarButton;
  mnuPozosdePerfo: TdxBarButton;
  menuRecursos: TdxBarSubItem;
  cCuentas: TdxBarButton;

  cIsometricosNuevo: TdxBarButton;
  MnuGpoPerimetros: TdxBarButton;
  MnuPerimetros: TdxBarButton;
  MnuAlmacen: TdxBarButton;
  MnuFamiliadePro: TdxBarSubItem;
  MnuCatalogodeMo: TdxBarButton;
  mnuFamiliadePro1: TdxBarButton;
  SubfamiliadeProduc1: TdxBarButton;
  nsubMarca: TdxBarButton;
  rMovimientosdeBarco: TdxBarButton;
  rPersonal: TdxBarButton;
  rEquipo: TdxBarButton;
  rPernoctas: TdxBarButton;
  cPendientes: TdxBarLargeButton;
  Firmantes1: TdxBarLargeButton;
  JornadasEspeciales1: TdxBarLargeButton;
  MovtosdeEmbarcacin1: TdxBarLargeButton;
  FasesxOrden1: TdxBarLargeButton;
  BitacoradeActividades1: TdxBarLargeButton;
  ReporteDiario2: TdxBarLargeButton;
  Estimaciones5: TdxBarLargeButton;
  Estimaciones2: TdxBarLargeButton;
  NotasdeCampo1: TdxBarLargeButton;
  dxLayoutLookAndFeelList10: TdxLayoutLookAndFeelList;
  dxLayoutStandardLookAndFeel10: TdxLayoutStandardLookAndFeel;
  dxAlertWindowManager1: TdxAlertWindowManager;
  dxDockingManager1: TdxDockingManager;
  cxLookAndFeelController1: TcxLookAndFeelController;
  cxDefaultEditStyleController1: TcxDefaultEditStyleController;
  cxEditStyleController1: TcxEditStyleController;
  Fondo: TImage;
  imgKardex: TdxBarButton;
  AcoplarDesacoplar: TdxBarButton;
    CatalogodeAspirantes2: TdxBarButton;
  RequisiciondePersonal1: TdxBarLargeButton;
  dxBarButton1: TdxBarButton;
  CapturadeRecepcindeMateriales1: TdxBarLargeButton;
  mnsCtrlEquipo: TdxBarSubItem;
  subAsigMatPersonal: TdxBarButton;
  subDevMat: TdxBarButton;
  subRepEquipSeg: TdxBarButton;
  subDetallesSubFam: TdxBarSubItem;
  nsubTipo: TdxBarButton;
  Tipos_Hits: TdxScreenTipRepository;
  Sin_Registro: TdxScreenTip;
  prueba: TdxLayoutSkinLookAndFeel;
  dxBarScreenTipRepository1: TdxBarScreenTipRepository;
  Manager_Hits: TcxHintStyleController;
  cxLookAndFeelController2: TcxLookAndFeelController;
  dxBarScreenTipRepository1ScreenTip1: TdxScreenTip;
  Cerrar_Todo: TdxBarButton;
    razabilidadInsumos1: TdxBarLargeButton;
    OrdenesdeCompra1: TdxBarLargeButton;
    ReportesAlmacen1: TdxBarSubItem;
    Materiales1: TdxBarLargeButton;
    mnusSalidas1: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxbrlrgbtnregistrof1: TdxBarLargeButton;
    dxbrlrgbtnregistrof2: TdxBarLargeButton;
    dxbrsbtmlistas1: TdxBarSubItem;
    dxbrbtn1: TdxBarButton;
    tbbCambiaContrato: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    mInteligentTab1: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    btnEdosCuentasBancarios: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    btnConfiguracionVentas: TdxBarLargeButton;
    dxBarButton14: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    dxBarButton7: TdxBarButton;
    btnCotizaciones: TdxBarLargeButton;
    btnTimeLine: TdxBarLargeButton;
    btnFirmanteDigitales: TdxBarLargeButton;
    btnTraspasos: TdxBarButton;
    btnTodasCotizaciones: TdxBarLargeButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxAlert: TdxAlertWindowManager;
    cxImageList1: TcxImageList;
    TimerAlert: TTimer;
    mnuEmpresas: TdxBarButton;
    AsignacindeAlmacenesaUsuarios1: TdxBarButton;
    subAsigAlmContratos: TdxBarButton;
    dxbrsbtmlistas2: TdxBarSubItem;
    dxbrsbtmlistas3: TdxBarSubItem;
    mnuEmpresac: TdxBarButton;
    mnuGenerealc: TdxBarButton;
    dxBarButton19: TdxBarButton;
    btnCatalogoTipoVisita: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    Cotizaciones1: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    tbbAutorizaAlm: TdxBarLargeButton;
    tbbDesautorizaAlm: TdxBarLargeButton;
    MnuDocumentacion: TdxBarButton;
    BancosRH: TdxBarButton;
    HorarioLabores1: TdxBarButton;
    PeriodosdePago1: TdxBarButton;
    Nacionalidad1: TdxBarButton;
    DiasdeDescanso1: TdxBarButton;
    ipodePersonal1: TdxBarButton;
    mnuCatalogoCuentas: TdxBarButton;
    CatalogodeAspirantes1: TdxBarLargeButton;
    Evaluarempleados1: TdxBarLargeButton;
    Guardias1: TdxBarLargeButton;
    dxBarButton22: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    subMaterialesctrlobra: TdxBarButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarSubItem20: TdxBarSubItem;
    cGruposIsom: TdxBarButton;
    cIsometricos: TdxBarButton;
    dxValidacion: TdxBarButton;
    dxDesvalidacion: TdxBarButton;
    dxCatalogoConceptos: TdxBarButton;
    dxCatalogoConceptosPU: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    dxBarButton26: TdxBarButton;
    dxBarSubItem22: TdxBarSubItem;
    dxCatalogoMaterialesPU: TdxBarButton;
    Tipo_Insumo: TdxBarButton;
    configuracion_almacen: TdxBarLargeButton;
    programaDeSalud: TdxBarLargeButton;
    programa1: TdxBarLargeButton;
    programa2: TdxBarLargeButton;
    Metro: TdxBarButton;
    mnBarco: TdxRibbonTab;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarSubItem23: TdxBarSubItem;
    dxbrsbtmAnalisis1: TdxBarSubItem;
    dxbrlrgbtnAnalisis: TdxBarLargeButton;
    SubIndirectos: TdxBarButton;
    subIndirectosCat: TdxBarButton;
    btnsincuentas: TdxBarButton;
    btnAsignarCuenta: TdxBarButton;
    aclaraciones: TdxBarButton;
    btnregistroquejas: TdxBarLargeButton;
    dxBtnSalarios: TdxBarLargeButton;
    oPFirmasAlm: TdxBarLargeButton;
    btn1: TdxBarButton;
    btnCatMaestros: TdxBarButton;
    btnModulos: TdxBarButton;
    lbtImportacion: TdxBarLargeButton;
    lbtAsigMod: TdxBarLargeButton;
    lbtRepError: TdxBarLargeButton;
    mnuBorrarContrato: TdxBarLargeButton;
    lbtLista: TdxBarLargeButton;
    lbtDepto: TdxBarLargeButton;
    lbtConfPu: TdxBarLargeButton;
    FrmScaler1: TFormAutoScaler;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    cxImprimeTodosContratos: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarSubItem24: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;

  procedure FormShow(Sender: TObject);
  procedure adConfiguracionClick(Sender: TObject);
  procedure adContratosClick(Sender: TObject);
  procedure adDeptosClick(Sender: TObject);
  procedure adUsuariosClick(Sender: TObject);
  procedure cPersonalClick(Sender: TObject);
  procedure cEquiposClick(Sender: TObject);
  procedure cEmbarcacionesClick(Sender: TObject);
  procedure cPlataformasClick(Sender: TObject);
  procedure cCuentasClick(Sender: TObject);
  procedure cPernoctanClick(Sender: TObject);
  procedure cOrdenesClick(Sender: TObject);
  procedure cActividadesClick(Sender: TObject);
  procedure Firmantes1Click(Sender: TObject);
  procedure adTiposMovClick(Sender: TObject);
  procedure opMuertoClick(Sender: TObject);
  procedure sSeleccionClick(Sender: TObject);
  procedure sLoginClick(Sender: TObject);
  procedure sSalirClick(Sender: TObject);
  procedure sAcercaClick(Sender: TObject);
  procedure CatalogodeProveedores1Click(Sender: TObject);
  procedure opPermisosClick(Sender: TObject);
  procedure rDiarioClick(Sender: TObject);
  procedure opValidaClick(Sender: TObject);
  procedure opAbreClick(Sender: TObject);
  procedure cConsulta1Click(Sender: TObject);
  procedure adReg02Click(Sender: TObject);
  procedure opFirmasClick(Sender: TObject);
  procedure cAnexoClick(Sender: TObject);
  procedure cVerificaClick(Sender: TObject);
  procedure adFestivosClick(Sender: TObject);
  procedure cProgPlaticasClick(Sender: TObject);
  procedure opComparativo1Click(Sender: TObject);
  procedure adTurnosClick(Sender: TObject);
  procedure adReg03Click(Sender: TObject);
  procedure opEstimacionesClick(Sender: TObject);
  procedure cPaquetesActClick(Sender: TObject);
  procedure adDistProgramaClick(Sender: TObject);
  procedure rComparativoClick(Sender: TObject);
  procedure cAvContratoClick(Sender: TObject);
  procedure cAvOrdenClick(Sender: TObject);
  procedure cIsometricosClick(Sender: TObject);
  procedure cGruposIsomClick(Sender: TObject);
  procedure Firmantes3Click(Sender: TObject);
  procedure opTiemposMClick(Sender: TObject);
  procedure qComentariosClick(Sender: TObject);
  procedure cConveniosClick(Sender: TObject);
  procedure SpeedItem2Click(Sender: TObject);
  procedure SpeedItem3Click(Sender: TObject);
  procedure SpeedItem5Click(Sender: TObject);
  procedure SpeedItem6Click(Sender: TObject);
  procedure SpeedItem7Click(Sender: TObject);
  procedure SpeedItem12Click(Sender: TObject);
  procedure SpeedItem11Click(Sender: TObject);
  procedure SpeedItem14Click(Sender: TObject);
  procedure SpeedItem10Click(Sender: TObject);
  procedure cRecursosClick(Sender: TObject);
  procedure opProyeccionClick(Sender: TObject);
  procedure adSqlClick(Sender: TObject);
  procedure opSQLAnexoClick(Sender: TObject);
  procedure cFactorCostoClick(Sender: TObject);
  procedure geAvFiFinClick(Sender: TObject);
  procedure adImportarClick(Sender: TObject);
  procedure adExportarClick(Sender: TObject);
  procedure adResidenciasClick(Sender: TObject);
  procedure adProgramasClick(Sender: TObject);
  procedure adGruposClick(Sender: TObject);
  procedure adGrupoPClick(Sender: TObject);
  procedure opProgramacionClick(Sender: TObject);
  procedure gePersonalProgClick(Sender: TObject);
  procedure adUsuariosCClick(Sender: TObject);
  procedure grPenasRetClick(Sender: TObject);
  procedure cConsulta4Click(Sender: TObject);
  procedure adImportarOkClick(Sender: TObject);
  procedure SpeedItem4Click0(Sender: TObject);
  procedure SpeedItem15Click(Sender: TObject);
  procedure SpeedItem16Click(Sender: TObject);
  procedure SpeedItem17Click(Sender: TObject);
  procedure SpeedItem16Click0(Sender: TObject);
  procedure AccesoObraClick(Sender: TObject);
  procedure adReg04Click(Sender: TObject);
  procedure opValidaEstClick(Sender: TObject);
  procedure opOrdenCamClick(Sender: TObject);
  procedure opAvisodeEmbClick(Sender: TObject);
  procedure cProveedoresClick(Sender: TObject);
  procedure SpeedItem19Click(Sender: TObject);
  procedure SpeedItem20Click(Sender: TObject);
  procedure cConsulta5Click(Sender: TObject);
  procedure cConsulta6Click(Sender: TObject);
  procedure SpeedItem13Click(Sender: TObject);
  procedure SpeedItem10Click0(Sender: TObject);
  procedure SpeedItem22Click(Sender: TObject);
  procedure cConsulta3Click(Sender: TObject);
  procedure adExportar2Click(Sender: TObject);
  procedure cConsulta7Click(Sender: TObject);
  procedure FormResize(Sender: TObject);
  procedure imgKardex1Click(Sender: TObject);
  procedure sCambiaPClick(Sender: TObject);
  procedure adCancelacionClick(Sender: TObject);
  procedure rGerencialClick(Sender: TObject);
  procedure cPolizasClick(Sender: TObject);
  procedure cFichaTecnicaClick(Sender: TObject);
  procedure opRequisicionesClick(Sender: TObject);
  procedure opPedidosClick(Sender: TObject);
  procedure opComparativo5Click(Sender: TObject);
  procedure SpeedItem23Click(Sender: TObject);
  procedure rSintesisClick(Sender: TObject);
  procedure sTipsClick(Sender: TObject);
  procedure sWarningClick(Sender: TObject);
  procedure adAvisosClick(Sender: TObject);
  procedure adActivosClick(Sender: TObject);
  procedure cTrinomiosClick(Sender: TObject);
  procedure opadmonCatalogoClick(Sender: TObject);
  procedure opGeneradorSubClick(Sender: TObject);
  procedure cDistribuyeOClick(Sender: TObject);
  procedure adSubContratosClick(Sender: TObject);
  procedure opAyudaClick(Sender: TObject);
  procedure mnuPozosdePerfoClick(Sender: TObject);
  procedure rInstaladoClick(Sender: TObject);
  procedure ProyecciondeActClick(Sender: TObject);
  procedure AsignaciondeOrdClick(Sender: TObject);
  procedure RepBarcoClick(Sender: TObject);
  procedure opInventarioClick(Sender: TObject);
  procedure opGeneradoresClick(Sender: TObject);
  procedure rPartidasIsomClick(Sender: TObject);

  procedure cFasesClick(Sender: TObject);
  procedure tripulacionClick(Sender: TObject);
  procedure mnuKardexClick(Sender: TObject);
  procedure oficmodifClick(Sender: TObject);
  procedure MovPeroficClick(Sender: TObject);
  procedure CargaProgramaClick(Sender: TObject);
  procedure mnuAgrupacionPClick(Sender: TObject);
  procedure TiempoTimer(Sender: TObject);
  procedure GraficadorClick(Sender: TObject);
  procedure ChartProClick(Sender: TObject);
  procedure CentrosPresupuestales1Click(Sender: TObject);
  procedure MnuCatalogodeMoClick(Sender: TObject);
  procedure MnuAlmacenClick(Sender: TObject);
  procedure tbbSetupClick(Sender: TObject);
  procedure tbbPaquetePerClick(Sender: TObject);
  procedure tbbPaqEqClick(Sender: TObject);
  procedure tbbRepDiarioClick(Sender: TObject);
  procedure tbbRepBarcoClick(Sender: TObject);
  procedure tbbFotosClick(Sender: TObject);
  procedure tbbFirmantesClick(Sender: TObject);
  procedure tbbAutorizaClick(Sender: TObject);
  procedure tbbDesautorizaClick(Sender: TObject);
  procedure tbbEstimaClick(Sender: TObject);
  procedure tbbGeneraClick(Sender: TObject);
  procedure tbbInformesClick(Sender: TObject);
  procedure AdvToolBarButton24Click(Sender: TObject);
  procedure MnuEntAlmaceClick(Sender: TObject);
  procedure MnuSalAlmacenClick(Sender: TObject);
  procedure ToolButton1Click(Sender: TObject);
  procedure ToolButton2Click(Sender: TObject);
  procedure ToolButton10Click(Sender: TObject);
  procedure ToolButton9Click(Sender: TObject);
  procedure ToolButton6Click(Sender: TObject);
  procedure ToolButton7Click(Sender: TObject);
  procedure ToolButton8Click(Sender: TObject);
  procedure ToolButton11Click(Sender: TObject);
  procedure ToolButton13Click(Sender: TObject);
  procedure ToolButton14Click(Sender: TObject);
  procedure ToolButton17Click(Sender: TObject);
  procedure ToolButton18Click(Sender: TObject);
  procedure ToolButton21Click(Sender: TObject);
  procedure ToolButton22Click(Sender: TObject);
  procedure ToolButton23Click(Sender: TObject);
  procedure ToolButton24Click(Sender: TObject);
  procedure ToolButton25Click(Sender: TObject);
  procedure ToolButton27Click(Sender: TObject);
  procedure AdvToolBarMenuButton1Click(Sender: TObject);
  procedure tbbCambiaContratoClick(Sender: TObject);
  procedure mnCopiarParametrosClick(Sender: TObject);
  procedure optEstimacionesClick(Sender: TObject);
  procedure optValidaClick(Sender: TObject);
  procedure optDesautorizaClick(Sender: TObject);
  procedure rMovimientosdeBarcoClick(Sender: TObject);
  procedure rPernoctasClick(Sender: TObject);
  procedure SubAdministradorClick(Sender: TObject);
  procedure rPersonalClick(Sender: TObject);
  procedure rEquipoClick(Sender: TObject);
  procedure CatalogoErroresClick(Sender: TObject);
  procedure Generaciondeinformes2Click(Sender: TObject);
  procedure Generadores2Click(Sender: TObject);
  procedure Estimaciones3Click(Sender: TObject);
  procedure Reportesdiarios1Click(Sender: TObject);
  procedure inteligentpopPopup(Sender: TObject);
  procedure Irareportesdiarios1Click(Sender: TObject);
  procedure Iraestimaciones1Click(Sender: TObject);
  procedure Irageneradores1Click(Sender: TObject);
  procedure Irageneradoresdeinformes1Click(Sender: TObject);
  procedure Cambiarimagendefondo1Click(Sender: TObject);
  procedure MnuImpAvContClick(Sender: TObject);
  procedure mnuPersonal2Click(Sender: TObject);
  procedure tbbEmpleadosClick(Sender: TObject);
  procedure reporteBarcoClick(Sender: TObject);
  procedure estirado1Click(Sender: TObject);
  procedure centrado1Click(Sender: TObject);
  procedure rt1Click(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure GuardarNmina1Click(Sender: TObject);
  procedure Cascada1Click(Sender: TObject);
  procedure MosaicoVertical1Click(Sender: TObject);
  procedure MosaicoHorizontal1Click(Sender: TObject);
  procedure JvAppEvents1ActiveControlChange(Sender: TObject);
  procedure MnuGpoPerimetrosClick(Sender: TObject);
  procedure MnuPerimetrosClick(Sender: TObject);
  procedure cIsometricosNuevoClick(Sender: TObject);
  procedure subBasicosClick(Sender: TObject);
  procedure subHerramientasClick(Sender: TObject);
  procedure subMaterialesClick(Sender: TObject);
  procedure subHerramientas_pClick(Sender: TObject);
  procedure subBasicos_pClick(Sender: TObject);
  procedure InformedeSincronizado1Click(Sender: TObject);
  procedure GerencialBarco1Click(Sender: TObject);
  procedure ReportedeProduccionClick(Sender: TObject);
  procedure iposdeContratos1Click(Sender: TObject);
  procedure GrupodeEgresos1Click(Sender: TObject);
  procedure Clientes1Click(Sender: TObject);
  procedure CuentasBancarias1Click(Sender: TObject);
  procedure CuentasContables1Click(Sender: TObject);
  procedure Egresos1Click(Sender: TObject);
  procedure Empleados1Click(Sender: TObject);
  procedure Puestos1Click(Sender: TObject);
  procedure Equipos1Click(Sender: TObject);
  procedure Proveedores1Click(Sender: TObject);
  procedure DepositosBancarios1Click(Sender: TObject);
  procedure EstadosdeCuentasBancarios1Click(Sender: TObject);
  procedure EmisiondeCheques1Click(Sender: TObject);
  procedure ransferencia1Click(Sender: TObject);
  procedure AperturadeComprobacion1Click(Sender: TObject);
  procedure HistoricodeEgresos1Click(Sender: TObject);
  procedure ProcesarNmina1Click(Sender: TObject);
  procedure CatlogodeRegistrosPatronales1Click(Sender: TObject);
  procedure CatlogodePercepciones1Click(Sender: TObject);
  procedure CatlogodeDeducciones1Click(Sender: TObject);
  procedure CatlogodePrestacionesdeLey1Click(Sender: TObject);
  procedure arifaMensual1Click(Sender: TObject);
  procedure SubsidiodeEmpleo1Click(Sender: TObject);
  procedure ablasIMSS1Click(Sender: TObject);


  procedure MnsProveedoresClick(Sender: TObject);
  procedure MnsCaptdeReqClick(Sender: TObject);
  procedure MnsCaptOrdComClick(Sender: TObject);
  procedure MnsCapRecMatClick(Sender: TObject);
  procedure MnsEntradasAlmacenClick(Sender: TObject);
  procedure MnsSalidasAlmacenClick(Sender: TObject);
  procedure MnsCapAviEmbClick(Sender: TObject);
  procedure SubKardexMatxParClick(Sender: TObject);
  procedure SubKardexMaterialesClick(Sender: TObject);
  procedure SubOrdenesdeCompraClick(Sender: TObject);
  procedure SubMnsMaterialesClick(Sender: TObject);
  procedure SubKardexSalAlmClick(Sender: TObject);
  procedure SubAsigMatxPerClick(Sender: TObject);
  procedure SubDevolucindeMaterialClick(Sender: TObject);
  procedure SubRepCtrlMatClick(Sender: TObject);
  procedure ProcesarNmina2Click(Sender: TObject);
  procedure Recibos1Click(Sender: TObject);
  procedure ReportedeNmina1Click(Sender: TObject);
  procedure ReportedeClculo1Click(Sender: TObject);
  procedure subAsigAlmUsuariosClick(Sender: TObject);
  procedure subFamProductosClick(Sender: TObject);
  procedure subSubFamProductosClick(Sender: TObject);
  procedure nsubMarcaClick(Sender: TObject);
  procedure nsubTipoClick(Sender: TObject);
  procedure subZonasGeoClick(Sender: TObject);
  procedure subAsigAlmContratosClick(Sender: TObject);
  procedure CatlogodeEmpleados1Click(Sender: TObject);

  procedure SincronizadorBD1Click(Sender: TObject);
  procedure ComponentesxFamilia1Click(Sender: TObject);
  function MostrarFormChild(sForm: string): boolean;
  procedure CalculoRenunciaExecute(Sender: TObject);
  procedure CalculoDespidoExecute(Sender: TObject);
  procedure ImpresionRenunciaExecute(Sender: TObject);
  procedure ImpresionDespidoExecute(Sender: TObject);
  procedure ConfiguraciondeContabilidad1Click(Sender: TObject);
  procedure AbrirNmina1Click(Sender: TObject);
  procedure SeleccindeEgresos1Click(Sender: TObject);
  procedure ImprimirContratos1Click(Sender: TObject);
  procedure ConfiguracionRH1Click(Sender: TObject);
  procedure ModuloTraspaso1Click(Sender: TObject);
  procedure ControldeGuardias1Click(Sender: TObject);
  procedure catIdiomasClick(Sender: TObject);
  procedure DetalleGastosxEmpleado1Click(Sender: TObject);
  procedure Configuracion1Click(Sender: TObject);
  procedure EquipodeSeguridad2Click(Sender: TObject);
  procedure ConsultadeEquipodeSeguridad1Click(Sender: TObject);
  procedure mnuFamiliadePro1Click(Sender: TObject);
  procedure SubfamiliadeProduc1Click(Sender: TObject);
  procedure Marcas1Click(Sender: TObject);
  procedure SalidadeEquipodeSeguridad1Click(Sender: TObject);
  procedure Puestos2Click(Sender: TObject);
  procedure EstatusEmpleados1Click(Sender: TObject);
  procedure AreasDepartamentos1Click(Sender: TObject);
  procedure EstatusDiarioEmpleados1Click(Sender: TObject);
  procedure ImportaciondeDatos1Click(Sender: TObject);
  procedure EstatusEquipos1Click(Sender: TObject);
  procedure InstitucionesEducativas1Click(Sender: TObject);
  procedure LocalidadesEducativas1Click(Sender: TObject);
  procedure Profesiones1Click(Sender: TObject);
  procedure NiveldeOrganizacin1Click(Sender: TObject);
  procedure Organizacin1Click(Sender: TObject);
  procedure mnuBancosClick(Sender: TObject);
  procedure ProspectosClientes1Click(Sender: TObject);
  procedure iposdeClientes1Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item7Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
  procedure dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
  procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
  procedure estiradoClick(Sender: TObject);
  procedure centradoClick(Sender: TObject);
  procedure cascadaClick(Sender: TObject);
  procedure mosaicohorizontalClick(Sender: TObject);
  procedure mosaicoClick(Sender: TObject);
  procedure mosaicoverticalClick(Sender: TObject);
  procedure cambiarfondoClick(Sender: TObject);
  procedure irareportesdiariosClick(Sender: TObject);
  procedure iraestimacionesClick(Sender: TObject);
  procedure irageneradoresClick(Sender: TObject);
  procedure irageneradoresdeinformesClick(Sender: TObject);
  procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  procedure tbbAvisoEmbClick(Sender: TObject);
  procedure cPaquetesPerClick(Sender: TObject);
  procedure cPaquetesEqClick(Sender: TObject);
  procedure cPendientesClick(Sender: TObject);
  procedure Reporteador1Click(Sender: TObject);
  procedure Ingresos2Click(Sender: TObject);
  procedure imgKardexClick(Sender: TObject);
  procedure AcoplarDesacoplarClick(Sender: TObject);
  procedure RequisiciondePersonal1Click(Sender: TObject);
  procedure CapturadeRecepcindeMateriales1Click(Sender: TObject);
  procedure subAsigMatPersonalClick(Sender: TObject);
  procedure subDevMatClick(Sender: TObject);
  procedure subRepEquipSegClick(Sender: TObject);
  procedure dxRibbonBackstageViewGalleryControl1ItemClick(Sender: TObject;
    AItem: TdxRibbonBackstageViewGalleryItem);
  procedure menuExtraPaneItemClick(Sender: TObject; AIndex: Integer);
  procedure CatalogodeAspirantes2Click(Sender: TObject);
  procedure Cerrar_TodoClick(Sender: TObject);
  procedure FormContextPopup(Sender: TObject; MousePos: TPoint;
    var Handled: Boolean);
    procedure razabilidadInsumos1Click(Sender: TObject);
    procedure OrdenesdeCompra1Click(Sender: TObject);
    procedure Materiales1Click(Sender: TObject);
    procedure mnusSalidas1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);

    procedure dxbrlrgbtnregistrof1Click(Sender: TObject);
    procedure dxbrlrgbtnregistrof2Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxbrbtn1Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure btnConfiguracionVentasClick(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxbrbtnFormaPagoClick(Sender: TObject);
    procedure dxbrbtn2Click(Sender: TObject);
    procedure btnCotizacionesClick(Sender: TObject);
    procedure btnTimeLineClick(Sender: TObject);
    procedure btnFirmanteDigitalesClick(Sender: TObject);
    procedure btnTraspasosClick(Sender: TObject);
    procedure btnTodasCotizacionesClick(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxAlertButtonClick(Sender: TObject; AAlertWindow: TdxAlertWindow;
      AButtonIndex: Integer);
    procedure Notificaciones;
    procedure TimerAlertTimer(Sender: TObject);
    procedure mnuEmpresasClick(Sender: TObject);
    procedure mnuEmpresaClick(Sender: TObject);
    procedure AsignacindeAlmacenesaUsuarios1Click(Sender: TObject);
    procedure mnu2Click(Sender: TObject);
    procedure mnuGenerealcClick(Sender: TObject);
    procedure mnuEmpresacClick(Sender: TObject);
    procedure btnCatalogoDeCargoAClick(Sender: TObject);
    procedure Egresos3Click(Sender: TObject);
    procedure btnCatalogoTipoVisitaClick(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure Cotizaciones1Click(Sender: TObject);
    procedure tbbAutorizaAlmClick(Sender: TObject);
    procedure tbbDesautorizaAlmClick(Sender: TObject);
    procedure MnuDocumentacionClick(Sender: TObject);
    procedure BancosRHClick(Sender: TObject);
    procedure HorarioLabores1Click(Sender: TObject);
    procedure PeriodosdePago1Click(Sender: TObject);
    procedure Nacionalidad1Click(Sender: TObject);
    procedure DiasdeDescanso1Click(Sender: TObject);
    procedure ipodePersonal1Click(Sender: TObject);
    procedure mnuCatalogoCuentasClick(Sender: TObject);
    procedure CatalogodeAspirantes1Click(Sender: TObject);
    procedure Evaluarempleados1Click(Sender: TObject);
    procedure Guardias1Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure subMaterialesctrlobraClick(Sender: TObject);
    procedure Tipo_InsumoClick(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxCatalogoConceptosPUClick(Sender: TObject);
    procedure dxCatalogoMaterialesPUClick(Sender: TObject);
    procedure dxValidacionClick(Sender: TObject);
    procedure dxDesvalidacionClick(Sender: TObject);
    procedure configuracion_almacenClick(Sender: TObject);
    procedure programaDeSaludClick(Sender: TObject);
    procedure dxbrbtnfrentes1Click(Sender: TObject);
    procedure dxbrlrgbtnFrentesClick(Sender: TObject);
    procedure dxbrlrgbtnAnalisisClick(Sender: TObject);
    procedure subIndirectosCatClick(Sender: TObject);
    procedure btnsincuentasClick(Sender: TObject);
    procedure btnAsignarcuentaClick(Sender: TObject);
    procedure btnsincuentaClick(Sender: TObject);
    procedure aclaracionesClick(Sender: TObject);
    procedure btnregistrodequejasClick(Sender: TObject);
    procedure btnregistroquejasClick(Sender: TObject);
    procedure dxBtnSalariosClick(Sender: TObject);
    procedure btnCatMaestrosClick(Sender: TObject);
    procedure oPFirmasAlmClick(Sender: TObject);
    procedure lbtImportacionClick(Sender: TObject);
    procedure btnModulosClick(Sender: TObject);
    procedure lbtAsigModClick(Sender: TObject);
    procedure lbtRepErrorClick(Sender: TObject);
    procedure mnuBorrarContratoClick(Sender: TObject);
    procedure lbtListaClick(Sender: TObject);
    procedure lbtDeptoClick(Sender: TObject);
    procedure lbtConfPuClick(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
private
  { Private declarations }
  Cotizaciones : TNotificacionesVentas;
public
  { Public declarations }
  adentro: boolean;
  procedure permisosUsuarios(bandera : byte);
  procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
end;

const
  WM_UPDATESTATUS = WM_USER + 2;

var
  frmInteligent: TfrmInteligent;
  detectar: string;
  Letra: char;
  udc_activa:integer;
  HoraI: TTime;

function  GetAppVersion:string;

implementation

uses frm_contratos, frm_deptos, frm_usuarios,
  frm_personal, frm_equipos, frm_embarcaciones, frm_AlmCotizacion,
  frm_plataformas,
  frm_Cuentas, frm_Pernoctan,
  frm_ordenes, frm_actividades,
  frm_tiposdeMovimiento,
  frm_acceso,
  frm_acerca, frm_proveedores, frm_TipoMovto,
  frm_Almacenes, frm_tramitedepermisos,
  frm_valida,
  frm_registrodequejas,
  frm_abrereporte,
  frm_paquetesdeequipo, frm_paquetesdepersonal,
  frm_ConsultadeActividades,
  frm_CalculoAvancesxPartida, frm_ConsultaxDescripcion,
  frm_ActividadesAnexo,
  frm_diasfestivos,
  frm_platicas, frm_turnos,
  frm_ReporteDiarioTurno,
  frm_compara2,
  frm_comparativo,
  frm_ConsultadeActividades2,
  frm_BusquedadeNotas,
  frm_Reprogramacion,
  frm_recursosxanexo,
  frm_Proyeccion, frm_SqlManager,
  frm_importaciondedatos,
  frm_factordecosto, frm_AvancesFinancieros,
  frm_SqlImportar,
  frm_SqlExportar, frm_residencias,
  frm_programas,
  frm_GruposUsuarios, frm_gruposxprograma, frm_personalprogramado,
  frm_personalconsolidado, frm_contratosxusuario,
  frm_AjustaAnexo, frm_retecionesypenas,
  frm_PendientesNew, frm_ImportarDiarios,
  frm_comentariosxanexo, frm_ControlDirecto, frm_CalculoAvancesPaquetes,
  frm_ValidaEstimacion, frm_OrdendeCambio,
  frm_ConsultadeActividades3,
  frm_ConsultadeActividades4, frm_ExportaGeneral, frm_Kardex, frm_setup,
  frm_jornadasdiarias, frm_cambiapassword,
  frm_ReportePeriodo, frmReporteDiarioGerencial,
  frm_polizas, frm_FichaTecnica,
  frm_ConsultadeActividades5,
  frm_firmantes,
  frm_ActividadesAnexo2, frm_generado, frm_estimaciones,
  frm_actividadesxgrupo, frm_EstimaInstalado, frm_compara, frm_tipsdia,
  frm_warningdia, frm_AvisosAlertas,
  frm_activos, frm_seleccion2,
  frm_trinomios, frm_ProcRegAvFisico,
  frm_isometricos_grupo,
  frm_isometricos, frm_DistribucionPrograma, frm_admonCatalogos,
  frm_EstimaProveedor, frm_AjustaOrden, frm_SubContratos,
  frm_Pedidos, frm_ordenesPerf, frm_EqPozos,
  frm_Consumibles, frm_RequisicionPerf,
  frm_detalledeinstalacion, frm_Proyeccion2,
  frm_contratosxordenes, frm_AdmonyTiempos,
  frm_tripulacion, frm_tripulacion_diaria, frm_ReporteDiario_Barco,
  frm_partidasxisometrico, frm_Fases,
  frm_ordenesGral, FrmMovtoPersonalxoficio, frm_Gantt2,
  frm_GruposPersonal,
  frm_Graficador, frm_IntelChart, frm_grupofamilias, frm_basicos,
  frm_EntradaAlmacen, frm_SalidaAlmacen,
  frm_EstimacionGeneral, frm_ValidaEstimacionGral,
  frm_AperturaEstimacionGral, frm_Recursos_movimientos, frm_Recursos_pernocta,
  frm_AdministrarBd, frm_Recursos_personal, frm_Recursos_equipo, frm_cancelacion,
  frm_ActualizaAvancesRemotos, frm_entradaanex, frm_EmpleadosGuardias,
  frm_grupoperimetros, frm_formatogenerador, frm_recursosxanexonuevos,
  frm_isometricos_nuevo, frm_paquetesdeherramienta, frm_paquetesdebasicos,
  frm_GerencialBarco, frm_OpcionesGerencial, frm_OpcionesReporteProduccion,
  frmTipoContrato, frmGrupodeEgresos, frmCatalogoAreas, frmCompanias,
  frmCatalogodeCuentas, frmCatalogoCuentas, frmCatalogoEgresos,
  frmCatalogoDePuestos, frmCatalogoDeEquipos, frmDepositoscias,
  frmEstadodeCuenta, frmEgresos, frmGastos, frmAbrirComprobacion,
  frmConsultadeGastos, frmProveedoresPendientes, frmEmpleados,
  frmNominasEmpleados, frmRegistrosPatronales, frmCatalogoDePrestaciones,
  frmCatalogodeDeducciones, frmSubcidioEmpleo, frmTablaIMSS, frmTarifaMensual,
  frm_RecepciondeMateriales,  frm_DevolucionEquipoSeguridad, frm_InsumosxPersonal,

  frmNomina_NuevoPeriodo,  frm_ReportesAlmacen2, frm_HistorialMaterialxEmpleado,
  frm_ReporteSalidasAlmacen,

  frmNomina_EmpleadosPorNomina, frm_ReportesAlmacen, frm_MovimientosInsumos,
  frmNomina_ProcesarNomina, frmNomina_ImprimirRecibos, frmNomina_GuardarNomina,
  frmPrestacionesdeLey, frmNomina_ReporteNominas, frmNomina_ReporteAcumulados,
  frm_detallesubfamilias, frm_SubFamProductos,
  principal, frm_AlmacenesporUsuario, frm_AlmacenesporContrato,
  frmNomina_Pruebas, frm_ComponentXFamilia,
  frm_MarcasxSubFam, frmConfiguracion, frm_ZonasGeograficas,
  frmNomina_AbrirNomina, frmNomina_CapturaEgresos, frm_ListadeAsistencia,
  frm_ImprimeContratos, frm_ConfiguracionRH, frm_ModuloTraspaso, frm_NuevoIdioma,
  frm_DetalleGastosXEmpleados, frm_EquipoSeguridad, frm_ConfiguracionNomina, frm_AsignaciondeEquipoSeg,
  frm_catalogoestatusempleados, frm_catalogoestatusdiarioempleados, frm_catalogolocalidad_academico,
  Frm_ImportacionDatosRH,frm_catalogoestatusequipo, frm_catalogoentidadeseducativas, frm_catalogoprofesiones, frm_nivelorganizacion, frm_nuc_organizacion,
  frm_bancos, frm_TiposClientes, frmReportesIngresoscias,frm_RequisiondePersonal,
  Frm_CatalogoDePostulante, frm_repositorio, frm_FacturaElectronica,
  frm_FacturaElectronica_Lista, frm_CatDoctos,
  frmEmpleadosPorNomina, Func_Genericas,UManagerDbUser, frm_PrecioDivisas, frmReportesFacturas,
  frm_CatalogoVendedores, frm_configuracionVta, frm_catactualizaciones, frm_FormasPago, frm_vtacotizaciones, frm_vtaTimeLine,
  frm_firmasdigitales, frmDepositosciasTraspasos, frm_vtaTCotizaciones, frmOtrosGastos, frmGerencial, frmNotificaciones,
  frmCatalogoDeCargoA, frmTipoVisita, frmConsultadeGastos_Empresa, UTFrmIniciacionSaldo, UTFrmDevolucionEmpProv, frm_Medidas, frmDoctosXcategoria, frm_catalogohorariolabores,
  frm_catalogoperiodospago, frm_catalogonacionalidades, frm_catalogodiasdescanso, frmtipopersonal, frm_CatalgoCuentas, UTFrmEvaluarEmpleados, UTFrmGuardias, frm_ordenesctrlobra, frm_TipoInsumo, frm_SetupAlm,
  frm_ActividadesAnexoPU, UTFrmProgramaDeSalud, frm_Colmena, UTFrmCatalogoCargos, frm_Indirectos,frm_aclaraciones,
  frmDepsincuentas, frm_AsignarFactura, utfrmdepartamentos, UtfrmCatalogoSalarios ,
  frm_anexosCotemar, frm_catalogomodulos, frm_Modulosxusuario,
  frm_ReporteErrores, frmBancos, frm_CambioContrato, frm_SetupPU,
  frm_ImprimeDocumentos;//fin de uses
{$R *.dfm}

function  GetAppVersion:string;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
      GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo (Pt2^) do
      begin
        Result:= ' Ver '+
        IntToStr (HiWord (dwFileVersionMS)) + '.' +
        IntToStr (LoWord (dwFileVersionMS)) + '.' +
        IntToStr (HiWord (dwFileVersionLS)) + '.' +
        IntToStr (LoWord (dwFileVersionLS));
      end;
    finally
      FreeMem (Pt);
    end;
  end;
end;

procedure TfrmInteligent.MosaicoHorizontal1Click(Sender: TObject);
begin
  FRMINTELIGENT.TileModE := tbHorizontal;
  FRMINTELIGENT.Tile;
end;

procedure TfrmInteligent.MosaicoVertical1Click(Sender: TObject);
begin
  FRMINTELIGENT.TileModE := tbVertical;
  FRMINTELIGENT.Tile;
end;

procedure TfrmInteligent.AperturadeComprobacion1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_AbrirComprobacion') Then
   begin
     Application.CreateForm(Tfrm_AbrirComprobacion, frm_AbrirComprobacion);
     frm_AbrirComprobacion.Show;
   end;
end;

procedure TfrmInteligent.AppMessage(var Msg: TMsg; var Handled: Boolean); // TMSg
var
  actual: TWincontrol;
begin
  if Msg.Message = WM_KEYDOWN then
  begin
    Actual := Screen.ActiveControl;
    if (Msg.wParam = 189) or (Msg.wParam = 109) then
    begin
      if (Actual is TCustomEdit) and not (Actual is TCustomMemo) then
        if TCustomEdit(Actual).Tag = 2123 then Msg.wParam := VK_CANCEL;
      if Actual is TDBGrid then
        if (TDBGrid(Actual).Tag = 2123) then
          if (pos('CANTIDAD', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('AVANCE', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('PRECIO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('DURACION', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('VENTA M.N.', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('VENTA DLL', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('GRUPO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('RENGLON', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ORDEN', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('NO. ESTIMACION', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('NO. REPROG.', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('FASE', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('COSTO MN', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('COSTO DLL', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ID', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ANEXO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('PARTIDA', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            or (pos('ID PAGO', uppercase(TDBGrid(Actual).Columns[TDBGrid(Actual).selectedindex].Title.Caption)) > 0)
            then Msg.wParam := VK_CANCEL;
    end;
    if Msg.wParam = VK_RETURN then
    begin
      if (Actual is TRxDBCalcEdit) then
        TRxDBCalcEdit(Actual).value := abs(TRxDBCalcEdit(Actual).value);
    end;
  end;
end;

procedure TfrmInteligent.AreasDepartamentos1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_CatalogoAreas') Then
   begin
     Application.CreateForm(TFrmDepartamentos, frmDepartamentos);
     frmDepartamentos.FormStyle := fsMDIChild;
     frmDepartamentos.visible := True;
     FrmDepartamentos.Show;
   end;
end;

procedure TfrmInteligent.arifaMensual1Click(Sender: TObject);
begin
  try
    frm_TarifaMensual.SetFocus;
  except
    Application.CreateForm(Tfrm_TarifaMensual, frm_TarifaMensual);
    frm_TarifaMensual.show
  end;
end;

function TfrmInteligent.MostrarFormChild(sForm: string): boolean;
var
  i: integer;
begin
  result := false;
  dxBarManager1.PopupMenuLinks[0].PopupMenu:=nil;
  if MDIChildCount <> 0 then
  begin
    for I := 0 to MDIChildCount - 1 do
      if uppercase(MDIChildren[i].Name) = uppercase(sform) then
      begin
        MDIChildren[i].Show;
        result := true;
        break;
      end;
  end;
end;


procedure TfrmInteligent.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Esta seguro que desea salir completamente de la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    application.Terminate
  else abort
end;

procedure TfrmInteligent.FormContextPopup(Sender: TObject; MousePos: TPoint;
(*Procedimiento para asignar el popup de nuevo al formulario prinicipal*)
var
  Handled: Boolean);
begin
  //If MDIChildCount=0 then
    //dxBarManager1.PopupMenuLinks[0].PopupMenu:=inteligentpop;
end;

procedure TfrmInteligent.FormCreate(Sender: TObject);
begin
  Application.OnMessage := AppMessage;
end;

procedure TfrmInteligent.FormShow(Sender: TObject);
var
  WinDir: array[0..MAX_PATH - 1] of char;
  sTipo,validarpath,pathimagen,StringList,rutaaux: string;
  iPos,i: Integer;
  InfoSize, H, RsltLen: Cardinal;
  VersionBlock: Pointer;
  Rslt: PVSFixedFileInfo;
  S: wideString;
  F: TextFile;
  ini: tinifile;
  bueno,bueno2: boolean;
  Query: TZQuery;
begin

//*************************************
  adentro := False;
  InfoSize := GetFileVersionInfoSize(PChar(Application.ExeName), H);
  VersionBlock := AllocMem(InfoSize);
  try
    GetFileVersionInfo(PChar(Application.ExeName), H, InfoSize, VersionBlock);
    VerQueryValue(VersionBlock, '\', Pointer(Rslt), RsltLen);
    Caption  := global_version;
    dxRibbon1Tab1.Active:=True;
  finally
    FreeMem(VersionBlock);
  end;
//  //// TEMRINA LECTURA DE LA IMAGEN..
  frmAcceso.ShowModal;
  if frmAcceso.salir then
  begin
    tiempo.enabled := True;
    abort;
  end;

  permisosUsuarios(100);



  if (global_usuario <> '') and (global_usuario <> 'INTEL-CODE') then
  begin
    global_activo := 'S';
    frmSeleccion2.showModal;
  end
  else
  if global_usuario <> 'INTEL-CODE' then
  begin
    if global_grupo = 'INTEL-CODE' then
    begin
      frmSeleccion2.showModal;
      connection.contrato.Active := False;
      connection.contrato.Params.ParamByName('Contrato').DataType := ftString;
      connection.contrato.Params.ParamByName('Contrato').Value := global_contrato;
      connection.contrato.Open;

      connection.configuracion.Active := False;
      connection.configuracion.Params.ParamByName('Contrato').Value := global_contrato;
      connection.configuracion.Params.ParamByName('Contrato').DataType := ftString;
      connection.configuracion.Open;
      global_convenio := 'C';
      if connection.configuracion.RecordCount = 0 then
        application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema', 'Inteligent', 0)
      else Global_Convenio := connection.configuracion.FieldValues['sIdConvenio']
    end
    else application.Terminate;
  end;
  Licencia := 'Si';

  status.Panels.Items[1].Text  :=   global_nombre;

  status.Panels.Items[3].Text  :=   global_server;
 // status.Panels.Items[5].Text  :=   global_db;

  status.Panels.Items[7].Text  := global_contrato;
  status.Panels.Items[9].Text  := global_convenio;

  HoraI:=Time;
  TimerAlert.Enabled:=True;
  Notificaciones;
  Cotizaciones := TNotificacionesVentas.Create();
end;

procedure TfrmInteligent.adConfiguracionClick(Sender: TObject);
begin
 if not MostrarFormChild('frmSetup') Then
   begin
     Application.CreateForm(TfrmSetup, frmSetup);
     frmSetup.Show;
   end;
  //status.Panels.Items[9].Text := global_convenio;
end;

procedure TfrmInteligent.adContratosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmContratos') Then
   begin
    global_cambioletrero := 10 ;
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmInteligent.adDeptosClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos.') Then
  begin
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
  end;
end;

procedure TfrmInteligent.adUsuariosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmUsuarios') Then
  begin
    Application.CreateForm(TfrmUsuarios, frmUsuarios);
    frmUsuarios.show;
  end;
end;

procedure TfrmInteligent.cPersonalClick(Sender: TObject);
begin
   if not mostrarFormChild('frmPersonal') Then
    begin
       Application.CreateForm(TfrmPersonal, frmPersonal);
       frmPersonal.show;
    end;
end;

procedure TfrmInteligent.cEquiposClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEquipos')Then
     begin
      Application.CreateForm(TfrmEquipos, frmEquipos);
      frmEquipos.show
    end;
end;

procedure TfrmInteligent.Cerrar_TodoClick(Sender: TObject);
(* Creada 31/10/2013 Creo: Rafael Ramirez Tadeo
Descripcion: Procedimiento que sirva para cerrar todas las ventanas que sean mdichild*)
var I:Integer;
begin
  for I := 0 to MDIChildCount - 1 do  //Recorre el ciclo mientras se tenga un mdi
    frmInteligent.MDIChildren[I].Close;  //Cierra el formulario
end;

procedure TfrmInteligent.cEmbarcacionesClick(Sender: TObject);
begin         
  if not mostrarFormChild('frmembarcaciones') Then
  begin
    Application.CreateForm(TfrmEmbarcaciones, frmEmbarcaciones);
    frmembarcaciones.show
  end;
end;

procedure TfrmInteligent.centrado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar) <> 'no' then
    modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmInteligent.CentrosPresupuestales1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmTrinomios') Then
  begin
    Application.CreateForm(TfrmTrinomios, frmTrinomios);
    frmTrinomios.show
  end;
end;

procedure TfrmInteligent.cPlataformasClick(Sender: TObject);
begin       
 if not mostrarFormChild('frmPlataformas') Then
   begin
     Application.CreateForm(TfrmPlataformas, frmPlataformas);
     frmPlataformas.show
   end;
end;

procedure TfrmInteligent.cCuentasClick(Sender: TObject);
begin
 if not mostrarFormChild('frmCuentas') Then
  begin
    Application.CreateForm(TfrmCuentas, frmCuentas);
    frmCuentas.show
  end;
end;

procedure TfrmInteligent.cPendientesClick(Sender: TObject);
begin
  if global_contrato <> '' then
  begin
    try
      stMenu := '';
      if sender is TMenuItem then stMenu := (sender as TMenuItem).Name;
      Application.CreateForm(TfrmPendientesNew, frmPendientesNew);
      frmPendientesNew.show;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Open;
    except
      on e: exception do
      begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ventana Principal', 'Al abrir ventana Mis Pendientes', 0);
      end;
    end;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      frmPendientesNew.tdFechaInicio.Text := Connection.qryBusca.FieldValues['dFechaInicio'];
      if VarIsNull(frmPendientesNew.tdFechaFinal.Text) then
        MessageDlg('No hay fecha final de Convenio!!', mtError, [mbOk], 0)
      else
        frmPendientesNew.tdFechaFinal.Text := Connection.qryBusca.FieldValues['dFechaFinal'];
      frmPendientesNew.tdLaborado.Value := (Date - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
      frmPendientesNew.tdTranscurrido.Value := Connection.qryBusca.FieldValues['dFechaFinal'] - Date;
      if Date <= Connection.qryBusca.FieldValues['dFechaFinal'] then
      begin
        frmPendientesNew.avProyecto.Value := (Connection.qryBusca.FieldValues['dFechaFinal'] - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
        frmPendientesNew.avProyecto.Value := (frmPendientesNew.tdLaborado.Value / frmPendientesNew.avProyecto.Value) * 100;
        frmPendientesNew.avPendiente.Value := 100 - frmPendientesNew.avProyecto.Value
      end
      else
      begin
        frmPendientesNew.avProyecto.Value  := 100;
        frmPendientesNew.avPendiente.Value :=   0;
      end
    end
    else
    begin
      frmPendientesNew.tdFechaInicio.Text := DateToStr(Date);
      if VarIsNull(frmPendientesNew.tdFechaFinal.Text) then
        MessageDlg('NO HAY FECHA FINAL  !!', mtError, [mbOk], 0)
      else
        frmPendientesNew.tdFechaFinal.Text := DateToStr(Date);
      frmPendientesNew.tdLaborado.Value     := 0;
      frmPendientesNew.tdTranscurrido.Value := 0;
      frmPendientesNew.avProyecto.Value     := 0;
      frmPendientesNew.avPendiente.Value    := 0;
    end;
    if frmPendientesNew.tdTranscurrido.Value <= 10 then
    begin
      frmPendientesNew.tdTranscurrido.Font.Style := [fsBold];
      frmPendientesNew.tdTranscurrido.Font.Color :=    clRed;
      frmPendientesNew.tdTranscurrido.Font.Size  := 9;
    end
    else
    begin
      frmPendientesNew.tdTranscurrido.Font.Style := [];
      frmPendientesNew.tdTranscurrido.Font.Color := clWindowText;
      frmPendientesNew.tdTranscurrido.Font.Size  := 8;
    end;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dAvancePonderadoGlobal From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha = :Fecha And sNumeroOrden = ""');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
    Connection.qryBusca.Open;
    frmPendientesNew.avProgramado.Value := 0;
    if Connection.qryBusca.RecordCount > 0 then
      frmPendientesNew.avProgramado.Value := Connection.qryBusca.FieldValues['dAvancePonderadoGlobal'];
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Sum(dAvance)  as dAvance From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha And sNumeroOrden = "" Group By sContrato');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
    Connection.qryBusca.Open;
    frmPendientesNew.avReal.Value := 0;
    if Connection.qryBusca.RecordCount > 0 then
      frmPendientesNew.avReal.Value := Connection.qryBusca.FieldValues['dAvance'];
    if Connection.configuracion.FieldValues['sTipsInicial'] = 'Si' then
    begin
      Application.CreateForm(TfrmTipsDia, frmTipsDia);
      frmTipsDia.show;
    end;
      // Warning 1 y 2
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      if (Connection.qryBusca.FieldValues['dFechaFinal'] - Date) <= 20 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 2');
        connection.zCommand.ExecSQL;
      end
      else
      if (Connection.qryBusca.FieldValues['dFechaFinal'] - Date) <= 30 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 1');
        connection.zCommand.ExecSQL;
      end;
      // Warning 3
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dIdFecha From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_Contrato;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       :=        Date - 1;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount = 0 then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 3');
      connection.zCommand.ExecSQL;
    end;
      // Warning 4
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Count(dIdFecha) as iReportes From reportediario Where sContrato = :Contrato And lStatus <> "Autorizado"');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_Contrato;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount = 0 then
      if Connection.qryBusca.FieldValues['iReportes'] > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 4');
        connection.zCommand.ExecSQL;
      end;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sAutor From inteligent_message where sTipo = "Warning" And lVisible = "Si"');
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      Application.CreateForm(TfrmWarningDia, frmWarningDia);
      frmWarningDia.Show
    end
  end;
end;

procedure TfrmInteligent.cPernoctanClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPernoctan') then
    begin
     Application.CreateForm(TfrmPernoctan, frmPernoctan);
     frmPernoctan.show
   end;
end;

procedure TfrmInteligent.cOrdenesClick(Sender: TObject);
begin
if not mostrarFormChild('frmOrdenesCtrolObra') Then
  begin
     Application.CreateForm(TfrmOrdenesCtrlObra, frmOrdenesCtrlObra);
     frmOrdenesCtrlObra.show;
  end ;
end;

procedure TfrmInteligent.cActividadesClick(Sender: TObject);
begin
 if not mostrarFormChild('frmActividades') Then
  begin
    Application.CreateForm(TfrmActividades, frmActividades);
    frmActividades.show
  end
end;

procedure TfrmInteligent.Cambiarimagendefondo1Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmInteligent.cFasesClick(Sender: TObject);
begin
 if not MostrarFormChild('frmFases') then
   begin
     Application.CreateForm(TfrmFases, frmFases);
     frmFases.show
   end;
end;

procedure TfrmInteligent.Firmantes1Click(Sender: TObject);
begin
  try
    frmfirmas.SetFocus;
  except
    Application.CreateForm(TfrmFirmas, frmFirmas);
    frmfirmas.show
  end;
end;

procedure TfrmInteligent.adTiposMovClick(Sender: TObject);
begin
  if not MostrarFormChild('frmTiposdeMovimiento') then
   begin
     Application.CreateForm(TfrmTiposdeMovimiento, frmTiposdeMovimiento);
     frmTiposdeMovimiento.show
   end;
end;

procedure TfrmInteligent.opMuertoClick(Sender: TObject);
begin
  try
    frmJornadasDiarias.SetFocus;
  except
    Application.CreateForm(TfrmJornadasDiarias, frmJornadasDiarias);
    frmJornadasDiarias.show
  end;
end;

procedure TfrmInteligent.sSeleccionClick(Sender: TObject);
begin
  frmSeleccion2.showModal;
  if Assigned(frmPendientesNew) then
  begin
    try
      if global_PendientesOculto = False then
      begin
        global_PendientesOculto := False;
        frmPendientesNew.Close;
      end;
      if not MostrarFormChild('frmPendientesNew') then
      begin
        Application.CreateForm(TfrmPendientesNew, frmPendientesNew);
        frmPendientesNew.show;
      end;
      frmPendientesNew.tmDescripcion.Text := Connection.contrato.FieldValues['mDescripcion'];
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        frmPendientesNew.tdFechaInicio.Text   :=              Connection.qryBusca.FieldValues['dFechaInicio'];
        frmPendientesNew.tdFechaFinal.Text    :=               Connection.qryBusca.FieldValues['dFechaFinal'];
        frmPendientesNew.tdLaborado.Value     := (Date - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
        frmPendientesNew.tdTranscurrido.Value :=        Connection.qryBusca.FieldValues['dFechaFinal'] - Date;

        if Date <= Connection.qryBusca.FieldValues['dFechaFinal'] then
        begin
          frmPendientesNew.avProyecto.Value := (Connection.qryBusca.FieldValues['dFechaFinal'] - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
          frmPendientesNew.avProyecto.Value := (frmPendientesNew.tdLaborado.Value / frmPendientesNew.avProyecto.Value) * 100;
          frmPendientesNew.avPendiente.Value := 100 - frmPendientesNew.avProyecto.Value
        end
        else
        begin
          frmPendientesNew.avProyecto.Value  := 100;
          frmPendientesNew.avPendiente.Value :=   0;
        end
      end
      else
      begin
        frmPendientesNew.tdFechaInicio.Text := DateToStr(Date);
        frmPendientesNew.tdFechaFinal.Text  := DateToStr(Date);
        frmPendientesNew.tdLaborado.Value     := 0;
        frmPendientesNew.tdTranscurrido.Value := 0;
        frmPendientesNew.avProyecto.Value     := 0;
        frmPendientesNew.avPendiente.Value    := 0;
      end;
      if frmPendientesNew.tdTranscurrido.Value <= 10 then
      begin
        frmPendientesNew.tdTranscurrido.Font.Style := [fsBold];
        frmPendientesNew.tdTranscurrido.Font.Color :=    clRed;
        frmPendientesNew.tdTranscurrido.Font.Size  := 9;
      end
      else
      begin
        frmPendientesNew.tdTranscurrido.Font.Style := [];
        frmPendientesNew.tdTranscurrido.Font.Color := clWindowText;
        frmPendientesNew.tdTranscurrido.Font.Size  :=  8;
      end;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dAvancePonderadoGlobal From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha = :Fecha And sNumeroOrden = ""');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
      Connection.qryBusca.Open;
      frmPendientesNew.avProgramado.Value := 0;
      if Connection.qryBusca.RecordCount > 0 then
        frmPendientesNew.avProgramado.Value := Connection.qryBusca.FieldValues['dAvancePonderadoGlobal'];
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(dAvance) as dAvance From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha And sNumeroOrden = "" Group By sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
      Connection.qryBusca.Open;
      frmPendientesNew.avReal.Value := 0;
      if Connection.qryBusca.RecordCount > 0 then
        frmPendientesNew.avReal.Value := Connection.qryBusca.FieldValues['dAvance'];
      status.Panels.Items[1].Text :=   global_nombre;
      status.Panels.Items[3].Text :=   global_server;
      //status.Panels.Items[5].Text :=       global_db;
      status.Panels.Items[7].Text := global_contrato;
      status.Panels.Items[9].Text := global_convenio;
    except
    end;
  end;
end;

procedure TfrmInteligent.sLoginClick(Sender: TObject);
var
  sPrograma:    string;
  iElemento:   Integer;
  Component: tMenuItem;
  StringList: TStrings;
  S: wideString;
  F:   TextFile;
begin
  adentro := True;
  try
    if Assigned(frmTipsDia) then
      frmTipsDia.Close;
  except
  end;
  global_contrato := '';
  global_usuario  := '';
  connection.zConnection.Disconnect;
  frmAcceso.ShowModal;

  if frmacceso.salir then
  begin
    tiempo.Enabled := True;
    abort;
  end;
  if global_usuario <> '' then
  begin
    global_activo := 'S';
    if global_contrato <> '' then
    begin
      // El usuario pertenece a un contrato ...
      // Se inicializan los Querys al contrato seleccionado ...
      connection.configuracion.Active := False;
      connection.configuracion.SQL.Clear;
      connection.configuracion.SQL.Add('select * from configuracion where sContrato = :contrato');
      connection.configuracion.Params.ParamByName('Contrato').Value    := global_contrato;
      connection.configuracion.Params.ParamByName('Contrato').DataType :=        ftString;
      connection.configuracion.Open;
      global_convenio := 'C';
      if connection.configuracion.RecordCount = 0 then
        application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema', 'Inteligent', 0)
      else
        Global_Convenio := connection.configuracion.FieldValues['sIdConvenio']
    end
    else
     // frmInteligent.permisosUsuarios(100);
    frmSeleccion2.showModal
  end
  else
  begin
    if global_grupo = 'INTEL-CODE' then
      frmSeleccion2.showModal
    else application.Terminate;
  end;
  status.Panels.Items[1].Text :=   global_nombre;
  status.Panels.Items[3].Text :=   global_server;
  //status.Panels.Items[5].Text :=     global_db;
  status.Panels.Items[7].Text := global_contrato;
  status.Panels.Items[9].Text := global_convenio;
  try
    if global_PendientesOculto = False then
    begin
      global_PendientesOculto := False;
      frmPendientesNew.Close;
    end;
    if global_contrato <> '' then
    begin
      Application.CreateForm(TfrmPendientesNew, frmPendientesNew);
      frmPendientesNew.show;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        frmPendientesNew.tdFechaInicio.Text   :=              Connection.qryBusca.FieldValues['dFechaInicio'];
        frmPendientesNew.tdFechaFinal.Text    :=               Connection.qryBusca.FieldValues['dFechaFinal'];
        frmPendientesNew.tdLaborado.Value     := (Date - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
        frmPendientesNew.tdTranscurrido.Value :=        Connection.qryBusca.FieldValues['dFechaFinal'] - Date;
        if Date <= Connection.qryBusca.FieldValues['dFechaFinal'] then
        begin
          frmPendientesNew.avProyecto.Value := (Connection.qryBusca.FieldValues['dFechaFinal'] - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
          frmPendientesNew.avProyecto.Value := (frmPendientesNew.tdLaborado.Value / frmPendientesNew.avProyecto.Value) * 100;
          frmPendientesNew.avPendiente.Value := 100 - frmPendientesNew.avProyecto.Value
        end
        else
        begin
          frmPendientesNew.avProyecto.Value  := 100;
          frmPendientesNew.avPendiente.Value :=   0;
        end
      end
      else
      begin
        frmPendientesNew.tdFechaInicio.Text := DateToStr(Date);
        frmPendientesNew.tdFechaFinal.Text  := DateToStr(Date);
        frmPendientesNew.tdLaborado.Value     := 0;
        frmPendientesNew.tdTranscurrido.Value := 0;
        frmPendientesNew.avProyecto.Value     := 0;
        frmPendientesNew.avPendiente.Value    := 0;
      end;
      if frmPendientesNew.tdTranscurrido.Value <= 10 then
      begin
        frmPendientesNew.tdTranscurrido.Font.Style := [fsBold];
        frmPendientesNew.tdTranscurrido.Font.Color :=    clRed;
        frmPendientesNew.tdTranscurrido.Font.Size  := 9;
      end
      else
      begin
        frmPendientesNew.tdTranscurrido.Font.Style := [];
        frmPendientesNew.tdTranscurrido.Font.Color := clWindowText;
        frmPendientesNew.tdTranscurrido.Font.Size  :=  8;
      end;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dAvancePonderadoGlobal From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha = :Fecha And sNumeroOrden = ""');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
      Connection.qryBusca.Open;
      frmPendientesNew.avProgramado.Value := 0;
      if Connection.qryBusca.RecordCount > 0 then
        frmPendientesNew.avProgramado.Value := Connection.qryBusca.FieldValues['dAvancePonderadoGlobal'];
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(dAvance)  as dAvance From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha And sNumeroOrden = "" Group By sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
      Connection.qryBusca.Open;
      frmPendientesNew.avReal.Value := 0;
      if Connection.qryBusca.RecordCount > 0 then
        frmPendientesNew.avReal.Value := Connection.qryBusca.FieldValues['dAvance'];
      if Connection.configuracion.FieldValues['sTipsInicial'] = 'Si' then
      begin
        Application.CreateForm(TfrmTipsDia, frmTipsDia);
        frmTipsDia.show;
      end;
        // Inicial proceso de creación de warning ...
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "No" Where sTipo = "Warning" And iMessage <= 10');
      connection.zCommand.ExecSQL;
        // Warning 1 y 2
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        if (Connection.qryBusca.FieldValues['dFechaFinal'] - Date) <= 20 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 2');
          connection.zCommand.ExecSQL;
        end
        else
          if (Connection.qryBusca.FieldValues['dFechaFinal'] - Date) <= 30 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 1');
            connection.zCommand.ExecSQL;
          end;
        // Warning 3
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dIdFecha From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_Contrato;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=        Date - 1;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount = 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 3');
        connection.zCommand.ExecSQL;
      end;
        // Warning 4
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Count(dIdFecha) as iReportes From reportediario Where sContrato = :Contrato And lStatus <> "Autorizado"');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_Contrato;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount = 0 then
        if Connection.qryBusca.FieldValues['iReportes'] > 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 4');
          connection.zCommand.ExecSQL;
        end;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sAutor From inteligent_message where sTipo = "Warning" And lVisible = "Si"');
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        Application.CreateForm(TfrmWarningDia, frmWarningDia);
        frmWarningDia.Show
      end
    end;
  except

  end;
  //permisosUsuarios(100);
end;

procedure TfrmInteligent.sSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmInteligent.sAcercaClick(Sender: TObject);
begin
  frmAcerca.showModal
end;

procedure TfrmInteligent.SalidadeEquipodeSeguridad1Click(Sender: TObject);
begin
  try
    frmAsignaciondeEquipoSeg.SetFocus;
  except
    Application.CreateForm(TfrmAsignaciondeEquipoSeg, frmAsignaciondeEquipoSeg);
    frmAsignaciondeEquipoSeg.show;
  end;
end;

procedure TfrmInteligent.CapturadeRecepcindeMateriales1Click(Sender: TObject);
begin
If not MostrarFormChild('frmRecepciondeMateriales') Then
  begin
      Application.CreateForm(TfrmRecepciondeMateriales, frmRecepciondeMateriales);
      frmRecepciondeMateriales.Show;
  end;
end;

procedure TfrmInteligent.CargaProgramaClick(Sender: TObject);
begin
  try
    frmcargaPrograma.SetFocus;
  except
    Application.CreateForm(TfrmcargaPrograma, frmcargaPrograma);
    frmcargaPrograma.Show;
  end;
end;

procedure TfrmInteligent.Cascada1Click(Sender: TObject);
begin
  FRMINTELIGENT.Cascade;
end;

procedure TfrmInteligent.MnuCatalogodeMoClick(Sender: TObject);
begin
If not MostrarFormChild('frmMovtos') Then
  Begin
     Application.CreateForm(TfrmMovtos, frmMovtos);
     frmMovtos.show
  end;
end;

procedure TfrmInteligent.subBasicosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmBasicos') Then
  begin
    Application.CreateForm(TfrmBasicos, frmBasicos);
    frmBasicos.show;
  end;
end;

procedure TfrmInteligent.subBasicos_pClick(Sender: TObject);
begin
  if not MostrarFormChild('frmpaquetebasicos') Then
   begin
    Application.CreateForm(Tfrmpaquetebasicos, frmpaquetebasicos);
    frmpaquetebasicos.show
  end;
end;

procedure TfrmInteligent.subDevMatClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDevolucionEquipoSeguridad')  Then
 begin
    Application.CreateForm(TfrmDevolucionEquipoSeguridad, frmDevolucionEquipoSeguridad);
    frmDevolucionEquipoSeguridad.show;
  end;
end;

procedure TfrmInteligent.SubDevolucindeMaterialClick(Sender: TObject);
begin
  try
    frmDevolucionEquipoSeguridad.SetFocus;
  except
    Application.CreateForm(TfrmDevolucionEquipoSeguridad, frmDevolucionEquipoSeguridad);
    frmDevolucionEquipoSeguridad.Show
  end;
end;

procedure TfrmInteligent.SubfamiliadeProduc1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmSubFamProductos') then
    begin
      Application.CreateForm(TfrmSubFamProductos, frmSubFamProductos);
      frmSubFamProductos.Show;
    end;
end;

procedure TfrmInteligent.subMaterialesClick(Sender: TObject);
begin
 if not MostrarFormChild('frmConsumibles') then
   begin
    Application.CreateForm(TfrmConsumibles, frmConsumibles);
    frmConsumibles.Show;
  end;
end;

procedure TfrmInteligent.SubMnsMaterialesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmReportesAlmacen2') then
  begin
    Application.CreateForm(TfrmReportesAlmacen2, frmReportesAlmacen2);
    frmReportesAlmacen2.Show
  end;
end;

procedure TfrmInteligent.SubOrdenesdeCompraClick(Sender: TObject);
begin
  if not MostrarFormChild('frmReportesAlmacen') then
  begin
    Application.CreateForm(TfrmReportesAlmacen, frmReportesAlmacen);
    frmReportesAlmacen.Show
  end;
end;

procedure TfrmInteligent.SubRepCtrlMatClick(Sender: TObject);
begin
  if not MostrarFormChild('frmHistorialMaterialxEmpleado') then
  begin
    Application.CreateForm(TfrmHistorialMaterialxEmpleado, frmHistorialMaterialxEmpleado);
    frmHistorialMaterialxEmpleado.Show
  end;
end;

procedure TfrmInteligent.subRepEquipSegClick(Sender: TObject);
begin
 if not MostrarFormChild('frmHistorialMaterialxEmpleado') Then
  begin
    Application.CreateForm(TfrmHistorialMaterialxEmpleado, frmHistorialMaterialxEmpleado);
    frmHistorialMaterialxEmpleado.Show;
  end;
end;

procedure TfrmInteligent.SubsidiodeEmpleo1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_SubcidioEmpleo') then
  begin
    Application.CreateForm(Tfrm_SubcidioEmpleo, frm_SubcidioEmpleo);
    frm_SubcidioEmpleo.show
  end;
end;

procedure TfrmInteligent.CatalogodeAspirantes1Click(Sender: TObject);
begin
 if not frmInteligent.MostrarFormChild('frmCatalogoDePostulante') then
   begin
      Application.CreateForm(TFrmCatalogoDePostulante, FrmCatalogoDePostulante);
      FrmCatalogoDePostulante.Show;
   end;
end;

procedure TfrmInteligent.CatalogodeAspirantes2Click(Sender: TObject);
begin
  if not frmInteligent.MostrarFormChild('TFrmCatalogoDePostulante') then
  begin
    Application.CreateForm(TFrmCatalogoDePostulante, FrmCatalogoDePostulante);
    FrmCatalogoDePostulante.Show;
  end;
end;

procedure TfrmInteligent.CatalogodeProveedores1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmProveedores') then
  begin
    Application.CreateForm(TfrmProveedores, frmProveedores);
    frmProveedores.show
  end;
end;

procedure TfrmInteligent.CatalogoErroresClick(Sender: TObject);
begin
 if not MostrarFormChild('frmCatalogoErrores') Then
  begin
    Application.CreateForm(TfrmCatalogoErrores, frmCatalogoErrores);
    frmCatalogoErrores.show;
  end;
end;

procedure TfrmInteligent.catIdiomasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmNuevoIdioma') Then
   begin
    Application.CreateForm(TfrmNuevoIdioma, frmNuevoIdioma);
    frmNuevoIdioma.show;
  end;
end;

procedure TfrmInteligent.CatlogodeDeducciones1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_CatalogoDeDeducciones') then
  begin
    Application.CreateForm(Tfrm_CatalogoDeDeducciones, frm_CatalogoDeDeducciones);
    frm_CatalogoDeDeducciones.show;
  end;
end;

procedure TfrmInteligent.CatlogodeEmpleados1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Empleados') then
  begin
    Application.CreateForm(Tfrm_Empleados, frm_Empleados);
    frm_Empleados.show;
  end;
end;

procedure TfrmInteligent.CatlogodePercepciones1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_CatalogoDePrestaciones') then
  begin
    Application.CreateForm(Tfrm_CatalogoDePrestaciones, frm_CatalogoDePrestaciones);
    frm_CatalogoDePrestaciones.show;
  end;
end;

procedure TfrmInteligent.CatlogodePrestacionesdeLey1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_PrestacionesdeLey') then
  begin
    Application.CreateForm(Tfrm_PrestacionesdeLey, frm_PrestacionesdeLey);
    frm_PrestacionesdeLey.show;
  end;
end;

procedure TfrmInteligent.CatlogodeRegistrosPatronales1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_RegistroPatronales') then
  begin
    Application.CreateForm(Tfrm_RegistrosPatronales, frm_RegistrosPatronales);
    frm_RegistrosPatronales.show;
  end;
end;

procedure TfrmInteligent.opPermisosClick(Sender: TObject);
begin
 // global_orden := '';
  if not MostrarFormChild('frmTramitedePermisos') Then
   begin
    Application.CreateForm(TfrmTramitedePermisos, frmTramitedePermisos);
    frmTramitedePermisos.Show;
  end;
end;

procedure TfrmInteligent.rDiarioClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiarioTurno') Then
    begin
     Application.CreateForm(TfrmDiarioTurno, frmDiarioTurno);
     frmDiarioTurno.show;
    end ;
end;

procedure TfrmInteligent.opValidaClick(Sender: TObject);
begin
  if not MostrarFormChild('frmValida') then
   begin
     Application.CreateForm(TfrmValida, frmValida);
     frmValida.show
   end;
end;

procedure TfrmInteligent.oficmodifClick(Sender: TObject);
begin
 if not MostrarFormChild('frmOrdenesGeneral') Then
  begin
    Application.CreateForm(TfrmOrdenesGeneral, frmOrdenesGeneral);
    frmOrdenesGeneral.Show;
  end;
end;

procedure TfrmInteligent.opAbreClick(Sender: TObject);
begin
  if not mostrarFormChild('frmAbreReporte') then
   begin
     Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
     frmAbreReporte.show
   end;
end;

procedure TfrmInteligent.cConsulta1Click(Sender: TObject);
begin
 if not mostrarFormChild('frmConsultaActividad2') Then
   begin
     Application.CreateForm(TfrmConsultaActividad2, frmConsultaActividad2);
     frmConsultaActividad2.Show
   end;
end;

procedure TfrmInteligent.adReg02Click(Sender: TObject);
begin
  if not MostrarFormChild('frmCalculoAvancesxPartida') Then
   begin
     Application.CreateForm(TfrmCalculoAvancesxPartida, frmCalculoAvancesxPartida);
     frmCalculoAvancesxPartida.show
   end;
end;

procedure TfrmInteligent.opFirmasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmFirmas') then
      begin
        Application.CreateForm(TfrmFirmas, frmFirmas);
        frmFirmas.show;
      end;
end;

procedure TfrmInteligent.cAnexoClick(Sender: TObject);
begin
   if not mostrarFormChild('frmActividadesAnexo2') then
    begin
      Application.CreateForm(TfrmActividadesAnexo2, frmActividadesAnexo2);
      frmActividadesAnexo2.show
    end
end;

procedure TfrmInteligent.cVerificaClick(Sender: TObject);
begin
  if not mostrarFormChild('frmAjustaAnexo') Then
  begin
    Application.CreateForm(TfrmAjustaAnexo, frmAjustaAnexo);
    frmAjustaAnexo.show;
  end;
end;

procedure TfrmInteligent.DepositosBancarios1Click(Sender: TObject);
 begin
  if not mostrarFormchild('frm_Depositoscias') Then
     begin
       Application.CreateForm(Tfrm_Depositoscias, frm_Depositoscias);
       frm_Depositoscias.Show;
     end;
 end;


procedure TfrmInteligent.DetalleGastosxEmpleado1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmDetalleGastosXEmpleados') Then
   begin
     Application.CreateForm(TfrmDetalleGastosXEmpleados, frmDetalleGastosXEmpleados);
     frmDetalleGastosXEmpleados.show
   end;
end;

procedure TfrmInteligent.DiasdeDescanso1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmCatalogoDiasdescanso') Then
   begin
     Application.CreateForm(TfrmCatalogoDiasdescanso, frmCatalogoDiasdescanso);
     frmCatalogoDiasdescanso.show;
   end;
end;

procedure TfrmInteligent.mosaicoverticalClick(Sender: TObject);
begin
  FRMINTELIGENT.TileModE := tbVertical;
  FRMINTELIGENT.Tile;
end;

procedure TfrmInteligent.mosaicohorizontalClick(Sender: TObject);
begin
  FRMINTELIGENT.TileModE := tbHorizontal;
  FRMINTELIGENT.Tile;
end;

procedure TfrmInteligent.cambiarfondoClick(Sender: TObject);
  var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmInteligent.irareportesdiariosClick(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmInteligent.iraestimacionesClick(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.irageneradoresClick(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmInteligent.estiradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar) <> 'no' then
      modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
end;

procedure TfrmInteligent.Evaluarempleados1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmEvaluarEmpleados') then
  begin
     Application.CreateForm(TFrmEvaluarEmpleados, FrmEvaluarEmpleados);
     FrmEvaluarEmpleados.Show;
  end;

end;

procedure TfrmInteligent.irageneradoresdeinformesClick(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmInteligent.centradoClick(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar) <> 'no' then modofondo(fondo, 'bmCenter', detectar)
  else escribeinidefault(detectar, 'bmCenter');
end;

procedure TfrmInteligent.mosaicoClick(Sender: TObject);
{Se comenta para una implementacion posterior no borrar}
begin
  {detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar) <> 'no' then
    modofondo(JvBackground1, 'bmTile', detectar)
    modofondo(Fondo, 'bmTile', detectar)
  else
    escribeinidefault(detectar, 'bmTile');  }
end;

procedure TfrmInteligent.dxAlertButtonClick(Sender: TObject;
  AAlertWindow: TdxAlertWindow; AButtonIndex: Integer);
begin
  if AButtonIndex=0 then
  begin
    application.CreateForm(Tfrm_Notificaciones, frm_Notificaciones);
    frm_Notificaciones.Show;
  end;   
end;

procedure TfrmInteligent.dxBarButton13Click(Sender: TObject);
begin
  global_EdoCuBanc := False;
  if not MostrarFormChild('rfrm_EstadodeCuenta') Then
  begin
    Application.CreateForm(Tfrm_EstadodeCuenta, rfrm_EstadodeCuenta);
    rfrm_EstadodeCuenta.Show;
  end;
end;

procedure TfrmInteligent.dxBarButton14Click(Sender: TObject);
begin
if not MostrarFormChild('frm_actualizaciones') Then
   begin
     Application.CreateForm(Tfrm_actualizaciones, frm_actualizaciones);
     frm_actualizaciones.show;
   end;
end;

procedure TfrmInteligent.dxBarButton15Click(Sender: TObject);
begin
    bandera_formulario:='frm_otrosgastos';
  if not MostrarFormChild('frm_otrosgastos') Then
   begin
     application.CreateForm(Tfrm_otrosgastos, frm_otrosgastos);
     frm_otrosgastos.Show;
   end;
end;

procedure TfrmInteligent.dxBarButton16Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_otrosgastos') Then
   begin
     bandera_formulario:='frm_otrosgastosegresos';
     application.CreateForm(Tfrm_otrosgastos, frm_otrosgastos);
     frm_otrosgastos.Show;
   end;

end;

procedure TfrmInteligent.dxBarButton17Click(Sender: TObject);
begin
if not MostrarFormChild('frm_Gerencial') Then
   begin
     Application.CreateForm(Tfrm_Gerencial, frm_Gerencial);
     frm_Gerencial.showmodal;
   end;
end;

procedure TfrmInteligent.dxBarButton18Click(Sender: TObject);
begin
 if not MostrarFormChild('frm_Notificaciones') Then
   begin
     application.CreateForm(Tfrm_Notificaciones, frm_Notificaciones);
     frm_Notificaciones.Show;
   end;
end;

procedure TfrmInteligent.dxBarButton20Click(Sender: TObject);
begin
     bandera_formulario:='FrmIniciacionSaldo';
  if not MostrarFormChild('FrmIniciacionSaldo') Then
   begin
     Application.CreateForm(TFrmIniciacionSaldo, FrmIniciacionSaldo);
     FrmIniciacionSaldo.ShowModal;
   end;
end;

procedure TfrmInteligent.dxBarButton21Click(Sender: TObject);
begin
   if not MostrarFormChild('frmMedidas') Then
    begin
      Application.CreateForm(TfrmMedidas, frmMedidas);
      frmMedidas.Show;
    end;
end;

procedure TfrmInteligent.dxBarButton22Click(Sender: TObject);
begin
    bandera_formulario:='FrmDevolucionEmpleado';
 if not MostrarFormChild('FrmDevolucionEmpProv') Then
   begin
     Application.CreateForm(TFrmDevolucionEmpProv, FrmDevolucionEmpProv);
     FrmDevolucionEmpProv.ShowModal;
   end;

end;

procedure TfrmInteligent.Tipo_InsumoClick(Sender: TObject);
begin
 if not MostrarFormChild('frmTipoInsumo') Then
  begin
    Application.CreateForm(TfrmTipoInsumo, frmTipoInsumo);
    frmTipoInsumo.show;
  end;
end;

procedure TfrmInteligent.dxBarButton25Click(Sender: TObject);
begin
  if not mostrarFormChild('frmIsometricos') then
  begin
    Application.CreateForm(TfrmIsometricos, frmIsometricos);
    frmIsometricos.show;
  end
end;

procedure TfrmInteligent.dxBarButton29Click(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenes') Then
  begin
    Application.CreateForm(TfrmAlmacenes ,frmAlmacenes);
    frmAlmacenes.Show;
  end;
end;

procedure TfrmInteligent.subMaterialesctrlobraClick(Sender: TObject);
begin
  if not mostrarFormChild('frmConsumibles') then
   begin
     Application.CreateForm(TfrmConsumibles, frmConsumibles);
     frmConsumibles.Show;
   end;
end;

procedure TfrmInteligent.dxBarButton2Click(Sender: TObject);
begin
if not MostrarFormChild('frm_principal') then
   begin
     Application.CreateForm(Tfrm_principal, frm_principal);
     frm_principal.show;
   end;
end;

procedure TfrmInteligent.dxBarButton30Click(Sender: TObject);
begin
  if not MostrarFormChild('frmMedidas') Then
  begin
    Application.CreateForm(TfrmMedidas ,frmMedidas);
    frmMedidas.Show;
  end;
end;

procedure TfrmInteligent.dxBarButton8Click(Sender: TObject);
begin
   If not mostrarFormchild('frmPrecioDivisas') Then
     begin
       Application.CreateForm(TfrmPrecioDivisas, frmPrecioDivisas);
       frmPrecioDivisas.show;
     end;
end;

procedure TfrmInteligent.tbbAutorizaAlmClick(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmInteligent.tbbDesautorizaAlmClick(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmInteligent.mnuBorrarContratoClick(Sender: TObject);
begin
 if not MostrarFormChild('frmCambioContrato') then
   begin
     frmInteligent.mnuBorrarContrato.Tag := 15 ;
     Application.CreateForm(TfrmCambioContrato, frmCambioContrato);
     frmCambioContrato.Show  ;
   end;
end;

procedure TfrmInteligent.dxBarLargeButton10Click(Sender: TObject);
begin
   if not MostrarFormChild('frmImprimeDocumentos') Then
   begin
     Application.CreateForm(TfrmImprimeDocumentos, frmImprimeDocumentos);
     frmImprimeDocumentos.Show;
   end;
end;

procedure TfrmInteligent.dxBarLargeButton11Click(Sender: TObject);
begin
   if not MostrarFormChild('frmOrdenes') Then
   begin
     Application.CreateForm(TfrmOrdenes, frmOrdenes);
     frmOrdenes.Show;
   end;
end;

procedure TfrmInteligent.dxBarLargeButton1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmFacturaElectronica_Lista') Then
   begin
     Application.CreateForm(TfrmFacturaElectronica_Lista, frmFacturaElectronica_Lista);
     frmFacturaElectronica_Lista.Show;
   end;

end;

procedure TfrmInteligent.dxBarLargeButton3Click(Sender: TObject);
begin
  if not MostrarFormChild('frmCatDoctos') then
  begin
    Application.CreateForm(TfrmCatDoctos, frmCatDoctos);
    frmCatDoctos.show;
  end;
end;

procedure TfrmInteligent.dxBarLargeButton5Click(Sender: TObject);
begin
  if not MostrarFormChild('frmcontratos') then
  begin
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmInteligent.dxBarLargeButton6Click(Sender: TObject);
 begin
 if not MostrarFormChild('frmOrdenesCtrlObra') then
   begin
      Application.CreateForm(TfrmOrdenesCtrlObra, frmOrdenesCtrlObra ) ;
      frmOrdenesCtrlObra.show;
   end;
 end;

procedure TfrmInteligent.Cotizaciones1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmAlmCotizacion') then
   begin
    Application.CreateForm(TfrmAlmCotizacion, frmAlmCotizacion);
    frmAlmCotizacion.show
  end
end;

procedure TfrmInteligent.dxbrbtn1Click(Sender: TObject);
begin
if not MostrarFormChild('frm_ReportesFacturas') Then
   begin
     Application.CreateForm(Tfrm_ReportesFacturas, frm_ReportesFacturas);
     frm_ReportesFacturas.Show;
   end;
end;

procedure TfrmInteligent.dxbrbtn2Click(Sender: TObject);
begin
 If not mostrarFormchild('frmformaspago') Then
   begin
     Application.CreateForm(TfrmFormasPago, frmFormasPago);
     frmformaspago.Show;
   end;
end;

procedure TfrmInteligent.aclaracionesClick(Sender: TObject);
begin
if not MostrarFormChild('frmAclaraciones') Then
  begin
    Application.CreateForm(Tfrmaclaraciones ,frmaclaraciones);
    frmaclaraciones.Show;
  end;
end;

procedure TfrmInteligent.dxbrbtnFormaPagoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmformaspago') then
  begin
    Application.CreateForm(Tfrmformaspago, frmformaspago);
    frmformaspago.Show;
  end;
end;

procedure TfrmInteligent.dxbrbtnfrentes1Click(Sender: TObject);
begin

    if not MostrarFormChild('frmordenes') then
    begin
       Application.CreateForm(TfrmOrdenes, frmOrdenes);
       frmOrdenes.show;
    end
end;


procedure TfrmInteligent.lbtAsigModClick(Sender: TObject);
begin
if not MostrarFormChild('frmModulosxUsuario') Then
  begin
    Application.CreateForm(TfrmModulosxusuario, frmModulosxUsuario);
    frmModulosxUsuario.show;
  end;
end;


procedure TfrmInteligent.lbtConfPuClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSetupPU') Then
 begin
    Application.CreateForm(TfrmSetupPu, frmSetupPu);
    frmSetupPu.ShowModal ;
  end;
end;

procedure TfrmInteligent.lbtDeptoClick(Sender: TObject);
begin
  If not mostrarformChild('frmDeptos.') Then
   begin
     Application.CreateForm(TfrmDeptos, frmDeptos);
     frmDeptos.show;
   end;
end;

procedure TfrmInteligent.lbtImportacionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmImportaciondeDatos') then
   begin
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.ShowModal;
   end;
end;

procedure TfrmInteligent.lbtListaClick(Sender: TObject);
begin
  if not MostrarFormChild('frmListadeAsistencia') then
  begin
     Application.CreateForm(TfrmListadeAsistencia, frmListadeAsistencia);
     frmListadeAsistencia.show;
  end;
end;

procedure TfrmInteligent.lbtRepErrorClick(Sender: TObject);
begin
if not MostrarFormChild('frmRepErrores') then
  begin
    Application.CreateForm(TfrmRepErrores, frmRepErrores);
    frmRepErrores.show ;
  end;
end;

procedure TfrmInteligent.dxbrlrgbtnAnalisisClick(Sender: TObject);
begin

if connection.configuracion.FieldValues['sTipoContrato'] = 'Precio Unitario' then
  begin
   If not mostrarFormChild('frmActividadesAnexoPU') Then
    begin
      Application.CreateForm(TfrmActividadesAnexoPU, frmActividadesAnexoPU);
      frmActividadesAnexoPU.show
    end
  end

end;

procedure TfrmInteligent.dxbrlrgbtnFrentesClick(Sender: TObject);
begin
 if not MostrarFormChild('frmordenes') then
    begin
      Application.CreateForm(TfrmOrdenes, frmOrdenes);
      frmOrdenes.show;
    end
end;

procedure TfrmInteligent.dxbrlrgbtnregistrof1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmOrdenes') then
    begin
       Application.CreateForm(TfrmOrdenes, frmOrdenes);
       frmOrdenes.show;
    end;
end;

procedure TfrmInteligent.dxbrlrgbtnregistrof2Click(Sender: TObject);
begin
  if not MostrarFormChild('frmConsumibles') Then
   begin
    Application.CreateForm(TfrmConsumibles, frmConsumibles);
    frmConsumibles.Show;
  end;
end;

procedure TfrmInteligent.dxBtnSalariosClick(Sender: TObject);
begin
if not MostrarFormChild('FrmCatalogoSalarios') Then
  begin
    Application.CreateForm(TFrmCatalogoSalarios, FrmCatalogoSalarios);
    FrmCatalogoSalarios.FormStyle := fsMDIChild;
    FrmCatalogoSalarios.Visible := True;
    FrmCatalogoSalarios.Show;
  end;
end;

procedure TfrmInteligent.dxCatalogoConceptosPUClick(Sender: TObject);
begin


  if connection.configuracion.FieldValues['sTipoContrato'] = 'Precio Unitario' then
  begin
    try
      frmActividadesAnexo2.SetFocus;
    except
      Application.CreateForm(TfrmActividadesAnexo2, frmActividadesAnexo2);
      frmActividadesAnexo2.show
    end
  end
  else
  if connection.configuracion.FieldValues['sTipoContrato'] = 'Precio Unitario x OS' then
  begin
    try
      frmActividadesAnexo.SetFocus;
    except
      Application.CreateForm(TfrmActividadesAnexo, frmActividadesAnexo);
      frmActividadesAnexo.show
    end
  end
end;

procedure TfrmInteligent.dxCatalogoMaterialesPUClick(Sender: TObject);
begin
  if not MostrarFormChild('frmconsumibles') then
  begin
    Application.CreateForm(TfrmConsumibles, frmConsumibles);
    frmConsumibles.Show;
  end;
end;

procedure TfrmInteligent.dxDesvalidacionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmabrereporte') then
  begin
    Application.CreateForm(TfrmAbreReporte, frmAbreReporte);
    frmAbreReporte.show
  end;
end;

procedure TfrmInteligent.dxRibbonBackstageViewGalleryControl1ItemClick(
  Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
{Se comenta para una implementacion posterior}
begin
  //if AItem=tbbSetup1          then tbbSetup.Click;
  //if AItem=tbbCambiaContrato1 then tbbCambiaContrato.Click;
  //if AItem=tbbRepBarco1       then tbbRepBarco.Click;
  //if AItem=tbbEstima1         then tbbEstima.Click;
  //if AItem=tbbFotos1          then tbbFotos.Click;
  //if AItem=tbbRepDiario1      then tbbRepDiario.Click;
  //if AItem=tbbGenera1         then tbbGenera.Click;
  //if AItem=tbbInformes1       then tbbInformes.Click;
  //if AItem=cPendientes1       then cPendientes.Click;
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item10Click(Sender: TObject);
begin
  close;
end;
procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
var pathimagen: string;
  Ini: TiniFile;
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';
  escribeini(detectar, OpenDialog1);
  if leeini(detectar) <> 'no' then
    muestrafondo(fondo, unitmanejofondo.imapatglobal, unitmanejofondo.estadoglobal)
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item7Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
  frmcambiopassword.ShowModal
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item8Click(Sender: TObject);
var
  sPrograma: string;
  iElemento: Integer;
  Component: tMenuItem;
  StringList: TStrings;
  S: wideString;
  F: TextFile;
begin
  adentro := True;
  try
    frmTipsDia.Close;
  except
  end;
  global_contrato := '';
  global_usuario := '';
  connection.zConnection.Disconnect;
  frmAcceso.ShowModal;
  if frmacceso.salir then
  begin
    tiempo.Enabled := True;
    abort;
  end;
  if global_usuario <> '' then
  begin
    global_activo := 'S';
    if global_contrato <> '' then
    begin
      // El usuario pertenece a un contrato ...
      // Se inicializan los Querys al contrato seleccionado ...
      connection.configuracion.Active := False;
      connection.configuracion.SQL.Clear;
      connection.configuracion.SQL.Add('select * from configuracion where sContrato = :contrato');
      connection.configuracion.Params.ParamByName('Contrato').Value    := global_contrato;
      connection.configuracion.Params.ParamByName('Contrato').DataType :=        ftString;
      connection.configuracion.Open;
      global_convenio := 'C';
      if connection.configuracion.RecordCount = 0 then
        application.MessageBox('Precaución: No se encontro el archivo principal de configuración, notifique al Administrador del Sistema', 'Inteligent', 0)
      else
        Global_Convenio := connection.configuracion.FieldValues['sIdConvenio']
    end
    else
     // frmInteligent.permisosUsuarios(100);
    frmSeleccion2.showModal
  end
  else
  if global_grupo = 'INTEL-CODE' then
    frmSeleccion2.showModal
  else
    application.Terminate;
  status.Panels.Items[1].Text :=   global_nombre;
  status.Panels.Items[3].Text :=   global_server;
  //status.Panels.Items[5].Text :=       global_db;
  status.Panels.Items[7].Text := global_contrato;
  status.Panels.Items[9].Text := global_convenio;
  if global_PendientesOculto = False then
  begin
    global_PendientesOculto := False;
    frmPendientesNew.Close;
  end;
  if global_contrato <> '' then
  begin
    Application.CreateForm(TfrmPendientesNew, frmPendientesNew);
    frmPendientesNew.show;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      frmPendientesNew.tdFechaInicio.Text   :=              Connection.qryBusca.FieldValues['dFechaInicio'];
      frmPendientesNew.tdFechaFinal.Text    :=               Connection.qryBusca.FieldValues['dFechaFinal'];
      frmPendientesNew.tdLaborado.Value     := (Date - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
      frmPendientesNew.tdTranscurrido.Value :=        Connection.qryBusca.FieldValues['dFechaFinal'] - Date;
      if Date <= Connection.qryBusca.FieldValues['dFechaFinal'] then
      begin
        frmPendientesNew.avProyecto.Value := (Connection.qryBusca.FieldValues['dFechaFinal'] - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
        frmPendientesNew.avProyecto.Value := (frmPendientesNew.tdLaborado.Value / frmPendientesNew.avProyecto.Value) * 100;
        frmPendientesNew.avPendiente.Value := 100 - frmPendientesNew.avProyecto.Value
      end
      else
      begin
        frmPendientesNew.avProyecto.Value  := 100;
        frmPendientesNew.avPendiente.Value :=   0;
      end
    end
    else
    begin
      frmPendientesNew.tdFechaInicio.Text := DateToStr(Date);
      frmPendientesNew.tdFechaFinal.Text  := DateToStr(Date);
      frmPendientesNew.tdLaborado.Value     := 0;
      frmPendientesNew.tdTranscurrido.Value := 0;
      frmPendientesNew.avProyecto.Value     := 0;
      frmPendientesNew.avPendiente.Value    := 0;
    end;
    if frmPendientesNew.tdTranscurrido.Value <= 10 then
    begin
      frmPendientesNew.tdTranscurrido.Font.Style := [fsBold];
      frmPendientesNew.tdTranscurrido.Font.Color :=    clRed;
      frmPendientesNew.tdTranscurrido.Font.Size  :=        9;
    end
    else
    begin
      frmPendientesNew.tdTranscurrido.Font.Style := [];
      frmPendientesNew.tdTranscurrido.Font.Color := clWindowText;
      frmPendientesNew.tdTranscurrido.Font.Size  :=  8;
    end;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dAvancePonderadoGlobal From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha = :Fecha And sNumeroOrden = ""');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
    Connection.qryBusca.Open;
    frmPendientesNew.avProgramado.Value := 0;
    if Connection.qryBusca.RecordCount > 0 then
      frmPendientesNew.avProgramado.Value := Connection.qryBusca.FieldValues['dAvancePonderadoGlobal'];
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Sum(dAvance)  as dAvance From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha And sNumeroOrden = "" Group By sContrato');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
    Connection.qryBusca.Open;
    frmPendientesNew.avReal.Value := 0;
    if Connection.qryBusca.RecordCount > 0 then
      frmPendientesNew.avReal.Value := Connection.qryBusca.FieldValues['dAvance'];
    if Connection.configuracion.FieldValues['sTipsInicial'] = 'Si' then
    begin
      Application.CreateForm(TfrmTipsDia, frmTipsDia);
      frmTipsDia.show;
    end;
      // Inicial proceso de creación de warning ...
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "No" Where sTipo = "Warning" And iMessage <= 10');
    connection.zCommand.ExecSQL;
      // Warning 1 y 2
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      if (Connection.qryBusca.FieldValues['dFechaFinal'] - Date) <= 20 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 2');
        connection.zCommand.ExecSQL;
      end
      else
      if (Connection.qryBusca.FieldValues['dFechaFinal'] - Date) <= 30 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 1');
        connection.zCommand.ExecSQL;
      end;
      // Warning 3
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dIdFecha From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_Contrato;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
    Connection.qryBusca.Params.ParamByName('Fecha').Value       :=        Date - 1;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount = 0 then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 3');
      connection.zCommand.ExecSQL;
    end;
      // Warning 4
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Count(dIdFecha) as iReportes From reportediario Where sContrato = :Contrato And lStatus <> "Autorizado"');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_Contrato;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount = 0 then
      if Connection.qryBusca.FieldValues['iReportes'] > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE inteligent_message SET lVisible = "Si" Where sTipo = "Warning" And iMessage = 4');
        connection.zCommand.ExecSQL;
      end;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sAutor From inteligent_message where sTipo = "Warning" And lVisible = "Si"');
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      Application.CreateForm(TfrmWarningDia, frmWarningDia);
      frmWarningDia.Show
    end
  end;
  //permisosUsuarios(100);
end;

procedure TfrmInteligent.dxRibbonGalleryItem1Group2Item9Click(Sender: TObject);
begin
  frmSeleccion2.showModal;
  if Assigned(frmPendientesNew) then
  begin
    try
      if global_PendientesOculto = False then
      begin
        global_PendientesOculto := False;
        frmPendientesNew.Close;
      end;
      Application.CreateForm(TfrmPendientesNew, frmPendientesNew);
      frmPendientesNew.show;
      frmPendientesNew.tmDescripcion.Text := Connection.contrato.FieldValues['mDescripcion'];
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        frmPendientesNew.tdFechaInicio.Text   :=              Connection.qryBusca.FieldValues['dFechaInicio'];
        frmPendientesNew.tdFechaFinal.Text    :=               Connection.qryBusca.FieldValues['dFechaFinal'];
        frmPendientesNew.tdLaborado.Value     := (Date - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
        frmPendientesNew.tdTranscurrido.Value :=        Connection.qryBusca.FieldValues['dFechaFinal'] - Date;
        if Date <= Connection.qryBusca.FieldValues['dFechaFinal'] then
        begin
          frmPendientesNew.avProyecto.Value := (Connection.qryBusca.FieldValues['dFechaFinal'] - Connection.qryBusca.FieldValues['dFechaInicio']) + 1;
          frmPendientesNew.avProyecto.Value := (frmPendientesNew.tdLaborado.Value / frmPendientesNew.avProyecto.Value) * 100;
          frmPendientesNew.avPendiente.Value := 100 - frmPendientesNew.avProyecto.Value
        end
        else
        begin
          frmPendientesNew.avProyecto.Value  := 100;
          frmPendientesNew.avPendiente.Value :=   0;
        end
      end
      else
      begin
        frmPendientesNew.tdFechaInicio.Text := DateToStr(Date);
        frmPendientesNew.tdFechaFinal.Text  := DateToStr(Date);
        frmPendientesNew.tdLaborado.Value     := 0;
        frmPendientesNew.tdTranscurrido.Value := 0;
        frmPendientesNew.avProyecto.Value     := 0;
        frmPendientesNew.avPendiente.Value    := 0;
      end;
      if frmPendientesNew.tdTranscurrido.Value <= 10 then
      begin
        frmPendientesNew.tdTranscurrido.Font.Style := [fsBold];
        frmPendientesNew.tdTranscurrido.Font.Color :=    clRed;
        frmPendientesNew.tdTranscurrido.Font.Size  :=        9;
      end
      else
      begin
        frmPendientesNew.tdTranscurrido.Font.Style := [];
        frmPendientesNew.tdTranscurrido.Font.Color := clWindowText;
        frmPendientesNew.tdTranscurrido.Font.Size  :=  8;
      end;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select dAvancePonderadoGlobal From avancesglobales Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha = :Fecha And sNumeroOrden = ""');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
      Connection.qryBusca.Open;
      frmPendientesNew.avProgramado.Value := 0;
      if Connection.qryBusca.RecordCount > 0 then
        frmPendientesNew.avProgramado.Value := Connection.qryBusca.FieldValues['dAvancePonderadoGlobal'];
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(dAvance) as dAvance From avancesglobalesxorden Where sContrato = :Contrato And sIdConvenio = :Convenio And dIdFecha <= :Fecha And sNumeroOrden = "" Group By sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType :=        ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      Connection.qryBusca.Params.ParamByName('Fecha').DataType    :=          ftDate;
      Connection.qryBusca.Params.ParamByName('Fecha').Value       :=            Date;
      Connection.qryBusca.Open;
      frmPendientesNew.avReal.Value := 0;
      if Connection.qryBusca.RecordCount > 0 then
        frmPendientesNew.avReal.Value := Connection.qryBusca.FieldValues['dAvance'];
      status.Panels.Items[1].Text :=   global_nombre;
      status.Panels.Items[3].Text :=   global_server;
      //status.Panels.Items[5].Text :=       global_db;
      status.Panels.Items[7].Text := global_contrato;
      status.Panels.Items[9].Text := global_convenio;
    except
    end;
  end;
end;

procedure TfrmInteligent.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;const ASkinName: string);
(*Creada: 25/09/2013 Creo: Rafael Ramirez Tadeo
Descripcion: Procedimiento creado para darle color al formulario*)
begin
  mInteligent.ColorSchemeName               :=ASkinName;   //Para darle color al ribbon
  dxSkinController1.SkinName                :=ASkinName;   //Para darke color al control del skin
  dxTabbedMDIManager1.LookAndFeel.SkinName  :=ASkinName;   //Para darle color al manager de los tabuladore
  dxDockingManager1.LookAndFeel.SkinName    :=ASkinName;
  cxLookAndFeelController1.SkinName         :=ASkinName;
  dxAlertWindowManager1.LookAndFeel.SkinName:=ASkinName;
  detectar := ExtractFilePath(Application.Exename) + 'image.ini';   //Para tomar la ruta donde se encuentra el ini
  guardaskin(detectar,ASkinName);  //Pasa el valor de la direccion y el valor del skin
end;

procedure TfrmInteligent.dxValidacionClick(Sender: TObject);
begin
  try
    frmValida.SetFocus;
  except
    Application.CreateForm(TfrmValida, frmValida);
    frmValida.show
  end;
end;

procedure TfrmInteligent.optDesautorizaClick(Sender: TObject);
begin
  try
    frmAperturaEstimacionGral.SetFocus;
  except
    Application.CreateForm(TfrmAperturaEstimacionGral, frmAperturaEstimacionGral);
    frmAperturaEstimacionGral.show
  end;
end;

procedure TfrmInteligent.optEstimacionesClick(Sender: TObject);
begin
  stMenu := '';
  if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;
  if not MostrarFormChild('frmestimaciongeneral') then
  begin
    Application.CreateForm(TfrmEstimacionGeneral, frmEstimacionGeneral);
    frmEstimacionGeneral.show
  end;
end;

procedure TfrmInteligent.subFamProductosClick(Sender: TObject);
begin
  try
    frmGrupoFamilias.SetFocus;
  except
    Application.CreateForm(TfrmGrupoFamilias, frmGrupoFamilias);
    frmGrupoFamilias.show
  end;
end;

procedure TfrmInteligent.subHerramientasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmherramientas') then
  begin
    Application.CreateForm(Tfrmherramientas, frmherramientas);
    frmherramientas.show
  end;
end;

procedure TfrmInteligent.subHerramientas_pClick(Sender: TObject);
begin
  if not MostrarFormChild('frmpaqueteherramientas') then
   begin
    Application.CreateForm(Tfrmpaqueteherramientas, frmpaqueteherramientas);
    frmpaqueteherramientas.show
  end;
end;

procedure TfrmInteligent.subIndirectosCatClick(Sender: TObject);
begin
 if not MostrarFormChild('frmIndirectos') Then
   begin
      Application.CreateForm(TfrmIndirectos, frmIndirectos);
      frmIndirectos.Show
   end;
end;

procedure TfrmInteligent.SubKardexMaterialesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMovimientosInsumos') then
  begin
    Application.CreateForm(TfrmMovimientosInsumos, frmMovimientosInsumos);
    frmMovimientosInsumos.Show
  end;
end;

procedure TfrmInteligent.SubKardexMatxParClick(Sender: TObject);
begin
  if not MostrarFormChild('frmConsultaActividad5') then
  begin
    Application.CreateForm(TfrmConsultaActividad5, frmConsultaActividad5);
    frmConsultaActividad5.Show
  end;
end;

procedure TfrmInteligent.SubKardexSalAlmClick(Sender: TObject);
begin
  if not MostrarFormChild('frmReporteSalidasAlmacen') then
  begin
    Application.CreateForm(TfrmReporteSalidasAlmacen, frmReporteSalidasAlmacen);
    frmReporteSalidasAlmacen.Show
  end;
end;

procedure TfrmInteligent.Egresos1Click(Sender: TObject);
begin
  if not mostrarFormChild('frm_CatalogoEgresos') then
     begin
       Application.CreateForm(Tfrm_CatalogoEgresos, frm_CatalogoEgresos);
       frm_CatalogoEgresos.Show;
  end;
end;

procedure TfrmInteligent.Egresos3Click(Sender: TObject);
begin
 if not MostrarFormChild('frm_ProveedoresPendientes') Then
   begin
     Application.CreateForm(Tfrm_ProveedoresPendientes, frm_ProveedoresPendientes);
     frm_ProveedoresPendientes.Show;
   end;
end;

procedure TfrmInteligent.EmisiondeCheques1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Egresos') Then
   begin
     Application.CreateForm(Tfrm_Egresos, frm_Egresos);
     frm_Egresos.Show;
   end;
end;

procedure TfrmInteligent.Empleados1Click(Sender: TObject);
begin
if not MostrarFormChild('frm_empleados') then
   begin
     Application.CreateForm(Tfrm_Empleados, frm_Empleados);
     frm_Empleados.Show;
   end;
end;

procedure TfrmInteligent.EquipodeSeguridad2Click(Sender: TObject);
begin
  try
    frmEquipoSeguridad.SetFocus;
  except
    Application.CreateForm(TfrmEquipoSeguridad, frmEquipoSeguridad);
    frmEquipoSeguridad.Show;
  end;
end;

procedure TfrmInteligent.Equipos1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmConsumibles') then
   begin
    Application.CreateForm(TfrmConsumibles, frmConsumibles);
    frmConsumibles.Show;
  end;
end;

procedure TfrmInteligent.EstadosdeCuentasBancarios1Click(Sender: TObject);
begin
     global_EdoCuBanc := True;
  if not MostrarFormChild('rfrm_EstadodeCuenta') Then
   begin
     Application.CreateForm(Tfrm_EstadodeCuenta, rfrm_EstadodeCuenta);
     rfrm_EstadodeCuenta.Show;
   end;
end;

procedure TfrmInteligent.EstatusDiarioEmpleados1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmcatalogoEstatusEmpleados') then
  begin
    Application.CreateForm(TfrmCatalogoEstatusDiarioEmpleados, frmCatalogoEstatusDiarioEmpleados);
    frmCatalogoEstatusDiarioEmpleados.Show;
  end;
end;

procedure TfrmInteligent.EstatusEmpleados1Click(Sender: TObject);
begin
  if not mostrarFormChild(' frmCatalogoEstatusEmpleados') Then
 begin
    Application.CreateForm(TfrmCatalogoEstatusEmpleados, frmCatalogoEstatusEmpleados);
    frmCatalogoEstatusEmpleados.Show;
  end;
end;

procedure TfrmInteligent.EstatusEquipos1Click(Sender: TObject);
begin
if not MostrarFormChild('frmCatalogoEstatusEquipo') Then
   begin
     Application.CreateForm(TfrmCatalogoEstatusEquipo, frmCatalogoEstatusEquipo);
     frmCatalogoEstatusEquipo.Show;
   end;
end;

procedure TfrmInteligent.Estimaciones3Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.estirado1Click(Sender: TObject);
begin
  detectar := ExtractFilePath(Application.Exename) + 'image.ini'; //extraepath
  if leeini(detectar) <> 'no' then modofondo(fondo, 'bmStretch', detectar)
  else escribeinidefault(detectar, 'bmStretch');
  fondo.Stretch:=True;
end;

procedure TfrmInteligent.adFestivosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiasFestivos') then
   begin
     Application.CreateForm(TfrmDiasFestivos, frmDiasFestivos);
     frmDiasFestivos.show;
   end;
end;

procedure TfrmInteligent.cProgPlaticasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPlaticas') Then
   begin
    Application.CreateForm(TfrmPlaticas, frmPlaticas);
    frmPlaticas.show;
  end;
end;

procedure TfrmInteligent.opComparativo1Click(Sender: TObject);
begin
   if not mostrarFormChild('frmGenerado') then
     begin
       Application.CreateForm(TfrmGenerado, frmGenerado);
       frmGenerado.show
     end;
end;

procedure TfrmInteligent.adTurnosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmTurnos') Then
   begin
    Application.CreateForm(TfrmTurnos, frmTurnos);
    frmTurnos.show;
  end;
end;

procedure TfrmInteligent.adReg03Click(Sender: TObject);
begin
  if not MostrarFormChild('frmProcRegAvFisico') Then
   begin
     Application.CreateForm(TfrmProcRegAvFisico, frmProcRegAvFisico);
     frmProcRegAvFisico.show
   end;
end;

procedure TfrmInteligent.opEstimacionesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmEstimaciones') Then
   begin
    Application.CreateForm(TfrmEstimaciones, frmEstimaciones);
    frmEstimaciones.show
  end;
end;

procedure TfrmInteligent.oPFirmasAlmClick(Sender: TObject);
Begin
    if not MostrarFormChild('frmFirmas') then
      begin
        Application.CreateForm(TfrmFirmas, frmFirmas);
        frmFirmas.show;
      end;
end;

procedure TfrmInteligent.cPaquetesActClick(Sender: TObject);
begin
  if not MostrarFormChild('frmActividadesxGrupo') Then
    begin
     Application.CreateForm(TfrmActividadesxGrupo, frmActividadesxGrupo);
     frmActividadesxGrupo.show
   end;
end;

procedure TfrmInteligent.cPaquetesEqClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPaqueteEquipo') then
  begin
    Application.CreateForm(TfrmPaqueteEquipo, frmPaqueteEquipo);
    frmPaqueteEquipo.show
  end;
end;

procedure TfrmInteligent.cPaquetesPerClick(Sender: TObject);
begin
  if not mostrarFormChild('frmPaquetePersonal') Then
   begin
     Application.CreateForm(TfrmPaquetePersonal, frmPaquetePersonal);
     frmPaquetePersonal.show
   end;
end;

procedure TfrmInteligent.adDistProgramaClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDistribucionPrograma') then
   begin
    Application.CreateForm(TfrmDistribucionPrograma, frmDistribucionPrograma);
    frmDistribucionPrograma.show
  end;
end;

procedure TfrmInteligent.ransferencia1Click(Sender: TObject);
begin
 if not MostrarFormChild('frm_Gastos.SetFocus') then
   begin
     Application.CreateForm(Tfrm_Gastos, frm_Gastos);
     frm_Gastos.Visible := True;
     frm_Gastos.Show;
   end;
end;


procedure TfrmInteligent.razabilidadInsumos1Click(Sender: TObject);
begin

 If not mostrarFormChild('frmMovimientosInsumos') Then
  begin
    Application.CreateForm(TfrmMovimientosInsumos, frmMovimientosInsumos);
    frmMovimientosInsumos.show
  end;
end;

procedure TfrmInteligent.rComparativoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCompara') Then
   begin
     Application.CreateForm(TfrmCompara, frmCompara);
     frmCompara.show;
   end;
end;

procedure TfrmInteligent.cAvContratoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmComparativo') Then
   begin
     Application.CreateForm(TfrmComparativo, frmComparativo);
     frmComparativo.show
   end;
end;

procedure TfrmInteligent.cAvOrdenClick(Sender: TObject);
begin
   if not MostrarFormChild('frmComparativo2') Then
    begin
      Application.CreateForm(TfrmComparativo2, frmComparativo2);
      frmComparativo2.show
    end;
end;

procedure TfrmInteligent.cIsometricosClick(Sender: TObject);
begin
  try
    frmIsometricos.SetFocus;
  except
    Application.CreateForm(TfrmIsometricos, frmIsometricos);
    frmIsometricos.show;
  end
end;

procedure TfrmInteligent.cIsometricosNuevoClick(Sender: TObject);
begin
  If not mostrarFormChild('frmIsometricosNuevo') Then
  begin
     Application.CreateForm(TfrmIsometricosNuevo, frmIsometricosNuevo);
     frmIsometricosNuevo.show;
  end;
end;

procedure TfrmInteligent.Clientes1Click(Sender: TObject);
begin
  //Global_cias := 'Activos' ;
 if not mostrarFormchild('frm_companias') then
    begin
      Application.CreateForm(Tfrm_Companias, frm_Companias);
      frm_Companias.Show;
    end ;
end;

procedure TfrmInteligent.ComponentesxFamilia1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmComponentXFamilia') then
  begin
    Application.CreateForm(TfrmComponentXFamilia, frmComponentXFamilia);
    frmComponentXFamilia.show;
  end;
end;

procedure TfrmInteligent.Configuracion1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmConfiguracionNomina') then
  begin
    Application.CreateForm(TfrmConfiguracionNomina, frmConfiguracionNomina);
    frmConfiguracionNomina.show;
  end;
end;

procedure TfrmInteligent.ConfiguraciondeContabilidad1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_ConfiguracionCont') Then
    begin
      Application.CreateForm(Tfrm_ConfiguracionCont, frm_ConfiguracionCont);
      frm_ConfiguracionCont.show;
  end;
end;

procedure TfrmInteligent.ConfiguracionRH1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmConfiguracionRH') then
   begin
      Application.CreateForm(TfrmConfiguracionRH, frmConfiguracionRH);
      frmConfiguracionRH.show;
   end;
end;

procedure TfrmInteligent.configuracion_almacenClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSetupAlm') Then
 begin
    Application.CreateForm(TfrmSetupAlm, frmSetupAlm);
    frmSetupAlm.ShowModal ;
  end;
end;

procedure TfrmInteligent.ConsultadeEquipodeSeguridad1Click(Sender: TObject);
begin
  try
    frmHistorialMaterialxEmpleado.SetFocus;
  except
    Application.CreateForm(TfrmHistorialMaterialxEmpleado, frmHistorialMaterialxEmpleado);
    frmHistorialMaterialxEmpleado.Show;
  end;
end;

procedure TfrmInteligent.ControldeGuardias1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmEmpleadosGuardias') Then
  begin
    Application.CreateForm(TfrmEmpleadosGuardias, frmEmpleadosGuardias);
    frmEmpleadosGuardias.show;
  end;
end;

procedure TfrmInteligent.cGruposIsomClick(Sender: TObject);
begin
  if not MostrarFormChild('frmIsometricosGrupos') then
  begin
    Application.CreateForm(TfrmIsometricosGrupos, frmIsometricosGrupos);
    frmIsometricosGrupos.show;
  end;
end;

procedure TfrmInteligent.ChartProClick(Sender: TObject);
begin
  try
    FIntelChart.SetFocus;
  except
    Application.CreateForm(TIntelChart, FIntelChart);
    FIntelChart.show;
  end;
end;

procedure TfrmInteligent.Firmantes3Click(Sender: TObject);
begin
  if not MostrarFormChild('frmFirmas') then
  begin
    Application.CreateForm(TfrmFirmas, frmFirmas);
    frmfirmas.show
  end;
end;

procedure TfrmInteligent.opTiemposMClick(Sender: TObject);
begin
  if not MostrarFormChild('frmReportePeriodo') Then
   begin
     Application.CreateForm(TfrmReportePeriodo, frmReportePeriodo);
     frmReportePeriodo.show
   end;
end;

procedure TfrmInteligent.qComentariosClick(Sender: TObject);
begin
  if not mostrarFormChild('frmBuscaComentarios') Then
    begin
      Application.CreateForm(TfrmBuscaComentarios, frmBuscaComentarios);
      frmBuscaComentarios.show
    end;
end;

procedure TfrmInteligent.cConveniosClick(Sender: TObject);
begin
  if not mostrarFormChild('frmReprogramacion') Then
   begin
     Application.CreateForm(TfrmReprogramacion, frmReprogramacion);
     frmReprogramacion.show
   end;
end;

procedure TfrmInteligent.JvAppEvents1ActiveControlChange(Sender: TObject);
begin
  self.Caption := sender.ClassName;
end;

procedure TfrmInteligent.LocalidadesEducativas1Click(Sender: TObject);
begin
if not MostrarFormChild('frmcatalogolocalidad_academico') then
   begin
     Application.CreateForm(Tfrmcatalogolocalidad_academico, frmcatalogolocalidad_academico);
     frmcatalogolocalidad_academico.show;
   end;
end;

procedure TfrmInteligent.Marcas1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmMarcasxSubFam') Then
   Begin
     Application.CreateForm(TfrmMarcasxSubFam, frmMarcasxSubFam);
     frmMarcasxSubFam.showModal;
   end;
end;

procedure TfrmInteligent.Materiales1Click(Sender: TObject);
begin
 if not mostrarFormChild('frmReportesAlmacen2') Then
  begin
    Application.CreateForm(TfrmReportesAlmacen2, frmReportesAlmacen2);
    frmReportesAlmacen2.show
  end;
end;

procedure TfrmInteligent.SpeedItem2Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmInteligent.SpeedItem3Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmInteligent.SpeedItem5Click(Sender: TObject);
begin
  qComentarios.Click
end;

procedure TfrmInteligent.SpeedItem6Click(Sender: TObject);
begin
  cConsulta4.Click
end;

procedure TfrmInteligent.SpeedItem7Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.SpeedItem12Click(Sender: TObject);
begin
  //opOrdenCam.Click
end;

procedure TfrmInteligent.SpeedItem11Click(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmInteligent.SpeedItem14Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmInteligent.SpeedItem10Click(Sender: TObject);
begin
  opComparativo1.Click
end;


procedure TfrmInteligent.cRecursosClick(Sender: TObject);
begin
  if not mostrarFormChild('frmrecursosxanexonuevos') Then
   begin
     Application.CreateForm(Tfrmrecursosxanexonuevos, frmrecursosxanexonuevos);
     frmrecursosxanexonuevos.show;
   end;
end;

procedure TfrmInteligent.opProyeccionClick(Sender: TObject);
begin
if not MostrarFormChild('frmProyeccion2') Then
  begin
    Application.CreateForm(TfrmProyeccion2, frmProyeccion2);
    frmProyeccion2.show;
  end;
end;


procedure TfrmInteligent.adSqlClick(Sender: TObject);
begin
  if not MostrarFormChild('frmSqlManager') Then
   begin
     Application.CreateForm(TfrmSqlManager, frmSqlManager);
     frmSqlManager.show;
   end;
end;

procedure TfrmInteligent.opSQLAnexoClick(Sender: TObject);
begin
if not mostrarFormChild('frmImportaciondeDatos') Then
  begin
    Application.CreateForm(TfrmImportaciondeDatos, frmImportaciondeDatos);
    frmImportaciondeDatos.ShowModal;
  end;
end;

procedure TfrmInteligent.cFactorCostoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmFactordeCosto') Then
   begin
    Application.CreateForm(TfrmFactordeCosto, frmFactordeCosto);
    frmFactordeCosto.show;
  end;
end;

procedure TfrmInteligent.menuExtraPaneItemClick(Sender: TObject;AIndex: Integer);
begin
  if AIndex=0 then sLogin.Click;
end;

procedure TfrmInteligent.mnCopiarParametrosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmcopiaparametros') Then
  begin
    Application.CreateForm(TFrmcopiaparametros, frmcopiaparametros);
    frmcopiaparametros.show;
  end;
end;

procedure TfrmInteligent.MnsCapAviEmbClick(Sender: TObject);
begin
  try
    frmEntradaAnex.SetFocus;
  except
    Application.CreateForm(TfrmEntradaAnex, frmEntradaAnex);
    frmEntradaAnex.Show
  end;
end;

procedure TfrmInteligent.MnsCapRecMatClick(Sender: TObject);
begin
  try
     frmRecepciondeMateriales.SetFocus;
  except
    Application.CreateForm(TfrmRecepciondeMateriales, frmRecepciondeMateriales);
    frmRecepciondeMateriales.Show
  end;
end;

procedure TfrmInteligent.MnsCaptdeReqClick(Sender: TObject);
begin
  if not MostrarFormChild('frmRequisicionPerf') then
  begin
    Application.CreateForm(TfrmRequisicionPerf, frmRequisicionPerf);
    frmRequisicionPerf.Show
  end;
end;

procedure TfrmInteligent.MnsCaptOrdComClick(Sender: TObject);
begin
 try
    frmPedidos.SetFocus;
 except
    Application.CreateForm(TfrmPedidos, frmPedidos);
    frmPedidos.Show
  end;
end;

procedure TfrmInteligent.MnsEntradasAlmacenClick(Sender: TObject);
begin
  if not MostrarFormChild('frmEntradaAlmacen') then
  begin
    Application.CreateForm(TfrmEntradaAlmacen, frmEntradaAlmacen);
    frmEntradaAlmacen.Show
  end;
end;

procedure TfrmInteligent.MnsProveedoresClick(Sender: TObject);
begin
  if not MostrarFormChild('frmProveedores') then
  begin
    Application.CreateForm(TfrmProveedores, frmProveedores);
    frmProveedores.Show
  end;
end;

procedure TfrmInteligent.MnsSalidasAlmacenClick(Sender: TObject);
begin
  try
    frmSalidaAlmacen.SetFocus;
  except
    Application.CreateForm(TfrmSalidaAlmacen, frmSalidaAlmacen);
    frmSalidaAlmacen.Show
  end;
end;

procedure TfrmInteligent.geAvFiFinClick(Sender: TObject);
begin
  try
     frmAvancesFinancieros.SetFocus;
  except
    Application.CreateForm(TfrmAvancesFinancieros, frmAvancesFinancieros);
    frmAvancesFinancieros.show
  end;
end;

procedure TfrmInteligent.Generaciondeinformes2Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmInteligent.Generadores2Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmInteligent.adImportarClick(Sender: TObject);
begin
 if not MostrarFormChild('frmSqlImportar') Then
   begin
    Application.CreateForm(TfrmSqlImportar, frmSqlImportar);
    frmSqlImportar.show;
  end;
end;

procedure TfrmInteligent.adExportarClick(Sender: TObject);
begin
if not MostrarFormChild('frmSqlExportar') Then
  begin
    Application.CreateForm(TfrmSqlExportar, frmSqlExportar);
    frmSqlExportar.show;
  end;
end;

procedure TfrmInteligent.adResidenciasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmResidencias') Then
   begin
    Application.CreateForm(TfrmResidencias, frmResidencias);
    frmResidencias.show;
  end;
end;

procedure TfrmInteligent.adProgramasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmProgramas') Then
   begin
    Application.CreateForm(TfrmProgramas, frmProgramas);
    frmProgramas.show;
  end;
end;

procedure TfrmInteligent.adGruposClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGrupos') Then
   begin
    Application.CreateForm(TfrmGrupos, frmGrupos);
    frmGrupos.show;
  end;
end;

procedure TfrmInteligent.adGrupoPClick(Sender: TObject);
begin
  if not MostrarFormChild('frmGruposxPrograma') Then
  begin
    Application.CreateForm(TfrmGruposxPrograma, frmGruposxPrograma);
    frmGruposxPrograma.show;
  end;
end;

procedure TfrmInteligent.opProgramacionClick(Sender: TObject);
begin
  If not mostrarFormChild('frmPersonalProgramado') Then
  begin
    Application.CreateForm(TfrmPersonalProgramado, frmPersonalProgramado);
    frmPersonalProgramado.show;
  end;
end;

procedure TfrmInteligent.gePersonalProgClick(Sender: TObject);
begin
  stMenu := '';
  if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;
  if not MostrarFormChild('frmPersonalConsolidado') then
  begin
    Application.CreateForm(TfrmPersonalConsolidado, frmPersonalConsolidado);
    frmPersonalConsolidado.show;
  end;
end;

procedure TfrmInteligent.GerencialBarco1Click(Sender: TObject);
begin
  try
     frmOpcionesGerencial.SetFocus;
  except
    Application.CreateForm(TfrmOpcionesGerencial, frmOpcionesGerencial);
    frmOpcionesGerencial.showModal;
  end;
end;

procedure TfrmInteligent.GraficadorClick(Sender: TObject);
begin
  try
    frmGraficador.SetFocus;
  except
    Application.CreateForm(TfrmGraficador, frmGraficador);
    frmGraficador.show;
  end;
end;

procedure TfrmInteligent.adUsuariosCClick(Sender: TObject);
begin
 if not MostrarFormChild('frmContratosxUsuario') Then
   begin
    Application.CreateForm(TfrmContratosxUsuario, frmContratosxUsuario);
    frmContratosxUsuario.show;
  end;
end;

procedure TfrmInteligent.grPenasRetClick(Sender: TObject);
begin
  try
    stMenu := '';
    if sender is TMenuItem then
      stMenu := (sender as TMenuItem).Name;
    if not MostrarFormChild('frmRetencionesyPenas') then
    begin
      Application.CreateForm(TfrmRetencionesyPenas, frmRetencionesyPenas);
      frmRetencionesyPenas.showModal;
    end;
  except
    on e: exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ventana Principal', 'Al abrir ventana Reportes Diarios', 0);
    end;
  end;
end;

procedure TfrmInteligent.GrupodeEgresos1Click(Sender: TObject);
begin
  if not mostrarFormChild('frm_GrupodeEgresos') then
    begin
      Application.CreateForm(Tfrm_GrupodeEgresos, frm_GrupodeEgresos);
      frm_GrupodeEgresos.Show;
    end;
end;

procedure TfrmInteligent.GuardarNmina1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Nomina_GuardarNomina, frm_Nomina_GuardarNomina);
  frm_Nomina_GuardarNomina.Show;
end;

procedure TfrmInteligent.Guardias1Click(Sender: TObject);
begin
 If not MostrarFormChild('FrmGuardias') Then
 begin
    Application.CreateForm(TFrmGuardias, FrmGuardias);
    FrmGuardias.show;
  end;
end;

procedure TfrmInteligent.HistoricodeEgresos1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_ProveedoresPendientes') Then
   begin
     Application.CreateForm(Tfrm_ProveedoresPendientes, frm_ProveedoresPendientes);
     frm_ProveedoresPendientes.Show;
   end;
end;

procedure TfrmInteligent.HorarioLabores1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmcatalogohorariolabores') Then
   begin
     Application.CreateForm(TfrmCatalogoHorarioLabores, frmcatalogohorariolabores);
     frmcatalogohorariolabores.Show;
   end;
end;

procedure TfrmInteligent.cConsulta4Click(Sender: TObject);
begin
  if not mostrarFormChild('frmConsultaActividad4') then
    begin
      Application.CreateForm(TfrmConsultaActividad4, frmConsultaActividad4);
      frmConsultaActividad4.show
  end;
end;

procedure TfrmInteligent.adImportarOkClick(Sender: TObject);
begin
  if not MostrarFormChild('frmImportarDiarios') Then
   begin
    Application.CreateForm(TfrmImportarDiarios, frmImportarDiarios);
    frmImportarDiarios.show;
  end;
end;

procedure TfrmInteligent.SpeedItem4Click0(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmInteligent.SpeedItem15Click(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmInteligent.SpeedItem16Click(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmInteligent.SpeedItem17Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmInteligent.SpeedItem16Click0(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmInteligent.ablasIMSS1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_TablaIMSS') then
  begin
    Application.CreateForm(Tfrm_TablaIMSS, frm_TablaIMSS);
    frm_TablaIMSS.show
  end;
end;

procedure TfrmInteligent.AbrirNmina1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Nomina_AbrirNomina') then
  begin
    Application.CreateForm(Tfrm_Nomina_AbrirNomina, frm_Nomina_AbrirNomina);
    frm_Nomina_AbrirNomina.show
  end;
end;

procedure TfrmInteligent.AccesoObraClick(Sender: TObject);
begin
//<ROJAS>
  stMenu := '';
  if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;

  if not MostrarFormChild('frmControlDirecto') then
  begin
    Application.CreateForm(TfrmControlDirecto, frmControlDirecto);
    frmControlDirecto.show;
  end;
end;

procedure TfrmInteligent.AcoplarDesacoplarClick(Sender: TObject);
(*Creada: 25/09/213 Creo;Rafael Ramirez Tadeo
Descripcion: Procedimiento para acoplar/desacoplara todas las ventas del formulario*)
begin
  if dxTabbedMDIManager1.Active then   //Si el componente tiene activa la propiedad
    dxTabbedMDIManager1.Active    := false   //Desacopla las ventanas
  else dxTabbedMDIManager1.Active := True; //Si esta desactivado las acopla al mdi
end;

procedure TfrmInteligent.CalculoRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el cálculo de una renuncia.');
end;

procedure TfrmInteligent.CalculoDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se hizo el calculo de un despido');
end;

procedure TfrmInteligent.adReg04Click(Sender: TObject);
begin
 if not MostrarFormChild('frmCalculoAvancesPaquetes') Then
   begin
     Application.CreateForm(TfrmCalculoAvancesPaquetes, frmCalculoAvancesPaquetes);
     frmCalculoAvancesPaquetes.show
   end;
end;

procedure TfrmInteligent.opValidaEstClick(Sender: TObject);
begin
if not MostrarFormChild('frmValidaEstimacion') Then
  begin
    Application.CreateForm(TfrmValidaEstimacion, frmValidaEstimacion);
    frmValidaEstimacion.show
  end;
end;

procedure TfrmInteligent.OrdenesdeCompra1Click(Sender: TObject);
begin
  if not mostrarFormChild('frmReportesAlmacen') Then
   begin
     Application.CreateForm(TfrmReportesAlmacen, frmReportesAlmacen);
     frmReportesAlmacen.show
   end;
end;

procedure TfrmInteligent.Organizacin1Click(Sender: TObject);
begin
  If not mostrarFormChild('frm_nucOrganizacion') Then
   begin
      Application.CreateForm(Tfrm_nucOrganizacion, frm_nucOrganizacion);
      frm_nucOrganizacion.show;
   end;
end;

procedure TfrmInteligent.PeriodosdePago1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmCatalogoPeriodosPago') Then
   begin
    Application.CreateForm(TfrmCatalogoPeriodosPago, frmCatalogoPeriodosPago);
    frmCatalogoPeriodosPago.show;
  end;
end;

procedure TfrmInteligent.permisosUsuarios( bandera : byte );
var
  iElemento : Integer;
  sPrograma :  string;
  Component : TdxBarLargeButton;
  Component1:      TdxBarButton;
  xx        : byte ;
  gener     : TComponent ;
begin
 if global_Grupo <> 'INTEL-CODE' then
  Begin
 for iElemento := 0 to frmInteligent.ComponentCount - 1 do
  begin
    if frmInteligent.Components[iElemento].ClassName = 'TdxBarLargeButton' then
     begin
       Component := frmInteligent.Components[iElemento] as TdxBarLargeButton;
       Component.Enabled := False ;
     end;
    if frmInteligent.Components[iElemento].ClassName = 'TdxBarButton' then
     begin
       Component1 := frmInteligent.Components[iElemento] as TdxBarButton;
       Component1.Enabled := False ;
     end;
   end ;
      //se consulta el id del idioma de acuerdo al seleccionado en el acceso;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sIdIdioma From idiomas Where sDescripcion = :Idioma');
      Connection.qryBusca.Params.ParamByName('Idioma').DataType :=      ftString;
      Connection.qryBusca.Params.ParamByName('Idioma').Value    := global_idiomaDesc;
      Connection.qryBusca.Open;
      global_idioma :=  global_idiomaDesc;
      if bandera = 100 then
         Connection.qryBusca2.Active := False ;
         Connection.qryBusca2.SQL.Clear ;
         Connection.qryBusca2.SQL.Text := ('select p.sIdPrograma, p.sDescripcion, u.sDerechos From programas p inner JOIN gruposxprograma u ON ' +
                                           '(u.sIdPrograma = p.sIdPrograma and u.sIdGrupo = :Grupo) and p.sIdIdioma= :Idioma ') ;
         Connection.qryBusca2.Params.ParamByName('Grupo').value    := global_grupo;
         Connection.qryBusca2.Params.ParamByName('Idioma').Value   := 'ESP';
         Connection.qryBusca2.Open ;
         if Connection.qryBusca2.RecordCount >0 Then
         while not Connection.qryBusca2.Eof do
          begin
            begin
                gener := frmInteligent.FindComponent(Connection.QryBusca2.FieldByName('sIdPrograma').AsString) ;
             if Assigned (gener) Then
                 begin
                       sPrograma := gener.GetNamePath ;
                       if gener.ClassName = 'TdxBarLargeButton' then
                          begin
                            Component := gener as TdxBarLargeButton;
                            Component.Caption := connection.QryBusca2.FieldValues['sDescripcion'] ;
                            Component.Enabled := True
                          end;

                          if gener.ClassName = 'TdxBarButton' then
                          begin
                            Component1 := gener as TdxBarButton;
                            Component1.Caption := connection.QryBusca2.FieldValues['sDescripcion'] ;
                            Component1.Enabled := True ;
                          end;
                 end;
            end;
            Connection.QryBusca2.Next ;
          end;
 end;
end;

procedure TfrmInteligent.opOrdenCamClick(Sender: TObject);
begin
  if not MostrarFormChild('frmordendecambio') then
  begin
    Application.CreateForm(TfrmOrdendeCambio, frmOrdendeCambio);
    frmOrdendeCambio.show
  end;
end;

procedure TfrmInteligent.opAvisodeEmbClick(Sender: TObject);
begin
 if not MostrarFormChild('frmEntradaAnex') Then
  begin
    Application.CreateForm(TfrmEntradaAnex, frmEntradaAnex);
    frmEntradaAnex.Show;
  end;
end;

procedure TfrmInteligent.cProveedoresClick(Sender: TObject);
begin
  If not MostrarFormChild('frmProveedores') Then
  begin
    Application.CreateForm(TfrmProveedores, frmProveedores);
    frmProveedores.show;
  end;
end;

procedure TfrmInteligent.SubAdministradorClick(Sender: TObject);
begin
  if uppercase(Global_Usuario) = 'ADMIN' then
   begin
    if not mostrarFormChild('FrmManagerDbUser') then
     begin
       application.CreateForm(TFrmManagerDbUser, FrmManagerDbUser);
       FrmManagerDbUser.Show;
     end
   end
   else
     MessageDlg('Usted no Puede Acceder a Este Modulo.', mtInformation, [mbOk], 0);
end;

procedure TfrmInteligent.subAsigAlmContratosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenesPorContrato') then
  begin
    Application.CreateForm(TfrmAlmacenesPorContrato, frmAlmacenesPorContrato);
    frmAlmacenesPorContrato.Show;
  end;
end;

procedure TfrmInteligent.subAsigAlmUsuariosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmalmacenesporusuario') then
  begin
    Application.CreateForm(Tfrmalmacenesporusuario, frmalmacenesporusuario);
    frmalmacenesporusuario.show;
  end;
end;

procedure TfrmInteligent.subAsigMatPersonalClick(Sender: TObject);
begin
 if not mostrarformChild('frmInsumoxPersonal') Then
  begin
    Application.CreateForm(TfrmInsumoxPersonal, frmInsumoxPersonal);
    frmInsumoxPersonal.show
  end;
end;

procedure TfrmInteligent.SubAsigMatxPerClick(Sender: TObject);
begin
  if not MostrarFormChild('frmInsumoxPersonal') then
  begin
    Application.CreateForm(TfrmInsumoxPersonal, frmInsumoxPersonal);
    frmInsumoxPersonal.Show
  end;
end;

procedure TfrmInteligent.SpeedItem19Click(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmInteligent.SpeedItem20Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmInteligent.cConsulta5Click(Sender: TObject);
begin
  if not mostrarFormChild('frmConsultaActividad3') Then
   begin
    Application.CreateForm(TfrmConsultaActividad3, frmConsultaActividad3);
    frmConsultaActividad3.show
  end;
end;

procedure TfrmInteligent.cConsulta6Click(Sender: TObject);
begin
  if not MostrarFormChild('frmConsultaxDescripcion') Then
    begin
      Application.CreateForm(TfrmConsultaxDescripcion, frmConsultaxDescripcion);
      frmConsultaxDescripcion.show
    end;              
end;

procedure TfrmInteligent.SpeedItem13Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmInteligent.SpeedItem10Click0(Sender: TObject);
begin
  opComparativo1.Click
end;

procedure TfrmInteligent.SpeedItem22Click(Sender: TObject);
begin
  cConsulta1.Click
end;

procedure TfrmInteligent.cConsulta3Click(Sender: TObject);
begin
  if not MostrarFormChild('frmConsultaActividad') Then
   begin
     Application.CreateForm(TfrmConsultaActividad, frmConsultaActividad);
     frmConsultaActividad.show
   end;
end;

procedure TfrmInteligent.adExportar2Click(Sender: TObject);
begin
  if not MostrarFormChild('frmExportaGeneral') Then
   begin
     Application.CreateForm(TfrmExportaGeneral, frmExportaGeneral);
     frmExportaGeneral.show;
   end;
end;

procedure TfrmInteligent.cConsulta7Click(Sender: TObject);
begin
  try
    frmActividadesAnexo.SetFocus;
  except
    Application.CreateForm(TfrmActividadesAnexo, frmActividadesAnexo);
    frmActividadesAnexo.show
  end;
end;

procedure TfrmInteligent.FormResize(Sender: TObject);
begin
  if frmInteligent.Height<600 then frmInteligent.Height:=600;
  if frmInteligent.Width<800 then frmInteligent.Width:=800;
end;

procedure TfrmInteligent.imgKardex1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmKardex') then
  begin
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.show
  end;
end;

procedure TfrmInteligent.imgKardexClick(Sender: TObject);
begin
  if not MostrarFormChild('frmKardex') then
  begin
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.show
  end;
end;

procedure TfrmInteligent.ImportaciondeDatos1Click(Sender: TObject);
begin
  If not MostrarFormChild('FrmImportacionDatosRH') Then
   begin
    Application.CreateForm(TFrmImportacionDatosRH, FrmImportacionDatosRH);
    FrmImportacionDatosRH.ShowModal;
  end;
end;

procedure TfrmInteligent.ImpresionDespidoExecute(Sender: TObject);
begin
  ShowMessage('Se imprimió un despido.');
end;

procedure TfrmInteligent.ImpresionRenunciaExecute(Sender: TObject);
begin
  ShowMessage('Se imprimio una renuncia');
end;

procedure TfrmInteligent.ImprimirContratos1Click(Sender: TObject);
begin
    stMenu := '';
 if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;
if not MostrarFormChild('frmImprimeContratos') Then
   begin
    Application.CreateForm(TfrmImprimeContratos, frmImprimeContratos);
    frmImprimeContratos.show;
  end;
end;

procedure TfrmInteligent.InformedeSincronizado1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmInformeSincronizacion') then
    begin
     Application.CreateForm(TfrmInformeSincronizacion, frmInformeSincronizacion);
     frmInformeSincronizacion.show;
  end;
end;

procedure TfrmInteligent.Ingresos2Click(Sender: TObject);
begin
 if not MostrarFormChild('frm_ReportesIngresoscias') Then
   begin
     Application.CreateForm(Tfrm_ReportesIngresoscias, frm_ReportesIngresoscias);
     frm_ReportesIngresoscias.Show;
   end;
end;

procedure TfrmInteligent.InstitucionesEducativas1Click(Sender: TObject);
begin
if not MostrarFormChild('frmcatalogoentidadeseducativas') Then
   begin
     Application.CreateForm(Tfrmcatalogoentidadeseducativas, frmcatalogoentidadeseducativas);
     frmcatalogoentidadeseducativas.show;
  end;
end;

procedure TfrmInteligent.inteligentpopPopup(Sender: TObject);
begin
  cambiarimagendefondo1.Enabled     := TRUE;
  irareportesdiarios1.ENABLED       := TRUE;
  iraestimaciones1.ENABLED          := TRUE;
  irageneradores1.ENABLED           := TRUE;
  irageneradoresdeinformes1.ENABLED := TRUE;
  cambiarmododefondo1.Enabled       := TRUE;
  estirado1.Enabled                 := TRUE;
  mosaico1.Enabled                  := TRUE;
  centrado1.Enabled                 := TRUE;
  Ventanasen1.Enabled               := TRUE;
  Cascada1.Enabled                  := TRUE;
  MosaicoVertical1.Enabled          := TRUE;
  Mosaicohorizontal1.Enabled        := TRUE;
end;

procedure TfrmInteligent.ipodePersonal1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_tipopersonal') Then
   begin
     Application.CreateForm(Tfrm_tipopersonal, frm_tipopersonal);
     frm_tipopersonal.show;
   end;
end;

procedure TfrmInteligent.iposdeClientes1Click(Sender: TObject);
(*Creada: 31/10/2013 Creo: Rafael Ramirez Tadeo
Descripcion: Se crea funcion para abrir el formulario de tipos de clientes*)
begin
  //global_cias := 'VENTAS' ;
   //Si no esta creado
if not MostrarFormChild('frmtiposclientes') Then
   begin
     Application.CreateForm(Tfrmtiposclientes, frmtiposclientes);
     frmtiposclientes.Show;
   end;
end;

procedure TfrmInteligent.iposdeContratos1Click(Sender: TObject);
begin
  try
    frm_TipoContrato.SetFocus;
  except
    Application.CreateForm(Tfrm_TipoContrato, frm_TipoContrato);
    frm_TipoContrato.Show;
  end;
end;

procedure TfrmInteligent.Iraestimaciones1Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.Irageneradores1Click(Sender: TObject);
begin
  opGeneradores.Click;
end;

procedure TfrmInteligent.Irageneradoresdeinformes1Click(Sender: TObject);
begin
  rComparativo.Click;
end;

procedure TfrmInteligent.Irareportesdiarios1Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmInteligent.sCambiaPClick(Sender: TObject);
begin
   if not MostrarFormChild('frmcambiopassword') Then
    begin
      Application.CreateForm(TfrmCambioPassword, frmCambioPassword);
      frmcambiopassword.ShowModal
    end;
end;

procedure TfrmInteligent.SeleccindeEgresos1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Nomina_CapturaEgresos') then
  begin
    Application.CreateForm(Tfrm_Nomina_CapturaEgresos, frm_Nomina_CapturaEgresos);
    frm_Nomina_CapturaEgresos.show
  end;
end;

procedure TfrmInteligent.SincronizadorBD1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_principal') then
  begin
    Application.CreateForm(Tfrm_principal, frm_principal);
    frm_principal.show;
  end;
end;

procedure TfrmInteligent.adCancelacionClick(Sender: TObject);
begin   
 if not MostrarFormChild('frmCancelacion') Then
   begin
     Application.CreateForm(TfrmCancelacion, frmCancelacion);
     frmCancelacion.Show
   end;
end;

procedure TfrmInteligent.rEquipoClick(Sender: TObject);
begin
  try
    FrmRecursosEquipo.SetFocus;
  except
    Application.CreateForm(TfrmRecursosEquipo, frmRecursosEquipo);
    FrmRecursosEquipo.show;
  end;
end;

procedure TfrmInteligent.RequisiciondePersonal1Click(Sender: TObject);
begin
 if not frmInteligent.MostrarFormChild('frmRequisiciondePersonal') then
   begin
    Application.CreateForm(TfrmRequisiciondePersonal, frmRequisiciondePersonal);
    frmRequisiciondePersonal.Show;
  end;
end;

procedure TfrmInteligent.rGerencialClick(Sender: TObject);
begin
 try
    frmReporteGerencial.SetFocus;
 Except
    Application.CreateForm(TfrmReporteGerencial, frmReporteGerencial);
    frmReporteGerencial.Show
  end;
end;

procedure TfrmInteligent.cPolizasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPolizas') then
   begin
     Application.CreateForm(TfrmPolizas, frmPolizas);
     frmPolizas.Show
   end;
end;

procedure TfrmInteligent.cFichaTecnicaClick(Sender: TObject);
begin
  if not mostrarFormChild('frmFichaTecnica') Then
  begin
    Application.CreateForm(TfrmFichaTecnica, frmFichaTecnica);
    frmFichaTecnica.Show
  end;
end;

procedure TfrmInteligent.opRequisicionesClick(Sender: TObject);
begin
 if not MostrarFormChild('frmRequisicionPerf') Then
   begin
      Application.CreateForm(TfrmRequisicionPerf, frmRequisicionPerf);
      frmRequisicionPerf.show
   end;
end;

procedure TfrmInteligent.opPedidosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmPedidos') Then
   begin
     Application.CreateForm(TfrmPedidos, frmPedidos);
     frmPedidos.show
   end;
end;

procedure TfrmInteligent.opComparativo5Click(Sender: TObject);
begin
   if not mostrarFormChild('frmConsultaActividad5') Then
     begin
       Application.CreateForm(TfrmConsultaActividad5, frmConsultaActividad5);
       frmConsultaActividad5.show
     end;
end;

procedure TfrmInteligent.SpeedItem23Click(Sender: TObject);
begin
  opComparativo5.Click
end;

procedure TfrmInteligent.rSintesisClick(Sender: TObject);
begin
  try
     frmSintesisGerencial.SetFocus;
  except
    Application.CreateForm(TfrmSintesisGerencial, frmSintesisGerencial);
    frmSintesisGerencial.show
  end;
end;

procedure TfrmInteligent.rt1Click(Sender: TObject);
begin
  showmessage('ok');
end;

procedure TfrmInteligent.sTipsClick(Sender: TObject);
begin
  if not MostrarFormChild('frmTipsDia') Then
   begin
     Application.CreateForm(TfrmTipsDia, frmTipsDia);
     frmTipsDia.Show;
   end;
end;

procedure TfrmInteligent.subSubFamProductosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmSubFamProductos') then
  begin
    Application.CreateForm(TfrmSubFamProductos, frmSubFamProductos);
    frmSubFamProductos.show
  end;
end;

procedure TfrmInteligent.subZonasGeoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmZonasGeograficas') then
  begin
    Application.CreateForm(TfrmZonasGeograficas, frmZonasGeograficas);
    frmZonasGeograficas.Show;
  end;
end;

procedure TfrmInteligent.sWarningClick(Sender: TObject);
begin
if not MostrarFormChild('frmWarningDia') Then
   begin
     Application.CreateForm(TfrmWarningDia, frmWarningDia);
     frmWarningDia.Show;
   end;
end;

procedure TfrmInteligent.TiempoTimer(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmInteligent.TimerAlertTimer(Sender: TObject);
begin
  Notificaciones;
end;

procedure TfrmInteligent.ToolButton10Click(Sender: TObject);
begin
  qComentarios.Click
end;

procedure TfrmInteligent.ToolButton11Click(Sender: TObject);
begin
  opComparativo5.Click
end;

procedure TfrmInteligent.ToolButton13Click(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmInteligent.ToolButton14Click(Sender: TObject);
begin
  if not MostrarFormChild('frmDiarioBarco') then
  begin
    Application.CreateForm(TfrmDiarioBarco, frmDiarioBarco);
    frmDiarioBarco.show
  end;
end;

procedure TfrmInteligent.ToolButton17Click(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmInteligent.ToolButton18Click(Sender: TObject);
begin
  //opOrdenCam.Click
end;

procedure TfrmInteligent.ToolButton1Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmInteligent.ToolButton21Click(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmInteligent.ToolButton22Click(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmInteligent.ToolButton23Click(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmInteligent.ToolButton24Click(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.ToolButton25Click(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmInteligent.ToolButton27Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmInteligent.ToolButton2Click(Sender: TObject);
begin
  adentro := True;
  sSeleccion.Click;
end;

procedure TfrmInteligent.ToolButton6Click(Sender: TObject);
begin
  cConsulta1.Click
end;

procedure TfrmInteligent.ToolButton7Click(Sender: TObject);
begin
  opComparativo1.Click
end;

procedure TfrmInteligent.ToolButton8Click(Sender: TObject);
begin
  cConsulta5.Click
end;

procedure TfrmInteligent.ToolButton9Click(Sender: TObject);
begin
  cConsulta4.Click
end;

procedure TfrmInteligent.adAvisosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmAvisosAlertas') Then
   begin
    Application.CreateForm(TfrmAvisosAlertas, frmAvisosAlertas);
    frmAvisosAlertas.show;
  end;
end;

procedure TfrmInteligent.adActivosClick(Sender: TObject);
begin
 if not MostrarFormChild('frmActivos') Then
    begin
      Application.CreateForm(TfrmActivos, frmActivos);
      frmActivos.show;
    end;
end;

procedure TfrmInteligent.cTrinomiosClick(Sender: TObject);
begin
  try
    frmTrinomios.SetFocus;
  except
    Application.CreateForm(TfrmTrinomios, frmTrinomios);
    frmTrinomios.show;
  end;
end;

procedure TfrmInteligent.CuentasBancarias1Click(Sender: TObject);
begin
  if not mostrarFormChild('frm_catalogoCuentas') then
    begin
      Application.CreateForm(Tfrm_CatalogoCuentas, frm_CatalogoCuentas);
      frm_CatalogoCuentas.Show;
    end;
end;

procedure TfrmInteligent.CuentasContables1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_CatalogoCuentasc') then
  begin
    Application.CreateForm(Tfrm_CatalogoCuentasc, frm_CatalogoCuentasc);
    frm_CatalogoCuentasc.Show;
  end;
end;

procedure TfrmInteligent.opadmonCatalogoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAdmonCatalogos') then
      begin
        Application.CreateForm(TfrmAdmonCatalogos, frmAdmonCatalogos);
        frmAdmonCatalogos.show
      end;
end;

procedure TfrmInteligent.opGeneradorSubClick(Sender: TObject);
begin
  stMenu := '';
  if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;
  if not MostrarFormChild('frmEstimaProveedor') then
  begin
    Application.CreateForm(TfrmEstimaProveedor, frmEstimaProveedor);
    frmEstimaProveedor.show
  end;
end;

procedure TfrmInteligent.cDistribuyeOClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAjustaOrden') Then
   begin
     Application.CreateForm(TfrmAjustaOrden, frmAjustaOrden);
     frmAjustaOrden.show;
   end;
end;

procedure TfrmInteligent.adSubContratosClick(Sender: TObject);
begin
  stMenu := '';
  if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;
    ///JLR
  if not MostrarFormChild('frmsubcontratos') then
  begin
    Application.CreateForm(TfrmSubContratos, frmSubContratos);
    frmSubContratos.show
  end;
end;

procedure TfrmInteligent.opAyudaClick(Sender: TObject);
begin
  Application.HelpFile := 'C:\inteligent\inteligenthelp.chm';
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TfrmInteligent.mnuPersonal2Click(Sender: TObject);
begin
if not MostrarFormChild('frmEmpleadosGuardias') Then
   begin
     Application.CreateForm(TfrmEmpleadosGuardias, frmEmpleadosGuardias);
     frmEmpleadosGuardias.show
   end;
end;

procedure TfrmInteligent.mnuPozosdePerfoClick(Sender: TObject);
begin
   try
     frmEqPozos.SetFocus;
   Except
     Application.CreateForm(TfrmEqPozos, frmEqPozos);
     frmEqPozos.show
   end;
end;

procedure TfrmInteligent.MnuSalAlmacenClick(Sender: TObject);
begin
 If not MostrarFormChild('frmSalidaAlmacen') Then
  begin
    Application.CreateForm(TfrmSalidaAlmacen, frmSalidaAlmacen);
    frmSalidaAlmacen.show
  end;
end;

procedure TfrmInteligent.mnusSalidas1Click(Sender: TObject);
begin
  if not mostrarFormChild('frmReporteSalidasAlmacen') Then
  begin
    Application.CreateForm(TfrmReporteSalidasAlmacen, frmReporteSalidasAlmacen);
    frmReporteSalidasAlmacen.Show;
  end;
end;

procedure TfrmInteligent.ModuloTraspaso1Click(Sender: TObject);
begin
  if not MostrarFormChild('FrmModulotraspaso') Then
   begin
     Application.CreateForm(TfrmModulotraspaso, frmModulotraspaso);
     FrmModulotraspaso.show;
   end;
end;

procedure TfrmInteligent.rMovimientosdeBarcoClick(Sender: TObject);
begin
  try
    FrmRecursosMovimientos.SetFocus;
  except
    Application.CreateForm(TfrmRecursosMovimientos, frmRecursosMovimientos);
    FrmRecursosMovimientos.show;
  end;  
end;

procedure TfrmInteligent.MovPeroficClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmMovtosPersonalxoficio') Then
   begin
    Application.CreateForm(TfrmMovtosPersonalxoficio, frmMovtosPersonalxoficio);
    FrmMovtosPersonalxoficio.show;
  end;
end;

procedure TfrmInteligent.Nacionalidad1Click(Sender: TObject);
begin
if not MostrarFormChild('frmCatalogoNacionalidades') Then
   begin
    Application.CreateForm(TfrmCatalogoNacionalidades, frmCatalogoNacionalidades);
    frmCatalogoNacionalidades.show;
  end;
end;

procedure TfrmInteligent.NiveldeOrganizacin1Click(Sender: TObject);
begin
  if not MostrarFormChild('frmnivelorganizacion') Then
   begin
     Application.CreateForm(Tfrmnivelorganizacion, frmnivelorganizacion);
     frmnivelorganizacion.show;
   end;
end;

procedure TfrmInteligent.nsubMarcaClick(Sender: TObject);
begin
  if not MostrarFormChild('frmMarcasxSubFam') then
  begin
    Application.CreateForm(TfrmMarcasxSubFam, frmMarcasxSubFam);
    frmMarcasxSubFam.show
  end;
end;

procedure TfrmInteligent.nsubTipoClick(Sender: TObject);
begin
if not MostrarFormChild('frmDetalleSubfamilias') Then
  Begin
     Application.CreateForm(Tfrmdetallesubfamilias, frmdetallesubfamilias);
     frmdetallesubfamilias.show
  end;
end;

procedure TfrmInteligent.rInstaladoClick(Sender: TObject);
begin         
 if not MostrarFormChild('frmDetalledeInstalacion') Then
   begin
    Application.CreateForm(TfrmDetalledeInstalacion, frmDetalledeInstalacion);
    frmDetalledeInstalacion.show
  end;
end;

procedure TfrmInteligent.tripulacionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmTripulacion') then
    begin
      Application.CreateForm(TfrmTripulacion, frmTripulacion);
      frmTripulacion.Show;
    end;
end;

procedure TfrmInteligent.Vendedores1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmCatVendedores') Then
   begin
     Application.CreateForm(TfrmCatVendedores, frmCatVendedores);
     frmCatVendedores.Show;
   end;
  
end;


procedure TfrmInteligent.optValidaClick(Sender: TObject);
begin
  if not MostrarFormChild('frmvalidaestimaciongral') then
  begin
    Application.CreateForm(TfrmValidaEstimacionGral, frmValidaEstimacionGral);
    frmValidaEstimacionGral.show
  end;
end;

procedure TfrmInteligent.rPernoctasClick(Sender: TObject);
begin
  try
    FrmRecursosPernocta.setfocus;
  except
    Application.CreateForm(TfrmRecursosPernocta, frmRecursosPernocta);
    FrmRecursosPernocta.show;
  end;
end;

procedure TfrmInteligent.rPersonalClick(Sender: TObject);
begin
  try
    FrmRecursosPersonal.SetFocus;
  except
    Application.CreateForm(TfrmRecursosPersonal, frmRecursosPersonal);
    FrmRecursosPersonal.show;
  end;
end;

procedure TfrmInteligent.ProcesarNmina1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Nomina_NuevoPeriodo') then
  begin
    Application.CreateForm(Tfrm_Nomina_NuevoPeriodo, frm_Nomina_NuevoPeriodo);
    frm_Nomina_NuevoPeriodo.show
  end;
end;

procedure TfrmInteligent.ProcesarNmina2Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Nomina_ProcesarNomina') then
  begin
    Application.CreateForm(Tfrm_Nomina_ProcesarNomina, frm_Nomina_ProcesarNomina);
    frm_Nomina_ProcesarNomina.Show;
  end;
end;

procedure TfrmInteligent.Profesiones1Click(Sender: TObject);
begin
 if not MostrarFormChild('frmCatalogoProfesiones') Then
   begin
    Application.CreateForm(TfrmCatalogoProfesiones, frmCatalogoProfesiones);
    frmCatalogoProfesiones.show;
  end;
end;

procedure TfrmInteligent.ProspectosClientes1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Companias') Then
   begin
     Application.CreateForm(Tfrm_Companias, frm_Companias);
     frm_Companias.Show;
   end;
end;

procedure TfrmInteligent.Proveedores1Click(Sender: TObject);
begin
  If not mostrarFormChild('frmProveedores') Then
    begin
      Application.CreateForm(TfrmProveedores, frmProveedores);
      frmProveedores.show;
    end;
end;

procedure TfrmInteligent.ProyecciondeActClick(Sender: TObject);
begin
  stMenu := '';
  if sender is TMenuItem then
    stMenu := (sender as TMenuItem).Name;
  if not MostrarFormChild('frmProyeccion2') then
  begin
    Application.CreateForm(TfrmProyeccion2, frmProyeccion2);
    frmProyeccion2.show;
  end;
end;

procedure TfrmInteligent.Puestos1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CatalogoDePuestos, frm_CatalogoDePuestos);
  frm_CatalogoDePuestos.Show;
end;

procedure TfrmInteligent.Puestos2Click(Sender: TObject);
begin
  if not mostrarFormChild('FrmCatalogoCargos') Then
   begin
      Application.CreateForm(TFrmCatalogoCargos, FrmCatalogoCargos);
      FrmCatalogoCargos.Show;
   end;
end;

procedure TfrmInteligent.mnuEmpresaClick(Sender: TObject);
begin
  If not mostrarFormChild('frm_nucOrganizacion') Then
   begin
      Application.CreateForm(Tfrm_nucOrganizacion, frm_nucOrganizacion);
      frm_nucOrganizacion.show;
   end;
end;

procedure TfrmInteligent.mnuEmpresasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmcontratos') then
  begin
    global_cambioletrero := 20 ;
    Application.CreateForm(TfrmContratos, frmContratos);
    frmContratos.show;
  end;
end;

procedure TfrmInteligent.AsignacindeAlmacenesaUsuarios1Click(Sender: TObject);
begin
if not MostrarFormChild('frmalmacenesporusuario') Then
   begin
     Application.CreateForm(Tfrmalmacenesporusuario, frmalmacenesporusuario);
     frmalmacenesporusuario.show;
  end;
end;

procedure TfrmInteligent.mnu2Click(Sender: TObject);
begin
  if not MostrarFormChild('frmAlmacenesPorContrato') Then
   begin
    Application.CreateForm(TfrmAlmacenesPorContrato, frmAlmacenesPorContrato);
    frmAlmacenesPorContrato.Show;
  end;
end;

procedure TfrmInteligent.mnuEmpresacClick(Sender: TObject);
begin
  if not MostrarFormChild('frm_ConsultadeGastos_Empresa') Then
   begin
     Application.CreateForm(Tfrm_ConsultadeGastos_Empresa, frm_ConsultadeGastos_Empresa);
     frm_ConsultadeGastos_Empresa.Show;
   end;
end;

procedure TfrmInteligent.mnuGenerealcClick(Sender: TObject);
begin
 if not MostrarFormChild('frm_ConsultadeGastos') then
   begin 
    Application.CreateForm(Tfrm_ConsultadeGastos, frm_ConsultadeGastos);
    frm_ConsultadeGastos.Show;
  end;
end;

procedure TfrmInteligent.mnuAgrupacionPClick(Sender: TObject);
begin
 if not mostrarFormChild('frmGruposPersonal')   then
  Begin
    Application.CreateForm(TfrmGruposPersonal, frmGruposPersonal);
    frmGruposPersonal.show
  end;
end;

procedure TfrmInteligent.MnuAlmacenClick(Sender: TObject);
begin
   if not MostrarFormChild('frmAlmacenes') Then
    begin
      Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
      frmAlmacenes.Show
    end;
end;

procedure TfrmInteligent.mnuBancosClick(Sender: TObject);
begin
  if not MostrarFormChild('frm_BancosGral') then
    begin
       Application.CreateForm(Tfrm_BancosGral, frm_bancosGral);
       frm_bancosGral.show;
    end;
end;

procedure TfrmInteligent.mnuCatalogoCuentasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmCatalgoCuentas') then
  begin
    application.CreateForm(TfrmCatalgoCuentas,frmCatalgoCuentas);
    frmCatalgoCuentas.Show;
  end;
end;

procedure TfrmInteligent.tbbPaqEqClick(Sender: TObject);
begin
  if not MostrarFormChild('frmpaqueteequipo') then
  begin
    Application.CreateForm(TfrmPaqueteEquipo, frmPaqueteEquipo);
    frmPaqueteEquipo.show
  end;
end;

procedure TfrmInteligent.tbbRepDiarioClick(Sender: TObject);
begin
  rDiario.Click
end;

procedure TfrmInteligent.tbbRepBarcoClick(Sender: TObject);
begin
  reporteBarco.Click;
end;

procedure TfrmInteligent.tbbFotosClick(Sender: TObject);
begin
  opTiemposM.Click
end;

procedure TfrmInteligent.tbbFirmantesClick(Sender: TObject);
begin
  opFirmas.Click
end;

procedure TfrmInteligent.tbbAutorizaClick(Sender: TObject);
begin
  opValida.Click
end;

procedure TfrmInteligent.tbbAvisoEmbClick(Sender: TObject);
begin
  if not MostrarFormChild('frmEntradaAnex') then
  begin
    Application.CreateForm(TfrmEntradaAnex, frmEntradaAnex);
    frmEntradaAnex.Show
  end;
end;

procedure TfrmInteligent.tbbSetupClick(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmInteligent.tbbDesautorizaClick(Sender: TObject);
begin
  opAbre.Click
end;

procedure TfrmInteligent.tbbEmpleadosClick(Sender: TObject);
begin
  mnuPersonal2.Click;
end;

procedure TfrmInteligent.tbbEstimaClick(Sender: TObject);
begin
  opEstimaciones.Click
end;

procedure TfrmInteligent.tbbGeneraClick(Sender: TObject);
begin
  opGeneradores.Click
end;

procedure TfrmInteligent.tbbInformesClick(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmInteligent.AdvToolBarButton24Click(Sender: TObject);
begin
  rComparativo.Click
end;

procedure TfrmInteligent.tbbCambiaContratoClick(Sender: TObject);
begin
  if MDIChildCount > 0 then
  begin
    if MSG_YN('Si cambia de empresa se cerraran todas las ventanas desea continuar?') then
    begin
      Cerrar_Todo.Click;  
    end;
  end;
  adentro  := True;
  sSeleccion.Click;
end;

procedure TfrmInteligent.tbbPaquetePerClick(Sender: TObject);
begin
  if not MostrarFormChild('frmpaquetepersonal') then
  begin
    Application.CreateForm(TfrmPaquetePersonal, frmPaquetePersonal);
    frmPaquetePersonal.show
  end;
end;

procedure TfrmInteligent.AdvToolBarMenuButton1Click(Sender: TObject);
begin
  adConfiguracion.Click
end;

procedure TfrmInteligent.AsignaciondeOrdClick(Sender: TObject);
begin
  if not MostrarFormChild('frmOrdenesxUsuario') Then
   begin
    Application.CreateForm(TfrmOrdenesxUsuario, frmOrdenesxusuario);
    frmOrdenesxUsuario.show;
  end;
end;

procedure TfrmInteligent.BancosRHClick(Sender: TObject);
 begin
 if not MostrarFormChild('frm_bancosGral') Then
   begin
    Application.CreateForm(Tfrm_BancosGral, frm_bancosGral);
    frm_bancosGral.show;
   end;
 end;



procedure TfrmInteligent.programaDeSaludClick(Sender: TObject);
begin
 if not MostrarFormChild('FrmProgramaDeSalud') Then
   begin
     Application.CreateForm(TFrmProgramaDeSalud, FrmProgramaDeSalud);
     FrmProgramaDeSalud.ShowModal;
   end;
end;

procedure TfrmInteligent.btnregistrodequejasClick(Sender: TObject);
begin
  try
    Frmregistrodequejas.SetFocus;
  except
    Application.CreateForm(tfrmregistrodequejas,Frmregistrodequejas);
   Frmregistrodequejas.Show;
  end;

end;

procedure TfrmInteligent.btnregistroquejasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmRegistrodeQuejas') then
    begin
       Application.CreateForm(Tfrmregistrodequejas, frmregistrodequejas);
       frmregistrodequejas.Show;
    end;
end;

procedure TfrmInteligent.btnAsignarcuentaClick(Sender: TObject);
begin
  if not mostrarformChild('frmAsignarFactura') then
    begin
      Application.CreateForm(TfrmAsignarFactura, frmAsignarFactura);
      frmAsignarFactura.Show;
    end;
end;

procedure TfrmInteligent.btnCatalogoDeCargoAClick(Sender: TObject);
begin
 if not MostrarFormChild('frm_CatalogoDeCargoA') then
  begin
     Application.CreateForm(Tfrm_CatalogoDeCargoA, frm_CatalogoDeCargoA);
     frm_CatalogoDeCargoA.Show;
  end;
end;

procedure TfrmInteligent.btnCatalogoTipoVisitaClick(Sender: TObject);
begin
  //Abrir el Catalogo de Tipo de Visita
  if not MostrarFormChild('frm_TipoVisita') Then
   begin
     Application.CreateForm(Tfrm_TipoVisita, frm_TipoVisita);
     frm_TipoVisita.show;
   end;
end;

procedure TfrmInteligent.btnCatMaestrosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmAnexosCotemar') Then
    begin
     Application.CreateForm(TfrmAnexosCotemar, frmAnexosCotemar);
     frmAnexosCotemar.show
    end;
end;

procedure TfrmInteligent.btnConfiguracionVentasClick(Sender: TObject);
begin
  if not MostrarFormChild('frmConfiguracionVTA') Then
   begin
    Application.CreateForm(TfrmConfiguracionVTA, frmConfiguracionVTA);
    frmConfiguracionVTA.showModal;
  end;
end;

procedure TfrmInteligent.btnCotizacionesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmVtaCotizaciones') Then
   begin
     Application.CreateForm(TfrmVtaCotizaciones, frmVtaCotizaciones);
     frmVtaCotizaciones.Show;
   end;
end;

procedure TfrmInteligent.btnFirmanteDigitalesClick(Sender: TObject);
begin
  if not MostrarFormChild('frmFirmasDigitales') Then
   begin
    Application.CreateForm(tfrmFirmasDigitales, frmFirmasDigitales);
    frmFirmasDigitales.Show;
   end;
end;

procedure TfrmInteligent.btnModulosClick(Sender: TObject);
begin
if not MostrarFormChild('frmCatalogoModulos') Then
  begin
    Application.CreateForm(TfrmCatalogoModulos, frmCatalogoModulos);
    frmCatalogoModulos.show;
  end;
end;

procedure TfrmInteligent.btnsincuentaClick(Sender: TObject);
begin

  if not mostrarformChild('frm_Depsincuentas') then
     begin
       Application.CreateForm(Tfrm_Depsincuentas, frm_Depsincuentas);
       frm_Depsincuentas.Show;
     end
end;

procedure TfrmInteligent.btnsincuentasClick(Sender: TObject);
begin
   try
       frm_Depsincuentas.SetFocus;
     except
       Application.CreateForm(Tfrm_Depsincuentas, frm_Depsincuentas);
       frm_Depsincuentas.Show;
     end
end;

procedure TfrmInteligent.btnTimeLineClick(Sender: TObject);
begin
 if not MostrarFormChild('frmvtaTimeLine') Then
   begin
     Application.CreateForm(TfrmvtaTimeLine, frmvtaTimeLine);
     frmvtaTimeLine.Show;
   end;
end;

procedure TfrmInteligent.btnTodasCotizacionesClick(Sender: TObject);
begin
   if not MostrarFormChild('frmvtaTCotizaciones') Then
    begin
      Application.CreateForm(TfrmvtaTCotizaciones, frmvtaTCotizaciones);
      frmvtaTCotizaciones.Show;
    end;
end;

procedure TfrmInteligent.btnTraspasosClick(Sender: TObject);
begin
  if not MostrarFormChild('FrmModulotraspaso') then
   begin
      Application.CreateForm(TfrmModulotraspaso, frmModulotraspaso);
      FrmModulotraspaso.show;
   end;
end;

procedure TfrmInteligent.Recibos1Click(Sender: TObject);
Var Query: TZQuery;
begin
  Query := TZQuery.Create(Self);
  Query.Connection := Connection.zConnection;
  Query.SQL.Text := 'SELECT *, MAX(iId) FROM nom_nominas WHERE iProcesada = 1';
  Query.Open;

  if Query.RecordCount > 0 then
     global_nomina := Query.FieldByName('iId').AsInteger
  else global_nomina := 0;

  if not MostrarFormChild('frm_Nomina_ImprimirRecibos') then
  begin
    Application.CreateForm(Tfrm_Nomina_ImprimirRecibos, frm_Nomina_ImprimirRecibos);
    frm_Nomina_ImprimirRecibos.show;
  end;
end;

procedure TfrmInteligent.RepBarcoClick(Sender: TObject);
begin
  if not MostrarFormChild('frmDiarioBarco') then
  begin
    Application.CreateForm(TfrmDiarioBarco, frmDiarioBarco);
    frmDiarioBarco.show;
  end;
end;

procedure TfrmInteligent.Reporteador1Click(Sender: TObject);
var
  F:Tform;
begin
//  fmodulodatos.Conexion.Server := connection.zConnection.HostName;
//  fmodulodatos.Conexion.Port := connection.zConnection.Port;
//  fmodulodatos.conexion.Username := connection.zconnection.User;
//  fmodulodatos.conexion.Password := connection.zConnection.Password;
//  fmodulodatos.conexion.Database := connection.zconnection.Database;
//  try
//    FModuloDatos.Conexion.Connect;
//  Except
//    MessageDlg('No pudo conectarse al servidor especificado', mtError, [mbOK], 0);
//    Exit;
//  end;
//
//  F:= Application.FindComponent('FGeneraReporte') as TForm;
//  If Assigned(F) Then
//    F.Show
//  else
//  Begin
//    if (not MostrarFormChild('FGeneraReporte')) then
//    begin
//      Application.CreateForm(TFGeneraReporte, FGeneraReporte);
//    End;
//  End;
end;

procedure TfrmInteligent.reporteBarcoClick(Sender: TObject);
begin   
  if not MostrarFormChild('frmDiarioBarco') then
   begin
     Application.CreateForm(TfrmDiarioBarco, frmDiarioBarco);
     frmDiarioBarco.show;
   end;
end;

procedure TfrmInteligent.ReportedeClculo1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Nomina_ReporteAcumulados') then
  begin
    Application.CreateForm(Tfrm_Nomina_ReporteAcumulados, frm_Nomina_ReporteAcumulados);
    frm_Nomina_ReporteAcumulados.showModal;
  end;
end;

procedure TfrmInteligent.ReportedeNmina1Click(Sender: TObject);
begin
  if not MostrarFormChild('frm_Nomina_ReporteNominas') then
  begin
    Application.CreateForm(Tfrm_Nomina_ReporteNominas, frm_Nomina_ReporteNominas);
    frm_Nomina_ReporteNominas.showModal;
  end;
end;

procedure TfrmInteligent.ReportedeProduccionClick(Sender: TObject);
begin
  if not MostrarFormChild('frmOpcionesReporteProduccion') then
  begin
    Application.CreateForm(TfrmOpcionesReporteProduccion, frmOpcionesReporteProduccion);
    frmOpcionesReporteProduccion.showModal;
  end;
end;

procedure TfrmInteligent.Reportesdiarios1Click(Sender: TObject);
begin
  rDiario.Click;
end;

procedure TfrmInteligent.opInventarioClick(Sender: TObject);
begin
  if not mostrarFormChild('frmConsultaActividad5') Then
    begin
      Application.CreateForm(TfrmConsultaActividad5, frmConsultaActividad5);
      frmConsultaActividad5.show;
    end;
end;

procedure TfrmInteligent.opGeneradoresClick(Sender: TObject);
begin
 if not MostrarFormChild('frmEstimaInstalado') Then
   begin
     Application.CreateForm(TfrmEstimaInstalado, frmEstimaInstalado);
     frmEstimaInstalado.show
   end;
end;

procedure TfrmInteligent.rPartidasIsomClick(Sender: TObject);
begin
 if not MostrarFormChild('frmPartidasxIsometrico') Then
   begin
     Application.CreateForm(TfrmPartidasxIsometrico, frmPartidasxIsometrico);
     frmPartidasxIsometrico.show
   end;
end;

procedure TfrmInteligent.MnuDocumentacionClick(Sender: TObject);
begin
if not MostrarFormChild('Frm_DoctosxCategoria') Then
  begin
    Application.CreateForm(TFrm_DoctosxCategoria,Frm_DoctosxCategoria);
    Frm_DoctosxCategoria.show;
  end;
end;

procedure TfrmInteligent.MnuEntAlmaceClick(Sender: TObject);
begin
   if not MostrarFormChild('frmEntradaAlmacen') then
      begin
        Application.CreateForm(TfrmEntradaAlmacen, frmEntradaAlmacen);
        frmEntradaAlmacen.show ;
      end;

end;

procedure TfrmInteligent.mnuFamiliadePro1Click(Sender: TObject);
begin
if not MostrarFormChild('frmGrupoFamilias') then
  begin
     Application.CreateForm(TfrmGrupoFamilias, frmGrupoFamilias);
     frmGrupoFamilias.ShowModal;
  end;
end;

procedure TfrmInteligent.MnuGpoPerimetrosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmgrupoperimetros') then
  begin
    application.CreateForm(Tfrmgrupoperimetros, frmgrupoperimetros);
    frmgrupoperimetros.Show;
  end;
end;

procedure TfrmInteligent.MnuImpAvContClick(Sender: TObject);
begin
 if not MostrarFormChild('frmActualizacionRemota') Then
   begin
     application.CreateForm(TfrmActualizacionRemota, frmActualizacionRemota);
     frmActualizacionRemota.Show;
   end;
end;

procedure TfrmInteligent.mnuKardexClick(Sender: TObject);
begin
 if not MostrarFormChild('frmKardex') Then
  begin
    Application.CreateForm(TfrmKardex, frmKardex);
    frmKardex.Show;
  end;
end;

procedure TfrmInteligent.MnuPerimetrosClick(Sender: TObject);
begin
  if not MostrarFormChild('frmformatogenerador') then
  begin
    application.CreateForm(Tfrmformatogenerador, frmformatogenerador);
    frmformatogenerador.Show;
  end;
end;

procedure TfrmInteligent.cascadaClick(Sender: TObject);
begin
  FRMINTELIGENT.Cascade;
end;

{$REGION 'Notificaciones'}
procedure TfrmInteligent.Notificaciones;
var
  MyAlert   : TdxAlertWindow;
  FechaAlert:          TDate;
  contenido :         string;
  QryCptos, QryNot:  TZQuery;
begin

  QryCptos := TZQuery.Create(Self);
  QryCptos.Connection := Connection.zConnection;

  QryNot   := TZQuery.Create(Self);
  QryNot.Connection := Connection.zConnection;

  {$REGION 'Eventos'}
  QryNot.Active := False;
  QryNot.SQL.Clear;
  QryNot.SQL.Add('select n.*, u.sNombre as Emisor from nuc_notificaciones n '+
                'inner join usuarios u on (n.sIdUsuarioE=u.sIdUsuario) '+
                'where n.sIdUsuarioR=:Usuario and n.sStatus<>"Cerrado" and n.sTipoAlert="Eventos"');
  QryNot.ParamByName('Usuario').AsString:=global_usuario;
  QryNot.Open;

  while not QryNot.Eof do
  begin
    FechaAlert:=QryNot.FieldByName('dFecha').AsDateTime;
    if QryNot.FieldByName('sRepetir').AsString='Todos los días' then
      FechaAlert:=Date;

    if QryNot.FieldByName('sRepetir').AsString='Todas las semanas' then
    begin
     while FechaAlert<Date do
      FechaAlert:=IncDay(FechaAlert,7);
    end;

    if QryNot.FieldByName('sRepetir').AsString='Todos los meses' then
    begin
     while FechaAlert<Date do
      FechaAlert:=IncMonth(FechaAlert,1);
    end;

    if (FechaAlert=Date) and ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) then
    begin
      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Fecha de Evento:'+chr(13)+FormatDateTime('dd'' de ''mmmm'' de ''yyyy', QryNot.FieldByName('dFechaEvento').AsDateTime)+chr(13)+chr(13)+'Alerta Creada Por:'+chr(13)+QryNot.FieldByName('Emisor').AsString;
      MyAlert:=dxAlert.Show(QryNot.FieldByName('sTitulo').AsString,UpperCase(contenido),0);
      //MyAlert.MessageList.Add('Fecha de Evento',FormatDateTime('dd'' de ''mmmm'' de ''yyyy', Connection.qryBusca.FieldByName('dFechaEvento').AsDateTime),2);
      //MyAlert.MessageList.Add('Alerta Creada Por:',Connection.qryBusca.FieldByName('Emisor').AsString,1);
    end;
    QryNot.Next;
  end;
  {$ENDREGION}

  {$REGION 'Vigencias'}
  contenido:='';
  QryNot.Active := False;
  QryNot.SQL.Clear;
  QryNot.SQL.Add('select n.*, u.sNombre as Emisor from nuc_notificaciones n '+
                'inner join usuarios u on (n.sIdUsuarioE=u.sIdUsuario) '+
                'where n.sStatus<>"Cerrado" and n.sTipoAlert="Vigencias"');
  QryNot.Open;

  while not QryNot.Eof do
  begin
    FechaAlert:=QryNot.FieldByName('dFecha').AsDateTime;
    if QryNot.FieldByName('sRepetir').AsString='Todos los días' then
      FechaAlert:=Date;

    if QryNot.FieldByName('sRepetir').AsString='Todas las semanas' then
    begin
     while FechaAlert<Date do
      FechaAlert:=IncDay(FechaAlert,7);
    end;

    if QryNot.FieldByName('sRepetir').AsString='Todos los meses' then
    begin
     while FechaAlert<Date do
      FechaAlert:=IncMonth(FechaAlert,1);
    end;

    {$REGION 'Ctrl. Admin'}
    // Facturas Vencidas
    if QryNot.FieldByName('sConcepto').AsString='FACTURAS VENCIDAS' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('SELECT te.iIdFolio FROM con_tesoreriaegresos te INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sIdNumeroCuenta) '+
                      'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento="DEPOSITO" and te.iIdStatus=1) and (te.dIdFecha >= :FechaI and te.dIdFecha <= :FechaF)');
      QryCptos.ParamByName('sContrato').AsString:=global_contrato;
      QryCptos.ParamByName('FechaI').AsDate:=QryNot.FieldByName('dFechaInicio').AsDateTime;
      QryCptos.ParamByName('FechaF').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Folios de Facturas:'+chr(13);

      if (FechaAlert=Date) and ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+QryCptos.FieldByName('iIdFolio').AsString+' ';
          QryCptos.Next;
        end;
        contenido:=contenido+chr(13)+chr(13)+'Periodo de Vigencias:'+chr(13)+('Del '+FormatDateTime('dd'' de ''mmmm'' de ''yyyy', QryNot.FieldByName('dFechaInicio').AsDateTime)+' Al '+FormatDateTime('dd'' de ''mmmm'' de ''yyyy', QryNot.FieldByName('dFechaFinal').AsDateTime))+chr(13)+chr(13)+'Alerta Creada Por:'+chr(13)+QryNot.FieldByName('Emisor').AsString;

        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
        //MyAlert.MessageList.Add('Periodo de Vigencias',('Del '+FormatDateTime('dd'' de ''mmmm'' de ''yyyy', Connection.qryBusca.FieldByName('dFechaInicio').AsDateTime)+' Al '+FormatDateTime('dd'' de ''mmmm'' de ''yyyy', Connection.qryBusca.FieldByName('dFechaFinal').AsDateTime)),2);
        //MyAlert.MessageList.Add('Alerta Creada Por:',Connection.qryBusca.FieldByName('Emisor').AsString,1);
      end;
    end;
    {$ENDREGION}

    {$REGION 'Recursos Humanos'}
    // Vigencia Libreta de Mar
    if QryNot.FieldByName('sConcepto').AsString='PROXIMAS LIBRETAS A VENCER' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('SELECT iIdEmpleado, sFolioDocumento FROM rh_historialdocumentos WHERE (dFechaVigencia>=:FechaActual and dFechaVigencia<=:Fecha) and eTipoDocumento="Libreta de Mar"');
      FechaAlert:=IncMonth(Date,2);
      QryCptos.ParamByName('Fecha').AsDate:=FechaAlert;
      QryCptos.ParamByName('FechaActual').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13);
      if QryCptos.RecordCount>0 then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'[Id Empleado: '+QryCptos.FieldByName('iIdEmpleado').AsString+' Libreta: '+QryCptos.FieldByName('sFolioDocumento').AsString+']'+chr(13);
          QryCptos.Next;
        end;

        if (Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime then
          MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;

    // Vigencia de Certificados
    if QryNot.FieldByName('sConcepto').AsString='PROXIMOS CERTIFICADOS A VENCER' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('SELECT iIdEmpleado, sFolioDocumento FROM rh_historialdocumentos WHERE (dFechaVigencia>=:FechaActual and dFechaVigencia<=:Fecha) and eTipoDocumento="Certificado Medico"');
      FechaAlert:=IncMonth(Date,2);
      QryCptos.ParamByName('Fecha').AsDate:=FechaAlert;
      QryCptos.ParamByName('FechaActual').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13);
      if QryCptos.RecordCount>0 then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'[Id Empleado: '+QryCptos.FieldByName('iIdEmpleado').AsString+' Certificado: '+QryCptos.FieldByName('sFolioDocumento').AsString+']'+chr(13);
          QryCptos.Next;
        end;

        if (Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime then
          MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;   
    {$ENDREGION}

    {$REGION 'Almacen'}
    // Requisiciones por Autorizar
    if QryNot.FieldByName('sConcepto').AsString='REQUISICIONES POR AUTORIZAR' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('Select ar.sNumFolio from anexo_requisicion ar inner join usuarios u on (u.sIdUsuario=:Usuario) where u.lAutorizaRequisiciones="Si" '+
                      'and ar.sContrato =:Contrato and ar.sStatus <> "AUTORIZADO" order by ar.dIdFecha');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Usuario').AsString:=global_usuario;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Folios de Requisiciones:'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sNumFolio').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;

    // Ord. de Compra por Autorizar
    if QryNot.FieldByName('sConcepto').AsString='ORD. DE COMPRA POR AUTORIZAR' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('Select ap.sOrdenCompra from anexo_pedidos ap inner join usuarios u on (u.sIdUsuario=:Usuario) where u.lAutorizaRequisiciones="Si" '+
                      'and ap.sContrato =:Contrato and ap.sStatus <> "AUTORIZADO" order by ap.dFechaEntrega');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Usuario').AsString:=global_usuario;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Folios de las Ord. de Compra:'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sOrdenCompra').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;

    //Entradas de Insumos al Almacen
    if QryNot.FieldByName('sConcepto').AsString='ENTRADA DE INSUMOS EN ALMACEN' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('Select i.dExistencia, i.mDescripcion, i.sIdAlmacen from bitacoradeentrada b inner join insumos i '+
                      'on (i.sContrato = b.sContrato and i.sIdInsumo = b.sIdInsumo) where b.sContrato =:Contrato and b.dFechaEntrega=:Fecha');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Datos de Entrada:'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'[Existencia:'+QryCptos.FieldByName('dExistencia').AsString+' Insumo:'+QryCptos.FieldByName('mDescripcion').AsString+' Almacen:'+QryCptos.FieldByName('sIdAlmacen').AsString+']'+chr(13);
          QryCptos.Next;
        end;

        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;

    {$ENDREGION}

    {$REGION 'Ctrl. de Obra'}
    // Reporte Diario Creado
    if QryNot.FieldByName('sConcepto').AsString='REPORTE DIARIO NUEVO' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select  r.sNumeroReporte from reportediario r '+
                      'inner join convenios c on (r.sContrato = c.sContrato And r.sIdConvenio = c.sIdConvenio) '+
                      'inner join turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno) '+
                      'where r.sContrato = :contrato And r.dIdFecha=:Fecha Order By r.dIdFecha DESC');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Numero(s) de  Folio(s):'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sNumeroReporte').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    // Generador Creado
    if QryNot.FieldByName('sConcepto').AsString='GENERADOR NUEVO' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select sNumeroGenerador from estimaciones where sContrato = :Contrato and dFechaInicio=:Fecha Order By  iConsecutivo DESC');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Numero(s) de Generador(es):'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sNumeroGenerador').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    // Estimacion Creada
    if QryNot.FieldByName('sConcepto').AsString='ESTIMACIÓN NUEVA' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('Select iNumeroEstimacion From estimacionperiodo Where sContrato = :Contrato and dIdFecha=:Fecha Order By dFechaFinal');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Numero(s) de Estimacion(es):'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('iNumeroEstimacion').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    // Reprogramacion Creada
    if QryNot.FieldByName('sConcepto').AsString='REPROGRAMACIÓN NUEVA' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select sIdConvenio from convenios where sContrato = :contrato and dFecha=:Fecha Order By dFecha');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'ID(s) de la(s) Reprogramación(es):'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sIdConvenio').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    // Contrato proximo a venser
    if QryNot.FieldByName('sConcepto').AsString='VENCIMIENTO DE CONTRATO' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select sDescripcion from convenios where sContrato = :contrato and dFechaFinal=:Fecha Order By dFecha');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=IncDay(Date);
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Desc. del(os) Contrato(s):'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sDescripcion').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    //Partida se sale de fechas
    if QryNot.FieldByName('sConcepto').AsString='PARTIDA FUERA DE FECHA' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select a.sNumeroActividad '+
                      'from actividadesxanexo a '+
                      'where a.sContrato=:Contrato and a.dCantidadAnexo> '+
                      '  (select sum(b.dCantidad)from bitacoradeactividades b '+
                      '  where b.sContrato=a.sContrato and b.sNumeroActividad=a.sNumeroActividad '+
                      '  group by b.sNumeroActividad) and a.dFechaFinal= '+
                      '    (select MAX(a2.dFechaFinal) from actividadesxanexo a2 where a2.sContrato=a.sContrato '+
                      '    and a2.sNumeroActividad=a.sNumeroActividad) and a.dFechaFinal<:Fecha '+
                      'order by a.sNumeroActividad');
      QryCptos.ParamByName('Contrato').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=Date;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Partidas penalizadas:'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sNumeroActividad').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    {$ENDREGION}

    {$REGION 'Ventas'}
    //Seguimiento de prospectos
    if QryNot.FieldByName('sConcepto').AsString='SEGUIMIENTO DE PROSPECTOS' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select c.sRazonSocial from con_companias c where sIdCompaniaConf = :compania and '+
                      '(select b.didFecha  from vta_bitacoradeactividades b where b.sIdCompania=c.sIdCompania and iIdTipoVisita<6 order by b.didFecha desc limit 1)<:Fecha '+
                      'order by c.sRazonSocial');
      QryCptos.ParamByName('compania').AsString:=global_contrato;
      QryCptos.ParamByName('Fecha').AsDate:=IncDay(Date,-15);
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Prospectos:'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sRazonSocial').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    {$ENDREGION}
    QryNot.Next;
  end;
  {$ENDREGION}

  {$REGION 'Criterios'}
  contenido:='';
  QryNot.Active := False;
  QryNot.SQL.Clear;
  QryNot.SQL.Add('select n.*, u.sNombre as Emisor from nuc_notificaciones n '+
                'inner join usuarios u on (n.sIdUsuarioE=u.sIdUsuario) '+
                'where n.sStatus<>"Cerrado" and n.sTipoAlert=:TipoAlert');
  QryNot.ParamByName('TipoAlert').AsString:='Criterios';
  QryNot.Open;

  while not QryNot.Eof do
  begin
    FechaAlert:=QryNot.FieldByName('dFecha').AsDateTime;
    if QryNot.FieldByName('sRepetir').AsString='Todos los días' then
      FechaAlert:=Date;

    if QryNot.FieldByName('sRepetir').AsString='Todas las semanas' then
    begin
     while FechaAlert<Date do
      FechaAlert:=IncDay(FechaAlert,7);
    end;

    if QryNot.FieldByName('sRepetir').AsString='Todos los meses' then
    begin
     while FechaAlert<Date do
      FechaAlert:=IncMonth(FechaAlert,1);
    end;

    {$REGION 'Ctrl Admin'}
    if QryNot.FieldByName('sConcepto').AsString='FACTURAS SIN ARCHIVOS' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select te.iIdFolio from con_files f right join con_tesoreriaegresos te on (f.iIdFolio=te.iIdFolio) '+
                      'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sIdNumeroCuenta) where cb.sIdCompaniaConf=:sContrato and f.iIdFolio is null order by te.iIdFolio');
      QryCptos.ParamByName('sContrato').AsString:=global_contrato;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Folios de Facturas:'+chr(13);

      if (FechaAlert=Date) and ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+QryCptos.FieldByName('iIdFolio').AsString+' ';
          QryCptos.Next;
        end;
        contenido:=contenido+chr(13)+chr(13)+'Alerta Creada Por:'+chr(13)+QryNot.FieldByName('Emisor').AsString;

        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    {$ENDREGION}

    {$REGION 'Ventas'}
    if QryNot.FieldByName('sConcepto').AsString='COTIZACION PENDIENTE' then
    begin
      QryCptos.SQL.Clear;
      QryCptos.SQL.Add('select sIdCotizacion from vta_cotizaciones where sIdCompaniaConf=:Contrato and eEstado="Pendiente" and sUsuario=:Usuario');
      QryCptos.ParamByName('Contrato').AsString := global_contrato;
      QryCptos.ParamByName('Usuario').AsString  :=   global_nombre;
      QryCptos.Open;

      contenido:=QryNot.FieldByName('sDescripcion').AsString+chr(13)+chr(13)+'Id de Cotización:'+chr(13);

      if ((Time-HoraI)<=QryNot.FieldByName('tTiempo').AsDateTime) and (QryCptos.RecordCount>0) then
      begin
        while not QryCptos.Eof do
        begin
          contenido:=contenido+'['+QryCptos.FieldByName('sIdCotizacion').AsString+'] ';
          QryCptos.Next;
        end;
        MyAlert:=dxAlert.Show(QryNot.FieldByName('sConcepto').AsString,UpperCase(contenido),0);
      end;
    end;
    {$ENDREGION}
    QryNot.Next;
  end;
  {$ENDREGION}
end;
{$ENDREGION}

end.

