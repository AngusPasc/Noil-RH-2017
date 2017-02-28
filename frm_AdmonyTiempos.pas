unit frm_AdmonyTiempos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  frxClass, frxDBSet, DB, StrUtils, Global, frm_connection, StdCtrls, ExtCtrls, Mask, frm_barra,
  DBCtrls, Grids, DBGrids, ADODB, RxLookup, Buttons, ZAbstractTable, DateUtils,
  RXToolEdit, RXCurrEdit, RXDBCtrl, Utilerias, RxMemDS, udbgrid, unitexcepciones, ClipBrd,
  unitTbotonesPermisos, UnitValidaTexto, unitactivapop, DBDateTimePicker, UnitValidacion,
  AdvGlowButton, RxDBComb, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmAdmonyTiempos = class(TForm)
   pgAdmon: TPageControl;
    movembarcacion: TTabSheet;
    ConClimatologicas: TTabSheet;
    arriboembarcaciones: TTabSheet;
    ds_Clasificaciones: TDataSource;
    ds_movimientosdeembarcacion: TDataSource;
    dbMovimientos: TfrxDBDataset;
    dbOtrosMovimientos: TfrxDBDataset;
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
    frmBarra2: TfrmBarra;
    Clasificaciones: TZReadOnlyQuery;
    Fases: TZReadOnlyQuery;
    ds_Fases: TDataSource;
    MovimientosdeBarco: TZQuery;
    frmBarra1: TfrmBarra;
    ds_Embarcaciones: TDataSource;
    movimientosdeembarcacion: TZQuery;
    ds_MovimientosdeBarcos: TDataSource;
    dsCondicionesClimatologicas: TDataSource;
    qryCondicionesClimatologicas: TZQuery;
    frmBarra3: TfrmBarra;
    dsDirecciones: TDataSource;
    qryDirecciones: TZQuery;
    qryCondicionesClimatologicasCalcCondiciones: TStringField;
    qryCondicionesClimatologicascalcDireccion: TStringField;
    qryCondiciones: TZQuery;
    dsCondiciones: TDataSource;
    qryCondicionesClimatologicassContrato: TStringField;
    qryCondicionesClimatologicasdIdFecha: TDateField;
    qryCondicionesClimatologicassIdTurno: TStringField;
    qryCondicionesClimatologicasmPronostico: TMemoField;
    qryCondicionesClimatologicassHorario: TStringField;
    qryCondicionesClimatologicasdCantidad: TFloatField;
    frmBarra4: TfrmBarra;
    qryRecursos: TZQuery;
    dsRecursos: TDataSource;
    qryRecursosCalcMezclas: TStringField;
    qryRecursossContrato: TStringField;
    qryRecursosdIdFecha: TDateField;
    qryRecursossIdTurno: TStringField;
    qryRecursosdProduccion: TFloatField;
    qryRecursosdRecibido: TFloatField;
    qryRecursosdConsumo: TFloatField;
    qryRecursosdConsumoEquipos: TFloatField;
    qryRecursosdPrestamos: TFloatField;
    qryRecursosdExistenciaActual: TFloatField;
    qryRecursosCalcMezclasMedidas: TStringField;
    dsMezclas: TDataSource;
    qryMezclas: TZQuery;
    qryRecursosdExistenciaAnterior: TFloatField;
    qryRecursosdAcumulado: TFloatField;
    Embarcaciones: TZReadOnlyQuery;
    fReporte: TfrxReport;
    qryCondicionesClimatologicasCalcCMedida: TStringField;
    qryRecursosiIdRecursoExistencia: TLargeintField;
    MovimientosdeBarcosContrato: TStringField;
    MovimientosdeBarcodIdFecha: TDateField;
    MovimientosdeBarcosIdDepartamento: TStringField;
    MovimientosdeBarcosClasificacion: TStringField;
    MovimientosdeBarcosIdFase: TStringField;
    MovimientosdeBarcosHoraInicio: TStringField;
    MovimientosdeBarcosHoraFinal: TStringField;
    MovimientosdeBarcosFactor: TStringField;
    MovimientosdeBarcomDescripcion: TMemoField;
    MovimientosdeBarcosIdEmbarcacion: TStringField;
    movimientosdeembarcacionsContrato: TStringField;
    movimientosdeembarcaciondIdFecha: TDateField;
    movimientosdeembarcacionsIdDepartamento: TStringField;
    movimientosdeembarcacionsIdEmbarcacion: TStringField;
    movimientosdeembarcacionsClasificacion: TStringField;
    movimientosdeembarcacionsIdFase: TStringField;
    movimientosdeembarcacionsHoraInicio: TStringField;
    movimientosdeembarcacionsHoraFinal: TStringField;
    movimientosdeembarcacionsFactor: TStringField;
    movimientosdeembarcacionmDescripcion: TMemoField;
    EmbarcacionessIdEmbarcacion: TStringField;
    EmbarcacionessDescripcion: TStringField;
    MovimientosdeBarcosDescripcion: TStringField;
    movimientosdeembarcacionsDescripcion: TStringField;
    movimientosdeembarcacioniIdDiario: TIntegerField;
    TabExistencias: TTabSheet;
    movimientosdeembarcacionsTipo: TStringField;
    MovimientosdeBarcosTipo: TStringField;
    qryRecursossIdEmbarcacion: TStringField;
    qryRecursossEmbarcacion: TStringField;
    Embarcaciones2: TZReadOnlyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    ds_embarcaciones2: TDataSource;
    Embarcaciones2sTipo: TStringField;
    qryRecursosdTrasiego: TFloatField;
    qryRecursosdAjuste: TFloatField;
    qryCondicionesClimatologicasiIdCondicion: TLargeintField;
    qryCondicionesClimatologicasiIdDireccion: TLargeintField;
    Plataformas: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    MovimientosdeBarcosIdPlataforma: TStringField;
    dsrTiemposCia: TfrxDBDataset;
    dsTiemposCia: TDataSource;
    qryTiempoCia: TZQuery;
    Panel1: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    ImprimirTiempoCia1: TMenuItem;
    Button1: TButton;
    Fechai: TDateTimePicker;
    Fechaf: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    Label30: TLabel;
    Label31: TLabel;
    qryCondicionesClimatologicassCantidad: TStringField;
    PanelExistencias: TPanel;
    Label19: TLabel;
    tdEmbarcacionExist: TDBLookupComboBox;
    Label20: TLabel;
    iIdRecursoExistencia: TDBLookupComboBox;
    Label21: TLabel;
    dProduccion: TRxCalcEdit;
    Label22: TLabel;
    dRecibido: TRxCalcEdit;
    Label23: TLabel;
    dConsumo: TRxCalcEdit;
    dConsumoEquipos: TRxCalcEdit;
    Label25: TLabel;
    Label17: TLabel;
    dPrestamos: TRxCalcEdit;
    Label28: TLabel;
    dExistenciaAnterior: TRxCalcEdit;
    Label27: TLabel;
    dExistenciaActual: TRxCalcEdit;
    Label26: TLabel;
    dTrasiego: TRxCalcEdit;
    Label29: TLabel;
    dAjuste: TRxCalcEdit;
    chkDescuento: TCheckBox;
    PanelMovimientos: TPanel;
    Label11: TLabel;
    tsIdBarco: TDBLookupComboBox;
    Label7: TLabel;
    tsClasificaciones: TDBLookupComboBox;
    Label16: TLabel;
    tsIdFase: TDBLookupComboBox;
    Label8: TLabel;
    mkHora1: TMaskEdit;
    Label9: TLabel;
    mkHora2: TMaskEdit;
    sSuma: TEdit;
    Label15: TLabel;
    tmDescripcion2: TMemo;
    Label10: TLabel;
    PanelCondiciones: TPanel;
    iIdCondiciones: TDBLookupComboBox;
    Label13: TLabel;
    Label12: TLabel;
    iIdDireccion: TDBLookupComboBox;
    Label14: TLabel;
    sHorario: TMaskEdit;
    dbedtsCantidad: TDBEdit;
    dCantidad: TRxCalcEdit;
    Label18: TLabel;
    Label24: TLabel;
    sPronostico: TDBMemo;
    PanelArribo: TPanel;
    Label2: TLabel;
    dbEmbarcaciones: TDBLookupComboBox;
    Label3: TLabel;
    tsHoraInicio: TMaskEdit;
    tsHoraFinal: TMaskEdit;
    Label4: TLabel;
    Label6: TLabel;
    rbArribo: TRadioButton;
    rbDisposicion: TRadioButton;
    rbDos: TRadioButton;
    tmDescripcion: TDBMemo;
    Label5: TLabel;
    chkContinuaMov: TCheckBox;
    chkContinuaArribo: TCheckBox;
    movimientosdeembarcacionlContinuo: TStringField;
    MovimientosdeBarcolContinuo: TStringField;
    lblBusca: TEdit;
    tdJornada: TEdit;
    btnAjusta: TBitBtn;
    tsUbicacionBarco: TDBEdit;
    Label32: TLabel;
    qryRecursossUbicacion: TStringField;
    Label34: TLabel;
    Label35: TLabel;
    dGalones: TRxCalcEdit;
    qryRecursosdGalones: TFloatField;
    lbl1: TLabel;
    dbMovBarco: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    pnl1: TPanel;
    txt1: TEdit;
    tdFecha: TDBDateTimePicker;
    dbCondiciones: TcxGrid;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn;
    dbMovtosEmbarcacion: TcxGrid;
    cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView;
    cxgrdlvlGrid1Level3: TcxGridLevel;
    cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column4: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView4: TcxGridDBTableView;
    cxgrdlvlGrid1Level4: TcxGridLevel;
    dbExistencias: TcxGrid;
    cxgrdbclmnGrid1DBTableView4Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView4Column7: TcxGridDBColumn;
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure _tsClasificacionesEnter(Sender: TObject);
    procedure _tsClasificacionesExit(Sender: TObject);
    procedure _tsClasificacionesKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFaseEnter(Sender: TObject);
    procedure tsIdFaseExit(Sender: TObject);
    procedure tsIdFaseKeyPress(Sender: TObject; var Key: Char);
    procedure mkHora1KeyPress(Sender: TObject; var Key: Char);
    procedure mkHora1Enter(Sender: TObject);
    procedure mkHora1Exit(Sender: TObject);
    procedure mkHora2Enter(Sender: TObject);
    procedure mkHora2Exit(Sender: TObject);
    procedure mkHora2KeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);

    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure tsHoraInicioEnter(Sender: TObject);
    procedure tsHoraFinalEnter(Sender: TObject);
    procedure tsHoraInicioExit(Sender: TObject);
    procedure tsHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinalExit(Sender: TObject);
    procedure tsHoraFinalKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra3btnAddClick(Sender: TObject);
    procedure frmBarra3btnCancelClick(Sender: TObject);
    procedure frmBarra3btnRefreshClick(Sender: TObject);
    procedure frmBarra3btnDeleteClick(Sender: TObject);
    procedure frmBarra3btnPostClick(Sender: TObject);
    procedure frmBarra3btnEditClick(Sender: TObject);
    procedure frmBarra3btnExitClick(Sender: TObject);
    procedure sLocalizacionEnter(Sender: TObject);
    procedure sLocalizacionExit(Sender: TObject);
    procedure sPronosticoEnter(Sender: TObject);
    procedure sPronosticoExit(Sender: TObject);
    procedure dIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure sLocalizacionKeyPress(Sender: TObject; var Key: Char);
    procedure iIdCondicionesEnter(Sender: TObject);
    procedure iIdCondicionesExit(Sender: TObject);
    procedure iIdCondicionesKeyPress(Sender: TObject; var Key: Char);
    procedure sPronosticoKeyPress(Sender: TObject; var Key: Char);
    procedure sHorarioKeyPress(Sender: TObject; var Key: Char);
    procedure dCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure sHorarioEnter(Sender: TObject);
    procedure sHorarioExit(Sender: TObject);
    procedure dCantidadEnter(Sender: TObject);
    procedure dCantidadExit(Sender: TObject);
    procedure iIdDireccionEnter(Sender: TObject);
    procedure iIdDireccionExit(Sender: TObject);
    procedure iIdDireccionKeyPress(Sender: TObject; var Key: Char);
    procedure qryCondicionesClimatologicasCalcFields(DataSet: TDataSet);
    procedure qryCondicionesClimatologicasBeforePost(DataSet: TDataSet);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure qryRecursosCalcFields(DataSet: TDataSet);
    procedure frmBarra4btnAddClick(Sender: TObject);
    procedure frmBarra4btnEditClick(Sender: TObject);
    procedure frmBarra4btnPostClick(Sender: TObject);
    procedure frmBarra4btnCancelClick(Sender: TObject);
    procedure frmBarra4btnDeleteClick(Sender: TObject);
    procedure frmBarra4btnRefreshClick(Sender: TObject);
    procedure frmBarra4btnExitClick(Sender: TObject);
    procedure qryRecursosBeforePost(DataSet: TDataSet);
    procedure qryRecursosAfterPost(DataSet: TDataSet);
    procedure qryRecursosAfterDelete(DataSet: TDataSet);
    procedure dProduccionEnter(Sender: TObject);
    procedure dProduccionExit(Sender: TObject);
    procedure dRecibidoEnter(Sender: TObject);
    procedure dRecibidoExit(Sender: TObject);
    procedure dConsumoEnter(Sender: TObject);
    procedure dConsumoExit(Sender: TObject);
    procedure dConsumoEquiposEnter(Sender: TObject);
    procedure dConsumoEquiposExit(Sender: TObject);
    procedure dTrasiegoEnter(Sender: TObject);
    procedure dTrasiegoExit(Sender: TObject);
    procedure dExistenciaActualEnter(Sender: TObject);
    procedure dExistenciaActualExit(Sender: TObject);
    procedure dExistenciaAnteriorExit(Sender: TObject);
    procedure dExistenciaAnteriorEnter(Sender: TObject);
    procedure iIdRecursoExistenciaEnter(Sender: TObject);
    procedure iIdRecursoExistenciaExit(Sender: TObject);
    procedure dIdFechaExistenciaExit(Sender: TObject);
    procedure dIdFechaExistenciaKeyPress(Sender: TObject; var Key: Char);
    procedure iIdRecursoExistenciaKeyPress(Sender: TObject; var Key: Char);
    procedure dProduccionKeyPress(Sender: TObject; var Key: Char);
    procedure dRecibidoKeyPress(Sender: TObject; var Key: Char);
    procedure dConsumoKeyPress(Sender: TObject; var Key: Char);
    procedure dConsumoEquiposKeyPress(Sender: TObject; var Key: Char);
    procedure dTrasiegoKeyPress(Sender: TObject; var Key: Char);
    procedure dExistenciaActualKeyPress(Sender: TObject; var Key: Char);
    procedure dExistenciaAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure tsClasificacionesEnter(Sender: TObject);
    procedure tsClasificacionesExit(Sender: TObject);
    procedure tsClasificacionesKeyPress(Sender: TObject; var Key: Char);
    procedure MovimientosdeBarcoCalcFields(DataSet: TDataSet);
    procedure movembarcacionEnter(Sender: TObject);
    procedure arriboembarcacionesEnter(Sender: TObject);
    procedure movimientosdeembarcacionAfterScroll(DataSet: TDataSet);
    procedure tsIdBarcoExit(Sender: TObject);
    procedure tsIdBarcoEnter(Sender: TObject);
    procedure tsIdBarcoKeyPress(Sender: TObject; var Key: Char);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure dbEmbarcacionesExit(Sender: TObject);
    procedure qryRecursosAfterScroll(DataSet: TDataSet);
    procedure qryCondicionesClimatologicasAfterScroll(DataSet: TDataSet);
    procedure movimientosdeembarcacionCalcFields(DataSet: TDataSet);
    procedure MovimientosdeBarcoAfterScroll(DataSet: TDataSet);
    procedure btnAjustaClick(Sender: TObject);
    procedure tdFechaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdFechaEnter(Sender: TObject);
    procedure tdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure dbMovBarcoCellClick(Column: TColumn);
    procedure dbMovBarcoMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure dbMovBarcoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabExistenciasEnter(Sender: TObject);
    procedure tdEmbarcacionExistKeyPress(Sender: TObject; var Key: Char);
    procedure tdEmbarcacionExistEnter(Sender: TObject);
    function ReporteLock(): boolean;
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure frmBarra4btnPrinterClick(Sender: TObject);
    procedure Embarcaciones2AfterScroll(DataSet: TDataSet);
    procedure dAjusteKeyPress(Sender: TObject; var Key: Char);
    procedure dAjusteEnter(Sender: TObject);
    procedure dAjusteExit(Sender: TObject);
    procedure dPrestamosKeyPress(Sender: TObject; var Key: Char);
    procedure chkDescuentoKeyPress(Sender: TObject; var Key: Char);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure dbEmbarcacionesEnter(Sender: TObject);
    procedure dbEmbarcacionesKeyPress(Sender: TObject; var Key: Char);
    function existeReporte: boolean;
    procedure dExistenciaAnteriorChange(Sender: TObject);
    procedure dExistenciaActualChange(Sender: TObject);
    procedure dAjusteChange(Sender: TObject);
    procedure dCantidadChange(Sender: TObject);
    procedure ImprimirTiempoCia1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Split
      (const Delimiter: Char;
      Input: string;
      const Strings: TStrings);
    procedure dbedtsCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtsCantidadEnter(Sender: TObject);
    procedure dbedtsCantidadExit(Sender: TObject);
    procedure tmDescripcion2Enter(Sender: TObject);
    procedure tmDescripcion2Exit(Sender: TObject);
    procedure dbEmbarcacionesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure filtra;
    procedure filtraCondicion;
    procedure pgAdmonChange(Sender: TObject);
    procedure iIdDireccionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tsUbicacionBarcoEnter(Sender: TObject);
    procedure tsUbicacionBarcoExit(Sender: TObject);
    procedure tdEmbarcacionExistExit(Sender: TObject);
    procedure dGalonesExit(Sender: TObject);
    procedure dGalonesEnter(Sender: TObject);
    procedure dGalonesKeyPress(Sender: TObject; var Key: Char);
    procedure cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrdbtblvwGrid1DBTableView3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView3StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cxgrdbtblvwGrid1DBTableView3MouseWheel(Sender: TObject;
      Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
      var Handled: Boolean);
    procedure dbExistenciasEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entre: Boolean;
  frmAdmonyTiempos: TfrmAdmonyTiempos;
  qryGetAcumulado: TZReadOnlyQuery;
  sOpcionEmb: string;
  sEmbarcacion: string;
  Pagina: string;
  

  utgrid3: ticdbgrid;
  utgrid4: ticdbgrid;
  botonpermiso: TBotonesPermisos;
  botonpermiso2: TBotonesPermisos;
  botonpermiso3: TBotonesPermisos;
  botonpermiso4: TBotonesPermisos;
  SavePlace     : TBookmark;

  //Aqui para activar el copiar y pegar en memos
  lCopiaObjeto : boolean;

  dConsumos, dEquipos : extended;

