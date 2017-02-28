unit frm_ordenesctrlobra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, global, db, frm_connection, frm_barra, ComCtrls,
  DBCtrls, StdCtrls, Mask, Menus, ADODB,  RXDBCtrl, ZDataset, utilerias,
  ZAbstractRODataset, ZAbstractDataset, rxToolEdit, Newpanel,unitValidacion,
  sPageControl, rxCurrEdit, ExtCtrls, unitexcepciones, udbgrid,UnitValidaTexto,
  UnitTablasImpactadas, unitactivapop, DBDateTimePicker, Buttons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TfrmOrdenesCtrlObra = class(TForm)
    frmBarra1: TfrmBarra;
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
    OrdenesdeTrabajolImprimePersonalTM: TStringField;
    OrdenesdeTrabajolPersonalxPartida: TStringField;
    OrdenesdeTrabajolImprimeFases: TStringField;
    trinomio: TZQuery;
    trinomiosContrato: TStringField;
    trinomiosInstalacion: TStringField;
    trinomiosFondo: TStringField;
    trinomiosPosicionFinanciera: TStringField;
    trinomiosCentroGestorEjecutor: TStringField;
    trinomiosCuentaMayor: TStringField;
    trinomiosElementoPep: TStringField;
    trinomiolVigente: TStringField;
    trinomiosUtilizacionFondo: TStringField;
    trinomiosCosto: TStringField;
    trinomiosBeneficio: TStringField;
    trinomiosActividad: TStringField;
    OrdenesdeTrabajolImprimePartidaNotaPU: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    tNewGroupBox1: tNewGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    lblDetalles: TLabel;
    Label26: TLabel;
    tsNumeroOrden: TDBEdit;
    tsOficioAutorizacion: TDBEdit;
    tsIdFolio: TDBEdit;
    tsDescripcionCorta: TDBEdit;
    tsIdTipoOrden: TDBLookupComboBox;
    tmComentarios: TDBMemo;
    tcIdStatus: TDBLookupComboBox;
    tsIdPernocta: TDBLookupComboBox;
    tsApoyo: TDBComboBox;
    tsIdPlataforma: TDBLookupComboBox;
    tmDescripcion: TDBMemo;
    lMostrarAvancesP: TComboBox;
    gpIndividual: tNewGroupBox;
    Label11: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    tsFormato: TDBEdit;
    tiJornada: TDBEdit;
    tiConsecutivo: TDBEdit;
    tiConsecutivoTierra: TDBEdit;
    progreso2: TProgressBar;
    Progreso: TProgressBar;
    memDatos: TDBMemo;
    tNewGroupBox2: tNewGroupBox;
    sPageControl1: TsPageControl;
    pgContenido: TsTabSheet;
    ChkReal: TDBCheckBox;
    ChkProg: TDBCheckBox;
    chkComent: TDBCheckBox;
    ChkPermiso: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    pgConfiguracion: TsTabSheet;
    Label18: TLabel;
    Label19: TLabel;
    ChkCostaFuera: TDBCheckBox;
    chkImprimeAct: TDBCheckBox;
    iDecimales: TRxDBCalcEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    ChkAvReal: TDBCheckBox;
    pgImpresion: TsTabSheet;
    ChkImprimeProgramado: TDBCheckBox;
    ChkImprimeFisico: TDBCheckBox;
    ChkImprimePlaticas: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    chkImprimePartNotaPU: TDBCheckBox;
    chkImprimFases: TDBCheckBox;
    pgHistorialPartidas: TsTabSheet;
    Panel1: TPanel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    ChkMostrarPartidasReportes: TDBCheckBox;
    TFechaIniPReportes: TDBDateEdit;
    TFechaFinPReportes: TDBDateEdit;
    Panel2: TPanel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    TFechaIniGeneradores: TDBDateEdit;
    TFechaFinGeneradores: TDBDateEdit;
    DBCheckBox2: TDBCheckBox;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    btnPlataformas: TBitBtn;
    btnPernocta: TBitBtn;
    lblEMostrarGuardia: TLabel;
    OrdenesdeTrabajoeMostrarGuardia: TStringField;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_ordenes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    Grid_coloficio: TcxGridDBColumn;
    cbbEMostrarGuard: TcxDBComboBox;
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure torden_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tsApoyoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPernoctaKeyPress(Sender: TObject; var Key: Char);
    procedure tcIdStatusKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_ordenesEnter(Sender: TObject);
    procedure grid_ordenesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ordenesCellClick(Column: TColumn);
    procedure tsIdTipoOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tsIdTipoOrdenEnter(Sender: TObject);
    procedure tsIdTipoOrdenExit(Sender: TObject);
    procedure tsApoyoEnter(Sender: TObject);
    procedure tsApoyoExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tsIdPlataformaEnter(Sender: TObject);
    procedure tsIdPlataformaExit(Sender: TObject);
    procedure tsIdPernoctaEnter(Sender: TObject);
    procedure tsIdPernoctaExit(Sender: TObject);
    procedure tcIdStatusEnter(Sender: TObject);
    procedure tcIdStatusExit(Sender: TObject);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tsFormatoKeyPress(Sender: TObject; var Key: Char);
    procedure tsFormatoEnter(Sender: TObject);
    procedure tsFormatoExit(Sender: TObject);
    procedure tsDescripcionCortaEnter(Sender: TObject);
    procedure tsDescripcionCortaExit(Sender: TObject);
    procedure tsDescripcionCortaKeyPress(Sender: TObject; var Key: Char);
    procedure tiJornadaEnter(Sender: TObject);
    procedure tiJornadaExit(Sender: TObject);
    procedure tiJornadaKeyPress(Sender: TObject; var Key: Char);
    procedure tiConsecutivoEnter(Sender: TObject);
    procedure tiConsecutivoExit(Sender: TObject);
    procedure tiConsecutivoKeyPress(Sender: TObject; var Key: Char);
    procedure tiConsecutivoTierraEnter(Sender: TObject);
    procedure tiConsecutivoTierraExit(Sender: TObject);
    procedure tiConsecutivoTierraKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFolioEnter(Sender: TObject);
    procedure tsIdFolioExit(Sender: TObject);
    procedure tsIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tsOficioAutorizacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsOficioAutorizacionEnter(Sender: TObject);
    procedure tsOficioAutorizacionExit(Sender: TObject);
    procedure BuscaFrente(Frente: string; accion: string);
    procedure ActualizaReporte(sFrente: string; valor: boolean);
    procedure AsginaFrenteUsuario(dParamFrente: string);
    procedure pgConfiguracionShow(Sender: TObject);
    procedure iDecimalesExit(Sender: TObject);
    procedure iDecimalesChange(Sender: TObject);
    procedure grid_ordenesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_ordenesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_ordenesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure RxDBCalcEdit1Enter(Sender: TObject);
    procedure RxDBCalcEdit1Exit(Sender: TObject);
    procedure iDecimalesEnter(Sender: TObject);
    procedure TFechaIniPReportesEnter(Sender: TObject);
    procedure TFechaIniPReportesExit(Sender: TObject);
    procedure TFechaIniPReportesKeyPress(Sender: TObject; var Key: Char);
    procedure TFechaFinPReportesKeyPress(Sender: TObject; var Key: Char);
    procedure TFechaIniGeneradoresKeyPress(Sender: TObject; var Key: Char);
    procedure TFechaFinPReportesEnter(Sender: TObject);
    procedure TFechaFinPReportesExit(Sender: TObject);
    procedure TFechaIniGeneradoresEnter(Sender: TObject);
    procedure TFechaIniGeneradoresExit(Sender: TObject);
    procedure TFechaFinGeneradoresEnter(Sender: TObject);
    procedure TFechaFinGeneradoresExit(Sender: TObject);
    function tablasDependientes(idOrig: string): boolean;
    function posibleBorrar(idOrig: string): boolean;
    procedure tdFechaFinalChange(Sender: TObject);
    procedure OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiJornadaSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
      const Text: string);
    procedure OrdenesdeTrabajoBeforePost(DataSet: TDataSet);
    procedure tiJornadaChange(Sender: TObject);
    procedure tiConsecutivoChange(Sender: TObject);
    procedure tiConsecutivoTierraChange(Sender: TObject);
    procedure RxDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit1Change(Sender: TObject);
    procedure btnPlataformasClick(Sender: TObject);
    procedure btnPernoctaClick(Sender: TObject);
    procedure tmDescripcionKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenesCtrlObra: TfrmOrdenesCtrlObra;
  Opcion, FrentT, formato :String ;
  sTipo, sPlataforma, sPernocta : String ;
 // utgrid:ticdbgrid;
  sIdOrig : string;
