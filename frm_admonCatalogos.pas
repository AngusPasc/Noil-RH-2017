unit frm_admonCatalogos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, frm_connection,
  Dialogs, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, global,
  Grids, DBGrids, BaseGrid, AdvGrid, DBAdvGrid, JvExDBGrids,UnitTBotonesPermisos, frm_ActividadesAnexo2,
  JvDBGrid, JvDBUltimGrid, NxScrollControl, NxCustomGridControl, NxCustomGrid,  RXDBCtrl,
  NxDBGrid, NxDBColumns, NxColumns, StdCtrls, JvExStdCtrls, JvRichEdit, UnitExcepciones,
  JvDBRichEdit, JvExControls, JvDBLookup, JvCombobox, JvDBCombobox, UDbGrid, UnitTablasImpactadas,
  Menus;
function IsDate(ADate: string): Boolean;
procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
type
  TfrmAdmonCatalogos = class(TForm)
    pgCatalogos: TPageControl;
    TabTipReprogramacion: TTabSheet;
    TabTipEmbarcacion: TTabSheet;
    TabTipEquipos: TTabSheet;
    TabTipEstimacion: TTabSheet;
    TabTipOrden: TTabSheet;
    TabTipPermiso: TTabSheet;
    TabTipPersonal: TTabSheet;
    grid_tiposdeEstimacion: TDBGrid;
    ds_TiposdeEstimacion: TDataSource;
    TiposdeEstimacion: TZQuery;
    grid_tiposdeConvenio: TDBGrid;
    TiposdeConvenio: TZQuery;
    ds_TiposConvenio: TDataSource;
    grid_tiposdeembarcacion: TDBGrid;
    ds_tiposdeembarcacion: TDataSource;
    TiposdeEmbarcacion: TZQuery;
    grid_tiposdeequipo: TDBGrid;
    ds_tiposdeequipo: TDataSource;
    TiposdeEquipo: TZQuery;
    grid_tiposdepersonal: TDBGrid;
    ds_tiposdepersonal: TDataSource;
    TiposdePersonal: TZQuery;
    grid_tiposdePermiso: TDBGrid;
    TiposdePermiso: TZQuery;
    ds_TiposdePermiso: TDataSource;
    grid_tiposdeOrden: TDBGrid;
    ds_TiposdeOrden: TDataSource;
    TiposdeOrden: TZQuery;
    tabEstatus: TTabSheet;
    Grid_estatus: TDBGrid;
    ds_estatus: TDataSource;
    Estatus: TZQuery;
    TabFases: TTabSheet;
    grid_fasesxproyecto: TDBGrid;
    ds_fasesxproyecto: TDataSource;
    FasesxProyecto: TZQuery;
    TabCategorias: TTabSheet;
    dbCategorias: TDBGrid;
    ds_Categorias: TDataSource;
    Categorias: TZQuery;
    TabDirecciones: TTabSheet;
    DBGrid1: TDBGrid;
    dsDirecciones: TDataSource;
    qryDirecciones: TZQuery;
    TabCondiciones: TTabSheet;
    DBGrid2: TDBGrid;
    dsCondiciones: TDataSource;
    TabRecursos: TTabSheet;
    DBGrid3: TDBGrid;
    qryMezclas: TZQuery;
    dsMezclas: TDataSource;
    TabBarco: TTabSheet;
    QryTiposdeMovimiento: TZQuery;
    dsTiposMovimiento: TDataSource;
    QryEstimaciones: TZQuery;
    dsEstimaciones: TDataSource;
    TabEstimaciones: TTabSheet;
    DBGrid4: TDBGrid;
    QryEstimacionessContrato: TStringField;
    QryEstimacionesiNumeroEstimacion: TStringField;
    QryEstimacionessIdTipoEstimacion: TStringField;
    QryEstimacionesdIdFecha: TDateField;
    QryEstimacionesdFechaInicio: TDateField;
    QryEstimacionesdFechaFinal: TDateField;
    QryEstimacionessMoneda: TStringField;
    QryEstimacioneslEstimado: TStringField;
    QryEstimacionesdMontoMNGeneradores: TFloatField;
    QryEstimacionesdMontoDLLGeneradores: TFloatField;
    QryEstimacionesdMontoMN: TFloatField;
    QryEstimacionesdMontoDLL: TFloatField;
    QryEstimacionesdMontoAcumuladoMN: TFloatField;
    QryEstimacionesdMontoAcumuladoDLL: TFloatField;
    QryEstimacionesdRetencionMN: TFloatField;
    QryEstimacionesdRetencionDLL: TFloatField;
    QryEstimacionessElementoPEP: TStringField;
    QryEstimacionessFondo: TStringField;
    QryEstimacionessPosicionFinanciera: TStringField;
    QryEstimacionessCuentaMayor: TStringField;
    QryEstimacionessCentroGestor: TStringField;
    QryEstimacionessCentroCosto: TStringField;
    QryEstimacionessCentroBeneficio: TStringField;
    QryEstimacionessProyecto: TStringField;
    QryEstimacionesmComentarios: TMemoField;
    QryEstimacionesdAvanceFisicoProgramado: TFloatField;
    QryEstimacionesdAvanceFisicoReal: TFloatField;
    QryEstimacionesdAvanceFinancieroProgramado: TFloatField;
    QryEstimacionesdAvanceFinancieroReal: TFloatField;
    QryEstimacionesdFechaInicioContrato: TDateField;
    QryEstimacionesdFechaFinalContrato: TDateField;
    QryEstimacionesdMontoContratoMN: TFloatField;
    QryEstimacionesdMontoContratoDLL: TFloatField;
    QryEstimacionesdMontoProgramadoMensualMN: TFloatField;
    QryEstimacionesdMontoProgramadoMensualDLL: TFloatField;
    QryEstimacionesdMontoProgramadoAcumuladoMN: TFloatField;
    QryEstimacionesdMontoProgramadoAcumuladoDLL: TFloatField;
    QryEstimacionessIdUsuarioAutoriza: TStringField;
    QryEstimacionessFirmas: TMemoField;
    TabSheet1: TTabSheet;
    ds_Anexos: TDataSource;
    anexos: TZQuery;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    ds_reprograma: TDataSource;
    QryReprograma: TZQuery;
    StringField1: TStringField;
    DateField2: TDateField;
    DateField3: TDateField;
    QryReprogramadDuracion: TIntegerField;
    QryReprogramaiOrden: TIntegerField;
    pgMonedas: TTabSheet;
    dbGridMonedas: TDBGrid;
    ds_Moneda: TDataSource;
    Monedas: TZQuery;
    TabSheet3: TTabSheet;
    DBGrid6: TDBGrid;
    ds_pernoctas: TDataSource;
    Pernoctas: TZQuery;
    QEstimacionxContrato: TZQuery;
    DsEstimacionxContrato: TDataSource;
    TabSheet4: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    JvDBRichEdit1: TJvDBRichEdit;
    QEstimacionxContratoG: TZQuery;
    DsEstimacionxContratoG: TDataSource;
    anexossAnexo: TStringField;
    anexossDescripcion: TStringField;
    anexosiIdEstimacionContrato: TIntegerField;
    anexossTipo: TStringField;
    anexossTierra: TStringField;
    anexossMedida: TStringField;
    anexosdVentaMn: TFloatField;
    anexosdVentaDll: TFloatField;
    QryTiposdeMovimientosContrato: TStringField;
    QryTiposdeMovimientosIdTipoMovimiento: TStringField;
    QryTiposdeMovimientosDescripcion: TStringField;
    QryTiposdeMovimientosClasificacion: TStringField;
    QryTiposdeMovimientosMedida: TStringField;
    QryTiposdeMovimientosTipo: TStringField;
    QryTiposdeMovimientoiOrden: TStringField;
    QryTiposdeMovimientolGrafica: TStringField;
    QryTiposdeMovimientoiColor: TIntegerField;
    QryTiposdeMovimientodVentaMN: TFloatField;
    QryTiposdeMovimientodVentaDLL: TFloatField;
    QryTiposdeMovimientolGenera: TStringField;
    QryTiposdeMovimientoiIdEstimacionContrato: TIntegerField;
    anexosiOrden: TLargeintField;
    UGridAnexos: TJvDBUltimGrid;
    JvDBLookupCombo1: TJvDBLookupCombo;
    cmbtipo: TJvDBComboBox;
    cmbtierra: TJvDBComboBox;
    UGridMovimientos: TJvDBUltimGrid;
    cmbGenera: TJvDBComboBox;
    cmbGrafica: TJvDBComboBox;
    cmbOrden: TJvDBComboBox;
    JvDBLookupCombo2: TJvDBLookupCombo;
    TabSheet5: TTabSheet;
    qryFormasPago: TZQuery;
    dsFormasPago: TDataSource;
    JvDBGrid2: TJvDBGrid;
    TabClasificacionesPernoctas: TTabSheet;
    JvDBUltimGrid1: TJvDBUltimGrid;
    QryClasificacionPernoctas: TZQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    IntegerField2: TIntegerField;
    DsClasificacionPernoctas: TDataSource;
    qryDireccionesiIdDireccion: TLargeintField;
    qryDireccionessDescripcion: TStringField;
    qryCondiciones: TZQuery;
    qryCondicionesiIdCondicion: TLargeintField;
    qryCondicionessDescripcion: TStringField;
    qryCondicionessMedida: TStringField;
    PernoctassIdPernocta: TStringField;
    PernoctassDescripcion: TStringField;
    PernoctassMedida: TStringField;
    PernoctasdCostoMN: TFloatField;
    PernoctasdCostoDLL: TFloatField;
    PernoctasdVentaMN: TFloatField;
    PernoctasdVentaDLL: TFloatField;
    PernoctassIdCuenta: TStringField;
    anexosdCantidad: TFloatField;
    QEstimacionxContratoGsContrato: TStringField;
    QEstimacionxContratoGiIdEstimacionContrato: TLargeintField;
    QEstimacionxContratoGsPartida: TStringField;
    QEstimacionxContratoGsDescripcion: TMemoField;
    QEstimacionxContratoGiOrden: TLargeintField;
    QryClasificacionPernoctasdCantidad: TFloatField;
    TiposdeEmbarcacionsIdTipoEmbarcacion: TStringField;
    TiposdeEmbarcacionsDescripcion: TStringField;
    TiposdeEmbarcacioniRenglon: TIntegerField;
    TiposdeEmbarcacionsTitulo: TStringField;
    TiposdeEstimacionsIdTipoEstimacion: TStringField;
    TiposdeEstimacionsDescripcion: TStringField;
    TiposdeEstimacioniGrupo: TIntegerField;
    TiposdeEstimacionmComentarios: TMemoField;
    TabSheet6: TTabSheet;
    Grid_Despiece: TDBGrid;
    ds_despiece: TDataSource;
    Q_despiece: TZQuery;
    TabSheet7: TTabSheet;
    Grd_BarcoVigencia: TDBGrid;
    ds_BarcoVigencia: TDataSource;
    QryBarcoVigencia: TZQuery;
    StringField11: TStringField;
    DateField1: TDateField;
    DateField4: TDateField;
    QryBarcoVigenciasIdEmbarcacion: TStringField;
    QryBarcoVigenciasDescripcion: TStringField;
    QryTiposdeMovimientodCantidad: TFloatField;
    pgInformacion: TTabSheet;
    DBGrid7: TDBGrid;
    ds_informacion: TDataSource;
    QryInformacion: TZQuery;
    TabSheet8: TTabSheet;
    DBGrid8: TDBGrid;
    ds_tipocambio: TDataSource;
    tipocambio: TZQuery;
    PopOpciones: TPopupMenu;
    CrearVigencia: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure TiposdeEstimacionBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QryEstimacionesAfterInsert(DataSet: TDataSet);
    procedure QryReprogramaAfterInsert(DataSet: TDataSet);
    procedure QryReprogramaAfterEdit(DataSet: TDataSet);
    procedure QryReprogramaBeforePost(DataSet: TDataSet);
    procedure CategoriasAfterPost(DataSet: TDataSet);
    procedure CategoriasBeforeEdit(DataSet: TDataSet);
    procedure CategoriasNewRecord(DataSet: TDataSet);
    procedure CategoriasAfterEdit(DataSet: TDataSet);
    procedure CategoriasBeforePost(DataSet: TDataSet);
    procedure CategoriasBeforeDelete(DataSet: TDataSet);
    procedure dbGridMovimientosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QryTiposdeMovimientoBeforePost(DataSet: TDataSet);
    procedure anexosBeforePost(DataSet: TDataSet);
    procedure DbGridAnexosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QEstimacionxContratoGAfterInsert(DataSet: TDataSet);
    procedure QEstimacionxContratoGPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure anexosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryTiposdeMovimientoPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure anexosiIdEstimacionContratoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure anexosAfterInsert(DataSet: TDataSet);
    procedure QryTiposdeMovimientoiIdEstimacionContratoGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QryTiposdeMovimientoAfterInsert(DataSet: TDataSet);
    procedure QryClasificacionPernoctasAfterInsert(DataSet: TDataSet);
    procedure QryClasificacionPernoctasBeforePost(DataSet: TDataSet);
    procedure QryClasificacionPernoctasPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure IntegerField2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure pgCatalogosChange(Sender: TObject);
    procedure DBGrid5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid5TitleClick(Column: TColumn);
    procedure anexossAnexoChange(Sender: TField);
    procedure anexosAfterScroll(DataSet: TDataSet);
    procedure qryDireccionesAfterScroll(DataSet: TDataSet);
    procedure qryDireccionesiIdDireccionChange(Sender: TField);
    procedure qryDireccionesAfterPost(DataSet: TDataSet);
    procedure qryDireccionesAfterCancel(DataSet: TDataSet);
    function tablasDependientesDir(idOrig: string): boolean;
    function tablasDependientesCon(idOrig: string): boolean;
    function posibleBorrarDir(idOrig: string): boolean;
    function posibleBorrarCon(idOrig: string): boolean;
    procedure qryCondicionesAfterScroll(DataSet: TDataSet);
    procedure qryCondicionesAfterCancel(DataSet: TDataSet);
    procedure qryCondicionesAfterPost(DataSet: TDataSet);
    procedure qryCondicionesiIdCondicionChange(Sender: TField);
    procedure PernoctasBeforePost(DataSet: TDataSet);
    procedure qryDireccionesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryDireccionesDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PernoctassIdPernoctaChange(Sender: TField);
    procedure Inserta_pernocta(Sender:TObject) ;
    procedure PernoctasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PernoctasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QEstimacionxContratoGDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure qryFormasPagoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryFormasPagoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryClasificacionPernoctasDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure QryEstimacionesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryEstimacionesDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure anexosDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryReprogramaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryReprogramaDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure MonedasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure MonedasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryCondicionesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryCondicionesDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryMezclasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryMezclasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryTiposdeMovimientoDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure EstatusPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure EstatusDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FasesxProyectoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure FasesxProyectoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CategoriasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CategoriasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeOrdenPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeOrdenDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdePermisoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdePermisoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdePersonalPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdePersonalDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeConvenioPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeConvenioDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeEmbarcacionPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeEmbarcacionDeleteError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure TiposdeEquipoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeEquipoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeEstimacionPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure TiposdeEstimacionDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qryCondicionesBeforeDelete(DataSet: TDataSet);
    procedure qryDireccionesBeforeDelete(DataSet: TDataSet);
    procedure QryEstimacionesBeforePost(DataSet: TDataSet);
    procedure PernoctasdCostoDLLSetText(Sender: TField; const Text: string);
    procedure PernoctasdVentaDLLSetText(Sender: TField; const Text: string);
    procedure QEstimacionxContratoGsPartidaSetText(Sender: TField;
      const Text: string);
    procedure QEstimacionxContratoGBeforePost(DataSet: TDataSet);
    procedure TiposdeEmbarcacionBeforePost(DataSet: TDataSet);
    procedure TiposdeEmbarcacioniRenglonSetText(Sender: TField;
      const Text: string);
    procedure QryEstimacionesiNumeroEstimacionSetText(Sender: TField;
      const Text: string);
    procedure anexosdVentaMnSetText(Sender: TField; const Text: string);
    procedure anexosdVentaDllSetText(Sender: TField; const Text: string);
    procedure anexosdCantidadSetText(Sender: TField; const Text: string);
    procedure TiposdeEstimacioniGrupoSetText(Sender: TField;
      const Text: string);
    procedure qryCondicionesiIdCondicionSetText(Sender: TField;
      const Text: string);
    procedure QryTiposdeMovimientodVentaMNSetText(Sender: TField;
      const Text: string);
    procedure QryTiposdeMovimientodVentaDLLSetText(Sender: TField;
      const Text: string);
    procedure qryDireccionesiIdDireccionSetText(Sender: TField;
      const Text: string);
    procedure qryDireccionesBeforePost(DataSet: TDataSet);
    procedure PernoctassIdCuentaSetText(Sender: TField; const Text: string);
    procedure anexosiOrdenSetText(Sender: TField; const Text: string);
    procedure QryTiposdeMovimientoiOrdenSetText(Sender: TField;
      const Text: string);
    procedure QryBarcoVigenciaBeforePost(DataSet: TDataSet);
    procedure QryBarcoVigenciaAfterInsert(DataSet: TDataSet);
    procedure QryBarcoVigenciaDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryBarcoVigenciaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure QryBarcoVigenciasIdEmbarcacionChange(Sender: TField);
    procedure QryBarcoVigenciaCalcFields(DataSet: TDataSet);
    procedure tipocambioBeforePost(DataSet: TDataSet);
    procedure CrearVigenciaClick(Sender: TObject);
    procedure PopOpcionesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CrearObjetos;
  end;

