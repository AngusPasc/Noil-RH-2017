unit frm_ReporteDiarioTurno;

interface

uses
  Windows, Messages, DateUtils, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, DB, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, Mask,
  frm_connection, Buttons, Utilerias, Global, Menus, OleCtrls, ExtCtrls,
  ShellApi, strUtils, frm_barra, Math, frxClass, frxDBSet, Jpeg, RxMemDS,
  RXDBCtrl, RXCtrls, ExtDlgs, ZAbstractRODataset, ZDataset, rxSpeedbar, UReporteDiarioMix, ZAbstractDataset, frm_ModificaDescripcion,
  masUtilerias,  UnitExcepciones, udbgrid, UnitTablasImpactadas, UnitTBotonesPermisos,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, UnitValidaTexto, DBDateTimePicker, Newpanel, NxCollection,
  JvExControls, JvLabel, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxButtons;
function IsDate(ADate: string): Boolean;
type
  TfrmDiarioTurno = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    frmBarra1: TfrmBarra;
    PgDiario: TPageControl;
    TabRDiario: TTabSheet;
    ds_reportediario: TDataSource;
    ds_turnos: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    tsNumeroReporte: TEdit;
    tsTiempo: TEdit;
    tsTransporte: TEdit;
    tsTema: TEdit;
    tsHoraInicio2: TMaskEdit;
    tsTiempoEfectivo: TMaskEdit;
    tsTiempoMuerto: TMaskEdit;
    tsInicioPlatica: TMaskEdit;
    tsFinalPlatica: TMaskEdit;
    Label11: TLabel;
    tsHoraFinal2: TMaskEdit;
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
    N4: TMenuItem;
    Salir1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N3: TMenuItem;
    TabFotografico: TTabSheet;
    Grid_Imagenes: TRxDBGrid;
    OpenPicture: TOpenPictureDialog;
    ds_ReporteFotografico: TDataSource;
    tsDescripcion: TMemo;
    btnGrabar: TBitBtn;
    btnEliminar: TBitBtn;
    lblError: TLabel;
    Label19: TLabel;
    tsTiempoMuertoContrato: TMaskEdit;
    btnExaminar: TBitBtn;
    btnEditar: TBitBtn;
    btnCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    btnSaveImage: TBitBtn;
    SaveImage: TSaveDialog;
    tsIdTurno: TDBLookupComboBox;
    Label13: TLabel;
    lblError2: TLabel;
    bkReporte: TMenuItem;
    ReporteFotografico: TZReadOnlyQuery;
    Turnos: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    MovimientosdePersonal: TZReadOnlyQuery;
    Platicas: TZReadOnlyQuery;
    QryBk: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    impAnalisis: TMenuItem;
    ReporteDiarioConsolidado1: TMenuItem;
    dsApoyo: TfrxDBDataset;
    ierra1: TMenuItem;
    Plataforma1: TMenuItem;
    ierraPlataforma1: TMenuItem;
    SoloFrente1: TMenuItem;
    ConsolidadodePersonal: TMenuItem;
    rDiario: TfrxReport;    ImprimirPersonalEqyHerramienta1: TMenuItem;
    QryReporteFotografico: TZQuery;
    PanelProgress: TPanel;    ProgressBar1: TProgressBar;    Label15: TLabel;    Label16: TLabel;    Label17: TLabel;    Label18: TLabel;    ChkPartidasAnteriores: TCheckBox;
    reporteHistorialRep: TfrxReport;
    ZHistorialRep: TZReadOnlyQuery;
    HistorialdeReprogramaciones1: TMenuItem;
    ZHistorialRepprimero: TStringField;
    ZHistorialRepinicio: TDateField;
    ZHistorialRepsIdConvenio: TStringField;
    ZHistorialRepsNumeroOrden: TStringField;
    ZHistorialRepultimo: TStringField;
    ZHistorialRepfinal: TDateField;
    ZHistorialRepsIdConvenio_1: TStringField;
    ZHistorialRepsNumeroOrden_1: TStringField;
    dsHistorialRep: TfrxDBDataset;
    tdIdFecha: TDBDateTimePicker;
    ImprimirReportedeVisita1: TMenuItem;
    btnUp: TBitBtn;
    btnDown: TBitBtn;
    Label20: TLabel;
    Label21: TLabel;
    Panel: TNxFlipPanel;
    mReporte: TMemo;
    tBuscar: TEdit;
    cmdAceptar: TButton;
    cmdCancelar: TButton;
    btnPreview: TBitBtn;
    CheckIncluye: TCheckBox;
    Label22: TLabel;
    btnComentarios: TBitBtn;
    GroupBox2: TGroupBox;
    chkInicio: TCheckBox;
    chkDesarrollo: TCheckBox;
    chkConclusion: TCheckBox;
    cbPartida: TDBLookupComboBox;
    Partidas: TZReadOnlyQuery;
    ds_partidas: TDataSource;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    JvLabel1: TJvLabel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    grid_reportes: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    pnl2: TPanel;
    pnl3: TPanel;
    ts1: TLabel;
    lblMigracion: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    PBMigracion: TProgressBar;
    pnl1: TPanel;
    btn6: TcxButton;
    btn2: TcxButton;
    btn5: TcxButton;
    btn1: TcxButton;
    btn4: TcxButton;
    btn3: TcxButton;
    btn7: TcxButton;

    function Tamanyo (Archivo : String): Real ;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddClick(Sender: TObject);
    procedure tsNumeroReporteKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraInicio2KeyPress(Sender: TObject; var Key: Char);
    procedure tsTiempoKeyPress(Sender: TObject; var Key: Char);
    procedure tsTransporteKeyPress(Sender: TObject; var Key: Char);
    procedure tsInicioPlaticaKeyPress(Sender: TObject; var Key: Char);
    procedure tsFinalPlaticaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinal2Exit(Sender: TObject);
    procedure tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsTemaKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroReporteEnter(Sender: TObject);
    procedure tsNumeroReporteExit(Sender: TObject);
    procedure tsTiempoEnter(Sender: TObject);
    procedure tsTiempoExit(Sender: TObject);
    procedure tsTransporteEnter(Sender: TObject);
    procedure tsTransporteExit(Sender: TObject);
    procedure tsInicioPlaticaEnter(Sender: TObject);
    procedure tsInicioPlaticaExit(Sender: TObject);
    procedure tsFinalPlaticaEnter(Sender: TObject);
    procedure tsFinalPlaticaExit(Sender: TObject);
    procedure tsTemaEnter(Sender: TObject);
    procedure tsTemaExit(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Grid_ReportesEnter(Sender: TObject);
    procedure DiarioGetValue(const VarName: String;
      var Value: Variant);
    procedure ReporteDiarioAfterScroll(DataSet: TDataSet);
    procedure tsIdTurnoEnter(Sender: TObject);
    procedure tsIdTurnoExit(Sender: TObject);
    procedure tsIdTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Cut2Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure btnExaminarClick(Sender: TObject);
    procedure ReporteFotograficoAfterScroll(DataSet: TDataSet);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure TabFotograficoShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure btnSaveImageClick(Sender: TObject);
    procedure Grid_ImagenesEnter(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure bkReporteClick(Sender: TObject);
    procedure impAnalisisClick(Sender: TObject);
    procedure ierraPlataforma1Click(Sender: TObject);
    procedure Plataforma1Click(Sender: TObject);
    procedure ierra1Click(Sender: TObject);
    procedure SoloFrente1Click(Sender: TObject);
    procedure ConsolidadodePersonalClick(Sender: TObject);    procedure ImprimirPersonalEqyHerramienta1Click(Sender: TObject);
    procedure HistorialdeReprogramaciones1Click(Sender: TObject);
    procedure DiarioDblClickObject(Sender: TfrxView; Button: TMouseButton;      Shift: TShiftState; var Modified: Boolean);
    procedure ImprimirReportedeVisita1Click(Sender: TObject);
    procedure OrdenarFotos(sParamOrden : string);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure btnComentariosClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure tBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure cbPartidaEnter(Sender: TObject);
    procedure cbPartidaExit(Sender: TObject);
    procedure chkInicioClick(Sender: TObject);
    procedure chkDesarrolloClick(Sender: TObject);
    procedure chkConclusionClick(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure Grid_ReportesCellClick(Column: TColumn);
    procedure PgDiarioChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ds_ordenesdetrabajoStateChange(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_1Enter(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);

  private
   sMenuP,sOrigContrato:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiarioTurno: TfrmDiarioTurno;
  sReporte : String ;
  iReporte : Integer ;
  lNuevoDia : Boolean ;
  dAvanceAnterior, dCantidadAnterior : Double ;
  dAvanceDiario, dAvanceAcumulado    : Double ;
  dPAnterior, dPDiario, dPAcumulado,
  dRAnterior, dRDiario, dRAcumulado : Real ;
  sArchivo      : String ;
  sOpcion       : String ;
  lIniciado     : Boolean ;
  SavePlace     : TBookmark;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
 
implementation

uses frm_inteligent, frm_bitacoraxalcance, frm_bitacoradepartamental_2, frm_entradaanex,
  frm_bitacora2, frm_jornadasdiarias, frm_EstimaInstalado, frm_bitacoraOptativa, UFunctionsGHH;

{$R *.dfm}

procedure TfrmDiarioTurno.FormShow(Sender: TObject);
begin
   sOrigContrato:=Global_Contrato;
   Jvlabel1.Visible := connection.contrato.FieldValues['sTipoObra'] = 'BARCO';
   ComboBox1.Visible := connection.contrato.FieldValues['sTipoObra'] = 'BARCO';
   GroupBox3.Visible := connection.contrato.FieldValues['sTipoObra'] = 'BARCO';
   if connection.contrato.FieldValues['sTipoObra'] = 'BARCO' then
    ComboBox1.OnChange(Sender);

   sMenuP:=stMenu;

   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);

   BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario');
   Connection.QryBusca.Active := false;
   Connection.QryBusca.SQL.Clear;
   Connection.QryBusca.SQL.Add('SELECT lHistorialPartidas FROM configuracion WHERE sContrato = :contrato');
   Connection.QryBusca.ParamByName('contrato').Value := global_contrato;
   Connection.QryBusca.Open;
   ChkPartidasAnteriores.Visible :=
   //Connection.QryBusca.FieldByName('lHistorialPartidas').AsString = 'Reporte';
   false;

  lIniciado := False ;
  PgDiario.ActivePageIndex := 0 ;
  Turnos.Active := False ;
  Turnos.Params.ParamByName('contrato').DataType := ftString ;
  Turnos.Params.ParamByName('contrato').Value := global_contrato ;
  Turnos.Open ;
  If global_orden_general <> '' then
  Begin
      OrdenesdeTrabajo.Active := False ;
      OrdenesdeTrabajo.SQL.Clear ;
      OrdenesdeTrabajo.SQL.Add('Select ot.sNumeroOrden, ot.iJornada from ordenesdetrabajo ot ' +
                               'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                               'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                               'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                               'And sNumeroOrden = :orden ' +
                               'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden') ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := Global_Contrato ;
      OrdenesdeTrabajo.Params.ParamByName('orden').DataType    := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('orden').Value       := global_orden_general ;
      OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
      OrdenesdeTrabajo.Params.ParamByName('status').DataType   := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('status').Value      := connection.configuracion.FieldValues [ 'cStatusProceso' ];

      OrdenesdeTrabajo.Open ;
  End
  Else
  Begin
      OrdenesdeTrabajo.Active := False ;
      OrdenesdeTrabajo.SQL.Clear ;
      if (global_grupo = 'INTEL-CODE') Then
          OrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, iJornada from ordenesdetrabajo where sContrato = :Contrato and ' +
                               'cIdStatus = :status order by sNumeroOrden')
      Else
      OrdenesdeTrabajo.SQL.Add('Select ot.sNumeroOrden, ot.iJornada from ordenesdetrabajo ot ' +
                               'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                               'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                               'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                               'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden') ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := Global_Contrato ;
      OrdenesdeTrabajo.Params.ParamByName('status').DataType   := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('status').Value      := connection.configuracion.FieldValues [ 'cStatusProceso' ];
      if global_grupo <> 'INTEL-CODE' Then
        Begin
          OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
          OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
        end;
      OrdenesdeTrabajo.Open ;
  End ;

  If OrdenesdeTrabajo.RecordCount > 0 Then
  Begin
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      ReporteDiario.Active := False ;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
      ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
      ReporteDiario.Params.ParamByName('orden').DataType := ftString ;
      ReporteDiario.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
      ReporteDiario.Open ;
      Grid_Reportes.SetFocus
  End
  Else
      tsNumeroOrden.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
End;

procedure TfrmDiarioTurno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  procLimpia () ;
  try
    convenio_reporte := '' ;
    global_orden := '' ;
    global_turno_reporte := '' ;
    BotonPermiso1.Free;
    BotonPermiso.free;

  finally
    //action := cafree ;
    frmDiarioTurno.Release;
  end;
  
    Action := caFree;
end;

procedure TfrmDiarioTurno.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        grid_reportes.SetFocus
end;

procedure TfrmDiarioTurno.tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
       tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsIdturno.SetFocus
end;

procedure TfrmDiarioTurno.btn1Click(Sender: TObject);
begin
  try
    frmEntradaAnex.SetFocus;
  except
   Application.CreateForm(TfrmEntradaAnex, frmEntradaAnex);
    frmEntradaAnex.Show
  end;
end;

procedure TfrmDiarioTurno.btn2Click(Sender: TObject);
begin
   If ReporteDiario.RecordCount > 0 Then
        frmInteligent.opFirmas.Click
end;

procedure TfrmDiarioTurno.btn3Click(Sender: TObject);
begin

    try
      frmBitacoraxAlcance.SetFocus;
    except
      	Application.CreateForm(TfrmBitacoraxAlcance, frmBitacoraxAlcance);
      frmBitacoraxAlcance.show;
    end;


end;

procedure TfrmDiarioTurno.btn4Click(Sender: TObject);
begin
  try
    frmBitacoraDepartamental_2.SetFocus;
 except
    Application.CreateForm(TfrmBitacoraDepartamental_2,frmBitacoraDepartamental_2);
    frmBitacoraDepartamental_2.Show;
  end;

end;

procedure TfrmDiarioTurno.btn5Click(Sender: TObject);
begin
   If ReporteDiario.RecordCount > 0 Then
      frmInteligent.opPermisos.Click ;
end;

procedure TfrmDiarioTurno.btn6Click(Sender: TObject);
begin
      //If ReporteDiario.RecordCount > 0 Then
   // Begin
    try
      frmjornadasdiarias.SetFocus;
    except
      Application.CreateForm(Tfrmjornadasdiarias, frmjornadasdiarias);
        frmjornadasdiarias.Show;
    end;

    //End
end;

procedure TfrmDiarioTurno.btn7Click(Sender: TObject);
begin
  try
    frmBitacora2.SetFocus;
  except
     Application.CreateForm(TfrmBitacora2, frmBitacora2);
      frmBitacora2.Show;
  end;

end;

procedure TfrmDiarioTurno.btnAddClick(Sender: TObject);
begin
  tdIdFecha.SetFocus ;
end;

procedure TfrmDiarioTurno.tsNumeroReporteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tdIdFecha.SetFocus
end;

procedure TfrmDiarioTurno.tsHoraInicio2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsHoraFinal2.SetFocus
end;

procedure TfrmDiarioTurno.tsTiempoKeyPress(Sender: TObject; var Key: Char);
Begin
    If Key = #13 then
      tsTransporte.SetFocus
end;

procedure TfrmDiarioTurno.tsTransporteKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioTurno.tsInicioPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsFinalPlatica.SetFocus
end;

procedure TfrmDiarioTurno.tsFinalPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTema.SetFocus
end;

procedure TfrmDiarioTurno.tsHoraFinal2Exit(Sender: TObject);
begin
    tsHoraFinal2.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsTiempo.SetFocus
end;

procedure TfrmDiarioTurno.tsNumeroOrdenExit(Sender: TObject);
begin
   ReporteDiario.Active := False ;
   ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
   ReporteDiario.Params.ParamByName('contrato').Value    := global_contrato ;
   ReporteDiario.Params.ParamByName('orden').DataType    := ftString ;
   ReporteDiario.Params.ParamByName('orden').Value       := tsNumeroOrden.Text ;
   ReporteDiario.Open ;

   tsNumeroOrden.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.frmBarra1btnEditClick(Sender: TObject);
begin
   If ReporteDiario.RecordCount > 0 then
      If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
      Begin
          frmBarra1.btnEditClick(Sender);
          Insertar1.Enabled := False ;
          Editar1.Enabled := False ;
          Registrar1.Enabled := True ;
          Can1.Enabled := True ;
          Eliminar1.Enabled := False ;
          Refresh1.Enabled := False ;
          Salir1.Enabled := False ;

          PgDiario.ActivePageIndex := 0 ;
          tdIdFecha.Enabled := True ;
          tsIdTurno.ReadOnly := False ;
          tsNumeroReporte.ReadOnly := False ;
          tsTiempo.ReadOnly := False ;
          tsInicioPlatica.ReadOnly := False ;
          tsFinalPlatica.ReadOnly := False ;
          tsTema.ReadOnly := False ;
          TabRDiario.Enabled := True;

          lNuevoDia := True ;
          tdIdFecha.SetFocus
       End
       Else
          MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
          
   BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnDeleteClick(Sender: TObject);
Var
    iReporte  : Integer ;
    sTexto    : WideString ;
    lValido   : Boolean ;
    lOrdenTierra : Boolean ;
begin
    If ReporteDiario.RecordCount > 0 then
      If (ReporteDiario.FieldValues['lStatus'] = 'Pendiente') Then
      Begin
          // Veo que existe asociado al reporte ...
          //  Actualizo la Bitacora
          sTexto := '' ;
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From tramitedepermisos Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Tramite de Permisos' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From bitacoradealcances Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Bitacora de Alcances' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From bitacoradeactividades Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Bitacora de Actividades' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From reportefotografico Where sContrato = :Contrato And sNumeroReporte = :reporte') ;
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('reporte').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Reporte Fotografico' + chr(13) ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sContrato From jornadasdiarias Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
          Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
              sTexto := sTexto + 'Modulo: Jornadas y Tiempos' + chr(13) ;

         // Si no hay nada, continuo ..
         lValido := False ;
         If sTexto = '' Then
              If (ReporteDiario.FieldValues['sIdUsuario'] <> global_usuario) Then
                  If (global_grupo = 'ADMINISTRADORES') or (global_grupo = 'INTEL-CODE') Then
                        lValido := True
                  Else
                        lValido := False
              Else
                  lValido := True
         Else
             MessageDlg('Existen movimientos registrados al reporte diario : ' + chr(13) + sTexto + 'Proceda a eliminarlos y posteriormente eliminar el reporte diario', mtInformation, [mbOk], 0);


         If lValido Then
             If MessageDlg('Desea eliminar el reporte diario No. ' + ReporteDiario.FieldValues ['sNumeroReporte'] + '?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             Begin
                // Actualizo Kardex del Sistema ....
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                              'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)')  ;
                connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Descripcion').Value := 'Eliminación del Reporte Diario No. ' + ReporteDiario.FieldValues ['sNumeroReporte'] + ' del dia ' + ReporteDiario.fieldByName('dIdFecha').AsString  ;
                connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                connection.zCommand.ExecSQL ;

                If tsNumeroOrden.Text = global_contrato Then
                Begin
                    With connection do
                    Begin
                       If ReporteDiario.RecNo = 1 Then
                           If MessageDlg('Desea reconfigurar el folio automatico de reportes diarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                           Begin
                                iReporte := Length(Trim(ReporteDiario.FieldValues['sNumeroReporte'])) - 2 ;
                                iReporte := StrToInt(MidStr(Trim(ReporteDiario.FieldValues['sNumeroReporte']) , iReporte , 3)) ;
                                Connection.QryBusca.Active := False ;
                                Connection.QryBusca.SQL.Clear ;
                                Connection.QryBusca.SQL.Add('Select sPrefijo from turnos where sContrato = :contrato and sIdTurno = :Turno And sOrigenTierra = "Si"') ;
                                Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                                Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                                Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
                                Connection.QryBusca.Params.ParamByName('turno').Value := ReporteDiario.FieldValues ['sIdTurno'] ;
                                Connection.QryBusca.Open ;
                                If Connection.QryBusca.RecordCount > 0 Then
                                Begin
                                    connection.zCommand.Active := False ;
                                    connection.zCommand.SQL.Clear ;
                                    connection.zcommand.SQL.Add ('Update ordenesdetrabajo SET iConsecutivoTierra = :Consecutivo where sContrato = :Contrato And sNumeroOrden = :Orden') ;
                                    connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                                    connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                                    connection.zcommand.Params.ParamByName('orden').DataType := ftString ;
                                    connection.zcommand.Params.ParamByName('orden').Value := ReporteDiario.FieldValues ['sNumeroOrden'] ;
                                    connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                                    connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte ;
                                    connection.zCommand.ExecSQL ;
                                End
                                Else
                                Begin
                                    connection.zCommand.Active := False ;
                                    connection.zCommand.SQL.Clear ;
                                    connection.zcommand.SQL.Add ('Update configuracion SET iConsecutivo = :Consecutivo where sContrato = :Contrato') ;
                                    connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                                    connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                                    connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                                    connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte ;
                                    connection.zCommand.ExecSQL ;
                                End
                           End ;
                       try
                           connection.zCommand.Active := False ;
                           connection.zCommand.SQL.Clear ;
                           connection.zcommand.SQL.Add ('Delete from reportediario where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
                                                        'dIdFecha = :Fecha And sIdTurno = :Turno') ;
                           connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                           connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                           connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                           connection.zcommand.Params.ParamByName('Orden').value := ReporteDiario.FieldValues ['sNumeroOrden'] ;
                           connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                           connection.zcommand.Params.ParamByName('Fecha').value := ReporteDiario.FieldValues ['dIdFecha'];
                           connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                           connection.zcommand.Params.ParamByName('Turno').value := ReporteDiario.FieldValues ['sIdTurno'];
                           connection.zCommand.ExecSQL ;

                           SavePlace :=  ReporteDiario.GetBookmark ;

                           ReporteDiario.Active := False ;
                           ReporteDiario.Open ;
                           Try
                              TcxGridDBTableView(grid_reportes.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
                           Except

                           Else
                               TcxGridDBTableView(grid_reportes.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
                           End ;
                                 Grid_Reportes.SetFocus
                       Except
                           on e : exception do begin
                               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al eliminar registro', 0);
                           end;
                       End
                    End
                End
                Else
                Begin
                    With connection do
                    Begin
                       If ReporteDiario.RecNo = 1 Then
                           If MessageDlg('Desea reconfigurar el folio automatico de reportes diarios?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                           Begin
                                iReporte := Length(Trim(ReporteDiario.FieldValues['sNumeroReporte'])) - 2 ;
                                iReporte := StrToInt(MidStr(Trim(ReporteDiario.FieldValues['sNumeroReporte']) , iReporte , 3)) ;
                                lOrdenTierra := False ;
                                Connection.QryBusca.Active := False ;
                                Connection.QryBusca.SQL.Clear ;
                                Connection.QryBusca.SQL.Add('Select sIdTurno from turnos where sContrato = :contrato and sIdTurno = :Turno And sOrigenTierra = "Si"') ;
                                Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                                Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                                Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
                                Connection.QryBusca.Params.ParamByName('turno').Value := ReporteDiario.FieldValues ['sIdTurno'];
                                Connection.QryBusca.Open ;
                                If Connection.QryBusca.RecordCount > 0 Then
                                    lOrdenTierra := True ;

                                connection.zCommand.Active := False ;
                                connection.zCommand.SQL.Clear ;
                                If lOrdenTierra Then
                                    connection.zcommand.SQL.Add ('Update ordenesdetrabajo SET iConsecutivoTierra = :Consecutivo where sContrato = :Contrato And sNumeroOrden = :Orden')
                                Else
                                    connection.zcommand.SQL.Add ('Update ordenesdetrabajo SET iConsecutivo = :Consecutivo where sContrato = :Contrato And sNumeroOrden = :Orden') ;
                                connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                                connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                                connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                                connection.zcommand.Params.ParamByName('Orden').value := ReporteDiario.FieldValues ['sNumeroOrden'];
                                connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                                connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte ;
                                connection.zCommand.ExecSQL ;
                           End ;
                       try
                           connection.zCommand.Active := False ;
                           connection.zCommand.SQL.Clear ;
                           connection.zcommand.SQL.Add ('Delete from reportediario where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
                                                        'dIdFecha = :Fecha And sIdTurno = :Turno') ;
                           connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                           connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                           connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                           connection.zcommand.Params.ParamByName('Orden').value := ReporteDiario.FieldValues ['sNumeroOrden'] ;
                           connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                           connection.zcommand.Params.ParamByName('Fecha').value := ReporteDiario.FieldValues ['dIdFecha'];
                           connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                           connection.zcommand.Params.ParamByName('Turno').value := ReporteDiario.FieldValues ['sIdTurno'];
                           connection.zCommand.ExecSQL ;
                           SavePlace :=  ReporteDiario.GetBookmark ;
                           ReporteDiario.Active := False ;
                           ReporteDiario.Open ;
                           Try
                               ReporteDiario.GotoBookmark(SavePlace);
                           Except

                           Else
                               ReporteDiario.FreeBookmark(SavePlace);
                           End ;
                           Grid_Reportes.SetFocus
                       Except
                           on e : exception do begin
                               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al eliminar registro', 0);
                           end;
                       End
                    End
                End
             End
      End
      Else
         MessageDlg('El Reporte ha sido Autorizado o fue creado por un usuario distinto por lo tanto no puede eliminarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioTurno.frmBarra1btnAddClick(Sender: TObject);
Var
    lContinua  : Boolean ;
    iReportesSinValid : Integer ;
begin
  If tsNumeroOrden.Text <> '' Then
  Begin
      // Busco cuantos reportes sin validar existen ...
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('Select Count(sNumeroReporte) as iReportes From reportediario Where sContrato = :Contrato And sNumeroOrden = :Orden And lStatus = "Pendiente" Group By sNumeroOrden') ;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
      Connection.QryBusca.Open ;
      iReportesSinValid := 0 ;
      If Connection.QryBusca.RecordCount > 0 Then
          iReportesSinValid := Connection.QryBusca.FieldValues['iReportes'] ;
      If iReportesSinValid < Connection.configuracion.FieldValues['iReportesSinValid'] Then
      Begin
          // Valido que no se pueda generar un nuevo reporte si el anterior pertenece a otro convenio y aun no ha sido validado ...
          lContinua := True ;
          ReporteDiario.first ;
          If (ReporteDiario.FieldValues ['lStatus'] = 'Pendiente') And (ReporteDiario.FieldValues['sIdConvenio'] <> global_convenio ) Then
              lContinua := False ;

          If lContinua Then
          Begin
              Insertar1.Enabled := False ;
              Editar1.Enabled := False ;
              Registrar1.Enabled := True ;
              Can1.Enabled := True ;
              Eliminar1.Enabled := False ;
              Refresh1.Enabled := False ;
              Salir1.Enabled := False ;

              PgDiario.ActivePageIndex := 0 ;
              tdIdFecha.Enabled := True ;
              tsIdTurno.ReadOnly := False ;
              tsNumeroReporte.ReadOnly := True ;
              tsTiempo.ReadOnly := False ;
              tsInicioPlatica.ReadOnly := False ;
              tsFinalPlatica.ReadOnly := False ;
              tsTema.ReadOnly := False ;
              TabRDiario.Enabled := True;

              If ReporteDiario.RecordCount > 0 Then
              Begin
                  ReporteDiario.First ;
                  tdIdFecha.Date := ReporteDiario.FieldValues['dIdFecha'] + 1
              End
              Else
                  tdIdFecha.Date := Date ;
              tsHoraInicio2.Text := '00:00' ;
              tsHoraFinal2.Text := '00:00' ;
              tsInicioPlatica.Text := '00:00' ;
              tsFinalPlatica.Text := '00:00' ;
              tsTiempoEfectivo.Text := '00:00' ;
              tsTiempoMuerto.Text := '00:00' ;

              tsTiempo.Text := 'BUENO' ;
              tsTransporte.Text := '' ;
              tsTema.Text := '' ;
              tsNumeroReporte.Text := 'Pend. Asignar' ;
              tsIdTurno.KeyValue := global_turno ;
              ChkPartidasAnteriores.Checked := False;
              lNuevoDia := True ;
              tdIdFecha.SetFocus ;
              frmBarra1.btnAddClick(Sender);
          End
          Else
              MessageDlg('No se puede generar un nuevo reporte en un nuevo convenio/acta circunstanciada cuando el ultimo reporte se encuentre pendiente de validar, valide todos los reportes anteriores a la fecha de aplicación del nuevo convenio para poder generar dicho reporte.', mtWarning, [mbOk], 0);
      End
      Else
          MessageDlg('El numero de reportes pendientes de validar existentes en la orden de trabajo seleccionada exceden a lo permitido por el sistema [' + Connection.configuracion.FieldByName('iReportesSinValid').AsString + '], ' +
                     'proceda a validar los reportes pendientes para poder generar un reporte nuevo', mtWarning, [mbOk], 0);
  End;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnPrinterClick(Sender: TObject);
var
  txtMensaje:String;
Begin
  If ReporteDiario.RecordCount > 0 Then
  begin
      //Antes de imprimir verificamos si existen reportes sin validar anteriores al reporte diario,,
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('Select sContrato From reportediario Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha < :Fecha and lStatus <> "Autorizado"');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato ;
      Connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
      Connection.QryBusca.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
      Connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
      Connection.QryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
      Connection.QryBusca.Open ;

      if Connection.QryBusca.RecordCount > 0 then
         messageDLG('Existen Reportes Diarios en Estatus "NO AUTORIZADO", Puede generar Diferencias en Avances Fisicos.', mtWarning, [mbOk], 0);

      Imprimir1.Click
  end;
end;

procedure TfrmDiarioTurno.frmBarra1btnRefreshClick(Sender: TObject);
Var
    sTiempoComida : String ;
    dBalanceMuerto  : Real ;
    lBalance  : Boolean ;
    sBalance  : String  ;
    sTiempoMuerto : String ;
begin

    OrdenesdeTrabajo.Active := False;
    OrdenesdeTrabajo.Open;

    If OrdenesdeTrabajo.RecordCount > 0 Then
    Begin
        tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
        ReporteDiario.Active := False ;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteDiario.Params.ParamByName('orden').DataType := ftString ;
        ReporteDiario.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
        ReporteDiario.Open ;
        Grid_Reportes.SetFocus
    End
    Else
       tsNumeroOrden.SetFocus;

    If ReporteDiario.RecordCount > 0 Then
    Begin
        If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
        Begin
            // Si el reporte esta en Status de Pendiente primeramente actualizamos los tipos de transportes utilizados ..
            MovimientosdePersonal.Active := False ;
            MovimientosdePersonal.Params.ParamByName('contrato').DataType := ftString ;
            MovimientosdePersonal.Params.ParamByName('contrato').Value := global_contrato ;
            MovimientosdePersonal.Params.ParamByName('fecha').DataType := ftDate ;
            MovimientosdePersonal.Params.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
            MovimientosdePersonal.Params.ParamByName('orden').DataType := ftString ;
            MovimientosdePersonal.Params.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
            MovimientosdePersonal.Params.ParamByName('turno').DataType := ftString ;
            MovimientosdePersonal.Params.ParamByName('turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
            MovimientosdePersonal.Open ;

            If MovimientosdePersonal.RecordCount > 0 Then
            Begin
                Connection.QryBusca.Active := False ;
                Connection.QryBusca.SQL.Clear ;
                Connection.QryBusca.SQL.Add('Select t.sDescripcion From jornadasdiarias m ' +
                                            'INNER JOIN embarcaciones e ON (m.sContrato = e.sContrato And m.sIdEmbarcacion = e.sIdEmbarcacion) ' +
                                            'INNER JOIN tiposdeembarcacion t ON (e.sIdTipoEmbarcacion = t.sIdTipoEmbarcacion) ' +
                                            'Where m.sContrato = :Contrato And m.dIdFecha = :Fecha And m.sNumeroOrden = :Orden And m.sIdTurno = :Turno ' +
                                            'And m.sIdEmbarcacion <> "" And m.sTipo = "Disponibilidad del Sitio"') ;
                Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
                Connection.QryBusca.Params.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
                Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
                Connection.QryBusca.Open ;
                tsTransporte.Text := '' ;
                While NOT Connection.QryBusca.eof Do
                Begin
                    If tsTransporte.Text <> '' Then
                        tsTransporte.Text := tsTransporte.Text + ', ' ;
                    tsTransporte.Text := tsTransporte.Text + Connection.QryBusca.FieldValues['sDescripcion'] ;
                    Connection.QryBusca.Next
                End
            End
            Else
                tsTransporte.Text := 'N/A' ;

            try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE reportediario SET sTransporte = :Transporte  ' +
                                              'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
                 connection.zcommand.Params.ParamByName('Transporte').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Transporte').value := tsTransporte.Text ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;
                 If tsInicioPlatica.Text > tsHoraInicio2.Text Then
                      lblError.Caption := 'La hora de inicio de las platicas es mayor a la hora de inicio de actividades'
                 Else
                      lblError.Caption := ''
            except
                 on e : exception do begin
                     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al actualizar registro', 0);
                 end;
            End
        End
    End ;
    If Platicas.Active = True Then
        Platicas.refresh ;

    SavePlace :=  ReporteDiario.GetBookmark  ;
    ReporteDiario.Active := False ;
    ReporteDiario.Open ;
    Try
        reportediario.GotoBookmark(SavePlace);
    Except

    else
        reportediario.FreeBookmark(SavePlace);
    End ;

end;

procedure TfrmDiarioTurno.grid_1Enter(Sender: TObject);
begin
  If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiarioTurno.frmBarra1btnExitClick(Sender: TObject);
begin
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   close ;
end;

procedure TfrmDiarioTurno.tdIdFechaExit(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
    Begin
        If OpcButton = 'New' Then
        Begin
            lNuevoDia := True ;
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sContrato from reportediario Where sContrato = :contrato And sNumeroOrden = :Orden And ' +
                                             'dIdFecha = :fecha And sIdTurno = :Turno') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').value    := global_contrato ;
            Connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
            Connection.QryBusca.Params.ParamByName('orden').value       := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').AsDate      := tdIdFecha.Date ;
            Connection.QryBusca.Params.ParamByName('Turno').DataType    := ftString ;
            Connection.QryBusca.Params.ParamByName('Turno').value       := tsIdTurno.KeyValue ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                lNuevoDia := False
        End ;

        Platicas.Active := False ;
        Platicas.Params.ParamByName('Contrato').DataType := ftString ;
        Platicas.Params.ParamByName('contrato').Value  := global_contrato ;
        Platicas.Params.ParamByName('fecha').DataType := ftDate ;
        Platicas.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
        Platicas.Params.ParamByName('Orden').DataType := ftString ;
        Platicas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Platicas.Open ;
        If Platicas.RecordCount > 0 Then
            tsTema.Text := Platicas.FieldValues['sTema'] ;

        //  Actualizo la Bitacora
    End ;
    tdIdFecha.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsTemaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tdIdFecha.SetFocus
end;

procedure TfrmDiarioTurno.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entradaERP;
end;

procedure TfrmDiarioTurno.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaERP;
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiarioTurno.tsNumeroReporteEnter(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_entradaERP
end;

procedure TfrmDiarioTurno.tsNumeroReporteExit(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsTiempoEnter(Sender: TObject);
begin
    tsTiempo.Color := global_color_entradaERP
end;

procedure TfrmDiarioTurno.tsTiempoExit(Sender: TObject);
begin
    tsTiempo.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsTransporteEnter(Sender: TObject);
begin
    tsTransporte.Color := global_color_entradaERP;
end;

procedure TfrmDiarioTurno.tsTransporteExit(Sender: TObject);
begin
    tsTransporte.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsInicioPlaticaEnter(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_entradaERP
end;

procedure TfrmDiarioTurno.tsInicioPlaticaExit(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsDescripcionExit(Sender: TObject);
begin
    //buscamos la partida en el comentario si existe..
    if cbPartida.KeyValue = Null then
    begin
        partidas.First;
        while not partidas.Eof do
        begin
            if pos(partidas.FieldValues['sNumeroActividad'], tsDescripcion.Text) > 0 then
            begin
                cbPartida.KeyValue := partidas.FieldValues['sWbs'];
                partidas.Last;
            end;
            partidas.Next;
        end;
    end;
end;

procedure TfrmDiarioTurno.tsFinalPlaticaEnter(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_entradaERP;
end;

procedure TfrmDiarioTurno.tsFinalPlaticaExit(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsTemaEnter(Sender: TObject);
begin
    tsTema.Color := global_color_entradaERP;
end;

procedure TfrmDiarioTurno.tsTemaExit(Sender: TObject);
begin
    tsTema.Color := global_color_salidaERP;
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure TfrmDiarioTurno.frmBarra1btnPostClick(Sender: TObject);
Var
    sReporte      : String ;
    txtAux        : String ;
    iReporte      : Real ;
    Caracteres    : Byte ;
    sConvenio     : String ;
    lOrdenTierra   : Boolean ;
    sParametro     : String ;
    Registro       : Integer ;
    strCadena      : string;
    dFechaAvance   : tDate;
    sMostrarPartidasAnt: string;
    Q_Ordenes,
    Q_Fechas       : TZReadOnlyQuery;
    lRelacional: boolean;
    cadenas, nombres: TStringList;
begin
 //verificacion de campos vacios
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Número Folio');  cadenas.Add(tsNumeroReporte.Text);
  nombres.Add('Edo. del Tiempo');  cadenas.Add(tsTiempo.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continua el post

  {Creacion de los Objetos..}
  Q_Ordenes := TZReadOnlyQuery.Create(self);
  Q_Ordenes.Connection := connection.zConnection;

  Q_Fechas  := TZReadOnlyQuery.Create(self);
  Q_Fechas.Connection := connection.zConnection;

  If lNuevoDia Then
  Begin
      if ChkPartidasAnteriores.Checked then
          sMostrarPartidasAnt := 'Si'
      else
          sMostrarPartidasAnt := 'No';

      If OpcButton = 'New' then
      Begin
         If tsNumeroOrden.Text = global_contrato Then
         Begin
             lOrdenTierra := False ;
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sPrefijo from turnos where sContrato = :contrato and sIdTurno = :Turno And sOrigenTierra = "Si"') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('turno').Value := tsIdTurno.KeyValue ;
             Connection.QryBusca.Open ;
             If Connection.QryBusca.RecordCount > 0 Then
             Begin
                 lOrdenTierra := True ;
                 If Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) <> '' Then
                     sReporte := Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) + '-'  ;

                 Connection.QryBusca.Active := False ;
                 Connection.QryBusca.SQL.Clear ;
                 Connection.QryBusca.SQL.Add('Select sFormato from configuracion where sContrato = :contrato') ;
                 Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                 Connection.QryBusca.Open ;
                 sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;

                 Connection.QryBusca.Active := False ;
                 Connection.QryBusca.SQL.Clear ;
                 Connection.QryBusca.SQL.Add('Select iConsecutivoTierra from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
                 Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                 Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
                 Connection.QryBusca.Open ;
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivoTierra'] ;
             End
             Else
             Begin
                 Connection.QryBusca.Active := False ;
                 Connection.QryBusca.SQL.Clear ;
                 Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo from configuracion where sContrato = :contrato') ;
                 Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                 Connection.QryBusca.Open ;
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;
                 sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;
             End ;

             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                  txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;
             tsNumeroReporte.Text := sReporte ;
             If lOrdenTierra Then
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE ordenesdetrabajo Set iConsecutivoTierra = :Consecutivo Where sContrato = :Contrato And sNumeroOrden = :Orden');
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End
             Else
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE configuracion Set iConsecutivo = :Consecutivo Where sContrato = :Contrato');
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End
         End
         Else
         Begin
             lOrdenTierra := False ;
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sPrefijo from turnos where sContrato = :contrato and sIdTurno = :Turno And sOrigenTierra = "Si"') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('turno').Value := tsIdTurno.KeyValue ;
             Connection.QryBusca.Open ;
             If Connection.QryBusca.RecordCount > 0 Then
             Begin
                 lOrdenTierra := True ;
                 If Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) <> '' Then
                     sReporte := Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) + '-'  ;
             End ;

             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo, iConsecutivoTierra from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
             Connection.QryBusca.Open ;
             sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;
             If lOrdenTierra Then
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivoTierra']
             Else
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;

             If lOrdenTierra Then
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE ordenesdetrabajo Set iConsecutivoTierra = :Consecutivo Where sContrato = :Contrato And sNumeroOrden = :Orden');
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End
             Else
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE ordenesdetrabajo Set iConsecutivo = :Consecutivo Where sContrato = :Contrato And sNumeroOrden = :Orden');
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End ;

             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                 txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;
         End ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sNumeroOrden, dIdFecha, sNumeroReporte From reportediario Where sContrato = :Contrato And sNumeroReporte = :Reporte') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
         Connection.QryBusca.Params.ParamByName('Reporte').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Reporte').Value := sReporte ;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
         Begin
              MessageDlg('El folio a asignar al reporte diario actual existe [' + Connection.QryBusca.FieldValues['sNumeroReporte'] + '] Modifique la configuración de folios.'  , mtWarning, [mbOk], 0) ;
              sReporte := '--FOLIO DUPLICADO--' ;
         End ;

         tsNumeroReporte.Text := sReporte ;

         With connection do
         Begin
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('INSERT INTO reportediario ( sContrato , dIdFecha, sNumeroOrden, sIdTurno, sIdConvenio, sNumeroReporte, iPersonal, ' +
                                              'sOperacionInicio, sOperacionFinal, sTiempoEfectivo, sTiempoMuerto, sTiempoMuertoReal, sTiempo, sTransporte, ' +
                                              'sInicioPlatica, sFinalPlatica, sTema, lStatus, sIdUsuario, '+
                                              'lAplicaComida, dAvProgAnteriorOrden, dAvProgActualOrden, dAvProgAnteriorContrato, dAvProgActualContrato, dAvRealAnteriorOrden, ' +
                                              'dAvRealActualOrden, dAvRealAnteriorContrato, dAvRealActualContrato, lMostrarPartidasAnt, TipoAjuste )' +
                                              'VALUES (:Contrato, :Fecha, :Orden, :Turno, :Convenio, :Reporte, :Personal, :HoraI, :HoraF, :Efectivo, :Muerto, :Real, ' +
                                              ':Tiempo, :Transporte, :InicioP, :FinalP, :Tema, :Status, :Usuario,"No", 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, :partidasanteriores, :TipoAjuste )') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Convenio').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Convenio').value := global_convenio ;
                 connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Reporte').value := tsNumeroReporte.Text ;
                 connection.zcommand.Params.ParamByName('Personal').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Personal').value := 0 ;
                 connection.zcommand.Params.ParamByName('HoraI').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('HoraI').value := tsHoraInicio2.Text ;
                 connection.zcommand.Params.ParamByName('HoraF').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('HoraF').value := tsHoraFinal2.Text ;
                 connection.zcommand.Params.ParamByName('Efectivo').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Efectivo').value := '00:00' ;
                 connection.zcommand.Params.ParamByName('Muerto').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Muerto').value := '00:00' ;
                 connection.zcommand.Params.ParamByName('Real').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Real').value := '00:00' ;
                 connection.zcommand.Params.ParamByName('Tiempo').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Tiempo').value := tsTiempo.Text ;
                 connection.zcommand.Params.ParamByName('Transporte').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Transporte').value := tsTransporte.Text ;
                 connection.zcommand.Params.ParamByName('InicioP').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('InicioP').value := tsInicioPlatica.Text ;
                 connection.zcommand.Params.ParamByName('FinalP').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('FinalP').value := tsFinalPlatica.Text ;
                 connection.zcommand.Params.ParamByName('Tema').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Tema').value := tsTema.Text ;
                 connection.zcommand.Params.ParamByName('Status').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Status').value := 'Pendiente' ;
                 connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Usuario').value := global_usuario ;
                 connection.zcommand.Params.ParamByName('partidasanteriores').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('partidasanteriores').value := sMostrarPartidasAnt ;
                 connection.zcommand.Params.ParamByName('tipoajuste').DataType := ftInteger;
                 connection.zcommand.Params.ParamByName('tipoajuste').value := ComboBox1.ItemIndex;

                 connection.zCommand.ExecSQL ;

                 // Actualizo Kardex del Sistema ....
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                              'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                 connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                 connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación del Reporte Diario No. ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                 connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                 connection.zCommand.ExecSQL ;

                 SavePlace :=  ReporteDiario.GetBookmark ;
                 ReporteDiario.Active := False ;
                 ReporteDiario.Open ;
                 Try
                     ReporteDiario.GotoBookmark(SavePlace);
                 Except
                 Else
                     ReporteDiario.FreeBookmark(SavePlace);
                 End ;

                 ReporteDiario.first ;
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al salvar nuevo registro', 0);
                 end;
             end
         End
      End
      Else
      Begin
         // Actualizo Kardex del Sistema ....
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zcommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                       'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
         connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
         connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
         connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
         connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
         connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
         connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Descripcion').Value := 'Modificación del Reporte Diario Original No. ' + ReporteDiario.FieldValues ['sNumeroReporte'] + ' del dia ' + ReporteDiario.fieldByName('dIdFecha').AsString + ', Reporte Diario Final [' + tsNumeroReporte.Text + '] Usuario : ' + global_usuario  ;
         connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
         connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
         connection.zCommand.ExecSQL ;

         try
             //***********************BRITO****21/04/11*************************
             lRelacional := UnitTablasImpactadas.boolRelaciones(connection.zConnection);
             if not lRelacional then
             begin
                 // Actualizo equipos ....
                 // Saco los IdDiarios del dia ...
                 connection.QryBusca.Active := False ;
                 connection.QryBusca.SQL.Clear ;
                 connection.QryBusca.SQL.Add('select iIdDiario from bitacoradeactividades ' +
                                                  'Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden And sIdTurno = :Turno') ;
                 connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.QryBusca.Params.ParamByName('Fecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('Orden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                 connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
                 connection.QryBusca.Params.ParamByName('Turno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.QryBusca.Open ;
                 While NOT connection.QryBusca.Eof Do
                 Begin
                     // Actualizo el personal del dia a la nueva fecha ...
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zcommand.SQL.Add ('UPDATE bitacoradepersonal Set dIdFecha = :Fecha ' +
                                                  'Where sContrato = :Contrato And dIdFecha = :OldFecha And iIdDiario = :Diario') ;
                     connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                     connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                     connection.zcommand.Params.ParamByName('Diario').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Diario').value := connection.QryBusca.FieldValues['iIdDiario'] ;
                     connection.zCommand.ExecSQL ;

                     // Actualizo el equipo del dia a la nueva fecha ...
                     connection.zCommand.Active := False ;
                     connection.zCommand.SQL.Clear ;
                     connection.zcommand.SQL.Add ('UPDATE bitacoradeequipos Set dIdFecha = :Fecha ' +
                                                  'Where sContrato = :Contrato And dIdFecha = :OldFecha And iIdDiario = :Diario') ;
                     connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                     connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                     connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                     connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                     connection.zcommand.Params.ParamByName('Diario').DataType := ftString ;
                     connection.zcommand.Params.ParamByName('Diario').value := connection.QryBusca.FieldValues['iIdDiario'] ;
                     connection.zCommand.ExecSQL ;

                     connection.QryBusca.Next
                 End ;
             end;

             // Bitacora de Actividades
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ('UPDATE bitacoradeactividades Set sIdTurno = :Turno, dIdFecha = :Fecha ' +
                                          'Where sContrato = :Contrato And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno') ;
             connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
             connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
             connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
             connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
             connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
             connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
             connection.zCommand.ExecSQL ;

             if not lRelacional then
             begin

                 // Bitacora de Alcances
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE bitacoradealcances Set sIdTurno = :Turno, dIdFecha = :Fecha ' +
                                              'Where sContrato = :Contrato And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno') ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                 connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;

                 // Tramite de Permisos
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE tramitedepermisos Set sIdTurno = :Turno, dIdFecha = :Fecha ' +
                                              'Where sContrato = :Contrato And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno') ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                 connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;

                 // Jornadas Diarias
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ('UPDATE jornadasdiarias Set sIdTurno = :Turno , dIdFecha = :Fecha ' +
                                              'Where sContrato = :Contrato And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno') ;
                 connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
                 connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
                 connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
                 connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
                 connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
                 connection.zCommand.ExecSQL ;
                 
             end;

             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ( 'UPDATE reportediario Set dIdFecha = :Fecha, sIdConvenio = :Convenio, sNumeroReporte = :Reporte, iPersonal = :Personal, ' +
                                           'sIdTurno = :Turno, sOperacionInicio = :HoraI, sOperacionFinal = :HoraF, ' +
                                           'sTiempoEfectivo = :Efectivo, sTiempoMuerto = :Muerto, sTiempo = :Tiempo, sTransporte= :Transporte, ' +
                                           'sInicioPlatica = :InicioP, sFinalPlatica = :FinalP, sTema = :Tema, lMostrarPartidasAnt = :partidasanteriores, TipoAjuste = :TipoAjuste ' +
                                           'Where sContrato = :Contrato And dIdFecha = :OldFecha And sNumeroOrden = :OldOrden And sIdTurno = :OldTurno') ;
             connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
             connection.zcommand.Params.ParamByName('OldFecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('OldFecha').value := ReporteDiario.FieldValues['dIdFecha'] ;
             connection.zcommand.Params.ParamByName('OldOrden').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldOrden').value := ReporteDiario.FieldValues['sNumeroOrden'] ;
             connection.zcommand.Params.ParamByName('OldTurno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldTurno').value := ReporteDiario.FieldValues['sIdTurno'] ;
             connection.zcommand.Params.ParamByName('Turno').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
             connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('Fecha').value := tdIdFecha.Date ;
             connection.zcommand.Params.ParamByName('Convenio').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Convenio').value := global_convenio ;
             connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Reporte').value := tsNumeroReporte.Text ;
             connection.zcommand.Params.ParamByName('Personal').DataType := ftInteger ;
             connection.zcommand.Params.ParamByName('Personal').value := 0 ;
             connection.zcommand.Params.ParamByName('HoraI').DataType := ftString ;
             connection.zcommand.Params.ParamByName('HoraI').value := tsHoraInicio2.Text ;
             connection.zcommand.Params.ParamByName('HoraF').DataType := ftString ;
             connection.zcommand.Params.ParamByName('HoraF').value := tsHoraFinal2.Text ;
             connection.zcommand.Params.ParamByName('Efectivo').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Efectivo').value := '00:00' ;
             connection.zcommand.Params.ParamByName('Muerto').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Muerto').value := '00:00' ;
             connection.zcommand.Params.ParamByName('Tiempo').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Tiempo').value := tsTiempo.Text ;
             connection.zcommand.Params.ParamByName('Transporte').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Transporte').value := tsTransporte.Text ;
             connection.zcommand.Params.ParamByName('InicioP').DataType := ftString ;
             connection.zcommand.Params.ParamByName('InicioP').value := tsInicioPlatica.Text ;
             connection.zcommand.Params.ParamByName('FinalP').DataType := ftString ;
             connection.zcommand.Params.ParamByName('FinalP').value := tsFinalPlatica.Text ;
             connection.zcommand.Params.ParamByName('Tema').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Tema').value := tsTema.Text ;
             connection.zcommand.Params.ParamByName('partidasanteriores').DataType := ftString ;
             connection.zcommand.Params.ParamByName('partidasanteriores').value := sMostrarPartidasAnt ;
             connection.zcommand.Params.ParamByName('TipoAjuste').DataType := ftInteger;
             connection.zcommand.Params.ParamByName('TipoAjuste').Value := ComboBox1.ItemIndex;
             connection.zCommand.ExecSQL ;

             SavePlace :=  Reportediario.GetBookmark ;
             ReporteDiario.Active := False ;
             ReporteDiario.Open ;
             Try
                 Reportediario.GotoBookmark(SavePlace);
             Except
             Else
                 Reportediario.FreeBookmark(SavePlace);
             End ;
         except
             on e : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al salvar cambios en registro', 0);
             end;
         End
      End
  End ;

  // Empiezo  a verificar la existencia de mas reportes diarios ......
  // Cuantifico cuantos reportes diarion existen ...

  Connection.QryBusca.Active := False ;
  Connection.QryBusca.SQL.Clear ;
  Connection.QryBusca.SQL.Add('Select sContrato From reportediario Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And dIdFecha < :Fecha Group By sNumeroOrden') ;
  Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
  Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
  Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
  Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
  Connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
  Connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
  Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
  Connection.QryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
  Connection.QryBusca.Open ;
  If (Connection.QryBusca.RecordCount = 0) And (Global_Convenio <> '') Then
  Begin
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('Select sIdConvenio, lAvanceFisico From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio') ;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio ;
      Connection.QryBusca.Open ;

      If Connection.QryBusca.FieldValues['lAvanceFisico'] = 'Si' Then
      Begin
          try
              if not validarPonderadoXConvenio(global_contrato, global_convenio, tsNumeroOrden.Text, tdIdFecha.Date) then begin
                  MessageDlg('Existen diferencias entre los ponderados de las partidas del ' + #10 + #10 +
                             'convenio actual y el convenio anterior. ' + #10 + #10 +
                             'Es probable que los avances físicos aumenten o disminuyan. ', mtInformation, [mbOk], 0);
              end;
          except
             on e : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al validar ponderado por convenio al salvar cambios en registro', 0);
             end;
          end;

          //  Voy con el avance ...
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sIdConvenio From convenios Where sContrato = :Contrato Order By dFecha DESC') ;
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.QryBusca.Open ;
          sConvenio := '' ;

          While NOT Connection.QryBusca.Eof And (sConvenio = '') Do
          Begin
              If global_convenio = Connection.QryBusca.FieldValues['sIdConvenio'] Then
              Begin
                  Connection.QryBusca.Next ;
                  sConvenio := Connection.QryBusca.FieldValues['sIdConvenio'] ;
              End ;
              Connection.QryBusca.Next ;
          End ;

          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zcommand.SQL.Add ( 'Delete from avancesglobalesxorden where sContrato = :contrato And sIdConvenio = :Convenio And dIdFecha < :Fecha') ;
          connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
          connection.zcommand.Params.ParamByName('Convenio').DataType := ftString ;
          connection.zcommand.Params.ParamByName('Convenio').Value := Global_Convenio ;
          connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
          connection.zcommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
          connection.zCommand.ExecSQL ;

          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add ('Select * From avancesglobalesxorden Where sContrato = :contrato ' +
                                        'And sIdConvenio = :Convenio And dIdFecha < :Fecha and dIdFecha >"0000-00-00"') ;
          Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
          Connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('convenio').Value := sConvenio ;
          Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 then
          begin
              pbMigracion.Visible := True ;
              lblMigracion.Visible := True ;
              pbMigracion.Min := 1 ;
              pbMigracion.Position := 1 ;
              pbMigracion.Max := Connection.QryBusca.RecordCount ;
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              try
                  connection.zcommand.SQL.Add ( FuncSql(  connection.QryBusca , 'avancesglobalesxorden')) ;
              except
                  on e : exception do begin
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al ejecutar la funcion SQL con la tabla avancesglobalesxorden al salvar registro', 0);
                  end;
              end;
              While NOt Connection.QryBusca.Eof Do
              Begin
                  for Registro := 0 to Connection.QryBusca.FieldCount - 1 do
                  Begin
                      sParametro := 'Param' + Trim(IntToStr(Registro + 1)) ;
                      connection.zcommand.Params.ParamByName(sParametro).DataType := Connection.QryBusca.Fields[Registro].DataType ;
                      If Registro = 1 Then
                          connection.zcommand.Params.ParamByName(sParametro).Value := global_convenio
                      Else
                          connection.zcommand.Params.ParamByName(sParametro).Value := Connection.QryBusca.Fields[Registro].Value ;
                  End ;
                  connection.zCommand.ExecSQL ;
                  pbMigracion.Position := pbMigracion.Position + 1 ;
                  Connection.QryBusca.Next
              End ;
              pbMigracion.Visible := False ;
              lblMigracion.Visible := False ;
          End
      End
      else
      begin
          {En esta parte es sobre la Solicitud de sede 400 sobre calcular avances de acuerdo al convenio actual...
          ---------------------------------------------------------------------------------------------------------}
          {Ahora consultamos los frentes de Trabajo Existentes..}
          Q_Ordenes.SQL.Clear ;
          Q_Ordenes.SQL.Add ('select sNumeroOrden from ordenesdetrabajo where sContrato =:Contrato ');
          Q_Ordenes.params.ParamByName('Contrato').DataType := ftString ;
          Q_Ordenes.params.ParamByName('Contrato').Value    := Global_Contrato ;
          Q_Ordenes.Open ;

          {Obtenemoss los dias reportados para los avances del fente de trabajo..}
          connection.QryBusca2.Active := False ;
          connection.QryBusca2.SQL.Clear ;
          connection.QryBusca2.SQL.Add ( 'select min(dIdFecha) as dIdFecha from reportediario where sContrato =:Contrato '+
                                        'and sNumeroOrden =:Orden group by sContrato ');
          connection.QryBusca2.params.ParamByName('Contrato').DataType := ftString ;
          connection.QryBusca2.params.ParamByName('Contrato').Value    := Global_Contrato ;
          connection.QryBusca2.params.ParamByName('Orden').DataType    := ftString ;
          connection.QryBusca2.params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
          connection.QryBusca2.Open ;

          if connection.QryBusca2.RecordCount > 0 then
             dFechaAvance := connection.QryBusca2.FieldValues['dIdFecha']
          else
             dFechaAvance := reportediario.FieldValues['dIdFecha'];

          {Ahora Actualizamos los avances del Frente de Trabajo..}
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'UPDATE avancesglobalesxorden SET dAvance = 0.00 ' +
                                        'WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ' +
                                        'And dIdFecha >= :FechaI And dIdFecha <= :FechaF');
          connection.zCommand.params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.params.ParamByName('Contrato').Value    := Global_Contrato ;
          connection.zCommand.params.ParamByName('Convenio').DataType := ftString ;
          connection.zCommand.params.ParamByName('Convenio').Value    := Global_Convenio ;
          connection.zCommand.params.ParamByName('Orden').DataType    := ftString ;
          connection.zCommand.params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
          connection.zCommand.params.ParamByName('FechaI').DataType   := ftDate ;
          connection.zCommand.params.ParamByName('FechaI').Value      := dFechaAvance;
          connection.zCommand.params.ParamByName('FechaF').DataType   := ftDate ;
          connection.zCommand.params.ParamByName('FechaF').Value      := reportediario.FieldValues['dIdFecha'];
          connection.zCommand.ExecSQL ;

          Str((reportediario.FieldValues['dIdFecha'] - dFechaAvance):4:0, strCadena);
          pbMigracion.Visible  := True ;
          pbMigracion.Min      := 1 ;
          pbMigracion.Max      := StrToInt(strCadena) + 1 ;
          pbMigracion.Position := 1 ;

          strCadena := 'Avanzada';
          While dFechaAvance <= reportediario.FieldValues['dIdFecha'] Do
          Begin
               try
                   If OrdenesdeTrabajo.RecordCount > 1 Then
                      cfnCalculaAvances (global_contrato, tsNumeroOrden.Text, global_convenio , 'NIL', True, dFechaAvance, strCadena , frmDiarioTurno)
                   Else
                      cfnCalculaAvances (global_contrato, tsNumeroOrden.Text, global_convenio , 'NIL', False , dFechaAvance, strCadena, frmDiarioTurno) ;
               except
                   on e : exception do begin
                       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al calcular avances al salvar registro', 0);
                   end;
               end;
              pbMigracion.Position := pbMigracion.Position + 1 ;
              dFechaAvance := dFechaAvance + 1 ;
          End
      End ;
      pbMigracion.Visible  := False ;
      MessageDlg('Los Avances se han calculado de acuerdo al convenio Actual!', mtInformation, [mbOk], 0);
  End ;

  // Termino de verificar la existencia de reportes diario ...
  OpcButton := '' ;
  frmBarra1.btnPostClick(Sender);

  tdIdFecha.Enabled := False ;
  tsIdTurno.ReadOnly := True ;
  tsNumeroReporte.ReadOnly := True ;
  tsTiempo.ReadOnly := True ;
  tsInicioPlatica.ReadOnly := True ;
  tsFinalPlatica.ReadOnly := True ;
  tsTema.ReadOnly := True ;

  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Grid_Reportes.SetFocus ;
  TabRDiario.Enabled := False;

  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  tdIdFecha.Enabled := False ;
  tsIdTurno.ReadOnly := True ;
  tsNumeroReporte.ReadOnly := True ;
  tsTiempo.ReadOnly := True ;
  tsInicioPlatica.ReadOnly := True ;
  tsFinalPlatica.ReadOnly := True ;
  tsTema.ReadOnly := True ;
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  TabRDiario.Enabled := False;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmDiarioTurno.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmDiarioTurno.tBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       cmdAceptar.SetFocus;
end;

procedure TfrmDiarioTurno.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmDiarioTurno.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmDiarioTurno.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmDiarioTurno.cbPartidaEnter(Sender: TObject);
begin
    cbPartida.Color := global_color_entradaERP;
end;

procedure TfrmDiarioTurno.cbPartidaExit(Sender: TObject);
begin
    cbPartida.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.chkConclusionClick(Sender: TObject);
begin
    if chkConclusion.Checked then
    begin
        chkDesarrollo.Checked := False;
        chkInicio.Checked := False;
    end;
end;

procedure TfrmDiarioTurno.chkDesarrolloClick(Sender: TObject);
begin
    if chkDesarrollo.Checked then
    begin
        chkInicio.Checked := False;
        chkConclusion.Checked := False;
    end;
end;

procedure TfrmDiarioTurno.chkInicioClick(Sender: TObject);
begin
    if chkInicio.Checked then
    begin
        chkDesarrollo.Checked := False;
        chkConclusion.Checked := False;
    end;
end;

procedure TfrmDiarioTurno.cmdCancelarClick(Sender: TObject);
begin
    Panel.Visible := False;
end;

procedure TfrmDiarioTurno.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmDiarioTurno.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmDiarioTurno.Imprimir1Click(Sender: TObject);
begin
  try
      sReporteDiario:='normal';
 {     If ReporteDiario.RecordCount > 0 Then
      Begin
          If OrdenesdeTrabajo.RecordCount > 1 Then
              cfnCalculaAvances (ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], 'NIL' , ReporteDiario.FieldValues['sIdTurno'] , True , tdIdFecha.Date, 'Avanzada' , frmDiarioTurno)
          Else
              cfnCalculaAvances (ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], 'NIL' , ReporteDiario.FieldValues['sIdTurno'] , False , tdIdFecha.Date, 'Avanzada', frmDiarioTurno);
      end ;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al calcular avances antes de imprimir', 0);
      end;
  end;

  try    }
      if connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA' then
          procReporteDiarioCotemarProg(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmDiarioTurno, rDiario.OnGetValue, rDiario.OnDblClickObject, ReporteDiario.FieldValues['lMostrarPartidasAnt'] = 'Si', connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP))
      Else
          if connection.contrato.FieldValues['sTipoObra'] = 'OPTATIVA' then
              procReporteDiarioCotemarOpt(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmDiarioTurno, rDiario.OnGetValue, ReporteDiario.FieldValues['lMostrarPartidasAnt'] = 'Si', connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP))
          Else
              if connection.contrato.FieldValues['sTipoObra'] = 'BARCO' then
              begin
                 { IMPRIME BARCO...}
                 try
                   PanelProgress.Visible := True;
                   Label15.Refresh;
                   Label16.Refresh;
                   Label17.Refresh;
                   ProgressBar1.Position := 0;
                   //RngTipoAjuste := ComboBox1.ItemIndex;
                   procReporteBarco(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['dIdFecha'], frmDiarioTurno, rDiario.OnGetValue, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP));
                 finally
                   PanelProgress.Visible := False;
                 end;
                 {Actualiza Usuario Barco 23 Febrero de 2010..}
                 connection.QryBusca.Active := False;
                 connection.QryBusca.SQL.Clear;
                 connection.QryBusca.SQL.Add('Update reportediario set sIdUsuarioBarco ="" where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno ');
                 connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
                 connection.QryBusca.ParamByName('Fecha').AsDate      := reporteDiario.FieldValues['dIdFecha'] ;
                 connection.QryBusca.ParamByName('Orden').AsString    := reporteDiario.FieldValues['sNumeroOrden'];
                 connection.QryBusca.ParamByName('Turno').AsString    := reporteDiario.FieldValues['sIdTurno'];
                 connection.QryBusca.ExecSQL;
              end
              else
                  if connection.contrato.FieldValues['sTipoObra'] = 'MIXTA' then
                  begin
                      if ReporteDiario.RecordCount > 0 then  begin
                         QryReporteFotografico.Active := False;
                         QryReporteFotografico.SQL.Clear;
                         QryReporteFotografico.SQL.Add('Select sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion From reportefotografico ' +
                                                       'Where sContrato = :Contrato And sNumeroReporte = :Reporte And lIncluye = "Si" Order By iImagen');
                         QryReporteFotografico.ParamByName('contrato').AsString := global_contrato;
                         QryReporteFotografico.ParamByName('Reporte').AsString  := ReporteDiario.FieldByName('sNumeroReporte').AsString;
                         QryReporteFotografico.Open;

                         { IMPRIME REPORTE DIARIO MIXTO..}
                         procReporteDiarioCotemarMix(Self, DiarioGetValue, DiarioDblClickObject, global_contrato, ReporteDiario.FieldByName('sNumeroOrden').AsString, ReporteDiario.FieldByName('sNumeroReporte').AsString, ReporteDiario.FieldByName('sIdConvenio').AsString, ReporteDiario.FieldValues['dIdFecha'], global_turno, 'Screen',false,connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP));
                     end;
                  end;
  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir reporte diario', 0);
      end;
  end;
end;

procedure TfrmDiarioTurno.ImprimirPersonalEqyHerramienta1Click(Sender: TObject);
begin
  try
      sReporteDiario:='normal';
      If ReporteDiario.RecordCount > 0 Then
      Begin
          If OrdenesdeTrabajo.RecordCount > 1 Then
               cfnCalculaAvances (ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], 'NIL' , ReporteDiario.FieldValues['sIdTurno'] , True , tdIdFecha.Date, 'Avanzada' , frmDiarioTurno)
          Else
               cfnCalculaAvances (ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], 'NIL' , ReporteDiario.FieldValues['sIdTurno'] , False , tdIdFecha.Date, 'Avanzada', frmDiarioTurno) ;
      end ;

      if connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA' then
          procReporteDiarioPersonal_EQ_H(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmDiarioTurno, rDiario.OnGetValue,connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP) )
      Else
          if connection.contrato.FieldValues['sTipoObra'] = 'OPTATIVA' then
            procReporteDiarioCotemarOpt(ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmDiarioTurno, rDiario.OnGetValue, false, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP))

  except
      on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir reporte diario personal', 0);
      end;
  end;
end;

procedure TfrmDiarioTurno.ImprimirReportedeVisita1Click(Sender: TObject);
begin

     procReporteVisitadeObra(ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'], ReporteDiario.FieldValues['dIdFecha'], frmDiarioTurno, rDiario.OnGetValue);
end;


procedure TfrmDiarioTurno.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmDiarioTurno.Grid_ReportesCellClick(Column: TColumn);
begin
    try
      if reportefotografico.RecordCount = 0 then
      begin
          if pgDiario.ActivePageIndex = 1 then
          begin
              ReporteFotografico.Active := False ;
              ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
              ReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
              ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
              ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
              ReporteFotografico.Open ;

              If ReporteFotografico.State <> dsInactive Then
                 If ReporteFotografico.RecordCount > 0 Then
                 Begin
                     btnSaveImage.Enabled := True ;
                     btnEliminar.Enabled := True;
                     BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
                 End ;

              //Consultamos las partidas afectadas en el Reporte Diario..
              partidas.Active := False ;
              partidas.Params.ParamByName('Contrato').DataType := ftString ;
              partidas.Params.ParamByName('Contrato').Value    := global_contrato ;
              partidas.Params.ParamByName('orden').DataType    := ftString ;
              partidas.Params.ParamByName('orden').Value       := reportediario.FieldValues['sNumeroOrden'] ;
              partidas.Params.ParamByName('fecha').DataType    := ftDate ;
              partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
              partidas.Params.ParamByName('turno').DataType    := ftString ;
              partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
              partidas.Open ;
          end;
      end;
    Except
    end;
end;

procedure TfrmDiarioTurno.Grid_ReportesEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
      frmBarra1.btnCancel.Click ;
End;

procedure TfrmDiarioTurno.HistorialdeReprogramaciones1Click(Sender: TObject);
begin
  ZHistorialRep.Active := false;
  ZHistorialRep.ParamByName('contrato').AsString := global_contrato;
  ZHistorialRep.Open;
  if ZHistorialRep.RecordCount > 0 then begin
      reporteHistorialRep.LoadFromFile(global_files + global_miReporte + '_hitorialReprogramaciones.fr3');
      reporteHistorialRep.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  end;
end;

procedure TfrmDiarioTurno.DiarioGetValue(const VarName: String;
  var Value: Variant);
begin
   if CompareText(VarName, 'Avance_Patio') = 0 then
      Value := ReporteDiario.FieldByName('AvancePatio').AsString;

   if CompareText(VarName, 'CAD_ANEXOS') = 0 then
      Value := CadAnexos;

   If CompareText(VarName, 'FECHA_REPORTECONS') = 0 then
       Value := global_fecha_reportecons ;
   If CompareText(VarName, 'FECHA_REPORTE') = 0 then
       Value := global_fecha_barco ;
   If CompareText(VarName, 'DIAS_TRANSCURRIDOS') = 0 then
       Value := global_dias_por_transcurrir ;
   If CompareText(VarName, 'DIAS_POR_TRANSCURRIR') = 0 then
       Value := global_dias_transcurridos ;
   If CompareText(VarName, 'EMBARCACION') = 0 then
       Value := global_nombre_Embarcacion ;

  If CompareText(VarName, 'TITULO_CENTRO') = 0 then
      Value := sTituloCentro ;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DE LA ORDEN DE TRABAJO ' + tsNumeroOrden.Text ;

  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := ReporteDiario.FieldValues['dIdFecha']  ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  if CompareText(VarName, 'sTexto') = 0 then
    If uppercase(ReporteDiario.FieldByname('lstatus').asstring) = 'AUTORIZADO' Then
      Value := ' ';


  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If ReporteDiario.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;


  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;

  If CompareText(VarName, 'Oficio_Orden') = 0 then
      Value := sFolio  ;

  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;

  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;

  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;

  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;
    If CompareText(VarName, 'SUMPERSONAL') = 0 then
      Value := SumaPersonal ;
  If CompareText(VarName, 'SUMEQUIPOS') = 0 then
      Value := SumaEquipos ;


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;
  If CompareText(VarName, 'FECHA_REPSOL') = 0 then
      Value := sFechaReporte ;

  If CompareText(VarName, 'NOM_PLATAFORMA1') = 0 then
      Value := sPlataforma1 ;
  If CompareText(VarName, 'NOM_PLATAFORMA2') = 0 then
      Value := sPlataforma2 ;
  If CompareText(VarName, 'NOM_PLATAFORMA3') = 0 then
      Value := sPlataforma3 ;
  If CompareText(VarName, 'NOM_PLATAFORMA4') = 0 then
      Value := sPlataforma4 ;
  If CompareText(VarName, 'NOM_PLATAFORMA5') = 0 then
      Value := sPlataforma5 ;
  If CompareText(VarName, 'NOM_PLATAFORMA6') = 0 then
      Value := sPlataforma6 ;
  If CompareText(VarName, 'NOM_PLATAFORMA7') = 0 then
      Value := sPlataforma7 ;

  if QryReporteFotografico.Active then begin
    if QryReporteFotografico.RecordCount > 0 then begin
      If CompareText(VarName, 'HAYFOTOS') = 0 then
        Value := 'SI' ;
    end
    else begin
      If CompareText(VarName, 'HAYFOTOS') = 0 then
        Value := 'NO' ;
    end;
  end;

  If CompareText(VarName, 'REPDIRC17') = 0 then
      Value := global_RepDirC17 ;

  //Aqui consultamos que las ordenes esten autorizadas
  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('select * from reportediario where dIdFecha =:fecha and lStatus  <> "Autorizado" '+
                              'and sContrato <> :Contrato');
  connection.QryBusca.ParamByName('Contrato').AsString := global_contrato_barco;
  connection.QryBusca.ParamByName('Fecha').AsDate      := reporteDiario.FieldValues['dIdFecha'];
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'No';
  end
  else
  begin
      if CompareText(VarName, 'REPORTES_AUTORIZADOS') = 0 then
         Value := 'Si';
  end;

end;

procedure TfrmDiarioTurno.ds_ordenesdetrabajoStateChange(Sender: TObject);
begin
 {  ReporteDiario.Active := False ;
   ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
   ReporteDiario.Params.ParamByName('contrato').Value    := global_contrato ;
   ReporteDiario.Params.ParamByName('orden').DataType    := ftString ;
   ReporteDiario.Params.ParamByName('orden').Value       := tsNumeroOrden.Text ;
   ReporteDiario.Open ; }
end;

procedure TfrmDiarioTurno.ReporteDiarioAfterScroll(DataSet: TDataSet);
Var
    Valido : Boolean ;
begin
    convenio_reporte := '' ;

    bImagen.Picture.LoadFromFile('') ;
    bImagen.Picture.Bitmap := Nil ;

    tsDescripcion.ReadOnly := True ;
    CheckIncluye.Enabled := False ;
    tsDescripcion.Text := '' ;
    bImagen.Picture.Bitmap := Nil ;
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnSaveImage.Enabled := False ;
    btnEliminar.Enabled := False ;
    BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
    If Reportediario.RecordCount > 0 then
    Begin
        tsDescripcion.Text := '' ;
        param_global_contrato := global_contrato;
        global_fecha := ReporteDiario.FieldValues['dIdFecha'] ;
        global_orden := ReporteDiario.FieldValues['sNumeroOrden'] ;
        global_turno_reporte := ReporteDiario.FieldValues['sIdTurno'] ;
        convenio_reporte := ReporteDiario.FieldValues['sIdConvenio'] ;
        tdIdFecha.Date := ReporteDiario.FieldValues['dIdFecha'] ;
        tsIdTurno.KeyValue := ReporteDiario.FieldValues['sIdTurno'] ;
        tsNumeroReporte.Text := ReporteDiario.FieldValues['sNumeroReporte'] ;
        tsHoraInicio2.Text := ReporteDiario.FieldValues['sOperacionInicio'] ;
        tsHoraFinal2.Text := ReporteDiario.FieldValues['sOperacionFinal'] ;
        tsTiempoEfectivo.Text := ReporteDiario.FieldValues['sTiempoEfectivo'] ;
        tsTiempoMuerto.Text := ReporteDiario.FieldValues['sTiempoMuerto'] ;
        tsTiempoMuertoContrato.Text := ReporteDiario.FieldValues['sTiempoMuertoReal'] ;
        tsTiempo.Text := ReporteDiario.FieldValues['sTiempo'] ;
        tsTransporte.Text := ReporteDiario.FieldValues['sTransporte'] ;
        tsInicioPlatica.Text := ReporteDiario.FieldValues['sInicioPlatica'] ;
        tsFinalPlatica.Text := ReporteDiario.FieldValues['sFinalPlatica'] ;
        tsTema.Text := ReporteDiario.FieldValues['sTema'] ;
        ChkPartidasAnteriores.Checked := ReporteDiario.FieldByName('lMostrarPartidasAnt').AsString = 'Si';
        ComboBox1.ItemIndex := ReporteDiario.FieldByName('TipoAjuste').AsInteger;
        ComboBox1.OnChange(Self);

        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select sum(dFrente) as iFrente from jornadasdiarias ' +
                                    'Where sContrato = :contrato and sNumeroOrden = :orden and dIdFecha = :fecha and sTipo =:tipo group by sNumeroOrden') ;
        Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
        Connection.QryBusca.Params.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        Connection.QryBusca.Params.ParamByName('tipo').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('tipo').Value := 'Disponibilidad del Sitio' ;
        Connection.QryBusca.Open ;
        lblError2.Caption := '' ;
        If Connection.QryBusca.RecordCount > 0 Then
            If Connection.QryBusca.FieldValues['iFrente'] > ReporteDiario.FieldValues['iPersonal'] Then
                lblError2.Caption := 'El total de personal manifestado en la suma de disponibilidades del sitio es distinto al total de personal manifestado en las categorias de personal del reporte diario' ;

        If tsInicioPlatica.Text > tsHoraInicio2.Text Then
            lblError.Caption := 'La hora de inicio de las platicas es mayor a la hora de inicio de actividades'
        Else
            lblError.Caption := '' ;

        if pgDiario.ActivePageIndex = 1 then
        begin
            ReporteFotografico.Active := False ;
            ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
            ReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
            ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
            ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
            ReporteFotografico.Open ;

            If ReporteFotografico.State <> dsInactive Then
               If ReporteFotografico.RecordCount > 0 Then
               Begin
                   btnSaveImage.Enabled := True ;
                   btnEliminar.Enabled := True;
                   BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
               End ;

            //Consultamos las partidas afectadas en el Reporte Diario..
            partidas.Active := False ;
            partidas.Params.ParamByName('Contrato').DataType := ftString ;
            partidas.Params.ParamByName('Contrato').Value    := global_contrato ;
            partidas.Params.ParamByName('orden').DataType    := ftString ;
            partidas.Params.ParamByName('orden').Value       := reportediario.FieldValues['sNumeroOrden'] ;
            partidas.Params.ParamByName('fecha').DataType    := ftDate ;
            partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
            partidas.Params.ParamByName('turno').DataType    := ftString ;
            partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
            partidas.Open ;
        end;

        Platicas.Active := False ;
        Platicas.Params.ParamByName('Contrato').DataType := ftString ;
        Platicas.Params.ParamByName('contrato').Value  := global_contrato ;
        Platicas.Params.ParamByName('fecha').DataType := ftDate ;
        Platicas.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
        Platicas.Params.ParamByName('Orden').DataType := ftString ;
        Platicas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Platicas.Open ;
        If Platicas.RecordCount > 0 Then
            tsTema.Text := Platicas.FieldValues['sTema'] ;
    End
    Else
    Begin
        ReporteFotografico.Active := False ;
        ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
        ReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
        ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
        ReporteFotografico.Params.ParamByName('Reporte').Value := '' ;
        ReporteFotografico.Open ;

        global_orden := '' ;
        global_turno_reporte := '' ;
        tdIdFecha.Date := Date ;
        tsIdTurno.KeyValue := '' ;
        tsNumeroReporte.Text := '' ;
        tsHoraInicio2.Text := '00:00' ;
        tsHoraFinal2.Text := '00:00' ;
        tsTiempoEfectivo.Text := '00:00' ;
        tsTiempoMuerto.Text := '00:00' ;
        tsTiempoMuertoContrato.Text := '00:00' ;
        tsTiempo.Text := '' ;
        tsTransporte.Text := '' ;
        tsInicioPlatica.Text := '00:00' ;
        tsFinalPlatica.Text := '00:00' ;
        tsTema.Text := '' ;
        ChkPartidasAnteriores.Checked := False;
        ComboBox1.ItemIndex := -1;
        ComboBox1.OnChange(Self);
        Platicas.Active := False ;
        Platicas.Params.ParamByName('Contrato').DataType := ftString ;
        Platicas.Params.ParamByName('contrato').Value  := global_contrato ;
        Platicas.Params.ParamByName('fecha').DataType := ftDate ;
        Platicas.Params.ParamByName('fecha').Value := tdIdFecha.Date ;
        Platicas.Params.ParamByName('Orden').DataType := ftString ;
        Platicas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Platicas.Open ;
        If Platicas.RecordCount > 0 Then
            tsTema.Text := Platicas.FieldValues['sTema'] ;
    End ;
end;

procedure TfrmDiarioTurno.tsIdTurnoEnter(Sender: TObject);
begin
    tsIdTurno.Color := global_color_entradaERP;
end;

procedure TfrmDiarioTurno.tsIdTurnoExit(Sender: TObject);
begin
    If OpcButton <> '' Then
        If OpcButton = 'New' Then
        Begin
            lNuevoDia := True ;
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sContrato from reportediario Where sContrato = :contrato And sNumeroOrden = :Orden And ' +
                                        'dIdFecha = :fecha And sIdTurno = :Turno') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').value := global_contrato ;
            Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('orden').value := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
            Connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                lNuevoDia := False
        End ;
    tsIdTurno.Color := global_color_salidaERP;