implementation

uses
    frm_trinomios,
    frm_pedidos,
    frm_requisicionPerf, frm_Pernoctan, frm_plataformas;

{$R *.dfm}

procedure TfrmOrdenesCtrlObra.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    tsIdFolio.SetFocus 
end;



procedure TfrmOrdenesCtrlObra.tsOficioAutorizacionEnter(Sender: TObject);
begin
    tsOficioAutorizacion.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsOficioAutorizacionExit(Sender: TObject);
begin
    tsOficioAutorizacion.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsOficioAutorizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tmDescripcion.SetFocus
end;

procedure TfrmOrdenesCtrlObra.torden_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsIdPlataforma.SetFocus
end;

procedure TfrmOrdenesCtrlObra.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdPernocta.SetFocus
end;


procedure TfrmOrdenesCtrlObra.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then
    tdFechaFinal.SetFocus
end;

procedure TfrmOrdenesCtrlObra.TFechaFinGeneradoresEnter(Sender: TObject);
begin
tfechafingeneradores.Color:=global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaFinGeneradoresExit(Sender: TObject);
begin
tfechafingeneradores.color:=global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaFinPReportesEnter(Sender: TObject);
begin
tfechafinpreportes.Color:=global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaFinPReportesExit(Sender: TObject);
begin
tfechafinpreportes.Color:=global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaFinPReportesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tfechainigeneradores.SetFocus
end;

