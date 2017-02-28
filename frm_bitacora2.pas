unit frm_bitacora2;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB, UnitTBotonesPermisos,
  frm_barra, DBCtrls, Mask, Global, Menus, Buttons, Utilerias, ExtCtrls, UnitExcepciones,
  ImgList, frxClass, frxDBSet, RXDBCtrl, RxToolEdit, rxCurrEdit, Math, RxLookup, SysUtils, strUtils,
  ZAbstractRODataset, ZDataset, Newpanel, ZAbstractDataset, udbgrid, UnitValidacion, masUtilerias, 
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  AdvOfficeButtons, JvExStdCtrls, JvDBCombobox;

type
  TfrmBitacora2 = class(TForm)
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
    BitacoradePersonalSolicitado: TIntegerField;
    BitacoradeEquipossolicitado: TIntegerField;
    BitacoradePersonaliItemOrden: TIntegerField;
    BitacoradeEquiposiItemOrden: TIntegerField;
    IngresarTotaldelaVigencia1: TMenuItem;
    BorrarlasCategoriasen01: TMenuItem;
    Label6: TLabel;
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
    TabSheet1: TTabSheet;
    InsertaMaterial: TMenuItem;
    gridMaterialesxPartida: TDBGrid;
    bitacorademateriales: TZQuery;
    ds_bitacorademateriales: TDataSource;
    bitacoradematerialesdIdFecha: TDateField;
    bitacoradematerialesiIdDiario: TIntegerField;
    bitacoradematerialessIdMaterial: TStringField;
    bitacoradematerialesdCantidad: TFloatField;
    bitacoradematerialessMedida: TStringField;
    bitacoradematerialessContrato: TStringField;
    bitacoradematerialessDescripcion: TStringField;
    bitacoradematerialesdSolicitado: TFloatField;
    bitacoradematerialessWbs: TStringField;
    CargarPEMxPartida: TMenuItem;
    GroupBox2: TGroupBox;
    tdTotalEquipo: TCurrencyEdit;
    SumEquipo: TZReadOnlyQuery;
    BitacoradePersonaldSolicitado: TFloatField;
    BitacoradeEquiposdSolicitado: TFloatField;
    QryBitacoraGerencial: TStringField;
    QryBitacoralRepitePersonal: TStringField;
    chkConsidera: TAdvOfficeCheckBox;
    optConsidera: TMenuItem;
    QryBitacorasHoraInicio: TStringField;
    QryBitacorasHoraFinal: TStringField;
    grid_bitacorapersonal: TRxDBGrid;
    BitacoradePersonalsTipoObra: TStringField;
    BitacoradePersonallAplicaPernocta: TStringField;
    Grid_BitacoradeEquipos: TRxDBGrid;
    BitacoradeEquipossTipoObra: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure ActualizaPersonal();
    procedure ActualizaEquipos();
    procedure ActualizaMaterialesxpartida();
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
    procedure Vigencias();
    procedure FormCreate(Sender: TObject);
    procedure IngresarTotaldelaVigencia1Click(Sender: TObject);
    procedure BorrarlasCategoriasen01Click(Sender: TObject);
    procedure tmMotivosDblClick(Sender: TObject);
    procedure InsertaMaterialClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure bitacoradematerialesCalcFields(DataSet: TDataSet);
    procedure bitacoradematerialesAfterEdit(DataSet: TDataSet);
    procedure bitacoradematerialesAfterInsert(DataSet: TDataSet);
    procedure bitacoradematerialesBeforeDelete(DataSet: TDataSet);
    procedure bitacoradematerialesBeforePost(DataSet: TDataSet);
    procedure bitacoradematerialessIdMaterialChange(Sender: TField);
    procedure CargarPEMxPartidaClick(Sender: TObject);
    function ValidaBarco(dParamPersonal: string): boolean;
    procedure BitacoradePersonalBeforeEdit(DataSet: TDataSet);
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
    procedure gridMaterialesxPartidaMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure gridMaterialesxPartidaMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure gridMaterialesxPartidaTitleClick(Column: TColumn);
    procedure dTiempoExtrafChange(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure BitacoradeEquiposAfterScroll(DataSet: TDataSet);
    procedure optConsideraClick(Sender: TObject);
    procedure grid_bitacorapersonalGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_BitacoradeEquiposGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacora2: TfrmBitacora2;
  sPaquete, sDescripcion2: string;
  sPernocta: string;
  sPlataforma: string;
  Categoria: string;
  lBorra, BanTE: Boolean;
  solicitadop, solicitadoe, dHorasExtras: Double;
  d1, d2, d3, d4, sDescripcion: string;
  dFechaAnterior, dFechaActual, dParamFecha: TDate;
  Bandera, Encontrado, BandTE: Boolean;
  total, Busqueda, Indicar: Byte;
  stipoPersonal, DuplicaPart: string;
  zTipoPersonal : tzReadOnlyQuery;

  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  utgrid3: ticdbgrid;
  utgrid4: ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_comentariosxanexo, frm_bitacoraxalcance;

{$R *.dfm}

function TfrmBitacora2.lExisteEquipo(sEquipo: string): Boolean;
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

procedure TfrmBitacora2.FormShow(Sender: TObject);
var
  qryPaquetes: tZReadOnlyQuery;
  iDiario: Integer;
  sIdDepartamento: string;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', BitacoradePersonal);
  UtGrid := TicdbGrid.create(grid_bitacora);
  UtGrid2 := TicdbGrid.create(grid_bitacorapersonal);
  UtGrid3 := TicdbGrid.create(grid_bitacoradeequipos);
  UtGrid4 := TicdbGrid.create(gridmaterialesxpartida);
 { sNumeroFicha.Enabled := False; }
  sNombre.Enabled := false;
  sPuesto.Enabled := false;
  sHoraInicio.Enabled := false;
  sHoraFinal.Enabled := false;
  dTiempoExtraf.Enabled := false;
  //yavienedeRegreso      := 'No' ;

  tdIdFecha.Date := date;
  sPernocta := '';
  sPlataforma := '';
  connection.configuracion.refresh;

  zTipoPersonal := tzReadOnlyQuery.Create(self);
  zTipoPersonal.Connection := connection.zConnection;

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

  //Consultamos los tipos de personal que se deben mostrar en personal y equipo..
  zTipoPersonal.Active := FalsE;
  zTipoPersonal.SQL.Clear;
  zTipoPersonal.SQL.Add('select * from tiposdepersonal where lPersonalEQ = "Si"');
  zTipoPersonal.Open;

  while not zTipoPersonal.Eof do
  begin
      grid_bitacorapersonal.Columns[5].PickList.add(zTipoPersonal.FieldValues['sIdTipoPersonal']);
      zTipoPersonal.Next;
  end;

   //Consultamos los tipos de personal que se deben mostrar en personal y equipo..
  zTipoPersonal.Active := FalsE;
  zTipoPersonal.SQL.Clear;
  zTipoPersonal.SQL.Add('select * from tiposdeequipo where lPersonalEQ = "Si"');
  zTipoPersonal.Open;

  while not zTipoPersonal.Eof do
  begin
      grid_bitacoradeEquipos.Columns[4].PickList.add(zTipoPersonal.FieldValues['sIdTipoEquipo']);
      zTipoPersonal.Next;
  end;

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear;
  if True then
    if global_grupo = 'INTEL-CODE' then
      OrdenesdeTrabajo.SQL.Add('Select ot.lPersonalxPartida, ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
        'from ordenesdetrabajo ot where ot.sContrato =:Contrato And ot.cIdStatus =:Status order by ot.sNumeroOrden')
    else
      OrdenesdeTrabajo.SQL.Add('Select ot.lPersonalxPartida, ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
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


  QryBitacora.Active := False;
  if OrdenesdeTrabajo.FieldValues['lPersonalxPartida'] = 'Si' then
  begin
      QryBitacora.SQL.Clear;
      QryBitacora.SQL.Add('SELECT b.sContrato, b.sNumeroOrden, b.iIdDiario, b.sIdTurno, b.sWbs, b.sNumeroActividad, b.sIdTipoMovimiento, '+
                          'b.dCantidad, b.dAvance, b.mDescripcion, b.lAlcance, t.sDescripcion, concat(b.sHoraInicio,"-" ,b.sHorafinal) as Gerencial, ' +
                          'a.sMedida, a.dVentaMN, a.dVentaDLL, b.lRepitePersonal, b.sHoraInicio, b.sHoraFinal '+
                          'FROM bitacoradeactividades b '+
                          'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Tiempo Muerto") '+
                          'LEFT JOIN actividadesxorden a ON (a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden and a.sWbs = b.sWbs and a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :convenio) '+
                          'Where b.sContrato = :contrato and b.dIdFecha = :fecha and b.sNumeroOrden = :Orden and b.sIdTurno= :Turno order by :Ordenado');
  end;
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
  qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := global_Turno_reporte;
  qryBitacora.Open;

  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaMaterialesxpartida();

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
      BuscaObjeto.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno,  ' +
        ' sNumeroOrden,sNumeroActividad, sWbs, sIdDepartamento, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion) ' +
        ' VALUES (:contrato, :fecha, :diario, :turno, :orden,:actividad, :wbs,:depto, :tipo, :inicio, :final, :avance, :cantidad, :descripcion)');
      BuscaObjeto.Params.ParamByName('contrato').DataType := ftString;
      BuscaObjeto.Params.ParamByName('contrato').value := param_Global_Contrato;
      BuscaObjeto.Params.ParamByName('fecha').DataType := ftDate;
      BuscaObjeto.Params.ParamByName('fecha').value := global_fecha;
      BuscaObjeto.Params.ParamByName('diario').DataType := ftInteger;
      BuscaObjeto.Params.ParamByName('diario').value := iDiario;
      BuscaObjeto.Params.ParamByName('turno').DataType := ftString;
      BuscaObjeto.Params.ParamByName('turno').value := global_turno_reporte;
      BuscaObjeto.Params.ParamByName('depto').DataType := ftString;
      BuscaObjeto.Params.ParamByName('depto').value := sIdDepartamento;
      BuscaObjeto.Params.ParamByName('orden').DataType := ftString;
      if global_orden = '' then
        BuscaObjeto.Params.ParamByName('orden').value := tsNumeroOrden.KeyValue
      else
        BuscaObjeto.Params.ParamByName('orden').value := global_orden;
      BuscaObjeto.Params.ParamByName('wbs').DataType := ftString;
      BuscaObjeto.Params.ParamByName('wbs').value := Null;
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
      BuscaObjeto.ExecSQL;

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

  //Ahora los lugares de pernocta de personal y equipo
  PernoctaPersonal.First;
  while not PernoctaPersonal.Eof do
  begin
      grid_bitacorapersonal.Columns[2].PickList.add(PernoctaPersonal.FieldValues['sIdPernocta']);
      grid_bitacoradeequipos.Columns[2].PickList.add(PernoctaPersonal.FieldValues['sIdPernocta']);
      PernoctaPersonal.Next;
  end;

  //Ahora las plataformas donde labora el personal
  plataformas.First;
  while not plataformas.Eof do
  begin
      grid_bitacorapersonal.Columns[3].PickList.add(plataformas.FieldValues['sIdPlataforma']);
      plataformas.Next;
  end;

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

procedure TfrmBitacora2.frmBarra2btnAddClick(Sender: TObject);
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

procedure TfrmBitacora2.frmBarra2btnCancelClick(Sender: TObject);
begin
  frmBarra2.btnCancelClick(Sender);
  if qryTiemposExtras.State in [dsInsert, dsEdit] then
    qryTiemposExtras.CancelUpdates;
end;

procedure TfrmBitacora2.frmBarra2btnDeleteClick(Sender: TObject);
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

procedure TfrmBitacora2.frmBarra2btnEditClick(Sender: TObject);
begin
  dHorasExtras := qryTiemposExtras.FieldValues['dTiempoExtra'];
  sHoraInicio.Enabled := True;
  sHoraFinal.Enabled := True;
  dTiempoExtraf.Enabled := True;
  sNumeroFicha.Enabled := True;
  QryTiemposExtras.Edit;
  frmBarra2.btnEditClick(Sender);
end;

procedure TfrmBitacora2.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  Panel1.Visible := False;
end;

procedure TfrmBitacora2.frmBarra2btnPostClick(Sender: TObject);

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
  try

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
        try
          qryTiemposExtras.Post;
        except
          on E: Exception do
          begin
            if pos('Duplicate', E.Message) > 0 then
            begin
              MessageDlg('Registro duplicado!', mtError, [mbOk], 0);
            end
            else
              MessageDlg('Error: ' + E.Message, mtError, [mbOk], 0);
//            if qryTiemposExtras.State in [dsInsert, dsEdit] then
//              qryTiemposExtras.CancelUpdates;
          end;
        end;
      end;
  finally
    sNumeroFicha.Enabled := False;
    sHoraInicio.Enabled := False;
    sHoraFinal.Enabled := False;
    dTiempoExtraf.Enabled := True;
    cmdBuscar.Enabled := False;
    frmBarra2.btnCancel.Click;
  end;
end;

procedure TfrmBitacora2.frmBarra2btnRefreshClick(Sender: TObject);
begin
  qryTiemposExtras.Refresh;
end;


procedure TfrmBitacora2.gridMaterialesxPartidaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid4.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacora2.gridMaterialesxPartidaMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid4.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacora2.gridMaterialesxPartidaTitleClick(Column: TColumn);
begin
  UtGrid4.DbGridTitleClick(Column);
end;

procedure TfrmBitacora2.Grid_BitacoradeEquiposGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if Bitacoradeequipos.RecordCount > 0 then
    begin
        AFont.Color := esColor(0);
        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoObra').AsString = 'PU' then
        begin
            AFont.Color := esColor(0);
            Afont.Style := [fsBold];
            Background  := $00FFAE5E;
        end;
    end;
end;

procedure TfrmBitacora2.Grid_BitacoradeEquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid3.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacora2.Grid_BitacoradeEquiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid3.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacora2.Grid_BitacoradeEquiposTitleClick(Column: TColumn);
begin
  UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmBitacora2.tdIdFechaExit(Sender: TObject);
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
  qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  qryBitacora.Open;

  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaMaterialesxPartida();

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
  ActualizaMaterialesxPartida();

  tdIdFecha.Color := global_color_salida;
  Bandera := False;
  Vigencias();
end;

procedure TfrmBitacora2.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden.SetFocus
end;


procedure TfrmBitacora2.tmMotivosDblClick(Sender: TObject);
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

procedure TfrmBitacora2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Grid_Bitacora.SetFocus
end;

procedure TfrmBitacora2.tsIdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdPernocta.SetFocus
end;

procedure TfrmBitacora2.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdPlataforma.SetFocus
end;


procedure TfrmBitacora2.ActualizaPersonal();
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

procedure TfrmBitacora2.ActualizaEquipos();
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




procedure TfrmBitacora2.ActualizaMaterialesxPartida();
begin
  bitacorademateriales.Active := False;
  bitacorademateriales.Params.ParamByName('contrato').DataType := ftString;
  bitacorademateriales.Params.ParamByName('contrato').Value := param_global_contrato;
  bitacorademateriales.Params.ParamByName('fecha').DataType := ftDate;
  bitacorademateriales.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  bitacorademateriales.Params.ParamByName('Diario').DataType := ftInteger;
  if QryBitacora.RecordCount > 0 then
    bitacorademateriales.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario']
  else
    bitacorademateriales.Params.ParamByName('Diario').Value := -1;
  bitacorademateriales.Params.ParamByName('Wbs').DataType := ftString;
  bitacorademateriales.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
  bitacorademateriales.Open;
end;

procedure TfrmBitacora2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  utgrid.Destroy;
  utgrid2.Destroy;
  utgrid3.Destroy;
  utgrid4.Destroy;
  BotonPermiso.free;
  BitacoradePersonal.Cancel;
  BitacoradeEquipos.Cancel;
  bitacorademateriales.Cancel;
  Action := cafree;
end;

procedure TfrmBitacora2.FormCreate(Sender: TObject);
begin
  PageBitacora.ActivePageIndex := 0;
  Bandera := True;
  Vigencias();
end;

procedure TfrmBitacora2.tsNumeroOrdenExit(Sender: TObject);
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
    qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
    qryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    QryBitacora.Open;

    ActualizaPersonal();
    ActualizaEquipos();
    ActualizaMaterialesxpartida();

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



procedure TfrmBitacora2.btnPaquetePersonalClick(Sender: TObject);
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

procedure TfrmBitacora2.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_color_entrada
end;

procedure TfrmBitacora2.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmBitacora2.tsIdPernoctaEnter(Sender: TObject);
begin
  tsIdPernocta.Color := global_color_entrada
end;

procedure TfrmBitacora2.tsIdPernoctaExit(Sender: TObject);
begin
  tsIdPernocta.Color := global_color_salida
end;

procedure TfrmBitacora2.tsIdPernoctaEquipoEnter(Sender: TObject);
begin
  tsIdPernoctaEquipo.Color := global_color_entrada
end;

procedure TfrmBitacora2.tsIdPernoctaEquipoExit(Sender: TObject);
begin
  tsIdPernoctaEquipo.Color := global_color_salida
end;

procedure TfrmBitacora2.ListaObjetoDblClick(Sender: TObject);
begin
  if PageBitacora.ActivePageIndex = 0 then
    grid_bitacorapersonal.SetFocus
  else
    if PageBitacora.ActivePageIndex = 1 then
      grid_bitacoradeequipos.SetFocus
    else
      if PageBitacora.ActivePageIndex = 2 then
        GridMaterialesxPartida.SetFocus;
end;

procedure TfrmBitacora2.ListaObjetoKeyPress(Sender: TObject;
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
          GridMaterialesxPartida.SetFocus;
end;



procedure TfrmBitacora2.optConsideraClick(Sender: TObject);
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

procedure TfrmBitacora2.ListaObjetoExit(Sender: TObject);
begin
  if Panel.Visible = True then
  begin
    if BuscaObjeto.RecordCount > 0 then
      if PageBitacora.ActivePageIndex = 0 then
      begin
        BitacoradePersonal.FieldValues['sIdPersonal'] := BuscaObjeto.FieldValues['sNumeroActividad'];
        BitacoradePersonal.FieldValues['iItemOrden']  := BuscaObjeto.FieldValues['iItemOrden'];
      end
      else
        if PageBitacora.ActivePageIndex = 1 then
        begin
          BitacoradeEquipos.FieldValues['sIdEquipo']  := BuscaObjeto.FieldValues['sNumeroActividad'];
          BitacoradeEquipos.FieldValues['iItemOrden'] := BuscaObjeto.FieldValues['iItemOrden'];
        end
        else
          if PageBitacora.ActivePageIndex = 2 then
          begin
            bitacorademateriales.FieldValues['sIdMaterial'] := BuscaObjeto.FieldValues['sIdInsumo'];
            GridMaterialesxPartida.SetFocus
          end;

    Panel.Visible := False;
  end
end;


procedure TfrmBitacora2.grid_bitacoraEnter(Sender: TObject);
begin
  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaMaterialesxpartida()
end;

procedure TfrmBitacora2.Grid_BitacoraTitleBtnClick(Sender: TObject;
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
  qryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  qryBitacora.Params.ParamByName('Ordenado').Value := sCampo;
  QryBitacora.Open;
end;

procedure TfrmBitacora2.Grid_BitacoraTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmBitacora2.iempoExtras1Click(Sender: TObject);
begin
  if BitacoradePersonal.RecordCount > 0 then
  begin
    groupMotivos.Visible := False;
    Panel1.Visible := not Panel1.Visible;
    Panel1.Height := 342;
    Panel1.Width  := 597;
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

procedure TfrmBitacora2.IngresarTotaldelaVigencia1Click(Sender: TObject);
var
  dFecha: tDate;
  qryOrdenes: tzReadOnlyquery;
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;
  sDescripcion: string;
begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}
  if d4 <> '' then
  begin
    sTipoVigencia := ''; //DIARIA o CONSOLIDADA
    Connection.Auxiliar.Active := False;
    Connection.Auxiliar.SQL.Clear;
    Connection.Auxiliar.SQL.Add('select sTipoVigencia from ordenesdetrabajogral where sContrato =:contrato And dFechaVigencia =:FechaVigencia');
    Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
    Connection.Auxiliar.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    Connection.Auxiliar.Params.ParamByName('FechaVigencia').DataType := ftDate;
    Connection.Auxiliar.Params.ParamByName('FechaVigencia').Value := d4;
    Connection.Auxiliar.Open;
    if Connection.Auxiliar.RecordCount > 0 then
    begin
      sTipoVigencia := Connection.Auxiliar.FieldValues['sTipoVigencia'];
    end
    else
    begin
      MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);
      exit;
    end;
  end
  else
  begin
    MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);
    exit;
  end;

  Connection.Auxiliar.Active := False;
  Connection.Auxiliar.SQL.Clear;

     { 20/feb/2012: adal, leer datos segun el tipo de vigencia}
  if sTipoVigencia = 'DIARIA' then
    Connection.Auxiliar.SQL.Add('SELECT sNumeroActividad,dCantidad FROM detallerecursosxoficio ' +
      ' where sContrato = :Contrato and dFechaDia=:FechaVigencia and sAnexo=:Anexo');

  if sTipoVigencia = 'CONSOLIDADA' then
    Connection.Auxiliar.SQL.Add('select sNumeroActividad,dCantidad from movtorecursosxoficio ' +
      'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:FechaVigencia) and month(dFechaVigencia)=month(:FechaVigencia) ORDER by iItemOrden');
  if sTipoVigencia <> '' then
  begin
    if MessageDlg('Desea Cargar el Personal de la Vigencia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qryOrdenes := tzReadOnlyQuery.Create(Self);
      qryOrdenes.Connection := connection.zConnection;
      vigencias;

      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('Anexo').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Anexo').Value := global_labelPersonal;
      Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      Connection.Auxiliar.Params.ParamByName('FechaVigencia').DataType := ftDate;
      Connection.Auxiliar.Params.ParamByName('FechaVigencia').Value := d4;
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount = 0 then
        MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);

      dFecha := tdIdFecha.Date - 1;
      qryOrdenes.Active := False;
      qryOrdenes.SQL.Clear;
      qryOrdenes.SQL.Add('Select * FROM ordenesdetrabajo Where sContrato = :Contrato And sNumeroOrden = :Orden');
      qryOrdenes.Params.ParamByName('Contrato').DataType := ftString;
      qryOrdenes.Params.ParamByName('Contrato').Value := param_global_Contrato;
      qryOrdenes.Params.ParamByName('Orden').DataType := ftString;
      qryOrdenes.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      qryOrdenes.Open;
      if Connection.Auxiliar.RecordCount > 0 then
      begin
        while not Connection.Auxiliar.Eof do
        begin
        {Buscar descripcion del personal}
          Qry.Active := false;
          Qry.SQL.Clear;
          Qry.SQL.Add('select sDescripcion from personal where sContrato=:contrato and sIdPersonal=:personal');
          Qry.ParamByName('contrato').AsString := param_global_contrato;
          Qry.ParamByName('personal').AsString := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          Qry.Open;
          sDescripcion := '';
          if Qry.RecordCount > 0 then
            sDescripcion := Qry.FieldValues['sDescripcion'];


         {insertar el personal obtenido de la vigencia}
          BitacoradePersonal.Append;
          BitacoradePersonal.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradePersonal.FieldValues['sIdPlataforma'] := qryOrdenes.FieldValues['sIdPlataforma'];
          BitacoradePersonal.FieldValues['sIdPersonal'] := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          BitacoradePersonal.FieldValues['dCantidad'] := Connection.Auxiliar.FieldValues['dCantidad'];
          BitacoradePersonal.FieldValues['sIdPernocta'] := qryOrdenes.FieldValues['sIdPernocta'];
          BitacoradePersonal.FieldValues['sDescripcion'] := sDescripcion;
          BitacoradePersonal.FieldValues['iItemOrden'] := 0;
          BitacoradePersonal.FieldValues['sHoraInicio'] := '00:00';
          BitacoradePersonal.FieldValues['sHoraFinal'] := '00:00';
          BitacoradePersonal.FieldValues['sFactor'] := '';
          BitacoradePersonal.FieldValues['dCostoMN'] := 0;
          BitacoradePersonal.FieldValues['dCostoDLL'] := 0;
          BitacoradePersonal.FieldValues['sAgrupaPersonal'] := '*';
          BitacoradePersonal.FieldValues['sTipoPernocta'] := '1';

          BitacoradePersonal.Post;
          Connection.Auxiliar.Next
        end;
      end;
      MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
    end;


    if MessageDlg('Desea Cargar el Equipo de la Vigencia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('Anexo').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Anexo').Value := global_labelEquipo;
      Connection.Auxiliar.Params.ParamByName('Contrato').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      Connection.Auxiliar.Params.ParamByName('FechaVigencia').DataType := ftDate;
      Connection.Auxiliar.Params.ParamByName('FechaVigencia').Value := d4;
      Connection.Auxiliar.Open;
      if Connection.Auxiliar.RecordCount = 0 then
        MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        while not Connection.Auxiliar.Eof do
        begin
        {Buscar descripcion del equipo}
          Qry.Active := false;
          Qry.SQL.Clear;
          Qry.SQL.Add('select sDescripcion from equipos where sContrato=:contrato and sIdEquipo=:equipo');
          Qry.ParamByName('contrato').AsString := param_global_contrato;
          Qry.ParamByName('equipo').AsString := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          Qry.Open;
          sDescripcion := '';
          if Qry.RecordCount > 0 then
            sDescripcion := Qry.FieldValues['sDescripcion'];

         {insertar el equipo obtenido de la vigencia}
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          BitacoradeEquipos.FieldValues['dCantidad'] := Connection.Auxiliar.FieldValues['dCantidad'];
          BitacoradeEquipos.FieldValues['sIdPernocta'] := qryOrdenes.FieldValues['sIdPlataforma'];
          BitacoradeEquipos.FieldValues['sDescripcion'] := sDescripcion;
          BitacoradeEquipos.FieldValues['iItemOrden'] := 0;
          BitacoradeEquipos.FieldValues['sHoraInicio'] := '00:00';
          BitacoradeEquipos.FieldValues['sHoraFinal'] := '00:00';
          BitacoradeEquipos.FieldValues['sFactor'] := '';
          BitacoradeEquipos.FieldValues['dCostoMN'] := 0;
          BitacoradeEquipos.FieldValues['dCostoDLL'] := 0;
          BitacoradeEquipos.Post;
          Connection.Auxiliar.Next
        end;
      end;
      MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
    end;
  end
  else
    MessageDlg('No Existe Vigencias Para esa Fecha.', mtInformation, [mbOk], 0);
