unit frm_ordenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls,
  DBCtrls, StdCtrls, Mask, Menus, ADODB,  RXDBCtrl, ZDataset, utilerias,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, Newpanel,unitValidacion,
  sPageControl, rxCurrEdit, ExtCtrls, unitexcepciones, udbgrid,UnitValidaTexto,
  UnitTablasImpactadas, unitactivapop, DBDateTimePicker, Buttons, FormAutoScaler,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView,unittbotonespermisos, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMemo, cxTextEdit, dxLayoutControl, dxLayoutControlAdapters, cxButtons,
  cxProgressBar, cxGroupBox, dxBarBuiltInMenu, cxPC, cxCheckBox, cxCalc,
  frm_inteligent, cxLabel, UnitGenerales;

type
  TfrmOrdenes = class(TForm)
  ds_estatus: TDataSource;
  ds_tiposdeorden: TDataSource;
  ds_ordenesdetrabajo: TDataSource;
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
  N4: TMenuItem;
  Salir1: TMenuItem;
  OrdenesdeTrabajo: TZQuery;
  TiposdeOrden: TZReadOnlyQuery;
  Estatus: TZReadOnlyQuery;
  ds_Plataformas: TDataSource;
  Plataformas: TZReadOnlyQuery;
  ds_Pernoctan: TDataSource;
  pernoctan: TZReadOnlyQuery;
  OrdenesdeTrabajosContrato: TStringField;
  OrdenesdeTrabajosIdFolio: TStringField;
  OrdenesdeTrabajosNumeroOrden: TStringField;
  OrdenesdeTrabajosDescripcionCorta: TStringField;
  OrdenesdeTrabajosOficioAutorizacion: TStringField;
  OrdenesdeTrabajomDescripcion: TMemoField;
  OrdenesdeTrabajosIdTipoOrden: TStringField;
  OrdenesdeTrabajosApoyo: TStringField;
  OrdenesdeTrabajosIdPlataforma: TStringField;
  OrdenesdeTrabajosIdPernocta: TStringField;
  OrdenesdeTrabajodFiProgramado: TDateField;
  OrdenesdeTrabajodFfProgramado: TDateField;
  OrdenesdeTrabajocIdStatus: TStringField;
  OrdenesdeTrabajomComentarios: TMemoField;
  OrdenesdeTrabajosFormato: TStringField;
  OrdenesdeTrabajoiConsecutivo: TIntegerField;
  OrdenesdeTrabajoiConsecutivoTierra: TIntegerField;
  OrdenesdeTrabajoiJornada: TIntegerField;
  OrdenesdeTrabajolGeneraAnexo: TStringField;
  OrdenesdeTrabajolGeneraConsumibles: TStringField;
  OrdenesdeTrabajolGeneraPersonal: TStringField;
  OrdenesdeTrabajolGeneraEquipo: TStringField;
  OrdenesdeTrabajosDepsolicitante: TStringField;
  OrdenesdeTrabajodFechaInicioT: TDateField;
  OrdenesdeTrabajodFechaSitioM: TDateField;
  OrdenesdeTrabajosEquipo: TStringField;
  OrdenesdeTrabajosPozo: TStringField;
  OrdenesdeTrabajodFechaElaboracion: TDateField;
  OrdenesdeTrabajosPuestoPep: TStringField;
  OrdenesdeTrabajosFirmantePep: TStringField;
  OrdenesdeTrabajosPuestocia: TStringField;
  OrdenesdeTrabajosFirmantecia: TStringField;
  OrdenesdeTrabajolMostrarAvanceProgramado: TStringField;
  OrdenesdeTrabajosTipoOrden: TStringField;
  OrdenesdeTrabajobAvanceFrente: TStringField;
  OrdenesdeTrabajobAvanceContrato: TStringField;
  OrdenesdeTrabajobComentarios: TStringField;
  OrdenesdeTrabajobPermisos: TStringField;
  OrdenesdeTrabajobTipoAdmon: TStringField;
  OrdenesdeTrabajobCostaFuera: TStringField;
  OrdenesdeTrabajosTipoPrograma: TStringField;
  OrdenesdeTrabajosTipoImpresionActividad: TStringField;
  OrdenesdeTrabajosTipoAvanceAdmon: TStringField;
  OrdenesdeTrabajoiDecimales: TIntegerField;
  OrdenesdeTrabajoiNiveles: TIntegerField;
  OrdenesdeTrabajolImprimeProgramado: TStringField;
  OrdenesdeTrabajolImprimeFisico: TStringField;
  OrdenesdeTrabajolImprimePlaticas: TStringField;
  OrdenesdeTrabajolMostrarPartidasReportes: TStringField;
  OrdenesdeTrabajolMostrarPartidasGeneradores: TStringField;
  OrdenesdeTrabajodFechaIniPReportes: TDateField;
  OrdenesdeTrabajodFechaFinPReportes: TDateField;
  OrdenesdeTrabajodFechaIniPGeneradores: TDateField;
  OrdenesdeTrabajodFechaFinPGeneradores: TDateField;
  OrdenesdeTrabajosPedidoAsociado: TStringField;
  dszQCuentasBancarias: TDataSource;
  zQCuentasBancarias: TZQuery;
  zQCuentasBancariassIdNumeroCuenta: TStringField;
  zQCuentasBancariassNombreCuenta: TStringField;
  zQCuentasBancariassFirmanCuenta: TStringField;
  zQCuentasBancariassInterbancaria: TStringField;
  OrdenesdeTrabajosIdNumeroCuenta: TStringField;
  OrdenesdeTrabajosNombreCuenta: TStringField;
  OrdenesdeTrabajosDescripcion: TStringField;
  dzQCliente: TDataSource;
  zQClientes: TZQuery;
  zQClientessIdCompania: TStringField;
  zQClientessRazonSocial: TStringField;
  OrdenesdeTrabajosIdCompania: TStringField;
  FormAutoScaler1: TFormAutoScaler;
  Pnl_Principal: TPanel;
  dxBarManager1: TdxBarManager;
  dxInsertar: TdxBarLargeButton;
  dxEditar: TdxBarLargeButton;
  dxGuardar: TdxBarLargeButton;
  dxCancelar: TdxBarLargeButton;
  dxEliminar: TdxBarLargeButton;
  dxRefrescar: TdxBarLargeButton;
  dxSalir: TdxBarLargeButton;
  dxImprimir: TdxBarLargeButton;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    strngfldQCuentasBancariassFolioSinCheque: TStringField;
    strngfldOrdenesdeTrabajoeMostrarGuardia: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_ordenes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    frmBarra1: TfrmBarra;
    Panel3: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tsNumeroOrden: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    tsIdFolio: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    tsDescripcionCorta: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    tsOficioAutorizacion: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxPedido: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    tmDescripcion: TcxDBMemo;
    dxLayoutControl1Item6: TdxLayoutItem;
    tsCliente: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    tsNumeroCuenta: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    tdFechaInicio: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    tdFechaFinal: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    lMostrarAvancesP: TcxComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    tmComentarios: TcxDBMemo;
    dxLayoutControl1Item12: TdxLayoutItem;
    tcIdStatus: TcxDBLookupComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cbbEMostrarGuardia: TcxComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    tsIdPlataforma: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    tsIdPernocta: TcxDBLookupComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    btn1: TcxButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    btn2: TcxButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    btnPlataformas: TcxButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    btnPernocta: TcxButton;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutAutoCreatedGroup;
    memDatos: TcxDBMemo;
    dxLayoutControl1Item21: TdxLayoutItem;
    Progreso: TcxProgressBar;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    tsFormato: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    tiJornada: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    tiConsecutivo: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    tiConsecutivoTierra: TcxDBTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    progreso2: TcxProgressBar;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    sPageControl1: TcxPageControl;
    dxLayoutControl3Item1: TdxLayoutItem;
    pgContenido: TcxTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    pgConfiguracion: TcxTabSheet;
    pgImpresion: TcxTabSheet;
    pgHistorialPartidas: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    ChkReal: TcxDBCheckBox;
    dxLayoutControl4Item1: TdxLayoutItem;
    ChkProg: TcxDBCheckBox;
    dxLayoutControl4Item2: TdxLayoutItem;
    chkComent: TcxDBCheckBox;
    dxLayoutControl4Item3: TdxLayoutItem;
    ChkPermiso: TcxDBCheckBox;
    dxLayoutControl4Item4: TdxLayoutItem;
    DBCheckBox1: TcxDBCheckBox;
    dxLayoutControl4Item5: TdxLayoutItem;
    ChkCostaFuera: TcxDBCheckBox;
    dxLayoutControl7Item1: TdxLayoutItem;
    chkImprimeAct: TcxDBCheckBox;
    dxLayoutControl7Item2: TdxLayoutItem;
    ChkAvReal: TcxDBCheckBox;
    dxLayoutControl7Item3: TdxLayoutItem;
    RxDBCalcEdit1: TcxDBCalcEdit;
    dxLayoutControl7Item4: TdxLayoutItem;
    iDecimales: TcxDBCalcEdit;
    dxLayoutControl7Item5: TdxLayoutItem;
    ChkImprimeProgramado: TcxDBCheckBox;
    dxLayoutControl6Item1: TdxLayoutItem;
    ChkImprimeFisico: TcxDBCheckBox;
    dxLayoutControl6Item2: TdxLayoutItem;
    ChkImprimePlaticas: TcxDBCheckBox;
    dxLayoutControl6Item3: TdxLayoutItem;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutControl8Item1: TdxLayoutItem;
    ChkMostrarPartidasReportes: TcxDBCheckBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    DBCheckBox2: TcxDBCheckBox;
    dxLayoutControl8Item2: TdxLayoutItem;
    TFechaIniPReportes: TcxDBDateEdit;
    dxLayoutControl5Item3: TdxLayoutItem;
    TFechaFinPReportes: TcxDBDateEdit;
    dxLayoutControl5Item4: TdxLayoutItem;
    TFechaIniGeneradores: TcxDBDateEdit;
    dxLayoutControl8Item3: TdxLayoutItem;
    TFechaFinGeneradores: TcxDBDateEdit;
    dxLayoutControl8Item4: TdxLayoutItem;
    lblDetalles: TcxLabel;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dxLayoutControl9Item1: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group7: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group10: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group11: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl7Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl7Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group12: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure dbgrd_ordeneEnter(Sender: TObject);
  procedure dbgrd_ordeneKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  procedure dbgrd_ordeneKeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  procedure dbgrd_ordeneCellClick(Column: TColumn);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
  procedure BuscaFrente(Frente: string; accion: string);
  procedure ActualizaReporte(sFrente: string; valor: boolean);
  procedure AsginaFrenteUsuario(dParamFrente: string);
  procedure pgConfiguracionShow(Sender: TObject);
  procedure iDecimalesExit(Sender: TObject);
  procedure iDecimalesChange(Sender: TObject);
  procedure RxDBCalcEdit1Exit(Sender: TObject);
  function tablasDependientes(idOrig: string): boolean;
  function posibleBorrar(idOrig: string): boolean;
  procedure OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
    const Text: string);
  procedure OrdenesdeTrabajoiJornadaSetText(Sender: TField;
    const Text: string);
  procedure OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
    const Text: string);
  procedure OrdenesdeTrabajoBeforePost(DataSet: TDataSet);
  procedure btnPlataformasClick(Sender: TObject);
  procedure btnPernoctaClick(Sender: TObject);
  procedure InsertarValores;
  procedure btn1Click(Sender: TObject);
  procedure btn2Click(Sender: TObject);
  procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_ordenesEnter(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

private
  { Private declarations }
public
  { Public declarations }
end;

var
  frmOrdenes: TfrmOrdenes;
  Opcion, FrentT, formato :String ;
  botonpermiso     : tbotonespermisos;
  sTipo, sPlataforma, sPernocta : String ;
 // utgrid:ticdbgrid;
  sIdOrig : string;
implementation

uses
  frm_trinomios,
  frm_pedidos,
  frm_requisicionPerf, frm_Pernoctan, frm_plataformas, frm_EmpleadosGuardias,
  frmDepositoscias, Func_Genericas, frmCompanias, frmCatalogoCuentas,
  frmCatalogodeCuentas, frmEgresos, frmGastos, frm_entradaalmacen, frm_entradaanex, frm_SalidaAlmacen;

  {$R *.dfm}

procedure TfrmOrdenes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // utgrid.Destroy;
  ordenesdetrabajo.Cancel ;
  action := cafree ;
  if bandera_formulario= 'frm_Depositoscias' then
  begin
    bandera_formulario := '';
    frm_Depositoscias.zQProyectos.refresh;
    frm_Depositoscias.zQEgresos.FieldByName('sProyecto').AsString    :=  OrdenesdeTrabajo.fieldbyname('sNumeroOrden').AsString;
  end;
end;

procedure TfrmOrdenes.FormShow(Sender: TObject);
begin
  //Poner el combo eMostrarGuardia con No por defecto
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
  OpcButton := '' ;
  frmbarra1.btnCancel.Click ;
  sPageControl1.ActivePageIndex := 0;
  cbbEMostrarGuardia.ItemIndex := 1;

  try
    //UtGrid:=TicdbGrid.create(grid_ordenes);
    OpcButton := '' ;
    sIdOrig := '';

    OrdenesdeTrabajo.Active := False ;
    OrdenesdeTrabajo.SQL.Clear ;

    zQCuentasBancarias.Active := False;
    zQCuentasBancarias.Params.ParamByName('Contrato').DataType := ftString ;
    zQCuentasBancarias.Params.ParamByName('Contrato').Value    := Global_Contrato ;
    zQCuentasBancarias.Open;

    if (global_grupo = 'INTEL-CODE') Then
    begin
    OrdenesdeTrabajo.SQL.Add('Select * from ordenesdetrabajo where sContrato = :Contrato ' +
                               'order by sNumeroOrden');
      (*OrdenesdeTrabajo.SQL.Add('Select ' +
                                'ord.*, ' +
                                'cb.sNombreCuenta ' +
                                'from ordenesdetrabajo ord ' +
                                'inner join con_cuentasbancarias cb ' +
                                'on ord.sIdNumeroCuenta = cb.sIdNumeroCuenta ' +
                                'Where sContrato = :Contrato Order By sIdFolio, sNumeroOrden');*)
    end
    Else
      OrdenesdeTrabajo.SQL.Add('Select ot.* from ordenesdetrabajo ot ' +
                                'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                                'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                                'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                                'And ou.sIdUsuario =:Usuario order by ot.sIdFolio, ot.sNumeroOrden') ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := Global_Contrato ;

    if (global_grupo <> 'INTEL-CODE') Then
    begin
      OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
    end;

    try
      OrdenesdeTrabajo.Open ;
    except
      on e:exception do
      begin
        ShowMessage(e.Message);
      end;

    end;

    if (global_frmActivo = 'frm_pedidos') or (global_frmActivo = 'frm_requisicionPerf') then
      dxInsertar.Click;

    Plataformas.Active := False ;
    Plataformas.Open ;

    Pernoctan.Active := False ;
    Pernoctan.Open ;

    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;

    Estatus.Active := False ;
    Estatus.Open ;

    zQClientes.Active := False;
    zQClientes.Params.ParamByName('Contrato').DataType := ftString ;
    zQClientes.Params.ParamByName('Contrato').Value    := Global_Contrato ;
    zQClientes.Open;

    sTipo := '' ;
    sPlataforma := '' ;
    sPernocta := '' ;

    Connection.QryBusca.Active := false;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('SELECT lHistorialPartidas FROM configuracion WHERE sContrato = :contrato');
    Connection.QryBusca.ParamByName('contrato').Value := global_contrato;
    Connection.QryBusca.Open;
    sPageControl1.Pages[3].TabVisible := false;
    //Connection.QryBusca.FieldByName('lHistorialPartidas').AsString = 'Frente';
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al iniciar formulario', 0);
    end;
  end;
end;

procedure TfrmOrdenes.dbgrd_ordeneEnter(Sender: TObject);
begin
  If dxInsertar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date  := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    if Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] = 'Si' then
      lMostrarAvancesP.ItemIndex := 0
    else
      lMostrarAvancesP.ItemIndex := 1 ;
  end
end;

procedure TfrmOrdenes.dbgrd_ordeneKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If dxInsertar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    lMostrarAvancesP.Text :=  Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] ;
  end
