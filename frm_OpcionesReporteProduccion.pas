unit frm_OpcionesReporteProduccion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  AdvCircularProgress, UnitExcepciones, sListBox, sCheckListBox, sMaskEdit,
  sCustomComboEdit, sTooledit, ZAbstractDataset, sCurrEdit, NxPageControl,
  Grids, DBGrids, AdvPageControl, NxCollection, AdvGlowButton, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxDBGrid, NxDBColumns, NxColumns,
  rxToolEdit, rxCurrEdit, RXDBCtrl, sCheckBox;
type
  TfrmOpcionesReporteProduccion = class(TForm)
    QryConfiguracion: TZReadOnlyQuery;
    QryConfiguracioniFirmasGeneradores: TStringField;
    QryConfiguracioniFirmas: TStringField;
    QryConfiguracionsOrdenPerEq: TStringField;
    QryConfiguracionsTipoPartida: TStringField;
    QryConfiguracionsImprimePEP: TStringField;
    QryConfiguracionsClaveSeguridad: TStringField;
    QryConfiguracioncStatusProceso: TStringField;
    QryConfiguracionsOrdenExtraordinaria: TStringField;
    QryConfiguracionlLicencia: TStringField;
    QryConfiguracionsDireccion1: TStringField;
    QryConfiguracionsDireccion2: TStringField;
    QryConfiguracionsDireccion3: TStringField;
    QryConfiguracionsCiudad: TStringField;
    QryConfiguracionsTelefono: TStringField;
    QryConfiguracionbImagen: TBlobField;
    QryConfiguracionsContrato: TStringField;
    QryConfiguracionsNombre: TStringField;
    QryConfiguracionsPiePagina: TStringField;
    QryConfiguracionsEmail: TStringField;
    QryConfiguracionsWeb: TStringField;
    QryConfiguracionsSlogan: TStringField;
    QryConfiguracionsFirmasElectronicas: TStringField;
    QryConfiguracionlImprimeExtraordinario: TStringField;
    QryConfiguracionsCodigo: TStringField;
    QryConfiguracionmDescripcion: TMemoField;
    QryConfiguracionsTitulo: TMemoField;
    QryConfiguracionmCliente: TMemoField;
    QryConfiguracionbImagenPEP: TBlobField;
    dsConfiguracion: TfrxDBDataset;
    rxRecursos: TRxMemoryData;
    rxRecursossRecurso1: TStringField;
    rxRecursossMedida1: TStringField;
    rxRecursosdCantidadConsumo1: TFloatField;
    rxRecursosdCantidadProducido1: TFloatField;
    rxRecursosdCantidadActual1: TFloatField;
    rxRecursossRecurso2: TStringField;
    rxRecursossMedida2: TStringField;
    rxRecursosdCantidadConsumo2: TFloatField;
    rxRecursosdCantidadProducido2: TFloatField;
    rxRecursosdCantidadActual2: TFloatField;
    rxRecursossRecurso3: TStringField;
    rxRecursossMedida3: TStringField;
    rxRecursosdCantidadConsumo3: TFloatField;
    rxRecursosdCantidadProducido3: TFloatField;
    rxRecursosdCantidadActual3: TFloatField;
    rxRecursossRecurso4: TStringField;
    rxRecursossMedida4: TStringField;
    rxRecursosdCantidadConsumo4: TFloatField;
    rxRecursosdCantidadProducido4: TFloatField;
    rxRecursosdCantidadActual4: TFloatField;
    rxRecursosEmbarcacion: TStringField;
    embarcacion: TZReadOnlyQuery;
    dsEmbarcacion: TfrxDBDataset;
    dsOrdenes: TfrxDBDataset;
    qryOrdenes: TZReadOnlyQuery;
    rxOrdenes: TRxMemoryData;
    rxOrdenessOrden: TStringField;
    rxOrdenessDescripcionOrden: TStringField;
    rxOrdenessTipoActividad: TStringField;
    rxOrdenessNumeroActividad: TStringField;
    rxOrdenesmDescripcion: TMemoField;
    rReporte: TfrxReport;
    zOrdenes: TZQuery;
    ds_ordenes: TDataSource;
    rxProduccion: TRxMemoryData;
    dsPersonal: TfrxDBDataset;
    rxProducciondCantidad1: TFloatField;
    rxProducciondCantidad2: TFloatField;
    rxProducciondCantidad3: TFloatField;
    rxProducciondCantidad4: TFloatField;
    rxProducciondCantidad5: TFloatField;
    rxProducciondCantidad7: TFloatField;
    rxProducciondCantidad6: TFloatField;
    rxProduccioniNivel: TIntegerField;
    rxProduccionsOrden1: TStringField;
    rxProduccionsOrden2: TStringField;
    rxProduccionsOrden3: TStringField;
    rxProduccionsOrden4: TStringField;
    rxProduccionsOrden5: TStringField;
    rxProduccionsOrden6: TStringField;
    rxProduccionsOrden7: TStringField;
    QryConfiguracionsContratoBarco: TStringField;
    QryConfiguracionmDescripcionBarco: TMemoField;
    tiempo: TTimer;
    rxProducciondCantidad8: TFloatField;
    rxProduccionsOrden8: TStringField;
    rxProduccionsAnexo: TStringField;
    PanelImpresion: TNxHeaderPanel;
    rxProduccionsOrden: TStringField;
    rxProduccionsDescripcion: TStringField;
    rxProducciondTotal: TFloatField;
    rxProduccionMes: TRxMemoryData;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField9: TFloatField;
    dsProduccionMes: TfrxDBDataset;
    pgProduccion: TAdvPageControl;
    pgImprimir: TAdvTabSheet;
    Label4: TLabel;
    Label1: TLabel;
    tFechaInicio: TsDateEdit;
    tFechaFinal: TsDateEdit;
    cmdWarning: TBitBtn;
    GroupBox1: TGroupBox;
    chkPersonal: TCheckBox;
    chkEquipo: TCheckBox;
    chkPernocta: TCheckBox;
    chkBarco: TCheckBox;
    pgOpciones: TAdvTabSheet;
    NxHeaderPanel1: TNxHeaderPanel;
    tsListaOrden: TRxCheckListBox;
    cmdOk: TButton;
    cmdCancel: TButton;
    GroupBox2: TGroupBox;
    btnDelete: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnPost: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnAdd: TAdvGlowButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    tsNombre: TEdit;
    Label11: TLabel;
    tmNotas: TMemo;
    GroupBox3: TGroupBox;
    chkConsolidado: TCheckBox;
    chkDetallado: TCheckBox;
    chkGenerador: TCheckBox;
    Label16: TLabel;
    tsOrden: TEdit;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBCheckBoxColumn1: TNxDBCheckBoxColumn;
    ds_ots: TDataSource;
    Label17: TLabel;
    tFecha: TsDateEdit;
    dsDT: TfrxDBDataset;
    rxGraficaDT: TRxMemoryData;
    rxGraficaDTdFecha: TDateField;
    dsFisico: TfrxDBDataset;
    rxGraficaFisico: TRxMemoryData;
    dsProgramado: TfrxDBDataset;
    rxGraficaCosto: TRxMemoryData;
    DateField2: TDateField;
    rxGraficaDTDia: TIntegerField;
    rxGraficaFisicodia: TIntegerField;
    rxGraficaCostodia: TIntegerField;
    AdvTabSheet1: TAdvTabSheet;
    zqOts: TZReadOnlyQuery;
    rxGraficaDTdDT: TFloatField;
    rxGraficaCostodCosto: TFloatField;
    rxGraficaFisicodFecha: TDateField;
    rxGraficaFisicodFisico: TFloatField;
    tdPersonal: TRxCalcEdit;
    tdEquipo: TRxCalcEdit;
    tdPernocta: TRxCalcEdit;
    tdBarco: TRxCalcEdit;
    tdMontoPersonal: TRxCalcEdit;
    tdMontoEquipo: TRxCalcEdit;
    tdMontoPernocta: TRxCalcEdit;
    tdMontoBarco: TRxCalcEdit;
    tdTotalDia: TRxCalcEdit;
    NxHeaderPanel3: TNxHeaderPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    tFechaInicioPeriodo: TsDateEdit;
    tFechaFinalPeriodo: TsDateEdit;
    cmdAplicar: TBitBtn;
    tDt: TRxCalcEdit;
    tCosto: TRxCalcEdit;
    tDtDias: TRxCalcEdit;
    tCostoDias: TRxCalcEdit;
    tdTipoCambio: TRxCalcEdit;
    tDias1: TRxCalcEdit;
    tDias2: TRxCalcEdit;
    chkCobraBarco: TCheckBox;
    Label10: TLabel;
    zqOtsdIdFecha: TDateField;
    zqOtssContrato: TStringField;
    zqOtssNombre: TStringField;
    zqOtsdPersonal: TFloatField;
    zqOtsdEquipo: TFloatField;
    zqOtsdPernocta: TFloatField;
    zqOtsdBarco: TFloatField;
    zqOtsdMontoPersonal: TFloatField;
    zqOtsdMontoEquipo: TFloatField;
    zqOtsdMontoPernocta: TFloatField;
    zqOtsdMontoBarco: TFloatField;
    zqOtsdMontoDia: TFloatField;
    zqOtsdMontoDT: TFloatField;
    zqOtsdMontoCosto: TFloatField;
    zqOtsdMontoDTDia: TFloatField;
    zqOtsdMontoCostoDia: TFloatField;
    zqOtsdFechaInicioPeriodo: TDateField;
    zqOtsdFechaFinalPeriodo: TDateField;
    zqOtsdTipoCambio: TFloatField;
    zqOtsmNotas: TMemoField;
    zqOtsseleccion: TLargeintField;
    zqOtslBarco: TStringField;
    GroupBox4: TGroupBox;
    chkDT: TCheckBox;
    chkCosto: TCheckBox;
    chkFisico: TCheckBox;
    rxProduccionbDt: TBooleanField;
    rxProduccionbCosto: TBooleanField;
    rxProduccionbFisico: TBooleanField;
    Label18: TLabel;
    tdAnexos: TRxCalcEdit;
    Label19: TLabel;
    tdMontoAnexos: TRxCalcEdit;
    rxProducciondCantidad9: TFloatField;
    rxProducciondCantidad10: TFloatField;
    zqOtsdAnexo: TFloatField;
    zqOtsdMontoAnexo: TFloatField;
    rxProduccionMesdCantidad9: TFloatField;
    rxProduccionMesdCantidad10: TFloatField;
    rxGeneradorDia: TRxMemoryData;
    rxGeneradorDiasGrupo: TStringField;
    rxGeneradorDiadia1: TFloatField;
    rxGeneradorDiadia2: TFloatField;
    rxGeneradorDiadia3: TFloatField;
    rxGeneradorDiadia4: TFloatField;
    rxGeneradorDiadia5: TFloatField;
    rxGeneradorDiadia6: TFloatField;
    rxGeneradorDiadia7: TFloatField;
    rxGeneradorDiadia8: TFloatField;
    rxGeneradorDiadia9: TFloatField;
    rxGeneradorDiadia10: TFloatField;
    rxGeneradorDiadia11: TFloatField;
    rxGeneradorDiadia12: TFloatField;
    rxGeneradorDiadia13: TFloatField;
    rxGeneradorDiadia14: TFloatField;
    rxGeneradorDiadia15: TFloatField;
    rxGeneradorDiadia16: TFloatField;
    rxGeneradorDiadia17: TFloatField;
    rxGeneradorDiadia18: TFloatField;
    rxGeneradorDiadia19: TFloatField;
    rxGeneradorDiadia20: TFloatField;
    rxGeneradorDiadia21: TFloatField;
    rxGeneradorDiadia22: TFloatField;
    rxGeneradorDiadia23: TFloatField;
    rxGeneradorDiadia24: TFloatField;
    rxGeneradorDiadia25: TFloatField;
    rxGeneradorDiadia26: TFloatField;
    rxGeneradorDiadia27: TFloatField;
    rxGeneradorDiadia28: TFloatField;
    rxGeneradorDiadia29: TFloatField;
    rxGeneradorDiadia30: TFloatField;
    rxGeneradorDiadia31: TFloatField;
    rxGeneradorDiadTotal: TFloatField;
    frProduccion: TfrxDBDataset;
    rxGeneradorDiaiNivel: TIntegerField;
    rxGeneradorDiaFechaInicio: TDateField;
    chkTipoCambioDia: TCheckBox;
    chkTipoCambioPeriodo: TCheckBox;
    lblDia: TLabel;
    lblPeriodo: TLabel;
    procedure tFechaInicioEnter(Sender: TObject);
    procedure tFechaInicioExit(Sender: TObject);
    procedure hTerminoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tFechaInicioChange(Sender: TObject);
    procedure ordenesactuales;
    procedure CrearGerencialPDF();
    procedure ValidaDatos();
    procedure CmdOkClick(Sender: TObject);
    procedure rReporteGetValue(const VarName: string; var Value: Variant);
    procedure hTerminoKeyPress(Sender: TObject; var Key: Char);
    procedure tiempoTimer(Sender: TObject);
    procedure cmdWarningClick(Sender: TObject);
    procedure tFechaFinalEnter(Sender: TObject);
    procedure tFechaFinalExit(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tdPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure tdEquipoKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoEquipoKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tdBarcoKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoBarcoKeyPress(Sender: TObject; var Key: Char);
    procedure tdTotalDiaKeyPress(Sender: TObject; var Key: Char);
    procedure tdTipoCambioKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure tmNotasEnter(Sender: TObject);
    procedure tmNotasExit(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure tsOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrdenEnter(Sender: TObject);
    procedure tsOrdenExit(Sender: TObject);
    procedure tsListaOpcionesClickCheck(Sender: TObject);
    procedure pgProduccionCanChange(Sender: TObject; FromPage, ToPage: Integer;
      var AllowChange: Boolean);

    //Procedimientos,,
    procedure ProduccionDia(sParamOrden, sParamOrdenCobro: string; lCobro : boolean; dParamTipoCambio : double; dParamFecha :tDate);
    procedure ImprimeProduccionDia(sParamOrden, sParamNombre : string);
    procedure ImprimeProduccionMes(sParamOrden, sParamNombre : string);
    procedure InsertaOrdenes(dParamFecha : tDate);
    procedure CargarOts();
    procedure CargarLista();
    procedure Grafica();

    procedure btnDeleteClick(Sender: TObject);
    procedure tFechaExit(Sender: TObject);
    procedure tFechaFinalChange(Sender: TObject);
    procedure tFechaInicioPeriodoEnter(Sender: TObject);
    procedure tFechaInicioPeriodoExit(Sender: TObject);
    procedure tFechaFinalPeriodoEnter(Sender: TObject);
    procedure tFechaFinalPeriodoExit(Sender: TObject);
    procedure tFechaInicioPeriodoChange(Sender: TObject);
    procedure tFechaFinalPeriodoChange(Sender: TObject);
    procedure tDtChange(Sender: TObject);
    procedure tCostoChange(Sender: TObject);
    procedure cmdAplicarClick(Sender: TObject);
    procedure zqOtsAfterScroll(DataSet: TDataSet);
    procedure chkConsolidadoClick(Sender: TObject);
    procedure chkDetalladoClick(Sender: TObject);
    procedure chkGeneradorClick(Sender: TObject);
    procedure tDtKeyPress(Sender: TObject; var Key: Char);
    procedure tCostoKeyPress(Sender: TObject; var Key: Char);
    procedure tDtDiasKeyPress(Sender: TObject; var Key: Char);
    procedure tCostoDiasKeyPress(Sender: TObject; var Key: Char);
    procedure tFechaInicioPeriodoKeyPress(Sender: TObject; var Key: Char);
    procedure tFechaFinalPeriodoKeyPress(Sender: TObject; var Key: Char);
    procedure tdPersonalEnter(Sender: TObject);
    procedure tdPersonalExit(Sender: TObject);
    procedure tdEquipoEnter(Sender: TObject);
    procedure tdEquipoExit(Sender: TObject);
    procedure tdPernoctaEnter(Sender: TObject);
    procedure tdPernoctaExit(Sender: TObject);
    procedure tdBarcoEnter(Sender: TObject);
    procedure tdBarcoExit(Sender: TObject);
    procedure tdMontoPersonalEnter(Sender: TObject);
    procedure tdMontoPersonalExit(Sender: TObject);
    procedure tdMontoEquipoEnter(Sender: TObject);
    procedure tdMontoEquipoExit(Sender: TObject);
    procedure tdMontoPernoctaEnter(Sender: TObject);
    procedure tdMontoPernoctaExit(Sender: TObject);
    procedure tdMontoBarcoEnter(Sender: TObject);
    procedure tdMontoBarcoExit(Sender: TObject);
    procedure tdTotalDiaEnter(Sender: TObject);
    procedure tdTotalDiaExit(Sender: TObject);
    procedure tDtEnter(Sender: TObject);
    procedure tDtExit(Sender: TObject);
    procedure tCostoEnter(Sender: TObject);
    procedure tCostoExit(Sender: TObject);
    procedure tDtDiasEnter(Sender: TObject);
    procedure tDtDiasExit(Sender: TObject);
    procedure tCostoDiasEnter(Sender: TObject);
    procedure tCostoDiasExit(Sender: TObject);
    procedure tdTipoCambioEnter(Sender: TObject);
    procedure tdTipoCambioExit(Sender: TObject);
    procedure tdAnexosKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoAnexosKeyPress(Sender: TObject; var Key: Char);
    procedure tdAnexosEnter(Sender: TObject);
    procedure tdAnexosExit(Sender: TObject);
    procedure tdMontoAnexosEnter(Sender: TObject);
    procedure tdMontoAnexosExit(Sender: TObject);
    procedure tFechaEnter(Sender: TObject);
    procedure chkTipoCambioDiaClick(Sender: TObject);
    procedure chkTipoCambioPeriodoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcionesReporteProduccion: TfrmOpcionesReporteProduccion;
  //Variables locales reporte Produccion
  num : integer;
  lInserta, lAplica, lAlerta, lActualiza, lCobra : boolean;
  sHoraFinal, sMensaje : string;
  sOpcion : string;
  dCambio : double;

implementation

{$R *.dfm}

procedure TfrmOpcionesReporteProduccion.FormShow(Sender: TObject);
begin
     tfechaInicio.Date := date;
     tfechaFinal.Date  := date;
     lAlerta     := False;
     ValidaDatos;
     ordenesactuales;

    tsNombre.ReadOnly := True;
    tsOrden.ReadOnly  := True;
    tdPersonal.ReadOnly := True;
    tdEquipo.ReadOnly := True;
    tdPernocta.ReadOnly := True;
    tdBarco.ReadOnly := True;
    tdMontoPersonal.ReadOnly := True;
    tdMontoEquipo.ReadOnly := True;
    tdMontoPernocta.ReadOnly := True;
    tdMontoBarco.ReadOnly := True;
    tdTotalDia.ReadOnly := True;
    tmNotas.ReadOnly := True;
end;

procedure TfrmOpcionesReporteProduccion.hTerminoExit(Sender: TObject);
begin
    ValidaDatos;
end;

procedure TfrmOpcionesReporteProduccion.hTerminoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       cmdok.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tCostoChange(Sender: TObject);
begin
     if (tCosto.Value > 0) and (tDias2.Value > 0) then
       tCostoDias.Value := tCosto.Value / tDias2.Value;
end;

procedure TfrmOpcionesReporteProduccion.tCostoDiasEnter(Sender: TObject);
begin
    tCostoDias.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tCostoDiasExit(Sender: TObject);
begin
    tCostoDias.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tCostoDiasKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tdTipoCambio.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tCostoEnter(Sender: TObject);
begin
    tCosto.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tCostoExit(Sender: TObject);
begin
    tCosto.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tCostoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tDtDias.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tdAnexosEnter(Sender: TObject);
begin
    tdAnexos.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdAnexosExit(Sender: TObject);
begin
    tdAnexos.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdAnexosKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
       tdMontoAnexos.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tdBarcoEnter(Sender: TObject);
begin
    tdBarco.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdBarcoExit(Sender: TObject);
begin
    tdBarco.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdBarcoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdMontoBarco.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdEquipoEnter(Sender: TObject);
begin
    tdEquipo.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdEquipoExit(Sender: TObject);
begin
    tdEquipo.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdMontoEquipo.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoAnexosEnter(Sender: TObject);
begin
    tdMontoAnexos.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoAnexosExit(Sender: TObject);
begin
    tdMontoAnexos.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoAnexosKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key =#13 then
       tdTotalDia.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tdMontoBarcoEnter(Sender: TObject);
begin
    tdMontoBarco.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoBarcoExit(Sender: TObject);
begin
    tdMontoBarco.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoBarcoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tdAnexos.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoEquipoEnter(Sender: TObject);
begin
    tdMontoEquipo.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoEquipoExit(Sender: TObject);
begin
    tdMontoEquipo.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoEquipoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdPernocta.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoPernoctaEnter(Sender: TObject);
begin
    tdMontoPernocta.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoPernoctaExit(Sender: TObject);
begin
    tdMontoPernocta.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdBarco.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoPersonalEnter(Sender: TObject);
begin
    tdMontoPersonal.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoPersonalExit(Sender: TObject);
begin
    tdMontoPersonal.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdMontoPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdEquipo.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdPernoctaEnter(Sender: TObject);
begin
    tdPernocta.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdPernoctaExit(Sender: TObject);
begin
    tdPernocta.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdMontoPernocta.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tdPersonalEnter(Sender: TObject);
begin
    tdPersonal.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdPersonalExit(Sender: TObject);
begin
    tdPersonal.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdMontoPersonal.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tDtChange(Sender: TObject);
begin
    if (tDt.Value > 0) and (tDias1.Value > 0) then
       tDtDias.Value := tDt.Value / tDias1.Value;
end;

procedure TfrmOpcionesReporteProduccion.tDtDiasEnter(Sender: TObject);
begin
    tdtDias.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tDtDiasExit(Sender: TObject);
begin
    tdtDias.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tDtDiasKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tCostoDias.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tDtEnter(Sender: TObject);
begin
    tdt.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tDtExit(Sender: TObject);
begin
    tdt.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdTipoCambioEnter(Sender: TObject);
begin
    tdTipoCambio.Color := global_color_entrada;
    dCambio := tdTipoCambio.Value;
end;

procedure TfrmOpcionesReporteProduccion.tdTipoCambioExit(Sender: TObject);
begin
    tdTipoCambio.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdTipoCambioKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       cmdAplicar.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tDtKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tCosto.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tdTotalDiaEnter(Sender: TObject);
begin
    tdtotalDia.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tdTotalDiaExit(Sender: TObject);
begin
    tdTotalDia.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tdTotalDiaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tmNotas.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.tFechaEnter(Sender: TObject);
begin
    tFecha.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tFechaExit(Sender: TObject);
begin
    tFecha.Color := global_color_salida;
    CargarOts;
    CargarLista;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalChange(Sender: TObject);
begin
     CargarLista;
     ValidaDatos;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalEnter(Sender: TObject);
begin
    tFechaFinal.Color := global_Color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalExit(Sender: TObject);
begin
    tFechaFinal.color := global_Color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalPeriodoChange(
  Sender: TObject);
begin
    if tFechaFinalPeriodo.Date >= tFechaInicioPeriodo.Date then
    begin
        tdias1.Value := (tFechaFinalPeriodo.Date - tFechaInicioPeriodo.Date) + 1;
        tdias2.Value := (tFechaFinalPeriodo.Date - tFechaInicioPeriodo.Date) + 1;
    end;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalPeriodoEnter(
  Sender: TObject);
begin
    tFechaFinalPeriodo.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalPeriodoExit(Sender: TObject);
begin
    tFechaFinalPeriodo.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tFechaFinalPeriodoKeyPress(
  Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tDt.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioChange(Sender: TObject);
begin
    tFechaFinal.Date := tfechaInicio.Date;
    CargarLista;
    ValidaDatos;
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioEnter(Sender: TObject);
begin
    tfechaInicio.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioExit(Sender: TObject);
begin
    tfechaInicio.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioPeriodoChange(
  Sender: TObject);
begin
    if tFechaFinalPeriodo.Date >= tFechaInicioPeriodo.Date then
    begin
        tdias1.Value := (tFechaFinalPeriodo.Date - tFechaInicioPeriodo.Date) + 1;
        tdias2.Value := (tFechaFinalPeriodo.Date - tFechaInicioPeriodo.Date) + 1;
    end;
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioPeriodoEnter(
  Sender: TObject);
begin
    tFechaInicioPeriodo.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioPeriodoExit(
  Sender: TObject);
begin
    tFechaInicioPeriodo.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tFechaInicioPeriodoKeyPress(
  Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tFechaFinalPeriodo.SetFocus
end;

procedure TfrmOpcionesReporteProduccion.tiempoTimer(Sender: TObject);
begin
    if lAlerta = True then
    begin
        if tiempo.Interval = 900 then
        begin
            cmdWarning.Visible := False;
            tiempo.Interval := 1000;
        end
        else
        begin
            cmdWarning.Visible := True;
            tiempo.Interval := 900;
        end;

    end;
end;

procedure TfrmOpcionesReporteProduccion.tmNotasEnter(Sender: TObject);
begin
    tmNotas.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tmNotasExit(Sender: TObject);
begin
    tmNotas.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tsListaOpcionesClickCheck(
  Sender: TObject);
begin
   if tsListaOrden.Checked[tsListaOrden.ItemIndex]  = false then
    begin
        tsNombre.Enabled := false;
        tsOrden.Enabled  := false;
        tdPersonal.Enabled := False;
        tdEquipo.Enabled := False;
        tdPernocta.Enabled := False;
        tdBarco.Enabled := False;
        tdMontoPersonal.Enabled := False;
        tdMontoEquipo.Enabled := False;
        tdMontoPernocta.Enabled := False;
        tdMontoBarco.Enabled := False;
        tdTotalDia.Enabled := False;
        tmNotas.Enabled := False;
    end
    else
    begin
        tsNombre.Enabled := True;
        tsOrden.Enabled  := True;
        tdPersonal.Enabled := True;
        tdEquipo.Enabled := True;
        tdPernocta.Enabled := True;
        tdBarco.Enabled := True;
        tdMontoPersonal.Enabled := True;
        tdMontoEquipo.Enabled := True;
        tdMontoPernocta.Enabled := True;
        tdMontoBarco.Enabled := True;
        tdTotalDia.Enabled := True;

        tmNotas.Enabled := True;
    end;

end;

procedure TfrmOpcionesReporteProduccion.tsNombreEnter(Sender: TObject);
begin
    tsNombre.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tsNombreExit(Sender: TObject);
begin
    tsNombre.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsOrden.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.rReporteGetValue(const VarName: string;
  var Value: Variant);
begin
   //Reporte Gerencial
   if tfechaInicio.Date = tfechaFinal.Date then
   begin
      If CompareText(VarName, 'FECHA_REPORTE') = 0 then
         Value := tfechaInicio.Date ;
   end
   else
   begin
      If CompareText(VarName, 'FECHA_REPORTE') = 0 then
         Value := 'DEL '+ dateToStr(tfechaInicio.Date) +' AL '+ DateToStr(tfechaFinal.Date) ;
   end;

   If CompareText(VarName, 'FECHA_REPORTECONS') = 0 then
       Value := global_fecha_reportecons ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;
   If CompareText(VarName, 'EMBARCACION') = 0 then
       Value := global_nombre_Embarcacion ;

   If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := tFechaInicio.Date;

   If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := tFechafinal.Date;
end;

procedure TfrmOpcionesReporteProduccion.btnAddClick(Sender: TObject);
begin
    btnAdd.Enabled    := False;
    btnEdit.Enabled   := False;
    btnPost.Enabled   := True;
    btnCancel.Enabled := True;
    btnDelete.Enabled := False;

    tsNombre.ReadOnly := False;
    tsOrden.ReadOnly  := False;
    tdPersonal.ReadOnly := False;
    tdEquipo.ReadOnly := False;
    tdPernocta.ReadOnly := False;
    tdBarco.ReadOnly := False;
    tdMontoPersonal.ReadOnly := False;
    tdMontoEquipo.ReadOnly := False;
    tdMontoPernocta.ReadOnly := False;
    tdMontoBarco.ReadOnly := False;
    tdTotalDia.ReadOnly := False;
    tmNotas.ReadOnly := False;

    tsNombre.Text := '';
    tsOrden.Text  := '';
    tdPersonal.value := 0;
    tdEquipo.value := 0;
    tdPernocta.value := 0;
    tdBarco.value := 0;
    tdMontoPersonal.value := 0;
    tdMontoEquipo.value := 0;
    tdMontoPernocta.value := 0;
    tdMontoBarco.value := 0;
    tdTotalDia.value := 0;
    tmNotas.text := '';

    sOpcion := 'Nuevo';

    tsNombre.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.btnCancelClick(Sender: TObject);
begin
    btnAdd.Enabled    := True;
    btnEdit.Enabled   := True;
    btnPost.Enabled   := False;
    btnCancel.Enabled := False;
    btnDelete.Enabled := True;

    tsNombre.ReadOnly := True;
    tsOrden.ReadOnly  := True;
    tdPersonal.ReadOnly := True;
    tdEquipo.ReadOnly := True;
    tdPernocta.ReadOnly := True;
    tdBarco.ReadOnly := True;
    tdMontoPersonal.ReadOnly := True;
    tdMontoEquipo.ReadOnly := True;
    tdMontoPernocta.ReadOnly := True;
    tdMontoBarco.ReadOnly := True;
    tdTotalDia.ReadOnly := True;
    tmNotas.ReadOnly := True;
end;

procedure TfrmOpcionesReporteProduccion.btnDeleteClick(Sender: TObject);
var
   zInserta : tzReadOnlyQuery;
begin
    if zqOts.RecordCount > 0 then
    begin
        zInserta := tzReadOnlyQuery.Create(self);
        zInserta.Connection := connection.zConnection;

        zInserta.Active := False;
        zInserta.SQL.Clear;
        zInserta.SQL.Add('delete from produccion_diaria where dIdFecha =:Fecha and sContrato =:Contrato ');
        zInserta.ParamByName('fecha').AsDate      := tFecha.Date;
        zInserta.ParamByName('contrato').AsString := zqOTs.FieldValues['sContrato'];
        zInserta.ExecSQL;

        CargarOts;
        zInserta.Destroy;
    end;

end;

procedure TfrmOpcionesReporteProduccion.btnEditClick(Sender: TObject);
begin
    if zqOts.RecordCount = 0 then
       exit;

    btnAdd.Enabled    := False;
    btnEdit.Enabled   := False;
    btnPost.Enabled   := True;
    btnCancel.Enabled := True;
    btnDelete.Enabled := False;

    tsNombre.ReadOnly := False;
    tsOrden.ReadOnly  := False;
    tdPersonal.ReadOnly := False;
    tdEquipo.ReadOnly := False;
    tdPernocta.ReadOnly := False;
    tdBarco.ReadOnly := False;
    tdMontoPersonal.ReadOnly := False;
    tdMontoEquipo.ReadOnly := False;
    tdMontoPernocta.ReadOnly := False;
    tdMontoBarco.ReadOnly := False;
    tdTotalDia.ReadOnly := False;
    tmNotas.ReadOnly := False;

    sOpcion := 'Edit';
    lCobra  := chkCobraBarco.Checked;

    tsNombre.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.btnPostClick(Sender: TObject);
var
   zInserta, zCostos, zBuscaOrden : tzReadOnlyQuery;
   lAplicaCobro : boolean;
   sOrdenCobro  : string;
   dTipoCambio  : double;
begin
    zInserta := tzReadOnlyQuery.Create(self);
    zInserta.Connection := connection.zConnection;

    zBuscaOrden := tzReadOnlyQuery.Create(self);
    zBuscaOrden.Connection := connection.zConnection;

    zCostos := tzReadOnlyQuery.Create(self);
    zCostos.Connection := connection.zConnection;

    zCostos.Active;
    zCostos.SQL.Clear;
    zCostos.SQL.Add('select *, MAX(dIdFecha) as fecha from produccion_diaria group by dIdFecha limit 1');
    zCostos.Open;

    if sOpcion = 'Nuevo' then
    begin
        zInserta.Active := False;
        zInserta.SQL.Clear;
        zInserta.SQL.Add('Insert into produccion_diaria (dIdFecha, sContrato, sNombre, dPersonal, dEquipo, dPernocta, dBarco, dAnexo, dMontoPersonal, dMontoEquipo, dMontoPernocta, dMontoBarco, dMontoAnexo, '+
                         'dMontodt, dMontoCosto, dMontoDtDia, dMontoCostoDia, dFechaInicioPeriodo, dFechaFinalPeriodo, dTipoCambio, dMontoDia, mNotas) '+
                         'values (:fecha, :Contrato, :Nombre, :Personal, :equipo, :pernocta, :barco, :anexo, :montopersonal, :montoequipo, :montopernocta, :montobarco, :montoanexo, :dt, :costo, :dtDia, :costoDia, '+
                         ':fechaI, :fechaF, :tipo, :total, :notas )');
        zInserta.ParamByName('fecha').AsDate      := tFecha.Date;
        zInserta.ParamByName('contrato').AsString := tsOrden.Text;
        zInserta.ParamByName('Nombre').AsString   := tsNombre.Text;
        zInserta.ParamByName('Personal').AsFloat  := tdPersonal.Value;
        zInserta.ParamByName('Equipo').AsFloat    := tdEquipo.Value;
        zInserta.ParamByName('Pernocta').AsFloat  := tdPernocta.Value;
        zInserta.ParamByName('Barco').AsFloat     := tdBarco.Value;
        zInserta.ParamByName('Anexo').AsFloat     := tdAnexos.Value;
        zInserta.ParamByName('montoPersonal').AsFloat := tdMontoPersonal.Value;
        zInserta.ParamByName('montoEquipo').AsFloat   := tdMontoEquipo.Value;
        zInserta.ParamByName('montoPernocta').AsFloat := tdMontoPernocta.Value;
        zInserta.ParamByName('montoBarco').AsFloat    := tdMontoBarco.Value;
        zInserta.ParamByName('montoanexo').AsFloat    := tdMontoAnexos.Value;
        if zCostos.RecordCount > 0 then
        begin
            zInserta.ParamByName('tipo').AsFloat      := zCostos.FieldValues['dTipoCambio'];
            zInserta.ParamByName('Dt').AsFloat        := zCostos.FieldValues['dMontoDt'];
            zInserta.ParamByName('Costo').AsFloat     := zCostos.FieldValues['dMontoCosto'];
            zInserta.ParamByName('DtDia').AsFloat     := zCostos.FieldValues['dMontoDtDia'];
            zInserta.ParamByName('CostoDia').AsFloat  := zCostos.FieldValues['dMontoCostoDia'];
            zInserta.ParamByName('FechaI').AsDate     := zCostos.FieldValues['dFechaInicioPeriodo'];
            zInserta.ParamByName('FechaF').AsDate     := zCostos.FieldValues['dFechaFinalPeriodo'];
        end
        else
        begin
            zInserta.ParamByName('tipo').AsFloat      := 0;
            zInserta.ParamByName('Dt').AsFloat        := 0;
            zInserta.ParamByName('Costo').AsFloat     := 0;
            zInserta.ParamByName('DtDia').AsFloat     := 0;
            zInserta.ParamByName('CostoDia').AsFloat  := 0;
            zInserta.ParamByName('FechaI').AsDate     := tfechaInicio.Date;
            zInserta.ParamByName('FechaF').AsDate     := tfechaFinal.Date;
        end;
        zInserta.ParamByName('total').AsFloat     := tdTotalDia.Value;
        zInserta.ParamByName('notas').AsMemo      := tmNotas.Text;
        zInserta.ExecSQL;
    end;

    if sOpcion = 'Edit' then
    begin
        //Verificamos sino existe otra orden con cobro de barco.
        zInserta.Active := False;
        zInserta.SQL.Clear;
        zInserta.SQL.Add('select lBarco from produccion_diaria where dIdFecha =:Fecha and lBarco = "Si"');
        zInserta.ParamByName('fecha').AsDate  := tFecha.Date;
        zInserta.Open;

        if zInserta.RecordCount > 1 then
           messageDLG('Ya Existe una Orden en la que se Cobra o Considera la Embarcación!', mtInformation, [mbOk], 0)
        else
        begin
            //Actualizamos los datos..
            zInserta.Active := False;
            zInserta.SQL.Clear;
            zInserta.SQL.Add('Update produccion_diaria set sNombre =:Nombre, dPersonal =:Personal, dEquipo =:Equipo, dPernocta =:Pernocta, dBarco =:Barco, dAnexo =:Anexo, '+
                             'dMontoPersonal =:montopersonal, dMontoEquipo =:montoequipo, dMontoPernocta =:montopernocta, dMontoBarco =:montobarco, dMontoAnexo =:montoanexo, '+
                             'dMontoDia =:total, mNotas =:notas, lBarco =:Cobro where dIdFecha =:Fecha and sContrato =:Contrato ');
            zInserta.ParamByName('fecha').AsDate      := tFecha.Date;
            zInserta.ParamByName('contrato').AsString := tsOrden.Text;
            zInserta.ParamByName('Nombre').AsString   := tsNombre.Text;
            zInserta.ParamByName('Personal').AsFloat  := tdPersonal.Value;
            zInserta.ParamByName('Equipo').AsFloat    := tdEquipo.Value;
            zInserta.ParamByName('Pernocta').AsFloat  := tdPernocta.Value;
            zInserta.ParamByName('Barco').AsFloat     := tdBarco.Value;
            zInserta.ParamByName('Anexo').AsFloat     := tdAnexos.Value;
            zInserta.ParamByName('montoPersonal').AsFloat := tdMontoPersonal.Value;
            zInserta.ParamByName('montoEquipo').AsFloat   := tdMontoEquipo.Value;
            zInserta.ParamByName('montoPernocta').AsFloat := tdMontoPernocta.Value;
            zInserta.ParamByName('montoBarco').AsFloat    := tdMontoBarco.Value;
            zInserta.ParamByName('montoAnexo').AsFloat    := tdMontoAnexos.Value;
            zInserta.ParamByName('total').AsFloat     := tdTotalDia.Value;
            zInserta.ParamByName('notas').AsMemo      := tmNotas.Text;
            if chkCobraBarco.Checked then
               zInserta.ParamByName('Cobro').AsString := 'Si'
            else
               zInserta.ParamByName('Cobro').AsString := 'No';
            zInserta.ExecSQL;

            //Ahora verificamos si se cambio el Cobro de la embarcacion a una orden o a todas,,
            if lCobra <> chkCobraBarco.Checked then
            begin
                //Primero Consultamos si existe cobro de barco en una sola Orden..
                zBuscaOrden.Active := False;
                zBuscaOrden.SQL.Clear;
                zBuscaOrden.SQL.Add('select * from produccion_diaria where dIdFecha =:fecha ');
                zBuscaOrden.ParamByName('fecha').AsDate := tfechaFinal.Date;
                zBuscaOrden.Open;

                lAplicaCobro := False;
                sOrdenCobro  := '';
                dTipoCambio  := 0;
                while not zBuscaOrden.Eof do
                begin
                    if zBuscaOrden.FieldValues['lBarco'] = 'Si' then
                    begin
                        lAplicaCobro := True;
                        sOrdenCobro  := zBuscaOrden.FieldValues['sContrato'];
                    end;
                    dTipoCambio := zBuscaOrden.FieldValues['dTipoCambio'];
                    zBuscaOrden.Next;
                end;

                zBuscaOrden.First;
                while not zBuscaOrden.Eof do
                begin
                    lActualiza := False;
                    produccionDia(zBuscaOrden.FieldValues['sContrato'], sOrdenCobro, lAplicaCobro, dTipoCambio, tFechaFinal.Date);

                    if lActualiza then
                    begin
                        zInserta.Active := False;
                        zInserta.SQL.Clear;
                        zInserta.SQL.Add('Update produccion_diaria set dPersonal =:Personal, dEquipo =:Equipo, dPernocta =:Pernocta, dBarco =:Barco, dAnexo =:Anexo, '+
                                         'dMontoPersonal =:montoPersonal, dMontoEquipo =:montoEquipo, dMontoPernocta =:montoPernocta, dMontoBarco =:montoBarco, dMontoAnexo =:montoAnexo, dMontoDia =:total '+
                                         'where sContrato =:Contrato and dIdFecha =:fecha ');
                        zInserta.ParamByName('fecha').AsDate          := tFechaFinal.Date;
                        zInserta.ParamByName('contrato').AsString     := zBuscaOrden.FieldValues['sContrato'];
                        zInserta.ParamByName('Personal').AsFloat      := rxProduccion.FieldValues['dCantidad1'];
                        zInserta.ParamByName('Equipo').AsFloat        := rxProduccion.FieldValues['dCantidad3'];
                        zInserta.ParamByName('Pernocta').AsFloat      := rxProduccion.FieldValues['dCantidad5'];
                        zInserta.ParamByName('Barco').AsFloat         := rxProduccion.FieldValues['dCantidad7'];
                        zInserta.ParamByName('Anexo').AsFloat         := rxProduccion.FieldValues['dCantidad9'];
                        zInserta.ParamByName('montoPersonal').AsFloat := rxProduccion.FieldValues['dCantidad2'];
                        zInserta.ParamByName('montoEquipo').AsFloat   := rxProduccion.FieldValues['dCantidad4'];
                        zInserta.ParamByName('montoPernocta').AsFloat := rxProduccion.FieldValues['dCantidad6'];
                        zInserta.ParamByName('montoBarco').AsFloat    := rxProduccion.FieldValues['dCantidad8'];
                        zInserta.ParamByName('montoAnexo').AsFloat    := rxProduccion.FieldValues['dCantidad10'];
                        zInserta.ParamByName('total').AsFloat         := rxProduccion.FieldValues['dTotal'];
                        zInserta.ExecSQL;
                    end;
                    zBuscaOrden.Next;
                end;  //Termina ciclo..
            end; //Termina condicion lCobra..
        end;  //Termina condicion mensaje..
    end; //Termina condicion Edit..

    CargarOts;
    btnCancel.Click;
    zInserta.Destroy;
    zCostos.Destroy;
    zBuscaOrden.Destroy;
end;

procedure TfrmOpcionesReporteProduccion.CmdOkClick(Sender: TObject);
begin
    CrearGerencialPDF;
end;

procedure TfrmOpcionesReporteProduccion.cmdWarningClick(Sender: TObject);
begin
    if lAlerta then
        messageDLG(sMensaje, mtWarning, [mbOk], 0)
     else
        messageDLG('La información esta completa!', mtInformation, [mbOk], 0);

     lAlerta := False;
     cmdWarning.Visible := False;
end;

procedure TfrmOpcionesReporteProduccion.CrearGerencialPDF;
var
   //Variables Gerencial
   fila : integer;
   lContinua : boolean;
begin
    //Datos de la configuracion
    QryConfiguracion.Active;
    QryConfiguracion.SQL.Clear;
    QryConfiguracion.SQL.Add('select c.iFirmasReportes, c.iFirmasGeneradores, c.iFirmas, c.sOrdenPerEq, c.sTipoPartida, c.sImprimePEP, '+
                             ' (select sContrato from contratos where sTipoObra = "BARCO" ) as sContratoBarco, ' +
                             ' (select mDescripcion from contratos where sTipoObra = "BARCO" ) as mDescripcionBarco, ' +
                             'c.sClaveSeguridad, c.cStatusProceso, c.sOrdenExtraordinaria, c.lLicencia, '+
                             'c.sDireccion1, c.sDireccion2, c.sDireccion3, c.sCiudad, c.sTelefono,  '+
                             'c.bImagen, c.sContrato, c.sNombre, c.sPiePagina, c.sEmail, c.sWeb, c.sSlogan, c.sFirmasElectronicas, c.lImprimeExtraordinario, '+
                             'c2.sCodigo, c2.mDescripcion, c2.sTitulo, c2.mCliente, c2.bImagen as bImagenPEP '+
                             'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) '+
                             'Where c2.sContrato = :Contrato group by sContrato ');
    QryConfiguracion.ParamByName('Contrato').AsString := global_contrato;
    QryConfiguracion.Open;

    //Existencias de combustible de la embarcación
    embarcacion.Active := False;
    embarcacion.SQL.Clear;
    embarcacion.SQL.Add('select re.sDescripcion as sRecurso, re.sMedida, r.dConsumo, r.dProduccion, r.dRecibido, r.dExistenciaActual, e.sDescripcion as Embarcacion '+
                        'from recursos r '+
                        'inner join recursosdeexistencias re on (r.iIdRecursoExistencia=re.iIdRecursoExistencia) '+
                        'inner join embarcaciones e on (e.sContrato = r.sContrato and e.sIdEmbarcacion = r.sIdEmbarcacion and e.sTipo = "Principal") '+
                        'where r.sContrato =:Contrato and r.dIdFecha=:Fecha ');
    embarcacion.Params.ParamByName('Contrato').DataType := ftString;
    embarcacion.Params.ParamByName('Contrato').Value    := Global_Contrato_Barco;
    embarcacion.Params.ParamByName('Fecha').DataType    := ftDate;
    embarcacion.Params.ParamByName('Fecha').Value       := tFechaInicio.Date;
    embarcacion.Open;

    rxRecursos.EmptyTable;
    num := 1;
    if embarcacion.RecordCount > 0 then
    begin
        rxRecursos.Append;
        rxRecursos.Post;
    end;
    while not embarcacion.Eof do
    begin
        rxRecursos.Edit;
        rxRecursos.FieldValues['sRecurso'+ IntToStr(num)]       := embarcacion.FieldValues['sRecurso'];
        rxRecursos.FieldValues['sMedida'+IntToStr(num)]         := embarcacion.FieldValues['sMedida'];
        rxRecursos.FieldValues['dCantidadActual'+IntToStr(num)] := embarcacion.FieldValues['dExistenciaActual'];
        rxRecursos.FieldValues['Embarcacion']                   := embarcacion.FieldValues['Embarcacion'];
        rxRecursos.Post;
        inc(num);
        Global_nombre_Embarcacion := embarcacion.FieldValues['Embarcacion'];
        embarcacion.Next;
    end;

    //Ordenes afectadas
    connection.zCommand.Active;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from produccion_diaria where dIdFecha >=:fechaI and dIdFecha <=:fechaF group by sContrato ');
    connection.zCommand.ParamByName('fechaI').AsDate := tfechaInicio.Date;
    connection.zCommand.ParamByName('fechaF').AsDate := tfechaFinal.Date;
    connection.zCommand.Open;

    rxProduccion.EmptyTable;
    rxProduccionMes.EmptyTable;
    while not connection.zCommand.Eof do
    begin
        fila := 0;
        num := tsListaorden.Items.Count ;
        lContinua := True;
        while fila < num do
        begin
            if tsListaOrden.Items.Strings[fila] = connection.zCommand.FieldValues['sContrato'] then
               if tsListaOrden.Checked[fila] = False then
                  lContinua := False;
            inc(fila);
        end;

        if lcontinua then
        begin
            ImprimeproduccionDia(connection.zCommand.FieldValues['sContrato'], connection.zCommand.FieldValues['sNombre']);
            ImprimeproduccionMes(connection.zCommand.FieldValues['sContrato'], connection.zCommand.FieldValues['sNombre']);
        end;
        connection.zCommand.Next;
    end;

    //Funcion de Grafica..
    Grafica;

    rReporte.PreviewOptions.MDIChild := False ;
    rReporte.PreviewOptions.Modal := False ;
    rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    rReporte.PreviewOptions.ShowCaptions := False ;
    rReporte.Previewoptions.ZoomMode := zmPageWidth ;
    if chkConsolidado.Checked then
       rReporte.LoadFromFile (global_files + GLobal_MiReporte+'_ProduccionOrdenes_normal.fr3') ;

    if chkDetallado.Checked then
       rReporte.LoadFromFile (global_files + GLobal_MiReporte+'_ProduccionOrdenes_detalle.fr3') ;

    if chkGenerador.Checked then
       rReporte.LoadFromFile (global_files + GLobal_MiReporte+'_ProduccionOrdenes_generador.fr3') ;

    rReporte.ShowReport() ;
     if chkConsolidado.Checked then
       if not FileExists(global_files + GLobal_MiReporte+'_ProduccionOrdenes_normal.fr3') then
          showmessage('El archivo de reporte '+GLobal_MiReporte+'_ProduccionOrdenes_normal.fr3 no existe, notifique al administrador del sistema');

    if chkDetallado.Checked then
       if not FileExists(global_files + GLobal_MiReporte+'_ProduccionOrdenes_detalle.fr3') then
          showmessage('El archivo de reporte '+GLobal_MiReporte+'_ProduccionOrdenes_detalle.fr3 no existe, notifique al administrador del sistema');

     if chkGenerador.Checked then
       if not FileExists(global_files + GLobal_MiReporte+'_ProduccionOrdenes_generador.fr3') then
          showmessage('El archivo de reporte '+GLobal_MiReporte+'_ProduccionOrdenes_generador.fr3 no existe, notifique al administrador del sistema');
end;

procedure TfrmOpcionesReporteProduccion.tsOrdenEnter(Sender: TObject);
begin
    tsOrden.Color := global_color_entrada;
end;

procedure TfrmOpcionesReporteProduccion.tsOrdenExit(Sender: TObject);
begin
    tsOrden.Color := global_color_salida;
end;

procedure TfrmOpcionesReporteProduccion.tsOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
       tdPersonal.SetFocus;
end;

procedure TfrmOpcionesReporteProduccion.ordenesactuales;
begin
    tslistaorden.Clear;
    //Agregamos todas las ordenes al gerencial
    zOrdenes.Active := False;
    zOrdenes.SQL.Clear;
    zOrdenes.SQL.Add('select c.sContrato from bitacoradeactividades b '+
                     'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                     'inner join contratos c on (b.sContrato = c.sContrato) '+
                     'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF and c.sContrato <> c.sCodigo group by b.sContrato');
    zOrdenes.ParamByName('fechaI').AsDate  := tfechaInicio.Date;
    zOrdenes.ParamByName('fechaF').AsDate  := tfechaFinal.Date;
    zOrdenes.Open;

    while not zOrdenes.Eof do
    begin
        tslistaorden.Items.Add(zOrdenes.FieldValues['sContrato']);
        zOrdenes.Next;
    end;

    //Ahora palomeamos las reportadas en el dia,
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select b.sContrato, substr(c.mDescripcion, 1, 250) as descripcion from bitacoradeactividades b '+
                                'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                                'inner join contratos c on (b.sContrato = c.sContrato) '+
                                'where b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF and b.sContrato <> :Contrato group by b.sContrato ');
    Connection.qryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
    Connection.qryBusca.ParamByName('fechaI').AsDate  := tfechaInicio.Date;
    Connection.qryBusca.ParamByName('fechaF').AsDate  := tfechaFinal.Date;
    Connection.qryBusca.Open;
    while not Connection.qryBusca.Eof do
    begin
        tslistaorden.Checked[tslistaorden.Items.IndexOf(Connection.qryBusca.FieldValues['sContrato'])]  := true;
        Connection.qryBusca.Next;
    end;
end;


procedure TfrmOpcionesReporteProduccion.pgProduccionCanChange(Sender: TObject;
  FromPage, ToPage: Integer; var AllowChange: Boolean);
begin
    InsertaOrdenes(tFechaFinal.Date);
    CargarOts;
    tFecha.Date := tfechaFinal.Date;
    CargarLista;

    chkTipoCambioDia.Checked := True;
    lblDia.Visible     := True;
    ChkTipoCambioPeriodo.Checked := False;
    lblPeriodo.Visible := False;
    lblDia.Caption     := 'Fecha : '+ DateToStr(tFechaFinal.Date);
    lblPeriodo.Caption := 'DEL '+ DateToStr(tFechaInicio.Date)+#13+'AL   '+ DateToStr(tFechaFinal.Date);
end;

procedure TfrmOpcionesReporteProduccion.ValidaDatos;
var
    zConsulta : tzReadOnlyQuery;
begin
    zConsulta := tzReadOnlyQuery.Create(self);
    zConsulta.Connection := connection.zConnection;

    sMensaje := 'La siguiente Información no ha sido Capturada: ';

    //Ahora el estatus de los reportes..
    zConsulta.Active := False;
    zConsulta.SQL.Clear;
    zConsulta.SQL.Add('select * from reportediario where dIdFecha >=:fechaI and dIdFecha <=:fechaF and lStatus <> "Autorizado" and sContrato <> :contrato');
    zConsulta.ParamByName('fechaI').AsDate      := tfechaInicio.Date;
    zConsulta.ParamByName('fechaF').AsDate      := tfechaFinal.Date;
    zConsulta.ParamByName('contrato').AsString := global_contrato_barco;
    zConsulta.Open;

    if zConsulta.RecordCount > 0 then
       sMensaje := sMensaje + #13 + '  * Reportes Diarios en Estatus de no Autorizados [Avances de la Orden] ';

    if sMensaje <> 'La siguiente Información no ha sido Capturada: ' then
       lAlerta := True
    else
       lAlerta := False;
    zConsulta.Destroy;
end;

procedure TfrmOpcionesReporteProduccion.zqOtsAfterScroll(DataSet: TDataSet);
begin
    if zqOts.RecordCount > 0 then
    begin
       tsOrden.Text  := zqOts.FieldValues['sContrato'];
       tsNombre.Text  := zqOts.FieldValues['sNombre'];
       tdPersonal.value  := zqOts.FieldValues['dPersonal'];
       tdEquipo.value  := zqOts.FieldValues['dEquipo'];
       tdPernocta.value  := zqOts.FieldValues['dPernocta'];
       tdBarco.value  := zqOts.FieldValues['dBarco'];
       tdAnexos.value  := zqOts.FieldValues['dAnexo'];
       tdMontoPersonal.value  := zqOts.FieldValues['dMontoPersonal'];
       tdMontoEquipo.value  := zqOts.FieldValues['dMontoEquipo'];
       tdMontoPernocta.value  := zqOts.FieldValues['dMontoPernocta'];
       tdMontoBarco.value  := zqOts.FieldValues['dMontoBarco'];
       tdMontoAnexos.value  := zqOts.FieldValues['dMontoAnexo'];
       tdTotalDia.value  := zqOts.FieldValues['dMontoDia'];
       tmNotas.text  := zqOts.FieldValues['mNotas'];
       tDt.value := zqOts.FieldValues['dMontoDt'];
       tCosto.value := zqOts.FieldValues['dMontoCosto'];
       tDtDias.value := zqOts.FieldValues['dMontoDtDia'];
       tCostoDias.value := zqOts.FieldValues['dMontoCostoDia'];
       tFechaInicioPeriodo.date := zqOts.FieldValues['dFechaInicioPeriodo'];
       tFechaFinalPeriodo.date  := zqOts.FieldValues['dFechaFinalPeriodo'];
       tdTipoCambio.value  := zqOts.FieldValues['dTipoCambio'];
       if zqOts.FieldValues['lBarco'] = 'Si' then
          chkCobraBarco.Checked  := True
       else
          chkCobraBarco.Checked  := False;
    end;
end;

procedure TfrmOpcionesReporteProduccion.ProduccionDia(sParamOrden: string; sParamOrdenCobro: string; lCobro: Boolean; dParamTipoCambio: Double; dParamFecha: TDate);
var
   sConvenio : string;
   dCantidad, dMontoMN, dMontoDLL : double;
begin
    rxProduccion.Append;
    rxProduccion.FieldValues['iNivel']  := 1;
    rxProduccion.FieldValues['sOrden']  := sParamOrden;
    rxProduccion.FieldValues['dTotal']  := 0;

    rxProduccion.FieldValues['dCantidad1'] := 0;
    rxProduccion.FieldValues['dCantidad2'] := 0;

    //Consultamos el personal reportado
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select b.sContrato, sum(b.dCantidad) as dCantidad, sum(b.dCantidad * dVentaMN) as totalMN, sum(b.dCantidad * dVentaDLL) as totalDLL from bitacoradepersonal b '+
                      'inner join personal p on (p.sContrato = b.sContrato and p.sIdPersonal = b.sIdPersonal and p.lCobro = "Si") '+
                      'where b.sContrato =:Contrato and b.dIdFecha =:fecha group by b.sContrato');
    connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
    connection.QryBusca.ParamByName('fecha').AsDate      := dParamFecha;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        rxProduccion.FieldValues['dCantidad1'] := connection.QryBusca.FieldValues['dCantidad'];

        if dParamTipoCambio > 0 then
           rxProduccion.FieldValues['dCantidad2'] := (connection.QryBusca.FieldValues['totalMN'] + (connection.QryBusca.FieldValues['totalDLL']* dParamTipoCambio))
        else
           rxProduccion.FieldValues['dCantidad2'] := connection.QryBusca.FieldValues['totalMN'];
        rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + rxProduccion.FieldValues['dCantidad2'];
        lActualiza := True;
    end;

    rxProduccion.FieldValues['dCantidad3'] := 0;
    rxProduccion.FieldValues['dCantidad4'] := 0;

    //Consultamos el equipo reportado
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select b.sContrato, sum(b.dCantidad) as dCantidad, sum(b.dCantidad * dVentaMN) as totalMN, sum(b.dCantidad * dVentaDLL) as totalDLL from bitacoradeequipos b '+
                      'inner join equipos p on (p.sContrato = b.sContrato and p.sIdEquipo = b.sIdEquipo and p.lCobro = "Si" ) '+
                      'where b.sContrato =:Contrato and b.dIdFecha =:fecha group by b.sContrato');
    connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
    connection.QryBusca.ParamByName('fecha').AsDate      := dParamFecha;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        rxProduccion.FieldValues['dCantidad3'] := connection.QryBusca.FieldValues['dCantidad'];

        if dParamTipoCambio > 0 then
           rxProduccion.FieldValues['dCantidad4'] := (connection.QryBusca.FieldValues['totalMN'] + (connection.QryBusca.FieldValues['totalDLL']* dParamTipoCambio))
        else
           rxProduccion.FieldValues['dCantidad4'] := connection.QryBusca.FieldValues['totalMN'];
        rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + rxProduccion.FieldValues['dCantidad4'];
        lActualiza := True;
    end;

    rxProduccion.FieldValues['dCantidad5'] := 0;
    rxProduccion.FieldValues['dCantidad6'] := 0;

    //Consultamos las pernoctas reportadas
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select b.sContrato, sum(b.dCantidad) as dCantidad, sum(b.dCantidad * dVentaMN) as totalMN, sum(b.dCantidad * dVentaDLL) as totalDLL from bitacoradepernocta b '+
                      'inner join cuentas p on (p.sIdCuenta = b.sIdCuenta) '+
                      'where b.sContrato =:Contrato and b.dIdFecha =:fecha group by b.sContrato');
    connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
    connection.QryBusca.ParamByName('fecha').AsDate      := dParamFecha;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        rxProduccion.FieldValues['dCantidad5'] := connection.QryBusca.FieldValues['dCantidad'];
        if dParamTipoCambio > 0 then
           rxProduccion.FieldValues['dCantidad6'] := (connection.QryBusca.FieldValues['totalMN'] + (connection.QryBusca.FieldValues['totalDLL']* dParamTipoCambio))
        else
           rxProduccion.FieldValues['dCantidad6'] := connection.QryBusca.FieldValues['totalMN'];
        rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + rxProduccion.FieldValues['dCantidad6'];
        lActualiza := True;
    end;

    rxProduccion.FieldValues['dCantidad7'] := 0;
    rxProduccion.FieldValues['dCantidad8'] := 0;

    //Consultamos el tiempo de barco reportado
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select f.sClasificacion, SUM(f.sFactor) as dCantidad, sum(f.sFactor * t.dVentaMN) as totalMN, sum(f.sFactor * t.dVentaDLL) as totalDLL  from fasesxorden f '+
                                'inner join tiposdemovimiento t on (t.sContrato =:Contrato and t.sIdTipoMovimiento = f.sClasificacion and t.sClasificacion = "Movimiento de Barco") ');
    if lCobro = false then
    begin
       connection.QryBusca.SQL.Add('where f.sContrato =:Orden and f.dIdFecha =:fecha group by t.sContrato');
       connection.QryBusca.ParamByName('Orden').AsString := sParamOrden;
    end
    else
       connection.QryBusca.SQL.Add('where f.dIdFecha =:fecha group by t.sContrato');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
    connection.QryBusca.ParamByName('fecha').AsDate      := dParamFecha;
    connection.QryBusca.Open;

    if lCobro then
    begin
        if (connection.QryBusca.RecordCount > 0) and (sParamOrdenCobro = sParamOrden) then
        begin
            rxProduccion.FieldValues['dCantidad7'] := connection.QryBusca.FieldValues['dCantidad'];
            if dParamTipoCambio > 0 then
               rxProduccion.FieldValues['dCantidad8'] := (connection.QryBusca.FieldValues['totalMN'] + (connection.QryBusca.FieldValues['totalDLL']* dParamTipoCambio))
            else
               rxProduccion.FieldValues['dCantidad8'] := connection.QryBusca.FieldValues['totalMN'];
            rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + rxProduccion.FieldValues['dCantidad8'];
            lActualiza := True;
        end;
    end
    else
    begin
       if (connection.QryBusca.RecordCount > 0) then
       begin
           rxProduccion.FieldValues['dCantidad7'] := connection.QryBusca.FieldValues['dCantidad'];
           if dParamTipoCambio > 0 then
              rxProduccion.FieldValues['dCantidad8'] := (connection.QryBusca.FieldValues['totalMN'] + (connection.QryBusca.FieldValues['totalDLL']* dParamTipoCambio))
           else
              rxProduccion.FieldValues['dCantidad8'] := connection.QryBusca.FieldValues['totalMN'];
           rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + rxProduccion.FieldValues['dCantidad8'];
           lActualiza := True;
       end;
    end;


    rxProduccion.FieldValues['dCantidad9']  := 0;
    rxProduccion.FieldValues['dCantidad10'] := 0;

    //Primero consultamos el convenio en que se encuentra el reporte..
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sIdConvenio from reportediario where sContrato =:Contrato and dIdFecha =:fecha order by sIdConvenio desc');
    connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
    connection.QryBusca.ParamByName('fecha').AsDate      := dParamFecha;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
       sConvenio := connection.QryBusca.FieldValues['sIdConvenio'];

    //Consultamos los Anexos reportados
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select b.sContrato, b.dIdFecha, b.sWbs, b.dCantidad, b.sNumeroOrden, b.sNumeroActividad, '+
                                '((o.dVentaMN / o.dCantidad) * SUM(b.dCantidad)) as totalMN, ((o.dVentaDLL / o.dCantidad)* sum(b.dCantidad)) as totalDLL '+
                                'from bitacoradeactividades b '+
                                'inner join actividadesxorden o on (o.sContrato = b.sContrato and o.sIdConvenio =:Convenio and b.sWbs = o.sWbs and b.sNumeroActividad = o.sNumeroActividad and o.sTipoActividad = "Actividad") '+
                                'where b.sContrato =:Contrato and b.dIdFecha =:fecha and b.sIdTipoMovimiento = "E"  group by b.sNumeroOrden, b.dIdFecha, b.sWbs order by b.sNumeroOrden, o.iItemOrden ');
    connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
    connection.QryBusca.ParamByName('fecha').AsDate      := dParamFecha;
    connection.QryBusca.ParamByName('Convenio').AsString := sConvenio;
    connection.QryBusca.Open;

    while not connection.QryBusca.Eof do
    begin
        dCantidad := dCantidad + connection.QryBusca.FieldValues['dCantidad'];
        dMontoMN  := dMontoMN  + connection.QryBusca.FieldValues['totalMN'];
        dMontoDLL := dMontoDLL + connection.QryBusca.FieldValues['totalDLL'];
        connection.QryBusca.Next;
    end;

    if connection.QryBusca.RecordCount > 0 then
    begin
        rxProduccion.FieldValues['dCantidad9'] := dCantidad;
        if dParamTipoCambio > 0 then
           rxProduccion.FieldValues['dCantidad10'] := (dMontoMN + (dMontoDLL * dParamTipoCambio))
        else
           rxProduccion.FieldValues['dCantidad10'] := dMontoDLL;
        rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + rxProduccion.FieldValues['dCantidad10'];
        lActualiza := True;
    end;

    rxProduccion.Post;
