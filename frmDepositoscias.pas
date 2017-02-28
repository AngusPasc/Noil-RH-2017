unit frmDepositoscias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  StdCtrls, NxEdit, NxStdCtrls, frm_barra, NxPageControl, Mask, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxLookup, Grids, DBGrids,
  NxDBColumns, NxColumns, strUtils, ComCtrls, Buttons, FramedPanel, RXDBCtrl,
  Newpanel, DateUtils, global, JPeg, rxToolEdit, ExtCtrls, ExtDlgs,
  frxClass, frxDBSet, Menus, DBLabelEdit, dblookup, DBTables, Utilerias, UDbGrid,
  AdvGlowButton, rxCurrEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxScrollBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsdxBarPainter, dxBar,
  dxRibbonRadialMenu, PFacturaElectronica, CFDI, PFacturaElectronica_PAC,
  PACFO, GeneradorCBB, PAddenda_PEP,
  JvMemoryDataset, frxExportPDF, ShlObj, cxTextEdit, cxContainer, cxMemo,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxButtons, cxDBLookupComboBox, cxLabel,
  NxPropertyItems, NxPropertyItemClasses,
  NxDBPropertyItems, NxInspector, NxDBInspector, cxImageComboBox, ZSqlUpdate,
  cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView, ImgList,
  cxCalendar, cxCalc, cxDBLabel, cxDBNavigator, Math, cxPCdxBarPopupMenu, cxPC,
  cxListBox, dxCore, cxDateUtils, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, ComObj, UnitExcel,
  cxGroupBox, cxProgressBar, dxBarBuiltInMenu, OverbyteIcsWndControl,
  OverbyteIcsWSocket, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutControl, FormAutoScaler;

type
  Tfrm_Depositoscias = class(TForm)
  frmBarra1: TfrmBarra;
  dszQEgresos: TDataSource;
  zQEgresos: TZQuery;
  dszQCuentasBancarias: TDataSource;
  zQCuentasBancarias: TZQuery;
  zQCuentasBancariassIdNumeroCuenta: TStringField;
  zQCuentasBancariassNombreCuenta: TStringField;
  zQCuentasBancariassFirmanCuenta: TStringField;
  zQEgresosdIdFecha: TDateField;
  zQEgresosiIdFolio: TIntegerField;
  zQEgresossTipoMovimiento: TStringField;
  zQEgresossIdArea: TStringField;
  zQEgresossIdNumeroCuenta: TStringField;
  zQEgresossReferencia: TStringField;
  zQEgresossIdProveedor: TStringField;
  zQEgresossRFC: TStringField;
  zQEgresossRazonSocial: TStringField;
  zQEgresossDomicilio: TStringField;
  zQEgresossCiudad: TStringField;
  zQEgresossCP: TStringField;
  zQEgresossEstado: TStringField;
  zQEgresossTelefono: TStringField;
  zQEgresosdImporteTotal: TFloatField;
  zQEgresoslComprobado: TStringField;
  zQEgresosmDescripcion: TMemoField;
  OpenPicture: TOpenPictureDialog;
  ReporteFotografico: TZQuery;
  ds_ReporteFotografico: TDataSource;
  lblRecord: TLabel;
  dsCompanias: TDataSource;
  qryCompanias: TZQuery;
  zQEgresossIdCompania: TStringField;
  zQEgresosdIva: TFloatField;
  qryConsulta: TZReadOnlyQuery;
  frReporte: TfrxReport;
  frxCompania: TfrxDBDataset;
  zQEgresosdFechaFactura: TDateField;
  zQEgresosTotal: TFloatField;
  zQEgresosiFolio: TIntegerField;
  zQEgresosiIdStatus: TIntegerField;
  zq_statusfacturas: TZQuery;
  ds_statusfacturas: TDataSource;
  zq_statusfacturasiId: TIntegerField;
  zq_statusfacturassNombre: TStringField;
  frxReport1: TfrxReport;
  Print_Factura: TfrxDBDataset;
  Print_InfoCliente: TfrxDBDataset;
  ds_DetallesFacturas: TDataSource;
  Print_DetallesdeFactura: TfrxDBDataset;
  ZQuery1: TZQuery;
  DataSource1: TDataSource;
  ZQuery1dCantidadporConcepto: TFloatField;
  zQEgresossStatus: TStringField;
  frxEgresos: TfrxDBDataset;
  zQEgresossCompanya: TStringField;
  zQEgresossTipoPago: TStringField;
  zQEgresossNumeroDeCuenta: TStringField;
  zQEgresossNumeroPedido: TStringField;
  zQEgresosiImprimeProveedor: TIntegerField;
  qryCompaniassIdCompania: TStringField;
  qryCompaniassRFC: TStringField;
  qryCompaniassRazonSocial: TStringField;
  qryCompaniassDomicilio: TStringField;
  qryCompaniassCiudad: TStringField;
  qryCompaniassCP: TStringField;
  qryCompaniassEstado: TStringField;
  qryCompaniassTelefono: TStringField;
  qryCompaniasdMontoCredito: TFloatField;
  qryCompaniaslStatus: TStringField;
  qryCompaniassNumeroProveedor: TStringField;
  qryFotografico: TZQuery;
  frxfotografia: TfrxDBDataset;
  qryFotograficoildFolio: TIntegerField;
  qryFotograficodIdFecha: TDateField;
  qryFotograficoiImagen: TIntegerField;
  qryFotograficobImagen: TBlobField;
  qryAuxiliar: TZQuery;
  dsConsultaf: TfrxDBDataset;
  qryConsultaf: TZReadOnlyQuery;
  zQEgresossMes: TStringField;
  zQEgresosdFechaRecepcion: TDateField;
  Panel: tNewGroupBox;
  grid_factpag: TDBGrid;
  btAplicar: TButton;
  qryParcPagos: TZQuery;
  dsParcPagos: TDataSource;
  btCancelar: TButton;
  DBText1: TDBText;
  Label24: TLabel;
  zQEgresosdParcialidad: TFloatField;
  Label26: TLabel;
  lblPendiente: TLabel;
  qryParcPagosdImporte: TFloatField;
  qryParcPagosdIva: TFloatField;
  qryParcPagostotalp: TFloatField;
  qryParcPagosdIdFecha: TDateField;
  qryParcPagossDescripcion: TStringField;
  qryParcPagoslPago: TStringField;
  qryParcPagosiIdFolio: TIntegerField;
  qryParcPagossTipo: TStringField;
  zQProyectos: TZQuery;
  dszQProyectos: TDataSource;
  zQEgresossProyecto: TStringField;
  frxProyecto: TfrxDBDataset;
  chkAplicaCuadre: TCheckBox;
  styleGrid: TcxStyleRepository;
  cxstylBlue: TcxStyle;
  cxstylRed: TcxStyle;
  cxstylBlack: TcxStyle;
  cxstylGreen: TcxStyle;
  cxstylMaroon: TcxStyle;
  cxstylBlackStrong: TcxStyle;
  cxstylPurple: TcxStyle;
  dxbrmngr1: TdxBarManager;
  ImprimirFormato1: TdxBarSubItem;
  Reporte1: TdxBarSubItem;
  Editar1: TdxBarButton;
  Registrar1: TdxBarButton;
  Can1: TdxBarButton;
  Eliminar1: TdxBarButton;
  Salir1: TdxBarButton;
  Refresh1: TdxBarButton;
  Insertar1: TdxBarButton;
  Imprimir1: TdxBarSubItem;
  ImprimirFactura1: TdxBarButton;
  ImprimirFacturaATechnology1: TdxBarButton;
  PorFechas1: TdxBarButton;
  Pagadas1: TdxBarButton;
  Canceladas1: TdxBarButton;
  Pendientes1: TdxBarButton;
  otal1: TdxBarButton;
  PorProyecto1: TdxBarButton;
  Graficas1: TdxBarSubItem;
    dxbIngresosgral: TdxBarButton;
  Panel1: TPanel;
  gridPrincipal: TcxGrid;
  Grid_facturas: TcxGridDBTableView;
  Grid_facturasdFechaFactura1: TcxGridDBColumn;
  Grid_facturasdIdFecha1: TcxGridDBColumn;
  Grid_facturasiIdFolio1: TcxGridDBColumn;
  Grid_facturassIdNumeroCuenta1: TcxGridDBColumn;
  Grid_facturasdImporteTotal1: TcxGridDBColumn;
  Grid_facturasdIva1: TcxGridDBColumn;
  Grid_facturasTotal1: TcxGridDBColumn;
  Grid_facturassStatus1: TcxGridDBColumn;
  Grid_facturasdParcialidad1: TcxGridDBColumn;
  gridPrincipalLevel1: TcxGridLevel;
  Panel_Espera: TPanel;
  frx_ExportaPDF: TfrxPDFExport;
  Memoria_Conceptos: TJvMemoryData;
  Memoria_ConceptosdCantidad: TFloatField;
  Memoria_ConceptossUnidad: TStringField;
  Memoria_ConceptossDescripcion: TStringField;
  Memoria_ConceptosdValorUnitario: TFloatField;
  Memoria_ConceptosdTotal: TFloatField;
  Memoria_Factura: TJvMemoryData;
  Memoria_FacturasFolioFactura: TStringField;
  Memoria_FacturasFolioFiscal: TStringField;
  Memoria_FacturasSerieCSD: TStringField;
  Memoria_FacturasRFC: TStringField;
  Memoria_FacturasRegimenFiscal: TStringField;
  Memoria_FacturasLugarFechaExpedicion: TStringField;
  Memoria_FacturasRFC_Receptor: TStringField;
  Memoria_FacturasTotal: TStringField;
  Memoria_FacturadSubTotal: TFloatField;
  Memoria_FacturadIva: TFloatField;
  Memoria_FacturadTotal: TFloatField;
  Memoria_FacturasSelloDigital: TStringField;
  Memoria_FacturasSelloSAT: TStringField;
  Memoria_FacturasCadenaOriginal: TStringField;
  Memoria_FacturasSerieCertificado: TStringField;
  Memoria_FacturasFecha_Hora: TStringField;
  Memoria_FacturabBBCode: TBlobField;
  Memoria_FacturasTipoPago: TStringField;
  Memoria_FacturasFormaPago: TStringField;
  Memoria_FacturadFechaEmision: TDateTimeField;
  Memoria_FacturabLogoEmpresa: TBlobField;
  frxDS_Factura: TfrxDBDataset;
  frxDS_Conceptos: TfrxDBDataset;
  frx_Reporte: TfrxReport;
  Panel_Log: TPanel;
  Memo_Log: TMemo;
  strngfldQEgresossNumeroOrden: TStringField;
  fltfldQEgresosdImporteSubTotal: TFloatField;
  fltfldQEgresosdIva_Porcentaje: TFloatField;
  strngfldQEgresoslAplicaiva: TStringField;
  strngfldQEgresossPoliza: TStringField;
  strngfldQEgresosCFDI_sTipoDocumento: TStringField;
  strngfldQEgresosCFDI_sUUID: TStringField;
  dtmfldQEgresosCFDI_dFechaEmision: TDateTimeField;
  dtmfldQEgresosCFDI_dFechaTimbrado: TDateTimeField;
  strngfldQEgresosCFDI_sSelloCFD: TStringField;
  strngfldQEgresosCFDI_sSelloSAT: TStringField;
  strngfldQEgresosCFDI_sCertificadoCFD: TStringField;
  strngfldQEgresosCFDI_sCertificadoSAT: TStringField;
  strngfldQEgresosCFDI_sCadenaOriginal: TStringField;
  blbfldQEgresosCFDI_bbCode: TBlobField;
  strngfldQEgresosCFDI_sEstado: TStringField;
  strngfldQEgresosCFDI_sRegimenFiscal: TStringField;
  strngfldQEgresosCFDI_sLugarExpedicion: TStringField;
  strngfldQEgresosCFDI_sFormaDePago: TStringField;
  strngfldQEgresosCFDI_sMetodoDePago: TStringField;
  strngfldQEgresosCFDI_sTipoComprobante: TStringField;
  strngfldCompaniassNumeroInterior: TStringField;
  strngfldCompaniassNumeroExterior: TStringField;
  strngfldCompaniassLocalidad: TStringField;
  strngfldCompaniassMunicipio: TStringField;
  strngfldCompaniassColonia: TStringField;
  pnl_Parcialidades: TPanel;
  DBText2: TDBText;
  Label29: TLabel;
  Label30: TLabel;
  Label31: TLabel;
  Button1: TcxButton;
  zq_DetallesFacturas: TZQuery;
  qryCompaniassMail: TStringField;
  qryCompaniassTelefono2: TStringField;
  qryCompaniassContacto: TStringField;
  qryCompaniaslTipo: TStringField;
  qryCompaniassIdCompaniaConf: TStringField;
  qryCompaniassRegistroPatronal: TStringField;
  zQEgresossUsuario: TStringField;
  Grid_facturasColumn1: TcxGridDBColumn;
  tcxstatusGrid_facturasColumn2: TcxGridDBColumn;
  zQEgresosiEjercicio: TIntegerField;
    Col_Grid_facturasCliente: TcxGridDBColumn;
  Grid_facturasColumn3: TcxGridDBColumn;
  zQEgresosiIdTipoMoneda: TStringField;
  zQEgresosiIdPrecioMoneda: TIntegerField;
  dszqAddendaPemex: TDataSource;
  zqAddendaPemex: TZQuery;
  zqAddendaPemexiId: TIntegerField;
  zqAddendaPemexiId_Factura: TIntegerField;
  zqAddendaPemexsCOPADE: TStringField;
  zqAddendaPemexsContrato: TStringField;
  zqAddendaPemexsOSurtimiento: TStringField;
  zqAddendaPemexsNEstimacion: TStringField;
  zqAddendaPemexsNAcreedor: TStringField;
  zqAddendaPemexsEntrada: TStringField;
  zqAddendaPemexsVURegion: TStringField;
  zqAddendaPemexsFichaE: TStringField;
  zqAddendaPemexsFichaF: TStringField;
  zqAddendaPemexsMoneda: TStringField;
  zqAddendaPemexsEjercicio: TStringField;
  Panel2: TPanel;
  Label9: TLabel;
  Label4: TLabel;
  tsIdCuentaBancaria: TcxLookupComboBox;
  tdFechaInicio: TcxDateEdit;
  tdFechaFinal: TcxDateEdit;
  ZUEgresos: TZUpdateSQL;
  Memoria_FacturasIdNumeroCuenta: TStringField;
  dxBarPopupMenu1: TdxBarPopupMenu;
  dxBarButton1: TdxBarButton;
  chk_Timbrar: TcxCheckBox;
  chkIntegraAddenda: TcxCheckBox;
  btnCfdi: TcxButton;
  ZUzqAddendaPemex: TZUpdateSQL;
  FormaPago: TZReadOnlyQuery;
  ds_FormaPago: TDataSource;
  intgrfldQEgresossFormaPago: TIntegerField;
  Grid_Pagos: TcxGrid;
  cxgrdlvlGrid2Level1: TcxGridLevel;
  cxgrdbtblvwBViewPagos: TcxGridDBTableView;
  cxgrdbclmnGrid2DBTableView1dIdFecha1: TcxGridDBColumn;
  cxgrdbclmnGrid2DBTableView1sDescripcion1: TcxGridDBColumn;
  cxgrdbclmnGrid2DBTableView1dImporte1: TcxGridDBColumn;
  cxgrdbclmnGrid2DBTableView1dIva1: TcxGridDBColumn;
  cxgrdbclmnGrid2DBTableView1totalp1: TcxGridDBColumn;
  cxgrdbclmnGrid2DBTableView1lPago1: TcxGridDBColumn;
  IconosBarra: TcxImageList;
  Parcialidades: TcxButton;
  strngfldQEgresoslAplicaPagoParcial: TStringField;
    chkNotaCredito: TcxCheckBox;
    Grid_facturasNotaCredito: TcxGridDBColumn;
    zQEgresoslNotaCredito: TStringField;
    Memoria_FacturamDescripcion: TMemoField;
    Memoria_FacturalNotaCredito: TStringField;
    intgrfld_DetallesFacturasiId: TIntegerField;
    intgrfld_DetallesFacturasiId_Factura: TIntegerField;
    mfld_DetallesFacturassDescripcion: TMemoField;
    zq_DetallesFacturasdCantidad: TFloatField;
    zq_DetallesFacturasdImporte: TFloatField;
    strngfld_DetallesFacturassMedida: TStringField;
    zq_DetallesFacturasdImporte_Unitario: TFloatField;
    strngfld_DetallesFacturaslAplicaIVA: TStringField;
    mfld_DetallesFacturassObservaciones: TMemoField;
    strngfld_DetallesFacturasDescripcion: TStringField;
    strngfldMemoria_ConceptossObservaciones: TStringField;
    dxBarButton2: TdxBarButton;
    tcxstatusGrid_facturasColumn4: TcxGridDBColumn;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    ds_ejecutivo: TDataSource;
    zqEjecutivo: TZQuery;
    zQEgresosiIdVendedor: TIntegerField;
    dxEjecutivos: TdxBarSubItem;
    dxVentasEmpleados: TdxBarButton;
    WSocketMensaje: TWSocket;
    zqQEgresossCotizacion: TStringField;
    zqQEgresossOrdenCompra: TStringField;
    zqQEgresossNumeroEntrada: TStringField;
    NxPageControl1: TcxPageControl;
    NxTabSheet1: TcxTabSheet;
    NxTabSheet2: TcxTabSheet;
    NxTabSheet3: TcxTabSheet;
    NxTabSheet5: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    NxPageControl2: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dbiFolio: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    tdFechaExp: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dbFechaRecepcion: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    tdFecha: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dbCompania: TcxDBLookupComboBox;
    lyproyecto: TdxLayoutItem;
    dbProyecto: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cmbmeses: TcxDBComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    AplicaPagoParcial: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    IrACompanias: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    IrAProyectos: TcxButton;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    dbEstado: TDBLookupListBox;
    a: TMemo;
    e: TMemo;
    i: TMemo;
    o: TMemo;
    dxLayoutControl1Item12: TdxLayoutItem;
    tmDescripcion: TcxDBMemo;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    ts1: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    btnDelete: TcxButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDetalles_Factura: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    DBGrid1: TcxGridDBTableView;
    DBGrid1dCantidad1: TcxGridDBColumn;
    DBGrid1strDesc1: TcxGridDBColumn;
    DBGrid1dImporte1: TcxGridDBColumn;
    DBGrid1Column1: TcxGridDBColumn;
    Vista2: TcxGridDBBandedTableView;
    Vista2Column1: TcxGridDBBandedColumn;
    Vista2Column2: TcxGridDBBandedColumn;
    Vista2Column3: TcxGridDBBandedColumn;
    Vista2Column4: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Item1: TdxLayoutItem;
    DBMemo2: TcxDBExtLookupComboBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    DBCantidad: TcxDBTextEdit;
    dxLayoutControl5Item3: TdxLayoutItem;
    DBEdit3: TcxDBTextEdit;
    dxLayoutControl5Item4: TdxLayoutItem;
    DBUnidad: TcxDBTextEdit;
    dxLayoutControl5Item5: TdxLayoutItem;
    sAplicaIVA: TcxDBCheckBox;
    dxLayoutControl5Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5Item6: TdxLayoutItem;
    sObservaciones: TcxDBMemo;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxLabel5: TcxLabel;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl2Item8: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group5: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item9: TdxLayoutItem;
    lbAbono: TcxLabel;
    dxLayoutControl2Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item10: TdxLayoutItem;
    Abono: TcxLabel;
    dxLayoutControl2Group7: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item11: TdxLayoutItem;
    LbDebe: TcxLabel;
    dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Item12: TdxLayoutItem;
    Debe: TcxLabel;
    dxLayoutControl3Item1: TdxLayoutItem;
    DBCheckBox1: TDBCheckBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    dbenumPedido: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    DBEdit5: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dDivisa: TcxDBImageComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    PrecioDivisa: TcxDBExtLookupComboBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl3Item7: TdxLayoutItem;
    tsReferencia: TcxDBComboBox;
    dxLayoutControl3Item8: TdxLayoutItem;
    DBEdit4: TcxDBLookupComboBox;
    dxLayoutControl3Item9: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl3Item10: TdxLayoutItem;
    edtFolioFiscal: TcxDBTextEdit;
    dxLayoutControl3Item11: TdxLayoutItem;
    cxEjecutivo: TcxDBLookupComboBox;
    dbeCotizacion: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    dbeOc: TcxDBTextEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    dbene: TcxDBTextEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group5: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Item1: TdxLayoutItem;
    tAddenda_sContrato: TDBEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    tAddenda_sOSurtimiento: TDBEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    tAddenda_sNEstimacion: TDBEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    tAddenda_sAcreedor: TDBEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    tAddenda_sEntrada: TDBEdit;
    dxLayoutControl4Item6: TdxLayoutItem;
    tAddenda_sVURegion: TDBEdit;
    dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Item7: TdxLayoutItem;
    tAddenda_sFichaE: TDBEdit;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Item8: TdxLayoutItem;
    tAddenda_sFichaF: TDBEdit;
    dxLayoutControl4Item9: TdxLayoutItem;
    tAddenda_sMoneda: TDBEdit;
    dxLayoutControl4Item10: TdxLayoutItem;
    tAddenda_sEjercicio: TDBEdit;
    Panel3: TPanel;
    txtSubtotal: TEdit;
    txtIva: TEdit;
    txtTotal: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dxbporcuenta: TdxBarButton;
    dxLayoutControl5Group1: TdxLayoutAutoCreatedGroup;
    Grid_facturasColumn4: TcxGridDBColumn;
    Grid_facturasColumn5: TcxGridDBColumn;
    frmtsclr1: TFormAutoScaler;
    Col_Grid_facturasProyecto: TcxGridDBColumn;
  function Tamanyo (Archivo : String): Real ;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure tdFechaKeyPress(Sender: TObject; var Key: Char);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure FormKeyPress(Sender: TObject; var Key: Char);
  procedure zQEgresossTipoMovimientoChange(Sender: TField);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure ReporteFotograficoBeforeDelete(DataSet: TDataSet);
  procedure ReporteFotograficoBeforeEdit(DataSet: TDataSet);
  procedure ReporteFotograficoBeforeInsert(DataSet: TDataSet);
  procedure PorFechas1Click(Sender: TObject);
  procedure zQEgresosCalcFields(DataSet: TDataSet);
  procedure ImprimirFactura1Click(Sender: TObject);
  procedure btnAddClick(Sender: TObject);
  procedure btnEditClick(Sender: TObject);
  procedure btnPostClick(Sender: TObject);
  procedure btnCancelClick(Sender: TObject);
  procedure btnDeleteClick(Sender: TObject);
  procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  procedure ImprimirFacturaATechnology1Click(Sender: TObject);
  procedure otal1Click(Sender: TObject);
  procedure Pagadas1Click(Sender: TObject);
  procedure Canceladas1Click(Sender: TObject);
  procedure Pendientes1Click(Sender: TObject);
  procedure dxbIngresosgralClick(Sender: TObject);
  procedure NxPageControl1Change(Sender: TObject);
  procedure grid_facturasKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  procedure grid_facturasKeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  procedure DBCantidadKeyPress(Sender: TObject; var Key: Char);
  procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
  procedure dbiFolioEnter(Sender: TObject);
  procedure dbiFolioExit(Sender: TObject);
  procedure btAplicarClick(Sender: TObject);
  procedure qryParcPagosCalcFields(DataSet: TDataSet);
  procedure PorProyecto1Click(Sender: TObject);
  procedure Grid_facturasStylesGetContentStyle(Sender: TcxCustomGridTableView;
    ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
    var AStyle: TcxStyle);
  procedure btnCfdiClick(Sender: TObject);
  procedure DBMemo2PropertiesCloseUp(Sender: TObject);
  procedure frx_ReporteGetValue(const VarName: string; var Value: Variant);
  procedure tsIdCuentaBancariaPropertiesCloseUp(Sender: TObject);
  procedure dDivisaPropertiesCloseUp(Sender: TObject);
  procedure tdFechaExpExit(Sender: TObject);
  procedure tdFechaExpEnter(Sender: TObject);
  procedure dbFechaRecepcionEnter(Sender: TObject);
  procedure dbFechaRecepcionExit(Sender: TObject);
  procedure tdFechaEnter(Sender: TObject);
  procedure tdFechaExit(Sender: TObject);
  procedure tmDescripcionEnter(Sender: TObject);
  procedure tmDescripcionExit(Sender: TObject);
  procedure dbCompaniaEnter(Sender: TObject);
  procedure dbCompaniaExit(Sender: TObject);
  procedure dbProyectoEnter(Sender: TObject);
  procedure dbProyectoExit(Sender: TObject);
  procedure cmbmesesEnter(Sender: TObject);
  procedure cmbmesesExit(Sender: TObject);
  procedure tsReferenciaEnter(Sender: TObject);
  procedure tsReferenciaExit(Sender: TObject);
  procedure dbEstadoExit(Sender: TObject);
  procedure dbEstadoEnter(Sender: TObject);
  procedure DBMemo2Enter(Sender: TObject);
  procedure DBMemo2Exit(Sender: TObject);
  procedure DBCantidadEnter(Sender: TObject);
  procedure DBCantidadExit(Sender: TObject);
  procedure DBEdit3Enter(Sender: TObject);
  procedure DBEdit3Exit(Sender: TObject);
  procedure dbenumPedidoEnter(Sender: TObject);
  procedure dbenumPedidoExit(Sender: TObject);
  procedure DBEdit5Enter(Sender: TObject);
  procedure DBEdit5Exit(Sender: TObject);
  procedure dDivisaEnter(Sender: TObject);
  procedure dDivisaExit(Sender: TObject);
  procedure DBEdit4Enter(Sender: TObject);
  procedure DBEdit4Exit(Sender: TObject);
  procedure cambio_estado;
  procedure insertar_valores;
  procedure guardar_kardex;
  procedure tdFechaExpKeyPress(Sender: TObject; var Key: Char);
  procedure dbFechaRecepcionKeyPress(Sender: TObject; var Key: Char);
  procedure tmDescripcionKeyPress(Sender: TObject; var Key: Char);
  procedure dbCompaniaKeyPress(Sender: TObject; var Key: Char);
  procedure dbIvaKeyPress(Sender: TObject; var Key: Char);
  procedure tsReferenciaKeyPress(Sender: TObject; var Key: Char);
  procedure cmbmesesKeyPress(Sender: TObject; var Key: Char);
  procedure dbEstadoKeyPress(Sender: TObject; var Key: Char);
  procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
  procedure dbenumPedidoKeyPress(Sender: TObject; var Key: Char);
  procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  procedure dDivisaKeyPress(Sender: TObject; var Key: Char);
  procedure PrecioDivisaKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sContratoKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sOSurtimientoKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sNEstimacionKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sAcreedorKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sEntradaKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sVURegionKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sFichaEKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sFichaFKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sMonedaKeyPress(Sender: TObject; var Key: Char);
  procedure tAddenda_sEjercicioKeyPress(Sender: TObject; var Key: Char);
  procedure PrecioDivisaEnter(Sender: TObject);
  procedure PrecioDivisaExit(Sender: TObject);
  procedure tAddenda_sContratoEnter(Sender: TObject);
  procedure tAddenda_sContratoExit(Sender: TObject);
  procedure tAddenda_sOSurtimientoEnter(Sender: TObject);
  procedure tAddenda_sOSurtimientoExit(Sender: TObject);
  procedure tAddenda_sNEstimacionEnter(Sender: TObject);
  procedure tAddenda_sNEstimacionExit(Sender: TObject);
  procedure tAddenda_sAcreedorEnter(Sender: TObject);
  procedure tAddenda_sAcreedorExit(Sender: TObject);
  procedure tAddenda_sEntradaEnter(Sender: TObject);
  procedure tAddenda_sEntradaExit(Sender: TObject);
  procedure tAddenda_sVURegionEnter(Sender: TObject);
  procedure tAddenda_sVURegionExit(Sender: TObject);
  procedure tAddenda_sFichaEEnter(Sender: TObject);
  procedure tAddenda_sFichaEExit(Sender: TObject);
  procedure tAddenda_sFichaFEnter(Sender: TObject);
  procedure tAddenda_sFichaFExit(Sender: TObject);
  procedure tAddenda_sMonedaEnter(Sender: TObject);
  procedure tAddenda_sMonedaExit(Sender: TObject);
  procedure tAddenda_sEjercicioEnter(Sender: TObject);
  procedure tAddenda_sEjercicioExit(Sender: TObject);
  procedure IrACompaniasClick(Sender: TObject);
  procedure IrAProyectosClick(Sender: TObject);
  procedure Visualizar_Factura_Timbrada;
  procedure dbCompaniaPropertiesCloseUp(Sender: TObject);
  procedure cambio_estado_conceptos;
  procedure btnPrinterClick(Sender: TObject);
  procedure previsualizar;
  procedure cxButton1Click(Sender: TObject);
  procedure cxButton2Click(Sender: TObject);
  procedure ParcialidadesClick(Sender: TObject);
  procedure qryParcPagosAfterInsert(DataSet: TDataSet);
  procedure qryParcPagosBeforePost(DataSet: TDataSet);
  procedure qryParcPagosBeforeCancel(DataSet: TDataSet);
  procedure qryParcPagosAfterEdit(DataSet: TDataSet);
  procedure cambio_estado_pagos;
  procedure EnviarMensaje (Mensaje, Ip: String);
  procedure Tablero;
  procedure qryParcPagosAfterPost(DataSet: TDataSet);
  procedure qryParcPagosAfterCancel(DataSet: TDataSet);
    procedure sObservacionesEnter(Sender: TObject);
    procedure sObservacionesExit(Sender: TObject);
    procedure zq_DetallesFacturasCalcFields(DataSet: TDataSet);
    procedure tdFechaInicioPropertiesCloseUp(Sender: TObject);
    procedure tdFechaFinalPropertiesCloseUp(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure edtFolioFiscalEnter(Sender: TObject);
    procedure edtFolioFiscalExit(Sender: TObject);
    procedure dxVentasEmpleadosClick(Sender: TObject);
    procedure cxEjecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCotizacionKeyPress(Sender: TObject; var Key: Char);
    procedure dbeOcKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCotizacionEnter(Sender: TObject);
    procedure dbeCotizacionExit(Sender: TObject);
    procedure dbeOcEnter(Sender: TObject);
    procedure dbeOcExit(Sender: TObject);

    procedure dxbporcuentaClick(Sender: TObject);
    procedure llenarCampos();
    procedure Grid_facturasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  //fin de procedure
private
  { Private declarations }
  SumaTotalFactura : Double;
  Mensaje:string;
  IsOpenE, IsOpenD:Boolean;
public
  { Public declarations }
end;

var
  frm_Depositoscias: Tfrm_Depositoscias;
  iFolio : Integer ;
  ValorCad, sArchivo      : String ;
  multi, w, x, z, iva : Double ;
  utgrid:ticdbgrid;
  qryConsultaF   : TZReadOnlyQuery;
  dsConsultaF    : TFrxDBDataset ;
  ItemEmisor,
  ItemReceptor: String;
  Emisor, Receptor: TPFContribuyente;
  Factura: TPFFacturaElectronica;
  Concepto: TPFConcepto;
  Conceptos: TPFConceptos;
  Impuestos: TPFImpuestos;

  Impuesto: TPFImpuesto;

  consecutivos:TPFFolio ;
  ProveedorTimbrado: TPFPac;
  Credenciales: TPFCredenciales;
  TimbreDeFactura: TPFTimbre;
  archivoFacturaXML: String;
  rutaImagenCBB: String;
  GeneradorCBB: TGeneradorCBB;
  AddendaPemex: TPFAddenda_PEP;
  CSD: TPFCSD;
  Function GetDesktopFolder: String;

implementation

uses
  frmGraficabarrasIngresos, frm_connection, frm_setup, frm_repositorio,Func_Genericas, frm_Inteligent,
  frmCompanias, frm_ordenes, frm_PrecioDivisas, frm_formaspago, UInteliDialog;
//fin de uses

{$R *.dfm}

function GetDesktopFolder: string;
var
  buf: array[0..255] of char;
  pidList: PItemIDList;
begin
  Result := 'No Desktop Folder found.';
  SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOP, pidList);
  if (pidList <> nil) then
  begin
    if (SHGetPathFromIDList(pidList, buf)) then Result := buf;
  end;