end;

procedure TfrmOrdenes.dbgrd_ordeneKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If dxCancelar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    lMostrarAvancesP.Text :=  Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] ;
  end
end;

procedure TfrmOrdenes.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmOrdenes.iDecimalesChange(Sender: TObject);
begin
  if iDecimales.Value > 8 then
  begin
    messageDLG('El numero de Digitos es mayor al maximo Permitido!', mtWarning, [mbOk], 0);
    iDecimales.Value := 4;
    iDecimales.SetFocus;
  end;

  if iDecimales.Value < 0 then
  begin
    messageDLG('El numero de Digitos es menor al minimo Permitido!', mtWarning, [mbOk], 0);
    iDecimales.Value := 4;
    iDecimales.SetFocus;
  end;
end;

procedure TfrmOrdenes.iDecimalesExit(Sender: TObject);
begin
  if iDecimales.Value > 8 then
  begin
    messageDLG('El numero de Digitos es mayor al maximo Permitido!', mtWarning, [mbOk], 0);
    iDecimales.SetFocus;
  end;

  if iDecimales.Value < 0 then
  begin
    messageDLG('El numero de Digitos es menor al minimo Permitido!', mtWarning, [mbOk], 0);
    iDecimales.SetFocus;
  end;
end;

procedure TfrmOrdenes.dbgrd_ordeneCellClick(Column: TColumn);
begin
  If dxCancelar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    if Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] = 'Si' then
      lMostrarAvancesP.ItemIndex := 0
    else lMostrarAvancesP.ItemIndex := 1 ;
  end;

  if (progreso.Visible = True) and (memDatos.Visible = True)then
  begin
    progreso.Visible := False;
    memDatos.Visible := False;
    lblDetalles.Visible := False;
  end;
  if progreso2.Visible = True then progreso2.Visible := False;

  //Mostrar En el Combo EmostrarGuardia conforme se elija en el grid
  if (OrdenesdeTrabajo.FieldByName('eMostrarGuardia').AsString = 'Si') then
  begin
    cbbEMostrarGuardia.ItemIndex := 0;
  end
  else
  begin
    cbbEMostrarGuardia.ItemIndex := 1;
  end;