end;

procedure TfrmOpcionesReporteProduccion.ImprimeProduccionMes(sParamOrden: string; sParamNombre: string);
begin
    rxProduccionMes.Append;
    rxProduccionMes.FieldValues['iNivel']  := 1;
    rxProduccionMes.FieldValues['sOrden']  := sParamOrden;
    rxProduccionMes.FieldValues['sDescripcion'] := sParamNombre;
    rxProduccionMes.FieldValues['dTotal']  := 0;

    rxProduccionMes.FieldValues['dCantidad1'] := 0;
    rxProduccionMes.FieldValues['dCantidad2'] := 0;
    if chkPersonal.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dPersonal) as dPersonal, sum(dMontoPersonal) as dMontoPersonal from produccion_diaria where sContrato =:Contrato and dIdFecha >=:FechaI and dIdFecha <=:FechaF group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fechaI').AsDate     := StrToDate('01'+ copy(DateToStr(tfechaFinal.Date),3,8));
        connection.QryBusca.ParamByName('fechaF').AsDate     := tfechaFinal.Date;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            rxProduccionMes.FieldValues['dCantidad1'] := connection.QryBusca.FieldValues['dPersonal'];
            rxProduccionMes.FieldValues['dCantidad2'] := connection.QryBusca.FieldValues['dMontoPersonal'];
            rxProduccionMes.FieldValues['dTotal']     := rxProduccionMes.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoPersonal'];
        end;
    end;

    rxProduccionMes.FieldValues['dCantidad3'] := 0;
    rxProduccionMes.FieldValues['dCantidad4'] := 0;
    if chkEquipo.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dEquipo) as dEquipo, sum(dMontoEquipo) as dMontoEquipo from produccion_diaria where sContrato =:Contrato and dIdFecha >=:FechaI and dIdFecha <=:FechaF group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fechaI').AsDate     := StrToDate('01'+ copy(DateToStr(tfechaFinal.Date),3,8));
        connection.QryBusca.ParamByName('fechaF').AsDate     := tfechaFinal.Date;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            rxProduccionMes.FieldValues['dCantidad3'] := connection.QryBusca.FieldValues['dEquipo'];
            rxProduccionMes.FieldValues['dCantidad4'] := connection.QryBusca.FieldValues['dMontoEquipo'];
            rxProduccionMes.FieldValues['dTotal']     := rxProduccionMes.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoEquipo'];
        end;
    end;

    rxProduccionMes.FieldValues['dCantidad5'] := 0;
    rxProduccionMes.FieldValues['dCantidad6'] := 0;
    if chkPernocta.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dPernocta) as dPernocta, sum(dMontoPernocta) as dMontoPernocta from produccion_diaria where sContrato =:Contrato and dIdFecha >=:FechaI and dIdFecha <=:FechaF group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fechaI').AsDate     := StrToDate('01'+ copy(DateToStr(tfechaFinal.Date),3,8));
        connection.QryBusca.ParamByName('fechaF').AsDate     := tfechaFinal.Date;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            rxProduccionMes.FieldValues['dCantidad5'] := connection.QryBusca.FieldValues['dPernocta'];
            rxProduccionMes.FieldValues['dCantidad6'] := connection.QryBusca.FieldValues['dMontoPernocta'];
            rxProduccionMes.FieldValues['dTotal']     := rxProduccionMes.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoPernocta'];
        end;
    end;

    rxProduccionMes.FieldValues['dCantidad7'] := 0;
    rxProduccionMes.FieldValues['dCantidad8'] := 0;
    if chkBarco.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dBarco) as dBarco, sum(dMontoBarco) as dMontoBarco from produccion_diaria where sContrato =:Contrato and dIdFecha >=:FechaI and dIdFecha <=:FechaF group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fechaI').AsDate     := StrToDate('01'+ copy(DateToStr(tfechaFinal.Date),3,8));
        connection.QryBusca.ParamByName('fechaF').AsDate     := tfechaFinal.Date;
        connection.QryBusca.Open;

        if (connection.QryBusca.RecordCount > 0) then
        begin
            rxProduccionMes.FieldValues['dCantidad7'] := connection.QryBusca.FieldValues['dBarco'];
            rxProduccionMes.FieldValues['dCantidad8'] := connection.QryBusca.FieldValues['dMontoBarco'];
            rxProduccionMes.FieldValues['dTotal']     := rxProduccionMes.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoBarco'];
        end;
    end;

    rxProduccionMes.FieldValues['dCantidad9']  := 0;
    rxProduccionMes.FieldValues['dCantidad10'] := 0;
    if chkBarco.Checked then
    begin
        //Consultamos los Anexos reportados
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dAnexo) as dAnexo, sum(dMontoAnexo) as dMontoAnexo from produccion_diaria where sContrato =:Contrato and dIdFecha >=:FechaI and dIdFecha <=:FechaF group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fechaI').AsDate     := StrToDate('01'+ copy(DateToStr(tfechaFinal.Date),3,8));
        connection.QryBusca.ParamByName('fechaF').AsDate     := tfechaFinal.Date;
        connection.QryBusca.Open;

        if (connection.QryBusca.RecordCount > 0) then
        begin
            rxProduccionMes.FieldValues['dCantidad9']  := connection.QryBusca.FieldValues['dAnexo'];
            rxProduccionMes.FieldValues['dCantidad10'] := connection.QryBusca.FieldValues['dMontoAnexo'];
            rxProduccionMes.FieldValues['dTotal']      := rxProduccionMes.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoAnexo'];
        end;
    end;
    rxProduccionMes.Post;