end;

procedure TfrmDiarioTurno.tsIdTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsNumeroReporte.SetFocus
end;

procedure TfrmDiarioTurno.FormActivate(Sender: TObject);
begin
  {  If lIniciado Then
    Begin
        frmBarra1.btnRefresh.Click ;
        connection.configuracion.refresh ;
        turnos.refresh
    End ;
    lIniciado := True}


    If lIniciado Then
    Begin
      if sOrigContrato<>global_contrato then
        FormShow(Sender)
      else
      begin
        connection.configuracion.refresh ;
        frmBarra1.btnRefresh.Click ;
        turnos.refresh;
      end;
    End ;

end;

procedure TfrmDiarioTurno.Cut2Click(Sender: TObject);
begin
    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioTurno.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
      if reportefotografico.RecordCount = 0 then
      begin
          if pgDiario.ActivePageIndex = 1 then
          begin
              ReporteFotografico.Active := False ;
              ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
              ReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
              ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
              ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
              ReporteFotografico.Open ;

              If ReporteFotografico.State <> dsInactive Then
                 If ReporteFotografico.RecordCount > 0 Then
                 Begin
                     btnSaveImage.Enabled := True ;
                     btnEliminar.Enabled := True;
                     BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
                 End ;

              //Consultamos las partidas afectadas en el Reporte Diario..
              partidas.Active := False ;
              partidas.Params.ParamByName('Contrato').DataType := ftString ;
              partidas.Params.ParamByName('Contrato').Value    := global_contrato ;
              partidas.Params.ParamByName('orden').DataType    := ftString ;
              partidas.Params.ParamByName('orden').Value       := reportediario.FieldValues['sNumeroOrden'] ;
              partidas.Params.ParamByName('fecha').DataType    := ftDate ;
              partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
              partidas.Params.ParamByName('turno').DataType    := ftString ;
              partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
              partidas.Open ;
          end;
      end;
    Except
    end;