end;




procedure Tfrm_Depositoscias.btnAddClick(Sender: TObject);
begin
  if (zQEgresos.FieldByName('CFDI_sEstado').AsString = '') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'SIN TIMBRE') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = null) Then
    begin
      cxGrid1Level1.GridView := DBGrid1;
      DBGrid1.DataController.DataSource := ds_DetallesFacturas;
      zq_DetallesFacturas.Append ;
      zq_DetallesFacturas.FieldByName('iId_Factura').AsInteger := zqEgresos.FieldByName('iIdFolio').AsInteger;
      cambio_estado_conceptos;
    end
  else MSG_W('NO SE PUEDEN REALIZAR CAMBIOS A FACTURA TIMBRADA/CANCELADA');
end;

procedure Tfrm_Depositoscias.btnCancelClick(Sender: TObject);
begin
  Zq_DetallesFacturas.Cancel;
  cambio_estado_conceptos;
end;

procedure Tfrm_Depositoscias.btnDeleteClick(Sender: TObject);
var sum, SumaIVA:Double;
begin
  If zq_DetallesFacturas.RecordCount  > 0 then
  begin
    if (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'TIMBRADA') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'CANCELADA') Then
    begin
      MSG_W('NO SE PUEDEN REALIZAR CAMBIOS A FACTURA TIMBRADA/CANCELADA');
      Exit;
    end;
    if MSG_YN('Desea eliminar el Registro Activo?') then
    begin
      try
        Memo_Log.Lines.Add('Iniciando proceso de eliminacion del concepto');
        zq_DetallesFacturas.Delete; //Quito el concepto
        sum := 0;
        SumaIVA := 0;
        if zq_DetallesFacturas.RecordCount > 1 then
        zq_DetallesFacturas.First ;
        while not zq_DetallesFacturas.Eof do
        begin
          //Suma los importes de cada producto
          sum := sum +  (zq_DetallesFacturas.FieldByName('dImporte').AsFloat * zq_DetallesFacturas.FieldByName('dCantidad').AsFloat) ;
          //Valida si el producto aplica IVA
          if zq_DetallesFacturas.FieldByName('lAplicaIVA').AsString = 'Si' then
            SumaIVA := SumaIVA + ((zq_DetallesFacturas.FieldByName('dImporte').AsFloat * zq_DetallesFacturas.FieldByName('dCantidad').AsFloat)*(connection.configuracionCont.FieldByName('IVA').AsFloat/100));
          zq_DetallesFacturas.Next ;
        end;
	      zQEgresos.Edit;
        zQEgresos.FieldByName('dImporteTotal').AsFloat := sum ;
        zqEgresos.FieldByName('dIva').asfloat          := SumaIVA;
        IsOpenE := false;
        zQEgresos.Post;
        IsOpenE := True;
        Memo_Log.Lines.Add('Concepto eliminado correctamente');
      except
        MSG_W('Ocurrio un error al eliminar el registro.');
      end
    end
  end else MSG_W('No hay registros para eliminar');
end;

procedure Tfrm_Depositoscias.btnEditClick(Sender: TObject);
begin
  if (zQEgresos.FieldByName('CFDI_sEstado').AsString = '') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'SIN TIMBRE') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = null) Then
    begin
      if zq_DetallesFacturas.RecordCount > 0 then
      begin
        cxGrid1Level1.GridView := DBGrid1;
        DBGrid1.DataController.DataSource := ds_DetallesFacturas;
        zq_DetallesFacturas.Edit;
        cambio_estado_conceptos;
      end
      else MSG_OK('No hay registro para editar');
    end
  else MSG_W('NO SE PUEDEN REALIZAR CAMBIOS A FACTURA TIMBRADA/CANCELADA');
end;

procedure Tfrm_Depositoscias.btnPostClick(Sender: TObject);
var
  sum, SumaIVA : Double;
  estado : String;