end;

procedure TfrmOpcionesReporteProduccion.ImprimeProduccionDia(sParamOrden: string; sParamNombre: string);
begin
    rxProduccion.Append;
    rxProduccion.FieldValues['iNivel']  := 1;
    rxProduccion.FieldValues['sOrden']  := sParamOrden;
    rxProduccion.FieldValues['sDescripcion'] := sParamNombre;
    rxProduccion.FieldValues['dTotal']  := 0;

    rxProduccion.FieldValues['bDt']     := chkDt.Checked;
    rxProduccion.FieldValues['bCosto']  := chkCosto.Checked;
    rxProduccion.FieldValues['bFisico'] := chkFisico.Checked;


    rxProduccion.FieldValues['dCantidad1'] := 0;
    rxProduccion.FieldValues['dCantidad2'] := 0;
    if chkPersonal.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dPersonal) as dPersonal, sum(dMontoPersonal) as dMontoPersonal from produccion_diaria where sContrato =:Contrato and dIdFecha =:Fecha group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fecha').AsDate      := tfechaFinal.Date;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            rxProduccion.FieldValues['dCantidad1'] := connection.QryBusca.FieldValues['dPersonal'];
            rxProduccion.FieldValues['dCantidad2'] := connection.QryBusca.FieldValues['dMontoPersonal'];
            rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoPersonal'];
        end;
    end;

    rxProduccion.FieldValues['dCantidad3'] := 0;
    rxProduccion.FieldValues['dCantidad4'] := 0;
    if chkEquipo.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dEquipo) as dEquipo, sum(dMontoEquipo) as dMontoEquipo from produccion_diaria where sContrato =:Contrato and dIdFecha =:Fecha group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fecha').AsDate      := tfechaFinal.Date;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            rxProduccion.FieldValues['dCantidad3'] := connection.QryBusca.FieldValues['dEquipo'];
            rxProduccion.FieldValues['dCantidad4'] := connection.QryBusca.FieldValues['dMontoEquipo'];
            rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoEquipo'];
        end;
    end;

    rxProduccion.FieldValues['dCantidad5'] := 0;
    rxProduccion.FieldValues['dCantidad6'] := 0;
    if chkPernocta.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dPernocta) as dPernocta, sum(dMontoPernocta) as dMontoPernocta from produccion_diaria where sContrato =:Contrato and dIdFecha =:Fecha group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fecha').AsDate      := tfechaFinal.Date;
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            rxProduccion.FieldValues['dCantidad5'] := connection.QryBusca.FieldValues['dPernocta'];
            rxProduccion.FieldValues['dCantidad6'] := connection.QryBusca.FieldValues['dMontoPernocta'];
            rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoPernocta'];
        end;
    end;

    rxProduccion.FieldValues['dCantidad7'] := 0;
    rxProduccion.FieldValues['dCantidad8'] := 0;
    if chkBarco.Checked then
    begin
        //Consultamos el personal reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dBarco) as dBarco, sum(dMontoBarco) as dMontoBarco from produccion_diaria where sContrato =:Contrato and dIdFecha =:Fecha group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fecha').AsDate      := tfechaFinal.Date;
        connection.QryBusca.Open;

        if (connection.QryBusca.RecordCount > 0) then
        begin
            rxProduccion.FieldValues['dCantidad7'] := connection.QryBusca.FieldValues['dBarco'];
            rxProduccion.FieldValues['dCantidad8'] := connection.QryBusca.FieldValues['dMontoBarco'];
            rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoBarco'];
        end;
    end;

    rxProduccion.FieldValues['dCantidad9']  := 0;
    rxProduccion.FieldValues['dCantidad10'] := 0;
    if chkBarco.Checked then
    begin
        //Consultamos los Anexos reportado
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sum(dAnexo) as dAnexo, sum(dMontoAnexo) as dMontoAnexo from produccion_diaria where sContrato =:Contrato and dIdFecha =:Fecha group by sContrato');
        connection.QryBusca.ParamByName('Contrato').AsString := sParamOrden;
        connection.QryBusca.ParamByName('fecha').AsDate      := tfechaFinal.Date;
        connection.QryBusca.Open;

        if (connection.QryBusca.RecordCount > 0) then
        begin
            rxProduccion.FieldValues['dCantidad9'] := connection.QryBusca.FieldValues['dAnexo'];
            rxProduccion.FieldValues['dCantidad10'] := connection.QryBusca.FieldValues['dMontoAnexo'];
            rxProduccion.FieldValues['dTotal']     := rxProduccion.FieldValues['dTotal'] + connection.QryBusca.FieldValues['dMontoAnexo'];
        end;
    end;
    rxProduccion.Post;