end;

procedure TfrmOrdenes.frmBarra1btnAddClick(Sender: TObject);
begin
  activapop(frmOrdenes, popupprincipal);
  try
  frmBarra1.btnAddClick(Sender);
   Opcion := 'Nuevo';
   global_movimiento := 'Insertó';
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   cxPageControl1.ActivePageIndex := 0;

   lMostrarAvancesP.ItemIndex := 0;
   OrdenesdeTrabajo.Append ;
   OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString := AutoFolio('SitioNumero','ordenesdetrabajo','sNumeroOrden');
   //ActivarDesactivar_Botones(dxBarManager1, OrdenesdeTrabajo);
   InsertarValores;
   If Not Connection.configuracion.FieldByName('cStatusProceso').IsNull then
       OrdenesdeTrabajo.FieldValues ['cIdStatus'] := connection.configuracion.FieldValues ['cStatusProceso'] ;
   tsNumeroOrden.SetFocus ;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  grid_ordenes.Enabled:=false;
  if OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString = '' then
    tsNumeroOrden.SetFocus
  else
    tsIdFolio.SetFocus;

end;

procedure TfrmOrdenes.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  activapop(frmOrdenes, popupprincipal);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  cxPageControl1.ActivePageIndex := 0;
  global_movimiento := 'Modificó';
  sIdOrig := OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
  try
    opcion  := 'actualizar';
    formato := OrdenesdeTrabajo.FieldValues['sFormato'];
    FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    OrdenesdeTrabajo.Edit ;
 //   ActivarDesactivar_Botones(dxBarManager1, OrdenesdeTrabajo);
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Sitio de Trabajo', 'Al editar registro', 0);
      dxCancelar.Click ;
    end;
  end ;
  tsNumeroOrden.SetFocus ;


  grid_ordenes.Enabled:=false;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmOrdenes.frmBarra1btnPostClick(Sender: TObject);
