unit frm_Consumibles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls, masUtilerias, 
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, Utilerias, Jpeg,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, RXDBCtrl, rxToolEdit,
  NxCollection, sLabel, rxCurrEdit, Buttons, RXSpin, unitGenerales,
  AdvCircularProgress, udbgrid, unitexcepciones, unittbotonespermisos,
  UnitValidaTexto, UnitExcel, ComObj, UnitTablasImpactadas, unitactivapop,
  UFunctionsGHH, ComCtrls, DBDateTimePicker, UnitValidacion, ExtDlgs, NxEdit,
  JvExControls, JvLabel, Newpanel, AdvDBLookupComboBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExportaExcel, cxPropertiesStore,
  dxLayoutContainer, dxLayoutControlAdapters, dxLayoutControl, cxSplitter,
  dxLayoutcxEditAdapters, cxDBEdit, cxGroupBox, FormAutoScaler, cxLabel,
  cxCurrencyEdit, frm_repositorio, dxBarBuiltInMenu, cxButtons, cxPC, cxCheckBox,
  dxGDIPlusClasses, PictureContainer;
type
  TfrmConsumibles = class(TForm)
    DBTotalesxCategoria: TfrxDBDataset;
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
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ds_insumos: TDataSource;
    insumos: TZQuery;
    grupos: TZReadOnlyQuery;
    dsGrupos: TDataSource;
    Precios: TZQuery;
    dtsPrecios: TDataSource;
    BuscaObjeto: TZReadOnlyQuery;
    ds_buscaobjeto: TDataSource;
    PreciossDescripcion: TStringField;
    PreciosdIdFecha: TDateField;
    PreciossContrato: TStringField;
    PreciossNumeroActividad: TStringField;
    PreciosdPrecios: TFloatField;
    PreciossIdGrupo: TStringField;
    frxInsumos: TfrxReport;
    ImprimeMaterialesStockMin1: TMenuItem;
    ImprimeMaterialesStockMax1: TMenuItem;
    ds_imp_insumos: TDataSource;
    Imp_Insumos: TZQuery;
    ImprimeProductosPerecederos1: TMenuItem;
    ImprimeporUbicacion1: TMenuItem;
    ds_almacen: TDataSource;
    almacen: TZReadOnlyQuery;
    Label17: TLabel;
    frxAnexoDMA: TfrxReport;
    DBAnexoDMA: TfrxDBDataset;
    dsProveedores: TDataSource;
    Proveedores: TZReadOnlyQuery;
    N5: TMenuItem;
    SaveDialog1: TSaveDialog;
    insumossContrato: TStringField;
    insumossIdInsumo: TStringField;
    insumossIdProveedor: TStringField;
    insumossIdAlmacen: TStringField;
    insumossTipoActividad: TStringField;
    insumosmDescripcion: TMemoField;
    insumossMedida: TStringField;
    insumosdCantidad: TFloatField;
    insumosdExistencia: TFloatField;
    insumossUbicacion: TStringField;
    insumosdStockMax: TFloatField;
    insumosdStockMin: TFloatField;
    insumossDescripcion: TStringField;
    SaveImage: TSaveDialog;
    OpenPicture: TOpenPictureDialog;
    PopupSecundario: TPopupMenu;
    MenuItem1: TMenuItem;
    ImprimirMaterialesFotografia1: TMenuItem;
    insumosiIdSubfamilia: TIntegerField;
    insumossIdMarca: TStringField;
    qrySubfamilia: TZQuery;
    ds_Subfamilia: TDataSource;
    qryMarcas: TZQuery;
    qryTipoSubFamilia: TZQuery;
    ds_Marcas: TDataSource;
    ds_TipoSubFamilia: TDataSource;
    qryMarcassIdMarca: TStringField;
    qryMarcassMarca: TStringField;
    qryTipoSubFamiliaiIdTipoSubFamilia: TIntegerField;
    qryTipoSubFamiliaiIdSubFamilia: TIntegerField;
    qryTipoSubFamiliasTipo: TStringField;
    insumosiIdTipoSubFamilia: TIntegerField;
    MainMenu1: TMainMenu;
    zkardex: TZQuery;
    Panel: tNewGroupBox;
    JvLabel1: TJvLabel;
    dskardex: TDataSource;
    zdac: TZReadOnlyQuery;
    contra: TEdit;
    insumossEstado: TStringField;
    grupossIdFamilia: TStringField;
    grupossDescripcion: TStringField;
    qrySubfamiliaiIdSubfamilia: TIntegerField;
    qrySubfamiliasIdFamilia: TStringField;
    qrySubfamiliasDescripcion: TStringField;
    insumossIdGrupo: TStringField;
    insumosiId: TIntegerField;
    zqMedidas: TZQuery;
    dsMedidas: TDataSource;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    ExportaraExcel1: TMenuItem;
    zq_contratos: TZQuery;
    zqTipoInsumo: TZQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    frmBarra1: TfrmBarra;
    cxSplitter1: TcxSplitter;
    frmtsclr1: TFormAutoScaler;
    grid_materiales: TcxGrid;
    grid_materialesDBTableView1: TcxGridDBTableView;
    col_idMaterial: TcxGridDBColumn;
    Col_Descripcion: TcxGridDBColumn;
    col_Cantidad: TcxGridDBColumn;
    col_Medida: TcxGridDBColumn;
    Col_Estado: TcxGridDBColumn;
    col_Existencia: TcxGridDBColumn;
    grid_materialesLevel1: TcxGridLevel;
    col_almacen: TcxGridDBColumn;
    insumosalmacen: TStringField;
    insumosdCostoMN: TFloatField;
    insumosdCostoDLL: TFloatField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel1: TcxLabel;
    tsAlmacen: TDBLookupComboBox;
    tsDescripcion: TDBMemo;
    cxLabel4: TcxLabel;
    tsMedida: TDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    tsNumeroActividad: TDBEdit;
    cxLabel17: TcxLabel;
    sTipoActividad: TComboBox;
    cxGroupBox1: TcxGroupBox;
    bImagen: TImage;
    cxExaminar: TcxButton;
    cxEliminar: TcxButton;
    cxVisualizar: TcxButton;
    cxTabSheet2: TcxTabSheet;
    tsdVenta: TDBEdit;
    cxLabel18: TcxLabel;
    cxLabel14: TcxLabel;
    tdCostoMN: TDBEdit;
    insumosdVentaMN: TFloatField;
    GroupBox1: TGroupBox;
    cxLabel6: TcxLabel;
    dbGrupos: TDBLookupComboBox;
    dbSubfamilia: TDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    dbTipo: TDBLookupComboBox;
    dbMarca: TDBLookupComboBox;
    cxLabel9: TcxLabel;
    cxLabel19: TcxLabel;
    dbProveedores: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    tsdModelo: TDBEdit;
    tsdTalla: TDBEdit;
    Label28: TLabel;
    GroupBox3: TGroupBox;
    cxLabel10: TcxLabel;
    mUbicacion: TDBMemo;
    dStockMin: TDBEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    dStokMax: TDBEdit;
    dFechaCaducidad: TDBDateTimePicker;
    chkFecha: TDBCheckBox;
    insumoslAplicaFecha: TStringField;
    insumosdFechaCaducidad: TDateField;
    insumossModelo: TStringField;
    cxTabSheet3: TcxTabSheet;
    dbExistencia: TDBEdit;
    cxLabel13: TcxLabel;
    cxLabel15: TcxLabel;
    tdCostoDLL: TDBEdit;
    dbeNroSerie: TDBEdit;
    cxLabel16: TcxLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    insumosdTalla: TStringField;
    frmBarra2: TfrmBarra;
    cxLabel22: TcxLabel;
    edtLote: TDBEdit;
    QryNumerosSerie: TZQuery;
    ds_numerosserie: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    GroupBox4: TGroupBox;
    cxLabel5: TcxLabel;
    tsdCantidad: TDBEdit;
    AjustarCantidad: TRxCalcEdit;
    cxLabel21: TcxLabel;
    rSumarExistencia: TcxCheckBox;
    rRestarExistencia: TcxCheckBox;
    cxEntrada: TcxGridDBColumn;
    cxSalida: TcxGridDBColumn;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton6: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Col_Linea: TcxGridDBColumn;
    col_sublinea: TcxGridDBColumn;
    cxRecepcion: TcxGridDBColumn;
    CalcularExistencias: TMenuItem;
    PictureContainer1: TPictureContainer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsIdTipoEmbarcacionKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroActividaddEnter(Sender: TObject);
    procedure tsNumeroActividadActividadExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure sTipoActividadEnter(Sender: TObject);
    procedure sTipoActividadExit(Sender: TObject);
    procedure sTipoActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsdCantidadEnter(Sender: TObject);
    procedure tsdCantidadExit(Sender: TObject);
    procedure PreciosAfterInsert(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PreciosCalcFields(DataSet: TDataSet);
    procedure dbGruposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_embarcacionesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Imprimir1Click(Sender: TObject);
    procedure ImprimeMaterialesStockMin1Click(Sender: TObject);
    procedure ImprimeMaterialesStockMax1Click(Sender: TObject);
    procedure mUbicacionEnter(Sender: TObject);
    procedure mUbicacionExit(Sender: TObject);
    procedure dStokMaxKeyPress(Sender: TObject; var Key: Char);
    procedure dStockMinKeyPress(Sender: TObject; var Key: Char);
    procedure dStokMaxEnter(Sender: TObject);
    procedure dStokMaxExit(Sender: TObject);
    procedure dStockMinEnter(Sender: TObject);
    procedure dStockMinExit(Sender: TObject);
    procedure dbGruposKeyPress(Sender: TObject; var Key: Char);
    procedure dbGruposEnter(Sender: TObject);
    procedure dbGruposExit(Sender: TObject);
    procedure frxInsumosGetValue(const VarName: string; var Value: Variant);
    procedure dFechaCaducidadKeyPress(Sender: TObject; var Key: Char);
    procedure dbAlmacenExit(Sender: TObject);
    procedure BuscaMaterial(Id: string; accion: string);
    procedure BuscaInsumo(Id: string; accion: string);
    procedure BuscaMateriales(Id: string);
    procedure ImprimeProductosPerecederos1Click(Sender: TObject);
    procedure ImprimeporUbicacion1Click(Sender: TObject);
    procedure dbProveedoresKeyPress(Sender: TObject; var Key: Char);
    procedure InsertaActividad(Sender: TObject);
    procedure procBuscaPartida(Sender: TObject);
    procedure procCalculaCosto(Sender: TObject);
    procedure procCalculaFlete(Sender: TObject);
    procedure procCalculaDerecho(Sender: TObject);
    procedure procCalculaMerma(Sender: TObject);
    procedure procCalculaCostoDLL(Sender: TObject);
    procedure procCalculaFleteDLL(Sender: TObject);
    procedure procCalculaDerechoDLL(Sender: TObject);
    procedure procCalculaMermaDLL(Sender: TObject);
    procedure procObtiene(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure procObtieneTexto(Sender: TObject);
    procedure procSuma(Sender: TObject);
    procedure procSumaDLL(Sender: TObject);
    procedure procSumaSalir(Sender: TObject);
    procedure txtIdKeyPress(Sender: TObject; var Key: Char);
    procedure mUbicacionKeyPress(Sender: TObject; var Key: Char);
    procedure dbExistenciaEnter(Sender: TObject);
    procedure dbExistenciaExit(Sender: TObject);
    procedure grid_embarcacionesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure grid_embarcacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_embarcacionesTitleClick(Column: TColumn);
    procedure grid_embarcacionesCellClick(Column: TColumn);
    procedure ExportaaPlantillaExcel1Click(Sender: TObject);
    procedure formatoEncabezado();
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure insumosdCostoMNSetText(Sender: TField; const Text: string);
    procedure insumosdCostoDllSetText(Sender: TField; const Text: string);
    procedure insumosdVentaMNSetText(Sender: TField; const Text: string);
    procedure insumosdVentaDLLSetText(Sender: TField; const Text: string);
    procedure insumosdCantidadSetText(Sender: TField; const Text: string);
    procedure insumosdInstaladoSetText(Sender: TField; const Text: string);
    procedure insumosdPorcentajeSetText(Sender: TField; const Text: string);
    procedure insumosdNuevoPrecioSetText(Sender: TField; const Text: string);
    procedure insumosdExistenciaSetText(Sender: TField; const Text: string);
    procedure insumosdStockMaxSetText(Sender: TField; const Text: string);
    procedure insumosdStockMinSetText(Sender: TField; const Text: string);
    procedure dStokMaxChange(Sender: TObject);
    procedure dbExistenciaChange(Sender: TObject);
    procedure dbeNroSerieKeyPress(Sender: TObject; var Key: Char);
    procedure cargaImagen();
    procedure muestraImagen();
    procedure grid_embarcacionesMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure ImprimirMaterialesFotografia1Click(Sender: TObject);
    procedure ImportarMateriales();
    procedure dbSubfamiliaClick(Sender: TObject);
    procedure rSumarExistenciaClick(Sender: TObject);
    procedure rRestarExistenciaClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure insumosCalcFields(DataSet: TDataSet);
    procedure dbGruposCloseUp(Sender: TObject);
    procedure grid_materialesDBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_materialesDBTableView1MouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure grid_embarcacionesDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure cargar_tipo;
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbSubfamiliaEnter(Sender: TObject);
    procedure dbSubfamiliaExit(Sender: TObject);
    procedure dbMarcaEnter(Sender: TObject);
    procedure dbMarcaExit(Sender: TObject);
    procedure dbTipoEnter(Sender: TObject);
    procedure dbTipoExit(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure dbFamiliasEnter(Sender: TObject);
    procedure grid_materialesDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxEliminarClick(Sender: TObject);
    procedure cxExaminarClick(Sender: TObject);
    procedure cxVisualizarClick(Sender: TObject);
    procedure tsAlmacenEnter(Sender: TObject);
    procedure tsAlmacenExit(Sender: TObject);
    procedure dbProveedoresEnter(Sender: TObject);
    procedure dbProveedoresExit(Sender: TObject);
    procedure tsdModeloEnter(Sender: TObject);
    procedure tsdModeloExit(Sender: TObject);
    procedure tsdTallaEnter(Sender: TObject);
    procedure tsdTallaExit(Sender: TObject);
    procedure edtLoteEnter(Sender: TObject);
    procedure edtLoteExit(Sender: TObject);
    procedure dbeNroSerieEnter(Sender: TObject);
    procedure dbeNroSerieExit(Sender: TObject);
    procedure insumosAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure CalcularExistenciasClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);


  private
    sMenuP: string;
    procedure Llenargrupos;
    { Private declarations }
    procedure ImprimeDistribucion(sParamTipo :string);
  public
    { Public declarations }
    sParam_familia,
    sParam_subfamilia : string;
  end;

var
  frmConsumibles: TfrmConsumibles;
  filtro, buscar, cadena, stock, OldIdInsumo, Actual_almacen: string;
  SavePlace: TBookmark;
  Encuentra: boolean;
  zCatalogo: TZReadOnlyQuery;
  zMonto: TZQuery;
  GridCatalogo: TRxDBGrid;
  sArchivo: string;
  Numero: double;
  Existencia: double;
//  utgrid: ticdbgrid;
  botonpermiso: tbotonespermisos;
  sOpcion: string;
  bImagenDefault: boolean;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;
  sIdOrig: string;

  //variable para guardar la cantidad actual
  dCantidad: Double;
  recentInsert:Boolean;
  IdSubfamilia: Integer;
  insumo_agregado : string;


implementation

uses frm_grupofamilias, frm_proveedores, frm_SubFamProductos,
  frm_RecepciondeMateriales, frm_MarcasxSubFam, frm_Medidas, frm_TipoInsumo, frm_detallesubfamilias,
  frm_inteligent, frm_MovimientosInsumos;

{$R *.dfm}






procedure TfrmConsumibles.txtIdKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsnumeroActividad.SetFocus;
end;

procedure TfrmConsumibles.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Insumos.Cancel;
  action := cafree;
//  utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmConsumibles.FormShow(Sender: TObject);
begin
  recentInsert:=False;
  sMenuP := stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuConsumibles', PopupPrincipal);
  OpcButton := '';
  sIdOrig := '';
  bImagenDefault := True;

  Actual_almacen := '';
  almacen.Active := False;
  almacen.Params.ParamByName('Contrato').AsString := Global_Contrato;
  almacen.Params.ParamByName('Usuario').AsString := Global_Usuario;
  almacen.Open;

  if almacen.recordcount > 0 then
  begin
    Actual_almacen := almacen.fieldbyname('sIdAlmacen').asstring;
  end;

  //se colocan todos los campos de la consulta debido que no se quiere que se carguen las imagenes ya que cargarian demasiado la consulta,,
  cadena := 'select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
    'i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
    'i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
    'f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
    'left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
    'left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
    'where i.sContrato = :Contrato and i.sIdAlmacen =:Almacen and sTipoActividad like :Tipo ';

  IsOpen:=false;
  Insumos.DisableControls;
  try
      Insumos.Active := False;
      Insumos.Params.ParamByName('Contrato').DataType := ftString;
      Insumos.Params.ParamByName('Contrato').Value := global_contrato;
      Insumos.Params.ParamByName('Almacen').AsString := Actual_almacen;
      if connection.contrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
         Insumos.Params.ParamByName('Tipo').AsString  := 'Consumible'
      else
         Insumos.Params.ParamByName('Tipo').AsString  := '%';
      Insumos.Open;
  finally
      Insumos.EnableControls;
      IsOpen:=true;
      InsumosAfterScroll(Insumos);
  end;

  Proveedores.Active := False;
  Proveedores.Open;

  Llenargrupos;

  zq_contratos.Active := False ;
  zq_contratos.Params.ParamByName('sContrato').AsString := global_contrato;
  zq_contratos.Open ;

  qryMarcas.Active := False;
  qryMarcas.Open;

  zqMedidas.Active := False;
  zqMedidas.Open;
  
  qrysubfamilia.Active := False;
  qrysubfamilia.Open;

  qryTipoSubFamilia.Active := False;
  qryTipoSubFamilia.Open;

  cxExaminar.Enabled := False;
  muestraImagen;
  bImagenDefault := False;

  cargar_tipo;
  grid_materiales.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);

end;

procedure TfrmConsumibles.Llenargrupos;
begin
  grupos.Active := False;
  grupos.Open;
  grupos.first;

end;

procedure TfrmConsumibles.tsIdTipoEmbarcacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;


procedure TfrmConsumibles.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  cxPageControl1.ActivePageIndex := 0;
  tsNumeroActividad.SetFocus;
  bImagen.Picture.Graphic := Nil;
  bImagenDefault := True;
  sArchivo := '';
  tsdCantidad.Enabled := True;

  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;

  cxVisualizar.Enabled := False;
  cxExaminar.Enabled := True;
  global_movimiento := 'Insertó';
  Insumos.Append;
  Insumos.FieldByName('dCantidad').Asfloat   := 0;
  Insumos.FieldValues['sContrato']           := Global_Contrato;
  Insumos.FieldByName('sIdAlmacen').AsString := Actual_almacen;
  Insumos.FieldValues['dCostoMN']            := 0;
  Insumos.FieldValues['dCostoDLL']           := 0;
  Insumos.FieldValues['dVentaMN']            := 0;
  Insumos.FieldValues['lAplicaFecha']        := 'No';
  tsdCantidad.Text                           := '0';

  dStokMax.Text     := '0';
  dStockMin.Text    := '0';
  dbExistencia.Text := '0';
  mUbicacion.Text   := 'SIN UBICACION';

  dbGrupos.Enabled     := True;
  dbMarca.Enabled      := True;
  dbSubFamilia.Enabled := True;
  dbMarca.Enabled      := True;
  dbTipo.Enabled       := True;
  sTipoActividad.ItemIndex  := 0;

  //BUSCAMOS EL MAXIMO
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select max(iId) as Folio FROM insumos');
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
  begin
     insumos.FieldByName('sIdInsumo').AsString := 'CIT-'+formatfloat('000000',(Connection.zCommand.FieldByName('Folio').AsInteger + 1));
  end
  else
  begin
     insumos.FieldByName('sIdInsumo').AsString := 'CIT-000001';
  end;

  BotonPermiso.permisosBotones(frmBarra1);
  grid_materiales.Enabled := False;
  BloquearItemsPopup(PopupPrincipal, True );
end;

procedure TfrmConsumibles.frmBarra1btnEditClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  bMostrar: boolean;
  Hora: TDateTime;
begin   
  sArchivo := '';

  if cxPageControl1.ActivePageIndex = 2 then
  begin
     cxPageControl1.ActivePageIndex := 0;
     tsDescripcion.SetFocus;
  end
  else
  begin
      if cxPageControl1.ActivePageIndex = 0 then
          tsDescripcion.SetFocus;

      if cxPageControl1.ActivePageIndex = 1 then
          dbProveedores.SetFocus;
  end;

  if Insumos.FieldByName('sContrato').AsString=global_contrato then
  begin

    tsMedida.Visible:=True;

    if insumos.FieldByName('dCantidad').AsFloat = 0 then
       tsdCantidad.Enabled := True;
    frmBarra1.btnEditClick(Sender);
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;
    sOpcion := 'Edit';
    global_movimiento := 'Modificó';
    dbGrupos.Enabled := True;
    dbMarca.Enabled := True;
    dbSubFamilia.Enabled := True;
    dbTipo.Enabled := True;

    OldIdInsumo := tsNumeroActividad.Text;
    if (tsdcantidad.text <> '') and (tsdcantidad.text <> ' ') then
      Existencia := StrToFloat(tsdCantidad.Text);
    sIdOrig := insumos.FieldByName('sIdInsumo').AsString;

    try
       Insumos.Edit;
      cxVisualizar.Enabled := False;
      cxExaminar.Enabled := True;
      zqMedidas.Locate('sNombre',Insumos.FieldByName('smedida').AsString,[]);
      tsMedida.KeyValue:= Insumos.FieldByName('smedida').AsString;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'CATALOGO DE MATERIALES', 'Al agregar registro', 0);
        frmbarra1.btnCancel.Click;
      end;
    end;
    BotonPermiso.permisosBotones(frmBarra1);
    dCantidad := StrToFloat(tsdCantidad.Text);


    BloquearItemsPopup(PopupPrincipal, True );
  end
  else
    MessageError('Este Insumo solo puede modificarse desde el Contrato: ' + Insumos.FieldByName('sContrato').AsString);