end;

//Procedimiento para insertar las ordenes en el día,,
procedure TfrmOpcionesReporteProduccion.InsertaOrdenes(dParamFecha: TDate);
var
    zProduccion, zBuscaOrden, zInserta, zRegistros, zCostos : tzReadOnlyQuery;
    lContinua    : boolean;
    lAplicaCobro : boolean;
    sOrdenCobro  : string;
    dTipoCambio  : double;
    fecha        : tDate;
begin
    zProduccion := tzReadOnlyQuery.Create(self);
    zProduccion.Connection := connection.zConnection;

    zBuscaOrden := tzReadOnlyQuery.Create(self);
    zBuscaOrden.Connection := connection.zConnection;

    zRegistros := tzReadOnlyQuery.Create(self);
    zRegistros.Connection := connection.zConnection;

    zCostos := tzReadOnlyQuery.Create(self);
    zCostos.Connection := connection.zConnection;

    zInserta := tzReadOnlyQuery.Create(self);
    zInserta.Connection := connection.zConnection;

    //Primero Consultamos si existe cobro de barco en una sola Orden..
    zBuscaOrden.Active := False;
    zBuscaOrden.SQL.Clear;
    zBuscaOrden.SQL.Add('select *, MAX(dIdFecha) as fecha from produccion_diaria where dIdFecha <=:fecha group by dIdFecha limit 1');
    zBuscaOrden.ParamByName('fecha').AsDate := dParamFecha;
    zBuscaOrden.Open;

    if zBuscaOrden.RecordCount > 0 then
       fecha := zBuscaOrden.FieldValues['fecha']
    else
       fecha := tFechaFinal.Date;

    zBuscaOrden.Active := False;
    zBuscaOrden.SQL.Clear;
    zBuscaOrden.SQL.Add('select * from produccion_diaria where dIdFecha =:fecha ');
    zBuscaOrden.ParamByName('fecha').AsDate := fecha;
    zBuscaOrden.Open;

    lAplicaCobro := False;
    sOrdenCobro  := '';
    dTipoCambio  := 0;
    while not zBuscaOrden.Eof do
    begin
        if zBuscaOrden.FieldValues['lBarco'] = 'Si' then
        begin
            lAplicaCobro := True;
            sOrdenCobro  := zBuscaOrden.FieldValues['sContrato'];
        end;
        dTipoCambio := zBuscaOrden.FieldValues['dTipoCambio'];
        zBuscaOrden.Next;
    end;

    //Consultamos si existen datos en el dia
    zProduccion.Active := False;
    zProduccion.SQL.Clear;
    zProduccion.SQL.Add('select sContrato from produccion_diaria where dIdFecha = :fecha');
    zProduccion.ParamByName('fecha').AsDate := dParamFecha;
    zProduccion.Open;

    if zProduccion.RecordCount = 0 then
    begin
        zBuscaOrden.Active;
        zBuscaOrden.SQL.Clear;
        zBuscaOrden.SQL.Add('select b.sContrato from bitacoradeactividades b '+
                            'inner join reportediario r on (r.sContrato = b.sContrato and r.dIdFecha = b.dIdFecha and r.sNumeroOrden = b.sNumeroOrden) '+
                            'inner join contratos c on (b.sContrato = c.sContrato) '+
                            'where c.sContrato <> c.sCodigo and b.dIdFecha >=:fechaI and b.dIdFecha <=:FechaF group by b.sContrato');
        zBuscaOrden.ParamByName('fechaI').AsDate := dParamFecha;
        zBuscaOrden.ParamByName('fechaF').AsDate := dParamFecha;
        zBuscaOrden.Open;

        while not zBuscaOrden.Eof do
        begin
            produccionDia(zBuscaOrden.FieldValues['sContrato'], sOrdenCobro, lAplicaCobro, dTipoCambio, dParamFecha);

            //Buscamos si existen datos anteriores de ordenes para traer valores..
            zRegistros.Active;
            zRegistros.SQL.Clear;
            zRegistros.SQL.Add('select *, MAX(dIdFecha) as fecha from produccion_diaria where sContrato =:Contrato group by dIdFecha limit 1');
            zRegistros.ParamByName('Contrato').AsString := zBuscaOrden.FieldValues['sContrato'];
            zRegistros.Open;

            zCostos.Active;
            zCostos.SQL.Clear;
            zCostos.SQL.Add('select *, MAX(dIdFecha) as fecha from produccion_diaria group by dIdFecha limit 1');
            zCostos.Open;

            zInserta.Active := False;
            zInserta.SQL.Clear;
            zInserta.SQL.Add('Insert into produccion_diaria (dIdFecha, sContrato, sNombre, dPersonal, dEquipo, dPernocta, dBarco, dAnexo, dMontoPersonal, dMontoEquipo, dMontoPernocta, dMontoBarco, dMontoAnexo, '+
                             'dMontoDia, dTipoCambio, mNotas, dMontoDt, dMontoCosto, dMontoDtDia, dMontoCostoDia, dFechaInicioPeriodo, dFechaFinalPeriodo, lBarco ) values (:fecha, :Contrato, :Nombre, '+
                             ':Personal, :equipo, :pernocta, :barco, :Anexo, :montopersonal, :montoequipo, :montopernocta, :montobarco, :montoAnexo, :total, :tipo, :notas, '+
                             ':dt, :costo, :DtDia, :CostoDia, :FechaI_p, :FechaF_p, :Cobro )');
            zInserta.ParamByName('fecha').AsDate          := dParamFecha;
            zInserta.ParamByName('contrato').AsString     := zBuscaOrden.FieldValues['sContrato'];
            if zRegistros.RecordCount > 0 then
            begin
                zInserta.ParamByName('Nombre').AsString   := zRegistros.FieldValues['sNombre'];
                zInserta.ParamByName('Cobro').AsString    := zRegistros.FieldValues['lBarco'];
            end
            else
            begin
                zInserta.ParamByName('Nombre').AsString   := '';
                zInserta.ParamByName('Cobro').AsString    := 'No';
            end;
            zInserta.ParamByName('Personal').AsFloat  := rxProduccion.FieldValues['dCantidad1'];
            zInserta.ParamByName('Equipo').AsFloat    := rxProduccion.FieldValues['dCantidad3'];
            zInserta.ParamByName('Pernocta').AsFloat  := rxProduccion.FieldValues['dCantidad5'];
            zInserta.ParamByName('Barco').AsFloat     := rxProduccion.FieldValues['dCantidad7'];
            zInserta.ParamByName('Anexo').AsFloat     := rxProduccion.FieldValues['dCantidad9'];
            zInserta.ParamByName('montoPersonal').AsFloat := rxProduccion.FieldValues['dCantidad2'];
            zInserta.ParamByName('montoEquipo').AsFloat   := rxProduccion.FieldValues['dCantidad4'];
            zInserta.ParamByName('montoPernocta').AsFloat := rxProduccion.FieldValues['dCantidad6'];
            zInserta.ParamByName('montoBarco').AsFloat    := rxProduccion.FieldValues['dCantidad8'];
            zInserta.ParamByName('montoAnexo').AsFloat    := rxProduccion.FieldValues['dCantidad10'];
            zInserta.ParamByName('total').AsFloat         := rxProduccion.FieldValues['dTotal'];
            zInserta.ParamByName('notas').AsMemo          := '';
            if zCostos.RecordCount > 0 then
            begin
                zInserta.ParamByName('tipo').AsFloat      := zCostos.FieldValues['dTipoCambio'];
                zInserta.ParamByName('Dt').AsFloat        := zCostos.FieldValues['dMontoDt'];
                zInserta.ParamByName('Costo').AsFloat     := zCostos.FieldValues['dMontoCosto'];
                zInserta.ParamByName('DtDia').AsFloat     := zCostos.FieldValues['dMontoDtDia'];
                zInserta.ParamByName('CostoDia').AsFloat  := zCostos.FieldValues['dMontoCostoDia'];
                zInserta.ParamByName('FechaI_p').AsDate   := zCostos.FieldValues['dFechaInicioPeriodo'];
                zInserta.ParamByName('FechaF_p').AsDate   := zCostos.FieldValues['dFechaFinalPeriodo'];
            end
            else
            begin
                zInserta.ParamByName('tipo').AsFloat     := 0;
                zInserta.ParamByName('Dt').AsFloat       := 0;
                zInserta.ParamByName('Costo').AsFloat    := 0;
                zInserta.ParamByName('DtDia').AsFloat    := 0;
                zInserta.ParamByName('CostoDia').AsFloat := 0;
                zInserta.ParamByName('FechaI_p').AsDate  := dParamFecha;
                zInserta.ParamByName('FechaF_p').AsDate  := dParamFecha;
            end;

            zInserta.ExecSQL;
            zBuscaOrden.Next;
        end;

        //Ahora buscamos las ordenes que fueron dadas de alta de forma manual..
        zBuscaOrden.Active;
        zBuscaOrden.SQL.Clear;
        zBuscaOrden.SQL.Add('select p.sContrato, p.sNombre from produccion_diaria p inner join contratos c on (c.sContrato = p.sContrato) where dIdFecha =:fecha ');
        zBuscaOrden.ParamByName('fecha').AsDate := dParamFecha;
        zBuscaOrden.Open;

        //Buscamos nuevamente todas las ordenes registradas dias anteriores..
        zRegistros.Active;
        zRegistros.SQL.Clear;
        zRegistros.SQL.Add('select sContrato, sNombre, dTipoCambio, dFechaInicioPeriodo, dFechaFinalPeriodo from produccion_diaria where dIdFecha = :fecha ');
        zRegistros.ParamByName('fecha').AsDate := dParamFecha - 1;
        zRegistros.Open;

        while not zRegistros.Eof do
        begin
            lContinua := True;
            zBuscaOrden.First;
            while not zBuscaOrden.Eof do
            begin
                if zRegistros.FieldValues['sContrato'] = zBuscaOrden.FieldValues['sContrato'] then
                   lContinua := False;
               zBuscaOrden.Next;
            end;

            if lContinua then
            begin
                zCostos.Active;
                zCostos.SQL.Clear;
                zCostos.SQL.Add('select *, MAX(dIdFecha) as fecha from produccion_diaria group by dIdFecha limit 1');
                zCostos.Open;

                zInserta.Active := False;
                zInserta.SQL.Clear;
                zInserta.SQL.Add('Insert into produccion_diaria (dIdFecha, sContrato, sNombre, dTipoCambio, mNotas, dFechaInicioPeriodo, dFechaFinalPeriodo, dMontoDt, dMontoCosto, dMontoDtDia, dMontoCostoDia) '+
                                 'values (:fecha, :Contrato, :Nombre, :tipo, :notas, :fechaI_p, :fechaF_p, :dt, :costo, :DtDia, :CostoDia )');
                zInserta.ParamByName('fecha').AsDate      := dParamFecha;
                zInserta.ParamByName('contrato').AsString := zRegistros.FieldValues['sContrato'];
                zInserta.ParamByName('Nombre').AsString   := zRegistros.FieldValues['sNombre'];
                zInserta.ParamByName('notas').AsMemo      := '';
                if zCostos.RecordCount > 0 then
                begin
                    zInserta.ParamByName('tipo').AsFloat      := zCostos.FieldValues['dTipoCambio'];
                    zInserta.ParamByName('Dt').AsFloat        := zCostos.FieldValues['dMontoDt'];
                    zInserta.ParamByName('Costo').AsFloat     := zCostos.FieldValues['dMontoCosto'];
                    zInserta.ParamByName('DtDia').AsFloat     := zCostos.FieldValues['dMontoDtDia'];
                    zInserta.ParamByName('CostoDia').AsFloat  := zCostos.FieldValues['dMontoCostoDia'];
                    zInserta.ParamByName('FechaI_p').AsDate   := zCostos.FieldValues['dFechaInicioPeriodo'];
                    zInserta.ParamByName('FechaF_p').AsDate   := zCostos.FieldValues['dFechaFinalPeriodo'];
                end
                else
                begin
                    zInserta.ParamByName('tipo').AsFloat     := 0;
                    zInserta.ParamByName('Dt').AsFloat       := 0;
                    zInserta.ParamByName('Costo').AsFloat    := 0;
                    zInserta.ParamByName('DtDia').AsFloat    := 0;
                    zInserta.ParamByName('CostoDia').AsFloat := 0;
                    zInserta.ParamByName('FechaI_p').AsDate  := dParamFecha;
                    zInserta.ParamByName('FechaF_p').AsDate  := dParamFecha;
                end;
                zInserta.ExecSQL;
            end;
            zRegistros.Next;
        end;
    end;
    zProduccion.Destroy;
    zBuscaOrden.Destroy;
    zInserta.Destroy;
