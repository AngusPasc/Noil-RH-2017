unit frm_Pedidos;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,Jpeg,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl, RxLookup, DateUtils, unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer, Newpanel,
  Excel2000, ZAbstractRODataset, ZDataset, ZAbstractDataset, rxCurrEdit,
  rxToolEdit, JvExMask, JvToolEdit, JvCombobox, NxCollection,
  AdvGlowButton, udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  UFunctionsGHH, UnitValidacion, Editb, EditCalc, frm_ReportesAlmacen, NxEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxButtons, ExportaExcel,masUtilerias, cxContainer,
  cxImage, ImgList, ExtDlgs, cxTextEdit, FormAutoScaler, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  JvExControls, JvDBLookup, cxCurrencyEdit, cxSplitter, cxGroupBox, cxMemo,
  cxRichEdit;

type
  TfrmPedidos = class(TForm)
    ds_anexo_ocompras: TDataSource;
    ds_anexo_prequisicion: TDataSource;
    frxDBReporte: TfrxDBDataset;
    GroupBox3: TGroupBox;
    ds_proveedores: TDataSource;
    OpenXLS: TOpenDialog;
    reporte: TZQuery;
    anexo_pocompras: TZQuery;
    Proveedores: TZReadOnlyQuery;
    anexo_pocomprasdMontoMN: TFloatField;
    anexo_pocomprassContrato: TStringField;
    anexo_pocomprasdCantidad: TFloatField;
    anexo_pocomprasiFolioPedido: TIntegerField;
    anexo_pocomprassNumeroActividad: TStringField;
    anexo_pocomprasiItem: TIntegerField;
    anexo_pocomprasmDescripcion: TMemoField;
    anexo_pocomprassMedida: TStringField;
    frxEntrada: TfrxReport;
    anexo_pocomprassIdInsumo: TStringField;
    anexo_pocomprasdCosto: TFloatField;
    anexo_pocomprassNumeroOrden: TStringField;
    anexo_pocomprassDescripcion: TStringField;
    requisiciones: TZReadOnlyQuery;
    ds_requisiciones: TDataSource;
    dtsPartidas: TDataSource;
    Partidas: TZReadOnlyQuery;
    ds_insumo: TDataSource;
    Insumos: TZReadOnlyQuery;
    rxSeguimiento_Mat: TRxMemoryData;
    rxSeguimiento_MatsContrato: TStringField;
    rxSeguimiento_MatPartida: TStringField;
    rxSeguimiento_MatsNumeroActividad: TStringField;
    rxSeguimiento_MatDescripcionAnexo: TStringField;
    rxSeguimiento_MatCantidadAnexo: TFloatField;
    rxSeguimiento_MatMedidaAnexo: TStringField;
    rxSeguimiento_MatCostoMNAnexo: TFloatField;
    rxSeguimiento_MatCostoDLLAnexo: TFloatField;
    rxSeguimiento_MatTipo: TStringField;
    rxSeguimiento_MatId: TStringField;
    rxSeguimiento_MatDescripcion: TStringField;
    rxSeguimiento_MatUnidad: TStringField;
    rxSeguimiento_MatCantidad: TFloatField;
    rxSeguimiento_MatCostoMN: TFloatField;
    rxSeguimiento_MatCostoDLL: TFloatField;
    rxSeguimiento_MatFolioReq: TIntegerField;
    rxSeguimiento_MatItemReq: TIntegerField;
    rxSeguimiento_MatdCantidadReq: TFloatField;
    rxSeguimiento_MatdRestanteReq: TFloatField;
    rxSeguimiento_MatdExcedenteReq: TFloatField;
    rxSeguimiento_MatdPorcentajeReq: TFloatField;
    rxSeguimiento_MatdPorcentajeReq_T: TFloatField;
    rxSeguimiento_MatFolioOC: TIntegerField;
    rxSeguimiento_MatItemOC: TIntegerField;
    rxSeguimiento_MatdCantidadOC: TFloatField;
    rxSeguimiento_MatdRestanteOC: TFloatField;
    rxSeguimiento_MatdExcedenteOC: TFloatField;
    rxSeguimiento_MatdPorcentajeOC: TFloatField;
    rxSeguimiento_MatdPorcentajeOC_T: TFloatField;
    rxSeguimiento_MatFolioIn: TIntegerField;
    rxSeguimiento_MatItemIn: TIntegerField;
    rxSeguimiento_MatdCantidadIn: TFloatField;
    rxSeguimiento_MatdRestanteIn: TFloatField;
    rxSeguimiento_MatdExcedenteIn: TFloatField;
    rxSeguimiento_MatdPorcentajeIn: TFloatField;
    rxSeguimiento_MatFolioOut: TIntegerField;
    rxSeguimiento_MatItemOut: TIntegerField;
    rxSeguimiento_MatdCantidadOut: TFloatField;
    rxSeguimiento_MatdRestanteOut: TFloatField;
    rxSeguimiento_MatdExcedenteOut: TFloatField;
    rxSeguimiento_MatdPorcentajeOut: TFloatField;
    rxSeguimiento_MatNumeroReporte: TStringField;
    rxSeguimiento_MatFechaRD: TDateField;
    rxSeguimiento_MatFrenteRD: TStringField;
    rxSeguimiento_MatdCantidadRD: TFloatField;
    rxSeguimiento_MatdRestanteRD: TFloatField;
    rxSeguimiento_MatdExcedenteRD: TFloatField;
    rxSeguimiento_MatdPorcentajeRD: TFloatField;
    rxSeguimiento_MatdPorcentajeRD_T: TFloatField;
    rxSeguimiento_MatiNumeroEstimacion: TIntegerField;
    rxSeguimiento_MatsNumeroOrden: TStringField;
    rxSeguimiento_MatsNumeroGenerador: TStringField;
    rxSeguimiento_MatdCantidadGen: TFloatField;
    rxSeguimiento_MatdExcedenteGen: TFloatField;
    rxSeguimiento_MatdRestanteGen: TFloatField;
    rxSeguimiento_MatdPorcentajeGen: TFloatField;
    frxSeguimiento_Mat: TfrxDBDataset;
    frxSeguimiento_Mat1: TfrxDBDataset;
    rxSeguimiento_Mat1: TRxMemoryData;
    StringField9: TStringField;
    FloatField6: TFloatField;
    rxSeguimiento_Mat1Unidad: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    rxSeguimiento_Mat1dCantidadReq_T: TFloatField;
    rxSeguimiento_Mat1dRestanteReq_T: TFloatField;
    rxSeguimiento_Mat1dExcedenteReq_T: TFloatField;
    FloatField13: TFloatField;
    frxSeguimiento_Mat2: TfrxDBDataset;
    rxSeguimiento_Mat2: TRxMemoryData;
    StringField20: TStringField;
    FloatField37: TFloatField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    rxSeguimiento_Mat2dCantidadOC_T: TFloatField;
    rxSeguimiento_Mat2dRestanteOC_T: TFloatField;
    rxSeguimiento_Mat2dExcedenteOC_T: TFloatField;
    FloatField49: TFloatField;
    frxSeguimiento_Mat3: TfrxDBDataset;
    rxSeguimiento_Mat3: TRxMemoryData;
    StringField7: TStringField;
    FloatField4: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    rxSeguimiento_Mat3dCantidadIn_T: TFloatField;
    rxSeguimiento_Mat3dExcedenteIn_T: TFloatField;
    frxSeguimiento_Mat4: TfrxDBDataset;
    rxSeguimiento_Mat4: TRxMemoryData;
    StringField8: TStringField;
    FloatField5: TFloatField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    rxSeguimiento_Mat4dCantidadOut_T: TFloatField;
    rxSeguimiento_Mat4dExcedenteOut_T: TFloatField;
    frxSeguimiento_Mat5: TfrxDBDataset;
    rxSeguimiento_Mat5: TRxMemoryData;
    StringField22: TStringField;
    FloatField43: TFloatField;
    DateField2: TDateField;
    StringField26: TStringField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    rxSeguimiento_Mat5dCantidadRD_T: TFloatField;
    rxSeguimiento_Mat5dExcedenteRD_T: TFloatField;
    rxSeguimiento_Mat5dRestanteRD_T: TFloatField;
    frxSeguimiento_Mat6: TfrxDBDataset;
    rxSeguimiento_Mat6: TRxMemoryData;
    StringField35: TStringField;
    FloatField81: TFloatField;
    IntegerField31: TIntegerField;
    StringField40: TStringField;
    StringField41: TStringField;
    FloatField107: TFloatField;
    FloatField108: TFloatField;
    FloatField109: TFloatField;
    FloatField110: TFloatField;
    rxSeguimiento_Mat6CantidadAnexo: TFloatField;
    ds_moneda: TDataSource;
    Moneda: TZReadOnlyQuery;
    anexo_ocompras: TZQuery;
    anexo_pocomprassStatus: TStringField;
    PanelImprime: TNxPanel;
    cmdTitle: TButton;
    cmdCancelar: TButton;
    cmdAcepta: TButton;
    zqDatos: TZReadOnlyQuery;
    anexo_pocomprasdDescuento: TFloatField;
    FiltroUno: TGroupBox;
    lblDatos: TLabel;
    cbxDatos: TComboBox;
    FiltroDos: TGroupBox;
    Label21: TLabel;
    FechaInicio: TDateTimePicker;
    FechaFinal: TDateTimePicker;
    Label22: TLabel;
    Label23: TLabel;
    rxPrecios: TRxMemoryData;
    rxPreciossContrato: TStringField;
    rxPreciossIdInsumo: TStringField;
    rxPreciosmDescripcion: TMemoField;
    rxPreciossIdProveedor: TStringField;
    rxPreciosdFecha1: TDateField;
    rxPreciosdFecha2: TDateField;
    rxPreciosdFecha3: TDateField;
    rxPreciosdFecha4: TDateField;
    rxPreciosdFecha5: TDateField;
    rxPreciosdFecha6: TDateField;
    rxPreciosdFecha7: TDateField;
    rxPreciosdFecha8: TDateField;
    rxPreciosdCosto1: TFloatField;
    rxPreciosdCosto2: TFloatField;
    rxPreciosdCosto3: TFloatField;
    rxPreciosdCosto4: TFloatField;
    rxPreciosdCosto5: TFloatField;
    rxPreciosdCosto6: TFloatField;
    rxPreciosdCosto7: TFloatField;
    rxPreciosdCosto8: TFloatField;
    frxPrecios: TfrxDBDataset;
    rxPreciosItem: TIntegerField;
    rxPreciossOrdenCompra1: TStringField;
    rxPreciossOrdenCompra2: TStringField;
    rxPreciossOrdenCompra3: TStringField;
    rxPreciossOrdenCompra4: TStringField;
    rxPreciossOrdenCompra5: TStringField;
    rxPreciossOrdenCompra6: TStringField;
    rxPreciossOrdenCompra7: TStringField;
    rxPreciossOrdenCompra8: TStringField;
    frmBarra2: TfrmBarra;
    Grid_Entradas: TcxGrid;
    dbg_OCVista: TcxGridDBTableView;
    Col_ifoliopedido: TcxGridDBColumn;
    Col_ordenCompra: TcxGridDBColumn;
    Col_fecha: TcxGridDBColumn;
    Col_montomn: TcxGridDBColumn;
    Col_status: TcxGridDBColumn;
    dbgLevOC: TcxGridLevel;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    anexo_ocomprassContrato: TStringField;
    anexo_ocomprasiFolioPedido: TIntegerField;
    anexo_ocomprassOrdenCompra: TStringField;
    anexo_ocomprassFolioRequisicion: TStringField;
    anexo_ocomprassIdProveedor: TStringField;
    anexo_ocomprassNumeroOrden: TStringField;
    anexo_ocomprasdIdFecha: TDateField;
    anexo_ocomprasdFechaEntrega: TDateField;
    anexo_ocomprassReferencia: TStringField;
    anexo_ocomprassElaboro: TStringField;
    anexo_ocomprassReviso1: TStringField;
    anexo_ocomprassReviso2: TStringField;
    anexo_ocomprassAutorizo: TStringField;
    anexo_ocomprassMedioTransporte: TStringField;
    anexo_ocomprasiPeriodoPago: TIntegerField;
    anexo_ocompraslUnicoProveedor: TStringField;
    anexo_ocomprassMoneda: TStringField;
    anexo_ocomprasdCambio: TFloatField;
    anexo_ocomprasmComentarios: TMemoField;
    anexo_ocomprassStatus: TStringField;
    anexo_ocomprassLugarEntrega: TStringField;
    anexo_ocomprassCondiciones: TStringField;
    anexo_ocomprasdIVA: TFloatField;
    anexo_ocomprasdDescuento: TFloatField;
    anexo_ocomprassEntrega: TStringField;
    anexo_ocomprassPrecios: TStringField;
    anexo_ocomprassVigencia: TStringField;
    anexo_ocomprassVendedor: TStringField;
    anexo_ocomprassMail: TStringField;
    anexo_ocompraseEntregado: TStringField;
    Col_Entregado: TcxGridDBColumn;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    Imprimir1: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    cxmglst1: TcxImageList;
    OpenPicture: TOpenPictureDialog;
    zimgfirmas: TZQuery;
    datasetfrximgfirmas: TfrxDBDataset;
    anexo_zimgfirmasbimagen14: TBlobField;
    anexo_zimgfirmasbimagen16: TBlobField;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    Col_folio: TcxGridDBColumn;
    Col_Frente: TcxGridDBColumn;
    Col_Moneda: TcxGridDBColumn;
    Col_lugarentrega: TcxGridDBColumn;
    Col_autorizo: TcxGridDBColumn;
    zimgfirmasbImagen14Sello: TBlobField;
    zq_ocomprassdireccionEnviar: TStringField;
    zq_ocomprassCiudadEnviar: TStringField;
    zq_ocomprassTelefonoEnviar: TStringField;
    frmtsclr1: TFormAutoScaler;
    zqFormasPago: TZReadOnlyQuery;
    dsFormasPago: TDataSource;
    zqanexo_ocomprassFormaPago: TStringField;
    Col_formapago: TcxGridDBColumn;
    Col_grid_EntradasDBTableView1Column1: TcxGridDBColumn;
    Col_fechasuministro: TcxGridDBColumn;
    Col_correo: TcxGridDBColumn;
    zqanexo_ocomprasTituloProveedor: TStringField;
    zqanexo_ocomprasTituloFormaPago: TStringField;
    zqanexo_ocomprasTituloMoneda: TStringField;
    fltfldanexo_ocomprasdMontoMN: TFloatField;
    zqOrdenes: TZReadOnlyQuery;
    dsOrdenes: TDataSource;
    cxgrpbx1: TcxGroupBox;
    pgcontrol: TPageControl;
    ts1: TTabSheet;
    NxHeaderPanel1: TNxHeaderPanel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lblIva: TLabel;
    lbl1: TLabel;
    lbl4: TLabel;
    tdIdFecha: TDateTimePicker;
    dbRequisicion: TJvCheckedComboBox;
    tmComentarios: TMemo;
    grp1: TGroupBox;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    chkTipoCambio: TCheckBox;
    tsTipoCambio: TRxCalcEdit;
    tDescuentoGral: TRxCalcEdit;
    tsDirecEnvio: TcxTextEdit;
    tsCiudadEnvio: TcxTextEdit;
    tsTelefono: TcxTextEdit;
    cbbFormasPago: TcxLookupComboBox;
    btncmdFormaPago: TcxButton;
    chkRequisicion: TCheckBox;
    tiFolio: TEdit;
    btnProveedores: TBitBtn;
    btnReferencia: TBitBtn;
    spEdtIva: TRxCalcEdit;
    tdFechaSuministro: TDateTimePicker;
    tsVendedor: TcxTextEdit;
    tsEmbarca: TcxTextEdit;
    tsEntrega: TcxTextEdit;
    tsVigencia: TcxTextEdit;
    tsPrecios: TcxTextEdit;
    tsCondiciones: TcxTextEdit;
    tsMail: TcxTextEdit;
    cbbFrentes: TcxLookupComboBox;
    ts2: TTabSheet;
    lbltsPlataforma: TLabel;
    imgNotas: TImage;
    NxHeaderPanel2: TNxHeaderPanel;
    GridPartidas: TcxGrid;
    dbg1: TcxGridDBTableView;
    Col_Partida: TcxGridDBColumn;
    Col_idInsumo: TcxGridDBColumn;
    Col_Descripcion: TcxGridDBColumn;
    Col_Medida: TcxGridDBColumn;
    Col_Cantidad: TcxGridDBColumn;
    Col_PrecioUnit: TcxGridDBColumn;
    Col_Total: TcxGridDBColumn;
    Col_Estatus: TcxGridDBColumn;
    Col_Descuento: TcxGridDBColumn;
    Col_comentPart: TcxGridDBColumn;
    dbg2: TcxGridLevel;
    frmBarra1: TfrmBarra;
    panelInsumos: TPanel;
    lblPartida: TLabel;
    lbl22: TLabel;
    lblPrecioVenta: TLabel;
    lbl23: TLabel;
    Grid_Insumos: TcxGrid;
    Grid_InsumosView: TcxGridDBTableView;
    Col_dbgGrid_InsumosViewColumn1: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn3: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn4: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn5: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn6: TcxGridDBColumn;
    Col_dbgGrid_InsumosViewColumn7: TcxGridDBColumn;
    dbgGrid_InsumosLevel1: TcxGridLevel;
    dbPartidas: TDBLookupComboBox;
    tdCantidad: TRxCalcEdit;
    tdCostoNuevo: TRxCalcEdit;
    tDescuentoMat: TRxCalcEdit;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    cxlbl1: TcxLabel;
    cxspltr1: TcxSplitter;
    tsIdProveedor: TDBLookupComboBox;
    tsMoneda: TDBLookupComboBox;
    tsComent: TcxMemo;
    anexo_pocomprassComentarioPart: TMemoField;
    function lExisteActividad(sActividad: string): Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);

    procedure tsIsometricoReferenciaKeyPress(Sender: TObject;
      var Key: Char);
    procedure GridPartidasCellClick(Column: TColumn);
    procedure frxReport50GetValue(const VarName: string;
      var Value: Variant);
    procedure GridPartidasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_InsumosEnter(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);

    procedure GridPartidasEnter(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure frxEntradaGetValue(const VarName: string;
      var Value: Variant);
    procedure imgNotasDblClick(Sender: TObject);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);

    procedure anexo_pocomprasCalcFields(DataSet: TDataSet);
    procedure ReporteCalcFields(DataSet: TDataSet);
    procedure tsIdProveedorEnter(Sender: TObject);
    procedure tsIdProveedorExit(Sender: TObject);
    procedure tsIdProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Grid_EntradasCellClick(Column: TColumn);
    procedure tsFormaPagoKeyPress(Sender: TObject; var Key: Char);
    procedure tsFormaPagoEnter(Sender: TObject);
    procedure tsentregaKeyPress(Sender: TObject; var Key: Char);
    procedure tsentregaEnter(Sender: TObject);
    procedure tsentregaExit(Sender: TObject);
    procedure tsMonedaEnter(Sender: TObject);
    procedure tsMonedaExit(Sender: TObject);
    procedure validaciones();
    procedure dbRequisicionKeyPress(Sender: TObject; var Key: Char);
    procedure dbPartidasClick(Sender: TObject);
    procedure InsumosAfterScroll(DataSet: TDataSet);
    procedure validaPedido();
    procedure dbRequisicionEnter(Sender: TObject);
    procedure SeguimientoMaterialxPartida1Click(Sender: TObject);
    procedure Seguimiento_Material(dParamActividad: string);
    procedure SeguimientoMaterialGeneral1Click(Sender: TObject);
    procedure SeguimientoMaterialxPartidaDetalle1Click(Sender: TObject);
    procedure dbRequisicionExit(Sender: TObject);
    procedure dbPartidasKeyPress(Sender: TObject; var Key: Char);

    procedure tdCantidadChange(Sender: TObject);
    procedure chkRequisicionClick(Sender: TObject);
    procedure tiFolioEnter(Sender: TObject);
    procedure tiFolioExit(Sender: TObject);
    procedure tsEmbarcaKeyPress(Sender: TObject; var Key: Char);
    procedure tsCondicionesKeyPress(Sender: TObject; var Key: Char);
    procedure tsPreciosKeyPress(Sender: TObject; var Key: Char);
    procedure tsVigenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tsEmbarcaEnter(Sender: TObject);
    procedure tsEmbarcaExit(Sender: TObject);
    procedure tsCondicionesEnter(Sender: TObject);
    procedure tsCondicionesExit(Sender: TObject);
    procedure tsPreciosEnter(Sender: TObject);
    procedure tsPreciosExit(Sender: TObject);
    procedure tsVigenciaEnter(Sender: TObject);
    procedure tsVigenciaExit(Sender: TObject);

    procedure tsMailKeyPress(Sender: TObject; var Key: Char);
    procedure tsMailEnter(Sender: TObject);
    procedure tsMailExit(Sender: TObject);
    procedure tipocambio();
    procedure pgcontrolChange(Sender: TObject);
    procedure btnProveedoresClick(Sender: TObject);
    procedure btnReferenciaClick(Sender: TObject);
    procedure GridPartidasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure lblPartidaClick(Sender: TObject);
    procedure ImprimirComprasxProveedor1Click(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure ImprimirComprasxReferencia1Click(Sender: TObject);
    procedure cmdAceptaClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure ImprimirVariaciondePrecios1Click(Sender: TObject);
    procedure ImprimirResumendeOC1Click(Sender: TObject);
    procedure dbRequisicionChange(Sender: TObject);
    procedure Reportes1Click(Sender: TObject);

    procedure tsIdProveedorChange(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure Grid_InsumosViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Grid_InsumosViewKeyPress(Sender: TObject; var Key: Char);
    procedure dbg1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure chkTipoCambioClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure spEdtIvaEnter(Sender: TObject);
    procedure spEdtIvaExit(Sender: TObject);
    procedure tsFormaPagoExit(Sender: TObject);
    procedure tsTipoCambioEnter(Sender: TObject);
    procedure tsTipoCambioExit(Sender: TObject);
    procedure tDescuentoGralEnter(Sender: TObject);
    procedure tDescuentoGralExit(Sender: TObject);
    procedure tsFormaPagoChange(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure llenado() ;
    procedure dbg_OCVistaCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tdCostoNuevoEnter(Sender: TObject);
    procedure tdCostoNuevoExit(Sender: TObject);
    procedure tDescuentoMatExit(Sender: TObject);
    procedure tDescuentoMatEnter(Sender: TObject);
    procedure tsDirecEnvioEnter(Sender: TObject);
    procedure tsDirecEnvioExit(Sender: TObject);
    procedure tsDirecEnvioKeyPress(Sender: TObject; var Key: Char);
    procedure tsCiudadEnvioEnter(Sender: TObject);
    procedure tsCiudadEnvioExit(Sender: TObject);
    procedure tsCiudadEnvioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaSuministroKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaSuministroEnter(Sender: TObject);
    procedure tdFechaSuministroExit(Sender: TObject);
    procedure dbg_OCVistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_OCVistaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
 

    procedure btncmdFormaPagoClick(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsMonedaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipoCambioKeyPress(Sender: TObject; var Key: Char);
    procedure tDescuentoGralKeyPress(Sender: TObject; var Key: Char);
    procedure tsVendedorEnter(Sender: TObject);
    procedure tsVendedorExit(Sender: TObject);
    procedure tsVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure cbbFrentesEnter(Sender: TObject);
    procedure cbbFrentesExit(Sender: TObject);
    procedure cbbFrentesKeyPress(Sender: TObject; var Key: Char);
    procedure cbbFormasPagoEnter(Sender: TObject);
    procedure cbbFormasPagoExit(Sender: TObject);
    procedure cbbFormasPagoKeyPress(Sender: TObject; var Key: Char);
    procedure spEdtIvaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

  private
    sMenuP: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;
  SavePlace: TBookmark;
  sDescripcion: string;
  sArchivo      : String ;
  txtAux: string;
  lNuevo: Boolean;
  OpcButton1: string;
  Valida: boolean;
  filtro, buscar: string;
  iFolio: integer;
  CadenaOrden, CadenaOrden2, cadenaReq: string;
  lValidaReq: boolean;
  CadenaReporte, CadenaReporte2: string;

  sSuperintendente, sSupervisor: string;
  sPuestoSuperintendente, sPuestoSupervisor: string;
  sSupervisorTierra, sPuestoSupervisorTierra: string;
  sBackup: string;
  MontoTotal: Currency;
  TipoExplosion: string;

  botonpermiso: tbotonespermisos;
  Tipo_Moneda: string;

implementation

uses frm_connection, frm_comentariosxanexo, frm_ordenes, frm_proveedores, Func_Genericas, frm_formasPago;

{$R *.dfm}

procedure TfrmPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  botonpermiso.Free;
end;


procedure TfrmPedidos.FormShow(Sender: TObject);
var x: integer;
begin
  try

    FechaInicio.DateTime := now;
    FechaFinal.DateTime := now;

    sMenuP := stMenu;
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opPedidos', PopupPrincipal);
    tdIdFecha.Enabled := True;
    cbbFrentes.Enabled := False;
    tsIdProveedor.ReadOnly := False;
    tmComentarios.ReadOnly := True;
    spEdtIva.ReadOnly:=True;
    pgControl.ActivePageIndex := 0;

    CadenaOrden := 'Select a1.*, a.sMedida, a.dCantidad, a3.iItemOrden from anexo_ppedido a1 ' +
      'left join actividadesxanexo a3 on (a3.sContrato = a1.sContrato and a3.sIdConvenio =:Convenio ' +
      'and a3.sNumeroActividad = a1.sNumeroActividad and a3.sTipoActividad ="Actividad") ' +
      'inner join anexo_pedidos a2  on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) ' +
      'left join insumos a on (a1.sContrato = a.sContrato And a1.sIdInsumo = a.sIdInsumo AND a1.sIdAlmacen = a.sIdAlmacen) ' +
      'Where a1.sContrato = :Contrato And a1.iFolioPedido = :Folio order by a3.iItemOrden ';

    CadenaOrden2 := 'Select a1.*, "" as sMedida, 0.0 as dCantidad  from anexo_ppedido a1 ' +
      'inner join anexo_pedidos a2  on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) ' +
      'left join insumos a on (a1.sContrato = a.sContrato And a1.sIdInsumo = a.sIdInsumo AND a1.sIdAlmacen = a.sIdAlmacen) ' +
      'Where a1.sContrato =:Contrato And a1.iFolioPedido = :Folio order by a.sIdInsumo ';

    CadenaReporte := 'Select fp.sDescripcion as fp, a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, a1.dCosto, a3.iItemOrden, u.sNombre as sElabora, '+
      'm.sDescripcion as moneda, (a1.dCosto - a1.dDescuento) as DescuentoMat, ' +
      'a1.sIdInsumo, i.sModelo, ma.sMarca, a1.sNumeroActividad, ar.mComentarios as mComReq, ar.lCertificados, ar.lHojas '+
      'from anexo_ppedido a1 ' +
      'inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato and a1.iFolioPedido = a2.iFolioPedido) ' +
      'left join actividadesxanexo a3 on (a3.sContrato = a1.sContrato and a3.sIdConvenio =:Convenio ' +
      'and a3.sNumeroActividad = a1.sNumeroActividad and a3.sTipoActividad ="Actividad") ' +
      'inner join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ' +
      'left join usuarios u on (u.sIdUsuario = a2.sElaboro) ' +
      'inner join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ' +
      'left join almacenes alm on (alm.lPrincipal = "Si") '+
      'inner join insumos i on (alm.sIdAlmacen = i.sIdAlmacen and a1.sIdInsumo=i.sIdInsumo) '+
      'left join marcas ma on (i.sIdMarca=ma.sIdMarca) '+
      'Inner Join formas_pago fp On (fp.sIdFormaPago=a2.sFormaPago)' +
      'left join anexo_requisicion ar on (a2.sContrato=ar.sContrato And FIND_IN_SET(ar.sNumFolio,a2.sFolioRequisicion))'+
      'Where a1.sContrato = :Contrato And a1.iFolioPedido = :Folio group by a1.sIdInsumo,a1.iItem order by a3.iItemOrden ';

    CadenaReporte2 := 'Select fp.sDescripcion as fp, a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, a1.dCosto, "" as iItemOrden, u.sNombre as sElabora,  ' +
      'm.sDescripcion as moneda, (a1.dCosto - a1.dDescuento) as DescuentoMat, ' +
      'a1.sIdInsumo, i.sModelo, ma.sMarca, a1.sNumeroActividad, "" as mComReq '+
      'from anexo_ppedido a1 ' +
      'inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) ' +
      'inner join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ' +
      'left join usuarios u on (u.sIdUsuario = a2.sElaboro) ' +
      'inner join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ' +
      'inner join insumos i on (a1.sContrato = i.sContrato and a1.sIdInsumo=i.sIdInsumo) '+
      'inner join marcas ma on (i.sIdMarca=ma.sIdMarca) '+
      'Inner Join formas_pago fp On (fp.sIdFormaPago=a2.sFormaPago)' +
      'Where a1.sContrato = :Contrato And a1.iFolioPedido = :Folio order by a1.sIdInsumo ';

    Proveedores.Active := False;
    Proveedores.Open;

    zqFormasPago.Active := False;
    zqFormasPago.Open;

    Moneda.Active := False;
    Moneda.Open;

    zqordenes.Active := False ;
    zqOrdenes.Params.ParamByName('Contrato').DataType := ftString;
    zqOrdenes.Params.ParamByName('Contrato').Value    := Global_Contrato;
    zqOrdenes.Params.ParamByName('status').DataType   := ftString;
    zqOrdenes.Params.ParamByName('status').Value      := Connection.configuracion.FieldValues['cStatusProceso'];
    zqOrdenes.Open ;


    anexo_ocompras.Active := False;
    anexo_ocompras.Params.ParamByName('Contrato').DataType := ftString;
    anexo_ocompras.Params.ParamByName('Contrato').Value := global_contrato;
    anexo_ocompras.Open;

    anexo_pocompras.Active := False;
    anexo_pocompras.SQL.Clear;
    anexo_pocompras.SQL.Add(CadenaOrden);
    anexo_pocompras.Params.ParamByName('Contrato').DataType := ftString;
    anexo_pocompras.Params.ParamByName('Contrato').Value := global_contrato;
    anexo_pocompras.Params.ParamByName('Convenio').DataType := ftString;
    anexo_pocompras.Params.ParamByName('Convenio').Value := global_convenio;
    anexo_pocompras.Params.ParamByName('Folio').DataType := ftInteger;
    if anexo_ocompras.RecordCount > 0 then
      anexo_pocompras.Params.ParamByName('Folio').Value := anexo_ocompras.FieldValues['iFolioPedido']
    else
      anexo_pocompras.Params.ParamByName('Folio').Value := 0;
    anexo_pocompras.Open;
    grid_entradas.enabled := true;
    Grid_Entradas.SetFocus;
    requisiciones.Params.ParamByName('Contrato').DataType := ftString;
    requisiciones.Params.ParamByName('Contrato').Value := global_contrato;
    requisiciones.Open;

    if requisiciones.RecordCount > 0 then
    begin
      dbRequisicion.Clear;
      while not requisiciones.Eof do
      begin
        dbRequisicion.Items.Add(requisiciones.FieldValues['sNumFolio']);
        requisiciones.Next;
      end;
    end;

    if connection.configuracion.FieldValues['sExplosion'] = 'Recursos por Concepto/Partida' then
      TipoExplosion := 'recursosanexo'
    else
      TipoExplosion := 'recursosanexosnuevos';

    frmBarra2.btnAdd.Enabled := true;
    frmBarra2.btnAdd.Enabled := true;
    frmBarra2.btnEdit.Enabled := true;
    frmBarra2.btnDelete.Enabled := true;
    frmBarra2.btnPrinter.Enabled := true;
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
    dbRequisicion.Enabled := False;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al iniciar formulario', 0);
    end;
  end;
 llenado ;
end;

procedure TfrmPedidos.btnReferenciaClick(Sender: TObject);
begin
  global_frmActivo := 'frm_pedidos';
  Application.CreateForm(TfrmOrdenes, frmOrdenes);
  frmOrdenes.show;
end;

procedure TfrmPedidos.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidos.frmBarra1btnAddClick(Sender: TObject);
begin
  validaciones;

  if valida then
  begin
    frmBarra1.btnCancel.Click;
    exit;
  end;
  tdCantidad.ReadOnly := False;

  if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
  begin
    lblPartida.Caption := 'ID Material';
    dbPartidas.Visible := True;
  end
  else
  begin
    lblPartida.Caption := 'ID Material';
    dbPartidas.Visible := False;
  end;

  if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
  begin
    Partidas.Active := False;
    Partidas.SQL.Clear;
    Partidas.SQL.Add('select distinct p.sNumeroActividad, a.iItemOrden, a.sWbs from anexo_prequisicion  p ' +
      'left join actividadesxanexo a ' +
      'on (a.sContrato = p.sContrato and a.sIdConvenio =:Convenio and a.sNumeroActividad = p.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
      'where p.sContrato =:Contrato and FIND_IN_SET(p.iFolioRequisicion,:Folio) order by a.iItemOrden ');
    Partidas.ParamByName('Contrato').AsString := global_contrato;
    Partidas.ParamByName('Convenio').AsString := global_convenio;
    Partidas.ParamByName('Folio').AsString := anexo_ocompras.FieldValues['sFolioRequisicion'];
    Partidas.Open;
  end
  else
  begin
    insumos.Active := False;
    insumos.SQL.Clear;
    insumos.SQL.Add('SELECT a.sIdInsumo, a.sIdAlmacen, a.sMedida, a.mDescripcion, a.dVentaDLL, a.dVentaMN, a.dCantidad, a.dNuevoPrecio, ');
    insumos.SQL.Add('SubStr(mDescripcion, 1, 255) as sDescripcion, "" as Requisicion , b.sDescripcion as Almacen, a.dExistencia ');
    insumos.SQL.Add('FROM insumos AS a ');
    insumos.SQL.Add('INNER JOIN almacenes AS b ON (a.sIdAlmacen = b.sIdAlmacen) ');
    insumos.SQL.Add('WHERE (:contrato=-1 or (:contrato<>-1 and a.sContrato = :contrato)) ' +
                    'and (:Principal=-1 or (:Principal<>-1 and b.lPrincipal=:Principal))');
    If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    begin
      Reporte.ParamByName('Principal').AsInteger:=-1 ;
      insumos.ParamByName('Contrato').AsString := global_contrato;
    end
    else
    begin
      Reporte.ParamByName('Principal').AsString:='Si';
       insumos.ParamByName('Contrato').AsInteger:=-1;
    end;

    insumos.Open;

    if insumos.RecordCount = 0 then
      messageDLG('No existen Materiales para el Almacen principal', mtInformation, [mbOk], 0);
  end;

  if (anexo_ocompras.RecordCount > 0) then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    frmBarra1.btnAddClick(Sender);
    tdCantidad.Value := 0;
  end;
  tDescuentoMat.Value := 0;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);

  Grid_Insumos.Enabled:=True;
  Crear_Form(PanelInsumos, 'Catalogo de Materiales', 430, 1010, []);
end;

procedure TfrmPedidos.frmBarra1btnEditClick(Sender: TObject);
begin
  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    frmBarra1.btnCancel.Click;
    exit;
  end;
  tdCantidad.ReadOnly := False;
  if anexo_ocompras.RecordCount > 0 then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    frmBarra1.btnEditClick(Sender);
    tdCantidad.ReadOnly := False;
    Grid_Insumos.Enabled:=False;
    Crear_Form(PanelInsumos, 'Catalogo de Materiales', 430, 1010, []);
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);
end;


procedure TfrmPedidos.frmBarra1btnPostClick(Sender: TObject);
var
  SavePlace: TBookmark;
  dCantidad: Currency;
  conteo: integer;
begin
 if tDescuentoMat.Value > (tdCantidad.Value * tdCostoNuevo.Value) then
  begin
    messageDLG('El Descuento Applicado es Mayor al Costo Total, Favor de verificar! ', mtInformation, [mbOk], 0);
    frmBarra1.btnCancel.Click;
    exit;
  end;
  if OpcButton = 'New' then
  begin
             //Consultamos primero si ya existe el material dado de alta en la orden de compra..
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('select sIdInsumo from anexo_ppedido where sContrato =:Contrato and iFolioPedido =:Folio and sIdInsumo =:Insumo ');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').value := Global_Contrato;
    Connection.QryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    Connection.QryBusca.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
    Connection.QryBusca.Params.ParamByName('Insumo').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
    Connection.QryBusca.Open;

    if connection.QryBusca.RecordCount = 0 then
    begin
      Connection.zCommand.Active := False;
      Connection.zcommand.SQL.Clear;
      Connection.zCommand.SQL.Add('INSERT INTO anexo_ppedido ( sContrato, iFolioPedido, sIdInsumo, iItem, mDescripcion, sMedida, dCantidad, dCosto, sNumeroActividad, ' +
                                 'sNumeroOrden, sStatus, dDescuento, sIdAlmacen, sComentarioPart ) ' +
        'VALUES (:Contrato, :Folio, :Insumo, 1, :Descripcion, :Medida, :Cantidad, :Costo, :Actividad, :Orden,  '+
        '"Pendiente", :Descuento, :Almacen, :comentPart) ');
      Connection.zcommand.Params.ParamByName('Contrato').DataType    := ftString;
      Connection.zcommand.Params.ParamByName('Contrato').value       := Global_Contrato;
      Connection.zcommand.Params.ParamByName('Folio').DataType       := ftInteger;
      Connection.zcommand.Params.ParamByName('Folio').value          := anexo_ocompras.FieldValues['iFolioPedido'];
      Connection.zcommand.Params.ParamByName('Insumo').DataType      := ftString;
      Connection.zcommand.Params.ParamByName('Insumo').value         := insumos.FieldValues['sIdInsumo'];
      Connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo;
      Connection.zcommand.Params.ParamByName('Descripcion').value    := insumos.FieldValues['mDescripcion'];
      Connection.zcommand.Params.ParamByName('Medida').DataType      := ftString;
      Connection.zcommand.Params.ParamByName('Medida').value         := insumos.FieldValues['sMedida'];
      Connection.zcommand.Params.ParamByName('Cantidad').DataType    := ftFloat;
      Connection.zcommand.Params.ParamByName('Cantidad').value       := tdCantidad.Value;
      Connection.zcommand.Params.ParamByName('comentPart').DataType  := ftString;
      Connection.zcommand.Params.ParamByName('comentPart').value     := tsComent.Text;

      Connection.zcommand.Params.ParamByName('Costo').DataType       := ftFloat;
      if (tsMoneda.KeyValue = 'DLL') or (tsMoneda.KeyValue = 'dll') then
      begin
        if tdCostoNuevo.Value <> insumos.FieldValues['dVentaDLL'] then
        begin
          if anexo_ocompras.FieldValues['dCambio'] > 0 then
            Connection.zcommand.Params.ParamByName('Costo').value := (tdCostoNuevo.Value * anexo_ocompras.FieldValues['dCambio'])
          else
            Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value;
        end
        else
          Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaDLL'];
      end
      else
        if tdCostoNuevo.Value <> insumos.FieldValues['dVentaMN'] then
          Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value
        else
          Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaMN'];
      Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
      if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
        Connection.zcommand.Params.ParamByName('Actividad').value := dbPartidas.Text
      else
        Connection.zcommand.Params.ParamByName('Actividad').value := 'S/N';
      Connection.zcommand.Params.ParamByName('Orden').DataType := ftString;
      Connection.zcommand.Params.ParamByName('Orden').value := anexo_ocompras.FieldValues['sNumeroOrden'];
      Connection.zcommand.Params.ParamByName('Descuento').DataType := ftFloat;
      Connection.zcommand.Params.ParamByName('Descuento').value := tDescuentoMat.Value;
      Connection.zcommand.Params.ParamByName('Almacen').AsString := insumos.FieldByName('sIdAlmacen').AsString;
      Connection.zcommand.ExecSQL;

    end
    else
    begin
      if MessageDlg('Se encontro una coincidencia con el material en la orden de compra actual, desea modificar el registro encontrado?. Si Elije NO, se creara un registro nuevo.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      begin
        Connection.qryBusca.Active := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select Max(iItem) as iItem From anexo_ppedido Where sContrato = :Contrato And iFolioPedido = :Folio and sIdInsumo = :Insumo ');
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Contrato').value := Global_Contrato;
        connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
        Connection.qryBusca.Params.ParamByName('Insumo').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
        Connection.qryBusca.Open;
        if not Connection.qryBusca.FieldByName('iItem').IsNull then
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('INSERT INTO anexo_ppedido (sContrato, iFolioPedido, sIdInsumo, iItem, mDescripcion, sMedida, dCantidad, ' +
                                      'dCosto, sNumeroActividad, sNumeroOrden, sStatus, sIdAlmacen, dDescuento, sComentarioPart ) ' +
            'VALUES (:Contrato, :Folio, :Insumo, :Item, :Descripcion, :Medida, :Cantidad, :Costo, :Actividad, :Orden, "Pendiente", ' +
            ':Almacen, :Descuento, :comentPart) ');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
          Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
          Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
          if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
            Connection.zcommand.Params.ParamByName('Actividad').value := dbPartidas.Text
          else
            Connection.zcommand.Params.ParamByName('Actividad').value := 'S/N';
          Connection.zcommand.Params.ParamByName('Item').DataType := ftInteger;
          Connection.zcommand.Params.ParamByName('Item').value := Connection.qryBusca.FieldValues['iItem'] + 1;
          Connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo;
          Connection.zcommand.Params.ParamByName('Descripcion').value := insumos.FieldValues['mDescripcion'];
          Connection.zcommand.Params.ParamByName('Medida').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Medida').value := insumos.FieldValues['sMedida'];
          Connection.zcommand.Params.ParamByName('Cantidad').DataType := ftFloat;
          Connection.zcommand.Params.ParamByName('Cantidad').value := tdCantidad.Value;
          Connection.zcommand.Params.ParamByName('Costo').DataType := ftFloat;
          if (tsMoneda.KeyValue = 'DLL') or (tsMoneda.KeyValue = 'dll') then
          begin
            if tdCostoNuevo.Value <> insumos.FieldValues['dVentaDLL'] then
            begin
              if anexo_ocompras.FieldValues['dCambio'] > 0 then
                Connection.zcommand.Params.ParamByName('Costo').value := (insumos.FieldValues['dVentaDLL'] * anexo_ocompras.FieldValues['dCambio'])
              else
                Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaDLL'];
            end
            else
              Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value;
          end
          else
            if tdCostoNuevo.Value <> insumos.FieldValues['dVentaMN'] then
              Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value
            else
              Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaMN'];
          Connection.zcommand.Params.ParamByName('Orden').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Orden').value := anexo_ocompras.FieldValues['sNumeroOrden'];
          Connection.zcommand.Params.ParamByName('Almacen').AsString := insumos.FieldByName('sIdAlmacen').AsString;
          Connection.zcommand.Params.ParamByName('Descuento').DataType := ftFloat;
          Connection.zcommand.Params.ParamByName('Descuento').value := tDescuentoMat.Value;
          Connection.zcommand.Params.ParamByName('comentPart').DataType  := ftString;
          Connection.zcommand.Params.ParamByName('comentPart').value     := tsComent.Text;
          Connection.zcommand.ExecSQL;
          MessageDlg('Se inserto correctemente el Material ' + insumos.FieldValues['sIdInsumo'] + ' en el CPT #' + IntToStr(Connection.qryBusca.FieldValues['iItem'] + 1), mtInformation, [mbOk], 0);
        end
        else
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('INSERT INTO anexo_ppedido (sContrato, iFolioPedido, sIdInsumo, iItem, mDescripcion, sMedida, dCantidad, dCosto, '  +
            'sNumeroActividad, sNumeroOrden, sStatus, sIdAlmacen, dDescuento,  sComentarioPart ) ' +
            'VALUES (:Contrato, :Folio, :Insumo, :Item, :Descripcion, :Medida, :Cantidad, :Costo, :Actividad, :Orden, '+
            '"Pendiente", :Almacen, :Descuento, :comentPart) ');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
          Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
          Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
          if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
            Connection.zcommand.Params.ParamByName('Actividad').value := dbPartidas.Text
          else
            Connection.zcommand.Params.ParamByName('Actividad').value := 'S/N';
          Connection.zcommand.Params.ParamByName('Item').DataType := ftInteger;
          Connection.zcommand.Params.ParamByName('Item').value := Connection.qryBusca.FieldValues['iItem'] + 1;
          Connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo;
          Connection.zcommand.Params.ParamByName('Descripcion').value := insumos.FieldValues['mDescripcion'];
          Connection.zcommand.Params.ParamByName('Medida').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Medida').value := insumos.FieldValues['sMedida'];
          Connection.zcommand.Params.ParamByName('Cantidad').DataType := ftFloat;
          Connection.zcommand.Params.ParamByName('Cantidad').value := tdCantidad.Value;
          Connection.zcommand.Params.ParamByName('Costo').DataType := ftFloat;
          if (tsMoneda.KeyValue = 'DLL') or (tsMoneda.KeyValue = 'dll') then
          begin
            if tdCostoNuevo.Value <> insumos.FieldValues['dVentaDLL'] then
            begin
              if anexo_ocompras.FieldValues['dCambio'] > 0 then
                Connection.zcommand.Params.ParamByName('Costo').value := (insumos.FieldValues['dVentaDLL'] * anexo_ocompras.FieldValues['dCambio'])
              else
                Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaDLL'];
            end
            else
              Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value;
          end
          else
            if tdCostoNuevo.Value <> insumos.FieldValues['dVentaMN'] then
              Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value
            else
              Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaMN'];
          Connection.zcommand.Params.ParamByName('Orden').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Orden').value := anexo_ocompras.FieldValues['sNumeroOrden'];
          Connection.zcommand.Params.ParamByName('Almacen').AsString := insumos.FieldByName('sIdAlmacen').AsString;
          Connection.zcommand.Params.ParamByName('Descuento').DataType := ftFloat;
          Connection.zcommand.Params.ParamByName('Descuento').value := tDescuentoMat.Value;
          Connection.zcommand.Params.ParamByName('comentPart').DataType  := ftString;
          Connection.zcommand.Params.ParamByName('comentPart').value     := tsComent.Text;
          Connection.zcommand.ExecSQL;
          MessageDlg('Se inserto correctemente el Material ' + insumos.FieldValues['sIdInsumo'] + ' en la OC # ', mtInformation, [mbOk], 0);
        end
      end
      else
      begin
        dCantidad := 0;
        Connection.qryBusca.Active := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select dCantidad From anexo_ppedido Where sContrato = :Contrato And ' +
          'iFolioPedido = :Folio and sIdInsumo = :Insumo And iItem = 1 ');
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Contrato').value := Global_Contrato;
        connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
        connection.qryBusca.Params.ParamByName('Insumo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
        Connection.qryBusca.Open;

        if Connection.qryBusca.RecordCount > 0 then
          dCantidad := Connection.qryBusca.FieldValues['dCantidad'];

        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('UPDATE anexo_ppedido SET mDescripcion =:Descripcion, dCantidad =:Cantidad, sMedida =:Medida, sNumeroActividad =:Actividad, dCosto =:Costo ' +
          'WHERE sContrato =:Contrato And iFolioPedido =:Folio and sIdInsumo =:Insumo And iItem = 1 ');
        Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
        Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
        Connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger;
        Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
        Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
        Connection.zcommand.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
        Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
        if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
          Connection.zcommand.Params.ParamByName('Actividad').value := dbPartidas.Text
        else
          Connection.zcommand.Params.ParamByName('Actividad').value := 'S/N';
        Connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo;
        Connection.zcommand.Params.ParamByName('Descripcion').value := insumos.FieldValues['mDescripcion'];
        Connection.zcommand.Params.ParamByName('Medida').DataType := ftString;
        Connection.zcommand.Params.ParamByName('Medida').value := insumos.FieldValues['sMedida'];
        Connection.zcommand.Params.ParamByName('Cantidad').DataType := ftFloat;
        Connection.zcommand.Params.ParamByName('Cantidad').value := dCantidad + tdCantidad.Value;
        Connection.zcommand.Params.ParamByName('Costo').DataType := ftFloat;
        if (tsMoneda.KeyValue = 'DLL') or (tsMoneda.KeyValue = 'dll') then
        begin
          if tdCostoNuevo.Value <> insumos.FieldValues['dVentaDLL'] then
          begin
            if anexo_ocompras.FieldValues['dCambio'] > 0 then
              Connection.zcommand.Params.ParamByName('Costo').value := (insumos.FieldValues['dVentaDLL'] * anexo_ocompras.FieldValues['dCambio'])
            else
              Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaDLL'];
          end
          else
            Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value;
        end
        else
          if tdCostoNuevo.Value <> insumos.FieldValues['dVentaMN'] then
            Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value
          else
            Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaMN'];
        Connection.zcommand.ExecSQL;
      end;
    end;
    SavePlace := anexo_ocompras.GetBookmark;
    anexo_pocompras.Refresh;

    try
      anexo_pocompras.GotoBookmark(SavePlace);
    except
    else
      anexo_pocompras.FreeBookmark(SavePlace);
    end;

            //Ahora actualizamos los precios del almacen..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Update insumos set dNuevoPrecio =:NvoCosto where sIdInsumo = :Insumo AND sContrato = :Contrato AND sIdAlmacen = :Almacen; ');
    connection.zCommand.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Almacen').AsString := insumos.FieldValues['sIdAlmacen'];
    connection.zCommand.ParamByName('NvoCosto').AsFloat := tdCostoNuevo.Value;
    connection.zCommand.ExecSQL;
  end
  else
  try
    SavePlace := anexo_pocompras.GetBookmark;

            //Primero buscamos los insumos..
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('select p.*, i.dVentaMN, i.dVentaDLL from anexo_ppedido p ' +
      'inner join insumos i on (i.sContrato = p.sContrato and i.sIdInsumo = p.sIdInsumo AND i.sIdAlmacen = p.sIdAlmacen) ' +
      'WHERE p.sContrato =:Contrato And p.iFolioPedido =:Folio and p.sIdInsumo =:Insumo and p.iItem =:Item ');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').value := Global_Contrato;
    Connection.QryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    Connection.QryBusca.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
    Connection.QryBusca.Params.ParamByName('Insumo').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
    Connection.QryBusca.Params.ParamByName('Item').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Item').value := anexo_pocompras.FieldValues['iItem'];
    Connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('UPDATE anexo_ppedido SET dCantidad = :Cantidad, dCosto =:Costo, dDescuento =:Descuento ' +
        'WHERE sContrato = :Contrato And iFolioPedido = :Folio And sIdInsumo =:Insumo And iItem = :Item AND sIdAlmacen = :Almacen');
      Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
      Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
      Connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger;
      Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
      Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
      Connection.zcommand.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
      Connection.zcommand.Params.ParamByName('Item').DataType := ftString;
      Connection.zcommand.Params.ParamByName('Item').value := anexo_pocompras.FieldValues['iItem'];
      Connection.zcommand.Params.ParamByName('Cantidad').DataType := ftFloat;
      Connection.zcommand.Params.ParamByName('Cantidad').value := tdCantidad.Value;
      Connection.zcommand.Params.ParamByName('Costo').DataType := ftFloat;
      if (tsMoneda.KeyValue = 'DLL') or (tsMoneda.KeyValue = 'dll') then
      begin
        if tdCostoNuevo.Value <> insumos.FieldValues['dVentaDLL'] then
        begin
          if anexo_ocompras.FieldValues['dCambio'] > 0 then
            Connection.zcommand.Params.ParamByName('Costo').value := (insumos.FieldValues['dVentaDLL'] * anexo_ocompras.FieldValues['dCambio'])
          else
            Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaDLL'];
        end
        else
          Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value;
      end
      else
        if tdCostoNuevo.Value <> insumos.FieldValues['dVentaMN'] then
          Connection.zcommand.Params.ParamByName('Costo').value := tdCostoNuevo.Value
        else
          Connection.zcommand.Params.ParamByName('Costo').value := insumos.FieldValues['dVentaMN'];
      Connection.zcommand.Params.ParamByName('Descuento').DataType := ftFloat;
      Connection.zcommand.Params.ParamByName('Descuento').value := tDescuentoMat.Value;
      Connection.zcommand.Params.ParamByName('Almacen').AsString := insumos.FieldByName('sIdAlmacen').AsString;
      Connection.zcommand.ExecSQL;

          //Ahora actualizamos los precios del almacen..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update insumos set dNuevoPrecio =:NvoCosto where sIdInsumo = :Insumo AND sContrato = :Contrato AND sIdAlmacen = :Almacen ');
        connection.zCommand.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
        connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
        connection.zCommand.ParamByName('Almacen').AsString := insumos.FieldValues['sIdAlmacen'];
        connection.zCommand.ParamByName('NvoCosto').AsFloat := tdCostoNuevo.Value;
        connection.zCommand.ExecSQL;

      anexo_pocompras.Refresh;
      anexo_pocompras.GotoBookmark(SavePlace);
      anexo_pocompras.FreeBookmark(SavePlace);
    end
    else
      messageDLG('No se encontró el Insumo en el Catalogo de Materiales!', mtWarning, [mbOk], 0);
  except
          //  MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al actualizar registro', 0);
    end;
  end;

  if dbRequisicion.Text <> '' then
  begin
            //Actualizamos el estatus del material si es una requisicion;
    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('UPDATE anexo_prequisicion SET sEstado ="COMPRADO", iFolioPedido =:Pedido ' +
      'WHERE sContrato =:Contrato And FIND_IN_SET(iFolioRequisicion,:Folio) And sIdInsumo =:Insumo And iItem =:Item and sNumeroActividad =:Actividad ');
    Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
    Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
    Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
    Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['sFolioRequisicion'];
    Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
    Connection.zcommand.Params.ParamByName('Insumo').value := insumos.FieldValues['sIdInsumo'];
    Connection.zcommand.Params.ParamByName('Item').DataType := ftInteger;
    Connection.zcommand.Params.ParamByName('Item').value := insumos.FieldValues['iItem'];
    Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
    Connection.zcommand.Params.ParamByName('Actividad').value := insumos.FieldValues['sNumeroActividad'];
    Connection.zcommand.Params.ParamByName('Pedido').DataType := ftInteger;
    Connection.zcommand.Params.ParamByName('Pedido').value := anexo_ocompras.FieldValues['iFolioPedido'];
    Connection.zcommand.ExecSQL;

            //Ahora consultamos cuales partidas estan pendientes para seguir mostrando o no la requisicion..
    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('select * from anexo_prequisicion ' +
      'WHERE sContrato =:Contrato And iFolioRequisicion =:Folio ');
    Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
    Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
    Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
    Connection.zcommand.Params.ParamByName('Folio').value := insumos.FieldValues['Requisicion'];
    Connection.zcommand.Open;

    conteo := 0;
    while not connection.zCommand.Eof do
    begin
      if connection.zCommand.FieldValues['sEstado'] <> 'PENDIENTE' then
        inc(conteo);
      connection.zCommand.Next;
    end;

    if conteo = connection.zCommand.RecordCount then
    begin
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('Update anexo_requisicion set sEstado = "ACEPTADA" ' +
        'WHERE sContrato =:Contrato And FIND_IN_SET(sNumFolio,:Folio) ');
      Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
      Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
      Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
      Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['sFolioRequisicion'];
      Connection.zcommand.ExecSQL;
    end;
    try
      Insumos.Refresh;
    Except
    end;
    Requisiciones.Refresh;
  end;

  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmPedidos.frmBarra1btnCancelClick(Sender: TObject);
begin
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  tdCantidad.ReadOnly := True;
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmPedidos.frmBarra1btnExitClick(Sender: TObject);
begin
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  frmBarra1.btnExitClick(Sender);
end;

procedure TfrmPedidos.frmBarra1btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
begin
  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    frmBarra1.btnCancel.Click;
    exit;
  end;
  if anexo_pocompras.RecordCount > 0 then
  begin
    with connection do
    begin
      try
        SavePlace := anexo_pocompras.GetBookmark;
        zCommand.Active := False;
        zCommand.SQL.Clear;
        zCommand.SQL.Add('Delete from anexo_ppedido where sContrato = :Contrato And ' +
          'iFolioPedido = :Folio and sIdInsumo =:Insumo And sNumeroActividad = :Actividad And iItem = :Item');
        zcommand.Params.ParamByName('Contrato').DataType := ftString;
        zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
        zcommand.Params.ParamByName('Folio').DataType := ftInteger;
        zcommand.Params.ParamByName('Folio').value := anexo_pocompras.FieldValues['iFolioPedido'];
        zcommand.Params.ParamByName('Insumo').DataType := ftString;
        zcommand.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
        zcommand.Params.ParamByName('Actividad').DataType := ftString;
        zcommand.Params.ParamByName('Actividad').value := anexo_pocompras.FieldValues['sNumeroActividad'];
        zcommand.Params.ParamByName('Item').DataType := ftInteger;
        zcommand.Params.ParamByName('Item').value := anexo_pocompras.FieldValues['iItem'];
        zcommand.ExecSQL;

        if dbRequisicion.Text <> '' then
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('Update anexo_prequisicion set sEstado = "PENDIENTE", iFolioPedido = 0 ' +
            'WHERE sContrato =:Contrato And FIND_IN_SET(iFolioRequisicion,:Folio) and sIdInsumo =:Insumo and sNumeroActividad =:Actividad');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['sFolioRequisicion'];
          Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
          Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Actividad').value := anexo_pocompras.FieldValues['sNumeroActividad'];
          Connection.zcommand.ExecSQL;

          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('Update anexo_requisicion set sEstado = "PENDIENTE" ' +
            'WHERE sContrato =:Contrato And FIND_IN_SET(sNumFolio,:Folio) ');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['sFolioRequisicion'];
          Connection.zcommand.ExecSQL;

          insumos.Refresh;
          Requisiciones.Refresh;
        end;

        SavePlace := anexo_ocompras.GetBookmark;
        anexo_pocompras.Refresh;

        try
          anexo_pocompras.GotoBookmark(SavePlace);
        except
        else
          anexo_pocompras.FreeBookmark(SavePlace);
        end;
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
        end;
      end;
      GridPartidas.SetFocus
    end
  end
end;

procedure TfrmPedidos.Insertar1Click(Sender: TObject);
begin
  frmBarra2.btnAdd.Click
end;

procedure TfrmPedidos.InsumosAfterScroll(DataSet: TDataSet);
begin

  if insumos.RecordCount > 0 then
  begin
    if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
      tdCantidad.Value := insumos.FieldValues['dCantidad']
    else
      tdCantidad.Value := 0;
     tdCostoNuevo.Value := insumos.FieldValues['dNuevoPrecio'];
  end;
end;

procedure TfrmPedidos.Editar1Click(Sender: TObject);
begin
  frmBarra2.btnEdit.Click
end;

procedure TfrmPedidos.Registrar1Click(Sender: TObject);
begin
  frmBarra2.btnPost.Click
end;

procedure TfrmPedidos.Can1Click(Sender: TObject);
begin
  frmBarra2.btnCancel.Click
end;

procedure TfrmPedidos.cbbFormasPagoEnter(Sender: TObject);
 begin
   cbbFormasPago.Style.Color := Global_Color_EntradaERP;
 end;

procedure TfrmPedidos.cbbFormasPagoExit(Sender: TObject);
begin
 cbbFormasPago.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.cbbFormasPagoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
        tsMoneda.SetFocus ;
end;

procedure TfrmPedidos.cbbFrentesEnter(Sender: TObject);
begin
   cbbfrentes.Style.Color := Global_Color_Entrada;
  // tsVendedor.Text        := Proveedores.FieldByName('sVendedor').AsString;
 // tsMail.Text             := Proveedores.fieldByName('sEMail').AsString ;
   tsVendedor.Text          := global_nombre ;
   tsMail.Text              := global_Usuariocorreo ;
end;


procedure TfrmPedidos.cbbFrentesExit(Sender: TObject);
begin
  cbbfrentes.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.cbbFrentesKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
       tsEmbarca.SetFocus ;
end;

procedure TfrmPedidos.chkRequisicionClick(Sender: TObject);
begin
  if chkRequisicion.Checked then
    dbRequisicion.Enabled := True
  else
  if anexo_pocompras.RecordCount > 0 then
      messageDLG('Existen materiales en la Orden de Compra, No ' +
                 ' se pueden Cambiar la Orden de Compra por Requisicion. ', mtInformation, [mbOk], 0)
  else
      dbRequisicion.Enabled := False;
end;

procedure TfrmPedidos.chkTipoCambioClick(Sender: TObject);
begin
  if chkTipoCambio.Checked then
  begin
    tsTipoCambio.Enabled  := True;
    tDescuentoGral.Enabled:= True;
  end else
  begin
    tsTipoCambio.Enabled    := False;
    tDescuentoGral.Enabled  := False;
    tsTipoCambio.Value  := 0;
    tDescuentoGral.Value:= 0;
  end;
end;

procedure TfrmPedidos.cmdAceptaClick(Sender: TObject);
var
  Item: string;
  conteo, lineas: integer;
  Insumo: string;
begin
  try
    if filtroUno.Visible then
    begin
            //Reporte Para proveedores...
      if lblDatos.Caption = 'Proveedores:' then
      begin
        if cbxDatos.Text = 'Todos los provedores' then
          Item := '%'
        else
          Item := copy(cbxDatos.Text, 0, pos('.-', cbxDatos.Text) - 2);

        Reporte.Active := False;
        Reporte.SQL.Clear;
        Reporte.SQL.Add('Select a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, sum(a1.dCantidad * (a1.dCosto - a1.dDescuento)) as dCosto, "" as iItemOrden, u.sNombre as sElabora, m.sDescripcion as moneda, a1.dDescuento as DescuentoMat ' +
          ' from anexo_ppedido a1 ' +
          ' inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) ' +
          ' inner join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ' +
          ' left join usuarios u on (u.sIdUsuario = a2.sElaboro) ' +
          ' inner join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ' +
          ' Where a1.sContrato =:Contrato and a2.sIdProveedor like "' + Item + '"' +
          ' #group by a2.iFolioPedido ' +
          ' order by a2.dIdFecha, a2.sOrdenCompra');
        Reporte.Params.ParamByName('Contrato').DataType := ftString;
        Reporte.Params.ParamByName('Contrato').Value := global_contrato;
        Reporte.Open;

        frxEntrada.PreviewOptions.MDIChild := False;
        frxEntrada.PreviewOptions.Modal := True;
        frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
        frxEntrada.PreviewOptions.ShowCaptions := False;
        frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
        frxEntrada.LoadFromFile(global_files + global_miReporte + '_oCompraxProveedor.fr3');
        if not FileExists(global_files + global_miReporte + '_oCompraxProveedor.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_oCompraxProveedor.fr3 no existe, notifique al administrador del sistema');
        frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      end;

            //Reporte Para Referencias...
      if lblDatos.Caption = 'Referencia:' then
      begin
        if cbxDatos.Text = 'Todos las Referencias' then
          Item := '%'
        else
          Item := cbxDatos.Text;

        Reporte.Active := False;
        Reporte.SQL.Clear;
        Reporte.SQL.Add('Select a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, sum(a1.dCantidad * (a1.dCosto - a1.dDescuento)) as dCosto, "" as iItemOrden, u.sNombre as sElabora, m.sDescripcion as moneda, a1.dDescuento as DescuentoMat ' +
          ' from anexo_ppedido a1 ' +
          ' inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) ' +
          ' inner join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ' +
          ' left join usuarios u on (u.sIdUsuario = a2.sElaboro) ' +
          ' inner join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ' +
          ' Where a1.sContrato =:Contrato and a2.sNumeroOrden like "' + Item + '"' +
          ' #group by a2.iFolioPedido ' +
          ' order by a2.dIdFecha, a2.sOrdenCompra');
        Reporte.Params.ParamByName('Contrato').DataType := ftString;
        Reporte.Params.ParamByName('Contrato').Value := global_contrato;
        Reporte.Open;

        frxEntrada.PreviewOptions.MDIChild := False;
        frxEntrada.PreviewOptions.Modal := True;
        frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
        frxEntrada.PreviewOptions.ShowCaptions := False;
        frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
        frxEntrada.LoadFromFile(global_files + global_miReporte + '_oCompraxReferencia.fr3');
        frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      end;

            //Reporte Para Comparativo...
      if lblDatos.Caption = 'Precios Materiales:' then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        if cbxDatos.Text = 'Todos los Materiales de la O.C.' then
        begin
          connection.zCommand.SQL.Add('select distinct sIdInsumo, iFolioPedido, mDescripcion, sMedida from anexo_ppedido where sContrato =:Contrato and iFolioPedido =:Pedido ');
          connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
          connection.zCommand.ParamByName('Pedido').AsInteger := anexo_ocompras.FieldValues['iFolioPedido'];
        end
        else
        begin
          connection.zCommand.SQL.Add('select distinct sIdInsumo, iFolioPedido, mDescripcion, sMedida from anexo_ppedido where sContrato =:Contrato and iFolioPedido =:Pedido and sIdInsumo =:Insumo');
          connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
          connection.zCommand.ParamByName('Pedido').AsInteger := anexo_ocompras.FieldValues['iFolioPedido'];
          connection.zCommand.ParamByName('Insumo').AsString := copy(cbxDatos.Text, 0, pos('.-', cbxDatos.Text) - 2);
        end;
        connection.zCommand.Open;

        rxPrecios.EmptyTable;
        conteo := 1;
        Insumo := '';
        lineas := 1;
        while not connection.zCommand.Eof do
        begin
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select pp.dCosto, p.dIdFecha, p.sOrdenCompra, p.sIdProveedor from anexo_ppedido pp ' +
            'inner join anexo_pedidos p on (p.sContrato = pp.sContrato and p.iFolioPedido = pp.iFolioPedido ) ' +
            'where pp.sContrato = :Contrato and pp.sIdInsumo =:Insumo group by p.dIdFecha, pp.dCosto order by p.dIdFecha');
          connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
          connection.QryBusca.ParamByName('Insumo').AsString := connection.zCommand.FieldValues['sIdInsumo'];
          connection.QryBusca.Open;

          while not connection.QryBusca.Eof do
          begin
            if conteo > 8 then
            begin
              conteo := 1;
              inc(lineas);
            end;

            if conteo = 1 then
              rxPrecios.Append
            else
              rxPrecios.Edit;

            rxPrecios.FieldValues['sContrato'] := global_contrato;
            rxPrecios.FieldValues['Item'] := lineas;
            rxPrecios.FieldValues['sIdInsumo'] := connection.zCommand.FieldValues['sIdInsumo'];
            rxPrecios.FieldValues['mDescripcion'] := connection.zCommand.FieldValues['mDescripcion'];
            rxPrecios.FieldValues['sIdProveedor'] := connection.QryBusca.FieldValues['sIdProveedor'];
            rxPrecios.FieldValues['sOrdenCompra' + IntToStr(conteo)] := connection.QryBusca.FieldValues['sOrdenCompra'];
            rxPrecios.FieldValues['dFecha' + IntToStr(conteo)] := connection.QryBusca.FieldValues['dIdFecha'];
            rxPrecios.FieldValues['dCosto' + IntToStr(conteo)] := connection.QryBusca.FieldValues['dCosto'];
            rxPrecios.Post;

            inc(conteo);
            connection.QryBusca.Next;

          end;
          connection.zCommand.Next;
          Insumo := connection.zCommand.FieldValues['sIdInsumo'];
          lineas := 1;
          conteo := 1;
        end;

        frxEntrada.PreviewOptions.MDIChild := False;
        frxEntrada.PreviewOptions.Modal := True;
        frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
        frxEntrada.PreviewOptions.ShowCaptions := False;
        frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
        frxEntrada.LoadFromFile(global_files + global_miReporte + '_oCompraComparativo.fr3');
        frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      end;

    end
    else
    begin
      Reporte.Active := False;
      Reporte.SQL.Clear;
      Reporte.SQL.Add('Select a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, sum(a1.dCantidad * (a1.dCosto - a1.dDescuento)) as dCosto, "" as iItemOrden, u.sNombre as sElabora, m.sDescripcion as moneda, a1.dDescuento as DescuentoMat ' +
        'from anexo_ppedido a1 ' +
        'inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato And a1.iFolioPedido = a2.iFolioPedido) ' +
        'inner join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ' +
        'left join usuarios u on (u.sIdUsuario = a2.sElaboro) ' +
        'inner join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ' +
        'Where a1.sContrato =:Contrato and a2.dIdFecha >=:FechaI and a2.dIdFecha <=:FechaF group by a2.iFolioPedido order by a2.dIdFecha, a2.sOrdenCompra');
      Reporte.Params.ParamByName('Contrato').DataType := ftString;
      Reporte.Params.ParamByName('Contrato').Value := global_contrato;
      Reporte.Params.ParamByName('FechaI').DataType := ftDate;
      Reporte.Params.ParamByName('FechaI').Value := FechaInicio.Date;
      Reporte.Params.ParamByName('FechaF').DataType := ftDate;
      Reporte.Params.ParamByName('FechaF').Value := FechaFinal.Date;
      Reporte.Open;

      frxEntrada.PreviewOptions.MDIChild := False;
      frxEntrada.PreviewOptions.Modal := True;
      frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
      frxEntrada.PreviewOptions.ShowCaptions := False;
      frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
      frxEntrada.LoadFromFile(global_files + global_miReporte + '_oCompraxPeriodo.fr3');
      frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    end;

  except
    on e: exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
    end;
  end;
  Grid_Entradas.Enabled := True;
  Grid_insumos.Enabled := True;
  GridPartidas.Enabled := True;
end;

procedure TfrmPedidos.cmdCancelarClick(Sender: TObject);
begin
  cbxDatos.Clear;
  Grid_Entradas.Enabled := True;
  Grid_insumos.Enabled := True;
  GridPartidas.Enabled := True;
  PanelImprime.Visible := False;
end;

procedure TfrmPedidos.Eliminar1Click(Sender: TObject);
begin
  frmBarra2.btnDelete.Click
end;

procedure TfrmPedidos.ExportarExcel1Click(Sender: TObject);
begin
  ExportExcelPersonalizado(Connection.contrato,dbg_OcVista,'Ordenes de Materiales','Ordenes de Compra de Materiales');
end;

procedure TfrmPedidos.Refresh1Click(Sender: TObject);
begin
  frmBarra2.btnRefresh.Click
end;

procedure TfrmPedidos.Imprimir1Click(Sender: TObject);
var
  xc : Byte ;
begin
  try
     if (cbbFrentes.Text = 'CONTRATO No. ' + global_contrato) then
       rDiarioFirmas(global_contrato, '', 'A', anexo_ocompras.FieldValues['dIdFecha'], frmPedidos)
     else
       rDiarioFirmas(global_contrato, cbbFrentes.Text, 'A', anexo_ocompras.FieldValues['dIdFecha'], frmPedidos);


     Connection.qryBusca.Active := False;
     Connection.qryBusca.SQL.Clear;
     Connection.qryBusca.SQL.Add('Select Sum(r.dCantidad * r.dCosto) as dMontoMN From anexo_ppedido r ' +
        'Where r.sContrato = :Contrato And r.iFolioPedido = :Folio Group By r.iFolioPedido');
     connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
     connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
     connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
     connection.qryBusca.Params.ParamByName('Folio').Value := anexo_ocompras.FieldValues['iFolioPedido'];
     Connection.qryBusca.Open;
     if Connection.qryBusca.RecordCount > 0 then
       MontoTotal := Connection.qryBusca.fieldValues['dMontoMN']-anexo_ocompras.FieldValues['dDescuento'];

     Reporte.Active := False;
     Reporte.SQL.Clear;
     if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
       Reporte.SQL.Add(CadenaReporte)
     else
       Reporte.SQL.Add(CadenaReporte);
     Reporte.Params.ParamByName('Contrato').DataType   := ftString;
     Reporte.Params.ParamByName('Contrato').Value      := global_contrato;

     Reporte.Params.ParamByName('Folio').DataType      := ftInteger;
     Reporte.Params.ParamByName('Folio').Value         := anexo_ocompras.FieldValues['iFolioPedido'];
     // Reporte.Params.ParamByName('Orden').AsString := tsNumeroOrden.Text;
     // Reporte.Params.ParamByName('Turno').AsString := 'A';
     // Reporte.Params.ParamByName('Fecha').AsDate   := anexo_ocompras.FieldValues['dIdFecha'];
     if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
     begin
       Reporte.Params.ParamByName('Convenio').DataType := ftString;
       Reporte.Params.ParamByName('Convenio').Value    := global_convenio;
     end;

     Reporte.Open;
     frxDBReporte.FieldAliases.Clear;
     zimgfirmas.Active := False ;
     zimgfirmas.Params.ParamByName('Contrato').Value := global_contrato ;
     zimgfirmas.Params.ParamByName('Orden').Value    := cbbFrentes.Text ;
     zimgfirmas.Params.ParamByName('Fecha').Value    := anexo_ocompras.FieldValues['dIdFecha'];
     zimgfirmas.Open ;
     xc := zimgFirmas.RecordCount ;

     connection.configuracion.Refresh;
     frxEntrada.PreviewOptions.MDIChild := False;
     frxEntrada.PreviewOptions.Modal := True;
     frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
     frxEntrada.PreviewOptions.ShowCaptions := False;
     frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
     frxEntrada.LoadFromFile(global_files + global_miReporte + '_ALMOrdCompra.fr3');

     if not FileExists(global_files + global_miReporte + '_ALMOrdCompra.fr3') then
        showmessage('El archivo de reporte '+global_Mireporte+'_ALMOrdCompra.fr3 no existe, notifique al administrador del sistema');
      frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al imprimir', 0);
      end;
    end;
end;

procedure TfrmPedidos.ImprimirComprasxProveedor1Click(Sender: TObject);
begin
  zqDatos.Active := False;
  zqDatos.SQL.Clear;
  zqDatos.SQL.Add('select sIdProveedor, sRazon from proveedores ');
  zqDatos.Open;

  cbxDatos.Clear;
  cbxDatos.Items.Add('Todos los provedores');
  while not zqDatos.Eof do
  begin
    cbxDatos.Items.Add(zqDatos.FieldValues['sIdProveedor'] + ' .- ' + zqDatos.FieldValues['sRazon']);
    zqDatos.Next;
  end;
  cbxDatos.ItemIndex := 0;
  Grid_Entradas.Enabled := False;
  Grid_insumos.Enabled := False;
  GridPartidas.Enabled := False;
  lblDatos.Caption := 'Proveedores:';
  PanelImprime.Visible := True;
  FiltroUno.Visible := True;
  FiltroDos.Visible := False;
end;

procedure TfrmPedidos.ImprimirComprasxReferencia1Click(Sender: TObject);
begin
  zqDatos.Active := False;
  zqDatos.SQL.Clear;
  zqDatos.SQL.Add('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato');
  zqDatos.ParamByName('Contrato').AsString := global_contrato;
  zqDatos.Open;

  cbxDatos.Clear;
  cbxDatos.Items.Add('Todos las Referencias');
  while not zqDatos.Eof do
  begin
    cbxDatos.Items.Add(zqDatos.FieldValues['sNumeroOrden']);
    zqDatos.Next;
  end;
  cbxDatos.ItemIndex := 0;
  Grid_Entradas.Enabled := False;
  Grid_insumos.Enabled := False;
  GridPartidas.Enabled := False;
  lblDatos.Caption := 'Referencia:';
  PanelImprime.Visible := True;
  FiltroUno.Visible := True;
  FiltroDos.Visible := False;
end;

procedure TfrmPedidos.ImprimirResumendeOC1Click(Sender: TObject);
begin
  Grid_Entradas.Enabled := False;
  Grid_insumos.Enabled  := False;
  GridPartidas.Enabled  := False;
  PanelImprime.Visible  := True;
  FiltroUno.Visible     := False;
  FiltroDos.Visible     := True;
  FechaInicio.Date      := date;
  FechaFinal.Date       := date;
end;

procedure TfrmPedidos.ImprimirVariaciondePrecios1Click(Sender: TObject);
begin
  zqDatos.Active := False;
  zqDatos.SQL.Clear;
  zqDatos.SQL.Add('select sIdInsumo, substr(mDescripcion, 1,255) as Descripcion from anexo_ppedido where sContrato =:Contrato and iFolioPedido =:Folio ');
  zqDatos.ParamByName('Contrato').AsString := global_contrato;
  zqDatos.ParamByName('Folio').AsInteger := anexo_ocompras.FieldValues['iFolioPedido'];
  zqDatos.Open;

  cbxDatos.Clear;
  cbxDatos.Items.Add('Todos los Materiales de la O.C.');
  while not zqDatos.Eof do
  begin
    cbxDatos.Items.Add(zqDatos.FieldValues['sIdInsumo'] + ' .- ' + zqDatos.FieldValues['Descripcion']);
    zqDatos.Next;
  end;
  cbxDatos.ItemIndex := 0;
  Grid_Entradas.Enabled := False;
  Grid_insumos.Enabled := False;
  GridPartidas.Enabled := False;
  lblDatos.Caption := 'Precios Materiales:';
  PanelImprime.Visible := True;
  FiltroUno.Visible := True;
  FiltroDos.Visible := False;
end;

procedure TfrmPedidos.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmPedidos.SeguimientoMaterialGeneral1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + 'seguimiento_materialxpartida.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'seguimiento_materialxpartida.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

  try
    Seguimiento_Material('');
    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
    frxEntrada.LoadFromFile(global_files + 'seguimiento_materialxpartida.fr3');
    frxEntrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'en el proceso Seguimiento Material General', 0);
    end;
  end;
end;

procedure TfrmPedidos.SeguimientoMaterialxPartida1Click(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_seguimiento_materialxpartida_1.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_seguimiento_materialxpartida_1.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

  try

    if anexo_pocompras.RecordCount > 0 then
      Seguimiento_Material(anexo_pocompras.FieldValues['sNumeroActividad'])
    else
    begin
      messageDLG('No existe partida para Mostra Reporte.', mtInformation, [mbOk], 0);
      exit;
    end;
    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
    frxEntrada.LoadFromFile(global_files + global_miReporte+ '_seguimiento_materialxpartida_1.fr3');
    frxEntrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'en el proceso Seguimiento Material x Partida', 'Al cancelar registro', 0);
    end;
  end;

end;


procedure TfrmPedidos.tsIsometricoReferenciaKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus
end;


procedure TfrmPedidos.tsMailEnter(Sender: TObject);
begin
  tsMail.style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsMailExit(Sender: TObject);
begin
  tsMail.style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsMailKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsVendedor.SetFocus
end;

procedure TfrmPedidos.tsMonedaEnter(Sender: TObject);
begin
  tsMoneda.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsMonedaExit(Sender: TObject);
begin
  tsMoneda.Color := Global_Color_Salida;
  tipocambio;
end;

procedure TfrmPedidos.tsMonedaKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
     tsTipoCambio.SetFocus ;
end;

procedure TfrmPedidos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmPedidos.GridPartidasCellClick(Column: TColumn);
begin
  if frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if anexo_pocompras.RecordCount > 0 then
  begin
    tdCantidad.Value := anexo_pocompras.FieldValues['dCantidad'];
    tDescuentoMat.Value := anexo_pocompras.FieldValues['dDescuento'];
    tdCostoNuevo.Value := anexo_pocompras.FieldValues['dCosto'];
  end;

end;

procedure TfrmPedidos.frxReport50GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'ANEXO') = 0 then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sAnexo From convenios Where sContrato = :Contrato And sIdConvenio = :convenio');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
    connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      Value := Connection.qryBusca.FieldValues['sAnexo']
    else
      Value := '';
  end;

  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;
  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisor;
  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisor;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;