implementation

uses frm_OpcionesBarco;

{$R *.dfm}

procedure TfrmAdmonyTiempos.frmBarra2btnAddClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  dbMovtosEmbarcacion.Enabled := False;
  //manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := false;
  tabexistencias.PageControl.Pages[1].TabVisible := false;
  tabexistencias.PageControl.Pages[3].TabVisible := false;

  frmBarra2.btnAddClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;

  dBEmbarcaciones.Enabled := True;
  tsHoraInicio.ReadOnly := False;
  tsHoraFinal.ReadOnly := False;
  tmDescripcion.ReadOnly := False;
  tsHoraInicio.Text := '00:00';
  tsHoraFinal.Text := '00:00';

  chkContinuaMov.Checked := False;
  PanelArribo.Enabled := True;
  sOpcionEmb := 'Insert';
  MovimientosdeEmbarcacion.Append;
  movimientosdeEmbarcacion.FieldValues['sContrato'] := Global_Contrato;
  movimientosdeEmbarcacion.FieldValues['dIdFecha'] := tdFecha.Date;
  movimientosdeEmbarcacion.FieldValues['sIdEmbarcacion'] := global_barco;
  //movimientosdeembarcacion.FieldValues[ 'sIdDepartamento' ] := global_depto;
  rbArribo.Checked := true;
  movimientosdeembarcacion.FieldValues['sTipo'] := 'ARRIBO';
  movimientosdeEmbarcacion.FieldValues['sIdEmbarcacion'] := sEmbarcacion;
  movimientosdeEmbarcacion.FieldValues['sHoraInicio'] := '00:00';
  movimientosdeEmbarcacion.FieldValues['sHoraFinal'] := '00:00';
  dbEmbarcaciones.SetFocus;
  activapop2(arriboembarcaciones, popupprincipal);
  BotonPermiso.permisosBotones(frmBarra2);

end;

procedure TfrmAdmonyTiempos.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  close
end;

procedure TfrmAdmonyTiempos.frmBarra2btnPostClick(Sender: TObject);
var
  sDescripcion: string;
  lContinua: boolean;
  nombres, cadenas: TStringList;
begin

  {Validacion de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Embarcacion'); nombres.Add('Hora Inicio'); nombres.Add('Hora Final');
  cadenas.Add(dbEmbarcaciones.Text); cadenas.Add(tsHoraInicio.Text); cadenas.Add(tsHoraFinal.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  //manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := true;
  tabexistencias.PageControl.Pages[1].TabVisible := true;
  tabexistencias.PageControl.Pages[3].TabVisible := true;
  try
      if tsHoraInicio.Text > tsHoraFinal.Text then
         ShowMessage('La Hora de inicio del Arribo es mayor a la Hora Final!');

      sEmbarcacion := movimientosdeembarcacion.FieldValues['sIdEmbarcacion'];
      if tmDescripcion.Text = '' then
        sDescripcion := '*'
      else
        sDescripcion := tmDescripcion.Text;

      movimientosdeembarcacion.FieldValues['sClasificacion'] := '';
      movimientosdeembarcacion.FieldValues['sIdFase'] := '';
      movimientosdeembarcacion.FieldValues['sHoraInicio'] := tsHoraInicio.Text;
      movimientosdeembarcacion.FieldValues['sHoraFinal'] := tsHoraFinal.Text;
      movimientosdeembarcacion.FieldValues['sFactor'] := '0';
      movimientosdeembarcacion.FieldValues['mDescripcion'] := sDescripcion;

      if rbArribo.Checked = true then
        movimientosdeembarcacion.FieldValues['sTipo'] := 'ARRIBO';
      if rbDisposicion.Checked = true then
        movimientosdeembarcacion.FieldValues['sTipo'] := 'DISPOSICION';
      if (rbDos.Checked = true) and (sOpcionEmb = 'Insert') then
        movimientosdeembarcacion.FieldValues['sTipo'] := 'ARRIBO';
      if chkContinuaArribo.Checked then
          movimientosdeembarcacion.FieldValues['lContinuo'] := 'Si'
      else
          movimientosdeembarcacion.FieldValues['lContinuo'] := 'No';
      movimientosdeembarcacion.Post;
      //desactivapop(popupprincipal);

      if (rbDos.Checked = true) and (sOpcionEmb = 'Insert') then
      begin
        movimientosdeEmbarcacion.insert;
        movimientosdeEmbarcacion.FieldValues['sContrato'] := Global_Contrato;
        movimientosdeEmbarcacion.FieldValues['dIdFecha'] := tdFecha.Date;
        movimientosdeEmbarcacion.FieldValues['sIdEmbarcacion'] := sEmbarcacion;
        movimientosdeembarcacion.FieldValues['sClasificacion'] := '';
        movimientosdeembarcacion.FieldValues['sIdFase'] := '';
        movimientosdeembarcacion.FieldValues['sHoraInicio'] := tsHoraInicio.Text;
        movimientosdeembarcacion.FieldValues['sHoraFinal'] := tsHoraFinal.Text;
        movimientosdeembarcacion.FieldValues['sFactor'] := '0';
        movimientosdeembarcacion.FieldValues['mDescripcion'] := sDescripcion;
        movimientosdeembarcacion.FieldValues['sTipo'] := 'DISPOSICION';
        movimientosdeembarcacion.Post;
      end;

      if sOpcionEmb = 'Edit' then
        sOpcionEmb := '';

      chkContinuaArribo.Checked := False;
      PanelArribo.Enabled := False;
      Insertar1.Enabled := True;
      Editar1.Enabled := True;
      Registrar1.Enabled := False;
      Can1.Enabled := False;
      Eliminar1.Enabled := True;
      Refresh1.Enabled := True;
      Salir1.Enabled := True;
      dbMovtosEmbarcacion.Enabled := True;
      frmBarra2.btnPostClick(Sender);

      lblBusca.Text := '';
      embarcaciones.Filtered := False;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al salvar registro en arribo de embarcaciones', 0);
      frmbarra2.btnCancel.Click;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmAdmonyTiempos.frmBarra2btnPrinterClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOpcionesBarco, frmOpcionesBarco);
  frmOpcionesBarco.showModal;
end;

procedure TfrmAdmonyTiempos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // botonpermiso.Free;

  //hide;
  Action := caFree;
end;

procedure TfrmAdmonyTiempos.FormShow(Sender: TObject);
var
  sFactor: string;
  dProrrateo: Double;
  dAjuste: Double;
  iMultiplo: Integer;
  iDecimales: Integer;

begin


  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'reporteBarco', PopupPrincipal);

  global_barco := Connection.configuracion.FieldValues['sIdEmbarcacion'];
  tdFecha.Date := Date;

  Movimientosdebarco.Active := False;
  MovimientosdeBarco.Sql.Clear;
  MovimientosdeBarco.Sql.Add('select movimientosdeembarcacion.* from movimientosdeembarcacion ' +
    'inner join tiposdemovimiento  on ' +
    '(tiposdemovimiento.sContrato = :Contrato ' +
    ' And movimientosdeembarcacion.sClasificacion = tiposdemovimiento.sIdTipoMovimiento) ' +
    'where movimientosdeembarcacion.dIdFecha = :Fecha  order by sIdEmbarcacion, sHoraInicio ');
  movimientosdebarco.Params.ParamByName('Contrato').DataType := ftString;
  movimientosdebarco.Params.ParamByName('Contrato').Value := Global_Contrato_Barco;
  movimientosdebarco.Params.ParamByName('Fecha').DataType := ftDate;
  movimientosdebarco.Params.ParamByName('Fecha').Value := tdFecha.Date;
  movimientosdebarco.Open;
  try
    if movimientosdebarco.RecordCount > 0 then
      tdJornada.Text := sFnSumaBarco(movimientosdebarco.FieldValues['dIdFecha'], global_barco, frmAdmonyTiempos, -1);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al mostrar ventana, al calcular total diario', 0);
    end;
  end;

  Clasificaciones.Active := False;
  Clasificaciones.Sql.Clear;
  Clasificaciones.Sql.Add(' select sIdTipoMovimiento, sDescripcion, sTipo from tiposdemovimiento ' +
    ' Where sClasificacion = "Movimiento de Barco" ' +
    'And sContrato = :Contrato Order by iOrden ');
  Clasificaciones.Params.ParamByName('Contrato').DataType := ftString;
  Clasificaciones.Params.ParamByName('Contrato').Value := Global_Contrato_Barco;
  Clasificaciones.Open;

  sOpcionEmb := '';

  tdJornada.Text := '0.000000';
  iIdCondiciones.KeyValue := 1;

  iIdDireccion.KeyValue := 1;

  iIdRecursoExistencia.KeyValue := 1;

  frmBarra1.btnCancel.Click;

  tsHoraInicio.ReadOnly := True;
  tsHoraFinal.ReadOnly := True;
  tmDescripcion.ReadOnly := True;

  Clasificaciones.Active := False;
  Clasificaciones.open;

  Fases.Active := False;
  Fases.Open;

  Embarcaciones.Active := False;
  Embarcaciones.SQL.clear;
  Embarcaciones.sql.Add('select sIdEmbarcacion, sDescripcion, sTipo from embarcaciones ' +
    'Where sTipo="Principal" order by sDescripcion');
  //Embarcaciones.sql.Add('select sIdEmbarcacion, sDescripcion, sTipo from embarcaciones ' +
  //                      'Where sContrato= :Contrato and sTipo="Principal" order by sDescripcion') ;
  //Embarcaciones.Params.ParamByName('Contrato').DataType := ftString ;
  //Embarcaciones.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco ;
  Embarcaciones.Open;

  Embarcaciones2.Active := False;
  //Embarcaciones2.Params.ParamByName('Contrato').DataType := ftString ;
  //Embarcaciones2.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco ;
  Embarcaciones2.Open;

  qryCondiciones.Active := True;
  qryDirecciones.Active := True;

  qryCondicionesClimatologicas.Active := False;
  qryCondicionesClimatologicas.Params.ParamByName('Fecha').DataType := ftDate;
  qryCondicionesClimatologicas.Params.ParamByName('Fecha').Value := tdFecha.Date;
  qryCondicionesClimatologicas.Open;

  movimientosdeEmbarcacion.Active := False;
  movimientosdeEmbarcacion.Params.ParamByName('Fecha').DataType := ftDate;
  movimientosdeEmbarcacion.Params.ParamByName('Fecha').Value := tdFecha.date;
  movimientosdeEmbarcacion.Open;

  qryRecursos.Active := False;
  qryRecursos.Params.ParamByName('Fecha').DataType := ftDate;
  qryRecursos.Params.ParamByName('Fecha').Value := tdFecha.Date;
  qryRecursos.Open;

  qryMezclas.Active := False;
  qryMezclas.Open;

  Plataformas.Active := false;
  Plataformas.Open;

  //  dIdFechaExistencia.Enabled :=False;
  iIdRecursoExistencia.Enabled := False;
  dProduccion.Enabled := False; self.dAjuste.Enabled := false;
  self.dAjuste.Enabled := False; //*****************BRITO 17/12/10********************
  dRecibido.Enabled := False;
  dConsumo.Enabled := false;
  dConsumoEquipos.Enabled := False;
  dPrestamos.Enabled := False;
  dExistenciaActual.Enabled := False;
  dExistenciaAnterior.Enabled := False;
  dTrasiego.Enabled := False;

  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);
  BotonPermiso.permisosBotones(frmBarra3);
  BotonPermiso.permisosBotones(frmBarra4);