end;

procedure TfrmDiarioTurno.Cut1Click(Sender: TObject);
begin
    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
end;

procedure TfrmDiarioTurno.btnExaminarClick(Sender: TObject);
Var
   size: Real ;
   indice   : integer;
   lTamanio : boolean;
begin
  If ReporteDiario.RecordCount > 0 Then
     If frmBarra1.btnCancel.Enabled = False Then
       //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
       Begin
          btnPreview.Enabled :=False;
          sOpcion := 'New' ;
          bImagen.Picture.Bitmap := Nil ;
          btnGrabar.Enabled := True ;
          btnCancelar.Enabled := True ;
          btnSaveImage.Enabled := False ;
          btnExaminar.Enabled := False ;
          btnEditar.Enabled := False ;
          tsDescripcion.ReadOnly := False ;
          CheckIncluye.Checked := True ;
          CheckIncluye.Enabled := True ;
          OpenPicture.Title := 'Inserta Imagen';
          sArchivo := '' ;
          tsDescripcion.Text := '' ;
          lTamanio := True;

          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
          If OpenPicture.Execute then
          begin
              indice := 0;
              OpenPicture.Files.Count;
              while indice < OpenPicture.Files.Count  do
              begin
                  try
                      sArchivo := OpenPicture.Files.Strings[indice] ;
                      size := Tamanyo (sArchivo) ;
                      If size <= 350 Then
                          bImagen.Picture.LoadFromFile(OpenPicture.Files.Strings[indice])
                      Else
                      begin
                          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
                          lTamanio := False;
                      end;
                  except
                      bImagen.Picture.LoadFromFile('') ;
                  end;
                  inc(indice);
              end;
              if lTamanio = False then
                 sArchivo := '';
          end
       end;
      // Else
      //    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioTurno.ReporteFotograficoAfterScroll(
  DataSet: TDataSet);
