unit frm_bitacoraOptativa;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB, UnitTBotonesPermisos,
  frm_barra, DBCtrls, Mask, Global, Menus, Buttons, Utilerias, ExtCtrls, UnitExcepciones,
  ImgList, frxClass, frxDBSet, RXDBCtrl, RxToolEdit, rxCurrEdit, Math, RxLookup, SysUtils, strUtils,
  ZAbstractRODataset, ZDataset, Newpanel, ZAbstractDataset, udbgrid, UnitValidacion, DateUtils, masUtilerias, 
  AdvOfficeButtons;

type
  TfrmBitacoraOptativa = class(TForm)
    Label1: TLabel;
    ds_bitacoradepersonal: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    ds_bitacoradeequipos: TDataSource;
    tdIdFecha: TDateTimePicker;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    ds_pernoctaequipo: TDataSource;
    ds_pernoctapersonal: TDataSource;
    ds_buscaobjeto: TDataSource;
    PopupPrincipal: TPopupMenu;
    Refresh1: TMenuItem; N3: TMenuItem;
    Copy1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    EliminarPerEq: TMenuItem;
    CargaAnterior: TMenuItem;
    N5: TMenuItem;
    ComentariosAdicionalesalaPartida1: TMenuItem;
    ActualizaCostos: TMenuItem;
    ordenesdetrabajo: TZReadOnlyQuery;
    BuscaObjeto: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    Paquete: TZReadOnlyQuery;
    SumPersonal: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    Plataformas: TZReadOnlyQuery;
    PernoctaPersonal: TZReadOnlyQuery;
    PernoctaEquipo: TZReadOnlyQuery;
    tNewGroupBox2: tNewGroupBox;
    Grid_Bitacora: TRxDBGrid;
    ds_bitacora: TDataSource;
    QryBitacora: TZReadOnlyQuery;
    QryBitacorasContrato: TStringField;
    QryBitacorasNumeroOrden: TStringField;
    QryBitacoraiIdDiario: TIntegerField;
    QryBitacorasIdTurno: TStringField;
    QryBitacorasWbs: TStringField;
    QryBitacorasNumeroActividad: TStringField;
    QryBitacorasIdTipoMovimiento: TStringField;
    QryBitacoradCantidad: TFloatField;
    QryBitacoradAvance: TFloatField;
    QryBitacoramDescripcion: TMemoField;
    QryBitacoralAlcance: TStringField;
    QryBitacorasDescripcion: TStringField;
    QryBitacorasMedida: TStringField;
    QryBitacoradVentaMN: TFloatField;
    QryBitacoradVentaDLL: TFloatField;
    QryBitacoradTotalMN: TCurrencyField;
    BitacoradePersonal: TZQuery;
    Panel: tNewGroupBox;
    BitacoradeEquipos: TZQuery;
    ListaObjeto: TRxDBGrid;
    QryBitacorasTurno: TStringField;
    BitacoradePersonalsContrato: TStringField;
    BitacoradePersonaldIdFecha: TDateField;
    BitacoradePersonaliIdDiario: TIntegerField;
    BitacoradePersonalsIdPersonal: TStringField;
    BitacoradePersonalsDescripcion: TStringField;
    BitacoradePersonalsIdPernocta: TStringField;
    BitacoradePersonalsIdPlataforma: TStringField;
    BitacoradePersonalsHoraInicio: TStringField;
    BitacoradePersonalsHoraFinal: TStringField;
    BitacoradePersonaldCantidad: TFloatField;
    BitacoradePersonalsFactor: TStringField;
    BitacoradePersonaldCostoMN: TFloatField;
    BitacoradePersonaldCostoDLL: TFloatField;
    BitacoradeEquipossContrato: TStringField;
    BitacoradeEquiposdIdFecha: TDateField;
    BitacoradeEquiposiIdDiario: TIntegerField;
    BitacoradeEquipossIdEquipo: TStringField;
    BitacoradeEquipossDescripcion: TStringField;
    BitacoradeEquipossIdPernocta: TStringField;
    BitacoradeEquipossHoraInicio: TStringField;
    BitacoradeEquipossHoraFinal: TStringField;
    BitacoradeEquiposdCantidad: TFloatField;
    BitacoradeEquipossFactor: TStringField;
    BitacoradeEquiposdCostoMN: TFloatField;
    BitacoradeEquiposdCostoDLL: TFloatField;
    BitacoradePersonaldMontoMN: TCurrencyField;
    BitacoradePersonaldMontoDLL: TCurrencyField;
    BitacoradeEquiposdMontoMN: TCurrencyField;
    BitacoradeEquiposdMontoDLL: TCurrencyField;
    Panel1: tNewGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    label232: TLabel;
    dTiempoExtraf: TRxCalcEdit;
    sHoraInicio: TMaskEdit;
    sHoraFinal: TMaskEdit;
    sNombre: TEdit;
    sPuesto: TEdit;
    Grid_TExtras: TDBGrid;
    frmBarra2: TfrmBarra;
    sNumeroFicha: TEdit;
    cmdBuscar: TButton;
    iempoExtras1: TMenuItem;
    qryTiemposExtras: TZQuery;
    dsTiemposExtras: TDataSource;
    GroupMotivos: tNewGroupBox;
    BitacoradePersonalmMotivos: TMemoField;
    tmMotivos: TDBMemo;
    BitacoradeMateriales: TZQuery;
    ds_bitacorademateriales: TDataSource;
    BitacoradeMaterialessContrato: TStringField;
    BitacoradeMaterialesdIdFecha: TDateField;
    BitacoradeMaterialesiIdDiario: TIntegerField;
    BitacoradeMaterialessWbs: TStringField;
    BitacoradeMaterialessIdMaterial: TStringField;
    BitacoradeMaterialesdCantidad: TFloatField;
    BitacoradeMaterialesdCostoMN: TFloatField;
    BitacoradeMaterialesdCostoDLL: TFloatField;
    BitacoradeMaterialesdMontoMN: TCurrencyField;
    BitacoradeMaterialesdMontoDLL: TCurrencyField;
    GrupoMateriales: tNewGroupBox;
    memDescribe: TMemo;
    BitacoradeMaterialessMedida: TStringField;
    BitacoradePersonaliItemOrden: TIntegerField;
    BitacoradeEquiposiItemOrden: TIntegerField;
    IngresarTotaldelaVigencia1: TMenuItem;
    BorrarlasCategoriasen01: TMenuItem;
    Label6: TLabel;
    Label8: TLabel;
    ds_sTipoPernocta: TDataSource;
    ZQrysTipoPernocta: TZReadOnlyQuery;
    BitacoradePersonalsTipopernocta: TStringField;
    BitacoradePersonalsAgrupaPersonal: TStringField;
    PageBitacora: TPageControl;
    pg_personal: TTabSheet;
    Label12: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    grid_bitacorapersonal: TDBGrid;
    tsIdPernocta: TRxDBLookupCombo;
    tsIdPlataforma: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    tdTotalPersonal: TCurrencyEdit;
    tsPaquete: TComboBox;
    btnPaquetePersonal: TBitBtn;
    CmbsTipoPernocta: TRxDBLookupCombo;
    pg_equipo: TTabSheet;
    Label3: TLabel;
    tsIdPernoctaEquipo: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    btnPaqueteEquipo: TBitBtn;
    tsPaqueteEquipo: TComboBox;
    Grid_BitacoradeEquipos: TDBGrid;
    tabMateriales: TTabSheet;
    GridMateriales: TDBGrid;
    pg_pernocta: TTabSheet;
    Grid_BitacoradePernocta: TDBGrid;
    ZCuentas: TZQuery;
    BitacoradePernocta: TZQuery;
    ds_bitacoradepernocta: TDataSource;
    BitacoradePernoctasContrato: TStringField;
    BitacoradePernoctadIdFecha: TDateField;
    BitacoradePernoctasIdCuenta: TStringField;
    BitacoradePernoctadCantidad: TFloatField;
    ZCuentassIdCuenta: TStringField;
    ZCuentassDescripcion: TStringField;
    BitacoradePernoctadecripcion: TStringField;
    BitacoradePernoctaiIdDiario: TIntegerField;
    BitacoradeMaterialesstrDesc: TStringField;
    BitacoradeMaterialessDescripcion: TStringField;
    BitacoradeMaterialessAnexo: TStringField;
    BitacoradePersonallAplicaPernocta: TStringField;
    QryBitacorasDescripcionPartida: TStringField;
    BitacoradeEquipossolicitado: TFloatField;
    BitacoradePersonalsolicitado: TFloatField;
    BitacoradePersonaldSolicitado: TFloatField;
    BitacoradeEquiposdSolicitado: TFloatField;
    GroupBox2: TGroupBox;
    tdTotalEquipo: TCurrencyEdit;
    SumEquipo: TZReadOnlyQuery;
    QryBitacoraGerencial: TStringField;
    QryBitacoralRepitePersonal: TStringField;
    chkConsidera: TAdvOfficeCheckBox;
    optConsidera: TMenuItem;
    QryBitacorasHoraInicio: TStringField;
    QryBitacorasHoraFinal: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure ActualizaPersonal();
    procedure ActualizaEquipos();
    procedure ActualizaPernocta(); //********************BRITO 01-12-10**********************
    procedure ActualizaMateriales();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure btnPaquetePersonalClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsIdPernoctaEnter(Sender: TObject);
    procedure tsIdPernoctaExit(Sender: TObject);
    procedure tsIdPernoctaEquipoEnter(Sender: TObject);
    procedure tsIdPernoctaEquipoExit(Sender: TObject);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure ListaObjetoExit(Sender: TObject);
    procedure grid_bitacoraEnter(Sender: TObject);
    procedure Grid_BitacoraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure Grid_BitacoraGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CargaAnteriorClick(Sender: TObject);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
    procedure BitacoradePersonalAfterDelete(DataSet: TDataSet);
    procedure BitacoradePersonalAfterInsert(DataSet: TDataSet);
    procedure EliminarPerEqClick(Sender: TObject);
    procedure BitacoradeEquiposCalcFields(DataSet: TDataSet);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure ComentariosAdicionalesalaPartida1Click(Sender: TObject);
    procedure ActualizaCostosClick(Sender: TObject);
    procedure BitacoradePersonalBeforeDelete(DataSet: TDataSet);
    procedure BitacoradeEquiposBeforeDelete(DataSet: TDataSet);
    procedure QryBitacoraCalcFields(DataSet: TDataSet);
    procedure BitacoradePersonalAfterPost(DataSet: TDataSet);
    procedure BitacoradePersonalBeforePost(DataSet: TDataSet);
    procedure BitacoradePersonalsIdPersonalChange(Sender: TField);
    procedure BitacoradePersonalAfterEdit(DataSet: TDataSet);
    procedure QryBitacoraAfterScroll(DataSet: TDataSet);
    procedure BitacoradeEquiposAfterEdit(DataSet: TDataSet);
    procedure BitacoradeEquiposAfterInsert(DataSet: TDataSet);
    procedure BitacoradeEquiposAfterPost(DataSet: TDataSet);
    procedure BitacoradeEquiposBeforePost(DataSet: TDataSet);
    procedure BitacoradeEquipossIdEquipoChange(Sender: TField);
    procedure btnPaqueteEquipoClick(Sender: TObject);
    function lExisteEquipo(sEquipo: string): Boolean;
    procedure BitacoradePersonalCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PanelExit(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure iempoExtras1Click(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure cmdBuscarClick(Sender: TObject);
    procedure sHoraFinalExit(Sender: TObject);
    procedure sHoraFinalKeyPress(Sender: TObject; var Key: Char);
    procedure sHoraInicioEnter(Sender: TObject);
    procedure sHoraInicioExit(Sender: TObject);
    procedure sHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure sNombreEnter(Sender: TObject);
    procedure sNombreExit(Sender: TObject);
    procedure sNumeroFichaEnter(Sender: TObject);
    procedure sNumeroFichaExit(Sender: TObject);
    procedure sNumeroFichaKeyPress(Sender: TObject; var Key: Char);
    procedure sPuestoEnter(Sender: TObject);
    procedure sPuestoExit(Sender: TObject);
    procedure sPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure dTiempoExtrafEnter(Sender: TObject);
    procedure dTiempoExtrafExit(Sender: TObject);
    procedure dTiempoExtrafKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure BitacoradePersonalAfterScroll(DataSet: TDataSet);
    procedure qryTiemposExtrasAfterScroll(DataSet: TDataSet);
    procedure grid_bitacorapersonalDblClick(Sender: TObject);
    procedure BitacoradeMaterialesCalcFields(DataSet: TDataSet);
    procedure BitacoradeMaterialesAfterEdit(DataSet: TDataSet);
    procedure BitacoradeMaterialesAfterInsert(DataSet: TDataSet);
    procedure BitacoradeMaterialesBeforeDelete(DataSet: TDataSet);
    procedure BitacoradeMaterialesBeforePost(DataSet: TDataSet);
    procedure BitacoradeMaterialessIdMaterialChange(Sender: TField);
    procedure Vigencias();
    procedure FormCreate(Sender: TObject);
    procedure GridMaterialesDblClick(Sender: TObject);
    procedure memDescribeDblClick(Sender: TObject);
    procedure IngresarTotaldelaVigencia1Click(Sender: TObject);
    procedure BorrarlasCategoriasen01Click(Sender: TObject);
    procedure tmMotivosDblClick(Sender: TObject);
    procedure BitacoradePersonalBeforeEdit(DataSet: TDataSet);
    function ValidaBarco(dParamPersonal: string): boolean;
    procedure BitacoradePernoctaAfterEdit(DataSet: TDataSet);
    procedure BitacoradePernoctaAfterInsert(DataSet: TDataSet);
    procedure BitacoradePernoctaBeforeDelete(DataSet: TDataSet);
    procedure BitacoradePernoctaBeforePost(DataSet: TDataSet);
    procedure BitacoradePernoctasIdCuentaChange(Sender: TField);
    procedure Grid_BitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_BitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoraTitleClick(Column: TColumn);
    procedure grid_bitacorapersonalMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_bitacorapersonalMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grid_bitacorapersonalTitleClick(Column: TColumn);
    procedure Grid_BitacoradeEquiposMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoradeEquiposMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoradeEquiposTitleClick(Column: TColumn);
    procedure GridMaterialesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridMaterialesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridMaterialesTitleClick(Column: TColumn);
    procedure Grid_BitacoradePernoctaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoradePernoctaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoradePernoctaTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure BitacoradePernoctaBeforeOpen(DataSet: TDataSet);
    procedure dTiempoExtrafChange(Sender: TObject);
    procedure BitacoradeEquiposAfterScroll(DataSet: TDataSet);
    procedure optConsideraClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacoraOptativa: TfrmBitacoraOptativa;
  sPaquete: string;
  sPernocta: string;
  sPlataforma: string;
  Categoria: string;
  Embarcacion: string;
  lBorra, BanTE: Boolean;
  solicitadop, solicitadoe, dHorasExtras: Double;
  d1, d2, d3, d4, sDescripcion: string;
  iFolioOficio: integer;
  sTipoOficio: string;
  dFechaAnterior, dFechaActual, dParamFecha: TDate;
  Bandera, Encontrado, BandTE: Boolean;
  total, Busqueda, Indicar: Byte;
  stipoPersonal, DuplicaPart: string;
  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  utgrid3: ticdbgrid;
  utgrid4: ticdbgrid;
  utgrid5: ticdbgrid;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  BTraerAnt: Boolean;
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

function TfrmBitacoraOptativa.lExisteEquipo(sEquipo: string): Boolean;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('select sContrato from equipos where sContrato = :Contrato and sIdEquipo = :Equipo');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Equipo').Value := sEquipo;
  connection.qryBusca.Open;
  if connection.qryBusca.RecordCount > 0 then
    lExisteEquipo := True
  else
    lExisteEquipo := False
end;

procedure TfrmBitacoraOptativa.FormShow(Sender: TObject);
var
  qryPaquetes: tZReadOnlyQuery;
  iDiario: Integer;
  sIdDepartamento: string;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', BitacoradePersonal);
  BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', BitacoradeEquipos);
  UtGrid := TicdbGrid.create(grid_bitacora);
  UtGrid2 := TicdbGrid.create(grid_bitacorapersonal);
  UtGrid3 := TicdbGrid.create(grid_bitacoradeequipos);
  UtGrid4 := TicdbGrid.create(gridmateriales);
  UtGrid5 := TicdbGrid.create(grid_bitacoradepernocta);

 { sNumeroFicha.Enabled := False; }
  sNombre.Enabled := false;
  sPuesto.Enabled := false;
  sHoraInicio.Enabled := false;
  sHoraFinal.Enabled := false;
  dTiempoExtraf.Enabled := false;

  tdIdFecha.Date := date;
  sPernocta := '';
  sPlataforma := '';
  connection.configuracion.refresh;

  {Buscamos la embarcaicon principal para efectos de captura..}
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
    'where sContrato =:Contrato and dFechaInicio <= :Fecha and dFechaFinal >=:Fecha order by dFechaInicio');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate := dParamFecha;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
    Embarcacion := connection.QryBusca.FieldValues['sIdEmbarcacion']
  else
    Embarcacion := '';

  // Genero los Combos de los paquetes de personal
  tsPaquete.Items.Clear;
  qryPaquetes := tzReadOnlyQuery.Create(self);
  qryPaquetes.Connection := connection.zConnection;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').DataType := ftString;
  qryPaquetes.Params.ParamByName('contrato').Value := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaquete.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;

  // Genero los combos de los paquetes de equipos ...
  tsPaqueteEquipo.Items.Clear;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_e Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').DataType := ftString;
  qryPaquetes.Params.ParamByName('contrato').Value := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaqueteEquipo.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;

  qryPaquetes.Destroy;

  BitacoradePersonal.Active := False;
  BitacoradeEquipos.Active := False;


  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear;
  if True then
    if global_grupo = 'INTEL-CODE' then
      OrdenesdeTrabajo.SQL.Add('Select  ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
        'from ordenesdetrabajo ot where ot.sContrato =:Contrato And ot.cIdStatus =:Status order by ot.sNumeroOrden')
    else
      OrdenesdeTrabajo.SQL.Add('Select  ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
        'from ordenesdetrabajo ot ' +
        'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato ' +
        'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
        'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
        'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden');
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
  OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString;
  OrdenesdeTrabajo.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
  if global_grupo <> 'INTEL-CODE' then
  begin
    OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('Usuario').Value := Global_Usuario;
  end;
  OrdenesdeTrabajo.Open;

  if OrdenesdeTrabajo.RecordCount > 0 then
    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];


  qryBitacora.Active := False;
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := convenio_reporte;
  qryBitacora.Params.ParamByName('orden').DataType := ftString;
  if global_orden = '' then
    qryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue
  else
    qryBitacora.Params.ParamByName('orden').Value := global_orden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := global_fecha;
  qryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  qryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := global_Turno_reporte;
  qryBitacora.Open;

  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaPernocta(); //********************BRITO 01-12-10**********************
  ActualizaMateriales();

  tdTotalPersonal.Value := 0;
  if QryBitacora.RecordCount > 0 then
  begin
    SumPersonal.Active := False;
    SumPersonal.Params.ParamByName('Contrato').DataType := ftString;
    SumPersonal.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    SumPersonal.Params.ParamByName('Fecha').DataType := ftDate;
    SumPersonal.Params.ParamByName('Fecha').Value := global_fecha;
    SumPersonal.Params.ParamByName('Diario').DataType := ftInteger;
    SumPersonal.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
    SumPersonal.Open;
    if SumPersonal.RecordCount > 0 then
      tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
    else
      tdTotalPersonal.Value := 0;
  end
  else //soad -> Implementacion del comentario en automatico.. tomando en cuenta el IdDiario ...
  begin //******************************************************************************************
    if MessageDlg('No existe un Comentario para cargar Personal/Equipo/Materiales, ¿Desea que el sistema Cree uno en Automatico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
        global_inicio := global_inicio + 8000;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades where sContrato = :contrato and ' +
        'dIdFecha = :fecha And iIdDiario >= :Inicio And iIdDiario <= :Final Group By sContrato ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := global_fecha;
      connection.zCommand.Params.ParamByName('Inicio').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Inicio').Value := global_inicio;
      connection.zCommand.Params.ParamByName('Final').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Final').Value := global_final;
      connection.zCommand.Open;
      if connection.zCommand.FieldByName('TotalDiario').IsNull then
        iDiario := global_inicio + 1
      else
        iDiario := connection.zCommand.FieldValues['TotalDiario'] + 1;

      sIdDepartamento := global_depto;
      if sIdDepartamento = '' then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('SELECT  sIdDepartamento FROM departamentos limit 1');
        connection.zCommand.Open;
        if connection.zCommand.RecordCount > 0 then
          sIdDepartamento := connection.zCommand.FieldByName('sIdDepartamento').AsString
        else
          sIdDepartamento := 'OP';

      end;


      BuscaObjeto.Active := false;
      BuscaObjeto.SQL.Clear;
      BuscaObjeto.SQL.Add('SET FOREIGN_KEY_CHECKS = 1');
      BuscaObjeto.ExecSQL;

      BuscaObjeto.Active := False;
      BuscaObjeto.SQL.Clear;
      BuscaObjeto.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
        ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion, sIsometrico, mNotas ) ' +
        ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :Wbs, :actividad, :tipo, :inicio, :final, :avance, :cantidad, :descripcion, :isometrico, "" )');
      BuscaObjeto.Params.ParamByName('contrato').DataType := ftString;
      BuscaObjeto.Params.ParamByName('contrato').value := param_Global_Contrato;
      BuscaObjeto.Params.ParamByName('fecha').DataType := ftDate;
      BuscaObjeto.Params.ParamByName('fecha').value := global_fecha;
      BuscaObjeto.Params.ParamByName('diario').DataType := ftInteger;
      BuscaObjeto.Params.ParamByName('diario').value := iDiario;
      BuscaObjeto.Params.ParamByName('turno').DataType := ftString;
      BuscaObjeto.Params.ParamByName('turno').value := global_turno_reporte;
      BuscaObjeto.Params.ParamByName('depto').DataType := ftString;
      if sIdDepartamento = '' then
        BuscaObjeto.Params.ParamByName('depto').value := 'OP'
      else
        BuscaObjeto.Params.ParamByName('depto').value := sIdDepartamento;
      BuscaObjeto.Params.ParamByName('orden').DataType := ftString;
      if global_orden = '' then
        BuscaObjeto.Params.ParamByName('orden').value := tsNumeroOrden.KeyValue
      else
        BuscaObjeto.Params.ParamByName('orden').value := global_orden;
      BuscaObjeto.Params.ParamByName('wbs').DataType := ftString;
      BuscaObjeto.Params.ParamByName('wbs').value := NULL;
      BuscaObjeto.Params.ParamByName('actividad').DataType := ftString;
      BuscaObjeto.Params.ParamByName('actividad').value := '';
      BuscaObjeto.Params.ParamByName('tipo').DataType := ftString;
      BuscaObjeto.Params.ParamByName('tipo').value := 'N';
      BuscaObjeto.Params.ParamByName('avance').DataType := ftFloat;
      BuscaObjeto.Params.ParamByName('avance').value := '0';
      BuscaObjeto.Params.ParamByName('cantidad').DataType := ftFloat;
      BuscaObjeto.Params.ParamByName('cantidad').value := '0';
      BuscaObjeto.Params.ParamByName('inicio').DataType := ftString;
      BuscaObjeto.Params.ParamByName('inicio').value := '00:00';
      BuscaObjeto.Params.ParamByName('final').DataType := ftString;
      BuscaObjeto.Params.ParamByName('final').value := '00:00';
      BuscaObjeto.Params.ParamByName('descripcion').DataType := ftMemo;
      BuscaObjeto.Params.ParamByName('descripcion').value := 'COMENTARIO CREADO POR EL SISTEMA';
      BuscaObjeto.Params.ParamByName('Isometrico').DataType := ftString;
      BuscaObjeto.Params.ParamByName('Isometrico').value := '';
      BuscaObjeto.ExecSQL;

