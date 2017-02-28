unit frm_ReporteDiarioTurno2;

interface
                 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, frm_connection, Buttons, Utilerias, Global,
  Menus, OleCtrls, ExtCtrls, ShellApi, strUtils, frm_barra, Math, frxClass,
  frxDBSet, Jpeg, RxMemDS, rxToolEdit, rxCurrEdit, ZAbstractRODataset, ZDataset,
  sSkinProvider, ZAbstractDataset;

type
  TfrmDiarioTurno2 = class(TForm)
    Bitacora: TADOQuery;
    ds_bitacora: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    ordenesdetrabajo: TADOQuery;
    TiempoMuerto: TADOQuery;
    Turnos: TADOQuery;
    Label1: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    frmBarra1: TfrmBarra;
    Bevel3: TBevel;
    Label23: TLabel;
    Grid_Reportes: TDBGrid;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    PgDiario: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GridBitacora: TDBGrid;
    ReporteDiario: TADOQuery;
    ds_reportediario: TDataSource;
    Permisos: TADOQuery;
    ds_permisos: TDataSource;
    Platicas: TADOQuery;
    ds_turnos: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    tdIdFecha: TDateTimePicker;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    dsBitacora1: TfrxDBDataset;
    dsBitacora3: TfrxDBDataset;
    Bitacora1: TADOQuery;
    Bitacora3: TADOQuery;
    dsPersonal: TfrxDBDataset;
    dsEquipos: TfrxDBDataset;
    ResumenSeguridad: TADOQuery;
    dsSeguridad: TfrxDBDataset;
    Imprimir2: TMenuItem;
    dsOrden: TfrxDBDataset;
    dsReporteDiario: TfrxDBDataset;
    dsPermisos: TfrxDBDataset;
    Label13: TLabel;
    Label21: TLabel;
    tsNumeroReporte: TEdit;
    tsTiempo: TEdit;
    tsTransporte: TEdit;
    tsTema: TEdit;
    tsHoraInicio2: TMaskEdit;
    tsHoraFinal2: TMaskEdit;
    tsTiempoEfectivo: TMaskEdit;
    tsTiempoMuerto: TMaskEdit;
    tsInicioPlatica: TMaskEdit;
    tsFinalPlatica: TMaskEdit;
    dsTiempoMuerto: TfrxDBDataset;
    MovimientosdePersonal: TADOQuery;
    mBitacora1sPaquete: TStringField;
    mBitacora1sNumeroActividad: TStringField;
    mBitacora1mDescripcion: TMemoField;
    mBitacora1sMedida: TStringField;
    mBitacora1: TRxMemoryData;
    mBitacora1dCantidadAnexo: TFloatField;
    mBitacora1dCantidad: TFloatField;
    mBitacora1dAvance: TFloatField;
    dsmBitacora1: TfrxDBDataset;
    mBitacora1sContrato: TStringField;
    mMovimientos: TRxMemoryData;
    mMovimientossIdPernocta: TStringField;
    mMovimientossIdPlataforma: TStringField;
    mMovimientossIdEmbarcacion: TStringField;
    mMovimientossRenglon: TStringField;
    mMovimientossHora: TStringField;
    dsmMovimientos: TfrxDBDataset;
    mMovimientosiCampo: TIntegerField;
    ImprimirExcel1: TMenuItem;
    Label11: TLabel;
    tsIdTurno: TDBLookupComboBox;
    tdPonderadoAnterior: TCurrencyEdit;
    tdPonderadoDia: TCurrencyEdit;
    tdPonderadoGlobal: TCurrencyEdit;
    tdGlobalAnterior: TCurrencyEdit;
    tdDiarioTurno: TCurrencyEdit;
    tdGlobalTurno: TCurrencyEdit;
    tdFisicoDiario: TCurrencyEdit;
    tdGlobalDiario: TCurrencyEdit;
    QryConfiguracion: TZReadOnlyQuery;
    QryComentariosAdicionales: TZReadOnlyQuery;
    dsConfiguracion: TfrxDBDataset;
    dsComentariosAdicionales: TfrxDBDataset;
    QryC14: TZReadOnlyQuery;
    dsC14: TfrxDBDataset;
    qryC15: TZReadOnlyQuery;
    dsC15: TfrxDBDataset;
    QryReporteFotografico: TZReadOnlyQuery;
    dsReporteFotografico: TfrxDBDataset;
    QryC14te: TZReadOnlyQuery;
    dsC14te: TfrxDBDataset;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    rDiarioGeneral: TfrxReport;
    gruposhoras: TZReadOnlyQuery;
    gruposhorassIdTurno: TStringField;
    gruposhorassNumeroActividad: TStringField;
    gruposhorasmDescripcion: TMemoField;
    gruposhorassNumeroOrden: TStringField;
    gruposhorassumbadCantidad: TFloatField;
    grupopersonal: TZReadOnlyQuery;
    grupopersonalsumbadCantidad: TFloatField;
    grupopersonalsNumeroOrden: TStringField;
    grupopersonalsNumeroActividad: TStringField;
    grupopersonalmDescripcion: TMemoField;
    grupopersonalsIdTurno: TStringField;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    ZReadOnlyQuery1solicitado: TFloatField;
    ZReadOnlyQuery1sNumeroOrden: TStringField;
    ZReadOnlyQuery1sIdPlataforma: TStringField;
    ZReadOnlyQuery1sIdPernocta: TStringField;
    ZReadOnlyQuery1dIdFecha: TDateField;
    ZReadOnlyQuery1sNumeroActividad: TStringField;
    ZReadOnlyQuery1dCantidad: TFloatField;
    ZReadOnlyQuery1mDescripcion: TMemoField;
    ZReadOnlyQuery1sMedida: TStringField;
    ZReadOnlyQuery1sDescripcionCorta: TStringField;
    ZReadOnlyQuery1nomot: TMemoField;
    dsConsolidado: TfrxDBDataset;
    dsGrupoHoras: TfrxDBDataset;
    dsGrupopersonal: TfrxDBDataset;
    rmDiarioGeneral2: TfrxReport;
    rDiario: TfrxReport;
    qryComentariosxActividad: TZReadOnlyQuery;
    frxDBDataset1: TfrxDBDataset;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DateTimePicker2: TDateTimePicker;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    MaskEdit11: TMaskEdit;
    MaskEdit12: TMaskEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    DateTimePicker3: TDateTimePicker;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    MaskEdit16: TMaskEdit;
    MaskEdit17: TMaskEdit;
    MaskEdit18: TMaskEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet8: TTabSheet;
    DBGrid3: TDBGrid;
    qryConfiguracionOrden: TZReadOnlyQuery;
    dsConfiguracionOrden: TfrxDBDataset;
    movbarco: TfrxDBDataset;
    qrybitacoraEquipo: TZReadOnlyQuery;
    bitacoraEquipo: TfrxDBDataset;
    qryOrdenes: TZReadOnlyQuery;
    qryOrdenessNumeroOrden: TStringField;
    qryOrdenesmDescripcion: TMemoField;
    Ordenes: TfrxDBDataset;
    bitacorapersonal: TfrxDBDataset;
    bitacoradepersonal: TZReadOnlyQuery;
    Pernoctas: TfrxDBDataset;
    dsMovimientosEmbarcacion1: TfrxDBDataset;
    dsMovimientosEmbTipo1: TfrxDBDataset;
    QryMovimientosEmbTipo1: TZReadOnlyQuery;
    ZReadOnlyQuery2: TZReadOnlyQuery;
    totalxoptprog: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    dsC13: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    porplataforma: TZReadOnlyQuery;
    dsPernocta1: TfrxDBDataset;
    dsPernocta2: TfrxDBDataset;
    dsPernocta4: TfrxDBDataset;
    dsPernocta3: TfrxDBDataset;
    Pernocta4: TZReadOnlyQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    MemoField2: TMemoField;
    StringField6: TStringField;
    FloatField2: TFloatField;
    Pernocta3: TZReadOnlyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    Pernocta2: TZReadOnlyQuery;
    Pernocta2sIdTurno: TStringField;
    Pernocta2sNumeroActividad: TStringField;
    Pernocta2mDescripcion: TMemoField;
    Pernocta2sNumeroOrden: TStringField;
    Pernocta2sumbadCantidad: TFloatField;
    GroupBox1: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit7: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    qryC15sIdEquipo: TStringField;
    qryC15dCantidad: TFloatField;
    qryC15sDescripcion: TStringField;
    qryC15dCantidadSolicitada: TFloatField;
    dsPers13: TfrxDBDataset;
    qryPers13: TZReadOnlyQuery;
    mBitacoraActividades: TRxMemoryData;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    MemoField3: TMemoField;
    FloatField5: TFloatField;
    dsmBitacoraActividades: TfrxDBDataset;
    mBitacoraActividadessTipo: TStringField;
    mBitacoraActividadessHoraInicio: TStringField;
    mBitacoraActividadessHoraFinal: TStringField;
    mBitacoraActividadesdAvanceAnterior: TFloatField;
    mBitacoraActividadesdAvanceActual: TFloatField;
    QryC14tesContrato: TStringField;
    QryC14tesIdPersonal: TStringField;
    QryC14tesDescripcion: TStringField;
    QryC14temMotivos: TMemoField;
    QryC14tesNumeroFicha: TStringField;
    QryC14tesNombre: TStringField;
    QryC14tesPuesto: TStringField;
    QryC14tedTiempoExtra: TFloatField;
    QryC14tesHoraInicio: TStringField;
    QryC14tesHoraFinal: TStringField;
    QryMovimientosEmbTipo1sTipoObra: TStringField;
    QryMovimientosEmbTipo1sContrato: TStringField;
    QryMovimientosEmbTipo1sIdEquipo: TStringField;
    QryMovimientosEmbTipo1sDescripcion: TStringField;
    QryMovimientosEmbTipo1dCantidad: TFloatField;
    QryMovimientosEmbTipo1sNumeroOrden: TStringField;
    QryMovimientosEmbTipo1dIdFecha: TDateField;
    QryMovimientosEmbTipo1dInstalado: TFloatField;
    qryDisposicionesReporte: TZReadOnlyQuery;
    qryDisposicionesReportesTipoEmbarcacion: TStringField;
    qryDisposicionesReportesHoraInicio: TStringField;
    qryDisposicionesReportesHoraFinal: TStringField;
    qryDisposicionesReportemDescripcion: TMemoField;
    qryDisposicionesReportesDescripcion: TStringField;
    qryDisposicionesReportenomlancha: TStringField;
    qryClimaReporte: TZReadOnlyQuery;
    qryClimaReportemaximo: TFloatField;
    qryClimaReportesDescripcionTiempo: TStringField;
    qryClimaReporteDireccion: TStringField;
    qryClimaReportesMedida: TStringField;
    qryArribos: TZReadOnlyQuery;
    qryActividadesAnexos: TZReadOnlyQuery;
    qryRecursosReporte: TZReadOnlyQuery;
    dsActividadesAnexos: TfrxDBDataset;
    dsDisposicionesReporte: TfrxDBDataset;
    dsRecursosReporte: TfrxDBDataset;
    dsClimaReporte: TfrxDBDataset;
    dsArribosReporte: TfrxDBDataset;
    Tripulacion: TZQuery;
    qryMovimientosReporte: TZReadOnlyQuery;
    qryMovimientosReportesContrato: TStringField;
    qryMovimientosReportesNumeroOrden: TStringField;
    qryMovimientosReportedProrrateoOrden: TFloatField;
    qryMovimientosReportesNumeroActividad: TStringField;
    qryMovimientosReportemDescripcion: TMemoField;
    qryMovimientosReportesHoraInicio: TStringField;
    qryMovimientosReportesHoraFinal: TStringField;
    qryMovimientosReportedIdFecha: TDateField;
    qryMovimientosReportesFactor: TStringField;
    qryNotasGenerales: TZReadOnlyQuery;
    dsNotasGenerales: TfrxDBDataset;
    dsTripulacion: TfrxDBDataset;
    detProrrateos: TfrxDBDataset;
    dstotalesporcategorias: TfrxDBDataset;
    totalestripulacion: TZReadOnlyQuery;
    totales: TZReadOnlyQuery;
    dsTotales: TfrxDBDataset;
    QryMovimientosEmbTipo1sTitulo: TMemoField;
    QryMovimientosEmbTipo1sCodigo: TStringField;
    qryPernoctas: TZReadOnlyQuery;
    qryMovimientosReportesTipo: TStringField;
    qryPernoctassContrato: TStringField;
    qryPernoctasdIdFecha: TDateField;
    qryPernoctassNumeroOrden: TStringField;
    qryPernoctassIdCuenta: TStringField;
    qryPernoctasdCantidad: TFloatField;
    qryPernoctassDescripcion: TStringField;
    qryPernoctassTitulo: TMemoField;
    dsConsolidadoEq: TfrxDBDataset;
    RxSolicitado: TRxMemoryData;
    dsSolicitado: TfrxDBDataset;
    RxSolicitadosContrato: TStringField;
    RxSolicitadosmedida: TStringField;
    RxSolicitadoNomPlataforma1: TStringField;
    RxSolicitadoPlataforma1: TIntegerField;
    RxSolicitadoNomPlataforma2: TStringField;
    RxSolicitadoPlataforma2: TIntegerField;
    RxSolicitadoNomPlataforma3: TStringField;
    RxSolicitadoPlataforma3: TIntegerField;
    RxSolicitadoNomPlataforma4: TStringField;
    RxSolicitadoPlataforma4: TIntegerField;
    RxSolicitadoNomPlataforma5: TStringField;
    RxSolicitadoPlataforma5: TIntegerField;
    RxSolicitadoNomPlataforma6: TStringField;
    RxSolicitadoPlataforma6: TIntegerField;
    RxSolicitadoNomPlataforma7: TStringField;
    RxSolicitadoPlataforma7: TIntegerField;
    RxSolicitadoiSolicitado: TIntegerField;
    RxSolicitadosTipo: TStringField;
    dsTitulos: TfrxDBDataset;
    rxTitulos: TRxMemoryData;
    rxTitulossPartida: TStringField;
    rxTitulossDescripcion: TStringField;
    dsGenerador: TfrxDBDataset;
    generadores: TZReadOnlyQuery;
    RxSolicitadosPartida: TIntegerField;
    mBitacora1dVentaMN: TFloatField;
    embarcacion: TZReadOnlyQuery;
    dsEmbarcacion: TfrxDBDataset;
    embarcacionsDescripcion: TStringField;
    detProrrateos2: TfrxDBDataset;
    dsResumenRecursos: TfrxDBDataset;
    dsRecursosEmbarcacion: TfrxDBDataset;
    dsmBitacoraMix: TfrxDBDataset;
    mNotas: TRxMemoryData;
    mNotassContrato: TStringField;
    mNotasiOrden: TIntegerField;
    mNotasiItemOrden: TStringField;
    mNotassIdComentario: TStringField;
    mNotasmDescripcion: TMemoField;
    dsmNotas: TfrxDBDataset;
    dsAvancesAcum: TfrxDBDataset;
    AvancesAcum: TRxMemoryData;
    AvancesAcumdAvanceGeneralAnterior: TFloatField;
    AvancesAcumdAvanceGeneralDiario: TFloatField;
    AvancesAcumdAvanceAnterior: TFloatField;
    AvancesAcumdAvanceDiario: TFloatField;
    AvancesAcumdAvanceProgGeneralAnterior: TFloatField;
    AvancesAcumdAvanceProgGeneralDiario: TFloatField;
    AvancesAcumdAvanceProgAnterior: TFloatField;
    AvancesAcumdAvanceProgDiario: TFloatField;
    dsPersonalPU: TfrxDBDataset;
    dsEquiposPU: TfrxDBDataset;
    dsAdmon: TfrxDBDataset;
    dsPernoctas: TfrxDBDataset;
    dsPeriodo: TfrxDBDataset;
    mBitacora1iIdDiario: TIntegerField;
    mBitacora1iConsec: TIntegerField;
    mBitacora1lCancelada: TStringField;
    generadoressNumeroActividad: TStringField;
    generadoressWbsAnterior: TStringField;
    generadoressMedida: TStringField;
    generadoresdCantidadAnexo: TFloatField;
    generadoresmDescripcion: TMemoField;
    generadoresnPiezas: TIntegerField;
    generadoressMarcaRev: TStringField;
    generadoressSubMca: TStringField;
    generadoressLongArea: TStringField;
    generadoressLongAreaTotal: TStringField;
    generadoressPesoxUnidad: TStringField;
    generadoresdPesoTotal: TFloatField;
    generadoressContrato: TStringField;
    generadoressNumeroOrden: TStringField;
    generadoressNumeroGenerador: TStringField;
    generadoresiConsecutivo: TIntegerField;
    generadoressFaseObra: TStringField;
    generadoresdFechaInicio: TDateField;
    generadoresdFechaFinal: TDateField;
    generadoresmComentarios: TMemoField;
    generadoresiSemana: TIntegerField;
    generadoressIdUsuarioValida: TStringField;
    generadoressIdUsuarioAutoriza: TStringField;
    generadoressIsometricoReferencia: TStringField;
    generadoressIsometrico: TStringField;
    generadoressPrefijo: TStringField;
    generadoresdCantidad: TFloatField;
    generadoresiNumeroEstimacion: TStringField;
    generadoressMoneda: TStringField;
    generadoresdFechaInicioEst: TDateField;
    generadoresdFechaFinalEst: TDateField;
    dsArribosReporteVuelo: TfrxDBDataset;
    qryArribosVuelo: TZReadOnlyQuery;
    dsTiempoExtra: TfrxDBDataset;
    qryTiempoExtra: TZReadOnlyQuery;
    QryConfiguracioniFirmas: TStringField;
    QryConfiguracionsOrdenPerEq: TStringField;
    QryConfiguracionsTipoPartida: TStringField;
    QryConfiguracionsImprimePEP: TStringField;
    QryConfiguracionsClaveSeguridad: TStringField;
    QryConfiguracioncStatusProceso: TStringField;
    QryConfiguracionsOrdenExtraordinaria: TStringField;
    QryConfiguracionlLicencia: TStringField;
    QryConfiguracionbImagen: TBlobField;
    QryConfiguracionsContrato: TStringField;
    QryConfiguracionsNombre: TStringField;
    QryConfiguracionsPiePagina: TStringField;
    QryConfiguracionsEmail: TStringField;
    QryConfiguracionsWeb: TStringField;
    QryConfiguracionsSlogan: TStringField;
    QryConfiguracionsFirmasElectronicas: TStringField;
    QryConfiguracionlImprimeExtraordinario: TStringField;
    QryConfiguracionsCodigo: TStringField;
    QryConfiguracionmDescripcion: TMemoField;
    QryConfiguracionsTitulo: TMemoField;
    QryConfiguracionmCliente: TMemoField;
    QryConfiguracionbImagenPEP: TBlobField;
    QryConfiguracionsMostrarAvances: TStringField;
    QryConfiguracioniFirmasGeneradores: TStringField;
    ResumenPersonal: TZQuery;
    ResumenPersonalsContrato: TStringField;
    ResumenPersonalsPernocta: TStringField;
    ResumenPersonalsPersonal: TStringField;
    ResumenPersonaldCantidad: TFloatField;
    ResumenPersonalsIdPersonal: TStringField;
    ResumenEquipos: TZQuery;
    ResumenEquipossIdEquipo: TStringField;
    ResumenEquipossContrato: TStringField;
    ResumenEquipossPernocta: TStringField;
    ResumenEquipossEquipo: TStringField;
    ResumenEquiposdCantidad: TFloatField;
    generadoressIdFolio: TStringField;
    generadoressDescripcionCorta: TStringField;
    generadoresdConstante: TFloatField;
    dsTripulacionFlotel: TfrxDBDataset;
    dsOcupacionBarco: TfrxDBDataset;
    dsTotalesOperativos: TfrxDBDataset;
    dsTiempoMuertoPersonal: TfrxDBDataset;
    dsTripulacionFlotelAdmon: TfrxDBDataset;
    dsPernoctaBarco: TfrxDBDataset;
    PersonalxPartida: TfrxDBDataset;
    dsMaterialxPartida: TfrxDBDataset;
    dsLista_personal: TfrxDBDataset;
    frPrinter: TfrxDBDataset;
    frtmpQuery: TfrxDBDataset;
    fr_Grafica: TfrxDBDataset;
    qrGrafica: TZQuery;
    qrGraficasIdEgreso: TStringField;
    qrGraficasTipoEgreso: TStringField;
    qrGraficasDescripcion: TStringField;
    qrGraficamDescripcion: TMemoField;
    qrGraficadImporte: TFloatField;
    qrGraficadIdFecha: TDateField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure tsNumeroReporteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicio2KeyPress(Sender: TObject; var Key: Char);
    procedure tsTiempoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTransporteKeyPress(Sender: TObject; var Key: Char);
    procedure tsInicioPlaticaKeyPress(Sender: TObject; var Key: Char);
    procedure tsFinalPlaticaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinal2Exit(Sender: TObject);
    procedure tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTiempoMuertoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsTemaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicio2Exit(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroReporteEnter(Sender: TObject);
    procedure tsNumeroReporteExit(Sender: TObject);
    procedure tsHoraInicio2Enter(Sender: TObject);
    procedure tsHoraFinal2Enter(Sender: TObject);
    procedure tsTiempoEfectivoEnter(Sender: TObject);
    procedure tsTiempoEfectivoExit(Sender: TObject);
    procedure tsTiempoMuertoEnter(Sender: TObject);
    procedure tsTiempoMuertoExit(Sender: TObject);
    procedure tsTiempoEnter(Sender: TObject);
    procedure tsTiempoExit(Sender: TObject);
    procedure tsTransporteEnter(Sender: TObject);
    procedure tsTransporteExit(Sender: TObject);
    procedure tsInicioPlaticaEnter(Sender: TObject);
    procedure tsInicioPlaticaExit(Sender: TObject);
    procedure tsFinalPlaticaEnter(Sender: TObject);
    procedure tsFinalPlaticaExit(Sender: TObject);
    procedure tsTemaEnter(Sender: TObject);
    procedure tsTemaExit(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Grid_ReportesEnter(Sender: TObject);
    procedure Imprimir2Click(Sender: TObject);
    procedure rDiarioGeneralGetValue(const VarName: String;
      var Value: Variant);
    procedure ReporteDiarioAfterScroll(DataSet: TDataSet);
    procedure dsBitacora1First(Sender: TObject);
    procedure dsBitacora1Next(Sender: TObject);
    procedure dsmBitacora1First(Sender: TObject);
    procedure dsmBitacora1Next(Sender: TObject);
    procedure ImprimirExcel1Click(Sender: TObject);
    procedure tsIdTurnoEnter(Sender: TObject);
    procedure tsIdTurnoExit(Sender: TObject);
    procedure tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure Actualiza ;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiarioTurno2: TfrmDiarioTurno2;
  sSuperintendente, sSupervisor : String ;
  sPuestoSuperintendente, sPuestoSupervisor : String ;
  sSupervisorTierra, sPuestoSupervisorTierra : String ;
  sReporte : String ;
  iReporte : Integer ;
  iMuerto : Real ;
  dMuerto : Real ;
  sMuerto, sHoras, sMinutos : String ;
  lNuevoDia : Boolean ;
  dAvanceAnterior, dCantidadAnterior : Double ;

  implementation

{$R *.dfm}


procedure TfrmDiarioTurno2.FormShow(Sender: TObject);
begin
{  Turnos.Active := False ;
  Turnos.Parameters.ParamByName('contrato').DataType := ftString ;
  Turnos.Parameters.ParamByName('contrato').Value := global_contrato ;
  Turnos.Open ;

  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Parameters.ParamByName('Contrato').Value := Global_Contrato ;
  OrdenesdeTrabajo.Parameters.ParamByName('Contrato').DataType := ftString ;
  ordenesdetrabajo.Parameters.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Parameters.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;
  Bitacora.Active := False ;
  Permisos.Active := False ;

  If OrdenesdeTrabajo.RecordCount > 0 Then
  Begin
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      ReporteDiario.Active := False ;
      ReporteDiario.Parameters.ParamByName('contrato').DataType := ftString ;
      ReporteDiario.Parameters.ParamByName('contrato').Value := global_contrato ;
      ReporteDiario.Parameters.ParamByName('orden').DataType := ftString ;
      ReporteDiario.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
      ReporteDiario.Open ;
      ReporteDiario.Last ;
      Grid_Reportes.SetFocus
  End
  Else
      tsNumeroOrden.SetFocus   }
End;

procedure TfrmDiarioTurno2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;



procedure TfrmDiarioTurno2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        Grid_Reportes.SetFocus
end;


procedure TfrmDiarioTurno2.tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
       tsTiempo.SetFocus
end;


procedure TfrmDiarioTurno2.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsIdturno.SetFocus 
end;

procedure TfrmDiarioTurno2.btnAddClick(Sender: TObject);
begin
  tdIdFecha.SetFocus ;
end;

procedure TfrmDiarioTurno2.tsNumeroReporteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsHoraInicio2.SetFocus
end;

procedure TfrmDiarioTurno2.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tdIdFecha.SetFocus
end;

procedure TfrmDiarioTurno2.tsHoraInicio2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsHoraFinal2.SetFocus
end;

procedure TfrmDiarioTurno2.tsTiempoKeyPress(Sender: TObject; var Key: Char);
Begin
    If Key = #13 then
      tsTransporte.SetFocus
end;

procedure TfrmDiarioTurno2.tsTransporteKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioTurno2.tsInicioPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsFinalPlatica.SetFocus
end;

procedure TfrmDiarioTurno2.tsFinalPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTema.SetFocus
end;

procedure TfrmDiarioTurno2.tsHoraFinal2Exit(Sender: TObject);
begin
    If OpcButton <> '' Then
    Begin
        tsTiempoEfectivo.Text := sfnRestaHoras ( tsHoraFinal2.Text , tsHoraInicio2.Text ) ;
        tsTiempoEfectivo.Text := sfnRestaHoras ( tsTiempoEfectivo.Text , tsTiempoMuerto.Text ) ;
    End ;
    tsHoraFinal2.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno2.tsTiempoMuertoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsTiempo.SetFocus
end;


procedure TfrmDiarioTurno2.tsNumeroOrdenExit(Sender: TObject);
begin
 { ReporteDiario.Active := False ;
  ReporteDiario.Parameters.ParamByName('contrato').DataType := ftString ;
  ReporteDiario.Parameters.ParamByName('contrato').Value := global_contrato ;
  ReporteDiario.Parameters.ParamByName('orden').DataType := ftString ;
  ReporteDiario.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
  ReporteDiario.Open ;        }
  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.frmBarra1btnEditClick(Sender: TObject);
begin
 {  If ReporteDiario.RecordCount > 0 then
      If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
          frmBarra1.btnEditClick(Sender);
          Insertar1.Enabled := False ;
          Editar1.Enabled := False ;
          Registrar1.Enabled := True ;
          Can1.Enabled := True ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled := False ;
          Salir1.Enabled := False ;

          PgDiario.ActivePageIndex := 0 ;          
          tdIdFecha.Enabled := True ;
          tsHoraInicio2.ReadOnly := False ;
          tsHoraFinal2.ReadOnly := False ;
          tsTiempoEfectivo.ReadOnly := False ;
          tsTiempoMuerto.ReadOnly := False ;
          tsTiempo.ReadOnly := False ;
          tsTransporte.ReadOnly := False ;
          tsInicioPlatica.ReadOnly := False ;
          tsFinalPlatica.ReadOnly := False ;
          tsTema.ReadOnly := False ;

          lNuevoDia := True ;
          TiempoMuerto.Active := False ;
          TiempoMuerto.Parameters.ParamByName('Contrato').DataType := ftString ;
          TiempoMuerto.Parameters.ParamByName('Contrato').Value := global_contrato ;
          TiempoMuerto.Parameters.ParamByName('Fecha').DataType := ftDate ;
          TiempoMuerto.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          TiempoMuerto.Parameters.ParamByName('Orden').DataType := ftString ;
          TiempoMuerto.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          TiempoMuerto.Parameters.ParamByName('Inicio').DataType := ftString ;
          TiempoMuerto.Parameters.ParamByName('Inicio').Value := ReporteDiario.FieldValues['sOperacionInicio'] ;
          TiempoMuerto.Parameters.ParamByName('Final').DataType := ftString ;
          TiempoMuerto.Parameters.ParamByName('Final').Value := ReporteDiario.FieldValues['sOperacionFinal'] ;
          TiempoMuerto.Open ;
          If TiempoMuerto.RecordCount > 0 Then
          Begin
               TiempoMuerto.First ;
               iMuerto := 0 ;
               dMuerto := 0 ;
               While Not TiempoMuerto.Eof Do
               Begin
                   iMuerto := iMuerto + rfnDecimal ( MidStr(TiempoMuerto.FieldValues['sTiempoMuerto'] , 1, 2) ) ;
                   dMuerto := dMuerto + rfnDecimal ( MidStr(TiempoMuerto.FieldValues['sTiempoMuerto'] , 4, 2) ) ;
                   TiempoMuerto.Next
               End ;
               iMuerto := iMuerto + Int ( dMuerto / 60 ) ;
               dMuerto := dMuerto - ( Int( dMuerto / 60 ) * 60 ) ;
               Str ( iMuerto:2:0 , sHoras ) ;
               sHoras := Trim (sHoras) ;
               If iMuerto >=10 then
                  sHoras := sHoras + ':'
               Else
                  sHoras := '0' + sHoras + ':' ;

               Str ( dMuerto:2:0 , sMinutos ) ;
               sMinutos := Trim (sMinutos) ;
               If dMuerto >=10 then
                  sMuerto := sHoras + sMinutos
               Else
                  sMuerto := sHoras + '0' + sMinutos ;

               tsTiempoEfectivo.Text := sfnRestaHoras ( tsHoraFinal2.Text , tsHoraInicio2.Text ) ;
               tsTiempoMuerto.Text := sMuerto ;
               tsTiempoEfectivo.Text := sfnRestaHoras ( tsTiempoEfectivo.Text , tsTiempoMuerto.Text ) ;
          End ;
          tdIdFecha.SetFocus
       End
       Else
          MessageDlg('El Reporte ha sido aplicado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
    }
end;

procedure TfrmDiarioTurno2.frmBarra1btnDeleteClick(Sender: TObject);
begin    {
    If ReporteDiario.RecordCount > 0 then
      If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
         If MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              With connection do
              Begin
                 try
                     command.CommandText := 'Delete from ReporteDiario where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
                                            'dIdFecha = :Fecha And sIdTurno = :Turno' ;
                     command.Parameters.ParamByName('Contrato').DataType := ftString ;
                     command.Parameters.ParamByName('Contrato').value := Global_Contrato ;
                     command.Parameters.ParamByName('Orden').DataType := ftString ;
                     command.Parameters.ParamByName('Orden').value := ReporteDiario.FieldValues ['sNumeroOrden'] ;
                     command.Parameters.ParamByName('Fecha').DataType := ftDate ;
                     command.Parameters.ParamByName('Fecha').value := ReporteDiario.FieldValues ['dIdFecha'];
                     command.Parameters.ParamByName('Turno').DataType := ftString ;
                     command.Parameters.ParamByName('Turno').value := ReporteDiario.FieldValues ['sIdTurno'];
                     command.Execute() ;
                     ReporteDiario.Requery ;
                     Grid_Reportes.SetFocus
                 Except
                     MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
                 End
              End
      end
      Else
           MessageDlg('El Reporte ha sido aplicado por lo tanto no puede eliminarse.', mtInformation, [mbOk], 0);
  }
end;

procedure TfrmDiarioTurno2.frmBarra1btnAddClick(Sender: TObject);
Var
    sReporte : String ;
    txtAux   : String ;
    iReporte : Real ;
    Caracteres : Byte ;
begin  {
  If tsNumeroOrden.Text <> '' Then
  Begin
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;

      PgDiario.ActivePageIndex := 0 ;
      tdIdFecha.Enabled := True ;
      tsHoraInicio2.ReadOnly := False ;
      tsHoraFinal2.ReadOnly := False ;
      tsTiempoEfectivo.ReadOnly := False ;
      tsTiempoMuerto.ReadOnly := False ;
      tsTiempo.ReadOnly := False ;
      tsTransporte.ReadOnly := False ;
      tsInicioPlatica.ReadOnly := False ;
      tsFinalPlatica.ReadOnly := False ;
      tsTema.ReadOnly := False ;

      If ReporteDiario.RecordCount > 0 Then
      Begin
          ReporteDiario.Last ;
          tdIdFecha.Date := ReporteDiario.FieldValues['dIdFecha'] + 1
      End
      Else
          tdIdFecha.Date := Date ;

      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('Select * From Turnos Where sContrato = :contrato And sIdTurno = :Turno') ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := global_turno ;
      Connection.BuscaReadOnly.Open ;
      If Connection.BuscaReadOnly.RecordCount > 0 Then
      Begin
          tsHoraInicio2.Text := connection.BuscaReadOnly.FieldValues['sHoraInicio']  ;
          tsHoraFinal2.Text := connection.BuscaReadOnly.FieldValues['sHoraFinal']  ;
      End
      Else
      Begin
          tsHoraInicio2.Text := '00:00' ;
          tsHoraFinal2.Text := '00:00' ;
      End ;
      tsTiempoEfectivo.Text := '00:00' ;
      tsTiempoMuerto.Text := '00:00' ;
      tsTiempo.Text := '' ;
      tsTransporte.Text := '' ;
      tsInicioPlatica.Text := '00:00' ;
      tsFinalPlatica.Text := '00:00' ;
      tsTema.Text := '' ;
      tdPonderadoAnterior.Value := 0 ;
      tdGlobalAnterior.Value := 0 ;
      tdPonderadoDia.Value := 0 ; ;
      tdPonderadoGlobal.Value := 0 ;
      tdDiarioTurno.Value := 0 ;
      tdGlobalTurno.Value := 0 ;
      tdFisicoDiario.Value := 0 ;
      tdGlobalDiario.Value := 0 ;
      tsNumeroReporte.Text := 'Pend. Asignar' ;
      tsIdTurno.KeyValue := global_turno ;
      lNuevoDia := True ;
      tdIdFecha.SetFocus ;

      Permisos.Active := False ;
      Permisos.Parameters.ParamByName('Contrato').DataType := ftString ;
      Permisos.Parameters.ParamByName('contrato').Value  := global_contrato ;
      Permisos.Parameters.ParamByName('fecha').DataType := ftDate ;
      Permisos.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
      Permisos.Parameters.ParamByName('Orden').DataType := ftString ;
      Permisos.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      Permisos.Parameters.ParamByName('turno').DataType := ftString ;
      Permisos.Parameters.ParamByName('turno').Value := tsIdTurno.KeyValue ;
      Permisos.Open ;

      //  Actualizo la Bitacora
      Bitacora.Active := False ;
      Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
      Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
      Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
      Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date  ;
      Bitacora.Parameters.ParamByName('Orden').DataType := ftString ;
      Bitacora.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      Bitacora.Parameters.ParamByName('Turno').DataType := ftString ;
      Bitacora.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
      Bitacora.Open ;

      If Bitacora.RecordCount > 0 then
      Begin
            // busco el avance global anterior
            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select Sum(dAvancePonderadoDia) as dAvanceGlobal from AvancesGlobales where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And dIdFecha < :fecha and sNumeroOrden = :Orden Group By sContrato, sNumeroOrden' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
                tdPonderadoAnterior.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select * from AvancesGlobales where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = :Orden' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
            begin
                tdPonderadoDia.Value := connection.BuscaReadOnly.FieldValues ['dAvancePonderadoDia'] ;
                tdPonderadoGlobal.Value := connection.BuscaReadOnly.FieldValues ['dAvancePonderadoGlobal'] ;
            end ;

            // busco el avance global anterior
            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha < :fecha Group By sContrato' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
                tdGlobalAnterior.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno < :Turno Group By sContrato' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
                tdGlobalAnterior.Value := tdGlobalAnterior.Value + Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And dIdFecha = :fecha And sIdTurno = :Turno and sNumeroOrden = :Orden Group By sContrato, dIdFecha' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
                tdDiarioTurno.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

            tdGlobalTurno.Value := tdGlobalAnterior.Value + tdDiarioTurno.Value ;

            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And dIdFecha = :fecha Group By sContrato, dIdFecha' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
                tdFisicoDiario.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

            connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                             'sIdConvenio = :Convenio And dIdFecha <= :fecha Group By sContrato' ) ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
            connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
            connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 then
                tdGlobalDiario.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;
      End ;
      frmBarra1.btnAddClick(Sender);
  End ; }
end;

procedure TfrmDiarioTurno2.frmBarra1btnPrinterClick(Sender: TObject);
Begin
  If Connection.configuracion.FieldValues['sTipoReporte'] = 'Programa' Then
      Imprimir1.Click
  Else
      Imprimir2.Click ;

end;

procedure TfrmDiarioTurno2.frmBarra1btnRefreshClick(Sender: TObject);
begin
   { connection.configuracion.Requery ;
    Bitacora.Requery ;
    Permisos.Requery;
    OrdenesdeTrabajo.Requery ;
    Turnos.Requery ;
    Platicas.Requery ;  }
end;

procedure TfrmDiarioTurno2.frmBarra1btnExitClick(Sender: TObject);
begin
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close ;
end;

procedure TfrmDiarioTurno2.tdIdFechaExit(Sender: TObject);
begin
   { If OpcButton <> '' Then
    Begin
        If OpcButton = 'New' Then
        Begin
            lNuevoDia := True ;
            Connection.BuscaReadOnly.Active := False ;
            Connection.BuscaReadOnly.SQL.Clear ;
            Connection.BuscaReadOnly.SQL.Add('Select * from ReporteDiario Where sContrato = :contrato And sNumeroOrden = :Orden And ' +
                                             'dIdFecha = :fecha And sIdTurno = :Turno') ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').value := global_contrato ;
            Connection.BuscaReadOnly.Parameters.ParamByName('orden').DataType := ftString ;
            Connection.BuscaReadOnly.Parameters.ParamByName('orden').value := tsNumeroOrden.Text ;
            Connection.BuscaReadOnly.Parameters.ParamByName('fecha').DataType := ftDate ;
            Connection.BuscaReadOnly.Parameters.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Turno').value := tsIdTurno.KeyValue ;
            Connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 Then
                lNuevoDia := False
        End ;

        Permisos.Active := False ;
        Permisos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Permisos.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Permisos.Parameters.ParamByName('fecha').DataType := ftDate ;
        Permisos.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Permisos.Parameters.ParamByName('Orden').DataType := ftString ;
        Permisos.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Permisos.Parameters.ParamByName('turno').DataType := ftString ;
        Permisos.Parameters.ParamByName('turno').Value := tsIdTurno.KeyValue ;
        Permisos.Open ;

        Platicas.Active := False ;
        Platicas.Parameters.ParamByName('Contrato').DataType := ftString ;
        Platicas.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Platicas.Parameters.ParamByName('fecha').DataType := ftDate ;
        Platicas.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Platicas.Parameters.ParamByName('Orden').DataType := ftString ;
        Platicas.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Platicas.Open ;
        If Platicas.RecordCount > 0 Then
            tsTema.Text := Platicas.FieldValues['sTema'] ;

        //  Actualizo la Bitacora
        Bitacora.Active := False ;
        Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
        Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
        Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
        Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date  ;
        Bitacora.Parameters.ParamByName('Orden').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Bitacora.Parameters.ParamByName('Turno').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
        Bitacora.Open ;

        TiempoMuerto.Active := False ;
        TiempoMuerto.Parameters.ParamByName('Contrato').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Contrato').Value := global_contrato ;
        TiempoMuerto.Parameters.ParamByName('Fecha').DataType := ftDate ;
        TiempoMuerto.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
        TiempoMuerto.Parameters.ParamByName('Orden').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        TiempoMuerto.Parameters.ParamByName('Inicio').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Inicio').Value := Turnos.FieldValues['sHoraInicio'] ;
        TiempoMuerto.Parameters.ParamByName('Final').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Final').Value := Turnos.FieldValues['sHoraFinal'] ;
        TiempoMuerto.Open ;
        If TiempoMuerto.RecordCount > 0 Then
        Begin
             TiempoMuerto.First ;
             iMuerto := 0 ;
             dMuerto := 0 ;
             While Not TiempoMuerto.Eof Do
             Begin
                 iMuerto := iMuerto + rfnDecimal ( MidStr(TiempoMuerto.FieldValues['sTiempoMuerto'] , 1, 2) ) ;
                 dMuerto := dMuerto + rfnDecimal ( MidStr(TiempoMuerto.FieldValues['sTiempoMuerto'] , 4, 2) ) ;
                 TiempoMuerto.Next
             End ;
             iMuerto := iMuerto + Int ( dMuerto / 60 ) ;
             dMuerto := dMuerto - ( Int( dMuerto / 60 ) * 60 ) ;
             Str ( iMuerto:2:0 , sHoras ) ;
             sHoras := Trim (sHoras) ;
             If iMuerto >=10 then
                sHoras := sHoras + ':'
             Else
                sHoras := '0' + sHoras + ':' ;

             Str ( dMuerto:2:0 , sMinutos ) ;
             sMinutos := Trim (sMinutos) ;
             If dMuerto >=10 then
                sMuerto := sHoras + sMinutos
             Else
                sMuerto := sHoras + '0' + sMinutos ;

             tsTiempoEfectivo.Text := sfnRestaHoras ( tsHoraFinal2.Text , tsHoraInicio2.Text ) ;
             tsTiempoMuerto.Text := sMuerto ;
             tsTiempoEfectivo.Text := sfnRestaHoras ( tsTiempoEfectivo.Text , tsTiempoMuerto.Text ) ;
        End ;

    End ;
    tdIdFecha.Color := global_color_salida}
end;

procedure TfrmDiarioTurno2.tsTemaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsHoraInicio2.SetFocus
end;

procedure TfrmDiarioTurno2.tsHoraInicio2Exit(Sender: TObject);
begin
    If OpcButton <> '' Then
    Begin
        tsFinalPlatica.Text := tsHoraInicio2.Text ;
        tsTiempoEfectivo.Text := sfnRestaHoras ( tsHoraFinal2.Text , tsHoraInicio2.Text ) ;
        tsTiempoEfectivo.Text := sfnRestaHoras ( tsTiempoEfectivo.Text , tsTiempoMuerto.Text ) ;
    End ;

    tsHoraInicio2.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada ;
    Bitacora.Active := False ;
    Permisos.Active := False ;
end;

procedure TfrmDiarioTurno2.tsNumeroReporteEnter(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_entrada ;
end;

procedure TfrmDiarioTurno2.tsNumeroReporteExit(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsHoraInicio2Enter(Sender: TObject);
begin
    tsHoraInicio2.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsHoraFinal2Enter(Sender: TObject);
begin
    tsHoraFinal2.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsTiempoEfectivoEnter(Sender: TObject);
begin
    tsTiempoEfectivo.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsTiempoEfectivoExit(Sender: TObject);
begin
    tsTiempoEfectivo.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsTiempoMuertoEnter(Sender: TObject);
begin
    tsTiempoMuerto.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsTiempoMuertoExit(Sender: TObject);
begin
    If OpcButton <> '' Then
        tsTiempoEfectivo.Text := sfnRestaHoras ( tsTiempoEfectivo.Text , tsTiempoMuerto.Text ) ;

    tsTiempoMuerto.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsTiempoEnter(Sender: TObject);
begin
    tsTiempo.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsTiempoExit(Sender: TObject);
begin
    tsTiempo.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsTransporteEnter(Sender: TObject);
begin
    tsTransporte.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsTransporteExit(Sender: TObject);
begin
    tsTransporte.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsInicioPlaticaEnter(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsInicioPlaticaExit(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsFinalPlaticaEnter(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsFinalPlaticaExit(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.tsTemaEnter(Sender: TObject);
begin
    tsTema.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsTemaExit(Sender: TObject);
begin
    tsTema.Color := global_color_salida
end;

procedure TfrmDiarioTurno2.frmBarra1btnPostClick(Sender: TObject);
Var
    sReporte : String ;
    txtAux   : String ;
    iReporte : Real ;
    Caracteres : Byte ;
    Posicion : Integer ;
begin
  {If lNuevoDia Then
  Begin
      If OpcButton = 'New' then
      Begin
         If OrdenesdeTrabajo.FieldValues['sIdTipoOrden'] <> connection.configuracion.FieldValues['sOrdenExtraOrdinaria'] Then
         Begin
             Connection.buscar.Active := False ;
             Connection.buscar.SQL.Clear ;
             Connection.buscar.SQL.Add('Select * from configuracion where sContrato = :contrato') ;
             Connection.buscar.Parameters.ParamByName('contrato').DataType := ftString ;
             Connection.buscar.Parameters.ParamByName('contrato').Value := global_contrato ;
             Connection.buscar.Open ;
             iReporte := Connection.buscar.FieldValues['iConsecutivo'] ;
             sReporte := Trim ( Connection.buscar.FieldValues ['sFormato'] ) ;
             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                  txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;
             tsNumeroReporte.Text := sReporte ;
             Connection.buscar.Edit ;
             Connection.buscar.FieldValues['iConsecutivo'] := Connection.buscar.FieldValues['iConsecutivo'] + 1 ;
             Connection.buscar.Post ;
         End
         Else
             If OrdenesdeTrabajo.FieldValues['sIdTipoOrden'] = connection.configuracion.FieldValues['sOrdenExtraOrdinaria'] Then
             Begin
                 Connection.buscar.Active := False ;
                 Connection.buscar.SQL.Clear ;
                 Connection.buscar.SQL.Add('Select * from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
                 Connection.buscar.Parameters.ParamByName('contrato').DataType := ftString ;
                 Connection.buscar.Parameters.ParamByName('contrato').Value := global_contrato ;
                 Connection.buscar.Parameters.ParamByName('orden').DataType := ftString ;
                 Connection.buscar.Parameters.ParamByName('orden').Value := tsNumeroOrden.Text ;
                 Connection.buscar.Open ;
                 iReporte := Connection.buscar.FieldValues['iConsecutivo'] ;
                 sReporte := Trim ( Connection.buscar.FieldValues ['sFormato'] ) ;
                 Str( iReporte:3:0 , txtAux );
                 txtAux := Trim( txtAux ) ;
                 For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                      txtAux := '0' + txtAux ;
                 sReporte := sReporte + txtAux ;
                 tsNumeroReporte.Text := sReporte ;
                 Connection.buscar.Edit ;
                 Connection.buscar.FieldValues['iConsecutivo'] := Connection.buscar.FieldValues['iConsecutivo'] + 1 ;
                 Connection.buscar.Post ;
             End ;
         With connection do
         Begin
             try
                 command.CommandText := 'INSERT INTO ReporteDiario ( sContrato , dIdFecha, sNumeroOrden, sIdTurno, sNumeroReporte, ' +
                                        'sOperacionInicio, sOperacionFinal, sTiempoEfectivo, sTiempoMuerto, sTiempo, sTransporte, ' +
                                        'sInicioPlatica, sFinalPlatica, sTema, lStatus) ' +
                                        'VALUES (:Contrato, :Fecha, :Orden, :Turno, :Reporte, :HoraI, :HoraF, :Efectivo, :Muerto, ' +
                                        ':Tiempo, :Transporte, :InicioP, :FinalP, :Tema, :Status )';
                 command.Parameters.ParamByName('Contrato').DataType := ftString ;
                 command.Parameters.ParamByName('Contrato').value := Global_Contrato ;
                 command.Parameters.ParamByName('Fecha').DataType := ftDate ;
                 command.Parameters.ParamByName('Fecha').value := tdIdFecha.Date ;
                 command.Parameters.ParamByName('Orden').DataType := ftString ;
                 command.Parameters.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 command.Parameters.ParamByName('Turno').DataType := ftString ;
                 command.Parameters.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 command.Parameters.ParamByName('Reporte').DataType := ftString ;
                 command.Parameters.ParamByName('Reporte').value := tsNumeroReporte.Text ;
                 command.Parameters.ParamByName('HoraI').DataType := ftString ;
                 command.Parameters.ParamByName('HoraI').value := tsHoraInicio2.Text ;
                 command.Parameters.ParamByName('HoraF').DataType := ftString ;
                 command.Parameters.ParamByName('HoraF').value := tsHoraFinal2.Text ;
                 command.Parameters.ParamByName('Efectivo').DataType := ftString ;
                 command.Parameters.ParamByName('Efectivo').value := tsTiempoEfectivo.Text ;
                 command.Parameters.ParamByName('Muerto').DataType := ftString ;
                 command.Parameters.ParamByName('Muerto').value := tsTiempoMuerto.Text ;
                 command.Parameters.ParamByName('Tiempo').DataType := ftString ;
                 command.Parameters.ParamByName('Tiempo').value := tsTiempo.Text ;
                 command.Parameters.ParamByName('Transporte').DataType := ftString ;
                 command.Parameters.ParamByName('Transporte').value := tsTransporte.Text ;
                 command.Parameters.ParamByName('InicioP').DataType := ftString ;
                 command.Parameters.ParamByName('InicioP').value := tsInicioPlatica.Text ;
                 command.Parameters.ParamByName('FinalP').DataType := ftString ;
                 command.Parameters.ParamByName('FinalP').value := tsFinalPlatica.Text ;
                 command.Parameters.ParamByName('Tema').DataType := ftString ;
                 command.Parameters.ParamByName('Tema').value := tsTema.Text ;
                 command.Parameters.ParamByName('Status').DataType := ftString ;
                 command.Parameters.ParamByName('Status').value := 'Pendiente' ;
                 command.Execute ;
                 ReporteDiario.Requery ;
                 ReporteDiario.Last ;
             except
                   MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
             end
         End
      End
      Else
      Begin
         Posicion := ReporteDiario.RecordCount ;
         With connection do
         Begin
            try
                command.CommandText := 'UPDATE ReporteDiario Set dIdFecha = :Fecha, sIdTurno = :Turno, sOperacionInicio = :HoraI, sOperacionFinal = :HoraF, ' +
                                   'sTiempoEfectivo = :Efectivo, sTiempoMuerto = :Muerto, sTiempo = :Tiempo, sTransporte= :Transporte, ' +
                                   'sInicioPlatica = :InicioP, sFinalPlatica = :FinalP, sTema = :Tema Where ' +
                                   'sContrato = :Contrato And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno' ;
                command.Parameters.ParamByName('Turno').DataType := ftString ;
                command.Parameters.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                command.Parameters.ParamByName('Fecha').DataType := ftDate ;
                command.Parameters.ParamByName('Fecha').value := tdIdFecha.Date ;
                command.Parameters.ParamByName('HoraI').DataType := ftString ;
                command.Parameters.ParamByName('HoraI').value := tsHoraInicio2.Text ;
                command.Parameters.ParamByName('HoraF').DataType := ftString ;
                command.Parameters.ParamByName('HoraF').value := tsHoraFinal2.Text ;
                command.Parameters.ParamByName('Efectivo').DataType := ftString ;
                command.Parameters.ParamByName('Efectivo').value := tsTiempoEfectivo.Text ;
                command.Parameters.ParamByName('Muerto').DataType := ftString ;
                command.Parameters.ParamByName('Muerto').value := tsTiempoMuerto.Text ;
                command.Parameters.ParamByName('Tiempo').DataType := ftString ;
                command.Parameters.ParamByName('Tiempo').value := tsTiempo.Text ;
                command.Parameters.ParamByName('Transporte').DataType := ftString ;
                command.Parameters.ParamByName('Transporte').value := tsTransporte.Text ;
                command.Parameters.ParamByName('InicioP').DataType := ftString ;
                command.Parameters.ParamByName('InicioP').value := tsInicioPlatica.Text ;
                command.Parameters.ParamByName('FinalP').DataType := ftString ;
                command.Parameters.ParamByName('FinalP').value := tsFinalPlatica.Text ;
                command.Parameters.ParamByName('Tema').DataType := ftString ;
                command.Parameters.ParamByName('Tema').value := tsTema.Text ;
                command.Parameters.ParamByName('Contrato').DataType := ftString ;
                command.Parameters.ParamByName('Contrato').value := Global_Contrato ;
                command.Parameters.ParamByName('OldFecha').DataType := ftDate ;
                command.Parameters.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                command.Parameters.ParamByName('OldOrden').DataType := ftString ;
                command.Parameters.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                command.Parameters.ParamByName('OldTurno').DataType := ftString ;
                command.Parameters.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                command.Execute ;
                ReporteDiario.Requery ;
                ReporteDiario.RecNo := Posicion ;
            except
                  MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
            End
         End
      End
  End ;
  OpcButton := '' ;
  frmBarra1.btnPostClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Grid_Reportes.SetFocus ;
  }
end;

procedure TfrmDiarioTurno2.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Grid_Reportes.SetFocus
end;

procedure TfrmDiarioTurno2.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click 
end;

procedure TfrmDiarioTurno2.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmDiarioTurno2.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmDiarioTurno2.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmDiarioTurno2.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmDiarioTurno2.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmDiarioTurno2.Imprimir1Click(Sender: TObject);
Const
      Titles : Array [1..5] Of String = ('Hora de Salida','Hora de Llegada','Inicio de Operaciones','Termino de Operaciones','Hora de Regreso' ) ;
Var
      Registro : Integer ;
      sPaquete : String ;
begin
 { If ReporteDiario.RecordCount > 0 then
  Begin
      Actualiza ;
      If mBitacora1.RecordCount > 0 then
          mBitacora1.EmptyTable  ;

      Connection.BuscaReadOnly.Active := False ;
      Connection.BuscaReadOnly.SQL.Clear ;
      Connection.BuscaReadOnly.SQL.Add('Select b.sPaquete, b.sNumeroActividad, b.mDescripcion, sum(b.dCantidad) as dCantidad, sum(dAvance) as dAvance, a2.sMedida, a.dCantidad as dCantidadAnexo From BitacoradeActividades b INNER JOIN ActividadesxOrden a ON ' +
                                       '(b.sContrato = a.sContrato And b.sNumeroOrden = a.sNumeroOrden And b.sPaquete = a.sPaquete And ' +
                                       'b.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio) INNER JOIN ActividadesxAnexo a2 ON ' +
                                       '(a.sContrato = a2.sContrato And a.sIdConvenio = a2.sIdConvenio and a.sNumeroActividad = a2.sNumeroActividad) Where ' +
                                       'b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno Group By b.sPaquete, b.sNumeroActividad Order By a.iItemOrden ') ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Convenio').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Convenio').Value := global_convenio ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate;
      Connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
      Connection.BuscaReadOnly.Open ;
      If Connection.BuscaReadOnly.RecordCount > 0 Then
      Begin
            Connection.BuscaReadOnly.First ;
            sPaquete := '' ;
            While NOT Connection.BuscaReadOnly.Eof Do
            Begin
                If sPaquete <> Connection.BuscaReadOnly.FieldValues['sPaquete'] Then
                Begin
                    sPaquete := Connection.BuscaReadOnly.FieldValues['sPaquete'] ;
                    Connection.BuscaReadOnly2.Active := False ;
                    Connection.BuscaReadOnly2.SQL.Clear ;
                    Connection.BuscaReadOnly2.SQL.Add('Select * From ActividadesxOrden Where sContrato = :Contrato And sNumeroOrden = :Orden And sNumeroActividad = :Actividad And sTipoActividad <> "Actividad"') ;
                    Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
                    Connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_Contrato ;
                    Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').DataType := ftString ;
                    Connection.BuscaReadOnly2.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                    Connection.BuscaReadOnly2.Parameters.ParamByName('Actividad').DataType := ftString ;
                    Connection.BuscaReadOnly2.Parameters.ParamByName('Actividad').Value := sPaquete ;
                    Connection.BuscaReadOnly2.Open ;
                    If Connection.BuscaReadOnly2.RecordCount > 0 Then
                    Begin
                        mBitacora1.Append ;
                        mBitacora1.FieldValues['sContrato'] := ReporteDiario.FieldValues['sContrato'] ;
                        mBitacora1.FieldValues['sPaquete'] := sPaquete ;
                        mBitacora1.FieldValues['sNumeroActividad'] := '' ;
                        mBitacora1.FieldValues['mDescripcion'] := Connection.BuscaReadOnly2.FieldValues['mDescripcion'] ;
                        mBitacora1.FieldValues['sMedida'] := '' ;
                        mBitacora1.FieldValues['dCantidadAnexo'] := 0 ;
                        mBitacora1.FieldValues['dCantidad'] := 0 ;
                        mBitacora1.FieldValues['dAvance'] := 0 ;

                        mBitacora1.Post ;
                    End
                End ;
                mBitacora1.Append ;
                mBitacora1.FieldValues['sContrato'] := ReporteDiario.FieldValues['sContrato'] ;
                mBitacora1.FieldValues['sPaquete'] := Connection.BuscaReadOnly.FieldValues['sPaquete'] ;
                mBitacora1.FieldValues['sNumeroActividad'] := Connection.BuscaReadOnly.FieldValues['sNumeroActividad'] ;
                mBitacora1.FieldValues['mDescripcion'] := Connection.BuscaReadOnly.FieldValues['mDescripcion'] ;
                mBitacora1.FieldValues['sMedida'] := Connection.BuscaReadOnly.FieldValues['sMedida'] ;
                mBitacora1.FieldValues['dCantidadAnexo'] := Connection.BuscaReadOnly.FieldValues['dCantidadAnexo'] ;
                mBitacora1.FieldValues['dCantidad'] := Connection.BuscaReadOnly.FieldValues['dCantidad'] ;
                mBitacora1.FieldValues['dAvance'] := Connection.BuscaReadOnly.FieldValues['dAvance'] ;

                mBitacora1.Post ;
                Connection.BuscaReadOnly.Next
            End
      End ;

      Bitacora3.Active := False ;
      Bitacora3.Parameters.ParamByName('contrato').DataType := ftString ;
      Bitacora3.Parameters.ParamByName('contrato').Value := global_contrato ;
      Bitacora3.Parameters.ParamByName('orden').DataType := ftString ;
      Bitacora3.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
      Bitacora3.Parameters.ParamByName('fecha').DataType := ftDate ;
      Bitacora3.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha']  ;
      Bitacora3.Parameters.ParamByName('Turno').DataType := ftString ;
      Bitacora3.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
      Bitacora3.Open ;

      MovimientosdePersonal.Active := False ;
      MovimientosdePersonal.Parameters.ParamByName('contrato').DataType := ftString ;
      MovimientosdePersonal.Parameters.ParamByName('contrato').Value := global_contrato ;
      MovimientosdePersonal.Parameters.ParamByName('fecha').DataType := ftDate ;
      MovimientosdePersonal.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      MovimientosdePersonal.Parameters.ParamByName('turno').DataType := ftString ;
      MovimientosdePersonal.Parameters.ParamByName('turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
      MovimientosdePersonal.Open ;
      If mMovimientos.RecordCount > 0 then
          mMovimientos.EmptyTable  ;

      If MovimientosdePersonal.RecordCount > 0 Then
      Begin

            MovimientosdePersonal.First ;
            While NOT MovimientosdePersonal.Eof Do
            Begin
                for Registro := 6 to MovimientosdePersonal.FieldCount - 2 do
                Begin
                    mMovimientos.Append ;
                    mMovimientos.FieldValues ['sIdPernocta'] := MovimientosdePersonal.FieldValues['sIdPernocta'] ;
                    mMovimientos.FieldValues ['sIdPlataforma'] := MovimientosdePersonal.FieldValues['sIdPlataforma'] ;
                    mMovimientos.FieldValues ['sIdEmbarcacion'] := MovimientosdePersonal.FieldValues['sIdEmbarcacion'] ;
                    mMovimientos.FieldValues ['iCampo'] := Registro - 5 ;
                    mMovimientos.FieldValues ['sRenglon'] := Titles[ Registro - 5] ;
                    mMovimientos.FieldValues ['sHora'] := MovimientosdePersonal.Fields[Registro].Value ;
                    mMovimientos.Post
                End ;
                MovimientosdePersonal.Next
            End
      End ;
      ResumenPersonal.Active := False ;
      ResumenPersonal.SQL.Clear ;
      ResumenEquipos.Active := False ;
      ResumenEquipos.SQL.Clear ;
      ResumenSeguridad.Active := False ;
      ResumenSeguridad.SQL.Clear ;

      If Connection.configuracion.FieldValues['sOrdenPerEq'] = 'Pernocta' Then
      Begin
          ResumenPersonal.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradePersonal b ' +
                                  'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
                                  'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sIdTipoPersonal <> :Filtro) ' +
                                  'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                                  'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden Group By ' +
                                  'p2.sIdPernocta, p.sIdPersonal order by p2.sIdPernocta, p.iItemOrden asc') ;
          ResumenPersonal.Parameters.ParamByName('contrato').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('contrato').Value := global_contrato ;
          ResumenPersonal.Parameters.ParamByName('orden').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          ResumenPersonal.Parameters.ParamByName('fecha').DataType := ftDate ;
          ResumenPersonal.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          ResumenPersonal.Parameters.ParamByName('Turno').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          If Connection.configuracion.FieldValues['sImprimePEP'] = 'Si' Then
          Begin
              ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
              ResumenPersonal.Parameters.ParamByName('Filtro').Value := '' ;
          End
          Else
          Begin
              ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
              ResumenPersonal.Parameters.ParamByName('Filtro').Value := 'PEP' ;
          End ;


          ResumenPersonal.Open ;

          ResumenEquipos.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                 'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
                                 'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                 'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                                 'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
                                 'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc') ;
          ResumenEquipos.Parameters.ParamByName('contrato').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('contrato').Value := global_contrato ;
          ResumenEquipos.Parameters.ParamByName('orden').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          ResumenEquipos.Parameters.ParamByName('fecha').DataType := ftDate ;
          ResumenEquipos.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          ResumenEquipos.Parameters.ParamByName('equipo').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
          ResumenEquipos.Parameters.ParamByName('Turno').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          ResumenEquipos.Open ;

          ResumenSeguridad.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                 'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
                                 'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                 'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                                 'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo = :Equipo ' +
                                 'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc') ;
          ResumenSeguridad.Parameters.ParamByName('contrato').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('contrato').Value := global_contrato ;
          ResumenSeguridad.Parameters.ParamByName('orden').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          ResumenSeguridad.Parameters.ParamByName('fecha').DataType := ftDate ;
          ResumenSeguridad.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          ResumenSeguridad.Parameters.ParamByName('equipo').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
          ResumenSeguridad.Parameters.ParamByName('Turno').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          ResumenSeguridad.Open ;

      End
      Else
      Begin
          ResumenPersonal.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradePersonal b ' +
                                  'inner join bitacoradeactividades b2 on(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario And b2.sIdTurno = :Turno) ' +
                                  'inner join ActividadesxOrden a ON (a.sContrato = b2.sContrato And a.sIdConvenio = :Convenio and a.sNumeroOrden = b2.sNumeroOrden And ' +
                                  'a.sPaquete = b2.sPaquete And a.sNumeroActividad = b2.sNumeroActividad) ' +
                                  'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sIdTipoPersonal <> :Filtro) ' +
                                  'inner join plataformas p2 on (a.sIdPlataforma = p2.sIdPlataforma) ' +
                                  'where b2.sContrato = :contrato and b2.dIdFecha = :fecha and b2.sNumeroOrden = :Orden ' +
                                  'Group By a.sIdPlataforma, p.sIdPersonal order by a.sIdPlataforma, p.iItemOrden asc') ;
          ResumenPersonal.Parameters.ParamByName('contrato').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('contrato').Value := global_contrato ;
          ResumenPersonal.Parameters.ParamByName('convenio').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('convenio').Value := global_convenio ;
          ResumenPersonal.Parameters.ParamByName('orden').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          ResumenPersonal.Parameters.ParamByName('fecha').DataType := ftDate ;
          ResumenPersonal.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          ResumenPersonal.Parameters.ParamByName('Turno').DataType := ftString ;
          ResumenPersonal.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          If Connection.configuracion.FieldValues['sImprimePEP'] = 'Si' Then
          Begin
              ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
              ResumenPersonal.Parameters.ParamByName('Filtro').Value := '' ;
          End
          Else
          Begin
              ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
              ResumenPersonal.Parameters.ParamByName('Filtro').Value := 'PEP' ;
          End ;
          ResumenPersonal.Open ;

          ResumenEquipos.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                 'inner join bitacoradeactividades b2 on(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario And b2.sIdTurno = :Turno) ' +
                                 'inner join ActividadesxOrden a ON (a.sContrato = b2.sContrato And a.sIdConvenio = :Convenio and a.sNumeroOrden = b2.sNumeroOrden And ' +
                                 'a.sPaquete = b2.sPaquete And a.sNumeroActividad = b2.sNumeroActividad) ' +
                                 'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                 'inner join plataformas p2 on (a.sIdPlataforma = p2.sIdPlataforma) ' +
                                 'where b2.sContrato = :contrato and b2.dIdFecha = :fecha and b2.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
                                 'Group By a.sIdPlataforma, p.sIdEquipo order by a.sIdPlataforma, p.iItemOrden asc') ;
          ResumenEquipos.Parameters.ParamByName('contrato').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('contrato').Value := global_contrato ;
          ResumenEquipos.Parameters.ParamByName('convenio').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('convenio').Value := global_convenio ;
          ResumenEquipos.Parameters.ParamByName('orden').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          ResumenEquipos.Parameters.ParamByName('fecha').DataType := ftDate ;
          ResumenEquipos.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          ResumenEquipos.Parameters.ParamByName('equipo').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
          ResumenEquipos.Parameters.ParamByName('Turno').DataType := ftString ;
          ResumenEquipos.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          ResumenEquipos.Open ;

          ResumenSeguridad.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                 'inner join bitacoradeactividades b2 on(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario And b2.sIdTurno = :Turno) ' +
                                 'inner join ActividadesxOrden a ON (a.sContrato = b2.sContrato And a.sIdConvenio = :Convenio and a.sNumeroOrden = b2.sNumeroOrden And ' +
                                 'a.sPaquete = b2.sPaquete And a.sNumeroActividad = b2.sNumeroActividad) ' +
                                 'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                 'inner join plataformas p2 on (a.sIdPlataforma = p2.sIdPlataforma) ' +
                                 'where b2.sContrato = :contrato and b2.dIdFecha = :fecha and b2.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
                                 'Group By a.sIdPlataforma, p.sIdEquipo order by a.sIdPlataforma, p.iItemOrden asc') ;
          ResumenSeguridad.Parameters.ParamByName('contrato').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('contrato').Value := global_contrato ;
          ResumenSeguridad.Parameters.ParamByName('convenio').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('convenio').Value := global_convenio ;
          ResumenSeguridad.Parameters.ParamByName('orden').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          ResumenSeguridad.Parameters.ParamByName('fecha').DataType := ftDate ;
          ResumenSeguridad.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          ResumenSeguridad.Parameters.ParamByName('equipo').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
          ResumenSeguridad.Parameters.ParamByName('Turno').DataType := ftString ;
          ResumenSeguridad.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          ResumenSeguridad.Open ;
      End ;

      TiempoMuerto.Active := False ;
      TiempoMuerto.Parameters.ParamByName('Contrato').DataType := ftString ;
      TiempoMuerto.Parameters.ParamByName('Contrato').Value := global_contrato ;
      TiempoMuerto.Parameters.ParamByName('Fecha').DataType := ftDate ;
      TiempoMuerto.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      TiempoMuerto.Parameters.ParamByName('Orden').DataType := ftString ;
      TiempoMuerto.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
      TiempoMuerto.Parameters.ParamByName('Inicio').DataType := ftString ;
      TiempoMuerto.Parameters.ParamByName('Inicio').Value := ReporteDiario.FieldValues['sOperacionInicio'] ;
      TiempoMuerto.Parameters.ParamByName('Final').DataType := ftString ;
      TiempoMuerto.Parameters.ParamByName('Final').Value := ReporteDiario.FieldValues['sOperacionFinal'] ;
      TiempoMuerto.Open ;

      If Permisos.RecordCount = 0 Then
      Begin
          Connection.BuscaReadOnly.Active := False ;
          connection.BuscaReadOnly.SQL.Clear ;
          Connection.BuscaReadOnly.SQL.Add('Select * from tiposdepermiso') ;
          Connection.BuscaReadOnly.Open ;
          If Connection.BuscaReadOnly.RecordCount > 0 Then
          Begin
              connection.command.CommandText := 'INSERT INTO tramitedepermisos ( sContrato , dIdFecha , sNumeroOrden, sIdTurno, sIdTipoPermiso) ' +
                                                ' VALUES (:contrato, :fecha, :orden, :turno, :permiso)';
              connection.command.Parameters.ParamByName('contrato').DataType := ftString ;
              connection.command.Parameters.ParamByName('contrato').value := Global_Contrato ;
              connection.command.Parameters.ParamByName('fecha').DataType := ftDate ;
              connection.command.Parameters.ParamByName('fecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
              connection.command.Parameters.ParamByName('orden').DataType := ftString ;
              connection.command.Parameters.ParamByName('orden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
              connection.command.Parameters.ParamByName('turno').DataType := ftString ;
              connection.command.Parameters.ParamByName('turno').value := ReporteDiario.FieldValues['sIdTurno'] ;
              connection.command.Parameters.ParamByName('permiso').DataType := ftString ;
              connection.command.Parameters.ParamByName('permiso').value := connection.BuscaReadOnly.FieldValues['sIdTipoPermiso']  ;
              connection.command.Execute ;
          End ;
          Permisos.Requery
      End ;
      If MovimientosdePersonal.RecordCount > 0 Then
          rmDiarioGeneral.ShowReport
      Else
          rmDiarioGeneral2.ShowReport

  End}
end;

procedure TfrmDiarioTurno2.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmDiarioTurno2.Grid_ReportesEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;
End;

procedure TfrmDiarioTurno2.Imprimir2Click(Sender: TObject);
Const
      Titles : Array [1..5] Of String = ('Hora de Salida','Hora de Llegada','Inicio de Operaciones','Termino de Operaciones','Hora de Regreso' ) ;
Var
      Registro : Integer ;
begin
   { If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;

    If ReporteDiario.RecordCount > 0 Then
    Begin
        Actualiza ;
        Bitacora1.Active := False ;
        Bitacora1.Parameters.ParamByName('contrato').DataType := ftString ;
        Bitacora1.Parameters.ParamByName('contrato').Value := global_contrato ;
        Bitacora1.Parameters.ParamByName('convenio').DataType := ftString ;
        Bitacora1.Parameters.ParamByName('convenio').Value := global_convenio ;
        Bitacora1.Parameters.ParamByName('orden').DataType := ftString ;
        Bitacora1.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        Bitacora1.Parameters.ParamByName('fecha').DataType := ftDate ;
        Bitacora1.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        Bitacora1.Parameters.ParamByName('Turno').DataType := ftString ;
        Bitacora1.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
        Bitacora1.Open ;

        Bitacora3.Active := False ;
        Bitacora3.Parameters.ParamByName('contrato').DataType := ftString ;
        Bitacora3.Parameters.ParamByName('contrato').Value := global_contrato ;
        Bitacora3.Parameters.ParamByName('orden').DataType := ftString ;
        Bitacora3.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        Bitacora3.Parameters.ParamByName('fecha').DataType := ftDate ;
        Bitacora3.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        Bitacora3.Parameters.ParamByName('Turno').DataType := ftString ;
        Bitacora3.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
        Bitacora3.Open ;

        If mMovimientos.RecordCount > 0 then
             mMovimientos.EmptyTable  ;

        MovimientosdePersonal.Active := False ;
        MovimientosdePersonal.Parameters.ParamByName('contrato').DataType := ftString ;
        MovimientosdePersonal.Parameters.ParamByName('contrato').Value := global_contrato ;
        MovimientosdePersonal.Parameters.ParamByName('fecha').DataType := ftDate ;
        MovimientosdePersonal.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        MovimientosdePersonal.Parameters.ParamByName('turno').DataType := ftString ;
        MovimientosdePersonal.Parameters.ParamByName('turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
        MovimientosdePersonal.Open ;
        If MovimientosdePersonal.RecordCount > 0 Then
        Begin

            MovimientosdePersonal.First ;
            While NOT MovimientosdePersonal.Eof Do
            Begin
                for Registro := 6 to MovimientosdePersonal.FieldCount - 2 do
                Begin
                    mMovimientos.Append ;
                    mMovimientos.FieldValues ['sIdPernocta'] := MovimientosdePersonal.FieldValues['sIdPernocta'] ;
                    mMovimientos.FieldValues ['sIdPlataforma'] := MovimientosdePersonal.FieldValues['sIdPlataforma'] ;
                    mMovimientos.FieldValues ['sIdEmbarcacion'] := MovimientosdePersonal.FieldValues['sIdEmbarcacion'] ;
                    mMovimientos.FieldValues ['iCampo'] := Registro - 5 ;
                    mMovimientos.FieldValues ['sRenglon'] := Titles[ Registro - 5] ;
                    mMovimientos.FieldValues ['sHora'] := MovimientosdePersonal.Fields[Registro].Value ;
                    mMovimientos.Post
                End ;
                MovimientosdePersonal.Next
            End
        End ;

        ResumenPersonal.Active := False ;
        ResumenPersonal.SQL.Clear ;
        ResumenEquipos.Active := False ;
        ResumenEquipos.SQL.Clear ;
        ResumenSeguridad.Active := False ;
        ResumenSeguridad.SQL.Clear ;

        If Connection.configuracion.FieldValues['sOrdenPerEq'] = 'Pernocta' Then
        Begin
            ResumenPersonal.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradePersonal b ' +
                                    'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
                                    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sIdTipoPersonal <> :Filtro) ' +
                                    'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                                    'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden Group By ' +
                                    'p2.sIdPernocta, p.sIdPersonal order by p2.sIdPernocta, p.iItemOrden asc') ;
            ResumenPersonal.Parameters.ParamByName('contrato').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('contrato').Value := global_contrato ;
            ResumenPersonal.Parameters.ParamByName('orden').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            ResumenPersonal.Parameters.ParamByName('fecha').DataType := ftDate ;
            ResumenPersonal.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            ResumenPersonal.Parameters.ParamByName('Turno').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            If Connection.configuracion.FieldValues['sImprimePEP'] = 'Si' Then
            Begin
                ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
                ResumenPersonal.Parameters.ParamByName('Filtro').Value := '' ;
            End
            Else
            Begin
                ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
                ResumenPersonal.Parameters.ParamByName('Filtro').Value := 'PEP' ;
            End ;


            ResumenPersonal.Open ;

            ResumenEquipos.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                   'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
                                   'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                   'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                                   'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
                                   'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc') ;
            ResumenEquipos.Parameters.ParamByName('contrato').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('contrato').Value := global_contrato ;
            ResumenEquipos.Parameters.ParamByName('orden').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            ResumenEquipos.Parameters.ParamByName('fecha').DataType := ftDate ;
            ResumenEquipos.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            ResumenEquipos.Parameters.ParamByName('equipo').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
            ResumenEquipos.Parameters.ParamByName('Turno').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            ResumenEquipos.Open ;

            ResumenSeguridad.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                   'inner join bitacoradeactividades a on (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario And a.sIdTurno = :Turno) ' +
                                   'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                   'inner join pernoctan p2 on (b.sIdPernocta = p2.sIdPernocta) ' +
                                   'where a.sContrato = :contrato and a.dIdFecha = :fecha and a.sNumeroOrden = :Orden And p.sIdTipoEquipo = :Equipo ' +
                                   'Group By p2.sIdPernocta, p.sIdEquipo order by p2.sIdPernocta, p.iItemOrden asc') ;
            ResumenSeguridad.Parameters.ParamByName('contrato').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('contrato').Value := global_contrato ;
            ResumenSeguridad.Parameters.ParamByName('orden').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            ResumenSeguridad.Parameters.ParamByName('fecha').DataType := ftDate ;
            ResumenSeguridad.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            ResumenSeguridad.Parameters.ParamByName('equipo').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
            ResumenSeguridad.Parameters.ParamByName('Turno').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            ResumenSeguridad.Open ;

        End
        Else
        Begin
            ResumenPersonal.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sPersonal, Sum(b.dCantidad) as dCantidad from bitacoradePersonal b ' +
                                    'inner join bitacoradeactividades b2 on(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario And b2.sIdTurno = :Turno) ' +
                                    'inner join ActividadesxOrden a ON (a.sContrato = b2.sContrato And a.sIdConvenio = :Convenio and a.sNumeroOrden = b2.sNumeroOrden And ' +
                                    'a.sPaquete = b2.sPaquete And a.sNumeroActividad = b2.sNumeroActividad) ' +
                                    'inner join personal p on (b.sContrato = p.sContrato And b.sIdPersonal = p.sIdPersonal And p.sIdTipoPersonal <> :Filtro) ' +
                                    'inner join plataformas p2 on (a.sIdPlataforma = p2.sIdPlataforma) ' +
                                    'where b2.sContrato = :contrato and b2.dIdFecha = :fecha and b2.sNumeroOrden = :Orden ' +
                                    'Group By a.sIdPlataforma, p.sIdPersonal order by a.sIdPlataforma, p.iItemOrden asc') ;
            ResumenPersonal.Parameters.ParamByName('contrato').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('contrato').Value := global_contrato ;
            ResumenPersonal.Parameters.ParamByName('convenio').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('convenio').Value := global_convenio ;
            ResumenPersonal.Parameters.ParamByName('orden').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            ResumenPersonal.Parameters.ParamByName('fecha').DataType := ftDate ;
            ResumenPersonal.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            ResumenPersonal.Parameters.ParamByName('Turno').DataType := ftString ;
            ResumenPersonal.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            If Connection.configuracion.FieldValues['sImprimePEP'] = 'Si' Then
            Begin
                ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
                ResumenPersonal.Parameters.ParamByName('Filtro').Value := '' ;
            End
            Else
            Begin
                ResumenPersonal.Parameters.ParamByName('Filtro').DataType := ftString ;
                ResumenPersonal.Parameters.ParamByName('Filtro').Value := 'PEP' ;
            End ;
            ResumenPersonal.Open ;

            ResumenEquipos.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                   'inner join bitacoradeactividades b2 on(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario And b2.sIdTurno = :Turno) ' +
                                   'inner join ActividadesxOrden a ON (a.sContrato = b2.sContrato And a.sIdConvenio = :Convenio and a.sNumeroOrden = b2.sNumeroOrden And ' +
                                   'a.sPaquete = b2.sPaquete And a.sNumeroActividad = b2.sNumeroActividad) ' +
                                   'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                   'inner join plataformas p2 on (a.sIdPlataforma = p2.sIdPlataforma) ' +
                                   'where b2.sContrato = :contrato and b2.dIdFecha = :fecha and b2.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
                                   'Group By a.sIdPlataforma, p.sIdEquipo order by a.sIdPlataforma, p.iItemOrden asc') ;
            ResumenEquipos.Parameters.ParamByName('contrato').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('contrato').Value := global_contrato ;
            ResumenEquipos.Parameters.ParamByName('convenio').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('convenio').Value := global_convenio ;
            ResumenEquipos.Parameters.ParamByName('orden').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            ResumenEquipos.Parameters.ParamByName('fecha').DataType := ftDate ;
            ResumenEquipos.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            ResumenEquipos.Parameters.ParamByName('equipo').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
            ResumenEquipos.Parameters.ParamByName('Turno').DataType := ftString ;
            ResumenEquipos.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            ResumenEquipos.Open ;

            ResumenSeguridad.SQL.Add('select b.sContrato, p2.sDescripcion as sPernocta, p.sDescripcion as sEquipo, Sum(b.dCantidad) as dCantidad  from bitacoradeEquipos b ' +
                                   'inner join bitacoradeactividades b2 on(b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario And b2.sIdTurno = :Turno) ' +
                                   'inner join ActividadesxOrden a ON (a.sContrato = b2.sContrato And a.sIdConvenio = :Convenio and a.sNumeroOrden = b2.sNumeroOrden And ' +
                                   'a.sPaquete = b2.sPaquete And a.sNumeroActividad = b2.sNumeroActividad) ' +
                                   'inner join equipos p on (b.sContrato = p.sContrato And b.sIdEquipo = p.sIdEquipo) ' +
                                   'inner join plataformas p2 on (a.sIdPlataforma = p2.sIdPlataforma) ' +
                                   'where b2.sContrato = :contrato and b2.dIdFecha = :fecha and b2.sNumeroOrden = :Orden And p.sIdTipoEquipo <> :Equipo ' +
                                   'Group By a.sIdPlataforma, p.sIdEquipo order by a.sIdPlataforma, p.iItemOrden asc') ;
            ResumenSeguridad.Parameters.ParamByName('contrato').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('contrato').Value := global_contrato ;
            ResumenSeguridad.Parameters.ParamByName('convenio').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('convenio').Value := global_convenio ;
            ResumenSeguridad.Parameters.ParamByName('orden').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            ResumenSeguridad.Parameters.ParamByName('fecha').DataType := ftDate ;
            ResumenSeguridad.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            ResumenSeguridad.Parameters.ParamByName('equipo').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('equipo').Value := connection.configuracion.FieldValues['sClaveSeguridad']  ;
            ResumenSeguridad.Parameters.ParamByName('Turno').DataType := ftString ;
            ResumenSeguridad.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            ResumenSeguridad.Open ;
        End ;

        TiempoMuerto.Active := False ;
        TiempoMuerto.Parameters.ParamByName('Contrato').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Contrato').Value := global_contrato ;
        TiempoMuerto.Parameters.ParamByName('Fecha').DataType := ftDate ;
        TiempoMuerto.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        TiempoMuerto.Parameters.ParamByName('Orden').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        TiempoMuerto.Parameters.ParamByName('Inicio').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Inicio').Value := ReporteDiario.FieldValues['sOperacionInicio'] ;
        TiempoMuerto.Parameters.ParamByName('Final').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Final').Value := ReporteDiario.FieldValues['sOperacionFinal'] ;
        TiempoMuerto.Open ;

        If Permisos.RecordCount = 0 Then
        Begin
            Connection.BuscaReadOnly.Active := False ;
            connection.BuscaReadOnly.SQL.Clear ;
            Connection.BuscaReadOnly.SQL.Add('Select * from tiposdepermiso') ;
            Connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 Then
            Begin
                connection.command.CommandText := 'INSERT INTO tramitedepermisos ( sContrato , dIdFecha , sNumeroOrden, sIdTurno, sIdTipoPermiso) ' +
                                                  ' VALUES (:contrato, :fecha, :orden, :turno, :permiso)';
                connection.command.Parameters.ParamByName('contrato').DataType := ftString ;
                connection.command.Parameters.ParamByName('contrato').value := Global_Contrato ;
                connection.command.Parameters.ParamByName('fecha').DataType := ftDate ;
                connection.command.Parameters.ParamByName('fecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                connection.command.Parameters.ParamByName('orden').DataType := ftString ;
                connection.command.Parameters.ParamByName('orden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                connection.command.Parameters.ParamByName('turno').DataType := ftString ;
                connection.command.Parameters.ParamByName('turno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                connection.command.Parameters.ParamByName('permiso').DataType := ftString ;
                connection.command.Parameters.ParamByName('permiso').value := connection.BuscaReadOnly.FieldValues['sIdTipoPermiso']  ;
                connection.command.Execute ;
            End ;
            Permisos.Requery
        End ;
        If MovimientosdePersonal.RecordCount > 0 Then
            rDiarioGeneral.ShowReport
        Else
            rDiarioGeneral2.ShowReport
    End  }
end;

procedure TfrmDiarioTurno2.rDiarioGeneralGetValue(const VarName: String;
  var Value: Variant);
begin
  {If CompareText(VarName, 'PERIODO') = 0 then
  Begin
      Connection.BuscaReadOnly.Active := False ;
      Connection.BuscaReadOnly.SQL.Clear ;
      Connection.BuscaReadOnly.SQL.Add('Select * From Convenios Where sContrato = :Contrato Order By dFecha DESC') ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
      Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').Value := global_contrato ;
      Connection.BuscaReadOnly.Open ;
      If Connection.BuscaReadOnly.RecordCount > 0 Then
          Value := datetostr(Connection.BuscaReadOnly.FieldValues['dFechaInicio'] ) + ' AL ' + datetostr(Connection.BuscaReadOnly.FieldValues['dFechaFinal'] )
      Else
          Value := ''
  End ;

  If CompareText(VarName, 'ACTIVIDAD') = 0 then
      If Connection.configuracion.FieldValues['sPartidaEfectiva'] = 'Anexo' Then
            Value := Bitacora1.FieldValues['sNumeroActividad']
      Else
            Value := Bitacora1.FieldValues['sActividadAnterior'] ;
  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := tdGlobalAnterior.Value ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := tdDiarioTurno.Value ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := tdGlobalTurno.Value ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := tdPonderadoAnterior.Value ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := tdPonderadoDia.Value ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := tdPonderadoGlobal.Value ;

  If CompareText(VarName, 'CANTIDAD_ANTERIOR') = 0 then
      Value := dCantidadAnterior ;
  If CompareText(VarName, 'AVANCE_ANTERIOR') = 0 then
      Value := dAvanceAnterior ;
   }
end;

procedure TfrmDiarioTurno2.ReporteDiarioAfterScroll(DataSet: TDataSet);
begin
   { If Reportediario.RecordCount > 0 then
    Begin
        tdIdFecha.Date := ReporteDiario.FieldValues['dIdFecha'] ;
        tsIdTurno.KeyValue := ReporteDiario.FieldValues['sIdTurno'] ;
        tsNumeroReporte.Text := ReporteDiario.FieldValues['sNumeroReporte'] ;
        tsHoraInicio2.Text := ReporteDiario.FieldValues['sOperacionInicio'] ;
        tsHoraFinal2.Text := ReporteDiario.FieldValues['sOperacionFinal'] ;
        tsTiempoEfectivo.Text := ReporteDiario.FieldValues['sTiempoEfectivo'] ;
        tsTiempoMuerto.Text := ReporteDiario.FieldValues['sTiempoMuerto'] ;
        tsTiempo.Text := ReporteDiario.FieldValues['sTiempo'] ;
        tsTransporte.Text := ReporteDiario.FieldValues['sTransporte'] ;
        tsInicioPlatica.Text := ReporteDiario.FieldValues['sInicioPlatica'] ;
        tsFinalPlatica.Text := ReporteDiario.FieldValues['sFinalPlatica'] ;
        tsTema.Text := ReporteDiario.FieldValues['sTema'] ;
        Permisos.Active := False ;
        Permisos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Permisos.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Permisos.Parameters.ParamByName('fecha').DataType := ftDate ;
        Permisos.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Permisos.Parameters.ParamByName('Orden').DataType := ftString ;
        Permisos.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Permisos.Parameters.ParamByName('turno').DataType := ftString ;
        Permisos.Parameters.ParamByName('turno').Value := tsIdTurno.KeyValue ;
        Permisos.Open ;

        Platicas.Active := False ;
        Platicas.Parameters.ParamByName('Contrato').DataType := ftString ;
        Platicas.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Platicas.Parameters.ParamByName('fecha').DataType := ftDate ;
        Platicas.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Platicas.Parameters.ParamByName('Orden').DataType := ftString ;
        Platicas.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Platicas.Open ;
        If Platicas.RecordCount > 0 Then
            tsTema.Text := Platicas.FieldValues['sTema'] ;

        //  Actualizo la Bitacora
        Bitacora.Active := False ;
        Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
        Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
        Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
        Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date  ;
        Bitacora.Parameters.ParamByName('Orden').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Bitacora.Parameters.ParamByName('Turno').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
        Bitacora.Open ;

    End
    Else
    Begin
        tdIdFecha.Date := Date ;
        tsIdTurno.KeyValue := '' ;
        tsNumeroReporte.Text := '' ;
        tsHoraInicio2.Text := '00:00' ;
        tsHoraFinal2.Text := '00:00' ;
        tsTiempoEfectivo.Text := '00:00' ;
        tsTiempoMuerto.Text := '00:00' ;
        tsTiempo.Text := '' ;
        tsTransporte.Text := '' ;
        tsInicioPlatica.Text := '00:00' ;
        tsFinalPlatica.Text := '00:00' ;
        tsTema.Text := '' ;
        Permisos.Active := False ;
        Permisos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Permisos.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Permisos.Parameters.ParamByName('fecha').DataType := ftDate ;
        Permisos.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Permisos.Parameters.ParamByName('Orden').DataType := ftString ;
        Permisos.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Permisos.Parameters.ParamByName('turno').DataType := ftString ;
        Permisos.Parameters.ParamByName('turno').Value := tsIdTurno.KeyValue ;
        Permisos.Open ;

        Platicas.Active := False ;
        Platicas.Parameters.ParamByName('Contrato').DataType := ftString ;
        Platicas.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Platicas.Parameters.ParamByName('fecha').DataType := ftDate ;
        Platicas.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Platicas.Parameters.ParamByName('Orden').DataType := ftString ;
        Platicas.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Platicas.Open ;
        If Platicas.RecordCount > 0 Then
            tsTema.Text := Platicas.FieldValues['sTema'] ;

        //  Actualizo la Bitacora
        Bitacora.Active := False ;
        Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
        Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
        Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
        Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date  ;
        Bitacora.Parameters.ParamByName('Orden').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Bitacora.Parameters.ParamByName('Turno').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
        Bitacora.Open ;
        
    End ; }
end;

procedure TfrmDiarioTurno2.dsBitacora1First(Sender: TObject);
begin
 { connection.BuscaReadOnly.Active := False ;
  connection.BuscaReadOnly.SQL.Clear ;
  connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                   'dIdFecha < :fecha And sNumeroActividad = :Actividad Group By sNumeroActividad') ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := Bitacora1.FieldValues['sNumeroActividad'] ;
  connection.BuscaReadOnly.Open ;
  dAvanceAnterior := 0 ;
  dCantidadAnterior := 0 ;
  If connection.BuscaReadOnly.RecordCount > 0 Then
  Begin
      dCantidadAnterior := connection.BuscaReadOnly.FieldValues['dInstalado'] ;
      dAvanceAnterior := connection.BuscaReadOnly.FieldValues['dAvance'] ;
  End ;

  connection.BuscaReadOnly.Active := False ;
  connection.BuscaReadOnly.SQL.Clear ;
  connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                   'dIdFecha = :fecha And sIdTurno < :Turno And sNumeroActividad = :Actividad Group By sNumeroActividad') ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := Bitacora1.FieldValues['sNumeroActividad'] ;
  connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := Bitacora1.FieldValues['sIdTurno'] ;
  connection.BuscaReadOnly.Open ;
  If connection.BuscaReadOnly.RecordCount > 0 Then
  Begin
      dCantidadAnterior := dCantidadAnterior + connection.BuscaReadOnly.FieldValues['dInstalado'] ;
      dAvanceAnterior := dAvanceAnterior + connection.BuscaReadOnly.FieldValues['dAvance'] ;
  End ;
    }
end;

procedure TfrmDiarioTurno2.dsBitacora1Next(Sender: TObject);
begin
 { connection.BuscaReadOnly.Active := False ;
  connection.BuscaReadOnly.SQL.Clear ;                                                
  connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                   'dIdFecha < :fecha And sNumeroActividad = :Actividad Group By sNumeroActividad') ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := Bitacora1.FieldValues['sNumeroActividad'] ;
  connection.BuscaReadOnly.Open ;
  dAvanceAnterior := 0 ;
  dCantidadAnterior := 0 ;
  If connection.BuscaReadOnly.RecordCount > 0 Then
  Begin
      dCantidadAnterior := connection.BuscaReadOnly.FieldValues['dInstalado'] ;
      dAvanceAnterior := connection.BuscaReadOnly.FieldValues['dAvance'] ;
  End ;

  connection.BuscaReadOnly.Active := False ;
  connection.BuscaReadOnly.SQL.Clear ;
  connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                   'dIdFecha = :fecha And sIdTurno < :Turno And sNumeroActividad = :Actividad Group By sNumeroActividad') ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
  connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := Bitacora1.FieldValues['sNumeroActividad'] ;
  connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
  connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := Bitacora1.FieldValues['sIdTurno'] ;
  connection.BuscaReadOnly.Open ;
  If connection.BuscaReadOnly.RecordCount > 0 Then
  Begin
      dCantidadAnterior := dCantidadAnterior + connection.BuscaReadOnly.FieldValues['dInstalado'] ;
      dAvanceAnterior := dAvanceAnterior + connection.BuscaReadOnly.FieldValues['dAvance'] ;
  End ;
  }