end;

procedure TfrmConsumibles.frmBarra1btnPostClick(Sender: TObject);
var
  cadena, mov: string;
  nombres,
  cadenas: TStringList;
  lEdita: boolean;
  dDiferencia: Double;
  lSuma: Boolean;
  kContrato : String;
  Hora: String;
  dCantidadEscrita, dExistencias, resta: Double;

begin
    {Validaciones de campos}
  nombres := TStringList.Create;
  cadenas := TStringList.Create;

  nombres.Add('Id Material');
  cadenas.Add( Trim( tsNumeroActividad.Text ) );
  nombres.Add('Descripcion');
  cadenas.Add(tsDescripcion.Text);
  nombres.Add('Tipo');
  cadenas.Add(sTipoActividad.Text);
  nombres.Add('Unidad');
  cadenas.Add(tsMedida.Text);
  nombres.Add('Cantidad');
  cadenas.Add(tsdCantidad.Text);
  nombres.Add('Stock Max');
  cadenas.Add(dStokMax.Text);
  nombres.Add('Stock Min.');
  cadenas.Add(dStockMin.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

    //Verifica si la fecha final no se menor que la fecha inicial

    {Continua insercion de datos..}

  lEdita := false;
  if insumos.State = dsEdit then
    lEdita := true;

  if (tsNumeroActividad.Text <> OldIdInsumo) and (sOpcion = 'Edit') then
  begin
    if MessageDlg('Si Modifica el Id del Material, Todos los Datos en Requisiciones, Ordenes de Compra, Reportes Diarios.. Cambiaran al Nuevo Id, Desea Continuar?, ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sIdInsumo from insumos where sContrato =:Contrato and sIdInsumo =:Insumo ');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Insumo').AsString := tsNumeroActividad.Text;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        messageDLG('El Id de Material ya Existe!, Favor de escribir uno Nuevo. ', mtInformation, [mbOk], 0);
        exit;
      end;

    end
    else
      exit;
  end;

  dExistencias     := StrToFloat(dbExistencia.Text);

  if insumos.State = dsInsert then
  begin
      //BUSCAMOS EL MAXIMO
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select max(iId) as Folio FROM insumos');
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
         insumos.FieldByName('iId').AsInteger := Connection.zCommand.FieldByName('Folio').AsInteger + 1
      else
         insumos.FieldByName('iId').AsInteger := 1;
  end;

  try
    {
    13.marzo.2012 : adal, Permitir corregir la cantidad ingresada y elegir
    en caso de que se haya ingresado mas o menos de lo deseado, en ambos caso
    se resta o se suma a la existencia segun sea el caso
    }
    Insumos.FieldValues['sContrato'] := Global_Contrato;
    Insumos.FieldValues['sTipoActividad'] := sTipoActividad.Text;
    Insumos.FieldByName('sIdGrupo').AsString := grupos.FieldByName('sIdFamilia').AsString;

    ////subfamilia
    if dbSubfamilia.Text = '' then
       Insumos.FieldByName('iIdSubfamilia').AsString := '0'
    else
       Insumos.FieldByName('iIdSubfamilia').AsString := qrySubfamilia.FieldByName('iIdSubfamilia').AsString;

    //////////marca
    if dbMarca.Text <> '' then
       Insumos.FieldByName('sIdMarca').AsString := qryMarcas.FieldByName('sIdMarca').AsString
    else
       Insumos.FieldByName('sIdMarca').AsString := '';

    ////////tipo subfamilia
    if dbTipo.Text <> '' then
       Insumos.FieldByName('iIdTipoSubFamilia').AsString := qryTipoSubFamilia.FieldByName('iIdTipoSubFamilia').AsString
    else
       Insumos.FieldByName('iIdTipoSubFamilia').AsString := '0';

    insumo_agregado := '';
    insumo_agregado := tsNumeroActividad.Text;

    recentInsert:=True;
    Insumos.FieldByName('sMedida').AsString      := tsMedida.Text;

       Insumos.Post;
    if sOpcion = 'Edit' then
    begin
        //Llamada a funcion Buscar materiales en la Base de Datos..
        BuscaMaterial(OldIdInsumo, 'actualizar');
        BuscaInsumo(OldIdInsumo, 'actualizar');

        //se actualiza directamente la tabal de materiales de ordenes de compra .. no actuliza en la funcion..
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('update anexo_ppedido set sIdInsumo = :Nuevo, sMedida =:Medida, mDescripcion =:descripcion where sContrato = :Contrato and sIdInsumo =:IdMaterial ');
        connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Nuevo').Value := insumo_agregado;
        connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
        connection.qryBusca.Params.ParamByName('IdMaterial').Value := OldIdInsumo;
        connection.qryBusca.Params.ParamByName('Medida').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Medida').Value := tsMedida.Text;
        connection.qryBusca.Params.ParamByName('Descripcion').DataType := ftMemo;
        connection.qryBusca.Params.ParamByName('Descripcion').Value := tsDescripcion.Text;
        connection.qryBusca.ExecSQL;
    end;
   // Insumos.Refresh;

    qrysubfamilia.Active := False;
    qrysubfamilia.SQL.text := 'SELECT * FROM subfamilia;';
    qrysubfamilia.open;

    qryTipoSubFamilia.Active := False;
    qryTipoSubFamilia.SQL.Text := 'SELECT * FROM tipo_subfamilia;';
    qryTipoSubFamilia.Open;

    dbGrupos.Enabled := False;
    dbMarca.Enabled := False;
    dbSubFamilia.Enabled := False;
    dbTipo.Enabled := False;

    CargaImagen();
    recentInsert:=False;


    tsdCantidad.Enabled := False;
    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;
    cxVisualizar.Enabled := True;
    cxExaminar.Enabled := False;
    frmBarra1.btnPostClick(Sender);
    BotonPermiso.permisosBotones(frmBarra1);
    BloquearItemsPopup(PopupPrincipal, False );
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'CATALOGO DE MATERIALES', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click;
      lEdita := false; //cancelar la actualizacion de tablas dependientes
    end;
  end;

  //if (lEdita) and (insumos.FieldByName('sIdInsumo').AsString <> sIdOrig) then
       //tablasDependientes(sIdOrig);
       
    if global_movimiento = 'Insertó' then
      mov:= 'Se realizó la inserción del Material No. [' + insumos.FieldByName('sIdInsumo').AsString + ']'
    else if global_movimiento = 'Modificó' then
      mov:= 'Se realizó la modificación del Material No. [' + insumos.FieldByName('sIdInsumo').AsString + ']';

    kardex_almacen(mov, global_movimiento);

  Insumos.Refresh;

    if sOpcion = 'Edit' then
    begin
      grid_materiales.Enabled := True;
      sOpcion := '';
    end;

    grid_materiales.Enabled := True;
    if frmRecepciondeMateriales<>nil then
    begin
      try
        frmRecepciondeMateriales.ZQuery1.Refresh;
        frmRecepciondeMateriales.zq_detallesderecepcion.Refresh;
      except

      end;
    end;



end;

procedure TfrmConsumibles.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  tsdCantidad.Enabled := False;
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  cxVisualizar.Enabled := True;
  cxExaminar.Enabled := False;
  Insumos.Cancel;
  BotonPermiso.permisosBotones(frmBarra1);
  grid_materiales.Enabled := True;
  sOpcion := '';
  global_movimiento := '';

  dbGrupos.Enabled := False;
  dbMarca.Enabled := False;
  dbSubFamilia.Enabled := False;
  dbTipo.Enabled := False;

  BloquearItemsPopup(PopupPrincipal, False );
end;

procedure TfrmConsumibles.frmBarra1btnDeleteClick(Sender: TObject);
var mov :String;
begin
  if Insumos.RecordCount > 0 then
    if Insumos.FieldByName('sContrato').AsString=global_contrato then
    begin
      if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if not posibleBorrar(Insumos.FieldByName('sIdInsumo').AsString) then
        begin
          MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
          exit;
        end;
        BuscaMateriales(insumos.FieldValues['sIdInsumo']);
        if Encuentra then
          MessageDlg(' El Material seleccionado ya fue utilizado por un Reporte diario, Requisicion u Orden de Compra, No se puede Eliminar! ', mtConfirmation, [mbOk], 0)
        else
        try
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('delete from insumos_precios where sContrato =:Contrato and sIdMaterial =:Insumo');
          connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
          connection.zCommand.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
          connection.zCommand.ExecSQL;
          global_movimiento := 'Eliminó';
          mov:= 'Se realizó la eliminación del Material No. [' + insumos.FieldByName('sIdInsumo').AsString + ']';
          Insumos.Delete;
          kardex_almacen(mov, global_movimiento);

        except
          on e: exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'CATALOGO DE MATERIALES', 'Al eliminar registro', 0);
          end;
        end;
      end
    end
    else
      MessageError('Este Insumo solo puede eliminarse desde el Contrato: ' + Insumos.FieldByName('sContrato').AsString);