var
  cadena, sId, mov   : string;
  nombres,
  cadenas  : TStringList;
  lEdita   : boolean;
  indice   : integer;
begin
  frmBarra1.btnPostClick(Sender);
  OrdenesdeTrabajo.FieldValues ['dfiProgramado' ] :=tdFechaInicio.date;
  OrdenesdeTrabajo.FieldValues ['dffProgramado' ] :=tdFechaFinal.date;
  //try
    If (OrdenesdeTrabajo.FieldValues ['sFormato' ] = Null) OR (OrdenesdeTrabajo.FieldValues ['sFormato' ] = '') Then
      OrdenesdeTrabajo.FieldValues ['sFormato' ] := OrdenesdeTrabajo.FieldValues ['sNumeroOrden' ] + '-' ;

    OrdenesdeTrabajo.FieldValues ['lMostrarAvanceProgramado' ] :=  'No';
    sTipo       := OrdenesdeTrabajo.FieldValues ['sIdTipoOrden' ] ;
    sPlataforma := OrdenesdeTrabajo.FieldValues ['sIdPlataforma' ] ;
    sPernocta   := OrdenesdeTrabajo.FieldValues ['sIdPernocta' ] ;


    Insertar1.Enabled  := True ;
    Editar1.Enabled    := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled       := False ;
    Eliminar1.Enabled  := True ;
    Refresh1.Enabled   := True ;
    Salir1.Enabled     := True ;

    //empieza validacion
    nombres:=TStringList.Create;cadenas:=TStringList.Create;
    nombres.Add('Sitio de trabajo');nombres.Add('Titulo de Sitio');
    nombres.Add('Descripción Corta');nombres.Add('Oficio de Autorización');
    nombres.Add('Descripción');nombres.Add('Cuenta Bancaria');
    //nombres.Add('Municipio/Plataforma');
    //nombres.Add('Personal Pernocta en');
    nombres.Add('Status');

    cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsIdFolio.Text);
    cadenas.Add(tsDescripcionCorta.Text);cadenas.Add(tsOficioAutorizacion.Text);
    cadenas.Add(tmDescripcion.Text);cadenas.Add(tsNumeroCuenta.Text);
    //cadenas.Add(tsIdPlataforma.Text);cadenas.Add(tsIdPernocta.Text);
    cadenas.Add(tcIdStatus.Text);

    if not validaTexto(nombres, cadenas, '', '') then
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

    global_FrenteTrabajo :=  tsNumeroOrden.Text;
    If OrdenesdeTrabajo.State = dsEdit Then
    Begin
      mov:= 'Se realizó la modificación del Registro de Frente No. [' + OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString + ']';
      kardex_almacen(mov, 'Modificó');
 //     Kardex('Sitios de Trabajo','Edita  Sitio de Trabajo', tsNumeroOrden.Text, 'Sitio de Trabajo', '', '', '' );
      OrdenesdeTrabajo.FieldValues ['eMostrarGuardia']       :=  cbbEMostrarGuardia.Text;
      lEdita := true;
    End
    Else
    Begin

      mov:= 'Se realizó la inserción del Registro de Frente No. [' + OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString + ']';
      kardex_almacen(mov, 'Insertó');

      //Kardex(' Sitio de Trabajo','Crea Sitio de Trabajo', tsNumeroOrden.Text, 'Sitio de Trabajo', '', '', '' );
      lEdita := false;
    End;

    sId := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    OrdenesdeTrabajo.FieldValues ['sIdPlataforma' ] := plataformas.FieldByName('sIdPlataforma').AsString;
    OrdenesdeTrabajo.FieldValues ['sIdPernocta' ]   := pernoctan.FieldByName('sIdPernocta').AsString;
    OrdenesdeTrabajo.FieldValues ['sIdCompania' ]   := tsCliente.EditValue;

    if Opcion = 'Nuevo' then
    begin
      FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
      OrdenesdeTrabajo.Post ;
  //    if global_movimiento = 'Insertó' then
 //       mov:= 'Se realizó la inserción del Registro de Frente No. [' + OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString + ']';

 //     kardex_almacen(mov, global_movimiento);

      ActivarDesactivar_Botones(dxBarManager1, OrdenesdeTrabajo);
      AsginaFrenteUsuario(FrentT);
      MessageDlg('Los datos se guardaron correctamente!', mtInformation, [mbOk], 0);
    end
    else
    begin
      if FrentT <> tsNumeroOrden.Text then
      begin
        if MessageDlg('Si Modifica el Nombre del Sitio de Trabajo, Todos los Datos Cambiaran al Nuevo, Desea Continuar?, ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          //Llamada a funcion Buscar Frente en la Base de Datos..
          tsFormato.Text := tsNumeroOrden.Text;
          OrdenesdeTrabajo.Post ;
//          if global_movimiento = 'Modificó' then
//              mov:= 'Se realizó la modificación del Regsitro de Sitio No. [' + OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString + ']';

       //   kardex_almacen(mov, global_movimiento);


          tablasDependientes(sIdOrig);
          //BuscaFrente(FrentT, opcion);
          ActualizaReporte(tsNumeroOrden.Text, false);
        end
        else
           exit;
      end
      else
      begin
          OrdenesdeTrabajo.FieldValues ['lImprimeProgramado']:=  'Si';
          OrdenesdeTrabajo.FieldValues ['lImprimeFisico']    :=  'Si';
          OrdenesdeTrabajo.FieldValues ['lImprimePlaticas']  :=  'Si';
          OrdenesdeTrabajo.FieldValues ['bCostaFuera']       :=  'Si';
          OrdenesdeTrabajo.FieldValues ['sPedidoAsociado']   :=  cxPedido.Text;
          OrdenesdeTrabajo.FieldValues['sIdPlataforma']      := 'TIERRA' ;
          OrdenesdeTrabajo.Post ;

          Insertar1.Enabled  := True ;
          Editar1.Enabled    := True ;
          Registrar1.Enabled := False ;
          Can1.Enabled       := False ;
          Eliminar1.Enabled  := True ;
          Refresh1.Enabled   := True ;
          Salir1.Enabled     := True ;

  //        ActivarDesactivar_Botones(dxBarManager1, OrdenesdeTrabajo);
      end;
    end;

    Try
      frmPedidos.zqOrdenes.Refresh ;
      frmPedidos.cbbFrentes.SetFocus;
    Except
    end;

    Try
      frmRequisicionPerf.tsNumeroOrden.Items.Add(FrentT);
      frmRequisicionPerf.tsNumeroOrden.ItemIndex := frmRequisicionPerf.tsNumeroOrden.Items.IndexOf(FrentT);
      frmRequisicionPerf.tsNumeroOrden.SetFocus;
    Except
    end;

    Try
      frmEntradaAlmacen.CargaFrentes;
      frmEntradaAlmacen.tsNumeroOrden.ItemIndex := frmEntradaAlmacen.tsNumeroOrden.Items.IndexOf(FrentT);
      frmEntradaAlmacen.tsNumeroOrden.SetFocus;
    Except
    end;

    Try
      frmEntradaAnex.CargarFrentes;
      frmEntradaAnex.tsNumeroOrden.ItemIndex := frmEntradaAnex.tsNumeroOrden.Items.IndexOf(FrentT);
      frmEntradaAnex.tsNumeroOrden.SetFocus;
    Except
    end;

    Try
      frmSalidaAlmacen.CargarFrentes;
      frmSalidaAlmacen.tsNumeroOrden.ItemIndex := frmSalidaAlmacen.tsNumeroOrden.Items.IndexOf(FrentT);
      frmSalidaAlmacen.tsNumeroOrden.SetFocus;
    Except
    end;

    try
      frmEmpleadosGuardias.zqryProyectos.Refresh;
    Except
    end;

  desactivapop(popupprincipal);
  grid_ordenes.Enabled         := true;


  //Una vez que se inserta el registro, debe de cerrar la ventana y poner el dato en el formulario de Egresos, si es que
  //ese formulario esta abierto
  if (Assigned(frm_Egresos)) and (frm_Egresos.abierto = True) then
   begin
       frm_Egresos.qryOrdenesTrabajo.Refresh;
       frm_Egresos.tsidOrdenDeTrabajo.KeyValue := OrdenesDeTrabajo.FieldValues['sNumeroOrden'];
       frm_Egresos.tsidOrdenDeTrabajo.SetFocus;
       Close;
   end;

   if (Assigned(frm_Gastos) and (frm_Gastos.abierto = True)) then
   begin
     frm_Gastos.zQOrdenesDeTrabajo.Refresh;
     frm_Gastos.tsNumeroOrden.KeyValue := OrdenesDeTrabajo.FieldValues['sNumeroOrden'];
     frm_Gastos.tsNumeroOrden.SetFocus;
     Close;
   end;
end;

procedure TfrmOrdenes.frmBarra1btnCancelClick(Sender: TObject);
begin
  try
    frmBarra1.btnCancelClick(Sender);
    global_movimiento := '';
    desactivapop(popupprincipal);
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    OrdenesdeTrabajo.Cancel ;
    BotonPermiso.permisosBotones(frmBarra1);
    frmbarra1.btnPrinter.Enabled := False;

    //ActivarDesactivar_Botones(dxBarManager1, OrdenesdeTrabajo);
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al cancelar', 0);
    end;
  end;
 grid_ordenes.Enabled:=true;
end;

//soad -> Validaciones para no eliminar Frente si existen reportes o anexos, otros datos.
//*************************************************************************************
procedure TfrmOrdenes.frmBarra1btnDeleteClick(Sender: TObject);
var
  cadena, mov: string;
  qry : TZReadOnlyQuery;
begin
  qry := TZReadOnlyQuery.Create(Self);
  qry.Active:=false;
  qry.Connection := connection.zConnection;
  qry.SQL.Clear;
  qry.SQl.Add('select sIdUsuario from ordenesxusuario where '+
    ' sContrato = :contrato and sNumeroOrden = :orden '+
    ' and sIdUsuario <> :usuario limit 1');

  if OrdenesdeTrabajo.RecordCount > 0 then
  begin
    if MessageDlg('Desea eliminar el Registro Activo?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if not posibleBorrar(OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString) then
      begin
        MessageDlg('No es posible eliminar el registro, existen registros dependientes.', mtInformation, [mbOk], 0);
        exit;
      end;

      qry.Params.ParamByName('contrato').Value := global_contrato;
      qry.Params.ParamByName('orden').Value    := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
      qry.Params.ParamByName('usuario').Value  := global_usuario;
      qry.Open;

      if qry.RecordCount > 0 then
      begin
        if MessageDlg('Existen usuarios que tienen asignado el Sitio, '+
        ' Realmente desea realizar esta operacion?.', mtInformation, [mbYes,mbNo], 0) = mrNo then
        begin
          exit;
        end;
      end;
      qry.Destroy;
      cadena := '';
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select * from reportediario Where sContrato = :Contrato and sNumeroOrden =:Orden limit 1');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        cadena := 'Reportes Diarios';
       //Programa de de Trabajo..
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select * from actividadesxorden Where sContrato = :Contrato and sNumeroOrden =:Orden limit 1');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Orden').Value := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
      connection.qryBusca.Open;
      if connection.qryBusca.RecordCount > 0 then
        cadena := cadena + ', Programas de Trabajo';

      if cadena <> '' then
        MessageDlg('No se puede eliminar el Sitio de Trabajo ' + OrdenesdeTrabajo.FieldValues['sNumeroOrden'] + '. Existen Datos: ' + cadena, mtInformation, [mbOk], 0)
      else
      begin

        //Llamada a funcion Buscar Frente en la Base de Datos..
        connection.zConnection.StartTransaction;
        opcion := 'borrar';
        FrentT := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
        //Kardex('Sitios de Trabajo', 'Borra Sitios de Trabajo', FrentT, 'Sitios de Trabajo', '', '', '');
        BuscaFrente(FrentT, opcion);
        global_movimiento := 'Eliminó';
        mov:= 'Se realizó la eliminación del Sitio de Trabajo No. [' + OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString + ']';
        OrdenesdeTrabajo.Delete;
        kardex_almacen(mov, global_movimiento);
        if global_frmActivo = 'frm_pedidos' then
          frmPedidos.zqOrdenes.Refresh ;

        if (global_frmActivo = 'frm_requisicionPerf') then
          frmRequisicionPerf.tsNumeroOrden.Refresh;
        connection.zConnection.Commit;
      end;
    end
  end;
end;

procedure TfrmOrdenes.frmBarra1btnRefreshClick(Sender: TObject);
begin
  try
    OrdenesdeTrabajo.Active ;
    OrdenesdeTrabajo.Open ;
    Plataformas.Active := False ;
    Plataformas.Open ;
    Pernoctan.Active := False ;
    Pernoctan.Open ;
    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;
    Estatus.Active := False ;
    Estatus.Open ;
    TiposdeOrden.Active := False ;
    TiposdeOrden.Open ;
    Estatus.Active := False ;
    Estatus.Open ;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al actualizar grid', 0);
    end;
  end;
end;

procedure TfrmOrdenes.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmOrdenes.grid_ordenesEnter(Sender: TObject);
begin
 If dxInsertar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date  := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    if Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] = 'Si' then
      lMostrarAvancesP.ItemIndex := 0
    else
      lMostrarAvancesP.ItemIndex := 1 ;
  end