end;


procedure TfrmDiarioTurno2.dsmBitacora1First(Sender: TObject);
begin
 { If mBitacora1.FieldValues['dCantidad'] > 0 Then
  Begin
      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                       'dIdFecha < :fecha And sNumeroOrden = :Orden And sPaquete = :Paquete And sNumeroActividad = :Actividad Group By sPaquete, sNumeroActividad') ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden']  ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').Value := mBitacora1.FieldValues['sPaquete'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := mBitacora1.FieldValues['sNumeroActividad'] ;
      connection.BuscaReadOnly.Open ;
      dAvanceAnterior := 0 ;
      dCantidadAnterior := 0 ;
      If connection.BuscaReadOnly.RecordCount > 0 Then
      Begin
          dCantidadAnterior := connection.BuscaReadOnly.FieldValues['dInstalado'] ;
          dAvanceAnterior := connection.BuscaReadOnly.FieldValues['dAvance'] ;
      End ;

      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                       'dIdFecha = :fecha And sIdTurno < :Turno And sNumeroOrden = :Orden And sPaquete = :Paquete And sNumeroActividad = :Actividad Group By sPaquete, sNumeroActividad') ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden']  ;
      connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno']  ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').Value := mBitacora1.FieldValues['sPaquete'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := mBitacora1.FieldValues['sNumeroActividad'] ;
      connection.BuscaReadOnly.Open ;
      If connection.BuscaReadOnly.RecordCount > 0 Then
      Begin
          dCantidadAnterior := dCantidadAnterior + connection.BuscaReadOnly.FieldValues['dInstalado'] ;
          dAvanceAnterior := dAvanceAnterior  + connection.BuscaReadOnly.FieldValues['dAvance'] ;
      End ;

  End }
