unit frm_ReporteDiarioFirmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, frm_connection, Buttons, Utilerias, Global,
  Menus, OleCtrls, ExtCtrls, ShellApi, strUtils, frm_barra, Math, frxClass,
  frxDBSet, Jpeg, RxMemDS, RXDBCtrl, RXCtrls, UnitExcepciones,
  ExtDlgs, ZAbstractRODataset, ZDataset, RxRichEd,
  ZAbstractDataset, Newpanel,  RxLookup, rxDBRichEd, rxSpeedbar, udbgrid,
  UnitTBotonesPermisos, DBDateTimePicker;
type
  TfrmDiarioFirmas = class(TForm)
    ds_ordenesdetrabajo: TDataSource;
    Label1: TLabel;
    frmBarra1: TfrmBarra;
    Grid_Reportes: TDBGrid;
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
    SpeedBar1: TSpeedBar;
    SpeedbarSection2: TSpeedbarSection;
    btnPermisos: TSpeedItem;
    btnPersonalEquipo: TSpeedItem;
    btnTiempoMuerto: TSpeedItem;
    btnVolumenes: TSpeedItem;
    btnAlcances: TSpeedItem;
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
    tsNumeroOrden: TDBLookupComboBox;
    btnEmbarque: TSpeedItem;
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
    pbMigracion: TProgressBar;
    lblMigracion: TLabel;
    Label13: TLabel;
    CheckIncluye: TCheckBox;
    btnPreview: TBitBtn;
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
    QryFirmaReporte: TZQuery;
    ds_QryFirmaReporte: TDataSource;
    gbFirmas: tNewGroupBox;
    mnFirmas: TMenuItem;
    tsFirmas: TRxDBRichEdit;
    rDiario: TfrxReport;
    ReporteDiariosContrato: TStringField;
    ReporteDiariodIdFecha: TDateField;
    ReporteDiariosNumeroOrden: TStringField;
    ReporteDiariosIdTurno: TStringField;
    ReporteDiariosIdConvenio: TStringField;
    ReporteDiariosNumeroReporte: TStringField;
    ReporteDiarioiPersonal: TIntegerField;
    ReporteDiariosOperacionInicio: TStringField;
    ReporteDiariosOperacionFinal: TStringField;
    ReporteDiariosTiempoAdicional: TStringField;
    ReporteDiariosTiempoEfectivo: TStringField;
    ReporteDiariosTiempoMuerto: TStringField;
    ReporteDiariosTiempoMuertoReal: TStringField;
    ReporteDiariosTiempo: TStringField;
    ReporteDiariosTransporte: TStringField;
    ReporteDiariosInicioPlatica: TStringField;
    ReporteDiariosFinalPlatica: TStringField;
    ReporteDiariosTema: TStringField;
    ReporteDiariolStatus: TStringField;
    ReporteDiariosIdUsuario: TStringField;
    ReporteDiariosIdUsuarioValida: TStringField;
    ReporteDiariosIdUsuarioAutoriza: TStringField;
    ReporteDiariosIdUsuarioResidente: TStringField;
    ReporteDiariosDescripcion: TStringField;
    ReporteDiariosDescripcionTurno: TStringField;
    tsIdTurno: TRxDBLookupCombo;
    tdIdFecha: TDBDateTimePicker;
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
    procedure btnPersonalEquipoClick(Sender: TObject);
    procedure btnPermisosClick(Sender: TObject);
    procedure btnAlcancesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Cut2Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure btnEmbarqueClick(Sender: TObject);
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
    procedure btnVolumenesClick(Sender: TObject);
    procedure btnTiempoMuertoClick(Sender: TObject);
    procedure impAnalisisClick(Sender: TObject);
    procedure ReporteDiarioConsolidado1Click(Sender: TObject);
    procedure tsFirmasEnter(Sender: TObject);
    procedure tsFirmasExit(Sender: TObject);
    procedure gbFirmasEnter(Sender: TObject);
    procedure gbFirmasExit(Sender: TObject);
    procedure mnFirmasClick(Sender: TObject);
    procedure ReporteDiarioCalcFields(DataSet: TDataSet);
    procedure Grid_ReportesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ReportesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ReportesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiarioFirmas: TfrmDiarioFirmas;
  sReporte : String ;
  iReporte : Integer ;
  lNuevoDia : Boolean ;
  dAvanceAnterior, dCantidadAnterior : Double ;
  dAvanceDiario, dAvanceAcumulado    : Double ;
  dPAnterior, dPDiario, dPAcumulado,
  dRAnterior, dRDiario, dRAcumulado : Real ;
  sArchivo     : String ;
  sOpcion      : String ;
  lIniciado    : Boolean ;
  SavePlace    : TBookmark;
  utgrid:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