var
  frmAdmonCatalogos: TfrmAdmonCatalogos;
  OldFecha      : tDate;
  OldCategoria  : string;
  grid:ticDbGrid;

  //Form en tiempor Ejecucion..
  Local_id      : string;
  myForm        : TForm;
  ds_buscar     : tDataSource;
  zBuscar       : TZReadOnlyQuery ;
  GridBuscar    : TRxDBGrid ;

  sDescripcionBarco : string;
  sAnexoOrig        : string; //captura el campo sAnexo constantemente por si llega a haber necesidad de reestablecerlo
  sDireccionOrig,
  sCondicionOrig    : string;

  lActDependientes : boolean;//indica si se deben actualizar tablas dependientes
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  BotonPermiso2: TBotonesPermisos;
  BotonPermiso3: TBotonesPermisos;
  BotonPermiso4: TBotonesPermisos;
  BotonPermiso5: TBotonesPermisos;
  BotonPermiso6: TBotonesPermisos;
  BotonPermiso7: TBotonesPermisos;
  BotonPermiso8: TBotonesPermisos;
  BotonPermiso9: TBotonesPermisos;
  BotonPermiso10: TBotonesPermisos;
  BotonPermiso11: TBotonesPermisos;
  BotonPermiso12: TBotonesPermisos;
  BotonPermiso13: TBotonesPermisos;
  BotonPermiso14: TBotonesPermisos;
  BotonPermiso15: TBotonesPermisos;
  BotonPermiso16: TBotonesPermisos;
  BotonPermiso17: TBotonesPermisos;
  BotonPermiso18: TBotonesPermisos;
  BotonPermiso19: TBotonesPermisos;
  BotonPermiso20: TBotonesPermisos;
  BotonPermiso21: TBotonesPermisos;