begin
    bImagen.Picture.LoadFromFile('') ;
    bImagen.Picture.Bitmap := Nil ;
    If btnGrabar.Enabled = False Then
        If ReporteFotografico.RecordCount > 0 then
        Begin
            tsDescripcion.Text := ReporteFotografico.FieldValues['sDescripcion'] ;
            If ReporteFotografico.FieldValues['lIncluye'] = 'Si' Then
                CheckIncluye.Checked := True
            Else
                CheckIncluye.Checked := False;

            if reportefotografico.FieldValues['sWbs'] = '*' then
               cbPartida.KeyValue := Null
            else
               cbPartida.KeyValue := reportefotografico.FieldValues['sWbs'];

            chkInicio.Checked     := false;
            chkDesarrollo.Checked := false;
            chkConclusion.Checked := false;
            if reportefotografico.FieldValues['sFasePartida'] = 'Inicio' then
               chkInicio.Checked := True;
            if reportefotografico.FieldValues['sFasePartida'] = 'Desarrollo' then
               chkDesarrollo.Checked := True;
            if reportefotografico.FieldValues['sFasePartida'] = 'Conclusion' then
               chkConclusion.Checked := True;
            btnPreview.Click;
        End
end;

procedure TfrmDiarioTurno.btnGrabarClick(Sender: TObject);
Var
  iItem    : Integer ;
  indice   : integer;
