unit frm_actividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, DBGrids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, masUtilerias, StrUtils, Menus, ImgList,
  ExtCtrls, DateUtils, frxClass, frxDBSet, RXDBCtrl, RxLookup, Math,
  Newpanel, Buttons, ZDataset, ZAbstractRODataset, ZAbstractDataset, Gauges,
  rxToolEdit, rxCurrEdit, OleServer, ExcelXP, ComObj, Excel2000, RxMemDS,
  UnitExcel, UnitActualizarPorReferencias, unitexcepciones, udbgrid,
  UnitTBotonesPermisos, unitactivapop, UnitValidacion, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmActividades = class(TForm)
   frmBarra1: TfrmBarra;
    ds_ordenesdetrabajo: TDataSource;
    ds_actividadesxorden: TDataSource;
    dbActividadesxOrden: TfrxDBDataset;
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
    Copiar1: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    DetalledelPaquete1: TMenuItem;
    ds_Paquetes: TDataSource;
    BuscarPartida1: TMenuItem;
    dsOrden: TfrxDBDataset;
    ResumenPresup: TMenuItem;
    dsResumen: TfrxDBDataset;
    ImpPrograma: TMenuItem;
    ActividadesxOrden: TZQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    ordenesdetrabajosNumeroOrden: TStringField;
    ordenesdetrabajosDescripcionCorta: TStringField;
    ordenesdetrabajosIdTipoOrden: TStringField;
    QryResumen: TZReadOnlyQuery;
    QryResumensContrato: TStringField;
    QryResumensIdConvenio: TStringField;
    QryResumensNumeroOrden: TStringField;
    QryResumeniNivel: TIntegerField;
    QryResumensSimbolo: TStringField;
    QryResumensWbs: TStringField;
    QryResumensWbsAnterior: TStringField;
    QryResumensNumeroActividad: TStringField;
    QryResumensTipoActividad: TStringField;
    QryResumenmDescripcion: TMemoField;
    QryResumendFechaInicio: TDateField;
    QryResumendDuracion: TFloatField;
    QryResumendFechaFinal: TDateField;
    QryResumendPonderado: TFloatField;
    QryResumensMedida: TStringField;
    QryResumendVentaMN: TFloatField;
    QryResumendVentaDLL: TFloatField;
    QryResumenmComentarios: TMemoField;
    QryResumenlGerencial: TStringField;
    QryResumeniColor: TIntegerField;
    QryResumendMontoMN: TCurrencyField;
    QryResumendMontoDLL: TCurrencyField;
    Paquetes: TZReadOnlyQuery;
    PaquetesiNivel: TIntegerField;
    PaquetessWBS: TStringField;
    PaquetessWBSAnterior: TStringField;
    PaquetessPaquete: TStringField;
    PaquetessNumeroActividad: TStringField;
    PaquetesmDescripcion: TMemoField;
    PaquetesdFechaInicio: TDateField;
    PaquetesdFechaFinal: TDateField;
    PaquetesdDuracion: TFloatField;
    PaquetessDescripcion: TStringField;
    QryResumendCantidad: TFloatField;
    CrearPrograma: TMenuItem;
    PonderarConceptos: TMenuItem;
    AdminWBS: TMenuItem;
    PaquetesiItemOrden: TStringField;
    QryResumeniItemOrden: TStringField;
    ActividadesxOrdensContrato: TStringField;
    ActividadesxOrdensIdConvenio: TStringField;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdeniNivel: TIntegerField;
    ActividadesxOrdensSimbolo: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensPaquete: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdensTipoActividad: TStringField;
    ActividadesxOrdeniItemOrden: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdensHoraInicio: TStringField;
    ActividadesxOrdendDuracion: TFloatField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdensHoraFinal: TStringField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendCargado: TFloatField;
    ActividadesxOrdendInstalado: TFloatField;
    ActividadesxOrdendExcedente: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendVentaDLL: TFloatField;
    ActividadesxOrdensIdPlataforma: TStringField;
    ActividadesxOrdensIdPernocta: TStringField;
    ActividadesxOrdenmComentarios: TMemoField;
    ActividadesxOrdenlGerencial: TStringField;
    ActividadesxOrdenlCalculo: TStringField;
    ActividadesxOrdeniColor: TIntegerField;
    ActividadesxOrdenlGenerado: TStringField;
    ActividadesxOrdenlCancelada: TStringField;
    ActividadesxOrdendMontoMN: TCurrencyField;
    ActividadesxOrdendMontoDLL: TCurrencyField;
    ActividadesxOrdensWbsSpace: TStringField;
    mnEstructura: TMenuItem;
    tNewGroupBox1: tNewGroupBox;
    Label2: TLabel;
    Label18: TLabel;
    EtiquetaPU2: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    tdVentaMN: TRxDBCalcEdit;
    tdCantidad: TRxDBCalcEdit;
    tsNumeroActividad: TDBEdit;
    tmDescripcion: TDBMemo;
    tiColor: TDBComboBox;
    tiColores: TColorBox;
    tsPaquete: TRxDBLookupCombo;
    tsUnidad: TDBEdit;
    tNewGroupBox2: tNewGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    tdDuracion: TDBEdit;
    tdFechaInicio: TDBDateEdit;
    tdFechaFinal: TDBDateEdit;
    Label3: TLabel;
    tdCostoMN: TRxDBCalcEdit;
    tNewGroupBox3: tNewGroupBox;
    tmComentarios: TDBMemo;
    Label9: TLabel;
    ActividadesxOrdendCostoMN: TFloatField;
    ActividadesxOrdendCostoDLL: TFloatField;
    ActividadesxOrdendMontoCostoMN: TCurrencyField;
    ActividadesxOrdendMontoCostoDLL: TCurrencyField;
    QryResumendMontoCostoMN: TCurrencyField;
    QryResumendMontoCostoDLL: TCurrencyField;
    QryResumendCostoMN: TFloatField;
    QryResumendCostoDLL: TFloatField;
    InsertarConceptos: TMenuItem;
    tlGerencial: TDBCheckBox;
    ordenesdetrabajodFechaInicioT: TDateField;
    ordenesdetrabajodFechaSitioM: TDateField;
    ordenesdetrabajosDepSolicitante: TStringField;
    ordenesdetrabajodfiProgramado: TDateField;
    ordenesdetrabajodffProgramado: TDateField;
    ordenesdetrabajosIdPlataforma: TStringField;
    ordenesdetrabajosEquipo: TStringField;
    ordenesdetrabajosPozo: TStringField;
    ordenesdetrabajodFechaElaboracion: TDateField;
    frxCentrosCosto: TfrxDBDataset;
    qryCentrocostos: TZReadOnlyQuery;
    dtsCentroCostos: TDataSource;
    ordenesdetrabajosPuestoPEP: TStringField;
    ordenesdetrabajosFirmantePEP: TStringField;
    ordenesdetrabajosPuestoCia: TStringField;
    ordenesdetrabajosFirmantecia: TStringField;
    Actividadesxfrentedetrabajo1: TMenuItem;
    QryConcentradoOt: TZReadOnlyQuery;
    frxDBDataset1: TfrxDBDataset;
    QryConcentradoOtsNumeroActividad: TStringField;
    QryConcentradoOtsNumeroOrden: TStringField;
    QryConcentradoOtsMedida: TStringField;
    QryConcentradoOtdCantidad: TFloatField;
    QryConcentradoOtdVentaMn: TFloatField;
    frxReporte: TfrxReport;
    ReprogramacionesdelContrato1: TMenuItem;
    Label20: TLabel;
    tlCalculo: TDBComboBox;
    ActividadesxOrdensMedida: TStringField;
    tdPonderado: TDBEdit;
    Label21: TLabel;
    AdministraciondelPrograma1: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    ActividadesxOrdensWbsContrato: TStringField;
    progreso: TProgressBar;
    Label10: TLabel;
    ImprimirPrograma1: TMenuItem;
    AsignarWbsdelContrato1: TMenuItem;
    GrupoTipo: TGroupBox;
    sTipoPU: TDBCheckBox;
    sTipoADM: TDBCheckBox;
    ActividadesxOrdensTipoAnexo: TStringField;
    ExportaaExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ExportaProgramaconIsometricosExcel1: TMenuItem;
    VisualizarDiferencias1: TMenuItem;
    frxDBValida: TfrxDBDataset;
    RxMDValida: TRxMemoryData;
    RxMDValidasNumeroActividad: TStringField;
    RxMDValidasWbs: TStringField;
    RxMDValidadCantidad: TStringField;
    RxMDValidasuma: TStringField;
    RxMDValidaaMN: TStringField;
    RxMDValidaaDLL: TStringField;
    RxMDValidabMN: TStringField;
    RxMDValidabDLL: TStringField;
    RxMDValidadCantidadAnexo: TStringField;
    RxMDValidadescripcion: TStringField;
    RxMDValidamensaje: TStringField;
    RxMDValidasNumeroOrden: TStringField;
    RxMDValidasWbs2: TStringField;
    frxReport1: TfrxReport;
    Label12: TLabel;
    tsActAnterior: TDBEdit;
    ActividadesxOrdensActividadAnterior: TStringField;
    ExportaVolumenesExcel1: TMenuItem;
    ImportarDescripcionesPreciosdelAnxoC1: TMenuItem;
    OocionesdeEdicion1: TMenuItem;
    SeleccionarTodo1: TMenuItem;
    DeSeleccionarTodo1: TMenuItem;
    ActividadesxOrdensAnexo: TStringField;
    Label13: TLabel;
    Costodefrente1: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    ExportavolumenesaExcelAgrupado1: TMenuItem;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    BarraEstado: TProgressBar;
    ActividadesxOrdenNewSimbol: TStringField;
    ActividadesxOrdenDescripcion: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_actividades: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn;
    pnl1: TPanel;
    ts1: TLabel;
    Progress: TGauge;
    tsNumeroOrden: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdDuracionKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdDuracionExit(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsPaqueteEnter(Sender: TObject);
    procedure tsPaqueteExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdDuracionEnter(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tiColorEnter(Sender: TObject);
    procedure tiColorExit(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure PartidasBeforeDelete(DataSet: TDataSet);
    procedure ActividadesxOrdenAfterScroll(DataSet: TDataSet);
    procedure DetalledelPaquete1Click(Sender: TObject);
    procedure grid_actividadeGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure PartidasBeforeInsert(DataSet: TDataSet);
    procedure tiColoresEnter(Sender: TObject);
    procedure tiColoresExit(Sender: TObject);
    procedure tiColoresKeyPress(Sender: TObject; var Key: Char);
    procedure tiColoresChange(Sender: TObject);
    procedure PaquetesCalcFields(DataSet: TDataSet);
    procedure BuscarPartida1Click(Sender: TObject);
    procedure ActividadesxOrdenAfterInsert(DataSet: TDataSet);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure ActividadesxOrdensWbsAnteriorChange(Sender: TField);
    procedure tsUnidadEnter(Sender: TObject);
    procedure tsUnidadExit(Sender: TObject);
    procedure tsUnidadKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    procedure ResumenPresupClick(Sender: TObject);
    procedure QryResumenCalcFields(DataSet: TDataSet);
    procedure grid_actividadeDblClick(Sender: TObject);
    procedure ImpProgramaClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure CrearProgramaClick(Sender: TObject);
    procedure PonderarConceptosClick(Sender: TObject);
    function lExisteMedida(sMedida: string): Boolean;
    procedure AdminWBSClick(Sender: TObject);
    procedure mnEstructuraClick(Sender: TObject);
    procedure tdCostoMNEnter(Sender: TObject);
    procedure tdCostoMNExit(Sender: TObject);
    procedure tdCostoMNKeyPress(Sender: TObject; var Key: Char);
    procedure InsertarConceptosClick(Sender: TObject);
    procedure ActividadesxOrdensTipoActividadChange(Sender: TField);
    procedure Actividadesxfrentedetrabajo1Click(Sender: TObject);
    procedure ReprogramacionesdelContrato1Click(Sender: TObject);
    procedure tlCalculoEnter(Sender: TObject);
    procedure tlCalculoExit(Sender: TObject);
    procedure tlCalculoKeyPress(Sender: TObject; var Key: Char);
    procedure zProcCancelaInsert(DataSet: TDataSet);
    procedure InsertaActividad(Sender: TObject);
    //*****************************BRITO 25-03-11*******************************
    procedure SeleccionarNuevaActividad(Sender: TObject);
    procedure NuevoPaquete(Sender: TObject);

    procedure procBuscaPartida(Sender: TObject);
    procedure ImportaXLS(Sender: TObject);
    procedure BuscaWbs(dParamWbsAnt, dParamActividadAnt, dParamWbs, dParamOrden, dParamTipo: string; dParamMensaje: boolean);
    procedure ImprimirPrograma1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure AsignarWbsdelContrato1Click(Sender: TObject);
    procedure sTipoPUClick(Sender: TObject);
    procedure sTipoADMClick(Sender: TObject);
    procedure ExportaaExcel1Click(Sender: TObject);
    procedure formatoEncabezado();
    procedure ExportaProgramaconIsometricosExcel1Click(Sender: TObject);
    procedure VisualizarDiferencias1Click(Sender: TObject);
    procedure ExportaVolumenesExcel1Click(Sender: TObject);
    procedure SeleccionarTodo1Click(Sender: TObject);
    procedure DeSeleccionarTodo1Click(Sender: TObject);
    procedure ImportarDescripcionesPreciosdelAnxoC1Click(Sender: TObject);
    procedure grid_actividadeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_actividadeMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_actividadeTitleClick(Column: TColumn);
    procedure tdPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure tiColorKeyPress(Sender: TObject; var Key: Char);
    procedure tdPonderadoEnter(Sender: TObject);
    procedure tdPonderadoExit(Sender: TObject);
    procedure tsActAnteriorEnter(Sender: TObject);
    procedure tsActAnteriorExit(Sender: TObject);
    procedure tsActAnteriorKeyPress(Sender: TObject; var Key: Char);
    function SumaCantidades(): boolean;
    procedure tdCantidadChange(Sender: TObject);
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdCostoMNChange(Sender: TObject);
    procedure ActividadesxOrdendPonderadoSetText(Sender: TField;
      const Text: string);
    procedure ActividadesxOrdendDuracionSetText(Sender: TField;
      const Text: string);
    procedure tdPonderadoChange(Sender: TObject);
    procedure tdDuracionChange(Sender: TObject);
    procedure ExportavolumenesaExcelAgrupado1Click(Sender: TObject);
    procedure ActividadesxOrdenNewSimbolGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ProgramaDiariodelConceptodelaCia1Click(Sender: TObject);
    procedure ProgramarActividad();
    procedure Com1Click(Sender: TObject);
    procedure OocionesdeEdicion1Click(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure grid_actividadesEnter(Sender: TObject);
  private
    sMenuP: string;
    Paq: TstringList;
    { Private declarations }
  public
    { Public declarations }
    procedure CalcDiferenciasOT(lista: TStringList);
    procedure ventasDiferentes(sActividad, suma: string);
    function cantidadesDiferentes(sActividad: string): string;
    procedure acumularDiferencia(suma, sMensaje: string);
    procedure PopUpNuevoRegistro;

  end;

var
  frmActividades: TfrmActividades;
  sIdPlataforma: string;
  sIdPernocta: string;
  sNumeroOrden: string;
  sPaquete: string;
  sPaqueteDesc: string;
  iItemOrden: Integer;
  sFiltro: string;
  SavePlace: TBookmark;
  GridProgConstExist: TRxDBGrid;
  GridActividadesxAnexo: TRxDBGrid;
  zActividadesxAnexo: TZReadOnlyQuery;
  lYaPregunto: Boolean;
  sWbsAnterior: string;
  sItemOrden: string;
  iNivel: Byte;
  WbsAnt, ActividadAnt, DescripcionAnt, UnidadAnt, sWbsOrig: string;
  VentaAnt, CostoAnt: double;

  NivelAnt: integer;

  OrdenPaqueteItem, OrdenPaqueteWbs: string;
  OrdenPaqueteNivel: integer;

  utgrid: ticdbgrid;
  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

  //Matriz de colores
  Colores: array[1..10, 1..2] of integer;
  columnas: array[1..1400] of string;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_GraficaGerencial, frm_GraficaGerencialDX, UnitValidaTexto,
  UFunctionsGHH, Frm_ProgramacionPartidasCia;

{$R *.dfm}

function TfrmActividades.lExisteMedida(sMedida: string): Boolean;
begin
  lExisteMedida := False;
  lExisteMedida := (strPos(pchar(connection.configuracion.FieldByName('txtMaterialAutomatico').AsString), pchar(sMedida + '|')) <> nil)
end;

procedure TfrmActividades.FormShow(Sender: TObject);
var
  i, x, y, z: integer;
begin
  sMenuP := stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cActividades', PopupPrincipal);
  //UtGrid := TicdbGrid.create(grid_actividades);
    {Definimos colores...}
  colores[1, 1] := 3;
  colores[2, 1] := 5;
  colores[3, 1] := 6;
  colores[4, 1] := 8;
  colores[5, 1] := 10;
  colores[6, 1] := 11;
  colores[7, 1] := 12;
  colores[8, 1] := 13;
  colores[9, 1] := 14;
  colores[10, 1] := 15;

    {Colocamor color texto..}
  colores[1, 2] := 1;
  colores[2, 2] := 1;
  colores[3, 2] := 0;
  colores[4, 2] := 0;
  colores[5, 2] := 0;
  colores[6, 2] := 1;
  colores[7, 2] := 1;
  colores[8, 2] := 1;
  colores[9, 2] := 1;
  colores[10, 2] := 0;

    // ivan - > Llenado del array de las columnas del Excel..
  for x := 1 to 26 do
    columnas[x] := Chr(64 + x);

  i := 27;
  for x := 1 to 26 do
  begin
    for y := 1 to 26 do
    begin
      columnas[i] := Chr(64 + x) + Chr(64 + y);
      i := i + 1;
    end;
  end;

  for x := 1 to 1 do
  begin
    for y := 1 to 26 do
    begin
      for z := 1 to 26 do
      begin
        columnas[i] := Chr(64 + x) + Chr(64 + y) + Chr(64 + z);
        i := i + 1;
      end;
    end;
  end;


  iItemOrden := 0;
  sPaquete := '';
  OpcButton := '';
    //frmBarra1.btnCancel.Click ;

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear;
  if (global_grupo = 'INTEL-CODE') then
    OrdenesdeTrabajo.SQL.Add('Select o.dFechaInicioT, o.dFechaSitioM, o.sDepSolicitante, o.dfiProgramado, o.dffProgramado, o.sNumeroOrden, o.sDescripcionCorta, ' +
      'o.sIdTipoOrden, o.sIdPlataforma, o.sEquipo, o.sPozo, o.dFechaElaboracion, o.sPuestoPEP, o.sFirmantePEP, o.sPuestoCia, o.sFirmantecia ' +
      'from ordenesdetrabajo o ' +
      'INNER JOIN ordenesxusuario ou On (ou.sContrato=o.sContrato ' +
      'And ou.sNumeroOrden=o.sNumeroOrden and ou.sIdUsuario =:Usuario ) ' +
      'where o.sContrato = :Contrato And o.cIdStatus =:Status Order by o.sNumeroOrden')
  else
    OrdenesdeTrabajo.SQL.Add('Select ot.dFechaInicioT, ot.dFechaSitioM, ot.sDepSolicitante, ot.dfiProgramado, ot.dffProgramado, ' +
      'ot.sNumeroOrden, ot.sDescripcionCorta, ot.sIdTipoOrden, ot.sIdPlataforma, ot.sEquipo, ot.sPozo, ' +
      'ot.dFechaElaboracion, ot.sPuestoPEP, ot.sFirmantePEP, ot.sPuestoCia, ot.sFirmantecia from ordenesdetrabajo ot ' +
      'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato ' +
      'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
      'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
      'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden');
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
  OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
  OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('Usuario').Value := Global_Usuario;
  OrdenesdeTrabajo.Open;

  if OrdenesdeTrabajo.RecordCount > 0 then
  begin
    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    sNumeroOrden := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];

(*      Connection.zCommand.Active := False;
      Connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear ;
      Connection.zCommand.SQL.Add( 'update actividadesxorden SET sSimbolo = "" Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sTipoActividad = "Actividad"') ;
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      connection.zCommand.ExecSQL ;

      Connection.zCommand.Active := False ;
      Connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear ;
      Connection.zCommand.SQL.Add( 'update actividadesxorden SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sTipoActividad = "Paquete"') ;
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
      connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      connection.zCommand.ExecSQL ;
  *)
    ActividadesxOrden.Active := False;
    ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('Contrato').Value := Global_Contrato;
    ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('Convenio').Value := Global_Convenio;
    ActividadesxOrden.Params.ParamByName('Orden').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
    begin
      ActividadesxOrden.ParamByName('tam').AsInteger := Global_TamOrden;
      ActividadesxOrden.ParamByName('separador').AsString := Global_SepOrden;
    end;
    ActividadesxOrden.Open;

    QryResumen.Active := False;
    QryResumen.Params.ParamByName('Contrato').DataType := ftString;
    QryResumen.Params.ParamByName('Contrato').Value := Global_Contrato;
    QryResumen.Params.ParamByName('Convenio').DataType := ftString;
    QryResumen.Params.ParamByName('Convenio').Value := Global_Convenio;
    QryResumen.Params.ParamByName('Orden').DataType := ftString;
    QryResumen.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    QryResumen.Open;

    Paquetes.Active := False;
    Paquetes.Params.ParamByName('contrato').DataType := ftString;
    Paquetes.Params.ParamByName('contrato').Value := global_contrato;
    Paquetes.Params.ParamByName('convenio').DataType := ftString;
    Paquetes.Params.ParamByName('convenio').Value := global_convenio;
    Paquetes.Params.ParamByName('orden').DataType := ftString;
    Paquetes.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    Paquetes.Open;

    Grid_Actividades.SetFocus
  end
  else
    tsNumeroOrden.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmActividades.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    grid_actividades.SetFocus
end;

procedure TfrmActividades.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsactanterior.SetFocus
end;

procedure TfrmActividades.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdDuracion.SetFocus
end;

procedure TfrmActividades.tdDuracionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTDBEdit(tdDuracion, key) then
    key := #0;
  if key = #13 then
    tdFechaFinal.SetFocus
end;


procedure TfrmActividades.frmBarra1btnAddClick(Sender: TObject);
var
  sActividad: string;
begin
//  activapop(frmActividades, popupprincipal);
  if tsNumeroOrden.Text <> '' then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;
    frmBarra1.btnAddClick(Sender);

    tdFechaInicio.Date := Date;
    tdFechaFinal.Date := Date;

    if ActividadesxOrden.RecordCount = 0 then
    begin
      sActividad := 'A';
      tsNumeroActividad.ReadOnly := True;
    end
    else
    begin
      sActividad := '';
      tsNumeroActividad.ReadOnly := false;
    end;
    if ActividadesxOrden.RecordCount > 0 then
      if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
        sPaquete := ActividadesxOrden.FieldValues['sWbs']
      else
        sPaquete := ActividadesxOrden.FieldValues['sWbsAnterior']
    else
      sPaquete := '';
    sPaqueteDesc := '';

    if tsPaquete.KeyValue <> null then
      sPaqueteDesc := tsPaquete.Text;

    if Paquetes.RecordCount > 0 then
    begin
      OrdenPaqueteItem := Paquetes.FieldValues['iItemOrden'];
      OrdenPaqueteWbs := Paquetes.FieldValues['sWbs'];
      OrdenPaqueteNivel := Paquetes.FieldValues['iNivel'];
    end;

    ActividadesxOrden.Append;
    ActividadesxOrden.FieldValues['sContrato'] := Global_Contrato;
    ActividadesxOrden.FieldValues['sIdConvenio'] := Global_Convenio;
    ActividadesxOrden.FieldValues['sNumeroOrden'] := tsNumeroOrden.Text;
    ActividadesxOrden.FieldValues['sPaquete'] := '0';
    ActividadesxOrden.FieldValues['sNumeroActividad'] := sActividad;
    ActividadesxOrden.FieldValues['sTipoActividad'] := 'Actividad';
    ActividadesxOrden.FieldValues['sMedida'] := '';
    ActividadesxOrden.FieldValues['lCalculo'] := 'Si';
    ActividadesxOrden.FieldValues['sHoraInicio'] := '00:00';
    ActividadesxOrden.FieldValues['sHoraFinal'] := '00:00';
    ActividadesxOrden.FieldValues['dVentaMN'] := 0;
    ActividadesxOrden.FieldValues['dVentaDLL'] := 0;
    ActividadesxOrden.FieldValues['dcostoMN'] := 0;
    ActividadesxOrden.FieldValues['dCostoDLL'] := 0;
    ActividadesxOrden.FieldValues['sWBSAnterior'] := sPaquete;
    ActividadesxOrden.FieldValues['dFechaInicio'] := Date;
    ActividadesxOrden.FieldValues['dFechaFinal'] := Date;
    ActividadesxOrden.FieldValues['dDuracion'] := 1;

    ActividadesxOrden.FieldValues['lGerencial'] := 'No';
    ActividadesxOrden.FieldValues['sIdPlataforma'] := '';
    ActividadesxOrden.FieldValues['sIdPernocta'] := '';
    ActividadesxOrden.FieldValues['dPonderado'] := 0;
    ActividadesxOrden.FieldValues['dCargado'] := 0;
    ActividadesxOrden.FieldValues['dInstalado'] := 0;
    ActividadesxOrden.FieldValues['dExcedente'] := 0;
    ActividadesxOrden.FieldValues['mComentarios'] := '*';
    ActividadesxOrden.FieldValues['lGenerado'] := 'No';
    ActividadesxOrden.FieldValues['lCancelada'] := 'No';
    ActividadesxOrden.FieldValues['sAnexo'] := '';

    case tiColores.ItemIndex of
      0: tiColor.ItemIndex := 0;
      1: tiColor.ItemIndex := 8;
      2: tiColor.ItemIndex := 9;
      3: tiColor.ItemIndex := 11;
      4: tiColor.ItemIndex := 10;
      5: tiColor.ItemIndex := 11;
      6: tiColor.ItemIndex := 13;
      7: tiColor.ItemIndex := 15;
      8: tiColor.ItemIndex := 14;
      9: tiColor.ItemIndex := 2;
      10: tiColor.ItemIndex := 3;
      11: tiColor.ItemIndex := 5;
      12: tiColor.ItemIndex := 4;
      13: tiColor.ItemIndex := 6;
      14: tiColor.ItemIndex := 7;
      15: tiColor.ItemIndex := 1;
    end;

    PopUpNuevoRegistro;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmActividades.frmBarra1btnEditClick(Sender: TObject);
begin
  //activapop(frmActividades, popupprincipal);
  if ActividadesxOrden.RecordCount > 0 then
  begin
    if (ActividadesxOrden.FieldValues['dInstalado'] > 0) or (ActividadesxOrden.FieldValues['dExcedente'] > 0) then
      MessageDlg('Realizar modificacion sobre conceptos que hayan sido utilizados en un reporte diario, ' +
        'implica la necesidad de correr proceso de recalculo de avances por partida, ' +
        'si usted modifica la cantidad a instalar en un concepto previamente utilizado en un reporte diario, ' +
        'notifique al administrador del sistema.', mtInformation, [mbOk], 0);

    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    grid_actividades.Enabled := false;

    Salir1.Enabled := False;
    frmBarra1.btnEditClick(Sender);
    try
      WbsAnt := ActividadesxOrden.FieldValues['sWbs'];
      ActividadAnt := ActividadesxOrden.FieldValues['sNumeroActividad'];
      DescripcionAnt := ActividadesxOrden.FieldValues['mDescripcion'];
      UnidadAnt := ActividadesxOrden.FieldValues['sMedida'];
      CostoAnt := ActividadesxOrden.FieldValues['dCostoMN'];
      VentaAnt := ActividadesxOrden.FieldValues['dVentaMN'];
      sWbsOrig := ActividadesxOrden.FieldValues['sWbs'];
      NivelAnt := ActividadesxOrden.FieldValues['iNivel'];
      ActividadesxOrden.Edit;

      if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' then
      begin
        tsNumeroActividad.Enabled := False;
        tmDescripcion.Enabled := False;
      end;
      tdCostoMN.Enabled := False;
      tsUnidad.Enabled := False;
      tdVentaMN.Enabled := False;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al editar registro', 0);
        frmBarra1.btnCancel.Click;
      end;
    end;
    tdCantidad.SetFocus
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmActividades.frmBarra1btnPostClick(Sender: TObject);
var
  lEdito, lContinua: Boolean;
  sItemOrdenAnterior,
    Wbs,
    ExtraePaquete,
    sItemOrdenAnterior_p,
    ExtraePaquete_p,
    NewWbs, sMensaje,
    sWbs_paquetes: string;
  iNivel_p, NivelAct: integer;
  Q_Item,
    Q_Paquete,
    Q_PaqueteCopy,
    Q_Actualiza: TZReadonlyQuery;
  nombres, cadenas: TStringList;
begin
    {Validaciones de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Descripcion'); nombres.Add('Fecha Inio');
  cadenas.Add(tmDescripcion.Text); cadenas.Add(tdFechaInicio.text);

  nombres.Add('Fecha Final'); nombres.Add('Duracion');
  cadenas.Add(tdFechaFinal.text); cadenas.Add(tdDuracion.Text);

  nombres.Add('Ponderado');
  cadenas.Add(tdPonderado.text);

  if not validaTexto(nombres, cadenas, 'Concepto/Part.', tsNumeroActividad.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

    {Continua insercion de datos..}
  sMensaje := '';
    {Validaciones de Campos no Editables...}
  if ActividadesxOrden.State = dsEdit then
  begin
    if ActividadAnt <> tsNumeroActividad.Text then
      sMensaje := '# Concepto / Partida, ';

    if (DescripcionAnt <> tmDescripcion.Text) and (ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad') then
      sMensaje := 'Descripcion, ';

    if sMensaje <> '' then
    begin
      messageDLG('No se puede Modificar el Registro "' + sMensaje + '" pertenece a un Catalogo Principal, debe hacerlo desde el Catalogo de Anexos ', mtWarning, [mbOk], 0);
      abort;
      exit;
    end;
  end;

    {Verificamos que las canitdades de Frente no excedan a la Cantida de Anexo..}
  lContinua := SumaCantidades;
  if lContinua = False then
    exit;

  Q_Item := TZReadOnlyQuery.Create(self);
  Q_Item.Connection := connection.zConnection;

  Q_Paquete := TZReadOnlyQuery.Create(self);
  Q_Paquete.Connection := connection.zConnection;

  Q_PaqueteCopy := TZReadOnlyQuery.Create(self);
  Q_PaqueteCopy.Connection := connection.zConnection;

  Q_Actualiza := TZReadOnlyQuery.Create(self);
  Q_Actualiza.Connection := connection.zConnection;

  try
    if sTipoPU.Checked then
      ActividadesxOrden.FieldValues['sTipoAnexo'] := 'PU';

    if sTipoADM.Checked then
      ActividadesxOrden.FieldValues['sTipoAnexo'] := 'ADM';

    if ActividadesxOrden.FieldValues['sWbs'] = 'A' then
      if ActividadesxOrden.RecordCount > 0 then
        if MessageDlg('Desea Cambiar las fechas de las actividades y tomar la de el paquete principal ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('UPDATE actividadesxorden Set dFechaInicio = :FechaI, dFechaFinal = :FechaF, dDuracion = :duracion Where ' +
            'sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
            'sWBSAnterior Like :Paquete');
          Connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text;
          Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Convenio').value := global_convenio;
          Connection.zCommand.Params.ParamByName('Paquete').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Paquete').value := Trim(ActividadesxOrden.FieldValues['sWBS']) + '%';
          Connection.zCommand.Params.ParamByName('FechaI').DataType := ftDate;
          Connection.zCommand.Params.ParamByName('FechaI').value := ActividadesxOrden.FieldValues['dFechaInicio'];
          Connection.zCommand.Params.ParamByName('FechaF').DataType := ftDate;
          Connection.zCommand.Params.ParamByName('FechaF').value := ActividadesxOrden.FieldValues['dFechaFinal'];
          Connection.zCommand.Params.ParamByName('duracion').DataType := ftInteger;
          Connection.zCommand.Params.ParamByName('duracion').value := DaysBetween(ActividadesxOrden.FieldValues['dFechaFinal'], ActividadesxOrden.FieldValues['dFechaInicio']) + 1;
          Connection.zCommand.ExecSQL;
        end;

    ActividadesxOrden.FieldValues['iColor'] := tiColor.Text;

        //Definimos si es paquete o es una actividad..
    if (ActividadesxOrden.FieldByName('sMedida').IsNull) or (ActividadesxOrden.FieldValues['sMedida'] = '') then
    begin
      ActividadesxOrden.FieldValues['sTipoActividad'] := 'Paquete';
      ActividadesxOrden.FieldValues['dVentaMN'] := 0;
      ActividadesxOrden.FieldValues['dVentaDLL'] := 0;
      ActividadesxOrden.FieldValues['dCostoMN'] := 0;
      ActividadesxOrden.FieldValues['dCostoDLL'] := 0;
      if (ActividadesxOrden.FieldByName('dCantidad').IsNull) or (ActividadesxOrden.FieldValues['dCantidad'] = 0) then
        ActividadesxOrden.FieldValues['dCantidad'] := 1;
      ActividadesxOrden.FieldValues['lGerencial'] := 'Si';
      ActividadesxOrden.FieldValues['sSimbolo'] := '+';
      sPaquete := ActividadesxOrden.Fieldbyname('sWBSAnterior').asstring;
    end
    else
    begin
      ActividadesxOrden.FieldValues['lGerencial'] := 'No';
      ActividadesxOrden.FieldValues['sTipoActividad'] := 'Actividad';
      ActividadesxOrden.FieldValues['sSimbolo'] := '';
      sPaquete := ActividadesxOrden.Fieldbyname('sWBSAnterior').asstring;
    end;

    ActividadesxOrden.FieldValues['dDuracion'] := DaysBetween(ActividadesxOrden.FieldValues['dFechaFinal'], ActividadesxOrden.FieldValues['dFechaInicio']) + 1;

    if (ActividadesxOrden.FieldValues['dVentaMN'] > 0) then
    begin
      Connection.qryBusca.Active := False;
      Connection.qryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sContrato from actividadesxorden Where sContrato = :contrato and sNumeroOrden = :orden And sIdConvenio = :convenio and sWBSAnterior = :wbs');
      Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
      Connection.qryBusca.Params.ParamByName('wbs').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
      Connection.qryBusca.Open;

      if Connection.qryBusca.RecordCount > 0 then
      begin
        ActividadesxOrden.FieldValues['sTipoActividad'] := 'Paquete';
        ActividadesxOrden.FieldValues['sMedida'] := '';
        ActividadesxOrden.FieldValues['dVentaMN'] := 0;
        ActividadesxOrden.FieldValues['dVentaDLL'] := 0;
        ActividadesxOrden.FieldValues['dCostoMN'] := 0;
        ActividadesxOrden.FieldValues['dCostoDLL'] := 0;
      end;
    end;

        {Antes de guardar el item buscamos a que paquete le pertenece..}
    Q_Item.Active := False;
    Q_Item.Filtered := False;
    Q_Item.SQL.Clear;
    Q_Item.SQL.Add('select iItemOrden, iNivel from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs ');
    Q_Item.Params.ParamByName('Contrato').AsString := global_contrato;
    Q_Item.Params.ParamByName('Convenio').AsString := global_convenio;
    Q_Item.Params.ParamByName('Orden').AsString := tsNumeroOrden.text;
    if Paquetes.FieldValues['sWbs'] <> null then
      Q_Item.Params.ParamByName('Wbs').AsString := Paquetes.FieldValues['sWbs']
    else
      Q_Item.Params.ParamByName('Wbs').AsString := '';
    Q_Item.Open;

    if Q_Item.RecordCount > 0 then
      sItemOrdenAnterior := Q_Item.FieldValues['iItemOrden']
    else
      sItemOrdenAnterior := '';

    if Paquetes.FieldValues['sWbs'] <> null then
      ExtraePaquete := Paquetes.FieldValues['sWbs']
    else
      ExtraePaquete := '';

    if ActividadesxOrden.State = dsEdit then
    begin
            {Ahora hacemos la edicion del registro...}
      ActividadesxOrden.FieldValues['iItemOrden'] := sItemOrdenAnterior + sFnBuscaItem(ActividadesxOrden.FieldValues['sNumeroActividad'],
        ExtraePaquete,
        sItemOrdenAnterior,
        ActividadesxOrden.FieldValues['sTipoActividad'], tsNumeroOrden.Text, 'actividadesxorden',
        ActividadesxOrden.FieldValues['iNivel'] + 1);

      sItemOrdenAnterior_p := ActividadesxOrden.FieldValues['iItemOrden'];
      ExtraePaquete_p := ExtraePaquete;

      iNivel_p := ActividadesxOrden.FieldValues['iNivel'] + 1;

      if ActividadesxOrden.FieldValues['sAnexo'] = '' then
        ActividadesxOrden.FieldValues['sWbs'] := ExtraePaquete_p + '.' + ActividadesxOrden.FieldValues['sNumeroActividad']
      else
        ActividadesxOrden.FieldValues['sWbs'] := ExtraePaquete_p + '.' + ActividadesxOrden.FieldValues['sAnexo'] + '.' + ActividadesxOrden.FieldValues['sNumeroActividad'];

      ExtraePaquete_p := ActividadesxOrden.FieldValues['sWbs'];
      ActividadesxOrden.Post;

            {Actualizamos Wbs..}
      BuscaWbs(WbsAnt, ActividadAnt, ExtraePaquete_p, tsNumeroOrden.Text, ActividadesxOrden.FieldValues['sTipoActividad'], True);

            //Ahora consultamos si es un paquete el dato editado..
      if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
      begin
                {consultamos los datos dependientes del paquete a editar..}
        Q_Paquete.Active := False;
        Q_Paquete.SQL.Clear;

        if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
          Q_Paquete.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs LIKE :Wbs and iNivel >:Nivel order by iItemOrden, sNumeroActividad ')
        else
          Q_Paquete.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs LIKE :Wbs and iNivel >:Nivel order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador), sNumeroActividad ');

        Q_Paquete.Params.ParamByName('Contrato').AsString := global_contrato;
        Q_Paquete.Params.ParamByName('Convenio').AsString := global_convenio;
        Q_Paquete.Params.ParamByName('Orden').AsString := tsNumeroOrden.Text;
        Q_Paquete.Params.ParamByName('Wbs').AsString := WbsAnt + '.%';
        Q_Paquete.Params.ParamByName('Nivel').AsInteger := NivelAnt;

        if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
        begin
          Q_Paquete.Params.ParamByName('tam').AsInteger := Global_TamOrden;
          Q_Paquete.Params.ParamByName('separador').AsString := Global_SepOrden;

        end;

        Q_Paquete.Open;

                {Esta es una copia de los elementos..}
        Q_PaqueteCopy.Active := False;
        Q_PaqueteCopy.SQL.Clear;

        if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
          Q_PaqueteCopy.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs LIKE :Wbs and iNivel >:Nivel order by iItemOrden, sNumeroActividad ')
        else
          Q_PaqueteCopy.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs LIKE :Wbs and iNivel >:Nivel order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador), sNumeroActividad ');


        Q_PaqueteCopy.Params.ParamByName('Contrato').AsString := global_contrato;
        Q_PaqueteCopy.Params.ParamByName('Convenio').AsString := global_convenio;
        Q_PaqueteCopy.Params.ParamByName('Orden').AsString := tsNumeroOrden.Text;
        Q_PaqueteCopy.Params.ParamByName('Wbs').AsString := WbsAnt + '.%';
        Q_PaqueteCopy.Params.ParamByName('Nivel').AsInteger := NivelAnt;
        if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
        begin
          Q_PaqueteCopy.Params.ParamByName('tam').AsInteger := Global_TamOrden;
          Q_PaqueteCopy.Params.ParamByName('separador').AsString := Global_SepOrden;
        end;

        Q_PaqueteCopy.Open;

        NivelAct := NivelAnt - (iNivel_p - 1);

        while not Q_Paquete.Eof do
        begin
                    {Antes de Hacer la actualizacion, se consultan por niveles para crear Wbs..}
          sWbs_paquetes := ExtraePaquete_p;
          Q_PaqueteCopy.First;
          while not Q_PaqueteCopy.Eof do
          begin
                        {Definimos las Wbs..}
            if WbsAnt = Q_PaqueteCopy.FieldValues['sWbsAnterior'] then
              sWbs_paquetes := ExtraePaquete_p;

            if Q_PaqueteCopy.FieldValues['sTipoActividad'] = 'Actividad' then
            begin
              if Q_PaqueteCopy.FieldValues['sAnexo'] = '' then
                NewWbs := sWbs_paquetes + '.' + Q_PaqueteCopy.FieldValues['sNumeroActividad']
              else
                NewWbs := sWbs_paquetes + '.' + Q_PaqueteCopy.FieldValues['sAnexo'] + '.' + Q_PaqueteCopy.FieldValues['sNumeroActividad']
            end
            else
              NewWbs := sWbs_paquetes + '.' + Q_PaqueteCopy.FieldValues['sNumeroActividad'];

            if Q_Paquete.FieldValues['sWbs'] = Q_PaqueteCopy.FieldValues['sWbs'] then
            begin
              Q_Actualiza.Active := False;
              Q_Actualiza.SQL.Clear;
              Q_Actualiza.SQL.Add('Update actividadesxorden set iItemOrden =:iOrden, sWbs =:Wbs, sWbsAnterior =:WbsAnt, iNivel =:Nivel where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:WbsOld ');
              Q_Actualiza.Params.ParamByName('Contrato').AsString := global_contrato;
              Q_Actualiza.Params.ParamByName('Convenio').AsString := global_convenio;
              Q_Actualiza.Params.ParamByName('Orden').AsString := tsNumeroOrden.Text;
              Q_Actualiza.Params.ParamByName('Wbs').AsString := NewWbs;
              Q_Actualiza.Params.ParamByName('WbsOld').AsString := Q_Paquete.FieldValues['sWbs'];
              Q_Actualiza.Params.ParamByName('WbsAnt').AsString := sWbs_paquetes;
              if NivelAct > 0 then
                Q_Actualiza.Params.ParamByName('Nivel').AsInteger := Q_PaqueteCopy.FieldValues['iNivel'] - NivelAct
              else
                if NivelAct < 0 then
                  Q_Actualiza.Params.ParamByName('Nivel').AsInteger := Q_PaqueteCopy.FieldValues['iNivel'] + NivelAct
                else
                  Q_Actualiza.Params.ParamByName('Nivel').AsInteger := Q_PaqueteCopy.FieldValues['iNivel'];

              Q_Actualiza.Params.ParamByName('iOrden').AsString := sItemOrdenAnterior_P + sFnBuscaItem(Q_Paquete.FieldValues['sNumeroActividad'],
                ExtraePaquete_p,
                sItemOrdenAnterior_p,
                Q_Paquete.FieldValues['sTipoActividad'], tsNumeroOrden.Text, 'actividadesxanexo',
                Q_Paquete.FieldValues['iNivel']);
              Q_Actualiza.ExecSQL;

                            {Actualizamos Wbs..}
              BuscaWbs(Q_paquete.FieldValues['sWbs'],
                Q_paquete.FieldValues['sNumeroActividad'], NewWbs, tsNumeroOrden.Text, ActividadesxOrden.FieldValues['sTipoActividad'], False);
              Q_PaqueteCopy.Last;
            end;

            if Q_PaqueteCopy.FieldValues['sTipoActividad'] = 'Paquete' then
              sWbs_paquetes := NewWbs;

            Q_PaqueteCopy.Next;
          end;
          Q_Paquete.Next;
        end;
      end;
      lEdito := True;
    end
    else
    begin
      if tsPaquete.KeyValue = Null then
      begin
        ActividadesxOrden.FieldValues['iNivel'] := 0;
        ActividadesxOrden.FieldValues['iItemOrden'] := '';
      end
      else
      begin
        ActividadesxOrden.FieldValues['iNivel'] := Paquetes.FieldValues['iNivel'] + 1;
        ActividadesxOrden.FieldValues['iItemOrden'] := Paquetes.FieldValues['iItemOrden'];
      end;

      ActividadesxOrden.FieldValues['iItemOrden'] := sItemOrdenAnterior + sFnBuscaItem(ActividadesxOrden.FieldValues['sNumeroActividad'],
        ExtraePaquete,
        sItemOrdenAnterior,
        ActividadesxOrden.FieldValues['sTipoActividad'], tsNumeroorden.Text, 'actividadesxorden',
        ActividadesxOrden.FieldValues['iNivel']);
      lEdito := False;
           {Se salvan los datos..}
      ActividadesxOrden.Post;
    end;

    if ActividadesxOrden.State = dsEdit then
      lEdito := True
    else
    begin
      lEdito := False;
      Kardex('Conceptos Generales', 'Crea   Registro Programa de Trabajo', tsNumeroActividad.Text, Actividadesxorden.FieldValues['sTipoActividad'], tsNumeroOrden.Text, '', '');
    end;

    if lEdito then
    begin
      if (ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete') and (Connection.Configuracion.FieldValues['lCalculaFecha'] = 'Si') then
      begin
        try
          Connection.zCommand.Active := False;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('UPDATE actividadesxorden Set dFechaInicio = :FechaI, dFechaFinal = :FechaF, dDuracion = :duracion Where ' +
            'sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
            'concat(sWBSAnterior , ".") Like :WbsAnterior');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').value := global_convenio;
          connection.zCommand.Params.ParamByName('WbsAnterior').DataType := ftString;
          connection.zCommand.Params.ParamByName('WbsAnterior').value := Trim(ActividadesxOrden.FieldValues['sWBS']) + '.%';
          connection.zCommand.Params.ParamByName('FechaI').DataType := ftDate;
          connection.zCommand.Params.ParamByName('FechaI').value := ActividadesxOrden.FieldValues['dFechaInicio'];
          connection.zCommand.Params.ParamByName('FechaF').DataType := ftDate;
          connection.zCommand.Params.ParamByName('FechaF').value := ActividadesxOrden.FieldValues['dFechaFinal'];
          connection.zCommand.Params.ParamByName('duracion').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('duracion').value := DaysBetween(ActividadesxOrden.FieldValues['dFechaFinal'], ActividadesxOrden.FieldValues['dFechaInicio']) + 1;
          connection.zCommand.ExecSQL;
        except
          MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
        end;

        tsNumeroActividad.Enabled := True;
        tmDescripcion.Enabled := True;
        tdCostoMN.Enabled := True;
        tsUnidad.Enabled := True;
        tdVentaMN.Enabled := True;
        sTipoPU.Enabled := True;
        sTipoADM.Enabled := True;
      end;
    end;

    SavePlace := ActividadesxOrden.GetBookmark;
    ActividadesxOrden.Refresh;

    try
      ActividadesxOrden.GotoBookmark(SavePlace);
    except
    else
      ActividadesxOrden.FreeBookmark(SavePlace);
    end;


    Paquetes.Active := False;
    Paquetes.Open;

    tsPaquete.Enabled := True;
    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;

       //if ledito then
    frmBarra1.btnCancel.Click;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click;
    end;
  end;
 // desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmActividades.frmBarra1btnCancelClick(Sender: TObject);
begin
  //desactivapop(popupprincipal);
  ActividadesxOrden.Cancel;
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  frmBarra1.btnCancelClick(Sender);
  tsPaquete.Enabled := True;

  tsNumeroActividad.Enabled := True;
  tmDescripcion.Enabled := True;
  tdCostoMN.Enabled := True;
  tsUnidad.Enabled := True;
  tdVentaMN.Enabled := True;
  grid_actividades.Enabled := True;

  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmActividades.frmBarra1btnDeleteClick(Sender: TObject);
var
  Actividad, TipoAct, cadena, tabla: string;
  total, i: integer;
  dPonderado: double;
begin
  if ActividadesxOrden.RecordCount > 0 then
    if MessageDlg('Desea eliminar el # Conepto / partida ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
          {Buscamos si la partida o paquete ya fue reportada..}
      Actividad := ActividadesxOrden.FieldValues['sNumeroActividad'];
      TipoAct := ActividadesxOrden.FieldValues['sTipoActividad'];
      dPonderado := ActividadesxOrden.FieldValues['dPonderado'];
      try
        if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' then
        begin
                   {Primero la partida..}
          cadena := AntesEliminarFrente(ActividadesxOrden.FieldValues['sNumeroActividad'], ActividadesxOrden.FieldValues['sWbs'], tsNumeroOrden.Text, TipoAct);
          if cadena <> '' then
          begin
            MessageDlg('No se puede Eliminar!. La Partida ' + ActividadesxOrden.FieldValues['sNumeroActividad'] + ' se encuentra Registrada en:' + #13 + cadena, mtWarning, [mbOk], 0);
            exit;
          end;
        end
        else
        begin
                   {Ahora los paquetes..}
          cadena := AntesEliminarFrente(ActividadesxOrden.FieldValues['sNumeroActividad'], ActividadesxOrden.FieldValues['sWbs'] + '.%', tsNumeroOrden.Text, TipoAct);
          if cadena <> '' then
          begin
            MessageDlg('No se puede Eliminar!. El Paquete ' + ActividadesxOrden.FieldValues['sNumeroActividad'] + ' contine Partidas registradas en: ' + #13 + cadena, mtWarning, [mbOk], 0);
            exit;
          end;
        end;

              //Se eliminan las distribuciones de los frentes,,
        DistribucionesFrente(tsNumeroOrden.Text, ActividadesxOrden.FieldValues['sWbs'], ActividadesxOrden.FieldValues['sTipoActividad'], ActividadesxOrden.FieldValues['iNivel']);

        if TipoAct = 'Actividad' then
        begin
          SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
          ActividadesxOrden.Delete;
        end
        else
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('delete from actividadesxorden Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sWbs LIKE :wbs and iNivel >=:Nivel ');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'] + '%';
          connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Nivel').Value := ActividadesxOrden.FieldValues['iNivel'];
          connection.zCommand.ExecSQL;
          SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
          ActividadesxOrden.Delete;
        end;

              //Funcion elimina avances
        EliminaAvances(tsNumeroOrden.Text);

        ActividadesxOrden.Refresh;
        try
          TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
          TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
        end;
        Kardex('Conceptos Generales', 'Borra Registro Programa de Trabajo', Actividad, TipoAct, tsNumeroOrden.Text, '', '');
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al borrar registro', 0);
        end;
      end;
      Paquetes.Active := False;
      Paquetes.Open;
    end;
end;

procedure TfrmActividades.frmBarra1btnRefreshClick(Sender: TObject);
var
  sSelect: string;
begin
  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Open;

  Paquetes.Active := False;
  Paquetes.Open;


  connection.configuracion.Refresh;

 (* Connection.zCommand.Active := False ;
  Connection.zCommand.Filtered := False;
  Connection.zCommand.SQL.Clear ;
  Connection.zCommand.SQL.Add( 'update actividadesxorden SET sSimbolo = "" Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sTipoActividad = "Actividad"') ;
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
  connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
  connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
  connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
  connection.zCommand.ExecSQL ;

  Connection.zCommand.Active := False ;
  Connection.zCommand.Filtered := False;
  Connection.zCommand.SQL.Clear ;
  Connection.zCommand.SQL.Add( 'update actividadesxorden SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sTipoActividad = "Paquete"') ;
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
  connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
  connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
  connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio ;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
  connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
  connection.zCommand.ExecSQL ;

  sSelect := 'Select * from actividadesxorden Where sContrato = :contrato and sIdConvenio = :Convenio And sNumeroOrden = :orden order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)' ;
  ActividadesxOrden.Active := False ;
  ActividadesxOrden.SQL.Clear ;
  ActividadesxOrden.SQL.Add(sSelect) ;
  ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
  ActividadesxOrden.Params.ParamByName('Contrato').Value := global_contrato ;
  ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
  ActividadesxOrden.Params.ParamByName('Convenio').Value := global_convenio ;
  ActividadesxOrden.Params.ParamByName('orden').DataType := ftString ;
  ActividadesxOrden.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
  ActividadesxOrden.ParamByName('tam').AsInteger:=Global_TamOrden;
  ActividadesxOrden.ParamByName('separador').AsString:=Global_SepOrden;
  ActividadesxOrden.Open ; *)
  ActividadesxOrden.Filtered := false;
  ActividadesxOrden.Refresh;
  sFiltro := '';
  sPaquete := '';
end;

procedure TfrmActividades.frmBarra1btnExitClick(Sender: TObject);
begin
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  frmBarra1.btnExitClick(Sender);
  Close
end;

procedure TfrmActividades.FormClick(Sender: TObject);
begin
  if Assigned(frmGraficaGerencial) then
    if frmGraficaGerencial.Active = True then
      frmGraficaGerencial.Close;
end;

procedure TfrmActividades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  ActividadesxOrden.Cancel;
  action := cafree;
  BotonPermiso.free;
end;

procedure TfrmActividades.FormCreate(Sender: TObject);
begin
  Paq := TstringList.Create;

  ActividadesxOrden.Active := False;
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
  begin
    ActividadesxOrden.SQL.Text := 'Select *, substr(mDescripcion, 1,255) as descripcion from actividadesxorden Where sContrato = :contrato ' +
      'and sIdConvenio = :Convenio And sNumeroOrden = :orden ' +
      'Order By iitemorden';

  end;

end;

procedure TfrmActividades.tdDuracionExit(Sender: TObject);
begin
  if (ActividadesxOrden.State = dsInsert) or (ActividadesxOrden.State = dsEdit) then
    tdFechaFinal.Date := tdFechaInicio.Date + (ActividadesxOrden.FieldValues['dDuracion'] - 1);
  tdDuracion.Color := global_color_salidaERP;
end;

procedure TfrmActividades.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmActividades.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmActividades.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmActividades.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmActividades.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmActividades.ExportaaExcel1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// GENERA PROGRAMA DE TRABAJO //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel: integer;
      Progreso, TotalProgreso: real;
    begin
      Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
//  if rAnexoC.Checked then
//  begin
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 15;
      Excel.Columns['C:C'].ColumnWidth := 8;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:J'].ColumnWidth := 12;
      Excel.Columns['K:K'].ColumnWidth := 15;
      Excel.Columns['L:L'].ColumnWidth := 15;

      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.NumberFormat := '@';
      Excel.Selection.Value := 'Fecha_Inicio';
      FormatoEncabezado;
      Excel.Selection.NumberFormat := '@';
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Fecha_Final';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Tipo(PU,ADM)';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;
      Hoja.Range['M1:M1'].Select;
      Excel.Selection.Value := 'Extraordinaria(Si/No)';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
        connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden order by iitemorden')
      else
        connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)');

      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;

      if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
      begin
        connection.QryBusca.Params.ParamByName('tam').AsInteger := Global_TamOrden;
        connection.QryBusca.Params.ParamByName('separador').AsString := Global_SepOrden;

      end;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
                {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

                {Escritura de Datos en el Archvio de Excel..}
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroOrden'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['iNivel'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

          Hoja.Cells[Ren, 11].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sTipoAnexo'];

          Hoja.Cells[Ren, 12].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sAnexo'];

          Hoja.Cells[Ren, 13].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['lExtraordinario'];

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            nivel := connection.QryBusca.FieldValues['iNivel'];
            Hoja.Range['A' + IntToStr(Ren) + ':M' + IntToStr(Ren)].Select;
            if colores[nivel + 1, 2] = 1 then
              Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];
          end;

          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
      Hoja.Cells[2, 2].Select;


      Hoja.Range['A1:M1'].Select;

  // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Interior.ColorIndex := 24;
      Excel.Selection.Interior.Pattern := xlSolid;

    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'PROGRAMA DE TRABAJO ' + tsNumeroOrden.Text;
      except
        Hoja.Name := 'PROGRAMA DE TRABAJO ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
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

  if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
  end
  else
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := False;
  end;

  PanelProgress.Visible := True;
  Label15.Refresh;
  Label16.Refresh;
  Label17.Refresh;
  BarraEstado.Position := 0;

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
  begin
        // Grabar el archivo de excel con el nombre dado
    Excel.Visible := True;
    Excel.DisplayAlerts := True;
    Excel.ScreenUpdating := True;
    PanelProgress.Visible := False;
    messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
  end;

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);
end;

procedure TfrmActividades.ExportaProgramaconIsometricosExcel1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PROGRAMA DE TRABAJO ORDENADO POR ISOMETRICOS //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel: integer;
      i: Integer;
      sWbs: string;
      Progreso, TotalProgreso: real;
    begin
      Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
      Excel.Columns['A:A'].ColumnWidth := 10;
      Excel.Columns['B:D'].ColumnWidth := 30;
      Excel.Columns['E:E'].ColumnWidth := 35;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Isometrico 1';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Isometrico 2';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Isometrico 3';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Instalado';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
        connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sTipoActividad = "Actividad" order by iItemOrden')
      else
        connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sTipoActividad = "Actividad" order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)');

      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;


      if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
      begin
        connection.QryBusca.Params.ParamByName('tam').AsInteger := Global_TamOrden;
        connection.QryBusca.Params.ParamByName('separador').AsString := Global_SepOrden;
      end;


      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
                {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

                {Escritura de Datos en el Archvio de Excel..}
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlLeft;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Font.Name := 'Calibri';

          sWbs := connection.QryBusca.FieldValues['sWbsAnterior'];
          for i := 1 to 3 do
          begin
            connection.QryBusca2.Active := False;
            Connection.QryBusca2.Filtered := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('select mDescripcion, sWbsAnterior from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad = "Paquete"');
            connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
            connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
            connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.QryBusca2.Params.ParamByName('Wbs').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Wbs').Value := sWbs;
            connection.QryBusca2.Open;

            if connection.QryBusca2.RecordCount > 0 then
            begin
              sWbs := connection.QryBusca2.FieldValues['sWbsAnterior'];
              Hoja.Cells[Ren, 5 - i].Select;
              Excel.Selection.Value := connection.QryBusca2.FieldValues['mDescripcion'];
              Excel.Selection.HorizontalAlignment := xlLeft;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Font.Bold := True;
            end
            else
              sWbs := '';
          end;
                {Colores columnas}
          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

          Hoja.Cells[Ren, 11].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dInstalado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          if (connection.QryBusca.FieldValues['dInstalado'] + connection.QryBusca.FieldValues['dExcedente']) > connection.QryBusca.FieldValues['dCantidad'] then
            Excel.Selection.Font.Color := clRed;
          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
      Hoja.Cells[2, 2].Select;

      Hoja.Range['A1:K1'].Select;
  // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Interior.ColorIndex := 23;
      Excel.Selection.Interior.Pattern := xlSolid;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Color := clWhite;

      Hoja.Range['A2:D' + IntToStr(Ren - 1)].Select;
  // Formato general de encabezado de datos..
      Excel.Selection.Interior.ColorIndex := 24;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Range['A1:A1'].Select;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'PROG. DE TRABAJO X ISOMETRICOS ' + tsNumeroOrden.Text;
      except
        Hoja.Name := 'PROG. DE TRABAJO X ISOMETRICOS ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
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
    showmessage('No es posible generar el Archivo de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
  end
  else
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := False;
  end;

  PanelProgress.Visible := True;
  Label15.Refresh;
  Label16.Refresh;
  Label17.Refresh;
  BarraEstado.Position := 0;

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
  begin
       // Grabar el archivo de excel con el nombre dado
    Excel.Visible := True;
    Excel.DisplayAlerts := True;
    Excel.ScreenUpdating := True;
    PanelProgress.Visible := False;

    messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
  end;

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;

procedure TfrmActividades.ExportavolumenesaExcelAgrupado1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// EXPORTA VOLUMENES A EXCEL AGRUPADO //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dVolumen: double;
      Progreso, TotalProgreso: real;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 18;
      Excel.Columns['C:C'].ColumnWidth := 0.58;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:G'].ColumnWidth := 12;
      Excel.Columns['H:J'].ColumnWidth := 0.58;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sContrato, iNivel, sNumeroOrden, sNumeroActividad, sTipoActividad, sWbsContrato, ' +
        'sWbs, mDescripcion, sMedida, sum(dCantidad) as dCantidad, sum(dPonderado) as dPonderado, ' +
        'min(dFechaInicio) as dFechaInicio, max(dFechaFinal) as dFechaFinal ' +
        'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio ' +
        'and sNumeroOrden =:Orden and sTipoActividad = "Actividad" ' +
        'group by sWbsContrato order by sNumeroActividad ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        Connection.zCommand.Filtered := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select dFechaInicio, dFechaFinal ' +
          'from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio ' +
          'and sNumeroOrden =:Orden and sTipoActividad = "Paquete" and iNivel = 0 ');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
          MiFecha := connection.zCommand.FieldByName('dFechaInicio').AsDateTime;
          MiFechaI := connection.zCommand.FieldByName('dFechaInicio').AsDateTime;
          MiFechaF := connection.zCommand.FieldByName('dFechaFinal').AsDateTime;
        end;
        for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
        begin
          Hoja.Cells[Ren - 1, 10 + i].Select;
               {Formato de las fechas archivo Excel,, 24/07/2011..}
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := DateToStr(MiFecha);
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 49;
          MiFecha := IncDay(MiFecha);
        end;
        total := i;

        Hoja.Cells[Ren - 1, 10 + i].Select;
        Excel.Selection.Value := 'Total';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 3;

        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
                {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

                {Escritura de Datos en el Archvio de Excel..}
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroOrden'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['iNivel'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            nivel := connection.QryBusca.FieldValues['iNivel'];
            Hoja.Range['A' + IntToStr(Ren) + ':J' + IntToStr(Ren)].Select;
            if colores[nivel + 1, 2] = 1 then
              Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];
          end
          else
          begin
            MiFecha := MiFechaI;

                    {Consultamos si la partida esta reportada..}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('Select b.sWbs,b.sNumeroActividad, sum(a.dCantidad) as dCantidad, a.dIdFecha, b.dCantidad as dVolumen ' +
              'From actividadesxorden b ' +
              'left JOIN bitacoradeactividades a ' +
              'ON (a.sContrato=b.sContrato and a.sWbs = b.sWbs And a.sNumeroActividad=b.sNumeroActividad And a.dIdFecha <=:Final and b.sNumeroOrden=a.sNumeroOrden) ' +
              'left JOIN tiposdemovimiento t ' +
              'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") ' +
              'Where b.sContrato=:Contrato And b.sIdConvenio=:Convenio And b.sNumeroOrden =:Orden and b.sWbsContrato =:Wbs ' +
              'Group By a.dIdFecha Order By  a.dIdFecha');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
            Q_Partidas.Params.ParamByName('Convenio').Value := global_convenio;
            Q_Partidas.Params.ParamByName('Orden').DataType := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Q_Partidas.Params.ParamByName('Final').DataType := ftDate;
            Q_Partidas.Params.ParamByName('Final').Value := MiFechaF;
            Q_Partidas.Params.ParamByName('Wbs').DataType := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value := connection.QryBusca.FieldByName('sWbsContrato').AsString;
            Q_Partidas.Open;

            if Q_Partidas.RecordCount > 0 then
            begin
              dVolumen := 0;
              for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
              begin
                if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                begin
                  Hoja.Cells[Ren, 10 + i].Select;
                  Excel.Selection.Value := Q_Partidas.FieldByName('dCantidad').AsFloat;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment := xlCenter;
                  Excel.Selection.Font.Bold := False;
                  Excel.Selection.Interior.ColorIndex := 41;
                  dVolumen := dVolumen + Q_Partidas.FieldByName('dCantidad').AsFloat;
                  Q_Partidas.Next;
                end;
                MiFecha := IncDay(MiFecha);
              end;

              Hoja.Cells[Ren, 10 + i].Select;
              Excel.Selection.Value := dVolumen;
              Excel.Selection.HorizontalAlignment := xlRight;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Font.Bold := True;
              if dVolumen = connection.QryBusca.FieldByName('dCantidad').AsFloat then
                Excel.Selection.Font.Color := clBlue;
              if dVolumen > connection.QryBusca.FieldByName('dCantidad').AsFloat then
                Excel.Selection.Font.Color := clRed
            end;
          end;
          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
   {fORMATO DE LAS CELDAS..}
      Hoja.Range['K2:' + Columnas[total + 10] + IntToStr(Ren - 1)].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
      Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
      Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

      Hoja.Range['A1:N1'].Select;
   // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.ColorIndex := 49;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Cells[2, 2].Select;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'VOLUMENES REPORTADOS AGRUPADOS ' + tsNumeroOrden.Text;
      except
        Hoja.Name := 'VOLUMENES REPORTADOS AGRUPADOS ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
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
    showmessage('No es posible generar el Archivo de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
  end
  else
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := False;
  end;

  PanelProgress.Visible := True;
  Label15.Refresh;
  Label16.Refresh;
  Label17.Refresh;
  BarraEstado.Position := 0;

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
  begin
        // Grabar el archivo de excel con el nombre dado
    Excel.Visible := True;
    Excel.DisplayAlerts := True;
    Excel.ScreenUpdating := True;
    PanelProgress.Visible := False;
    messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
  end;

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);
end;

procedure TfrmActividades.ExportaVolumenesExcel1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// GENERACION DE PROGRAMA DE TRABAJO CON VOLUMENES //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dVolumen: double;
      Progreso, TotalProgreso: real;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 18;
      Excel.Columns['C:C'].ColumnWidth := 0.58;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:G'].ColumnWidth := 12;
      Excel.Columns['H:J'].ColumnWidth := 0.58;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;

      //Consultamos las fechas del convenio modificatorio para impresion de las cantidades reportadas superiores al programa de trabajo.
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select max(dIdFecha) as dFechaFinal from reportediario where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden ');
      connection.QryBusca2.ParamByName('contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('Convenio').AsString := global_convenio;
      connection.QryBusca2.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
      connection.QryBusca2.Open;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden order by iItemOrden');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        MiFecha := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        MiFechaI := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        MiFechaF := connection.QryBusca2.FieldByName('dFechaFinal').AsDateTime;
        for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
        begin
          Hoja.Cells[Ren - 1, 10 + i].Select;
               {Formato de las fechas archivo Excel,, 24/07/2011..}
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := DateToStr(MiFecha);
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 49;
          MiFecha := IncDay(MiFecha);
        end;
        total := i;

        Hoja.Cells[Ren - 1, 10 + i].Select;
        Excel.Selection.Value := 'Total';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 3;

        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
                {Movimiento de la Barra..}
          Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
          TotalProgreso := TotalProgreso + Progreso;
          BarraEstado.Position := Trunc(TotalProgreso);

                {Escritura de Datos en el Archvio de Excel..}
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroOrden'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['iNivel'];

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidad'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            nivel := connection.QryBusca.FieldValues['iNivel'];
            Hoja.Range['A' + IntToStr(Ren) + ':J' + IntToStr(Ren)].Select;
            if colores[nivel + 1, 2] = 1 then
              Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];
          end
          else
          begin
            MiFecha := MiFechaI;
                    {Consultamos si la partida esta reprotada..}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('Select b.sWbs,b.sNumeroActividad, sum(a.dCantidad) as dCantidad, a.dIdFecha, b.dCantidad as dVolumen ' +
              'From actividadesxorden b ' +
              'left JOIN bitacoradeactividades a ' +
              'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.dIdFecha <=:Final and b.sNumeroOrden=a.sNumeroOrden) ' +
              'left JOIN tiposdemovimiento t ' +
              'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") ' +
              'Where b.sContrato=:Contrato And b.sIdConvenio=:Convenio And b.sNumeroOrden =:Orden and a.sWbs =:Wbs ' +
              'Group By b.sWbs,a.dIdFecha Order By b.sNumeroActividad,b.iItemOrden,a.dIdFecha');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
            Q_Partidas.Params.ParamByName('Convenio').Value := global_convenio;
            Q_Partidas.Params.ParamByName('Orden').DataType := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Q_Partidas.Params.ParamByName('Final').DataType := ftDate;
            Q_Partidas.Params.ParamByName('Final').Value := MiFechaF;
            Q_Partidas.Params.ParamByName('Wbs').DataType := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Open;

            if Q_Partidas.RecordCount > 0 then
            begin
              dVolumen := 0;
              for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
              begin
                if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                begin
                  Hoja.Cells[Ren, 10 + i].Select;
                  Excel.Selection.Value := Q_Partidas.FieldByName('dCantidad').AsFloat;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment := xlCenter;
                  Excel.Selection.Font.Bold := False;
                  Excel.Selection.Interior.ColorIndex := 41;
                  dVolumen := dVolumen + Q_Partidas.FieldByName('dCantidad').AsFloat;
                  Q_Partidas.Next;
                end;
                MiFecha := IncDay(MiFecha);
              end;

              Hoja.Cells[Ren, 10 + i].Select;
              Excel.Selection.Value := dVolumen;
              Excel.Selection.HorizontalAlignment := xlRight;
              Excel.Selection.VerticalAlignment := xlCenter;
              Excel.Selection.Font.Bold := True;
              if dVolumen = Q_Partidas.FieldByName('dVolumen').AsFloat then
                Excel.Selection.Font.Color := clBlue;
              if dVolumen > Q_Partidas.FieldByName('dVolumen').AsFloat then
                Excel.Selection.Font.Color := clRed
            end;
          end;
          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
   {fORMATO DE LAS CELDAS..}
      Hoja.Range['K2:' + Columnas[total + 10] + IntToStr(Ren - 1)].Select;
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
      Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideVertical].Weight := xlThin;
      Excel.Selection.Borders[xlInsideHorizontal].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlInsideHorizontal].Weight := xlThin;

      Hoja.Range['A1:N1'].Select;
   // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Font.Color := clWhite;
      Excel.Selection.Interior.ColorIndex := 49;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Cells[2, 2].Select;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'VOLUMENES REPORTADOS ' + tsNumeroOrden.Text;
      except
        Hoja.Name := 'VOLUMENES REPORTADOS ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
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
    showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
  end
  else
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := False;
  end;

  PanelProgress.Visible := True;
  Label15.Refresh;
  Label16.Refresh;
  Label17.Refresh;
  BarraEstado.Position := 0;

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
  begin
        // Grabar el archivo de excel con el nombre dado
    Excel.Visible := True;
    Excel.DisplayAlerts := True;
    Excel.ScreenUpdating := True;
    PanelProgress.Visible := False;
    messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
  end;

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);
end;

procedure TfrmActividades.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmActividades.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmActividades.SeleccionarTodo1Click(Sender: TObject);
begin
  //ActividadesxOrden.DataSo
  //grid_actividades.SelectAll;
end;

procedure TfrmActividades.sTipoADMClick(Sender: TObject);
begin
  if sTipoPU.Checked then
    sTipoPU.Checked := False;
end;

procedure TfrmActividades.sTipoPUClick(Sender: TObject);
begin
  if sTipoADM.Checked then
    sTipoADM.Checked := False;
end;

procedure TfrmActividades.tsNumeroOrdenExit(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  sNumeroOrden := tsNumeroOrden.Text;

  ActividadesxOrden.Active := False;
  ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString;
  ActividadesxOrden.Params.ParamByName('Contrato').Value := Global_Contrato;
  ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString;
  ActividadesxOrden.Params.ParamByName('Convenio').Value := Global_Convenio;
  ActividadesxOrden.Params.ParamByName('Orden').DataType := ftString;
  ActividadesxOrden.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
  begin

    ActividadesxOrden.ParamByName('tam').AsInteger := Global_TamOrden;
    ActividadesxOrden.ParamByName('separador').AsString := Global_SepOrden;

  end;
  ActividadesxOrden.Open;

  QryResumen.Active := False;
  QryResumen.Params.ParamByName('Contrato').DataType := ftString;
  QryResumen.Params.ParamByName('Contrato').Value := Global_Contrato;
  QryResumen.Params.ParamByName('Convenio').DataType := ftString;
  QryResumen.Params.ParamByName('Convenio').Value := Global_Convenio;
  QryResumen.Params.ParamByName('Orden').DataType := ftString;
  QryResumen.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
  QryResumen.Open;

  Paquetes.Active := False;
  Paquetes.Params.ParamByName('contrato').DataType := ftString;
  Paquetes.Params.ParamByName('contrato').Value := global_contrato;
  Paquetes.Params.ParamByName('convenio').DataType := ftString;
  Paquetes.Params.ParamByName('convenio').Value := global_convenio;
  Paquetes.Params.ParamByName('orden').DataType := ftString;
  Paquetes.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
  Paquetes.Open;

  tsNumeroOrden.Color := global_color_salidaERP;
end;


procedure TfrmActividades.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(tdCantidad, key) then
    key := #0;
  if Key = #13 then
    tdventamn.SetFocus
end;

procedure TfrmActividades.tdCantidadAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdCantidad.SetFocus
end;

procedure TfrmActividades.tdCantidadChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmActividades.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaERP;
  if (ActividadesxOrden.State = dsInsert) or (ActividadesxOrden.State = dsEdit) then
    if not ActividadesxOrden.FieldByName('sNumeroActividad').IsNull then
    begin {
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.Filtered := False;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sWbs, mDescripcion, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL, dCantidadAnexo, ' +
                                    'sMedida, dFechaInicio, dFechaFinal from actividadesxanexo Where sContrato = :contrato And ' +
                                    'sNumeroActividad = :actividad And sWbs = :Wbs And sTipoActividad = "Actividad"') ;
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
        connection.qryBusca.Params.ParamByName('actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
        if ActividadesxOrden.FieldValues['sWbs']<>NULL then
          connection.qryBusca.Params.ParamByName('Wbs').Value := Trim(ActividadesxOrden.FieldValues['sWbs'])
        else
          connection.qryBusca.Params.ParamByName('Wbs').Value :='';

        connection.qryBusca.Open ;

        If connection.qryBusca.RecordCount > 0 then
        begin
            If (ActividadesxOrden.FieldValues['dCantidad'] = Null) Or (ActividadesxOrden.FieldValues['dCantidad'] = 0) Then
                ActividadesxOrden.FieldValues['dCantidad'] := connection.qryBusca.FieldValues['dCantidadAnexo'] ;
            ActividadesxOrden.FieldValues['sWbsContrato'] := connection.qryBusca.FieldValues['sWbs'] ;
            ActividadesxOrden.FieldValues['mDescripcion'] := connection.qryBusca.FieldValues['mDescripcion'] ;
            ActividadesxOrden.FieldValues['dFechaInicio'] := connection.qryBusca.FieldValues['dFechaInicio'] ;
            ActividadesxOrden.FieldValues['dFechaFinal'] := connection.qryBusca.FieldValues['dFechaFinal'] ;
            ActividadesxOrden.FieldValues['dDuracion'] := ( ActividadesxOrden.FieldValues['dFechaFinal'] - ActividadesxOrden.FieldValues['dFechaInicio'] ) + 1 ;
            ActividadesxOrden.FieldValues['sMedida'] := connection.qryBusca.FieldValues['sMedida'] ;
            If NOT connection.qryBusca.FieldByName('dVentaMN').IsNull Then
                ActividadesxOrden.FieldValues['dVentaMN'] := connection.qryBusca.FieldValues['dVentaMN'] ;
            If NOT connection.qryBusca.FieldByName('dVentaDLL').IsNull Then
                ActividadesxOrden.FieldValues['dVentaDLL'] := connection.qryBusca.FieldValues['dVentaDLL'] ;
            If NOT connection.qryBusca.FieldByName('dCostoMN').IsNull Then
                ActividadesxOrden.FieldValues['dCostoMN'] := connection.qryBusca.FieldValues['dCostoMN'] ;
            If NOT connection.qryBusca.FieldByName('dVentaDLL').IsNull Then
                ActividadesxOrden.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dCostoDLL'] ;
        end ;  }

      if tsPaquete.KeyValue = Null then
        ActividadesxOrden.FieldValues['sWbs'] := Trim(ActividadesxOrden.FieldValues['sNumeroActividad'])
      else
        ActividadesxOrden.FieldValues['sWbs'] := ActividadesxOrden.FieldValues['sWbsAnterior'] + '.' + Trim(ActividadesxOrden.FieldValues['sNumeroActividad']);
    end;
end;

procedure TfrmActividades.tdFechaInicioExit(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = True then
    tdFechaFinal.Date := tdFechaInicio.Date + (ActividadesxOrden.FieldValues['dDuracion'] - 1);
  tdFechaInicio.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if tsNumeroActividad.Enabled = true then
      tsNumeroActividad.SetFocus
    else
      tdCantidad.SetFocus;
end;

procedure TfrmActividades.frmBarra1btnPrinterClick(Sender: TObject);
begin
  Global_OptGrafica := 'Frente';
  Application.CreateForm(TfrmGraficaGerencialDX, frmGraficaGerencialDx);
  frmGraficaGerencialDX.show;
end;

procedure TfrmActividades.tsNumeroOrdenEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tsPaqueteEnter(Sender: TObject);
begin
  tsPaquete.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tsPaqueteExit(Sender: TObject);
begin
  tsPaquete.Color := global_color_salidaERP;
  if frmBarra1.btnCancel.Enabled = True then
  begin
    ActividadesxOrden.FieldValues['dFechaInicio'] := Paquetes.FieldValues['dFechaInicio'];
    ActividadesxOrden.FieldValues['dFechaFinal'] := Paquetes.FieldValues['dFechaFinal'];
  end
end;

procedure TfrmActividades.tmDescripcionEnter(Sender: TObject);
begin
  tmDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tmDescripcionExit(Sender: TObject);
begin
  tmDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tsActAnteriorEnter(Sender: TObject);
begin
  tsactanterior.Color := global_color_entradaERP;;
end;

procedure TfrmActividades.tsActAnteriorExit(Sender: TObject);
begin
  tsactanterior.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tsActAnteriorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tmdescripcion.SetFocus
end;

procedure TfrmActividades.tsNumeroActividadEnter(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdFechaInicioEnter(Sender: TObject);
begin
  tdFechaInicio.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdDuracionChange(Sender: TObject);
begin
  TDBEditChangef(tdDuracion, 'Duración');
end;

procedure TfrmActividades.tdDuracionEnter(Sender: TObject);
begin
  tdDuracion.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdFechaFinalEnter(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdFechaFinalExit(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = True then
    ActividadesxOrden.FieldValues['dDuracion'] := DaysBetween(tdFechaFinal.Date, tdFechaInicio.Date) + 1;
  tdFechaFinal.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tdCantidadEnter(Sender: TObject);
begin
  tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tiColorEnter(Sender: TObject);
begin
  tiColor.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tiColorExit(Sender: TObject);
begin
  tiColor.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tiColorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsnumeroactividad.SetFocus;
end;

procedure TfrmActividades.tlCalculoEnter(Sender: TObject);
begin
  tlCalculo.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tlCalculoExit(Sender: TObject);
begin
  tlCalculo.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tlCalculoKeyPress(Sender: TObject; var Key: Char);
begin
  if ticolor.visible = true then
  begin
    if Key = #13 then
      ticolor.SetFocus;
  end
  else
    tsnumeroactividad.SetFocus;

end;

procedure TfrmActividades.MenuItem9Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;

procedure TfrmActividades.PartidasBeforeDelete(DataSet: TDataSet);
begin
  Abort
end;

procedure TfrmActividades.ActividadesxOrdenAfterScroll(DataSet: TDataSet);
begin
  if ActividadesxOrden.RecordCount > 0 then
  begin
    if (ActividadesxOrden.State <> dsInsert) and (ActividadesxOrden.State <> dsEdit) then
    begin
      if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
        tlGerencial.Enabled := True
      else
        tlGerencial.Enabled := False;

      case tiColor.ItemIndex of
        0: tiColores.ItemIndex := 0;
        1: tiColores.ItemIndex := 1;
        2: tiColores.ItemIndex := 2;
        3: tiColores.ItemIndex := 3;
        4: tiColores.ItemIndex := 4;
        5: tiColores.ItemIndex := 5;
        6: tiColores.ItemIndex := 6;
        7: tiColores.ItemIndex := 7;
        8: tiColores.ItemIndex := 8;
        9: tiColores.ItemIndex := 9;
        10: tiColores.ItemIndex := 10;
        11: tiColores.ItemIndex := 11;
        12: tiColores.ItemIndex := 12;
        13: tiColores.ItemIndex := 13;
        14: tiColores.ItemIndex := 14;
        15: tiColores.ItemIndex := 15;
      end
    end
  end
end;

procedure TfrmActividades.zProcCancelaInsert(DataSet: TDataSet);
begin
  abort
end;

procedure TfrmActividades.tdPonderadoChange(Sender: TObject);
begin
  TDBEditChangef(tdPonderado, 'Ponderado');
end;

procedure TfrmActividades.tdPonderadoEnter(Sender: TObject);
begin
  tdPonderado.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdPonderadoExit(Sender: TObject);
begin
  tdPonderado.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tdPonderadoKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTDBEdit(tdPonderado, key) then
    key := #0;
  if Key = #13 then
    tlcalculo.SetFocus;
end;

procedure TfrmActividades.DeSeleccionarTodo1Click(Sender: TObject);
begin
  //TcxGridDBTableView(grid_actividades.ActiveView).UnselectAll;
end;

procedure TfrmActividades.DetalledelPaquete1Click(Sender: TObject);
var
  myForm: TForm;
  zDetallePaquete: TZQuery;
  zDSDetallePaquete: tDataSource;
  GridDetallePaquete: TRxDBGrid;
begin
  if tsNumeroOrden.Text <> '' then
    if (ActividadesxOrden.State <> dsInsert) or (ActividadesxOrden.State <> dsEdit) then
      if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
      begin
        myForm := TForm.Create(Self);
        try
          myForm.Position := poDesktopCenter;
          myForm.Caption := 'Detalle del Paquete "' + MidStr(ActividadesxOrden.FieldValues['mDescripcion'], 1, 250) + '"';
          MyForm.BorderIcons := [];
          MyForm.Width := 1020;
          MyForm.Height := 480;
          MyForm.BorderStyle := bsSingle;
          MyForm.Color := $00FEC6BA;

          zDetallePaquete := TZQuery.Create(nil);
          zDetallePaquete.Connection := connection.zConnection;
          zDetallePaquete.Active := False;
          zDetallePaquete.Sql.Clear;
          zDetallePaquete.Sql.Add('Select *, substr(mDescripcion, 1, 255) as sDescripcion From actividadesxorden ' +
            'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWBSAnterior = :Paquete Order By iItemOrden');
          zDetallePaquete.Params.ParamByName('Contrato').DataType := ftString;
          zDetallePaquete.Params.ParamByName('Contrato').Value := global_contrato;
          zDetallePaquete.Params.ParamByName('Convenio').DataType := ftString;
          zDetallePaquete.Params.ParamByName('Convenio').Value := global_convenio;
          zDetallePaquete.Params.ParamByName('Orden').DataType := ftString;
          zDetallePaquete.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          zDetallePaquete.Params.ParamByName('Paquete').DataType := ftString;
          zDetallePaquete.Params.ParamByName('Paquete').Value := ActividadesxOrden.FieldValues['sWbs'];
          zDetallePaquete.Open;
          zDetallePaquete.BeforeInsert := zProcCancelaInsert;
          zDetallePaquete.BeforeDelete := zProcCancelaInsert;
          zDSDetallePaquete := tDataSource.Create(nil);
          zDSDetallePaquete.DataSet := zDetallePaquete;
          zDSDetallePaquete.AutoEdit := True;

          GridDetallePaquete := TRxDBGrid.Create(MyForm);
          with GridDetallePaquete do
          begin
            Parent := myForm;
            Visible := True;
            Align := alCustom;
            Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgCancelOnExit];
            TitleButtons := True;
            DataSource := zDSDetallePaquete;
            Width := 1020;
            Height := 430;
            Anchors := [akLeft, akTop, akRight, akBottom];
            ParentColor := True;
            Ctl3D := False;

            Columns.Clear;
            Columns.Add;
            Columns[0].FieldName := 'iNivel';
            Columns[0].Width := 40;
            Columns[0].Title.Caption := 'Nivel';
            Columns[0].ReadOnly := True;
            Columns[0].Font.Style := [fsBold];
            Columns[0].Font.Color := clBlue;
            Columns.Add;
            Columns[1].FieldName := 'sWbs';
            Columns[1].Width := 120;
            Columns[1].Title.Caption := 'Wbs';
            Columns[1].ReadOnly := True;
            Columns[1].Font.Style := [fsBold];
            Columns[1].Font.Color := clBlue;
            Columns.Add;
            Columns[2].FieldName := 'sNumeroActividad';
            Columns[2].Width := 80;
            Columns[2].Title.Caption := 'Actividad';
            Columns[2].ReadOnly := True;
            Columns[2].Font.Style := [fsBold];
            Columns[2].Font.Color := clBlue;
            Columns.Add;
            Columns[3].FieldName := 'sDescripcion';
            Columns[3].Width := 300;
            Columns[3].Title.Caption := 'Descripcion';
            Columns[3].ReadOnly := True;
            Columns[3].Font.Style := [fsBold];
            Columns[3].Font.Color := clBlue;
            Columns.Add;
            Columns[4].FieldName := 'dCantidad';
            Columns[4].Width := 70;
            Columns[4].Title.Caption := 'Cant. a Inst.';
            Columns[4].Title.Alignment := taRightJustify;
            Columns[4].Font.Style := [];
            Columns.Add;
            Columns[5].FieldName := 'sMedida';
            Columns[5].Width := 40;
            Columns[5].Title.Caption := 'U. Medida';
            Columns[5].Title.Alignment := taRightJustify;
            Columns[5].Font.Style := [];
            Columns.Add;
            Columns[6].FieldName := 'dVentaMN';
            Columns[6].Width := 70;
            Columns[6].Title.Caption := '$ Precio MN';
            Columns[6].Title.Alignment := taRightJustify;
            Columns[6].Font.Style := [];
            Columns.Add;
            Columns[7].FieldName := 'dPonderado';
            Columns[7].Width := 70;
            Columns[7].Title.Caption := '% Ponderado';
            Columns[7].Title.Alignment := taRightJustify;
            Columns[7].Font.Style := [];
            Columns.Add;
            Columns[8].FieldName := 'dFechaInicio';
            Columns[8].Width := 60;
            Columns[8].Title.Caption := 'F. Inicio';
            Columns[8].Font.Style := [];
            Columns.Add;
            Columns[9].FieldName := 'dFechaFinal';
            Columns[9].Width := 60;
            Columns[9].Title.Caption := 'F. Final';
            Columns[9].Font.Style := [];
            Columns.Add;
            Columns[10].FieldName := 'iColor';
            Columns[10].Width := 50;
            Columns[10].Title.Caption := 'Color';
            Columns[10].Title.Alignment := taRightJustify;
            Columns[10].Font.Style := [];
          end;

          with TButton.Create(Self) do
          begin
            Left := 450;
            Top := 410;
            Width := 120;
            Height := 35;
            ModalResult := mrOk;
            Default := True;
            Parent := MyForm;
            Caption := 'Cerra Consulta'
          end;

          myForm.ShowModal;
        finally
          GridDetallePaquete.Destroy;
          ActividadesxOrden.Refresh;
          zDetallePaquete.Destroy;
          zDSDetallePaquete.Destroy;
          myForm.Free;
        end;
      end;
end;

procedure TfrmActividades.grid_actividadeGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if ActividadesxOrden.RecordCount > 0 then
      begin
        AFont.Color := esColor(ActividadesxOrden.FieldValues['iColor']);

        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
        begin
          Afont.Style := [fsBold];
          Afont.Size := Afont.Size + 1;
          Background := EsBkColor[(Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').AsInteger + 1]
        end
        else
          if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
          begin
            Afont.Style := [fsBold, fsItalic];
            AFont.Color := clRed;
          end
      end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al cambiar de registro de actividades', 0);
    end;
  end;
end;

procedure TfrmActividades.grid_actividadeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividades.grid_actividadeMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividades.grid_actividadeTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmActividades.PartidasBeforeInsert(DataSet: TDataSet);
begin
  Abort
end;

procedure TfrmActividades.tiColoresEnter(Sender: TObject);
begin
  tiColores.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tiColoresExit(Sender: TObject);
begin
  tiColores.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tiColoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsunidad.SetFocus
end;

procedure TfrmActividades.tiColoresChange(Sender: TObject);
begin
  case tiColores.ItemIndex of
    0: tiColor.ItemIndex := 0;
    1: tiColor.ItemIndex := 1;
    2: tiColor.ItemIndex := 2;
    3: tiColor.ItemIndex := 3;
    4: tiColor.ItemIndex := 4;
    5: tiColor.ItemIndex := 5;
    6: tiColor.ItemIndex := 6;
    7: tiColor.ItemIndex := 7;
    8: tiColor.ItemIndex := 8;
    9: tiColor.ItemIndex := 9;
    10: tiColor.ItemIndex := 10;
    11: tiColor.ItemIndex := 11;
    12: tiColor.ItemIndex := 12;
    13: tiColor.ItemIndex := 13;
    14: tiColor.ItemIndex := 14;
    15: tiColor.ItemIndex := 15;
  end
end;

procedure TfrmActividades.PaquetesCalcFields(DataSet: TDataSet);
begin
  PaquetessDescripcion.Text := MidStr(Paquetes.FieldValues['mDescripcion'], 1, 70)
end;

procedure TfrmActividades.BuscarPartida1Click(Sender: TObject);
var
  sNumeroPartida: string;
begin
  if ActividadesxOrden.RecordCount > 0 then
  begin
    sNumeroPartida := UPPERCASE(InputBox('Inteligent', 'Inserte la partida a buscar?', ActividadesxOrden.FieldValues['sNumeroActividad']));
    ActividadesxOrden.Locate('sWBS', sNumeroPartida, [loCaseInsensitive])
  end
end;

procedure TfrmActividades.ActividadesxOrdenAfterInsert(
  DataSet: TDataSet);
begin
  ActividadesxOrden.FieldValues['iNivel'] := 0;
  ActividadesxOrden.FieldValues['dCantidad'] := 1;
  ActividadesxOrden.FieldValues['dPonderado'] := 0;
  ActividadesxOrden.FieldValues['dDuracion'] := 0;
  ActividadesxOrden.FieldValues['sIdPlataforma'] := '';
  ActividadesxOrden.FieldValues['sIdPernocta'] := '';
end;

procedure TfrmActividades.tdVentaMNChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdVentaMN, '$Moneda Nacional');
end;

procedure TfrmActividades.tdVentaMNEnter(Sender: TObject);
begin
  tdVentaMN.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdVentaMNExit(Sender: TObject);
begin
  tdVentaMN.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tdVentaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(tdVentaMN, key) then
    key := #0;
  if Key = #13 then
    tdCostoMN.SetFocus
end;

procedure TfrmActividades.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tmComentarios.SetFocus
end;

procedure TfrmActividades.tmComentariosEnter(Sender: TObject);
begin
  tmComentarios.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tmComentariosExit(Sender: TObject);
begin
  tmComentarios.Color := global_color_salidaERP;
end;

procedure TfrmActividades.ActividadesxOrdenCalcFields(
  DataSet: TDataSet);
begin
 //   If not ActividadesxOrden.State in [dsinsert,dsedit] then
//    Begin
  ActividadesxOrdendMontoMN.Value := ActividadesxOrdendCantidad.Value * ActividadesxOrdendVentaMN.Value;
  ActividadesxOrdendMontoDLL.Value := ActividadesxOrdendCantidad.Value * ActividadesxOrdendVentaDLL.Value;

  ActividadesxOrdendMontoCostoMN.Value := ActividadesxOrdendCantidad.Value * ActividadesxOrdendCostoMN.Value;
  ActividadesxOrdendMontoCostoDLL.Value := ActividadesxOrdendCantidad.Value * ActividadesxOrdendCostoDLL.Value;

  if ActividadesxOrden.FieldValues['sWbs'] <> Null then
    ActividadesxOrdensWbsSpace.Text := espaces(ActividadesxOrden.FieldValues['iNivel']) + ActividadesxOrden.FieldValues['sNumeroActividad']
 //   End
end;

procedure TfrmActividades.ActividadesxOrdendDuracionSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmActividades.ActividadesxOrdendPonderadoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value := abs(StrToFloatDef(text, 0));
end;

procedure TfrmActividades.ActividadesxOrdenNewSimbolGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text := '';
  if (ActividadesxOrdenstipoactividad.asstring = 'Paquete') then
    if (Paq.IndexOf(ActividadesxOrdenswbs.asstring) <> -1) then
      text := '+'
    else
      text := '-';
end;

procedure TfrmActividades.ActividadesxOrdensWbsAnteriorChange(
  Sender: TField);
begin
  if (ActividadesxOrden.State = dsInsert) or (ActividadesxOrden.State = dsEdit) then
  begin
    if (ActividadesxOrden.FieldByName('sWBSAnterior').AsString <> '') and
      (ActividadesxOrden.FieldByName('sWBSAnterior').AsString <> '0') then
    begin
      if Paquetes.RecordCount > 0 then
      begin
        ActividadesxOrden.FieldValues['dFechaInicio'] := Paquetes.FieldValues['dFechaInicio'];
        ActividadesxOrden.FieldValues['dDuracion'] := Paquetes.FieldValues['dDuracion'];
        ActividadesxOrden.FieldValues['dFechaFinal'] := Paquetes.FieldValues['dFechaFinal'];
        ActividadesxOrden.FieldValues['iNivel'] := Paquetes.FieldValues['iNivel'] + 1;
        if ActividadesxOrden.FieldValues['iNivel'] > 0 then
          if not ActividadesxOrden.FieldByName('sNumeroActividad').IsNull then
            ActividadesxOrden.FieldValues['sWbs'] := ActividadesxOrden.FieldValues['sWBSAnterior'] + '.' + ActividadesxOrden.FieldValues['sAnexo'] + '.' + Trim(ActividadesxOrden.FieldValues['sNumeroActividad'])
          else
            ActividadesxOrden.FieldValues['sWbs'] := ActividadesxOrden.FieldValues['sWBSAnterior'] + '.' + ActividadesxOrden.FieldValues['sAnexo'] + '.Sin Partida'
        else
          ActividadesxOrden.FieldValues['sWbs'] := Trim(ActividadesxOrden.FieldValues['sNumeroActividad']);
      end
    end
    else
    begin
      ActividadesxOrden.FieldValues['iNivel'] := 0;
      ActividadesxOrden.FieldValues['iItemOrden'] := 0;
      if not ActividadesxOrden.FieldByName('sNumeroActividad').IsNull then
        ActividadesxOrden.FieldValues['sWbs'] := Trim(ActividadesxOrden.FieldValues['sNumeroActividad'])
      else
        ActividadesxOrden.FieldValues['sWbs'] := 'Sin Partida'
    end
  end
end;

procedure TfrmActividades.tsUnidadEnter(Sender: TObject);
begin
  tsUnidad.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tsUnidadExit(Sender: TObject);
begin
  tsUnidad.Color := global_color_salidaERP;;
  sTipoPU.Checked := False;
  sTipoADM.Checked := False;

  if tsUnidad.Text = '' then
    GrupoTipo.Enabled := False
  else
    GrupoTipo.Enabled := True;
end;

procedure TfrmActividades.tsUnidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdPonderado.SetFocus;
end;

procedure TfrmActividades.acumularDiferencia(suma, sMensaje: string);
begin
  RxMDValida.Append;
  RxMDValida.FieldByName('sNumeroActividad').Value := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
  RxMDValida.FieldByName('sWbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
  RxMDValida.FieldByName('dCantidad').Value := connection.QryBusca.FieldByName('dCantidad').AsString;
  RxMDValida.FieldByName('suma').Value := suma;
  RxMDValida.FieldByName('aMN').Value := connection.QryBusca.FieldByName('aMN').AsString;
  RxMDValida.FieldByName('aDLL').Value := connection.QryBusca.FieldByName('aDLL').AsString;
  RxMDValida.FieldByName('dCantidadAnexo').Value := connection.QryBusca.FieldByName('dCantidadAnexo').AsString;
  RxMDValida.FieldByName('bMN').Value := connection.QryBusca.FieldByName('bMN').AsString;
  RxMDValida.FieldByName('bDLL').Value := connection.QryBusca.FieldByName('bDLL').AsString;
  RxMDValida.FieldByName('descripcion').Value := connection.QryBusca.FieldByName('descripcion').AsString;
  RxMDValida.FieldByName('mensaje').Value := sMensaje;
  RxMDValida.FieldByName('sNumeroOrden').Value := connection.QryBusca.FieldByName('sNumeroOrden').AsString;
  RxMDValida.FieldByName('sWbs2').Value := connection.QryBusca.FieldByName('wbs2').AsString;
  RxMDValida.Post;
end;

function TfrmActividades.cantidadesDiferentes(sActividad: string): string;
var
  sSQL: string;
begin
  result := '';

  sSQL := 'SELECT ' +
    'sum(a.dCantidad) as suma ' +
    'FROM actividadesxorden a ' +
    'INNER JOIN  actividadesxanexo b ' +
    'ON a.sContrato = b.sContrato ' +
    'AND a.sIdConvenio = b.sIdConvenio ' +
    'AND a.sNumeroActividad = b.sNumeroActividad ' +
    'AND a.sTipoActividad = "Actividad" ' +
    'WHERE b.sContrato = :contrato ' +
    'AND b.sIdConvenio = :convenio ' +
    'AND b.sNumeroActividad = :actividad ' +
    'AND b.sTipoActividad = "Actividad"';

  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add(sSQL);
  connection.QryBusca.ParamByName('actividad').Value := sActividad;
  connection.QryBusca.ParamByName('contrato').Value := global_contrato;
  connection.QryBusca.ParamByName('convenio').Value := global_convenio;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    result := connection.QryBusca.FieldByName('suma').AsString
end;

procedure TfrmActividades.ventasDiferentes(sActividad, suma: string);
var
  sSQL: string;
  lError1, lError2: boolean;
begin
  sSQL := 'SELECT ' +
    'b.sNumeroActividad, b.sWbs, a.dCantidad, substr(b.mDescripcion,1,255) as descripcion, ' +
    'a.dVentaMN as aMN, a.dVentaDLL as aDLL, a.sTipoActividad, a.sNumeroOrden, a.sWbs as wbs2, ' +
    'b.dCantidadAnexo,  b.dVentaMN as bMN, b.dVentaDLL as bDLL  ' +
    'FROM actividadesxorden a ' +
    'INNER JOIN  actividadesxanexo b ' +
    'ON a.sContrato = b.sContrato ' +
    'AND a.sIdConvenio = b.sIdConvenio ' +
    'AND a.sNumeroActividad = b.sNumeroActividad ' +
    'AND a.sTipoActividad = "Actividad" ' +
    'WHERE b.sContrato = :contrato ' +
    'AND b.sIdConvenio = :convenio ' +
    'AND b.sNumeroActividad = :actividad ' +
    'AND b.sTipoActividad = "Actividad" ' +
    'ORDER BY b.sNumeroActividad';

  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add(sSQL);
  connection.QryBusca.ParamByName('actividad').Value := sActividad;
  connection.QryBusca.ParamByName('contrato').Value := global_contrato;
  connection.QryBusca.ParamByName('convenio').Value := global_convenio;
  connection.QryBusca.Open;

  lError1 := false;
  lError2 := false;
  while not connection.QryBusca.Eof do begin
    if (connection.QryBusca.FieldByName('aMN').Value <>
      connection.QryBusca.FieldByName('bMN').Value)
      or (connection.QryBusca.FieldByName('aDLL').Value <>
      connection.QryBusca.FieldByName('bDLL').Value) then begin
      acumularDiferencia(suma, 'Existe diferencia entre los valores de ventas');
      lError1 := true;
    end
    else begin
      if (not lError1) and (not lError2) then begin
        if (connection.QryBusca.FieldByName('dCantidadAnexo').Value <> suma) then
          lError2 := true;
      end;
    end;
    connection.QryBusca.Next;
  end;
  if (not lError1) and (lError2) then begin
    connection.QryBusca.First;
    acumularDiferencia(suma, 'Existe diferencia entre la suma total de las cantidades y la cantidad del anexo');
  end;
end;

procedure TfrmActividades.CalcDiferenciasOT(lista: TStringList);
var
  ii: integer;
begin
  RxMDValida.Active := True;
  if RxMDValida.RecordCount > 0 then
    RxMDValida.EmptyTable;
  for ii := 0 to Lista.Count - 1 do begin
    ventasDiferentes(Lista.Strings[ii], cantidadesDiferentes(Lista.Strings[ii]));
  end;
end;

procedure TfrmActividades.VisualizarDiferencias1Click(Sender: TObject);
var
  ListaActividades: TStringList;
  sActividad: string;
begin
  if not FileExists(global_files + global_miReporte + '_validaActOrden.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_validaActOrden.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  ListaActividades := TStringList.Create;
  ActividadesxOrden.DisableControls;
  ActividadesxOrden.First;
  while not ActividadesxOrden.Eof do begin
    sActividad := ActividadesxOrden.FieldByName('sNumeroActividad').AsString;
    if ListaActividades.IndexOf(Trim(sActividad)) < 0 then
      ListaActividades.Add(Trim(sActividad));
    ActividadesxOrden.Next;
  end;
  ActividadesxOrden.EnableControls;
  if Assigned(ListaActividades) then begin
    CalcDiferenciasOT(ListaActividades);
    if RxMDValida.RecordCount > 0 then begin
      frxReporte.LoadFromFile(global_files + global_Mireporte+'_validaActOrden.fr3');
      frxReporte.PreviewOptions.MDIChild := True;
      frxReporte.PreviewOptions.Modal := False;
      frxReporte.PreviewOptions.Maximized := lCheckMaximized;
      frxReporte.PreviewOptions.ShowCaptions := False;
      frxReporte.Previewoptions.ZoomMode := zmPageWidth;
      frxReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    end
    else begin
      MessageDlg('No se encontraron diferencias.', mtInformation, [mbOk], 0);
    end;
  end
  else begin
    MessageDlg('No se encontraron diferencias.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmActividades.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;

procedure TfrmActividades.ImprimirPrograma1Click(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_programadeconstruccion.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_programadeconstruccion.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;

   if not FileExists(global_files + global_miReporte + '_programadeconstruccionperf.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_programadeconstruccionperf.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;

  if Connection.configuracion.FieldValues['sCampPerf'] = 'No' then
    frxReporte.LoadFromFile(global_files + global_miReporte + '_programadeconstruccion.fr3')
  else
  begin
    qryCentrocostos.Active := False;
    qryCentrocostos.Params.ParamByName('Contrato').DataType := ftString;
    qryCentrocostos.Params.ParamByName('Contrato').Value := Global_Contrato;
    qryCentrocostos.Params.ParamByName('Instalacion').DataType := ftString;
    qryCentrocostos.Params.ParamByName('Instalacion').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    frxReporte.LoadFromFile(global_files + global_miReporte + '_programadeconstruccionPerf.fr3');
  end;
  frxReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
end;

procedure TfrmActividades.ResumenPresupClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_resumendeconstruccion.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_resumendeconstruccion.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;

  QryResumen.Active := False;
  QryResumen.Open;
  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.Open;
  frxReporte.LoadFromFile(global_files + global_miReporte + '_resumendeconstruccion.fr3');
  frxReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
end;

procedure TfrmActividades.QryResumenCalcFields(DataSet: TDataSet);
begin
  QryResumendMontoMN.Value := QryResumendCantidad.Value * QryResumendVentaMN.Value;
  QryResumendMontoDLL.Value := QryResumendCantidad.Value * QryResumendVentaDLL.Value;

  QryResumendMontoCostoMN.Value := QryResumendCantidad.Value * QryResumendCostoMN.Value;
  QryResumendMontoCostoDLL.Value := QryResumendCantidad.Value * QryResumendCostoDLL.Value;

end;

procedure TfrmActividades.grid_actividadesEnter(Sender: TObject);
begin
   if ActividadesxOrden.active then
  begin
    if ActividadesxOrden.state in [dsinsert, dsedit] then
    begin
    //If ActividadesxOrden.FieldByName('sNumeroActividad').IsNull  then
    //begin
      ActividadesxOrden.Cancel;
      frmBarra1.btnCancel.Click
    //end ;
    end;
  end;
end;

procedure TfrmActividades.grid_actividadeDblClick(
  Sender: TObject);
(*
  var
     sCondicion : String ;
     sSelect    : String ;
*)

begin
  (*if ActividadesxOrden.Active then
  begin
  if ActividadesxOrden.FieldValues['sWbs']<>NULL then
  begin

   sCondicion := ' And sWbs NOT Like "' + Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%"' ;
   SavePlace := grid_actividades.DataSource.DataSet.GetBookmark ;
   If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' Then
      If ActividadesxOrden.FieldValues['sSimbolo'] = '-' Then
      begin
          Connection.zCommand.Active := False ;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear ;
          Connection.zCommand.SQL.Add( 'update actividadesxorden SET sSimbolo = "+" Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sWbs = :wbs And sTipoActividad = "Paquete"') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value := ActividadesxOrden.FieldValues['sContrato'] ;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Convenio').Value := ActividadesxOrden.FieldValues['sIdConvenio'] ;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'] ;
          connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
          connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL ;
          If Pos(sCondicion , sFiltro) = 0 Then
              If sFiltro <> '' Then
                  sFiltro := sFiltro + sCondicion
              Else
                  sFiltro := sCondicion ;
      End
      Else
      begin
          Connection.zCommand.Active := False ;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear ;
          Connection.zCommand.SQL.Add( 'update actividadesxorden SET sSimbolo = "-" Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden and sWbs = :wbs And sTipoActividad = "Paquete"') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value := ActividadesxOrden.FieldValues['sContrato'] ;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Convenio').Value := ActividadesxOrden.FieldValues['sIdConvenio'] ;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'] ;
          connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
          connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
          connection.zCommand.ExecSQL ;
          If Pos(sCondicion , sFiltro) > 0 Then
              sFiltro  := MidStr( sFiltro , 1 , Pos(sCondicion , sFiltro) - 1 ) + MidStr ( sFiltro , Pos(sCondicion , sFiltro) + Length(sCondicion) , Length(sFiltro)) ;
      end ;
   end;
   sSelect := 'Select * from actividadesxorden Where sContrato = :contrato and sIdConvenio = :Convenio And sNumeroOrden = :orden ' + sFiltro + ' order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)' ;
   ActividadesxOrden.Active := False ;
   ActividadesxOrden.SQL.Clear ;
   ActividadesxOrden.SQL.Add(sSelect) ;
   ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
   ActividadesxOrden.Params.ParamByName('Contrato').Value := global_contrato ;
   ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
   ActividadesxOrden.Params.ParamByName('Convenio').Value := global_convenio ;
   ActividadesxOrden.Params.ParamByName('orden').DataType := ftString ;
   ActividadesxOrden.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
   ActividadesxOrden.ParamByName('tam').AsInteger:=Global_TamOrden;
   ActividadesxOrden.ParamByName('separador').AsString:=Global_SepOrden;
   ActividadesxOrden.Open
  ;
   Try
        grid_actividades.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   Else
        grid_actividades.DataSource.DataSet.FreeBookmark(SavePlace);
   End ;
  end;             *)

end;

procedure TfrmActividades.ImpProgramaClick(Sender: TObject);
var
  myForm: TForm;
  zProgramas: TZReadOnlyQuery;
  zDSProgramas: tDataSource;
begin
  if tsNumeroOrden.Text <> '' then
  begin
    myForm := TForm.Create(Self);
    try
      myForm.Position := poDesktopCenter;
      myForm.Caption := 'Relacion de Programas Existentes';
      MyForm.BorderIcons := [];
      MyForm.Width := 900;
      MyForm.Height := 380;
      MyForm.BorderStyle := bsSingle;
      MyForm.Color := $00FEC6BA;

      zProgramas := TZReadOnlyQuery.Create(nil);
      zProgramas.Connection := connection.zConnection;
      zProgramas.Active := False;
      zProgramas.Sql.Clear;
      zProgramas.Sql.Add('select p.sDescripcion as sPlataforma, o.sNumeroOrden, SubStr(o.mDescripcion,1,250) as sDescripcion from ordenesdetrabajo o ' +
        'inner join plataformas p on (p.sIdPlataforma = o.sIdPlataforma) ' +
        'where o.sContrato = :contrato And o.sNumeroOrden <> :Orden order by o.sIdPlataforma, o.sNumeroOrden ');
      zProgramas.Params.ParamByName('contrato').DataType := ftString;
      zProgramas.Params.ParamByName('contrato').Value := global_contrato;
      zProgramas.Params.ParamByName('orden').DataType := ftString;
      zProgramas.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      zProgramas.Open;
      zDSProgramas := tDataSource.Create(nil);
      zDsProgramas.DataSet := zProgramas;

      GridProgConstExist := TRxDBGrid.Create(MyForm);
      with GridProgconstExist do
      begin
        Parent := myForm;
        Visible := True;
        Align := alCustom;
        Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
        TitleButtons := True;
        DataSource := zDSProgramas;
        Width := 900;
        Height := 330;
        Anchors := [akLeft, akTop, akRight, akBottom];
        ParentColor := True;
        Ctl3D := False;

        Columns.Clear;
        Columns.Add;
        Columns[0].FieldName := 'sNumeroOrden';
        Columns[0].Width := 200;
        Columns[0].Title.Caption := 'Orden de Trabajo';
        Columns.Add;
        Columns[1].FieldName := 'sPlataforma';
        Columns[1].Width := 150;
        Columns[1].Title.Caption := 'Lugar de los Trabajos';
        Columns.Add;
        Columns[2].FieldName := 'sDescripcion';
        Columns[2].Width := 550;
        Columns[2].Title.Caption := 'Descripcion';
      end;

      with TButton.Create(Self) do
      begin
        Left := 320;
        Top := 310;
        Width := 120;
        Height := 35;
        ModalResult := mrOk;
        Default := True;
        Parent := MyForm;
        Caption := 'Importar Programa';
        OnClick := btnImportarClick;
      end;

      with TButton.Create(Self) do
      begin
        Left := 470;
        Top := 310;
        Width := 120;
        Height := 35;
        ModalResult := mrCancel;
        Cancel := True;
        Parent := MyForm;
        Caption := 'Cancelar Importacion'
      end;

      myForm.ShowModal;
    finally
      zProgramas.Destroy;
      zDSProgramas.Destroy;
      GridProgConstExist.Destroy;
      Paquetes.Refresh;
      myForm.Free;
    end;
  end;
end;

procedure TfrmActividades.btnImportarClick(Sender: TObject);
var
  registro: Integer;
  sParametro: string;
  lContinua: Boolean;
begin
  try
    if GridProgConstExist.DataSource.DataSet.FieldValues['sNumeroOrden'] <> tsNumeroOrden.Text then
    begin
      if ActividadesxOrden.RecordCount > 0 then
      begin
            // Verifico que no existan partidas reportadas, si ya se ha reportado algo del programa, se cancela toda la operacion
        Connection.qryBusca.Active := False;
        Connection.qryBusca.Filtered := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select a2.sContrato From bitacoradeactividades b ' +
          'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato And a2.sNumeroOrden = b.sNumeroOrden And a2.sWbs = b.sWbs And ' +
          'a2.sNumeroActividad = b.sNumeroActividad And a2.sTipoActividad = "Actividad" ' +
          'Where a2.sContrato = :Contrato And a2.sNumeroOrden = :Orden');
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        Connection.qryBusca.Open;
        if Connection.QryBusca.RecordCount > 0 then
        begin
          MessageDlg('Existen partidas dentro del programa de trabajo seleccionado, no se puede insertar el programa de trabajo seleccionado.', mtInformation, [mbOk], 0);
          lContinua := False
        end
        else
          lContinua := True
      end
      else
        lContinua := True;

      if lContinua then
      begin
        Connection.qryBusca.Active := False;
        Connection.qryBusca.Filtered := False;
        Connection.qryBusca.SQL.Clear;
        Connection.qryBusca.SQL.Add('Select * from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio And sNumeroOrden = :orden');
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
        Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('orden').Value := GridProgConstExist.DataSource.DataSet.FieldValues['sNumeroOrden'];
        Connection.qryBusca.Open;
        if Connection.qryBusca.RecordCount > 0 then
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('DELETE FROM actividadesxorden Where sContrato = :contrato and sNumeroOrden = :orden and sIdConvenio = :convenio');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
          connection.zCommand.Params.ParamByName('orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
          connection.zCommand.ExecSQL();
                // Empiezo exportando los anexos ...
          Connection.qryBusca.First;
          while not Connection.qryBusca.Eof do
          begin
            Connection.zCommand.Active := False;
            Connection.zCommand.Filtered := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add(funcsql(Connection.qryBusca, 'actividadesxorden'));
            for registro := 0 to Connection.qryBusca.fieldcount - 1 do
            begin
              sparametro := 'param' + trim(inttostr(registro + 1));
              connection.zCommand.Params.parambyname(sparametro).datatype := Connection.qryBusca.fields[registro].datatype;
              if Connection.qryBusca.fields[registro].DisplayName = 'sNumeroOrden' then
                connection.zCommand.Params.parambyname(sparametro).value := tsNumeroOrden.Text
              else
                connection.zCommand.Params.parambyname(sparametro).value := Connection.qryBusca.fields[registro].value;
            end;
            connection.zCommand.ExecSQL;
            Connection.qryBusca.Next
          end;
          frmBarra1.btnRefresh.Click
        end;
      end
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al importar', 0);
    end;
  end;
end;

procedure TfrmActividades.Com1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// GENERACION DE PROGRAMA DE TRABAJO CON VOLUMENES //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dVolumen, dReal, dCantidad: double;
      Progreso, TotalProgreso: real;
      sWbs: string;
      dFechaInicial1, dFechaFinal1, dFechaInicial2, dFechaFinal2: TDate;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 18;
      Excel.Columns['C:C'].ColumnWidth := 18;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 40;
      Excel.Columns['F:G'].ColumnWidth := 12;
      Excel.Columns['H:J'].ColumnWidth := 18;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Frente';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;
      with Connection do
      begin
      {obtener las fechas iniciales y finales programas por parte de la cia}
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select min(dIdFecha) as dFechaInicialProg from distribuciondeactividadescia b ' +
          ' inner join  actividadesxorden  a ' +
          '   on b.sContrato=a.sContrato and b.sNumeroOrden=a.sNumeroOrden and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where a.sContrato=:contrato and a.sNumeroOrden=:orden and a.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('orden').AsString := tsNumeroOrden.text;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaInicial1 := QryBusca.FieldByName('dFechaInicialProg').AsDateTime;
        end;
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select max(dIdFecha) as dFechaFinalProg from distribuciondeactividadescia b ' +
          ' inner join  actividadesxorden  a  ' +
          '   on b.sContrato=a.sContrato and b.sNumeroOrden=a.sNumeroOrden and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where a.sContrato=:contrato and a.sNumeroOrden=:orden and a.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('orden').AsString := tsNumeroOrden.text;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaFinal1 := QryBusca.FieldByName('dFechaFinalProg').AsDateTime;
        end;
       {Obtener las fechas iniciales y finales de las partidas que estan programadas(cia) y reportadas }
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select min(a.dIdFecha) as dFechaInicialProg from distribuciondeactividadescia b ' +
          ' inner join  bitacoradeactividades  a ' +
          '   on b.sContrato=a.sContrato and b.sNumeroOrden=a.sNumeroOrden and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where b.sContrato=:contrato and b.sNumeroOrden=:orden and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('orden').AsString := tsNumeroOrden.text;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaInicial2 := QryBusca.FieldByName('dFechaInicialProg').AsDateTime;
        end;
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select max(a.dIdFecha) as dFechaFinalProg from distribuciondeactividadescia b ' +
          ' inner join  bitacoradeactividades  a ' +
          '   on b.sContrato=a.sContrato and b.sNumeroOrden=a.sNumeroOrden and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where b.sContrato=:contrato and b.sNumeroOrden=:orden and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('orden').AsString := tsNumeroOrden.text;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaFinal2 := QryBusca.FieldByName('dFechaFinalProg').AsDateTime;
        end;

        {Compara scual de las fechas iniciales es mas vieja..}
        if dFechaInicial1 > dFechaInicial2 then dFechaInicial1 := dFechaInicial2;
        {Compara scual de las fechas finales es mas reciente..}
        if dFechaFinal1 < dFechaFinal2 then dFechaFinal1 := dFechaFinal2;
        
        {Ahora obtener la fecha de cuando se genera}
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add(' select max(a.dFecha) as dFechaFinalProg from distribuciondeactividadescia b ' +
          ' inner join  estimacionxpartida  a ' +
          '   on b.sContrato=a.sContrato and b.sNumeroOrden=a.sNumeroOrden and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where b.sContrato=:contrato and b.sNumeroOrden=:orden and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('orden').AsString := tsNumeroOrden.text;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaFinal2 := QryBusca.FieldByName('dFechaFinalProg').AsDateTime;
        end;
        {Compara scual de las fechas finales es mas reciente..}
        if dFechaFinal1 < dFechaFinal2 then dFechaFinal1 := dFechaFinal2;
                     
        {Crear los encabezados de las fechas en base a los fechas inicial y final obtenidos}
        i := 1;
        dFechaInicial2 := dFechaInicial1;
        while (dFechaInicial2 <= dFechaFinal1) do
        begin
          Hoja.Cells[Ren - 1, 10 + i].Select;
                 {Formato de las fechas archivo Excel,, 24/07/2011..}
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := DateToStr(dFechaInicial2);
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 49;
          dFechaInicial2 := IncDay(dFechaInicial2);
          Inc(i);
        end;
        Hoja.Cells[Ren - 1, 10 + i].Select;
        Excel.Selection.Value := 'TOTAL';
        Excel.Selection.HorizontalAlignment := xlRight;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 11;

        {Ahora leer todas las actividades programadas y en base a estas, obtener la informacion requerida (reportadas, programadas)}
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add(' select  a.sWbs,a.iNivel,a.sMedida,a.sNumeroActividad, a.mDescripcion ,' +
          '     b.dIdFecha,a.sNumeroOrden, a.dCantidad,a.sTipoActividad,a.dPonderado,a.dFechaInicio,dFechaFinal, a.dCantidad as dReal,' +
          '    b.dCantidad as dProgramado ' +
          ' from distribuciondeactividadescia b ' +
          ' inner join  actividadesxorden  a  ' +
          '   on b.sContrato=a.sContrato and b.sNumeroOrden=a.sNumeroOrden and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where a.sContrato=:contrato and a.sNumeroOrden=:orden and a.sIdConvenio=:convenio  ' +
          ' group by a.sWbs  ' +
          ' order by a.iItemOrden;');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('orden').AsString := tsNumeroOrden.Text;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;

        sWbs := '';
        Inc(Ren);
        while not QryBusca.EOF do
        begin
          {Descripcion del concepto}
          if sWbs <> QryBusca.FieldValues['sWbs'] then
          begin
            sWbs := QryBusca.FieldValues['sWbs'];
                {Escritura de Datos en el Archvio de Excel..}
            Hoja.Cells[Ren, 1].Select;
            Excel.Selection.Value := global_contrato;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 11;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Calibri';

            Hoja.Cells[Ren, 2].Select;
            Excel.Selection.Value := QryBusca.FieldValues['sNumeroOrden'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 3].Select;
            Excel.Selection.Value := QryBusca.FieldValues['iNivel'];

            Hoja.Cells[Ren, 4].Select;
            Excel.Selection.Value := QryBusca.FieldValues['sNumeroActividad'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 5].Select;
            Excel.Selection.Value := QryBusca.FieldValues['mDescripcion'];
            Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
            Hoja.Cells[Ren, 5].Value := '';

            if Alto > 15 then
              Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
            else
              Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

            Excel.Selection.Value := QryBusca.FieldValues['mDescripcion'];

            Hoja.Cells[Ren, 6].Select;
            Excel.Selection.Value := QryBusca.FieldValues['sMedida'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 7].Select;
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := QryBusca.FieldValues['dCantidad'];
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 8].Select;
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := QryBusca.FieldValues['dPonderado'];
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 9].Select;
            Excel.Selection.Value := QryBusca.FieldValues['dFechaInicio'];

            Hoja.Cells[Ren, 10].Select;
            Excel.Selection.Value := QryBusca.FieldValues['dFechaFinal'];
            Inc(Ren);
          end;
          {Programado}
          Inc(Ren);
          i := 1;

          Hoja.Cells[Ren - 1, 9 + i].Select;
          Excel.Selection.Value := 'PROGRAMADO';
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 2;
                    
          dFechaInicial2 := dFechaInicial1;
          dCantidad := 0;
          while (dFechaInicial2 <= dFechaFinal1) do
          begin

            QryBusca2.Active := false;
            QryBusca2.SQL.Clear;
            QryBusca2.SQL.Add('select if(dCantidad is null,0,dCantidad) as dCantidad from distribuciondeactividadescia where ' +
              ' sContrato=:contrato and sIdConvenio =:convenio and sNumeroOrden = :orden ' +
              ' and sNumeroActividad=:actividad and sWbs =:wbs and dIdFecha=:fecha ');
            QryBusca2.ParamByName('contrato').AsString := global_contrato;
            QryBusca2.ParamByName('convenio').AsString := global_convenio;
            QryBusca2.ParamByName('orden').AsString := QryBusca.FieldByName('sNumeroOrden').AsString;
            QryBusca2.ParamByName('actividad').AsString := QryBusca.FieldByName('sNumeroActividad').AsString;
            QryBusca2.ParamByName('wbs').AsString := QryBusca.FieldByName('sWbs').AsString;
            QryBusca2.ParamByName('fecha').AsDate := dFechaInicial2;
            QryBusca2.Open;

            Hoja.Cells[Ren - 1, 10 + i].Select;
            Excel.Selection.Value := QryBusca2.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := 49;
            dCantidad := dCantidad + QryBusca2.FieldByName('dCantidad').AsFloat;
            dFechaInicial2 := IncDay(dFechaInicial2);
            Inc(i);
          end;
          Hoja.Cells[Ren - 1, 10 + i].Select;
          Excel.Selection.Value := dCantidad;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 11;
          {Reportado}
          dCantidad := 0;
          Inc(Ren);
          i := 1;

          Hoja.Cells[Ren - 1, 9 + i].Select;
          Excel.Selection.Value := 'REPORTADO';
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 2;


          dFechaInicial2 := dFechaInicial1;
          while (dFechaInicial2 <= dFechaFinal1) do
          begin

            QryBusca2.Active := false;
            QryBusca2.SQL.Clear;
            QryBusca2.SQL.Add('select if(sum(dCantidad) is null,0,sum(dCantidad)) as dCantidad from bitacoradeactividades where ' +
              ' sContrato=:contrato and sNumeroOrden = :orden ' +
              ' and sNumeroActividad=:actividad and sWbs =:wbs and dIdFecha=:fecha ' +
              ' group by dIdFecha ');
            QryBusca2.ParamByName('contrato').AsString := global_contrato;
            QryBusca2.ParamByName('orden').AsString := tsNumeroOrden.Text;
            QryBusca2.ParamByName('actividad').AsString := QryBusca.FieldByName('sNumeroActividad').AsString;
            QryBusca2.ParamByName('wbs').AsString := QryBusca.FieldByName('sWbs').AsString;
            QryBusca2.ParamByName('fecha').AsDate := dFechaInicial2;
            QryBusca2.Open;

            Hoja.Cells[Ren - 1, 10 + i].Select;
            Excel.Selection.Value := QryBusca2.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := 29;
            dCantidad := dCantidad + QryBusca2.FieldByName('dCantidad').AsFloat;
            dFechaInicial2 := IncDay(dFechaInicial2);
            Inc(i);
          end;
          Hoja.Cells[Ren - 1, 10 + i].Select;
          Excel.Selection.Value := dCantidad;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 11;
          {GENERADO}
          dCantidad := 0;
          Inc(Ren);
          i := 1;

          Hoja.Cells[Ren - 1, 9 + i].Select;
          Excel.Selection.Value := 'GENERADO';
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 2;


          dFechaInicial2 := dFechaInicial1;
          while (dFechaInicial2 <= dFechaFinal1) do
          begin

            QryBusca2.Active := false;
            QryBusca2.SQL.Clear;
            QryBusca2.SQL.Add(' select if(sum(dCantidad) is null,0,sum(dCantidad)) as dCantidad from estimacionxpartida where ' +
              ' sContrato=:contrato and sNumeroOrden = :orden ' +
              ' and sNumeroActividad=:actividad and sWbs =:wbs and dFecha=:fecha ' +
              ' group by dFecha ');
            QryBusca2.ParamByName('contrato').AsString := global_contrato;
            QryBusca2.ParamByName('orden').AsString := tsNumeroOrden.Text;
            QryBusca2.ParamByName('actividad').AsString := QryBusca.FieldByName('sNumeroActividad').AsString;
            QryBusca2.ParamByName('wbs').AsString := QryBusca.FieldByName('sWbs').AsString;
            QryBusca2.ParamByName('fecha').AsDate := dFechaInicial2;
            QryBusca2.Open;

            Hoja.Cells[Ren - 1, 10 + i].Select;
            Excel.Selection.Value := QryBusca2.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := 52;
            dCantidad := dCantidad + QryBusca2.FieldByName('dCantidad').AsFloat;
            dFechaInicial2 := IncDay(dFechaInicial2);
            Inc(i);
          end;
          Hoja.Cells[Ren - 1, 10 + i].Select;
          Excel.Selection.Value := dCantidad;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 11;          
          QryBusca.Next();
        end;
      end;
     Hoja.Cells[2, 2].Select;
    end;


  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'ProgVsRealVsGenOrden'; // + tsNumeroOrden.Text;
      except
        Hoja.Name := 'ProgVsRealVsGenOrden';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
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
    showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
  end
  else
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := False;
  end;

  PanelProgress.Visible := True;
  Label15.Refresh;
  Label16.Refresh;
  Label17.Refresh;
  BarraEstado.Position := 0;

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
  begin
        // Grabar el archivo de excel con el nombre dado
    Excel.Visible := True;
    Excel.DisplayAlerts := True;
    Excel.ScreenUpdating := True;
    PanelProgress.Visible := False;
    messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
  end;

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;

procedure TfrmActividades.CrearProgramaClick(Sender: TObject);
var
  sContrato: string;
  registro: Integer;
  sParametro: string;
  lContinua: Boolean;
begin
  try
    if ActividadesxOrden.RecordCount > 0 then
    begin
      // Verifico que no existan partidas reportadas, si ya se ha reportado algo del programa, se cancela toda la operacion
      Connection.qryBusca.Active := False;
      Connection.qryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select a2.sContrato From bitacoradeactividades b ' +
        'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato And a2.sNumeroOrden = b.sNumeroOrden And a2.sWbs = b.sWbs And ' +
        'a2.sNumeroActividad = b.sNumeroActividad And a2.sTipoActividad = "Actividad")' +
        'Where a2.sContrato = :Contrato And a2.sNumeroOrden = :Orden');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.qryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
      begin
        MessageDlg('Existen partidas dentro del programa de trabajo seleccionado, no se puede insertar el programa de trabajo seleccionado.', mtInformation, [mbOk], 0);
        lContinua := False
      end
      else
        lContinua := True
    end
    else
      lContinua := True;

    if lContinua then
    begin
      Connection.qryBusca.Active := False;
      Connection.qryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
        'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, lExtraordinario, sTipoAnexo, sIdFase, ' +
        'dCantidadAnexo, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, sAnexo,' +
        'dVentaDLL, "*", sWbs as sWbsContrato from actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :convenio');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      begin
        Connection.zCommand.Active := False;
        Connection.zCommand.Filtered := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add('DELETE FROM actividadesxorden Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
        connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        connection.zCommand.ExecSQL();

        // Empiezo exportando los anexos ...
        Connection.qryBusca2.Active := False;
        Connection.qryBusca2.Filtered := False;
        Connection.qryBusca2.SQL.Clear;
        Connection.qryBusca2.SQL.Add('Select sContrato, sIdConvenio, iNivel, sSimbolo, sWbs, sWbsAnterior, ' +
          'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, lExtraordinario, sTipoAnexo, sIdFase, ' +
          'dCantidad, iColor, dFechaInicio, dFechaFinal, dDuracion, dPonderado, dCostoMN, dCostoDLL, dVentaMN, sAnexo, ' +
          'dVentaDLL, mComentarios, sWbsContrato, sNumeroOrden from actividadesxorden Where sContrato = :Contrato And sIdConvenio = :convenio');
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := '';
        Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Convenio').Value := '';
        Connection.qryBusca2.Open;

        Connection.zCommand.Active := False;
        Connection.zCommand.Filtered := False;
        Connection.zCommand.SQL.Clear;
        Connection.zCommand.SQL.Add(funcsql(Connection.qryBusca2, 'actividadesxorden'));

        Connection.qryBusca.First;
        while not Connection.qryBusca.Eof do
        begin
          Connection.zCommand.Active := False;
          sparametro := 'param' + trim(inttostr(Connection.qryBusca.fieldcount + 1));
          connection.zCommand.Params.parambyname(sparametro).datatype := ftString;
          connection.zCommand.Params.parambyname(sparametro).value := tsNumeroOrden.Text;
          for registro := 1 to Connection.qryBusca.fieldcount do
          begin
            sparametro := 'param' + trim(inttostr(registro));
            connection.zCommand.Params.parambyname(sparametro).datatype := Connection.qryBusca.fields[registro - 1].datatype;
            connection.zCommand.Params.parambyname(sparametro).value := Connection.qryBusca.fields[registro - 1].value;
          end;
          connection.zCommand.ExecSQL;
          Connection.qryBusca.Next
        end;
        frmBarra1.btnRefresh.Click
      end;
      Paquetes.Refresh;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al Crear Programa de Trabajo segun Contrato', 0);
    end;
  end;
end;

procedure TfrmActividades.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if actividadesxorden.RecordCount > 0 then
    grid_actividades.Hint := actividadesxorden.FieldValues['sWbs'];
end;

procedure TfrmActividades.cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
var
  sCondicion: string;
  sSelect: string;
  inicio, reg: Integer;
  Lugar: Tbookmark;
begin
  if (ActividadesxOrden.FieldValues['sWbs'] <> NULL) then
  begin
    sCondicion := 'sWbs not Like ' + quotedstr(Trim(ActividadesxOrden.FieldValues['sWbs']) + '.*');

    if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
    begin

      lugar := ActividadesxOrden.GetBookmark;

      reg := Paq.indexof(ActividadesxOrdenswbs.asstring);

      if reg = -1 then
      begin
        if Pos(sCondicion, sFiltro) = 0 then
          if sFiltro <> '' then
            sFiltro := sFiltro + ' and ' + scondicion
          else
            sFiltro := sCondicion;

        Paq.Add(ActividadesxOrdenswbs.asstring);

      end
      else
      begin
        inicio := Pos(sCondicion, sFiltro);

        Paq.Delete(reg);
        if (inicio > 0) then
        begin
          if inicio = 1 then
            sFiltro := MidStr(sFiltro, Length(scondicion) + 6, Length(sFiltro))
          else
            sFiltro := MidStr(sFiltro, 1, inicio - 6) + MidStr(sFiltro, inicio + Length(scondicion), length(sfiltro));

        end;

      end;

      ActividadesxOrden.Filtered := false;
      ActividadesxOrden.Filter := sfiltro;
      ActividadesxOrden.Filtered := true;
      try
        ActividadesxOrden.GotoBookmark(lugar);
      finally
        ActividadesxOrden.FreeBookmark(lugar);
      end;


    end;
  end;
end;

procedure TfrmActividades.PonderarConceptosClick(Sender: TObject);
var
  dMontoContratoMN: Currency;
  dMontoContratoDLL: Currency;
  dPonderadoAjuste,
    Difer, Ponderado,
    decPonderado, Suma: Extended;
  scalcula: string;
begin
  scalcula := 'Si';
    //Inicia proceso de estructura del proyecto ...
  if Actividadesxorden.RecordCount > 0 then
    if MessageDlg('Desea Ponderar los Conceptos del Contrato Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        // Que ponderados se calcularan ?
        // Sumo todos las partidas anexo que tengan en lCalculo <> Si

      Connection.zCommand.Active := False;
      connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = 0 ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden =:Orden');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
      connection.zCommand.Params.ParamByName('orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.zCommand.ExecSQL;
        // and lCalculo = "Si"

(*
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.Filtered := False;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select SUM(dPonderado) as TotalPonderado from actividadesxorden Where sContrato = :contrato ' +
                                      'And sIdConvenio = :Convenio and sNumeroOrden =:Orden And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato' ) ;
          Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
          Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
          Connection.QryBusca.Params.ParamByName('Calculo').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Calculo').Value := 'No' ;
          Connection.QryBusca.Open ;
*)

      dPonderadoAjuste := 100;
     //   If (Connection.QryBusca.RecordCount > 0) And (Connection.QryBusca.FieldValues['TotalPonderado'] > 0 ) Then
     //         dPonderadoAjuste :=  Connection.QryBusca.FieldValues ['TotalPonderado'] ;

        // Actualizacion de ponderados ....
      dMontoContrato := 0;
      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sum(dCantidad * dVentaMN) as dMontoMN From actividadesxorden ' +
        'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        'and lcalculo=:calculo group by sContrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.QryBusca.Params.ParamByName('calculo').AsString := sCalcula;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
        dMontoContratoMN := Connection.QryBusca.FieldValues['dMontoMN'];

      if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
      begin
        if dMontoContratoMN > 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.Filtered := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = (((dCantidad * dVentaMN) / :montocontrato) * :miMaximoPonderado) ' +
            'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and dCantidad <> 0 ' +
            'and lcalculo=:calculo');
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
          connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
          connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
          connection.zcommand.params.ParamByName('Orden').DataType := ftString;
          connection.zcommand.params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          connection.zcommand.params.ParamByName('montocontrato').DataType := ftFloat;
          connection.zcommand.params.ParamByName('montocontrato').Value := dMontoContratoMN;
          connection.zcommand.params.ParamByName('miMaximoPonderado').DataType := ftFloat;
          connection.zcommand.params.ParamByName('miMaximoPonderado').Value := dPonderadoAjuste;
          connection.zcommand.params.ParamByName('calculo').AsString := scalcula;
          connection.zCommand.ExecSQL;
        end;
      end
      else
        if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
        begin
                //Calculo el monto del programa ...
          Connection.QryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.QryBusca.SQL.Clear;
          Connection.QryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxorden ' +
            'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          Connection.QryBusca.Params.ParamByName('calculo').AsString := sCalcula;
          Connection.QryBusca.Open;
          if connection.QryBusca.RecordCount > 0 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Text := 'select * from actividadesxorden where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden =:Orden And sTipoActividad = "Actividad" and dDuracion <> 0 ' +
              'and lcalculo=:calculo order by iItemOrden';
            connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
            connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
            connection.zcommand.params.ParamByName('Orden').DataType := ftString;
            connection.zcommand.params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zcommand.params.ParamByName('calculo').AsString := sCalcula;
            connection.zCommand.Open;

            Difer := 0; // Diferencia para ajuste entre partidas
            Ponderado := 0; // Almacenamiento de ponderado total calculado
            Suma := 0;
            while not Connection.zCommand.Eof do
            begin
              Ponderado := (Connection.zCommand.FieldByName('dDuracion').AsFloat / Connection.QryBusca.FieldValues['dDuracionTotal']);
              Ponderado := Ponderado + Difer; // Sumar la diferencia anterior para ajuste automático
              decPonderado := Trunc(Ponderado * 1000000) / 1000000;
              Difer := Ponderado - decPonderado;
              decPonderado := decPonderado * dPonderadoAjuste;

              Suma := Suma + decPonderado;

              if (Connection.zCommand.RecNo = Connection.zCommand.RecordCount) and (Suma <> dPonderadoAjuste) then
                decPonderado := decPonderado + (dPonderadoAjuste - Suma);

              Connection.zCommand.Edit;
              Connection.zCommand.FieldByName('dPonderado').AsFloat := decPonderado;
              Connection.zCommand.Post;

              Connection.zCommand.Next;
            end;
          end;
        end
        else
        begin
                // Primero el Financiero MN
          dMontoContrato := 0;
          Connection.qryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaMN) as dMontoMN From actividadesxorden ' +
            'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          Connection.qryBusca.Params.ParamByName('calculo').AsString := sCalcula;
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
            dMontoContratoMN := Connection.qryBusca.FieldValues['dMontoMN'];

          if dMontoContratoMN > 0 then
          begin
            Connection.QryBusca2.Active := False;
            connection.QryBusca2.Filtered := False;
            Connection.QryBusca2.SQL.Clear;
            Connection.QryBusca2.SQL.Add('select dCantidad, dVentaMN, sWbs from actividadesxorden ' +
              'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidad <> 0 ' +
              'and lcalculo=:calculo');
            connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
            connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
            connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.QryBusca2.Params.ParamByName('Calculo').AsString := sCalcula;
            connection.QryBusca2.Open;

            while not connection.QryBusca2.Eof do
            begin
              Connection.zCommand.Active := False;
              connection.zCommand.Filtered := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = :ponderado ' +
                'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sWbs =:Wbs and sTipoActividad = "Actividad" ' +
                'and lcalculo=:calculo');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
              connection.zCommand.Params.ParamByName('Wbs').Value := connection.QryBusca2.FieldValues['sWbs'];
              connection.zCommand.Params.ParamByName('ponderado').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('ponderado').Value := (((connection.QryBusca2.FieldByName('dCantidad').AsFloat * connection.QryBusca2.FieldByName('dVentaMN').AsFloat) / dMontoContratoMN) * dPonderadoAjuste);
              connection.zCommand.Params.ParamByName('calculo').AsString := sCalcula;
              connection.zCommand.ExecSQL;
              connection.QryBusca2.Next;
            end;
          end;

                // Primero el Financiero DLL
          dMontoContrato := 0;
          Connection.qryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
            'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          Connection.qryBusca.Params.ParamByName('calculo').AsString := sCalcula;
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
            dMontoContratoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];

          if dMontoContratoDLL > 0 then
          begin
            Connection.QryBusca2.Active := False;
            connection.QryBusca2.Filtered := False;
            Connection.QryBusca2.SQL.Clear;
            Connection.QryBusca2.SQL.Add('select dCantidad, dVentaDLL, sWbs, dPonderado from actividadesxorden ' +
              'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidad <> 0 ' +
              'and lcalculo=:calculo');
            connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
            connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
            connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.QryBusca2.Params.ParamByName('calculo').AsString := sCalcula;
            connection.QryBusca2.Open;

            while not connection.QryBusca2.Eof do
            begin
              Connection.zCommand.Active := False;
              connection.zCommand.Filtered := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = :ponderado ' +
                'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sWbs =:Wbs and sTipoActividad = "Actividad" ' +
                'and lcalculo=:calculo');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
              connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
              connection.zCommand.Params.ParamByName('Wbs').Value := connection.QryBusca2.FieldValues['sWbs'];
              connection.zCommand.Params.ParamByName('ponderado').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('ponderado').Value := (connection.QryBusca2.FieldByName('dPonderado').AsFloat +
                (((connection.QryBusca2.FieldByName('dCantidad').AsFloat * connection.QryBusca2.FieldByName('dVentaDLL').AsFloat)
                / dMontoContratoMN) * dPonderadoAjuste)) / 2;
              connection.zCommand.Params.ParamByName('calculo').AsString := sCalcula;
              connection.zCommand.ExecSQL;
              connection.QryBusca2.Next;
            end;
          end;

                // Fisico en Moneda Nacional
                //Calculo el monto del programa ...
          Connection.qryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxorden ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden =:Orden And sTipoActividad = "Actividad" group by sContrato ' +
            'and lcalculo=:calculo');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          Connection.qryBusca.Params.ParamByName('Calculo').AsString := sCalcula;
                //Connection.qryBusca.Open ;
          Connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
          begin
            Connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('update actividadesxorden SET dPonderado = (dPonderado + (((dDuracion / :duracioncontrato) * :miMaximoPonderado)) / 2) ' +
              'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and dDuracion <> 0 ' +
              'and lcalculo=:calculo');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zCommand.Params.ParamByName('duracioncontrato').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('duracioncontrato').Value := Connection.qryBusca.FieldValues['dDuracionTotal'];
            connection.zcommand.params.ParamByName('miMaximoPonderado').DataType := ftFloat;
            connection.zcommand.params.ParamByName('miMaximoPonderado').Value := dPonderadoAjuste;
            connection.zcommand.params.ParamByName('Calculo').AsString := sCalcula;
            connection.zCommand.ExecSQL;
          end
        end;


      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxorden ' +
        'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.QryBusca2.Open;
      while not Connection.QryBusca2.Eof do
      begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Filtered := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
          'sum(dCantidad * dVentaMN) as dMontoMN, sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
          'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sWBSAnterior = :Paquete ' +
          'and lcalculo=:calculo Group By sWBSAnterior');
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
        Connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
        Connection.QryBusca.Params.ParamByName('calculo').AsString := sCalcula;
        Connection.QryBusca.Open;
        if Connection.QryBusca.RecordCount > 0 then
          if (not Connection.QryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.QryBusca.FieldByName('dFechaFinal').IsNull) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio and sNumeroOrden =:Orden And ' +
              'sWBS = :Paquete And sTipoActividad = "Paquete"');
            connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
            connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
            connection.zcommand.params.ParamByName('Orden').DataType := ftString;
            connection.zcommand.params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            connection.zcommand.params.ParamByName('Paquete').DataType := ftString;
            connection.zcommand.params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
            connection.zcommand.params.ParamByName('Inicio').DataType := ftDate;
            connection.zcommand.params.ParamByName('Inicio').Value := Connection.QryBusca.FieldValues['dFechaInicio'];
            connection.zcommand.params.ParamByName('Final').DataType := ftDate;
            connection.zcommand.params.ParamByName('Final').Value := Connection.QryBusca.FieldValues['dFechaFinal'];
            connection.zcommand.params.ParamByName('Ponderado').DataType := ftFloat;
            if roundTo(Connection.QryBusca.FieldValues['dPonderado'], -2) >= 100 then
              connection.zcommand.params.ParamByName('Ponderado').Value := 100
            else
              connection.zcommand.params.ParamByName('Ponderado').Value := Connection.QryBusca.FieldValues['dPonderado'];
            connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoMN').Value := Connection.QryBusca.FieldValues['dMontoMN'];
            connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoDLL').Value := Connection.QryBusca.FieldValues['dMontoDLL'];
            Connection.zCommand.ExecSQL;
          end;
        Connection.QryBusca2.Next
      end;


      dMontoContratoDLL := 0;
      Connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sum(dCantidad * dVentaDLL) as dMontoDLL From actividadesxorden ' +
        'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        'and lcalculo=:calculo group by sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.qryBusca.Params.ParamByName('calculo').AsString := sCalcula;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        dMontoContratoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];

      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From actividadesxorden ' +
        'Where sContrato = :Contrato and sNumeroOrden =:Orden And sIdConvenio = :Convenio And iNivel = 0');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.QryBusca.Open;


      if Connection.QryBusca.RecordCount > 0 then
      begin
            //Actualizo el convenio
        connection.zCommand.Active := False;
        connection.zCommand.Filtered := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update convenios SET dFechaInicio = :Inicio, dFechaFinal = :Final, dMontoMN = :MontoMN, dMontoDLL = :MontoDLL ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio');
        connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
        connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
        connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
        connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
        connection.zcommand.params.ParamByName('Inicio').DataType := ftDate;
        connection.zcommand.params.ParamByName('Inicio').Value := Connection.QryBusca.FieldValues['dFechaInicio'];
        connection.zcommand.params.ParamByName('Final').DataType := ftDate;
        connection.zcommand.params.ParamByName('Final').Value := Connection.QryBusca.FieldValues['dFechaFinal'];
        connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
        connection.zcommand.params.ParamByName('MontoMN').Value := dMontoContratoMN;
        connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
        connection.zcommand.params.ParamByName('MontoDLL').Value := dMontoContratoDLL;
        Connection.zCommand.ExecSQL;
      end;
      frmBarra1.btnRefresh.Click
    end;
  Actividadesxorden.Refresh;