end;

procedure TfrmConsumibles.frmBarra1btnRefreshClick(Sender: TObject);
begin
   IsOpen:=False;
   Insumos.DisableControls;
   Insumos.Refresh ;
   Insumos.EnableControls;
   IsOpen:=True;
end;

procedure TfrmConsumibles.frxInsumosGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'sStock') = 0 then
    Value := stock;
end;

procedure TfrmConsumibles.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmConsumibles.grid_embarcacionesCellClick(Column: TColumn);
begin
  if sOpcion = 'Edit' then
    frmbarra1.btnCancel.Click;

  if bImagenDefault = True then
    //muestraImagen;
    cxVisualizar.Click;
end;

procedure TfrmConsumibles.grid_materialesDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if sOpcion = 'Edit' then
    frmbarra1.btnCancel.Click;

  if bImagenDefault = True then
    //muestraImagen;
    cxVisualizar.Click;


end;

procedure TfrmConsumibles.grid_materialesDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if bImagenDefault = True then
    //muestraImagen;
    cxVisualizar.Click;
end;

procedure TfrmConsumibles.grid_materialesDBTableView1MouseWheel(
  Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  if bImagenDefault = True then
  begin
    muestraImagen;
    bImagenDefault := False;
  end;
end;

procedure TfrmConsumibles.grid_embarcacionesDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
//  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sEstado');
//  if VarToStr(ARecord.Values[AColumn.Index]) = 'Normal' then AStyle := cxstylBlack;
//  if VarToStr(ARecord.Values[AColumn.Index]) = 'Minimo' then AStyle := cxstylRed;
//  if VarToStr(ARecord.Values[AColumn.Index]) = 'Maximo' then AStyle := cxstylBlue;
end;

procedure TfrmConsumibles.grid_embarcacionesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if insumos.RecordCount > 0 then
    begin
      AFont.Color := clBlack;
      if insumos.FieldValues['dExistencia'] <= insumos.FieldValues['dStockMin'] then
      begin
        try
          if Field.Name = 'insumossEstado' then
            AFont.Color := clRed;
        except
          ;
        end;

      end;

      if (insumos.FieldValues['dExistencia'] >= insumos.FieldValues['dStockMax']) and (insumos.FieldValues['dStockMax'] > 0) then
      begin
        try
          if Field.Name = 'insumossEstado' then
            AFont.Color := clBlue;
        except
          ;
        end;
      end;
    end;
end;

procedure TfrmConsumibles.grid_embarcacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//  UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmConsumibles.grid_embarcacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmConsumibles.grid_embarcacionesMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  if bImagenDefault = True then
  begin
    muestraImagen;
    bImagenDefault := False;
  end;
end;

procedure TfrmConsumibles.grid_embarcacionesTitleClick(Column: TColumn);
begin
//  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConsumibles.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  close
end;

procedure TfrmConsumibles.tsDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sTipoActividad.SetFocus
end;

procedure TfrmConsumibles.tsdModeloEnter(Sender: TObject);
begin
    tsdModelo.color := global_color_entradaERP;
end;

procedure TfrmConsumibles.tsdModeloExit(Sender: TObject);
begin
    tsdModelo.color := global_color_salidaERP;
end;

procedure TfrmConsumibles.tsdTallaEnter(Sender: TObject);
begin
    tsdTalla.color := global_color_entradaERP;
end;

procedure TfrmConsumibles.tsdTallaExit(Sender: TObject);
begin
    tsdTalla.color := global_color_salidaERP;
end;

procedure TfrmConsumibles.ImportarMateriales();
begin
  try

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Select sIdInsumo from insumos where sContrato =:Contrato ');
      connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
      connection.zCommand.Open;



      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('Select * from insumos where sContrato =:Contrato');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin

        while not connection.QryBusca.Eof do
        begin

                      //Se insertan los datos basicos....
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('INSERT INTO insumos ( sContrato, sIdInsumo, sIdProveedor, sTipoActividad, mDescripcion,dFecha,dFechaInicio,dFechaFinal, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidad, dInstalado, sIdGrupo, sIdFase, dNuevoPrecio) ' +
            ' VALUES (:contrato, :insumo, :prov, :tipoactividad, :Descripcion,:fecha,:fechaI,:fechaF, :costoMN, :costoDLL, :ventaMN, :ventaDLL, :medida, :cantidad, :instalado, :fase,:fase, 0)');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
          connection.zCommand.Params.ParamByName('insumo').DataType := ftString;
          connection.zCommand.Params.ParamByName('insumo').value := connection.QryBusca.FieldValues['sIdInsumo'];
          connection.zCommand.Params.ParamByName('prov').DataType := ftString;
          connection.zCommand.Params.ParamByName('prov').value := connection.QryBusca.FieldValues['sIdProveedor'];
          connection.zCommand.Params.ParamByName('tipoactividad').DataType := ftString;
          connection.zCommand.Params.ParamByName('tipoactividad').value := connection.QryBusca.FieldValues['sTipoActividad'];
          connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
          connection.zCommand.Params.ParamByName('Descripcion').value := connection.QryBusca.FieldValues['mDescripcion']; ;
          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          if connection.QryBusca.FieldValues['dFecha'] <> null then
            connection.zCommand.Params.ParamByName('fecha').value := connection.QryBusca.FieldValues['dFecha']
          else
            connection.zCommand.Params.ParamByName('fecha').value := connection.QryBusca.FieldValues['dFechaInicio'];
          connection.zCommand.Params.ParamByName('fechaI').DataType := ftDate;
          connection.zCommand.Params.ParamByName('fechaI').value := connection.QryBusca.FieldValues['dFechaInicio'];
          connection.zCommand.Params.ParamByName('fechaF').DataType := ftDate;
          if connection.QryBusca.FieldValues['dFechaFinal'] <> null then
            connection.zCommand.Params.ParamByName('fechaF').value := connection.QryBusca.FieldValues['dFechaFinal']
          else
            connection.zCommand.Params.ParamByName('fechaF').value := connection.QryBusca.FieldValues['dFechaInicio'];
          connection.zCommand.Params.ParamByName('costoMN').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('costoMN').value := connection.QryBusca.FieldValues['dCostoMN'];
          connection.zCommand.Params.ParamByName('costoDLL').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('costoDLL').value := connection.QryBusca.FieldValues['dCostoDLL'];
          connection.zCommand.Params.ParamByName('ventaMN').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('ventaMN').value := connection.QryBusca.FieldValues['dVentaMN'];
          connection.zCommand.Params.ParamByName('ventaDLL').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('ventaDLL').value := connection.QryBusca.FieldValues['dVentaDLL'];
          connection.zCommand.Params.ParamByName('medida').DataType := ftString;
          connection.zCommand.Params.ParamByName('medida').value := connection.QryBusca.FieldValues['sMedida'];
          connection.zCommand.Params.ParamByName('cantidad').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('cantidad').value := connection.QryBusca.FieldValues['dCantidad'];
          connection.zCommand.Params.ParamByName('instalado').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('instalado').value := connection.QryBusca.FieldValues['dInstalado'];
          connection.zCommand.Params.ParamByName('fase').DataType := ftString;
          connection.zCommand.Params.ParamByName('fase').value := connection.QryBusca.FieldValues['sIdGrupo'];
          connection.zCommand.ExecSQL;

                      //Se actualizan los restantes..
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Update insumos set dPorcentaje =:porciento, dNuevoPrecio =:Precio, dExistencia =:Existencia, sUbicacion =:Ubicacion, dStockMin =:Minino, dStockMax =:Maximo, lAplicaFecha =:Aplica ' +
            'Where sContrato =:Contrato and sIdInsumo =:Insumo ');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
          connection.zCommand.Params.ParamByName('insumo').DataType := ftString;
          connection.zCommand.Params.ParamByName('insumo').value := connection.QryBusca.FieldValues['sIdInsumo'];
          connection.zCommand.Params.ParamByName('porciento').DataType := ftFloat;
          if connection.QryBusca.FieldValues['dPorcentaje'] <> null then
            connection.zCommand.Params.ParamByName('porciento').value := connection.QryBusca.FieldValues['dPorcentaje']
          else
            connection.zCommand.Params.ParamByName('porciento').value := 0;
          connection.zCommand.Params.ParamByName('Precio').DataType := ftFloat;
          if connection.QryBusca.FieldValues['dNuevoPrecio'] <> null then
            connection.zCommand.Params.ParamByName('Precio').value := connection.QryBusca.FieldValues['dNuevoPrecio']
          else
            connection.zCommand.Params.ParamByName('Precio').value := 0;
          connection.zCommand.Params.ParamByName('Existencia').DataType := ftFloat;
          if connection.QryBusca.FieldValues['dExistencia'] <> null then
            connection.zCommand.Params.ParamByName('Existencia').value := connection.QryBusca.FieldValues['dExistencia']
          else
            connection.zCommand.Params.ParamByName('Existencia').value := 0;
          connection.zCommand.Params.ParamByName('Ubicacion').DataType := ftString;
          if connection.QryBusca.FieldValues['sUbicacion'] <> null then
            connection.zCommand.Params.ParamByName('Ubicacion').value := connection.QryBusca.FieldValues['sUbicacion']
          else
            connection.zCommand.Params.ParamByName('Ubicacion').value := 0;
          connection.zCommand.Params.ParamByName('Minino').DataType := ftFloat;
          if connection.QryBusca.FieldValues['dStockMin'] <> null then
            connection.zCommand.Params.ParamByName('Minino').value := connection.QryBusca.FieldValues['dStockMin']
          else
            connection.zCommand.Params.ParamByName('Minino').value := 0;
          connection.zCommand.Params.ParamByName('Maximo').DataType := ftFloat;
          if connection.QryBusca.FieldValues['dStockMax'] <> null then
            connection.zCommand.Params.ParamByName('Maximo').value := connection.QryBusca.FieldValues['dStockMax']
          else
            connection.zCommand.Params.ParamByName('Maximo').value := 0;
          connection.zCommand.Params.ParamByName('Aplica').DataType := ftString;
          if connection.QryBusca.FieldValues['lAplicaFecha'] <> null then
            connection.zCommand.Params.ParamByName('Aplica').value := connection.QryBusca.FieldValues['lAplicaFecha']
          else
            connection.zCommand.Params.ParamByName('Aplica').value := 'No';
          connection.zCommand.ExecSQL;

          connection.QryBusca.Next;
        end;
        MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);
        insumos.Refresh;
      end
      else
      begin
        messageDLG('No exciten materiales a Importar!', mtInformation, [mbOk], 0);
        exit;
      end;


  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'CATALOGO DE MATERIALES', 'Al Importar Materiales Catalogo Maestro', 0);
    end;
  end;