end;

procedure TfrmDiarioTurno2.dsmBitacora1Next(Sender: TObject);
begin
 { If mBitacora1.FieldValues['dCantidad'] > 0 Then
  Begin
      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                       'dIdFecha < :fecha And sNumeroOrden = :Orden And sPaquete = :Paquete And sNumeroActividad = :Actividad Group By sPaquete, sNumeroActividad') ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').Value := mBitacora1.FieldValues['sPaquete'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := mBitacora1.FieldValues['sNumeroActividad'] ;
      connection.BuscaReadOnly.Open ;
      dAvanceAnterior := 0 ;
      dCantidadAnterior := 0 ;
      If connection.BuscaReadOnly.RecordCount > 0 Then
      Begin
          dCantidadAnterior := connection.BuscaReadOnly.FieldValues['dInstalado'] ;
          dAvanceAnterior := connection.BuscaReadOnly.FieldValues['dAvance'] ;
      End ;

      connection.BuscaReadOnly.Active := False ;
      connection.BuscaReadOnly.SQL.Clear ;
      connection.BuscaReadOnly.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from BitacoradeActividades where sContrato = :Contrato and ' +
                                       'dIdFecha = :fecha And sIdTurno < :Turno And sNumeroOrden = :Orden And sPaquete = :Paquete And sNumeroActividad = :Actividad Group By sPaquete, sNumeroActividad') ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
      connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden']  ;
      connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno']  ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Paquete').Value := mBitacora1.FieldValues['sPaquete'] ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').DataType := ftString ;
      connection.BuscaReadOnly.Parameters.ParamByName('Actividad').Value := mBitacora1.FieldValues['sNumeroActividad'] ;
      connection.BuscaReadOnly.Open ;
      If connection.BuscaReadOnly.RecordCount > 0 Then
      Begin
          dCantidadAnterior := dCantidadAnterior + connection.BuscaReadOnly.FieldValues['dInstalado'] ;
          dAvanceAnterior := dAvanceAnterior  + connection.BuscaReadOnly.FieldValues['dAvance'] ;
      End ;
      
  End }