end;


procedure TfrmBitacora2.InsertaMaterialClick(Sender: TObject);
begin
  if MessageDlg('Desea Cargar el Analisis de la Partida Seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      //Analisis de la partida personal...
    if pageBitacora.ActivePageIndex = 0 then
    begin
      BitacoradePersonal.EmptyDataSet;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      Connection.Auxiliar.SQL.Add('select r.sNumeroActividad, p.sIdPersonal, r.dCantidad as dSolicitado, p.iItemOrden, p.sDescripcion from recursospersonalnuevos r ' +
        'inner join personal p ' +
        'on (p.sContrato = r.sContrato and p.sIdPersonal = r.sIdPersonal) ' +
        'Where r.sContrato =:contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad ');
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('contrato').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('contrato').Value := param_global_contrato;
      Connection.Auxiliar.Params.ParamByName('Wbs').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
      Connection.Auxiliar.Params.ParamByName('Actividad').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacoradepersonal where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.zCommand.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.ParamByName('Contrato').Value := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.ParamByName('Fecha').Value := tdIdFecha.Date;
        connection.zCommand.ParamByName('Diario').DataType := ftInteger;
        connection.zCommand.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ExecSQL;
        while not Connection.Auxiliar.Eof do
        begin
          BitacoradePersonal.Append;
          BitacoradePersonal.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradePersonal.FieldValues['dIdFecha'] := tdIdFecha.Date;
          BitacoradePersonal.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
          BitacoradePersonal.FieldValues['sIdPersonal'] := Connection.Auxiliar.FieldValues['sIdPersonal'];
          BitacoradePersonal.FieldValues['sDescripcion'] := Connection.Auxiliar.FieldValues['sDescripcion'];
          BitacoradePersonal.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta'];
          BitacoradePersonal.FieldValues['sIdPlataforma'] := OrdenesdeTrabajo.FieldValues['sIdPlataforma'];
          BitacoradePersonal.FieldValues['sHoraInicio'] := '00:00';
          BitacoradePersonal.FieldValues['sHoraFinal'] := '00:00';
          BitacoradePersonal.FieldValues['dCantidad'] := 0;
          BitacoradePersonal.FieldValues['sFactor'] := '';
          BitacoradePersonal.FieldValues['dCostoMN'] := 0;
          BitacoradePersonal.FieldValues['dCostoDLL'] := 0;
          BitacoradePersonal.FieldValues['dMontoMN'] := 0;
          BitacoradePersonal.FieldValues['dMontoDLL'] := 0;
          BitacoradePersonal.FieldValues['mMotivos'] := '';
          BitacoradePersonal.FieldValues['solicitado'] := Connection.Auxiliar.FieldValues['dSolicitado'];
          BitacoradePersonal.FieldValues['iItemOrden'] := Connection.Auxiliar.FieldValues['iItemOrden'];
          BitacoradePersonal.FieldValues['sTipoPernocta'] := tsIdPernocta.KeyValue;
          BitacoradePersonal.FieldValues['sTipoPernocta'] := cmbsTipoPernocta.KeyValue;
          BitacoradePersonal.Post;
          Connection.Auxiliar.Next
        end;
        panel.Visible := False;
        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
        ActualizaMaterialesxpartida();
      end
      else
        MessageDlg('No exite Analisis para esta partida.', mtInformation, [mbOk], 0);
    end;


      //Analisis de la partida equipos...
    if pageBitacora.ActivePageIndex = 1 then
    begin
      BitacoradeEquipos.EmptyDataSet;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      Connection.Auxiliar.SQL.Add('select r.sNumeroActividad, e.sIdEquipo, r.dCantidad as dSolicitado, e.iItemOrden, e.sDescripcion from recursosequiposnuevos r ' +
        'inner join equipos e ' +
        'on (e.sContrato = r.sContrato and e.sIdEquipo = r.sIdEquipo)  ' +
        'Where r.sContrato =:contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad ');
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('contrato').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('contrato').Value := param_global_contrato;
      Connection.Auxiliar.Params.ParamByName('Wbs').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
      Connection.Auxiliar.Params.ParamByName('Actividad').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacoradeequipos where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.zCommand.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.ParamByName('Contrato').Value := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.ParamByName('Fecha').Value := tdIdFecha.Date;
        connection.zCommand.ParamByName('Diario').DataType := ftInteger;
        connection.zCommand.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ExecSQL;
        while not Connection.Auxiliar.Eof do
        begin
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradeEquipos.FieldValues['dIdFecha'] := tdIdFecha.Date;
          BitacoradeEquipos.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
          BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.Auxiliar.FieldValues['sIdEquipo'];
          BitacoradeEquipos.FieldValues['sDescripcion'] := Connection.Auxiliar.FieldValues['sDescripcion'];
          BitacoradeEquipos.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta'];
          BitacoradeEquipos.FieldValues['sHoraInicio'] := '00:00';
          BitacoradeEquipos.FieldValues['sHoraFinal'] := '00:00';
          BitacoradeEquipos.FieldValues['dCantidad'] := 0;
          BitacoradeEquipos.FieldValues['sFactor'] := '';
          BitacoradeEquipos.FieldValues['dCostoMN'] := 0;
          BitacoradeEquipos.FieldValues['dCostoDLL'] := 0;
          BitacoradeEquipos.FieldValues['dMontoMN'] := 0;
          BitacoradeEquipos.FieldValues['dMontoDLL'] := 0;
          BitacoradeEquipos.FieldValues['solicitado'] := Connection.Auxiliar.FieldValues['dSolicitado'];
          BitacoradeEquipos.FieldValues['iItemOrden'] := Connection.Auxiliar.FieldValues['iItemOrden'];
          BitacoradeEquipos.Post;
          Connection.Auxiliar.Next
        end;
        panel.Visible := False;
        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
        ActualizaMaterialesxpartida();
      end
      else
        MessageDlg('No exite Analisis para esta partida.', mtInformation, [mbOk], 0);
    end;
      // Analidis de la partida Materiales...
    if pageBitacora.ActivePageIndex = 2 then
    begin
      bitacorademateriales.EmptyDataSet;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      Connection.Auxiliar.SQL.Add('select r.sNumeroActividad, r.sIdInsumo, r.dCantidad as dSolicitado, i.mDescripcion, i.sMedida from recursosanexosnuevos r ' +
        'inner join insumos i ' +
        'on (i.sContrato = r.sContrato and i.sIdInsumo = r.sIdInsumo) ' +
        'Where r.sContrato =:contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad ');
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('contrato').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('contrato').Value := param_global_contrato;
      Connection.Auxiliar.Params.ParamByName('Wbs').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
      Connection.Auxiliar.Params.ParamByName('Actividad').DataType := ftString;
      Connection.Auxiliar.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacorademateriales where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario and sWbs =:Wbs ');
        connection.zCommand.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.ParamByName('Contrato').Value := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.ParamByName('Fecha').Value := tdIdFecha.Date;
        connection.zCommand.ParamByName('Diario').DataType := ftInteger;
        connection.zCommand.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ParamByName('Wbs').DataType := ftString;
        connection.zCommand.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
        connection.zCommand.ExecSQL;
        while not Connection.Auxiliar.Eof do
        begin
          bitacorademateriales.Append;
          bitacorademateriales.FieldValues['sContrato'] := param_Global_Contrato;
          bitacorademateriales.FieldValues['dIdFecha'] := tdIdFecha.Date;
          bitacorademateriales.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
          bitacorademateriales.FieldValues['sIdMaterial'] := Connection.Auxiliar.FieldValues['sIdInsumo'];
          bitacorademateriales.FieldValues['dCantidad'] := 0;
          bitacorademateriales.FieldValues['sDescripcion'] := MidStr(Connection.Auxiliar.FieldValues['mDescripcion'], 1, 255);
          bitacorademateriales.FieldValues['sMedida'] := Connection.Auxiliar.FieldValues['sMedida'];
          bitacorademateriales.FieldValues['dSolicitado'] := Connection.Auxiliar.FieldValues['dSolicitado'];
          bitacorademateriales.Post;
          Connection.Auxiliar.Next
        end;
        panel.Visible := False;
        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
        ActualizaMaterialesxpartida();
      end
      else
        MessageDlg('No exiten Recursos para esta partida.', mtInformation, [mbOk], 0);
    end;
  end;

end;

procedure TfrmBitacora2.Grid_BitacoraGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdTurno').AsString <> global_turno_reporte then
    Background := clGradientInactiveCaption
end;



procedure TfrmBitacora2.Grid_BitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacora2.Grid_BitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacora2.grid_bitacorapersonalDblClick(Sender: TObject);
begin
     // checo si el personal es tiempo extra, si no es tiempo extra se oculta la ventana .....
  Panel1.Visible := False;

  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdTipoPersonal from personal Where sContrato = :contrato and sIdPersonal = :Personal');
  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  connection.QryBusca.Params.ParamByName('personal').DataType := ftString;
//     connection.QryBusca.Params.ParamByName('personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'] + 1;
  connection.QryBusca.Params.ParamByName('personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
    if (strPos(pchar('|EXT|C-13|C-17|'), pchar(connection.QryBusca.FieldByName('sIdTipoPersonal').AsString)) = nil) then
      GroupMotivos.Visible := False
    else
      GroupMotivos.Visible := True
  else
    GroupMotivos.Visible := False;
  connection.QryBusca.Active := False
end;

procedure TfrmBitacora2.grid_bitacorapersonalGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if Bitacoradepersonal.RecordCount > 0 then
    begin
        AFont.Color := esColor(0);
        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoObra').AsString = 'PU' then
        begin
            AFont.Color := esColor(0);
            Afont.Style := [fsBold];
            Background  := $00FFAE5E;
        end;
    end;

end;

procedure TfrmBitacora2.grid_bitacorapersonalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmBitacora2.grid_bitacorapersonalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmBitacora2.grid_bitacorapersonalTitleClick(Column: TColumn);
begin
  UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmBitacora2.CargaAnteriorClick(Sender: TObject);
var
  dFecha: tDate;
  lEventoRealizado: boolean;
  QyrPersonalAnterior: tzReadOnlyquery;
begin
  if lBorra then
  begin
    QyrPersonalAnterior := tzReadOnlyQuery.Create(Self);
    QyrPersonalAnterior.Connection := connection.zConnection;
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        if MessageDlg('Desea adicionar todo el personal existente en el reporte anterior?',
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
                  'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal and sTipoObra =:Tipo ');
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
                connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Tipo').Value := QyrPersonalAnterior.FieldValues['sTipoObra'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradepersonal SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                    'sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal and sTipoObra =:Tipo ');
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
                  connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Tipo').Value := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  sPernocta := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradePersonal.Append;
                  BitacoradePersonal.FieldValues['sIdPlataforma'] := QyrPersonalAnterior.FieldValues['sIdPlataforma'];
                  BitacoradePersonal.FieldValues['sIdPersonal'] := QyrPersonalAnterior.FieldValues['sIdPersonal'];
                  BitacoradePersonal.FieldValues['dCantidad'] := QyrPersonalAnterior.FieldValues['dCantidad'];
                  BitacoradePersonal.FieldValues['sIdPernocta'] := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradePersonal.FieldValues['sTipopernocta'] := QyrPersonalAnterior.FieldValues['sTipoPernocta'];
                  BitacoradePersonal.FieldValues['sTipoObra'] := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  BitacoradePersonal.FieldValues['lAplicaPernocta'] := QyrPersonalAnterior.FieldValues['lAplicaPernocta'];
                  BitacoradePersonal.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
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
            QyrPersonalAnterior.SQL.Add('Select bp.sTipoObra, bp.sIdPernocta, bp.sIdEquipo, Sum(bp.dCantidad) as dCantidad From bitacoradeequipos bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sHoraInicio =:Inicio and b.sHoraFinal =:Final) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Group By  bp.sIdPernocta, bp.sIdEquipo Order By bp.sIdEquipo');
            QyrPersonalAnterior.Params.ParamByName('Contrato').DataType := ftString;
            QyrPersonalAnterior.Params.ParamByName('Contrato').Value  := param_global_Contrato;
            QyrPersonalAnterior.Params.ParamByName('Orden').DataType  := ftString;
            QyrPersonalAnterior.Params.ParamByName('Orden').Value     := tsNumeroOrden.Text;
            QyrPersonalAnterior.Params.ParamByName('Fecha').DataType  := ftDate;
            QyrPersonalAnterior.Params.ParamByName('Fecha').Value     := dFecha;
            QyrPersonalAnterior.Params.ParamByName('Turno').DataType  := ftString;
            QyrPersonalAnterior.Params.ParamByName('Turno').Value     := global_turno_reporte;
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
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha '+
                       'And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo and sTipoObra =:Tipo ');
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
                connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Tipo').Value := QyrPersonalAnterior.FieldValues['sTipoObra'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo and sTipoObra =:Tipo ');
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
                  connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Tipo').Value := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  //tsIdPernoctaEquipo.KeyValue := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  bitacoradeEquipos.Append;
                  BitacoradeEquipos.FieldValues['sIdPernocta'] := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradeEquipos.FieldValues['sIdEquipo']   := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                  BitacoradeEquipos.FieldValues['dCantidad']   := QyrPersonalAnterior.FieldValues['dCantidad'];
                  BitacoradeEquipos.FieldValues['sTipoObra']   := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  BitacoradeEquipos.FieldValues['iItemOrden']  := 0;
                  bitacoradeEquipos.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de personal en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el personal.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradeEquipos.Active := False;
            BitacoradeEquipos.Open;
          end
        end
      end;
    QyrPersonalAnterior.Destroy;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);

