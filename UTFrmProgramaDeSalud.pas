unit UTFrmProgramaDeSalud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI, AcroPDFLib_TLB, frxPreview,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, cxClasses, dxRibbon,
  dxSkinsdxBarPainter, dxBar, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  cxSchedulerRibbonStyleEventEditor, Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  cxSchedulerTreeListBrowser, dxSkinscxSchedulerPainter, DateUtils,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, frm_connection,
  ExtCtrls, cxDBEdit, UControlExcepciones, DBClient, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxDBLabel, Func_Genericas, cxInplaceContainer,
  cxVGrid, StdCtrls, cxButtons, cxScrollBox, cxSpinEdit, frm_repositorio, cxMemo,
  cxSSheet, ComCtrls, dxCore, cxDateUtils, cxCalendar, UnitExcel, ExcelXP, ComObj, Excel2000, global, JPEG,
  cxGridChartView, frxClass, frxDBSet, ActnPopup, frxExportPDF,
  cxGridDBChartView, cxSchedulerDBStorage, dxmdaset, Mask, DBCtrls, cxListBox,
  cxSplitter, cxPCdxBarPopupMenu, dxRibbonCustomizationForm;

  {$REGION'CLASES'}
type
  TEvaluacion = class(TObject)
    objetosCajasTexto : array of TcxTextEdit;
    LabelsIndicativos : array of TcxLabel;
    LabelsMedidas     : array of TcxLabel;

    procedure Redimencionar(Dimencion : Integer);
  end;

type
  TAntidoping = class(TObject)
    labelsIndicativosAntidoping : array of TcxLabel;
    comboBoxAntidoping       : array of TcxComboBox;

    procedure RedimensionarArraysAntidoping(Dimension : Integer);
  end;

type
  TAntecedentes = class(TObject)
    checkBoxAntecedentes : array of TcxCheckBox;
    labelEspecificar     :    array of TcxLabel;
    cajaTextoEspecificar : array of TcxTextEdit;

    procedure RedimensionarArrayCheckBox(Dimension : Integer);
  end;

type
  TDocumentos = class(TObject)
    labelIndicativoDocumento  :      array of TcxLabel;
    botonArchivo              :     array of TcxButton;
    labelIndicativoInicioVigencia  : array of TcxLabel;
    calendarioInicioVigencia    : array of TcxDateEdit;
    labelIndicativoTerminoVigencia : array of TcxLabel;
    calendarioTerminoVigencia   : array of TcxDateEdit;
    palomita : array of TcxButton;
    botonEliminarRegistroDocumento : array of TcxButton;

    procedure RedimensionarArraysDocumentos(Dimension : Integer);
  end;

type
  TVigenciasDocumentos = class(TObject)
    labelVigenciaDocumento :    array of TcxLabel;
    spinNumeroDiasAviso    : array of TcxSpinEdit;
    comboRecursividad      : array of TcxComboBox;
    labelAntesDeVencimiento :   array of TcxLabel;

    procedure RedimensionarArraysVigenciasDocumentos(Dimension : Integer);
  end;

type
  THistorial = class(TObject)
    labelTituloExamen : array of TcxLabel;
    labelTipoExamen   : array of TcxLabel;
    labelFechaExamen  : array of TcxLabel;
    labelCantidad     : array of TcxLabel;
    checkMostrar      : array of TcxCheckBox;

    procedure RedimensionarArraysHistorial(Dimension : Integer);
  end;

//Clase para la pestana Bajas
type
  TBajas = class
    idPersonal     :Integer;
    ficha          : string;
    NombreCompleto : string;
    Puesto         : string;
    plataforma     : string;
  end;

type TTipoDFecha=(fdkCreado, fdkUltimaModificacion, fdkUltimoAcceso);
type TFileDateKind=(fdkCreated, fdkLastModified, fdkLastAccessed);
  {$ENDREGION}

type
  TFrmProgramaDeSalud = class(TForm)
    tdxFechasProgramadas: TdxRibbonTab;
    RibbonMenuPrincipal: TdxRibbon;
    barManagerManagerProgramaDeSalud: TdxBarManager;
    dxToolBarManagerDocumentos1Bar: TdxBar;
    btnProgramarFecha: TdxBarLargeButton;
    btnMarcarRealizado: TdxBarLargeButton;
    pageContenedorPrincipal: TcxPageControl;
    pageFechasProgramadas: TcxTabSheet;
    schedulerFechas: TcxScheduler;
    fondo: TcxStyleRepository;
    cxstylFondo: TcxStyle;
    dsPersonal: TDataSource;
    zqryPersonal: TZQuery;
    zqryProgramaRecursivo: TZQuery;
    btnEliminarFechaProgramada: TdxBarLargeButton;
    dxToolBarManagerManagerProgramaDeSaludBar1: TdxBar;
    btnDesmarcarRealizado: TdxBarLargeButton;
    tdxExamenMedico: TdxRibbonTab;
    pageExamenMedico: TcxTabSheet;
    dxBarSubItem1: TdxBarSubItem;
    dxToolBarManagerManagerProgramaDeSaludBar2: TdxBar;
    btnGuardarExamenMedico: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    btnCancelarExamenMedico: TdxBarLargeButton;
    vistaDatosEmpleado: TcxGridDBTableView;
    nivelDatosEmpleado: TcxGridLevel;
    gridDatosEmpleado: TcxGrid;
    tcxDatosEmpleadoFicha: TcxGridDBColumn;
    tcxDatosEmpleadoNombre: TcxGridDBColumn;
    tcxDatosEmpleadoCategoria: TcxGridDBColumn;
    tcxDatosEmpleadoTelefono: TcxGridDBColumn;
    tcxDatosEmpleadoGrupoSanguineo: TcxGridDBColumn;
    tcxDatosEmpleadoPlataforma: TcxGridDBColumn;
    pageTipoExamen: TcxPageControl;
    pageFormularioExamenMedico: TcxTabSheet;
    pageAntidoping: TcxTabSheet;
    vistaCatalogoExamenMedico: TcxGridDBTableView;
    nivelCatalogoExamenMedico: TcxGridLevel;
    gridCatalogoExamenMedico: TcxGrid;
    tcxCodigo: TcxGridDBColumn;
    tcxDescripcion: TcxGridDBColumn;
    tcxValorMinimo: TcxGridDBColumn;
    tcxValorMaximo: TcxGridDBColumn;
    tcxMedida: TcxGridDBColumn;
    panelScroll: TcxScrollBox;
    dxToolBarManagerManagerProgramaDeSaludBar3: TdxBar;
    btnAgregarCatalogoExamenMedico: TdxBarLargeButton;
    btnEditarCatalogoExamenMedico: TdxBarLargeButton;
    panelFormularioCatalogoExamenMedico: TPanel;
    zqryCatalogoExamenMedico: TZQuery;
    dsCatalogoExamenMedico: TDataSource;
    cxlbl14: TcxLabel;
    cxlbl15: TcxLabel;
    cxlbl16: TcxLabel;
    cxlbl17: TcxLabel;
    cxlbl18: TcxLabel;
    edtCodigo: TcxDBTextEdit;
    edtDescripcion: TcxDBTextEdit;
    edtMedida: TcxDBTextEdit;
    spinValorMinimo: TcxDBSpinEdit;
    spinValorMaximo: TcxDBSpinEdit;
    btnGuardarCatalogoExamenMedico: TcxButton;
    btnCancelarCatalogoExamenMedico: TcxButton;
    btnEliminarCatalogoExamenMedico: TdxBarLargeButton;
    panelScrollAntidoping: TcxScrollBox;
    vistaAntidoping: TcxGridDBTableView;
    nivelAntidoping: TcxGridLevel;
    gridAntidoping: TcxGrid;
    tcxAntidopingCodigo: TcxGridDBColumn;
    tcxAntidopingDescripcion: TcxGridDBColumn;
    panelInsertarCatalogoAntidoping: TPanel;
    cxlbl19: TcxLabel;
    cxlbl20: TcxLabel;
    edtCodigoAntidoping: TcxDBTextEdit;
    edtDescripcionAntidoping: TcxDBTextEdit;
    btnGuardarCatalogoAntidoping: TcxButton;
    btnCancelarCatalogoAntidoping: TcxButton;
    zqryExamenMedico: TZQuery;
    zqryExamenMedicoUPDATE: TZQuery;
    cxlbl4: TcxLabel;
    estiloProgramados: TcxStyle;
    estiloRealizados: TcxStyle;
    estiloVencidas: TcxStyle;
    edtGrupoSanguineo: TcxDBTextEdit;
    zqryPersonalUPDATE: TZQuery;
    dsPersonalUPDATE: TDataSource;
    pageAntecedentes: TcxTabSheet;
    panelScrollAntecedentes: TcxScrollBox;
    vistaAntecedentes: TcxGridDBTableView;
    nivelAntecedentes: TcxGridLevel;
    gridAntecedentes: TcxGrid;
    tcxAntecedentesCodigo: TcxGridDBColumn;
    tcxAntecedentesDescripcion: TcxGridDBColumn;
    zqryCatalogoAntecedentes: TZQuery;
    dsCatalogoAntecedentes: TDataSource;
    panelFormularioAntecedentes: TPanel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    edtCodigoAntecedentes: TcxDBTextEdit;
    edtDescripcionAntecedentes: TcxDBTextEdit;
    btnGuardarCatalogoAntecedentes: TcxButton;
    btnCancelarCatalogoAntecedentes: TcxButton;
    pageObservaciones: TcxTabSheet;
    cxlbl7: TcxLabel;
    dsExamenMedicoUPDATE: TDataSource;
    memoObservaciones: TcxMemo;
    tdxResumenGeneral: TdxRibbonTab;
    pageResumenGeneral: TcxTabSheet;
    ExcelLibro: TcxSpreadSheetBook;
    zqryProgramaRecursivoSELECT: TZQuery;
    zqryCatalogoExamenMedicoCATALOGO: TZQuery;
    zqryProgramaRecursivoSELECT2: TZQuery;
    dxToolBarManagerManagerProgramaDeSaludBar4: TdxBar;
    btnImprimirReporteConFormato: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
    tdxDocumentosMedicos: TdxRibbonTab;
    pageDocumentosMedicos: TcxTabSheet;
    tdxReportes: TdxRibbonTab;
    pageReportes: TcxTabSheet;
    tdxVigencias: TdxRibbonTab;
    pageVigencias: TcxTabSheet;
    tdxHistorial: TdxRibbonTab;
    pageHistorial: TcxTabSheet;
    vistaCatalogoDocumentos: TcxGridDBTableView;
    nivelCatalogoDocumentos: TcxGridLevel;
    gridCatalogoDocumentos: TcxGrid;
    gridEmpleadosDocumentos: TcxGrid;
    vistaEmpleadosDocumentos: TcxGridDBTableView;
    tcx2: TcxGridDBColumn;
    tcx3: TcxGridDBColumn;
    tcx4: TcxGridDBColumn;
    tcx5: TcxGridDBColumn;
    tcx6: TcxGridDBColumn;
    tcx7: TcxGridDBColumn;
    nivelEmpleadosDocumentos: TcxGridLevel;
    panelScrollDocumentos: TcxScrollBox;
    dxToolBarManagerManagerProgramaDeSaludBar5: TdxBar;
    btnGuardarDocumentosMedicos: TdxBarLargeButton;
    btnCancelarDocumentosMedicos: TdxBarLargeButton;
    dxToolBarManagerManagerProgramaDeSaludBar6: TdxBar;
    btnNuevoCatalogoDocumentos: TdxBarLargeButton;
    btnEditarCatalogoDocumentos: TdxBarLargeButton;
    btnEliminarCatalogoDocumentos: TdxBarLargeButton;
    tcxNombreDocumento: TcxGridDBColumn;
    tcxTipoDocumento: TcxGridDBColumn;
    panelCatalogoDocumentos: TPanel;
    cxlbl8: TcxLabel;
    edtCodigoDocumento: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    edtDocumento: TcxDBTextEdit;
    btnGuardarCatalogoDocumentos: TcxButton;
    btnCancelarCatalogoDocumentos: TcxButton;
    zqryCatalogoDocumentosUPDATE: TZQuery;
    tcxCodigoDocumento: TcxGridDBColumn;
    dsCatalogoDocumentosUPDATE: TDataSource;
    ruta: TOpenDialog;
    zqryDoctosXCargoUPDATE: TZQuery;
    dxToolBarManagerManagerProgramaDeSaludBar7: TdxBar;
    btnGuardarVigencias: TdxBarLargeButton;
    btnCancelarVigencias: TdxBarLargeButton;
    pageTipoVigencias: TcxPageControl;
    pageVigenciasDocumentos: TcxTabSheet;
    btnVigenciasAplicarATodos: TdxBarLargeButton;
    btnVigenciasPersonalizado: TdxBarLargeButton;
    panelScrollVigenciasDocumentosTodos: TcxScrollBox;
    dxToolBarManagerManagerProgramaDeSaludBar9: TdxBar;
    btnDocumentosPorCaducar: TdxBarLargeButton;
    panelDocumentosVencidos: TPanel;
    vistaDocumentosPorCaducar: TcxGridDBTableView;
    nivelDocumentosPorCaducar: TcxGridLevel;
    gridDocumentosPorCaducar: TcxGrid;
    tcxVencidosCodigo: TcxGridDBColumn;
    tcxDocumento: TcxGridDBColumn;
    tcxNombre: TcxGridDBColumn;
    tcxPuesto: TcxGridDBColumn;
    tcxVencidosTelefono: TcxGridDBColumn;
    tcxVencidosCorreo: TcxGridDBColumn;
    dsDocumentosVencidosMEMORIA: TDataSource;
    cdDocumentosVencidosMEMORIA: TClientDataSet;
    tcxVencidosInicioVigencia: TcxGridDBColumn;
    tcxVencidosTerminoVigencia: TcxGridDBColumn;
    dxToolBarManagerManagerProgramaDeSaludBar10: TdxBar;
    btnHistorialEmpleado: TdxBarLargeButton;
    panelHistorialEmpleado: TPanel;
    vistaHistorialEmpleados: TcxGridDBTableView;
    nivelHistorialEmpleados: TcxGridLevel;
    gridHistorialEmpleados: TcxGrid;
    tcxHistorialNombre: TcxGridDBColumn;
    tcxHistorialPuesto: TcxGridDBColumn;
    tcxHistorialGrupoSanguineo: TcxGridDBColumn;
    tcxHistorialTelefono: TcxGridDBColumn;
    tcxHistorialCorreo: TcxGridDBColumn;
    zqryHistorialPersonal: TZQuery;
    dsHistorialPersonal: TDataSource;
    nivelGrafica: TcxGridLevel;
    gridGrafica: TcxGrid;
    tcxVencidosIdDoctosxCargo: TcxGridDBColumn;
    tcxVencidosIdPersonal: TcxGridDBColumn;
    tcxVencidosidDocumento: TcxGridDBColumn;
    panelScrollReportes: TcxScrollBox;
    dxToolBarManagerManagerProgramaDeSaludBar11: TdxBar;
    btnReporteExamenMedico: TdxBarLargeButton;
    panelArchivoCaducado: TPanel;
    reporteDocumentoVencido: TfrxReport;
    frxDBDocumentoVencido: TfrxDBDataset;
    popupDocumentoVencido: TPopupMenu;
    btnExportar: TMenuItem;
    dlgGuardar: TFileSaveDialog;
    frxPDFExportar: TfrxPDFExport;
    panelVistaPreviaArchivo: TPanel;
    btnEliminarExamen: TdxBarLargeButton;
    btnReporteAntecedentes: TdxBarLargeButton;
    panelEmpleadosParaReportes: TPanel;
    vistaEmpleadosParaReportes: TcxGridDBTableView;
    nivelEmpleadosParaReportes: TcxGridLevel;
    gridEmpleadosParaReportes: TcxGrid;
    tcxReportesFicha: TcxGridDBColumn;
    tcxReportesNombre: TcxGridDBColumn;
    tcxReportesPuesto: TcxGridDBColumn;
    tcxReportesGrupoSanguineo: TcxGridDBColumn;
    tcxReportesTelefono: TcxGridDBColumn;
    tcxEmpleadosPlataforma: TcxGridDBColumn;
    cdEmpleadosParaReportes: TClientDataSet;
    dsEmpleadosParaReportes: TDataSource;
    tcxReportesIdPersonal: TcxGridDBColumn;
    reportes: TfrxReport;
    frxDBReportes: TfrxDBDataset;
    vistaFechas: TcxGridDBTableView;
    nivelFechas: TcxGridLevel;
    gridFechas: TcxGrid;
    tcxFechasFechaProgramada: TcxGridDBColumn;
    tcxFechasIdProgramaRecursivo: TcxGridDBColumn;
    cdDatosParaReporteAntecedente: TClientDataSet;
    popupMostrarReporteCompleto: TPopupMenu;
    btnMostrarReporteCompleto: TMenuItem;
    panelReportesExamenMedico: TPanel;
    vistaEmpleadosParaReportesExamenMedico: TcxGridDBTableView;
    nivelEmpleadosParaReportesExamenMedico: TcxGridLevel;
    gridEmpleadosParaReportesExamenMedico: TcxGrid;
    tcxEmpleadosReportesExamenMedicoFicha: TcxGridDBColumn;
    tcxEmpleadosReportesExamenMedicoNombreCompleto: TcxGridDBColumn;
    tcxEmpleadosReportesExamenMedicoPuesto: TcxGridDBColumn;
    tcxEmpleadosReportesExamenMedicoGrupoSanguineo: TcxGridDBColumn;
    tcxEmpleadosReportesExamenMedicoTelefono: TcxGridDBColumn;
    tcxEmpleadosReportesExamenMedicoPlataforma: TcxGridDBColumn;
    tcxEmpleadosReportesExamenMedicoIdPersonal: TcxGridDBColumn;
    btnReporteDocumentos: TdxBarLargeButton;
    dxToolBarManagerManagerProgramaDeSaludBar12: TdxBar;
    dxBarSubItem3: TdxBarSubItem;
    btnProReaVen: TdxBarLargeButton;
    vistaTiposExamenes: TcxGridDBTableView;
    nivelTiposExamenes: TcxGridLevel;
    gridTiposExamenes: TcxGrid;
    tcxTiposExamenesDescripcion: TcxGridDBColumn;
    tcxTiposExamenesIdCatalogoExamen: TcxGridDBColumn;
    tcxTiposExamenesTipo: TcxGridDBColumn;
    zqryTipoExamenMedicoUPDATE: TZQuery;
    tcxTiposExamenesidTipoExamen_Medico: TcxGridDBColumn;
    frxDBReportePorTipoExamen: TfrxDBDataset;
    reportes2: TfrxReport;
    popupReporteXTipoCompleto: TPopupMenu;
    btnImprimirReporteXTipoCompleto: TMenuItem;
    reportesDocumentos: TfrxReport;
    popupReporteDocumentos: TPopupMenu;
    VerTamaocompleto1: TMenuItem;
    frxDBReporteDocumentos: TfrxDBDataset;
    reporteProReaVen: TfrxReport;
    popupReporteProReaVen: TPopupMenu;
    MostrarTamaoCompleto1: TMenuItem;
    frxDBReporteProReaVen: TfrxDBDataset;
    cbbDel: TcxDateEdit;
    cbbAl: TcxDateEdit;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    checkAplicarRangoFechas: TcxCheckBox;
    dsGrafica: TDataSource;
    vistaGrafica: TcxGridDBChartView;
    cxSeriesGrafica: TcxGridDBChartSeries;
    grupoFECHA: TcxGridDBChartDataGroup;
    grupoExamen: TcxGridDBChartDataGroup;
    zqryGrafica: TZQuery;
    cdGrafica: TClientDataSet;
    memDataScheduler: TdxMemData;
    storageScheduler: TcxSchedulerDBStorage;
    dsScheduler: TDataSource;
    tdxFirmantes: TdxRibbonTab;
    pageFirmantes: TcxTabSheet;
    btnConfigurarFirmantes: TdxBarLargeButton;
    vistaFirmantes: TcxGridDBTableView;
    nivelFirmantes: TcxGridLevel;
    gridFirmantes: TcxGrid;
    tcxFirmante1: TcxGridDBColumn;
    tcxPuesto1: TcxGridDBColumn;
    tcxFirmante2: TcxGridDBColumn;
    tcxPuesto2: TcxGridDBColumn;
    dxToolBarManagerManagerProgramaDeSaludBar8: TdxBar;
    btnNuevoFirmantes: TdxBarLargeButton;
    btnEditarFirmantes: TdxBarLargeButton;
    btnEliminarFirmantes: TdxBarLargeButton;
    btnGuardarFirmantes: TdxBarLargeButton;
    btnCancelarFirmantes: TdxBarLargeButton;
    zqryFirmantes: TZQuery;
    dsFirmantes: TDataSource;
    tcxIdFirmanteMedico: TcxGridDBColumn;
    btn3: TdxBarLargeButton;
    dxToolBarManagerManagerProgramaDeSaludBar13: TdxBar;
    btnPorPlataformas: TdxBarLargeButton;
    btnPorFechas: TdxBarLargeButton;
    atncfldDataSchedulerID: TAutoIncField;
    intgrfldDataSchedulerParentID: TIntegerField;
    intgrfldDataSchedulerType: TIntegerField;
    memDataSchedulerStart: TDateTimeField;
    memDataSchedulerFinish: TDateTimeField;
    intgrfldDataSchedulerOptions: TIntegerField;
    strngfldDataSchedulerCaption: TStringField;
    intgrfldDataSchedulerRecurrenceIndex: TIntegerField;
    blbfldDataSchedulerRecurrenceInfo: TBlobField;
    mfldDataSchedulerResourceID: TMemoField;
    strngfldDataSchedulerLocation: TStringField;
    strngfldDataSchedulerMessage: TStringField;
    memDataSchedulerReminderDate: TDateTimeField;
    intgrfldDataSchedulerReminderMinutes: TIntegerField;
    intgrfldDataSchedulerState: TIntegerField;
    intgrfldDataSchedulerLabelColor: TIntegerField;
    memDataSchedulerActualStart: TDateTimeField;
    memDataSchedulerActualFinish: TDateTimeField;
    strngfldDataSchedulerSyncIDField: TStringField;
    tdxBajas: TdxRibbonTab;
    pageBajas: TcxTabSheet;
    listaBajas: TcxListBox;
    dxToolBarManagerManagerProgramaDeSaludBar14: TdxBar;
    btnAyuda: TdxBarLargeButton;
    panelAyuda: TPanel;
    lbl9: TcxLabel;
    lbl10: TcxLabel;
    lbl11: TcxLabel;
    lbl12: TcxLabel;
    lbl13: TcxLabel;
    cdEmpleadosParaBajas: TClientDataSet;
    dsEmpleadosParaBajas: TDataSource;
    intgrfldDataSchedulerGroupId: TIntegerField;
    strngfldDataSchedulerTesCustomField: TStringField;
    popupScheduler: TPopupMenu;
    btnVerEmpleados: TMenuItem;
    panelFechasEmpleados: TPanel;
    vistaFechasEmpleados: TcxGridDBTableView;
    nivelFechasEmpleados: TcxGridLevel;
    gridFechasEmpleados: TcxGrid;
    tcxFechasEmpleadosFicha: TcxGridDBColumn;
    tcxFechasEmpleadosNombreCompleto: TcxGridDBColumn;
    tcxFechasEmpleadosTelefono: TcxGridDBColumn;
    tcxFechasEmpleadosPuesto: TcxGridDBColumn;
    tcxFechasEmpleadosPlataforma: TcxGridDBColumn;
    dsFechasEmpleados: TDataSource;
    cdFechasEmpleados: TClientDataSet;
    tcxFechasEmpleadosEstatus: TcxGridDBColumn;
    checkSeleccionarTodos: TcxCheckBox;
    tcxFirmanteInicioVigencia: TcxGridDBColumn;
    tcxFirmanteTerminoVigencia: TcxGridDBColumn;
    panel6: TPanel;
    panel7: TPanel;
    panel4: TPanel;
    lblcxlbl1: TcxLabel;
    lblcxlbl2: TcxLabel;
    lblcxlbl3: TcxLabel;
    lblTelefono: TcxDBLabel;
    lblTelefono1: TcxDBLabel;
    lblTelefono2: TcxDBLabel;
    gridEmpleados: TcxGrid;
    vistaEmpleados: TcxGridDBTableView;
    tcxFicha: TcxGridDBColumn;
    tcxNombreCompleto: TcxGridDBColumn;
    tcxCategoria: TcxGridDBColumn;
    tcxTitulo: TcxGridDBColumn;
    tcxIdPersonal: TcxGridDBColumn;
    nivelEmpleados: TcxGridLevel;
    checkMostrarGeneral: TcxCheckBox;
    panelpnl1: TPanel;
    panelpnl2: TPanel;
    panelpnl4: TPanel;
    panel5: TPanel;
    spliter1: TcxSplitter;
    panel8: TPanel;
    TDBFechaTDBFechaInicioFirmante: TcxDBDateEdit;
    lbl7: TcxLabel;
    TDBFechaTDBFechaTerminoFirmante: TcxDBDateEdit;
    lbl8: TcxLabel;
    panel2: TPanel;
    edtFirmante1: TcxDBTextEdit;
    edtPuesto1: TcxDBTextEdit;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    edtFirmante2: TcxDBTextEdit;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    edtPuesto2: TcxDBTextEdit;
    panel3: TPanel;
    spliter2: TcxSplitter;
    panel9: TPanel;
    gridBajas: TcxGrid;
    vistaBajas: TcxGridDBTableView;
    tcxBajasFicha: TcxGridDBColumn;
    tcxBajasNombreCompleto: TcxGridDBColumn;
    tcxBajasPuesto: TcxGridDBColumn;
    tcxBajasNomina: TcxGridDBColumn;
    tcxBajasTelefono: TcxGridDBColumn;
    tcxBajasPlataforma: TcxGridDBColumn;
    tcxBajasId: TcxGridDBColumn;
    nivelBajas: TcxGridLevel;
    spliter3: TcxSplitter;
    panel10: TPanel;
    panelScrollHistorial: TcxScrollBox;
    lblIndicativoNombre: TcxLabel;
    lblNombreEmpleado: TcxLabel;
    spliter4: TcxSplitter;
    panel11: TPanel;
    lblcxlbl10: TcxLabel;
    lblcxlbl11: TcxLabel;
    spliter5: TcxSplitter;
    spliter7: TcxSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEliminarFechaProgramadaClick(Sender: TObject);
    procedure btnProgramarFechaClick(Sender: TObject);
    procedure vistaEmpleadosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnMarcarRealizadoClick(Sender: TObject);
    procedure realizadoNoRealizado(Status : string; mensaje : string);
    procedure btnDesmarcarRealizadoClick(Sender: TObject);
    procedure estadoBotones(botonProgramarFecha, botonEliminarFechaProgramada, botonMarcarRealizado, botonDesmarcarRealizado : Boolean);
    procedure schedulerFechasClick(Sender: TObject);
    procedure actualizarBotones;
    procedure habilitarDeshabilitarExamenMedico(ExamenMedicoVisible : Boolean);
    procedure mostrarExamenMedico(idPersonal : integer; fechaSeleccionada : string);
    procedure RibbonMenuPrincipalTabChanged(Sender: TdxCustomRibbon);
    procedure pageContenedorPrincipalChange(Sender: TObject);
    procedure btnAgregarCatalogoExamenMedicoClick(Sender: TObject);
    procedure btnGuardarCatalogoExamenMedicoClick(Sender: TObject);
    procedure btnEditarCatalogoExamenMedicoClick(Sender: TObject);
    procedure btnCancelarCatalogoExamenMedicoClick(Sender: TObject);
    procedure btnEliminarCatalogoExamenMedicoClick(Sender: TObject);
    procedure crearObjetosExamenMedico(panelPadre : TcxScrollBox; CaptionLabelIndicativo : string; nombreDeLaCajaDeTexto : string; valorParaLaCajaDeTexto : Double; valorLabelMedida : string; topLabel, topCajaTexto, indiceArrays : Integer);
    procedure actualizarObjetosExamenMedico;
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure estiloDeFocus;
    procedure crearPanelInsertarCatalogo(panel : TPanel; formularioPadre : TForm; tituloCabecera : string; ancho, alto : integer);
    procedure pageTipoExamenChange(Sender: TObject);
    procedure btnCancelarCatalogoAntidopingClick(Sender: TObject);
    procedure edtCodigoAntidopingKeyPress(Sender: TObject; var Key: Char);
    procedure actualizarObjetosAntidoping;
    procedure crearObjetosDelCatalogoAntidoping(panelPadre : TcxScrollBox; TextoLabel : string; nombreComboBox, valorComboBox : string; topLabel, topComboBox, indicearray : integer);
    function obtenerResultadoExamenMedico(idTipoExamen_Medico: Integer; idPersonal : integer; filtroCodigo : string; fechaProgramada : string) : Double;
    procedure btnGuardarExamenMedicoClick(Sender: TObject);
    function obtenerResultadoAntidoping(idTipoExamen_Medico: Integer; idPersonal : integer; filtroCodigo : string; fechaProgramada : string) : string;
    procedure validarNumerosCajas(Sender : TObject; var Key : Char);
    procedure btnCancelarExamenMedicoClick(Sender: TObject);
    function codigoExiste(codigo : string) : Boolean;
    procedure insertarExamenMedico(arrayCajasTexto : Array of TcxTextEdit;
                                  datasetFiltro : TZQuery; idTipoExamen_Medico: Integer;
                                  datasetUPDATE : TZQuery; valorIdProgramaRecursivo : Integer);
    procedure insertarAntidoping(arrayComboBox : array of TcxComboBox; datasetFiltro : TZQuery;
                                  idTipoExamen_Medico: Integer; datasetUPDATE : TZQuery;
                                  valorIdProgramaRecursivo : Integer);
    procedure insertarExamenMedicoIndividual(datasetFiltro : TZQuery; idTipoExamen_Medico: Integer;
                                  datasetUPDATE : TZQuery; valorIdProgramaRecursivo : Integer;
                                  Codigo : string; ResultadoEstudioExamen : string);
    procedure insertarAntidopingIndividual(datasetFiltro : TZQuery; idTipoExamen_Medico: Integer;
                                  datasetUPDATE : TZQuery; valorIdProgramaRecursivo : Integer;
                                  codigo : string; ResultadoDopaje : string);
    procedure btnGuardarCatalogoAntecedentesClick(Sender: TObject);
    procedure edtCodigoAntecedentesKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarCatalogoAntecedentesClick(Sender: TObject);
    procedure ActualizarObjetosAntecedentes;
    procedure crearObjetosAntecedentes(panelPadre: TcxScrollBox;
                                        nombreDelCheckBox, CaptionCheckBox, checkeado, valorCaja : string; topCheckBox, topLabelAntecedentes,
                                        topCajaTextoAntecedentes, indiceArray : Integer);
    procedure insertarAntecedentes(arrayCheckBox: array of TcxCheckBox; datasetFiltro: TZQuery; idTipoExamen_Medico: Integer;
                                   datasetUPDATE: TZQuery; valorIdProgramaRecursivo: Integer; arrayCajas : array of TcxTextEdit);
    function obtenerResultadoAntecedentes(idcatalogoexamenmedico, idPersonal, idProgramaRecursivo, idTipoExamen_Medico : integer; resultadoDevolver : string) : string;
    procedure insertarAntecedenteIndividual(datasetFiltro : TZQuery; idTipoExamen_Medico: Integer; datasetUPDATE : TZQuery; valorIdProgramaRecursivo : Integer;
                                            codigo, ResultadoAntecedentes, EspecificacionesAntecedentes : string);
    procedure estadoBotonesCatalogoExamenMedico(estado : Boolean);
    procedure crearResumenGeneralExcel;

    function ExamenMedicoEsRegistroActivo(codigo : string) : Boolean;

    //ResumenExcel procedimientos para el Resumen Excel
    procedure cabeceraResumenExcel(Excel, Hoja : Variant);
    procedure combinarYCentrarDatosEncabezados(Excel : Variant; rangoColumnas : string);
    procedure bordesCeldas(Excel : Variant; rangoCeldas : string; bordeGrueso : Boolean);
    procedure filtrarTodoProgramaRecursivoSELECT;
    procedure cuerpoResumenReporteExcel(Excel : Variant);
    procedure filtrarTodoCatalogoExamenMedicoCATALOGO;
    procedure fuenteLetras(Excel : Variant; rangoColumna : string; fuente : string; tamanoLetra : Integer; negritas : Boolean);
    procedure btnImprimirReporteConFormatoClick(Sender: TObject);
    procedure btnNuevoCatalogoDocumentosClick(Sender: TObject);
    procedure btnCancelarCatalogoDocumentosClick(Sender: TObject);
    procedure btnEditarCatalogoDocumentosClick(Sender: TObject);

    //Procedimientos y Funciones para la pestana Documentos
    procedure AsignarSentenciasDatasetsDocumentos;
    procedure traerTodoCatalogoDocumentos;
    procedure btnGuardarCatalogoDocumentosClick(Sender: TObject);
    procedure btnEliminarCatalogoDocumentosClick(Sender: TObject);
    procedure actualizarObjetosDocumentos;
    procedure crearObjetosDocumentos(panelPadre : TcxScrollBox; captionLabelIndicativo, nombreDelBoton : string;
                                      topLabel, topBoton, indiceArray : Integer;
                                      fechaInicio, fechaTermino : string; tieneArchivo : Boolean);
    procedure edtCodigoDocumentoKeyPress(Sender: TObject; var Key: Char);
    function codigoDocumentoExiste(codigo : string) : Boolean;
    procedure buscarArchivoDocumento(Sender : TObject);
    procedure btnGuardarDocumentosMedicosClick(Sender: TObject);
    function obtenerIdDocumento(codigo : string) : Integer;
    procedure traerTodoDoctosXCargo;
    function documentoAsignadoAEmpleado(idDocumento, idPersonal : Integer) : Boolean;
    procedure editarDoctosXCargo(idDocumento, idPersonal : Integer; fechaInicio, fechaTermino, ruta : string);
    function fechaInicioTerminoDoctos(idDocumento, idPersonal : Integer; tipoFecha : string) : string;
    procedure btnCancelarDocumentosMedicosClick(Sender: TObject);
    function DocumentoEsRegistroActivo(idDocumento : Integer) : Boolean;

    //Procedimientos y funciones para la pestana Vigencias(Documentos Todos)
    procedure actualizarObjetosVigenciasDocumentosTodos;
    procedure crearObjetosVigenciasDocumentos(panelPadre : TcxScrollBox; captionLabelIndicativo, nombreDelSpin : string; diasAviso : Integer;
                                              Medida : string; topLabel, topSpin, indiceArray : Integer);
    procedure actualizardiasDeAvisoDocumentos(codigo : string; diasAviso, indiceDelCombo : Integer);
    procedure destruirObjetosDocumentos;
    procedure destruirObjetosVigenciasDocumentosTodos;
    function obtenerDiasDeAviso(codigo, campoAObtener: string): String;
    procedure botonesPestanaVigencias(botonGuardarVigencias, botonVigenciasAplicarATodos, botonVigenciasPersonalizado: Boolean);
    procedure ActivarBotonDocumentosVencidos(botonDocumentosVencidos : Boolean);
    function existenDocumentosXVencerse(idDocumento, Recursividad: Integer; Medida : string) : Boolean;
    procedure datasetMemoriaDocumentosVencidos;
    procedure revizarDocumentosVencidos;

    procedure crearTiposExamenXDefault;
    procedure btnGuardarVigenciasClick(Sender: TObject);
    procedure btnDocumentosPorCaducarClick(Sender: TObject);
    procedure btnHistorialEmpleadoClick(Sender: TObject);
    procedure vistaHistorialEmpleadosCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);

      //Procedimientos y funciones para la pestana Historial
    procedure actualizarObjetosHistorial(idPersonal : Integer);
    procedure crearObjetosHistorial(panelPadre : TcxScrollBox; captionTituloExamen, captionTipoExamen, captionFechaExamen, captionCantidad, nombreCheck : string;
						                        topTituloExamen, topTipoExamen, toplabelFechaYCantidad, indiceArray, idTipoExamen_Medico: Integer; pintarTipoExamen : Boolean);
    procedure destruirObjetosHistorial;
    procedure vistaDocumentosPorCaducarCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    function ObtenerFechaArchivo(const NombreArchivo: string; out FechaResult: TDateTime;
              TipoFechaObtener: TTipoDFecha): boolean;
    function cambiarFechaFichero(const FileName: string;
  FileDate: TDateTime; SpecificFileDate: TFileDateKind): boolean;
    procedure btnExportarClick(Sender: TObject);
    procedure mostrarImagenConPalomita(Sender : TObject);
    procedure eliminarRegistroDocumento(Sender : TObject);

    //Otra vez pestana Documentos
    function tieneArchivo(idDocumento, idPersonal : Integer) : Boolean;
    procedure btnEliminarExamenClick(Sender: TObject);

    //Pestana Fechas Programadas
    function examenMedicoFueEvaluado(idProgramaRecursivo : Integer) : Boolean;
    procedure btnReporteAntecedentesClick(Sender: TObject);

    //Pestan Reportes
    procedure datasetEmpleadosParaReportes;
    procedure vistaEmpleadosParaReportesCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure vistaFechasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure datasetParaReporteAntecedentes;
    function AntecedenteEvaluado(idProgramaRecursivo, idPersonal, idTipoExamen_Medico, idcatalogoexamenmedico : Integer): Boolean;
    procedure btnMostrarReporteCompletoClick(Sender: TObject);
    procedure btnReporteExamenMedicoClick(Sender: TObject);
    procedure empleadosParaReportes;
    procedure traerTodoNucPersonal;
    procedure revisarFechasCaducadas;
    procedure datasetTiposExamenes;
    procedure TiposExamenesParaGrid;
    procedure vistaTiposExamenesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure camposCdDatasetParaReportesPorTipo;
    procedure reportes2GetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirReporteXTipoCompletoClick(Sender: TObject);
    procedure btnReporteDocumentosClick(Sender: TObject);
    procedure VerTamaocompleto1Click(Sender: TObject);
    procedure camposCdDatasetParaReporteDocumentos;
    procedure reportesDocumentosGetValue(const VarName: string;
      var Value: Variant);
    procedure btnProReaVenClick(Sender: TObject);
    procedure MostrarTamaoCompleto1Click(Sender: TObject);
    procedure camposcdDatasetProReaVen;
    procedure reporteProReaVenGetValue(const VarName: string;
      var Value: Variant);
    procedure datosEmpleadoProReaVen(idPersonal : Integer);
    procedure checkAplicarRangoFechasClick(Sender: TObject);
    procedure HabilitarcalendariosRangoFechas(Activo : Boolean);
    procedure eventoCheckGrafica(Sender : TObject);
    procedure camposCdGrafica(arrayCodigos : array of string);

    //Pestana Firmantes
    procedure botonesFirmantes(botonNuevo, botonEditar, botonGuardar, botonCancelar, botonEliminar : Boolean);
    procedure btnNuevoFirmantesClick(Sender: TObject);
    procedure btnEditarFirmantesClick(Sender: TObject);
    procedure btnCancelarFirmantesClick(Sender: TObject);
    procedure traerTodosFirmantes;
    procedure controlesFirmantes(activo : Boolean);
    procedure btnGuardarFirmantesClick(Sender: TObject);
    procedure btnEliminarFirmantesClick(Sender: TObject);
    function fechasFirmantesSeCruzan(fechaInicio, fechaTermino : TDateTime) : Boolean;
    function obtenerDatosFirmantes(datoObtener : string; noFirmante : Integer) : string;

    //Destruir objetos de la pestana examen medico con este procedimiento si es que existen
    procedure destruirObjetosPestanaExamenMedico;
    procedure btnPorFechasClick(Sender: TObject);
    procedure btnPorPlataformasClick(Sender: TObject);

    //Procedimientos para el reporte de excel por Plataforma
    procedure cuerpoReporteExcelPlataformas(Excel : Variant);
    procedure crearExcelPorPlataformas;

    //Pestana Bajas
    procedure listaBajasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure listaBajasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure pasarAListaDeBajasDragDrop;
    procedure vistaBajasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure vistaBajasDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure vistaBajasStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure listaBajasStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure btnAyudaClick(Sender: TObject);
    procedure camposCdEmpleadosParaBajas;
    procedure mostrarPersonalParaBajas;
    procedure llenarListaDeEmpleadosBajados;
    procedure traerTodoNucPersonalUpdate;

    //Metodos para el scheduler
    procedure storageSchedulerEventInserted(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure actualizarColores;
    procedure checkMostrarGeneralClick(Sender: TObject);
    procedure btnVerEmpleadosClick(Sender: TObject);

    procedure camposFechasEmpleados;
    procedure checkSeleccionarTodosClick(Sender: TObject);

  private
    { Private declarations }

    crearExcelExamenMedico : Boolean;

    ejecutarEventoRibbon    : Boolean;
    formularioInsertarCatalogo: TForm;

    //Objetos creados en tiempo de ejecucion para Catalogo de Examen Medico
    labelIndicativo   :    TcxLabel;
    objetoCajaDeTexto : TcxTextEdit;
    labelMedida       :    TcxLabel;

    //Objetos creados en Tiempo de ejecucion para Catalogo de Antidoping
    labelIndicativoAntidoping : TcxLabel;
    comboBox : TcxComboBox;

    //Objetos creados en Tiempo de ejecucion para catalogo de Antecedentes
    checkBoxAntecedentes      : TcxCheckBox;
    labelEspecificaciones     :    TcxLabel;
    cajaTextoExpecificaciones : TcxTextEdit;

    Evaluacion   :   TEvaluacion;
    Antidoping   :   TAntidoping;
    Antecedentes : TAntecedentes;
    Documentos   :   TDocumentos;
    Vigencias : TVigenciasDocumentos;
    Historial   :    THistorial;

    modoInsercionActivado : Boolean;

    CodigoAntesDeGuardar  :  string;
    CodigoAntidopingAntesDeGuardar   : string;
    CodigoAntecedentesAntesDeGuardar : string;

    sArchivo : string;
    imprimirExcelConFormato : Boolean;

    //Objetos en tiempo de ejecucion para la pestana Documentos y variables de esa pestana
    labelIndicativoDocumentos    :   TcxLabel;
    botonDocumentos             :   TcxButton;
    labelIndicativoInicioVigencia  : TcxLabel;
    calendarioInicioVigencia  :   TcxDateEdit;
    labelIndicativoTerminoVigencia : TcxLabel;
    calendarioTerminoVigencia  :  TcxDateEdit;
    palomita : TcxButton;
    botonEliminarRegistroDocumento : TcxButton;

    modoInsercionDocumentoActivado : Boolean;
    codigoDocumentoAntesDeGuardar  :  string;

    //Objetos en tiempo de ejecucion para la pestana Vigencias (Subpestana Documentos Todos)
    labelVigenciaDocumento :  TcxLabel;
    spinNumeroDiasAviso :  TcxSpinEdit;
    comboRecursividad  :   TcxComboBox;
    labelAntesDeVencimiento : TcxLabel;

    //Objetos en tiempo de ejecucion para la pestana Historial
    checkMostrar        : TcxCheckBox;
    labelTituloExamen   : TcxLabel;
    labelTipoExamen     : TcxLabel;
    labelFechaExamen    : TcxLabel;
    labelCantidad       : TcxLabel;

    arrayCodigos : array of string;

    //Variables para la pestana Reportes
    tipoReporte : string;
    zqryFechas : TZQuery;
    dsFechas : TDataSource;
    cdTiposExamenMedicos : TClientDataSet;
    dsTiposExamenMedicos : TDataSource;
    datosReporte : TZQuery;
    cdDatasetParaReportesPorTipo : TClientDataset;
    cdDatasetParaReporteDocumentos : TClientDataSet;
    cdDatasetProReaVen : TClientDataSet;

    //Dataset para reporte excel por plataformas
    zqryProgramaRecursivoPlataforma : TZQuery;
    reporteExcel : string;

    //Variables para la pestana Bajas
    OrigenDragDrop : string;
    zqryNucPersonalUPDATE : TZQuery;

    actualizarPestanVigencia : Boolean;

  public
    { Public declarations }
    AcroPDF: TAcroPDF;
  end;

var
  FrmProgramaDeSalud: TFrmProgramaDeSalud;

implementation

{$R *.dfm}
procedure THistorial.RedimensionarArraysHistorial(Dimension: Integer);
begin
  SetLength(checkMostrar, Dimension);
  SetLength(labelTituloExamen, Dimension);
  SetLength(labelTipoExamen, Dimension);
  SetLength(labelFechaExamen, Dimension);
  SetLength(labelCantidad, Dimension);
end;

procedure TVigenciasDocumentos.RedimensionarArraysVigenciasDocumentos(Dimension: Integer);
begin
  SetLength(labelVigenciaDocumento, Dimension);
  SetLength(spinNumeroDiasAviso, Dimension);
  SetLength(comboRecursividad, Dimension);
  SetLength(labelAntesDeVencimiento, Dimension)
end;

procedure TDocumentos.RedimensionarArraysDocumentos(Dimension: Integer);
begin
  SetLength(labelIndicativoDocumento, Dimension);
  SetLength(botonArchivo, Dimension);
  SetLength(labelIndicativoInicioVigencia, Dimension);
  SetLength(calendarioInicioVigencia, Dimension);
  SetLength(labelIndicativoTerminoVigencia, Dimension);
  SetLength(calendarioTerminoVigencia, Dimension);
  SetLength(palomita, Dimension);
  SetLength(botonEliminarRegistroDocumento, Dimension);
end;

procedure TAntecedentes.RedimensionarArrayCheckBox(Dimension: Integer);
begin
  SetLength(checkBoxAntecedentes, Dimension);
  SetLength(labelEspecificar, Dimension);
  SetLength(cajaTextoEspecificar, Dimension);
end;

procedure TAntidoping.RedimensionarArraysAntidoping(Dimension : Integer);
begin
  SetLength(labelsIndicativosAntidoping, Dimension);
  SetLength(comboBoxAntidoping, Dimension);
end;

procedure TEvaluacion.Redimencionar(Dimencion: Integer);
begin
  SetLength(objetosCajasTexto, Dimencion);
  SetLength(LabelsIndicativos, Dimencion);
  SetLength(LabelsMedidas, Dimencion);
end;

procedure TFrmProgramaDeSalud.ActivarBotonDocumentosVencidos(
  botonDocumentosVencidos: Boolean);
begin
  //Activa o desactiva boton de Documentos vencidos en la pestana de Vigencias
  dxToolBarManagerManagerProgramaDeSaludBar9.Visible := botonDocumentosVencidos;
end;

procedure TFrmProgramaDeSalud.actualizarBotones;
var
  fechaCompuesta : string;
begin
  //Actualiza los botones, segun sea el empleado seleccionado y la fecha seleccionado en el scheduler
  //Habilitar o Deshabilitar los botones en base a las fechas programadas
  FechaCompuesta := DatetoStrSql(StrToDate(DateToStr(schedulerFechas.SelStart)));
  if Not CargarDatosFiltrados(zqryProgramaRecursivo, 'idProgramaRecursivo, fechaProgramada, fechaReal, idPersonal', [-1, (FechaCompuesta), -1, zqryPersonal.FieldByName('idPersonal').AsInteger]) then
    raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'fechaProgramada', 'fechaReal', 'idPersonal']);

  if zqryProgramaRecursivo.Active then
    zqryProgramaRecursivo.Refresh
  else
    zqryProgramaRecursivo.Open;

  if zqryProgramaRecursivo.RecordCount > 0 then
  begin
    if (zqryProgramaRecursivo.FieldByName('Status').AsString = 'Programada') or
       (zqryProgramaRecursivo.FieldByName('Status').AsString = 'Vencida') then
    begin
      estadoBotones(False, True, True, False);
    end
    else if zqryProgramaRecursivo.FieldByName('Status').AsString = 'Realizada' then
    begin
      estadoBotones(False, False, False, True);
    end;
  end
  else
  begin
    estadoBotones(True, False, False, False);
  end;
end;

procedure TFrmProgramaDeSalud.actualizarColores;
var
  programaRecursivo : TZQuery;
begin
  //Actualiza los colores en el scheduler conforme sean las fechas programadas, realizadas o caducadas
  try
    try
      programaRecursivo := TZQuery.Create(Self);

      if Not AsignarSentencia(programaRecursivo, 'rhu_programarecursivo', ccCatalog) then
        raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

      if Not CargarDatosFiltrados(programaRecursivo, 'idPersonal', [zqryPersonal.FieldByName('idPersonal').AsInteger]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'rhu_programarecursivo']);

      memDataScheduler.Open;
      //Con este while se eliminan las fechas coloreadas si es que hay fechas coloreadas
      while not memDataScheduler.Eof do
      begin
        memDataScheduler.Delete;
      end;

      programaRecursivo.Open;
      if programaRecursivo.RecordCount > 0 then
      begin
        programaRecursivo.First;
        while Not programaRecursivo.Eof do
        begin
          memDataScheduler.DisableControls;
          memDataScheduler.Append;

          if programaRecursivo.FieldByName('Status').AsString = 'Programada' then
          begin
            memDataScheduler.FieldByName('Caption').AsString     :=    'P';
            memDataScheduler.FieldByName('LabelColor').AsInteger := 60000000;
          end else if programaRecursivo.FieldByName('Status').AsString = 'Realizada' then
          begin
            memDataScheduler.FieldByName('Caption').AsString     :=     'R';
            memDataScheduler.FieldByName('LabelColor').AsInteger := 500000;
          end else if programaRecursivo.FieldByName('Status').AsString = 'Vencida' then
          begin
            memDataScheduler.FieldByName('Caption').AsString     :=   'V';
            memDataScheduler.FieldByName('LabelColor').AsInteger := clRed;
          end;

          memDataScheduler.FieldByName('Start').AsDateTime  := programaRecursivo.FieldByName('fechaProgramada').AsDateTime;
          memDataScheduler.FieldByName('Finish').AsDateTime := programaRecursivo.FieldByName('fechaProgramada').AsDateTime;
          memDataScheduler.FieldByName('ID').AsInteger      := 1;
          memDataScheduler.FieldByName('RecurrenceIndex').AsInteger := 1;

          memDataScheduler.Post;
          memDataScheduler.EnableControls;

          programaRecursivo.Next;
        end;
      end;  
      
    finally
      programaRecursivo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.bordesCeldas(Excel: Variant; rangoCeldas: string;
  bordeGrueso: Boolean);
begin
  //Coloca el tipo de borde (Grueso o delgado)
  if bordeGrueso then
  begin
    //Pintar el borde Grueso
    Excel.Range[rangoCeldas].Select;
    Excel.Selection.Borders[xlDiagonalDown].LineStyle     :=       xlNone;
    Excel.Selection.Borders[xlDiagonalUp].LineStyle       :=       xlNone;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle         := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight            :=     xlMedium;

    Excel.Selection.Borders[xlEdgeTop].LineStyle          := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight             :=     xlMedium;

    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight          :=     xlMedium;

    Excel.Selection.Borders[xlEdgeRight].LineStyle        := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight           :=     xlMedium;
  end
  else
  begin
    //Pintar los bordes delgados
    Excel.Range[rangoCeldas].Select;
    Excel.Selection.Borders[xlDiagonalDown].LineStyle :=       xlNone;
    Excel.Selection.Borders[xlDiagonalUp].LineStyle   :=       xlNone;

    Excel.Selection.Borders[xlEdgeLeft].LineStyle     := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight        :=       xlThin;

    Excel.Selection.Borders[xlEdgeRight].LineStyle    := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight       :=       xlThin;

    Excel.Selection.Borders[xlEdgeBottom].LineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight      :=       xlThin;

    //Excel.Selection.Borders[xlEdgeTop].LineStyle      := xlContinuous;
    //Excel.Selection.Borders[xlEdgeTop].Weight         :=       xlThin;

    Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideVertical].Weight    :=       xlThin;

    Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlInsideHorizontal].Weight    :=       xlThin;
  end;
end;

procedure TFrmProgramaDeSalud.botonesFirmantes(botonNuevo, botonEditar,
  botonGuardar, botonCancelar, botonEliminar: Boolean);
begin
  //Juego de botones para la pestana Firmantes
  btnNuevoFirmantes.Enabled    :=    botonNuevo;
  btnEditarFirmantes.Enabled   :=   botonEditar;
  btnGuardarFirmantes.Enabled  :=  botonGuardar;
  btnCancelarFirmantes.Enabled := botonCancelar;
  btnEliminarFirmantes.Enabled := botonEliminar;
end;

procedure TFrmProgramaDeSalud.botonesPestanaVigencias(botonGuardarVigencias,
  botonVigenciasAplicarATodos, botonVigenciasPersonalizado: Boolean);
begin
  //Juego de Botones de la pestana Vigencias de Izquierda a Derecha
  btnGuardarVigencias.Enabled       :=       botonGuardarVigencias;
  btnVigenciasAplicarATodos.Enabled := botonVigenciasAplicarATodos;
  btnVigenciasPersonalizado.Enabled := botonVigenciasPersonalizado;
end;

procedure TFrmProgramaDeSalud.btnReporteExamenMedicoClick(Sender: TObject);
begin
  //Abrir la ventana donde se muestren los empleados que ya fueron evaluados y asi mismo elegir el tipo de examen medico
  //que el usuario quiera ver
  try
    datasetTiposExamenes; //Crea los campos para el grid de Tipos de Examenes

    TiposExamenesParaGrid;

    empleadosParaReportes;

//    //gridEmpleadosParaReportesExamenMedico.Align := alBottom;
//    gridTiposExamenes.Align := alRight;
//
//    //Abrir la ventana con el grid con empleados
//    crearPanelInsertarCatalogo(panelReportesExamenMedico, formularioInsertarCatalogo, 'Empleados Evaluados', 995, 450);
//
//    traerTodoNucPersonal;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnVerEmpleadosClick(Sender: TObject);
var
  programaRecursivo   : TZQuery;
  zqryFechasEmpleados : TZQuery;
begin
  //Mostrar en el grid de FechasEmpleados, los empleados que tengan examen medico el dia seleccionado
  try
    try
      programaRecursivo   := TZQuery.Create(Self);
      zqryFechasEmpleados := TZQuery.Create(Self);

      if Not AsignarSentencia(programaRecursivo, 'rhu_programarecursivo', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

      if Not CargarDatosFiltrados(programaRecursivo, 'fechaProgramada', [DatetoStrSql(schedulerFechas.SelStart)]) then
        raise EInteliException.CreateByCode(6, ['fehcProgramada', 'rhu_programarecursivo']);

      programaRecursivo.Open;

      if programaRecursivo.RecordCount > 0 then
      begin
        camposFechasEmpleados;
        cdFechasEmpleados.Open;
        cdFechasEmpleados.EmptyDataSet;

        while Not programaRecursivo.Eof do
        begin
          if Not AsignarSentencia(zqryFechasEmpleados, 'nuc_personal_medico', ccCatalog) then
            raise EInteliException.CreateByCode(5, ['nuc_personal_medico']);

          if Not CargarDatosFiltrados(zqryFechasEmpleados, 'idPersonal', [programaRecursivo.FieldByName('idPersonal').AsInteger]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

          if zqryFechasEmpleados.Active then
            zqryFechasEmpleados.Refresh
          else
            zqryFechasEmpleados.Open;

          if zqryFechasEmpleados.RecordCount > 0 then
          begin
            while Not zqryFechasEmpleados.Eof do
            begin
              cdFechasEmpleados.Append;
              cdFechasEmpleados.FieldByName('codigopersonal').AsString := zqryFechasEmpleados.FieldByName('codigopersonal').AsString;
              cdFechasEmpleados.FieldByName('NombreCompleto').AsString := zqryFechasEmpleados.FieldByName('NombreCompleto').AsString;
              cdFechasEmpleados.FieldByName('TituloCargo').AsString    :=    zqryFechasEmpleados.FieldByName('TituloCargo').AsString;
              cdFechasEmpleados.FieldByName('telefono').AsString       :=       zqryFechasEmpleados.FieldByName('telefono').AsString;
              cdFechasEmpleados.FieldByName('plataforma').AsString     :=     zqryFechasEmpleados.FieldByName('plataforma').AsString;
              cdFechasEmpleados.FieldByName('Status').AsString         :=           programaRecursivo.FieldByName('Status').AsString;
              cdFechasEmpleados.Post;

              zqryFechasEmpleados.Next;
            end;
          end;

          programaRecursivo.Next;
        end;

        gridFechasEmpleados.Align := alClient;
        //Abrir ventana con los nombres de los empleados
        crearPanelInsertarCatalogo(panelFechasEmpleados, formularioInsertarCatalogo, 'Empleados con exámenes', 860, 270);
      end
      else
        MessageDlg('¡No hay exámenes programados para esta fecha!', mtInformation, [mbOk], 0);
    finally
      programaRecursivo.Destroy;
      zqryFechasEmpleados.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnProReaVenClick(Sender: TObject);
var
  preview : TfrxPreview;
  programaRecursivo : TZQuery;
begin
  //Reporte de los examenes medicos que se programaron, mostrar los que estan programados, Realizados o Caducados
  try
    try
      programaRecursivo := TZQuery.Create(Self);

      if not AsignarSentencia(programaRecursivo, 'rhu_programarecursivo', ccCatalog) then
        raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

      programaRecursivo.Open;

      if programaRecursivo.RecordCount > 0 then
      begin
        camposcdDatasetProReaVen;
        cdDatasetProReaVen.Open;
        cdDatasetProReaVen.EmptyDataSet;

        programaRecursivo.First;
        while Not programaRecursivo.Eof do
        begin
          if programaRecursivo.FieldByName('activo').AsString = 'Si' then
          begin
            cdDatasetProReaVen.Append;

            cdDatasetProReaVen.FieldByName('idPersonal').AsInteger := programaRecursivo.FieldByName('idPersonal').AsInteger;
            datosEmpleadoProReaVen(programaRecursivo.FieldByName('idPersonal').AsInteger);
            cdDatasetProReaVen.FieldByName('idProgramaRecursivo').AsInteger := programaRecursivo.FieldByName('idProgramaRecursivo').AsInteger;
            cdDatasetProReaVen.FieldByName('fechaProgramada').AsString := DatetoStrSql(programaRecursivo.FieldByName('fechaProgramada').AsDateTime);
            cdDatasetProReaVen.FieldByName('Status').AsString := programaRecursivo.FieldByName('Status').AsString;

            cdDatasetProReaVen.Post;
          end;

          programaRecursivo.Next;
        end;

        frxDBReporteProReaVen.DataSet := cdDatasetProReaVen;

        preview :=   TfrxPreview.Create(Self);
        preview.Parent := panelScrollReportes;
        preview.Align :=   alClient;
        preview.PopupMenu := popupReporteProReaVen;
        preview.Visible :=     True;
        reporteProReaVen.Preview := preview;

        reporteProReaVen.LoadFromFile(global_files + 'ReporteEstatusExamenes.fr3');
        reporteProReaVen.ShowReport();
      end
      else
        MessageDlg('¡No hay registros para el reporte!', mtInformation, [mbOk], 0);
    finally
      programaRecursivo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnAgregarCatalogoExamenMedicoClick(Sender: TObject);
begin
  MessageDlg('¡Antes de generar un nuevo registro, verifique haber guardado los cambios en la evaluación!', mtInformation, [mbOk], 0);
  if pageTipoExamen.ActivePage = pageFormularioExamenMedico then
  begin
    zqryCatalogoExamenMedico.Append;
    zqryCatalogoExamenMedico.FieldByName('codigo').AsString       := '';
    zqryCatalogoExamenMedico.FieldByName('Descripcion').AsString  := '';
    zqryCatalogoExamenMedico.FieldByName('ValorMinimo').AsInteger :=  0;
    zqryCatalogoExamenMedico.FieldByName('ValorMaximo').AsInteger :=  0;
    zqryCatalogoExamenMedico.FieldByName('Medida').AsString       := '';
    zqryCatalogoExamenMedico.FieldByName('idTipoExamen_Medico').AsInteger := 1;

    modoInsercionActivado := True;

    crearPanelInsertarCatalogo(panelFormularioCatalogoExamenMedico, formularioInsertarCatalogo, '¡Registro Para el cátalogo!', 300, 200);

    if zqryCatalogoExamenMedico.Active then
    begin
      zqryCatalogoExamenMedico.Cancel;
      modoInsercionActivado := False;
    end;
  end
  else if pageTipoExamen.ActivePage = pageAntidoping then
  begin
    zqryCatalogoExamenMedico.Append;
    zqryCatalogoExamenMedico.FieldByName('codigo').AsString       :=   '';
    zqryCatalogoExamenMedico.FieldByName('Descripcion').AsString  :=   '';
    zqryCatalogoExamenMedico.FieldByName('idTipoExamen_Medico').AsInteger := 2;

    modoInsercionActivado := True;

    crearPanelInsertarCatalogo(panelInsertarCatalogoAntidoping, formularioInsertarCatalogo, '¡Registro Para el catálogo!', 300, 175);

    if zqryCatalogoExamenMedico.Active then
    begin
      zqryCatalogoExamenMedico.Cancel;
      modoInsercionActivado := False;
    end;
  end else if pageTipoExamen.ActivePage = pageAntecedentes then
  begin
    zqryCatalogoAntecedentes.Append;
    zqryCatalogoAntecedentes.FieldByName('codigo').AsString           := '';
    zqryCatalogoAntecedentes.FieldByName('Descripcion').AsString      := '';
    zqryCatalogoAntecedentes.FieldByName('idTipoExamen_Medico').AsInteger := 3;

    modoInsercionActivado := True;

    crearPanelInsertarCatalogo(panelFormularioAntecedentes, formularioInsertarCatalogo, '¡Registro para el catálogo!', 350, 170);

    if zqryCatalogoAntecedentes.Active then
    begin
      zqryCatalogoAntecedentes.Cancel;
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnAyudaClick(Sender: TObject);
begin
  //Muestra la ayuda para que el usuario tenga algunas indicaciones de como dar de baja y Alta a los empleados
  //Dentro del modulo Control Medico
  crearPanelInsertarCatalogo(panelAyuda, formularioInsertarCatalogo, 'Ayuda', 390, 175);
end;

procedure TFrmProgramaDeSalud.btnEditarCatalogoDocumentosClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    Screen.Cursor := crDefault;
    try
      MessageDlg('¡Antes de editar un registro, verifique haber guardado los cambios!', mtInformation, [mbOk], 0);
      Screen.Cursor := crAppStart;

      if zqryCatalogoDocumentosUPDATE.RecordCount > 0 then
      begin
        modoInsercionDocumentoActivado := False;
        zqryCatalogoDocumentosUPDATE.Edit;

        codigoDocumentoAntesDeGuardar := edtCodigoDocumento.Text;

        crearPanelInsertarCatalogo(panelCatalogoDocumentos, formularioInsertarCatalogo, '¡Registro Para el cátalogo!', 300, 175);

        if zqryCatalogoDocumentosUPDATE.Active then
          zqryCatalogoDocumentosUPDATE.Cancel;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnEditarCatalogoExamenMedicoClick(Sender: TObject);
begin
  MessageDlg('¡Antes de editar un registro, verifique haber guardado los cambios en la evaluación!', mtInformation, [mbOk], 0);
  modoInsercionActivado := False;
  if pageTipoExamen.ActivePage = pageFormularioExamenMedico then
  begin
    CodigoAntesDeGuardar := zqryCatalogoExamenMedico.FieldByName('codigo').AsString;
  
    zqryCatalogoExamenMedico.Edit;

    crearPanelInsertarCatalogo(panelFormularioCatalogoExamenMedico, formularioInsertarCatalogo, '¡Registro para el catálogo!', 300, 200);

    if zqryCatalogoExamenMedico.Active then
      zqryCatalogoExamenMedico.Cancel;
  end
  else if pageTipoExamen.ActivePage = pageAntidoping then
  begin
    CodigoAntidopingAntesDeGuardar := edtCodigoAntidoping.Text;

    zqryCatalogoExamenMedico.Edit;

    crearPanelInsertarCatalogo(panelInsertarCatalogoAntidoping, formularioInsertarCatalogo, '¡Registro para el catálogo!', 300, 175);

    if zqryCatalogoExamenMedico.Active then
      zqryCatalogoExamenMedico.Cancel;
  end
  else if pageTipoExamen.ActivePage = pageAntecedentes then
  begin
    CodigoAntecedentesAntesDeGuardar := edtCodigoAntecedentes.Text;
  
    zqryCatalogoAntecedentes.Edit;
    crearPanelInsertarCatalogo(panelFormularioAntecedentes, formularioInsertarCatalogo, '¡Registro para el catálogo!', 350, 170);

    if zqryCatalogoAntecedentes.Active then
      zqryCatalogoAntecedentes.Cancel;
  end;       
end;

procedure TFrmProgramaDeSalud.btnEditarFirmantesClick(Sender: TObject);
begin
  try
    if zqryFirmantes.RecordCount > 0 then
    begin
      botonesFirmantes(False, False, True, True, False);
      controlesFirmantes(True);

      //Poner en modo edicio a zqryFirmantes
      zqryFirmantes.Edit;
    end
    else
      MessageDlg('¡No hay registros para editar!', mtInformation, [mbOK], 0);
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.actualizardiasDeAvisoDocumentos(codigo: string; diasAviso, indiceDelCombo : Integer);
var
  documento : TZQuery;
begin
  //Actualiza la recursividad del documento para que avise al usuario cuando esta por vencer
  try
    try
      documento := TZQuery.Create(Self);

      if Not AsignarSentencia(documento, 'rhu_documento_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_documento']);

      if Not CargarDatosFiltrados(documento, 'codigo', [codigo]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_documento']);

      if documento.Active then
        documento.Refresh
      else
        documento.Open;

      if documento.RecordCount > 0 then
      begin
        documento.Edit;
        documento.FieldByName('Recursividad').AsInteger := diasAviso;

        if indiceDelCombo = 0 then
          documento.FieldByName('Medida').AsString := 'Dias'
//        else if indiceDelCombo = 1 then
//          documento.FieldByName('Medida').AsString := 'Semanas'
        else if indiceDelCombo = 1 then
          documento.FieldByName('Medida').AsString := 'Meses'
        else if indiceDelCombo = 2 then
          documento.FieldByName('Medida').AsString := 'Anos';

        documento.Post;
        documento.ApplyUpdates;
      end;
    finally
      documento.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.ActualizarObjetosAntecedentes;
var
  Cursor : TCursor;
  indiceArray, topCheckBox, topLabelAntecedentes, topCajaTextoAntecedentes : Integer;
  ResultadoAntecedentes, EspecificacionesAntecedentes : string;
begin
  //Actualiza los Objetos que se crean en el catalogo de Antecedentes
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if Not zqryCatalogoAntecedentes.Active then
      begin
        if not CargarDatosFiltrados(zqryCatalogoAntecedentes, 'idTipoExamen_Medico', [3]) then
          raise EInteliException.CreateByCode(6, ['Tipo', 'rhu_catalogoexamenmedico']);

        if zqryCatalogoAntecedentes.Active then
          zqryCatalogoExamenMedico.Refresh
        else
          zqryCatalogoAntecedentes.Open;
      end;

      //Destruir los CheckBox que esten creados
      Antecedentes.RedimensionarArrayCheckBox(zqryCatalogoAntecedentes.RecordCount + 1);
      indiceArray := 0;
      if zqryCatalogoAntecedentes.RecordCount > 0 then
      begin
        zqryCatalogoAntecedentes.First;
        while Not zqryCatalogoAntecedentes.Eof do
        begin
          if Antecedentes.checkBoxAntecedentes[indiceArray] <> nil then
          begin
            Antecedentes.checkBoxAntecedentes[indiceArray].Destroy;
            Antecedentes.checkBoxAntecedentes[indiceArray]  := nil;
          end;
          if Antecedentes.labelEspecificar[indiceArray] <> nil then
          begin
            Antecedentes.labelEspecificar[indiceArray].Destroy;
            Antecedentes.labelEspecificar[indiceArray] :=  nil;
          end;
          if Antecedentes.cajaTextoEspecificar[indiceArray] <> nil then
          begin
            Antecedentes.cajaTextoEspecificar[indiceArray].Destroy;
            Antecedentes.cajaTextoEspecificar[indiceArray] :=  nil;
          end;

          indiceArray := indiceArray + 1;
          zqryCatalogoAntecedentes.Next;
        end;
      end;

      if Antecedentes.checkBoxAntecedentes[indiceArray] <> nil then
      begin
        Antecedentes.checkBoxAntecedentes[indiceArray].Destroy;
        Antecedentes.checkBoxAntecedentes[indiceArray] :=  nil;
      end;
      if Antecedentes.labelEspecificar[indiceArray] <> nil then
      begin
        Antecedentes.labelEspecificar[indiceArray].Destroy;
        Antecedentes.labelEspecificar[indiceArray] :=  nil;
      end;
      if Antecedentes.cajaTextoEspecificar[indiceArray] <> nil then
      begin
        Antecedentes.cajaTextoEspecificar[indiceArray].Destroy;
        Antecedentes.cajaTextoEspecificar[indiceArray] :=  nil;
      end;

      indiceArray := 0;
      topCheckBox := 5;
      topLabelAntecedentes     := 25;
      topCajaTextoAntecedentes := 24;

      zqryCatalogoAntecedentes.First;
      while not zqryCatalogoAntecedentes.Eof do
      begin
        ResultadoAntecedentes := '';
        EspecificacionesAntecedentes := '';

        ResultadoAntecedentes := obtenerResultadoAntecedentes(zqryCatalogoAntecedentes.FieldByName('idcatalogoexamenmedico').AsInteger,
                                                              zqryPersonal.FieldByName('idPersonal').AsInteger,
                                                              zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                                              3, 'ResultadoAntecedentes');

        EspecificacionesAntecedentes := obtenerResultadoAntecedentes(zqryCatalogoAntecedentes.FieldByName('idcatalogoexamenmedico').AsInteger,
                                                              zqryPersonal.FieldByName('idPersonal').AsInteger,
                                                              zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                                              3, 'EspecificacionesAntecedentes');


        crearObjetosAntecedentes(panelScrollAntecedentes, zqryCatalogoAntecedentes.FieldByName('codigo').AsString,
                                zqryCatalogoAntecedentes.FieldByName('Descripcion').AsString, ResultadoAntecedentes,
                                EspecificacionesAntecedentes,  topCheckBox,
                                topLabelAntecedentes, topCajaTextoAntecedentes, indiceArray);

        indiceArray :=  indiceArray + 1;
        topCheckBox := topCheckBox + 40;
        topLabelAntecedentes     :=     topLabelAntecedentes + 40;
        topCajaTextoAntecedentes := topCajaTextoAntecedentes + 40;
        zqryCatalogoAntecedentes.Next;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.actualizarObjetosAntidoping;
var
  Cursor : TCursor;
  topLabel, topComboBox, indiceArrays : integer;
begin
  //Actualiza los objetos de la pestana Antidoping segun sean los registros del catalogo de antidoping
  //Crea los objetos necesarios en tiempo de ejecucion
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      Antidoping.RedimensionarArraysAntidoping(zqryCatalogoExamenMedico.RecordCount + 1);
      indiceArrays := 0;
      if zqryCatalogoExamenMedico.RecordCount > 0 then
      begin
        zqryCatalogoExamenMedico.First;
        while Not zqryCatalogoExamenMedico.Eof do
        begin
          //Destruir objetos que el usuario creo para el catalogo de Antidoping
          if Antidoping.labelsIndicativosAntidoping[indiceArrays] <> nil then
          begin
            Antidoping.labelsIndicativosAntidoping[indiceArrays].Destroy;
            Antidoping.labelsIndicativosAntidoping[indiceArrays] :=  nil;
          end;

          if Antidoping.comboBoxAntidoping[indiceArrays] <> nil then
          begin
            Antidoping.comboBoxAntidoping[indiceArrays].Destroy;
            Antidoping.comboBoxAntidoping[indiceArrays] :=  nil;
          end;

          indiceArrays := indiceArrays + 1;
          zqryCatalogoExamenMedico.Next;
        end;
      end;

      if Antidoping.labelsIndicativosAntidoping[indiceArrays] <> nil then
      begin
        Antidoping.labelsIndicativosAntidoping[indiceArrays].Destroy;
        Antidoping.labelsIndicativosAntidoping[indiceArrays] :=  nil;
      end;

      if Antidoping.comboBoxAntidoping[indiceArrays] <> nil then
      begin
        Antidoping.comboBoxAntidoping[indiceArrays].Destroy;
        Antidoping.comboBoxAntidoping[indiceArrays] :=  nil;
      end;

      if zqryCatalogoExamenMedico.RecordCount > 0 then  //Si hay registros de Antidoping
      begin
        indiceArrays :=  0;
        topLabel     :=  5;
        topComboBox  :=  4;

        zqryCatalogoExamenMedico.First;
        while Not zqryCatalogoExamenMedico.Eof do
        begin
          crearObjetosDelCatalogoAntidoping(panelScrollAntidoping,
                                            zqryCatalogoExamenMedico.FieldByName('Descripcion').AsString,
                                            zqryCatalogoExamenMedico.FieldByName('codigo').AsString,
                                            obtenerResultadoAntidoping(2, zqryPersonal.FieldByName('idPersonal').AsInteger,
                                            zqryCatalogoExamenMedico.FieldByName('codigo').AsString, DatetoStrSql(schedulerFechas.SelStart)),
                                            topLabel, topComboBox, indiceArrays);

          indiceArrays := indiceArrays + 1;
          topLabel     :=    topLabel + 20;
          topComboBox  := topComboBox + 20;
          zqryCatalogoExamenMedico.Next;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.actualizarObjetosDocumentos;
var
  Cursor : TCursor;
  (*i,*) topLabel, topBoton, indiceArray : Integer;
  fechaInicioVigencia, fechaTerminoVigencia : string;
  archivoExiste : Boolean;
begin
  //Actualiza los objetos que se crean en tiempo de ejecucion de la pestana de Documentos
  try
    //Screen.Cursor := crDefault;
    try
      //Screen.Cursor := crAppStart;
      destruirObjetosVigenciasDocumentosTodos;

      Documentos.RedimensionarArraysDocumentos(zqryCatalogoDocumentosUPDATE.RecordCount + 1);

      destruirObjetosDocumentos;

      topLabel := 8;
      topBoton := 4;
      indiceArray := 0;

      //Crear objetos en tiempo de ejecucion conforme a los registros que haya en zqryCatalogoDocuimentosUPDATE
      zqryCatalogoDocumentosUPDATE.First;
      while Not zqryCatalogoDocumentosUPDATE.Eof do
      begin
        fechaInicioVigencia  := '';
        fechaTerminoVigencia := '';

        fechaInicioVigencia := fechaInicioTerminoDoctos(zqryCatalogoDocumentosUPDATE.FieldByName('idDocumento').AsInteger,
                                                        zqryPersonal.FieldByName('idPersonal').AsInteger, 'fechaInicioVigencia');

        fechaTerminoVigencia := fechaInicioTerminoDoctos(zqryCatalogoDocumentosUPDATE.FieldByName('idDocumento').AsInteger,
                                                        zqryPersonal.FieldByName('idPersonal').AsInteger, 'fechaTerminoVigencia');

        archivoExiste := False;
        archivoExiste := tieneArchivo(zqryCatalogoDocumentosUPDATE.FieldByName('idDocumento').AsInteger,
                                                        zqryPersonal.FieldByName('idPersonal').AsInteger);

        crearObjetosDocumentos(panelScrollDocumentos, zqryCatalogoDocumentosUPDATE.FieldByName('nombreDocumento').AsString,
                               zqryCatalogoDocumentosUPDATE.FieldByName('codigo').AsString, topLabel, topBoton, indiceArray,
                               fechaInicioVigencia, fechaTerminoVigencia, archivoExiste);

        topLabel := topLabel + 30;
        topBoton := topBoton + 30;
        indiceArray   :=  indiceArray + 1;
        zqryCatalogoDocumentosUPDATE.Next;
      end;
    finally
      //Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.actualizarObjetosExamenMedico;
var
  topLabel, topCajaTexto, indiceArrays : integer;
begin
  //Mostrar o quitar los objetos creados en ejecucion del catalogo de Examen Medico
  topLabel     := 25;
  topCajaTexto := 24;

  //Crear objetos en tiempo de ejecucion y mostrarlos conforme a los datos del catalogo de Examen Medico
  //(en otras palabras son los registros que el usuario creó)
  //if zqryCatalogoExamenMedico.RecordCount > 0 then
  //begin
    indiceArrays := 0;

    Evaluacion.Redimencionar(zqryCatalogoExamenMedico.RecordCount + 1);

    if zqryCatalogoExamenMedico.RecordCount > 0 then
    begin
      zqryCatalogoExamenMedico.First;
      while Not zqryCatalogoExamenMedico.Eof do
      begin
        //Destruir objetos que el usuario creo para el catalogo de examen medico
        if Evaluacion.objetosCajasTexto[indiceArrays] <> nil then
        begin
          Evaluacion.objetosCajasTexto[indiceArrays].Destroy;
          Evaluacion.objetosCajasTexto[indiceArrays] :=  nil;
        end;

        if Evaluacion.LabelsIndicativos[indiceArrays] <> nil then
        begin
          Evaluacion.LabelsIndicativos[indiceArrays].Destroy;
          Evaluacion.LabelsIndicativos[indiceArrays] :=  nil;
        end;

        if Evaluacion.LabelsMedidas[indiceArrays] <> nil then
        begin
          Evaluacion.LabelsMedidas[indiceArrays].Destroy;
          Evaluacion.LabelsMedidas[indiceArrays] :=  nil;
        end;

        indiceArrays := indiceArrays + 1;
        zqryCatalogoExamenMedico.Next;
      end;
    end;

    if Evaluacion.objetosCajasTexto[indiceArrays] <> nil then
    begin
      Evaluacion.objetosCajasTexto[indiceArrays].Destroy;
      Evaluacion.objetosCajasTexto[indiceArrays] :=  nil;
    end;

    if Evaluacion.LabelsIndicativos[indiceArrays] <> nil then
    begin
      Evaluacion.LabelsIndicativos[indiceArrays].Destroy;
      Evaluacion.LabelsIndicativos[indiceArrays] :=  nil;
    end;

    if Evaluacion.LabelsMedidas[indiceArrays] <> nil then
    begin
      Evaluacion.LabelsMedidas[indiceArrays].Destroy;
      Evaluacion.LabelsMedidas[indiceArrays] :=  nil;
    end;

    indiceArrays := 0;

    zqryCatalogoExamenMedico.First;
    while Not zqryCatalogoExamenMedico.Eof do
    begin
      crearObjetosExamenMedico(panelScroll,
                               zqryCatalogoExamenMedico.FieldByName('Descripcion').AsString,
                               zqryCatalogoExamenMedico.FieldByName('codigo').AsString,
                               obtenerResultadoExamenMedico(1, zqryPersonal.FieldByName('idPersonal').AsInteger,
                               zqryCatalogoExamenMedico.FieldByName('codigo').AsString, DatetoStrSql(schedulerFechas.SelStart)),
                               zqryCatalogoExamenMedico.FieldByName('medida').AsString,
                               topLabel,
                               topCajaTexto, indiceArrays);

      topLabel     :=     topLabel + 20;
      topCajaTexto := topCajaTexto + 20;

      indiceArrays := indiceArrays +  1;
      zqryCatalogoExamenMedico.Next;
    end;
  //end;
end;

procedure TFrmProgramaDeSalud.actualizarObjetosHistorial(idPersonal : Integer);
var
  Cursor : TCursor;
  topTituloExamen, topTipoExamen, topLabelFechaYCantidad, indiceArray: Integer;
  pintarTipoExamen : Boolean;
  resultado : string;
begin
  //Actualiza los objetos de la pestana Historial que se crean en tiempo de ejecucion
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if Not CargarDatosFiltrados(zqryCatalogoExamenMedicoCATALOGO, 'idcatalogoexamenmedico', [-1]) then
        raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

      if zqryCatalogoExamenMedicoCATALOGO.Active then
        zqryCatalogoExamenMedicoCATALOGO.Refresh
      else
        zqryCatalogoExamenMedicoCATALOGO.Open;

      //Destruir Objetos de la pestana Historial si es que existen
      //Historial.RedimensionarArraysHistorial(zqryCatalogoExamenMedicoCATALOGO.RecordCount);
      destruirObjetosPestanaExamenMedico;
      destruirObjetosHistorial;

      topTituloExamen :=  15;
      topTipoExamen   :=  35;
      topLabelFechaYCantidad := 50;
      indiceArray     :=   0;

      if zqryCatalogoExamenMedicoCATALOGO.RecordCount > 0 then
      begin
        if not AsignarSentencia(zqryProgramaRecursivoSELECT, 'rhu_programarecursivo', ccSelect) then
            raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

        if Not CargarDatosFiltrados(zqryProgramaRecursivoSELECT, 'idProgramaRecursivo', [-1]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'rhu_programarecursivo']);

        if zqryProgramaRecursivoSELECT.Active then
            zqryProgramaRecursivoSELECT.Refresh
        else
          zqryProgramaRecursivoSELECT.Open;

        if zqryProgramaRecursivoSELECT.RecordCount > 0 then
        begin
          Historial.RedimensionarArraysHistorial(zqryProgramaRecursivoSELECT.RecordCount);
        end;

        zqryCatalogoExamenMedicoCATALOGO.First;
        while Not zqryCatalogoExamenMedicoCATALOGO.Eof do
        begin
          pintarTipoExamen := True;

          if Not CargarDatosFiltrados(zqryProgramaRecursivoSELECT, 'idPersonal, idcatalogoexamenmedico',
                                                      [idPersonal, zqryCatalogoExamenMedicoCATALOGO.FieldByName('idcatalogoexamenmedico').AsInteger]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'rhu_programarecursivo']);
            
          if zqryProgramaRecursivoSELECT.Active then
            zqryProgramaRecursivoSELECT.Refresh
          else
            zqryProgramaRecursivoSELECT.Open;

          if zqryProgramaRecursivoSELECT.RecordCount > 0 then
          begin
            while Not zqryProgramaRecursivoSELECT.Eof do
            begin
              if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
                resultado := FloatToStr(zqryProgramaRecursivoSELECT.FieldByName('ResultadoEstudioExamen').AsFloat) + ' ' +
                              zqryProgramaRecursivoSELECT.FieldByName('Medida').AsString
              else if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
                resultado := zqryProgramaRecursivoSELECT.FieldByName('ResultadoDopaje').AsString
              else if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 3 then
              begin
                if zqryProgramaRecursivoSELECT.FieldByName('EspecificacionesAntecedentes').AsString <> '' then
                begin
                  resultado := zqryProgramaRecursivoSELECT.FieldByName('ResultadoAntecedentes').AsString + ' - ' +
                               zqryProgramaRecursivoSELECT.FieldByName('EspecificacionesAntecedentes').AsString;
                end
                else
                begin
                  resultado := zqryProgramaRecursivoSELECT.FieldByName('ResultadoAntecedentes').AsString;
                end;
              end;

              if pintarTipoExamen = True then
              begin
                topTipoExamen := topLabelFechaYCantidad;
                topLabelFechaYCantidad := topLabelFechaYCantidad + 20;
              end;

              crearObjetosHistorial(panelScrollHistorial, zqryProgramaRecursivoSELECT.FieldByName('Titulo').AsString,
                                    zqryProgramaRecursivoSELECT.FieldByName('Descripcion').AsString,
                                    DateToStr(zqryProgramaRecursivoSELECT.FieldByName('fechaProgramada').AsDateTime),
                                    resultado, zqryProgramaRecursivoSELECT.FieldByName('codigo').AsString,
                                    topTituloExamen, topTipoExamen, topLabelFechaYCantidad, indiceArray,
                                    zqryProgramaRecursivoSELECT.FieldByName('idTipoExamen_Medico').AsInteger, pintarTipoExamen);

              topTituloExamen := topTituloExamen + 30;
              //topTipoExamen   :=   topTipoExamen + 40;
              topLabelFechaYCantidad := topLabelFechaYCantidad + 20;
              indiceArray     :=      indiceArray + 1;

              pintarTipoExamen := False;

              zqryProgramaRecursivoSELECT.Next;
            end;
          end;

          zqryCatalogoExamenMedicoCATALOGO.Next;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.actualizarObjetosVigenciasDocumentosTodos;
var
  indiceArray, topLabel, topSpin, diasDeAviso : Integer;
  Medida : string;
begin
  //Actualiza los objetos que se crean en tiempo de ejecucion de la pestana Vigencias en la subpestana
  //Documentos
  try
    traerTodoCatalogoDocumentos;

    destruirObjetosDocumentos;

    //Destruir cualquier objeto que pudiera estar creado
    Vigencias.RedimensionarArraysVigenciasDocumentos(zqryCatalogoDocumentosUPDATE.RecordCount + 1);

    destruirObjetosVigenciasDocumentosTodos;

    topLabel := 5;
    topSpin  := 4;
    indiceArray := 0;

    zqryCatalogoDocumentosUPDATE.First;
    while Not zqryCatalogoDocumentosUPDATE.Eof do
    begin

      diasDeAviso := StrToInt(obtenerDiasDeAviso(zqryCatalogoDocumentosUPDATE.FieldByName('codigo').AsString, 'Recursividad'));

      Medida := obtenerDiasDeAviso(zqryCatalogoDocumentosUPDATE.FieldByName('codigo').AsString, 'Medida');

      crearObjetosVigenciasDocumentos(panelScrollVigenciasDocumentosTodos,
                                      zqryCatalogoDocumentosUPDATE.FieldByName('nombreDocumento').AsString,
                                      zqryCatalogoDocumentosUPDATE.FieldByName('codigo').AsString, diasDeAviso,
                                      Medida, topLabel, topSpin, indiceArray);

      topLabel := topLabel + 20;
      topSpin  :=  topSpin + 20;
      indiceArray  :=   indiceArray + 1;
      zqryCatalogoDocumentosUPDATE.Next;
    end;

    actualizarPestanVigencia := False;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.AntecedenteEvaluado(idProgramaRecursivo,
  idPersonal, idTipoExamen_Medico, idcatalogoexamenmedico: Integer): Boolean;
var
  examenMedico : TZQuery;
begin
  //Devuelve True si el antecedente ya fue evaluado, False si no fue evaluado
  try
    try
      examenMedico := TZQuery.Create(Self);

      if Not AsignarSentencia(examenMedico, 'rhu_examenmedico', ccCatalog) then
        raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

      if not CargarDatosFiltrados(examenMedico, 'idExamenMedico, ResultadoAntecedentes, idProgramaRecursivo, fechaProgramada, ' +
                                  'Status, idPersonal, idcargo, idcatalogoexamenmedico, codigo, ValorMinimo, ValorMaximo, ' +
                                  'Medida, idTipoExamen_Medico, Recursividad, MedidaTipoExamen',
                              [-1, 'Si', idProgramaRecursivo, -1, -1, idPersonal, -1, idcatalogoexamenmedico, -1,
                              -1, -1, -1, idTipoExamen_Medico, -1, -1]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'idPersonal', 'idTipoExamen_Medico', 'rhu_examenmedico']);

      examenMedico.Open;

      if examenMedico.RecordCount > 0 then
      begin
        if Trim(examenMedico.FieldByName('EspecificacionesAntecedentes').AsString) <> '' then
        begin
          cdDatosParaReporteAntecedente.FieldByName('EtiquetaEspecificar').AsString := 'Especificar ';
          cdDatosParaReporteAntecedente.FieldByName('EspecificacionesAntecedentes').AsString  := examenMedico.FieldByName('EspecificacionesAntecedentes').AsString;
        end;
        Result := True;
      end
      else
        Result := False;
      
    finally
      examenMedico.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.AsignarSentenciasDatasetsDocumentos;
begin
  //Crear Conjunto de los datasets que se utilizaran para la pesrtana de documentos
  try
    if Not AsignarSentencia(zqryCatalogoDocumentosUPDATE, 'rhu_documento_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_documento_medico']);

    if Not AsignarSentencia(zqryDoctosXCargoUPDATE, 'rhu_doctosxcargo_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_doctosxcargo_medico']);
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarCatalogoAntecedentesClick(
  Sender: TObject);
var
  error : Boolean;
begin
  //Guardar el registro, ya sea Crearlo o Editandolo
  try
    error := False;
    if edtCodigoAntecedentes.Text = '' then
    begin
      MessageDlg('¡El campo código no debe estar vacío!', mtInformation, [mbOk], 0);
      error := True;
      edtCodigoAntecedentes.SetFocus;
    end else if edtDescripcionAntecedentes.Text = '' then
    begin
      MessageDlg('¡El campo descripción no debe estar vacío!', mtInformation, [mbOk], 0);
      error := True;
      edtDescripcionAntecedentes.SetFocus;
    end else if (codigoExiste(edtCodigoAntecedentes.Text) = True) and (modoInsercionActivado) then
    begin
      MessageDlg('¡El Código que ha ingresado ya existe, escriba otro!', mtInformation, [mbOk], 0);
      edtCodigoAntecedentes.SetFocus;
      error := True;
    end else if (CodigoAntecedentesAntesDeGuardar <> edtCodigoAntecedentes.Text) and (codigoExiste(edtCodigoAntecedentes.Text) = True) then
    begin
      MessageDlg('¡El Código que ha ingresado ya existe, escriba otro!', mtInformation, [mbOk], 0);
      edtCodigoAntecedentes.SetFocus;
      error := True;
    end;
  
    if Not error then
    begin  
      zqryCatalogoAntecedentes.Post;
      zqryCatalogoAntecedentes.ApplyUpdates;

      MessageDlg('¡Proceso realizado correctamente!', mtInformation, [mbOK], 0);

      ActualizarObjetosAntecedentes;

      formularioInsertarCatalogo.Close;
      zqryCatalogoAntecedentes.Refresh;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarCatalogoDocumentosClick(
  Sender: TObject);
var
  Cursor : TCursor;
  error  : Boolean;
begin
  //Guardar el registro en el catalogo de documentos de la consulta rhu_documento_medico(en la tabla rhu_documento)
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      error := False;

      if edtCodigoDocumento.Text = '' then
      begin
        MessageDlg('¡El campo código no debe estar vacío!', mtInformation, [mbOk], 0);
        error := True;
        edtCodigoDocumento.SetFocus;
      end else if edtDocumento.Text = '' then
      begin
        MessageDlg('¡El campo documento no debe estar vacío!', mtInformation, [mbOk], 0);
        error := True;
        edtDocumento.SetFocus;
      end else if (modoInsercionDocumentoActivado = True) and ((codigoExiste(edtCodigoDocumento.Text) = True) or
                  (codigoDocumentoExiste(edtCodigoDocumento.Text) = True)) then
      begin
        MessageDlg('¡Código no aceptado, escriba otro!', mtInformation, [mbOk], 0);
        error := True;
        edtCodigoDocumento.SetFocus;
      end else if (codigoDocumentoAntesDeGuardar <> edtCodigoDocumento.Text) and ((codigoExiste(edtCodigoDocumento.Text) = True) or
                   (codigoDocumentoExiste(edtCodigoDocumento.Text))) then
      begin
        MessageDlg('¡Código no aceptado, escriba otro!', mtInformation, [mbOk], 0);
        error := True;
        edtCodigoDocumento.SetFocus;
      end;

      if Not error then
      begin
        zqryCatalogoDocumentosUPDATE.Post;
        zqryCatalogoDocumentosUPDATE.ApplyUpdates;

        MessageDlg('¡Guardado correctamente!', mtInformation, [mbOk], 0);
        zqryCatalogoDocumentosUPDATE.Refresh;

        formularioInsertarCatalogo.Close;

        actualizarObjetosDocumentos;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarCatalogoExamenMedicoClick(Sender: TObject);
var
  Cursor : TCursor;
  error  :  Boolean;
begin
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      error := False;

      if pageTipoExamen.ActivePage = pageFormularioExamenMedico then    //Validar los campos para el formulario donde se agregan
      begin                                                             //valores al catalogo de Examen Medico
        if spinValorMinimo.Value > spinValorMaximo.Value then
        begin
          error := True;
          MessageDlg('¡El valor Mínimo no puede ser mayor que el valor Máximo!', mtInformation, [mbOk], 0);
          spinValorMinimo.SetFocus;
        end
        else if edtCodigo.Text = '' then
        begin
          MessageDlg('¡El campo código no debe estar vacío!', mtInformation, [mbOk], 0);
          error := True;
          edtCodigo.SetFocus;
        end else if edtDescripcion.Text = '' then
        begin
          MessageDlg('¡El campo descripción no debe estar vacío!', mtInformation, [mbOk], 0);
          error := True;
          edtDescripcion.SetFocus;
        end else if spinValorMinimo.Value = 0 then
        begin
          MessageDlg('¡El valor mínimo no debe ser cero!', mtInformation, [mbOk], 0);
          error := True;
          spinValorMinimo.SetFocus;
        end else if spinValorMaximo.Value = 0 then
        begin
          MessageDlg('¡El valor máximo no debe ser cero!', mtInformation, [mbOk], 0);
          error := True;
          spinValorMaximo.SetFocus
        end else if edtMedida.Text = '' then
        begin
          MessageDlg('¡El campo medida no debe estar vacío!', mtInformation, [mbOk], 0);
          error := True;
          edtMedida.SetFocus;
        end else if (codigoExiste(edtCodigo.Text) = True) and (modoInsercionActivado) then
        begin
          MessageDlg('¡El Código que ha ingresado ya existe, escriba otro!', mtInformation, [mbOk], 0);
          edtCodigo.SetFocus;
          error := True;
        end else if (CodigoAntesDeGuardar <> edtCodigo.Text) and (codigoExiste(edtCodigo.Text) = True) then
        begin
          MessageDlg('¡El Código que ha ingresado ya existe, escriba otro!', mtInformation, [mbOk], 0);
          edtCodigo.SetFocus;
          error := True;
        end;
      end else if pageTipoExamen.ActivePage = pageAntidoping then  //Validar los campos para el formulario donde se agregan
      begin                                                        //valores al catalogo de Antidoping
        if edtCodigoAntidoping.Text = '' then
        begin
          MessageDlg('¡El campo código no debe estar vacío!', mtInformation, [mbOk], 0);
          error := True;
          edtCodigoAntidoping.SetFocus;
        end else if edtDescripcionAntidoping.Text = '' then
        begin
          MessageDlg('¡El campo descripción no debe estar vacío!', mtInformation, [mbOk], 0);
          error := True;
          edtDescripcionAntidoping.SetFocus;
        end else if (codigoExiste(edtCodigoAntidoping.Text) = True) and (modoInsercionActivado) then
        begin
          MessageDlg('¡El Código que ha ingresado ya existe, escriba otro!', mtInformation, [mbOk], 0);
          edtCodigoAntidoping.SetFocus;
          error := True;
        end else if (CodigoAntidopingAntesDeGuardar <> edtCodigoAntidoping.Text) and (codigoExiste(edtCodigoAntidoping.Text) = True) then
        begin
          MessageDlg('¡El Código que ha ingresado ya existe, escriba otro!', mtInformation, [mbOk], 0);
          edtCodigoAntidoping.SetFocus;
          error := True;
        end;
      end;

      if Not error then
      begin
        zqryCatalogoExamenMedico.Post;
        MessageDlg('¡Proceso realizado correctamente!', mtInformation, [mbOK], 0);
        zqryCatalogoExamenMedico.ApplyUpdates;
        formularioInsertarCatalogo.Close;
        zqryCatalogoExamenMedico.Refresh;

        if pageTipoExamen.ActivePage = pageFormularioExamenMedico then
          actualizarObjetosExamenMedico
        else if pageTipoExamen.ActivePage = pageAntidoping then
          actualizarObjetosAntidoping;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarDocumentosMedicosClick(Sender: TObject);
var
  Cursor : TCursor;
  indiceArray, noInsertados, fechasInvalidas: Integer;
  blobField : TBlobField;
begin
  //Guardar la fecha de Inicio de Vigencia y la fecha de Termino de la vigencia(PENDIENTE LA SUBIDA DEL ARCHIVO)
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      traerTodoDoctosXCargo;

      if Length(Documentos.botonArchivo) > 0 then  //Si hay objetos de documentos creados entonces realizar la insercion
      begin
        fechasInvalidas := 0;
        //Si alguna feha de Inicio es Mayor a una Fecha de Termino, enotnces no hacer Nada
        for indiceArray := 0 to Length(Documentos.botonArchivo) - 1 do
        begin
          if (Documentos.calendarioInicioVigencia[indiceArray] <> nil) and
              (Documentos.calendarioTerminoVigencia[indiceArray] <> nil) then
          begin
            if (Documentos.calendarioInicioVigencia[indiceArray].EditText <> '') and
                (Documentos.calendarioTerminoVigencia[indiceArray].EditText <> '') then
            begin
              if (Documentos.calendarioInicioVigencia[indiceArray].Date) > (Documentos.calendarioTerminoVigencia[indiceArray].Date) then
              begin
                fechasInvalidas := fechasInvalidas + 1;
              end;
            end;
          end;
        end;

        if fechasInvalidas = 0 then
        begin
          noInsertados := 0;
          for indiceArray := 0 to Length(Documentos.botonArchivo) - 1 do
          begin
            if (Documentos.calendarioInicioVigencia[indiceArray] <> nil) and
                (Documentos.calendarioTerminoVigencia[indiceArray] <> nil) then
            begin
              if (Documentos.calendarioInicioVigencia[indiceArray].EditText <> '') and
                  (Documentos.calendarioTerminoVigencia[indiceArray].EditText <> '') then
              begin
                //Comprobar si ya se le ha asignado un documento a un empleado
                if documentoAsignadoAEmpleado(obtenerIdDocumento(Documentos.botonArchivo[indiceArray].Name), zqryPersonal.FieldByName('idPersonal').AsInteger) then
                begin
                  //Editar el registro
                  editarDoctosXCargo(obtenerIdDocumento(Documentos.botonArchivo[indiceArray].Name), zqryPersonal.FieldByName('idPersonal').AsInteger,
                                     DatetoStr(Documentos.calendarioInicioVigencia[indiceArray].Date),
                                     DatetoStr(Documentos.calendarioTerminoVigencia[indiceArray].Date),
                                     Documentos.botonArchivo[indiceArray].Description);
                  noInsertados := noInsertados + 1;
                end
                else
                begin
                  //Crear un nuevo registro
                  //Guardar de fila en fila
                  zqryDoctosXCargoUPDATE.Append;
                  zqryDoctosXCargoUPDATE.FieldByName('idDoctosxCargo').AsInteger := 0;
                  zqryDoctosXCargoUPDATE.FieldByName('idPersonal').AsInteger := zqryPersonal.FieldByName('idPersonal').AsInteger;
                  zqryDoctosXCargoUPDATE.FieldByName('idDocumento').AsInteger := obtenerIdDocumento(Documentos.botonArchivo[indiceArray].Name);
                  zqryDoctosXCargoUPDATE.FieldByName('obligatorio').AsString := 'No';
                  zqryDoctosXCargoUPDATE.FieldByName('idimagen').AsInteger   :=    0;
                  zqryDoctosXCargoUPDATE.FieldByName('fechaInicioVigencia').AsDateTime  :=  Documentos.calendarioInicioVigencia[indiceArray].Date;
                  zqryDoctosXCargoUPDATE.FieldByName('fechaTerminoVigencia').AsDateTime := Documentos.calendarioTerminoVigencia[indiceArray].Date;
                  zqryDoctosXCargoUPDATE.FieldByName('fechaExpedicion').AsDateTime := Now;

                  if ExtractFileExt(Documentos.botonArchivo[indiceArray].Description) = '.pdf' then
                  begin
                    zqryDoctosXCargoUPDATE.FieldByName('extensionArchivo').AsString := 'pdf'
                  end else if (ExtractFileExt(Documentos.botonArchivo[indiceArray].Description) = '.jpg')  or
                              (ExtractFileExt(Documentos.botonArchivo[indiceArray].Description) = '.jpeg') then
                  begin
                    zqryDoctosXCargoUPDATE.FieldByName('extensionArchivo').AsString := 'jpg';
                  end;

                  if Documentos.botonArchivo[indiceArray].Description <> '' then
                  begin
                    blobField := zqryDoctosXCargoUPDATE.FieldByName('archivo') as TBlobField;
                    blobField.LoadFromFile(Documentos.botonArchivo[indiceArray].Description);
                  end;

                  zqryDoctosXCargoUPDATE.Post;
                  zqryDoctosXCargoUPDATE.ApplyUpdates;

                  noInsertados := noInsertados + 1;
                end;
              end;
            end;
          end;

          if noInsertados > 0 then
          begin
            MessageDlg('¡Procesado correctamente!', mtInformation, [mbOK], 0);
            RibbonMenuPrincipal.ActiveTab := tdxFechasProgramadas;
            revizarDocumentosVencidos;
          end;
        end
        else
        begin
          MessageDlg('¡Hay fechas de Inicio que son mayores a las fechas de Término, el proceso no se realizó!', mtInformation, [mbOk], 0);
        end;
      end
      else
      begin
        MessageDlg('¡No hay Datos para realizar la Inserción!', mtInformation, [mbOk], 0);
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarExamenMedicoClick(Sender: TObject);
var
  indiceArray : Integer;
  ResultadoAntecedentes, EspecificacionesAntecedentes : string;
begin
  //Guardar el Examen Medico en caso de que ya se evaluo al empleado, si no entonces crear la evaluacion
  //conforme el usuario haya metido los datos necesarios en las cajas de texto
  try
    {$REGION 'GUARDAREXAMENMEDICO'}
    //Filtrar el examen medico
    if Not CargarDatosFiltrados(zqryExamenMedicoUPDATE, 'idProgramaRecursivo', [zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger]) then
      raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

    if zqryExamenMedicoUPDATE.Active then
      zqryExamenMedicoUPDATE.Refresh
    else
      zqryExamenMedicoUPDATE.Open;

    if zqryExamenMedicoUPDATE.RecordCount > 0 then  //Si el examen medico ya ha sido evaluado, entonces
    begin
      //Editar la evaluacion para Examen Medico
      for indiceArray := 0 to Length(Evaluacion.objetosCajasTexto) - 2 do
      begin
        if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, valorMinimo, idTipoExamen_Medico', [-1, Evaluacion.objetosCajasTexto[indiceArray].Name, -1, 1]) then
          raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

        if zqryCatalogoExamenMedico.Active then
          zqryCatalogoExamenMedico.Refresh
        else
          zqryCatalogoExamenMedico.Open;

        if zqryCatalogoExamenMedico.RecordCount > 0 then
        begin
          if not CargarDatosFiltrados(zqryExamenMedicoUPDATE, 'idExamenMedico, idProgramaRecursivo, ' +
                                                              'idcatalogoexamenmedico, ResultadoDopaje',
                                                              [-1, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                                              zqryCatalogoExamenMedico.FieldByName('idcatalogoexamenmedico').AsInteger, -1]) then
            raise EInteliException.CreateByCode(6, ['idProgramRecursivo', 'idcatalogoexamenmedico', '']);

          if zqryExamenMedicoUPDATE.Active then
            zqryExamenMedicoUPDATE.Refresh
          else
            zqryExamenMedicoUPDATE.Open;

          if zqryExamenMedicoUPDATE.RecordCount > 0 then
          begin
            zqryExamenMedicoUPDATE.Edit;
            zqryExamenMedicoUPDATE.FieldByName('ResultadoEstudioExamen').AsFloat := StrToFloat(Evaluacion.objetosCajasTexto[indiceArray].Text);
            zqryExamenMedicoUPDATE.Post;
            zqryExamenMedicoUPDATE.ApplyUpdates;
          end
          else
          begin
            insertarExamenMedicoIndividual(zqryCatalogoExamenMedico, 1, zqryExamenMedicoUPDATE, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                        Evaluacion.objetosCajasTexto[indiceArray].Name, Evaluacion.objetosCajasTexto[indiceArray].Text);
          end;
        end;
      end;

      //Editar la evaluacion Antidoping
      for indiceArray := 0 to Length(Antidoping.comboBoxAntidoping) - 2 do
      begin
        //if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'codigo', [Antidoping.comboBoxAntidoping[indiceArray].Name]) then
          //raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

        if Antidoping.comboBoxAntidoping[indiceArray] <> nil then
        begin
          
          if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, valorMinimo, idTipoExamen_Medico', [-1, Antidoping.comboBoxAntidoping[indiceArray].Name, -1, 2]) then
            raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

          if zqryCatalogoExamenMedico.Active then
            zqryCatalogoExamenMedico.Refresh
          else
            zqryCatalogoExamenMedico.Open;

          if zqryCatalogoExamenMedico.RecordCount > 0 then
          begin
            if not CargarDatosFiltrados(zqryExamenMedicoUPDATE, 'idExamenMedico, idProgramaRecursivo, ' +
                                                                'idcatalogoexamenmedico, ResultadoDopaje',
                                                                [-1, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                                                zqryCatalogoExamenMedico.FieldByName('idcatalogoexamenmedico').AsInteger, -1]) then
              raise EInteliException.CreateByCode(6, ['idProgramRecursivo', 'idcatalogoexamenmedico', '']);

            if zqryExamenMedicoUPDATE.Active then
              zqryExamenMedicoUPDATE.Refresh
            else
              zqryExamenMedicoUPDATE.Open;

            if zqryExamenMedicoUPDATE.RecordCount > 0 then
            begin
              zqryExamenMedicoUPDATE.Edit;
              zqryExamenMedicoUPDATE.FieldByName('ResultadoDopaje').AsString := Antidoping.comboBoxAntidoping[indiceArray].Text;
              zqryExamenMedicoUPDATE.Post;
              zqryExamenMedicoUPDATE.ApplyUpdates;
            end
            else
            begin
              insertarAntidopingIndividual(zqryCatalogoExamenMedico, 2, zqryExamenMedicoUPDATE,
                                          zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                          Antidoping.comboBoxAntidoping[indiceArray].Name,
                                          Antidoping.comboBoxAntidoping[indiceArray].Text);
            end;
          end;
        end;
      end;

      //Editar los Antecedentes Medicos
      for indiceArray := 0 to Length(Antecedentes.checkBoxAntecedentes) - 2 do
      begin
        if Not CargarDatosFiltrados(zqryCatalogoAntecedentes, 'codigo', [Antecedentes.checkBoxAntecedentes[indiceArray].Name]) then
          raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

        if zqryCatalogoAntecedentes.Active then
          zqryCatalogoAntecedentes.Refresh
        else
          zqryCatalogoAntecedentes.Open;

        if zqryCatalogoAntecedentes.RecordCount > 0 then
        begin
          if not CargarDatosFiltrados(zqryExamenMedicoUPDATE, 'idExamenMedico, idProgramaRecursivo, ' +
                                                            'idcatalogoexamenmedico, ResultadoDopaje',
                                                            [-1, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                                            zqryCatalogoAntecedentes.FieldByName('idcatalogoexamenmedico').AsInteger, -1]) then
            raise EInteliException.CreateByCode(6, ['idProgramRecursivo', 'idcatalogoexamenmedico', '']);

          if zqryExamenMedicoUPDATE.Active then
            zqryExamenMedicoUPDATE.Refresh
          else
            zqryExamenMedicoUPDATE.Open;

          if zqryExamenMedicoUPDATE.RecordCount > 0 then
          begin
            zqryExamenMedicoUPDATE.Edit;

            if Antecedentes.checkBoxAntecedentes[indiceArray].Checked then
              zqryExamenMedicoUPDATE.FieldByName('ResultadoAntecedentes').AsString := 'Si'
            else
              zqryExamenMedicoUPDATE.FieldByName('ResultadoAntecedentes').AsString := 'No';

            zqryExamenMedicoUPDATE.FieldByName('EspecificacionesAntecedentes').AsString := Antecedentes.cajaTextoEspecificar[indiceArray].Text;

            zqryExamenMedicoUPDATE.Post;
            zqryExamenMedicoUPDATE.ApplyUpdates;
          end
          else
          begin //Si no existe en rhu_examen medico, entonces insertar uno individualmente
            if Antecedentes.checkBoxAntecedentes[indiceArray].Checked then
              ResultadoAntecedentes := 'Si'
            else
              ResultadoAntecedentes := 'No';

            EspecificacionesAntecedentes := Antecedentes.cajaTextoEspecificar[indiceArray].Text;

            insertarAntecedenteIndividual(zqryCatalogoAntecedentes, 3, zqryExamenMedicoUPDATE,
                                          zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger,
                                          Antecedentes.checkBoxAntecedentes[indiceArray].Name,
                                          ResultadoAntecedentes, EspecificacionesAntecedentes);
          end;

          if Not CargarDatosFiltrados(zqryCatalogoAntecedentes, 'codigo', [-1]) then
            raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

          if zqryCatalogoAntecedentes.Active then
            zqryCatalogoAntecedentes.Refresh
          else
            zqryCatalogoAntecedentes.Open;
         end;
      end;

      zqryPersonalUPDATE.FieldByName('gruposanguineo').AsString := edtGrupoSanguineo.Text;
      zqryPersonalUPDATE.Post;
      zqryPersonalUPDATE.ApplyUpdates;

      MessageDlg('¡Evaluación Actualizada Correctamente!', mtInformation, [mbOK], 0);

      RibbonMenuPrincipal.ActiveTab := tdxFechasProgramadas;
    end
    else   //Si no se ha realizado el examen medico, entonces crear el examen medico en la tabla rhu_examenmedico
    begin
      //Crear evaluacion Examen Medico
      insertarExamenMedico(Evaluacion.objetosCajasTexto, zqryCatalogoExamenMedico, 1, zqryExamenMedicoUPDATE, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger);

      //Crear evaluacion Antidoping
      insertarAntidoping(Antidoping.comboBoxAntidoping, zqryCatalogoExamenMedico, 2, zqryExamenMedicoUPDATE, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger);

      //Crear evaluacion Antecedentes
      insertarAntecedentes(Antecedentes.checkBoxAntecedentes, zqryCatalogoExamenMedico, 3, zqryExamenMedicoUPDATE, zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger, Antecedentes.cajaTextoEspecificar);

      zqryPersonalUPDATE.FieldByName('gruposanguineo').AsString := edtGrupoSanguineo.Text;
      zqryPersonalUPDATE.Post;
      zqryPersonalUPDATE.ApplyUpdates;

      MessageDlg('¡Evaluación guardada correctamente!', mtInformation, [mbOK], 0);

      RibbonMenuPrincipal.ActiveTab := tdxFechasProgramadas;
    end;

    //Editar las Observaciones de la tabla rhu_programarecursivo
    zqryProgramaRecursivo.Edit;
    zqryProgramaRecursivo.FieldByName('Observaciones').AsString := memoObservaciones.Text;
    zqryProgramaRecursivo.FieldByName('Status').AsString := 'Realizada';
    zqryProgramaRecursivo.Post;
    zqryProgramaRecursivo.ApplyUpdates;

    crearExcelExamenMedico := True;
    actualizarBotones;
    revisarFechasCaducadas;
    actualizarColores;

    //Traer todo el catalogo de examen medico ""OTRA VEZ para la pestana examen medico
    if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, 1]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if zqryCatalogoExamenMedico.Active then
      zqryCatalogoExamenMedico.Refresh
    else
      zqryCatalogoExamenMedico.Open;
    {$ENDREGION}
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarFirmantesClick(Sender: TObject);
var
  error : Boolean;
begin
  //Guardar la insersion o la edicion
  try
    error := False;
    //Validar que no se vayan vacios los campos
    if TDBFechaTDBFechaInicioFirmante.Text = '' then
    begin
      MessageDlg('¡El campo Inicio está vacío!', mtInformation, [mbOk], 0);
      error := True;
      TDBFechaTDBFechaInicioFirmante.SetFocus
    end else if TDBFechaTDBFechaTerminoFirmante.Text = '' then
    begin
      MessageDlg('¡El campo Término está vacío!', mtInformation, [mbOk], 0);
      error := True;
      TDBFechaTDBFechaTerminoFirmante.SetFocus;
    end else if edtFirmante1.Text = '' then
    begin
      MessageDlg('¡El campo Firmante 1 está vacío!', mtInformation, [mbOk], 0);
      error := True;
      edtFirmante1.SetFocus
    end else if edtPuesto1.Text = '' then
    begin
      MessageDlg('¡El campo Puesto está vacío!', mtInformation, [mbOk], 0);
      error := True;
      edtPuesto1.setFocus
    end else if edtFirmante2.Text = '' then
    begin
      MessageDlg('¡El campo Firmante 2 está vacío!', mtInformation, [mbOk], 0);
      error := True;
      edtFirmante2.SetFocus
    end else if edtPuesto2.Text = '' then
    begin
      MessageDlg('¡El campo Puesto está vacío!', mtInformation, [mbOk], 0);
      error := True;
      edtPuesto2.SetFocus
    end else if TDBFechaTDBFechaTerminoFirmante.Date < TDBFechaTDBFechaInicioFirmante.Date then
    begin
      MessageDlg('¡La fecha de Inicio no debe ser mayor a la fecha de Término!', mtInformation, [mbOk], 0);
      error := True;
      TDBFechaTDBFechaInicioFirmante.SetFocus
    end else if fechasFirmantesSeCruzan(TDBFechaTDBFechaInicioFirmante.Date, TDBFechaTDBFechaTerminoFirmante.Date) then
    begin
      //Comparar las fechas con los periodos de las fechas de otros Firmantes
      MessageDlg('El rango de fechas se cruza con las fechas de otros Firmantes!', mtInformation, [mbOk], 0);
      error := True;
      TDBFechaTDBFechaInicioFirmante.SetFocus
    end;

    if Not error then
    begin
      zqryFirmantes.Post;
      MessageDlg('¡Guardado exitosamente!', mtInformation, [mbOk], 0);
      crearExcelExamenMedico := True;

      botonesFirmantes(True, True, False, False, True);
      controlesFirmantes(False);
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnGuardarVigenciasClick(Sender: TObject);
var
  indiceArray : Integer;
  existenAvisos : Boolean;
begin
  //Guardar los valores de la recursividad y de las Medidas (Dias, Quincenas, Meses Anos).
  //en la tabla rhu_Documentos en los campos Recursividad y Medida
  try
    existenAvisos := False;
    if Length(Vigencias.spinNumeroDiasAviso) > 0 then
    begin
      for indiceArray := 0 to Length(Vigencias.spinNumeroDiasAviso) - 1 do
      begin
        if Vigencias.spinNumeroDiasAviso[indiceArray] <> nil then
        begin
          actualizardiasDeAvisoDocumentos(Vigencias.spinNumeroDiasAviso[indiceArray].Name, Vigencias.spinNumeroDiasAviso[indiceArray].Value,
                                        Vigencias.comboRecursividad[indiceArray].ItemIndex);
          existenAvisos := True;
        end;
      end;

      if existenAvisos = True then
      begin
        MessageDlg('¡Vigencias establecidas correctamente!', mtInformation, [mbOK], 0);
        revizarDocumentosVencidos;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnHistorialEmpleadoClick(Sender: TObject);
begin
  //Trae todos los empleados a el grid de Historial, para mostrar el historial de Es empleado
  try
    if Not AsignarSentencia(zqryHistorialPersonal, 'nuc_personal_medico', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['nuc_personal_medico']);

    if Not CargarDatosFiltrados(zqryHistorialPersonal, 'idPersonal', [-1]) then
      raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal']);

    if zqryHistorialPersonal.Active then
      zqryHistorialPersonal.Refresh
    else
      zqryHistorialPersonal.Open;

    if zqryHistorialPersonal.RecordCount > 0 then
    begin
      crearPanelInsertarCatalogo(panelHistorialEmpleado, formularioInsertarCatalogo, 'Personal', 750, 350);
    end
    else
    begin
      MessageDlg('¡No hay Personal registrado!', mtInformation, [mbOk], 0);
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnImprimirReporteConFormatoClick(
  Sender: TObject);
begin
  if reporteExcel = 'PorPlataformas' then
  begin
    imprimirExcelConFormato := True;
    crearExcelPorPlataformas;
  end else if reporteExcel = 'PorFechas' then
  begin
    imprimirExcelConFormato := True;
    crearResumenGeneralExcel;
  end;
end;

procedure TFrmProgramaDeSalud.btnImprimirReporteXTipoCompletoClick(
  Sender: TObject);
begin
  try
    reportes2.Preview := Nil;
    reportes2.LoadFromFile(global_files + 'reportePorTipoExamen.fr3');
    reportes2.ShowReport();
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnCancelarCatalogoAntecedentesClick(
  Sender: TObject);
begin
  //Cerrar el formulario para crear antecedentes
  formularioInsertarCatalogo.Close;
  zqryCatalogoExamenMedico.Cancel;
end;

procedure TFrmProgramaDeSalud.btnCancelarCatalogoAntidopingClick(
  Sender: TObject);
begin
  //Cerrar el formulario de Catalogo de Antidoping y cancelar el el estado append o edit segun el proceso que se esta llevando a cabo
  formularioInsertarCatalogo.Close;
  zqryCatalogoExamenMedico.Cancel; 
end;

procedure TFrmProgramaDeSalud.btnCancelarCatalogoDocumentosClick(
  Sender: TObject);
begin
  zqryCatalogoDocumentosUPDATE.Cancel;
  formularioInsertarCatalogo.Close;
end;

procedure TFrmProgramaDeSalud.btnCancelarCatalogoExamenMedicoClick(Sender: TObject);
begin
  zqryCatalogoExamenMedico.Cancel;
  formularioInsertarCatalogo.Close;
end;

procedure TFrmProgramaDeSalud.btnCancelarDocumentosMedicosClick(
  Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor :=   crAppStart;
      zqryDoctosXCargoUPDATE.Cancel;
      RibbonMenuPrincipal.ActiveTab := tdxFechasProgramadas;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnCancelarExamenMedicoClick(Sender: TObject);
begin
  //Cancelar la evaluacion
  zqryExamenMedicoUPDATE.Cancel;
  zqryPersonalUPDATE.Cancel;
  RibbonMenuPrincipal.ActiveTab := tdxFechasProgramadas;
end;

procedure TFrmProgramaDeSalud.btnCancelarFirmantesClick(Sender: TObject);
begin
  try
    botonesFirmantes(True, True, False, False, True);
    controlesFirmantes(False);

    zqryFirmantes.Cancel;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnDesmarcarRealizadoClick(Sender: TObject);
begin
  //Desmarcar Fecha de Examen que estaba como Realizada (Ponerlo como Programada)
  try
    if MessageDlg('¿Desea eliminar el Estatus "Realizado" al empleado ' + zqryPersonal.FieldByName('NombreCompleto').AsString + '!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      realizadoNoRealizado('Programada', '¡Ahora esta fecha ya no esta como Realizada para el empleado ' + zqryPersonal.FieldByName('NombreCompleto').AsString + '!');
      actualizarBotones;
      revisarFechasCaducadas;
      actualizarColores;
      crearExcelExamenMedico := True;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnDocumentosPorCaducarClick(Sender: TObject);
begin
  //Abrir ventana de Documentos Vencidos
  try
    crearPanelInsertarCatalogo(panelDocumentosVencidos, formularioInsertarCatalogo, 'Caducidad de Documentos', 810,360);
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnEliminarCatalogoDocumentosClick(
  Sender: TObject);
var
  Cursor : TCursor;
begin
  try
    if zqryCatalogoDocumentosUPDATE.RecordCount > 0 then
    begin
      if MessageDlg('¿Está seguro que desea eliminar el registro del catálogo?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      begin
        //Validar que si el registro a eliminar es un registro activo, entonces no dejar eliminarlo,
        //puesto que ya se ha utilizado para otros empleados
        if Not DocumentoEsRegistroActivo(zqryCatalogoDocumentosUPDATE.FieldByName('idDocumento').AsInteger) then
        begin
          zqryCatalogoDocumentosUPDATE.Delete;
          zqryCatalogoDocumentosUPDATE.Refresh;
          actualizarObjetosDocumentos;
        end
        else
        begin
          MessageDlg('¡No se puede eliminar puesto que es un registro Activo!', mtInformation, [mbOK], 0);
        end;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnEliminarCatalogoExamenMedicoClick(
  Sender: TObject);
var
  Cursor : TCursor;
begin
   //Eliminar el registro de Catalogo de Examen Medico. NOTA: Si se elimina un registro y ya fue asignado a otra evaluacion
  //u examen medico que se le haya realizado a algun empleado, entonces todas esas evaluaciones a los d=otros empleados se
  //perdera
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if pageTipoExamen.ActivePage = pageFormularioExamenMedico then
      begin
        if MessageDlg('¿Está seguro que desea eliminar el registro del catálogo?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin

          if Not ExamenMedicoEsRegistroActivo(zqryCatalogoExamenMedico.FieldByName('codigo').AsString) then
          begin
            zqryCatalogoExamenMedico.Delete;
            actualizarObjetosExamenMedico;
          end
          else
          begin
            MessageDlg('¡No se puede eliminar puesto que es un registro Activo!', mtInformation, [mbOK], 0);
          end;
        end;
      end else if pageTipoExamen.ActivePage = pageAntidoping then
      begin
        if MessageDlg('¿Está seguro que desea eliminar el registro del catálogo?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin
          if Not ExamenMedicoEsRegistroActivo(zqryCatalogoExamenMedico.FieldByName('codigo').AsString) then
          begin
            zqryCatalogoExamenMedico.Delete;
            actualizarObjetosAntidoping;
          end
          else
          begin
            MessageDlg('¡No se puede eliminar puesto que es un registro Activo!', mtInformation, [mbOK], 0);
          end;
        end;
      end else if pageTipoExamen.ActivePage = pageAntecedentes then
      begin
        if MessageDlg('¿Está seguro que desea eliminar el registro del catálogo?', mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin
          if Not ExamenMedicoEsRegistroActivo(zqryCatalogoAntecedentes.FieldByName('codigo').AsString) then
          begin
            zqryCatalogoAntecedentes.Delete;
            ActualizarObjetosAntecedentes;
          end
          else
          begin
            MessageDlg('¡No se puede eliminar puesto que es un registro Activo!', mtInformation, [mbOK], 0);
          end;
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnEliminarExamenClick(Sender: TObject);
var
  examenMedico : TZQuery;
begin
  //Eliminar la Evaluacion del examen medico que el usuario lleno
  try
    if MessageDlg('¿Desea Eliminar la evaluación que ya estaba creada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      examenMedico := TZQuery.Create(Self);

      if Not AsignarSentencia(examenMedico, 'rhu_examenmedico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

      if not CargarDatosFiltrados(examenMedico, 'idProgramaRecursivo', [zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_examenmedico']);

      if examenMedico.Active then
        examenMedico.Refresh
      else
        examenMedico.Open;

      if examenMedico.RecordCount > 0 then
      begin
        examenMedico.First;
        while Not examenMedico.Eof do
        begin
          examenMedico.Delete;
          examenMedico.ApplyUpdates;
        end;

        zqryProgramaRecursivo.Edit;
        zqryProgramaRecursivo.FieldByName('Observaciones').AsString :=    '';
        zqryProgramaRecursivo.FieldByName('Status').AsString := 'Programada';
        zqryProgramaRecursivo.Post;
        zqryProgramaRecursivo.ApplyUpdates;

        MessageDlg('¡Evaluación eliminada correctamente!', mtInformation, [mbOk], 0);

        actualizarObjetosExamenMedico;
        actualizarObjetosAntidoping;
        ActualizarObjetosAntecedentes;
        crearExcelExamenMedico := True;
        actualizarBotones;
        revisarFechasCaducadas;
        actualizarColores
      end
      else
        MessageDlg('¡No existe Evaluación creada para este empleado!', mtInformation, [mbOk], 0);
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnEliminarFechaProgramadaClick(Sender: TObject);
var
  Cursor : TCursor;
  fechaProgramada, FechaCompuesta : string;
begin
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      FechaCompuesta := DatetoStrSql(StrToDate(DateToStr(schedulerFechas.SelStart)));
      
      //Si la fecha seleccionada es una fecha de Examen programada, entonces mandar mensaje de si el usuario quiere
      //eliminar la programacion del examen, de ser asi, eliminar la fecha programada de examen medico
      //fechaProgramada := DatetoStrSql(strtodate(schedulerFechas.SelStart));
      if Not CargarDatosFiltrados(zqryProgramaRecursivo, 'idProgramaRecursivo,fechaProgramada,fechaReal,IdPersonal', [-1, (FechaCompuesta), -1, zqryPersonal.FieldByName('idPersonal').AsInteger]) then
        raise EInteliException.CreateByCode(6, ['IdPersonal', 'rhu_programarecursivo']);

      if zqryProgramaRecursivo.Active then
        zqryProgramaRecursivo.Refresh
      else
        zqryProgramaRecursivo.Open;

      if zqryProgramaRecursivo.RecordCount > 0 then //Si existe una fecha programada, entonces eliminarla
      begin
        if MessageDlg('¿Desea eliminar la Fecha Programada: ' + DatetoStrSql(schedulerFechas.SelStart) + ' al empleado ' + zqryPersonal.FieldByName('NombreCompleto').AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          //Si ya fue evaluado el examen medico en la fecha seleccionada al empleado seleccionado, entonces no dejar eliminar
          //la fecha programada (en pocas palabras si hay integridad no dejar eliminar la fecha programada)
          if Not examenMedicoFueEvaluado(zqryProgramaRecursivo.FieldByName('idProgramaRecursivo').AsInteger) then
          begin
            zqryProgramaRecursivo.Delete;
            zqryPersonal.ApplyUpdates;

            MessageDlg('¡Eliminado correctamente!', mtInformation, [mbOK], 0);
            actualizarBotones;
            crearExcelExamenMedico := True;
            revisarFechasCaducadas;
            actualizarColores;
          end

          else
          MessageDlg('¡El exámen ya fue evaluado, por lo tanto no se puede quitar el Estatus Programado!', mtInformation, [mbOk], 0);
        end;
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
  on e : Exception do
    begin
      zqryProgramaRecursivo.Cancel;
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnEliminarFirmantesClick(Sender: TObject);
begin
  try
    if MessageDlg('¿Desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zqryFirmantes.Delete;
      MessageDlg('¡Registro eliminado correctamente!', mtInformation, [mbOk], 0);
      crearExcelExamenMedico := True;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnExportarClick(Sender: TObject);
begin
  reporteDocumentoVencido.PrepareReport;
  frxPDFExportar.FileName := dlgGuardar.FileName;
  reporteDocumentoVencido.Export(frxPDFExportar);
end;

procedure TFrmProgramaDeSalud.btnMarcarRealizadoClick(Sender: TObject);
begin
  //Marcar la Fecha Programada como Realizado (Poner el Status como Realizada)
  try
    realizadoNoRealizado('Realizada', '¡Exámen Médico marcado como Realizado al empleado ' + zqryPersonal.FieldByName('NombreCompleto').AsString + '!');
    actualizarBotones;
    revisarFechasCaducadas;
    actualizarColores;
    crearExcelExamenMedico := True;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnMostrarReporteCompletoClick(Sender: TObject);
begin
  //Muestra el reporte de Antecedentes en tamano Completo\
  try
    reportes.Preview := Nil;
    reportes.LoadFromFile(global_files + 'AntecedentesDeSalud.fr3');
    reportes.ShowReport();
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnNuevoCatalogoDocumentosClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  //Abrir ventana para insertar al catalogo de documentos
  try
    Screen.Cursor := crDefault;
    try
      MessageDlg('¡Antes de generar un nuevo registro, verifique haber guardado los cambios!', mtInformation, [mbOk], 0);
      Screen.Cursor := crAppStart;
      zqryCatalogoDocumentosUPDATE.Append;

      modoInsercionDocumentoActivado := True;

      zqryCatalogoDocumentosUPDATE.FieldByName('idDocumento').AsInteger    :=  0;
      zqryCatalogoDocumentosUPDATE.FieldByName('codigo').AsString          := '';
      zqryCatalogoDocumentosUPDATE.FieldByName('nombredocumento').AsString := '';
      zqryCatalogoDocumentosUPDATE.FieldByName('activo').AsString        := 'Si';
      zqryCatalogoDocumentosUPDATE.FieldByName('Tipo').AsString   := 'Recursivo';
      zqryCatalogoDocumentosUPDATE.FieldByName('medico').AsString        := 'Si';

      crearPanelInsertarCatalogo(panelCatalogoDocumentos, formularioInsertarCatalogo, '¡Registro Para el cátalogo!', 300, 170);

      if zqryCatalogoDocumentosUPDATE.Active then
        zqryCatalogoDocumentosUPDATE.Cancel;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnNuevoFirmantesClick(Sender: TObject);
begin
  try
    //Juego de botones
    botonesFirmantes(False, False, True, True, False);
    controlesFirmantes(True);

    //Poner en modo Insercion zqryFirmantes
    zqryFirmantes.Append;
    zqryFirmantes.FieldByName('Firmante1').AsString := '';
    zqryFirmantes.FieldByName('Puesto1').AsString   := '';
    zqryFirmantes.FieldByName('Firmante2').AsString := '';
    zqryFirmantes.FieldByName('Puesto2').AsString   := '';
    zqryFirmantes.FieldByName('fechaInicioFirmante').AsDateTime  := Date;
    zqryFirmantes.FieldByName('fechaTerminoFirmante').AsDateTime := Date;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnPorFechasClick(Sender: TObject);
begin
  try
    //Mostrar reporte por fechas
    imprimirExcelConFormato := False;
    crearResumenGeneralExcel;

  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnPorPlataformasClick(Sender: TObject);
begin
  try
    imprimirExcelConFormato := False;
    crearExcelPorPlataformas;

  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnProgramarFechaClick(Sender: TObject);
var
  Cursor : TCursor;
  fechaProgramada, fechaScheduler : string;
  fechaProgramadaExiste : Boolean;
begin
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;
      //Si la se habia Programado el examen en la fecha seleccionada, entonces mandar mensaje de que ya se programo el examen
      //para ese dia y entonces no dejar programar al usuario de nueva cuenta ese dia
      if Not CargarDatosFiltrados(zqryProgramaRecursivo, 'idPersonal', [zqryPersonal.FieldByName('idPersonal').AsInteger]) then
        raise EInteliException.CreateByCode(6, ['rhu_programarecursivo', 'fechaProgramada', 'idPersonal']);

      if zqryProgramaRecursivo.Active then
        zqryProgramaRecursivo.Refresh
      else
        zqryProgramaRecursivo.Open;

      fechaProgramadaExiste := False;
      fechaScheduler := FormatDateTime('dd/mm/yyyy',  schedulerFechas.SelStart);
      zqryProgramaRecursivo.First;
      while Not zqryProgramaRecursivo.Eof do
      begin
        fechaProgramada := DateToStr(zqryProgramaRecursivo.FieldByName('fechaProgramada').AsDateTime);
        if fechaProgramada = fechaScheduler then
        begin
          fechaProgramadaExiste := True;
        end;

        zqryProgramaRecursivo.Next;
      end;

      if Not fechaProgramadaExiste then
      begin
        //Programar la fecha en que se ha de realizar el examen medico a un empleado
        if MessageDlg('¿Desea Programar el Exámen Médico para la fecha: ' + DateToStr(schedulerFechas.SelStart) + ' para el Empleado: ' + zqryPersonal.FieldByName('NombreCompleto').AsString + '?',
                       mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          //Si el usuario dice que si, entonces guardar la fecha de Programacion , para que en dicha fecha se le realice el examen al empleado seleccionado
          zqryProgramaRecursivo.Append;
          //zqryProgramaRecursivo.FieldByName('idRecursividad').AsInteger   := 1;
          zqryProgramaRecursivo.FieldByName('fechaProgramada').AsDateTime := schedulerFechas.SelStart;
          zqryProgramaRecursivo.FieldByName('idPersonal').AsInteger := zqryPersonal.FieldByName('idpersonal').AsInteger;
          zqryProgramaRecursivo.Post;
          zqryProgramaRecursivo.ApplyUpdates;
          MessageDlg('¡Exámen Médico Programado para la fecha: ' + DateToStr(schedulerFechas.SelStart) + '!', mtInformation, [mbOk], 0);
          actualizarBotones;
          crearExcelExamenMedico := True;
          mostrarExamenMedico(zqryPersonal.FieldByName('idPersonal').AsInteger, DatetoStrSql(schedulerFechas.SelStart));
          revisarFechasCaducadas;
          actualizarColores;
        end;
      end
      else
        MessageDlg('¡Ya se programó un exámen médico para la fecha: ' + DateToStr(schedulerFechas.SelStart) + '!', mtInformation, [mbOK], 0);
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      zqryProgramaRecursivo.Cancel;
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnReporteAntecedentesClick(Sender: TObject);
var
  empleadosProgramaRecursivo : TZQuery;
  idPersonalAnterior : Integer;
begin
  //Mostrar la ventana con los Empleados que ya tiene alguna evaluacion, y ahi podran elegir el empleado al qu van imprimir reporte
  try
    try
      //empleadosParaReportes;
      empleadosProgramaRecursivo := TZQuery.Create(Self);

      if Not AsignarSentencia(empleadosProgramaRecursivo, 'rhu_programarecursivo', ccCatalog) then
        raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

      if Not CargarDatosFiltrados(empleadosProgramaRecursivo, 'idProgramaRecursivo', [-1]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

      empleadosProgramaRecursivo.Open;
      if empleadosProgramaRecursivo.RecordCount > 0 then
      begin
        datasetEmpleadosParaReportes;
        cdEmpleadosParaReportes.Open;
        idPersonalAnterior := 0;

        cdEmpleadosParaReportes.EmptyDataSet;

        while not empleadosProgramaRecursivo.Eof do
        begin
          if ((empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger <> idPersonalAnterior) or
              (idPersonalAnterior = 0)) and (empleadosProgramaRecursivo.FieldByName('activo').AsString = 'Si') then
          begin

            if Not CargarDatosFiltrados(zqryPersonal, 'idPersonal', [empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger]) then
              raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

            if zqryPersonal.Active then
              zqryPersonal.Refresh
            else
              zqryPersonal.Open;

            if zqryPersonal.RecordCount > 0 then
            begin
              cdEmpleadosParaReportes.Append;
              cdEmpleadosParaReportes.FieldByName('idPersonal').AsInteger    :=    zqryPersonal.FieldByName('idPersonal').AsInteger;
              cdEmpleadosParaReportes.FieldByName('codigopersonal').AsString := zqryPersonal.FieldByName('codigopersonal').AsString;
              cdEmpleadosParaReportes.FieldByName('NombreCompleto').AsString := zqryPersonal.FieldByName('NombreCompleto').AsString;
              cdEmpleadosParaReportes.FieldByName('titulocargo').AsString    :=    zqryPersonal.FieldByName('titulocargo').AsString;
              cdEmpleadosParaReportes.FieldByName('grupoSanguineo').AsString := zqryPersonal.FieldByName('grupoSanguineo').AsString;
              cdEmpleadosParaReportes.FieldByName('telefono').AsString       :=       zqryPersonal.FieldByName('telefono').AsString;
              cdEmpleadosParaReportes.FieldByName('plataforma').AsString     :=     zqryPersonal.FieldByName('plataforma').AsString;
              cdEmpleadosParaReportes.Post;
            end;
          end;

          idPersonalAnterior := empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger;
          empleadosProgramaRecursivo.Next;
        end;
        
        gridEmpleadosParaReportes.Parent := panelEmpleadosParaReportes;
        gridEmpleadosParaReportes.Align := alLeft;

        tipoReporte := 'Antecedentes';

        //Abrir la ventana con el grid con empleados
        crearPanelInsertarCatalogo(panelEmpleadosParaReportes, formularioInsertarCatalogo, 'Empleados Evaluados', 890, 450);

        traerTodoNucPersonal;
      end
      else
        MessageDlg('¡No hay Registros para el reporte!', mtInformation, [mbOk], 0)
    finally
      empleadosProgramaRecursivo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.btnReporteDocumentosClick(Sender: TObject);
var
  preview  : TfrxPreview;
  doctosXCargo : TZQuery;
  i : Integer;
begin
  //Muestra un reporte de los documentos que el usuario dio de alta, tanto Documentos Activos como los caducados
  try
    try
      doctosXCargo := TZQuery.Create(Self);

      if Not AsignarSentencia(doctosXCargo, 'rhu_doctosxcargo_medico', ccSelect) then
        raise EInteliException.CreateByCode(5, ['rhu_doctosxcargo_medico']);

      //Traer todos los documentos dados de alta
      doctosXCargo.Open;

      if doctosXCargo.RecordCount > 0 then
      begin
        camposCdDatasetParaReporteDocumentos;
        cdDatasetParaReporteDocumentos.Open;
        cdDatasetParaReporteDocumentos.EmptyDataSet;
        for i := 0 to 1 do
        begin
          doctosXCargo.First;
          while Not doctosXCargo.Eof do
          begin
            if i = 0 then  //Primero meter al dataset para reporte de documentos los documentos vigentes
            begin
              if doctosXCargo.FieldByName('fechaTerminoVigencia').AsDateTime > Date then
              begin
                cdDatasetParaReporteDocumentos.Append;
                cdDatasetParaReporteDocumentos.FieldByName('rangoFechas').AsString := 'Del ' + DatetoStrSql(doctosXCargo.FieldByName('fechaInicioVigencia').AsDateTime) +
                                                                                      ' Al ' + DatetoStrSql(doctosXCargo.FieldByName('fechaTerminoVigencia').AsDateTime);
                cdDatasetParaReporteDocumentos.FieldByName('NombreCompleto').AsString := doctosXCargo.FieldByName('NombreCompleto').AsString;
                cdDatasetParaReporteDocumentos.FieldByName('StatusDocumento').AsString := 'Vigente';
                cdDatasetParaReporteDocumentos.FieldByName('nombreDocumento').AsString := doctosXCargo.FieldByName('nombreDocumento').AsString;
                cdDatasetParaReporteDocumentos.FieldByName('idDoctosxCargo').AsInteger := doctosXCargo.FieldByName('idDoctosxCargo').AsInteger;
                cdDatasetParaReporteDocumentos.Post;
              end;
            end else if i = 1 then
            begin
              if doctosXCargo.FieldByName('fechaTerminoVigencia').AsDateTime <= Date then
              begin
                cdDatasetParaReporteDocumentos.Append;

                cdDatasetParaReporteDocumentos.FieldByName('rangoFechas').AsString := 'Del ' + DatetoStrSql(doctosXCargo.FieldByName('fechaInicioVigencia').AsDateTime) +
                                                                                      ' Al ' + DatetoStrSql(doctosXCargo.FieldByName('fechaTerminoVigencia').AsDateTime);
                cdDatasetParaReporteDocumentos.FieldByName('NombreCompleto').AsString := doctosXCargo.FieldByName('NombreCompleto').AsString;
                cdDatasetParaReporteDocumentos.FieldByName('StatusDocumento').AsString := 'Caducado';
                cdDatasetParaReporteDocumentos.FieldByName('nombreDocumento').AsString := doctosXCargo.FieldByName('nombreDocumento').AsString;
                cdDatasetParaReporteDocumentos.FieldByName('idDoctosxCargo').AsInteger := doctosXCargo.FieldByName('idDoctosxCargo').AsInteger;
                cdDatasetParaReporteDocumentos.Post;
              end;
            end;

            doctosXCargo.Next;
          end;
        end;

        frxDBReporteDocumentos.DataSet := cdDatasetParaReporteDocumentos;

        preview :=   TfrxPreview.Create(Self);
        preview.Parent := panelScrollReportes;
        preview.Align :=   alClient;
        preview.PopupMenu := popupReporteDocumentos;
        preview.Visible :=     True;
        reportesDocumentos.Preview := preview;

        reportesDocumentos.LoadFromFile(global_files + 'ReporteDocumentos.fr3');
        reportesDocumentos.ShowReport();
      end
      else
        MessageDlg('¡No hay registros para el reporte!', mtInformation, [mbOk], 0);

//      frxDBReporteDocumentos.DataSet := cdDatasetParaReporteDocumentos;
//
//      preview :=   TfrxPreview.Create(Self);
//      preview.Parent := panelScrollReportes;
//      preview.Align :=   alClient;
//      preview.PopupMenu := popupReporteDocumentos;
//      preview.Visible :=     True;
//      reportesDocumentos.Preview := preview;
//
//      reportesDocumentos.LoadFromFile(global_files + 'ReporteDocumentos.fr3');
//      reportesDocumentos.ShowReport();
    finally
      doctosXCargo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.buscarArchivoDocumento(Sender: TObject);
var
  Cursor : TCursor;
begin
  //Evento para los botones que se crean en tiempo de ejecucion para los documentos dinamicos
  //El usuario podra elegir el documento para cada tipo de documento que se haya creado
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;
      if ruta.Execute() then
      begin
        TcxButton(Sender).Description := ruta.FileName;
        TcxButton(Sender).Caption     := 'OK';
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.cabeceraResumenExcel(Excel, Hoja : Variant);
var
  TmpName : string;
  TempPath: String;
  Fs     : TStream;
  Pic : TJpegImage;
  imgAux :  TImage;
begin
  try
    combinarYCentrarDatosEncabezados(Excel, 'A1:B3');
    if imprimirExcelConFormato then
    begin
      combinarYCentrarDatosEncabezados(Excel, 'C1:K1');
      combinarYCentrarDatosEncabezados(Excel, 'C2:K2');
      combinarYCentrarDatosEncabezados(Excel, 'C3:K3');
      combinarYCentrarDatosEncabezados(Excel, 'C4:K4');
    end
    else
    begin
      combinarYCentrarDatosEncabezados(Excel, 'C1:H1');
      combinarYCentrarDatosEncabezados(Excel, 'C2:H2');
      combinarYCentrarDatosEncabezados(Excel, 'C3:H3');
      combinarYCentrarDatosEncabezados(Excel, 'C4:H4');
    end;

    Connection.configuracionRecHum.Active := False;
    Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
    Connection.configuracionRecHum.Open;

    if imprimirExcelConFormato then
    begin
      Try
        TmpName := '';
        imgAux := TImage.Create(nil);
        if TmpName='' then
        begin
          TempPath := ExtractFilePath(Application.Exename);
          TmpName:=TempPath +'ImgTempCliente.jpg';
          fs := Connection.configuracionRecHum.CreateBlobStream(Connection.configuracionRecHum.FieldByName('bImagen'), bmRead);
          If fs.Size > 1 Then
          Begin
            try
              Pic:=TJpegImage.Create;
              try
                Pic.LoadFromStream(fs);
                imgAux.Picture.Graphic := Pic;
              finally
                Pic.Free;
              end;
            finally
              fs.Free;
            End;
            imgAux.Picture.SaveToFile(TmpName);
          End;
        end;
      Finally
        imgAux.Free;
      End;
      Hoja.Shapes.AddPicture(TmpName, True, True, 30, 2, 120, 65);
    end
    else
      Excel.Range['A1'].Value := 'Resúmen de Exámenes Médicos';

    Excel.Range['C1'].Value :=     connection.configuracionRecHum.FieldByName('sNombre').AsString;
    Excel.Range['C2'].Value := connection.configuracionRecHum.FieldByName('sDireccion1').AsString;
    Excel.Range['C3'].Value :=     connection.configuracionRecHum.FieldByName('sCiudad').AsString;
    Excel.Range['C4'].Value := 'PROGRAMA DE VIGILANCIA';

    bordesCeldas(Excel, 'A1:B4', True);
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.cambiarFechaFichero(const FileName: string;
  FileDate: TDateTime; SpecificFileDate: TFileDateKind): boolean;
var
  fHandle : integer;
  Succeed : boolean;
  TempFileTime, FinalFileTime : TFileTime;
  TempSystemTime : TSystemTime;
  pFileCreationDate, pFileLastModifiedDate, pFileLastAccessedDate : PFileTime;
begin
  pFileCreationDate := nil;
  pFileLastModifiedDate := nil;
  pFileLastAccessedDate := nil;

  fHandle := FileOpen(FileName, fmShareDenyWrite or fmOpenWrite);
  if fHandle < 0 then Succeed := false
  else
  begin
    DecodeDateTime(FileDate, TempSystemTime.wYear, TempSystemTime.wMonth,
        TempSystemTime.wDay, TempSystemTime.wHour, TempSystemTime.wMinute,
        TempSystemTime.wSecond, TempSystemTime.wMilliSeconds);
    SystemTimeToFileTime(TempSystemTime, TempFileTime);
    LocalFileTimeToFileTime(TempFileTime, FinalFileTime);
    case SpecificFileDate of
      fdkCreated : pFileCreationDate := @FinalFileTime;
      fdkLastModified : pFileLastModifiedDate := @FinalFileTime;
      fdkLastAccessed : pFileLastAccessedDate := @FinalFileTime;
    end;
    Succeed := SetFileTime(fHandle, pFileCreationDate,
        pFileLastAccessedDate, pFileLastModifiedDate);
    FileClose(fHandle);
  end;
  Result := Succeed;
end;

procedure TFrmProgramaDeSalud.camposCdDatasetParaReporteDocumentos;
begin
  //Crea los campos para el dataset que emviara datos al reporte de documentos
  try
    if cdDatasetParaReporteDocumentos.FieldCount = 0 then
    begin
      cdDatasetParaReporteDocumentos.FieldDefs.Add('rangoFechas', ftString, 150, False);
      cdDatasetParaReporteDocumentos.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdDatasetParaReporteDocumentos.FieldDefs.Add('StatusDocumento', ftString, 100, False);
      cdDatasetParaReporteDocumentos.FieldDefs.Add('nombreDocumento', ftString, 255, False);
      cdDatasetParaReporteDocumentos.FieldDefs.Add('idDoctosxCargo', ftInteger, 0, False);
      cdDatasetParaReporteDocumentos.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.camposCdDatasetParaReportesPorTipo;
begin
  try
    if cdDatasetParaReportesPorTipo.FieldCount = 0 then
    begin
      cdDatasetParaReportesPorTipo.FieldDefs.Add('Resultado', ftString, 255, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('idProgramaRecursivo', ftInteger, 0, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('fechaProgramada', ftString, 100, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('Status', ftString, 100, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('idPersonal', ftInteger, 0, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('codigopersonal', ftString, 100, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('telefono', ftString, 60, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('grupoSanguineo', ftString, 100, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('titulocargo', ftString, 255, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('idcatalogoexamenmedico', ftInteger, 0, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('Descripcion', ftString, 255, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('valorMinimo', ftInteger, 0, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('valorMaximo', ftInteger, 0, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('idTipoExamen_Medico', ftInteger, 0, False);
      cdDatasetParaReportesPorTipo.FieldDefs.Add('Titulo', ftString, 255, False);

      cdDatasetParaReportesPorTipo.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.camposcdDatasetProReaVen;
begin
  //Crea los campos para el dataset cdDatasetProReaVen que alimentara al reporte de estatus de examenes medicos
  try
    if cdDatasetProReaVen.FieldCount = 0 then
    begin
      cdDatasetProReaVen.FieldDefs.Add('idPersonal', ftInteger, 0, False);
      cdDatasetProReaVen.FieldDefs.Add('codigopersonal', ftString, 100, False);
      cdDatasetProReaVen.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdDatasetProReaVen.FieldDefs.Add('titulocargo', ftString, 255, False);
      cdDatasetProReaVen.FieldDefs.Add('grupoSanguineo', ftString, 100, False);
      cdDatasetProReaVen.FieldDefs.Add('idProgramaRecursivo', ftInteger, 0, False);
      cdDatasetProReaVen.FieldDefs.Add('fechaProgramada', ftString, 100, False);
      cdDatasetProReaVen.FieldDefs.Add('Status', ftString, 100, False);
      cdDatasetProReaVen.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.camposCdEmpleadosParaBajas;
begin
  //Crea campos para el dataset con los empleados que tienen evaluaciones realizadas
  //seran los posibles empleados a dar de baja para que sus datos no aparezcan en los reportes
  if cdEmpleadosParaBajas.FieldCount = 0 then
  begin
    cdEmpleadosParaBajas.FieldDefs.Add('idPersonal', ftInteger, 0, False);
    cdEmpleadosParaBajas.FieldDefs.Add('codigopersonal', ftString, 100, False);
    cdEmpleadosParaBajas.FieldDefs.Add('NombreCompleto', ftString, 255, False);
    cdEmpleadosParaBajas.FieldDefs.Add('titulocargo', ftString, 255, False);
    cdEmpleadosParaBajas.FieldDefs.Add('telefono', ftString, 25, False);
    cdEmpleadosParaBajas.FieldDefs.Add('Titulo', ftString, 255, False);
    cdEmpleadosParaBajas.FieldDefs.Add('plataforma', ftString, 100, False);
    cdEmpleadosParaBajas.CreateDataSet;
  end;
end;

procedure TFrmProgramaDeSalud.camposCdGrafica(arrayCodigos : array of string);
var
  indice : Integer;
begin
  //Crea los campos para el dataset CdGrafica
  try
    //if cdGrafica.FieldCount = 0 then
    //begin
    if cdGrafica.FieldCount > 0 then
    begin
      for indice := 0 to cdGrafica.FieldCount - 1 do
        cdGrafica.FieldDefs.Items[0].Destroy;
    end;

    if cdGrafica.Active then
      cdGrafica.Close;

    cdGrafica.FieldDefs.Add('ResultadoEstudioExamen', ftFloat, 0, False);
    cdGrafica.FieldDefs.Add('fechaProgramada', ftString, 100, False);
    cdGrafica.FieldDefs.Add('codigo', ftString, 150, False);
    cdGrafica.FieldDefs.Add('Descripcion', ftString, 255, False);
    cdGrafica.FieldDefs.Add('idExamenMedico', ftInteger, 0, False);

    for indice := 0 to Length(arrayCodigos) - 1 do
    begin
      cdGrafica.FieldDefs.Add(arrayCodigos[indice], ftFloat, 0, False);
    end;

    cdGrafica.CreateDataSet;
    //end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.camposFechasEmpleados;
begin
  //Crea los campos para el dataset cdFechasEmpleados
  try
    if cdFechasEmpleados.FieldCount = 0 then
    begin
      cdFechasEmpleados.FieldDefs.Add('codigopersonal', ftString, 150, False);
      cdFechasEmpleados.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdFechasEmpleados.FieldDefs.Add('TituloCargo', ftString, 100, False);
      cdFechasEmpleados.FieldDefs.Add('telefono', ftString, 255, False);
      cdFechasEmpleados.FieldDefs.Add('plataforma', ftString, 255, False);
      cdFechasEmpleados.FieldDefs.Add('Status', ftString, 50, False);
      cdFechasEmpleados.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.checkAplicarRangoFechasClick(Sender: TObject);
begin
  //Si se da click en Aplicar Rango de Fechass, habilitar los calendarios de inicio y fin
  if checkAplicarRangoFechas.Checked then
    HabilitarcalendariosRangoFechas(True)
  else
    HabilitarcalendariosRangoFechas(False);
end;

procedure TFrmProgramaDeSalud.checkMostrarGeneralClick(Sender: TObject);
var
  fechasExamenes : TZQuery;
begin
  //Si el check esta chequeado, entonces mostrar las fechas de todos los examenes medicos y quienes
  //tienen actividad en esos dias
  if checkMostrarGeneral.Checked then
  begin
    try
      try
        //Poner Popup al scheduler cuando se chequee el check Mostrar General
        schedulerFechas.PopupMenu := popupScheduler;

        //Esconder la pestana Examen Medico en caso de que este abierta
        habilitarDeshabilitarExamenMedico(False);

        fechasExamenes := TZQuery.Create(Self);

        if Not AsignarSentencia(fechasExamenes, 'rhu_programarecursivo', ccUpdate) then
          raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

        if Not CargarDatosFiltrados(fechasExamenes, 'idProgramaRecursivo', [-1]) then
          raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

        fechasExamenes.Open;

        if fechasExamenes.RecordCount > 0 then
        begin
          //Limpiar el dataset del scheduler
          memDataScheduler.Open;
          memDataScheduler.First;
          while Not memDataScheduler.Eof do
            memDataScheduler.Delete;

          fechasExamenes.First;
          while Not fechasExamenes.Eof do
          begin
            memDataScheduler.First;

            while Not memDataScheduler.Eof do
            begin
              if memDataScheduler.FieldByName('Start').AsDateTime = fechasExamenes.FieldByName('fechaProgramada').AsDateTime then
              begin
                memDataScheduler.Delete;
                break;
              end;

              memDataScheduler.Next;
            end;

            if memDataScheduler.FieldByName('Start').AsDateTime <> fechasExamenes.FieldByName('fechaProgramada').AsDateTime then
            begin
              //memDataScheduler.DisableControls;
              memDataScheduler.Append;

              memDataScheduler.FieldByName('Caption').AsString     :=    'E';
              memDataScheduler.FieldByName('LabelColor').AsInteger := TColor($000080FF);
              memDataScheduler.FieldByName('Start').AsDateTime  := fechasExamenes.FieldByName('fechaProgramada').AsDateTime;
              memDataScheduler.FieldByName('Finish').AsDateTime := fechasExamenes.FieldByName('fechaProgramada').AsDateTime;
              memDataScheduler.FieldByName('ID').AsInteger      := 1;
              memDataScheduler.FieldByName('RecurrenceIndex').AsInteger := 1;

              memDataScheduler.Post;
              //memDataScheduler.EnableControls;
            end;

            fechasExamenes.Next;
          end;
        end;
      finally
        fechasExamenes.Destroy;
      end;
    except
      on e : Exception do
      begin
        LevantarExcepcion(e);
      end;
    end;
  end
  else
  begin  //Si no se chequeo, entonces borrar los registros del memDataScheduler
    memDataScheduler.Open;
    memDataScheduler.First;
    while Not memDataScheduler.Eof do
    begin
      memDataScheduler.Delete;
    end;

    //Quitar el Popup del Scheduler
    schedulerFechas.PopupMenu := nil;
  end;
end;

procedure TFrmProgramaDeSalud.checkSeleccionarTodosClick(Sender: TObject);
var
  i : Integer;
begin
  if checkSeleccionarTodos.Checked then
  begin
    vistaEmpleadosParaReportesExamenMedico.DataController.SelectAll;
  end
  else
    vistaEmpleadosParaReportesExamenMedico.DataController.ClearSelection;
end;

function TFrmProgramaDeSalud.codigoDocumentoExiste(codigo: string): Boolean;
var
  Cursor : TCursor;
  catalogoDocumentos : TZQuery;
begin
  //Retorna True si el codigo en rhu_documento ya existe el codigo metido x el usuario en edtCodigoDocumento
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      catalogoDocumentos := TZQuery.Create(Self);

      if Not AsignarSentencia(catalogoDocumentos, 'rhu_documento_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_documento']);

      if Not CargarDatosFiltrados(catalogoDocumentos, 'idDocumento, codigo, activo, Tipo, Medico', [-1, codigo, -1, -1, 'Si']) then
        raise EInteliException.CreateByCode(6, ['Medico', 'rhu_documento']);

      if catalogoDocumentos.Active then
        catalogoDocumentos.Refresh
      else
        catalogoDocumentos.Open;

      if catalogoDocumentos.RecordCount > 0 then
        Result := True
      else
        Result := False;      
    finally
      Screen.Cursor := crDefault;
      catalogoDocumentos.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.codigoExiste(codigo: string): Boolean;
var
  catalogoExamen : TZQuery;
begin
  //Devuelve True si el codigo de un registro del catalogo de examenmedico existe
  //Devuelve False si no existe el codigo en el catalogo de examen medico
  try
    catalogoExamen := TZQuery.Create(Self);

    if Not AsignarSentencia(catalogoExamen, 'rhu_catalogoexamenmedico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

    if Not CargarDatosFiltrados(catalogoExamen, 'codigo', [codigo]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if catalogoExamen.Active then
      catalogoExamen.Refresh
    else
      catalogoExamen.Open;

    if catalogoExamen.RecordCount > 0 then
      Result := True
    else
      Result := False;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.combinarYCentrarDatosEncabezados(Excel: Variant;
  rangoColumnas: string);
begin
  //Accion de Combinar y centrar de Excel
  Excel.Range[rangoColumnas].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment   := xlCenter;
  Excel.Selection.WrapText            :=    False;
  Excel.Selection.Orientation         :=        0;
  Excel.Selection.AddIndent           :=    False;
  Excel.Selection.IndentLevel         :=        0;
  Excel.Selection.ShrinkToFit         :=    False;
  Excel.Selection.ReadingOrder        := xlContext;
  Excel.Selection.MergeCells          :=    False;
  Excel.Selection.Merge;
end;

procedure TFrmProgramaDeSalud.controlesFirmantes(activo: Boolean);
begin
  //Juego de controles de la pestana Firmantes
  TDBFechaTDBFechaInicioFirmante.Enabled  := activo;
  TDBFechaTDBFechaTerminoFirmante.Enabled := activo;
  edtFirmante1.Enabled := activo;
  edtPuesto1.Enabled   := activo;
  edtFirmante2.Enabled := activo;
  edtPuesto2.Enabled   := activo;

  gridFirmantes.Enabled := Not activo;

  TDBFechaTDBFechaInicioFirmante.StyleFocused.Color  := clSkyBlue;
  TDBFechaTDBFechaTerminoFirmante.StyleFocused.Color := clSkyBlue;
  edtFirmante1.StyleFocused.Color := clSkyBlue;
  edtPuesto1.StyleFocused.Color   := clSkyBlue;
  edtFirmante2.StyleFocused.Color := clSkyBlue;
  edtPuesto2.StyleFocused.Color   := clSkyBlue;

  TDBFechaTDBFechaInicioFirmante.Date  := Date;
  TDBFechaTDBFechaTerminoFirmante.Date := Date;
end;

procedure TFrmProgramaDeSalud.crearExcelPorPlataformas;
var
  Cursor : TCursor;
  error  : Boolean;
  excel, libro, hoja : Variant;
begin
  //Crea el excel por plataformas
  try
    //Mostrar reporte agrupado por plataformas
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      filtrarTodoProgramaRecursivoSELECT;

      if zqryProgramaRecursivoSELECT.RecordCount > 0 then  //Si hay evaluaciones creadas, entonces crear el excel
      begin
        try
          error := False;
          excel := CreateOleObject('Excel.Application');

          if imprimirExcelConFormato = True then
            excel.Visible := True
          else
            excel.Visible := False;                      
          
          excel.displayalerts := False;
          excel.workbooks.add;
          libro :=  excel.workbooks[1];
          hoja  :=     libro.sheets[1];
          Hoja.Name := 'Resumen General';
          hoja.select;
        except
          on e:Exception do
          begin
            MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel', mtInformation, [mbok], 0);
            error := True;
          end;
        end;

        if Not error then   //Si no hay problema al crear el excel, entonces continuar
        begin
          cabeceraResumenExcel(Excel, hoja);  //Encabezado del Excel

          cuerpoReporteExcelPlataformas(Excel); //Cuerpo del reporte por plataformas

          if Not imprimirExcelConFormato then
          begin
            //Guardar el archivo de excel
            GetTempPath(SizeOf(global_TempPath), global_TempPath);
            sArchivo := global_TempPath + 'resumenExamenMedico.xls';

            if FileExists(sArchivo) then
              DeleteFile(sArchivo);

            libro.SaveAs(sArchivo, 56);

            ExcelLibro.LoadFromFile(sArchivo);
          end;

          reporteExcel := 'PorPlataformas';
          MessageDlg('¡Proceso realizado exitosamente!', mtInformation, [mbOk], 0);
        end;
      end
      else
      begin   //Si no hay registros de evaluaciones de examen medico, entonces mandar mensaje de que no hay registros
        MessageDlg('¡No hay registros para mostrar!', mtInformation, [mbOk], 0);
      end;
    finally
      Screen.Cursor := crDefault;
      if zqryProgramaRecursivoSELECT.RecordCount > 0 then
        if Not imprimirExcelConFormato then
          Excel.Quit;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearObjetosAntecedentes(panelPadre: TcxScrollBox;
  nombreDelCheckBox, CaptionCheckBox, checkeado, valorCaja : string; topCheckBox, topLabelAntecedentes, topCajaTextoAntecedentes, indiceArray : Integer);
begin
  //Crea Objetos en tiempo de ejecucion con el catalogo de Antecedentes
  try
    //Crea TcxCheckBox
    checkBoxAntecedentes := TcxCheckBox.Create(nil);
    checkBoxAntecedentes.Name  := nombreDelCheckBox;
    checkBoxAntecedentes.Parent       := panelPadre;
    checkBoxAntecedentes.Caption := CaptionCheckBox;
    checkBoxAntecedentes.Left      :=  10;
    checkBoxAntecedentes.Width     := 500;
    checkBoxAntecedentes.AutoSize := True;
    checkBoxAntecedentes.Top  := topCheckBox;
    checkBoxAntecedentes.Transparent := True;
    checkBoxAntecedentes.Visible  := True;

    Antecedentes.checkBoxAntecedentes[indiceArray] := checkBoxAntecedentes;

    if checkeado = 'Si' then
      Antecedentes.checkBoxAntecedentes[indiceArray].Checked := True
    else
      Antecedentes.checkBoxAntecedentes[indiceArray].Checked := False;

    //Si se selecciono para mostrar especificaciones, entonces crear objetos para
    //Escribir especificaciones
    labelEspecificaciones      := TcxLabel.Create(nil);
    labelEspecificaciones.Parent  :=        panelPadre;
    labelEspecificaciones.Caption := 'Especificación:';
    labelEspecificaciones.Left    := 20;
    labelEspecificaciones.Top :=  topLabelAntecedentes;
    labelEspecificaciones.Transparent := True;
    labelEspecificaciones.Visible     := True;

    Antecedentes.labelEspecificar[indiceArray] := labelEspecificaciones;

    cajaTextoExpecificaciones        := TcxTextEdit.Create(nil);
    cajaTextoExpecificaciones.Parent        :=       panelPadre;
    cajaTextoExpecificaciones.Name := 'Dos' + nombreDelCheckBox;
    cajaTextoExpecificaciones.Width := 400;
    cajaTextoExpecificaciones.Left  := 100;
    cajaTextoExpecificaciones.Top   := topCajaTextoAntecedentes;
    cajaTextoExpecificaciones.Text  :=  valorCaja;
    cajaTextoExpecificaciones.Visible     := True;

    Antecedentes.cajaTextoEspecificar[indiceArray]   :=  cajaTextoExpecificaciones;
    Antecedentes.cajaTextoEspecificar[indiceArray].StyleFocused.Color := clSkyBlue;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearObjetosDelCatalogoAntidoping(
  panelPadre: TcxScrollBox; TextoLabel, nombreComboBox, valorComboBox: string;
  topLabel, topComboBox, indicearray: integer);
var
  Cursor : TCursor;
begin
  //Crea objetos en tiempo de ejecucin segun sean los registros de zqryCatalogoExamenMedico filtrado por Tipo Antidoping
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      //Crea TcxLabel en tiempo de ejecucion (Izquierda)
      labelIndicativo := TcxLabel.Create(nil);
      labelIndicativo.Parent  := panelPadre;
      labelIndicativo.Caption := TextoLabel;
      labelIndicativo.Top     :=   topLabel;
      labelIndicativo.Left    :=         89;
      labelIndicativo.Transparent :=   True;
      labelIndicativo.Visible :=       True;

      Antidoping.labelsIndicativosAntidoping[indicearray] := labelIndicativo;

      //Crea un TcxTextEdit en tiempo de ejecucion (Derecha)
      comboBox := TcxComboBox.Create(nil);
      comboBox.Parent :=     panelPadre;
      comboBox.Width  :=   193;
      comboBox.Name   := nombreComboBox;
      comboBox.Height :=    21;
      comboBox.Left   :=   160;
      comboBox.Top    :=    topComboBox;
      comboBox.StyleFocused.Color := clSkyBlue;

      comboBox.Properties.Items.Add('NEGATIVO');
      comboBox.Properties.Items.Add('POSITIVO');

      comboBox.ItemIndex := 0;
      comboBox.Properties.DropDownListStyle := lsEditFixedList;

      comboBox.Visible := True;

      if valorComboBox = 'NEGATIVO' then
      begin
        comboBox.ItemIndex := 0;
      end else if valorComboBox = 'POSITIVO' then
      begin
        comboBox.ItemIndex := 1;
      end;

      Antidoping.comboBoxAntidoping[indicearray] := comboBox;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearObjetosDocumentos(panelPadre: TcxScrollBox;
  captionLabelIndicativo, nombreDelBoton: string; topLabel, topBoton,
  indiceArray: Integer; fechaInicio, fechaTermino : string; tieneArchivo : Boolean);
var
  Cursor : TCursor;
begin
  //Crea botones en tiempo de ejecucion, con el nombre para el boton y posiciones en la pantalla
  try
    //Screen.Cursor := crDefault;
    try
      //Screen.Cursor := crAppStart;
      labelIndicativoDocumentos := TcxLabel.Create(Self);
      labelIndicativoDocumentos.Transparent      := True;
      labelIndicativoDocumentos.Caption := captionLabelIndicativo + ':';
      labelIndicativoDocumentos.Left           := 20;
      labelIndicativoDocumentos.Top      := topLabel;
      labelIndicativoDocumentos.Parent := panelPadre;
      labelIndicativoDocumentos.Visible      := True;

      Documentos.labelIndicativoDocumento[indiceArray] := labelIndicativoDocumentos;

      botonDocumentos   := TcxButton.Create(Self);
      botonDocumentos.Caption := 'Elegir Archivo';
      botonDocumentos.Name    :=   nombreDelBoton;
      botonDocumentos.Left    :=  250;
      botonDocumentos.Top     :=   topBoton;
      botonDocumentos.Width   :=  100;
      botonDocumentos.OptionsImage.Images := frmrepositorio.IconosTodos16;
      botonDocumentos.OptionsImage.ImageIndex := 835;
      botonDocumentos.Parent  := panelPadre;
      botonDocumentos.Visible := True;

      Documentos.botonArchivo[indiceArray] := botonDocumentos;
      Documentos.botonArchivo[indiceArray].OnClick := buscarArchivoDocumento;

      labelIndicativoInicioVigencia := TcxLabel.Create(Self);
      labelIndicativoInicioVigencia.Caption :=   'Inicio V.';
      labelIndicativoInicioVigencia.Left    :=       360;
      labelIndicativoInicioVigencia.Top     :=  topLabel;
      labelIndicativoInicioVigencia.Parent := panelPadre;
      labelIndicativoInicioVigencia.Transparent  := True;
      labelIndicativoInicioVigencia.Visible      := True;

      Documentos.labelIndicativoInicioVigencia[indiceArray] := labelIndicativoInicioVigencia;

      calendarioInicioVigencia := TcxDateEdit.Create(Self);
      calendarioInicioVigencia.Parent := panelPadre;
      calendarioInicioVigencia.Left          := 400;
      calendarioInicioVigencia.Top :=  topBoton + 3;
      calendarioInicioVigencia.Width         :=  80;
      calendarioInicioVigencia.Visible      := True;

      Documentos.calendarioInicioVigencia[indiceArray] := calendarioInicioVigencia;
      Documentos.calendarioInicioVigencia[indiceArray].StyleFocused.Color := clSkyBlue;

      if fechaInicio <> '' then
        Documentos.calendarioInicioVigencia[indiceArray].Date := StrToDate(fechaInicio);

      labelIndicativoTerminoVigencia := TcxLabel.Create(Self);
      labelIndicativoTerminoVigencia.Caption  := 'Término V.';
      labelIndicativoTerminoVigencia.Left         :=  490;
      labelIndicativoTerminoVigencia.Top      := topLabel;
      labelIndicativoTerminoVigencia.Transparent  := True;
      labelIndicativoTerminoVigencia.Parent := panelPadre;
      labelIndicativoTerminoVigencia.Visible      := True;

      Documentos.labelIndicativoTerminoVigencia[indiceArray] := labelIndicativoTerminoVigencia;

      calendarioTerminoVigencia := TcxDateEdit.Create(Self);
      calendarioTerminoVigencia.Parent := panelPadre;
      calendarioTerminoVigencia.Left          := 545;
      calendarioTerminoVigencia.Width         :=  80;
      calendarioTerminoVigencia.Top :=  topBoton + 3;
      calendarioTerminoVigencia.Visible      := True;

      Documentos.calendarioTerminoVigencia[indiceArray] := calendarioTerminoVigencia;
      Documentos.calendarioTerminoVigencia[indiceArray].StyleFocused.Color := clSkyBlue;

      if fechaTermino <> '' then
        Documentos.calendarioTerminoVigencia[indiceArray].Date := StrToDate(fechaTermino);

      palomita := TcxButton.Create(Self);
      palomita.Parent :=   panelPadre;
      palomita.Left   :=          630;
      palomita.Top    := topBoton + 3;
      palomita.OptionsImage.Images := frmrepositorio.IconosTodos16;
      palomita.OptionsImage.ImageIndex := 834;
      palomita.Width   :=      25;
      palomita.Height  :=      20;
      palomita.Enabled :=    True;
      palomita.Description := nombreDelBoton;
      palomita.Visible :=    True;

      Documentos.palomita[indiceArray] := palomita;
      Documentos.palomita[indiceArray].OnClick := mostrarImagenConPalomita;

      //if (fechaInicio <> '') and (fechaTermino <> '') then
      if tieneArchivo then
        Documentos.palomita[indiceArray].Enabled := True
      else
        Documentos.palomita[indiceArray].Enabled := False;

      botonEliminarRegistroDocumento := TcxButton.Create(Self);
      botonEliminarRegistroDocumento.Parent := panelPadre;
      botonEliminarRegistroDocumento.Left   :=        660;
      botonEliminarRegistroDocumento.Top :=  topBoton + 3;
      botonEliminarRegistroDocumento.OptionsImage.Images := frmrepositorio.IconosTodos16;
      botonEliminarRegistroDocumento.OptionsImage.ImageIndex := 306;
      botonEliminarRegistroDocumento.Width  := 25;
      botonEliminarRegistroDocumento.Height := 20;
      botonEliminarRegistroDocumento.Description := nombreDelBoton;
      botonEliminarRegistroDocumento.Visible := True;

      Documentos.botonEliminarRegistroDocumento[indiceArray] := botonEliminarRegistroDocumento;
      Documentos.botonEliminarRegistroDocumento[indiceArray].OnClick := eliminarRegistroDocumento;

      if (fechaInicio <> '') and (fechaTermino <> '') then
        Documentos.botonEliminarRegistroDocumento[indiceArray].Enabled := True
      else
        Documentos.botonEliminarRegistroDocumento[indiceArray].Enabled := False;
    finally
      //Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearObjetosExamenMedico(
  panelPadre : TcxScrollBox; CaptionLabelIndicativo: string; nombreDeLaCajaDeTexto : string;
  valorParaLaCajaDeTexto: Double; valorLabelMedida: string; topLabel, topCajaTexto, indiceArrays : Integer);
var
  Cursor : TCursor;
begin
  //Crea Objetos en tiempo de ejecucion para el catalogo de examen medico
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      //Labels indicativos(Izquierda)
      labelIndicativo         := TcxLabel.Create(Self);
      labelIndicativo.Parent  :=            panelPadre;
      labelIndicativo.Caption := CaptionLabelIndicativo + ':';
      labelIndicativo.Top     := topLabel;
      labelIndicativo.Left    :=       49;
      labelIndicativo.Transparent := True;
      labelIndicativo.Visible :=     True;

      Evaluacion.LabelsIndicativos[indiceArrays] := labelIndicativo;

      //Cajas de Texto (Centro)
      objetoCajaDeTexto      :=   TcxTextEdit.Create(Self);
      objetoCajaDeTexto.Parent :=               panelPadre;
      objetoCajaDeTexto.Name :=      nombreDeLaCajaDeTexto;
      objetoCajaDeTexto.Left :=          139;
      objetoCajaDeTexto.Top  := topCajaTexto;
      objetoCajaDeTexto.Width   :=  212;
      objetoCajaDeTexto.Height  :=   21;
      objetoCajaDeTexto.StyleFocused.Color := clSkyBlue;
      objetoCajaDeTexto.Text := FloatToStr(valorParaLaCajaDeTexto);
      objetoCajaDeTexto.Visible := True;

      Evaluacion.objetosCajasTexto[indiceArrays] := objetoCajaDeTexto;
      Evaluacion.objetosCajasTexto[indiceArrays].OnKeyPress := validarNumerosCajas;

      //Labels de Medida(Derecha)
      labelMedida    := TcxLabel.Create(Self);
      labelMedida.Parent :=        panelPadre;
      labelMedida.Caption := valorLabelMedida;
      labelMedida.Transparent := True;
      labelMedida.Top     := topLabel;
      labelMedida.Left    :=      351;
      labelMedida.Visible :=     True;

      Evaluacion.LabelsMedidas[indiceArrays] := labelMedida;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearObjetosHistorial(panelPadre: TcxScrollBox;
  captionTituloExamen, captionTipoExamen, captionFechaExamen,
  captionCantidad, nombreCheck: string; topTituloExamen, topTipoExamen,
  toplabelFechaYCantidad, indiceArray, idTipoExamen_Medico: Integer; pintarTipoExamen : Boolean);
begin
  //Crea Objetos en tiempo de ejecucion para el historial de examenes medicos, muestra solamente puros Labels
  try
//    labelTituloExamen := TcxLabel.Create(Self);
//    labelTituloExamen.Parent := panelPadre;
//    labelTituloExamen.Caption :=  captionTituloExamen;
//    labelTituloExamen.Transparent  :=   True;
//    labelTituloExamen.Style.Font.Style := [fsBold];
//    labelTituloExamen.Style.Color  := clBlue;
//    labelTituloExamen.Style.Font.Color  :=    clWhite;
//    labelTituloExamen.Top := topTituloExamen;
//    labelTituloExamen.Left    :=   10;
//    labelTituloExamen.Visible := True;
//
//    Historial.labelTituloExamen[indiceArray] := labelTituloExamen;

    if pintarTipoExamen then
    begin
      if idTipoExamen_Medico = 1 then
      begin
        checkMostrar := TcxCheckBox.Create(Self);
        checkMostrar.Parent := panelPadre;
        checkMostrar.Name   := nombreCheck;
        checkMostrar.Checked := False;
        checkMostrar.Caption := '';
        checkMostrar.Transparent := True;
        checkMostrar.Top := topTipoExamen;
        checkMostrar.Left := 10;
        checkMostrar.Visible := True;

        Historial.checkMostrar[indiceArray] := checkMostrar;
        Historial.checkMostrar[indiceArray].OnClick := eventoCheckGrafica;
      end;

      labelTipoExamen := TcxLabel.Create(Self);
      labelTipoExamen.Parent := panelPadre;
      labelTipoExamen.Caption  :=   captionTipoExamen;
      labelTipoExamen.Transparent := True;
      labelTipoExamen.Style.Font.Style := [fsBold];
      labelTipoExamen.Top         :=    topTipoExamen;
      labelTipoExamen.Left        :=  30;
      labelTipoExamen.Visible     := True;

      Historial.labelTipoExamen[indiceArray] := labelTipoExamen;
    end;

    labelFechaExamen := TcxLabel.Create(Self);
    labelFechaExamen.Parent := panelPadre;
    labelFechaExamen.Caption := captionFechaExamen;
    labelFechaExamen.Transparent := True;
    labelFechaExamen.Top := toplabelFechaYCantidad;
    labelFechaExamen.Left        :=   20;
    labelFechaExamen.Visible     := True;

    Historial.labelFechaExamen[indiceArray] := labelFechaExamen;

    labelCantidad := TcxLabel.Create(Self);
    labelCantidad.Parent := panelPadre;
    labelCantidad.Caption :=    captionCantidad;
    labelCantidad.Transparent := True;
    labelCantidad.Top := toplabelFechaYCantidad;
    labelCantidad.Left        :=  100;
    labelCantidad.Visible     := True;

    Historial.labelCantidad[indiceArray] := labelCantidad;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearObjetosVigenciasDocumentos(
  panelPadre: TcxScrollBox; captionLabelIndicativo, nombreDelSpin: string; diasAviso : Integer;
  Medida : string; topLabel, topSpin, indiceArray: Integer);
begin
  //Crea objetos en tiempo de ejecucion en la pestana Vigencias Documentos(Todos)
  try
    labelVigenciaDocumento := TcxLabel.Create(Self);

    labelVigenciaDocumento.Parent := panelPadre;
    labelVigenciaDocumento.Transparent  := True;
    labelVigenciaDocumento.Caption := captionLabelIndicativo + ':';
    labelVigenciaDocumento.Left         :=   10;
    labelVigenciaDocumento.Top     :=  topLabel;
    labelVigenciaDocumento.Visible :=      True;

    Vigencias.labelVigenciaDocumento[indiceArray] := labelVigenciaDocumento;

    spinNumeroDiasAviso := TcxSpinEdit.Create(Self);
    spinNumeroDiasAviso.Parent := panelPadre;
    spinNumeroDiasAviso.Left   :=        200;
    spinNumeroDiasAviso.Top    :=    topSpin;
    spinNumeroDiasAviso.Width  :=         70;
    spinNumeroDiasAviso.Visible :=      True;

    Vigencias.spinNumeroDiasAviso[indiceArray] := spinNumeroDiasAviso;
    Vigencias.spinNumeroDiasAviso[indiceArray].StyleFocused.Color := clSkyBlue;
    Vigencias.spinNumeroDiasAviso[indiceArray].Name :=  nombreDelSpin;

    Vigencias.spinNumeroDiasAviso[indiceArray].Properties.MinValue :=   0;
    Vigencias.spinNumeroDiasAviso[indiceArray].Properties.MaxValue := 366;
    Vigencias.spinNumeroDiasAviso[indiceArray].Value := diasAviso;

    comboRecursividad := TcxComboBox.Create(Self);
    comboRecursividad.Parent := panelPadre;
    comboRecursividad.Left   :=        280;
    comboRecursividad.Top    :=    topSpin;
    comboRecursividad.Visible :=      True;

    Vigencias.comboRecursividad[indiceArray] := comboRecursividad;

    Vigencias.comboRecursividad[indiceArray].StyleFocused.Color := clSkyBlue;

    Vigencias.comboRecursividad[indiceArray].Properties.Items.Add('Dia(s)');
    Vigencias.comboRecursividad[indiceArray].Properties.Items.Add('Mes(es)');
    Vigencias.comboRecursividad[indiceArray].Properties.Items.Add('Año(s)');
    Vigencias.comboRecursividad[indiceArray].Properties.DropDownListStyle := lsEditFixedList;

    if Medida = 'Dias' then
      Vigencias.comboRecursividad[indiceArray].ItemIndex := 0
    else if Medida = 'Meses' then
      Vigencias.comboRecursividad[indiceArray].ItemIndex := 1
    else if Medida = 'Anos' then
      Vigencias.comboRecursividad[indiceArray].ItemIndex := 2;

    labelAntesDeVencimiento := TcxLabel.Create(Self);
    labelAntesDeVencimiento.Parent := panelPadre;
    labelAntesDeVencimiento.Caption := 'Antes del vencimiento';
    labelAntesDeVencimiento.Transparent :=  True;
    labelAntesDeVencimiento.Left :=     410;
    labelAntesDeVencimiento.Top := topLabel;
    labelAntesDeVencimiento.Visible := True;

    Vigencias.labelAntesDeVencimiento[indiceArray] := labelAntesDeVencimiento;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearPanelInsertarCatalogo(panel: TPanel;
   formularioPadre: TForm; tituloCabecera: string; ancho, alto: integer);
begin
  //Crea una ventana para ingresar o editar un registro para los catalogos(Examen Medico y Antidoping)
  panel.Visible := True;
  panel.Enabled := True;
  formularioInsertarCatalogo      := TForm.Create(nil);
  formularioInsertarCatalogo.Caption := tituloCabecera;
  panel.Parent     :=       formularioInsertarCatalogo;

  formularioInsertarCatalogo.Width       :=            ancho;
  formularioInsertarCatalogo.Height      :=             alto;
  formularioInsertarCatalogo.BorderStyle :=         bsSingle;
  formularioInsertarCatalogo.Position    := poMainFormCenter;
  formularioInsertarCatalogo.ShowHint    :=             True;

  panel.Align                 := alClient;
  formularioInsertarCatalogo.AutoSize    :=     True;
  formularioInsertarCatalogo.BorderIcons := [biSystemMenu];

  formularioInsertarCatalogo.showmodal;
end;

procedure TFrmProgramaDeSalud.crearResumenGeneralExcel;
var
  Cursor : TCursor;
  Excel, Libro, Hoja : Variant;
  error : Boolean;
begin
  //Crea el reporte en excel de las evaluaciones que se han realizado hasta el momento
  //cualquier cambio que se realice en los examenes medicos se debe reflejar en el componente spdreadSheetBook
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      filtrarTodoProgramaRecursivoSELECT;

      if zqryProgramaRecursivoSELECT.RecordCount > 0 then  //Si hay evaluaciones creadas, entonces crear el excel
      begin
        try
          error := False;
          excel := CreateOleObject('Excel.Application');
          if imprimirExcelConFormato then
            excel.Visible := True
          else
            excel.Visible := False;
          excel.displayalerts := False;
          excel.workbooks.add;
          libro :=  excel.workbooks[1];
          hoja  :=     libro.sheets[1];
          Hoja.Name := 'Resumen General';
          hoja.select;
        except
          on e:Exception do
          begin
            MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel', mtInformation, [mbok], 0);
            error := True;
          end;
        end;

        if Not error then   //Si no hay problema al crear el excel, entonces continuar
        begin
          cabeceraResumenExcel(Excel, hoja);  //Encabezado del Excel

          cuerpoResumenReporteExcel(Excel); //Cuerpo del reporte del resumen en excel

          if Not imprimirExcelConFormato then
          begin
            //Guardar el archivo de excel
            GetTempPath(SizeOf(global_TempPath), global_TempPath);
            sArchivo := global_TempPath + 'resumenExamenMedico.xls';

            if FileExists(sArchivo) then
              DeleteFile(sArchivo);

            libro.SaveAs(sArchivo, 56);

            ExcelLibro.LoadFromFile(sArchivo);
            reporteExcel := 'PorFechas';
          end;
          MessageDlg('¡Proceso realizado exitosamente!', mtInformation, [mbOk], 0);
        end;
      end
      else
      begin   //Si no hay registros de evaluaciones de examen medico, entonces mandar mensaje de que no hay registros
        MessageDlg('¡No hay registros para mostrar!', mtInformation, [mbOk], 0);
      end;
    finally
      Screen.Cursor := crDefault;
      if zqryProgramaRecursivoSELECT.RecordCount > 0 then
        if Not imprimirExcelConFormato then
          Excel.Quit;
    end;
  except
    on e : Exception do
    begin
        LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.crearTiposExamenXDefault;
var
  autoinc : Integer;
begin
  //Crea los tipos Examen Medico, Antidoping y Antecedentes
  try
    if Not CargarDatosFiltrados(zqryTipoExamenMedicoUPDATE, 'idTipoExamen_Medico', [-1]) then
      raise EInteliException.CreateByCode(6, ['idTipoExamen_Medico', 'rhu_tipoexamen_medico']);

    if zqryTipoExamenMedicoUPDATE.Active then
      zqryTipoExamenMedicoUPDATE.Refresh
    else
      zqryTipoExamenMedicoUPDATE.Open;

    if zqryTipoExamenMedicoUPDATE.RecordCount = 0 then  //Si no hay registros de tipos de examenes, entonces crear tres x default
    begin
      for autoinc := 1 to 3 do
      begin
        zqryTipoExamenMedicoUPDATE.Append;
        //zqryTipoExamenMedicoUPDATE.FieldByName('idTipoExamen_Medico').AsInteger := 1;

        if autoinc = 1 then
        begin
          zqryTipoExamenMedicoUPDATE.FieldByName('Titulo').AsString := 'Exámen Médico';
          zqryTipoExamenMedicoUPDATE.FieldByName('idTipoExamen_Medico').AsInteger := 1
        end
        else if autoinc = 2 then
        begin
          zqryTipoExamenMedicoUPDATE.FieldByName('Titulo').AsString :=     'Antidoping';
          zqryTipoExamenMedicoUPDATE.FieldByName('idTipoExamen_Medico').AsInteger := 2
        end
        else if autoinc = 3 then
        begin
          zqryTipoExamenMedicoUPDATE.FieldByName('Titulo').AsString :=  'Antecedentes';
          zqryTipoExamenMedicoUPDATE.FieldByName('idTipoExamen_Medico').AsInteger := 3;
        end;

        zqryTipoExamenMedicoUPDATE.FieldByName('Recursividad').AsInteger :=       6;
        zqryTipoExamenMedicoUPDATE.FieldByName('Medida').AsString        := 'Meses';
        zqryTipoExamenMedicoUPDATE.Post;
        zqryTipoExamenMedicoUPDATE.ApplyUpdates;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.cuerpoReporteExcelPlataformas(Excel: Variant);
var
  Fila, Columna, incrementable, idProgramaRecursivoAnterior, finalColumnaExamenMedico, finalFechaColumnaAntidoping : Integer;
  idPlataformaAnterior : string;
  conceptoEvaluado, colocarTierra : Boolean;
begin
  //Imprime el cuerpo del reporte de excel para las plataformas
  try
    Fila    := 6;

    idProgramaRecursivoAnterior := 0;

    combinarYCentrarDatosEncabezados(Excel, 'A6:A7');
    combinarYCentrarDatosEncabezados(Excel, 'B6:B7');
    combinarYCentrarDatosEncabezados(Excel, 'C6:C7');
    combinarYCentrarDatosEncabezados(Excel, 'D6:D7');
    combinarYCentrarDatosEncabezados(Excel, 'E6:E7');

    Excel.Range['A6'].Value :=             'NOMBRE';
    Excel.Range['B6'].Value :=          'CATEGORIA';
    Excel.Range['C6'].Value :=   'FECHA DEL EXAMEN';
    Excel.Range['D6'].Value := 'ESTATUS DEL EXAMEN';
    Excel.Range['E6'].Value :=         'PLATAFORMA';

    bordesCeldas(Excel, 'A6', True);
    bordesCeldas(Excel, 'B6', True);
    bordesCeldas(Excel, 'C6', True);
    bordesCeldas(Excel, 'D6', True);
    bordesCeldas(Excel, 'E6', True);

    Fila := 7;
    Columna := 7;
    finalColumnaExamenMedico := 7;
    idPlataformaAnterior := '';

    //Colocar las columnas de los Tipos de examenes que hay en rhu_catalogoexamenmedico
    filtrarTodoCatalogoExamenMedicoCATALOGO;

    zqryCatalogoExamenMedicoCATALOGO.First;
    while Not zqryCatalogoExamenMedicoCATALOGO.Eof do    
    begin
      if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
      begin
        Excel.Range[ColumnaNombre(Columna) + '7'].Value := zqryCatalogoExamenMedicoCATALOGO.FieldByName('Descripcion').AsString + '(' +
                                                           FloatToStr(zqryCatalogoExamenMedicoCATALOGO.FieldByName('valorMinimo').AsFloat) + '-' +
                                                           FloatToStr(zqryCatalogoExamenMedicoCATALOGO.FieldByName('valorMaximo').AsFloat) + ' ' +
                                                           zqryCatalogoExamenMedicoCATALOGO.FieldByName('Medida').AsString + ')';
        finalColumnaExamenMedico := finalColumnaExamenMedico + 1;
        finalFechaColumnaAntidoping := finalColumnaExamenMedico;
      end else if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
      begin
        Excel.Range[ColumnaNombre(Columna) + '7'].Value := zqryCatalogoExamenMedicoCATALOGO.FieldByName('Descripcion').AsString;
        finalFechaColumnaAntidoping := finalFechaColumnaAntidoping + 1;
      end;

      Columna := Columna + 1;         
      zqryCatalogoExamenMedicoCATALOGO.Next;
    end;

    combinarYCentrarDatosEncabezados(Excel, 'F6:' + ColumnaNombre(finalColumnaExamenMedico - 1) + '6');
    Excel.Range['F6'].Value := 'EXAMEN MEDICO(RESULTADOS)';
    bordesCeldas(Excel, 'F6:' + ColumnaNombre(finalColumnaExamenMedico - 1) + '6', True);

    combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(finalColumnaExamenMedico) + '6' + ':' + ColumnaNombre(finalFechaColumnaAntidoping - 1) + '6');
    Excel.Range[ColumnaNombre(finalColumnaExamenMedico) + '6'].Value := 'ANTIDOPING';
    bordesCeldas(Excel, ColumnaNombre(finalColumnaExamenMedico) + '6' + ':' + ColumnaNombre(finalFechaColumnaAntidoping - 1) + '6', True);

    combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(finalFechaColumnaAntidoping) + '6' + ':' + ColumnaNombre(finalFechaColumnaAntidoping) + '7');
    Excel.Range[ColumnaNombre(finalFechaColumnaAntidoping) + '6'].Value := 'OBSERVACIONES';
    bordesCeldas(Excel, ColumnaNombre(finalFechaColumnaAntidoping) + '6', True);

    Excel.Range['F7'].Value := 'Grupo Sanguineo';

    for incrementable := 6 to finalFechaColumnaAntidoping - 1 do
    begin
      bordesCeldas(Excel, ColumnaNombre(incrementable) + '7', True);
    end;

    colocarTierra := True;
    zqryProgramaRecursivoPlataforma.First;
    while Not zqryProgramaRecursivoPlataforma.Eof do
    begin
      if ((idProgramaRecursivoAnterior <> zqryProgramaRecursivoPlataforma.FieldByName('idProgramaRecursivo').AsInteger) or (idProgramaRecursivoAnterior = 0)) and
         (zqryProgramaRecursivoPlataforma.FieldByName('activo').AsString = 'Si') then
      begin
        if (idPlataformaAnterior <> zqryProgramaRecursivoPlataforma.FieldByName('sIdPlataforma').AsString) (*or (idPlataformaAnterior = '')*) then
        begin
          Fila := Fila + 2;

          Excel.Range['A' + IntToStr(Fila-1)].Value := zqryProgramaRecursivoPlataforma.FieldByName('plataforma').AsString;
          //Poner en negritas la Plataforma
          fuenteLetras(Excel, 'A' + IntToStr(Fila-1), 'Arial', 10, True);
        end else if idPlataformaAnterior = '' then
        begin
          if colocarTierra = True then
          begin
            Fila := Fila + 1;
            Excel.Range['A' + IntToStr(Fila)].Value := 'TIERRA';
            fuenteLetras(Excel, 'A' + IntToStr(Fila), 'Arial', 10, True);
            colocarTierra := False;
          end;
          Fila := Fila + 1;
        end;

        Excel.Range['A' + IntToStr(Fila)].Value := zqryProgramaRecursivoPlataforma.FieldByName('nombreCompleto').AsString;
        Excel.Range['B' + IntToStr(Fila)].Value :=    zqryProgramaRecursivoPlataforma.FieldByName('titulocargo').AsString;
        Excel.Range['C' + IntToStr(Fila)].Value := DateToStr(zqryProgramaRecursivoPlataforma.FieldByName('fechaProgramada').AsDateTime);
        Excel.Range['D' + IntToStr(Fila)].Value :=         zqryProgramaRecursivoPlataforma.FieldByName('Status').AsString;
        Excel.Range['E' + IntToStr(Fila)].Value :=     zqryProgramaRecursivoPlataforma.FieldByName('plataforma').AsString;
        Excel.Range['F' + IntToStr(Fila)].Value := zqryProgramaRecursivoPlataforma.FieldByName('gruposanguineo').AsString;

        Columna := 7;

        zqryCatalogoExamenMedicoCATALOGO.First;
        while Not zqryCatalogoExamenMedicoCATALOGO.Eof do
        begin
          if Not CargarDatosFiltrados(zqryProgramaRecursivoSELECT2, 'idProgramaRecursivo', [zqryProgramaRecursivoPlataforma.FieldByName('idProgramaRecursivo').AsInteger]) then
            raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programaRecursivo']);

          if zqryProgramaRecursivoSELECT2.Active then
            zqryProgramaRecursivoSELECT2.Refresh
          else
            zqryProgramaRecursivoSELECT2.Open;

          conceptoEvaluado := False;
          zqryProgramaRecursivoSELECT2.First;
          while Not zqryProgramaRecursivoSELECT2.Eof do
          begin
            if zqryProgramaRecursivoSELECT2.FieldByName('idcatalogoexamenmedico').AsInteger = zqryCatalogoExamenMedicoCATALOGO.FieldByName('idcatalogoexamenmedico').AsInteger then
            begin
              if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
              begin
                Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT2.FieldByName('ResultadoEstudioExamen').AsString;
              end
              else if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
              begin
                Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT2.FieldByName('ResultadoDopaje').AsString;
              end;
              conceptoEvaluado := True;
            end;

            zqryProgramaRecursivoSELECT2.Next;
          end;

          if (Not conceptoEvaluado) and (zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1) then
          begin
            Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := '0';
          end
          else if (Not conceptoEvaluado) and (zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2) then
          begin
            Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := 'NEGATIVO';
          end;     

          Columna := Columna + 1;
          zqryCatalogoExamenMedicoCATALOGO.Next;
        end;

        Excel.Range[ColumnaNombre(finalFechaColumnaAntidoping) +  IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT2.FieldByName('Observaciones').AsString;

        if idPlataformaAnterior <> '' then
          Fila := Fila + 1;
      end;

      if zqryProgramaRecursivoPlataforma.FieldByName('activo').AsString = 'Si' then
      begin
        idProgramaRecursivoAnterior := zqryProgramaRecursivoPlataforma.FieldByName('idProgramaRecursivo').AsInteger;
        idPlataformaAnterior := zqryProgramaRecursivoPlataforma.FieldByName('sIdPlataforma').AsString;
      end;
      zqryProgramaRecursivoPlataforma.Next;
    end;

    bordesCeldas(Excel, 'C1:' + ColumnaNombre(finalFechaColumnaAntidoping) + '4', True);

    //Poner los bordes normales a todo el cuerpo con datos
    bordesCeldas(Excel, 'A8:' + ColumnaNombre(finalFechaColumnaAntidoping) + IntToStr(Fila - 1), False);
    fuenteLetras(Excel, 'A1', 'Arial Unicode MS', 10, True);
    fuenteLetras(Excel, 'C1:C4', 'Arial Unicode MS', 12, True);
    fuenteLetras(Excel, 'A6:' + ColumnaNombre(finalFechaColumnaAntidoping) + '7', 'Calibri', 11, True);

    //Colocar los firmantes que comprendan la fecha del sistema
    Fila := Fila + 3;

    //Firmante 1
    combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila) + ':' + 'B' + IntToStr(Fila));
    Excel.Range['A' + IntToStr(Fila)].Select;
    Excel.Range['A' + IntToStr(Fila)].Value := obtenerDatosFirmantes('Firmante', 1);
    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight          :=     xlMedium;
    //Puesto 1
    combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 1) + ':' + 'B' + IntToStr(Fila + 1));
    Excel.Range['A' + IntToStr(Fila + 1)].Value := obtenerDatosFirmantes('Puesto', 1);

    //Firmante 2
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila) + ':' + 'H' + IntToStr(Fila));
    Excel.Range['F' + IntToStr(Fila)].Select;
    Excel.Range['F' + IntToStr(Fila)].Value := obtenerDatosFirmantes('Firmante', 2);
    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight          :=     xlMedium;

    //Puesto 2
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 1) + ':' + 'H' + IntToStr(Fila + 1));
    Excel.Range['F' + IntToStr(Fila + 1)].Value := obtenerDatosFirmantes('Puesto', 2);

    Excel.Columns['A' + ':' + ColumnaNombre(finalFechaColumnaAntidoping)].EntireColumn.AutoFit;

    Excel.Cells.Select;
    Excel.Selection.Interior.Pattern := 1;
    Excel.Selection.Interior.PatternColorIndex := -4105;
    Excel.Selection.Interior.ThemeColor := 1;

    Excel.activeWindow.zoom := 83;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.cuerpoResumenReporteExcel(Excel: Variant);
var
  Fila, Columna, incrementable : Integer;
  idProgramaRecursivoAnterior : Integer;
  fechaAnterior : string;
  conceptoEvaluado : Boolean;
  finalColumnaExamenMedico, finalFechaColumnaAntidoping : Integer;
begin
  //Coloca toda la informacion en el resumen de examen medico
  try
    Fila    := 6;

    idProgramaRecursivoAnterior := 0;
    fechaAnterior := '';

    combinarYCentrarDatosEncabezados(Excel, 'A6:A7');
    combinarYCentrarDatosEncabezados(Excel, 'B6:B7');
    combinarYCentrarDatosEncabezados(Excel, 'C6:C7');
    combinarYCentrarDatosEncabezados(Excel, 'D6:D7');
    combinarYCentrarDatosEncabezados(Excel, 'E6:E7');

    Excel.Range['A6'].Value :=             'NOMBRE';
    Excel.Range['B6'].Value :=          'CATEGORIA';
    Excel.Range['C6'].Value :=   'FECHA DEL EXAMEN';
    Excel.Range['D6'].Value := 'ESTATUS DEL EXAMEN';
    Excel.Range['E6'].Value :=         'PLATAFORMA';

    bordesCeldas(Excel, 'A6', True);
    bordesCeldas(Excel, 'B6', True);
    bordesCeldas(Excel, 'C6', True);
    bordesCeldas(Excel, 'D6', True);
    bordesCeldas(Excel, 'E6', True);

    Fila := 7;
    Columna := 7;
    finalColumnaExamenMedico := 7;

    //Colocar las columnas de los Tipos de examenes que hay en rhu_catalogoexamenmedico
    filtrarTodoCatalogoExamenMedicoCATALOGO;

    zqryCatalogoExamenMedicoCATALOGO.First;
    while Not zqryCatalogoExamenMedicoCATALOGO.Eof do    
    begin
      if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
      begin
        Excel.Range[ColumnaNombre(Columna) + '7'].Value := zqryCatalogoExamenMedicoCATALOGO.FieldByName('Descripcion').AsString + '(' +
                                                           FloatToStr(zqryCatalogoExamenMedicoCATALOGO.FieldByName('valorMinimo').AsFloat) + '-' +
                                                           FloatToStr(zqryCatalogoExamenMedicoCATALOGO.FieldByName('valorMaximo').AsFloat) + ' ' +
                                                           zqryCatalogoExamenMedicoCATALOGO.FieldByName('Medida').AsString + ')';
        finalColumnaExamenMedico := finalColumnaExamenMedico + 1;
        finalFechaColumnaAntidoping := finalColumnaExamenMedico;
      end else if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
      begin
        Excel.Range[ColumnaNombre(Columna) + '7'].Value := zqryCatalogoExamenMedicoCATALOGO.FieldByName('Descripcion').AsString;
        finalFechaColumnaAntidoping := finalFechaColumnaAntidoping + 1;
      end;

      Columna := Columna + 1;         
      zqryCatalogoExamenMedicoCATALOGO.Next;
    end;

    combinarYCentrarDatosEncabezados(Excel, 'F6:' + ColumnaNombre(finalColumnaExamenMedico - 1) + '6');
    Excel.Range['F6'].Value := 'EXAMEN MEDICO(RESULTADOS)';
    bordesCeldas(Excel, 'F6:' + ColumnaNombre(finalColumnaExamenMedico - 1) + '6', True);

    combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(finalColumnaExamenMedico) + '6' + ':' + ColumnaNombre(finalFechaColumnaAntidoping - 1) + '6');
    Excel.Range[ColumnaNombre(finalColumnaExamenMedico) + '6'].Value := 'ANTIDOPING';
    bordesCeldas(Excel, ColumnaNombre(finalColumnaExamenMedico) + '6' + ':' + ColumnaNombre(finalFechaColumnaAntidoping - 1) + '6', True);

    combinarYCentrarDatosEncabezados(Excel, ColumnaNombre(finalFechaColumnaAntidoping) + '6' + ':' + ColumnaNombre(finalFechaColumnaAntidoping) + '7');
    Excel.Range[ColumnaNombre(finalFechaColumnaAntidoping) + '6'].Value := 'OBSERVACIONES';
    bordesCeldas(Excel, ColumnaNombre(finalFechaColumnaAntidoping) + '6', True);

    Excel.Range['F7'].Value := 'Grupo Sanguineo';

    for incrementable := 6 to finalFechaColumnaAntidoping - 1 do
    begin
      bordesCeldas(Excel, ColumnaNombre(incrementable) + '7', True);
    end;

    zqryProgramaRecursivoSELECT.First;
    while Not zqryProgramaRecursivoSELECT.Eof do
    begin
      if ((idProgramaRecursivoAnterior <> zqryProgramaRecursivoSELECT.FieldByName('idProgramaRecursivo').AsInteger) or (idProgramaRecursivoAnterior = 0)) and (zqryProgramaRecursivoSELECT.FieldByName('activo').AsString = 'Si') then
      begin
        if (fechaAnterior <> DateToStr(zqryProgramaRecursivoSELECT.FieldByName('fechaProgramada').AsDateTime)) or (fechaAnterior = '') then
        begin
          Fila := Fila + 2;
          Excel.Range['A' + IntToStr(Fila-1)].Value := DatetoStrSql(zqryProgramaRecursivoSELECT.FieldByName('fechaProgramada').AsDateTime);
          //Poner en negritas la fecha que esta como Agrupador
          fuenteLetras(Excel, 'A' + IntToStr(Fila-1), 'Arial', 10, True);
        end;

        Excel.Range['A' + IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT.FieldByName('nombreCompleto').AsString;
        Excel.Range['B' + IntToStr(Fila)].Value :=    zqryProgramaRecursivoSELECT.FieldByName('titulocargo').AsString;
        Excel.Range['C' + IntToStr(Fila)].Value := DateToStr(zqryProgramaRecursivoSELECT.FieldByName('fechaProgramada').AsDateTime);
        Excel.Range['D' + IntToStr(Fila)].Value :=         zqryProgramaRecursivoSELECT.FieldByName('Status').AsString;
        Excel.Range['E' + IntToStr(Fila)].Value :=     zqryProgramaRecursivoSELECT.FieldByName('plataforma').AsString;
        Excel.Range['F' + IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT.FieldByName('gruposanguineo').AsString;

        Columna := 7;

        zqryCatalogoExamenMedicoCATALOGO.First;
        while Not zqryCatalogoExamenMedicoCATALOGO.Eof do
        begin
          if Not CargarDatosFiltrados(zqryProgramaRecursivoSELECT2, 'idProgramaRecursivo', [zqryProgramaRecursivoSELECT.FieldByName('idProgramaRecursivo').AsInteger]) then
            raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programaRecursivo']);

          if zqryProgramaRecursivoSELECT2.Active then
            zqryProgramaRecursivoSELECT2.Refresh
          else
            zqryProgramaRecursivoSELECT2.Open;

          conceptoEvaluado := False;
          zqryProgramaRecursivoSELECT2.First;
          while Not zqryProgramaRecursivoSELECT2.Eof do
          begin
            if zqryProgramaRecursivoSELECT2.FieldByName('idcatalogoexamenmedico').AsInteger = zqryCatalogoExamenMedicoCATALOGO.FieldByName('idcatalogoexamenmedico').AsInteger then
            begin
              if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
              begin
                Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT2.FieldByName('ResultadoEstudioExamen').AsString;
              end
              else if zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
              begin
                Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT2.FieldByName('ResultadoDopaje').AsString;
              end;
              conceptoEvaluado := True;
            end;

            zqryProgramaRecursivoSELECT2.Next;
          end;

          if (Not conceptoEvaluado) and (zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 1) then
          begin
            Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := '0';
          end
          else if (Not conceptoEvaluado) and (zqryCatalogoExamenMedicoCATALOGO.FieldByName('idTipoExamen_Medico').AsInteger = 2) then
          begin
            Excel.Range[ColumnaNombre(Columna) +  IntToStr(Fila)].Value := 'NEGATIVO';
          end;     

          Columna := Columna + 1;
          zqryCatalogoExamenMedicoCATALOGO.Next;
        end;

        Excel.Range[ColumnaNombre(finalFechaColumnaAntidoping) +  IntToStr(Fila)].Value := zqryProgramaRecursivoSELECT2.FieldByName('Observaciones').AsString;

        Fila := Fila + 1;
      end;

      idProgramaRecursivoAnterior := zqryProgramaRecursivoSELECT.FieldByName('idProgramaRecursivo').AsInteger;
      fechaAnterior := DateToStr(zqryProgramaRecursivoSELECT.FieldByName('fechaProgramada').AsDateTime);
      zqryProgramaRecursivoSELECT.Next;
    end;

    bordesCeldas(Excel, 'C1:' + ColumnaNombre(finalFechaColumnaAntidoping) + '4', True);

    //Poner los bordes normales a todo el cuerpo con datos
    bordesCeldas(Excel, 'A8:' + ColumnaNombre(finalFechaColumnaAntidoping) + IntToStr(Fila - 1), False);
    fuenteLetras(Excel, 'A1', 'Arial Unicode MS', 10, True);
    fuenteLetras(Excel, 'C1:C4', 'Arial Unicode MS', 12, True);
    fuenteLetras(Excel, 'A6:' + ColumnaNombre(finalFechaColumnaAntidoping) + '7', 'Calibri', 11, True);

    //Colocar los firmantes que comprendan la fecha del sistema
    Fila := Fila + 3;

    //Firmante 1
    combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila) + ':' + 'B' + IntToStr(Fila));
    Excel.Range['A' + IntToStr(Fila)].Select;
    Excel.Range['A' + IntToStr(Fila)].Value := obtenerDatosFirmantes('Firmante', 1);
    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight          :=     xlMedium;
    //Puesto 1
    combinarYCentrarDatosEncabezados(Excel, 'A' + IntToStr(Fila + 1) + ':' + 'B' + IntToStr(Fila + 1));
    Excel.Range['A' + IntToStr(Fila + 1)].Value := obtenerDatosFirmantes('Puesto', 1);

    //Firmante 2
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila) + ':' + 'H' + IntToStr(Fila));
    Excel.Range['F' + IntToStr(Fila)].Select;
    Excel.Range['F' + IntToStr(Fila)].Value := obtenerDatosFirmantes('Firmante', 2);
    Excel.Selection.Borders[xlEdgeBottom].LineStyle       := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight          :=     xlMedium;

    //Puesto 2
    combinarYCentrarDatosEncabezados(Excel, 'F' + IntToStr(Fila + 1) + ':' + 'H' + IntToStr(Fila + 1));
    Excel.Range['F' + IntToStr(Fila + 1)].Value := obtenerDatosFirmantes('Puesto', 2);

    Excel.Columns['A' + ':' + ColumnaNombre(finalFechaColumnaAntidoping)].EntireColumn.AutoFit;

    Excel.Cells.Select;
    Excel.Selection.Interior.Pattern := 1;
    Excel.Selection.Interior.PatternColorIndex := -4105;
    Excel.Selection.Interior.ThemeColor := 1;

    Excel.activeWindow.zoom := 83;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.datasetEmpleadosParaReportes;
begin
  //Crea los campos para el grid que contendra a los empleados que tengan evaluaciones
  try
    if cdEmpleadosParaReportes.FieldCount = 0 then
    begin
      cdEmpleadosParaReportes.FieldDefs.Add('idPersonal', ftInteger, 0, False);
      cdEmpleadosParaReportes.FieldDefs.Add('codigopersonal', ftString, 100, False);
      cdEmpleadosParaReportes.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdEmpleadosParaReportes.FieldDefs.Add('titulocargo', ftString, 255, False);
      cdEmpleadosParaReportes.FieldDefs.Add('grupoSanguineo', ftString, 100, False);
      cdEmpleadosParaReportes.FieldDefs.Add('telefono', ftString, 60, False);
      cdEmpleadosParaReportes.FieldDefs.Add('plataforma', ftString, 255, False);
      cdEmpleadosParaReportes.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.datasetMemoriaDocumentosVencidos;
begin
  //Crea los campos para el dataset en Memoria para los documentos Vencidos, el cual estara enlazado al grid de Documentos Vencidos
  try
    if cdDocumentosVencidosMEMORIA.FieldCount = 0 then
    begin
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('idPersonal', ftInteger, 0, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('titulocargo', ftString, 255, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('codigo', ftString, 100, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('idDoctosxCargo', ftInteger, 0, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('idDocumento', ftInteger, 0, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('nombreDocumento', ftString, 255, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('telefono', ftString, 60, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('Correo', ftString, 150, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('fechaInicioVigencia', ftDate, 0, False);
      cdDocumentosVencidosMEMORIA.FieldDefs.Add('fechaTerminoVigencia', ftDate, 0, False);
      cdDocumentosVencidosMEMORIA.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.datasetParaReporteAntecedentes;
begin
  //Crea los campos para el dataset que aliomentara al reporte AntecedenetsDeSalud.fr3
  try
    if cdDatosParaReporteAntecedente.FieldCount = 0 then
    begin
      cdDatosParaReporteAntecedente.FieldDefs.Add('idcatalogoexamenmedico', ftInteger, 0, False);
      cdDatosParaReporteAntecedente.FieldDefs.Add('NombreCompleto', ftString, 255, False);
      cdDatosParaReporteAntecedente.FieldDefs.Add('fechaProgramada', ftString, 50, False);
      cdDatosParaReporteAntecedente.FieldDefs.Add('Evaluado', ftString, 10, False);
      cdDatosParaReporteAntecedente.FieldDefs.Add('Descripcion', ftString, 255, False);
      cdDatosParaReporteAntecedente.FieldDefs.Add('EtiquetaEspecificar', ftString, 25, False);
      cdDatosParaReporteAntecedente.FieldDefs.Add('EspecificacionesAntecedentes', ftString, 255, False);
      cdDatosParaReporteAntecedente.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.datasetTiposExamenes;
begin
  //Crea los campos para el TClientDataset cdTiposExamenes
  try
    if cdTiposExamenMedicos.FieldCount = 0 then
    begin
      cdTiposExamenMedicos.FieldDefs.Add('idTipoExamen_Medico', ftInteger, 0, False);
      cdTiposExamenMedicos.FieldDefs.Add('idcatalogoexamenmedico', ftInteger, 0, False);
      cdTiposExamenMedicos.FieldDefs.Add('Descripcion', ftString, 255, False);
      cdTiposExamenMedicos.FieldDefs.Add('Titulo', ftString, 255, False);
      cdTiposExamenMedicos.CreateDataSet;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.datosEmpleadoProReaVen(idPersonal : Integer);
var
  datosEmpleados : TZQuery;
begin
  //Trae los datos de los empleados para el dataset cdDatasetProReaVen para el reporte de estatus de examenes medicos
  try
    try
      datosEmpleados := TZQuery.Create(Self);

      if Not AsignarSentencia(datosEmpleados, 'nuc_personal_medico', ccCatalog) then
        raise EInteliException.CreateByCode(5, ['nuc_personal_medico']);

      if Not CargarDatosFiltrados(datosEmpleados, 'idPersonal', [idPersonal]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

      datosEmpleados.Open;

      if datosEmpleados.RecordCount > 0 then
      begin
        cdDatasetProReaVen.FieldByName('codigopersonal').AsString := datosEmpleados.FieldByName('codigopersonal').AsString;
        cdDatasetProReaVen.FieldByName('NombreCompleto').AsString := datosEmpleados.FieldByName('NombreCompleto').AsString;
        cdDatasetProReaVen.FieldByName('titulocargo').AsString    :=    datosEmpleados.FieldByName('titulocargo').AsString;
        cdDatasetProReaVen.FieldByName('grupoSanguineo').AsString := datosEmpleados.FieldByName('grupoSanguineo').AsString;
      end;
    finally
      datosEmpleados.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.destruirObjetosDocumentos;
var
  i : Integer;
begin
  //Destruir Objetos de la pestana Documentos Medicos para que no se repitan con los nombres de la pestana
  //Vigencias de Documentos Medicos
  if Length(Documentos.botonArchivo) > 0 then
  begin
    for i := 0 to Length(Documentos.botonArchivo) - 1 do
    begin
      if Documentos.labelIndicativoDocumento[i] <> nil then
      begin
        Documentos.labelIndicativoDocumento[i].Destroy;
        Documentos.labelIndicativoDocumento[i] := nil;
      end;

      if Documentos.botonArchivo[i] <> nil then
      begin
        Documentos.botonArchivo[i].Destroy;
        Documentos.botonArchivo[i]  := nil;
      end;

      if Documentos.labelIndicativoInicioVigencia[i] <> nil then
      begin
        Documentos.labelIndicativoInicioVigencia[i].Destroy;
        Documentos.labelIndicativoInicioVigencia[i] := nil;
      end;

      if Documentos.calendarioInicioVigencia[i] <> nil then
      begin
        TcxCustomMaskEdit(Documentos.calendarioInicioVigencia[i]).Enabled := False;
        Documentos.calendarioInicioVigencia[i].Destroy;
        Documentos.calendarioInicioVigencia[i] := nil;
      end;

      if Documentos.labelIndicativoTerminoVigencia[i] <> nil then
      begin
        Documentos.labelIndicativoTerminoVigencia[i].Destroy;
        Documentos.labelIndicativoTerminoVigencia[i] := nil;
      end;

      if Documentos.calendarioTerminoVigencia[i] <> nil then
      begin
        TcxCustomMaskEdit(Documentos.calendarioTerminoVigencia[i]).Enabled := False;
        Documentos.calendarioTerminoVigencia[i].Destroy;
        Documentos.calendarioTerminoVigencia[i]  := nil;
      end;

      if Documentos.palomita[i] <> nil then
      begin
        Documentos.palomita[i].Destroy;
        Documentos.palomita[i] := nil;
      end;

      if Documentos.botonEliminarRegistroDocumento[i] <> nil then
      begin
        Documentos.botonEliminarRegistroDocumento[i].Destroy;
        Documentos.botonEliminarRegistroDocumento[i] := nil;
      end;
    end;
  end;
end;

procedure TFrmProgramaDeSalud.destruirObjetosHistorial;
var
  i : Integer;
begin
  //Destruir objetos de la pestana Historial si es que existen
  try
    if Length(Historial.labelFechaExamen) > 0 then
    begin
      for i := 0 to Length(Historial.labelFechaExamen) - 1 do
      begin
        if Historial.checkMostrar[i] <> nil then
        begin
          Historial.checkMostrar[i].Destroy;
          Historial.checkMostrar[i] :=  nil;
        end;

        if Historial.labelTituloExamen[i] <> nil then
        begin
          Historial.labelTituloExamen[i].Destroy;
          Historial.labelTituloExamen[i] :=  nil;
        end;

        if Historial.labelTipoExamen[i] <> nil then
        begin
          Historial.labelTipoExamen[i].Destroy;
          Historial.labelTipoExamen[i] :=  nil;
        end;

        if Historial.labelFechaExamen[i] <> nil then
        begin
          Historial.labelFechaExamen[i].Destroy;
          Historial.labelFechaExamen[i] :=  nil;
        end;

        if Historial.labelCantidad[i] <> nil then
        begin
          Historial.labelCantidad[i].Destroy;
          Historial.labelCantidad[i] :=  nil;
        end;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.destruirObjetosPestanaExamenMedico;
var
  indice : Integer;
begin
  if Length(Evaluacion.objetosCajasTexto) > 0 then
  begin
    for indice := 0 to Length(Evaluacion.objetosCajasTexto) - 1 do
    begin
      if Evaluacion.objetosCajasTexto[indice] <> nil then
      begin
        Evaluacion.objetosCajasTexto[indice].Destroy;
        Evaluacion.objetosCajasTexto[indice] :=  nil;
      end;

      if Evaluacion.LabelsIndicativos[indice] <> nil then
      begin
        Evaluacion.LabelsIndicativos[indice].Destroy;
        Evaluacion.LabelsIndicativos[indice] :=  nil;
      end;

      if Evaluacion.LabelsMedidas[indice] <> nil then
      begin
        Evaluacion.LabelsMedidas[indice].Destroy;
        Evaluacion.LabelsMedidas[indice] :=  nil;
      end;
    end;
  end;

  if Length(Antidoping.comboBoxAntidoping) > 0 then
  begin
    for indice := 0 to Length(Antidoping.comboBoxAntidoping) - 1 do
    begin
      
     if Antidoping.labelsIndicativosAntidoping[indice] <> nil then
      begin
        Antidoping.labelsIndicativosAntidoping[indice].Destroy;
        Antidoping.labelsIndicativosAntidoping[indice] :=  nil;
      end;

      if Antidoping.comboBoxAntidoping[indice] <> nil then
      begin
        Antidoping.comboBoxAntidoping[indice].Destroy;
        Antidoping.comboBoxAntidoping[indice] :=  nil;
      end;
    end;
  end;
  
  if Length(Antecedentes.checkBoxAntecedentes) > 0 then
  begin
    for indice := 0 to Length(Antecedentes.checkBoxAntecedentes) - 1 do
    begin
      if Antecedentes.checkBoxAntecedentes[indice] <> nil then
      begin
        Antecedentes.checkBoxAntecedentes[indice].Destroy;
        Antecedentes.checkBoxAntecedentes[indice]  := nil;
      end;
      if Antecedentes.labelEspecificar[indice] <> nil then
      begin
        Antecedentes.labelEspecificar[indice].Destroy;
        Antecedentes.labelEspecificar[indice] :=  nil;
      end;
      if Antecedentes.cajaTextoEspecificar[indice] <> nil then
      begin
        Antecedentes.cajaTextoEspecificar[indice].Destroy;
        Antecedentes.cajaTextoEspecificar[indice] :=  nil;
      end;
    end;
  end;
end;

procedure TFrmProgramaDeSalud.destruirObjetosVigenciasDocumentosTodos;
var
  indiceArray : Integer;
begin
  //Destruye los objetos de la pestana Vigencia Documentos Todos
  try
    if Length(Vigencias.spinNumeroDiasAviso) > 0 then
    begin
      for indiceArray := 0 to Length(Vigencias.spinNumeroDiasAviso) - 1 do
      begin
        if Vigencias.labelVigenciaDocumento[indiceArray] <> nil then
        begin
          Vigencias.labelVigenciaDocumento[indiceArray].Destroy;
          Vigencias.labelVigenciaDocumento[indiceArray] := nil;
        end;

        if Vigencias.spinNumeroDiasAviso[indiceArray] <> nil then
        begin
          TcxCustomMaskEdit(Vigencias.spinNumeroDiasAviso[indiceArray]).Enabled := False;
          Vigencias.spinNumeroDiasAviso[indiceArray].Destroy;
          Vigencias.spinNumeroDiasAviso[indiceArray] := nil;
        end;

        if Vigencias.comboRecursividad[indiceArray] <> nil then
        begin
          Vigencias.comboRecursividad[indiceArray].Destroy;
          Vigencias.comboRecursividad[indiceArray] := nil
        end;

        if Vigencias.labelAntesDeVencimiento[indiceArray] <> nil then
        begin
          Vigencias.labelAntesDeVencimiento[indiceArray].Destroy;
          Vigencias.labelAntesDeVencimiento[indiceArray] := nil;
        end;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.documentoAsignadoAEmpleado(idDocumento,
  idPersonal: Integer): Boolean;
var
  doctosXCargo : TZQuery;
begin
  //Devuelve True si al empleado ya se le dio de alta el documento
  try
    try
      doctosXCargo := TZQuery.Create(Self);

      if not AsignarSentencia(doctosXCargo, 'rhu_doctosxcargo_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_doctozxcargo_medico']);

      if Not CargarDatosFiltrados(doctosXCargo, 'idDoctosxCargo, idCargo, idPersonal, idDocumento, obligatorio, idgrupo, fechaInicioVigencia, fechaTerminoVigencia',
                                  [-1, -1, idPersonal, idDocumento, -1, -1, -1, -1]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'idDocumento', 'rhu_doctosxcargo_medico']);

      if doctosXCargo.Active then
        doctosXCargo.Refresh
      else
        doctosXCargo.Open;

      if doctosXCargo.RecordCount > 0 then
        Result := True
      else
        Result := False;
    finally
      doctosXCargo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.DocumentoEsRegistroActivo(
  idDocumento: Integer): Boolean;
var
  doctos : TZQuery;
begin
  //Validar que si el registro del catalogo de documentos es un registro activo, entonces devolver True
  //y no permitir eliminar dicho registro, Devuelve true si ese documento no ha sido asignado a ningun personal
  try
    doctos := TZQuery.Create(Self);

    if Not AsignarSentencia(doctos, 'rhu_doctosxcargo_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_doctosxcargo_medico']);

    if Not CargarDatosFiltrados(doctos, 'idDocumento', [idDocumento]) then
      raise EInteliException.CreateByCode(6, ['idDocumento', 'rhu_doctosxcargo_medico']);

    if doctos.Active then
      doctos.Refresh
    else
      doctos.Open;

    if doctos.RecordCount > 0 then
      Result := True
    else
      Result := False;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.editarDoctosXCargo(idDocumento,
  idPersonal: Integer; fechaInicio, fechaTermino, ruta : string);
var
  doctoXCargo : TZQuery;
  blobField : TBlobField;
begin
  //Edita un registro de la tabla rhu_doctosxcargo
  try
    try
      doctoXCargo := TZQuery.Create(Self);

      if Not AsignarSentencia(doctoXCargo, 'rhu_doctosxcargo_medico', ccUpdate) then
        raise EInteliException.CreateByCode(6, ['rhu_doctosxcargo']);

      if Not CargarDatosFiltrados(doctoXCargo, 'idDoctosxCargo, idCargo, idPersonal, idDocumento, obligatorio, idgrupo, fechaInicioVigencia, fechaTerminoVigencia',
                                  [-1, -1, idPersonal, idDocumento, -1, -1, -1, -1]) then
        raise EInteliException.CreateByCode(6, ['idDocumento', 'idPersonal', 'rhu_doctosxcargo_medico']);

      if doctoXCargo.Active then
        doctoXCargo.Refresh
      else
        doctoXCargo.Open;

      if doctoXCargo.RecordCount > 0 then
      begin
        doctoXCargo.Edit;

        //doctoXCargo.FieldByName('idPersonal').AsInteger  :=  idPersonal;
        //doctoXCargo.FieldByName('idDocumento').AsInteger := idDocumento;
        doctoXCargo.FieldByName('fechaInicioVigencia').AsDateTime  :=  StrToDate(fechaInicio);
        doctoXCargo.FieldByName('fechaTerminoVigencia').AsDateTime := StrToDate(fechaTermino);
        doctoXCargo.FieldByName('fechaExpedicion').AsDateTime := Now;

        if ExtractFileExt(ruta) = '.pdf' then
        begin
          doctoXCargo.FieldByName('extensionArchivo').AsString := 'pdf';
        end else if (ExtractFileExt(ruta) = '.jpg') or (ExtractFileExt(ruta) = '.jpeg') then
        begin
          doctoXCargo.FieldByName('extensionArchivo').AsString := 'jpg';
        end;

        if ruta <> '' then
        begin
          blobField := doctoXCargo.FieldByName('archivo') as TBlobField;
          blobField.LoadFromFile(ruta);
        end;

        doctoXCargo.Post;
        doctoXCargo.ApplyUpdates;
      end;
    finally
      doctoXCargo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.edtCodigoAntecedentesKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Validar que no se vayan letras raras  if Key = #255 then
  if not((Key in ['A'..'Z','A',#8]) or (Key in ['a'..'z', 'a', #8])) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmProgramaDeSalud.edtCodigoAntidopingKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Validar que no se vayan letras raras  if Key = #255 then
  if not((Key in ['A'..'Z','A',#8]) or (Key in ['a'..'z', 'a', #8])) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmProgramaDeSalud.edtCodigoDocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  //Validar que no se vayan letras raras  if Key = #255 then
  if not((Key in ['A'..'Z','A',#8]) or (Key in ['a'..'z', 'a', #8])) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmProgramaDeSalud.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  //Validar que no se vayan letras raras  if Key = #255 then
  if not((Key in ['A'..'Z','A',#8]) or (Key in ['a'..'z', 'a', #8])) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmProgramaDeSalud.eliminarRegistroDocumento(Sender: TObject);
var
  doctoXCargo : TZQuery;
  idDocumento : Integer;
begin
  //Elimina el registro del Documento dado de alta a un empleado cuando el usuario le de click en el boton X(Eliminar)
  try
    if MessageDlg('¿Desea eliminar el registro del Documento asignado al empleado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //Eliminar el registro de la tabla rhu_doctosxcargo
      doctoXCargo := TZQuery.Create(Self);
      idDocumento := obtenerIdDocumento(TcxButton(Sender).Description);

      if Not AsignarSentencia(doctoXCargo, 'rhu_doctosxcargo_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_doctoxcargo_medico']);

      if Not CargarDatosFiltrados(doctoXCargo, 'idPersonal, idDocumento', [zqryPersonal.FieldByName('idPersonal').AsInteger,
                                                                           idDocumento]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'idDocumento', 'rhu_doctoxcargo_medico']);

      if doctoXCargo.Active then
        doctoXCargo.Refresh
      else
        doctoXCargo.Open;

      if doctoXCargo.RecordCount > 0 then
      begin
        //Posicionado en el registro a eliminar, entonces eliminar dicho registro
        doctoXCargo.Delete;
        doctoXCargo.ApplyUpdates;
        actualizarObjetosDocumentos;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.empleadosParaReportes;
var
  empleadosProgramaRecursivo : TZQuery;
  idPersonalAnterior : Integer;
begin
  //Traer todos los empleados que ya fieron evaluados para ponerlos en el grid y poder imprimir sus reportes
  try
    empleadosProgramaRecursivo := TZQuery.Create(Self);

    if Not AsignarSentencia(empleadosProgramaRecursivo, 'rhu_programarecursivo', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

    if Not CargarDatosFiltrados(empleadosProgramaRecursivo, 'idProgramaRecursivo', [-1]) then
      raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

    empleadosProgramaRecursivo.Open;
    if empleadosProgramaRecursivo.RecordCount > 0 then
    begin
      datasetEmpleadosParaReportes;
      cdEmpleadosParaReportes.Open;
      idPersonalAnterior := 0;

      cdEmpleadosParaReportes.EmptyDataSet;

      while not empleadosProgramaRecursivo.Eof do
      begin
        if ((empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger <> idPersonalAnterior) or
            (idPersonalAnterior = 0)) and (empleadosProgramaRecursivo.FieldByName('activo').AsString = 'Si') then
        begin
          if Not CargarDatosFiltrados(zqryPersonal, 'idPersonal', [empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

          if zqryPersonal.Active then
            zqryPersonal.Refresh
          else
            zqryPersonal.Open;

          if zqryPersonal.RecordCount > 0 then
          begin
            cdEmpleadosParaReportes.Append;
            cdEmpleadosParaReportes.FieldByName('idPersonal').AsInteger    :=    zqryPersonal.FieldByName('idPersonal').AsInteger;
            cdEmpleadosParaReportes.FieldByName('codigopersonal').AsString := zqryPersonal.FieldByName('codigopersonal').AsString;
            cdEmpleadosParaReportes.FieldByName('NombreCompleto').AsString := zqryPersonal.FieldByName('NombreCompleto').AsString;
            cdEmpleadosParaReportes.FieldByName('titulocargo').AsString    :=    zqryPersonal.FieldByName('titulocargo').AsString;
            cdEmpleadosParaReportes.FieldByName('grupoSanguineo').AsString := zqryPersonal.FieldByName('grupoSanguineo').AsString;
            cdEmpleadosParaReportes.FieldByName('telefono').AsString       :=       zqryPersonal.FieldByName('telefono').AsString;
            cdEmpleadosParaReportes.FieldByName('plataforma').AsString     :=     zqryPersonal.FieldByName('plataforma').AsString;
            cdEmpleadosParaReportes.Post;
          end;
        end;

        idPersonalAnterior := empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger;
        empleadosProgramaRecursivo.Next;
      end;

      //gridEmpleadosParaReportesExamenMedico.Align := alBottom;
      gridTiposExamenes.Align := alRight;

      //Abrir la ventana con el grid con empleados
      crearPanelInsertarCatalogo(panelReportesExamenMedico, formularioInsertarCatalogo, 'Empleados Evaluados', 995, 450);

      traerTodoNucPersonal;

    end
    else
      MessageDlg('¡No hay Registros para el reporte!', mtInformation, [mbOk], 0)
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.estadoBotones(botonProgramarFecha,
  botonEliminarFechaProgramada, botonMarcarRealizado,
  botonDesmarcarRealizado: Boolean);
begin
  //Habilitar o deshabilitar el boton segun sea True o False el parametro para cada boton
  btnProgramarFecha.Enabled          :=          botonProgramarFecha;
  btnEliminarFechaProgramada.Enabled := botonEliminarFechaProgramada;
  btnMarcarRealizado.Enabled         :=         botonMarcarRealizado;
  btnDesmarcarRealizado.Enabled      :=      botonDesmarcarRealizado;
end;

procedure TFrmProgramaDeSalud.estadoBotonesCatalogoExamenMedico(
  estado: Boolean);
begin
  //Habilita o deshabilita los botones de la pestana de Examen Medico. Se deshabilita cuando
  //se este en la pestana Observaciones
  btnAgregarCatalogoExamenMedico.Enabled  := estado;
  btnEditarCatalogoExamenMedico.Enabled   := estado;
  btnEliminarCatalogoExamenMedico.Enabled := estado;
end;

procedure TFrmProgramaDeSalud.estiloDeFocus;
begin
  //color de focus en objetos de panelFormularioCatalogoExamenMedico
  edtGrupoSanguineo.StyleFocused.Color := clSkyBlue;
  edtCodigo.StyleFocused.Color         := clSkyBlue;
  edtDescripcion.StyleFocused.Color    := clSkyBlue;
  spinValorMinimo.StyleFocused.Color   := clSkyBlue;
  spinValorMaximo.StyleFocused.Color   := clSkyBlue;
  spinValorMinimo.Properties.MinValue  := 0;
  spinValorMinimo.Properties.MaxValue  := 100000;
  spinValorMaximo.Properties.MinValue  := 0;
  spinValorMaximo.Properties.MaxValue  := 100000;
  edtMedida.StyleFocused.Color         := clSkyBlue;

  //color de focus en objetos de panelInsertarCatalogoAntidoping
  edtCodigoAntidoping.StyleFocused.Color      := clSkyBlue;
  edtDescripcionAntidoping.StyleFocused.Color := clSkyBlue;

  //Color de focus en objetos de Guardar/Cancelar Catalogo de Antecedentes
  edtCodigoAntecedentes.StyleFocused.Color := clSkyBlue;
  edtCodigoAntecedentes.StyleFocused.Color := clSkyBlue;

  //Color de focus en `cajas de texto del formulario de agregar un nuevo registro al catalogo de documentos
  edtCodigoDocumento.StyleFocused.Color := clSkyBlue;
  edtDocumento.StyleFocused.Color := clSkyBlue;

  //CheckBox de la pestana Reportes cbbDel y cbbAl
  cbbDel.StyleFocused.Color := clSkyBlue;
  cbbAl.StyleFocused.Color  := clSkyBlue;
end;

procedure TFrmProgramaDeSalud.eventoCheckGrafica(Sender: TObject);
var
  index, indexCodigos, noSerie : Integer;
begin
  //Evento de los checks para graficar
  try
    //Primero eliminar todos las Series del Grid
    for index := 0 to vistaGrafica.SeriesCount - 1 do
    begin
      if vistaGrafica.Series[0] <> nil then
        vistaGrafica.Series[0].Destroy;
      //vistaGrafica.Series[index] := nil;
    end;

    SetLength(arrayCodigos, 0);
    for index := 0 to Length(Historial.checkMostrar) - 1 do
    begin
      if Historial.checkMostrar[index] <> nil then
      begin
        SetLength(arrayCodigos, Length(arrayCodigos) + 1);
        arrayCodigos[Length(arrayCodigos) - 1] := Historial.checkMostrar[index].Name;  //Llena array con codigos de examenes medicos(Glucosa, Colesterol)
      end;
    end;

    //Una vez que se eliminaron todas las series, entonces meter las nuevas series conforme el usuario seleccione
    //con los checkbox
    camposCdGrafica(arrayCodigos);
    cdGrafica.Open;
    cdGrafica.EmptyDataSet;

    if Not AsignarSentencia(zqryGrafica, 'rhu_examenmedico', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

    noSerie := 0;
    for indexCodigos := 0 to Length(arrayCodigos) - 1 do
    begin
      for index := 0 to Length(Historial.checkMostrar) - 1 do
      begin
        if (Historial.checkMostrar[index] <> nil) and (Historial.checkMostrar[index].Checked) and (Historial.checkMostrar[index].Name = arrayCodigos[indexCodigos]) then
        begin
          if Not CargarDatosFiltrados(zqryGrafica, 'idPersonal, codigo, idTipoExamen_Medico',
                                      [zqryHistorialPersonal.FieldByName('idPersonal').AsInteger,
                                       arrayCodigos[indexCodigos], 1]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'idTipoExamen_Medico', 'rhu_examenmedico']);

          if zqryGrafica.Active then
            zqryGrafica.Refresh
          else
            zqryGrafica.Open;

          if zqryGrafica.RecordCount > 0 then
          begin
            while not zqryGrafica.Eof do
            begin
              cdGrafica.Append;
              cdGrafica.FieldByName(zqryGrafica.FieldByName('codigo').AsString).AsFloat :=  zqryGrafica.FieldByName('ResultadoEstudioExamen').AsFloat;
              cdGrafica.FieldByName('fechaProgramada').AsString := DateToStr(zqryGrafica.FieldByName('fechaProgramada').AsDateTime);
              cdGrafica.FieldByName('codigo').AsString                :=                 zqryGrafica.FieldByName('codigo').AsString;
              cdGrafica.FieldByName('Descripcion').AsString           :=            zqryGrafica.FieldByName('Descripcion').AsString;
              cdGrafica.FieldByName('idExamenMedico').AsInteger       :=        zqryGrafica.FieldByName('idExamenMedico').AsInteger;
              cdGrafica.Post;

              zqryGrafica.Next;
            end;

            vistaGrafica.CreateSeries;
            vistaGrafica.Series[noSerie].DataBinding.FieldName := zqryGrafica.FieldByName('codigo').AsString;
            noSerie := noSerie + 1;
          end;
        end;
      end;
    end;

    if noSerie > 0 then
    begin
      vistaGrafica.Title.Text := 'Historial de: ' + zqryHistorialPersonal.FieldByName('NombreCompleto').AsString;
      gridGrafica.Visible := True;
      nivelGrafica.Visible := True;
    end
    else
    begin
      gridGrafica.Visible := False;
      nivelGrafica.Visible := False;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.ExamenMedicoEsRegistroActivo(
  codigo: string): Boolean;
var
  catExamenMedico, exaMedico : TZQuery;
begin
  //Devuelve True si el Registro de los catalogos(Examen medic, Antidoping, Antecedentes) es un registro Activo
  //Devuelve False si no lo es
  try
    try
      catExamenMedico := TZQuery.Create(Self);
      exaMedico := TZQuery.Create(Self);

      if Not AsignarSentencia(catExamenMedico, 'rhu_catalogoexamenmedico', ccCatalog) then
        raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

      if Not AsignarSentencia(exaMedico, 'rhu_examenmedico', ccSelect) then
        raise EInteliException.CreateByCode(6, ['rhu_examenmedico']);

      if Not CargarDatosFiltrados(catExamenMedico, 'codigo', [codigo]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico']);

      if catExamenMedico.Active then
        catExamenMedico.Refresh
      else
        catExamenMedico.Open;

      if catExamenMedico.RecordCount > 0 then
      begin
        if Not CargarDatosFiltrados(exaMedico, 'idcatalogoexamenmedico', [catExamenMedico.FieldByName('idcatalogoexamenmedico').AsInteger]) then
          raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_examenmedico']);

        if exaMedico.Active then
          exaMedico.Refresh
        else
          exaMedico.Open;

        if exaMedico.RecordCount > 0 then
          Result := True
        else
          Result := False;
      end;
    finally
      catExamenMedico.Destroy;
      exaMedico.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.examenMedicoFueEvaluado(idProgramaRecursivo : Integer): Boolean;
var
  examenMedico : TZQuery;
begin
  //Devuelve un True si el examen en la fecha seleccionada y el empleado seleccionado ya fue evaluado
  try
    try
      examenMedico := TZQuery.Create(Self);

      if Not AsignarSentencia(examenMedico, 'rhu_examenmedico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

      if Not CargarDatosFiltrados(examenMedico, 'idProgramaRecursivo', [idProgramaRecursivo]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_examenmedico']);

      if examenMedico.Active then
        examenMedico.Refresh
      else
        examenMedico.Open;

      if examenMedico.RecordCount > 0 then
        Result := True
      else
        Result := False;
    finally
      examenMedico.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.existenDocumentosXVencerse(
  idDocumento, Recursividad: Integer; Medida : string): Boolean;
var
  doctosXCargo       : TZQuery;
  documentosVencidos : Integer;
  ponerEnGrid : Boolean;
begin
  //Devuelve True si existen Documentos que estan por vencerse o estan Vencidos
  try
    Result := False;
    doctosXCargo := TZQuery.Create(Self);

    if Not AsignarSentencia(doctosXCargo, 'rhu_doctosxcargo_medico', ccSelect) then
      raise EInteliException.CreateByCode(5, ['rhu_doctosxcargo_medico']);

    if Not CargarDatosFiltrados(doctosXCargo, 'idDocumento', [idDocumento]) then
      raise EInteliException.CreateByCode(6, ['idDocumento', 'rhu_doctosxcargo_medico']);

    if doctosXCargo.Active then
      doctosXCargo.Refresh
    else
      doctosXCargo.Open;

    if doctosXCargo.RecordCount > 0 then
    begin
      cdDocumentosVencidosMEMORIA.Open;
      //cdDocumentosVencidosMEMORIA.EmptyDataSet;
      doctosXCargo.First;
      while not doctosXCargo.Eof do
      begin
        ponerEnGrid := False;
        if (Medida = 'Dias') and (Recursividad > 0) then
        begin
          if Recursividad >= doctosXCargo.FieldByName('DiasVencimiento').AsInteger then
          begin
            Result := True;
            ponerEnGrid := True;
          end;
        end;

        if (Medida = 'Meses') and (Recursividad > 0) then
        begin
          if Recursividad >= doctosXCargo.FieldByName('MesesVencimiento').AsInteger then
          begin
            Result := True;
            ponerEnGrid := True;
          end;
        end;

        if (Medida = 'Anos') and (Recursividad > 0) then
        begin
          if Recursividad >= doctosXCargo.FieldByName('AnosVencimiento').AsInteger then
          begin
            Result := True;
            ponerEnGrid := True;
          end;
        end;

        if ponerEnGrid = True then
        begin
          cdDocumentosVencidosMEMORIA.Append;
          cdDocumentosVencidosMEMORIA.FieldByName('idPersonal').AsInteger    :=    doctosXCargo.FieldByName('idPersonal').AsInteger;
          cdDocumentosVencidosMEMORIA.FieldByName('NombreCompleto').AsString := doctosXCargo.FieldByName('NombreCompleto').AsString;
          cdDocumentosVencidosMEMORIA.FieldByName('titulocargo').AsString    :=    doctosXCargo.FieldByName('titulocargo').AsString;
          cdDocumentosVencidosMEMORIA.FieldByName('codigo').AsString         :=         doctosXCargo.FieldByName('codigo').AsString;
          cdDocumentosVencidosMEMORIA.FieldByName('idDoctosxCargo').AsInteger := doctosXCargo.FieldByName('idDoctosxCargo').AsInteger;
          cdDocumentosVencidosMEMORIA.FieldByName('idDocumento').AsInteger := doctosXCargo.FieldByName('idDocumento').AsInteger;
          cdDocumentosVencidosMEMORIA.FieldByName('nombreDocumento').AsString := doctosXCargo.FieldByName('nombreDocumento').AsString;
          cdDocumentosVencidosMEMORIA.FieldByName('telefono').AsString       :=       doctosXCargo.FieldByName('telefono').AsString;
          cdDocumentosVencidosMEMORIA.FieldByName('Correo').AsString         :=         doctosXCargo.FieldByName('Correo').AsString;
          cdDocumentosVencidosMEMORIA.FieldByName('fechaInicioVigencia').AsDateTime := doctosXCargo.FieldByName('fechaInicioVigencia').AsDateTime;
          cdDocumentosVencidosMEMORIA.FieldByName('fechaTerminoVigencia').AsString :=   doctosXCargo.FieldByName('fechaTerminoVigencia').AsString;
          cdDocumentosVencidosMEMORIA.Post;
        end;

        doctosXCargo.Next;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.fechaInicioTerminoDoctos(idDocumento,
  idPersonal: Integer; tipoFecha : string): string;
var
  doctos : TZQuery;
begin
  //Devuelve la fecha de inicio  o la fecha de termino segun sea el parametro que se le pase
  try
    try
      doctos := TZQuery.Create(Self);

      if Not AsignarSentencia(doctos, 'rhu_doctosxcargo_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_doctosxcargo_medico']);

      if Not CargarDatosFiltrados(doctos, 'idDoctosxCargo, idCargo, idPersonal, idDocumento, obligatorio, idgrupo, fechaInicioVigencia, fechaTerminoVigencia',
                                  [-1, -1, idPersonal, idDocumento, -1, -1, -1, -1]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'idDocumento', 'rhu_doctosxcargo_medico']);

      if doctos.Active then
        doctos.Refresh
      else
        doctos.Open;

      if doctos.RecordCount > 0 then
      begin
        if tipoFecha = 'fechaInicioVigencia' then
        begin
          Result := DateToStr(doctos.FieldByName('fechaInicioVigencia').AsDateTime);
        end
        else if tipoFecha = 'fechaTerminoVigencia' then
        begin
          Result := DateToStr(doctos.FieldByName('fechaTerminoVigencia').AsDateTime);
        end;
      end;
    finally
      doctos.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.fechasFirmantesSeCruzan(fechaInicio,
  fechaTermino: TDateTime): Boolean;
var
  firmantes : TZQuery;
  fechasCruzadas : Integer;
begin
  //Devuelve True si las fechas de inicio y termino seleccionadas por el usuario se cruzan con
  //el rango de fechas de otros firmantes
  try
    try
      firmantes := TZQuery.Create(Self);

      if not AsignarSentencia(firmantes, 'rhu_firmantesmedicos', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_firmantesmedicos']);

      if Not CargarDatosFiltrados(firmantes, 'idFirmanteMedico', [-1]) then
        raise EInteliException.CreateByCode(6, ['idFirmanteMedico', 'rhu_firmantesmedicos']);

      firmantes.Open;

      if firmantes.RecordCount > 0 then
      begin
        fechasCruzadas := 0;
        firmantes.First;
        while Not firmantes.Eof do
        begin
          if zqryFirmantes.State in [dsInsert] then
          begin
            if ((fechaInicio >= firmantes.FieldByName('fechaInicioFirmante').AsDateTime) and
               (fechaInicio <= firmantes.FieldByName('fechaTerminoFirmante').AsDateTime)) or
               ((fechaTermino >= firmantes.FieldByName('fechaInicioFirmante').AsDateTime) and
               (fechaTermino <= firmantes.FieldByName('fechaTerminoFirmante').AsDateTime)) then
            begin
              fechasCruzadas := fechasCruzadas + 1;
            end;
          end else if zqryFirmantes.State in [dsEdit] then
          begin
            if zqryFirmantes.FieldByName('idFirmanteMedico').AsInteger <> firmantes.FieldByName('idFirmanteMedico').AsInteger then
            begin
              if ((fechaInicio >= firmantes.FieldByName('fechaInicioFirmante').AsDateTime) and
                 (fechaInicio <= firmantes.FieldByName('fechaTerminoFirmante').AsDateTime)) or
                 ((fechaTermino >= firmantes.FieldByName('fechaInicioFirmante').AsDateTime) and
                 (fechaTermino <= firmantes.FieldByName('fechaTerminoFirmante').AsDateTime)) then
              begin
                fechasCruzadas := fechasCruzadas + 1;
              end;
            end;
          end;

          firmantes.Next;
        end;

        if fechasCruzadas > 0 then
            Result := True
        else
          Result := False;
      end
      else
        Result := False;
    finally
      firmantes.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.filtrarTodoCatalogoExamenMedicoCATALOGO;
begin
  //Trae toda la informacion de la consulta rhu_catalogoexamen tipo CATALOGO
  try
    if Not CargarDatosFiltrados(zqryCatalogoExamenMedicoCATALOGO, 'idcatalogoexamenmedico', [-1]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if zqryCatalogoExamenMedicoCATALOGO.Active then
      zqryCatalogoExamenMedicoCATALOGO.Refresh
    else
      zqryCatalogoExamenMedicoCATALOGO.Open;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.filtrarTodoProgramaRecursivoSELECT;
begin
  //Trae todos los datos de la consulta rhu_programarecursivo tipo SELECT
  try
    if zqryProgramaRecursivoSELECT.Active then
      zqryProgramaRecursivoSELECT.Close;

    if Not AsignarSentencia(zqryProgramaRecursivoSELECT, 'rhu_programarecursivo', ccSelect) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

    if Not CargarDatosFiltrados(zqryProgramaRecursivoSELECT, 'idProgramaRecursivo', [-1]) then
      raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

    if zqryProgramaRecursivoSELECT.Active then
      zqryProgramaRecursivoSELECT.Refresh
    else
      zqryProgramaRecursivoSELECT.Open;

    if zqryProgramaRecursivoPlataforma.Active then
      zqryProgramaRecursivoPlataforma.Close;

    if Not AsignarSentencia(zqryProgramaRecursivoPlataforma, 'rhu_programarecursivo_plataformas', ccSelect) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo_plataformas']);

    if Not CargarDatosFiltrados(zqryProgramaRecursivoPlataforma, 'idProgramaRecursivo', [-1]) then
      raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo_plataformas']);

    if zqryProgramaRecursivoPlataforma.Active then
      zqryProgramaRecursivoPlataforma.Refresh
    else
      zqryProgramaRecursivoPlataforma.Open;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.FormCreate(Sender: TObject);
begin
  try
    //Asignar la conexion a la unidad UControlExcepciones para poder utilizar las funciones AsignarSentencia y CargarDatosFiltrados
    AsignarConexion(connection.zConnection);

    Evaluacion   :=   TEvaluacion.Create;
    Antidoping   :=   TAntidoping.Create;
    Antecedentes := TAntecedentes.Create;
    Documentos   :=   TDocumentos.Create;
    Vigencias := TVigenciasDocumentos.Create;
    Historial    :=    THistorial.Create;
    cdTiposExamenMedicos := TClientDataSet.Create(Self);
    dsTiposExamenMedicos :=    TDataSource.Create(Self);

    if Not AsignarSentencia(zqryTipoExamenMedicoUPDATE, 'rhu_tipoexamen_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_tipoexamen_medico']);

    crearTiposExamenXDefault;

    //Crear Conjunto de nuc_personal
    if Not AsignarSentencia(zqryPersonal, 'nuc_personal_medico', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['nuc_personal_medico']);

    //Crear Conjunto de nuc_personal tipo UPDATE
    if Not AsignarSentencia(zqryPersonalUPDATE, 'nuc_personal_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['nuc_personal_medico']);

    //Crear conjunto de rhu_programarecursivo para editar los registros
    if Not AsignarSentencia(zqryProgramaRecursivo, 'rhu_programarecursivo', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

    //Crear conjunto de rhu_catalogoexamenmedico de tipo update
    if Not AsignarSentencia(zqryCatalogoExamenMedico, 'rhu_catalogoexamenmedico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

    //Crear conjunto de rhu_examenmedico de tipo SELECT
    if Not AsignarSentencia(zqryExamenMedico, 'rhu_examenmedico', ccSelect) then
      raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

    //Crea conjunto de rhu_examenmedico de tipo UPDATE
    if Not AsignarSentencia(zqryExamenMedicoUPDATE, 'rhu_examenmedico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

    //Crea conjunto para el catalogo de Antecedentes
    if Not AsignarSentencia(zqryCatalogoAntecedentes, 'rhu_catalogoexamenmedico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

    //Crear conjunto para el catalogo de examen medico de tipo SELECT
    if Not AsignarSentencia(zqryCatalogoExamenMedicoCATALOGO, 'rhu_catalogoexamenmedico', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

    //Crear conjunto para el catalogo de examen medico de tipo SELECT
    if Not AsignarSentencia(zqryProgramaRecursivoSELECT2, 'rhu_programarecursivo', ccSelect) then
      raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

    if Not AsignarSentencia(zqryNucPersonalUPDATE, 'nuc_personal_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['nuc_personal_medico']);

    zqryProgramaRecursivoPlataforma := TZQuery.Create(Self);

    traerTodosFirmantes;

    AsignarSentenciasDatasetsDocumentos;

    estiloDeFocus;
    cdDatasetParaReportesPorTipo   := TClientDataset.Create(Self);
    cdDatasetParaReporteDocumentos := TClientDataset.Create(Self);
    connection.configuracionRecHum.ParamByName('Contrato').AsString := global_contrato;
    connection.configuracionRecHum.Open;
    cdDatasetProReaVen := TClientDataSet.Create(Self);

    cbbDel.Date := Date;
    cbbAl.Date  := Date;

    HabilitarcalendariosRangoFechas(False);

    //Pestana Firmantes
    botonesFirmantes(True, True, False, False, True);
    controlesFirmantes(False);
  except
    on e : Exception do
    begin
      //ShowMessage(e.Message);
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.FormShow(Sender: TObject);
var
  numDocumentosVencidos : Integer;
begin
  //Checar si la fecha Actual es mayor a la fecha Programada. En caso de que asi sea y el estatus del examen sea
  //Programada, entonces sera una fecha caducada, poner el estatus como Vencida
  revisarFechasCaducadas;

  crearExcelExamenMedico := True;

  estadoBotones(False, False, False, False);

  RibbonMenuPrincipal.ActiveTab := tdxFechasProgramadas;
  pageContenedorPrincipal.ActivePage := pageFechasProgramadas;

  //Traer todos el personal de tierra y abordo
  if Not CargarDatosFiltrados(zqryPersonal, 'idpersonal', [-1]) then
    raise EInteliException.CreateByCode(6, ['idpersonal', 'nuc_personal_medico', '']);

  if zqryPersonal.Active then
    zqryPersonal.Refresh
  else
    zqryPersonal.Open;

  ejecutarEventoRibbon := True;

  habilitarDeshabilitarExamenMedico(False);

  //Traer todo el catalogo de examen medico para la pestana examen medico
  if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, ValorMinimo', [-1, -1, -1]) then
    raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

  if zqryCatalogoExamenMedico.Active then
    zqryCatalogoExamenMedico.Refresh
  else
    zqryCatalogoExamenMedico.Open;

  //Revisar si existen Documentos vencidos y poner un iconnito en la pestana de Vigencia si es que hay documentos que se
  //estan venciento o estan vencidos

  ActivarBotonDocumentosVencidos(False); //Mantener Invisible el boton de Vigencias Vencidas,
                                        //Solo se activara cuando existan documentos por vencerse o vencidas

  revizarDocumentosVencidos;

  //Poner la palomita en el check General
  checkMostrarGeneral.Checked := True;
  checkMostrarGeneralClick(checkMostrarGeneral);
  schedulerFechas.Enabled := True;

  actualizarPestanVigencia := True;
end;

procedure TFrmProgramaDeSalud.fuenteLetras(Excel: Variant; rangoColumna,
  fuente: string; tamanoLetra: Integer; negritas: Boolean);
begin
  //Fuente para las letras del excel
  Excel.Range[rangoColumna].Select;
  Excel.Selection.Font.Name          :=  fuente;
  Excel.Selection.Font.Size      := tamanoLetra;
  Excel.Selection.Font.Strikethrough :=   False;
  Excel.Selection.Font.Superscript   :=   False;
  Excel.Selection.Font.Subscript     :=   False;
  Excel.Selection.Font.OutlineFont   :=   False;
  Excel.Selection.Font.Shadow        :=   False;
  Excel.Selection.Font.Underline     :=   -4142;
  Excel.Selection.Font.ThemeColor    :=       2;
  Excel.Selection.Font.TintAndShade  :=       0;
  Excel.Selection.Font.ThemeFont     :=       0;
  Excel.Selection.Font.Bold         := negritas;
end;

procedure TFrmProgramaDeSalud.HabilitarcalendariosRangoFechas(Activo: Boolean);
begin
  //Habilita o deshabilita los calendarios cbbDel y cbbAl
  cbbDel.Enabled := Activo;
  cbbAl.Enabled  := Activo;
end;

procedure TFrmProgramaDeSalud.habilitarDeshabilitarExamenMedico(
  ExamenMedicoVisible: Boolean);
begin
  //Deshabilitar la pestana de Examen Medico, solo se habilitara cuando el usuario de click en un empleado y una fecha
  //y que esa fecha este Programada y halla llegado el dia de la realizacion del examen medico
  RibbonMenuPrincipal.Tabs.Items[1].Visible   := ExamenMedicoVisible;
  pageContenedorPrincipal.Pages[1].TabVisible := ExamenMedicoVisible;
end;

procedure TFrmProgramaDeSalud.insertarAntecedenteIndividual(
  datasetFiltro: TZQuery; idTipoExamen_Medico: Integer; datasetUPDATE: TZQuery;
  valorIdProgramaRecursivo: Integer; codigo, ResultadoAntecedentes,
  EspecificacionesAntecedentes: string);
begin
  //Insertar un registro a la tabla rhu_examenmedico cuando se esta editando y no se encuentra dicho registro en la tabla
  try
    if Not CargarDatosFiltrados(datasetFiltro, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, idTipoExamen_Medico]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if datasetFiltro.Active then
      datasetFiltro.Refresh
    else
      datasetFiltro.Open;

    datasetUPDATE.Append;
    datasetUPDATE.FieldByName('idProgramaRecursivo').AsInteger := valorIdProgramaRecursivo;

    if Not CargarDatosFiltrados(datasetFiltro, 'codigo', [codigo]) then
      raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

    if datasetFiltro.Active then
      datasetFiltro.Refresh
    else
      datasetFiltro.Open;

    if datasetFiltro.RecordCount > 0 then
    begin
      datasetUPDATE.FieldByName('idcatalogoexamenmedico').AsInteger := datasetFiltro.FieldByName('idcatalogoexamenmedico').AsInteger;
    end;

    datasetUPDATE.FieldByName('ResultadoAntecedentes').AsString := ResultadoAntecedentes;
    datasetUPDATE.FieldByName('EspecificacionesAntecedentes').AsString := EspecificacionesAntecedentes;

    datasetUPDATE.Post;
    datasetUPDATE.ApplyUpdates;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.insertarAntecedentes(
  arrayCheckBox: array of TcxCheckBox; datasetFiltro: TZQuery; idTipoExamen_Medico: Integer;
  datasetUPDATE: TZQuery; valorIdProgramaRecursivo: Integer; arrayCajas : array of TcxTextEdit);
var
  indiceArray : Integer;
begin
  //Inserta a rhu_examenmedico los datos que el usuario haya elegido con los checkbox y cajas de texto que se crean
  //en tiempo de ejecucion
  try
    for indiceArray := 0 to Length(arrayCheckBox) - 2 do
    begin
      //Traer todo el catalogo de examen medico ""OTRA VEZ para la pestana examen medico
      if Not CargarDatosFiltrados(datasetFiltro, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, idTipoExamen_Medico]) then
        raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

      if datasetFiltro.Active then
        datasetFiltro.Refresh
      else
        datasetFiltro.Open;

      datasetUPDATE.Append;
      datasetUPDATE.FieldByName('idProgramaRecursivo').AsInteger := valorIdProgramaRecursivo;

      if Not CargarDatosFiltrados(datasetFiltro, 'codigo', [arrayCheckBox[indiceArray].Name]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

      if datasetFiltro.Active then
        datasetFiltro.Refresh
      else
        datasetFiltro.Open;

      if datasetFiltro.RecordCount > 0 then
      begin
        datasetUPDATE.FieldByName('idcatalogoexamenmedico').AsInteger := datasetFiltro.FieldByName('idcatalogoexamenmedico').AsInteger;
      end;

      if arrayCheckBox[indiceArray].Checked then
        datasetUPDATE.FieldByName('ResultadoAntecedentes').AsString := 'Si'
      else
        datasetUPDATE.FieldByName('ResultadoAntecedentes').AsString := 'No';

      datasetUPDATE.FieldByName('EspecificacionesAntecedentes').AsString := arrayCajas[indiceArray].Text;

      datasetUPDATE.Post;
      datasetUPDATE.ApplyUpdates;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.insertarAntidoping(
  arrayComboBox: array of TcxComboBox; datasetFiltro: TZQuery; idTipoExamen_Medico: Integer;
  datasetUPDATE: TZQuery; valorIdProgramaRecursivo: Integer);
var
  indiceArray : Integer;
begin
  //Inserta registros a la tabla rhu_examenmedico, pero registros de Antidoping
  try
    for indiceArray := 0 to Length(arrayComboBox) - 2 do
    begin
      //Traer todo el catalogo de examen medico ""OTRA VEZ para la pestana examen medico
      if Not CargarDatosFiltrados(datasetFiltro, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, idTipoExamen_Medico]) then
        raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

      if datasetFiltro.Active then
        datasetFiltro.Refresh
      else
        datasetFiltro.Open;

      datasetUPDATE.Append;
      datasetUPDATE.FieldByName('idProgramaRecursivo').AsInteger := valorIdProgramaRecursivo;

      if Not CargarDatosFiltrados(datasetFiltro, 'codigo', [arrayComboBox[indiceArray].Name]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

      if datasetFiltro.Active then
        datasetFiltro.Refresh
      else
        datasetFiltro.Open;

      if datasetFiltro.RecordCount > 0 then
      begin
        datasetUPDATE.FieldByName('idcatalogoexamenmedico').AsInteger := datasetFiltro.FieldByName('idcatalogoexamenmedico').AsInteger;
      end;

      datasetUPDATE.FieldByName('ResultadoDopaje').AsString := arrayComboBox[indiceArray].Text;
      datasetUPDATE.Post;
      datasetUPDATE.ApplyUpdates;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.insertarAntidopingIndividual(
  datasetFiltro: TZQuery; idTipoExamen_Medico: Integer; datasetUPDATE: TZQuery;
  valorIdProgramaRecursivo : Integer; codigo, ResultadoDopaje: string);
begin
  //Inserta un registro individual cuando se esta editando, y cuando no exista el registro porque no existe en rhu_examen medico
  //(aunque si exista en rhu_catalogoexamenmedico) entonces insertarlo individualmente
  try
    if Not CargarDatosFiltrados(datasetFiltro, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, idTipoExamen_Medico]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if datasetFiltro.Active then
      datasetFiltro.Refresh
    else
      datasetFiltro.Open;

    datasetUPDATE.Append;
    datasetUPDATE.FieldByName('idProgramaRecursivo').AsInteger := valorIdProgramaRecursivo;

    if Not CargarDatosFiltrados(datasetFiltro, 'codigo', [codigo]) then
      raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

    if datasetFiltro.Active then
      datasetFiltro.Refresh
    else
      datasetFiltro.Open;

    if datasetFiltro.RecordCount > 0 then
    begin
      datasetUPDATE.FieldByName('idcatalogoexamenmedico').AsInteger := datasetFiltro.FieldByName('idcatalogoexamenmedico').AsInteger;
    end;

    datasetUPDATE.FieldByName('ResultadoDopaje').AsString := ResultadoDopaje;
    datasetUPDATE.Post;
    datasetUPDATE.ApplyUpdates;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.insertarExamenMedico(
  arrayCajasTexto: array of TcxTextEdit; datasetFiltro: TZQuery; idTipoExamen_Medico: Integer;
  datasetUPDATE : TZQuery; valorIdProgramaRecursivo: Integer);
var
  indiceArray : Integer;
begin
  //Inserta registro de examen medico
  try
    for indiceArray := 0 to Length(arrayCajasTexto) - 2 do
    begin
      //Traer todo el catalogo de examen medico OTRA VEZ para la pestana examen medico
      if Not CargarDatosFiltrados(datasetFiltro, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, idTipoExamen_Medico]) then
        raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

      if datasetFiltro.Active then
        datasetFiltro.Refresh
      else
        datasetFiltro.Open;

      datasetUPDATE.Append;
      datasetUPDATE.FieldByName('idProgramaRecursivo').AsInteger := valorIdProgramaRecursivo;

      if Not CargarDatosFiltrados(datasetFiltro, 'codigo', [arrayCajasTexto[indiceArray].Name]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

      if datasetFiltro.Active then
        datasetFiltro.Refresh
      else
        datasetFiltro.Open;

      if datasetFiltro.RecordCount > 0 then
      begin
        datasetUPDATE.FieldByName('idcatalogoexamenmedico').AsInteger := datasetFiltro.FieldByName('idcatalogoexamenmedico').AsInteger;
      end;

      datasetUPDATE.FieldByName('ResultadoEstudioExamen').AsFloat := StrToFloat(arrayCajasTexto[indiceArray].Text);

      datasetUPDATE.Post;
      datasetUPDATE.ApplyUpdates;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.insertarExamenMedicoIndividual(
  datasetFiltro: TZQuery; idTipoExamen_Medico: Integer; datasetUPDATE: TZQuery;
  valorIdProgramaRecursivo: Integer; Codigo, ResultadoEstudioExamen: string);
begin
  //Inserta un solo registro a la vez en caso de que cuando se este editando y se cree un nuevo registro de catalogo de examen medico
  //y no se pueda esitar porque no existe en rhu_examen medico, entonces inserta ese registro individualmente
  try
    //Traer todo el catalogo de examen medico OTRA VEZ para la pestana examen medico
    if Not CargarDatosFiltrados(datasetFiltro, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, idTipoExamen_Medico]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if datasetFiltro.Active then
      datasetFiltro.Refresh
    else
      datasetFiltro.Open;

    datasetUPDATE.Append;
    datasetUPDATE.FieldByName('idProgramaRecursivo').AsInteger := valorIdProgramaRecursivo;

    if Not CargarDatosFiltrados(datasetFiltro, 'codigo', [Codigo]) then
      raise EInteliException.CreateByCode(6, ['codigo', 'rhu_catalogoexamenmedico', '']);

    if datasetFiltro.Active then
      datasetFiltro.Refresh
    else
      datasetFiltro.Open;

    if datasetFiltro.RecordCount > 0 then
    begin
      datasetUPDATE.FieldByName('idcatalogoexamenmedico').AsInteger := datasetFiltro.FieldByName('idcatalogoexamenmedico').AsInteger;
    end;

    datasetUPDATE.FieldByName('ResultadoEstudioExamen').AsFloat := StrToFloat(ResultadoEstudioExamen);

    datasetUPDATE.Post;
    datasetUPDATE.ApplyUpdates;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.listaBajasDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if OrigenDragDrop = 'gridBajas' then
  begin
    pasarAListaDeBajasDragDrop;
    crearExcelExamenMedico := True;
  end;
end;

procedure TFrmProgramaDeSalud.listaBajasDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmProgramaDeSalud.listaBajasStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  OrigenDragDrop := 'listaBajas'
end;

procedure TFrmProgramaDeSalud.llenarListaDeEmpleadosBajados;
var
  empleadosBajados : TZQuery;
  Bajas : TBajas;
  empleadoDadoDeBaja : Boolean;
  i : Integer;
begin
  //Llena la lista de Empleados bajados con los datos de la BD
  try
    //traerTodoNucPersonalUpdate;
    empleadosBajados := TZQuery.Create(Self);

    if Not AsignarSentencia(empleadosBajados, 'rhu_programarecursivo', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

    if not CargarDatosFiltrados(empleadosBajados, 'activo', ['No']) then
      raise EInteliException.CreateByCode(6, ['activo', 'rhu_programarecursivo']);

    empleadosBajados.Open;

    if empleadosBajados.RecordCount > 0 then
    begin
      listaBajas.Clear;
      while Not empleadosBajados.Eof do
      begin
        if empleadosBajados.FieldByName('activo').AsString = 'No' then
        begin
          if Not CargarDatosFiltrados(zqryPersonal, 'idPersonal', [empleadosBajados.FieldByName('idPersonal').AsInteger]) then
            raise EInteliException.CreateByCode(5, ['idPersonal', 'nuc_personal_medico']);

          if zqryPersonal.Active then
            zqryPersonal.Refresh
          else
            zqryPersonal.Open;

          if zqryPersonal.RecordCount > 0 then
          begin
            empleadoDadoDeBaja := False;
            for i := 0 to listaBajas.Count - 1 do
            begin
              if TBajas(listaBajas.Items.Objects[i]).ficha = zqryPersonal.FieldByName('codigopersonal').AsString then
              begin
                empleadoDadoDeBaja := True;
              end;

              //ShowMessage(TBajas(listaBajas.Items.Objects[i]).ficha);
            end;

            if Not empleadoDadoDeBaja then
            begin
              Bajas := TBajas.Create;

              Bajas.idPersonal     :=    zqryPersonal.FieldByName('idPersonal').AsInteger;
              Bajas.ficha          := zqryPersonal.FieldByName('codigopersonal').AsString;
              Bajas.NombreCompleto := zqryPersonal.FieldByName('NombreCompleto').AsString;
              Bajas.Puesto         :=    zqryPersonal.FieldByName('TituloCargo').AsString;
              Bajas.plataforma     :=     zqryPersonal.FieldByName('plataforma').AsString;
              listaBajas.Items.AddObject(Bajas.ficha + ' - ' + Bajas.NombreCompleto, Bajas);
            end;
          end; 
        end;

        empleadosBajados.Next;
      end;
    end;
  except
    on e : Exception do
    begin
     LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.mostrarExamenMedico(idPersonal: integer;
  fechaSeleccionada: string);
var
  Cursor : TCursor;
begin
  //Si ha llegado la fecha del examen, entonces habilitar la pestana de Examen Medico, para que el usuario realice
  //dicha evaluacion al personal
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      if Not CargarDatosFiltrados(zqryProgramaRecursivo, 'idProgramaRecursivo, fechaProgramada, fechaReal, idPersonal', [-1, fechaSeleccionada, -1, idPersonal]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'fechaProgramada', 'fechaReal', 'idPersonal']);
      
      if zqryProgramaRecursivo.Active then
        zqryProgramaRecursivo.Refresh
      else
        zqryProgramaRecursivo.Open;

      if zqryProgramaRecursivo.RecordCount > 0 then
      begin
        if (zqryProgramaRecursivo.FieldByName('Status').AsString = 'Programada') or
           (zqryProgramaRecursivo.FieldByName('Status').AsString = 'Realizada') or
           (zqryProgramaRecursivo.FieldByName('Status').AsString = 'Vencida') then
        begin
          habilitarDeshabilitarExamenMedico(True);
        end
        else
        begin
          habilitarDeshabilitarExamenMedico(False);
        end;
      end
      else
      begin
        habilitarDeshabilitarExamenMedico(False);
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.mostrarImagenConPalomita(Sender: TObject);
var
  documento     : TZQuery;
  nombreArchivo :  string;
  previewImagen : TfrxPreview;
begin
  //Muestra el archivo PDF o la Imagen JPG que el usuario haya subido
  try
    try
      formularioInsertarCatalogo := TForm.Create(nil);
      panelVistaPreviaArchivo.Visible := False;
      panelVistaPreviaArchivo.Enabled := False;
      panelVistaPreviaArchivo.Parent := formularioInsertarCatalogo;

      //Traer el Documento que el usuario seleccione
      documento := nil;
      documento := TZQuery.Create(Self);
      AcroPDF := nil;

      if Not AsignarSentencia(documento, 'rhu_doctosxcargo_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_doctosxcargo_medico']);

      if Not CargarDatosFiltrados(documento, 'idPersonal, idDocumento', [zqryPersonal.FieldByName('idPersonal').AsInteger,                                                                         obtenerIdDocumento(TcxButton(Sender).Description)]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'idDocumento', 'rhu_doctosxcargo_medico']);

      if documento.Active then
        documento.Refresh
      else
        documento.Open;

      if documento.RecordCount > 0 then
      begin
        if documento.FieldByName('extensionArchivo').AsString = 'pdf' then
        begin
          NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := Nombrearchivo + '\Documentos RH\';

          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := NombreArchivo + IntToStr(zqryPersonal.FieldByName('idPersonal').AsInteger) + '_documentoPDF.pdf';

          TBlobField(documento.FieldByName('archivo')).SaveToFile(NombreArchivo);

          AcroPDF := TAcroPDF.Create(nil);
          AcroPDF.Parent := panelVistaPreviaArchivo;
          AcroPDF.Align  :=      alClient;
          AcroPDF.DoubleBuffered := False;
          AcroPdf.LoadFile(NombreArchivo);
          AcroPdf.Show;

          crearPanelInsertarCatalogo(panelVistaPreviaArchivo, formularioInsertarCatalogo, 'Archivo Subido', 900, 600);
        end else if (documento.FieldByName('extensionArchivo').AsString = 'jpg') or
                    (documento.FieldByName('extensionArchivo').AsString = 'jpeg')then
        begin
          NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := Nombrearchivo + '\Documentos RH\';

          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := NombreArchivo + IntToStr(zqryPersonal.FieldByName('idPersonal').AsInteger) + '_DocumentoJPG.jpg';

          TBlobField(documento.FieldByName('archivo')).SaveToFile(NombreArchivo);

          previewImagen := TfrxPreview.Create(nil);
          previewImagen.Parent := panelVistaPreviaArchivo;
          previewImagen.Align := alClient;
          previewImagen.Visible := True;

          previewImagen.PopupMenu := popupDocumentoVencido;

          frxDBDocumentoVencido.DataSet := documento;

          reporteDocumentoVencido.Preview := previewImagen;
          //reporteDocumentoVencido.LoadFromFile(global_files + 'documentoVencido.fr3');
          reporteDocumentoVencido.ShowReport();

          crearPanelInsertarCatalogo(panelVistaPreviaArchivo, formularioInsertarCatalogo, 'Archivo Caducado', 900, 600);
        end
        else //Si no es Pdf ni Jpg, quiere decir que no hay archivo para mostrar
          MessageDlg('¡No hay Archivo para mostrar!', mtInformation, [mbOk], 0);
      end;
    finally
      if AcroPDF <> nil then
        AcroPDF.Destroy;
      documento.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
      //ShowMessage(e.Message);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.mostrarPersonalParaBajas;
var
  idPersonalAnterior : Integer;
  empleadosProgramaRecursivo : TZQuery;
begin
  //Coloca en el gridBajas a los empleados que fueron evaluados
  try
    empleadosProgramaRecursivo := TZQuery.Create(Self);

    if Not AsignarSentencia(empleadosProgramaRecursivo, 'rhu_programarecursivo', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

    if Not CargarDatosFiltrados(empleadosProgramaRecursivo, 'idProgramaRecursivo', [-1]) then
      raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

    empleadosProgramaRecursivo.Open;
    if empleadosProgramaRecursivo.RecordCount > 0 then
    begin
      camposCdEmpleadosParaBajas;
      cdEmpleadosParaBajas.Open;
      cdEmpleadosParaBajas.EmptyDataSet;
      idPersonalAnterior := 0;

      while not empleadosProgramaRecursivo.Eof do
      begin
        if (empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger <> idPersonalAnterior) or
            (idPersonalAnterior = 0) then
        begin
          if Not CargarDatosFiltrados(zqryPersonal, 'idPersonal', [empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

          if zqryPersonal.Active then
            zqryPersonal.Refresh
          else
            zqryPersonal.Open;

          if zqryPersonal.RecordCount > 0 then
          begin
            cdEmpleadosParaBajas.Append;
            cdEmpleadosParaBajas.FieldByName('idPersonal').AsInteger    :=    zqryPersonal.FieldByName('idPersonal').AsInteger;
            cdEmpleadosParaBajas.FieldByName('codigopersonal').AsString := zqryPersonal.FieldByName('codigopersonal').AsString;
            cdEmpleadosParaBajas.FieldByName('NombreCompleto').AsString := zqryPersonal.FieldByName('NombreCompleto').AsString;
            cdEmpleadosParaBajas.FieldByName('titulocargo').AsString    :=    zqryPersonal.FieldByName('titulocargo').AsString;
            cdEmpleadosParaBajas.FieldByName('telefono').AsString       :=       zqryPersonal.FieldByName('telefono').AsString;
            cdEmpleadosParaBajas.FieldByName('Titulo').AsString         :=         zqryPersonal.FieldByName('Titulo').AsString;
            cdEmpleadosParaBajas.FieldByName('plataforma').AsString     :=     zqryPersonal.FieldByName('plataforma').AsString;
            cdEmpleadosParaBajas.Post;
          end;
        end;

        idPersonalAnterior := empleadosProgramaRecursivo.FieldByName('idPersonal').AsInteger;
        empleadosProgramaRecursivo.Next;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.MostrarTamaoCompleto1Click(Sender: TObject);
begin
  //Muestra el reporte de estatus de examenes medicos en tamano completo
  try
    reporteProReaVen.Preview := Nil;
    reporteProReaVen.LoadFromFile(global_files + 'ReporteEstatusExamenes.fr3');
    reporteProReaVen.ShowReport();
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.obtenerDatosFirmantes(datoObtener: string; noFirmante : Integer): string;
var
  firmante : TZQuery;
begin
  //Devuelve el Firmante, o su puesto, dependiendo lo que se pase en la variable datoObtener
  try
    try
      firmante := TZQuery.Create(Self);

      if Not AsignarSentencia(firmante, 'rhu_firmantesmedicos', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_firmantesmedicos']);

      if Not CargarDatosFiltrados(firmante, 'idFirmanteMedico', [-1]) then
        raise EInteliException.CreateByCode(6, ['idFirmanteMedico', 'rhu_firmantesmedicos']);

      firmante.Open;

      if firmante.RecordCount > 0 then
      begin
        firmante.First;
        while Not firmante.Eof do
        begin
          if datoObtener = 'Firmante' then
          begin
            if ((Date >= firmante.FieldByName('fechaInicioFirmante').AsDateTime) and (Date <= firmante.FieldByName('fechaTerminoFirmante').AsDateTime)) and
               (noFirmante = 1) then
            begin
              Result := firmante.FieldByName('Firmante1').AsString;
            end else if ((Date >= firmante.FieldByName('fechaInicioFirmante').AsDateTime) and (Date <= firmante.FieldByName('fechaTerminoFirmante').AsDateTime)) and
               (noFirmante = 2) then
            begin
              Result := firmante.FieldByName('Firmante2').AsString;
            end;                     
          end else if datoObtener = 'Puesto' then
          begin
            if ((Date >= firmante.FieldByName('fechaInicioFirmante').AsDateTime) and (Date <= firmante.FieldByName('fechaTerminoFirmante').AsDateTime)) and
               (noFirmante = 1) then
            begin
              Result := firmante.FieldByName('Puesto1').AsString;
            end else if ((Date >= firmante.FieldByName('fechaInicioFirmante').AsDateTime) and (Date <= firmante.FieldByName('fechaTerminoFirmante').AsDateTime)) and
               (noFirmante = 2) then
            begin
              Result := firmante.FieldByName('Puesto2').AsString;
            end;
          end;

          firmante.Next;
        end;
      end
      else
        Result := '';
    finally
      firmante.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.obtenerDiasDeAviso(codigo, campoAObtener: string): String;
var
  documento : TZQuery;
begin
  //Obtiene los dias de aviso de los documentos de la pestana Vigencias Documentos(Todos)
  try
    try
      documento := TZQuery.Create(Self);

      if Not AsignarSentencia(documento, 'rhu_documento_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_documento_medico']);

      if Not CargarDatosFiltrados(documento, 'codigo', [codigo]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_documento_medico']);

      if documento.Active then
        documento.Refresh
      else
        documento.Open;

      if documento.RecordCount > 0 then
      begin
        if campoAObtener = 'Recursividad' then
          Result := IntToStr(documento.FieldByName('Recursividad').AsInteger)
        else if campoAObtener = 'Medida' then
          Result := documento.FieldByName('Medida').AsString;
      end;
    finally
      documento.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.ObtenerFechaArchivo(const NombreArchivo: string;
  out FechaResult: TDateTime; TipoFechaObtener: TTipoDFecha): boolean;
var
  Monitor : integer;
  Resultado : boolean;
  FechaCreacionArchivo, FechaUltimaModificacion, FechaUltimoAcceso : TFileTime;
  TempFechaArchivo : TFileTime;
  TempFechaSistema : TSystemTime;
begin
  Monitor := FileOpen(NombreArchivo, fmShareDenyNone);
  FechaResult := 0.0;
  if Monitor < 0 then Resultado := false
  else
  begin
    Resultado := GetFileTime(Monitor, @FechaCreacionArchivo,
        @FechaUltimoAcceso, @FechaUltimaModificacion);
    FileClose(Monitor);
    if Resultado then begin
      case TipoFechaObtener of
        fdkCreado : FileTimeToLocalFileTime(FechaCreacionArchivo, TempFechaArchivo);
        fdkUltimaModificacion : FileTimeToLocalFileTime(FechaUltimaModificacion, TempFechaArchivo);
        fdkUltimoAcceso : FileTimeToLocalFileTime(FechaUltimoAcceso, TempFechaArchivo);
      end;
      if FileTimeToSystemTime(TempFechaArchivo, TempFechaSistema) then
        FechaResult := EncodeDateTime(TempFechaSistema.wYear, TempFechaSistema.wMonth,
            TempFechaSistema.wDay, TempFechaSistema.wHour, TempFechaSistema.wMinute,
            TempFechaSistema.wSecond, TempFechaSistema.wMilliSeconds)
      else Resultado := false;
    end;
  end;
  Result := Resultado;
end;

function TFrmProgramaDeSalud.obtenerIdDocumento(codigo: string): Integer;
var
  Cursor : TCursor;
  catalogoDocumentos : TZQuery;
begin
  //Obtener el idDocumento pasandole como parametro el codigo
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      catalogoDocumentos := TZQuery.Create(Self);

      if not AsignarSentencia(catalogoDocumentos, 'rhu_documento_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_documento_medico']);

      if not CargarDatosFiltrados(catalogoDocumentos, 'codigo', [codigo]) then
        raise EInteliException.CreateByCode(6, ['codigo', 'rhu_documento_medico']);

      if catalogoDocumentos.Active then
        catalogoDocumentos.Refresh
      else
        catalogoDocumentos.Open;

      if catalogoDocumentos.RecordCount > 0 then
      begin
        Result := catalogoDocumentos.FieldByName('idDocumento').AsInteger;
      end;
    finally
      catalogoDocumentos.Destroy;
      Screen.Cursor := crDefault;
    end;
  except
    on e: Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.obtenerResultadoAntecedentes(
  idcatalogoexamenmedico, idPersonal, idProgramaRecursivo, idTipoExamen_Medico: integer;
  resultadoDevolver: string): string;
var
  examenMedico : TZQuery;
begin
  //Devuelve el Resultado SI/NO del antecedente o la descripcion del antecedente segun sea el resultadoDevolver
  try
    try
      examenMedico := TZQuery.Create(Self);

      if Not AsignarSentencia(examenMedico, 'rhu_examenmedico', ccSelect) then
        raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

      if Not CargarDatosFiltrados(examenMedico, 'ResultadoDopaje, idProgramaRecursivo, fechaProgramada, idPersonal, ' +
                                                'Status, idcatalogoexamenmedico, codigo, valorMinimo, valorMaximo, idTipoExamen_Medico',
                                                [-1, idProgramaRecursivo, -1, idPersonal,
                                                -1, idcatalogoexamenmedico, -1, -1, -1, idTipoExamen_Medico]) then
        raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'idPersonal', 'rhu_examenmedico']);

      if examenMedico.Active then
        examenMedico.Refresh
      else
        examenMedico.Open;

      if examenMedico.RecordCount > 0 then
      begin
        if resultadoDevolver = 'ResultadoAntecedentes' then
        begin
          Result := examenMedico.FieldByName('ResultadoAntecedentes').AsString;
        end else if resultadoDevolver = 'EspecificacionesAntecedentes' then
        begin
          Result := examenMedico.FieldByName('EspecificacionesAntecedentes').AsString;
        end;
      end;
    finally
      examenMedico.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.obtenerResultadoAntidoping(idTipoExamen_Medico: Integer;
  idPersonal: integer; filtroCodigo: string; fechaProgramada : string): string;
begin
  //Devuelve el Resultado cel Antidoping (POSITIVO O NEGATIVO)
  try
    //Filtrar segun sea el empleado y el tipo de Examen(Antidoping solamente)
    if Not CargarDatosFiltrados(zqryExamenMedico, 'idExamenMedico, ResultadoDopaje, idProgramaRecursivo, ' +
                                                  'fechaProgramada, idPersonal, Status, idcatalogoexamenmedico, codigo, ' +
                                                  'valorMinimo, valorMaximo, idTipoExamen_Medico',
                                                  [-1, -1, -1,
                                                  fechaProgramada, idPersonal, -1, -1, filtroCodigo,
                                                  -1, -1, idTipoExamen_Medico]) then
      raise EInteliException.CreateByCode(6, ['rhu_examenmedico', 'idPersonal', 'Tipo', '']);

    if zqryExamenMedico.Active then
      zqryExamenMedico.Refresh
    else
      zqryExamenMedico.Open;

    if zqryExamenMedico.RecordCount > 0 then
    begin
      Result := zqryExamenMedico.FieldByName('ResultadoDopaje').AsString;
    end
    else
      Result := '';
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

function TFrmProgramaDeSalud.obtenerResultadoExamenMedico(idTipoExamen_Medico: Integer;
  idPersonal: integer; filtroCodigo : string; fechaProgramada : string): Double;
begin
  //Devuelve el Resultado del examen medico segun sea el empleado que se selecciono
  //Devuelve el valor numerico(convertido a varchar) para mostrarlo en las cajitas de texto que se crean en tiempo de ejecucion
  try
    //Filtrar segun sea el empleado y el tipo de Examen(ExamenMedico colamente)
    if Not CargarDatosFiltrados(zqryExamenMedico, 'idExamenMedico, ResultadoDopaje, idProgramaRecursivo, ' +
                                                  'fechaProgramada, idPersonal, Status, idcatalogoexamenmedico, codigo, ' +
                                                  'valorMinimo, valorMaximo, idTipoExamen_Medico',
                                                  [-1, -1, -1,
                                                  fechaProgramada, idPersonal, -1, -1, filtroCodigo,
                                                  -1, -1, idTipoExamen_Medico]) then
      raise EInteliException.CreateByCode(6, ['rhu_examenmedico', 'idPersonal', 'Tipo', '']);

    if zqryExamenMedico.Active then
      zqryExamenMedico.Refresh
    else
      zqryExamenMedico.Open;

    if zqryExamenMedico.RecordCount > 0 then
    begin
      Result := zqryExamenMedico.FieldByName('ResultadoEstudioExamen').AsFloat;
    end
    else
      Result := 0;    
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.pageContenedorPrincipalChange(Sender: TObject);
begin
  //Cambiar las pestana conforme se elija la pestana de la hoja
  if pageContenedorPrincipal.ActivePage = pageFechasProgramadas then
    tdxFechasProgramadas.Active := True
  else if pageContenedorPrincipal.ActivePage = pageExamenMedico then
    tdxExamenMedico.Active := True
  else if pageContenedorPrincipal.ActivePage = pageResumenGeneral then
    tdxResumenGeneral.Active := True
  else if pageContenedorPrincipal.ActivePage = pageDocumentosMedicos then
    tdxDocumentosMedicos.Active := True
  else if pageContenedorPrincipal.ActivePage = pageReportes then
    tdxReportes.Active := True
  else if pageContenedorPrincipal.ActivePage = pageVigencias then
    tdxVigencias.Active := True
  else if pageContenedorPrincipal.ActivePage = pageHistorial then
    tdxHistorial.Active := True
  else if pageContenedorPrincipal.ActivePage = pageFirmantes then
    tdxFirmantes.Active := True
  else if pageContenedorPrincipal.ActivePage = pageBajas then
    tdxBajas.Active := True;
end;

procedure TFrmProgramaDeSalud.pageTipoExamenChange(Sender: TObject);
begin
  if pageTipoExamen.ActivePage = pageFormularioExamenMedico then
  begin
    //Traer todo el catalogo de examen medico para la pestana Examen Medico
    if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, 1]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if zqryCatalogoExamenMedico.Active then
      zqryCatalogoExamenMedico.Refresh
    else
      zqryCatalogoExamenMedico.Open;

    estadoBotonesCatalogoExamenMedico(True);
  end
  else if pageTipoExamen.ActivePage = pageAntidoping then
  begin
    //Traer todo el catalogo de examen medico para la pestana Antidoping
    if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, 2]) then
      raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

    if zqryCatalogoExamenMedico.Active then
      zqryCatalogoExamenMedico.Refresh
    else
      zqryCatalogoExamenMedico.Open;

    if panelScrollAntidoping.Visible = False then
    begin
      actualizarObjetosAntidoping;
      panelScrollAntidoping.Visible := True;
    end;

    estadoBotonesCatalogoExamenMedico(True);
  end
  else if pageTipoExamen.ActivePage = pageAntecedentes then
  begin
    if not CargarDatosFiltrados(zqryCatalogoAntecedentes, 'idTipoExamen_Medico', [3]) then
      raise EInteliException.CreateByCode(6, ['Tipo', 'rhu_catalogoexamenmedico']);

    if zqryCatalogoAntecedentes.Active then
      zqryCatalogoExamenMedico.Refresh
    else
      zqryCatalogoAntecedentes.Open;

    if panelScrollAntecedentes.Visible = False then
    begin
      ActualizarObjetosAntecedentes;
      panelScrollAntecedentes.Visible := True;
    end;

    estadoBotonesCatalogoExamenMedico(True);
  end else if pageTipoExamen.ActivePage = pageObservaciones then
  begin
    memoObservaciones.Text := zqryProgramaRecursivo.FieldByName('Observaciones').AsString;
    //Deshabilitar los botones para operaciones de catalogo puesto que ahi no hay catalogo
    //solo es el memo para descripcion
    estadoBotonesCatalogoExamenMedico(False);
  end;
end;

procedure TFrmProgramaDeSalud.pasarAListaDeBajasDragDrop;
var
  Bajas : TBajas;
  i, idx : Integer;
  empleadoDadoDeBaja : Boolean;
  programaRecursivoActualizar : TZQuery;
begin
  //Pasa a la lista de Bajas con el drag and drop segun el empleado que seleccione el usuario
  try
    for idx := 0 to vistaBajas.Controller.SelectedRowCount - 1 do
    begin
      empleadoDadoDeBaja := False;
      for i := 0 to listaBajas.Count - 1 do
      begin
        if TBajas(listaBajas.Items.Objects[i]).ficha = VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasFicha.Index]) then
        begin
          empleadoDadoDeBaja := True;
        end;
      end;

      if Not empleadoDadoDeBaja then
      begin
        Bajas := TBajas.Create;
        Bajas.idPersonal     :=   StrToInt(VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasId.Index]));
        Bajas.ficha          :=          VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasFicha.Index]);
        Bajas.NombreCompleto := VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasNombreCompleto.Index]);
        Bajas.Puesto         :=         VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasPuesto.Index]);
        Bajas.plataforma     :=     VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasPlataforma.Index]);
        listaBajas.Items.AddObject(Bajas.ficha + ' - ' + Bajas.NombreCompleto, Bajas);

        try
          //Poner el campo Activo como "No" en la tabla rhu_programarecursivo cuando el empleado se pase a la lista de los dados de Baja
          programaRecursivoActualizar := TZQuery.Create(Self);

          if Not AsignarSentencia(programaRecursivoActualizar, 'rhu_programarecursivo', ccUpdate) then
            raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

          if not CargarDatosFiltrados(programaRecursivoActualizar, 'idPersonal', [StrToInt(VarToStr(vistaBajas.Controller.SelectedRows[idx].Values[tcxBajasId.Index]))(*cdEmpleadosParaBajas.FieldByName('idPersonal').AsInteger*)]) then
            raise EInteliException.CreateByCode(6, ['idPersonal', 'rhu_programarecursivo']);

          programaRecursivoActualizar.Open;

          if programaRecursivoActualizar.RecordCount > 0 then
          begin
            while Not programaRecursivoActualizar.Eof do
            begin
              programaRecursivoActualizar.Edit;
              programaRecursivoActualizar.FieldByName('activo').AsString := 'No';
              programaRecursivoActualizar.Post;

              programaRecursivoActualizar.Next;
            end;
          end;
        finally
          programaRecursivoActualizar.Destroy;
        end;
      end;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.realizadoNoRealizado(Status, mensaje: string);
var
  Cursor : TCursor;
  FechaCompuesta : string;
begin
  //Para elos botones Marcar Realizado y Desmarcar Realizado
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      //Poner el estatus como Realizada para distinguir entre las que estan Programadas, Realizadas y Vencidas
      FechaCompuesta := DatetoStrSql(StrToDate(DateToStr(schedulerFechas.SelStart)));
      if Not CargarDatosFiltrados(zqryProgramaRecursivo, 'idProgramaRecursivo, fechaProgramada, fechaReal, idPersonal', [-1, (FechaCompuesta), -1, zqryPersonal.FieldByName('idPersonal').AsInteger]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'fechaProgramada', 'fechaReal', 'idPersonal']);

      if zqryProgramaRecursivo.Active then
        zqryProgramaRecursivo.Refresh
      else
        zqryProgramaRecursivo.Open;

      if zqryProgramaRecursivo.RecordCount > 0 then
      begin
        zqryProgramaRecursivo.Edit;
        zqryProgramaRecursivo.FieldByName('Status').AsString := Status;
        zqryProgramaRecursivo.Post;

        MessageDlg(mensaje, mtInformation, [mbOK], 0);
      end;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.reporteProReaVenGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'FechaActual' then
  begin
    Value := DatetoStrSql(Date);
  end;
end;

procedure TFrmProgramaDeSalud.reportes2GetValue(const VarName: string;
  var Value: Variant);
begin
  if Varname = 'NombreCompleto' then
  begin
    Value := cdEmpleadosParaReportes.FieldByName('NombreCompleto').AsString;
  end;

  if VarName = 'TipoExamen' then
  begin
    Value := cdTiposExamenMedicos.FieldByName('Descripcion').AsString;
  end;
  
  if VarName = 'FechaActual' then
  begin
    Value := DatetoStrSql(Date);
  end;
end;

procedure TFrmProgramaDeSalud.reportesDocumentosGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'FechaActual' then
  begin
    Value := DatetoStrSql(Date);
  end;
end;

procedure TFrmProgramaDeSalud.revisarFechasCaducadas;
var
  programaRecursivo : TZQuery;
begin
  //Revisa todas las fechas en rhu_programarecursivo, si la fecha es menor a la fecha actual y el estatus es Programada
  //entonces cambiar el Estatus a Vencida, puesto que la fecha del examen ya se paso de la fecha establecida
  //y el usuario no evaluo en dicha fecha
  try
    try
      programaRecursivo := TZQuery.Create(Self);

      if Not AsignarSentencia(programaRecursivo, 'rhu_programarecursivo', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

      if Not CargarDatosFiltrados(programaRecursivo, 'idProgramaRecursivo', [-1]) then
        raise EInteliException.CreateByCode(6, ['idProgramaRecursivo', 'rhu_programarecursivo']);

      programaRecursivo.Open;

      if programaRecursivo.RecordCount > 0 then
      begin
        programaRecursivo.First;
        while Not programaRecursivo.Eof do
        begin
          if (Date > programaRecursivo.FieldByName('fechaProgramada').AsDateTime) and
              (programaRecursivo.FieldByName('Status').AsString = 'Programada') then
          begin
            programaRecursivo.Edit;
            programaRecursivo.FieldByName('Status').AsString := 'Vencida';
            programaRecursivo.Post;
            programaRecursivo.ApplyUpdates;
          end;
          programaRecursivo.Next;
        end;
      end;
    finally
      programaRecursivo.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end; 
end;

procedure TFrmProgramaDeSalud.revizarDocumentosVencidos;
var
  numDocumentosVencidos : Integer;
begin
  //Reviza si existen Documentos Vencidos
  //Crear Dataset Memoria para los ocumentos vencidos por empleado y se deben mostrar en el grid de documentos vencidos
  datasetMemoriaDocumentosVencidos;

  cdDocumentosVencidosMEMORIA.EmptyDataSet;

  numDocumentosVencidos := 0;
  traerTodoCatalogoDocumentos;
  zqryCatalogoDocumentosUPDATE.First;
  while Not zqryCatalogoDocumentosUPDATE.Eof do
  begin
    if existenDocumentosXVencerse(zqryCatalogoDocumentosUPDATE.FieldByName('idDocumento').AsInteger,
                               zqryCatalogoDocumentosUPDATE.FieldByName('Recursividad').AsInteger,
                               zqryCatalogoDocumentosUPDATE.FieldByName('Medida').AsString) then
    begin
      numDocumentosVencidos := numDocumentosVencidos + 1;
    end;                               

    zqryCatalogoDocumentosUPDATE.Next;
  end;

  if numDocumentosVencidos > 0 then
  begin
    ActivarBotonDocumentosVencidos(True);
    tdxVigencias.Caption := 'Vigencia ¡Tienes Documentos Caducados!';
  end
  else
  begin
    ActivarBotonDocumentosVencidos(False);
    tdxVigencias.Caption := 'Vigencia';
  end;
end;

procedure TFrmProgramaDeSalud.RibbonMenuPrincipalTabChanged(
  Sender: TdxCustomRibbon);
var
  Cursor : TCursor;
begin
  try
    //Screen.Cursor := crDefault;
    //try
    imprimirExcelConFormato := False;
    //Screen.Cursor := crAppStart;
    if ejecutarEventoRibbon then
    begin
      zqryPersonal.Filtered := False;
      //Cambiar las pestana de arriba y abajo conforme se seleccione una pestana
      if RibbonMenuPrincipal.ActiveTab = tdxFechasProgramadas then
      begin
        pageContenedorPrincipal.ActivePage := pageFechasProgramadas;
        panelScrollAntidoping.Visible   := False;
        panelScrollAntecedentes.Visible := False;
        panelScrollDocumentos.Visible   := False;
      end
      else if RibbonMenuPrincipal.ActiveTab = tdxExamenMedico then
      begin
        gridGrafica.Visible := False;
        nivelGrafica.Visible := False;
        //Destruir cualquier objeto que se haya creado en la pestana Historial
        destruirObjetosHistorial;

        //Filtrar al empleado que se selecciono en la pestana Programar Fecha
        zqryPersonal.Filter := 'idpersonal=' + IntToStr(zqryPersonal.FieldByName('idPersonal').AsInteger);
        zqryPersonal.Filtered := True;

        zqryPersonalUPDATE.Edit;

        //Traer todo el catalogo de examen medico ""OTRA VEZ para la pestana examen medico
        if Not CargarDatosFiltrados(zqryCatalogoExamenMedico, 'idcatalogoexamenmedico, codigo, ValorMinimo, idTipoExamen_Medico', [-1, -1, -1, 1]) then
          raise EInteliException.CreateByCode(6, ['idcatalogoexamenmedico', 'rhu_catalogoexamenmedico']);

        if zqryCatalogoExamenMedico.Active then
          zqryCatalogoExamenMedico.Refresh
        else
          zqryCatalogoExamenMedico.Open;

          actualizarObjetosExamenMedico;

          pageContenedorPrincipal.ActivePage := pageExamenMedico;

          //Poner por defecto la pestana pageFormularioExamenMedico
          pageTipoExamen.ActivePage := pageFormularioExamenMedico;
      end else if RibbonMenuPrincipal.ActiveTab = tdxResumenGeneral then
      begin
        pageContenedorPrincipal.ActivePage := pageResumenGeneral;

        if crearExcelExamenMedico = True then
        begin
          crearResumenGeneralExcel;
          crearExcelExamenMedico := False;
        end;
      end else if RibbonMenuPrincipal.ActiveTab = tdxDocumentosMedicos then
      begin
        pageContenedorPrincipal.ActivePage := pageDocumentosMedicos;

        if panelScrollDocumentos.Visible = False then
        begin
          traerTodoCatalogoDocumentos;
          actualizarObjetosDocumentos;
          panelScrollDocumentos.Visible := True;
          actualizarPestanVigencia := True;
        end;
      end else if RibbonMenuPrincipal.ActiveTab = tdxReportes then
      begin
        pageContenedorPrincipal.ActivePage := pageReportes;
      end else if RibbonMenuPrincipal.ActiveTab = tdxVigencias then
      begin
        if actualizarPestanVigencia = True then
        begin
          actualizarObjetosVigenciasDocumentosTodos;
          botonesPestanaVigencias(True, False, True);
          revizarDocumentosVencidos;
        end;
        pageContenedorPrincipal.ActivePage := pageVigencias;
        panelScrollDocumentos.Visible := False;
      end else if RibbonMenuPrincipal.ActiveTab = tdxHistorial then
      begin
        pageContenedorPrincipal.ActivePage := pageHistorial;
      end else if RibbonMenuPrincipal.ActiveTab = tdxFirmantes then
      begin
        pageContenedorPrincipal.ActivePage := pageFirmantes;
      end else if RibbonMenuPrincipal.ActiveTab = tdxBajas then
      begin
        mostrarPersonalParaBajas;
        llenarListaDeEmpleadosBajados;
        traerTodoNucPersonal;
        pageContenedorPrincipal.ActivePage := pageBajas;
      end;
    end;
    //finally
      //Screen.Cursor := crDefault;
    //end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.schedulerFechasClick(Sender: TObject);
begin
  if Not checkMostrarGeneral.Checked then
  begin
    mostrarExamenMedico(zqryPersonal.FieldByName('idPersonal').AsInteger, DatetoStrSql(schedulerFechas.SelStart));
    //Habilitar o Deshabilitar los botones en base a las fechas programadas
    actualizarBotones;
  end;
end;

procedure TFrmProgramaDeSalud.storageSchedulerEventInserted(Sender: TObject;
  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  if AEvent.EventType = etCustom then
    AEvent.SetCustomFieldValueByName('TesCustomField', AEvent.Pattern.GetCustomFieldValueByName('TesCustomField'));
end;

function TFrmProgramaDeSalud.tieneArchivo(idDocumento,
  idPersonal: Integer): Boolean;
var
  doctoXCargo : TZQuery;
begin
  //Devuelve True si el empleado tiene un Archivo en el documento que se esta dando de alta
  try
    doctoXCargo := TZQuery.Create(Self);

    if Not AsignarSentencia(doctoXCargo, 'rhu_doctosxcargo_medico', ccUpdate) then
      raise EInteliException.CreateByCode(5, ['rhu_doctoxcargo_medico']);

    if Not CargarDatosFiltrados(doctoXCargo, 'idPersonal, idDocumento', [idPersonal, idDocumento]) then
      raise EInteliException.CreateByCode(6, ['idPersonal', 'idDocumento', 'rhu_doctoxcargo_medico']);

    if doctoXCargo.Active then
      doctoXCargo.Refresh
    else
      doctoXCargo.Open;

    if doctoXCargo.RecordCount > 0 then
    begin
      if doctoXCargo.FieldByName('extensionArchivo').AsString <> '' then
        Result := True
      else
        Result := False;
    end
    else
      Result := False;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.TiposExamenesParaGrid;
var
  tiposExamenes : TZQuery;
begin
  //Aqui se traeran los tipos de examenes medicos que sena diferentes de los antecedentes medicos
  try
    try
      tiposExamenes := TZQuery.Create(Self);

      if Not AsignarSentencia(tiposExamenes, 'rhu_tipoexamen_medico', ccSelect) then  //Traer todo de la consulta rhu_tipoexamen_medico
        raise EInteliException.CreateByCode(5, ['rhu_tipoexamen_medico']);  //de tipo CCSelect

      tiposExamenes.Open;

      if tiposExamenes.RecordCount > 0 then
      begin
        cdTiposExamenMedicos.Open;
        cdTiposExamenMedicos.EmptyDataSet;
        tiposExamenes.First;

        while Not tiposExamenes.Eof do
        begin
          if tiposExamenes.FieldByName('idTipoExamen_Medico').AsInteger <> 3 then
          begin
            cdTiposExamenMedicos.Append;
            cdTiposExamenMedicos.FieldByName('idTipoExamen_Medico').AsInteger := tiposExamenes.FieldByName('idTipoExamen_Medico').AsInteger;
            cdTiposExamenMedicos.FieldByName('idcatalogoexamenmedico').AsInteger := tiposExamenes.FieldByName('idcatalogoexamenmedico').AsInteger;
            cdTiposExamenMedicos.FieldByName('Descripcion').AsString := tiposExamenes.FieldByName('Descripcion').AsString;
            cdTiposExamenMedicos.FieldByName('Titulo').AsString := tiposExamenes.FieldByName('Titulo').AsString;
            cdTiposExamenMedicos.Post;
          end;

          tiposExamenes.Next;
        end;

        dsTiposExamenMedicos.DataSet := cdTiposExamenMedicos;
        vistaTiposExamenes.DataController.DataSource := dsTiposExamenMedicos;
      end
      else
        MessageDlg('¡No hay registros para mostrar para los tipos de exámenes!', mtInformation, [mbOk], 0);
    finally
      tiposExamenes.Destroy;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.traerTodoCatalogoDocumentos;
begin
  //Traer todo el catalogo de rhu_documento_medico  de tipo UPDATE
  if Not CargarDatosFiltrados(zqryCatalogoDocumentosUPDATE, 'Medico', ['Si']) then
    raise EInteliException.CreateByCode(6, ['idDocumento', 'rhu_documento_medico']);

  if zqryCatalogoDocumentosUPDATE.Active then
    zqryCatalogoDocumentosUPDATE.Refresh
  else
    zqryCatalogoDocumentosUPDATE.Open;
end;

procedure TFrmProgramaDeSalud.traerTodoDoctosXCargo;
begin
  //Filtra todos los documentos de tipo Recursividad
  try
    if Not CargarDatosFiltrados(zqryDoctosXCargoUPDATE, 'idDoctosxCargo', [-1]) then
      raise EInteliException.CreateByCode(6, ['idDoctosxCargo', 'rhu_doctosxcargo']);

    if zqryDoctosXCargoUPDATE.Active then
      zqryDoctosXCargoUPDATE.Refresh
    else
      zqryDoctosXCargoUPDATE.Open;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.traerTodoNucPersonal;
begin
  //Trae a todo el personal de la consulta nuc_personal Catalog
  try
    if Not CargarDatosFiltrados(zqryPersonal, 'idPersonal', [-1]) then
      raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

    if zqryPersonal.Active then
      zqryPersonal.Refresh
    else
      zqryPersonal.Open;

    zqryPersonal.First;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.traerTodoNucPersonalUpdate;
begin
  //Trae todo el catalogo de nuc_personal_medico de tipo UPDATE
  try
    if not CargarDatosFiltrados(zqryNucPersonalUPDATE, 'idPersonal', [-1]) then
      raise EInteliException.CreateByCode(5, ['idPersonal', 'nuc_personal_medico']);

    if zqryNucPersonalUPDATE.Active then
      zqryNucPersonalUPDATE.Refresh
    else
      zqryNucPersonalUPDATE.Open;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.traerTodosFirmantes;
begin
  try
    //Crea conjunto para el catalogo de Firmantes de la consulta rhu_firmantesmedicos de tipo UPDATE
    if Not AsignarSentencia(zqryFirmantes, 'rhu_firmantesmedicos', ccUpdate) then
    raise EInteliException.CreateByCode(5, ['rhu_firmantesmedicos']);

    if Not CargarDatosFiltrados(zqryFirmantes, 'idFirmanteMedico', [-1]) then
      raise EInteliException.createByCode(6, ['idFirmanteMedico', 'rhu_firmantesmedicos']);

    if zqryFirmantes.Active then
      zqryFirmantes.Refresh
    else
      zqryFirmantes.Open;    
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.validarNumerosCajas(Sender: TObject;
  var Key: Char);
begin
  //Valida las cajas de texto del examen medico que se crean dinamicamente, que solo acepte numeros flotantes
  if not(Key in ['0'..'9','.', #8]) then
  begin
    Key := #0;
  end;
end;

procedure TFrmProgramaDeSalud.VerTamaocompleto1Click(Sender: TObject);
begin
  //Muestra el reporte de Antecedentes en tamano Completo\
  try
    reportesDocumentos.Preview := Nil;
    reportesDocumentos.LoadFromFile(global_files + 'ReporteDocumentos.fr3');
    reportesDocumentos.ShowReport();
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.vistaBajasDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i : Integer;
  programaRecursivoActualizar : TZQuery;
begin
  //Cuando el usuario regrese de la lista de los bajados al grid, entonces desaparecer el registro
  //seleccionado de la lista
  try
    i := 0;
    with listaBajas do
    begin
      while i < Items.Count do
      begin
        if Selected[i] then
        begin
          try
            //Poner el estatus del campo activo como "Si" de la tabla rhu_programarecursivo para que los datos de los empleados sevean en los reportes
            programaRecursivoActualizar := TZQuery.Create(Self);

            if Not AsignarSentencia(programaRecursivoActualizar, 'rhu_programarecursivo', ccUpdate) then
              raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

            if not CargarDatosFiltrados(programaRecursivoActualizar, 'idPersonal', [TBajas(listaBajas.Items.Objects[i]).idPersonal]) then
              raise EInteliException.CreateByCode(6, ['idPersonal', 'rhu_programarecursivo']);

            programaRecursivoActualizar.Open;

            if programaRecursivoActualizar.RecordCount > 0 then
            begin
              while Not programaRecursivoActualizar.Eof do
              begin
                programaRecursivoActualizar.Edit;
                programaRecursivoActualizar.FieldByName('activo').AsString := 'Si';
                programaRecursivoActualizar.Post;

                programaRecursivoActualizar.Next;
              end;
            end;
          finally
            programaRecursivoActualizar.Destroy;
          end;
          
          Items.Delete(i);
          i := -1;
        end;

        i := i + 1;
      end;
    end;
    crearExcelExamenMedico := True;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.vistaBajasDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TFrmProgramaDeSalud.vistaBajasStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  OrigenDragDrop := 'gridBajas';
end;

procedure TFrmProgramaDeSalud.vistaDocumentosPorCaducarCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
const
  PDFFILE_HEADER = '%PDF';
var
  Cursor : TCursor;
  documentoCaducado : TZQuery;
  NombreArchivo     :  string;
  previewImagen : TfrxPreview;
begin
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;
      formularioInsertarCatalogo := TForm.Create(nil);
      panelArchivoCaducado.Visible := False;
      panelArchivoCaducado.Enabled := False;
      panelArchivoCaducado.Parent := formularioInsertarCatalogo;

      //Mostrar el archivo que esta caducado en una vista
      NombreArchivo := '';

      documentoCaducado := nil;
      documentoCaducado := TZQuery.Create(Self);

      if Not AsignarSentencia(documentoCaducado, 'rhu_doctosxcargo_medico', ccUpdate) then
        raise EInteliException.CreateByCode(5, ['rhu_doctosxcaro_medico']);

      if Not CargarDatosFiltrados(documentoCaducado, 'idDoctosxCargo', [cdDocumentosVencidosMEMORIA.FieldByName('idDoctosxCargo').AsInteger]) then
        raise EInteliException.CreateByCode(5, ['idDoctosxCargo', 'rhu_doctosxcargo_medico']);

      if documentoCaducado.Active then
        documentoCaducado.Refresh
      else
        documentoCaducado.Open;

      if documentoCaducado.RecordCount > 0 then
      begin
        AcroPDF := nil;
        //Si el archivo es un archivo PDF, entonces mostrar el documento en el AcroPDF
        if documentoCaducado.FieldByName('extensionArchivo').AsString = 'pdf' then
        begin
          //Cargar el archivo PDF que se subio desde la pestana Documento en el panel
          NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := Nombrearchivo + '\Documentos RH\';

          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := NombreArchivo + IntToStr(cdDocumentosVencidosMEMORIA.FieldByName('idPersonal').AsInteger) + '_rhu_doctosxcargo.pdf';

          TBlobField(documentoCaducado.FieldByName('archivo')).SaveToFile(NombreArchivo);

          AcroPDF := TAcroPDF.Create( panelArchivoCaducado );
          AcroPDF.Parent := panelArchivoCaducado;
          AcroPDF.Align  :=      alClient;
          AcroPDF.DoubleBuffered := False;
          AcroPdf.LoadFile(NombreArchivo);
          AcroPdf.Show;

          crearPanelInsertarCatalogo(panelArchivoCaducado, formularioInsertarCatalogo, 'Archivo Caducado', 900, 600);
        end else if documentoCaducado.FieldByName('extensionArchivo').AsString = 'jpg' then
        begin
          NombreArchivo := ExtractFilePath(Application.ExeName) + 'Temp';
          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := Nombrearchivo + '\Documentos RH\';

          if not DirectoryExists(NombreArchivo) then
            MkDir(NombreArchivo);

          NombreArchivo := NombreArchivo + IntToStr(cdDocumentosVencidosMEMORIA.FieldByName('idPersonal').AsInteger) + '_imagen_jpg.jpg';

          TBlobField(documentoCaducado.FieldByName('archivo')).SaveToFile(NombreArchivo);

          previewImagen := TfrxPreview.Create(nil);
          previewImagen.Parent := panelArchivoCaducado;
          previewImagen.Align := alClient;
          previewImagen.Visible := True;

          previewImagen.PopupMenu := popupDocumentoVencido;

          frxDBDocumentoVencido.DataSet := documentoCaducado;

          reporteDocumentoVencido.Preview := previewImagen;
          //reporteDocumentoVencido.LoadFromFile(global_files + 'documentoVencido.fr3');
          reporteDocumentoVencido.ShowReport();

          crearPanelInsertarCatalogo(panelArchivoCaducado, formularioInsertarCatalogo, 'Archivo Caducado', 900, 600);
        end
        else //Si no es Pdf ni Jpg, quiere decir que no hay archivo en la BD para ese registro
          MessageDlg('¡No hay Archivo para mostrar!', mtInformation, [mbOk], 0);
      end;
    finally
      if AcroPDF <> nil then
        AcroPDF.Destroy;
      documentoCaducado.Destroy;
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.vistaEmpleadosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  checkMostrarGeneral.Checked := False;
  actualizarColores;

  schedulerFechas.Enabled := True;

  mostrarExamenMedico(zqryPersonal.FieldByName('idPersonal').AsInteger, DatetoStrSql(schedulerFechas.SelStart));
  actualizarBotones;

  if Not CargarDatosFiltrados(zqryPersonalUPDATE, 'idPersonal', [zqryPersonal.FieldByName('idPersonal').AsInteger]) then
    raise EInteliException.CreateByCode(6, ['idPersonal', 'nuc_personal_medico']);

  if zqryPersonalUPDATE.Active then
    zqryPersonalUPDATE.Refresh
  else
    zqryPersonalUPDATE.Open;
end;

procedure TFrmProgramaDeSalud.vistaEmpleadosParaReportesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Cuando se de click en un empleado, mostrar las fechas en que tiene evaluaciones
  try
    zqryFechas := TZQuery.Create(Self);

    if Not AsignarSentencia(zqryFechas, 'rhu_programarecursivo', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_programarecursivo']);

    if Not CargarDatosFiltrados(zqryFechas, 'idPersonal', [cdEmpleadosParaReportes.FieldByName('idPersonal').AsInteger]) then
      raise EInteliException.CreateByCode(6, ['idPersonal', 'rhu_programarecursivo']);

    if zqryFechas.Active then
      zqryFechas.Refresh
    else
      zqryFechas.Open;

    if zqryFechas.RecordCount > 0 then
    begin
      dsFechas := TDataSource.Create(Self);
      dsFechas.DataSet := zqryFechas;
      vistaFechas.DataController.DataSource := dsFechas;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.vistaFechasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  catalogoExamen : TZQuery;
  preview : TfrxPreview;
begin
  //Cuando el usuario de doble click en una fecha, entonces mostrar el reporte de Antecedentes
  try
    catalogoExamen := TZQuery.Create(Self);

    if not AsignarSentencia(catalogoExamen, 'rhu_catalogoexamenmedico', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_catalogoexamenmedico']);

    if Not CargarDatosFiltrados(catalogoExamen, 'idTipoExamen_Medico', [3]) then
      raise EInteliException.CreateByCode(6, ['idTipoExamen_Medico']);

    catalogoExamen.Open;

    if catalogoExamen.RecordCount > 0 then
    begin
      datasetParaReporteAntecedentes;
      cdDatosParaReporteAntecedente.Open;
      cdDatosParaReporteAntecedente.EmptyDataSet;

      catalogoExamen.First;
      while not catalogoExamen.Eof do
      begin
        cdDatosParaReporteAntecedente.Append;
        cdDatosParaReporteAntecedente.FieldByName('idcatalogoexamenmedico').AsInteger := catalogoExamen.FieldByName('idcatalogoexamenmedico').AsInteger;
        cdDatosParaReporteAntecedente.FieldByName('NombreCompleto').AsString := cdEmpleadosParaReportes.FieldByName('NombreCompleto').AsString;
        cdDatosParaReporteAntecedente.FieldByName('fechaProgramada').AsString := DatetoStrSql(zqryFechas.FieldByName('fechaProgramada').AsDateTime);

        //Obtener un Si o un No si al usuario le fue evaluado ese tipo de Antecedente
        if AntecedenteEvaluado(zqryFechas.FieldByName('idProgramaRecursivo').AsInteger,
                                cdEmpleadosParaReportes.FieldByName('idPersonal').AsInteger, 3,
                                catalogoExamen.FieldByName('idcatalogoexamenmedico').AsInteger) = True then
          cdDatosParaReporteAntecedente.FieldByName('Evaluado').AsString := 'Si'
        else
          cdDatosParaReporteAntecedente.FieldByName('Evaluado').AsString  := 'No';

        cdDatosParaReporteAntecedente.FieldByName('Descripcion').AsString := catalogoExamen.FieldByName('Descripcion').AsString;

        catalogoExamen.Next;
      end;

      frxDBReportes.DataSet := cdDatosParaReporteAntecedente;

      //panelScrollReportes.Align := alClient;
      preview :=   TfrxPreview.Create(Self);
      preview.Parent := panelScrollReportes;
      preview.Align :=   alClient;
      preview.PopupMenu := popupMostrarReporteCompleto;
      preview.Visible :=     True;
      reportes.Preview := preview;

      reportes.LoadFromFile(global_files + 'AntecedentesDeSalud.fr3');
      reportes.ShowReport();

      formularioInsertarCatalogo.Close;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.vistaHistorialEmpleadosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  Cursor : TCursor;
begin
  //Mostrar el historial del empleado seleccionado
  try
    Screen.Cursor := crDefault;
    try
      Screen.Cursor := crAppStart;

      lblIndicativoNombre.Visible := True;
      lblNombreEmpleado.Visible   := True;
      lblNombreEmpleado.Caption := zqryHistorialPersonal.FieldByName('NombreCompleto').AsString;

      actualizarObjetosHistorial(zqryHistorialPersonal.FieldByName('idPersonal').AsInteger);

      formularioInsertarCatalogo.Close;

      //Mostrar grafica de examenes medicos dependiendo el empleado seleccionado
//      if Not AsignarSentencia(zqryGrafica, 'rhu_examenmedico', ccCatalog) then
//        raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);
//
//      if Not CargarDatosFiltrados(zqryGrafica, 'idPersonal, codigo, idTipoExamen_Medico',
//                                  [zqryHistorialPersonal.FieldByName('idPersonal').AsInteger, 'Glucosa', 1]) then
//        raise EInteliException.CreateByCode(6, ['idPersonal', 'idTipoExamen_Medico', 'rhu_examenmedico']);
//
//      if zqryGrafica.Active then
//        zqryGrafica.Refresh
//      else
//        zqryGrafica.Open;
    finally
      Screen.Cursor := crDefault;
    end;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

procedure TFrmProgramaDeSalud.vistaTiposExamenesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  preview : TfrxPreview;
  idx     :     Integer;
  idAnterior :  Integer;
  hubieronDatosAnteriores : Boolean;
begin
   //Al dar doble click sobre un tipo de examen medico, imprimir por ese tipo de examen medico
  try
    datosReporte := TZQuery.Create(Self);

    if Not AsignarSentencia(datosReporte, 'rhu_examenmedico', ccCatalog) then
      raise EInteliException.CreateByCode(5, ['rhu_examenmedico']);

    camposCdDatasetParaReportesPorTipo;
    cdDatasetParaReportesPorTipo.Open;
    cdDatasetParaReportesPorTipo.EmptyDataSet;

    for idx := 0 to vistaEmpleadosParaReportesExamenMedico.Controller.SelectedRowCount - 1 do
    begin
      hubieronDatosAnteriores := False;
      if Not CargarDatosFiltrados(datosReporte, 'idPersonal, idcatalogoexamenmedico',
                                  [(*cdEmpleadosParaReportes.FieldByName('idPersonal').AsInteger,*)
                                  vistaEmpleadosParaReportesExamenMedico.Controller.SelectedRows[idx].Values[tcxEmpleadosReportesExamenMedicoIdPersonal.Index],
                                  cdTiposExamenMedicos.FieldByName('idcatalogoexamenmedico').AsInteger]) then
        raise EInteliException.CreateByCode(6, ['idPersonal', 'idcatalogoexamenmedico', 'rhu_examenmedico']);

      if datosReporte.Active then
        datosReporte.Refresh
      else
        datosReporte.Open;

      if datosReporte.RecordCount > 0 then
      begin
        datosReporte.First;
        idAnterior := 0;
        while not datosReporte.Eof do
        begin
          if checkAplicarRangoFechas.Checked = False then
          begin
            cdDatasetParaReportesPorTipo.Append;

            if datosReporte.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
            begin
              cdDatasetParaReportesPorTipo.FieldByName('Resultado').AsString := FloatToStr(datosReporte.FieldByName('ResultadoEstudioExamen').AsFloat) + ' ' +
                                                                                datosReporte.FieldByName('Medida').AsString;
            end else if datosReporte.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
            begin
              cdDatasetParaReportesPorTipo.FieldByName('Resultado').AsString :=  datosReporte.FieldByName('ResultadoDopaje').AsString;
            end;

            cdDatasetParaReportesPorTipo.FieldByName('idProgramaRecursivo').AsInteger :=       datosReporte.FieldByName('idProgramaRecursivo').AsInteger;
            cdDatasetParaReportesPorTipo.FieldByName('fechaProgramada').AsString := DatetoStrSql(datosReporte.FieldByName('fechaProgramada').AsDateTime);
            cdDatasetParaReportesPorTipo.FieldByName('Status').AsString               :=                     datosReporte.FieldByName('Status').AsString;
            cdDatasetParaReportesPorTipo.FieldByName('idPersonal').AsInteger          :=                datosReporte.FieldByName('idPersonal').AsInteger;
            cdDatasetParaReportesPorTipo.FieldByName('codigopersonal').AsString       :=             datosReporte.FieldByName('codigopersonal').AsString;

            if (datosReporte.FieldByName('idPersonal').AsInteger <> idAnterior) or (idAnterior = 0) then
              cdDatasetParaReportesPorTipo.FieldByName('NombreCompleto').AsString       :=             datosReporte.FieldByName('NombreCompleto').AsString
            else
              cdDatasetParaReportesPorTipo.FieldByName('NombreCompleto').AsString       := '';
                              
            cdDatasetParaReportesPorTipo.FieldByName('telefono').AsString             :=                   datosReporte.FieldByName('telefono').AsString;
            cdDatasetParaReportesPorTipo.FieldByName('grupoSanguineo').AsString       :=             datosReporte.FieldByName('grupoSanguineo').AsString;
            cdDatasetParaReportesPorTipo.FieldByName('titulocargo').AsString          :=                datosReporte.FieldByName('titulocargo').AsString;
            cdDatasetParaReportesPorTipo.FieldByName('idcatalogoexamenmedico').AsInteger := datosReporte.FieldByName('idcatalogoexamenmedico').AsInteger;
            cdDatasetParaReportesPorTipo.FieldByName('Descripcion').AsString          :=                datosReporte.FieldByName('Descripcion').AsString;
            cdDatasetParaReportesPorTipo.FieldByName('valorMinimo').AsInteger         :=               datosReporte.FieldByName('valorMinimo').AsInteger;
            cdDatasetParaReportesPorTipo.FieldByName('valorMaximo').AsInteger         :=               datosReporte.FieldByName('valorMaximo').AsInteger;
            cdDatasetParaReportesPorTipo.FieldByName('idTipoExamen_Medico').AsInteger :=       datosReporte.FieldByName('idTipoExamen_Medico').AsInteger;
            cdDatasetParaReportesPorTipo.FieldByName('Titulo').AsString               :=                     datosReporte.FieldByName('Titulo').AsString;

            idAnterior := datosReporte.FieldByName('idPersonal').AsInteger;
            cdDatasetParaReportesPorTipo.Post;
            hubieronDatosAnteriores := True;
          end
          else if checkAplicarRangoFechas.Checked = True then
          begin
            if (datosReporte.FieldByName('fechaProgramada').AsDateTime >= cbbDel.Date) and
               (datosReporte.FieldByName('fechaProgramada').AsDateTime <= cbbAl.Date) then
            begin
              cdDatasetParaReportesPorTipo.Append;

              if datosReporte.FieldByName('idTipoExamen_Medico').AsInteger = 1 then
              begin
                cdDatasetParaReportesPorTipo.FieldByName('Resultado').AsString := FloatToStr(datosReporte.FieldByName('ResultadoEstudioExamen').AsFloat) + ' ' +
                                                                                  datosReporte.FieldByName('Medida').AsString;
              end else if datosReporte.FieldByName('idTipoExamen_Medico').AsInteger = 2 then
              begin
                cdDatasetParaReportesPorTipo.FieldByName('Resultado').AsString :=  datosReporte.FieldByName('ResultadoDopaje').AsString;
              end;
        
              cdDatasetParaReportesPorTipo.FieldByName('idProgramaRecursivo').AsInteger :=       datosReporte.FieldByName('idProgramaRecursivo').AsInteger;
              cdDatasetParaReportesPorTipo.FieldByName('fechaProgramada').AsString := DatetoStrSql(datosReporte.FieldByName('fechaProgramada').AsDateTime);
              cdDatasetParaReportesPorTipo.FieldByName('Status').AsString               :=                     datosReporte.FieldByName('Status').AsString;
              cdDatasetParaReportesPorTipo.FieldByName('idPersonal').AsInteger          :=                datosReporte.FieldByName('idPersonal').AsInteger;
              cdDatasetParaReportesPorTipo.FieldByName('codigopersonal').AsString       :=             datosReporte.FieldByName('codigopersonal').AsString;

              if (datosReporte.FieldByName('idPersonal').AsInteger <> idAnterior) or (idAnterior = 0) then
                cdDatasetParaReportesPorTipo.FieldByName('NombreCompleto').AsString       :=             datosReporte.FieldByName('NombreCompleto').AsString
              else
              cdDatasetParaReportesPorTipo.FieldByName('NombreCompleto').AsString       := '';
                              
              cdDatasetParaReportesPorTipo.FieldByName('telefono').AsString             :=                   datosReporte.FieldByName('telefono').AsString;
              cdDatasetParaReportesPorTipo.FieldByName('grupoSanguineo').AsString       :=             datosReporte.FieldByName('grupoSanguineo').AsString;
              cdDatasetParaReportesPorTipo.FieldByName('titulocargo').AsString          :=                datosReporte.FieldByName('titulocargo').AsString;
              cdDatasetParaReportesPorTipo.FieldByName('idcatalogoexamenmedico').AsInteger := datosReporte.FieldByName('idcatalogoexamenmedico').AsInteger;
              cdDatasetParaReportesPorTipo.FieldByName('Descripcion').AsString          :=                datosReporte.FieldByName('Descripcion').AsString;
              cdDatasetParaReportesPorTipo.FieldByName('valorMinimo').AsInteger         :=               datosReporte.FieldByName('valorMinimo').AsInteger;
              cdDatasetParaReportesPorTipo.FieldByName('valorMaximo').AsInteger         :=               datosReporte.FieldByName('valorMaximo').AsInteger;
              cdDatasetParaReportesPorTipo.FieldByName('idTipoExamen_Medico').AsInteger :=       datosReporte.FieldByName('idTipoExamen_Medico').AsInteger;
              cdDatasetParaReportesPorTipo.FieldByName('Titulo').AsString               :=                     datosReporte.FieldByName('Titulo').AsString;

              idAnterior := datosReporte.FieldByName('idPersonal').AsInteger;
              cdDatasetParaReportesPorTipo.Post;
              hubieronDatosAnteriores := True;
            end;
          end;

          //idAnterior := datosReporte.FieldByName('idPersonal').AsInteger;
          datosReporte.Next;
        end;
        if hubieronDatosAnteriores then
        begin
          cdDatasetParaReportesPorTipo.Append;
          cdDatasetParaReportesPorTipo.FieldByName('NombreCompleto').AsString       := '';
          cdDatasetParaReportesPorTipo.Post;
        end;
      end;
      //else
        //MessageDlg('¡No hay registros para mostrar!', mtInformation, [mbOk], 0);
    end;

    frxDBReportePorTipoExamen.DataSet := cdDatasetParaReportesPorTipo;

    preview :=   TfrxPreview.Create(Self);
    preview.Parent := panelScrollReportes;
    preview.Align :=   alClient;
    preview.PopupMenu := popupReporteXTipoCompleto;
    preview.Visible :=     True;
    reportes2.Preview := preview;

    reportes2.LoadFromFile(global_files + 'reportePorTipoExamen.fr3');
    reportes2.ShowReport();

    formularioInsertarCatalogo.Close;
  except
    on e : Exception do
    begin
      LevantarExcepcion(e);
    end;
  end;
end;

end.