end;

procedure TfrmAdmonyTiempos.frmBarra1btnAddClick(Sender: TObject);
begin
   if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
   begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
   end;

  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  chkContinuaMov.Checked := False;
  dbMovBarco.Enabled := False;
  tabexistencias.PageControl.Pages[1].TabVisible := false;
  tabexistencias.PageControl.Pages[2].TabVisible := false;
  tabexistencias.PageControl.Pages[3].TabVisible := false;
  PanelMovimientos.Enabled := True;
  sOpcionEmb := 'Inserta';
  frmBarra1.btnAddClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  tsIdBarco.SetFocus;


  //soad -> Trae el horario anterior para mayor facilidad de captura..
  if MovimientosdeBarco.RecordCount > 0 then
  begin
    Movimientosdebarco.Last;
    if movimientosdebarco.FieldValues['sHoraFinal'] <> '24:00' then
    begin
      mkHora1.Text := movimientosdebarco.FieldValues['sHoraFinal'];
      mkHora2.Text := movimientosdebarco.FieldValues['sHoraFinal'];
    end
    else
    begin
      mkHora1.Text := '00:00';
      mkHora2.Text := '00:00';
    end
  end;

  movimientosdebarco.Append;
  activapop2(movembarcacion, popupprincipal);
  movimientosdebarco.FieldValues['sContrato'] := Global_Contrato;
  movimientosdebarco.FieldValues['dIdFecha'] := tdFecha.Date;
  movimientosdebarco.FieldValues['sIdEmbarcacion'] := global_barco;
  BotonPermiso.permisosBotones(frmBarra1);
end;