end;

procedure TfrmActividades.AdminWBSClick(Sender: TObject);
var
  sItemOrdenAnterior: string;
begin
  ActividadesxOrden.First;
  while not ActividadesxOrden.Eof do
  begin
    ActividadesxOrden.Edit;
    connection.QryBusca.Active := False;
    Connection.qryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT iNivel, sWbs, iItemOrden from actividadesxorden WHERE sContrato = :contrato and sNumeroOrden = :orden And ' +
      'sIdConvenio = :convenio and sWbs = :wbs And sTipoActividad = "Paquete"');
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
    connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
    connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbsAnterior'];
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
    begin
      ActividadesxOrden.FieldValues['sWbsAnterior'] := connection.QryBusca.FieldValues['sWbs'];
      ActividadesxOrden.FieldValues['iNivel'] := connection.QryBusca.FieldValues['iNivel'] + 1;
      ActividadesxOrden.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'];
    end
    else
    begin
      ActividadesxOrden.FieldValues['iNivel'] := 0;
      ActividadesxOrden.FieldValues['sWbsAnterior'] := '0';
      ActividadesxOrden.FieldValues['iItemOrden'] := '';
    end;
    ActividadesxOrden.FieldValues['dDuracion'] := DaysBetween(ActividadesxOrden.FieldValues['dFechaFinal'], ActividadesxOrden.FieldValues['dFechaInicio']) + 1;
    sItemOrdenAnterior := MidStr(ActividadesxOrden.FieldValues['iItemOrden'], 1, ActividadesxOrden.FieldValues['iNivel'] * LongNivel);
    ActividadesxOrden.FieldValues['iItemOrden'] := sItemOrdenAnterior + sfnItem(ActividadesxOrden.FieldValues['sNumeroActividad'],
      ActividadesxOrden.FieldValues['sTipoActividad'],
      ActividadesxOrden.FieldValues['iNivel']);
    ActividadesxOrden.Post;
    ActividadesxOrden.Next
  end