implementation

uses frm_inteligent, frm_bitacoraxalcance, frm_bitacoradepartamental_2,
  frm_bitacora2, frm_jornadasdiarias;


{$R *.dfm}


procedure TfrmDiarioFirmas.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);

  BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario');
  BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);

  UtGrid:=TicdbGrid.create(grid_reportes);
  lIniciado := False ;
  PgDiario.ActivePageIndex := 0 ;

  If global_orden_general <> '' then
  Begin
      OrdenesdeTrabajo.Active := False ;
      OrdenesdeTrabajo.SQL.Clear ;
      OrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, iJornada from ordenesdetrabajo where sContrato = :Contrato and ' +
                               'sNumeroOrden = :orden') ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
      OrdenesdeTrabajo.Params.ParamByName('orden').DataType := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('orden').Value := global_orden_general ;
      OrdenesdeTrabajo.Open ;
  End
  Else
  Begin
      OrdenesdeTrabajo.Active := False ;
      OrdenesdeTrabajo.SQL.Clear ;
      OrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, iJornada from ordenesdetrabajo where sContrato = :Contrato and ' +
                               'cIdStatus = :status order by sIdFolio, sNumeroOrden') ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
      OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString ;
      OrdenesdeTrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
      OrdenesdeTrabajo.Open ;
  End ;

  If OrdenesdeTrabajo.RecordCount > 0 Then
  Begin
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      Turnos.Active := False ;
      Turnos.Params.ParamByName('contrato').DataType := ftString ;
      Turnos.Params.ParamByName('contrato').Value := global_contrato ;
      Turnos.Params.ParamByName('orden').DataType := ftString ;
      Turnos.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
      Turnos.Open ;

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
End;

procedure TfrmDiarioFirmas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
try
  //procLimpia () ;
  BotonPermiso.Free;
  BotonPermiso1.Free;
  convenio_reporte := '' ;
  global_orden := '' ;
  global_turno_reporte := '' ;
  action := cafree ;
  utgrid.Destroy;
except
    on e:exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al Cerrar la Ventana', 0);
    end;
end;
end;

procedure TfrmDiarioFirmas.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        Grid_Reportes.SetFocus
end;

procedure TfrmDiarioFirmas.tsHoraFinal2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
       tsTiempo.SetFocus
end;

procedure TfrmDiarioFirmas.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsIdturno.SetFocus
end;

procedure TfrmDiarioFirmas.btnAddClick(Sender: TObject);
begin
  tdIdFecha.SetFocus ;
end;

procedure TfrmDiarioFirmas.tsNumeroReporteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTiempo.SetFocus 
end;

procedure TfrmDiarioFirmas.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
        tdIdFecha.SetFocus
end;

procedure TfrmDiarioFirmas.tsHoraInicio2KeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsHoraFinal2.SetFocus
end;

procedure TfrmDiarioFirmas.tsTiempoKeyPress(Sender: TObject; var Key: Char);
Begin
    If Key = #13 then
      tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioFirmas.tsTransporteKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
      tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioFirmas.tsInicioPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
        tsFinalPlatica.SetFocus
end;

procedure TfrmDiarioFirmas.tsFinalPlaticaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
      tsTema.SetFocus
end;

procedure TfrmDiarioFirmas.tsHoraFinal2Exit(Sender: TObject);
begin
    tsHoraFinal2.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.tsTiempoEfectivoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsTiempo.SetFocus
end;

procedure TfrmDiarioFirmas.tsNumeroOrdenExit(Sender: TObject);
begin
  Turnos.Active := False ;
  Turnos.Params.ParamByName('contrato').DataType := ftString ;
  Turnos.Params.ParamByName('contrato').Value := global_contrato ;
  Turnos.Params.ParamByName('orden').DataType := ftString ;
  Turnos.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
  Turnos.Open ;

  ReporteDiario.Active := False ;
  ReporteDiario.Params.ParamByName('contrato').DataType := ftString ;
  ReporteDiario.Params.ParamByName('contrato').Value := global_contrato ;
  ReporteDiario.Params.ParamByName('orden').DataType := ftString ;
  ReporteDiario.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
  ReporteDiario.Open ;

  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.frmBarra1btnEditClick(Sender: TObject);