end;


procedure TfrmPedidos.GridPartidasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  anexo_pocompras.Active := False;
  anexo_pocompras.SQL.Clear;
  if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
    anexo_pocompras.SQL.Add(CadenaOrden)
  else
    anexo_pocompras.SQL.Add(CadenaOrden2);
  anexo_pocompras.Params.ParamByName('Contrato').DataType := ftString;
  anexo_pocompras.Params.ParamByName('Contrato').Value := global_contrato;
  if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
  begin
    anexo_pocompras.Params.ParamByName('Convenio').DataType := ftString;
    anexo_pocompras.Params.ParamByName('Convenio').Value := global_convenio;
  end;
  anexo_pocompras.Params.ParamByName('Folio').DataType := ftInteger;
  anexo_pocompras.Params.ParamByName('Folio').Value := anexo_ocompras.FieldValues['iFolioPedido'];
  anexo_pocompras.Open;
end;

procedure TfrmPedidos.frmBarra2btnAddClick(Sender: TObject);
var
  dFechaFinal: tDate;
begin
  try
    OpcButton1 := 'New';
    frmBarra2.btnAddClick(Sender);
    frmBarra1.btnCancel.Click;
    pgControl.ActivePageIndex := 0;
    tdIdFecha.Enabled := True;
    tdFechaSuministro.Enabled := True ;
    tsIdProveedor.ReadOnly := False;
    cbbFrentes.Enabled := True;
    tmComentarios.ReadOnly := False;
    spEdtIva.ReadOnly:=false;
    tiFolio.text := '';
    tdIdFecha.Date := Date;
    tdFechaSuministro.date := Date ;
    dbRequisicion.Text := '';

    tmComentarios.Text   := '';
    tsEmbarca.Text       := '';
    tsCondiciones.Text   := '';
    tsEntrega.Text       := '';
    tsPrecios.Text       := '';
    tsVigencia.Text      := '';
    tsVendedor.Text      := '';
    tmComentarios.Text   := '';
    tsMail.Text          := '';
    spEdtIva.Value       :=16;
    tdCantidad.Value     := 0;
    tDescuentoGral.Value := 0;
    tdidFecha.SetFocus;
    BotonPermiso.permisosBotones(frmBarra1);
    Grid_Entradas.Enabled := False;
    anexo_ocompras.append;
   // tsIdProveedor.datasource:=nil;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al añadir registro', 0);
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnEditClick(Sender: TObject);
begin


  if not dbg_ocVista.DataController.DataSource.DataSet.IsEmpty then
  begin

    if anexo_ocompras.FieldByName( 'eEntregado' ).AsString = 'Si' then
      raise Exception.Create( 'La orden de compra no puede ser modificada, ya ha sido entregada.' );

    try
      validaciones;
      if valida then
      begin
        frmBarra1.btnCancel.Click;
        exit;
      end;
      if anexo_ocompras.RecordCount > 0 then
      begin
        OpcButton1 := 'Edit';
        cadenaReq := dbRequisicion.Text;
        frmBarra2.btnEditClick(Sender);
        pgControl.ActivePageIndex := 0;
        tdIdFecha.Enabled := True;
        tdFechaSuministro.Enabled := True ;
        tsIdProveedor.ReadOnly := False;
        cbbFrentes.Enabled := True;
        tmComentarios.ReadOnly := False;
        spEdtIva.ReadOnly:=False;
        //tsIdProveedor.datasource:=nil;
        anexo_ocompras.edit;
        tiFolio.SetFocus
      end;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al editar registro', 0);
      end;
    end;
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);

  end;