end;

procedure TfrmBitacora2.CargarPEMxPartidaClick(Sender: TObject);
var
  dFecha: tDate;
  lEventoRealizado: boolean;
  qryDiaAnterior: tzReadOnlyquery;
begin
  if QryBitacora.FieldValues['sWbs'] = '' then
    exit;

  if lBorra then
  begin
    qryDiaAnterior := tzReadOnlyQuery.Create(Self);
    qryDiaAnterior.Connection := connection.zConnection;
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        if MessageDlg('Desea Adicionar el personal existente de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;

          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            qryDiaAnterior.Active := False;
            qryDiaAnterior.SQL.Clear;
            qryDiaAnterior.SQL.Add('Select bp.* From bitacoradepersonal bp INNER JOIN bitacoradeactividades b ON ' +
              '(bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And ' +
              'b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sWbs =:Wbs ) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Order By bp.sIdPersonal');
            qryDiaAnterior.Params.ParamByName('Contrato').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Contrato').Value := param_global_Contrato;
            qryDiaAnterior.Params.ParamByName('Orden').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            qryDiaAnterior.Params.ParamByName('Fecha').DataType := ftDate;
            qryDiaAnterior.Params.ParamByName('Fecha').Value := dFecha;
            qryDiaAnterior.Params.ParamByName('Turno').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Turno').Value := global_turno_reporte;
            qryDiaAnterior.Params.ParamByName('Wbs').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
            qryDiaAnterior.Open;

            if qryDiaAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              qryDiaAnterior.First;
              while not qryDiaAnterior.Eof do
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
                connection.qryBusca.Params.ParamByName('Pernocta').Value := qryDiaAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('plataforma').DataType := ftString;
                connection.qryBusca.Params.ParamByName('plataforma').Value := qryDiaAnterior.FieldValues['sIdPlataforma'];
                connection.qryBusca.Params.ParamByName('Personal').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Personal').Value := qryDiaAnterior.FieldValues['sIdPersonal'];
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
                  connection.zCommand.Params.ParamByName('Pernocta').Value := qryDiaAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Plataforma').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Plataforma').Value := qryDiaAnterior.FieldValues['sIdPlataforma'];
                  connection.zCommand.Params.ParamByName('Personal').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Personal').Value := qryDiaAnterior.FieldValues['sIdPersonal'];
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + qryDiaAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  BitacoradePersonal.Append;
                  BitacoradePersonal.FieldValues['sIdPlataforma'] := qryDiaAnterior.FieldValues['sIdPlataforma'];
                  BitacoradePersonal.FieldValues['sIdPersonal'] := qryDiaAnterior.FieldValues['sIdPersonal'];
                  BitacoradePersonal.FieldValues['dCantidad'] := qryDiaAnterior.FieldValues['dCantidad'];
                  BitacoradePersonal.FieldValues['sIdPernocta'] := qryDiaAnterior.FieldValues['sIdPernocta'];
                  BitacoradePersonal.FieldValues['sTipopernocta'] := qryDiaAnterior.FieldValues['sTipoPernocta'];
                  BitacoradePersonal.Post;
                end;
                qryDiaAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de personal para la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el personal.', mtWarning, [mbOk], 0)
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

        if MessageDlg('Desea adicionar todo el equipo de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;

          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            qryDiaAnterior.Active := False;
            qryDiaAnterior.SQL.Clear;
            qryDiaAnterior.SQL.Add('Select bp.sIdPernocta, bp.sIdEquipo, Sum(bp.dCantidad) as dCantidad From bitacoradeequipos bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario and sWbs =:Wbs And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Group By  bp.sIdPernocta, bp.sIdEquipo Order By bp.sIdEquipo');
            qryDiaAnterior.Params.ParamByName('Contrato').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Contrato').Value := param_global_Contrato;
            qryDiaAnterior.Params.ParamByName('Orden').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            qryDiaAnterior.Params.ParamByName('Fecha').DataType := ftDate;
            qryDiaAnterior.Params.ParamByName('Fecha').Value := dFecha;
            qryDiaAnterior.Params.ParamByName('Turno').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Turno').Value := global_turno_reporte;
            qryDiaAnterior.Params.ParamByName('Wbs').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
            qryDiaAnterior.Open;

            if qryDiaAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              qryDiaAnterior.First;
              while not qryDiaAnterior.Eof do
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
                connection.qryBusca.Params.ParamByName('Pernocta').Value := qryDiaAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('Equipo').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Equipo').Value := qryDiaAnterior.FieldValues['sIdEquipo'];
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
                  connection.zCommand.Params.ParamByName('Pernocta').Value := qryDiaAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Equipo').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Equipo').Value := qryDiaAnterior.FieldValues['sIdEquipo'];
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + qryDiaAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  bitacoradeEquipos.Append;
                  BitacoradeEquipos.FieldValues['sIdPernocta'] := qryDiaAnterior.FieldValues['sIdPernocta'];
                  BitacoradeEquipos.FieldValues['sIdEquipo'] := qryDiaAnterior.FieldValues['sIdEquipo'];
                  BitacoradeEquipos.FieldValues['dCantidad'] := qryDiaAnterior.FieldValues['dCantidad'];
                  bitacoradeEquipos.Post;
                end;
                qryDiaAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de Equipos de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el Equipo.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradeEquipos.Active := False;
            BitacoradeEquipos.Open;
          end;
        end;

               //Materiales...
        if MessageDlg('Desea adicionar todo el material de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;

          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            qryDiaAnterior.Active := False;
            qryDiaAnterior.SQL.Clear;
            qryDiaAnterior.SQL.Add('Select bp.sIdMaterial, bp.dCantidad From bitacorademateriales bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario and b.sWbs =:Wbs And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Order by bp.sIdMaterial ');
            qryDiaAnterior.Params.ParamByName('Contrato').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Contrato').Value := param_global_Contrato;
            qryDiaAnterior.Params.ParamByName('Orden').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            qryDiaAnterior.Params.ParamByName('Fecha').DataType := ftDate;
            qryDiaAnterior.Params.ParamByName('Fecha').Value := dFecha;
            qryDiaAnterior.Params.ParamByName('Turno').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Turno').Value := global_turno_reporte;
            qryDiaAnterior.Params.ParamByName('Wbs').DataType := ftString;
            qryDiaAnterior.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
            qryDiaAnterior.Open;

            if qryDiaAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              qryDiaAnterior.First;
              while not qryDiaAnterior.Eof do
              begin
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacorademateriales where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdMaterial = :Material and sWbs =:Wbs ');
                connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
                connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').DataType := ftDate;
                connection.qryBusca.Params.ParamByName('fecha').Value := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').DataType := ftInteger;
                connection.qryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
                connection.qryBusca.Params.ParamByName('Material').DataType := ftString;
                connection.qryBusca.Params.ParamByName('Material').Value := qryDiaAnterior.FieldValues['sIdMaterial'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacorademateriales SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sWbs =:Wbs And sIdMaterial = :Material');
                  connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('contrato').Value := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  connection.zCommand.Params.ParamByName('fecha').Value := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
                  connection.zCommand.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
                  connection.zCommand.Params.ParamByName('Material').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Material').Value := qryDiaAnterior.FieldValues['sIdMaterial'];
                  connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Cantidad').Value := connection.qryBusca.FieldValues['dCantidad'] + qryDiaAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  bitacorademateriales.Append;
                  bitacorademateriales.FieldValues['sIdMaterial'] := qryDiaAnterior.FieldValues['sIdMaterial'];
                  bitacorademateriales.FieldValues['dCantidad'] := qryDiaAnterior.FieldValues['dCantidad'];
                  bitacorademateriales.Post;
                end;
                qryDiaAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de Materiales de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el Material.', mtWarning, [mbOk], 0)
          else
          begin
            bitacorademateriales.Active := False;
            bitacorademateriales.Open;
          end
        end
      end;
    qryDiaAnterior.Destroy;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);

end;

procedure TfrmBitacora2.cmdBuscarClick(Sender: TObject);
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
      sPuesto.Text := Connection.QryBusca.Fieldbyname('sDescripcion').asstring;
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

procedure TfrmBitacora2.tsIdPlataformaEnter(Sender: TObject);
begin
  tsIdPlataforma.Color := global_color_entrada
end;

procedure TfrmBitacora2.tsIdPlataformaExit(Sender: TObject);
begin
  tsIdPlataforma.Color := global_color_salida
end;

procedure TfrmBitacora2.BitacoradePersonalAfterDelete(DataSet: TDataSet);
begin
  SumPersonal.Active := False;
  SumPersonal.Open;

  if SumPersonal.RecordCount > 0 then
    tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
  else
    tdTotalPersonal.Value := 0;
end;

procedure TfrmBitacora2.BitacoradePersonalAfterInsert(DataSet: TDataSet);
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
        BitacoradePersonal.FieldValues['sHoraInicio'] := QryBitacora.FieldValues['sHoraInicio'];
        BitacoradePersonal.FieldValues['sHoraFinal']  := QryBitacora.FieldValues['sHoraFinal'];

        if sPernocta = '' then
          if connection.configuracion.FieldValues['sIdPernocta'] = '' then
            bitacoradePersonal.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta']
          else
            bitacoradePersonal.FieldValues['sIdPernocta'] := connection.configuracion.FieldValues['sIdPernocta']
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




procedure TfrmBitacora2.EliminarPerEqClick(
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

procedure TfrmBitacora2.BitacoradeEquiposCalcFields(DataSet: TDataSet);
var
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;

begin
  if d4 <> '' then
  begin
    qry := TZReadOnlyQuery.Create(nil);
    qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}
    sTipoVigencia := ''; //DIARIA o CONSOLIDADA
    qry.Active := False;
    qry.SQL.Clear;
    qry.SQL.Add('select sTipoVigencia from ordenesdetrabajogral where sContrato =:contrato And dFechaVigencia =:FechaVigencia');
    qry.Params.ParamByName('Contrato').DataType := ftString;
    qry.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    qry.Params.ParamByName('FechaVigencia').DataType := ftDate;
    qry.Params.ParamByName('FechaVigencia').Value := d4;
    qry.Open;
    if qry.RecordCount > 0 then
    begin
      sTipoVigencia := qry.FieldValues['sTipoVigencia'];
    end;

    if (BitacoradeEquipos.FieldValues['dCantidad'] <> Null) and (BitacoradeEquipos.FieldValues['dCostoMN'] <> Null) then
      BitacoradeEquiposdMontoMN.Value := BitacoradeEquipos.FieldValues['dCantidad'] * BitacoradeEquipos.FieldValues['dCostoMN'];

    if (BitacoradeEquipos.FieldValues['dCantidad'] <> Null) and (BitacoradeEquipos.FieldValues['dCostoDLL'] <> Null) then
      BitacoradeEquiposdMontoDLL.Value := BitacoradeEquipos.FieldValues['dCantidad'] * BitacoradeEquipos.FieldValues['dCostoDLL'];


    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.SQL.Clear;
         { 20/feb/2012: adal, leer datos segun el tipo de vigencia}
    if sTipoVigencia = 'DIARIA' then
      Connection.qryBusca2.SQL.Add('SELECT sNumeroActividad,dCantidad as solicitadoE, dFechaDia as dFechaVigencia FROM detallerecursosxoficio ' +
        ' where sContrato = :Contrato and dFechaDia=:Vigencia and sAnexo=:Anexo  and sNumeroActividad = :Solicitado');

    if sTipoVigencia = 'CONSOLIDADA' then
      Connection.qryBusca2.SQL.Add('select sNumeroActividad,dCantidad as solicitadoE ,dFechaVigencia from movtorecursosxoficio ' +
        'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:Vigencia) and month(dFechaVigencia)=month(:Vigencia) and sNumeroActividad = :Solicitado');

    if sTipoVigencia <> '' then
    begin
      Connection.qryBusca2.Params.ParamByName('Anexo').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Anexo').Value := global_labelEquipo;
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca2.Params.ParamByName('Solicitado').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Solicitado').Value := BitacoradeEquipossIdEquipo.Text;
      Connection.qryBusca2.Params.ParamByName('Vigencia').DataType := ftDate;
      Connection.qryBusca2.Params.ParamByName('Vigencia').Value := d4;
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


procedure TfrmBitacora2.Refresh1Click(Sender: TObject);
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

procedure TfrmBitacora2.Salir1Click(Sender: TObject);
begin
  Close
end;

procedure TfrmBitacora2.sHoraFinalExit(Sender: TObject);
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

procedure TfrmBitacora2.sHoraFinalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dTiempoExtraf.SetFocus
end;

procedure TfrmBitacora2.sHoraInicioEnter(Sender: TObject);
begin
  sHoraInicio.Color := global_color_entrada;
end;

procedure TfrmBitacora2.sHoraInicioExit(Sender: TObject);
begin
  sHoraInicio.Color := global_color_salida
end;

procedure TfrmBitacora2.sHoraInicioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sHoraFinal.SetFocus
end;

procedure TfrmBitacora2.sNombreEnter(Sender: TObject);
begin
  sNombre.Color := global_color_entrada;
end;

procedure TfrmBitacora2.sNombreExit(Sender: TObject);
begin
  sNombre.Color := global_color_salida
end;

procedure TfrmBitacora2.sNumeroFichaEnter(Sender: TObject);
begin
  sNumeroFicha.Color := global_color_entrada;
end;

procedure TfrmBitacora2.sNumeroFichaExit(Sender: TObject);
begin
  sNumeroFicha.Color := global_color_salida
end;

procedure TfrmBitacora2.sNumeroFichaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmdBuscar.SetFocus;
end;

procedure TfrmBitacora2.sPuestoEnter(Sender: TObject);
begin
  sPuesto.Color := global_color_entrada;
end;

procedure TfrmBitacora2.sPuestoExit(Sender: TObject);
begin
  sPuesto.Color := global_color_salida
end;

procedure TfrmBitacora2.sPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    sHoraInicio.SetFocus;
end;

procedure TfrmBitacora2.ComentariosAdicionalesalaPartida1Click(
  Sender: TObject);
begin
  global_partida := QryBitacora.FieldValues['sNumeroActividad'];
  Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
  frmComentariosxAnexo.show;
end;

procedure TfrmBitacora2.dTiempoExtrafChange(Sender: TObject);
begin
  TRxCalcEditChangef(dTiempoExtraf, 'Tiempo Extra');
end;

procedure TfrmBitacora2.dTiempoExtrafEnter(Sender: TObject);
begin
  dTiempoExtraf.Color := global_color_entrada;
end;

procedure TfrmBitacora2.dTiempoExtrafExit(Sender: TObject);
begin
  dTiempoExtraf.Color := global_color_salida
end;

procedure TfrmBitacora2.dTiempoExtrafKeyPress(Sender: TObject; var Key: Char);
begin
  if keyFiltroTRxCalcEdit(dTiempoExtraf, key) then
    key := #0;
  if Key = #13 then
    sNumeroFicha.SetFocus;
end;

procedure TfrmBitacora2.ActualizaCostosClick(Sender: TObject);
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

procedure TfrmBitacora2.BitacoradePersonalBeforeDelete(DataSet: TDataSet);
begin
   {Se valida conforme a Reporte de Barco..}
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
      Busqueda := strToInt(BitacoradePersonalsIdPersonal.Text) + 1;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sIdPersonal, ba.`sNumeroOrden` from bitacoradepersonal bp ' +
        'Inner Join bitacoradeactividades ba On ' +
        '(bp.sContrato =ba.sContrato And bp.iIdDiario=ba.iIdDiario And ba.`dIdFecha`=:Fecha ) ' +
        'And bp.sIdPersonal=:Personal And bp.dIdFecha=:Fecha And bp.sContrato=:Contrato ' +
        'And sNumeroOrden=:Orden  ');
      Connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      Connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_Global_Contrato;
      Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
      Connection.QryBusca2.Params.ParamByName('Personal').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Personal').Value := IntToStr(Busqueda);
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