Begin
  If ReporteDiario.RecordCount > 0 Then
      //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
          If sOpcion = 'New' Then
          Begin
              If sArchivo <> '' Then
              Begin
                  btnPreview.Enabled := True ;
                  iItem  := 1 ;
                  indice := 0;
                  while indice < OpenPicture.Files.Count  do
                  begin
                      sArchivo := OpenPicture.Files.Strings[indice];

                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('select max(iImagen) as iImagen from reportefotografico '+
                                                  'where sContrato =:Contrato and sNumeroOrden =:Orden and dIdFecha =:Fecha and sIdTurno =:Turno group by sContrato');
                      connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
                      connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
                      connection.zcommand.Params.ParamByName('Orden').Value       := ReporteDiario.FieldValues['sNumeroOrden'] ;
                      connection.zcommand.Params.ParamByName('Turno').DataType    := ftString ;
                      connection.zcommand.Params.ParamByName('Turno').Value       := ReporteDiario.FieldValues['sIdTurno'] ;
                      connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                      connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
                      connection.zCommand.Open;

                      if connection.zCommand.RecordCount > 0 then
                         iItem := connection.zCommand.FieldValues['iImagen'] + 1;

                      connection.zCommand.Active := False ;
                      connection.zCommand.SQL.Clear ;
                      connection.zcommand.SQL.Add ( 'Insert Into reportefotografico (sContrato, sNumeroReporte, sIdTurno, dIdFecha, iImagen, bImagen, sDescripcion, lIncluye, sNumeroOrden, sWbs, sNumeroActividad, sFasePartida) ' +
                                                    'Values (:Contrato, :Reporte, :Turno, :Fecha, :Item, :Imagen, :Descripcion, :Incluye, :Orden, :Wbs, :Actividad, :Fase)') ;
                      connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                      connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
                      connection.zcommand.Params.ParamByName('Reporte').DataType  := ftString ;
                      connection.zcommand.Params.ParamByName('Reporte').Value     := ReporteDiario.FieldValues['sNumeroReporte'] ;
                      connection.zcommand.Params.ParamByName('Turno').DataType    := ftString ;
                      connection.zcommand.Params.ParamByName('Turno').Value       := ReporteDiario.FieldValues['sIdTurno'] ;
                      connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                      connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
                      connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
                      connection.zcommand.Params.ParamByName('Item').Value        := iItem ;
                      connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                      connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                      connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                      connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
                      connection.zcommand.Params.ParamByName('Orden').Value          := tsNumeroOrden.Text ;
                      connection.zcommand.Params.ParamByName('Incluye').DataType     := ftString ;
                      If CheckIncluye.Checked  Then
                         connection.zcommand.Params.ParamByName('Incluye').Value     := 'Si'
                      Else
                         connection.zcommand.Params.ParamByName('Incluye').Value     := 'No' ;

                      connection.zcommand.Params.ParamByName('Wbs').DataType         := ftString ;
                      if cbPartida.KeyValue <> Null then
                         connection.zcommand.Params.ParamByName('Wbs').Value         := Partidas.FieldValues['sWbs'];

                      connection.zcommand.Params.ParamByName('Actividad').DataType  := ftString ;
                      if cbPartida.KeyValue <> Null then
                         connection.zcommand.Params.ParamByName('Actividad').Value   := Partidas.FieldValues['sNumeroActividad'];

                      connection.zcommand.Params.ParamByName('Fase').DataType        := ftString ;
                      connection.zcommand.Params.ParamByName('Fase').Value           := 'Ninguno';
                      if chkInicio.Checked then
                         connection.zcommand.Params.ParamByName('Fase').Value        := 'Inicio';
                      if chkDesarrollo.Checked then
                         connection.zcommand.Params.ParamByName('Fase').Value        := 'Desarrollo';
                      if chkConclusion.Checked then
                         connection.zcommand.Params.ParamByName('Fase').Value        := 'Conclusion';
                      connection.zCommand.ExecSQL ();
                      inc(indice);
                  end;
                  // Actualizo Kardex del Sistema ....
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := 'Agrega Fotografias a Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                  connection.zCommand.ExecSQL ;

              End
          End
          Else
          Begin
              If sArchivo <> '' Then
              Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Update reportefotografico SET bImagen = :Imagen, sDescripcion = :Descripcion, sIdTurno = :Turno, dIdFecha = :Fecha, lIncluye = :Incluye, sWbs =:Wbs, sNumeroActividad =:Actividad, sFasePartida =:Fase ' +
                                                'Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroReporte = :Reporte And iImagen = :Item') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType  := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value     := ReporteFotografico.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Turno').DataType    := ftString ;
                  connection.zcommand.Params.ParamByName('Turno').Value       := ReporteDiario.FieldValues['sIdTurno'] ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value       := ReporteDiario.FieldValues['dIdFecha'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value        := ReporteFotografico.FieldValues['iImagen'] ;
                  connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
                  connection.zcommand.Params.ParamByName('Orden').Value          := tsNumeroOrden.Text ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType     := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;

                  connection.zcommand.Params.ParamByName('Wbs').DataType         := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Wbs').Value         := Partidas.FieldValues['sWbs'];

                  connection.zcommand.Params.ParamByName('Actividad').DataType  := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Actividad').Value   := Partidas.FieldValues['sNumeroActividad'];

                  connection.zcommand.Params.ParamByName('Fase').DataType        := ftString ;
                  connection.zcommand.Params.ParamByName('Fase').Value           := 'Ninguno';
                  if chkInicio.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Inicio';
                  if chkDesarrollo.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Desarrollo';
                  if chkConclusion.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Conclusion';
                  connection.zCommand.ExecSQL ();

                  // Actualizo Kardex del Sistema ....
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := 'Actualiza Fotografias No. '+ IntToStr(reportefotografico.FieldValues['iImagen'])+' de Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                  connection.zCommand.ExecSQL ;
              End
              Else
              Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Update reportefotografico SET sDescripcion = :Descripcion, sIdTurno = :Turno, dIdFecha = :Fecha, lIncluye = :Incluye, sWbs =:Wbs, sNumeroActividad =:Actividad, sFasePartida =:Fase ' +
                                                'Where sContrato = :contrato and sNumeroOrden =:Orden And sNumeroReporte = :Reporte And iImagen = :Item') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType    := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value       := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType     := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value        := ReporteFotografico.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Turno').DataType       := ftString ;
                  connection.zcommand.Params.ParamByName('Turno').Value          := ReporteDiario.FieldValues['sIdTurno'] ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType       := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value          := ReporteDiario.FieldValues['dIdFecha'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType        := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value           := ReporteFotografico.FieldValues['iImagen'] ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value    := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Orden').DataType       := ftString ;
                  connection.zcommand.Params.ParamByName('Orden').Value          := tsNumeroOrden.Text ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType     := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;

                  connection.zcommand.Params.ParamByName('Wbs').DataType         := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Wbs').Value         := Partidas.FieldValues['sWbs'];

                  connection.zcommand.Params.ParamByName('Actividad').DataType  := ftString ;
                  if cbPartida.KeyValue <> Null then
                     connection.zcommand.Params.ParamByName('Actividad').Value   := Partidas.FieldValues['sNumeroActividad'];

                  connection.zcommand.Params.ParamByName('Fase').DataType        := ftString ;
                  connection.zcommand.Params.ParamByName('Fase').Value           := 'Ninguno';
                  if chkInicio.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Inicio';
                  if chkDesarrollo.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Desarrollo';
                  if chkConclusion.Checked then
                     connection.zcommand.Params.ParamByName('Fase').Value        := 'Conclusion';
                  connection.zCommand.ExecSQL ();

                  // Actualizo Kardex del Sistema ....
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                               'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
                  connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
                  connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
                  connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := 'Agrega Fotografias No. '+ IntToStr(reportefotografico.FieldValues['iImagen'])+' de Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
                  connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
                  connection.zCommand.ExecSQL ;
              End
          End ;
          ReporteFotografico.Active := False ;
          ReporteFotografico.Open ;
          btnGrabar.Enabled := False ;
          btnCancelar.Enabled := False ;
          btnSaveImage.Enabled := True ;
          btnExaminar.Enabled := True ;
          btnEditar.Enabled := True ;
          btnEliminar.Enabled := True ;
          btnPreview.Enabled := True ;
          tsDescripcion.ReadOnly := True ;
          CheckIncluye.Enabled := False ;
          sOpcion := '';
          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDiarioTurno.btnEliminarClick(Sender: TObject);
begin
  If ReporteDiario.RecordCount > 0 Then
     If frmBarra1.btnCancel.Enabled = False Then
       //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
       begin
           If ReporteFotografico.RecordCount > 0 Then
           Begin
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zcommand.SQL.Add ( 'Delete From reportefotografico Where sContrato = :Contrato and sNumeroOrden =:Orden and sNumeroOrden =:Orden And sNumeroReporte = :Reporte And iImagen = :Item') ;
              connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
              connection.zcommand.Params.ParamByName('Reporte').DataType  := ftString ;
              connection.zcommand.Params.ParamByName('Reporte').Value     := ReporteFotografico.FieldValues['sNumeroReporte'] ;
              connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
              connection.zcommand.Params.ParamByName('Item').Value        := ReporteFotografico.FieldValues['iImagen'] ;
              connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
              connection.zcommand.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
              connection.zCommand.ExecSQL ;

              // Actualizo Kardex del Sistema ....
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zcommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                           'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
              connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
              connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
              connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
              connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
              connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Descripcion').Value := 'Elimina Fotografia No. '+ IntToStr(reportefotografico.FieldValues['iImagen'])+' de Reporte Diario ' + tsNumeroReporte.Text + ' del dia ' + DateToStr(tdIdFecha.Date) ;
              connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
              connection.zCommand.ExecSQL ;

              bImagen.Picture.Bitmap := Nil ;
              bImagen.Picture.LoadFromFile('') ;
              tsDescripcion.Text := '' ;
              CheckIncluye.Checked := False ;
              ReporteFotografico.Refresh ;
              BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
              If ReporteFotografico.RecordCount > 0 Then
              begin
                   btnEliminar.Enabled := True;
                   BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
              end
              Else
              begin
                   btnEliminar.Enabled := False ;
                   BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
              end;
          End;
       end ;
       //else
       //    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
end;

procedure TfrmDiarioTurno.TabFotograficoShow(Sender: TObject);
begin
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    If ReporteFotografico.State <> dsInactive Then
        If ReporteFotografico.RecordCount > 0 Then
        Begin
            btnSaveImage.Enabled := True ;
            btnEliminar.Enabled := True;
        End
        Else
        Begin
            btnSaveImage.Enabled := False ;
            btnEliminar.Enabled := False ;
        End;
    if Assigned(BotonPermiso1) then
      BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDiarioTurno.btnCancelarClick(Sender: TObject);
begin
    btnPreview.Enabled := True ;
    tsDescripcion.ReadOnly := True ;
    CheckIncluye.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnGrabar.Enabled := False ;
    BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
    If ReporteFotografico.State <> dsInactive Then
        If ReporteFotografico.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
             Grid_Imagenes.SetFocus
         End
         Else
         Begin
             btnSaveImage.Enabled := False ;
             btnEliminar.Enabled := False ;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
         End;
    sOpcion := '' ;
end;

procedure TfrmDiarioTurno.btnComentariosClick(Sender: TObject);
begin

   connection.QryBusca.Active := False ;
   connection.QryBusca.SQL.Clear ;
   connection.QryBusca.SQL.Add('select mDescripcion from bitacoradeactividades '+
                               'where sContrato =:Contrato and dIdFecha =:fecha and sIdTurno =:Turno and sNumeroOrden =:orden '+
                               'and sIdTipoMovimiento = "N" and mDescripcion <> ""') ;
   connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
   connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
   connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
   connection.QryBusca.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
   connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
   connection.QryBusca.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
   connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
   connection.QryBusca.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
   connection.QryBusca.Open ;

   while not connection.QryBusca.Eof do
   begin
       mReporte.Text := mReporte.Text + connection.QryBusca.FieldValues['mDescripcion'];
       connection.QryBusca.Next;
   end;       
   Panel.Visible := True;

end;

procedure TfrmDiarioTurno.btnDownClick(Sender: TObject);
begin
     OrdenarFotos('Abajo');
end;

procedure TfrmDiarioTurno.btnEditarClick(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = False Then
      If ReporteFotografico.RecordCount > 0 Then
      Begin
          //If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
          //Begin
              btnPreview.Enabled := False ;
              sOpcion := 'Edit' ;
              sArchivo := '' ;
              btnGrabar.Enabled := True ;
              btnCancelar.Enabled := True ;
              btnExaminar.Enabled := False ;
              btnEditar.Enabled := False ;
              btnSaveImage.Enabled := False ;
              btnEliminar.Enabled := False ;
              tsDescripcion.ReadOnly := False ;
              CheckIncluye.Enabled := True ;
              //buscamos la partida en el comentario si existe..
              if cbPartida.KeyValue = Null then
              begin
                  partidas.First;
                  while not partidas.Eof do
                  begin
                      if pos(partidas.FieldValues['sNumeroActividad'], tsDescripcion.Text) > 0 then
                      begin
                          cbPartida.KeyValue := partidas.FieldValues['sWbs'];
                          partidas.Last;
                      end;
                      partidas.Next;
                  end;
              end;
//              BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
//          End
//          else
//             MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
      End
end;

procedure TfrmDiarioTurno.bImagenClick(Sender: TObject);
Var
   size: Real ;
begin
    If btnExaminar.Enabled = False Then
    Begin
        OpenPicture.Title := 'Inserta Imagen';
        sArchivo := '' ;
        If OpenPicture.Execute then
        begin
            try
                sArchivo := OpenPicture.FileName ;
                size := Tamanyo (sArchivo) ;
                If size <= 350 Then
                Begin
                      bImagen.Picture.LoadFromFile(OpenPicture.FileName)
                End
                Else
                      MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
             except
                bImagen.Picture.LoadFromFile('') ;
             end
        end
    End
end;

Function TfrmDiarioTurno.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

procedure TfrmDiarioTurno.btnSaveImageClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
      If ReporteFotografico.RecordCount > 0 Then
      Begin
          btnPreview.Click ;
          SaveImage.Title := 'Respaldar Imagen';
          BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
          SaveImage.FileName := ReporteDiario.FieldValues['sNumeroReporte'] + '-' + ReporteFotografico.FieldByName('iImagen').AsString ;
          If SaveImage.Execute Then
              bImagen.Picture.SaveToFile(SaveImage.FileName)
      End
end;

procedure TfrmDiarioTurno.Grid_ImagenesEnter(Sender: TObject);
begin
    If ReporteFotoGrafico.RecordCount > 0 then
        bImagen.Picture.LoadFromFile('') ;
    Panel.Visible := False;
end;

procedure TfrmDiarioTurno.btnPreviewClick(Sender: TObject);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    If ReporteFotoGrafico.RecordCount > 0 then
    Begin
        bImagen.Picture.LoadFromFile('') ;
        If btnGrabar.Enabled = False Then
            If ReporteFotografico.RecordCount > 0 then
            Begin
                Connection.QryBusca.Active := False ;
                Connection.QryBusca.SQL.Clear ;
                Connection.QryBusca.SQL.Add('Select bImagen from reportefotografico Where sContrato = :Contrato And sNumeroReporte = :Reporte and iImagen = :imagen') ;
                Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
                Connection.QryBusca.Params.ParamByName('Reporte').DataType := ftString ;
                Connection.QryBusca.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
                Connection.QryBusca.Params.ParamByName('imagen').DataType := ftInteger ;
                Connection.QryBusca.Params.ParamByName('imagen').Value := ReporteFotografico.FieldValues['iImagen'] ;
                Connection.QryBusca.Open ;
                If Connection.QryBusca.RecordCount > 0 Then
                Begin
                    BlobField := Connection.QryBusca.FieldByName('bImagen') ;
                    BS := Connection.QryBusca.CreateBlobStream(BlobField, bmRead) ;
                      //.CreateBlobStream ( BlobField , bmRead ) ;
                    If bs.Size > 1 Then
                    Begin
                        try
                            Pic:=TJpegImage.Create;
                            try
                               Pic.LoadFromStream(bS);
                               bImagen.Picture.Graphic := Pic;
                            finally
                               Pic.Free;
                            end;
                        finally
                            bS.Free
                        End
                    End
                End ;
                tsDescripcion.Text := ReporteFotografico.FieldValues['sDescripcion'] ;
                If ReporteFotografico.FieldValues['lIncluye'] = 'Si' Then
                    CheckIncluye.Checked := True
                Else
                    CheckIncluye.Checked := False

            End
    End
end;

procedure TfrmDiarioTurno.bkReporteClick(Sender: TObject);
var
    lOrdenTierra  : Boolean ;
    sReporte      : String ;
    iReporte      : Real ;
    txtAux        : String ;
    Caracteres    : Byte ;
    registro      : byte ;
    sParametro    : String ;
    dFechaFinal   : tDate ;
begin
   // para copia de reporte ...
   // primero detecto el turno del reporte para tomar el consecutivo y hacer el formato ...
    If Reportediario.RecordCount > 0 then
      If frmBarra1.btnCancel.Enabled = False Then
      Begin
         If tsNumeroOrden.Text = global_contrato Then
         Begin
             lOrdenTierra := False ;
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sPrefijo from turnos where sContrato = :contrato and sIdTurno = :Turno And sOrigenTierra = "Si"') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('turno').Value := tsIdTurno.KeyValue ;
             Connection.QryBusca.Open ;
             If Connection.QryBusca.RecordCount > 0 Then
             Begin
                 lOrdenTierra := True ;
                 If Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) <> '' Then
                     sReporte := Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) + '-'  ;

                 Connection.QryBusca.Active := False ;
                 Connection.QryBusca.SQL.Clear ;
                 Connection.QryBusca.SQL.Add('Select sFormato from configuracion where sContrato = :contrato') ;
                 Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                 Connection.QryBusca.Open ;
                 sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;

                 Connection.QryBusca.Active := False ;
                 Connection.QryBusca.SQL.Clear ;
                 Connection.QryBusca.SQL.Add('Select iConsecutivoTierra from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
                 Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                 Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
                 Connection.QryBusca.Open ;
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivoTierra'] ;
             End
             Else
             Begin
                 Connection.QryBusca.Active := False ;
                 Connection.QryBusca.SQL.Clear ;
                 Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo from configuracion where sContrato = :contrato') ;
                 Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
                 Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                 Connection.QryBusca.Open ;
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;
                 sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;
             End ;

             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                  txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;
             If lOrdenTierra Then
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ( 'UPDATE ordenesdetrabajo Set iConsecutivoTierra = :Consecutivo Where sContrato = :Contrato And sNumeroOrden = :Orden') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End
             Else
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ( 'UPDATE configuracion Set iConsecutivo = :Consecutivo Where sContrato = :Contrato') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End
         End
         Else
         Begin
             lOrdenTierra := False ;
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sPrefijo from turnos where sContrato = :contrato and sIdTurno = :Turno And sOrigenTierra = "Si"') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('turno').Value := tsIdTurno.KeyValue ;
             Connection.QryBusca.Open ;
             If Connection.QryBusca.RecordCount > 0 Then
             Begin
                 lOrdenTierra := True ;
                 If Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) <> '' Then
                     sReporte := Trim ( Connection.QryBusca.FieldValues ['sPrefijo'] ) + '-'  ;
             End ;

             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo, iConsecutivoTierra from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
             Connection.QryBusca.Open ;
             sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;
             If lOrdenTierra Then
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivoTierra']
             Else
                 iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;

             If lOrdenTierra Then
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ( 'UPDATE ordenesdetrabajo Set iConsecutivoTierra = :Consecutivo Where sContrato = :Contrato And sNumeroOrden = :Orden') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End
             Else
             Begin
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add ( 'UPDATE ordenesdetrabajo Set iConsecutivo = :Consecutivo Where sContrato = :Contrato And sNumeroOrden = :Orden') ;
                 connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
                 connection.zcommand.Params.ParamByName('Orden').DataType := ftString ;
                 connection.zcommand.Params.ParamByName('Orden').value := tsNumeroOrden.Text ;
                 connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
                 connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
                 connection.zCommand.ExecSQL ;
             End ;

             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                 txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;
         End ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select sNumeroOrden, dIdFecha, sNumeroReporte From reportediario Where sContrato = :Contrato And sNumeroReporte = :Reporte') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
         Connection.QryBusca.Params.ParamByName('Reporte').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Reporte').Value := sReporte ;
         Connection.QryBusca.Open ;
         If Connection.QryBusca.RecordCount > 0 Then
         Begin
              MessageDlg('El folio a asignar al reporte diario actual existe [' + Connection.QryBusca.FieldValues['sNumeroReporte'] + '] Modifique la configuración de folios.'  , mtWarning, [mbOk], 0) ;
              sReporte := '--FOLIO DUPLICADO--' ;
         End ;

         Connection.QryBusca.Active := False ;
         Connection.QryBusca.SQL.Clear ;
         Connection.QryBusca.SQL.Add('Select max(dIdFecha) as dIdFecha From reportediario Where sContrato = :Contrato And sNumeroOrden = :orden') ;
         Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
         Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
         Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue ;
         Connection.QryBusca.Open ;
         If connection.QryBusca.RecordCount > 0 Then
            dFechaFinal := Connection.QryBusca.FieldValues['dIdFecha'] + 1 ;

         // Ya teniendo el numero de reporte .. hago la copia exacta del reporte anterior ...
         // Primero el reporte de la fecha anterior lo almaceno en el Qry para asignarlo directamente ...
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select * from reportediario where sContrato = :contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
         Begin
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'reportediario')) ;
                 for registro := 0 to QryBk.fieldcount - 1 do
                 begin
                     sparametro := 'param' + trim(inttostr(registro + 1)) ;
                     connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;

                     If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                         connection.zcommand.Params.parambyname(sparametro).value := sReporte
                     Else
                         If QryBk.fields[registro].FullName = 'dIdFecha' Then
                             connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                         Else
                             If QryBk.fields[registro].FullName = 'lStatus' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := 'Pendiente'
                             Else
                                 If QryBk.fields[registro].FullName = 'sIdUsuarioValida' Then
                                     connection.zcommand.Params.parambyname(sparametro).value := null
                                 Else
                                     If QryBk.fields[registro].FullName = 'sIdUsuarioAutoriza' Then
                                         connection.zcommand.Params.parambyname(sparametro).value := null
                                     Else
                                         If QryBk.fields[registro].FullName = 'sIdUsuarioResidente' Then
                                             connection.zcommand.Params.parambyname(sparametro).value := null
                                         Else
                                             If QryBk.fields[registro].IsNull Then
                                                 connection.zcommand.Params.parambyname(sparametro).value := ''
                                             Else
                                                 connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                 end ;
                 connection.zCommand.ExecSQL ;
             except
                 on e : exception do begin
                     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al copiar reporte', 0);
                 end;
             end ;

             // Historico de movimientos....
             // Actualizo Kardex del Sistema ....
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                           'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
             connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
             connection.zcommand.Params.ParamByName('Usuario').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Usuario').Value := Global_Usuario ;
             connection.zcommand.Params.ParamByName('Fecha').DataType := ftDate ;
             connection.zcommand.Params.ParamByName('Fecha').Value := Date ;
             connection.zcommand.Params.ParamByName('Hora').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss', Now) ;
             connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Descripcion').Value := 'Creación del Reporte Diario No. ' + sReporte + ' del dia ' + DateToStr( reportediario.FieldValues['dIdFecha'] + 1 ) ;
             connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Diario' ;
             connection.zCommand.ExecSQL ;
         End ;

         // Jornadas Diarias ...
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select * from jornadasdiarias where sContrato = :contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'jornadasdiarias')) ;
                 while NOT QryBk.Eof Do
                 begin
                     for registro := 0 to QryBk.fieldcount - 1 do
                     begin
                         sparametro := 'param' + trim(inttostr(registro + 1)) ;
                         connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;
                         If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                             connection.zcommand.Params.parambyname(sparametro).value := sReporte
                         Else
                             If QryBk.fields[registro].FullName = 'dIdFecha' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                             Else
                                 If QryBk.fields[registro].IsNull Then
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                     end ;
                     connection.zCommand.ExecSQL ;
                     QryBk.Next
                 End
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al replicar jornadas diarias', 0);
                 end;
             end ;

         // Tramite de Permisos
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select * from tramitedepermisos where sContrato = :contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'tramitedepermisos')) ;
                 while NOT QryBk.Eof Do
                 begin
                     for registro := 0 to QryBk.fieldcount - 1 do
                     begin
                         sparametro := 'param' + trim(inttostr(registro + 1)) ;
                         connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;
                         If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                             connection.zcommand.Params.parambyname(sparametro).value := sReporte
                         Else
                             If QryBk.fields[registro].FullName = 'dIdFecha' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                             Else
                                 If QryBk.fields[registro].IsNull Then
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                     end ;
                     connection.zCommand.ExecSQL ;
                     QryBk.Next ;
                 End
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al replicar tramites de permisos', 0);
                 end;
             end ;

         // Bitacora de Actividades
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select b.* from bitacoradeactividades b ' +
                       'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato and b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = "Notas") ' +
                       'where b.sContrato = :contrato And b.sNumeroOrden = :Orden And b.dIdFecha = :Fecha And b.sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'bitacoradeactividades')) ;
                 while NOT QryBk.Eof Do
                 begin
                     for registro := 0 to QryBk.fieldcount - 1 do
                     begin
                         sparametro := 'param' + trim(inttostr(registro + 1)) ;
                         connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;
                         If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                             connection.zcommand.Params.parambyname(sparametro).value := sReporte
                         Else
                             If QryBk.fields[registro].FullName = 'dIdFecha' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                             Else
                                 If QryBk.fields[registro].IsNull Then
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                     end ;
                     connection.zCommand.ExecSQL ;
                     QryBk.Next
                 End
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al replicar bitacora de actividades', 0);
                 end;
             end ;


         // Bitacora de Personal
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select b.* from bitacoradeactividades a ' +
                       'INNER JOIN bitacoradepersonal b ON (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
                       'where a.sContrato = :contrato And a.sNumeroOrden = :Orden And a.dIdFecha = :Fecha And a.sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'bitacoradepersonal')) ;
                 while NOT QryBk.Eof Do
                 begin
                     for registro := 0 to QryBk.fieldcount - 1 do
                     begin
                         sparametro := 'param' + trim(inttostr(registro + 1)) ;
                         connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;
                         If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                             connection.zcommand.Params.parambyname(sparametro).value := sReporte
                         Else
                             If QryBk.fields[registro].FullName = 'dIdFecha' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                             Else
                                 If QryBk.fields[registro].IsNull Then
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                     end ;
                     connection.zCommand.ExecSQL ;
                     QryBk.Next
                 End
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al replicar bitacora de personal', 0);
                 end;
             end ;

         // Bitacora de Equipos
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select b.* from bitacoradeactividades a ' +
                       'INNER JOIN bitacoradeequipos b ON (b.sContrato = a.sContrato And b.dIdFecha = a.dIdFecha And b.iIdDiario = a.iIdDiario) ' +
                       'where a.sContrato = :contrato And a.sNumeroOrden = :Orden And a.dIdFecha = :Fecha And a.sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'bitacoradeequipos')) ;
                 while NOT QryBk.Eof Do
                 begin
                     for registro := 0 to QryBk.fieldcount - 1 do
                     begin
                         sparametro := 'param' + trim(inttostr(registro + 1)) ;
                         connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;
                         If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                             connection.zcommand.Params.parambyname(sparametro).value := sReporte
                         Else
                             If QryBk.fields[registro].FullName = 'dIdFecha' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                             Else
                                 If QryBk.fields[registro].IsNull Then
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                     end ;
                     connection.zCommand.ExecSQL ;
                     QryBk.Next ;
                 End ;
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al replicar bitacora de equipos', 0);
                 end;
             end ;


         // Reporte Fotografico
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select b.* from reportediario a ' +
                       'INNER JOIN reportefotografico b ON (b.sContrato = a.sContrato And b.sNumeroReporte = a.sNumeroReporte) ' +
                       'where a.sContrato = :contrato And a.sNumeroOrden = :Orden And a.dIdFecha = :Fecha And a.sIdTurno = :Turno') ;
         QryBk.Params.ParamByName('Contrato').DataType := ftString ;
         QryBk.Params.ParamByName('Contrato').Value := global_contrato ;
         QryBk.Params.ParamByName('orden').DataType := ftString ;
         QryBk.Params.ParamByName('orden').Value := reportediario.FieldValues['sNumeroOrden'] ;
         QryBk.Params.ParamByName('fecha').DataType := ftDate ;
         QryBk.Params.ParamByName('fecha').Value := reportediario.FieldValues['dIdFecha'] ;
         QryBk.Params.ParamByName('turno').DataType := ftString ;
         QryBk.Params.ParamByName('turno').Value := reportediario.FieldValues['sIdTurno'] ;
         QryBk.Open ;
         If QryBk.RecordCount > 0 Then
             try
                 connection.zCommand.Active := False ;
                 connection.zCommand.SQL.Clear ;
                 connection.zcommand.SQL.Add (funcsql(QryBk , 'reportefotografico')) ;
                 while NOT QryBk.Eof Do
                 begin
                     for registro := 0 to QryBk.fieldcount - 1 do
                     begin
                         sparametro := 'param' + trim(inttostr(registro + 1)) ;
                         connection.zcommand.Params.parambyname(sparametro).datatype := QryBk.fields[registro].datatype ;
                         If QryBk.fields[registro].FullName = 'sNumeroReporte' Then
                             connection.zcommand.Params.parambyname(sparametro).value := sReporte
                         Else
                             If QryBk.fields[registro].FullName = 'dIdFecha' Then
                                 connection.zcommand.Params.parambyname(sparametro).value := dFechaFinal
                             Else
                                 If QryBk.fields[registro].IsNull Then
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                     end ;
                     connection.zcommand.ExecSQL ;
                     QryBk.Next
                 end
             except
                 on e : exception do begin
                    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al replicar reporte fotografico', 0);
                 end;
             end ;

         SavePlace :=  Reportediario.GetBookmark ;
         ReporteDiario.Active := False ;
         ReporteDiario.Open ;
         Try
             Reportediario.GotoBookmark(SavePlace);
         Except
         Else
             Reportediario.FreeBookmark(SavePlace);
         End ;
      End