end;

procedure TfrmOpcionesReporteProduccion.CargarOts;
begin
    zqOts.Active := False;
    zqOts.SQL.Clear;
    zqOts.SQL.Add('select *, true as seleccion from produccion_diaria where dIdfecha =:fecha ');
    zqOts.ParamByName('fecha').AsDate := tFechaFinal.Date;
    zqOts.Open;
end;

procedure TfrmOpcionesReporteProduccion.chkConsolidadoClick(Sender: TObject);
begin
    if chkConsolidado.Checked then
    begin
        chkDetallado.Checked := False;
        chkGenerador.Checked := False;
    end;

end;

procedure TfrmOpcionesReporteProduccion.chkDetalladoClick(Sender: TObject);
begin
    if chkDetallado.Checked then
    begin
        chkConsolidado.Checked := False;
        chkGenerador.Checked := False;
    end;
end;

procedure TfrmOpcionesReporteProduccion.chkGeneradorClick(Sender: TObject);
begin
    if chkGenerador.Checked then
    begin
        chkDetallado.Checked := False;
        chkConsolidado.Checked := False;
    end;
end;

procedure TfrmOpcionesReporteProduccion.chkTipoCambioDiaClick(Sender: TObject);
begin
    if chkTipoCambioDia.Checked then
    begin
        chkTipoCambioPeriodo.Checked := False;
        lblPeriodo.Visible := False;
        lbldia.Visible     := True;
    end;