//      BuscaObjeto.Active := false;
//      BuscaObjeto.SQL.Clear;
//      BuscaObjeto.SQL.Add('SET FOREIGN_KEY_CHECKS = 1');
//      BuscaObjeto.ExecSQL;

           //ACTUALIZO LA INFORMACION DEL GRID...
      qryBitacora.Active := False;
      qryBitacora.Params.ParamByName('contrato').DataType := ftString;
      qryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
      qryBitacora.Params.ParamByName('convenio').DataType := ftString;
      qryBitacora.Params.ParamByName('convenio').Value := convenio_reporte;
      qryBitacora.Params.ParamByName('orden').DataType := ftString;
      if global_orden = '' then
        qryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue
      else
        qryBitacora.Params.ParamByName('orden').Value := global_orden;
      qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
      qryBitacora.Params.ParamByName('fecha').Value := global_fecha;
      qryBitacora.Params.ParamByName('Alcance').DataType := ftString;
      qryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
      qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
      qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
      qryBitacora.Params.ParamByName('Turno').DataType := ftString;
      qryBitacora.Params.ParamByName('Turno').Value := global_Turno_reporte;
      qryBitacora.Open;
    end;
  end;
  Plataformas.Active := False;
  Plataformas.Open;

  PernoctaPersonal.Active := False;
  PernoctaPersonal.Open;

  PernoctaEquipo.Active := False;
  PernoctaEquipo.Open;

  ZQrysTipoPernocta.Active := False;
  ZQrysTipoPernocta.Open;

  sPaquete := '';

  if global_orden <> '' then
  begin
    tsNumeroOrden.KeyValue := global_orden;
    tdIdFecha.Date := global_fecha;

    lBorra := False;
    if global_grupo = 'INTEL-CODE' then
    begin
      tdIdFecha.Enabled := True;
      tsNumeroOrden.Enabled := True;
      lBorra := True
    end
    else
    begin
      tdIdFecha.Enabled := False;
      tsNumeroOrden.Enabled := False;
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
      ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
      ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString;
      ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
      ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
          lBorra := True
    end;
    Grid_Bitacora.SetFocus;
  end
  else
  begin
    tdIdFecha.Enabled := True;
    tsNumeroOrden.Enabled := True;
    lBorra := False;
    if global_grupo = 'INTEL-CODE' then
    begin
      tdIdFecha.Enabled := True;
      tsNumeroOrden.Enabled := True;
      lBorra := True
    end
    else
    begin
      tdIdFecha.Enabled := False;
      tsNumeroOrden.Enabled := False;

      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
      ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
      ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString;
      ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
      ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
          lBorra := True
    end;
    tdIdFecha.SetFocus
  end;

end;

procedure TfrmBitacoraOptativa.frmBarra2btnAddClick(Sender: TObject);
begin
  frmBarra2.btnAddClick(Sender);
  sNumeroFicha.Enabled := True;
  sHoraInicio.Enabled := True;
  sHoraFinal.Enabled := True;
  dTiempoExtraf.Enabled := True;
  cmdBuscar.Enabled := True;
  qryTiemposExtras.Append;
  sNumeroFicha.SetFocus;
end;

procedure TfrmBitacoraOptativa.frmBarra2btnDeleteClick(Sender: TObject);
begin
  try
    qryTiemposExtras.Delete;
    sNumeroFicha.Text := '';
    sNombre.Text := '';
    sPuesto.Text := '';
    sHoraInicio.Text := '';
    sHoraFinal.Text := '';
    dTiempoExtraf.Text := '';
  finally
  end;
end;

procedure TfrmBitacoraOptativa.frmBarra2btnEditClick(Sender: TObject);
begin
  dHorasExtras := qryTiemposExtras.FieldValues['dTiempoExtra'];
  sHoraInicio.Enabled := True;
  sHoraFinal.Enabled := True;
  dTiempoExtraf.Enabled := True;
  sNumeroFicha.Enabled := True;
  QryTiemposExtras.Edit;
  frmBarra2.btnEditClick(Sender);
end;

procedure TfrmBitacoraOptativa.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  Panel1.Visible := False;
end;

procedure TfrmBitacoraOptativa.frmBarra2btnPostClick(Sender: TObject);

var
  lContinuar: Boolean;
  dHorasAcumuladas: Double;
  HorasExtras: Double;
  Nombre: string;
begin
 // HorasExtras := strToFloat(dTiempoExtraf.Text) ;
 // Nombre      := sNombre.Text ;
  lContinuar := False;
 // frmBarra2.btnPostClick(Sender);
         {1. buscar si existen tiempos extras registrados para esta actividad(Personal)}
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sum(dTiempoExtra) as dHorasExtras from bitacoradetiemposextras where ' +
    '  sContrato=:Contrato and dIdFecha=:Fecha and iIdDiario=:Diario and sIdPersonal = :Personal');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.QryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
  connection.QryBusca.Params.ParamByName('Diario').DataType := ftInteger;
  connection.QryBusca.Params.ParamByName('Diario').Value := BitacoradePersonal.FieldValues['iIdDiario'];
  connection.QryBusca.Params.ParamByName('Personal').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
  connection.QryBusca.Open;
  lContinuar := False;
  if connection.QryBusca.FieldValues['dHorasExtras'] <> NULL then
    dHorasAcumuladas := StrToFloat(connection.QryBusca.FieldValues['dHorasExtras']);

  if OpcButton = 'Edit' then
    dHorasAcumuladas := dHorasAcumuladas - dHorasExtras;

  dHorasAcumuladas := dHorasAcumuladas + strTofloat(dTiempoExtraf.text);

  if BitacoradePersonal.FieldValues['dCantidad'] >= dHorasAcumuladas then
    lContinuar := True;

  if sNombre.Text = '' then
    ShowMessage('El Empleado No Existe!!')
  else
    if not lContinuar then
      ShowMessage('Probablemente se ha excedido de las horas extras disponibles, corrija la cantidad de horas extras!!')
    else
    begin
      if OpcButton <> 'Edit' then
      begin
        qryTiemposExtras.FieldValues['sContrato'] := BitacoradePersonal.FieldValues['sContrato'];
        qryTiemposExtras.FieldValues['dIdFecha'] := BitacoradePersonal.FieldValues['dIdFecha'];
        qryTiemposExtras.FieldValues['iIdDiario'] := BitacoradePersonal.FieldValues['iIdDiario'];
        qryTiemposExtras.FieldValues['sIdPersonal'] := BitacoradePersonal.FieldValues['sIdPersonal'];
        qryTiemposExtras.FieldValues['sNumeroFicha'] := sNumeroFicha.Text;
        qryTiemposExtras.FieldValues['sNombre'] := sNombre.Text;
        qryTiemposExtras.FieldValues['sPuesto'] := sPuesto.text;
      end;
      qryTiemposExtras.FieldValues['dTiempoExtra'] := dTiempoExtraf.Text;
      qryTiemposExtras.FieldValues['sHoraInicio'] := sHoraInicio.Text;
      qryTiemposExtras.FieldValues['sHoraFinal'] := sHoraFinal.Text;
      qryTiemposExtras.Post;

      sNumeroFicha.Enabled := False;
      sHoraInicio.Enabled := False;
      sHoraFinal.Enabled := False;
      dTiempoExtraf.Enabled := True;
      cmdBuscar.Enabled := False;
      frmBarra2.btnCancel.Click;
    end;
end;

procedure TfrmBitacoraOptativa.frmBarra2btnRefreshClick(Sender: TObject);
begin
  qryTiemposExtras.Refresh;
end;

procedure TfrmBitacoraOptativa.GridMaterialesDblClick(Sender: TObject);
begin
  memDescribe.Text := GridMateriales.Fields[2].Value + '  ';
  GrupoMateriales.Visible := True;
end;

procedure TfrmBitacoraOptativa.GridMaterialesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid4.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacoraOptativa.GridMaterialesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid4.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacoraOptativa.GridMaterialesTitleClick(Column: TColumn);
begin
  UtGrid4.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoradeEquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid3.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoradeEquiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid3.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoradeEquiposTitleClick(
  Column: TColumn);
begin
  UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoradePernoctaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_BitacoradePernocta.datasource.DataSet.IsEmpty = false then
    if grid_BitacoradePernocta.DataSource.DataSet.RecordCount > 0 then
      UtGrid5.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoradePernoctaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_BitacoradePernocta.datasource.DataSet.IsEmpty = false then
    if grid_BitacoradePernocta.DataSource.DataSet.RecordCount > 0 then
      UtGrid5.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoradePernoctaTitleClick(
  Column: TColumn);
begin
  if grid_BitacoradePernocta.datasource.DataSet.IsEmpty = false then
    if grid_BitacoradePernocta.DataSource.DataSet.RecordCount > 0 then
      UtGrid5.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraOptativa.tdIdFechaExit(Sender: TObject);
begin
  lBorra := False;
  if tsNumeroOrden.Text <> '' then
  begin
    if global_grupo = 'INTEL-CODE' then
      lBorra := True
    else
    begin
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
      ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
      ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString;
      ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
      ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
          MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0)
        else
          lBorra := True;
    end
  end;

  qryBitacora.Active := False;
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := convenio_reporte;
  qryBitacora.Params.ParamByName('orden').DataType := ftString;
  qryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := global_fecha;
  qryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  qryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  qryBitacora.Open;

  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaPernocta(); //********************BRITO 01-12-10**********************
  ActualizaMateriales();

  tdTotalPersonal.Value := 0;
  if QryBitacora.RecordCount > 0 then
  begin
    SumPersonal.Active := False;
    SumPersonal.Params.ParamByName('Contrato').DataType := ftString;
    SumPersonal.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    SumPersonal.Params.ParamByName('Fecha').DataType := ftDate;
    SumPersonal.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    SumPersonal.Params.ParamByName('Diario').DataType := ftInteger;
    SumPersonal.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
    SumPersonal.Open;
    if SumPersonal.RecordCount > 0 then
      tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
    else
      tdTotalPersonal.Value := 0;
  end;

  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaPernocta(); //********************BRITO 01-12-10**********************
  ActualizaMateriales();

  tdIdFecha.Color := global_color_salida;
  Bandera := False;
  Vigencias();
end;

procedure TfrmBitacoraOptativa.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden.SetFocus
end;


procedure TfrmBitacoraOptativa.tmMotivosDblClick(Sender: TObject);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('update bitacoradepersonal set mMotivos = :Descripcion ' +
    'where sContrato = :Contrato And dIdFecha = :fecha And sIdPersonal = :personal');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
  Connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  Connection.qryBusca.Params.ParamByName('personal').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('personal').Value := BitacoradePersonalsIdPersonal.Text;
  Connection.qryBusca.Params.ParamByName('Descripcion').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Descripcion').Value := tmMotivos.Text;
  Connection.qryBusca.ExecSQL;
  GroupMotivos.Visible := False;
end;

procedure TfrmBitacoraOptativa.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Grid_Bitacora.SetFocus
end;

procedure TfrmBitacoraOptativa.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdPernocta.SetFocus
end;

procedure TfrmBitacoraOptativa.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdPlataforma.SetFocus
end;