end;

procedure TfrmDiarioTurno2.ImprimirExcel1Click(Sender: TObject);
Var
    txtInicio : String ;
    Archivo   : TextFile;
    sArchivo  : String ;
    Cadena    : String ;
    bS  : TStream;
    Pic : TJpegImage;
    BlobField : tField ;
begin
 { BlobField := connection.configuracion.FieldByName('bImagen') ;
  BS := connection.configuracion.CreateBlobStream ( BlobField , bmRead ) ;
  If bs.Size > 1 Then
  Begin
      try
          Pic:=TJpegImage.Create;
          try
             Pic.LoadFromStream(bS);
             Pic.SaveToFile('c:\Inteligent\Compania.jpg')
          finally
             Pic.Free;
          end;
      finally
          bS.Free
      End
  End ;

  BlobField := connection.contrato.FieldByName('bImagen') ;
  BS := connection.contrato.CreateBlobStream ( BlobField , bmRead ) ;
  If bs.Size > 1 Then
  Begin
      try
          Pic:=TJpegImage.Create;
          try
             Pic.LoadFromStream(bS);
             Pic.SaveToFile('c:\Inteligent\Cliente.jpg')
          finally
             Pic.Free;
          end;
      finally
          bS.Free
      End
  End ;

  If ReporteDiario.RecordCount > 0 Then
  Begin
      sArchivo := 'c:\Inteligent\eamdam' ;
      If FileExists( sArchivo ) then
          DeleteFile( sArchivo ) ;
      Cadena := global_contrato + '|' + datetostr(ReporteDiario.FieldValues['dIdFecha']) + '|' + ReporteDiario.FieldValues['sNumeroOrden'] ;
      AssignFile(Archivo, sArchivo );
      Rewrite( Archivo );
      Writeln(Archivo, Cadena);
      CloseFile(Archivo);
  End ;


  If Connection.configuracion.FieldValues['sTipoReporte'] = 'Programa' Then
      WinExec ( 'EXCEL.exe "c:\Inteligent\Macros\Reporte Programa.xls"', SW_SHOW )
  Else
      WinExec ( 'EXCEL.exe "c:\Inteligent\Macros\Reporte Anexo.xls"', SW_SHOW ) ; }