procedure TfrmBitacora2.BitacoradePersonalBeforeEdit(DataSet: TDataSet);
begin
  if ValidaBarco(bitacoradepersonal.FieldValues['sIdPersonal']) then
  begin
    messageDLg('El Reporte de Barco se Encuentra Validado/Autorizado, para realizar modificación pase el Reporte de Barco a Status de Pendiente.', mtInformation, [mbOk], 0);
    Abort;
  end;
end;

procedure TfrmBitacora2.BitacoradeEquiposBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacora2.QryBitacoraCalcFields(DataSet: TDataSet);
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

procedure TfrmBitacora2.qryTiemposExtrasAfterScroll(DataSet: TDataSet);
begin
  if not (qryTiemposExtras.State in [dsInsert, dsEdit]) then
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
end;

procedure TfrmBitacora2.BitacoradePersonalAfterPost(DataSet: TDataSet);
begin
    total := 0;
    sPlataforma := bitacoradePersonal.FieldValues['sIdPlataforma'];
    sPernocta := bitacoradePersonal.FieldValues['sIdPernocta'];
    SumPersonal.Active := False;
    SumPersonal.Open;
    if SumPersonal.RecordCount > 0 then
    begin
        tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal'];
        //Ahora Actualizamos las categorias de equipos utilizan las mimas cantidadea de equipos
        Connection.QryBusca.Active := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select sIdEquipo from equipos Where sContrato =:Contrato And lCuadraEquipo ="Si" ');
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value    := param_global_contrato;
        connection.QryBusca.Open;

        while not connection.QryBusca.Eof do
        begin
            bitacoradeequipos.First;
            while not bitacoradeequipos.Eof do
            begin
                if connection.QryBusca.FieldValues['sIdEquipo'] = bitacoradeequipos.FieldValues['sIdEquipo'] then
                begin
                    bitacoradeequipos.Edit;
                    bitacoradeequipos.FieldValues['dCantidad'] := SumPersonal.FieldValues['dTotal'];
                    bitacoradeequipos.Post;
                end;
                bitacoradeequipos.Next;
            end;
            connection.QryBusca.Next;
        end;
    end
    else
       tdTotalPersonal.Value := 0;

    if (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'Si') and (MidStr(BitacoradePersonal.FieldValues['sDescripcion'], 1, 12) <> 'TIEMPO EXTRA') and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
    begin
      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select sum(dCantidad) as totalP from bitacoradepersonal Where ' +
        'sContrato =:Contrato And dIdFecha =:Fecha And sIdPersonal =:Personal ');
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

      if (bitacoradepersonal.FieldValues['dCantidad'] > strToInt(BitacoradePersonalSolicitado.Text)) and (stipoPersonal = 'PE-C') then
      begin
        MessageDlg('LO REPORTADO ES MAYOR QUE LO SOLICITADO VERIFICARLO', mtWarning, [mbOk], 0);
      end
      else
        if (total > strToInt(BitacoradePersonalSolicitado.Text)) and (stipoPersonal = 'PE-C') then
          MessageDlg('LO REPORTADO EN VARIOS FRENTES ES ' + IntToStr(total) + ' ES MAYOR QUE LO SOLICITADO ' + BitacoradePersonalSolicitado.Text + ' VERIFICARLO', mtWarning, [mbOk], 0);

    end;

    Indicar := 0;

    //Aqui Actualizamos el personal en jornadas y tiempos para efectos de disponibilidad del sitio.. Diavaz by ivan Jun 2012
    ActualizaDisponibilidadSitio(param_global_contrato, tsNumeroOrden.Text, global_turno_reporte, tdIdFecha.Date, tdTotalPersonal.Value);
