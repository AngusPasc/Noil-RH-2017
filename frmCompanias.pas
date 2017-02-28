unit frmCompanias;
interface

uses
  Windows, Messages,Dialogs, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DB, DateUtils, StrUtils,
  Grids, DBGrids, ExtCtrls, DBCtrls,  ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, global,
  ZAbstractRODataset, ZAbstractDataset, UDbGrid, Newpanel, ComCtrls, frxClass,
  frxDBSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxFilterControl, cxDBFilterControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLabel,
  AdvGlowButton, cxTextEdit, cxMemo, unittbotonespermisos, UnitExcepciones,
  DBDateTimePicker, rxToolEdit, RXDBCtrl, AdvPanel, Menus, cxButtons,
  dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, ImgList, OleCtrls, SHDocVw,
  MSHTML, cxCheckBox, cxPCdxBarPopupMenu, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBExtLookupComboBox, dxRibbonForm,
  PFacturaElectronica, CFDI, PFacturaElectronica_PAC, PACFem, cxButtonEdit,
  IdCoderMIME, NxCollection, cxCheckListBox, cxDBCheckListBox,
  AdvSmoothProgressBar, W7Classes, W7Panels, cxGroupBox, cxRadioGroup, comObj,
  RxMemDS, JPEG, UnitExcel, cxListBox, sListBox, sCheckListBox, cxCalc,
  OleServer, WordXP, Clipbrd, AdvPageControl, NxPageControl, ExtDlgs,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, JvExMask, JvToolEdit,
  JvDBControls, dxCore, cxDateUtils;

type
    Evalidaciones = class(Exception)