implementation

uses Utilerias, masUtilerias;

{$R *.dfm}


procedure TfrmAdmonCatalogos.crearObjetos;
var
  i:Integer;
begin
  for i:=0 to pgcatalogos.Pages[pgcatalogos.ActivePageIndex].ControlCount-1 do
  begin
    //showmessage(pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i].ClassName);
    if (pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i] is tdbgrid) or
        (pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i] is tjvdbUltimgrid)
      then
    begin
      if (pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i] is tjvdbUltimgrid) then
        grid:=TicDbGrid.create(tjvdbUltimgrid(pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i]))
      else
        if (pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i] is tdbgrid) then
          grid:=TicDbGrid.create(tdbgrid(pgcatalogos.Pages[pgcatalogos.ActivePageIndex].Controls[i]));
    end;
  end;

end;

procedure TfrmAdmonCatalogos.CrearVigenciaClick(Sender: TObject);
var
    zVigencia, zCategorias : tzReadOnlyQuery;
    i      : integer;
    maximo : string;
begin
    zVigencia := tzReadOnlyQuery.Create(self);
    zVigencia.Connection := connection.zConnection;

    zCategorias := tzReadOnlyQuery.Create(self);
    zCategorias.Connection := connection.zConnection;

    zVigencia.Active := False;
    zVigencia.SQL.Clear;
    zVigencia.SQL.Add('select max(dFechaVigencia) as dFechaVigencia, MAX(sIdCategoria) as maxima from categorias group by dFechaVigencia order by dFechaVigencia DESC ');
    zVigencia.Open;

    zCategorias.Active := False;
    zCategorias.SQL.Clear;
    zCategorias.SQL.Add('select * from categorias where dFechaVigencia =:Fecha');
    zCategorias.ParamByName('fecha').AsDate := zVigencia.FieldValues['dFechaVigencia'];
    zCategorias.Open;

    maximo := zVigencia.FieldValues['maxima'];
    try
        i := StrToInt(maximo);
    Except
        messageDLG('No se puede continuar último el Id de las Categorias anteriores debe Contener sólo numeros!', mtInformation, [mbOk], 0);
        exit;
    end;

    i := 1;
    while not zCategorias.Eof do
    begin
        zVigencia.Active := False;
        zVigencia.SQL.Clear;
        zVigencia.SQL.Add('insert into categorias (sIdCategoria, dFechaVigencia, sDescripcion, sMiGrupoResumen) values (:categoria, :fecha, :descripcion, :grupo)');
        zVigencia.ParamByName('categoria').AsString := IntToStr( StrToInt(maximo) + i);
        if zCategorias.FieldValues['dFechaVigencia'] = date then
           zVigencia.ParamByName('fecha').AsDate    := date + 1
        else
           zVigencia.ParamByName('fecha').AsDate       := date;
        zVigencia.ParamByName('Descripcion').AsString  := zCategorias.FieldValues['sDescripcion'];
        zVigencia.ParamByName('grupo').AsString        := zCategorias.FieldValues['sMiGrupoResumen'];
        zVigencia.ExecSQL;
        inc(i);
        zCategorias.Next;
    end;
    categorias.Refresh;
    categorias.First;
end;

procedure TfrmAdmonCatalogos.FormShow(Sender: TObject);
var
  QrAux:TzReadOnlyQuery;
  Cad,item:string;
  i:integer;