end;

procedure TfrmDiarioTurno2.tsIdTurnoEnter(Sender: TObject);
begin
    tsIdTurno.Color := global_color_entrada
end;

procedure TfrmDiarioTurno2.tsIdTurnoExit(Sender: TObject);
begin
  {  If OpcButton <> '' Then
    Begin
        If OpcButton = 'New' Then
        Begin
            lNuevoDia := True ;
            Connection.BuscaReadOnly.Active := False ;
            Connection.BuscaReadOnly.SQL.Clear ;
            Connection.BuscaReadOnly.SQL.Add('Select * from ReporteDiario Where sContrato = :contrato And sNumeroOrden = :Orden And ' +
                                             'dIdFecha = :fecha And sIdTurno = :Turno') ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').DataType := ftString ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Contrato').value := global_contrato ;
            Connection.BuscaReadOnly.Parameters.ParamByName('orden').DataType := ftString ;
            Connection.BuscaReadOnly.Parameters.ParamByName('orden').value := tsNumeroOrden.Text ;
            Connection.BuscaReadOnly.Parameters.ParamByName('fecha').DataType := ftDate ;
            Connection.BuscaReadOnly.Parameters.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.BuscaReadOnly.Parameters.ParamByName('turno').DataType := ftString ;
            Connection.BuscaReadOnly.Parameters.ParamByName('Turno').value := tsIdTurno.KeyValue ;
            Connection.BuscaReadOnly.Open ;
            If Connection.BuscaReadOnly.RecordCount > 0 Then
                lNuevoDia := False
        End ;

        tdGlobalAnterior.Value := 0 ;
        tdDiarioTurno.Value := 0 ;
        tdGlobalTurno.Value := 0 ;

        Permisos.Active := False ;
        Permisos.Parameters.ParamByName('Contrato').DataType := ftString ;
        Permisos.Parameters.ParamByName('contrato').Value  := global_contrato ;
        Permisos.Parameters.ParamByName('fecha').DataType := ftDate ;
        Permisos.Parameters.ParamByName('fecha').Value := tdIdFecha.Date ;
        Permisos.Parameters.ParamByName('Orden').DataType := ftString ;
        Permisos.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Permisos.Parameters.ParamByName('turno').DataType := ftString ;
        Permisos.Parameters.ParamByName('turno').Value := tsIdTurno.KeyValue ;
        Permisos.Open ;

        //  Actualizo la Bitacora
        Bitacora.Active := False ;
        Bitacora.Parameters.ParamByName('contrato').DataType := ftString ;
        Bitacora.Parameters.ParamByName('contrato').Value := global_contrato ;
        Bitacora.Parameters.ParamByName('fecha').DataType := ftDate ;
        Bitacora.Parameters.ParamByName('fecha').Value := tdIdFecha.Date  ;
        Bitacora.Parameters.ParamByName('Orden').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Bitacora.Parameters.ParamByName('Turno').DataType := ftString ;
        Bitacora.Parameters.ParamByName('Turno').Value := tsIdTurno.KeyValue ;
        Bitacora.Open ;

        TiempoMuerto.Active := False ;
        TiempoMuerto.Parameters.ParamByName('Contrato').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Contrato').Value := global_contrato ;
        TiempoMuerto.Parameters.ParamByName('Fecha').DataType := ftDate ;
        TiempoMuerto.Parameters.ParamByName('Fecha').Value := tdIdFecha.Date ;
        TiempoMuerto.Parameters.ParamByName('Orden').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        TiempoMuerto.Parameters.ParamByName('Inicio').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Inicio').Value := Turnos.FieldValues['sHoraInicio'] ;
        TiempoMuerto.Parameters.ParamByName('Final').DataType := ftString ;
        TiempoMuerto.Parameters.ParamByName('Final').Value := Turnos.FieldValues['sHoraFinal'] ;
        TiempoMuerto.Open ;
        If TiempoMuerto.RecordCount > 0 Then
        Begin
             TiempoMuerto.First ;
             iMuerto := 0 ;
             dMuerto := 0 ;
             While Not TiempoMuerto.Eof Do
             Begin
                 iMuerto := iMuerto + rfnDecimal ( MidStr(TiempoMuerto.FieldValues['sTiempoMuerto'] , 1, 2) ) ;
                 dMuerto := dMuerto + rfnDecimal ( MidStr(TiempoMuerto.FieldValues['sTiempoMuerto'] , 4, 2) ) ;
                 TiempoMuerto.Next
             End ;
             iMuerto := iMuerto + Int ( dMuerto / 60 ) ;
             dMuerto := dMuerto - ( Int( dMuerto / 60 ) * 60 ) ;
             Str ( iMuerto:2:0 , sHoras ) ;
             sHoras := Trim (sHoras) ;
             If iMuerto >=10 then
                sHoras := sHoras + ':'
             Else
                sHoras := '0' + sHoras + ':' ;

             Str ( dMuerto:2:0 , sMinutos ) ;
             sMinutos := Trim (sMinutos) ;
             If dMuerto >=10 then
                sMuerto := sHoras + sMinutos
             Else
                sMuerto := sHoras + '0' + sMinutos ;

             tsTiempoEfectivo.Text := sfnRestaHoras ( tsHoraFinal2.Text , tsHoraInicio2.Text ) ;
             tsTiempoMuerto.Text := sMuerto ;
             tsTiempoEfectivo.Text := sfnRestaHoras ( tsTiempoEfectivo.Text , tsTiempoMuerto.Text ) ;
        End ;

    End ;

    tsIdTurno.Color := global_color_salida }
