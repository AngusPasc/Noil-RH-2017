unit frm_ReportePeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons, RxLookup, RxMemDS, utilerias, Newpanel,
  RXCtrls, DateUtils, math, strUtils, ImgList, frxPreview, UnitTBotonesPermisos,
  frxChart, ZAbstractRODataset, ZDataset, ZAbstractDataset,
  jpeg, ComObj, UnitExcepciones, UFunctionsGHH, DBDateTimePicker, JvExForms,
  JvCustomItemViewer, JvImageListViewer, JvExStdCtrls, JvListComb, AdvGroupBox,
  RXDBCtrl, sMaskEdit, sCustomComboEdit, sComboEdit, NxEdit, ExtDlgs;
function IsDate(ADate: string): Boolean;
type
  TfrmReportePeriodo = class(TForm)
    dbReporte: TfrxDBDataset;
    ds_ordenesdetrabajo: TDataSource;
    rxInactivos: TRxMemoryData;
    rxInactivossContrato: TStringField;
    rxInactivossNumeroReporte: TStringField;
    rxInactivossHoraInicio: TStringField;
    rxInactivossHoraFinal: TStringField;
    rxInactivossTiempoEfectivo: TStringField;
    rxInactivosiPersonal: TIntegerField;
    rxInactivossTiempoMuerto: TStringField;
    rxInactivossTiempoMuertoReal: TStringField;
    rxInactivostmsHoraInicio: TStringField;
    rxInactivostmsHoraFinal: TStringField;
    rxInactivostmsTiempoMuerto: TStringField;
    rxInactivostmiPersonal: TIntegerField;
    rxInactivostmiPersonalOrden: TIntegerField;
    rxInactivostmmDescripcion: TMemoField;
    rxInactivossIdUsuarioAutoriza: TStringField;
    rxInactivosdIdFecha: TDateField;
    rxInactivossDescripcion: TStringField;
    rFotografico: TfrxDBDataset;
    rxReporteFotografico: TRxMemoryData;
    rxReporteFotograficosContrato: TStringField;
    rxReporteFotograficosNumeroReporte: TStringField;
    rxReporteFotograficoiImagen: TIntegerField;
    rxReporteFotograficobImagen: TBlobField;
    rxReporteFotograficosDescripcion: TMemoField;
    rxReporteFotograficosDescripcionCorta: TStringField;
    rxReporteFotograficosNumeroOrden: TStringField;
    rxReporteFotograficodIdFecha: TDateField;
    dsPlataforma: TfrxDBDataset;
    rxReporteFotograficobImagen2: TBlobField;
    rxReporteFotograficosDescripcion2: TMemoField;
    dsPersonalPernocta: TfrxDBDataset;
    dsPersonalPlataforma: TfrxDBDataset;
    rxPlataforma: TRxMemoryData;
    rxPlataformasTitulo: TStringField;
    rxPlataformasCantidad: TStringField;
    rxPernocta: TRxMemoryData;
    StringField1: TStringField;
    StringField2: TStringField;
    rxPlataformaiItem: TIntegerField;
    rxPernoctaiItem: TIntegerField;
    dsPernocta: TfrxDBDataset;
    rxNotas: TRxMemoryData;
    StringField3: TStringField;
    StringField4: TStringField;
    MemoField1: TMemoField;
    rxNotassDescripcion: TStringField;
    dsNotas: TfrxDBDataset;
    rDiario: TfrxReport;
    dsComentarios: TfrxDBDataset;
    rNotas: TfrxReport;
    ordenesdetrabajo: TZReadOnlyQuery;
    QryComentarios: TZReadOnlyQuery;
    QryPlataforma: TZReadOnlyQuery;
    QryPernocta: TZReadOnlyQuery;
    pgInformes: TPageControl;
    tabFotografico: TTabSheet;
    gbParametros: tNewGroupBox;
    tNewGroupBox1: tNewGroupBox;
    tNewGroupBox3: tNewGroupBox;
    tNewGroupBox5: tNewGroupBox;
    GroupReportesDiarios: tNewGroupBox;
    QryPersonalPlataforma: TZReadOnlyQuery;
    QryPersonalPernocta: TZReadOnlyQuery;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdensContrato: TStringField;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdeniNivel: TIntegerField;
    ActividadesxOrdensSimbolo: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdensTipoActividad: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendVentaDLL: TFloatField;
    ActividadesxOrdeniColor: TIntegerField;
    ActividadesxOrdensIdConvenio: TStringField;
    ActividadesxOrdensWbsSpace: TStringField;
    ActividadesxOrdendCantidadPeriodo: TFloatField;
    ActividadesxOrdendAcumulado: TFloatField;
    ActividadesxOrdendAcumuladoAnterior: TFloatField;
    dsActividadesxOrden: TfrxDBDataset;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendTotal: TFloatField;
    ActividadesxOrdendTotalAcumulado: TCurrencyField;
    ActividadesxOrdeniItemOrden: TStringField;
    rReporte: TfrxReport;
    GroupBox3: TGroupBox;
    rbResumenInstalacion: TRadioButton;
    rbDetalleInstalacion: TRadioButton;
    rbComentarios: TRadioButton;
    tsNumeroOrden3: TDBLookupComboBox;
    Label6: TLabel;
    btnImprimeDiarios: TBitBtn;
    GroupBox4: TGroupBox;
    chkConsolidado: TCheckBox;
    chkTiempoMuerto: TCheckBox;
    Label4: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    btnPrinter: TBitBtn;
    GroupBox5: TGroupBox;
    chkPernocta: TCheckBox;
    chkPlataforma: TCheckBox;
    chkDetalle: TCheckBox;
    btnPersonalProgramado: TBitBtn;
    GroupBox6: TGroupBox;
    GroupBox2: TGroupBox;
    tsOrdenesdeTrabajo: TRxCheckListBox;
    btnAlbum: TBitBtn;
    GroupBox7: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    rbResumenGral: TRadioButton;
    mdReporte: TRxMemoryData;
    dsReporte: TfrxDBDataset;
    mdReportesContrato: TStringField;
    mdReportesNumeroActividad: TStringField;
    mdReportemDescripcion: TMemoField;
    mdReportedCantidad: TFloatField;
    mdReportesMedida: TStringField;
    mdReporteDia1: TFloatField;
    mdReporteDia2: TFloatField;
    mdReporteDia3: TFloatField;
    mdReporteDia4: TFloatField;
    mdReporteDia5: TFloatField;
    mdReporteDia6: TFloatField;
    mdReporteDia7: TFloatField;
    mdReporteDia8: TFloatField;
    mdReporteDia9: TFloatField;
    mdReporteDia10: TFloatField;
    mdReporteDia11: TFloatField;
    mdReporteDia12: TFloatField;
    mdReporteDia13: TFloatField;
    mdReporteDia14: TFloatField;
    mdReporteDia15: TFloatField;
    mdReporteDia16: TFloatField;
    mdReporteDia17: TFloatField;
    mdReporteDia18: TFloatField;
    mdReporteDia19: TFloatField;
    mdReporteDia20: TFloatField;
    mdReporteDia21: TFloatField;
    mdReporteDia22: TFloatField;
    mdReporteDia23: TFloatField;
    mdReporteDia24: TFloatField;
    mdReporteDia25: TFloatField;
    mdReporteDia26: TFloatField;
    mdReporteDia27: TFloatField;
    mdReporteDia28: TFloatField;
    mdReporteDia29: TFloatField;
    mdReporteDia30: TFloatField;
    mdReporteDia31: TFloatField;
    mdReportesWbs: TStringField;
    chkMoneda: TCheckBox;
    Label7: TLabel;
    dbFiltro: TDBLookupComboBox;
    Afectaciones: TZReadOnlyQuery;
    ds_afectaciones: TDataSource;
    dsConfiguracion: TfrxDBDataset;
    dsQryGraficaTiemposMuertos: TfrxDBDataset;
    rbDetalleAvances: TRadioButton;
    mdReportedTotal: TFloatField;
    mdReporteMes: TStringField;
    mdReporteAnio: TStringField;
    chkDLL: TCheckBox;
    mdReportedIdFecha: TDateField;
    mdDatosAux: TRxMemoryData;
    StringField10: TStringField;
    StringField11: TStringField;
    MemoField3: TMemoField;
    FloatField1: TFloatField;
    StringField12: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField13: TStringField;
    FloatField34: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateField1: TDateField;
    mdReportesWbsAnterior: TStringField;
    mdDatosAuxsWbsAnterior: TStringField;
    rbProgramado: TRadioButton;
    mdReportedFechaInicio: TDateField;
    mdReportedFechaFinal: TDateField;
    QryGraficaTiemposMuertos: TZReadOnlyQuery;
    chkFases: TCheckBox;
    rbVolumenGeneral: TRadioButton;
    Timer1: TTimer;
    //rxReporteFotograficosContrato: TStringField;  conflicto de versiones
    ProgressBar1: TProgressBar;
    rxReporteFotograficosNumeroActividad: TStringField;
    rxReporteFotograficosFasePartida: TStringField;
    rxReporteFotograficosIdFolio: TStringField;
    tdFechaInicial: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    TabSheet1: TTabSheet;
    dbDetalle: TfrxDBDataset;
    GroupBox1: TGroupBox;
    tNewGroupBox2: tNewGroupBox;
    GroupBox9: TGroupBox;
    tNewGroupBox6: tNewGroupBox;
    GroupBox10: TGroupBox;
    tNewGroupBox4: tNewGroupBox;
    Label8: TLabel;
    tsNumeroActividad: TRxDBLookupCombo;
    Label3: TLabel;
    tsNumeroOrdenActa: TDBLookupComboBox;
    QryPartidasEfectivas: TZReadOnlyQuery;
    ds_ParidasEfectivas: TDataSource;
    Detalle: TZReadOnlyQuery;
    Imagenes: TImageList;
    GroupBox11: TGroupBox;
    bImagen: TImage;
    Grid_Imagenes: TRxDBGrid;
    btnInsert: TBitBtn;
    ds_FotosPartidas: TDataSource;
    FotosPartidas: TZReadOnlyQuery;
    btnPreview: TBitBtn;
    labelFase: TLabel;
    Label5: TLabel;
    cmdNuevo: TBitBtn;
    cmdEliminar: TBitBtn;
    btnImportar: TBitBtn;
    GroupBox8: TGroupBox;
    bImagen2: TImage;
    cmdImprimeActa: TBitBtn;
    ComboActas: TComboBox;
    ds_fotografico_acta: TDataSource;
    btnPreview2: TBitBtn;
    btnUp: TBitBtn;
    btnDown: TBitBtn;
    btnDelete: TBitBtn;
    OpenPicture: TOpenPictureDialog;
    fotografico_acta: TZQuery;
    fotografico_actaiImagen: TIntegerField;
    fotografico_actalImprime: TStringField;
    fotografico_actasNumeroActividad: TStringField;
    fotografico_actasFasePartida: TStringField;
    fotografico_actasContrato: TStringField;
    fotografico_actasNumeroOrden: TStringField;
    fotografico_actasActaFotografica: TStringField;
    fotografico_actadIdFecha: TDateField;
    fotografico_actabImagen: TBlobField;
    fotografico_actasWbs: TStringField;
    grid_bitacorapersonal: TRxDBGrid;
    rxReporteFotograficomDescripcion: TMemoField;
    rxReporteFotograficosTituloOrden: TStringField;
    rxReporteFotograficoContratoPrincipal: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure btnPrinterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tdFechaInicialEnter(Sender: TObject);
    procedure tdFechaInicialExit(Sender: TObject);
    procedure tdFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure ReporteGetValue(const VarName: String; var Value: Variant);
    procedure btnAlbumClick(Sender: TObject);
    procedure frxFotograficoGetValue(const VarName: String;
      var Value: Variant);
    procedure btnPersonalProgramadoClick(Sender: TObject);
    procedure frxGerencialGetValue(const VarName: String;
      var Value: Variant);
    procedure ActualizaPlataforma(Sender: TObject);
    procedure ActualizaPernocta(Sender: TObject);
    procedure frxProgramacionGetValue(const VarName: String;
      var Value: Variant);
    procedure btnImprimeDiariosClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: String; var Value: Variant);
    procedure chkDetalleClick(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure dbFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure dbFiltroEnter(Sender: TObject);
    procedure dbFiltroExit(Sender: TObject);
    procedure chkMonedaClick(Sender: TObject);
    procedure chkDLLClick(Sender: TObject);
    procedure rbDetalleInstalacionEnter(Sender: TObject);
    procedure rbDetalleAvancesEnter(Sender: TObject);
    procedure rbComentariosEnter(Sender: TObject);
    procedure rbResumenInstalacionEnter(Sender: TObject);
    procedure rbAnalisisFinancieroEnter(Sender: TObject);
    procedure rbResumenGralEnter(Sender: TObject);
    procedure rbProgramadoEnter(Sender: TObject);
    procedure rbVolumenGeneralEnter(Sender: TObject);
    procedure OnClick3D(Sender: TObject);
    procedure tsNumeroOrden3Enter(Sender: TObject);
    procedure tsNumeroOrden3Exit(Sender: TObject);
    procedure tsNumeroOrden3KeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicialChange(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure FotosPartidasAfterScroll(DataSet: TDataSet);
    procedure pgInformesChange(Sender: TObject);
    procedure cmdNuevoClick(Sender: TObject);
    procedure ComboActasKeyPress(Sender: TObject; var Key: Char);
    procedure cmdEliminarClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure ComboActasExit(Sender: TObject);
    procedure btnPreview2Click(Sender: TObject);
    procedure fotografico_actaAfterScroll(DataSet: TDataSet);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure OrdenarFotos(sParamOrden : string);
    procedure ComboActasEnter(Sender: TObject);
    procedure tsNumeroOrdenActaExit(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure cmdImprimeActaClick(Sender: TObject);
    procedure fotografico_actaAfterInsert(DataSet: TDataSet);
    procedure tsNumeroOrdenActaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenActaEnter(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
    procedure PowerPointAlbum(roqDatos : TRxMemoryData; fileName : string);

  public
    { Public declarations }
  end;

Const
  MaxCol = 31;
  NomMes : Array[1..12] of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO',
                                     'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIMEBRE', 'DICIEMBRE');

var
  frmReportePeriodo : TfrmReportePeriodo;
  sHoraResult : String ;
  iReportes, Dias1, Dias2   : Integer ;
  sOrdenes : WideString ;
  dProgramado, dReal, dPromedio : Real ;
  sContrato, sPernocta, sPlataforma : String ;
  sFechaInicio : String ;
  sConvenioInicio, sConvenioFinal, sActa, sNuevoInicio, sNuevoFinal : String ;
  StringPuesto: TStrings;
  StringNombre: TStrings;
  sPoliza, sFianza : String ;
  lExiste            : Boolean ;
  InicioReal, TerminoReal: TDate;
  BotonPermiso: TBotonesPermisos;

implementation

uses frm_OpcionesAvances;

{$R *.dfm}

procedure TfrmReportePeriodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    BotonPermiso.free;
    action := cafree ;
end;

procedure TfrmReportePeriodo.tsNumeroActividadChange(Sender: TObject);
begin
    if QryPartidasEfectivas.RecordCount > 0 then
    begin
        FotosPartidas.Active := False;
        FotosPartidas.ParamByName('Contrato').AsString  := global_contrato;
        FotosPartidas.ParamByName('Orden').AsString     := tsNumeroOrdenActa.Text;
        FotosPartidas.ParamByName('Wbs').AsString       := QryPartidasefectivas.FieldValues['sWbs'];
        FotosPartidas.ParamByName('Actividad').AsString := QryPartidasEfectivas.FieldValues['sNumeroActividad'];
        FotosPartidas.Open;

        if FotosPartidas.RecordCount = 0 then
        begin
            bImagen.Picture.LoadFromFile('');
            messageDLG('No Existen Imagenes Asignadas a la Partida '+QryPartidasEfectivas.FieldValues['sNumeroActividad'], mtInformation, [mbOk],0);
        end;
    end;
end;

procedure TfrmReportePeriodo.tsNumeroActividadEnter(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_entrada;
    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value    := global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('convenio').Value    := global_convenio;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType    := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value       := tsNumeroOrdenActa.Text;
    QryPartidasEfectivas.Open;
end;

procedure TfrmReportePeriodo.tsNumeroActividadExit(Sender: TObject);
begin
    tsNumeroActividad.Color := global_color_salida;
end;

procedure TfrmReportePeriodo.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsNumeroOrdenActa.SetFocus;
end;

procedure TfrmReportePeriodo.tsNumeroOrden3Enter(Sender: TObject);
begin
  tsnumeroorden3.Color:=global_color_entrada
end;

procedure TfrmReportePeriodo.tsNumeroOrden3Exit(Sender: TObject);
begin
  tsnumeroorden3.Color:=global_color_salida
end;

procedure TfrmReportePeriodo.tsNumeroOrden3KeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
      tsNumeroOrden.SetFocus
end;

procedure TfrmReportePeriodo.tsNumeroOrdenActaEnter(Sender: TObject);
begin
    tsNumeroOrdenActa.Color := global_color_entrada;
end;

procedure TfrmReportePeriodo.tsNumeroOrdenActaExit(Sender: TObject);
begin
    tsNumeroOrdenActa.Color := global_color_salida;
    //Ahora el llenado del combobox de las actas fotograficas,
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sActaFotografica from reportefotografico_acta where sContrato =:Contrato and sNumeroOrden =:Orden group by sActaFotografica ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
    connection.QryBusca.Open;

    ComboActas.Items.Clear;
    while not connection.QryBusca.Eof do
    begin
        ComboActas.Items.Add(connection.QryBusca.FieldValues['sActaFotografica']);
        connection.QryBusca.Next;
    end;

    if comboActas.Items.Count > 0 then
    begin
       comboActas.ItemIndex := 0;
       comboActas.OnExit(sender);
    end;
end;

procedure TfrmReportePeriodo.tsNumeroOrdenActaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tsNumeroActividad.SetFocus;
end;

procedure TfrmReportePeriodo.tsNumeroOrdenEnter(
  Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmReportePeriodo.tsNumeroOrdenExit(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmReportePeriodo.tsNumeroOrdenKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        dbfiltro.SetFocus
end;

procedure TfrmReportePeriodo.btnPreview2Click(Sender: TObject);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    If fotografico_acta.RecordCount > 0 then
    Begin
        bImagen.Picture.LoadFromFile('') ;
        BlobField := fotografico_acta.FieldByName('bImagen') ;
        BS := fotografico_acta.CreateBlobStream(BlobField, bmRead) ;
          //.CreateBlobStream ( BlobField , bmRead ) ;
        If bs.Size > 1 Then
        Begin
            try
                Pic:=TJpegImage.Create;
                try
                   Pic.LoadFromStream(bS);
                   bImagen2.Picture.Graphic := Pic;
                finally
                   Pic.Free;
                end;
            finally
                bS.Free
            End
        End;
    End;
end;

procedure TfrmReportePeriodo.btnPreviewClick(Sender: TObject);
var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    If FotosPartidas.RecordCount > 0 then
    Begin
        bImagen.Picture.LoadFromFile('') ;
        BlobField := FotosPartidas.FieldByName('bImagen') ;
        BS := FotosPartidas.CreateBlobStream(BlobField, bmRead) ;
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
        End;
        labelFase.Caption := ' Fase: '+ fotospartidas.FieldValues['sFasePartida'];
    End;
end;

procedure TfrmReportePeriodo.btnPrinterClick(Sender: TObject);
Var
    iCuadrilla     : Integer ;
    sDescripcion   : String ;
    sMuerto,
    sTmpMuerto     : String ;
    sFecha         : String ;
    sOrden         : String ;
    sLinea,
    sLinea2        : String ;
    lImprime       : Boolean ;
    lRegistra      : Boolean ;
    QryGraficaTiemposMuertos,
    QryReportesDiarios,
    QryTiempoMuerto        : tzReadOnlyquery ;
    sDir: string;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
   showmessage('la fecha final de impresión es menor a la fecha inicial de impresión' );
   tdFechaFinal.SetFocus;
   exit;
   end;
  try
    if not BotonPermiso.imprimir then
    begin
      showmessage('No tiene permisos de impresión');
      exit;
    end;

    QryReportesDiarios := tzReadOnlyQuery.Create(Self) ;
    QryReportesDiarios.Connection := connection.zConnection ;

    QryTiempoMuerto := tzReadOnlyQuery.Create(Self) ;
    QryTiempoMuerto.Connection := connection.zConnection ;

    QryGraficaTiemposMuertos := tzReadOnlyQuery.Create(Self) ;
    QryGraficaTiemposMuertos.Connection := connection.zConnection ;

    dsQryGraficaTiemposMuertos.DataSet  := QryGraficaTiemposMuertos ;
    dsQryGraficaTiemposMuertos.UserName := 'dsQryGraficaTiemposMuertos' ;

    sSuperIntendente := '' ;
    sSupervisor := '' ;
    sPuestoSuperintendente := '' ;
    sPuestoSupervisor := '' ;
    sSupervisorTierra := '' ;
    sPuestoSupervisorTierra := '' ;

    if dbFiltro.KeyValue <> null then
       sLinea2 := ' and j.sIdTipoMovimiento =:Filtro ';

    QryGraficaTiemposMuertos.Active := False ;
    QryGraficaTiemposMuertos.SQL.Clear ;

    QryReportesDiarios.Active := False ;
    QryReportesDiarios.SQL.Clear ;

    If chkConsolidado.Checked Then
    Begin
        QryGraficaTiemposMuertos.SQL.Add('Select concat("CONTRATO No. " , r.sContrato) as sNumeroOrden, r.dIdFecha, ' +
                                         '(sum(substr(j.sTiempoMuerto, 1 , 2)) + sum(substr(j.sTiempoMuerto, 4 , 2)) div 60 + ' +
                                         '(sum(substr(j.sTiempoMuerto, 4 , 2)) % 60 ) / 100 ) as iTiempoMuertoReal From reportediario r ' +
                                         'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
                                         'left join jornadasdiarias j on (r.sContrato = j.sContrato And r.sNumeroOrden = j.sNumeroOrden And r.dIdFecha = j.dIdFecha And r.sIdTurno = j.sIdTurno And j.sTipo = "Tiempo Inactivo" '+sLinea2+')'+
                                         'inner join tiposdemovimiento tm on (t.sContrato = tm.sContrato And j.sIdTipoMovimiento = tm.sIdTipoMovimiento) '+
                                         'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And ' +
                                         'r.dIdFecha <= :FechaF And r.lStatus = "Autorizado" Group By r.dIdfecha Order By r.dIdFecha') ;

        QryReportesDiarios.SQL.Add('Select r.sNumeroOrden, r.sNumeroReporte, r.dIdFecha, r.sIdTurno, r.sIdUsuarioAutoriza, r.sOperacionInicio, ' +
                                   'r.sOperacionFinal, r.sTiempoAdicional, r.sTiempoEfectivo, r.sTiempoMuerto, r.sTiempoMuertoReal, r.iPersonal From reportediario r ' +
                                   'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
                                   'where r.sContrato = :Contrato And r.dIdFecha >= :FechaInicio And r.dIdFecha <= :FechaFinal And r.lStatus = "Autorizado" ' +
                                   'Order By r.dIdFecha')
    End
    Else
    Begin
        QryGraficaTiemposMuertos.SQL.Add('Select concat("ORDEN DE TRABAJO No. " , r.sNumeroOrden) as sNumeroOrden, r.dIdFecha, ' +
                                         '(sum(substr(j.sTiempoMuerto, 1 , 2)) + sum(substr(j.sTiempoMuerto, 4 , 2)) div 60 + ' +
                                         '(sum(substr(j.sTiempoMuerto, 4 , 2)) % 60 ) / 100 ) as iTiempoMuertoReal From reportediario r ' +
                                         'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
                                         'left join jornadasdiarias j on (r.sContrato = j.sContrato And r.sNumeroOrden = j.sNumeroOrden And r.dIdFecha = j.dIdFecha And r.sIdTurno = j.sIdTurno And j.sTipo = "Tiempo Inactivo" '+sLinea2+')'+
                                         'inner join tiposdemovimiento tm on (t.sContrato = tm.sContrato And j.sIdTipoMovimiento = tm.sIdTipoMovimiento) '+
                                         'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And ' +
                                         'r.dIdFecha <= :FechaF And r.lStatus = "Autorizado" And r.sNumeroOrden = :Orden Group By r.dIdfecha Order By r.dIdFecha') ;
        QryGraficaTiemposMuertos.Params.ParamByName('orden').DataType := ftString ;
        QryGraficaTiemposMuertos.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;

        QryReportesDiarios.SQL.Add('Select r.sNumeroOrden, r.sNumeroReporte, r.dIdFecha, r.sIdTurno, r.sIdUsuarioAutoriza, r.sOperacionInicio, ' +
                                   'r.sOperacionFinal, r.sTiempoAdicional, r.sTiempoEfectivo, r.sTiempoMuerto, r.sTiempoMuertoReal, r.iPersonal From reportediario r ' +
                                   'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No") ' +
                                   'where r.sContrato = :Contrato And r.sNumeroOrden = :Orden And r.dIdFecha >= :FechaInicio And r.dIdFecha <= :FechaFinal And r.lStatus = "Autorizado" ' +
                                   'Order By r.dIdFecha') ;
        QryReportesDiarios.Params.ParamByName('Orden').DataType := ftString ;
        QryReportesDiarios.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    End ;

    QryReportesDiarios.Params.ParamByName('Contrato').DataType := ftString ;
    QryReportesDiarios.Params.ParamByName('Contrato').Value := global_contrato ;
    QryReportesDiarios.Params.ParamByName('FechaInicio').DataType := ftDate ;
    QryReportesDiarios.Params.ParamByName('FechaInicio').Value := tdFechaInicial.Date ;
    QryReportesDiarios.Params.ParamByName('FechaFinal').DataType := ftDate ;
    QryReportesDiarios.Params.ParamByName('FechaFinal').Value := tdFechaFinal.Date ;
    QryReportesDiarios.Open ;

    rxInactivos.EmptyTable ;
    if dbFiltro.KeyValue <> null then
       sLinea := ' and t.sIdTipoMovimiento =:Filtro ';

    sHoraResult := '00:00' ;
    iReportes := 0 ;
    sFecha := '' ;
    sOrden := '' ;
    While NOT QryReportesDiarios.Eof Do
    Begin
        iReportes := iReportes + 1 ;
        iCuadrilla := 0 ;

        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select SUM(b.dCantidad) as dTotal From bitacoradepersonal b ' +
                                    'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha and b.iIdDiario = b2.iIdDiario) ' +
                                    'INNER JOIN turnos t ON (b2.sContrato = t.sContrato And b2.sIdTurno = t.sIdTurno And t.sOrigenTierra = "No")' +
                                    'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha Group By b2.sContrato') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.QryBusca.Params.ParamByName('Fecha').Value := QryReportesDiarios.FieldValues['dIdFecha'] ;
        Connection.QryBusca.Open ;
        If Connection.QryBusca.RecordCount > 0 Then
            iCuadrilla := Connection.QryBusca.FieldValues['dTotal'] ;

        lImprime := False ;
        if dbFiltro.KeyValue = null then
           sHoraResult := sfnSumaHoras ( sHoraResult, QryReportesDiarios.FieldValues['sTiempoMuerto'] );

        //Aqui se cambia para el tiempo muerto del capri
        qryTiempoMuerto.Active := False ;
        qryTiempoMuerto.SQL.Clear ;
        qryTiempoMuerto.SQL.Add('Select t.sIdPernocta, t.sHoraInicio, t.sHoraFinal, t.dPersonal, t.dFrente, t.sTiempoMuerto, t.mDescripcion, tm.sDescripcion From jornadasdiarias t ' +
                             'INNER JOIN tiposdemovimiento tm on (t.sContrato = tm.sContrato And t.sIdTipoMovimiento = tm.sIdTipoMovimiento) ' +
                             'Where t.sContrato = :Contrato And t.sNumeroOrden = :Orden And t.dIdFecha = :fecha And t.sIdTurno = :Turno And t.sTipo = "Tiempo Inactivo"'+ sLinea) ;
        qryTiempoMuerto.Params.ParamByName('Contrato').DataType := ftString ;
        qryTiempoMuerto.Params.ParamByName('Contrato').Value    := global_contrato ;
        qryTiempoMuerto.Params.ParamByName('Orden').DataType    := ftString ;
        qryTiempoMuerto.Params.ParamByName('Orden').Value       := QryReportesDiarios.FieldValues['sNumeroOrden'] ;
        qryTiempoMuerto.Params.ParamByName('Fecha').DataType    := ftDate ;
        qryTiempoMuerto.Params.ParamByName('Fecha').Value       := QryReportesDiarios.FieldValues['dIdFecha'] ;
        qryTiempoMuerto.Params.ParamByName('Turno').DataType    := ftString ;
        qryTiempoMuerto.Params.ParamByName('Turno').Value       := QryReportesDiarios.FieldValues['sIdTurno'] ;
        if dbFiltro.KeyValue <> null then
        begin
            qryTiempoMuerto.Params.ParamByName('Filtro').DataType := ftString ;
            qryTiempoMuerto.Params.ParamByName('Filtro').Value    := dbFiltro.KeyValue ;
        end;
        qryTiempoMuerto.Open ;
        lImprime := True ;
        If qryTiempoMuerto.RecordCount > 0 Then
            While NOT qryTiempoMuerto.Eof Do
            Begin
                If chkTiempoMuerto.Checked Then
                    If QryReportesDiarios.FieldValues['sTiempoMuerto'] <> '00:00' Then
                        lRegistra := True
                    Else
                        lRegistra := False
                Else
                    lRegistra := True ;

                If lRegistra Then
                Begin
                    rxInactivos.Append ;
                    rxInactivos.FieldValues ['sContrato']          := global_contrato ;
                    rxInactivos.FieldValues ['dIdFecha']           := QryReportesDiarios.FieldValues['dIdFecha'] ;
                    rxInactivos.FieldValues ['sNumeroReporte']     := QryReportesDiarios.FieldValues['sNumeroReporte'] ;
                    rxInactivos.FieldValues ['sIdUsuarioAutoriza'] := QryReportesDiarios.FieldValues['sIdUsuarioAUtoriza'] ;
                    rxInactivos.FieldValues ['sHoraInicio']        := QryReportesDiarios.FieldValues['sOperacionInicio'] ;
                    rxInactivos.FieldValues ['sHoraFinal']         := QryReportesDiarios.FieldValues['sOperacionFinal'] ;
                    rxInactivos.FieldValues ['sHoraInicio']        := QryReportesDiarios.FieldValues['sOperacionInicio'] ;
                    rxInactivos.FieldValues ['sTiempoEfectivo']    := QryReportesDiarios.FieldValues['sTiempoEfectivo'] ;
                    rxInactivos.FieldValues ['sTiempoMuerto']      := QryReportesDiarios.FieldValues['sTiempoMuerto'] ;
                    If lImprime Then
                    Begin
                        If QryReportesDiarios.FieldValues['sTiempoMuertoReal'] <> '00:00' Then
                        Begin
                             if dbFiltro.KeyValue <> null then
                                rxInactivos.FieldValues ['sTiempoMuertoReal']  := qryTiempoMuerto.FieldValues['sTiempoMuerto']
                             else
                                 rxInactivos.FieldValues ['sTiempoMuertoReal'] := QryReportesDiarios.FieldValues['sTiempoMuerto'];
                            lImprime := False;
                        End
                    End
                    Else
                    Begin
                        rxInactivos.FieldValues ['sTiempoMuerto']     := '' ;
                        if dbFiltro.KeyValue <> null then
                           rxInactivos.FieldValues ['sTiempoMuertoReal'] := qryTiempoMuerto.FieldValues['sTiempoMuerto']
                        else
                            rxInactivos.FieldValues ['sTiempoMuertoReal'] := '';
                    End ;

                    if dbFiltro.KeyValue <> null then
                       sHoraResult := sfnSumaHoras ( sHoraResult, qryTiempoMuerto.FieldValues['sTiempoMuerto'] ) ;

                    rxInactivos.FieldValues ['tmsDescripcion']   := qryTiempoMuerto.FieldValues['sDescripcion'] ;
                    rxInactivos.FieldValues ['tmsHoraInicio']    := qryTiempoMuerto.FieldValues['sHoraInicio'] ;
                    rxInactivos.FieldValues ['tmsHoraFinal']     := qryTiempoMuerto.FieldValues['sHoraFinal'] ;
                    rxInactivos.FieldValues ['tmsTiempoMuerto']  := qryTiempoMuerto.FieldValues['sTiempoMuerto'] ;
                    rxInactivos.FieldValues ['tmiPersonal']      := qryTiempoMuerto.FieldValues['dFrente'] ;
                    rxInactivos.FieldValues ['tmiPersonalOrden'] := QryReportesDiarios.FieldValues['iPersonal'] ;
                    rxInactivos.FieldValues['iPersonal']         := iCuadrilla ;
                    rxInactivos.FieldValues ['tmmDescripcion']   := qryTiempoMuerto.FieldValues['mDescripcion'] ;
                    rxInactivos.Post;
                End ;
                qryTiempoMuerto.Next
        End;
        QryReportesDiarios.Next ;
    End ;

    { SOLO PATA MOSTRAR ENCABEZADOS SINO EXISEN TIEMPOS MUERTOS }
    if rxInactivos.RecordCount = 0 then
    begin
        rxInactivos.Append ;
        rxInactivos.FieldValues ['sContrato'] := global_contrato ;
        rxInactivos.Post;
    end;

    QryGraficaTiemposMuertos.Params.ParamByName('Contrato').DataType := ftString ;
    QryGraficaTiemposMuertos.Params.ParamByName('Contrato').Value    := global_contrato ;
    QryGraficaTiemposMuertos.Params.ParamByName('FechaI').DataType   := ftDate ;
    QryGraficaTiemposMuertos.Params.ParamByName('FechaI').Value      := tdFechaInicial.Date ;
    QryGraficaTiemposMuertos.Params.ParamByName('FechaF').DataType   := ftDate ;
    QryGraficaTiemposMuertos.Params.ParamByName('FechaF').Value      := tdFechaFinal.Date ;
    if dbFiltro.KeyValue <> null then
    begin
         QryGraficaTiemposMuertos.Params.ParamByName('Filtro').DataType := ftString ;
         QryGraficaTiemposMuertos.Params.ParamByName('Filtro').Value    := dbFiltro.KeyValue ;
    end;
    QryGraficaTiemposMuertos.Open ;

    { MOSTRAR EN CERO LA GRAFICA SINO EXITEN TIEMPOS MUERTOS }
    if QryGraficaTiemposMuertos.RecordCount = 0 then
    begin

        QryGraficaTiemposMuertos.Active := False ;
        QryGraficaTiemposMuertos.SQL.Clear ;
        If chkConsolidado.Checked Then
            QryGraficaTiemposMuertos.SQL.Add('Select concat("CONTRATO No. " , sContrato) as sNumeroOrden, dIdFecha, 0 as iTiempoMuertoReal From reportediario '+
                                             'where sContrato =:Contrato and dIdFecha =:Fecha ')
        else
        begin
            QryGraficaTiemposMuertos.SQL.Add('Select concat("ORDEN DE TRABAJO No. ", sNumeroOrden) as sNumeroOrden, dIdFecha, 0 as iTiempoMuertoReal From reportediario '+
                                             'where sContrato =:Contrato and sNumeroOrden =:Orden and dIdFecha =:Fecha ') ;
            QryGraficaTiemposMuertos.Params.ParamByName('Orden').DataType := ftString ;
            QryGraficaTiemposMuertos.Params.ParamByName('Orden').Value    := tsNumeroOrden.Text ;
        end;
        QryGraficaTiemposMuertos.Params.ParamByName('Contrato').DataType  := ftString ;
        QryGraficaTiemposMuertos.Params.ParamByName('Contrato').Value     := global_contrato ;
        QryGraficaTiemposMuertos.Params.ParamByName('Fecha').DataType     := ftDate ;
        QryGraficaTiemposMuertos.Params.ParamByName('Fecha').Value        := tdFechaFinal.Date ;
        QryGraficaTiemposMuertos.Open;
    end;

    rDiarioFirmas (global_contrato, tsNumeroOrden.Text, 'A',tdFechaFinal.Date, frmReportePeriodo) ;

    if (rxInactivos.RecordCount > 0) or (QryGraficaTiemposMuertos.RecordCount > 0) then
    begin
        rReporte.PreviewOptions.MDIChild  := False ;
        rReporte.PreviewOptions.Modal     := True ;
        rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
        rReporte.PreviewOptions.ShowCaptions := False ;
        rReporte.Previewoptions.ZoomMode  := zmPageWidth ;

        If chkConsolidado.Checked Then
           sDir := 'ReporteConsolidadodeTiemposMuertos.fr3'
           //rReporte.LoadFromFile (global_files + 'ReporteConsolidadodeTiemposMuertos.fr3')
        Else
           sDir := 'ConcentradodeReportesDiarios.fr3';
           //rReporte.LoadFromFile (global_files + 'ConcentradodeReportesDiarios.fr3') ;
        rReporte.LoadFromFile (global_files + sDir) ;
        rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
        if not FileExists(global_files + sDir) then
            showmessage('El archivo de reporte ' + sDir + '.fr3 no existe, notifique al administrador del sistema');
    end
    else begin
        showmessage('No hay datos para imprimir');
    end;

    QryGraficaTiemposMuertos.Destroy ;
    QryReportesDiarios.Destroy;
    qryTiempoMuerto.Destroy ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir tiempos muertos', 0);
    end;
  end;
end;

procedure TfrmReportePeriodo.btnUpClick(Sender: TObject);
begin
    OrdenarFotos('Arriba');
end;

procedure TfrmReportePeriodo.btnInsertClick(Sender: TObject);
var
   iItem : integer;
begin
    if comboActas.Text = '' then
    begin
       messageDLG('Seleccione una Acta Fotografica o Cree una nueva!', mtInformation, [mbOk], 0);
       exit;
    end;

    if fotosPartidas.RecordCount > 0 then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select max(iImagen) as iImagen from reportefotografico_acta '+
                                    'where sContrato =:Contrato and sNumeroOrden =:Orden and sActaFotografica =:Acta group by sContrato');
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
        connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
        connection.zcommand.Params.ParamByName('Orden').Value       := tsNumeroOrdenActa.Text;
        connection.zcommand.Params.ParamByName('Acta').DataType     := ftString ;
        connection.zcommand.Params.ParamByName('Acta').Value        := ComboActas.Text ;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
           iItem := connection.zCommand.FieldValues['iImagen'] + 1
        else
           iItem := 1;

        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zcommand.SQL.Add ( 'Insert Into reportefotografico_acta (sContrato, sNumeroOrden, sActaFotografica, dIdFecha, iImagen, bImagen, sWbs, sNumeroActividad, sFasePartida) ' +
                                      'Values (:Contrato, :Orden, :Acta, :Fecha, :Item, :Imagen, :Wbs, :Actividad, :Fase)') ;
        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
        connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
        connection.zcommand.Params.ParamByName('Orden').Value       := tsNumeroOrdenActa.Text;
        connection.zcommand.Params.ParamByName('Acta').DataType     := ftString ;
        connection.zcommand.Params.ParamByName('Acta').Value        := ComboActas.Text ;
        connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
        connection.zcommand.Params.ParamByName('Fecha').Value       := date ;
        connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
        connection.zcommand.Params.ParamByName('Item').Value        := iItem ;
        connection.zcommand.Params.ParamByName('Imagen').DataType   := ftBlob;
        connection.zcommand.Params.ParamByName('Imagen').Value      := fotosPartidas.FieldValues['bImagen'];
        connection.zcommand.Params.ParamByName('Wbs').DataType      := ftString ;
        connection.zcommand.Params.ParamByName('Wbs').Value         := fotosPartidas.FieldValues['sWbs'];
        connection.zcommand.Params.ParamByName('Actividad').DataType:= ftString ;
        connection.zcommand.Params.ParamByName('Actividad').Value   := fotosPartidas.FieldValues['sNumeroActividad'];
        connection.zcommand.Params.ParamByName('Fase').DataType     := ftString ;
        connection.zcommand.Params.ParamByName('Fase').Value        := fotosPartidas.FieldValues['sFasePartida'];
        connection.zCommand.ExecSQL();

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
        connection.zcommand.Params.ParamByName('Descripcion').Value := 'Agrega Fotografias a Reporte Actafotografica ' + comboActas.Text + ' del dia ' + DateToStr(Date) ;
        connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Fotografico' ;
        connection.zCommand.ExecSQL ;

        fotografico_Acta.Active := False;
        fotografico_acta.ParamByName('Contrato').AsString := global_contrato;
        fotografico_acta.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
        fotografico_acta.ParamByName('Acta').AsString     := ComboActas.Text;
        fotografico_acta.Open;

        fotografico_acta.Last;
    end;
end;

procedure TfrmReportePeriodo.FormShow(Sender: TObject);
var
    QryConfiguracion           : tzReadOnlyquery ;
begin
   sMenuP:=stMenu;
   QryConfiguracion := tzReadOnlyQuery.Create(Self) ;
   QryConfiguracion.Connection := connection.zConnection ;

   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'opTiemposM');

   QryConfiguracion.Active := False;
   QryConfiguracion.SQL.Clear;
   QryConfiguracion.SQL.Add('select c.*, c2.* '+
                            'From contratos c2 INNER JOIN configuracion c ON (c.sContrato = c2.sContrato) ' +
                            'Where c2.sContrato = :Contrato');
   QryConfiguracion.ParamByName('contrato').AsString := global_contrato;
   QryConfiguracion.Open;

   dsConfiguracion.FieldAliases.Clear;
   dsConfiguracion.DataSet  := QryConfiguracion ;
   dsConfiguracion.UserName := 'dsConfiguracion' ;

  If global_grupo = 'INTEL-CODE' Then
      rReporte.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbEdit,pbExportQuick]
  Else
      rReporte.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbExportQuick] ;

  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;

  Afectaciones.Active := False ;
  Afectaciones.Params.ParamByName('Contrato').DataType := ftString ;
  Afectaciones.Params.ParamByName('Contrato').Value    := Global_Contrato ;
  Afectaciones.Open ;

  tsOrdenesdeTrabajo.Clear ;

  If OrdenesdeTrabajo.RecordCount > 0 Then
  Begin
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ;
      While NOT OrdenesdeTrabajo.Eof Do
      Begin
          tsOrdenesdeTrabajo.Items.Add(OrdenesdeTrabajo.FieldValues['sNumeroOrden'] ) ;
          OrdenesdeTrabajo.Next
      End
  End ;
  tdFechaInicial.Date := Date ;
  tdFechaFinal.Date := Date ;

  pgInformes.ActivePageIndex := 0 ;

  if not BotonPermiso.imprimir then
  begin
    btnImprimeDiarios.Enabled := false;
  end;
end;



procedure TfrmReportePeriodo.fotografico_actaAfterInsert(DataSet: TDataSet);
begin
    fotografico_acta.FieldValues['sContrato']        := global_contrato;
    fotografico_acta.FieldValues['sNumeroOrden']     := tsNumeroOrdenActa.Text;
    fotografico_acta.FieldValues['sActaFotografica'] := comboActas.Text;
    fotografico_acta.FieldValues['dIdFecha']         := date;
    fotografico_acta.FieldValues['bImagen']          := connection.configuracion.FieldValues['bImagen'];
    fotografico_acta.FieldValues['lImprime']         := 'Si';
    fotografico_acta.FieldValues['sFasePartida']     := 'Ninguno';
end;

procedure TfrmReportePeriodo.fotografico_actaAfterScroll(DataSet: TDataSet);
begin
    btnPreview2.Click;
end;

procedure TfrmReportePeriodo.FotosPartidasAfterScroll(DataSet: TDataSet);
begin
    btnPreview.Click;
end;

procedure TfrmReportePeriodo.tdFechaInicialChange(Sender: TObject);
begin
  tdFechaFinal.Date:=tdFechainicial.Date;
end;

procedure TfrmReportePeriodo.tdFechaInicialEnter(Sender: TObject);
begin
    tdFechaInicial.Color := global_color_entrada
end;

procedure TfrmReportePeriodo.tdFechaInicialExit(Sender: TObject);
begin
    tdFechaInicial.Color := global_color_salida
end;
function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;
procedure TfrmReportePeriodo.tdFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdFechaFinal.SetFocus
end;

procedure TfrmReportePeriodo.tdFechaFinalEnter(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_entrada
end;

procedure TfrmReportePeriodo.tdFechaFinalExit(Sender: TObject);
begin
    tdFechaFinal.Color := global_color_salida
end;

procedure TfrmReportePeriodo.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
      tsNumeroOrden3.SetFocus
end;

procedure TfrmReportePeriodo.ReporteGetValue(const VarName: String;
  var Value: Variant);
Var
  Cual: Integer;
begin
  If CompareText(VarName, 'SEMANA') = 0 then
     Value := WeekOfTheMonth(tdFechaFinal.Date) ;

  If CompareText(VarName, 'DIAS_SEMANA') = 0 then
     Value := (tdFechaFinal.Date - tdFechaInicial.Date) + 1 ;

  if chkMoneda.Checked then
  begin
      If CompareText(VarName, 'MONEDA') = 0 then
         Value := 'M.N.' ;
  end
  else
  begin
       If CompareText(VarName, 'MONEDA') = 0 then
         Value := 'DLL';
  end;

  If CompareText(VarName, 'DESCRIPCION') = 0 then
      Value := ordenesdetrabajo.FieldValues['mDescripcion'] ;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := ordenesdetrabajo.FieldValues['sNumeroOrden'] ;

  If CompareText(VarName, 'MONTO_MODIFICADO') = 0 then
      Value := dMontoModificado ;
  If CompareText(VarName, 'MONTO_CONTRATO') = 0 then
      Value := dMontoContrato ;

  If CompareText(VarName, 'POLIZA') = 0 then
      Value := sPoliza ;
  If CompareText(VarName, 'FIANZA') = 0 then
      Value := sFianza ;

  If CompareText(VarName, 'PUESTO') = 0 then
      Value := StringPuesto.Text ;

  If CompareText(VarName, 'DIRECTORIO') = 0 then
      Value := StringNombre.Text ;

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

  If CompareText(VarName, 'INICIO_ORIGINAL') = 0 then
      Value := sConvenioInicio ;

  If CompareText(VarName, 'TERMINO_ORIGINAL') = 0 then
      Value := sConvenioFinal ;

  If CompareText(VarName, 'ACTA') = 0 then
      Value := sActa ;

  If CompareText(VarName, 'NUEVO_INICIO') = 0 then
      Value := sNuevoInicio ;
  If CompareText(VarName, 'NUEVO_TERMINO') = 0 then
      Value := sNuevoFinal ;

  If CompareText(VarName, 'DURACION') = 0 then
  Begin
      If sNuevoFinal <> '' Then
          Value := StrToDate(sNuevoFinal) - StrToDate(sConvenioInicio) + 1
      Else
          Value := StrToDate(sConvenioFinal) - StrToDate(sConvenioInicio) + 1
  End ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
  If CompareText(VarName, 'ORDEN') = 0 then
      Value := OrdenesdeTrabajo.FieldValues['sDescripcionCorta'] ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('dddd d "de" mmmm "del" yyyy' , tdFechaInicial.Date) + ' al ' + FormatDateTime('dddd d "de" mmmm "del" yyyy' , tdFechaFinal.Date);

  If CompareText(VarName, 'TIEMPO_MUERTO') = 0 then
      Value := sHoraResult ;
  If CompareText(VarName, 'REPORTES') = 0 then
      Value := iReportes ;

  If CompareText(VarName, 'ORDENES') = 0 then
      Value := sOrdenes ;

  // Pasar información para saber cuantas columnas se deben mostrar
  If CompareText(Copy(VarName,1,3), 'COL') = 0 then
  begin
    Cual := StrToInt(Copy(VarName,4,2));
    if Cual > 1 + TerminoReal - InicioReal then
      Value := ''
    else
    begin
      Cual := DayOf(InicioReal + Cual - 1);
      Value := RightStr('0' + IntToStr(Cual),2);
    end;
  end;

  If CompareText(VarName, 'MAXCOL') = 0 then
    Value := 1 + (TerminoReal - InicioReal);

  If CompareText(VarName, 'DIAS1') = 0 then
    Value := Dias1;

  If CompareText(VarName, 'DIAS2') = 0 then
    Value := Dias2;

  If CompareText(VarName, 'MES1') = 0 then
    Value := NomMes[MonthOf(InicioReal)];

  If CompareText(VarName, 'MES2') = 0 then
    Value := NomMes[MonthOf(TerminoReal)];

  If CompareText(VarName, 'PROGRAMADO') = 0 then
    Value := '0';
end;


procedure TfrmReportePeriodo.btnAlbumClick(Sender: TObject);
Var
  item                  : Byte ;
  QryrFotografico,
  QryTituloOrden        : tzReadOnlyQuery ;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
   showmessage('la fecha final de impresión es menor a la fecha inicial de impresión');
   tdFechaFinal.SetFocus;
   exit;
   end;
try
  if not BotonPermiso.imprimir then
  begin
    showmessage('No tiene permisos de impresión');
    exit;
  end;

  QryrFotografico := tzReadOnlyquery.Create(Self) ;
  QryrFotografico.Connection := connection.zConnection ;

  QryTituloOrden := tzReadOnlyquery.Create(Self) ;
  QryTituloOrden.Connection := connection.zConnection ;
  sOrdenes := '' ;
  If rxReporteFotografico.RecordCount > 0 Then
      rxReporteFotografico.EmptyTable ;

  For item := 0 To tsOrdenesdeTrabajo.Items.Count - 1 DO
  Begin
      If tsOrdenesdeTrabajo.Checked[item] Then
      Begin
          QryTituloOrden.Active := False;
          QryTituloOrden.SQL.Clear;
          QryTituloOrden.SQL.Add('select sidfolio,mDescripcion from ordenesdetrabajo where sContrato =:Contrato and sNumeroOrden =:Orden ');
          QryTituloOrden.ParamByName('Contrato').AsString := global_contrato;
          QryTituloorden.ParamByName('Orden').AsString    := tsOrdenesdeTrabajo.Items.Strings[item];
          QryTituloOrden.Open;

          If sOrdenes = '' Then
              rDiarioFirmas (global_contrato, tsOrdenesdeTrabajo.Items[item],'A',tdFechaFinal.Date, frmReportePeriodo) ;
          If sOrdenes <> '' Then
              sOrdenes := sOrdenes + #13#13;
          sOrdenes := sOrdenes + QryTituloOrden.FieldValues['sidfolio'] +' : ' + QryTituloOrden.FieldValues['mDescripcion'];

          QryrFotografico.Active := False ;
          QryrFotografico.SQL.Clear ;
          QryrFotografico.SQL.Add('Select f.*, o.sDescripcionCorta,o.sIdFolio,r.sNumeroOrden, r.dIdFecha From reportefotografico f ' +
                                  'inner join reportediario r ON (r.sContrato = f.sContrato And r.sNumeroReporte = f.sNumeroReporte And r.dIdFecha >= :FechaInicio And r.dIdFecha <= :FechaFinal And r.sNumeroOrden = :Orden) ' +
                                  'inner join ordenesdetrabajo o ON (r.sContrato = o.sContrato And r.sNumeroOrden = o.sNumeroOrden) ' +
                                  'Where f.sContrato = :Contrato And f.lIncluye = "Si" And f.sDescripcion <> "" Order By r.sNumeroOrden, f.sNumeroReporte, f.iImagen') ;
          QryrFotografico.Params.ParamByName('contrato').DataType := ftString ;
          QryrFotografico.Params.ParamByName('contrato').Value := global_contrato ;
          QryrFotografico.Params.ParamByName('FechaInicio').DataType := ftDate ;
          QryrFotografico.Params.ParamByName('FechaInicio').Value := tdFechaInicial.Date ;
          QryrFotografico.Params.ParamByName('FechaFinal').DataType := ftDate ;
          QryrFotografico.Params.ParamByName('FechaFinal').Value := tdFechaFinal.Date ;
          QryrFotografico.Params.ParamByName('orden').DataType := ftString ;
          QryrFotografico.Params.ParamByName('orden').Value := tsOrdenesdeTrabajo.Items.Strings[item] ;
          QryrFotografico.Open ;

          While NOT QryrFotografico.Eof Do
          Begin
              rxReporteFotografico.Append ;
              rxReporteFotografico.FieldValues['sContrato'] := QryrFotografico.FieldValues['sContrato'] ;
              rxReporteFotografico.FieldValues['sNumeroReporte'] := QryrFotografico.FieldValues['sNumeroReporte'] ;
              rxReporteFotografico.FieldValues['iImagen'] := QryrFotografico.FieldValues['iImagen'] ;
              rxReporteFotografico.FieldValues['bImagen'] := QryrFotografico.FieldValues['bImagen'] ;
              rxReporteFotografico.FieldValues['sDescripcion'] := QryrFotografico.FieldValues['sDescripcion'] ;
              rxReporteFotografico.FieldValues['sDescripcionCorta'] := QryrFotografico.FieldValues['sDescripcionCorta'] ;
              rxReporteFotografico.FieldValues['sNumeroOrden'] := QryrFotografico.FieldValues['sNumeroOrden'] ;
              rxReporteFotografico.FieldValues['dIdFecha'] := QryrFotografico.FieldValues['dIdFecha'] ;
              rxReporteFotografico.FieldValues['sIdFolio'] := QryrFotografico.FieldValues['sIdFolio'] ;
              rxReporteFotografico.Post ;
              QryrFotografico.Next
          End ;
      End
  End ;


  If sOrdenes <> '' Then
  Begin
      if rxReporteFotografico.RecordCount > 0 then
      begin
          rReporte.PreviewOptions.MDIChild := True ;
          rReporte.PreviewOptions.Modal := False ;
          rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
          rReporte.PreviewOptions.ShowCaptions := False ;
          rReporte.Previewoptions.ZoomMode := zmPageWidth ;
          rReporte.LoadFromFile(global_files + global_miReporte + '_AlbumFotografico.fr3') ;
          rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
          if not FileExists(global_files + global_miReporte + '_AlbumFotografico.fr3') then
              showmessage('El archivo de reporte AlbumFotografico.fr3 no existe, notifique al administrador del sistema');
      end
      else begin
          showmessage('No hay datos para imprimir');
      end;
  End ;
  QryrFotografico.Destroy ;
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir album fotografico', 0);
  end;
end;
end;

procedure TfrmReportePeriodo.frxFotograficoGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'PERIODO') = 0 then
      Value := 'Del ' + FormatDateTime('dddd d "de" mmmm "del" yyyy' , tdFechaInicial.Date) + ' al ' + FormatDateTime('dddd d "de" mmmm "del" yyyy' , tdFechaFinal.Date);


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
end;

procedure TfrmReportePeriodo.OnClick3D(Sender: TObject);
begin
  showmessage('rangel');
  {if CompareText(Sender.ClassName, 'TButton') = 0 then
    TButton(Sender).Checked := Not TButton(Sender).Checked;}
end;

procedure TfrmReportePeriodo.pgInformesChange(Sender: TObject);
begin
    if pgInformes.ActivePageIndex = 1 then
    begin
        fotografico_Acta.Active := False;
        fotografico_acta.ParamByName('Contrato').AsString := global_contrato;
        fotografico_acta.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
        fotografico_acta.ParamByName('Acta').AsString     := ComboActas.Text;
        fotografico_acta.Open;

        //Ahora el llenado del combobox de las actas fotograficas,
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sActaFotografica from reportefotografico_acta where sContrato =:Contrato and sNumeroOrden =:Orden group by sActaFotografica ');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
        connection.QryBusca.Open;

        ComboActas.Items.Clear;
        while not connection.QryBusca.Eof do
        begin
            ComboActas.Items.Add(connection.QryBusca.FieldValues['sActaFotografica']);
            connection.QryBusca.Next;
        end;
    end;
end;

procedure TfrmReportePeriodo.btnPersonalProgramadoClick(Sender: TObject);
Var
    QryPersonal : TzReadOnlyQuery ;
    QryEquipos  : TzReadOnlyQuery ;
    dsPersonal  : TfrxDBDataSet ;
    dsEquipos  : TfrxDBDataSet ;
    dsQryGraficaTiemposMuertos : TfrxDBDataSet;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
   showmessage('la fecha final de impresión es menor a la fecha inicial de impresión');
   tdFechaFinal.SetFocus;
   exit;
   end;

  if not BotonPermiso.imprimir then
  begin
    showmessage('No tiene permisos de impresión');
    exit;
  end;

  try
    dsQryGraficaTiemposMuertos := TfrxDBDataSet.Create(Self) ;
    dsQryGraficaTiemposMuertos.FieldAliases.Clear ;
    dsQryGraficaTiemposMuertos.UserName := 'dsQryGraficaTiemposMuertos' ;

    QryPersonal := tzReadOnlyQuery.Create(Self) ;
    QryPersonal.Connection := connection.zConnection ;
    QryEquipos := tzReadOnlyQuery.Create(Self) ;
    QryEquipos.Connection := connection.zConnection ;

    dsPersonal := TfrxDBDataSet.Create(Self) ;
    dsPersonal.DataSet := QryPersonal ;
    dsPersonal.UserName := 'dsPersonal' ;

    dsEquipos := TfrxDBDataSet.Create(Self) ;
    dsEquipos.DataSet := QryEquipos ;
    dsEquipos.UserName := 'dsEquipos' ;


    If chkDetalle.Checked Then
    Begin
        QryPersonal.Active := False ;
        QryPersonal.SQL.Clear ;

        QryEquipos.Active := False ;
        QryEquipos.SQL.Clear ;

        QryGraficaTiemposMuertos.Active := False ;
        QryGraficaTiemposMuertos.SQL.Clear ;

        If MessageDlg('Desea agrupar la informacion por contrato?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
            QryPersonal.SQL.Add('Select a.sContrato, a.iItemOrden, a.sIdPersonal, a.sDescripcion, a.sMedida, a.dVentaMN, a.dCostoMN, bp.dIdFecha, Sum(bp.dCantidad) as dCantidad from personal a ' +
                                'inner join bitacoradepersonal bp on (a.sContrato = bp.sContrato And a.sIdPersonal = bp.sIdPersonal and bp.dIdFecha >= :FechaInicio And bp.dIdFecha <= :FechaFinal) ' +
                                'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                                'inner join ordenesdetrabajo o ON (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden And o.cIdStatus = :status) ' +
                                'INNER JOIN turnos t ON (b.sContrato = t.sContrato and b.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                                'Where a.sContrato = :contrato Group By bp.sContrato, bp.sIdPersonal, bp.dIdFecha ' +
                                'Order By a.iItemOrden, bp.sIdPersonal, bp.dIdFecha') ;
            QryEquipos.SQL.Add('Select a.sContrato, a.iItemOrden, a.sIdEquipo, a.sDescripcion, a.sMedida, a.dVentaMN, a.dCostoMN, bp.dIdFecha, Sum(bp.dCantidad) as dCantidad from equipos a ' +
                               'inner join bitacoradeequipos bp on (a.sContrato = bp.sContrato And a.sIdEquipo = bp.sIdEquipo and bp.dIdFecha >= :FechaInicio And bp.dIdFecha <= :FechaFinal) ' +
                               'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                               'inner join ordenesdetrabajo o ON (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden And o.cIdStatus = :status) ' +
                               'INNER JOIN turnos t ON (b.sContrato = t.sContrato and b.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                               'Where a.sContrato = :contrato Group By bp.sContrato, bp.sIdEquipo, bp.dIdFecha ' +
                               'Order By a.iItemOrden, bp.sIdEquipo, bp.dIdFecha') ;
            QryGraficaTiemposMuertos.SQL.Add('Select r.sContrato, r.dIdFecha, ' +
                                             '(sum(substr(sTiempoMuertoReal, 1 , 2)) + sum(substr(sTiempoMuertoReal, 4 , 2)) div 60 + ' +
                                             '(sum(substr(sTiempoMuertoReal, 4 , 2)) % 60 ) / 100 ) as iTiempoMuertoReal from reportediario r ' +
                                             'INNER JOIN ordenesdetrabajo o ON (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden And o.cIdStatus = :status) ' +
                                             'INNER JOIN turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                                             'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF And r.lStatus = "Autorizado" ' +
                                             'Group By r.sNumeroOrden, r.dIdfecha Order By r.sContrato, r.dIdFecha')
        End
        Else
        begin
            QryPersonal.SQL.Add('Select b.sNumeroOrden as sContrato, a.iItemOrden, a.sIdPersonal, a.sDescripcion, a.sMedida, a.dVentaMN, a.dCostoMN, bp.dIdFecha, Sum(bp.dCantidad) as dCantidad from personal a ' +
                                'inner join bitacoradepersonal bp on (a.sContrato = bp.sContrato And a.sIdPersonal = bp.sIdPersonal and bp.dIdFecha >= :FechaInicio And bp.dIdFecha <= :FechaFinal) ' +
                                'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                                'inner join ordenesdetrabajo o ON (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden And o.cIdStatus = :status) ' +
                                'inner join turnos t ON (b.sContrato = t.sContrato and b.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                                'Where a.sContrato = :contrato Group By b.sNumeroOrden, bp.sIdPersonal, bp.dIdFecha ' +
                                'Order By a.iItemOrden, bp.sIdPersonal, bp.dIdFecha') ;
            QryEquipos.SQL.Add('Select b.sNumeroOrden as sContrato, a.iItemOrden, a.sIdEquipo, a.sDescripcion, a.sMedida, a.dVentaMN, a.dCostoMN, bp.dIdFecha, Sum(bp.dCantidad) as dCantidad from equipos a ' +
                               'inner join bitacoradeequipos bp on (a.sContrato = bp.sContrato And a.sIdEquipo = bp.sIdEquipo and bp.dIdFecha >= :FechaInicio And bp.dIdFecha <= :FechaFinal) ' +
                               'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                               'inner join ordenesdetrabajo o ON (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden And o.cIdStatus = :status) ' +
                               'inner join turnos t ON (b.sContrato = t.sContrato and b.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                               'Where a.sContrato = :contrato Group By b.sNumeroOrden, bp.sIdEquipo, bp.dIdFecha ' +
                               'Order By a.iItemOrden, bp.sIdEquipo, bp.dIdFecha') ;
            QryGraficaTiemposMuertos.SQL.Add('Select r.sNumeroOrden as sContrato, r.dIdFecha, ' +
                                             '(sum(substr(sTiempoMuertoReal, 1 , 2)) + sum(substr(sTiempoMuertoReal, 4 , 2)) div 60 + ' +
                                             '(sum(substr(sTiempoMuertoReal, 4 , 2)) % 60 ) / 100 ) as iTiempoMuertoReal from reportediario r ' +
                                             'INNER JOIN ordenesdetrabajo o ON (r.sContrato = o.sContrato and r.sNumeroOrden = o.sNumeroOrden And o.cIdStatus = :status) ' +
                                             'INNER JOIN turnos t ON (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                                             'Where r.sContrato = :Contrato And r.dIdFecha >= :FechaI And r.dIdFecha <= :FechaF And r.lStatus = "Autorizado" ' +
                                             'Group By r.sNumeroOrden, r.dIdfecha Order By r.sNumeroOrden, r.dIdFecha') ;
        end ;

        dsPersonal.FieldAliases.Clear ;
        dsPersonal.DataSet := QryPersonal ;
        dsEquipos.FieldAliases.Clear ;
        dsEquipos.DataSet := QryEquipos ;

        QryPersonal.Params.ParamByName('Contrato').DataType := ftString ;
        QryPersonal.Params.ParamByName('Contrato').Value := global_Contrato ;
        QryPersonal.Params.ParamByName('FechaInicio').DataType := ftDate ;
        QryPersonal.Params.ParamByName('FechaInicio').Value := tdFechaInicial.Date ;
        QryPersonal.Params.ParamByName('FechaFinal').DataType := ftDate ;
        QryPersonal.Params.ParamByName('FechaFinal').Value := tdFechaFinal.Date ;
        QryPersonal.Params.ParamByName('status').DataType := ftString ;
        QryPersonal.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
        QryPersonal.Open ;

        QryEquipos.Active := False ;
        QryEquipos.Params.ParamByName('Contrato').DataType := ftString ;
        QryEquipos.Params.ParamByName('Contrato').Value := global_Contrato ;
        QryEquipos.Params.ParamByName('FechaInicio').DataType := ftDate ;
        QryEquipos.Params.ParamByName('FechaInicio').Value := tdFechaInicial.Date ;
        QryEquipos.Params.ParamByName('FechaFinal').DataType := ftDate ;
        QryEquipos.Params.ParamByName('FechaFinal').Value := tdFechaFinal.Date ;
        QryEquipos.Params.ParamByName('status').DataType := ftString ;
        QryEquipos.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
        QryEquipos.Open ;

        QryGraficaTiemposMuertos.Params.ParamByName('Contrato').DataType := ftString ;
        QryGraficaTiemposMuertos.Params.ParamByName('Contrato').Value := global_contrato ;
        QryGraficaTiemposMuertos.Params.ParamByName('FechaI').DataType := ftDate ;
        QryGraficaTiemposMuertos.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
        QryGraficaTiemposMuertos.Params.ParamByName('FechaF').DataType := ftDate ;
        QryGraficaTiemposMuertos.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        QryGraficaTiemposMuertos.Params.ParamByName('status').DataType := ftString ;
        QryGraficaTiemposMuertos.Params.ParamByName('status').Value := connection.configuracion.FieldValues [ 'cStatusProceso' ] ;
        QryGraficaTiemposMuertos.Open ;

        if (QryPernocta.RecordCount > 0) or
           (rxPlataforma.RecordCount > 0) or
           (rxPernocta.RecordCount > 0) or
           (QryPlataforma.RecordCount > 0) or
           (rxReporteFotografico.RecordCount > 0) then
        begin
            rReporte.PreviewOptions.MDIChild := False ;
            rReporte.PreviewOptions.Modal := True ;
            rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
            rReporte.PreviewOptions.ShowCaptions := False ;
            rReporte.Previewoptions.ZoomMode := zmPageWidth ;
            rReporte.LoadFromFile (global_files + global_miReporte + '_DetalledeRecursosPersonalyEquipo.fr3') ;
            rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
            if not FileExists(global_files + global_miReporte + '_DetalledeRecursosPersonalyEquipo.fr3') then
               showmessage('El archivo de reporte DetalledeRecursosPersonalyEquipo.fr3 no existe, notifique al administrador del sistema');
        end
        else begin
            showmessage('No hay datos para imprimir');
        end;
    End
    Else
    Begin
        sPernocta := '' ;
        sPlataforma := '' ;

        dsPersonalPernocta.OnFirst := ActualizaPernocta ;
        dsPersonalPlataforma.OnFirst := ActualizaPlataforma ;
        dsPersonalPernocta.OnNext := ActualizaPernocta ;
        dsPersonalPlataforma.OnNext := ActualizaPlataforma ;

        // Personal Programado
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select AVG(dCantidad) as dProgramado From personalprogramado Where ' +
                                    'sContrato = :Contrato And dIdFecha >= :FechaI and dIdFecha <= :FechaF ' +
                                    'Group By sContrato') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
        Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
        Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
        Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Connection.QryBusca.Open ;
        dProgramado := 0 ;
        If Connection.QryBusca.RecordCount > 0 Then
             dProgramado := Connection.QryBusca.FieldValues['dProgramado'] ;

        // Personal promedio real ...
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select Sum(b.dCantidad) as dReal ' +
                                    'From bitacoradepersonal b INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                    'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                    'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato') ;
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
        Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
        Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
        Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        Connection.QryBusca.Open ;
        dPromedio := 0 ;
        If Connection.QryBusca.RecordCount > 0 Then
        Begin
            dPromedio := Connection.QryBusca.FieldValues['dReal'] ;
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select distinct b.dIdFecha ' +
                                       'From bitacoradepersonal b INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                       'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                       'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF') ;
            Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
            Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
            Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.RecordCount > 0 Then
                 dPromedio := RoundTo(dPromedio / Connection.QryBusca.RecordCount,0) ;
        End ;

        // Qrys por Pernocta ....
        If chkPernocta.Checked Then
        Begin
            QryPersonalPernocta.Active := False ;
            QryPersonalPernocta.SQL.Clear ;
            QryPersonalPernocta.SQL.Add('Select b.sIdPernocta, b.dIdFecha, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                        'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                        'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                        'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                        'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sIdPernocta, b.dIdFecha ' +
                                        'Order By b.dIdFecha, b.sIdPernocta ') ;
            QryPersonalPernocta.Params.ParamByName('Contrato').DataType := ftString ;
            QryPersonalPernocta.Params.ParamByName('Contrato').Value := global_contrato ;
            QryPersonalPernocta.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPersonalPernocta.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPersonalPernocta.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPersonalPernocta.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPersonalPernocta.FieldAliases.Clear ;
            dsPersonalPernocta.DataSet := QryPersonalPernocta ;
            QryPersonalPernocta.Open ;

            QryPernocta.Active := False ;
            QryPernocta.SQL.Clear ;
            QryPernocta.SQL.Add('Select b.sIdPernocta, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPernocta ') ;
            QryPernocta.Params.ParamByName('Contrato').DataType := ftString ;
            QryPernocta.Params.ParamByName('Contrato').Value := global_contrato ;
            QryPernocta.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPernocta.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPernocta.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPernocta.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPernocta.FieldAliases.Clear ;
            dsPernocta.DataSet := QryPernocta ;
            QryPernocta.Open ;
       End
       Else
       Begin
            QryPersonalPernocta.Active := False ;
            QryPersonalPernocta.SQL.Clear ;
            QryPersonalPernocta.SQL.Add('Select b.sIdPernocta, b.dIdFecha, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                        'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                        'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                        'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                        'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sIdPernocta, b.dIdFecha ' +
                                        'Order By b.dIdFecha, b.sIdPernocta ') ;
            QryPersonalPernocta.Params.ParamByName('Contrato').DataType := ftString ;
            QryPersonalPernocta.Params.ParamByName('Contrato').Value := '' ;
            QryPersonalPernocta.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPersonalPernocta.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPersonalPernocta.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPersonalPernocta.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPersonalPernocta.FieldAliases.Clear ;
            dsPersonalPernocta.DataSet := QryPersonalPernocta ;
            QryPersonalPernocta.Open ;

            QryPernocta.Active := False ;
            QryPernocta.SQL.Clear ;
            QryPernocta.SQL.Add('Select b.sIdPernocta, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPernocta ') ;
            QryPernocta.Params.ParamByName('Contrato').DataType := ftString ;
            QryPernocta.Params.ParamByName('Contrato').Value := '' ;
            QryPernocta.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPernocta.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPernocta.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPernocta.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPernocta.FieldAliases.Clear ;
            dsPernocta.DataSet := QryPernocta ;
            QryPernocta.Open ;
       End ;

       If chkPlataforma.Checked Then
       Begin
            // Por plataforma
            QryPersonalPlataforma.Active := False ;
            QryPersonalPlataforma.SQL.Clear ;
            QryPersonalPlataforma.SQL.Add('Select b.sIdPlataforma, b.dIdFecha, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                          'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                          'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                          'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                          'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sIdPlataforma, b.dIdFecha ' +
                                          'Order By b.dIdFecha, b.sIdPlataforma') ;
            QryPersonalPlataforma.Params.ParamByName('Contrato').DataType := ftString ;
            QryPersonalPlataforma.Params.ParamByName('Contrato').Value := global_contrato ;
            QryPersonalPlataforma.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPersonalPlataforma.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPersonalPlataforma.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPersonalPlataforma.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPersonalPlataforma.FieldAliases.Clear ;
            dsPersonalPlataforma.DataSet := QryPersonalPlataforma ;
            QryPersonalPlataforma.Open ;

            // Grafica de Pernocta y Plataforma

            QryPlataforma.Active := False ;
            QryPlataforma.SQL.Clear ;
            QryPlataforma.SQL.Add('Select b.sIdPlataforma, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                  'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                  'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                  'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                  'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPlataforma ') ;
            QryPlataforma.Params.ParamByName('Contrato').DataType := ftString ;
            QryPlataforma.Params.ParamByName('Contrato').Value := global_contrato ;
            QryPlataforma.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPlataforma.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPlataforma.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPlataforma.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPlataforma.FieldAliases.Clear ;
            dsPlataforma.DataSet := QryPlataforma ;
            QryPlataforma.Open ;
       End
       Else
       Begin
            // Por plataforma
            QryPersonalPlataforma.Active := False ;
            QryPersonalPlataforma.SQL.Clear ;
            QryPersonalPlataforma.SQL.Add('Select b.sIdPlataforma, b.dIdFecha, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                          'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                          'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                          'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                          'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sIdPlataforma, b.dIdFecha ' +
                                          'Order By b.dIdFecha, b.sIdPlataforma') ;
            QryPersonalPlataforma.Params.ParamByName('Contrato').DataType := ftString ;
            QryPersonalPlataforma.Params.ParamByName('Contrato').Value := '' ;
            QryPersonalPlataforma.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPersonalPlataforma.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPersonalPlataforma.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPersonalPlataforma.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPersonalPlataforma.FieldAliases.Clear ;
            dsPersonalPlataforma.DataSet := QryPersonalPlataforma ;
            QryPersonalPlataforma.Open ;

            // Grafica de Pernocta y Plataforma

            QryPlataforma.Active := False ;
            QryPlataforma.SQL.Clear ;
            QryPlataforma.SQL.Add('Select b.sIdPlataforma, Sum(b.dCantidad) as dReal From bitacoradepersonal b ' +
                                  'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                  'INNER JOIN reportediario r ON (b2.sContrato = r.sContrato And b2.dIdFecha = r.dIdFecha And b2.sNumeroOrden = r.sNumeroOrden) ' +
                                  'INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                  'Where b.sContrato = :Contrato And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPlataforma ') ;
            QryPlataforma.Params.ParamByName('Contrato').DataType := ftString ;
            QryPlataforma.Params.ParamByName('Contrato').Value := '' ;
            QryPlataforma.Params.ParamByName('FechaI').DataType := ftDate ;
            QryPlataforma.Params.ParamByName('FechaI').Value := tdFechaInicial.Date  ;
            QryPlataforma.Params.ParamByName('FechaF').DataType := ftDate ;
            QryPlataforma.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
            dsPlataforma.FieldAliases.Clear ;
            dsPlataforma.DataSet := QryPlataforma ;
            QryPlataforma.Open ;
       End ;



           rReporte.PreviewOptions.MDIChild := False ;
           rReporte.PreviewOptions.Modal := True ;
           rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
           rReporte.PreviewOptions.ShowCaptions := False ;
           rReporte.Previewoptions.ZoomMode := zmPageWidth ;
           rReporte.LoadFromFile (global_files + global_miReporte + '_ResumendeCostosporInstalacion.fr3') ;
           rDiarioFirmas (global_contrato, '', 'A',tdFechaFinal.Date , frmReportePeriodo ) ;
           rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
           if not FileExists(global_files + global_miReporte + '_ResumendeCostosporInstalacion.fr3') then
              showmessage('El archivo de reporte ResumendeCostosporInstalacion.fr3 no existe, notifique al administrador del sistema');

    End ;
    QryPersonal.Destroy ;
    QryEquipos.Destroy ;
    dsPersonal.Destroy ;
    dsEquipos.Destroy ;
    dsQryGraficaTiemposMuertos.Destroy ;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir Distribucion de Personal', 0);
    end;
  end;
end;

procedure TfrmReportePeriodo.PowerPointAlbum(roqDatos : TRxMemoryData; fileName : string);
var
  PowerPointApp: OLEVariant;
  Cuenta, Hojas: Integer;
  xLeft, xTop: Real;
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  OldFecha: TDate;

  function Depura(Valor: String): String;
  Const
    NoIncluir = '\/:*?<>|"';
  var
    Resultado: String;
  begin
    Resultado := '';

    while Length(Resultado) < Length(Valor) do
      if Pos(Valor[Length(Resultado) + 1], NoIncluir) > 0 then
        Resultado := Resultado + '-'
      else
        Resultado := Resultado + Valor[Length(Resultado) + 1];

    Result := Resultado;
  end;

begin
  roqDatos.First;
  try
    PowerPointApp := CreateOleObject('PowerPoint.Application')
  except
    Exit;
  end;

  try
    ProgressBar1.Visible := True;
    try
      PowerPointApp.Visible := True;
      PowerPointApp.Presentations.Add(-1);
      PowerPointApp.WindowState := 2;

      Cuenta := 0;
      Hojas := 1;
      OldFecha := Trunc(roqDatos.FieldByName('dIdFecha').AsDateTime);
      ProgressBar1.Position := 0;
      ProgressBar1.Max := roqDatos.RecordCount;
      while Not roqDatos.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Self.Repaint;
        //ProgressBar1.Repaint;
        if Cuenta = 0 then
        begin
          PowerPointApp.ActiveWindow.View.GotoSlide(PowerPointApp.ActivePresentation.Slides.Add(Hojas, 1).SlideIndex);
          PowerPointApp.ActiveWindow.Selection.SlideRange.Layout := 12;     // Limpiar la hoja (Layout - 12 es hoja en blanco)

          // Poner los encabezados
          PowerPointApp.ActiveWindow.Selection.SlideRange.Shapes.AddTextbox(1, 0, 0, 314.625, 28.875).Select;
          PowerPointApp.ActiveWindow.Selection.ShapeRange.TextFrame.WordWrap := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.LineRuleWithin := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.SpaceWithin := 1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.LineRuleBefore := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.SpaceBefore := 0.5;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.LineRuleAfter := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.SpaceAfter := 0;
          PowerPointApp.ActiveWindow.Selection.ShapeRange.TextFrame.TextRange.Characters(1, 0).Select;
          PowerPointApp.ActiveWindow.Selection.TextRange.Text := roqDatos.FieldByName('sContrato').AsString;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Name := 'Arial';
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Size := 10;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Bold := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Italic := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Underline := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Shadow := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Emboss := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.BaselineOffset := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.AutoRotateNumbers := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Color.SchemeColor := 2;

          PowerPointApp.ActiveWindow.Selection.SlideRange.Shapes.AddTextbox(1, 592.5, 0, 127.5, 28.875).Select;
          PowerPointApp.ActiveWindow.Selection.ShapeRange.TextFrame.WordWrap := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.LineRuleWithin := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.SpaceWithin := 1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.LineRuleBefore := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.SpaceBefore := 0.5;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.LineRuleAfter := -1;
          PowerPointApp.ActiveWindow.Selection.TextRange.ParagraphFormat.SpaceAfter := 0;
          PowerPointApp.ActiveWindow.Selection.ShapeRange.TextFrame.TextRange.Characters(1, 0).Select;
          PowerPointApp.ActiveWindow.Selection.TextRange.Text := 'FECHA: ' + roqDatos.FieldByName('dIdFecha').AsString;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Name := 'Arial';
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Size := 10;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Bold := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Italic := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Underline := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Shadow := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Emboss := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.BaselineOffset := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.AutoRotateNumbers := 0;
          PowerPointApp.ActiveWindow.Selection.TextRange.Font.Color.SchemeColor := 2;
        end;

        // Pasar la imagen a disco
        BlobField := roqDatos.FieldByName('bImagen');
        BS := roqDatos.CreateBlobStream ( BlobField , bmRead ) ;
        If bs.Size > 1 Then
        Begin
          try
            Pic:=TJpegImage.Create;
            try
              Pic.LoadFromStream(bS);
              bImagen.Picture.Graphic:=Pic;
              bImagen.Picture.SaveToFile('C:\MiImagen.jpg');
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          End
        End
        Else
          bImagen.Picture := Nil;

        case Cuenta of
          0: begin xLeft := -175.12; xTop := -128.62; end;
          1: begin xLeft := 175.12; xTop := -128.62; end;
          2: begin xLeft := -175.12; xTop := 128.62; end;
          3: begin xLeft := 175.12; xTop := 128.62; end;
        end;

        PowerPointApp.ActiveWindow.Selection.SlideRange.Shapes.AddPicture('C:\MiImagen.jpg', 0, -1, 201, 155, 319, 230).Select;
        PowerPointApp.ActiveWindow.Selection.ShapeRange.IncrementLeft(xLeft);
        PowerPointApp.ActiveWindow.Selection.ShapeRange.IncrementTop(xTop);
        PowerPointApp.ActiveWindow.Selection.ShapeRange.ScaleWidth(0.89, 0, 0);
        PowerPointApp.ActiveWindow.Selection.ShapeRange.ScaleHeight(0.89, 0, 0);

        Inc(Cuenta);
        roqDatos.Next;

        if (Cuenta > 3) or (OldFecha <> Trunc(roqDatos.FieldByName('dIdFecha').AsDateTime)) then
        begin
          Inc(Hojas);
          Cuenta := 0;
          OldFecha := Trunc(roqDatos.FieldByName('dIdFecha').AsDateTime);
        end;
      end;
      FileName := FileName + ' Fotografías incluidas en reportes diarios del ' + DateToStr(tdFechaInicial.Date) + ' al ' + DateToStr(tdFechaFinal.Date) + '.ppt';
      FileName := Depura(FileName);
      PowerPointApp.ActivePresentation.SaveAs(FileName);
      MessageDlg('El libro de fotografías ha sido generado con el nombre: ' + #10 + FileName, mtInformation, [mbOk], 0);
      PowerPointApp.WindowState := 3;
    except
      on e:exception do
      begin
        PowerPointApp.Quit;
        messagedlg('Ha ocurrido un error al intentar generar el libro de fotografías solicitado.' + #10 + #10 +
                   'Informe de esto al administrador del sistema:' + #10 + e.Message, mtWarning, [mbOk], 0);
      end;
    end;
  finally
    ProgressBar1.Visible := False;
    PowerPointApp := Null;
    SysUtils.DeleteFile('C:\MiImagen.jpg');     // Borrar el archivo que pudo haber sido generado
  end;
end;

procedure TfrmReportePeriodo.frxGerencialGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'MONTO_MODIFICADO') = 0 then
      Value := dMontoModificado ;
  If CompareText(VarName, 'MONTO_CONTRATO') = 0 then
      Value := dMontoContrato ;

  If CompareText(VarName, 'POLIZA') = 0 then
      Value := sPoliza ;
  If CompareText(VarName, 'FIANZA') = 0 then
      Value := sFianza ;

  If CompareText(VarName, 'PUESTO') = 0 then
      Value := StringPuesto.Text ;

  If CompareText(VarName, 'DIRECTORIO') = 0 then
      Value := StringNombre.Text ;

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

  If CompareText(VarName, 'INICIO_ORIGINAL') = 0 then
      Value := sConvenioInicio ;

  If CompareText(VarName, 'TERMINO_ORIGINAL') = 0 then
      Value := sConvenioFinal ;

  If CompareText(VarName, 'ACTA') = 0 then
      Value := sActa ;

  If CompareText(VarName, 'NUEVO_INICIO') = 0 then
      Value := sNuevoInicio ;
  If CompareText(VarName, 'NUEVO_TERMINO') = 0 then
      Value := sNuevoFinal ;

  If CompareText(VarName, 'DURACION') = 0 then
  Begin
      If sNuevoFinal <> '' Then
          Value := StrToDate(sNuevoFinal) - StrToDate(sConvenioInicio) + 1
      Else
          Value := StrToDate(sConvenioFinal) - StrToDate(sConvenioInicio) + 1
  End

end;

procedure TfrmReportePeriodo.ActualizaPlataforma(Sender: TObject);
begin
IF QryPersonalPlataforma.Active THEN BEGIN
  If QryPersonalPlataforma.RecordCount > 0 Then
  Begin
      If QryPersonalPlataforma.FieldValues['sIdPlataforma'] <> sPlataforma Then
      Begin
           Connection.QryBusca.Active := False ;
           Connection.QryBusca.SQL.Clear ;
           Connection.QryBusca.SQL.Add('Select Sum(b.dCantidad) as dReal ' +
                                        'From bitacoradepersonal b INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                        'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                        'Where b.sContrato = :Contrato And b.sIdPlataforma = :Plataforma And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPlataforma') ;
           Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
           Connection.QryBusca.Params.ParamByName('Plataforma').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Plataforma').Value := QryPersonalPlataforma.FieldValues['sIdPlataforma'] ;
           Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
           Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
           Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
           Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
           Connection.QryBusca.Open ;
           dReal := 0 ;
           If Connection.QryBusca.RecordCount > 0 Then
           Begin
               dReal := Connection.QryBusca.FieldValues['dReal'] ;
               Connection.QryBusca.Active := False ;
               Connection.QryBusca.SQL.Clear ;
               Connection.QryBusca.SQL.Add('Select distinct b.dIdFecha ' +
                                           'From bitacoradepersonal b INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                           'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                           'Where b.sContrato = :Contrato And b.sIdPlataforma = :Plataforma And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPlataforma, b.dIdFecha') ;
               Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
               Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
               Connection.QryBusca.Params.ParamByName('Plataforma').DataType := ftString ;
               Connection.QryBusca.Params.ParamByName('Plataforma').Value := QryPersonalPlataforma.FieldValues['sIdPlataforma'] ;
               Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
               Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
               Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
               Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
               Connection.QryBusca.Open ;
               If Connection.QryBusca.RecordCount > 0 Then
                    dReal := dReal / Connection.QryBusca.RecordCount ;

               sPlataforma := QryPersonalPlataforma.FieldValues['sIdPlataforma']
          End
      End
    End

END;
end;

procedure TfrmReportePeriodo.btnImportarClick(Sender: TObject);
 Var
   size: Real ;
   indice, iItem  : integer;
   lTamanio : boolean;
   sArchivo : string;
begin
    if ComboActas.Text = '' then
    begin
        messageDLG('Seleccione un Acta Fotografica!', mtInformation, [mbOk], 0);
        comboActas.SetFocus;
    end
    else
    begin
        if tsNumeroActividad.Text = '' then
        begin
            messageDLG('Selecccione una Partida!', mtInformation, [mbOk], 0);
            tsNumeroActividad.SetFocus;
            exit;
        end;
        OpenPicture.Title  := 'Inserta Imagen';
        sArchivo           := '' ;
        lTamanio           := True;
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
                        bImagen2.Picture.LoadFromFile(OpenPicture.Files.Strings[indice])
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
               sArchivo := ''
            else
            begin
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
                        connection.zCommand.SQL.Add('select max(iImagen) as iImagen from reportefotografico_acta '+
                                                    'where sContrato =:Contrato and sNumeroOrden =:Orden and sActaFotografica =:Acta group by sContrato');
                        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
                        connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
                        connection.zcommand.Params.ParamByName('Orden').Value       := tsNumeroOrdenActa.Text;
                        connection.zcommand.Params.ParamByName('Acta').DataType     := ftString ;
                        connection.zcommand.Params.ParamByName('Acta').Value        := ComboActas.Text ;
                        connection.zCommand.Open;

                        if connection.zCommand.RecordCount > 0 then
                           iItem := connection.zCommand.FieldValues['iImagen'] + 1
                        else
                           iItem := 1;

                        connection.zCommand.Active := False ;
                        connection.zCommand.SQL.Clear ;
                        connection.zcommand.SQL.Add ( 'Insert Into reportefotografico_acta (sContrato, sNumeroOrden, sActaFotografica, dIdFecha, iImagen, bImagen, sWbs, sNumeroActividad) ' +
                                                      'Values (:Contrato, :Orden, :Acta, :Fecha, :Item, :Imagen, :Wbs, :Actividad)') ;
                        connection.zcommand.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.zcommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
                        connection.zcommand.Params.ParamByName('Orden').DataType    := ftString ;
                        connection.zcommand.Params.ParamByName('Orden').Value       := tsNumeroOrdenActa.Text;
                        connection.zcommand.Params.ParamByName('Acta').DataType     := ftString ;
                        connection.zcommand.Params.ParamByName('Acta').Value        := ComboActas.Text ;
                        connection.zcommand.Params.ParamByName('Fecha').DataType    := ftDate ;
                        connection.zcommand.Params.ParamByName('Fecha').Value       := date ;
                        connection.zcommand.Params.ParamByName('Item').DataType     := ftInteger ;
                        connection.zcommand.Params.ParamByName('Item').Value        := iItem ;
                        connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
                        connection.zcommand.Params.ParamByName('Wbs').DataType      := ftString ;
                        connection.zcommand.Params.ParamByName('Wbs').Value         := QryPartidasEfectivas.FieldValues['sWbs'];
                        connection.zcommand.Params.ParamByName('Actividad').DataType:= ftString ;
                        connection.zcommand.Params.ParamByName('Actividad').Value   := QryPartidasEfectivas.FieldValues['sNumeroActividad'];
                        connection.zCommand.ExecSQL();
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
                    connection.zcommand.Params.ParamByName('Descripcion').Value := 'Agrega Fotografias a Reporte Actafotografica ' + comboActas.Text + ' del dia ' + DateToStr(Date) ;
                    connection.zcommand.Params.ParamByName('Origen').DataType := ftString ;
                    connection.zcommand.Params.ParamByName('Origen').Value := 'Reporte Fotografico' ;
                    connection.zCommand.ExecSQL ;

                    fotografico_Acta.Active := False;
                    fotografico_acta.ParamByName('Contrato').AsString := global_contrato;
                    fotografico_acta.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
                    fotografico_acta.ParamByName('Acta').AsString     := ComboActas.Text;
                    fotografico_acta.Open;

                    messageDLG('El Archivo fotografico se Guardó Correctamente!', mtInformation, [mbOk], 0);
                End;
            end;
        end;
    end;
end;

procedure TfrmReportePeriodo.btnDeleteClick(Sender: TObject);
begin
   If MessageDlg('Desea eliminar la Imagen '+ IntToStr(fotografico_acta.FieldValues['iImagen']) + ' del '+ comboActas.text, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
       fotografico_acta.Delete;

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
        connection.zcommand.Params.ParamByName('Fecha').Value          := Date ;
        connection.zcommand.Params.ParamByName('Hora').DataType        := ftString ;
        connection.zcommand.Params.ParamByName('Hora').value           := FormatDateTime('hh:mm:ss', Now) ;
        connection.zcommand.Params.ParamByName('Descripcion').DataType := ftString ;
        connection.zcommand.Params.ParamByName('Descripcion').Value    := 'Elimina Fotografia '+ IntToStr(fotografico_acta.FieldValues['iImagen']) +' a Reporte Actafotografica ' + comboActas.Text + ' del dia ' + DateToStr(Date) ;
        connection.zcommand.Params.ParamByName('Origen').DataType      := ftString ;
        connection.zcommand.Params.ParamByName('Origen').Value         := 'Reporte Fotografico' ;
        connection.zCommand.ExecSQL ;
   End;
end;

procedure TfrmReportePeriodo.btnDownClick(Sender: TObject);
begin
    OrdenarFotos('Abajo');
end;

procedure TfrmReportePeriodo.ActualizaPernocta(Sender: TObject);
begin
IF QryPersonalPernocta.Active THEN BEGIN
  If QryPersonalPernocta.RecordCount > 0 Then
  Begin
      If QryPersonalPernocta.FieldValues['sIdPernocta'] <> sPernocta Then
      Begin
           Connection.QryBusca.Active := False ;
           Connection.QryBusca.SQL.Clear ;
           Connection.QryBusca.SQL.Add('Select Sum(b.dCantidad) as dReal ' +
                                       'From bitacoradepersonal b INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                       'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                       'Where b.sContrato = :Contrato And b.sIdPernocta = :Pernocta And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPernocta') ;
           Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
           Connection.QryBusca.Params.ParamByName('Pernocta').DataType := ftString ;
           Connection.QryBusca.Params.ParamByName('Pernocta').Value := QryPersonalPernocta.FieldValues['sIdPernocta'] ;
           Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
           Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
           Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
           Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
           Connection.QryBusca.Open ;
           dReal := 0 ;
           If Connection.QryBusca.RecordCount > 0 Then
           Begin
               dReal := Connection.QryBusca.FieldValues['dReal'] ;
               Connection.QryBusca.Active := False ;
               Connection.QryBusca.SQL.Clear ;
               Connection.QryBusca.SQL.Add('Select distinct b.dIdFecha ' +
                                           'From bitacoradepersonal b INNER JOIN personal p2 ON (b.sContrato = p2.sContrato And b.sIdPersonal = p2.sIdPersonal) ' +
                                           'INNER JOIN bitacoradeactividades b2 ON (b.sContrato = b2.sContrato And b.dIdFecha = b2.dIdFecha And b.iIdDiario = b2.iIdDiario) ' +
                                           'Where b.sContrato = :Contrato And b.sIdPernocta = :Pernocta And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF Group By b.sContrato, b.sIdPernocta, b.dIdFecha') ;
               Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
               Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
               Connection.QryBusca.Params.ParamByName('Pernocta').DataType := ftString ;
               Connection.QryBusca.Params.ParamByName('Pernocta').Value := QryPersonalPernocta.FieldValues['sIdPernocta'] ;
               Connection.QryBusca.Params.ParamByName('FechaI').DataType := ftDate ;
               Connection.QryBusca.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
               Connection.QryBusca.Params.ParamByName('FechaF').DataType := ftDate ;
               Connection.QryBusca.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
               Connection.QryBusca.Open ;
               If Connection.QryBusca.RecordCount > 0 Then
                    dReal := dReal / Connection.QryBusca.RecordCount ;

               sPernocta := QryPersonalPernocta.FieldValues['sIdPernocta']
          End
      End
    End
END;
end;

procedure TfrmReportePeriodo.frxProgramacionGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'PROGRAMADO') = 0 then
      Value := floattostr(RoundTo(dProgramado,-2)) ;
  If CompareText(VarName, 'REAL') = 0 then
      Value := floattostr(RoundTo(dReal,-2)) ;
  If CompareText(VarName, 'PROMEDIO') = 0 then
      Value := floattostr(RoundTo(dPromedio,0)) ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := DateToStr (tdFechaInicial.Date ) + ' AL ' +  DateToStr (tdFechaFinal.Date ) ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
end;


procedure TfrmReportePeriodo.btnImprimeDiariosClick(Sender: TObject);
var
  OldWbs, NomCampo,
  sTipoMoneda, sCadena, sDia, MiWbs : String;
  iPos, NumPaq, i  : Integer;
  Q_Paquetes       : tzReadOnlyquery ;
  ArrayPaquetes : array [1..10, 1..2] of String;
begin
//Verifica que la fecha final no sea menor que la fecha inicio      //ghh
   if tdFechaFinal.Date<tdFechaInicial.Date then
   begin
   showmessage('la fecha final de impresión es menor a la fecha inicial de impresión' );
   tdFechaFinal.SetFocus;
   exit;
   end;

    if not BotonPermiso.imprimir then
    begin
      showmessage('No tiene permisos de impresión');
      exit;
    end;
    Q_Paquetes := tzReadOnlyQuery.Create(Self) ;
    Q_Paquetes.Connection := connection.zConnection ;

    If rbResumenInstalacion.Checked Then
    Begin
        try
            ActividadesxOrden.Active := False ;
            ActividadesxOrden.SQL.Clear ;
            ActividadesxOrden.SQL.Add('Select sContrato, sNumeroOrden, sIdConvenio, iNivel, iColor, sSimbolo, sWbs, sWbsAnterior, ' +
                                      'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, dCantidad,  ' +
                                      'dFechaInicio, dFechaFinal, dPonderado, dVentaMN, dVentaDLL ' +
                                      'from actividadesxorden Where sContrato = :contrato  ' +
                                      'and sIdConvenio = :Convenio And sNumeroOrden = :orden order by iItemOrden ') ;
            ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
            ActividadesxOrden.Params.ParamByName('Contrato').Value := global_contrato ;
            ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
            ActividadesxOrden.Params.ParamByName('Convenio').Value := global_convenio ;
            ActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
            ActividadesxOrden.Params.ParamByName('Orden').Value := tsNumeroOrden3.Text ;
            ActividadesxOrden.Open ;

            if ActividadesxOrden.RecordCount > 0 then
            begin
                rDiarioFirmas (global_contrato, tsNumeroOrden3.Text, 'A',tdFechaFinal.Date , frmReportePeriodo ) ;
                rReporte.PreviewOptions.MDIChild := True ;
                rReporte.PreviewOptions.Modal := False ;
                rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
                rReporte.PreviewOptions.ShowCaptions := False ;
                rReporte.Previewoptions.ZoomMode := zmPageWidth ;
                rReporte.LoadFromFile (global_files + global_miReporte +'_ResumenInstalacion.fr3') ;
                rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
                if not FileExists(global_files + global_miReporte+ '_ResumenInstalacion.fr3') then
                    showmessage('El archivo de reporte ResumenInstalacion.fr3 no existe, notifique al administrador del sistema');
            end
            else begin
                showmessage('No hay datos para imprimir');
            end;
        except
            on e:exception do begin
                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir resumen generacion por periodo', 0);
            end;
        end;
    end ;


   If rbResumenGral.Checked Then
    Begin
        try
            ActividadesxOrden.Active := False ;
            ActividadesxOrden.SQL.Clear ;
            ActividadesxOrden.SQL.Add('Select sContrato, sNumeroOrden, sIdConvenio, iNivel, iColor, sSimbolo, sWbs, sWbsAnterior, ' +
                                      'sNumeroActividad, sTipoActividad, iItemOrden, mDescripcion, sMedida, dCantidad,  ' +
                                      'dFechaInicio, dFechaFinal, dPonderado, dVentaMN, dVentaDLL ' +
                                      'from actividadesxorden Where sContrato = :contrato  ' +
                                      'and sIdConvenio = :Convenio Group by sNumeroActividad order by iItemOrden ') ;
            ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
            ActividadesxOrden.Params.ParamByName('Contrato').Value := global_contrato ;
            ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
            ActividadesxOrden.Params.ParamByName('Convenio').Value := global_convenio ;
            ActividadesxOrden.Open ;

            if ActividadesxOrden.RecordCount > 0 then
            begin
                rDiarioFirmas (global_contrato, tsNumeroOrden3.Text, 'A',tdFechaFinal.Date , frmReportePeriodo ) ;
                rReporte.PreviewOptions.MDIChild := True ;
                rReporte.PreviewOptions.Modal := False ;
                rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
                rReporte.PreviewOptions.ShowCaptions := False ;
                rReporte.Previewoptions.ZoomMode := zmPageWidth ;
                rReporte.LoadFromFile (global_files + global_miReporte + '_ResumenInstalacionGral.fr3') ;
                rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
                if not FileExists(global_files + global_miReporte + '_ResumenInstalacionGral.fr3') then
                    showmessage('El archivo de reporte ResumenInstalacionGral.fr3 no existe, notifique al administrador del sistema');
            end
            else begin
                showmessage('No hay datos para imprimir');
            end;
        except
           on e:exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir Resumen Generación Por Periodo Contrato Gral.', 0);
           end;
        end;
    end ;


    If rbComentarios.Checked Then
    Begin
      try
        QryComentarios.Active := False ;
        QryComentarios.Params.ParamByName('Contrato').DataType := ftString ;
        QryComentarios.Params.ParamByName('Contrato').Value := global_contrato ;
        QryComentarios.Params.ParamByName('Orden').DataType := ftString ;
        QryComentarios.Params.ParamByName('Orden').Value := tsNumeroOrden3.Text ;
        QryComentarios.Params.ParamByName('FechaI').DataType := ftDate ;
        QryComentarios.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
        QryComentarios.Params.ParamByName('FechaF').DataType := ftDate ;
        QryComentarios.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
        QryComentarios.Open ;

        if QryComentarios.RecordCount > 0 then
        begin
            rReporte.PreviewOptions.MDIChild := False ;
            rReporte.PreviewOptions.Modal := True ;
            rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
            rReporte.PreviewOptions.ShowCaptions := False ;
            rReporte.Previewoptions.ZoomMode := zmPageWidth ;
            rReporte.LoadFromFile (global_files + global_miReporte + '_ComentariosPeriodo.fr3') ;
            rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
            if not FileExists(global_files + global_miReporte + '_Estimacion.fr3') then
                showmessage('El archivo de reporte Estimacion.fr3 no existe, notifique al administrador del sistema');
        end
        else begin
            showmessage('No hay datos para imprimir');
        end;
      except
         on e:exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Album Fotografico/Tiempos Muertos ...', 'Al imprimir Comentarios/Notas de Obra', 0);
         end;
      end;
    End ;

    {Ahora obtenemos los Volumenes por partida..}
    If rbDetalleInstalacion.Checked Then
    Begin
         Application.CreateForm(TfrmOpcionesAvances, frmOpcionesAvances);
         frmOpcionesAvances.showModal
    End ;

    {Ahora obtenemos los Avances por partida..}
    If rbDetalleAvances.Checked Then
    Begin
         Application.CreateForm(TfrmOpcionesAvances, frmOpcionesAvances);
         frmOpcionesAvances.showModal
    End ;

    {Ahora obtenemos los Programados por partida..}
    if rbProgramado.Checked then
    begin
        Application.CreateForm(TfrmOpcionesAvances, frmOpcionesAvances);
        frmOpcionesAvances.showModal
    end;

    {Ahora la consulta de Volumenes instalados por Contrato General..}
    if rbVolumenGeneral.Checked then
    begin
        Application.CreateForm(TfrmOpcionesAvances, frmOpcionesAvances);
        frmOpcionesAvances.showModal
    end;

end;

procedure TfrmReportePeriodo.rbAnalisisFinancieroEnter(Sender: TObject);
begin
     chkFases.Enabled := False;
     chkFases.Checked := False;
end;

procedure TfrmReportePeriodo.rbComentariosEnter(Sender: TObject);
begin
     chkFases.Enabled := False;
     chkFases.Checked := False;
end;

procedure TfrmReportePeriodo.rbDetalleAvancesEnter(Sender: TObject);
begin
     chkFases.Enabled := False;
     chkFases.Checked := False;
end;

procedure TfrmReportePeriodo.rbDetalleInstalacionEnter(Sender: TObject);
begin
     chkFases.Enabled := True;
end;

procedure TfrmReportePeriodo.rbProgramadoEnter(Sender: TObject);
begin
     chkFases.Enabled := False;
     chkFases.Checked := False;
end;

procedure TfrmReportePeriodo.rbResumenGralEnter(Sender: TObject);
begin
     chkFases.Enabled := False;
     chkFases.Checked := False;
end;

procedure TfrmReportePeriodo.rbResumenInstalacionEnter(Sender: TObject);
begin
     chkFases.Enabled := False;
     chkFases.Checked := False;
end;

procedure TfrmReportePeriodo.rbVolumenGeneralEnter(Sender: TObject);
begin
    chkFases.Enabled := True;
end;

procedure TfrmReportePeriodo.rDiarioGetValue(const VarName: String;
  var Value: Variant);
begin
  if chkMoneda.Checked then
  begin
      If CompareText(VarName, 'MONEDA') = 0 then
         Value := 'M.N.' ;
  end
  else
  begin
       If CompareText(VarName, 'MONEDA') = 0 then
         Value := 'DLL';
  end;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := 'DEL CONTRATO' ;

  If CompareText(VarName, 'FECHA_INICIO') = 0 then
      Value := tdFechaInicial.Date  ;

  If CompareText(VarName, 'FECHA_FINAL') = 0 then
      Value := tdFechaFinal.Date ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

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

procedure TfrmReportePeriodo.chkDetalleClick(Sender: TObject);
begin
    if chkDetalle.checked then
    begin
        chkPernocta.enabled := false ;
        chkPlataforma.enabled := false ;
    end
    else
    begin
        chkPernocta.enabled := true ;
        chkPlataforma.enabled := true ;
    end
end;

procedure TfrmReportePeriodo.chkDLLClick(Sender: TObject);
begin
    if chkMoneda.Checked then
       chkMoneda.Checked := False;
end;

procedure TfrmReportePeriodo.chkMonedaClick(Sender: TObject);
begin
     if chkDLL.Checked then
        chkDLL.Checked := False;
end;

procedure TfrmReportePeriodo.cmdEliminarClick(Sender: TObject);
var
   indice : integer;
begin
    if ComboActas.Items.Count  > 0 then
    begin
        indice := ComboActas.ItemIndex;
        ComboActas.Items.Delete(indice);
    end;
end;

procedure TfrmReportePeriodo.cmdImprimeActaClick(Sender: TObject);
var
   QryrFotografico   : tzReadOnlyQuery ;
begin
    QryrFotografico := tzReadOnlyquery.Create(Self) ;
    QryrFotografico.Connection := connection.zConnection ;

    QryrFotografico.Active := False ;
    QryrFotografico.SQL.Clear ;
    QryrFotografico.SQL.Add('Select f.*, o.mDescripcion as DescripcionOrden, o.sDescripcionCorta, o.sIdFolio, a.mDescripcion, '+
                            '(select mDescripcion from contratos where sContrato =:codigo) as ContratoPrincipal From reportefotografico_acta f '+
                            'inner join ordenesdetrabajo o ON (f.sContrato = o.sContrato And f.sNumeroOrden = o.sNumeroOrden) '+
                            'inner join actividadesxorden a ON (a.sContrato = f.sContrato and a.sIdConvenio =:Convenio And a.sNumeroOrden = f.sNumeroOrden and a.sWbs = f.sWbs and a.sNumeroActividad = f.sNumeroActividad and a.sTipoActividad = "Actividad") '+
                            'Where f.sContrato =:Contrato and f.sNumeroOrden =:Orden and f.sActaFotografica =:Acta And f.lImprime = "Si" '+
                            'Order By f.sNumeroOrden, f.iImagen') ;
    QryrFotografico.Params.ParamByName('contrato').DataType := ftString ;
    QryrFotografico.Params.ParamByName('contrato').Value    := global_contrato ;
    QryrFotografico.Params.ParamByName('convenio').DataType := ftString ;
    QryrFotografico.Params.ParamByName('convenio').Value    := global_convenio ;
    QryrFotografico.Params.ParamByName('codigo').DataType   := ftString ;
    QryrFotografico.Params.ParamByName('codigo').Value      := connection.contrato.FieldValues['sCodigo'];
    QryrFotografico.Params.ParamByName('orden').DataType    := ftString ;
    QryrFotografico.Params.ParamByName('orden').Value       := tsNumeroOrdenActa.Text;
    QryrFotografico.Params.ParamByName('Acta').DataType     := ftString ;
    QryrFotografico.Params.ParamByName('Acta').Value        := ComboActas.Text;
    QryrFotografico.Open ;

    rxReporteFotografico.EmptyTable;
    While NOT QryrFotografico.Eof Do
    Begin
        rxReporteFotografico.Append ;
        rxReporteFotografico.FieldValues['sContrato']         := QryrFotografico.FieldValues['sContrato'] ;
        rxReporteFotografico.FieldValues['iImagen']           := QryrFotografico.FieldValues['iImagen'] ;
        rxReporteFotografico.FieldValues['bImagen']           := QryrFotografico.FieldValues['bImagen'] ;
        rxReporteFotografico.FieldValues['sDescripcion']      := QryrFotografico.FieldValues['DescripcionOrden'] ;
        rxReporteFotografico.FieldValues['sDescripcionCorta'] := QryrFotografico.FieldValues['sDescripcionCorta'] ;
        rxReporteFotografico.FieldValues['mDescripcion']      := QryrFotografico.FieldValues['mDescripcion'] ;
        rxReporteFotografico.FieldValues['sTituloOrden']      := QryrFotografico.FieldValues['sIdFolio'] ;
        rxReporteFotografico.FieldValues['ContratoPrincipal'] := QryrFotografico.FieldValues['ContratoPrincipal'] ;
        rxReporteFotografico.FieldValues['sNumeroOrden']      := QryrFotografico.FieldValues['sNumeroOrden'] ;
        rxReporteFotografico.FieldValues['dIdFecha']          := QryrFotografico.FieldValues['dIdFecha'] ;
        rxReporteFotografico.FieldValues['sNumeroActividad']  := QryrFotografico.FieldValues['sNumeroActividad'] ;
        rxReporteFotografico.FieldValues['sFasePartida']      := QryrFotografico.FieldValues['sFasePartida'] ;
        rxReporteFotografico.FieldValues['sIdFolio']          := QryrFotografico.FieldValues['sIdFolio'] ;
        rxReporteFotografico.Post ;
        QryrFotografico.Next
    End;

    rReporte.PreviewOptions.MDIChild := True ;
    rReporte.PreviewOptions.Modal := False ;
    rReporte.PreviewOptions.Maximized := lCheckMaximized () ;
    rReporte.PreviewOptions.ShowCaptions := False ;
    rReporte.Previewoptions.ZoomMode := zmPageWidth ;
    rReporte.LoadFromFile(global_files + global_miReporte + '_ActaFotografica.fr3');
    rReporte.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + global_miReporte + '_ActaFotografica.fr3') then
       showmessage('El archivo de reporte ActaFotografica.fr3 no existe, notifique al administrador del sistema');
end;

procedure TfrmReportePeriodo.cmdNuevoClick(Sender: TObject);
begin
    ComboActas.SetFocus;
    ComboActas.Text := '';
    cmdNuevo.Enabled := False;
    cmdNuevo.Caption := ' Enter';
end;

procedure TfrmReportePeriodo.ComboActasEnter(Sender: TObject);
begin
    comboActas.color := global_color_entrada;
    if tsNumeroOrdenActa.Text = '' then
    begin
        messageDLG('Seleccione un frente de Trabajo!', mtInformation, [mbOk], 0);
        tsNumeroOrdenActa.SetFocus;
    end;
end;

procedure TfrmReportePeriodo.ComboActasExit(Sender: TObject);
begin
    comboActas.color := global_color_salida;
    fotografico_Acta.Active := False;
    fotografico_acta.ParamByName('Contrato').AsString := global_contrato;
    fotografico_acta.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
    fotografico_acta.ParamByName('Acta').AsString     := ComboActas.Text;
    fotografico_acta.Open;
end;

procedure TfrmReportePeriodo.ComboActasKeyPress(Sender: TObject; var Key: Char);
var
   i : integer;
begin
    if cmdNuevo.Enabled = False then
    begin
        if key = #13  then
        begin
            //Primero Verificamos si existe el Acta fotografica..
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select sActaFotografica from reportefotografico_acta where sContrato =:Contrato and sNumeroOrden =:Orden and sActaFotografica =:Acta');
            connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
            connection.QryBusca.ParamByName('Orden').AsString    := tsNumeroOrdenActa.Text;
            connection.QryBusca.ParamByName('Acta').AsString     := ComboActas.Text;
            connection.QryBusca.Open;

            if connection.QryBusca.RecordCount > 0 then
            begin
                messageDLG('El Nombre de Acta Fotografica "'+ComboActas.text+'" ya Existe! ', mtInformation, [mbOk], 0);
                exit;
            end
            else
               ComboActas.Items.Add(ComboActas.Text);
            if comboActas.Text = '' then
            begin
                messageDLG('Escriba un Nombre para la Acta Fotografica!', mtInformation,[mbOk],0);
                comboActas.SetFocus;
            end;
            cmdNuevo.Enabled := True;
            cmdNuevo.Caption := 'Nuevo';
        end;
    end;
end;

procedure TfrmReportePeriodo.dbFiltroEnter(Sender: TObject);
begin
    dbFiltro.Color := global_color_entrada
end;

procedure TfrmReportePeriodo.dbFiltroExit(Sender: TObject);
begin
      dbFiltro.Color := global_color_salida
end;

procedure TfrmReportePeriodo.dbFiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
      if key = #13 then
         //dbFiltro.KeyValue := null;
         tdFechaInicial.SetFocus
end;

procedure TfrmReportePeriodo.ActividadesxOrdenCalcFields(
  DataSet: TDataSet);
var
    sTipoMoneda,
    sCalculoMoneda : string;
begin
     if chkMoneda.Checked then
        sTipoMoneda := 'b.dCantidad * a.dVentaMN'
     else
         sTipoMoneda := 'b.dCantidad * a.dVentaDLL';

     If ActividadesxOrden.FieldValues['sWbs'] <> Null Then
         ActividadesxOrdensWbsSpace.Text := espaces (ActividadesxOrden.FieldValues['iNivel']) + ActividadesxOrden.FieldValues['sWbs'] ;

     If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
     Begin
          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(b.dCantidad) as Instalado From bitacoradeactividades b ' +
                                        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha < :Fecha And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' +
                                        'Group By b.sWbs, b.sNumeroActividad') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden3.Text ;
          Connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca2.Params.ParamByName('Fecha').Value := tdFechaInicial.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
          Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendAcumuladoAnterior.Value := Connection.qryBusca2.FieldValues['Instalado']
          Else
               ActividadesxOrdendAcumuladoAnterior.Value := 0 ;

          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum(b.dCantidad) as Instalado From bitacoradeactividades b ' +
                                        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha >= :FechaI And b.dIdFecha <= :FechaF And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' +
                                        'Group By b.sWbs, b.sNumeroActividad') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden3.Text ;
          Connection.QryBusca2.Params.ParamByName('FechaI').DataType := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
          Connection.QryBusca2.Params.ParamByName('FechaF').DataType := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
          Connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendCantidadPeriodo.Value := Connection.qryBusca2.FieldValues['Instalado']
          Else
               ActividadesxOrdendCantidadPeriodo.Value := 0 ;

         ActividadesxOrdendAcumulado.Value := ActividadesxOrdendCantidadPeriodo.Value + ActividadesxOrdendAcumuladoAnterior.Value ;
         if chkMoneda.Checked then
         begin
              ActividadesxOrdendTotal.Value := ActividadesxOrdendCantidadPeriodo.Value * ActividadesxOrdendVentaMN.Value ;
              ActividadesxOrdendTotalAcumulado.Value := ActividadesxOrdendAcumulado.Value * ActividadesxOrdendVentaMN.Value ;
         end
         else
         begin
              ActividadesxOrdendTotal.Value := ActividadesxOrdendCantidadPeriodo.Value * ActividadesxOrdendVentaDLL.Value ;
              ActividadesxOrdendTotalAcumulado.Value := ActividadesxOrdendAcumulado.Value * ActividadesxOrdendVentaDLL.Value ;
         end;
     End
     Else
     Begin
         // Es Paquete ...

          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum('+sTipoMoneda+') as dTotal From bitacoradeactividades b ' +
                                       'inner join actividadesxorden a on (a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden and a.sWbs = b.sWbs And a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :Convenio) ' +
                                       'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha >= :FechaI and b.dIdFecha <= :FechaF And b.sWbs Like :Wbs ' +
                                       'Group By b.sContrato') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden3.Text ;
          Connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('convenio').Value := global_convenio ;
          Connection.QryBusca2.Params.ParamByName('FechaI').DataType := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaI').Value := tdFechaInicial.Date ;
          Connection.QryBusca2.Params.ParamByName('FechaF').DataType := ftDate ;
          Connection.QryBusca2.Params.ParamByName('FechaF').Value := tdFechaFinal.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%' ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendTotal.Value := connection.QryBusca2.FieldValues['dTotal']
          Else
               ActividadesxOrdendTotal.Value := 0 ;

          Connection.qryBusca2.Active := False ;
          Connection.qryBusca2.SQL.Clear ;
          Connection.qryBusca2.SQL.Add('Select Sum('+sTipoMoneda+') as dTotal From bitacoradeactividades b ' +
                                       'inner join actividadesxorden a on (a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden and a.sWbs = b.sWbs And a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :Convenio) ' +
                                       'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.dIdFecha <= :Fecha And b.sWbs Like :Wbs ' +
                                       'Group By b.sContrato') ;
          Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
          Connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden3.Text ;
          Connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('convenio').Value := global_convenio ;
          Connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
          Connection.QryBusca2.Params.ParamByName('Fecha').Value := tdFechaFinal.Date ;
          Connection.QryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
          Connection.QryBusca2.Params.ParamByName('Wbs').Value := Trim(ActividadesxOrden.FieldValues['sWbs']) + '.%' ;
          Connection.qryBusca2.Open ;
          If Connection.qryBusca2.RecordCount > 0 then
               ActividadesxOrdendTotalAcumulado.Value := connection.QryBusca2.FieldValues['dTotal']
          Else
               ActividadesxOrdendTotalAcumulado.Value := 0 ;

     End ;