begin
  Memo_Log.Lines.Add('Iniciando proceso de guardado');
  zq_DetallesFacturas.FieldByName('Descripcion').AsString := zq_DetallesFacturas.FieldByName('sDescripcion').AsString; //Para que me deje guardar detalle de zeos
  zq_DetallesFacturas.Post;
  if zq_DetallesFacturas.RecordCount > 0 then
  begin
    sum := 0;
    SumaIVA := 0;
    if zq_DetallesFacturas.RecordCount > 1 then
      zq_DetallesFacturas.First ;
    //Para los productos que no tiene iva
    while not zq_DetallesFacturas.Eof do
    begin
      //Suma los importes de cada producto
      sum := sum +  (zq_DetallesFacturas.FieldByName('dImporte').AsFloat * zq_DetallesFacturas.FieldByName('dCantidad').AsFloat) ;
      //Valida si el producto aplica IVA
      if zq_DetallesFacturas.FieldByName('lAplicaIVA').AsString = 'Si' then
        SumaIVA := SumaIVA + ((zq_DetallesFacturas.FieldByName('dImporte').AsFloat * zq_DetallesFacturas.FieldByName('dCantidad').AsFloat)*(connection.configuracionCont.FieldByName('IVA').AsFloat/100));
      zq_DetallesFacturas.Next ;
    end;

    if chkAplicaCuadre.Checked then
    begin
      zQEgresos.Edit;
      zQEgresos.FieldByName('dImporteTotal').AsFloat :=  StrToFloat(txtSubtotal.Text);
      zqEgresos.FieldByName('dIva').AsFloat          :=  StrToFloat(txtIva.Text);
      zQEgresos.Post;
      zQEgresos.Refresh;
      txtSubtotal.Text := '$ ' + zQEgresos.FieldByName('dImporteTotal').AsString;
      txtIva.Text := '$ ' + zQEgresos.FieldByName('dIva').AsString;
      txtTotal.Text := '$ ' + FloatToStr(zQEgresos.FieldByName('dImporteTotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat);
    end
    else
    begin
	    zQEgresos.Edit;
      zQEgresos.FieldByName('dImporteTotal').AsFloat := sum ;
      zqEgresos.FieldByName('dIva').asfloat          := SumaIVA;
      IsOpenE:= False;
      zQEgresos.Post;
      IsOpenE := True;
    llenarCampos();
    end;
  end;
  cambio_estado_conceptos;
  Tablero;
  Memo_Log.Lines.Add('Proceso de Guardado realizado exitosamente');
  chkAplicacuadre.Checked := False;
end;

procedure Tfrm_Depositoscias.btnPrinterClick(Sender: TObject);
begin
  //if cxGrid1Level1.GridView = DBGrid1 then
    Visualizar_Factura_Timbrada;
end;

procedure Tfrm_Depositoscias.btnCfdiClick(Sender: TObject);
Var
  Qry, QryConceptos: TZQuery;
  IdRegistro: String;
  i, x, Encontrados, id: Integer;
  oCantidad, oUnidad, oDescripcion, oPu, oTotal, oIVA: TComponent;
  CarpetaCFDI, CarpetaEmisor, s: String;
  dTotalFactura: Real;
  m, f: TStream;
  oExportfilter: TfrxCustomExportFilter;
  FacturaTimbrada: Boolean;
  FechaEmision: TDateTime;
  iFolioActual: Integer;
  Marca: TBookmark;

begin

  Marca := zQEgresos.GetBookmark;
  {if (not chk_Timbrar.checked) and (not chkIntegraAddenda.Checked) and (not chkNotaCredito.Checked) then
  begin
    MSG_W('No es posible timbrar la factura por que no ha seleccionado un criterio!');
    Exit;
  end;  }

  If InteliDialog.ShowModal('Aviso', '¿ Esta seguro de timbrar el documento? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
  if zqEgresos.State in [dsInsert, dsEdit] then
  begin
    MSG_W('GUARDA LA INFORMACIÓN Y LUEGO GENERA EL CFDI');
    Exit;
  end;
  if zQEgresos.FieldByName('CFDI_sEstado').AsString = 'TIMBRADA' Then
  begin
    MSG_W('LA FACTURA YA FUE TIMBRADA NO SE PERMITE VOLVER A TIMBRARLA');
    exit;
  end;
  if zQEgresos.FieldByName('iIdTipoMoneda').AsString = '' Then
  begin
    MSG_W('LA DIVISA NO PUEDE VACIA VERIFIQUE LA INFORMACION ANTES DE CONTINUAR!!!!!!');
    exit;
  end;
  if zq_DetallesFacturas.RecordCount = 0 Then
  begin
    MSG_W('No se tienen conceptos no es posible timbrar la factura!!!!!!');
    exit;
  end;
  if zQEgresos.Fieldbyname('sNumeroDeCuenta').AsString = '' then
  begin
    MSG_W('El numero de cuenta no puede quedar vacio');
    exit;
  end;
  if chkNotaCredito.Checked then
  begin
     chk_Timbrar.Checked := True;
  end;
  Panel_Espera.Visible := True;
  Panel_Log.Visible := True;
  Memoria_Factura.Open;
  Memoria_Factura.EmptyTable;
  Memoria_Conceptos.Open;
  Memoria_Conceptos.EmptyTable;
  id := zqegresos.FieldByName('iIdFolio').AsInteger;
  Try
    SumaTotalFactura:=0;



    Qry := TZQuery.Create(Self);
    Qry.Connection := Connection.zConnection;
    Qry.SQL.Clear;
    Qry.SQL.Text := 'select cc.*, rhe.sNombre as Descripcion_Estado '+
                    'from con_configuracion cc '+
                    'inner join rh_estados rhe on (rhe.sClaveEstado = cc.sEstado) '+
                    'where sNombreCorto = :sNombreCorto';
    Qry.ParamByName('sNombreCorto').AsString := global_contrato;
    Qry.Open;

    //Empiezan las Validaaciones para que no la cague el usuario... en el timbrado por jose angel soriano

      if (qry.FieldByName('sRFC').IsNull) or (Qry.FieldValues['sRFC']='') then
      begin
        Memo_Log.Lines.Add('EL RFC DEL EMISOR NO PUEDE IR EN BLANCO');
        MSG_W('EL RFC DEL EMISOR NO PUEDE IR EN BLANCO');
        Exit ;
      end;
    if (qryCompanias.FieldByName('sRFC').IsNull) or (qryCompanias.FieldValues['sRFC']='') Then
      begin
        Memo_Log.Lines.Add('EL RFC DEL RECEPTOR NO PUEDE IR EN BLANCO');
        MSG_W('EL RFC DEL RECEPTOR NO PUEDE IR EN BLANCO');
        Exit ;
      end;


    if (Length(Qry.FieldValues['sRFC'])>11) or (Length(Qry.FieldValues['sRFC'])<14) then
           Memo_Log.Lines.Add('EL RFC DEL EMISOR CORRECTO...')
    else
        begin
           Memo_Log.Lines.Add('EL RFC DEL EMISOR DEBE SER IGUAL A 12 0 13 CARACTERES');
           MSG_W('RFC EMISOR DEBE SER IGUAL A 12 0 13 CARACTERES');
           Exit ;
        end;



    If (Length(qryCompanias.FieldValues['sRFC'])>11) or (Length(qryCompanias.FieldValues['sRFC'])<14) then
           Memo_Log.Lines.Add('EL RFC DEL RECEPTOR CORRECTO...')
    Else
        begin
           Memo_Log.Lines.Add('EL RFC DEL RECEPTOR DEBE SER IGUAL A 12 0 13 CARACTERES');
           MSG_W('RFC RECEPTOR DEBE SER IGUAL A 12 0 13 CARACTERES');
           Exit ;
        end;

    if Qry.FieldByName('sDireccion1').IsNull then
       begin
         InteliDialog.ShowModal('Warning', 'NO SE PUEDE DEJAR NULO LA DIRECCION ', mtInformation, [mbOk], 0);
         exit ;
       end;
    if Qry.FieldByName('sDireccion1').AsString='*' then
        begin
          InteliDialog.ShowModal('Warning', 'NO SE PUEDE DEJAR * EN LA DIRECCION ', mtInformation, [mbOk], 0);
          exit ;
        end;


    //Para el certificado y llave para timbrar
    CSD.Certificado := Qry.FieldByName('sCertificados_Certificado').AsString;
    CSD.Llave       := Qry.FieldByName('sCertificados_Llave').AsString;
    CSD.Clave       := Qry.FieldByName('sCertificados_Contrasena').AsString;
    //Para los datos del emisor
    Emisor.RFC                      := Qry.FieldByName('sRFC').AsString;
    Emisor.RazonSocial              := trim(Qry.FieldByName('sNombre').AsString);
    Emisor.Domicilio.Calle          := trim(Qry.FieldByName('sDireccion1').AsString);
    Emisor.Domicilio.Numero         := Qry.FieldByName('NExterior').AsString;
    Emisor.Domicilio.NumeroInterior := Qry.FieldByName('NInterior').AsString;
    Emisor.Domicilio.CodigoPostal   := Qry.FieldByName('sCP').AsString;
    Emisor.Domicilio.Colonia        := trim(Qry.FieldByName('sDireccion2').AsString);
    Emisor.Domicilio.Municipio      := trim(Qry.FieldByName('sDireccion3').AsString);
    Emisor.Domicilio.Estado         := trim(Qry.FieldByName('Descripcion_Estado').AsString);
    Emisor.Domicilio.Pais           := 'MEXICO';
    Emisor.Domicilio.Localidad      := trim(Qry.FieldByName('sLocalidad').AsString);
    Emisor.ExpedidoEn               := Emisor.Domicilio;
    Emisor.RegimenFiscal            := trim(Qry.FieldByName('sRegimen').AsString);

    //Para los datos de receptor
    qryCompanias.Locate('sIdCompania', zQEgresos.FieldByName('sIdCompania').AsString,[]);
    Receptor.RFC                       := QryCompanias.FieldByName('sRFC').AsString;
    Receptor.RazonSocial               := trim(QryCompanias.FieldByName('sRazonSocial').AsString);
    Receptor.Domicilio.Calle           := trim(QryCompanias.FieldByName('sDomicilio').AsString);
    Receptor.Domicilio.Numero          := trim(QryCompanias.FieldByName('sNumeroExterior').AsString);
    Receptor.Domicilio.NumeroInterior  := QryCompanias.FieldByName('sNumeroInterior').AsString;
    Receptor.Domicilio.CodigoPostal    := QryCompanias.FieldByName('sCP').AsString;
    Receptor.Domicilio.Colonia         := trim(QryCompanias.FieldByName('sColonia').AsString);
    Receptor.Domicilio.Municipio       := trim(QryCompanias.FieldByName('sMunicipio').AsString);
    Receptor.Domicilio.Estado          := trim(QryCompanias.FieldByName('sEstado').AsString);
    Receptor.Domicilio.Pais            :='MEXICO';
    Receptor.Domicilio.Localidad       := trim(QryCompanias.FieldByName('sLocalidad').AsString);



    Memo_Log.Lines.Add('Generando Factura CFD');
    Application.ProcessMessages;

    Factura := TPFFacturaElectronica.Create(Emisor, Receptor, trFactura);

    if chkNotacredito.Checked then
       Factura.Propiedades.TipoDeComprobante := 'egreso'
    else
       Factura.Propiedades.TipoDeComprobante := 'ingreso';
    FormaPago.locate('sIdFormaPago',zQEgresos.FieldByName('sFormaPago').asInteger,[]);
    Factura.Propiedades.FormaDePago   := FormaPago.FieldByName('Descripcion').asString;
    Factura.Propiedades.MetodoDePago  := zQEgresos.FieldByName('sReferencia').AsString;
    Factura.Folio.Folio := zQEgresos.FieldByName('iFolio').AsInteger ;

    Factura.Propiedades.Moneda        := dDivisa.EditValue;
    //Genera los conceptos
    i := 0;
    zq_DetallesFacturas.First;
    while Not zq_DetallesFacturas.Eof do
    begin
      Concepto.Cantidad := zq_DetallesFacturas.FieldByName('dCantidad').AsFloat;
      Concepto.Unidad   := zq_DetallesFacturas.FieldByName('sMedida').AsString;
      frmrepositorio.ZQInsumos.locate('sidinsumo', zq_DetallesFacturas.FieldByName('sDescripcion').AsString,[]);
      Concepto.Descripcion    := frmrepositorio.ZQInsumos.FieldByName('mDescripcion').AsString;
      Concepto.PrecioUnitario := zq_DetallesFacturas.FieldByName('dImporte').AsFloat;
      Factura.AgregarConceptos(Concepto);
      Memoria_Conceptos.Append;
      Memoria_Conceptos.FieldByName('dCantidad').AsFloat      := Concepto.Cantidad;
      Memoria_Conceptos.FieldByName('sUnidad').AsString       := Concepto.Unidad;
      Memoria_Conceptos.FieldByName('sDescripcion').AsString  := Concepto.Descripcion;
      Memoria_Conceptos.FieldByName('dValorUnitario').AsFloat := Concepto.PrecioUnitario;
      Memoria_Conceptos.FieldByName('dTotal').AsFloat         := Concepto.Cantidad * Concepto.PrecioUnitario;
      Memoria_Conceptos.FieldByName('sObservaciones').AsString:= zq_DetallesFacturas.FieldByName('sObservaciones').AsString;
      Memoria_Conceptos.Post;
      SumaTotalFactura := SumaTotalFactura + Memoria_Conceptos.FieldByName('dTotal').AsFloat;
      zq_DetallesFacturas.Next;
    end;

    Impuesto.Tipo := impTrasladado;
    Impuesto.Impuesto:='IVA';
    Impuesto.Tasa:= (connection.configuracionCont.FieldByName('IVA').AsFloat);
    //Le paso el valor del IVA de los productos
    Impuesto.Importe:= zQEgresos.FieldByName('dIva').AsFloat;
    Factura.AgregarImpuestos(Impuesto);
    CarpetaCFDI :=  connection.configuracionCont.FieldByName('sRuta').asString +'\'+ connection.configuracionCont.FieldByName('sNombreCarpeta').asString;
    if Not(DirectoryExists(CarpetaCFDI)) then
      CreateDir(CarpetaCFDI);
    CarpetaEmisor := CarpetaCFDI + '\' + QryCompanias.FieldByName('sRFC').AsString;
    if Not(DirectoryExists(CarpetaEmisor)) then
    begin
      CreateDir(CarpetaEmisor);
    end;

    archivoFacturaXML := CarpetaEmisor + '\' + zqEgresos.FieldByName('iFolio').AsString + '-' + Receptor.RazonSocial + '.xml';
    rutaImagenCBB := CarpetaEmisor + '\' + zqEgresos.FieldByName('iFolio').AsString + '-' + Receptor.RazonSocial + '.jpg';

    if chkIntegraAddenda.Checked then
    begin
      if zqAddendaPemex.RecordCount > 0 then
      begin
        AddendaPemex              := TPFAddenda_PEP.Create;
        AddendaPemex.Contrato     := zqAddendaPemex.FieldByName('sContrato').AsString;
        AddendaPemex.Surtimiento  := zqAddendaPemex.FieldByName('sOSurtimiento').AsString;
        AddendaPemex.Estimacion   := zqAddendaPemex.FieldByName('sNEstimacion').AsString;
        AddendaPemex.Acreedor     := zqAddendaPemex.FieldByName('sNAcreedor').AsString;
        AddendaPemex.Entrada      := zqAddendaPemex.FieldByName('sEntrada').AsString;
        AddendaPemex.VURegion     := zqAddendaPemex.FieldByName('sVURegion').AsString;
        AddendaPemex.FichaE       := zqAddendaPemex.FieldByName('sFichaE').AsString;
        AddendaPemex.FichaF       := zqAddendaPemex.FieldByName('sFichaF').AsString;
        AddendaPemex.Moneda       := zqAddendaPemex.FieldByName('sMoneda').AsString;
        AddendaPemex.Ejercicio    := zqAddendaPemex.FieldByName('sEjercicio').AsString;
        AddendaPemex.Generar;
        Factura.InsertarAddenda(AddendaPemex.XML);
      end;
    end;

    Factura.SellarXML(CSD); //Esta linea va antes de "generar"

    Factura.Generar;
    FechaEmision := Now();
    FacturaTimbrada := False;
    Memoria_Factura.Append;
    Try
      if chk_Timbrar.Checked then
      begin
        ProveedorTimbrado := TPFPACFO.Create;
        Credenciales.RFC  := Emisor.RFC;
        ProveedorTimbrado.AsignarCredenciales(Credenciales);
        TimbreDeFactura   := ProveedorTimbrado.TimbrarXML(Factura.XML);
        Memo_Log.Lines.Add('Solicitando Timbre al PAC...');
        Application.ProcessMessages;
        Factura.AsignarTimbreFiscal(TimbreDeFactura);
        Application.ProcessMessages;
        Factura.Guardar(archivoFacturaXML);
        generadorCBB := TGeneradorCBB.Create;
        Try
          generadorCBB.GenerarImagen(Emisor,
                                   Receptor,
                                   Factura.Total,
                                   TimbreDeFactura.UUID,
                                   rutaImagenCBB);
        Finally
          generadorCBB.Free;
        End;
        Application.ProcessMessages;
        Try
          m := Memoria_Factura.CreateBlobStream(Memoria_Factura.FieldByName('bBBCode'), bmWrite);
          f := TFileStream.Create(rutaImagenCBB, fmOpenRead);
          m.CopyFrom(f, f.Size);
        Finally
          f.Free;
          m.Free;
        End;
        FacturaTimbrada := True;
        Memoria_Factura.FieldByName('sFolioFiscal').AsString      := TimbreDeFactura.UUID;
        Memoria_Factura.FieldByName('sSelloDigital').AsString     := TimbreDeFactura.SelloCFD;
        Memoria_Factura.FieldByName('sSelloSAT').AsString         := TimbreDeFactura.SelloSAT;
        Memoria_Factura.FieldByName('sCadenaOriginal').AsString   := Factura.CadenaOriginal;
        Memoria_Factura.FieldByName('sSerieCertificado').AsString := TimbreDeFactura.NoCertificadoSAT;
        Memoria_Factura.FieldByName('sFecha_Hora').AsDateTime     := TimbreDeFactura.FechaTimbrado;
      end else
      begin
        Factura.Guardar(archivoFacturaXML);
      end;
      Memoria_Factura.FieldByName('sFolioFactura').AsString := zqEgresos.FieldByName('iFolio').AsString;
      Memoria_Factura.FieldByName('sRFC').AsString := Emisor.RFC;//Qry.FieldByName('sRFC').AsString;
      Memoria_Factura.FieldByName('sRFC_Receptor').AsString := Receptor.RFC;
      Memoria_Factura.FieldByName('sRegimenFiscal').AsString := Emisor.RegimenFiscal;
      Memoria_Factura.FieldByName('dFechaEmision').AsDateTime := FechaEmision;
      Memoria_Factura.FieldByName('bLogoEmpresa').AsVariant := Connection.configuracion.FieldByName('bImagen').AsVariant;//Qry.FieldByName('bLogoEmpresa').AsVariant;
      Memoria_Factura.FieldByName('sLugarFechaExpedicion').AsString := Factura.LugarDeExpedicion + ' ' + FormatDateTime('yyyy-mm-dd', Factura.FechaGeneracion) + 'T' + FormatDateTime('hh:mm:ss', Factura.FechaGeneracion);
      Memoria_Factura.FieldByName('sSerieCSD').AsString := Factura.Certificado.NumeroSerie;
      if dDivisa.EditValue = 'MXP' then
        Memoria_Factura.FieldByName('sTotal').AsString := CantidadEnLetra(Factura.Total, 1)
      else
        Memoria_Factura.FieldByName('sTotal').AsString   := CantidadEnLetra(Factura.Total, 2);
      Memoria_Factura.FieldByName('dSubTotal').AsFloat   := zqEgresos.FieldByName('dImporteTotal').AsFloat;
      Memoria_Factura.FieldByName('dIva').AsFloat := zqEgresos.FieldByName('dIVA').AsFloat;
      Memoria_Factura.FieldByName('dTotal').AsFloat      := Factura.Total;
      FormaPago.locate('sIdFormaPago',zQEgresos.FieldByName('sFormaPago').asInteger,[]);
      Memoria_Factura.FieldByName('sTipoPago').AsString  := FormaPago.FieldByName('Descripcion').asString;
      Memoria_Factura.FieldByName('sFormaPago').AsString := zQEgresos.FieldByName('sReferencia').AsString;

      Memoria_Factura.FieldByName('sFolioFactura').AsString := IntToStr(zQEgresos.FieldByName('iFolio').AsInteger) ;

      Memoria_Factura.FieldByName('mDescripcion').AsString := zQEgresos.Fieldbyname('mDescripcion').AsString;
      Memoria_Factura.FieldByName('sIdNumeroCuenta').AsString := zQEgresos.Fieldbyname('sNumeroDeCuenta').AsString;
      Memoria_Factura.FieldByName('lNotaCredito').AsString    := zqEgresos.FieldByName('lNotaCredito').AsString;
      Memo_Log.Lines.Add('Cadena Original del Timbre recibido:');
      Memo_Log.Lines.Add(Factura.CadenaOriginal);
      Application.ProcessMessages;
    Finally
      Memoria_Factura.Post;
      ProveedorTimbrado.Free;
    End;
    Memo_Log.Lines.Add('Factura en formato XML Generada con éxito: ' + archivoFacturaXML);
    Application.ProcessMessages;
    zqEgresos.Edit;
    zqEgresos.FieldByName('CFDI_sTipoDocumento').AsString       := 'FACTURA';
    FormaPago.locate('sIdFormaPago',zQEgresos.FieldByName('sFormaPago').asInteger,[]);
    zqEgresos.FieldByName('CFDI_sFormaDePago').AsString         := FormaPago.FieldByName('Descripcion').asString;
    zqEgresos.FieldByName('dImporteSubTotal').AsFloat           := zqEgresos.FieldByName('dImporteTotal').AsFloat;
    if chkNotaCredito.Checked then
       zqEgresos.FieldByName('CFDI_sTipoComprobante').AsString  := 'egreso'
    else
       zqEgresos.FieldByName('CFDI_sTipoComprobante').AsString  := 'ingreso';
    zqEgresos.FieldByName('CFDI_sMetodoDePago').AsString        := zQEgresos.FieldByName('sReferencia').AsString;
    zqEgresos.FieldByName('CFDI_sLugarExpedicion').AsString     := Emisor.ExpedidoEn.Localidad + ', ' + Emisor.ExpedidoEn.Estado;
    zqEgresos.FieldByName('CFDI_sRegimenFiscal').AsString       := Emisor.RegimenFiscal;
    zqEgresos.FieldByName('CFDI_dFechaEmision').AsDateTime      := Memoria_Factura.FieldByName('dFechaEmision').AsDateTime;//FechaEmision;
    zqEgresos.FieldByName('CFDI_sEstado').AsString              := 'SIN TIMBRE';
    zqEgresos.FieldByName('CFDI_sCertificadoCFD').AsString      := Memoria_Factura.FieldByName('sSerieCSD').AsString;
    if FacturaTimbrada then
    begin
      zqEgresos.FieldByName('CFDI_sCertificadoSAT').AsString    := Memoria_Factura.FieldByName('sSerieCertificado').AsString;
      zqEgresos.FieldByName('CFDI_sUUID').AsString              := Memoria_Factura.FieldByName('sFolioFiscal').AsString;
      zqEgresos.FieldByName('CFDI_sSelloCFD').AsString          := Memoria_Factura.FieldByName('sSelloDigital').AsString;
      zqEgresos.FieldByName('CFDI_sSelloSAT').AsString          := Memoria_Factura.FieldByName('sSelloSAT').AsString;
      zqEgresos.FieldByName('CFDI_sCadenaOriginal').AsString    := Memoria_Factura.FieldByName('sCadenaOriginal').AsString;
      zqEgresos.FieldByName('CFDI_dFechaTimbrado').AsDateTime   := Memoria_Factura.FieldByName('sFecha_Hora').AsDateTime;
      zqEgresos.FieldByName('CFDI_sEstado').AsString            := 'TIMBRADA';
      zqEgresos.FieldByName('CFDI_bbCode').AsVariant            := Memoria_Factura.FieldByName('bBBCode').AsVariant;
    end;
    isopenE := false;
    Grid_facturas.DataController.DataSource := dszQEgresos;
    zqEgresos.Post;
    Grid_facturas.DataController.DataSource := dszQEgresos;
    isopenE := true;
    zQEgresos.Locate('iIdFolio', id, []);
    // Actualizo Kardex del Sistema ....
    connection.zCommand.Active := False ;
    connection.zCommand.SQL.Clear ;
    connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                              'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)')  ;
    connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
    connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
    connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
    connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
    connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
    connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
    connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
    connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
    connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
    if chk_Timbrar.Checked then
      connection.zcommand.Params.ParamByName('Descripcion').Value := 'Se emitio y se timbro la factura: ' + zQEgresos.FieldByName('iFolio').asString +' por el usuario: '+ global_usuario + ' en el modulo de depositos compañia, La compañia que la emitio es: '+ global_contrato
    else
      connection.zcommand.Params.ParamByName('Descripcion').Value := 'Se emitio una factura sin timbrar: ' + zQEgresos.FieldByName('iFolio').asString +' por el usuario: '+ global_usuario + ' en el modulo de depositos compañia, La compañia que la emitio es: '+ global_contrato;
    connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
    connection.zcommand.Params.ParamByName('Origen').Value := 'Creacion Factura' ;
    connection.zCommand.ExecSQL ;
    qryCompanias.Locate('sIdCompania', zQEgresos.FieldByName('sIdCompania').AsString,[]);
    Panel_Espera.Visible := False;
    zQEgresos.Locate('iIdFolio', id, []);
    frx_Reporte.LoadFromFile(global_files + global_miReporte + '_cadFactura3.fr3');

       if not FileExists(global_files + global_miReporte + '_cadFactura3.fr3') then
       begin
         showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_cadFactura3.fr3 no existe, notifique al administrador del sistema');
         frx_Reporte.ShowReport();
       end;



    oExportfilter := TfrxCustomExportFilter(frx_ExportaPDF);
    oExportFilter.ShowDialog := False;
    oExportFilter.FileName := CarpetaEmisor + '\' + zqEgresos.FieldByName('iFolio').AsString + '-' + Receptor.RazonSocial + '.pdf';
    frx_Reporte.PrepareReport(True);
    frx_Reporte.Export(oExportFilter);
    frx_Reporte.ShowPreparedReport;                                     
    chk_Timbrar.Checked := False;
    chkIntegraAddenda.Checked := False;
    Grid_facturas.DataController.DataSource := nil;
    DBGrid1.DataController.DataSource := nil;
    Vista2.DataController.DataSource := nil;
    zQEgresos.GotoBookmark(Marca);
    zQEgresos.FreeBookmark(Marca);
    Grid_facturas.DataController.DataSource := dszQEgresos;
    DBGrid1.DataController.DataSource := ds_DetallesFacturas;
    Vista2.DataController.DataSource := ds_DetallesFacturas;
  except
    on E: Exception do
    begin
      Memo_Log.Lines.Add('Ocurrio un error: ' + E.Message + e.ClassName);
      Panel_Espera.Visible := False;
      if chkNotacredito.Checked then
         chk_Timbrar.Checked := False;
      zqEgresos.Cancel;
    End;
  End;
end;

procedure Tfrm_Depositoscias.btAplicarClick(Sender: TObject);
Var
  subtotal1, iva1 : Double ;
  Marca : TBookmark;
begin
  subtotal1:= 0;         //Se inicializa la variable
  iva1      := 0;         //Se inicializa la variable
  Marca := zQEgresos.GetBookmark;  //Se guarda la posicion del tabla
  if qryParcPagos.RecordCount > 0 then  //
  begin
    qryParcPagos.First;
    while not qryParcPagos.Eof do
    begin
      if qryParcPagos.FieldByName('lPago').AsString = 'SI' then
      begin
        subtotal1 := subtotal1 + qryParcPagos.FieldByName('dImporte').AsFloat;
        iva1 := iva1 + qryParcPagos.FieldByName('dIva').AsFloat;
      end;
      qryParcPagos.Next
    end;
  end;
  if RoundTo((zQEgresos.FieldByName('Total').AsFloat),-2) >= RoundTo((subtotal1 + iva1), -2) then
  begin
    zQEgresos.edit;
    zQEgresos.FieldByName('dParcialidad').AsFloat := subtotal1 + iva1;
    IsOpenE := False;
    zQEgresos.Post;
    IsOpenE := true;
    zQEgresos.GotoBookmark(Marca) ;
    zQEgresos.FreeBookmark(Marca) ;
    Label31.caption :='$'+FloatToStr(zQEgresos.FieldByName('Total').AsFloat - zQEgresos.FieldByName('dParcialidad').AsFloat);
    MSG_OK('Pago aplicado con exito');
  end else msg_w('El Monto Total de las Parcialidades es Mayor a la Factura');
end;

procedure Tfrm_Depositoscias.Canceladas1Click(Sender: TObject);
begin
  qryConsultaF.Active := False ;
  qryConsultaF.SQL.Clear ;
  qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                      'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                      'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                      'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                      'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                      'Where i.sTipoMovimiento="DEPOSITO" and i.iIdFolio >0 and f.sNombre="CANCELADA" and b.sIdCompaniaConf = :sIdCompaniaConf ' +
                      'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 and c.sIdCompaniaConf =:sIdCompaniaConf Order by i.iFolio ');
  qryConsultaF.ParamByName('Fecha1').AsDate           := tdFechaInicio.Date ;
  qryConsultaF.ParamByName('Fecha2').AsDate           := tdFechaFinal.Date ;
  qryConsultaF.ParamByName('sIdCompaniaConf').AsString:= global_contrato;
  qryConsultaF.Open ;
  frReporte.PreviewOptions.MDIChild := False ;
  frReporte.PreviewOptions.Modal := True ;
  frReporte.PreviewOptions.ShowCaptions := False ;
  frReporte.Previewoptions.ZoomMode := zmPageWidth ;
  frReporte.LoadFromFile(Global_Files+ global_miReporte + '_CADfrFacturasT.fr3') ;
  frReporte.ShowReport() ;
    if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files + global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;
end;

procedure Tfrm_Depositoscias.cmbmesesEnter(Sender: TObject);
begin
  cmbmeses.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.cmbmesesExit(Sender: TObject);
begin
  cmbmeses.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.cmbmesesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbEstado.SetFocus;
end;

procedure Tfrm_Depositoscias.IrACompaniasClick(Sender: TObject);
begin
  if zQEgresos.State IN [dsEdit, dsInsert] then
  begin
    Application.CreateForm(Tfrm_Companias, frm_Companias);
    bandera_formulario := 'frm_Depositoscias';
    frm_Companias.FormStyle := fsNormal;
    frm_Companias.Width      := 885;
    frm_Companias.Height     := 517;
    frm_Companias.Position := poscreencenter;
    frm_Companias.Hide;
    frm_Companias.SHowmodal;
    frm_Companias.FormStyle := fsMDIChild;
    frm_Companias.close;
    dbCompaniaPropertiesCloseUp(dbCompania);
    frm_Depositoscias.zQEgresos.FieldByName('sNumeroOrden').AsString := '';
  end;
end;

procedure Tfrm_Depositoscias.IrAProyectosClick(Sender: TObject);
begin
  if zQEgresos.State IN [dsEdit, dsInsert] then
  begin
    Application.CreateForm(Tfrmordenes, frmordenes);
    bandera_formulario    := 'frm_Depositoscias';
    frmOrdenes.FormStyle  := fsNormal;
    frmOrdenes.Width      := 1054;
    frmOrdenes.Height     := 547;
    frmOrdenes.Position   := poscreencenter;
    frmOrdenes.Hide;
    frmOrdenes.SHowmodal;
    frmOrdenes.FormStyle  := fsMDIChild;
    frmOrdenes.Close;
    dbCompaniaPropertiesCloseUp(dbCompania);
  end;
end;

procedure Tfrm_Depositoscias.cxButton1Click(Sender: TObject);
begin
  if zQEgresos.State IN [dsEdit, dsInsert] then
  begin
    Application.CreateForm(TfrmPrecioDivisas, frmPrecioDivisas);
    bandera_formulario := 'frm_Depositoscias';
    frmPrecioDivisas.FormStyle := fsNormal;
    frmPrecioDivisas.Width      := 793;
    frmPrecioDivisas.Height     := 467;
    frmPrecioDivisas.Position := poscreencenter;
    frmPrecioDivisas.Hide;
    frmPrecioDivisas.SHowmodal;
    frmPrecioDivisas.FormStyle := fsMDIChild;
    frmPrecioDivisas.close;
    dDivisaPropertiesCloseUp(dDivisa);
  end;
end;

procedure Tfrm_Depositoscias.cxButton2Click(Sender: TObject);
begin
  if zQEgresos.State IN [dsEdit, dsInsert] then
  begin
    Application.CreateForm(Tfrmformaspago, frmformaspago);
    bandera_formulario := 'frm_Depositoscias';
    frmformaspago.FormStyle := fsNormal;
    frmformaspago.Width      := 711;
    frmformaspago.Height     := 474;
    frmformaspago.Position := poscreencenter;
    frmformaspago.Hide;
    frmformaspago.SHowmodal;
    frmformaspago.FormStyle := fsMDIChild;
    frmformaspago.close;
  end;
end;

procedure Tfrm_Depositoscias.cxEjecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then
  dbeCotizacion.SetFocus ;
end;

procedure Tfrm_Depositoscias.PrecioDivisaEnter(Sender: TObject);
begin
  PrecioDivisa.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.PrecioDivisaExit(Sender: TObject);
begin
  PrecioDivisa.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.PrecioDivisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dbEnumPedido.setFocus ;

end;

procedure Tfrm_Depositoscias.dbCompaniaEnter(Sender: TObject);
begin
  dbCompania.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dbCompaniaExit(Sender: TObject);
begin
  dbCompania.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dbCompaniaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbProyecto.SetFocus;
end;

procedure Tfrm_Depositoscias.dbCompaniaPropertiesCloseUp(Sender: TObject);
begin
  if dbCompania.EditValue <> null then
  begin
    zqProyectos.Filtered := False;
    zqProyectos.Filter := 'sIdCompania = '+ QuotedStr(dbCompania.EditValue);
    zqProyectos.Filtered := True;
  end;
end;

procedure Tfrm_Depositoscias.dbeCotizacionEnter(Sender: TObject);
begin
  dbeCotizacion.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Depositoscias.dbeCotizacionExit(Sender: TObject);
begin
  dbeCotizacion.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Depositoscias.dbeCotizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    dbeOc.SetFocus ;
end;

procedure Tfrm_Depositoscias.DBCantidadEnter(Sender: TObject);
begin
  DBCantidad.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.DBCantidadExit(Sender: TObject);
begin
  DBCantidad.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.DBCantidadKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBEdit3.SetFocus;
end;

procedure Tfrm_Depositoscias.DBEdit3Enter(Sender: TObject);
begin
  DBEdit3.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.DBEdit3Exit(Sender: TObject);
begin
  DBEdit3.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBMemo2.SetFocus
end;

procedure Tfrm_Depositoscias.DBEdit4Enter(Sender: TObject);
begin
  DBEdit4.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.DBEdit4Exit(Sender: TObject);
begin
  DBEdit4.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBEdit5.SetFocus;
end;

procedure Tfrm_Depositoscias.DBEdit5Enter(Sender: TObject);
begin
  DBEdit5.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.DBEdit5Exit(Sender: TObject);
begin
  DBEdit5.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dDivisa.SetFocus;
end;


procedure Tfrm_Depositoscias.dbenumPedidoEnter(Sender: TObject);
begin
  dbEnumPedido.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dbenumPedidoExit(Sender: TObject);
begin
  dbEnumPedido.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dbenumPedidoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBEdit4.SetFocus;
end;

procedure Tfrm_Depositoscias.dbeOcEnter(Sender: TObject);
begin
  dbeOc.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Depositoscias.dbeOcExit(Sender: TObject);
begin
  dbeOc.Style.Color := global_color_salidaERP;
end;

procedure Tfrm_Depositoscias.dbeOcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
      // dbeNe.SetFocus ;
end;

procedure Tfrm_Depositoscias.dbEstadoEnter(Sender: TObject);
begin
  dbEstado.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dbEstadoExit(Sender: TObject);
begin
  dbEstado.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dbEstadoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tdFechaExp.SetFocus;
end;

procedure Tfrm_Depositoscias.dbFechaRecepcionEnter(Sender: TObject);
begin
  dbFechaRecepcion.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dbFechaRecepcionExit(Sender: TObject);
begin
  dbFechaRecepcion.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dbFechaRecepcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tdFecha.SetFocus;
end;

procedure Tfrm_Depositoscias.dbiFolioEnter(Sender: TObject);
begin
  dbiFolio.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dbiFolioExit(Sender: TObject);
begin
  dbiFolio.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dbIvaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsReferencia.SetFocus;
end;

procedure Tfrm_Depositoscias.DBMemo2Enter(Sender: TObject);
begin
  DBMemo2.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.DBMemo2Exit(Sender: TObject);
begin
  DBMemo2.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBUnidad.SetFocus;
end;

procedure Tfrm_Depositoscias.DBMemo2PropertiesCloseUp(Sender: TObject);
begin
  if zq_DetallesFacturas.State in [dsInsert, dsEdit] then
  begin
    zq_DetallesFacturas.FieldByName('sMedida').AsString := frmrepositorio.ZQInsumos.FieldByName('sMEdida').AsString;
    zq_DetallesFacturas.FieldByName('lAplicaIVa').AsString := frmrepositorio.ZQInsumos.FieldByName('AplicaIVA').AsString;

    zq_DetallesFacturas.FieldByName('dImporte').AsFloat := frmrepositorio.ZQInsumos.FieldByName('dVentaMN').AsFloat;
  end;
end;

procedure Tfrm_Depositoscias.dbProyectoEnter(Sender: TObject);
begin
  dbProyecto.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dbProyectoExit(Sender: TObject);
begin
  dbProyecto.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dDivisaEnter(Sender: TObject);
begin
  dDivisa.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.dDivisaExit(Sender: TObject);
begin
  dDivisa.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.dDivisaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then PrecioDivisa.SetFocus;
end;

procedure Tfrm_Depositoscias.dDivisaPropertiesCloseUp(Sender: TObject);
begin
  if dDivisa.editvalue <> null then
  begin
    frmrepositorio.ZQPrecioDivisas.Filtered := False;
    frmrepositorio.ZQPrecioDivisas.Filter := ' iIdDivisa = '+ QuotedStr(dDivisa.editvalue);
    frmrepositorio.ZQPrecioDivisas.Filtered := True;
  end;
end;

procedure Tfrm_Depositoscias.dxbporcuentaClick(Sender: TObject);
begin
 dParamFechaI := tdFechaInicio.Date ;
  dParamFechaF := tdFechaFinal.Date ;
  sParamQuery := 'select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, sum(i.dImporteTotal+i.dIva) as Importe, ' +
                 'i.dIdFecha, f.sNombre, b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                 'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania and c.sIdCompaniaConf = :CompaniaConf ) ' +
                 'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                 'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta and b.sIdCompaniaConf = :CompaniaConf) ' +
                 'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="PAGADA" and c.sIdCompaniaConf = :CompaniaConf ' +
                 'And i.dFechafactura >= :FechaI and i.dFechafactura <= :FechaF ' +
                 'Group by c.sIdCompania Order by i.sIdCompania, i.iFolio' ;
  sParamTipo := 'Periodocomp' ;
  sParamTitle := '<<Grafica>> Detalle de Ingresos Por Compañia al dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
  Application.CreateForm(Tfrm_GraficabarrasIngresos, frm_GraficabarrasIngresos);
  frm_GraficabarrasIngresos.Show;