end;

procedure TfrmConsumibles.ImprimeMaterialesStockMax1Click(Sender: TObject);
Var
  Grupo_Productos: String;
begin
  if not FileExists(global_files + global_miReporte + '_CADinsumos_stockMin.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADinsumos_stockMin.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then
  begin

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sIdFamilia from familias  ');
      connection.QryBusca.Open;
      Grupo_Productos := trim(connection.QryBusca.FieldValues['sIdFamilia']);

      Imp_Insumos.Active := False;
      Imp_Insumos.SQL.Clear;
      Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
        ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
        ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
        ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
        ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
        ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
        ' where i.sContrato = :Contrato and i.sIdAlmacen =:Almacen AND i.sIdGrupo = :Grupo ' +
        ' and i.dExistencia >= i.dStockMax and i.dStockMax > 0 order by i.sIdinsumo ');
      Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
      Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
      Imp_Insumos.Params.ParamByName('Almacen').AsString := Actual_almacen;
      Imp_Insumos.Params.ParamByName('Grupo').AsString := Grupo_Productos;
      Imp_Insumos.Open;

      stock := 'MAXIMO';

      frxinsumos.LoadFromFile(global_files + global_miReporte + '_CADinsumos_stockMin.fr3');
      frxinsumos.ShowReport();

  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.ImprimeMaterialesStockMin1Click(Sender: TObject);
Var
  Grupo_Productos: String;