end;

procedure TfrmPedidos.frmBarra2btnPostClick(Sender: TObject);
var
  Posicion, x, i: Integer;
  cadena, cad, texto: string;
  nombres, cadenas: TStringList;
  RequisicionesSeleccionadas: TStringList;
  sPartidasDuplicadas: string;
  sIFolio: string;
  Maximo : integer;
  FolioR, Numdigitos: string;
  QryFolio: TZReadOnlyQuery;
begin



  posicion:=anexo_ocompras.RecNo;
  QryFolio := TZReadOnlyQuery.Create(Self);
  QryFolio.Connection := Connection.zConnection;
  //empieza validacion
  nombres := TStringList.Create; cadenas := TStringList.Create;
  //nombres.Add('Orden de Compra');
  nombres.Add('Proveedor'); nombres.Add('Referencia');
  nombres.Add('Forma de Pago');
  nombres.Add('Moneda');

  //cadenas.Add(tiFolio.Text);
  cadenas.Add(tsIdProveedor.Text); cadenas.Add(cbbFrentes.Text);
  cadenas.Add(cbbFormasPago.Text);
  cadenas.Add(tsMoneda.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  try
    if OpcButton1 = 'Edit' then
    begin
      if (CadenaReq <> '') and (dbRequisicion.Text = '') then
      begin
        validaPedido;
        if lValidaReq then
        begin
          messageDLG('Existen materiales para la Orden de Compra ' + anexo_ocompras.FieldValues['sOrdenCompra'] + ', No se pueden Cambiar la Orden de Compra por Requisicion. ', mtInformation, [mbOk], 0);
          exit;
        end;
      end;

      if (CadenaReq = '') and (dbRequisicion.Text <> '') then
      begin
        validaPedido;
        if lValidaReq then
        begin
          messageDLG('Existen materiales para la Orden de Compra ' + anexo_ocompras.FieldValues['sOrdenCompra'] + ', No se pueden Cambiar la Orden de Compra sin Requisicion. ', mtInformation, [mbOk], 0);
          exit;
        end;
      end;
    end;

    cad := dbRequisicion.Text;

    if chkTipoCambio.Checked then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select * from tiposdecambio where sIdMonedaConv =:Moneda and dIdFecha =:Fecha order by dIdFecha DESC ');
      connection.zCommand.ParamByName('Moneda').AsString := moneda.FieldValues['sIdMoneda'];
      connection.zCommand.ParamByName('Fecha').AsDate := tdIdFecha.Date;
      connection.zCommand.Open;

      if connection.zCommand.RecordCount = 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select * from tiposdecambio where sIdMoneda =:Moneda and dIdFecha < :Fecha order by dIdFecha DESC ');
        connection.zCommand.ParamByName('Moneda').AsString := moneda.FieldValues['sIdMoneda'];
        connection.zCommand.ParamByName('Fecha').AsDate := tdIdFecha.Date;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
          if messageDLG('No se encontró un Tipo de Cambio para ' + DateToStr(tdIdFecha.Date) + ' el Sistema Cotizará a : $' + FloatToStr(tsTipoCambio.Value) + #13 + ' -> ¿Desea Ccontinuar?', mtInformation, [mbYes, mbNo], 0) = mrNo then
            exit;
        end
        else
        begin
          messageDLG('No se encontró un Tipo de Cambio para la Fecha ' + DateToStr(tdIdFecha.Date) + ' en el Sistema!', mtInformation, [mbOk], 0);
          tsTipoCambio.Value := 0;
        end;
      end;
    end;

    if OpcButton1 = 'New' then
    begin

        QryFolio.Active:=False;
        QryFolio.SQL.Clear;
        QryFolio.SQL.Add('select sPrefijoOrdCompra, iNumOrdCompra, iAlmConsecutivoCom from configuracion where scontrato = :contrato');
        QryFolio.ParamByName('contrato').AsString:=global_contrato;
        QryFolio.Open;

        Numdigitos:='';
        for i := 1 to QryFolio.FieldByName('iNumOrdCompra').AsInteger do
                Numdigitos:=Numdigitos+'0';

        if QryFolio.RecordCount > 0 then
        begin

          with connection do
          begin
            QryBusca.Active := False;
            QryBusca.SQL.Text := 'select max( iFolioPedido ) + 1 as iFolioPedido from anexo_pedidos where sContrato = :contrato and sOrdenCompra like :sOC ';
            QryBusca.ParamByName( 'contrato' ).AsString := global_contrato;
            QryBusca.ParamByName( 'sOC' ).AsString      := QryFolio.FieldByName('sPrefijoOrdCompra').AsString + '%';
            QryBusca.Open;

          end;

         // if ( QryFolio.FieldByName('iAlmConsecutivoCom').AsInteger + 1)  < connection.QryBusca.FieldByName( 'iFolioPedido' ).AsInteger then
          //  Maximo := connection.QryBusca.FieldByName( 'iFolioPedido' ).AsInteger
         // else
            Maximo := QryFolio.FieldByName('iAlmConsecutivoCom').AsInteger + 1;

           FolioR := QryFolio.FieldByName('sPrefijoOrdCompra').AsString+formatfloat(Numdigitos,(QryFolio.FieldByName('iAlmConsecutivoCom').AsInteger + 1));
        end
        else
        begin
           Maximo := 1;
           FolioR := QryFolio.FieldByName('sPrefijoOrdCompra').AsString+formatfloat(Numdigitos,1);
        end;

      with connection do
      begin
        try
          zCommand.Active := False;
          zCommand.SQL.Clear;
          zcommand.SQL.Add('INSERT INTO anexo_pedidos ( sContrato, iFolioPedido, sOrdenCompra, sIdProveedor, sNumeroOrden, dIdFecha, ' +
            'sReferencia,  mComentarios, sFolioRequisicion, sFormaPago, sMoneda, dCambio, dIVA, sElaboro, sLugarEntrega, sCondiciones, sEntrega, ' +
            'sPrecios, sVigencia, sVendedor, sMail, dDescuento, sDireccionEnviar, sCiudadEnviar, sTelefonoEnviar, dFechaEntrega ) ' +
            'VALUES (:Contrato, :Pedido, :oCompra, :Proveedor, :Orden, :Fecha, :Orden, :Comentarios, :Requisicion, :sPago, :Moneda, :Cambio, :IVA, :Elaboro, ' +
            ':Lugar, :Condiciones, :Entrega, :Precios, :Vigencia, :Vendedor, :Mail, :Descuento, :DirecEnviar, :CiudadEnviar, :TelefonoEnviar, :FechaEntrega )');
          zcommand.Params.ParamByName('Contrato').DataType     := ftString;
          zcommand.Params.ParamByName('Contrato').value        := Global_Contrato;
          zcommand.Params.ParamByName('Pedido').DataType       := ftInteger;
          zcommand.Params.ParamByName('Pedido').value          := Maximo;
          zcommand.Params.ParamByName('oCompra').DataType      := ftString;
          zcommand.Params.ParamByName('oCompra').value         := FolioR;
          zcommand.Params.ParamByName('Proveedor').DataType    := ftString;
          zcommand.Params.ParamByName('Proveedor').value       := tsIdProveedor.KeyValue;
          zcommand.Params.ParamByName('Orden').DataType        := ftString;
          zcommand.Params.ParamByName('Orden').value           := cbbFrentes.editValue;
          zcommand.Params.ParamByName('Fecha').DataType        := ftDate;
          zcommand.Params.ParamByName('Fecha').value           := tdIdFecha.Date;
          zcommand.Params.ParamByName('Comentarios').DataType  := ftMemo;
          zcommand.Params.ParamByName('Comentarios').value     := tmCOmentarios.Text;
          zcommand.Params.ParamByName('Requisicion').AsString  := dbRequisicion.Text;
          zcommand.Params.ParamByName('sPago').DataType        := ftString;
          zcommand.Params.ParamByName('sPago').value           := cbbFormasPago.editValue ;
          zcommand.Params.ParamByName('Entrega').DataType      := ftString;
          zcommand.Params.ParamByName('Entrega').value         := tsEntrega.Text;
          zcommand.Params.ParamByName('Moneda').DataType       := ftString;
          zcommand.Params.ParamByName('Moneda').value          := tsMoneda.KeyValue;
          zcommand.Params.ParamByName('Cambio').DataType       := ftFloat;

          zCommand.Params.ParamByName('DirecEnviar').Value     := tsDirecEnvio.text ;
          zCommand.Params.ParamByName('CiudadEnviar').Value    := tsCiudadEnvio.Text ;
          zCommand.Params.ParamByName('TelefonoEnviar').Value  := tsTelefono.text ;

          if chkTipoCambio.Checked then
            zcommand.Params.ParamByName('Cambio').value := tsTipoCambio.Value
          else
            zcommand.Params.ParamByName('Cambio').value        := 0;
          zcommand.Params.ParamByName('IVA').DataType          := ftFloat;
          zcommand.Params.ParamByName('IVA').value             :=spEdtIva.Value;   //moneda.FieldValues['dIVA'];
          zcommand.Params.ParamByName('Elaboro').DataType      := ftString;
          zcommand.Params.ParamByName('Elaboro').value         := global_usuario;
          zcommand.Params.ParamByName('Lugar').DataType        := ftString;
          zcommand.Params.ParamByName('Lugar').value           := tsEmbarca.Text;
          zcommand.Params.ParamByName('Condiciones').DataType  := ftString;
          zcommand.Params.ParamByName('Condiciones').value     := tsCondiciones.Text;
          zcommand.Params.ParamByName('Precios').DataType      := ftString;
          zcommand.Params.ParamByName('Precios').value         := tsPrecios.Text;
          zcommand.Params.ParamByName('Vigencia').DataType     := ftString;
          zcommand.Params.ParamByName('Vigencia').value        := tsVigencia.Text;
          zcommand.Params.ParamByName('Vendedor').DataType     := ftString;
          zcommand.Params.ParamByName('Vendedor').value        := tsVendedor.Text;
          zcommand.Params.ParamByName('Mail').DataType         := ftString;
          zcommand.Params.ParamByName('Mail').value            := tsMail.Text;
          zcommand.Params.ParamByName('Descuento').DataType    := ftFloat;
          zcommand.Params.ParamByName('Descuento').value       := tDescuentoGral.Value;
          zcommand.Params.ParamByName('FechaEntrega').DataType := ftDate;
          zcommand.Params.ParamByName('FechaEntrega').value    := tdFechaSuministro.Date;
          zcommand.ExecSQL;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Text := 'update configuracion set iAlmConsecutivoCom = :valor where sContrato = :contrato';
          connection.zCommand.ParamByName( 'contrato' ).AsString := global_contrato;
          connection.zCommand.ParamByName( 'valor' ).AsInteger := Maximo;
          connection.zCommand.ExecSQL;

          {Cargar las partidas de la requisición si es que fue seleccionada una}

          isOpen := False;
          anexo_ocompras.cancel;
          anexo_ocompras.Refresh;
          isOPen := True;
          sIFolio := '';
          for i := 0 to dbRequisicion.Items.Count - 1 do
          begin
            if dbRequisicion.Checked[i] then
              sIFolio := sIFolio + dbRequisicion.Items[i] + ',';
          end;

          if sIFolio <> '' then
          begin
            RequisicionesSeleccionadas := TStringList.Create;
            Split(',', sIFolio + ',', RequisicionesSeleccionadas);
            for i := 0 to RequisicionesSeleccionadas.Count - 1 do
            begin
              sIFolio := RequisicionesSeleccionadas[i];
            end;
          end;

              // Actualizo Kardex del Sistema ....
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
            'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
          connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zcommand.Params.ParamByName('Usuario').DataType := ftString;
          connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario;
          connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zcommand.Params.ParamByName('Fecha').Value := Date;
          connection.zcommand.Params.ParamByName('Hora').DataType := ftString;
          connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now);
          connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString;
          connection.zcommand.Params.ParamByName('Descripcion').Value := 'Registro de Pedido ' + tiFolio.Text + '] Registrado el [' + DateToStr(tdIdFecha.Date) + '] Usuario [ ' + global_usuario + ']';
          connection.zcommand.Params.ParamByName('Origen').DataType := ftString;
          connection.zcommand.Params.ParamByName('Origen').Value := 'Requisiciones y Compras';
          connection.zcommand.ExecSQL;

          tdIdFecha.Enabled := False;
          tsIdProveedor.ReadOnly := True;
          cbbFrentes.Enabled := False;
          tmComentarios.ReadOnly := True;
          spEdtIva.ReadOnly:=True;
          frmBarra2.btnCancelClick(Sender);
          Posicion:=0;
          anexo_ocompras.cancel;
        except
          on e: exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al salvar registro', 0);
          end;
        end
      end
    end
    else
      if OpcButton1 = 'Edit' then
      begin
        with connection do
        begin
          try
            zCommand.Active := False;
            zCommand.SQL.Clear;
            zcommand.SQL.Add('UPDATE anexo_pedidos SET sOrdenCompra = :oCompra, sIdProveedor = :Proveedor, dIdFecha = :Fecha, ' +
              'sFormaPago = :sPago, sEntrega = :Entrega, sMoneda = :Moneda, dCambio =:Cambio, dIVA =:IVA, sLugarEntrega =:Lugar, sCondiciones =:Condiciones, sPrecios =:Precio, sVigencia =:Vigencia, ' +
              'sNumeroOrden = :Orden, sReferencia = :Orden, mComentarios = :Comentarios, sFolioRequisicion = :Requisicion, sVendedor =:Vendedor, sMail =:Mail, ' +
              'dDescuento =:Descuento, sDireccionEnviar =:DirecEnviar, sCiudadEnviar =:CiudadEnviar, sTelefonoEnviar =:TelefonoEnviar, dFechaEntrega =:Fechas ' );
            zcommand.SQL.Add(  'WHERE sContrato = :Contrato And iFolioPedido = :Folio');

            zcommand.Params.ParamByName('Contrato').DataType     := ftString;
            zcommand.Params.ParamByName('Contrato').value        := Global_Contrato;
            zcommand.Params.ParamByName('Folio').DataType        := ftInteger;
            zcommand.Params.ParamByName('Folio').value           := anexo_ocompras.FieldValues['iFoliopedido'];
            zcommand.Params.ParamByName('oCompra').DataType      := ftString;
            zcommand.Params.ParamByName('oCompra').value         := tiFolio.Text;
            zcommand.Params.ParamByName('Proveedor').DataType    := ftString;
            zcommand.Params.ParamByName('Proveedor').value       := tsIdProveedor.KeyValue;
            zcommand.Params.ParamByName('Orden').DataType        := ftString;
            zcommand.Params.ParamByName('Orden').value           := cbbFrentes.editValue ;
            zcommand.Params.ParamByName('Fecha').DataType        := ftDate;
            zcommand.Params.ParamByName('Fecha').value           := tdIdFecha.Date;

            zcommand.Params.ParamByName('Fechas').DataType       := ftDate;
            zcommand.Params.ParamByName('Fechas').value          := tdFechaSuministro.Date;
            zcommand.Params.ParamByName('sPago').DataType        := ftString;
            zcommand.Params.ParamByName('sPago').value           := cbbFormasPago.editValue;
            zcommand.Params.ParamByName('Entrega').DataType      := ftString;
            zcommand.Params.ParamByName('Entrega').value         := tsEntrega.Text;
            zcommand.Params.ParamByName('Moneda').DataType       := ftString;
            zcommand.Params.ParamByName('Moneda').value          := tsMoneda.KeyValue;
            zcommand.Params.ParamByName('Cambio').DataType       := ftFloat;
            zCommand.Params.ParamByName('DirecEnviar').Value     := tsDirecEnvio.text ;
            zCommand.Params.ParamByName('CiudadEnviar').Value    := tsCiudadEnvio.Text ;
            zCommand.Params.ParamByName('TelefonoEnviar').Value  := tsTelefono.text ;

            if chkTipoCambio.Checked then
              zcommand.Params.ParamByName('Cambio').value         := tsTipoCambio.Value
            else
              zcommand.Params.ParamByName('Cambio').value         := 0;
            zcommand.Params.ParamByName('IVA').DataType           := ftFloat;
            zcommand.Params.ParamByName('IVA').value              :=spEdtIva.Value;
            zcommand.Params.ParamByName('Comentarios').DataType   := ftMemo;
            zcommand.Params.ParamByName('Comentarios').value      := tmCOmentarios.Text;
            if chkRequisicion.Checked = True then
              zcommand.Params.ParamByName('Requisicion').AsString := dbRequisicion.Text
            else
              zcommand.Params.ParamByName('Requisicion').AsString :='' ;
            zcommand.Params.ParamByName('Lugar').DataType         := ftString;
            zcommand.Params.ParamByName('Lugar').value            := tsEmbarca.Text;
            zcommand.Params.ParamByName('Condiciones').DataType   := ftString;
            zcommand.Params.ParamByName('Condiciones').value      := tsCondiciones.Text;
            zcommand.Params.ParamByName('Precio').DataType        := ftString;
            zcommand.Params.ParamByName('Precio').value           := tsPrecios.Text;
            zcommand.Params.ParamByName('Vigencia').DataType      := ftString;
            zcommand.Params.ParamByName('Vigencia').value         := tsVigencia.Text;
            zcommand.Params.ParamByName('Vendedor').DataType      := ftString;
            zcommand.Params.ParamByName('Vendedor').value         := tsVendedor.Text;
            zcommand.Params.ParamByName('Mail').DataType          := ftString;
            zcommand.Params.ParamByName('Mail').value             := tsMail.Text;
            zcommand.Params.ParamByName('Descuento').DataType     := ftFloat;
            zcommand.Params.ParamByName('Descuento').value        := tDescuentoGral.Value;
            zcommand.ExecSQL;

             //Ahora actualizamos el tipo de cambio si aplica.
            Connection.QryBusca.Active := False;
            Connection.QryBusca.SQL.Clear;
            Connection.QryBusca.SQL.Add('select p.iFolioPedido, p.sIdInsumo, p.iItem, i.dNuevoPrecio from anexo_ppedido p ' +
              'inner join insumos i on (i.sContrato = p.sContrato and i.sIdInsumo = p.sIdInsumo) ' +
              'WHERE p.sContrato =:Contrato And p.iFolioPedido =:Folio ');
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.QryBusca.Params.ParamByName('Contrato').value    := Global_Contrato;
            Connection.QryBusca.Params.ParamByName('Folio').DataType    := ftInteger;
            Connection.QryBusca.Params.ParamByName('Folio').value       := anexo_ocompras.FieldValues['iFolioPedido'];
            Connection.QryBusca.Open;

            if Connection.QryBusca.RecordCount > 0 then
            begin
              if (anexo_ocompras.FieldValues['sMoneda'] = 'DLL') or (anexo_ocompras.FieldValues['sMoneda'] = 'dll') then
              begin
                if anexo_ocompras.FieldValues['dCambio'] > 0 then
                begin
                  while not connection.QryBusca.Eof do
                  begin
                    Connection.zCommand.Active := False;
                    Connection.zCommand.SQL.Clear;
                    Connection.zCommand.SQL.Add('UPDATE anexo_ppedido SET dCosto =:Costo ' +
                      'WHERE sContrato = :Contrato And iFolioPedido = :Folio and sIdInsumo =:Insumo And iItem = :Item');
                    Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
                    Connection.zCommand.Params.ParamByName('Folio').DataType := ftInteger;
                    Connection.zCommand.Params.ParamByName('Folio').value := Connection.QryBusca.FieldValues['iFolioPedido'];
                    Connection.zCommand.Params.ParamByName('Insumo').DataType := ftString;
                    Connection.zCommand.Params.ParamByName('Insumo').value := connection.QryBusca.FieldValues['sIdInsumo'];
                    Connection.zCommand.Params.ParamByName('Item').DataType := ftInteger;
                    Connection.zCommand.Params.ParamByName('Item').value := Connection.QryBusca.FieldValues['iItem'];
                    Connection.zCommand.Params.ParamByName('Costo').DataType := ftFloat;
                    Connection.zCommand.Params.ParamByName('Costo').value := (Connection.QryBusca.FieldValues['dNuevoPrecio'] * anexo_ocompras.FieldValues['dCambio']);
                    Connection.zCommand.ExecSQL;
                    connection.QryBusca.Next;
                  end;
                end;
              end;
            end;

                // Actualizo Kardex del Sistema ....
            Connection.zCommand.Active := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
              'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
            connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.zcommand.Params.ParamByName('Usuario').DataType := ftString;
            connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario;
            connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zcommand.Params.ParamByName('Fecha').Value := Date;
            connection.zcommand.Params.ParamByName('Hora').DataType := ftString;
            connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now);
            connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString;
            connection.zcommand.Params.ParamByName('Descripcion').Value := 'Modificación de Pedido ' + tiFolio.Text + '] Registrado el [' + DateToStr(tdIdFecha.Date) + '] Usuario [ ' + global_usuario + ']';
            connection.zcommand.Params.ParamByName('Origen').DataType := ftString;
            connection.zcommand.Params.ParamByName('Origen').Value := 'Requisiciones y Compras';
            connection.zcommand.ExecSQL;

            tdIdFecha.Enabled := False;
            cbbFrentes.Enabled := False;
            tsIdProveedor.ReadOnly := True;
            tmComentarios.ReadOnly := True;
            spEdtIva.ReadOnly:=true;
            frmBarra2.btnCancelClick(Sender);
          except
            on e: exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al actualizar registro', 0);
            end;
          end
        end
      end;

    IsOpen := False;
    anexo_ocompras.cancel;
    anexo_ocompras.Refresh;
    if tifolio.Text = '' then
       anexo_ocompras.Locate('sOrdenCompra', FolioR, [loCaseInsensitive])
    else
       anexo_ocompras.Locate('sOrdenCompra', tifolio.Text, [loCaseInsensitive]);
    SavePlace := dbg_ocVista.DataController.DataSource.DataSet.GetBookmark ;
    try
       dbg_OCVista.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    Except
    Else
       dbg_OCVista.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
    end ;
    IsOpen := True;

    OpcButton1 := '';

    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al salvar registro', 0);
    end;
  end;
  Grid_Entradas.Enabled := True;
  //anexo_ocompras.RecNo:=Posicion;