procedure TfrmOrdenesCtrlObra.TFechaIniGeneradoresEnter(Sender: TObject);
begin
tfechainigeneradores.Color:=global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaIniGeneradoresExit(Sender: TObject);
begin
tfechainigeneradores.Color:=global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaIniGeneradoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tfechafingeneradores.SetFocus
end;

procedure TfrmOrdenesCtrlObra.TFechaIniPReportesEnter(Sender: TObject);
begin
tfechainipreportes.Color:=global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaIniPReportesExit(Sender: TObject);
begin
tfechainipreportes.Color:=global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.TFechaIniPReportesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tfechafinpreportes.SetFocus
end;

procedure TfrmOrdenesCtrlObra.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsIdPlataforma.SetFocus 
end;

procedure TfrmOrdenesCtrlObra.tsApoyoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tdFechaInicio.SetFocus 
end;

procedure TfrmOrdenesCtrlObra.tsIdPernoctaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tcIdStatus.SetFocus
end;

procedure TfrmOrdenesCtrlObra.tcIdStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key = #13 then
    tmcomentarios.SetFocus
end;


procedure TfrmOrdenesCtrlObra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   // utgrid.Destroy;
  //  ordenesdetrabajo.Cancel ;
    action := cafree ;
end;

procedure TfrmOrdenesCtrlObra.FormShow(Sender: TObject);
begin
   //cbbEMostrarGuardia.ItemIndex := 1;
    try
       //UtGrid:=TicdbGrid.create(grid_ordenes);
       OpcButton := '' ;
       sIdOrig := '';

       frmBarra1.btnCancel.Click ;
       OrdenesdeTrabajo.Active := False ;
       OrdenesdeTrabajo.SQL.Clear ;

       if (global_grupo = 'INTEL-CODE') Then
          OrdenesdeTrabajo.SQL.Add('Select * from ordenesdetrabajo where sContrato = :Contrato ' +
                                   'order by sNumeroOrden')
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

       OrdenesdeTrabajo.Open ;

       if (global_frmActivo = 'frm_pedidos') or
          (global_frmActivo = 'frm_requisicionPerf') then
          frmBarra1.btnAdd.Click;

       Plataformas.Active := False ;
       Plataformas.Open ;

       Pernoctan.Active := False ;
       Pernoctan.Open ;

       TiposdeOrden.Active := False ;
       TiposdeOrden.Open ;

       Estatus.Active := False ;
       Estatus.Open ;

       sTipo := '' ;
       sPlataforma := '' ;
       sPernocta := '' ;

       Connection.QryBusca.Active := false;
       Connection.QryBusca.SQL.Clear;
       Connection.QryBusca.SQL.Add('SELECT lHistorialPartidas FROM configuracion WHERE sContrato = :contrato');
       Connection.QryBusca.ParamByName('contrato').Value := global_contrato;
       Connection.QryBusca.Open;
       sPageControl1.Pages[3].TabVisible :=
       //Connection.QryBusca.FieldByName('lHistorialPartidas').AsString = 'Frente';
       false;
    except
    on e : exception do
    begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al iniciar formulario', 0);
    end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
end;

procedure TfrmOrdenesCtrlObra.grid_ordenesEnter(Sender: TObject);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

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

procedure TfrmOrdenesCtrlObra.grid_ordenesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
      lMostrarAvancesP.Text :=  Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] ;
  end