procedure TfrmAdmonyTiempos.frmBarra1btnPostClick(Sender: TObject);
var
  sFactor: string;
  dProrrateo: Double;
  iJornada: Integer;
  dAjuste: Double;
  iMultiplo: Integer;
  iDecimales: Integer;
  lContinua: Boolean;
  lIncorrecto: Boolean;
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Embarcacion'); nombres.Add('Clasificacion'); nombres.Add('Fase');
  nombres.Add('Hora Inicio'); nombres.Add('Hora Final');
  cadenas.Add(tsIdBarco.Text); cadenas.Add(tsClasificaciones.Text); cadenas.Add(tsIdFase.Text);
  cadenas.Add(mkHora1.Text); cadenas.Add(mkHora2.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

  {Validacion de barco hora > 24:00}
  lIncorrecto := False;
  if (StrToInt(copy(mkHora1.Text, 1, 2)) = 24) and (StrToInt(copy(mkHora1.Text, 4, 5)) > 0) then
    lIncorrecto := True
  else
    if (StrToInt(copy(mkHora1.Text, 1, 2)) = 25) then
      lIncorrecto := True;

  if lIncorrecto then
  begin
    messageDLG('La Hora de Inicio es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
    exit;
  end;

  if (StrToInt(copy(mkHora2.Text, 1, 2)) = 24) and (StrToInt(copy(mkHora2.Text, 4, 5)) > 0) then
    lIncorrecto := True
  else
    if (StrToInt(copy(mkHora2.Text, 1, 2)) = 25) then
      lIncorrecto := True;

  if lIncorrecto then
  begin
    messageDLG('La Hora de Final es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
    exit;
  end;

  {Continua insercion de datos}
  tabexistencias.PageControl.Pages[1].TabVisible := true;
  tabexistencias.PageControl.Pages[2].TabVisible := true;
  tabexistencias.PageControl.Pages[3].TabVisible := true;
  try
     if (mkHora1.Text = '  :  ') or (mkHora2.Text = '  :  ') then
     begin
         ShowMessage('Los horarios no deben estar vacios!!');
         mkHora2.SetFocus;
     end
     else
     begin
        if mkHora1.Text > mkHora2.Text then
           ShowMessage('La hora de inicio es menor que la hora final!!');

        connection.configuracion.refresh;
        iDecimales := Connection.configuracion.FieldValues['iRedondeoEmbarcacion'];
        if movimientosdebarco.State <> dsInsert then
          lContinua := True
        else
          lContinua := False;
        movimientosdebarco.FieldValues['sIdDepartamento'] := global_depto;
        movimientosdebarco.FieldValues['mDescripcion']    := tmDescripcion2.Text;
        movimientosdebarco.FieldValues['sHoraInicio']     := mkHora1.Text;
        movimientosdebarco.FieldValues['sHoraFinal']      := mkHora2.Text;

        if mkHora1.Text > mkHora2.Text then
           movimientosdebarco.FieldValues['sFactor'] := '0.000000'
        else
        begin
            if (mkHora1.Text = '00:00') and (mkHora2.Text = '24:00') then
              movimientosdebarco.FieldValues['sFactor'] := '1'
            else
              movimientosdebarco.FieldValues['sFactor'] := sfnFactor(mkHora1.Text, mkHora2.Text, 24, iDecimales);
        end;

        if tmDescripcion2.Text = '' then
          movimientosdebarco.FieldValues['mDescripcion'] := '*'
        else
          movimientosdebarco.FieldValues['mDescripcion'] := tmDescripcion2.Text;

        MovimientosdeBarco.FieldValues['sTipo'] := clasificaciones.FieldValues['sTipo'];

        if chkContinuaMov.Checked then
           MovimientosdeBarco.FieldValues['lContinuo'] := 'Si'
        else
           MovimientosdeBarco.FieldValues['lContinuo'] := 'No';
        //chkContinuaMov.Visible := False;
        try
          movimientosdebarco.Post;
          desactivapop(popupprincipal);

          tdJornada.Text := sFnSumaBarco(movimientosdebarco.FieldValues['dIdFecha'], movimientosdebarco.FieldValues['sIdEmbarcacion'], frmAdmonyTiempos, -1);
        except
          on e: exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al salvar registro en movimientos de embarcacion, al calcular total diario', 0);
          end;
        end;

        if sOpcionEmb = 'Inserta' then
        begin
            //soad -> Trae el horario anterior para mayor facilidad de captura..
            if lContinua = False then
            begin
              if MovimientosdeBarco.RecordCount > 0 then
              begin
                Movimientosdebarco.Last;
                if movimientosdebarco.FieldValues['sHoraFinal'] <> '24:00' then
                begin
                  mkHora1.Text := movimientosdebarco.FieldValues['sHoraFinal'];
                  mkHora2.Text := movimientosdebarco.FieldValues['sHoraFinal'];
                end
                else
                begin
                  mkHora1.Text := '00:00';
                  mkHora2.Text := '00:00';
                end
              end;
            end
            else
               sOpcionEmb := '';
        end
        else
        begin
             SavePlace := TcxGridDBTableView(dbMovBarco.ActiveView).DataController.DataSource.DataSet.GetBookmark ;
             Movimientosdebarco.Refresh;
             Try
                 TcxGridDBTableView(dbMovBarco.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
             Except
             Else
                 TcxGridDBTableView(dbMovBarco.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
             End ;
             sOpcionEmb := '';
        end;

        chkContinuaMov.Checked := False;
        tmDescripcion2.Text := '';
        PanelMovimientos.Enabled := false;
        Insertar1.Enabled := True;
        Editar1.Enabled := True;
        Registrar1.Enabled := False;
        Can1.Enabled := False;
        Eliminar1.Enabled := True;
        Refresh1.Enabled := True;
        Salir1.Enabled := True;
        mkHora1.ReadOnly := true;
        dbMovBarco.Enabled := True;
        frmBarra1.btnCancelClick(Sender);

        if sOpcionEmb = 'Inserta' then
           frmBarra1.btnAdd.Click;
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al salvar registro en movimientos de embarcacion', 0);
      frmbarra1.btnCancel.Click;
    end;

  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmAdmonyTiempos.frmBarra1btnPrinterClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOpcionesBarco, frmOpcionesBarco);
  frmOpcionesBarco.showModal;
end;

procedure TfrmAdmonyTiempos._tsClasificacionesEnter(Sender: TObject);
begin
  tsHoraInicio.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos._tsClasificacionesExit(Sender: TObject);
begin
  tsClasificaciones.Color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos._tsClasificacionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  {if key = #13 then
    tsIdFase.SetFocus; }
end;

procedure TfrmAdmonyTiempos.tsIdBarcoEnter(Sender: TObject);
begin
  tsIdBarco.Color := global_color_entrada
end;

procedure TfrmAdmonyTiempos.tsIdBarcoExit(Sender: TObject);
begin
  tsIdBarco.Color := global_color_salida;   
end;

procedure TfrmAdmonyTiempos.tsIdBarcoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsClasificaciones.SetFocus
end;

procedure TfrmAdmonyTiempos.tsIdFaseEnter(Sender: TObject);
begin
  tsIdfase.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.tsIdFaseExit(Sender: TObject);
begin
  tsIdFase.Color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.tsIdFaseKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    mkHora2.SetFocus;
end;

procedure TfrmAdmonyTiempos.tsUbicacionBarcoEnter(Sender: TObject);
begin
    tsUbicacionBarco.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.tsUbicacionBarcoExit(Sender: TObject);
begin
    tsUbicacionBarco.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.mkHora1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    mkHora2.SetFocus
end;

procedure TfrmAdmonyTiempos.mkHora1Enter(Sender: TObject);
begin
  mkHora1.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.mkHora1Exit(Sender: TObject);
begin
  mkHora1.Color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.mkHora2Enter(Sender: TObject);
begin
  mkHora2.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.mkHora2Exit(Sender: TObject);
begin
    mkhora2.Color := Global_Color_Salida;
    //if mkHora2.Text = '24:00' then
    //   chkContinuaMov.Visible := True
    //else
    //   chkContinuaMov.Visible := False;
end;

procedure TfrmAdmonyTiempos.mkHora2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tmDescripcion2.SetFocus;
end;

procedure TfrmAdmonyTiempos.movembarcacionEnter(Sender: TObject);
var
  x, i, hora_inicio, hora_final, minuto, total, aux: integer;
  I_hora, I_minuto, F_hora, F_minuto, cadena: string;
  numero: Double;
begin
  if (movimientosdebarco.state = dsInsert) or (movimientosdebarco.state = dsEdit) then
    exit;

  Embarcaciones.Active := False;
  Embarcaciones.SQL.clear;
  Embarcaciones.sql.Add('select sIdEmbarcacion, sDescripcion, sTipo from embarcaciones ' +
    'Where sTipo="Principal" order by sDescripcion');
  Embarcaciones.Open;

  //Consultamos la informacion de barco..
  connection.QryBusca.Active := False;
  connection.QryBusca.Sql.Clear;
  connection.QryBusca.Sql.Add('select movimientosdeembarcacion.* from movimientosdeembarcacion ' +
              'inner join tiposdemovimiento  on ' +
              '(tiposdemovimiento.sContrato = :Contrato ' +
              ' And movimientosdeembarcacion.sClasificacion = tiposdemovimiento.sIdTipoMovimiento) ' +
              'where movimientosdeembarcacion.dIdFecha = :Fecha  order by sIdEmbarcacion, sHoraInicio ');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato_Barco;
  connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.QryBusca.Params.ParamByName('Fecha').Value := tdFecha.Date;
  connection.QryBusca.Open;

  //soad -> Verificacion si estan completas las 24 horas..
  total := 0;
  if connection.QryBusca.RecordCount > 0 then
  begin
      //state := connection.QryBusca.state;
      while not connection.QryBusca.Eof do
      begin
             // Horarios...
        I_hora := LeftStr(connection.QryBusca.FieldValues['sHoraInicio'], 2);
        I_minuto := MidStr(connection.QryBusca.FieldValues['sHoraInicio'], 4, 2);

        F_hora := LeftStr(connection.QryBusca.FieldValues['sHoraFinal'], 2);
        F_minuto := MidStr(connection.QryBusca.FieldValues['sHoraFinal'], 4, 2);

             //Horarios a integer..
        hora_inicio := strToInt(I_hora);
        hora_final := strToInt(F_hora);
        aux := hora_final - hora_inicio;
        total := total + (aux * 60);

        hora_inicio := strToInt(I_minuto);
        hora_final := strToInt(F_minuto);
        aux := hora_final - hora_inicio;
        total := total + aux;
        connection.QryBusca.Next
      end;

      //Conversion de Horario..
      if (total < 1440) and (connection.QryBusca.RecordCount > 0) then
      begin
        numero := ((1440 - total) / 60);
        cadena := FloatToStr(int(numero));
        aux := strToint(cadena);
        total := ((1440 - total) - (aux * 60));
        if int(numero) < 10 then
          cadena := '0' + intTostr(aux)
        else
          cadena := intTostr(aux);

        if total < 10 then
          cadena := cadena + ':0' + intTostr(total)
        else
          cadena := cadena + ':' + intTostr(total);
             //Muestra mensaje de Horas faltantes...
        messageDLG(' Movimientos de Embarcacion Incompletos, Faltan : ' + cadena + ' minutos', mtInformation, [mbOK], 0);
      end;
  end;
end;

procedure TfrmAdmonyTiempos.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmAdmonyTiempos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  if movimientosdebarco.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          // Aqui se verifica si el reporte no se encuentra autorizado ....
        movimientosdebarco.Delete;
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al eliminar registro en movimientos de embarcación', 0);
        end;
      end
    end

end;

procedure TfrmAdmonyTiempos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  movimientosdebarco.Refresh;
  PanelMovimientos.Enabled := False;
end;

procedure TfrmAdmonyTiempos.frmBarra1btnEditClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;

  if movimientosdebarco.RecordCount < 1 then
    exit;

  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  dbMovBarco.Enabled := False;
  tabexistencias.PageControl.Pages[1].TabVisible := false;
  tabexistencias.PageControl.Pages[2].TabVisible := false;
  tabexistencias.PageControl.Pages[3].TabVisible := false;

  try
    movimientosdebarco.Edit;
    activapop2(movembarcacion, popupprincipal);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al editar registro en movimientos de embarcación', 0);
      exit;
    end;

  end;
  PanelMovimientos.Enabled := True;
  sOpcionEmb := 'Edita';
  frmBarra1.btnEditClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  movimientosdebarco.Edit;
  tsIdBarco.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);

end;

procedure TfrmAdmonyTiempos.frmBarra1btnCancelClick(Sender: TObject);
begin
//deshabilitar tabs aqui estuvo carmen
  tabexistencias.PageControl.Pages[1].TabVisible := true;
  tabexistencias.PageControl.Pages[2].TabVisible := true;
  tabexistencias.PageControl.Pages[3].TabVisible := true;
  sOpcionEmb := '';
  movimientosdebarco.Cancel;
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  mkHora1.ReadOnly := False;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  dbMovBarco.Enabled := True;
  PanelMovimientos.Enabled := False;
end;

procedure TfrmAdmonyTiempos.arriboembarcacionesEnter(Sender: TObject);
begin
  Embarcaciones.Active := False;
  Embarcaciones.sql.Clear;
  Embarcaciones.sql.Add('select distinct sIdEmbarcacion, sDescripcion from embarcaciones ' +
    'order by sDescripcion');
  //Embarcaciones.sql.Add('select distinct sIdEmbarcacion, sDescripcion from embarcaciones ' +
  //                     'Where sContrato=:Contrato order by sDescripcion') ;
  //Embarcaciones.Params.ParamByName('Contrato').DataType := ftString ;
  //Embarcaciones.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Embarcaciones.Open;
end;

procedure TfrmAdmonyTiempos.frmBarra2btnDeleteClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  if movimientosdeembarcacion.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
       { lModificar := lfnVerificarHorasEmbarcacion( global_contrato, FloatToStr( dtFecha2.Date ), tsHoraInicio.Text, '' ); }
       // if lModificar then
        movimientosdeembarcacion.Delete;
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al eliminar registro en arribo de embarcaciones', 0);
        end;
      end
    end

end;

procedure TfrmAdmonyTiempos.tsHoraInicioEnter(Sender: TObject);
begin
  tsHoraInicio.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.tsHoraFinalEnter(Sender: TObject);
begin
  tsHoraFinal.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.tsHoraInicioExit(Sender: TObject);
begin
  tsHoraInicio.Color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.tsHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsHoraFinal.SetFocus;
end;

procedure TfrmAdmonyTiempos.tsHoraFinalExit(Sender: TObject);
begin
    tsHoraFinal.Color := Global_Color_Salida;
    //if tsHoraFinal.Text = '24:00' then
    //   chkContinuaArribo.Visible := True
    //else
    //   chkContinuaArribo.Visible := False;
end;

procedure TfrmAdmonyTiempos.tsHoraFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tmDescripcion.SetFocus;
end;

procedure TfrmAdmonyTiempos.frmBarra2btnEditClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if movimientosdeembarcacion.RecordCount < 1 then
    exit;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  dbMovtosEmbarcacion.Enabled := False;
    //manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := false;
  tabexistencias.PageControl.Pages[1].TabVisible := false;
  tabexistencias.PageControl.Pages[3].TabVisible := false;

  try
    PanelArribo.Enabled := True;
    frmBarra2.btnEditClick(Sender);
    dBEmbarcaciones.Enabled := True;
    tsHoraInicio.ReadOnly := false;
    tsHoraFinal.ReadOnly := False;
    tmDescripcion.ReadOnly := False;
    sOpcionEmb := 'Edit';
    movimientosdeembarcacion.Edit;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al editar registro en arribo de embarcaciones', 0);
    end;
  end;
  activapop2(arriboembarcaciones, popupprincipal);
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmAdmonyTiempos.btnAjustaClick(Sender: TObject);
var
  qAjuste: TZReadOnlyQuery;
begin
  if movimientosdebarco.RecordCount > 0 then
  begin
    Try
      Try
        // Localizar el reporte diario para analizar su modo de cálculo
        qAjuste := TZReadOnlyQuery.Create(Nil);
        qAjuste.Connection := Connection.zConnection;
        qAjuste.SQL.Text := 'Select TipoAjuste From reportediario where sContrato = :Contrato and dIdFecha = :Fecha';
        qAjuste.ParamByName('Contrato').AsString := global_contrato;
        qAjuste.ParamByName('Fecha').AsDate := tdFecha.Date;
        qAjuste.Open;

        if qAjuste.RecordCount = 0 then Raise Exception.Create('*');
        RngTipoAjuste := qAjuste.FieldByName('TipoAjuste').AsInteger;
      Finally
        if Assigned(qAjuste) then
          qAjuste.Close;

        qAjuste.Free;
      End;
    Except
      RngTipoAjuste := 0;
    End;

    try
      tdJornada.Text := sProrrateaBarco(movimientosdebarco.FieldValues['dIdFecha'], movimientosdebarco.FieldValues['sIdEmbarcacion'], frmAdmonyTiempos, -1);
      tdJornada.Text := sFnAjustaBarco(movimientosdebarco.FieldValues['dIdFecha'], movimientosdebarco.FieldValues['sIdEmbarcacion'], '1', frmAdmonyTiempos, -1);
      tdJornada.Text := sFnSumaBarco(movimientosdebarco.FieldValues['dIdFecha'], movimientosdebarco.FieldValues['sIdEmbarcacion'], frmAdmonyTiempos, -1);
      MovimientosdeBarco.Refresh
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al ajustar total diario', 0);
      end;
    end;
  end
end;

procedure TfrmAdmonyTiempos.Split
  (const Delimiter: Char;
  Input: string;
  const Strings: TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := Delimiter;
  Strings.DelimitedText := Input;
end;

procedure TfrmAdmonyTiempos.Button1Click(Sender: TObject);
var
  qry: TZQuery;
begin

  qry := TZQuery.Create(Self);
  qry.Connection := Connection.zConnection;
  qry.sql.clear;
  qry.sql.add('update movimientosdeembarcacion set sIdPlataforma = :sIdPlataforma ' +
    'where sContrato = :contrato and dIdFecha between :fechai and :fechaf');
  qry.Params.ParamByName('sIdPlataforma').Value := Plataformas.FieldValues['sIdPlataforma'];
  qry.Params.ParamByName('contrato').Value := global_contrato;
  qry.Params.ParamByName('fechai').DataType := ftDate;
  qry.Params.ParamByName('fechai').Value := Fechai.Date;
  qry.Params.ParamByName('fechaf').DataType := ftDate;
  qry.Params.ParamByName('fechaf').Value := Fechaf.Date;
  qry.ExecSQL;

  qryTiempoCia.Active := false;
  qryTiempoCia.SQL.Clear;
  qryTiempoCia.SQL.Add('call rptTiempoxCompania(:contrato,:fechai,:fechaf)');
  qryTiempoCia.Params.ParamByName('contrato').DataType := ftString;
  qryTiempoCia.Params.ParamByName('contrato').value := global_contrato;
  qryTiempoCia.Params.ParamByName('fechai').DataType := ftDate;
  qryTiempoCia.Params.ParamByName('fechai').value := Fechai.Date;
  qryTiempoCia.Params.ParamByName('fechaf').DataType := ftDate;
  qryTiempoCia.Params.ParamByName('fechaf').value := Fechaf.Date;
  qryTiempoCia.Open;

  fReporte.LoadFromFile(global_files + 'rptTiempoCia.fr3');
  fReporte.ShowReport();
  Panel1.Visible := false;

  Connection.zConnection.Reconnect;
  close;
end;

procedure TfrmAdmonyTiempos.Can1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnCancel.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnCancel.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnCancel.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnCancel.Click;
end;

procedure TfrmAdmonyTiempos.chkDescuentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    frmBarra4.btnPost.SetFocus;
end;

procedure TfrmAdmonyTiempos.Copy1Click(Sender: TObject);
begin
  if lCopiaObjeto then
  begin
     if tabexistencias.PageControl.Pages[0].TabVisible = true then
        tmDescripcion2.CopyToClipboard;
     If tabexistencias.PageControl.Pages[1].TabVisible = true then
        sPronostico.CopyToClipboard;
     If tabexistencias.PageControl.Pages[2].TabVisible = true then
        tmDescripcion.CopyToClipboard;
  end
  else
  begin
      if tabexistencias.PageControl.Pages[0].TabVisible = true then
      begin
        //UtGrid.CopyRowsToClip;
      end;
      if tabexistencias.PageControl.Pages[1].TabVisible = true then
      begin
       // UtGrid2.CopyRowsToClip;
      end;
      if tabexistencias.PageControl.Pages[2].TabVisible = true then
      begin
        UtGrid3.CopyRowsToClip;
      end;
      if tabexistencias.PageControl.Pages[3].TabVisible = true then
      begin
        UtGrid4.CopyRowsToClip;
      end;
  end;
end;

procedure TfrmAdmonyTiempos.cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if movimientosdebarco.RecordCount > 0 then
    begin
        if movimientosdebarco.FieldValues['sHoraFinal'] <= movimientosdebarco.FieldValues['sHoraInicio'] then
           AStyle.Color := clRed
        else
           AStyle.Color := clBlack
    end;
end;

procedure TfrmAdmonyTiempos.cxgrdbtblvwGrid1DBTableView3KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 //  if (Key = 38) or (Key = 40) then
//  begin
  //  self.tsHoraInicio.Text := self.dbMovtosEmbarcacion.Fields[0].Value;
  //  self.tsHoraFinal.Text := self.dbMovtosEmbarcacion.Fields[1].Value;
  //  self.tmDescripcion.Text := self.dbMovtosEmbarcacion.Fields[2].Value;

  //  self.rbArribo.Checked := false;
  //  self.rbDisposicion.Checked := false;
  //  self.rbDos.Checked := false;

 //   if dbMovtosEmbarcacion.Fields[3].Value = 'ARRIBO' then
  //    self.rbArribo.Checked := true;
 //
 //   if dbMovtosEmbarcacion.Fields[3].Value = 'DISPOSICION' then
 //     self.rbDisposicion.Checked := true;

 //   if dbMovtosEmbarcacion.Fields[3].Value = 'ARRIBO Y DISPOSICION' then
 //     self.rbDos.Checked := true;
                                     
 // end;

end;

procedure TfrmAdmonyTiempos.cxgrdbtblvwGrid1DBTableView3MouseWheel(
  Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  //  self.tsHoraInicio.Text := self.dbMovtosEmbarcacion.Fields[0].Value;
 // self.tsHoraFinal.Text := self.dbMovtosEmbarcacion.Fields[1].Value;
 // self.tmDescripcion.Text := self.dbMovtosEmbarcacion.Fields[2].Value;

 // self.rbArribo.Checked := false;
 // self.rbDisposicion.Checked := false;
 // self.rbDos.Checked := false;

 // if dbMovtosEmbarcacion.Fields[3].Value = 'ARRIBO' then
 //   self.rbArribo.Checked := true;
 //
 // if dbMovtosEmbarcacion.Fields[3].Value = 'DISPOSICION' then
 //   self.rbDisposicion.Checked := true;

 // if dbMovtosEmbarcacion.Fields[3].Value = 'ARRIBO Y DISPOSICION' then
 //   self.rbDos.Checked := true;
end;

procedure TfrmAdmonyTiempos.cxgrdbtblvwGrid1DBTableView3StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  // if movimientosdeembarcacion.RecordCount > 0 then
    //begin
      //  if movimientosdeembarcacion.FieldValues['sHoraFinal'] <= movimientosdeembarcacion.FieldValues['sHoraInicio'] then
         //  AFont.Color := clRed
       // else
     //      AFont.Color := clBlack
   // end;
end;

procedure TfrmAdmonyTiempos.frmBarra3btnAddClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  dbCondiciones.Enabled := False;
  tabexistencias.PageControl.Pages[0].TabVisible := false;
  tabexistencias.PageControl.Pages[2].TabVisible := false;
  tabexistencias.PageControl.Pages[3].TabVisible := false;

  frmBarra3.btnAddClick(Sender);
  //des-habilitar componentes para editar
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;

  sHorario.Enabled := true;
  iIdDireccion.Enabled := true;
  iIdCondiciones.Enabled := true;
  sPronostico.Enabled := true;
  dbedtsCantidad.Enabled := True;

  //Abrir componente para agregar
  PanelCondiciones.Enabled := true;
  qryCondicionesClimatologicas.Append;
  qryCondicionesClimatologicas.FieldValues['sContrato'] := Global_Contrato;
  qryCondicionesClimatologicas.FieldValues['dIdFecha'] := tdFecha.Date;
  qryCondicionesClimatologicas.FieldValues['dcantidad'] := 0;
  qryCondicionesClimatologicas.FieldValues['mPronostico'] := '*';
  iIdCondiciones.SetFocus;
  activapop2(ConClimatologicas, popupprincipal);
  BotonPermiso.permisosBotones(frmBarra3);

end;

procedure TfrmAdmonyTiempos.frmBarra3btnCancelClick(Sender: TObject);
begin
//manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := true;
  tabexistencias.PageControl.Pages[2].TabVisible := true;
  tabexistencias.PageControl.Pages[3].TabVisible := true;

  frmBarra3.btnCancelClick(Sender);
//  iIdDireccion.Enabled := false;
//  iIdCondiciones.Enabled := false;
//  sPronostico.Enabled := false;
//  sHorario.Enabled := false;
//  dbedtsCantidad.Enabled := False;
  qryCondicionesClimatologicas.Cancel;
  desactivapop(popupprincipal);
  //items del popup   "aqui estuvo carmen"
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  mkHora1.ReadOnly := False;
  BotonPermiso.permisosBotones(frmBarra3);
  dbCondiciones.Enabled := True;
  PanelCondiciones.Enabled := false;

  lblBusca.Text := '';
  QryDirecciones.Filtered := False;

end;

procedure TfrmAdmonyTiempos.frmBarra3btnRefreshClick(Sender: TObject);
begin
  qryCondicionesClimatologicas.Refresh;
  PanelCondiciones.Enabled := false;
end;

procedure TfrmAdmonyTiempos.frmBarra3btnDeleteClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;

  try
    if qryCondicionesClimatologicas.RecordCount > 0 then
      if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        qryCondicionesClimatologicas.Delete;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al eliminar registro en condiciones meteorologicas.', 0);
    end;
  end;
end;

procedure TfrmAdmonyTiempos.frmBarra3btnPostClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Condicion'); nombres.Add('Localizacion'); nombres.Add('Horario'); nombres.Add('Pronostico');
  cadenas.Add(iIdCondiciones.Text); cadenas.Add(iIdDireccion.Text); cadenas.Add(sHorario.Text); cadenas.Add(sPronostico.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  tabexistencias.PageControl.Pages[0].TabVisible := true;
  tabexistencias.PageControl.Pages[2].TabVisible := true;
  tabexistencias.PageControl.Pages[3].TabVisible := true;
  try
    //Actualizar o Insertar elregistro
    qryCondicionesClimatologicas.Post;
        PanelCondiciones.Enabled := false;
    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;
    dbCondiciones.Enabled := True;
    frmBarra3.btnPostClick(Sender);
    desactivapop(popupprincipal);
    
    lblBusca.Text := '';
    QryDirecciones.Filtered := False;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al salvar registro en condiciones meteorologicas', 0);
      frmbarra3.btnCancel.Click;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra3);
end;

procedure TfrmAdmonyTiempos.frmBarra3btnEditClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  
  if qryCondicionesClimatologicas.RecordCount < 1 then
    exit;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  dbCondiciones.Enabled := False;
  tabexistencias.PageControl.Pages[0].TabVisible := false;
  tabexistencias.PageControl.Pages[2].TabVisible := false;
  tabexistencias.PageControl.Pages[3].TabVisible := false;

  frmBarra3.btnEditClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;

  PanelCondiciones.Enabled := true;
  iIdDireccion.Enabled := true;
  iIdCondiciones.Enabled := True;
  sPronostico.Enabled := true;
  sHorario.Enabled := true;
  dbedtsCantidad.Enabled := True;
  qryCondicionesClimatologicas.Edit;
  activapop2(ConClimatologicas, popupprincipal);
  iIdCondiciones.SetFocus;
  BotonPermiso.permisosBotones(frmBarra3);

end;

procedure TfrmAdmonyTiempos.frmBarra3btnExitClick(Sender: TObject);
begin
  frmBarra3.btnExitClick(Sender);
  frmBarra3.btnCancel.Click;
  close;
end;

procedure TfrmAdmonyTiempos.sLocalizacionEnter(Sender: TObject);
begin
  iIdDireccion.color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.sLocalizacionExit(Sender: TObject);
begin
  iIdDireccion.color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.sPronosticoEnter(Sender: TObject);
begin
     sPronostico.color := Global_Color_Entrada;
     lCopiaObjeto := True;
end;

procedure TfrmAdmonyTiempos.sPronosticoExit(Sender: TObject);
begin
     sPronostico.color := Global_Color_Salida;
     lCopiaObjeto := False;
end;

procedure TfrmAdmonyTiempos.dIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
 { if key = #13 then
    iIdCondiciones.SetFocus;}
end;

procedure TfrmAdmonyTiempos.sLocalizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sPronostico.SetFocus;
end;

procedure TfrmAdmonyTiempos.iIdCondicionesEnter(Sender: TObject);
begin
  iIdCondiciones.color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.iIdCondicionesExit(Sender: TObject);
begin
  iIdCondiciones.color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.iIdCondicionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    iIdDireccion.SetFocus;
end;

procedure TfrmAdmonyTiempos.sPronosticoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sHorario.SetFocus;
end;

procedure TfrmAdmonyTiempos.TabExistenciasEnter(Sender: TObject);
begin
  Embarcaciones.Active := False;
  Embarcaciones.sql.Clear;
  Embarcaciones.sql.Add('select distinct sIdEmbarcacion, sDescripcion, sTipo from embarcaciones ' +
    'order by sDescripcion');
     //Embarcaciones.sql.Add('select distinct sIdEmbarcacion, sDescripcion, sTipo from embarcaciones ' +
     //                      'Where sContrato=:Contrato order by sDescripcion') ;
     //Embarcaciones.Params.ParamByName('Contrato').DataType := ftString ;
     //Embarcaciones.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Embarcaciones.Open;
end;

procedure TfrmAdmonyTiempos.sHorarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dbedtsCantidad.SetFocus;
end;

procedure TfrmAdmonyTiempos.dCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dCantidad, key) then
    key := #0;
  if key = #13 then
    sPronostico.SetFocus;
end;

procedure TfrmAdmonyTiempos.sHorarioEnter(Sender: TObject);
begin
  sHorario.color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.sHorarioExit(Sender: TObject);
begin
  sHorario.color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.dCantidadChange(Sender: TObject);
begin
  TRxCalcEditChangef(dCantidad, 'Cantidad');
end;

procedure TfrmAdmonyTiempos.dCantidadEnter(Sender: TObject);
begin
  dCantidad.color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.dCantidadExit(Sender: TObject);
begin
  dCantidad.color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.iIdDireccionEnter(Sender: TObject);
begin
  iIdDireccion.color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.iIdDireccionExit(Sender: TObject);
begin
  iIdDireccion.color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.iIdDireccionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    sHorario.SetFocus
  else
     if key = #8 then
        lblBusca.text := ''
     else
         lblBusca.text := lblBusca.text + char(key);  
end;

procedure TfrmAdmonyTiempos.iIdDireccionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    filtracondicion;
end;

procedure TfrmAdmonyTiempos.qryCondicionesClimatologicasCalcFields(
  DataSet: TDataSet);
begin
  //Cargar los comentarios de la tabla codiciones en el grid principal
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sDescripcion from condiciones where iIdCondicion=:iIdCondicion');
  connection.QryBusca.Params.ParamByName('iIdCondicion').Value := qryCondicionesClimatologicas.FieldValues['iIdCondicion'];
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    qryCondicionesClimatologicasCalcCondiciones.Text := connection.QryBusca.FieldValues['sDescripcion'];

  //Cargar los comentarios de la tabla direcciones en el grid principal
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sDescripcion from direcciones where iIdDireccion=:iIdDireccion');
  connection.QryBusca.Params.ParamByName('iIdDireccion').Value := qryCondicionesClimatologicas.FieldValues['iIdDireccion'];
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    qryCondicionesClimatologicasCalcDireccion.Text := connection.QryBusca.FieldValues['sDescripcion'];

  //Cargar los comentarios de la tabla codiciones en el grid principal
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sMedida from condiciones where iIdCondicion=:iIdCondicion');
  connection.QryBusca.Params.ParamByName('iIdCondicion').Value := qryCondicionesClimatologicas.FieldValues['iIdCondicion'];
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    qryCondicionesClimatologicasCalcCMedida.Text := connection.QryBusca.FieldValues['sMedida'];
end;


procedure TfrmAdmonyTiempos.qryCondicionesClimatologicasAfterScroll(
  DataSet: TDataSet);
begin
  if qryCondicionesClimatologicas.RecordCount > 0 then
    if qryCondicionesClimatologicas.Eof = False then
    begin
      iIdCondiciones.KeyValue := qryCondicionesClimatologicas.FieldValues['iIdCondicion'];
      iIdDireccion.KeyValue := qryCondicionesClimatologicas.FieldValues['iIdDireccion'];
      sPronostico.Text := qryCondicionesClimatologicas.FieldValues['mPronostico'];
      sHorario.Text := qryCondicionesClimatologicas.FieldValues['sHorario'];
      dCantidad.Text := qryCondicionesClimatologicas.FieldValues['dCantidad'];
    end;

end;

procedure TfrmAdmonyTiempos.qryCondicionesClimatologicasBeforePost(
  DataSet: TDataSet);
begin
  qryCondicionesClimatologicas.FieldValues['sIdTurno'] := global_turno;
  qryCondicionesClimatologicas.FieldValues['sHorario'] := sHorario.Text;
  if dCantidad.Text = '' then
    qryCondicionesClimatologicas.FieldValues['dCantidad'] := 0
  else
    qryCondicionesClimatologicas.FieldValues['dCantidad'] := dCantidad.Text;
  if sPronostico.Text = '' then
    qryCondicionesClimatologicas.FieldValues['mPronostico'] := '*';
end;

procedure TfrmAdmonyTiempos.Editar1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnEdit.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnEdit.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnEdit.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnEdit.Click;
end;

procedure TfrmAdmonyTiempos.Eliminar1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnDelete.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnDelete.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnDelete.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnDelete.Click;
end;

procedure TfrmAdmonyTiempos.Embarcaciones2AfterScroll(DataSet: TDataSet);
begin
  //********************BRITO 22/11/10****************************************
  if Embarcaciones2.RecordCount > 0 then
    if Embarcaciones2.Eof = False then
      chkDescuento.Visible := not (Embarcaciones2.FieldByName('sTipo').AsString = 'Principal');
 //********************BRITO 22/11/10****************************************
end;

procedure TfrmAdmonyTiempos.frmBarra2btnCancelClick(Sender: TObject);
begin
//manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := true;
  tabexistencias.PageControl.Pages[1].TabVisible := true;
  tabexistencias.PageControl.Pages[3].TabVisible := true;
  sOpcionEmb := '';
  frmBarra2.btnCancelClick(Sender);
  tsHoraInicio.ReadOnly := True;
  tsHoraFinal.ReadOnly := True;
  tmDescripcion.ReadOnly := True;
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  mkHora1.ReadOnly := False;
  PanelArribo.Enabled := False;
        dbMovtosEmbarcacion.Enabled := True;
 // tsHoraInicio.ReadOnly := true;
  try
    movimientosdeembarcacion.Cancel;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al agregar registro en arribo de embarcaciones', 0);
    end;
  end;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra2);

  lblBusca.Text := '';
  embarcaciones.Filtered := False;

end;

procedure TfrmAdmonyTiempos.frmBarra2btnRefreshClick(Sender: TObject);
begin
  try

    movimientosdeembarcacion.Refresh;
    PanelArribo.Enabled := False;
  except
  end
end;

procedure TfrmAdmonyTiempos.tdEmbarcacionExistEnter(Sender: TObject);
begin
  tdEmbarcacionExist.Color := global_color_entrada
end;

procedure TfrmAdmonyTiempos.tdEmbarcacionExistExit(Sender: TObject);
begin
    tdEmbarcacionExist.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.tdEmbarcacionExistKeyPress(Sender: TObject;
  var Key: Char);
begin
  if iIdrecursoExistencia.Enabled = true then
    if key = #13 then
      iIdRecursoExistencia.SetFocus;
end;

procedure TfrmAdmonyTiempos.tdFechaEnter(Sender: TObject);
begin
  tdFecha.Color := global_color_entrada
end;

procedure TfrmAdmonyTiempos.tdFechaExit(Sender: TObject);
var
  sFactor: string;
  dProrrateo: Double;
  dAjuste: Double;
  iMultiplo: Integer;
  iDecimales: Integer;
begin
  tdFecha.Color := global_color_salida;
  movimientosdebarco.Active := False;
  movimientosdebarco.Params.ParamByName('Fecha').DataType := ftDate;
  movimientosdebarco.Params.ParamByName('Fecha').Value := tdFecha.Date;
  movimientosdebarco.Open;

  qryCondiciones.Active := True;
  qryDirecciones.Active := True;

  qryCondicionesClimatologicas.Active := False;
  qryCondicionesClimatologicas.Params.ParamByName('Fecha').DataType := ftDate;
  qryCondicionesClimatologicas.Params.ParamByName('Fecha').Value := tdFecha.Date;
  qryCondicionesClimatologicas.Open;

  movimientosdeEmbarcacion.Active := False;
  movimientosdeEmbarcacion.Params.ParamByName('Fecha').DataType := ftDate;
  movimientosdeEmbarcacion.Params.ParamByName('Fecha').Value := tdFecha.date;
  movimientosdeEmbarcacion.Open;

  qryRecursos.Active := False;
  qryRecursos.Params.ParamByName('Fecha').DataType := ftDate;
  qryRecursos.Params.ParamByName('Fecha').Value := tdFecha.Date;
  qryRecursos.Open;

  qryMezclas.Active := False;
  qryMezclas.Open;

  try
    if movimientosdeembarcacion.recordcount > 0 then

      tdJornada.Text := sFnSumaBarco(movimientosdebarco.FieldValues['dIdFecha'], movimientosdebarco.FieldValues['sIdEmbarcacion'], frmAdmonyTiempos, -1)

    else
      tdJornada.Text := '0.000000';
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al seleccionar fecha', 0);
    end;
  end;
end;

procedure TfrmAdmonyTiempos.tdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if pgAdmon.ActivePageIndex = 0 then
       dbMovBarco.SetFocus;
    if pgAdmon.ActivePageIndex = 1 then
       dbCondiciones.SetFocus;
    if pgAdmon.ActivePageIndex = 2 then
       dbMovtosEmbarcacion.SetFocus;
    if pgAdmon.ActivePageIndex = 3 then
       dbExistencias.SetFocus;
  end;
end;

procedure TfrmAdmonyTiempos.tmDescripcion2Enter(Sender: TObject);
begin
    tmDescripcion2.Color := global_color_entrada;
    lCopiaObjeto := True;
end;

procedure TfrmAdmonyTiempos.tmDescripcion2Exit(Sender: TObject);
begin
    tmDescripcion2.Color := global_color_salida;
    lcopiaObjeto := False;
end;

procedure TfrmAdmonyTiempos.tmDescripcionEnter(Sender: TObject);
begin
   tmDescripcion.Color := global_Color_Entrada;
   lCopiaObjeto := True;
end;

procedure TfrmAdmonyTiempos.tmDescripcionExit(Sender: TObject);
begin
    tmDescripcion.Color := global_Color_Salida;
    lCopiaObjeto := False;
end;

procedure TfrmAdmonyTiempos.qryRecursosCalcFields(DataSet: TDataSet);
begin
  if (qryRecursos.State <> dsEdit) and (qryRecursos.State <> dsInsert) then
  begin
      //Cargar los comentarios de la tabla codiciones en el grid principal
    connection.QryBusca.Active := false;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sDescripcion,sMedida from recursosdeexistencias where iIdRecursoExistencia= :RecursoExistencia');
    connection.QryBusca.params.paramByName('RecursoExistencia').DataType := ftInteger;
    connection.QryBusca.Params.ParamByName('RecursoExistencia').Value := qryRecursos.FieldValues['iIdRecursoExistencia'];
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
      qryRecursosCalcMezclas.Text := connection.QryBusca.FieldValues['sDescripcion'];
      qryRecursosCalcMezclasMedidas.Text := connection.QryBusca.FieldValues['sMedida'];
    end;

    connection.QryBusca.Active := false;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sDescripcion from embarcaciones where sIdEmbarcacion =:Embarcacion ');
      //connection.QryBusca.SQL.Add('select sDescripcion from embarcaciones where sContrato =:Contrato and sIdEmbarcacion =:Embarcacion ') ;
      //connection.QryBusca.params.paramByName('Contrato').DataType    := ftString ;
      //connection.QryBusca.Params.ParamByName('Contrato').Value       := global_contrato;
    connection.QryBusca.params.paramByName('Embarcacion').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Embarcacion').Value := QryRecursos.FieldValues['sIdEmbarcacion'];
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
      qryRecursossEmbarcacion.Text := connection.QryBusca.FieldValues['sDescripcion'];
  end;

end;

procedure TfrmAdmonyTiempos.Refresh1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnRefresh.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnRefresh.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnRefresh.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnRefresh.Click;
end;

procedure TfrmAdmonyTiempos.Registrar1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnPost.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnPost.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnPost.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnPost.Click;
end;

procedure TfrmAdmonyTiempos.Salir1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnExit.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnExit.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnExit.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnExit.Click;
end;

procedure TfrmAdmonyTiempos.frmBarra4btnAddClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  dbExistencias.Enabled := False;
  //manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := false;
  tabexistencias.PageControl.Pages[1].TabVisible := false;
  tabexistencias.PageControl.Pages[2].TabVisible := false;

  Entre := False;
  frmBarra4.btnAddClick(Sender);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  sOpcionEmb := 'Insert';

  PanelExistencias.Enabled := True;

  dConsumo.value := 0;
  dConsumoEquipos.value := 0;
  dPrestamos.value := 0;
  dProduccion.value := 0;
  dAjuste.value := 0; //*****************BRITO 17/12/10************
  dRecibido.value := 0;
  dTrasiego.value := 0;
  dExistenciaActual.Value := 0;
  dExistenciaAnterior.Value := 0;
  dGalones.Value  := 0;

  dConsumos := dConsumo.Value;
  dEquipos  := dConsumoEquipos.Value;

  iIdRecursoExistencia.Enabled := True;
  dProduccion.Enabled := True;
  dAjuste.Enabled := True; //*****************BRITO 17/12/10************
  dRecibido.Enabled := True;
  dConsumo.Enabled := True;
  dConsumoEquipos.Enabled := True;
  dPrestamos.Enabled := True;
  dTrasiego.Enabled := True;
  try
    qryRecursos.Append;
    qryRecursos.FieldValues['sContrato'] := global_contrato;
    qryRecursos.FieldValues['dIdFecha'] := tdFecha.Date;
    qryRecursos.FieldValues['sIdEmbarcacion'] := Embarcaciones2.FieldValues['sIdEmbarcacion'];
    activapop2(TabExistencias, popupprincipal);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al agregar registro en existencias', 0);
      frmbarra4.btnCancel.Click;
    end;
  end;
  tdEmbarcacionExist.ListFieldIndex := 0;
  tdEmbarcacionExist.SetFocus;

  //********************BRITO 22/11/10****************************************
  //chkDescuento.Checked := true;
  chkDescuento.Visible := true;
  //********************BRITO 22/11/10****************************************
  BotonPermiso.permisosBotones(frmBarra4);
  PanelExistencias.Enabled := True;
end;

procedure TfrmAdmonyTiempos.dAjusteChange(Sender: TObject);
begin
//TRxCalcEditChangef(dAjuste,'Ajuste');
end;

procedure TfrmAdmonyTiempos.dAjusteEnter(Sender: TObject);
begin
  dAjuste.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dAjusteExit(Sender: TObject);
begin
  dAjuste.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dAjusteKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dAjuste, key) then
    key := #0;
  if key = #13 then
    chkDescuento.SetFocus;
end;

procedure TfrmAdmonyTiempos.dbedtsCantidadEnter(Sender: TObject);
begin
    dbedtsCantidad.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dbedtsCantidadExit(Sender: TObject);
begin
     dbedtsCantidad.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dbedtsCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       sPronostico.SetFocus;
end;

procedure TfrmAdmonyTiempos.dbEmbarcacionesEnter(Sender: TObject);
begin
  dbembarcaciones.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dbEmbarcacionesExit(Sender: TObject);
begin
  dbembarcaciones.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dbEmbarcacionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsHorainicio.SetFocus
  else
     if key = #8 then
        lblBusca.text := ''
     else
         lblBusca.text := lblBusca.text + char(key);

end;

procedure TfrmAdmonyTiempos.dbEmbarcacionesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     filtra;
end;

procedure TfrmAdmonyTiempos.dbExistenciasEnter(Sender: TObject);
begin
   if iIdRecursoExistencia.Enabled = True then
//         frmBarra4.btnCancel.Click;
end;

procedure TfrmAdmonyTiempos.dbMovBarcoCellClick(Column: TColumn);
begin
  if MovimientosdeBarco.RecordCount > 0 then
  begin
    //self.tsIdFase.Field.Index := self.dbMovBarco.Fields[4].Value;
    //self.mkHora1.Text := self.dbMovBarco.Fields[2].Value;
    //self.mkHora2.Text := self.dbMovBarco.Fields[3].Value;
    //self.sSuma.Text := self.dbMovBarco.Fields[6].Value;
     //self.tmDescripcion2.Text := self.dbMovBarco.Fields[5].Value;
  end;
end;


procedure TfrmAdmonyTiempos.dbMovBarcoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if (Key = 38) or (Key = 40) then
  //begin
   // self.tsIdFase.Field.Index := self.dbMovBarco.Fields[4].Value;
   // self.mkHora1.Text := self.dbMovBarco.Fields[2].Value;
    //self.mkHora2.Text := self.dbMovBarco.Fields[3].Value;
   // self.sSuma.Text := self.dbMovBarco.Fields[6].Value;
     //self.tmDescripcion2.Text := self.dbMovBarco.Fields[5].Value;
  //end;
end;

procedure TfrmAdmonyTiempos.dbMovBarcoMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  //self.tsIdFase.Field.Index := self.dbMovBarco.Fields[4].Value;
  //self.mkHora1.Text := self.dbMovBarco.Fields[2].Value;
 // self.mkHora2.Text := self.dbMovBarco.Fields[3].Value;
  //self.sSuma.Text := self.dbMovBarco.Fields[6].Value;
     //self.tmDescripcion2.Text := self.dbMovBarco.Fields[5].Value;
end;

procedure TfrmAdmonyTiempos.frmBarra4btnEditClick(Sender: TObject);
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if qryRecursos.RecordCount < 1 then
    exit;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;
  PanelExistencias.Enabled := True;
  dbExistencias.Enabled := False;
  //manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := false;
  tabexistencias.PageControl.Pages[1].TabVisible := false;
  tabexistencias.PageControl.Pages[2].TabVisible := false;

  frmBarra4.btnEditClick(Sender);
  Entre := False;
  sOpcionEmb := 'Edit';
  iIdRecursoExistencia.Enabled := True;
  dProduccion.Enabled := True;
  dAjuste.Enabled := True; //*****************BRITO 17/12/10************
  dRecibido.Enabled := True;
  dConsumo.Enabled := True;
  dConsumoEquipos.Enabled := True;
  dPrestamos.Enabled := True;
  dTrasiego.Enabled := True;

  dConsumos := dConsumo.Value;
  dEquipos  := dConsumoEquipos.Value;

  try
    qryRecursos.Edit;
    activapop2(TabExistencias, popupprincipal);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al editar registro en existencias', 0);
    end;
  end;

  iIdRecursoExistencia.SetFocus;
  BotonPermiso.permisosBotones(frmBarra4);
end;

function TfrmAdmonyTiempos.existeReporte: boolean;
begin
  result := false;
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT dIdFecha FROM reportediario WHERE ' +
    'sContrato = :Contrato AND dIdFecha = :Fecha AND sIdTurno = :Turno');
  connection.QryBusca.ParamByName('Contrato').AsString := qryRecursos.FieldByName('sContrato').AsString;
  connection.QryBusca.ParamByName('Fecha').AsDateTime := qryRecursos.FieldByName('dIdFecha').AsDateTime;
  connection.QryBusca.ParamByName('Turno').AsString := global_turno;
  try
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
      result := true;
  except
    result := false;
  end;
end;

procedure TfrmAdmonyTiempos.frmBarra4btnPostClick(Sender: TObject);
var
  vdExistenciaActual: Double;
  sConsulta, sCondicion: string; //************************BRITO 22/11/10***********************************
  nombres, cadenas: TStringList;
begin
     {Validacion de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;
  nombres.Add('Embarcacion'); nombres.Add('Existencia'); cadenas.Add(tdEmbarcacionExist.Text); cadenas.Add(iIdRecursoExistencia.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  if not existeReporte then
  begin
    MessageDlg('No existe un reporte con esa fecha', mtInformation, [mbOk], 0);
    exit;
  end;
     {Continua insercion de datos}
     //manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := true;
  tabexistencias.PageControl.Pages[1].TabVisible := true;
  tabexistencias.PageControl.Pages[2].TabVisible := true;
  if dConsumo.Value > 38.5 then
    messageDLG('Está superando el Limite de Consumo (38.50 M3)', mtInformation, [mbOk], 0);

  if QryRecursos.FieldValues['sIdEmbarcacion'] = '' then
  begin
    messageDLG('Seleccione una Embarcacion!', mtInformation, [mbOk], 0);
    exit;
  end;

  if sOpcionEmb = 'Insert' then
  begin
          //Verificamos que si exista el consumooo..
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from recursos where sContrato =:Contrato and dIdFecha =:Fecha ' +
      'and sIdTurno =:Turno and sIdEmbarcacion =:Embarcacion and iIdRecursoExistencia =:Recurso ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Fecha').AsDate := tdFecha.Date;
    connection.zCommand.ParamByName('Turno').AsString := global_turno;
    connection.zCommand.ParamByName('Embarcacion').AsString := tdEmbarcacionExist.KeyValue;
    connection.zCommand.ParamByName('Recurso').AsInteger := iIdRecursoExistencia.KeyValue;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      messageDLG('La existencia de ' + iIdRecursoExistencia.Text + ' para ' + tdEmbarcacionExist.Text + ' ya existe. Favor de verificar!', mtInformation, [mbOk], 0);
      frmbarra4.btnCancel.Click;
      exit;
    end
    else
      qryRecursos.Post;
  end
  else
    qryRecursos.Post;

     //************************BRITO 22/11/10***********************************
     //Sumamos lo recibido de las embarcaciones de apoyo
     //Consulta Base
  if chkDescuento.Checked then
  begin //si esta marcado como descontar
      sConsulta :=  'select sum(r.dRecibido) as Recibido from recursos r ' +
      'inner join embarcaciones e on (r.sIdEmbarcacion = e.sIdEmbarcacion and e.sTipo = "Secundario" )' +
      'where r.sContrato =:Contrato and r.dIdFecha =:Fecha and r.sIdTurno =:Turno and r.iIdRecursoExistencia =:Recurso';

      //Asumir que este registro no se contara en el descuento
      sCondicion := ' and r.sIdEmbarcacion <> :embarcacion';

      //El registro se contara en el descuento
      sCondicion := '';

      //añadir el group by
      sCondicion := sCondicion + ' group by r.sContrato ';
      //agregar el final de la consulta
      sConsulta := sConsulta + sCondicion;
      //************************BRITO 22/11/10***********************************

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add(sConsulta);
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Fecha').AsDate := tdFecha.Date;
      connection.QryBusca.ParamByName('Turno').AsString := global_turno;
      connection.QryBusca.ParamByName('Recurso').AsInteger := iIdRecursoExistencia.KeyValue;

     //añadir el parametro si el registro no aplica al descuento
     if not chkDescuento.Checked then
        connection.QryBusca.ParamByName('embarcacion').AsString := tdEmbarcacionExist.KeyValue;
     //************************BRITO 22/11/10***********************************
     connection.QryBusca.Open;

     if connection.QryBusca.RecordCount > 0 then
     begin
        //Buscamos embarcacion principal..
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sIdEmbarcacion from embarcaciones where sTipo = "Principal" ');
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
        begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('select * from recursos where sContrato =:Contrato and dIdFecha =:Fecha ' +
              'and sIdTurno =:Turno and sIdEmbarcacion =:Embarcacion and iIdRecursoExistencia =:Recurso ');
            connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate := tdFecha.Date;
            connection.zCommand.ParamByName('Turno').AsString := global_turno;
            connection.zCommand.ParamByName('Embarcacion').AsString := connection.QryBusca2.FieldValues['sIdEmbarcacion'];
            connection.zCommand.ParamByName('Recurso').AsInteger := iIdRecursoExistencia.KeyValue;
            connection.zCommand.Open;

            if connection.zCommand.RecordCount > 0 then
            begin
                vdExistenciaActual := connection.zCommand.FieldValues['dProduccion'] + connection.zCommand.FieldValues['dExistenciaAnterior'] + connection.zCommand.FieldValues['dRecibido'];
                vdExistenciaActual := (vdExistenciaActual) - (connection.zCommand.FieldValues['dConsumo'] + connection.zCommand.FieldValues['dConsumoEquipos'] + connection.QryBusca.FieldValues['Recibido']);

                          //Actualizamos la esxitencia embarcacion principal
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('update recursos set dPrestamos =:Prestamo, dExistenciaActual =:Existencia where sContrato =:Contrato and dIdFecha =:Fecha ' +
                  'and sIdTurno =:Turno and sIdEmbarcacion =:Embarcacion and iIdRecursoExistencia =:Recurso ');
                connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
                connection.zCommand.ParamByName('Fecha').AsDate := tdFecha.Date;
                connection.zCommand.ParamByName('Turno').AsString := global_turno;
                connection.zCommand.ParamByName('Embarcacion').AsString := connection.QryBusca2.FieldValues['sIdEmbarcacion'];
                connection.zCommand.ParamByName('Prestamo').AsFloat := connection.QryBusca.FieldValues['Recibido'];
                connection.zCommand.ParamByName('Existencia').AsFloat := vdExistenciaActual;
                connection.zCommand.ParamByName('Recurso').AsInteger := iIdRecursoExistencia.KeyValue;
                connection.zCommand.ExecSQL;
            end;
         end;
      end;
  end;

  label34.Caption := '';
  tdEmbarcacionExist.SetFocus;
  frmBarra4.btnCancelClick(Sender);
  PanelExistencias.Enabled := False;

  //************************BRITO 22/11/10***********************************
  //reestablecer el valor por defecto del check box descuento
  //chkDescuento.Checked := true;
  chkDescuento.Visible := true;
  //************************BRITO 22/11/10***********************************

  dbExistencias.Enabled := True;
  desactivapop(popupprincipal);
  if sOpcionEmb = 'Insert' then
     frmBarra4.btnAdd.Click;
  sOpcionEmb := '';   
  BotonPermiso.permisosBotones(frmBarra4);

end;

procedure TfrmAdmonyTiempos.frmBarra4btnPrinterClick(Sender: TObject);
begin
  Application.CreateForm(TfrmOpcionesBarco, frmOpcionesBarco);
  frmOpcionesBarco.showModal;
end;

procedure TfrmAdmonyTiempos.frmBarra4btnCancelClick(Sender: TObject);
begin
//manejo de tab carmen
  tabexistencias.PageControl.Pages[0].TabVisible := true;
  tabexistencias.PageControl.Pages[1].TabVisible := true;
  tabexistencias.PageControl.Pages[2].TabVisible := true;
  frmBarra4.btnCancelClick(Sender);
  try
    qryRecursos.Cancel;
    //dIdFechaExistencia.Enabled :=False;
    iIdRecursoExistencia.Enabled := False;
    dProduccion.Enabled := False;
    dAjuste.Enabled := False; //*****************BRITO 17/12/10************
    dRecibido.Enabled := False;
    dConsumo.Enabled := False;
    dConsumoEquipos.Enabled := False;
    dPrestamos.Enabled := False;
    dTrasiego.Enabled := False;
    dExistenciaActual.Enabled := False;
    dExistenciaAnterior.Enabled := False;
    label34.Caption := '';
    //********************BRITO 22/11/10****************************************
    //chkDescuento.Checked := true;
    chkDescuento.Visible := true;
    //********************BRITO 22/11/10****************************************

  //items del popup   "aqui estuvo carmen"
    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;
    mkHora1.ReadOnly := False;
  except
  end;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra4);
  dbExistencias.Enabled := True;
  PanelExistencias.Enabled := False;
end;

procedure TfrmAdmonyTiempos.frmBarra4btnDeleteClick(Sender: TObject);
var
  IdRecurso: integer;
  vdExistenciaActual: Double;
begin
  if connection.contrato.FieldValues['sTipoObra'] <> 'BARCO' then
  begin
      messageDLG('SELECCIONE CONTRATO DE BARCO!', mtInformation, [mbOk], 0);
      exit;
  end;
  if ReporteLock then
  begin
    messageDLg('El Reporte Dairio se encuentra Validado/Autorizado. Favor de verificar!', mtInformation, [mbOk], 0);
    exit;
  end;

  IdRecurso := iIdRecursoExistencia.KeyValue;
  Entre := True;
  if qryRecursos.RecordCount > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        qryRecursos.Delete;
         //Sumamos lo recibido de las embarcaciones de apoyoo
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(r.dRecibido) as Recibido from recursos r ' +
          'inner join embarcaciones e on (r.sIdEmbarcacion = e.sIdEmbarcacion and e.sTipo = "Secundario" )' +
          'where r.sContrato =:Contrato and r.dIdFecha =:Fecha and r.sIdTurno =:Turno and r.iIdRecursoExistencia =:Recurso group by r.sContrato ');
         //connection.QryBusca.SQL.Add('select sum(r.dRecibido) as Recibido from recursos r '+
         //                            'inner join embarcaciones e on (r.sContrato = e.sContrato and r.sIdEmbarcacion = e.sIdEmbarcacion and e.sTipo = "Secundario" )'+
         //                            'where r.sContrato =:Contrato and r.dIdFecha =:Fecha and r.sIdTurno =:Turno and r.iIdRecursoExistencia =:Recurso group by r.sContrato ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Fecha').AsDate := tdFecha.Date;
        connection.QryBusca.ParamByName('Turno').AsString := global_turno;
        connection.QryBusca.ParamByName('Recurso').AsInteger := IdRecurso;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
             //Buscamos embarcacion principal..
          connection.QryBusca2.Active := False;
          connection.QryBusca2.SQL.Clear;
          connection.QryBusca2.SQL.Add('select sIdEmbarcacion from embarcaciones where sTipo = "Principal" ');
             //connection.QryBusca2.SQL.Add('select sIdEmbarcacion from embarcaciones where sContrato =:Contrato and sTipo = "Principal" ');
             //connection.QryBusca2.ParamByName('Contrato').AsString    := global_contrato;
          connection.QryBusca2.Open;

          if connection.QryBusca2.RecordCount > 0 then
          begin

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('select * from recursos where sContrato =:Contrato and dIdFecha =:Fecha ' +
              'and sIdTurno =:Turno and sIdEmbarcacion =:Embarcacion and iIdRecursoExistencia =:Recurso ');
            connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate := tdFecha.Date;
            connection.zCommand.ParamByName('Turno').AsString := global_turno;
            connection.zCommand.ParamByName('Embarcacion').AsString := connection.QryBusca2.FieldValues['sIdEmbarcacion'];
            connection.zCommand.ParamByName('Recurso').AsInteger := IdRecurso;
            connection.zCommand.Open;

            vdExistenciaActual := connection.zCommand.FieldValues['dProduccion'] + connection.zCommand.FieldValues['dExistenciaAnterior'] + connection.zCommand.FieldValues['dRecibido'];
            vdExistenciaActual := (vdExistenciaActual) - (connection.zCommand.FieldValues['dConsumo'] + connection.zCommand.FieldValues['dConsumoEquipos'] + connection.QryBusca.FieldValues['Recibido']);

                //Actualizamos la embarcacion principal
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update recursos set dPrestamos =:Prestamo, dExistenciaActual =:Existencia where sContrato =:Contrato and dIdFecha =:Fecha ' +
              'and sIdTurno =:Turno and sIdEmbarcacion =:Embarcacion and iIdRecursoExistencia =:Recurso ');
            connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate := tdFecha.Date;
            connection.zCommand.ParamByName('Turno').AsString := global_turno;
            connection.zCommand.ParamByName('Embarcacion').AsString := connection.QryBusca2.FieldValues['sIdEmbarcacion'];
            connection.zCommand.ParamByName('Prestamo').AsFloat := connection.QryBusca.FieldValues['Recibido'];
            connection.zCommand.ParamByName('Existencia').AsFloat := vdExistenciaActual;
            connection.zCommand.ParamByName('Recurso').AsInteger := IdRecurso;
            connection.zCommand.ExecSQL;
          end;
        end;

      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Al elimina registro en existencias', 0);
        end;
      end
    end