end;
type
  //Tfrm_Companias = class(TForm)
    Tfrm_Companias =class(TdxRibbonForm)
    dsCompanias: TDataSource;
    zQCompanias: TZQuery;
    frmBarra1: TfrmBarra;
    zQCompaniassIdCompania: TStringField;
    zQCompaniassRFC: TStringField;
    zQCompaniassRazonSocial: TStringField;
    zQCompaniassDomicilio: TStringField;
    zQCompaniassCiudad: TStringField;
    zQCompaniassCP: TStringField;
    zQCompaniassEstado: TStringField;
    zQCompaniassTelefono: TStringField;
    zQCompaniasdMontoCredito: TFloatField;
    zQCompaniaslStatus: TStringField;
    zQCompaniassNumeroProveedor: TStringField;
    zQCompaniassMail: TStringField;
    zQCompaniassTelefono2: TStringField;
    zQCompaniassContacto: TStringField;
    qrybitacoraventas: TZQuery;
    dsBitacoravtas: TDataSource;
    qrybitacoraventasdIdFecha: TDateField;
    qrybitacoraventasmResumen: TMemoField;
    qrybitacoraventasmAsunto: TMemoField;
    qrybitacoraventassResponsable: TStringField;
    ZQTiposClientes: TZQuery;
    ZQTiposClientesstipo: TStringField;
    dsTiposClientes: TDataSource;
    strngfldIdCompania: TStringField;
    intgrfldqrybitacoraventasiid: TIntegerField;
    frxBitacora: TfrxReport;
    frxDTBitacora: TfrxDBDataset;
    ZQResult: TZQuery;
    intgrfld1: TIntegerField;
    strngfld1: TStringField;
    dtfld1: TDateField;
    mfld1: TMemoField;
    mfld2: TMemoField;
    strngfld2: TStringField;
    dsResult: TDataSource;
    DSCompaniasC: TfrxDBDataset;
    frxClientes1: TfrxReport;
    DSBitacora1: TfrxDBDataset;
    frxBitacoraCompleta: TfrxReport;
    dxbrmngr1: TdxBarManager;
    radioMenu1: TdxRibbonRadialMenu;
    dxEditar1: TdxBarButton;
    dxGuardar1: TdxBarButton;
    dxCancelar1: TdxBarButton;
    dxEliminar1: TdxBarButton;
    dxSalir1: TdxBarButton;
    dxRefrescar1: TdxBarButton;
    dxImprimir1: TdxBarButton;
    dxInsertar1: TdxBarButton;
    radioMenu2: TdxRibbonRadialMenu;
    dxInsertar2: TdxBarButton;
    dxRefrescar2: TdxBarButton;
    dxImprimir2: TdxBarButton;
    dxEditar2: TdxBarButton;
    dxEliminar2: TdxBarButton;
    dxGuardar2: TdxBarButton;
    dxCancelar2: TdxBarButton;
    dxSalir2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel: TPanel;
    cxdbfltrcntrl1: TcxDBFilterControl;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    frmbr1: TfrmBarra;
    TDBFecha: TDBDateTimePicker;
    pnl2: TPanel;
    pnl1: TPanel;
    btn1: TcxButton;
    btn2: TcxButton;
    dbgrdGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    cxgrd2: TcxGrid;
    IDGrid1DBTableView1iid1: TcxGridDBColumn;
    IDGrid1DBTableView1sIdCompania1: TcxGridDBColumn;
    IDGrid1DBTableView1dIdFecha1: TcxGridDBColumn;
    IDGrid1DBTableView1mResumen1: TcxGridDBColumn;
    IDGrid1DBTableView1mAsunto1: TcxGridDBColumn;
    IDGrid1DBTableView1sResponsable1: TcxGridDBColumn;
    dxVerDetalles: TdxBarButton;
    pnlMapa: TPanel;
    PanelHeader: TPanel;
    LabelAddress: TcxLabel;
    CheckBoxTraffic: TcxCheckBox;
    CheckBoxBicycling: TcxCheckBox;
    CheckBoxStreeView: TcxCheckBox;
    btnSalir: TcxButton;
    MemoAddress: TcxMemo;
    ButtonGotoAddress: TcxButton;
    Datos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxgrd1: TcxGrid;
    dbgrd_catClientes: TcxGridDBTableView;
    ID_catClientessIdCompania1: TcxGridDBColumn;
    ID_catClientessRFC1: TcxGridDBColumn;
    ID_catClientessRazonSocial1: TcxGridDBColumn;
    ID_catClientessDomicilio1: TcxGridDBColumn;
    ID_catClientessCP1: TcxGridDBColumn;
    ID_catClientessEstado1: TcxGridDBColumn;
    ID_catClientessTelefono1: TcxGridDBColumn;
    ID_catClientesdMontoCredito1: TcxGridDBColumn;
    ID_catClienteslStatus1: TcxGridDBColumn;
    ID_catClientessNumeroProveedor1: TcxGridDBColumn;
    ID_catClientessMail1: TcxGridDBColumn;
    ID_catClientessTelefono21: TcxGridDBColumn;
    ID_catClientessContacto1: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    lbStatus: TcxLabel;
    dbStatus: TcxDBComboBox;
    TiposClientes: TcxComboBox;
    lbVerTipos: TcxLabel;
    VerUbicacion: TdxBarButton;
    dbgrd_catClientessTipo: TcxGridDBColumn;
    dbgrd_catClientesColumn1: TcxGridDBColumn;
    dbgrd_catClientesColumn2: TcxGridDBColumn;
    dbgrd_catClientesColumn3: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    zQCompaniassNumeroInterior: TStringField;
    zQCompaniassNumeroExterior: TStringField;
    zQCompaniassLocalidad: TStringField;
    zQCompaniassMunicipio: TStringField;
    zQCompaniassColonia: TStringField;
    zQCompaniassIdCompaniaConf: TStringField;
    ZQResultsIdCompaniaConf: TStringField;
    btnImprimirTodo: TcxButton;
    pnlImprimirCompanias: TPanel;
    NxHeaderPanel1: TNxHeaderPanel;
    W7Panel1: TW7Panel;
    prgImprimirComp: TAdvSmoothProgressBar;
    grpchkImprimir: TcxRadioGroup;
    dxBarButton4: TdxBarButton;
    btnPrintPer: TcxButton;
    rxClientes: TRxMemoryData;
    rxClientessIdCompania: TStringField;
    rxClientessRFC: TStringField;
    rxClientessRazonSocial: TStringField;
    rxClientessDomicilio: TStringField;
    rxClientessCiudad: TStringField;
    rxClientessCP: TStringField;
    rxClientessEstado: TStringField;
    rxClientessTelefono: TStringField;
    fltfldClientesdMontoCredito: TFloatField;
    rxClienteslStatus: TStringField;
    rxClientessNumeroProveedor: TStringField;
    rxClientessMail: TStringField;
    rxClientessTelefono2: TStringField;
    rxClientessContacto: TStringField;
    btnDistribucionImprimir: TcxButton;
    btnDistribucionCancelar: TcxButton;
    pnlContactosxCompania: TNxHeaderPanel;
    pnlInformacionContactos: TW7Panel;
    pnlImprimirContactos: TNxHeaderPanel;
    btnAceptarContactos: TcxButton;
    W7Panel2: TW7Panel;
    btnImprimirContactos: TcxButton;
    btnCancelarContactos: TcxButton;
    pgrImprimirContactos: TAdvSmoothProgressBar;
    dsContactos: TDataSource;
    qrContactos: TZQuery;
    pnlControlesC2: TW7Panel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbTelfContacto: TcxDBTextEdit;
    lbl7: TLabel;
    dbMovilContacto: TcxDBTextEdit;
    lbl8: TLabel;
    lbl9: TLabel;
    dbCorreoContacto: TcxDBTextEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    dbPuestoContacto: TcxDBTextEdit;
    lbl13: TLabel;
    dbRFCContacto: TcxDBTextEdit;
    lbl14: TLabel;
    dbStatusContacto: TcxDBComboBox;
    dbDomicilioContacto: TcxDBMemo;
    btnContactos: TcxButton;
    frmBarra2: TfrmBarra;
    tdFechaContactosInicio: TDateTimePicker;
    qrContactossIdContacto: TStringField;
    qrContactossIdCompania: TStringField;
    qrContactossNombre: TStringField;
    qrContactossTelefono: TStringField;
    qrContactossTelefonoMovil: TStringField;
    qrContactossDomicilio: TStringField;
    qrContactossCorreo: TStringField;
    qrContactossCuidad: TStringField;
    qrContactossPuesto: TStringField;
    qrContactossContacto: TStringField;
    qrContactossRFC: TStringField;
    qrContactoseStatus: TStringField;
    dtfldContactosdIdFecha: TDateField;
    qrContactossIdCompaniaConf: TStringField;
    intgrfldContactosiOrden: TIntegerField;
    dbNombreContacto: TcxDBTextEdit;
    grid_contactos: TcxGridDBTableView;
    nivel_contactos: TcxGridLevel;
    cxGridContactos: TcxGrid;
    grid_contactosColumn1: TcxGridDBColumn;
    tdFechaContactosFinal: TDateTimePicker;
    lstchkContactos: TcxCheckListBox;
    W7Panel3: TW7Panel;
    grpImprimirContactos: TcxRadioGroup;
    grpOrdenContactos: TcxRadioGroup;
    rxContactos: TRxMemoryData;
    rxContactossNombre: TStringField;
    rxContactossTelefono: TStringField;
    rxContactossTelefonoMovil: TStringField;
    rxContactossDomicilio: TStringField;
    rxContactossCorreo: TStringField;
    rxContactossCuidad: TStringField;
    rxContactossPuesto: TStringField;
    rxContactossContacto: TStringField;
    rxContactossRFC: TStringField;
    dtfldContactosdIdFecha1: TDateField;
    rxContactoseStatus: TStringField;
    chkTodosContactos: TcxCheckBox;
    frxdbContactos: TfrxDBDataset;
    rxContactossIdCompania: TStringField;
    rxContactossOrden: TStringField;
    lbl12: TLabel;
    cbClientes: TcxComboBox;
    tdContactoFecha: TDateTimePicker;
    lbl15: TLabel;
    chklstCompanias: TsCheckListBox;
    cxButton1: TcxButton;
    dbCuidadContacto: TcxDBTextEdit;
    lbl16: TLabel;
    dbIdCompania: TcxDBTextEdit;
    lbl17: TLabel;
    dbRFC: TcxDBTextEdit;
    lbl18: TLabel;
    dbRazon: TcxDBTextEdit;
    lbl19: TLabel;
    dbDomicilio: TcxDBTextEdit;
    lbl20: TLabel;
    dbNumExt: TcxDBTextEdit;
    lbl21: TLabel;
    dbNumInt: TcxDBTextEdit;
    lbl22: TLabel;
    dbLocalidad: TcxDBTextEdit;
    lbl23: TLabel;
    dbMunicipio: TcxDBTextEdit;
    lbl24: TLabel;
    dbCuidad: TcxDBTextEdit;
    lbl25: TLabel;
    dbEstado: TcxDBTextEdit;
    lbl26: TLabel;
    dbCP: TcxDBTextEdit;
    lbl27: TLabel;
    dbColonia: TcxDBTextEdit;
    lbl28: TLabel;
    dbTelefono: TcxDBTextEdit;
    lbl29: TLabel;
    dbMonto: TcxDBCalcEdit;
    lbl30: TLabel;
    dbNumProv: TcxDBTextEdit;
    lbl31: TLabel;
    dbCorreo: TcxDBTextEdit;
    lbl32: TLabel;
    dbContacto: TcxDBTextEdit;
    lbl33: TLabel;
    dbTelefono2: TcxDBTextEdit;
    btnDetallesProspecto: TcxButton;
    Grid_CompaniasCont: TcxGridDBTableView;
    GridCompaniasContLevel1: TcxGridLevel;
    GridCompaniasCont: TcxGrid;
    Grid_CompaniasContColumn1: TcxGridDBColumn;
    chkMostrarContactos: TcxCheckBox;
    zQCompaniassPuesto: TStringField;
    Label1: TLabel;
    dbPuesto: TcxDBTextEdit;
    qrContactosbTargeta: TBlobField;
    qrContactosbImagenContacto: TBlobField;
    pgContacto: TcxPageControl;
    iconos: TcxImageList;
    pnlControlesC: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    GroupBox4: TGroupBox;
    bFotografica: TImage;
    GroupBox1: TGroupBox;
    bTargeta: TImage;
    OpenPicture: TOpenPictureDialog;
    OpenPicture_1: TOpenPictureDialog;
    rxContactosbTargeta: TBlobField;
    rxContactosbImagenContacto: TBlobField;
    cbbTipoVisita: TDBLookupComboBox;
    btnCatalogoTipoVisita: TButton;
    cbbVendedor: TDBLookupComboBox;
    btnCatalogoVendedores: TButton;
    lbl34: TLabel;
    lbl35: TLabel;
    qrCatVendedores: TZQuery;
    qrCatVendedoressIdCompania: TStringField;
    qrCatVendedoressNombre: TStringField;
    qrCatVendedoressEmail: TStringField;
    qrCatVendedoressIdDepartamento: TStringField;
    qrCatVendedoressGenero: TStringField;
    qrCatVendedoressTelefonoOf: TStringField;
    qrCatVendedoressTelefonoCel: TStringField;
    ds_CatVendedores: TDataSource;
    zqryTiposDeVisitas: TZQuery;
    dsTipoDeVisitas: TDataSource;
    intgrfldIdTipoVisita: TIntegerField;
    strngfldqrybitacoraventasnombre: TStringField;
    strngfldDescripcion: TStringField;
    nombre: TcxGridDBColumn;
    Descripcion: TcxGridDBColumn;
    mResumen: TMemo;
    mAsunto: TMemo;
    cxSResponsable: TEdit;
    btnGraficaEfectividad: TcxButton;
    pnlImpresionGrafica: TNxHeaderPanel;
    btnEfecPorTipoVisita: TcxButton;
    lblImpresionGraficas: TLabel;
    btnEfecGeneral: TcxButton;
    btnEfecPorResponsable: TcxButton;
    btnEfecVendedores: TcxButton;
    btnEfecVendedorActual: TcxButton;
    btnResumenCompanias: TcxButton;
    dtpInicio: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    lblInicio: TLabel;
    lblFinal: TLabel;
    btnEfecVendedorPorFecha: TcxButton;
    intgrfldIdVendedor: TIntegerField;
    intgrfldCatVendedoresiIdVendedor: TIntegerField;
    lbl36: TLabel;
    lbl37: TLabel;
    cxdtdtInicio: TcxDateEdit;
    cxdtdtFin: TcxDateEdit;
    cxdtdtInicio2: TcxDateEdit;
    cxdtdtFin2: TcxDateEdit;
    dsContactosCompanias: TDataSource;
    zQContactosCompanias: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zQCompaniasAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure dbContactoEnter(Sender: TObject);
    procedure dbContactoExit(Sender: TObject);
    procedure dbTelefono2Enter(Sender: TObject);
    procedure dbTelefono2Exit(Sender: TObject);
    procedure TiposClientesClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure frmbr1btnAddClick(Sender: TObject);
    procedure frmbr1btnEditClick(Sender: TObject);
    procedure frmbr1btnPostClick(Sender: TObject);
    procedure frmbr1btnCancelClick(Sender: TObject);
    procedure frmbr1btnDeleteClick(Sender: TObject);
    procedure frmbr1btnExitClick(Sender: TObject);
    procedure frmbr1btnRefreshClick(Sender: TObject);
    procedure cxSResponsableKeyPress(Sender: TObject; var Key: Char);
    procedure qrybitacoraventasAfterInsert(DataSet: TDataSet);
    procedure dxInsertar1Click(Sender: TObject);
    procedure dxEditar1Click(Sender: TObject);
    procedure dxGuardar1Click(Sender: TObject);
    procedure dxCancelar1Click(Sender: TObject);
    procedure dxEliminar1Click(Sender: TObject);
    procedure dxSalir1Click(Sender: TObject);
    procedure dxImprimir1Click(Sender: TObject);
    procedure dxRefrescar1Click(Sender: TObject);
    procedure dxInsertar2Click(Sender: TObject);
    procedure dxImprimir2Click(Sender: TObject);
    procedure dxRefrescar2Click(Sender: TObject);
    procedure dxEditar2Click(Sender: TObject);
    procedure dxEliminar2Click(Sender: TObject);
    procedure dxGuardar2Click(Sender: TObject);
    procedure dxCancelar2Click(Sender: TObject);
    procedure dxSalir2Click(Sender: TObject);
    procedure cambio_stado;
    procedure cambio_stado1;
    procedure frmbr1btnPrinterClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure mResumenKeyPress(Sender: TObject; var Key: Char);
    procedure mAsuntoKeyPress(Sender: TObject; var Key: Char);
    procedure dxVerDetallesClick(Sender: TObject);
    procedure ButtonGotoAddressClick(Sender: TObject);
    procedure ButtonClearMarkersClick(Sender: TObject);
    procedure ButtonGotoLocationClick(Sender: TObject);
    procedure CheckBoxTrafficClick(Sender: TObject);
    procedure CheckBoxBicyclingClick(Sender: TObject);
    procedure CheckBoxStreeViewClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBExtLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure TiposClientesPropertiesCloseUp(Sender: TObject);
    procedure tsCertificados_CertificadoClick(Sender: TObject);
    procedure tsCertificados_LlaveClick(Sender: TObject);
    function base64encode(strLinea: AnsiString): ansiString;
    function base64decode(strLinea: AnsiString): ansiString;
    procedure btnImprimirTodoClick(Sender: TObject);
    procedure btnPrintPerClick(Sender: TObject);

    procedure imprimirClientesSeleccionadosExcel;//Sam
    procedure imprimirClientesSeleccionadosPdf;//Sam
    procedure imprimirContactos;//Sam

    procedure actualizarBitacora(compania, ant : string);//Sam
    procedure actualizarContactos(compania, ant : string);//Sam
    procedure actualizarcotizaciones(compania, ant : string);//Sam
    procedure actualizarConceptos(compania, ant : string);//Sam
    procedure actualizarRelacionadoXCompania(nuevo, anterior : string);//Sam
    
    function getIdContacto(item : string):string;//Sam

    procedure btnDistribucionImprimirClick(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure btnCancelarContactosClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure btnContactosClick(Sender: TObject);
    function formatoFecha(fecha: TDate) : string;
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure bloquearDesbloquearCtrlContactos(tipo : Boolean);


    procedure btnImprimirContactosClick(Sender: TObject);
    procedure chkTodosContactosClick(Sender: TObject);
    procedure grid_clientesContactosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dbNombreContactoExit(Sender: TObject);
    procedure dbNombreContactoEnter(Sender: TObject);
    procedure cbClientesKeyPress(Sender: TObject; var Key: Char);
    procedure dbNombreContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbTelfContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbMovilContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbDomicilioContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbCorreoContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbCuidadContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbPuestoContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbRFCContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbStatusContactoKeyPress(Sender: TObject; var Key: Char);
    procedure tdContactoFechaKeyPress(Sender: TObject; var Key: Char);
    procedure qrContactosAfterScroll(DataSet: TDataSet);
    procedure tdFechaContactosInicioChange(Sender: TObject);
    procedure tsMailKeyPress(Sender: TObject; var Key: Char);
    procedure dbContactoKeyPress(Sender: TObject; var Key: Char);
    procedure dbMunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure dbIdCompaniaKeyPress(Sender: TObject; var Key: Char);
    procedure dbRFCKeyPress(Sender: TObject; var Key: Char);
    procedure dbRazonKeyPress(Sender: TObject; var Key: Char);
    procedure dbDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure dbNumExtKeyPress(Sender: TObject; var Key: Char);
    procedure dbNumIntKeyPress(Sender: TObject; var Key: Char);
    procedure dbLocalidadKeyPress(Sender: TObject; var Key: Char);
    procedure dbIdCompaniaEnter(Sender: TObject);
    procedure dbIdCompaniaExit(Sender: TObject);
    procedure btnDetallesProspectoClick(Sender: TObject);
    procedure chkMostrarContactosClick(Sender: TObject);
    procedure bFotograficaClick(Sender: TObject);
    procedure bTargetaClick(Sender: TObject);
    procedure btnCatalogoVendedoresClick(Sender: TObject);
    procedure btnCatalogoTipoVisitaClick(Sender: TObject);
    procedure habilitarCombos;
    procedure deshabilitarCombos;
    procedure dbgrdGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure limpiarCampos;
    procedure btnGraficaEfectividadClick(Sender: TObject);
    procedure btnEfecPorTipoVisitaClick(Sender: TObject);
    procedure btnEfecPorResponsableClick(Sender: TObject);
    procedure graficarEfectividad(repeticiones : Integer; consulta : string; compania : string; razonSocial : string; RFC : string; domicilio : string);
    procedure btnEfecGeneralClick(Sender: TObject);
    procedure btnEfecVendedoresClick(Sender: TObject);
    procedure btnEfecVendedorActualClick(Sender: TObject);
    procedure btnResumenCompaniasClick(Sender: TObject);
    procedure graficarEfectividad2(repeticiones : Integer; consulta : string; compania : string; razonSocial : string; RFC : string; domicilio : string);
    procedure qrybitacoraventasAfterScroll(DataSet: TDataSet);
    procedure btnEfecVendedorPorFechaClick(Sender: TObject);
    procedure cxSResponsableEnter(Sender: TObject);
    procedure cxSResponsableExit(Sender: TObject);
    procedure TDBFechaEnter(Sender: TObject);
    procedure TDBFechaExit(Sender: TObject);
    procedure mResumenEnter(Sender: TObject);
    procedure mResumenExit(Sender: TObject);
    procedure mAsuntoEnter(Sender: TObject);
    procedure mAsuntoExit(Sender: TObject);
    procedure cbbTipoVisitaEnter(Sender: TObject);
    procedure cbbTipoVisitaExit(Sender: TObject);
    procedure cbbVendedorExit(Sender: TObject);
    procedure cbbVendedorEnter(Sender: TObject);
    procedure cxdtdtInicioEnter(Sender: TObject);
    procedure cxdtdtInicioExit(Sender: TObject);
    procedure cxdtdtFinEnter(Sender: TObject);
    procedure cxdtdtFinExit(Sender: TObject);
    procedure cxdtdtInicio2Enter(Sender: TObject);
    procedure cxdtdtInicio2Exit(Sender: TObject);
    procedure cxdtdtFin2Enter(Sender: TObject);
    procedure cxdtdtFin2Exit(Sender: TObject);
    procedure TDBFechaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbTipoVisitaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure zQContactosCompaniasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    detalles:TForm;
    imprimir:TForm;
    mapa:TForm;
    HTMLWindow2: IHTMLWindow2;

    companiaAnt,
    direccion:string;
    
  public
  var
    accion : string;
    excel, libro, hoja : Variant;
    graficarEmpresaActual : Boolean;
    graficarGeneral : Boolean;
    graficarVendedores : Boolean;
    graficarVendedorSeleccionado : Boolean;
    graficarPorRangoDeFechas : boolean;
    frm_CompaniasAbierto : boolean;
    catVendedoresNormal : boolean;
    catTipoVisitaNormal : boolean;
    { Public declarations }
  end;

var
  frm_Companias: Tfrm_Companias;
  botonpermiso: tbotonespermisos;
implementation

uses frm_connection, frm_inteligent, ActiveX, frm_repositorio, frmDepositoscias, frm_ordenes,
  frm_CatalogoVendedores, frmTipoVisita;

{$R *.dfm}
const
HTMLStr: AnsiString =
'<html> '+
'<head> '+
'<meta name="viewport" content="initial-scale=1.0, user-scalable=yes" /> '+
'<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script> '+
'<script type="text/javascript"> '+
''+
''+
'  var geocoder; '+
'  var map;  '+
'  var trafficLayer;'+
'  var bikeLayer;'+
'  var markersArray = [];'+
''+
''+
'  function initialize() { '+
'    geocoder = new google.maps.Geocoder();'+
'    var latlng = new google.maps.LatLng(40.714776,-74.019213); '+
'    var myOptions = { '+
'      zoom: 13, '+
'      center: latlng, '+
'      mapTypeId: google.maps.MapTypeId.ROADMAP '+
'    }; '+
'    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); '+
'    trafficLayer = new google.maps.TrafficLayer();'+
'    bikeLayer = new google.maps.BicyclingLayer();'+
'    map.set("streetViewControl", false);'+
'  } '+
''+
''+
'  function codeAddress(address) { '+
'    if (geocoder) {'+
'      geocoder.geocode( { address: address}, function(results, status) { '+
'        if (status == google.maps.GeocoderStatus.OK) {'+
'          map.setCenter(results[0].geometry.location);'+
'          PutMarker(results[0].geometry.location.lat(), results[0].geometry.location.lng(), results[0].geometry.location.lat()+","+results[0].geometry.location.lng());'+
'        } else {'+
'          alert("Geocode was not successful for the following reason: " + status);'+
'        }'+
'      });'+
'    }'+
'  }'+
''+
''+
'  function GotoLatLng(Lat, Lang) { '+
'   var latlng = new google.maps.LatLng(Lat,Lang);'+
'   map.setCenter(latlng);'+
'   PutMarker(Lat, Lang, Lat+","+Lang);'+
'  }'+
''+
''+
'function ClearMarkers() {  '+
'  if (markersArray) {        '+
'    for (i in markersArray) {  '+
'      markersArray[i].setMap(null); '+
'    } '+
'  } '+
'}  '+
''+
'  function PutMarker(Lat, Lang, Msg) { '+
'   var latlng = new google.maps.LatLng(Lat,Lang);'+
'   var marker = new google.maps.Marker({'+
'      position: latlng, '+
'      map: map,'+
'      title: Msg+" ("+Lat+","+Lang+")"'+
'  });'+
' markersArray.push(marker); '+
'  }'+
''+
''+
'  function TrafficOn()   { trafficLayer.setMap(map); }'+
''+
'  function TrafficOff()  { trafficLayer.setMap(null); }'+
''+''+
'  function BicyclingOn() { bikeLayer.setMap(map); }'+
''+
'  function BicyclingOff(){ bikeLayer.setMap(null);}'+
''+
'  function StreetViewOn() { map.set("streetViewControl", true); }'+
''+
'  function StreetViewOff() { map.set("streetViewControl", false); }'+
''+
''+'</script> '+
'</head> '+
'<body onload="initialize()"> '+
'  <div id="map_canvas" style="width:100%; height:100%"></div> '+
'</body> '+
'</html> ';
procedure Tfrm_Companias.btn1Click(Sender: TObject);
(*Creada:12/09/2013 Creo:Rafael Ramirez Tadeo
Descripcion:Imprime todos los registros de la bitacora *)
begin
  ZQResult.SQL.Clear;                                         //RRT 12/09/2013: Limpia la tabla
  ZQResult.SQL.Add('select bta.*, ccp.sIdCompaniaConf from vta_bitacoradeactividades bta '+
                    'inner join con_companias  ccp on (bta.sIdCompania = ccp.sIdCompania) ' +
                    'where ccp.sIdCompaniaConf = :compania and DATE(bta.dIdFecha) BETWEEN :fechaInicio and :fechaFinal order by sIdCompania ');//RRT 12/09/2013: Agrega consulta
  ZQResult.Params.ParamByName('fechaInicio').AsDate := cxdtdtInicio2.Date;
  ZQResult.Params.ParamByName('fechaFinal').AsDate := cxdtdtFin2.Date;
  zqResult.ParamByName('compania').AsString  := global_contrato;
  ZQResult.ExecSQL;                                           //RRT 12/09/2013: Ejecuta la consulta
  ZQResult.Active:=false;                                     //RRT 12/09/2013: desactiva la tabla
  ZQResult.Open;                                     //RRT 12/09/2013: abre la consulta
  If ZQResult.RecordCount > 0 Then                   //RRT 12/09/2013: Si la tabla tiene datos
  begin
    frxBitacoraCompleta.LoadFromFile(global_files + global_miReporte + '_CADReporteBitacora.fr3') ; //RRT 12/09/2013: Carga el reporte
    frxBitacoraCompleta.ShowReport();                                        //RRT 12/09/2013: Muestra el reporte
    imprimir.Close;
     if not FileExists(global_files + global_miReporte + '_CADReporteBitacora.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADReporteBitacora.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;                                                          //RRT 12/09/2013: cierra la forma temporal
  end else MessageDlg('No hay registros que imprimir!!', mtInformation, [mbOk], 0); //RRT 12/09/2013: Si la tabla esta vacia muestra un mensaje
end;

procedure Tfrm_Companias.btn2Click(Sender: TObject);
(*Creada:12/09/2013 Creo:Rafael Ramirez Tadeo
Descripcion:Este procedimiento lo que hace es que imprime los datos de la empresa seleccionada *)
begin
     if not FileExists(global_files + global_miReporte + '_CADReporteBitacora2.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADReporteBitacora2.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  qrybitacoraventas.Active := False;
    //qrybitacoraventas.Params.ParamByName('sIdCompania').AsString := '';
    qrybitacoraventas.Params.ParamByName('sIdCompania2').AsString := global_contrato;
    qrybitacoraventas.Params.ParamByName('fechaInicio').AsDate := cxdtdtInicio2.Date;
    qrybitacoraventas.Params.ParamByName('fechaFinal').AsDate := cxdtdtFin2.Date;
    qrybitacoraventas.Open;
  If qrybitacoraventas.RecordCount > 0 Then    //RRT 12/09/2013: Valida que la tabla no este vacia
  begin


    frxBitacora.LoadFromFile(global_files + global_miReporte + '_CADReporteBitacora2.fr3') ;   //RRT 12/09/2013: Carga el reporte
    frxBitacora.ShowReport();                                           //RRT 12/09/2013: Muestra el reporte
    imprimir.Close;

    qrybitacoraventas.Active := False;
    qrybitacoraventas.Params.ParamByName('sIdCompania').AsString := global_contrato;
    qrybitacoraventas.Open;                                                     //RRT 12/09/2013: Cierra el formulario temporal
  end else MessageDlg('No hay registros que imprimir!!', mtInformation, [mbOk], 0); //RRT 12/09/2013: Si esta vacia la tabla muestra un mensaje al usuario
end;

procedure Tfrm_Companias.btnAddClick(Sender: TObject);
(*Creada:12/09/2013 Creo:Rafael Ramirez Tadeo
Descripcion:Se agrega funcionalidad al boton insertar del panel *)
begin
  accion := 'Nuevo';
  limpiarCampos;
  habilitarCombos;
  try
      frmbr1.btnAddClick(Sender);      //RRT 12/09/2013: Se manda a llamar la funcion para que inhabilite los botones segun el estado de la tabla
      (*qrybitacoraventas.Append;        //RRT 12/09/2013: Prepara la tabla para darle recibir datos
      qrybitacoraventas.FieldByName('sIdCompania').AsString:=zQCompanias.FieldByName('sIdCompania').AsString; //RRT 12/09/2013: Pasa el valor del nombre de la empresa
      qrybitacoraventas.FieldByName('dIdfecha').AsDateTime:=Now;*)
      
      (*connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(iid) as id FROM vta_bitacoradeactividades;');
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then begin
         qrybitacoraventas.FieldByName('iid').AsInteger := (connection.QryBusca.FieldByName('id').AsInteger + 1);
      end else begin
         qrybitacoraventas.FieldByName('iid').AsInteger := 1;
      end;*)
      cxSResponsable.Text := global_nombre;
      cxSResponsable.SetFocus;
      cambio_stado;
  except
  end;
end;

procedure Tfrm_Companias.btnCancelarContactosClick(Sender: TObject);
begin
  pnlImprimirContactos.Align := alRight;
  GridCompaniasCont.Visible := True;
  pnlInformacionContactos.Visible := True;
  pnlImprimirContactos.Visible := False;
  pnlInformacionContactos.Enabled := True;
end;

procedure Tfrm_Companias.btnCancelClick(Sender: TObject);
begin
   frmbr1.btnCancelClick(Sender);
   qrybitacoraventas.Cancel;
   cambio_stado;
   deshabilitarCombos;
   cxSResponsable.Text := '';
   mAsunto.Text := '';
   mResumen.Text := '';
   accion := '';
end;


procedure Tfrm_Companias.btnCatalogoTipoVisitaClick(Sender: TObject);
begin
  //Abrir el Catalogo de Tipo de Visita
  catTipoVisitaNormal := True;
  Application.CreateForm(Tfrm_TipoVisita, frm_TipoVisita);
  frm_TipoVisita.Position := poScreenCenter;
  frm_TipoVisita.showModal;
end;

procedure Tfrm_Companias.btnCatalogoVendedoresClick(Sender: TObject);
begin
  //Mostrar el catalogo de Vendedores
  Application.CreateForm(TfrmCatVendedores, frmCatVendedores);
  catVendedoresNormal := True;
  frmCatVendedores.FormStyle := fsNormal;
  frmCatVendedores.Visible := False;
  frmCatVendedores.Position := poScreenCenter;
  frmCatVendedores.Width := 900;
  frmCatVendedores.Height := 400;
  frmCatVendedores.Showmodal;
end;

procedure Tfrm_Companias.btnContactosClick(Sender: TObject);
var
  Contactos : TForm;
  
begin
  if zqCompanias.RecordCount > 0 then
  begin
      cxgrd1.Enabled := False;

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Text := 'select sIdCompania from con_companias where sIdCompaniaConf = :compania order by sIdCompania';
      connection.QryBusca.ParamByName('compania').AsString := global_contrato;
      connection.QryBusca.Open;

      cbClientes.Properties.Items.Clear;
      connection.QryBusca.First;
      while not connection.QryBusca.Eof do
      begin
        cbClientes.Properties.Items.Add(connection.QryBusca.FieldByName('sIdCompania').AsString);
        connection.QryBusca.Next;
      end;

      bloquearDesbloquearCtrlContactos(False);
      grpImprimirContactos.Buttons[0].Checked := True;
      grpOrdenContactos.Buttons[0].Checked := True;
      pnlImprimirContactos.Visible := False;

      tdContactoFecha.Date := Now;
      tdFechaContactosInicio.Date := connection.contrato.FieldByName('dFechaInicio').AsDateTime;
      tdFechaContactosFinal.Date := Now;


      zQContactosCompanias.Active := False;
      zQContactosCompanias.ParamByName( 'compania' ).AsString := global_contrato;
      zQContactosCompanias.Open;

      qrContactos.Active := False;
      qrContactos.ParamByName('contrato').AsString := global_contrato;
      qrContactos.ParamByName('compania').AsString := zQCompanias.FieldByName('sIdCompania').AsString;
      qrContactos.ParamByName('fechaI').AsString := formatoFecha(tdFechaContactosInicio.Date);
      qrContactos.ParamByName('fechaF').AsString := formatoFecha(tdFechaContactosFinal.Date);
      qrContactos.Open;

      pnlContactosxCompania.enabled          :=true;
      Contactos                              := TForm.Create(nil);
      Contactos.BorderStyle                  := bsSingle;
      pnlContactosxCompania.Width            :=1000;
      pnlContactosxCompania.Height           := 510;
      Contactos.Caption                      :='Directorio de contactos';
      pnlContactosxCompania.Parent           := Contactos;
      Contactos.Top                          := 58;
      Contactos.Left                         := 302;
      Contactos.Width                        := 1000;
      Contactos.Height                       := 510;
      Contactos.Position                     := poMainFormCenter;
      Contactos.ShowHint                     := True;
      pnlContactosxCompania.Visible          := True;
      pnlContactosxCompania.Align            := alClient;
      Contactos.AutoSize                     :=True;
      Contactos.BorderIcons                  := [biSystemMenu];
      Contactos.ShowMOdal;

      cxgrd1.Enabled := True;
  end;
end;

procedure Tfrm_Companias.btnDeleteClick(Sender: TObject);
var
  zqryEliminarBitacora : TZQuery;
begin

   If zqCompanias.RecordCount  > 0 then
   begin
      if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        zqryEliminarBitacora := TZQuery.Create(Self);
        zqryEliminarBitacora.Connection := connection.zConnection;
        zqryEliminarBitacora.Active := False;
        zqryEliminarBitacora.SQL.Text := 'delete from vta_bitacoradeactividades where iid = :iid';
        zqryEliminarBitacora.Params.ParamByName('iid').AsInteger := qrybitacoraventas.FieldByName('iid').AsInteger;

        try
          zqryEliminarBitacora.ExecSQL;
          qrybitacoraventas.Refresh;
        except
          on e : Exception do
          begin
            ShowMessage(e.Message);
          end;
        end;

      end;
         //qryBitacoraVentas.Delete;
   end;
end;

procedure Tfrm_Companias.btnDetallesProspectoClick(Sender: TObject);
begin
  qrybitacoraventas.Active:=false;
  qrybitacoraventas.Open;
  qrybitacoraventas.first;
  qrybitacoraventas.Filter:= 'sidCompania='+QuotedStr(zQCompanias.FieldByName('sIdCompania').AsString);
  qrybitacoraventas.Filtered:=True;

  cxdtdtInicio2.Date := Date;
  cxdtdtFin2.Date := Date;
  btn1.Caption           := 'Imprimir todo de ' + global_contrato;
  imprimir              := TForm.Create(nil);
  pnl1.Height           :=160;
  pnl1.Width            :=240;
  imprimir.Caption      :='Imprimir';
  pnl1.Parent           := imprimir;
  imprimir.Top          := 212;
  imprimir.Left         := 262;
  imprimir.Height       := 260;
  imprimir.Width        := 285;
  imprimir.BorderStyle  := bsSingle;
  imprimir.Position     := poScreenCenter;
  imprimir.ShowHint     := True;
  pnl1.Visible          := True;
  pnl1.Align            := alClient;
  imprimir.AutoSize     :=True;
  imprimir.BorderIcons  := [biSystemMenu];
  imprimir.ShowMOdal;
end;

procedure Tfrm_Companias.btnDistribucionImprimirClick(Sender: TObject);
begin
  if grpchkImprimir.Buttons[0].Checked then
    imprimirClientesSeleccionadosExcel;
  if grpchkImprimir.Buttons[1].Checked then
    imprimirClientesSeleccionadosPdf;
end;

procedure Tfrm_Companias.btnEditClick(Sender: TObject);
begin
accion := 'Editar';
  habilitarCombos;

  ZQResult.Active := False;
  ZQResult.SQL.Clear;
  ZQResult.SQL.Add('select bta.*, ccp.sIdCompaniaConf from vta_bitacoradeactividades bta '+
                    'inner join con_companias  ccp on (bta.sIdCompania = ccp.sIdCompania) ');
  ZQResult.SQL.Add('where bta.sidCompania like "'+zQCompanias.FieldByName('sIdCompania').AsString+'"');
  ZQResult.ExecSQL;
  ZQResult.Open;
  If ZQResult.RecordCount > 0 Then
  begin
    //qrybitacoraventas.Edit;
    frmbr1.btnEditClick(Sender);
    cxSResponsable.SetFocus;
    cambio_stado;
  end
  else
  begin
    MessageDlg('No hay registro que modificar!!', mtError, [mbOk], 0);
    deshabilitarCombos;
  end;

end;

procedure Tfrm_Companias.btnEfecGeneralClick(Sender: TObject);
var
  consulta, domicilio, compania, razonSocial, RFC : string;
  repeticiones : Integer;
begin
  //Resume todas las visitas a todas las empresas en general
  excel := CreateOleObject('Excel.Application');
  excel.displayalerts := False;
  excel.workbooks.add;
  libro := excel.workbooks[1];

  compania := 'Resumen General';
  razonSocial := 'Todas las Empresas';
  RFC := 'N/A';
  domicilio := 'Varios Domicilios';
  consulta := 'select * from vta_bitacoradeactividades ' +
              'where iIdTipoVisita = :iIdTipoVisita';
  repeticiones := 1;

  graficarGeneral := True;
  graficarVendedores := False;
  graficarVendedorSeleccionado := False;
  graficarPorRangoDeFechas := False;
  graficarEfectividad(repeticiones, consulta, compania, razonSocial, RFC, domicilio);
end;

procedure Tfrm_Companias.btnEfecPorResponsableClick(Sender: TObject);
var
  consulta, domicilio : string;
  repeticiones : Integer;
  zqryBitacorasDeCompania : TZQuery;
begin
  repeticiones := 1;
  zQCompanias.Active := False;
  zQCompanias.Open;
  zQCompanias.First;

  excel := CreateOleObject('Excel.Application');
  excel.displayalerts := False;
  excel.workbooks.add;
  libro := excel.workbooks[1];

  graficarGeneral := False;
  graficarVendedores := False;
  graficarVendedorSeleccionado := False;
  graficarPorRangoDeFechas := False;

  zqryBitacorasDeCompania := TZQuery.Create(Self);
  zqryBitacorasDeCompania.Connection := connection.zConnection;

  //Imprimir todos los tipos de visitas de todas las empresas
  while not zQCompanias.Eof do
  begin

    zqryBitacorasDeCompania.Active := False;
    zqryBitacorasDeCompania.SQL.Text := 'select * from vta_bitacoradeactividades ' +
                                        'where sIdCompania = :sIdCompania';
    zqryBitacorasDeCompania.Params.ParamByName('sIdCompania').AsString :=  zQCompanias.FieldByName('sIdCompania').AsString;
    zqryBitacorasDeCompania.Open;

    if zqryBitacorasDeCompania.RecordCount > 0 then
    begin
      consulta := 'select * from vta_bitacoradeactividades ' +
                  'where sIdCompania = :sIdCompania ' +
                  'and iIdTipoVisita = :iIdTipoVisita';
      domicilio := zQCompanias.FieldByName('sDomicilio').AsString + ' No. ' + zQCompanias.FieldByName('sNumeroInterior').AsString + ' Col. ' +
                  zQCompanias.FieldByName('sColonia').AsString + '. ' + zQCompanias.FieldByName('sCiudad').AsString +
                  ', ' + zQCompanias.FieldByName('sEstado').AsString;

      graficarEfectividad(repeticiones, consulta, zQCompanias.FieldByName('sIdCompania').AsString,
      zQCompanias.FieldByName('sRazonSocial').AsString, zQCompanias.FieldByName('sRFC').AsString,
      domicilio);
      repeticiones := repeticiones + 1;
    end;

    zQCompanias.Next;
    //repeticiones := repeticiones + 1;
  end;
end;

procedure Tfrm_Companias.btnEfecPorTipoVisitaClick(Sender: TObject);
var
  consulta, domicilio, compania, razonSocial, RFC : string;
  repeticiones : Integer;
begin
  //Imprimir grafica en excel de acuerdo a los tipos de visitas que existen, colocando el numero de visitas que se
  //realizaron por cada 'Tipo de Visita'

  if qrybitacoraventas.RecordCount > 0 then
  begin
    excel := CreateOleObject('Excel.Application');
    excel.displayalerts := False;
    excel.workbooks.add;
    libro := excel.workbooks[1];

    compania := zQCompanias.FieldByName('sIdCompania').AsString;
    razonSocial := zQCompanias.FieldByName('sRazonSocial').AsString;
    RFC := zQCompanias.FieldByName('sRFC').AsString;
    domicilio := zQCompanias.FieldByName('sDomicilio').AsString + ' No. ' + zQCompanias.FieldByName('sNumeroInterior').AsString + ' Col. ' +
                  zQCompanias.FieldByName('sColonia').AsString + '. ' + zQCompanias.FieldByName('sCiudad').AsString +
                  ', ' + zQCompanias.FieldByName('sEstado').AsString;
    consulta := 'select * from vta_bitacoradeactividades ' +
                'where sIdCompania = :sIdCompania '        +
                'and iIdTipoVisita = :iIdTipoVisita';
    repeticiones := 1;
    graficarEmpresaActual := True;
    graficarGeneral := False;
    graficarVendedores := False;
    graficarVendedorSeleccionado := False;
    graficarPorRangoDeFechas := False;
    graficarEfectividad(repeticiones, consulta, compania, razonSocial, RFC, domicilio);
  end
  else
  begin
    ShowMessage('No hay registros en la bitacora');
  end;


end;

procedure Tfrm_Companias.btnEfecVendedorActualClick(Sender: TObject);
var
  consulta, domicilio, compania, razonSocial, RFC : string;
  repeticiones : Integer;
begin
  //grafica la efectividad del vendedor seleccionado

  if qrybitacoraventas.RecordCount > 0 then
  begin
    excel := CreateOleObject('Excel.Application');
    excel.displayalerts := False;
    excel.workbooks.add;
    libro := excel.workbooks[1];

    compania := qrybitacoraventas.FieldByName('nombre').AsString;
    razonSocial := 'Efectividad del Vendedor';
    RFC := '';
    domicilio := '';
    consulta := 'select * from vta_bitacoradeactividades ' +
                'where iIdVendedor = :iIdVendedor ' +
                'and iIdTipoVisita = :iIdTipoVisita';
    repeticiones := 1;
    graficarGeneral := False;
    graficarVendedores := False;
    graficarVendedorSeleccionado := True;
    graficarPorRangoDeFechas := False;
    graficarEfectividad(repeticiones, consulta, compania, razonSocial, RFC, domicilio);
  end
  else
  begin
    ShowMessage('No hay registros en la bitacora');
  end;
end;

procedure Tfrm_Companias.btnEfecVendedoresClick(Sender: TObject);
var
  consulta, domicilio, compania, razonSocial, RFC : string;
  repeticiones : Integer;
begin
  //Imprime las graficas e los vendeddores y en que acciones han participado
  excel := CreateOleObject('Excel.Application');    
  excel.displayalerts := False;
  excel.workbooks.add;
  libro := excel.workbooks[1];

  repeticiones := 1;
  zQCompanias.Active := False;
  zQCompanias.Open;
  zQCompanias.First;

  graficarVendedores := True;
  graficarVendedorSeleccionado := False;
  graficarPorRangoDeFechas := False;

  compania := 'Vendedores';
  razonSocial := global_contrato;
  RFC := connection.configuracionVta.FieldByName('sRfc').AsString;
  domicilio := connection.configuracionVta.FieldByName('sDireccion1').AsString + ' ' + connection.configuracionVta.FieldByName('sDireccion2').AsString + ' ' +
  connection.configuracionVta.FieldByName('sDireccion3').AsString + '. ' + connection.configuracionVta.FieldByName('sCiudad').AsString;;
  consulta := 'select * from vta_bitacoradeactividades ' +
              'where iIdTipoVisita = :iIdTipoVisita ' +
              'and sIdCompania = :sIdCompania ' +
              'and sNombre = :sNombre';
  repeticiones := 1;

  graficarEfectividad(repeticiones, consulta, compania, razonSocial, RFC, domicilio);
end;

procedure Tfrm_Companias.btnEfecVendedorPorFechaClick(Sender: TObject);
var
  consulta, domicilio, compania, razonSocial, RFC : string;
  repeticiones : Integer;
begin
  //Grafica la efectividad de los vendedores en un rango de fechas
  excel := CreateOleObject('Excel.Application');    
  excel.displayalerts := False;
  excel.workbooks.add;
  libro := excel.workbooks[1];

  compania := 'Vendedores';
  razonSocial := global_contrato + '. del: ' + DateToStr(cxdtdtInicio.Date) + ' al: ' + DateToStr(cxdtdtFin.Date);
  RFC := connection.configuracionVta.FieldByName('sRfc').AsString;
  domicilio := connection.configuracionVta.FieldByName('sDireccion1').AsString + ' ' + connection.configuracionVta.FieldByName('sDireccion2').AsString + ' ' +
  connection.configuracionVta.FieldByName('sDireccion3').AsString + '. ' + connection.configuracionVta.FieldByName('sCiudad').AsString;;
  consulta := 'select bita.* ' +
              'from vta_bitacoradeactividades bita ' +
              'inner join vta_catvendedores vend ' +
              'on bita.iIdVendedor = vend.iIdVendedor ' +
              'where bita.iIdVendedor = :iIdVendedor ' +
              'and DATE(dIdFecha) BETWEEN :fechaInicio and :fechaFinal ' +
              'group by bita.sIdCompania';
  repeticiones := 1;

  graficarPorRangoDeFechas := True;

  graficarEfectividad2(repeticiones, consulta, compania, razonSocial, RFC, domicilio);
end;

procedure Tfrm_Companias.btnExitClick(Sender: TObject);
begin
  qrybitacoraventas.Filtered:=false;
  detalles.close;
end;

procedure Tfrm_Companias.btnGraficaEfectividadClick(Sender: TObject);
var
  Form : TForm;
begin
  try
    Form := TForm.Create(nil);
    Form.BorderStyle := bsDialog;
    Form.BorderIcons := [ biSystemMenu ];
    Form.Position := poScreenCenter;
    Form.Width := 380;
    Form.Height := 350;
    cxdtdtInicio.Date := Date;
    cxdtdtFin.Date := Date;
    pnlImpresionGrafica.Parent := Form;
    pnlImpresionGrafica.Align := alClient;
    pnlImpresionGrafica.Visible := True;
    Form.ShowModal;
  finally
  end;
end;

procedure Tfrm_Companias.btnImprimirContactosClick(Sender: TObject);
begin
  imprimirContactos;
end;

procedure Tfrm_Companias.btnImprimirTodoClick(Sender: TObject);
begin
    if not FileExists(global_files + global_miReporte + '_CADReporteBitacora.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADReporteBitacora.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;


  ZQResult.SQL.Clear;                                         //RRT 12/09/2013: Limpia la tabla
  ZQResult.SQL.Add('select bta.*, ccp.sIdCompaniaConf from vta_bitacoradeactividades bta '+
                    'inner join con_companias  ccp on (bta.sIdCompania = ccp.sIdCompania) ' +
                    'where DATE(bta.dIdFecha) BETWEEN :fechaInicio and :fechaFinal ' +
                    'order by sIdCompania');//RRT 12/09/2013: Agrega consulta
  ZQResult.Params.ParamByName('fechaInicio').AsDate := cxdtdtInicio2.Date;
  ZQResult.Params.ParamByName('fechaFinal').AsDate := cxdtdtFin2.Date;
  ZQResult.ExecSQL;
  ZQResult.Active:=false;
  ZQResult.Open;
  DSBitacora1.DataSet := nil;
  DSBitacora1.DataSet := ZQResult;
  If ZQResult.RecordCount > 0 Then
  begin
    frxBitacoraCompleta.LoadFromFile(global_files + global_miReporte + '_CADReporteBitacora.fr3') ;
    frxBitacoraCompleta.ShowReport();
    imprimir.Close;                                                          //RRT 12/09/2013: cierra la forma temporal
  end else MessageDlg('No hay registros que imprimir!!', mtInformation, [mbOk], 0); //RRT 12/09/2013: Si la tabla esta vacia muestra un mensaje
end;

procedure Tfrm_Companias.btnPostClick(Sender: TObject);
var
  zqryInsertarBitacora, zqryEditarBitacora : TZQuery;
begin
  try
   if cxSResponsable.Text='' then
   begin
      MessageDlg('El nombre del responsable es un dato requerido!!', mtError, [mbOk], 0);
      cxSResponsable.SetFocus;
      Exit;
   end;
   if mResumen.Text='' then
   begin
      MessageDlg('El resumen es un dato requerido!!', mtError, [mbOk], 0);
      mResumen.SetFocus;
      Exit;
   end;
   if mAsunto.Text='' then
   begin
      MessageDlg('El asunto es un dato requerido!', mtError, [mbOk], 0);
      mAsunto.SetFocus;
      Exit;
   end;

   if True then

   if accion = 'Nuevo' then
   begin
      zqryInsertarBitacora := TZQuery.Create(Self);
      zqryInsertarBitacora.Connection := connection.zConnection;
      zqryInsertarBitacora.Active := False;
      zqryInsertarBitacora.SQL.Text := 'insert into vta_bitacoradeactividades(iid, sIdCompania, iIdTipoVisita, dIdFecha, mResumen, mAsunto, sResponsable, iIdVendedor) ' +
                                        'values(:iid, :sIdCompania, :iIdTipoVisita, :dIdFecha, :mResumen, :mAsunto, :sResponsable, :iIdVendedor)';

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(iid) as id FROM vta_bitacoradeactividades;');
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then begin
         zqryInsertarBitacora.Params.ParamByName('iid').AsInteger := (connection.QryBusca.FieldByName('id').AsInteger + 1);
      end else begin
         zqryInsertarBitacora.Params.ParamByName('iid').AsInteger := 1;
      end;

      zqryInsertarBitacora.Params.ParamByName('sIdCompania').AsString := zQCompanias.FieldByName('sIdCompania').AsString;
      zqryInsertarBitacora.Params.ParamByName('iIdTipoVisita').AsInteger := StrToInt(cbbTipoVisita.KeyValue);

      //Seleccionar sNombre del vendedor de la compania en la que se esta, para que no aparezca dos o mas veces
      //si es que se dio de alta a ese mismo vendedor en otra compania
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT sNombre from vta_catvendedores where sNombre = :sNombre and sIdCompania = :sIdCompania');
      connection.QryBusca.Params.ParamByName('sNombre').AsString := cbbVendedor.KeyValue;
      connection.QryBusca.Params.ParamByName('sIdCompania').AsString := connection.contrato.FieldByName('sContrato').AsString;
      connection.QryBusca.Open;

      //zqryInsertarBitacora.Params.ParamByName('sNombre').AsString := cbbVendedor.KeyValue;
      zqryInsertarBitacora.Params.ParamByName('dIdFecha').AsDateTime := tdbFecha.Date;
      zqryInsertarBitacora.Params.ParamByName('mResumen').AsString := mResumen.Text;
      zqryInsertarBitacora.Params.ParamByName('mAsunto').AsString := mAsunto.Text;
      zqryInsertarBitacora.Params.ParamByName('sResponsable').AsString := cxSResponsable.Text;
      zqryInsertarBitacora.Params.ParamByName('iIdVendedor').AsInteger := cbbVendedor.KeyValue;
      zqryInsertarBitacora.ExecSQL;

      qrybitacoraventas.Refresh;

     frmbr1.btnPostClick(Sender);
     cambio_stado;
   end else if Accion = 'Editar' then
   begin
     //Editar el registro
     zqryEditarBitacora := TZQuery.Create(Self);
     zqryEditarBitacora.Connection := connection.zConnection;
     zqryEditarBitacora.Active := False;
     zqryEditarBitacora.SQL.Clear;
     zqryEditarBitacora.SQL.Add('UPDATE vta_bitacoradeactividades SET iIdTipoVisita = :iIdTipoVisita, ' +
                                    'dIdFecha = :dIdFecha, mResumen = :mResumen, mAsunto = :mAsunto, sResponsable = :sResponsable, iIdVendedor = :iIdVendedor ' +
                                    'where iid = :iid');
     zqryEditarBitacora.Params.ParamByName('iIdTipoVisita').AsInteger := StrToInt(cbbTipoVisita.KeyValue);
     zqryEditarBitacora.Params.ParamByName('dIdFecha').AsDateTime := tdbFecha.Date;
     zqryEditarBitacora.Params.ParamByName('mResumen').AsString := mResumen.Text;
     zqryEditarBitacora.Params.ParamByName('mAsunto').AsString := mAsunto.Text;
     zqryEditarBitacora.Params.ParamByName('sResponsable').AsString := cxSResponsable.Text;
     zqryEditarBitacora.Params.ParamByName('iIdVendedor').AsInteger := cbbVendedor.KeyValue;
     zqryEditarBitacora.Params.ParamByName('iid').AsInteger := qrybitacoraventas.FieldByName('iid').AsInteger;
     zqryEditarBitacora.ExecSQL;
     qrybitacoraventas.Refresh;
   end;

   accion := '';

  except
    On E: Exception do begin
      ShowMessage(E.Message);
    end;
  end;

  deshabilitarCombos;
  frmbr1.btnCancelClick(Sender);
end;

procedure Tfrm_Companias.btnPrinterClick(Sender: TObject);
begin
  btn1.Caption           := 'Imprimir todo de ' + global_contrato;
  imprimir              := TForm.Create(nil);
  pnl1.Height           :=160;
  pnl1.Width            :=240;
  imprimir.Caption      :='Imprimir';
  pnl1.Parent           := imprimir;
  imprimir.Top          := 212;
  imprimir.Left         := 262;
  imprimir.Height       := 260;
  imprimir.Width        := 285;
  imprimir.BorderStyle  := bsSingle;
  imprimir.Position     := poScreenCenter;
  imprimir.ShowHint     := True;
  pnl1.Visible          := True;
  pnl1.Align            := alClient;
  imprimir.AutoSize     :=True;
  imprimir.BorderIcons  := [biSystemMenu];
  imprimir.ShowMOdal;
end;

procedure Tfrm_Companias.btnPrintPerClick(Sender: TObject);
var
  printComp : TForm;
  after : TDataSetNotifyEvent;
begin
  if zqCompanias.RecordCount > 0 then
  begin
    after := zqCompanias.AfterScroll;
    zqCompanias.AfterScroll := nil;
    dbgrd_catClientes.DataController.DataSource.DataSet := nil;
    zqCompanias.First;
    chklstCompanias.Items.Clear;
    while not zqCompanias.Eof do
    begin
      chklstCompanias.Items.Add(zqCompanias.FieldByName('sIdCompania').AsString);
      zqCompanias.Next;
    end;
    dbgrd_catClientes.DataController.DataSource.DataSet := zqCompanias;
    zqCompanias.AfterScroll := after;

    grpchkImprimir.Buttons[0].Checked :=  True;
    prgImprimirComp.Maximum := 0;
    prgImprimirComp.Position := 0;
    prgImprimirComp.Refresh;

    pnlImprimirCompanias.visible          :=true;
    pnlImprimirCompanias.enabled          :=true;
    printComp                             := TForm.Create(nil);
    pnlImprimirCompanias.Width            :=350;
    pnlImprimirCompanias.Height           :=360;
    printComp.Caption                     :='';
    pnlImprimirCompanias.Parent           := printComp;
    printComp.Top                         := 58;
    printComp.Left                        := 302;
    printComp.Width                       := 350;
    printComp.Height                      := 360;
    printComp.BorderStyle                 := bsSingle;
    printComp.Position                    := poMainFormCenter;
    printComp.ShowHint                    := True;
    pnlImprimirCompanias.Visible          := True;
    pnlImprimirCompanias.Align            := alClient;
    printComp.AutoSize                    :=True;
    printComp.BorderIcons                 := [biSystemMenu];
    printComp.ShowMOdal;
  end
  else
    MessageDlg('No hay Clientes que imprimir',mtInformation, [mbOk], 0);
end;

procedure Tfrm_Companias.btnRefreshClick(Sender: TObject);
begin
  qrybitacoraventas.Active:=false;
  qrybitacoraventas.Open;
end;

procedure Tfrm_Companias.btnResumenCompaniasClick(Sender: TObject);
var
  consulta, domicilio, compania, razonSocial, RFC : string;
  repeticiones : Integer;
begin
  //Grafica a los vendedores y el total de companias en las cuales ha participado
  excel := CreateOleObject('Excel.Application');    
  excel.displayalerts := False;
  excel.workbooks.add;
  libro := excel.workbooks[1];

  compania := 'Vendedores';
  razonSocial := global_contrato;
  RFC := connection.configuracionVta.FieldByName('sRfc').AsString;
  domicilio := connection.configuracionVta.FieldByName('sDireccion1').AsString + ' ' + connection.configuracionVta.FieldByName('sDireccion2').AsString + ' ' +
  connection.configuracionVta.FieldByName('sDireccion3').AsString + '. ' + connection.configuracionVta.FieldByName('sCiudad').AsString;;
  consulta := 'select bita.* ' +
              'from vta_bitacoradeactividades bita ' +
              'inner join vta_catvendedores vend ' +
              'on bita.iIdVendedor = vend.iIdVendedor ' +
              'where bita.iIdVendedor = :iIdVendedor ' +
              'group by bita.sIdCompania';
  repeticiones := 1;

  graficarPorRangoDeFechas := False;

  graficarEfectividad2(repeticiones, consulta, compania, razonSocial, RFC, domicilio);
end;

procedure Tfrm_Companias.btnSalirClick(Sender: TObject);
begin
  mapa.Close;
end;

procedure Tfrm_Companias.ButtonClearMarkersClick(Sender: TObject);
begin
  HTMLWindow2.execScript('ClearMarkers()', 'JavaScript');
end;

procedure Tfrm_Companias.ButtonGotoAddressClick(Sender: TObject);
var address    : string;
begin
   address := MemoAddress.Lines.Text;
   address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);
   HTMLWindow2.execScript(Format('codeAddress(%s)',[QuotedStr(address)]), 'JavaScript');
end;

procedure Tfrm_Companias.ButtonGotoLocationClick(Sender: TObject);
begin
  //HTMLWindow2.execScript(Format('GotoLatLng(%s,%s)',[Latitude.Text,Longitude.Text]), 'JavaScript');
end;

procedure Tfrm_Companias.chkMostrarContactosClick(Sender: TObject);
begin
  if chkMostrarContactos.Checked then
  begin
    qrContactos.Active := False;
    qrContactos.SQL.Clear;
    qrContactos.SQL.Add('select * from vta_contactosxcompania '+
                        'where sIdCompaniaConf = :contrato '+
                        'and (dIdFecha >= :fechaI and dIdFecha <= :fechaF)');
    qrContactos.ParamByName('contrato').AsString := global_contrato;
    qrContactos.ParamByName('fechaI').AsString := formatoFecha(tdFechaContactosInicio.Date);
    qrContactos.ParamByName('fechaF').AsString := formatoFecha(tdFechaContactosFinal.Date);
    qrContactos.Open;

    GridCompaniasCont.Visible := False;
  end
  else
  begin
    qrContactos.Active := False;
    qrContactos.SQL.Clear;
    qrContactos.SQL.Add('select * from vta_contactosxcompania '+
                        'where sIdCompaniaConf = :contrato '+
                        'and sIdCompania = :compania '+
                        'and (dIdFecha >= :fechaI and dIdFecha <= :fechaF)');
    qrContactos.ParamByName('contrato').AsString := global_contrato;
    qrContactos.ParamByName('compania').AsString := zQCompanias.FieldByName('sIdCompania').AsString;
    qrContactos.ParamByName('fechaI').AsString := formatoFecha(tdFechaContactosInicio.Date);
    qrContactos.ParamByName('fechaF').AsString := formatoFecha(tdFechaContactosFinal.Date);
    qrContactos.Open;

    GridCompaniasCont.Visible := True;
  end;
end;

procedure Tfrm_Companias.chkTodosContactosClick(Sender: TObject);
var
  x : integer;
begin
  for x := 0 to lstchkContactos.Items.Count - 1 do
    lstchkContactos.Items.Items[x].Checked := chkTodosContactos.Checked;
end;

procedure Tfrm_Companias.cxButton1Click(Sender: TObject);
var aStream     : TMemoryStream;
  address    : string;
begin
  pnlMapa.visible :=true;
  mapa            := TForm.Create(nil);
  pnlMapa.Height  :=480;
  pnlMapa.Width   :=770;
  mapa.Caption:='Ubicación del cliente';
  pnlMapa.Parent  := mapa;
  mapa.Top        := 58;
  mapa.Left       := 302;
  mapa.Width      := 780;
  mapa.Height     := 590;
  mapa.BorderStyle:= bsSingle;
  mapa.Position   := poScreenCenter;
  mapa.ShowHint   := True;
  pnlMapa.Visible       := True;
  pnlMapa.Align         := alClient;
  mapa.AutoSize   :=True;
  mapa.BorderIcons:= [biSystemMenu];
  mapa.Show;
  MemoAddress.Lines.Clear;
  MemoAddress.Lines.add(zqCompanias.FieldByName('sDomicilio').asString+' ');
  MemoAddress.Lines.add(zqCompanias.FieldByName('sCiudad').asString+', ');
  MemoAddress.Lines.add(zqCompanias.FieldByName('sEstado').asString+'');
//  WebBrowser1.Navigate('about:blank');
//  if Assigned(WebBrowser1.Document) then
//  begin
//    aStream := TMemoryStream.Create;
//    try
//       aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
//       aStream.Seek(0, soFromBeginning);
//       (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(aStream));
//    finally
//       aStream.Free;
//    end;
//    HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;
//  end;
end;

procedure Tfrm_Companias.cxDBExtLookupComboBox1PropertiesInitPopup(
  Sender: TObject);
begin
  frmRepositorio.zq_estados.Active:=False;
  frmRepositorio.zq_estados.Open;
end;

procedure Tfrm_Companias.cxdtdtFin2Enter(Sender: TObject);
begin
  cxdtdtFin2.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cxdtdtFin2Exit(Sender: TObject);
begin
  cxdtdtFin2.Style.Color := $00F0F0F0;
end;

procedure Tfrm_Companias.cxdtdtFinEnter(Sender: TObject);
begin
  cxdtdtFin.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cxdtdtFinExit(Sender: TObject);
begin
  cxdtdtFin.Style.Color := $00F0F0F0;
end;

procedure Tfrm_Companias.cxdtdtInicio2Enter(Sender: TObject);
begin
  cxdtdtInicio2.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cxdtdtInicio2Exit(Sender: TObject);
begin
  cxdtdtInicio2.Style.Color := $00F0F0F0;
end;

procedure Tfrm_Companias.cxdtdtInicioEnter(Sender: TObject);
begin
  cxdtdtInicio.Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cxdtdtInicioExit(Sender: TObject);
begin
  cxdtdtInicio.Style.Color := $00F0F0F0;
end;

procedure Tfrm_Companias.cxSResponsableEnter(Sender: TObject);
begin
  cxSResponsable.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cxSResponsableExit(Sender: TObject);
begin
  cxSResponsable.Color := clWindow;
end;

procedure Tfrm_Companias.cxSResponsableKeyPress(Sender: TObject; var Key: Char);
begin
  if (accion = 'Nuevo') or (accion = 'Editar') then
  begin
    if Key = #13 then
    begin
      TDBFecha.SetFocus;
    end;
  end;
end;


//Para el filtrado por tipo de cliente
procedure Tfrm_Companias.TiposClientesClick(Sender: TObject);
begin
   zQCompanias.Active := False ;
   zqCompanias.SQL.Clear ;
   zqCompanias.SQL.Add('select * from con_companias where sIdCompaniaConf = :compania '); //Se seleccionan todos los registros
   zqCompanias.ParamByName('compania').AsString := global_contrato;
   if TiposClientes.Text<>'TODOS' then                                 //Si el combobox es diferente de vacio
      zqCompanias.SQL.Add('and lStatus = "'+TiposClientes.Text+'" '); //agrega el tipo de cliente
   zqCompanias.SQL.Add('Order by sRazonSocial');                        //lo ordena por razon social
   zQCompanias.Open ;
end;

procedure Tfrm_Companias.TiposClientesPropertiesCloseUp(Sender: TObject);
begin
  cxgrd1.setfocus;
end;

procedure Tfrm_Companias.dbContactoEnter(Sender: TObject);
begin
  dbContacto.Style.Color := Global_Color_Entrada ;
end;

procedure Tfrm_Companias.dbContactoExit(Sender: TObject);
begin
  dbContacto.Style.Color := Global_Color_Salida ;
end;

procedure Tfrm_Companias.dbContactoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbTelefono2.SetFocus;
end;

procedure Tfrm_Companias.dbCorreoContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    dbPuestoContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbCuidadContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    dbPuestoContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbDomicilioContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    dbCorreoContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbDomicilioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbnumExt.SetFocus;
end;

procedure Tfrm_Companias.dbgrdGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  cxSResponsable.Text := qrybitacoraventas.FieldByName('sResponsable').AsString;
  mResumen.Text := qrybitacoraventas.FieldByName('mResumen').AsString;
  mAsunto.Text := qrybitacoraventas.FieldByName('mAsunto').AsString;
  cbbTipoVisita.KeyValue := qrybitacoraventas.FieldByName('iIdTipoVisita').AsInteger;
  cbbVendedor.KeyValue := qrybitacoraventas.FieldByName('iIdVendedor').AsString;
end;

procedure Tfrm_Companias.dbIdCompaniaEnter(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
    (Sender as tcxdbtextedit).Style.Color := global_color_entradaERP;
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := global_color_entradaERP;
  if (Sender is tcxdbcalcedit) then
    (Sender as tcxdbcalcedit).Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.dbIdCompaniaExit(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
    (Sender as tcxdbtextedit).Style.Color := clWindow;
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := clWindow;
  if (Sender is tcxdbcalcedit) then
    (Sender as tcxdbcalcedit).Style.Color := clWindow;
end;

procedure Tfrm_Companias.dbIdCompaniaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbRFC.SetFocus;
end;

procedure Tfrm_Companias.dbLocalidadKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbMunicipio.SetFocus;
end;

procedure Tfrm_Companias.dbMovilContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    dbDomicilioContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbMunicipioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    dbCuidad.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbNombreContactoEnter(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
    (Sender as tcxdbtextedit).Style.Color := $00FDDC86;
  if (Sender is tcxdbmemo) then
    (Sender as tcxdbmemo).Style.Color := $00FDDC86;
  if (Sender is tcxcombobox) then
    (Sender as tcxcombobox).Style.Color := $00FDDC86;
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := $00FDDC86;
end;

procedure Tfrm_Companias.dbNombreContactoExit(Sender: TObject);
begin
  if (Sender is tcxdbtextedit) then
    (Sender as tcxdbtextedit).Style.Color := clWindow;
  if (Sender is tcxdbmemo) then
    (Sender as tcxdbmemo).Style.Color := clWindow;
  if (Sender is tcxcombobox) then
    (Sender as tcxcombobox).Style.Color := clWindow;
  if (Sender is tcxdbcombobox) then
    (Sender as tcxdbcombobox).Style.Color := clWindow;
end;

procedure Tfrm_Companias.dbNombreContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    dbTelfContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbNumExtKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbNumInt.SetFocus;
end;

procedure Tfrm_Companias.dbNumIntKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbLocalidad.SetFocus;
end;

procedure Tfrm_Companias.dbPuestoContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    dbRFCContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbRazonKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then
    dbDomicilio.SetFocus;
end;

procedure Tfrm_Companias.dbRFCContactoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbStatusContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.dbRFCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbRazon.SetFocus;
end;

procedure Tfrm_Companias.dbStatusContactoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdContactoFecha.SetFocus;
end;

procedure Tfrm_Companias.dbTelefono2Enter(Sender: TObject);
begin
  dbTelefono2.Style.Color := Global_Color_Entrada ;
end;

procedure Tfrm_Companias.dbTelefono2Exit(Sender: TObject);
begin
   dbTelefono2.Style.Color := Global_Color_Salida ;
end;

procedure Tfrm_Companias.dbTelfContactoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbMovilContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.deshabilitarCombos;
begin
  //Deshabilita los combos cbbTipoVisita y cbbVendedor
  cbbTipoVisita.Enabled := False;
  cbbVendedor.Enabled := False;
  btnCatalogoTipoVisita.Enabled := False;
  btnCatalogoVendedores.Enabled := False;
end;

procedure Tfrm_Companias.cambio_stado1;
begin
   if zQCompanias.state in [dsBrowse] then
   begin
      Datos.ActivePageIndex:=0;
      dxInsertar2.Enabled   :=True;
      dxEditar2.Enabled     :=True;
      dxGuardar2.Enabled    :=False;
      dxCancelar2.Enabled   :=False;
      dxEliminar2.Enabled   :=True;
      dxImprimir2.Enabled   :=True;
      dxRefrescar2.Enabled  :=True;
      dxSalir2.Enabled      :=True;
      cxgrd1.Enabled        :=true;
      TiposClientes.enabled :=True;
      dbStatus.enabled      :=false;
      dxVerDetalles.Enabled :=True;
      VerUbicacion.Enabled :=True;
   end else if zQCompanias.state in [dsInsert,dsEdit] then
   begin
      Datos.ActivePageIndex:=1;
      dxInsertar2.Enabled   :=False;
      dxEditar2.Enabled     :=False;
      dxGuardar2.Enabled    :=True;
      dxCancelar2.Enabled   :=True;
      dxEliminar2.Enabled   :=False;
      dxImprimir2.Enabled   :=False;
      dxRefrescar2.Enabled  :=False;
      dxSalir2.Enabled      :=False;
      cxgrd1.Enabled        :=false;
      TiposClientes.enabled :=false;
      dbStatus.enabled      :=true;
      dxVerDetalles.Enabled :=false;
      VerUbicacion.Enabled     :=false
   end;
end;

procedure Tfrm_Companias.cbbTipoVisitaEnter(Sender: TObject);
begin
  cbbTipoVisita.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cbbTipoVisitaExit(Sender: TObject);
begin
  cbbTipoVisita.Color := clWindow;
end;

procedure Tfrm_Companias.cbbTipoVisitaKeyPress(Sender: TObject; var Key: Char);
begin
  if (accion = 'Nuevo') or (accion = 'Editar') then
  begin
    if Key = #13 then
    begin
      cbbVendedor.SetFocus;
    end;
  end;
end;

procedure Tfrm_Companias.cbbVendedorEnter(Sender: TObject);
begin
  cbbVendedor.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.cbbVendedorExit(Sender: TObject);
begin
  cbbVendedor.Color := clWindow;
end;

procedure Tfrm_Companias.cbbVendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if (accion = 'Nuevo') or (accion = 'Editar') then
  begin
    if Key = #13 then
    begin
      mResumen.SetFocus;
    end;
  end;
end;

procedure Tfrm_Companias.cbClientesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbNombreContacto.SetFocus;
  end;
end;

procedure Tfrm_Companias.CheckBoxBicyclingClick(Sender: TObject);
begin
  if CheckBoxBicycling.Checked then
     HTMLWindow2.execScript('BicyclingOn()', 'JavaScript')
    else
     HTMLWindow2.execScript('BicyclingOff()', 'JavaScript');
end;

procedure Tfrm_Companias.CheckBoxStreeViewClick(Sender: TObject);
begin
  if CheckBoxStreeView.Checked then
     HTMLWindow2.execScript('StreetViewOn()', 'JavaScript')
    else
     HTMLWindow2.execScript('StreetViewOff()', 'JavaScript');
end;

procedure Tfrm_Companias.CheckBoxTrafficClick(Sender: TObject);
begin
   if CheckBoxTraffic.Checked then
     HTMLWindow2.execScript('TrafficOn()', 'JavaScript')
    else
     HTMLWindow2.execScript('TrafficOff()', 'JavaScript');
end;

procedure Tfrm_Companias.cambio_stado;
begin
   if qrybitacoraventas.state in [dsBrowse] then
   begin
      dxInsertar1.Enabled   :=True;
      dxEditar1.Enabled     :=True;
      dxGuardar1.Enabled    :=False;
      dxCancelar1.Enabled   :=False;
      dxEliminar1.Enabled   :=True;
      dxImprimir1.Enabled   :=True;
      dxRefrescar1.Enabled  :=True;
      dxSalir1.Enabled      :=True;
      cxgrd2.Enabled        :=true;
   end else if qrybitacoraventas.state in [dsInsert,dsEdit] then

   begin
      dxInsertar1.Enabled   :=False;
      dxEditar1.Enabled     :=False;
      dxGuardar1.Enabled    :=True;
      dxCancelar1.Enabled   :=True;
      dxEliminar1.Enabled   :=False;
      dxImprimir1.Enabled   :=False;
      dxRefrescar1.Enabled  :=False;
      dxSalir1.Enabled      :=False;
      cxgrd2.Enabled        :=false;
   end;
end;

procedure Tfrm_Companias.dxInsertar1Click(Sender: TObject);
begin
   frmbr1.btnAdd.Click;
end;

procedure Tfrm_Companias.dxInsertar2Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click;
end;

procedure Tfrm_Companias.dxEditar1Click(Sender: TObject);
begin
   frmbr1.btnEdit.Click;
end;

procedure Tfrm_Companias.dxEditar2Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click;
end;

procedure Tfrm_Companias.dxGuardar1Click(Sender: TObject);
begin
   frmbr1.btnPost.Click;
end;

procedure Tfrm_Companias.dxGuardar2Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click;
end;

procedure Tfrm_Companias.dxVerDetallesClick(Sender: TObject);
begin
  deshabilitarCombos;

  //Abrir la consulta que trae los vendedores
  qrCatVendedores.Active := False;
  qrCatVendedores.ParamByName('compania').AsString := global_contrato;
  qrCatVendedores.Open;

  zqryTiposDeVisitas.Active := False;
  zqryTiposDeVisitas.Open;

  panel.visible    :=true;
  panel.enabled    :=true;
  qrybitacoraventas.Active:=false;
  qrybitacoraventas.Params.ParamByName('sIdCompania').AsString := connection.contrato.FieldByName('sContrato').AsString;
  qrybitacoraventas.Open;
  qrybitacoraventas.first;
  qrybitacoraventas.Filter:= 'sidCompania='+QuotedStr(zQCompanias.FieldByName('sIdCompania').AsString);
  qrybitacoraventas.Filtered:=True;
  detalles            := TForm.Create(nil);
  Panel.Width         :=870;
  Panel.Height        :=473;
  detalles.Caption:='Bitacora de Clientes Prospectos/Potenciales/intermedios';
  Panel.Parent        := detalles;
  detalles.Top        := 58;
  detalles.Left       := 302;
  detalles.Width      := 1000;
  detalles.Height     := 503;
  detalles.BorderStyle:= bsSingle;
  detalles.Position   := poMainFormCenter;
  detalles.ShowHint   := True;
  Panel.Visible       := True;
  Panel.Align         := alClient;
  detalles.AutoSize   :=True;
  detalles.BorderIcons:= [biSystemMenu];
  cambio_stado;
  cxSResponsable.Text := global_nombre;

  mResumen.Text := qrybitacoraventas.FieldByName('mResumen').AsString;
  mAsunto.Text := qrybitacoraventas.FieldByName('mAsunto').AsString;
  cbbTipoVisita.KeyValue := IntToStr(qrybitacoraventas.FieldByName('iIdTipoVisita').AsInteger);
  cbbVendedor.KeyValue := qrybitacoraventas.FieldByName('iIdVendedor').AsString;

  detalles.ShowMOdal; 
end;

procedure Tfrm_Companias.dxCancelar1Click(Sender: TObject);
begin
   frmbr1.btnCancel.Click;
end;

procedure Tfrm_Companias.dxCancelar2Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
end;

procedure Tfrm_Companias.dxEliminar1Click(Sender: TObject);
begin
   frmbr1.btnDelete.Click;
end;

procedure Tfrm_Companias.dxEliminar2Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click;
end;

procedure Tfrm_Companias.dxSalir1Click(Sender: TObject);
begin
   frmbr1.btnExit.Click;
end;

procedure Tfrm_Companias.dxSalir2Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click;
end;

procedure Tfrm_Companias.dxRefrescar1Click(Sender: TObject);
begin
   frmbr1.btnRefresh.Click;
end;

procedure Tfrm_Companias.dxRefrescar2Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click;
end;

procedure Tfrm_Companias.dxImprimir1Click(Sender: TObject);
begin
   frmbr1.btnPrinter.Click;
end;

procedure Tfrm_Companias.dxImprimir2Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click;
end;

procedure Tfrm_Companias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_CompaniasAbierto := False;
  action := cafree ;
  Try
      if bandera_formulario= 'frm_Depositoscias' then
      begin
        bandera_formulario := '';
        frm_Depositoscias.qryCompanias.refresh;
        frm_Depositoscias.zQEgresos.FieldByName('sIdCompania').AsString    :=  zQCompanias.fieldbyname('sIdCompania').AsString;
      end;

      if global_frmActivo = 'frm_ordenes' then
      begin
        frmordenes.zQClientes.Refresh;
        frmordenes.tsCliente.DataBinding.DataSource.DataSet.FieldByName('sIdCompania').AsString :=zQCompanias.fieldbyname('sIdCompania').AsString;
        global_frmActivo := '';
      end;
  Except
  End;
end;

procedure Tfrm_Companias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure Tfrm_Companias.FormShow(Sender: TObject);
(*Modifica:12/09/2013 Modifico:Rafael Ramirez Tadeo
Descripcion:Se agrega funcion para que cargen los datos al combobox*)
begin
  frm_CompaniasAbierto := True;

//  zqryTiposDeVisitas.Active := False;
//  zqryTiposDeVisitas.Open;

//  connection.configuracionVta.Active := False;
//  connection.configuracionVta.SQl.Clear;
//  connection.ConfiguracionVta.SQL.Add('select * from vta_configuracion where sNombreCorto = :contrato');
//  connection.ConfiguracionVta.ParamByName('contrato').AsString := global_contrato;
//  connection.ConfiguracionVta.Open;
  
//  try
    dbgrd_catClientes.DataController.DataSource.DataSet := nil;
    zqCompanias.Active := False;
    zqCompanias.ParamByName('compania').AsString := global_contrato;
    zQCompanias.Open ;
    ZQTiposClientes.SQL.Clear;                                                     //RRT 12/09/2013: Se limpian el query
    ZQTiposClientes.SQL.Add('select stipo from tiposclientes');                    //RRT 12/09/2013: Se agrega consulta al query
    ZQTiposClientes.ExecSQL;                                                       //RRT 12/09/2013: Se ejecuta la consulta
    ZQTiposClientes.Open;                                                          //RRT 12/09/2013: Se abre la consulta
    ZQTiposClientes.first;                                                         //RRT 12/09/2013: Se posiciona en el primer registro
    TiposClientes.Properties.Items.Add('TODOS');                                                   //RRT 12/09/2013: Se agrega un posicion vacia en el comboboc
    while not ZQTiposClientes.Eof do                                               //RRT 12/09/2013: Se valida que sea el final del archivo
    begin
      dbStatus.Properties.Items.Add(ZQTiposClientes.FieldByName('stipo').asString);           //RRT 12/09/2013: Se agrega item al combobox del estatus
      TiposClientes.Properties.Items.Add(ZQTiposClientes.FieldByName('stipo').asString);      //RRT 12/09/2013: Se agrega item al combobox para el filtro
      ZQTiposClientes.next;                                                        //RRT 12/09/2013: Se pasa al siguiente registro
    end;
    TiposClientes.ItemIndex:=0;
    cambio_stado1;

    dbgrd_catClientes.DataController.DataSource.DataSet := zQCompanias                                                                  //RRt 12/09/2013: Se manda a llamar al metodo para que se activen los botones del radial segun el estado de la tabla
//  except
//
//  end;
end;

procedure Tfrm_Companias.frmBarra1btnAddClick(Sender: TObject);
var
  x : integer;
begin
  //Deshabilitar Botones que no deben habilitarse
  btnPrintPer.Enabled := False;
  btnContactos.Enabled := False;
  cxButton1.Enabled := False;
  btnDetallesProspecto.Enabled := False;

  zQCompanias.Append;
  frmBarra1.btnAddClick(Sender);
  cambio_stado1;


  for x := 1 to cxTabSheet2.ControlCount - 1 do
  begin
    if (cxTabSheet2.Controls[x] is tcxdbtextedit) then
    begin
      (cxTabSheet2.Controls[x] as tcxdbtextedit).Text := '*';
    end;
  end;

  dbStatus.Text := 'Activo';
  dbIdCompania.SetFocus;
end;

procedure Tfrm_Companias.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  btnPrintPer.Enabled := True;
  btnContactos.Enabled := True;
  cxButton1.Enabled := True;
  btnDetallesProspecto.Enabled := True;
  zqCompanias.Cancel;
  cambio_stado1;
end;

procedure Tfrm_Companias.frmBarra1btnDeleteClick(Sender: TObject);
var
  compania : string;
begin
  If zQCompanias.RecordCount  > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
//      try
         compania := zqCompanias.FieldByName('sIdCompania').AsString;
         Connection.QryBusca.Active := False ;
         Connection.qryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('select * from con_cuentasbancarias ccb '+
                                      'inner join con_tesoreriaegresos cte on (ccb.sIdNumeroCuenta = cte.sIdNumeroCuenta) '+
                                      'where ccb.sIdCompaniaConf = :contrato '+
                                      'and cte.sIdCompania = :cliente');
         connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
         connection.QryBusca.ParamByName('cliente').AsString := compania;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('No se puede eliminar la compania '+ compania +' resgistrada en '+ global_contrato +', existen movimientos activos.', mtInformation, [mbOk], 0)
         Else
         begin
            zQCompanias.Delete;
            connection.zCommand.Active := False;
            connection.zCommand.SQl.Clear;
            connection.zCommand.SQL.Add('insert into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) '+
                                        'values (:contrato, :usuario, :fecha, :hora, :descripcion, :origen) ');
            connection.zcommand.ParamByName('contrato').AsString := global_contrato;
            connection.zcommand.ParamByName('usuario').AsString := global_usuario;
            connection.zcommand.ParamByName('fecha').AsDate := sysutils.Now;
            connection.zCommand.ParamByName('hora').AsString := Copy(sysutils.TimeToStr(sysutils.Time),1,8);
            connection.zcommand.parambyName('descripcion').AsString := 'se elimino la compania ' + compania;
            connection.zCommand.parambyname('origen').AsString := 'Otros Movimientos';
            connection.zcommand.ExecSQL;
         end;

//      except
//        //MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
//      end;
    end;
  end else MessageDlg('No hay registro que Eliminar!!', mtError, [mbOk], 0);;
end;

procedure Tfrm_Companias.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQCompanias.RecordCount > 0 Then
  begin
      btnPrintPer.Enabled := False;
      btnContactos.Enabled := False;
      cxButton1.Enabled := False;
      btnDetallesProspecto.Enabled := False;
      zQCompanias.Edit ;
      companiaAnt := zQCompanias.FieldByName('sIdCompania').AsString;
      cambio_stado1;
      dbIdCompania.SetFocus;
  end else MessageDlg('No hay registro que modificar!!', mtError, [mbOk], 0);;
end;

procedure Tfrm_Companias.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_Companias.frmBarra1btnPostClick(Sender: TObject);
Var
  ProveedorTimbrado: TPFPac;
  Credenciales: TPFCredenciales;
  //CertificadoSAT: TPFCertificadoSAT;
  Respuesta: TStringList;

  Ruta_Certificado,
  Ruta_Llave: String;
  
  Certificadob64, Llaveb64: String;
  TextoCertificado, TextoLlave: String;
  F: TFileStream;
  strLinea: String;
  ch: Char;
  Excepcion: Boolean;
begin
  if zqcompanias.State in [dsInsert] then
    zqCompanias.FieldByName('sIdCompaniaConf').AsString := global_contrato;
  if zQCompanias.State in [dsEdit] then
  begin
    actualizarRelacionadoXCompania(zQCompanias.FieldByName('sIdCompania').AsString, companiaAnt);
  end;

  zQCompanias.Post ;

  frmBarra1.btnPostClick(Sender);
  zqCompanias.Refresh ;
  cambio_stado1;

  try
      if Assigned(frmOrdenes) then
      begin
        frmOrdenes.zQClientes.Active:=False;
        frmOrdenes.zQClientes.Open;
        frmOrdenes.tsCliente.DataBinding.DataSource.DataSet.FieldByName('sIdCompania').AsString := zQCompanias.FieldValues['sIdCompania'];
        frmOrdenes.tsCliente.SetFocus;
        Close;
      end;
  Except
  end;

  btnPrintPer.Enabled := True;
  btnContactos.Enabled := True;
  cxButton1.Enabled := True;
  btnDetallesProspecto.Enabled := True;
end;

procedure Tfrm_Companias.frmBarra1btnPrinterClick(Sender: TObject);
(*Creada:12/09/2013 Creo:Rafael Ramirez Tadeo
Descripcion:Imprime la lista de las empresas *)
begin
  if not FileExists(global_files + global_miReporte + '_CADReportesClientes.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_CADReportesClientes.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;
   If zQCompanias.RecordCount > 0 Then   //RRT 12/09/2013: Valida que la tabla tenga datos
   begin                                                                  //RRT 12/09/2013: Si la tabla tiene datos
      frxClientes1.LoadFromFile(global_files + global_miReporte + '_CADReportesClientes.fr3') ;  //RRT 12/09/2013: Carga el reporte
      frxClientes1.ShowReport();                                          //RRT 12/09/2013: Muestra el reporte
   end;
end;

procedure Tfrm_Companias.frmBarra1btnRefreshClick(Sender: TObject);
begin
   zQCompanias.Active := False ;
   zqCompanias.ParamByName('compania').AsString := global_contrato;
   // zqCompanias.SQL.Clear ;
    //if global_cias = 'Activos' then
    //   zqCompanias.SQL.Add('select * from con_companias Where lStatus ="Activo" ' +
    //                    'Order by sRazonSocial')
    //else
    //   zqCompanias.SQL.Add('select * from con_companias Where lStatus ="PROSPECTOS" OR ' +
    //                    'lStatus ="POTENCIALES" OR lStatus ="INTERMEDIOS" ' +
    //                    'Order by sRazonSocial') ;
    zQCompanias.Open ;
    ZQResult.Active := False ;
    ZQResult.open;
    ZQTiposClientes.Active := False ;
    ZQTiposClientes.Open ;

    connection.configuracionVta.Active := False;
    connection.configuracionVta.SQl.Clear;
    connection.ConfiguracionVta.SQL.Add('select * from vta_configuracion where sNombreCorto = :contrato');
    connection.ConfiguracionVta.ParamByName('contrato').AsString := global_contrato;
    connection.ConfiguracionVta.Open;
end;

procedure Tfrm_Companias.frmBarra2btnAddClick(Sender: TObject);
var
  i : integer;
begin
  pgContacto.ActivePageIndex := 0;
  qrContactos.Append;
  tdContactoFecha.DateTime := Now;
  frmBarra2.btnAddClick(Sender);
  bloquearDesbloquearCtrlContactos(True);
  dbNombreContacto.SetFocus;

  for i := 2 to qrContactos.FieldCount - 2 do
  begin
      if qrContactos.Fields.Fields[i].DataType = ftString then
        qrContactos.Fields.Fields[i].AsString := '*';
  end;
  
  qrContactos.FieldByName('sTelefono').AsString := 'S/N';
  qrContactos.FieldByName('sTelefonoMovil').AsString := 'S/N';
  qrContactos.FieldByName('eStatus').AsString := 'Inactivo';
  cbClientes.SetFocus;
end;

procedure Tfrm_Companias.frmBarra2btnCancelClick(Sender: TObject);
begin
  bloquearDesbloquearCtrlContactos(False);
  frmBarra2.btnCancelClick(Sender);
  qrContactos.Cancel;
end;

procedure Tfrm_Companias.frmBarra2btnDeleteClick(Sender: TObject);
begin
  if qrContactos.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      qrContactos.Delete;
  end
  else
    MessageDlg('No hay resgistros que eliminar', mtInformation, [mbOk], 0);
end;

procedure Tfrm_Companias.frmBarra2btnEditClick(Sender: TObject);
begin
  if qrContactos.RecordCount > 0 then
  begin
    pgContacto.ActivePageIndex := 0;
    bloquearDesbloquearCtrlContactos(True);
    qrContactos.Edit;
    dbNombreContacto.SetFocus;
    frmBarra2.btnEditClick(Sender);
  end
  else
  begin
    MessageDlg('No hay registros que editar', mtInformation,[mbOk],0);
  end;
end;

procedure Tfrm_Companias.frmBarra2btnExitClick(Sender: TObject);
begin
  if (qrContactos.State in [dsInsert]) or (qrContactos.State in [dsEdit]) then
    qrContactos.Cancel;
  btnAceptarContactos.Click;
end;

procedure Tfrm_Companias.frmBarra2btnPostClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;

  bS_logo1 : TStream;
  Pic_logo1 : TJpegImage;
  BlobField_logo1 : tField;

  bS_ImagenCliente : TStream;
  Pic_ImagenCliente : TJpegImage;
  BlobField_ImagenCliente : tField;
  
begin
  if qrContactos.State in [dsInsert] then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Text := 'select sIdCompania from con_companias where sIdCompania = :id and sIdCompaniaConf = :contrato';
    connection.QryBusca.ParamByName('id').AsString := cbClientes.Text;
    connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
    begin

      if Trim(qrContactos.FieldByName('sNombre').AsString) <> '' then
      begin
        dbNombreContacto.Style.Color := clWindow;
        if Trim(cbClientes.Text) <> '' then
        begin
          cbClientes.Style.Color := clWindow;
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select max(cc.iOrden) as Ultimo from vta_contactosxcompania cc '+
                                      'inner join con_companias cp on(cc.sIdCompania = cp.sIdCompania and cc.sIdCompaniaConf = cp.sIdCompaniaConf) '+
                                      'where cc.sIdCompaniaConf = :contrato '+
                                      'and cc.sIdCompania = :cliente');
          connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
          connection.QryBusca.ParamByName('cliente').AsString := cbClientes.Text;
          connection.QryBusca.Open;

          {$REGION 'Guarda Imagenes'}

          if OpenPicture.FileName <> '' then
          begin
            try
              BlobField := qrContactos.FieldByName('bImagenContacto');
              BS := qrContactos.CreateBlobStream(BlobField, bmWrite);
              try
                Pic := TJpegImage.Create;
                try
                  Pic.LoadFromFile(OpenPicture.FileName);
                  Pic.SaveToStream(Bs);
                finally
                  Pic.Free;
                end;
              finally
                bS.Free
              end;
            except
            end;
          end;

          if OpenPicture_1.FileName <> '' then
          begin
            try
              BlobField_logo1 := qrContactos.FieldByName('bTargeta');
              BS_logo1 := qrContactos.CreateBlobStream(BlobField_logo1, bmWrite);
              try
                Pic_logo1 := TJpegImage.Create;
                try
                  Pic_logo1.LoadFromFile(OpenPicture_1.FileName);
                  Pic_logo1.SaveToStream(Bs_logo1);
                finally
                  Pic_logo1.Free;
                end;
              finally
                bS_logo1.Free
              end;
            except
            end;
          end;

          {$ENDREGION}

          qrContactos.FieldByName('sIdContacto').AsString := cbClientes.Text + IntToStr( connection.QryBusca.FieldByName('Ultimo').AsInteger + 1);
          qrContactos.FieldByName('sIdCompania').AsString := cbClientes.Text;
          qrContactos.FieldByName('sIdCompaniaConf').AsString := global_contrato;
          qrContactos.FieldByName('sContacto').AsString := global_nombre;
          qrContactos.FieldByName('iOrden').AsInteger := connection.QryBusca.FieldByName('Ultimo').AsInteger + 1;
          qrContactos.FieldByName('dIdFecha').AsDateTime := tdContactoFecha.Date;
          qrContactos.Post;

          frmBarra2.btnPostClick(Sender);frmBarra2.btnPostClick(Sender);
          bloquearDesbloquearCtrlContactos(False);
        end
        else
        begin
          MessageDlg('No ha especificado la compañia a la que pertenece el contacto', mtInformation, [mbOk], 0);
          cbClientes.Style.Color := $008080FF;
          cbClientes.SetFocus;
        end;
      end
      else
      begin
        MessageDlg('El campo nombre esta vacio', mtInformation, [mbOk], 0);
        dbNombreContacto.Style.Color := $008080FF;
        dbNombreContacto.SetFocus;
      end;
    end    
    else
    begin
      MessageDlg('No se encuentra registrado "' + cbClientes.Text + '"',mtInformation, [mbOk], 0);
    end;
  end;
  if qrContactos.State in [dsEdit] then
  begin

    {$REGION 'Guarda Imagenes'}

    if OpenPicture.FileName <> '' then
    begin
      try
        BlobField := qrContactos.FieldByName('bImagenContacto');
        BS := qrContactos.CreateBlobStream(BlobField, bmWrite);
        try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromFile(OpenPicture.FileName);
            Pic.SaveToStream(Bs);
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end;
      except
      end;
    end;

    if OpenPicture_1.FileName <> '' then
    begin
      try
        BlobField_logo1 := qrContactos.FieldByName('bTargeta');
        BS_logo1 := qrContactos.CreateBlobStream(BlobField_logo1, bmWrite);
        try
          Pic_logo1 := TJpegImage.Create;
          try
            Pic_logo1.LoadFromFile(OpenPicture_1.FileName);
            Pic_logo1.SaveToStream(Bs_logo1);
          finally
            Pic_logo1.Free;
          end;
        finally
          bS_logo1.Free
        end;
      except
      end;
    end;

    {$ENDREGION}

    qrContactos.FieldByName('sIdCompania').AsString := cbClientes.Text;
    qrContactos.FieldByName('dIdFecha').AsDateTime := tdContactoFecha.Date;
    qrContactos.FieldByName('eStatus').AsString := dbStatusContacto.Text;
    qrContactos.Post;
    frmBarra2.btnPostClick(Sender);
    bloquearDesbloquearCtrlContactos(False);
  end;

end;

procedure Tfrm_Companias.frmBarra2btnPrinterClick(Sender: TObject);
begin
  if qrContactos.RecordCount > 0 then
  begin
    pnlInformacionContactos.Visible := False;
    GridCompaniasCont.Visible := False;
    chkTodosContactos.Checked := False;;
    lstchkContactos.Items.Clear;
    qrContactos.First;
    while not qrContactos.Eof do
    begin
      lstchkContactos.AddItem(qrContactos.FieldByName('sIdContacto').AsString + '|- ' + qrContactos.FieldByName('sNombre').AsString);
      qrContactos.Next;
    end;
    qrContactos.First;

    pnlImprimirContactos.Visible := True;
    pnlImprimirContactos.Width := 850;
    pnlImprimirContactos.Align := alClient;
    pnlInformacionContactos.Enabled := False;
  end
  else
    MessageDlg('No hay contactos que imprimir', mtInformation, [mbOk], 0);
end;

procedure Tfrm_Companias.frmBarra2btnRefreshClick(Sender: TObject);
begin
  qrContactos.Active := False;
  qrContactos.Open;
end;

procedure Tfrm_Companias.frmbr1btnAddClick(Sender: TObject);
(*Creada:12/09/2013 Creo:Rafael Ramirez Tadeo
Descripcion:Se agrega funcionalidad al boton insertar del panel *)
begin
   try
      frmbr1.btnAddClick(Sender);      //RRT 12/09/2013: Se manda a llamar la funcion para que inhabilite los botones segun el estado de la tabla
      qrybitacoraventas.Append;        //RRT 12/09/2013: Prepara la tabla para darle recibir datos
      qrybitacoraventas.FieldByName('sIdCompania').AsString:=zQCompanias.FieldByName('sIdCompania').AsString; //RRT 12/09/2013: Pasa el valor del nombre de la empresa
      qrybitacoraventas.FieldByName('dIdfecha').AsDateTime:=Now;
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(iid) as id FROM vta_bitacoradeactividades;');
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then begin
         qrybitacoraventas.FieldByName('iid').AsInteger := (connection.QryBusca.FieldByName('id').AsInteger + 1);
      end else begin
         qrybitacoraventas.FieldByName('iid').AsInteger := 1;
      end;
      cxSResponsable.SetFocus;
      cambio_stado;
   except
   end;
end;

procedure Tfrm_Companias.frmbr1btnCancelClick(Sender: TObject);
begin
   try
      qrybitacoraventas.Cancel;
      frmbr1.btnCancelClick(Sender);
      cambio_stado;
   except
   end;
end;

procedure Tfrm_Companias.frmbr1btnDeleteClick(Sender: TObject);
begin
   try
      If qrybitacoraventas.RecordCount  > 0 then
      begin
         if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
            qrybitacoraventas.Delete ;
            BotonPermiso.permisosBotones(frmbr1);
         end;
      end else MessageDlg('No hay registro que Eliminar!!', mtError, [mbOk], 0);;
   except
   end;
end;

procedure Tfrm_Companias.frmbr1btnEditClick(Sender: TObject);
begin
   ZQResult.SQL.Clear;
   ZQResult.SQL.Add('select * from vta_bitacoradeactividades');
   ZQResult.SQL.Add('where sidCompania like "'+zQCompanias.FieldByName('sIdCompania').AsString+'"');
   ZQResult.ExecSQL;
   ZQResult.Open;
   If ZQResult.RecordCount > 0 Then
   begin
      qrybitacoraventas.Edit;
      frmbr1.btnEditClick(Sender);
      cxSResponsable.SetFocus;
      cambio_stado;
   end else MessageDlg('No hay registro que modificar!!', mtError, [mbOk], 0);
end;

procedure Tfrm_Companias.frmbr1btnExitClick(Sender: TObject);
begin
   qrybitacoraventas.Filtered:=false;
   detalles.Close;
end;

procedure Tfrm_Companias.frmbr1btnPostClick(Sender: TObject);
begin
try
   if cxSResponsable.Text='' then
   begin
      MessageDlg('El nombre del responsable es un dato requerido!!', mtError, [mbOk], 0);
      cxSResponsable.SetFocus;
      Exit;
   end;
   if mResumen.Text='' then
   begin
      MessageDlg('El resumen es un dato requerido!!', mtError, [mbOk], 0);
      mResumen.SetFocus;
      Exit;
   end;
   if mAsunto.Text='' then
   begin
      MessageDlg('El asunto es un dato requerido!', mtError, [mbOk], 0);
      mAsunto.SetFocus;
      Exit;
   end;
   qrybitacoraventas.Post;
   frmbr1.btnPostClick(Sender);
   cambio_stado;
except
  On E: Exception do begin
    ShowMessage(E.Message);
  end;
end;

end;

procedure Tfrm_Companias.frmbr1btnPrinterClick(Sender: TObject);
begin
  imprimir              := TForm.Create(nil);
  pnl1.Height           :=130;
  pnl1.Width            :=240;
  imprimir.Caption      :='Imprimir';
  pnl1.Parent           := imprimir;
  imprimir.Top          := 212;
  imprimir.Left         := 262;
  imprimir.Height       := 150;
  imprimir.Width        := 243;
  imprimir.BorderStyle  := bsSingle;
  imprimir.Position     := poScreenCenter;
  imprimir.ShowHint     := True;
  pnl1.Visible          := True;
  pnl1.Align            := alClient;
  imprimir.AutoSize     :=True;
  imprimir.BorderIcons  := [biSystemMenu];
  imprimir.ShowMOdal;
end;

procedure Tfrm_Companias.frmbr1btnRefreshClick(Sender: TObject);
begin
  qrybitacoraventas.Active:=false;
  qrybitacoraventas.Open;
  qrybitacoraventas.first;
end;

procedure Tfrm_Companias.mAsuntoEnter(Sender: TObject);
begin
  mAsunto.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.mAsuntoExit(Sender: TObject);
begin
  mAsunto.Color := clWindow;
end;

procedure Tfrm_Companias.mAsuntoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then mAsunto.SetFocus;
end;

procedure Tfrm_Companias.mResumenEnter(Sender: TObject);
begin
  mResumen.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.mResumenExit(Sender: TObject);
begin
  mResumen.Color := clWindow;
end;

procedure Tfrm_Companias.mResumenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then mAsunto.SetFocus;
end;

procedure Tfrm_Companias.qrContactosAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  fileSkin: TextFile;

  bS_logo1 : TStream;
  Pic_logo1 : TJpegImage;
  BlobField_logo1 : tField;

  bS_ImagenCliente : TStream;
  Pic_ImagenCliente : TJpegImage;
  BlobField_ImagenCliente : tField;
  
begin
  cbClientes.Text := qrContactos.FieldByName('sIdCompania').AsString;
  tdContactoFecha.Date := qrContactos.FieldByName('dIdFecha').AsDateTime;

  BlobField := qrContactos.FieldByName('bImagenContacto');
  bs := qrContactos.CreateBlobStream(BlobField, bmRead);

  BlobField_logo1 := qrContactos.FieldByName('bTargeta');
  bS_logo1 := qrContactos.CreateBlobStream(BlobField_logo1, bmRead);


  if bs.Size > 1 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bFotografica.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end
    end
  else
    bFotografica.Picture.LoadFromFile('');

  if bS_logo1.Size > 1 then
  begin
    try
      Pic_logo1 := TJpegImage.Create;
      try
        Pic_logo1.LoadFromStream(bS_logo1);
        bTargeta.Picture.Graphic := Pic_logo1;
      finally
        Pic_logo1.Free;
      end;
    finally
      bS_logo1.Free
    end
  end
  else
    bTargeta.Picture.LoadFromFile('');

end;

procedure Tfrm_Companias.qrybitacoraventasAfterInsert(DataSet: TDataSet);
begin
  qrybitacoraventas.FieldValues['mResumen']     := '*' ;
  qrybitacoraventas.FieldValues['mAsunto']      := '*' ;
  qrybitacoraventas.FieldValues['sResponsable'] := '*' ;
end;

procedure Tfrm_Companias.qrybitacoraventasAfterScroll(DataSet: TDataSet);
begin
  cxSResponsable.Text := qrybitacoraventas.FieldByName('sResponsable').AsString;
  mResumen.Text := qrybitacoraventas.FieldByName('mResumen').AsString;
  mAsunto.Text := qrybitacoraventas.FieldByName('mAsunto').AsString;
  cbbTipoVisita.KeyValue := qrybitacoraventas.FieldByName('iIdTipoVisita').AsInteger;
  cbbVendedor.KeyValue := qrybitacoraventas.FieldByName('iIdVendedor').AsString;
end;

procedure Tfrm_Companias.TDBFechaEnter(Sender: TObject);
begin
  TDBFecha.Color := global_color_entradaERP;
end;

procedure Tfrm_Companias.TDBFechaExit(Sender: TObject);
begin
  TDBFecha.Color := clWindow;
end;

procedure Tfrm_Companias.TDBFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if (accion = 'Nuevo') or (accion = 'Editar') then
  begin
    if Key = #13 then
    begin
      cbbTipoVisita.SetFocus;
    end;
  end;
end;

procedure Tfrm_Companias.tdContactoFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    cbclientes.SetFocus;
end;

procedure Tfrm_Companias.tdFechaContactosInicioChange(Sender: TObject);
begin
  qrContactos.Active := False;
  qrContactos.ParamByName('fechaI').AsString := formatoFecha(tdFechaContactosInicio.Date);
  qrContactos.ParamByName('fechaF').AsString := formatoFecha(tdFechaContactosFinal.Date);
  qrContactos.Open;
end;

procedure Tfrm_Companias.tsCertificados_CertificadoClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Certificados|*.cer';
  if OpenDialog1.Execute then begin
    TCxButtonEdit(Sender).Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrm_Companias.tsCertificados_LlaveClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Llaves|*.key';
  if OpenDialog1.Execute then begin
    TCxButtonEdit(Sender).Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrm_Companias.tsMailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbContacto.SetFocus;
end;

procedure Tfrm_Companias.zQCompaniasAfterInsert(DataSet: TDataSet);
begin
//      zqCompanias.FieldValues['sIdCompania']   := '' ;
//      zqCompanias.FieldValues['sRFC']          := '' ;
//      zqCompanias.FieldValues['sRazonSocial']  := '' ;
//      zqCompanias.FieldValues['sDomicilio']    := 'SIN DOMICILIO' ;
//      zqCompanias.FieldValues['sCiudad']       := '*' ;
//      zqCompanias.FieldValues['sCP']           := '*' ;
//      zqCompanias.FieldValues['sEstado']       := '' ;
//      zqCompanias.FieldValues['sTelefono']     := '*' ;
//      zqCompanias.FieldValues['sTelefono2']    := '*' ;
//      zqCompanias.FieldValues['sContacto']     := 'SIN CONTACTO';
//      zqCompanias.FieldValues['dMontoCredito'] := 0 ;
//      zqCompanias.FieldValues['lStatus']       := 'Activo' ;
end;

procedure Tfrm_Companias.zQContactosCompaniasAfterScroll(DataSet: TDataSet);
begin
  qrContactos.Active := False;
  qrContactos.ParamByName('contrato').AsString := global_contrato;
  qrContactos.ParamByName('compania').AsString := DataSet.FieldByName('sIdCompania').AsString;
  qrContactos.Open;
end;

function Tfrm_Companias.base64encode(strLinea: AnsiString): ansiString;
  var Encoder : TIdEncoderMime;
begin
  Encoder := TIdEncoderMime.Create(nil);
  try
    Result := Encoder.EncodeString(strLinea);
  finally
    FreeAndNil(Encoder);
  end;
end;

procedure Tfrm_Companias.bFotograficaClick(Sender: TObject);
begin
  if (qrContactos.State = dsEdit) or (qrContactos.State = dsInsert) Then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        bFotografica.Picture.LoadFromFile(OpenPicture.FileName);
      except
        bFotografica.Picture.LoadFromFile('');
      end
    end
  end
end;

function Tfrm_Companias.base64decode(strLinea: AnsiString): ansiString;
var Decoder : TIdDecoderMime;
begin
  Decoder := TIdDecoderMime.Create(nil);
  try
    Result := Decoder.DecodeString(strLinea);
  finally
    FreeAndNil(Decoder)
  end
end;

procedure Tfrm_Companias.imprimirClientesSeleccionadosExcel;
var
  Excel, Libro, Hoja : Variant;
  Guardar : TSaveDialog;
  continuar : boolean;
  direccion : string;

  columnas: array[1..1400] of string;
  i, x, y : integer;
  iFila : integer;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  checks : integer;

procedure Contornos;
begin
  Excel.Selection.Borders[xlEdgeLeft].LineStyle   := xlContinuous;
  Excel.Selection.Borders[xlEdgeLeft].Weight      := xlThin;
  Excel.Selection.Borders[xlEdgeTop].LineStyle    := xlContinuous;
  Excel.Selection.Borders[xlEdgeTop].Weight       := xlThin;
  Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  Excel.Selection.Borders[xlEdgeBottom].Weight    := xlThin;
  Excel.Selection.Borders[xlEdgeRight].LineStyle  := xlContinuous;
  Excel.Selection.Borders[xlEdgeRight].Weight     := xlThin;
end;


begin
  {$REGION 'Valida Checks'}
  Checks := 0;
  for x := 0 to chklstCompanias.Items.Count - 1 do
  begin
    if chkLstCompanias.Checked[x] then
    begin
      inc(checks);
      break;
    end;
  end;

  {$ENDREGION}
  if checks > 0 then
  begin

    {$REGION 'Guardar'}

    continuar := True;
    guardar := TSaveDialog.Create(nil);
    Guardar.Title := '¿Donde desea guardar la impresion?...';
    Guardar.InitialDir := GetCurrentDir;
    Guardar.Filter := 'Archivo de Excel|*.xlsx';
    Guardar.DefaultExt := 'xlsx';
    Guardar.FilterIndex := 1;
  
    if Guardar.Execute then
    begin
      direccion := Guardar.FileName;
      if FileExists(direccion) then
      begin
        ShowMessage('Ya existe el archivo ' + direccion);
        continuar := False;
      end;
    end
    else
    begin
      continuar := False;
      Showmessage('Proceso cancelado por el usuario.');
    end;
    guardar.Destroy;
    
    {$ENDREGION}

    if continuar then
    begin

      {$REGION 'Arreglo de columnas'}

      for x := 1 to 26 do
          columnas[x] := Chr(64 + x);

      i := 27;
      for x := 1 to 9 do
      begin
        for y := 1 to 26 do
        begin
          columnas[i] := Chr(64 + x) + Chr(64 + y);
          i := i + 1;
        end;
      end;

      {$ENDREGION}
    
      {$REGION 'Crear Excel'}

      Excel := CreateOleObject('Excel.Application');
      Libro := Excel.Workbooks.Add;
      Hoja := Libro.Worksheets[1];
      Excel.ActiveWindow.DisplayGridlines := False;
      Hoja.Name := 'Clientes';

      Excel.Visible := False;
      Excel.ScreenUpdating := False;
      Excel.DisplayAlerts := False;

      try
        TmpName := '';
        imgAux := TImage.Create(nil);
        if TmpName='' then
        begin
          TempPath := ExtractFilePath(Application.Exename);
          TmpName:=TempPath +'Logo1.jpg';
          fs := Connection.configuracionVta.CreateBlobStream(Connection.configuracionVta.FieldByName('bImagen'), bmRead);
          if fs.Size > 1 Then
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

      try
        begin
           Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 75);
        end;
      except
      begin
        ShowMessage('Cargue una imagen en la configuracion de Ventas');
        exit;
      end;

      end;


      {$ENDREGION}

      if rxClientes.RecordCount > 0 then
        rxClientes.EmptyTable;
      rxClientes.Active := True;

      for x := 0 to chklstCompanias.Items.Count - 1 do
      begin
        if chkLstCompanias.Checked[x] then
        begin
          if zqCompanias.Locate('sIdCompania', chklstCompanias.Items.Strings[x], []) then
          begin
            rxClientes.Append;
            rxClientes.FieldByName('sIdCompania').AsString := zqCompanias.FieldByName('sIdCompania').AsString;
            rxClientes.FieldByName('sRFC').AsString := zqCompanias.FieldByName('sRFC').AsString;
            rxClientes.FieldByName('sRazonSocial').AsString := zqCompanias.FieldByName('sRazonSocial').AsString;
            rxClientes.FieldByName('sDomicilio').AsString := zqCompanias.FieldByName('sDomicilio').AsString;
            rxClientes.FieldByName('sCiudad').AsString := zqCompanias.FieldByName('sCiudad').AsString;
            rxClientes.FieldByName('sCP').AsString := zqCompanias.FieldByName('sCP').AsString;
            rxClientes.FieldByName('sEstado').AsString := zqCompanias.FieldByName('sEstado').AsString;
            rxClientes.FieldByName('sTelefono').AsString := zqCompanias.FieldByName('sTelefono').AsString;
            rxClientes.FieldByName('dMontoCredito').AsFloat := zqCompanias.FieldByName('dMontoCredito').AsFloat;
            rxClientes.FieldByName('lStatus').AsString := zqCompanias.FieldByName('lStatus').AsString;
            rxClientes.FieldByName('sNumeroProveedor').AsString := zqCompanias.FieldByName('sNumeroProveedor').AsString;
            rxClientes.FieldByName('sMail').AsString := zqCompanias.FieldByName('sMail').AsString;
            rxClientes.FieldByName('sTelefono2').AsString := zqCompanias.FieldByName('sTelefono2').AsString;
            rxClientes.FieldByName('sContacto').AsString := zqCompanias.FieldByName('sContacto').AsString;
            rxClientes.Post;
          end;  
        end;
      end;

      if rxClientes.RecordCount > 0 then
      begin
        prgImprimirComp.Maximum := rxClientes.RecordCount;
        prgImprimirComp.Position := 0;
        prgImprimirComp.Refresh;

        for x := 1 to 9 do
        begin
          Excel.Columns[columnas[x] + ':' + columnas[x]].ColumnWidth := 20;
        end;

        Excel.Range['C1:G1'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sNombre').AsString;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 16;
        Excel.Selection.MergeCells := True;
        Excel.Range['C2:G2'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sRfc').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['C3:G3'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sDireccion1').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['C4:G4'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sDireccion2').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['C5:G5'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sTelefono').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['C6:G6'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sWeb').AsString;
        Excel.Selection.MergeCells := True;

        Excel.Range['C1:G6'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := True;

        Excel.Range['A9'].Select;
        Contornos;
        Excel.Selection.Value := 'COMPAÑIA';
        Excel.Range['B9'].Select;
        Contornos;
        Excel.Selection.Value := 'RFC';
        Excel.Range['C9'].Select;
        Contornos;
        Excel.Selection.Value := 'RAZON SOCIAL';
        Excel.Range['D9'].Select;
        Contornos;
        Excel.Selection.Value := 'DOMICILIO';
        Excel.Range['E9'].Select;
        Contornos;
        Excel.Selection.Value := 'CUIDAD';
        Excel.Range['F9'].Select;
        Contornos;
        Excel.Selection.Value := 'ESTADO';
        Excel.Range['G9'].Select;
        Contornos;
        Excel.Selection.Value := 'CODIGO POSTAL';
        Excel.Range['H9'].Select;
        Contornos;
        Excel.Selection.Value := 'TELEFONO';
        Excel.Range['I9'].Select;
        Contornos;
        Excel.Selection.Value := 'MAIL';

        Excel.Range['A9:I9'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 42;

        rxClientes.First;
        iFila := 10;                                      
        while not rxClientes.Eof do
        begin

          Excel.Range['A' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sIdCompania').AsString;
          Excel.Range['B' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sRFC').AsString;
          Excel.Range['C' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sRazonSocial').AsString ;
          Excel.Range['D' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sDomicilio').AsString ;
          Excel.Range['E' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sCiudad').AsString ;
          Excel.Range['F' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sEstado').AsString ;
          Excel.Range['G' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sCP').AsString ;
          Excel.Range['H' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sTelefono').AsString ;
          Excel.Range['I' + IntToStr(iFila)].Select;
          Contornos;
          Excel.Selection.Value := rxClientes.FieldByName('sMail').AsString ;
          rxClientes.Next;
          Inc(iFila);

          prgImprimirComp.Position := prgImprimirComp.Position + 2;
          prgImprimirComp.Refresh;
        end;

        Excel.Range['A10:I' + IntToStr(iFila)].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := True;

        Excel.Range['A' + IntToStr(iFila + 3) + ':C' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sRepresentante').AsString;

        Excel.Range['A' + IntToStr(iFila + 4) + ':C' + IntToStr(iFila + 4)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sPuestoRepresentante').AsString;

        Excel.Range['D' + IntToStr(iFila + 3) + ':F' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sFirmante1').AsString;

        Excel.Range['D' + IntToStr(iFila + 4) + ':F' + IntToStr(iFila + 4)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sPuestoFirmante1').AsString;

        Excel.Range['G' + IntToStr(iFila + 3) + ':I' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sFirmante2').AsString;

        Excel.Range['G' + IntToStr(iFila + 4) + ':I' + IntToStr(iFila + 4)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sPuestoFirmante2').AsString;


        Excel.Range['A' + IntToStr(iFila + 3) + ':I' + IntToStr(iFila + 3)].Select;
        Excel.Selection.Font.Underline := xlUnderlineStyleSingle;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.HorizontalAlignment := xlCenter;

        Excel.Range['A' + IntToStr(iFila + 4) + ':I' + IntToStr(iFila + 4)].Select;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.HorizontalAlignment := xlCenter;

        Excel.Range['A' + IntToStr(iFila + 6) + ':I' + IntToStr(iFila + 6)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sSlogan').AsString;
        Excel.Selection.HorizonTalAlignment := xlRight;
        Excel.Selection.Font.Size := 10;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Italic := True;

        Libro.SaveAs(direccion);

        Excel.Visible := True;
        Excel.ScreenUpdating := True;
      end;
    end;
  end
  else
    MessageDlg('Palomee almenos un cliente', mtInformation, [mbOk], 0);

end;

procedure Tfrm_Companias.imprimirClientesSeleccionadosPdf;
var
  x, checks : integer;

begin
  if not FileExists(global_files + global_miReporte + '_CADReportesClientes.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADReportesClientes.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  if zqCompanias.RecordCount > 0 then
  begin
  
    {$REGION 'Valida Checks'}
    Checks := 0;
    for x := 0 to chklstCompanias.Items.Count - 1 do
    begin
      if chkLstCompanias.Checked[x] then
      begin
        inc(checks);
        break;
      end;
    end;

    {$ENDREGION}

    if checks > 0 then
    begin
      if rxClientes.RecordCount > 0 then
        rxClientes.EmptyTable;
      rxClientes.Active := True;

      for x := 0 to chklstCompanias.Items.Count - 1 do
      begin
        if chkLstCompanias.Checked[x] then
        begin
          if zqCompanias.Locate('sIdCompania', chklstCompanias.Items.Strings[x], []) then
          begin
            rxClientes.Append;
            rxClientes.FieldByName('sIdCompania').AsString := zqCompanias.FieldByName('sIdCompania').AsString;
            rxClientes.FieldByName('sRFC').AsString := zqCompanias.FieldByName('sRFC').AsString;
            rxClientes.FieldByName('sRazonSocial').AsString := zqCompanias.FieldByName('sRazonSocial').AsString;
            rxClientes.FieldByName('sDomicilio').AsString := zqCompanias.FieldByName('sDomicilio').AsString;
            rxClientes.FieldByName('sCiudad').AsString := zqCompanias.FieldByName('sCiudad').AsString;
            rxClientes.FieldByName('sCP').AsString := zqCompanias.FieldByName('sCP').AsString;
            rxClientes.FieldByName('sEstado').AsString := zqCompanias.FieldByName('sEstado').AsString;
            rxClientes.FieldByName('sTelefono').AsString := zqCompanias.FieldByName('sTelefono').AsString;
            rxClientes.FieldByName('dMontoCredito').AsFloat := zqCompanias.FieldByName('dMontoCredito').AsFloat;
            rxClientes.FieldByName('lStatus').AsString := zqCompanias.FieldByName('lStatus').AsString;
            rxClientes.FieldByName('sNumeroProveedor').AsString := zqCompanias.FieldByName('sNumeroProveedor').AsString;
            rxClientes.FieldByName('sMail').AsString := zqCompanias.FieldByName('sMail').AsString;
            rxClientes.FieldByName('sTelefono2').AsString := zqCompanias.FieldByName('sTelefono2').AsString;
            rxClientes.FieldByName('sContacto').AsString := zqCompanias.FieldByName('sContacto').AsString;
            rxClientes.Post;
          end;
        end;
      end;
      dsCompaniasC.DataSet := rxClientes;

      frxClientes1.LoadFromFile(global_files + global_miReporte + '_CADReportesClientes.fr3') ;
        frxClientes1.ShowReport();
    end
    else
      MessageDlg('Palomee almenos un cliente', mtInformation, [mbOk], 0);
    dsCompaniasC.DataSet := zQCompanias;
  end
  else
    MessageDlg('No hay informacion para mostrar', mtInformation, [mbOk], 0);
end;

function Tfrm_Companias.formatoFecha(fecha: TDate) : string;//Sam
var
  anio, mes, dia : Word;
  resultado : string;
begin
  DecodeDate(fecha, anio, mes, dia);
  resultado := IntToStr(anio) + '/' + IntToStr(mes) + '/' + IntToStr(dia);//Sam
  Result := resultado;
end;

procedure Tfrm_Companias.bloquearDesbloquearCtrlContactos(tipo: Boolean);//Sam
var
  i : integer;
begin
  for i := 0 to pnlControlesC.ControlCount - 1 do
  begin
    if pnlControlesC.Controls[i] is tcxDbTextEdit then
    begin
        (pnlControlesC.Controls[i] as tcxDbTextEdit).Enabled := tipo
    end;
  end;

  dbDomicilioContacto.Enabled := tipo;
  dbStatusContacto.Enabled := tipo;
  cbClientes.Enabled := tipo;
  tdContactoFecha.Enabled := tipo;
  if tipo then  
    cxGridContactos.Enabled := False
  else
    cxGridContactos.Enabled := True;
end;

procedure Tfrm_Companias.bTargetaClick(Sender: TObject);
begin
  if (qrContactos.State = dsEdit) or (qrContactos.State = dsInsert) Then
  begin
    OpenPicture_1.Title := 'Inserta Imagen';
    if OpenPicture_1.Execute then
    begin
      try
        bTargeta.Picture.LoadFromFile(OpenPicture_1.FileName);
      except
        bTargeta.Picture.LoadFromFile('');
      end
    end
  end
end;

function Tfrm_Companias.getIdContacto(item: string) : string;//Sam
var
  x : integer;
  texto : string;
begin
  texto := '';
  for x := 1 to length(item) do
  begin
    if (item[x] = '|') and (item[x + 1] = '-') then
      break
    else
      texto := texto + item[x];
  end;
  Result := texto;
end;


procedure Tfrm_Companias.graficarEfectividad(repeticiones: Integer; consulta,
  compania: string; razonSocial : string; RFC, domicilio: string);
  var
  TmpName : string;
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  //excel, libro, hoja : Variant;
  Fila, Grafica : Integer;
  zqryNumeroVisitas : TZQuery;
const
  xl3DPie = -4102;
  xlBottom = -4107;
  //xlCenter = -4108;
  xlContext = -5002;
begin
  //Grafica una o mas graficas dependiendo las repeticiones que se le pasen
  Fila := 8;

  //Grafica cuando se da click en el boton de impresion por Tipos de Visita
  try
    (*excel := CreateOleObject('Excel.Application');
    excel.displayalerts := False;

    excel.workbooks.add;
    libro := excel.workbooks[1];*)

    if repeticiones > 3 then
    begin
      hoja := libro.Sheets.Add;
    end
    else
    begin
      hoja := libro.sheets[repeticiones];
    end;
    hoja.select;

    if graficarVendedores = True then
    begin
      zQCompanias.First;
      Excel.Sheets['Hoja' + IntToStr(repeticiones)].Name := zQCompanias.FieldByName('sIdCompania').AsString;
    end
    else
    begin
      Excel.Sheets['Hoja' + IntToStr(repeticiones)].Name := compania;
    end;
    excel.Visible := True;
  except
    on e:Exception do
    begin
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
      Exit;
    end;
  end;

  //Colocar Nombre de la Compania
  Excel.Range['B1:J2'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B1'].Select;
  excel.Range['B1'].Interior.Pattern := 1;
  excel.Range['B1'].Interior.PatternColorIndex := -4105;

  excel.Range['B1'].Interior.ThemeColor := 5;
  excel.Range['B1'].Interior.TintAndShade := 0.399975585192419;
  excel.Range['B1'].Interior.PatternTintAndShade := 0;

  Excel.Selection.Font.Color := clBlack;
  Excel.Range['B1'].value2 := compania;
  //Formato del nombre de la compania
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Font.Size := 16;
  Excel.Selection.Font.Strikethrough := False;
  Excel.Selection.Font.Bold := True;

  //Colocar la razon social, por ejemplo (Petroleos Mexicanos sa de cv)
  Excel.Range['B3:J3'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B3'].value2 := razonSocial;

  //Colocar el RFC
  Excel.Range['B4:J4'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;

  if graficarVendedorSeleccionado = True then
  begin
    Excel.Range['B4'].value2 := '';
  end
  else
  begin
    Excel.Range['B4'].value2 := 'RFC: ' + RFC;
  end;

  //Colocar Domicilio
  Excel.Range['B5:J5'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B5'].value2 := domicilio;

  //Poner color de fondo de la cabecera con los datos de la compania
  Excel.Range['B3:J5'].Select;

  Excel.Selection.Borders[xlEdgeLeft];
  Excel.Selection.Borders[xlEdgeLeft].LineStyle := 1;//xlContinuous

  Excel.Selection.Borders[xlEdgeRight];
  Excel.Selection.Borders[xlEdgeRight].LineStyle := 1;//xlContinuous

  Excel.Selection.Borders[xlEdgeBottom];
  Excel.Selection.Borders[xlEdgeBottom].LineStyle := 1;//xlContinuous

  excel.Range['B3:J5'].Interior.ColorIndex := 2;
  Excel.Selection.Font.Color := clBlack;
  Excel.Selection.Interior.Pattern := xlSolid;

  //Espacio de las cabeceras de los datos
  Excel.Columns['A:A'].ColumnWidth := 25;
  Excel.Columns['B:B'].ColumnWidth := 35;
  Excel.Columns['C:C'].ColumnWidth := 10;

  Excel.Range['A1:A5'].Select;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;

  //Colocar el logo de la empresa
  {$REGION 'LOGO DE LA EMPRESA'}
    Try
      TmpName := '';
      imgAux := TImage.Create(nil);
      if TmpName='' then
      begin
        TempPath := ExtractFilePath(Application.Exename);
        TmpName:=TempPath +'ImgTempCliente.jpg';
        fs := Connection.configuracionVta.CreateBlobStream(Connection.configuracionVta.FieldByName('bImagen'), bmRead);
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
    Hoja.Shapes.AddPicture(TmpName, True, True, 0, 0, 130, 80);
  {$ENDREGION}
  if graficarVendedores = True then    //Si se selecciona Vendedores, entoncea que se imprima la grafica por vendedores
  begin
    while not zQCompanias.Eof do
    begin
      if repeticiones > 1 then
      begin
        hoja := libro.sheets[repeticiones];
        hoja.select;
        Excel.Sheets['Hoja' + IntToStr(repeticiones)].Name := zQCompanias.FieldByName('sIdCompania').AsString;

        //Colocar Nombre de la Compania
        Excel.Range['B1:J2'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := False;
        Excel.Selection.Orientation := 0;
        Excel.Selection.AddIndent := False;
        Excel.Selection.IndentLevel := 0;
        Excel.Selection.ShrinkToFit := False;
        Excel.Selection.ReadingOrder := xlContext;
        Excel.Selection.MergeCells := False;
        Excel.Selection.Merge;
        Excel.Range['B1'].Select;
        excel.Range['B1'].Interior.ColorIndex := 23;
        Excel.Selection.Font.Color := clWhite;
        Excel.Range['B1'].value2 := compania;
        //Formato del nombre de la compania
        Excel.Selection.Font.Name := 'Calibri';
        Excel.Selection.Font.Size := 16;
        Excel.Selection.Font.Strikethrough := False;
        Excel.Selection.Font.Bold := True;

        //Colocar la razon social, por ejemplo (Petroleos Mexicanos sa de cv)
        Excel.Range['B3:J3'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := False;
        Excel.Selection.Orientation := 0;
        Excel.Selection.AddIndent := False;
        Excel.Selection.IndentLevel := 0;
        Excel.Selection.ShrinkToFit := False;
        Excel.Selection.ReadingOrder := xlContext;
        Excel.Selection.MergeCells := False;
        Excel.Selection.Merge;
        Excel.Range['B3'].value2 := razonSocial;

        //Colocar el RFC
        Excel.Range['B4:J4'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := False;
        Excel.Selection.Orientation := 0;
        Excel.Selection.AddIndent := False;
        Excel.Selection.IndentLevel := 0;
        Excel.Selection.ShrinkToFit := False;
        Excel.Selection.ReadingOrder := xlContext;
        Excel.Selection.MergeCells := False;
        Excel.Selection.Merge;
        Excel.Range['B4'].value2 := 'RFC: ' + RFC;

        //Colocar Domicilio
        Excel.Range['B5:J5'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := False;
        Excel.Selection.Orientation := 0;
        Excel.Selection.AddIndent := False;
        Excel.Selection.IndentLevel := 0;
        Excel.Selection.ShrinkToFit := False;
        Excel.Selection.ReadingOrder := xlContext;
        Excel.Selection.MergeCells := False;
        Excel.Selection.Merge;
        Excel.Range['B5'].value2 := domicilio;

        //Poner color de fondo de la cabecera con los datos de la compania
        Excel.Range['B3:J5'].Select;
        excel.Range['B3:J5'].Interior.ColorIndex := 37;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Interior.Pattern := xlSolid;

        //Espacio de las cabeceras de los datos
        Excel.Columns['B:B'].ColumnWidth := 35;
        Excel.Columns['C:C'].ColumnWidth := 10;
      end;

      zqryTiposDeVisitas.Active := False;
      zqryTiposDeVisitas.Open;
      zqryTiposDeVisitas.First;

      zqryNumeroVisitas := TZQuery.Create(Self);
      zqryNumeroVisitas.Connection := connection.zConnection;

      Grafica := 1;

      //***************************************************************************************************
      while not zqryTiposDeVisitas.Eof do //Mientras hallan tipos de visitas
      begin
        Excel.Columns['B:B'].ColumnWidth := 35;
        Excel.Columns['C:C'].ColumnWidth := 35;

        //Cabeceras de las columnas
        Hoja.Range['B' + inttostr(Fila - 1) + ':' + 'B' + IntToStr(Fila - 1)].Select;
        excel.Range['B' + inttostr(Fila - 1)].Value2 := 'Vendedor';
        Hoja.Range['B' + inttostr(Fila - 1) + ':' + 'B' + IntToStr(Fila - 1)].Interior.ColorIndex := 13;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Interior.Pattern := xlSolid;

        Hoja.Range['C' + inttostr(Fila - 1) + ':' + 'B' + IntToStr(Fila - 1)].Select;
        excel.Range['C' + inttostr(Fila - 1)].Value2 := zqryTiposDeVisitas.FieldByName('sDescripcion').AsString + ' (' + zQCompanias.FieldByName('sIdCompania').AsString + ')';
        excel.Range['C' + inttostr(Fila - 1)].Interior.ColorIndex := 23;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Interior.Pattern := xlSolid;

        qrCatVendedores.Active := False;
        qrCatVendedores.Open;
        qrCatVendedores.First;
        
        //Mientras hallan vendedores, llenar las columnas con las que se llenara la ghrafica
        while not qrCatVendedores.Eof do
        begin
          excel.Range['B' + Trim(IntToStr(Fila))].Select;
          excel.Range['B' + Trim(IntToStr(Fila))].Value2 := qrCatVendedores.FieldByName('sNombre').AsString;

          Excel.Selection.Interior.Pattern := xlSolid;

          zqryNumeroVisitas.Active := False;
          zqryNumeroVisitas.SQL.Text := consulta;
          zqryNumeroVisitas.Params.ParamByName('iIdTipoVisita').AsInteger := zqryTiposDeVisitas.FieldByName('iIdTipoVisita').AsInteger;
          zqryNumeroVisitas.Params.ParamByName('sIdCompania').AsString := zQCompanias.FieldByName('sIdCompania').AsString; 
          zqryNumeroVisitas.Params.ParamByName('sNombre').AsString := qrCatVendedores.FieldByName('sNombre').AsString;
          zqryNumeroVisitas.Open;

          excel.Range['C' + Trim(IntToStr(Fila))].Select;
          excel.Range['C' + Trim(IntToStr(Fila))].Value2 := IntToStr(zqryNumeroVisitas.RecordCount);
          excel.Range['C' + Trim(IntToStr(Fila))].Interior.ColorIndex := 37;
          Excel.Selection.Interior.Pattern := xlSolid;

          qrCatVendedores.Next;
          Fila := Fila + 1;
        end;

        //Dibujar Grafica con los datos
        Excel.ActiveSheet.Shapes.AddChart(-4102, xl3DPie).Select;
        Excel.ActiveSheet.ChartObjects(Grafica).left := Excel.Columns[5].Left;
        Excel.ActiveSheet.ChartObjects(Grafica).Top := Excel.Rows[Fila - 3].Top;
        Excel.ActiveSheet.ChartObjects(Grafica).Height :=Excel.Rows[15].Top;

        Grafica := Grafica + 1;
        
        Fila := Fila + 15;
        zqryTiposDeVisitas.Next;
      end;
      //***************************************************************************************************
      zQCompanias.Next;
      repeticiones := repeticiones + 1;
      Fila := 8;
    end;
  end
  else
  begin
    //Cabeceras de las columnas
    Hoja.Range['B7:B7'].Select;
    excel.Range['B7'].Value2 := 'Tipo de Movimiento';
    excel.Range['B7'].Interior.ColorIndex := 13;
    Excel.Selection.Font.Color := clWhite;
    Excel.Selection.Interior.Pattern := xlSolid;

    Hoja.Range['C7:C7'].Select;
    excel.Range['C7'].Value2 := 'Total';
    excel.Range['C7'].Interior.ColorIndex := 23;
    Excel.Selection.Font.Color := clWhite;
    Excel.Selection.Interior.Pattern := xlSolid;

    zqryTiposDeVisitas.Active := False;
    zqryTiposDeVisitas.Open;
    zqryTiposDeVisitas.First;

    //Contar las visitas por cada tipo de visita a la empresa seleccionada
    zqryNumeroVisitas := TZQuery.Create(Self);
    zqryNumeroVisitas.Connection := connection.zConnection;

    //Llenar las columnas de Tipo de Visita y las veces que se visitaron por cada tipo de visita
    while not zqryTiposDeVisitas.Eof do
    begin
      excel.Range['B' + Trim(IntToStr(Fila))].Select;
      excel.Range['B' + Trim(IntToStr(Fila))].Value2 := zqryTiposDeVisitas.FieldByName('sDescripcion').AsString; //Datos de tipos de visitas

      excel.Selection.Interior.Pattern := 1;
      excel.Selection.Interior.PatternColorIndex := -4105;
      excel.Selection.Interior.ThemeColor := 1;
      excel.Selection.Interior.TintAndShade := -4.99893185216834E-02;
      excel.Selection.Interior.PatternTintAndShade := 0;

      Excel.Selection.Interior.Pattern := xlSolid;

      if graficarGeneral = true then
      begin
        zqryNumeroVisitas.Active := False;
        zqryNumeroVisitas.SQL.Text := consulta;
        zqryNumeroVisitas.Params.ParamByName('iIdTipoVisita').AsInteger :=  zqryTiposDeVisitas.FieldByName('iIdTipoVisita').AsInteger;
        zqryNumeroVisitas.Open;
      end
      else if graficarVendedorSeleccionado = True then
      begin
        zqryNumeroVisitas.Active := False;
        zqryNumeroVisitas.SQL.Text := consulta;
        zqryNumeroVisitas.Params.ParamByName('iIdVendedor').AsInteger := qrybitacoraventas.FieldByName('iIdVendedor').AsInteger;
        zqryNumeroVisitas.Params.ParamByName('iIdTipoVisita').AsInteger :=  zqryTiposDeVisitas.FieldByName('iIdTipoVisita').AsInteger;
        zqryNumeroVisitas.Open;
      end
      else
      begin
        zqryNumeroVisitas.Active := False;
        zqryNumeroVisitas.SQL.Text := consulta;
        zqryNumeroVisitas.Params.ParamByName('sIdCompania').AsString := compania;
        zqryNumeroVisitas.Params.ParamByName('iIdTipoVisita').AsInteger :=  zqryTiposDeVisitas.FieldByName('iIdTipoVisita').AsInteger;
        zqryNumeroVisitas.Open;
        
      end;

      excel.Range['C' + Trim(IntToStr(Fila))].Select;
      excel.Range['C' + Trim(IntToStr(Fila))].Value2 := IntToStr(zqryNumeroVisitas.RecordCount);

      excel.Selection.Interior.Pattern := 1;
      excel.Selection.Interior.PatternColorIndex := -4105;

      excel.Selection.Interior.ThemeColor := 1;
      excel.Selection.Interior.TintAndShade := -4.99893185216834E-02;
      excel.Selection.Interior.PatternTintAndShade := 0;

      Excel.Selection.Interior.Pattern := xlSolid;
      
      Fila := Fila + 1;
      zqryTiposDeVisitas.Next;
    end;

    //Dibujar Grafica con los datos
    Excel.ActiveSheet.Shapes.AddChart(-4102, xl3DPie).Select;
    Excel.ActiveSheet.ChartObjects(1).left := Excel.Columns[5].Left;
    Excel.ActiveSheet.ChartObjects(1).Top := Excel.Rows[7].Top;
    Excel.ActiveSheet.ChartObjects(1).Height :=Excel.Rows[15].Top;

    //Poner a los vendedores que participaron en esa compania
    if graficarEmpresaActual = True then
    begin
      Fila := Fila + 5;

      With connection.zCommand do
      begin
        Active := False;
        SQL.Clear;
        SQL.Add('select vend.sNombre ' +
                'from vta_catVendedores vend ' +
                'inner join vta_bitacoradeactividades bita ' +
                'on vend.iIdVendedor = bita.iIdVendedor ' +
                'where bita.sIdCompania = :sIdCompania ' +
                'group by vend.sNombre');
        Params.ParamByName('sIdCompania').AsString := qrybitacoraventas.FieldByName('sIdCompania').AsString;
        Open;


        Hoja.Range['B' + Trim(IntToStr(Fila))].Select;
        excel.Range['B' + Trim(IntToStr(Fila))].value2 := 'Participantes';
        excel.Range['B' + Trim(IntToStr(Fila))].Interior.ColorIndex := 23;
        Excel.Selection.Font.Color := clWhite;

        while not Eof do
        begin
          Hoja.Range['B' + Trim(IntToStr(Fila+1))].Select;
          excel.Range['B' + Trim(IntToStr(Fila+1))].value2 := FieldByName('sNombre').AsString;

          Excel.Selection.Borders[xlEdgeLeft];
          Excel.Selection.Borders[xlEdgeLeft].LineStyle := 1;//xlContinuous

          Excel.Selection.Borders[xlEdgeRight];
          Excel.Selection.Borders[xlEdgeRight].LineStyle := 1;//xlContinuous

          excel.Range['B' + Trim(IntToStr(Fila+1))].Interior.ColorIndex := 2;
          Excel.Selection.Font.Color := clBlack;
          Fila := Fila + 1;
          Next;
        end;
        Excel.Selection.Borders[xlEdgeBottom];
        Excel.Selection.Borders[xlEdgeBottom].LineStyle := 1;//xlContinuous

      end;
      graficarEmpresaActual := False;
    end;

    (*Agregar series*)
    (*try
      Excel.ActiveChart.SeriesCollection.Add(Excel.Worksheets[1].Range['C5:C7']);
    except
    end; *)

    Fila := Fila + 2;
  end;


  
end;

procedure Tfrm_Companias.graficarEfectividad2(repeticiones: Integer; consulta,
  compania, razonSocial, RFC, domicilio: string);
var
  TmpName : string;
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  //excel, libro, hoja : Variant;
  Fila, Grafica : Integer;
  zqryNumeroVisitas, zqryCompaniasDelVendedor : TZQuery;
const
  xl3DPie = -4102;
  xlBottom = -4107;
  //xlCenter = -4108;
  xlContext = -5002;
  xlContinuous = 1;
begin
  //Grafica la ultima de las opciones
  Fila := 8;

  try
    hoja := libro.sheets[repeticiones];
    hoja.select;
    Excel.Sheets['Hoja' + IntToStr(repeticiones)].Name := compania;
    excel.Visible := True;
  except
    on e:Exception do
    begin
      MessageDlg('No se puede continuar, verifique tener instalada la aplicación Microsoft Excel ', mtInformation, [mbok], 0);
      Exit;
    end;
  end;

  //Colocar Nombre de la Compania
  Excel.Range['B1:J2'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B1'].Select;

  excel.Range['B1'].Interior.Pattern := 1;
  excel.Range['B1'].Interior.PatternColorIndex := -4105;

  excel.Range['B1'].Interior.ThemeColor := 5;
  excel.Range['B1'].Interior.TintAndShade := 0.399975585192419;
  excel.Range['B1'].Interior.PatternTintAndShade := 0;

  Excel.Selection.Font.Color := clBlack;
  Excel.Range['B1'].value2 := 'Vendedores';
  //Formato del nombre de la compania
  Excel.Selection.Font.Name := 'Calibri';
  Excel.Selection.Font.Size := 16;
  Excel.Selection.Font.Strikethrough := False;
  Excel.Selection.Font.Bold := True;

  //Colocar la razon social, por ejemplo (Petroleos Mexicanos sa de cv)
  Excel.Range['B3:J3'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B3'].value2 := razonSocial;

  //Colocar el RFC
  Excel.Range['B4:J4'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B4'].value2 := 'RFC: ' + RFC;

  Excel.Range['B5:J5'].Select;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.WrapText := False;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;
  Excel.Range['B5'].value2 := domicilio;

  //Colocar el logo a la fila A
  Excel.Columns['A:A'].ColumnWidth := 25;
  Excel.Range['A1:A5'].Select;
  Excel.Selection.Orientation := 0;
  Excel.Selection.AddIndent := False;
  Excel.Selection.IndentLevel := 0;
  Excel.Selection.ShrinkToFit := False;
  Excel.Selection.ReadingOrder := xlContext;
  Excel.Selection.MergeCells := False;
  Excel.Selection.Merge;

  {$REGION 'LOGO'}
  try
    TmpName := '';
      imgAux := TImage.Create(nil);
      if TmpName='' then
      begin
        TempPath := ExtractFilePath(Application.Exename);
        TmpName:=TempPath +'ImgTempCliente.jpg';
        fs := Connection.configuracionVta.CreateBlobStream(Connection.configuracionVta.FieldByName('bImagen'), bmRead);
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
    Hoja.Shapes.AddPicture(TmpName, True, True, 0, 0, 130, 80);
  {$ENDREGION}


  //Poner color de fondo de la cabecera con los datos de la compania
  Excel.Range['B3:J5'].Select;

  Excel.Selection.Borders[xlEdgeLeft];
  Excel.Selection.Borders[xlEdgeLeft].LineStyle := 1;//xlContinuous

  Excel.Selection.Borders[xlEdgeRight];
  Excel.Selection.Borders[xlEdgeRight].LineStyle := 1;//xlContinuous

  Excel.Selection.Borders[xlEdgeBottom];
  Excel.Selection.Borders[xlEdgeBottom].LineStyle := 1;//xlContinuous

  excel.Range['B3:J5'].Interior.ColorIndex := 2;
  Excel.Selection.Font.Color := clBlack;
  Excel.Selection.Interior.Pattern := xlSolid;

  //Espacio de las cabeceras de los datos
  Excel.Columns['B:B'].ColumnWidth := 35;
  Excel.Columns['C:C'].ColumnWidth := 20;

  //Cabeceras de las columnas
  Hoja.Range['B7:B7'].Select;
  excel.Range['B7'].Value2 := 'Vendedor';
  excel.Range['B7'].Interior.ColorIndex := 13;
  Excel.Selection.Font.Color := clWhite;
  Excel.Selection.Interior.Pattern := xlSolid;

  Hoja.Range['C7:C7'].Select;
  excel.Range['C7'].Value2 := 'Total de Compañias';
  excel.Range['C7'].Interior.ColorIndex := 23;
  Excel.Selection.Font.Color := clWhite;
  Excel.Selection.Interior.Pattern := xlSolid;

  //Contar las visitas por cada tipo de visita a la empresa seleccionada
  zqryNumeroVisitas := TZQuery.Create(Self);
  zqryNumeroVisitas.Connection := connection.zConnection;

  qrCatVendedores.First;

  zqryCompaniasDelVendedor := TZQuery.Create(Self);
  zqryCompaniasDelVendedor.Connection := connection.zConnection;



  while not qrCatVendedores.Eof do
  begin
    excel.Range['B' + Trim(IntToStr(Fila))].Select;
    excel.Range['B' + Trim(IntToStr(Fila))].Value2 := qrCatVendedores.FieldByName('sNombre').AsString; //Datos de tipos de visitas

    excel.Selection.Interior.Pattern := 1;
    excel.Selection.Interior.PatternColorIndex := -4105;

    excel.Selection.Interior.ThemeColor := 1;
    excel.Selection.Interior.TintAndShade := -4.99893185216834E-02;
    excel.Selection.Interior.PatternTintAndShade := 0;

    Excel.Selection.Interior.Pattern := xlSolid;

    if graficarPorRangoDeFechas = True then
    begin
      zqryNumeroVisitas.Active := False;
      zqryNumeroVisitas.SQL.Text := consulta;
      zqryNumeroVisitas.Params.ParamByName('iIdVendedor').AsInteger := qrCatVendedores.FieldByName('iIdVendedor').AsInteger;
      zqryNumeroVisitas.Params.ParamByName('fechaInicio').AsDate := cxdtdtInicio.Date;
      zqryNumeroVisitas.Params.ParamByName('fechaFinal').AsDate := cxdtdtFin.Date;
      zqryNumeroVisitas.Open;
    end
    else
    begin
      zqryNumeroVisitas.Active := False;
      zqryNumeroVisitas.SQL.Text := consulta;
      zqryNumeroVisitas.Params.ParamByName('iIdVendedor').AsInteger := qrCatVendedores.FieldByName('iIdVendedor').AsInteger;
      zqryNumeroVisitas.Open;
    end;

    excel.Range['C' + Trim(IntToStr(Fila))].Select;
    excel.Range['C' + Trim(IntToStr(Fila))].Value2 := IntToStr(zqryNumeroVisitas.RecordCount);

    excel.Selection.Interior.Pattern := 1;
    excel.Selection.Interior.PatternColorIndex := -4105;

    excel.Selection.Interior.ThemeColor := 1;
    excel.Selection.Interior.TintAndShade := -4.99893185216834E-02;
    excel.Selection.Interior.PatternTintAndShade := 0;

    Excel.Selection.Interior.Pattern := xlSolid;

    //Poner las las companias en las que participo dicho vendedor, de forma tabulada
    (*zqryCompaniasDelVendedor.Active := False;
    zqryCompaniasDelVendedor.SQL.Text := 'select * from vta_bitacoradeactividades ' +
                                      'where sNombre=:sNombre ' +
                                        'group by sIdCompania';
    zqryCompaniasDelVendedor.Params.ParamByName('sNombre').AsString := qrCatVendedores.FieldByName('sNombre').AsString;
    zqryCompaniasDelVendedor.Open;
    zqryCompaniasDelVendedor.First;

    while not zqryCompaniasDelVendedor.Eof do
    begin
      excel.Range['B' + Trim(IntToStr(Fila + 1))].Select;
      excel.Range['B' + Trim(IntToStr(Fila + 1))].Value2 := zqryCompaniasDelVendedor.FieldByName('sIdCompania').AsString;
      excel.Range['B' + Trim(IntToStr(Fila + 1))].Interior.ColorIndex := 39;
      Excel.Selection.Interior.Pattern := xlSolid;

      Fila := Fila + 1;
      zqryCompaniasDelVendedor.Next;
    end;*)

    qrCatVendedores.Next;
    Fila := Fila + 1;
  end;

  //Dibujar Grafica con los datos
  Excel.ActiveSheet.Shapes.AddChart(-4102, xl3DPie).Select;
  Excel.ActiveSheet.ChartObjects(1).left := Excel.Columns[5].Left;
  Excel.ActiveSheet.ChartObjects(1).Top := Excel.Rows[7].Top;
  Excel.ActiveSheet.ChartObjects(1).Height :=Excel.Rows[15].Top;

  Fila := Fila + 2;
  qrCatVendedores.First;

  while not qrCatVendedores.Eof do
  begin
    excel.Range['B' + Trim(IntToStr(Fila))].Select;
    excel.Range['B' + Trim(IntToStr(Fila))].Value2 := qrCatVendedores.FieldByName('sNombre').AsString; //Datos de tipos de visitas
    excel.Range['B' + Trim(IntToStr(Fila))].Interior.ColorIndex := 23;
    Excel.Selection.Interior.Pattern := xlSolid;
    Excel.Selection.Font.Color := clWhite;

    if graficarPorRangoDeFechas = True then
    begin
      zqryCompaniasDelVendedor.Active := False;
      zqryCompaniasDelVendedor.SQL.Text := 'select * from vta_bitacoradeactividades ' +
                                        'where iIdVendedor = :iIdVendedor ' +
                                        'and DATE(dIdFecha) BETWEEN :fechaInicio and :fechaFinal '+
                                          'group by sIdCompania';
      zqryCompaniasDelVendedor.Params.ParamByName('iIdVendedor').AsInteger := qrCatVendedores.FieldByName('iIdVendedor').AsInteger;
      zqryCompaniasDelVendedor.Params.ParamByName('fechaInicio').AsDate :=cxdtdtInicio.Date;
      zqryCompaniasDelVendedor.Params.ParamByName('fechaFinal').AsDate := cxdtdtFin.Date;
      zqryCompaniasDelVendedor.Open;
      zqryCompaniasDelVendedor.First;
    end
    else
    begin

      zqryCompaniasDelVendedor.Active := False;
      zqryCompaniasDelVendedor.SQL.Text := 'select * from vta_bitacoradeactividades ' +
                                        'where iIdVendedor = :iIdVendedor ' +
                                          'group by sIdCompania';
      zqryCompaniasDelVendedor.Params.ParamByName('iIdVendedor').AsInteger := qrCatVendedores.FieldByName('iIdVendedor').AsInteger;
      zqryCompaniasDelVendedor.Open;
      zqryCompaniasDelVendedor.First;
    end;

    while not zqryCompaniasDelVendedor.Eof do
    begin
      //Poner las las companias en las que participo dicho vendedor, de forma tabulada
      excel.Range['B' + Trim(IntToStr(Fila + 1))].Select;
      excel.Range['B' + Trim(IntToStr(Fila + 1))].Value2 := '   -' + zqryCompaniasDelVendedor.FieldByName('sIdCompania').AsString;
      excel.Range['B' + Trim(IntToStr(Fila + 1))].Interior.ColorIndex := 2;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Borders[xlEdgeLeft];
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;

      Excel.Selection.Borders[xlEdgeRight];
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;

      Fila := Fila + 1;
      zqryCompaniasDelVendedor.Next;
    end;

    Excel.Selection.Borders[xlEdgeBottom];
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;

    qrCatVendedores.Next;
    Fila := Fila + 1;
  end;
end;

procedure Tfrm_Companias.grid_clientesContactosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  qrContactos.Active := False;
  qrContactos.ParamByName('compania').AsString := zqCompanias.FieldByName('sIdCompania').AsString;
  qrContactos.ParamByName('contrato').AsString := global_contrato;
  qrContactos.ParamByName('fechaI').AsString := formatoFecha(tdFechaContactosInicio.Date);
  qrContactos.ParamByName('fechaF').AsString := formatoFecha(tdFechaContactosFinal.Date);
  qrContactos.Open;
end;

procedure Tfrm_Companias.habilitarCombos;
begin
  //Habilita los combos que llevan a los Catalogos de Tipos de Visita y Catalogo de Vendedores
  cbbTipoVisita.Enabled := True;
  cbbVendedor.Enabled := True;
  btnCatalogoTipoVisita.Enabled := True;
  btnCatalogoVendedores.Enabled := True;
end;

procedure Tfrm_Companias.imprimirContactos;
var
  Excel, Libro, Hoja : Variant;
  
  x : integer;
  continuar : Boolean;
  orden : string;
  ordenAnterior : string;

  iFila : integer;
  guardar : TSaveDialog;

  direccion : string;
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  procedure Contornos;
  begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight      := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle    := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight       := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight    := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle  := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight     := xlThin;
  end;

  procedure Cabecera;
  begin
    Excel.Range['C' + IntToStr(iFila - 1) + ':E' + IntToStr(iFila - 1)].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := rxContactos.FieldByName('sOrden').AsString;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Size := 18;

    Excel.Range['A' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Nombre';
    Contornos;
    Excel.Range['B' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Compañia';
    Contornos;
    Excel.Range['C' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'RFC';
    Contornos;
    Excel.Range['D' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Domicilio';
    Contornos;
    Excel.Range['E' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Vendedor';
    Contornos;
    Excel.Range['F' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Telefono';
    Contornos;
    Excel.Range['G' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Correo electronico';
    Contornos;
    Excel.Range['H' + IntToStr(iFila)].Select;
    Excel.Selection.Value := 'Estatus';
    Contornos;

    Excel.Range['A' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Interior.ColorIndex := 37;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Size := 13;
  end;

begin
     if not FileExists(global_files + global_miReporte + '_CADcontactosxcliente.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADcontactosxcliente.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  continuar := False;
  for x := 0 to lstchkContactos.Items.Count - 1 do
  begin
    if lstchkContactos.Items.Items[x].Checked then
    begin
      continuar := True;
      Break;
    end;
  end;

  if continuar then
  begin
    if rxContactos.RecordCount > 0 then
      rxContactos.EmptyTable;

    rxContactos.Active := True;

    //Evualuar el tipo de ordenamiento que se hara
    if grpOrdenContactos.Buttons[0].Checked then
      orden := 'sContacto';
    if grpOrdenContactos.Buttons[1].Checked then
      orden := 'eStatus';
    if grpOrdenContactos.Buttons[2].Checked then
      orden := 'sCuidad';
    if grpOrdenContactos.Buttons[3].Checked then
      orden := 'dIdFecha';
    if grpOrdenContactos.Buttons[4].Checked then
      orden := 'sIdCompania';

    for x := 0 to lstchkContactos.Items.Count - 1 do
    begin
      if lstchkContactos.Items.Items[x].Checked then
      begin
        if qrContactos.Locate('sIdContacto', getIdContacto(lstchkContactos.Items.Items[x].Text), []) then
        begin
          rxContactos.Append;
          rxContactos.FieldByName('sNombre').AsString         := qrContactos.FieldByName('sNombre').AsString;
          rxContactos.FieldByName('sIdCompania').AsString     := qrContactos.FieldByName('sIdCompania').AsString;
          rxContactos.FieldByName('sTelefono').AsString       := qrContactos.FieldByName('sTelefono').AsString;
          rxContactos.FieldByName('sTelefonoMovil').AsString  := qrContactos.FieldByName('sTelefonoMovil').AsString;
          rxContactos.FieldByName('sDomicilio').AsString      := qrContactos.FieldByName('sDomicilio').AsString;
          rxContactos.FieldByName('sCorreo').AsString         := qrContactos.FieldByName('sCorreo').AsString;
          rxContactos.FieldByName('sCuidad').AsString         := qrContactos.FieldByName('sCuidad').AsString;
          rxContactos.FieldByName('sPuesto').AsString         := qrContactos.FieldByName('sPuesto').AsString;
          rxContactos.FieldByName('sContacto').AsString       := qrContactos.FieldByName('sContacto').AsString;
          rxContactos.FieldByName('sRFC').AsString            := qrContactos.FieldByName('sRFC').AsString;
          rxContactos.FieldByName('dIdFecha').AsString        := qrContactos.FieldByName('dIdFecha').AsString;
          rxContactos.FieldByName('eStatus').AsString         := qrContactos.FieldByName('eStatus').AsString;
          rxContactos.FieldByName('sOrden').AsString          := qrContactos.FieldByName(orden).AsString;
          rxContactos.Post;
        end;
      end;
    end;

    rxContactos.SortOnFields('sOrden');

    //Si esta chequeado el boton de excel
    if grpImprimirContactos.Buttons[0].Checked then
    begin
      {$REGION 'Guardar'}

      continuar := True;
      guardar := TSaveDialog.Create(nil);
      Guardar.Title := '¿Donde desea guardar la impresion?...';
      Guardar.InitialDir := GetCurrentDir;
      Guardar.Filter := 'Archivo de Excel|*.xlsx';
      Guardar.DefaultExt := 'xlsx';
      Guardar.FilterIndex := 1;
  
      if Guardar.Execute then
      begin
        direccion := Guardar.FileName;
        if FileExists(direccion) then
        begin
          ShowMessage('Ya existe el archivo ' + direccion);
          continuar := False;
        end;
      end
      else
      begin
        continuar := False;
        Showmessage('Proceso cancelado por el usuario.');
      end;
      guardar.Destroy;
    
      {$ENDREGION}

      if continuar then
      begin

        {$REGION 'Crear Excel'}

        Excel := CreateOleObject('Excel.Application');
        Excel.Visible := False;
        Excel.ScreenUpdating := True;
        Excel.DisplayAlerts := False;
        Libro := Excel.Workbooks.Add;
        Hoja := Libro.Sheets[1];
        Hoja.Select;
        Excel.ActiveWindow.DisplayGridlines := False;
        Excel.ActiveWindow.Zoom := 90;
        Hoja.Name := 'Contactos por Compañia';
        Hoja.PageSetup.Orientation := xlLandscape;
        Hoja.PageSetup.TopMargin := 0.0;
        Hoja.PageSetup.BottomMargin  := 0.0;
        Hoja.PageSetup.LeftMargin := 0.0;
        Hoja.PageSetup.RightMargin := 0.0;
        Hoja.PageSetup.CenterHorizontally := True;
        Hoja.PageSetup.CenterVertically := False;
        Hoja.PageSetup.Draft := False;
        Libro.WorkSheets[1].PageSetup.FitToPagesWide := 1;
        Libro.WorkSheets[1].PageSetup.Zoom := False;


        try
          TmpName := '';
          imgAux := TImage.Create(nil);
          if TmpName='' then
          begin
            TempPath := ExtractFilePath(Application.Exename);
            TmpName:=TempPath +'Logo1.jpg';
            fs := Connection.configuracionVta.CreateBlobStream(Connection.configuracionVta.FieldByName('bImagen'), bmRead);
            if fs.Size > 1 Then
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
        Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 75);

        {$ENDREGION}

        {$REGION 'Encabezado'}

        Excel.Columns['A:A'].ColumnWidth := 35;
        Excel.Columns['B:B'].ColumnWidth := 20;
        Excel.Columns['C:C'].ColumnWidth := 20;
        Excel.Columns['D:D'].ColumnWidth := 50;
        Excel.Columns['E:E'].ColumnWidth := 25;
        Excel.Columns['F:F'].ColumnWidth := 15;
        Excel.Columns['G:G'].ColumnWidth := 26;
        Excel.Columns['H:H'].ColumnWidth := 13;

        iFila := 9;
        Cabecera;

        Excel.Range['B1:F1'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sNombre').AsString;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 16;
        Excel.Selection.MergeCells := True;
        Excel.Range['B2:F2'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sRfc').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['B3:F3'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sDireccion1').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['B4:F4'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sDireccion2').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['B5:F5'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sTelefono').AsString;
        Excel.Selection.MergeCells := True;
        Excel.Range['B6:F6'].Select;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sWeb').AsString;
        Excel.Selection.MergeCells := True;

        Excel.Range['B1:F6'].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.WrapText := True;

        {$ENDREGION}

        {$REGION 'Datos'}

        iFila := 10;
        rxContactos.First;

        pgrImprimirContactos.Maximum := 0;
        pgrImprimirContactos.Maximum := rxContactos.RecordCount;
        pgrImprimirContactos.Position := 0;
        pgrImprimirContactos.Refresh;

        ordenAnterior := rxContactos.FieldByName('sOrden').AsString;
        Excel.Range['C8'].Select;
        Excel.Selection.Value := rxContactos.FieldByName('sOrden').AsString;
        while not rxContactos.Eof do
        begin
          if OrdenAnterior = rxContactos.FieldByName('sOrden').AsString  then
          begin
            Excel.Range['A' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sNombre').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['B' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sIdCompania').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['C' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sRFC').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['D' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sDomicilio').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['E' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sContacto').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['F' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sTelefono').AsString + ', ' + rxContactos.FieldByName('sTelefonoMovil').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['G' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('sCorreo').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            Excel.Range['H' + IntToStr(iFila)].Select;
            Excel.Selection.Value := rxContactos.FieldByName('eStatus').AsString;
            Contornos;
            Excel.Selection.WrapText := True;
            rxContactos.Next;
            Inc(iFila);
          end
          else
          begin
            Inc(iFila,4);
            Cabecera;
            ordenAnterior := rxContactos.FieldByName('sOrden').AsString;
            Inc(iFila);
          end;

          pgrImprimirContactos.Position := pgrImprimirContactos.Position + 2;
          pgrImprimirContactos.Refresh;
        end;

        Excel.Range['A6:H' + IntToStr(iFila)].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;

        Excel.Range['A' + IntToStr(iFila + 3) + ':B' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sRepresentante').AsString;

        Excel.Range['A' + IntToStr(iFila + 4) + ':B' + IntToStr(iFila + 4)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sPuestoRepresentante').AsString;

        Excel.Range['C' + IntToStr(iFila + 3) + ':E' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sFirmante1').AsString;

        Excel.Range['C' + IntToStr(iFila + 4) + ':E' + IntToStr(iFila + 4)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sPuestoFirmante1').AsString;

        Excel.Range['F' + IntToStr(iFila + 3) + ':H' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sFirmante2').AsString;

        Excel.Range['F' + IntToStr(iFila + 4) + ':H' + IntToStr(iFila + 4)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sPuestoFirmante2').AsString;


        Excel.Range['A' + IntToStr(iFila + 3) + ':H' + IntToStr(iFila + 3)].Select;
        Excel.Selection.Font.Underline := xlUnderlineStyleSingle;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.HorizontalAlignment := xlCenter;

        Excel.Range['A' + IntToStr(iFila + 4) + ':H' + IntToStr(iFila + 4)].Select;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.HorizontalAlignment := xlCenter;

        Excel.Range['A' + IntToStr(iFila + 6) + ':H' + IntToStr(iFila + 6)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := connection.configuracionVta.FieldByName('sSlogan').AsString;
        Excel.Selection.HorizonTalAlignment := xlRight;
        Excel.Selection.Font.Size := 10;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Italic := True;

        Excel.Range['C8'].Select;

        Excel.ScreenUpdating := True;
        Libro.SaveAs(direccion);
        Excel.Visible := True;

      {$ENDREGION}

      end;
    end;
    //Si esta chequeado el boton de Pdf
    if grpImprimirContactos.Buttons[1].Checked then
    begin
      frxClientes1.LoadFromFile(global_files + global_miReporte + '_CADcontactosxcliente.fr3') ;
        frxClientes1.ShowReport();
    end;

  end
  else
    MessageDlg('Seleccione almenos un contacto', mtInformation, [mbOk], 0);
end;

procedure Tfrm_Companias.limpiarCampos;
begin
  //Limpia los campos del formulario
  cxSResponsable.Text := '';
  mResumen.Text := '*';
  mAsunto.Text := '*';
end;

procedure Tfrm_Companias.actualizarBitacora(compania, ant : string);
begin
  with connection.zCommand do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('update vta_bitacoradeactividades set sIdCompania = :compania '+
                                'where sIdCompania = :companiaAnt');
    ParamByName('compania').AsString := compania;
    ParamByName('companiaAnt').AsString := ant;
    ExecSQL;
  end;
end;

procedure Tfrm_Companias.actualizarContactos(compania: string; ant: string);
begin
  with connection.zCommand do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('update vta_contactosxcompania set sIdCompania = :compania '+
                                'where sIdCompaniaconf = :contrato and sIdCompania = :companiaAnt');
    ParamByName('compania').AsString := compania;
    ParamByName('contrato').AsString := global_contrato;
    ParamByName('companiaAnt').AsString := ant;
    ExecSQL;
  end;
end;

procedure Tfrm_Companias.actualizarcotizaciones(compania: string; ant: string);
begin
  with connection.zCommand do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('update vta_cotizaciones set sIdCompania = :compania, sNombre = :nombre, sPuesto = :puesto '+
                                'where sIdCompaniaConf = :contrato and sIdCompania = :companiaAnt');
    ParamByName('contrato').AsString := global_contrato;
    ParamByName('compania').AsString := compania;
    ParamByName('nombre').AsString := zQCompanias.FieldByName('sContacto').AsString;
    ParamByName('puesto').AsString := zQCompanias.FieldByName('sPuesto').AsString;
    ParamByName('companiaAnt').AsString := ant;
    ExecSQL;
  end;
end;

procedure Tfrm_Companias.actualizarConceptos(compania: string; ant: string);
begin
  with connection.zCommand do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('update vta_conceptosxcotizacion set sIdCompania = :compania '+
            'where sIdCompaniaConf = :contrato and sIdCompania = :companiaAnt');
    ParamByName('compania').AsString := compania;
    ParamByName('contrato').AsString := global_contrato;
    ParamByName('companiaAnt').AsString := ant;
    ExecSQL;
  end;
end;

procedure Tfrm_Companias.actualizarRelacionadoXCompania(nuevo: string; anterior: string);
begin
  actualizarBitacora(nuevo, anterior);
  actualizarContactos(nuevo, anterior);
  actualizarcotizaciones(nuevo, anterior);
  actualizarConceptos(nuevo, anterior);
end;
end.