begin

  if not FileExists(global_files + global_miReporte + '_CADinsumos_stockMin.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADinsumos_stockMin.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then begin

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sIdFamilia from familias  ');
      connection.QryBusca.Open;
      Grupo_Productos := trim(connection.QryBusca.FieldValues['sIdFamilia']);

      Imp_Insumos.Active := False;
      Imp_Insumos.SQL.Clear;
      Imp_Insumos.SQL.Add(' select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
        ' i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
        ' i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, ' +
        ' f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
        ' left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
        ' left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
        ' where i.sContrato = :Contrato and i.sIdAlmacen =:Almacen  ' +
        ' and i.dExistencia <= i.dStockMin AND i.sIdGrupo = :Grupo order by i.sIdinsumo');
      Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
      Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
      Imp_Insumos.Params.ParamByName('Almacen').AsString := Actual_almacen;
      Imp_Insumos.Params.ParamByName('Grupo').AsString := Grupo_Productos; //dbFamilias.Items[dbFamilias.ItemIndex]; //qryFamilias.FieldByName('sIdFamilia').AsString;
      Imp_Insumos.Open;

      stock := 'MINIMO';

      frxinsumos.LoadFromFile(global_files + global_miReporte + '_CADinsumos_stockMin.fr3');
      frxinsumos.ShowReport();
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.ImprimeporUbicacion1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADinsumos_ubicacion.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADinsumos_ubicacion.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then
  begin
    Imp_Insumos.Active := False;
    Imp_Insumos.SQL.Clear;
    Imp_Insumos.SQL.Add(cadena + ' order by i.sUbicacion, i.sIdinsumo');
    Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
    Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
    Imp_Insumos.Params.ParamByName('Almacen').AsString := Actual_almacen;
    if connection.contrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
       Imp_Insumos.Params.ParamByName('Tipo').AsString  := 'Consumible'
    else
       Imp_Insumos.Params.ParamByName('Tipo').AsString  := '%';
    Imp_Insumos.Open;

    frxinsumos.PreviewOptions.MDIChild := False;
    frxinsumos.PreviewOptions.Modal := True;
    frxinsumos.PreviewOptions.ShowCaptions := False;
    frxinsumos.Previewoptions.ZoomMode := zmPageWidth;
    frxinsumos.LoadFromFile(global_files + global_miReporte + '_CADinsumos_ubicacion.fr3');
    frxinsumos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.ImprimeProductosPerecederos1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADinsumos_perecederos.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADinsumos_perecederos.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then
  begin
    Imp_Insumos.Active := False;
    Imp_Insumos.SQL.Clear;
    Imp_Insumos.SQL.Add(cadena + ' and i.lAplicaFecha = "Si" order by i.sIdinsumo ');
    Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
    Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
    Imp_Insumos.Params.ParamByName('Almacen').AsString := Actual_almacen;
    if connection.contrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
       Imp_Insumos.Params.ParamByName('Tipo').AsString  := 'Consumible'
    else
       Imp_Insumos.Params.ParamByName('Tipo').AsString  := '%';
    Imp_Insumos.Open;

    frxinsumos.PreviewOptions.MDIChild := False;
    frxinsumos.PreviewOptions.Modal := True;
    frxinsumos.PreviewOptions.ShowCaptions := False;
    frxinsumos.Previewoptions.ZoomMode := zmPageWidth;
    frxinsumos.LoadFromFile(global_files + global_miReporte + '_CADinsumos_perecederos.fr3');
    frxinsumos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.Imprimir1Click(Sender: TObject);
begin
  frmbarra1.btnPrinter.Click;
end;

procedure TfrmConsumibles.ImprimirMaterialesFotografia1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADinsumos_fotos.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADinsumos_fotos.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then
  begin
    Imp_Insumos.Active := False;
    Imp_Insumos.SQL.Clear;
    Imp_Insumos.SQL.Add('select i.sContrato, i.sIdInsumo, i.sIdProveedor, i.sIdAlmacen, i.sTipoActividad, i.mDescripcion, i.dFecha, i.dFechaInicio, i.dFechaFinal, ' +
      'i.dCostoMN, i.dCostoDLL, i.dVentaMN, i.dVentaDLL, i.sMedida, i.dCantidad, i.dInstalado, i.sIdFase, i.dPorcentaje, ' +
      'i.sIdGrupo, i.dNuevoPrecio, i.dExistencia, i.sUbicacion, i.dStockMax, i.dStockMin, i.lAplicaFecha, i.dFechaCaducidad, i.bImagen, ' +
      'f.sDescripcion, a.sDescripcion as almacen  from insumos i ' +
      'left join familias f ON(i.sIdGrupo = f.sIdFamilia) ' +
      'left join almacenes a on(a.sIdAlmacen = i.sIdAlmacen) ' +
      'where i.sContrato = :Contrato  order by i.sIdGrupo, a.sDescripcion, i.sIdinsumo ');
    Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
    Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
    Imp_Insumos.Open;

    frxinsumos.PreviewOptions.MDIChild := False;
    frxinsumos.PreviewOptions.Modal := True;
    frxinsumos.PreviewOptions.ShowCaptions := False;
    frxinsumos.Previewoptions.ZoomMode := zmPageWidth;
    frxinsumos.LoadFromFile(global_files + global_miReporte + '_CADinsumos_fotos.fr3');

    frxinsumos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmConsumibles.Copy1Click(Sender: TObject);
begin
 ModificarPortapapeles (self.activecontrol, ftcopiar)
end;

procedure TfrmConsumibles.cxExaminarClick(Sender: TObject);
var
  size: Real;
begin
  sOpcion := 'New';
  bImagen.Picture.Bitmap := nil;
  cxVisualizar.Enabled := False;
  cxExaminar.Enabled := False;
  OpenPicture.Title := 'Inserta Imagen';
  sArchivo := '';
  if OpenPicture.Execute then
  begin
    try
      sArchivo := RedimensionarJPG(OpenPicture.FileName);

      size := Tamanyo(sArchivo);
      if size <= 350 then
        bImagen.Picture.LoadFromFile(OpenPicture.FileName)
      else
        MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
    except
      bImagen.Picture.LoadFromFile('');
    end
  end  ;
  cxExaminar.Enabled := True;

end;

procedure TfrmConsumibles.cxPageControl1Change(Sender: TObject);
begin
   if cxPageControl1.ActivePageIndex = 1 then
      dbProveedores.SetFocus;

    if cxPageControl1.ActivePageIndex = 2 then
    begin
        QryNumerosSerie.Active := False;
        QryNumerosSerie.Params.ParamByName('Contrato').DataType := ftString;
        QryNumerosSerie.Params.ParamByName('Contrato').Value    := global_contrato;
        QryNumerosSerie.Params.ParamByName('almacen').DataType  := ftString;
        QryNumerosSerie.Params.ParamByName('almacen').Value     := insumos.FieldByName('sIdAlmacen').AsString;
        QryNumerosSerie.Params.ParamByName('Insumo').DataType   := ftString;
        QryNumerosSerie.Params.ParamByName('Insumo').Value      := insumos.FieldByName('sIdInsumo').AsString;
        QryNumerosSerie.Open;
    end;
end;

procedure TfrmConsumibles.cxVisualizarClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  bMostrar: boolean;
begin
  bImagen.Picture.Assign(PictureContainer1.Items.Items[1].Picture);
  bMostrar := False;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('Select bImagen from insumos Where sContrato = :Contrato And sIdInsumo = :Insumo and sIdAlmacen = :almacen');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Params.ParamByName('Insumo').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Insumo').Value := insumos.FieldValues['sIdInsumo'];
  Connection.QryBusca.Params.ParamByName('almacen').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('almacen').Value := insumos.FieldValues['sIdAlmacen'];
  Connection.QryBusca.Open;

  if Connection.QryBusca.RecordCount > 0 then
  begin
    bImagen.Picture.Bitmap := nil;
    BlobField := Connection.QryBusca.FieldByName('bImagen');
    BS := Connection.QryBusca.CreateBlobStream(BlobField, bmRead);
    if bs.Size > 15 then
    begin
      try
        Pic := TJpegImage.Create;
        try
          Pic.LoadFromStream(bS);
          bImagen.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free
      end;
      bImagenDefault := True;
    end
    else
      bMostrar := True;
  end
  else
    bMostrar := True;

  if bMostrar = True then
  begin
    muestraImagen;
    bImagenDefault := False;
  end;

  bImagenDefault := True;

end;

procedure TfrmConsumibles.dbAlmacenExit(Sender: TObject);
begin
  Insumos.Active := False;
  Insumos.Params.ParamByName('Contrato').DataType := ftString;
  Insumos.Params.ParamByName('Contrato').Value := global_contrato;
  Insumos.Params.ParamByName('Almacen').Value := Actual_almacen;
  if connection.contrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
     Insumos.Params.ParamByName('Tipo').AsString  := 'Consumible'
  else
     Insumos.Params.ParamByName('Tipo').AsString  := '%';
  Insumos.Open;                                                                                           
end;

procedure TfrmConsumibles.dbeNroSerieEnter(Sender: TObject);
begin
    dbeNroSerie.Color := global_color_entradaERP;
end;

procedure TfrmConsumibles.dbeNroSerieExit(Sender: TObject);
begin
    dbeNroSerie.Color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dbeNroSerieKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbGrupos.SetFocus
end;

procedure TfrmConsumibles.dbExistenciaChange(Sender: TObject);
begin
//  tdbeditchangef(dbExistencia, 'Existencia');
end;

procedure TfrmConsumibles.dbExistenciaEnter(Sender: TObject);
begin
  dbexistencia.Color := global_color_entradaERP
end;

procedure TfrmConsumibles.dbExistenciaExit(Sender: TObject);
begin
  dbexistencia.Color := global_color_salidaERP
end;

procedure TfrmConsumibles.dbFamiliasEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dbGruposCloseUp(Sender: TObject);
begin
  qrysubfamilia.Active := False;
  qrysubfamilia.SQL.Clear;
  qrysubfamilia.SQL.Add('SELECT * FROM subfamilia WHERE sIdFamilia = :Familia ');
  qrysubfamilia.Params.ParamByName('Familia').AsString := grupos.FieldByName('sIdFamilia').AsString;
  qrysubfamilia.Open;
end;

procedure TfrmConsumibles.dbGruposEnter(Sender: TObject);
begin
  dbGrupos.Color := global_color_entradaERP;
end;

procedure TfrmConsumibles.dbGruposExit(Sender: TObject);
begin
  dbGrupos.Color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dbGruposKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbsubfamilia.SetFocus;
end;

procedure TfrmConsumibles.dbGruposMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  dbGrupos.Hint := grupos.Fieldbyname('sDescripcion').asstring;
end;

procedure TfrmConsumibles.dbMarcaEnter(Sender: TObject);
begin
    dbMarca.color := global_color_entradaERP;
end;

procedure TfrmConsumibles.dbMarcaExit(Sender: TObject);
begin
    dbMarca.color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dbProveedoresEnter(Sender: TObject);
begin
   dbProveedores.Color := global_color_entradaERP;
end;

procedure TfrmConsumibles.dbProveedoresExit(Sender: TObject);
begin
   dbProveedores.Color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dbProveedoresKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmConsumibles.dbSubfamiliaClick(Sender: TObject);
begin
    if qrysubfamilia.RecordCount > 0 then
    begin
        qryTipoSubFamilia.Active := False;
        qryTipoSubFamilia.SQL.Text := 'SELECT * FROM tipo_subfamilia WHERE iIdSubFamilia = ' +  qrysubfamilia.FieldByName('iIdSubfamilia').AsString;
        qryTipoSubFamilia.Open;
    end;
end;

procedure TfrmConsumibles.dbSubfamiliaEnter(Sender: TObject);
begin
    dbSubfamilia.color := global_color_entradaERP;
end;

procedure TfrmConsumibles.dbSubfamiliaExit(Sender: TObject);
begin
    dbSubfamilia.color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dbTipoEnter(Sender: TObject);
begin
    dbTipo.Color := global_color_entradaERP;
end;

procedure TfrmConsumibles.dbTipoExit(Sender: TObject);
begin
    dbTipo.Color := global_color_salidaERP;
end;

procedure TfrmConsumibles.dFechaCaducidadKeyPress(Sender: TObject;
  var Key: Char);
begin


  if key = #13 then
    mubicacion.SetFocus;
end;

procedure TfrmConsumibles.dStockMinEnter(Sender: TObject);
begin
  dStockMin.Color := Global_Color_entradaERP;
end;

procedure TfrmConsumibles.dStockMinExit(Sender: TObject);
begin
  if dStockMin.Text = '' then
    dStockMin.Text := '0';
  dStockMin.Color := Global_Color_SalidaERP;
end;

procedure TfrmConsumibles.dStockMinKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsnumeroactividad.SetFocus;
end;

procedure TfrmConsumibles.dStokMaxChange(Sender: TObject);
begin
//  tdbeditchangef(dStokMax, 'Stock Max.');
end;

procedure TfrmConsumibles.dStokMaxEnter(Sender: TObject);
begin
  dStokMax.Color := Global_Color_entradaERP;
end;

procedure TfrmConsumibles.dStokMaxExit(Sender: TObject);
begin
  if dStokMax.Text = '' then
    dStokMax.Text := '0';
  dStokMax.Color := Global_Color_SalidaERP;
end;

procedure TfrmConsumibles.dStokMaxKeyPress(Sender: TObject; var Key: Char);
begin
//  if not keyFiltroTdbedit(dStokMax, key) then
 //   key := #0;
  if key = #13 then
    dStockMin.SetFocus;
end;

procedure TfrmConsumibles.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmConsumibles.edtLoteEnter(Sender: TObject);
begin
    edtLote.Color := global_color_entradaERP;
end;

procedure TfrmConsumibles.edtLoteExit(Sender: TObject);
begin
    edtLote.Color := global_color_salidaERP;
end;

procedure TfrmConsumibles.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmConsumibles.rRestarExistenciaClick(Sender: TObject);
begin
    zkardex.Active := False;
    zkardex.SQL.Clear;
    zkardex.SQL.text := 'select sIdUsuario, sPasswordAjustaMaterial, lAjusteMaterial  from usuarios ' +
                        'where sIdUsuario = :Usuario';
    zkardex.Params.ParamByName('Usuario').DataType := ftString;
    zkardex.Params.ParamByName('Usuario').Value := ''+global_Usuario+'';
    zkardex.Open;
    if zkardex.RecordCount > 0 then
    begin
      if zkardex.FieldValues ['lAjusteMaterial']= 'SI' then begin
        if insumos.State IN [dsInsert,dsEdit] then begin
          Panel.Visible := true;
          contra.Text := '';
          contra.SetFocus;
        end;
      end
      else
      begin
        showmessage('No es un Usuario Permitido Para realizar esta operacion');
        exit;
      end;
    end;
end;

procedure TfrmConsumibles.rSumarExistenciaClick(Sender: TObject);
begin
    zkardex.Active := False;
    zkardex.SQL.Clear;
    zkardex.SQL.text := 'select sIdUsuario, sPasswordAjustaMaterial, lAjusteMaterial  from usuarios ' +
                        'where sIdUsuario = :Usuario';
    zkardex.Params.ParamByName('Usuario').DataType := ftString;
    zkardex.Params.ParamByName('Usuario').Value := ''+global_Usuario+'';
    zkardex.Open;
    if zkardex.RecordCount > 0 then
    begin
      if zkardex.FieldValues ['lAjusteMaterial']= 'SI' then begin
        if insumos.State IN [dsInsert,dsEdit] then begin
          Panel.Visible := true;
          contra.Text := '';
          contra.SetFocus;
        end;
      end
      else
      begin
        showmessage('No es un Usuario Permitido Para realizar esta operacion');
        exit;
      end;
    end;
end;

procedure TfrmConsumibles.btnPostClick(Sender: TObject);
var
   lCancela : boolean;
begin
    lCancela := False;

    if (QryNumerosSerie.State = dsInsert) then
    begin
        QryNumerosSerie.Filtered := False;
        QryNumerosSerie.Filter   := ' sNumeroSerie= '+QuotedStr(QryNumerosSerie.FieldByName('sNumeroSerie').AsString);
        QryNumerosSerie.Filtered := True;

        if QryNumerosSerie.RecordCount > 0 then
        begin
            MessageDlg('El Número de Serie ya fue reportado!', mtConfirmation, [mbOk], 0);
            lCancela := True;
        end;
    end;

    if lCancela = False then    
       QryNumerosSerie.Post
    else
       QryNumerosSerie.Cancel;

    edtLote.ReadOnly := True;
    dbeNroSerie.ReadOnly := True;

    QryNumerosSerie.Filtered := False;
    frmBarra2.btnCancelClick(Sender);
end;

procedure TfrmConsumibles.btnAddClick(Sender: TObject);
begin
    if (Insumos.State = dsInsert) or (Insumos.State = dsEdit) then
    begin
        messageDLG('No se puede Agregar Números de Serie, debe guardar primero los datos del material. ', mtInformation, [mbOk],0);
        exit;
    end;

    if insumos.FieldByName('sIdInsumo').AsString = '' then
    begin
        messageDLG('Seleccione el material! ', mtInformation, [mbOk],0);
        exit;
    end;


    edtLote.ReadOnly := False;
    dbeNroSerie.ReadOnly := False;

    frmBarra2.btnAddClick(Sender);
    QryNumerosSerie.Append;
    QryNumerosSerie.FieldByName('sIdInsumo').AsString  := insumos.FieldByName('sIdInsumo').AsString;
    QryNumerosSerie.FieldByName('sIdAlmacen').AsString := insumos.FieldByName('sIdAlmacen').AsString;
    QryNumerosSerie.FieldByName('dCantidad').AsFloat   := 0;
    edtLote.SetFocus;
end;

procedure TfrmConsumibles.btnCancelClick(Sender: TObject);
begin
    edtLote.ReadOnly := True;
    dbeNroSerie.ReadOnly := True;
    QryNumerosSerie.Cancel;
    frmBarra2.btnCancelClick(Sender);
end;

procedure TfrmConsumibles.btnDeleteClick(Sender: TObject);
begin
    if QryNumerosSerie.RecordCount > 0 then
    begin
        if MessageDlg('Desea eliminar el Numero de Serie Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            if QryNumerosSerie.FieldByName('dCantidad').AsInteger > 0 then
            begin
                messageDLG('No se puede eliminar el Número de Serie tiene movimientes de entrada/salida', mtInformation, [mbOk], 0);
                exit;
            end
            else
               QryNumerosSerie.Delete;
        end;
    end;
end;

procedure TfrmConsumibles.btnEditClick(Sender: TObject);
begin
    if (Insumos.State = dsInsert) or (Insumos.State = dsEdit) then
    begin
        messageDLG('No se puede Agregar Números de serie, debe guardar primero los datos del material ', mtInformation, [mbOk],0);
        exit;
    end;

    edtLote.ReadOnly := False;
    dbeNroSerie.ReadOnly := False;

    frmBarra2.btnEditClick(Sender);
    QryNumerosSerie.Edit;
end;

procedure TfrmConsumibles.BitBtn4Click(Sender: TObject);
begin
  Llenargrupos;
end;

procedure TfrmConsumibles.CalcularExistenciasClick(Sender: TObject);
var
   dExistencia : double;
begin
   QryNumerosSerie.First;
   while not QryNumerosSerie.Eof do
   begin
       dExistencia := dExistencia + QryNumerosSerie.FieldByName('Existencia').AsFloat;
       QryNumerosSerie.Next;
   end;

   connection.zCommand.Active := False;
   connection.zCommand.SQL.Clear;
   connection.zCommand.SQL.Add('update insumos set dExistencia =:Existencia where sContrato =:Contrato and sIdInsumo =:Insumo ');
   connection.zCommand.ParamByName('Existencia').AsFloat := dExistencia;
   connection.zCommand.ParamByName('Contrato').AsString  := global_Contrato;
   connection.zCommand.ParamByName('Insumo').AsString    := insumos.FieldByName('sIdInsumo').AsString;
   connection.zCommand.ExecSQL;

   IsOpen:=False;
   Insumos.DisableControls;
   Insumos.Refresh ;
   Insumos.EnableControls;
   IsOpen:=True;

end;

procedure TfrmConsumibles.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmConsumibles.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmConsumibles.ExportaaPlantillaExcel1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel: integer;
    begin
      Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
//  if rAnexoC.Checked then
//  begin
      Excel.Columns['A:A'].ColumnWidth := 10;
      Excel.Columns['B:B'].ColumnWidth := 15;
      Excel.Columns['C:C'].ColumnWidth := 40;
      Excel.Columns['D:L'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Id_Insumo';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Tipo';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Cantidad a Inst.';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Fecha';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Costo MN';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Costo DLL';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Venta MN';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Venta DLL';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Familia';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sIdInsumo, sTipoActividad, mDescripcion, sMedida, dCantidad, dInstalado, dFecha, ' +
        'dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sIdGrupo, dexistencia from insumos where sContrato =:Contrato '  +
        'order by sIdInsumo');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sIdInsumo'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sTipoActividad'];

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 3].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dexistencia'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dInstalado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFecha'];

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoMN'];

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCostoDLL'];

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaMN'];

          Hoja.Cells[Ren, 11].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaDLL'];

          Hoja.Cells[Ren, 12].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sIdGrupo'];

          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
      Hoja.Cells[2, 2].Select;


      Hoja.Range['A1:L1'].Select;
  // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Interior.ColorIndex := 5;
      Excel.Selection.Font.color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Range['A1:A1'].Select;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'MATERIALES ' + global_contrato;
      except
        Hoja.Name := 'MATERIALES ' + global_contrato;
      end;
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar la Plantilla de Materiales' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  if not SaveDialog1.Execute then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
    messageDlg('La Plantilla se Genero Correctamente!', mtConfirmation, [mbOk], 0);

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;

