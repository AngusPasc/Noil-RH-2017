unit frm_EstimacionGeneral;

interface

uses
  Windows, Messages, SysUtils,StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, DB, StdCtrls, Grids, DBGrids,
  frm_barra, ComCtrls, DBCtrls, Mask, Menus, ExtCtrls, frxClass, frxDBSet,
  ToolWin,  RXDBCtrl, Buttons, RxMemDS, DateUtils,
  jpeg,  FramedPanel, BrowseOpenDialog, ShellCtrls, unitEstimacion, 
  Sockets, IdGlobal, Newpanel, utilerias, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, math, frxRich, rxToolEdit, JvMemoryDataset, udbgrid, unitexcepciones, UnitTBotonesPermisos,UnitValidaTexto,
  UFunctionsGHH, DBDateTimePicker, UnitValidacion;
  function IsDate(ADate: string): Boolean;
type
  TfrmEstimacionGeneral = class(TForm)
    ds_EstimacionOrden: TDataSource;
    dsEstimacionGeneral: TDataSource;
    gbGeneradores: tNewGroupBox;
    gbEstimaciones: tNewGroupBox;
    frmBarra1: TfrmBarra;
    Grid_Generadores: TRxDBGrid;
    TiposdeEstimacion: TZReadOnlyQuery;
    ds_TiposdeEstimacion: TDataSource;
    EstimacionOrden: TZReadOnlyQuery;
    EstimacionOrdensContrato: TStringField;
    EstimacionOrdeniNumeroEstimacion: TStringField;
    EstimacionOrdeniConsecutivo: TIntegerField;
    EstimacionOrdendFechaInicio: TDateField;
    EstimacionOrdendFechaFinal: TDateField;
    EstimacionOrdenlStatus: TStringField;
    EstimacionOrdendMontoMN: TFloatField;
    EstimacionOrdendMontoDLL: TFloatField;
    EstimacionOrdendFinancieroGenerador: TFloatField;
    dsEstimacionCaratula: TfrxDBDataset;
    ActividadesxEstimacion: TZReadOnlyQuery;
    dsActividadesxEstimacion: TfrxDBDataset;
    popEstimaciones: TPopupMenu;
    Acumulados1: TMenuItem;
    Parciales1: TMenuItem;
    frGenerador: TfrxReport;
    dsConcentradoIsometricos: TfrxDBDataset;
    tNewGroupBox2: tNewGroupBox;
    Label1: TLabel;
    tiNumeroEstimacion: TDBEdit;
    Label6: TLabel;
    tsTipo: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Grid_Estimaciones: TRxDBGrid;
    EstimacionGeneral: TZQuery;
    EstimacionGeneraliNumeroEstimacion: TStringField;
    EstimacionGeneralsIdTipoEstimacion: TStringField;
    EstimacionGeneraldIdFecha: TDateField;
    EstimacionGeneraldFechaInicio: TDateField;
    EstimacionGeneraldFechaFinal: TDateField;
    EstimacionGenerallEstimado: TStringField;
    EstimacionGeneraldMontoMN: TFloatField;
    EstimacionGeneraldMontoDLL: TFloatField;
    EstimacionGeneraldMontoAcumuladoMN: TFloatField;
    EstimacionGeneraldMontoAcumuladoDLL: TFloatField;
    EstimacionGeneralsElementoPEP: TStringField;
    EstimacionGeneralsFondo: TStringField;
    EstimacionGeneralsPosicionFinanciera: TStringField;
    EstimacionGeneralsCuentaMayor: TStringField;
    EstimacionGeneralsCentroGestor: TStringField;
    EstimacionGeneralsCentroCosto: TStringField;
    EstimacionGeneralsCentroBeneficio: TStringField;
    EstimacionGeneralsProyecto: TStringField;
    EstimacionGeneralmComentarios: TMemoField;
    EstimacionGeneraldAvanceFisicoProgramado: TFloatField;
    EstimacionGeneraldAvanceFisicoReal: TFloatField;
    EstimacionGeneraldAvanceFinancieroProgramado: TFloatField;
    EstimacionGeneraldAvanceFinancieroReal: TFloatField;
    EstimacionGeneraldFechaInicioContrato: TDateField;
    EstimacionGeneraldFechaFinalContrato: TDateField;
    EstimacionGeneralsDescripcion: TStringField;
    EstimacionGeneralsIdUsuarioAutoriza: TStringField;
    EstimacionGeneralsFirmas: TMemoField;
    tsMoneda: TDBLookupComboBox;
    TipoMoneda: TZReadOnlyQuery;
    ds_TipoMoneda: TDataSource;
    EstimacionGeneralsIdMoneda: TStringField;
    EstimacionOrdensIdConvenio: TStringField;
    EstimacionOrdendFechaInicio_Convenio: TDateField;
    EstimacionOrdendFechaFinal_Convenio: TDateField;
    EstimacionGeneralIdConsecutivo: TIntegerField;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    txtId: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    txtEditaId: TDBEdit;
    TolGeneradores: TToolBar;
    Nueva_Est: TToolButton;
    Editar_Est: TToolButton;
    Eliminar_Est: TToolButton;
    EstimacionesSinCobro: TToolButton;
    btnVerificacion: TToolButton;
    popEstimacionOrden: TPopupMenu;
    MnuReporteOrden: TMenuItem;
    MenuItem7: TMenuItem;
    EstimacionOrdensIdTipoEstimacion: TStringField;
    EstimacionOrdensIdUsuarioValida: TStringField;
    EstimacionOrdensIdUsuarioAutoriza: TStringField;
    EstimacionOrdeniNumeroEstimacionSub: TStringField;
    EstimacionOrdenEstimacionOrden: TStringField;
    UMryEstimacion: TfrxDBDataset;
    MryEstimacion: TJvMemoryData;
    MryEstimacionsContrato: TStringField;
    MryEstimacionsAnexo: TStringField;
    MryEstimacioniNumeroEstimacion: TIntegerField;
    MryEstimacioniNivel: TIntegerField;
    MryEstimacionsNumeroActividad: TStringField;
    MryEstimacionsTipoActividad: TStringField;
    MryEstimacionmDescripcion: TBlobField;
    MryEstimaciondCosto: TFloatField;
    MryEstimaciondVenta: TFloatField;
    MryEstimacionsMedida: TStringField;
    MryEstimaciondCantidad: TFloatField;
    MryEstimaciondAcumuladoAnterior: TFloatField;
    MryEstimaciondAcumuladoActual: TFloatField;
    MryEstimacionsPartida: TStringField;
    Firmas: TZReadOnlyQuery;
    FirmassFirmante19: TStringField;
    FirmassFirmante20: TStringField;
    FirmassFirmante21: TStringField;
    FirmassFirmante22: TStringField;
    FirmassPuesto19: TStringField;
    FirmassPuesto20: TStringField;
    FirmassPuesto21: TStringField;
    FirmassPuesto22: TStringField;
    dsFirmas: TfrxDBDataset;
    ActividadesxEstimacionDLL: TZReadOnlyQuery;
    btnAvances: TToolButton;
    MryEstimaciondCantCont: TStringField;
    tdIdFecha: TDBDateTimePicker;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    ActividadesxEstimacionDLLcontratobarco: TStringField;
    ActividadesxEstimacionDLLInicioEstimacion: TDateField;
    ActividadesxEstimacionDLLFinEstimacion: TDateField;
    ActividadesxEstimacionDLLEmbarcacion: TStringField;
    ActividadesxEstimacionDLLdIdFecha: TDateField;
    ActividadesxEstimacionDLLCiudad: TStringField;
    ActividadesxEstimacionDLLDescripcionOT: TMemoField;
    ActividadesxEstimacionDLLComentariosOT: TMemoField;
    ActividadesxEstimacionDLLNumeroPOT: TStringField;
    ActividadesxEstimacionDLLtitulo: TMemoField;
    ActividadesxEstimacionDLLtituloOrden: TMemoField;
    ActividadesxEstimacionDLLcompany: TStringField;
    ActividadesxEstimacionDLLMontoMN: TFloatField;
    ActividadesxEstimacionDLLMontoDLL: TFloatField;
    ActividadesxEstimacionDLLFechaIContrato: TDateField;
    ActividadesxEstimacionDLLFechaFContrato: TDateField;
    ActividadesxEstimacionDLLFechaIOrden: TDateField;
    ActividadesxEstimacionDLLFechaFOrden: TDateField;
    ActividadesxEstimacionDLLProgramadoFisico: TFloatField;
    ActividadesxEstimacionDLLRealFisico: TFloatField;
    ActividadesxEstimacionDLLProgramadoFinanciero: TFloatField;
    ActividadesxEstimacionDLLRealFinanciero: TFloatField;
    ActividadesxEstimacionDLLsIdMoneda: TStringField;
    ActividadesxEstimacionDLLsDescripcionCorta: TStringField;
    ActividadesxEstimacionDLLsDescripcion: TStringField;
    ActividadesxEstimacionDLLsContrato: TStringField;
    ActividadesxEstimacionDLLiNumeroEstimacion: TStringField;
    ActividadesxEstimacionDLLiNumeroEstimacionSub: TStringField;
    ActividadesxEstimacionDLLsIdTipoEstimacion: TStringField;
    ActividadesxEstimacionDLLiConsecutivo: TIntegerField;
    ActividadesxEstimacionDLLsAnexo: TStringField;
    ActividadesxEstimacionDLLsWbs: TStringField;
    ActividadesxEstimacionDLLsWbsAnterior: TStringField;
    ActividadesxEstimacionDLLsNumeroActividad: TStringField;
    ActividadesxEstimacionDLLsTipoActividad: TStringField;
    ActividadesxEstimacionDLLiItemOrden: TStringField;
    ActividadesxEstimacionDLLiOrden: TIntegerField;
    ActividadesxEstimacionDLLmDescripcion: TMemoField;
    ActividadesxEstimacionDLLdCostoMN: TFloatField;
    ActividadesxEstimacionDLLdCostoDll: TFloatField;
    ActividadesxEstimacionDLLdVentaMN: TFloatField;
    ActividadesxEstimacionDLLdVentaDLL: TFloatField;
    ActividadesxEstimacionDLLsMedida: TStringField;
    ActividadesxEstimacionDLLdCantidadAnexo: TFloatField;
    ActividadesxEstimacionDLLdAcumuladoAnterior: TFloatField;
    ActividadesxEstimacionDLLdMontoAcumuladoAnteriorMN: TFloatField;
    ActividadesxEstimacionDLLdMontoAcumuladoAnteriorDLL: TFloatField;
    ActividadesxEstimacionDLLdCantidad: TFloatField;
    ActividadesxEstimacionDLLdCantidadPT: TFloatField;
    ActividadesxEstimacionDLLdCantidadRestante: TFloatField;
    ActividadesxEstimacionDLLdCantidadExcedente: TFloatField;
    ActividadesxEstimacionDLLiOrigen: TIntegerField;
    ActividadesxEstimacionDLLdMontoMN: TFloatField;
    ActividadesxEstimacionDLLdMontoDLL: TFloatField;
    ActividadesxEstimacionDLLdAcumuladoActual: TFloatField;
    ActividadesxEstimacionDLLdMontoAcumuladoMN: TFloatField;
    ActividadesxEstimacionDLLdMontoAcumuladoDLL: TFloatField;
    ActividadesxEstimacionDLLsAgrupa: TStringField;
    ActividadesxEstimacionDLLdMontoxAnexoMN: TFloatField;
    ActividadesxEstimacionDLLdMontoxAnexoAcumuladoMN: TFloatField;
    ActividadesxEstimacionDLLdMontoxAnexoDLL: TFloatField;
    ActividadesxEstimacionDLLdMontoxAnexoAcumuladoDLL: TFloatField;
    ActividadesxEstimacionDLLlVisualiza: TStringField;
    ActividadesxEstimacionDLLAnexoDescripcion: TStringField;
    ActividadesxEstimacionDLLAnexoUnidad: TStringField;
    ActividadesxEstimacionDLLAnexoMonto: TFloatField;
    ActividadesxEstimacionDLLAnexoCantidad: TFloatField;
    ActividadesxEstimacionDLLplataforma: TStringField;
    ActividadesxEstimacionDLLTipoAnexo: TStringField;
    ActividadesxEstimacionDLLdMontoTotalMN: TFloatField;
    ActividadesxEstimacionDLLdMontoTotalDLL: TFloatField;
    ActividadesxEstimacionDLLdMontoAcumuladoTotalMN: TFloatField;
    ActividadesxEstimacionDLLdMontoAcumuladoTotalDLL: TFloatField;
    ActividadesxEstimacioncontratobarco: TStringField;
    ActividadesxEstimacionInicioEstimacion: TDateField;
    ActividadesxEstimacionFinEstimacion: TDateField;
    ActividadesxEstimacionEmbarcacion: TStringField;
    ActividadesxEstimaciondIdFecha: TDateField;
    ActividadesxEstimacionCiudad: TStringField;
    ActividadesxEstimacionDescripcionOT: TMemoField;
    ActividadesxEstimacionComentariosOT: TMemoField;
    ActividadesxEstimacionNumeroPOT: TStringField;
    ActividadesxEstimaciontitulo: TMemoField;
    ActividadesxEstimaciontituloOrden: TMemoField;
    ActividadesxEstimacioncompany: TStringField;
    ActividadesxEstimacionMontoMN: TFloatField;
    ActividadesxEstimacionMontoDLL: TFloatField;
    ActividadesxEstimacionFechaIContrato: TDateField;
    ActividadesxEstimacionFechaFContrato: TDateField;
    ActividadesxEstimacionFechaIOrden: TDateField;
    ActividadesxEstimacionFechaFOrden: TDateField;
    ActividadesxEstimacionProgramadoFisico: TFloatField;
    ActividadesxEstimacionRealFisico: TFloatField;
    ActividadesxEstimacionProgramadoFinanciero: TFloatField;
    ActividadesxEstimacionRealFinanciero: TFloatField;
    ActividadesxEstimacionsIdMoneda: TStringField;
    ActividadesxEstimacionsDescripcionCorta: TStringField;
    ActividadesxEstimacionsDescripcion: TStringField;
    ActividadesxEstimacionsContrato: TStringField;
    ActividadesxEstimacioniNumeroEstimacion: TStringField;
    ActividadesxEstimacioniNumeroEstimacionSub: TStringField;
    ActividadesxEstimacionsIdTipoEstimacion: TStringField;
    ActividadesxEstimacioniConsecutivo: TIntegerField;
    ActividadesxEstimacionsAnexo: TStringField;
    ActividadesxEstimacionsWbs: TStringField;
    ActividadesxEstimacionsWbsAnterior: TStringField;
    ActividadesxEstimacionsNumeroActividad: TStringField;
    ActividadesxEstimacionsTipoActividad: TStringField;
    ActividadesxEstimacioniItemOrden: TStringField;
    ActividadesxEstimacioniOrden: TIntegerField;
    ActividadesxEstimacionmDescripcion: TMemoField;
    ActividadesxEstimaciondCostoMN: TFloatField;
    ActividadesxEstimaciondCostoDll: TFloatField;
    ActividadesxEstimaciondVentaMN: TFloatField;
    ActividadesxEstimaciondVentaDLL: TFloatField;
    ActividadesxEstimacionsMedida: TStringField;
    ActividadesxEstimaciondCantidadAnexo: TFloatField;
    ActividadesxEstimaciondAcumuladoAnterior: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoAnteriorDLL: TFloatField;
    ActividadesxEstimaciondCantidad: TFloatField;
    ActividadesxEstimaciondCantidadPT: TFloatField;
    ActividadesxEstimaciondCantidadRestante: TFloatField;
    ActividadesxEstimaciondCantidadExcedente: TFloatField;
    ActividadesxEstimacioniOrigen: TIntegerField;
    ActividadesxEstimaciondMontoMN: TFloatField;
    ActividadesxEstimaciondMontoDLL: TFloatField;
    ActividadesxEstimaciondAcumuladoActual: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoDLL: TFloatField;
    ActividadesxEstimacionsAgrupa: TStringField;
    ActividadesxEstimaciondMontoxAnexoMN: TFloatField;
    ActividadesxEstimaciondMontoxAnexoAcumuladoMN: TFloatField;
    ActividadesxEstimaciondMontoxAnexoDLL: TFloatField;
    ActividadesxEstimaciondMontoxAnexoAcumuladoDLL: TFloatField;
    ActividadesxEstimacionlVisualiza: TStringField;
    ActividadesxEstimacionAnexoDescripcion: TStringField;
    ActividadesxEstimacionAnexoUnidad: TStringField;
    ActividadesxEstimacionAnexoMonto: TFloatField;
    ActividadesxEstimacionAnexoCantidad: TFloatField;
    ActividadesxEstimacionplataforma: TStringField;
    ActividadesxEstimacionTipoAnexo: TStringField;
    ActividadesxEstimaciondMontoTotalMN: TFloatField;
    ActividadesxEstimaciondMontoTotalDLL: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoTotalMN: TFloatField;
    ActividadesxEstimaciondMontoAcumuladoTotalDLL: TFloatField;
    procedure ActualizaFirmas2 ( dFecha: TDateTime ) ;
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure tiNumeroEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsMonedaKeyPress(Sender: TObject; var Key: Char);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsTipoKeyPress(Sender: TObject; var Key: Char);
    procedure tiNumeroEstimacionEnter(Sender: TObject);
    procedure tiNumeroEstimacionExit(Sender: TObject);
    procedure tsTipoEnter(Sender: TObject);
    procedure tsTipoExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tsMonedaEnter(Sender: TObject);
    procedure tsMonedaExit(Sender: TObject);
    procedure Nueva_EstClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure Grid_EstimacionesEnter(Sender: TObject);
    procedure EstimacionGeneralAfterScroll(DataSet: TDataSet);
    procedure frGeneradorGetValue(const VarName: String;
      var Value: Variant);
    procedure Grid_GeneradoresGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure EstimacionGeneralCalcFields(DataSet: TDataSet);
    procedure mnEstimacionClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure MnuReporteOrdenClick(Sender: TObject);
    procedure Eliminar_EstClick(Sender: TObject);
    procedure Editar_EstClick(Sender: TObject);
    procedure EstimacionesSinCobroClick(Sender: TObject);
    procedure Grid_GeneradoresDblClick(Sender: TObject);
    procedure btnVerificacionClick(Sender: TObject);
    procedure EstimacionOrdenCalcFields(DataSet: TDataSet);
    procedure MenuItem7Click(Sender: TObject);
    procedure btnAvancesClick(Sender: TObject);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_GeneradoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_GeneradoresMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);
    procedure Grid_GeneradoresTitleClick(Column: TColumn);
    procedure txtEditaIdKeyPress(Sender: TObject; var Key: Char);
    procedure txtEditaIdEnter(Sender: TObject);
    procedure txtEditaIdExit(Sender: TObject);
    procedure tdFechaFinalChange(Sender: TObject);
    procedure txtEditaIdChange(Sender: TObject);
    procedure tiNumeroEstimacionChange(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionGeneral: TfrmEstimacionGeneral;
  dFactor : Real ;
  sOpcion : String ;
  sPath   : String ;
  sDescripcion    : String ;
  mDescripcion    : WideString ;
  iNumeroEstimacion : String ;
  SumaMonto, SumaAcum : Real;
  ImpMoneda  :String;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  {Variables}
  Opcion : string;
  BotonPermiso:TBotonesPermisos;
implementation

uses frm_EstimacionAlbum, frm_estimaciones, frm_estimacionOrdenes,
  frm_EditaEstimacion, frm_estimacionAnterior, frm_estimacionAdicional,
  frm_estimacionAvances;

{$R *.dfm}

procedure TfrmEstimacionGeneral.FormShow(Sender: TObject);
begin
  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'optEstimaciones', popEstimaciones);
  UtGrid:=TicdbGrid.create(grid_estimaciones);
  UtGrid2:=TicdbGrid.create(grid_generadores);
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  TiposdeEstimacion.Active := False ;
  TiposdeEstimacion.Open ;
  TipoMoneda.Active := False ;
  TipoMoneda.Open ;
  EstimacionGeneral.Active := False ;
  EstimacionGeneral.Open ;
  EstimacionGeneral.FieldDefs.AddFieldDef;
  Grid_Estimaciones.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;