end;

procedure TfrmOrdenesCtrlObra.grid_ordenesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
      lMostrarAvancesP.Text :=  Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] ;
  end
end;

procedure TfrmOrdenesCtrlObra.grid_ordenesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmOrdenesCtrlObra.grid_ordenesMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmOrdenesCtrlObra.grid_ordenesTitleClick(Column: TColumn);
begin
//UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmOrdenesCtrlObra.iDecimalesChange(Sender: TObject);
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

procedure TfrmOrdenesCtrlObra.iDecimalesEnter(Sender: TObject);
begin
idecimales.Color:=global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.iDecimalesExit(Sender: TObject);
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
idecimales.Color:=global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.grid_ordenesCellClick(Column: TColumn);
begin
  If frmbarra1.btnCancel.Enabled = True then
      frmBarra1.btnCancel.Click ;

  If Ordenesdetrabajo.RecordCount > 0 then
  begin
      tdFechaInicio.Date := Ordenesdetrabajo.FieldValues['dFIProgramado'] ;
      tdFechaFinal.Date := Ordenesdetrabajo.FieldValues['dFFProgramado'] ;
      if Ordenesdetrabajo.FieldValues['lMostrarAvanceProgramado'] = 'Si' then
         lMostrarAvancesP.ItemIndex := 0
      else
         lMostrarAvancesP.ItemIndex := 1 ;
  end;

  if (progreso.Visible = True) and (memDatos.Visible = True)then
  begin
      progreso.Visible := False;
      memDatos.Visible := False;
      lblDetalles.Visible := False;
  end;
  if progreso2.Visible = True then
     progreso2.Visible := False;

  //Mostrar valor de eMostrarGuardia en el combo
//  if (OrdenesdeTrabajo.FieldByName('eMostrarGuardia').AsString = 'Si') then
//  begin
//    cbbEMostrarGuardia.ItemIndex := 0;
//  end
//  else
//  begin
//    cbbEMostrarGuardia.ItemIndex := 1;
//  end;
end;

procedure TfrmOrdenesCtrlObra.tsIdTipoOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsApoyo.SetFocus
end;

procedure TfrmOrdenesCtrlObra.frmBarra1btnAddClick(Sender: TObject);
begin
//activapop(frmOrdenesCtrlObra, popupprincipal);
  try
   Opcion := 'Nuevo';
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   lMostrarAvancesP.ItemIndex := 0;
   OrdenesdeTrabajo.Append ;
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
   //OrdenesdeTrabajo.FieldValues ['eMostrarGuardia']       :=  cbbEMostrarGuardia.Text;
   OrdenesdeTrabajo.FieldValues ['sTipoAvanceAdmon' ] := 'No' ;
   OrdenesdeTrabajo.FieldValues ['bCostaFuera']       :=  'Si';
   OrdenesdeTrabajo.FieldValues ['iDecimales' ]       :=  4;
   OrdenesdeTrabajo.FieldValues ['iNiveles' ]         :=  1;
   OrdenesdeTrabajo.FieldValues ['lImprimeProgramado']:=  'Si';
   OrdenesdeTrabajo.FieldValues ['lImprimeFisico']    :=  'Si';
   OrdenesdeTrabajo.FieldValues ['lImprimePlaticas']  :=  'Si';
   OrdenesdeTrabajo.FieldValues ['lImprimePartidaNotaPU'] :=  'No';
   OrdenesdeTrabajo.FieldValues ['bCostaFuera']       :=  'Si';
   OrdenesdeTrabajo.FieldValues ['lMostrarPartidasReportes']     := 'Actuales';
   OrdenesdeTrabajo.FieldValues ['lMostrarPartidasGeneradores']  := 'Actuales';
   If Not Connection.configuracion.FieldByName('cStatusProceso').IsNull then
       OrdenesdeTrabajo.FieldValues ['cIdStatus'] := connection.configuracion.FieldValues ['cStatusProceso'] ;
   tsNumeroOrden.SetFocus ;
  except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al agregar registro', 0);
  end;
  end;
  frmbarra1.btnPrinter.Enabled:=false;
  grid_ordenes.Enabled:=false;
end;

procedure TfrmOrdenesCtrlObra.frmBarra1btnEditClick(Sender: TObject);
begin
   //activapop(frmOrdenesCtrlObra, popupprincipal);
   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sIdOrig := OrdenesdeTrabajo.FieldByName('sNumeroOrden').AsString;
   try
       opcion  := 'actualizar';
       formato := OrdenesdeTrabajo.FieldValues['sFormato'];
       FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
       OrdenesdeTrabajo.Edit ;
   except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al editar registro', 0);
          frmBarra1.btnCancel.Click ;
      end;
   end ;
   tsNumeroOrden.SetFocus ;
   frmbarra1.btnPrinter.Enabled:=false;
  // grid_ordenes.Enabled:=false;