end;

procedure TfrmAdmonyTiempos.frmBarra4btnRefreshClick(Sender: TObject);
begin
  qryRecursos.Refresh;
  PanelExistencias.Enabled := False;
end;

procedure TfrmAdmonyTiempos.frmBarra4btnExitClick(Sender: TObject);
begin
  frmBarra4.btnExitClick(Sender);
  close;
end;

procedure TfrmAdmonyTiempos.qryRecursosBeforePost(DataSet: TDataSet);
var
  vdAcumuladoMezclas: Double;
  vdExistenciaAnterior: Double;
  vdExistenciaActual: Double;
  viIdRecursoExistencia: Integer;
  dConsumov, dConsumoEquiposv, dPrestamov,
    dProduccionv, dRecibidov: Double;
  QryIniciaDiesel: TZReadOnlyQuery;
begin
  QryIniciaDiesel := TZReadOnlyQuery.Create(self);
  QryIniciaDiesel.Connection := connection.zConnection;

  qryGetAcumulado := TZReadOnlyQuery.Create(self);
  qryGetAcumulado.Connection := connection.zConnection;
  qryGetAcumulado.Active := False;
  viIdRecursoExistencia := iIdRecursoExistencia.KeyValue;

  qryRecursos.FieldValues['sIdTurno'] := global_turno;
  qryRecursos.FieldValues['iIdRecursoExistencia'] := viIdRecursoExistencia;
  if dProduccion.Text = '' then
    qryRecursos.FieldValues['dProduccion'] := 0
  else
    qryRecursos.FieldValues['dProduccion'] := dProduccion.Value;

  //********************************BRITO 17/12/10******************************
  if dAjuste.Text = '' then
    qryRecursos.FieldValues['dAjuste'] := 0
  else
    qryRecursos.FieldValues['dAjuste'] := dAjuste.Value;
  //********************************BRITO 17/12/10******************************

  if dRecibido.Text = '' then
    qryRecursos.FieldValues['dRecibido'] := 0
  else
    qryRecursos.FieldValues['dRecibido'] := dRecibido.Value;

  if dConsumo.Text = '' then
    qryRecursos.FieldValues['dConsumo'] := 0
  else
    qryRecursos.FieldValues['dConsumo'] := dConsumo.Value;

  if dConsumoEquipos.Text = '' then
    qryRecursos.FieldValues['dConsumoEquipos'] := 0
  else
    qryRecursos.FieldValues['dConsumoEquipos'] := dConsumoEquipos.Value;

  if dPrestamos.Text = '' then
    qryRecursos.FieldValues['dPrestamos'] := 0
  else
    qryRecursos.FieldValues['dPrestamos'] := dPrestamos.Value;

  if dGalones.Text = '' then
    qryRecursos.FieldValues['dGalones'] := 0
  else
    qryRecursos.FieldValues['dGalones'] := dGalones.Value;

  //Obtener la existencia anterior
  vdExistenciaAnterior := 0;
  qryGetAcumulado.Active := False;
  qryGetAcumulado.SQL.Clear;
  qryGetAcumulado.SQL.Add('select dExistenciaActual as dExistenciaAnterior from recursos where ' +
    'sContrato=:sContrato and dIdFecha<:dIdFecha and ' +
    'sIdTurno=:sIdTurno and iIdRecursoExistencia=:iIdRecursoExistencia and sIdEmbarcacion =:Embarcacion ' +
    'Order By dIdFecha desc');
  qryGetAcumulado.Params.ParamByName('sContrato').DataType := ftString;
  qryGetAcumulado.Params.ParamByName('sContrato').Value := global_contrato;
  qryGetAcumulado.Params.ParamByName('dIdFecha').DataType := ftDate;
  qryGetAcumulado.Params.ParamByName('dIdFecha').Value := tdFecha.Date;
  qryGetAcumulado.Params.ParamByName('sIdTurno').DataType := ftString;
  qryGetAcumulado.Params.ParamByName('sIdTurno').Value := global_turno;
  qryGetAcumulado.Params.ParamByName('iIdRecursoExistencia').DataType := ftInteger;
  qryGetAcumulado.Params.ParamByName('iIdRecursoExistencia').Value := IntToStr(viIdRecursoExistencia);
  qryGetAcumulado.Params.ParamByName('Embarcacion').DataType := ftString;
  qryGetAcumulado.Params.ParamByName('Embarcacion').Value := tdEmbarcacionExist.KeyValue;

  qryGetAcumulado.Open;

  try
    if qryGetAcumulado.RecordCount > 0 then
      if qryGetAcumulado.FieldValues['dExistenciaAnterior'] <> 0 then
        vdExistenciaAnterior := qryGetAcumulado.FieldValues['dExistenciaAnterior']
      else
        vdExistenciaAnterior := 0
    else
      vdExistenciaAnterior := 0;
  except
    vdExistenciaAnterior := 0;
  end;
  //********************************BRITO 17/12/10******************************
  if dAjuste.Text <> '' then
    vdExistenciaAnterior := vdExistenciaAnterior + strtofloat(dAjuste.Text);
  //********************************BRITO 17/12/10******************************

  //Obtener el acumulado anterior
  vdAcumuladoMezclas := 0;
  qryGetAcumulado.Active := False;
  qryGetAcumulado.SQL.Clear;
  qryGetAcumulado.SQL.Add(' select sum(dExistenciaActual) as dAcumulado from recursos where ' +
    ' sContrato=:sContrato and dIdFecha<:dIdFecha and' +
    ' sIdTurno=:sIdTurno and iIdRecursoExistencia=:iIdRecursoExistencia and sIdEmbarcacion =:Embarcacion ');
  qryGetAcumulado.Params.ParamByName('sContrato').DataType := ftString;
  qryGetAcumulado.Params.ParamByName('sContrato').Value := global_contrato;
  qryGetAcumulado.Params.ParamByName('dIdFecha').DataType := ftDate;
  qryGetAcumulado.Params.ParamByName('dIdFecha').Value := tdFecha.Date;
  qryGetAcumulado.Params.ParamByName('sIdTurno').DataType := ftString;
  qryGetAcumulado.Params.ParamByName('sIdTurno').Value := global_turno;
  qryGetAcumulado.Params.ParamByName('iIdRecursoExistencia').DataType := ftInteger;
  qryGetAcumulado.Params.ParamByName('iIdRecursoExistencia').Value := IntToStr(viIdRecursoExistencia);
  qryGetAcumulado.Params.ParamByName('Embarcacion').DataType := ftString;
  qryGetAcumulado.Params.ParamByName('Embarcacion').Value := tdEmbarcacionExist.KeyValue;

  qryGetAcumulado.Open;

  try
    if qryGetAcumulado.RecordCount > 0 then
      if qryGetAcumulado.FieldValues['dAcumulado'] <> 0 then
        vdAcumuladoMezclas := qryGetAcumulado.FieldValues['dAcumulado']
      else
        vdAcumuladoMezclas := 0
    else
      vdAcumuladoMezclas := 0;
  except
    vdAcumuladoMezclas := 0;
  end;

  //Obtener la existencia actual verdadera
  if dConsumo.Text = '' then
    dConsumov := 0
  else
    dConsumov := dConsumo.value;

  if dConsumoEquipos.Text = '' then
    dConsumoEquiposv := 0
  else
    dConsumoEquiposV := dConsumoEquipos.value;

  if dPrestamos.Text = '' then
    dPrestamov := 0
  else
    dPrestamov := dPrestamos.value;

  if dProduccion.Text = '' then
    dProduccionv := 0
  else
    dProduccionv := dProduccion.value;
  if dRecibido.Text = '' then
    dRecibidov := 0
  else
    dRecibidov := dRecibido.value;

  //Consultamos si la embarcacion tiene diesel inicial.
  QryIniciaDiesel.Active := False;
  QryIniciaDiesel.SQL.clear;
  QryIniciaDiesel.SQL.Add('Select dCantidadInicial from embarcaciones where sIdEmbarcacion =:Embarcacion and sIniciaDiesel ="Si" ');
  //QryIniciaDiesel.SQL.Add('Select dCantidadInicial from embarcaciones where sContrato =:Contrato and sIdEmbarcacion =:Embarcacion and sIniciaDiesel ="Si" ');
  //QryIniciaDiesel.ParamByName('Contrato').AsString    := global_contrato;
  QryIniciaDiesel.ParamByName('Embarcacion').AsString := tdEmbarcacionExist.KeyValue;
  QryIniciaDiesel.Open;

  if QryIniciaDiesel.RecordCount > 0 then
  begin
    vdExistenciaAnterior := QryIniciaDiesel.FieldValues['dCantidadInicial'];

      //Qutiamos el indicador de inicio de Disel..
    QryIniciaDiesel.Active := False;
    QryIniciaDiesel.SQL.clear;
    QryIniciaDiesel.SQL.Add('Update embarcaciones set sIniciaDiesel = "No" where sIdEmbarcacion =:Embarcacion ');
      //QryIniciaDiesel.SQL.Add('Update embarcaciones set sIniciaDiesel = "No" where sContrato =:Contrato and sIdEmbarcacion =:Embarcacion ');
      //QryIniciaDiesel.ParamByName('Contrato').AsString    := global_contrato;
    QryIniciaDiesel.ParamByName('Embarcacion').AsString := tdEmbarcacionExist.KeyValue;
    QryIniciaDiesel.ExecSQL;

  end;

  vdExistenciaActual := dProduccionv + vdExistenciaAnterior + dRecibidov;
  vdExistenciaActual := (vdExistenciaActual) - (dConsumov + dConsumoEquiposv + dPrestamos.value);
  //Obtener el acumulado actual
  vdAcumuladoMezclas := vdAcumuladoMezclas + vdExistenciaActual;

  if vdExistenciaActual < 0 then
    vdExistenciaActual := 0;

  if vdExistenciaAnterior < 0 then
    vdExistenciaAnterior := 0;

  if vdAcumuladoMezclas < 0 then
    vdAcumuladoMezclas := 0;

  qryRecursos.FieldValues['dExistenciaActual'] := vdExistenciaActual;
  qryRecursos.FieldValues['dExistenciaAnterior'] := vdExistenciaAnterior;
  qryRecursos.FieldValues['dAcumulado'] := vdAcumuladoMezclas;

  qryGetAcumulado.Destroy;