end;


procedure TfrmActividades.AsignarWbsdelContrato1Click(Sender: TObject);
var
  Actualiza: TZReadOnlyQuery;
begin
  Actualiza := TZReadOnlyQuery.Create(self);
  Actualiza.Connection := connection.zConnection;

  Actualiza.Active := False;
  Actualiza.SQL.Clear;
  Actualiza.SQL.Add('update actividadesxanexo a, actividadesxorden o set o.sWbsContrato = a.sWbs ' +
    'where a.sContrato = o.sContrato and a.sIdConvenio = o.sIdConvenio and a.sNumeroActividad = o.sNumeroActividad and o.sNumeroOrden =:Orden and a.sTipoActividad = "Actividad" and a.sContrato =:Contrato and a.sIdConvenio =:Convenio ');
  Actualiza.ParamByName('Contrato').AsString := global_contrato;
  Actualiza.ParamByName('Convenio').AsString := global_convenio;
  Actualiza.ParamByName('Orden').AsString := tsNumeroOrden.Text;
  Actualiza.ExecSQL;
  Actualiza.Destroy;

  MessageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
end;

procedure TfrmActividades.mnEstructuraClick(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = False then
  begin
    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.Filtered := False;
    Connection.qryBusca2.SQL.Clear;
    Connection.qryBusca2.SQL.Add('Select Distinct sWBS From actividadesxorden ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
    Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.qryBusca2.Open;
    while not Connection.qryBusca2.Eof do
    begin
      Connection.qryBusca.Active := False;
      Connection.qryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
        'sum(dCantidad * dVentaMN) as dMontoMN, sum(dCantidad * dVentaDLL) as dMontoDLL, ' +
        'sum(dCantidad * dCostoMN) as dMontoCostoMN, sum(dCantidad * dCostoDLL) as dMontoCostoDLL From actividadesxorden ' +
        'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sWBSAnterior = :Paquete Group By sWBSAnterior');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.qryBusca.Params.ParamByName('Paquete').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Paquete').Value := Connection.qryBusca2.FieldValues['sWBS'];
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        if (not Connection.qryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.qryBusca.FieldByName('dFechaFinal').IsNull) then
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('Update actividadesxorden SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, ' +
            'dCostoMN = :MontoCostoMN, dCostoDLL = :MontoCostoDLL, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
            'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And ' +
            'sWBS = :Paquete And sTipoActividad = "Paquete"');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
          connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
          connection.zCommand.Params.ParamByName('Paquete').DataType := ftString;
          connection.zCommand.Params.ParamByName('Paquete').Value := Connection.qryBusca2.FieldValues['sWBS'];
          connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFechaInicio'];
          connection.zCommand.Params.ParamByName('Final').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFechaFinal'];
          connection.zCommand.Params.ParamByName('Ponderado').DataType := ftFloat;
          if roundTo(Connection.qryBusca.FieldValues['dPonderado'], -2) >= 100 then
            connection.zCommand.Params.ParamByName('Ponderado').Value := 100
          else
            connection.zCommand.Params.ParamByName('Ponderado').Value := Connection.qryBusca.FieldValues['dPonderado'];
          connection.zCommand.Params.ParamByName('MontoMN').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('MontoMN').Value := Connection.qryBusca.FieldValues['dMontoMN'];
          connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('MontoDLL').Value := Connection.qryBusca.FieldValues['dMontoDLL'];
          connection.zCommand.Params.ParamByName('MontoCostoMN').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('MontoCostoMN').Value := Connection.qryBusca.FieldValues['dMontoCostoMN'];
          connection.zCommand.Params.ParamByName('MontoCostoDLL').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('MontocostoDLL').Value := Connection.qryBusca.FieldValues['dMontoCostoDLL'];
          connection.zCommand.ExecSQL;
        end;
      Connection.qryBusca2.Next
    end;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.Filtered := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From actividadesxorden ' +
      'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And iNivel = 0');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
            //Actualizo la orden
      Connection.zCommand.Active := False;
      Connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('Update ordenesdetrabajo SET dFIProgramado = :Inicio, dFFProgramado = :Final ' +
        'Where sContrato = :Contrato And sNumeroOrden = :Orden');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      connection.zCommand.Params.ParamByName('Inicio').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Inicio').Value := Connection.qryBusca.FieldValues['dFechaInicio'];
      connection.zCommand.Params.ParamByName('Final').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Final').Value := Connection.qryBusca.FieldValues['dFechaFinal'];
      connection.zCommand.ExecSQL;
    end;
    ActividadesxOrden.Refresh;
  end