end;

procedure TfrmOrdenesCtrlObra.frmBarra1btnPostClick(Sender: TObject);
var
   cadena   : string;
   nombres,
   cadenas  : TStringList;
   lEdita   : boolean;
   indice   : integer;
begin
   OrdenesdeTrabajo.FieldValues ['dfiProgramado' ] :=tdFechaInicio.date;
   OrdenesdeTrabajo.FieldValues ['dffProgramado' ] :=tdFechaFinal.date;
   try
      If (OrdenesdeTrabajo.FieldValues ['sFormato' ] = Null) OR (OrdenesdeTrabajo.FieldValues ['sFormato' ] = '') Then
          OrdenesdeTrabajo.FieldValues ['sFormato' ] := OrdenesdeTrabajo.FieldValues ['sNumeroOrden' ] + '-' ;

      if lMostrarAvancesP.Text='' then
        OrdenesdeTrabajo.FieldValues ['lMostrarAvanceProgramado' ] :='No'
      else
      
      OrdenesdeTrabajo.FieldValues ['lMostrarAvanceProgramado' ] :=  lMostrarAvancesP.Text;
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
      nombres.Add('Frente de trabajo');nombres.Add('Folio');
      nombres.Add('Descripción Corta');nombres.Add('Oficio de Autorización');
      nombres.Add('Descripción');nombres.Add('tipo');
      nombres.Add('Apoyo');nombres.Add('Municipio/Plataforma');
      nombres.Add('Personal Pernocta en');nombres.Add('Status');

      cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsIdFolio.Text);
      cadenas.Add(tsDescripcionCorta.Text);cadenas.Add(tsOficioAutorizacion.Text);
      cadenas.Add(tmDescripcion.Text);cadenas.Add(tsIdTipoOrden.Text);
      cadenas.Add(tsApoyo.Text);cadenas.Add(tsIdPlataforma.Text);
      cadenas.Add(tsIdPernocta.Text);cadenas.Add(tcIdStatus.Text);

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
      If OrdenesdeTrabajo.State = dsEdit Then Begin
         Kardex('Frentes de Trabajo','Edita  Frente de Trabajo', tsNumeroOrden.Text, 'Frente de Trabajo', '', '', '' );
         //OrdenesdeTrabajo.FieldValues['eMostrarGuardia'] :=  cbbEMostrarGuardia.Text;
         lEdita := true;
      End
      Else Begin
         Kardex('Frentes de Trabajo','Crea   Frente de Trabajo', tsNumeroOrden.Text, 'Frente de Trabajo', '', '', '' );
         lEdita := false;
      End;

      if Opcion = 'Nuevo' then
      begin
         FrentT  := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
         OrdenesdeTrabajo.Post ;
         AsginaFrenteUsuario(FrentT);
         frmBarra1.btnPostClick(Sender);

           connection.QryBusca.Active := False;
      connection.QryBusca.SQL.clear;
      connection.QryBusca.SQL.Add('Insert into contrato_trinomio (sContrato, sInstalacion, sFondo, sPosicionFinanciera, sCentroGestorEjecutor, sCuentaMayor ) '+
                                  'values (:contrato, :instalacion, :fondo, "*", "*", "0")');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('instalacion').AsString := global_FrenteTrabajo;
      connection.QryBusca.ParamByName('fondo').AsString := '*';
      connection.QryBusca.ExecSQL;

         {if MessageDLG('¿Desea Crear el Centro Presupuestal para el Frente de Trabajo '+ FrentT +' ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         begin
              Global_OptGrafica := 'Frente';
              Application.CreateForm(TfrmTrinomios, frmTrinomios);
              frmTrinomios.show
         end }

      end
      else
      begin
            if FrentT <> tsNumeroOrden.Text then
            begin
               if MessageDlg('Si Modifica el Nombre del Frente de Trabajo, Todos los Datos Cambiaran al Nuevo, Desea Continuar?, ',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                  //Llamada a funcion Buscar Frente en la Base de Datos..
                  tsFormato.Text := tsNumeroOrden.Text;
                  OrdenesdeTrabajo.Post ;
                  tablasDependientes(sIdOrig);
                  frmBarra1.btnPostClick(Sender);
                  //BuscaFrente(FrentT, opcion);
                  ActualizaReporte(tsNumeroOrden.Text, false);
               end
               else
                  exit;
            end
            else
            begin
                 if formato <> tsFormato.Text then
                 begin
                     if MessageDLG('Si Modifica el Formato de Frente de Trabajo, Cambiara en Formato de los Reportes Diarios, Desea Continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     begin
                         //Lamada a Funcion para Actualizar el Consecutivo del Reporte Diario..
                         OrdenesdeTrabajo.Post ;
                         frmBarra1.btnPostClick(Sender);
                         ActualizaReporte(FrentT, true);
                     end
                     else
                         exit;
                end
                else
                begin
                    OrdenesdeTrabajo.Post ;
                    frmBarra1.btnPostClick(Sender);
                end;
            end;
       end;

       if global_frmActivo = 'frm_pedidos' then
       begin
           frmPedidos.zqOrdenes.Refresh ;
           frmPedidos.cbbFrentes.SetFocus;
       end;

       if global_frmActivo = 'frm_requisicionPerf' then
       begin
           frmRequisicionPerf.tsNumeroOrden.Items.Add(FrentT);
           frmRequisicionPerf.tsNumeroOrden.ItemIndex := frmRequisicionPerf.tsNumeroOrden.Items.IndexOf(FrentT);
           frmRequisicionPerf.tsNumeroOrden.SetFocus;
       end;

     except
        on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al salvar registro', 0);
            frmBarra1.btnCancel.Click ;
        end;
     end  ;

     //desactivapop(popupprincipal);
     frmbarra1.btnPrinter.Enabled := false;
     grid_ordenes.Enabled         := true;

     if (global_frmActivo = 'frm_pedidos') or (global_frmActivo = 'frm_requisicionPerf') then
     begin
         global_frmActivo := 'ninguno';
         frmbarra1.btnCancel.Click;
         frmbarra1.btnExit.Click
     end;       
end;

procedure TfrmOrdenesCtrlObra.frmBarra1btnCancelClick(Sender: TObject);
begin
 try
  //desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  OrdenesdeTrabajo.Cancel ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al cancelar', 0);
  end;
 end;
 frmbarra1.btnPrinter.Enabled:=false;
 //grid_ordenes.Enabled:=true;
end;

//soad -> Validaciones para no eliminar Frente si existen reportes o anexos, otros datos.
//*************************************************************************************
procedure TfrmOrdenesCtrlObra.frmBarra1btnDeleteClick(Sender: TObject);
var
  cadena: string;
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
        if MessageDlg('Existen usuarios que tienen asignado el frente, '+
        ' Realmente desea realizar esta operacion?.', mtInformation, [mbYes,mbNo], 0) = mrNo then
        begin
          exit;
        end;
      end;
      qry.Destroy;
//
//      try
         //Reportes diarios..
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
          MessageDlg('No se puede eliminar el Frente de Trabajo ' + OrdenesdeTrabajo.FieldValues['sNumeroOrden'] + '. Existen Datos: ' + cadena, mtInformation, [mbOk], 0)
        else
        begin

          //Llamada a funcion Buscar Frente en la Base de Datos..
          connection.zConnection.StartTransaction;
          opcion := 'borrar';
          FrentT := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
          Kardex('Frentes de Trabajo', 'Borra Frente de Trabajo', FrentT, 'Frente de Trabajo', '', '', '');
          BuscaFrente(FrentT, opcion);
          OrdenesdeTrabajo.Delete;

          if global_frmActivo = 'frm_pedidos' then
          begin
              frmPedidos.zqOrdenes.Refresh;
              frmPedidos.cbbFrentes.SetFocus;
          end;

          if (global_frmActivo = 'frm_requisicionPerf') then
          begin
              frmRequisicionPerf.tsNumeroOrden.Refresh;
              frmRequisicionPerf.tsNumeroOrden.SetFocus;
          end;
          connection.zConnection.Commit;
        end;
//      except
//        on e: exception do
//        begin
//          if Connection.zConnection.InTransaction then
//            Connection.zConnection.Rollback;
//          if Pos('REFERENCES', E.Message) > 0 then
//            MessageDlg('Error de referencias, hay modulos que ya estan usando ese Frente de Trabajo!.', mtError, [mbOk], 0)
//          else
//            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Frentes de Trabajo', 'Al eliminar registro', 0);
//        end;
//      end
    end
end;

procedure TfrmOrdenesCtrlObra.frmBarra1btnRefreshClick(Sender: TObject);
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
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_ordenes', 'Al actualizar grid', 0);
  end;
 end;
end;

procedure TfrmOrdenesCtrlObra.frmBarra1btnExitClick(Sender: TObject);
begin
   frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   Close
end;


procedure TfrmOrdenesCtrlObra.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.click
end;

procedure TfrmOrdenesCtrlObra.OrdenesdeTrabajoBeforePost(DataSet: TDataSet);
begin
//Procedimiento para no ingresar numero negativos
     PCAbsoluto(OrdenesdeTrabajo,'iJornada');
     PCAbsoluto(OrdenesdeTrabajo,'iConsecutivo');
     PCAbsoluto(OrdenesdeTrabajo,'iConsecutivoTierra');
end;

procedure TfrmOrdenesCtrlObra.OrdenesdeTrabajoiConsecutivoSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0)); 
end;

procedure TfrmOrdenesCtrlObra.OrdenesdeTrabajoiConsecutivoTierraSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0)); 
end;