end;

procedure TfrmOrdenes.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmOrdenes.OrdenesdeTrabajoBeforePost(DataSet: TDataSet);
begin
  //Procedimiento para no ingresar numero negativos
  PCAbsoluto(OrdenesdeTrabajo,'iJornada');
  PCAbsoluto(OrdenesdeTrabajo,'iConsecutivo');
  PCAbsoluto(OrdenesdeTrabajo,'iConsecutivoTierra');
end;

procedure TfrmOrdenes.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmOrdenes.OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmOrdenes.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0));
end;

procedure TfrmOrdenes.pgConfiguracionShow(Sender: TObject);
begin
     if Global_Optativa = 'OPTATIVA' then
        iDecimales.Enabled := True;
end;

procedure TfrmOrdenes.RxDBCalcEdit1Exit(Sender: TObject);
begin

    if iDecimales.Value > 8 then
     begin
          messageDLG('El numero de Digitos es mayor al maximo Permitido!', mtWarning, [mbOk], 0);
          rxdbcalcedit1.SetFocus;
     end;

     if iDecimales.Value < 0 then
     begin
          messageDLG('El numero de Digitos es menor al minimo Permitido!', mtWarning, [mbOk], 0);
          rxdbcalcedit1.SetFocus;
     end;
end;

procedure TfrmOrdenes.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmOrdenes.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  If dxCancelar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    if Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] = 'Si' then
      lMostrarAvancesP.ItemIndex := 0
    else lMostrarAvancesP.ItemIndex := 1 ;
  end;

  if (progreso.Visible = True) and (memDatos.Visible = True)then
  begin
    progreso.Visible := False;
    memDatos.Visible := False;
    lblDetalles.Visible := False;
  end;
  if progreso2.Visible = True then progreso2.Visible := False;

  //Mostrar En el Combo EmostrarGuardia conforme se elija en el grid
  if (OrdenesdeTrabajo.FieldByName('eMostrarGuardia').AsString = 'Si') then
  begin
    cbbEMostrarGuardia.ItemIndex := 0;
  end
  else
  begin
    cbbEMostrarGuardia.ItemIndex := 1;
  end;