function IsDate(ADate: string): Boolean;
 var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmEstimacionGeneral.frmBarra1btnAddClick(Sender: TObject);
begin
try
   frmBarra1.btnAddClick(Sender);
   Opcion := 'Nuevo';
   EstimacionGeneral.Append ;
   EstimacionGeneral.FieldValues['dIdFecha']  := Date ;
   EstimacionGeneral.FieldValues['dFechaInicio']  := Date ;
   EstimacionGeneral.FieldValues['dFechaFinal']  := Date ;
   EstimacionGeneral.FieldValues['lEstimado'] := 'No' ;
   EstimacionGeneral.FieldValues['dMontoMN'] := 0 ;
   EstimacionGeneral.FieldValues['dMontoDLL'] := 0 ;
   EstimacionGeneral.FieldValues['dMontoAcumuladoMN'] := 0 ;
   EstimacionGeneral.FieldValues['dMontoAcumuladoDLL'] := 0 ;
   EstimacionGeneral.FieldValues['sIdMoneda'] := tsMoneda.KeyValue ;
   EstimacionGeneral.FieldValues['sElementoPEP'] := '' ;
   EstimacionGeneral.FieldValues['sFondo'] := '' ;
   EstimacionGeneral.FieldValues['sPosicionFinanciera'] := '' ;
   EstimacionGeneral.FieldValues['sCuentaMayor'] := '' ;
   EstimacionGeneral.FieldValues['sCentroGestor'] := '' ;
   EstimacionGeneral.FieldValues['sCentroCosto'] := '' ;
   EstimacionGeneral.FieldValues['sCentroBeneficio'] := '' ;
   EstimacionGeneral.FieldValues['sProyecto'] := '' ;
   EstimacionGeneral.FieldValues['mComentarios'] := ' ' ;
   EstimacionGeneral.FieldValues['dAvanceFisicoProgramado'] := 0 ;
   EstimacionGeneral.FieldValues['dAvanceFisicoReal'] := 0 ;
   EstimacionGeneral.FieldValues['dAvanceFinancieroProgramado'] := 0 ;
   EstimacionGeneral.FieldValues['dAvanceFinancieroReal'] := 0 ;
   EstimacionGeneral.FieldValues['dAvanceFisicoProgramado'] := 0 ;
   EstimacionGeneral.FieldValues['dFechaInicioContrato'] := Date() ;
   EstimacionGeneral.FieldValues['dFechaFinalContrato'] := Date() ;
   EstimacionGeneral.FieldValues['sIdUsuarioAutoriza'] := '' ;
   EstimacionGeneral.FieldValues['IdConsecutivo'] := 0;
   tiNumeroEstimacion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_Estimaciones.Enabled:=false;