end;



procedure TfrmBitacora2.BitacoradePersonalAfterScroll(DataSet: TDataSet);
begin
  Panel1.Visible := False;
     // checo si el personal es tiempo extra, si no es tiempo extra se oculta la ventana .....
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select sIdTipoPersonal from personal Where sContrato = :contrato and sIdPersonal = :Personal');
  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  connection.QryBusca.Params.ParamByName('personal').DataType := ftString;
  connection.QryBusca.Params.ParamByName('personal').Value := BitacoradePersonal.FieldValues['sIdPersonal'];
  connection.QryBusca.Open;
  if connection.QryBusca.RecordCount > 0 then
    if (strPos(pchar('|EXT|C-13|C-17|'), pchar(connection.QryBusca.FieldByName('sIdTipoPersonal').AsString)) = nil) then
      GroupMotivos.Visible := False;
  connection.QryBusca.Active := False
end;


procedure TfrmBitacora2.BitacoradePersonalBeforePost(DataSet: TDataSet);
var
  sOpcionLocal: string;
begin
  {Se valida conforme al reporte de Barco..}
  if (BitacoradePersonal.FieldValues['sIdPersonal'] <> null) then
  begin

      if ValidaBarco(bitacoradepersonal.FieldValues['sIdPersonal']) then
      begin
        messageDLg('El Reporte de Barco se Encuentra Validado/Autorizado, para realizar modificación pase el Reporte de Barco a Status de Pendiente.', mtInformation, [mbOk], 0);
        Abort;
        exit;
      end;

      //Consultamos los tipos de personal que se deben mostrar en personal y equipo..
      zTipoPersonal.Active := FalsE;
      zTipoPersonal.SQL.Clear;
      zTipoPersonal.SQL.Add('select * from tiposdepersonal where sIdTipoPersonal like :tipo and lPersonalEQ = "Si"');
      zTipoPersonal.ParamByName('tipo').AsString := bitacoradepersonalsTipoObra.Text + '%';
      zTipoPersonal.Open;

      if zTipoPersonal.RecordCount > 0 then
         bitacoradepersonalsTipoObra.text := zTipoPersonal.FieldValues['sIdTipoPersonal'];

      if zTipoPersonal.RecordCount = 0 then
      begin
         messageDLg('No existen Tipos de Personal registrados en el sistema!, Ir a Administracion de Catalogos, Tipos de Personal (PU, ADM, ...)', mtInformation, [mbOk], 0);
         Abort;
         exit;
      end;

      //Ahora validamos si se cobra o no...
      if (pos('S', bitacoradepersonallAplicaPernocta.Text) > 0) or (pos('s', bitacoradepersonallAplicaPernocta.Text) > 0) then
         bitacoradepersonallAplicaPernocta.Text := 'Si'
      else
         if (pos('N', bitacoradepersonallAplicaPernocta.Text) > 0) or (pos('n', bitacoradepersonallAplicaPernocta.Text) > 0)  then
            bitacoradepersonallAplicaPernocta.Text := 'No'
         else
         begin
             messageDLg('Se coba?(Si/No)!', mtInformation, [mbOk], 0);
             Abort;
             Exit;
         end;

      //Consultamos las pernoctas de personal..
      zTipoPersonal.Active := False;
      zTipoPersonal.SQL.Clear;
      zTipoPersonal.SQL.Add('select sIdPernocta from pernoctan where sIdPernocta like :pernocta ');
      zTipoPersonal.ParamByName('pernocta').AsString := bitacoradepersonalsIdPernocta.Text + '%';
      zTipoPersonal.Open;

      if zTipoPersonal.RecordCount > 0 then
         bitacoradepersonalsIdPernocta.text := zTipoPersonal.FieldValues['sIdPernocta'];

      if zTipoPersonal.RecordCount = 0 then
      begin
         messageDLg('No existe el lugar de pernocta! ', mtInformation, [mbOk], 0);
         Abort;
         exit;
      end;

      //Consultamos las plataformas donde labora el personal..
      zTipoPersonal.Active := False;
      zTipoPersonal.SQL.Clear;
      zTipoPersonal.SQL.Add('select sIdPlataforma from plataformas where sIdPlataforma like :plataforma ');
      zTipoPersonal.ParamByName('plataforma').AsString := bitacoradepersonalsIdPlataforma.Text + '%';
      zTipoPersonal.Open;

      if zTipoPersonal.RecordCount > 0 then
         bitacoradepersonalsIdPlataforma.text := zTipoPersonal.FieldValues['sIdPlataforma'];

      if zTipoPersonal.RecordCount = 0 then
      begin
         messageDLg('No existe una plataforma! ', mtInformation, [mbOk], 0);
         Abort;
         exit;
      end;

      {Contunia proceso..}
      try
          {22/03/2012 : adal , guardar el personal solicitado}
        BitacoradePersonal.FieldValues['dSolicitado'] := BitacoradePersonalSolicitado.Value;
        if BitacoradePErsonal.State = dsEdit then
          sOpcionLocal := 'Edicion';
        if (BitacoradePersonal.FieldValues['sIdPersonal'] <> null) and
          (BitacoradePersonal.FieldValues['sIdPernocta'] <> null) and
          (BitacoradePersonal.FieldValues['sIdPlataforma'] <> null) and
          (BitacoradePersonal.FieldValues['sIdPersonal'] <> '') and
          (BitacoradePersonal.FieldValues['sIdPernocta'] <> '') and
          (BitacoradePersonal.FieldValues['sIdPlataforma'] <> '') then
          //and  (BitacoradePersonal.FieldValues['dCantidad'] > 0 ) then
        begin
          sPernocta := BitacoradePersonal.FieldValues['sIdPernocta'];
          sPlataforma := BitacoradePersonal.FieldValues['sIdPlataforma'];
          if BitacoradePersonal.FieldByName('mMotivos').IsNull then
            BitacoradePersonal.FieldValues['mMotivos'] := '*';
          if sOpcionLocal <> 'Edicion' then
          begin
                // Introducir equipo asignado a la catergoria ....
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

               // Checo si ya existe ....
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
          end
        end
        else
        begin
    //        if BitacoradePersonal.FieldValues['dCantidad'] <= 0 then
    //           messageDLG('No se Aceptan Cantidades en 0', mtInformation, [mbOk], 0);
          BitacoradePersonal.Cancel;
        end;
      except
        abort;
        MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
      end;

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
        Connection.QryBusca2.Params.ParamByName('Personal').Value := BitacoradePersonalsIdPersonal.Text;
        Connection.QryBusca2.Open;
           {If Connection.QryBusca2.RecordCount > 0 Then
           Begin
               if Connection.QryBusca2.FieldValues['sIdPernocta'] = BitacoradePersonal.FieldValues['sIdPernocta'] Then
               Begin
                    Messagedlg('Esa Categoria de Personal Ya Existe, EN LA MISMA PERNOCTA ', mtError, [mbOk], 0) ;
                    Bitacoradepersonal.Cancel ;
               end
           end;}
      end;
  end
  else
  begin
     messageDLG('Escriba el Id de la Categoria!', mtInformation, [mbOk], 0);
     abort;
  end;     