end;

procedure TfrmOpcionesReporteProduccion.chkTipoCambioPeriodoClick(
  Sender: TObject);
begin
    if chkTipoCambioPeriodo.Checked then
    begin
        chkTipoCambioDia.Checked := False;
        lblDia.Visible     := False;
        lblPeriodo.Visible := True;
    end;
end;

procedure TfrmOpcionesReporteProduccion.cmdAplicarClick(Sender: TObject);
var
   zProduccion, zBuscaOrden : tzReadOnlyQuery;
   lAplicaCobro : boolean;
   sOrdenCobro  : string;
   dTipoCambio  : double;
   fechaI, fechaF : tDate;
begin
    zProduccion := tzReadOnlyQuery.Create(self);
    zProduccion.Connection := connection.zConnection;

    zBuscaOrden := tzReadOnlyQuery.Create(self);
    zBuscaOrden.Connection := connection.zConnection;

    zProduccion.Active := False;
    zProduccion.SQL.Clear;
    zProduccion.SQL.Add('Update produccion_diaria set dMontoDT =:Dt, dMontoCosto =:Costo, dMontoDTDia =:DtDia, dMontoCostoDia =:CostoDia, dFechaInicioPeriodo =:FechaI, dFechaFinalPeriodo =:FechaF, dTipoCambio =:Tipo ');
    if chkTipoCambioDia.Checked then
       zProduccion.SQL.Add('where dIdFecha =:fechaF ')
    else
       zProduccion.SQL.Add('where dIdFecha >=:fechaI and dIdFecha <=:fechaF ');
    zProduccion.ParamByName('fechaF').AsDate    := tFechaFinal.Date;
    if chkTipoCambioPeriodo.Checked then
       zProduccion.ParamByName('fechaI').AsDate := tFechaInicio.Date;
    zProduccion.ParamByName('Dt').AsFloat       := tDt.Value;
    zProduccion.ParamByName('Costo').AsFloat    := tCosto.Value;
    zProduccion.ParamByName('DtDia').AsFloat    := tDtDias.Value;
    zProduccion.ParamByName('CostoDia').AsFloat := tCostoDias.Value;
    zProduccion.ParamByName('tipo').AsFloat     := tdTipoCambio.Value;
    zProduccion.ParamByName('fechaI').AsDate    := tFechaInicioPeriodo.Date;
    zProduccion.ParamByName('fechaF').AsDate    := tFechaFinalPeriodo.Date;
    zProduccion.ExecSQL;

    //Ahora actualizamos los precios de acuerdo al tipo de cambio..
    if chkTipoCambioDia.Checked then
    begin
        fechaI := tFechaFinal.Date;
        fechaF := tFechaFinal.Date;
    end;

    if chkTipoCambioPeriodo.Checked then
    begin
        fechaI := tFechaInicio.Date;
        fechaF := tFechaFinal.Date;
    end;

    while fechaI <= FechaF do
    begin
        //Primero Consultamos si existe cobro de barco en una sola Orden..
        zBuscaOrden.Active := False;
        zBuscaOrden.SQL.Clear;
        zBuscaOrden.SQL.Add('select * from produccion_diaria where dIdFecha =:fecha ');
        zBuscaOrden.ParamByName('fecha').AsDate := fechaI;
        zBuscaOrden.Open;

        lAplicaCobro := False;
        sOrdenCobro  := '';
        dTipoCambio  := 0;
        while not zBuscaOrden.Eof do
        begin
            if zBuscaOrden.FieldValues['lBarco'] = 'Si' then
            begin
                lAplicaCobro := True;
                sOrdenCobro  := zBuscaOrden.FieldValues['sContrato'];
            end;
            dTipoCambio := zBuscaOrden.FieldValues['dTipoCambio'];
            zBuscaOrden.Next;
        end;

        zBuscaOrden.First;
        while not zBuscaOrden.Eof do
        begin
            lActualiza := False;
            produccionDia(zBuscaOrden.FieldValues['sContrato'], sOrdenCobro, lAplicaCobro, dTipoCambio, fechaI);

            if lActualiza then
            begin
                zProduccion.Active := False;
                zProduccion.SQL.Clear;
                zProduccion.SQL.Add('Update produccion_diaria set dPersonal =:Personal, dEquipo =:Equipo, dPernocta =:Pernocta, dBarco =:Barco, dAnexo =:Anexo, '+
                                    'dMontoPersonal =:montoPersonal, dMontoEquipo =:montoEquipo, dMontoPernocta =:montoPernocta, dMontoBarco =:montoBarco, dMontoAnexo =:montoAnexo, dMontoDia =:total '+
                                    'where sContrato =:Contrato and dIdFecha =:fecha ');
                zProduccion.ParamByName('fecha').AsDate          := FechaI;
                zProduccion.ParamByName('contrato').AsString     := zBuscaOrden.FieldValues['sContrato'];
                zProduccion.ParamByName('Personal').AsFloat      := rxProduccion.FieldValues['dCantidad1'];
                zProduccion.ParamByName('Equipo').AsFloat        := rxProduccion.FieldValues['dCantidad3'];
                zProduccion.ParamByName('Pernocta').AsFloat      := rxProduccion.FieldValues['dCantidad5'];
                zProduccion.ParamByName('Barco').AsFloat         := rxProduccion.FieldValues['dCantidad7'];
                zProduccion.ParamByName('Anexo').AsFloat         := rxProduccion.FieldValues['dCantidad9'];
                zProduccion.ParamByName('montoPersonal').AsFloat := rxProduccion.FieldValues['dCantidad2'];
                zProduccion.ParamByName('montoEquipo').AsFloat   := rxProduccion.FieldValues['dCantidad4'];
                zProduccion.ParamByName('montoPernocta').AsFloat := rxProduccion.FieldValues['dCantidad6'];
                zProduccion.ParamByName('montoBarco').AsFloat    := rxProduccion.FieldValues['dCantidad8'];
                zProduccion.ParamByName('montoAnexo').AsFloat    := rxProduccion.FieldValues['dCantidad10'];
                zProduccion.ParamByName('total').AsFloat         := rxProduccion.FieldValues['dTotal'];
                zProduccion.ExecSQL;
            end;
            zBuscaOrden.Next;
        end;
        if zBuscaOrden.RecordCount = 0 then
           InsertaOrdenes(fechaI);

        fechaI := fechaI + 1;
    end;
    messageDLG('Los datos se actualizaron correctamente!', mtInformation, [mbOk], 0);
    zProduccion.Destroy;
    zBuscaOrden.Destroy;