begin
  //aplicacion de permisos
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', categorias);
    BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', qryDirecciones);
    BotonPermiso2 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', qryCondiciones);
    BotonPermiso3 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', qryMezclas);
    BotonPermiso4 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdeEstimacion);
    BotonPermiso5 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdeOrden);
    BotonPermiso6 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdePermiso);
    BotonPermiso7 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdeConvenio);
    BotonPermiso8 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdeEmbarcacion);
    BotonPermiso9 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdeEquipo);
    BotonPermiso10 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', QryReprograma);
    BotonPermiso11 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', Monedas);
    BotonPermiso12 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', Pernoctas);
    BotonPermiso13 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', QEstimacionxContratoG);
    BotonPermiso14 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', qryFormasPago);
    BotonPermiso15 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', QryClasificacionPernoctas);
    BotonPermiso16 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', QryTiposdeMovimiento);
    BotonPermiso17 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', QryEstimaciones);
    BotonPermiso18 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', anexos);
    BotonPermiso19 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', TiposdePersonal);
    BotonPermiso20 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', Estatus);
    BotonPermiso21 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opadmonCatalogo', FasesxProyecto);
 
  try
    lActDependientes := false;
    QrAux:=TzReadOnlyQuery.create(Nil);
    QrAux.Connection:=connection.zconnection;
    QrAux.SQL.Text:='describe anexos';
    QrAux.Open;

    if QrAux.Locate('field','sTipo',[loCaseInsensitive]) then
    begin
      cad:=QrAux.FieldByName('type').AsString;
      cad:=copy(cad,pos('(',cad)+1,length(cad));
      cad:=copy(cad,1,pos(')',cad)-1);
      for I := 1 to NumItems(cad,',') do
      begin
        item:=traerItem(cad,',',i);
        item:=copy(item,2,length(item)-2);
        cmbtipo.Items.Add(item);
      end;
    end;

    if QrAux.Locate('field','sTierra',[loCaseInsensitive]) then
    begin
      cad:=QrAux.FieldByName('type').AsString;
      cad:=copy(cad,pos('(',cad)+1,length(cad));
      cad:=copy(cad,1,pos(')',cad)-1);
      for I := 1 to NumItems(cad,',') do
      begin
        item:=traerItem(cad,',',i);
        item:=copy(item,2,length(item)-2);
        cmbtierra.Items.Add(item);
      end;
    end;

    QrAux.active:=false;
    QrAux.SQL.Text:='describe tiposdemovimiento';
    QrAux.Open;

    if QrAux.Locate('field','iorden',[loCaseInsensitive]) then
    begin
      cad:=QrAux.FieldByName('type').AsString;
      cad:=copy(cad,pos('(',cad)+1,length(cad));
      cad:=copy(cad,1,pos(')',cad)-1);
      for I := 1 to NumItems(cad,',') do
      begin
        item:=traerItem(cad,',',i);
        item:=copy(item,2,length(item)-2);
        cmborden.Items.Add(item);
      end;
    end;


    if QrAux.Locate('field','lgrafica',[loCaseInsensitive]) then
    begin
      cad:=QrAux.FieldByName('type').AsString;
      cad:=copy(cad,pos('(',cad)+1,length(cad));
      cad:=copy(cad,1,pos(')',cad)-1);
      for I := 1 to NumItems(cad,',') do
      begin
        item:=traerItem(cad,',',i);
        item:=copy(item,2,length(item)-2);
        cmbgrafica.Items.Add(item);
      end;
    end;

    if QrAux.Locate('field','lgenera',[loCaseInsensitive]) then
    begin
      cad:=QrAux.FieldByName('type').AsString;
      cad:=copy(cad,pos('(',cad)+1,length(cad));
      cad:=copy(cad,1,pos(')',cad)-1);
      for I := 1 to NumItems(cad,',') do
      begin
        item:=traerItem(cad,',',i);
        item:=copy(item,2,length(item)-2);
        cmbgenera.Items.Add(item);
      end;
    end;

    freeandnil(QrAux);

    Q_despiece.Active := False ;
    Q_despiece.Open ;

    TiposdeEstimacion.Active := False ;
    TiposdeEstimacion.Open ;

    TiposdeConvenio.Active := False ;
    TiposdeConvenio.Open ;

    TiposdeEmbarcacion.Active := False ;
    TiposdeEmbarcacion.Open ;

    TiposdeEquipo.Active := False ;
    TiposdeEquipo.Open ;

    TiposdePersonal.Active := False ;
    TiposdePersonal.Open ;

    TiposdePermiso.Active := False ;
    TiposdePermiso.Open ;

    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;

    Estatus.Active := False ;
    Estatus.Open ;

    FasesxProyecto.Active := False ;
    FasesxProyecto.Open ;

    QryInformacion.Active := False ;
    QryInformacion.Open ;

    Categorias.Active := False ;
    Categorias.Open ;

    Monedas.Active := False ;
    Monedas.Open ;

    Tipocambio.Active := False ;
    Tipocambio.Open ;

    Pernoctas.Active := False ;
    Pernoctas.Open ;

    qryDirecciones.Active:=false;
    qryDirecciones.Open;

    qryCondiciones.Active:=False;
    qryCondiciones.Open;

    qryMezclas.Active:=False;
    qryMezclas.Open;

    QEstimacionxContratog.Active:=false;
    QEstimacionxContratog.parambyname('contrato').asstring:=global_contrato_barco;
    QEstimacionxContratog.Open;

    QryTiposdeMovimiento.Active:=False;
    QryTiposdeMovimiento.ParamByName('Contrato').AsString :=  global_contrato_barco;
    QryTiposdeMovimiento.Open;

    QryClasificacionPernoctas.Active:=False;
    QryClasificacionPernoctas.ParamByName('Contrato').AsString :=  global_contrato_barco;
    QryClasificacionPernoctas.Open;

    QryEstimaciones.Active:=False;
    QryEstimaciones.ParamByName('Contrato').AsString :=  global_contrato_barco;
    QryEstimaciones.Open;

    QryReprograma.Active:=False;
    QryReprograma.ParamByName('Contrato').AsString :=  global_contrato_barco;
    QryReprograma.Open;

    QryBarcoVigencia.Active:=False;
    QryBarcoVigencia.ParamByName('Contrato').AsString :=  global_contrato_barco;
    QryBarcoVigencia.Open;

    QEstimacionxContrato.Active:=false;
    QEstimacionxContrato.parambyname('contrato').asstring:=global_contrato_barco;
    QEstimacionxContrato.Open;

    Anexos.Active := False ;
    Anexos.Open ;

    qryFormasPago.Active := False ;
    qryFormasPago.Open ;

    CrearObjetos;

  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administración de Catalogos', 'Al mostrar ventana', 0);
    end;
  end;

end;

procedure TfrmAdmonCatalogos.IntegerField2GetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
Var
  QAux:TzreadOnlyquery;

begin
  text:='';
  QAux:=TzReadOnlyQuery.create(nil);
  QAux.Connection:=connection.zConnection;
  QAux.SQL.Text:='select mid(sdescripcion,1,255) as sdesc from estimacionxcontrato ' +
                  'where scontrato=' + quotedstr(global_contrato_barco) + ' and iidestimacioncontrato=' + QryTiposdeMovimiento.FieldByName('iidestimacioncontrato').AsString;

  try
    try
      QAux.Open;
      if QAux.RecordCount=1 then
        text:=QAux.FieldByName('sdesc').AsString;
    except
      text:='';
    end;

  finally
    freeandnil(QAux);
  end;

end;

procedure TfrmAdmonCatalogos.MonedasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos Monedas', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.MonedasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos Monedas', 0);
  abort;
end;
procedure PCAbsoluto(Zeo:TZQuery;Camp:string);
begin
if Zeo.FieldValues[Camp]<0 then
 Zeo.FieldValues[Camp]:=Zeo.FieldValues[Camp]*-1;
end;
procedure TfrmAdmonCatalogos.PernoctasBeforePost(DataSet: TDataSet);
begin
  PCAbsoluto(Pernoctas,'sidCuenta');
  Pernoctas.FieldByName('dCostoMN').AsFloat := 0;
  Pernoctas.FieldByName('dCostoDLL').AsFloat := 0;

  PCAbsoluto(Pernoctas, 'sIdCuenta');
  PCAbsoluto(Pernoctas,'dVentaMN');
  PCAbsoluto(Pernoctas,'dVentaDLL');
end;

procedure TfrmAdmonCatalogos.PernoctasdCostoDLLSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.PernoctasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Pernoctas', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.PernoctasdVentaDLLSetText(Sender: TField;
  const Text: string);
begin
    Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.PernoctasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Pernoctas', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.PernoctassIdCuentaSetText(Sender: TField;
  const Text: string);
begin
    Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.PernoctassIdPernoctaChange(Sender: TField);
begin
   If NOT pernoctas.FieldByName('sIdPernocta').IsNull Then
   Begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('select sDescripcion, sIdPernocta from pernoctan where sIdPernocta =:Pernocta ') ;
      Connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Pernocta').Value    := pernoctassIdPernocta.Text ;
      Connection.qryBusca.Open ;

      if Connection.qryBusca.RecordCount > 0 then
         if pernoctas.FieldValues['sIdPernocta'] = Connection.QryBusca.FieldValues['sIdPernocta'] then
            pernoctas.FieldValues['sDescripcion'] := Connection.QryBusca.FieldValues['sDescripcion'];
   end;
end;

procedure TfrmAdmonCatalogos.pgCatalogosChange(Sender: TObject);
begin
  freeandnil(grid);
  CrearObjetos;
end;

procedure TfrmAdmonCatalogos.PopOpcionesPopup(Sender: TObject);
begin
    if categorias.RecordCount > 0 then
       CrearVigencia.Enabled := True
    else
       CrearVigencia.Enabled := False;
end;

procedure TfrmAdmonCatalogos.DBGrid5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  Grid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmAdmonCatalogos.DBGrid5MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Grid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmAdmonCatalogos.DBGrid5TitleClick(Column: TColumn);
begin
  Grid.DbGridTitleClick(Column);
end;

procedure TfrmAdmonCatalogos.DbGridAnexosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    (*
     if (key=40) and (DbGridAnexos.SelectedRow=(DbGridAnexos.RowCount-1)) then
      begin
        DbGridAnexos.AddRow();
        anexos.append;
        anexos.FieldByName('dventamn').asfloat:=0;
        anexos.FieldByName('dventadll').asfloat:=0;
        anexos.FieldByName('iorden').asinteger:=0;
        // //.InsertRow(Nextdbgrid1.RowCount);

      end;
  *)
end;