end;

procedure TfrmOrdenes.cxgrdbtblvwGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If dxInsertar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    lMostrarAvancesP.Text :=  Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] ;
  end
end;

procedure TfrmOrdenes.cxgrdbtblvwGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If dxCancelar.Enabled = True then dxCancelar.Click ;
  If Ordenesdetrabajo.RecordCount > 0 then
  begin
    tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
    tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
    lMostrarAvancesP.Text :=  Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] ;
  end
end;

function TfrmOrdenes.tablasDependientes(idOrig: string): boolean;
var
  ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesSET:=TStringList.Create;ParamValuesSET:=TStringList.Create;ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesSET.Add('sNumeroOrden');ParamValuesSET.Add(OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString);
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
  if not UnitTablasImpactadas.impactar('ordenesdetrabajo',ParamNamesSET,ParamValuesSET,ParamNamesWHERE,ParamValuesWHERE) then
  begin
    result := false;
    showmessage('Ocurrio un error al actualizar las tablas dependientes: ' + UnitTablasImpactadas.xError);
  end
end;

function TfrmOrdenes.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('ordenesdetrabajo',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmOrdenes.tsIdFolioKeyPress(Sender: TObject; var Key: Char);
begin

end;

//soad -> Funcion para eliminar todos los registros de un Frente de Trabajo
//asi como para actualizarlos o cambiar el nombre a un frente...
//*************************************************************************
procedure TfrmOrdenes.BuscaFrente(Frente: string; accion :string);
var
base, tabla, campo, cad : string;
datos : array[ 1..100 ] of String;
i,x  : Integer;
begin
     connection.qryBusca.Active := False ;
     connection.qryBusca.SQL.Clear ;
     connection.qryBusca.SQL.Add('Show tables') ;
     connection.qryBusca.Open ;
     base := 'Tables_in_'+global_db;
     i := 1;
     while not connection.QryBusca.Eof do
     begin
         tabla :=  connection.QryBusca.FieldValues[base];
         connection.qryBusca2.Active := False ;
         connection.qryBusca2.SQL.Clear ;
         connection.qryBusca2.SQL.Add('describe '+tabla+' ');
         connection.qryBusca2.Open ;

         if connection.QryBusca2.RecordCount > 0 then
         begin
             while not connection.QryBusca2.Eof do
             begin
                 if connection.QryBusca2.FieldValues['Field'] = 'sNumeroOrden' then
                 begin
                     if tabla <> 'ordenesdetrabajo' then
                     begin
                         datos[i] := tabla;
                         i:= i + 1;
                     end;
                 end;
                 connection.QryBusca2.Next;
             end;
         end;
         connection.QryBusca.Next;
     end;
     progreso.Visible  := True;
     memDatos.Visible  := True;
     lblDetalles.Visible := True;
     memDatos.Text     := '';
     progreso.Properties.Min      := 1;
     progreso.Position := 1;
     progreso.Properties.Max      := i;
     //Elimina todos los registros...
     if accion = 'borrar' then
     begin
         for x := 1 to i - 1 do
         begin
             tabla := datos[x];
             //tablas contabilidad con SnumeroOrden
             if (tabla = 'guardias') OR (tabla = 'con_configuracion') OR (tabla = 'con_cuentasxpagar') OR (tabla = 'con_tesoreriaegresos') OR (tabla = 'con_tesoreriaegresos_v1') then
             begin
                 connection.qryBusca.Active := False ;
                 connection.qryBusca.SQL.Clear ;
                 connection.qryBusca.SQL.Add('delete from ' +tabla+ ' where sNumeroOrden =:Frente ');
                 connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
                 connection.qryBusca.Params.ParamByName('Frente').Value      := Frente;
                 connection.qryBusca.ExecSQL ;
             end
             else
             begin
                 connection.qryBusca.Active := False ;
                 connection.qryBusca.SQL.Clear ;
                 connection.qryBusca.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Frente ');
                 connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
                 connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
                 connection.qryBusca.Params.ParamByName('Frente').Value      := Frente;
                 connection.qryBusca.ExecSQL ;
             end;

             memDatos.Lines.Add (' Tabla:  '+tabla+' ... DELETE OK');
             progreso.Position := progreso.Position + x;
         end;
     end;
     // Actualiza todos los registros..
     if accion = 'actualizar' then
     begin
         for x := 1 to i -1 do
         begin
             tabla := datos[x];
             connection.qryBusca.Active := False ;
             connection.qryBusca.SQL.Clear ;
             connection.qryBusca.SQL.Add('update ' +tabla+ ' set sNumeroOrden = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente ');
             connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca.Params.ParamByName('Nuevo').Value       := tsNumeroOrden.Text;
             connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca.Params.ParamByName('Frente').Value      := Frente;
             connection.qryBusca.ExecSQL ;

             memDatos.Lines.Add (' Tabla:  '+tabla+' ... UPDATE OK');
             progreso.Position := progreso.Position + x;
         end;
         ActualizaReporte(tsNumeroOrden.Text, false);
     end;
     messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
end;

//soad -> Funcion para actualizar todos los consecutivos de los Reportes Diarios...
//*********************************************************************************
procedure TfrmOrdenes.ActualizaReporte(sFrente: string; valor :boolean);
var cad, reporte : string;
var i, x, j : integer;
begin
     //Busqueda de los reportes diarios para cambiar el numero de reporte...
     connection.qryBusca.Active := False ;
     connection.qryBusca.SQL.Clear ;
     connection.qryBusca.SQL.Add('select sNumeroReporte from reportediario where sContrato = :Contrato and sNumeroOrden =:Frente ');
     connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
     connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
     connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
     connection.qryBusca.Params.ParamByName('Frente').Value      := sFrente;
     connection.qryBusca.Open;

     if connection.QryBusca.RecordCount > 0 then
     begin
         progreso2.Visible  := True;
         progreso2.Properties.Min      := 1;
         progreso2.Position := 1;
         progreso2.Properties.Max      := connection.QryBusca.RecordCount + 1;
         while not connection.QryBusca.Eof do
         begin
             //Se Forma la Cadena cuando se cambia el nombre de frente...
             i   := length(connection.QryBusca.FieldValues['sNumeroReporte']);
             cad := copy(connection.QryBusca.FieldValues['sNumeroReporte'],(i+1)-3,3);
             if  valor = true then
                 reporte := tsFormato.Text + cad
             else
                 reporte := sFrente + '-'+ cad;

             //Actualizacion del reporte diario..
             connection.qryBusca2.Active := False ;
             connection.qryBusca2.SQL.Clear ;
             connection.qryBusca2.SQL.Add('update reportediario set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Numero').Value      := connection.QryBusca.FieldValues['sNumeroReporte'];
             connection.qryBusca2.ExecSQL ;

             //Actualizacion del FOTOGRAFIAS.. 22 Frebrero de 2011..
             connection.qryBusca2.Active := False ;
             connection.qryBusca2.SQL.Clear ;
             connection.qryBusca2.SQL.Add('update reportefotografico set  sNumeroReporte = :Nuevo where sContrato = :Contrato and sNumeroOrden =:Frente and sNumeroReporte = :Numero');
             connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca2.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca2.Params.ParamByName('Nuevo').DataType    := ftString ;
             connection.qryBusca2.Params.ParamByName('Nuevo').Value       := reporte;
             connection.qryBusca2.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Frente').Value      := sFrente;
             connection.qryBusca2.Params.ParamByName('Numero').DataType   := ftString ;
             connection.qryBusca2.Params.ParamByName('Numero').Value      := connection.QryBusca.FieldValues['sNumeroReporte'];
             connection.qryBusca2.ExecSQL ;

             progreso2.Position := progreso2.Position + 1;
             connection.QryBusca.Next;
         end;
         if valor = True then
            messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
     end
     else
        if valor = True then
           messageDLG('No se encontraron Reportes Diarios con el Formato Anterior',mtInformation, [mbOK], 0);

end;

procedure TfrmOrdenes.AsginaFrenteUsuario(dParamFrente: string);
begin
    //Ahora buscamos los usuarios que tengan habilitada la opcion de asignar Frentes en autoo..
    connection.QryBusca2.Active := False ;
    connection.QryBusca2.SQL.Clear ;
    connection.QryBusca2.SQL.Add('select sIdUsuario from usuarios where lAsignaFrentes = "Si"');
    connection.QryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
        while not connection.QryBusca2.Eof do
        begin
            try
               //Se inserta el nuevo frente de trabajo a los usuarios...
               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zcommand.SQL.Add ( 'INSERT INTO ordenesxusuario ( sIdUsuario, sContrato, sNumeroOrden, sDerechos) VALUES ' +
                                             '(:usuario, :contrato, :Orden, "LECTURA")') ;
               connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
               connection.zCommand.Params.ParamByName('contrato').value    := global_contrato ;
               connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
               connection.zCommand.Params.ParamByName('Orden').value       := dParamFrente ;
               connection.zCommand.Params.ParamByName('Usuario').DataType  := ftString ;
               connection.zCommand.Params.ParamByName('Usuario').value     := connection.QryBusca2.FieldValues['sIdUsuario'] ;
               connection.zCommand.ExecSQL ;
            Except

            end;
            connection.QryBusca2.Next;
        end;
    end;
end;

procedure TfrmOrdenes.btn1Click(Sender: TObject);
begin
  global_frmActivo := 'frm_ordenes';
  Application.CreateForm(Tfrm_Companias, frm_Companias);

  frm_Companias.FormStyle := fsMDIForm;
  frm_Companias.Width := 800;
  frm_Companias.Height := 600;
  frm_Companias.Position := poDesktopCenter;
  frm_Companias.Visible := False;

  frm_Companias.ShowModal;
end;

procedure TfrmOrdenes.btn2Click(Sender: TObject);
begin
  global_frmActivo := 'frm_ordenes';
  Application.CreateForm(Tfrm_CatalogoCuentas, frm_CatalogoCuentas);

  frm_CatalogoCuentas.FormStyle := fsMDIForm;
  frm_CatalogoCuentas.Width := 800;
  frm_CatalogoCuentas.Height := 600;
  frm_CatalogoCuentas.Position := poDesktopCenter;
  frm_CatalogoCuentas.Visible := False;

  frm_CatalogoCuentas.ShowModal;
end;

procedure TfrmOrdenes.btnPernoctaClick(Sender: TObject);
begin
    global_frmActivo := 'frm_ordenes';
    Application.CreateForm(TfrmPernoctan, frmPernoctan);
    frmPernoctan.show
end;

procedure TfrmOrdenes.btnPlataformasClick(Sender: TObject);
begin
    global_frmActivo := 'frm_ordenes';
    Application.CreateForm(TfrmPlataformas, frmPlataformas);
    frmPlataformas.show
end;

procedure TfrmOrdenes.InsertarValores;
begin
  OrdenesdeTrabajo.FieldValues [ 'sContrato' ]  := Global_Contrato ;
  OrdenesdeTrabajo.FieldValues['dFiProgramado'] := Date ;
  OrdenesdeTrabajo.FieldValues['dFfProgramado'] := Date ;
  OrdenesdeTrabajo.FieldValues['sIdPlataforma'] := sPlataforma ;
  OrdenesdeTrabajo.FieldValues['sIdPernocta'] := sPernocta ;
  OrdenesdeTrabajo.FieldValues['sIdTipoOrden'] := 'I' ;
  OrdenesdeTrabajo.FieldValues['sIdFolio'] := '' ;
  OrdenesdeTrabajo.FieldValues ['sFormato' ] := '' ;
  OrdenesdeTrabajo.FieldValues ['iJornada' ] := 0 ;
  OrdenesdeTrabajo.FieldValues ['iConsecutivo' ] := 1 ;
  OrdenesdeTrabajo.FieldValues ['iConsecutivoTierra' ] := 0 ;
  OrdenesdeTrabajo.FieldValues ['mComentarios' ] := '*' ;
  OrdenesdeTrabajo.FieldValues ['sDescripcionCorta' ] := '*' ;
  OrdenesdeTrabajo.FieldValues ['lGeneraAnexo' ] := 'No' ;
  OrdenesdeTrabajo.FieldValues ['lGeneraConsumibles' ] := 'No' ;
  OrdenesdeTrabajo.FieldValues ['lGeneraPersonal' ] := 'No' ;
  OrdenesdeTrabajo.FieldValues ['lGeneraEquipo' ] := 'No' ;
  OrdenesdeTrabajo.FieldValues ['sApoyo' ] := 'Cuadrillas' ;
  OrdenesdeTrabajo.FieldValues ['bAvanceFrente' ]   := 'Si' ;
  OrdenesdeTrabajo.FieldValues ['bAvanceContrato' ] := 'Si' ;
  OrdenesdeTrabajo.FieldValues ['bComentarios' ]    := 'Si' ;
  OrdenesdeTrabajo.FieldValues ['bPermisos' ]       := 'Si' ;
  OrdenesdeTrabajo.FieldValues ['sTipoPrograma' ]   := 'Programacion de Anexo' ;
  OrdenesdeTrabajo.FieldValues ['bTipoAdmon' ]      := 'No' ;
  OrdenesdeTrabajo.FieldValues ['sTipoImpresionActividad' ] := 'No' ;
  OrdenesdeTrabajo.FieldValues ['sTipoAvanceAdmon' ] := 'No' ;
  OrdenesdeTrabajo.FieldValues ['bCostaFuera']       :=  'Si';
  OrdenesdeTrabajo.FieldValues ['iDecimales' ]       :=  4;
  OrdenesdeTrabajo.FieldValues ['eMostrarGuardia']       :=  cbbEMostrarGuardia.Text;
  OrdenesdeTrabajo.FieldValues ['iNiveles' ]         :=  1;
  OrdenesdeTrabajo.FieldValues ['lImprimeProgramado']:=  'Si';
  OrdenesdeTrabajo.FieldValues ['lImprimeFisico']    :=  'Si';
  OrdenesdeTrabajo.FieldValues ['lImprimePlaticas']  :=  'Si';
  OrdenesdeTrabajo.FieldValues ['bCostaFuera']       :=  'Si';
  OrdenesdeTrabajo.FieldValues ['sPedidoAsociado']       :=  '*';
  OrdenesdeTrabajo.FieldValues ['sOficioAutorizacion']       :=  '*';
  OrdenesdeTrabajo.FieldValues ['mDescripcion']       :=  '*';
  OrdenesdeTrabajo.FieldValues ['lMostrarPartidasReportes']     := 'Actuales';
  OrdenesdeTrabajo.FieldValues ['lMostrarPartidasGeneradores']  := 'Actuales';
end;
end.