end;

procedure TfrmPedidos.frmBarra2btnDeleteClick(Sender: TObject);
begin
  try
    validaciones;
    if valida then
    begin
      frmBarra1.btnCancel.Click;
      exit;
    end;
    if anexo_ocompras.RecordCount > 0 then
      if MessageDlg('Desea eliminar el folio seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select iFolioPedido from anexo_ppedido where sContrato = :Contrato And iFolioPedido = :Folio');
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
        connection.zcommand.Params.ParamByName('Folio').DataType := ftInteger;
        connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
        connection.zcommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
          MessageDLG(' No se puede eliminar la Orden de Compra ' + anexo_ocompras.FieldValues['sOrdenCompra'] + ' , Elimine materiales.', mtInformation, [mbOk], 0);
          exit;
        end;

              // Actualizo Kardex del Sistema ....
        Connection.zCommand.Active := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
          'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zcommand.Params.ParamByName('Usuario').DataType := ftString;
        connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario;
        connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zcommand.Params.ParamByName('Fecha').Value := Date;
        connection.zcommand.Params.ParamByName('Hora').DataType := ftString;
        connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now);
        connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString;
        connection.zcommand.Params.ParamByName('Descripcion').Value := 'Eliminación de Pedido ' + tiFolio.Text + '] Registrado el [' + DateToStr(tdIdFecha.Date) + '] Usuario [ ' + global_usuario + ']';
        connection.zcommand.Params.ParamByName('Origen').DataType := ftString;
        connection.zcommand.Params.ParamByName('Origen').Value := 'Requisiciones y Compras';
        connection.zcommand.ExecSQL;

        with connection do
        begin
          try
                     //Eliminamos las referecnias en Requisiciones de la Ordne de Copra hacia las requisiciones asignadas..
            zCommand.Active := False;
            zCommand.SQL.Clear;
            zCommand.SQL.Add('Delete from anexo_prequisicion where sContrato = :Contrato And iFolioPedido = :Folio');
            zcommand.Params.ParamByName('Contrato').DataType := ftString;
            zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
            zcommand.Params.ParamByName('Folio').DataType := ftInteger;
            zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
            zcommand.ExecSQL;
                     //Eliminamos la orden de compraa..
            zCommand.Active := False;
            zCommand.SQL.Clear;
            zCommand.SQL.Add('Delete from anexo_pedidos where sContrato = :Contrato And iFolioPedido = :Folio');
            zcommand.Params.ParamByName('Contrato').DataType := ftString;
            zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
            zcommand.Params.ParamByName('Folio').DataType := ftInteger;
            zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['iFolioPedido'];
            zcommand.ExecSQL;

            isOpen := False;
            SavePlace := anexo_ocompras.GetBookmark;
            anexo_ocompras.Refresh;

            try
              anexo_ocompras.GotoBookmark(SavePlace);
            except
            else
              anexo_ocompras.FreeBookmark(SavePlace);
            end;
            isOpen := True;
          except
            on e: exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
            end;
                     //MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
          end
        end
      end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al eliminar registro', 0);
    end;
  end;