procedure TfrmAdmonCatalogos.dbGridMovimientosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //showmessage(inttostr(key))
  (*
    if (key=40) and (dbGridMovimientos.SelectedRow=(dbGridMovimientos.RowCount-1)) then
     begin
       dbGridMovimientos.AddRow();
       qryTiposdeMovimiento.append;
       qryTiposdeMovimiento.FieldValues['sClasificacion'] := 'Movimiento de Barco' ;
       qryTiposdeMovimiento.FieldValues['lGrafica'] := 'No' ;
       qryTiposdeMovimiento.FieldValues['iColor'] := 5 ;
       qryTiposdeMovimiento.FieldValues['dVentaMN'] := 0.00 ;
       qryTiposdeMovimiento.FieldValues['dVentaDLL'] := 0.00 ;
       qryTiposdeMovimiento.FieldValues['sContrato'] := global_contrato_barco ;
   
   
       // //.InsertRow(Nextdbgrid1.RowCount);

     end;  
 *)
end;

procedure TfrmAdmonCatalogos.EstatusDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Estatus de Ordenes de Trabajo', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.EstatusPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Estatus de Ordenes de Trabajo', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QEstimacionxContratoGAfterInsert(
  DataSet: TDataSet);
begin
  QEstimacionxContratog.FieldByName('scontrato').asstring:=global_contrato_barco;
  QEstimacionxContratog.FieldByName('iorden').asInteger:=QEstimacionxContratog.recordcount + 1;

end;

procedure TfrmAdmonCatalogos.QEstimacionxContratoGBeforePost(DataSet: TDataSet);
begin
   PCAbsoluto(QEstimacionxContratoG,'sPartida');
   PCAbsoluto(QEstimacionxContratoG,'iOrden');
end;

procedure TfrmAdmonCatalogos.QEstimacionxContratoGDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Estimacion del Contrato', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QEstimacionxContratoGPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Estimacion del Contrato', 0);
  abort;
  QEstimacionxContratog.Cancel;
  QEstimacionxContratog.refresh;
end;

procedure TfrmAdmonCatalogos.QEstimacionxContratoGsPartidaSetText(
  Sender: TField; const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.QryClasificacionPernoctasAfterInsert(
  DataSet: TDataSet);
begin
  QryClasificacionPernoctas.FieldValues['sClasificacion'] := 'Clasificacion de Pernoctas' ;
  QryClasificacionPernoctas.FieldValues['lGrafica'] := 'No' ;
  QryClasificacionPernoctas.FieldValues['iColor'] := 5 ;
  QryClasificacionPernoctas.FieldValues['dVentaMN'] := 0.00 ;
  QryClasificacionPernoctas.FieldValues['dVentaDLL'] := 0.00 ;
  QryClasificacionPernoctas.FieldValues['sContrato'] := global_contrato_barco ;
end;

procedure TfrmAdmonCatalogos.QryClasificacionPernoctasBeforePost(
  DataSet: TDataSet);
begin
    if QryClasificacionPernoctas.FieldValues['iidestimacioncontrato'] = null then
     QryClasificacionPernoctas.FieldValues['iidestimacioncontrato'] :=0;

    PCAbsoluto(QryClasificacionPernoctas,'dCantidad');
    PCAbsoluto(QryClasificacionPernoctas,'dVentaMN');
    PCAbsoluto(QryClasificacionPernoctas,'dVentaDLL');

end;

procedure TfrmAdmonCatalogos.QryClasificacionPernoctasDeleteError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Clasificacion de Pernoctas', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryClasificacionPernoctasPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Clasificacion de Pernoctas', 0);
  abort;
  QryClasificacionPernoctas.Cancel;
  QryClasificacionPernoctas.refresh;
end;