end;

procedure Tfrm_Depositoscias.dxVentasEmpleadosClick(Sender: TObject);
begin
    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;
    qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                         ' b.sNombreCuenta, i.sIdCompania, i.iIdVendedor, v.sNombre as sVendedor From con_tesoreriaegresos i ' +
                         'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                         'Inner Join con_facturas_status f On(i.iIdStatus=f.iId and i.iIdStatus<>3 and i.iIdStatus<>5) ' +
                         'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                         'Left Join vta_catvendedores v on (i.iIdVendedor = v.iIdVendedor) '+
                        'Where i.sTipoMovimiento="DEPOSITO" and i.iIdFolio>0 and i.CFDI_sEstado<>"CANCELADA" and b.sIdCompaniaConf = :sIdCompaniaConf ' +
                        'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 and c.sIdCompaniaConf =:sIdCompaniaConf Order by i.iIdVendedor, i.sIdCompania, i.iFolio ') ;
    qryConsultaF.ParamByName('Fecha1').AsDate           := tdFechaInicio.Date ;
    qryConsultaF.ParamByName('Fecha2').AsDate           := tdFechaFinal.Date ;
    qryConsultaF.ParamByName('sIdCompaniaConf').AsString:= global_contrato;
    qryConsultaF.Open ;
    frReporte.PreviewOptions.MDIChild := False ;
    frReporte.PreviewOptions.Modal := True ;
    frReporte.PreviewOptions.ShowCaptions := False ;
    frReporte.Previewoptions.ZoomMode := zmPageWidth ;
    frReporte.LoadFromFile(Global_Files+ global_miReporte + '_CADfrFacturasEjecutivos.fr3') ;

      if not FileExists(global_files + global_miReporte + '_CADfrFacturasEjecutivos.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files +global_Mireporte+'_CADfrFacturasEjecutivos.fr3 no existe, notifique al administrador del sistema');

  end;
  frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.edtFolioFiscalEnter(Sender: TObject);
begin
  edtFolioFiscal.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.edtFolioFiscalExit(Sender: TObject);
begin
  edtFolioFiscal.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.Visualizar_Factura_Timbrada;
var
  i:integer;
  Qry: TZQuery;
  Marca : TBookmark;
begin
  Marca := zQEgresos.GetBookmark;
  if zq_DetallesFacturas.RecordCount = 0 Then
  begin
    MSG_W('No es posible mostrar la factura por que no tiene conceptos');
    exit;
  end;
  Memoria_Conceptos.EmptyTable;
  Memoria_Factura.EmptyTable;
  Qry := TZQuery.Create(Self);
  Qry.Connection := Connection.zConnection;
  Qry.SQL.Clear;
  Qry.SQL.Text := 'select cc.*, rhe.sNombre as Descripcion_Estado '+
                  'from con_configuracion cc '+
                  'inner join rh_estados rhe on (rhe.sClaveEstado = cc.sEstado) '+
                  'where sNombreCorto = :sNombreCorto';
  Qry.ParamByName('sNombreCorto').AsString := global_contrato;
  Qry.Open;
  //Genera los conceptos
  i := 0;
  zq_DetallesFacturas.First;
  while Not zq_DetallesFacturas.Eof do
  begin
    Memoria_Conceptos.Append;
    Memoria_Conceptos.FieldByName('dCantidad').AsFloat      := zq_DetallesFacturas.FieldByName('dCantidad').AsFloat;
    Memoria_Conceptos.FieldByName('sUnidad').AsString       := zq_DetallesFacturas.FieldByName('sMedida').AsString;
    Memoria_Conceptos.FieldByName('sDescripcion').AsString  := zq_DetallesFacturas.FieldByName('Descripcion').AsString;
    Memoria_Conceptos.FieldByName('dValorUnitario').AsFloat := zq_DetallesFacturas.FieldByName('dImporte').AsFloat;
    Memoria_Conceptos.FieldByName('dTotal').AsFloat         := (zq_DetallesFacturas.FieldByName('dCantidad').AsFloat)*(zq_DetallesFacturas.FieldByName('dImporte').AsFloat);
    Memoria_Conceptos.FieldByName('sObservaciones').AsString:= zq_DetallesFacturas.FieldByName('sObservaciones').AsString;
    Memoria_Conceptos.Post;
    zq_DetallesFacturas.Next;
  end;
  //Llenas los datos de la factura
  qryCompanias.Locate('sIdCompania', zQEgresos.FieldByName('sIdCompania').AsString,[]);
  Memoria_Factura.Append;
  Memoria_Factura.FieldByName('sFolioFactura').AsString         := zqEgresos.FieldByName('iFolio').AsString;
  Memoria_Factura.FieldByName('sFolioFiscal').AsString          := zqEgresos.FieldByName('CFDI_sUUID').AsString;
  Memoria_Factura.FieldByName('sSerieCSD').AsString             := zqEgresos.FieldByName('CFDI_sCertificadoCFD').AsString;
  Memoria_Factura.FieldByName('sRFC').AsString                  := Qry.FieldByName('sRFC').AsString;
  Memoria_Factura.FieldByName('sRegimenFiscal').AsString        := Qry.FieldByName('sRegimen').AsString;
  Memoria_Factura.FieldByName('sLugarFechaExpedicion').AsString := zqEgresos.FieldByName('CFDI_sLugarExpedicion').AsString;
  Memoria_Factura.FieldByName('sRFC_Receptor').AsString         := QryCompanias.FieldByName('sRFC').AsString;
  if dDivisa.EditValue = 'MXP' then
    Memoria_Factura.FieldByName('sTotal').AsString := CantidadEnLetra(zqEgresos.FieldByName('Total').AsFloat, 1)
  else
    Memoria_Factura.FieldByName('sTotal').AsString := CantidadEnLetra(zqEgresos.FieldByName('Total').AsFloat, 2);
  Memoria_Factura.FieldByName('dSubTotal').AsFloat              := zqEgresos.FieldByName('dImporteTotal').AsFloat;
  Memoria_Factura.FieldByName('dIva').AsFloat                   := zqEgresos.FieldByName('dIva').AsFloat;
  Memoria_Factura.FieldByName('dTotal').AsFloat                 := zqEgresos.FieldByName('Total').AsFloat;
  Memoria_Factura.FieldByName('sSelloDigital').AsString         := zqEgresos.FieldByName('CFDI_sSelloCFD').AsString;
  Memoria_Factura.FieldByName('sSelloSAT').AsString             := zqEgresos.FieldByName('CFDI_sSelloSAT').AsString;
  Memoria_Factura.FieldByName('sCadenaOriginal').AsString       := zqEgresos.FieldByName('CFDI_sCadenaOriginal').AsString;
  Memoria_Factura.FieldByName('sSerieCertificado').AsString     := zqEgresos.FieldByName('CFDI_sCertificadoSAT').AsString;
  Memoria_Factura.FieldByName('sFecha_Hora').AsDateTime         := zqEgresos.FieldByName('CFDI_dFechaTimbrado').AsDateTime;
  Memoria_Factura.FieldByName('bBBCode').AsVariant              := zqEgresos.FieldByName('CFDI_bbCode').AsVariant;
  FormaPago.locate('sIdFormaPago',zQEgresos.FieldByName('sFormaPago').asInteger,[]);
  Memoria_Factura.FieldByName('sTipoPago').AsString             := FormaPago.FieldByName('Descripcion').asString;
  Memoria_Factura.FieldByName('sFormaPago').AsString            := zQEgresos.FieldByName('sReferencia').AsString;
  Memoria_Factura.FieldByName('sFolioFactura').AsString         := InttoStr(zQEgresos.FieldByName('iFolio').asInteger);

  Memoria_Factura.FieldByName('dFechaEmision').AsDateTime       := zqEgresos.FieldByName('CFDI_dFechaEmision').AsDateTime;
  Memoria_Factura.FieldByName('bLogoEmpresa').AsVariant         := Connection.configuracion.FieldByName('bImagen').AsVariant;
  Memoria_Factura.FieldByName('mDescripcion').AsString          := zqEgresos.FieldByName('mDescripcion').AsString;
  Memoria_Factura.FieldByName('sIdNumeroCuenta').AsString       := zqEgresos.FieldByName('sNumeroDeCuenta').AsString;
  Memoria_Factura.FieldByName('lNotaCredito').AsString          := zqEgresos.FieldByName('lNotaCredito').AsString;
  Memoria_Factura.Post;
  frx_Reporte.LoadFromFile(global_files + global_miReporte + '_CADFactura3.fr3');

    if not FileExists(global_files + global_miReporte + '_CADFactura3.fr3') then
      begin
         showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_CADFactura3.fr3 no existe, notifique al administrador del sistema');
         exit;
      end;
   frx_Reporte.ShowReport() ;

  Grid_facturas.DataController.DataSource := nil;
  DBGrid1.DataController.DataSource := nil;
  Vista2.DataController.DataSource := nil;
  zQEgresos.GotoBookmark(Marca);
  zQEgresos.FreeBookmark(Marca);
  Grid_facturas.DataController.DataSource := dszQEgresos;
  DBGrid1.DataController.DataSource := ds_DetallesFacturas;
  Vista2.DataController.DataSource := ds_DetallesFacturas;
end;

procedure Tfrm_Depositoscias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Depositoscias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
  begin
    if not (ActiveControl is TDBGrid) And not (ActiveControl is TDBMemo) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
    begin
      if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
      begin
        with TDBGrid(ActiveControl) do
        if selectedindex < (fieldcount -1) then
          selectedindex := selectedindex +1
        else
          selectedindex := 0;
      end;
    end;
  end;
end;

procedure Tfrm_Depositoscias.FormShow(Sender: TObject);
var
  frmSetupTmp: TfrmSetup;
  Qry: TZQuery;
begin
  //formas de Pago
  FormaPago.Active := False;
  FormaPago.Open;
  //Fecha de inicio y final
  if connection.configuracionCont.FieldByName('iEjercicio').AsInteger > 0 then
    tdFechaInicio.Date := EncodeDate(connection.configuracionCont.FieldByName('iEjercicio').AsInteger,1,1)
  else
    tdFechaInicio.Date := EncodeDate( YearOf( Date ), 1, 1 );
  tdFechaFinal.Date := Date;
  //Adenda
  zqAddendaPemex.Active :=False;
  zqAddendaPemex.Open;
  //Precio divisas
  frmrepositorio.ZQPrecioDivisas.active := False;
  frmrepositorio.ZQPrecioDivisas.Open;
  //Lista de productos para la factura
  frmrepositorio.ZQInsumos.active := False;
  frmrepositorio.ZQInsumos.ParamByName('Contrato').AsString    := global_contrato ;
  frmrepositorio.ZQInsumos.open;
  //Para los estatus de las facturas
  zq_StatusFacturas.Open;

    //Para los proyectos
  if connection.configuracionCont.FieldValues['lMostrarProyectos']='Si' Then
  begin
    zQProyectos.active := false;
    zQProyectos.ParamByName('Contrato').AsString    := global_contrato ;
    zQProyectos.Open;
  end;

  if connection.configuracionCont.FieldValues['lMostrarProyectos']='No' Then
    begin
      lyproyecto.CaptionOptions.Visible := False;
      dbProyecto.Enabled  := False ;
      dbProyecto.Visible  := False ;
    end;

  //PAra las compañias
  qryCompanias.Active := False ;
  qryCompanias.ParamByName('sIdCompaniaConf').AsString := global_contrato;
  qryCompanias.Open ;
  if qryCompanias.RecordCount = 0 Then
     MessageDlg('No EXISTEN Clientes Dado de Alta, No puede Crear Facturas sin Clientes', mtError, [mbOK], 0) ;

  //Para las cuentas bancarias
  zQCuentasBancarias.Active := False ;
  zQCuentasBancarias.ParamByName('Compania').AsString := Global_Contrato ;
  zQCuentasBancarias.Open ;
  //Si la tabla de cuentas bancarias
  if zQCuentasBancarias.RecordCount > 0 then  //Es mayor a cero
    tsIdCuentaBancaria.EditValue := zqCuentasBancarias.FieldByName('sIdNumeroCuenta').AsString  //asigna el valor de la cuenta bancaria
  else tsIdCuentaBancaria.EditValue := 0;       //Si solo esta vacio le asigna un valor por default


  //Para los detalles de la factura
  IsOpenD := False;
  zq_DetallesFacturas.Active := False;
  zq_DetallesFacturas.Open;
  IsOpenD := True;

  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria); //PAra mostrar las facturas de la cuenta bancaria
  dDivisaPropertiesCloseUp(dDivisa);  //Para mostrar el precio de la divisa
  NxPageControl1.ActivePageIndex := 0;
  NxTabSheet3.Enabled            := False;
  chkNotacredito.ActiveProperties.ReadOnly  := True;
  cxDetalles_Factura.ActivePageIndex := 0;  //Para que siempre aparesca por default el grid de los detalles de la factura
  cxDetalles_Factura.Properties.HideTabs:=True;

  //Ejecutivos de venta
  zqEjecutivo.Active := False;
  zqejecutivo.ParamByName('Compania').AsString := Global_Contrato;
  zqEjecutivo.Open;

  //Para mostrar la configuracion general
  frmSetupTmp := TfrmSetup.Create(nil);
  frmSetupTmp.configuracion.Active := False;
  frmSetupTmp.configuracion.ParamByName('contrato').AsString := global_contrato;
  frmSetupTmp.configuracion.Open;
  frmSetupTmp.Close;

  //Mostrar los Campos de Inicio
  llenarCampos();