procedure TfrmBitacoraOptativa.ActualizaPersonal();
begin
  BitacoradePersonal.Active := False;
  BitacoradePersonal.Params.ParamByName('contrato').DataType := ftString;
  BitacoradePersonal.Params.ParamByName('contrato').Value := param_global_contrato;
  BitacoradePersonal.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradePersonal.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradePersonal.Params.ParamByName('Diario').DataType := ftInteger;
  if QryBitacora.RecordCount > 0 then
    BitacoradePersonal.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario']
  else
    BitacoradePersonal.Params.ParamByName('Diario').Value := -1;
  BitacoradePersonal.Open;
  btnPaquetePersonal.Enabled := True;
end;

procedure TfrmBitacoraOptativa.ActualizaEquipos();
begin
  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Params.ParamByName('contrato').DataType := ftString;
  BitacoradeEquipos.Params.ParamByName('contrato').Value := param_global_contrato;
  BitacoradeEquipos.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradeEquipos.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradeEquipos.Params.ParamByName('Diario').DataType := ftInteger;
  if QryBitacora.RecordCount > 0 then
    BitacoradeEquipos.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario']
  else
    BitacoradeEquipos.Params.ParamByName('Diario').Value := -1;
  BitacoradeEquipos.Open;
  btnPaqueteEquipo.Enabled := True;
end;

//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.ActualizaPernocta();
begin
  BitacoradePernocta.Active := False;
  BitacoradePernocta.Params.ParamByName('contrato').DataType := ftString;
  BitacoradePernocta.Params.ParamByName('contrato').Value := param_global_contrato;
  BitacoradePernocta.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradePernocta.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradePernocta.Params.ParamByName('Diario').DataType := ftString;
  if QryBitacora.RecordCount > 0 then
    BitacoradePernocta.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario']
  else
    BitacoradePernocta.Params.ParamByName('Diario').Value := -1;
  BitacoradePernocta.Open;
      //btnPaquetePernocta.Enabled := True ;
end;
//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.ActualizaMateriales();
begin
  BitacoradeMateriales.Active := False;
  BitacoradeMateriales.Params.ParamByName('contrato').DataType := ftString;
  BitacoradeMateriales.Params.ParamByName('contrato').Value := param_global_contrato;
  BitacoradeMateriales.Params.ParamByName('fecha').DataType := ftDate;
  BitacoradeMateriales.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  BitacoradeMateriales.Params.ParamByName('Diario').DataType := ftInteger;
  if QryBitacora.RecordCount > 0 then
    BitacoradeMateriales.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario']
  else
    BitacoradeMateriales.Params.ParamByName('Diario').Value := -1;
  BitacoradeMateriales.Open;
end;



procedure TfrmBitacoraOptativa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.Destroy;
  utgrid2.Destroy;
  utgrid3.Destroy;
  utgrid4.Destroy;
  utgrid5.Destroy;
  BotonPermiso.free;
  BotonPermiso1.free;
  BitacoradePersonal.Cancel;
  BitacoradeEquipos.Cancel;
  action := cafree;
end;

procedure TfrmBitacoraOptativa.FormCreate(Sender: TObject);
begin
  Bandera := True;
  Vigencias();
  BTraerAnt := False;
end;

procedure TfrmBitacoraOptativa.tsNumeroOrdenExit(Sender: TObject);
begin
  tdTotalPersonal.Value := 0;
  sPernocta := '';
  sPlataforma := '';

  lBorra := False;
  if tsNumeroOrden.Text <> '' then
  begin
    if global_grupo = 'INTEL-CODE' then
      lBorra := True
    else
    begin
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
      ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
      ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString;
      ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
      ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
          MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0)
        else
          lBorra := True;
    end;

    QryBitacora.Active := False;
    qryBitacora.Params.ParamByName('contrato').DataType := ftString;
    qryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
    qryBitacora.Params.ParamByName('convenio').DataType := ftString;
    qryBitacora.Params.ParamByName('convenio').Value := convenio_reporte;
    qryBitacora.Params.ParamByName('orden').DataType := ftString;
    qryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
    qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
    qryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    qryBitacora.Params.ParamByName('Alcance').DataType := ftString;
    qryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
    qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
    qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    QryBitacora.Open;

    ActualizaPersonal();
    ActualizaEquipos();
    ActualizaPernocta(); //********************BRITO 01-12-10**********************
    ActualizaMateriales();

    if QryBitacora.RecordCount > 0 then
    begin
      SumPersonal.Active := False;
      SumPersonal.Params.ParamByName('Contrato').DataType := ftString;
      SumPersonal.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      SumPersonal.Params.ParamByName('Fecha').DataType := ftDate;
      SumPersonal.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      SumPersonal.Params.ParamByName('Diario').DataType := ftInteger;
      SumPersonal.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
      SumPersonal.Open;
      if SumPersonal.RecordCount > 0 then
        tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
      else
        tdTotalPersonal.Value := 0;
    end;
  end;
  tsNumeroOrden.Color := global_color_salida
end;



procedure TfrmBitacoraOptativa.btnPaquetePersonalClick(Sender: TObject);
var
  sNumeroPaquete: string;
  lContinua: Boolean;
  iEquiposSeguridad: Integer;
  QryPaquete: tZReadOnlyQuery;
begin
  if sPernocta = '' then
    if connection.configuracion.FieldValues['sIdPernocta'] = '' then
      sPernocta := OrdenesdeTrabajo.FieldValues['sIdPernocta']
    else
      sPernocta := connection.configuracion.FieldValues['sIdPernocta'];
  if sPlataforma = '' then
    sPlataforma := OrdenesdeTrabajo.FieldValues['sIdPlataforma'];

  sNumeroPaquete := tsPaquete.Text;

  if sNumeroPaquete <> '' then
  begin
    QryPaquete := tzReadOnlyQuery.Create(Self);
    QryPaquete.Connection := connection.zconnection;
        // por ultimo si es paquete normal
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('select p.sIdPersonal, p.dCantidad from paquetesdepersonal p ' +
      'inner join personal p2 on (p.sContrato = p2.sContrato and p.sIdPersonal = p2.sIdPersonal) ' +
      'where p.sContrato = :contrato And p.sNumeroPaquete = :paquete order by p.sIdPersonal');
    QryPaquete.Params.ParamByName('contrato').DataType := ftString;
    QryPaquete.Params.ParamByName('contrato').Value := param_global_contrato;
    QryPaquete.Params.ParamByName('paquete').DataType := ftString;
    QryPaquete.Params.ParamByName('paquete').Value := sNumeroPaquete;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      connection.qryBusca2.Active := False;
      connection.qryBusca2.SQL.Clear;
      connection.qryBusca2.SQL.Add('Select sIdPernocta, sIdPlataforma from paquetes_p where sContrato = :contrato And sNumeroPaquete = :paquete');
      connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
      connection.qryBusca2.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.qryBusca2.Params.ParamByName('paquete').DataType := ftString;
      connection.qryBusca2.Params.ParamByName('paquete').Value := sNumeroPaquete;
      connection.qryBusca2.Open;
      if connection.qryBusca2.RecordCount > 0 then
        if connection.qryBusca2.FieldValues['sIdPernocta'] <> '' then
          sPernocta := connection.qryBusca2.FieldValues['sIdPernocta'];
      if connection.qryBusca2.FieldValues['sIdPlataforma'] <> '' then
        sPlataforma := connection.qryBusca2.FieldValues['sIdPlataforma'];

      QryPaquete.First;
      iEquiposSeguridad := 0;
      while not QryPaquete.Eof do
      begin
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select dCantidad from bitacoradepersonal where sContrato = :contrato And dIdFecha = :Fecha And ' +
          'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
        connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
        connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Pernocta').Value := sPernocta;
        connection.qryBusca.Params.ParamByName('plataforma').DataType := ftString;
        connection.qryBusca.Params.ParamByName('plataforma').Value := sPlataforma;
        connection.qryBusca.Params.ParamByName('Personal').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Personal').Value := QryPaquete.FieldValues['sIdPersonal'];
        connection.qryBusca.Open;
        if connection.qryBusca.RecordCount > 0 then
        begin
          iEquiposSeguridad := iEquiposSeguridad + QryPaquete.FieldValues['dCantidad'];
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradepersonal SET dCantidad = :Cantidad ' +
            'WHERE sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
            'sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
          connection.zCommand.Params.ParamByName('Pernocta').Value := sPernocta;
          connection.zCommand.Params.ParamByName('Plataforma').DataType := ftString;
          connection.zCommand.Params.ParamByName('Plataforma').Value := sPlataforma;
          connection.zCommand.Params.ParamByName('Personal').DataType := ftString;
          connection.zCommand.Params.ParamByName('Personal').Value := QryPaquete.FieldValues['sIdPersonal'];
          connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + QryPaquete.FieldValues['dCantidad'];
          connection.zCommand.ExecSQL;

                        // Introducir equipo asignado a la catergoria ....
          connection.qryBusca2.Active := False;
          connection.qryBusca2.SQL.Clear;
          connection.qryBusca2.SQL.Add('Select sIdEquipo, dCantidad from equiposxpersonal ' +
            'where sContrato = :contrato And sIdPersonal = :personal Order By sIdEquipo');
          Connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('contrato').Value := param_global_contrato;
          Connection.qryBusca2.Params.ParamByName('Personal').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Personal').Value := QryPaquete.FieldValues['sIdPersonal'];
          Connection.qryBusca2.Open;
          while not connection.qryBusca2.Eof do
          begin
            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
            connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
            connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
            connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
            connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
            connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
            connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
            connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Pernocta').Value := sPlataforma;
            connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
            connection.qryBusca.Params.ParamByName('Equipo').Value := Connection.qryBusca2.FieldValues['sIdEquipo'];
            connection.qryBusca.Open;
            if connection.qryBusca.RecordCount > 0 then
            begin
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad ' +
                'WHERE sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
              connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
              connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
              connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
              connection.zCommand.Params.ParamByName('Pernocta').Value := sPlataforma;
              connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
              connection.zCommand.Params.ParamByName('Equipo').Value := Connection.qryBusca2.FieldValues['sIdEquipo'];
              connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + (Connection.qryBusca2.FieldValues['dCantidad'] * QryPaquete.FieldValues['dCantidad']);
              connection.zCommand.ExecSQL;
            end
            else
            begin
              BitacoradeEquipos.Append;
              BitacoradeEquipos.FieldValues['sIdPernocta'] := sPlataforma;
              BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.qryBusca2.FieldValues['sIdEquipo'];
              BitacoradeEquipos.FieldValues['dCantidad'] := (Connection.qryBusca2.FieldValues['dCantidad'] * QryPaquete.FieldValues['dCantidad']);
              BitacoradeEquipos.Post;
            end;
            Connection.qryBusca2.Next
          end
        end
        else
        begin
          bitacoradePersonal.Append;
          BitacoradePersonal.FieldValues['sIdPersonal'] := QryPaquete.FieldValues['sIdPersonal'];
          BitacoradePersonal.FieldValues['sIdPernocta'] := sPernocta;
          BitacoradePersonal.FieldValues['sIdPlataforma'] := sPlataforma;
          BitacoradePersonal.FieldValues['dCantidad'] := QryPaquete.FieldValues['dCantidad'];
          BitacoradePersonal.Post;
        end;
        QryPaquete.Next
      end
    end;

        // Actualizo Equipos de Seguridad, siempre y cuando
    connection.qryBusca.Active := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos ' +
      'where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And ' +
      'sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
    connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
    connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
    connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
    connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
    connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Pernocta').Value := sPlataforma;
    connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Equipo').Value := Connection.configuracion.FieldValues['sEquipoSeguridad'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
        'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
      connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
      connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
      connection.zCommand.Params.ParamByName('Pernocta').Value := sPlataforma;
      connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
      connection.zCommand.Params.ParamByName('Equipo').Value := Connection.configuracion.FieldValues['sEquipoSeguridad'];
      connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + iEquiposSeguridad;
      connection.zCommand.ExecSQL;
    end
    else
      if Connection.configuracion.FieldValues['sEquipoSeguridad'] <> '' then
      begin
        BitacoradeEquipos.Append;
        BitacoradeEquipos.FieldValues['sIdPernocta'] := sPlataforma;
        BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.configuracion.FieldValues['sEquipoSeguridad'];
        BitacoradeEquipos.FieldValues['dCantidad'] := iEquiposSeguridad;

        BitacoradeEquipos.Post;
      end;

    qryPaquete.Destroy;
  end;
  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Open;

  BitacoradePersonal.Active := False;
  BitacoradePersonal.Open;


  SumPersonal.Active := False;
  SumPersonal.Open;
  if SumPersonal.RecordCount > 0 then
    tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
  else
    tdTotalPersonal.Value := 0;

end;

procedure TfrmBitacoraOptativa.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_color_entrada
end;

procedure TfrmBitacoraOptativa.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmBitacoraOptativa.tsIdPernoctaEnter(Sender: TObject);
begin
  tsIdPernocta.Color := global_color_entrada
end;

procedure TfrmBitacoraOptativa.tsIdPernoctaExit(Sender: TObject);
begin
  tsIdPernocta.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.tsIdPernoctaEquipoEnter(Sender: TObject);
begin
  tsIdPernoctaEquipo.Color := global_color_entrada
end;

procedure TfrmBitacoraOptativa.tsIdPernoctaEquipoExit(Sender: TObject);
begin
  tsIdPernoctaEquipo.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.ListaObjetoDblClick(Sender: TObject);
begin
  if PageBitacora.ActivePageIndex = 0 then
    grid_bitacorapersonal.SetFocus
  else
    if PageBitacora.ActivePageIndex = 1 then
      grid_bitacoradeequipos.SetFocus
    else
      if PageBitacora.ActivePageIndex = 2 then
        GridMateriales.SetFocus
           //********************BRITO 01-12-10**********************
      else
        if PageBitacora.ActivePageIndex = 3 then
          Grid_BitacoradePernocta.SetFocus
           //********************BRITO 01-12-10**********************
end;

procedure TfrmBitacoraOptativa.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if PageBitacora.ActivePageIndex = 0 then
      grid_bitacorapersonal.SetFocus
    else
      if PageBitacora.ActivePageIndex = 1 then
        grid_bitacoradeequipos.SetFocus
      else
        if PageBitacora.ActivePageIndex = 2 then
          GridMateriales.SetFocus
              //********************BRITO 01-12-10**********************
        else
          if PageBitacora.ActivePageIndex = 3 then
            Grid_BitacoradePernocta.SetFocus
              //********************BRITO 01-12-10**********************
end;

procedure TfrmBitacoraOptativa.memDescribeDblClick(Sender: TObject);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('update bitacorademateriales set mDescripcion = :Descripcion ' +
    'where sContrato = :Contrato And dIdFecha = :fecha and sWbs = :Wbs And sIdMaterial = :Material');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
  Connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value := BitacoradeMaterialessWbs.Text;
  Connection.qryBusca.Params.ParamByName('Material').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Material').Value := BitacoradeMaterialessIdMaterial.Text;
  Connection.qryBusca.Params.ParamByName('Descripcion').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Descripcion').Value := memDescribe.Text;
  Connection.qryBusca.ExecSQL;
  frmBitacoraOptativa.ActualizaMateriales;
  memDescribe.Text := '';
  GrupoMateriales.Visible := False;
end;

procedure TfrmBitacoraOptativa.optConsideraClick(Sender: TObject);
begin
    if chkConsidera.Checked = False then
    begin
        connection.QryBusca.Active := false;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Update bitacoradeactividades set lRepitePersonal = "Si" where sContrato=:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType:= ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value   := param_global_contrato;
        connection.QryBusca.Params.ParamByName('fecha').DataType   := ftDate;
        connection.QryBusca.Params.ParamByName('fecha').Value      := tdIdfecha.Date;
        connection.QryBusca.Params.ParamByName('Diario').DataType  := ftInteger;
        connection.QryBusca.Params.ParamByName('Diario').Value     := QryBitacora.FieldValues['iIdDiario'];
        connection.QryBusca.ExecSQL;
    end;

    if chkConsidera.Checked  then
    begin
        connection.QryBusca.Active := false;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Update bitacoradeactividades set lRepitePersonal = "No" where sContrato=:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType:= ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value   := param_global_contrato;
        connection.QryBusca.Params.ParamByName('fecha').DataType   := ftDate;
        connection.QryBusca.Params.ParamByName('fecha').Value      := tdIdfecha.Date;
        connection.QryBusca.Params.ParamByName('Diario').DataType  := ftInteger;
        connection.QryBusca.Params.ParamByName('Diario').Value     := QryBitacora.FieldValues['iIdDiario'];
        connection.QryBusca.ExecSQL;
    end;
    qryBitacora.Refresh;
end;

procedure TfrmBitacoraOptativa.ListaObjetoExit(Sender: TObject);
begin
  if Panel.Visible = True then
  begin
    if BuscaObjeto.RecordCount > 0 then
      if PageBitacora.ActivePageIndex = 0 then
        BitacoradePersonal.FieldValues['sIdPersonal'] := BuscaObjeto.FieldValues['sNumeroActividad']
      else
        if PageBitacora.ActivePageIndex = 1 then
          BitacoradeEquipos.FieldValues['sIdEquipo'] := BuscaObjeto.FieldValues['sNumeroActividad']
        else
          if PageBitacora.ActivePageIndex = 2 then
          begin
            BitacoradeMateriales.FieldValues['sWbs'] := BuscaObjeto.FieldValues['sWbs'];
            BitacoradeMateriales.FieldValues['sIdMaterial'] := BuscaObjeto.FieldValues['sNumeroActividad']
          end
                     //********************BRITO 01-12-10**********************
          else
            if PageBitacora.ActivePageIndex = 3 then
              BitacoradePernocta.FieldValues['sIdCuenta'] := BuscaObjeto.FieldValues['sIdCuenta'];
                     //********************BRITO 01-12-10**********************

    Panel.Visible := False;
  end