end;

procedure TfrmActividades.tdCostoMNChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdCostoMN, '$ Costo M.N.');
end;

procedure TfrmActividades.tdCostoMNEnter(Sender: TObject);
begin
  tdCostoMN.Color := global_color_entradaERP;
end;

procedure TfrmActividades.tdCostoMNExit(Sender: TObject);
begin
  tdCostoMN.Color := global_color_salidaERP;
end;

procedure TfrmActividades.tdCostoMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(tdCostoMN, key) then
    key := #0;
  if Key = #13 then
    tiColores.SetFocus
end;

procedure TfrmActividades.ImportarDescripcionesPreciosdelAnxoC1Click(
  Sender: TObject);
var
  pos: Tbookmark;
  QrDatos: TzReadOnlyQuery;
  error: boolean;
begin
// aqui va mi algoritmo GHH
  if Assigned(grid_actividades) and Assigned(TcxGridDBTableView(grid_actividades.ActiveView).DataController.Datasource.Dataset) then
  begin
    with grid_actividades, TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet do
    begin
      QrDatos := TzReadOnlyQuery.Create(nil);
      try
        QrDatos.Connection := connection.zConnection;
        QrDatos.SQL.Text := 'Select mDescripcion, dVentaMN, dVentaDLL,dcostomn,dcostodll, sMedida ' +
          'From actividadesxanexo Where sContrato = :Contrato And sIdConvenio = :Convenio ' +
          'and swbs=:wbs And sNumeroActividad = :Actividad and stipoactividad="Actividad" and sIdAnexo=:Anexo';
        pos := GetBookmark;
        disableControls;
        if RecordCount > 0 then
        begin
          first;
          while not EOF do
          begin

            begin
              if uppercase(fieldbyname('stipoactividad').AsString) = 'ACTIVIDAD' then
              begin
                error := false;
                try
                  try
                    QrDatos.active := false;
                    QrDatos.ParamByName('contrato').AsString := fieldbyname('scontrato').AsString;
                    QrDatos.ParamByName('convenio').AsString := fieldbyname('sidconvenio').AsString;
                    QrDatos.ParamByName('actividad').AsString := fieldbyname('snumeroactividad').AsString;
                    QrDatos.ParamByName('wbs').AsString := fieldbyname('swbscontrato').AsString;
                    QrDatos.ParamByName('Anexo').AsString := fieldbyname('sIdAnexo').AsString;
                    QrDatos.Open;
                  except
                    on e: exception do
                    begin
                      error := true;
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al Almacenar el registro', 0);
                    end;
                  end;

                  if not error then
                  begin
                    if Qrdatos.RecordCount = 1 then
                    begin
                      edit;
                      fieldbyname('mdescripcion').AsString := QrDatos.fieldbyname('mdescripcion').AsString;
                      fieldbyname('dventamn').Asfloat := QrDatos.fieldbyname('dventamn').Asfloat;
                      fieldbyname('dventadll').Asfloat := QrDatos.fieldbyname('dventadll').Asfloat;
                      fieldbyname('dcostomn').Asfloat := QrDatos.fieldbyname('dcostomn').Asfloat;
                      fieldbyname('dcostodll').Asfloat := QrDatos.fieldbyname('dcostodll').Asfloat;
                      fieldbyname('smedida').AsString := QrDatos.fieldbyname('smedida').AsString;

                      try
                        post;
                      except
                        on e: exception do
                        begin
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al Almacenar el registro', 0);
                        end;
                      end;
                    end;
                  end;

                finally
                  QrDatos.Close;
                end;
              end;
            end;
            Next;
          end;
        end;
      finally
        try
          gotobookmark(pos);
        finally
          freebookmark(pos);
        end;
        enablecontrols;
        freeandnil(QrDatos);
      end;
    end;
  end;