end;


procedure TfrmPedidos.frmBarra2btnRefreshClick(Sender: TObject);
begin
  try
    isOpen := False;
    anexo_ocompras.Refresh;
    isOpen := True;
    Proveedores.Refresh;

    anexo_pocompras.Active := False;
    anexo_pocompras.SQL.Clear;
    anexo_pocompras.SQL.Add(CadenaOrden);
    anexo_pocompras.Params.ParamByName('Contrato').DataType := ftString;
    anexo_pocompras.Params.ParamByName('Contrato').Value := global_contrato;
    anexo_pocompras.Params.ParamByName('Convenio').DataType := ftString;
    anexo_pocompras.Params.ParamByName('Convenio').Value := global_convenio;
    anexo_pocompras.Params.ParamByName('Folio').DataType := ftInteger;
    if anexo_ocompras.RecordCount > 0 then
      anexo_pocompras.Params.ParamByName('Folio').Value := anexo_ocompras.FieldValues['iFolioPedido']
    else
      anexo_pocompras.Params.ParamByName('Folio').Value := 0;
    anexo_pocompras.Open;

    requisiciones.Params.ParamByName('Contrato').DataType := ftString;
    requisiciones.Params.ParamByName('Contrato').Value := global_contrato;
    requisiciones.Open;

    if requisiciones.RecordCount > 0 then
    begin
      dbRequisicion.Clear;
      while not requisiciones.Eof do
      begin
        dbRequisicion.Items.Add(requisiciones.FieldValues['sNumFolio']);
        requisiciones.Next;
      end;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnCancelClick(Sender: TObject);
begin
  try

    tdIdFecha.Enabled         := False;
    tdFechaSuministro.Enabled := False ;
    tsIdProveedor.ReadOnly    := True;
    cbbFrentes.Enabled        := False;
    tmComentarios.ReadOnly    := True;
    spEdtIva.ReadOnly         := True;
    OpcButton1                := '';
    anexo_ocompras.cancel;
    frmBarra2.btnCancelClick(Sender);
    grid_entradas.enabled     := true;
    Grid_Entradas.SetFocus;

    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al cancelar registro', 0);
    end;
  end;
end;

procedure TfrmPedidos.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  close
end;

procedure TfrmPedidos.tdFechaSuministroEnter(Sender: TObject);
begin
 tdFechaSuministro.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tdFechaSuministroExit(Sender: TObject);
begin
 tdFechaSuministro.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tdFechaSuministroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
     chkRequisicion.SetFocus ;
end;

procedure TfrmPedidos.tdIdFechaEnter(Sender: TObject);
begin
  tiFolio.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tdIdFechaExit(Sender: TObject);
begin
  tdIdFecha.Color := Global_Color_Salida;
  tipocambio;
end;

procedure TfrmPedidos.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
 begin
  if Key = #13 then
      tdFechaSuministro.SetFocus ;
 end;

procedure TfrmPedidos.tiFolioEnter(Sender: TObject);
begin
  tiFolio.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tiFolioExit(Sender: TObject);
begin
  tiFolio.Color := Global_Color_Salida;
  tipocambio;
end;



procedure TfrmPedidos.tsVendedorEnter(Sender: TObject);
begin
  tsVendedor.style.Color := Global_Color_Entrada;
end;



procedure TfrmPedidos.tsVendedorExit(Sender: TObject);
begin
  tsVendedor.style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsVendedorKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
    tsCondiciones.SetFocus ;
end;

procedure TfrmPedidos.tsVigenciaEnter(Sender: TObject);
begin
  tsVigencia.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsVigenciaExit(Sender: TObject);
begin
  tsVigencia.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsVigenciaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tscondiciones.SetFocus
end;

procedure TfrmPedidos.tsCiudadEnvioEnter(Sender: TObject);
begin
  tsCiudadEnvio.Style.Color := Global_Color_Entrada ;
end;

procedure TfrmPedidos.tsCiudadEnvioExit(Sender: TObject);
begin
  tsDirecEnvio.Style.Color := Global_Color_Salida ;
end;

procedure TfrmPedidos.tsCiudadEnvioKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
       tsTelefono.SetFocus ;
end;

procedure TfrmPedidos.tsDirecEnvioEnter(Sender: TObject);
begin
 tsDirecEnvio.Style.Color := Global_Color_Entrada ;
end;

procedure TfrmPedidos.tsDirecEnvioExit(Sender: TObject);
begin
  tsDirecEnvio.Style.Color := Global_Color_Salida ;
end;

procedure TfrmPedidos.tsDirecEnvioKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
      tsCiudadEnvio.SetFocus ;
end;

procedure TfrmPedidos.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
        tsMail.SetFocus ;
end;

procedure TfrmPedidos.Grid_InsumosEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  if frmbarra2.btnCancel.Enabled = True then
    frmBarra2.btnCancel.Click;

end;

procedure TfrmPedidos.Grid_InsumosViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if Grid_InsumosView.DataController.datasource.DataSet.IsEmpty = false then
  begin
    if Grid_InsumosView.DataController.DataSource.DataSet.RecordCount > 0 then
    begin
      if insumos.RecordCount > 0 then
      begin
        if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
          tdCantidad.Value := insumos.FieldValues['dCantidad']
        else
          tdCantidad.Value := 0;
        tdCostoNuevo.Value := insumos.FieldValues['dNuevoPrecio'];
      end;
    end;
  end;
end;

procedure TfrmPedidos.Grid_InsumosViewKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdCantidad.SetFocus
end;

procedure TfrmPedidos.tmComentariosEnter(Sender: TObject);
begin
  tmComentarios.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tmComentariosExit(Sender: TObject);
begin
  tmComentarios.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tdCantidadChange(Sender: TObject);
begin
  TRxCalcEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmPedidos.tdCantidadEnter(Sender: TObject);
begin
  tdCantidad.Color := Global_Color_Entrada
end;

procedure TfrmPedidos.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := Global_Color_Salida
end;

procedure TfrmPedidos.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(tdCantidad, key) then
    key := #0;
end;

procedure TfrmPedidos.tdCostoNuevoEnter(Sender: TObject);
begin
    tdCostoNuevo.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tdCostoNuevoExit(Sender: TObject);
begin
    tdCostoNuevo.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tDescuentoGralEnter(Sender: TObject);
begin
   tDescuentoGral.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tDescuentoGralExit(Sender: TObject);
begin
tDescuentoGral.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tDescuentoGralKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
         tsCondiciones.SetFocus ;
end;

procedure TfrmPedidos.tDescuentoMatEnter(Sender: TObject);
begin
    tDescuentoMat.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tDescuentoMatExit(Sender: TObject);