Var
   sTiempoComida : String ;
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
          lNuevoDia := True ;
          tdIdFecha.SetFocus
       End
       Else
          MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioFirmas.frmBarra1btnDeleteClick(Sender: TObject);
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
                  If global_grupo = 'ADMINISTRADORES' Then
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
                                connection.zCommand.Active := False ;
                                connection.zCommand.SQL.Clear ;
                                connection.zcommand.SQL.Add ('Update configuracion SET iConsecutivo = :Consecutivo where sContrato = :Contrato') ;
                                connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                                connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
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
                           SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark ;
                           ReporteDiario.Active := False ;
                           ReporteDiario.Open ;
                           Try
                               Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
                           Except

                           Else
                               Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
                           End ;
                           Grid_Reportes.SetFocus
                       Except
                           MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
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
                                connection.zCommand.Active := False ;
                                connection.zCommand.SQL.Clear ;
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
                           SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark ;
                           ReporteDiario.Active := False ;
                           ReporteDiario.Open ;
                           Try
                               Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
                           Except

                           Else
                               Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
                           End ;
                           Grid_Reportes.SetFocus
                       Except
                           MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
                       End
                    End
                End
             End
      End
      Else
         MessageDlg('El Reporte ha sido Autorizado o fue creado por un usuario distinto por lo tanto no puede eliminarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioFirmas.frmBarra1btnAddClick(Sender: TObject);
Var
    sReporte   : String ;
    txtAux     : String ;
    iReporte   : Real ;
    Caracteres : Byte ;
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

              tsTiempo.Text := '' ;
              tsTransporte.Text := '' ;
              tsTema.Text := '' ;
              tsNumeroReporte.Text := 'Pend. Asignar' ;
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
  End
end;

procedure TfrmDiarioFirmas.frmBarra1btnPrinterClick(Sender: TObject);
Begin
  If ReporteDiario.RecordCount > 0 Then
      Imprimir1.Click
end;

procedure TfrmDiarioFirmas.frmBarra1btnRefreshClick(Sender: TObject);
Var
    sTiempoComida : String ;
    dBalanceMuerto  : Real ;
    lBalance  : Boolean ;
    sBalance  : String  ;
    sTiempoMuerto : String ;
begin
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
                 MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
            End
        End
    End ;
    If Platicas.Active = True Then
        Platicas.refresh ;

    SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark ;
    ReporteDiario.Active := False ;
    ReporteDiario.Open ;
    Try
        Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
    Except
    
    else
        Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
    End ;

end;

procedure TfrmDiarioFirmas.frmBarra1btnExitClick(Sender: TObject);
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

procedure TfrmDiarioFirmas.tdIdFechaExit(Sender: TObject);
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
            Connection.QryBusca.Params.ParamByName('Contrato').value := global_contrato ;
            Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('orden').value := tsNumeroOrden.Text ;
            Connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate ;
            Connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date ;
            Connection.QryBusca.Params.ParamByName('Turno').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Turno').value := tsIdTurno.KeyValue ;
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
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.tsTemaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsInicioPlatica.SetFocus
end;

procedure TfrmDiarioFirmas.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada ;
    frmBarra1.btnCancel.Click ;
end;

procedure TfrmDiarioFirmas.tsNumeroReporteEnter(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_entrada ;
end;

procedure TfrmDiarioFirmas.tsNumeroReporteExit(Sender: TObject);
begin
    tsNumeroReporte.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.tsTiempoEnter(Sender: TObject);
begin
    tsTiempo.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsTiempoExit(Sender: TObject);
begin
    tsTiempo.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.tsTransporteEnter(Sender: TObject);
begin
    tsTransporte.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsTransporteExit(Sender: TObject);
begin
    tsTransporte.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.tsInicioPlaticaEnter(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsInicioPlaticaExit(Sender: TObject);
begin
    tsInicioPlatica.Color := global_color_salida ;
end;

procedure TfrmDiarioFirmas.tsFinalPlaticaEnter(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsFinalPlaticaExit(Sender: TObject);
begin
    tsFinalPlatica.Color := global_color_salida ;
end;

procedure TfrmDiarioFirmas.tsTemaEnter(Sender: TObject);
begin
    tsTema.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsTemaExit(Sender: TObject);
begin
    tsTema.Color := global_color_salida
end;


procedure TfrmDiarioFirmas.frmBarra1btnPostClick(Sender: TObject);
Var
    sReporte      : String ;
    txtAux        : String ;
    iReporte      : Real ;
    Caracteres    : Byte ;
    Posicion      : Integer ;
    sConvenio     : String ;
    dBalanceMuerto : Real ;
    lBalance       : Boolean ;
    sBalance       : String  ;
    lOrdenTierra   : Boolean ;
    sParametro     : String ;
    Registro       : Integer ;
begin
try
  If lNuevoDia Then
  Begin
      If OpcButton = 'New' then
      Begin
         If tsNumeroOrden.Text = global_contrato Then
         Begin
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo from configuracion where sContrato = :contrato') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Open ;
             iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;
             sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;

             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                  txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;
             tsNumeroReporte.Text := sReporte ;

             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ('UPDATE configuracion Set iConsecutivo = :Consecutivo Where sContrato = :Contrato');
             connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
             connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
             connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
             connection.zCommand.ExecSQL ;
         End
         Else
         Begin
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo, iConsecutivoTierra from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
             Connection.QryBusca.Open ;
             sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;
             iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;

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
                                              'sInicioPlatica, sFinalPlatica, sTema, lStatus, sIdUsuario, sFirmas ) ' +
                                              'VALUES (:Contrato, :Fecha, :Orden, :Turno, :Convenio, :Reporte, :Personal, :HoraI, :HoraF, :Efectivo, :Muerto, :Real, ' +
                                              ':Tiempo, :Transporte, :InicioP, :FinalP, :Tema, :Status, :Usuario, "" )') ;
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

                 SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark ;
                 ReporteDiario.Active := False ;
                 ReporteDiario.Open ;
                 Try
                     Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
                 Except
                 Else
                     Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
                 End ;

                 ReporteDiario.first ;
             except
                   MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
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
             // Actualizo fotografias ...
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ( 'UPDATE reportefotografico Set sNumeroReporte = :Reporte Where sContrato = :OldContrato And sNumeroReporte = :OldReporte') ;
             connection.zcommand.Params.ParamByName('OldContrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldContrato').value := Global_Contrato ;
             connection.zcommand.Params.ParamByName('OldReporte').DataType := ftString ;
             connection.zcommand.Params.ParamByName('OldReporte').value := ReporteDiario.FieldValues['sNumeroReporte'] ;
             connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Reporte').value := tsNumeroReporte.Text ;
             connection.zCommand.ExecSQL ;

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

             // Bitacora de Alcances
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


             // Bitacora de Actividades
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


             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ( 'UPDATE reportediario Set dIdFecha = :Fecha, sIdConvenio = :Convenio, sNumeroReporte = :Reporte, iPersonal = :Personal, ' +
                                           'sIdTurno = :Turno, sOperacionInicio = :HoraI, sOperacionFinal = :HoraF, ' +
                                           'sTiempoEfectivo = :Efectivo, sTiempoMuerto = :Muerto, sTiempo = :Tiempo, sTransporte= :Transporte, ' +
                                           'sInicioPlatica = :InicioP, sFinalPlatica = :FinalP, sTema = :Tema  ' +
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
             connection.zCommand.ExecSQL ;

             SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark ;
             ReporteDiario.Active := False ;
             ReporteDiario.Open ;
             Try
                 Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
             Except
             Else
                 Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
             End ;
         except
             MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
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
                                            'And sIdConvenio = :Convenio And dIdFecha < :Fecha' ) ;
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
              connection.zcommand.SQL.Add ( FuncSql(  connection.QryBusca , 'avancesglobalesxorden')) ;
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
except
  on e:exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al salvar registro', 0);
  end;
end;
end;

procedure TfrmDiarioFirmas.frmBarra1btnCancelClick(Sender: TObject);
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
end;

procedure TfrmDiarioFirmas.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure TfrmDiarioFirmas.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click
end;

procedure TfrmDiarioFirmas.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click
end;

procedure TfrmDiarioFirmas.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure TfrmDiarioFirmas.Copy1Click(Sender: TObject);
begin
UtGrid.CopyRowsToClip;
end;

procedure TfrmDiarioFirmas.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmDiarioFirmas.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmDiarioFirmas.Imprimir1Click(Sender: TObject);
begin
  try
  If ReporteDiario.RecordCount > 0 Then
      Begin
          If OrdenesdeTrabajo.RecordCount > 1 Then
              cfnCalculaAvances (ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], 'NIL' , ReporteDiario.FieldValues['sIdTurno'] , True , tdIdFecha.Date, 'Avanzada' , frmDiarioFirmas)
          Else
              cfnCalculaAvances (ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], 'NIL' , ReporteDiario.FieldValues['sIdTurno'] , False , tdIdFecha.Date, 'Avanzada', frmDiarioFirmas) ;

         // procReporteDiario (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmDiarioFirmas, rDiario.OnGetValue )
      End ;
  except
      on e:exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir', 0);
      end;
  end;
end;

procedure TfrmDiarioFirmas.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmDiarioFirmas.Grid_ReportesEnter(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = True Then
        frmBarra1.btnCancel.Click ;
End;

procedure TfrmDiarioFirmas.Grid_ReportesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmDiarioFirmas.Grid_ReportesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmDiarioFirmas.Grid_ReportesTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmDiarioFirmas.DiarioGetValue(const VarName: String;
  var Value: Variant);
begin
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

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;

  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
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
end;

procedure TfrmDiarioFirmas.ReporteDiarioAfterScroll(DataSet: TDataSet);
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
    BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
    If Reportediario.RecordCount > 0 then
    Begin
        tsDescripcion.Text := '' ;
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
                 BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
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

procedure TfrmDiarioFirmas.tsIdTurnoEnter(Sender: TObject);
begin
    tsIdTurno.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsIdTurnoExit(Sender: TObject);
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
    tsIdTurno.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.tsIdTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
      tsTiempo.SetFocus
end;

procedure TfrmDiarioFirmas.btnPersonalEquipoClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    Begin
        Application.CreateForm(TfrmBitacora2, frmBitacora2);
        frmBitacora2.show
    End ;
end;

procedure TfrmDiarioFirmas.btnPermisosClick(Sender: TObject);
begin
  If ReporteDiario.RecordCount > 0 Then
      frmInteligent.opPermisos.Click ;
end;

procedure TfrmDiarioFirmas.btnAlcancesClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
        frmBitacoraxAlcance.showModal
end;

procedure TfrmDiarioFirmas.FormActivate(Sender: TObject);
begin
    If lIniciado Then
    Begin
        frmBarra1.btnRefresh.Click ;
        connection.configuracion.refresh ;
        turnos.refresh
    End ;
    lIniciado := True 
end;

procedure TfrmDiarioFirmas.Cut2Click(Sender: TObject);
begin
    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioFirmas.Cut1Click(Sender: TObject);
begin
    MessageDlg('El Reporte ha sido Autorizado por lo tanto no puede modificarse.', mtInformation, [mbOk], 0);
end;

procedure TfrmDiarioFirmas.btnEmbarqueClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
        frmInteligent.MnsCapAviEmb.Click ;
end;

procedure TfrmDiarioFirmas.btnExaminarClick(Sender: TObject);
Var
   size: Real ;
begin
  If ReporteDiario.RecordCount > 0 Then
     If frmBarra1.btnCancel.Enabled = False Then
       If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
       Begin
          btnPreview.Enabled := False ;
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
          BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
          If OpenPicture.Execute then
          begin
              try
                  sArchivo := OpenPicture.FileName ;
                  size := Tamanyo (sArchivo) ;
                  If size <= 100 Then
                      bImagen.Picture.LoadFromFile(OpenPicture.FileName) 
                  Else
                      MessageDlg('La imagen a adjuntar no debe ser mayor a 100 kb.', mtInformation, [mbOk], 0);
              except
                  bImagen.Picture.LoadFromFile('') ;
              end
          end
       end
       Else
          MessageDlg('El Reporte ha sido autorizado por lo tanto no es posible realizar modificaciones', mtInformation, [mbOk], 0);

end;

procedure TfrmDiarioFirmas.ReporteFotograficoAfterScroll(
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
                CheckIncluye.Checked := False

        End
end;

procedure TfrmDiarioFirmas.btnGrabarClick(Sender: TObject);
Var
  iItem    : Integer ;
Begin
  If ReporteDiario.RecordCount > 0 Then
      If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
          If sOpcion = 'New' Then
          Begin
              If sArchivo <> '' Then
              Begin
                  btnPreview.Enabled := True ;
                  iItem := 1 ;
                  If ReporteFotografico.RecordCount > 0 Then
                  Begin
                      ReporteFotografico.Last ;
                      iItem := ReporteFotografico.FieldValues['iImagen'] + 1;
                  End ;
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Insert Into reportefotografico (sContrato, sNumeroReporte, iImagen, bImagen, sDescripcion, lIncluye) ' +
                                                'Values (:Contrato, :Reporte, :Item, :Imagen, :Descripcion, :Incluye)') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value := ReporteDiario.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value := iItem ;
                  connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;
                  connection.zCommand.ExecSQL ()
              End
          End
          Else
          Begin
              If sArchivo <> '' Then
              Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Update reportefotografico SET bImagen = :Imagen, sDescripcion = :Descripcion, lIncluye = :Incluye ' +
                                                'Where sContrato = :contrato And sNumeroReporte = :Reporte And iImagen = :Item') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value := ReporteFotografico.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value := ReporteFotografico.FieldValues['iImagen'] ;
                  connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;
                  connection.zCommand.ExecSQL ()
              End
              Else
              Begin
                  connection.zCommand.Active := False ;
                  connection.zCommand.SQL.Clear ;
                  connection.zcommand.SQL.Add ( 'Update reportefotografico SET sDescripcion = :Descripcion, lIncluye = :Incluye ' +
                                                'Where sContrato = :contrato And sNumeroReporte = :Reporte And iImagen = :Item') ;
                  connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
                  connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
                  connection.zcommand.Params.ParamByName('Reporte').Value := ReporteFotografico.FieldValues['sNumeroReporte'] ;
                  connection.zcommand.Params.ParamByName('Item').DataType := ftInteger ;
                  connection.zcommand.Params.ParamByName('Item').Value := ReporteFotografico.FieldValues['iImagen'] ;
                  connection.zcommand.Params.ParamByName('Descripcion').DataType := ftMemo ;
                  connection.zcommand.Params.ParamByName('Descripcion').Value := tsDescripcion.Text ;
                  connection.zcommand.Params.ParamByName('Incluye').DataType := ftString ;
                  If CheckIncluye.Checked  Then
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'Si'
                  Else
                      connection.zcommand.Params.ParamByName('Incluye').Value := 'No' ;
                  connection.zCommand.ExecSQL ()
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
          BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
end;

procedure TfrmDiarioFirmas.btnEliminarClick(Sender: TObject);
begin
  If ReporteDiario.RecordCount > 0 Then
     If frmBarra1.btnCancel.Enabled = False Then
       If ReporteDiario.FieldValues['lStatus'] <> 'Autorizado' then
          If ReporteFotografico.RecordCount > 0 Then
          Begin
              connection.zCommand.Active := False ;
              connection.zCommand.SQL.Clear ;
              connection.zcommand.SQL.Add ( 'Delete From reportefotografico Where sContrato = :Contrato And sNumeroReporte = :Reporte And iImagen = :Item') ;
              connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Contrato').Value := Global_Contrato ;
              connection.zcommand.Params.ParamByName('Reporte').DataType := ftString ;
              connection.zcommand.Params.ParamByName('Reporte').Value := ReporteFotografico.FieldValues['sNumeroReporte'] ;
              connection.zcommand.Params.ParamByName('Item').DataType := ftInteger ;
              connection.zcommand.Params.ParamByName('Item').Value := ReporteFotografico.FieldValues['iImagen'] ;
              connection.zCommand.ExecSQL ;
              bImagen.Picture.Bitmap := Nil ;
              bImagen.Picture.LoadFromFile('') ;
              tsDescripcion.Text := '' ;
              CheckIncluye.Checked := False ;
              ReporteFotografico.Refresh ;
              If ReporteFotografico.RecordCount > 0 Then
              begin
                   btnEliminar.Enabled := True;
                   BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage)
              end
              Else
              begin
                   btnEliminar.Enabled := False ;
              end;
          End;