procedure TfrmOrdenesCtrlObra.OrdenesdeTrabajoiJornadaSetText(Sender: TField;
  const Text: string);
begin
  sender.Value:=abs(StrToIntDef(text,0)); 
end;

procedure TfrmOrdenesCtrlObra.pgConfiguracionShow(Sender: TObject);
begin
     if Global_Optativa = 'OPTATIVA' then
        iDecimales.Enabled := True;
end;

procedure TfrmOrdenesCtrlObra.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmOrdenesCtrlObra.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure TfrmOrdenesCtrlObra.RxDBCalcEdit1Change(Sender: TObject);
begin
     TRxDBCalcEditChangef(RxDBCalcEdit1,'Setup No. Paquetes');
end;

procedure TfrmOrdenesCtrlObra.RxDBCalcEdit1Enter(Sender: TObject);
begin
rxdbcalcedit1.Color:=global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.RxDBCalcEdit1Exit(Sender: TObject);
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
     rxdbcalcedit1.Color:=global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.RxDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(RxDBCalcEdit1,key) then
      key:=#0;
end;

procedure TfrmOrdenesCtrlObra.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmOrdenesCtrlObra.Copy1Click(Sender: TObject);
begin
//UtGrid.CopyRowsToClip;
end;

procedure TfrmOrdenesCtrlObra.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure TfrmOrdenesCtrlObra.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure TfrmOrdenesCtrlObra.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure TfrmOrdenesCtrlObra.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tmDescripcionEnter(Sender: TObject);
begin
    tmDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tmDescripcionExit(Sender: TObject);