end;


procedure TfrmBitacoraOptativa.grid_bitacoraEnter(Sender: TObject);
begin
  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaPernocta(); //********************BRITO 01-12-10**********************
  ActualizaMateriales();
end;

procedure TfrmBitacoraOptativa.Grid_BitacoraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  QryBitacora.Active := False;
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := convenio_reporte;
  qryBitacora.Params.ParamByName('orden').DataType := ftString;
  qryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  qryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  qryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  qryBitacora.Params.ParamByName('Ordenado').Value := sCampo;
  QryBitacora.Open;
end;

procedure TfrmBitacoraOptativa.Grid_BitacoraTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraOptativa.iempoExtras1Click(Sender: TObject);
begin
  if BitacoradePersonal.RecordCount > 0 then
  begin
    groupMotivos.Visible := False;
    Panel1.Visible := not Panel1.Visible;
    qryTiemposExtras.Active := False;
    qryTiemposExtras.Params.ParamByName('contrato').DataType := ftString;
    qryTiemposExtras.Params.ParamByName('contrato').Value := param_global_contrato;
    qryTiemposExtras.Params.ParamByName('fecha').DataType := ftDate;
    qryTiemposExtras.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    qryTiemposExtras.Params.ParamByName('diario').DataType := ftInteger;
    qryTiemposExtras.Params.ParamByName('diario').Value := BitacoradePersonal.FieldValues['iIdDiario'];
    qryTiemposExtras.Params.ParamByName('personal').DataType := ftString;
    qryTiemposExtras.Params.ParamByName('personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
    qryTiemposExtras.Open;
    if qryTiemposExtras.RecordCount > 0 then
    begin
      sNumeroFicha.Text := qryTiemposExtras.FieldValues['sNumeroFicha'];
      sNombre.Text := qryTiemposExtras.FieldValues['sNombre'];
      sPuesto.Text := qryTiemposExtras.FieldValues['sPuesto'];
      sHoraInicio.Text := qryTiemposExtras.FieldValues['sHoraInicio'];
      sHoraFinal.Text := qryTiemposExtras.FieldValues['sHoraFinal'];
      dTiempoExtraf.Text := qryTiemposExtras.FieldValues['dTiempoExtra'];
    end;
  end
end;

procedure TfrmBitacoraOptativa.IngresarTotaldelaVigencia1Click(Sender: TObject);
var
  dFecha: tDate;
  qryOrdenes: tzReadOnlyquery;
  lContinua: boolean;
begin
  vigencias;

  lContinua := True;
  qryOrdenes := tzReadOnlyQuery.Create(Self);
  qryOrdenes.Connection := connection.zConnection;

  qryOrdenes.Active := False;
  qryOrdenes.SQL.Clear;
  qryOrdenes.SQL.Add('Select * FROM ordenesdetrabajo Where sContrato = :Contrato And sNumeroOrden = :Orden');
  qryOrdenes.Params.ParamByName('Contrato').DataType := ftString;
  qryOrdenes.Params.ParamByName('Contrato').Value := param_global_Contrato;
  qryOrdenes.Params.ParamByName('Orden').DataType := ftString;
  qryOrdenes.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
  qryOrdenes.Open;

  if pageBitacora.ActivePageIndex = 0 then
  begin
    if MessageDlg('Desea Cargar el Personal de la Vigencia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if Global_Personal = 'No' then
      begin
        messageDLG('No se puede Cargar Vigencia de Personal la Orden no está Habilidata para Vigencias!', mtInformation, [mbOk], 0);
        exit;
      end;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      if sTipoOficio <> '' then
      begin
        if sTipoOficio = 'CONSOLIDADA' then
          Connection.Auxiliar.SQL.Add('select sNumeroActividad, dCantidad  From movtorecursosxoficio where sContrato = :Contrato ' +
            'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '"');
        if sTipoOficio = 'DIARIA' then
        begin
          Connection.Auxiliar.SQL.Add('select sNumeroActividad, dCantidad From detallerecursosxoficio where sContrato = :Contrato ' +
            'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and dFechaDia =:Fecha');
          Connection.Auxiliar.Params.ParamByName('Fecha').DataType := ftDate;
          Connection.Auxiliar.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        end;
        Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
        Connection.Auxiliar.Params.ParamByName('Contrato').Value := param_Global_Contrato;
        Connection.Auxiliar.Params.ParamByName('Folio').DataType := ftInteger;
        Connection.Auxiliar.Params.ParamByName('Folio').Value := iFolioOficio;
        Connection.Auxiliar.Open;

        if Connection.Auxiliar.RecordCount = 0 then
        begin
          MessageDlg('No Existe Personal Cargado a la Vigencia para esta Fecha', mtError, [mbOk], 0);
          lContinua := False;
        end;

        dFecha := tdIdFecha.Date - 1;
        if Connection.Auxiliar.RecordCount > 0 then
        begin
          while not Connection.Auxiliar.Eof do
          begin
            BitacoradePersonal.Append;
            BitacoradePersonal.FieldValues['sContrato'] := param_Global_Contrato;
            BitacoradePersonal.FieldValues['sIdPlataforma'] := qryOrdenes.FieldValues['sIdPlataforma'];
            BitacoradePersonal.FieldValues['sIdPersonal'] := Connection.Auxiliar.FieldValues['sNumeroActividad'];
            BitacoradePersonal.FieldValues['dCantidad'] := Connection.Auxiliar.FieldValues['dCantidad'];
            BitacoradePersonal.FieldValues['sIdPernocta'] := qryOrdenes.FieldValues['sIdPernocta'];
            BitacoradePersonal.Post;
            Connection.Auxiliar.Next
          end;
        end;

        if lContinua then
          MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
      end
      else
        MessageDlg('No hay vigencias registradas.', mtInformation, [mbOk], 0);
    end;
  end;


  lContinua := True;
  if MessageDlg('Desea Cargar el Equipo de la Vigencia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if Global_Equipo = 'No' then
    begin
      messageDLG('No se puede Cargar Vigencia de Equipo la Orden no está Habilidata para Vigencias!', mtInformation, [mbOk], 0);
      exit;
    end;
    Connection.Auxiliar.Active := False;
    Connection.Auxiliar.SQL.Clear;
    if sTipoOficio <> '' then
    begin
      if sTipoOficio = 'CONSOLIDADA' then
        Connection.Auxiliar.SQL.Add('select sNumeroActividad, dCantidad  From movtorecursosxoficio where sContrato = :Contrato ' +
          'And iFolioOficio =:Folio And sAnexo="' + global_labelEquipo + '"');
      if sTipoOficio = 'DIARIA' then
      begin
        Connection.Auxiliar.SQL.Add('select sNumeroActividad, dCantidad From detallerecursosxoficio where sContrato = :Contrato ' +
          'And iFolioOficio =:Folio And sAnexo="' + global_labelEquipo + '" and dFechaDia =:Fecha');
        Connection.Auxiliar.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.Auxiliar.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      end;
      Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      Connection.Auxiliar.Params.ParamByName('Folio').DataType := ftInteger;
      Connection.Auxiliar.Params.ParamByName('Folio').Value := iFolioOficio;
      Connection.Auxiliar.Open;
      if Connection.Auxiliar.RecordCount = 0 then
      begin
        MessageDlg('No Existe Equipo Cargado a la Vigencia para esta Fecha', mtError, [mbOk], 0);
        lContinua := False;
      end;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        while not Connection.Auxiliar.Eof do
        begin
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          BitacoradeEquipos.FieldValues['dCantidad'] := Connection.Auxiliar.FieldValues['dCantidad'];
          BitacoradeEquipos.FieldValues['sIdPernocta'] := qryOrdenes.FieldValues['sIdPernocta'];
          BitacoradeEquipos.Post;
          Connection.Auxiliar.Next
        end;
      end;

      if lContinua then
        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
    end
    else
      MessageDlg('No hay vigencias registradas.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmBitacoraOptativa.Grid_BitacoraGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTurno').AsString <> global_turno_reporte then
    Background := clGradientInactiveCaption
end;

procedure TfrmBitacoraOptativa.Grid_BitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacoraOptativa.Grid_BitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacoraOptativa.grid_bitacorapersonalDblClick(Sender: TObject);
begin
     // checo si el personal es tiempo extra, si no es tiempo extra se oculta la ventana .....
  Panel1.Visible := False;

  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdTipoPersonal from personal Where sContrato = :contrato and sIdPersonal = :Personal');
  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  connection.QryBusca.Params.ParamByName('personal').DataType := ftString;
  connection.QryBusca.Params.ParamByName('personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
    if (strPos(pchar('|EXT|'), pchar(connection.QryBusca.FieldByName('sIdTipoPersonal').AsString)) = nil) then
      GroupMotivos.Visible := False
    else
      GroupMotivos.Visible := True
  else
    GroupMotivos.Visible := False;
  connection.QryBusca.Active := False
end;

procedure TfrmBitacoraOptativa.grid_bitacorapersonalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacoraOptativa.grid_bitacorapersonalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacoraOptativa.grid_bitacorapersonalTitleClick(Column: TColumn);
begin
  UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraOptativa.CargaAnteriorClick(Sender: TObject);
var
  dFecha: tDate;
  lEventoRealizado, lValidaVigencia: boolean;
  QyrPersonalAnterior: tzReadOnlyquery;
  dFechaMinVigencia: TDate;
begin
  if lBorra then
  begin
    BTraerAnt := True;
    dFechaMinVigencia := 0;
    lValidaVigencia := False;
    QyrPersonalAnterior := tzReadOnlyQuery.Create(Self);
    QyrPersonalAnterior.Connection := connection.zConnection;
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        if MessageDlg('Desea adicionar todo el personal existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Text := 'select dfiProgramado from ordenesdetrabajogral ' +
            'where scontrato=:Contrato and snumeroorden=:Orden ' +
            'and :Fecha between dfiProgramado and dfFProgramado';

          connection.QryBusca.ParamByName('contrato').AsString := param_global_contrato;
          connection.QryBusca.ParamByName('orden').AsString := tsNumeroOrden.Text;
          connection.QryBusca.ParamByName('Fecha').AsDate := tdIdFecha.Date;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount = 1 then
          begin
            dFechaMinVigencia := connection.QryBusca.FieldByName('dfiProgramado').AsDateTime;
            lValidaVigencia := True;
          end;

          dFecha := tdIdFecha.Date - 1;

          if (lValidaVigencia) then
          begin
            global_dias := DaysBetween(tdIdFecha.Date, dFechaMinVigencia);

          end
          else
            if global_dias = 0 then
              global_dias := 10;



          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            QyrPersonalAnterior.Active := False;
            QyrPersonalAnterior.SQL.Clear;
            QyrPersonalAnterior.SQL.Add('Select bp.* From bitacoradepersonal bp INNER JOIN bitacoradeactividades b ON ' +
              '(bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And ' +
              'b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sHoraInicio =:Inicio and b.sHoraFinal =:Final) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Order By bp.sIdPersonal');
            QyrPersonalAnterior.Params.ParamByName('Contrato').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Contrato').Value := param_global_Contrato;
            QyrPersonalAnterior.Params.ParamByName('Orden').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            QyrPersonalAnterior.Params.ParamByName('Fecha').DataType := ftDate;
            QyrPersonalAnterior.Params.ParamByName('Fecha').Value := dFecha;
            QyrPersonalAnterior.Params.ParamByName('Turno').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Turno').Value := global_turno_reporte;
            QyrPersonalAnterior.Params.ParamByName('Inicio').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Inicio').Value    := QryBitacora.FieldValues['sHoraInicio'];
            QyrPersonalAnterior.Params.ParamByName('Final').DataType  := ftString;
            QyrPersonalAnterior.Params.ParamByName('Final').Value     := QryBitacora.FieldValues['sHoraFinal'];
            QyrPersonalAnterior.Open;
            if QyrPersonalAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              QyrPersonalAnterior.First;
              while not QyrPersonalAnterior.Eof do
              begin
                                // Checo si ya existe ....
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradepersonal where sContrato = :contrato And dIdFecha = :Fecha And ' +
                  'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
                connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
                connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
                connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Pernocta').Value := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('plataforma').DataType := ftString;
                connection.qryBusca.Params.ParamByName('plataforma').Value := QyrPersonalAnterior.FieldValues['sIdPlataforma'];
                connection.qryBusca.Params.ParamByName('Personal').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Personal').Value := QyrPersonalAnterior.FieldValues['sIdPersonal'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradepersonal SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                    'sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Pernocta').Value := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Plataforma').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Plataforma').Value := QyrPersonalAnterior.FieldValues['sIdPlataforma'];
                  connection.zCommand.Params.ParamByName('Personal').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Personal').Value := QyrPersonalAnterior.FieldValues['sIdPersonal'];
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + QyrPersonalAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin    
                  BitacoradePersonal.Append;
                  BitacoradePersonal.FieldValues['sIdPlataforma'] := QyrPersonalAnterior.FieldValues['sIdPlataforma'];
                  BitacoradePersonal.FieldValues['sIdPersonal'] := QyrPersonalAnterior.FieldValues['sIdPersonal'];
                  BitacoradePersonal.FieldValues['dCantidad'] := QyrPersonalAnterior.FieldValues['dCantidad'];
                  BitacoradePersonal.FieldValues['sIdPernocta'] := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradePersonal.FieldValues['sTipopernocta'] := QyrPersonalAnterior.FieldValues['sTipoPernocta'];
                  BitacoradePersonal.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;


          if (lValidaVigencia) then
          begin
            if not lEventoRealizado then
            begin
              MessageDlg('No se encontraron registros en reportes con la vigencia aplicable a este dia', mtWarning, [mbOk], 0);
              IngresarTotaldelaVigencia1Click(Sender);
              Exit;
            end;
          end;




          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de personal en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el personal.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradePersonal.Active := False;
            BitacoradePersonal.Open;
          end
        end;

        SumPersonal.Active := False;
        SumPersonal.Open;
        if SumPersonal.RecordCount > 0 then
          tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
        else
          tdTotalPersonal.Value := 0;

        if MessageDlg('Desea adicionar todo el equipo existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;
          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            QyrPersonalAnterior.Active := False;
            QyrPersonalAnterior.SQL.Clear;
            QyrPersonalAnterior.SQL.Add('Select bp.sIdPernocta, bp.sIdEquipo, Sum(bp.dCantidad) as dCantidad From bitacoradeequipos bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sHoraInicio =:Inicio and b.sHoraFinal =:Final) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Group By  bp.sIdPernocta, bp.sIdEquipo Order By bp.sIdEquipo');
            QyrPersonalAnterior.Params.ParamByName('Contrato').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Contrato').Value := param_global_Contrato;
            QyrPersonalAnterior.Params.ParamByName('Orden').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            QyrPersonalAnterior.Params.ParamByName('Fecha').DataType := ftDate;
            QyrPersonalAnterior.Params.ParamByName('Fecha').Value := dFecha;
            QyrPersonalAnterior.Params.ParamByName('Turno').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Turno').Value := global_turno_reporte;
            QyrPersonalAnterior.Params.ParamByName('Inicio').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Inicio').Value    := QryBitacora.FieldValues['sHoraInicio'];
            QyrPersonalAnterior.Params.ParamByName('Final').DataType  := ftString;
            QyrPersonalAnterior.Params.ParamByName('Final').Value     := QryBitacora.FieldValues['sHoraFinal'];
            QyrPersonalAnterior.Open;
            if QyrPersonalAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              QyrPersonalAnterior.First;
              while not QyrPersonalAnterior.Eof do
              begin
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
                connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
                connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
                connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Pernocta').Value := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Equipo').Value := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Pernocta').Value := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Equipo').Value := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + QyrPersonalAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  sPernocta := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  bitacoradeEquipos.Append;
                  BitacoradeEquipos.FieldValues['sIdPernocta'] := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradeEquipos.FieldValues['sIdEquipo'] := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                  BitacoradeEquipos.FieldValues['dCantidad'] := QyrPersonalAnterior.FieldValues['dCantidad'];
                  bitacoradeEquipos.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de Equipo en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el Equipo.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradeEquipos.Active := False;
            BitacoradeEquipos.Open;
          end
        end
      end;
    QyrPersonalAnterior.Destroy;
    BTraerAnt := False;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);

end;

procedure TfrmBitacoraOptativa.cmdBuscarClick(Sender: TObject);
begin
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from empleados where sContrato=:Contrato and sIdEmpleado=:NoFicha');
  connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  connection.QryBusca.Params.ParamByName('NoFicha').DataType := ftString;
  connection.QryBusca.Params.ParamByName('NoFicha').Value := sNumeroFicha.Text;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    sNombre.Text := connection.QryBusca.FieldValues['sNombre'];
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sDescripcion from bitacoradepersonal where ' +
      '  sContrato=:Contrato and dIdFecha=:Fecha and sIdPersonal = :Personal');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
    connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    connection.QryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    connection.QryBusca.Params.ParamByName('Personal').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
      sPuesto.Text := Connection.QryBusca.FieldValues['sDescripcion'];
    sHoraInicio.SetFocus;
  end
  else
  begin
    ShowMessage('No Se Encuentra El Empleado con Ese Numero de Ficha !!');
    sNombre.Text := '';
    sNumeroFicha.SetFocus;
  end;
  connection.QryBusca.Active := False;
end;

procedure TfrmBitacoraOptativa.tsIdPlataformaEnter(Sender: TObject);
begin
  tsIdPlataforma.Color := global_color_entrada
end;

procedure TfrmBitacoraOptativa.tsIdPlataformaExit(Sender: TObject);
begin
  tsIdPlataforma.Color := global_color_salida
end;

//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.BitacoradePernoctaAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if BitacoradePernocta.RecordCount = 0 then
      BitacoradePernocta.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        BitacoradePernocta.Cancel
  end
  else
  begin
    BitacoradePernocta.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;
end;
//***************************BRITO 01-12-10*************************************

//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.BitacoradePernoctaAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        BitacoradePernocta.FieldValues['dIdFecha'] := tdIdFecha.Date;
        BitacoradePernocta.FieldValues['sContrato'] := param_Global_Contrato;
        BitacoradePernocta.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
        BitacoradePernocta.FieldValues['dCantidad'] := 0;
      end
      else
        BitacoradePernocta.Cancel
    else
      BitacoradePernocta.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    BitacoradePernocta.Cancel
  end;
end;
//***************************BRITO 01-12-10*************************************

//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.BitacoradePernoctaBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacoraOptativa.BitacoradePernoctaBeforeOpen(DataSet: TDataSet);
begin

end;

//***************************BRITO 01-12-10*************************************

//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.BitacoradePernoctaBeforePost(DataSet: TDataSet);
begin
  try
    if (BitacoradePernocta.FieldValues['sIdCuenta'] = null) then
      BitacoradePernocta.Cancel
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;
end;
//***************************BRITO 01-12-10*************************************

//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.BitacoradePernoctasIdCuentaChange(
  Sender: TField);
begin
  //aqui va para cuando cambia por partida
  if not BitacoradePernocta.FieldByName('sIdCuenta').IsNull then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select sDescripcion from cuentas where sIdCuenta = :cuenta ');
    Connection.qryBusca.Params.ParamByName('cuenta').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('cuenta').Value := BitacoradePernoctasIdCuenta.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount < 1 then
    begin
      if Trim(BitacoradePernocta.FieldValues['sIdCuenta']) <> '' then
      begin
        sDescripcion := '%' + Trim(BitacoradePernocta.FieldValues['sIdCuenta']) + '%';
        BuscaObjeto.Active := False;
        ListaObjeto.Columns.Clear;
        ListaObjeto.Columns.Add;
        ListaObjeto.Columns[0].FieldName := 'sDescripcion';
        ListaObjeto.Columns[0].Width := 550;
        BuscaObjeto.SQL.Clear;
        BuscaObjeto.SQL.Add('Select sIdCuenta, sDescripcion from cuentas Where ' +
          'sDescripcion Like :Descripcion');
        BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
        BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
        BuscaObjeto.Open;
        if not (BTraerAnt) then
        begin
          Panel.Visible := True;
          ListaObjeto.SetFocus
        end;
      end;
    end;
  end;
end;
//***************************BRITO 01-12-10*************************************

procedure TfrmBitacoraOptativa.BitacoradePersonalAfterDelete(DataSet: TDataSet);
begin
  SumPersonal.Active := False;
  SumPersonal.Open;

  if SumPersonal.RecordCount > 0 then
    tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
  else
    tdTotalPersonal.Value := 0;
end;

procedure TfrmBitacoraOptativa.BitacoradePersonalAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        BitacoradePersonal.FieldValues['dIdFecha'] := tdIdFecha.Date;
        BitacoradePersonal.FieldValues['sContrato'] := param_Global_Contrato;
        BitacoradePersonal.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
        BitacoradePersonal.FieldValues['dCantidad'] := 0;
        BitacoradePersonal.FieldValues['sHoraInicio'] := '00:00';
        BitacoradePersonal.FieldValues['sHoraFinal'] := '00:00';
        BitacoradePersonal.FieldValues['sFactor'] := '';
        BitacoradePersonal.FieldValues['dCostoMN'] := 0;
        BitacoradePersonal.FieldValues['dCostoDLL'] := 0;
        BitacoradePersonal.FieldValues['lAplicaPernocta'] := 'Si';
        if sPernocta = '' then
          bitacoradePersonal.FieldValues['sIdPernocta'] := Embarcacion
        else
          bitacoradePersonal.FieldValues['sIdPernocta'] := sPernocta;

        if sPlataforma = '' then
          BitacoradePersonal.FieldValues['sIdPlataforma'] := OrdenesdeTrabajo.FieldValues['sIdPlataforma']
        else
          BitacoradePersonal.FieldValues['sIdPlataforma'] := sPlataforma;
      end
      else
        BitacoradePersonal.Cancel
    else
      BitacoradePersonal.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    BitacoradePersonal.Cancel
  end;

  Indicar := 1;

end;


procedure TfrmBitacoraOptativa.EliminarPerEqClick(
  Sender: TObject);
begin
  if lBorra then
  begin
    if (QryBitacora.RecordCount > 0) then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        if MessageDlg('Desea Eliminar todo el Personal asignado?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;
          BitacoradePersonal.Active := False;
          BitacoradePersonal.Open;
          tdTotalPersonal.Value := 0;
        end;
        if MessageDlg('Desea Eliminar todo el Equipo asignado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;
          BitacoradeEquipos.Active := False;
          BitacoradeEquipos.Open;
        end
      end
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposCalcFields(DataSet: TDataSet);
begin
  if (BitacoradeEquipos.FieldValues['dCantidad'] <> Null) and (BitacoradeEquipos.FieldValues['dCostoMN'] <> Null) then
    BitacoradeEquiposdMontoMN.Value := BitacoradeEquipos.FieldValues['dCantidad'] * BitacoradeEquipos.FieldValues['dCostoMN'];

  if (BitacoradeEquipos.FieldValues['dCantidad'] <> Null) and (BitacoradeEquipos.FieldValues['dCostoDLL'] <> Null) then
    BitacoradeEquiposdMontoDLL.Value := BitacoradeEquipos.FieldValues['dCantidad'] * BitacoradeEquipos.FieldValues['dCostoDLL'];

  if d4 <> '' then
  begin
    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.SQL.Clear;
    if sTipoOficio <> '' then
    begin
      if sTipoOficio = 'CONSOLIDADA' then
        Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoE From movtorecursosxoficio where sContrato = :Contrato ' +
          'And iFolioOficio =:Folio And sAnexo="' + global_labelEquipo + '" and sNumeroActividad =:Id ');
      if sTipoOficio = 'DIARIA' then
      begin
        Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoE From detallerecursosxoficio where sContrato = :Contrato ' +
          'And iFolioOficio =:Folio And sAnexo="' + global_labelEquipo + '" and sNumeroActividad =:Id and dFechaDia =:Fecha');
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      end;
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca2.Params.ParamByName('Id').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Id').Value := BitacoradeEquipossIdEquipo.Text;
      Connection.qryBusca2.Params.ParamByName('Folio').DataType := ftInteger;
      Connection.qryBusca2.Params.ParamByName('Folio').Value := iFolioOficio;
      Connection.qryBusca2.Open;
      if Connection.qryBusca2.RecordCount > 0 then
        BitacoradeEquiposSolicitado.Text := Connection.QryBusca2.FieldValues['solicitadoE']
      else
        BitacoradeEquiposSolicitado.Text := '0';
    end
    else
      BitacoradeEquiposSolicitado.Text := '0';
  end;
end;


procedure TfrmBitacoraOptativa.Refresh1Click(Sender: TObject);
var
  qryPaquetes: tzReadOnlyQuery;
begin
  sPernocta := '';
  sPlataforma := '';

  tsPaquete.Items.Clear;
  qryPaquetes := tzReadOnlyQuery.Create(self);
  qryPaquetes.Connection := connection.zConnection;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').DataType := ftString;
  qryPaquetes.Params.ParamByName('contrato').Value := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaquete.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;

  tsPaqueteEquipo.Items.Clear;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_e Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').DataType := ftString;
  qryPaquetes.Params.ParamByName('contrato').Value := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaqueteEquipo.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;
  qryPaquetes.Destroy;

  connection.configuracion.refresh;

  QryBitacora.Active := False;
  QryBitacora.Open;

  BitacoradePersonal.Active := False;
  BitacoradePersonal.Open;

  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Open;

  ordenesdetrabajo.Active := False;
  OrdenesdeTrabajo.Open;

  PernoctaPersonal.Active := False;
  PernoctaPersonal.Open;

  PernoctaEquipo.Active := False;
  PernoctaEquipo.Open;

  Plataformas.Active := False;
  Plataformas.Open;
end;

procedure TfrmBitacoraOptativa.Salir1Click(Sender: TObject);
begin
  Close
end;

procedure TfrmBitacoraOptativa.sHoraFinalExit(Sender: TObject);
var
  hi, hf, res: byte;
begin
  dTiempoExtraf.Text := '0';
  sHoraFinal.Color := global_color_salida;
  hi := strToInt(midStr(sHoraInicio.Text, 1, 2));
  hf := strToInt(midStr(sHoraFinal.Text, 1, 2));
  if hf > hi then
  begin
    res := hf - hi;
    dTiempoExtraf.text := IntTostr(res);
  end;
end;

procedure TfrmBitacoraOptativa.sHoraFinalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dTiempoExtraf.SetFocus
end;

procedure TfrmBitacoraOptativa.sHoraInicioEnter(Sender: TObject);
begin
  sHoraInicio.Color := global_color_entrada;
end;

procedure TfrmBitacoraOptativa.sHoraInicioExit(Sender: TObject);
begin
  sHoraInicio.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.sHoraInicioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sHoraFinal.SetFocus
end;

procedure TfrmBitacoraOptativa.sNombreEnter(Sender: TObject);
begin
  sNombre.Color := global_color_entrada;
end;

procedure TfrmBitacoraOptativa.sNombreExit(Sender: TObject);
begin
  sNombre.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.sNumeroFichaEnter(Sender: TObject);
begin
  sNumeroFicha.Color := global_color_entrada;
end;

procedure TfrmBitacoraOptativa.sNumeroFichaExit(Sender: TObject);
begin
  sNumeroFicha.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.sNumeroFichaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmdBuscar.SetFocus;
end;

procedure TfrmBitacoraOptativa.sPuestoEnter(Sender: TObject);
begin
  sPuesto.Color := global_color_entrada;
end;

procedure TfrmBitacoraOptativa.sPuestoExit(Sender: TObject);
begin
  sPuesto.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.sPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sHoraInicio.SetFocus;
end;

procedure TfrmBitacoraOptativa.ComentariosAdicionalesalaPartida1Click(
  Sender: TObject);
begin
  global_partida := QryBitacora.FieldValues['sNumeroActividad'];
  Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
  frmComentariosxAnexo.show;
end;

procedure TfrmBitacoraOptativa.Copy1Click(Sender: TObject);
begin
  UtGrid.CopyRowsToClip;
end;

procedure TfrmBitacoraOptativa.dTiempoExtrafChange(Sender: TObject);
begin
  TRxCalcEditchangef(dTiempoExtraf, 'Tiempo Extra');
end;

procedure TfrmBitacoraOptativa.dTiempoExtrafEnter(Sender: TObject);
begin
  dTiempoExtraf.Color := global_color_entrada;
end;

procedure TfrmBitacoraOptativa.dTiempoExtrafExit(Sender: TObject);
begin
  dTiempoExtraf.Color := global_color_salida
end;

procedure TfrmBitacoraOptativa.dTiempoExtrafKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(dTiempoExtraf, key) then
    key := #0;
  if Key = #13 then
    sNumeroFicha.SetFocus;
end;

procedure TfrmBitacoraOptativa.ActualizaCostosClick(Sender: TObject);
begin
  if lBorra then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE bitacoradepersonal b, Personal p SET b.dCostoMN = p.dCostoMN, b.dCostoDLL = p.dCostoDLL WHERE ' +
      'b.sContrato = p.sContrato AND b.sIdPersonal = p.sIdPersonal AND b.sContrato = :Contrato And b.dIdFecha = :Fecha');
    connection.zcommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate;
    connection.zcommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    connection.zCommand.ExecSQL;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE bitacoradeequipos b, Equipos p SET b.dCostoMN = p.dCostoMN, b.dCostoDLL = p.dCostoDLL WHERE ' +
      'b.sContrato = p.sContrato AND b.sIdEquipo = p.sIdEquipo AND b.sContrato = :Contrato And b.dIdFecha = :Fecha');
    connection.zcommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate;
    connection.zcommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    connection.zCommand.ExecSQL;

    BitacoradePersonal.Active := False;
    BitacoradePersonal.Open;

    BitacoradeEquipos.Active := False;
    BitacoradeEquipos.Open;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