procedure TfrmConsumibles.ExportaraExcel1Click(Sender: TObject);
begin
  ExportExcelPersonalizado(zq_contratos,grid_materialesDBTableView1,'Insumos en el Almacen','Catalogo de Materiales');
end;

procedure TfrmConsumibles.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmConsumibles.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

////////

procedure TfrmConsumibles.InsertaActividad(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: Integer;
  duplico: boolean;
begin
  SavePlace := GridCatalogo.DataSource.DataSet.GetBookmark;
  with GridCatalogo.DataSource.DataSet do
  begin
    for iGrid := 0 to GridCatalogo.SelectedRows.Count - 1 do
    begin
      GotoBookmark(pointer(GridCatalogo.SelectedRows.Items[iGrid]));
      try
        duplico := False;
                     //Se insertan los datos basicos....
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO insumos ( sContrato, sIdInsumo, sIdProveedor, sTipoActividad, mDescripcion,dFecha,dFechaInicio,dFechaFinal, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidad, dInstalado, sIdGrupo, sIdFase, dNuevoPrecio) ' +
          ' VALUES (:contrato, :insumo, :prov, :tipoactividad, :Descripcion,:fecha,:fechaI,:fechaF, :costoMN, :costoDLL, :ventaMN, :ventaDLL, :medida, :cantidad, :instalado, :fase,:fase, 0)');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
        connection.zCommand.Params.ParamByName('insumo').DataType := ftString;
        connection.zCommand.Params.ParamByName('insumo').value := FieldValues['sIdInsumo'];
        connection.zCommand.Params.ParamByName('prov').DataType := ftString;
        connection.zCommand.Params.ParamByName('prov').value := FieldValues['sIdProveedor'];
        connection.zCommand.Params.ParamByName('tipoactividad').DataType := ftString;
        connection.zCommand.Params.ParamByName('tipoactividad').value := FieldValues['sTipoActividad'];
        connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
        connection.zCommand.Params.ParamByName('Descripcion').value := FieldValues['mDescripcion']; ;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        if FieldValues['dFecha'] <> null then
          connection.zCommand.Params.ParamByName('fecha').value := FieldValues['dFecha']
        else
          connection.zCommand.Params.ParamByName('fecha').value := FieldValues['dFechaInicio'];
        connection.zCommand.Params.ParamByName('fechaI').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fechaI').value := FieldValues['dFechaInicio'];
        connection.zCommand.Params.ParamByName('fechaF').DataType := ftDate;
        if FieldValues['dFechaFinal'] <> null then
          connection.zCommand.Params.ParamByName('fechaF').value := FieldValues['dFechaFinal']
        else
          connection.zCommand.Params.ParamByName('fechaF').value := FieldValues['dFechaInicio'];
        connection.zCommand.Params.ParamByName('costoMN').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('costoMN').value := FieldValues['dCostoMN'];
        connection.zCommand.Params.ParamByName('costoDLL').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('costoDLL').value := FieldValues['dCostoDLL'];
        connection.zCommand.Params.ParamByName('ventaMN').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('ventaMN').value := FieldValues['dVentaMN'];
        connection.zCommand.Params.ParamByName('ventaDLL').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('ventaDLL').value := FieldValues['dVentaDLL'];
        connection.zCommand.Params.ParamByName('medida').DataType := ftString;
        connection.zCommand.Params.ParamByName('medida').value := FieldValues['sMedida'];
        connection.zCommand.Params.ParamByName('cantidad').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('cantidad').value := FieldValues['dCantidad'];
        connection.zCommand.Params.ParamByName('instalado').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('instalado').value := FieldValues['dInstalado'];
        connection.zCommand.Params.ParamByName('fase').DataType := ftString;
        connection.zCommand.Params.ParamByName('fase').value := FieldValues['sIdGrupo'];
        connection.zCommand.ExecSQL;
      except
        if not messageDLG('El Id de Material ' + FieldValues['sIdInsumo'] + ' ya Existe, Desea Continuar ?', mtInformation, [mbYes, mbNo], 0) = mrYes then
          exit;
        duplico := True;
      end;
      if duplico = False then
      begin
                      //Se actualizan los restantes..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update insumos set dPorcentaje =:porciento, dNuevoPrecio =:Precio, dExistencia =:Existencia, sUbicacion =:Ubicacion, dStockMin =:Minino, dStockMax =:Maximo, lAplicaFecha =:Aplica ' +
          'Where sContrato =:Contrato and sIdInsumo =:Insumo ');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
        connection.zCommand.Params.ParamByName('insumo').DataType := ftString;
        connection.zCommand.Params.ParamByName('insumo').value := FieldValues['sIdInsumo'];
        connection.zCommand.Params.ParamByName('porciento').DataType := ftFloat;
        if FieldValues['dPorcentaje'] <> null then
          connection.zCommand.Params.ParamByName('porciento').value := FieldValues['dPorcentaje']
        else
          connection.zCommand.Params.ParamByName('porciento').value := 0;
        connection.zCommand.Params.ParamByName('Precio').DataType := ftFloat;
        if FieldValues['dNuevoPrecio'] <> null then
          connection.zCommand.Params.ParamByName('Precio').value := FieldValues['dNuevoPrecio']
        else
          connection.zCommand.Params.ParamByName('Precio').value := 0;
        connection.zCommand.Params.ParamByName('Existencia').DataType := ftFloat;
        if FieldValues['dExistencia'] <> null then
          connection.zCommand.Params.ParamByName('Existencia').value := FieldValues['dExistencia']
        else
          connection.zCommand.Params.ParamByName('Existencia').value := 0;
        connection.zCommand.Params.ParamByName('Ubicacion').DataType := ftString;
        if FieldValues['sUbicacion'] <> null then
          connection.zCommand.Params.ParamByName('Ubicacion').value := FieldValues['sUbicacion']
        else
          connection.zCommand.Params.ParamByName('Ubicacion').value := 0;
        connection.zCommand.Params.ParamByName('Minino').DataType := ftFloat;
        if FieldValues['dStockMin'] <> null then
          connection.zCommand.Params.ParamByName('Minino').value := FieldValues['dStockMin']
        else
          connection.zCommand.Params.ParamByName('Minino').value := 0;
        connection.zCommand.Params.ParamByName('Maximo').DataType := ftFloat;
        if FieldValues['dStockMax'] <> null then
          connection.zCommand.Params.ParamByName('Maximo').value := FieldValues['dStockMax']
        else
          connection.zCommand.Params.ParamByName('Maximo').value := 0;
        connection.zCommand.Params.ParamByName('Aplica').DataType := ftString;
        if FieldValues['lAplicaFecha'] <> null then
          connection.zCommand.Params.ParamByName('Aplica').value := FieldValues['lAplicaFecha']
        else
          connection.zCommand.Params.ParamByName('Aplica').value := 'No';
        connection.zCommand.ExecSQL;


        Insumos.Active := False;
        Insumos.Params.ParamByName('Contrato').DataType := ftString;
        Insumos.Params.ParamByName('Contrato').Value := global_contrato;
        Insumos.Params.ParamByName('Almacen').Value := Actual_almacen;
        if connection.contrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
           Insumos.Params.ParamByName('Tipo').AsString  := 'Consumible'
        else
           Insumos.Params.ParamByName('Tipo').AsString  := '%';
        Insumos.Open;
      end;
    end
  end;
end;

procedure TfrmConsumibles.procBuscaPartida(Sender: TObject);
var
  sNumeroPartida: string;
begin
  if zCatalogo.RecordCount > 0 then
  begin
    sNumeroPartida := trim((Sender as tEdit).Text);
    zCatalogo.Locate('sIdInsumo', sNumeroPartida, [loCaseInsensitive])
  end;
end;

procedure TfrmConsumibles.procObtiene(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Sender as tEdit).Text <> '' then
  begin
    try
      Numero := StrToFloat((Sender as tEdit).Text);
    except
      Numero := 0;
    end;
  end;
end;

procedure TfrmConsumibles.procObtieneTexto(Sender: TObject);
begin
  if (Sender as tEdit).Text <> '' then
  begin
    try
      Numero := StrToFloat((Sender as tEdit).Text);
    except
      Numero := 0;
    end;
  end;
end;
//////CALCULOS EN M.N.....