end;

procedure Tfrm_Depositoscias.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  NxPageControl1.ActivePage := NxTabSheet1;
  mensaje := 'Se creo la factura: ';
  zQEgresos.Append;

  zqAddendaPemex.Append;
  ActivarDesactivar_Botones(dxbrmngr1,zQEgresos, gridPrincipal);
  insertar_valores;
  edtFolioFiscal.Enabled:=False;
  cambio_estado;
end;

procedure Tfrm_Depositoscias.frmBarra1btnCancelClick(Sender: TObject);
begin
   zqAddendaPemex.Cancel;
   isopenE := false;
   Grid_facturas.DataController.DataSource := nil;
   zqProyectos.Filtered := False;
   frmrepositorio.ZQPrecioDivisas.Filtered := False;
   zQEgresos.Cancel ;
   Grid_facturas.DataController.DataSource := dszQEgresos;
   cambio_estado;
   isopenE:=true;
   llenarCampos();;
   ActivarDesactivar_Botones(dxbrmngr1,zQEgresos, gridPrincipal);
   frmBarra1.btnCancelClick(Sender);
   edtFolioFiscal.Enabled := False;
   cxEjecutivo.Enabled:=False;
end;

procedure Tfrm_Depositoscias.frmBarra1btnDeleteClick(Sender: TObject);
Var
  Marca2 : TBookmark;
begin
  if (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'TIMBRADA') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'CANCELADA') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = null) Then
  begin
    msg_w('No es posible eliminar la factura si esta TIMBRADA/CANCELADA!');
    exit;
  end;
  Marca2 := Grid_facturas.DataController.DataSource.DataSet.GetBookmark ;
  If zQEgresos.RecordCount  > 0 then
  begin
    if MSG_YN('Desea eliminar el Registro Activo?') then
    begin
      //Quito los detalles
      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('delete from con_facturas_detalles where iId_Factura =:Factura');
      connection.QryBusca.ParamByName('Factura').asInteger := zqEgresos.fieldbyname('iIdFolio').asInteger;
      connection.QryBusca.ExecSQL ;
      //Quito la Adenda
      connection.QryBusca.Active := False ;
      connection.QryBusca.SQL.Clear ;
      connection.QryBusca.SQL.Add('delete from addenda_pemex_pep where iId_Factura = :iId_Factura');
      connection.QryBusca.ParamByName('iId_Factura').asInteger := zqEgresos.fieldbyname('iIdFolio').asInteger;
      connection.QryBusca.ExecSQL ;
      Mensaje := 'Se elimino la factura ';
      guardar_kardex;
      zQEgresos.Delete ;
    end;
  end
end;