end;

procedure TfrmDiarioTurno.btnUpClick(Sender: TObject);
begin
     OrdenarFotos('Arriba');
end;

procedure TfrmDiarioTurno.impAnalisisClick(Sender: TObject);
begin
    try
        procAnalisisFinanciero (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'] , ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], ReporteDiario.FieldValues['dIdFecha'] , frmDiarioTurno, rDiario.OnGETValue, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP))
    except
        on e:exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir analisis financiero', 0);
        end;
    end;
end;


procedure TfrmDiarioTurno.ierraPlataforma1Click(Sender: TObject);
begin
  try
    global_sTipoReporte  := 'TIERRAPLATAFORMA';
    procReporteDiarioConsolidado (reportediario.FieldValues['sContrato'], '', reportediario.FieldValues['sIdConvenio'], reportediario.FieldValues['dIdFecha'], '' , frmDiarioTurno , rDiario.OnGetValue, dsApoyo.onFirst,connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP));
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir Reporte Diario Consolidado/Tierra/Plataforma', 0);
    end;
  end;
end;

procedure TfrmDiarioTurno.PgDiarioChange(Sender: TObject);
begin
  if pgDiario.ActivePageIndex = 1 then
  begin
      ReporteFotografico.Active := False ;
      ReporteFotografico.Params.ParamByName('contrato').DataType := ftString ;
      ReporteFotografico.Params.ParamByName('contrato').Value := global_contrato ;
      ReporteFotografico.Params.ParamByName('Reporte').DataType := ftString ;
      ReporteFotografico.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
      ReporteFotografico.Open ;

      If ReporteFotografico.State <> dsInactive Then
         If ReporteFotografico.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True;
             BotonPermiso1.permisosBotones2(btnExaminar, btnEditar, btnEliminar, btnSaveImage);
         End ;

      //Consultamos las partidas afectadas en el Reporte Diario..
      partidas.Active := False ;
      partidas.Params.ParamByName('Contrato').DataType := ftString ;
      partidas.Params.ParamByName('Contrato').Value    := global_contrato ;
      partidas.Params.ParamByName('orden').DataType    := ftString ;
      partidas.Params.ParamByName('orden').Value       := reportediario.FieldValues['sNumeroOrden'] ;
      partidas.Params.ParamByName('fecha').DataType    := ftDate ;
      partidas.Params.ParamByName('fecha').Value       := reportediario.FieldValues['dIdFecha'] ;
      partidas.Params.ParamByName('turno').DataType    := ftString ;
      partidas.Params.ParamByName('turno').Value       := reportediario.FieldValues['sIdTurno'] ;
      partidas.Open ;
  end;