begin
    tDescuentoMat.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.GridPartidasEnter(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if anexo_pocompras.RecordCount > 0 then
  begin
    tdCantidad.Value := anexo_pocompras.FieldValues['dCantidad'];
    tDescuentoMat.Value := anexo_pocompras.FieldValues['dDescuento'];
    tdCostoNuevo.Value := anexo_pocompras.FieldValues['dCosto'];
  end
  else
  begin
    tdCantidad.Value := 0;
    tDescuentoMat.Value := 0;
    tdCostoNuevo.Value := 0;
  end;
end;

procedure TfrmPedidos.GridPartidasGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if anexo_pocompras.RecordCount > 0 then
    begin

      Afont.Style := [fsBold];
      AFont.Color := clBlue;

      if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'Pendiente' then
      begin
        Afont.Style := [];
        AFont.Color := clRed;
      end;
    end;
end;

procedure TfrmPedidos.frmBarra2btnPrinterClick(Sender: TObject);
begin
  Imprimir1.Click;
end;

procedure TfrmPedidos.tsNumeroActividadExit(Sender: TObject);
begin

  if dbPartidas.ReadOnly = False then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
    connection.qryBusca.Params.ParamByName('actividad').Value := '';
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      imgNotas.Visible := True;

  end
end;

procedure TfrmPedidos.tsNumeroActividadEnter(Sender: TObject);
begin
  imgNotas.Visible := False;
end;

procedure TfrmPedidos.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then

end;

procedure TfrmPedidos.lblPartidaClick(Sender: TObject);
begin
    if lblPartida.Caption = 'ID Material' then
      lblPartida.Caption := 'Descripcion'
    else
      lblPartida.Caption := 'ID Material';
end;

function TfrmPedidos.lExisteActividad(sActividad: string): Boolean;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('select mDescripcion, dCantidadAnexo, sMedida, dVentaMN from actividadesxanexo where sContrato = :Contrato ' +
    'And sIdConvenio = :Convenio and sNumeroActividad = :Actividad');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
  connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Actividad').Value := sActividad;
  connection.qryBusca.Open;
  if connection.qryBusca.RecordCount > 0 then
  begin
    sDescripcion := connection.qryBusca.FieldValues['mDescripcion'];
    lExisteActividad := True
  end
  else
  begin
    sDescripcion := '';
    lExisteActividad := False
  end
end;



procedure TfrmPedidos.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmPedidos.pgcontrolChange(Sender: TObject);
begin
  llenado() ;
end;


procedure TfrmPedidos.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmPedidos.ComentariosAdicionalesClick(Sender: TObject);
begin
  global_partida := dbPartidas.Text;
  Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
  frmComentariosxAnexo.show;
end;

procedure TfrmPedidos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmPedidos.dbg1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if anexo_pocompras.RecordCount > 0 then
  begin
    tdCantidad.Value := anexo_pocompras.FieldValues['dCantidad'];
    tDescuentoMat.Value := anexo_pocompras.FieldValues['dDescuento'];
    tdCostoNuevo.Value := anexo_pocompras.FieldValues['dCosto'];
  end;
end;

procedure TfrmPedidos.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
  AStyle := cxstylBlue;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Pendiente' then AStyle := cxstylRed;
end;

procedure TfrmPedidos.dbPartidasClick(Sender: TObject);
begin
  try
    insumos.Active := False;
    insumos.SQL.Clear;
    insumos.SQL.Add('select a.iFolioRequisicion as Requisicion, a.dCantidad as dCantidad, i.*, SubStr(i.mDescripcion, 1, 255) as sDescripcion, a.iItem, '+
      ' a.sNumeroActividad, alm.sDescripcion AS Almacen from anexo_prequisicion a  ' +
      ' inner join almacenes alm on (alm.lPrincipal = "Si") '+
      ' inner join insumos i on (i.sIdAlmacen = alm.sIdAlmacen and a.sIdInsumo = i.sIdInsumo ) ' +
      ' where a.sContrato =:Contrato and FIND_IN_SET(a.iFolioRequisicion,:Folio) and a.sNumeroActividad =:Partida and a.sEstado = "PENDIENTE" ');
    insumos.ParamByName('Contrato').AsString := global_contrato;
    insumos.ParamByName('Folio').AsString    := anexo_ocompras.FieldValues['sFolioRequisicion'];
    insumos.ParamByName('Partida').AsString  := dbPartidas.Text;
    insumos.Open;
 
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'Al seleccionar partida', 0);
    end;
  end;

end;

procedure TfrmPedidos.dbPartidasKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    tdcantidad.SetFocus
end;

procedure TfrmPedidos.dbRequisicionChange(Sender: TObject);
var
  folio: string;
  Qry: TZReadOnlyQuery;
begin
  try
  //Seleccionar la referencia de la requisición deseada, pero en el caso de que
  //se seleccionen mas de una, no se realiza la operacion de buscar la referencia

    folio := dbRequisicion.Text;
    if (OpcButton1 <> '') and (folio <> '') then
    begin
      if pos(',', folio) <= 0 then
      begin
        Qry := TZReadOnlyQuery.Create(nil);
        Qry.Connection := connection.zConnection;
        Qry.Active := false;
        Qry.SQL.Clear;
        Qry.SQL.Add(' select sReferencia from anexo_requisicion ');
        Qry.SQL.Add(' where iFolioRequisicion=:folio and sContrato=:contrato ');
        Qry.ParamByName('folio').AsString := folio;
        Qry.ParamByName('contrato').AsString := global_contrato;
        Qry.Open;
        if Qry.RecordCount > 0 then
          cbbFrentes.Text := Qry.FieldByName('sReferencia').AsString;
        Qry.Free;
      end;
    end;
  except
  end
end;

procedure TfrmPedidos.dbRequisicionEnter(Sender: TObject);
var
  x, i, a: Integer;
  cad, texto, inicio: string;
begin
  try
    dbrequisicion.Color := Global_Color_Entrada;
    if OpcButton1 <> 'Edit' then
    begin
      inicio := dbRequisicion.Text;
      if requisiciones.RecordCount > 0 then
      begin
        requisiciones.First;
        dbRequisicion.Clear;
        while not requisiciones.Eof do
        begin
          dbRequisicion.Items.Add(requisiciones.FieldValues['sNumFolio']);
          requisiciones.Next;
        end;
      end;

      cad := inicio;

      if cad <> '' then
      begin
        x := 1;
        i := length(cad);
        while x = 1 do
        begin
          x := pos(',', cad);
          texto := cad;
          if x > 0 then
          begin
            texto := copy(cad, 1, x - 1);
            cad := copy(cad, x + 1, i);
            x := 1;
          end;

          if texto <> '' then
          begin
            a := dbRequisicion.Items.IndexOf(texto);
            dbRequisicion.Checked[a] := True;
          end;
        end;
      end;
    end;

  except
  end;
end;

procedure TfrmPedidos.dbRequisicionExit(Sender: TObject);
begin
  dbrequisicion.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.dbRequisicionKeyPress(Sender: TObject; var Key: Char);
begin
  if tsidproveedor.Enabled = true then
  begin
    if Key = #13 then
      tsidproveedor.SetFocus
  end;
end;

procedure TfrmPedidos.tsNumeroOrdenEnter(Sender: TObject);
begin
  cbbFrentes.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsNumeroOrdenExit(Sender: TObject);
begin
  cbbFrentes.Style.Color := Global_Color_Salida;
end;


procedure TfrmPedidos.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
        tsEmbarca.SetFocus ;
end;

procedure TfrmPedidos.tsPreciosEnter(Sender: TObject);
begin
  tsPrecios.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsPreciosExit(Sender: TObject);
begin
  tsPrecios.style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsPreciosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus
end;

procedure TfrmPedidos.tsTipoCambioEnter(Sender: TObject);
begin
 tsTipoCambio.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsTipoCambioExit(Sender: TObject);
begin
tsTipoCambio.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsTipoCambioKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
         tDescuentoGral.setFocus;
end;


procedure TfrmPedidos.anexo_pocomprasCalcFields(DataSet: TDataSet);
begin
  anexo_pocomprasdMontoMN.Value := (anexo_pocomprasdCantidad.Value * anexo_pocomprasdCosto.Value) - anexo_pocomprasdDescuento.Value;
  anexo_pocomprassDescripcion.Text := MidStr(anexo_pocompras.FieldValues['mDescripcion'], 1, 295);
end;

procedure TfrmPedidos.btnAddClick(Sender: TObject);
begin
    validaciones;

  if valida then
  begin
    frmBarra1.btnCancel.Click;
    exit;
  end;
  tdCantidad.ReadOnly := False;

  if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
  begin
    lblPartida.Caption := 'ID Material';
    dbPartidas.Visible := True;
  end
  else
  begin
    lblPartida.Caption := 'ID Material';
    dbPartidas.Visible := False;
  end;

  if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
  begin
    Partidas.Active := False;
    Partidas.SQL.Clear;
    Partidas.SQL.Add('select distinct p.sNumeroActividad, a.iItemOrden, a.sWbs from anexo_prequisicion  p ' +
      'left join actividadesxanexo a ' +
      'on (a.sContrato = p.sContrato and a.sIdConvenio =:Convenio and a.sNumeroActividad = p.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
      'where p.sContrato =:Contrato and FIND_IN_SET(p.iFolioRequisicion,:Folio) order by a.iItemOrden ');
    Partidas.ParamByName('Contrato').AsString := global_contrato;
    Partidas.ParamByName('Convenio').AsString := global_convenio;
    Partidas.ParamByName('Folio').AsString := anexo_ocompras.FieldValues['sFolioRequisicion'];
    Partidas.Open;
  end
  else
  begin
    insumos.Active := False;
    insumos.SQL.Clear;
    insumos.SQL.Add('SELECT a.sIdInsumo, a.sIdAlmacen, a.sMedida, a.mDescripcion, a.dVentaDLL, a.dVentaMN, a.dCantidad, a.dNuevoPrecio, ');
    insumos.SQL.Add('SubStr(mDescripcion, 1, 255) as sDescripcion, "" as Requisicion , b.sDescripcion as Almacen, a.dExistencia ');
    insumos.SQL.Add('FROM insumos AS a ');
    insumos.SQL.Add('INNER JOIN almacenes AS b ON (a.sIdAlmacen = b.sIdAlmacen) ');
    insumos.SQL.Add('WHERE (:contrato=-1 or (:contrato<>-1 and a.sContrato = :contrato)) ' +
                    'and (:Principal=-1 or (:Principal<>-1 and b.lPrincipal=:Principal))');
    If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    begin
      insumos.ParamByName('Principal').AsInteger:=-1 ;
      insumos.ParamByName('Contrato').AsString := global_contrato;
    end
    else
    begin
      insumos.ParamByName('Principal').AsString:='Si';
       insumos.ParamByName('Contrato').AsInteger:=-1;
    end;
    insumos.Open;

    if insumos.RecordCount = 0 then
      messageDLG('No existen Materiales para el Almacen principal', mtInformation, [mbOk], 0);
  end;

  if (anexo_ocompras.RecordCount > 0) then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    frmBarra1.btnAddClick(Sender);
    tdCantidad.Value := 0;
  end;
  tDescuentoMat.Value := 0;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);

  Grid_Insumos.Enabled:=True;
  Crear_Form(PanelInsumos, 'Catalogo de Materiales', 430, 1010, []);
end;

procedure TfrmPedidos.btncmdFormaPagoClick(Sender: TObject);
begin
   if frmBarra2.btnPost.Enabled then
    begin
        Application.CreateForm(TfrmFormasPago, frmFormasPago);
        frmFormasPago.show;
    end;
end;

procedure TfrmPedidos.btnDeleteClick(Sender: TObject);
var
  SavePlace: TBookmark;
begin
  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    frmBarra1.btnCancel.Click;
    exit;
  end;
  if anexo_pocompras.RecordCount > 0 then
  begin
    with connection do
    begin
      try
        SavePlace := anexo_pocompras.GetBookmark;
        zCommand.Active := False;
        zCommand.SQL.Clear;
        zCommand.SQL.Add('Delete from anexo_ppedido where sContrato = :Contrato And ' +
          'iFolioPedido = :Folio and sIdInsumo =:Insumo And sNumeroActividad = :Actividad And iItem = :Item');
        zcommand.Params.ParamByName('Contrato').DataType := ftString;
        zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
        zcommand.Params.ParamByName('Folio').DataType := ftInteger;
        zcommand.Params.ParamByName('Folio').value := anexo_pocompras.FieldValues['iFolioPedido'];
        zcommand.Params.ParamByName('Insumo').DataType := ftString;
        zcommand.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
        zcommand.Params.ParamByName('Actividad').DataType := ftString;
        zcommand.Params.ParamByName('Actividad').value := anexo_pocompras.FieldValues['sNumeroActividad'];
        zcommand.Params.ParamByName('Item').DataType := ftInteger;
        zcommand.Params.ParamByName('Item').value := anexo_pocompras.FieldValues['iItem'];
        zcommand.ExecSQL;

        if dbRequisicion.Text <> '' then
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('Update anexo_prequisicion set sEstado = "PENDIENTE", iFolioPedido = 0 ' +
            'WHERE sContrato =:Contrato And FIND_IN_SET(iFolioRequisicion,:Folio) and sIdInsumo =:Insumo and sNumeroActividad =:Actividad');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['sFolioRequisicion'];
          Connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Insumo').value := anexo_pocompras.FieldValues['sIdInsumo'];
          Connection.zcommand.Params.ParamByName('Actividad').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Actividad').value := anexo_pocompras.FieldValues['sNumeroActividad'];
          Connection.zcommand.ExecSQL;

          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('Update anexo_requisicion set sEstado = "PENDIENTE" ' +
            'WHERE sContrato =:Contrato And FIND_IN_SET(sNumFolio,:Folio) ');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_ocompras.FieldValues['sFolioRequisicion'];
          Connection.zcommand.ExecSQL;

          try
            Insumos.Refresh;
          Except
          end;
          Requisiciones.Refresh;
        end;

        SavePlace := anexo_ocompras.GetBookmark;
        anexo_pocompras.Refresh;

        try
          anexo_pocompras.GotoBookmark(SavePlace);
        except
        else
          anexo_pocompras.FreeBookmark(SavePlace);
        end;
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Captura de Ordenes de Compra', 'Al eliminar registro', 0);
        end;
      end;
      GridPartidas.SetFocus
    end
  end

end;

procedure TfrmPedidos.btnEditClick(Sender: TObject);
begin
  if anexo_pocompras.FieldValues['sStatus'] = 'Entregado' then
  begin
    messageDLG('No se puede modificar el Material ya fue Entregado!', mtWarning, [mbOk], 0);
    exit;
  end;

  validaciones;
  if valida then
  begin
    frmBarra1.btnCancel.Click;
    exit;
  end;
  tdCantidad.ReadOnly := False;
  if anexo_ocompras.RecordCount > 0 then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    frmBarra1.btnEditClick(Sender);
    tdCantidad.ReadOnly := False;
    Grid_Insumos.Enabled:=False;
    Crear_Form(PanelInsumos, 'Catalogo de Materiales',430, 1010, []);
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmPedidos.ReporteCalcFields(DataSet: TDataSet);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select Sum(p.dCantidad) as dCantidad From anexo_ppedido p ' +
    'INNER JOIN anexo_ocompras a ON (a.sContrato = p.sContrato And a.iFolioPedido = p.iFolioPedido And a.dIdFecha <= :Fecha) ' +
    'Where p.sContrato = :Contrato And p.sNumeroActividad = :Actividad Group By p.sNumeroActividad ');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
  connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Actividad').Value := Reporte.FieldValues['sNumeroActividad'];
  connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.qryBusca.Params.ParamByName('Fecha').Value := anexo_ocompras.FieldValues['dIdFecha'];
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
   // ReportedAcumulado.Value := Connection.qryBusca.FieldValues['dCantidad'];
end;

procedure TfrmPedidos.Reportes1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmReportesAlmacen, frmReportesAlmacen);
  frmReportesAlmacen.show
end;



procedure TfrmPedidos.tsCondicionesEnter(Sender: TObject);
begin
  tsCondiciones.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsCondicionesExit(Sender: TObject);
begin
  tsCondiciones.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsCondicionesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsPrecios.SetFocus
end;

procedure TfrmPedidos.tsEmbarcaEnter(Sender: TObject);
begin
  tsEmbarca.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsEmbarcaExit(Sender: TObject);
begin
  tsEmbarca.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsEmbarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsEntrega.SetFocus
end;

procedure TfrmPedidos.tsentregaEnter(Sender: TObject);
begin
  tsentrega.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsentregaExit(Sender: TObject);
begin
  tsentrega.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsentregaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsVigencia.SetFocus
end;


procedure TfrmPedidos.tsFormaPagoChange(Sender: TObject);
begin
  cbbFormasPago.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsFormaPagoEnter(Sender: TObject);
begin
  cbbFormasPago.Style.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsFormaPagoExit(Sender: TObject);
begin
 cbbFormasPago.Style.Color := Global_Color_Salida;
end;

procedure TfrmPedidos.tsFormaPagoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsMoneda.SetFocus
end;

procedure TfrmPedidos.tsIdProveedorChange(Sender: TObject);
begin
  //tsVendedor.Text:= Proveedores.FieldByName('sVendedor').AsString;
  //tsMail.Text    := Proveedores.fieldByName('sEMail').AsString ;
   tsVendedor.Text          := global_Nombre ;
   tsMail.Text              := global_Usuariocorreo ;
end;

procedure TfrmPedidos.tsIdProveedorEnter(Sender: TObject);
begin
  tsIdProveedor.Color := Global_Color_Entrada;
end;

procedure TfrmPedidos.tsIdProveedorExit(Sender: TObject);
begin
   tsIdProveedor.Color := Global_Color_Salida;
   //tsVendedor.Text:= Proveedores.FieldByName('sVendedor').AsString;
  //tsMail.Text    := Proveedores.fieldByName('sEMail').AsString ;
   tsVendedor.Text          := global_Nombre ;
   tsMail.Text              := global_Usuariocorreo ;
end;

procedure TfrmPedidos.tsIdProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      cbbFrentes.SetFocus
end;

procedure TfrmPedidos.FormActivate(Sender: TObject);
begin
  Proveedores.Refresh;
end;


procedure TfrmPedidos.btnProveedoresClick(Sender: TObject);
begin
  global_frmActivo := 'frm_pedidos';
  Application.CreateForm(TfrmProveedores, frmProveedores);
  frmProveedores.show;
end;

procedure TfrmPedidos.Grid_EntradasCellClick(Column: TColumn);
begin
  if anexo_ocompras.RecordCount > 0 then
  begin
     llenado();
  end;
end;

procedure TfrmPedidos.dbg_OCVistaCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  llenado () ;
end;

procedure TfrmPedidos.dbg_OCVistaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 llenado() ;
end;

procedure TfrmPedidos.dbg_OCVistaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  llenado();
end;

procedure TfrmPedidos.spEdtIvaEnter(Sender: TObject);
begin
       spEdtIva.Color:=Global_Color_Entrada;
end;

procedure TfrmPedidos.spEdtIvaExit(Sender: TObject);
begin
spEdtIva.Color:=Global_Color_Salida;
end;

procedure TfrmPedidos.spEdtIvaKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   tsIdProveedor.SetFocus ;
end;

procedure TfrmPedidos.validaciones;
begin
     //Verificamos el estatus de la orden de compra..
  valida := False;
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select iFolioPedido from anexo_pedidos where sContrato =:Contrato and iFolioPedido =:Pedido and sStatus = "AUTORIZADO" ');
  connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zCommand.ParamByName('Pedido').AsString := anexo_ocompras.FieldValues['iFolioPedido'];
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
    messageDLG(' La Orden de Compra ' + anexo_ocompras.FieldValues['sOrdenCompra'] + ' se encuentra en estatus de Autorizado', mtInformation, [mbOk], 0);
    valida := True;
  end;

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select iFolioEntrada from almacen_entrada where sIdTipo="OC" and iFolioMovimiento=:Odc and sContrato=:Contrato');
  connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zCommand.ParamByName('Odc').AsString := anexo_ocompras.FieldValues['iFolioPedido'];
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
    messageDLG(' La Orden de Compra ' + anexo_ocompras.FieldValues['sOrdenCompra'] + ' se encuentra enlazada a una Entrada', mtInformation, [mbOk], 0);
    valida := True;
  end;
end;

procedure TfrmPedidos.validaPedido;
begin
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select iFolioPedido from anexo_ppedido where sContrato =:Contrato and iFolioPedido =:Folio ');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
  connection.QryBusca.ParamByName('Folio').AsInteger := iFolio;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    lValidaReq := True
  else
    lValidaReq := False;
end;

procedure TfrmPedidos.Seguimiento_Material(dParamActividad: string);
var
  x, y, num, i: integer;
  SumCantidad, SumTotal, SumExcedente: double;
  linea: string;