end;

procedure TfrmAdmonyTiempos.qryRecursosAfterPost(DataSet: TDataSet);
begin
  try
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT iIdRecursoExistencia FROM recursosdeexistencias ');
    connection.QryBusca.Open;
    if Entre = true then
    begin
      while connection.QryBusca.Eof = false do
      begin
        procActualizaExistencias(global_contrato, DateToStr(tdFecha.Date), global_turno, connection.QryBusca.FieldValues['iIdRecursoExistencia'], self);
        connection.QryBusca.Next;
      end;
    end;
    qryRecursos.Refresh;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Despues de salvar registro', 0);
    end;
  end;
end;

procedure TfrmAdmonyTiempos.qryRecursosAfterScroll(DataSet: TDataSet);
begin
  if qryRecursos.RecordCount > 0 then
    if qryRecursos.Eof = False then
    begin
      iIdRecursoExistencia.KeyValue := qryRecursos.FieldValues['iIdRecursoExistencia'];
      dProduccion.Text := FloatToStr(qryRecursos.FieldValues['dProduccion']);
      dAjuste.Text := FloatToStr(qryRecursos.FieldValues['dAjuste']); //****************BRITO 17/12/10*************
      dRecibido.Text := FloatToStr(qryRecursos.FieldValues['dRecibido']);
      dConsumo.Text := FloatToStr(qryRecursos.FieldValues['dConsumo']);
      dConsumoEquipos.Text := FloatToStr(qryRecursos.FieldValues['dConsumoEquipos']);
      dPrestamos.Text := FloatToStr(qryRecursos.FieldValues['dPrestamos']);
      dGalones.Text   := FloatToStr(qryRecursos.FieldValues['dGalones']);
      dExistenciaActual.Text := FloatToStr(qryRecursos.FieldValues['dExistenciaActual']);
      dExistenciaAnterior.Text := FloatToStr(qryRecursos.FieldValues['dExistenciaAnterior']);
      chkDescuento.Visible := not (Embarcaciones2.FieldByName('sTipo').AsString = 'Principal'); //********************BRITO 22/11/10****************************************
      label34.Caption := qryRecursos.FieldValues['CalcMezclasMedidas'];
    end