end;

procedure TfrmDiarioTurno.Plataforma1Click(Sender: TObject);
begin
  try
    global_sTipoReporte  := 'PLATAFORMA';
    procReporteDiarioConsolidado (reportediario.FieldValues['sContrato'], '', reportediario.FieldValues['sIdConvenio'], reportediario.FieldValues['dIdFecha'], '' , frmDiarioTurno , rDiario.OnGetValue, dsApoyo.onFirst, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP)) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir Reporte Diario Consolidado/Plataforma', 0);
    end;
  end;
end;

procedure TfrmDiarioTurno.DiarioDblClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  Cual: Byte;
  Diario,
  Consec, Cta, Cta1: Integer;
  Cadena: String;
begin
  
  If (connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA') and (ssCtrl in Shift) and ((Sender.Name = 'Memo3') or (Sender.Name = 'Memo15') or (Sender.Name = 'Memo158') or (Sender.Name = 'Picture7')) then
  begin
    Cadena := Sender.TagStr;

    if Sender.Name = 'Memo3' then
    begin
      Diario := StrToInt(Copy(Cadena, 1, Pos('|', Cadena) - 1));
      Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
      Consec := StrToInt(Cadena);
      if Diario > 0 then
        Cual := 1
      else
        Exit;     // Salir de aquí si no se ha reportado nada
    end;

    if (Sender.Name = 'Memo15') or (Sender.Name = 'Memo158') or (Sender.Name = 'Picture7') then
      Diario := StrToInt(Cadena);

    // Llamar la ventana de edición de datos
    try
      try
        Application.CreateForm(TFrmModificaDescripcion, FrmModificaDescripcion);
        FrmModificaDescripcion.pContrato := ReporteDiario.FieldByName('sContrato').AsString;
        FrmModificaDescripcion.pOrden := ReporteDiario.FieldByName('sNumeroOrden').AsString;
        FrmModificaDescripcion.pFecha := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        FrmModificaDescripcion.pTurno := ReporteDiario.FieldByName('sIdTurno').AsString;

        // Descripción de actividades
        if Sender.Name = 'Memo3' then
        begin
          FrmModificaDescripcion.Panel4.Visible := False;
          FrmModificaDescripcion.DBMemo1.ReadOnly := False;
          FrmModificaDescripcion.pDiario := Diario;
          FrmModificaDescripcion.pCual := Cual;
          FrmModificaDescripcion.pIndex := 0;
          Modified := FrmModificaDescripcion.ShowModal = mrOk;
          if Modified then
            Utilerias.rDiario.PreviewForm.Close;
        end;

        // Descripción de Notas
        if Sender.Name = 'Memo15' then
        begin
          FrmModificaDescripcion.pDiario := Diario;
          FrmModificaDescripcion.pIndex := 1;

          Modified := FrmModificaDescripcion.ShowModal = mrOk;
          if Modified then
            Utilerias.rDiario.PreviewForm.Close;
        end;

        // Descripción de fotografías
        if (Sender.Name = 'Memo158') or (Sender.Name = 'Picture7') then
        begin
          FrmModificaDescripcion.pDiario := Diario;
          FrmModificaDescripcion.pIndex := 2;
          if Sender.Name = 'Picture7' then
            FrmModificaDescripcion.pCual := 1
          else
            FrmModificaDescripcion.pCual := 2;

          Modified := FrmModificaDescripcion.ShowModal = mrOk;
          if Modified then
            Utilerias.rDiario.PreviewForm.Close;
        end;
      except
        Modified := False;
      end;
    finally
      FrmModificaDescripcion.Destroy;
    end;
  end;

  if (connection.contrato.FieldValues['sTipoObra'] = 'MIXTA') and (ssCtrl in Shift) and ((Sender.Name = 'Memo86') or (Sender.Name = 'Memo94') or (Sender.Name = 'Memo304') or (Sender.Name = 'Picture10')) and (Length(Sender.TagStr) > 0) then
  begin
    Cadena := Sender.TagStr;

    if Sender.Name = 'Memo86' then
    begin
      Diario := StrToInt(Copy(Cadena, 1, Pos('|', Cadena) - 1));
      Cadena := Copy(Cadena, Pos('|', Cadena) + 1, Length(Cadena));
      Consec := StrToInt(Cadena);
      if Diario > 0 then
        Cual := 1
      else
      begin
        Cual := 2;
        Diario := Abs(Diario);
      end;
    end;

    if (Sender.Name = 'Memo94') or (Sender.Name = 'Memo304') or (Sender.Name = 'Picture10') then
      Diario := StrToInt(Cadena);

    // Llamar la ventana de edición de datos
    try
      try
        Application.CreateForm(TFrmModificaDescripcion, FrmModificaDescripcion);
        FrmModificaDescripcion.pContrato := ReporteDiario.FieldByName('sContrato').AsString;
        FrmModificaDescripcion.pOrden := ReporteDiario.FieldByName('sNumeroOrden').AsString;
        FrmModificaDescripcion.pFecha := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
        FrmModificaDescripcion.pTurno := ReporteDiario.FieldByName('sIdTurno').AsString;

        // Descripción de actividades
        if Sender.Name = 'Memo86' then
        begin
          FrmModificaDescripcion.pDiario := Diario;
          FrmModificaDescripcion.pCual := Cual;
          FrmModificaDescripcion.pIndex := 0;
          Modified := FrmModificaDescripcion.ShowModal = mrOk;
          if Modified then
            UReporteDiarioMix.rDiario.PreviewForm.Close;
        end;

        // Descripción de Notas
        if Sender.Name = 'Memo94' then
        begin
          FrmModificaDescripcion.pDiario := Diario;
          FrmModificaDescripcion.pIndex := 1;

          Modified := FrmModificaDescripcion.ShowModal = mrOk;
          begin
            UReporteDiarioMix.rDiario.PreviewForm.Close;
            //Imprimir1.Click;
          end;
        end;

        // Descripción de fotografías
        if (Sender.Name = 'Memo304') or (Sender.Name = 'Picture10') then
        begin
          FrmModificaDescripcion.pDiario := Diario;
          FrmModificaDescripcion.pIndex := 2;
          if Sender.Name = 'Picture10' then
            FrmModificaDescripcion.pCual := 1
          else
            FrmModificaDescripcion.pCual := 2;

          Modified := FrmModificaDescripcion.ShowModal = mrOk;
          if Modified then
          begin
            UReporteDiarioMix.rDiario.PreviewForm.Close;
            //Imprimir1.Click;
          end;
        end;
      except
        Modified := False;
      end;
    finally
      FrmModificaDescripcion.Destroy;
    end;
  end;
end;

procedure TfrmDiarioTurno.ierra1Click(Sender: TObject);
begin
  try
    global_sTipoReporte  := 'TIERRA';
    procReporteDiarioConsolidado (reportediario.FieldValues['sContrato'], '', reportediario.FieldValues['sIdConvenio'], reportediario.FieldValues['dIdFecha'], '' , frmDiarioTurno , rDiario.OnGetValue, dsApoyo.onFirst, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP));
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir Reporte Diario Consolidado/Tierra', 0);
    end;
  end;