begin
  if dParamActividad <> '' then
    linea := ' and sNumeroActividad =:Actividad '
  else
    linea := '';

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select sContrato, sWbs, sNumeroActividad, mDescripcion as DescripcionAnexo, ' +
    'dVentaMN, dVentaDLL, dCantidadAnexo, sMedida as sMedidaAnexo  from actividadesxanexo ' +
    'where sContrato =:Contrato ' + linea + 'and sTipoActividad = "Actividad" and sIdConvenio =:Convenio order by iItemOrden ');
  connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
  if dParamActividad <> '' then
    connection.zCommand.ParamByName('Actividad').AsString := dParamActividad;
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
    rxSeguimiento_Mat.Active := True;
    rxSeguimiento_Mat.EmptyTable;
         //Inicualizacion de vector en 0...
    i := 1;

    while not connection.zCommand.Eof do
    begin
      SumCantidad := 0;
      SumTotal := 0;
      SumExcedente := 0;

      rxSeguimiento_Mat.Append;
      rxSeguimiento_Mat.FieldValues['sContrato'] := global_contrato;
      rxSeguimiento_Mat.FieldValues['Partida'] := connection.zCommand.FieldValues['sNumeroActividad'];
      rxSeguimiento_Mat.FieldValues['sNumeroActividad'] := connection.zCommand.FieldValues['sNumeroActividad'];
      rxSeguimiento_Mat.FieldValues['DescripcionAnexo'] := connection.zCommand.FieldValues['DescripcionAnexo'];
      rxSeguimiento_Mat.FieldValues['CantidadAnexo'] := connection.zCommand.FieldValues['dCantidadAnexo'];
      rxSeguimiento_Mat.FieldValues['MedidaAnexo'] := connection.zCommand.FieldValues['sMedidaAnexo'];
      rxSeguimiento_Mat.FieldValues['CostoMNAnexo'] := connection.zCommand.FieldValues['dVentaMN'];
      rxSeguimiento_Mat.FieldValues['CostoDLLAnexo'] := connection.zCommand.FieldValues['dVentaDLL'];
      rxSeguimiento_Mat.FieldValues['Tipo'] := 'Anexo';
      rxSeguimiento_Mat.Post; //<<<

              //R E Q U I S I C I O N E S .... <<ivan>>
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, i.mDescripcion as Descripcion, ' +
        'i.sMedida, ap.iFolioRequisicion, ap.iItem, SUM(ap.dCantidad) as dCantidadReq  from recursosanexosnuevos ra ' +
        'left join insumos i ' +
        'on (i.sContrato = ra.sContrato and i.sIdInsumo = ra.sIdInsumo) ' +
        'left join anexo_prequisicion ap ' +
        'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo and ap.iFolioPedido = 0 ) ' +
        'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo ');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.Open;


      if connection.QryBusca.RecordCount > 0 then
      begin
        num := 0;
        while not connection.QryBusca.Eof do
        begin
          if num = 0 then
            rxSeguimiento_Mat.Edit
          else
            rxSeguimiento_Mat.Append;
          rxSeguimiento_Mat.FieldValues['Tipo'] := 'Requisicion';
          rxSeguimiento_Mat.FieldValues['Id'] := connection.QryBusca.FieldValues['sIdInsumo'];
          rxSeguimiento_Mat.FieldValues['Descripcion'] := connection.QryBusca.FieldValues['Descripcion'];
          rxSeguimiento_Mat.FieldValues['Unidad'] := connection.QryBusca.FieldValues['sMedida'];
          rxSeguimiento_Mat.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
          rxSeguimiento_Mat.FieldValues['CostoMN'] := connection.QryBusca.FieldValues['dCostoMN'];
          rxSeguimiento_Mat.FieldValues['CostoDLL'] := connection.QryBusca.FieldValues['dCostoDLL'];
          rxSeguimiento_Mat.FieldValues['FolioReq'] := connection.QryBusca.FieldValues['iFolioRequisicion'];
          rxSeguimiento_Mat.FieldValues['ItemReq'] := connection.QryBusca.FieldValues['iItem'];
          rxSeguimiento_Mat.FieldValues['dCantidadReq'] := connection.QryBusca.FieldValues['dCantidadReq'];
          rxSeguimiento_Mat.FieldValues['dRestanteReq'] := 0;
          rxSeguimiento_Mat.FieldValues['dExcedenteReq'] := 0;
          rxSeguimiento_Mat.FieldValues['dPorcentajeReq'] := 100;

          if connection.QryBusca.FieldValues['dCantidadReq'] <= connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dRestanteReq'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadReq'];

          if connection.QryBusca.FieldValues['dCantidadReq'] > connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dExcedenteReq'] := connection.QryBusca.FieldValues['dCantidadReq'] - connection.QryBusca.FieldValues['dCantidad'];

          if connection.QryBusca.FieldValues['dCantidadReq'] < connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dPorcentajeReq'] := (connection.QryBusca.FieldValues['dCantidadReq'] / connection.QryBusca.FieldValues['dCantidad']) * 100;

          rxSeguimiento_Mat.FieldValues['sNumeroActividad'] := connection.zCommand.FieldValues['sNumeroActividad'];

          if not (rxSeguimiento_Mat.FieldValues['Cantidad'] = null) then
            SumCantidad := SumCantidad + rxSeguimiento_Mat.FieldValues['Cantidad'];

          if not (rxSeguimiento_Mat.FieldValues['dCantidadReq'] = null) then
            SumTotal := SumTotal + rxSeguimiento_Mat.FieldValues['dCantidadReq'];

          if not (rxSeguimiento_Mat.FieldValues['dExcedenteReq'] = null) then
            SumExcedente := SumExcedente + rxSeguimiento_Mat.FieldValues['dExcedenteReq'];

          rxSeguimiento_Mat.Post;
          connection.QryBusca.Next;
          num := 1;
        end;
      end;
      num := connection.QryBusca.RecordCount - 1;
      for x := 1 to num do
        rxSeguimiento_Mat.Prior;

      for x := 0 to num do
      begin
        rxSeguimiento_Mat.Edit;
        rxSeguimiento_Mat.FieldValues['dPorcentajeReq_T'] := ((SumTotal - SumExcedente) / SumCantidad) * 100;
        rxSeguimiento_Mat.Post;
        rxSeguimiento_Mat.Next;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;

              //O R D E N E S  D E   C O M P R A ....
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ap.iFolioPedido, ap.iItem, SUM(ap.dCantidad) as dCantidadOC  from recursosanexosnuevos ra ' +
        'left join anexo_ppedido ap ' +
        'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo) ' +
        'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.Open;

      SumTotal := 0;
      SumExcedente := 0;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          rxSeguimiento_Mat.Edit;
          rxSeguimiento_Mat.FieldValues['dCantidadOC'] := connection.QryBusca.FieldValues['dCantidadOC'];
          rxSeguimiento_Mat.FieldValues['dRestanteOC'] := 0;
          rxSeguimiento_Mat.FieldValues['dExcedenteOC'] := 0;
          rxSeguimiento_Mat.FieldValues['dPorcentajeOC'] := 100;

          if connection.QryBusca.FieldValues['dCantidadOC'] <= connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dRestanteOC'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadOC'];

          if connection.QryBusca.FieldValues['dCantidadOC'] > connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dExcedenteOC'] := connection.QryBusca.FieldValues['dCantidadOC'] - connection.QryBusca.FieldValues['dCantidad'];

          if not (rxSeguimiento_Mat.FieldValues['dCantidadOC'] = null) then
            SumTotal := SumTotal + rxSeguimiento_Mat.FieldValues['dCantidadOC'];

          if not (rxSeguimiento_Mat.FieldValues['dExcedenteOC'] = null) then
            SumExcedente := SumExcedente + rxSeguimiento_Mat.FieldValues['dExcedenteOC'];

          rxSeguimiento_Mat.Post;
          rxSeguimiento_Mat.Next;
          connection.QryBusca.Next;
        end;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;

      for x := 0 to num do
      begin
        rxSeguimiento_Mat.Edit;
        rxSeguimiento_Mat.FieldValues['dPorcentajeOC_T'] := ((SumTotal - SumExcedente) / SumCantidad) * 100;
        rxSeguimiento_Mat.Post;
        rxSeguimiento_Mat.Next;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;

               // E N T R A D A  D E  M A T E R I A L E S ....
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ap.iFolioPedido, ap.iItem, SUM(ap.dCantidad) as dCantidadIn  from recursosanexosnuevos ra ' +
        'left join anexo_ppedido  ap ' +
        'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo) ' +
        'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          rxSeguimiento_Mat.Edit;
          rxSeguimiento_Mat.FieldValues['dCantidadIn'] := connection.QryBusca.FieldValues['dCantidadIn'];
          rxSeguimiento_Mat.FieldValues['dExcedenteIn'] := 0;

          if connection.QryBusca.FieldValues['dCantidadIn'] <= connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dRestanteIn'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadIn'];

          if connection.QryBusca.FieldValues['dCantidadIn'] > connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dExcedenteIn'] := connection.QryBusca.FieldValues['dCantidadIn'] - connection.QryBusca.FieldValues['dCantidad'];

          rxSeguimiento_Mat.Post;
          rxSeguimiento_Mat.Next;
          connection.QryBusca.Next;
        end;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;
               // S A L I D A  D E  M A T E R I A L E S ....
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ap.iFolioSalida, SUM(ap.dCantidad) as dCantidadOut  from recursosanexosnuevos ra ' +
        'left join bitacoradesalida  ap ' +
        'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo) ' +
        'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          rxSeguimiento_Mat.Edit;
          rxSeguimiento_Mat.FieldValues['dCantidadOut'] := connection.QryBusca.FieldValues['dCantidadOut'];
          rxSeguimiento_Mat.FieldValues['dExcedenteOut'] := 0;

          if connection.QryBusca.FieldValues['dCantidadOut'] <= connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dRestanteOut'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadOut'];

          if connection.QryBusca.FieldValues['dCantidadOut'] > connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dExcedenteOut'] := connection.QryBusca.FieldValues['dCantidadOut'] - connection.QryBusca.FieldValues['dCantidad'];

          rxSeguimiento_Mat.Post;
          rxSeguimiento_Mat.Next;
          connection.QryBusca.Next;
        end;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;
              // R E P O R T E S   D I A R I O S ....
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select ra.dCantidad, SUM(bmp.dCantidad) as dCantidadRD, COUNT(rd.sNumeroReporte) as total  from recursosanexosnuevos ra ' +
        'inner join bitacoradeactividades ba ' +
        'on (ba.sContrato = ra.sContrato  and ba.sWbs = ra.sWbs and ba.sNumeroActividad = ra.sNumeroActividad) ' +
        'left join bitacorademateriales  bmp ' +
        'on(bmp.sContrato = ra.sContrato and bmp.dIdFecha = ba.dIdFecha and bmp.iIdDiario = ba.iIdDiario and bmp.sIdMaterial = ra.sIdInsumo) ' +
        'inner join reportediario rd ' +
        'on (rd.sContrato = ba.sContrato and rd.dIdFecha = ba.dIdFecha and rd.sIdTurno = ba.sIdTurno and rd.sNumeroOrden = ba.sNumeroOrden ) ' +
        'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.Open;

      SumTotal := 0;
      SumExcedente := 0;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          rxSeguimiento_Mat.Edit;
          rxSeguimiento_Mat.FieldValues['dCantidadRD'] := connection.QryBusca.FieldValues['dCantidadRD'];
          rxSeguimiento_Mat.FieldValues['dRestanteRD'] := 0;
          rxSeguimiento_Mat.FieldValues['dExcedenteRD'] := 0;
          rxSeguimiento_Mat.FieldValues['dPorcentajeRD'] := 100;

          if connection.QryBusca.FieldValues['dCantidadRD'] <= connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dRestanteRD'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadRD'];

          if connection.QryBusca.FieldValues['dCantidadRD'] > connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dExcedenteRD'] := connection.QryBusca.FieldValues['dCantidadRD'] - connection.QryBusca.FieldValues['dCantidad'];

          if connection.QryBusca.FieldValues['dCantidadRD'] < connection.QryBusca.FieldValues['dCantidad'] then
            rxSeguimiento_Mat.FieldValues['dPorcentajeRD'] := (connection.QryBusca.FieldValues['dCantidadRD'] / connection.QryBusca.FieldValues['dCantidad']) * 100;

          if not (rxSeguimiento_Mat.FieldValues['dCantidadRD'] = null) then
            SumTotal := SumTotal + rxSeguimiento_Mat.FieldValues['dCantidadRD'];

          if not (rxSeguimiento_Mat.FieldValues['dExcedenteRD'] = null) then
            SumExcedente := SumExcedente + rxSeguimiento_Mat.FieldValues['dExcedenteRD'];

          rxSeguimiento_Mat.Post;
          rxSeguimiento_Mat.Next;
          connection.QryBusca.Next;
        end;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;

      for x := 0 to num do
      begin
        rxSeguimiento_Mat.Edit;
        rxSeguimiento_Mat.FieldValues['dPorcentajeRD_T'] := ((SumTotal - SumExcedente) / SumCantidad) * 100;
        rxSeguimiento_Mat.Post;
        rxSeguimiento_Mat.Next;
      end;

      for x := 1 to num do
        rxSeguimiento_Mat.Prior;
              // G E N E R A D O R E S  D E  O B R A ....
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('Select e.sContrato, aa.sNumeroActividad, sum(e.dCantidad) as dCantidad, ' +
        'e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador ' +
        'from actividadesxanexo aa ' +
        'inner join  estimacionxpartida e ' +
        'on (e.sContrato = aa.sContrato and e.sWbs = aa.sWbs and e.sNumeroActividad = aa.sNumeroActividad) ' +
        'inner join estimaciones e2 ' +
        'on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
        'inner join estimacionperiodo e3 ' +
        'on (e2.sContrato = e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
        'where aa.sContrato =:Contrato and aa.sNumeroActividad =:Actividad and aa.sWbs =:Wbs and sIdConvenio =:Convenio ' +
        'group by aa.sNumeroActividad ');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
      connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
      connection.QryBusca.ParamByName('Wbs').AsString := connection.zCommand.FieldValues['sWbs'];
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          rxSeguimiento_Mat.Edit;
          rxSeguimiento_Mat.FieldValues['dCantidadGen'] := connection.QryBusca.FieldValues['dCantidad'];
          rxSeguimiento_Mat.FieldValues['iNumeroEstimacion'] := connection.QryBusca.FieldValues['iNumeroEstimacion'];
          rxSeguimiento_Mat.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'];
          rxSeguimiento_Mat.FieldValues['sNumeroGenerador'] := connection.QryBusca.FieldValues['sNumeroGenerador'];
          rxSeguimiento_Mat.FieldValues['dExcedenteGen'] := 0;

          rxSeguimiento_Mat.Post;
          rxSeguimiento_Mat.Next;
          connection.QryBusca.Next;
        end;
      end;
      connection.zCommand.Next;
      i := i + 1;
    end;
  end;
end;

procedure TfrmPedidos.tipocambio;
begin
  if tsMoneda.Text <> '' then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from tiposdecambio where sIdMoneda =:Moneda and dIdFecha <=:Fecha order by dIdFecha DESC ');
    connection.zCommand.ParamByName('Moneda').AsString := moneda.FieldValues['sIdMoneda'];
    connection.zCommand.ParamByName('Fecha').AsDate := tdIdFecha.Date;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
      tsTipoCambio.Value := connection.zCommand.FieldValues['dCambio']
    else
      tsTipoCambio.Value := 0;
  end;
end;


 procedure TfrmPedidos.llenado;
 begin
    if anexo_ocompras.RecordCount > 0 then
     begin
        iFolio                 := anexo_ocompras.FieldValues['iFoliopedido'];
        tiFolio.Text           := anexo_ocompras.FieldValues['sOrdenCompra'];
        tdIdFecha.Date         := anexo_ocompras.FieldValues['dIdFecha'];
        try
          tdFechaSuministro.Date := anexo_ocompras.FieldByName('dFechaEntrega').AsDateTime;
        Except
        end;
        tsIdProveedor.KeyValue := anexo_ocompras.FieldValues['sIdProveedor'];
        cbbFrentes.EditValue   := anexo_ocompras.FieldValues['sNumeroOrden'];
        tmComentarios.Text     := anexo_ocompras.FieldValues['mComentarios'];
        spEdtIva.Value         := anexo_ocompras.FieldByName('diva').AsFloat;

        tsEmbarca.Text         := anexo_ocompras.FieldValues['sLugarEntrega'];
        tsEntrega.Text         := anexo_ocompras.FieldValues['sEntrega'];
        tsCondiciones.Text     := anexo_ocompras.FieldValues['sCondiciones'];
        tsPrecios.Text         := anexo_ocompras.FieldValues['sPrecios'];
        tsVigencia.Text        := anexo_ocompras.FieldValues['sVigencia'];
        tsMoneda.KeyValue      := anexo_ocompras.FieldValues['sMoneda'];
        tsVendedor.Text        := anexo_ocompras.FieldValues['sVendedor'];
        tsMail.Text            := anexo_ocompras.FieldValues['sMail'];

        cbbFormasPago.EditValue := anexo_ocompras.FieldValues['sFormaPago'];
        if dbRequisicion.Text <>'' then
           chkRequisicion.Checked := True ;

        anexo_pocompras.Active := False;
        anexo_pocompras.SQL.Clear;
        if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
          anexo_pocompras.SQL.Add(CadenaOrden)
        else
          anexo_pocompras.SQL.Add(CadenaOrden2);
          anexo_pocompras.Params.ParamByName('Contrato').DataType := ftString;
          anexo_pocompras.Params.ParamByName('Contrato').Value := global_contrato;
        if anexo_ocompras.FieldValues['sFolioRequisicion'] <> '' then
        begin
          anexo_pocompras.Params.ParamByName('Convenio').DataType := ftString;
          anexo_pocompras.Params.ParamByName('Convenio').Value := global_convenio;
        end;
        anexo_pocompras.Params.ParamByName('Folio').DataType := ftInteger;
        anexo_pocompras.Params.ParamByName('Folio').Value := anexo_ocompras.FieldValues['iFolioPedido'];
        anexo_pocompras.Open;

       dbRequisicion.Text     := anexo_ocompras.FieldValues['sFolioRequisicion'];
       tsDirecEnvio.text     := anexo_ocompras.FieldValues['sdireccionEnviar'];
       tsCiudadEnvio.Text    := anexo_ocompras.FieldValues['sCiudadEnviar'];
       tsTelefono.text       := anexo_ocompras.FieldValues['sTelefonoEnviar'];
       lblPrecioVenta.Caption := 'Precio '+Moneda.FieldByName('sIdMoneda').AsString;
 end;

 end;


 procedure TfrmPedidos.frxEntradaGetValue(const VarName: string;
  var Value: Variant);
var
  sCadena: string;
  iva: Currency;
  dAcumuladoOrden, dAcumuladoGral, dMonto,
    iValorNumerico, tNumerico: LongInt;
  Resultado: Real;
  dIVA: double;

  zConsulta: TZQuery;
  sSQL: string;
begin

  if CompareText(VarName, 'FechaInicio') = 0 then
    Value := FechaInicio.Date;
  if CompareText(VarName, 'FechaFinal') = 0 then
    Value := FechaFinal.Date;

  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;
  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisor;
  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisor;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;

  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select dIVA,sDescripcionCorta, sDescripcion, sSigla from tiposdemoneda where sIdMoneda =:Moneda');
    connection.zCommand.ParamByName('Moneda').AsString := moneda.FieldValues['sIdMoneda'];
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
      dIVA := (anexo_ocompras.FieldValues['dIVA'] / 100)
    else
      dIVA := 1;

    iVa := (Montototal * dIVA);
    MontoTotal := roundto(Montototal + iva, -2) ;
    iValorNumerico := Trunc(Montototal);
    sCadena := xIntToLletres(iValorNumerico);
    Resultado := roundto(MontoTotal - iValorNumerico, -2);
    Resultado := Resultado * 100;
    iValorNumerico := Trunc(Resultado);
    if anexo_ocompras.FieldValues['dCambio'] > 0 then
      Tipo_Moneda:='MONEDA NACIONAL'
    else
      Tipo_Moneda:=connection.zCommand.FieldByName('sDescripcion').AsString;

    if iValorNumerico<10 then
      sCadena := sCadena+ ' ' + connection.zCommand.FieldValues['sDescripcioncorta'] + ', 0' + IntToStr(iValorNumerico) + '/100 ' + connection.zCommand.FieldByName('sSigla').AsString
    else
      sCadena := sCadena +  ' ' + connection.zCommand.FieldValues['sDescripcioncorta'] + ', ' + IntToStr(iValorNumerico) + '/100 ' + connection.zCommand.FieldByName('sSigla').AsString;
    Value := sCadena
  end;

  if CompareText(VarName, 'TipoMoneda') = 0 then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select dIVA,sDescripcionCorta, sDescripcion, sSigla from tiposdemoneda where sIdMoneda =:Moneda');
    connection.zCommand.ParamByName('Moneda').AsString := moneda.FieldValues['sIdMoneda'];
    connection.zCommand.Open;
    if anexo_ocompras.FieldValues['dCambio'] > 0 then
      Tipo_Moneda:='MONEDA NACIONAL'
    else
      Tipo_Moneda:=connection.zCommand.FieldByName('sDescripcion').AsString;
    Value:=Tipo_Moneda;
  end;

  sSQL := 'SELECT * FROM firmas WHERE sContrato = :contrato and sNumeroOrden =:Orden AND dIdFecha <= :fecha ORDER BY dIdFecha DESC';
  zConsulta := TZQuery.Create(self);
  zConsulta.Connection := connection.zConnection;
  zConsulta.Active := False;
  zConsulta.SQL.Clear;
  zConsulta.SQL.Add(sSQL);
  zConsulta.Params.ParamByName('contrato').DataType := ftString;
  zConsulta.Params.ParamByName('contrato').Value    := global_contrato;
  zConsulta.Params.ParamByName('orden').DataType    := ftString;
  zConsulta.Params.ParamByName('orden').Value       := cbbFrentes.Text ;
  zConsulta.Params.ParamByName('fecha').DataType    := ftDate;
  zConsulta.Params.ParamByName('fecha').Value       := anexo_ocompras.FieldValues['dIdFecha'];
  zConsulta.Open;
  if zConsulta.RecordCount > 0 then begin
    if CompareText(VarName, 'REALIZO_PUESTO') = 0 then
      Value := zConsulta.FieldValues['sPuesto14'];
    if CompareText(VarName, 'REVISO_PUESTO') = 0 then
      Value := zConsulta.FieldValues['sPuesto15'];
    if CompareText(VarName, 'AUTORIZO_PUESTO') = 0 then
      Value := zConsulta.FieldValues['sPuesto16'];
    if CompareText(VarName, 'REALIZO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante14'];

    if CompareText(VarName, 'FIRMA1D') = 0 then
      Value := zConsulta.FieldValues['sFirmante14'];

    if CompareText(VarName, 'REVISO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante15'];
    if CompareText(VarName, 'AUTORIZO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante16'];
  end
  else
  begin
    if CompareText(VarName, 'REALIZO_PUESTO') = 0 then
      Value := '';
    if CompareText(VarName, 'REVISO_PUESTO') = 0 then
      Value := '';
    if CompareText(VarName, 'AUTORIZO_PUESTO') = 0 then
      Value := '';
    if CompareText(VarName, 'REALIZO_FIRMA') = 0 then
      Value := '';
    if CompareText(VarName, 'REVISO_FIRMA') = 0 then
      Value := '';
    if CompareText(VarName, 'AUTORIZO_FIRMA') = 0 then
      Value := '';
  end;
  zConsulta.free;
end;

procedure TfrmPedidos.SeguimientoMaterialxPartidaDetalle1Click(Sender: TObject);
var
  x, y, num, i, contador: integer;
  SumCantidad, SumTotal, SumExcedente, SumRestante: double;
  Cadena: string;
