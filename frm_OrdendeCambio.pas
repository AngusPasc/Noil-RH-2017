unit frm_OrdendeCambio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls,  DB, ADODB, DBCtrls, global, strUtils,
  Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus,  RXDBCtrl,  RxLookup, DateUtils,
  RXCtrls, CheckLst, ToolWin, RxDBComb, ImgList, frxChBox,
  frxClass, ZAbstractRODataset, ZAbstractDataset, ZDataset, rxToolEdit,
  rxCurrEdit, AdvGlowButton,UnitValidaTexto,
  UnitTBotonesPermisos, UnitExcepciones, udbgrid, UnitTablasImpactadas,
  unitactivapop, DBDateTimePicker, UnitValidacion;
type
  TfrmOrdendeCambio = class(TForm)
    ds_OrdendeCambio: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Copy1: TMenuItem;
    MenuItem1: TMenuItem;
    Salir1: TMenuItem;
    N4: TMenuItem;
    frmBarra2: TfrmBarra;
    Panel: TImageList;
    Grid_OrdenesdeCambio: TRxDBGrid;
    pgOrdenesdeCambio: TPageControl;
    TabCedula: TTabSheet;
    TabNotificacion: TTabSheet;
    tabDictamen: TTabSheet;
    tabOrden: TTabSheet;
    tmProblematica: TMemo;
    tmCambio: TMemo;
    Label3: TLabel;
    tmMotivo: TMemo;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    tmAccionesPropuestas: TMemo;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    tsAreaResponsable: TEdit;
    Label1: TLabel;
    Label9: TLabel;
    tiCedulaProcedencia: TCurrencyEdit;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tsSoporte: TEdit;
    tProcede: TRadioButton;
    tNoProcede: TRadioButton;
    Label17: TLabel;
    tmNotificacionDescripcion: TMemo;
    GroupBox3: TGroupBox;
    tNotificacionConPropuesta: TRadioButton;
    tNotificacionSinPropuesta: TRadioButton;
    gbOficio: TGroupBox;
    tsNotificacionOficio: TEdit;
    tNotificacionSinComentarios: TRadioButton;
    tNotificacionConComentarios: TRadioButton;
    GroupBox5: TGroupBox;
    tsNotificacionProcede: TComboBox;
    tsNotificacionExtiendeTiempo: TComboBox;
    tsNotificacionRequierePrecios: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    tiNotificacionEntregaPropuesta: TCurrencyEdit;
    tNotificacionPlanosAdjuntos: TCheckBox;
    Label22: TLabel;
    tsNotificacionOtroRequerimiento: TEdit;
    Label23: TLabel;
    GroupBox6: TGroupBox;
    Label24: TLabel;
    tmNotificacionSupervisor: TMemo;
    Label25: TLabel;
    tmNotificacionResidente: TMemo;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    tmNotificacionContratista: TMemo;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    tmDictamenDescripcion: TMemo;
    tmDictamenAntecedentes: TMemo;
    tmDictamenFundamento: TMemo;
    Label30: TLabel;
    tmDictamenJustificacion: TMemo;
    Label31: TLabel;
    tmDictamenVerificacionPresupuestal: TMemo;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    tmDictamenResidente: TMemo;
    Label33: TLabel;
    tsOrdenOficio: TEdit;
    Label35: TLabel;
    tsOrdenCambio: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    GroupBox8: TGroupBox;
    ImageList1: TImageList;
    Label38: TLabel;
    tdOrdenMonto: TCurrencyEdit;
    Label39: TLabel;
    Label40: TLabel;
    tiOrdenPlazo: TCurrencyEdit;
    Label41: TLabel;
    tmOrdenOtros: TMemo;
    GroupBox9: TGroupBox;
    tOrdenOficios: TCheckBox;
    tOrdenIngenieria: TCheckBox;
    tOrdenNotasBitacora: TCheckBox;
    tOrdenModificacionProgramas: TCheckBox;
    tOrdenPreciosExtraordinarios: TCheckBox;
    tOrdenSancionesdeCampo: TCheckBox;
    tOrdenAnalisisdePrecios: TCheckBox;
    GroupBox10: TGroupBox;
    Label34: TLabel;
    Label42: TLabel;
    tmOrdenSupervisor: TMemo;
    tmOrdenResidente: TMemo;
    GroupBox11: TGroupBox;
    Label43: TLabel;
    tmOrdenContratista: TMemo;
    Label16: TLabel;
    Label44: TLabel;
    tsOrdenNotificacionesdeCambio: TEdit;
    tdMontoRequerido: TEdit;
    tiPlazo: TEdit;
    tiProrroga: TEdit;
    Label46: TLabel;
    tsNotificacionAntefirman: TEdit;
    Label45: TLabel;
    tsCedulaAntefirman: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    tsOrdenAntefirman: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    tsDictamenAntefirman: TEdit;
    OrdendeCambio: TZReadOnlyQuery;
    btnPartidas: TAdvGlowButton;
    tdOrdenFecha: TDBDateTimePicker;
    tdOrdenFechaFirma: TDBDateTimePicker;
    tdNotificacionFecha: TDBDateTimePicker;
    tdNotificacionFechaFirma: TDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tmProblematicaEnter(Sender: TObject);
    procedure tmProblematicaExit(Sender: TObject);
    procedure tmCambioEnter(Sender: TObject);
    procedure tmCambioExit(Sender: TObject);
    procedure tmMotivoEnter(Sender: TObject);
    procedure tmMotivoExit(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure OrdendeCambioAfterScroll(DataSet: TDataSet);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure Grid_OrdenesdeCambioTitleBtnClick(Sender: TObject;
      ACol: Integer; Field: TField);
    procedure tiCedulaProcedenciaEnter(Sender: TObject);
    procedure tiCedulaProcedenciaExit(Sender: TObject);
    procedure tiCedulaProcedenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoRequeridoEnter(Sender: TObject);
    procedure tdMontoRequeridoExit(Sender: TObject);
    procedure tiPlazoEnter(Sender: TObject);
    procedure tiPlazoExit(Sender: TObject);
    procedure tiProrrogaEnter(Sender: TObject);
    procedure tiProrrogaExit(Sender: TObject);
    procedure tsAreaResponsableEnter(Sender: TObject);
    procedure tsAreaResponsableExit(Sender: TObject);
    procedure tdMontoRequeridoKeyPress(Sender: TObject; var Key: Char);
    procedure tiPlazoKeyPress(Sender: TObject; var Key: Char);
    procedure tiProrrogaKeyPress(Sender: TObject; var Key: Char);
    procedure tsSoporteEnter(Sender: TObject);
    procedure tsSoporteExit(Sender: TObject);
    procedure tsSoporteKeyPress(Sender: TObject; var Key: Char);
    procedure tmNotificacionDescripcionEnter(Sender: TObject);
    procedure tmNotificacionDescripcionExit(Sender: TObject);
    procedure tsNotificacionProcedeEnter(Sender: TObject);
    procedure tsNotificacionProcedeExit(Sender: TObject);
    procedure tsNotificacionProcedeKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsNotificacionRequierePreciosEnter(Sender: TObject);
    procedure tsNotificacionRequierePreciosExit(Sender: TObject);
    procedure tsNotificacionRequierePreciosKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsNotificacionExtiendeTiempoEnter(Sender: TObject);
    procedure tsNotificacionExtiendeTiempoExit(Sender: TObject);
    procedure tsNotificacionExtiendeTiempoKeyPress(Sender: TObject;
      var Key: Char);
    procedure tiNotificacionEntregaPropuestaEnter(Sender: TObject);
    procedure tiNotificacionEntregaPropuestaExit(Sender: TObject);
    procedure tiNotificacionEntregaPropuestaKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsNotificacionOtroRequerimientoEnter(Sender: TObject);
    procedure tsNotificacionOtroRequerimientoExit(Sender: TObject);
    procedure tsNotificacionOtroRequerimientoKeyPress(Sender: TObject;
      var Key: Char);
    procedure tmNotificacionSupervisorEnter(Sender: TObject);
    procedure tmNotificacionSupervisorExit(Sender: TObject);
    procedure tmNotificacionResidenteEnter(Sender: TObject);
    procedure tmNotificacionResidenteExit(Sender: TObject);
    procedure tsNotificacionOficioEnter(Sender: TObject);
    procedure tsNotificacionOficioExit(Sender: TObject);
    procedure tsNotificacionOficioKeyPress(Sender: TObject; var Key: Char);
    procedure tmNotificacionContratistaEnter(Sender: TObject);
    procedure tmNotificacionContratistaExit(Sender: TObject);
    procedure tmDictamenDescripcionEnter(Sender: TObject);
    procedure tmDictamenDescripcionExit(Sender: TObject);
    procedure tmDictamenFundamentoEnter(Sender: TObject);
    procedure tmDictamenFundamentoExit(Sender: TObject);
    procedure tmDictamenAntecedentesEnter(Sender: TObject);
    procedure tmDictamenAntecedentesExit(Sender: TObject);
    procedure tmDictamenJustificacionEnter(Sender: TObject);
    procedure tmDictamenJustificacionExit(Sender: TObject);
    procedure tmDictamenVerificacionPresupuestalEnter(Sender: TObject);
    procedure tmDictamenVerificacionPresupuestalExit(Sender: TObject);
    procedure tmDictamenResidenteEnter(Sender: TObject);
    procedure tmDictamenResidenteExit(Sender: TObject);
    procedure tsOrdenOficioEnter(Sender: TObject);
    procedure tsOrdenOficioExit(Sender: TObject);
    procedure tsOrdenOficioKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrdenCambioEnter(Sender: TObject);
    procedure tsOrdenCambioExit(Sender: TObject);
    procedure tsOrdenCambioKeyPress(Sender: TObject; var Key: Char);
    procedure tdOrdenFechaEnter(Sender: TObject);
    procedure tdOrdenFechaExit(Sender: TObject);
    procedure tdOrdenFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tdOrdenMontoEnter(Sender: TObject);
    procedure tdOrdenMontoExit(Sender: TObject);
    procedure tdOrdenMontoKeyPress(Sender: TObject; var Key: Char);
    procedure tiOrdenPlazoEnter(Sender: TObject);
    procedure tiOrdenPlazoExit(Sender: TObject);
    procedure tiOrdenPlazoKeyPress(Sender: TObject; var Key: Char);
    procedure tmOrdenOtrosEnter(Sender: TObject);
    procedure tmOrdenOtrosExit(Sender: TObject);
    procedure tmOrdenSupervisorEnter(Sender: TObject);
    procedure tmOrdenSupervisorExit(Sender: TObject);
    procedure tmOrdenResidenteEnter(Sender: TObject);
    procedure tmOrdenResidenteExit(Sender: TObject);
    procedure tmOrdenContratistaEnter(Sender: TObject);
    procedure tmOrdenContratistaExit(Sender: TObject);
    procedure tdNotificacionFechaEnter(Sender: TObject);
    procedure tdNotificacionFechaExit(Sender: TObject);
    procedure tdNotificacionFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrdenNotificacionesdeCambioEnter(Sender: TObject);
    procedure tsOrdenNotificacionesdeCambioExit(Sender: TObject);
    procedure tsOrdenNotificacionesdeCambioKeyPress(Sender: TObject;
      var Key: Char);
    procedure tmAccionesPropuestasEnter(Sender: TObject);
    procedure tmAccionesPropuestasExit(Sender: TObject);
    procedure tsCedulaAntefirmanEnter(Sender: TObject);
    procedure tsCedulaAntefirmanExit(Sender: TObject);
    procedure tsAreaResponsableKeyPress(Sender: TObject; var Key: Char);
    procedure tsNotificacionAntefirmanEnter(Sender: TObject);
    procedure tsNotificacionAntefirmanExit(Sender: TObject);
    procedure tdNotificacionFechaFirmaEnter(Sender: TObject);
    procedure tdNotificacionFechaFirmaExit(Sender: TObject);
    procedure tdNotificacionFechaFirmaKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsNotificacionAntefirmanKeyPress(Sender: TObject;
      var Key: Char);
    procedure tsOrdenAntefirmanEnter(Sender: TObject);
    procedure tsOrdenAntefirmanExit(Sender: TObject);
    procedure tsOrdenAntefirmanKeyPress(Sender: TObject; var Key: Char);
    procedure tdOrdenFechaFirmaEnter(Sender: TObject);
    procedure tdOrdenFechaFirmaExit(Sender: TObject);
    procedure tdOrdenFechaFirmaKeyPress(Sender: TObject; var Key: Char);
    procedure tsDictamenAntefirmanEnter(Sender: TObject);
    procedure tsDictamenAntefirmanExit(Sender: TObject);
    procedure Grid_OrdenesdeCambioEnter(Sender: TObject);
    procedure btnPartidasClick(Sender: TObject);
    procedure Grid_OrdenesdeCambioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_OrdenesdeCambioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_OrdenesdeCambioTitleClick(Column: TColumn);
    procedure Paste1Click(Sender: TObject);

    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure tdMontoRequeridoChange(Sender: TObject);
    procedure tiPlazoChange(Sender: TObject);
    procedure tiProrrogaChange(Sender: TObject);
    procedure tiNotificacionEntregaPropuestaChange(Sender: TObject);
    procedure tiOrdenPlazoChange(Sender: TObject);
    procedure tdOrdenMontoChange(Sender: TObject);
    procedure tiCedulaProcedenciaChange(Sender: TObject);
    procedure tmOrdenOtrosKeyPress(Sender: TObject; var Key: Char);
    procedure tmOrdenSupervisorKeyPress(Sender: TObject; var Key: Char);
    procedure tmOrdenResidenteKeyPress(Sender: TObject; var Key: Char);
    procedure tmOrdenContratistaKeyPress(Sender: TObject; var Key: Char);
    procedure tmMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure tmProblematicaKeyPress(Sender: TObject; var Key: Char);
    procedure tmCambioKeyPress(Sender: TObject; var Key: Char);
    procedure tmAccionesPropuestasKeyPress(Sender: TObject; var Key: Char);
    procedure tsCedulaAntefirmanKeyPress(Sender: TObject; var Key: Char);
    procedure tmNotificacionSupervisorKeyPress(Sender: TObject; var Key: Char);
    procedure tmNotificacionResidenteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdendeCambio: TfrmOrdendeCambio;
  sDescripcion    : String ;
  txtAux          : String ;
  lNuevo          : Boolean ;
  sPaquete        : String ;
  sIsometrico     : String ;
  sIsometricoReferencia : String ;
  mComentarios    : WideString ;

  sSuperintendente, sSupervisor : String ;
  sPuestoSuperintendente, sPuestoSupervisor : String ;
  sSupervisorTierra, sPuestoSupervisorTierra : String ;
  sBackup  : String ;
  dCantidadOrden : Double ;

  mDescripcion : WideString ;
  BotonPermiso: TBotonesPermisos;
 
  banderaAgregar:boolean;
implementation

uses frm_connection, frm_comentariosxanexo, frm_OrdendeCambioP, frm_estimainstalado;

{$R *.dfm}

procedure TfrmOrdendeCambio.btnPartidasClick(Sender: TObject);
begin
  if ordendecambio.RecordCount > 0 then
  begin
     global_OrdenOficio       := tsOrdenOficio.text ;
     global_OrdenCambio       := tsOrdenCambio.text ;
     global_CedulaProcedencia := tiCedulaProcedencia.Text ;
     Application.CreateForm(TfrmOrdendeCambioP, frmOrdendeCambioP);
     frmOrdendeCambioP.ShowModal ;

  end;
end;
procedure TfrmOrdendeCambio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  global_frmActivo := 'ninguno';
  action := cafree ;
  BotonPermiso.free;
 
end;

procedure TfrmOrdendeCambio.FormShow(Sender: TObject);
begin
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opOrdenCam', PopupPrincipal);
    OrdendeCambio.Active := False ;
    OrdendeCambio.Params.ParamByName('Contrato').DataType := ftString ;
    OrdendeCambio.Params.ParamByName('Contrato').Value := global_contrato ;
    OrdendeCambio.Params.ParamByName('Ordenado').DataType := ftString ;
    OrdendeCambio.Params.ParamByName('ORdenado').Value := 'iCedulaProcedencia' ;
    OrdendeCambio.Open ;

    if (global_frmActivo = 'frm_estimainstalado') then
       frmBarra2.btnAdd.Click;

    btnPartidas.Enabled := True ;
    tiCedulaProcedencia.ReadOnly := False ;
    tmProblematica.ReadOnly := True ;
    tmCambio.ReadOnly := True ;
    tmMotivo.ReadOnly := True ;
    tdMontoRequerido.ReadOnly := True ;
    tiPlazo.ReadOnly := True ;
    tiProrroga.ReadOnly := True ;
    tsSoporte.ReadOnly := True ;
    tProcede.Enabled := False ;
    tNoProcede.Enabled := False ;
    tmAccionesPropuestas.ReadOnly := True ;
    tsAreaResponsable.ReadOnly := True ;
    tsCedulaAntefirman.ReadOnly := True ;

    tdNotificacionFecha.Enabled := False ;
    tmNotificacionDescripcion.ReadOnly := True ;
    tsNotificacionProcede.Enabled := False ;
    tsNotificacionRequierePrecios.Enabled := False ;
    tsNotificacionExtiendeTiempo.Enabled := False ;
    tiNotificacionEntregaPropuesta.Enabled := False ;
    tNotificacionPlanosAdjuntos.Enabled := False ;
    tsNotificacionOtroRequerimiento.ReadOnly := True ;
    tmNotificacionSupervisor.ReadOnly := True ;
    tmNotificacionResidente.ReadOnly := True ;
    tsNotificacionAntefirman.ReadOnly := True ;    
    tsNotificacionOficio.ReadOnly := True ;
    tNotificacionSinComentarios.Enabled := False ;
    tNotificacionConComentarios.Enabled := False ;
    tNotificacionConPropuesta.Enabled := False ;
    tNotificacionSinPropuesta.Enabled := False ;
    tdNotificacionFechaFirma.Enabled := False ;
    tmNotificacionContratista.ReadOnly := True ;

    tmDictamenDescripcion.ReadOnly := True ;
    tmDictamenFundamento.ReadOnly := True ;
    tmDictamenAntecedentes.ReadOnly := True ;
    tmDictamenJustificacion.ReadOnly := True ;
    tmDictamenVerificacionPresupuestal.ReadOnly := True ;
    tmDictamenResidente.ReadOnly := True ;
    tsDictamenAntefirman.ReadOnly := True ;

    tsOrdenOficio.ReadOnly := True ;
    tsOrdenCambio.ReadOnly := True ;
    tdOrdenFecha.Enabled := False ;
    tdOrdenMonto.ReadOnly := True ;
    tiOrdenPlazo.ReadOnly := True ;
    tmOrdenOtros.ReadOnly := True ;
    tOrdenOficios.Enabled := False ;
    tOrdenIngenieria.Enabled := False ;
    tOrdenNotasBitacora.Enabled := False ;
    tOrdenModificacionProgramas.Enabled := False ;
    tOrdenPreciosExtraordinarios.Enabled := False ;
    tOrdenSancionesdeCampo.Enabled := False ;
    tOrdenAnalisisdePrecios.Enabled := False ;
    tsOrdenNotificacionesdeCambio.ReadOnly := True ;    
    tmOrdenSupervisor.ReadOnly := True ;
    tmOrdenResidente.ReadOnly := True ;
    tsOrdenAntefirman.ReadOnly := True ;
    tdOrdenFechaFirma.Enabled := False ;
    tmOrdenContratista.ReadOnly := True ;

    pgOrdenesdeCambio.ActivePageIndex := 0 ;
    BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmOrdendeCambio.Grid_OrdenesdeCambioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmOrdendeCambio.Grid_OrdenesdeCambioMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmOrdendeCambio.Grid_OrdenesdecambioTitleClick(Column: TColumn);
begin
 //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmOrdendeCambio.tmProblematicaEnter(Sender: TObject);
begin
    tmProblematica.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmProblematicaExit(Sender: TObject);
begin
    tmProblematica.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmProblematicaKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
        tmProblematica.SetFocus
end;

procedure TfrmOrdendeCambio.tmCambioEnter(Sender: TObject);
begin
    tmCambio.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmCambioExit(Sender: TObject);
begin
    tmCambio.Color := global_color_salidaPU
end;


procedure TfrmOrdendeCambio.tmCambioKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    tmCambio.SetFocus
end;

procedure TfrmOrdendeCambio.tmMotivoEnter(Sender: TObject);
begin
    tmMotivo.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmMotivoExit(Sender: TObject);
begin
    tmMotivo.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmMotivoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
     tmMotivo.SetFocus
end;

procedure TfrmOrdendeCambio.frmBarra2btnAddClick(Sender: TObject);
begin
//activapop(frmOrdendeCambio, popupprincipal);
 try
  banderaAgregar:=true;
  frmBarra2.btnAddClick(Sender);
  btnPartidas.Enabled := False ;
  tiCedulaProcedencia.ReadOnly := False ;
  tmProblematica.ReadOnly := False ;
  tmCambio.ReadOnly := False ;
  tmMotivo.ReadOnly := False ;
  tdMontoRequerido.ReadOnly := False ;
  tiPlazo.ReadOnly := False ;
  tiProrroga.ReadOnly := False ;
  tsSoporte.ReadOnly := False ;
  tProcede.Enabled := True ;
  tNoProcede.Enabled := True ;
  tmAccionesPropuestas.ReadOnly := False ;
  tsAreaResponsable.ReadOnly := False ;
  tsCedulaAntefirman.ReadOnly := False ;

  tdNotificacionFecha.Enabled := True ;
  tmNotificacionDescripcion.ReadOnly := False ;
  tsNotificacionProcede.Enabled := True ;
  tsNotificacionRequierePrecios.Enabled := True ;
  tsNotificacionExtiendeTiempo.Enabled := True ;
  tiNotificacionEntregaPropuesta.Enabled := True ;
  tNotificacionPlanosAdjuntos.Enabled := True ;
  tsNotificacionOtroRequerimiento.ReadOnly := False ;
  tmNotificacionSupervisor.ReadOnly := False ;
  tmNotificacionResidente.ReadOnly := False ;
  tsNotificacionAntefirman.ReadOnly := False ;
  tsNotificacionOficio.ReadOnly := False ;
  tNotificacionSinComentarios.Enabled := True ;
  tNotificacionConComentarios.Enabled := True ;
  tNotificacionConPropuesta.Enabled := True ;
  tNotificacionSinPropuesta.Enabled := True ;
  tdNotificacionFechaFirma.Enabled := True ;
  tmNotificacionContratista.ReadOnly := False ;

  tmDictamenDescripcion.ReadOnly := False ;
  tmDictamenFundamento.ReadOnly := False ;
  tmDictamenAntecedentes.ReadOnly := False ;
  tmDictamenJustificacion.ReadOnly := False ;
  tmDictamenVerificacionPresupuestal.ReadOnly := False ;
  tmDictamenResidente.ReadOnly := False ;
  tsDictamenAntefirman.ReadOnly := False ;

  tsOrdenOficio.ReadOnly := False ;
  tsOrdenCambio.ReadOnly := False ;
  tdOrdenFecha.Enabled := True ;
  tdOrdenMonto.ReadOnly := False ;
  tiOrdenPlazo.ReadOnly := False ;
  tmOrdenOtros.ReadOnly := False ;
  tOrdenOficios.Enabled := True ;
  tOrdenIngenieria.Enabled := True ;
  tOrdenNotasBitacora.Enabled := True ;
  tOrdenModificacionProgramas.Enabled := True ;
  tOrdenPreciosExtraordinarios.Enabled := True ;
  tOrdenSancionesdeCampo.Enabled := True ;
  tOrdenAnalisisdePrecios.Enabled := True ;
  tsOrdenNotificacionesdeCambio.ReadOnly := False ;
  tmOrdenSupervisor.ReadOnly := False ;
  tmOrdenResidente.ReadOnly := False ;
  tsOrdenAntefirman.ReadOnly := False ;
  tdOrdenFechaFirma.Enabled := True ;
  tmOrdenContratista.ReadOnly := False ;

  tmProblematica.Text := '' ;
  tmCambio.Text := '' ;
  tmMotivo.Text := '' ;

  tdMontoRequerido.Text := '0.00' ;
  tiPlazo.Text := '0' ;
  tiProrroga.Text := '0' ;
  tsSoporte.Text := '' ;
  tProcede.Checked := True ;
  tmAccionesPropuestas.Text := '' ;
  tsAreaResponsable.Text := '' ;
  tsCedulaAntefirman.Text := '' ;

  tdNotificacionFecha.Date := Date ;
  tmNotificacionDescripcion.Text := '' ;
  tsNotificacionProcede.Text := 'Si' ;
  tsNotificacionRequierePrecios.Text := 'Si' ;
  tsNotificacionExtiendeTiempo.Text := 'Si' ;
  tiNotificacionEntregaPropuesta.Value := 0 ;
  tNotificacionPlanosAdjuntos.Checked := False ;
  tsNotificacionOtroRequerimiento.Text := '' ;
  tmNotificacionSupervisor.Text := '' ;
  tmNotificacionResidente.Text := '' ;
  tsNotificacionAntefirman.Text := '' ;
  tsNotificacionOficio.Text := '' ;
  tNotificacionSinComentarios.Checked := True ;
  tNotificacionConPropuesta.Checked := True ;
  tdNotificacionFechaFirma.Date := Date ;
  tmNotificacionContratista.Text := '' ;

  tmDictamenDescripcion.Text := '' ;
  tmDictamenFundamento.Text := '' ;
  tmDictamenAntecedentes.Text := '' ;
  tmDictamenJustificacion.Text := '' ;
  tmDictamenVerificacionPresupuestal.Text := '' ;
  tmDictamenResidente.Text := '' ;
  tsDictamenAntefirman.Text := '' ;

  tsOrdenOficio.Text := '' ;
  tsOrdenCambio.Text := '' ;
  tdOrdenFecha.Date := Date ;
  tdOrdenMonto.Value := 0 ;
  tiOrdenPlazo.Value := 0 ;
  tmOrdenOtros.Text := '' ;

  tOrdenOficios.Checked := False ;
  tOrdenIngenieria.Checked := False ;
  tOrdenNotasBitacora.Checked := False ;
  tOrdenModificacionProgramas.Checked := False ;
  tOrdenPreciosExtraordinarios.Checked := False ;
  tOrdenSancionesdeCampo.Checked := False ;
  tOrdenAnalisisdePrecios.Checked := False ;
  tsOrdenNotificacionesdeCambio.ReadOnly := False ;
  tmOrdenSupervisor.Text := '' ;
  tmOrdenResidente.Text := '' ;
  tsOrdenAntefirman.Text := '' ;
  tdOrdenFechaFirma.Date := Date ;

  tmOrdenContratista.Text := '' ;

  pgOrdenesdeCambio.ActivePageIndex := 0 ;
  Connection.qryBusca.Active := False ;
  Connection.qryBusca.SQL.Clear ;
  Connection.qryBusca.SQL.Add('Select Max(iCedulaProcedencia) as iCedulaProcedencia From ordendecambio Where sContrato = :Contrato') ;
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.qryBusca.Open ;
  If Connection.qryBusca.FieldByName('iCedulaProcedencia').AsInteger > 0 Then
      tiCedulaProcedencia.Value := Connection.qryBusca.FieldByName('iCedulaProcedencia').AsInteger + 1
  Else
      tiCedulaProcedencia.Value := 1 ;
  tiCedulaProcedencia.SetFocus;
  BotonPermiso.permisosBotones(frmBarra2);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordendecambio', 'Al agregar registro', 0);
  end;
 end;
 GRID_ORDENESDECAMBIO.Enabled:=false;
end;

procedure TfrmOrdendeCambio.frmBarra2btnEditClick(Sender: TObject);
begin
try
//activapop(frmOrdendeCambio, popupprincipal);
  banderaAgregar:=false;
  If OrdendeCambio.RecordCount > 0 Then
      If OrdendeCambio.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
          frmBarra2.btnEditClick(Sender);
          btnPartidas.Enabled := False ;
          tiCedulaProcedencia.ReadOnly := False ;
          tmProblematica.ReadOnly := False ;
          tmCambio.ReadOnly := False ;
          tmMotivo.ReadOnly := False ;
          tdMontoRequerido.ReadOnly := False ;
          tiPlazo.ReadOnly := False ;
          tiProrroga.ReadOnly := False ;
          tsSoporte.ReadOnly := False ;
          tProcede.Enabled := True ;
          tNoProcede.Enabled := True ;
          tmAccionesPropuestas.ReadOnly := False ;
          tsAreaResponsable.ReadOnly := False ;
          tsCedulaAntefirman.ReadOnly := False ;

          tdNotificacionFecha.Enabled := True ;
          tmNotificacionDescripcion.ReadOnly := False ;
          tsNotificacionProcede.Enabled := True ;
          tsNotificacionRequierePrecios.Enabled := True ;
          tsNotificacionExtiendeTiempo.Enabled := True ;
          tiNotificacionEntregaPropuesta.Enabled := True ;
          tNotificacionPlanosAdjuntos.Enabled := True ;
          tsNotificacionOtroRequerimiento.ReadOnly := False ;
          tmNotificacionSupervisor.ReadOnly := False ;
          tmNotificacionResidente.ReadOnly := False ;
          tsNotificacionAntefirman.ReadOnly := False ;
          tsNotificacionOficio.ReadOnly := False ;
          tNotificacionSinComentarios.Enabled := True ;
          tNotificacionConComentarios.Enabled := True ;
          tNotificacionConPropuesta.Enabled := True ;
          tNotificacionSinPropuesta.Enabled := True ;
          tdNotificacionFechaFirma.Enabled := True ;
          tmNotificacionContratista.ReadOnly := False ;

          tmDictamenDescripcion.ReadOnly := False ;
          tmDictamenFundamento.ReadOnly := False ;
          tmDictamenAntecedentes.ReadOnly := False ;
          tmDictamenJustificacion.ReadOnly := False ;
          tmDictamenVerificacionPresupuestal.ReadOnly := False ;
          tmDictamenResidente.ReadOnly := False ;
          tsDictamenAntefirman.ReadOnly := False ;

          tsOrdenOficio.ReadOnly := False ;
          tsOrdenCambio.ReadOnly := False ;
          tdOrdenFecha.Enabled := True ;
          tdOrdenMonto.ReadOnly := False ;
          tiOrdenPlazo.ReadOnly := False ;
          tmOrdenOtros.ReadOnly := False ;
          tOrdenOficios.Enabled := True ;
          tOrdenIngenieria.Enabled := True ;
          tOrdenNotasBitacora.Enabled := True ;
          tOrdenModificacionProgramas.Enabled := True ;
          tOrdenPreciosExtraordinarios.Enabled := True ;
          tOrdenSancionesdeCampo.Enabled := True ;
          tOrdenAnalisisdePrecios.Enabled := True ;
          tsOrdenNotificacionesdeCambio.ReadOnly := False ;
          tmOrdenSupervisor.ReadOnly := False ;
          tmOrdenResidente.ReadOnly := False ;
          tsOrdenAntefirman.ReadOnly := False ;
          tdOrdenFechaFirma.Enabled := True ;
          tmOrdenContratista.ReadOnly := False ;
          GRID_ORDENESDECAMBIO.Enabled:=false;
      End
      Else
          MessageDlg('Orden de Cambio Aplicada, no pueden realizarse cambios', mtWarning, [mbOk], 0);

  BotonPermiso.permisosBotones(frmBarra2);
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordendecambio', 'Al editar registro', 0);
end;
end;

end;

procedure TfrmOrdendeCambio.frmBarra2btnPostClick(Sender: TObject);
Var
  Posicion     : Integer ;
  nombres, cadenas: TStringList;
  sIdOrig : string;
  lEdita: boolean;
begin
//empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;

  if not validaTexto(nombres, cadenas, 'CEDULA DE PROCEDENCIA DE LA NOTIFICACIÓN DE CAMBIO No.', ticedulaprocedencia.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
//continuainserccion de datos
 lEdita := false;
 try
  If OpcButton = 'New' then
  Begin

         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'INSERT INTO ordendecambio ( sContrato , iCedulaProcedencia,  mCedulaMotivo, mCedulaProblematica, ' +
                                   'mCedulaCambioPropuesto, dCedulaMontoRequerido, iCedulaDiasPlazo, ' +
                                   'iCedulaDiasProrroga, sCedulaSoporte, lCedulaProcede, ' +
                                   'lCedulaNoProcede, mCedulaAccionesPropuestas, sCedulaAreaResponsable, sCedulaAntefirman, ' +
                                   'dNotificacionFecha, mNotificacionDescripcion, sNotificacionProcede, sNotificacionRequierePrecios, ' +
                                   'sNotificacionExtiendeTiempo, iNotificacionEntregaPropuesta, sNotificacionPlanosAdjuntos, ' +
                                   'sNotificacionOtroRequerimiento, ' +
                                   'mNotificacionSupervisor, mNotificacionResidente, sNotificacionAntefirman, sNotificacionOficio, ' +
                                   'lNotificacionSinComentarios, lNotificacionConComentarios, lNotificacionConPropuesta, ' +
                                   'lNotificacionSinPropuesta, dNotificacionFechaFirma, mNotificacionContratista, mDictamenDescripcion, ' +
                                   'mDictamenFundamento, mDictamenAntecedentes, mDictamenJustificacion, mDictamenVerificacionPresupuestal, ' +
                                   'mDictamenResidente, sDictamenAntefirman, sOrdenOficio, sOrdenCambio, dOrdenFecha, dOrdenMonto, iOrdenPlazo, ' +
                                   'mOrdenOtros, sOrdenOficios, sOrdenIngenieria, sOrdenNotasBitacora, sOrdenModificacionProgramas, ' +
                                   'sOrdenPreciosExtraordinarios, sOrdenSancionesdeCampo, sOrdenAnalisisdePrecios, ' +
                                   'sOrdenNotificacionesdeCambio, mOrdenSupervisor, ' +
                                   'mOrdenResidente, sOrdenAntefirman, dOrdenFechaFirma, mOrdenContratista, lStatus) ' +
                                   'Values (:Contrato, :Orden, :Motivo, :Problematica, ' +
                                   ':Cambio, :Monto, :Plazo, ' +
                                   ':Prorroga, :Soporte, :Procede, ' +
                                   ':NoProcede, :AccionesPropuesta, :AreaResponsable, :CedulaAntefirman, ' +
                                   ':dNFecha, :mNDescripcion, :sNProcede, :sNRequierePrecios, ' +
                                   ':sNExtiendeTiempo, :iNEntregaPropuesta, :sNPlanosAdjuntos, ' +
                                   ':sNOtroRquerimiento, ' +
                                   ':mNSupervisor, :mNResidente, :sNAntefirman, :sNOficio, ' +
                                   ':lNSinComentarios, :lNConComentarios, :lNConPropuesta, ' +
                                   ':lNSinPropuesta, :dNFechaFirma, :mNContratista, :mDDescripcion, ' +
                                   ':mDFundamento, :mDAntecedentes, :mDJustificacion, :mDVerificacionPresupuestal, ' +
                                   ':mDResidente, :sDAntefirman, :sOOficio, :sOCambio, :dOFecha, :dOMonto, :iOPlazo, ' +
                                   ':mOOtros, :sOOficios, :sOIngenieria, :sONotasBitacora, :sOModificacionProgramas, ' +
                                   ':sOPreciosExtraordinarios, :sOSancionesdeCampo, :sOAnalisisdePrecios, ' +
                                   ':sONotifica, :mOSupervisor, ' +
                                   ':mOResidente, :sOAntefirman, :dOFechaFirma, :mOContratista, "Pendiente") ') ;


         connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
         connection.zCommand.Params.ParamByName('Orden').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('Orden').value := tiCedulaProcedencia.Value ;
         connection.zCommand.Params.ParamByName('Problematica').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('Problematica').value := tmProblematica.Text ;
         connection.zCommand.Params.ParamByName('Cambio').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('Cambio').value := tmCambio.Text ;
         connection.zCommand.Params.ParamByName('Motivo').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('Motivo').value := tmMotivo.Text ;
         connection.zCommand.Params.ParamByName('Monto').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Monto').value := tdMontoRequerido.Text ;
         connection.zCommand.Params.ParamByName('Plazo').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Plazo').value := tiPlazo.Text ;
         connection.zCommand.Params.ParamByName('Prorroga').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Prorroga').value := tiProrroga.Text ;
         connection.zCommand.Params.ParamByName('Soporte').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Soporte').value := tsSoporte.Text ;
         connection.zCommand.Params.ParamByName('Procede').DataType := ftString ;
         If tProcede.Checked Then
             connection.zCommand.Params.ParamByName('Procede').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('Procede').value := '' ;
         connection.zCommand.Params.ParamByName('NoProcede').DataType := ftString ;
         If tNOProcede.Checked Then
            connection.zCommand.Params.ParamByName('NoProcede').value := 'Si'
         Else
            connection.zCommand.Params.ParamByName('NoProcede').value := '' ;
         connection.zCommand.Params.ParamByName('AccionesPropuesta').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('AccionesPropuesta').value := tmAccionesPropuestas.Text ;
         connection.zCommand.Params.ParamByName('AreaResponsable').DataType := ftString ;
         connection.zCommand.Params.ParamByName('AreaResponsable').value := tsAreaResponsable.Text ;
         connection.zCommand.Params.ParamByName('CedulaAntefirman').DataType := ftString ;
         connection.zCommand.Params.ParamByName('CedulaAntefirman').value := tsCedulaAntefirman.Text ;

         connection.zCommand.Params.ParamByName('dNFecha').DataType := ftDate ;
         connection.zCommand.Params.ParamByName('dNFecha').value := tdNotificacionFecha.Date ;
         connection.zCommand.Params.ParamByName('mNDescripcion').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mNDescripcion').value := tmNotificacionDescripcion.Text ;
         connection.zCommand.Params.ParamByName('sNProcede').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sNProcede').value := tsNotificacionProcede.Text ;
         connection.zCommand.Params.ParamByName('sNRequierePrecios').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sNRequierePrecios').value := tsNotificacionRequierePrecios.Text ;
         connection.zCommand.Params.ParamByName('sNExtiendeTiempo').DataType :=ftString ;
         connection.zCommand.Params.ParamByName('sNExtiendeTiempo').value := tsNotificacionExtiendeTiempo.Text ;
         connection.zCommand.Params.ParamByName('iNEntregaPropuesta').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('iNEntregaPropuesta').value := tiNotificacionEntregaPropuesta.Value ;
         connection.zCommand.Params.ParamByName('sNPlanosAdjuntos').DataType := ftString ;
         If tNotificacionPlanosAdjuntos.Checked Then
            connection.zCommand.Params.ParamByName('sNPlanosAdjuntos').value := 'Si'
         Else
            connection.zCommand.Params.ParamByName('sNPlanosAdjuntos').value := 'No' ;
         connection.zCommand.Params.ParamByName('sNOtroRquerimiento').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sNOtroRquerimiento').value := tsNotificacionOtroRequerimiento.Text ;
         connection.zCommand.Params.ParamByName('mNSupervisor').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mNSupervisor').value := tmNotificacionSupervisor.Text ;
         connection.zCommand.Params.ParamByName('mNResidente').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mNResidente').value := tmNotificacionResidente.Text ;
         connection.zCommand.Params.ParamByName('sNAntefirman').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sNAntefirman').value := tsNotificacionAntefirman.Text ;
         connection.zCommand.Params.ParamByName('sNOtroRquerimiento').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sNOtroRquerimiento').value := tsNotificacionOtroRequerimiento.Text ;
         connection.zCommand.Params.ParamByName('sNOficio').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sNOficio').value := tsNotificacionOficio.Text ;
         connection.zCommand.Params.ParamByName('lNSinComentarios').DataType := ftString ;
         If tNotificacionSinComentarios.Checked Then
             connection.zCommand.Params.ParamByName('lNSinComentarios').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('lNSinComentarios').value := 'No' ;
         connection.zCommand.Params.ParamByName('lNConComentarios').DataType := ftString ;
         If tNotificacionConComentarios.Checked Then
            connection.zCommand.Params.ParamByName('lNConComentarios').value := 'Si'
         Else
            connection.zCommand.Params.ParamByName('lNConComentarios').value := 'No' ;
         connection.zCommand.Params.ParamByName('lNConPropuesta').DataType := ftString ;
         If tNotificacionConPropuesta.Checked Then
            connection.zCommand.Params.ParamByName('lNConPropuesta').value := 'Si'
         Else
            connection.zCommand.Params.ParamByName('lNSinPropuesta').value := 'No' ;
         connection.zCommand.Params.ParamByName('lNSinPropuesta').DataType := ftString ;
         If tNotificacionSinPropuesta.Checked Then
            connection.zCommand.Params.ParamByName('lNSinPropuesta').value := 'Si'
         Else
            connection.zCommand.Params.ParamByName('lNSinPropuesta').value := 'No' ;
         connection.zCommand.Params.ParamByName('dNFechaFirma').DataType := ftDate ;
         connection.zCommand.Params.ParamByName('dNFechaFirma').value := tdNotificacionFechaFirma.Date ;
         connection.zCommand.Params.ParamByName('mNContratista').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mNContratista').value := tmNotificacionContratista.Text ;

         connection.zCommand.Params.ParamByName('mDDescripcion').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mDDescripcion').value := tmDictamenDescripcion.Text ;
         connection.zCommand.Params.ParamByName('mDFundamento').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mDFundamento').value := tmDictamenFundamento.Text ;
         connection.zCommand.Params.ParamByName('mDAntecedentes').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mDAntecedentes').value := tmDictamenAntecedentes.Text ;
         connection.zCommand.Params.ParamByName('mDJustificacion').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mDJustificacion').value := tmDictamenJustificacion.Text ;
         connection.zCommand.Params.ParamByName('mDVerificacionPresupuestal').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mDVerificacionPresupuestal').value := tmDictamenVerificacionPresupuestal.Text ;
         connection.zCommand.Params.ParamByName('mDResidente').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mDResidente').value := tmDictamenResidente.Text ;
         connection.zCommand.Params.ParamByName('sDAntefirman').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sDAntefirman').value := tsDictamenAntefirman.Text ;

         connection.zCommand.Params.ParamByName('sOOficio').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sOOficio').value := tsOrdenOficio.Text ;
         connection.zCommand.Params.ParamByName('sOCambio').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sOCambio').value := tsOrdenCambio.Text ;
         connection.zCommand.Params.ParamByName('dOFecha').DataType := ftDate ;
         connection.zCommand.Params.ParamByName('dOFecha').value := tdOrdenFecha.Date ;
         connection.zCommand.Params.ParamByName('dOMonto').DataType := ftFloat ;
         connection.zCommand.Params.ParamByName('dOMonto').value := tdOrdenMonto.Value ;
         connection.zCommand.Params.ParamByName('iOPlazo').DataType := ftInteger ;
         connection.zCommand.Params.ParamByName('iOPlazo').value := tiOrdenPlazo.Value ;
         connection.zCommand.Params.ParamByName('mOOtros').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mOOtros').value := tmOrdenOtros.Text ;
         connection.zCommand.Params.ParamByName('sOOficios').DataType := ftString ;
         If tOrdenOficios.Checked Then
             connection.zCommand.Params.ParamByName('sOOficios').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sOOficios').value := 'No' ;
         connection.zCommand.Params.ParamByName('sOIngenieria').DataType := ftString ;
         If tOrdenIngenieria.Checked Then
             connection.zCommand.Params.ParamByName('sOIngenieria').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sOIngenieria').value := 'No' ;
         connection.zCommand.Params.ParamByName('sONotasBitacora').DataType := ftString ;
         If tOrdenNotasBitacora.Checked Then
             connection.zCommand.Params.ParamByName('sONotasBitacora').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sONotasBitacora').value := 'No' ;
         connection.zCommand.Params.ParamByName('sOModificacionProgramas').DataType := ftString ;
         If tOrdenModificacionProgramas.Checked Then
             connection.zCommand.Params.ParamByName('sOModificacionProgramas').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sOModificacionProgramas').value := 'No' ;
         connection.zCommand.Params.ParamByName('sOPreciosExtraordinarios').DataType := ftString ;
         If tOrdenPreciosExtraordinarios.Checked Then
             connection.zCommand.Params.ParamByName('sOPreciosExtraordinarios').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sOPreciosExtraordinarios').value := 'No' ;
         connection.zCommand.Params.ParamByName('sOSancionesdeCampo').DataType := ftString ;
         If tOrdenSancionesdeCampo.Checked Then
             connection.zCommand.Params.ParamByName('sOSancionesdeCampo').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sOSancionesdeCampo').value := 'No' ;
         connection.zCommand.Params.ParamByName('sOAnalisisdePrecios').DataType := ftString ;
         If tOrdenAnalisisdePrecios.Checked Then
             connection.zCommand.Params.ParamByName('sOAnalisisdePrecios').value := 'Si'
         Else
             connection.zCommand.Params.ParamByName('sOAnalisisdePrecios').value := 'No' ;
         connection.zCommand.Params.ParamByName('sONotifica').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sONotifica').value := tsOrdenNotificacionesdeCambio.Text ;
         connection.zCommand.Params.ParamByName('mOSupervisor').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mOSupervisor').value := tmOrdenSupervisor.Text ;
         connection.zCommand.Params.ParamByName('mOResidente').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mOResidente').value := tmOrdenResidente.Text ;
         connection.zCommand.Params.ParamByName('sOAntefirman').DataType := ftString ;
         connection.zCommand.Params.ParamByName('sOAntefirman').value := tsOrdenAntefirman.Text ;
         connection.zCommand.Params.ParamByName('dOFechaFirma').DataType := ftDate ;
         connection.zCommand.Params.ParamByName('dOFechaFirma').value := tdOrdenFechaFirma.Date ;
         connection.zCommand.Params.ParamByName('mOContratista').DataType := ftMemo ;
         connection.zCommand.Params.ParamByName('mOContratista').value := tmOrdenContratista.Text ;
         connection.zCommand.ExecSQL ;

         if (global_frmActivo = 'frm_estimainstalado') then
         begin
             frmEstimaInstalado.tiOrdenCambio.Items.Add('O.C. No. ['+ FloatToStr(tiCedulaProcedencia.Value)+ ']') ;
             frmEstimaInstalado.tiOrdenCambio.ItemIndex := frmEstimaInstalado.tiOrdenCambio.Items.IndexOf('O.C. No. ['+ FloatToStr(tiCedulaProcedencia.Value) + ']');
             frmEstimaInstalado.tiOrdenCambio.SetFocus;
         end;
         OrdendeCambio.Active := False ;
         OrdendeCambio.Open ;

  End
  Else
  Begin
         //capturar el ID original
         sIdOrig := OrdendeCambio.FieldByName('iCedulaProcedencia').AsString;
         lEdita := true;

         Posicion := OrdendeCambio.RecNo ;
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'UPDATE ordendecambio Set iCedulaProcedencia = :OrdenCambio, mCedulaMotivo = :Motivo, mCedulaProblematica = :Problematica, ' +
                                   'mCedulaCambioPropuesto = :Cambio, dCedulaMontoRequerido = :Monto, iCedulaDiasPlazo = :Plazo, ' +
                                   'iCedulaDiasProrroga = :Prorroga, sCedulaSoporte = :Soporte, lCedulaProcede = :Procede, ' +
                                   'lCedulaNoProcede = :NoProcede, mCedulaAccionesPropuestas = :AccionesPropuesta, sCedulaAreaResponsable = :AreaResponsable, sCedulaAntefirman = :CedulaAntefirman, ' +
                                   'dNotificacionFecha = :dNFecha, mNotificacionDescripcion = :mNDescripcion, sNotificacionProcede = :sNProcede, sNotificacionRequierePrecios = :sNRequierePrecios, ' +
                                   'sNotificacionExtiendeTiempo = :sNExtiendeTiempo, iNotificacionEntregaPropuesta = :iNEntregaPropuesta, sNotificacionPlanosAdjuntos = :sNPlanosAdjuntos, ' +
                                   'sNotificacionOtroRequerimiento = :sNOtroRquerimiento, ' +
                                   'mNotificacionSupervisor = :mNSupervisor, mNotificacionResidente = :mNResidente, sNotificacionAntefirman = :sNAntefirman, sNotificacionOficio = :sNOficio, ' +
                                   'lNotificacionSinComentarios = :lNSinComentarios, lNotificacionConComentarios = :lNConComentarios, lNotificacionConPropuesta = :lNConPropuesta, ' +
                                   'lNotificacionSinPropuesta = :lNSinPropuesta, dNotificacionFechaFirma = :dNFechaFirma, mNotificacionContratista = :mNContratista, mDictamenDescripcion = :mDDescripcion, ' +
                                   'mDictamenFundamento = :mDFundamento, mDictamenAntecedentes = :mDAntecedentes, mDictamenJustificacion = :mDJustificacion, mDictamenVerificacionPresupuestal = :mDVerificacionPresupuestal, ' +
                                   'mDictamenResidente = :mDResidente, sDictamenAntefirman = :sDAntefirman, sOrdenOficio = :sOOficio, sOrdenCambio = :sOCambio, dOrdenFecha = :dOFecha, dOrdenMonto = :dOMonto, iOrdenPlazo = :iOPlazo, ' +
                                   'mOrdenOtros = :mOOtros, sOrdenOficios = :sOOficios, sOrdenIngenieria = :sOIngenieria, sOrdenNotasBitacora = :sONotasBitacora, sOrdenModificacionProgramas = :sOModificacionProgramas, ' +
                                   'sOrdenPreciosExtraordinarios = :sOPreciosExtraordinarios, sOrdenSancionesdeCampo = :sOSancionesdeCampo, sOrdenAnalisisdePrecios = :sOAnalisisdePrecios, ' +
                                   'sOrdenNotificacionesdeCambio = :sONotifica, mOrdenSupervisor = :mOSupervisor, ' +
                                   'mOrdenResidente = :mOResidente, sOrdenAntefirman = :sOAntefirman, dOrdenFechaFirma = :dOFechaFirma, mOrdenContratista = :mOContratista ' +
                                   'Where sContrato = :Contrato And iCedulaProcedencia = :Orden') ;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Contrato').value := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftInteger ;
            connection.zCommand.Params.ParamByName('Orden').value := OrdendeCambio.FieldValues['iCedulaProcedencia'] ;
            connection.zCommand.Params.ParamByName('OrdenCambio').DataType := ftInteger ;
            connection.zCommand.Params.ParamByName('OrdenCambio').value := tiCedulaProcedencia.Value ;
            connection.zCommand.Params.ParamByName('Problematica').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Problematica').value := tmProblematica.Text ;
            connection.zCommand.Params.ParamByName('Cambio').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Cambio').value := tmCambio.Text ;
            connection.zCommand.Params.ParamByName('Motivo').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('Motivo').value := tmMotivo.Text ;
            connection.zCommand.Params.ParamByName('Monto').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Monto').value := tdMontoRequerido.Text ;
            connection.zCommand.Params.ParamByName('Plazo').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Plazo').value := tiPlazo.Text ;
            connection.zCommand.Params.ParamByName('Prorroga').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Prorroga').value := tiProrroga.Text ;
            connection.zCommand.Params.ParamByName('Soporte').DataType := ftString ;
            connection.zCommand.Params.ParamByName('Soporte').value := tsSoporte.Text ;
            connection.zCommand.Params.ParamByName('Procede').DataType := ftString ;
            If tProcede.Checked Then
                connection.zCommand.Params.ParamByName('Procede').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('Procede').value := '' ;

            connection.zCommand.Params.ParamByName('NoProcede').DataType := ftString ;
            If tNOProcede.Checked Then
                connection.zCommand.Params.ParamByName('NoProcede').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('NoProcede').value := '' ;
            connection.zCommand.Params.ParamByName('AccionesPropuesta').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('AccionesPropuesta').value := tmAccionesPropuestas.Text ;
            connection.zCommand.Params.ParamByName('AreaResponsable').DataType := ftString ;
            connection.zCommand.Params.ParamByName('AreaResponsable').value := tsAreaResponsable.Text ;
            connection.zCommand.Params.ParamByName('CedulaAntefirman').DataType := ftString ;
            connection.zCommand.Params.ParamByName('CedulaAntefirman').value := tsCedulaAntefirman.Text ;

            connection.zCommand.Params.ParamByName('dNFecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('dNFecha').value := tdNotificacionFecha.Date ;
            connection.zCommand.Params.ParamByName('mNDescripcion').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mNDescripcion').value := tmNotificacionDescripcion.Text ;
            connection.zCommand.Params.ParamByName('sNProcede').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sNProcede').value := tsNotificacionProcede.Text ;
            connection.zCommand.Params.ParamByName('sNRequierePrecios').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sNRequierePrecios').value := tsNotificacionRequierePrecios.Text ;
            connection.zCommand.Params.ParamByName('sNExtiendeTiempo').DataType :=ftString ;
            connection.zCommand.Params.ParamByName('sNExtiendeTiempo').value := tsNotificacionExtiendeTiempo.Text ;
            connection.zCommand.Params.ParamByName('iNEntregaPropuesta').DataType := ftInteger ;
            connection.zCommand.Params.ParamByName('iNEntregaPropuesta').value := tiNotificacionEntregaPropuesta.Value ;
            connection.zCommand.Params.ParamByName('sNPlanosAdjuntos').DataType := ftString ;
            If tNotificacionPlanosAdjuntos.Checked Then
                connection.zCommand.Params.ParamByName('sNPlanosAdjuntos').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sNPlanosAdjuntos').value := 'No' ;
            connection.zCommand.Params.ParamByName('sNOtroRquerimiento').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sNOtroRquerimiento').value := tsNotificacionOtroRequerimiento.Text ;
            connection.zCommand.Params.ParamByName('mNSupervisor').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mNSupervisor').value := tmNotificacionSupervisor.Text ;
            connection.zCommand.Params.ParamByName('mNResidente').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mNResidente').value := tmNotificacionResidente.Text ;
            connection.zCommand.Params.ParamByName('sNAntefirman').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sNAntefirman').value := tsNotificacionAntefirman.Text ;
            connection.zCommand.Params.ParamByName('sNOtroRquerimiento').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sNOtroRquerimiento').value := tsNotificacionOtroRequerimiento.Text ;
            connection.zCommand.Params.ParamByName('sNOficio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sNOficio').value := tsNotificacionOficio.Text ;
            connection.zCommand.Params.ParamByName('lNSinComentarios').DataType := ftString ;
            If tNotificacionSinComentarios.Checked Then
                connection.zCommand.Params.ParamByName('lNSinComentarios').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('lNSinComentarios').value := 'No' ;
            connection.zCommand.Params.ParamByName('lNConComentarios').DataType := ftString ;
            If tNotificacionConComentarios.Checked Then
                connection.zCommand.Params.ParamByName('lNConComentarios').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('lNConComentarios').value := 'No' ;
            connection.zCommand.Params.ParamByName('lNConPropuesta').DataType := ftString ;
            If tNotificacionConPropuesta.Checked Then
                connection.zCommand.Params.ParamByName('lNConPropuesta').value := 'Si'
            Else
                 connection.zCommand.Params.ParamByName('lNSinPropuesta').value := 'No' ;
            connection.zCommand.Params.ParamByName('lNSinPropuesta').DataType := ftString ;
            If tNotificacionSinPropuesta.Checked Then
                connection.zCommand.Params.ParamByName('lNSinPropuesta').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('lNSinPropuesta').value := 'No' ;
            connection.zCommand.Params.ParamByName('dNFechaFirma').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('dNFechaFirma').value := tdNotificacionFechaFirma.Date ;
            connection.zCommand.Params.ParamByName('mNContratista').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mNContratista').value := tmNotificacionContratista.Text ;


            connection.zCommand.Params.ParamByName('mDDescripcion').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mDDescripcion').value := tmDictamenDescripcion.Text ;
            connection.zCommand.Params.ParamByName('mDFundamento').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mDFundamento').value := tmDictamenFundamento.Text ;
            connection.zCommand.Params.ParamByName('mDAntecedentes').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mDAntecedentes').value := tmDictamenAntecedentes.Text ;
            connection.zCommand.Params.ParamByName('mDJustificacion').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mDJustificacion').value := tmDictamenJustificacion.Text ;
            connection.zCommand.Params.ParamByName('mDVerificacionPresupuestal').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mDVerificacionPresupuestal').value := tmDictamenVerificacionPresupuestal.Text ;
            connection.zCommand.Params.ParamByName('mDResidente').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mDResidente').value := tmDictamenResidente.Text ;
            connection.zCommand.Params.ParamByName('sDAntefirman').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sDAntefirman').value := tsDictamenAntefirman.Text ;

            connection.zCommand.Params.ParamByName('sOOficio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sOOficio').value := tsOrdenOficio.Text ;
            connection.zCommand.Params.ParamByName('sOCambio').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sOCambio').value := tsOrdenCambio.Text ;
            connection.zCommand.Params.ParamByName('dOFecha').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('dOFecha').value := tdOrdenFecha.Date ;
            connection.zCommand.Params.ParamByName('dOMonto').DataType := ftFloat ;
            connection.zCommand.Params.ParamByName('dOMonto').value := tdOrdenMonto.Value ;
            connection.zCommand.Params.ParamByName('iOPlazo').DataType := ftInteger ;
            connection.zCommand.Params.ParamByName('iOPlazo').value := tiOrdenPlazo.Value ;
            connection.zCommand.Params.ParamByName('mOOtros').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mOOtros').value := tmOrdenOtros.Text ;
            connection.zCommand.Params.ParamByName('sOOficios').DataType := ftString ;
            If tOrdenOficios.Checked Then
                connection.zCommand.Params.ParamByName('sOOficios').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sOOficios').value := 'No' ;
            connection.zCommand.Params.ParamByName('sOIngenieria').DataType := ftString ;
            If tOrdenIngenieria.Checked Then
                connection.zCommand.Params.ParamByName('sOIngenieria').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sOIngenieria').value := 'No' ;
            connection.zCommand.Params.ParamByName('sONotasBitacora').DataType := ftString ;
            If tOrdenNotasBitacora.Checked Then
                connection.zCommand.Params.ParamByName('sONotasBitacora').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sONotasBitacora').value := 'No' ;
            connection.zCommand.Params.ParamByName('sOModificacionProgramas').DataType := ftString ;
            If tOrdenModificacionProgramas.Checked Then
                connection.zCommand.Params.ParamByName('sOModificacionProgramas').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sOModificacionProgramas').value := 'No' ;
            connection.zCommand.Params.ParamByName('sOPreciosExtraordinarios').DataType := ftString ;
            If tOrdenPreciosExtraordinarios.Checked Then
                connection.zCommand.Params.ParamByName('sOPreciosExtraordinarios').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sOPreciosExtraordinarios').value := 'No' ;
            connection.zCommand.Params.ParamByName('sOSancionesdeCampo').DataType := ftString ;
            If tOrdenSancionesdeCampo.Checked Then
                connection.zCommand.Params.ParamByName('sOSancionesdeCampo').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sOSancionesdeCampo').value := 'No' ;
            connection.zCommand.Params.ParamByName('sOAnalisisdePrecios').DataType := ftString ;
            If tOrdenAnalisisdePrecios.Checked Then
                connection.zCommand.Params.ParamByName('sOAnalisisdePrecios').value := 'Si'
            Else
                connection.zCommand.Params.ParamByName('sOAnalisisdePrecios').value := 'No' ;
            connection.zCommand.Params.ParamByName('sONotifica').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sONotifica').value := tsOrdenNotificacionesdeCambio.Text ;
            connection.zCommand.Params.ParamByName('mOSupervisor').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mOSupervisor').value := tmOrdenSupervisor.Text ;
            connection.zCommand.Params.ParamByName('mOResidente').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mOResidente').value := tmOrdenResidente.Text ;
            connection.zCommand.Params.ParamByName('sOAntefirman').DataType := ftString ;
            connection.zCommand.Params.ParamByName('sOAntefirman').value := tsOrdenAntefirman.Text ;
            connection.zCommand.Params.ParamByName('dOFechaFirma').DataType := ftDate ;
            connection.zCommand.Params.ParamByName('dOFechaFirma').value := tdOrdenFechaFirma.Date ;
            connection.zCommand.Params.ParamByName('mOContratista').DataType := ftMemo ;
            connection.zCommand.Params.ParamByName('mOContratista').value := tmOrdenContratista.Text ;
            connection.zCommand.ExecSQL ;
            OrdendeCambio.active := False ;
            OrdendeCambio.Open ;
            OrdendeCambio.RecNo := Posicion ;

  End ;
  frmBarra2.btnCancelClick(Sender);
  btnPartidas.Enabled := True ;

  if (global_frmActivo = 'frm_estimainstalado') then
  begin
        global_frmActivo := 'ninguno';
        frmbarra2.btnCancel.Click;
        frmbarra2.btnExit.Click;
  end;

  tmProblematica.ReadOnly := True ;
  tmCambio.ReadOnly := True ;
  tmMotivo.ReadOnly := True ;
  tdMontoRequerido.ReadOnly := True ;
  tiPlazo.ReadOnly := True ;
  tiProrroga.ReadOnly := True ;
  tsSoporte.ReadOnly := True ;
  tProcede.Enabled := False ;
  tNoProcede.Enabled := False ;
  tmAccionesPropuestas.ReadOnly := True ;
  tsAreaResponsable.ReadOnly := True ;
  tsCedulaAntefirman.ReadOnly := True ;

  tdNotificacionFecha.Enabled := False ;
  tmNotificacionDescripcion.ReadOnly := True ;
  tsNotificacionProcede.Enabled := False ;
  tsNotificacionRequierePrecios.Enabled := False ;
  tsNotificacionExtiendeTiempo.Enabled := False ;
  tiNotificacionEntregaPropuesta.Enabled := False ;
  tNotificacionPlanosAdjuntos.Enabled := False ;
  tsNotificacionOtroRequerimiento.ReadOnly := True ;
  tmNotificacionSupervisor.ReadOnly := True ;
  tmNotificacionResidente.ReadOnly := True ;
  tsNotificacionAntefirman.ReadOnly := True ;
  tsNotificacionOficio.ReadOnly := True ;
  tNotificacionSinComentarios.Enabled := False ;
  tNotificacionConComentarios.Enabled := False ;
  tNotificacionConPropuesta.Enabled := False ;
  tNotificacionSinPropuesta.Enabled := False ;
  tdNotificacionFechaFirma.Enabled := False ;
  tmNotificacionContratista.ReadOnly := True ;

  tmDictamenDescripcion.ReadOnly := True ;
  tmDictamenFundamento.ReadOnly := True ;
  tmDictamenAntecedentes.ReadOnly := True ;
  tmDictamenJustificacion.ReadOnly := True ;
  tmDictamenVerificacionPresupuestal.ReadOnly := True ;
  tmDictamenResidente.ReadOnly := True ;
  tsDictamenAntefirman.ReadOnly := True ;

  tsOrdenOficio.ReadOnly := True ;
  tsOrdenCambio.ReadOnly := True ;
  tdOrdenFecha.Enabled := False ;
  tdOrdenMonto.ReadOnly := True ;
  tiOrdenPlazo.ReadOnly := True ;
  tmOrdenOtros.ReadOnly := True ;
  tOrdenOficios.Enabled := False ;
  tOrdenIngenieria.Enabled := False ;
  tOrdenNotasBitacora.Enabled := False ;
  tOrdenModificacionProgramas.Enabled := False ;
  tOrdenPreciosExtraordinarios.Enabled := False ;
  tOrdenSancionesdeCampo.Enabled := False ;
  tOrdenAnalisisdePrecios.Enabled := False ;
  tsOrdenNotificacionesdeCambio.ReadOnly := True ;
  tmOrdenSupervisor.ReadOnly := True ;
  tmOrdenResidente.ReadOnly := True ;
  tsOrdenAntefirman.ReadOnly := True ;
  tdOrdenFechaFirma.Enabled := False ;
  tmOrdenContratista.ReadOnly := True ;
  //desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra2);
 except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordendecambio', 'Al salvar registro', 0);
      lEdita := false;//cancelar la actualizacion de tablas dependientes
    end;
 end;
 if (lEdita) and (floattostr(tiCedulaProcedencia.Value) <> sIdOrig) then
 begin
   tablasDependientes(sIdOrig);
 end;

 GRID_ORDENESDECAMBIO.Enabled:=true;
if banderaAgregar then
frmbarra2.btnAdd.Click;
end;

procedure TfrmOrdendeCambio.OrdendeCambioAfterScroll(DataSet: TDataSet);
begin
    If OrdendeCambio.RecordCount > 0 Then
    Begin
        tiCedulaProcedencia.Value := OrdendeCambio.FieldValues['iCedulaProcedencia'] ;
        tmProblematica.Text := OrdendeCambio.FieldValues['mCedulaProblematica'] ;
        tmMotivo.Text := OrdendeCambio.FieldValues['mCedulaMotivo'] ;
        tmCambio.Text := OrdendeCambio.FieldValues['mCedulaCambioPropuesto'] ;
        tdMontoRequerido.Text := OrdendeCambio.FieldValues['dCedulaMontoRequerido'] ;
        tiPlazo.Text := OrdendeCambio.FieldValues['iCedulaDiasPlazo'] ;
        tiProrroga.Text := OrdendeCambio.FieldValues['iCedulaDiasProrroga'] ;
        tsSoporte.Text := OrdendeCambio.FieldValues['sCedulaSoporte'] ;
        If OrdendeCambio.FieldValues['lCedulaProcede'] = 'Si' Then
            tProcede.Checked := True
        Else
            tProcede.Checked := False ;
        If OrdendeCambio.FieldValues['lCedulaNoProcede'] = 'Si' Then
            tNoProcede.Checked := True
        Else
            tNoProcede.Checked := False ;
        tmAccionesPropuestas.Text := OrdendeCambio.FieldValues['mCedulaAccionesPropuestas'] ;
        tsAreaResponsable.Text := OrdendeCambio.FieldValues['sCedulaAreaResponsable'] ;
        tsCedulaAntefirman.Text := OrdendeCambio.FieldValues['sCedulaAntefirman'] ;

        tdNotificacionFecha.Date := OrdendeCambio.FieldValues['dNotificacionFecha'] ;
        tmNotificacionDescripcion.Text := OrdendeCambio.FieldValues['mNotificacionDescripcion'] ;
        tsNotificacionProcede.Text := OrdendeCambio.FieldValues['sNotificacionProcede'] ;
        tsNotificacionRequierePrecios.Text := OrdendeCambio.FieldValues['sNotificacionRequierePrecios'] ;
        tsNotificacionExtiendeTiempo.Text := OrdendeCambio.FieldValues['sNotificacionExtiendeTiempo'] ;
        tiNotificacionEntregaPropuesta.Value := OrdendeCambio.FieldValues['iNotificacionEntregaPropuesta'] ;
        If OrdendeCambio.FieldValues['sNotificacionPlanosAdjuntos'] = 'Si' Then
            tNotificacionPlanosAdjuntos.Checked := True
        Else
            tNotificacionPlanosAdjuntos.Checked := False ;
        tsNotificacionOtroRequerimiento.Text := OrdendeCambio.FieldValues['sNotificacionOtroRequerimiento'] ;
        tmNotificacionSupervisor.Text := OrdendeCambio.FieldValues['mNotificacionSupervisor'] ;
        tmNotificacionResidente.Text := OrdendeCambio.FieldValues['mNotificacionResidente'] ;
        tsNotificacionAntefirman.Text := OrdendeCambio.FieldValues['sNotificacionAntefirman'] ;
        tsNotificacionOficio.Text := OrdendeCambio.FieldValues['sNotificacionOficio'] ;
        If OrdendeCambio.FieldValues['lNotificacionSinComentarios'] = 'Si' Then
            tNotificacionSinComentarios.Checked := True
        Else
            tNotificacionSinComentarios.Checked := False ;
        If OrdendeCambio.FieldValues['lNotificacionConComentarios'] = 'Si' Then
            tNotificacionConComentarios.Checked := True
        Else
            tNotificacionConComentarios.Checked := False ;
        If OrdendeCambio.FieldValues['lNotificacionConPropuesta'] = 'Si' Then
            tNotificacionConPropuesta.Checked := True
        Else
            tNotificacionConPropuesta.Checked := False ;
        If OrdendeCambio.FieldValues['lNotificacionSinPropuesta'] = 'Si' Then
            tNotificacionSinPropuesta.Checked := True
        Else
            tNotificacionSinPropuesta.Checked := False ;
        tdNotificacionFechaFirma.Date := OrdendeCambio.FieldValues['dNotificacionFechaFirma'] ;
        tmNotificacionContratista.Text := OrdendeCambio.FieldValues['mNotificacionContratista'] ;

        tmDictamenDescripcion.Text := OrdendeCambio.FieldValues['mDictamenDescripcion'] ;
        tmDictamenFundamento.Text := OrdendeCambio.FieldValues['mDictamenFundamento'] ;
        tmDictamenAntecedentes.Text := OrdendeCambio.FieldValues['mDictamenAntecedentes'] ;
        tmDictamenJustificacion.Text := OrdendeCambio.FieldValues['mDictamenJustificacion'] ;
        tmDictamenVerificacionPresupuestal.Text := OrdendeCambio.FieldValues['mDictamenVerificacionPresupuestal'] ;
        tmDictamenResidente.Text := OrdendeCambio.FieldValues['mDictamenResidente'] ;
        tsDictamenAntefirman.Text := OrdendeCambio.FieldValues['sDictamenAntefirman'] ;

        tsOrdenOficio.Text := OrdendeCambio.FieldValues['sOrdenOficio'] ;
        tsOrdenCambio.Text := OrdendeCambio.FieldValues['sOrdenCambio'] ;
        tdOrdenFecha.Date := OrdendeCambio.FieldValues['dOrdenFecha'] ;
        tdOrdenMonto.Value := OrdendeCambio.FieldValues['dOrdenMonto'] ;
        tiOrdenPlazo.Value := OrdendeCambio.FieldValues['iOrdenPlazo'] ;
        tmOrdenOtros.Text := OrdendeCambio.FieldValues['mOrdenOtros'] ;
        If OrdendeCambio.FieldValues['sOrdenOficios'] = 'Si' Then
              tOrdenOficios.Checked := True
        Else
              tOrdenOficios.Checked := False ;
        If OrdendeCambio.FieldValues['sOrdenIngenieria'] = 'Si' Then
              tOrdenIngenieria.Checked := True
        Else
              tOrdenIngenieria.Checked := False ;
        If OrdendeCambio.FieldValues['sOrdenNotasBitacora'] = 'Si' Then
              tOrdenNotasBitacora.Checked := True
        Else
              tOrdenNotasBitacora.Checked := False ;
        If OrdendeCambio.FieldValues['sOrdenModificacionProgramas'] = 'Si' Then
              tOrdenModificacionProgramas.Checked := True
        Else
              tOrdenModificacionProgramas.Checked := False ;
        If OrdendeCambio.FieldValues['sOrdenPreciosExtraordinarios'] = 'Si' Then
              tOrdenPreciosExtraordinarios.Checked := True
        Else
              tOrdenPreciosExtraordinarios.Checked := False ;
        If OrdendeCambio.FieldValues['sOrdenSancionesdeCampo'] = 'Si' Then
              tOrdenSancionesdeCampo.Checked := True
        Else
              tOrdenSancionesdeCampo.Checked := False ;
        If OrdendeCambio.FieldValues['sOrdenSancionesdeCampo'] = 'Si' Then
              tOrdenAnalisisdePrecios.Checked := True
        Else
              tOrdenAnalisisdePrecios.Checked := False ;
        tsOrdenNotificacionesdeCambio.Text := OrdendeCambio.FieldValues['sOrdenNotificacionesdeCambio'] ;
        tmOrdenSupervisor.Text := OrdendeCambio.FieldValues['mOrdenSupervisor'] ;
        tmOrdenResidente.Text := OrdendeCambio.FieldValues['mOrdenResidente'] ;
        tsOrdenAntefirman.Text := OrdendeCambio.FieldValues['sOrdenAntefirman'] ;
        tdOrdenFechaFirma.Date := OrdendeCambio.FieldValues['dOrdenFechaFirma'] ;
        tmOrdenContratista.Text := OrdendeCambio.FieldValues['mOrdenContratista'] ;
    End
    Else
    Begin
        tiCedulaProcedencia.Value := 0 ;
        tmProblematica.Text := '' ;
        tmMotivo.Text := '' ;
        tmCambio.Text := '' ;
        tdMontoRequerido.Text := '0.00' ;
        tiPlazo.Text := '0' ;
        tiProrroga.Text := '0' ;
        tsSoporte.Text := '' ;
        tProcede.Checked := True ;
        tmAccionesPropuestas.Text := '' ;
        tsAreaResponsable.Text := '' ;
        tsCedulaAntefirman.Text := '' ;

        tdNotificacionFecha.Date := Date ;
        tmNotificacionDescripcion.Text := '' ;
        tsNotificacionProcede.Text := 'Si' ;
        tsNotificacionRequierePrecios.Text := 'Si' ;
        tsNotificacionExtiendeTiempo.Text := 'Si' ;
        tiNotificacionEntregaPropuesta.Value := 0 ;
        tNotificacionPlanosAdjuntos.Checked := False ;
        tsNotificacionOtroRequerimiento.Text := '' ;
        tmNotificacionSupervisor.Text := '' ;
        tmNotificacionResidente.Text := '' ;
        tsNotificacionAntefirman.Text := '' ;
        tsNotificacionOficio.Text := '' ;
        tNotificacionSinComentarios.Checked := True ;
        tNotificacionConPropuesta.Checked := True ;
        tdNotificacionFechaFirma.Date := Date ;
        tmNotificacionContratista.Text := '' ;

        tmDictamenDescripcion.Text := '' ;
        tmDictamenFundamento.Text := '' ;
        tmDictamenAntecedentes.Text := '' ;
        tmDictamenJustificacion.Text := '' ;
        tmDictamenVerificacionPresupuestal.Text := '' ;
        tmDictamenResidente.Text := '' ;
        tsDictamenAntefirman.Text := '' ;

        tsOrdenOficio.Text := '' ;
        tsOrdenCambio.Text := '' ;
        tdOrdenFecha.Date := Date ;
        tdOrdenMonto.Value := 0 ;
        tiOrdenPlazo.Value := 0 ;
        tmOrdenOtros.Text := '' ;

        tOrdenOficios.Checked := False ;
        tOrdenIngenieria.Checked := False ;
        tOrdenNotasBitacora.Checked := False ;
        tOrdenModificacionProgramas.Checked := False ;
        tOrdenPreciosExtraordinarios.Checked := False ;
        tOrdenSancionesdeCampo.Checked := False ;
        tOrdenAnalisisdePrecios.Checked := False ;
        tsOrdenNotificacionesdeCambio.Text := '' ;
        tmOrdenSupervisor.Text := '' ;
        tmOrdenResidente.Text := '' ;
        tsOrdenAntefirman.Text := '' ;
        tdOrdenFechaFirma.Date := Date ;
        tmOrdenContratista.Text := '' ;

    End ;
end;

procedure TfrmOrdendeCambio.frmBarra2btnCancelClick(Sender: TObject);
begin
 try
  tiCedulaProcedencia.ReadOnly := False ;
  tmProblematica.ReadOnly := True ;
  tmCambio.ReadOnly := True ;
  tmMotivo.ReadOnly := True ;
  tdMontoRequerido.ReadOnly := True ;
  tiPlazo.ReadOnly := True ;
  tiProrroga.ReadOnly := True ;
  tsSoporte.ReadOnly := True ;
  tProcede.Enabled := False ;
  tNoProcede.Enabled := False ;
  tmAccionesPropuestas.ReadOnly := True ;
  tsAreaResponsable.ReadOnly := True ;

  tdNotificacionFecha.Enabled := False ;
  tmNotificacionDescripcion.ReadOnly := True ;
  tsNotificacionProcede.Enabled := False ;
  tsNotificacionRequierePrecios.Enabled := False ;
  tsNotificacionExtiendeTiempo.Enabled := False ;
  tiNotificacionEntregaPropuesta.Enabled := False ;
  tNotificacionPlanosAdjuntos.Enabled := False ;
  tsNotificacionOtroRequerimiento.ReadOnly := True ;
  tmNotificacionSupervisor.ReadOnly := True ;
  tmNotificacionResidente.ReadOnly := True ;
  tsNotificacionAntefirman.ReadOnly := True ;
  tsNotificacionOficio.ReadOnly := True ;
  tNotificacionSinComentarios.Enabled := False ;
  tNotificacionConComentarios.Enabled := False ;
  tNotificacionConPropuesta.Enabled := False ;
  tNotificacionSinPropuesta.Enabled := False ;
  tdNotificacionFechaFirma.Enabled := False ;
  tmNotificacionContratista.ReadOnly := True ;

  tmDictamenDescripcion.ReadOnly := True ;
  tmDictamenFundamento.ReadOnly := True ;
  tmDictamenAntecedentes.ReadOnly := True ;
  tmDictamenJustificacion.ReadOnly := True ;
  tmDictamenVerificacionPresupuestal.ReadOnly := True ;
  tmDictamenResidente.ReadOnly := True ;
  tsDictamenantefirman.ReadOnly := True ;

  tsOrdenOficio.ReadOnly := True ;
  tsOrdenCambio.ReadOnly := True ;
  tdOrdenFecha.Enabled := False ;
  tdOrdenMonto.ReadOnly := True ;
  tiOrdenPlazo.ReadOnly := True ;
  tmOrdenOtros.ReadOnly := True ;
  tOrdenOficios.Enabled := False ;
  tOrdenIngenieria.Enabled := False ;
  tOrdenNotasBitacora.Enabled := False ;
  tOrdenModificacionProgramas.Enabled := False ;
  tOrdenPreciosExtraordinarios.Enabled := False ;
  tOrdenSancionesdeCampo.Enabled := False ;
  tOrdenAnalisisdePrecios.Enabled := False ;
  tsOrdenNotificacionesdeCambio.ReadOnly := True ;
  tmOrdenSupervisor.ReadOnly := True ;
  tmOrdenResidente.ReadOnly := True ;
  tmOrdenContratista.ReadOnly := True ;
  //desactivapop(popupprincipal);
  frmBarra2.btnCancelClick(Sender);
  btnPartidas.Enabled := True ;
  BotonPermiso.permisosBotones(frmBarra2);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordendecambio', 'Al cancelar', 0);
  end;
 end;
 GRID_ORDENESDECAMBIO.Enabled:=true;
end;

procedure TfrmOrdendeCambio.frmBarra2btnDeleteClick(Sender: TObject);
Var
    Posicion : Integer ;
begin
 try
   If OrdendeCambio.RecordCount > 0 Then
      If OrdendeCambio.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
         if not posibleBorrar(OrdendeCambio.FieldByName('iCedulaProcedencia').AsString) then
         begin
           MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
           exit;
         end;
         If MessageDlg('Desea eliminar el la Orden de Cambio seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         Begin
              Posicion := OrdendeCambio.RecNo ;
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zCommand.SQL.Add ( 'Delete from ordendecambio where sContrato = :contrato And iCedulaProcedencia = :Orden') ;
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftInteger ;
              connection.zCommand.Params.ParamByName('Orden').Value :=  OrdendeCambio.FieldValues[ 'iCedulaProcedencia' ] ;
              connection.zCommand.ExecSQL ;

              if (global_frmActivo = 'frm_estimainstalado') then
              begin
                  frmEstimaInstalado.tiOrdenCambio.Items.Delete(frmEstimaInstalado.tiOrdenCambio.Items.IndexOf('O.C. No. ['+ FloatToStr(tiCedulaProcedencia.Value) + ']'));
                  frmEstimaInstalado.tiOrdenCambio.Refresh ;
                  frmEstimaInstalado.tiOrdenCambio.SetFocus;
              end;           
              OrdendeCambio.active := False ;
              OrdendeCambio.Open ;

         End
      End
      Else
         MessageDlg('Orden de cambio aplicada, no pueden realizarse cambios', mtWarning, [mbOk], 0);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordendecambio', 'Al eliminar registro', 0);
  end;
 end;

 if (global_frmActivo = 'frm_estimainstalado') then
 begin
       global_frmActivo := 'ninguno';
       frmbarra2.btnCancel.Click;
       frmbarra2.btnExit.Click;
  end;
end;
//*************carmen, procesos del popup ***********************************
procedure TfrmOrdendeCambio.Insertar1Click(Sender: TObject);
begin
    frmBarra2.btnAdd.Click
end;
procedure TfrmOrdendeCambio.Editar1Click(Sender: TObject);
begin
    frmBarra2.btnEdit.Click
end;
procedure TfrmOrdendeCambio.Registrar1Click(Sender: TObject);
begin
    frmBarra2.btnPost.Click
end;
procedure TfrmOrdendeCambio.Can1Click(Sender: TObject);
begin
    frmBarra2.btnCancel.Click
end;
procedure TfrmOrdendeCambio.Eliminar1Click(Sender: TObject);
begin
    frmBarra2.btnDelete.Click
end;
procedure TfrmOrdendeCambio.Refresh1Click(Sender: TObject);
begin
    frmBarra2.btnRefresh.Click
end;
procedure TfrmOrdendeCambio.Imprimir1Click(Sender: TObject);
begin
frmBarra2.btnPrinter.Click
end;
procedure TfrmOrdendeCambio.Paste1Click(Sender: TObject);
begin
  try
  except
   on e : exception do begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_embarcaciones', 'Al pegar registro', 0);
   end;
  end;
end;
procedure TfrmOrdendeCambio.Salir1Click(Sender: TObject);
begin
    close;
end;

//****************************************************************************
procedure TfrmOrdendeCambio.frmBarra2btnPrinterClick(Sender: TObject);
begin
    if not FileExists(global_files + global_miReporte + '_OrdendeCambio.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_OrdendeCambio.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;
    try
    if grid_ordenesdecambio.DataSource.DataSet.IsEmpty=false then
       rOrdenCambio ( global_contrato, OrdendeCambio.FieldValues['iCedulaProcedencia'] , frmOrdendeCambio )

    except
    on e : exception do begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordendecambio', 'Al imprimir', 0);
    end;
    end;
end;


procedure TfrmOrdendeCambio.Grid_OrdenesdeCambioTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
Var
  sCampo : String ;
begin
  sCampo := Field.FieldName ;
  OrdendeCambio.Active := False ;
  OrdendeCambio.Params.ParamByName('Contrato').DataType := ftString ;
  OrdendeCambio.Params.ParamByName('Contrato').Value := global_contrato ;
  OrdendeCambio.Params.ParamByName('Ordenado').DataType := ftString ;
  OrdendeCambio.Params.ParamByName('Ordenado').Value := sCampo ;
  OrdendeCambio.Open ;
end;


procedure TfrmOrdendeCambio.tiCedulaProcedenciaChange(Sender: TObject);
begin
tCurrenciEditChangef(tiCedulaProcedencia,'Cedula Procedencia');
end;

procedure TfrmOrdendeCambio.tiCedulaProcedenciaEnter(Sender: TObject);
begin
    tiCedulaProcedencia.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tiCedulaProcedenciaExit(Sender: TObject);
begin
    tiCedulaProcedencia.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tiCedulaProcedenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltrotCurrencyEdit(tiCedulaProcedencia,key) then
   key:=#0;

    If Key = #13 Then
        tdMontoRequerido.SetFocus 
end;

function TfrmOrdendeCambio.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;     
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('iCedulaProcedencia');ParamValuesSET.Add(floattostr(tiCedulaProcedencia.Value));
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('iCedulaProcedencia');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('ordendecambio',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
  else begin
    ParamNamesSET.Clear;ParamValuesSET.Clear;ParamNamesWHERE.Clear;ParamValuesWHERE.Clear;
    ParamNamesSET.Add('iOrdenCambio');ParamValuesSET.Add(floattostr(tiCedulaProcedencia.Value));
    ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
    ParamNamesWHERE.Add('iOrdenCambio');ParamValuesWHERE.Add(idOrig);
    if not UnitTablasImpactadas.impactar('ordendecambio1',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
    begin
      result := false;
      showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
    end
  end;
end;

function TfrmOrdendeCambio.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;     
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('iCedulaProcedencia');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('ordendecambio',ParamNamesWHERE,ParamValuesWHERE);
  if result then
  begin
    ParamNamesWHERE.Clear;ParamValuesWHERE.Clear;
    ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
    ParamNamesWHERE.Add('iOrdenCambio');ParamValuesWHERE.Add(idOrig);
    result := not UnitTablasImpactadas.hayDependientes('ordendecambio1',ParamNamesWHERE,ParamValuesWHERE);
  end;
end;

procedure TfrmOrdendeCambio.tdMontoRequeridoChange(Sender: TObject);
begin
teditchangef(tdMontoRequerido,'Monto');
end;

procedure TfrmOrdendeCambio.tdMontoRequeridoEnter(Sender: TObject);
begin
    tdMontoRequerido.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tdMontoRequeridoExit(Sender: TObject);
begin
    tdMontoRequerido.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tiPlazoChange(Sender: TObject);
begin
teditchangef(tiPlazo,'Plazo');

end;

procedure TfrmOrdendeCambio.tiPlazoEnter(Sender: TObject);
begin
    tiPlazo.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tiPlazoExit(Sender: TObject);
begin
    tiPlazo.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tiProrrogaChange(Sender: TObject);
begin
teditchangef(tiProrroga,'Prorroga');
end;

procedure TfrmOrdendeCambio.tiProrrogaEnter(Sender: TObject);
begin
    tiProrroga.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tiProrrogaExit(Sender: TObject);
begin
    tiProrroga.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tsAreaResponsableEnter(Sender: TObject);
begin
    tsAreaResponsable.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tsAreaResponsableExit(Sender: TObject);
begin
    tsAreaResponsable.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tdMontoRequeridoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTedit(tdMontoRequerido,key) then
   key:=#0;
  If Key = #13 Then
      tiPlazo.SetFocus
end;

procedure TfrmOrdendeCambio.tiPlazoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTedit(tiPlazo,key) then
   key:=#0;
    If Key = #13 Then
        tiProrroga.SetFocus 
end;

procedure TfrmOrdendeCambio.tiProrrogaKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltroTedit(tiProrroga,key) then
   key:=#0;
  If Key = #13 Then
      tsSoporte.SetFocus 
end;

procedure TfrmOrdendeCambio.tsSoporteEnter(Sender: TObject);
begin
    tsSoporte.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tsSoporteExit(Sender: TObject);
begin
    tsSoporte.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tsSoporteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsAreaResponsable.SetFocus
end;

procedure TfrmOrdendeCambio.tmNotificacionDescripcionEnter(
  Sender: TObject);
begin
    tmNotificacionDescripcion.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tmNotificacionDescripcionExit(Sender: TObject);
begin
    tmNotificacionDescripcion.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tsNotificacionProcedeEnter(Sender: TObject);
begin
    tsNotificacionProcede.Color := global_color_Entrada
end;

procedure TfrmOrdendeCambio.tsNotificacionProcedeExit(Sender: TObject);
begin
    tsNotificacionProcede.Color := global_color_salida
end;

procedure TfrmOrdendeCambio.tsNotificacionProcedeKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNotificacionRequierePrecios.SetFocus 
end ;

procedure TfrmOrdendeCambio.tsNotificacionRequierePreciosEnter(
  Sender: TObject);
begin
    tsNotificacionRequierePrecios.Color := global_Color_Entrada
end;

procedure TfrmOrdendeCambio.tsNotificacionRequierePreciosExit(
  Sender: TObject);
begin
    tsNotificacionRequierePrecios.Color := global_Color_salida
end;

procedure TfrmOrdendeCambio.tsNotificacionRequierePreciosKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tNotificacionPlanosAdjuntos.SetFocus 
end;

procedure TfrmOrdendeCambio.tsNotificacionExtiendeTiempoEnter(
  Sender: TObject);
begin
    tsNotificacionExtiendeTiempo.Color := global_color_entrada
end;

procedure TfrmOrdendeCambio.tsNotificacionExtiendeTiempoExit(
  Sender: TObject);
begin
    tsNotificacionExtiendeTiempo.Color := global_color_salida
end;

procedure TfrmOrdendeCambio.tsNotificacionExtiendeTiempoKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tiNotificacionEntregaPropuesta.SetFocus 
end;

procedure TfrmOrdendeCambio.tiNotificacionEntregaPropuestaChange(
  Sender: TObject);
begin
      if (AnsiPos( '-',vartostr(tiNotificacionEntregaPropuesta.Text) ))>0  then
        tiNotificacionEntregaPropuesta.Text:=intToStr((strToInt(tiNotificacionEntregaPropuesta.text))*-1);
end;

procedure TfrmOrdendeCambio.tiNotificacionEntregaPropuestaEnter(
  Sender: TObject);
begin
    tiNotificacionEntregaPropuesta.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tiNotificacionEntregaPropuestaExit(
  Sender: TObject);
begin
    tiNotificacionEntregaPropuesta.Color := global_color_salida
end;

procedure TfrmOrdendeCambio.tiNotificacionEntregaPropuestaKeyPress(
  Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
      tsNotificacionOtroRequerimiento.SetFocus
end;

procedure TfrmOrdendeCambio.tsNotificacionOtroRequerimientoEnter(
  Sender: TObject);
begin
    tsNotificacionOtroRequerimiento.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tsNotificacionOtroRequerimientoExit(
  Sender: TObject);
begin
    tsNotificacionOtroRequerimiento.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tsNotificacionOtroRequerimientoKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tmNotificacionSupervisor.SetFocus
end;

procedure TfrmOrdendeCambio.tmNotificacionSupervisorEnter(Sender: TObject);
begin
    tmNotificacionSupervisor.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmNotificacionSupervisorExit(Sender: TObject);
begin
    tmNotificacionSupervisor.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmNotificacionSupervisorKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
      tmNotificacionResidente.SetFocus
end;

procedure TfrmOrdendeCambio.tmNotificacionResidenteEnter(Sender: TObject);
begin
    tmNotificacionResidente.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmNotificacionResidenteExit(Sender: TObject);
begin
    tmNotificacionResidente.Color := global_color_salidaPU
end;


procedure TfrmOrdendeCambio.tmNotificacionResidenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
      tsNotificacionAntefirman.SetFocus
    
end;

procedure TfrmOrdendeCambio.tsNotificacionOficioEnter(Sender: TObject);
begin
    tsNotificacionOficio.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tsNotificacionOficioExit(Sender: TObject);
begin
    tsNotificacionOficio.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tsNotificacionOficioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      if tnotificacionSinComentarios.Enabled then
        tNotificacionSinComentarios.SetFocus
        else
        tmNotificacionContratista.SetFocus;
end;

procedure TfrmOrdendeCambio.tmNotificacionContratistaEnter(
  Sender: TObject);
begin
    tmNotificacionContratista.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tmNotificacionContratistaExit(Sender: TObject);
begin
    tmNotificacionContratista.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tmDictamenDescripcionEnter(Sender: TObject);
begin
    tmDictamenDescripcion.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmDictamenDescripcionExit(Sender: TObject);
begin
    tmDictamenDescripcion.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmDictamenFundamentoEnter(Sender: TObject);
begin
    tmDictamenFundamento.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmDictamenFundamentoExit(Sender: TObject);
begin
    tmDictamenFundamento.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmDictamenAntecedentesEnter(Sender: TObject);
begin
    tmDictamenAntecedentes.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmDictamenAntecedentesExit(Sender: TObject);
begin
    tmDictamenAntecedentes.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmDictamenJustificacionEnter(Sender: TObject);
begin
    tmDictamenJustificacion.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tmDictamenJustificacionExit(Sender: TObject);
begin
    tmDictamenJustificacion.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tmDictamenVerificacionPresupuestalEnter(
  Sender: TObject);
begin
    tmDictamenVerificacionPresupuestal.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmDictamenVerificacionPresupuestalExit(
  Sender: TObject);
begin
    tmDictamenVerificacionPresupuestal.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmDictamenResidenteEnter(Sender: TObject);
begin
    tmDictamenResidente.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmDictamenResidenteExit(Sender: TObject);
begin
    tmDictamenResidente.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tsOrdenOficioEnter(Sender: TObject);
begin
    tsOrdenOficio.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tsOrdenOficioExit(Sender: TObject);
begin
    tsOrdenOficio.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tsOrdenOficioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsOrdenCambio.SetFocus 
end;

procedure TfrmOrdendeCambio.tsOrdenCambioEnter(Sender: TObject);
begin
    tsOrdenCambio.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tsOrdenCambioExit(Sender: TObject);
begin
    tsOrdenCambio.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tsOrdenCambioKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
     if tdordenfecha.Enabled then
        tdOrdenFecha.SetFocus
        else
        tdordenmonto.SetFocus;

end;

procedure TfrmOrdendeCambio.tdOrdenFechaEnter(Sender: TObject);
begin
    tdOrdenFecha.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tdOrdenFechaExit(Sender: TObject);
begin
    tdOrdenFecha.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tdOrdenFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdOrdenMonto.SetFocus 

end;

procedure TfrmOrdendeCambio.tdOrdenMontoChange(Sender: TObject);
begin
tCurrenciEditChangef(tdOrdenMonto,'Monto');
end;

procedure TfrmOrdendeCambio.tdOrdenMontoEnter(Sender: TObject);
begin
    tdOrdenMonto.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tdOrdenMontoExit(Sender: TObject);
begin
    tdOrdenMonto.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tdOrdenMontoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltrotCurrencyEdit(tdOrdenMonto,key) then
   key:=#0;
    If Key = #13 Then
        tiOrdenPlazo.SetFocus
end;

procedure TfrmOrdendeCambio.tiOrdenPlazoChange(Sender: TObject);
begin
tCurrenciEditChangef(tiOrdenPlazo,'Plazo');
end;

procedure TfrmOrdendeCambio.tiOrdenPlazoEnter(Sender: TObject);
begin
    tiOrdenPlazo.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tiOrdenPlazoExit(Sender: TObject);
begin
    tiOrdenPlazo.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tiOrdenPlazoKeyPress(Sender: TObject;
  var Key: Char);
begin
if not keyFiltrotCurrencyEdit(tiOrdenPlazo,key) then
   key:=#0;
    If Key = #13 Then
        tmOrdenOtros.SetFocus 
end;

procedure TfrmOrdendeCambio.tmOrdenOtrosEnter(Sender: TObject);
begin
    tmOrdenOtros.Color := global_color_EntradaERP
end;

procedure TfrmOrdendeCambio.tmOrdenOtrosExit(Sender: TObject);
begin
    tmOrdenOtros.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmOrdenOtrosKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #13 Then
          tsOrdenNotificacionesdeCambio.SetFocus
end;

procedure TfrmOrdendeCambio.tmOrdenSupervisorEnter(Sender: TObject);
begin
    tmOrdenSupervisor.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tmOrdenSupervisorExit(Sender: TObject);
begin
    tmOrdenSupervisor.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tmOrdenSupervisorKeyPress(Sender: TObject;
  var Key: Char);
begin
        tmOrdenResidente.setFocus
end;

procedure TfrmOrdendeCambio.tmOrdenResidenteEnter(Sender: TObject);
begin
    tmOrdenResidente.Color := global_color_EntradaERP
end;

procedure TfrmOrdendeCambio.tmOrdenResidenteExit(Sender: TObject);
begin
    tmOrdenResidente.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmOrdenResidenteKeyPress(Sender: TObject;
  var Key: Char);
begin
        tsOrdenAntefirman.SetFocus
end;

procedure TfrmOrdendeCambio.tmOrdenContratistaEnter(Sender: TObject);
begin
    tmOrdenContratista.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmOrdenContratistaExit(Sender: TObject);
begin
    tmOrdenContratista.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmOrdenContratistaKeyPress(Sender: TObject;
  var Key: Char);
begin
      tsOrdenOficio.SetFocus
end;

procedure TfrmOrdendeCambio.tdNotificacionFechaEnter(Sender: TObject);
begin
    tdNotificacionFecha.Color := global_Color_Entrada
end;

procedure TfrmOrdendeCambio.tdNotificacionFechaExit(Sender: TObject);
begin
    tdNotificacionFecha.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tdNotificacionFechaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tiNotificacionEntregaPropuesta.SetFocus ;
end;

procedure TfrmOrdendeCambio.tsOrdenNotificacionesdeCambioEnter(
  Sender: TObject);
begin
    tsOrdenNotificacionesdeCambio.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tsOrdenNotificacionesdeCambioExit(
  Sender: TObject);
begin
    tsOrdenNotificacionesdeCambio.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tsOrdenNotificacionesdeCambioKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
       tmOrdenSupervisor.SetFocus 
end;

procedure TfrmOrdendeCambio.tmAccionesPropuestasEnter(Sender: TObject);
begin
    tmAccionesPropuestas.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tmAccionesPropuestasExit(Sender: TObject);
begin
    tmAccionesPropuestas.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tmAccionesPropuestasKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
    tmAccionesPropuestas.SetFocus
end;

procedure TfrmOrdendeCambio.tsCedulaAntefirmanEnter(Sender: TObject);
begin
    tsCedulaAntefirman.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tsCedulaAntefirmanExit(Sender: TObject);
begin
    tsCedulaAntefirman.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tsCedulaAntefirmanKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
      tiCedulaProcedencia.SetFocus
end;

procedure TfrmOrdendeCambio.tsAreaResponsableKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsCedulaAntefirman.SetFocus
end;

procedure TfrmOrdendeCambio.tsNotificacionAntefirmanEnter(Sender: TObject);
begin
    tsNotificacionAntefirman.Color := global_color_entradaERP
end;

procedure TfrmOrdendeCambio.tsNotificacionAntefirmanExit(Sender: TObject);
begin
    tsNotificacionAntefirman.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tdNotificacionFechaFirmaEnter(Sender: TObject);
begin
    tdNotificacionFechaFirma.Color := global_color_Entrada
end;

procedure TfrmOrdendeCambio.tdNotificacionFechaFirmaExit(Sender: TObject);
begin
    tdNotificacionFechaFirma.Color := global_color_salida
end;

procedure TfrmOrdendeCambio.tdNotificacionFechaFirmaKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tmNotificacionContratista.SetFocus 
end;

procedure TfrmOrdendeCambio.tsNotificacionAntefirmanKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsNotificacionOficio.SetFocus 
end;

procedure TfrmOrdendeCambio.tsOrdenAntefirmanEnter(Sender: TObject);
begin
    tsOrdenAntefirman.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tsOrdenAntefirmanExit(Sender: TObject);
begin
    tsOrdenAntefirman.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.tsOrdenAntefirmanKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
    if tdordenFechaFirma.Enabled then
        tdOrdenFechaFirma.SetFocus
        else
        tmordencontratista.SetFocus;
end;

procedure TfrmOrdendeCambio.tdOrdenFechaFirmaEnter(Sender: TObject);
begin
    tdOrdenFechaFirma.Color := global_color_entrada
end;

procedure TfrmOrdendeCambio.tdOrdenFechaFirmaExit(Sender: TObject);
begin
    tdOrdenFechaFirma.Color := global_color_salidaPU
end;

procedure TfrmOrdendeCambio.tdOrdenFechaFirmaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tmOrdenContratista.SetFocus 
end;

procedure TfrmOrdendeCambio.tsDictamenAntefirmanEnter(Sender: TObject);
begin
    tsDictamenAntefirman.Color := global_Color_entradaERP
end;

procedure TfrmOrdendeCambio.tsDictamenAntefirmanExit(Sender: TObject);
begin
    tsDictamenAntefirman.Color := global_Color_salidaPU
end;

procedure TfrmOrdendeCambio.Grid_OrdenesdeCambioEnter(Sender: TObject);
begin
    If frmBarra2.btnCancel.Enabled Then
        frmBarra2.btnCancel.Click 
end;

End.