procedure Tfrm_Depositoscias.frmBarra1btnEditClick(Sender: TObject);
begin

  if (zQEgresos.FieldByName('CFDI_sEstado').AsString = '') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'SIN TIMBRE') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = null) Then
  begin
    zqAddendaPemex.Edit;
    qryConsulta.Active := False;
    qryConsulta.SQL.Text := 'SELECT COUNT(*) AS EscaneosTotales FROM con_facturasfotografico WHERE ildFolio = :Factura ORDER BY iImagen';
    if dbiFolio.text = '' then qryConsulta.Params.ParamByName('Factura').Value := 0
    else qryConsulta.Params.ParamByName('Factura').Value := dbiFolio.text ;
    qryConsulta.Open;
    dbCompaniaPropertiesCloseUp(dbCompania);
    dDivisaPropertiesCloseUp(dbCompania);
    frmBarra1.btnEditClick(Sender);
    zQEgresos.Edit ;
    mensaje := 'Se edito la factura: ';
    ActivarDesactivar_Botones(dxbrmngr1,zQEgresos, gridPrincipal);
    cambio_estado;
    cxEjecutivo.Enabled      := True;
  end else if (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'TIMBRADA') then
  begin
    MSG_W('SOLO PUEDE CAMBIAR LOS STATUS DE LAS FACTURAS TIMBRADA');
    dbestado.Enabled          := True;
    dbProyecto.Enabled        := True ;
    NxTabSheet3.Enabled       := True;

    dbEnumPedido.Enabled      := False;
    DBEdit5.Enabled           := False;
    dDivisa.Enabled           := False;
    PrecioDivisa.Enabled      := False;
    cxButton1.Enabled         := False;
    tsReferencia.Enabled      := False;
    DBEdit4.Enabled           := False;
    cxButton2.Enabled         := False;
    edtFolioFiscal.Enabled    := False;
    cxEjecutivo.Enabled       := True;
    frmBarra1.btnEditClick(Sender);
    zQEgresos.Edit ;
    Panel2.Enabled := True;
    ActivarDesactivar_Botones(dxbrmngr1,zQEgresos, gridPrincipal);
    AplicaPagoParcial.Enabled := True ;
    dbfechaRecepcion.Enabled  := True ;
    tdFecha.Enabled           := True ;
    edtFolioFiscal.Enabled    := True;
    
  end else if (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'CANCELADA') then
  begin
    msg_w('SOLO PUEDE CAMBIAR LOS STATUS DE LAS FACTURAS TIMBRADA Y EL EJECUTIVO DE VENTAS');
    dbestado.Enabled          := True;
    NxTabSheet3.Enabled       := True;

    dbeCotizacion.Enabled     := False;
    dbeOc.Enabled             := False ;
   
    dbEnumPedido.Enabled      := False;
    DBEdit5.Enabled           := False;
    dDivisa.Enabled           := False;
    PrecioDivisa.Enabled      := False;
    cxButton1.Enabled         := False;
    tsReferencia.Enabled      := False;
    DBEdit4.Enabled           := False;
    cxButton2.Enabled         := False;
    edtFolioFiscal.Enabled    := False;
    cxEjecutivo.Enabled       := True;
    frmBarra1.btnEditClick(Sender);
    zQEgresos.Edit ;
    Panel2.Enabled := True;
    ActivarDesactivar_Botones(dxbrmngr1,zQEgresos, gridPrincipal);
  end;

end;

procedure Tfrm_Depositoscias.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_Depositoscias.frmBarra1btnPostClick(Sender: TObject);
Var
  Marca : TBookmark;
  sMensaje : string;
  maximo: Integer;
begin
  try
    //Validacion de datos
    if cmbmeses.Text = ''   then sMensaje := 'MES';
  
  if connection.configuracionCont.FieldValues['lMostrarProyectos']='Si' Then
    if dbProyecto.Text = '' then sMensaje := 'PROYECTO';

    if dbCompania.Text = '' then sMensaje := 'COMPAÑIA';
    if DBEdit4.Text = ''    then sMensaje := 'FORMA DE PAGO';
    if sMensaje <>'' then
    begin
      MSG_W('EXISTEN DATOS VACIOS EN '+ sMensaje);
      if sMensaje = 'MES' then
      begin
        exit;
      end;
      if sMensaje = 'PROYECTO' then
      begin
         exit;
      end;
      if sMensaje = 'COMPAÑIA' then
      begin
        exit;
      end;
      if sMensaje = 'FORMA DE PAGO' then
      begin
        exit;
      end;
    end;
    if dDivisa.Text = '' then
    begin
      MSG_W('La divisa no debe quedar vacio');
      exit;
    end;
    Memo_Log.Lines.Add('Iniciando proceso de guardado');
    // Para sacar el id de la factura
    zqEgresos.FieldByName('dIva').AsFloat        := zqEgresos.FieldByName('dImporteTotal').AsFloat * (connection.configuracionCont.FieldByName('IVA').AsFloat/100);
    zqEgresos.FieldByName('iIdStatus').AsInteger := zq_StatusFacturas.FieldByName('iId').asInteger;

    connection.zConnection.StartTransaction;

    if chkNotaCredito.Checked then
    begin
        zqEgresos.FieldByName('sTipoMovimiento').AsString := 'GASTOS';
        zqEgresos.FieldByName('lNotaCredito').AsString    := 'Si';
    end
    else
    begin
        zqEgresos.FieldByName('sTipoMovimiento').AsString := 'DEPOSITO';
        zqEgresos.FieldByName('lNotaCredito').AsString    := 'No';
    end;

    if zQEgresos.State in [dsInsert] then
    begin
      if chkNotaCredito.Checked then
         zQEgresos.FieldByName('iFolio').AsInteger        := Connection.configuracionCont.fieldbyname('iConsecutivoNotaCredito').asInteger +  1
      else
         zQEgresos.FieldByName('iFolio').AsInteger        := Connection.configuracionCont.fieldbyname('iAutoFactura').asInteger +  1;
      zQEgresos.FieldByName('iIdFolio').AsInteger         := NextId('iIdFolio','con_tesoreriaegresos');
      zqAddendaPemex.FieldByName('iId_Factura').AsInteger := zqEgresos.FieldByName('iIdFolio').AsInteger;
      zqEgresos.FieldByName('iEjercicio').AsInteger       := connection.configuracionCont.FieldByName('iEjercicio').AsInteger;

      if chkNotaCredito.Checked then
      begin
         //Actualizamos el iConsecutivoNotaCredito
         connection.configuracionCont.Edit;
         connection.configuracionCont.FieldByName('iConsecutivoNotaCredito').AsInteger := Connection.configuracionCont.fieldbyname('iConsecutivoNotaCredito').asInteger +  1;
         connection.configuracionCont.Post;
      end
      else
      begin
         //Actualizamos el iAutoFactura
         connection.configuracionCont.Edit;
         connection.configuracionCont.FieldByName('iAutoFactura').AsInteger := Connection.configuracionCont.fieldbyname('iAutoFactura').asInteger +  1;
         connection.configuracionCont.Post;
      end;
    end;
    Grid_facturas.DataController.DataSource := nil;
    guardar_kardex;
    if (zQEgresos.FieldByName('CFDI_sEstado').AsString <> 'TIMBRADA') and (zQEgresos.FieldByName('CFDI_sEstado').AsString <> 'CANCELADA') then
    begin
      if zqAddendaPemex.State in [dsInsert] then
      begin
        zqAddendaPemex.FieldByName('iId').AsInteger         := NextId('iId','addenda_pemex_pep');
        zqAddendaPemex.FieldByName('iId_Factura').AsInteger := NextId('iIdFolio','con_tesoreriaegresos');
      end;
      zqAddendaPemex.Post;
    end
    ELSE zqAddendaPemex.cancel;
    isopenE := false;
    zQEgresos.Post ;
    isopenE := true;
    ActivarDesactivar_Botones(dxbrmngr1,zQEgresos, gridPrincipal);
    cambio_estado;
    Tablero;
    Grid_facturas.DataController.DataSource := dszQEgresos;
    ds_DetallesFacturas.DataSet             := zq_DetallesFacturas;
    frmBarra1.btnPostClick(Sender);
    connection.zConnection.Commit;
    llenarCampos();;
    Memo_Log.Lines.Add('Proceso de Guardado realizado exitosamente');
    edtFolioFiscal.Enabled := False;
    cxEjecutivo.Enabled:=False;
  except
    on e : exception do
    begin
      Memo_Log.Lines.Add('Ocurrio un error en el proceso de guardado la informacion se perdera');
      Memo_Log.Lines.Add('Clase de error: ' + e.ClassName + chr(13) + chr(13) + 'Mensaje del error: ' + e.Message);
      connection.zConnection.Rollback;
    end;
  end;
end;

procedure Tfrm_Depositoscias.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Connection.configuracion.Refresh ;
  zQCuentasBancarias.Refresh ;
  IsOpenE := false;
  zQEgresos.Refresh ;
  IsOpenE := true;
  zQCuentasBancarias.Refresh ;
  qryCompanias.Refresh ;
  frmrepositorio.ZQInsumos.Refresh;
  zq_DetallesFacturas.Refresh;
  frmrepositorio.ZQPrecioDivisas.Refresh;
  FormaPago.Refresh;
  zQProyectos.Refresh;
  zqAddendaPemex.Refresh ;
  zq_statusfacturas.Refresh ;
end;

procedure Tfrm_Depositoscias.frxReport1GetValue(const VarName: string;var Value: Variant);
Var
  Valor: Real;