end;

procedure TfrmReportePeriodo.OrdenarFotos(sParamOrden: string);
var
   idAuxiliar, idAuxiliar2 : integer;
   SavePlace   : TBookmark;
begin
    if fotografico_acta.RecordCount > 0 then
    begin
        if sParamOrden = 'Arriba' then
        begin
            idAuxiliar2 := fotografico_acta.FieldValues['iImagen'];
            fotografico_acta.Prior;

            idAuxiliar  := fotografico_acta.FieldValues['iImagen'];
            fotografico_acta.Next;
        end;

        if sParamOrden = 'Abajo' then
        begin
            idAuxiliar2 := fotografico_acta.FieldValues['iImagen'];
            fotografico_acta.Next;

            idAuxiliar  := fotografico_acta.FieldValues['iImagen'];
            fotografico_acta.Prior;
        end;
        //Colocamos un id mayor para evitar duplicidad..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico_acta SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato and sNumeroOrden =:Orden And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Orden').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('Orden').value       := tsNumeroOrdenActa.Text;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar2;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar + 500;
        connection.zCommand.ExecSQL;

        //Ahora actualizamos el item mayor
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico_acta SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato And sNumeroOrden =:Orden And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Orden').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('Orden').value       := tsNumeroOrdenActa.Text;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar2;
        connection.zCommand.ExecSQL;

         //Ahora actualizamos el item alterado
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE reportefotografico_acta SET iImagen = :DiarioNuevo ' +
                                    'where sContrato = :contrato and sNumeroOrden =:Orden And iImagen = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        Connection.zCommand.Params.ParamByName('Orden').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('Orden').value       := tsNumeroOrdenActa.Text;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar + 500;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar;
        connection.zCommand.ExecSQL;

        if sParamOrden = 'Arriba' then
           fotografico_acta.Prior
        else
           fotografico_acta.Next;

        SavePlace := fotografico_acta.GetBookmark;
        fotografico_acta.Refresh;
        fotografico_acta.GotoBookmark(SavePlace);
        fotografico_acta.FreeBookmark(SavePlace);

    end;
end;

end.