end;


procedure TfrmBitacora2.BitacoradePersonalsIdPersonalChange(Sender: TField);
//Aqui leo las categorias de Personal Y Verifico que existan en el Oficio
var
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;

begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}

  if d4 <> '' then
  begin

    sTipoVigencia := ''; //DIARIA o CONSOLIDADA
    qry.Active := False;
    qry.SQL.Clear;
    qry.SQL.Add('select sTipoVigencia from ordenesdetrabajogral where sContrato =:contrato And dFechaVigencia =:FechaVigencia');
    qry.Params.ParamByName('Contrato').DataType := ftString;
    qry.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    qry.Params.ParamByName('FechaVigencia').DataType := ftDate;
    qry.Params.ParamByName('FechaVigencia').Value := d4;
    qry.Open;
    if qry.RecordCount > 0 then
    begin
      sTipoVigencia := qry.FieldValues['sTipoVigencia'];
    end;
  end;

  try
    try
      qry.sql.Clear;
      qry.sql.Add('select sIdPernocta from ordenesdetrabajo where sContrato=:contrato and sNumeroOrden=:orden');
      qry.ParamByName('contrato').AsString := param_global_contrato;
      qry.ParamByName('orden').AsString := tsNumeroOrden.Text;
      qry.Open;
      if qry.RecordCount > 0 then
      begin
        tsIdPernocta.KeyValue := qry.FieldByName('sIdPernocta').AsString;
      end
      else
      begin
        tsIdPernocta.KeyValue := 'TIERRA';
      end;

    except
    end;
    cmbsTipoPernocta.KeyValue := 1;
  except
  end;
  if (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'Si') then
  begin
    BandTE := False;
    if d4 = '' then //soad -> Verifica vigencia para personal y equipo ..
    begin
      MessageDlg('No existe vigencia para personal y equipo, Favor de Verificar.', mtInformation, [mbOk], 0);
      bitacoradepersonal.Cancel;
    end
    else
    begin
      Connection.qryBusca2.Active := False;
      Connection.qryBusca2.SQL.Clear;
      Connection.qryBusca2.SQL.Add('select sIdPersonal, sIdPersonal From personal where sContrato = :Contrato And ' +
        'sIdPersonal =:Personal And ( sIdTipoPersonal ="EXT" Or sIdTipoPersonal ="PEP" Or sIdTipoPersonal ="C-13")');
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca2.Params.ParamByName('Personal').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Personal').Value := BitacoradePersonalsIdPersonal.Text;
      Connection.qryBusca2.Open;
      if Connection.QryBusca2.RecordCount = 0 then
      begin
        if sTipoVigencia <> '' then
        begin
          BandTE := True;
          Connection.qryBusca2.Active := False;
          Connection.qryBusca2.SQL.Clear;
         { 20/feb/2012: adal, leer datos segun el tipo de vigencia}

          if sTipoVigencia = 'DIARIA' then
            Connection.qryBusca2.SQL.Add('SELECT sNumeroActividad,dCantidad as solicitadoP, dFechaDia as dFechaVigencia FROM detallerecursosxoficio ' +
              ' where sContrato = :Contrato and dFechaDia=:Vigencia and sAnexo=:Anexo  and sNumeroActividad = :Solicitado');

          if sTipoVigencia = 'CONSOLIDADA' then
            Connection.qryBusca2.SQL.Add('select sNumeroActividad,dCantidad as solicitadoP ,dFechaVigencia from movtorecursosxoficio ' +
              'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:Vigencia) and month(dFechaVigencia)=month(:Vigencia) and sNumeroActividad = :Solicitado');

          Connection.qryBusca2.Params.ParamByName('Anexo').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Anexo').Value := global_labelPersonal;
          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
          Connection.qryBusca2.Params.ParamByName('Solicitado').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Solicitado').Value := BitacoradePersonalsIdPersonal.Text;
          Connection.qryBusca2.Params.ParamByName('Vigencia').DataType := ftDate;
          Connection.qryBusca2.Params.ParamByName('Vigencia').Value := d4;
          Connection.qryBusca2.Open;
        end;
      end;
      if Connection.qryBusca2.RecordCount > 0 then
      begin
        if BandTE = True then
          solicitadop := Connection.QryBusca2.FieldValues['solicitadop']
        else
          solicitadop := 0;
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
         { 20/feb/2012: adal, leer datos segun el tipo de vigencia}

            if sTipoVigencia = 'DIARIA' then
              Connection.qryBusca2.SQL.Add('SELECT sNumeroActividad,dCantidad as solicitadoP, dFechaDia as dFechaVigencia FROM detallerecursosxoficio ' +
                ' where sContrato = :Contrato and dFechaDia=:Vigencia and sAnexo=:Anexo  and sNumeroActividad = :Solicitado');

            if sTipoVigencia = 'CONSOLIDADA' then
              Connection.qryBusca2.SQL.Add('select sNumeroActividad,dCantidad as solicitadoP ,dFechaVigencia from movtorecursosxoficio ' +
                'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:Vigencia) and month(dFechaVigencia)=month(:Vigencia) and sNumeroActividad = :Solicitado');

            if sTipoVigencia <> '' then
            begin
              Connection.qryBusca2.Params.ParamByName('Anexo').DataType := ftString;
              Connection.qryBusca2.Params.ParamByName('Anexo').Value := global_labelPersonal;
              Connection.QryBusca2.Params.ParamByName('Vigencia').DataType := ftDate;
              Connection.QryBusca2.Params.ParamByName('Vigencia').Value := d4;
              Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
              Connection.QryBusca2.Params.ParamByName('Contrato').Value := param_Global_Contrato;
              Connection.QryBusca2.Params.ParamByName('Personal').DataType := ftString;
              Connection.QryBusca2.Params.ParamByName('Personal').Value := IntToStr(Busqueda);
              Connection.QryBusca2.Open;
              if Connection.QryBusca2.RecordCount > 0 then
              begin
                BitacoradePersonal.FieldValues['dCostoMN'] := Connection.qryBusca.FieldValues['dCostoMN'];
                BitacoradePersonal.FieldValues['dCostoDLL'] := Connection.qryBusca.FieldValues['dCostoDLL'];
                BitacoradePersonal.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
                BitacoradePersonal.FieldValues['iItemOrden'] := Connection.qryBusca.FieldValues['iItemOrden'];
                BitacoradePersonal.FieldValues['sAgrupaPersonal'] := Connection.qryBusca.FieldValues['sAgrupaPersonal'];
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
          end;
        end;
      end
      else
      begin
        MessageDlg('Esa Categoria No ESTA SOLICITADA No podra Agregar al Reporte al dia Seleccionado.', mtWarning, [mbOk], 0);
        bitacoradepersonal.Cancel;
      end;
    end;
  end;