end;

procedure TfrmDiarioTurno2.tsIdTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsHoraInicio2.SetFocus
end;

procedure TfrmDiarioTurno2.Actualiza() ;
begin
   { If Reportediario.RecordCount > 0 then
    Begin
        tdPonderadoAnterior.Value := 0 ;
        tdGlobalAnterior.Value := 0 ;
        tdPonderadoDia.Value := 0 ; ;
        tdPonderadoGlobal.Value := 0 ;
        tdDiarioTurno.Value := 0 ;
        tdGlobalTurno.Value := 0 ;
        tdFisicoDiario.Value := 0 ;
        tdGlobalDiario.Value := 0 ;

        // busco el avance global anterior
        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvancePonderadoDia) as dAvanceGlobal from AvancesGlobales where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha < :fecha and sNumeroOrden = :Orden Group By sNumeroOrden' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
            tdPonderadoAnterior.Text := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select * from AvancesGlobales where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = :Orden' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
        begin
            tdPonderadoDia.Text := connection.BuscaReadOnly.FieldValues ['dAvancePonderadoDia'] ;
            tdPonderadoGlobal.Text := connection.BuscaReadOnly.FieldValues ['dAvancePonderadoGlobal'] ;
        end ;

        // busco el avance global anterior
        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvancePonderadoDia) as dAvanceGlobal from AvancesGlobales where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha < :fecha and sNumeroOrden = :Orden Group By sContrato, sNumeroOrden' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
            tdPonderadoAnterior.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select * from AvancesGlobales where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha = :fecha and sNumeroOrden = :Orden' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
        begin
            tdPonderadoDia.Value := connection.BuscaReadOnly.FieldValues ['dAvancePonderadoDia'] ;
            tdPonderadoGlobal.Value := connection.BuscaReadOnly.FieldValues ['dAvancePonderadoGlobal'] ;
        end ;

        // busco el avance global anterior
        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha < :fecha Group By sContrato' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
            tdGlobalAnterior.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And sNumeroOrden = :Orden And dIdFecha = :fecha and sIdTurno < :Turno Group By sContrato' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
            tdGlobalAnterior.Value := tdGlobalAnterior.Value + Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha = :fecha and sIdTurno = :Turno and sNumeroOrden = :Orden Group By sContrato, dIdFecha' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        connection.BuscaReadOnly.Parameters.ParamByName('Turno').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
            tdDiarioTurno.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        tdGlobalTurno.Value := tdGlobalAnterior.Value + tdDiarioTurno.Value ;

        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha = :fecha Group By sContrato, dIdFecha' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Open ;
        If Connection.BuscaReadOnly.RecordCount > 0 then
             tdFisicoDiario.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        connection.BuscaReadOnly.Active := False ;
        connection.BuscaReadOnly.SQL.Clear ;
        connection.BuscaReadOnly.SQL.Add('Select Sum(dAvance) as dAvanceGlobal from AvancesGlobalesxOrden where sContrato = :Contrato and ' +
                                         'sIdConvenio = :Convenio And dIdFecha <= :fecha Group By sContrato' ) ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('contrato').Value := global_contrato ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').DataType := ftString ;
        connection.BuscaReadOnly.Parameters.ParamByName('convenio').Value := global_convenio ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').DataType := ftDate ;
        connection.BuscaReadOnly.Parameters.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly.Open ;

        If Connection.BuscaReadOnly.RecordCount > 0 then
            tdGlobalDiario.Value := Connection.BuscaReadOnly.FieldValues['dAvanceGlobal'] ;

        sSuperIntendente := '' ;
        sSupervisor := '' ;
        sPuestoSuperintendente := '' ;
        sPuestoSupervisor := '' ;
        sSupervisorTierra := '' ;
        sPuestoSupervisorTierra := '' ;
        connection.BuscaReadOnly2.Active := False ;
        connection.BuscaReadOnly2.SQL.Clear ;
        connection.BuscaReadOnly2.SQL.Add('Select * from firmas where sContrato = :contrato and dIdFecha = :fecha') ;
        connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
        connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_contrato ;
        connection.BuscaReadOnly2.Parameters.ParamByName('fecha').DataType := ftDate ;
        connection.BuscaReadOnly2.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        connection.BuscaReadOnly2.Open ;
        If connection.BuscaReadOnly2.RecordCount > 0 then
        Begin
            sSuperintendente := connection.BuscaReadOnly2.FieldValues['sFirmante1'] ;
            sSupervisor := connection.BuscaReadOnly2.FieldValues['sFirmante2'] ;
            sSupervisorTierra := connection.BuscaReadOnly2.FieldValues['sFirmante4'] ;
            sPuestoSuperintendente := connection.BuscaReadOnly2.FieldValues['sPuesto1'] ;
            sPuestoSupervisor := connection.BuscaReadOnly2.FieldValues['sPuesto2'] ;
            sPuestoSupervisorTierra := connection.BuscaReadOnly2.FieldValues['sPuesto4'] ;
        End
        Else
        Begin
            connection.BuscaReadOnly2.Active := False ;
            connection.BuscaReadOnly2.SQL.Clear ;
            connection.BuscaReadOnly2.SQL.Add('Select * from firmas where sContrato = :contrato and dIdFecha <= :fecha Order By dIdFecha DESC') ;
            connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').DataType := ftString ;
            connection.BuscaReadOnly2.Parameters.ParamByName('Contrato').Value := global_contrato ;
            connection.BuscaReadOnly2.Parameters.ParamByName('fecha').DataType := ftDate ;
            connection.BuscaReadOnly2.Parameters.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            connection.BuscaReadOnly2.Open ;
            If connection.BuscaReadOnly2.RecordCount > 0 then
            Begin
                sSuperintendente := connection.BuscaReadOnly2.FieldValues['sFirmante1'] ;
                sSupervisor := connection.BuscaReadOnly2.FieldValues['sFirmante2'] ;
                sSupervisorTierra := connection.BuscaReadOnly2.FieldValues['sFirmante4'] ;
                sPuestoSuperintendente := connection.BuscaReadOnly2.FieldValues['sPuesto1'] ;
                sPuestoSupervisor := connection.BuscaReadOnly2.FieldValues['sPuesto2'] ;
                sPuestoSupervisorTierra := connection.BuscaReadOnly2.FieldValues['sPuesto4'] ;
            End
        End
    End
    Else
    Begin
        tdPonderadoAnterior.Value := 0 ;
        tdGlobalAnterior.Value := 0 ;
        tdPonderadoDia.Value := 0 ; ;
        tdPonderadoGlobal.Value := 0 ;
        tdDiarioTurno.Value := 0 ;
        tdGlobalTurno.Value := 0 ;
        tdFisicoDiario.Value := 0 ;
        tdGlobalDiario.Value := 0 ;
    End ;  }
End ;
end.