end;

procedure TfrmDiarioFirmas.TabFotograficoShow(Sender: TObject);
begin
    btnGrabar.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
    If ReporteFotografico.State <> dsInactive Then
        If ReporteFotografico.RecordCount > 0 Then
        Begin
            btnSaveImage.Enabled := True ;
            btnEliminar.Enabled := True;
            BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage)
        End
        Else
        Begin
            btnSaveImage.Enabled := False ;
            btnEliminar.Enabled := False ;
        End
end;

procedure TfrmDiarioFirmas.btnCancelarClick(Sender: TObject);
begin
    btnPreview.Enabled := True ;
    tsDescripcion.ReadOnly := True ;
    CheckIncluye.Enabled := False ;
    btnCancelar.Enabled := False ;
    btnExaminar.Enabled := True ;
    btnEditar.Enabled := True ;
    btnGrabar.Enabled := False ;
    BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
    If ReporteFotografico.State <> dsInactive Then
        If ReporteFotografico.RecordCount > 0 Then
         Begin
             btnSaveImage.Enabled := True ;
             btnEliminar.Enabled := True ;
             BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
             Grid_Imagenes.SetFocus
         End
         Else
         Begin
             btnSaveImage.Enabled := False ;
             btnEliminar.Enabled := False ;
         End