end;

procedure TfrmBitacoraOptativa.BitacoradePersonalBeforeDelete(DataSet: TDataSet);
begin
   {Se valida contra reporte de Barco..}
  if ValidaBarco(bitacoradepersonal.FieldValues['sIdPersonal']) then
  begin
    messageDLg('El Reporte de Barco se Encuentra Validado/Autorizado, para realizar modificación pase el Reporte de Barco a Status de Pendiente.', mtInformation, [mbOk], 0);
    Abort;
    exit;
  end;

   {Continua proceso..}
  Categoria := BitacoradePersonal.FieldValues['sIdPersonal'];
  if (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'Si') then
  begin
    if (MidStr(BitacoradePersonal.FieldValues['sDescripcion'], 1, 12) <> 'TIEMPO EXTRA') and (sTipoPersonal = 'PE-C') then
    begin
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select bp.sIdPersonal, ba.sNumeroOrden from bitacoradepersonal bp ' +
        'Inner Join bitacoradeactividades ba On ' +
        '(bp.sContrato =ba.sContrato And bp.iIdDiario=ba.iIdDiario And ba.dIdFecha=:Fecha ) ' +
        'Inner Join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.sIdTipoPersonal = "EXT" ) ' +
        'And bp.sIdPersonal like :Personal And bp.dIdFecha=:Fecha And bp.sContrato=:Contrato ' +
        'And sNumeroOrden=:Orden  ');
      Connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      Connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.QryBusca2.Params.ParamByName('Personal').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Personal').Value := bitacoradepersonalsIdPersonal.Text;
      Connection.QryBusca2.Open;

      if Connection.qryBusca2.RecordCount > 0 then
      begin
        MessageDlg('No se Puede Borrar primero el TIEMPO EXTRA', mtWarning, [mbOk], 0);
        Abort
      end;
    end;
  end;

  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacoraOptativa.BitacoradePersonalBeforeEdit(DataSet: TDataSet);