except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al añadir Registro', 0);
  end;
end;
end;

procedure TfrmEstimacionGeneral.frmBarra1btnEditClick(Sender: TObject);
begin
 try
   Opcion := 'Editar';
   If EstimacionGeneral.RecordCount > 0 Then
      If EstimacionGeneral.FieldValues['lEstimado'] = 'No' Then
      Begin
           frmBarra1.btnEditClick(Sender);
           Try
               EstimacionGeneral.Edit ;
               iNumeroEstimacion := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
           Except
             on e : exception do begin
             UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Grales', 'Al editar registro', 0);
             end;
           End ;
           tiNumeroEstimacion.SetFocus
       End
       Else
           MessageDlg('Estimación Aplicada, no pueden realizarse cambios', mtInformation, [mbOk], 0);
BotonPermiso.permisosBotones(frmBarra1);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al editar Registro', 0);
  end;
 end;
 grid_Estimaciones.Enabled:=false;
end;

procedure TfrmEstimacionGeneral.frmBarra1btnPostClick(Sender: TObject);
var
    Q_BuscaEstimacion,
    Q_MaxFolio,
    Q_Ordenamiento,
    Q_Actualiza,
    Q_Ordena           : TZReadOnlyQuery;
    IdOld, IdNew,
    conteo             : integer;
    sEstimacion,
    sTipo, sMoneda     : string;
    iNumero            : integer;
    lContinua          : boolean;

    //Variables
    pEstimacion,
    pTipoEstimacion    : string;
    piConsecutivo      : integer;
      nombres, cadenas: TStringList;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Tipo');nombres.Add('Moneda');
  nombres.Add('Id');
  cadenas.Add(tstipo.Text);cadenas.Add(tsmoneda.Text);
  cadenas.Add(txteditaid.Text);

  if not validaTexto(nombres, cadenas, 'No Estimacion', tinumeroestimacion.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;


   //Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicio.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdFechaFinal.SetFocus;
   exit;
   end;
//continuainserccion de datos
  EstimacionGeneral.FieldValues['didFecha'] :=tdidFecha.date;
  EstimacionGeneral.FieldValues['dFechaInicio'] :=tdFechaInicio.date;
  EstimacionGeneral.FieldValues['dFechaFinal'] :=tdFechaFinal.date;
  try
   Q_BuscaEstimacion := TZReadOnlyQuery.Create(self);
   Q_BuscaEstimacion.Connection := Connection.zConnection;

   Q_MaxFolio := TZReadOnlyQuery.Create(self);
   Q_MaxFolio.Connection := Connection.zConnection;

   Q_Ordenamiento := TZReadOnlyQuery.Create(self);
   Q_Ordenamiento.Connection := Connection.zConnection;

   Q_Actualiza := TZReadOnlyQuery.Create(self);
   Q_Actualiza.Connection := Connection.zConnection;

   Q_Ordena := TZReadOnlyQuery.Create(self);
   Q_Ordena.Connection := Connection.zConnection;

   lContinua := False;

   if Opcion = 'Editar' then
   begin
      if StrToInt(txtEditaId.Text) < 0 then
      begin
          messageDLG('Consecutivo incorrecto!', mtInformation, [mbOk], 0);
          exit;
      end;
      IdOld     := EstimacionGeneral.FieldValues['IdConsecutivo'];
      IdNew     := StrToInt(txtEditaId.Text);
      if IdOld <> IdNew then
      begin
           { R E G L A  1.- No se pueden mover estimaciones autorizadas..}
          {Ahora checamos que nohaya estiamciones autorizadas o validas a partir del Id Modificado..}
          Q_Ordena.Active := False;
          Q_Ordena.SQL.Clear;
          Q_Ordena.SQL.Add('select lStatus from estimacion_general where idConsecutivo >= :Consecutivo and lStatus <> "Pendiente" ');
          Q_Ordena.ParamByName('Consecutivo').AsInteger := IdNew ;
          Q_Ordena.Open;

          if Q_Ordena.RecordCount > 0 then
          begin
              MessageDLG('Existen Estimaciones en Estatus de Validado / Autorizado posteriores al Nuevo Id!, Favor de ponerlas en Estatus de Pendiente.', mtInformation, [mbOk],0);
              exit;
          end;

          { R E G L A  2 .- No se pueden mover estimaciones con Ordenes o Anexo que tengan un Historial (iOrden > 0) Imposible.. ya que arrastran cobros atrasadoss deben llevar un orden..}
          {Priemero checamos si en las ordenes de la estimacion existen iOrigen > 0}
          Q_Ordena.Active := False;
          Q_Ordena.SQL.Clear;
          Q_Ordena.SQL.Add('select iOrigen from estimacion_actividades where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo and iOrigen > 0 ');
          Q_Ordena.ParamByName('Estimacion').AsString := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
          Q_Ordena.ParamByName('Tipo').AsString       := EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
          Q_Ordena.Open;

          If Q_Ordena.RecordCount > 0 then
          begin
              MessageDLG('No se puede Altetar el Orden de las Estimaciones!. La estimación '+EstimacionGeneral.FieldValues['iNumeroEstimacion']+' contiene Recursos / Partidas de Estimaciones con Periodo de Ejecución Anteriores, para poder realizar esta acción Elimine las Ordnes / Anexos'+
                         ' con periodos de Ejecución diferentes a la Estimacion normal.', mtWarning, [mbOk],0);
              exit;
          end;
          {Ahora buscamos si de la estimaicon seleccionada ya se cobro una Orden / Anexo con retraso..}
          Q_Ordena.Active := False;
          Q_Ordena.SQL.Clear;
          Q_Ordena.SQL.Add('select iConsecutivo from estimacion_actividades where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo order by iConsecutivo ');
          Q_Ordena.ParamByName('Estimacion').AsString := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
          Q_Ordena.ParamByName('Tipo').AsString       := EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
          Q_Ordena.Open;

          while not Q_Ordena.Eof do
          begin
              {consultamos en todas las ordenes..}
              Q_BuscaEstimacion.Active := False;
              Q_BuscaEstimacion.SQL.Clear;
              Q_BuscaEstimacion.SQL.Add('select sContrato, iOrigen from estimacion_actividades where iOrigen = :Consecutivo ');
              Q_BuscaEstimacion.ParamByName('Consecutivo').AsInteger := Q_ordena.FieldValues['iConsecutivo'] ;
              Q_BuscaEstimacion.Open;

              if Q_BuscaEstimacion.RecordCount > 0 then
              begin
                  MessageDLG('No se puede Altetar el Orden de las Estimaciones!. La Orden / Anexo '+Q_BuscaEstimacion.FieldValues['sContrato']+' perteneciente a la Estimacion  '+EstimacionGeneral.FieldValues['iNumeroEstimacion']+' tiene Cobros en Peridodos de Estimacion y Ejecucion diferentes,'+
                             ' para poder realizar esta acción Elimine las Ordnes / Anexos con Periodos de Estimacion y Ejecucion donde se encuentren partidas con volumenes retrasados Cobrados de dicha Orden. ', mtWarning, [mbOk],0);
                  exit;
              end;
              Q_Ordena.Next;
          end;

          {Terminan reglas.. continua procesoo...}

          {Primero buscamos si existe una estimacion con este Id..}
          Q_Ordenamiento.Active := False;
          Q_Ordenamiento.SQL.Clear;
          Q_Ordenamiento.SQL.Add('select * from estimacion_general where IdConsecutivo =:Id ');
          Q_Ordenamiento.ParamByName('Id').AsInteger := IdNew;
          Q_Ordenamiento.Open;

          if Q_Ordenamiento.RecordCount > 0 then
          begin
              sEstimacion := Q_Ordenamiento.FieldValues['iNumeroEstimacion'];
              sTipo       := Q_Ordenamiento.FieldValues['sIdTipoEstimacion'];
              sMoneda     := Q_Ordenamiento.FieldValues['sIdMoneda'];
              iNumero     := Q_Ordenamiento.Fieldvalues['IdConsecutivo'];
              lContinua   := True;
          end;
      end;
   end
   else
   begin
      {Enviamos mensaje si existe estimacion..}
      Q_BuscaEstimacion.Active := False;
      Q_BuscaEstimacion.SQL.Clear;
      Q_BuscaEstimacion.SQL.Add('Select * from estimacion_general where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo');
      Q_BuscaEstimacion.ParamByName('Estimacion').AsString := tiNumeroEstimacion.Text;
      Q_BuscaEstimacion.ParamByName('Tipo').AsString       := tsTipo.KeyValue;
      Q_BuscaEstimacion.Open;

      if Q_BuscaEstimacion.RecordCount > 0 then
      begin
          messageDLG('El numero de Estimacion '+ tiNumeroEstimacion.Text+ ' ' + tsTipo.Text +' ya Existe! ', mtInformation, [mbOK], 0);
          exit;
      end;

      {Tomamos el maximo Id de las estimaciones...}
      Q_MaxFolio.Active := False;
      Q_MaxFolio.SQL.Clear;
      Q_MaxFolio.SQL.Add('Select Max(idConsecutivo) as consecutivo from estimacion_general ');
      Q_MaxFolio.Open;

      if Q_MaxFolio.RecordCount > 0 then
      begin
          try
             EstimacionGeneral.FieldValues['IdConsecutivo']  := Q_MaxFolio.FieldValues['consecutivo'] + 1;
          Except
              EstimacionGeneral.FieldValues['IdConsecutivo'] := 1;
          end;
      end;

      {Mandamos aviso al usuario que está ingresando una estimaicon con una fecha menor...}
      Q_Ordena.Active := False;
      Q_Ordena.SQL.Clear;
      Q_Ordena.SQL.Add('select idConsecutivo from estimacion_general where dFechaInicio > :Fecha_I ');
      Q_Ordena.ParamByName('Fecha_I').AsDate     := tdFechaInicio.Date ;
      Q_Ordena.Open;

      if Q_Ordena.RecordCount > 0 then
      begin
          if messageDLG('Estas insertando una estimación con un Periodo de Estimación menor a la Ultima Estimación!, Deseas Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              exit
          else
              MessageDLG('Se recomienda Editar y Ordenar la Estimación de Acuerdo al periodo que le corresponde.', mtInformation, [mbOk],0);
      end;
   end;

   {Se guardan los datos y se actualiza información...}
      Try
          EstimacionGeneral.FieldValues['sFirmas']   := '*' ;
          EstimacionGeneral.FieldValues['lEstimado'] := 'No' ;
          EstimacionGeneral.FieldValues['dMontoMN']  := 0 ;
          EstimacionGeneral.FieldValues['dMontoDLL'] := 0 ;
          Try
             EstimacionGeneral.Post ;
             {Actulizacion de los consecutivos.. }
             if lContinua then
             begin
                  {Ahora buscamos todos los demas registro mayores..}
                  Q_Ordenamiento.Active := False;
                  Q_Ordenamiento.SQL.Clear;
                  Q_Ordenamiento.SQL.Add('select * from estimacion_general where IdConsecutivo >:Id Order by IdConsecutivo ');
                  Q_Ordenamiento.ParamByName('Id').AsInteger := IdNew;
                  Q_Ordenamiento.Open;

                  if Q_Ordenamiento.RecordCount > 0 then
                  begin
                      conteo := IdNew + 2;
                      Q_Ordenamiento.First;
                      while not Q_Ordenamiento.Eof do
                      begin
                          {Ordenamos nuevamente todas las estimaciones..}
                          Q_Actualiza.Active := False;
                          Q_Actualiza.SQL.Clear;
                          Q_Actualiza.SQL.Add('Update estimacion_general set IdConsecutivo =:IdNuevo where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo ');
                          Q_Actualiza.ParamByName('IdNuevo').AsInteger    := conteo;
                          Q_Actualiza.ParamByName('Estimacion').AsString  := Q_Ordenamiento.FieldValues['iNumeroEstimacion'];
                          Q_Actualiza.ParamByName('Tipo').AsString        := Q_Ordenamiento.FieldValues['sIdTipoEstimacion'];
                          Q_Actualiza.ExecSQL;
                          Q_Ordenamiento.Next;
                          Inc(conteo);
                      end;
                  end;

                  {Actualizamos el la estiamcion que contiene el mismo Id..}
                  Q_Actualiza.Active := False;
                  Q_Actualiza.SQL.Clear;
                  Q_Actualiza.SQL.Add('Update estimacion_general set IdConsecutivo =:IdNuevo where iNumeroEstimacion =:Estimacion and '+
                                      'sIdTipoEstimacion =:Tipo and IdConsecutivo =:Id ');
                  Q_Actualiza.ParamByName('Estimacion').AsString := sEstimacion;
                  Q_Actualiza.ParamByName('Tipo').AsString       := sTipo;
                  Q_Actualiza.ParamByName('IdNuevo').AsInteger   := IdNew + 1;
                  Q_Actualiza.ParamByName('Id').AsInteger        := iNumero;
                  Q_Actualiza.ExecSQL;

                  {Asignamos los valores a las variables...}
                  pEstimacion     := sEstimacion;
                  pTipoEstimacion := sTipo;
                  piConsecutivo   := IdNew;
             end;
          Except

          End;
          frmBarra1.btnCancelClick(Sender);
          EstimacionGeneral.Refresh;
      Except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Grales', 'Al actualizar registro', 0);
        end;
      End;

      if Opcion = 'Editar' then
      begin
          {Llamamos la funcion ordena estimaciones.}
          {Esta solo aplicara en casos epciales que se requiera meter una estimacion dentro de un conjutno ya exsitente...}
          OrdenaEstimaciones(pEstimacion, pTipoEstimacion, piConsecutivo);
      end;
      Opcion := '';
      Q_BuscaEstimacion.Destroy;
      Q_MaxFolio.Destroy;
      Q_Ordenamiento.Destroy;
      Q_Actualiza.Destroy;
      Q_Ordena.Destroy;
BotonPermiso.permisosBotones(frmBarra1);
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al salvar Registro', 0);
  end;
  end;
  grid_Estimaciones.Enabled:=true;
end;

procedure TfrmEstimacionGeneral.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  EstimacionGeneral.Cancel ;
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al cancelar', 0);
  end;
 end;
 grid_Estimaciones.Enabled:=true;
end;

procedure TfrmEstimacionGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    global_isometrico := '' ;
    global_generador := '' ;
    global_orden := '' ;
    EstimacionGeneral.Cancel ;
    action := cafree ;
    utgrid.Destroy;
    utgrid2.destroy;
    BotonPermiso.Free;
end;

procedure TfrmEstimacionGeneral.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close ;
end;

procedure TfrmEstimacionGeneral.frmBarra1btnDeleteClick(Sender: TObject);
var
    Q_Eliminar : TZReadonlyQuery;
begin
 try
    Q_Eliminar := TZReadOnlyQuery.Create(self);
    Q_Eliminar.Connection := connection.zConnection;

    If EstimacionGeneral.RecordCount  > 0 then
      If EstimacionGeneral.FieldValues['lEstimado'] = 'No' Then
      Begin
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select iNumeroEstimacion From estimacion_orden Where iNumeroEstimacion = :Estimacion and sIdTipoEstimacion =:Tipo ') ;
          Connection.qryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Estimacion').Value    := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
          Connection.qryBusca.Params.ParamByName('Tipo').DataType       := ftString ;
          Connection.qryBusca.Params.ParamByName('Tipo').Value          := EstimacionGeneral.FieldValues['sIdTipoEstimacion'] ;
          Connection.qryBusca.Open ;
          If Connection.qryBusca.RecordCount > 0 Then
              MessageDlg('Existen Ordenes/Anexos referenciados a la estimación, No puede eliminarse la estimación activa!', mtInformation, [mbOk], 0)
          Else
              If MessageDlg('Desea eliminar el Registro Activo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                  try
                      EstimacionGeneral.Delete ;
                      Grid_Estimaciones.SetFocus
                  except
                    on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Grales', 'Al eliminar registro', 0);
                    end;
                  end
              End
      end
      Else
          MessageDlg('Estimación Aplicada, no puede eliminarse la estimación activa', mtInformation, [mbOk], 0);

 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al eliminar Registro', 0);
  end;
 end;
 grid_Estimaciones.Enabled:=true;
end;

procedure TfrmEstimacionGeneral.frmBarra1btnRefreshClick(Sender: TObject);
begin
 try
    EstimacionOrden.First ;
    EstimacionGeneral.Active := False ;
    EstimacionGeneral.Open
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmEstimacionGeneral.tiNumeroEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTdbedit(tiNumeroEstimacion,key) then
   key:=#0;
    If Key = #13 Then
        tstipo.SetFocus
end;

procedure TfrmEstimacionGeneral.btnAvancesClick(Sender: TObject);
begin
     Application.CreateForm(TfrmEstimacionAvances, frmEstimacionAvances);
     frmEstimacionAvances.ShowModal;
end;

procedure TfrmEstimacionGeneral.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
     tdFechaFinal.SetFocus 
end;

procedure TfrmEstimacionGeneral.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        txteditaid.SetFocus 
end;

procedure TfrmEstimacionGeneral.tsMonedaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdidfecha.SetFocus
end;

procedure TfrmEstimacionGeneral.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmEstimacionGeneral.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmEstimacionGeneral.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmEstimacionGeneral.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmEstimacionGeneral.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmEstimacionGeneral.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmEstimacionGeneral.EstimacionesSinCobroClick(Sender: TObject);
begin
     Application.CreateForm(TfrmEstimacionAnterior, frmEstimacionAnterior);
     frmEstimacionAnterior.ShowModal;
end;

procedure TfrmEstimacionGeneral.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmEstimacionGeneral.MenuItem7Click(Sender: TObject);
begin
try
   ActividadesxEstimacionDLL.Active := False ;
   ActividadesxEstimacionDLL.Params.ParamByName('Contrato').DataType      := ftString ;
   ActividadesxEstimacionDLL.Params.ParamByName('Contrato').Value         := EstimacionOrden.FieldValues['sContrato'] ;
   ActividadesxEstimacionDLL.Params.ParamByName('ContratoGral').DataType  := ftString ;
   ActividadesxEstimacionDLL.Params.ParamByName('ContratoGral').Value     := global_contrato_barco ;
   ActividadesxEstimacionDLL.Params.ParamByName('Estimacion').DataType    := ftString ;
   ActividadesxEstimacionDLL.Params.ParamByName('Estimacion').Value       := EstimacionOrden.FieldValues['iNumeroEstimacion'] ;
   ActividadesxEstimacionDLL.Params.ParamByName('EstimacionSub').DataType := ftString ;
   ActividadesxEstimacionDLL.Params.ParamByName('EstimacionSub').Value    := EstimacionOrden.FieldValues['iNumeroEstimacionSub'] ;
   ActividadesxEstimacionDLL.Params.ParamByName('Tipo').DataType          := ftString ;
   ActividadesxEstimacionDLL.Params.ParamByName('Tipo').Value             := EstimacionOrden.FieldValues['sIdTipoEstimacion'] ;
   ActividadesxEstimacionDLL.Params.ParamByName('FechaFinal').DataType := ftDate ;
   ActividadesxEstimacionDLL.Params.ParamByName('FechaFinal').Value    := EstimacionGeneral.FieldValues['dFechaFinal'] ;
   ActividadesxEstimacionDLL.Open ;

   if ActividadesxEstimacionDLL.RecordCount = 0 then
      MessageDLG('No se encontraron recursos!', mtInformation, [mbOk], 0);

    //Encontrar las firmas
   Firmas.Active := false;
   Firmas.ParamByName('contrato').Value := EstimacionOrden.FieldByName('sContrato').AsString;
   Firmas.ParamByName('fechaini').Value := EstimacionGeneral.FieldByName('dFechaInicio').AsDateTime;
   Firmas.ParamByName('fechafin').Value := EstimacionGeneral.FieldByName('dFechaFinal').AsDateTime;
   Firmas.ParamByName('control').Value := 2;//parametro control = 2 para que solo busque en el rango de fechas
   Firmas.Open;
   if Firmas.RecordCount < 1 then begin //si no se devuelven resultados
       Firmas.Active := false;  //buscar solo la ultima firma en la tabla
       Firmas.ParamByName('contrato').Value := EstimacionOrden.FieldByName('sContrato').AsString;
       Firmas.ParamByName('fechaini').Value := EstimacionGeneral.FieldByName('dFechaInicio').AsDateTime;
       Firmas.ParamByName('fechafin').Value := EstimacionGeneral.FieldByName('dFechaFinal').AsDateTime;
       Firmas.ParamByName('control').Value := 1;//parametro control = 1 para que solo busque entre todas las fechas
       Firmas.Open;
   end;

   dsActividadesxEstimacion.DataSet := ActividadesxEstimacionDLL;

   frGenerador.PreviewOptions.MDIChild := False ;
   frGenerador.PreviewOptions.Modal := True ;
   frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
   frGenerador.PreviewOptions.ShowCaptions := False ;
   frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
   frGenerador.LoadFromFile (global_files + 'Estimacion_Ordendll.fr3') ;
   frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

   ActividadesxEstimacionDLL.Active := False;
except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al imprimir Estimacion General MN', 0);
  end;
end;
end;

procedure TfrmEstimacionGeneral.MnuReporteOrdenClick(Sender: TObject);
begin
try
   ActividadesxEstimacion.Active := False ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').DataType      := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Contrato').Value         := EstimacionOrden.FieldValues['sContrato'] ;
   ActividadesxEstimacion.Params.ParamByName('ContratoGral').DataType  := ftString ;
   ActividadesxEstimacion.Params.ParamByName('ContratoGral').Value     := global_contrato_barco ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType    := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Estimacion').Value       := EstimacionOrden.FieldValues['iNumeroEstimacion'] ;
   ActividadesxEstimacion.Params.ParamByName('EstimacionSub').DataType := ftString ;
   ActividadesxEstimacion.Params.ParamByName('EstimacionSub').Value    := EstimacionOrden.FieldValues['iNumeroEstimacionSub'] ;
   ActividadesxEstimacion.Params.ParamByName('Tipo').DataType          := ftString ;
   ActividadesxEstimacion.Params.ParamByName('Tipo').Value             := EstimacionOrden.FieldValues['sIdTipoEstimacion'] ;
   ActividadesxEstimacion.Params.ParamByName('FechaFinal').DataType := ftDate ;
   ActividadesxEstimacion.Params.ParamByName('FechaFinal').Value    := EstimacionGeneral.FieldValues['dFechaFinal'] ;
   ActividadesxEstimacion.Open ;

   if ActividadesxEstimacion.RecordCount = 0 then
      MessageDLG('No se encontraron recursos!', mtInformation, [mbOk], 0);

    //Encontrar las firmas
   Firmas.Active := false;
   Firmas.ParamByName('contrato').Value := EstimacionOrden.FieldByName('sContrato').AsString;
   Firmas.ParamByName('fechaini').Value := EstimacionGeneral.FieldByName('dFechaInicio').AsDateTime;
   Firmas.ParamByName('fechafin').Value := EstimacionGeneral.FieldByName('dFechaFinal').AsDateTime;
   Firmas.ParamByName('control').Value := 2;//parametro control = 2 para que solo busque en el rango de fechas
   Firmas.Open;
   if Firmas.RecordCount < 1 then begin //si no se devuelven resultados
       Firmas.Active := false;  //buscar solo la ultima firma en la tabla
       Firmas.ParamByName('contrato').Value := EstimacionOrden.FieldByName('sContrato').AsString;
       Firmas.ParamByName('fechaini').Value := EstimacionGeneral.FieldByName('dFechaInicio').AsDateTime;
       Firmas.ParamByName('fechafin').Value := EstimacionGeneral.FieldByName('dFechaFinal').AsDateTime;
       Firmas.ParamByName('control').Value := 1;//parametro control = 1 para que solo busque entre todas las fechas
       Firmas.Open;
   end;

   dsActividadesxEstimacion.DataSet := ActividadesxEstimacion;

   frGenerador.PreviewOptions.MDIChild := False ;
   frGenerador.PreviewOptions.Modal := True ;
   frGenerador.PreviewOptions.Maximized := lCheckMaximized () ;
   frGenerador.PreviewOptions.ShowCaptions := False ;
   frGenerador.Previewoptions.ZoomMode := zmPageWidth ;
   frGenerador.LoadFromFile (global_files + 'Estimacion_Orden.fr3') ;
   frGenerador.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

   ActividadesxEstimacion.Active := False;
except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Estimaciones Generales', 'Al imprimir Estimacion General MN', 0);
  end;
end;
end;

procedure TfrmEstimacionGeneral.tsTipoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsmoneda.SetFocus
end;

procedure TfrmEstimacionGeneral.txtEditaIdChange(Sender: TObject);
begin
tdbeditchangef(txtEditaId,'Id');
end;

procedure TfrmEstimacionGeneral.txtEditaIdEnter(Sender: TObject);
begin
txteditaid.Color:=global_color_entrada
end;

procedure TfrmEstimacionGeneral.txtEditaIdExit(Sender: TObject);
begin
txteditaid.color:=global_color_salida
end;

procedure TfrmEstimacionGeneral.txtEditaIdKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(txtEditaId,key) then
    key:=#0;
  If Key = #13 Then
    tinumeroestimacion.SetFocus
end;

procedure TfrmEstimacionGeneral.tiNumeroEstimacionChange(Sender: TObject);
begin
tdbeditchangei(tiNumeroEstimacion,'No. Estimación');
end;

procedure TfrmEstimacionGeneral.tiNumeroEstimacionEnter(Sender: TObject);
begin
    tiNumeroEstimacion.Color := global_color_entrada
end;

procedure TfrmEstimacionGeneral.tiNumeroEstimacionExit(Sender: TObject);
begin
    tiNumeroEstimacion.Color := global_color_salida
end;

procedure TfrmEstimacionGeneral.tsTipoEnter(Sender: TObject);
begin
    tsTipo.Color := global_color_entrada
end;

procedure TfrmEstimacionGeneral.tsTipoExit(Sender: TObject);
begin
    tsTipo.Color := global_color_salida
end;

procedure TfrmEstimacionGeneral.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entrada
end;

procedure TfrmEstimacionGeneral.tdFechaInicioExit(Sender: TObject);
begin
   if ( MonthOf( tdFechaFinal.Date ) <> MonthOf( tdFechaInicio.Date ) ) then
   begin
       if MonthOf( tdFechaInicio.Date ) <= 11 then
          tdFechaFinal.Date := strToDate( '01/' + Trim( IntToStr( MonthOf( tdFechaInicio.Date ) + 1 ) ) + '/' + Trim( IntToStr( YearOf( tdFechaInicio.Date ) ) ) )
       else
          tdFechaFinal.Date := strToDate( '01/01/' + Trim( IntToStr( YearOf( tdFechaInicio.Date ) + 1 ) ) );
       tdFechaFinal.Date := tdFechaFinal.Date - 1;
       MessageDlg( 'El generador no puede abarcar un periodo de 2 meses. Periodo Propuesto [' + DateToStr( tdFechaInicio.Date ) + ' al ' + DateToStr( tdFechaFinal.Date ) + ']', mtWarning, [ mbOk ], 0 );
       tdFechaFinal.Date := tdFechaFinal.Date;
   end
   else
      tdFechaFinal.Date := strToDate( '01/' + Trim( IntToStr( MonthOf( tdFechaInicio.Date ) ) ) + '/' + Trim( IntToStr( YearOf( tdFechaInicio.Date ) ) ) );

   tdFechaInicio.Color := global_color_salida;
end;

procedure TfrmEstimacionGeneral.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmEstimacionGeneral.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmEstimacionGeneral.tdFechaFinalExit(Sender: TObject);
begin
   if ( MonthOf( tdFechaFinal.Date ) <> MonthOf( tdFechaInicio.Date ) ) then
   begin
       if MonthOf( tdFechaInicio.Date ) <= 11 then
          tdFechaFinal.Date := strToDate( '01/' + Trim( IntToStr( MonthOf( tdFechaInicio.Date ) + 1 ) ) + '/' + Trim( IntToStr( YearOf( tdFechaInicio.Date ) ) ) )
       else
          tdFechaFinal.Date := strToDate( '01/01/' + Trim( IntToStr( YearOf( tdFechaInicio.Date ) + 1 ) ) );
       tdFechaFinal.Date := tdFechaFinal.Date - 1;
       MessageDlg( 'El generador no puede abarcar un periodo de 2 meses. Periodo Propuesto [' + DateToStr( tdFechaInicio.Date ) + ' al ' + DateToStr( tdFechaFinal.Date ) + ']', mtWarning, [ mbOk ], 0 );
       tdFechaFinal.Date := tdFechaFinal.Date;
   end;

    tdFechaFinal.Color := global_color_salida
end;

procedure TfrmEstimacionGeneral.tsMonedaEnter(Sender: TObject);
begin
    tsMoneda.Color := global_color_entrada
end;

procedure TfrmEstimacionGeneral.tsMonedaExit(Sender: TObject);
begin
    tsMoneda.Color := global_color_salida
end;

procedure TfrmEstimacionGeneral.Editar_EstClick(Sender: TObject);
begin
     Application.CreateForm(TfrmEditaEstimacion, frmEditaEstimacion);
     frmEditaEstimacion.ShowModal;
end;

procedure TfrmEstimacionGeneral.Eliminar_EstClick(Sender: TObject);
var
   Q_BuscaOrden  : TZReadOnlyQuery;
begin
   if EstimacionOrden.RecordCount > 0 then
   begin
      Q_BuscaOrden := TZReadOnlyQuery.Create(self);
      Q_BuscaOrden.Connection := connection.zConnection;

      Q_BuscaOrden.Active := False;
      Q_BuscaOrden.SQL.Clear;
      Q_BuscaOrden.SQL.Add('Select * from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub '+
                           'and sIdTipoEstimacion =:Tipo ');
      Q_BuscaOrden.ParamByName('Contrato').AsString      := EstimacionOrden.FieldValues['sContrato'];
      Q_BuscaOrden.ParamByName('Estimacion').AsString    := EstimacionOrden.FieldValues['iNumeroEstimacion'];
      Q_BuscaOrden.ParamByName('EstimacionSub').AsString := EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
      Q_BuscaOrden.ParamByName('Tipo').AsString          := EstimacionOrden.FieldValues['sIdTipoEstimacion'];
      Q_BuscaOrden.Open;

      if Q_BuscaOrden.RecordCount > 0 then
         messageDLG('No se puede Eliminar, existen recursos asignados a la Estimacion '+EstimacionOrden.FieldValues['iNumeroEstimacion']+ ' de la Orden / Anexo '+EstimacionOrden.FieldValues['sContrato']+', favor de verificar.', mtInformation, [mbOk],0)
      else
      begin
          Q_BuscaOrden.Active := False;
          Q_BuscaOrden.SQL.Clear;
          Q_BuscaOrden.SQL.Add('Delete from estimacion_orden where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub '+
                        'and sIdTipoEstimacion =:Tipo');
          Q_BuscaOrden.ParamByName('Contrato').AsString      := EstimacionOrden.FieldValues['sContrato'];
          Q_BuscaOrden.ParamByName('Estimacion').AsString    := EstimacionOrden.FieldValues['iNumeroEstimacion'];
          Q_BuscaOrden.ParamByName('EstimacionSub').AsString := EstimacionOrden.FieldValues['iNumeroEstimacionSub'];
          Q_BuscaOrden.ParamByName('Tipo').AsString          := EstimacionOrden.FieldValues['sIdTipoEstimacion'];
          Q_BuscaOrden.ExecSQL;


          Q_BuscaOrden.Active := False;
          Q_BuscaOrden.SQL.Clear;
          Q_BuscaOrden.SQL.Add('Delete from avances_estimaciones where sContrato =:Contrato and dIdFecha =:Fecha ');
          Q_BuscaOrden.ParamByName('Contrato').AsString := EstimacionOrden.FieldValues['sContrato'];
          Q_BuscaOrden.ParamByName('Fecha').AsDate      := EstimacionOrden.FieldValues['dFechaFinal'];
          Q_BuscaOrden.ExecSQL;

          EstimacionOrden.Refresh;
      end;
   end;

   Q_BuscaOrden.Destroy;
end;

procedure TfrmEstimacionGeneral.Nueva_EstClick(Sender: TObject);
Begin
     Application.CreateForm(TfrmEstimacionOrdenes, frmEstimacionOrdenes);
     frmEstimacionOrdenes.ShowModal;
end;

procedure TfrmEstimacionGeneral.ActualizaFirmas2( dFecha: TDateTime );
Begin
    sSuperIntendente := '' ;
    sSupervisor := '' ;
    sPuestoSuperintendente := '' ;
    sPuestoSupervisor := '' ;
    sSupervisorTierra := '' ;
    sPuestoSupervisorTierra := '' ;
    connection.qryBusca2.Active := False ;
    connection.qryBusca2.SQL.Clear ;
    connection.qryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha = :fecha') ;
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
    Connection.qryBusca2.Params.ParamByName('fecha').Value := dFecha ;
    connection.qryBusca2.Open ;
    If connection.qryBusca2.RecordCount > 0 then
    Begin
        sSuperintendente := connection.qryBusca2.FieldValues['sFirmante1'] ;
        sSupervisor := connection.qryBusca2.FieldValues['sFirmante4'] ;
        sSupervisorTierra := connection.qryBusca2.FieldValues['sFirmante5'] ;
        sPuestoSuperintendente := connection.qryBusca2.FieldValues['sPuesto1'] ;
        sPuestoSupervisor := connection.qryBusca2.FieldValues['sPuesto4'] ;
        sPuestoSupervisorTierra := connection.qryBusca2.FieldValues['sPuesto5'] ;
    End
    Else
    Begin
        connection.qryBusca2.Active := False ;
        connection.qryBusca2.SQL.Clear ;
        connection.qryBusca2.SQL.Add('Select * from firmas where sContrato = :contrato And dIdFecha <= :fecha Order By dIdFecha DESC') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('fecha').Value := dFecha ;
        connection.qryBusca2.Open ;
        If connection.qryBusca2.RecordCount > 0 then
        Begin
            sSuperintendente := connection.qryBusca2.FieldValues['sFirmante1'] ;
            sSupervisor := connection.qryBusca2.FieldValues['sFirmante4'] ;
            sSupervisorTierra := connection.qryBusca2.FieldValues['sFirmante5'] ;
            sPuestoSuperintendente := connection.qryBusca2.FieldValues['sPuesto1'] ;
            sPuestoSupervisor := connection.qryBusca2.FieldValues['sPuesto4'] ;
            sPuestoSupervisorTierra := connection.qryBusca2.FieldValues['sPuesto5'] ;
        End
    End
End ;

procedure TfrmEstimacionGeneral.btnSalirClick(Sender: TObject);
begin
    Grid_Estimaciones.SetFocus
end;


procedure TfrmEstimacionGeneral.btnVerificacionClick(Sender: TObject);
begin
     Application.CreateForm(TfrmEstimacionAdicional, frmEstimacionAdicional);
     frmEstimacionAdicional.ShowModal;
end;

procedure TfrmEstimacionGeneral.Grid_EstimacionesEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;

    If EstimacionGeneral.RecordCount > 0 Then
    Begin
        EstimacionOrden.Active := False ;
        EstimacionOrden.Params.ParamByName('Estimacion').DataType := ftString ;
        EstimacionOrden.Params.ParamByName('Estimacion').Value    := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
        EstimacionOrden.Params.ParamByName('Tipo').DataType       := ftString ;
        EstimacionOrden.Params.ParamByName('Tipo').Value          := EstimacionGeneral.FieldValues['sIdTipoEstimacion'] ;
        EstimacionOrden.Open ;
    End
end;

procedure TfrmEstimacionGeneral.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEstimacionGeneral.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEstimacionGeneral.Grid_EstimacionesTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmEstimacionGeneral.EstimacionGeneralAfterScroll(DataSet: TDataSet);
var
    cadena : string;
begin
    If EstimacionGeneral.State <> dsInsert Then
      If EstimacionGeneral.RecordCount > 0 Then
      Begin
        gbGeneradores.Caption := 'Detalle de Ordenes / Anexos de la Estimación No. [' + EstimacionGeneral.FieldValues['iNumeroEstimacion'] + ']' ;
        EstimacionOrden.Active := False ;
        EstimacionOrden.Params.ParamByName('Estimacion').DataType := ftString ;
        EstimacionOrden.Params.ParamByName('Estimacion').Value    := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
        EstimacionOrden.Params.ParamByName('Tipo').DataType       := ftString ;
        EstimacionOrden.Params.ParamByName('Tipo').Value          := EstimacionGeneral.FieldValues['sIdTipoEstimacion'] ;
        EstimacionOrden.Open ;

        cadena := '';
        if EstimacionGeneral.FieldValues['IdConsecutivo'] < 1000 then
           cadena := '0';

        if EstimacionGeneral.FieldValues['IdConsecutivo'] < 100 then
           cadena := '00';

        if EstimacionGeneral.FieldValues['IdConsecutivo'] < 10 then
           cadena := '000';

        txtId.Caption := cadena + IntToStr(EstimacionGeneral.FieldValues['IdConsecutivo']);
      End
      Else
      Begin
        gbGeneradores.Caption := 'Detalle de Generadores' ;
        EstimacionOrden.Active := False ;
        EstimacionOrden.Params.ParamByName('Estimacion').DataType := ftString ;
        EstimacionOrden.Params.ParamByName('Estimacion').Value    := EstimacionGeneral.FieldValues['iNumeroEstimacion'] ;
        EstimacionOrden.Params.ParamByName('Tipo').DataType       := ftString ;
        EstimacionOrden.Params.ParamByName('Tipo').Value          := EstimacionGeneral.FieldValues['sIdTipoEstimacion'] ;
        EstimacionOrden.Open ;

        txtId.Caption := '0000';
      End ;
end;

procedure TfrmEstimacionGeneral.frGeneradorGetValue(const VarName: String;
  var Value: Variant);
Var
  sIsometricos   : String ;
  iValorNumerico : Longint;
  sCadena        : String ;
  Resultado : Real;
  iTotalDias, iTotalDiasEst : integer;
  dMontoBarco : double;
begin

    If CompareText(VarName, 'IMPORTE') = 0 then
    Begin
        if ActividadesxEstimacion.FieldValues['sIdMoneda'] = 'A' then
        begin
            iValorNumerico := Trunc( ActividadesxEstimacion.FieldValues['dMontoTotalMN'] ) ;
            sCadena   := xIntToLletres (iValorNumerico);
            scadena   := scadena +' PESOS CON ';
            Resultado := roundto(ActividadesxEstimacion.FieldValues['dMontoTotalMN'] - iValorNumerico, -2) ;
        end;

        if ActividadesxEstimacionDLL.FieldValues['sIdMoneda'] = 'C' then
        begin
            iValorNumerico := Trunc( ActividadesxEstimacionDLL.FieldValues['dMontoTotalDLL'] ) ;
            sCadena   := xIntToLletres (iValorNumerico);
            scadena   := scadena +' DOLARES CON ';
            Resultado := roundto(ActividadesxEstimacionDLL.FieldValues['dMontoTotalDLL'] - iValorNumerico, -2) ;
        end;

        Resultado := Resultado * 100;
        iValorNumerico := Trunc(Resultado);
        sCadena := sCadena + xIntToLletres(iValorNumerico);

        if ActividadesxEstimacion.FieldValues['sIdMoneda'] = 'A' then
           scadena:=scadena + ' CENTAVOS 33/100 M.N.';

        if ActividadesxEstimacionDLL.FieldValues['sIdMoneda'] = 'C' then
           scadena:=scadena +' CENTAVOS 72/100 USD';

        Value := sCadena ;
    End;      

    If CompareText(VarName, 'DIAS') = 0 then
          Value := DaysBetween( EstimacionGeneral.FieldValues['dFechaFinalContrato'] , EstimacionGeneral.FieldValues['dFechaInicioContrato']) + 1 ;

    If CompareText(VarName, 'REPRESENTANTE_TECNICO') = 0 then
        Value := sRepresentanteTecnico ;
    If CompareText(VarName, 'PUESTO_REPRESENTANTE_TECNICO') = 0 then
        Value := sPuestoRepresentanteTecnico ;

    If CompareText(VarName, 'RESIDENTE') = 0 then
        Value := sResidente ;
    If CompareText(VarName, 'PUESTO_RESIDENTE') = 0 then
        Value := sPuestoResidente ;
    If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
        Value := sSuperIntendente ;
    If CompareText(VarName, 'SUPERVISOR') = 0 then
        Value := sSupervisorGenerador ;
    If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
        Value := sSupervisorTierra ;
    If CompareText(VarName, 'SUPERVISOR_RESIDENTE') = 0 then
        Value := sResidente ;

    If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
        Value := sPuestoSuperIntendente ;
    If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
        Value := sPuestoSupervisorGenerador ;
    If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
        Value := sPuestoSupervisorTierra ;
    If CompareText(VarName, 'PUESTO_SUPERVISOR_RESIDENTE') = 0 then
        Value := sPuestoResidente ;

end;


procedure TfrmEstimacionGeneral.Grid_GeneradoresDblClick(Sender: TObject);
begin
    Editar_Est.Click;
end;

procedure TfrmEstimacionGeneral.Grid_GeneradoresGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNumeroEstimacionSub').AsString <> '' then
        Background  := clInactiveCaptionText
    else
         Background := clGradientActiveCaption;

end;


procedure TfrmEstimacionGeneral.Grid_GeneradoresMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmEstimacionGeneral.Grid_GeneradoresMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmEstimacionGeneral.Grid_GeneradoresTitleClick(Column: TColumn);
begin
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmEstimacionGeneral.frmBarra1btnPrinterClick(Sender: TObject);
begin
    parciales1.Click;
end;

procedure TfrmEstimacionGeneral.EstimacionGeneralCalcFields(DataSet: TDataSet);
begin
    If EstimacionGeneral.State <> dsEdit Then
    Begin
        Connection.qryBusca.Active := False ;
        Connection.qryBusca.SQL.Clear ;
        Connection.qryBusca.SQL.Add('Select sDescripcion From tiposdeestimacion ' +
                                    'Where sIdTipoEstimacion = :Tipo') ;
        Connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('Tipo').Value := EstimacionGeneral.FieldValues['sIdTipoEstimacion'] ;
        Connection.qryBusca.Open ;
        If Connection.qryBusca.RecordCount > 0 then
           EstimacionGeneralsDescripcion.Text  := Connection.qryBusca.FieldValues['sDescripcion']
        Else
            EstimacionGeneralsDescripcion.Text := ''
    End ;
end;

procedure TfrmEstimacionGeneral.EstimacionOrdenCalcFields(DataSet: TDataSet);
begin
     if Estimacionorden.RecordCount > 0 then
        if EstimacionOrden.FieldValues['iNumeroEstimacionSub'] <> '' then
           EstimacionOrdenEstimacionOrden.Text := EstimacionOrden.FieldValues['iNumeroEstimacion'] + '-'+ EstimacionOrden.FieldValues['iNumeroEstimacionSub']
        else
           EstimacionOrdenEstimacionOrden.Text := EstimacionOrden.FieldValues['iNumeroEstimacion'];
end;

procedure TfrmEstimacionGeneral.mnEstimacionClick(Sender: TObject);
begin
    frmBarra1.btnPrinter.Click
end;

procedure TfrmEstimacionGeneral.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmEstimacionGeneral.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmEstimacionGeneral.tdIdFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaInicio.SetFocus
end;



end.