end;

procedure TfrmDiarioFirmas.btnEditarClick(Sender: TObject);
begin
    If frmBarra1.btnCancel.Enabled = False Then
      If ReporteFotografico.RecordCount > 0 Then
      Begin
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
          BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
      End
end;

procedure TfrmDiarioFirmas.bImagenClick(Sender: TObject);
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
                If size <= 100 Then
                Begin
                      bImagen.Picture.LoadFromFile(OpenPicture.FileName)
                End
                Else
                      MessageDlg('La imagen a adjuntar no debe ser mayor a 100 kb.', mtInformation, [mbOk], 0);
             except
                bImagen.Picture.LoadFromFile('') ;
             end
        end
    End
end;

Function TfrmDiarioFirmas.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;

procedure TfrmDiarioFirmas.btnSaveImageClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
      If ReporteFotografico.RecordCount > 0 Then
      Begin
          btnPreview.Click ;
          SaveImage.Title := 'Respaldar Imagen';
          SaveImage.FileName := ReporteDiario.FieldValues['sNumeroReporte'] + '-' + ReporteFotografico.FieldByName('iImagen').AsString ;
          BotonPermiso1.permisosBotones2(btnGrabar, btnEditar, btnEliminar, btnSaveImage);
          If SaveImage.Execute Then
              bImagen.Picture.SaveToFile(SaveImage.FileName)
      End