begin
    tmDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tmDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then
    tsIdTipoOrden.SetFocus
end;

procedure TfrmOrdenesCtrlObra.tsIdTipoOrdenEnter(Sender: TObject);
begin
    tsIdTipoOrden.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdTipoOrdenExit(Sender: TObject);
begin
    tsIdTipoOrden.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsApoyoEnter(Sender: TObject);
begin
    tsApoyo.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsApoyoExit(Sender: TObject);
begin
    tsApoyo.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tdFechaInicioEnter(Sender: TObject);
begin
    tdFechaInicio.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tdFechaInicioExit(Sender: TObject);
begin

    tdFechaInicio.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tdFechaFinalChange(Sender: TObject);
begin
//  tdFechaFinal.MinDate:=tdFechainicio.Date;
end;

procedure TfrmOrdenesCtrlObra.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tdFechaFinalExit(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdPlataformaEnter(Sender: TObject);
begin
    tsIdPlataforma.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdPlataformaExit(Sender: TObject);
begin
    tsIdPlataforma.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdPernoctaEnter(Sender: TObject);
begin
    tsIdPernocta.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdPernoctaExit(Sender: TObject);
begin
    tsIdPernocta.Color := global_color_salidaERP;
end;

function TfrmOrdenesCtrlObra.tablasDependientes(idOrig: string): boolean;
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

function TfrmOrdenesCtrlObra.posibleBorrar(idOrig: string): boolean;
var
  ParamNamesWHERE,ParamValuesWHERE: TStringList;
begin
  result := true;
  ParamNamesWHERE:=TStringList.Create;ParamValuesWHERE:=TStringList.Create;
  ParamNamesWHERE.Add('sContrato');ParamValuesWHERE.Add(global_contrato);
  ParamNamesWHERE.Add('sNumeroOrden');ParamValuesWHERE.Add(idOrig);
  result := not UnitTablasImpactadas.hayDependientes('ordenesdetrabajo',ParamNamesWHERE,ParamValuesWHERE);
end;

procedure TfrmOrdenesCtrlObra.tcIdStatusEnter(Sender: TObject);
begin
    tcIdStatus.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tcIdStatusExit(Sender: TObject);
begin
    tcIdStatus.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsFormatoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    tiJornada.SetFocus 
end;

procedure TfrmOrdenesCtrlObra.tsFormatoEnter(Sender: TObject);
begin
    tsFormato.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsFormatoExit(Sender: TObject);
begin
    tsFormato.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsDescripcionCortaEnter(Sender: TObject);
begin
    tsDescripcionCorta.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsDescripcionCortaExit(Sender: TObject);
begin
    tsDescripcionCorta.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsDescripcionCortaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsOficioAutorizacion.SetFocus
end;

procedure TfrmOrdenesCtrlObra.tiJornadaChange(Sender: TObject);
begin
  tdbeditchangei(tiJornada,'Jornada');
end;

procedure TfrmOrdenesCtrlObra.tiJornadaEnter(Sender: TObject);
begin
    tiJornada.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tiJornadaExit(Sender: TObject);
begin
    tiJornada.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tiJornadaKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTdbedit(tiJornada,key) then
      key:=#0;
  If Key = #13 Then
      tiConsecutivo.SetFocus 
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoChange(Sender: TObject);
begin
  tdbeditchangei(tiConsecutivo,'Consecutivo');
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoEnter(Sender: TObject);
begin
    tiConsecutivo.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoExit(Sender: TObject);
begin
    tiConsecutivo.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiConsecutivo,key) then
      key:=#0;
  If Key = #13 Then
      tiConsecutivoTierra.SetFocus
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoTierraChange(Sender: TObject);
begin
  tdbeditchangei(tiConsecutivoTierra,'Consecutivo en tierra');
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoTierraEnter(Sender: TObject);
begin
    tiConsecutivoTierra.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoTierraExit(Sender: TObject);