end;

procedure TfrmAdmonyTiempos.qryRecursosAfterDelete(DataSet: TDataSet);
begin
  try
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT iIdRecursoExistencia FROM recursosdeexistencias ');
    connection.QryBusca.Open;
    if Entre = False then
    begin
      while connection.QryBusca.Eof = false do
      begin
        procActualizaExistencias(global_contrato, DateToStr(tdFecha.Date), global_turno, connection.QryBusca.FieldValues['iIdRecursoExistencia'], self);
        connection.QryBusca.Next;
      end;
    end;
    qryRecursos.Refresh;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion y Tiempos', 'Despues de eliminar registro', 0);
    end;
  end;
end;

procedure TfrmAdmonyTiempos.dPrestamosKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dPrestamos, key) then
    key := #0;
  if key = #13 then
    if dTrasiego.Visible then
      dTrasiego.SetFocus
    else
      dAjuste.SetFocus;
end;

procedure TfrmAdmonyTiempos.dProduccionEnter(Sender: TObject);
begin
  dProduccion.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dProduccionExit(Sender: TObject);
begin
  dProduccion.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dRecibidoEnter(Sender: TObject);
begin
  dRecibido.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dRecibidoExit(Sender: TObject);
begin
  dRecibido.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dConsumoEnter(Sender: TObject);