procedure TfrmConsumibles.procCalculaCosto(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dCostoBaseMN'] := Numero;
  zMonto.FieldValues['dPrecioMN'] := Numero + zMonto.FieldValues['dFleteMN'] + zMonto.FieldValues['dDerechosMN'] + zMonto.FieldValues['dMermasMN'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procCalculaFlete(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dFleteMN'] := Numero;
  zMonto.FieldValues['dPrecioMN'] := Numero + zMonto.FieldValues['dCostoBaseMN'] + zMonto.FieldValues['dDerechosMN'] + zMonto.FieldValues['dMermasMN'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procCalculaDerecho(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dDerechosMN'] := Numero;
  zMonto.FieldValues['dPrecioMN'] := Numero + zMonto.FieldValues['dCostoBaseMN'] + zMonto.FieldValues['dFleteMN'] + zMonto.FieldValues['dMermasMN'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procCalculaMerma(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dMermasMN'] := Numero;
  zMonto.FieldValues['dPrecioMN'] := Numero + zMonto.FieldValues['dCostoBaseMN'] + zMonto.FieldValues['dFleteMN'] + zMonto.FieldValues['dDerechosMN'];
  zMonto.Post;
end;

//////CALCULOS EN DLL.....

procedure TfrmConsumibles.procCalculaCostoDLL(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dCostoBaseDLL'] := Numero;
  zMonto.FieldValues['dPrecioDLL'] := Numero + zMonto.FieldValues['dFleteDLL'] + zMonto.FieldValues['dDerechosDLL'] + zMonto.FieldValues['dMermasDLL'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procCalculaFleteDLL(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dFleteDLL'] := Numero;
  zMonto.FieldValues['dPrecioDLL'] := Numero + zMonto.FieldValues['dCostoBaseDLL'] + zMonto.FieldValues['dDerechosDLL'] + zMonto.FieldValues['dMermasDLL'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procCalculaDerechoDLL(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dDerechosDLL'] := Numero;
  zMonto.FieldValues['dPrecioDLL'] := Numero + zMonto.FieldValues['dCostoBaseDLL'] + zMonto.FieldValues['dFleteDLL'] + zMonto.FieldValues['dMermasDLL'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procCalculaMermaDLL(Sender: TObject);
begin
  zMonto.Edit;
  zMonto.FieldValues['dMermasDLL'] := Numero;
  zMonto.FieldValues['dPrecioDLL'] := Numero + zMonto.FieldValues['dCostoBaseDLL'] + zMonto.FieldValues['dFleteDLL'] + zMonto.FieldValues['dDerechosDLL'];
  zMonto.Post;
end;

procedure TfrmConsumibles.procSuma(Sender: TObject);
begin
  if (Sender as tEdit).Text <> '' then
  begin
    with sender as tEdit do
    begin
      text := zMonto.FieldValues['dPrecioMN'];
    end;
  end;
end;

procedure TfrmConsumibles.procSumaDLL(Sender: TObject);
begin
  if (Sender as tEdit).Text <> '' then
  begin
    with sender as tEdit do
    begin
      text := zMonto.FieldValues['dPrecioDLL'];
    end;
  end;
end;

procedure TfrmConsumibles.procSumaSalir(Sender: TObject);
begin
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Update insumos set dVentaMN =:CostoMN, dVentaDLL =:CostoDLL, dNuevoPrecio =:CostoMN where sContrato =:Contrato and sIdInsumo =:Insumo ');
  connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zCommand.ParamByName('Insumo').AsString := zMonto.FieldValues['sIdMaterial'];
  connection.zCommand.ParamByName('CostoMN').AsFloat := zMonto.FieldValues['dPrecioMN'];
  connection.zCommand.ParamByName('CostoDLL').AsFloat := zMonto.FieldValues['dPrecioDLL'];
  connection.zCommand.ExecSQL;

  insumos.Refresh;
end;
///////

procedure TfrmConsumibles.tsNumeroActividaddEnter(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entradaERP
end;

procedure TfrmConsumibles.tsNumeroActividadActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaERP
end;

procedure TfrmConsumibles.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmConsumibles.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP
end;

procedure TfrmConsumibles.frmBarra1btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADinsumos.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADinsumos.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then
  begin
    Imp_Insumos.Active := False;
    Imp_Insumos.SQL.Clear;
    Imp_Insumos.SQL.Add(cadena + ' order by i.sIdGrupo, a.sDescripcion, i.sIdinsumo');
    Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
    Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
    Imp_Insumos.Params.ParamByName('Almacen').AsString := Actual_almacen;
    if connection.contrato.FieldByName('sTipoObra').AsString <> 'NINGUNA' then
       Imp_Insumos.Params.ParamByName('Tipo').AsString  := 'Consumible'
    else
       Imp_Insumos.Params.ParamByName('Tipo').AsString  := '%';
    Imp_Insumos.Open;

    frxinsumos.PreviewOptions.MDIChild := False;
    frxinsumos.PreviewOptions.Modal := True;
    frxinsumos.PreviewOptions.ShowCaptions := False;
    frxinsumos.Previewoptions.ZoomMode := zmPageWidth;
    frxinsumos.LoadFromFile(global_files +global_Mireporte+ '_CADinsumos.fr3');

    frxinsumos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.tsMedidaEnter(Sender: TObject);
begin
  tsMedida.Color := global_color_entradaERP
end;

procedure TfrmConsumibles.tsMedidaExit(Sender: TObject);
begin
  tsMedida.Color := global_color_salidaERP
end;

procedure TfrmConsumibles.tsMedidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsdCantidad.SetFocus
end;

procedure TfrmConsumibles.sTipoActividadEnter(Sender: TObject);
begin
  sTipoActividad.Color := global_color_entradaERP;
end;

procedure TfrmConsumibles.sTipoActividadExit(Sender: TObject);
var
   lEncuentra : boolean;
begin
  sTipoActividad.Color := global_color_salidaERP;

  lEncuentra := False;
  zqTipoInsumo.First;
  while not zqTipoInsumo.Eof do
  begin
     if sTipoActividad.Text = zqTipoInsumo.FieldByName('sDescripcion').AsString then
     begin
        lEncuentra := True;
        zqTipoInsumo.Last;
     end;
     zqTipoInsumo.Next;
  end;

  if lEncuentra = False  then
  begin
      sTipoActividad.ItemIndex := 0;
  end;

end;

procedure TfrmConsumibles.sTipoActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsMedida.SetFocus
end;

procedure TfrmConsumibles.MenuItem1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADmaterial_foto.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_CADmaterial_foto.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  if Insumos.RecordCount > 0 then
  begin
    Imp_Insumos.Active := False;
    Imp_Insumos.SQL.Clear;
    Imp_Insumos.SQL.Add('select sIdInsumo, mDescripcion, bImagen, sMedida, dExistencia, dCantidad from insumos ' +
      'where sContrato =:Contrato and sIdInsumo =:Insumo  ');
    Imp_Insumos.Params.ParamByName('Contrato').DataType := ftString;
    Imp_Insumos.Params.ParamByName('Contrato').Value := global_contrato;
    Imp_Insumos.Params.ParamByName('Insumo').DataType := ftString;
    Imp_Insumos.Params.ParamByName('Insumo').AsString := insumos.FieldValues['sIdInsumo'];
    Imp_Insumos.Open;

    frxinsumos.PreviewOptions.MDIChild := False;
    frxinsumos.PreviewOptions.Modal := True;
    frxinsumos.PreviewOptions.ShowCaptions := False;
    frxinsumos.Previewoptions.ZoomMode := zmPageWidth;
    frxinsumos.LoadFromFile(global_files + global_MiReporte + '_CADmaterial_foto.fr3');

    frxinsumos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  end
  else
    messageDLG('No se encontro informacion a Imprimir', mtInformation, [mbOk], 0);
end;

procedure TfrmConsumibles.tsAlmacenEnter(Sender: TObject);
begin
    tsAlmacen.Color := global_color_entradaErp;
end;

procedure TfrmConsumibles.tsAlmacenExit(Sender: TObject);
begin
    tsAlmacen.Color := global_color_salidaErp;
end;

procedure TfrmConsumibles.tsdCantidadEnter(Sender: TObject);
begin
  tsdCantidad.Color := Global_color_entradaERP;
end;

procedure TfrmConsumibles.tsdCantidadExit(Sender: TObject);
begin

  tsdCantidad.Color := Global_color_salidaERP;
end;

function TfrmConsumibles.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET, ParamValuesSET, ParamNamesWHERE, ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET := TStringList.Create; ParamValuesSET := TStringList.Create; ParamNamesWHERE := TStringList.Create; ParamValuesWHERE := TStringList.Create;
  ParamNamesSET.Add('sIdInsumo'); ParamValuesSET.Add(Insumos.FieldByName('sIdInsumo').AsString);
  ParamNamesWHERE.Add('sContrato'); ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdInsumo'); ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('insumos', ParamNamesSET, ParamValuesSET, ParamNamesWHERE, ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
  else begin
    ParamNamesSET.Clear; ParamValuesSET.Clear; ParamNamesWHERE.Clear; ParamValuesWHERE.Clear;
    ParamNamesSET.Add('sIdMaterial'); ParamValuesSET.Add(Insumos.FieldByName('sIdInsumo').AsString);
    ParamNamesWHERE.Add('sContrato'); ParamValuesWHERE.Add(global_contrato);
    ParamNamesWHERE.Add('sIdMaterial'); ParamValuesWHERE.Add(idOrig);
    if not UnitTablasImpactadas.impactar('insumos1', ParamNamesSET, ParamValuesSET, ParamNamesWHERE, ParamValuesWHERE) then
    begin
      result := false;
      showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
    end;
  end;
end;

function TfrmConsumibles.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE, ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE := TStringList.Create; ParamValuesWHERE := TStringList.Create;
  ParamNamesWHERE.Add('sContrato'); ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sIdInsumo'); ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('insumos', ParamNamesWHERE, ParamValuesWHERE);
  if result then
  begin
    ParamNamesWHERE.Clear; ParamValuesWHERE.Clear;
    ParamNamesWHERE.Add('sContrato'); ParamValuesWHERE.Add(global_contrato);
    ParamNamesWHERE.Add('sIdMaterial'); ParamValuesWHERE.Add(idOrig);
    result := not UnitTablasImpactadas.hayDependientes('insumos1', ParamNamesWHERE, ParamValuesWHERE);
  end;
end;

procedure TfrmConsumibles.insumosAfterScroll(DataSet: TDataSet);
begin
    if IsOpen then
    begin           
        if cxPageControl1.ActivePageIndex = 0 then
        begin
            sTipoActividad.Text := insumos.FieldByName('sTipoActividad').AsString;
        end;

        if cxPageControl1.ActivePageIndex = 2 then
        begin
            QryNumerosSerie.Active := False;
            QryNumerosSerie.Params.ParamByName('Contrato').DataType := ftString;
            QryNumerosSerie.Params.ParamByName('Contrato').Value    := global_contrato;
            QryNumerosSerie.Params.ParamByName('almacen').DataType  := ftString;
            QryNumerosSerie.Params.ParamByName('almacen').Value     := insumos.FieldByName('sIdAlmacen').AsString;
            QryNumerosSerie.Params.ParamByName('Insumo').DataType   := ftString;
            QryNumerosSerie.Params.ParamByName('Insumo').Value      := insumos.FieldByName('sIdInsumo').AsString;
            QryNumerosSerie.Open;
        end;
    end;
end;

procedure TfrmConsumibles.insumosCalcFields(DataSet: TDataSet);
begin
  if IsOpen then
  begin
      insumos.Fieldbyname('sEstado').AsString := 'Normal';
      if insumos.FieldValues['dExistencia'] <= insumos.FieldValues['dStockMin'] then
        insumos.Fieldbyname('sEstado').AsString := 'Minimo';

      if (insumos.FieldValues['dExistencia'] >= insumos.FieldValues['dStockMax']) and (insumos.FieldValues['dStockMax'] > 0) then
        insumos.fieldbyname('sEstado').ASString := 'Maximo';
  end;
end;

procedure TfrmConsumibles.insumosdCantidadSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdCostoDllSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdCostoMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdExistenciaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdInstaladoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdNuevoPrecioSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdPorcentajeSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdStockMaxSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdStockMinSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdVentaDLLSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.insumosdVentaMNSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmConsumibles.mUbicacionEnter(Sender: TObject);
begin
  mUbicacion.Color := global_color_entradaERP
end;

procedure TfrmConsumibles.mUbicacionExit(Sender: TObject);
begin
  mUbicacion.Color := global_color_salidaERP
end;

procedure TfrmConsumibles.mUbicacionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dstokmax.SetFocus;
end;

procedure TfrmConsumibles.PreciosAfterInsert(DataSet: TDataSet);
begin
  if insumos.RecordCount > 0 then
  begin
    precios.FieldValues['sContrato'] := global_contrato;
    precios.FieldValues['sNumeroActividad'] := insumos.FieldValues['sIdInsumo'];
    precios.FieldValues['sIdGrupo'] := insumos.FieldValues['sIdGrupo'];
  end
  else
    insumos.Cancel
end;


procedure TfrmConsumibles.FormKeyPress(Sender: TObject; var Key: Char);
begin
 {Manejador del evento OnKeyPress del Form }
{ También hay que establecer la propiedad KeyPreview del Form a True }
  begin
    if Key = #13 then { si es la tecla <enter> }
      if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
      begin
        Key := #0; { nos comemos la tecla }
        Perform(WM_NEXTDLGCTL, 0, 0); { vamos al siguiente control }
      end
      else
        if (ActiveControl is TrxDBGrid) then { si es un TrxDBGrid }
          Key := #0 { nos comemos la tecla }
        else
          if (ActiveControl is TDBGrid) then { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
              if selectedindex < (fieldcount - 1) then
                selectedindex := selectedindex + 1
              else
                selectedindex := 0;
  end;


end;

procedure TfrmConsumibles.PreciosCalcFields(DataSet: TDataSet);
begin
  if not insumos.FieldByName('sIdInsumo').IsNull then
  begin
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('select mDescripcion from insumos where sIdInsumo = :inventario');
    connection.qryBusca2.Params.ParamByName('inventario').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('inventario').Value := insumos.FieldValues['sIdInsumo'];
    connection.qryBusca2.Open;
    if connection.qryBusca2.RecordCount > 0 then
      preciossDescripcion.Text := connection.qryBusca2.FieldValues['mDescripcion'];
  end
end;

//soad -> Funcion para actualizar los registros con Id de Material especificado..
//*************************************************************************

procedure TfrmConsumibles.cxButton1Click(Sender: TObject);
begin
    if zkardex.FieldValues ['sPasswordAjustaMaterial']= contra.Text then
    begin
      AjustarCantidad.Enabled := true;
      panel.Visible := false;
    end
    else begin
      MessageDlg('Contraseña Incorecta.!' + #10 + #10 + 'Introduzca la Contraseña Correcta' ,mtInformation, [mbOK],0);
      contra.Text := '';
      contra.SetFocus;
      AjustarCantidad.Value := 0;
      AjustarCantidad.Enabled := False;
    end;
end;

procedure TfrmConsumibles.cxButton2Click(Sender: TObject);
begin
    panel.Visible := False;
    AjustarCantidad.Enabled := False;
    AjustarCantidad.Value := 0;
    rRestarExistencia.Checked := False;
    rSumarExistencia.Checked := False;
end;

procedure TfrmConsumibles.cxButton3Click(Sender: TObject);
begin
   global_frmActivo := 'frmMedidas';
   Application.CreateForm(TfrmMedidas, frmMedidas);
   frmMedidas.Show;
end;

procedure TfrmConsumibles.cxButton4Click(Sender: TObject);
begin
  global_frmActivo := 'frmConsumibles';
  Application.CreateForm(TfrmTipoInsumo, frmTipoInsumo);
  frmTipoInsumo.Show;
end;

procedure TfrmConsumibles.cxButton5Click(Sender: TObject);
begin
  global_frmActivo := 'frmConsumibles';
  Application.CreateForm(TfrmProveedores, frmProveedores);
  frmProveedores.Show;
end;

procedure TfrmConsumibles.cxButton6Click(Sender: TObject);
begin
  Application.CreateForm(TfrmSubFamProductos, frmSubFamProductos);
  frmSubFamProductos.ShowModal;
end;

procedure TfrmConsumibles.cxButton7Click(Sender: TObject);
begin
  Application.CreateForm(TfrmGrupoFamilias, frmGrupoFamilias);
  frmGrupoFamilias.showModal;
  grupos.active := false;
  grupos.open;
  grupos.Last;
  dbGrupos.KeyValue := global_familia;
end;

procedure TfrmConsumibles.cxButton8Click(Sender: TObject);
begin
 Application.CreateForm(TfrmMarcasxSubFam, frmMarcasxSubFam);
  frmMarcasxSubFam.showmodal;
  qryMarcas.active := false;
  qryMarcas.Open;
  qryMarcas.Last;
end;

procedure TfrmConsumibles.cxButton9Click(Sender: TObject);
begin
   Application.CreateForm(Tfrmdetallesubfamilias, frmdetallesubfamilias);
  frmdetallesubfamilias.show;
  qryTipoSubFamilia.Refresh;
  qryTipoSubFamilia.Last;
end;

procedure TfrmConsumibles.cxEliminarClick(Sender: TObject);
begin
 sArchivo := '';
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('UPDATE insumos SET bImagen = NULL Where sContrato = :Contrato And sIdInsumo = :Insumo and sIdAlmacen = :almacen');
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  Connection.QryBusca.Params.ParamByName('Insumo').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('Insumo').Value := insumos.FieldValues['sIdInsumo'];
  Connection.QryBusca.Params.ParamByName('almacen').DataType := ftString;
  Connection.QryBusca.Params.ParamByName('almacen').Value := insumos.FieldValues['sIdAlmacen'];
  Connection.QryBusca.ExecSQL;

  if Insumos.State in [dsEdit, dsInsert] then
  begin
  //  Insumos.FieldByName('bImagen').Value := Null;
  end
  else
  begin
    Insumos.Edit;
    ////subfamilia
     if dbSubfamilia.Text = '' then
     begin
        //showMessage('nada sub Familia');
        Insumos.FieldByName('iIdSubfamilia').AsString := '0';
     end
     else
     begin
        //showMessage('algo sub Familia');
        Insumos.FieldByName('iIdSubfamilia').AsString := qrySubfamilia.FieldByName('iIdSubfamilia').AsString;
     end;

      //////////marca
     if dbMarca.Text <> '' then
     begin
        Insumos.FieldByName('sIdMarca').AsString := qryMarcas.FieldByName('sIdMarca').AsString;
     end
     else
     begin
        Insumos.FieldByName('sIdMarca').AsString := '';
     end;

     ////////tipo subfamilia
     if dbTipo.Text <> '' then
     begin
        //showMessage('algo tipo');
        Insumos.FieldByName('iIdTipoSubFamilia').AsString := qryTipoSubFamilia.FieldByName('iIdTipoSubFamilia').AsString;
     end
     else
     begin
        //showMessage('nada tipo');
        Insumos.FieldByName('iIdTipoSubFamilia').AsString := '0';
     end;
    Insumos.FieldByName('bImagen').Value := Null;
    Insumos.Post;
  end;


  bImagen.Picture.LoadFromFile('');

  bImagen.Picture.Graphic := Nil;

  bImagenDefault := True;
end;

procedure TfrmConsumibles.BuscaMaterial(Id: string; accion: string);
var
  base, tabla, campo, cad: string;
  datos: array[1..50] of string;
  i, x: Integer;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Show tables');
  connection.qryBusca.Open;
  base := 'Tables_in_' + global_db;
  i := 1;
  while not connection.QryBusca.Eof do
  begin
    tabla := connection.QryBusca.FieldValues[base];
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('describe ' + tabla + ' ');
    connection.qryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
      while not connection.QryBusca2.Eof do
      begin
        if connection.QryBusca2.FieldValues['Field'] = 'sIdMaterial' then
        begin
          datos[i] := tabla;
          i := i + 1;
        end;
        connection.QryBusca2.Next;
      end;
    end;
    connection.QryBusca.Next;
  end;

     // Actualiza todos los registros..
  if accion = 'actualizar' then
  begin
    for x := 1 to i - 1 do
    begin
        tabla := datos[x];
        if (tabla = 'bitacorademateriales') then
        begin
            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('update ' + tabla + ' set sIdMaterial = :Nuevo, sMedida =:Medida, sDescripcion =:Descripcion where sContrato = :Contrato and sIdMaterial =:IdMaterial ');
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Nuevo').Value := insumo_agregado;
            connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
            connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
            connection.qryBusca.Params.ParamByName('Medida').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Medida').Value    := tsMedida.Text;
            connection.qryBusca.Params.ParamByName('Descripcion').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text;
            connection.qryBusca.ExecSQL;
        end
        else
        begin
            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('update ' + tabla + ' set sIdMaterial = :Nuevo where sContrato = :Contrato and sIdMaterial =:IdMaterial ');
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Nuevo').Value := insumo_agregado;
            connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
            connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
            connection.qryBusca.ExecSQL;
        end;

    end;
  end;
 // messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
end;


procedure TfrmConsumibles.BuscaInsumo(Id: string; accion: string);
var
  base, tabla, campo, cad: string;
  datos: array[1..50] of string;
  i, x: Integer;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Show tables');
  connection.qryBusca.Open;
  base := 'Tables_in_' + global_db;
  i := 1;
  while not connection.QryBusca.Eof do
  begin
    tabla := connection.QryBusca.FieldValues[base];
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('describe ' + tabla + ' ');
    connection.qryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
      while not connection.QryBusca2.Eof do
      begin
        if uppercase(connection.QryBusca2.FieldValues['Field']) = 'SIDINSUMO' then
        begin
          datos[i] := tabla;
          i := i + 1;
        end;
        connection.QryBusca2.Next;
      end;
    end;
    connection.QryBusca.Next;
  end;

  // Actualiza todos los registros..
  if accion = 'actualizar' then
  begin
    for x := 1 to i - 1 do
    begin
      tabla := datos[x];
      if (tabla = 'calidad_material') or (tabla = 'alm_recepciondemateriales_detalle')
         or (tabla = 'devolucioninsumos') or (tabla = 'empleado_insumo') or (tabla = 'alm_cotizacion_detalle')
         or (tabla = 'insumos_series') then
      begin
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('update ' + tabla + ' set sIdInsumo = :Nuevo where sIdInsumo =:IdMaterial ');
        connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Nuevo').Value := insumo_agregado;
        connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
        connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
        connection.qryBusca.ExecSQL;
      end
      else
      begin
           if (tabla = 'anexo_ppedido') or (tabla = 'anexo_prequisicion') then
           begin
               connection.qryBusca.Active := False;
               connection.qryBusca.SQL.Clear;
               connection.qryBusca.SQL.Add('update ' + tabla + ' set sIdInsumo = :Nuevo, sMedida =:Medida, mDescripcion =:descripcion where sContrato = :Contrato and sIdInsumo =:IdMaterial ');
               connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
               connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
               connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
               connection.qryBusca.Params.ParamByName('Nuevo').Value :=insumo_agregado;
               connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
               connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
               connection.qryBusca.Params.ParamByName('Medida').DataType := ftString;
               connection.qryBusca.Params.ParamByName('Medida').Value := tsMedida.Text;
               connection.qryBusca.Params.ParamByName('Descripcion').DataType := ftMemo;
               connection.qryBusca.Params.ParamByName('Descripcion').Value := tsDescripcion.Text;
               connection.qryBusca.ExecSQL;
           end
           else
           begin
               connection.qryBusca.Active := False;
               connection.qryBusca.SQL.Clear;
               connection.qryBusca.SQL.Add('update ' + tabla + ' set sIdInsumo = :Nuevo where sContrato = :Contrato and sIdInsumo =:IdMaterial ');
               connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
               connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
               connection.qryBusca.Params.ParamByName('Nuevo').DataType := ftString;
               connection.qryBusca.Params.ParamByName('Nuevo').Value := insumo_agregado;
               connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
               connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
               connection.qryBusca.ExecSQL;
           end;
      end;
    end;
  end;
  messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
end;

//soad -> Funcion para buscar materiales existentes en otras tablas antes de eliminarlos..
//*************************************************************************

procedure TfrmConsumibles.BuscaMateriales(Id: string);
var
  base, tabla, campo, cad: string;
  datos: array[1..50] of string;
  i, x: Integer;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Show tables');
  connection.qryBusca.Open;
  base := 'Tables_in_' + global_db;
  i := 1;
  while not connection.QryBusca.Eof do
  begin
    tabla := connection.QryBusca.FieldValues[base];
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('describe ' + tabla + ' ');
    connection.qryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
      while not connection.QryBusca2.Eof do
      begin
        if connection.QryBusca2.FieldValues['Field'] = 'sIdMaterial' then
        begin
          datos[i] := tabla;
          i := i + 1;
        end;
        connection.QryBusca2.Next;
      end;
    end;
    connection.QryBusca.Next;
  end;
  Encuentra := False;

     // Busca todos los registros..
  for x := 1 to i - 1 do
  begin
    tabla := datos[x];
    if tabla = 'calidad_material' then
    begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('select sIdMaterial from ' + tabla + ' where sIdMaterial =:IdMaterial ');
      connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
      connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
      connection.qryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        Encuentra := True;
    end
    else
    begin
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('select sIdMaterial from ' + tabla + ' where sContrato = :Contrato and sIdMaterial =:IdMaterial ');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('IdMaterial').DataType := ftString;
      connection.qryBusca.Params.ParamByName('IdMaterial').Value := Id;
      connection.qryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        Encuentra := True;
    end;
  end;
end;

procedure TfrmConsumibles.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

procedure TfrmConsumibles.cargaImagen;
begin
  if sArchivo <> '' then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zcommand.SQL.Add('Update insumos SET bImagen = :Imagen ' +
      'Where sContrato = :Contrato and sIdInsumo =:Insumo ');
    connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato;
    connection.zcommand.Params.ParamByName('Insumo').DataType := ftString;
    connection.zcommand.Params.ParamByName('Insumo').Value := insumo_agregado;
    connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic);
    connection.zCommand.ExecSQL();
  end;

end;

procedure TfrmConsumibles.muestraImagen;
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  bImagen.Picture.Bitmap := nil;
  BlobField := connection.configuracion.FieldByName('bImagen');
  BS := connection.Configuracion.CreateBlobStream(BlobField, bmRead);
  if bs.Size > 15 then
  begin
    try
      Pic := TJpegImage.Create;
      try
        Pic.LoadFromStream(bS);
        bImagen.Picture.Graphic := Pic;
      finally
        Pic.Free;
      end;
    finally
      bS.Free
    end
  end;
end;

procedure TfrmConsumibles.Paste1Click(Sender: TObject);
begin
Modificarportapapeles(self.activecontrol , ftpegar)
end;

procedure TfrmConsumibles.PopupPrincipalPopup(Sender: TObject);
begin
    CalcularExistencias.Visible := False;
    if cxPageControl1.ActivePageIndex = 2 then
    begin
        CalcularExistencias.Visible := True;
    end;
end;

procedure TfrmConsumibles.cargar_tipo;
begin
  sTipoActividad.Items.Clear;
  zqTipoInsumo.Active:=False;
  zqTipoInsumo.Open;

  while not zqTipoInsumo.Eof do
  begin
    sTipoActividad.Items.Add(zqTipoInsumo.FieldByName('sDescripcion').AsString);
    zqTipoInsumo.Next;
  end;
end;

procedure TfrmConsumibles.ImprimeDistribucion(sParamTipo: string);
begin

end;



end.