end;

procedure TfrmOpcionesReporteProduccion.CargarLista;
var
   zProduccion : tzReadOnlyQuery;
begin
    zProduccion := tzReadOnlyQuery.Create(self);
    zProduccion.Connection := connection.zConnection;

    zProduccion.Active := False;
    zProduccion.SQL.Clear;
    zProduccion.SQL.Add('select sContrato from produccion_diaria where dIdfecha >=:fechaI and dIdFecha <= :fechaF group by sContrato ');
    zProduccion.ParamByName('fechaI').AsDate := tFechaInicio.Date;
    zProduccion.ParamByName('fechaF').AsDate := tFechaFinal.Date;
    zProduccion.Open;

    tsListaOrden.Clear;
    while not zProduccion.Eof do
    begin
        tslistaorden.Items.Add(zProduccion.FieldValues['sContrato']);
        tslistaorden.Checked[tslistaorden.Items.IndexOf(zProduccion.FieldValues['sContrato'])]  := true;
        zProduccion.Next;
    end;
    zProduccion.Destroy;
end;

procedure TfrmOpcionesReporteProduccion.Grafica;
var
    zGrafica, zAcumulado : tzReadOnlyQuery;
    fecha : tDate;
    dCosto, dDt, dFisico : double;
    contador, i : integer;
    etiqueta    : string;
    lGuarda     : boolean;