begin
  dConsumo.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dConsumoExit(Sender: TObject);
begin
     dConsumo.Color := global_color_salida;
     if (dConsumos <> dConsumo.Value) then
     begin
         dConsumo.Value := dConsumo.Value - dConsumoEquipos.Value;
         dConsumos := dConsumo.Value;
     end;

     //consultamos la equivalencia de Galones a M3
     connection.QryBusca.Active := False;
     connection.QryBusca.SQL.Clear;
     connection.QryBusca.SQL.Add('select dGalones from configuracion where sContrato =:contrato ');
     connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
     connection.QryBusca.Open;

     dGalones.Value := dConsumo.Value / connection.QryBusca.FieldByName('dGalones').AsFloat;
end;

procedure TfrmAdmonyTiempos.dConsumoEquiposEnter(Sender: TObject);
begin
  dConsumoEquipos.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dConsumoEquiposExit(Sender: TObject);
begin
    dConsumoEquipos.Color := global_color_salida;
    if (dEquipos <> dConsumoEquipos.Value) then
    begin
        dConsumo.Value := dConsumo.Value - dConsumoEquipos.Value;
        dEquipos := dConsumoEquipos.Value;
    end;
end;

procedure TfrmAdmonyTiempos.dTrasiegoEnter(Sender: TObject);
begin
  dPrestamos.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dTrasiegoExit(Sender: TObject);
begin
  dPrestamos.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dExistenciaActualChange(Sender: TObject);
begin
  TRxCalcEditChangef(dExistenciaActual, 'Existencia Actual');
end;

procedure TfrmAdmonyTiempos.dExistenciaActualEnter(Sender: TObject);
begin
  dExistenciaActual.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dExistenciaActualExit(Sender: TObject);
begin
  dExistenciaActual.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dExistenciaAnteriorExit(Sender: TObject);
begin
  dExistenciaAnterior.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dExistenciaAnteriorChange(Sender: TObject);
begin
  TRxCalcEditChangef(dExistenciaAnterior, 'Existencia Anterior');
end;

procedure TfrmAdmonyTiempos.dExistenciaAnteriorEnter(Sender: TObject);
begin
  dExistenciaAnterior.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.iIdRecursoExistenciaEnter(Sender: TObject);
begin
  iIdRecursoExistencia.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.iIdRecursoExistenciaExit(Sender: TObject);
begin
     iIdRecursoExistencia.Color := global_color_salida;
     label34.Caption := qryMezclas.FieldValues['sMedida'];
end;

procedure TfrmAdmonyTiempos.dIdFechaExistenciaExit(Sender: TObject);
begin
  iIdRecursoExistencia.Color := global_color_salida;
end;

procedure TfrmAdmonyTiempos.dIdFechaExistenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
 { if key = #13 then
    iIdRecursoExistencia.SetFocus;   }
end;

procedure TfrmAdmonyTiempos.iIdRecursoExistenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    dConsumo.SetFocus;
end;

procedure TfrmAdmonyTiempos.Imprimir1Click(Sender: TObject);
begin
  if tabexistencias.PageControl.Pages[0].TabVisible = true then
    frmBarra1.btnPrinter.Click;
  if tabexistencias.PageControl.Pages[1].TabVisible = true then
    frmBarra3.btnPrinter.Click;
  if tabexistencias.PageControl.Pages[2].TabVisible = true then
    frmBarra2.btnPrinter.Click;
  if tabexistencias.PageControl.Pages[3].TabVisible = true then
    frmBarra4.btnPrinter.Click;
end;

procedure TfrmAdmonyTiempos.ImprimirTiempoCia1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TfrmAdmonyTiempos.Insertar1Click(Sender: TObject);
begin
  if dbmovbarco.Focused then
    frmBarra1.btnAdd.Click;
  if dbcondiciones.Focused then
    frmBarra3.btnAdd.Click;
  if dbmovtosembarcacion.Focused then
    frmBarra2.btnAdd.Click;
  if dbexistencias.Focused then
    frmBarra4.btnAdd.Click;
end;

procedure TfrmAdmonyTiempos.dProduccionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dProduccion, key) then
    key := #0;
  if key = #13 then
    dRecibido.SetFocus;
end;

procedure TfrmAdmonyTiempos.dRecibidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dRecibido, key) then
    key := #0;
  if key = #13 then
    dConsumoEquipos.SetFocus;
end;

procedure TfrmAdmonyTiempos.dConsumoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dConsumo, key) then
    key := #0;
  if key = #13 then
    dProduccion.SetFocus;
end;

procedure TfrmAdmonyTiempos.dConsumoEquiposKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dConsumoEquipos, key) then
    key := #0;

  if key = #13 then
    dPrestamos.SetFocus;
end;

procedure TfrmAdmonyTiempos.dTrasiegoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dTrasiego, key) then
    key := #0;
  if key = #13 then
    dAjuste.SetFocus;
end;

procedure TfrmAdmonyTiempos.dExistenciaActualKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dExistenciaActual, key) then
    key := #0;
  if key = #13 then
    dExistenciaAnterior.SetFocus;
end;

procedure TfrmAdmonyTiempos.dExistenciaAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dExistenciaAnterior, key) then
    key := #0;
  if key = #13 then
    frmBarra4.btnPost.SetFocus;
end;

procedure TfrmAdmonyTiempos.dGalonesEnter(Sender: TObject);
begin
    dGalones.Color := global_color_entrada;
end;

procedure TfrmAdmonyTiempos.dGalonesExit(Sender: TObject);
begin
     dGalones.Color := global_color_salida;
     //consultamos la equivalencia de Galones a M3
     connection.QryBusca.Active := False;
     connection.QryBusca.SQL.Clear;
     connection.QryBusca.SQL.Add('select dGalones from configuracion where sContrato =:contrato ');
     connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
     connection.QryBusca.Open;

     dConsumo.Value :=  dGalones.Value * connection.QryBusca.FieldByName('dGalones').AsFloat;
end;

procedure TfrmAdmonyTiempos.dGalonesKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
       dProduccion.SetFocus;
end;

procedure TfrmAdmonyTiempos.MovimientosdeBarcoAfterScroll(DataSet: TDataSet);
begin
  if sOpcionEmb = '' then
  begin
    if movimientosdebarco.RecordCount > 0 then
    begin
      mkHora1.Text := movimientosdebarco.FieldValues['sHoraInicio'];
      mkHora2.Text := movimientosdebarco.FieldValues['sHoraFinal'];
      sSuma.Text := movimientosdebarco.FieldValues['sFactor'];
      tmDescripcion2.Text := movimientosdebarco.FieldValues['mDescripcion'];

      if movimientosdebarco.FieldValues['lContinuo'] = 'Si' then
         chkContinuaMov.Checked := True
      else
         chkContinuaMov.Checked := False;
    end
  end;
end;

procedure TfrmAdmonyTiempos.MovimientosdeBarcoCalcFields(DataSet: TDataSet);
begin
    MovimientosdeBarcosDescripcion.Text := MovimientosdeBarco.FieldValues['mDescripcion'];
end;

procedure TfrmAdmonyTiempos.movimientosdeembarcacionAfterScroll(
  DataSet: TDataSet);
begin
  if sOpcionEmb = '' then
    if movimientosdeembarcacion.RecordCount > 0 then
    begin
      tsHoraInicio.Text := movimientosdeembarcacion.FieldValues['sHoraInicio'];
      tsHoraFinal.Text := movimientosdeembarcacion.FieldValues['sHoraFinal'];
      tmDescripcion.Text := movimientosdeembarcacion.FieldValues['mDescripcion'];
      if movimientosdeembarcacion.FieldValues['sTipo'] = 'ARRIBO' then
        rbArribo.Checked := True
      else
        if movimientosdeembarcacion.FieldValues['sTipo'] = 'DISPOSICION' then
          rbDisposicion.Checked := True;

      if movimientosdeembarcacion.FieldValues['lContinuo'] = 'Si' then
         chkContinuaArribo.Checked := True
      else
         chkContinuaArribo.Checked := False;
    end;
end;

procedure TfrmAdmonyTiempos.movimientosdeembarcacionCalcFields(
  DataSet: TDataSet);
begin
   movimientosdeembarcacionsDescripcion.Text := MovimientosdeEmbarcacion.FieldValues['mDescripcion'];
end;

procedure TfrmAdmonyTiempos.Paste1Click(Sender: TObject);
begin
  if lCopiaObjeto then
  begin
     if tabexistencias.PageControl.Pages[0].TabVisible = true then
        tmDescripcion2.PasteFromClipboard;
     If tabexistencias.PageControl.Pages[1].TabVisible = true then
        sPronostico.PasteFromClipboard;
     If tabexistencias.PageControl.Pages[2].TabVisible = true then
        tmDescripcion.PasteFromClipboard;
  end
  else
  begin
      if tabexistencias.PageControl.Pages[0].TabVisible = true then
      begin
       // UtGrid.AddRowsFromClip;
      end;
      if tabexistencias.PageControl.Pages[1].TabVisible = true then
      begin
        //UtGrid2.AddRowsFromClip;
      end;
      if tabexistencias.PageControl.Pages[2].TabVisible = true then
      begin
        UtGrid3.AddRowsFromClip;
      end;
      if tabexistencias.PageControl.Pages[3].TabVisible = true then
      begin
        UtGrid4.AddRowsFromClip;
      end;
  end;
end;

procedure TfrmAdmonyTiempos.pgAdmonChange(Sender: TObject);
begin
    lblBusca.Text := '';
    label34.Caption := '';
end;

procedure TfrmAdmonyTiempos.tsClasificacionesEnter(Sender: TObject);
begin
  tsClasificaciones.Color := Global_Color_Entrada;
end;

procedure TfrmAdmonyTiempos.tsClasificacionesExit(Sender: TObject);
begin
  tsClasificaciones.Color := Global_Color_Salida;
end;

procedure TfrmAdmonyTiempos.tsClasificacionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdFase.SetFocus;
end;

function TfrmAdmonyTiempos.ReporteLock;
begin
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('select * from reportediario where sContrato =:Contrato and sIdConvenio =:Convenio and dIdFecha =:Fecha and sIdTurno =:Turno and lStatus <> "Pendiente"');
  connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
  connection.zCommand.ParamByName('Fecha').AsDate := tdFecha.Date;
  connection.zCommand.ParamByName('Turno').AsString := global_turno;
  connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
  connection.zCommand.Open;

  if connection.zCommand.RecordCount > 0 then
    ReporteLock := True
  else
    ReporteLock := False;
end;

procedure TfrmAdmonyTiempos.filtra;
var
   filtro, buscar : string;
begin
    filtro := '';
    if length(trim(lblBusca.Text)) > 0 then
    begin
      buscar := lblBusca.Text;
      buscar := '*'+buscar + '*';

      filtro := 'sDescripcion like ' + QuotedStr(buscar);
    end;

    if filtro <> '' then
    begin
        embarcaciones.Filtered := False;
        embarcaciones.Filter   := filtro;
        embarcaciones.Filtered := True;
    end
    else
    begin
        embarcaciones.Filtered := False;
    end;
end;

procedure TfrmAdmonyTiempos.filtraCondicion;
var
   filtro, buscar : string;
begin
    filtro := '';
    if length(trim(lblBusca.Text)) > 0 then
    begin
      buscar := lblBusca.Text;
      buscar := '*'+buscar + '*';

      filtro := 'sDescripcion like ' + QuotedStr(buscar);
    end;

    if filtro <> '' then
    begin
        Qrydirecciones.Filtered := False;
        Qrydirecciones.Filter   := filtro;
        Qrydirecciones.Filtered := True;
    end
    else
    begin
        Qrydirecciones.Filtered := False;
    end;
end;

end.