begin
  Valor := 0;
  if VarName = 'IMPORTE_LETRAS' then
  begin
    Value := xNumerosToLletres(zqEgresos.FieldByName('dImporteTotal').AsCurrency + zqEgresos.FieldByName('dIva').AsCurrency);
  end else
  if VarName = 'IMPORTE_TOTAL_PENDIENTE' then
  begin
    zQEgresos.First;
    while not zQEgresos.Eof do
    begin
      if zQEgresos.FieldByName('sStatus').AsString <> 'PAGADA' then
      begin
        Valor := Valor + (zQEgresos.FieldByName('dImporteTotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat);
      end;
      zQEgresos.Next;
    end;
    Value := Valor;
  end else
  if VarName = 'IMPORTE_TOTAL_PAGADO' then
  begin
    zQEgresos.First;
    while not zQEgresos.Eof do
    begin
      if zQEgresos.FieldByName('sStatus').AsString = 'PAGADA' then
      begin
        Valor := Valor + (zQEgresos.FieldByName('dImporteTotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat);
      end;
      zQEgresos.Next;
    end;
    Value := Valor;
  end else
  if VarName = 'FECHA_INICIAL' then
  begin
    Value := FormatDateTime('dd-mm-yyyy', tdFechaInicio.Date);
  end else
  if VarName = 'FECHA_FINAL' then
  begin
    Value := FormatDateTime('dd-mm-yyyy', tdFechaFinal.Date);
  end;
end;

procedure Tfrm_Depositoscias.frx_ReporteGetValue(const VarName: string;var Value: Variant);
begin
  if VarName = 'Fecha' then
    Value := FormatDateTime('dd-mm-yyyy', Date)
  else if VarName = 'Folio' then
    Value := zQEgresos.fieldbyname('iFolio').asInteger
  else if VarName = 'NumExt' then
  begin
    if (qryCompanias.FieldByName('sNumeroExterior').asString = '') or (qryCompanias.FieldByName('sNumeroExterior').asString = '0')  then
      Value := 'S/N'
    else Value := 'No. ' + qryCompanias.FieldByName('sNumeroExterior').asString;
  end else if VarName = 'SubTotalFactura' then
  begin
    Value := SumaTotalFactura;
  end else if VarName = 'Observaciones' then
  begin
    Value := zQEgresos.fieldbyname('mDescripcion').AsString
  end;
end;

procedure Tfrm_Depositoscias.Grid_facturasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 llenarCampos();
end;

procedure Tfrm_Depositoscias.grid_facturasKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
  Panel.Visible := False ;
  llenarCampos();
end;

procedure Tfrm_Depositoscias.grid_facturasKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Panel.Visible := False ;
  llenarCampos();
end;

procedure Tfrm_Depositoscias.Grid_facturasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'PAGADA' then AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'TRASPASO' then AStyle := cxstylGreen;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'CANCELADA' then AStyle := cxstylRed;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'ENTREGADA' then AStyle := cxstylMaroon;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'PENDIENTE' then AStyle := cxstylBlack;
end;

procedure Tfrm_Depositoscias.ImprimirFactura1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(global_files + global_miReporte + '_CADintelcode.fr3') ;

    if not FileExists(global_files + global_miReporte + '_CADintelcode.fr3') then
  begin
   showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_CADintelcode.fr3 no existe, notifique al administrador del sistema');

  end;
  frxReport1.ShowReport();
end;

procedure Tfrm_Depositoscias.ImprimirFacturaATechnology1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(global_files + global_miReporte + '_CADatechnologyfact.fr3');

    if not FileExists(global_files + global_miReporte + '_CADatechnologyfact.fr3') then
  begin
   showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_CADatechnologyfact.fr3 no existe, notifique al administrador del sistema');

  end;
  frxReport1.ShowReport();
end;

procedure Tfrm_Depositoscias.dxbIngresosgralClick(Sender: TObject);
begin
  dParamFechaI := tdFechaInicio.Date ;
  dParamFechaF := tdFechaFinal.Date ;
  sParamQuery := 'select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, sum(i.dImporteTotal+i.dIva) as Importe, ' +
                 'i.dIdFecha, f.sNombre, b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                 'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                 'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                 'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                 'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="PAGADA" ' +
                 'And i.dFechafactura >= :FechaI and i.dFechafactura <= :FechaF ' +
                 'Group by c.sIdCompania Order by i.sIdCompania, i.iFolio' ;
  sParamTipo := 'Periodogral' ;
  sParamTitle := '<<Grafica>> Detalle de Ingresos Por Compañia al dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
  Application.CreateForm(Tfrm_GraficabarrasIngresos, frm_GraficabarrasIngresos);
  frm_GraficabarrasIngresos.Show;
end;

procedure Tfrm_Depositoscias.NxPageControl1Change(Sender: TObject);
begin
  chkAplicacuadre.Checked := False;
end;

procedure Tfrm_Depositoscias.otal1Click(Sender: TObject);
begin
  qryConsultaF.Active := False ;
  qryConsultaF.SQL.Clear ;
  qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                       'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                       'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                       'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                       'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                      'Where i.sTipoMovimiento="DEPOSITO" and i.iIdFolio>0 and b.sIdCompaniaConf = :sIdCompaniaConf ' +
                      'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 and c.sIdCompaniaConf =:sIdCompaniaConf Order by i.iFolio ') ;
  qryConsultaF.ParamByName('Fecha1').AsDate           := tdFechaInicio.Date ;
  qryConsultaF.ParamByName('Fecha2').AsDate           := tdFechaFinal.Date ;
  qryConsultaF.ParamByName('sIdCompaniaConf').AsString:= global_contrato;
  qryConsultaF.Open ;
  frReporte.PreviewOptions.MDIChild := False ;
  frReporte.PreviewOptions.Modal := True ;
  frReporte.PreviewOptions.ShowCaptions := False ;
  frReporte.Previewoptions.ZoomMode := zmPageWidth ;
  frReporte.LoadFromFile(Global_Files+ global_miReporte + '_CADfrFacturasT.fr3') ;

    if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files + global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
  end;
  frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.Pagadas1Click(Sender: TObject);
begin
  qryConsultaF.Active := False ;
  qryConsultaF.SQL.Clear ;
  qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                      'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                      'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                      'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                      'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                      'Where i.sTipoMovimiento="DEPOSITO" and i.iIdFolio >0 and f.sNombre="PAGADA" and b.sIdCompaniaConf = :sIdCompaniaConf ' +
                      'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 and c.sIdCompaniaConf =:sIdCompaniaConf Order by i.sIdCompania, i.iFolio ') ;
  qryConsultaF.ParamByName('Fecha1').AsDate           := tdFechaInicio.Date ;
  qryConsultaF.ParamByName('Fecha2').AsDate           := tdFechaFinal.Date ;
  qryConsultaF.ParamByName('sIdCompaniaConf').AsString:= global_contrato;

  qryConsultaF.Open ;
  frReporte.PreviewOptions.MDIChild := False ;
  frReporte.PreviewOptions.Modal := True ;
  frReporte.PreviewOptions.ShowCaptions := False ;
  frReporte.Previewoptions.ZoomMode := zmPageWidth ;
  frReporte.LoadFromFile(Global_Files+ global_miReporte + '_CADfrFacturasT.fr3') ;
  frReporte.ShowReport() ;
    if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files + global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;
end;

procedure Tfrm_Depositoscias.ParcialidadesClick(Sender: TObject);
Var
  sumafactura, sumafactura2 : Double ;
begin
  qryParcPagos.Active := False;
  qryParcPagos.ParamByName('idFactura').AsInteger := zQEgresos.FieldByName('iIdFolio').AsInteger;
  qryParcPagos.Open;
  Label31.caption :='$'+FloatToStr(zQEgresos.FieldByName('Total').AsFloat - zQEgresos.FieldByName('dParcialidad').AsFloat);
  Crear_Form(pnl_Parcialidades,'Pagos parciales', 330, 700,[biSystemMenu]);
end;

procedure Tfrm_Depositoscias.Pendientes1Click(Sender: TObject);
begin
  zQEgresos.Refresh ;
  qryConsultaF.Active := False ;
  qryConsultaF.SQL.Clear ;
  zQEgresos.Refresh ;
  qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                       'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                       'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                       'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                       'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                       'Where i.sTipoMovimiento="DEPOSITO" and i.iIdFolio >0 and (f.sNombre="PENDIENTE" Or f.sNombre="ENTREGADA") and b.sIdCompaniaConf = :sIdCompaniaConf ' +
                       'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 and c.sIdCompaniaConf =:sIdCompaniaConf Order By i.sIdCompania, i.iFolio ') ;
  qryConsultaF.ParamByName('Fecha1').AsDate           := tdFechaInicio.Date ;
  qryConsultaF.ParamByName('Fecha2').AsDate           := tdFechaFinal.Date ;
  qryConsultaF.ParamByName('sIdCompaniaConf').AsString:= global_contrato;
  qryConsultaF.Open ;
  frReporte.PreviewOptions.MDIChild := False ;
  frReporte.PreviewOptions.Modal := True ;
  frReporte.PreviewOptions.ShowCaptions := False ;
  frReporte.Previewoptions.ZoomMode := zmPageWidth ;
  frReporte.LoadFromFile(Global_Files + global_miReporte +'_CADfrFacturasT.fr3') ;

    if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
  begin
   showmessage('El archivo de reporte ' + global_files + global_Mireporte+'_CADfrFacturasT.fr3no existe, notifique al administrador del sistema');

  end;
  frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.PorFechas1Click(Sender: TObject);
begin
  qryConsulta.Active := False ;
  qryConsulta.SQL.Clear ;
  qryConsulta.SQL.Add('select  te.dIdFecha, c.sIdCompania, c.sRazonSocial, te.sReferencia,  ' +
                     'te.mDescripcion, te.dImporteTotal, te.dIva ' +
                     'from con_tesoreriaegresos te ' +
                     'inner join con_companias c On (te.sIdCompania=c.sIdCompania ) ' +
                     'and te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                     'and sTipoMovimiento="DEPOSITO" and iIdStatus= 4 order by month(te.dIdFecha)') ;
  qryConsulta.ParamByName('Fecha1').AsDate    := tdFechaInicio.Date ;
  qryConsulta.ParamByName('Fecha2').AsDate    := tdFechaFinal.Date ;
  qryConsulta.Open ;
  frReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrFechas.fr3') ;

    if not FileExists(global_files + global_miReporte + '_CADfrFechas.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files +global_Mireporte+'_CADfrFechas.fr3 no existe, notifique al administrador del sistema');

  end;
  frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.PorProyecto1Click(Sender: TObject);
begin
  qryAuxiliar.Active := False ;
  qryAuxiliar.SQL.Clear ;
  qryAuxiliar.SQL.Add('select o.sIdFolio, o.sNumeroOrden, o.sDescripcioncorta, o.sIdCompania, c.sRazonSocial, '+
                      'SUM(t.dImporteTotal+ t.dIva) as total from ordenesdetrabajo o  '+
                      'Inner join con_tesoreriaegresos t '+
                      'On (o.sNumeroOrden=t.sProyecto And o.sIdCompania=t.sIdCompania) '+
                      'Inner join con_companias c On (o.`sIdCompania`=c.sIdCompania) ' +
                      'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=t.sIdNumeroCuenta) '+
                      'Where t.iIdStatus=4 and b.sIdCompaniaConf = :sIdCompaniaConf and c.sIdCompaniaConf = :sIdCompaniaConf '+
                      'Group by o.sIdCompania, o.sNumeroOrden order by o.sIdCompania');
  qryAuxiliar.ParamByName('sIdCompaniaConf').AsString    := global_contrato;
  qryAuxiliar.Open ;
  frReporte.PreviewOptions.MDIChild := False ;
  frReporte.PreviewOptions.Modal := True ;
  frReporte.PreviewOptions.ShowCaptions := False ;
  frReporte.Previewoptions.ZoomMode := zmPageWidth ;
  frReporte.LoadFromFile(Global_Files+ global_miReporte +'CADreporteproyecto.fr3') ;

    if not FileExists(global_files + global_miReporte + 'CADreporteproyecto.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files + global_Mireporte+'CADreporteproyecto.fr3 no existe, notifique al administrador del sistema');

  end;
  frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.qryParcPagosAfterCancel(DataSet: TDataSet);
begin
  cambio_estado_pagos;
end;

procedure Tfrm_Depositoscias.qryParcPagosAfterEdit(DataSet: TDataSet);
begin
  cambio_estado_pagos;
end;

procedure Tfrm_Depositoscias.qryParcPagosAfterInsert(DataSet: TDataSet);
var
  subtotal, iva : Double ;
begin
  qryParcPagos.FieldByName('lPago').AsString        := 'SI';
  qryParcPagos.FieldByName('sDescripcion').AsString := 'PAGO FACTURA ' + IntTostr(zqEgresos.FieldByName('iFolio').AsInteger);
  qryParcPagos.FieldByName('dIdFecha').AsDateTime   := date();
  if qryParcPagos.RecordCount = 0  Then
  begin
    qryParcPagos.FieldByName('dImporte').AsFloat    := 0;
    qryParcPagos.FieldByName('dIva').AsFloat        := 0;
  end
  else
  begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select sum(dImporte) as subtotal, sum(dIva) as iva from con_parcfacturas Where iIdFolio =:Folio And lPago="Si"');
    Connection.QryBusca.ParamByName('Folio').AsFloat    := zqEgresos.FieldByName('iIdFolio').asFloat;
    Connection.QryBusca.Open ;
    If Connection.QryBusca.FieldByName('subtotal').IsNull Then subtotal := 0
    else subtotal := Connection.QryBusca.FieldByName('subtotal').AsFloat ;

    If Connection.QryBusca.FieldByName('iva').IsNull Then iva := 0
    else iva := Connection.QryBusca.FieldByName('iva').AsFloat;

    qryParcPagos.FieldByName('dImporte').AsFloat     := zqEgresos.FieldByName('dImporteTotal').AsFloat - subtotal;
    qryParcPagos.FieldByName('dIva').AsFloat         := zqEgresos.FieldByName('dIva').AsFloat -  iva ;
    lblPendiente.Caption :=  FloatToStr(qryParcPagos.FieldByName('dImporte').AsFloat +  qryParcPagos.FieldByName('dIva').AsFloat);
  end;
  cambio_estado_pagos;
end;

procedure Tfrm_Depositoscias.qryParcPagosAfterPost(DataSet: TDataSet);
begin
  cambio_estado_pagos;
end;

procedure Tfrm_Depositoscias.qryParcPagosBeforeCancel(DataSet: TDataSet);
begin
  cambio_estado_pagos;
end;

procedure Tfrm_Depositoscias.qryParcPagosBeforePost(DataSet: TDataSet);
begin
  if qryParcPagos.RecordCount > 0 Then qryParcPagos.FieldByName('sTipo').AsString := 'PAGOS'
  else qryParcPagos.FieldByName('sTipo').AsString := 'ORIGINAL' ;
  qryParcPagos.FieldByName('dIva').AsFloat := qryParcPagos.FieldByName('dImporte').AsFloat *(connection.configuracionCont.FieldByName('IVA').AsFloat/100);
  qryParcPagos.FieldByName('iIdFolio').AsFloat := zqEgresos.FieldByName('iIdFolio').AsInteger;
end;

procedure Tfrm_Depositoscias.qryParcPagosCalcFields(DataSet: TDataSet);
begin
  qryParcPagos.FieldByName('Totalp').AsFloat := qryParcPagos.FieldByName('dImporte').AsFloat + qryParcPagos.fieldbyname('dIva').AsFloat;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforeDelete(DataSet: TDataSet);
begin
  if zqEgresos.RecordCount = 0 then abort;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforeEdit(DataSet: TDataSet);
begin
  if zqEgresos.RecordCount = 0 then abort;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforeInsert(DataSet: TDataSet);
begin
  if zqEgresos.RecordCount = 0 then abort;
end;

procedure Tfrm_Depositoscias.sObservacionesEnter(Sender: TObject);
begin
  sObservaciones.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.sObservacionesExit(Sender: TObject);
begin
  sObservaciones.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sAcreedorEnter(Sender: TObject);
begin
  tAddenda_sAcreedor.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sAcreedorExit(Sender: TObject);
begin
  tAddenda_sAcreedor.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sAcreedorKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sEntrada.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sContratoEnter(Sender: TObject);
begin
  tAddenda_sContrato.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sContratoExit(Sender: TObject);
begin
  tAddenda_sContrato.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sContratoKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sOSurtimiento.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sEjercicioEnter(Sender: TObject);
begin
  tAddenda_sEjercicio.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sEjercicioExit(Sender: TObject);
begin
  tAddenda_sEjercicio.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sEjercicioKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sContrato.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sEntradaEnter(Sender: TObject);
begin
  tAddenda_sEntrada.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sEntradaExit(Sender: TObject);
begin
  tAddenda_sEntrada.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sEntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tAddenda_sVURegion.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sFichaEEnter(Sender: TObject);
begin
  tAddenda_sFichaE.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sFichaEExit(Sender: TObject);
begin
  tAddenda_sFichaE.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sFichaEKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sFichaF.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sFichaFEnter(Sender: TObject);
begin
  tAddenda_sFichaF.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sFichaFExit(Sender: TObject);
begin
  tAddenda_sFichaF.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sFichaFKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sMoneda.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sMonedaEnter(Sender: TObject);
begin
  tAddenda_sMoneda.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sMonedaExit(Sender: TObject);
begin
  tAddenda_sMoneda.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sMonedaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then tAddenda_sEjercicio.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sNEstimacionEnter(Sender: TObject);
begin
  tAddenda_sNEstimacion.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sNEstimacionExit(Sender: TObject);
begin
  tAddenda_sNEstimacion.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sNEstimacionKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sAcreedor.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sOSurtimientoEnter(Sender: TObject);
begin
  tAddenda_sOSurtimiento.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sOSurtimientoExit(Sender: TObject);
begin
  tAddenda_sOSurtimiento.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sOSurtimientoKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sNEstimacion.SetFocus;
end;

procedure Tfrm_Depositoscias.tAddenda_sVURegionEnter(Sender: TObject);
begin
  tAddenda_sVURegion.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sVURegionExit(Sender: TObject);
begin
  tAddenda_sVURegion.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tAddenda_sVURegionKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then tAddenda_sFichaE.SetFocus;
end;

procedure Tfrm_Depositoscias.tdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tmDescripcion.SetFocus;
end;

procedure Tfrm_Depositoscias.tmDescripcionEnter(Sender: TObject);
begin
  tmDescripcion.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tmDescripcionExit(Sender: TObject);
begin
  tmDescripcion.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tmDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dbCompania.SetFocus;
end;

procedure Tfrm_Depositoscias.tsIdCuentaBancariaPropertiesCloseUp(Sender: TObject);
begin
  Memo_Log.Lines.Add('Cargando las facturas');
  //Para mostrar las facturas dependiendo de la cuenta seleccionada
  Grid_facturas.DataController.DataSource := nil;
  zQEgresos.Active := False ;
  zQEgresos.ParamByName('cuenta').AsString    := tsIdCuentaBancaria.EditValue ;
  zQEgresos.ParamByName('Fecha1').AsDate      := tdFechaInicio.Date;
  zQEgresos.ParamByName('Fecha2').AsDate      := tdFechaFinal.Date;
  IsOpenE:=False;
  zQEgresos.Open ;
  Grid_facturas.DataController.DataSource := dszQEgresos;
  IsOpenE := True;
 // zQEgresosAfterScroll(zQEgresos);
  Memo_Log.Lines.Add('Facturas Cargadas Exitosamente');
end;

procedure Tfrm_Depositoscias.tsReferenciaEnter(Sender: TObject);
begin
  tsReferencia.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tsReferenciaExit(Sender: TObject);
begin
  tsReferencia.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tsReferenciaKeyPress(Sender: TObject;var Key: Char);
begin
  if key = #13 then cmbmeses.SetFocus;
end;

procedure Tfrm_Depositoscias.tdFechaEnter(Sender: TObject);
begin
  tdFecha.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tdFechaExit(Sender: TObject);
begin
  tdFecha.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tdFechaExpEnter(Sender: TObject);
begin
  tdFechaExp.Style.Color := global_color_entradaERP
end;

procedure Tfrm_Depositoscias.tdFechaExpExit(Sender: TObject);
begin
  tdFechaExp.Style.Color := global_color_salidaERP
end;

procedure Tfrm_Depositoscias.tdFechaExpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbFechaRecepcion.SetFocus;
end;

procedure Tfrm_Depositoscias.tdFechaFinalExit(Sender: TObject);
begin
  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_Depositoscias.tdFechaFinalPropertiesCloseUp(Sender: TObject);
begin
  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_Depositoscias.tdFechaInicioExit(Sender: TObject);
begin
  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_Depositoscias.tdFechaInicioPropertiesCloseUp(Sender: TObject);
begin
  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_Depositoscias.zQEgresosCalcFields(DataSet: TDataSet);
begin
  zQEgresos.FieldByName('Total').AsFloat := zQEgresos.FieldByName('dImportetotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat ;
end;

procedure Tfrm_Depositoscias.zQEgresossTipoMovimientoChange(Sender: TField);
begin
  if zQEgresossTipoMovimiento.Text = 'DEPOSITO' then
    zQEgresos.FieldByName('sIdArea').AsString := 'XYZ' ;
end;

procedure Tfrm_Depositoscias.zq_DetallesFacturasCalcFields(DataSet: TDataSet);
begin
  if frmrepositorio.ZQInsumos.Locate('sIdInsumo', zq_DetallesFacturas.FieldByName('sDescripcion').AsString, []) then
    zq_DetallesFacturas.FieldByName('Descripcion').AsString := frmrepositorio.ZQInsumos.FieldByName('mDescripcion').asString;
end;

Function Tfrm_Depositoscias.Tamanyo (Archivo : String): Real;
Var
  Busca : TsearchRec;
Begin
  if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then Result := Busca.size / 1024
  Else Result:=0;
End;
procedure Tfrm_Depositoscias.cambio_estado;
begin
  if zQEgresos.State in [dsInsert] then
  begin
    tdFechaExp.Enabled        := True ;
    dbfechaRecepcion.Enabled  := True ;
    tdFecha.Enabled           := True ;
    tmDescripcion.Enabled     := True ;
    dbCompania.Enabled        := True ;
    dbProyecto.Enabled        := True ;
    cmbMeses.Enabled          := True ;
    dbestado.Enabled          := True;
    //zqProyectos.Filtered      := False;
    //zqProyectos.Filter        := 'sIdCompania = "%$%$%$%"';
    frmrepositorio.ZQPrecioDivisas.Filter := 'iIdDivisa = 0';
    //zqProyectos.Filtered      := True;
    NxTabSheet2.Enabled       := False;
    NxTabSheet3.Enabled       := True;
    chk_Timbrar.Enabled       := False;
    btnCfdi.Enabled           := False;
    NxPageControl2.Enabled    := True ;
    Panel2.Enabled := False;
    AplicaPagoParcial.enabled := true;
    //Para el timbrado
    chkIntegraAddenda.Enabled := False;
    chk_Timbrar.Enabled       := False;
    btnCfdi.Enabled           := False;
    chkNotacredito.ActiveProperties.ReadOnly  := False;
    //Fin de timbrado
    DBGrid1.DataController.DataSource := nil;
    Vista2.DataController.DataSource := nil;
  end else if zQEgresos.State in [dsEdit] then
  begin
    mensaje   := 'Se modifico la factura: ';
    tdFechaExp.Enabled        := True;
    dbfechaRecepcion.Enabled  := True;
    tdFecha.Enabled           := True;
    tmDescripcion.Enabled     := True;
    dbCompania.Enabled        := True;
    dbProyecto.Enabled        := True;
    cmbMeses.Enabled          := True;
    dbestado.Enabled          := True;
    AplicaPagoParcial.enabled := true;
    NxTabSheet2.Enabled       := False;
    NxPageControl2.Enabled    := True ;
    NxTabSheet3.Enabled       := true;
    Panel2.Enabled := False;
    //Para el timbrado
    chkIntegraAddenda.Enabled := False;
    chk_Timbrar.Enabled       := False;
    btnCfdi.Enabled           := False;
    chkNotacredito.ActiveProperties.ReadOnly  := False;
    //Fin de timbrado
    dbCompaniaPropertiesCloseUp(dDivisa);
    dDivisaPropertiesCloseUp(dDivisa);
  end else if zQEgresos.State in [dsBrowse] then
  begin
    Mensaje := '';
    tdFechaExp.Enabled        := False;
    dbfechaRecepcion.Enabled  := False;
    tdFecha.Enabled           := False;
    tmDescripcion.Enabled     := False;
    dbCompania.Enabled        := False;
    dbProyecto.Enabled        := False;
    cmbMeses.Enabled          := False;
    AplicaPagoParcial.enabled := false;
    NxTabSheet2.Enabled       := True;
    zqProyectos.Filtered      := False;
    frmrepositorio.ZQPrecioDivisas.Filtered := False;
    chk_Timbrar.Enabled       := True;
    btnCfdi.Enabled           := True;
    dbestado.Enabled          := False;
    NxPageControl2.Enabled    := False;
    Panel2.Enabled            := True;
    //Para el timbrado
    chkIntegraAddenda.Enabled := False;
    chk_Timbrar.Enabled       := False;
    btnCfdi.Enabled           := False;
    chkNotacredito.ActiveProperties.ReadOnly  := True;
    //Fin de timbrado
    NxTabSheet3.Enabled       := False;
    DBGrid1.DataController.DataSource := ds_DetallesFacturas;
  end;
end;

procedure Tfrm_Depositoscias.insertar_valores;
begin
  zqEgresos.FieldByName('dIva').AsFloat                 := 0 ;
  zQEgresos.FieldByName('iIdStatus').AsInteger          := 1;
  zqEgresos.FieldByName('lAplicaPagoParcial').AsString  := 'No';
  zqEgresos.FieldByName('sIdNumeroCuenta').AsString     := tsIdCuentaBancaria.EditValue;
  zqEgresos.FieldByName('sUsuario').AsString            := global_usuario;
  zQEgresos.FieldByName('dFechaFactura').AsDateTime     := Date ;
  zQEgresos.FieldByName('dFechaRecepcion').AsDateTime   := Date + 1 ;
  zQEgresos.FieldByName('dIdFecha').AsDateTime          := Date + 30 ;
  zQEgresos.FieldByName('sReferencia').AsString         := '*' ;
  zQEgresos.FieldByName('sTipoMovimiento').AsString     := 'DEPOSITO' ;
  zQEgresos.FieldByName('sIdArea').AsString             := Connection.configuracionCont.FieldByName('sTesoreria').AsString ;
  zQEgresos.FieldByName('dImporteTotal').AsFloat        := 0 ;
  zQEgresos.FieldByName('lComprobado').AsString         := 'Si' ;
  zQEgresos.FieldByName('sIdProveedor').AsString        := '*' ;
  zQEgresos.FieldByName('sRFC').AsString                := '*' ;
  zQEgresos.FieldByName('sRazonSocial').AsString        := '*' ;
  zQEgresos.FieldByName('sDomicilio').AsString          := '*' ;
  zQEgresos.FieldByName('sCiudad').AsString             := '*' ;
  zQEgresos.FieldByName('sCP').AsString                 := '*' ;
  zQEgresos.FieldByName('sEstado').AsString             := '*' ;
  zQEgresos.FieldByName('sTelefono').AsString           := '*' ;
  zQEgresos.FieldByName('sReferencia').AsString         := 'Transferencia Electronica' ;
  zQEgresos.FieldByName('dParcialidad').AsFloat         := 0 ;
  zQEgresos.FieldByName('CFDI_sEstado').AsString        := 'SIN TIMBRE';
  zQEgresos.FieldByName('sMes').AsString                := 'ENERO';
  zQEgresos.FieldByName('sNumeroDeCuenta').AsString     := '0';

  zqEgresos.FieldByName('sCotizacion').AsString    := 'SC' ;
  zqEgresos.FieldByName('sOrdenCompra').AsString   := 'SOC' ;
  zqEgresos.FieldByName('sNumeroEntrada').AsString := 'SN' ;

  zQEgresos.FieldByName('sNumeroPedido').AsString       := '0';
  zQEgresos.FieldByName('sNumeroDeCuenta').AsString     := 'NO IDENTIFICADO';
  zQEgresos.FieldByName('iIdVendedor').AsInteger        := 0;
  //Para los proyectos
  if connection.configuracionCont.FieldValues['lMostrarProyectos']='No' Then
     zQEgresos.FieldByName('sProyecto').AsString           := 'SIN PROYECTO';

if qryCompanias.RecordCount = 0 Then
  begin
     MessageDlg('No se puede Crear Facturas sin Clientes', mtInformation, [mbOK], 0) ;
     frmBarra1.btnCancel.Click ;
  end
  else
   begin
     dbCompania.ItemIndex    := 0;
     DBEdit4.ItemIndex       := 0;
     dbCompaniaPropertiesCloseUp(dbCompania);
     //if zqProyectos.RecordCount > 0 then dbProyecto.ItemIndex :=0;
     dDivisa.ItemIndex       := 0;
     dDivisaPropertiesCloseUp(dDivisa);
   end;
end;

procedure Tfrm_Depositoscias.guardar_kardex;
begin
  // Actualizo Kardex del Sistema ....
  connection.zCommand.Active := False ;
  connection.zCommand.SQL.Clear ;
  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                              'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)')  ;
  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
  connection.zcommand.Params.ParamByName('Descripcion').Value := Mensaje + zQEgresos.FieldByName('iIdFolio').AsString +' por el usuario: '+ global_usuario + ' en el modulo de depositos compañia, La compañia que la emitio es: '+ global_contrato;
  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
  connection.zcommand.Params.ParamByName('Origen').Value    := 'Depositos por compañia';
  connection.zCommand.ExecSQL ;
end;
procedure Tfrm_Depositoscias.cambio_estado_conceptos;
begin
  if zq_DetallesFacturas.State in [dsInsert,dsEdit] then
  begin
    DBMemo2.Enabled       := True;
	  DBCantidad.Enabled       := True;
	  DBEdit3.Enabled       := True;
    btnAdd.Enabled        := False;
    btnEdit.Enabled       := False;
    btnDelete.Enabled     := False;
    btnPost.Enabled       := True;
    btnCancel.Enabled     := True;
    cxGrid1.Enabled       := False;
    gridPrincipal.enabled := False;
    Panel2.Enabled        := False;
    frmBarra1.Enabled     := False;
    //Para el timbrado
    chkIntegraAddenda.Enabled := False;
    chk_Timbrar.Enabled       := False;
    btnCfdi.Enabled           := False;
    //Fin de timbrado
    cxDetalles_Factura.ActivePageIndex := 1;
    DBMemo2.SetFocus ;
  end else
  if zq_DetallesFacturas.State in [dsBrowse] then
  begin
    DBMemo2.Enabled         := False;
    DBCantidad.Enabled         := False;
    DBEdit3.Enabled         := False;
    btnAdd.Enabled          := True;
    btnEdit.Enabled         := True;
    btnPost.Enabled         := False;
    btnCancel.Enabled       := False;
    btnDelete.Enabled       := True;
    Panel2.Enabled          := True;
    chkAplicacuadre.Checked := False;
    cxGrid1.Enabled         := True;
    frmBarra1.Enabled       := True;
    //Para el timbrado
    chkIntegraAddenda.Enabled := true;
    chk_Timbrar.Enabled       := true;
    btnCfdi.Enabled           := True;
    //Fin de timbrado
    cxDetalles_Factura.ActivePageIndex := 0;
    gridPrincipal.enabled   := True;
  end;
end;

procedure Tfrm_Depositoscias.previsualizar;
Var
  Qry, QryConceptos: TZQuery;
  IdRegistro: String;
  i, x, Encontrados, id: Integer;
  oCantidad, oUnidad, oDescripcion, oPu, oTotal, oIVA: TComponent;
  CarpetaCFDI, CarpetaEmisor, s: String;
  dTotalFactura: Real;
  m, f: TStream;
  oExportfilter: TfrxCustomExportFilter;
  FacturaTimbrada: Boolean;
  FechaEmision: TDateTime;
  iFolioActual: Integer;
begin
  Memoria_Factura.Open;
  Memoria_Factura.EmptyTable;
  Memoria_Conceptos.Open;
  Memoria_Conceptos.EmptyTable;
  id := zqegresos.FieldByName('iIdFolio').AsInteger;
  Try
    SumaTotalFactura:=0;
    Qry := TZQuery.Create(Self);
    Qry.Connection := Connection.zConnection;
    Qry.SQL.Clear;
    Qry.SQL.Text := 'select cc.*, rhe.sNombre as Descripcion_Estado '+
                    'from con_configuracion cc '+
                    'inner join rh_estados rhe on (rhe.sClaveEstado = cc.sEstado) '+
                    'where sNombreCorto = :sNombreCorto';
    Qry.ParamByName('sNombreCorto').AsString := global_contrato;
    Qry.Open;
    //Emisor
    Emisor.RFC:= Qry.FieldByName('sRFC').AsString;
    Emisor.RazonSocial:= Qry.FieldByName('sNombre').AsString;
    Emisor.Domicilio.Calle:= Qry.FieldByName('sDireccion1').AsString;
    Emisor.Domicilio.Numero:= Qry.FieldByName('NExterior').AsString;
    Emisor.Domicilio.NumeroInterior:= Qry.FieldByName('NInterior').AsString;
    Emisor.Domicilio.CodigoPostal:= Qry.FieldByName('sCP').AsString;
    Emisor.Domicilio.Colonia:= Qry.FieldByName('sDireccion2').AsString;
    Emisor.Domicilio.Municipio:= Qry.FieldByName('sDireccion3').AsString;
    Emisor.Domicilio.Estado:= Qry.FieldByName('Descripcion_Estado').AsString;
    Emisor.Domicilio.Pais:= 'MEXICO';
    Emisor.Domicilio.Localidad:= Qry.FieldByName('sLocalidad').AsString;
    Emisor.ExpedidoEn := Emisor.Domicilio;
    Emisor.RegimenFiscal := Qry.FieldByName('sRegimen').AsString;
    //Receptor
    qryCompanias.Locate('sIdCompania', zQEgresos.FieldByName('sIdCompania').AsString,[]);
    Receptor.RFC                       := QryCompanias.FieldByName('sRFC').AsString;
    Receptor.RazonSocial               := QryCompanias.FieldByName('sRazonSocial').AsString;
    Receptor.Domicilio.Calle           := QryCompanias.FieldByName('sDomicilio').AsString;
    Receptor.Domicilio.Numero          := QryCompanias.FieldByName('sNumeroExterior').AsString;
    Receptor.Domicilio.NumeroInterior  := QryCompanias.FieldByName('sNumeroInterior').AsString;
    Receptor.Domicilio.CodigoPostal    := QryCompanias.FieldByName('sCP').AsString;
    Receptor.Domicilio.Colonia         := QryCompanias.FieldByName('sColonia').AsString;
    Receptor.Domicilio.Municipio       := QryCompanias.FieldByName('sMunicipio').AsString;
    Receptor.Domicilio.Estado          := QryCompanias.FieldByName('sEstado').AsString;
    Receptor.Domicilio.Pais            :='MEXICO';
    Receptor.Domicilio.Localidad       := QryCompanias.FieldByName('sLocalidad').AsString;
    Application.ProcessMessages;

    Factura := TPFFacturaElectronica.Create(Emisor, Receptor, trFactura);
    if chkNotacredito.Checked then
       Factura.Propiedades.TipoDeComprobante := 'egreso'
    else
       Factura.Propiedades.TipoDeComprobante := 'ingreso';
    FormaPago.locate('sIdFormaPago',zQEgresos.FieldByName('sFormaPago').asInteger,[]);
    Factura.Propiedades.FormaDePago    := FormaPago.FieldByName('Descripcion').asString;
    Factura.Propiedades.MetodoDePago   := zQEgresos.FieldByName('sReferencia').AsString;
    //Factura.Propiedades.folio          := trim(InttoStr(zQEgresos.FieldByName('iFolio').AsInteger)) ;
    Factura.Propiedades.Moneda         := dDivisa.EditValue;
	  Factura.Propiedades.NumeroDeCuenta := zQCuentasBancarias.FieldByName('sNombreCuenta').AsString;

    //Genera los conceptos
    i := 0;
    zq_DetallesFacturas.First;
    while Not zq_DetallesFacturas.Eof do
    begin
      Concepto.Cantidad := zq_DetallesFacturas.FieldByName('dCantidad').AsFloat;
      Concepto.Unidad := zq_DetallesFacturas.FieldByName('sMedida').AsString;
      frmrepositorio.ZQInsumos.locate('sidinsumo', zq_DetallesFacturas.FieldByName('sDescripcion').AsString,[]);
      Concepto.Descripcion := frmrepositorio.ZQInsumos.FieldByName('mDescripcion').AsString;
      Concepto.PrecioUnitario := zq_DetallesFacturas.FieldByName('dImporte').AsFloat;
      Factura.AgregarConceptos(Concepto);
      Memoria_Conceptos.Append;
      Memoria_Conceptos.FieldByName('dCantidad').AsFloat      := Concepto.Cantidad;
      Memoria_Conceptos.FieldByName('sUnidad').AsString       := Concepto.Unidad;
      Memoria_Conceptos.FieldByName('sDescripcion').AsString  := Concepto.Descripcion;
      Memoria_Conceptos.FieldByName('dValorUnitario').AsFloat := Concepto.PrecioUnitario;
      Memoria_Conceptos.FieldByName('dTotal').AsFloat         := Concepto.Cantidad * Concepto.PrecioUnitario;
      Memoria_Conceptos.Post;
      SumaTotalFactura := SumaTotalFactura + Memoria_Conceptos.FieldByName('dTotal').AsFloat;
      zq_DetallesFacturas.Next;
    end;

    Impuesto.Tipo := impTrasladado;
    Impuesto.Impuesto:='IVA';
    Impuesto.Tasa:= (connection.configuracionCont.FieldByName('IVA').AsFloat);
    //Le paso el valor del IVA de los productos
    Impuesto.Importe:= zQEgresos.FieldByName('dIva').AsFloat;
    Factura.AgregarImpuestos(Impuesto);
    Factura.Generar;
    FechaEmision := Now();
    FacturaTimbrada := False;
    Memoria_Factura.Append;
    Try
      Memoria_Factura.FieldByName('sFolioFactura').AsString := zqEgresos.FieldByName('iFolio').AsString;
      Memoria_Factura.FieldByName('sRFC').AsString := Emisor.RFC;//Qry.FieldByName('sRFC').AsString;
      Memoria_Factura.FieldByName('sRFC_Receptor').AsString := Receptor.RFC;
      Memoria_Factura.FieldByName('sRegimenFiscal').AsString := Emisor.RegimenFiscal;
      Memoria_Factura.FieldByName('dFechaEmision').AsDateTime := FechaEmision;
      Memoria_Factura.FieldByName('bLogoEmpresa').AsVariant := Connection.configuracion.FieldByName('bImagen').AsVariant;//Qry.FieldByName('bLogoEmpresa').AsVariant;
      Memoria_Factura.FieldByName('sLugarFechaExpedicion').AsString := Factura.LugarDeExpedicion + ' ' + FormatDateTime('yyyy-mm-dd', Factura.FechaGeneracion) + 'T' + FormatDateTime('hh:mm:ss', Factura.FechaGeneracion);
      Memoria_Factura.FieldByName('sSerieCSD').AsString := Factura.Certificado.NumeroSerie;
      if dDivisa.EditValue = 'MXP' then
        Memoria_Factura.FieldByName('sTotal').AsString := CantidadEnLetra(Factura.Total, 1)
      else
        Memoria_Factura.FieldByName('sTotal').AsString   := CantidadEnLetra(Factura.Total, 2);
      Memoria_Factura.FieldByName('dSubTotal').AsFloat   := zqEgresos.FieldByName('dImporteTotal').AsFloat;
      Memoria_Factura.FieldByName('dIva').AsFloat        := zqEgresos.FieldByName('dIVA').AsFloat;
      Memoria_Factura.FieldByName('dTotal').AsFloat      := Factura.Total;
      FormaPago.locate('sIdFormaPago',zQEgresos.FieldByName('sFormaPago').asInteger,[]);
      Memoria_Factura.FieldByName('sTipoPago').AsString  := FormaPago.FieldByName('Descripcion').asString;
      Memoria_Factura.FieldByName('sFormaPago').AsString := zQEgresos.FieldByName('sReferencia').AsString;
      Memoria_Factura.FieldByName('sFolioFactura').AsString      := IntToStr(zQEgresos.FieldByName('iFolio').AsInteger);

      Memoria_Factura.FieldByName('mDescripcion').AsString := zQEgresos.Fieldbyname('mDescripcion').AsString;
      Memoria_Factura.FieldByName('sIdNumeroCuenta').AsString := zQEgresos.Fieldbyname('sNumeroDeCuenta').AsString;
      Memo_Log.Lines.Add('Cadena Original del Timbre recibido:');
      Memo_Log.Lines.Add(Factura.CadenaOriginal);
      Application.ProcessMessages;
    Finally
      Memoria_Factura.Post;
      ProveedorTimbrado.Free;
    End;
    Application.ProcessMessages;
    isopenE := false;
    Grid_facturas.DataController.DataSource := dszQEgresos;
    Grid_facturas.DataController.DataSource := dszQEgresos;
    isopenE := true;
    zQEgresos.Locate('iIdFolio', id, []);
    qryCompanias.Locate('sIdCompania', zQEgresos.FieldByName('sIdCompania').AsString,[]);
    Panel_Espera.Visible := False;
    zQEgresos.Locate('iIdFolio', id, []);
    frx_Reporte.LoadFromFile(global_files + global_miReporte + '_CADFactura3.fr3');

       if not FileExists(global_files + global_miReporte + '_CADFactura3.fr3') then
  begin
   showmessage('El archivo de reporte '+ global_files + global_Mireporte+'_CADFactura3.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;




    oExportfilter := TfrxCustomExportFilter(frx_ExportaPDF);
    oExportFilter.ShowDialog := False;
    oExportFilter.FileName := CarpetaEmisor + '\' + zqEgresos.FieldByName('iFolio').AsString + '-' + Receptor.RazonSocial + '.pdf';
    frx_Reporte.PrepareReport(True);
    chk_Timbrar.Checked := False;
    chkIntegraAddenda.Checked := False;
  except
    on E: Exception do
    begin
      Memo_Log.Lines.Add('Ocurrio un error: ' + E.Message + e.ClassName);
      Panel_Espera.Visible := False;
      zqEgresos.Cancel;
    End;
  End;
end;
procedure Tfrm_Depositoscias.cambio_estado_pagos;
begin
  if qryParcPagos.state in [dsInsert, dsEdit] then
  begin
    //Para el activacion/desacticion de los botones del navegador
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Append.Enabled  := False;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Edit.Enabled    := False;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Post.Enabled    := True;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Cancel.Enabled  := True;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Delete.Enabled  := False;
    //Para poder editar los datos del grid
    cxgrdbclmnGrid2DBTableView1dIdFecha1.Options.Editing    := True;
    cxgrdbclmnGrid2DBTableView1sDescripcion1.Options.Editing:= True;
    cxgrdbclmnGrid2DBTableView1dImporte1.Options.Editing    := True;
    cxgrdbclmnGrid2DBTableView1lPago1.Options.Editing       := True;
  end
  else if qryParcPagos.state in [dsBrowse] then
  begin
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Append.Enabled := True;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Edit.Enabled   := True;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Post.Enabled   := False;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Cancel.Enabled := False;
    cxgrdbtblvwBViewPagos.Navigator.Buttons.Delete.Enabled := True;
    //Para poder editar los datos del grid
    cxgrdbclmnGrid2DBTableView1dIdFecha1.Options.Editing    := False;
    cxgrdbclmnGrid2DBTableView1sDescripcion1.Options.Editing:= False;
    cxgrdbclmnGrid2DBTableView1dImporte1.Options.Editing    := False;
    cxgrdbclmnGrid2DBTableView1lPago1.Options.Editing       := False;
  end;
end;

procedure Tfrm_Depositoscias.EnviarMensaje(Mensaje, Ip: String);
begin
  with WSocketMensaje do
  begin
    close;
    Addr := Ip;
    Port := '83';
    Proto := 'udp';
    Connect;
    SendStr(Mensaje);
  end;
  WSocketMensaje.close;
end;

procedure Tfrm_Depositoscias.Tablero;
var
  Qry: TZReadOnlyQuery;
begin
  Qry := TZReadOnlyQuery.Create(Self);
  Qry.Connection := Connection.zConnection;
  Qry.Active := False ;
  Qry.SQL.Clear ;
  Qry.SQL.Add('select direccionip from nuc_conexiones');
  Qry.Open;

  while not Qry.Eof do
  begin
    EnviarMensaje(zQEgresos.FieldByName('iIdFolio').AsString,Qry.FieldByName('direccionip').AsString);
    Qry.Next;
  end;
end;


procedure Tfrm_Depositoscias.llenarCampos;
begin
  if IsOpenE then
  begin
    if zQEgresos.RecordCount  > 0 then
    begin
      DBGrid1.DataController.DataSource := nil;  //Desligo el grid
      cxGrid1Level1.GridView := nil;
      zq_DetallesFacturas.Filtered := False;     //Desactivo el filtro
      zq_DetallesFacturas.Filter := 'iId_Factura = '+ IntToStr(zQEgresos.FieldByName('iIdFolio').AsInteger); //Agrego el filtro
      zq_DetallesFacturas.Filtered := True;  //Activo el filtro
      if DBMemo2.Text <> '' then
      begin
        cxGrid1Level1.GridView := DBGrid1;
        DBGrid1.DataController.DataSource := ds_DetallesFacturas;   //Liga la vista a la datasource
      end
      else
      begin
        cxGrid1Level1.GridView := Vista2;
        Vista2.DataController.DataSource := ds_DetallesFacturas;
      end;
      zqAddendaPemex.Filtered := False;     //Desactivo elsTipoPago filtro
      zqAddendaPemex.Filter := 'iId_Factura = '+ IntToStr(zQEgresos.FieldByName('iIdFolio').AsInteger); //Agrego el filtro
      zqAddendaPemex.Filtered := True;
      //Bloque para inhabilitar los bototes de timbrar o adenda
      if (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'TIMBRADA') or (zQEgresos.FieldByName('CFDI_sEstado').AsString = 'CANCELADA')Then
      begin
        chkIntegraAddenda.Enabled := False;
        chk_Timbrar.Enabled       := False;
        btnCfdi.Enabled           := False;
      end else
      begin
        chkIntegraAddenda.Enabled := True;
        chk_Timbrar.Enabled        := True;
        btnCfdi.Enabled           := True;
      end;

      if zQEgresos.FieldByName('lNotaCredito').AsString = 'Si' then
         chkNotaCredito.Checked := True
      else
         chkNotaCredito.Checked := False;
      //Bloque para inhabilitar/Habilitar para pagos parciales
      if zQEgresos.FieldByName('lAplicaPagoParcial').AsString = 'Si' then
      begin
        Parcialidades.enabled := True;
        lbAbono.Visible       := True;
        LbDebe.Visible        := True;
        Abono.Visible         := True;
        Debe.Visible          := True;
        Abono.Caption         := '$'+ FloatToStr(zQEgresos.FieldByName('dParcialidad').AsFloat);
        Debe.Caption          := '$'+ FloatToStr(zQEgresos.FieldByName('Total').AsFloat - zQEgresos.FieldByName('dParcialidad').AsFloat);
      end
      else
      begin
        Parcialidades.enabled := False;
        lbAbono.Visible       := False;
        LbDebe.Visible        := False;
        Abono.Visible         := False;
        Debe.Visible          := False;
        Abono.Caption         := '';
        Debe.Caption          := '';
      end;
    end;
    dbestado.Enabled := False;
  end;


end;



end.