function TfrmAdmonCatalogos.tablasDependientesCon(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('iIdCondicion');ParamValuesSET.Add(qryCondiciones.FieldByName('iIdCondicion').AsString);
  ParamNamesWHERE.Add('iIdCondicion');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('condiciones',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmAdmonCatalogos.posibleBorrarCon(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('iIdCondicion');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('condiciones',ParamNamesWHERE,ParamValuesWHERE);
end;


procedure TfrmAdmonCatalogos.qryCondicionesAfterCancel(DataSet: TDataSet);
begin
  lActDependientes := false;
end;

procedure TfrmAdmonCatalogos.qryCondicionesAfterPost(DataSet: TDataSet);
begin
  if lActDependientes then
  begin
    tablasDependientesCon(sCondicionOrig);
    lActDependientes := false;
  end;
end;

procedure TfrmAdmonCatalogos.qryCondicionesAfterScroll(DataSet: TDataSet);
begin
  sCondicionOrig := qryCondiciones.FieldByName('iIdCondicion').AsString;
end;

procedure TfrmAdmonCatalogos.qryCondicionesBeforeDelete(DataSet: TDataSet);
begin
  if not posibleBorrarCon(qryCondiciones.FieldByName('iIdCondicion').AsString) then
  begin
    MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
    abort;
  end;
end;

procedure TfrmAdmonCatalogos.qryCondicionesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Condiciones Climatologicas', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.qryCondicionesiIdCondicionChange(Sender: TField);
begin
  if qryCondiciones.State = dsEdit then
  begin
    lActDependientes := true;
  end;
end;

procedure TfrmAdmonCatalogos.qryCondicionesiIdCondicionSetText(Sender: TField;
  const Text: string);
begin
   Sender.Value:=abs(strToIntDef(text,0));
end;

procedure TfrmAdmonCatalogos.qryCondicionesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Condiciones Climatologicas', 0);
  abort;
end;

function TfrmAdmonCatalogos.tablasDependientesDir(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('iIdDireccion');ParamValuesSET.Add(qryDirecciones.FieldByName('iIdDireccion').AsString);
  ParamNamesWHERE.Add('iIdDireccion');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('direcciones',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

procedure TfrmAdmonCatalogos.tipocambioBeforePost(DataSet: TDataSet);
var
   lEncuentra : boolean;
begin
    monedas.First;
    lEncuentra := False;
    while not monedas.Eof do
    begin
        if tipocambio.FieldValues['sIdMoneda'] = monedas.FieldValues['sIdMoneda'] then
           lEncuentra := True;
        monedas.Next;
    end;

    if lEncuentra = False then
    begin
       messageDLG('No se encontró la Moneda en Tipos de Moneda para la Columna "Id Moneda"', mtWarning, [mbOk], 0);
       tipocambio.Cancel;
       exit;
    end;

    monedas.First;
    lEncuentra := False;
    while not monedas.Eof do
    begin
        if tipocambio.FieldValues['sIdMonedaConv'] = monedas.FieldValues['sIdMoneda'] then
           lEncuentra := True;
        monedas.Next;
    end;

    if lEncuentra = False then
    begin
       messageDLG('No se encontró la Moneda en Tipos de Moneda para la Columna "A Moneda"', mtWarning, [mbOk], 0);
       tipocambio.Cancel;
    end;
end;

function TfrmAdmonCatalogos.posibleBorrarDir(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('iIdDireccion');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('direcciones',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmAdmonCatalogos.qryDireccionesAfterCancel(DataSet: TDataSet);
begin
  lActDependientes := false;
end;

procedure TfrmAdmonCatalogos.qryDireccionesAfterPost(DataSet: TDataSet);
begin
  PCAbsoluto(qryDirecciones,'iIdDireccion');

  if lActDependientes then
  begin
    tablasDependientesDir(sDireccionOrig);
    lActDependientes := false;
  end;
end;

procedure TfrmAdmonCatalogos.qryDireccionesAfterScroll(DataSet: TDataSet);
begin
  sDireccionOrig := qryDirecciones.FieldByName('iIdDireccion').AsString;
end;

procedure TfrmAdmonCatalogos.qryDireccionesBeforeDelete(DataSet: TDataSet);
begin
  if not posibleBorrarDir(qryDirecciones.FieldByName('iIdDireccion').AsString) then
  begin
    MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
    abort;
  end;
end;

procedure TfrmAdmonCatalogos.qryDireccionesBeforePost(DataSet: TDataSet);
begin
    PCAbsoluto(qryDirecciones,'iIdDireccion');
end;

procedure TfrmAdmonCatalogos.qryDireccionesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar registro de direcciones', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.qryDireccionesiIdDireccionChange(Sender: TField);
begin
  if qryDirecciones.State = dsEdit then
  begin
    lActDependientes := true;
  end;
end;

procedure TfrmAdmonCatalogos.qryDireccionesiIdDireccionSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=(StrToIntDef(Text,0));
end;

procedure TfrmAdmonCatalogos.qryDireccionesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al salvar registro de direcciones', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryEstimacionesAfterInsert(DataSet: TDataSet);
begin
    qryEstimaciones.FieldValues['sContrato'] := global_contrato_barco ;
    qryEstimaciones.FieldValues['sIdTipoEstimacion'] := '' ;
    qryEstimaciones.FieldValues['dIdFecha'] := Date ;
    qryEstimaciones.FieldValues['dFechaInicio'] := Date ;
    qryEstimaciones.FieldValues['dFechaFinal'] := Date ;
    qryEstimaciones.FieldValues['dFechaInicioContrato'] := Date ;
    qryEstimaciones.FieldValues['dFechaFinalContrato'] := Date ;
    qryEstimaciones.FieldValues['sMoneda'] := 'MONEDA NACIONAL' ;
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmAdmonCatalogos.QryEstimacionesBeforePost(DataSet: TDataSet);
begin
   PCAbsoluto(QryEstimaciones,'iNumeroEstimacion');

 //Valida si la fecha final es valida
     if not isdate(QryEstimaciones.FieldByName('dFechaInicio').AsString) then
   begin
     showmessage('Ingrese una fecha inicio correcta');
     abort;
   end;
   //Valida si la fecha final es valida
     if not isdate(QryEstimaciones.FieldByName('dFechaFinal').AsString) then
   begin
     showmessage('Ingrese una fecha final correcta');
     abort;
   end;

   //Valida si la fecha final es menor que la fecha inicio
     if QryEstimaciones.FieldByName('dFechaFinal').AsDateTime<QryEstimaciones.FieldByName('dFechaInicio').AsDateTime then
   begin
     showmessage('La fecha final es menor que la fecha inicio');
     abort;
   end;

end;

procedure TfrmAdmonCatalogos.QryEstimacionesDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Estimaciones de Barco', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryEstimacionesiNumeroEstimacionSetText(
  Sender: TField; const Text: string);
begin
  Sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmAdmonCatalogos.QryEstimacionesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Estimaciones de Barco', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.qryFormasPagoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Formas de Pago', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.qryFormasPagoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Formas de Pago', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.qryMezclasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Mezclas/Recursos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.qryMezclasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Mezclas/Recursos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryReprogramaAfterEdit(DataSet: TDataSet);
begin
    qryReprograma.FieldValues['dDuracion']    := (qryReprograma.FieldValues['dFechaFinal'] - qryReprograma.FieldValues['dFechaInicio']) + 1;
end;

procedure TfrmAdmonCatalogos.QryReprogramaAfterInsert(DataSet: TDataSet);
begin
    qryReprograma.FieldValues['sContrato']    := global_contrato_barco ;
    qryReprograma.FieldValues['dFechaInicio'] := Date ;
    qryReprograma.FieldValues['dFechaFinal']  := Date ;
end;

procedure TfrmAdmonCatalogos.QryReprogramaBeforePost(DataSet: TDataSet);
begin
    if global_contrato_barco='' then
    begin
        showmessage('No Existe Contrato de Barco');
        abort;
    end;

    //Valida si la fecha final es valida
    If not isdate(QryReprograma.FieldByName('dFechaInicio').AsString) then
    begin
        showmessage('Ingrese una fecha inicio correcta');
        abort;
    end;

    //Valida si la fecha final es valida
    if not isdate(QryReprograma.FieldByName('dFechaFinal').AsString) then
    begin
        showmessage('Ingrese una fecha final correcta');
        abort;
    end;

    //Valida si la fecha final es menor que la fecha inicio
    if QryReprograma.FieldByName('dFechaFinal').AsDateTime<QryReprograma.FieldByName('dFechaInicio').AsDateTime then
    begin
        showmessage('La fecha final es menor que la fecha inicio');
        abort;
    end;

    qryReprograma.FieldValues['dDuracion']    := (qryReprograma.FieldValues['dFechaFinal'] - qryReprograma.FieldValues['dFechaInicio']) + 1;

    {Buscamos si ya existe una Vigenica de Embarcacion principal}
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select * from embarcacion_vigencia where sContrato =:Contrato ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount = 0 then
    begin
        {Buscamos si existe una embarcacion principal..}
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcaciones where sContrato =:Contrato and sTipo = "Principal" ');
        connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato_barco;
        connection.QryBusca.Open;

        {Ahora insetamos los datos a la Vigencia de Embarcacion..}
        if connection.QryBusca.RecordCount > 0 then
        begin
            connection.QryBusca2.Active := False;
            connection.QryBusca2.SQL.Clear;
            connection.QryBusca2.SQL.Add('insert into embarcacion_vigencia (sContrato, sIdEmbarcacion, dFechaInicio, dFechaFinal) '+
                                        ' values (:Contrato, :Embarcacion, :FechaI, :FechaF)');
            connection.QryBusca2.ParamByName('Contrato').AsString    := global_contrato_barco;
            connection.QryBusca2.ParamByName('Embarcacion').AsString := connection.QryBusca.FieldValues['sIdEmbarcacion'];
            connection.QryBusca2.ParamByName('FechaI').AsDate        := QryReprograma.FieldValues['dFechaInicio'];
            connection.QryBusca2.ParamByName('FechaF').AsDate        := QryReprograma.FieldValues['dFechaFinal'];
            connection.QryBusca2.ExecSQL;

            QryBarcoVigencia.Active:=False;
            QryBarcoVigencia.ParamByName('Contrato').AsString :=  global_contrato_barco;
            QryBarcoVigencia.Open;

            messageDLG(' La Vigencia de la Embarcacion Principal se ha Actualizado! ', mtInformation, [mbOk], 0);
        end
        else
            messageDLG(' Necesita Registrar una Embarcacion Principal para crear una Vigencia de Embarcación!', mtInformation, [mbOk], 0);
    end;
end;

procedure TfrmAdmonCatalogos.QryReprogramaDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Reprogramacion Barco', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryReprogramaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Reprogramacion Barco', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientoAfterInsert(DataSet: TDataSet);
begin
  qryTiposdeMovimiento.FieldValues['sClasificacion'] := 'Movimiento de Barco' ;
  qryTiposdeMovimiento.FieldValues['lGrafica'] := 'No' ;
  qryTiposdeMovimiento.FieldValues['iColor'] := 5 ;
  qryTiposdeMovimiento.FieldValues['dVentaMN'] := 0.00 ;
  qryTiposdeMovimiento.FieldValues['dVentaDLL'] := 0.00 ;
  qryTiposdeMovimiento.FieldValues['sContrato'] := global_contrato_barco ;

end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientoBeforePost(DataSet: TDataSet);
begin
    PCAbsoluto(QryTiposdeMovimiento,'iOrden');
    PCAbsoluto(QryTiposdeMovimiento,'dVentaMN');
    PCAbsoluto(QryTiposdeMovimiento,'dVentaDLL');

    if qryTiposdeMovimiento.FieldValues['iidestimacioncontrato'] = null then
     qryTiposdeMovimiento.FieldValues['iidestimacioncontrato'] :=0;
end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Movimientos de Barco', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientodVentaDLLSetText(
  Sender: TField; const Text: string);
begin
  Sender.Value:=(StrToFloatDef(Text,0));
end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientodVentaMNSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=(StrToFloatDef(Text,0));
end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientoiIdEstimacionContratoGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
Var
  QAux:TzreadOnlyquery;

begin
  text:='';
  QAux:=TzReadOnlyQuery.create(nil);
  QAux.Connection:=connection.zConnection;
  QAux.SQL.Text:='select mid(sdescripcion,1,255) as sdesc from estimacionxcontrato ' +
                  'where scontrato=' + quotedstr(global_contrato_barco) + ' and iidestimacioncontrato=' + QryTiposdeMovimiento.FieldByName('iidestimacioncontrato').AsString;

  try
    try
      QAux.Open;
      if QAux.RecordCount=1 then
        text:=QAux.FieldByName('sdesc').AsString;
    except
      text:='';
    end;

  finally
    freeandnil(QAux);
  end;


end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientoiOrdenSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.QryTiposdeMovimientoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Movimientos de Barco', 0);
  abort;
  QryTiposdeMovimiento.Cancel;
 QryTiposdeMovimiento.refresh;
end;

procedure TfrmAdmonCatalogos.QryBarcoVigenciaAfterInsert(DataSet: TDataSet);
begin
    QryBarcoVigencia.FieldValues['sContrato']    := global_contrato_barco ;
    QryBarcoVigencia.FieldValues['dFechaInicio'] := Date ;
    QryBarcoVigencia.FieldValues['dFechaFinal']  := Date ;
end;

procedure TfrmAdmonCatalogos.QryBarcoVigenciaBeforePost(DataSet: TDataSet);
begin
    if global_contrato_barco='' then
    begin
      showmessage('No Existe Contrato de Barco');
      abort;
    end;

    //Valida si en Id de Embarcacion no esta en blanco,,
    if qryBarcoVigencia.FieldByName('sIdEmbarcacion').AsString = '' then
    begin
        showmessage('Ingrese un Id de Embarcacion ');
        abort;
    end;

    //Valida si la fecha final es valida
    if not isdate(qryBarcoVigencia.FieldByName('dFechaInicio').AsString) then
    begin
       showmessage('Ingrese una fecha inicio correcta');
       abort;
    end;

    //Valida si la fecha final es valida
    if not isdate(qryBarcoVigencia.FieldByName('dFechaFinal').AsString) then
    begin
       showmessage('Ingrese una fecha final correcta');
       abort;
    end;

    //Valida si la fecha final es menor que la fecha inicio
    if QryBarcoVigencia.FieldByName('dFechaFinal').AsDateTime < QryBarcoVigencia.FieldByName('dFechaInicio').AsDateTime then
    begin
       showmessage('La fecha final es menor que la fecha inicio');
       abort;
    end;


end;

procedure TfrmAdmonCatalogos.QryBarcoVigenciaCalcFields(DataSet: TDataSet);
begin
     if QryBarcoVigencia.State <> dsInsert then
     begin
         connection.QryBusca.Active := False;
         connection.QryBusca.SQL.Clear;
         connection.QryBusca.SQL.Add('select sDescripcion from embarcaciones where sContrato =:Contrato and sIdEmbarcacion =:Embarcacion and sTipo = "Principal" ');
         connection.QryBusca.ParamByName('Contrato').AsString    := global_contrato_barco;
         connection.QryBusca.ParamByName('Embarcacion').AsString := QryBarcoVigencia.FieldValues['sIdEmbarcacion'];
         connection.QryBusca.Open;

         if connection.QryBusca.RecordCount > 0 then
             QryBarcoVigencia.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'];
     end;

end;

procedure TfrmAdmonCatalogos.QryBarcoVigenciaDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Reprogramacion Barco', 0);
     abort;
end;

procedure TfrmAdmonCatalogos.QryBarcoVigenciaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Reprogramacion Barco', 0);
    abort;
end;

procedure TfrmAdmonCatalogos.QryBarcoVigenciasIdEmbarcacionChange(
  Sender: TField);
var
   sDescripcion : string;
   BuscaObjeto  : TZReadOnlyQuery;
begin
    BuscaObjeto := TZReadOnlyQuery.Create(self);
    BuscaObjeto.Connection := connection.zConnection;

    If NOT QryBarcoVigencia.FieldByName('sIdEmbarcacion').IsNull Then
    begin
       If Trim(QryBarcoVigencia.FieldValues['sIdEmbarcacion'])  <> '' then
       Begin
            BuscaObjeto.Active := False ;
            BuscaObjeto.SQL.Clear ;
            BuscaObjeto.SQL.Add('Select sIdEmbarcacion, sDescripcion from embarcaciones Where ' +
                                'sContrato = :Contrato and sTipo = "Principal" And sIdEmbarcacion = :Id') ;
            BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString ;
            BuscaObjeto.Params.ParamByName('Contrato').Value    := global_contrato_barco ;
            BuscaObjeto.Params.ParamByName('Id').DataType       := ftString ;
            BuscaObjeto.Params.ParamByName('Id').Value          := QryBarcoVigencia.FieldValues['sIdEmbarcacion'] ;
            BuscaObjeto.Open ;

            if BuscaObjeto.RecordCount > 0 then
                QryBarcoVigencia.FieldValues['sDescripcion']   := BuscaObjeto.FieldValues['sDescripcion']
            else
            begin
                messageDLG(' No se encontro Embarcacion Principal con el Id ' + QryBarcoVigencia.FieldValues['sIdEmbarcacion'], mtInformation, [mbOk], 0);
                QryBarcoVigencia.Cancel;
            end;

       End;
   end ;
end;

procedure TfrmAdmonCatalogos.TiposdeConvenioDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Reprogramacion', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeConvenioPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Reprogramacion', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeEmbarcacionBeforePost(DataSet: TDataSet);
begin
    PCAbsoluto(TiposdeEmbarcacion,'iRenglon');
end;

procedure TfrmAdmonCatalogos.TiposdeEmbarcacionDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Embarcacion', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeEmbarcacioniRenglonSetText(Sender: TField;
  const Text: string);
begin
    Sender.Value:=abs(strToIntDef(text,0));
end;

procedure TfrmAdmonCatalogos.TiposdeEmbarcacionPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Embarcacion', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeEquipoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Equipos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeEquipoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Equipos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeEstimacionBeforePost(
  DataSet: TDataSet);
begin
  PCAbsoluto(TiposdeEstimacion,'iGrupo');

  TiposdeEstimacion.FieldValues['mComentarios'] := 'SIN COMENTARIOS' ;

end;

procedure TfrmAdmonCatalogos.TiposdeEstimacionDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Estimacion', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeEstimacioniGrupoSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmAdmonCatalogos.TiposdeEstimacionPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Estimacion', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeOrdenDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Orden', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdeOrdenPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Orden', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdePermisoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Permiso', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdePermisoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Permiso', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdePersonalDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Tipos de Personal', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.TiposdePersonalPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Tipos de Personal', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.anexosAfterInsert(DataSet: TDataSet);
begin
  anexos.FieldByName('dventadll').AsFloat:=0;
  anexos.FieldByName('dventamn').AsFloat:=0;
end;

procedure TfrmAdmonCatalogos.anexosAfterScroll(DataSet: TDataSet);
begin
  sAnexoOrig := anexos.FieldByName('sAnexo').AsString;
end;

procedure TfrmAdmonCatalogos.anexosBeforePost(DataSet: TDataSet);
begin
  PCAbsoluto(Anexos,'dVentaMN');
  PCAbsoluto(Anexos,'dVentaDLL');
  PCAbsoluto(Anexos,'iOrden');

  if anexos.FieldValues['iidestimacioncontrato'] = null then
     anexos.FieldValues['iidestimacioncontrato'] :=0;
end;

procedure TfrmAdmonCatalogos.anexosdCantidadSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.anexosDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Anexos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.anexosdVentaDllSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.anexosdVentaMnSetText(Sender: TField;
  const Text: string);
begin
   Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.anexosiIdEstimacionContratoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
Var
  QAux:TzreadOnlyquery;

begin
  text:='';
  QAux:=TzReadOnlyQuery.create(nil);
  QAux.Connection:=connection.zConnection;
  QAux.SQL.Text:='select mid(sdescripcion,1,255) as sdesc from estimacionxcontrato ' +
                  'where scontrato=' + quotedstr(global_contrato_barco) + ' and iidestimacioncontrato=' + anexos.FieldByName('iidestimacioncontrato').AsString;

  try
    try
      QAux.Open;
      if QAux.RecordCount=1 then
        text:=QAux.FieldByName('sdesc').AsString;
    except
      text:='';
    end;

  finally
    freeandnil(QAux);
  end;



end;

procedure TfrmAdmonCatalogos.anexosiOrdenSetText(Sender: TField;
  const Text: string);
begin
  Sender.Value:=abs(StrToFloatDef(text,0));
end;

procedure TfrmAdmonCatalogos.anexosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Anexo', 0);
  abort;
  anexos.Cancel;
anexos.refresh;
end;

procedure TfrmAdmonCatalogos.anexossAnexoChange(Sender: TField);
begin
  if anexos.State = dsEdit then
  begin
    //anexos.FieldByName('sAnexo').Value := sAnexoOrig;
    anexos.cancel;
    showmessage('No es posible cambiar el ID del anexo');
  end;
end;

procedure TfrmAdmonCatalogos.CategoriasAfterEdit(DataSet: TDataSet);
begin
    OldFecha     := Categorias.FieldValues['dFechaVigencia'];
    OldCategoria := Categorias.FieldValues['sIdCategoria'];
end;

procedure TfrmAdmonCatalogos.CategoriasAfterPost(DataSet: TDataSet);
var
    Actualiza : TZReadOnlyQuery;
begin
    Actualiza := TZReadOnlyQuery.Create(self);
    Actualiza.Connection := connection.zConnection;

    //Se actualiza el Catalogo de la tirpulacion...
    Actualiza.Active := False;
    Actualiza.SQL.Clear;
    Actualiza.SQL.Add('Update tripulacion set dFechaVigencia =:Fecha, sIdCategoria =:Categoria where sContrato =:Contrato and dFechaVigencia =:OldFecha and sIdCategoria =:OldCategoria');
    Actualiza.ParamByName('Contrato').AsString     := global_contrato;
    Actualiza.ParamByName('OldFecha').AsDate       := OldFecha;
    Actualiza.ParamByName('OldCategoria').AsString := OldCategoria;
    Actualiza.ParamByName('Fecha').AsDate          := Categorias.FieldValues['dFechaVigencia'];
    Actualiza.ParamByName('Categoria').AsString    := Categorias.FieldValues['sIdCategoria'];
    Actualiza.ExecSQL;

    //Ahora Se actualiza la tripulacion diaria...
    Actualiza.Active := False;
    Actualiza.SQL.Clear;
    Actualiza.SQL.Add('Update tripulaciondiaria set sIdCategoria =:Categoria where sContrato =:Contrato and sIdCategoria =:OldCategoria');
    Actualiza.ParamByName('Contrato').AsString     := global_contrato;
    Actualiza.ParamByName('OldCategoria').AsString := OldCategoria;
    Actualiza.ParamByName('Categoria').AsString    := Categorias.FieldValues['sIdCategoria'];
    Actualiza.ExecSQL;

    Actualiza.Destroy;
end;

procedure TfrmAdmonCatalogos.CategoriasBeforeDelete(DataSet: TDataSet);
var
    BuscaCat : TZReadOnlyQuery;
begin
    BuscaCat := TZReadOnlyQuery.Create(self);
    BuscaCat.Connection := connection.zConnection ;

    BuscaCat.Active := False;
    BuscaCat.SQL.Clear;
    BuscaCat.SQL.Add('Select * from tripulacion where sContrato =:Contrato and dFechaVigencia =:Fecha and sIdCategoria =:Categoria');
    BuscaCat.ParamByName('Contrato').AsString  := global_contrato;
    BuscaCat.ParamByName('Fecha').AsDate       := Categorias.FieldValues['dFechaVigencia'];
    BuscaCat.ParamByName('Categoria').AsString := Categorias.FieldValues['sIdCategoria'];
    BuscaCat.Open;

    if BuscaCat.RecordCount > 0 then
    begin
        messageDLG('La Categoria Contiene Personal de Tripulacion. Favor de Verificar!', mtInformation, [mbOk], 0);
        Abort;
    end;
end;

procedure TfrmAdmonCatalogos.CategoriasBeforeEdit(DataSet: TDataSet);
begin                 
     OldFecha     := Categorias.FieldValues['dFechaVigencia'];
     OldCategoria := Categorias.FieldValues['sIdCategoria'];
end;

procedure TfrmAdmonCatalogos.CategoriasBeforePost(DataSet: TDataSet);
var
    BuscaCat : TZReadOnlyQuery;
begin
    BuscaCat := TZReadOnlyQuery.Create(self);
    BuscaCat.Connection := connection.zConnection ;

    if OldCategoria <> Categorias.FieldValues['sIdCategoria'] then
    begin
        BuscaCat.Active := False;
        BuscaCat.SQL.Clear;
        BuscaCat.SQL.Add('Select sIdCategoria from categorias where sIdCategoria =:Categoria');
        BuscaCat.ParamByName('Categoria').AsString := Categorias.FieldValues['sIdCategoria'];
        BuscaCat.Open;

        if BuscaCat.RecordCount > 0 then
        begin
            messageDLG('El Id de la Categoria Ya Existe, Favor de Verificar!', mtInformation, [mbOk], 0);
            if Categorias.State = dsInsert then
               Categorias.Delete
            else
               Categorias.Cancel;
        end;
    end
end;

procedure TfrmAdmonCatalogos.CategoriasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Categorias', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.CategoriasNewRecord(DataSet: TDataSet);
begin
     Categorias.FieldValues['dFechaVigencia']  := Date;
     Categorias.FieldValues['sDescripcion']    := 'SIN DESCRIPCION';
     Categorias.FieldValues['sMiGrupoResumen'] := 'NINGUNO';
     Categorias.FieldValues['lPersonalAnexo']  := 'No';
end;

procedure TfrmAdmonCatalogos.CategoriasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Categorias', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.FasesxProyectoDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al eliminar Registro Fases de los proyectos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.FasesxProyectoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Administracion de Catalogos del Sistema', 'Al agregar Registro Fases de los proyectos', 0);
  abort;
end;

procedure TfrmAdmonCatalogos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  BotonPermiso1.Free;
  BotonPermiso2.Free;
  BotonPermiso3.Free;
  BotonPermiso4.Free;
  BotonPermiso5.Free;
  BotonPermiso6.Free;
  BotonPermiso7.Free;
  BotonPermiso8.Free;
  BotonPermiso9.Free;
  BotonPermiso10.Free;
  BotonPermiso11.Free;
  BotonPermiso12.Free;
  BotonPermiso13.Free;
  BotonPermiso14.Free;
  BotonPermiso15.Free;
  BotonPermiso16.Free;
  BotonPermiso17.Free;
  BotonPermiso18.Free;
  BotonPermiso19.Free;
  BotonPermiso20.Free;
  BotonPermiso21.Free;

  freeandnil(grid);
  action := cafree ;

  try
      frmActividadesAnexo2.ActualizaSentencias;
      frmActividadesAnexo2.WindowState := wsMaximized;
  Except

  end;
end;

procedure TfrmAdmonCatalogos.FormKeyPress(Sender: TObject; var Key: Char);
{ Manejador del evento OnKeyPress del Form }
{ También hay que establecer la propiedad KeyPreview del Form a True }
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if (not (ActiveControl is TDBGrid)) and (not (ActiveControl is TNextDBGrid)) and (not (ActiveControl is TjvDBCombobox)) and (not (ActiveControl is TjvDBLookUpCombo)) then { si no es un TDBGrid }
    begin
      showmessage(ActiveControl.ClassName);
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
      if (ActiveControl is TDBGrid) or (ActiveControl is TjvDBCombobox) or (ActiveControl is TjvDBLookUpCombo)  then   { si es un TDBGrid }
      begin
        if (ActiveControl is TDBGrid) then
        begin
          with TDBGrid(ActiveControl) do
            if selectedindex < (fieldcount -1) then
              selectedindex := selectedindex +1
            else
              selectedindex := 0;
        end
        else
        begin
          if pgCatalogos.ActivePageIndex=16 then
          begin
            with UGridAnexos do
            if selectedindex < (fieldcount -1) then
              selectedindex := selectedindex +1
            else
              selectedindex := 0;
          end;

          if pgCatalogos.ActivePageIndex=14 then
          begin
            with UGridMovimientos do
            if selectedindex < (fieldcount -1) then
              selectedindex := selectedindex +1
            else
              selectedindex := 0;
          end;


        end;

      end
        else
              if (ActiveControl is TNextDBGrid) then   { si es un TDBGrid }
              begin
                with TNextDBGrid(ActiveControl)  do
                  if SelectedColumn < (Columns.Count -1) then
                  begin
                    //ScrollBy(SelectedColumn -10,0);
                    SelectedColumn := SelectedColumn +1
                  end
                  else
                    SelectedColumn := 0;
              end


end;

procedure TfrmAdmonCatalogos.Inserta_pernocta(Sender: TObject);
var
    iGrid      : Integer ;
begin
    with GridBuscar.DataSource.DataSet do
    begin
        for iGrid := 0 To GridBuscar.SelectedRows.Count-1 do
        Begin
            GotoBookmark(pointer(GridBuscar.SelectedRows.Items[iGrid]));
            try
               pernoctas.FieldValues['sIdPernocta']  := zBuscar.FieldValues['sIdPernocta']
            Except
            end;
        end
    end;
    if GridBuscar.SelectedRows.Count = 0 then
       messageDLG('Seleccione una Pernocta!', mtInformation, [mbOk], 0)
    else
       myForm.Close;    
end;

end.