end;

procedure TfrmDiarioTurno.SoloFrente1Click(Sender: TObject);
begin
  try
    global_sTipoReporte  := 'SOLOFRENTE';
    procReporteDiarioConsolidado (reportediario.FieldValues['sContrato'], '', reportediario.FieldValues['sIdConvenio'], reportediario.FieldValues['dIdFecha'], '' , frmDiarioTurno , rDiario.OnGetValue, dsApoyo.onFirst, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP) ) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al imprimir Reporte Diario Consolidado/Solo Frente', 0);
    end;
  end;
end;

procedure TfrmDiarioTurno.ComboBox1Change(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add('La diferencia resultante después del cálculo de distribución de tiempos de barco se ajustará de manera automática de la siguiente manera:');
  Memo1.Lines.Add('');

  case ComboBox1.ItemIndex of
    0: Memo1.Lines.Add('El total de la diferencia se cargará en el factor de tiempo encontrado más grande.');
    1: Memo1.Lines.Add('El total de la diferencia se cargará en el factor de tiempo encontrado más chico.');
    2: Memo1.Lines.Add('Cuando la diferencia sea positiva se cargará al factor de tiempo más chico y en caso de ser negativo en el factor más grande.');
    3: Memo1.Lines.Add('Cuando la diferencia sea positiva se cargará al factor de tiempo más grande y en caso de ser negativo en el factor más chico.');
    4: Memo1.Lines.Add('El total de la diferencia se cargará al primero corte de tiempo de manera directa.');
    5: Memo1.Lines.Add('El total de la diferencia se cargará al último corte de tiempo de manera directa.');
    6: Memo1.Lines.Add('Al final del cálculo se mostrará una lista con los cortes de tiempo para que el usuario indique en cual desea aplicar el ajuste necesario.');
  end;
end;

procedure TfrmDiarioTurno.ConsolidadodePersonalClick(Sender: TObject);
Begin
  try
    procConsolidadoOT( global_contrato, reporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['dIdFecha'], frmDiarioTurno, rDiario.OnGetValue, True, connection.configuracion.fieldbyname('sFormatos').AsString,PermisosExportar(connection.zConnection,global_grupo,sMenuP) ) ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Reportes Diarios', 'Al reportar Consolidado de Personal/Equipos', 0);
    end;
  end;
End;



procedure TfrmDiarioTurno.OrdenarFotos(sParamOrden: string);
var
   idAuxiliar, idAuxiliar2 : integer;
   SavePlace   : TBookmark;
begin
    if ReporteFotografico.RecordCount > 0 then
    begin
        if sParamOrden = 'Arriba' then
        begin
            idAuxiliar2 := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Prior;

            idAuxiliar  := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Next;
        end;

        if sParamOrden = 'Abajo' then
        begin
            idAuxiliar2 := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Next;

            idAuxiliar  := ReporteFotografico.FieldValues['iImagen'];
            ReporteFotografico.Prior;
        end;
        //Colocamos un id mayor para evitar duplicidad..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha and sNumeroReporte =:Reporte And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('reporte').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('reporte').value     := reportediario.FieldValues['sNumeroReporte'];
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar2;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar + 500;
        connection.zCommand.ExecSQL;

        //Ahora actualizamos el item mayor
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha and sNumeroReporte =:Reporte And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('reporte').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('reporte').value     := reportediario.FieldValues['sNumeroReporte'];
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar2;
        connection.zCommand.ExecSQL;

         //Ahora actualizamos el item alterado
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha and sNumeroReporte =:Reporte And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('reporte').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('reporte').value     := reportediario.FieldValues['sNumeroReporte'];
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar + 500;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar;
        connection.zCommand.ExecSQL;

        if sParamOrden = 'Arriba' then
           ReporteFotografico.Prior
        else
           ReporteFotografico.Next;

        SavePlace := ReporteFotografico.GetBookmark;
        ReporteFotografico.Refresh;
        ReporteFotografico.GotoBookmark(SavePlace);
        ReporteFotografico.FreeBookmark(SavePlace);

    end;
end;

end.