//Aqui es para una Programada
  if ((Global_Optativa = 'PROGRAMADA') and (Global_Personal = 'No') or (Global_Optativa = 'OPTATIVA') and (Global_Personal = 'No')) then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select iItemOrden, sDescripcion, dCostoDLL, dCostoMN, sAgrupaPersonal from personal where sContrato = :Contrato And sIdPersonal = :Personal');
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
      BitacoradePersonal.FieldValues['iItemOrden'] := Connection.qryBusca.FieldValues['iItemOrden'];
//         BitacoradePersonal.FieldValues['dSolicitado']  := 0.00 ;
    end
    else
      if not BitacoradePersonal.FieldByName('sIdPersonal').IsNull then
        if Trim(BitacoradePersonal.FieldValues['sIdPersonal']) <> '' then
        begin
          sDescripcion := '%' + Trim(BitacoradePersonal.FieldValues['sIdPersonal']) + '%';
          BuscaObjeto.Active := False;
          ListaObjeto.Columns.Clear;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[0].FieldName := 'sDescripcion';
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select iItemOrden, sIdPersonal as sNumeroActividad, sDescripcion, dCostoDLL, dCostoMN  from personal Where ' +
            'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          Panel.Height  := 358;
          Panel.Width   := 590;
          ListaObjeto.Columns[0].Width := 680;
          ListaObjeto.SetFocus
        end
  end;
end;