end;

procedure TfrmDiarioFirmas.Grid_ImagenesEnter(Sender: TObject);
begin
    If ReporteFotoGrafico.RecordCount > 0 then
        bImagen.Picture.LoadFromFile('') ;
end;

procedure TfrmDiarioFirmas.btnPreviewClick(Sender: TObject);
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

procedure TfrmDiarioFirmas.bkReporteClick(Sender: TObject);
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
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo from configuracion where sContrato = :contrato') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Open ;
             iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;
             sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;

             Str( iReporte:3:0 , txtAux );
             txtAux := Trim( txtAux ) ;
             For Caracteres := 1 to ( 3 - strLen ( pchar(txtAux) ) ) Do
                  txtAux := '0' + txtAux ;
             sReporte := sReporte + txtAux ;

             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zcommand.SQL.Add ( 'UPDATE configuracion Set iConsecutivo = :Consecutivo Where sContrato = :Contrato') ;
             connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
             connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato ;
             connection.zcommand.Params.ParamByName('Consecutivo').DataType := ftInteger ;
             connection.zcommand.Params.ParamByName('Consecutivo').value := iReporte + 1 ;
             connection.zCommand.ExecSQL ;
         End
         Else
         Begin
             Connection.QryBusca.Active := False ;
             Connection.QryBusca.SQL.Clear ;
             Connection.QryBusca.SQL.Add('Select sFormato, iConsecutivo, iConsecutivoTierra from ordenesdetrabajo where sContrato = :contrato and sNumeroOrden = :Orden') ;
             Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
             Connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
             Connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
             Connection.QryBusca.Open ;
             sReporte := Trim ( Connection.QryBusca.FieldValues ['sFormato'] ) + sReporte ;
             iReporte := Connection.QryBusca.FieldValues['iConsecutivo'] ;

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
                                     connection.zcommand.Params.parambyname(sparametro).value := ''
                                 Else
                                     If QryBk.fields[registro].FullName = 'sIdUsuarioAutoriza' Then
                                         connection.zcommand.Params.parambyname(sparametro).value := ''
                                     Else
                                         If QryBk.fields[registro].IsNull Then
                                             connection.zcommand.Params.parambyname(sparametro).value := ''
                                         Else
                                             connection.zcommand.Params.parambyname(sparametro).value := QryBk.fields[registro].value ;
                 end ;
                 connection.zCommand.ExecSQL ;
             except
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
             end ;

         // Bitacora de Actividades
         QryBk.Active := False ;
         QryBk.SQL.Clear ;
         QryBk.SQL.Add('Select * from bitacoradeactividades ' +
                       'where sContrato = :contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdTurno = :Turno') ;
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
             end ;
             
         SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark ;
         ReporteDiario.Active := False ;
         ReporteDiario.Open ;
         Try
             Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
         Except
         Else
             Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
         End ;
      End