begin
  if ValidaBarco(bitacoradepersonal.FieldValues['sIdPersonal']) then
  begin
    messageDLg('El Reporte de Barco se Encuentra Validado/Autorizado, para realizar modificación pase el Reporte de Barco a Status de Pendiente.', mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacoraOptativa.QryBitacoraCalcFields(DataSet: TDataSet);
begin
  try
    QryBitacoradTotalMN.Value := QryBitacoradCantidad.Value * QryBitacoradVentaMN.Value;
    if lCheckReporte() then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion from turnos Where sContrato = :contrato and sIdTurno = :Turno');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.QryBusca.Params.ParamByName('turno').DataType := ftString;
      connection.QryBusca.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        QryBitacorasTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
      else
        QryBitacorasTurno.Value := 'Frente Unico'
    end
    else
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion from ordenes_frentes Where sContrato = :contrato and sNumeroOrden = :Orden and sIdFrente = :Turno');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Params.ParamByName('turno').DataType := ftString;
      connection.QryBusca.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        QryBitacorasTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
      else
        QryBitacorasTurno.Value := 'Frente Unico'
    end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Personal y Equipo de Construcción', 'Al cambiar de registro', 0);
    end;
  end;
end;

procedure TfrmBitacoraOptativa.qryTiemposExtrasAfterScroll(DataSet: TDataSet);
begin
  if qryTiemposExtras.RecordCount > 0 then
  begin
    if not qryTiemposExtras.FieldByName('sNumeroFicha').IsNull then
      sNumeroFicha.Text := qryTiemposExtras.FieldValues['sNumeroFicha'];
    if not qryTiemposExtras.FieldByName('sNombre').IsNull then
      sNombre.Text := qryTiemposExtras.FieldValues['sNombre'];
    if not qryTiemposExtras.FieldByName('sPuesto').IsNull then
      sPuesto.Text := qryTiemposExtras.FieldValues['sPuesto'];
    if not qryTiemposExtras.FieldByName('sHorainicio').IsNull then
      sHoraInicio.Text := qryTiemposExtras.FieldValues['sHoraInicio'];
    if not qryTiemposExtras.FieldByName('sHoraFinal').IsNull then
      sHoraFinal.Text := qryTiemposExtras.FieldValues['sHoraFinal'];
    if not qryTiemposExtras.FieldByName('dTiempoExtra').IsNull then
      dTiempoExtraf.Text := qryTiemposExtras.FieldValues['dTiempoExtra'];
  end;
end;

procedure TfrmBitacoraOptativa.BitacoradePersonalAfterPost(DataSet: TDataSet);
begin
    total := 0;
    sPlataforma := bitacoradePersonal.FieldValues['sIdPlataforma'];
    sPernocta   := bitacoradePersonal.FieldValues['sIdPernocta'];

    SumPersonal.Active := False;
    SumPersonal.Open;

    if SumPersonal.RecordCount > 0 then
       tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
    else
       tdTotalPersonal.Value := 0;
    Indicar := 0;

    //Aqui Actualizamos el personal en jornadas y tiempos para efectos de disponibilidad del sitio.. Diavaz by ivan Jun 2012
    ActualizaDisponibilidadSitio(param_global_contrato, tsNumeroOrden.Text, global_turno_reporte, tdIdFecha.Date, tdTotalPersonal.Value);
end;


procedure TfrmBitacoraOptativa.BitacoradePersonalAfterScroll(DataSet: TDataSet);
begin
  Panel1.Visible := False;
     //checo si el personal es tiempo extra, si no es tiempo extra se oculta la ventana .....
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdTipoPersonal from personal Where sContrato = :contrato and sIdPersonal = :Personal');
  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  connection.QryBusca.Params.ParamByName('personal').DataType := ftString;
  connection.QryBusca.Params.ParamByName('personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
    if (strPos(pchar('|EXT|'), pchar(connection.QryBusca.FieldByName('sIdTipoPersonal').AsString)) = nil) then
      GroupMotivos.Visible := False;
  connection.QryBusca.Active := False
end;


procedure TfrmBitacoraOptativa.BitacoradePersonalBeforePost(DataSet: TDataSet);
var
  sOpcionLocal: string;
  lContinua: boolean;
begin
  if (Global_Optativa = 'OPTATIVA') and (Global_PuJor = 'Si')  Then
      BitacoradePersonal.FieldValues['dSolicitado'] := Connection.configuracion.fieldValues['iJLunes'] * BitacoradePersonal.FieldValues['dCantidad'] ;

   {Se valida contra el repote de barco..}
  if ValidaBarco(bitacoradepersonal.FieldValues['sIdPersonal']) then
  begin
    messageDLg('El Reporte de Barco se Encuentra Validado/Autorizado, para realizar modificación pase el Reporte de Barco a Status de Pendiente.', mtInformation, [mbOk], 0);
    Abort;
    exit;
  end;

  if (Global_Optativa = 'OPTATIVA') and (Global_PuJor = 'Si') then
    BitacoradePersonal.FieldValues['dSolicitado'] := Connection.configuracion.fieldValues['iJLunes'] * BitacoradePersonal.FieldValues['dCantidad']
  else
    {22/03/2012 : adal , guardar el personal solicitado}
    BitacoradePersonal.FieldValues['dSolicitado'] := BitacoraDePersonalSolicitado.Value;  

  {Continua proceso..}
  try
    if BitacoradePErsonal.State = dsEdit then
      sOpcionLocal := 'Edicion';

    if (BitacoradePersonal.FieldValues['sIdPersonal'] <> null) and (BitacoradePersonal.FieldValues['sIdPernocta'] <> null) and
      (BitacoradePersonal.FieldValues['sIdPlataforma'] <> null) and (BitacoradePersonal.FieldValues['sIdPersonal'] <> '') and
      (BitacoradePersonal.FieldValues['sIdPernocta'] <> '') and (BitacoradePersonal.FieldValues['sIdPlataforma'] <> '') then
    begin
      sPernocta := BitacoradePersonal.FieldValues['sIdPernocta'];
      tsIdPernocta.KeyValue := sPernocta;

      sPlataforma := BitacoradePersonal.FieldValues['sIdPlataforma'];
      if BitacoradePersonal.FieldByName('mMotivos').IsNull then
        BitacoradePersonal.FieldValues['mMotivos'] := '*';

      if sOpcionLocal <> 'Edicion' then
      begin
              //Introducir equipo asignado a la catergoria ....
        connection.qryBusca2.Active := False;
        connection.qryBusca2.SQL.Clear;
        connection.qryBusca2.SQL.Add('Select sIdEquipo, dCantidad from equiposxpersonal ep ' +
          'where sContrato = :contrato And sIdPersonal = :personal Order By sIdEquipo');
        Connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('contrato').Value := param_global_contrato;
        Connection.qryBusca2.Params.ParamByName('Personal').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
        Connection.qryBusca2.Open;
        while not connection.qryBusca2.Eof do
        begin
          connection.qryBusca.Active := False;
          connection.qryBusca.SQL.Clear;
          connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
          connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
          connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
          connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
          connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
          connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
          connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Pernocta').Value := sPlataforma;
          connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
          connection.qryBusca.Params.ParamByName('Equipo').Value := Connection.qryBusca2.FieldValues['sIdEquipo'];
          connection.qryBusca.Open;
          if connection.qryBusca.RecordCount > 0 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
              'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
            connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
            connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
            connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
            connection.zCommand.Params.ParamByName('Pernocta').Value := sPlataforma;
            connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
            connection.zCommand.Params.ParamByName('Equipo').Value := Connection.qryBusca2.FieldValues['sIdEquipo'];
            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + (Connection.qryBusca2.FieldValues['dCantidad'] * BitacoradePersonal.FieldValues['dCantidad']);
            connection.zCommand.ExecSQL;
          end
          else
          begin
            BitacoradeEquipos.Append;
            BitacoradeEquipos.FieldValues['sIdPernocta'] := sPlataforma;
            BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.qryBusca2.FieldValues['sIdEquipo'];
            BitacoradeEquipos.FieldValues['dCantidad'] := (Connection.qryBusca2.FieldValues['dCantidad'] * BitacoradePersonal.FieldValues['dCantidad']);
            BitacoradeEquipos.Post;
          end;
          Connection.qryBusca2.Next
        end;

              //Checo si ya existe ....
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And ' +
          'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
        connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
        connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Pernocta').Value := sPlataforma;
        connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Equipo').Value := Connection.configuracion.FieldValues['sEquipoSeguridad'];
        connection.qryBusca.Open;
        if connection.qryBusca.RecordCount > 0 then
        begin
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
            'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
          connection.zCommand.Params.ParamByName('Pernocta').Value := sPlataforma;
          connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
          connection.zCommand.Params.ParamByName('Equipo').Value := Connection.configuracion.FieldValues['sEquipoSeguridad'];
          connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + BitacoradePersonal.FieldValues['dCantidad'];
          connection.zCommand.ExecSQL;
        end
        else
          if lExisteEquipo(Connection.configuracion.FieldValues['sEquipoSeguridad']) then
          begin
            BitacoradeEquipos.Append;
            BitacoradeEquipos.FieldValues['sIdPernocta'] := sPlataforma;
            BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.configuracion.FieldValues['sEquipoSeguridad'];
            BitacoradeEquipos.FieldValues['dCantidad'] := BitacoradePersonal.FieldValues['dCantidad'];
            BitacoradeEquipos.Post;
          end;
        BitacoradeEquipos.Active := False;
        BitacoradeEquipos.Open;
      end;

          {Validacion de la vigencia}
      if (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'Si') and (MidStr(BitacoradePersonal.FieldValues['sDescripcion'], 1, 12) <> 'TIEMPO EXTRA') and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') Then
      begin
        Connection.QryBusca2.Active := False;
        Connection.QryBusca2.SQL.Clear;
        Connection.QryBusca2.SQL.Add('Select sum(dCantidad) as totalP from bitacoradepersonal Where ' +
          'sContrato =:Contrato And dIdFecha =:Fecha And sIdPersonal =:Personal group by sIdPersonal');
        connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
        connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
        connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
        connection.QryBusca2.Params.ParamByName('Personal').DataType := ftstring;
        connection.QryBusca2.Params.ParamByName('Personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
        connection.QryBusca2.Open;

        if Connection.QryBusca2.RecordCount > 0 then
          total := connection.QryBusca2.FieldValues['totalP']
        else
          total := 0;

        if (bitacoradepersonal.FieldValues['dCantidad'] > strToInt(BitacoradePersonalSolicitado.Text)) then
        begin
          MessageDlg('LO REPORTADO ES MAYOR QUE LO SOLICITADO VERIFICARLO', mtWarning, [mbOk], 0);
          if connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si' then
            BitacoradePersonal.FieldValues['dCantidad'] := BitacoradePersonal.FieldValues['dSolicitado'];
        end
        else
          if (total > strToInt(BitacoradePersonalSolicitado.Text)) and (stipoPersonal = 'PE-C') then
          begin
            MessageDlg('LO REPORTADO EN VARIOS FRENTES ES ' + IntToStr(total) + ' ES MAYOR QUE LO SOLICITADO ' + BitacoradePersonalSolicitado.Text + ' VERIFICARLO', mtWarning, [mbOk], 0);
            if connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si' then
              BitacoradePersonal.FieldValues['dCantidad'] := BitacoradePersonal.FieldValues['dSolicitado'];
          end;
      end;
    end
    else
      BitacoradePersonal.Cancel
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;
end;


procedure TfrmBitacoraOptativa.BitacoradePersonalsIdPersonalChange(Sender: TField);
//Aqui leo las categorias de Personal Y Verifico que existan en el Oficio
var
  lContinua: boolean;
  lMuestra: boolean;
  qry: TZReadOnlyQuery;
begin


  begin
    try

      qry := TZReadOnlyQuery.Create(nil);
      qry.Connection := Connection.zConnection;
      qry.sql.Clear;
      qry.sql.Add('select sIdPernocta from ordenesdetrabajo where sContrato=:contrato and sNumeroOrden=:orden');
      qry.ParamByName('contrato').AsString := param_global_contrato;
      qry.ParamByName('orden').AsString := tsNumeroOrden.Text;
      qry.Open;
      if qry.RecordCount > 0 then
        tsIdPernocta.KeyValue := qry.FieldByName('sIdPernocta').AsString
      else
        tsIdPernocta.KeyValue := 'TIERRA';
      qry.Destroy;

      cmbsTipoPernocta.KeyValue := 1;
    except
    end;



    if (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'Si') and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
    begin
      BandTE := False;
      if d4 = '' then //soad -> Verifica vigencia para personal y equipo ..
      begin
        MessageDlg('No existe vigencia para personal y equipo, Favor de Verificar.', mtInformation, [mbOk], 0);
        bitacoradepersonal.Cancel;
      end
      else
      begin
        solicitadop := 0;
        Connection.qryBusca2.Active := False;
        Connection.qryBusca2.SQL.Clear;
        if sTipoOficio <> '' then
        begin
          if sTipoOficio = 'CONSOLIDADA' then
            Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoP From movtorecursosxoficio where sContrato = :Contrato ' +
              'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Id ');
          if sTipoOficio = 'DIARIA' then
          begin
            Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoP From detallerecursosxoficio where sContrato = :Contrato ' +
              'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Id and dFechaDia =:Fecha');
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          end;
          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
          Connection.qryBusca2.Params.ParamByName('Id').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Id').Value := BitacoradePersonalsIdPersonal.Text;
          Connection.qryBusca2.Params.ParamByName('Folio').DataType := ftInteger;
          Connection.qryBusca2.Params.ParamByName('Folio').Value := iFolioOficio;
          Connection.qryBusca2.Open;

          lContinua := False;
          lMuestra := True;
          if Connection.qryBusca2.RecordCount = 0 then
          begin
            if not BitacoradePersonal.FieldByName('sIdPersonal').IsNull then
              if Trim(BitacoradePersonal.FieldValues['sIdPersonal']) <> '' then
              begin
                sDescripcion := '%' + Trim(BitacoradePersonal.FieldValues['sIdPersonal']) + '%';
                BuscaObjeto.Active := False;
                ListaObjeto.Columns.Clear;
                ListaObjeto.Columns.Add;
                ListaObjeto.Columns[0].FieldName := 'tipo';
                ListaObjeto.Columns.Add;
                ListaObjeto.Columns[1].FieldName := 'sDescripcion';
                BuscaObjeto.SQL.Clear;
                BuscaObjeto.SQL.Add('Select sIdPersonal as sNumeroActividad, sDescripcion, dCostoDLL, dCostoMN, sIdTipoPersonal as tipo  from personal Where ' +
                  'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
                BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
                BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
                BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
                BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
                BuscaObjeto.Open;
                if not (BTraerAnt) then
                begin
                  Panel.Visible := True;
                  ListaObjeto.Columns[0].Width := 40;
                  ListaObjeto.Columns[1].Width := 680;
                  ListaObjeto.SetFocus;
                end;
              end;
            lMuestra := False;
          end
          else
            lContinua := True;
        end
        else
        begin
          lContinua := False;
          lMuestra := True;
        end;

        if lContinua then
        begin
          solicitadop := Connection.QryBusca2.FieldValues['solicitadoP'];
          Connection.qryBusca.Active := False; //soad - > se agrega sAgrupaPersonal para las especialidades de personal..
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('select sIdTipoPersonal, iItemOrden, sDescripcion, dCostoDLL, dCostoMN, sAgrupaPersonal from personal where sContrato = :Contrato And sIdPersonal = :Personal');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
          Connection.qryBusca.Params.ParamByName('Personal').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Personal').Value := BitacoradePersonalsIdPersonal.Text;
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
          begin
            stipoPersonal := Connection.QryBusca.FieldValues['sIdTipoPersonal'];
            if MidStr(Connection.qryBusca.FieldValues['sDescripcion'], 1, 12) = 'TIEMPO EXTRA' then
            begin
              Busqueda := strToInt(BitacoradePersonalsIdPersonal.Text) - 1;
              Connection.QryBusca2.SQL.Clear;
              if sTipoOficio <> '' then
              begin
                if sTipoOficio = 'CONSOLIDADA' then
                  Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoP From movtorecursosxoficio where sContrato = :Contrato ' +
                    'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Id ');
                if sTipoOficio = 'DIARIA' then
                begin
                  Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoP From detallerecursosxoficio where sContrato = :Contrato ' +
                    'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Id and dFechaDia =:Fecha');
                  Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
                  Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                end;
                Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
                Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                Connection.QryBusca2.Params.ParamByName('Personal').DataType := ftString;
                Connection.QryBusca2.Params.ParamByName('Personal').Value := IntToStr(Busqueda);
                Connection.QryBusca2.Params.ParamByName('Folio').DataType := ftInteger;
                Connection.QryBusca2.Params.ParamByName('Folio').Value := iFolioOficio;
                Connection.QryBusca2.Open;
                if Connection.QryBusca2.RecordCount > 0 then
                begin
                  BitacoradePersonal.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
                  BitacoradePersonal.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
                  BitacoradePersonal.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
                  BitacoradePersonal.FieldValues['iItemOrden'] := Connection.qryBusca.FieldValues['iItemOrden'];
                  BitacoradePersonal.FieldValues['sAgrupaPersonal'] := Connection.qryBusca.FieldValues['sAgrupaPersonal'];
                  BitacoradePersonal.FieldValues['dSolicitado'] := Connection.qryBusca2.FieldValues['solicitadoP'];
                  encontrado := true;
                  Grid_Bitacorapersonal.SetFocus;
                end
                else
                  MessageDlg('No Existe el Personal Para Asignar TIEMPO EXTRA ', mtWarning, [mbOk], 0);
              end
              else
                MessageDlg('No Existe el Personal Para Asignar TIEMPO EXTRA ', mtWarning, [mbOk], 0);

            end
            else
            begin
              if (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'Si') and (Indicar = 1) then
              begin
                Connection.qryBusca2.SQL.Clear;
                Connection.QryBusca2.SQL.Add('Select sIdPersonal, bp.sIdPernocta, ba.sNumeroOrden from bitacoradepersonal bp ' +
                  'Inner Join bitacoradeactividades ba On ' +
                  '(bp.sContrato =ba.sContrato And bp.iIdDiario=ba.iIdDiario And ba.`dIdFecha`=:Fecha ) ' +
                  'And bp.sIdPersonal=:Personal And bp.dIdFecha=:Fecha And bp.sContrato=:Contrato ' +
                  'And sNumeroOrden=:Orden');
                Connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
                Connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
                Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
                Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
                Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
                Connection.QryBusca2.Params.ParamByName('Personal').DataType := ftString;
                Connection.QryBusca2.Params.ParamByName('Personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
                Connection.QryBusca2.Open;

                if Connection.QryBusca2.RecordCount > 0 then
                  if Connection.QryBusca2.FieldValues['sIdPernocta'] = BitacoradePersonal.FieldValues['sIdPernocta'] then
                    Messagedlg('Esa Categoria de Personal Ya Existe, EN LA MISMA PERNOCTA ', mtError, [mbOk], 0);
              end;
              BitacoradePersonal.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
              BitacoradePersonal.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
              BitacoradePersonal.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
              BitacoradePersonal.FieldValues['iItemOrden'] := Connection.qryBusca.FieldValues['iItemOrden'];
              BitacoradePersonal.FieldValues['sAgrupaPersonal'] := Connection.qryBusca.FieldValues['sAgrupaPersonal'];
              BitacoradePersonal.FieldValues['dSolicitado'] := Connection.qryBusca2.FieldValues['solicitadoP'];
            end;
          end;
        end
        else
        begin
          if lMuestra then
          begin
            MessageDlg('Esa Categoria No ESTA SOLICITADA No podra Agregar al Reporte al dia Seleccionado.', mtWarning, [mbOk], 0);
            bitacoradepersonal.Cancel;
            lMuestra := False;
          end;
        end;
      end;
    end;


   //Cuando no aplica la vigencia de personal
    if ((Global_Personal = 'No') or ((Global_Optativa = 'OPTATIVA') or (Global_Optativa = 'MIXTA'))) then
    begin
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('select sDescripcion, dCostoDLL, dCostoMN, sAgrupaPersonal from personal where sContrato = :Contrato And sIdPersonal = :Personal');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca.Params.ParamByName('Personal').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Personal').Value := BitacoradePersonalsIdPersonal.Text;
      Connection.qryBusca.Open;

      if Connection.qryBusca.RecordCount > 0 then
      begin
        BitacoradePersonal.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
        BitacoradePersonal.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
        BitacoradePersonal.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
        BitacoradePersonal.FieldValues['sAgrupaPersonal'] := Connection.qryBusca.FieldValues['sAgrupaPersonal'];
        BitacoradePersonal.FieldValues['iItemOrden'] := 0;
      end
      else
        if not BitacoradePersonal.FieldByName('sIdPersonal').IsNull then
          if Trim(BitacoradePersonal.FieldValues['sIdPersonal']) <> '' then
          begin
            sDescripcion := '%' + Trim(BitacoradePersonal.FieldValues['sIdPersonal']) + '%';
            BuscaObjeto.Active := False;
            ListaObjeto.Columns.Clear;
            ListaObjeto.Columns.Add;
            ListaObjeto.Columns[0].FieldName := 'tipo';
            ListaObjeto.Columns.Add;
            ListaObjeto.Columns[1].FieldName := 'sDescripcion';
            BuscaObjeto.SQL.Clear;
            BuscaObjeto.SQL.Add('Select sIdPersonal as sNumeroActividad, sDescripcion, dCostoDLL, dCostoMN, sIdTipoPersonal as tipo  from personal Where ' +
              'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
            BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
            BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
            BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
            BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
            BuscaObjeto.Open;
            if not (BTraerAnt) then
            begin
              Panel.Visible := True;
              ListaObjeto.Columns[0].Width := 40;
              ListaObjeto.Columns[1].Width := 680;
              ListaObjeto.SetFocus;
            end;
          end
    end;
  end;
end;



procedure TfrmBitacoraOptativa.BorrarlasCategoriasen01Click(Sender: TObject);
begin
  if MessageDlg('Desea eliminar las Categorias de Personal en 0 ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM bitacoradepersonal Where sContrato = :contrato ' +
      ' and iIdDiario = :diario and dCantidad=0 ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
    connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
    connection.zCommand.ExecSQL();
    bitacoradepersonal.Refresh;
  end;

  if MessageDlg('Desea eliminar las Categorias de Equipo en 0 ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM bitacoradeequipos Where sContrato = :contrato ' +
      ' and iIdDiario = :diario and dCantidad=0 ');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
    connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
    connection.zCommand.ExecSQL();
    bitacoradeequipos.Refresh;
  end;
end;


procedure TfrmBitacoraOptativa.BitacoradePersonalCalcFields(DataSet: TDataSet);
begin
  if (BitacoradePersonal.FieldValues['dCantidad'] <> Null) and (BitacoradePersonal.FieldValues['dCostoMN'] <> Null) then
    BitacoradePersonaldMontoMN.Value := BitacoradePersonal.FieldValues['dCantidad'] * BitacoradePersonal.FieldValues['dCostoMN'];

  if (BitacoradePersonal.FieldValues['dCantidad'] <> Null) and (BitacoradePersonal.FieldValues['dCostoDLL'] <> Null) then
    BitacoradePersonaldMontoDLL.Value := BitacoradePersonal.FieldValues['dCantidad'] * BitacoradePersonal.FieldValues['dCostoDLL'];

  if d4 <> '' then
  begin
    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.SQL.Clear;
    if sTipoOficio <> '' then
    begin
      if sTipoOficio = 'CONSOLIDADA' then
        Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoP From movtorecursosxoficio where sContrato = :Contrato ' +
          'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Id ');
      if sTipoOficio = 'DIARIA' then
      begin
        Connection.qryBusca2.SQL.Add('select dCantidad as solicitadoP From detallerecursosxoficio where sContrato = :Contrato ' +
          'And iFolioOficio =:Folio And sAnexo="' + global_labelPersonal + '" and sNumeroActividad =:Id and dFechaDia =:Fecha');
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      end;
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca2.Params.ParamByName('Id').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Id').Value := BitacoradePersonalsIdPersonal.Text;
      Connection.qryBusca2.Params.ParamByName('Folio').DataType := ftInteger;
      Connection.qryBusca2.Params.ParamByName('Folio').Value := iFolioOficio;
      Connection.qryBusca2.Open;

      if Connection.qryBusca2.RecordCount > 0 then
        BitacoradePersonalSolicitado.Text := Connection.QryBusca2.FieldValues['solicitadoP']
      else
        BitacoradePersonalSolicitado.Text := '0';
    end
    else
      BitacoradePersonalSolicitado.Text := '0';

  end;
end;


procedure TfrmBitacoraOptativa.BitacoradePersonalAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if BitacoradePersonal.RecordCount = 0 then
      BitacoradePersonal.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        BitacoradePersonal.Cancel
  end
  else
  begin
    BitacoradePersonal.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end
end;

procedure TfrmBitacoraOptativa.QryBitacoraAfterScroll(DataSet: TDataSet);
begin
  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaPernocta(); //********************BRITO 01-12-10**********************
  ActualizaMateriales();
  if QryBitacora.RecordCount > 0 then
  begin
    SumPersonal.Active := False;
    SumPersonal.Params.ParamByName('Contrato').DataType := ftString;
    SumPersonal.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    SumPersonal.Params.ParamByName('Fecha').DataType := ftDate;
    SumPersonal.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    SumPersonal.Params.ParamByName('Diario').DataType := ftInteger;
    SumPersonal.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
    SumPersonal.Open;
    if SumPersonal.RecordCount > 0 then
      tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
    else
      tdTotalPersonal.Value := 0;

    if bitacoradepersonal.RecordCount > 0 then
       chkConsidera.Visible := True
    else
       chkConsidera.Visible := False;

    if qryBitacora.FieldValues['lRepitePersonal'] = 'Si' then
       chkConsidera.Checked := True
    else
       chkConsidera.Checked := False;
  end
  else
    tdTotalPersonal.Value := 0;

  if QryBitacora.RecordCount > 0 then
  begin
    SumEquipo.Active := False;
    SumEquipo.Params.ParamByName('Contrato').DataType := ftString;
    SumEquipo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    SumEquipo.Params.ParamByName('Fecha').DataType := ftDate;
    SumEquipo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    SumEquipo.Params.ParamByName('Diario').DataType := ftInteger;
    SumEquipo.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
    SumEquipo.Open;
    if SumEquipo.RecordCount > 0 then
      tdTotalEquipo.Value := SumEquipo.FieldValues['dTotal']
    else
      tdTotalEquipo.Value := 0;
  end
  else
    tdTotalEquipo.Value := 0;
end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if BitacoradePersonal.RecordCount = 0 then
      BitacoradePersonal.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        BitacoradePersonal.Cancel
  end
  else
  begin
    BitacoradePersonal.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;



end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        BitacoradeEquipos.FieldValues['dIdFecha'] := tdIdFecha.Date;
        BitacoradeEquipos.FieldValues['sContrato'] := param_Global_Contrato;
        BitacoradeEquipos.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
        BitacoradeEquipos.FieldValues['dCantidad'] := 0;
        BitacoradeEquipos.FieldValues['sHoraInicio'] := '00:00';
        BitacoradeEquipos.FieldValues['sHoraFinal'] := '00:00';
        BitacoradeEquipos.FieldValues['sFactor'] := '';
        BitacoradeEquipos.FieldValues['dCostoMN'] := 0;
        BitacoradeEquipos.FieldValues['dCostoDLL'] := 0;
        if sPernocta = '' then
          BitacoradeEquipos.FieldValues['sIdPernocta'] := Embarcacion
        else
          BitacoradeEquipos.FieldValues['sIdPernocta'] := sPernocta;
      end
      else
        BitacoradePersonal.Cancel
    else
      BitacoradePersonal.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    BitacoradePersonal.Cancel
  end;



end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposAfterPost(DataSet: TDataSet);
begin
  total := 0;
  sPernocta := bitacoradeEquipos.FieldValues['sIdPernocta'];
end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposAfterScroll(DataSet: TDataSet);
begin
  try
    if not (BitacoradeEquipos.State in [dsInsert, dsEdit]) then
    begin
      if QryBitacora.RecordCount > 0 then
      begin
        SumEquipo.Active := False;
        SumEquipo.Params.ParamByName('Contrato').DataType := ftString;
        SumEquipo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
        SumEquipo.Params.ParamByName('Fecha').DataType := ftDate;
        SumEquipo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        SumEquipo.Params.ParamByName('Diario').DataType := ftInteger;
        SumEquipo.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        SumEquipo.Open;
        if SumEquipo.RecordCount > 0 then
          tdTotalEquipo.Value := SumEquipo.FieldValues['dTotal']
        else
          tdTotalEquipo.Value := 0;
      end
      else
        tdTotalEquipo.Value := 0;
    end;
  except

  end;
end;

procedure TfrmBitacoraOptativa.BitacoradeEquiposBeforePost(DataSet: TDataSet);
var
  sOpcionLocal: string;
begin
  try
    {22/03/2012 : adal , guardar el equipo solicitado}
    BitacoradeEquipos.FieldValues['dSolicitado'] := BitacoraDeequiposSolicitado.Value;  
    if BitacoradeEquipos.State = dsEdit then
      sOpcionLocal := 'Edicion';

    if (BitacoradeEquipos.FieldValues['sIdEquipo'] <> null) and
      (BitacoradeEquipos.FieldValues['sIdPernocta'] <> null) and
      (BitacoradeEquipos.FieldValues['sIdEquipo'] <> '') and
      (BitacoradeEquipos.FieldValues['sIdPernocta'] <> '') then
    begin

        {si la el item es nulo , provoca error}
      if BitacoradeEquipos.FieldValues['iItemOrden'] = Null then
        BitacoradeEquipos.FieldByName('iItemOrden').AsInteger := 0;

        {a veces la descripcion la guarda vacia, aqui la buscamos antes de post}
      if BitacoradeEquipos.FieldValues['sDescripcion'] = Null then
      begin
        Connection.QryBusca2.Active := False;
        Connection.QryBusca2.SQL.Clear;
        Connection.QryBusca2.SQL.Add('select sDescripcion from equipos where sContrato=:Contrato and sIdEquipo=:Equipo');
        Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
        Connection.QryBusca2.Params.ParamByName('Equipo').DataType := ftstring;
        Connection.QryBusca2.Params.ParamByName('Equipo').Value := BitacoradeEquipos.FieldValues['sIdEquipo'];
        Connection.QryBusca2.Open;

        if Connection.QryBusca2.RecordCount > 0 then
        begin
          BitacoradeEquipos.FieldByName('sDescripcion').AsString := Connection.QryBusca2.FieldByName('sDescripcion').AsString;
        end;
      end;


      sPernocta := BitacoradeEquipos.FieldValues['sIdPernocta'];
      if (Global_Optativa = 'OPTATIVA') and (Global_Equipo = 'Si') and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') Then
      begin
        Connection.QryBusca2.Active := False;
        Connection.QryBusca2.SQL.Clear;
        Connection.QryBusca2.SQL.Add('Select sum(dCantidad) as totalE from bitacoradeequipos Where ' +
          'sContrato =:Contrato And dIdFecha =:Fecha And sIdEquipo =:Equipo ');
        Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
        Connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
        Connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
        Connection.QryBusca2.Params.ParamByName('Equipo').DataType := ftstring;
        Connection.QryBusca2.Params.ParamByName('Equipo').Value := BitacoradeEquipos.FieldValues['sIdEquipo'];
        Connection.QryBusca2.Open;

        if Connection.QryBusca2.RecordCount > 0 then
          if connection.QryBusca2.FieldValues['totalE'] = Null then {22/02/2012: adal, mandaba error de campo nulo}
            total := 0
          else
            total := connection.QryBusca2.FieldValues['totalE']
        else
          total := 0;

        if total > strToInt(BitacoradeEquiposSolicitado.Text) then
        begin
          MessageDlg('LO REPORTADO EN VARIOS FRENTES ES ' + IntToStr(total) + ' ES MAYOR QUE LO SOLICITADO ' + BitacoradeEquiposSolicitado.Text + ' VERIFICARLO', mtWarning, [mbOk], 0);
          BitacoradeEquipos.FieldByName('dCantidad').AsFloat := BitacoradeEquipos.FieldByName('dSolicitado').AsFloat;
        end;

        if bitacoradeequipos.FieldValues['dCantidad'] > strToInt(BitacoradeEquiposSolicitado.Text) then
        begin
          MessageDlg('LO REPORTADO ES MAYOR QUE LO SOLICITADO VERIFICARLO, SE REGISTRA EL EQUIPO CON CANTIDAD "CERO"', mtWarning, [mbOk], 0);
          BitacoradeEquipos.FieldByName('dCantidad').AsFloat := BitacoradeEquipos.FieldByName('dSolicitado').AsFloat;
        end;
      end;
    end
    else
      abort;
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmBitacoraOptativa.BitacoradeEquipossIdEquipoChange(Sender: TField);
var
  sDescripcion: string;
  lMuestra: boolean;
  qry: TZReadOnlyQuery;
begin
  try
    qry := TZReadOnlyQuery.Create(nil);
    qry.Connection := Connection.zConnection;
    qry.sql.Clear;
    qry.sql.Add('select sIdPernocta from ordenesdetrabajo where sContrato=:contrato and sNumeroOrden=:orden');
    qry.ParamByName('contrato').AsString := param_global_contrato;
    qry.ParamByName('orden').AsString := tsNumeroOrden.Text;
    qry.Open;
    if qry.RecordCount > 0 then
    begin
      if sPernocta = '' then
         tsIdPernoctaEquipo.KeyValue := qry.FieldByName('sIdPernocta').AsString;
    end
    else
      tsIdPernoctaEquipo.KeyValue := 'TIERRA';
    qry.Destroy;
  except
  end;

  if (Global_Optativa = 'OPTATIVA') and (Global_Equipo = 'Si') and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
  begin

    Connection.QryBusca2.Active := False;
    Connection.QryBusca2.SQL.Clear;
    Connection.QryBusca2.SQL.Add('Select be.sIdEquipo, ba.sNumeroOrden from bitacoradeequipos be ' +
      'Inner Join bitacoradeactividades ba On ' +
      '(be.sContrato =ba.sContrato And be.iIdDiario=ba.iIdDiario And ba.`dIdFecha`=:Fecha ) ' +
      'And be.sIdEquipo=:Equipo And be.dIdFecha=:Fecha And be.sContrato=:Contrato ' +
      'And sNumeroOrden=:Orden  ');
    connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
    connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
    connection.QryBusca2.Params.ParamByName('Equipo').DataType := ftstring;
    connection.QryBusca2.Params.ParamByName('Equipo').Value := BitacoradeEquipos.FieldValues['sIdEquipo'];
    connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    connection.QryBusca2.Open;
    if Connection.QryBusca2.RecordCount > 0 then
    begin
      MessageDlg('Esa Categoria de Equipo Ya Existe ', mtError, [mbOk], 0);
      BitacoradeEquipos.Cancel;
    end
    else
    begin
      vigencias();
      Connection.qryBusca2.Active := False;
      Connection.qryBusca2.SQL.Clear;
      if sTipoOficio <> '' then
      begin
        if sTipoOficio = 'CONSOLIDADA' then
          Connection.qryBusca2.SQL.Add('select dCantidad From movtorecursosxoficio where sContrato = :Contrato ' +
            'And iFolioOficio =:Folio And sAnexo="' + global_labelEquipo + '" and sNumeroActividad =:Id ');
        if sTipoOficio = 'DIARIA' then
        begin
          Connection.qryBusca2.SQL.Add('select dCantidad From detallerecursosxoficio where sContrato = :Contrato ' +
            'And iFolioOficio =:Folio And sAnexo="' + global_labelEquipo + '" and sNumeroActividad =:Id and dFechaDia =:Fecha');
          Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
          Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        end;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
        Connection.qryBusca2.Params.ParamByName('Id').DataType := ftString;
        Connection.qryBusca2.Params.ParamByName('Id').Value := BitacoradeEquipossIdEquipo.Text;
        Connection.qryBusca2.Params.ParamByName('Folio').DataType := ftInteger;
        Connection.qryBusca2.Params.ParamByName('Folio').Value := iFolioOficio;
        Connection.qryBusca2.Open;

        lMuestra := True;
        if Connection.qryBusca2.RecordCount = 0 then
        begin
          if not BitacoradeEquipos.FieldByName('sIdEquipo').IsNull then
            if Trim(BitacoradeEquipos.FieldValues['sIdEquipo']) <> '' then
            begin
              sDescripcion := '%' + Trim(BitacoradeEquipos.FieldValues['sIdEquipo']) + '%';
              BuscaObjeto.Active := False;
              ListaObjeto.Columns.Clear;
              ListaObjeto.Columns.Add;
              ListaObjeto.Columns[0].FieldName := 'tipo';
              ListaObjeto.Columns.Add;
              ListaObjeto.Columns[1].FieldName := 'sDescripcion';
              BuscaObjeto.SQL.Clear;
              BuscaObjeto.SQL.Add('Select sIdEquipo as sNumeroActividad, sDescripcion, dCostoDLL, dCostoMN, sIdTipoEquipo as tipo from equipos Where ' +
                'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
              BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
              BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
              BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
              BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
              BuscaObjeto.Open;
              if not (BTraerAnt) then
              begin
                Panel.Visible := True;
                ListaObjeto.Columns[0].Width := 40;
                ListaObjeto.Columns[1].Width := 680;
                ListaObjeto.SetFocus;
              end;
            end;
          lMuestra := False;
        end;

        if Connection.qryBusca2.RecordCount > 0 then
        begin
          solicitadoE := Connection.QryBusca2.FieldValues['dCantidad'];
          Connection.qryBusca.Active := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('select iItemOrden, sDescripcion, dCostoDLL, dCostoMN from equipos where sContrato = :Contrato and sIdEquipo = :Equipo');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
          Connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Equipo').Value := BitacoradeEquipossIdEquipo.Text;
          Connection.qryBusca.Open;

          if Connection.qryBusca.RecordCount > 0 then
          begin
            BitacoradeEquipos.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
            BitacoradeEquipos.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
            BitacoradeEquipos.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
            BitacoradeEquipos.FieldValues['iItemOrden'] := Connection.qryBusca.FieldValues['iItemOrden'];
            BitacoradeEquipos.FieldValues['dSolicitado'] := solicitadoE;
          end;
        end
        else
        begin
          if lMuestra then
          begin
            MessageDlg('Esta Categoría de Equipo No ESTÁ SOLICITADA No podra Agregar al Reporte al día seleccionado.', mtWarning, [mbOk], 0);
            BitacoradeEquipos.Cancel;
          end;
        end;
      end else
        MessageDlg('No hay vigencias registradas.', mtWarning, [mbOk], 0);
    end;

  end;

  if (Global_Equipo = 'No') then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select sDescripcion, dCostoDLL, dCostoMN from equipos where sContrato = :Contrato and sIdEquipo = :Equipo');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
    Connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Equipo').Value := BitacoradeEquipossIdEquipo.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      BitacoradeEquipos.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
      BitacoradeEquipos.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
      BitacoradeEquipos.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
      BitacoradeEquipos.FieldValues['iItemOrden'] := 0;
    end
    else
      if not BitacoradeEquipos.FieldByName('sIdEquipo').IsNull then
        if Trim(BitacoradeEquipos.FieldValues['sIdEquipo']) <> '' then
        begin
          sDescripcion := '%' + Trim(BitacoradeEquipos.FieldValues['sIdEquipo']) + '%';
          BuscaObjeto.Active := False;
          ListaObjeto.Columns.Clear;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[0].FieldName := 'tipo';
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[1].FieldName := 'sDescripcion';
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sIdEquipo as sNumeroActividad, sDescripcion, dCostoDLL, dCostoMN, sIdTipoEquipo as tipo from equipos Where ' +
            'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          if not (BTraerAnt) then
          begin
            Panel.Visible := True;
            ListaObjeto.Columns[0].Width := 40;
            ListaObjeto.Columns[1].Width := 680;
            ListaObjeto.SetFocus;
          end;
        end
  end;


end;


procedure TfrmBitacoraOptativa.BitacoradeMaterialesAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if BitacoradeMateriales.RecordCount = 0 then
      BitacoradeMateriales.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        BitacoradeMateriales.Cancel
  end
  else
  begin
    BitacoradeMateriales.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end
end;

procedure TfrmBitacoraOptativa.BitacoradeMaterialesAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        BitacoradeMateriales.FieldValues['dIdFecha'] := tdIdFecha.Date;
        BitacoradeMateriales.FieldValues['sContrato'] := param_Global_Contrato;
        BitacoradeMateriales.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
        BitacoradeMateriales.FieldValues['dCantidad'] := 0;
        BitacoradeMateriales.FieldValues['dCostoMN']  := 0;
        BitacoradeMateriales.FieldValues['dCostoDLL'] := 0;
        BitacoradePersonal.FieldValues['sHoraInicio'] := QryBitacora.FieldValues['sHoraInicio'];
        BitacoradePersonal.FieldValues['sHoraFinal']  := QryBitacora.FieldValues['sHoraFinal'];
      end
      else
        BitacoradeMateriales.Cancel
    else
      BitacoradeMateriales.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    BitacoradeMateriales.Cancel
  end
end;

procedure TfrmBitacoraOptativa.BitacoradeMaterialesBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacoraOptativa.BitacoradeMaterialesBeforePost(DataSet: TDataSet);
var
  sOpcionLocal: string;
begin
  try
    if (BitacoradeMateriales.FieldValues['sIdMaterial'] = null) or
      (BitacoradeMateriales.FieldValues['sWbs'] = null) or
      (BitacoradeMateriales.FieldValues['sIdMaterial'] = '') or
      (BitacoradeMateriales.FieldValues['sWbs'] = '') then
      BitacoradeMateriales.Cancel
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;
end;



procedure TfrmBitacoraOptativa.BitacoradeMaterialesCalcFields(DataSet: TDataSet);
begin
  if (BitacoradeMateriales.FieldValues['dCantidad'] <> Null) and (BitacoradeMateriales.FieldValues['dCostoMN'] <> Null) then
    BitacoradeMaterialesdMontoMN.Value := BitacoradeMateriales.FieldValues['dCantidad'] * BitacoradeMateriales.FieldValues['dCostoMN'];

  if (BitacoradeMateriales.FieldValues['dCantidad'] <> Null) and (BitacoradeMateriales.FieldValues['dCostoDLL'] <> Null) then
    BitacoradeMaterialesdMontoDLL.Value := BitacoradeMateriales.FieldValues['dCantidad'] * BitacoradeMateriales.FieldValues['dCostoDLL'];

  if BitacoradeMateriales.RecordCount > 0 then
    BitacoradeMaterialesstrDesc.Value := MidStr(BitacoradeMateriales.FieldByName('sDescripcion').AsString, 1, 255);

  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('select sWbs, mDescripcion, dCostoDLL, dCostoMN, sMedida from actividadesxanexo ' +
    'where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Material And ' +
    'sTipoActividad = "Actividad"');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value := BitacoradeMaterialessWbs.Text;
  Connection.qryBusca.Params.ParamByName('Material').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Material').Value := BitacoradeMaterialessIdMaterial.Text;
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    BitacoradeMaterialessMedida.Value := Connection.qryBusca.FieldValues['sMedida'];

end;

procedure TfrmBitacoraOptativa.BitacoradeMaterialessIdMaterialChange(Sender: TField);
var
  sDescripcion: string;
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('select sIdFase, sWbs, mDescripcion, dCostoDLL, dCostoMN, sMedida from actividadesxanexo ' +
    'where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs = :Wbs And sNumeroActividad = :Material And ' +
    'sTipoActividad = "Actividad" And sIdFase <> ""');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value := BitacoradeMaterialessWbs.Text;
  Connection.qryBusca.Params.ParamByName('Material').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Material').Value := BitacoradeMaterialessIdMaterial.Text;
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
  begin
    BitacoradeMateriales.FieldValues['sAnexo'] := Connection.qryBusca.FieldValues['sIdFase'];
    BitacoradeMateriales.FieldValues['sContrato'] := param_global_contrato;
    BitacoradeMateriales.FieldValues['sWbs'] := Connection.qryBusca.FieldValues['sWbs'];
    BitacoradeMateriales.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
    BitacoradeMateriales.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
    BitacoradeMateriales.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['mDescripcion'];
    BitacoradeMateriales.FieldValues['sMedida'] := Connection.qryBusca.FieldValues['sMedida'];
  end
  else
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select sIdFase, sWbs, mDescripcion, dCostoDLL, dCostoMN, sMedida from actividadesxanexo ' +
      'where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Material And ' +
      'sTipoActividad = "Actividad"  And sIdFase <> ""');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.qryBusca.Params.ParamByName('Material').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Material').Value := BitacoradeMaterialessIdMaterial.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      BuscaObjeto.Active := False;
      ListaObjeto.Columns.Clear;
      ListaObjeto.Columns.Add;
      ListaObjeto.Columns[0].FieldName := 'sIdFase';
      ListaObjeto.Columns[0].Width := 50;
      ListaObjeto.Columns.Add;
      ListaObjeto.Columns[1].FieldName := 'sWbs';
      ListaObjeto.Columns[1].Width := 100;
      ListaObjeto.Columns.Add;
      ListaObjeto.Columns[2].FieldName := 'sNumeroActividad';
      ListaObjeto.Columns[2].Width := 100;
      ListaObjeto.Columns.Add;
      ListaObjeto.Columns[3].FieldName := 'sDescripcion';
      ListaObjeto.Columns[3].Width := 550;
      BuscaObjeto.SQL.Clear;
      BuscaObjeto.SQL.Add('Select sIdFase, sWbs, sNumeroActividad, substr(mDescripcion,1,255) as sDescripcion, dCostoDLL, dCostoMN, sMedida, "" as tipo from actividadesxanexo Where ' +
        'sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroActividad = :Material And ' +
        'sTipoActividad = "Actividad" And sIdFase <> "" Order by sWbs');
      BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
      BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
      BuscaObjeto.Params.ParamByName('Convenio').DataType := ftString;
      BuscaObjeto.Params.ParamByName('Convenio').Value := convenio_reporte;
      BuscaObjeto.Params.ParamByName('Material').DataType := ftString;
      BuscaObjeto.Params.ParamByName('Material').Value := BitacoradeMaterialessIdMaterial.Text;
      BuscaObjeto.Open;
      if not (BTraerAnt) then
      begin
        Panel.Visible := True;
        ListaObjeto.SetFocus;
      end;
    end
    else
      if not BitacoradeMateriales.FieldByName('sIdMaterial').IsNull then
        if Trim(BitacoradeMateriales.FieldValues['sIdMaterial']) <> '' then
        begin
          sDescripcion := '%' + Trim(BitacoradeMateriales.FieldValues['sIdMaterial']) + '%';
          BuscaObjeto.Active := False;
          ListaObjeto.Columns.Clear;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[0].FieldName := 'sIdFase';
          ListaObjeto.Columns[0].Width := 50;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[1].FieldName := 'sWbs';
          ListaObjeto.Columns[1].Width := 100;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[2].FieldName := 'sNumeroActividad';
          ListaObjeto.Columns[2].Width := 100;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[3].FieldName := 'sDescripcion';
          ListaObjeto.Columns[3].Width := 550;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sIdFase, sWbs, sNumeroActividad, substr(mDescripcion,1,255) as sDescripcion, dCostoDLL, dCostoMN, sMedida, "" as tipo  from actividadesxanexo Where ' +
            'sContrato = :Contrato And sIdConvenio = :Convenio And mDescripcion Like :Descripcion And ' +
            'sTipoActividad = "Actividad" And sIdFase <> "" Order by sWbs');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
          BuscaObjeto.Params.ParamByName('Convenio').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Convenio').Value := convenio_reporte;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          if not (BTraerAnt) then
          begin
            Panel.Visible := True;
            ListaObjeto.SetFocus;
          end;
        end
  end
end;

procedure TfrmBitacoraOptativa.btnPaqueteEquipoClick(Sender: TObject);
var
  sNumeroPaquete: string;
  lContinua: Boolean;
  QryPaquete: tZReadOnlyQuery;
begin
  if sPernocta = '' then
    if connection.configuracion.FieldValues['sIdPernocta'] = '' then
      sPernocta := OrdenesdeTrabajo.FieldValues['sIdPernocta']
    else
      sPernocta := connection.configuracion.FieldValues['sIdPernocta'];

  sNumeroPaquete := tsPaqueteEquipo.Text;

  if sNumeroPaquete <> '' then
  begin
    QryPaquete := tzReadOnlyQuery.Create(Self);
    QryPaquete.Connection := connection.zconnection;
        // por ultimo si es paquete normal
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('select p.sIdEquipo, p.dCantidad from paquetesdeequipo p ' +
      'inner join equipos e on (p.scontrato = e.sContrato and p.sIdEquipo = e.sIdEquipo) ' +
      'where p.sContrato = :contrato And p.sNumeroPaquete = :paquete order by p.sIdEquipo');
    QryPaquete.Params.ParamByName('contrato').DataType := ftString;
    QryPaquete.Params.ParamByName('contrato').Value := param_global_contrato;
    QryPaquete.Params.ParamByName('paquete').DataType := ftString;
    QryPaquete.Params.ParamByName('paquete').Value := sNumeroPaquete;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      connection.qryBusca2.Active := False;
      connection.qryBusca2.SQL.Clear;
      connection.qryBusca2.SQL.Add('Select sIdPernocta from paquetes_p where sContrato = :contrato And sNumeroPaquete = :paquete');
      connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
      connection.qryBusca2.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.qryBusca2.Params.ParamByName('paquete').DataType := ftString;
      connection.qryBusca2.Params.ParamByName('paquete').Value := sNumeroPaquete;
      connection.qryBusca2.Open;
      if connection.qryBusca2.RecordCount > 0 then
        if connection.qryBusca2.FieldValues['sIdPernocta'] <> '' then
          sPernocta := connection.qryBusca2.FieldValues['sIdPernocta'];

      QryPaquete.First;
      while not QryPaquete.Eof do
      begin
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And ' +
          'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
        connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
        connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        connection.qryBusca.Params.ParamByName('Pernocta').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Pernocta').Value := sPernocta;
        connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Equipo').Value := QryPaquete.FieldValues['sIdEquipo'];
        connection.qryBusca.Open;
        if connection.qryBusca.RecordCount > 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad ' +
            'WHERE sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
            'sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.Params.ParamByName('Pernocta').DataType := ftString;
          connection.zCommand.Params.ParamByName('Pernocta').Value := sPernocta;
          connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
          connection.zCommand.Params.ParamByName('Equipo').Value := QryPaquete.FieldValues['sIdEquipo'];
          connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + QryPaquete.FieldValues['dCantidad'];
          connection.zCommand.ExecSQL;
        end
        else
        begin
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sIdEquipo'] := QryPaquete.FieldValues['sIdEquipo'];
          BitacoradeEquipos.FieldValues['dCantidad'] := QryPaquete.FieldValues['dCantidad'];
          BitacoradeEquipos.FieldValues['sIdPernocta'] := sPernocta;
          BitacoradeEquipos.Post;
        end;
        QryPaquete.Next
      end
    end;
    qryPaquete.Destroy;
  end;
  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Open;
end;

procedure TfrmBitacoraOptativa.FormKeyPress(Sender: TObject; var Key: Char);
{ Manejador del evento OnKeyPress del Form }
{ También hay que establecer la propiedad KeyPreview del Form a True }
begin
  if Key = #13 then { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0; { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0); { vamos al siguiente control }
    end
    else
      if (ActiveControl is TDBGrid) then { si es un TDBGrid }
        with TDBGrid(ActiveControl) do
          if selectedindex < (fieldcount - 1) then
            selectedindex := selectedindex + 1
          else
            selectedindex := 0;
end;

procedure TfrmBitacoraOptativa.PanelExit(Sender: TObject);
begin
  Panel.Visible := False;
end;

procedure TfrmBitacoraOptativa.Paste1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure TfrmBitacoraOptativa.Vigencias();
var
  numFolio: integer;
begin
     //Aqui leo las categorias de Personal Y Verifico que existan en el Oficio
  Connection.QryBusca2.Active;
  Connection.QryBusca2.SQL.Clear;
  Connection.QryBusca2.SQL.Add('Select dFechaVigencia, iFolioOficio, sTipoVigencia from ordenesdetrabajogral  ' +
    'Where sContrato =:Contrato order by dFechaVigencia ');
  Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
  Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_Contrato;
  Connection.QryBusca2.Open;

  if Bandera = True then
  begin
    dParamFecha := Global_Fecha;
    d3 := DateToStr(Global_Fecha);
  end
  else
  begin
    dParamFecha := tdIdFecha.DateTime;
    d3 := DateToStr(tdIdFecha.DateTime);
  end;

  if Connection.QryBusca2.RecordCount > 0 then
  begin
    sTipoOficio := Connection.QryBusca2.FieldValues['sTipoVigencia'];
    while not Connection.QryBusca2.Eof do
    begin
      dFechaAnterior := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      d1 := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      numFolio := Connection.QryBusca2.FieldValues['iFolioOficio'];
      Connection.QryBusca2.Next;
      dFechaActual := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      d2 := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      if ((dParamFecha > dFechaAnterior) and (dParamFecha > dFechaActual) or (dParamFecha > dFechaAnterior) and (dParamFecha < dFechaActual) or (dParamFecha >= dFechaAnterior) and (dParamFecha <= dFechaActual)) then
      begin
        d4 := d1;
        iFolioOficio := numFolio;
      end;
    end;
  end;
end;

function TfrmBitacoraOptativa.ValidaBarco(dParamPersonal: string): boolean;
var
  Q_ValidaBarco: TZReadOnlyQuery;
begin
  Q_ValidaBarco := TZReadOnlyQuery.Create(self);
  Q_ValidaBarco.Connection := connection.zConnection;

  Q_ValidaBarco.Active := False;
  Q_ValidaBarco.SQL.Clear;
  Q_ValidaBarco.SQL.Add('select lValidaBarco from configuracion where sContrato =:Contrato and lValidaBarco = "Si"');
  Q_ValidaBarco.ParamByName('Contrato').AsString := param_global_contrato;
  Q_ValidaBarco.Open;

  if Q_ValidaBarco.RecordCount > 0 then
  begin
    Q_ValidaBarco.Active := False;
    Q_ValidaBarco.SQL.Clear;
    Q_ValidaBarco.SQL.Add('select sIdPersonal from personal where sContrato =:Contrato and sIdPersonal =:Personal and lProrrateo = "Si"');
    Q_ValidaBarco.ParamByName('Contrato').AsString := param_global_contrato;
    Q_ValidaBarco.ParamByName('Personal').AsString := dParamPersonal;
    Q_ValidaBarco.Open;

    if Q_ValidaBarco.RecordCount > 0 then
    begin
      Q_ValidaBarco.Active := False;
      Q_ValidaBarco.SQL.Clear;
      Q_ValidaBarco.SQL.Add('select lStatus from reportediario where sContrato =:Contrato and dIdFecha =:Fecha and lStatus <> "Pendiente" ');
      Q_ValidaBarco.ParamByName('Contrato').AsString := global_contrato_barco;
      Q_ValidaBarco.ParamByName('Fecha').AsDate := tdIdFecha.Date;
      Q_ValidaBarco.Open;

      if Q_ValidaBarco.RecordCount > 0 then
        result := True
      else
        result := False;
    end
    else
      result := False;
  end
  else
    result := False;
end;

end.