end;

procedure TfrmActividades.ImportaXLS(Sender: TObject);
var
  sArchivo: string;
  flcid, Fila: Integer;
  zExcel: tExcelApplication;
  zExcelLibro: tExcelWorkbook;
  zExcelHoja: tExcelWorksheet;

  sValue,
    ImpsNumeroActividad,
    ImpdCantidad,
    ImpdFechaInicio,
    ImpdFechaFinal: string;
begin
  try
    with tOpenDialog.Create(Self) do
    begin
      Title := 'Inserta Archivo de Consulta';
      if Execute then
        sArchivo := FileName
    end;

    if sArchivo <> '' then
    begin
      if ActividadesxOrden.RecordCount > 0 then
      begin
        if MessageDlg('Desea Introducir las partidas seleccionadas dentro del paquete de la Orden de Trabajo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            sWbsAnterior := ActividadesxOrden.FieldValues['sWbs'];
            sItemOrden := MidStr(ActividadesxOrden.FieldValues['iItemOrden'], 1, (ActividadesxOrden.FieldValues['iNivel'] + 1) * LongNivel);
            iNivel := ActividadesxOrden.FieldValues['iNivel'] + 1
          end
          else
          begin
            sWbsAnterior := ActividadesxOrden.FieldValues['sWbsAnterior'];
            sItemOrden := MidStr(ActividadesxOrden.FieldValues['iItemOrden'], 1, ActividadesxOrden.FieldValues['iNivel'] * LongNivel);
            iNivel := ActividadesxOrden.FieldValues['iNivel']
          end
        end
        else
        begin
          sWbsAnterior := '';
          sItemOrden := '';
        end
      end
      else
      begin
        sWbsAnterior := '';
        sItemOrden := '';
      end;

      flcid := GetUserDefaultLCID;
      zExcel := tExcelApplication.Create(Self);
      zExcel.Connect;
      zExcel.Visible[flcid] := true;
      zExcel.UserControl := true;
      try
        zExcelLibro := tExcelWorkbook.Create(Self);
        zExcelLibro.ConnectTo(zExcel.Workbooks.Open(sArchivo, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam,
          emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, emptyParam, flcid));

        zExcelHoja := tExcelWorkSheet.Create(Self);
        zExcelHoja.ConnectTo(zExcelLibro.Sheets.Item[1] as ExcelWorkSheet);
      finally
        Fila := 2;
        sValue := zExcelHoja.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        while (sValue <> '') do
        begin
                // Verifico si el Contrato y la Orden Son Iguales ...
          if (zExcelHoja.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2 = global_contrato) and
          (zExcelHoja.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2 = tsNumeroOrden.Text) then
          begin
            ImpdFechaInicio := '';
            ImpdFechaFinal := '';
            ImpsNumeroActividad := zExcelHoja.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
            ImpdCantidad := zExcelHoja.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2;
            if zExcelHoja.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2 <> '' then
              ImpdFechaInicio := DateToStr(zExcelHoja.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2);
            if zExcelHoja.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2 <> '' then
              ImpdFechaFinal := DateToStr(zExcelHoja.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2);

                    //Busco la partida en el anexo del contrato ...

            connection.QryBusca.Active := False;
            Connection.qryBusca.Filtered := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select sWbs, sNumeroActividad, sTipoActividad, sActividadAnterior from actividadesxanexo ' +
              'Where sContrato = :Contrato and sIdConvenio=:convenio and sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
            connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
            connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
            connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
            connection.QryBusca.Params.ParamByName('convenio').Value := global_Convenio;
            connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
            connection.QryBusca.Params.ParamByName('Actividad').Value := ReplaceStr(Trim(ImpsNumeroActividad), ' ', '');
            connection.QryBusca.Open;
                    // Si es ACtividad de Anexo se Registra la Partida ...
            if Connection.qryBusca.RecordCount > 0 then
              ProcIntroduceRegistro(sWbsAnterior, sItemOrden, global_contrato, global_convenio, tsNumeroOrden.Text, connection.QryBusca.FieldValues['sWbs'], connection.QryBusca.FieldValues['sNumeroActividad'], connection.QryBusca.FieldValues['sTipoActividad'], iNivel, ImpdCantidad, ImpdFechaInicio, ImpdFechaFinal, connection.QryBusca.FieldValues['sActividadAnterior'], '')
          end;
          Fila := Fila + 1;
          sValue := zExcelHoja.Range['A' + Trim(IntToStr(Fila)), 'A' + Trim(IntToStr(Fila))].Value2;
        end;

            // Modifico la fecha de los paquetes superiores ..
        if (Connection.Configuracion.FieldValues['lCalculaFecha'] = 'Si') then
          ProcRegeneraMontos(global_contrato, global_convenio, tsNumeroOrden.Text, sWbsAnterior);
        MessageDlg('Proceso Terminado.', mtInformation, [mbOk], 0);
      end;

      SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
      ActividadesxOrden.Refresh;
      try
        TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
      except
        TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
      end;

        // Cierro Todo
      zExcel.Quit;
      zExcel.Disconnect;
      zExcel.Destroy;
      zExcelLibro.Destroy;
      zExcelHoja.Destroy;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al Importar XLS', 0);
    end;
  end;
end;

procedure TfrmActividades.InsertaActividad(Sender: TObject);
var
  SavePlace: TBookmark;
  iGrid: Integer;
begin
  try
    if ActividadesxOrden.RecordCount > 0 then
    begin
      if not lYaPregunto then
        if MessageDlg('Desea Introducir las partidas seleccionadas dentro del paquete de la Orden de Trabajo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          lYaPregunto := True;
          if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            sWbsAnterior := ActividadesxOrden.FieldValues['sWbs'];
            sItemOrden := MidStr(ActividadesxOrden.FieldValues['iItemOrden'], 1, (ActividadesxOrden.FieldValues['iNivel'] + 1) * LongNivel);
            iNivel := ActividadesxOrden.FieldValues['iNivel'] + 1
          end
          else
          begin
            sWbsAnterior := ActividadesxOrden.FieldValues['sWbsAnterior'];
            sItemOrden := MidStr(ActividadesxOrden.FieldValues['iItemOrden'], 1, ActividadesxOrden.FieldValues['iNivel'] * LongNivel);
            iNivel := ActividadesxOrden.FieldValues['iNivel']
          end
        end
        else
        begin
          sWbsAnterior := '';
          sItemOrden := '';
        end
    end
    else
    begin
      sWbsAnterior := '';
      sItemOrden := '';
    end;
    SavePlace := GridActividadesxAnexo.DataSource.DataSet.GetBookmark;
    with GridActividadesxAnexo.DataSource.DataSet do
    begin
      for iGrid := 0 to GridActividadesxAnexo.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(GridActividadesxAnexo.SelectedRows.Items[iGrid]));
        if sWbsAnterior = '' then
          ProcIntroduceRegistro(sWbsAnterior, sItemOrden, global_contrato, global_convenio, tsNumeroOrden.Text, FieldValues['sWbs'], FieldValues['sNumeroActividad'], FieldValues['sTipoActividad'], iNivel, '', '', '', FieldValues['sActividadAnterior'], '')
        else
          if FieldValues['sTipoActividad'] = 'Actividad' then
            ProcIntroduceRegistro(sWbsAnterior, sItemOrden, global_contrato, global_convenio, tsNumeroOrden.Text, FieldValues['sWbs'], FieldValues['sNumeroActividad'], FieldValues['sTipoActividad'], iNivel, '', '', '', FieldValues['sActividadAnterior'], '')
      end
    end;

    // Modifico la fecha de los paquetes superiores ..
    if (Connection.Configuracion.FieldValues['lCalculaFecha'] = 'Si') then
      ProcRegeneraMontos(global_contrato, global_convenio, tsNumeroOrden.Text, sWbsAnterior);
    SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
    ActividadesxOrden.Refresh;
    try
      TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
      TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al insertar actividad', 0);
    end;
  end;
end;

procedure TfrmActividades.procBuscaPartida(Sender: TObject);
var
  sNumeroPartida: string;
begin
  if zActividadesxAnexo.RecordCount > 0 then
  begin
    sNumeroPartida := (Sender as tEdit).Text;
    zActividadesxAnexo.Locate('sNumeroActividad', sNumeroPartida, [loCaseInsensitive])
  end;
end;

procedure TfrmActividades.ProgramaDiariodelConceptodelaCia1Click(
  Sender: TObject);
begin
  ProgramarActividad();
end;

procedure TfrmActividades.ProgramarActividad();
var
  FechaInicial, FechaFinal: TDateTime;
  iNumeroDias: Integer;
  dCantidad: Double;
  dAjuste: Double;
  lProgramarDias: Boolean;
  lReprogramarDias: Boolean;
begin
  FechaInicial := 0;
  FechaFinal := 0;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('select min(dIdFecha)  as fecha from distribuciondeactividadescia  ' +
    ' where sContrato =:contrato and sNumeroOrden = :orden and sIdConvenio=:convenio ' +
    ' and sWbs=:wbs and sNumeroActividad=:actividad ');
  Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
  Connection.QryBusca.ParamByName('orden').AsString := ActividadesxOrden.FieldByName('sNumeroOrden').AsString;
  Connection.QryBusca.ParamByName('convenio').AsString := ActividadesxOrden.FieldByName('sIdConvenio').AsString;
  Connection.QryBusca.ParamByName('wbs').AsString := ActividadesxOrden.FieldByName('sWbs').AsString;
  Connection.QryBusca.ParamByName('actividad').AsString := ActividadesxOrden.FieldByName('sNumeroActividad').AsString;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
  begin
    FechaInicial := Connection.QryBusca.FieldByName('fecha').AsDateTime;
  end;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('select max(dIdFecha) as fecha  from distribuciondeactividadescia  ' +
    ' where sContrato =:contrato and sNumeroOrden = :orden and sIdConvenio=:convenio ' +
    ' and sWbs=:wbs and sNumeroActividad=:actividad    ');
  Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
  Connection.QryBusca.ParamByName('orden').AsString := ActividadesxOrden.FieldByName('sNumeroOrden').AsString;
  Connection.QryBusca.ParamByName('convenio').AsString := ActividadesxOrden.FieldByName('sIdConvenio').AsString;
  Connection.QryBusca.ParamByName('wbs').AsString := ActividadesxOrden.FieldByName('sWbs').AsString;
  Connection.QryBusca.ParamByName('actividad').AsString := ActividadesxOrden.FieldByName('sNumeroActividad').AsString;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
  begin
    FechaFinal := Connection.QryBusca.FieldByName('fecha').AsDateTime;
  end;

  lProgramarDias := False;
  lReprogramarDias := False;
//si no hay programacion diaria crearla
  if (FechaInicial = 0) or (FechaFinal = 0) then
  begin
    if MessageDlg('No existe programacion diaria para esta actividad, desea crearla ahora?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      FechaInicial := Actividadesxorden.FieldByName('dFechaInicio').AsDateTime;
      FechaFinal := Actividadesxorden.FieldByName('dFechaFinal').AsDateTime;
      iNumeroDias := DaysBetween(FechaFinal, FechaInicial) + 1;
      lProgramarDias := True;
      if Actividadesxorden.FieldByName('dCantidad').AsFloat > 0 then
        dCantidad := Actividadesxorden.FieldByName('dCantidad').AsFloat / iNumeroDias
      else
        dCantidad := 0;
    end;
  end;

//si hay programacion , pero el rango de fechas difiere del que tiene la partida actualmente
  if
    (not lProgramarDias) and
    (
    (FechaInicial <> Actividadesxorden.FieldByName('dFechaInicio').AsDateTime)
    or
    (FechaFinal <> Actividadesxorden.FieldByName('dFechaFinal').AsDateTime)
    )
    then
  begin
    if MessageDlg('La programacion actual difiere de las fechas de inicio y termino de la actividad, desea reprogramar?' + chr(10) +
      '[Las nuevas cantidades se anexan en ceros,las que estan fuera de ese rango de fechas se borran]', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      FechaInicial := Actividadesxorden.FieldByName('dFechaInicio').AsDateTime;
      FechaFinal := Actividadesxorden.FieldByName('dFechaFinal').AsDateTime;
      iNumeroDias := DaysBetween(FechaFinal, FechaInicial);
      lReprogramarDias := True;
      dCantidad := 0;
      //borrar la programacion diaria que esta arriba de la fecha maxima actual
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('delete from distribuciondeactividadescia  ' +
        ' where sContrato =:contrato and sNumeroOrden = :orden and sIdConvenio=:convenio ' +
        ' and sWbs=:wbs and sNumeroActividad=:actividad and dIdFecha >:fechamaxima');
      Connection.zCommand.ParamByName('contrato').AsString := global_contrato;
      Connection.zCommand.ParamByName('orden').AsString := ActividadesxOrden.FieldByName('sNumeroOrden').AsString;
      Connection.zCommand.ParamByName('convenio').AsString := ActividadesxOrden.FieldByName('sIdConvenio').AsString;
      Connection.zCommand.ParamByName('wbs').AsString := ActividadesxOrden.FieldByName('sWbs').AsString;
      Connection.zCommand.ParamByName('actividad').AsString := ActividadesxOrden.FieldByName('sNumeroActividad').AsString;
      Connection.zCommand.ParamByName('fechamaxima').AsDateTime := FechaFinal;
      Connection.zCommand.ExecSQL;

      //borrar la programacion diaria que esta arriba de la fecha minima actual
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('delete from distribuciondeactividadescia  ' +
        ' where sContrato =:contrato and sNumeroOrden = :orden and sIdConvenio=:convenio ' +
        ' and sWbs=:wbs and sNumeroActividad=:actividad and dIdFecha <:fechamaxima');
      Connection.zCommand.ParamByName('contrato').AsString := global_contrato;
      Connection.zCommand.ParamByName('orden').AsString := ActividadesxOrden.FieldByName('sNumeroOrden').AsString;
      Connection.zCommand.ParamByName('convenio').AsString := ActividadesxOrden.FieldByName('sIdConvenio').AsString;
      Connection.zCommand.ParamByName('wbs').AsString := ActividadesxOrden.FieldByName('sWbs').AsString;
      Connection.zCommand.ParamByName('actividad').AsString := ActividadesxOrden.FieldByName('sNumeroActividad').AsString;
      Connection.zCommand.ParamByName('fechamaxima').AsDateTime := FechaInicial;
      Connection.zCommand.ExecSQL;
    end;
  end;


  if (lProgramarDias) or (lReprogramarDias) then
  begin
    dAjuste := 0;
    while (FechaInicial <= FechaFinal) do
    begin
      if (FechaInicial = FechaFinal) and lProgramarDias then
      begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('select sum(dCantidad) as dSuma from distribuciondeactividadescia ' +
          ' where sContrato =:contrato and sNumeroOrden = :orden and sIdConvenio=:convenio ' +
          ' and sWbs=:wbs and sNumeroActividad=:actividad ');
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('orden').AsString := ActividadesxOrden.FieldByName('sNumeroOrden').AsString;
        Connection.QryBusca.ParamByName('convenio').AsString := ActividadesxOrden.FieldByName('sIdConvenio').AsString;
        Connection.QryBusca.ParamByName('wbs').AsString := ActividadesxOrden.FieldByName('sWbs').AsString;
        Connection.QryBusca.ParamByName('actividad').AsString := ActividadesxOrden.FieldByName('sNumeroActividad').AsString;
        Connection.QryBusca.Open;
        dAjuste := Connection.QryBusca.FieldByName('dSuma').AsFloat;

        dCantidad := Actividadesxorden.FieldByName('dCantidad').AsFloat - dAjuste;

        if dCantidad < 0 then dCantidad := dCantidad * (-1);
      end;
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('insert into distribuciondeactividadescia set ' +
        '  sContrato = :contrato ,' +
        '  sIdConvenio = :convenio,' +
        '  sNumeroOrden =:orden ,' +
//        '  sWbsContrato =:wbscontrato ,' +
        '  sWbs =:wbs,' +
//        '  sPaquete =:paquete,' +
        '  sNumeroActividad=:actividad,' +
//        '  sTipoActividad =:tipoactividad,' +
//        '  sIdFase =:fase,' +
        '  dIdFecha =:fecha ,' +
        '  dCantidad = :Cantidad on duplicate key update dIdFecha=:fecha');
      Connection.zCommand.ParamByName('contrato').AsString := Actividadesxorden.FieldByName('sContrato').AsString;
      Connection.zCommand.ParamByName('convenio').AsString := Actividadesxorden.FieldByName('sIdConvenio').AsString;
      Connection.zCommand.ParamByName('orden').AsString := Actividadesxorden.FieldByName('sNumeroOrden').AsString;
//      Connection.zCommand.ParamByName('wbscontrato').AsString := Actividadesxorden.FieldByName('sWbsContrato').AsString;
      Connection.zCommand.ParamByName('wbs').AsString := Actividadesxorden.FieldByName('sWbs').AsString;
//      Connection.zCommand.ParamByName('paquete').AsString := Actividadesxorden.FieldByName('sPaquete').AsString;
      Connection.zCommand.ParamByName('actividad').AsString := Actividadesxorden.FieldByName('sNumeroActividad').AsString;
//      Connection.zCommand.ParamByName('fase').AsString := Actividadesxorden.FieldByName('sIdFase').AsString;
//      Connection.zCommand.ParamByName('tipoactividad').AsString := Actividadesxorden.FieldByName('sTipoActividad').AsString;
      Connection.zCommand.ParamByName('fecha').AsDateTime := FechaInicial;
      Connection.zCommand.ParamByName('Cantidad').AsFloat := dCantidad;
      Connection.zCommand.ExecSql;
      FechaInicial := incday(FechaInicial);
    end

  end;

//  application.CreateForm(TfrmProgramacionActividadxOrden, frmProgramacionActividadxOrden);
//
//  frmProgramacionActividadxOrden.QryDetalle.Active := False;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('contrato').AsString := Actividadesxorden.FieldByName('sContrato').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('convenio').AsString := Actividadesxorden.FieldByName('sIdConvenio').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('orden').AsString := Actividadesxorden.FieldByName('sNumeroOrden').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('wbs').AsString := Actividadesxorden.FieldByName('sWbs').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('actividad').AsString := Actividadesxorden.FieldByName('sNumeroActividad').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('isometrico').AsString := Actividadesxorden.FieldByName('sIsometrico').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.ParamByName('empleado').AsString := Actividadesxorden.FieldByName('sIdEmpleado').AsString;
//  frmProgramacionActividadxOrden.QryDetalle.Open;
//
//  frmProgramacionActividadxOrden.lblDescripcion.Caption := Actividadesxorden.FieldByName('mDescripcion').AsString;
//  frmProgramacionActividadxOrden.FechaInicial.Caption := datetostr(Actividadesxorden.FieldByName('dFechaInicio').AsDateTime);
//  frmProgramacionActividadxOrden.FechaFinal.Caption := datetostr(Actividadesxorden.FieldByName('dFechaFinal').AsDateTime);
//  frmProgramacionActividadxOrden.lblPartida.Caption := Actividadesxorden.FieldByName('sNumeroActividad').AsString;
//
//
//  frmProgramacionActividadxOrden.Visible := False;
//  frmProgramacionActividadxOrden.ShowModal;

  application.CreateForm(TfrmProgramacionPartidasCia, frmProgramacionPartidasCia);

  frmProgramacionPartidasCia.QryDetalle.Active := False;
  frmProgramacionPartidasCia.QryDetalle.SQL.Clear;
  frmProgramacionPartidasCia.QryDetalle.SQL.Add('select * from distribuciondeactividadescia where ' +
    ' sContrato=:contrato ' +
    ' and sNumeroOrden=:orden ' +
    ' and sIdConvenio=:convenio ' +
    ' and sWbs=:wbs ' +
    ' and sNumeroActividad=:actividad ' +
    ' order by dIdFecha ');

  frmProgramacionPartidasCia.QryDetalle.ParamByName('contrato').AsString := Actividadesxorden.FieldByName('sContrato').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('convenio').AsString := Actividadesxorden.FieldByName('sIdConvenio').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('orden').AsString := Actividadesxorden.FieldByName('sNumeroOrden').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('wbs').AsString := Actividadesxorden.FieldByName('sWbs').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('actividad').AsString := Actividadesxorden.FieldByName('sNumeroActividad').AsString;
  frmProgramacionPartidasCia.QryDetalle.Open;

  frmProgramacionPartidasCia.lblDescripcion.Caption := Actividadesxorden.FieldByName('mDescripcion').AsString;
  frmProgramacionPartidasCia.FechaInicial.Caption := datetostr(Actividadesxorden.FieldByName('dFechaInicio').AsDateTime);
  frmProgramacionPartidasCia.FechaFinal.Caption := datetostr(Actividadesxorden.FieldByName('dFechaFinal').AsDateTime);
  frmProgramacionPartidasCia.lblPartida.Caption := Actividadesxorden.FieldByName('sNumeroActividad').AsString;


  frmProgramacionPartidasCia.Visible := False;
  frmProgramacionPartidasCia.ShowModal;

  frmProgramacionPartidasCia.Destroy;

end;

procedure TfrmActividades.InsertarConceptosClick(Sender: TObject);
var
  myForm: TForm;
  zDSActividadesxAnexo: tDataSource;
  sPaquete: string;
begin
  if tsNumeroOrden.Text <> '' then
    if (ActividadesxOrden.State <> dsInsert) or (ActividadesxOrden.State <> dsEdit) then
    begin
      lYaPregunto := False;
      if ActividadesxOrden.RecordCount > 0 then
        if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
          sPaquete := ActividadesxOrden.FieldValues['sWbs']
        else
          sPaquete := ActividadesxOrden.FieldValues['sWbsAnterior']
      else
        sPaquete := '';

      myForm := TForm.Create(Self);
      try
        myForm.Position := poDesktopCenter;
        myForm.Caption := 'Insertar Conceptos del Contrato Principal en el Paquete No. ' + sPaquete + ' "' + tsPaquete.Text + '"';
        MyForm.BorderIcons := [];
        MyForm.Width := 1200;
        MyForm.Height := 480;
        MyForm.BorderStyle := bsSizeable;
        MyForm.Color := $00FEC6BA;

        zActividadesxAnexo := TZReadOnlyQuery.Create(nil);
        zActividadesxAnexo.Connection := connection.zConnection;
        zActividadesxAnexo.Active := False;
        zActividadesxAnexo.Sql.Clear;
        zActividadesxAnexo.Sql.Add('Select *, sNumeroActividad as sSpacesNumeroActividad, SubStr(mDescripcion, 1, 255) as sDescripcion From actividadesxanexo ' +
          'where sContrato = :contrato And sIdConvenio = :Convenio Order By iItemOrden');
        zActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
        zActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato;
        zActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
        zActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio;
        zActividadesxAnexo.Open;
        zDSActividadesxAnexo := tDataSource.Create(nil);
        zDSActividadesxAnexo.DataSet := zActividadesxAnexo;

        GridActividadesxAnexo := TRxDBGrid.Create(MyForm);
        with GridActividadesxAnexo do
        begin
          Parent := myForm;
          Visible := True;
          Align := alCustom;
          Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect];
          TitleButtons := True;
          DataSource := zDSActividadesxAnexo;
          Width := 1200;
          Height := 430;
          Anchors := [akLeft, akTop, akRight, akBottom];
          ParentColor := True;
          Ctl3D := False;

          Columns.Clear;
          Columns.Add;
          Columns[0].FieldName := 'sSpacesNumeroActividad';
          Columns[0].Width := 70;
          Columns[0].Title.Caption := 'Actividad';
          Columns[0].ReadOnly := True;
          Columns[0].Font.Style := [fsBold];
          Columns[0].Font.Color := clBlue;
          Columns.Add;
          Columns[1].FieldName := 'sActividadAnterior';
          Columns[1].Width := 70;
          Columns[1].Title.Caption := 'Act. Anterior';
          Columns[1].ReadOnly := True;
          Columns[1].Font.Style := [fsBold];
          Columns.Add;
          Columns[2].FieldName := 'sDescripcion';
          Columns[2].Width := 680;
          Columns[2].Title.Caption := 'Descripcion';
          Columns[2].ReadOnly := True;
          Columns[2].Font.Style := [];
          Columns.Add;
          Columns[3].FieldName := 'dFechaInicio';
          Columns[3].Width := 60;
          Columns[3].Title.Caption := 'F. Inicio';
          Columns[3].Font.Style := [];
          Columns.Add;
          Columns[4].FieldName := 'dFechaFinal';
          Columns[4].Width := 60;
          Columns[4].Title.Caption := 'F. Final';
          Columns[4].Title.Alignment := taRightJustify;
          Columns[4].Font.Style := [];
          Columns.Add;
          Columns[5].FieldName := 'dCantidadAnexo';
          Columns[5].Width := 70;
          Columns[5].Title.Caption := 'Cant. a Inst.';
          Columns[5].Title.Alignment := taRightJustify;
          Columns[5].Font.Style := [];
          Columns.Add;
          Columns[6].FieldName := 'sMedida';
          Columns[6].Width := 60;
          Columns[6].Title.Caption := 'U. Medida';
          Columns[6].Title.Alignment := taRightJustify;
          Columns[6].Font.Style := [];
          Columns.Add;
          Columns[7].FieldName := 'sAnexo';
          Columns[7].Width := 60;
          Columns[7].Title.Caption := 'Anexo';
          Columns[7].Title.Alignment := taRightJustify;
          Columns[7].Font.Style := [];
          Columns.Add;
          Columns[8].FieldName := 'dVentaMN';
          Columns[8].Width := 70;
          Columns[8].Title.Caption := '$ Precio MN';
          Columns[8].Title.Alignment := taRightJustify;
          Columns[8].Font.Style := [];
          Columns.Add;
          Columns[9].FieldName := 'dPonderado';
          Columns[9].Width := 70;
          Columns[9].Title.Caption := '% Ponderado';
          Columns[9].Title.Alignment := taRightJustify;
          Columns[9].Font.Style := [];
        end;

        with TButton.Create(Self) do
        begin
          Left := 10;
          Top := 440;
          Width := 120;
          Height := 35;
          Default := True;
          Parent := MyForm;
          Caption := 'Importar File XLS';
          OnClick := ImportaXLS;
          Anchors := [akLeft, akBottom];
        end;

        with TButton.Create(Self) do
        begin
          Left := 140;
          Top := 440;
          Width := 120;
          Height := 35;
          Default := True;
          Parent := MyForm;
          Caption := 'Insertar Partidas';
          OnClick := InsertaActividad;
          Anchors := [akLeft, akBottom];
        end;

        with TButton.Create(Self) do
        begin
          Left := 270;
          Top := 440;
          Width := 120;
          Height := 35;
          ModalResult := mrCancel;
          Cancel := True;
          Parent := MyForm;
          Caption := 'Cancelar Inserccion';
          Anchors := [akLeft, akBottom];
        end;

        with TLabel.Create(Self) do
        begin
          Left := 1000;
          Top := 455;
          Width := 120;
          Height := 35;
          Parent := MyForm;
          Caption := 'Buscar ...:';
          Anchors := [akRight, akBottom];
        end;
        with TEdit.Create(Self) do
        begin
          Left := 1060;
          Top := 450;
          Width := 130;
          Height := 35;
          Parent := MyForm;
          Anchors := [akRight, akBottom];
          OnChange := procBuscaPartida;
        end;
        myForm.ShowModal;
      finally
        zActividadesxAnexo.Destroy;
        zDSActividadesxAnexo.Destroy;
        GridActividadesxAnexo.Destroy;
        Paquetes.Refresh;
        myForm.Free;
      end;
    end;
end;

procedure TfrmActividades.ActividadesxOrdensTipoActividadChange(
  Sender: TField);
begin
  if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
    tlGerencial.Enabled := True
  else
    tlGerencial.Enabled := False
end;

procedure TfrmActividades.Actividadesxfrentedetrabajo1Click(
  Sender: TObject);

begin
  if not FileExists(global_files + global_miReporte + '_ActividadesxOt.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_ActividadesxOt.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  QryConcentradoOt.Active := False;
  QryConcentradoOt.SQL.Clear;
  QryConcentradoOt.SQL.Add('select e.sNumeroActividad, e.sNumeroOrden, e.sMedida, e.dCantidad, e.dVentaMn from actividadesxorden e ' +
    'inner join actividadesxanexo a on (e.sContrato = a.sContrato and a.sIdConvenio = "" and e.sNumeroActividad = a.sNumeroActividad ' +
    'and a.sTipoActividad = "Actividad") ' +
    'Where e.sContrato = :Contrato And a.sTipoActividad="Actividad" And e.sIdConvenio = :Convenio order by a.iItemOrden, e.sNumeroOrden');
  QryConcentradoOt.Params.ParamByName('contrato').DataType := ftString;
  QryConcentradoOt.Params.ParamByName('contrato').Value := global_contrato;
  QryConcentradoOt.Params.ParamByName('convenio').DataType := ftString;
  QryConcentradoOt.Params.ParamByName('convenio').Value := global_convenio;
  QryConcentradoOt.Open;

  frxReporte.PreviewOptions.MDIChild := False;
  frxReporte.PreviewOptions.Modal := True;
  frxReporte.PreviewOptions.Maximized := lCheckMaximized();
  frxReporte.PreviewOptions.ShowCaptions := False;
  frxReporte.Previewoptions.ZoomMode := zmPageWidth;
  frxReporte.LoadFromFile(global_files +global_MiReporte+ '_Actividadesxot.fr3');
  frxReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

end;

procedure TfrmActividades.ReprogramacionesdelContrato1Click(
  Sender: TObject);
var
  myForm: TForm;
  zHistorico: TZReadOnlyQuery;
  zDSHistorico: tDataSource;
  GridHistorico: TRxDBGrid;
begin
  if tsNumeroOrden.Text <> '' then
    if (ActividadesxOrden.State <> dsInsert) or (ActividadesxOrden.State <> dsEdit) then
      if ActividadesxOrden.FieldValues['sTipoActividad'] <> 'Paquete' then
      begin
        myForm := TForm.Create(Self);
        try
          myForm.Position := poDesktopCenter;
          myForm.Caption := 'Historial del Concepto Seleccionado';
          MyForm.BorderIcons := [];
          MyForm.Width := 800;
          MyForm.Height := 280;
          MyForm.BorderStyle := bsSingle;
          MyForm.Color := $00FEC6BA;

          zHistorico := TZReadOnlyQuery.Create(nil);
          zHistorico.Connection := connection.zConnection;
          zHistorico.Active := False;
          zHistorico.Sql.Clear;
          zHistorico.Sql.Add('Select c.sDescripcion, a.sIdConvenio, a.dFechaInicio, a.dFechaFinal, a.dCantidad, a.dVentaMN, a.dVentaDLL, a.dPonderado From actividadesxorden a ' +
            'INNER JOIN convenios c ON (a.sContrato = c.sContrato And a.sIdConvenio = c.sIdConvenio) ' +
            'Where a.sContrato = :Contrato And a.sNumeroOrden = :Orden And a.sWbs = :Wbs And a.sNumeroActividad = :Actividad And a.sTipoActividad <> "Paquete" Order By c.dFecha ');
          zHistorico.Params.ParamByName('Contrato').DataType := ftString;
          zHistorico.Params.ParamByName('Contrato').Value := global_contrato;
          zHistorico.Params.ParamByName('Orden').DataType := ftString;
          zHistorico.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
          zHistorico.Params.ParamByName('Wbs').DataType := ftString;
          zHistorico.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
          zHistorico.Params.ParamByName('Actividad').DataType := ftString;
          zHistorico.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
          zHistorico.Open;
          zDSHistorico := tDataSource.Create(nil);
          zDSHistorico.DataSet := zHistorico;

          GridHistorico := TRxDBGrid.Create(MyForm);
          with GridHistorico do
          begin
            Parent := myForm;
            Visible := True;
            Align := alCustom;
            Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
            TitleButtons := True;
            DataSource := zDSHistorico;
            Width := 800;
            Height := 230;
            Anchors := [akLeft, akTop, akRight, akBottom];
            ParentColor := True;
            Ctl3D := False;

            Columns.Clear;
            Columns.Add;
            Columns[0].FieldName := 'sIdConvenio';
            Columns[0].Width := 50;
            Columns[0].Title.Caption := '#';
            Columns.Add;
            Columns[1].FieldName := 'sDescripcion';
            Columns[1].Width := 350;
            Columns[1].Title.Caption := 'Nombre de Convenio';
            Columns.Add;
            Columns[2].FieldName := 'dFechaInicio';
            Columns[2].Width := 70;
            Columns[2].Title.Caption := 'F. Inicio';
            Columns.Add;
            Columns[3].FieldName := 'dFechaFinal';
            Columns[3].Width := 70;
            Columns[3].Title.Caption := 'F. Final';
            Columns.Add;
            Columns[4].FieldName := 'dCantidad';
            Columns[4].Width := 70;
            Columns[4].Title.Caption := 'Cant. a Inst.';
            Columns[4].Title.Alignment := taRightJustify;
            Columns.Add;
            Columns[5].FieldName := 'dVentaMN';
            Columns[5].Width := 70;
            Columns[5].Title.Caption := '$ Precio MN';
            Columns[5].Title.Alignment := taRightJustify;
            Columns.Add;
            Columns[6].FieldName := 'dPonderado';
            Columns[6].Width := 70;
            Columns[6].Title.Caption := '% Ponderado';
            Columns[6].Title.Alignment := taRightJustify;
          end;

          with TButton.Create(Self) do
          begin
            Left := 340;
            Top := 210;
            Width := 120;
            Height := 35;
            ModalResult := mrCancel;
            Cancel := True;
            Parent := MyForm;
            Caption := 'Cerra Consulta'
          end;

          myForm.ShowModal;
        finally
          zHistorico.Destroy;
          zDSHistorico.Destroy;
          GridHistorico.Destroy;
          myForm.Free;
        end;
      end;
end;


procedure TfrmActividades.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;

//*************************************BRITO 25-03-11***************************

procedure TfrmActividades.PopUpNuevoRegistro;
var
  myForm: TForm;
  zDSActividadesxAnexo: tDataSource;
  sPaquete: string;
begin
  try
    if tsNumeroOrden.Text <> '' then
      if (ActividadesxOrden.State <> dsInsert) or (ActividadesxOrden.State <> dsEdit) then
      begin
                //lYaPregunto := False ;
        if ActividadesxOrden.RecordCount > 0 then
          if ActividadesxOrden.FieldValues['sTipoActividad'] = 'Paquete' then
            sPaquete := ActividadesxOrden.FieldValues['sWbs']
          else
            sPaquete := ActividadesxOrden.FieldValues['sWbsAnterior']
        else
          sPaquete := '';

        myForm := TForm.Create(Self);
        try
          myForm.Position := poDesktopCenter;
          myForm.Caption := 'Insertar Concepto del Contrato Principal en el Paquete No. ' + sPaquete + ' "' + sPaqueteDesc + '"';
          MyForm.BorderIcons := [];
          MyForm.Width := 1200;
          MyForm.Height := 480;
          MyForm.BorderStyle := bsSizeable;
          MyForm.Color := $00FEC6BA;

          zActividadesxAnexo := TZReadOnlyQuery.Create(nil);
          zActividadesxAnexo.Connection := connection.zConnection;
          zActividadesxAnexo.Active := False;
          zActividadesxAnexo.Sql.Clear;
          zActividadesxAnexo.Sql.Add('Select *, sNumeroActividad as sSpacesNumeroActividad, SubStr(mDescripcion, 1, 255) as sDescripcion From actividadesxanexo ' +
            'where sContrato = :contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" Order By iItemOrden');
          zActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
          zActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato;
          zActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
          zActividadesxAnexo.Params.ParamByName('Convenio').Value := global_convenio;
          zActividadesxAnexo.Open;
          zDSActividadesxAnexo := tDataSource.Create(nil);
          zDSActividadesxAnexo.DataSet := zActividadesxAnexo;

          GridActividadesxAnexo := TRxDBGrid.Create(MyForm);
          with GridActividadesxAnexo do
          begin
            Parent := myForm;
            Visible := True;
            Align := alCustom;
            Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit];
            TitleButtons := True;
            DataSource := zDSActividadesxAnexo;
            Width := 1200;
            Height := 430;
            Anchors := [akLeft, akTop, akRight, akBottom];
            ParentColor := True;
            Ctl3D := False;

            Columns.Clear;
            Columns.Add;
            Columns[0].FieldName := 'sAnexo';
            Columns[0].Width := 60;
            Columns[0].Title.Caption := 'Anexo';
            Columns[0].Title.Alignment := taRightJustify;
            Columns[0].Font.Style := [];
            Columns.Add;
            Columns[1].FieldName := 'sSpacesNumeroActividad';
            Columns[1].Width := 70;
            Columns[1].Title.Caption := 'Actividad';
            Columns[1].ReadOnly := True;
            Columns[1].Font.Style := [fsBold];
            Columns[1].Font.Color := clBlue;
            Columns.Add;
            Columns[2].FieldName := 'sDescripcion';
            Columns[2].Width := 600;
            Columns[2].Title.Caption := 'Descripcion';
            Columns[2].ReadOnly := True;
            Columns[2].Font.Style := [];
            Columns.Add;
            Columns[3].FieldName := 'dFechaInicio';
            Columns[3].Width := 60;
            Columns[3].Title.Caption := 'F. Inicio';
            Columns[3].Font.Style := [];
            Columns.Add;
            Columns[4].FieldName := 'dFechaFinal';
            Columns[4].Width := 60;
            Columns[4].Title.Caption := 'F. Final';
            Columns[4].Title.Alignment := taRightJustify;
            Columns[4].Font.Style := [];
            Columns.Add;
            Columns[5].FieldName := 'dCantidadAnexo';
            Columns[5].Width := 70;
            Columns[5].Title.Caption := 'Cant. a Inst.';
            Columns[5].Title.Alignment := taRightJustify;
            Columns[5].Font.Style := [];
            Columns.Add;
            Columns[6].FieldName := 'sMedida';
            Columns[6].Width := 60;
            Columns[6].Title.Caption := 'U. Medida';
            Columns[6].Title.Alignment := taRightJustify;
            Columns[6].Font.Style := [];
            Columns.Add;
            Columns[7].FieldName := 'dVentaMN';
            Columns[7].Width := 70;
            Columns[7].Title.Caption := '$ Precio MN';
            Columns[7].Title.Alignment := taRightJustify;
            Columns[7].Font.Style := [];
            Columns.Add;
            Columns[8].FieldName := 'dPonderado';
            Columns[8].Width := 70;
            Columns[8].Title.Caption := '% Ponderado';
            Columns[8].Title.Alignment := taRightJustify;
            Columns[8].Font.Style := [];
          end;

          with TButton.Create(Self) do
          begin
            Left := 10;
            Top := 440;
            Width := 120;
            Height := 30;
            ModalResult := mrOk;
            Default := True;
            Parent := MyForm;
            Caption := 'Nuevo Paquete';
            OnClick := NuevoPaquete;
            Anchors := [akLeft, akBottom];
          end;

          with TButton.Create(Self) do
          begin
            Left := 140;
            Top := 440;
            Width := 120;
            Height := 30;
            ModalResult := mrOk;
            Default := True;
            Parent := MyForm;
            Caption := 'Seleccionar Partida';
            OnClick := SeleccionarNuevaActividad;
            Anchors := [akLeft, akBottom];
          end;

          with TButton.Create(Self) do
          begin
            Left := 270;
            Top := 440;
            Width := 120;
            Height := 30;
            ModalResult := mrCancel;
            Cancel := True;
            Parent := MyForm;
            Caption := 'Cancelar Seleccion';
            Anchors := [akLeft, akBottom];
          end;

          with TLabel.Create(Self) do
          begin
            Left := 1000;
            Top := 455;
            Width := 120;
            Height := 30;
            Parent := MyForm;
            Caption := 'Buscar ...:';
            Anchors := [akRight, akBottom];
          end;
          with TEdit.Create(Self) do
          begin
            Left := 1060;
            Top := 450;
            Width := 130;
            Height := 30;
            Parent := MyForm;
            Anchors := [akRight, akBottom];
            OnChange := procBuscaPartida;
          end;
          if myForm.ShowModal = mrOk then
          begin
            tsPaquete.SetFocus;
          end
          else begin
            frmBarra1.btnCancel.Click
          end;
        finally
          zActividadesxAnexo.Destroy;
          zDSActividadesxAnexo.Destroy;
          GridActividadesxAnexo.Destroy;
          Paquetes.Refresh;
          myForm.Free;
        end;
      end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos/Partidas x Frente de Trabajo', 'Al mostrar ventana de nuevo registro', 0);
    end;
  end;
end;
//*************************************BRITO 25-03-11***************************

//*************************************BRITO 25-03-11***************************

procedure TfrmActividades.SeleccionarNuevaActividad(Sender: TObject);
begin
  with GridActividadesxAnexo.DataSource.DataSet do
  begin
    ActividadesxOrden.FieldValues['sWbsContrato'] := FieldValues['sWbs'];
    ActividadesxOrden.FieldValues['sNumeroActividad'] := FieldValues['sNumeroActividad'];
    ActividadesxOrden.FieldValues['sWbsAnterior'] := sPaquete;
    ActividadesxOrden.FieldValues['mDescripcion'] := FieldValues['mDescripcion'];
    ActividadesxOrden.FieldValues['sMedida'] := FieldValues['sMedida'];
    ActividadesxOrden.FieldValues['sActividadAnterior'] := FieldValues['sActividadAnterior'];
    ActividadesxOrden.FieldValues['dVentaMN'] := FieldValues['dVentaMN'];
    ActividadesxOrden.FieldValues['dCostoMN'] := FieldValues['dCostoMN'];
    ActividadesxOrden.FieldValues['sTipoAnexo'] := FieldValues['sTipoAnexo'];
    ActividadesxOrden.FieldValues['sAnexo'] := FieldValues['sAnexo'];
    ActividadesxOrden.FieldValues['sTipoAnexo'] := FieldValues['sTipoAnexo'];
       {Ahora creamos el itemorden...}
    ActividadesxOrden.FieldValues['iItemOrden'] := OrdenPaqueteItem + sFnBuscaItem(FieldValues['sNumeroActividad'],
      sPaquete,
      OrdenPaqueteItem,
      FieldValues['sTipoActividad'], tsNumeroOrden.Text, 'actividadesxorden',
      OrdenPaqueteNivel + 1);
    if FieldValues['sTipoActividad'] = 'Paquete' then
      ActividadesxOrden.FieldValues['sWbs'] := sPaquete + '.' + FieldValues['sNumeroActividad']
    else
    begin
      if FieldValues['sAnexo'] <> '' then
        ActividadesxOrden.FieldValues['sWbs'] := sPaquete + '.' + FieldValues['sAnexo'] + '.' + FieldValues['sNumeroActividad']
      else
        ActividadesxOrden.FieldValues['sWbs'] := sPaquete + '.' + FieldValues['sNumeroActividad'];
    end;

  end;
  ActividadesxOrden.FieldValues['sTipoActividad'] := 'Actividad';
  tsPaquete.Enabled := True;
  tmDescripcion.Enabled := False;
  tsNumeroActividad.Enabled := False;
  tdCostoMN.Enabled := False;
  tdVentaMN.Enabled := False;
  sTipoPU.Enabled := True;
  sTipoADM.Enabled := True;
  tsUnidad.Enabled := False;
end;

//*************************************BRITO 25-03-11***************************

procedure TfrmActividades.NuevoPaquete(Sender: TObject);
begin
  ActividadesxOrden.FieldValues['sTipoActividad'] := 'Paquete';
  ActividadesxOrden.FieldValues['sWbsContrato'] := SwbsPrincipal(global_contrato, global_convenio, 'Paquete', '', connection.zConnection); //'*';
  ActividadesxOrden.FieldValues['sWbsAnterior'] := sPaquete;

  tsUnidad.Enabled := False;
  tdVentaMn.Enabled := False;
  tdCostoMn.Enabled := False;
  sTipoPU.Enabled := False;
  sTipoADM.Enabled := False;
end;


procedure TfrmActividades.OocionesdeEdicion1Click(Sender: TObject);
begin

end;

{soad -> Funcion implementada para actualizar las Wbs de las partidas en toda la Base de Datos..}

procedure TfrmActividades.BuscaWbs(dParamWbsAnt: string; dParamActividadAnt: string; dParamWbs: string; dParamOrden: string; dParamTipo: string; dParamMensaje: boolean);
var
  tabla, sWbs, cadena: string;
  datos: array[1..20, 1..2] of string;
  i, x: Integer;
  mensaje: string;
begin
     {Asignacion de datos a la tabla}
     {Convenio,Orden,Wbs,Actividad }
  datos[1][1] := 'ordenes_programamensual';
  datos[2][1] := 'distribuciondeactividades';
  datos[3][1] := 'bitacoradepaquetes';
  datos[4][1] := 'ganttavances';
  datos[5][1] := 'avancesxactividad';
  datos[6][1] := 'comentariosxanexo';

     {Orden,Wbs,Actividad}
  datos[7][1] := 'bitacoradeactividades';
  datos[8][1] := 'estimacionxpartidaprov';
  datos[9][1] := 'estimacionxpartida';
  datos[10][1] := 'presupuestosxpartida';
  datos[11][1] := 'estimapersonal';
  datos[12][1] := 'bitacoragerencial';
  datos[13][1] := 'anexo_prequisicion';
  datos[14][1] := 'bitacoradesalida';

  i := 14;
     // Actualiza todos los registros..
  if i > 1 then
  begin
    progreso.Visible := True;
    progreso.Min := 1;
    progreso.Position := 1;
    progreso.Max := i;
    for x := 1 to i do
    begin
      tabla := datos[x][1];

      if (x >= 1) and (x <= 6) then
      begin
        cadena := ' set sWbs =:Wbs ';
        sWbs := ' and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:WbsAnt and sNumeroActividad =:Actividad ';
      end;

      if (x = 3) and (dParamTipo = 'Paquete') then
      begin
        cadena := ' set sWbs =:Wbs ';
        sWbs := ' and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:WbsAnt and sNumeroActividad =:Actividad ';
      end
      else
        if (x = 3) and (dParamTipo = 'Actividad') then
          tabla := datos[x - 1][1]; //con esto no entramos a la tabla bitacoradepaquetes..

      if (x >= 7) and (x <= 14) then
      begin
        cadena := ' set sWbs =:Wbs ';
        sWbs := ' and sNumeroOrden =:Orden and sWbs =:WbsAnt and sNumeroActividad =:Actividad ';
      end;

      connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('update ' + tabla + cadena + ' where sContrato =:Contrato ' + sWbs);
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('WbsAnt').DataType := ftString;
      connection.qryBusca.Params.ParamByName('WbsAnt').Value := dParamWbsAnt;
      connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := dParamActividadAnt;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := dParamOrden;

      if (x >= 1) and (x <= 6) then
      begin
        connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      end;
      connection.qryBusca.ExecSQL;
      progreso.Position := progreso.Position + x;
    end;

  end;
  if dParamMensaje then
    messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
  label9.Visible := False;
  progreso.Visible := False;
end;

function TfrmActividades.SumaCantidades(): boolean;
var
  dCantidad: double;
begin
  SumaCantidades := True;
     {Primero sumamos las cantidades de Cada Frente de trabajo..}
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dCantidad) as dCantidad from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sWbsContrato =:WbsContrato and sNumeroActividad =:Actividad and sTipoActividad = "Actividad"  ' +
    'and (sWbs <> :Wbs and sNumeroOrden =:Orden) group by sContrato ');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
  connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
  connection.qryBusca.Params.ParamByName('WbsContrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('WbsContrato').Value := actividadesxorden.FieldValues['sWbsContrato'];
  connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Wbs').Value := actividadesxorden.FieldValues['sWbs'];
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
  connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Actividad').Value := actividadesxorden.FieldValues['sNumeroActividad'];
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    dCantidad := connection.qryBusca.FieldValues['dCantidad']
  else
    dCantidad := 0;

  dCantidad := dCantidad + tdCantidad.Value;

     {Primero buscamos la cantidad de Anexo de la partida..}
  connection.qryBusca2.Active := False;
  connection.qryBusca2.SQL.Clear;
  connection.qryBusca2.SQL.Add('Select dCantidadAnexo from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad = "Actividad" ');
  connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
  connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString;
  connection.qryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
  connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString;
  connection.qryBusca2.Params.ParamByName('Wbs').Value := actividadesxorden.FieldValues['sWbsContrato'];
  connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString;
  connection.qryBusca2.Params.ParamByName('Actividad').Value := actividadesxorden.FieldValues['sNumeroActividad'];
  connection.qryBusca2.Open;

  if connection.qryBusca2.RecordCount > 0 then
    if dCantidad > connection.QryBusca2.FieldValues['dCantidadAnexo'] then
    begin
      messageDLG('La cantidad de Anexo para el Concepto / Partida ' + actividadesxorden.FieldValues['sNumeroActividad'] +
        ' es menor a la suma de los Frentes. Cant. Anexo = ' + FloatToStr(connection.QryBusca2.FieldValues['dCantidadAnexo']) +
        ' Suma Frentes = ' + FloatToStr(dCantidad), mtInformation, [mbOk], 0);
      SumaCantidades := False;
    end;

end;

end.

