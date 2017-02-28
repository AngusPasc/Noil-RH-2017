unit frm_EmpleadosGuardias;

interface
                                   
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls
  , AdvGroupBox, AdvOfficeButtons, Forms,
  Dialogs, ExtCtrls, UnitValidaTexto, NxPageControl, NxColumns, NxDBColumns,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxCollection, DB, masUtilerias,
  NxScrollControl, ZAbstractDataset, ZDataset, AdvGlowButton, frm_Connection,
  ZAbstractRODataset, global, JvDBDotNetControls, frm_ControlEmpleados2, Mask,
  StdCtrls, DBCtrls, frm_Barra, unitTBotonesPermisos, UnitExcepciones, Menus,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, jpeg,
  JvDBDatePickerEdit, Grids, DBGrids, JvExControls, JvDBLookup, JvExStdCtrls,
  JvDBCombobox, frxClass, frxDBSet, frxExportPDF, JvCombobox, rxToolEdit,
  RXDBCtrl, JvLinkLabel, ExtDlgs, Utilerias, UnitExcel, ComObj, ComCtrls,
  DateUtils, UDbGrid, dblookup, DBDateTimePicker, Newpanel, Buttons,frm_plataformas,frm_Pernoctan, RxMemDS,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxClasses, cxContainer,
  cxTextEdit, {dxSkinsdxBarPainter,} dxBar, dxRibbonRadialMenu, cxCheckBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit,
  cxTimeEdit, cxDBEdit, cxMaskEdit, cxCalendar, cxLabel, cxGroupBox, cxButtons,
  cxGridBandedTableView, cxGridDBBandedTableView, cxFilterControl,
  cxDBFilterControl, cxDBExtLookupComboBox, cxGridCustomPopupMenu,
  cxGridPopupMenu, ImgList, cxImageComboBox, cxRadioGroup, dxCore, cxDateUtils,
  FormAutoScaler, DBClient, AdvSplitter,
  AdvDateTimePicker, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  ZSqlUpdate, JvExComCtrls, JvDateTimePicker, AdvCombo, Lucombo, dblucomb,
  AdvDBLookupComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxSplitter, sDialogs, func_Genericas;

  function keyFiltroTdbedit (tdb:TJvDotNetDBEdit;tecla:char):boolean;
  type
    Evalidaciones = class(Exception)
  end;                                                        
type
  TfrmEmpleadosGuardias = class(TForm)
  ds_Guardias: TDataSource;
  qryGuardias: TZQuery;
  PopupImprimir: TPopupMenu;
  frxReporte: TfrxReport;
  frxdsMovtosGuardias: TfrxDBDataset;
  qryReporteMovtosGuardias: TZQuery;
  qryGuardiasiIdGuardia: TIntegerField;
  qryGuardiasdFechaInicial: TDateField;
  qryGuardiasdFechaFinal: TDateField;
  qryGuardiassIdFolio: TStringField;
  qryGuardiassObservaciones: TStringField;
  qryGuardiassTipoGuardia: TStringField;
  PanelFiltro: TPanel;
  dsOrdenes: TDataSource;
  Panel1: TPanel;
  zqryEmpleados: TZQuery;
  zqryGuardiasMovtos: TZQuery;
  dsGuardiasMovtos: TDataSource;
  zqryGuardiasMovtossNumeroOrden: TStringField;
  zqryGuardiasMovtosiIdGuardia: TIntegerField;
  zqryGuardiasMovtossObservaciones: TStringField;
  zqryGuardiasMovtossIdFolio: TStringField;
  zqryGuardiasMovtosdescripcion_guardia: TStringField;
    TAsignar_PersonalG: TPanel;
  cmdAceptar: TButton;
  cmdCancelar: TButton;
  cmdAgregar: TBitBtn;
  cmdEliminar: TBitBtn;
  zqryListaEmpleados: TZQuery;
  ds_ListaEmpleados: TDataSource;
  rxEmpleados: TRxMemoryData;
  ds_plataforma: TDataSource;
  zqryPlataforma: TZQuery;
  zqryGuardiasMovtosdFechaInicial: TDateField;
  zqryGuardiasMovtosdFechaFinal: TDateField;
  ds_rxEmpleados: TDataSource;
  rxEmpleadossIdEmpleado: TStringField;
  rxEmpleadossNombre: TStringField;
  rxEmpleadossPuesto: TStringField;
  PanelGuardia: tpanel;
  dFechaSubidaGuardia: TDBDateTimePicker;
  dFechaBajadaGuardia: TDBDateTimePicker;
  sTipoGuardia: TComboBox;
  Label9: TLabel;
  Label7: TLabel;
  Label10: TLabel;
  Label8: TLabel;
  Label6: TLabel;
  sFolioGuardia: TEdit;
  sNombreGuardia: TEdit;
  zqryGuardiasMovtossTipoGuardia: TStringField;
  ds_proyectos: TDataSource;
  zqryProyectos: TZQuery;
  ds_pernocta: TDataSource;
  zqryPernocta: TZQuery;
  GroupBox1: TGroupBox;
  RBPlataformas: TRadioButton;
  RbProyectos: TRadioButton;
  RBPernoctas: TRadioButton;
  RBTodos: TRadioButton;
  MemoryCalendario: TRxMemoryData;
  MemoryCalendarioDmes: TIntegerField;
  MemoryCalendarioDmes2: TIntegerField;
  MemoryCalendarioDDias: TIntegerField;
  MemoryCalendariosidplataforma: TStringField;
  MemoryCalendarioorden_trabajo: TStringField;
  MemoryCalendariosidpernocta: TStringField;
  MemoryCalendariosidempleado: TStringField;
  MemoryCalendariospuesto: TStringField;
  MemoryCalendarionombrecompleto: TStringField;
  MemoryCalendariodFechaSubida: TDateField;
  MemoryCalendariodFechaBajada: TDateField;
  MemoryCalendariosIdFolio: TStringField;
  grid_catalogo_maestro: TcxGrid;
  BView_catalogo_maestro: TcxGridDBTableView;
  grid_catalogo_maestroLevel1: TcxGridLevel;
  Button1: TButton;
  ZQGuardias: TZQuery;
  dsZQGuardias: TDataSource;
  GB_Guardia: tpanel;
  Button3: TButton;
  Button4: TButton;
  Guardias: TcxGrid;
  BViewGuardias: TcxGridDBTableView;
  cxGridLevel1: TcxGridLevel;
  ZQGuardiasIdGuardia: TIntegerField;
  ZQGuardiasCodigoGuardia: TStringField;
  ZQGuardiasTituloGuardia: TStringField;
  ZQGuardiasFechaInicio: TDateField;
  ZQGuardiasFechaTermino: TDateField;
  ZQGuardiasIdPeriodosGuardia: TIntegerField;
  ZQGuardiasIdTipoNomina: TIntegerField;
  BViewGuardiasIdPeriodosGuardia1: TcxGridDBColumn;
  BViewGuardiasIdGuardia1: TcxGridDBColumn;
  BViewGuardiasCodigoGuardia1: TcxGridDBColumn;
  BViewGuardiasTituloGuardia1: TcxGridDBColumn;
  BViewGuardiasFechaInicio1: TcxGridDBColumn;
  BViewGuardiasFechaTermino1: TcxGridDBColumn;
  BViewGuardiasIdTipoNomina1: TcxGridDBColumn;
  iFolio_Periodo: TcxTextEdit;
  zqryGuardiasMovtosID_PeriodoGuardia: TIntegerField;
  zqryOrdenes: TZQuery;
  zqryOrdenessContrato: TStringField;
  zqryOrdenessIdFolio: TStringField;
  zqryOrdenessNumeroOrden: TStringField;
  zqryOrdenessDescripcionCorta: TStringField;
  zqryOrdenessOficioAutorizacion: TStringField;
  zqryOrdenesmDescripcion: TMemoField;
  zqryOrdenessIdTipoOrden: TStringField;
  zqryOrdenessApoyo: TStringField;
  zqryOrdenessIdPlataforma: TStringField;
  zqryOrdenessIdPernocta: TStringField;
  zqryOrdenesdFiProgramado: TDateField;
  zqryOrdenesdFfProgramado: TDateField;
  zqryOrdenescIdStatus: TStringField;
  zqryOrdenesmComentarios: TMemoField;
  zqryOrdenessFormato: TStringField;
  zqryOrdenesiConsecutivo: TIntegerField;
  zqryOrdenesiConsecutivoTierra: TIntegerField;
  zqryOrdenesiJornada: TIntegerField;
  zqryOrdeneslGeneraAnexo: TStringField;
  zqryOrdeneslGeneraConsumibles: TStringField;
  zqryOrdeneslGeneraPersonal: TStringField;
  zqryOrdeneslGeneraEquipo: TStringField;
  zqryOrdenessDepsolicitante: TStringField;
  zqryOrdenesdFechaInicioT: TDateField;
  zqryOrdenesdFechaSitioM: TDateField;
  zqryOrdenessEquipo: TStringField;
  zqryOrdenessPozo: TStringField;
  zqryOrdenesdFechaElaboracion: TDateField;
  zqryOrdenessPuestoPep: TStringField;
  zqryOrdenessFirmantePep: TStringField;
  zqryOrdenessPuestocia: TStringField;
  zqryOrdenessFirmantecia: TStringField;
  zqryOrdeneslMostrarAvanceProgramado: TStringField;
  zqryOrdenessTipoOrden: TStringField;
  zqryOrdenesbAvanceFrente: TStringField;
  zqryOrdenesbAvanceContrato: TStringField;
  zqryOrdenesbComentarios: TStringField;
  zqryOrdenesbPermisos: TStringField;
  zqryOrdenesbTipoAdmon: TStringField;
  zqryOrdenesbCostaFuera: TStringField;
  zqryOrdenessTipoPrograma: TStringField;
  zqryOrdenessTipoImpresionActividad: TStringField;
  zqryOrdenessTipoAvanceAdmon: TStringField;
  zqryOrdenesiDecimales: TIntegerField;
  zqryOrdenesiNiveles: TIntegerField;
  zqryOrdeneslImprimeProgramado: TStringField;
  zqryOrdeneslImprimeFisico: TStringField;
  zqryOrdeneslImprimePlaticas: TStringField;
  zqryOrdeneslImprimePersonalTM: TStringField;
  zqryOrdeneslPersonalxPartida: TStringField;
  zqryOrdeneslImprimeFases: TStringField;
  zqryOrdeneslMostrarPartidasReportes: TStringField;
  zqryOrdeneslMostrarPartidasGeneradores: TStringField;
  zqryOrdenesdFechaIniPReportes: TDateField;
  zqryOrdenesdFechaFinPReportes: TDateField;
  zqryOrdenesdFechaIniPGeneradores: TDateField;
  zqryOrdenesdFechaFinPGeneradores: TDateField;
  zqryOrdenessPedidoAsociado: TStringField;
  zqryOrdenessIdNumeroCuenta: TStringField;
  zqryListaEmpleadossIdEmpleado: TStringField;
  zqryListaEmpleadossNombre: TStringField;
  zqryListaEmpleadossPuesto: TStringField;
  BView_catalogo_maestrosIdEmpleado1: TcxGridDBColumn;
  BView_catalogo_maestrosNombre1: TcxGridDBColumn;
  BView_catalogo_maestrosPuesto1: TcxGridDBColumn;
  AutorizarGuardia1: TMenuItem;
  zqryOrdenessIdCompania: TStringField;
    TBitacora_Seguimiento: TPanel;
  cxdbfltrcntrl1: TcxDBFilterControl;
  pnl2: TPanel;
  btnPDFagrega: TcxButton;
  GrupoSalir: TcxGroupBox;
  lbl1: TcxLabel;
  dFechaSalir: TcxDBDateEdit;
  lbl2: TcxLabel;
  dHoSaSal: TcxDBTimeEdit;
  RegresoLabores: TcxGroupBox;
  cxLabel1: TcxLabel;
  dFechaRegreso: TcxDBDateEdit;
  cxLabel2: TcxLabel;
  tHoraReEntra: TcxDBTimeEdit;
  lbl3: TcxLabel;
  TipoMovimiento: TcxDBLookupComboBox;
  clima: TcxCheckBox;
  dxbrSeguimiento: TdxBarManager;
  dxBtnGuardar: TdxBarLargeButton;
  dxBtnImp: TdxBarLargeButton;
  dxBtnAbrir1: TdxBarLargeButton;
  dxbrgrp1: TdxBarGroup;
  dsSeguimiento: TDataSource;
  dsTipoMovto: TDataSource;
  zqryTipoMovto: TZQuery;
  zqryTipoMovtoiIdTipoMovto: TIntegerField;
  zqryTipoMovtosDescripcion: TStringField;
  zqrySeguimientoPersonal: TZQuery;
  zqrySeguimientoPersonalid: TIntegerField;
  zqrySeguimientoPersonaliIdGuardia: TIntegerField;
  zqrySeguimientoPersonalsIdPersonal: TStringField;
  zqrySeguimientoPersonaliIdTipoMovto: TIntegerField;
  zqrySeguimientoPersonaldFechaSalidaLaborar: TDateField;
  zqrySeguimientoPersonaltHoraSalidaSalirLaborar: TTimeField;
  zqrySeguimientoPersonaldFechaRegresoLaborar: TDateField;
  zqrySeguimientoPersonaltHoraRegresoEntradaLaborar: TTimeField;
  Insertar1: TdxBarButton;
  Editar1: TdxBarButton;
  Registrar1: TdxBarButton;
  Can1: TdxBarButton;
  Eliminar1: TdxBarButton;
  Refresh1: TdxBarButton;
  Copy1: TdxBarButton;
  Paste1: TdxBarButton;
  Salir1: TdxBarButton;
  qryReporteMovtosGuardiasiIdGuardia: TIntegerField;
  qryReporteMovtosGuardiasdFechaInicial: TDateField;
  qryReporteMovtosGuardiasdFechaFinal: TDateField;
  qryReporteMovtosGuardiassIdFolio: TStringField;
  qryReporteMovtosGuardiassTipoGuardia: TStringField;
  qryReporteMovtosGuardiasdFechaSubida: TDateField;
  qryReporteMovtosGuardiasdFechaBajada: TDateField;
  qryReporteMovtosGuardiassObservaciones: TStringField;
  qryReporteMovtosGuardiassNumeroOrden: TStringField;
  qryReporteMovtosGuardiassContrato: TStringField;
  qryReporteMovtosGuardiassIdEmpleado: TStringField;
  qryReporteMovtosGuardiassNombreCompleto: TStringField;
  qryReporteMovtosGuardiassImss: TStringField;
  qryReporteMovtosGuardiassrfc: TStringField;
  qryReporteMovtosGuardiassCurp: TStringField;
  qryReporteMovtosGuardiasdSalarioIntegrado: TFloatField;
  qryReporteMovtosGuardiassPuesto: TStringField;
  qryReporteMovtosGuardiasDProyecto: TMemoField;
  qryReporteMovtosGuardiasDPlataforma: TStringField;
  qryReporteMovtosGuardiasDPernocta: TStringField;
  frxdbdsEmpleado: TfrxDBDataset;
  frxdbdsProyecto: TfrxDBDataset;
  frxdbdsHoras: TfrxDBDataset;
  ReporteHoras: TfrxReport;
  zqryEmpleadosiIdGuardiaMovtos: TIntegerField;
  zqryEmpleadosiIdGuardia: TIntegerField;
  zqryEmpleadossIdEmpleado: TStringField;
  zqryEmpleadosdFechaSubida: TDateField;
  zqryEmpleadosdFechaBajada: TDateField;
  zqryEmpleadossObservaciones: TStringField;
  zqryEmpleadossIdPlataforma: TStringField;
  zqryEmpleadossNumeroOrden: TStringField;
  zqryEmpleadossIdPernocta: TStringField;
  zqryEmpleadossContrato: TStringField;
  zqryEmpleadossStatus: TStringField;
  zqryEmpleadossComentario: TStringField;
  zqryEmpleadosID_GuardiaPeriodo: TIntegerField;
  zqryEmpleadosNombreCompleto: TStringField;
  zqryEmpleadossIdFolio: TStringField;
  zqryEmpleadosDescripcion_Pernocta: TStringField;
  zqryEmpleadosDescripcion_Plataforma: TStringField;
  zqryEmpleadosdias_trabajados: TIntegerField;
  zqrySeguimientoPersonaliId_PeriodoGuardia: TIntegerField;
  zqrySeguimientoPersonalDescripcion: TStringField;
  zqrySeguimientoPersonalbJustificacion: TBlobField;
  RxCambio_Guardia: TRxMemoryData;
  ZQEmpleados_Guardias: TZQuery;
  dsZQEmpleados_Guardias: TDataSource;
  dsRxCambio_Guardia: TDataSource;
  zqryEmpleadosiId_Puesto: TIntegerField;
    zqryListaEmpleadosiIdCargo: TIntegerField;
  rxEmpleadosiId_Puesto: TIntegerField;
  ZQGuardiasActivas: TZQuery;
  dsZQGuardiasActividas: TDataSource;
  RxCambio_GuardiaNo: TIntegerField;
  RxCambio_GuardiaIDGuardia: TIntegerField;
  RxCambio_GuardiaPeriodoGuardia: TIntegerField;
  RxCambio_GuardiasIdEmpleado: TStringField;
  RxCambio_GuardiaNombreCompleto: TStringField;
  RxCambio_GuardiaIDGuardiaN: TIntegerField;
  RxCambio_GuardiaPeriodoGuardiaN: TIntegerField;
  Label13: TLabel;
  Label14: TLabel;
  Label15: TLabel;
  Plataforma: TDBLookupComboBox;
  Proyecto: TDBLookupComboBox;
  Pernocta: TDBLookupComboBox;
  btnAgregaPlataforma: TButton;
  btnP: TButton;
  btnPer: TButton;
  zqryGuardiasMovtosAutorizar: TStringField;
  RxCambio_GuardiaiId_Puesto: TIntegerField;
  zqryGuardiasMovtossIdPlataforma: TStringField;
  zqryGuardiasMovtossIdPernocta: TStringField;
  GuardiaTodas: TZQuery;
  DataSource1: TDataSource;
  dxBarButton1: TdxBarButton;
  dxBarButton2: TdxBarButton;
  dxBarButton3: TdxBarButton;
  dxBarButton4: TdxBarButton;
  dxBarButton5: TdxBarButton;
  dxBarButton6: TdxBarButton;
  dxBarButton7: TdxBarButton;
  dxBarButton8: TdxBarButton;
  zqryEmpleadossTranferido: TStringField;
  ImprimirPersonalenlaGuardia1: TMenuItem;
  GuardiaTodasiIdGuardia: TIntegerField;
  GuardiaTodasdFechaInicial: TDateField;
  GuardiaTodasdFechaFinal: TDateField;
  GuardiaTodassIdFolio: TStringField;
  GuardiaTodassObservaciones: TStringField;
  GuardiaTodassTipoGuardia: TStringField;
  GuardiaTodassNumeroOrdenAux: TStringField;
  GuardiaTodassStatusGuardia: TStringField;
  GuardiaTodassComentario: TStringField;
  GuardiaTodasID_PeriodoGuardia: TIntegerField;
  GuardiaTodassIdPlataforma: TStringField;
  GuardiaTodassNumeroOrden: TStringField;
  GuardiaTodassIdPernocta: TStringField;
  GuardiaTodasAutorizar: TStringField;
  zqryPlataformasIdPlataforma: TStringField;
  zqryPlataformasDescripcion: TStringField;
  zqryPlataformalStatus: TStringField;
  zqryPlataformasImagen: TStringField;
  zqryPlataformasIdDistrito: TStringField;
  zqryProyectossContrato: TStringField;
  zqryProyectossIdFolio: TStringField;
  zqryProyectossNumeroOrden: TStringField;
  zqryProyectossDescripcionCorta: TStringField;
  zqryProyectossOficioAutorizacion: TStringField;
  zqryProyectosmDescripcion: TMemoField;
  zqryProyectossIdTipoOrden: TStringField;
  zqryProyectossApoyo: TStringField;
  zqryProyectossIdPlataforma: TStringField;
  zqryProyectossIdPernocta: TStringField;
  zqryProyectosdFiProgramado: TDateField;
  zqryProyectosdFfProgramado: TDateField;
  zqryProyectoscIdStatus: TStringField;
  zqryProyectosmComentarios: TMemoField;
  zqryProyectossFormato: TStringField;
  zqryProyectosiConsecutivo: TIntegerField;
  zqryProyectosiConsecutivoTierra: TIntegerField;
  zqryProyectosiJornada: TIntegerField;
  zqryProyectoslGeneraAnexo: TStringField;
  zqryProyectoslGeneraConsumibles: TStringField;
  zqryProyectoslGeneraPersonal: TStringField;
  zqryProyectoslGeneraEquipo: TStringField;
  zqryProyectossDepsolicitante: TStringField;
  zqryProyectosdFechaInicioT: TDateField;
  zqryProyectosdFechaSitioM: TDateField;
  zqryProyectossEquipo: TStringField;
  zqryProyectossPozo: TStringField;
  zqryProyectosdFechaElaboracion: TDateField;
  zqryProyectossPuestoPep: TStringField;
  zqryProyectossFirmantePep: TStringField;
  zqryProyectossPuestocia: TStringField;
  zqryProyectossFirmantecia: TStringField;
  zqryProyectoslMostrarAvanceProgramado: TStringField;
  zqryProyectossTipoOrden: TStringField;
  zqryProyectosbAvanceFrente: TStringField;
  zqryProyectosbAvanceContrato: TStringField;
  zqryProyectosbComentarios: TStringField;
  zqryProyectosbPermisos: TStringField;
  zqryProyectosbTipoAdmon: TStringField;
  zqryProyectosbCostaFuera: TStringField;
  zqryProyectossTipoPrograma: TStringField;
  zqryProyectossTipoImpresionActividad: TStringField;
  zqryProyectossTipoAvanceAdmon: TStringField;
  zqryProyectosiDecimales: TIntegerField;
  zqryProyectosiNiveles: TIntegerField;
  zqryProyectoslImprimeProgramado: TStringField;
  zqryProyectoslImprimeFisico: TStringField;
  zqryProyectoslImprimePlaticas: TStringField;
  zqryProyectoslImprimePersonalTM: TStringField;
  zqryProyectoslPersonalxPartida: TStringField;
  zqryProyectoslImprimeFases: TStringField;
  zqryProyectoslMostrarPartidasReportes: TStringField;
  zqryProyectoslMostrarPartidasGeneradores: TStringField;
  zqryProyectosdFechaIniPReportes: TDateField;
  zqryProyectosdFechaFinPReportes: TDateField;
  zqryProyectosdFechaIniPGeneradores: TDateField;
  zqryProyectosdFechaFinPGeneradores: TDateField;
  zqryProyectossPedidoAsociado: TStringField;
  zqryProyectossIdNumeroCuenta: TStringField;
  zqryProyectossIdCompania: TStringField;
  zqryPernoctasIdPernocta: TStringField;
  zqryPernoctasDescripcion: TStringField;
  zqryPernoctasClasificacion: TStringField;
  cmdAceptarGuardia: TcxButton;
  cmdCancelarGuardia: TcxButton;
  Repositorio1: TcxGridViewRepository;
  Guardias_Activas: TcxGridDBBandedTableView;
  Guardias_ActivassObservaciones1: TcxGridDBBandedColumn;
  Guardias_ActivasID_PeriodoGuardia1: TcxGridDBBandedColumn;
    Guardias_ActivassNumeroOrden1: TcxGridDBBandedColumn;
  Guardias_Activas1: TcxGridDBBandedTableView;
  Guardias_Activas1sObservaciones1: TcxGridDBBandedColumn;
  Guardias_Activas1ID_PeriodoGuardia1: TcxGridDBBandedColumn;
  Guardias_Activas1sNumeroOrden1: TcxGridDBBandedColumn;
  Baja_Personal: TdxBarButton;
  zqryGuardiasMovtosiId_Puesto: TIntegerField;
  Z1: TZQuery;
  iIdTipoNomina: TcxTextEdit;
  zqryGuardiasMovtosIdTipoNomina: TIntegerField;
  GuardiaTodasIdTipoNomina: TIntegerField;
  qryGuardiassNumeroOrdenAux: TStringField;
  qryGuardiassStatusGuardia: TStringField;
  qryGuardiassComentario: TStringField;
  qryGuardiasID_PeriodoGuardia: TIntegerField;
  qryGuardiassIdPlataforma: TStringField;
  qryGuardiassNumeroOrden: TStringField;
  qryGuardiassIdPernocta: TStringField;
  qryGuardiasAutorizar: TStringField;
  qryGuardiasIdTipoNomina: TIntegerField;
  rxEmpleadosdSueldo: TIntegerField;
  zqryListaEmpleadosdSueldo: TFloatField;
  PopupMenu1: TPopupMenu;
  ContrararPersonal1: TMenuItem;
  Imprimir1: TMenuItem;
  ReglamentoPlataformas1: TMenuItem;
  ImprimirFiniquito1: TMenuItem;
  frxNomina: TfrxDBDataset;
  rxNomina: TRxMemoryData;
  rxNominaSueldo: TFloatField;
  rxNominaPrimaDom: TFloatField;
  rxNominaDiaFestivo: TFloatField;
  rxNominaVacaciones: TFloatField;
  rxNominaPrimaVac: TFloatField;
  rxNominaAguinaldo: TFloatField;
  rxNominaDeducciones: TFloatField;
  rxNominaNeto: TFloatField;
  qryFlEstatus: TZReadOnlyQuery;
  StringField1: TStringField;
  qryFlEstatusiIdEstatus: TLargeintField;
  OpenPictureDialog1: TOpenPictureDialog;
  ds_flEstatus: TDataSource;
    zQEmpleados: TZQuery;
    zQEmpleadosIdPersonal: TIntegerField;
    zQEmpleadossIdEmpleado: TStringField;
  d: TIntegerField;
    zQEmpleadossNombreCompleto: TStringField;
    zQEmpleadossRfc: TStringField;
    zQEmpleadossCiudad: TStringField;
    zQEmpleadossTelefono: TStringField;
    zQEmpleadosseMail: TStringField;
    zQEmpleadosdSueldo: TFloatField;
    zQEmpleadossCuenta: TStringField;
    zQEmpleadossCuentaInterbancaria: TStringField;
    zQEmpleadossCurp: TStringField;
    zQEmpleadossImss: TStringField;
    zQEmpleadossEstadoCivil: TStringField;
    zQEmpleadosdFechaNacimiento: TDateField;
    zQEmpleadosiId_Puesto: TIntegerField;
    zQEmpleadossLibretaMar: TStringField;
    zQEmpleadossCartilla: TStringField;
    zQEmpleadossCedulaProfesional: TStringField;
    zQEmpleadossLugarNacimiento: TStringField;
    zQEmpleadossTipoSangre: TStringField;
    zQEmpleadoslImprimeNomina: TStringField;
    zQEmpleadoslSexo: TStringField;
    zQEmpleadosiIdhorario: TIntegerField;
    zQEmpleadosidorganizacion: TIntegerField;
    zQEmpleadossCP: TStringField;
    zQEmpleadossApellidoPaterno: TStringField;
    zQEmpleadossApellidoMaterno: TStringField;
    zQEmpleadossNoCreditoInfonavit: TStringField;
    zQEmpleadosiIdProfesiones: TIntegerField;
    zQEmpleadosid_entidadeseducativas: TIntegerField;
    zQEmpleadossTelefonoCelular: TStringField;
    zQEmpleadossNombre_Emergencia: TStringField;
    zQEmpleadossParentesco_Emergencia: TStringField;
    zQEmpleadossNumero_Emergencia: TStringField;
    zQEmpleadosiIdRegistroPatronal: TIntegerField;
    zQEmpleadosiIdPeriodo: TIntegerField;
    zQEmpleadosiIdDiasdescanso: TIntegerField;
    zQEmpleadosprofesion: TStringField;
  frx_zqEmpleados: TfrxDBDataset;
  frx_ReporteEmpleados: TfrxDBDataset;
  qryEmpleados: TZReadOnlyQuery;
  qryEmpleadosIdPersonal: TIntegerField;
  qryEmpleadossIdEmpleado: TStringField;
  qryEmpleadosiIdEstatus: TIntegerField;
  qryEmpleadossNombreCompleto: TStringField;
  qryEmpleadossRfc: TStringField;
  qryEmpleadossCiudad: TStringField;
  qryEmpleadossTelefono: TStringField;
  qryEmpleadosseMail: TStringField;
  qryEmpleadosdSueldo: TFloatField;
  qryEmpleadossCuenta: TStringField;
  qryEmpleadossCuentaInterbancaria: TStringField;
  qryEmpleadossCurp: TStringField;
  qryEmpleadossImss: TStringField;
  qryEmpleadossEstadoCivil: TStringField;
  qryEmpleadosdFechaNacimiento: TDateField;
  qryEmpleadosiId_Puesto: TIntegerField;
  qryEmpleadossLibretaMar: TStringField;
  qryEmpleadossCartilla: TStringField;
  qryEmpleadossCedulaProfesional: TStringField;
  qryEmpleadossLugarNacimiento: TStringField;
  qryEmpleadossTipoSangre: TStringField;
  qryEmpleadoslImprimeNomina: TStringField;
  qryEmpleadoslSexo: TStringField;
  qryEmpleadosiIdhorario: TIntegerField;
  qryEmpleadossStatus: TStringField;
  qryEmpleadosidorganizacion: TIntegerField;
  qryEmpleadosiIdEstatusDiario: TIntegerField;
  qryEmpleadossCP: TStringField;
  qryEmpleadossApellidoPaterno: TStringField;
  qryEmpleadossApellidoMaterno: TStringField;
  qryEmpleadossNoCreditoInfonavit: TStringField;
  qryEmpleadosiIdProfesiones: TIntegerField;
  qryEmpleadosid_entidadeseducativas: TIntegerField;
  qryEmpleadossTelefonoCelular: TStringField;
  qryEmpleadossNombre_Emergencia: TStringField;
  qryEmpleadossParentesco_Emergencia: TStringField;
  qryEmpleadossNumero_Emergencia: TStringField;
  qryEmpleadosiddepartamento: TIntegerField;
  qryEmpleadosIdOrganizacion_1: TIntegerField;
  qryEmpleadoscodigodepartamento_1: TStringField;
  qryEmpleadostitulodepartamento: TStringField;
  qryEmpleadosdescripcion: TBlobField;
  qryEmpleadoscomentarios: TBlobField;
  qryEmpleadosidarbol: TIntegerField;
  qryEmpleadosidpadre: TIntegerField;
  qryEmpleadosnivel: TSmallintField;
  qryEmpleadosherencia: TStringField;
  qryEmpleadosactivo: TStringField;
  qryEmpleadossTipoArea: TStringField;
  qryEmpleadossMascara: TStringField;
  qryEmpleadosPuestoEmpleado: TStringField;
  qryEmpleadosiIdRegistroPatronal: TIntegerField;
  qryEmpleadosiIdPeriodo: TIntegerField;
  qryEmpleadosiIdDiasDescanso: TIntegerField;
  DataSource2: TDataSource;
  frxReglamentosPlataforma: TfrxReport;
  zqEmpresa: TZQuery;
  zqEmpresasNombre: TStringField;
  zqEmpresasNombreCorto: TStringField;
  zqEmpresasRfc: TStringField;
  zqEmpresasDireccion1: TStringField;
  zqEmpresasDireccion2: TStringField;
  zqEmpresasDireccion3: TStringField;
  zqEmpresasSlogan: TStringField;
  zqEmpresasPiePagina: TStringField;
  zqEmpresabImagen: TBlobField;
  zqEmpresasTelefono: TStringField;
  zqEmpresasFax: TStringField;
  zqEmpresasEmail: TStringField;
  zqEmpresasWeb: TStringField;
  zqEmpresasRepresentante: TStringField;
  zqEmpresasFirmante2: TStringField;
  zqEmpresasFirmante3: TStringField;
  zqEmpresasCiudad: TStringField;
  frxDBDEmpresa: TfrxDBDataset;
    frxcontratos: TfrxReport;
  dszQEmpleados: TDataSource;
  zq_Guardias: TZQuery;
  zq_GuardiasiIdGuardia: TIntegerField;
  zq_GuardiassIdFolio: TStringField;
  zq_GuardiassObservaciones: TStringField;
  zq_GuardiasdFechaInicial: TDateField;
  zq_GuardiasdFechaFinal: TDateField;
  frxDBDataset1: TfrxDBDataset;
  zqHistorial: TZQuery;
  zqHistorialiIdContrato: TIntegerField;
  zqHistorialsIdEmpleado: TStringField;
  zqHistorialdFechaInicio: TDateField;
  zqHistorialdFechaTermino: TDateField;
  zqHistorialsTipoContrato: TStringField;
  zqHistorialsPeriodoLaboral: TStringField;
  zqHistorialsIdGuardia: TStringField;
  ds_historialcontrato: TDataSource;
  zqHistorialID_PeriodoGuardia: TIntegerField;
  ConfirmarPersonal1: TMenuItem;
  zqryEmpleadosReprogramacion: TDateField;
  zqryEmpleadossConfirmado: TStringField;
    dsRxGuardiaAnterior: TDataSource;
    dsRxGuardiaNueva: TDataSource;
    RxGuardiaNueva: TRxMemoryData;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField5: TIntegerField;
    raerGuardiaAnterior1: TMenuItem;
    cxImageList1: TcxImageList;
    RxGuardiaAnterior: TZQuery;
    RxGuardiaNuevadSueldo: TIntegerField;
    cxLabel3: TcxLabel;
    TipoPersonal: TcxImageComboBox;
    zqryListaEmpleadossStatusTipoPersonal: TStringField;
    zqryListaEmpleadossStatusPersonal: TStringField;
    rxEmpleadossStatusTipoPersonal: TStringField;
    rxEmpleadossStatusPersonal: TStringField;
    RxGuardiaAnterioriIdGuardiaMovtos: TIntegerField;
    RxGuardiaAnteriorID_GuardiaPeriodo: TIntegerField;
    RxGuardiaAnterioriIdGuardia: TIntegerField;
    RxGuardiaAnteriorsIdEmpleado: TStringField;
    RxGuardiaAnteriorsObservaciones: TStringField;
    RxGuardiaAnteriorNombreCompleto: TStringField;
    RxGuardiaAnterioriId_Puesto: TIntegerField;
    RxGuardiaAnteriorsPuesto: TStringField;
    RxGuardiaAnteriordSueldo: TFloatField;
    RxGuardiaAnteriordSalarioDiario: TFloatField;
    RxGuardiaAnteriordSalarioIntegrado: TFloatField;
    ZQNomina_Guardia: TZQuery;zqryEmpleadossStatusPersonal: TStringField;Z: TcxTextEdit;
    zqryEmpleadossPuesto: TStringField;
    cxButton3: TcxButton;
    zqryEmpleadoscontratado: TStringField;
    ZQRGuardias: TZQuery;
    ZQREmpleados: TZQuery;
    dsZQRGuardias: TDataSource;
    dsZQREmpleados: TDataSource;
    ZQROrdenes: TZQuery;
    dsZQROrdenes: TDataSource;
    ReprogramacindeGuardias1: TMenuItem;
    ZQROrdenessContrato: TStringField;
    ZQROrdenessIdFolio: TStringField;
    ZQROrdenessNumeroOrden: TStringField;
    ZQROrdenessDescripcionCorta: TStringField;
    ZQROrdenessOficioAutorizacion: TStringField;
    ZQROrdenesmDescripcion: TMemoField;
    ZQROrdenessIdTipoOrden: TStringField;
    ZQROrdenessApoyo: TStringField;
    ZQROrdenessIdPlataforma: TStringField;
    ZQROrdenessIdPernocta: TStringField;
    ZQROrdenesdFiProgramado: TDateField;
    ZQROrdenesdFfProgramado: TDateField;
    ZQROrdenescIdStatus: TStringField;
    ZQROrdenesmComentarios: TMemoField;
    ZQROrdenessFormato: TStringField;
    ZQROrdenesiConsecutivo: TIntegerField;
    ZQROrdenesiConsecutivoTierra: TIntegerField;
    ZQROrdenesiJornada: TIntegerField;
    ZQROrdeneslGeneraAnexo: TStringField;
    ZQROrdeneslGeneraConsumibles: TStringField;
    ZQROrdeneslGeneraPersonal: TStringField;
    ZQROrdeneslGeneraEquipo: TStringField;
    ZQROrdenessDepsolicitante: TStringField;
    ZQROrdenesdFechaInicioT: TDateField;
    ZQROrdenesdFechaSitioM: TDateField;
    ZQROrdenessEquipo: TStringField;
    ZQROrdenessPozo: TStringField;
    ZQROrdenesdFechaElaboracion: TDateField;
    ZQROrdenessPuestoPep: TStringField;
    ZQROrdenessFirmantePep: TStringField;
    ZQROrdenessPuestocia: TStringField;
    ZQROrdenessFirmantecia: TStringField;
    ZQROrdeneslMostrarAvanceProgramado: TStringField;
    ZQROrdenessTipoOrden: TStringField;
    ZQROrdenesbAvanceFrente: TStringField;
    ZQROrdenesbAvanceContrato: TStringField;
    ZQROrdenesbComentarios: TStringField;
    ZQROrdenesbPermisos: TStringField;
    ZQROrdenesbTipoAdmon: TStringField;
    ZQROrdenesbCostaFuera: TStringField;
    ZQROrdenessTipoPrograma: TStringField;
    ZQROrdenessTipoImpresionActividad: TStringField;
    ZQROrdenessTipoAvanceAdmon: TStringField;
    ZQROrdenesiDecimales: TIntegerField;
    ZQROrdenesiNiveles: TIntegerField;
    ZQROrdeneslImprimeProgramado: TStringField;
    ZQROrdeneslImprimeFisico: TStringField;
    ZQROrdeneslImprimePlaticas: TStringField;
    ZQROrdeneslImprimePersonalTM: TStringField;
    ZQROrdeneslPersonalxPartida: TStringField;
    ZQROrdeneslImprimeFases: TStringField;
    ZQROrdeneslMostrarPartidasReportes: TStringField;
    ZQROrdeneslMostrarPartidasGeneradores: TStringField;
    ZQROrdenesdFechaIniPReportes: TDateField;
    ZQROrdenesdFechaFinPReportes: TDateField;
    ZQROrdenesdFechaIniPGeneradores: TDateField;
    ZQROrdenesdFechaFinPGeneradores: TDateField;
    ZQROrdenessPedidoAsociado: TStringField;
    ZQROrdenessIdNumeroCuenta: TStringField;
    ZQROrdenessIdCompania: TStringField;
    ZQRGuardiasiIdGuardia: TIntegerField;
    ZQRGuardiasdFechaInicial: TDateField;
    ZQRGuardiasdFechaFinal: TDateField;
    ZQRGuardiassIdFolio: TStringField;
    ZQRGuardiassObservaciones: TStringField;
    ZQRGuardiassTipoGuardia: TStringField;
    ZQRGuardiassNumeroOrdenAux: TStringField;
    ZQRGuardiassStatusGuardia: TStringField;
    ZQRGuardiassComentario: TStringField;
    ZQRGuardiasID_PeriodoGuardia: TIntegerField;
    ZQRGuardiassIdPlataforma: TStringField;
    ZQRGuardiassNumeroOrden: TStringField;
    ZQRGuardiassIdPernocta: TStringField;
    ZQRGuardiasAutorizar: TStringField;
    ZQRGuardiasIdTipoNomina: TIntegerField;
    ZQRGuardiasReprogramacion: TDateField;
    ZQNuc_Personal: TZQuery;
    ZQNuc_Personalcodigopersonal: TStringField;
    ZQNuc_PersonalIdPersonalIMSS: TIntegerField;
    ZQNuc_PersonalIdPersonal: TIntegerField;
    ZQNuc_PersonalFechaMovimiento: TDateField;
    ZQNuc_PersonalFechaRegistro: TDateTimeField;
    ZQNuc_PersonalTipoMovimiento: TStringField;
    ZQNuc_PersonalJornada: TIntegerField;
    ZQNuc_PersonalCobraFestivos: TStringField;
    ZQNuc_PersonalIdPlazaDetalle: TIntegerField;
    ZQNuc_PersonalRegistroPatronal: TStringField;
    ZQNuc_PersonalSalarioDiario: TFloatField;
    ZQNuc_PersonalSalarioIntegrado: TFloatField;
    ZQNuc_PersonalProcesado: TStringField;
    ZQNuc_PersonalIdPeriodosGuardia: TLargeintField;
    ZQNuc_PersonalIdDepartamento: TIntegerField;
    ZQNuc_PersonalIdCargo: TIntegerField;
    ZQNuc_PersonalIdTipoNomina: TIntegerField;
    ZQNuc_PersonalIdOrganizacion: TIntegerField;
    ZQNuc_PersonalDoctoAutorizacion: TBlobField;
    ZQNuc_PersonalComentarios: TMemoField;
    ZQOrdenes: TZQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    MemoField1: TMemoField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField14: TStringField;
    MemoField2: TMemoField;
    StringField15: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    DateField3: TDateField;
    DateField4: TDateField;
    StringField21: TStringField;
    StringField22: TStringField;
    DateField5: TDateField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    IntegerField4: TIntegerField;
    IntegerField6: TIntegerField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    DateField6: TDateField;
    DateField7: TDateField;
    DateField8: TDateField;
    DateField9: TDateField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    ZQGuardiasH: TZQuery;
    ZQEmpleadosH: TZQuery;
    dsZQOrdenes: TDataSource;
    dsZQGuardiasH: TDataSource;
    dsZQEmpleadosH: TDataSource;
    THistorial_Guardias: TPanel;
    cxGrid5: TcxGrid;
    Grid_HEmpleados: TcxGridDBTableView;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    DBGrid1: TDBGrid;
    cxGrid6: TcxGrid;
    Grid_HGuardias: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    HistorialdeGuardias1: TMenuItem;
    zqryEmpleadosPagado: TStringField;
    zqryEmpleadossProgramado: TStringField;
    Fecha_Subida: TcxDateEdit;
    lblFecha_Subida: TcxLabel;
    PopupMenu2: TPopupMenu;
    BajarTodoelPersonaldelaGuardia1: TMenuItem;
    frxDBEpleados: TfrxDBDataset;
    zqryEmpleadossStatusTipoPersonal: TStringField;
    ZQPersonal_Pagado: TZQuery;
    ZQPersonal_PagadoIdPersonal: TIntegerField;
    ZQPersonal_Pagadocodigopersonal: TStringField;
    ZQPersonal_PagadoIdPeriodosGuardia: TLargeintField;
    zqryEmpleadosPagado_Todo: TStringField;
    CambiodeGuardiaalPersonal1: TMenuItem;
    zqrySeguimientoPersonalsMovimiento: TStringField;
    zqrySeguimientoPersonalHTrabajada: TIntegerField;
    zqrySeguimientoPersonalHPerdidas: TIntegerField;
    rxEmpleadosFechaSubida: TDateField;
    QuitarPersonalnoconfirmado1: TMenuItem;
    ZQGuardiasActivas2: TZQuery;
    dsGuardiasActivas2: TDataSource;
    Guardias_ActivasiIdGuardia1: TcxGridDBBandedColumn;
    ZQEmpleados_Guardiasiidguardiamovtos: TIntegerField;
    ZQEmpleados_GuardiasiidGuardia: TIntegerField;
    ZQEmpleados_Guardiassidempleado: TStringField;
    ZQEmpleados_GuardiasdFechaSubida: TDateField;
    ZQEmpleados_Guardiasdfechabajada: TDateField;
    ZQEmpleados_Guardiassobservaciones: TStringField;
    ZQEmpleados_Guardiassidplataforma: TStringField;
    ZQEmpleados_Guardiassnumeroorden: TStringField;
    ZQEmpleados_Guardiassidpernocta: TStringField;
    ZQEmpleados_Guardiasscontrato: TStringField;
    ZQEmpleados_GuardiassStatus: TStringField;
    ZQEmpleados_GuardiassComentario: TStringField;
    ZQEmpleados_Guardiasid_guardiaperiodo: TIntegerField;
    ZQEmpleados_Guardiasiid_puesto: TIntegerField;
    ZQEmpleados_Guardiasstranferido: TStringField;
    ZQEmpleados_Guardiasreprogramacion: TDateField;
    ZQEmpleados_Guardiassconfirmado: TStringField;
    ZQEmpleados_GuardiasNombreCompleto: TStringField;
    ZQEmpleados_GuardiassStatusPersonal: TStringField;
    ZQEmpleados_GuardiassStatusTipoPersonal: TStringField;
    ZQEmpleados_GuardiassPuesto: TStringField;
    ZQEmpleados_GuardiassIdFolio: TStringField;
    ZQEmpleados_GuardiasDescripcion_Pernocta: TStringField;
    ZQEmpleados_GuardiasDescripcion_Plataforma: TStringField;
    ZQGuardiasActivasiIdGuardia: TIntegerField;
    ZQGuardiasActivasdFechaInicial: TDateField;
    ZQGuardiasActivasdFechaFinal: TDateField;
    ZQGuardiasActivassIdFolio: TStringField;
    ZQGuardiasActivassObservaciones: TStringField;
    ZQGuardiasActivassTipoGuardia: TStringField;
    ZQGuardiasActivassNumeroOrdenAux: TStringField;
    ZQGuardiasActivassStatusGuardia: TStringField;
    ZQGuardiasActivassComentario: TStringField;
    ZQGuardiasActivasID_PeriodoGuardia: TIntegerField;
    ZQGuardiasActivassIdPlataforma: TStringField;
    ZQGuardiasActivassNumeroOrden: TStringField;
    ZQGuardiasActivassIdPernocta: TStringField;
    ZQGuardiasActivasAutorizar: TStringField;
    ZQGuardiasActivasIdTipoNomina: TIntegerField;
    ZQGuardiasActivasReprogramacion: TDateField;
    ZQGuardiasActivas2iIdGuardia: TIntegerField;
    ZQGuardiasActivas2dFechaInicial: TDateField;
    ZQGuardiasActivas2dFechaFinal: TDateField;
    ZQGuardiasActivas2sIdFolio: TStringField;
    ZQGuardiasActivas2sObservaciones: TStringField;
    ZQGuardiasActivas2sTipoGuardia: TStringField;
    ZQGuardiasActivas2sNumeroOrdenAux: TStringField;
    ZQGuardiasActivas2sStatusGuardia: TStringField;
    ZQGuardiasActivas2sComentario: TStringField;
    ZQGuardiasActivas2ID_PeriodoGuardia: TIntegerField;
    ZQGuardiasActivas2sIdPlataforma: TStringField;
    ZQGuardiasActivas2sNumeroOrden: TStringField;
    ZQGuardiasActivas2sIdPernocta: TStringField;
    ZQGuardiasActivas2Autorizar: TStringField;
    ZQGuardiasActivas2IdTipoNomina: TIntegerField;
    ZQGuardiasActivas2Reprogramacion: TDateField;
    Guardias_Activas1iIdGuardia1: TcxGridDBBandedColumn;
    ZQEmpleadosHiIdGuardiaMovtos: TIntegerField;
    ZQEmpleadosHiIdGuardia: TIntegerField;
    ZQEmpleadosHsIdEmpleado: TStringField;
    ZQEmpleadosHdFechaSubida: TDateField;
    ZQEmpleadosHdFechaBajada: TDateField;
    ZQEmpleadosHsObservaciones: TStringField;
    ZQEmpleadosHsIdPlataforma: TStringField;
    ZQEmpleadosHsNumeroOrden: TStringField;
    ZQEmpleadosHsIdPernocta: TStringField;
    ZQEmpleadosHsContrato: TStringField;
    ZQEmpleadosHsStatus: TStringField;
    ZQEmpleadosHsComentario: TStringField;
    ZQEmpleadosHID_GuardiaPeriodo: TIntegerField;
    ZQEmpleadosHiId_Puesto: TIntegerField;
    ZQEmpleadosHsTranferido: TStringField;
    ZQEmpleadosHReprogramacion: TDateField;
    ZQEmpleadosHsConfirmado: TStringField;
    ZQEmpleadosHNombreCompleto: TStringField;
    ZQC_Ordenes: TZQuery;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    MemoField3: TMemoField;
    StringField64: TStringField;
    StringField65: TStringField;
    StringField66: TStringField;
    StringField67: TStringField;
    DateField13: TDateField;
    DateField14: TDateField;
    StringField68: TStringField;
    MemoField4: TMemoField;
    StringField69: TStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    DateField15: TDateField;
    DateField16: TDateField;
    StringField75: TStringField;
    StringField76: TStringField;
    DateField17: TDateField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    StringField96: TStringField;
    StringField97: TStringField;
    StringField98: TStringField;
    StringField99: TStringField;
    DateField18: TDateField;
    DateField19: TDateField;
    DateField20: TDateField;
    DateField21: TDateField;
    StringField100: TStringField;
    StringField101: TStringField;
    StringField102: TStringField;
    dsZQC_Ordenes: TDataSource;
    dsZQC_Guardias: TDataSource;
    ZQC_Guardias: TZQuery;
    IntegerField15: TIntegerField;
    DateField22: TDateField;
    DateField23: TDateField;
    StringField103: TStringField;
    StringField104: TStringField;
    StringField105: TStringField;
    StringField106: TStringField;
    StringField107: TStringField;
    StringField108: TStringField;
    IntegerField16: TIntegerField;
    StringField109: TStringField;
    StringField110: TStringField;
    StringField111: TStringField;
    StringField112: TStringField;
    IntegerField17: TIntegerField;
    DateField24: TDateField;
    ImprimirPersonalenlaGuardia2: TMenuItem;
    fsc_AsEGuar: TFormAutoScaler;
    strngfldZQEmpleadosHDescripcion_Plataforma: TStringField;
    strngfldZQEmpleadosHDescripcion_Pernoscta: TStringField;
    strngfldZQEmpleadosHsPuesto: TStringField;
    strngfldZQEmpleadosHsIdFolio: TStringField;
    strngfldZQEmpleadosHsStatusPersonal: TStringField;
    strngfldZQEmpleadosHcontratado: TStringField;
    strngfldZQEmpleadosHsProgramado: TStringField;
    strngfldZQEmpleadosHsStatuTipoPersonal: TStringField;
    ZQEmpleadosHdias_trabajados: TIntegerField;
    strngfldZQEmpleadosHPagado_Todo: TStringField;
    strngfldZQEmpleadosHPagado: TStringField;
    ImContAb: TMenuItem;
    Imprimirfiniquito2: TMenuItem;
    frxEmpleadosH: TfrxDBDataset;
    Recibo1: TMenuItem;
    cdDetalleSave: TZQuery;
    memPercepciones: TClientDataSet;
    memDeducciones: TClientDataSet;
    cdBuscar: TZQuery;
    cdPersonalDetalleNomina: TZQuery;
    cdConcepto: TZQuery;
    FDSGenerales: TfrxDBDataset;
    ImprimirRecibo1: TMenuItem;
    FDSPercepciones: TfrxDBDataset;
    FDSDeducciones: TfrxDBDataset;
    FDSPersonalDetalleNomina: TfrxDBDataset;
    FDSBuscar: TfrxDBDataset;
	rxNominaHorasExtra: TFloatField;    PopupReprogramacionGuardia: TPopupMenu;
    MenuItem1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    No_Confirmado: TcxStyle;
    Confirmado: TcxStyle;
    Contratado: TcxStyle;
    Personal_Abajo: TcxStyle;
    Reprogramacion: TcxStyle;
    Personal_Abajo_Finiquitado: TcxStyle;
    cxStyle1: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet2: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet3: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet4: TcxGridTableViewStyleSheet;
    cxGridTableViewStyleSheet5: TcxGridTableViewStyleSheet;
    Descontrarar1: TMenuItem;
    ImprimirPreFiniquito1: TMenuItem;
    Panel3: TPanel;
    Panel4: TPanel;
    grid_embarcaciones: TDBGrid;
    Panel5: TPanel;
    frmBarra4: TfrmBarra;
    grid_Guardias: TDBGrid;
    AdvSplitter1: TAdvSplitter;
    QProyectos: TZQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    BView_Puestos: TcxGridDBBandedTableView;
    DsProyectos: TDataSource;
    BView_PuestosColumn1: TcxGridDBBandedColumn;
    BView_PuestosColumn2: TcxGridDBBandedColumn;
    BView_PuestosColumn3: TcxGridDBBandedColumn;
    BView_PuestosColumn4: TcxGridDBBandedColumn;
    Grid_HGuardiasColumn1: TcxGridDBColumn;
    frmBarra1: TfrmBarra;
    frmBotonera1: TfrmBarra;
    rxEmpleadosPernocta: TStringField;
    cxLabel12: TcxLabel;
    cPernocta: TcxLookupComboBox;
    RxDBGrid1DBTableView1: TcxGridDBTableView;
    RxDBGrid1Level1: TcxGridLevel;
    RxDBGrid1: TcxGrid;
    RxDBGrid1DBTableView1sIdEmpleado1: TcxGridDBColumn;
    RxDBGrid1DBTableView1sNombre1: TcxGridDBColumn;
    RxDBGrid1DBTableView1sPuesto1: TcxGridDBColumn;
    RxDBGrid1DBTableView1FechaSubida1: TcxGridDBColumn;
    RxDBGrid1DBTableView1Pernocta1: TcxGridDBColumn;
    UEmpleados: TZUpdateSQL;
    BView_Empleados: TcxGridDBTableView;
    grid_empleadosLevel1: TcxGridLevel;
    grid_empleados: TcxGrid;
    BView_EmpleadossIdEmpleado: TcxGridDBColumn;
    BView_EmpleadosNombreCompleto: TcxGridDBColumn;
    BView_EmpleadossPuesto: TcxGridDBColumn;
    BView_EmpleadossNumeroOrden: TcxGridDBColumn;
    BView_Empleadosdias_trabajados: TcxGridDBColumn;
    BView_EmpleadossConfirmado: TcxGridDBColumn;
    BView_EmpleadossStatusPersonal: TcxGridDBColumn;
    BView_EmpleadossStatus: TcxGridDBColumn;
    BView_EmpleadosReprogramacion: TcxGridDBColumn;
    BView_EmpleadossProgramado: TcxGridDBColumn;
    BView_EmpleadosPagado: TcxGridDBColumn;
    BView_EmpleadosdFechaSubida: TcxGridDBColumn;
    BView_EmpleadosdFechaBajada: TcxGridDBColumn;
    BView_EmpleadosPagado_Todo: TcxGridDBColumn;
    BView_EmpleadossIdPernocta: TcxGridDBColumn;
    BView_EmpleadossIdPlataforma: TcxGridDBColumn;
    dsEmpleado: TDataSource;
    Reportes1: TMenuItem;
    PersonalDesembarcado1: TMenuItem;
    frx_PerBaja: TfrxDBDataset;
    ZUReprogramacion: TZUpdateSQL;
    PnlPerBaja: TPanel;
    GroupBox2: TGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    FechaIni_PerB: TJvDateTimePicker;
    FechaFin_PerB: TJvDateTimePicker;
    cxButton5: TcxButton;
    ZQEmpleadosHDescripcion_Orden: TMemoField;
    zqPersonalGuardiasAct: TZQuery;
    popPersonalGuardiasActivas: TMenuItem;
    frxDBPersonalGuardiasActivas: TfrxDBDataset;
    zqPersonalGuardiasActsNumeroOrden: TStringField;
    zqPersonalGuardiasActsObservaciones: TStringField;
    zqPersonalGuardiasActsStatus: TStringField;
    zqPersonalGuardiasActNombreCompleto: TStringField;
    zqPersonalGuardiasActtitulocargo: TStringField;
    dtfldPersonalGuardiasActdFechaSubidaReal: TDateField;
    dtfldPersonalGuardiasActdFechaBajadaReal: TDateField;
    zqPersonalGuardiasActsIdPernocta: TStringField;
    zqPersonalGuardiasActsIdPlataforma: TStringField;
    dsPersonalGuardiasActivas: TDataSource;
    dtfldPersonalGuardiasActdFechaSubida: TDateField;
    dtfldPersonalGuardiasActdFechaBajada: TDateField;
    dsPersonalProyecto: TDataSource;
    zqPersonalProyecto: TZQuery;
    zqPersonalProyectosNumeroOrden: TStringField;
    zqPersonalProyectosObservaciones: TStringField;
    zqPersonalProyectosStatus: TStringField;
    zqPersonalProyectoNombreCompleto: TStringField;
    zqPersonalProyectotitulocargo: TStringField;
    dtfldZQuery1dFechaSubida: TDateField;
    dtfldZQuery1dFechaBajada: TDateField;
    dtfldZQuery1dFechaSubidaReal: TDateField;
    dtfldZQuery1dFechaBajadaReal: TDateField;
    zqPersonalProyectosIdPernocta: TStringField;
    zqPersonalProyectosIdPlataforma: TStringField;
    frxDBPersonalProyecto: TfrxDBDataset;
    CantidaddePersonalAbordo1: TMenuItem;
    RxPerAbordo: TRxMemoryData;
    RxPerAbordodescripcion: TStringField;
    RxPerAbordocantidad: TIntegerField;
    frxPerAbordo: TfrxDBDataset;
    ImprimirPersonalGuardia1: TMenuItem;
    zqPersonalProyectoiIdGuardia: TIntegerField;
    zqryEmpleadosFechaInicio: TDateField;
    zqryEmpleadosFechaTermino: TDateField;
    RxPlaAbordo: TClientDataSet;
    RxPlaAbordodescripcion: TStringField;
    RxPlaAbordocantidad: TIntegerField;
    RxPlaAbordoproyecto: TStringField;
    frxPlaAbordo: TfrxDBDataset;
    frxPernAbordo: TfrxDBDataset;
    RxPernAbordo: TClientDataSet;
    RxPernAbordodescripcion: TStringField;
    RxPernAbordocantidad: TIntegerField;
    RxPernAbordoproyecto: TStringField;
    RxPerAbordoproyecto: TStringField;
    ZQEmpleadosHFechaInicio: TDateTimeField;
    ZQEmpleadosHFechaTermino: TDateTimeField;
    ZQEmpleadosHsOficioAutorizacion: TStringField;
    zqryEmpleadossOficioAutorizacion: TStringField;	   zqryGuardiasMovtosiIdGuardiaMovtos: TIntegerField;
    zqryOrdenespernocta: TStringField;
    zqryEmpleadosidorganizacion: TIntegerField;
    zQEmpleadosiddepartamento: TIntegerField;
    Label26: TLabel;
    cmbOrganizacion: TDBLookupComboBox;
    ds_organizacion: TDataSource;
    QryOrganizacion: TZReadOnlyQuery;
    zqryListaEmpleadosidorganizacion: TIntegerField;
    zqryEmpleadosdFechaNacimiento: TDateField;
    zqryEmpleadosiIdNacionalidad: TIntegerField;
    zqryEmpleadosiIdPeriodo: TIntegerField;
    cxLabel16: TcxLabel;
    cPlataforma: TcxLookupComboBox;
    rxEmpleadosplataforma: TStringField;
    RxDBGrid1DBTableView1Plataforma1: TcxGridDBColumn;
    Label1: TLabel;
    tsHora: TMaskEdit;
    zqryGuardiasMovtossHoraInicioGuardia: TStringField;
    ZQEmpleadosHsHoraInicioGuardia: TStringField;
    ContratarGuardiaCompleta1: TMenuItem;
    CargarGuardiaAnterior1: TMenuItem;
    zqryGuardiasMovtoscodigoguardia: TStringField;
    zqryGuardiasMovtosiNumeroGuardia: TIntegerField;
    zqryGuardiasPorEmpleado: TZQuery;
    dsGuardiasPorEmpleado: TDataSource;
    frxGuardiasPorEmpleado: TfrxDBDataset;
    ds_historicoGuardia: TfrxDBDataset;
    zQHistoricoG: TZQuery;
    ds_zQHistoricoG: TDataSource;
    HistoricoGuardias: TMenuItem;
    zQHistoricoGFechaInicio: TDateField;
    zQHistoricoGFechaTermino: TDateField;
    zQHistoricoGiidguardiamovtos: TIntegerField;
    zQHistoricoGiidGuardia: TIntegerField;
    zQHistoricoGcodigoguardia: TStringField;
    zQHistoricoGiNumeroGuardia: TIntegerField;
    zQHistoricoGsidempleado: TStringField;
    zQHistoricoGdFechaSubida: TDateField;
    zQHistoricoGdfechabajada: TDateField;
    zQHistoricoGsidplataforma: TStringField;
    zQHistoricoGsnumeroorden: TStringField;
    zQHistoricoGsidpernocta: TStringField;
    zQHistoricoGscontrato: TStringField;
    zQHistoricoGsStatus: TStringField;
    zQHistoricoGid_guardiaperiodo: TIntegerField;
    zQHistoricoGiid_puesto: TIntegerField;
    zQHistoricoGstranferido: TStringField;
    zQHistoricoGreprogramacion: TDateField;
    zQHistoricoGsconfirmado: TStringField;
    zQHistoricoGNombreCompleto: TStringField;
    zQHistoricoGsStatusPersonal: TStringField;
    zQHistoricoGsPuesto: TStringField;
    zQHistoricoGDescripcion_Pernocta: TStringField;
    zQHistoricoGDescripcion_Plataforma: TStringField;
    zQHistoricoGDescripcion_Orden: TMemoField;
    zQHistoricoGidorganizacion: TIntegerField;
    zqryEmpleadossHoraInicioGuardia: TStringField;
    ImprimirHistoricoGuardia: TMenuItem;
    zQHistoricoGsHoraInicioGuardia: TStringField;
    ImprimirGuardiaNo1: TMenuItem;
    ImprimirHistoricoGuaridaNo1: TMenuItem;
    zqryEmpleadossHoraSubida: TStringField;
    BView_EmpleadosColumn1: TcxGridDBColumn;
    rutaContratos1: TsPathDialog;
    tcxBView_EmpleadosiIdGuardia: TcxGridDBColumn;
    tcxBView_EmpleadosId_GuardiaPeriodo: TcxGridDBColumn;
    tcxBView_EmpleadosiIdGuardiaMovtos: TcxGridDBColumn;
    btnSeleccionarTodos: TMenuItem;
    panelFechaSubida: TPanel;
    lbl4: TcxLabel;
    btnAplicar: TcxButton;
    Aplicarfechadesubida: TMenuItem;
    dateFechaSubida: TcxDateEdit;
    btnCancelarFechaSubida: TcxButton;
    popupReprogramacionMultiple: TPopupMenu;
    panelFechaReprogramacionMultiple: TPanel;
    lbl5: TcxLabel;
    dateReprogramacion: TcxDateEdit;
    btnAplicarReprogramacion: TcxButton;
    btnCancelarReprogramacion: TcxButton;
    btnReprogramarFechadeBajada: TMenuItem;
    ReporteGuardiasPorEmpleado2: TMenuItem;
    ReporteGuardiasPorEmpleado3: TMenuItem;
    desautorizarGuardia: TMenuItem;
    btnBajarPersonal: TMenuItem;
    DesconfirmarGuardia: TMenuItem;
    BajarGuardiaCompleta: TMenuItem;
    ReporteGuardiasPorEmpleado: TMenuItem;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    lbl10: TcxLabel;
    lbl11: TcxLabel;
    zqryGuardiasMovtosMemoria: TZQuery;
    tcxContratado: TcxGridDBColumn;
    strngfldEmpleadossContratado: TStringField;
    tcxsStatusTipoPersonal: TcxGridDBColumn;
    zqryEmpleadosMemoria: TZQuery;
    zqryEmpleadossImss: TStringField;
    zqryEmpleadosSalarioDiario: TFloatField;
    zqryEmpleadosSalarioIntegrado: TFloatField;
    zqryEmpleadosIdPersonal: TIntegerField;
    zqryEmpleadosImporte: TFloatField;
    ZPersonalIMSSAltas: TZQuery;
    frxReporteIMSS: TfrxDBDataset;
    dsDatosContratos: TDataSource;
    dsAltaImss: TDataSource;
    ImprimirAltasImss1: TMenuItem;
    ImprimirBajasImss1: TMenuItem;
    frxReporteSB: TfrxDBDataset;

    ColumnaId: TcxGridDBColumn;
    CdConMemPer: TClientDataSet;
    CdConMemDed: TClientDataSet;
    cdNomina: TClientDataSet;
    rxNominaIdPersonal: TIntegerField;
    QryReporteSB: TZReadOnlyQuery;
    dsReporteSB: TDataSource;
    RxPerAbordosObservaciones: TStringField;
    RxPlaAbordoLetraGuardia: TStringField;
    qryRxPernAbordoLetraGuardia: TStringField;
    cxSplitter1: TcxSplitter;
    ZPersonalImssBaja: TZQuery;
    dsBajaImss: TDataSource;
    ImprimirPersonaenlaGuadiaSubida1: TMenuItem;
    ImprimirPersonalenlaGuardiaBajada1: TMenuItem;
    qryReporteBD: TZReadOnlyQuery;
    dsReporteBD: TDataSource;
    frxReporteBD: TfrxDBDataset;
    intgrfldGuardiasMovtosIdGuardia: TIntegerField;
    CapturarHorasExtras1: TMenuItem;
    strngfldZQPersonal_Pagadoconceptos: TStringField;
    strngfldZQPersonal_Pagadovalores: TStringField;
    procedure btnAddClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure AdvGlowButton1Click(Sender: TObject);
  procedure frmBarra4btnAddClick(Sender: TObject);
  procedure frmBarra4btnEditClick(Sender: TObject);
  procedure frmBarra4btnCancelClick(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure frmBarra2btnAddClick(Sender: TObject);
  procedure frmBarra5btnPrinterClick(Sender: TObject);
  procedure frmBarra4btnDeleteClick(Sender: TObject);
  procedure frmBarra4btnRefreshClick(Sender: TObject);
  procedure frmBarra4btnExitClick(Sender: TObject);
  procedure frmBarra4btnPrinterClick(Sender: TObject);
  procedure ImprimirExcelGuardias;
  procedure FormatosExcel(Formato: String; Color: TColor = clBtnFace; Size: Integer = 11);
  procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure grid_InicioGuardiaMouseMove(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
  procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  procedure grid_InicioGuardiaMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  procedure DBGrid1TitleClick(Column: TColumn);
  procedure grid_InicioGuardiaTitleClick(Column: TColumn);
  procedure grid_InicioGuardiaDblClick(Sender: TObject);
  procedure cbTipoGuardiaKeyPress(Sender: TObject; var Key: Char);
  procedure zqryOrdenesAfterScroll(DataSet: TDataSet);
  procedure zqryGuardiasMovtosAfterScroll(DataSet: TDataSet);
  procedure frmBotonera1btnAddClick(Sender: TObject);
  procedure ButtonDOS;
  procedure cmdCancelarClick(Sender: TObject);
  procedure cmdAgregarClick(Sender: TObject);
  procedure cmdEliminarClick(Sender: TObject);
  procedure cmdAceptarClick(Sender: TObject);
  procedure frmBotonera1btnPostClick(Sender: TObject);
  procedure frmBotonera1btnEditClick(Sender: TObject);
  procedure frmBotonera1btnCancelClick(Sender: TObject);
  procedure frmBotonera1btnDeleteClick(Sender: TObject);
  procedure cmdCancelarGuardiaClick(Sender: TObject);
  procedure cmdAceptarGuardiaClick(Sender: TObject);
  procedure sFolioGuardiaKeyPress(Sender: TObject; var Key: Char);
  procedure sNombreGuardiaKeyPress(Sender: TObject; var Key: Char);
  procedure sTipoGuardiaKeyPress(Sender: TObject; var Key: Char);
  procedure dFechaSubidaGuardiaKeyPress(Sender: TObject; var Key: Char);
  procedure dFechaBajadaGuardiaKeyPress(Sender: TObject; var Key: Char);
  procedure RbProyectosClick(Sender: TObject);
  procedure RBPlataformasClick(Sender: TObject);
  procedure RBPernoctasClick(Sender: TObject);
  procedure frmBotonera1btnPrinterClick(Sender: TObject);
  procedure btnAgregaPlataformaClick(Sender: TObject);
  procedure btnPClick(Sender: TObject);
  procedure btnPerClick(Sender: TObject);
  procedure zqryEmpleadosAfterScroll(DataSet: TDataSet);
  procedure Button1Click(Sender: TObject);
  procedure Button4Click(Sender: TObject);
  procedure GuardiasProximasaBajar1Click(Sender: TObject);
  procedure BViewGuardiasCellClick(Sender: TcxCustomGridTableView;
    ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
    AShift: TShiftState; var AHandled: Boolean);
  procedure Button3Click(Sender: TObject);
  procedure dxBtnGuardarClick(Sender: TObject);
  procedure dxBtnImpClick(Sender: TObject);
  procedure zqryEmpleadosCalcFields(DataSet: TDataSet);
  procedure climaClick(Sender: TObject);
  procedure actualizar;
  procedure Autorizar_Guardia;
  procedure cambio_estado;
  procedure DardeBajaGuardias1Click(Sender: TObject);
  procedure ReglamentoPlataformas1Click(Sender: TObject);
  procedure ImprimirFiniquito1Click(Sender: TObject);
  procedure frxcontratosGetValue(const VarName: string; var Value: Variant);
  procedure ContrararPersonal1Click(Sender: TObject);
  procedure ConfirmarPersonal1Click(Sender: TObject);
  procedure contratar;
    procedure raerGuardiaAnterior1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure QTodosClick(Sender: TObject);
    procedure QUnoClick(Sender: TObject);
    procedure AUnoClick(Sender: TObject);
    procedure TipoPersonalPropertiesChange(Sender: TObject);
    procedure ATodosClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure AutorizarGuardia1Click(Sender: TObject);
    procedure Desautorizar_Guardia;
    procedure BView_EmpleadosStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grid_GuardiasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure actualizar2;
    procedure HistorialdeGuardias1Click(Sender: TObject);
    procedure BajarTodoelPersonaldelaGuardia1Click(Sender: TObject);
    procedure ReporteHorasGetValue(const VarName: string; var Value: Variant);
    procedure zqrySeguimientoPersonalCalcFields(DataSet: TDataSet);
    procedure Fecha_SubidaPropertiesCloseUp(Sender: TObject);
    procedure Quitar_PNoCofirmado;
    procedure QuitarPersonalnoconfirmado1Click(Sender: TObject);
    procedure ZQC_OrdenesAfterScroll(DataSet: TDataSet);
    procedure ImprimirPersonalenlaGuardia2Click(Sender: TObject);
    procedure ZQEmpleadosHCalcFields(DataSet: TDataSet);
    procedure ImContAbClick(Sender: TObject);
    procedure Imprimirfiniquito2Click(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure ImprimirRecibo1Click(Sender: TObject);
    procedure cdPersonalDetalleNominaAfterScroll(DataSet: TDataSet);
    procedure Descontrarar1Click(Sender: TObject);
    procedure ImprimirPreFiniquito1Click(Sender: TObject);
    procedure PersonalDesembarcado1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure popPersonalGuardiasActivasClick(Sender: TObject);
    procedure CantidaddePersonalAbordo1Click(Sender: TObject);
    procedure ImprimirPersonalGuardia1Click(Sender: TObject);
    procedure RxPerAbordoAfterScroll(DataSet: TDataSet);
    procedure pasarEmpleadoATabla;
    procedure ds_organizacionDataChange(Sender: TObject; Field: TField);
    procedure ContratarGuardiaCompleta1Click(Sender: TObject);
    procedure CargarGuardiaAnterior1Click(Sender: TObject);
    procedure ReporteGuardiasPorEmpleado1Click(Sender: TObject);
    procedure HistoricoGuardiasClick(Sender: TObject);
    procedure PopupImprimirPopup(Sender: TObject);
    procedure PopupReprogramacionGuardiaPopup(Sender: TObject);
    procedure ImprimirHistoricoGuardiaClick(Sender: TObject);
    procedure ImprimirGuardiaNo1Click(Sender: TObject);
    procedure ImprimirHistoricoGuaridaNo1Click(Sender: TObject);
    procedure validarConfirmadoOContratado(campoAValidar : string);
    procedure ContratoaBordoTodos1Click(Sender: TObject);
    procedure generarReportesABordo;
    procedure botonesNavegador(vista : TcxGridDBTableView; botonEditar, botonGuardar, botonRefrescar, botonCancelar : Boolean);
    procedure eliminarRegistrosDeNom_NominaPersonal(idNomina: Integer);
    procedure eliminarRegistrosDeNom_DetalleNomina(idNomina, IdPeriodosGuarida: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnSeleccionarTodosClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure AplicarfechadesubidaClick(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure btnCancelarFechaSubidaClick(Sender: TObject);
    procedure btnReprogramarFechadeBajadaClick(Sender: TObject);
    procedure btnCancelarReprogramacionClick(Sender: TObject);
    procedure btnAplicarReprogramacionClick(Sender: TObject);
    procedure ReporteGuardiasPorEmpleado2Click(Sender: TObject);
    procedure ReporteGuardiasPorEmpleado3Click(Sender: TObject);
    procedure desautorizarGuardiaClick(Sender: TObject);
    procedure btnBajarPersonalClick(Sender: TObject);
    procedure DesconfirmarGuardiaClick(Sender: TObject);
    procedure BajarGuardiaCompletaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Grid_HGuardiasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    function empleadoEnOtraGuardia(sIdEmpleado : string; iIdGuardia : string): Boolean;
    procedure mostrarColoresEstatus(activo : Boolean);
    procedure cxButton3MouseEnter(Sender: TObject);
    procedure cxButton3MouseLeave(Sender: TObject);
    function cambiarYObtenerFechaBajaEmpleado(sIdEmpleado, parametroFechaSubida : string;
             iIdGuardia, ID_GuardiaPeriodo : Integer; sNumeroOrden, nombreEmpleado : string; var refFechaSubida : string) : Boolean;
    function contratadoEnOtraGuardia(sIdEmpleado : string) : Boolean;
    function cabeEnGuardia(sIdEmpleado : string) : Boolean;
    procedure ImprimirAltasImss1Click(Sender: TObject);
    procedure ImprimirBajasImss1Click(Sender: TObject);
    function ObtenerSeleccion( Campo:String; TipoPersonal:String; Grid: TcxGridDBTableView):String;
    procedure rxNominaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ImprimirPersonaenlaGuadiaSubida1Click(Sender: TObject);
    procedure ImprimirPersonalenlaGuardiaBajada1Click(Sender: TObject);
    procedure CapturarHorasExtras1Click(Sender: TObject);

private
  { Private declarations }
  Folio_Guardia, Titulo_Guardia, PGuardia:string;
  Tipo_Guardia, ID_PeriodoGuardia, IdTipoNomina:Integer;
  Fecha_Inicio, Fecha_Baja : TDateTime;
  v_cambio:string;
  bandera_cambio:Integer;
  seguimiento, CambioG, lista_empleados, listaguardias, periodos_guardia, DarBajar_Guardia, Guardia_Anterior, Autorizar_Desautorizar, Ayuda, Reprogramacion_Guardia, Historial_Guardias, Cambio_Personal: TForm;
  posicion, posicion_guardias, posicion_empleados : TBookmarkList;
  origen_contrato:string;
  fecha_nueva, fecha_nueva1, fecha_real:TDatetime;
  cdGenerales: TClientDataSet;
  YaCreado: Boolean;
  NetoPagar: Real;
  IsOpen,AuxOpen:Boolean;
  posProyectos, TBookmarkList : string;
  posPersonal : TBookmarkList;
  Empleado :string;
  fechaBaja : Tdate;
  Valores : TStringList;
  bMostrar: Boolean;
  sArchivo: String;
  CaptionClick: String;
  query : string;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  Excel, Libro, Hoja: Variant;
  botonpermiso     : tbotonespermisos;
  sOpcion, sOpcionGuardia : string;
  periodocontrato,NumRec : integer;
  Cadena: String;
  sueldot: Extended;
  dtBaja:Boolean;
  sFiltroEmpleado : string;
  realizarBookmark : Boolean;
  ejecutarAfterScroll : Boolean;
  formularioFechaSubida : TForm;
  formularioReprogramacionMultiple : TForm;
  Calculando:Boolean;
  Imprimiendo: Boolean;
  YaValidado: Boolean;
  YaCargado: Boolean;
  ImprimirContrato:Boolean;
  QryIdPersonal : Integer;
  procedure QrDatosAfterScroll(DataSet: TDataSet);
public
  { Public declarations }
  desConfirmadoODesContratado : Boolean;
  rutaContratos : string;
  navegadorModoEdicion : Boolean;
end;

var
  frmEmpleadosGuardias: TfrmEmpleadosGuardias;
  function Parte(Indice: Integer; Cadena: String): String;

  //var
implementation
uses frm_MovtosEmpleadosGuardias, frm_ordenes, frmguardias_proximas, frm_inteligent, frm_TiposMovC_Guardia, UTFrmContratarWizard,
  rhh_genericclasses, UTFrmWizardGroup, frm_ImprimeContratos, UFrmHE;
{$R *.dfm}

procedure TfrmEmpleadosGuardias.Fecha_SubidaPropertiesCloseUp(Sender: TObject);
begin
  if (Fecha_Subida.date < zqryGuardiasMovtos.fieldbyname('dFechaInicial').AsDateTime) then
  begin
    MSG_ER('La fecha no debe ser menor a la fecha de inicio de la guardia');
    Fecha_Subida.Date := Date;
    Abort;
  end;
  if (Fecha_Subida.date > zqryGuardiasMovtos.fieldbyname('dFechaFinal').AsDateTime) then
  begin
    MSG_ER('La fecha debe ser menor a la fecha de bajada de la guardia');
    Fecha_Subida.Date := Date;
    Abort;
  end;
end;

procedure TfrmEmpleadosGuardias.FormatosExcel(Formato: String; Color: TColor = clBtnFace; Size: Integer = 11);
begin
  if Formato = 'EncabezadoDefault' then begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlLeft;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size :=  size;
    Excel.Selection.Font.Bold :=  True;
    Excel.Selection.Font.Name :=   'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color :=  color;
    Excel.Selection.WrapText :=   True;
  end else
  if Formato = 'Encabezado' then begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment :=   xlCenter;
    Excel.Selection.Font.Size :=   10;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name :=      'Calibri';
    Excel.Selection.Borders.Color :=    clBlack;
    Excel.Selection.Interior.Color := $00EBEBEB;
  end
  else
  if Formato = 'Default' then
  begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlLeft;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size :=    10;
    Excel.Selection.Font.Bold := False;
    Excel.Selection.Font.Name := 'Calibri';
  end
  else
  if Formato = 'Grupo' then
  begin
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment :=   xlCenter;
    Excel.Selection.Font.Color :=  clWhite;
    Excel.Selection.Font.Size :=        10;
    Excel.Selection.Font.Bold :=      True;
    Excel.Selection.Font.Name := 'Calibri';
    Excel.Selection.Borders.Color :=    clBlack;
    Excel.Selection.Interior.Color := $00FF9933;
  end
  else
  if Formato = 'TipoImporte' then
  begin
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment :=   xlCenter;
    Excel.Selection.Font.Size :=   10;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name :=      'Calibri';
    Excel.Selection.Borders.Color :=    clBlack;
    Excel.Selection.Interior.Color := $00FFD9B3;
  end
  else
  if Formato = 'Importe' then
  begin
    Excel.Selection.HorizontalAlignment := xlLeft;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size :=    10;
    Excel.Selection.Font.Bold := False;
    Excel.Selection.Font.Name :=     'Calibri';
    Excel.Selection.NumberFormat:='$ #,##0.00';
  end
  else
  if Formato = 'Titulo' then
  begin
    Excel.Selection.MergeCells := True;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment :=   xlCenter;
    Excel.Selection.Font.Size := size;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Name :=   'Calibri';
    Excel.Selection.Borders.Color := clBlack;
    Excel.Selection.Interior.Color :=  color;
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirAltasImss1Click(Sender: TObject);
begin
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    ZPersonalIMSSAltas.Active := False;
    ZPersonalIMSSAltas.ParamByName('Guardia').AsString              := zqryGuardiasMovtos.FieldByName('iIdGuardia').AsString;
    ZPersonalIMSSAltas.ParamByName('IdPeriodosGuardia').AsInteger   := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
    ZPersonalIMSSAltas.ParamByName('numeroOrden').AsString          := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
    ZPersonalIMSSAltas.ParamByName('Pagados').AsString              := 'No';
    ZPersonalIMSSAltas.ParamByName('TipoMovimiento').AsString       := 'Reingreso';
    ZPersonalIMSSAltas.Open;

    if ZPersonalIMSSAltas.RecordCount > 0 then
    begin
      frxReporteImss.DataSource := dsAltaImss;
      frxReporte.LoadFromFile(global_files + global_MiReporte +'_AltaIMSS.fr3');
      frxReporte.ShowReport();
    end
    else
      MessageDlg('No hay registros para imprimir.', mtInformation, [mbOk], 0);

  end
  else
    MessageDlg('No hay registros para imprimir.', mtInformation, [mbOk], 0)

end;

procedure TfrmEmpleadosGuardias.ImprimirBajasImss1Click(Sender: TObject);
begin
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
  //ZPersonalIMSS
    ZPersonalIMSSBaja.Active := False;
    ZPersonalIMSSBaja.ParamByName('Guardia').AsString              := zqryGuardiasMovtos.FieldByName('iIdGuardia').AsString;
    ZPersonalIMSSBaja.ParamByName('IdPeriodosGuardia').AsInteger   := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
    //ZPersonalIMSSBaja.ParamByName('numeroOrden').AsString          := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
    ZPersonalIMSSBaja.ParamByName('Pagados').AsString              := 'Si';
    ZPersonalIMSSBaja.ParamByName('TipoMovimiento').AsString       := 'Baja';
    ZPersonalIMSSBaja.Open;

    if ZPersonalIMSSBaja.RecordCount > 0 then
    begin
      frxReporteImss.DataSource := dsBajaImss;
      frxReporte.LoadFromFile(global_files + global_MiReporte +'_BajaIMSS.fr3');
      frxReporte.ShowReport();
    end
    else
      MessageDlg('No hay registros para imprimir.', mtInformation, [mbOk], 0)

  end
  else
    MessageDlg('No hay registros para imprimir.', mtInformation, [mbOk], 0)
end;

procedure TfrmEmpleadosGuardias.ImprimirExcelGuardias;
Var
  ErrorMsg: String;
  QryBusca, Query, Qry2, QryAreas: TZQuery;
  Fila, SubFila, AutoInc, Columna, ColumnaInicial, IntColumnaFinal,
  FilaDeGrupoInicialAnterior, FilaDeGrupoFinalAnterior,
  FilaDeGrupoInicial,
  FilaDeGrupo, FilaDeGrupoAnterior,
  FilaDeImportes, FilaDeImportesAnterior, FiladeImportesFinalAnterior,
  ContadorDeFilas, DiasTotales, i, x: Integer;
  Salario, RangoPercepciones, RangoDeducciones, CeldaSalario,
  sIdArea, sTipoImporte, sLabelTipoImporte, sArea, ColumnaFinal,
  CeldasPorSumar, CeldaSuma, CeldaResta, NominasAplicadas: String;
  ImportePorGrupo: Double;
  ListaCeldas, ListaNominas: TStringList;
  ContinuaCalculoPercepciones: Boolean;
  Dia: TDateTime;
begin

end;

procedure TfrmEmpleadosGuardias.ImprimirFiniquito1Click(Sender: TObject);
var
  QrDatos:TzReadOnlyQuery;
  Concept: string;
  Monto: string;
  i: Integer;
  ListCodigoPersonal: String;
  ListIdGuardiaMovtos: String;
begin
  QrDatos:=TzReadOnlyQuery.Create(self);
  QrDatos.AfterScroll := QrDatosAfterScroll;

  cdNomina.EmptyDataSet;

  ListCodigoPersonal := ObtenerSeleccion('sIdEmpleado','',BView_Empleados);
  ListIdGuardiaMovtos := ObtenerSeleccion('iIdGuardiaMovtos','',BView_Empleados);
  Calculando := False;
  try
    QrDatos.connection:=Connection.zConnection;
    QrDatos.SQL.Text:='select e.*,'+ #10 +
                      'gm.*,'+ #10 +
                      'nr.importe,'+ #10 +
                      'rn.sDescripcion as nacionalidad,'+ #10 +
                      'nc.titulocargo,'+ #10 +
                      'np.IdFormaPago'+ #10 +
                      'from empleados e'+ #10 +
                      'inner join guardiasmovtos gm '+ #10 +
                      'on(e.sIdEmpleado=gm.sIdEmpleado)'+ #10 +
                      'inner join nuc_cargo nc'+ #10 +
                      'on(gm.iId_puesto=nc.idCargo)'+ #10 +
                      'inner join nom_rangosalarios nr'+ #10 +
                      'on(nr.IdRangoSalarios=nc.IdRangoSalarios)'+ #10 +
                      'left join rh_nacionalidades rn'+ #10 +
                      'on(rn.iIdNacionalidad=e.iIdNacionalidad)'+ #10 +
                      'Inner join'+ #10 +
                      'nuc_personal as p'+ #10 +
                      'on (p.codigopersonal = e.sIdEmpleado)'+ #10 +
                      'inner join'+ #10 +
                      'nom_nomina nom'+ #10 +
                      'on (nom.IdPeriodosGuardia = gm.ID_GuardiaPeriodo)'+ #10 +
                      'left join'+ #10 +
                      'nom_nominapersonal as np'+ #10 +
                      'on (np.IdNomina = nom.IdNomina and np.IdPersonal = p.idpersonal)'+ #10 +
                      'where :iIdGuardiaMovtos = -1 or (:iIdGuardiaMovtos <> -1 and FIND_IN_SET(gm.iIdGuardiaMovtos, :iIdGuardiaMovtos)) and'+ #10 +
                      'not np.IdFormaPago is null and gm.sStatus = "Activo"';

    dtBaja:=False;
    QrDatos.ParamByName('iIdGuardiaMovtos').AsString := ListIdGuardiaMovtos; //zqryEmpleados.FieldByName('iidguardiamovtos').asInteger;
    QrDatos.Open;

    QrDatos.First;

    if QrDatos.RecordCount > 0 then
    begin
      while not QrDatos.Eof do
      begin
        if QrDatos.FieldByName('sStatusTipoPersonal').AsString='Tierra' then
          MSG_ER('No se puede imprimir el finiquito porque es un personal de base y no se genera contrato')
        else
          //aqui va el  pexx.
        if zqHistorial.Locate('sIdEmpleado; sIdGuardia; ID_PeriodoGuardia', VarArrayOf([QrDatos.FieldByName('sIdEmpleado').AsString,
         QrDatos.FieldByName('iIdGuardia').AsString, QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger]), []) then
        begin
          {$REGION 'DESCOMPOSICION DE CAMPOS MULTIVALUADOS'}
          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.text:=
          'SELECT' + #10 +
            'npi.IdPersonal,' + #10 +
            'p.codigopersonal,' + #10 +
            'npi.IdPeriodosGuardia,' + #10 +
            'dn.Clave as conceptos,' + #10 +
            'dn.Valor as valores' + #10 +
          'FROM' + #10 +
            'nuc_personalimss as npi' + #10 +
          'INNER JOIN' + #10 +
            'nuc_personal as p' + #10 +
          'ON' + #10 +
            'npi.IdPersonal = p.idpersonal' + #10 +

          'INNER JOIN' + #10 +
            'nom_nominapersonal as np' + #10 +
          'ON' + #10 +
            'npi.IdPersonal = np.IdPersonal' + #10 +
          'inner join nom_nomina nn' + #10 +
            'on(nn.Idnomina=np.Idnomina and nn.idPeriodosguardia=npi.IdPeriodosGuardia) '  +
          'INNER JOIN' + #10 +
            'nom_detallenomina as dn' + #10 +
          'ON' + #10 +
            '(npi.IdPersonal = dn.IdPersonal and dn.Idnomina=nn.Idnomina)' + #10 +
          'WHERE' + #10 +
            'NOT np.IdFormaPago IS NULL AND TipoMovimiento = "Baja" and' + #10 +
            '(:CodigoPersonal = -1 or (:CodigoPersonal <> -1 and (p.CodigoPersonal = :CodigoPersonal)))and' + #10 +
            '(:IdPeriodosGuardia = -1 or (:IdPeriodosGuardia <> -1 and (npi.IdPeriodosGuardia = :IdPeriodosGuardia)))'
          ;
          //ID_PeriodoGuardia
          connection.QryBusca.ParamByName('CodigoPersonal').AsString:= QrDatos.FieldByName('sIdEmpleado').AsString;
          connection.QryBusca.ParamByName('IdPeriodosGuardia').asinteger:=QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger;

          connection.QryBusca.Open ;
      //    cdNomina.Active :=false;
      //    cdNomina.Active := True;

          if  connection.QryBusca.RecordCount > 0 then
          begin
            // Identificar cuantos registros componen su nómina
            NumRec := 0;
            Cadena := connection.QryBusca.FieldByName('Conceptos').AsString;
            while Pos('|', Cadena) > 0 do
            begin
              Inc(NumRec);
              Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
            end;

            // Obtener el universo de conceptos de entre todos los empleados
            //cdNomina.Insert;

            while not connection.QryBusca.Eof do
            begin
              cdNomina.Insert;
              cdNomina.Edit;
              for i := 0 to NumRec -1 do
              begin
                Concept := Parte(i, connection.QryBusca.FieldByName('Conceptos').AsString);
                Monto := Parte(i, connection.QryBusca.FieldByName('Valores').AsString);
                if Concept='SUELDO' then
                cdNomina.FieldValues['Sueldo'] := StrToFloatDef(Monto,0);
                if Concept='PrimaDominical' then
                cdNomina.FieldValues['PrimaDom'] := StrToFloatDef(Monto,0);
                if Concept='DiasFestivos' then
                cdNomina.FieldValues['DiaFestivo'] := StrToFloatDef(Monto,0);
                if Concept='Vacaciones' then
                cdNomina.FieldValues['Vacaciones'] := StrToFloatDef(Monto,0);
                if Concept='PrimaVacacional' then
                cdNomina.FieldValues['PrimaVac'] := StrToFloatDef(Monto,0);
                if Concept='Aguinaldo' then
                cdNomina.FieldValues['Aguinaldo'] := StrToFloatDef(Monto,0);
                if Concept='TOTDED' then
                cdNomina.FieldValues['Deducciones'] := StrToFloatDef(Monto,0);
                if Concept='HorasExtraImporte' then
                cdNomina.FieldValues['HorasExtra'] := StrToFloatDef(Monto,0);

                if Concept='NETO' then
                begin
                  cdNomina.FieldValues['Neto'] := StrToFloatDef(Monto,0);
                  sueldot:=StrToFloatDef(Monto,0);
                end;
              end;

              cdNomina.FieldByName('IdPersonal').AsInteger := qrDatos.FieldByName('IdPersonal').AsInteger;
              cdNomina.Post;
              connection.QryBusca.Next;
            end;
          end;

          {$ENDREGION}

          QrDatos.next;
        end
        else
          MSG_ER('El contrato no fue localizado');
      end;

      Calculando := True;
      origen_contrato:='finiquito';
      frx_ReporteEmpleados.DataSet := QrDatos;
      frxnomina.DataSet := cdNomina;
      frx_ReporteEmpleados.FieldAliases.Clear;

      frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Finiquito.fr3');
      frxContratos.ShowReport();

    end
    else
      MessageDlg('No hay registros para imprimir.'+ #10 + ' El empleado seleccionado no es valido.', mtInformation, [mbOk], 0);
  finally
    QrDatos.destroy;
    Frxnomina.DataSet := rxnomina;
    cdnomina.Filtered:= false;
    Calculando := false;
  end;
end;

procedure TfrmEmpleadosGuardias.Imprimirfiniquito2Click(Sender: TObject);
var
  QrDatos:TzReadOnlyQuery;
  Concept: string;
  Monto: string;
  i: Integer;
begin
  QrDatos:=TzReadOnlyQuery.Create(nil);
  try
    QrDatos.connection:=Connection.zConnection;
    QrDatos.SQL.Text:='select e.*,gm.*,nr.importe,rn.sDescripcion as nacionalidad' +
                      ',nc.titulocargo from empleados e' + #10 +
                      'inner join guardiasmovtos gm' + #10 +
                      'on(e.sIdEmpleado=gm.sIdEmpleado)' + #10 +
                      'inner join nuc_cargo nc' + #10 +
                      'on(gm.iId_puesto=nc.idCargo)' + #10 +
                      'inner join nom_rangosalarios nr' + #10 +
                      'on(nr.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
                      'left join rh_nacionalidades rn ' +
                      'on(rn.iIdNacionalidad=e.iIdNacionalidad) ' +
                      'where gm.iIdGuardiaMovtos=:GuardiaMovto';

    dtBaja:=False;
    QrDatos.ParamByName('GuardiaMovto').AsInteger := ZQEmpleadosH.FieldByName('iidguardiamovtos').asInteger;
    QrDatos.Open;
    if QrDatos.RecordCount>0 then
    begin
      if QrDatos.FieldByName('sStatusTipoPersonal').AsString='Tierra' then

        MSG_ER('No se puede imprimir el finiquito por que es un personal de Base y no se genera contrato')
      else
        if zqHistorial.Locate('sIdEmpleado; sIdGuardia; ID_PeriodoGuardia', VarArrayOf([QrDatos.FieldByName('sIdEmpleado').AsString,
         QrDatos.FieldByName('iIdGuardia').AsString, QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger]), []) then
        begin
          {$REGION 'DESCOMPOSICION DE CAMPOS MULTIVALUADOS'}
          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.text:=
          'SELECT' + #10 +
           'npi.IdPersonal,' + #10 +
           'p.codigopersonal,' + #10 +
           'npi.IdPeriodosGuardia,' + #10 +
           'dn.Clave as conceptos,' + #10 +
           'dn.Valor as valores' + #10 +
          'FROM' + #10 +
           'nuc_personalimss as npi' + #10 +
          'INNER JOIN' + #10 +
           'nuc_personal as p' + #10 +
          'ON' + #10 +
           'npi.IdPersonal = p.idpersonal' + #10 +

          'INNER JOIN' + #10 +
           'nom_nominapersonal as np' + #10 +
          'ON' + #10 +
           'npi.IdPersonal = np.IdPersonal' + #10 +
          'inner join nom_nomina nn' + #10 +
            'on(nn.Idnomina=np.Idnomina and nn.idPeriodosguardia=npi.IdPeriodosGuardia) '  +
          'INNER JOIN' + #10 +
           'nom_detallenomina as dn' + #10 +
          'ON' + #10 +
           '(npi.IdPersonal = dn.IdPersonal and dn.Idnomina=nn.Idnomina)' + #10 +
          'WHERE' + #10 +
           'NOT np.IdFormaPago IS NULL AND TipoMovimiento = "Baja" and p.codigopersonal =:Personal '+
           'and npi.IdPeriodosGuardia=:Periodo';
           //ID_PeriodoGuardia
           connection.QryBusca.ParamByName('Personal').AsString:= ZQEmpleadosH.FieldByName('sIdEmpleado').AsString;
           connection.QryBusca.ParamByName('Periodo').asinteger:=ZQGuardiasH.FieldByName('ID_PeriodoGuardia').AsInteger;

          connection.QryBusca.Open ;

          rxNomina.Active :=false;
          rxNomina.Active := True;

          rxNomina.EmptyTable;

          if  connection.QryBusca.RecordCount>0 then
          begin
            // Identificar cuantos registros componen su nómina
            NumRec := 0;
            Cadena := connection.QryBusca.FieldByName('Conceptos').AsString;
            while Pos('|', Cadena) > 0 do
            begin
              Inc(NumRec);
              Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
            end;

            // Obtener el universo de conceptos de entre todos los empleados
            while not connection.QryBusca.Eof do
            begin
              rxNomina.Insert;
              rxNomina.Edit;
              for i := 0 to NumRec -1 do
              begin
                Concept := Parte(i, connection.QryBusca.FieldByName('Conceptos').AsString);
                Monto := Parte(i, connection.QryBusca.FieldByName('Valores').AsString);
                if Concept='SUELDO' then
                rxNomina.FieldValues['Sueldo'] := StrToFloatDef(Monto,0);
                if Concept='PrimaDominical' then
                rxNomina.FieldValues['PrimaDom'] := StrToFloatDef(Monto,0);
                if Concept='DiasFestivos' then
                rxNomina.FieldValues['DiaFestivo'] := StrToFloatDef(Monto,0);
                if Concept='Vacaciones' then
                rxNomina.FieldValues['Vacaciones'] := StrToFloatDef(Monto,0);
                if Concept='PrimaVacacional' then
                rxNomina.FieldValues['PrimaVac'] := StrToFloatDef(Monto,0);
                if Concept='Aguinaldo' then
                rxNomina.FieldValues['Aguinaldo'] := StrToFloatDef(Monto,0);
                if Concept='TOTDED' then
                rxNomina.FieldValues['Deducciones'] := StrToFloatDef(Monto,0);
                if Concept='HorasExtra' then
                rxNomina.FieldValues['HorasExtra'] := StrToFloatDef(Monto,0);

                if Concept='NETO' then
                begin
                  rxNomina.FieldValues['Neto'] := StrToFloatDef(Monto,0);
                  sueldot:=StrToFloatDef(Monto,0);
                end;
              end;
              rxNomina.Post;
              connection.QryBusca.Next;
            end;
          end;

          {$ENDREGION}
          origen_contrato:='finiquito';
          frx_ReporteEmpleados.DataSet := QrDatos;
          frx_ReporteEmpleados.FieldAliases.Clear;

          frxContratos.LoadFromFile(Global_Files +global_miReporte +'_FiniquitoBaja.fr3') ;

          frxContratos.Variables.variables['SueldoMensual_Letras'] :=        quotedstr(xNumerosToLletres(rxNomina.FieldByName('Neto').ascurrency));
          frxContratos.Variables.variables['Contratacion_Dia'] :=   quotedstr(FormatDateTime('dd',QrDatos.FieldByName('dFechaSubida').AsDateTime));
          frxContratos.Variables.variables['Contratacion_Mes'] := quotedstr(Uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('dFechaSubida').AsDateTime)));
          frxContratos.Variables.variables['Contratacion_Anyo'] := quotedstr(FormatDateTime('yy', QrDatos.FieldByName('dFechaSubida').AsDateTime));

          if (QrDatos.fieldbyname('Reprogramacion').AsDateTime =0)  then
          begin
            frxContratos.Variables.variables['Vencimiento_Dia'] :=  quotedstr(FormatDateTime('dd', QrDatos.FieldByName('dFechaBajada').AsDateTime));
            frxContratos.Variables.variables['Vencimiento_Mes'] := quotedstr(uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('dFechaBajada').AsDateTime)));
            frxContratos.Variables.variables['Vencimiento_Anyo'] := quotedstr(FormatDateTime('yy', QrDatos.FieldByName('dFechaBajada').AsDateTime));
          end
          else
          begin
            frxContratos.Variables.variables['Vencimiento_Dia'] :=  quotedstr(FormatDateTime('dd', QrDatos.FieldByName('Reprogramacion').AsDateTime));
            frxContratos.Variables.variables['Vencimiento_Mes'] := quotedstr(uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('Reprogramacion').AsDateTime)));
            frxContratos.Variables.variables['Vencimiento_Anyo'] := quotedstr(FormatDateTime('yy', QrDatos.FieldByName('Reprogramacion').AsDateTime));

          end;
          frxContratos.ShowReport() ;
        end
        else MSG_ER('El contrato no fue localizado');
    end;
  finally
    QrDatos.destroy;
  end;
end;

 procedure TfrmEmpleadosGuardias.ImprimirGuardiaNo1Click(Sender: TObject);
begin
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    zqHistoricoG.Active := False;
    zqHistoricoG.ParamByName('numeroorden').AsString :=    zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
    zqHistoricoG.ParamByName('codigo').AsString      := '-1';
    zqHistoricoG.ParamByName('numero').AsInteger     := zqryGuardiasMovtos.FieldByName('iNumeroGuardia').AsInteger;
    zqHistoricoG.Open;

    if zqHistoricoG.RecordCount > 0 then
    begin
      frxDBPersonalProyecto.DataSource := ds_zQHistoricoG;
      frxReporte.LoadFromFile(global_files + global_MiReporte +'_HistoricoGuardiasNumero.fr3');
      frxReporte.ShowReport();
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirHistoricoGuardiaClick(Sender: TObject);
begin
  if ZQEmpleadosH.RecordCount > 0 then
  begin
    zqHistoricoG.Active := False;
    zqHistoricoG.ParamByName('numeroorden').AsString :=         ZQEmpleadosH.FieldByName('sNumeroOrden').AsString;
    zqHistoricoG.ParamByName('codigo').AsString      := connection.zCommand.FieldByName('codigoguardia').AsString;
    zqHistoricoG.ParamByName('numero').AsInteger     := -1;
    zqHistoricoG.Open;

    if zqHistoricoG.RecordCount > 0 then
    begin
      frxDBPersonalProyecto.DataSource := ds_zQHistoricoG;
      frxReporte.LoadFromFile(global_files + global_MiReporte +'_HistoricoGuardias.fr3');
      frxReporte.ShowReport();
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirHistoricoGuaridaNo1Click(
  Sender: TObject);
begin
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    zqHistoricoG.Active := False;
    zqHistoricoG.ParamByName('numeroorden').AsString :=           ZQEmpleadosH.FieldByName('sNumeroOrden').AsString;
    zqHistoricoG.ParamByName('codigo').AsString      := '-1';
    zqHistoricoG.ParamByName('numero').AsInteger     := connection.zcommand.FieldByName('iNumeroGuardia').AsInteger;
    zqHistoricoG.Open;

    if zqHistoricoG.RecordCount > 0 then
    begin
      frxDBPersonalProyecto.DataSource := ds_zQHistoricoG;
      frxReporte.LoadFromFile(global_files + global_MiReporte +'_HistoricoGuardiasNumero.fr3');
      frxReporte.ShowReport();
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirPersonaenlaGuadiaSubida1Click(
  Sender: TObject);
begin
  //subida.
  try
    Try
      qryReporteSB.Active := False;
      qryReporteSB.ParamByName('Guardia').AsString           := zqryGuardiasMovtos.FieldByName('IdGuardia').AsString;
      qryReporteSB.ParamByName('GuardiaPeriodo').AsInteger   := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
      qryReporteSB.ParamByName('Orden').AsString             := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
       qryReporteSB.ParamByName('Contrato').AsString         := global_contrato ;
      qryReporteSB.Open;

      if (qryReporteSB.recordcount > 0) then
      begin
        frxReporteSB.DataSource := dsReporteSB;

        frxReporte.LoadFromFile(global_files +global_mireporte+'_GuardiasReporteSubida.fr3');
        frxReporte.ShowReport();
      end
      else
        MessageDlg('No hay personal a Confirmado.....', mtInformation, [mbOk], 0);
    except
        MSG_ER('Ha ocurrido un error al imprimir');
    End;
  finally
//    frxdbdsEmpleado.DataSource.DataSet := ZqryEmpleados;
     QryReporteSB.Close;
  end;

end;

procedure TfrmEmpleadosGuardias.ImprimirPersonalenlaGuardia2Click(
  Sender: TObject);
begin
  if (zQEmpleadosH.active = true)  then
  begin
    if (zQEmpleadosH.recordcount >0) then
    begin
      frxdbdsEmpleado.FieldAliases.Clear;
      frxdbdsEmpleado.DataSource:= dsZQEmpleadosH;

      frxReporte.LoadFromFile(global_files +global_mireporte+'_GuardiasReporteEmpleados.fr3');
      frxReporte.ShowReport();
    end else MSG_ER('No hay registros para imprimir');
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirPersonalenlaGuardiaBajada1Click(
  Sender: TObject);
begin
  //Bajada
  try
    Try
      qryReporteBD.Active := False;
      qryReporteBD.ParamByName('Guardia').AsString              := zqryGuardiasMovtos.FieldByName('iIdGuardia').AsString;
      qryReporteBD.ParamByName('IdPeriodosGuardia').AsInteger      := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
      qryReporteBD.ParamByName('numeroOrden').AsString          := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
      qryReporteBD.ParamByName('TipoMovimiento').AsString       := 'Baja';
      qryReporteBD.ParamByName('Pagados').AsString              :=  'No';
      qryReporteBD.Open;

      if not qryReporteBD.Active then
        qryReporteBD.Open;

      if (qryReporteBD.recordcount > 0) then
      begin
        frxReporteBD.DataSource := dsReporteBD;

        frxReporte.LoadFromFile(global_files +global_mireporte+'_GuardiasReporteBajada.fr3');
        frxReporte.ShowReport();
      end
      else
        MessageDlg('No hay personal a bajar.', mtInformation, [mbOk], 0);
    except
        MSG_ER('Ha ocurrido un error al imprimir');
    End;
  finally
    qryReporteBD.Close;
  end;

end;

procedure TfrmEmpleadosGuardias.ImprimirPersonalGuardia1Click(Sender: TObject);
begin
  zqPersonalProyecto.Active := False;
  zqPersonalProyecto.ParamByName('contrato').AsString := global_contrato;
  zqPersonalProyecto.ParamByName('proyecto').AsString := ZQOrdenes.FieldByName('sIdFolio').AsString;
  zqPersonalProyecto.Open;

  if zqPersonalProyecto.Active  then
  begin
    if zqPersonalProyecto.RecordCount > 0 then
    begin
      frxDBPersonalProyecto.DataSource := dsPersonalProyecto;

      frxReporte.LoadFromFile(global_files +'PersonalDelProyecto.fr3');
      frxReporte.ShowReport();
    end
    else MSG_ER('No hay registros para imprimir');
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirPreFiniquito1Click(Sender: TObject);
var
  Datos,paramD,DatosOrg:TzQuery;
  NewSalario, SDI, Aguinaldo, Vacaciones, PrimaDominical: Real;
  memPercepciones: TClientDataSet;
  memDeducciones : TClientDataSet;
  QrDatos : TzQuery;
  Concept :  string;
  Monto   :  string;
  i: Integer;
  TotDed:Double;
  Organizacion:Integer;
  ListiIdGuardiaMovtos:String;
  ListCodigoPersonal:String;
  ValFirstQrDatos:Boolean;
begin
  Datos := TzQuery.Create(self);
  Datos.Connection :=  connection.zconnection;

  paramD := TzQuery.Create(self);
  paramD.Connection := connection.zconnection;

  DatosOrg := TzQuery.Create(self);
  DatosOrg.Connection:=connection.zconnection;

  memPercepciones := TClientDataSet.Create(self);
  memDeducciones  := TClientDataSet.Create(self);

  QrDatos:=TzQuery.Create(self);
  QrDatos.AfterScroll := QrDatosAfterScroll;

  ListCodigoPersonal := ObtenerSeleccion('sIdEmpleado','',BView_Empleados);
  ListiIdGuardiaMovtos := ObtenerSeleccion('iIdGuardiaMovtos','',BView_Empleados);

  ValFirstQrDatos := False;
  Calculando := False;

  try
    cdConMemPer.EmptyDataSet;
    cdConMemDed.EmptyDataSet;
    cdNomina.EmptyDataSet;

    QrDatos.connection:=Connection.zConnection;
    QrDatos.SQL.Text:='select' + #10 +
	                    'e.*,' + #10 +
                      'gm.*,' + #10 +
                      'nr.importe,' + #10 +
                      'rn.sDescripcion as nacionalidad,' + #10 +
                      'np.IdFormaPago,'+ #10 +
                      'nc.titulocargo from empleados e' + #10 +
                      'inner join guardiasmovtos gm' + #10 +
                      'on(gm.sIdEmpleado=e.sIdEmpleado)' + #10 +
                      'inner join nuc_cargo nc' + #10 +
                      'on(nc.idCargo=gm.iId_Puesto)' + #10 +
                      'left join nom_rangosalarios nr' + #10 +
                      'on(nr.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
                      'left join rh_nacionalidades rn' + #10 +
                      'on(rn.iIdNacionalidad=e.iIdNacionalidad)' + #10 +
                      'Inner join' + #10 +
                      'nuc_personal as p' + #10 +
                      'on (p.codigopersonal = e.sIdEmpleado)' + #10 +
                      'left join' + #10 +
                      'nom_nomina nom' + #10 +
                      'on (nom.IdPeriodosGuardia = gm.ID_GuardiaPeriodo)' + #10 +
                      'left join' + #10 +
                      'nom_nominapersonal as np' + #10 +
                      'on (np.IdNomina = nom.IdNomina and np.IdPersonal = p.idpersonal)' + #10 +
                      'where (:iIdGuardiaMovtos = -1 or' + #10 +
                      '(:iIdGuardiaMovtos <> -1 and FIND_IN_SET(gm.iIdGuardiaMovtos, :iIdGuardiaMovtos))) and' + #10 +
                      'np.IdFormaPago is null';

    dtBaja := False;

    QrDatos.ParamByName('iIdGuardiaMovtos').AsString := ListiIdGuardiaMovtos;

    QrDatos.Open;
    if QrDatos.RecordCount > 0 then
    begin
      // aqui  hay que  validar  1x1.
      while not QrDatos.Eof do
      begin
       //aqui  vamos a validar que  mande a la  erga a los que  ya  se  les  pagaron.
        if QrDatos.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then

          MSG_ER('No se puede imprimir el finiquito por que es un personal de Base y no se genera contrato')
        else
        begin
          Datos.SQL.text:=
            'select' + #10 +
            'ifnull(nrs.importe,0) as Limite,' + #10 +
            'ps.IdOrganizacion,' + #10 +
            'ps.IdTipoNomina,' + #10 +
            'ntn.DiasTrabajados,' + #10 +
            'ntn.DiasDescanso,' + #10 +
            'ntn.InicioSemana,' + #10 +
            'ntn.IdTipoTablaISPT,' + #10 +
            'nti.Periodicidad,' + #10 +
            'npg.FechaInicio,' + #10 +
            'npg.FechaTermino,' + #10 +
            'ps.FechaMovimiento as FechaSubidaPersonal,' + #10 +
            'pb.FechaMovimiento as FechaBajadaPersonal,' + #10 +
            'ps.FechaMovimiento,' + #10 +
            'ps.salariodiario,' + #10 +
            'ps.FechaMovimiento,' + #10 +
            'ps.IdPeriodosGuardia,' + #10 +
            'ps.IdPersonal,' + #10 +
            'ps.salariointegrado' + #10 +
            'from nuc_personal np' + #10 +
            'inner join nuc_personalimss ps' + #10 +
            'on (ps.IdPersonal = np.idpersonal and ps.IdPeriodosGuardia = :IdPeriodosGuardia and ps.TipoMovimiento = "Reingreso")' + #10 +
            'left join nuc_personalimss pb' + #10 +
            'on (pb.IdPersonal = np.idpersonal and pb.IdPeriodosGuardia = :IdPeriodosGuardia and pb.TipoMovimiento = "Baja")' + #10 +
            'inner join nuc_organizacion noi' + #10 +
            'on (noi.IdOrganizacion=ps.IdOrganizacion)' + #10 +
            'inner join nom_tiponomina ntn' + #10 +
            'on(ntn.IdTipoNomina=ps.IdTipoNomina)' + #10 +
            'inner join nom_tipotablaispt nti' + #10 +
            'on(nti.IdTipoTablaIspt=ntn.IdTipoTablaIspt)' + #10 +
            'inner join nom_periodosguardia npg' + #10 +
            'on(npg.IdPeriodosGuardia = ps.IdPeriodosGuardia)' + #10 +
            'inner join nuc_cargo nc' + #10 +
            'on(nc.idCargo = ps.IdCargo)' + #10 +
            'left join nom_rangosalarios nrs' + #10 +
            'on(nrs.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
            'where (:CodigoPersonal = -1 or(:CodigoPersonal <> -1 and FIND_IN_SET(np.CodigoPersonal,:CodigoPersonal)))' + #10 +
            'group by' + #10 +
            'np.idpersonal'
          ;

            Datos.ParamByName('CodigoPersonal').AsString := QrDatos.FieldByName('sIdEmpleado').AsString;
            Datos.ParamByName('IdPeriodosGuardia').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
            Datos.open;


          if datos.RecordCount > 0 then  //aqui  el  operador que iba era  el = lo  cambie por  mayor >.
          begin
            paramD.close;
            CrearConjunto(paramD,'rhu_salario', 'CATALOGO');
            paramD.ParamByName('TipoSalario').AsString:='SMVDF';//'SMVDF'
            paramD.ParamByName('FechaAplicacion').AsString := DatetoStrSql(Datos.FieldByName('FechaInicio').asdatetime);
            paramD.open;

            DatosOrg.close;
            CrearConjunto(DatosOrg,'nuc_organizacion', 'CATALOGO');
            DatosOrg.ParamByName('idorganizacion').asinteger := Datos.fieldByname('IdOrganizacion').asinteger;
            DatosOrg.open;

            if DatosOrg.fieldByname('padre').asinteger = -5 then
              Organizacion:=DatosOrg.fieldByname('IdOrganizacion').asinteger
            else
              Organizacion:=DatosOrg.fieldByname('padre').asinteger;

            try
              GenerarCalculoVirtual(Self,-1,
                                    Organizacion, //Padre
                                    DatosOrg.fieldByname('FactorPrimaDominical').Asfloat,
                                    DatosOrg.fieldByname('FactorPrimaVacacional').Asfloat,
                                    paramD.fieldByname('salario').Asfloat,
                                    DatosOrg.fieldByname('SalMinGenZona').Asfloat,
                                    DatosOrg.fieldByname('SeguroVidaINFONAVIT').Asfloat,
                                    DatosOrg.fieldByname('DiasExcentoPrimaVacacional').AsInteger,
                                    DatosOrg.fieldByname('DiasExcentoAguinaldo').AsInteger,
                                    DatosOrg.FieldByName('NSMTopeIntImss').AsInteger,
                                    Datos.fieldByname('IdTipoNomina').asinteger,
                                    Datos.fieldByname('DiasTrabajados').asinteger,
                                    Datos.fieldByname('DiasDescanso').asinteger,
                                    DiasFestivos(Datos.FieldByName('FechaInicio').asdatetime,Datos.FieldByName('Fechatermino').asdatetime),
                                    Domingos(Datos.FieldByName('FechaInicio').asdatetime,Datos.FieldByName('Fechatermino').asdatetime),
                                    Datos.fieldByname('InicioSemana').asstring,
                                    Datos.fieldByname('IdTipoTablaISPT').asinteger,
                                    Datos.fieldByname('Periodicidad').Asfloat,
                                    Datos.fieldByname('SalarioDiario').Asfloat,
                                    (*702.14,*)Datos.fieldByname('SalarioIntegrado').Asfloat,
                                    Datos.FieldByName('FechaInicio').asdatetime,
                                    Datos.FieldByName('FechaTermino').asdatetime,
                                    memPercepciones,
                                    memDeducciones,
                                    NewSalario,SDI, Aguinaldo,
                                    Vacaciones, PrimaDominical,
                                    False);

              sueldot := 0;

              cdNomina.First;

              cdNomina.Insert;
              cdNomina.Post;

              memPercepciones.first;
              cdNomina.edit;
              while not memPercepciones.Eof do
              begin
                Concept := uppercase(memPercepciones.FieldByName('CodigoConcepto').AsString) ;
                Monto := memPercepciones.FieldByName('Importe').AsString ;
                if Concept='1' then  // = 1
                cdNomina.FieldValues['Sueldo'] := StrToFloatDef(Monto,0);
                if Concept='10' then  //10
                cdNomina.FieldValues['PrimaDom'] := StrToFloatDef(Monto,0);
                if Concept='11' then      //11
                cdNomina.FieldValues['DiaFestivo'] := StrToFloatDef(Monto,0);
                if Concept='19' then  //19
                cdNomina.FieldValues['Vacaciones'] := StrToFloatDef(Monto,0);
                if Concept='22' then  //22
                cdNomina.FieldValues['PrimaVac'] := StrToFloatDef(Monto,0);
                if Concept='24' then       //24
                cdNomina.FieldValues['Aguinaldo'] := StrToFloatDef(Monto,0);
                if Concept='TOTDED' then          //  TOTDED
                cdNomina.FieldValues['Deducciones'] := StrToFloatDef(Monto,0);

                if Concept='NETO' then
                begin
                  cdNomina.FieldValues['Neto'] := StrToFloatDef(Monto,0);
                  sueldot:=StrToFloatDef(Monto,0);
                end;
                memPercepciones.Next;
              end;
              cdNomina.FieldValues['IdPersonal'] := QrDatos.FieldByName('IdPersonal').AsInteger;
              cdNomina.FieldValues['HorasExtra'] := 0;

              cdNomina.Post;
              TotDed := 0;

              cdNomina.edit;
              //cdNomina.Insert;
              memDeducciones.first;

              while not memDeducciones.Eof do
              begin
                Concept :=  memDeducciones.FieldByName('CodigoConcepto').AsString ;
                Monto := memDeducciones.FieldByName('Importe').AsString ;
                if Concept='1' then
                cdNomina.FieldValues['Sueldo']     := StrToFloatDef(Monto,0);
                if Concept='10' then
                cdNomina.FieldValues['PrimaDom']   := StrToFloatDef(Monto,0);
                if Concept='11' then
                cdNomina.FieldValues['DiaFestivo'] := StrToFloatDef(Monto,0);
                if Concept='19' then
                cdNomina.FieldValues['Vacaciones'] := StrToFloatDef(Monto,0);
                if Concept='22' then
                cdNomina.FieldValues['PrimaVac']   := StrToFloatDef(Monto,0);
                if Concept='24' then
                cdNomina.FieldValues['Aguinaldo']  := StrToFloatDef(Monto,0);

                if Concept='NETO' then
                begin
                  cdNomina.FieldValues['Neto'] := StrToFloatDef(Monto,0);
                  sueldot:=StrToFloatDef(Monto,0);
                end;

                if memDeducciones.FieldByName('Modo').AsString = 'DEDUCCION' then
                  TotDed:=TotDed+  StrToFloatDef(Monto,0);

                memDeducciones.Next;
              end;
              cdNomina.FieldValues['IdPersonal'] := QrDatos.FieldByName('IdPersonal').AsInteger;
              cdNomina.FieldValues['Deducciones'] := TotDed;
              cdNomina.Post;

              memPercepciones.EmptyDataSet;
              memDeducciones.EmptyDataSet;
              memPercepciones.FieldDefs.Clear;
              memDeducciones.FieldDefs.Clear;
              memPercepciones := nil;
              memDeducciones := nil;
              //Termina  proceso.
            finally
              GcForma.Destroy;
              GcForma := nil;
            end;
          end;
            QrDatos.Next;
        end;
      end;

        //Datos.Next;

      Calculando := True;

      frxNomina.DataSet := cdNomina;
      origen_contrato:='Prefiniquito';

      frx_ReporteEmpleados.DataSet := QrDatos;
      frx_ReporteEmpleados.FieldAliases.Clear;

      frxContratos.LoadFromFile(Global_Files +global_miReporte +'_PreFiniquito.fr3') ;
      frxContratos.ShowReport();
    end
    else
      MessageDlg('No hay registros para imprimir.'+ #10 + ' El empleado seleccionado no es valido.', mtInformation, [mbOk], 0);
  finally
    Datos.destroy;
    paramD.destroy;
    DatosOrg.destroy;
    QrDatos.destroy;
    if Assigned(gcforma) then
      gcforma.close;
    frxnomina.Dataset := rxnomina;
    cdNomina.Filtered := false;
  end;
end;

procedure TfrmEmpleadosGuardias.ImprimirRecibo1Click(Sender: TObject);
var
  Cursor: TCursor;
  NumRec, i, op: Integer;
  Cadena, Modo, Modo2, Codigo, Titulo, Nombre, Grupo, Cargo, Valor, Imprime,
  Orden: String;

function RellenaOrden(Cad:string):string;
begin
  while Length(Trim(Cad)) < 14 do
  begin
    Cad:='0'+Cad;
  end;
  Result := Cad;
end;
begin
  Try
    Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crAppStart;
      // Abrir la nómina que se va a imprimir
      if Not YaCreado then
      begin
        cdDetalleSave.Open;

        memPercepciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        memPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
        memPercepciones.FieldDefs.Add('Titulo', ftString, 25, False);
        memPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
        memPercepciones.FieldDefs.Add('Modo', ftString, 50, False);
        memPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
        memPercepciones.FieldDefs.Add('Orden', ftString, 10, False);
        memPercepciones.CreateDataSet;
        memPercepciones.Open;

        memDeducciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        memDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
        memDeducciones.FieldDefs.Add('Titulo', ftString, 25, False);
        memDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
        memDeducciones.FieldDefs.Add('Modo', ftString, 50, False);
        memDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
        memDeducciones.FieldDefs.Add('Orden', ftString, 10, False);
        memDeducciones.CreateDataSet;
        memDeducciones.Open;

        YaCreado := True;
      end;

      if zqHistorial.Locate('sIdEmpleado; sIdGuardia; ID_PeriodoGuardia', VarArrayOf([ZQEmpleadosH.FieldByName('sIdEmpleado').AsString,
         ZQEmpleadosH.FieldByName('iIdGuardia').AsString, ZQEmpleadosH.FieldByName('ID_GuardiaPeriodo').AsInteger]), []) then
      begin
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('SELECT nnp.IdNomina, nnp.IdFormaPago, np.idpersonal FROM nuc_personal np ');
        connection.QryBusca.SQL.Add('INNER JOIN nom_nominapersonal nnp ON (np.idpersonal=nnp.IdPersonal) '+
                                    'INNER JOIN nom_nomina a ON (nnp.IdNomina=a.IdNomina)'+
                                    'WHERE (np.codigopersonal=:id) and (:FechaInicio = a.FechaNomina and :FechaTermino= a.FechaTerminoNomina)');
        connection.QryBusca.ParamByName('id').Asstring := ZQEmpleadosH.FieldByName('sIdEmpleado').Asstring;
        connection.QryBusca.ParamByName('FechaInicio').AsDateTime :=   zqHistorial.FieldByName('dFechaInicio').AsDateTime;
        connection.QryBusca.ParamByName('FechaTermino').AsDateTime := zqHistorial.FieldByName('dFechaTermino').AsDateTime;
        connection.QryBusca.Open ;
        if  connection.QryBusca.RecordCount>0 then
        begin
          cdBuscar.ParamByName('IdNomina').AsInteger:=connection.QryBusca.FieldByName('IdNomina').AsInteger;
        end
        else
          raise Exception.Create('No se le ha calculado la nómina a este empleado.');
        if connection.QryBusca.FieldByName('IdFormaPago').AsInteger = 0 then
        begin
          if not MSG_YN('El pago aún no se ha realizado, los datos pueden ser incorrectos, ¿desea imprimir el recibo?') then
            exit;
        end;
        if cdBuscar.Active then
          cdBuscar.Refresh
        else
          cdBuscar.Open;

        // Crear el conjunto de los datos generales del empleado
        if Not Assigned(cdGenerales) then
          cdGenerales := TClientDataSet.Create(Self)
        else
        begin
          cdGenerales.Close;
          cdGenerales.FieldDefs.Clear;
        end;

        // Crear el conjunto de personal
        cdPersonalDetalleNomina.close;
        cdPersonalDetalleNomina.ParamByName('IdNomina').AsInteger   :=              cdBuscar.FieldByName('IdNomina').AsInteger;
        cdPersonalDetalleNomina.ParamByName('IdPersonal').AsInteger := connection.QryBusca.FieldByName('idpersonal').AsInteger;
        cdPersonalDetalleNomina.Open;

        if cdPersonalDetalleNomina.RecordCount = 0 then
          raise Exception.Create('El catálogo está vacío, se ha solicitado la información del catálogo de Personal por Detalle de Nómina el cual se encuentra vacío, no es posible continuar con el proceso si dicho catálogo no contiene datos.');

        cdDetalleSave.ParamByName('IdNomina').AsInteger :=              cdBuscar.FieldByName('IdNomina').AsInteger;
        cdDetalleSave.ParamByName('Personal').AsInteger := connection.QryBusca.FieldByName('idpersonal').AsInteger;

        if cdDetalleSave.Active then
          cdDetalleSave.Refresh    //Este Refresh tarda mucho
        else
          cdDetalleSave.Open;

        if cdDetalleSave.RecordCount = 0 then
          raise Exception.Create('El catálogo está vacío, Se ha solicitado la información del catálogo de la Nómina el cual se encuentra vacío, no es posible continuar con el proceso si dicho catálogo no contiene datos.');

        // Limpiar los datos de nómina de empleado que pudieran existir
        memPercepciones.EmptyDataSet;
        memDeducciones.EmptyDataSet;

        cdDetalleSave.First;

        // Identificar cuantos registros componen su nómina
        NumRec := 0;
        Cadena := cdDetalleSave.FieldByName('Clave').AsString;
        while Pos('|', Cadena) > 0 do
        begin
          Inc(NumRec);
          Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
        end;

        // Obtener el universo de conceptos de entre todos los empleados
        cdDetalleSave.First;
        while not cdDetalleSave.Eof do
        begin
          for i := 0 to NumRec - 1 do
          begin
            Modo := Parte(i, cdDetalleSave.FieldByName('Modo').AsString);
            Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);

            if (CompareText(Modo, 'EMPLEADO') = 0) and (cdGenerales.FieldDefs.IndexOf(Codigo) < 0) then
              cdGenerales.FieldDefs.Add(Codigo, ftString, 200, False);
          end;

          cdDetalleSave.Next;
        end;
        cdGenerales.CreateDataSet;
        cdGenerales.Open;

        cdDetalleSave.First;
        while not cdDetalleSave.Eof do
        begin
          // Identificar cuantos registros componen su nómina
          NumRec := 0;
          Cadena := cdDetalleSave.FieldByName('Clave').AsString;
          while Pos('|', Cadena) > 0 do
          begin
            Inc(NumRec);
            Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
          end;

          cdGenerales.Append;
          cdGenerales.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;

          for i := 0 to NumRec - 1 do
          begin
            Modo   :=            Parte(i, cdDetalleSave.FieldByName('Modo').AsString);
            Codigo :=  Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);
            Titulo :=          Parte(i, cdDetalleSave.FieldByName('Titulo').AsString);
            Nombre :=     Parte(i, cdDetalleSave.FieldByName('Descripcion').AsString);
            Grupo  := Parte(i, cdDetalleSave.FieldByName('IdGrupoConcepto').AsString);
            Cargo  :=           Parte(i, cdDetalleSave.FieldByName('Cargo').AsString);
            Imprime :=        Parte(i, cdDetalleSave.FieldByName('Imprime').AsString);
            Valor  :=           Parte(i, cdDetalleSave.FieldByName('Valor').AsString);

            if CompareText(Modo, 'EMPLEADO') = 0 then
              cdGenerales.FieldByName(Codigo).AsString := Valor;
            //por cuestiones del destino en mi pc el cdconcepto aparece como inactivo, es por eso q se abre aqui
            if cdConcepto.State = dsInactive then
            begin
              cdConcepto.ParamByName('IdTipoNomina').AsInteger:=cdBuscar.FieldByName('IdTipoNomina').AsInteger;
              cdConcepto.Open;
            end;

            if (CompareText(Modo, 'PERCEPCION') = 0) and (cdConcepto.Locate('CodigoConcepto', Codigo, []) and ((cdConcepto.FieldByName('Imprime').AsString = 'Si') or ((cdConcepto.FieldByName('Imprime').AsString = 'Datos') and (StrToFloat(Valor) <> 0)))) then
            begin
              Orden := '';
              cdConcepto.Locate('codigoconcepto',Codigo,[]);
              Orden := cdConcepto.FieldByName('orden').AsString;
              Orden := RellenaOrden(Orden);
              memPercepciones.Append;
              memPercepciones.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;
              memPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
              memPercepciones.FieldByName('Titulo').AsString := Titulo;
              memPercepciones.FieldByName('Nombre').AsString := Nombre;
              memPercepciones.FieldByName('Importe').AsString := Valor;
              memPercepciones.FieldByName('Orden').AsString  :=  Orden;
              memPercepciones.Post;
            end;

            if CompareText(Modo, 'DEDUCCION') = 0 then
            begin
              Orden := '';
              cdConcepto.Locate('codigoconcepto',Codigo,[]);
              Orden := cdConcepto.FieldByName('orden').AsString;
              Orden := RellenaOrden(Orden);
              memDeducciones.Append;
              memDeducciones.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;
              memDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
              memDeducciones.FieldByName('Titulo').AsString := Titulo;
              memDeducciones.FieldByName('Nombre').AsString := Nombre;
              memDeducciones.FieldByName('Importe').AsString := Valor;
              memDeducciones.FieldByName('Orden').AsString  :=  Orden;
              memDeducciones.Post;
            end;
          end;
          cdGenerales.Post;
          cdDetalleSave.Next;
        end;

        memPercepciones.IndexFieldNames := 'Orden';
        memDeducciones.IndexFieldNames :=  'Orden';
        cdConcepto.Close;
      end;

      FDSGenerales.DataSet := cdGenerales;

      frxContratos.LoadFromFile(Global_Files +global_miReporte +'_ReciboGuardias.fr3') ;

      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('Select' + #10 +
                                    'pr.IdOrganizacion,' + #10 +
                                    'o.nombreorganizacion,' + #10 +
                                    'o.tituloorganizacion,' + #10 +
                                    'o.descripcion,' + #10 +
                                    'pr.IdPersonal,' + #10 +
                                    'CONCAT(per.APaterno, " ", per.AMaterno," ", per.Nombres) as NombreCompleto' + #10 +
                                  'From nuc_personalimss pr' + #10 +
                                  'inner join nuc_organizacion as o' + #10 +
                                    'on(o.idorganizacion = pr.IdOrganizacion)' + #10 +
                                  'inner join nuc_personal as per' + #10 +
                                    'on(per.idpersonal = pr.IdPersonal)' + #10 +
                                  'where pr.TipoMovimiento = "Reingreso" and' + #10 +
                                  'pr.IdPeriodosGuardia = :IdPeriodosGuardia and' + #10 +
                                  'per.codigopersonal = :empleado');

      connection.QryBusca.Params.ParamByName('empleado').AsString := ZQEmpleadosH.FieldByNAme('sIdEmpleado').asstring ; {sIdEmpleado}
      connection.QryBusca.Params.ParamByName('IdPeriodosGuardia').AsInteger := ZQEmpleadosH.FieldByName('ID_GuardiaPeriodo').AsInteger;
      connection.QryBusca.Open ;
      if  connection.QryBusca.RecordCount>0 then
        frxContratos.Variables.Variables[ 'Plataforma'] := quotedstr(connection.QryBusca.FieldByName('nombreorganizacion').AsString)
      else
        frxContratos.Variables.Variables[ 'Plataforma'] := quotedstr('*');

      frxContratos.ShowReport();
    Finally
      Screen.Cursor := Cursor;

      memPercepciones.Filtered := False;
      memDeducciones.Filtered := False;
    End;
  Except
    on e:Exception do
      MessageDlg('Ha ocurrido un error inesperado, Informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TfrmEmpleadosGuardias.mostrarColoresEstatus(activo: Boolean);
begin
  //Muestra los colores de los estatus que existen para los empleados
  lbl6.Visible  := activo;
  lbl7.Visible  := activo;
  lbl8.Visible  := activo;
  lbl9.Visible  := activo;
  lbl10.Visible := activo;
  lbl11.Visible := activo;
end;

procedure TfrmEmpleadosGuardias.pasarEmpleadoATabla;
  var
    empleados : string;
    sStatusPersonalR : string;
begin
  if TipoPersonal.EditValue = 'Tierra' then
     sStatusPersonalR:='Contratado'
  else
     sStatusPersonalR:='Pendiente';

  if connection.configuracionRecHum.FieldValues['eGuardias'] = 'Si' then
     sFiltroEmpleado := ' and sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado
  else
     sFiltroEmpleado := ' and sStatusTipoPersonal= '+ QuotedStr(TipoPersonal.EditValue)+' and sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado;

 rxEmpleados.First;
  if cmbOrganizacion.KeyValue = 0 then
     sFiltroEmpleado := ''
  else
     sFiltroEmpleado := ' and idOrganizacion = '+ QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));

  empleados := 'sIdEmpleado <> ""';
  while not rxEmpleados.Eof do
  begin
    empleados := empleados + ' and sIdEmpleado <> '+QuotedStr(rxEmpleados.FieldByName('sIdEmpleado').AsString);
    rxEmpleados.Next;
  end;

  try
    zqryListaEmpleados.Filtered := False;
    zqryListaEmpleados.Filter := empleados + sFiltroEmpleado;
    zqryListaEmpleados.Filtered := True;
  except
    zqryListaEmpleados.Filtered := False;
  end;
end;

procedure TfrmEmpleadosGuardias.PersonalDesembarcado1Click(Sender: TObject);
var
  FrmPerBaja:TForm;
begin
  Crear_Form(PnlPerBaja,FrmPerBaja,'Reporte del Personal Desembarcado',4,146,165,231,[biSystemMenu]);
end;

procedure TfrmEmpleadosGuardias.popPersonalGuardiasActivasClick(
  Sender: TObject);
begin
  zqPersonalGuardiasAct.Active := False;
  zqPersonalGuardiasAct.ParamByName('contrato').AsString := global_contrato;
  zqPersonalGuardiasAct.ParamByName('sStatus').AsString := 'Activo';
  zqPersonalGuardiasAct.Open;

  if zqPersonalGuardiasAct.Active  then
  begin
    if zqPersonalGuardiasAct.RecordCount > 0 then
    begin
      frxDBPersonalGuardiasActivas.DataSource := dsPersonalGuardiasActivas;

      frxReporte.LoadFromFile(global_files +'PersonalGuardiasActivas.fr3');
      frxReporte.ShowReport();
    end
    else MSG_ER('No hay registros para imprimir');
  end;
end;

procedure TfrmEmpleadosGuardias.PopupImprimirPopup(Sender: TObject);
var
  empleadosActivos : TZQuery;
begin
  //Jugar con los boton Autorizar Guardia y Desautorizar Guardia
  //Si la guardia esta autorizada, entonces mostrar el boton Desautorizar guardia
  //Si la guardia esta desautorizada entonces habilitar el boton de Autorizar guardia
  if zqryGuardiasMovtos.FieldByName('Autorizar').AsString = 'SI' then
  begin
    AutorizarGuardia1.Visible := False;
    desautorizarGuardia.Visible := True;
  end else if zqryGuardiasMovtos.FieldByName('Autorizar').AsString = 'NO' then
  begin
    AutorizarGuardia1.Visible := True;
    desautorizarGuardia.Visible := False;
  end;

  //Habilitar la opcion Bajar Guardia Completa siempre y cuando todo el personal de la guardia
  //esten bajados, si al menos uno no esta bajado, entonces el boton de Bajar Guardia Completa no aparecera
  with connection.QryBusca do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select sStatus from guardiasmovtos where (iIdGuardia =:IdFolio) and (ID_GuardiaPeriodo = :PeriodoGuardia) and (sStatus = "Activo")';
    Params.ParamByName('IdFolio').asString          :=           zqryGuardiasMovtos.FieldByName('sIdFolio').asString;
    Params.ParamByName('PeriodoGuardia').AsInteger  := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
    Open;
  end;

  if (connection.QryBusca.RecordCount = 0) (*and (zqryEmpleados.RecordCount > 0)*) then
    BajarGuardiaCompleta.Visible := True
  else
    BajarGuardiaCompleta.Visible := False;

  HistoricoGuardias.Caption  :=  'Imprimir Histórico Guardia "'+zqryGuardiasMovtos.FieldByName('codigoguardia').AsString+'"';
  ImprimirGuardiaNo1.Caption :=  'Imprimir Guardia No. '+IntToStr(zqryGuardiasMovtos.FieldByName('iNumeroGuardia').AsInteger);
end;

procedure TfrmEmpleadosGuardias.PopupMenu1Popup(Sender: TObject);
var
  arrayPagadosTodos, arrayBajados, arraysStatusTipoPersonal : array of string;
  i : Integer;
  habilitarBotonBajar : Boolean;
begin
  //Habilitar o deshabilitar la opcion de Bajar las condiciones son:
  //1.- Si al menos un empleado esta pagado en nominas y no esta bajado, entonces habilitar el boto de Bajar(Seleccionados)
  //2.- Si ningun empleado seleccionado esta pagado en nominas, entonces deshabilitar el boton Bajar(Seleccionados)
  SetLength(arrayPagadosTodos, BView_Empleados.Controller.SelectedRowCount);
  SetLength(arrayBajados, BView_Empleados.Controller.SelectedRowCount);
  SetLength(arraysStatusTipoPersonal, BView_Empleados.Controller.SelectedRowCount);

  for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
  begin
    arrayPagadosTodos[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadosPagado_Todo.Index];
    arrayBajados[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossStatus.Index];
    arraysStatusTipoPersonal[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxsStatusTipoPersonal.Index];
  end;

  habilitarBotonBajar := False;
  for i := 0 to Length(arrayPagadosTodos) - 1 do
  begin
    if ((arrayPagadosTodos[i] = 'SI') and (arrayBajados[i] <> 'Bajo')) or (arraysStatusTipoPersonal[i] = 'Tierra') then
      habilitarBotonBajar := True;
  end;

  //btnBajarPersonal.Visible := habilitarBotonBajar;

  if zqryEmpleados.RecordCount > 0 then
  begin
    Aplicarfechadesubida.Enabled := True;
    btnReprogramarFechadeBajada.Enabled := True;
    btnSeleccionarTodos.Enabled := True
  end
  else
  begin
    Aplicarfechadesubida.Enabled := False;
    btnReprogramarFechadeBajada.Enabled := False;
    btnSeleccionarTodos.Enabled := False;
  end;
end;

procedure TfrmEmpleadosGuardias.PopupReprogramacionGuardiaPopup(
  Sender: TObject);
begin
  if Thistorial_guardias.Visible = true then
  begin
    popupreprogramacionguardia.Items[0].Visible := False;
    popupreprogramacionguardia.Items[1].Visible := True;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select codigoguardia, iNumeroGuardia from nom_guardia where idGuardia =:guardia');
    connection.zCommand.ParamByName('guardia').AsInteger := ZQGuardiasH.FieldByName('ID_PeriodoGuardia').AsInteger;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      ImprimirHistoricoGuardia.Caption    :=  'Imprimir Histórico Guardia "'+connection.zCommand.FieldByName('codigoguardia').AsString+'"';
      ImprimirHistoricoGuaridaNo1.Caption :=  'Imprimir Histórico Guardia No. '+IntToStr(connection.zCommand.FieldByName('iNumeroGuardia').AsInteger);
    end;
  end
  else
  begin
    popupreprogramacionguardia.Items[0].Visible := True;
    popupreprogramacionguardia.Items[1].Visible := False;
  end;
end;

procedure TfrmEmpleadosGuardias.AdvGlowButton1Click(Sender: TObject);
begin
  frm_ControlEmpleados2.AccionRegistro := 2;
  Application.CreateForm(TfrmControlEmpleados2, frmControlEmpleados2);
  frmControlEmpleados2.Show;
end;

procedure TfrmEmpleadosGuardias.AplicarfechadesubidaClick(
  Sender: TObject);
begin
  if zqryGuardiasMovtos.fieldbyname('Autorizar').AsString = 'NO' then
  begin
    //Abre la ventana para seleccionar una fecha de subida para todos los empleados seleccionados
    formularioFechaSubida := TForm.Create(Self);
    formularioFechaSubida.Width   := 290;
    formularioFechaSubida.Height  := 110;
    formularioFechaSubida.Caption := 'Modificar fecha de subida';
    formularioFechaSubida.BorderStyle :=         bsSingle;
    formularioFechaSubida.Position    := poMainFormCenter;
    formularioFechaSubida.AutoSize    := True;
    formularioFechaSubida.BorderIcons :=   [biSystemMenu];

    panelFechaSubida.Parent  := formularioFechaSubida;
    panelFechaSubida.Align   := alClient;
    panelFechaSubida.Visible :=     True;

    dateFechaSubida.Date := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
    dateFechaSubida.Properties.MaxDate :=   zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
    dateFechaSubida.Properties.MinDate := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;

    formularioFechaSubida.ShowModal;
  end
  else
    MessageDlg('¡La guardia ya está autorizada, no se permite modificar las fechas de subida!', mtInformation, [mbOk], 0);
end;

procedure TfrmEmpleadosGuardias.AutorizarGuardia1Click(Sender: TObject);
begin
  try
    try
      connection.zConnection.StartTransaction;

      validarConfirmadoOContratado('sComprobado');

      if desConfirmadoODesContratado = True then
        Exit;

      validarConfirmadoOContratado('sStatusPersonal');

      if desConfirmadoODesContratado = True then
        Exit;

      Autorizar_Guardia;

      if connection.zConnection.InTransaction then
         connection.zConnection.Commit;
    finally
      if connection.zConnection.InTransaction then
       connection.zConnection.Rollback;
    end;
  Except
    if connection.zConnection.InTransaction then
       connection.zConnection.Rollback;
  end;
end;

procedure TfrmEmpleadosGuardias.Autorizar_Guardia;
var
  Z11, idMovto: integer;
  wAnyo, wMes, wDia: Word;
  primerDia: Tdate;
  ZQnom_nomina:TZQuery;
  Cursor: TCursor;
begin
  Z11     :=0;
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := CrAppStart;
    if zqryGuardiasMovtos.RecordCount > 0 then    //Valida que existan guardias
    begin
      if zqryEmpleados.active = true then         //Valida que la tabla de empleados tenga datos
      begin
        if zqryEmpleados.recordcount > 0 then     //Valida que la tabla de empleados tenga datos
        begin
          if zqryGuardiasMovtos.fieldbyname('Autorizar').asstring = 'NO' then   //Valida que la guardia no este autorizada
          begin
            //Actualiza el estatus de la guardia
            Z1.SQL.Clear;
            Z1.SQL.Add('update guardias set Autorizar = "SI" where (sIdFolio =:IdFolio) and (ID_PeriodoGuardia = :PeriodoGuardia) and (sStatusGuardia = "Activo") and (sNumeroOrden = :NumeroOrden) ');
            Z1.ParamByName('IdFolio').asString          := zqryGuardiasMovtos.Fieldbyname('sIdFolio').AsString;
            Z1.ParamByName('PeriodoGuardia').AsInteger  := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
            Z1.ParamByName('NumeroOrden').AsString       := zqryOrdenes.Fieldbyname('sNumeroOrden').AsString;
            Z1.ExecSQL;
            /////////////////////////////////////////////////////////////
            //Bloque para guardar en nom_nomina
            /////////////////////////////////////////////////////////////
            //Se valida que el registro no existe
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select * from nom_nomina where FechaNomina = :FNomina and FechaTerminoNomina = :FTNomina and IdPeriodosguardia = :IdPeriodosguardia');
            connection.QryBusca2.ParamByName('FNomina').AsDate  := zqryGuardiasMovtos.Fieldbyname('dFechaInicial').AsDateTime;
            connection.QryBusca2.ParamByName('FTNomina').AsDate := zqryGuardiasMovtos.Fieldbyname('dFechaFinal').AsDateTime;
            connection.QryBusca2.ParamByName('IdPeriodosguardia').asInteger := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').asInteger;
            connection.QryBusca2.Open;
            if connection.QryBusca2.RecordCount = 0 then
            begin
              // Para saber el id del tipo de nomina
              connection.QryBusca.Active := False;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('select max(IdNomina) as maximo from nom_nomina ');
              connection.QryBusca.Open;
              if (connection.QryBusca.RecordCount) = 0 then IdMovto := 1
              else idMovto := connection.QryBusca.Fieldbyname('maximo').asInteger + 1;

              ZQNomina_Guardia.Filtered := false;
              ZQNomina_Guardia.Filter := 'IdPeriodosGuardia= '+ Inttostr(zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger);
              ZQNomina_Guardia.Filtered := true;

              ZQnom_nomina := TZQuery.Create(nil);
              ZQnom_nomina.Connection := connection.zConnection;
              ZQnom_nomina.Active:=False;
              ZQnom_nomina.SQL.Add('insert into nom_nomina (IdNomina, IdTipoNomina, IdPeriodosGuardia, Titulo, '+
                                    'FechaNomina, FechaTerminoNomina, Dias, Domingos, Festivos, Estado, fechapagonomina) '+
                                   'values (:Nomina, :TipoNomina, :PeriodosGuardia, :Ttl, :FNomina, :FTerminoNomina, :Ds, '+
                                    ':Dmngs, :Fstvs, :stdo, :fechapagonomina)');
              ZQnom_nomina.ParamByName('Nomina').asinteger          := idMovto;
              ZQnom_nomina.ParamByName('TipoNomina').asinteger      := ZQNomina_Guardia.Fieldbyname('IdTipoNomina').AsInteger;
              ZQnom_nomina.ParamByName('PeriodosGuardia').asinteger := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
              ZQnom_nomina.ParamByName('Ttl').AsString              := 'Lista de raya de la '+zqryGuardiasMovtos.Fieldbyname('sObservaciones').AsString+' del '+DateToStr(zqryGuardiasMovtos.Fieldbyname('dFechaInicial').AsDateTime)+' al '+ DateToStr(zqryGuardiasMovtos.Fieldbyname('dFechaFinal').AsDateTime);
              ZQnom_nomina.ParamByName('FNomina').AsDate            := zqryGuardiasMovtos.Fieldbyname('dFechaInicial').AsDateTime;
              ZQnom_nomina.ParamByName('FTerminoNomina').AsDate     := zqryGuardiasMovtos.Fieldbyname('dFechaFinal').AsDateTime;
              ZQnom_nomina.ParamByName('Ds').asinteger              := ZQNomina_Guardia.Fieldbyname('Trabajados').asinteger;
              ZQnom_nomina.ParamByName('Dmngs').asinteger           := ZQNomina_Guardia.Fieldbyname('Domingos').asinteger;
              ZQnom_nomina.ParamByName('Fstvs').asinteger           := ZQNomina_Guardia.Fieldbyname('festivos').asinteger;
              ZQnom_nomina.ParamByName('stdo').AsString             := 'ABIERTA';
              ZQnom_nomina.ParamByName('fechapagonomina').AsDate    := zqryGuardiasMovtos.Fieldbyname('dFechaFinal').AsDateTime;
              ZQnom_nomina.ExecSQL;
              ZQnom_nomina.free;
            end;

            //zqryEmpleados.Refresh;
            //zqryGuardiasMovtos.Refresh;

            //Antes de que la puta conexion se quede en el limbo y no se grabe ni madres hago el commit
            //por que quien hizo la funcion de actualizar está pasado de verga por no decir de pendejo

            if connection.zConnection.InTransaction then
              connection.zConnection.Commit;

            posicion:= zqryOrdenes.GetBookmark;
            posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
            posicion_empleados := zqryEmpleados.GetBookmark;
            //actualizar;
            //la neta aqui solo pongo POR PIEDAD lo que considero que solo habia que actualizar
            //y eso que está regado como un cancer todo este desmadre

            If ZQPersonal_Pagado.Active then
              zqPersonal_Pagado.refresh
            else
              ZQPersonal_Pagado.Open;

            If zqryListaEmpleados.Active then
              zqryListaEmpleados.refresh
            else
              zqryListaEmpleados.Open;

            if qryGuardias.Active  then
              qryGuardias.refresh
            else
              qryGuardias.Open ;

            If GuardiaTodas.active then
              GuardiaTodas.refresh
            else
              GuardiaTodas.open;

            zqryOrdenes.GotoBookmark(posicion);
            zqryOrdenes.FreeBookmark(posicion);
            zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
            zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
            zqryEmpleados.GotoBookmark(posicion_empleados);
            zqryEmpleados.FreeBookmark(posicion_empleados);

            msg_ok('La guardia ha sido autorizada con éxito');
          end
          else
          if zqryGuardiasMovtos.fieldbyname('Autorizar').asstring = 'SI' then
            msg_ok('La guardia ya está autorizada');
        end
        else msg_ok('La guardia no tiene personal asignado, no es posible autorizarla');
      end
      else msg_ok('La guardia no tiene personal asignado, no es posible autorizarla');
    end;
  finally
    Screen.Cursor := Cursor;
  end;
end;

procedure TfrmEmpleadosGuardias.Desautorizar_Guardia;
var
  datasetListaDeRaya, IdPersonalPagados : TZQuery;
begin
  Z1.SQL.Clear;
  Z1.SQL.Add('update guardias set Autorizar = "NO" where (sIdFolio =:IdFolio) and (ID_PeriodoGuardia = :PeriodoGuardia) and (sStatusGuardia = :StatusGuardia) ');
  Z1.ParamByName('IdFolio').asString          := zqryGuardiasMovtos.Fieldbyname('sIdFolio').AsString;
  Z1.ParamByName('PeriodoGuardia').AsInteger  := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
  Z1.ParamByName('StatusGuardia').AsString    := 'Activo';
  Z1.ExecSQL;

  datasetListaDeRaya := TZQuery.Create(Self);
  datasetListaDeRaya.Connection := connection.zConnection;

  //Eliminar Registros de nom_nomina para que no aparezca en la lista de raya
  datasetListaDeRaya.Active := False;
  datasetListaDeRaya.SQL.Clear;
  datasetListaDeRaya.SQL.Add('select * from nom_nomina where FechaNomina = :FNomina and FechaTerminoNomina = :FTNomina and IdPeriodosguardia = :IdPeriodosguardia');
  datasetListaDeRaya.ParamByName('FNomina').AsDate  := zqryGuardiasMovtos.Fieldbyname('dFechaInicial').AsDateTime;
  datasetListaDeRaya.ParamByName('FTNomina').AsDate := zqryGuardiasMovtos.Fieldbyname('dFechaFinal').AsDateTime;
  datasetListaDeRaya.ParamByName('IdPeriodosguardia').asInteger := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').asInteger;
  datasetListaDeRaya.Open;

  if datasetListaDeRaya.RecordCount > 0 then
  begin
    datasetListaDeRaya.First;
    while not datasetListaDeRaya.Eof do
    begin
      eliminarRegistrosDeNom_NominaPersonal(datasetListaDeRaya.FieldByName('idNomina').AsInteger);

      eliminarRegistrosDeNom_DetalleNomina(datasetListaDeRaya.FieldByName('idNomina').AsInteger, datasetListaDeRaya.ParamByName('IdPeriodosguardia').asInteger);

      //Si en nom_nominapersonal hno hay ningun empleado pagado de la guardia seleccionada,
      //entonces eliminar la lista de raya para que no se vea. Si hay por lo menos un empleado pagado, entonces
      //No eliminar la lista de raya, en conclusion se seguira viendo la lista de raya siempre y cuando
      //haya por lo menos un empleado pagado

      IdPersonalPagados := TZQuery.Create(Self);
      IdPersonalPagados.Connection := connection.zConnection;

      IdPersonalPagados.Active := False;
      IdPersonalPagados.SQL.Clear;
      IdPersonalPagados.SQL.Text := 'select IdPersonal from nom_nominapersonal where idNomina = :idNomina';
      IdPersonalPagados.ParamByName('idNomina').AsInteger := datasetListaDeRaya.FieldByName('idNomina').AsInteger;
      IdPersonalPagados.Open;

      if IdPersonalPagados.RecordCount = 0 then
        datasetListaDeRaya.Delete
      else
        datasetListaDeRaya.Next;
    end;
  end;

  posicion:= zqryOrdenes.GetBookmark;
  posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
  posicion_empleados := zqryEmpleados.GetBookmark;
  actualizar;
  zqryOrdenes.GotoBookmark(posicion);
  zqryOrdenes.FreeBookmark(posicion);
  zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
  zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
  zqryEmpleados.GotoBookmark(posicion_empleados);
  zqryEmpleados.FreeBookmark(posicion_empleados);
  MSG_OK('La guardia está desautorizada ');
end;

procedure TfrmEmpleadosGuardias.DesconfirmarGuardiaClick(Sender: TObject);
var
  error, desconfirmados : Boolean;
  arraySIdEmpleados, arrayContratado, arraysStatusTipoPersonal : array of string;
  i : Integer;
begin
  error := False;

  //Desconfirma a los empleados seleccionados
  if zqryGuardiasMovtos.RecordCount = 0 then //Si no existen guardias, no realizar la desconfirmacion
  begin
    MessageDlg('¡No hay guardias asignadas!', mtInformation, [mbOk], 0);
    error := True;
  end else if (zqryEmpleados.recordcount = 0) then //Si no hay empleados en la guardia,
  begin                                            //no realizar la desconfirmacion
    MessageDlg('¡No hay personal para desconfirmar!', mtInformation, [mbOk], 0);
    error := True;
  end else if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then //Si la guardia esta autorizada,
  begin                                                               //no realizar la desconfirmacion
    MessageDlg('¡La guardia ya ha sido autorizada, no se permiten realizar modificaciones!', mtInformation, [mbOk], 0);
    error := True;
  end (*else if zqryEmpleados.FieldByName('sStatusPersonal').AsString = 'Contratado' then //Si el empleado esta contratado
  begin                                                                                 //no realizar la desconfirmacion
    MessageDlg('¡El personal ya ha sido contratado, no es permitido desconfirmarlo!', mtInformation, [mbOk], 0);
    error := True;
  end*) else if zqryEmpleados.fieldbyname('sStatus').asstring = 'Bajo' then //Si el personal esta en tierra,
  begin                                                                   //No realizar la desconfirmacion
    MessageDlg('¡No se puede desconfirmar el personal por que ya se encuentra en tierra!', mtInformation, [mbOk], 0);
    error := True;
  end;

  if Not error then
  begin
    //Si no hay problema con las validaciones, entonces desconfirmar a los empleados seleccionados
    SetLength(arraySIdEmpleados, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayContratado, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arraysStatusTipoPersonal, BView_Empleados.Controller.SelectedRowCount);

    for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
    begin
      arraySIdEmpleados[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
      arrayContratado[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossStatusPersonal.Index];
      arraysStatusTipoPersonal[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxsStatusTipoPersonal.Index];
    end;

    desconfirmados := False;
    for i := 0 to Length(arraySIdEmpleados) - 1 do
    begin
      if (arrayContratado[i] <> 'Contratado') or (arraysStatusTipoPersonal[i] = 'Tierra') then
      begin
        connection.QryBusca.Active:=False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('update guardiasmovtos set sConfirmado = "No" where (iIdGuardia =:IdFolio) and (ID_GuardiaPeriodo = :PeriodoGuardia and sIdEmpleado = :IdEmpleado)');
        connection.QryBusca.ParamByName('IdFolio').asString          :=           zqryGuardiasMovtos.FieldByName('sIdFolio').asString;
        connection.QryBusca.ParamByName('PeriodoGuardia').AsInteger  := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
        connection.QryBusca.ParamByName('IdEmpleado').AsString       := arraySIdEmpleados[i];
        connection.QryBusca.ExecSQL;

        desconfirmados := True;
      end;
    end;

    zqryEmpleados.Refresh;

    if desconfirmados = True then
      MessageDlg('¡Personal desconfirmado exitosamente!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmEmpleadosGuardias.Descontrarar1Click(Sender: TObject);
{Creo: Rafael
Descripcion: Bloque para descontratar a un personal de rh y nomina}
var
  arraySIdEmpleados, arraySStatusPersonal, arraysStatusTipoPersonal : array of string;
  arrayiIdGuardia, arrayID_GuardiaPeriodo, arrayiIdGuardiaMovtos : array of Integer;
  error : Boolean;
  i : Integer;
begin
  //Primero validar que la guardia no este Autorizada
  if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then
  begin
    msg_w('La guardia ya ha sido autorizada. No se permiten realizar modificaciones');
    error := True;
  end;

  if Not error then
  begin
    //Preguntar al usuario si en verdad quiere descontratar a los empleados seleccionados
    if MSG_YN('¿Está seguro que desea descontratar al personal?') then
    begin
      SetLength(arraySIdEmpleados, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arraySStatusPersonal, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayiIdGuardia, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayID_GuardiaPeriodo, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayiIdGuardiaMovtos, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arraysStatusTipoPersonal, BView_Empleados.Controller.SelectedRowCount);

      for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
      begin
        arraySStatusPersonal[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossStatusPersonal.Index];
        arraySIdEmpleados[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
        arrayiIdGuardia[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosiIdGuardia.Index];
        arrayID_GuardiaPeriodo[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosId_GuardiaPeriodo.Index];
        arrayiIdGuardiaMovtos[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosiIdGuardiaMovtos.Index];
        arraysStatusTipoPersonal[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxsStatusTipoPersonal.Index];
      end;

      for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
      begin      
        //Se valida si el personal tiene el estatus contratado
        if (arraySStatusPersonal[i] = 'Contratado') and (arraysStatusTipoPersonal[i] <> 'Tierra') then
        begin

          //No se puede descontratar un personal de base
//                        zqryListaEmpleados.Filtered := false;
//                        zqryListaEmpleados.locate('sIdEmpleado', arraySIdEmpleados[i], []);
//                        if zqryListaEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
//                        begin
//                          MSG_ER('No se puede descontratar por que es un personal de base');
//                          Abort;
//                        end;

          //Se posiciona en el contrato
          zqHistorial.Locate('sIdEmpleado; sIdGuardia; ID_PeriodoGuardia', VarArrayOf([arraySIdEmpleados[i],
            arrayiIdGuardia[i], arrayID_GuardiaPeriodo[i]]), []);
          //Si esta contratado se valida que no se haya realizado el pago de la nomina
          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.Add('select nnp.IdNomina, nnp.IdFormaPago, np.idpersonal from nuc_personal np ');
          connection.QryBusca.SQL.Add('inner join nom_nominapersonal nnp on (np.idpersonal = nnp.IdPersonal) '+
                                      'inner join nom_nomina a on (nnp.IdNomina = a.IdNomina)'+
                                      'where (a.IdPeriodosGuardia = :IdPeriodosGuardia) and ' +
                                      '(np.codigopersonal = :id) and (:FechaInicio = a.FechaNomina and :FechaTermino= a.FechaTerminoNomina)');
          connection.QryBusca.ParamByName('IdPeriodosGuardia').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
          connection.QryBusca.ParamByName('id').Asstring := arraySIdEmpleados[i];
          connection.QryBusca.ParamByName('FechaInicio').AsDateTime:=zqHistorial.FieldByName('dFechaInicio').AsDateTime;
          connection.QryBusca.ParamByName('FechaTermino').AsDateTime:=zqHistorial.FieldByName('dFechaTermino').AsDateTime;
          connection.QryBusca.Open ;
          if connection.QryBusca.RecordCount > 0 then //Si ya se realizo el pago se valida que no tenga
          begin
            if not connection.QryBusca.FieldByName('IdFormaPago').IsNull then
            begin
              error := True;
              MSG_W('Ya se ha realizado el pago al personal. No es posible descontratarlo');
            end;
          end;

          if Not error then
          begin
            //Actualizo el estatus del empleado a agregado
            connection.QryBusca.Active := False ;
            connection.QryBusca.SQL.Clear ;
            connection.QryBusca.SQL.Add('update empleados set sStatusPersonal = "Agregado" where sIdempleado = :sIdempleado ');
            connection.QryBusca.ParamByName('sIdempleado').Asstring := arraySIdEmpleados[i];
            connection.QryBusca.ExecSQL;

            //Quito el contrato de
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('delete from historialcontrato where sIdEmpleado = :IdEmpleado and sIdGuardia = :IdGuardia and ID_PeriodoGuardia = :PeriodoGuardia');
            connection.QryBusca.ParamByName('IdEmpleado').AsString      := trim(arraySIdEmpleados[i]);
            connection.QryBusca.ParamByName('IdGuardia').AsString       := IntToStr(arrayiIdGuardia[i]);
            connection.QryBusca.ParamByName('PeriodoGuardia').AsInteger := arrayID_GuardiaPeriodo[i];
            connection.QryBusca.ExecSQL;

            //Quito los Registro de nuc_personalImss
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('DELETE from nuc_personalimss '+
                                        'where (nuc_personalimss.idperiodosguardia = :IdPeriodosGuardia) and (idpersonal =(select idpersonal from nuc_personal where codigopersonal = :codigopersonal)) ');
            connection.QryBusca.ParamByName('codigopersonal').AsString          := trim(arraySIdEmpleados[i]);
            connection.QryBusca.ParamByName('IdPeriodosGuardia').AsInteger  := arrayID_GuardiaPeriodo[i];
            connection.QryBusca.ExecSQL;

            //Se le quitan los datos a guardias movimiento para que tome la fecha anterior sin reprogramacion
            connection.QryBusca.Active := False ;
            connection.QryBusca.SQL.Clear ;
            connection.QryBusca.SQL.Add('update guardiasmovtos set dFechaBajada = :dFechaBajada, dFechaBajadaReal = :dFechaBajada, Reprogramacion = "0000-00-00" where (iIdGuardiaMovtos = :iIdGuardiaMovtos)');
            connection.QryBusca.ParamByName('dFechaBajada').AsDate        := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
            connection.QryBusca.ParamByName('iIdGuardiaMovtos').asInteger := arrayiIdGuardiaMovtos[i];
            connection.QryBusca.ExecSQL;

            //Refresco los grid
            zqryEmpleados.Refresh;
            zqryListaEmpleados.Refresh;

            ejecutarAfterScroll := False;

            posicion:= zqryOrdenes.GetBookmark;
            posicion_guardias  := zqryGuardiasMovtos.GetBookmark;
            posicion_empleados :=      zqryEmpleados.GetBookmark;
            //actualizar;
            zqryOrdenes.GotoBookmark(posicion);
            zqryOrdenes.FreeBookmark(posicion);
            zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
            zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
            zqryEmpleados.GotoBookmark(posicion_empleados);
            zqryEmpleados.FreeBookmark(posicion_empleados);

            ejecutarAfterScroll := True;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.BajarGuardiaCompletaClick(Sender: TObject);
begin
  if MessageDlg('¿Desea Bajar la guardia completa?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with connection.QryBusca do
    begin
      Active := False;
      SQL.Clear;
      SQL.Text := 'update guardias set sStatusGuardia = "Baja" where ID_periodoGuardia = :sIdFolio';
      Params.ParamByName('sIdFolio').AsString := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsString;
      ExecSQL;
    end;

    zqryGuardiasMovtos.Refresh;
    zqryEmpleados.Refresh;
    frmBarra4btnRefreshClick(nil);

    MessageDlg('¡Guardia bajada exitosamente!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmEmpleadosGuardias.BajarTodoelPersonaldelaGuardia1Click(
  Sender: TObject);
begin
  Connection.zConnection.StartTransaction;
  try
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select * from guardiasmovtos where ID_GuardiaPeriodo = :GuardiaPeriodo and iIdGuardia=:Guardia and sStatus="Activo" and sNumeroOrden = :NumeroOrden');
    connection.QryBusca.ParamByName('GuardiaPeriodo').AsInteger := ZQRGuardias.FieldByName('ID_PeriodoGuardia').AsInteger;
    connection.QryBusca.ParamByName('Guardia').AsInteger        := StrToInt(ZQRGuardias.FieldByName('sIdFolio').AsString);
    connection.QryBusca.ParamByName('NumeroOrden').AsString     := ZQROrdenes.FieldByName('sNumeroOrden').AsString;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
    begin
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('update guardiasmovtos set sStatus ="Bajo" where ID_GuardiaPeriodo = :PeriodosGuardia and iIdGuardia=:Guardia and sStatus = "Activo" and sNumeroOrden = :NumeroOrden');
      connection.QryBusca2.ParamByName('Guardia').asinteger         := StrToInt(ZQRGuardias.FieldByName('sIdFolio').AsString);
      connection.QryBusca2.ParamByName('PeriodosGuardia').AsInteger :=ZQRGuardias.FieldByName('ID_PeriodoGuardia').AsInteger;
      connection.QryBusca2.ParamByName('NumeroOrden').AsString      := ZQROrdenes.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca2.ExecSQL;
      connection.QryBusca.First;
      while not connection.QryBusca.Eof do
      begin
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('update empleados set sStatusPersonal = "Pendiente" where sIdEmpleado= :IdEmpleado and sStatusTipoPersonal = "A bordo"');
        connection.QryBusca2.ParamByName('IdEmpleado').AsString        := connection.QryBusca.Fieldbyname('sIdEmpleado').asString;
        connection.QryBusca2.ExecSQL;
        connection.QryBusca.Next;
      end;

      Connection.zConnection.Commit;

      ZQREmpleados.Refresh;
      msg_ok('Se dio de baja a todo el personal de manera exitosa');
    end;
  except
    Connection.zConnection.Rollback;
  end;
end;

procedure TfrmEmpleadosGuardias.btnAddClick(Sender: TObject);
begin
  frm_ControlEmpleados2.AccionRegistro := 1;
  Application.CreateForm(TfrmControlEmpleados2, frmControlEmpleados2);
  frmControlEmpleados2.Show;
end;

procedure TfrmEmpleadosGuardias.btnAgregaPlataformaClick(Sender: TObject);
begin
  global_frmActivo := 'frm_EmpleadosGuardias';
  bandera:='frmPlataformas';
  Application.CreateForm(TfrmPlataformas, frmPlataformas);
  frmplataformas.Show;
end;

procedure TfrmEmpleadosGuardias.btnAplicarClick(Sender: TObject);
var
  arraySIdEmpleado, arraysNumeroOrden, arrayNombreEmpleados : array of string;
  arrayiIdGuardia, arrayID_GuardiaPeriodo : array of Integer;
  i : Integer;
  zqryFechaSubida, zqryFechaMovimiento : TZQuery;
  fechaSubida : string;
begin
  //Aplica la fecha de subida para todos los usuarios seleccionados
  try
    try
      SetLength(arraySIdEmpleado, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayiIdGuardia, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayID_GuardiaPeriodo, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arraysNumeroOrden, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayNombreEmpleados, BView_Empleados.Controller.SelectedRowCount);

      for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
      begin
        arraySIdEmpleado[i] :=   BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
        arrayiIdGuardia[i]  := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosiIdGuardia.Index];
        arrayID_GuardiaPeriodo[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosId_GuardiaPeriodo.Index];
        arraysNumeroOrden[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossNumeroOrden.Index];
        arrayNombreEmpleados[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadosNombreCompleto.Index];
      end;

      zqryFechaSubida := TZQuery.Create(Self);
      zqryFechaSubida.Connection := connection.zConnection;

      fechaSubida := DateToStr(dateFechaSubida.Date);

      zqryFechaMovimiento := TZQuery.Create(Self);
      zqryFechaMovimiento.Connection := connection.zConnection;

      for i := 0 to Length(arraySIdEmpleado) - 1 do
      begin
        if Not cambiarYObtenerFechaBajaEmpleado(arraySIdEmpleado[i], DateToStr(dateFechaSubida.Date), arrayiIdGuardia[i], arrayID_GuardiaPeriodo[i], arraysNumeroOrden[i], arrayNombreEmpleados[i], fechaSubida) then
        begin
          //Actualiza la fecha de subida en guardiasmovtos(es la fecha de subida informativa del grid)
          zqryFechaSubida.Active := False;
          zqryFechaSubida.SQL.Clear;
          zqryFechaSubida.SQL.Text := 'update guardiasmovtos ' +
                                      '   set dFechaSubida = :dFechaSubida ' +
                                      'where ' +
                                      '   sidempleado = :sidempleado and ' +
                                      '   iIdGuardia = :iIdGuardia and '   +
                                      '   ID_GuardiaPeriodo = :guardiaPeriodo and ' +
                                      '   sNumeroOrden = :NumeroOrden';
          zqryFechaSubida.Params.ParamByName('dFechaSubida').AsDate := dateFechaSubida.Date;
          zqryFechaSubida.Params.ParamByName('sidempleado').AsString := arraySIdEmpleado[i];
          zqryFechaSubida.Params.ParamByName('iIdGuardia').AsInteger :=  arrayiIdGuardia[i];
          zqryFechaSubida.Params.ParamByName('guardiaPeriodo').AsInteger := arrayID_GuardiaPeriodo[i];
          zqryFechaSubida.Params.ParamByName('NumeroOrden').AsString :=  arraysNumeroOrden[i];

          zqryFechaSubida.ExecSQL;
        end;

        //Actualizar las fechas de subida de la tabla nuc_personalimss FechaMovimiento(TipoMovimiento - Reingreso)
        with connection.QryBusca do
        begin
          Active := False;
          SQL.Clear;
          SQL.Text := 'select idpersonal from nuc_personal where codigopersonal = :codigopersonal';
          Params.ParamByName('codigopersonal').AsString := arraySIdEmpleado[i];
          Open;
        end;

        //Con el IdPersonal del empleado, actualizar el registro de reingreso del empleado en nuc_personalimss
        zqryFechaMovimiento.Active := False;
        zqryFechaMovimiento.SQL.Clear;
        zqryFechaMovimiento.SQL.Text := 'update nuc_personalimss set FechaMovimiento = :FechaMovimiento ' +
                    'where IdPersonal = :IdPersonal and TipoMovimiento = "Reingreso" and ' +
                    'IdPeriodosGuardia = :IdPeriodosGuardia';
        zqryFechaMovimiento.Params.ParamByName('FechaMovimiento').AsDateTime  :=                 StrToDate(fechaSubida);//dateFechaSubida.Date;
        zqryFechaMovimiento.Params.ParamByName('IdPersonal').AsInteger        :=       connection.QryBusca.FieldByName('idpersonal').AsInteger;
        zqryFechaMovimiento.Params.ParamByName('IdPeriodosGuardia').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
        zqryFechaMovimiento.ExecSQL;
      end;

      MessageDlg('¡Fechas de subida actualizadas correctamente!', mtInformation, [mbOk], 0);
      zqryEmpleados.Refresh;

      formularioFechaSubida.Close;
    finally
      zqryFechaSubida.Destroy;
      zqryFechaMovimiento.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOK], 0);
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.btnAplicarReprogramacionClick(Sender: TObject);
var
  arraySIdEmpleado, arraysNumeroOrden     :  array of string;
  arrayiIdGuardia, arrayID_GuardiaPeriodo : array of Integer;
  i : Integer;
  zqryFechaBajada : TZQuery;
begin
  //Reprogramar la fecha de bajada a los empleados seleccionados
  try
    try
      SetLength(arraySIdEmpleado, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayiIdGuardia, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arrayID_GuardiaPeriodo, BView_Empleados.Controller.SelectedRowCount);
      SetLength(arraysNumeroOrden, BView_Empleados.Controller.SelectedRowCount);

      for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
      begin
        arraySIdEmpleado[i] :=   BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
        arrayiIdGuardia[i]  := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosiIdGuardia.Index];
        arrayID_GuardiaPeriodo[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosId_GuardiaPeriodo.Index];
        arraysNumeroOrden[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossNumeroOrden.Index];
      end;

      zqryFechaBajada := TZQuery.Create(Self);
      zqryFechaBajada.Connection := connection.zConnection;

      for i := 0 to Length(arraySIdEmpleado) - 1 do
      begin
        zqryFechaBajada.Active := False;
        zqryFechaBajada.SQL.Clear;
        zqryFechaBajada.SQL.Text := 'update guardiasmovtos ' +
                                    '   set Reprogramacion = :dFechaBajada ' +
                                    'where ' +
                                    '   sidempleado = :sidempleado and ' +
                                    '   iIdGuardia = :iIdGuardia and '   +
                                    '   ID_GuardiaPeriodo = :guardiaPeriodo and ' +
                                    '   sNumeroOrden = :NumeroOrden';
        zqryFechaBajada.Params.ParamByName('dFechaBajada').AsDate := dateReprogramacion.Date;
        zqryFechaBajada.Params.ParamByName('sidempleado').AsString :=    arraySIdEmpleado[i];
        zqryFechaBajada.Params.ParamByName('iIdGuardia').AsInteger :=     arrayiIdGuardia[i];
        zqryFechaBajada.Params.ParamByName('guardiaPeriodo').AsInteger :=  arrayID_GuardiaPeriodo[i];
        zqryFechaBajada.Params.ParamByName('NumeroOrden').AsString :=   arraysNumeroOrden[i];

        zqryFechaBajada.ExecSQL;

        //Cambiar la fecha de Movimiento y Fecha real de nuc_personalimss para que solo calcule los dias que el empleado trabajo
        ZQNuc_Personal.Filtered := false;
        ZQNuc_Personal.Filter := ' codigopersonal= '+ QuotedStr(arraySIdEmpleado[i]);
        ZQNuc_Personal.Filtered := true;

        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('update nuc_personalimss set FechaMovimiento = :dReprogramacion, FechaReal = :dReprogramacion, Procesado = :sProcesado where TipoMovimiento = "Baja" and IdPersonal = :Personal and IdPeriodosGuardia = :IdPeriodosGuardia');
        connection.QryBusca2.ParamByName('dReprogramacion').asdatetime  :=   dateReprogramacion.Date;
        connection.QryBusca2.ParamByName('Personal').AsInteger          := ZQNuc_Personal.FieldByName('idPersonal').AsInteger;
        connection.QryBusca2.ParamByName('sProcesado').AsString         := 'Si';
        connection.QryBusca2.ParamByName('IdPeriodosGuardia').AsInteger := arrayID_GuardiaPeriodo[i];
        connection.QryBusca2.ExecSQL;
      end;

      MessageDlg('¡Actualizado correctamente!', mtInformation, [mbOk], 0);
      zqryEmpleados.Refresh;

      formularioReprogramacionMultiple.Close;
    finally
      zqryFechaBajada.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.ClassName, mtInformation, [mbOK], 0);
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.btnBajarPersonalClick(Sender: TObject);
var
  arrayStatusPersonal, arraySIdEmpleado, arrayPagadoTodo, arraysStatusTipoPersonal : array of string;
  i : Integer;
  mensajeTierra : string;
begin
  if zqryGuardiasMovtos.fieldbyname('Autorizar').AsString = 'NO' then
  begin
    mensajeTierra := '';
    SetLength(arraySIdEmpleado, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayStatusPersonal, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayPagadoTodo, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arraysStatusTipoPersonal, BView_Empleados.Controller.SelectedRowCount);

    for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
    begin
      arraySIdEmpleado[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
      arrayStatusPersonal[i] :=  BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossStatus.Index];
      arrayPagadoTodo[i] :=  BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadosPagado_Todo.Index];
      arraysStatusTipoPersonal[i] := BView_Empleados.Controller.SelectedRows[i].Values[tcxsStatusTipoPersonal.Index];
    end;

    for i := 0 to Length(arraySIdEmpleado) - 1 do
    begin
      if arraysStatusTipoPersonal[i] = 'Tierra' then
      begin
        mensajeTierra := ' y personal de "Tierra"';
      end;
    end;

    if MessageDlg('¿Está seguro que desea bajar al personal seleccionado?. Solamente se bajará al personal de color morado' + mensajeTierra, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      for i := 0 to Length(arraySIdEmpleado) - 1 do
      begin
        //if (arrayPagadoTodo[i] = 'SI') or (arraysStatusTipoPersonal[i] = 'Tierra') then
        //begin
          //Validar que si el empleado que se esta bajando esta contratado tambien en otra guardia, entonces que no cambie el Estatus Contratado
          //sino que lo deje como contratado
          if Not contratadoEnOtraGuardia(arraySIdEmpleado[i]) then
          begin
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('update empleados set sStatusPersonal = "Pendiente" where sStatusTipoPersonal = "A bordo" and sIdEmpleado= :IdEmpleado');
            connection.QryBusca2.ParamByName('IdEmpleado').AsString := arraySIdEmpleado[i];
            connection.QryBusca2.ExecSQL;
          end;

          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('update guardiasmovtos set sStatus = "Bajo" where ID_GuardiaPeriodo = :iIdGuardia and sIdEmpleado= :IdEmpleado');
          connection.QryBusca2.ParamByName('iIdGuardia').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
          connection.QryBusca2.ParamByName('IdEmpleado').AsString  := arraySIdEmpleado[i];
          connection.QryBusca2.ExecSQL;
        //end;
      end;

      zqryEmpleados.Refresh;
      zqryListaEmpleados.Refresh;

      MessageDlg('¡Personal bajado correctamente', mtInformation, [mbOk], 0);
    end;
  end
  else
    MessageDlg('¡La guardia ya está autorizada, no se permite bajar personal!', mtInformation, [mbOk], 0);
end;

procedure TfrmEmpleadosGuardias.btnCancelarFechaSubidaClick(Sender: TObject);
begin
  formularioFechaSubida.Close;
end;

procedure TfrmEmpleadosGuardias.btnCancelarReprogramacionClick(Sender: TObject);
begin
  formularioReprogramacionMultiple.Close;
end;

procedure TfrmEmpleadosGuardias.btnPClick(Sender: TObject);
begin
  global_frmActivo := 'frm_EmpleadosGuardias';
  bandera:='frmOrdenes';
  Application.CreateForm(TfrmOrdenes, frmOrdenes);
  frmOrdenes.Show;
end;

procedure TfrmEmpleadosGuardias.btnPerClick(Sender: TObject);
begin
  global_frmActivo := 'frm_EmpleadosGuardias';
  bandera:='frmPernoctan';
  Application.CreateForm(TfrmPernoctan, frmPernoctan);
  frmPernoctan.Show;
end;                                                                              

procedure TfrmEmpleadosGuardias.btnReprogramarFechadeBajadaClick(
  Sender: TObject);
begin
  if zqryGuardiasMovtos.fieldbyname('Autorizar').AsString = 'NO' then
  begin
    //Abre la ventana para elegir la fecha de reprogramacion multiple
    formularioReprogramacionMultiple := TForm.Create(Self);
    formularioReprogramacionMultiple.Width   := 280;
    formularioReprogramacionMultiple.Height  := 110;
    formularioReprogramacionMultiple.Caption := 'Modificar fecha de bajada';
    formularioReprogramacionMultiple.BorderStyle :=         bsSingle;
    formularioReprogramacionMultiple.Position    := poMainFormCenter;
    formularioReprogramacionMultiple.AutoSize    := True;
    formularioReprogramacionMultiple.BorderIcons :=   [biSystemMenu];

    panelFechaReprogramacionMultiple.Parent  := formularioReprogramacionMultiple;
    panelFechaReprogramacionMultiple.Align   := alClient;
    panelFechaReprogramacionMultiple.Visible :=     True;

    dateReprogramacion.Date               :=   zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
    dateReprogramacion.Properties.MaxDate :=   zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
    dateReprogramacion.Properties.MinDate := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;

    formularioReprogramacionMultiple.ShowModal;
  end
  else
    MessageDlg('¡La guardia ya está autorizada, no se permite modificar las fechas de bajada!', mtInformation, [mbOk], 0);
end;

procedure TfrmEmpleadosGuardias.btnSeleccionarTodosClick(Sender: TObject);
begin
  //Selecciona todos los empleados de la guardia
  BView_Empleados.DataController.SelectAll;
end;

procedure TfrmEmpleadosGuardias.Button1Click(Sender: TObject);
Var
  Actual:TDateTimePicker;
begin
  Actual.Date;
  ZQGuardias.Active            := False;
  ZQGuardias.Open;
  GB_Guardia.Top               :=    74;
  GB_Guardia.left              :=   154;
  GB_Guardia.Height            :=   416;
  GB_Guardia.Width             :=   824;
  GB_Guardia.Visible           :=  True;
  periodos_guardia             := TForm.Create(nil);
  periodos_guardia.Caption     :='  L I S T A D O  D E  G U A R D I A S ';
  GB_Guardia.Parent            :=  periodos_guardia;
  periodos_guardia.Top         :=    GB_Guardia.top;
  periodos_guardia.Left        :=   GB_Guardia.Left;
  periodos_guardia.Width       :=  GB_Guardia.Width+10;
  periodos_guardia.Height      := GB_Guardia.Height+30;
  periodos_guardia.BorderStyle := TFormBorderStyle(bsSingle);
  periodos_guardia.Position    :=     poMainFormCenter;
  periodos_guardia.ShowHint    :=     True;
  GB_Guardia.Align             := alClient;
  periodos_guardia.AutoSize    :=     True;
  periodos_guardia.BorderIcons :=       [biSystemMenu];
  periodos_guardia.ShowModal;
end;

procedure TfrmEmpleadosGuardias.ButtonDos;
var sStatusPersonalR:string;
begin
  if (sOpcion = '') then
  begin
    msg_ok('Haga Clic en Insertar o Editar registro!');
  end
  else
  begin
    if TipoPersonal.EditValue = 'Tierra' then
       sStatusPersonalR:='Contratado'
    else
       sStatusPersonalR:='Pendiente';

    try
      zqryListaEmpleados.Filtered := false;
      if connection.configuracionRecHum.FieldValues['eGuardias'] = 'Si' then
         sFiltroEmpleado := ' sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado
      else
         sFiltroEmpleado := 'sStatusTipoPersonal= '+ QuotedStr(TipoPersonal.EditValue)+' and sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado;

      if cmbOrganizacion.KeyValue = 0 then
         sFiltroEmpleado := ''
      else
         sFiltroEmpleado := sFiltroEmpleado + ' and idOrganizacion = '+ QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));

      zqryListaEmpleados.Filter   := sFiltroEmpleado;
      zqryListaEmpleados.Filtered := true;
    except
    end;          

    if not rxEmpleados.Active then rxEmpleados.Active := True;
    TAsignar_PersonalG.Visible               := True;
    TAsignar_PersonalG.Top                   :=   74;
    TAsignar_PersonalG.left                  :=  154;
    TAsignar_PersonalG.Width                 := 1010;
    TAsignar_PersonalG.Height                :=  474;
    lista_empleados             := TForm.Create(nil);
    lista_empleados.Caption     :='  C A T A L O G O   D E   E M P L E A D O S ';
    TAsignar_PersonalG.Parent                := lista_empleados;
    lista_empleados.Top         :=       TAsignar_PersonalG.top;
    lista_empleados.Left        :=      TAsignar_PersonalG.Left;
    lista_empleados.Width       :=  TAsignar_PersonalG.Width+10;
    lista_empleados.Height      := TAsignar_PersonalG.Height+30;
    lista_empleados.BorderStyle :=         bsSingle;
    lista_empleados.Position    := poMainFormCenter;
    lista_empleados.ShowHint    := True;
    TAsignar_PersonalG.Align                 := alClient;
    lista_empleados.AutoSize    :=True;
    lista_empleados.BorderIcons := [biSystemMenu];
    Fecha_Subida.visible    := true;
    lblFecha_Subida.visible := true;
    if (zqryGuardiasMovtos.fieldbyname('dFechaInicial').AsDateTime <= date) then   //Si la Guardia ya comenzo guarda la fecha que seleccione al agregar el personal
    begin
      Fecha_Subida.Date := zqryGuardiasMovtos.fieldbyname('dFechaInicial').AsDateTime;;
    end
    else
    begin
      Fecha_Subida.Date := zqryGuardiasMovtos.fieldbyname('dFechaInicial').AsDateTime;
    end;
    cPernocta.EditValue   := zqryordenes.FieldByName('sIdPernocta').AsString;
    cPernocta.ItemIndex := 0;
    cPlataforma.EditValue := zqryordenes.FieldByName('sIdPlataforma').AsString;
    lista_empleados.ShowModal;
  end;
end;

procedure TfrmEmpleadosGuardias.Button3Click(Sender: TObject);
begin
  GuardiaTodas.Filtered := false;
  GuardiaTodas.Filter := 'ID_PeriodoGuardia = '+ IntToStr(ID_PeriodoGuardia) + ' and sIdFolio = '+ QuotedStr(Folio_Guardia)+ ' and sNumeroOrden = '+ QuotedStr(PGuardia);
  GuardiaTodas.Filtered := True;
  if GuardiaTodas.recordcount > 0 then
  begin
    zqryGuardiasMovtos.Filtered := false;
    msg_er('La guardia ya está asignada');
  end else
  begin
    zqryGuardiasMovtos.Filtered :=    false;
    sFolioGuardia.Text :=     Folio_Guardia;
    sNombreGuardia.Text :=   Titulo_Guardia;
    sTipoGuardia.ItemHeight := Tipo_Guardia;
    dFechaSubidaGuardia.date:= Fecha_Inicio;
    dFechaBajadaGuardia.date :=  Fecha_Baja;
    iFolio_Periodo.text := IntTostr(ID_PeriodoGuardia);
    iIdTipoNomina.Text  :=      IntToStr(IdTipoNomina);
    periodos_guardia.Close;
  end;
end;

procedure TfrmEmpleadosGuardias.Button4Click(Sender: TObject);
begin
  periodos_guardia.close
end;

procedure TfrmEmpleadosGuardias.Button7Click(Sender: TObject);
var idMovto:Integer;
begin
  if RxGuardiaNueva.recordcount > 0 then
  begin
    RxGuardiaNueva.first;
    while not RxGuardiaNueva.eof do
    begin
      //Para agregar a los empleados a la guardia actual.
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select max(iIdGuardiaMovtos) as maximo from guardiasmovtos ');
      connection.QryBusca.Open;
      if (connection.QryBusca.RecordCount) > 0 then
        idMovto := connection.QryBusca.Fieldbyname('maximo').asInteger + 1
      else IdMovto := 1;

      //Ahora insertamos los datos en la tabla de guardiasmovtos
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('insert into guardiasmovtos (iIdGuardiaMovtos, iIdGuardia, sIdEmpleado, ' +
             'dFechaSubida, dFechaBajada, sObservaciones, sNumeroOrden, sContrato, sIdPlataforma, sIdPernocta, '+
             'sStatus, ID_GuardiaPeriodo, iId_Puesto) '+
             'values (:Id, :Guardia, :IdEmpleado, :FechaSubida, :FechaBajada, :Observaciones, :Orden, :contrato, '+
             ':IdPlataforma, :IdPecnotac, :Status, :GuardiaPeriodo, :Id_Puesto)');
      connection.QryBusca.ParamByName('Id').AsInteger             := idMovto;
      connection.QryBusca.ParamByName('GuardiaPeriodo').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
      connection.QryBusca.ParamByName('Guardia').AsInteger        :=          zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
      connection.QryBusca.ParamByName('IdEmpleado').AsString      :=            RxGuardiaNueva.FieldByName('sIdEmpleado').asstring;
      connection.QryBusca.ParamByName('FechaSubida').AsDate       :=    zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
      connection.QryBusca.ParamByName('FechaBajada').AsDate       :=      zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
      connection.QryBusca.ParamByName('Observaciones').AsString   :=     zqryGuardiasMovtos.FieldByName('sObservaciones').AsString;
      connection.QryBusca.ParamByName('IdPlataforma').AsString    :=      zqryGuardiasMovtos.FieldByName('sIdPlataforma').AsString;
      connection.QryBusca.ParamByName('Orden').AsString           :=       zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca.ParamByName('IdPecnotac').AsString      :=        zqryGuardiasMovtos.FieldByName('sIdPernocta').AsString;
      connection.QryBusca.ParamByName('contrato').AsString        := global_contrato;
      connection.QryBusca.ParamByName('Status').AsString          :=        'Activo';
      connection.QryBusca.ParamByName('Id_Puesto').asinteger       := RxGuardiaNueva.FieldByName('iId_Puesto').asinteger;
      connection.QryBusca.ExecSQL;
    end;
    
    posicion:= zqryOrdenes.GetBookmark;
    posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
    actualizar;
    zqryOrdenes.GotoBookmark(posicion);
    zqryOrdenes.FreeBookmark(posicion);
    zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
    zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
    msg_ok('El personal ha sido agregado a la guardia');
    Guardia_Anterior.Close;
  end;
end;

procedure TfrmEmpleadosGuardias.Button8Click(Sender: TObject);
begin
  Guardia_Anterior.Close;
end;

procedure TfrmEmpleadosGuardias.botonesNavegador(vista: TcxGridDBTableView;
  botonEditar, botonGuardar, botonRefrescar, botonCancelar: Boolean);
begin
  //Juega con los botones del navigator de tcxGrid
  vista.NavigatorButtons.Edit.Enabled :=  botonEditar;
  vista.NavigatorButtons.Post.Enabled := botonGuardar;
  vista.NavigatorButtons.Refresh.Enabled := botonRefrescar;
  vista.NavigatorButtons.Cancel.Enabled  :=  botonCancelar;
end;

procedure TfrmEmpleadosGuardias.BViewGuardiasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Folio_Guardia:='';
  Titulo_Guardia:='';
  Tipo_Guardia:=0;
  Fecha_Inicio:=Date;
  Fecha_Baja:=Date;
  ID_PeriodoGuardia:=0;
  Folio_Guardia  :=      ZQGuardias.FieldByName('IdGuardia').AsString;
  Titulo_Guardia :=  ZQGuardias.FieldByName('TituloGuardia').AsString;
  if ZQGuardias.FieldByName('IdTipoNomina').AsInteger=0 then
    Tipo_Guardia:=0
  else Tipo_Guardia:=1;
  Fecha_Inicio:= ZQGuardias.FieldByName('FechaInicio').AsDateTime;
  Fecha_Baja:=  ZQGuardias.FieldByName('FechaTermino').AsDateTime;
  ID_PeriodoGuardia:= ZQGuardias.FieldByName('IdPeriodosGuardia').asInteger;
  IdTipoNomina:= ZQGuardias.FieldByName('IdTipoNomina').asInteger;
  PGuardia    := zqryOrdenes.FieldByName('sNumeroOrden').asstring;
end;

procedure TfrmEmpleadosGuardias.BView_EmpleadosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var AColumn, AColumn1, AColumn2, AColumn3, AColumn4, AColumn5: TcxCustomGridTableItem;
   fecha:Tdate;
begin
  //Para saber el si el personal esta activo
      AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
  if VarToStr(ARecord.Values[AColumn2.Index]) = 'Bajo'  then
    astyle := Personal_Abajo
  else if VarToStr(ARecord.Values[AColumn2.Index]) = 'Activo'  then
  begin
    //Para saber si esta contratado
    //AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatusPersonal');
    AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('sContratado');  //Agregado el 2015/03/17
    if VarToStr(ARecord.Values[AColumn1.Index]) = 'Contratado'  then
    begin
      //Para saber si esta pagado
      AColumn4 := (Sender as TcxGridDBTableView).GetColumnByFieldName('Pagado_Todo');
      if (VarToStr(ARecord.Values[AColumn4.Index]) = 'SI') then astyle:= Personal_Abajo_Finiquitado
      else
      begin
        //Para saber si esta reprogramado
        AColumn3 := (Sender as TcxGridDBTableView).GetColumnByFieldName('sProgramado');
        if (VarToStr(ARecord.Values[AColumn3.Index]) = 'NO')  then astyle := Contratado
        else astyle := Reprogramacion;
      end;
    end
    else
    begin
      //if (VarToStr(ARecord.Values[AColumn1.Index]) = 'Pendiente') or (VarToStr(ARecord.Values[AColumn1.Index]) = 'Agregado')  then
      //begin
        //Para saber si esta confirmado
        AColumn5 := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatusTipoPersonal');
        AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sConfirmado');
        if VarToStr(ARecord.Values[AColumn.Index]) = 'NO' then astyle := No_Confirmado;
        if VarToStr(ARecord.Values[AColumn.Index]) = 'SI' then astyle := Confirmado;
        if (VarToStr(ARecord.Values[ACOlumn.Index]) = 'SI') and (VarToStr(ARecord.Values[AColumn5.Index]) = 'Tierra') then  //Si el personal es de tierra
          astyle := Contratado;                                                                                 //entonces marcarlo como contratado
      //end;
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.cbTipoGuardiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
end;

procedure TfrmEmpleadosGuardias.cdPersonalDetalleNominaAfterScroll(
  DataSet: TDataSet);
begin
  if Assigned(cdGenerales) and (cdGenerales.Active) then
    cdGenerales.Locate('IdPersonal', cdPersonalDetalleNomina.FieldByName('IdPersonal').asString, []);

  memPercepciones.Filtered := False;
  memPercepciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
  memPercepciones.Filtered := True;

  memDeducciones.Filtered := False;
  memDeducciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
  memDeducciones.Filtered := True;

  // Obtener el neto a pagar por empleado
  NetoPagar := 0;
  while not memPercepciones.Eof do
  begin
    NetoPagar := NetoPagar + StrToFloatDef(memPercepciones.FieldByName('Importe').AsString,0);
    memPercepciones.Next;
  end;
  memPercepciones.First;

  while not memDeducciones.Eof do
  begin
    NetoPagar := NetoPagar - StrToFloatDef(memDeducciones.FieldByName('Importe').AsString,0);
    memDeducciones.Next;
  end;
  memDeducciones.First;
end;

procedure TfrmEmpleadosGuardias.cmdAceptarClick(Sender: TObject);
begin
  if rxEmpleados.RecordCount > 0 then
  begin
    try
    Except
    end;
  end;
  lista_empleados.Close;
  frmBotonera1.btnPost.Click;
end;

procedure TfrmEmpleadosGuardias.cmdAceptarGuardiaClick(Sender: TObject);
var
  Maximo : integer;
begin
  try
    if sFolioGuardia.text='' then
    begin
      sFolioGuardia.SetFocus;
      raise Exception.create ('El número de guardia es un dato requerido, por favor verifique');
    end;
    if sNombreGuardia.text='' then
    begin
      sNombreGuardia.SetFocus;
      raise Exception.create ('La descripción de la guardia es un dato requerido, por favor verifique');
    end;
    if dFechaSubidaGuardia.date < dFechaBajadaGuardia.date then
    begin
      if sOpcionGuardia = 'insertadato' then
      begin
        Maximo:=0;
        //Consultamos todas las guardias existentes...
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sIdFolio from guardias where sIdFolio =:Folio and sStatusguardia="Activo" and ID_PeriodoGuardia = :PeriodoGuardia and sNumeroOrden = :NumeroOrden');
        connection.QryBusca2.ParamByName('Folio').AsString := sFolioGuardia.Text;
        connection.QryBusca2.ParamByName('PeriodoGuardia').Asinteger := StrToInt(iFolio_Periodo.Text);
        connection.QryBusca2.ParamByName('NumeroOrden').asString := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
        begin
          MSG_OK('El No. Guardia '+sFolioGuardia.Text+ ' ya Existe!');
        end
        else
        begin
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('SELECT MAX(iIdGuardia) AS id FROM guardias;');
          connection.QryBusca.Open;
          if connection.QryBusca.FieldByName('id').AsInteger = 0 then
          begin
            Maximo := 1;
          end
          else
          begin
            Maximo := connection.QryBusca.FieldByName('id').AsInteger + 1;
          end;
          try
            //Insetamos los datos.. en la tabla de guardias
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('insert into guardias (iIdGuardia, sIdFolio, dFechaInicial, dFechaFinal, sObservaciones, '+
                                      'sTipoGuardia, sNumeroOrdenAux, sStatusGuardia, ID_PeriodoGuardia, sIdPlataforma, sNumeroOrden, sIdPernocta, Autorizar, IdTipoNomina, sHoraInicioGuardia) '+
                                      'values (:guardia, :Folio, :fechaInicial, :FechaFinal, :Observaciones, '+
                                      ':tipo, :NumeroOrden, :StatusGuardia, :PeriodoGuardia, :IdPlataforma, :Orden, :IdPernocta, :TAutorizar, :TipoNomina, :Hora)');
            connection.QryBusca.ParamByName('guardia').AsInteger      := Maximo;
            connection.QryBusca.ParamByName('Folio').AsString         := sFolioGuardia.Text;
            connection.QryBusca.ParamByName('fechaInicial').AsDate    := dFechaSubidaGuardia.Date;
            connection.QryBusca.ParamByName('fechaFinal').AsDate      := dFechaBajadaGuardia.Date;
            connection.QryBusca.ParamByName('observaciones').AsString := sNombreGuardia.Text;
            connection.QryBusca.ParamByName('tipo').AsString          := sTipoGuardia.Text;
            connection.QryBusca.ParamByName('NumeroOrden').AsString   := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
            connection.QryBusca.ParamByName('StatusGuardia').AsString := 'Activo';
            connection.QryBusca.ParamByName('PeriodoGuardia').AsString:= iFolio_Periodo.text;
            connection.QryBusca.ParamByName('IdPlataforma').AsString  := Plataforma.KeyValue;  //ID Plataforma
            connection.QryBusca.ParamByName('Orden').AsString         :=   Proyecto.KeyValue;     //ID Proyecto
            connection.QryBusca.ParamByName('IdPernocta').AsString    :=   Pernocta.KeyValue;     //ID Pernocta
            connection.QryBusca.ParamByName('TAutorizar').AsString    := 'NO';
            connection.QryBusca.ParamByName('TipoNomina').AsInteger   := StrToInt(trim(iIdTipoNomina.Text));
            connection.QryBusca.ParamByName('Hora').AsString          := tsHora.Text;
            connection.QryBusca.open;
            frmBarra4.btnAdd.Enabled      :=  True;
            frmBarra4.btnEdit.Enabled     :=  True;
            frmBarra4.btnPost.Enabled     := False;
            frmBarra4.btnCancel.Enabled   := False;
            frmBarra4.btnDelete.Enabled   :=  True;
            frmBarra4.btnRefresh.Enabled  :=  True;
            frmBarra4.btnPrinter.Enabled  :=  True;
            grid_Guardias.Enabled         :=  True;
            posicion:= zqryOrdenes.GetBookmark;
            actualizar;
            zqryOrdenes.GotoBookmark(posicion);
            zqryOrdenes.FreeBookmark(posicion);
            msg_ok('El No. Guardia '+sFolioGuardia.Text+ ' se agregó correctamente... !');
          except
            frmBarra4.btnCancelClick(Sender);
            frmBarra4.btnAdd.Enabled      :=  True;
            frmBarra4.btnEdit.Enabled     :=  True;
            frmBarra4.btnPost.Enabled     := False;
            frmBarra4.btnCancel.Enabled   := False;
            frmBarra4.btnDelete.Enabled   :=  True;
            frmBarra4.btnRefresh.Enabled  :=  True;
            frmBarra4.btnPrinter.Enabled  :=  True;
            grid_Guardias.Enabled         :=  True;
            listaguardias.close;
            posicion:= zqryOrdenes.GetBookmark;
            actualizar;
            zqryOrdenes.GotoBookmark(posicion);
            zqryOrdenes.FreeBookmark(posicion);
            msg_ok('El No. Guardia '+sFolioGuardia.Text+ ' se agregó correctamente... !');
          end;

        end;
      end;
      if sOpcionGuardia = 'editadato' then
      begin
        //Insetamos los datos..
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('update guardias set dFechaInicial =:fechaInicial, dFechaFinal =:fechaFinal, sObservaciones =:observaciones, sTipoGuardia =:tipo, sHoraInicioGuardia =:Hora where iIdGuardia =:guardia ');
        connection.QryBusca.ParamByName('guardia').AsInteger      := zqryGuardiasMovtos.FieldByName('iIdGuardia').AsInteger;
        connection.QryBusca.ParamByName('fechaInicial').AsDate    := dFechaSubidaGuardia.Date;
        connection.QryBusca.ParamByName('fechaFinal').AsDate      := dFechaBajadaGuardia.Date;
        connection.QryBusca.ParamByName('observaciones').AsString := sNombreGuardia.Text;
        connection.QryBusca.ParamByName('tipo').AsString          :=   sTipoGuardia.Text;
        connection.QryBusca.ParamByName('Hora').AsString          := tsHora.Text;
        connection.QryBusca.ExecSQL;
        frmBarra4.btnCancelClick(Sender);
        grid_Guardias.Enabled         :=true;
        frmBarra4.btnAdd.Enabled      :=  True;
        frmBarra4.btnEdit.Enabled     :=  True;
        frmBarra4.btnPost.Enabled     := False;
        frmBarra4.btnCancel.Enabled   := False;
        frmBarra4.btnDelete.Enabled   :=  True;
        frmBarra4.btnRefresh.Enabled  :=  True;
        frmBarra4.btnPrinter.Enabled  :=  True;
        listaguardias.close;
        posicion:= zqryOrdenes.GetBookmark;
        actualizar;
        zqryOrdenes.GotoBookmark(posicion);
        zqryOrdenes.FreeBookmark(posicion);
        MSG_OK('El No. Guardia '+sFolioGuardia.Text+ ' se editó correctamente... !');
      end;
    end
    else MSG_OK('Le fecha de subida debe ser menos a la fecha de bajada, verificar la información');
  except
  end;
end;

procedure TfrmEmpleadosGuardias.cmdAgregarClick(Sender: TObject);
var
  seguir : Boolean;
  fechasGuardiasEmpleados : TZQuery;
begin
  if not rxEmpleados.Locate('sIdEmpleado', zqryListaEmpleados.FieldByName('sIdEmpleado').AsString, [loCaseInsensitive]) then
  begin
    seguir := True;

    //Lo primero que hay que validar es que el usuario quepa dentro de la guardia. Esto es:
    //por ejemplo, si en una guardia subio del 01/03/2015 y baja el 14/03/2015 y en otra guardia del 15/03/2015 al 25/03/2015
    //y el usuario quisiera meter a este empleado en una nueva guardia del 11/03/2015 al 24/03/2015 (cosa que se puede
    //dar puesto que se pueden meter a empleados a otras guardias siempre y cuando este bajado de otras guardias)
    //entonces no dejar pasar al empleado a la lista de empleados para la guardia(no dejarlo pasar a la derecha)
    if cabeEnGuardia(zqryListaEmpleados.FieldByName('sIdEmpleado').AsString) then
    begin
      zqryEmpleados.First;
      while Not zqryEmpleados.Eof do
      begin
        if zqryListaEmpleados.FieldByName('sIdEmpleado').AsString = zqryEmpleados.FieldByName('sIdEmpleado').AsString then
        begin
          seguir := False;
          break;
        end;

        zqryEmpleados.Next;
      end;

      //Revisar que el empleado que se este seleccionando, no este en una de las guardias que estén activas
      //y que el rango de fechas en que este subirá, no se cruce con las fechas de las otras guardias en las que esté
      //activo el empleado.
      empleadoEnOtraGuardia(zqryListaEmpleados.FieldByName('sIdEmpleado').AsString, zqryGuardiasMovtos.FieldByName('sIdFolio').AsString);

      if seguir then
      begin
        Fecha_SubidaPropertiesCloseUp(Fecha_Subida);
        rxEmpleados.Append;
        rxEmpleados.Fieldbyname('sIdEmpleado').AsString          := zqryListaEmpleados.Fieldbyname('sIdEmpleado').AsString;
        rxEmpleados.Fieldbyname('sNombre').AsString              :=     zqryListaEmpleados.Fieldbyname('sNombre').AsString;
        rxEmpleados.Fieldbyname('sPuesto').AsString              :=     zqryListaEmpleados.Fieldbyname('sPuesto').AsString;
        rxEmpleados.Fieldbyname('iId_Puesto').AsInteger          :=    zqryListaEmpleados.Fieldbyname('idCargo').AsInteger;
        rxEmpleados.Fieldbyname('dSueldo').AsInteger             :=    zqryListaEmpleados.Fieldbyname('dSueldo').AsInteger;
        rxEmpleados.Fieldbyname('sStatusTipoPersonal').AsString  := zqryListaEmpleados.Fieldbyname('sStatusTipoPersonal').AsString;
        rxEmpleados.Fieldbyname('sStatusPersonal').AsString      :=     zqryListaEmpleados.Fieldbyname('sStatusPersonal').AsString;
        rxEmpleados.Fieldbyname('FechaSubida').AsDateTime        :=     Fecha_Subida.Date;
        rxEmpleados.Fieldbyname('Pernocta').AsString             :=   cPernocta.EditValue;
        rxEmpleados.Fieldbyname('Plataforma').AsString           := cPlataforma.EditValue;
        rxEmpleados.Post;

        //Pasa los datos del empleado de una tabla a otra
        pasarEmpleadoATabla;
      end
      else
        MessageDlg('¡Éste empleado ya esta dentro de la guardia seleccionada!', mtInformation, [mbOk], 0);
    end
    else
      MessageDlg('No es posible agregar a este empleado a la guardia, puesto que la fecha en que sube y baja ' + 
                'se cruzan con otras guardias', mtInformation, [mbOk], 0);
  end
  else
  begin
    MSG_ER('El empleado ya existe!');
  end;
end;

procedure TfrmEmpleadosGuardias.cmdCancelarClick(Sender: TObject);
begin
  Fecha_Subida.visible:=false;
  lista_empleados.Close;
  frmBotonera1.btnCancel.Click;
end;

procedure TfrmEmpleadosGuardias.cmdCancelarGuardiaClick(Sender: TObject);
begin
  // se desactiva el panel y los botones se regresan
  frmBarra4.btnAdd.Enabled      :=  True;
  frmBarra4.btnEdit.Enabled     :=  True;
  frmBarra4.btnPost.Enabled     := False;
  frmBarra4.btnCancel.Enabled   := False;
  frmBarra4.btnDelete.Enabled   :=  True;
  frmBarra4.btnRefresh.Enabled  :=  True;
  frmBarra4.btnPrinter.Enabled  :=  True;
  grid_Guardias.Enabled         :=  True;
  listaguardias.close;
  cmdAceptarGuardia.Visible := true;
  Button1.Visible      :=      true;
  lblFecha_Subida.visible  := false;
end;

procedure TfrmEmpleadosGuardias.cmdEliminarClick(Sender: TObject);
begin
  if rxEmpleados.RecordCount <> 0 then
  begin
    rxEmpleados.Delete;
    //Pasa los datos del empleado de una tabla a otra
    pasarEmpleadoATabla;
  end;
end;

procedure TfrmEmpleadosGuardias.ConfirmarPersonal1Click(Sender: TObject);
var
  error, desconfirmados : Boolean;
  arraySIdEmpleados, arrayContratado, arrayNombres, arraysStatusTipoPersonal,
  arraySIdEmpleadosConfirmadosTierra, arrayFechasSubida, arraysNumeroOrden : array of string;
  arrayiIdGuardia, arrayID_GuardiaPeriodo : array of Integer;
  i, j : Integer;
  empleadosContratados, NOUSADA : string;
  confirmadoEnOtraGuardia : Boolean;
begin
  error := False;

  //Desconfirma a los empleados seleccionados
  if zqryGuardiasMovtos.RecordCount = 0 then //Si no existen guardias, no realizar la desconfirmacion
  begin
    MessageDlg('¡No hay guardias asignadas!', mtInformation, [mbOk], 0);
    error := True;
  end else if (zqryEmpleados.recordcount = 0) then //Si no hay empleados en la guardia,
  begin                                            //no realizar la desconfirmacion
    MessageDlg('¡No hay personal para confirmar!', mtInformation, [mbOk], 0);
    error := True;
  end else if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then //Si la guardia esta autorizada,
  begin                                                               //no realizar la desconfirmacion
    MessageDlg('¡La guardia ya ha sido autorizada, no se permiten realizar modificaciones!', mtInformation, [mbOk], 0);
    error := True;
  end (*else if zqryEmpleados.FieldByName('sStatusPersonal').AsString = 'Contratado' then //Si el empleado esta contratado
  begin                                                                                 //no realizar la desconfirmacion
    MessageDlg('¡El personal ya ha sido contratado, no es permitido confirmarlo!', mtInformation, [mbOk], 0);
    error := True;
  end *)else if zqryEmpleados.fieldbyname('sStatus').asstring = 'Bajo' then //Si el personal esta en tierra,
  begin                                                                   //No realizar la desconfirmacion
    MessageDlg('¡No se puede confirmar el personal por que ya se encuentra en tierra!', mtInformation, [mbOk], 0);
    error := True;
  end;

  if Not error then
  begin
    //Si no hay problema con las validaciones, entonces confirmar a los empleados seleccionados
    SetLength(arraySIdEmpleados, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayContratado, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayNombres, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arraysStatusTipoPersonal, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayFechasSubida, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arraysNumeroOrden, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayiIdGuardia, BView_Empleados.Controller.SelectedRowCount);
    SetLength(arrayID_GuardiaPeriodo, BView_Empleados.Controller.SelectedRowCount);

    for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
    begin
      arraySIdEmpleados[i] :=     BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
      arrayContratado[i]   := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossStatusPersonal.Index];
      arrayNombres[i]      :=  BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadosNombreCompleto.Index];
      arraysStatusTipoPersonal[i] :=  BView_Empleados.Controller.SelectedRows[i].Values[tcxsStatusTipoPersonal.Index];
      arrayFechasSubida[i] :=    BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadosdFechaSubida.Index];
      arraysNumeroOrden[i] :=    BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossNumeroOrden.Index];
      arrayiIdGuardia[i]   :=   BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosiIdGuardia.Index];
      arrayID_GuardiaPeriodo[i] :=  BView_Empleados.Controller.SelectedRows[i].Values[tcxBView_EmpleadosId_GuardiaPeriodo.Index];
    end;

    //Si algun empleado seleccionado tiene fecha de bajada en una guardia que se cruza con la guardia seleccionada, entonces verificar la fecha en la que
    //baja de la guardia en la que esta activo y asi mismo modificar la fecha de subida de la guardia en la que se esta confirmando
    for i := 0 to Length(arraySIdEmpleados) - 1 do
    begin
      cambiarYObtenerFechaBajaEmpleado(arraySIdEmpleados[i], arrayFechasSubida[i], arrayiIdGuardia[i], arrayID_GuardiaPeriodo[i], arraysNumeroOrden[i], arrayNombres[i], NOUSADA);
    end;

    empleadosContratados := '';

    //Si hay un personal de tierra en la guardia seleccionada, entonces revisar en todas las demas guardias activas si el o los empleados seleccionados
    //estan confirmados en otras guardias, si un personal esta confirmado en otra guardia, quiere decir que esta contratado en otra guardia
    //de manera informativa
    zqryGuardiasMovtosMemoria.Active := False;
    zqryGuardiasMovtosMemoria.ParamByName('contrato').AsString       := global_contrato;
    zqryGuardiasMovtosMemoria.ParamByName('numeroorden').asString    := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
    zqryGuardiasMovtosMemoria.Open;    //Con este zquery me traigo las guardias activas en el grid de arriba para buscar al empleado dentro de ellas

    for i := 0 to Length(arraySIdEmpleados) - 1 do
    begin
      if arraysStatusTipoPersonal[i] = 'Tierra' then //Si el empleado es de tierra, buscar si esta confirmado en otra guardia
      begin
        zqryGuardiasMovtosMemoria.First;
        while Not zqryGuardiasMovtosMemoria.Eof do  //Buscar al empleado en las otras guardias
        begin
          //Empleados de otras guardia
          zqryEmpleadosMemoria.Active := False;
          zqryEmpleadosMemoria.ParamByName('guardia').asstring := zqryGuardiasMovtosMemoria.FieldByName('sIdFolio').asString;
          zqryEmpleadosMemoria.ParamByName('GuardiaPeriodo').asstring := zqryGuardiasMovtosMemoria.FieldByName('ID_PeriodoGuardia').asString;
          zqryEmpleadosMemoria.ParamByName('NumeroOrden').asString    := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
          zqryEmpleadosMemoria.Open;

          zqryEmpleadosMemoria.First;
          while Not zqryEmpleadosMemoria.Eof do
          begin
            if (arraySIdEmpleados[i] = zqryEmpleadosMemoria.FieldByName('sIdEmpleado').AsString) and
               (zqryEmpleadosMemoria.FieldByName('sConfirmado').AsString = 'SI') and
               (zqryEmpleadosMemoria.FieldByName('sStatus').AsString = 'Activo')then
            begin
              SetLength(arraySIdEmpleadosConfirmadosTierra, Length(arraySIdEmpleadosConfirmadosTierra) + 1);

              arraySIdEmpleadosConfirmadosTierra[Length(arraySIdEmpleadosConfirmadosTierra) - 1] := arraySIdEmpleados[i];
              empleadosContratados := empleadosContratados  + zqryEmpleadosMemoria.FieldByName('NombreCompleto').AsString +
                                      ' Ficha : ' + zqryEmpleadosMemoria.FieldByName('sIdEmpleado').AsString + '. ' + #13;
            end;

            zqryEmpleadosMemoria.Next;
          end;

          zqryGuardiasMovtosMemoria.Next;
        end;
      end;
    end;

    desconfirmados := False;
    for i := 0 to Length(arraySIdEmpleados) - 1 do
    begin
      confirmadoEnOtraGuardia := False;

      for j := 0 to Length(arraySIdEmpleadosConfirmadosTierra) - 1 do
      begin
        if arraySIdEmpleadosConfirmadosTierra[j] = arraySIdEmpleados[i] then
          confirmadoEnOtraGuardia := True;
      end;

      if Not confirmadoEnOtraGuardia then
      begin
        if (arrayContratado[i] <> 'Contratado') or ((arrayContratado[i] = 'Contratado') and (arraysStatusTipoPersonal[i] <> 'A bordo')) then
        begin
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('update guardiasmovtos set sConfirmado = "Si" where (iIdGuardia =:IdFolio) and (ID_GuardiaPeriodo = :PeriodoGuardia and sIdEmpleado = :IdEmpleado)');
          connection.QryBusca.ParamByName('IdFolio').asString          :=           zqryGuardiasMovtos.FieldByName('sIdFolio').asString;
          connection.QryBusca.ParamByName('PeriodoGuardia').AsInteger  := zqryGuardiasMovtos.Fieldbyname('ID_PeriodoGuardia').AsInteger;
          connection.QryBusca.ParamByName('IdEmpleado').AsString       := arraySIdEmpleados[i];
          connection.QryBusca.ExecSQL;

          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.Add('update empleados set sStatusPersonal = "Agregado" where sIdempleado = :sIdempleado ');
          connection.QryBusca.ParamByName('sIdempleado').Asstring := arraySIdEmpleados[i];
          connection.QryBusca.ExecSQL;

          desconfirmados := True;
        end
        else
        begin
          empleadosContratados := empleadosContratados  + arrayNombres[i] + ' Ficha : ' + arraySIdEmpleados[i] + '. ' + #13;
        end;
      end;
    end;

    if empleadosContratados <> '' then
      MessageDlg('¡El siguiente personal ya se encuentra contratado, no es posible confirmarlo(s)! ' + #13 + empleadosContratados, mtInformation, [mbOk], 0);

    zqryEmpleados.Refresh;

    if desconfirmados = True then
      MessageDlg('¡Personal confirmado exitosamente!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmEmpleadosGuardias.ContrararPersonal1Click(Sender: TObject);
var
    Id : integer;
begin
  if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then
  begin
    msg_w('La guardia ya ha sido autorizada, no se permiten realizar modificaciones');
    Abort;
  end;
  zqryListaEmpleados.Filtered := false;
  zqryListaEmpleados.locate('sIdEmpleado', zqryEmpleados.FieldByName('sIdEmpleado').AsString, []);
  if zqryListaEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
  begin
    MSG_ER('No se puede contratar porque es un personal de Base y no se genera contrato');
    zqryEmpleados.Refresh;
    Abort;
  end;

  if zqryEmpleados.FieldByName('sConfirmado').AsString = 'NO' then    //Se valida el estado del empleado
  begin
    MSG_ER('No es posible crear el documento del contrato para el personal, por que no ha sido confirmado en la guardia');    //Si el estado es diferente de activo que muestre un msj
    exit;
  end;
  if zqHistorial.Locate('sIdEmpleado; sIdGuardia; ID_PeriodoGuardia', VarArrayOf([zqryEmpleados.FieldByName('sIdEmpleado').AsString, zqryEmpleados.FieldByName('iIdGuardia').AsString, zqryEmpleados.FieldByName('ID_GuardiaPeriodo').AsInteger]), []) then
  begin
    MSG_ER('El contrato ya fue creado');
    exit;
  end;
  if zqryEmpleados.FieldByName('sStatusPersonal').AsString = 'Contratado' then
  begin
    MSG_ER('El personal ya ha sido contratado');
    exit
  end
  else
  begin
     {$REGION 'INSERTA FRENTE EN NUC_ORGANIZACION'}

     if zqryEmpleados.FieldValues['idorganizacion'] = null then
     begin
       MSG_ER('El personal no está asignado a una empresa en el módulo de Empleados');
       exit
     end;

     {Buscamos si ya existe el Frente de trabajo dado de alta en nuc_organizacion}
     connection.zCommand.Active := False;
     connection.zCommand.SQL.Clear;
     connection.zCommand.SQL.Add('select idorganizacion '+
                                 'from nuc_organizacion where padre = :padre and codigoorganizacion =:Codigo');
     connection.zCommand.ParamByName('padre').AsInteger := zqryEmpleados.FieldValues['idorganizacion'];
     connection.zCommand.ParamByName('codigo').AsString := zqryEmpleados.FieldValues['sNumeroOrden'];
     connection.zCommand.Open;

     if connection.zCommand.RecordCount = 0 then
     begin
       //Buscamos el id máximo
       connection.zCommand.Active := False;
       connection.zCommand.SQL.Clear;
       connection.zCommand.SQL.Add('select max(idorganizacion) as maximo from nuc_organizacion group by activo');
       connection.zCommand.Open;

       if connection.zCommand.RecordCount = 0 then
          Id := 1
       else
          Id := connection.zCommand.FieldByName('maximo').AsInteger + 1;

       connection.zCommand.Active := False;
       connection.zCommand.SQL.Clear;
       connection.zCommand.SQL.Add('select idnivel, padre, idorganizacion '+
                                   'from nuc_organizacion where idorganizacion = :id ');
       connection.zCommand.ParamByName('id').AsInteger := zqryEmpleados.FieldValues['idorganizacion'];
       connection.zCommand.Open;

       //Insertar el area o item en nivel organizacion.
       connection.QryBusca.Active := False;
       connection.QryBusca.SQL.Clear;
       connection.QryBusca.SQL.Add('INSERT INTO nuc_organizacion (idnivel, padre, idorganizacion, wbs, codigoorganizacion, comentacontab, etiqueta, nombreorganizacion, tituloorganizacion, fecha, activo ) '+
                                   'VALUES (:nivel, :padre, :idorganizacion, :wbs, :codigo, :comentario, :etiqueta, :nombre, :titulo, :fecha, "Si")');
       connection.QryBusca.ParamByName('nivel').AsInteger          := connection.zCommand.FieldByName('idnivel').AsInteger + 1;
       connection.QryBusca.ParamByName('padre').AsInteger          := connection.zCommand.FieldByName('idorganizacion').AsInteger;
       connection.QryBusca.ParamByName('idorganizacion').AsInteger := Id;
       connection.QryBusca.ParamByName('wbs').AsString             := IntToStr(connection.zCommand.FieldByName('idorganizacion').AsInteger) +'.'+ IntToStr(Id);
       connection.QryBusca.ParamByName('codigo').AsString          := zqryEmpleados.FieldByName('sNumeroOrden').AsString;
       connection.QryBusca.ParamByName('comentario').AsString      := zqryEmpleados.FieldByName('sNumeroOrden').AsString;
       connection.QryBusca.ParamByName('etiqueta').AsString        := copy(zqryEmpleados.FieldByName('sNumeroOrden').AsString ,0,10);
       connection.QryBusca.ParamByName('nombre').AsString          := zqryEmpleados.FieldByName('sNumeroOrden').AsString;
       connection.QryBusca.ParamByName('titulo').AsString          := zqryEmpleados.FieldByName('sNumeroOrden').AsString;
       connection.QryBusca.ParamByName('fecha').AsDateTime         := date;
       connection.QryBusca.ExecSQL;
     end;
     {$ENDREGION}

    connection.zConnection.StartTransaction;
    try
      {$REGION 'Guardar en Nomina'}
        Application.CreateForm(TFrmContratarWizard, FrmContratarWizard);
        FrmContratarWizard.lblNombre.Caption.Text:=zqryEmpleados.FieldByName('NombreCompleto').AsString;
        FrmContratarWizard.cdbusqueda.Active:=False;
        FrmContratarWizard.cdbusqueda.Open;
        FrmContratarWizard.cdbusqueda.ParamByName('codigopersonal').AsString:=zqryEmpleados.FieldByName('sIdEmpleado').AsString;
        if FrmContratarWizard.cdbusqueda.Active then
          FrmContratarWizard.cdbusqueda.Refresh
        else
          FrmContratarWizard.cdbusqueda.Open;

        FrmContratarWizard.cdTipoNomina.Active:=False;
        FrmContratarWizard.cdTipoNomina.ParamByName('Tn').AsInteger:=1;
        FrmContratarWizard.cdTipoNomina.Open;     

        FrmContratarWizard.cdGuardias.Active:=False;
        FrmContratarWizard.cdGuardias.ParamByName('IdGuardia').AsInteger:=zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
        FrmContratarWizard.cdGuardias.Open;
        FrmContratarWizard.cbGuardias.KeyValue:=zqryGuardiasMovtos.FieldValues['sIdFolio'];
        //FrmContratarWizard.cbGuardias.Enabled:=False;

        FrmContratarWizard.CdCargo.Active:=False;
        FrmContratarWizard.CdCargo.ParamByName('idcargo').AsInteger:=zqryEmpleados.FieldByName('iId_Puesto').AsInteger;
        FrmContratarWizard.CdCargo.Open;
        FrmContratarWizard.isNotificado:=True;

        FrmContratarWizard.cdtPeriodosG.Active:=False;
        FrmContratarWizard.cdtPeriodosG.ParamByName('idguardia').AsString:=inttostr(zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger);
        FrmContratarWizard.cdtPeriodosG.ParamByName('IdPeriodosGuardia').AsInteger:=zqryEmpleados.FieldByName('ID_GuardiaPeriodo').AsInteger;
        FrmContratarWizard.cdtPeriodosG.Open;

        FrmContratarWizard.dtpcontratacion.Date:=zqryEmpleados.FieldByName('dFechaSubida').AsDateTime;
        FrmContratarWizard.dtpcontratacion.Enabled:=True;
        FrmContratarWizard.lblTexto.Caption :='frmEmpleadosGuardias';
        FrmContratarWizard.showModal;
      {$ENDREGION}
    except
      on e:exception do
      begin
        MSG_ER('No fue posible crear el contrato. Error: ' + e.Message + ', ' + e.ClassName);
        connection.zConnection.Rollback;
      end;
    end;
  end;
  if z.Text='contratado' then
  begin
    z.Text:='';
    contratar;
  end
  else
    connection.zConnection.Rollback;
end;

function TfrmEmpleadosGuardias.contratadoEnOtraGuardia(
  sIdEmpleado: string): Boolean;
var
  idGuardiaAnterior : string;
  contratado : Boolean;
begin
  //Devuelve True si el empleado que se esta bajando esta contratado en otra guardia,
  //Devuelve False si el empleado que se esta bajando "NO" esta contratado en otra guardia
  try
    //Trae todas las guardias activas
    zqryGuardiasMovtosMemoria.Active := False;
    zqryGuardiasMovtosMemoria.ParamByName('contrato').AsString       := global_contrato;
    zqryGuardiasMovtosMemoria.ParamByName('numeroorden').asString    := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
    zqryGuardiasMovtosMemoria.Open;

    contratado := False;

    zqryGuardiasMovtosMemoria.First;
    while Not zqryGuardiasMovtosMemoria.Eof do
    begin
      idGuardiaAnterior := zqryGuardiasMovtosMemoria.FieldByName('sIdFolio').AsString;
      if idGuardiaAnterior <> zqryGuardiasMovtos.FieldByName('sIdFolio').AsString then
      begin
        zqryEmpleadosMemoria.Active := False;
        zqryEmpleadosMemoria.ParamByName('guardia').asstring := zqryGuardiasMovtosMemoria.FieldByName('sIdFolio').asString;
        zqryEmpleadosMemoria.ParamByName('GuardiaPeriodo').asstring := zqryGuardiasMovtosMemoria.FieldByName('ID_PeriodoGuardia').asString;
        zqryEmpleadosMemoria.ParamByName('NumeroOrden').asString    := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
        zqryEmpleadosMemoria.Open;

        while Not zqryEmpleadosMemoria.Eof do
        begin
          if (sIdEmpleado = zqryEmpleadosMemoria.FieldByName('sIdEmpleado').AsString) and (zqryEmpleadosMemoria.FieldByName('sContratado').AsString = 'Contratado') then
          begin
            contratado := True;
          end;

          zqryEmpleadosMemoria.Next;
        end;
      end;

      zqryGuardiasMovtosMemoria.Next;
    end;

    Result := contratado;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.contratar;
(*Creada: 10/12/2013 Creo: Rafael
Descripcion: Se integro la funcionalida de imprimir contrato para que desde esta misma ventana
  se puedan imprimir los contratos del personal*)
begin
  try
    if zqryEmpleados.FieldByName('sStatusTipopersonal').AsString = 'A bordo'then
    begin
      zqHistorial.Append;      //Abre la tabla de historialcontrato
      zqHistorial.FieldByName('iIdContrato').AsInteger        :=0;
      zqHistorial.FieldByName('sIdEmpleado').AsString         := zqryEmpleados.FieldByName('sIdEmpleado').AsString; //Le asigno el sIdContrato
      zqHistorial.FieldByName('sTipoContrato').AsString       := 'ABORDO';    //Le asigna el tipo de contrato a bordo
      zqHistorial.FieldByName('dFechaInicio').AsDateTime      := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
      zqHistorial.FieldByName('dFechaTermino').AsDateTime     := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;       //Asigna la fecha final
      zqHistorial.FieldByName('sPeriodoLaboral').asstring     := 'del '+DateToStr(zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime)+' al '+DateToStr(zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime); //Asigna el periodo laboral
      zqHistorial.FieldByName('sIdGuardia').asstring          := zqryEmpleados.FieldByName('iIdGuardia').asstring;   //guardia el Id de la guardia
      zqHistorial.FieldByName('ID_PeriodoGuardia').AsInteger  := zqryEmpleados.FieldByName('ID_GuardiaPeriodo').AsInteger;
      zqHistorial.Post;

      connection.zConnection.Commit;
      msg_ok('El contrato fue creado con éxito');
      //Refresco los grid
      posicion:= zqryOrdenes.GetBookmark;
      posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
      posicion_empleados := zqryEmpleados.GetBookmark;
      actualizar;
      zqryOrdenes.GotoBookmark(posicion);
      zqryOrdenes.FreeBookmark(posicion);
      zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
      zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
      zqryEmpleados.GotoBookmark(posicion_empleados);
      zqryEmpleados.FreeBookmark(posicion_empleados);
    end;
  except
    on e:exception do
    begin
      MSG_ER('No fue posible crear el contrato. Error: ' + e.Message + ', ' + e.ClassName);
      connection.zConnection.Rollback;
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.ContratarGuardiaCompleta1Click(Sender: TObject);
begin
  //Cancelar Transaccion en caso de que este Activa
  if connection.zConnection.InTransaction then
    connection.zConnection.Rollback;

  //Validar que todos los empleados de la guardia esten confirmados
  validarConfirmadoOContratado('sConfirmado');

  if desConfirmadoODesContratado = True then
    Exit;

  if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then
  begin
    msg_w('La guardia ya ha sido autorizada, no se permiten realizar modificaciones');
    Abort;
  end;

  application.CreateForm(TFrmWizardGroup, FrmWizardGroup);
  FrmWizardGroup.ParNombreFrente :=       zqryOrdenes.FieldByName('sNumeroOrden').AsString;
  FrmWizardGroup.ParIdGuardia    := zqryGuardiasMovtos.FieldByName('iIdGuardia').AsInteger;
  FrmWizardGroup.ParIdPeriodosGuardia := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
  FrmWizardGroup.ParIdTipoNomina := '1';
  frmWizardGroup.dsDatosEmpleado.DataSet := zqryEmpleados;
  if (dsEmpleado.DataSet.Active) and (dsEmpleado.DataSet.RecordCount > 0) then
  begin
    dsEmpleado.DataSet.First;
    while Not dsEmpleado.DataSet.Eof do
    begin
      if (dsEmpleado.DataSet.FieldByName('sContratado').AsString <> 'Contratado') and
         (zqryListaEmpleados.FieldByName('sStatusTipoPersonal').AsString <> 'Tierra')
      then
        FrmWizardGroup.ListaEmpleados.Add(dsEmpleado.Dataset.FieldByName('sIdEmpleado').asString);
      dsEmpleado.DataSet.Next;
    end;
    if FrmWizardGroup.ListaEmpleados.Count > 0 then
    begin
      FrmWizardGroup.ShowModal;
      frmBarra4btnRefreshClick(nil);
    end
    else
    begin
      MessageDlg('La guardia que intenta contratar no se encuentra activa o no contiene personal disponible.', mtInformation, [mbOK], 0);
      FrmWizardGroup.Destroy;
    end;
  end
  else
  begin
    MessageDlg('La guardia que intenta contratar no se encuentra activa o no contiene personal disponible.', mtInformation, [mbOK], 0);
    FrmWizardGroup.Destroy;
  end;
end;

procedure TfrmEmpleadosGuardias.ContratoaBordoTodos1Click(Sender: TObject);
begin
  //Guarda los contratos a bordo de todos los empleados que esten dentro de una guardia
  if rutaContratos1.Execute() then
  begin
    rutaContratos := rutaContratos1.Path;
    generarReportesABordo;
    rutaContratos := '';
  end;
end;

procedure TfrmEmpleadosGuardias.cxButton3MouseEnter(Sender: TObject);
begin
  mostrarColoresEstatus(True);
end;

procedure TfrmEmpleadosGuardias.cxButton3MouseLeave(Sender: TObject);
begin
  mostrarColoresEstatus(False);
end;

procedure TfrmEmpleadosGuardias.cxButton5Click(Sender: TObject);
var
  QryDatos:TzReadOnlyQuery;
begin
  QryDatos:=TzReadOnlyQuery.Create(nil);
  try
    QryDatos.connection:=Connection.zConnection;
    QryDatos.SQL.Add('select gm.sidempleado,concat (e.sNombreCompleto, " ", e.sApellidoPaterno, " ",  e.sApellidoMaterno) as NombreCompleto, '+
                    'gm.dFechaSubida, IF(gm.reprogramacion = "0000-00-00",gm.dfechabajada,gm.reprogramacion) as dfechabajada, '+
                    'gm.snumeroorden,gm.sobservaciones,e.sStatusPersonal,gm.sStatus, p.titulocargo as sPuesto '+
                  'from guardiasmovtos gm '+
                  'inner join empleados e on (e.sIdEmpleado = gm.sIdEmpleado) '+
                  'inner join nuc_cargo p on (p.IdCargo = gm.iId_Puesto) '+
                  'inner join plataformas pt on (pt.sIdPlataforma = gm.sIdPlataforma) '+
                  'where (gm.dFechaBajada between :fs and :fb) and gm.sStatus="Bajo" '+
                  'order by sPuesto, gm.sNumeroOrden, gm.iIdGuardia, gm.ID_GuardiaPeriodo, gm.dFechaSubida');
    QryDatos.ParamByName('fs').AsDate := FechaIni_PerB.Date;
    QryDatos.ParamByName('fb').AsDate := FechaFin_PerB.Date;
    QryDatos.Open;
    frx_PerBaja.DataSet := QryDatos;
    frx_PerBaja.FieldAliases.Clear;
    frxReporte.LoadFromFile(Global_Files +global_miReporte +'_Personal_Desembarcado.fr3') ;
    frxReporte.Variables.variables['Fechai'] := quotedstr(FormatDateTime('dd/mm/yyyy', FechaIni_PerB.DateTime));
    frxReporte.Variables.variables['Fechaf'] := quotedstr(FormatDateTime('dd/mm/yyyy', FechaFin_PerB.DateTime));
    frxReporte.ShowReport();
  finally
    QryDatos.destroy;
  end;
end;
procedure TfrmEmpleadosGuardias.QrDatosAfterScroll(DataSet: TDataSet);
begin
  if calculando then
  begin
    if cdNomina.FieldByName('IdPersonal').AsInteger > 0 then
    begin
      cdNomina.Filtered := False;
      cdNomina.Filter := 'IdPersonal =' + DataSet.FieldByName('IdPersonal').AsString;
      cdNomina.Filtered := True;

      frxContratos.Variables.variables['SueldoMensual_Letras'] := quotedstr(xNumerosToLletres(cdNomina.FieldByName('Neto').ascurrency));
      frxContratos.Variables.variables['Contratacion_Dia'] :=   quotedstr(FormatDateTime('dd',DataSet.FieldByName('dFechaSubida').AsDateTime));
      frxContratos.Variables.variables['Contratacion_Mes'] := quotedstr(Uppercase(FormatDateTime('mmmm', DataSet.FieldByName('dFechaSubida').AsDateTime)));
      frxContratos.Variables.variables['Contratacion_Anyo'] := quotedstr(FormatDateTime('yy', DataSet.FieldByName('dFechaSubida').AsDateTime));

      if (DataSet.fieldbyname('Reprogramacion').AsDateTime =0)  then
      begin
        frxContratos.Variables.variables['Vencimiento_Dia'] :=  quotedstr(FormatDateTime('dd', DataSet.FieldByName('dFechaBajada').AsDateTime));
        frxContratos.Variables.variables['Vencimiento_Mes'] := quotedstr(uppercase(FormatDateTime('mmmm', DataSet.FieldByName('dFechaBajada').AsDateTime)));
        frxContratos.Variables.variables['Vencimiento_Anyo'] := quotedstr(FormatDateTime('yy', DataSet.FieldByName('dFechaBajada').AsDateTime));
      end
      else
      begin
        frxContratos.Variables.variables['Vencimiento_Dia']  := quotedstr(FormatDateTime('dd', DataSet.FieldByName('Reprogramacion').AsDateTime));
        frxContratos.Variables.variables['Vencimiento_Mes']  := quotedstr(uppercase(FormatDateTime('mmmm', DataSet.FieldByName('Reprogramacion').AsDateTime)));
        frxContratos.Variables.variables['Vencimiento_Anyo'] := quotedstr(FormatDateTime('yy', DataSet.FieldByName('Reprogramacion').AsDateTime));
      end;
    end;

  end;

  if ImprimirContrato then
  begin
    if Tzquery(frx_ReporteEmpleados.DataSet).active then
      frxContratos.Variables.variables['SueldoMensualC']    := QuotedStr(UpperCase(LetrasNumeros(frx_reporteEmpleados.DataSet.FieldByName('importe').AsFloat, 'PESOS', '/100 M.N.', 2)))
    else
      frxContratos.Variables.variables['SueldoMensualC']    := QuotedStr(UpperCase(LetrasNumeros(DataSet.FieldByName('importe').AsFloat, 'PESOS', '/100 M.N.', 2)));        //quotedstr(xNumerosToLletres(DataSet.FieldByName('importe').AsCurrency));
    frxContratos.Variables.variables['Contratacion_Dia']  :=  quotedstr(FormatDateTime('dd',DataSet.FieldByName('dFechaSubida').AsDateTime));
    frxContratos.Variables.variables['Contratacion_Mes']  := quotedstr(Uppercase(FormatDateTime('mmmm', DataSet.FieldByName('dFechaSubida').AsDateTime)));
    frxContratos.Variables.variables['Contratacion_Anyo'] := quotedstr(FormatDateTime('yy', DataSet.FieldByName('dFechaSubida').AsDateTime));
    frxContratos.Variables.variables['Vencimiento_Dia']   :=   quotedstr(FormatDateTime('dd', incday(DataSet.FieldByName('dFechaSubida').AsDateTime,13)));
    frxContratos.Variables.variables['Vencimiento_Mes']   := quotedstr(Uppercase(FormatDateTime('mmmm', incday(DataSet.FieldByName('dFechaSubida').AsDateTime,13))));
    frxContratos.Variables.variables['Vencimiento_Anyo']  :=   quotedstr(FormatDateTime('yy', incday(DataSet.FieldByName('dFechaSubida').AsDateTime,13)));
  end;
end;

procedure TfrmEmpleadosGuardias.QTodosClick(Sender: TObject);
begin
  RxGuardiaNueva.Active := false;
  RxGuardiaNueva.Active := true;
end;

procedure TfrmEmpleadosGuardias.QUnoClick(Sender: TObject);
begin
  if RxGuardiaNueva.recordcount > 0 then
    RxGuardiaNueva.Delete;
end;

procedure TfrmEmpleadosGuardias.AUnoClick(Sender: TObject);
var ListaEmpleados: TZQuery;
    Periodo, Guardia:Integer;
begin
  Periodo:= zqryGuardiasMovtos.fieldbyname('ID_PeriodoGuardia').asinteger;
  Guardia:= zqryGuardiasMovtos.fieldbyname('iIdGuardia').asinteger;
  //Bloque para saber si el personal de la guardia no a sido agregado a la guardia
  ListaEmpleados := TZQuery.Create(nil);
  ListaEmpleados.Connection := connection.zConnection;
  ListaEmpleados.Active:=False;
  ListaEmpleados.SQL.Add('select sIdEmpleado, ID_GuardiaPeriodo, iIdGuardia  from guardiasmovtos where ID_GuardiaPeriodo = :GuardiaPeriodo and iIdGuardia=:IdGuardia');
  ListaEmpleados.ParamByName('GuardiaPeriodo').AsInteger  := zqryGuardiasMovtos.fieldbyname('ID_PeriodoGuardia').asinteger;
  ListaEmpleados.ParamByName('IdGuardia').AsInteger       := zqryGuardiasMovtos.fieldbyname('iIdGuardia').asinteger;
  ListaEmpleados.Open;
  //Para saber si el empleado ya esta en la guardia
  if ListaEmpleados.Locate('sIdEmpleado, ID_GuardiaPeriodo, iIdGuardia', VarArrayOf([RxGuardiaAnterior.FieldByName('sIdEmpleado').AsString, Periodo, Guardia]), [loCaseInsensitive]) then
  begin
    MSG_ER('El empleado ya se encuentra en una guardia');
    Abort;
  end;
  //Para saber si ya fue agregado a la lista de empleados para agregar a la guardia
  if RxGuardiaNueva.Locate('sIdEmpleado', RxGuardiaAnterior.FieldByName('sIdEmpleado').AsString, [loCaseInsensitive]) then
  begin
    MSG_ER('El empleado ya existe');
    Abort;
  end;
  RxGuardiaNueva.Append;
  RxGuardiaNueva.FieldByName('sIdEmpleado').AsString  :=    RxGuardiaAnterior.FieldByName('sIdEmpleado').AsString;
  RxGuardiaNueva.FieldByName('sNombre').AsString      := RxGuardiaAnterior.FieldByName('NombreCompleto').AsString;
  RxGuardiaNueva.FieldByName('iId_Puesto').AsInteger  :=    RxGuardiaAnterior.FieldByName('iId_Puesto').AsInteger;
  RxGuardiaNueva.FieldByName('sPuesto').AsString      :=        RxGuardiaAnterior.FieldByName('sPuesto').AsString;
  RxGuardiaNueva.FieldByName('dSueldo').asinteger     :=       RxGuardiaAnterior.FieldByName('dSueldo').asinteger;
  RxGuardiaNueva.Post;
  ListaEmpleados.Destroy;
end;

procedure TfrmEmpleadosGuardias.ATodosClick(Sender: TObject);
var ListaEmpleados: TZQuery;
    Periodo, Guardia:Integer;
begin
  Periodo := zqryGuardiasMovtos.fieldbyname('ID_PeriodoGuardia').asinteger;
  Guardia :=        zqryGuardiasMovtos.fieldbyname('iIdGuardia').asinteger;
  //Bloque para saber si el personal de la guardia no a sido agregado a la guardia
  ListaEmpleados := TZQuery.Create(nil);
  ListaEmpleados.Connection := connection.zConnection;
  ListaEmpleados.Active := False;
  ListaEmpleados.SQL.Add('select sIdEmpleado, ID_GuardiaPeriodo, iIdGuardia  from guardiasmovtos where ID_GuardiaPeriodo = :GuardiaPeriodo and iIdGuardia=:IdGuardia');
  ListaEmpleados.ParamByName('GuardiaPeriodo').AsInteger  := Periodo;
  ListaEmpleados.ParamByName('IdGuardia').AsInteger       := Guardia;
  ListaEmpleados.Open;
  RxGuardiaAnterior.first;
  while not RxGuardiaAnterior.eof do
  begin
    if NOT ListaEmpleados.Locate('sIdEmpleado, ID_GuardiaPeriodo, iIdGuardia', VarArrayOf([RxGuardiaAnterior.FieldByName('sIdEmpleado').AsString, Periodo, Guardia]), [loCaseInsensitive]) then
    begin
      if NOT RxGuardiaNueva.Locate('sIdEmpleado', RxGuardiaAnterior.FieldByName('sIdEmpleado').AsString, [loCaseInsensitive]) then
      begin
        RxGuardiaNueva.Append;
        RxGuardiaNueva.FieldByName('sIdEmpleado').AsString  :=    RxGuardiaAnterior.FieldByName('sIdEmpleado').AsString;
        RxGuardiaNueva.FieldByName('sNombre').AsString      := RxGuardiaAnterior.FieldByName('NombreCompleto').AsString;
        RxGuardiaNueva.FieldByName('iId_Puesto').AsInteger  :=    RxGuardiaAnterior.FieldByName('iId_Puesto').AsInteger;
        RxGuardiaNueva.FieldByName('sPuesto').AsString      :=        RxGuardiaAnterior.FieldByName('sPuesto').AsString;
        RxGuardiaNueva.FieldByName('dSueldo').asinteger     :=       RxGuardiaAnterior.FieldByName('dSueldo').asinteger;
        RxGuardiaNueva.Post;
      end;
    end;
    RxGuardiaAnterior.next;
  end;
  ListaEmpleados.destroy;
end;

procedure TfrmEmpleadosGuardias.DardeBajaGuardias1Click(Sender: TObject);
  var dias_guardia, guardias_retrasadas, I:Integer;
begin
end;

procedure TfrmEmpleadosGuardias.DBGrid1CellClick(Column: TColumn);
begin
  ZQGuardiasH.Active:=False;
  ZQGuardiasH.Open;

  Grid_HGuardias.DataController.DataSource := nil;
  Grid_HEmpleados.DataController.DataSource :=nil;
  ZQGuardiasH.Filtered := false;
  ZQGuardiasH.Filter := 'sNumeroOrden= '+ QuotedStr(ZQOrdenes.Fieldbyname('sNumeroOrden').AsString);
  ZQGuardiasH.Filtered :=  true;
  Grid_HGuardias.DataController.DataSource := dsZQGuardiasH;
end;

procedure TfrmEmpleadosGuardias.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEmpleadosGuardias.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEmpleadosGuardias.DBGrid1TitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEmpleadosGuardias.DBGrid2CellClick(Column: TColumn);
begin
  if ZQRGuardias.state in [dsedit] then
    ZQRGuardias.Post;
end;

procedure TfrmEmpleadosGuardias.DBGrid2DblClick(Sender: TObject);
begin
  if ZQREmpleados.RecordCount > 0 then
    ZQRGuardias.Edit;
end;

procedure TfrmEmpleadosGuardias.desautorizarGuardiaClick(Sender: TObject);
begin
  //Desautoriza la guardia
  try
    connection.zConnection.StartTransaction;

    Desautorizar_Guardia;

    connection.zConnection.Commit;
  Except
    if connection.zConnection.InTransaction then
       connection.zConnection.Rollback;
  end;
end;

procedure TfrmEmpleadosGuardias.dFechaBajadaGuardiaKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then cmdAceptarGuardia.SetFocus;
end;

procedure TfrmEmpleadosGuardias.dFechaSubidaGuardiaKeyPress(Sender: TObject;var Key: Char);
begin
  if key =#13 then dFechaBajadaGuardia.SetFocus;
end;

procedure TfrmEmpleadosGuardias.ds_organizacionDataChange(Sender: TObject;
  Field: TField);
var
   sStatusPersonalR : string;
begin
  if TipoPersonal.EditValue = 'Tierra' then
     sStatusPersonalR:='Contratado'
  else
     sStatusPersonalR:='Pendiente';

  if cmbOrganizacion.KeyValue = 0 then
     sFiltroEmpleado := ''
  else
     sFiltroEmpleado := ' and idOrganizacion = '+ QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));

  zqryListaEmpleados.Filtered := false;
  if connection.configuracionRecHum.FieldValues['eGuardias'] = 'Si' then
     zqryListaEmpleados.Filter := ' sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado
  else
     zqryListaEmpleados.Filter := 'sStatusTipoPersonal= '+ QuotedStr(TipoPersonal.EditValue)+' and sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado;
  zqryListaEmpleados.Filtered := true;
end;

procedure TfrmEmpleadosGuardias.dxBtnGuardarClick(Sender: TObject);
begin
  if zqryGuardiasMovtos.FieldByName('Autorizar').asstring = 'SI' then
  begin
    if (zqryEmpleados.active = true)  then
    begin
      if (zqryEmpleados.recordcount >0) then
      begin
        if zqryEmpleados.FieldByName('sStatusPersonal').AsString <> 'Contratado' then
        begin
          MSG_W('El personal no está contratado');
          Abort;
        end;
        // constantin  se agrego el panel en tiempo de ejecucion en el radialmenu
        TBitacora_Seguimiento.visible    :=true;
        TBitacora_Seguimiento.enabled    :=true;
        zqrySeguimientoPersonal.active := false;
        zqrySeguimientoPersonal.open;
        zqrySeguimientoPersonal.Filtered:=false;
        zqrySeguimientoPersonal.Filter:= 'iId_PeriodoGuardia= '+QuotedStr(zqryEmpleados.FieldByName('ID_GuardiaPeriodo').AsString) + ' and iIdGuardia    = '+QuotedStr(zqryEmpleados.FieldByName('iIdGuardia').AsString) + ' and sIdPersonal   = '+QuotedStr(zqryEmpleados.FieldValues['sIdEmpleado']) ;
        zqrySeguimientoPersonal.Filtered:=true;
        // creamos el panel y el formulario
        seguimiento := TForm.Create(nil);
        TBitacora_Seguimiento.Width :=  810;
        TBitacora_Seguimiento.Height := 394;
        seguimiento.Caption :='Seguimiento del Personal en Plataforma / Barco';
        TBitacora_Seguimiento.Parent       := seguimiento;
        seguimiento.Top     :=  87;
        seguimiento.Left    := 158;
        seguimiento.Width   :=  TBitacora_Seguimiento.Width + 10;
        seguimiento.Height  := TBitacora_Seguimiento.Height + 30;
        seguimiento.BorderStyle := bsSingle;
        seguimiento.Position    :=    poMainFormCenter;
        seguimiento.ShowHint    :=     True;
        TBitacora_Seguimiento.Visible      :=     True;
        TBitacora_Seguimiento.Align        := alClient;
        seguimiento.AutoSize := True;
        seguimiento.BorderIcons := [biSystemMenu];
        cambio_estado;
        seguimiento.ShowModal;
      end;
    end;
  end else msg_er('La guardia no está autorizada');
end;

procedure TfrmEmpleadosGuardias.dxBtnImpClick(Sender: TObject);
begin
  if (zqryEmpleados.active = true)  then
  begin
    if (zqryEmpleados.recordcount >0) then
    begin
      frxdbdsEmpleado.DataSource := dsEmpleado;

      frxReporte.LoadFromFile(global_files +global_mireporte+'_GuardiasReporteEmpleados.fr3');
      frxReporte.ShowReport();
    end
    else MSG_ER('No hay registros para imprimir');
  end;

end;

procedure TfrmEmpleadosGuardias.eliminarRegistrosDeNom_DetalleNomina(
  idNomina, IdPeriodosGuarida: Integer);
var
  eliminaRegistro   : TZQuery;
  IdPersonalPagados : TZQuery;
  concatenacionIdPersonal : string;
  eliminarNucPersonalImss : TZQuery;
begin
  try
    IdPersonalPagados := TZQuery.Create(Self);
    IdPersonalPagados.Connection := connection.zConnection;

    IdPersonalPagados.Active := False;
    IdPersonalPagados.SQL.Clear;
    IdPersonalPagados.SQL.Text := 'select IdPersonal from nom_nominapersonal where idNomina = :idNomina';
    IdPersonalPagados.ParamByName('idNomina').AsInteger := idNomina;
    IdPersonalPagados.Open;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;

  concatenacionIdPersonal := '';
  if IdPersonalPagados.RecordCount > 0 then
  begin
    IdPersonalPagados.First;
    while Not IdPersonalPagados.Eof do
    begin
      concatenacionIdPersonal := concatenacionIdPersonal + ' and IdPersonal <> ' + IntToStr(IdPersonalPagados.FieldByName('IdPersonal').AsInteger);

      IdPersonalPagados.Next;
    end;
  end;

  //Elimina los registros de la tabla nom_detalleNomina
  try
    eliminaRegistro := TZQuery.Create(Self);
    eliminaRegistro.Connection := connection.zConnection;

    eliminaRegistro.Active := False;
    eliminaRegistro.SQL.Clear;
    eliminaRegistro.SQL.Text := 'delete from nom_detallenomina where idNomina = :idNomina ' + concatenacionIdPersonal;
    eliminaRegistro.ParamByName('idNomina').AsInteger := idNomina;
    eliminaRegistro.ExecSQL;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.eliminarRegistrosDeNom_NominaPersonal(
  idNomina: Integer);
var
  eliminaRegistro : TZQuery;
begin
  //Elimina los datos de nom_nominapersonal de Nominas cuando se de click en desautorizar
  try
    eliminaRegistro :=  TZQuery.Create(Self);
    eliminaRegistro.Connection := connection.zConnection;

    eliminaRegistro.Active := False;
    eliminaRegistro.SQL.Clear;
    eliminaRegistro.SQL.Text := 'delete from nom_nominapersonal where idNomina = :idNomina and ISNULL(IdFormaPago)';
    eliminaRegistro.ParamByName('idNomina').AsInteger := idNomina;
    eliminaRegistro.ExecSQL;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtInformation, [mbOk], 0);
    end;
  end; 
end;

function TfrmEmpleadosGuardias.empleadoEnOtraGuardia(
  sIdEmpleado: string; iIdGuardia : string): Boolean;
var
  error : Boolean;
  guardiasConEmpleado : string;
begin
  //Al Asignar al personal a una guardia, valida que si el empleado seleccionado esta en otra guardia de las activas
  //no se cruce las fechas de la guardia con las otras guardias en que el empleado este asignado
  try
    zqryGuardiasMovtosMemoria.Active := False;
    zqryGuardiasMovtosMemoria.ParamByName('contrato').AsString    := global_contrato;
    zqryGuardiasMovtosMemoria.ParamByName('numeroorden').asString := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
    zqryGuardiasMovtosMemoria.Open;

    guardiasConEmpleado := '';
    error := False;

    zqryGuardiasMovtosMemoria.First;
    while not zqryGuardiasMovtosMemoria.Eof do
    begin
      if zqryGuardiasMovtosMemoria.FieldByName('sIdFolio').AsString <> iIdGuardia then
      begin
        //1.- Checar si el empleado esta en una de las guardias activas
        with connection.QryBusca do
        begin
          Active := False;
          SQL.Clear;
          SQL.Text := 'select ' +
                         'iIdGuardiaMovtos, ' +
                         'iIdGuardia, ' +
                         'sIdEmpleado ' +
                      'from guardiasmovtos ' +
                      'where ' +
                         'iIdGuardia = :iIdGuardia and ' +
                         'sIdEmpleado = :sIdEmpleado and ' +
                         'ID_GuardiaPeriodo = :ID_GuardiaPeriodo';
          Params.ParamByName('iIdGuardia').AsString  := zqryGuardiasMovtosMemoria.FieldByName('sIdFolio').AsString;
          Params.ParamByName('sIdEmpleado').AsString := sIdEmpleado;
          Params.ParamByName('ID_GuardiaPeriodo').AsInteger := zqryGuardiasMovtosMemoria.FieldByName('ID_PeriodoGuardia').AsInteger;
          Open;
        end;

        if connection.QryBusca.RecordCount > 0 then
        begin
          error := True;
          guardiasConEmpleado := guardiasConEmpleado + zqryGuardiasMovtosMemoria.FieldByName('descripcion_guardia').AsString +
                              ' No. Guardia : ' + zqryGuardiasMovtosMemoria.FieldByName('sIdFolio').AsString + '. ' + #13;
        end
      end;

      zqryGuardiasMovtosMemoria.Next;
    end;

    if error then
    begin
      MessageDlg('El empleado se encuentra en las siguientes guardia(s) activa(s): ' + #13 + guardiasConEmpleado, mtInformation, [mbOk], 0);
    end;

    Result := error;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtWarning, mbOKCancel, 0);
    end;
  end;
end;

function keyFiltroTdbedit (tdb:TJvDotNetDBEdit;tecla:char):boolean;//cpl
begin
  if (tecla <>#48)and (tecla <>#13) and (tecla <>#49) and (tecla <>#50)
  and (tecla <>#51)and (tecla <>#52)and (tecla <>#53)and (tecla <>#54)
  and (tecla <>#55)and (tecla <>#56)and (tecla <>#57)and (tecla <>#46)
  and (tecla <>#8)then//delette
    keyfiltrotdbedit:=false;
    if (tecla=#46) then
      if (AnsiPos( '.',vartostr(tdb.Text) ))>0  then
        keyfiltrotdbedit:=false;
end;

function TfrmEmpleadosGuardias.ObtenerSeleccion (Campo:String; TipoPersonal:String; Grid: TcxGridDBTableView):String;
var
{
  idx: Integer;
  cursor: TCursor;
  IdEmpleado: string;
  NombreEmpleado: string;
  CodigoEmpleado: String;
  ListaPersonal: TStringList;
 }
  i:Integer;
  RegistroId:Integer;
  Columna:Integer;
  ColumnaEvalua:Integer;
  CampoEvalua:String;
  Cadena:String;
begin
  if TipoPersonal = '' then
  begin
    if Grid.Controller.SelectedRecordCount > 0 then
    begin
      for I := 0 to Grid.Controller.SelectedRecordCount - 1 do
      begin
        RegistroId := Grid.Controller.SelectedRecords[i].RecordIndex;
        Columna := Grid.DataController.GetItemByFieldName(Campo).Index;

        if Cadena = '' then
          Cadena := Grid.DataController.Values[RegistroId, Columna]
        else
          Cadena := Cadena + ',' + VarToStr(Grid.DataController.Values[RegistroId, Columna]);
      end;
    end;
  end;

  {
  if TipoPersonal <> '' then
  Begin
    for I := 0 to Grid.DataController.RecordCount- 1 do
    begin
      RegistroId := Grid.Controller.SelectedRecords[i].RecordIndex;
      Columna := Grid.DataController.GetItemByFieldName(Campo).Index;

      if TipoPersonal = 'Verde' then  //personal abordo
        CampoEvalua := 'sStatus';

      if TipoPersonal = 'Morado' then  //Personal Pagado
        CampoEvalua := 'sStatusPersonal';

      //viene la  seleccion.
      if  then

      if Cadena = '' then
        Cadena := Grid.DataController.Values[RegistroId, Columna]
      else
        Cadena := CadenaId + ',' + VarToStr(Grid.DataController.Values[RegistroId, Columna]);
    end;
  End;
  }

  Result := Cadena;

end;

procedure TfrmEmpleadosGuardias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfrmEmpleadosGuardias.FormCreate(Sender: TObject);
begin
  ejecutarAfterScroll := True;


  CdConMemPer.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
  CdConMemPer.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
  CdConMemPer.FieldDefs.Add('Titulo', ftString, 20, False);
  CdConMemPer.FieldDefs.Add('Nombre', ftString, 80, False);
  CdConMemPer.FieldDefs.Add('Modo', ftString, 20, False);
  CdConMemPer.FieldDefs.Add('Importe', ftFloat, 0, False);
  CdConMemPer.CreateDataSet;
  CdConMemPer.Open;

  CdConMemDed.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
  CdConMemDed.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
  CdConMemDed.FieldDefs.Add('Titulo', ftString, 20, False);
  CdConMemDed.FieldDefs.Add('Nombre', ftString, 80, False);
  CdConMemDed.FieldDefs.Add('Modo', ftString, 20, False);
  CdConMemDed.FieldDefs.Add('Importe', ftFloat, 0, False);
  CdConMemDed.CreateDataSet;
  CdConMemDed.Open;

  cdNomina.fieldDefs.Add('sueldo', ftString,20,false);
  cdNomina.fieldDefs.Add('PrimaDom', ftString,20,false);
  cdNomina.fieldDefs.Add('DiaFestivo', ftString,20,false);
  cdNomina.fieldDefs.Add('Vacaciones', ftString,20,false);
  cdNomina.fieldDefs.Add('PrimaVac', ftString,20,false);
  cdNomina.fieldDefs.Add('Aguinaldo', ftString,20,false);
  cdNomina.fieldDefs.Add('Deducciones', ftString,20,false);
  cdNomina.fieldDefs.Add('Neto', ftString,20,false);
  cdNomina.fieldDefs.Add('HorasExtra', ftString,20,false);
  cdNomina.fieldDefs.Add('IdPersonal', ftInteger, 0,false);
  cdNomina.CreateDataSet;
  cdNomina.Open;

end;

procedure TfrmEmpleadosGuardias.FormShow(Sender: TObject);
begin
  YaCreado := False;
  IsOpen   := false;
  RxPernAbordo.CreateDataSet;
  RxPernAbordo.Open;

  RxPlaAbordo.CreateDataSet;
  RxPlaAbordo.Open;
  actualizar;
  AuxOpen := false;
end;

procedure TfrmEmpleadosGuardias.actualizar;
begin
  OpcButton := '' ;
  zqryTipoMovto.Active              :=false;
  zqryTipoMovto.Open;

  ZQPersonal_Pagado.Active :=  False;    //Para saber si el personal ya fue pagado
  ZQPersonal_Pagado.Open;

  ZQNuc_Personal.Active:=false;  //Para el personal imss
  ZQNuc_Personal.Open;

  zqryListaEmpleados.Active := False;  //Para la lista completa de empleados
  //zqryListaEmpleados.ParamByName('organizacion').AsInteger := connection.contrato.FieldByName('idorganizacion').AsInteger;
  zqryListaEmpleados.Open;

  zqryProyectos.Active := False;     //Para los proyectos
  zqryproyectos.ParamByName('Contrato').AsString   := global_contrato;
  zqryProyectos.Open;

  zqryplataforma.Active := false;    //Para las plataformas
  zqryplataforma.Open;

  zqrypernocta.Active   := False;     //Para las pernoctas
  zqrypernocta.Open;

  qryGuardias.Active    := False;    //Para las guardias
  qryGuardias.Open ;

  IsOpen:=false;
  RbProyectos.Checked := True;
  RbProyectosClick(RbProyectos);
  IsOpen:=true;
  zqryOrdenesAfterScroll(zqryordenes);
  zqrySeguimientoPersonal.active:=false;     //Para el seguimiento del personal
  zqrySeguimientoPersonal.open;
  IsOpen:=false;
  GuardiaTodas.active:=false;               //Para traer todas las guardias
  GuardiaTodas.open;
  IsOpen:=true;
  zqryGuardiasMovtosAfterScroll(GuardiaTodas);
  //Para lo de imprimir contratos
  zQEmpleados.Active:=false;      //Para traer los empleados
  zQEmpleados.Open;
  zqHistorial.Active := False;    //Para el historial de contratos
  zqHistorial.Open;
  qryFlEstatus.Active := False ;    //Para el estatus
  qryFlEstatus.Open;
  ZQNomina_Guardia.Active := False;  //Para traer las guardias de nomina
  ZQNomina_Guardia.Open;

  QryOrganizacion.Active := False;
  QryOrganizacion.ParamByName('padre').AsInteger := -5;
  QryOrganizacion.Open;

  if QryOrganizacion.RecordCount > 0 then
     cmbOrganizacion.KeyValue := 0;

  //Esto es par refrescar antes de imprimir las credenciales la conf. de RH
  Connection.configuracionRecHum.Active := False;
  Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
  Connection.configuracionRecHum.Open  ;
end;

procedure TfrmEmpleadosGuardias.frmBarra2btnAddClick(Sender: TObject);
begin
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select Max(iNomina) as iNomina, Max(dFechaFinal) as dFechaFinal From nomina Where sContrato = :Contrato Group By sContrato');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Open;
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnAddClick(Sender: TObject);
begin
  if not RbProyectos.Checked then
  begin
    MSG_ER('Sólo se puede asignar guardia a un proyecto, por favor selecciona un proyecto e intente de nuevo');
    Abort;
  end;
  frmBarra4.btnAddClick(Sender);
  PanelGuardia.Visible           := True;
  PanelGuardia.Top               :=  168;
  PanelGuardia.left              :=  309;
  PanelGuardia.Height            :=  295;
  PanelGuardia.Width             :=  498;
  sFolioguardia.Text             :=   '';
  sNombreGuardia.Text            :=   '';
  sTipoGuardia.ItemIndex         :=    0;
  tsHora.Text                    := '00:00';
  dFechaSubidaGuardia.Date       := date;
  dFechaBajadaGuardia.Date       := date;
  sOpcionGuardia                 := 'insertadato';
  Insertar1.Enabled              := False;
  Editar1.Enabled                := False;
  Registrar1.Enabled             :=  True;
  Can1.Enabled                   :=  True;
  Eliminar1.Enabled              := False;
  Refresh1.Enabled               := False;
  Salir1.Enabled                 := False;
  grid_Guardias.Enabled          := False;
  Plataforma.KeyValue            := zqryOrdenes.Fieldbyname('sIdPlataforma').AsString;
  Proyecto.KeyValue              :=  zqryOrdenes.Fieldbyname('sNumeroOrden').AsString;
  Pernocta.KeyValue              :=   zqryOrdenes.Fieldbyname('sIdPernocta').AsString;
  listaguardias                   := TForm.Create(nil);
  listaguardias.Caption           :='A L T A   G U A R D I A S';
  PanelGuardia.Parent             := listaguardias;
  listaguardias.Top               := PanelGuardia.top;
  listaguardias.Left              := PanelGuardia.Left;
  listaguardias.Width             :=  PanelGuardia.Width + 10;
  listaguardias.Height            := PanelGuardia.Height + 30;
  listaguardias.BorderStyle       := bsSingle;
  listaguardias.Position          := poMainFormCenter;
  listaguardias.ShowHint          :=     True;
  PanelGuardia.Align              := alClient;
  listaguardias.AutoSize          :=     True;
  listaguardias.BorderIcons := [];
  listaguardias.ShowModal;
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnCancelClick(Sender: TObject);
begin
  frmBarra4.btnCancelClick(Sender);
  Insertar1.Enabled  :=  True;
  Editar1.Enabled    :=  True;
  Registrar1.Enabled := False;
  Can1.Enabled       := False;
  Eliminar1.Enabled  :=  True;
  Refresh1.Enabled   :=  True;
  Salir1.Enabled     :=  True;
  qryguardias.Cancel;
  BotonPermiso.permisosBotones(frmBarra4);
  grid_Guardias.Enabled := true;
  PanelGuardia.Visible := False;
  sOpcion := '';
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnDeleteClick(Sender: TObject);
begin
  if (zqryGuardiasMovtos.recordcount = 0) then
  begin
    msg_er('No hay guardias que eliminar');
    abort;
  end;
  //Se realizar una  consulta a la base de datos para validar que no existan movimiento para esa guardia
  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select iIdGuardia from guardiasmovtos where iIdGuardia = :IdGuardia and sStatus = "Activo" and ID_GuardiaPeriodo = :PeriodoGuardia and sNumeroOrden = :NumeroOrden');
  connection.QryBusca2.ParamByName('IdGuardia').AsInteger       := zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
  connection.QryBusca2.ParamByName('PeriodoGuardia').AsInteger  := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
  connection.QryBusca2.ParamByName('NumeroOrden').asString      := zqryOrdenes.FieldByName('sNumeroOrden').asString;
  connection.QryBusca2.open;
  if connection.QryBusca2.recordcount > 0 then
    msg_ok('No se puede eliminar la guardia por que tiene personal asignado')
  else
  begin
    if MSG_YN('¿Desea eliminar el Registro Activo?') then
    begin
      //Ahora actualizamos los datos en la tabla de guardiasmovtos
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('delete from guardias where sIdfolio =:IdFolio and  ID_PeriodoGuardia =:PeriodoGuardia and sNumeroOrden = :NumeroOrden');
      connection.QryBusca.ParamByName('IdFolio').asString         := inttostr(zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger);
      connection.QryBusca.ParamByName('PeriodoGuardia').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
      connection.QryBusca.ParamByName('NumeroOrden').AsString     := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca.ExecSQL;
      zqryEmpleados.Filtered := False;;
      posicion:= zqryOrdenes.GetBookmark;
      actualizar;
      zqryOrdenes.GotoBookmark(posicion);
      zqryOrdenes.FreeBookmark(posicion);
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnEditClick(Sender: TObject);
begin
  if not RbProyectos.Checked then
  begin
    MSG_ER('Sólo se puede asignar guardia a un proyecto. Seleccione un proyecto e intente de nuevo');
    Abort;
  end;
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    PanelGuardia.Visible           := True;
    PanelGuardia.Top               :=  168;
    PanelGuardia.left              :=  309;
    PanelGuardia.Height            :=  295;
    PanelGuardia.Width             :=  498;
    sFolioguardia.Text             :=   '';
    sNombreGuardia.Text            :=   '';
    sTipoGuardia.ItemIndex         :=    0;
    dFechaSubidaGuardia.Date       := date;
    dFechaBajadaGuardia.Date       := date;
    //llenando los items del panel guardias
    sOpcionGuardia := 'editadato';
    Insertar1.Enabled              := False;
    Editar1.Enabled                := False;
    Registrar1.Enabled             :=  True;
    Can1.Enabled                   :=  True;
    Eliminar1.Enabled              := False;
    Refresh1.Enabled               := False;
    Salir1.Enabled                 := False;
    grid_Guardias.Enabled          := False;
    tsHora.Text                    :=  zqryGuardiasMovtos.Fieldbyname('sHoraInicioGuardia').AsString;
    Plataforma.KeyValue            :=   zqryOrdenes.Fieldbyname('sIdPlataforma').AsString;
    Proyecto.KeyValue              :=    zqryOrdenes.Fieldbyname('sNumeroOrden').AsString;
    Pernocta.KeyValue              :=     zqryOrdenes.Fieldbyname('sIdPernocta').AsString;
    sFolioGuardia.Text             := zqryGuardiasMovtos.Fieldbyname('sIdFolio').AsString;
    sNombreGuardia.Text            := zqryGuardiasMovtos.Fieldbyname('descripcion_guardia').AsString;
    sTipoGuardia.Text              :=        zqryGuardiasMovtos.Fieldbyname('sTipoGuardia').AsString;
    dFechaSubidaGuardia.Date       :=     zqryGuardiasMovtos.Fieldbyname('dFechaInicial').AsDateTime;
    dFechaBajadaGuardia.Date       :=       zqryGuardiasMovtos.Fieldbyname('dFechaFinal').AsDateTime;
    cmdAceptarGuardia.Visible      := True;
    Button1.Visible      :=false;
    listaguardias                   := TForm.Create(nil);
    listaguardias.Caption           :='E D I T A R   G U A R D I A S';
    PanelGuardia.Parent             :=     listaguardias;
    listaguardias.Top               :=  PanelGuardia.top;
    listaguardias.Left              := PanelGuardia.Left;
    listaguardias.Width             :=  PanelGuardia.Width + 10;
    listaguardias.Height            := PanelGuardia.Height + 30;
    listaguardias.BorderStyle       := bsSingle;
    listaguardias.Position          := poMainFormCenter;
    listaguardias.ShowHint          :=     True;
    PanelGuardia.Align              := alClient;
    listaguardias.AutoSize          :=     True;
    listaguardias.BorderIcons := [];
    Plataforma.enabled:=false;
    Proyecto.enabled:=false;
    Pernocta.enabled:=false;
    listaguardias.ShowModal;
  end;
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnPrinterClick(Sender: TObject);
begin
  PopupImprimir.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfrmEmpleadosGuardias.frmBarra4btnRefreshClick(Sender: TObject);
begin
  if RbProyectos.Checked then
  begin
    if (zqryOrdenes.RecordCount = 0) then
      actualizar
    else if (zqryOrdenes.RecordCount > 0) and (zqryGuardiasMovtos.RecordCount = 0) then
    begin
      posicion:= zqryOrdenes.GetBookmark;
      actualizar;
      zqryOrdenes.GotoBookmark(posicion);
      zqryOrdenes.FreeBookmark(posicion);
    end
    else if (zqryOrdenes.RecordCount > 0) and (zqryGuardiasMovtos.RecordCount > 0) and (zqryEmpleados.RecordCount = 0) then
    begin
      posicion:= zqryOrdenes.GetBookmark;
      posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
      actualizar;
      zqryOrdenes.GotoBookmark(posicion);
      zqryOrdenes.FreeBookmark(posicion);
      zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
      zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
    end
    else if (zqryOrdenes.RecordCount > 0) and (zqryGuardiasMovtos.RecordCount > 0) and (zqryEmpleados.RecordCount > 0) then
    begin
      posicion:= zqryOrdenes.GetBookmark;
      posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
      posicion_empleados := zqryEmpleados.GetBookmark;
      actualizar;
      zqryOrdenes.GotoBookmark(posicion);
      zqryOrdenes.FreeBookmark(posicion);
      zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
      zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
      zqryEmpleados.GotoBookmark(posicion_empleados);
      zqryEmpleados.FreeBookmark(posicion_empleados);
    end;
  end
  else
    actualizar;
end;

procedure TfrmEmpleadosGuardias.frmBarra5btnPrinterClick(Sender: TObject);
begin
  PopupImprimir.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfrmEmpleadosGuardias.frmBotonera1btnAddClick(Sender: TObject);
begin
  if not RbProyectos.Checked then
  begin
    MSG_ER('Seleccione una guardia de un proyecto activo');
    Abort;
  end;
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'NO' then
    begin
      frmBotonera1.btnAddClick(Sender);
      sOpcion := 'InsertaDato';
      grid_embarcaciones.enabled  := False;
      grid_Guardias.enabled       := False;
      grid_empleados.Enabled      := False;
      posicion:= zqryOrdenes.GetBookmark;
      posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
      posicion_empleados := zqryEmpleados.GetBookmark;
      ButtonDos;
    end else
    if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then
      msg_w('La guardia ya ha sido autorizada, no se permiten realizar modificaciones');
  end else MSG_ER('No hay guardias activas');
end;

procedure TfrmEmpleadosGuardias.frmBotonera1btnCancelClick(Sender: TObject);
begin
  try
    BView_EmpleadosColumn1.Options.Editing := False;
    zqryEmpleados.CancelUpdates;

    if connection.zconnection.InTransaction then
      connection.zConnection.Rollback;

    frmBotonera1.btnCancelClick(Sender);
    sOpcion                     := '';
    BView_EmpleadossIdPernocta.Options.Editing   := False;
    BView_EmpleadossIdPlataforma.Options.Editing := False;
    BView_EmpleadosdFechaSubida.Options.Editing  := False;
    grid_embarcaciones.enabled  :=True;
    grid_Guardias.enabled       :=True;
    grid_empleados.Enabled      :=True;
    rxEmpleados.Active          := True;
    rxEmpleados.EmptyTable;
    zqryOrdenes.GotoBookmark(posicion);
    zqryOrdenes.FreeBookmark(posicion);
    zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
    zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
    zqryEmpleados.GotoBookmark(posicion_empleados);
    zqryEmpleados.FreeBookmark(posicion_empleados);
  except
    on e: Exception do
    begin
      MessageDlg('Ha ocurrido un error desconocido, informe al administrador del sistema del siguiente error:  ' + e.Message, mtError, [mbOK], 0);
      if connection.zConnection.InTransaction then
        connection.zConnection.Rollback;
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.frmBotonera1btnDeleteClick(Sender: TObject);
var
  i : Integer;
  arraySIdEmpleados : array of String;
begin
  if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then
  begin
     msg_w('La guardia ya ha sido autorizada, no se permiten realizar modificaciones');
     exit;
  end;
  if not RbProyectos.Checked then
  begin
    MSG_ER('Selecciones una guardia de un proyecto activo');
    Abort;
  end;
  if zqryGuardiasMovtos.recordcount = 0 then
  begin
    MSG_ER('No hay guardias activas');
    Abort;
  end;
  //No se puede quitar el registro si ya fue confirmado
  if zqryEmpleados.FieldByName('sConfirmado').AsString = 'SI' then
  begin
    MSG_ER('No se puede eliminar el personal por que ya fue confirmado en la guardia');
    Abort;
  end;
  if zqryGuardiasMovtos.fieldbyname('Autorizar').asstring = 'NO' then
  begin
    if zqryEmpleados.recordcount > 0 then
    begin
      if MSG_YN('¿Desea eliminar el Registro Activo?') then
      begin
        SetLength(arraySIdEmpleados, BView_Empleados.Controller.SelectedRowCount);

        for i := 0 to BView_Empleados.Controller.SelectedRowCount - 1 do
        begin
           arraySIdEmpleados[i] := BView_Empleados.Controller.SelectedRows[i].Values[BView_EmpleadossIdEmpleado.Index];
        end;

        for i := 0 to Length(arraySIdEmpleados) - 1 do
        begin
          //Quitamos el registro de guardias movimientos
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('delete from guardiasmovtos where ((sIdEmpleado = :sIdEmpleado) and (sNumeroOrden = :sNumeroOrden) and (ID_GuardiaPeriodo = :ID_GuardiaPeriodo) and (iIdGuardia = :iIdGuardia))');
          connection.QryBusca.ParamByName('sIdEmpleado').AsString         := arraySIdEmpleados[i]; (*zqryEmpleados.FieldByName('sIdEmpleado').AsString;*)
          connection.QryBusca.ParamByName('sNumeroOrden').AsString        := zqryEmpleados.FieldByName('sNumeroOrden').AsString;
          connection.QryBusca.ParamByName('ID_GuardiaPeriodo').AsInteger  := zqryEmpleados.FieldByName('ID_GuardiaPeriodo').AsInteger;
          connection.QryBusca.ParamByName('iIdGuardia').AsInteger         := zqryEmpleados.FieldByName('iIdGuardia').AsInteger;
          connection.QryBusca.ExecSQL;

          zqryEmpleados.Refresh;

          ejecutarAfterScroll := False;

          //Actualizamos los registros
          posicion:= zqryOrdenes.GetBookmark;
          posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
          //actualizar;
          zqryOrdenes.GotoBookmark(posicion);
          zqryOrdenes.FreeBookmark(posicion);
          zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
          zqryGuardiasMovtos.FreeBookmark(posicion_guardias);

          ejecutarAfterScroll := True;
        end;

        MSG_OK('Proceso realizado correctamente');
      end;
    end else MSG_ER('No hay personal para eliminar');
  end else
  if zqryGuardiasMovtos.fieldbyname('Autorizar').AsString = 'SI' then
    MSG_ER('La guardia ha sido autorizada, no es posible eliminar el personal');
end;

procedure TfrmEmpleadosGuardias.frmBotonera1btnEditClick(Sender: TObject);
var
  i:Integer;
begin
  if not RbProyectos.Checked then
  begin
    MSG_ER('Seleccione una guardia de un proyecto activo');
    Abort;
  end;
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    BView_EmpleadosColumn1.Options.Editing := True;
    zqryEmpleados.Edit;

    if zqryEmpleados.fieldbyname('Contratado').asstring = 'NO' then
    begin
      MSG_ER('No se puede editar el personal porque no está contratado');
      Exit;
    end;
    if zqryEmpleados.fieldbyname('sStatus').asstring = 'Bajo' then
    begin
      MSG_ER('No se puede confirmar el personal porque ya se encuentra en tierra');
      Exit;
    end;
    if zqryGuardiasMovtos.fieldbyname('Autorizar').AsString = 'NO' then
    begin
      if zqryEmpleados.recordcount > 0 then
      begin
        frmBotonera1.btnEditClick(Sender);
        sOpcion := 'EditaDato';
        if Not connection.zConnection.InTransaction then
        try
          connection.zConnection.StartTransaction;
          zqryEmpleados.Edit;
          grid_embarcaciones.enabled  := False;
          grid_Guardias.enabled       := False;
          grid_empleados.Enabled      :=  true;
          BView_EmpleadossIdPlataforma.Options.Editing := True;
          BView_EmpleadossIdPernocta.Options.Editing   := True;
          //BView_EmpleadosdFechaSubida.Options.Editing  := True;
          posicion:= zqryOrdenes.GetBookmark;
          posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
          posicion_empleados := zqryEmpleados.GetBookmark;
        Except
          on e: Exception do
          begin
            MessageDlg('Ha ocurrido un error inesperado, informe al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
            if connection.zConnection.InTransaction then
              connection.zConnection.Rollback;
          end;
        end;
      end;
    end else
    begin
      if zqryGuardiasMovtos.FieldByName('Autorizar').asstring = 'SI' then
        msg_w('La guardia ya ha sido autorizada, no se permiten realizar modificaciones');
    end;
  end else MSG_ER('No hay guardias activas');
end;

procedure TfrmEmpleadosGuardias.frmBotonera1btnPostClick(Sender: TObject);
var
  IdMovto, i : integer;
  valor:String;
  Z4,Z5,Z6,Z7,Z8 : TZQuery;
begin
  try
    Z4:= TZQuery.Create(nil);
    Z5:= TZQuery.Create(nil);
    Z6:= TZQuery.Create(nil);
    Z7:= TZQuery.Create(nil);
    Z8:= TZQuery.Create(nil);
    idMovto:=0;
    if zqryPlataforma.RecordCount = 0 then
    begin
      msg_er('No existen Plataformas/Embarcaciones para registrar la Guardia!');
      abort;
    end;
    if zqryProyectos.RecordCount = 0 then
    begin
      msg_er('No existen Proyectos/Ordenes de Servicio para registrar la Guardia!');
      abort
    end;
    if zqryPernocta.RecordCount = 0 then
    begin
      msg_er('No existe Pernocta para registrar la Guardia!');
      abort;
    end;
    if sOpcion = 'InsertaDato' then
    begin
      if rxEmpleados.RecordCount > 0 then
      begin
        rxEmpleados.First;
        while not rxEmpleados.Eof do
        begin
          //Aqui consltamos el Id de los movimientos de guardias
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select max(iIdGuardiaMovtos) as maximo from guardiasmovtos ');
          connection.QryBusca.Open;

          if (connection.QryBusca.RecordCount) > 0 then
            idMovto := connection.QryBusca.Fieldbyname('maximo').asInteger + 1
          else
            IdMovto := 1;

          //Ahora insertamos los datos en la tabla de guardiasmovtos
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('insert into guardiasmovtos (iIdGuardiaMovtos, iIdGuardia, sIdEmpleado, ' +
                     'dFechaSubida, dFechaBajada, dFechaSubidaReal, dFechaBajadaReal, sObservaciones, sNumeroOrden, sContrato, sIdPlataforma, sIdPernocta, '+
                     'sStatus, ID_GuardiaPeriodo, iId_Puesto, sHoraSubida) '+
                     'values (:Id, :Guardia, :IdEmpleado, :FechaSubida, :FechaBajada, :FechaSubidaReal, :FechaBajadaReal, :Observaciones, :Orden, :contrato, '+
                     ':IdPlataforma, :IdPecnotac, :Status, :GuardiaPeriodo, :Id_Puesto, :HoraSubida)');
          connection.QryBusca.ParamByName('Id').AsInteger             := idMovto;
          connection.QryBusca.ParamByName('GuardiaPeriodo').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
          connection.QryBusca.ParamByName('Guardia').AsInteger        := zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
          connection.QryBusca.ParamByName('IdEmpleado').AsString      := rxEmpleados.FieldValues['sIdEmpleado'];
          connection.QryBusca.ParamByName('FechaSubida').AsDate       := rxEmpleados.Fieldbyname('FechaSubida').AsDateTime;
          connection.QryBusca.ParamByName('FechaBajada').AsDate       := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
          connection.QryBusca.ParamByName('FechaSubidaReal').AsDate   := rxEmpleados.Fieldbyname('FechaSubida').AsDateTime;
          connection.QryBusca.ParamByName('FechaBajadaReal').AsDate   := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
          connection.QryBusca.ParamByName('Observaciones').AsString   := zqryGuardiasMovtos.FieldByName('sObservaciones').AsString;
          connection.QryBusca.ParamByName('IdPlataforma').AsString    := rxEmpleados.Fieldbyname('Plataforma').AsString; //zqryGuardiasMovtos.FieldByName('sIdPlataforma').AsString;
          connection.QryBusca.ParamByName('Orden').AsString           := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
          connection.QryBusca.ParamByName('IdPecnotac').AsString      := rxEmpleados.Fieldbyname('Pernocta').AsString;
          connection.QryBusca.ParamByName('contrato').AsString        := global_contrato;
          connection.QryBusca.ParamByName('Status').AsString          :=        'Activo';
          connection.QryBusca.ParamByName('Id_Puesto').asinteger      := rxEmpleados.FieldByName('iId_Puesto').asinteger;
          connection.QryBusca.ParamByName('HoraSubida').asString     := zqryGuardiasMovtos.FieldByName('sHoraInicioGuardia').asString;
          connection.QryBusca.ExecSQL;
          
          rxEmpleados.Next;
        end;
        rxEmpleados.EmptyTable;
        grid_embarcaciones.enabled := true;
        grid_Guardias.enabled      := true;
        grid_empleados.Enabled     := true;

        zqryEmpleados.Refresh;

        //actualizar;

        ejecutarAfterScroll := False;

        zqryOrdenes.GotoBookmark(posicion);
        zqryOrdenes.FreeBookmark(posicion);
        zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
        zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
        zqryEmpleados.GotoBookmark(posicion_empleados);
        zqryEmpleados.FreeBookmark(posicion_empleados);

        ejecutarAfterScroll := True;

        MSG_OK('Personal guardado con éxito');
      end else msg_er('No hay personal para cargar a la guardia');
    end;
    if sOpcion = 'EditaDato' then
    begin
      try
        zqryEmpleados.Post;

        if connection.zConnection.InTransaction then
          connection.zConnection.Commit;

        BView_EmpleadosColumn1.Options.Editing := False;
        grid_embarcaciones.enabled  := true;
        grid_Guardias.enabled       := true;
        grid_empleados.Enabled      := true;
        //Actualizamos la informacion pero mantenemos la posicion
        actualizar;
        zqryOrdenes.GotoBookmark(posicion);
        zqryOrdenes.FreeBookmark(posicion);
        zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
        zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
        zqryEmpleados.GotoBookmark(posicion_empleados);
        zqryEmpleados.FreeBookmark(posicion_empleados);
      except
        on e: Exception do
        begin
          MessageDlg('Ha ocurrido un error inesperado, informe del siguiente error al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
          if connection.zConnection.InTransaction then
            connection.zConnection.Rollback;
        end;
      end;
    end;
    rxEmpleados.Active        := True;
    rxEmpleados.EmptyTable;
    frmBotonera1.btnPostClick(Sender);
    sOpcion := '';
    zqryproyectos.Filtered := false;
    BView_EmpleadossIdPernocta.Options.Editing   := False;
    BView_EmpleadossIdPlataforma.Options.Editing := False;
    //BView_EmpleadosdFechaSubida.Options.Editing  := False;
  except     //Si surge un error al momento de agrgar el personal a la guardia hace un
  end
end;
procedure TfrmEmpleadosGuardias.frmBotonera1btnPrinterClick(Sender: TObject);
begin
  MSG_OK(' Haga Clic imprimir los registro !');
end;

procedure TfrmEmpleadosGuardias.generarReportesABordo;
var
 i : Integer;
begin
  //Guarda los contratos abordo de los empleados que esyan dentro de la guardia en PDF
  zqryEmpleados.First;

  Application.CreateForm(TfrmImprimeContratos, frmImprimeContratos);
  frmImprimeContratos.FormStyle := fsMDIForm;

  frmImprimeContratos.Visible := False;

  i := 0;
  while not zqryEmpleados.Eof do
  begin

    frmImprimeContratos.frxContratos.PrepareReport(true);
    frmImprimeContratos.frxPDFExport1.DefaultPath := rutaContratos; // se extrae la ruta de la carpeta temporal

    frmImprimeContratos.zQEmpleados.Locate('sIdEmpleado', zqryEmpleados.FieldByName('sIdEmpleado').AsString, []);
    frmImprimeContratos.frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordoB3.fr3') ;

    frmImprimeContratos.frxPDFExport1.FileName := zqryEmpleados.FieldByName('NombreCompleto').AsString + '.pdf';

    frmImprimeContratos.frxPDFExport1.ShowProgress := True;
    frmImprimeContratos.frxPDFExport1.ShowDialog := False;

    frmImprimeContratos.frxContratos.Export(frmImprimeContratos.frxPDFExport1);

    i := i + 1;
    zqryEmpleados.Next;
  end;
end;

procedure TfrmEmpleadosGuardias.grid_GuardiasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with (Sender as TDBGrid) do
  begin
    if DataSource.DataSet.FieldByName('Autorizar').AsString = 'NO' then
    begin
      canvas.brush.color := clwhite;
      canvas.font.color := clblack;
      canvas.fillrect(rect);
    end
    else
    begin
      canvas.brush.color := clwhite;
      canvas.font.color  := clblack;
      canvas.font.Style := [fsBold];
      canvas.fillrect(rect);
    end;
    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmEmpleadosGuardias.Grid_HGuardiasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if IsOpen then
  begin
    ZQEmpleadosH.Filtered := false;
    ZQEmpleadosH.Filter := 'ID_GuardiaPeriodo = '+ Inttostr(ZQGuardiasH.Fieldbyname('ID_PeriodoGuardia').AsInteger)+ ' and iIdGuardia = '+ QuotedStr(ZQGuardiasH.Fieldbyname('sIdFolio').asstring)+' and sNumeroOrden= '+ QuotedStr(ZQOrdenes.Fieldbyname('sNumeroOrden').AsString);
    ZQEmpleadosH.Filtered := true;
    Grid_HEmpleados.DataController.DataSource :=dsZQEmpleadosH;
  end;
end;

procedure TfrmEmpleadosGuardias.grid_InicioGuardiaDblClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_MovtosGuardias, frm_MovtosGuardias);
  frm_MovtosGuardias.ShowModal;
end;

procedure TfrmEmpleadosGuardias.grid_InicioGuardiaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEmpleadosGuardias.grid_InicioGuardiaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEmpleadosGuardias.grid_InicioGuardiaTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEmpleadosGuardias.GuardiasProximasaBajar1Click(Sender: TObject);
begin
  if guardiasn > 0 then
  begin
    Application.CreateForm(Tfrm_guardias_proximas, frm_guardias_proximas);
    frm_guardias_proximas.showModal;
  end
  else MSG_OK('No tiene guardias por bajar');
end;

procedure TfrmEmpleadosGuardias.HistorialdeGuardias1Click(Sender: TObject);
begin
  //Ordenes de trabajo
  ZQOrdenes.Active:=False;
  ZQOrdenes.ParamByName('Contrato').AsString := global_contrato;
  ZQOrdenes.Open;

  //Guardias
  IsOpen:=True;
  if ZQOrdenes.RecordCount > 0 then
  begin
    ZQOrdenes.First;

    ZQGuardiasH.Active:=False;
    ZQGuardiasH.Open;

    Grid_HGuardias.DataController.DataSource  := nil;
    Grid_HEmpleados.DataController.DataSource := nil;
    ZQGuardiasH.Filtered := false;
    ZQGuardiasH.Filter := 'sNumeroOrden= '+ QuotedStr(ZQOrdenes.Fieldbyname('sNumeroOrden').AsString);
    ZQGuardiasH.Filtered := true;
    Grid_HGuardias.DataController.DataSource := dsZQGuardiasH;
  end;

  //Empleados
  ZQEmpleadosH.Active:=False;
  ZQEmpleadosH.Open;

  //Creacion del formulario
  Crear_Form(THistorial_Guardias,Historial_Guardias,'Historial de Guardias',125,145,500,865,[biSystemMenu]);
  Historial_Guardias.Free;
end;

procedure TfrmEmpleadosGuardias.HistoricoGuardiasClick(Sender: TObject);
begin
  if zqryGuardiasMovtos.RecordCount > 0 then
  begin
    zqHistoricoG.Active := False;
    zqHistoricoG.ParamByName('numeroorden').AsString :=  zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
    zqHistoricoG.ParamByName('codigo').AsString      := zqryGuardiasMovtos.FieldByName('codigoguardia').AsString;
    zqHistoricoG.ParamByName('numero').AsInteger     := -1;
    zqHistoricoG.Open;

    if zqHistoricoG.RecordCount > 0 then
    begin
      frxDBPersonalProyecto.DataSource := ds_zQHistoricoG;
      frxReporte.LoadFromFile(global_files + global_MiReporte +'_HistoricoGuardias.fr3');
      frxReporte.ShowReport();
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.ImContAbClick(Sender: TObject);
var
  QrDatos:TzReadOnlyQuery;
begin
  QrDatos := TzReadOnlyQuery.Create(nil);
  try
    QrDatos.connection := Connection.zConnection;
    QrDatos.SQL.Text := 'select e.*,gm.*,nr.importe,rn.sDescripcion as nacionalidad' +
                      ',nc.titulocargo, b.sDescripcion as sBanco from empleados e' + #10 +
                      'inner join guardiasmovtos gm' + #10 +
                      'on(e.sIdEmpleado=gm.sIdEmpleado)' + #10 +
                      'inner join nuc_cargo nc' + #10 +
                      'on(gm.iId_puesto=nc.idCargo)' + #10 +
                      'left join nom_rangosalarios nr' + #10 +
                      'on(nr.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
                      'left join rh_nacionalidades rn ' +
                      'on(rn.iIdNacionalidad=e.iIdNacionalidad) ' +
                      'inner join rh_bancos b on (e.sIdBanco = b.sIdBanco) '+
                      'where gm.iIdGuardiaMovtos=:GuardiaMovto';
    dtBaja:=False;
    QrDatos.ParamByName('GuardiaMovto').AsInteger:=ZQEmpleadosH.FieldByName('iidguardiamovtos').asInteger;
    QrDatos.Open;
    if QrDatos.RecordCount>0 then
    begin
      if QrDatos.FieldByName('sStatusTipoPersonal').AsString='Tierra' then
        MSG_ER('No se puede imprimir el contrato por que es un personal de base')
      else
      if zqHistorial.Locate('sIdEmpleado; sIdGuardia; ID_PeriodoGuardia', VarArrayOf([QrDatos.FieldByName('sIdEmpleado').AsString,
       QrDatos.FieldByName('iIdGuardia').AsString, QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger]), []) then
      begin
        origen_contrato:='contrato a bordo';
        frx_ReporteEmpleados.DataSet := QrDatos;
        frx_ReporteEmpleados.FieldAliases.Clear;

        frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordo.fr3') ;
        frxContratos.Variables.variables['SueldoMensualC'] :=quotedstr(xNumerosToLletres(QrDatos.FieldByName('importe').AsCurrency));
        frxContratos.Variables.variables['Contratacion_Dia'] :=quotedstr(FormatDateTime('dd',QrDatos.FieldByName('dFechaSubida').AsDateTime));
        frxContratos.Variables.variables['Contratacion_Mes'] :=quotedstr(Uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('dFechaSubida').AsDateTime)));
        frxContratos.Variables.variables['Contratacion_Anyo'] :=quotedstr(FormatDateTime('yy', QrDatos.FieldByName('dFechaSubida').AsDateTime));

        frxContratos.Variables.variables['Vencimiento_Dia'] :=quotedstr(FormatDateTime('dd', incday(QrDatos.FieldByName('dFechaSubida').AsDateTime,13)));
        frxContratos.Variables.variables['Vencimiento_Mes'] :=quotedstr(Uppercase(FormatDateTime('mmmm', incday(QrDatos.FieldByName('dFechaSubida').AsDateTime,13))));
        frxContratos.Variables.variables['Vencimiento_Anyo'] :=quotedstr(FormatDateTime('yy', incday(QrDatos.FieldByName('dFechaSubida').AsDateTime,13)));

        frxContratos.ShowReport() ;
      end
      else MSG_ER('El contrato no fue localizado');
    end;
  finally
    QrDatos.destroy;
  end;
end;

procedure TfrmEmpleadosGuardias.climaClick(Sender: TObject);
begin
  if zqrySeguimientoPersonal.state in [dsinsert,dsedit] then
  begin
    zqrySeguimientoPersonal.FieldValues['dFechaRegresoLaborar']:=zqrySeguimientoPersonal.FieldValues['dFechaSalidaLaborar'];
    zqrySeguimientoPersonal.FieldValues['tHoraRegresoEntradaLaborar']:=zqrySeguimientoPersonal.FieldValues['tHoraSalidaSalirLaborar']
  end;
end;

procedure TfrmEmpleadosGuardias.raerGuardiaAnterior1Click(Sender: TObject);
var
  idMovto:Integer;
begin
  RxGuardiaAnterior.Active:=False;;  //Para llenar el personal con las guardias anteriores
  RxGuardiaAnterior.ParamByName('GuardiaPeriodo').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
  RxGuardiaAnterior.ParamByName('IdGuardia').AsInteger      := zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
  RxGuardiaAnterior.Open;        //Abrir la tabla de guardias anteriores
  if RxGuardiaAnterior.RecordCount = 0 then
  begin
    MSG_ER('No hay información para cargar');
    Abort
  end else
  begin
    RxGuardiaAnterior.first;
    while not RxGuardiaAnterior.eof do
    begin
      //Para agregar a los empleados a la guardia actual.
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select max(iIdGuardiaMovtos) as maximo from guardiasmovtos ');
      connection.QryBusca.Open;
      if (connection.QryBusca.RecordCount) > 0 then
        idMovto := connection.QryBusca.Fieldbyname('maximo').asInteger + 1
      else IdMovto := 1;

      //Ahora insertamos los datos en la tabla de guardiasmovtos
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('insert into guardiasmovtos (iIdGuardiaMovtos, iIdGuardia, sIdEmpleado, ' +
             'dFechaSubida, dFechaBajada, sObservaciones, sNumeroOrden, sContrato, sIdPlataforma, sIdPernocta, '+
             'sStatus, ID_GuardiaPeriodo, iId_Puesto) '+
             'values (:Id, :Guardia, :IdEmpleado, :FechaSubida, :FechaBajada, :Observaciones, :Orden, :contrato, '+
             ':IdPlataforma, :IdPecnotac, :Status, :GuardiaPeriodo, :Id_Puesto)');
      connection.QryBusca.ParamByName('Id').AsInteger             := idMovto;
      connection.QryBusca.ParamByName('GuardiaPeriodo').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
      connection.QryBusca.ParamByName('Guardia').AsInteger        := zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
      connection.QryBusca.ParamByName('IdEmpleado').AsString      := RxGuardiaAnterior.FieldByName('sIdEmpleado').asstring;
      connection.QryBusca.ParamByName('FechaSubida').AsDate       := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
      connection.QryBusca.ParamByName('FechaBajada').AsDate       := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
      connection.QryBusca.ParamByName('Observaciones').AsString   := zqryGuardiasMovtos.FieldByName('sObservaciones').AsString;
      connection.QryBusca.ParamByName('IdPlataforma').AsString    := zqryGuardiasMovtos.FieldByName('sIdPlataforma').AsString;
      connection.QryBusca.ParamByName('Orden').AsString           := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca.ParamByName('IdPecnotac').AsString      := zqryGuardiasMovtos.FieldByName('sIdPernocta').AsString;
      connection.QryBusca.ParamByName('contrato').AsString        := global_contrato;
      connection.QryBusca.ParamByName('Status').AsString          := 'Activo';
      connection.QryBusca.ParamByName('Id_Puesto').asinteger       := RxGuardiaNueva.FieldByName('iId_Puesto').asinteger;
      connection.QryBusca.ExecSQL;

      //Para actualizar el status en la tabla de empleados
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('update empleados set sStatusPersonal = "Agregado" where sIdEmpleado= :IdEmpleado');
      connection.QryBusca.ParamByName('IdEmpleado').AsString       := rxEmpleados.Fieldbyname('sIdEmpleado').asString;
      connection.QryBusca.ExecSQL;
      RxGuardiaNueva.next;
    end;
    posicion:= zqryOrdenes.GetBookmark;
    posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
    actualizar;
    zqryOrdenes.GotoBookmark(posicion);
    zqryOrdenes.FreeBookmark(posicion);
    zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
    zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
    msg_ok('El personal ha sido agregado a la guardia');
    Guardia_Anterior.Close;
  end;
end;

procedure TfrmEmpleadosGuardias.RBPernoctasClick(Sender: TObject);
begin
  posProyectos := zqryordenes.FieldByName('sIdFolio').AsString;
  grid_embarcaciones.Enabled := True;
  zqryordenes.close;
  zqryordenes.SQL.clear;
  zqryordenes.SQL.add('SELECT o.*, p.sDescripcion as pernocta  FROM ordenesdetrabajo o ');
  zqryordenes.SQL.add('inner join pernoctan p on (o.sIdPernocta = p.sIdPernocta) ');
  zqryordenes.SQL.add('where o.cIdStatus = "E" or o.cIdStatus = "P" and eMostrarGuardia = "Si" and o.sContrato = ' + QuotedStr(global_contrato));
  zqryordenes.SQL.add(' Group by o.sidpernocta');
  zqryordenes.open;
  grid_embarcaciones.Columns[0].Title.caption := 'Pernoctas';
  grid_embarcaciones.Columns[0].FieldName     :=  'pernocta';
  zqryOrdenes.Locate('sIdFolio',posProyectos,[]);
end;

procedure TfrmEmpleadosGuardias.RBPlataformasClick(Sender: TObject);
begin
  posProyectos := zqryordenes.FieldByName('sIdFolio').AsString;
  grid_embarcaciones.Enabled := True;
  zqryordenes.close;
  zqryordenes.SQL.clear;
  zqryordenes.SQL.add('SELECT *, "" as pernocta  FROM ordenesdetrabajo ');
  zqryordenes.SQL.add('where cIdStatus = "E" or cIdStatus = "P" and eMostrarGuardia = "Si" and sContrato = ' + QuotedStr(global_contrato));
  zqryordenes.SQL.add(' Group by sidplataforma');
  zqryordenes.open;
  grid_embarcaciones.Columns[0].Title.caption := 'Plataformas';
  grid_embarcaciones.Columns[0].FieldName :=   'sidplataforma';

  zqryOrdenes.Locate('sIdFolio',posProyectos,[]);
end;

procedure TfrmEmpleadosGuardias.RbProyectosClick(Sender: TObject);
begin
  posProyectos := zqryordenes.FieldByName('sIdFolio').AsString;
  grid_embarcaciones.Enabled := True;
  zqryordenes.close;
  zqryordenes.SQL.clear;
  zqryordenes.SQL.add('SELECT *, "" as pernocta  FROM ordenesdetrabajo');
  zqryordenes.SQL.add('where cIdStatus = "E" or cIdStatus = "P" and eMostrarGuardia = "Si" and sContrato = ' + QuotedStr(global_contrato));
  zqryordenes.SQL.add(' GROUP BY sNumeroOrden');
  zqryordenes.open;
  grid_embarcaciones.Columns[0].Title.caption := 'Proyectos';
  grid_embarcaciones.Columns[0].FieldName :=  'sNumeroOrden';

  zqryOrdenes.Locate('sIdFolio',posProyectos,[]);
end;

procedure TfrmEmpleadosGuardias.Recibo1Click(Sender: TObject);
var
  Cursor: TCursor;
  NumRec, i, op: Integer;
  Cadena, Modo, Modo2, Codigo, Titulo, Nombre, Grupo, Cargo, Valor, Imprime,
  Orden: String;
  hrsExtra: Integer;
  ListaIdPersonal: String;

function RellenaOrden(Cad:string):string;
begin
  while Length(Trim(Cad)) < 14 do
  begin
    Cad:='0'+Cad;
  end;
  Result := Cad;
end;
begin
  Try
    Cursor := Screen.Cursor;

    Try
      Screen.Cursor := crAppStart;
      // Abrir la nómina que se va a imprimir
      if Not YaCreado then
      begin
        cdDetalleSave.Open;

        //se  crea una tabla de  memoria  y se le agregan campos.
        memPercepciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        memPercepciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
        memPercepciones.FieldDefs.Add('Titulo', ftString, 25, False);
        memPercepciones.FieldDefs.Add('Nombre', ftString, 80, False);
        memPercepciones.FieldDefs.Add('Modo', ftString, 50, False);
        memPercepciones.FieldDefs.Add('Importe', ftFloat, 0, False);
        memPercepciones.FieldDefs.Add('Orden', ftString, 10, False);
        memPercepciones.CreateDataSet;
        memPercepciones.Open;

        memDeducciones.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
        memDeducciones.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
        memDeducciones.FieldDefs.Add('Titulo', ftString, 25, False);
        memDeducciones.FieldDefs.Add('Nombre', ftString, 80, False);
        memDeducciones.FieldDefs.Add('Modo', ftString, 50, False);
        memDeducciones.FieldDefs.Add('Importe', ftFloat, 0, False);
        memDeducciones.FieldDefs.Add('Orden', ftString, 10, False);
        memDeducciones.CreateDataSet;
        memDeducciones.Open;

        YaCreado := True;
      end;
      //aca va esar el pedo
      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.text :='SELECT nnp.IdNomina, nnp.IdFormaPago, np.idpersonal FROM nuc_personal np ' +
                                     'INNER JOIN nom_nominapersonal nnp ON (np.idpersonal=nnp.IdPersonal) '+
                                     'INNER JOIN nom_nomina a ON (nnp.IdNomina=a.Idnomina ) '+
                                     'inner join nom_detallenomina dn '+
                                     'on(np.Idpersonal=dn.Idpersonal and dn.Idnomina=a.Idnomina) '+
                                     'WHERE (:id = -1 or (:id <> -1 and FIND_IN_SET (np.codigopersonal,:id))) and ' +
                                     'a.IdPeriodosGuardia=:Guardia and not nnp.IdFormaPago is null';

      connection.QryBusca.ParamByName('id').Asstring := ObtenerSeleccion('sIdEmpleado','',BView_Empleados);
      connection.QryBusca.ParamByName('Guardia').asinteger:=zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
      connection.QryBusca.Open ;

      if connection.QryBusca.RecordCount > 0 then
      begin
        ListaIdPersonal := '';
        connection.QryBusca.first;

        while not connection.QryBusca.Eof do
        begin
          if listaIdPersonal = '' then
            ListaIdPersonal := connection.QryBusca.FieldByName('idpersonal').AsString
          else
            ListaIdPersonal := ListaIdPersonal + ',' + connection.QryBusca.FieldByName('idpersonal').AsString;

          connection.QryBusca.Next;
        end;
      end;

      //while not connection.QryBusca.eof do
      //begin
        if  connection.QryBusca.RecordCount> 0 then
        begin
          cdBuscar.ParamByName('IdNomina').AsInteger:=connection.QryBusca.FieldByName('IdNomina').AsInteger;
        end
        else
          raise Exception.Create('No se le ha calculado la nómina a este empleado.');

        if connection.QryBusca.FieldByName('IdFormaPago').AsInteger = 0 then
        begin
          if not MSG_YN('El pago aún no se ha realizado, los datos pueden ser incorrectos, ¿desea imprimir el recibo?') then
            exit;
        end;

        if cdBuscar.Active then
          cdBuscar.Refresh
        else
          cdBuscar.Open;

        // Crear el conjunto de los datos generales del empleado
        if Not Assigned(cdGenerales) then
          cdGenerales := TClientDataSet.Create(Self)
        else
        begin
          cdGenerales.Close;
          cdGenerales.FieldDefs.Clear;
        end;

        // Crear el conjunto de personal
        cdPersonalDetalleNomina.close;
        cdPersonalDetalleNomina.ParamByName('IdNomina').AsInteger:=cdBuscar.FieldByName('IdNomina').AsInteger;
        cdPersonalDetalleNomina.ParamByName('IdPersonal').AsString:= ListaIdPersonal; //connection.QryBusca.FieldByName('idpersonal').AsString;
        cdPersonalDetalleNomina.Open;

        if cdPersonalDetalleNomina.RecordCount = 0 then
          raise Exception.Create('El catálogo está vacío, Se ha solicitado la información del catálogo de Personal por Detalle de Nómina el cual se encuentra vacío, no es posible continuar con el proceso si dicho catálogo no contiene datos.');


        cdDetalleSave.ParamByName('IdNomina').AsInteger := cdBuscar.FieldByName('IdNomina').AsInteger;
        cdDetalleSave.ParamByName('IdPersonal').AsString := ListaIdPersonal;//connection.QryBusca.FieldByName('idpersonal').Asstring; //

        if cdDetalleSave.Active then
          cdDetalleSave.Refresh
        else
          cdDetalleSave.Open;

        if cdDetalleSave.RecordCount = 0 then
          raise Exception.Create('El catálogo está vacío, Se ha solicitado la información del catálogo de la Nómina el cual se encuentra vacío, no es posible continuar con el proceso si dicho catálogo no contiene datos.');

        // Limpiar los datos de nómina de empleado que pudieran existir
        memPercepciones.EmptyDataSet;
        memDeducciones.EmptyDataSet;

        cdDetalleSave.First;

        // Identificar cuantos registros componen su nómina
        NumRec := 0;
        Cadena := cdDetalleSave.FieldByName('Clave').AsString;
        while Pos('|', Cadena) > 0 do
        begin
          Inc(NumRec);
          Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
        end;

        // Obtener el universo de conceptos de entre todos los empleados
        cdDetalleSave.First;
        while not cdDetalleSave.Eof do
        begin
          for i := 0 to NumRec - 1 do
          begin
            Modo := Parte(i, cdDetalleSave.FieldByName('Modo').AsString);
            Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);

            if (CompareText(Modo, 'EMPLEADO') = 0) and (cdGenerales.FieldDefs.IndexOf(Codigo) < 0) then
              cdGenerales.FieldDefs.Add(Codigo, ftString, 200, False);
          end;

          cdDetalleSave.Next;
        end;

        cdGenerales.CreateDataSet;
        cdGenerales.Open;

        cdDetalleSave.First;
        while not cdDetalleSave.Eof do
        begin
          // Identificar cuantos registros componen su nómina
          NumRec := 0;
          Cadena := cdDetalleSave.FieldByName('Clave').AsString;
          while Pos('|', Cadena) > 0 do
          begin
            Inc(NumRec);
            Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
          end;

          cdGenerales.Append;
          cdGenerales.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;

          for i := 0 to NumRec - 1 do
          begin
            Modo := Parte(i, cdDetalleSave.FieldByName('Modo').AsString);
            Codigo := Parte(i, cdDetalleSave.FieldByName('CodigoConcepto').AsString);
            Titulo := Parte(i, cdDetalleSave.FieldByName('Titulo').AsString);
            Nombre := Parte(i, cdDetalleSave.FieldByName('Descripcion').AsString);
            Grupo := Parte(i, cdDetalleSave.FieldByName('IdGrupoConcepto').AsString);
            Cargo := Parte(i, cdDetalleSave.FieldByName('Cargo').AsString);
            Imprime := Parte(i, cdDetalleSave.FieldByName('Imprime').AsString);
            Valor := Parte(i, cdDetalleSave.FieldByName('Valor').AsString);

            if CompareText(Modo, 'EMPLEADO') = 0 then
              cdGenerales.FieldByName(Codigo).AsString := Valor;
            //por cuestiones del destino en mi pc el cdconcepto aparece como inactivo, es por eso q se abre aqui
            if cdConcepto.State = dsInactive then
            begin
              cdConcepto.ParamByName('IdTipoNomina').AsInteger:=cdBuscar.FieldByName('IdTipoNomina').AsInteger;
              cdConcepto.Open;
            end;

            if (CompareText(Modo, 'PERCEPCION') = 0) and (cdConcepto.Locate('CodigoConcepto', Codigo, []) and ((cdConcepto.FieldByName('Imprime').AsString = 'Si') or ((cdConcepto.FieldByName('Imprime').AsString = 'Datos') and (StrToFloat(Valor) <> 0)))) then
            begin
              hrsExtra := 0;
              //Total de horas extra
              if cdConcepto.locate('CodigoConcepto', 'HorasExtra', []) then
                hrsExtra := strToInt(cdConcepto.FieldByName('Importe').asString);
                //hrsExtra := strToFloatDef(cdConcepto.FieldByName('Importe').asString, 0);

              Orden := '';
              cdConcepto.Locate('codigoconcepto',Codigo,[]);
              Orden := cdConcepto.FieldByName('orden').AsString;
              Orden := RellenaOrden(Orden);
              memPercepciones.Append;
              memPercepciones.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;
              memPercepciones.FieldByName('CodigoConcepto').AsString := Codigo;
              if Codigo = '4.1' then
                memPercepciones.FieldByName('Titulo').AsString := Titulo + ' (' + IntToStr(HrsExtra) + ')'
              else
                memPercepciones.FieldByName('Titulo').AsString := Titulo;

              memPercepciones.FieldByName('Nombre').AsString := Nombre;
              memPercepciones.FieldByName('Importe').AsString := Valor;
              memPercepciones.FieldByName('Orden').AsString := Orden;
              memPercepciones.Post;
            end;

            if CompareText(Modo, 'DEDUCCION') = 0 then
            begin
              Orden := '';
              cdConcepto.Locate('codigoconcepto',Codigo,[]);
              Orden := cdConcepto.FieldByName('orden').AsString;
              Orden := RellenaOrden(Orden);
              memDeducciones.Append;
              memDeducciones.FieldByName('IdPersonal').AsInteger := cdDetalleSave.FieldByName('IdPersonal').AsInteger;
              memDeducciones.FieldByName('CodigoConcepto').AsString := Codigo;
              memDeducciones.FieldByName('Titulo').AsString := Titulo;
              memDeducciones.FieldByName('Nombre').AsString := Nombre;
              memDeducciones.FieldByName('Importe').AsString := Valor;
              memDeducciones.FieldByName('Orden').AsString  :=  Orden;
              memDeducciones.Post;
            end;
          end;
          cdGenerales.Post;
          cdDetalleSave.Next;
        end;

        memPercepciones.IndexFieldNames := 'Orden';
        memDeducciones.IndexFieldNames  := 'Orden';
        cdConcepto.Close;

       // connection.QryBusca.next;
      //end;

        FDSGenerales.DataSet := cdGenerales;
        frxContratos.LoadFromFile(Global_Files +global_miReporte +'_ReciboGuardias.fr3') ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select'+ #10 +
          'pr.IdOrganizacion,'+ #10 +
          'o.nombreorganizacion,'+ #10 +
          'o.tituloorganizacion,'+ #10 +
          'ot.mDescripcion,'+ #10 +
          'pr.IdPersonal,'+ #10 +
          'CONCAT(per.APaterno, " ", per.AMaterno," ", per.Nombres) as NombreCompleto'+ #10 +
        'From nuc_personalimss pr'+ #10 +
        'inner join nuc_organizacion as o'+ #10 +
          'on(o.Idorganizacion = pr.IdOrganizacion)'+ #10 +
        'inner join nuc_personal as per'+ #10 +
          'on(per.idpersonal = pr.IdPersonal)'+ #10 +
        'inner join guardiasmovtos gm'+ #10 +
          'on(gm.sIdEmpleado = per.codigopersonal and gm.ID_GuardiaPeriodo = :IdPeriodosGuardia)'+ #10 +
        'inner join ordenesdetrabajo ot'+ #10 +
        'on(ot.sNumeroOrden = gm.sNumeroOrden)'+ #10 +
        'where pr.TipoMovimiento = "Reingreso" and'+ #10 +
        'pr.IdPeriodosGuardia = :IdPeriodosGuardia and'+ #10 +
        'per.codigopersonal = :empleado'
        );

        connection.QryBusca.Params.ParamByName('empleado').AsString := zqryEmpleados.FieldByNAme('sIdEmpleado').asString ; {sIdEmpleado}
        connection.QryBusca.Params.ParamByName('IdPeriodosGuardia').AsInteger := zqryEmpleados.FieldByName('id_guardiaperiodo').AsInteger;
        connection.QryBusca.Open ;

      if  connection.QryBusca.RecordCount>0 then
        frxContratos.Variables.Variables[ 'Plataforma'] := quotedstr(connection.QryBusca.FieldByName('mdescripcion').AsString)
      else
        frxContratos.Variables.Variables[ 'Plataforma'] := quotedstr('*');

      frxContratos.ShowReport();
    Finally
      Screen.Cursor := Cursor;

      memPercepciones.Filtered := False;
      memDeducciones.Filtered := False;
    End;
  Except
    on e:Exception do
      MessageDlg('Ha ocurrido un error inesperado, informe de lo siguiente al administador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TfrmEmpleadosGuardias.ReglamentoPlataformas1Click(Sender: TObject);
begin
  frx_ReporteEmpleados.DataSet := zqEmpleados;
  frxReglamentosplataforma.LoadFromFile(Global_Files +global_miReporte +'_reglamento_interno_Plataforma.fr3') ;
  frxReglamentosplataforma.ShowReport() ;
end;

procedure TfrmEmpleadosGuardias.ReporteGuardiasPorEmpleado1Click(
  Sender: TObject);
begin
  //Pasar parametro sIdEmpleado al dataset zqryGuardiasPorEmpleado
  zqryGuardiasPorEmpleado.Active := False;
  zqryGuardiasPorEmpleado.Params.ParamByName('sIdEmpleado').AsString := zqryEmpleados.FieldByName('sIdEmpleado').AsString;
  zqryGuardiasPorEmpleado.Open;

  //Reporte de Guardias del empleado que se seleccione
  frxReporte.LoadFromFile(Global_Files +global_miReporte +'_Guardias_PorEmpleado.fr3') ;
  frxReporte.ShowReport()
end;

procedure TfrmEmpleadosGuardias.ReporteGuardiasPorEmpleado2Click(
  Sender: TObject);
begin
  //Pasar parametro sIdEmpleado al dataset zqryGuardiasPorEmpleado
  zqryGuardiasPorEmpleado.Active := False;
  zqryGuardiasPorEmpleado.Params.ParamByName('sIdEmpleado').AsString := ZQREmpleados.FieldByName('sIdEmpleado').AsString;
  zqryGuardiasPorEmpleado.Open;

  //Reporte de Guardias del empleado que se seleccione
  frxReporte.LoadFromFile(Global_Files +global_miReporte +'_Guardias_PorEmpleado.fr3') ;
  frxReporte.ShowReport()
end;

procedure TfrmEmpleadosGuardias.ReporteGuardiasPorEmpleado3Click(
  Sender: TObject);
begin
  //Pasar parametro sIdEmpleado al dataset zqryGuardiasPorEmpleado
  zqryGuardiasPorEmpleado.Active := False;
  zqryGuardiasPorEmpleado.Params.ParamByName('sIdEmpleado').AsString := ZQEmpleadosH.FieldByName('sIdEmpleado').AsString;
  zqryGuardiasPorEmpleado.Open;

  //Reporte de Guardias del empleado que se seleccione
  frxReporte.LoadFromFile(Global_Files +global_miReporte +'_Guardias_PorEmpleado.fr3') ;
  frxReporte.ShowReport()
end;

procedure TfrmEmpleadosGuardias.ReporteHorasGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Guardia' then
  begin
    Value := zqryempleados.fieldbyname('sObservaciones').asString;
  end;
  if VarName = 'FrenteTabajo' then
  begin
    Value := zqryOrdenes.fieldbyname('mDescripcion').asString;
  end;
  if VarName = 'Plataforma' then
  begin
    zqryPlataforma.Locate('sIdPlataforma',zqryOrdenes.fieldbyname('sIdPlataforma').asString, []);
    Value := zqryPlataforma.fieldbyname('sDescripcion').asString;
  end;
end;

procedure TfrmEmpleadosGuardias.rxNominaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  frxContratos.Variables.variables['SueldoMensual_Letras'] :=  quotedstr(xNumerosToLletres(rxNomina.FieldByName('Neto').ascurrency));
end;

procedure TfrmEmpleadosGuardias.RxPerAbordoAfterScroll(DataSet: TDataSet);
begin
  RxPernAbordo.Filtered := False;
  RxPernAbordo.Filter:='proyecto like '+QuotedStr(RxPerAbordo.FieldByName('proyecto').AsString);
  RxPernAbordo.Filtered :=  True;

  RxPlaAbordo.Filtered := False;
  RxPlaAbordo.Filter := 'proyecto like '+QuotedStr(RxPerAbordo.FieldByName('proyecto').AsString);
  RxPlaAbordo.Filtered :=  True;
end;

procedure TfrmEmpleadosGuardias.sFolioGuardiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then sNombreGuardia.SetFocus;
end;

procedure TfrmEmpleadosGuardias.sNombreGuardiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then sTipoGuardia.SetFocus;
end;

procedure TfrmEmpleadosGuardias.sTipoGuardiaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 then dFechaSubidaGuardia.SetFocus;
end;

procedure TfrmEmpleadosGuardias.TipoPersonalPropertiesChange(Sender: TObject);
var sStatusPersonalR:string;
begin
  if TipoPersonal.EditValue = 'Tierra' then sStatusPersonalR:='Contratado'
  else sStatusPersonalR:='Pendiente';
  try
    zqryListaEmpleados.Filtered := false;
    if connection.configuracionRecHum.FieldValues['eGuardias'] = 'Si' then
       zqryListaEmpleados.Filter := ' sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado
    else
       zqryListaEmpleados.Filter := 'sStatusTipoPersonal= '+ QuotedStr(TipoPersonal.EditValue)+' and sStatusPersonal = '+QuotedStr(sStatusPersonalR) + sFiltroEmpleado;
    zqryListaEmpleados.Filtered := true;
  except
  end;
end;

procedure TfrmEmpleadosGuardias.validarConfirmadoOContratado(campoAValidar: string);
begin
  //Valida si los empleados estan confirmados o contratados dependiendo del campo k se le pase a este procedimiento
  with connection.zCommand do
  begin
    Active := False;
    SQL.Clear;
    SQL.Text := 'select ' +
    '   gm.sConfirmado, ' +
    '   e.sIdEmpleado, ' +
    'if (( ' +
    '      select ' +
    '         npi.IdPeriodosGuardia ' +
    '      from nuc_personalimss npi ' +
    '      inner join nom_periodosguardia npg ' +
    '      on (npg.IdPeriodosGuardia = npi.IdPeriodosGuardia) ' +
    '      where ' +
    '         npg.IdPeriodosGuardia = pg.IdPeriodosGuardia and ' +
    '         npi.IdPersonal = np.IdPersonal and ' +
    '         npi.TipoMovimiento = "Baja" limit 1' +
    ')  = pg.IdPeriodosGuardia, "Contratado", "NoContratado") as sStatusPersonal ' +
    'from guardiasmovtos gm ' +
    'inner join empleados e ' +
    'on (e.sIdEmpleado = gm.sIdEmpleado) ' +
    'inner join nom_periodosguardia pg ' +
    'on (pg.IdPeriodosGuardia = gm.ID_GuardiaPeriodo) ' +
    'inner join nuc_personal np ' +
    'on (np.codigopersonal = e.sIdEmpleado) ' +
    'where ' +
    '   ID_GuardiaPeriodo = :iidguardia and ' +
    '   gm.sNumeroOrden = :sNumeroOrden and ' +
    'e.sStatusTipoPersonal <> "Tierra"';

    Params.ParamByName('iidguardia').AsInteger  := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
    Params.ParamByName('sNumeroOrden').AsString :=       zqryOrdenes.FieldByName('sNumeroOrden').AsString;
    Open;

    desConfirmadoODesContratado := False;
    while not Eof do
    begin
      if campoAValidar = 'sConfirmado' then
      begin
        if FieldByName('sConfirmado').AsString = 'NO' then
        begin
          desConfirmadoODesContratado := True;
        end
      end

      else if campoAValidar = 'sStatusPersonal' then
      begin
        zqryEmpleados.Locate('sIdEmpleado', FieldByName('sIdEmpleado').AsString, []);

        if (FieldByName('sStatusPersonal').AsString <> 'Contratado') and (zqryEmpleados.FieldByName('Pagado_Todo').AsString = 'NO') then
        begin
          desConfirmadoODesContratado := True;
        end;
      end;
      Next;
    end;
  end;

  if (desConfirmadoODesContratado = True) then
  begin
    if (campoAValidar = 'sConfirmado') then
    begin
      MessageDlg('No se puede realizar esta acción. No todos los empleados de la guardia se encuentran Confirmados', mtInformation, [mbOK], 0);
    end

    else if (campoAValidar = 'sStatusPersonal') then
    begin
      MessageDlg('No se puede realizar esta acción. No todos los empleados están Contratados', mtInformation, [mbOK], 0)
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.ZQC_OrdenesAfterScroll(DataSet: TDataSet);
begin
  ZQC_Guardias.Filtered := false;
  ZQC_Guardias.Filter := 'sNumeroOrden= '+ QuotedStr(ZQC_Ordenes.Fieldbyname('sNumeroOrden').AsString);
  ZQC_Guardias.Filtered :=  true;
end;

procedure TfrmEmpleadosGuardias.ZQEmpleadosHCalcFields(DataSet: TDataSet);
begin
  if (date < ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime) then
    ZQEmpleadosH.FieldByName('dias_trabajados').asInteger := 0
  else if (date > ZQEmpleadosH.FieldByName('dFechaBajada').AsDateTime) then
    ZQEmpleadosH.FieldByName('dias_trabajados').asInteger := (DaysBetween(ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime, ZQEmpleadosH.FieldByName('dFechaBajada').AsDateTime))
  else if (date > ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime) and (date < ZQEmpleadosH.FieldByName('dFechaBajada').AsDateTime) then
    ZQEmpleadosH.FieldByName('dias_trabajados').asInteger := (DaysBetween(ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime, Date))
  else if (date = ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime) and (date < ZQEmpleadosH.FieldByName('dFechaBajada').AsDateTime) then
    ZQEmpleadosH.FieldByName('dias_trabajados').asInteger := (DaysBetween(ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime, Date))
  else if (date > ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime) and (date = ZQEmpleadosH.FieldByName('dFechaBajada').AsDateTime) then
    ZQEmpleadosH.FieldByName('dias_trabajados').asInteger := (DaysBetween(ZQEmpleadosH.FieldByName('dFechaSubida').AsDateTime, ZQEmpleadosH.FieldByName('dFechaBajada').AsDateTime));
end;

procedure TfrmEmpleadosGuardias.zqryEmpleadosAfterScroll(DataSet: TDataSet);
begin
  if zqryEmpleados.FieldByName('sStatusPersonal').AsString = 'Contratado' then
  begin
    Descontrarar1.Enabled :=  True;
    ContrararPersonal1.enabled := False;
  end
  else
  begin
    Descontrarar1.Enabled := False;
    ContrararPersonal1.enabled := True;
  end;
end;

procedure TfrmEmpleadosGuardias.zqryEmpleadosCalcFields(DataSet: TDataSet);
begin
  //Dias trabajados
  if (date < zqryEmpleados.FieldByName('dFechaSubida').AsDateTime) then
    zqryEmpleados.FieldByName('dias_trabajados').asInteger := 0
  else if (date > zqryEmpleados.FieldByName('dFechaBajada').AsDateTime) then
    zqryEmpleados.FieldByName('dias_trabajados').asInteger := (DaysBetween(zqryEmpleados.FieldByName('dFechaSubida').AsDateTime, zqryEmpleados.FieldByName('dFechaBajada').AsDateTime))
  else if (date > zqryEmpleados.FieldByName('dFechaSubida').AsDateTime) and (date < zqryEmpleados.FieldByName('dFechaBajada').AsDateTime) then
    zqryEmpleados.FieldByName('dias_trabajados').asInteger := (DaysBetween(zqryEmpleados.FieldByName('dFechaSubida').AsDateTime, Date))
  else if (date = zqryEmpleados.FieldByName('dFechaSubida').AsDateTime) and (date < zqryEmpleados.FieldByName('dFechaBajada').AsDateTime) then
    zqryEmpleados.FieldByName('dias_trabajados').asInteger := (DaysBetween(zqryEmpleados.FieldByName('dFechaSubida').AsDateTime, Date))
  else if (date > zqryEmpleados.FieldByName('dFechaSubida').AsDateTime) and (date = zqryEmpleados.FieldByName('dFechaBajada').AsDateTime) then
    zqryEmpleados.FieldByName('dias_trabajados').asInteger := (DaysBetween(zqryEmpleados.FieldByName('dFechaSubida').AsDateTime, zqryEmpleados.FieldByName('dFechaBajada').AsDateTime));
  //Para saber si ya esta procesado
  ZQNuc_Personal.Filtered := false;
  ZQNuc_Personal.Filter := 'Procesado = "Si" and codigopersonal= '+ QuotedStr(zqryEmpleados.Fieldbyname('sIdEmpleado').AsString);
  ZQNuc_Personal.Filtered := true;
  if ZQNuc_Personal.FieldByName('Procesado').AsString = 'Si' then
    zqryEmpleados.FieldByName('Pagado').AsString := 'SI'
  else zqryEmpleados.FieldByName('Pagado').AsString := 'NO';
  //Para saber ei esta reprogramado
  if zqryEmpleados.FieldByName('Reprogramacion').AsDateTime = 0 then
    zqryEmpleados.FieldByName('sProgramado').AsString := 'NO'
  else zqryEmpleados.FieldByName('sProgramado').AsString := 'SI';
  //Para saber si el personal si esta abajo y ya le pagaron
  ZQPersonal_Pagado.Filtered := false;
  ZQPersonal_Pagado.Filter := ' codigopersonal = '+QuotedStr(zqryEmpleados.Fieldbyname('sIdEmpleado').AsString)+' and IdPeriodosGuardia = '+inttostr(zqryEmpleados.Fieldbyname('ID_GuardiaPeriodo').AsInteger);
  ZQPersonal_Pagado.Filtered := true;
  if ZQPersonal_Pagado.RecordCount > 0 then
    zqryEmpleados.FieldByName('Pagado_Todo').AsString := 'SI'
  else zqryEmpleados.FieldByName('Pagado_Todo').AsString := 'NO';
end;

procedure TfrmEmpleadosGuardias.zqryGuardiasMovtosAfterScroll(DataSet: TDataSet);
begin
  if ejecutarAfterScroll = True then
  begin
    if IsOpen then
    begin
      try
        if zqryGuardiasMovtos.FieldByName('sIdFolio').asString <> '' then
        begin
          zqryEmpleados.Active:= false ;
          zqryEmpleados.SQL.Clear;
          zqryEmpleados.SQL.add('select '+
                                'pg.FechaInicio, pg.FechaTermino, '+
                                'gm.iidguardiamovtos, '+
                                'gm.iidGuardia, '+
                                'gm.sidempleado, '+
                                'gm.dFechaSubida, '+
                                'IF(gm.reprogramacion = "0000-00-00",gm.dfechabajada,gm.reprogramacion) as dfechabajada, '+
                                'gm.sobservaciones, '+
                                'gm.sidplataforma, '+
                                'gm.snumeroorden, '+
                                'gm.sidpernocta, '+
                                'gm.scontrato, '+
                                'gm.sStatus, '+
                                'gm.sComentario, '+
                                'gm.id_guardiaperiodo, '+
                                'gm.iid_puesto, '+
                                'gm.stranferido, '+
                                'gm.reprogramacion, '+
                                'gm.sconfirmado, '+
                                'concat (e.sNombreCompleto, " ", e.sApellidoPaterno, " ",  e.sApellidoMaterno) as NombreCompleto, '+
                                ' if (((select Max(FechaMovimiento) From nuc_personalimss where idPersonal = np.IdPersonal and IdPeriodosGuardia >= gm.ID_GuardiaPeriodo and tipoMovimiento = "Baja")), "Contratado", "NoContratado") as sStatusPersonal, '+
                                'e.sStatusTipoPersonal, '+
                                'p.titulocargo as sPuesto, '+
                                'o.sIdFolio, '+
                                'pr.sDescripcion as Descripcion_Pernocta, '+
                                'pt.sDescripcion as Descripcion_Plataforma, '+
                                'o.mDescripcion as Descripcion_Orden, '+
                                'o.sOficioAutorizacion, '+
                                'e.idorganizacion, e.dFechaNacimiento, e.iIdNacionalidad, e.iIdPeriodo, g.sHoraInicioGuardia, '+
                                'gm.sHoraSubida, '+
                                'e.sImss, '+
                                'pims.SalarioDiario, pims.SalarioIntegrado, nomrg.Importe, '+

                                'np.IdPersonal,  ' +  //Agregado el 2015/03/17
                                'if (( ' +
                                'select ' +
                                '   npi.IdPeriodosGuardia ' +
                                'from nuc_personalimss npi ' +
                                'inner join nom_periodosguardia npg ' +
                                'on (npg.IdPeriodosGuardia = npi.IdPeriodosGuardia) ' +
                                'where ' +
                                '   npg.IdPeriodosGuardia = pg.IdPeriodosGuardia and ' +
                                '   npi.IdPersonal = np.IdPersonal and ' +
                                '   npi.TipoMovimiento = "Baja" limit 1) = pg.IdPeriodosGuardia, "Contratado", "NoContratado") ' +
                                'as sContratado ' + //Agregado el 2015/03/17

                                'from guardiasmovtos gm '+
                                'inner join ordenesdetrabajo o on(o.snumeroorden = gm.snumeroorden) '+
                                'inner join empleados e on (e.sIdEmpleado = gm.sIdEmpleado) '+
                                'inner join nuc_cargo p on (p.IdCargo = gm.iId_Puesto) '+
                                'left join pernoctan pr on (pr.sIdPernocta = gm.sIdPernocta) '+
                                'left join plataformas pt on (pt.sIdPlataforma = gm.sIdPlataforma) '+
                                'inner join guardias g on ((g.sIdFolio = gm.iIdGuardia) and (g.sStatusGuardia = "Activo")) '+
                                'inner join nom_periodosguardia pg on (gm.iIdGuardia = pg.idGuardia and gm.ID_guardiaperiodo = pg.IdPeriodosGuardia) '+
                                'left join nom_rangosalarios nomrg ON (nomrg.IdRangoSalarios = p.IdRangoSalarios) '+

                                'inner join nuc_personal np on (np.codigopersonal = e.sIdEmpleado) ' + //Agregado el 2015/03/17
                                'left join nuc_personalimss pims on (pims.idPersonal = np.IdPersonal and pims.IdPeriodosGuardia = pg.IdPeriodosGuardia and pims.TipoMovimiento = "reingreso"  ) '+

                                'where (gm.iIdGuardia  = :guardia and gm.ID_GuardiaPeriodo = :GuardiaPeriodo and gm.sNumeroOrden = :NumeroOrden) group by e.sIdEmpleado order by gm.iIdGuardiaMovtos');
          zqryEmpleados.ParamByName('guardia').asstring := zqryGuardiasMovtos.FieldByName('sIdFolio').asString;
          zqryEmpleados.ParamByName('GuardiaPeriodo').asstring := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').asString;
          zqryEmpleados.ParamByName('NumeroOrden').asString    := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
          zqryEmpleados.Open;
          BView_Empleados.DataController.DataSource := dsEmpleado;
        end else
        begin
          zqryEmpleados.Active := false;
        end;
      finally

      end;
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.zqryOrdenesAfterScroll(DataSet: TDataSet);
begin
  if ejecutarAfterScroll = True then
  begin
    if IsOpen then
    begin
      grid_Guardias.DataSource      := nil;
      BView_Empleados.DataController.DataSource := nil;
      if rbplataformas.checked then
      begin
        //Buscamos las guardias que pertenecen a la plataforma seleccionada, siempre y cuando tengas registros en la tabla guardiasmovtos..
        zqryGuardiasmovtos.Active := false;
        zqryGuardiasmovtos.SQL.Clear;
        zqryGuardiasMovtos.SQL.add('select o.sNumeroOrden, '+
                                   'gm.dFechaBajada, '+
                                   'gm.dFechaSubida, '+
                                   'gm.iIdGuardia, '+
                                   'gm.iIdGuardiaMovtos, '+
                                   'gd.sHoraInicioGuardia, '+
                                   'gd.sObservaciones, '+
                                   'gd.sTipoGuardia, '+
                                   'gd.sIdFolio, '+
                                   'gd.sObservaciones as descripcion_guardia, '+
                                   'gd.dFechaInicial, '+
                                   'IF(gd.Reprogramacion = "0000-00-00",gd.dFechaFinal,gd.Reprogramacion) as dFechaFinal, '+
                                   'gd.ID_PeriodoGuardia, '+
                                   'gd.Autorizar, '+
                                   'gd.sIdPlataforma, '+
                                   'gd.sNumeroOrden, '+
                                   'gd.sIdPernocta, '+
                                   'gd.IdTipoNomina, '+
                                   'ngd.IdGuardia, ' +
                                   'ngd.codigoguardia, '+
                                   'ngd.iNumeroGuardia '+
                                   'from ordenesdetrabajo o '+
                                   'INNER JOIN guardias gd on ((gd.sStatusGuardia="Activo") and (o.sNumeroOrden = gd.sNumeroOrdenAux)) '+
                                   'left JOIN nom_guardia ngd on ((ngd.Activo="Si") and (gd.sIdFolio = ngd.IdGuardia)) '+
                                   'LEFT JOIN guardiasmovtos gm ON ((o.sContrato = gm.sContrato) AND(gd.sIdFolio = gm.iIdGuardia) ) '+
                                   'where (o.sContrato = :contrato and  o.sidplataforma = :sidplataforma and o.sNumeroOrden = :NumeroOrden) group by gd.iIdGuardia ORDER BY gd.iIdGuardia DESC');
        zqryGuardiasMovtos.ParamByName('contrato').AsString       := global_contrato;
        zqryGuardiasMovtos.ParamByName('sidplataforma').AsString  := zqryOrdenes.fieldbyname('sidplataforma').AsString;
        zqryGuardiasMovtos.ParamByName('NumeroOrden').asString    := zqryOrdenes.FieldByName('sNumeroOrden').AsString;
        zqryGuardiasMovtos.Open;
        if zqryGuardiasMovtos.RecordCount = 0 then
        begin
          zqryEmpleados.Active:= False ;
        end;
      end;

      if rbproyectos.checked then
      begin
        //Buscamos las guardias que pertenecen a la plataforma seleccionada, siempre y cuando tengas registros en la tabla guardiasmovtos..
        zqryGuardiasmovtos.Active:= false ;
        zqryGuardiasmovtos.SQL.Clear;
        zqryGuardiasMovtos.SQL.add('select o.sNumeroOrden, '+
                                   'gm.dFechaBajada, '+
                                   'gm.dFechaSubida, '+
                                   'gm.iIdGuardia, '+
                                   'gm.iIdGuardiaMovtos, '+
                                   'gd.sHoraInicioGuardia, '+
                                   'gd.sObservaciones, '+
                                   'gd.sTipoGuardia, '+
                                   'gd.sIdFolio, '+
                                   'gd.sObservaciones as descripcion_guardia, '+
                                   'gd.dFechaInicial, '+
                                   'IF(gd.Reprogramacion = "0000-00-00",gd.dFechaFinal,gd.Reprogramacion) as dFechaFinal, '+
                                   'gd.ID_PeriodoGuardia, '+
                                   'gd.Autorizar, '+
                                   'gd.sIdPlataforma, '+
                                   'gd.sNumeroOrden, '+
                                   'gd.sIdPernocta, '+
                                   'gd.IdTipoNomina, '+
                                   'ngd.IdGuardia, ' +
                                   'ngd.codigoguardia, '+
                                   'ngd.iNumeroGuardia '+
                  'from ordenesdetrabajo o '+
                  'inner join guardias gd on (o.sNumeroOrden=gd.sNumeroOrden and gd.sStatusGuardia = "Activo") '+
                  'left JOIN nom_guardia ngd on ((ngd.Activo="Si") and (gd.sIdFolio = ngd.IdGuardia)) '+
                  'left JOIN guardiasmovtos gm ON (o.sContrato = gm.sContrato and o.sNumeroOrden = gm.sNumeroOrden and gd.sIdFolio=gm.iidguardia) '+
                  'where (o.sContrato =:contrato) and (o.sNumeroOrden = :numeroorden) group by gd.iIdGuardia ORDER BY gd.ID_PeriodoGuardia ASC');
        zqryGuardiasMovtos.ParamByName('contrato').AsString    := global_contrato;
        zqryGuardiasMovtos.ParamByName('numeroOrden').AsString := zqryOrdenes.Fieldbyname('sNumeroOrden').AsString;
        zqryGuardiasMovtos.Open;
        if zqryGuardiasMovtos.RecordCount = 0 then
        begin
          zqryEmpleados.Active:= False ;
        end;
      end;

      if rbpernoctas.checked then
      begin
        //Buscamos las guardias que pertenecen a la plataforma seleccionada, siempre y cuando tengas registros en la tabla guardiasmovtos..
        zqryGuardiasmovtos.Active:= false ;
        zqryGuardiasmovtos.SQL.Clear;
        zqryGuardiasMovtos.SQL.add('select o.sNumeroOrden, '+
                                   'gm.dFechaBajada, '+
                                   'gm.dFechaSubida, '+
                                   'gm.iIdGuardia, '+
                                   'gm.iIdGuardiaMovtos, '+
                                   'gd.sHoraInicioGuardia, '+
                                   'gd.sObservaciones, '+
                                   'gd.sTipoGuardia, '+
                                   'gd.sIdFolio, '+
                                   'gd.sObservaciones as descripcion_guardia, '+
                                   'gd.dFechaInicial, '+
                                   'IF(gd.Reprogramacion = "0000-00-00",gd.dFechaFinal,gd.Reprogramacion) as dFechaFinal, '+
                                   'gd.ID_PeriodoGuardia, '+
                                   'gd.Autorizar, '+
                                   'gd.sIdPlataforma, '+
                                   'gd.sNumeroOrden, '+
                                   'gd.sIdPernocta, '+
                                   'gd.IdTipoNomina, '+
                                   'ngd.IdGuardia, ' +
                                   'ngd.codigoguardia, '+
                                   'ngd.iNumeroGuardia '+
                                   'from ordenesdetrabajo o '+
                                   'INNER JOIN guardias gd on ((gd.sStatusGuardia="Activo") and (o.sNumeroOrden = gd.sNumeroOrdenAux)) '+
                                   'left JOIN nom_guardia ngd on ((ngd.Activo="Si") and (gd.sIdFolio = ngd.IdGuardia)) '+
                                   'LEFT JOIN guardiasmovtos gm ON ((o.sContrato = gm.sContrato) AND(gd.sIdFolio = gm.iIdGuardia) ) '+
                                   'where (o.sContrato =:contrato and  o.sidpernocta = :sidpernocta) group by gd.iIdGuardia ORDER BY gd.ID_PeriodoGuardia ASC');
        zqryGuardiasMovtos.ParamByName('contrato').AsString    := global_contrato;
        zqryGuardiasMovtos.ParamByName('sidpernocta').AsString := zqryOrdenes.Fieldbyname('sidpernocta').AsString;
        zqryGuardiasMovtos.Open;
        if zqryGuardiasMovtos.RecordCount = 0 then
        begin
          zqryEmpleados.Active:= False ;
        end;
      end;
      grid_Guardias.DataSource := dsGuardiasMovtos
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.zqrySeguimientoPersonalCalcFields(
  DataSet: TDataSet);
begin
  zqryTipoMovto.locate('iIdTipoMovto', zqrySeguimientoPersonal.fieldbyname('iIdTipoMovto').asInteger,[]);
  zqrySeguimientoPersonal.fieldbyname('sMovimiento').asString := zqryTipoMovto.fieldbyname('sDescripcion').asString;
end;

function TfrmEmpleadosGuardias.cabeEnGuardia(sIdEmpleado : string): Boolean;
var
  fechaGuardiasEmpleado : TZQuery;
  subidaCruzada : Boolean;
  bajadaCruzada : Boolean;
begin
  //Devuelve True si el empleado cabe en la guardia en la que se le quiere agregar
  //Devuelve False si No cabe en la guardia
  try
    try
      fechaGuardiasEmpleado := TZQuery.Create(Self);
      fechaGuardiasEmpleado.connection := connection.zConnection;

      fechaGuardiasEmpleado.Active := False;
      fechaGuardiasEmpleado.SQL.Clear;
      fechaGuardiasEmpleado.SQL.Text :=  'select ' +
                                 'npg.IdPeriodosGuardia, ' +
                                 'ng.TituloGuardia, ' +
                                 '(  ' +
                                    'select ' +
                                       'npi2.FechaMovimiento ' +
                                    'from nuc_personalimss npi2 ' +
                                    'where ' +
                                       '(npi2.IdPeriodosGuardia = npg.IdPeriodosGuardia) and ' +
                                       '(npi2.TipoMovimiento = "Reingreso") and ' +
                                       '(npi2.IdPersonal = npi.IdPersonal) ' +
                                    'group by npg.IdPeriodosGuardia ' +
                                  'order by npi2.idPersonalIMSS ' +
                                 ') as Reingreso, ' +
                                 '( ' +
                                    'select ' +
                                      'FechaMovimiento ' +
                                    'from nuc_personalimss npi3 ' +
                                    'where ' +
                                       '(npi3.IdPeriodosGuardia = npg.IdPeriodosGuardia) and ' +
                                       '(npi3.TipoMovimiento = "Baja") and ' +
                                       '(npi3.IdPersonal = npi.IdPersonal) ' +
                                    'group by npg.IdPeriodosGuardia ' +
                                  'order by npi3.idPersonalIMSS    ' +
                                 ') as Baja ' +
                              'from nuc_personalimss npi ' +
                              'inner join nuc_personal np ' +
                              'on (np.IdPersonal = npi.IdPersonal) ' +
                              'inner join nom_periodosguardia npg ' +
                              'on (npg.IdPeriodosGuardia = npi.IdPeriodosGuardia) ' +
                              'inner join nom_guardia ng ' +
                              'on (ng.IdGuardia = npg.IdGuardia) ' +
                              'where ' +
                                '(np.codigopersonal = :codigopersonal) ' +
                              'group by npg.IdPeriodosGuardia ' +
                              'order by npi.FechaMovimiento, npi.idPersonalIMSS';

      fechaGuardiasEmpleado.Params.ParamByName('codigopersonal').AsString := sIdEmpleado;
      fechaGuardiasEmpleado.Open;

      subidaCruzada := False;
      bajadaCruzada := False;

      fechaGuardiasEmpleado.First;
      while Not fechaGuardiasEmpleado.Eof do
      begin
        if (Not fechaGuardiasEmpleado.FieldByName('Reingreso').IsNull) and
           (Not fechaGuardiasEmpleado.FieldByName('Baja').IsNull) then
        begin
          if (Fecha_Subida.Date >= fechaGuardiasEmpleado.FieldByName('Reingreso').AsDateTime) and
             (Fecha_Subida.Date <= fechaGuardiasEmpleado.FieldByName('Baja').AsDateTime) then
          begin
            subidaCruzada := True;
          end;

          if (zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime >= fechaGuardiasEmpleado.FieldByName('Reingreso').AsDateTime) and
             (zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime <= fechaGuardiasEmpleado.FieldByName('Baja').AsDateTime) then
          begin
            bajadaCruzada := True;
          end;
        end;

        fechaGuardiasEmpleado.Next;
      end;

      if (subidaCruzada = True) and (bajadaCruzada = True) then
        Result := False
      else
        Result := True;

    finally
      fechaGuardiasEmpleado.Destroy;
    end;
  except
    on e : Exception do
    begin
      MessageDlg(e.Message, mtWarning, [mbOk], 0);
    end;
  end;
end;

function TfrmEmpleadosGuardias.cambiarYObtenerFechaBajaEmpleado(
  sIdEmpleado, parametroFechaSubida: string;
  iIdGuardia, ID_GuardiaPeriodo : Integer;
  sNumeroOrden, nombreEmpleado : string; var refFechaSubida : string): Boolean;
var
  zqryIdPersonal, IdPeriodosGuardias, fechasSubidaBajada : TZQuery;
  fechaSubida, fechaBajada, fechaMayor, tituloGuardia, nuevaFechaSubida : string;
  hayFechaMayor : Boolean;
begin
  //Si algun empleado seleccionado tiene fecha de bajada en una guardia que se cruza con la guardia seleccionada, entonces verificar la fecha en la que
  //baja de la guardia en la que esta activo y asi mismo modificar la fecha de subida de la guardia en la que se esta confirmando
  try
    zqryIdPersonal := TZQuery.Create(Self);
    zqryIdPersonal.Connection := connection.zConnection;

    zqryIdPersonal.Active := False;
    zqryIdPersonal.SQL.Clear;
    zqryIdPersonal.SQL.Text := 'select ' +
               '   np.IdPersonal ' +
               'from nuc_personal np ' +
               'where ' +
               '   np.codigopersonal = :codigopersonal';
    zqryIdPersonal.Params.ParamByName('codigopersonal').AsString := sIdEmpleado;
    zqryIdPersonal.Open;

    try
      IdPeriodosGuardias := TZQuery.Create(Self);
      IdPeriodosGuardias.connection := connection.zConnection;

      fechasSubidaBajada := TZQuery.Create(Self);
      fechasSubidaBajada.Connection := connection.zConnection;

      IdPeriodosGuardias.Active := False;
      IdPeriodosGuardias.SQL.Clear;
      IdPeriodosGuardias.SQL.Text := 'select ' +
                                  '   npi.IdPeriodosGuardia, ' +
                                  '   ng.TituloGuardia ' +
                                  'from nuc_personalimss npi ' +
                                  'inner join nom_periodosguardia npg ' +
                                  'on (npg.IdPeriodosGuardia = npi.IdPeriodosGuardia) ' +
                                  'inner join nom_guardia ng ' +
                                  'on (ng.IdGuardia = npg.IdGuardia) ' +
                                  'where ' +
                                  '   (npi.IdPersonal = :IdPersonal) and ' +
                                  '   (npi.IdPeriodosGuardia is not null) and ' +
                                  '   (npi.IdPeriodosGuardia <> :IdPeriodosGuardia) ' +
                                  'group by npi.IdPeriodosGuardia';

      IdPeriodosGuardias.Params.ParamByName('IdPersonal').AsInteger := zqryIdPersonal.FieldByName('IdPersonal').AsInteger;
      IdPeriodosGuardias.Params.ParamByName('IdPeriodosGuardia').AsInteger := ID_GuardiaPeriodo;
      IdPeriodosGuardias.Open;

      fechaMayor := parametroFechaSubida;
      hayFechaMayor := False;

      IdPeriodosGuardias.First;
      while Not IdPeriodosGuardias.Eof do
      begin
        //Traer la fecha de Subida y Bajada para revisar si se cruza con la fecha de subida y bajada del empleado seleccionado
        fechasSubidaBajada.Active := False;
        fechasSubidaBajada.SQL.Clear;
        fechasSubidaBajada.SQL.Text := 'select ' +
                                      '   npi.IdPersonal, ' +
                                      '   npi.FechaMovimiento, ' +
                                      '   npi.FechaReal, ' +
                                      '   npi.TipoMovimiento ' +
                                      'from nuc_personalimss npi ' +
                                      'where ' +
                                      '   (npi.TipoMovimiento = "Reingreso" or ' +
                                      '   npi.TipoMovimiento = "Baja") and ' +
                                      '   npi.IdPersonal = :IdPersonal and ' +
                                      '   npi.IdPeriodosGuardia = :IdPeriodosGuardia ' +
                                      'order by npi.IdPersonalIMSS';
        fechasSubidaBajada.Params.ParamByName('IdPersonal').AsInteger := zqryIdPersonal.FieldByName('IdPersonal').AsInteger;
        fechasSubidaBajada.Params.ParamByName('IdPeriodosGuardia').AsInteger := IdPeriodosGuardias.FieldByName('IdPeriodosGuardia').AsInteger;
        fechasSubidaBajada.Open;

        if fechasSubidaBajada.RecordCount >= 2 then
        begin
          fechasSubidaBajada.First;
          while Not fechasSubidaBajada.Eof do
          begin
            if fechasSubidaBajada.FieldByName('TipoMovimiento').AsString = 'Reingreso' then
            begin
              fechaSubida := DateToStr(fechasSubidaBajada.FieldByName('FechaMovimiento').AsDateTime);
            end else if fechasSubidaBajada.FieldByName('TipoMovimiento').AsString = 'Baja' then
            begin
              fechaBajada := DateToStr(fechasSubidaBajada.FieldByName('FechaMovimiento').AsDateTime);
              break;
            end;

            fechasSubidaBajada.Next;
          end;

          if (StrToDate(parametroFechaSubida) >= StrToDate(fechaSubida)) and (StrToDate(parametroFechaSubida) <= StrToDate(fechaBajada)) then
          begin
            if (StrToDate(fechaBajada) >= StrToDate(FechaMayor)) then
            begin
              hayFechaMayor := True;
              fechaMayor := fechaBajada;
              TituloGuardia := IdPeriodosGuardias.FieldByName('TituloGuardia').AsString;
            end;
          end;
        end;

        IdPeriodosGuardias.Next;
      end;

      if (StrToDate(fechaMayor) >= StrToDate(parametroFechaSubida)) and (hayFechaMayor) then
      begin
        nuevaFechaSubida := DateToStr(IncDay(StrToDate(fechaMayor)));
        MessageDlg('El empleado: ' + nombreEmpleado + ' con Ficha: ' + sIdEmpleado + ' tiene fecha de bajada el: ' + fechaMayor + ' en la guardia: ' +
        TituloGuardia + '. La fecha de subida se cambiará para el: ' + nuevaFechaSubida, mtInformation, [mbOk], 0);

        //Cambiar la fecha de subida del empleado, para que no haya equivocaciones con las otras guardias en cuanto a la fecha de subida del empleado
        with connection.QryBusca do
        begin
          Active := False;
          SQL.Clear;
          SQL.Text := 'update guardiasmovtos ' +
                     '   set dFechaSubida = :dFechaSubida ' +
                     'where ' +
                     '   sidempleado = :sidempleado and ' +
                     '   iIdGuardia = :iIdGuardia and '   +
                     '   ID_GuardiaPeriodo = :guardiaPeriodo and ' +
                     '   sNumeroOrden = :NumeroOrden';
          Params.ParamByName('dFechaSubida').AsDate      := StrToDate(nuevaFechaSubida);
          Params.ParamByName('sidempleado').AsString     :=       sIdEmpleado;
          Params.ParamByName('iIdGuardia').AsInteger     :=        iIdGuardia;
          Params.ParamByName('guardiaPeriodo').AsInteger := ID_GuardiaPeriodo;
          Params.ParamByName('NumeroOrden').AsString     :=      sNumeroOrden;

          ExecSQL;
        end;
        refFechaSubida := nuevaFechaSubida;

        Result := True;
      end
      else
        Result := False;
    finally
      zqryIdPersonal.Destroy;
      IdPeriodosGuardias.Destroy;
      fechasSubidaBajada.Destroy;
    end;
  except
    on e : exception do
    begin
      MessageDlg(e.Message, mtWarning, [mbOk], 0);
    end;
  end;
end;

procedure TfrmEmpleadosGuardias.cambio_estado;
begin
  if zqrySeguimientoPersonal.state in [dsInsert,dsEdit] then
  begin
    TipoMovimiento.Enabled            :=  True;
    GrupoSalir.Enabled                :=  True;
    RegresoLabores.Enabled            :=  True;
    dxBarButton1.Enabled              := False;
    dxBarButton2.Enabled              := False;
    dxBarButton3.Enabled              :=  True;
    dxBarButton4.Enabled              :=  True;
    dxBarButton5.Enabled              := False;
    dxBarButton6.Enabled              := False;
    dxBarButton7.Enabled              := False;
    dxBarButton8.Enabled              := False;
  end
  else if zqrySeguimientoPersonal.state in [dsBrowse] then
  begin
    TipoMovimiento.Enabled            := False;
    GrupoSalir.Enabled                := False;
    RegresoLabores.Enabled            := False;
    dxBarButton1.Enabled              :=  true;
    dxBarButton2.Enabled              :=  true;
    dxBarButton3.Enabled              :=  true;
    dxBarButton4.Enabled              :=  true;
    dxBarButton5.Enabled              :=  true;
    dxBarButton6.Enabled              :=  true;
    dxBarButton7.Enabled              :=  true;
    dxBarButton8.Enabled              :=  true;
  end;
end;
procedure TfrmEmpleadosGuardias.CantidaddePersonalAbordo1Click(Sender: TObject);
var
  QrDatos:TzReadOnlyQuery;
  QrDatos1:TzReadOnlyQuery;
  sFrente : string;
begin
  QrDatos:=TzReadOnlyQuery.Create(self);
  QrDatos1:=TzReadOnlyQuery.Create(self);
  try
    QrDatos.connection:=Connection.zConnection;
    QrDatos1.connection:=Connection.zConnection;
    QrDatos.SQL.Add('select gm.ID_GuardiaPeriodo, o.sNumeroOrden, '+
                    '0 as Numproy, '+
                    'gd.sIdPlataforma, '+
                    'gd.sIdPernocta, '+
                    'gm.sObservaciones '+
                    'from ordenesdetrabajo o '+
                    'INNER JOIN guardias gd on (gd.sStatusGuardia="Activo" and o.sNumeroOrden = gd.sNumeroOrdenAux) '+
                    'inner JOIN guardiasmovtos gm ON (o.sContrato = gm.sContrato and gm.iIdGuardia = gd.sIdFolio '+
                    'and gm.sStatus="Activo" and gm.ID_GuardiaPeriodo = gd.ID_PeriodoGuardia ) '+
                    'where (o.sContrato =:contrato) group by gd.sNumeroOrden, gm.ID_GuardiaPeriodo ORDER BY o.sNumeroOrden ASC');
    QrDatos.ParamByName('contrato').AsString := global_contrato;
    QrDatos.Open;
    RxPerAbordo.Active := True;
    RxPerAbordo.EmptyTable;
    RxPernAbordo.EmptyDataSet;

    sFrente  := '';
    RxPlaAbordo.EmptyDataSet;   //la primer  consulta trae todas  las  guardias  entonces
    //solo  hay  que  sacar en la siguiente  cuales  sin de la misma plataforma pero a que  guardia pertenece
    //no  se  si  me  eplique jejejejeje.

    while not QrDatos.Eof do
    begin
      if sFrente <>  QrDatos.FieldByName('snumeroorden').AsString then
      begin
          RxPerAbordo.Insert;
          RxPerAbordo.FieldByName('descripcion').AsString:= QrDatos.FieldByName('snumeroorden').AsString;
          RxPerAbordo.FieldByName('proyecto').AsString   := QrDatos.FieldByName('snumeroorden').AsString;
          RxPerAbordo.FieldByName('cantidad').AsInteger   := QrDatos.FieldByName('NumProy').AsInteger;
          RxPerAbordo.FieldByName('sObservaciones').AsString := QrDatos.FieldByName('sObservaciones').AsString;

          RxPerAbordo.Post;
          sFrente := QrDatos.FieldByName('snumeroorden').AsString;
      end;

      {$REGION 'PLATAFORMAS'}
      QrDatos1.Active:=False;
      QrDatos1.SQL.Clear;
      QrDatos1.SQL.Add('Select' + #10 +
                        'pt.sDescripcion as Descripcion_Plataforma,' + #10 +
                        'COUNT(pt.sDescripcion) as NumPla,' + #10 +
                        'gm.sNumeroOrden,' + #10 +
                        'gm.sObservaciones as LetraGuardia' + #10 +
                      'From' + #10 +
                        'nuc_personalimss as pims' + #10 +
                      'left join' + #10 +
                        'nom_nomina nom' + #10 +
                      'on (nom.IdPeriodosGuardia = :IdPeriodosGuardia)' + #10 +
                      'left join' + #10 +
                        'nom_nominapersonal as np' + #10 +
                      'on (np.IdNomina = nom.IdNomina and np.IdPersonal = pims.IdPersonal)' + #10 +
                      'Inner join' + #10 +
                        'nuc_personal as p' + #10 +
                      'on (p.IdPersonal = pims.idPersonal)' + #10 +
                      'inner join' + #10 +
                        'guardiasmovtos gm' + #10 +
                      'on(gm.ID_GuardiaPeriodo = pims.IdPeriodosGuardia and gm.sIdEmpleado = p.codigopersonal)' + #10 +
                      'Inner join' + #10 +
                        'plataformas pt' + #10 +
                      'on (pt.sIdPlataforma = gm.sIdPlataforma)' + #10 +
                      'Where' + #10 +
                        '(:TipoMovimiento = -1 or (:TipoMovimiento <> -1 and pims.tipoMovimiento = :TipoMovimiento )) and' + #10 +
                        '(:IdPeriodosGuardia = -1 or (:IdPeriodosGuardia <> -1 and pims.idPeriodosguardia = :IdPeriodosGuardia)) and' + #10 +
                        '(:Pagados = -1 or (:Pagados <> -1 and IF(:Pagados = "Si", NOT ISNULL(np.IdFormaPago), ISNULL(np.IdFormaPago))))' + #10 +
                      'Group By Descripcion_Plataforma');

      QrDatos1.ParamByName('TipoMovimiento').AsString  := 'Reingreso';
      QrDatos1.ParamByName('Pagados').AsString  := 'No';
      QrDatos1.ParamByName('IdPeriodosGuardia').AsInteger  := QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger;
      QrDatos1.Open;
      while not QrDatos1.Eof do
      begin
        RxPlaAbordo.Insert;
        RxPlaAbordo.FieldByName('descripcion').AsString  :=QrDatos1.FieldByName('Descripcion_Plataforma').AsString;
        RxPlaAbordo.FieldByName('cantidad').AsInteger    :=QrDatos1.FieldByName('NumPla').AsInteger;
        RxPlaAbordo.FieldByName('proyecto').AsString     :=QrDatos.FieldByName('snumeroorden').AsString;
        RxPlaAbordo.FieldByName('LetraGuardia').AsString := QrDatos1.FieldByName('LetraGuardia').AsString;
        RxPlaAbordo.Post;
        QrDatos1.Next;
      end;
      {$ENDREGION}

      {$REGION 'PERNOTAS'}
      QrDatos1.Active:=False;
      QrDatos1.SQL.Clear;
      QrDatos1.SQL.Add('Select' + #10 +
                          'pr.sDescripcion as Descripcion_Pernocta,' + #10 +
                          'COUNT(pims.IdPersonal) as NumPer,' + #10 +
                          'gm.sNumeroOrden,' + #10 +
                          'gm.sObservaciones as LetraGuardia' + #10 +
                        'From' + #10 +
                          'nuc_personalimss as pims' + #10 +
                        'left join' + #10 +
                          'nom_nomina nom' + #10 +
                        'on (nom.IdPeriodosGuardia = :IdPeriodosGuardia)' + #10 +
                        'left join' + #10 +
                          'nom_nominapersonal as np' + #10 +
                        'on (np.IdNomina = nom.IdNomina and np.IdPersonal = pims.IdPersonal)' + #10 +
                        'Inner join' + #10 +
                          'nuc_personal as p' + #10 +
                        'on (p.IdPersonal = pims.idPersonal)' + #10 +
                        'inner join' + #10 +
                          'guardiasmovtos gm' + #10 +
                        'on(gm.ID_GuardiaPeriodo = pims.IdPeriodosGuardia and gm.sIdEmpleado = p.codigopersonal)' + #10 +
                        'Inner join' + #10 +
                          'pernoctan pr' + #10 +
                        'on (pr.sIdPernocta = gm.sIdPernocta)' + #10 +
                        'Where' + #10 +
                          '(:TipoMovimiento = -1 or (:TipoMovimiento <> -1 and pims.tipoMovimiento = :TipoMovimiento )) and' + #10 +
                          '(:IdPeriodosGuardia = -1 or (:IdPeriodosGuardia <> -1 and pims.idPeriodosguardia = :IdPeriodosGuardia)) and' + #10 +
                          '(:Pagados = -1 or (:Pagados <> -1 and IF(:Pagados = "Si", NOT ISNULL(np.IdFormaPago), ISNULL(np.IdFormaPago))))' + #10 +
                        'Group By Descripcion_Pernocta');

      QrDatos1.ParamByName('TipoMovimiento').AsString  := 'Reingreso';
      QrDatos1.ParamByName('Pagados').AsString  := 'No';
      QrDatos1.ParamByName('IdPeriodosGuardia').AsInteger  := QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger;
      QrDatos1.Open;

      QrDatos1.Open;
      while not QrDatos1.Eof do
      begin
        RxPernAbordo.Insert;
        RxPernAbordo.FieldByName('descripcion').AsString := QrDatos1.FieldByName('Descripcion_Pernocta').AsString;
        RxPernAbordo.FieldByName('cantidad').AsInteger   := QrDatos1.FieldByName('NumPer').AsInteger;
        RxPernAbordo.FieldByName('proyecto').AsString    := QrDatos.FieldByName('snumeroorden').AsString;
        RxPernAbordo.FieldByName('LetraGuardia').AsString:= QrDatos1.FieldByName('LetraGuardia').AsString;
        RxPernAbordo.Post;

        RxPerAbordo.First;
        while not RxPerAbordo.Eof do
        begin
          if RxPerAbordo.FieldByName('proyecto').AsString = QrDatos.FieldByName('snumeroorden').AsString then
          begin
              RxPerAbordo.Edit;
              RxPerAbordo.FieldByName('cantidad').AsInteger := RxPerAbordo.FieldByName('cantidad').AsInteger + QrDatos1.FieldByName('NumPer').AsInteger;
              RxPerAbordo.Post;
          end;
          RxPerAbordo.Next;
        end;
        QrDatos1.Next;
      end;
      {$ENDREGION}
      QrDatos.Next;
    end;

    frxReporte.LoadFromFile(Global_Files +global_miReporte +'_Personal_Abordo.fr3') ;
    frxReporte.ShowReport();
  finally
    QrDatos.destroy;
    RxPernAbordo.Filtered := False;
    RxPlaAbordo.Filtered  := False;
  end;
end;

procedure TfrmEmpleadosGuardias.CapturarHorasExtras1Click(Sender: TObject);
begin
  try
    if zqryEmpleados.Active then    
      zqryEmpleados.First;
    if zqryEmpleados.active and (zqryEmpleados.RecordCount > 0) then
    begin
      Application.CreateForm(TFrmHE, FrmHe);
      FrmHE.dsEmpleados.DataSet := zqryEmpleados;
      FrmHE.Inicio := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
      FrmHE.Termino := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
      FrmHE.ShowModal;
    end else
      MessageDlg('No hay personal cargado en la guardia seleccionada.', mtConfirmation, [mbOK], 0);
  finally
    FrmHE.dsEmpleados.DataSet := nil;
  end;
end;

procedure TfrmEmpleadosGuardias.CargarGuardiaAnterior1Click(Sender: TObject);
var
   idMovto : integer;
begin
  //Buscamos si existe una guardia anterior..
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select *, iNumeroGuardia as Guardia from nom_guardia where codigoguardia =:codigo '+
                              'and iNumeroGuardia < :numero order by iNumeroGuardia');
  connection.QryBusca.ParamByName('codigo').AsString  := zqryGuardiasMovtos.FieldByName('codigoguardia').AsString;
  connection.QryBusca.ParamByName('numero').AsInteger := zqryGuardiasMovtos.FieldByName('iNumeroGuardia').AsInteger;
  connection.QryBusca.Open;

  connection.QryBusca.Last;
  if connection.QryBusca.RecordCount > 0 then
  begin
    //Ahora buscamos el personal que integra la guardia.
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select * from guardiasmovtos where iIdGuardia =:Guardia ');
    connection.QryBusca2.ParamByName('guardia').AsInteger  := connection.QryBusca.FieldByName('idGuardia').AsInteger;
    connection.QryBusca2.Open;

    if connection.QryBusca2.RecordCount = 0 then
    begin
      messageDLG('La guardia Anterior "'+ IntTostr(zqryGuardiasMovtos.FieldByName('iNumeroGuardia').AsInteger)+'-'+zqryGuardiasMovtos.FieldByName('codigoguardia').AsString+'. No contiene empleados.', mtInformation, [mbOk], 0);
      exit;
    end
    else
    begin
      connection.QryBusca2.First;
      while not connection.QryBusca2.Eof do
      begin
        //Buscamos si el personal y existe en la guardia.
        connection.zcommand.Active := False;
        connection.zcommand.SQL.Clear;
        connection.zcommand.SQL.Add('select * from guardiasmovtos where ID_GuardiaPeriodo =:guardiap and sIdEmpleado =:empleado ');
        connection.zcommand.ParamByName('empleado').AsString  := connection.QryBusca2.Fieldbyname('sIdEmpleado').asString;
        connection.zcommand.ParamByName('guardiap').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
        connection.zcommand.Open;

        if connection.zcommand.RecordCount = 0 then
        begin
          //Aqui consltamos el Id de los movimientos de guardias
          connection.zcommand.Active := False;
          connection.zcommand.SQL.Clear;
          connection.zcommand.SQL.Add('select max(iIdGuardiaMovtos) as maximo from guardiasmovtos ');
          connection.zcommand.Open;

          if (connection.zcommand.RecordCount) > 0 then
            idMovto := connection.zcommand.Fieldbyname('maximo').asInteger + 1
          else
            IdMovto := 1;

          //Ahora insertamos los datos en la tabla de guardiasmovtos
          connection.zcommand.Active := False;
          connection.zcommand.SQL.Clear;
          connection.zcommand.SQL.Add('insert into guardiasmovtos (iIdGuardiaMovtos, iIdGuardia, sIdEmpleado, ' +
                     'dFechaSubida, dFechaBajada, dFechaSubidaReal, dFechaBajadaReal, sObservaciones, sNumeroOrden, sContrato, sIdPlataforma, sIdPernocta, '+
                     'sStatus, ID_GuardiaPeriodo, iId_Puesto, sHoraSubida) '+
                     'values (:Id, :Guardia, :IdEmpleado, :FechaSubida, :FechaBajada, :FechaSubidaReal, :FechaBajadaReal, :Observaciones, :Orden, :contrato, '+
                     ':IdPlataforma, :IdPecnotac, :Status, :GuardiaPeriodo, :Id_Puesto, :sHoraSubida)');
          connection.zcommand.ParamByName('Id').AsInteger             := idMovto;
          connection.zcommand.ParamByName('GuardiaPeriodo').AsInteger := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
          connection.zcommand.ParamByName('Guardia').AsInteger        := zqryGuardiasMovtos.FieldByName('sIdFolio').AsInteger;
          connection.zcommand.ParamByName('IdEmpleado').AsString      := connection.QryBusca2.FieldValues['sIdEmpleado'];
          connection.zcommand.ParamByName('FechaSubida').AsDate       := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
          connection.zcommand.ParamByName('FechaBajada').AsDate       := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
          connection.zcommand.ParamByName('FechaSubidaReal').AsDate   := zqryGuardiasMovtos.FieldByName('dFechaInicial').AsDateTime;
          connection.zcommand.ParamByName('FechaBajadaReal').AsDate   := zqryGuardiasMovtos.FieldByName('dFechaFinal').AsDateTime;
          connection.zcommand.ParamByName('Observaciones').AsString   := zqryGuardiasMovtos.FieldByName('sObservaciones').AsString;
          connection.zcommand.ParamByName('IdPlataforma').AsString    := connection.QryBusca2.Fieldbyname('sIdPlataforma').AsString; //zqryGuardiasMovtos.FieldByName('sIdPlataforma').AsString;
          connection.zcommand.ParamByName('Orden').AsString           := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
          connection.zcommand.ParamByName('IdPecnotac').AsString      := connection.QryBusca2.Fieldbyname('sIdPernocta').AsString;
          connection.zcommand.ParamByName('contrato').AsString        := global_contrato;
          connection.zcommand.ParamByName('Status').AsString          := 'Activo';
          connection.zcommand.ParamByName('Id_Puesto').asinteger      := connection.QryBusca2.FieldByName('iId_Puesto').asinteger;
          connection.zcommand.ParamByName('sHoraSubida').asString      := connection.QryBusca2.FieldByName('sHoraSubida').asString;
          connection.zcommand.ExecSQL;
          //Para actualizar el status en la tabla de empleados
          connection.zcommand.Active := False;
          connection.zcommand.SQL.Clear;
          connection.zcommand.SQL.Add('update empleados set sStatusPersonal = "Agregado" where sIdEmpleado= :IdEmpleado');
          connection.zcommand.ParamByName('IdEmpleado').AsString        := connection.QryBusca2.Fieldbyname('sIdEmpleado').asString;
          connection.zcommand.ExecSQL;
        end;
        connection.QryBusca2.Next;
      end;
      zqryEmpleados.Refresh;
      MSG_OK('Personal guardado con éxito');
      zqryGuardiasMovtos.Refresh;
    end;
  end
  else
  begin
    messageDLG(' No existe guardia anterior "'+zqryGuardiasMovtos.FieldByName('codigoguardia').AsString+'"', mtInformation, [mbOk], 0);
  end;
end;

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;
  Result := Copy(Cadena, 1, Pos('|', Cadena) -1);
end;

procedure TfrmEmpleadosGuardias.frxcontratosGetValue(const VarName: string;
var Value: Variant);
var
   edad : integer;
begin
  if CompareText(VarName, 'Puesto') = 0 then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select titulocargo as sPuesto from nuc_cargo Where IdCargo = :iId_Puesto') ;
    connection.QryBusca.Params.ParamByName('iId_Puesto').Value := zqryEmpleados.FieldValues['iId_Puesto'] ;
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sPuesto').AsString
    else
      Value := '*';
  end;

  if CompareText(VarName, 'Nacionalidad') = 0 then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sNacionalidad from rh_nacionalidades Where iIdNacionalidad = :iIdNacionalidad') ;
    connection.QryBusca.Params.ParamByName('iIdNacionalidad').Value := zqryEmpleados.FieldValues['iIdNacionalidad'] ;
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sNacionalidad').AsString
    else
      Value := '*';
  end;

  if CompareText(VarName, 'HorarioLaboral') = 0 then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sDescripcion from rh_horariolaboral Where iIdhorario = :iIdhorario') ;
    connection.QryBusca.Params.ParamByName('iIdhorario').Value := zQEmpleados.FieldValues['iIdhorario'] ;
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sDescripcion').AsString
    else
      Value := '*';
  end;

  if CompareText(VarName,'PeriododePago') = 0 then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sDescripcion from rh_periodopagos Where iIdPeriodo = :iIdPeriodo') ;
    connection.QryBusca.Params.ParamByName('iIdPeriodo').Value := zqryEmpleados.FieldValues['iIdPeriodo'] ;
    connection.QryBusca.Open;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sDescripcion').AsString
    else
      Value := '*';
  end;

  if CompareText(VarName,'Edad') = 0 then
  begin
    if frx_reporteEmpleados.DataSet.Active then
      edad:= YearsBetween(frx_reporteEmpleados.DataSet.FieldByName('dFechaNacimiento').AsDateTime,Now)//yearof(date) - yearof(zqryEmpleados.FieldByName('dFechaNacimiento').AsDateTime);
    else
      edad:= yearsbetween(zqryEmpleados.FieldByName('dFechaNacimiento').AsDateTime, Now);
    Value := edad;
  end;

  if CompareText(VarName,'Contratacion_DiaC') = 0 then
  begin
    Value := FormatDateTime('dd', zqHistorial.FieldByName('dFechaInicio').AsDateTime);
  end;

  if CompareText(VarName,'Contratacion_MesC') = 0 then
  begin
    Value := esMes(StrToInt(FormatDateTime('mm', zqHistorial.FieldByName('dFechaInicio').AsDateTime)));
  end;

  if CompareText(VarName,'Contratacion_AnyoC') = 0 then
  begin
    Value := FormatDateTime('yy', zqHistorial.FieldByName('dFechaInicio').AsDateTime);
  end;

  if VarName = 'NominaNeto' then
  begin
    Value := NetoPagar;
  end;

  if CompareText(VarName,'Sueldo') = 0 then
  begin
   Value := {xNumerosToLletres(sueldot}zqEmpleados.FieldByName('dSueldo').AsCurrency{)};
  end;

  if CompareText(VarName,'FechaInicialP') = 0 then
  begin
    Value := xNumerosToLletres(zqEmpleados.FieldByName('dSueldo').AsCurrency);
  end;
end;
procedure TfrmEmpleadosGuardias.actualizar2;
begin
  ZQROrdenes.Refresh;
  ZQRGuardias.Refresh;
  ZQREmpleados.Refresh;
end;
procedure TfrmEmpleadosGuardias.QuitarPersonalnoconfirmado1Click(
  Sender: TObject);
begin
  if zqryGuardiasMovtos.fieldvalues['Autorizar'] = 'SI' then
  begin
     msg_w('La guardia ya ha sido autorizada, no se permiten realizar modificaciones');
     exit;
  end;
  Quitar_PNoCofirmado;
end;

procedure TfrmEmpleadosGuardias.Quitar_PNoCofirmado;
{Creo: Rafael Descripcion: Bloque creado para quitar al personal no confirmado}
begin
  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select * from guardiasmovtos '+
                               'where sConfirmado="NO" and iIdGuardia = :Guardia '+
                                 'and ID_GuardiaPeriodo = :GuardiaPeriodo '+
                                 'and sNumeroOrden = :NumeroOrden');
  connection.QryBusca2.ParamByName('Guardia').AsInteger         := StrToInt(zqryGuardiasMovtos.FieldByName('sIdFolio').AsString);
  connection.QryBusca2.ParamByName('GuardiaPeriodo').AsInteger  := zqryGuardiasMovtos.FieldByName('ID_PeriodoGuardia').AsInteger;
  connection.QryBusca2.ParamByName('NumeroOrden').AsString      := zqryGuardiasMovtos.FieldByName('sNumeroOrden').AsString;
  connection.QryBusca2.Open;
  if connection.QryBusca2.RecordCount > 0 then
  begin
    while not connection.QryBusca2.Eof do
    begin
      //Quitamos el registro de guardias movimientos
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('delete from guardiasmovtos where ((sIdEmpleado = :sIdEmpleado) and (sNumeroOrden = :sNumeroOrden) and (ID_GuardiaPeriodo = :ID_GuardiaPeriodo) and (iIdGuardia = :iIdGuardia))');
      connection.QryBusca.ParamByName('sIdEmpleado').AsString         := connection.QryBusca2.FieldByName('sIdEmpleado').AsString;
      connection.QryBusca.ParamByName('sNumeroOrden').AsString        := connection.QryBusca2.FieldByName('sNumeroOrden').AsString;
      connection.QryBusca.ParamByName('ID_GuardiaPeriodo').AsInteger  := connection.QryBusca2.FieldByName('ID_GuardiaPeriodo').AsInteger;
      connection.QryBusca.ParamByName('iIdGuardia').AsInteger         := connection.QryBusca2.FieldByName('iIdGuardia').AsInteger;
      connection.QryBusca.ExecSQL;

      //Actualizar el estatus de empleados
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('update empleados set sStatusPersonal = "Pendiente" where sIdEmpleado= :IdEmpleado');
      connection.QryBusca.ParamByName('IdEmpleado').AsString        := connection.QryBusca2.Fieldbyname('sIdEmpleado').asString;
      connection.QryBusca.ExecSQL;
      connection.QryBusca2.Next;
    end;
    //Actualizamos los registros
    posicion:= zqryOrdenes.GetBookmark;
    posicion_guardias:= zqryGuardiasMovtos.GetBookmark;
    actualizar;
    zqryOrdenes.GotoBookmark(posicion);
    zqryOrdenes.FreeBookmark(posicion);
    zqryGuardiasMovtos.GotoBookmark(posicion_guardias);
    zqryGuardiasMovtos.FreeBookmark(posicion_guardias);
    MSG_OK('El personal ha sido quitado de la guardia con éxito');
  end else MSG_OK('No existe personal no confirmado');
end;

end.