procedure TfrmBitacora2.BorrarlasCategoriasen01Click(Sender: TObject);
begin
  if MessageDlg('Desea eliminar las Categorias de Personal en 0 ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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

  if MessageDlg('Desea eliminar las Categorias de Equipo en 0 ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
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

procedure TfrmBitacora2.BitacoradePersonalAfterEdit(DataSet: TDataSet);
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

procedure TfrmBitacora2.QryBitacoraAfterScroll(DataSet: TDataSet);
begin
  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaMaterialesxpartida();
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

procedure TfrmBitacora2.BitacoradeEquiposAfterEdit(DataSet: TDataSet);
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

procedure TfrmBitacora2.BitacoradeEquiposAfterInsert(DataSet: TDataSet);
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
          if connection.configuracion.FieldValues['sIdPernocta'] = '' then
            BitacoradeEquipos.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta']
          else
            BitacoradeEquipos.FieldValues['sIdPernocta'] := connection.configuracion.FieldValues['sIdPernocta']
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

procedure TfrmBitacora2.BitacoradeEquiposAfterPost(DataSet: TDataSet);
begin
  total := 0;
  sPernocta := bitacoradeEquipos.FieldValues['sIdPernocta'];
  if (Global_Optativa = 'OPTATIVA') and (Global_Equipo = 'Si') and (Connection.configuracion.FieldValues['lSeguridadVigencia'] = 'Si') then
  begin
    Connection.QryBusca2.Active := False;
    Connection.QryBusca2.SQL.Clear;
    Connection.QryBusca2.SQL.Add('Select sum(dCantidad) as totalE from bitacoradeequipos Where ' +
      'sContrato =:Contrato And dIdFecha =:Fecha And sIdEquipo =:Equipo ');
    connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
    connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
    connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.DateTime;
    connection.QryBusca2.Params.ParamByName('Equipo').DataType := ftstring;
    connection.QryBusca2.Params.ParamByName('Equipo').Value := BitacoradeEquipos.FieldValues['sIdEquipo'];
    connection.QryBusca2.Open;

    if Connection.QryBusca2.RecordCount > 0 then
      total := connection.QryBusca2.FieldValues['totalE']
    else
      total := 0;

    if total > strToInt(BitacoradeEquiposSolicitado.Text) then
      MessageDlg('LO REPORTADO EN VARIOS FRENTES ES ' + IntToStr(total) + ' ES MAYOR QUE LO SOLICITADO ' + BitacoradeEquiposSolicitado.Text + ' VERIFICARLO', mtWarning, [mbOk], 0);

    if bitacoradeequipos.FieldValues['dCantidad'] > strToInt(BitacoradeEquiposSolicitado.Text) then
      MessageDlg('LO REPORTADO ES MAYOR QUE LO SOLICITADO VERIFICARLO', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmBitacora2.BitacoradeEquiposAfterScroll(DataSet: TDataSet);
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

procedure TfrmBitacora2.BitacoradeEquiposBeforePost(DataSet: TDataSet);
var
  sOpcionLocal: string;
begin
  if bitacoradeEquipos.FieldValues['dCantidad'] < 0 then
    bitacoradeEquipos.Cancel;

   //Consultamos los tipos de personal que se deben mostrar en personal y equipo..
  zTipoPersonal.Active := FalsE;
  zTipoPersonal.SQL.Clear;
  zTipoPersonal.SQL.Add('select * from tiposdeequipo where sIdTipoEquipo like :tipo and lPersonalEQ = "Si"');
  zTipoPersonal.ParamByName('tipo').AsString := bitacoradeequipossTipoObra.Text + '%';
  zTipoPersonal.Open;

  if zTipoPersonal.RecordCount > 0 then
     bitacoradeequipossTipoObra.text := zTipoPersonal.FieldValues['sIdTipoEquipo'];

  if zTipoPersonal.RecordCount = 0 then
  begin
     messageDLg('No existen Tipos de Equipos registrados en el sistema!, Ir a Administracion de Catalogos, Tipos de Personal (PU, ADM, ...)', mtInformation, [mbOk], 0);
     Abort;
     exit;
  end;

  //Consultamos las pernoctas de equipos..
  zTipoPersonal.Active := False;
  zTipoPersonal.SQL.Clear;
  zTipoPersonal.SQL.Add('select sIdPernocta from pernoctan where sIdPernocta like :pernocta ');
  zTipoPersonal.ParamByName('pernocta').AsString := bitacoradeequipossIdPernocta.Text + '%';
  zTipoPersonal.Open;

  if zTipoPersonal.RecordCount > 0 then
     bitacoradeequipossIdPernocta.text := zTipoPersonal.FieldValues['sIdPernocta'];

  if zTipoPersonal.RecordCount = 0 then
  begin
     messageDLg('No existe el lugar de pernocta! ', mtInformation, [mbOk], 0);
     Abort;
     exit;
  end;

  try
  {22/03/2012 : adal , guardar el equipo solicitado}
    BitacoradeEquipos.FieldValues['dSolicitado'] := BitacoradeEquipossolicitado.Value;
    if BitacoradeEquipos.State = dsEdit then
      sOpcionLocal := 'Edicion';

    if (BitacoradeEquipos.FieldValues['sIdEquipo'] <> null) and
      (BitacoradeEquipos.FieldValues['sIdPernocta'] <> null) and
      (BitacoradeEquipos.FieldValues['sIdEquipo'] <> '') and
      (BitacoradeEquipos.FieldValues['sIdPernocta'] <> '') then
       //and (BitacoradeEquipos.FieldValues['dCantidad'] > 0) then
      sPernocta := BitacoradeEquipos.FieldValues['sIdPernocta']
    else
    begin
//        if BitacoradeEquipos.FieldValues['dCantidad'] <= 0 then
//           messageDLG('No se Aceptan Cantidades en 0', mtInformation, [mbOk], 0);
      abort;
    end;
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;



end;



procedure TfrmBitacora2.BitacoradeEquipossIdEquipoChange(Sender: TField);
var
  sDescripcion: string;
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;

begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}
  if d4 <> '' then
  begin
    sTipoVigencia := ''; //DIARIA o CONSOLIDADA
    qry.Active := False;
    qry.SQL.Clear;
    qry.SQL.Add('select sTipoVigencia from ordenesdetrabajogral where sContrato =:contrato And dFechaVigencia =:FechaVigencia');
    qry.Params.ParamByName('Contrato').DataType := ftString;
    qry.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    qry.Params.ParamByName('FechaVigencia').DataType := ftDate;
    qry.Params.ParamByName('FechaVigencia').Value := d4;
    qry.Open;
    if qry.RecordCount > 0 then
    begin
      sTipoVigencia := qry.FieldValues['sTipoVigencia'];
    end;
    try
      tsIdPernoctaEquipo.KeyValue := OrdenesdeTrabajo.FieldValues['sIdPlataforma'];
    except
    end;
  end;
  try

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
   except
  end;
  if (Global_Optativa = 'OPTATIVA') and (Global_Equipo = 'Si') then
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
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
         { 20/feb/2012: adal, leer datos segun el tipo de vigencia}
      if sTipoVigencia = 'DIARIA' then
        Connection.qryBusca.SQL.Add('SELECT sNumeroActividad,dCantidad, dFechaDia as dFechaVigencia FROM detallerecursosxoficio ' +
          ' where sContrato = :Contrato and dFechaDia=:Vigencia and sAnexo=:Anexo  and sNumeroActividad = :Solicitado');

      if sTipoVigencia = 'CONSOLIDADA' then
        Connection.qryBusca.SQL.Add('select sNumeroActividad,dCantidad ,dFechaVigencia from movtorecursosxoficio ' +
          'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:Vigencia) and month(dFechaVigencia)=month(:Vigencia) and sNumeroActividad = :Solicitado');

      if sTipoVigencia <> '' then
      begin
        Connection.qryBusca.Params.ParamByName('Anexo').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Anexo').Value := global_labelEquipo;
        Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
        Connection.qryBusca.Params.ParamByName('Solicitado').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('Solicitado').Value := BitacoradeEquipossIdEquipo.Text;
        Connection.qryBusca.Params.ParamByName('Vigencia').DataType := ftDate;
        Connection.qryBusca.Params.ParamByName('Vigencia').Value := d4;
        Connection.qryBusca.Open;
        if Connection.qryBusca.RecordCount > 0 then
        begin
          solicitadoE := Connection.QryBusca.FieldValues['dCantidad'];
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
          end;
        end
        else
        begin
          MessageDlg('Esa Categoria No ESTA SOLICITADA No podra Agregar al Reporte al dia seleccionado.', mtWarning, [mbOk], 0);
          BitacoradeEquipos.Cancel;
        end;
      end
      else
        MessageDlg('No existen vigencias.', mtWarning, [mbOk], 0);
    end;
  end;

  //Para las Programadas
  if (Global_Optativa = 'PROGRAMADA') or (Global_Equipo = 'No') then
  begin
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
    end
    else
      if not BitacoradeEquipos.FieldByName('sIdEquipo').IsNull then
        if Trim(BitacoradeEquipos.FieldValues['sIdEquipo']) <> '' then
        begin
          sDescripcion := '%' + Trim(BitacoradeEquipos.FieldValues['sIdEquipo']) + '%';
          BuscaObjeto.Active := False;
          ListaObjeto.Columns.Clear;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[0].FieldName := 'sDescripcion';

          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select iItemOrden, sIdEquipo as sNumeroActividad, sDescripcion, dCostoDLL, dCostoMN from equipos Where ' +
            'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          Panel.Height  := 358;
          Panel.Width   := 590;
          ListaObjeto.Columns[0].Width := 680;
          ListaObjeto.SetFocus
        end
  end;
end;


procedure TfrmBitacora2.bitacoradematerialesAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if bitacorademateriales.RecordCount = 0 then
      bitacorademateriales.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        bitacorademateriales.Cancel
  end
  else
  begin
    bitacorademateriales.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmBitacora2.bitacoradematerialesAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        bitacorademateriales.FieldValues['dIdFecha'] := tdIdFecha.Date;
        bitacorademateriales.FieldValues['sContrato'] := param_Global_Contrato;
        bitacorademateriales.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
        bitacorademateriales.FieldValues['sWbs'] := QryBitacora.FieldValues['sWbs'];
        bitacorademateriales.FieldValues['dCantidad'] := 0;
      end
      else
        bitacorademateriales.Cancel
    else
      bitacorademateriales.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    bitacorademateriales.Cancel
  end
end;

procedure TfrmBitacora2.bitacoradematerialesBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacora2.bitacoradematerialesBeforePost(DataSet: TDataSet);
begin
  try
    if (bitacorademateriales.FieldValues['sIdMaterial'] = null) then
      bitacorademateriales.Cancel
    else
      if BitacoradeMateriales.fieldbyName('dcantidad').asfloat = 0 then
      begin
        messageDLG('No se Aceptan Cantidades en 0', mtInformation, [mbOk], 0);
        BitacoradeMateriales.Cancel;
      end;
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmBitacora2.bitacoradematerialesCalcFields(DataSet: TDataSet);
begin
  if not bitacorademateriales.FieldByName('sIdMaterial').IsNull then
  begin
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('select sMedida from insumos ' +
      'where sContrato = :contrato And sIdInsumo = :material ');
    connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('contrato').Value := param_global_contrato;
    connection.qryBusca2.Params.ParamByName('material').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('material').Value := bitacorademateriales.FieldValues['sIdMaterial'];
    connection.qryBusca2.Open;
    if connection.qryBusca2.RecordCount > 0 then
      bitacoradematerialessMedida.Text := connection.qryBusca2.FieldValues['sMedida']
    else
      bitacoradematerialessMedida.Text := '';

    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('select dCantidad from recursosanexosnuevos ' +
      'where sContrato = :contrato And sIdInsumo = :material and sWbs =:Wbs and sNumeroActividad =:Actividad ');
    connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('contrato').Value := param_global_contrato;
    connection.qryBusca2.Params.ParamByName('material').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('material').Value := bitacorademateriales.FieldValues['sIdMaterial'];
    connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
    connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
    connection.qryBusca2.Open;
    if connection.qryBusca2.RecordCount > 0 then
      bitacoradematerialesdSolicitado.Text := connection.qryBusca2.FieldValues['dCantidad'];

  end
end;

procedure TfrmBitacora2.bitacoradematerialessIdMaterialChange(Sender: TField);
begin

 //aqui va para cuando cambia por partida
  if not bitacorademateriales.FieldByName('sIdMaterial').IsNull then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select substr(mDescripcion,1,255) as sDescripcion, sMedida from insumos ' +
      'where sContrato = :Contrato And sIdInsumo = :Material And sTipoActividad = "Material" ');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
    Connection.qryBusca.Params.ParamByName('Material').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Material').Value := bitacoradematerialessIdMaterial.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      bitacorademateriales.FieldValues['sDescripcion'] := Connection.QryBusca.FieldValues['sDescripcion'];
      bitacorademateriales.FieldValues['sMedida'] := Connection.QryBusca.FieldValues['sMedida'];
    end
    else
      if not bitacorademateriales.FieldByName('sIdMaterial').IsNull then
        if Trim(bitacorademateriales.FieldValues['sIdMaterial']) <> '' then
        begin
          sDescripcion := '%' + Trim(bitacorademateriales.FieldValues['sIdMaterial']) + '%';
          BuscaObjeto.Active := False;
          ListaObjeto.Columns.Clear;
          ListaObjeto.Columns.Add;
          ListaObjeto.Columns[0].FieldName := 'sDescripcion';
          ListaObjeto.Columns[0].Width := 550;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sIdInsumo, substr(mDescripcion,1,255) as sDescripcion, sMedida  from insumos Where ' +
            'sContrato = :Contrato And mDescripcion Like :Descripcion And ' +
            'sTipoActividad = "Material"  Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := param_global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
               // yavienedeRegreso := 'No' ;
          Panel.Visible := True;
          Panel.Height  := 358;
          Panel.Width   := 590;
          ListaObjeto.SetFocus
        end
  end;

end;

procedure TfrmBitacora2.btnPaqueteEquipoClick(Sender: TObject);
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


procedure TfrmBitacora2.BitacoradePersonalCalcFields(DataSet: TDataSet);
var
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;

begin
  if d4 <> '' then
  begin
    qry := TZReadOnlyQuery.Create(nil);
    qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}
    sTipoVigencia := ''; //DIARIA o CONSOLIDADA
    qry.Active := False;
    qry.SQL.Clear;
    qry.SQL.Add('select sTipoVigencia from ordenesdetrabajogral where sContrato =:contrato And dFechaVigencia =:FechaVigencia');
    qry.Params.ParamByName('Contrato').DataType := ftString;
    qry.Params.ParamByName('Contrato').Value := param_Global_Contrato;
    qry.Params.ParamByName('FechaVigencia').DataType := ftDate;
    qry.Params.ParamByName('FechaVigencia').Value := d4;
    qry.Open;
    if qry.RecordCount > 0 then
    begin
      sTipoVigencia := qry.FieldValues['sTipoVigencia'];
    end;

    if (BitacoradePersonal.FieldValues['dCantidad'] <> Null) and (BitacoradePersonal.FieldValues['dCostoMN'] <> Null) then
      BitacoradePersonaldMontoMN.Value := BitacoradePersonal.FieldValues['dCantidad'] * BitacoradePersonal.FieldValues['dCostoMN'];

    if (BitacoradePersonal.FieldValues['dCantidad'] <> Null) and (BitacoradePersonal.FieldValues['dCostoDLL'] <> Null) then
      BitacoradePersonaldMontoDLL.Value := BitacoradePersonal.FieldValues['dCantidad'] * BitacoradePersonal.FieldValues['dCostoDLL'];

    Connection.qryBusca2.Active := False;
    Connection.qryBusca2.SQL.Clear;
         { 20/feb/2012: adal, leer datos segun el tipo de vigencia}
    if sTipoVigencia = 'DIARIA' then
      Connection.qryBusca2.SQL.Add('SELECT sNumeroActividad,dCantidad as solicitadoP, dFechaDia as dFechaVigencia FROM detallerecursosxoficio ' +
        ' where sContrato = :Contrato and dFechaDia=:Vigencia and sAnexo=:Anexo  and sNumeroActividad = :Solicitado');

    if sTipoVigencia = 'CONSOLIDADA' then
      Connection.qryBusca2.SQL.Add('select sNumeroActividad,dCantidad as solicitadoP ,dFechaVigencia from movtorecursosxoficio ' +
        'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:Vigencia) and month(dFechaVigencia)=month(:Vigencia) and sNumeroActividad = :Solicitado');
    if sTipoVigencia <> '' then
    begin
      Connection.qryBusca2.Params.ParamByName('Anexo').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Anexo').Value := global_labelPersonal;
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca2.Params.ParamByName('Solicitado').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Solicitado').Value := BitacoradePersonalsIdPersonal.Text;
      Connection.qryBusca2.Params.ParamByName('Vigencia').DataType := ftDate;
      Connection.qryBusca2.Params.ParamByName('Vigencia').Value := d4;
      Connection.qryBusca2.Open;
      if Connection.qryBusca2.RecordCount > 0 then
        BitacoradePersonalSolicitado.Text := Connection.QryBusca2.FieldValues['solicitadop']
      else
        BitacoradePersonalSolicitado.Text := '0';
    end
    else
      BitacoradePersonalSolicitado.Text := '0';
  end;

end;

procedure TfrmBitacora2.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmBitacora2.PanelExit(Sender: TObject);
begin
  Panel.Visible := False;
end;

procedure TfrmBitacora2.PopupPrincipalPopup(Sender: TObject);
begin
  if QryBitacora.FieldValues['sWbs'] <> '' then
    InsertaMaterial.Enabled := True
  else
    InsertaMaterial.Enabled := False;
end;

procedure TfrmBitacora2.Vigencias();
begin
       //Aqui leo las categorias de Personal Y Verifico que existan en el Oficio
  Connection.QryBusca2.Active;
  Connection.QryBusca2.SQL.Clear;
  Connection.QryBusca2.SQL.Add('Select dFechaVigencia from ordenesdetrabajogral  ' +
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
    while not Connection.QryBusca2.Eof do
    begin
      dFechaAnterior := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      d1 := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      Connection.QryBusca2.Next;
      dFechaActual := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      d2 := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      if ((dParamFecha > dFechaAnterior) and (dParamFecha > dFechaActual) or (dParamFecha > dFechaAnterior) and (dParamFecha < dFechaActual) or (dParamFecha >= dFechaAnterior) and (dParamFecha <= dFechaActual)) then
        d4 := d1;
    end;
  end;
end;

function TfrmBitacora2.ValidaBarco(dParamPersonal: string): boolean;
var
  Q_ValidaBarco: TZReadOnlyQuery;
begin
  Q_ValidaBarco := TZReadOnlyQuery.Create(self);
  Q_ValidaBarco.Connection := connection.zConnection;

  Q_ValidaBarco.Active := False;
  Q_ValidaBarco.SQL.Clear;
  Q_ValidaBarco.SQL.Add('select lValidaBarco from configuracion where sContrato =:Contrato and lValidaBarco ="Si" ');
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