end;

procedure TfrmDiarioFirmas.btnVolumenesClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
        frmBitacoraDepartamental_2.showmodal
end;


procedure TfrmDiarioFirmas.btnTiempoMuertoClick(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    Begin
        Application.CreateForm(Tfrmjornadasdiarias, frmjornadasdiarias);
        frmjornadasdiarias.show
    End
end;


procedure TfrmDiarioFirmas.impAnalisisClick(Sender: TObject);
begin
    try
        procAnalisisFinanciero (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'] , ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], ReporteDiario.FieldValues['dIdFecha'] , frmDiarioFirmas, rDiario.OnGETValue );
    except
        on e:exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir analisis financiero', 0);
        end;
    end;
end;

procedure TfrmDiarioFirmas.ReporteDiarioConsolidado1Click(Sender: TObject);
begin
   try
       procReporteDiarioConsolidado (reportediario.FieldValues['sContrato'], '', reportediario.FieldValues['sIdConvenio'], reportediario.FieldValues['dIdFecha'], '' , frmDiarioFirmas , rDiario.OnGetValue, dsApoyo.onFirst ) ;
   except
       on e:exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir Reporte Diario Consolidado', 0);
       end;
   end;
end;


procedure TfrmDiarioFirmas.tsFirmasEnter(Sender: TObject);
begin
    tsFirmas.Color := global_color_entrada
end;

procedure TfrmDiarioFirmas.tsFirmasExit(Sender: TObject);
begin
    tsFirmas.Color := global_color_salida
end;

procedure TfrmDiarioFirmas.gbFirmasEnter(Sender: TObject);
begin
    If ReporteDiario.RecordCount > 0 Then
    Begin
        QryFirmaReporte.Active := False ;
        QryFirmaReporte.Params.ParamByName('contrato').DataType := ftString ;
        QryFirmaReporte.Params.ParamByName('contrato').Value := ReporteDiario.FieldValues['sContrato'] ;
        QryFirmaReporte.Params.ParamByName('orden').DataType := ftString ;
        QryFirmaReporte.Params.ParamByName('orden').Value := ReporteDiario.FieldValues['sNumeroOrden'] ;
        QryFirmaReporte.Params.ParamByName('fecha').DataType := ftDate ;
        QryFirmaReporte.Params.ParamByName('fecha').Value := ReporteDiario.FieldValues['dIdFecha'] ;
        QryFirmaReporte.Params.ParamByName('turno').DataType := ftString ;
        QryFirmaReporte.Params.ParamByName('turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
        QryFirmaReporte.Open ;
        If QryFirmaReporte.RecordCount > 0 Then
            If ReporteDiario.FieldValues['lStatus'] = 'Pendiente' Then
                QryFirmaReporte.Edit ;

    End ;
end;

procedure TfrmDiarioFirmas.gbFirmasExit(Sender: TObject);
begin
    If QryFirmaReporte.State = dsEdit Then
        QryFirmaReporte.Post ;

    gbfirmas.Visible := False
end;

procedure TfrmDiarioFirmas.mnFirmasClick(Sender: TObject);
begin
    gbFirmas.Visible := NOT gbFirmas.Visible ;
    If gbFirmas.Visible Then
        tsFirmas.SetFocus
end;

procedure TfrmDiarioFirmas.Paste1Click(Sender: TObject);
begin
UtGrid.AddRowsFromClip;
end;

procedure TfrmDiarioFirmas.ReporteDiarioCalcFields(DataSet: TDataSet);
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sDescripcion from ordenes_frentes Where sContrato = :contrato and sNumeroOrden = :Orden and sIdFrente = :Turno') ;
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
    connection.QryBusca.Params.ParamByName('orden').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
    connection.QryBusca.Params.ParamByName('turno').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('turno').Value := ReporteDiario.FieldValues['sIdTurno'] ;
    connection.QryBusca.Open ;
    If connection.QryBusca.RecordCount > 0 then
        ReporteDiariosDescripcionTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
    Else
        ReporteDiariosDescripcionTurno.Value := 'Frente Unico'

end;

end.