begin
    tiConsecutivoTierra.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tiConsecutivoTierraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tiConsecutivoTierra,key) then
      key:=#0;
  If Key = #13 Then
      tsFormato.SetFocus 
end;

procedure TfrmOrdenesCtrlObra.tsIdFolioEnter(Sender: TObject);
begin
    tsIdFolio.Color := global_color_entradaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdFolioExit(Sender: TObject);
begin
    tsIdFolio.Color := global_color_salidaERP;
end;

procedure TfrmOrdenesCtrlObra.tsIdFolioKeyPress(Sender: TObject; var Key: Char);
begin
  If key = #13 then
    tsDescripcionCorta.SetFocus
end;

//soad -> Funcion para eliminar todos los registros de un Frente de Trabajo
//asi como para actualizarlos o cambiar el nombre a un frente...
//*************************************************************************
procedure TfrmOrdenesCtrlObra.BuscaFrente(Frente: string; accion :string);
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
     progreso.Min      := 1;
     progreso.Position := 1;
     progreso.Max      := i;
     //Elimina todos los registros...
     if accion = 'borrar' then
     begin
         for x := 1 to i - 1 do
         begin
             tabla := datos[x];
             connection.qryBusca.Active := False ;
             connection.qryBusca.SQL.Clear ;
             connection.qryBusca.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Frente ');
             connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
             connection.qryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
             connection.qryBusca.Params.ParamByName('Frente').DataType   := ftString ;
             connection.qryBusca.Params.ParamByName('Frente').Value      := Frente;
             connection.qryBusca.ExecSQL ;

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
procedure TfrmOrdenesCtrlObra.ActualizaReporte(sFrente: string; valor :boolean);
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
         progreso2.Min      := 1;
         progreso2.Position := 1;
         progreso2.Max      := connection.QryBusca.RecordCount + 1;
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

procedure TfrmOrdenesCtrlObra.AsginaFrenteUsuario(dParamFrente: string);
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

procedure TfrmOrdenesCtrlObra.btnPernoctaClick(Sender: TObject);
begin
    global_frmActivo := 'frm_OrdenesCtrlObra';
    Application.CreateForm(TfrmPernoctan, frmPernoctan);
    frmPernoctan.show
end;

procedure TfrmOrdenesCtrlObra.btnPlataformasClick(Sender: TObject);
begin
    global_frmActivo := 'frm_OrdenesCtrlObra';
    Application.CreateForm(TfrmPlataformas, frmPlataformas);
    frmPlataformas.show
end;

end.