begin
  try
    if anexo_pocompras.RecordCount = 0 then
    begin
      messageDLG('No se encontro ningun registro para imprimir Reporte', mtInformation, [mbOK], 0);
      exit;
    end;
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sContrato, sWbs, sNumeroActividad, mDescripcion as DescripcionAnexo, ' +
      'dVentaMN, dVentaDLL, dCantidadAnexo, sMedida as sMedidaAnexo  from actividadesxanexo ' +
      'where sContrato =:Contrato and sNumeroActividad =:Actividad and sTipoActividad = "Actividad" and sIdConvenio =:Convenio order by iItemOrden ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
    connection.zCommand.ParamByName('Actividad').AsString := anexo_pocompras.FieldValues['sNumeroActividad'];
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      rxSeguimiento_Mat.Active := True;
      rxSeguimiento_Mat.EmptyTable;
      while not connection.zCommand.Eof do
      begin
        rxSeguimiento_Mat.Append;
        rxSeguimiento_Mat.FieldValues['sContrato'] := global_contrato;
        rxSeguimiento_Mat.FieldValues['Partida'] := connection.zCommand.FieldValues['sNumeroActividad'];
        rxSeguimiento_Mat.FieldValues['sNumeroActividad'] := connection.zCommand.FieldValues['sNumeroActividad'];
        rxSeguimiento_Mat.FieldValues['DescripcionAnexo'] := connection.zCommand.FieldValues['DescripcionAnexo'];
        rxSeguimiento_Mat.FieldValues['CantidadAnexo'] := connection.zCommand.FieldValues['dCantidadAnexo'];
        rxSeguimiento_Mat.FieldValues['MedidaAnexo'] := connection.zCommand.FieldValues['sMedidaAnexo'];
        rxSeguimiento_Mat.FieldValues['CostoMNAnexo'] := connection.zCommand.FieldValues['dVentaMN'];
        rxSeguimiento_Mat.FieldValues['CostoDLLAnexo'] := connection.zCommand.FieldValues['dVentaDLL'];
        rxSeguimiento_Mat.FieldValues['Tipo'] := 'Anexo';
        rxSeguimiento_Mat.Post;

              //R E Q U I S I C I O N E S .... <<ivan>>
        rxSeguimiento_Mat1.Active := True;
        rxSeguimiento_Mat1.EmptyTable;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, i.mDescripcion as Descripcion, ' +
          'i.sMedida, ap.iFolioRequisicion, ap.iItem, SUM(ap.dCantidad) as dCantidadReq  from recursosanexosnuevos ra ' +
          'left join insumos i ' +
          'on (i.sContrato = ra.sContrato and i.sIdInsumo = ra.sIdInsumo) ' +
          'left join anexo_prequisicion ap ' +
          'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo and ap.iFolioPedido = 0 ) ' +
          'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo, ap.iFolioRequisicion, ap.iItem order by ra.sIdInsumo, ap.iFolioRequisicion, ap.iItem ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          i := 1;
          SumTotal := 0;
          SumExcedente := 0;
          SumRestante := 0;
          contador := connection.QryBusca.RecordCount;
          cadena := connection.QryBusca.FieldValues['sIdInsumo'];
          while not connection.QryBusca.Eof do
          begin
            rxSeguimiento_Mat1.Append;
            rxSeguimiento_Mat1.FieldValues['Id'] := connection.QryBusca.FieldValues['sIdInsumo'];
            rxSeguimiento_Mat1.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
            rxSeguimiento_Mat1.FieldValues['Unidad'] := connection.QryBusca.FieldValues['sMedida'];
            rxSeguimiento_Mat1.FieldValues['FolioReq'] := connection.QryBusca.FieldValues['iFolioRequisicion'];
            rxSeguimiento_Mat1.FieldValues['ItemReq'] := connection.QryBusca.FieldValues['iItem'];
            rxSeguimiento_Mat1.FieldValues['dCantidadReq'] := connection.QryBusca.FieldValues['dCantidadReq'];
            rxSeguimiento_Mat1.FieldValues['dRestanteReq'] := 0;
            rxSeguimiento_Mat1.FieldValues['dExcedenteReq'] := 0;
            rxSeguimiento_Mat1.FieldValues['dPorcentajeReq'] := 100;

            if connection.QryBusca.FieldValues['dCantidadReq'] <= connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat1.FieldValues['dRestanteReq'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadReq'];

            if connection.QryBusca.FieldValues['dCantidadReq'] > connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat1.FieldValues['dExcedenteReq'] := connection.QryBusca.FieldValues['dCantidadReq'] - connection.QryBusca.FieldValues['dCantidad'];

            if connection.QryBusca.FieldValues['dCantidadReq'] < connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat1.FieldValues['dPorcentajeReq'] := (connection.QryBusca.FieldValues['dCantidadReq'] / connection.QryBusca.FieldValues['dCantidad']) * 100;

            if not (rxSeguimiento_Mat1.FieldValues['dCantidadReq'] = null) then
              SumTotal := SumTotal + rxSeguimiento_Mat1.FieldValues['dCantidadReq'];

            if not (rxSeguimiento_Mat1.FieldValues['dExcedenteReq'] = null) then
              SumExcedente := SumExcedente + rxSeguimiento_Mat1.FieldValues['dExcedenteReq'];

            if not (rxSeguimiento_Mat1.FieldValues['dRestanteReq'] = null) then
              SumRestante := SumRestante + rxSeguimiento_Mat1.FieldValues['dRestanteReq'];

            rxSeguimiento_Mat1.Post;
            connection.QryBusca.Next;
            i := i + 1;

            if (Cadena <> connection.QryBusca.FieldValues['sIdInsumo']) or (contador = 1) then
            begin
              for x := 1 to i - 1 do
                rxSeguimiento_Mat1.Prior;

              for x := 1 to i - 1 do
              begin
                rxSeguimiento_Mat1.Edit;
                rxSeguimiento_Mat1.FieldValues['dCantidadReq_T'] := SumTotal;
                if SumTotal <= rxSeguimiento_Mat1.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat1.FieldValues['dRestanteReq_T'] := rxSeguimiento_Mat1.FieldValues['Cantidad'] - SumTotal
                else
                  rxSeguimiento_Mat1.FieldValues['dRestanteReq_T'] := 0;

                if SumTotal > rxSeguimiento_Mat1.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat1.FieldValues['dExcedenteReq_T'] := SumTotal - rxSeguimiento_Mat1.FieldValues['Cantidad']
                else
                  rxSeguimiento_Mat1.FieldValues['dExcedenteReq_T'] := 0;

                if SumTotal < rxSeguimiento_Mat1.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat1.FieldValues['dPorcentajeReq_T'] := ((SumTotal - SumExcedente) / rxSeguimiento_Mat1.FieldValues['Cantidad']) * 100
                else
                  rxSeguimiento_Mat1.FieldValues['dPorcentajeReq_T'] := 100;
                rxSeguimiento_Mat1.Post;
                rxSeguimiento_Mat1.Next;
              end;
              SumTotal := 0;
              SumExcedente := 0;
              SumRestante := 0;
              i := 0;
              Cadena := connection.QryBusca.FieldValues['sIdInsumo'];
            end;
            contador := contador - 1;
          end;
        end;

              //O R D E N E S  D E   C O M P R A ....
        rxSeguimiento_Mat2.Active := True;
        rxSeguimiento_Mat2.EmptyTable;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ap.iFolioPedido, ap.iItem, SUM(ap.dCantidad) as dCantidadOC  from recursosanexosnuevos ra ' +
          'left join anexo_ppedido ap ' +
          'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo) ' +
          'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo, ap.iFolioPedido, ap.iItem order by ra.sIdInsumo, ap.iFolioPedido, ap.iItem');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          i := 1;
          SumTotal := 0;
          SumExcedente := 0;
          SumRestante := 0;
          contador := connection.QryBusca.RecordCount;
          cadena := connection.QryBusca.FieldValues['sIdInsumo'];
          while not connection.QryBusca.Eof do
          begin
            rxSeguimiento_Mat2.Append;
            rxSeguimiento_Mat2.FieldValues['Id'] := connection.QryBusca.FieldValues['sIdInsumo'];
            rxSeguimiento_Mat2.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
            rxSeguimiento_Mat2.FieldValues['FolioOC'] := connection.QryBusca.FieldValues['iFolioPedido'];
            rxSeguimiento_Mat2.FieldValues['ItemOC'] := connection.QryBusca.FieldValues['iItem'];
            rxSeguimiento_Mat2.FieldValues['dCantidadOC'] := connection.QryBusca.FieldValues['dCantidadOC'];
            rxSeguimiento_Mat2.FieldValues['dRestanteOC'] := 0;
            rxSeguimiento_Mat2.FieldValues['dExcedenteOC'] := 0;
            rxSeguimiento_Mat2.FieldValues['dPorcentajeOC'] := 100;

            if connection.QryBusca.FieldValues['dCantidadOC'] <= connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat2.FieldValues['dRestanteOC'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadOC'];

            if connection.QryBusca.FieldValues['dCantidadOC'] > connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat2.FieldValues['dExcedenteOC'] := connection.QryBusca.FieldValues['dCantidadOC'] - connection.QryBusca.FieldValues['dCantidad'];

            if not (rxSeguimiento_Mat2.FieldValues['dCantidadOC'] = null) then
              SumTotal := SumTotal + rxSeguimiento_Mat2.FieldValues['dCantidadOC'];

            if not (rxSeguimiento_Mat2.FieldValues['dExcedenteOC'] = null) then
              SumExcedente := SumExcedente + rxSeguimiento_Mat2.FieldValues['dExcedenteOC'];

            if not (rxSeguimiento_Mat2.FieldValues['dRestanteOC'] = null) then
              SumRestante := SumRestante + rxSeguimiento_Mat2.FieldValues['dRestanteOC'];

            rxSeguimiento_Mat2.Post;
            connection.QryBusca.Next;

            i := i + 1;

            if (Cadena <> connection.QryBusca.FieldValues['sIdInsumo']) or (contador = 1) then
            begin
              for x := 1 to i - 1 do
                rxSeguimiento_Mat2.Prior;

              for x := 1 to i - 1 do
              begin
                rxSeguimiento_Mat2.Edit;
                rxSeguimiento_Mat2.FieldValues['dCantidadOC_T'] := SumTotal;
                if SumTotal <= rxSeguimiento_Mat2.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat2.FieldValues['dRestanteOC_T'] := rxSeguimiento_Mat2.FieldValues['Cantidad'] - SumTotal
                else
                  rxSeguimiento_Mat2.FieldValues['dRestanteOC_T'] := 0;

                if SumTotal > rxSeguimiento_Mat2.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat2.FieldValues['dExcedenteOC_T'] := SumTotal - rxSeguimiento_Mat2.FieldValues['Cantidad']
                else
                  rxSeguimiento_Mat2.FieldValues['dExcedenteOC_T'] := 0;

                if SumTotal < rxSeguimiento_Mat2.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat2.FieldValues['dPorcentajeOC_T'] := ((SumTotal - SumExcedente) / rxSeguimiento_Mat2.FieldValues['Cantidad']) * 100
                else
                  rxSeguimiento_Mat2.FieldValues['dPorcentajeOC_T'] := 100;
                rxSeguimiento_Mat2.Post;
                rxSeguimiento_Mat2.Next;
              end;
              SumTotal := 0;
              SumExcedente := 0;
              SumRestante := 0;
              i := 0;
              Cadena := connection.QryBusca.FieldValues['sIdInsumo'];
            end;
            contador := contador - 1;
          end;
        end;

              // E N T R A D A  D E  M A T E R I A L E S ....
        rxSeguimiento_Mat3.Active := True;
        rxSeguimiento_Mat3.EmptyTable;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ap.iFolioPedido, ap.iItem, SUM(ap.dCantidad) as dCantidadIn  from recursosanexosnuevos ra ' +
          'left join bitacoradeentrada  ap ' +
          'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo) ' +
          'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo, ap.iFolioPedido, ap.iItem order by ra.sIdInsumo, ap.iFolioPedido, ap.iItem');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          i := 1;
          SumTotal := 0;
          SumExcedente := 0;
          contador := connection.QryBusca.RecordCount;
          cadena := connection.QryBusca.FieldValues['sIdInsumo'];
          while not connection.QryBusca.Eof do
          begin
            rxSeguimiento_Mat3.Append;
            rxSeguimiento_Mat3.FieldValues['Id'] := connection.QryBusca.FieldValues['sIdInsumo'];
            rxSeguimiento_Mat3.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
            rxSeguimiento_Mat3.FieldValues['FolioIn'] := connection.QryBusca.FieldValues['iFolioPedido'];
            rxSeguimiento_Mat3.FieldValues['ItemIn'] := connection.QryBusca.FieldValues['iItem'];
            rxSeguimiento_Mat3.FieldValues['dCantidadIn'] := connection.QryBusca.FieldValues['dCantidadIn'];
            rxSeguimiento_Mat3.FieldValues['dExcedenteIn'] := 0;

            if connection.QryBusca.FieldValues['dCantidadIn'] <= connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat3.FieldValues['dRestanteIn'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadIn'];

            if connection.QryBusca.FieldValues['dCantidadIn'] > connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat3.FieldValues['dExcedenteIn'] := connection.QryBusca.FieldValues['dCantidadIn'] - connection.QryBusca.FieldValues['dCantidad'];

            if not (rxSeguimiento_Mat3.FieldValues['dCantidadIn'] = null) then
              SumTotal := SumTotal + rxSeguimiento_Mat3.FieldValues['dCantidadIn'];

            if not (rxSeguimiento_Mat3.FieldValues['dExcedenteIn'] = null) then
              SumExcedente := SumExcedente + rxSeguimiento_Mat3.FieldValues['dExcedenteIn'];

            rxSeguimiento_Mat3.Post;
            connection.QryBusca.Next;

            i := i + 1;

            if (Cadena <> connection.QryBusca.FieldValues['sIdInsumo']) or (contador = 1) then
            begin
              for x := 1 to i - 1 do
                rxSeguimiento_Mat3.Prior;

              for x := 1 to i - 1 do
              begin
                rxSeguimiento_Mat3.Edit;
                rxSeguimiento_Mat3.FieldValues['dCantidadIn_T'] := SumTotal;

                if SumTotal > rxSeguimiento_Mat3.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat3.FieldValues['dExcedenteIn_T'] := SumTotal - rxSeguimiento_Mat3.FieldValues['Cantidad']
                else
                  rxSeguimiento_Mat3.FieldValues['dExcedenteIn_T'] := 0;

                rxSeguimiento_Mat3.Post;
                rxSeguimiento_Mat3.Next;
              end;
              SumTotal := 0;
              SumExcedente := 0;
              i := 0;
              Cadena := connection.QryBusca.FieldValues['sIdInsumo'];
            end;
            contador := contador - 1;

          end;
        end;

              // S A L I D A  D E  M A T E R I A L E S ....
        rxSeguimiento_Mat4.Active := True;
        rxSeguimiento_Mat4.EmptyTable;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select  ra.sIdInsumo, ra.dCantidad, ap.iFolioSalida, SUM(ap.dCantidad) as dCantidadOut  from recursosanexosnuevos ra ' +
          'left join bitacoradesalida  ap ' +
          'on (ap.sContrato = ra.sContrato and ap.sNumeroActividad = ra.sNumeroActividad and ap.sIdInsumo = ra.sIdInsumo) ' +
          'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo, ap.iFolioSalida order by ra.sIdInsumo, ap.iFolioSalida ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          i := 1;
          SumTotal := 0;
          SumExcedente := 0;
          contador := connection.QryBusca.RecordCount;
          cadena := connection.QryBusca.FieldValues['sIdInsumo'];
          while not connection.QryBusca.Eof do
          begin
            rxSeguimiento_Mat4.Append;
            rxSeguimiento_Mat4.FieldValues['Id'] := connection.QryBusca.FieldValues['sIdInsumo'];
            rxSeguimiento_Mat4.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
            rxSeguimiento_Mat4.FieldValues['FolioOut'] := connection.QryBusca.FieldValues['iFolioSalida'];
            rxSeguimiento_Mat4.FieldValues['dCantidadOut'] := connection.QryBusca.FieldValues['dCantidadOut'];
            rxSeguimiento_Mat4.FieldValues['dExcedenteOut'] := 0;

            if connection.QryBusca.FieldValues['dCantidadOut'] <= connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat4.FieldValues['dRestanteOut'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadOut'];

            if connection.QryBusca.FieldValues['dCantidadOut'] > connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat4.FieldValues['dExcedenteOut'] := connection.QryBusca.FieldValues['dCantidadOut'] - connection.QryBusca.FieldValues['dCantidad'];

            if not (rxSeguimiento_Mat4.FieldValues['dCantidadOut'] = null) then
              SumTotal := SumTotal + rxSeguimiento_Mat4.FieldValues['dCantidadOut'];

            if not (rxSeguimiento_Mat4.FieldValues['dExcedenteOut'] = null) then
              SumExcedente := SumExcedente + rxSeguimiento_Mat4.FieldValues['dExcedenteOut'];

            rxSeguimiento_Mat4.Post;
            connection.QryBusca.Next;

            i := i + 1;

            if (Cadena <> connection.QryBusca.FieldValues['sIdInsumo']) or (contador = 1) then
            begin
              for x := 1 to i - 1 do
                rxSeguimiento_Mat4.Prior;

              for x := 1 to i - 1 do
              begin
                rxSeguimiento_Mat4.Edit;
                rxSeguimiento_Mat4.FieldValues['dCantidadOut_T'] := SumTotal;

                if SumTotal > rxSeguimiento_Mat4.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat4.FieldValues['dExcedenteOut_T'] := SumTotal - rxSeguimiento_Mat4.FieldValues['Cantidad']
                else
                  rxSeguimiento_Mat4.FieldValues['dExcedenteOut_T'] := 0;

                rxSeguimiento_Mat4.Post;
                rxSeguimiento_Mat4.Next;
              end;
              SumTotal := 0;
              SumExcedente := 0;
              i := 0;
              Cadena := connection.QryBusca.FieldValues['sIdInsumo'];
            end;
            contador := contador - 1;
          end;
        end;

              // R E P O R T E S   D I A R I O S ....
        rxSeguimiento_Mat5.Active := True;
        rxSeguimiento_Mat5.EmptyTable;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select ra.sIdInsumo, ra.dCantidad, SUM(bmp.dCantidad) as dCantidadRD, rd.sNumeroReporte, rd.dIdFecha, rd.sNumeroOrden  from recursosanexosnuevos ra ' +
          'inner join bitacoradeactividades ba ' +
          'on (ba.sContrato = ra.sContrato  and ba.sWbs = ra.sWbs and ba.sNumeroActividad = ra.sNumeroActividad) ' +
          'left join bitacorademateriales  bmp ' +
          'on(bmp.sContrato = ra.sContrato and bmp.dIdFecha = ba.dIdFecha and bmp.iIdDiario = ba.iIdDiario and bmp.sIdMaterial = ra.sIdInsumo) ' +
          'inner join reportediario rd ' +
          'on (rd.sContrato = ba.sContrato and rd.dIdFecha = ba.dIdFecha and rd.sIdTurno = ba.sIdTurno and rd.sNumeroOrden = ba.sNumeroOrden ) ' +
          'where ra.sContrato =:Contrato and ra.sNumeroActividad =:Actividad group by ra.sIdInsumo, rd.sNumeroOrden, rd.dIdFecha order by ra.sIdInsumo, rd.sNumeroOrden, rd.dIdFecha ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.Open;

        SumTotal := 0;
        SumExcedente := 0;

        if connection.QryBusca.RecordCount > 0 then
        begin
          i := 1;
          SumTotal := 0;
          SumExcedente := 0;
          SumRestante := 0;
          contador := connection.QryBusca.RecordCount;
          cadena := connection.QryBusca.FieldValues['sIdInsumo'];
          while not connection.QryBusca.Eof do
          begin
            rxSeguimiento_Mat5.Append;
            rxSeguimiento_Mat5.FieldValues['Id'] := connection.QryBusca.FieldValues['sIdInsumo'];
            rxSeguimiento_Mat5.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
            rxSeguimiento_Mat5.FieldValues['FechaRD'] := connection.QryBusca.FieldValues['dIdFecha'];
            rxSeguimiento_Mat5.FieldValues['FrenteRD'] := connection.QryBusca.FieldValues['sNumeroOrden'];
            rxSeguimiento_Mat5.FieldValues['dCantidadRD'] := connection.QryBusca.FieldValues['dCantidadRD'];
            rxSeguimiento_Mat5.FieldValues['dRestanteRD'] := 0;
            rxSeguimiento_Mat5.FieldValues['dExcedenteRD'] := 0;
            rxSeguimiento_Mat5.FieldValues['dPorcentajeRD'] := 100;

            if connection.QryBusca.FieldValues['dCantidadRD'] <= connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat5.FieldValues['dRestanteRD'] := connection.QryBusca.FieldValues['dCantidad'] - connection.QryBusca.FieldValues['dCantidadRD'];

            if connection.QryBusca.FieldValues['dCantidadRD'] > connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat5.FieldValues['dExcedenteRD'] := connection.QryBusca.FieldValues['dCantidadRD'] - connection.QryBusca.FieldValues['dCantidad'];

            if connection.QryBusca.FieldValues['dCantidadRD'] < connection.QryBusca.FieldValues['dCantidad'] then
              rxSeguimiento_Mat5.FieldValues['dPorcentajeRD'] := (connection.QryBusca.FieldValues['dCantidadRD'] / connection.QryBusca.FieldValues['dCantidad']) * 100;

            if not (rxSeguimiento_Mat5.FieldValues['dCantidadRD'] = null) then
              SumTotal := SumTotal + rxSeguimiento_Mat5.FieldValues['dCantidadRD'];

            if not (rxSeguimiento_Mat5.FieldValues['dExcedenteRD'] = null) then
              SumExcedente := SumExcedente + rxSeguimiento_Mat5.FieldValues['dExcedenteRD'];

            if not (rxSeguimiento_Mat5.FieldValues['dRestanteRD'] = null) then
              SumRestante := SumRestante + rxSeguimiento_Mat5.FieldValues['dRestanteRD'];

            rxSeguimiento_Mat5.Post;
            connection.QryBusca.Next;

            i := i + 1;

            if (Cadena <> connection.QryBusca.FieldValues['sIdInsumo']) or (contador = 1) then
            begin
              for x := 1 to i - 1 do
                rxSeguimiento_Mat5.Prior;

              for x := 1 to i - 1 do
              begin
                rxSeguimiento_Mat5.Edit;
                rxSeguimiento_Mat5.FieldValues['dCantidadRD_T'] := SumTotal;
                if SumTotal <= rxSeguimiento_Mat5.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat5.FieldValues['dRestanteRD_T'] := rxSeguimiento_Mat5.FieldValues['Cantidad'] - SumTotal
                else
                  rxSeguimiento_Mat5.FieldValues['dRestanteRD_T'] := 0;

                if SumTotal > rxSeguimiento_Mat5.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat5.FieldValues['dExcedenteRD_T'] := SumTotal - rxSeguimiento_Mat5.FieldValues['Cantidad']
                else
                  rxSeguimiento_Mat5.FieldValues['dExcedenteRD_T'] := 0;

                if SumTotal < rxSeguimiento_Mat5.FieldValues['Cantidad'] then
                  rxSeguimiento_Mat5.FieldValues['dPorcentajeRD_T'] := ((SumTotal - SumExcedente) / rxSeguimiento_Mat5.FieldValues['Cantidad']) * 100
                else
                  rxSeguimiento_Mat5.FieldValues['dPorcentajeRD_T'] := 100;
                rxSeguimiento_Mat5.Post;
                rxSeguimiento_Mat5.Next;
              end;
              SumTotal := 0;
              SumExcedente := 0;
              SumRestante := 0;
              i := 0;
              Cadena := connection.QryBusca.FieldValues['sIdInsumo'];
            end;
            contador := contador - 1;
          end;
        end;

              // G E N E R A D O R E S  D E  O B R A ....
        rxSeguimiento_Mat6.Active := True;
        rxSeguimiento_Mat6.EmptyTable;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Select e.sContrato, aa.sNumeroActividad, sum(e.dCantidad) as dCantidad, ' +
          'e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador ' +
          'from actividadesxanexo aa ' +
          'inner join  estimacionxpartida e ' +
          'on (e.sContrato = aa.sContrato and e.sWbs = aa.sWbs and e.sNumeroActividad = aa.sNumeroActividad) ' +
          'inner join estimaciones e2 ' +
          'on (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador) ' +
          'inner join estimacionperiodo e3 ' +
          'on (e2.sContrato = e3.sContrato And e2.iNumeroEstimacion = e3.iNumeroEstimacion) ' +
          'where aa.sContrato =:Contrato and aa.sNumeroActividad =:Actividad and aa.sWbs =:Wbs and sIdConvenio =:Convenio ' +
          'group by aa.sNumeroActividad ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
        connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
        connection.QryBusca.ParamByName('Wbs').AsString := connection.zCommand.FieldValues['sWbs'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
          while not connection.QryBusca.Eof do
          begin
            rxSeguimiento_Mat6.Append;
            rxSeguimiento_Mat6.FieldValues['Id'] := connection.QryBusca.FieldValues['sNumeroActividad'];
            rxSeguimiento_Mat6.FieldValues['CantidadAnexo'] := connection.zCommand.FieldValues['dCantidadAnexo'];
            rxSeguimiento_Mat6.FieldValues['dCantidadGen'] := connection.QryBusca.FieldValues['dCantidad'];
            rxSeguimiento_Mat6.FieldValues['iNumeroEstimacion'] := connection.QryBusca.FieldValues['iNumeroEstimacion'];
            rxSeguimiento_Mat6.FieldValues['sNumeroOrden'] := connection.QryBusca.FieldValues['sNumeroOrden'];
            rxSeguimiento_Mat6.FieldValues['sNumeroGenerador'] := connection.QryBusca.FieldValues['sNumeroGenerador'];
            rxSeguimiento_Mat6.FieldValues['dExcedenteGen'] := 0;

            rxSeguimiento_Mat6.Post;
            connection.QryBusca.Next;
          end;
        end;
        connection.zCommand.Next;
      end;
    end;

    if not FileExists(global_files + global_miReporte + '_seguimiento_material.fr3') then
   begin
    showmessage('El archivo de reporte '+global_Mireporte+'_seguimiento_material.fr3 no existe, notifique al administrador del sistema');
    exit;
   end;

    frxEntrada.PreviewOptions.MDIChild := False;
    frxEntrada.PreviewOptions.Modal := True;
    frxEntrada.PreviewOptions.Maximized := lCheckMaximized();
    frxEntrada.PreviewOptions.ShowCaptions := False;
    frxEntrada.Previewoptions.ZoomMode := zmPageWidth;
    frxEntrada.LoadFromFile(global_files + global_miReporte +  '_seguimiento_material.fr3');
    frxEntrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ordenes de Compra de Materiales', 'En el proceso Seguimiento Material x Partida Detalle', 0);
    end;
  end;
end;

end.