begin
    zGrafica := tzReadOnlyQuery.Create(self);
    zGrafica.Connection := connection.zConnection;

    zAcumulado := tzReadOnlyQuery.Create(self);
    zAcumulado.Connection := connection.zConnection;

    zGrafica.Active := False;
    zGrafica.SQL.Clear;
    zGrafica.SQL.Add('select * from produccion_diaria where dIdFecha =:fecha');
    zGrafica.ParamByName('fecha').AsDate := tFechaFinal.Date;
    zGrafica.Open;

    //Primero insertamos el programado...
    if zGrafica.RecordCount > 0 then
    begin
        rxGraficaCosto.EmptyTable;
        rxGraficaDt.EmptyTable;
        rxGraficaFisico.EmptyTable;
        dDt      := 0;
        dCosto   := 0;
        dFisico  := 0;
        contador := 1;
        fecha := zGrafica.FieldValues['dFechaInicioPeriodo'];
        while fecha <= zGrafica.FieldValues['dFechaFinalPeriodo'] do
        begin
            dDt     := dDt + zGrafica.FieldValues['dMontoDtDia'];
            dCosto  := dCosto + zGrafica.FieldValues['dMontoCostoDia'];

            if chkDt.Checked then
            begin
                rxGraficaDt.Append;
                rxGraficaDt.FieldValues['dFecha'] := fecha;
                rxGraficaDt.FieldValues['dia']    := contador;
                rxGraficaDt.FieldValues['dDt']    := dDt;
                rxGraficaDt.Post;
            end;

            if chkCosto.Checked then
            begin
                rxGraficaCosto.Append;
                rxGraficaCosto.FieldValues['dFecha'] := fecha;
                rxGraficaCosto.FieldValues['dia']    := contador;
                rxGraficaCosto.FieldValues['dCosto'] := dCosto;
                rxGraficaCosto.Post;
            end;

            if chkFisico.Checked then
            begin
                if fecha <= tFechafinal.Date then
                begin
                    zAcumulado.Active := False;
                    zAcumulado.SQL.Clear;
                    zAcumulado.SQL.Add('select sum(dMontoDia) as dMontoDia from produccion_diaria where dIdFecha =:Fecha group by dIdFecha ');
                    zAcumulado.ParamByName('fecha').AsDate := fecha;
                    zAcumulado.Open;

                    if zAcumulado.RecordCount > 0 then
                       dFisico := dFisico + zAcumulado.FieldValues['dMontoDia'];
                end;

                rxGraficaFisico.Append;
                rxGraficaFisico.FieldValues['dFecha']  := fecha;
                rxGraficaFisico.FieldValues['dia']     := contador;
                rxGraficaFisico.FieldValues['dFisico'] := dFisico;
                rxGraficaFisico.Post;
            end;

            fecha := fecha + 1;
            inc(contador);
            zGrafica.Next;
        end;

        //Si se imprime el generador por mes...
        if chkGenerador.Checked then
        begin
            rxGeneradorDia.EmptyTable;
            //Iniciamos un cliclo para determinar costos, dt y fisico en Reporte Tipo Generador...
            for I := 1 to 3 do
            begin
                dDt      := 0;
                dCosto   := 0;
                dFisico  := 0;
                contador := 1;
                if i = 1 then
                   etiqueta := 'DT';

                if i = 2 then
                   etiqueta := 'COSTO';

                if i = 3 then
                   etiqueta := 'REAL';

                if chkDt.Checked then
                   rxGeneradorDia.Append;

                if chkCosto.Checked then
                   rxGeneradorDia.Append;

                if chkFisico.Checked then
                   rxGeneradorDia.Append;

                lGuarda := False;
                fecha := zGrafica.FieldValues['dFechaInicioPeriodo'];
                while fecha <= zGrafica.FieldValues['dFechaFinalPeriodo'] do
                begin
                    dDt     := dDt + zGrafica.FieldValues['dMontoDtDia'];
                    dCosto  := dCosto + zGrafica.FieldValues['dMontoCostoDia'];

                    if (chkDt.Checked) and (i = 1) then
                    begin
                        rxGeneradorDia.FieldValues['FechaInicio'] := tFechaInicio.Date;
                        rxGeneradorDia.FieldValues['iNivel'] := 1;
                        rxGeneradorDia.FieldValues['sGrupo'] := etiqueta;
                        rxGeneradorDia.FieldValues['dia'+ IntToStr(contador)] := dDt;
                        lGuarda := True;
                    end;

                    if (chkCosto.Checked) and (i = 2) then
                    begin
                        rxGeneradorDia.FieldValues['FechaInicio'] := tFechaInicio.Date;
                        rxGeneradorDia.FieldValues['iNivel'] := 1;
                        rxGeneradorDia.FieldValues['sGrupo'] := etiqueta;
                        rxGeneradorDia.FieldValues['dia'+ IntToStr(contador)] := dCosto;
                        lGuarda := True;
                    end;

                    if (chkFisico.Checked) and (i = 3) then
                    begin
                        if fecha <= tFechafinal.Date then
                        begin
                            zAcumulado.Active := False;
                            zAcumulado.SQL.Clear;
                            zAcumulado.SQL.Add('select sum(dMontoDia) as dMontoDia from produccion_diaria where dIdFecha =:Fecha group by dIdFecha ');
                            zAcumulado.ParamByName('fecha').AsDate := fecha;
                            zAcumulado.Open;

                            if zAcumulado.RecordCount > 0 then
                               dFisico := dFisico + zAcumulado.FieldValues['dMontoDia'];

                            rxGeneradorDia.FieldValues['FechaInicio'] := tFechaInicio.Date;
                            rxGeneradorDia.FieldValues['iNivel'] := 1;
                            rxGeneradorDia.FieldValues['sGrupo'] := etiqueta;
                            rxGeneradorDia.FieldValues['dia'+ IntToStr(contador)] := dFisico;
                            lGuarda := True;
                        end;
                    end;

                    fecha := fecha + 1;
                    inc(contador);
                    zGrafica.Next;
                end; //Termina While..

                if lGuarda then
                   rxGeneradorDia.Post
                else
                   rxGeneradorDia.Cancel;

            end; //Termina For..
        end;//Termina condicion..

    end;
    zGrafica.Destroy;
    zAcumulado.Destroy;
end;


end.
