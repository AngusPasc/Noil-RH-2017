unit frm_bitacoradepartamental_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UnitTBotonesPermisos,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB, DateUtils, StrUtils,
  frm_barra, DBCtrls, Mask, Global, Menus, Buttons, Utilerias, ExtCtrls, Math, ComObj, ExcelXP,
  frxClass, frxDBSet, ImgList, ActnList, PanelDown, Newpanel, ZAbstractRODataset, ZDataset, ADODB,
  ZAbstractDataset, RxLookup, RXDBCtrl, rxCurrEdit, rxToolEdit, ClipBrd, ShellApi, WordXP, OleServer,
  Editb, EditCalc, frm_EditorBitacoraDepartamental, RxMemDS, udbgrid, UnitValidaTexto,
  unitactivapop, UFunctionsGHH, UnitValidacion, RXCtrls, dblookup, frm_BusquedaGeneralizada,
  AdvGlowButton, masUtilerias, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmBitacoraDepartamental_2 = class(TForm)
   ds_ordenesdetrabajo: TDataSource;
    ds_tiposdemovimiento: TDataSource;
    ds_bitacora: TDataSource;
    ds_actividadesiguales: TDataSource;
    ImageGrupos: TImageList;
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
    ComentariosAdicionales: TMenuItem;
    N5: TMenuItem;
    ds_ParidasEfectivas: TDataSource;
    frmBarra1: TfrmBarra;
    mnFichaTecnica: TMenuItem;
    ActividadesIguales: TZReadOnlyQuery;
    ActividadesIgualessWbs: TStringField;
    ActividadesIgualessNumeroActividad: TStringField;
    ActividadesIgualesmDescripcion: TMemoField;
    ActividadesIgualesdCantidad: TFloatField;
    ActividadesIgualesdInstalado: TFloatField;
    ActividadesIgualesdExcedente: TFloatField;
    ActividadesIgualesdPonderado: TFloatField;
    ActividadesIgualessMedida: TStringField;
    ActividadesIgualesdRestante: TFloatField;
    Paquete: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    TiposdeMovimiento: TZReadOnlyQuery;
    MaximoDiario: TZReadOnlyQuery;
    AvanceMaximo: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    QryPartidasEfectivas: TZReadOnlyQuery;
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
    QryExistePartida: TZReadOnlyQuery;
    ActividadesIgualessWbsAnterior: TStringField;
    rDiario: TfrxReport;
    mnNotas: TMenuItem;
    mnNotaAnt: TMenuItem;
    mnEliminaNota: TMenuItem;
    mnInsertaNota: TMenuItem;
    mnAlbum: TMenuItem;
    QryBitacorasIsometrico: TStringField;
    QryBitacorasTurno: TStringField;
    dsTiemposExtras: TDataSource;
    QryBitacorasWbsAnterior: TStringField;
    QryBitacorasHoraInicio: TStringField;
    QryBitacorasHoraFinal: TStringField;
    QryBitacoradAvanceAnterior: TFloatField;
    N7: TMenuItem;
    Mayus: TMenuItem;
    Minus: TMenuItem;
    tNewGroupBox2: tNewGroupBox;
    imgNotas: TImage;
    Label3: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    LabelCantidad: TLabel;
    lblComentarios: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel_Grupos: TListView;
    tsIdTipoMovimiento: TDBLookupComboBox;
    tdPonderado: TCurrencyEdit;
    tsNumeroActividad: TRxDBLookupCombo;
    tdCantidad: TRxCalcEdit;
    pdPaquete: TPanelDown;
    grid_iguales: TRxDBGrid;
    tsHoraInicio: TMaskEdit;
    tsHoraFinal: TMaskEdit;
    RevisarOrtografia2: TMenuItem;
    lblNotas: TLabel;
    QryBitacoramNotas: TMemoField;
    ActividadesIgualessTipoAnexo: TStringField;
    mObra: TMemo;
    SpeedButton1: TSpeedButton;
    RxAvances: TRxMemoryData;
    RxAvancesdCantidad: TFloatField;
    RxAvancessMedida: TStringField;
    RxAvancesdCantidadActual: TFloatField;
    RxAvancesdCantidadAnterior: TFloatField;
    RxAvancesdCantidadAcumulada: TFloatField;
    tmDescripcion: TMemo;
    tmNotas: TMemo;
    chkImprime: TCheckBox;
    QryBitacoralImprime: TStringField;
    chkCancelada: TCheckBox;
    QryBitacoralCancelada: TStringField;
    QryBitacorasDescripcionPartida: TStringField;
    ds_proveedor: TDataSource;
    proveedor: TZReadOnlyQuery;
    GridNotas: TRxDBGrid;
    Label7: TLabel;
    txtConcepto: TEdit;
    Label8: TLabel;
    qryNotasGerencial: TZReadOnlyQuery;
    ds_notasGerencial: TDataSource;
    popNotas: TPopupMenu;
    popAdd: TMenuItem;
    popEdit: TMenuItem;
    popPost: TMenuItem;
    popCancel: TMenuItem;
    popDelete: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    CosolidarNotasGerenciales1: TMenuItem;
    btnUp: TAdvGlowButton;
    btnDown: TAdvGlowButton;
    popConTamanio: TMenuItem;
    popGerencial: TMenuItem;
    QryBitacorahGerencial: TStringField;
    ExportaraExcelNotasGerenciales1: TMenuItem;
    SaveDialog1: TSaveDialog;
    tsNumeroActividad_PU: TRxDBLookupCombo;
    Label9: TLabel;
    QryPartidasEfectivas_ADM: TZReadOnlyQuery;
    ds_PartidasEfectivas_ADM: TDataSource;
    QryBitacorasNumeroActividad_ADM: TStringField;
    QryBitacorasWbs_ADM: TStringField;
    QryBitacorasTipoAnexo: TStringField;
    tsNumeroActividad_ADM: TRxDBLookupCombo;
    Label10: TLabel;
    QryPartidasEfectivas_PU: TZReadOnlyQuery;
    ds_PartidasEfectivas_PU: TDataSource;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    btnDelete: TcxButton;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    tNewGroupBox1: tNewGroupBox;
    tdAvanceGlobal: TCurrencyEdit;
    PBAvance1: TProgressBar;
    tdIdFecha: TDateTimePicker;
    tsNumeroOrden: TDBLookupComboBox;
    grid_bitacora: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure tdAvanceKeyPress(Sender: TObject; var Key: Char);
    function lExisteActividadAnexo(sActividad: string): Boolean;
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure Panel_GruposClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsIdTipoMovimientoEnter(Sender: TObject);
    procedure tsIdTipoMovimientoExit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure grid_igualesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);

    procedure TiposdeMovimientoAfterScroll(DataSet: TDataSet);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure ActividadesIgualesAfterScroll(DataSet: TDataSet);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure QryBitacoraCalcFields(DataSet: TDataSet);
    function fnValidaPartidaAnexo(sParamNumeroActividad: string): boolean;
    function fnValidaPartidaOrden(sParamWbs, sParamNumeroActividad: string): boolean;
    function fnActualizaAcumuladosOrden(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    function fnActualizaAcumuladosContrato(sParamOpcion, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    procedure QryBitacoraAfterScroll(DataSet: TDataSet);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);

    procedure mnEliminaNotaClick(Sender: TObject);
    procedure mnInsertaNotaClick(Sender: TObject);
    procedure mnAlbumClick(Sender: TObject);
    procedure mnNotaAntClick(Sender: TObject);
    procedure tsHoraInicioEnter(Sender: TObject);
    procedure tsHoraInicioExit(Sender: TObject);
    procedure tsHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinalEnter(Sender: TObject);
    procedure tsHoraFinalExit(Sender: TObject);
    procedure tsHoraFinalKeyPress(Sender: TObject; var Key: Char);
    procedure Label4DblClick(Sender: TObject);
    procedure btnMayusClick(Sender: TObject);
    procedure MayusClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure RevisarOrtografia2Click(Sender: TObject);
    procedure tmNotasEnter(Sender: TObject);
    procedure tmNotasExit(Sender: TObject);
    procedure tmDescripcionDblClick(Sender: TObject);
    procedure CopiaMemo(Sender: TObject);
    procedure CopiaMemo2(Sender: TObject);
    procedure tmNotasDblClick(Sender: TObject);
    procedure tsNumeroActividadMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ActualizaIdDiario(dParamContrato: string; dParamFecha: tDate; dParamIdDiario, dParamIdDiarioOld: Integer);
    procedure grid_igualesTitleClick(Column: TColumn);
    procedure grid_igualesDblClick(Sender: TObject);
    procedure tdCantidadChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure txtConceptoEnter(Sender: TObject);
    procedure txtConceptoExit(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qryNotasGerencialAfterScroll(DataSet: TDataSet);
    procedure btnUpClick(Sender: TObject);
    procedure OrdenarNotas(sParamOrden : string);
    procedure btnDownClick(Sender: TObject);
    procedure popAddClick(Sender: TObject);
    procedure popEditClick(Sender: TObject);
    procedure popPostClick(Sender: TObject);
    procedure popCancelClick(Sender: TObject);
    procedure popDeleteClick(Sender: TObject);
    procedure CosolidarNotasGerenciales1Click(Sender: TObject);
    procedure GridNotasCellClick(Column: TColumn);
    procedure popNotasPopup(Sender: TObject);
    procedure popGerencialClick(Sender: TObject);

    procedure ActualizaImprime();
    procedure ExportaraExcelNotasGerenciales1Click(Sender: TObject);
    procedure formatoEncabezado;
    procedure tsNumeroActividad_PUEnter(Sender: TObject);
    procedure tsNumeroActividad_PUExit(Sender: TObject);
    procedure tsNumeroActividad_PUKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividad_ADMEnter(Sender: TObject);
    procedure tsNumeroActividad_ADMExit(Sender: TObject);
    procedure tsNumeroActividad_ADMKeyPress(Sender: TObject; var Key: Char);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_bitacoraEnter(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  private
    sMenuP: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacoraDepartamental_2: TfrmBitacoraDepartamental_2;
  sDescripcion: string;
  sWbsFormulario: string;
  sSegur: string;
  SavePlace: TBookmark;
  dExcedenteOrden: Double;
  dExcedenteAnexo: Double;
  dInstaladoOrden,
    dInstaladoOrden1: Double;
  dInstaladoAnexo: Double;
  dCantidadAnexo: Double;
  dCantidadOrden: Double;
  dError: Currency;
  txtMensaje: string;
  ListaPEQ: array[1..5] of integer;
  i: integer;
  dCantidadOld: Double;
  iIdDiarioOld: Integer;
  lRespuesta: Boolean;
  sInformacionCliente: string;
  
  Utgrid2: TicDbGrid;
  {Variables para Kardex del sistema..}
  lKardex: boolean;
  sWbsKardex, opcKardex, fechaKardex: string;
  myYear, myMonth, myDay: Word;
  BotonPermiso: TBotonesPermisos;
  {------------------------------------}
  sOpcion : string;
  lMostrarNotas : boolean;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;
  
implementation

uses frm_comentariosxanexo, UnitExcepciones, frm_OpcionesGerencial;

{$R *.dfm}

function TfrmBitacoraDepartamental_2.fnActualizaAcumuladosContrato(sParamOpcion, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value := param_global_contrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    Connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    Connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end
    else if (dExcedenteAnexo > 0) then
    begin
      Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
      Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente;
    end
    else
    begin
      Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
      Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Excedente').value := 0;
    end;
    connection.zCommand.ExecSQL;
    fnActualizaAcumuladosContrato := True
  except
    fnActualizaAcumuladosContrato := False
  end
end;

function TfrmBitacoraDepartamental_2.fnActualizaAcumuladosOrden(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE actividadesxorden SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').value := param_global_contrato;
    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.KeyValue;
    connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
    connection.zCommand.Params.ParamByName('wbs').value := sParamWbs;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end
    else if (dParamExcedente > 0) then
    begin
      connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
      connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente;
    end
    else
    begin
      connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
      connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Excedente').value := 0;
    end;
    connection.zCommand.ExecSQL;
    fnActualizaAcumuladosOrden := True
  except
    fnActualizaAcumuladosOrden := False
  end;

end;

function TfrmBitacoraDepartamental_2.fnValidaPartidaAnexo(sParamNumeroActividad: string): boolean;
begin
  dExcedenteAnexo := 0;
  dInstaladoAnexo := 0;
  dCantidadAnexo := 0;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select (dInstalado + dExcedente) as dInstalado, dCantidadAnexo from actividadesxanexo where ' +
    'sContrato = :contrato And sIdConvenio = :Convenio ' +
    'And sNumeroActividad = :Actividad And sTipoActividad = "Actividad" ');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('actividad').Value := sParamNumeroActividad;
  connection.qryBusca.Open;
  if (Connection.qryBusca.RecordCount > 0) then
  begin
    if Connection.qryBusca.FieldByName('dInstalado').IsNull then
      dInstaladoAnexo := 0
    else
      dInstaladoAnexo := Connection.qryBusca.FieldValues['dInstalado'];

    if Connection.qryBusca.FieldByName('dCantidadAnexo').IsNull then
      dCantidadAnexo := 0
    else
      dCantidadAnexo := Connection.qryBusca.FieldValues['dCantidadAnexo'];

    dError := (dInstaladoAnexo + tdCantidad.Value);
    dError := dError - dCantidadAnexo;
    if (dError > 0) then
    begin
      txtMensaje := 'No se puede asignar mas cantidad de la cantidad estipulada en el contrato vigente, ' +
        'Cantidad a instalar segun contrato = ' + floattostr(dCantidadAnexo) +
        ', Cantidad instalada a la fecha = ' + floattostr(dInstaladoAnexo) +
        ', si continua se creara un volumen de adicional a lo estipulado en el contrato vigente. Desea Continuar?';
      if MessageDlg(txtMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dExcedenteAnexo := (dInstaladoAnexo + tdCantidad.Value) - dCantidadAnexo;
        fnValidaPartidaAnexo := True;
      end
      else
        fnValidaPartidaAnexo := False;
    end
    else
      fnValidaPartidaAnexo := True
  end
  else
    fnValidaPartidaAnexo := False;
end;

function TfrmBitacoraDepartamental_2.fnValidaPartidaOrden(sParamWbs, sParamNumeroActividad: string): boolean;
begin
  dExcedenteOrden := 0;
  dInstaladoOrden := 0;
  dCantidadOrden := 0;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select (dInstalado + dExcedente) as dInstalado , dCantidad, sTipoAnexo from actividadesxorden where ' +
    'sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden And sWbs = :Wbs And ' +
    'sNumeroActividad = :Actividad And sTipoActividad = :Tipo');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('orden').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value := sParamWbs;
  Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('actividad').Value := sParamNumeroActividad;
  Connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Tipo').Value := 'Actividad';
  connection.qryBusca.Open;

  if Connection.qryBusca.RecordCount > 0 then
  begin
    if connection.qryBusca.FieldByName('dInstalado').IsNull then
      dInstaladoOrden := 0
    else
      if connection.qryBusca.FieldValues['dInstalado'] < 0 then
        dInstaladoOrden := 0
      else
        dInstaladoOrden := connection.qryBusca.FieldValues['dInstalado'];

    if connection.qryBusca.FieldByName('dCantidad').IsNull then
      dCantidadOrden := 0
    else
      dCantidadOrden := connection.qryBusca.FieldValues['dCantidad'];

    dError := (dInstaladoOrden + tdCantidad.Value);
    dError := dError - dCantidadOrden;
    if (dError > 0) then
    begin
      txtMensaje := 'No se puede instalar mas de lo propuesto en la concepto en el paquete del la orden de trabajo seleccionada. ' +
        'cantidad a instalar para la el concepto en el paquete y orden de trabajo Seleccionada = ' + floattostr(dCantidadOrden) +
        ', Cantidad instalada a la fecha = ' + floattostr(dInstaladoOrden) +
        ', Si continua disminuira lo disponible en otros paquetes y ordenes de trabajo, desea continuar?';
      if MessageDlg(txtMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dExcedenteOrden := (dInstaladoOrden + tdCantidad.Value) - dCantidadOrden;
        fnValidaPartidaOrden := True
      end
      else
      begin
        fnValidaPartidaOrden := False;
        lRespuesta := False;
      end;
    end
    else
      fnValidaPartidaOrden := True
  end
  else
    fnValidaPartidaOrden := False
end;



procedure TfrmBitacoraDepartamental_2.FormShow(Sender: TObject);
var
  ListItem: TListItem;
  qryGrupos: TZReadOnlyQuery;
  qryPuntos: TZReadOnlyQuery;
  BuscaPEQ: TZReadOnlyQuery;
begin
  sMenuP := stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);
  
  UtGrid2 := TicdbGrid.create(grid_iguales);
  chkcancelada.Checked := false;
  OpcButton := '';
  sWbsFormulario := '';
  chkImprime.Checked := True;

  //Gerencial botones
  btnAdd.Enabled    := False;
  btnEdit.Enabled   := False;
  btnPost.Enabled   := False;
  btnCancel.Enabled := False;
  btnDelete.Enabled := False;
  btnUp.Enabled     := False;
  btnDown.Enabled   := False;
  txtConcepto.Enabled := False;

  BuscaPEQ := TZReadOnlyQuery.Create(self);
  BuscaPEQ.Connection := connection.zConnection;

  tsNumeroActividad.ReadOnly := True;
  tsNumeroActividad_PU.ReadOnly := True;
  tsNumeroActividad_ADM.ReadOnly := True;

  tsIdtipoMovimiento.ReadOnly := True;
  tdCantidad.ReadOnly := True;
  tmDescripcion.ReadOnly := True;

  frmBarra1.btnCancel.Click;
  tdIdFecha.Date := date;
  connection.configuracion.refresh;

  i := 1;
  //Buscamos los Id de los Registros que contienen personal y equipo..
  BuscaPEQ.Active := False;
  BuscaPEQ.SQL.Clear;
  BuscaPEQ.SQL.Add('Select iIdDiario from bitacoradepersonal where sContrato =:Contrato and dIdFecha =:Fecha group by iIdDiario ');
  BuscaPEQ.ParamByName('Contrato').AsString := param_global_contrato;
  BuscaPEQ.ParamByName('Fecha').AsDate := global_fecha;
  BuscaPEQ.Open;

  if BuscaPEQ.RecordCount > 0 then
  begin
    while not BuscaPEQ.Eof do
    begin
      ListaPEQ[i] := BuscaPEQ.FieldValues['iIdDiario'];
      Inc(i);
      BuscaPEQ.next;
    end;
  end;

  //Buscamos si este registro tiene equipos.
  BuscaPEQ.Active := False;
  BuscaPEQ.SQL.Clear;
  BuscaPEQ.SQL.Add('Select iIdDiario from bitacoradeequipos where sContrato =:Contrato and dIdFecha =:Fecha Group by iIdDiario ');
  BuscaPEQ.ParamByName('Contrato').AsString := param_global_contrato;
  BuscaPEQ.ParamByName('Fecha').AsDate := global_fecha;
  BuscaPEQ.Open;

  if BuscaPEQ.RecordCount > 0 then
  begin
    while not BuscaPEQ.Eof do
    begin
      ListaPEQ[i] := BuscaPEQ.FieldValues['iIdDiario'];
      Inc(i);
      BuscaPEQ.next;
    end;
  end;

   // Inicializo el Query Bitacora y actualizo los querys necesarios en este modulo
  TiposdeMovimiento.Active := False;
  TiposdeMovimiento.Params.ParamByName('Contrato').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Contrato').Value := param_Global_Contrato;
  TiposdeMovimiento.Params.ParamByName('Clasificacion').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Clasificacion').Value := 'Tiempo Muerto';
  TiposdeMovimiento.Params.ParamByName('Clasificacion2').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Clasificacion2').Value := 'Movimiento de Barco';
  TiposdeMovimiento.Params.ParamByName('Alcance').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  TiposdeMovimiento.Open;

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear;
  if global_grupo = 'INTEL-CODE' then
    Ordenesdetrabajo.SQL.Add('select ot.sNumeroOrden, ot.iJornada, ot.bTipoAdmon, ot.iDecimales from ordenesdetrabajo ot where ot.sContrato =:Contrato ' +
      'And ot.cIdStatus =:Status order by ot.sNumeroOrden')
  else
    OrdenesdeTrabajo.SQL.Add('Select ot.sNumeroOrden, ot.iJornada, ot.bTipoAdmon, ot.iDecimales from ordenesdetrabajo ot ' +
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
  begin
    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    while not OrdenesdeTrabajo.Eof do
    begin
      if OrdenesdeTrabajo.FieldValues['sNumeroOrden'] = global_orden then
        if OrdenesdeTrabajo.FieldValues['bTipoAdmon'] = 'Si' then
          tdCantidad.DecimalPlaces := OrdenesdeTrabajo.FieldValues['iDecimales'];
      OrdenesdeTrabajo.Next;
    end;
  end;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
    'dIdFecha = :fecha and sNumeroOrden = :Orden Group By sContrato');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := global_fecha;
  Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Orden').Value := '';
  connection.qryBusca.Open;

  tdIdFecha.Enabled := False;
  tsNumeroOrden.Enabled := False;
  if Connection.qryBusca.RecordCount > 0 then
    tdAvanceGlobal.Value := connection.qryBusca.FieldValues['dAvance']
  else
    tdAvanceGlobal.Value := 0;

  qryGrupos := tzReadOnlyQuery.Create(Self);
  qryGrupos.Connection := connection.zConnection;
  qryGrupos.Active := False;
  qryGrupos.SQL.Clear;
  QryGrupos.SQL.Add('select DISTINCT * from actividadesxgrupo where sContrato = :Contrato And sNumeroOrden = :Orden  Group By sGrupo Order By sGrupo');
  qryGrupos.Params.ParamByName('Contrato').DataType := ftString;
  qryGrupos.Params.ParamByName('Contrato').Value := param_global_contrato;
  qryGrupos.Params.ParamByName('Orden').DataType := ftString;
  qryGrupos.Params.ParamByName('Orden').Value    := global_orden;
  qryGrupos.Open;
  Panel_Grupos.Items.Clear;
  if qryGrupos.RecordCount > 0 then
    with Panel_Grupos do
    begin
      qryGrupos.First;
      while not qryGrupos.Eof do
      begin
        ListItem := Items.Add;
        ListItem.Caption := qryGrupos.FieldValues['sGrupo'];
        ListItem.ImageIndex := 0;
        qryGrupos.Next
      end
    end;
  qryGrupos.Destroy;

  tsNumeroOrden.KeyValue := global_orden;
  tdIdFecha.Date := global_fecha;

  QryPartidasEfectivas.Active := False;
  QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
  QryPartidasEfectivas.Params.ParamByName('contrato').Value := param_global_contrato;
  QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
  QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
  QryPartidasEfectivas.Params.ParamByName('Orden').Value := global_orden;
  QryPartidasEfectivas.Open;
  if QryPartidasEfectivas.RecordCount < 1 then
    tsNumeroActividad.Enabled := false;

  QryPartidasEfectivas_ADM.Active := False;
  QryPartidasEfectivas_ADM.Params.ParamByName('contrato').DataType := ftString;
  QryPartidasEfectivas_ADM.Params.ParamByName('contrato').Value := param_global_contrato;
  QryPartidasEfectivas_ADM.Params.ParamByName('convenio').DataType := ftString;
  QryPartidasEfectivas_ADM.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryPartidasEfectivas_ADM.Params.ParamByName('Orden').DataType := ftString;
  QryPartidasEfectivas_ADM.Params.ParamByName('Orden').Value    := global_orden;
  QryPartidasEfectivas_ADM.Params.ParamByName('fecha').DataType := ftDate;
  QryPartidasEfectivas_ADM.Params.ParamByName('fecha').Value    := global_fecha;
  QryPartidasEfectivas_ADM.Open;

  QryPartidasEfectivas_PU.Active := False;
  QryPartidasEfectivas_PU.Params.ParamByName('contrato').DataType := ftString;
  QryPartidasEfectivas_PU.Params.ParamByName('contrato').Value := param_global_contrato;
  QryPartidasEfectivas_PU.Params.ParamByName('convenio').DataType := ftString;
  QryPartidasEfectivas_PU.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryPartidasEfectivas_PU.Params.ParamByName('Orden').DataType := ftString;
  QryPartidasEfectivas_PU.Params.ParamByName('Orden').Value := global_orden;
  QryPartidasEfectivas_PU.Open;

  QryBitacora.Active := False;
  QryBitacora.Params.ParamByName('contrato').DataType := ftString;
  QryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
  QryBitacora.Params.ParamByName('convenio').DataType := ftString;
  QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryBitacora.Params.ParamByName('orden').DataType := ftString;
  QryBitacora.Params.ParamByName('orden').Value := global_orden;
  QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  QryBitacora.Params.ParamByName('fecha').Value := global_fecha;
  QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  QryBitacora.Params.ParamByName('Turno').DataType := ftString;
  QryBitacora.Params.ParamByName('Turno').Value := global_Turno_reporte;
  QryBitacora.Open;

  Grid_Bitacora.SetFocus;
  BotonPermiso.permisosBotones(frmBarra1);
end;       

procedure TfrmBitacoraDepartamental_2.tdIdFechaExit(Sender: TObject);
begin
  if tsNumeroOrden.Text <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;

    if ReporteDiario.RecordCount > 0 then
    begin
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    end
  end;

  // Limpia valores
  tdPonderado.Value := 0;
  tdCantidad.Value := 0;
  tmDescripcion.Text := '';
  tsHoraInicio.Text := '00:00';
  tsHoraFinal.Text := '00:00';

  // Termina Limpia

  QryBitacora.Active := False;
  QryBitacora.Params.ParamByName('contrato').DataType := ftString;
  QryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
  QryBitacora.Params.ParamByName('convenio').DataType := ftString;
  QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryBitacora.Params.ParamByName('orden').DataType := ftString;
  QryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
  QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  QryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  QryBitacora.Open;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
    'dIdFecha = :fecha and sNumeroOrden = :Orden Group By sContrato');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
  Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Orden').Value := '';
  connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    tdAvanceGlobal.Value := connection.qryBusca.FieldValues['dAvance']
  else
    tdAvanceGlobal.Value := 0;

  tdIdFecha.Color := global_color_salidaERP

end;

procedure TfrmBitacoraDepartamental_2.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnAddClick(Sender: TObject);
var
  lValido: Boolean;
  iCheck: byte;
begin
  opcKardex               := 'Crea ';
  LabelCantidad.Caption   := '';
  global_Editor           := 'Nuevo';
  lValido                 := False;
  chkImprime.Checked      := True;
  tsNumeroActividad_ADM.KeyValue := Null;
  tsNumeroActividad_PU.KeyValue  := Null;
  tsNumeroActividad_PU.Color  := global_color_pantalla;
  tsNumeroActividad_ADM.Color := global_color_pantalla;
  // PanelVisita.Visible     := False;

  //Objeto Gerencial
  btnAdd.Enabled    := False;
  btnEdit.Enabled   := False;
  btnPost.Enabled   := False;
  btnCancel.Enabled := False;
  btnDelete.Enabled := False;
  btnUp.Enabled     := False;
  btnDown.Enabled   := False;
  txtConcepto.Enabled := False;
  GridNotas.Enabled   := False;
  GridNotas.Color     := $00E6FEFF;
  btnAdd.Visible    := False;
  btnEdit.Visible   := False;
  btnPost.Visible   := False;
  btnCancel.Visible := False;
  btnDelete.Visible := False;

  if Trim(tsNumeroOrden.Text) <> '' then
  begin
    lValido := True;
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
    begin
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lValido := False;
        frmBarra1.btnCancel.Click ;
        exit;
      end
    end;
    activapop(frmBitacoraDepartamental_2, popupprincipal);
  end;

  if global_grupo = 'INTEL-CODE' then
    lValido := True;

  tsIdTipoMovimiento.KeyValue := connection.configuracion.FieldValues['sTipoOperacion'];

  if lValido then
  begin
    Grid_Iguales.Enabled := True;

    if QryPartidasEfectivas.RecordCount > 0 then
    begin
      tsNumeroActividad.Enabled := True;
      tsNumeroActividad.ReadOnly := False;
      tsNumeroActividad_PU.ReadOnly := False;
      tsNumeroActividad_ADM.ReadOnly := False;
    end;

    tsIdtipoMovimiento.ReadOnly := False;
    tdCantidad.ReadOnly := False;
    tsHoraInicio.ReadOnly := False;
    tsHoraFinal.ReadOnly := False;
    tmDescripcion.ReadOnly := False;
    tmNotas.ReadOnly := False;
    tsIdTipoMovimiento.Enabled := true;

    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;

    ActividadesIguales.Active := False;
    tsNumeroActividad.KeyValue := '';
    tsNumeroActividad_PU.KeyValue  := '';
    tsNumeroActividad_ADM.KeyValue := '';

    tmDescripcion.Text := '';
    tmNotas.Text := '';
    tsHoraInicio.Text := '00:00';
    tsHoraFinal.Text := '00:00';
    tdCantidad.Value := 0;
    tdPonderado.Value := 0;
    tsNumeroActividad.SetFocus
  end;

  if Global_contrato = Global_contrato_Barco then
  begin
    tsIdTipoMovimiento.KeyValue := 'B';
    tmDescripcion.ReadOnly := False;
    tsIdTipoMovimiento.SetFocus;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnEditClick(Sender: TObject);
var
  lValido: Boolean;
  sNumeroActividad : string;
begin
  opcKardex := 'Edita ';
  lRespuesta := True;
  lValido := False;
  iIdDiarioOld := QryBitacora.FieldValues['iIdDiario'];
  global_Editor := '';
  tsIdTipoMovimiento.Enabled := false;

  //Objetos Gerencial
  btnAdd.Enabled    := False;
  btnEdit.Enabled   := False;
  btnPost.Enabled   := False;
  btnCancel.Enabled := False;
  btnDelete.Enabled := False;
  btnUp.Enabled     := False;
  btnDown.Enabled   := False;
  txtConcepto.Enabled := False;
  GridNotas.Enabled   := False;
  GridNotas.Color     := $00E6FEFF;
  btnAdd.Visible    := False;
  btnEdit.Visible   := False;
  btnPost.Visible   := False;
  btnCancel.Visible := False;
  btnDelete.Visible := False;

  if tsNumeroActividad.KeyValue <> Null then
  begin
      sNumeroActividad := tsNumeroActividad.Text;
      tsNumeroActividad.ReadOnly := False;
      tsNumeroActividad_PU.ReadOnly := True;
      tsNumeroActividad_ADM.ReadOnly := True;
  end
  else
  begin
      sNumeroActividad := tsNumeroActividad_PU.Text;
      tsNumeroActividad.ReadOnly := True;
      tsNumeroActividad_PU.ReadOnly := False;
      tsNumeroActividad_ADM.ReadOnly := False;
  end;

  if (QryBitacora.RecordCount > 0) and (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
    if global_grupo = 'INTEL-CODE' then
      lValido := True
    else
    begin
      if tsNumeroOrden.KeyValue <> '' then
      begin
        lValido := True;
        ReporteDiario.Active := False;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
        ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
        ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
        ReporteDiario.Open;
        activapop(frmBitacoraDepartamental_2, popupprincipal);
        if ReporteDiario.RecordCount > 0 then
          if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
          begin
            MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
            lValido := False;
            frmBarra1.btnCancel.Click
          end
      end
    end;

    {Tipo de Movimeinto Reporte de visita de Obra..}
  if tiposdemovimiento.FieldValues['sIdTipoMovimiento'] = 'R' then
  begin
      // PanelVisita.Visible  := True;
      label4.Visible := False;
      tsHoraInicio.Visible := False;
      label5.Caption := 'Tiempo Total';
  end
  else
  begin
      //  PanelVisita.Visible := False;
      label4.Visible := True;
      tsHoraInicio.Visible := True;
      label5.Caption := 'Hora de Termino';
  end;

  if global_grupo = 'INTEL-CODE' then
    lValido := True;

  if lValido then
  begin
    ActividadesIguales.Active := False;
    ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
    ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
    ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
    ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
    ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
    ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
    ActividadesIguales.Params.ParamByName('actividad').Value := sNumeroActividad;
    ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
    ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
    ActividadesIguales.Open;

    // Localizar el registro que se está editando
    if not ActividadesIguales.Locate('swbs', QryBitacora.FieldByName('swbs').AsString, []) then
       ActividadesIguales.First;
    dCantidadOld := tdCantidad.Value;

    Grid_Iguales.Enabled := False;
    tsIdtipoMovimiento.ReadOnly := False;
    tdCantidad.ReadOnly := False;
    tsHoraInicio.ReadOnly := False;
    tsHoraFinal.ReadOnly := False;
    tmDescripcion.ReadOnly := False;
    tmNotas.ReadOnly := False;

    frmBarra1.btnEditClick(Sender);
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;

    if tiposdemovimiento.FieldValues['sIdTipoMovimiento'] = 'N' then
       tmDescripcion.SetFocus;

    if tiposdemovimiento.FieldValues['sIdTipoMovimiento'] = 'E' then
       tdCantidad.SetFocus;

    if param_Global_contrato = Global_contrato_Barco then
    begin
      tsIdTipoMovimiento.KeyValue := 'B';
      tmDescripcion.ReadOnly := False;
      tsIdTipoMovimiento.SetFocus;
    end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnPostClick(Sender: TObject);
var
    lFiltro,
    lEfectivo,
    Consolidado,
    lIncorrecto : Boolean;
  sHoraInicio,
    sHoraFinal,
    sTiempoEfectivo,
    sNumeroActividad, sTipoAnexo : string;
  iDiario: Integer;
  dAvance,
    dAvanceAnterior,
    MaxCantidad,
    RepoCantidad,
    EstaCantidad: Extended;

  EraEdit: Boolean;

  Q_GuardaDatos,
    Q_BuscaAvance: TZReadOnlyQuery;
  QryUpdate: TZQuery;

  nombres, cadenas: TStringList;
  sWbsAux: string;
  iCheck: byte;
  function xRound(Valor: Real; Dec: Integer): Real;
  var
    Desarrollo: Real;
    Decimales: string;
    Multiplo: Integer;
    sValor: string;
  begin
    { Redondear con limite mínimo superior de 5
         Delphi y mysql redondean los decimales de 0.1 a 0.5 hacia abajo, es decir al cero y de 0.6 a 0.9 hacia arriba, es decir a 1.
         Pues bien, EXCEL lo hace de la siguiente manera: de 0.1 a 0.4 hacia abajo y de 0.5 a 0.9 hacia arriba.
         Debido a que el personal de BMPI realiza sus cálculos en EXCEL es por esto que nunca llegan a los mismo avances
         de acuerdo al sistema. }
    Multiplo := 1;
    for I := 1 to Dec do
      Multiplo := Multiplo * 10;

    sValor := FloatToStr(Valor * Multiplo);
    if Pos('.', sValor) = 0 then sValor := sValor + '.00';

    Desarrollo := StrToFloat(Copy(sValor, 1, Pos('.', sValor) - 1));
    Decimales := Copy(sValor, Pos('.', sValor) + 1, Length(sValor));
    if StrToInt(Decimales[1]) > 4 then
      Desarrollo := Desarrollo + 1;
    Result := Desarrollo / Multiplo;
  end;

begin
    if (tsHoraInicio.Text = '  :  ') or (tsHoraFinal.Text = '  :  ') then
    begin
        ShowMessage('Los horarios no deben estar vacios!!');
        tsHoraInicio.SetFocus;
        exit;
    end;

    {Validacion de jornada hora > 24:00}
    lIncorrecto := False;
    if (StrToInt(copy(tsHoraInicio.Text, 1, 2)) = 24) and (StrToInt(copy(tsHoraInicio.Text, 4, 5)) > 0) then
      lIncorrecto := True
    else
      if (StrToInt(copy(tsHoraInicio.Text, 1, 2)) > 24) then
        lIncorrecto := True;

    if lIncorrecto then
    begin
        messageDLG('La Hora de Inicio es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
        tsHoraInicio.SetFocus;
        exit;
    end;

    if (StrToInt(copy(tsHoraFinal.Text, 1, 2)) = 24) and (StrToInt(copy(tsHoraFinal.Text, 4, 5)) > 0) then
        lIncorrecto := True
    else
       if (StrToInt(copy(tsHoraFinal.Text, 1, 2)) > 24) then
         lIncorrecto := True;

    if lIncorrecto then
    begin
        messageDLG('La Hora de Final es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
        tsHoraFinal.SetFocus;
        exit;
    end;

    //Verificamos la suma del gerencial
    if tsHoraInicio.Text > tsHoraFinal.Text then
        if (24 - StrToInt(copy(tsHoraInicio.Text, 1, 2))) + (StrToInt(copy(tsHoraFinal.Text, 1, 2))) > 12 then
            lIncorrecto := True
        else
            if ((24 - StrToInt(copy(tsHoraInicio.Text, 1, 2))) + (StrToInt(copy(tsHoraFinal.Text, 1, 2))) = 12) and
               ((59 - StrToInt(copy(tsHoraInicio.Text, 4, 5))) + (StrToInt(copy(tsHoraFinal.Text, 4, 5))) > 59) then
               lIncorrecto := True;
    if lIncorrecto then
    begin
        messageDLG('La Suma de la Jornada del Gerencial es Mayor a 12:00 Hrs', mtInformation, [mbOk], 0);
        tsHoraFinal.SetFocus;
        exit;
    end;

     if tsHoraInicio.Text < tsHoraFinal.Text then
        if (24 - StrToInt(copy(tsHoraInicio.Text, 1, 2))) - (24 - StrToInt(copy(tsHoraFinal.Text, 1, 2))) > 12 then
            lIncorrecto := True
        else
           if ((24 - StrToInt(copy(tsHoraInicio.Text, 1, 2))) - (24 - StrToInt(copy(tsHoraFinal.Text, 1, 2))) = 12) and
               ((59 - StrToInt(copy(tsHoraInicio.Text, 4, 5))) + (StrToInt(copy(tsHoraFinal.Text, 4, 5))) > 59) then
               lIncorrecto := True;
    if lIncorrecto then
    begin
        messageDLG('La Suma de la Jornada del Gerencial es Mayor a 12:00 Hrs', mtInformation, [mbOk], 0);
        tsHoraFinal.SetFocus;
        exit;
    end;

  if tsNumeroActividad.KeyValue <> Null then
     sNumeroActividad := tsNumeroActividad.Text
  else
     sNumeroActividad := tsNumeroActividad_PU.Text;

  if pdPaquete.Left = 0 then //no hacer nada si se esta eligiendo la lista de pertidas
    exit;

   {Validacion de campos}
  sWbsAux := '';
  if ActividadesIguales.Active then
    sWbsAux := 'x';

   {Continua insercion de datos}
  lKardex := false;

  Q_GuardaDatos := TZReadOnlyQuery.Create(self);
  Q_GuardaDatos.Connection := connection.zConnection;

  Q_BuscaAvance := TZReadOnlyQuery.Create(self);
  Q_BuscaAvance.Connection := connection.zConnection;

  lRespuesta := True;
    { ********************************************************************
    Nota: Aquí inician las modificaciones que hay que pasarle a Ivan
    ******************************************************************** }
  swbsFormulario := ActividadesIguales.FieldByName('sWbs').AsString;
  MaxCantidad  := 0;
  RepoCantidad := 0;

  if tsNumeroActividad.KeyValue <> Null then
     sTipoAnexo := QryPartidasEfectivas.FieldByName('sTipoAnexo').AsString
  else
     sTipoAnexo := QryPartidasEfectivas_PU.FieldByName('sTipoAnexo').AsString;

  if (sTipoAnexo = 'PU') and (connection.configuracion.FieldValues['lAplicaAvisos'] = 'Si') then
  begin
      // Calcular la cantidad en base al avance
      EstaCantidad := tdCantidad.value ;

      // Validar si la cantidad captura es valida de acuerdo a sus recepciones
      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Text := 'select a.snumeroactividad, sum(a.dCantidad) as dCantidad ' +
        'from anexo_psuministro a ' +
        'inner join anexo_suministro b on (b.scontrato = a.scontrato and b.ifolio = a.iFolio) ' +
        'inner join actividadesxanexo c on (c.scontrato = a.scontrato and c.sidconvenio = :convenio and c.sNumeroActividad = a.sNumeroActividad) ' +
        'where b.scontrato = :contrato and b.snumeroorden = :orden and c.sTipoActividad = "Actividad" and a.sNumeroActividad = :Actividad and sTipoAnexo ="PU" ' +
        'group by a.sNumeroActividad';
      Connection.QryBusca.ParamByName('contrato').AsString := param_global_contrato;
      Connection.QryBusca.ParamByName('convenio').AsString := convenio_reporte;
      Connection.QryBusca.ParamByName('orden').AsString := ordenesdetrabajo.FieldByName('snumeroorden').AsString;
      Connection.QryBusca.ParamByName('actividad').AsString := sNumeroActividad;
      Connection.QryBusca.Open;

      // Cantidad reportada total de esta partida
      if Connection.QryBusca.RecordCount > 0 then
         MaxCantidad := Connection.QryBusca.FieldByName('dCantidad').AsFloat;

        // Calcular ahora el total de las cantidades capturadas en la bitácora correspondientes a esta partida
      Connection.QryBusca.SQL.Text := 'select	a.snumeroactividad,	sum(a.dCantidad) as dCantidad ' +
        'from bitacoradeactividades a ' +
        'where a.scontrato = :contrato and a.snumeroorden = :orden and a.snumeroactividad = :actividad ' +
        'group by a.sNumeroActividad';
      Connection.QryBusca.ParamByName('contrato').AsString := param_global_contrato;
      Connection.QryBusca.ParamByName('orden').AsString := ordenesdetrabajo.FieldByName('snumeroorden').AsString;
      Connection.QryBusca.ParamByName('actividad').AsString := sNumeroActividad;
      Connection.QryBusca.Open;

      if Connection.QryBusca.RecordCount > 0 then
        RepoCantidad := Connection.QryBusca.FieldByname('dCantidad').AsFloat;

        // Si se trata de una edición de registro se deberá descontar el dato original a la cantidad reportada
      if OpcButton = 'Edit' then
      begin
        QryExistePartida.Active := False;
        QryExistePartida.Params.ParamByName('Contrato').DataType := ftString;
        QryExistePartida.Params.ParamByName('Contrato').Value := param_global_contrato;
        QryExistePartida.Params.ParamByName('Fecha').DataType := ftDate;
        QryExistePartida.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        QryExistePartida.Params.ParamByName('Orden').DataType := ftString;
        QryExistePartida.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
        QryExistePartida.Params.ParamByName('wbs').DataType := ftString;
        QryExistePartida.Params.ParamByName('wbs').Value := sWbsFormulario;
        QryExistePartida.Params.ParamByName('Actividad').DataType := ftString;
        QryExistePartida.Params.ParamByName('Actividad').Value := sNumeroActividad;
        QryExistePartida.Params.ParamByName('Turno').DataType := ftString;
        QryExistePartida.Params.ParamByName('Turno').Value := global_turno_reporte;
        QryExistePartida.Params.ParamByName('Tipo').DataType := ftString;
        QryExistePartida.Params.ParamByName('Tipo').Value := sTiempoEfectivo;
        QryExistePartida.Params.ParamByName('Isometrico').DataType := ftString;
        QryExistePartida.Params.ParamByName('Isometrico').Value := '';
        QryExistePartida.Open;

        //Localizar el elemento original para conocer su cantidad actual
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Text := 'select dCantidad from bitacoradeactividades ' +
          'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario';
        connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('contrato').value := param_Global_Contrato;
        connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate;
        connection.QryBusca.Params.ParamByName('fecha').value := tdIdFecha.Date;
        connection.QryBusca.Params.ParamByName('diario').DataType := ftInteger;
        connection.QryBusca.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
        connection.QryBusca.Open;

        if Connection.QryBusca.RecordCount > 0 then
          RepoCantidad := RepoCantidad - Connection.QryBusca.FieldByName('dCantidad').AsFloat; // Restar la cantidad original para que no afecte al acumulado total nuevo
      end;

      // Comparar ahora los datos           //HABILITAT CUANDO ESTEN LISTOS LOS AVISOSS.
      if RepoCantidad + EstaCantidad > MaxCantidad then
      begin
          messagedlg('Las cantidad reportada para esta partida más la cantidad acumulada suman un volúmen mayor a las cantidades registradas en los avisos de embarque.' + #10 + #10 +
                     'No es posible registrar mas volumenes de esta partida, verifique esto e intente de nuevo.', mtInformation, [mbOk], 0);
          abort;
      end;
  end;
  { ********************************************************************
    Nota: Aquí TERMINAN las modificaciones que hay que pasarle a Ivan
  ******************************************************************** }

//  sInformacionCliente := '';
//  for iCheck := 0 to tInformacion.Items.Count - 1 do
//    if tInformacion.Checked[iCheck] = True then
//    begin
//      if sInformacionCliente <> '' then
//        sInformacionCliente := sInformacionCliente + '-';
//      sInformacionCliente := sInformacionCliente + tInformacion.Items.Strings[iCheck];
//    end;
  EraEdit := OpcButton = 'Edit'; // Respaldar el valor original del botón que llamó a este procedimiento
  if OpcButton = 'Edit' then
    if TiposdeMovimiento.FieldValues['sClasificacion'] <> 'Notas' then
    begin
      //Respaldo de la informacion de la partida..}
      Q_GuardaDatos.Active := False;
      Q_GuardaDatos.SQL.Clear;
      Q_GuardaDatos.SQL.Add('select * from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario');
      Q_GuardaDatos.ParamByName('Contrato').AsString := param_global_contrato;
      Q_GuardaDatos.ParamByName('Fecha').AsDate := tdIdFecha.Date;
      Q_GuardaDatos.ParamByName('Diario').AsString := QryBitacora.FieldValues['iIdDiario'];
      Q_GuardaDatos.Open;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('delete from bitacoradeactividades where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
      connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
      connection.zCommand.ExecSQL;

        //Actualizo los Acumulados ...
        // ActividadesxOrden ...
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad from bitacoradeactividades where ' +
        'sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :wbs And ((:Param > 0 and dIdFecha <= :Fecha) or :Param = 0) And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
      connection.QryBusca.Params.ParamByName('wbs').Value := sWbsFormulario;
      connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate;
      connection.QryBusca.params.ParamByName('fecha').Value := tdIdFecha.Date;
      connection.QryBusca.Params.ParamByName('param').DataType := ftInteger;
      connection.QryBusca.params.ParamByName('param').Value := 0;
      connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
      connection.QryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
      connection.QryBusca.open;
      dInstaladoOrden := 0;
      if connection.QryBusca.RecordCount > 0 then
        dInstaladoOrden := Connection.QryBusca.FieldValues['dCantidad'];

      dExcedenteOrden := 0;
      if dInstaladoOrden > ActividadesIguales.FieldValues['dCantidad'] then
      begin
        dExcedenteOrden := dInstaladoOrden - ActividadesIguales.FieldValues['dCantidad'];
        dInstaladoOrden := ActividadesIguales.FieldValues['dCantidad'];
      end;

        // Leer solamente las cantiades reportadas anteriormente a esta fecha
      connection.QryBusca.Close;
      connection.QryBusca.Params.ParamByName('param').DataType := ftInteger;
      connection.QryBusca.params.ParamByName('param').Value := 1;
      connection.QryBusca.Open;
      dInstaladoOrden1 := 0;
      if connection.QryBusca.RecordCount > 0 then
        dInstaladoOrden1 := Connection.QryBusca.FieldValues['dCantidad'];

        // ActividadesxAnexo ....
        // Cantidad Anexo ...
      connection.qryBusca.Active := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('Select dCantidadAnexo from actividadesxanexo where ' +
        'sContrato = :contrato And sIdConvenio = :Convenio And sWbs = :wbs And sTipoActividad = "Actividad" ');
      Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
      Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
      Connection.QryBusca.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('swbscontrato').AsString;
      connection.qryBusca.Open;

      dCantidadAnexo := 0;
      if (Connection.qryBusca.RecordCount > 0) then
        dCantidadAnexo := Connection.qryBusca.FieldValues['dCantidadAnexo'];

      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad from bitacoradeactividades where ' +
        'sContrato = :contrato and sWbs =:wbs And sNumeroActividad = :Actividad Group By sNumeroActividad');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := param_global_contrato;
      connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
      connection.QryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
      connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
      connection.QryBusca.Params.ParamByName('wbs').Value := QryBitacora.FieldByName('sWbs').AsString;
      connection.QryBusca.open;
      dInstaladoAnexo := 0;
      if connection.QryBusca.RecordCount > 0 then
        dInstaladoAnexo := Connection.QryBusca.FieldValues['dCantidad'];

      dExcedenteAnexo := 0;
      if dInstaladoAnexo > dCantidadAnexo then
      begin
        dExcedenteAnexo := dInstaladoAnexo - dCantidadAnexo;
        dInstaladoAnexo := dCantidadAnexo;
      end;

      lEfectivo := fnActualizaAcumuladosOrden('', QryBitacora.FieldByName('sWbs').AsString, sNumeroActividad, ActividadesIguales.FieldValues['dCantidad'], dInstaladoOrden, dExcedenteOrden, 0);

      lEfectivo := fnActualizaAcumuladosContrato('', sNumeroActividad, dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, 0);

      OpcButton := 'New'
    end;
    lEfectivo := False;


    if OpcButton = 'New' then
    begin
          dAvance := 0;
          lFiltro := False;
          if tsIdTipoMovimiento.KeyValue = Connection.configuracion.FieldValues['sTipoAlcance'] then
             sTiempoEfectivo := Connection.configuracion.FieldValues['sTipoOperacion']
          else
             sTiempoEfectivo := tsIdTipoMovimiento.KeyValue;

          sHoraInicio := tsHoraInicio.Text;
          sHoraFinal  := tsHoraFinal.Text;

          if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Notas' then
          begin
              tdCantidad.Value := 0;
              sWbsFormulario := '';
              lFiltro := True;
          end
          else
          begin
              if ActividadesIguales.RecordCount > 0 then
                 if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Tiempo en Operacion' then
                    lEfectivo := True
                 else
                    tdCantidad.Value := 0

              else
                 tdCantidad.Value := 0;

              sWbsFormulario := ActividadesIguales.FieldByName('sWbs').AsString;
              SavePlace := ActividadesIguales.GetBookmark;

              if lEfectivo then
              begin
                  if (strPos(pchar('ACTIVIDAD'), pchar(ActividadesIguales.FieldByName('sMedida').AsString)) <> nil) then
                     tdCantidad.Value := (tdCantidad.value * actividadesiguales.FieldValues['dCantidad']);

                  lFiltro := fnValidaPartidaOrden(sWbsFormulario, sNumeroActividad);
              end//fin lEfectivo
          end;//fin sClasificacion

          //Si la respuesta es No, Regresamos el registro eliminado de la bitacoradeactividades.. }
          if lRespuesta = False then
          begin
              if global_Editor <> 'Nuevo' then
              begin
                  if Q_GuardaDatos.RecordCount > 0 then
                  begin
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear;
                      connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento,  ' +
                        ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion, ' +
                        ' mNotas, sIsometrico, lImprime, lCancelada, sNumeroActividad_ADM, sWbs_ADM ) ' +
                        ' VALUES (:contrato, :fecha, :diario, :turno, :depto, ' +
                        ' :orden, :Wbs, :actividad, :tipo, :inicio, :final, :avance, :cantidad, :descripcion, ' +
                        ' :notas, :isometrico, :imprime, :cancela, :ActividadADM, :WbsADM)');
                      Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
                      Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                      Connection.zCommand.Params.ParamByName('fecha').value := Q_GuardaDatos.FieldValues['dIdFecha'];
                      Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                      Connection.zCommand.Params.ParamByName('diario').value := Q_GuardaDatos.FieldValues['iIdDiario'];
                      Connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('turno').value := Q_GuardaDatos.FieldValues['sIdTurno'];
                      Connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('depto').value := Q_GuardaDatos.FieldValues['sIdDepartamento'];
                      Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('orden').value := Q_GuardaDatos.FieldValues['sNumeroOrden'];
                      Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('wbs').value := Q_GuardaDatos.FieldValues['sWbs'];
                      Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('Actividad').value := Q_GuardaDatos.FieldValues['sNumeroActividad_ADM'];
                      Connection.zCommand.Params.ParamByName('WbsADM').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('WbsADM').value := Q_GuardaDatos.FieldValues['sWbs_ADM'];
                      Connection.zCommand.Params.ParamByName('ActividadADM').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('ActividadADM').value := Q_GuardaDatos.FieldValues['sNumeroActividad'];
                      Connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('tipo').value := Q_GuardaDatos.FieldValues['sIdTipoMovimiento'];
                      Connection.zCommand.Params.ParamByName('avance').DataType := ftFloat;
                      Connection.zCommand.Params.ParamByName('avance').value := Q_GuardaDatos.FieldValues['dAvance'];
                      Connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                      Connection.zCommand.Params.ParamByName('cantidad').value := Q_GuardaDatos.FieldValues['dCantidad'];
                      Connection.zCommand.Params.ParamByName('inicio').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('inicio').value := Q_GuardaDatos.FieldValues['sHoraInicio'];
                      Connection.zCommand.Params.ParamByName('final').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('final').value := Q_GuardaDatos.FieldValues['sHoraFinal'];
                      Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                      Connection.zCommand.Params.ParamByName('descripcion').value := Q_GuardaDatos.FieldValues['mDescripcion'];
                      Connection.zCommand.Params.ParamByName('notas').DataType := ftMemo;
                      Connection.zCommand.Params.ParamByName('notas').value := Q_GuardaDatos.FieldValues['mNotas'];
                      Connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('Isometrico').value := Q_GuardaDatos.FieldValues['sIsometrico'];
                      Connection.zCommand.Params.ParamByName('Imprime').DataType := ftString;
                      if chkImprime.Checked then
                        Connection.zCommand.Params.ParamByName('Imprime').value := 'Si'
                      else
                        Connection.zCommand.Params.ParamByName('Imprime').value := 'No';
                      Connection.zCommand.Params.ParamByName('Cancela').DataType := ftString;
                      if chkCancelada.Checked then
                        Connection.zCommand.Params.ParamByName('Cancela').value := 'Si'
                      else
                        Connection.zCommand.Params.ParamByName('Cancela').value := 'No';
                      connection.zCommand.ExecSQL;
                      desactivapop(popupprincipal);

                      {Registra movimiento en Kardex..}
                      lKardex := true;
                      sWbsKardex := Q_GuardaDatos.FieldByName('sWbs').AsString;
                      fechaKardex := Q_GuardaDatos.FieldByName('dIdFecha').AsString;
                  end;//Fin recordcount
                  lRespuesta := True;
              end;//Fin <> Nuevo
          end;//Fin lRespuesta

          //Continua proceso normal del sistema..
          if lFiltro then
          begin
              // Aqui .. primero busco si existe la partida en el dia ... Orden, Paquete, PArtida, si existe las une ...
              Consolidado := False;
              QryExistePartida.Active := False;
              QryExistePartida.Params.ParamByName('Contrato').DataType := ftString;
              QryExistePartida.Params.ParamByName('Contrato').Value := param_global_contrato;
              QryExistePartida.Params.ParamByName('Fecha').DataType := ftDate;
              QryExistePartida.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              QryExistePartida.Params.ParamByName('Orden').DataType := ftString;
              QryExistePartida.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
              QryExistePartida.Params.ParamByName('wbs').DataType := ftString;
              QryExistePartida.Params.ParamByName('wbs').Value := sWbsFormulario;
              QryExistePartida.Params.ParamByName('Actividad').DataType := ftString;
              QryExistePartida.Params.ParamByName('Actividad').Value := sNumeroActividad;
              QryExistePartida.Params.ParamByName('Turno').DataType := ftString;
              QryExistePartida.Params.ParamByName('Turno').Value := global_turno_reporte;
              QryExistePartida.Params.ParamByName('Tipo').DataType := ftString;
              QryExistePartida.Params.ParamByName('Tipo').Value := sTiempoEfectivo;
              QryExistePartida.Params.ParamByName('Isometrico').DataType := ftString;
              QryExistePartida.Params.ParamByName('Isometrico').Value := '';
              QryExistePartida.Open;

              if QryExistePartida.RecordCount > 0 then
                 if (strPos(pchar('ACTIVIDAD'), pchar(ActividadesIguales.FieldByName('sMedida').AsString)) = nil) then
                    if MessageDlg('Se encontro una coincidencia del Wbs-Partida en los registros de la fecha y orden seleccionada, ¿Desea consolidar el movimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                       Consolidado := True
                    else
                       Consolidado := False
                 else
                     Consolidado := False;

              if Consolidado then
              begin
                  if lEfectivo then
                  begin
                      if (strPos(pchar('ACTIVIDAD'), pchar(ActividadesIguales.FieldByName('sMedida').AsString)) = nil) then
                      begin
                          dAvanceAnterior := 0;
                          dAvance := 0;

                          if ActividadesIguales.FieldValues['dCantidad'] > 0 then
                          begin
                              AvanceMaximo.Active := False;
                              AvanceMaximo.SQL.Clear;
                              AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                                'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                                'sWbs = :wbs and sNumeroActividad = :Actividad Group By sContrato');
                              AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                              AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                              AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                              AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                              AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                              AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('Actividad').Value := sNumeroActividad;
                              AvanceMaximo.Open;

                              if AvanceMaximo.RecordCount > 0 then
                                 dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                              AvanceMaximo.Active := False;
                              AvanceMaximo.SQL.Clear;
                              AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                                'sContrato = :contrato and dIdFecha = :fecha and sIdTurno < :Turno And ' +
                                'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                                'Group By sContrato');
                              AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                              AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                              AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                              AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                              AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                              AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                              AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                              AvanceMaximo.Params.ParamByName('Actividad').Value := sNumeroActividad;
                              AvanceMaximo.Open;
                              if AvanceMaximo.RecordCount > 0 then
                                 dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                              if Connection.configuracion.FieldValues['sAvanceBitacora'] = 'Volumen' then
                              begin
                                  dAvance := (100 / dCantidadOrden) * tdCantidad.Value;
                                  dError := (dInstaladoOrden + tdCantidad.Value) - dCantidadOrden;
                                  if (dError >= 0) then
                                    dAvance := 100 - dAvanceAnterior
                                  else
                                    dAvance := dAvance + QryExistePartida.FieldValues['dAvance'];
                              end
                              else
                              if (dAvanceAnterior + dAvance) >= 100 then
                              begin
                                  tdCantidad.Value := dCantidadOrden - dInstaladoOrden;
                                  dAvance := 100 - dAvanceAnterior
                              end;//Fin dAvanceAnterios + Avance
                          end;//Fin dCantidad > 0

                          try
                              {Se consolida el movimiento se suman los volumenes de la partida..}
                              connection.zCommand.Active := False;
                              connection.zCommand.SQL.Clear;
                              connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dCantidad = :Cantidad, dAvance = :Avance ' +
                                'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                              connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
                              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                              connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                              connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                              connection.zCommand.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
                              connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                              connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                              connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                              connection.zCommand.Params.ParamByName('Cantidad').value := tdCantidad.Value + QryExistePartida.FieldValues['dCantidad'];
                              connection.zCommand.ExecSQL;

                              if fnActualizaAcumuladosOrden('', sWbsFormulario, sNumeroActividad, dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                                 if fnActualizaAcumuladosContrato('', sNumeroActividad, dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then

                                 else
                                     MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sNumeroActividad + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                              else
                                  MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                          Except
                               MessageDlg('Ocurrio un error al actualizar la bitacora de actividades, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                          end;//Fin Try consolida movimientos,
                      end;//Fin pchart 'Actividad' = nill
                  end//Fin else lEfectivo
                  else
                  begin
                      // Si se consolida un comentario ....
                      try
                          connection.zCommand.Active := False;
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET mDescripcion = :descripcion ' +
                                                      'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                          Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                          Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
                          Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                          Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                          Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                          Connection.zCommand.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
                          Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                          Connection.zCommand.Params.ParamByName('descripcion').value := QryExistePartida.FieldValues['mDescripcion'] + chr(13) + tmDescripcion.Text;
                          connection.zCommand.ExecSQL;
                      except
                        on e: exception do
                        begin
                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Volumenes de Obra y Notas', 'Al actualizar la bitacora de actividades', 0);
                        end;
                      end//Fin try consolida comentario
                  end//Fin lEfectivo
              end//Fin else lConsolidado
              else
              begin
                  //Aqui iniciamos con el calculo de los avances de las partidas..
                  if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
                    global_inicio := global_inicio + 8000;

                  MaximoDiario.Active := False;
                  MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
                  MaximoDiario.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                  MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
                  MaximoDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                  MaximoDiario.Params.ParamByName('Inicio').DataType := ftInteger;
                  MaximoDiario.Params.ParamByName('Inicio').Value := global_inicio;
                  MaximoDiario.Params.ParamByName('Final').DataType := ftInteger;
                  MaximoDiario.Params.ParamByName('Final').Value := global_final;
                  MaximoDiario.Open;
                  if MaximoDiario.FieldByName('TotalDiario').IsNull then
                     iDiario := global_inicio + 1
                  else
                     iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

                  if lEfectivo then
                  begin
                      dAvanceAnterior := 0;
                      dAvance := 0;

                      if ActividadesIguales.FieldValues['dCantidad'] > 0 then
                      begin
                          AvanceMaximo.Active := False;
                          AvanceMaximo.SQL.Clear;
                          AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                            'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                            'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                            'Group By sContrato');
                          AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                          AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                          AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                          AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                          AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                          AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('Actividad').Value := sNumeroActividad;
                          AvanceMaximo.Open;

                          if AvanceMaximo.RecordCount > 0 then
                             dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                          AvanceMaximo.Active := False;
                          AvanceMaximo.SQL.Clear;
                          AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                            'sContrato = :contrato and dIdFecha = :fecha and sIdTurno <= :Turno And ' +
                            'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                            'Group By sContrato');
                          AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                          AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                          AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                          AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                          AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                          AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                          AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                          AvanceMaximo.Params.ParamByName('Actividad').Value := sNumeroActividad;
                          AvanceMaximo.Open;

                          if AvanceMaximo.RecordCount > 0 then
                            dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                          if Connection.configuracion.FieldValues['sAvanceBitacora'] = 'Volumen' then
                          begin
                              // Ajsute realizado por rangel para no modificar el asunto de los avances de la OT-05}
                              //dAvance := (100 / dCantidadOrden) * tdCantidad.Value;  // 22 Febrero de 2010
                              if dCantidadOrden > 0 then
                              begin
                                  {dAvance := ((100 / dCantidadOrden) * (tdCantidad.Value + dInstaladoOrden1));
                                  dAvance := dAvance - dAvanceAnterior;}
                                  dAvance := (tdCantidad.Value / dCantidadOrden) * 100;
                                  dAvance := xRound(dAvance, 4);
                              end;

                              dError := (dInstaladoOrden1 + tdCantidad.Value) - dCantidadOrden;
                              if (dError >= 0) then
                                  dAvance := 100 - dAvanceAnterior;
                                                // Verificar el 100%
                              if dAvanceAnterior + dAvance > 100 then
                                 dAvance := 100 - dAvanceAnterior;
                          end//Fin sAvanceBotacora = 'Volumen'
                          else
                          if (dAvanceAnterior + dAvance) >= 100 then
                          begin
                              tdCantidad.Value := dCantidadOrden - dInstaladoOrden1;
                              dAvance := 100 - dAvanceAnterior
                          end;//Fin dAvanceAnterior + dAvance
                      end;//Fin dCantidad > 0
                  end;//Fin lEfectivo

                  try
                      //Guardamos los datos en la bitacora de actividades...
                      connection.zCommand.Active := False;
                      connection.zCommand.SQL.Clear; //aqui corrijo la insercion de comentarios
                      connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, ' +
                        ' sNumeroOrden, sWbs, sNumeroActividad, ' +
                        '  sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion, mNotas, dCantidadAjuste,lImprime, lCancelada, sNumeroActividad_ADM, sWbs_ADM) ' +
                        ' VALUES (:contrato, :fecha, :diario, :turno, :orden, :Wbs, :actividad, ' +
                        ' :tipo, :inicio, :final, :avance, :cantidad, :descripcion, :notas, :Ajuste,:imprime, :cancela, :ActividadADM, :WbsADM)');
                      Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
                      Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                      Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                      Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                      Connection.zCommand.Params.ParamByName('diario').value := iDiario;
                      Connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('turno').value := global_turno_reporte;
                      Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden.KeyValue;
                      if sWbsFormulario <> '' then
                      begin
                        Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                        Connection.zCommand.Params.ParamByName('wbs').value := sWbsFormulario;
                      end;
                      Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('actividad').value := sNumeroActividad;
                      Connection.zCommand.Params.ParamByName('WbsADM').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('ActividadADM').DataType := ftString;
                      if tsNumeroActividad_ADM.KeyValue = Null then
                      begin
                          Connection.zCommand.Params.ParamByName('WbsADM').value := '';
                          Connection.zCommand.Params.ParamByName('ActividadADM').value := '';
                      end
                      else
                      begin
                          Connection.zCommand.Params.ParamByName('WbsADM').value := QryPartidasEfectivas_ADM.FieldValues['sWbs'];
                          Connection.zCommand.Params.ParamByName('ActividadADM').value := QryPartidasEfectivas_ADM.FieldValues['sNumeroActividad'];
                      end;
                      Connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('tipo').value := sTiempoEfectivo;
                      Connection.zCommand.Params.ParamByName('avance').DataType := ftFloat;
                      Connection.zCommand.Params.ParamByName('avance').value := dAvance;
                      Connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                      Connection.zCommand.Params.ParamByName('cantidad').value := tdCantidad.Value;
                      Connection.zCommand.Params.ParamByName('inicio').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('inicio').value := sHoraInicio;
                      Connection.zCommand.Params.ParamByName('final').DataType := ftString;
                      Connection.zCommand.Params.ParamByName('final').value := sHoraFinal;
                      Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                      Connection.zCommand.Params.ParamByName('descripcion').value := tmDescripcion.Text;
                      Connection.zCommand.Params.ParamByName('notas').DataType := ftMemo;
                      Connection.zCommand.Params.ParamByName('notas').value := tmNotas.Text;
                      Connection.zCommand.Params.ParamByName('Ajuste').DataType := ftFloat;
                      Connection.zCommand.Params.ParamByName('Ajuste').Value := dAvance;
                      Connection.zCommand.Params.ParamByName('Imprime').DataType := ftString;
                      if chkImprime.Checked then
                         Connection.zCommand.Params.ParamByName('Imprime').value := 'Si'
                      else
                         Connection.zCommand.Params.ParamByName('Imprime').value := 'No';
                      Connection.zCommand.Params.ParamByName('Cancela').DataType := ftString;
                      if chkCancelada.Checked then
                         Connection.zCommand.Params.ParamByName('Cancela').value := 'Si'
                      else
                         Connection.zCommand.Params.ParamByName('Cancela').value := 'No';
                      connection.zCommand.ExecSQL;

                      //Registra movimiento en kardex del sistema.
                      lKardex := true;
                      sWbsKardex := sWbsFormulario;

                      //soad Funcion para Regenerar el Avance de la Partida..
                      if TiposdeMovimiento.FieldValues['sClasificacion'] <> 'Notas' then
                      begin
                          {Revisamos si la partida fue Ajustada para llegar a un avance determinado.. Si tiene ajuste se regenera solo al cargar cantidad..}
                          Q_BuscaAvance.Active := False;
                          Q_BuscaAvance.SQL.Clear;
                          Q_BuscaAvance.SQL.Add('select sum(dCantidadAjuste) as Ajuste from bitacoradeactividades where sContrato =:Contrato ' +
                            'and sNumeroOrden =:Orden and sNumeroActividad =:Actividad and sWbs =:Wbs group by sContrato');
                          Q_BuscaAvance.ParamByName('Contrato').AsString := param_global_contrato;
                          Q_BuscaAvance.ParamByName('Orden').AsString := tsNumeroOrden.KeyValue;
                          Q_BuscaAvance.ParamByName('Actividad').AsString := sNumeroActividad;
                          Q_BuscaAvance.ParamByName('Wbs').AsString := sWbsFormulario;
                          Q_BuscaAvance.Open;

                          if Q_BuscaAvance.RecordCount > 0 then
                          begin
                             try
                                if Q_BuscaAvance.FieldValues['Ajuste'] = 0 then
                                begin
                                    RegeneraPartida('Actividad', tsNumeroOrden.KeyValue, sWbsFormulario, sNumeroActividad, convenio_reporte, ActividadesIguales.FieldValues['dCantidad']);
                                end;//Fin Ajuste = 0
                             except
                                on e: exception do
                                begin
                                   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al Regenerar Partida al salvar el registro', 0);
                                end;
                             end;
                          end;//Fin recordCount > 0
                      end;//sClasificacion <> 'Notas'

                      if lEfectivo then
                         if fnActualizaAcumuladosOrden('', sWbsFormulario, sNumeroActividad, dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                            if fnActualizaAcumuladosContrato('', sNumeroActividad, dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then

                            else
                                MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sNumeroActividad + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                         else
                             MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                  except
                      on e: exception do
                      begin
                        lKardex := false;
                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar la bitacora de actividades', 0);
                      end;
                  end;//Fin try guardar datos en la bitacoradeactividades
              end;//Fin lConsolidado
          end;//Fin lFiltro

         // Este procedimiento se debe ejecutar solamente si el el botón que llamó a este procedimiento era el EDIT
         //Actualizacion de personal y equipo con el idDiario Anterior
         if EraEdit and (iDiario <> iIdDiarioOld) then
            ActualizaIdDiario(param_global_contrato, tdIdFecha.Date, iDiario, iIdDiarioOld);

         //Actualizamos el lImprime de las notas de Gerencial
         ActualizaImprime;

     end//Fin else if opcion = 'New'
     else
     begin
         sHoraInicio := tsHoraInicio.Text;
         sHoraFinal  := tsHoraFinal.Text;
         try
            QryUpdate := TZQuery.Create(nil);
            QryUpdate.Connection := Connection.zConnection;

            QryUpdate.Active := False;
            QryUpdate.SQL.Clear;
            QryUpdate.SQL.Add('UPDATE bitacoradeactividades SET sHoraInicio = :inicio, sHoraFinal = :final, mDescripcion = :descripcion, sIsometrico = :Isometrico, sNumeroActividad_ADM =:ActividadADM, sWbs_ADM =:WbsADM, ' +
                              'lImprime =:Imprime where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario ');
            QryUpdate.Params.ParamByName('contrato').DataType := ftString;
            QryUpdate.Params.ParamByName('contrato').value := param_Global_Contrato;
            QryUpdate.Params.ParamByName('fecha').DataType := ftDate;
            QryUpdate.Params.ParamByName('fecha').value := tdIdFecha.Date;
            QryUpdate.Params.ParamByName('diario').DataType := ftInteger;
            QryUpdate.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
            QryUpdate.Params.ParamByName('inicio').DataType := ftString;
            QryUpdate.Params.ParamByName('inicio').value := sHoraInicio;
            QryUpdate.Params.ParamByName('final').DataType := ftString;
            QryUpdate.Params.ParamByName('final').value := sHoraFinal;
            QryUpdate.Params.ParamByName('descripcion').DataType := ftMemo;
            QryUpdate.Params.ParamByName('descripcion').value := tmDescripcion.Text;
            QryUpdate.Params.ParamByName('Isometrico').DataType := ftString;
            QryUpdate.Params.ParamByName('Isometrico').value := '';
            QryUpdate.Params.ParamByName('Imprime').DataType := ftString;
            if chkImprime.Checked then
               QryUpdate.Params.ParamByName('Imprime').value := 'Si'
            else
               QryUpdate.Params.ParamByName('Imprime').value := 'No';
            QryUpdate.Params.ParamByName('WbsADM').DataType := ftString;
            QryUpdate.Params.ParamByName('WbsADM').value    := QryPartidasEfectivas_ADM.FieldValues['sWbs'];
            QryUpdate.Params.ParamByName('ActividadADM').DataType := ftString;
            QryUpdate.Params.ParamByName('ActividadADM').value    := QryPartidasEfectivas_ADM.FieldValues['sNumeroActividad'];
            QryUpdate.ExecSQL;

            ActualizaImprime;

            //Asignamos movieintos a kardex del sistema..}
            lKardex := true;
            sWbsKardex := QryBitacora.FieldByName('sWbs').AsString;
            DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
            fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
        except
          on e: exception do
          begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar el registro', 0);
          end;
        end//Fin try update bitacoradeactividades
    end; ////Fin else if opcion = 'New'

    //Registrar la operacion en el kardex
    if lKardex then
    begin
        if sWbsKardex = '' then
           opcKardex := opcKardex + ' Comentario'
        else
           opcKardex := opcKardex + ' Partida ' + sWbsKardex;
        try
           Kardex('Reporte Diario', opcKardex, fechaKardex, 'Fecha', tsNumeroOrden.Text, '', '');
        except
          on e: exception do
          begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al registrar actualizacion de registro en kardex', 0);
          end;
        end;
    end;

    SavePlace := TcxGridDBTableView(Grid_Bitacora.ActiveView).DataController.DataSource.DataSet.GetBookmark;
    QryBitacora.Active := False;
    QryBitacora.Open;
    try
      TcxGridDBTableView(Grid_Bitacora.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    except
    else
      TcxGridDBTableView(Grid_Bitacora.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
    end;

    QryPartidasEfectivas_ADM.Active := False;
    QryPartidasEfectivas_ADM.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas_ADM.Params.ParamByName('contrato').Value := param_global_contrato;
    QryPartidasEfectivas_ADM.Params.ParamByName('convenio').DataType := ftString;
    QryPartidasEfectivas_ADM.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas_ADM.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas_ADM.Params.ParamByName('Orden').Value    := global_orden;
    QryPartidasEfectivas_ADM.Params.ParamByName('fecha').DataType := ftDate;
    QryPartidasEfectivas_ADM.Params.ParamByName('fecha').Value    := global_fecha;
    QryPartidasEfectivas_ADM.Open;

    Q_GuardaDatos.Destroy;

    tsNumeroActividad.ReadOnly := True;
    tsIdtipoMovimiento.ReadOnly := True;
    tdCantidad.ReadOnly := True;
    tmDescripcion.ReadOnly := True;
    tsHoraInicio.ReadOnly := True;
    tsHoraFinal.ReadOnly := True;
    tmNotas.ReadOnly := True;
    tmNotas.Enabled := True;
    chkImprime.Checked := True;

    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    ActividadesIguales.Active := False;

    // Solo mandar llamar este evento se si están agregando partidas
    if EraEdit then
      frmBarra1.btnCancelClick(Sender)
    else
      frmBarra1.btnPostClick(Sender);
    BotonPermiso.permisosBotones(frmBarra1);

    tsIdTipoMovimiento.Enabled := true;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnCancelClick(Sender: TObject);
begin
  if pdPaquete.Left = 0 then //no hacer nada si se esta eligiendo la lista de pertidas
    exit;     

  tsNumeroActividad.ReadOnly := True;
  tsIdtipoMovimiento.ReadOnly := True;
  //tsPuntosInspeccion.Enabled := False;
  tdCantidad.ReadOnly := True;
  tmDescripcion.ReadOnly := True;
  tsHoraInicio.ReadOnly := True;
  tsHoraFinal.ReadOnly := True;

  //Gerencial botones
  btnAdd.Visible    := True;
  btnEdit.Visible   := True;
  btnPost.Visible   := True;
  btnCancel.Visible := True;
  btnDelete.Visible := True;

  global_Editor := '';

  tsNumeroActividad.KeyValue := '';
  tsNumeroActividad_PU.KeyValue := '';
  tsNumeroActividad_ADM.KeyValue := '';
  tmDescripcion.Text := '';
  tdCantidad.Value := 0;
  tsHoraInicio.Text := '00:00';
  tsHoraFinal.Text := '00:00';
  frmBarra1.btnCancelClick(Sender);

  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  ActividadesIguales.Active := False;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  tsIdTipoMovimiento.Enabled := true;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnRefreshClick(Sender: TObject);
var
  qryPuntos: tZReadOnlyQuery;
begin
  qryPuntos := tzReadOnlyQuery.Create(Self);
  qryPuntos.Connection := connection.zConnection;
  qryPuntos.Active := False;
  qryPuntos.SQL.Clear;
  qryPuntos.SQL.Add('select sIsometrico from puntosdeinspeccion where sContrato = :Contrato And sNumeroOrden = :Orden Order By sIsometrico');
  qryPuntos.Params.ParamByName('Contrato').DataType := ftString;
  qryPuntos.Params.ParamByName('Contrato').Value := param_global_contrato;
  qryPuntos.Params.ParamByName('Orden').DataType := ftString;
  qryPuntos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  qryPuntos.Open;

  qryPuntos.Destroy;

  QryBitacora.Active := False;
  QryBitacora.Open;

  connection.configuracion.refresh;

  ordenesdetrabajo.Active := False;
  ordenesdetrabajo.Open;

  TiposdeMovimiento.Active := False;
  TiposdeMovimiento.Open;

end;     

procedure TfrmBitacoraDepartamental_2.GridNotasCellClick(Column: TColumn);
begin
    lMostrarNotas := True;
    if qryNotasGerencial.RecordCount > 0 then
    begin
         if (sOpcion = '') and (lMostrarNotas) then
         begin
             tsHoraInicio.Text  := QryNOtasGerencial.FieldValues['sHoraInicio'];
             tsHoraFinal.Text   := QryNOtasGerencial.FieldValues['sHoraFinal'];
             tmDescripcion.Text := QryNOtasGerencial.FieldValues['mDescripcion'];
             txtConcepto.Text   := QryNOtasGerencial.FieldValues['sConceptoGerencial'];
             tmDescripcion.Color := $00FFC54A ;
         end;
     end;
end;

procedure TfrmBitacoraDepartamental_2.grid_bitacoraEnter(Sender: TObject);
var
  iCheck: Byte;
  sDescompone, sFase, sNumeroActividad: string;
begin
    if frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click
  else
  begin
      //Gerencial botones
      btnAdd.Visible    := True;
      btnEdit.Visible   := True;
      btnPost.Visible   := True;
      btnCancel.Visible := True;
      btnDelete.Visible := True;
      btnCancel.Click;
  end;

  if tsNumeroActividad.KeyValue <> Null then
     sNumeroActividad := tsNumeroActividad.Text
  else
     sNumeroActividad := tsNumeroActividad_PU.Text;

  if QryPartidasEfectivas.Active then
  begin
    imgNotas.Visible := False;
    if tsNumeroOrden.Text <> '' then
    begin
      if QryBitacora.RecordCount > 0 then
      begin
        tsIdTipoMovimiento.KeyValue := QryBitacora.FieldValues['sIdTipoMovimiento'];
        tsNumeroActividad.KeyValue := QryBitacora.FieldValues['sNumeroActividad'];
        tmDescripcion.Text := QryBitacora.FieldValues['mDescripcion'];
        tsHoraInicio.Text := QryBitacora.FieldValues['sHoraInicio'];
        tsHoraFinal.Text := QryBitacora.FieldValues['sHoraFinal'];
        tdCantidad.Text := FormatFLoat('0.00000', QryBitacora.FieldValues['dCantidad']);
      end
      else
      begin

        tsIdTipoMovimiento.KeyValue := '';
        tsNumeroActividad.KeyValue := '';
        tmDescripcion.Text := '';
        tsHoraInicio.Text := '00:00';
        tsHoraFinal.Text := '00:00';
        tdCantidad.Value := 0;
      end;

      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
      Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad;
      Connection.qryBusca.Open;

      if Connection.qryBusca.RecordCount > 0 then
        imgNotas.Visible := True;

      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := sNumeroActividad;
      ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
      ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
      ActividadesIguales.Open;

      if ActividadesIguales.RecordCount > 0 then
        tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado']
      else
        tdPonderado.Value := 0;

      Grid_Iguales.Enabled := False;
      tdPonderado.Value := 0;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString;
      Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('wbs').DataType := ftString;
      if QryBitacora.RecordCount > 0 then
        Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs']
      else
        Paquete.Params.ParamByName('wbs').Value := '';

      Paquete.Open;
      if Paquete.RecordCount > 0 then
      begin
        pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint := Paquete.FieldValues['mDescripcion'];
      end
      else
      begin
        pdPaquete.Caption := '< < Seleccione un Paquete > >';
        pdPaquete.Hint := '< < Seleccione un Paquete > >';
      end;
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnDeleteClick(Sender: TObject);
var
  lBorra: Boolean;
begin
  try
    lBorra := True;
    if tsNumeroOrden.Text <> '' then
    begin
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
      ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
      ReporteDiario.Params.ParamByName('turno').DataType := ftString;
      ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
      ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
      ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        begin
          MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
          lBorra := False;
        end
    end;

    //Primero validamos que no existan notas gerenciales asignadas a dicha partida o comentario,,
    if QryNotasGerencial.RecordCount > 0 then
    begin
        lBorra := False;
        messageDLG('Existen Notas Gerenciales asignadas a la Partida/Comentario, Favor de Eliminarlas!', mtInformation, [mbOk], 0);
    end;


    if lBorra then
      if (QryBitacora.RecordCount > 0) and (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
        if ((QryBitacora.FieldValues['lAlcance'] = 'No') or ((QryBitacora.FieldValues['lAlcance'] = 'Si') and (QryBitacora.FieldValues['sIdTipoMovimiento'] = 'E'))) then
        begin
          if MessageDlg('Desea eliminar la actividad y todo el personal y equipo asignado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            if QryBitacora.FieldValues['dCantidad'] > 0 then
            begin
              connection.qryBusca.Active := False;
              connection.qryBusca.SQL.Clear;
              connection.qryBusca.SQL.Add('select dCantidad, dInstalado, dExcedente from actividadesxorden where sContrato = :Contrato and sIdConvenio = :Convenio and ' +
                'sNumeroOrden = :Orden and sWbs = :Wbs And sNumeroActividad = :Actividad');
              Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
              Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
              Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
              Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
              connection.qryBusca.Open;
              if connection.qryBusca.RecordCount > 0 then
              begin
                if not fnActualizaAcumuladosOrden('Eliminar', QryBitacora.FieldValues['sWbs'], QryBitacora.FieldValues['sNumeroActividad'],
                  Connection.qryBusca.FieldValues['dCantidad'], Connection.qryBusca.FieldValues['dInstalado'],
                  Connection.qryBusca.FieldValues['dExcedente'], QryBitacora.FieldValues['dCantidad']) then
                  MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
              end
              else
                MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);


              connection.qryBusca.Active := False;
              connection.qryBusca.SQL.Clear;
              connection.qryBusca.SQL.Add('select dCantidadAnexo, dInstalado, dExcedente from actividadesxanexo where sContrato = :Contrato and ' +
                'sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
              Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
              Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
              Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
              Connection.qryBusca.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
              connection.qryBusca.Open;
              if connection.qryBusca.RecordCount > 0 then
              begin
                if not fnActualizaAcumuladosContrato('Eliminar', QryBitacora.FieldValues['sNumeroActividad'],
                  Connection.qryBusca.FieldValues['dCantidadAnexo'], Connection.qryBusca.FieldValues['dInstalado'],
                  Connection.qryBusca.FieldValues['dExcedente'], QryBitacora.FieldValues['dCantidad']) then
                  MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
              end
              else
                MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
            end;

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Delete from bitacoradeactividades where sContrato = :contrato and dIdFecha = :fecha and iIdDiarioNota = :diario');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.ExecSQL();

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.ExecSQL();

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
            connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.ExecSQL;

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Delete from bitacorademateriales where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
            connection.zCommand.Params.ParamByName('Contrato').Value := param_Global_Contrato;
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
            connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
            connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.ExecSQL;

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('DELETE FROM comentariosxanexo WHERE sContrato = :contrato and ' +
              ' sNumeroOrden=:Orden and ' +
              ' sIdConvenio=:Convenio and ' +
              ' sIdTurno=:Turno and ' +
              ' sNumeroActividad=:Actividad and ' +
              ' dIdFecha =:fecha and iIdDiario =:diario');
            Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
            Connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Orden').value := global_orden;
            Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Convenio').value := convenio_reporte;
            Connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Turno').value := global_turno_reporte;
            Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
            Connection.zCommand.Params.ParamByName('Actividad').value := QryBitacora.FieldValues['sNumeroActividad'];
            Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
            Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
            Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            Connection.zCommand.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.ExecSQL;

            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('DELETE FROM bitacoradeactividades WHERE sContrato = :contrato and ' +
              'dIdFecha = :fecha and iIdDiario = :diario');
            Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
            Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
            Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
            Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
            Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
            Connection.zCommand.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
            connection.zCommand.ExecSQL;

          {Registramos movimiento en Kardex del sistema..}
            sWbsKardex := QryBitacora.FieldByName('sWbs').AsString;
            DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
            fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
            if sWbsKardex = '' then
              opcKardex := 'Borra Comentario'
            else
              opcKardex := 'Borra Partida ' + sWbsKardex;

            Kardex('Reporte Diario', opcKardex, fechaKardex, 'Fecha', tsNumeroOrden.Text, '', '');
          {--------------- kardex -------------------------}

            SavePlace := TcxGridDBTableView(Grid_Bitacora.ActiveView).DataController.DataSource.DataSet.GetBookmark;
            QryBitacora.Active := False;
            QryBitacora.Open;
            try
              TcxGridDBTableView(Grid_Bitacora.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
            except
            else
              TcxGridDBTableView(Grid_Bitacora.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
            end;

            Grid_Bitacora.SetFocus
          end
        end
        else
          MessageDlg('La partida no puede eliminarse, elimine los alcances registrados a la partida en el dia para poder realizar la eliminación.', mtInformation, [mbOk], 0)
      else
        MessageDlg('No existe registro a eliminar o talves el registro pertenece a otro turno, verifique su información.', mtInformation, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al eliminar registro', 0);
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnExitClick(Sender: TObject);
begin
  global_Editor := '';
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  close
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Grid_Bitacora.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.txtConceptoEnter(Sender: TObject);
begin
    txtConcepto.Color := global_color_entradaERP;
end;

procedure TfrmBitacoraDepartamental_2.txtConceptoExit(Sender: TObject);
begin
     txtConcepto.Color := global_color_salidaERP;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
      if tdCantidad.Visible = True then
         tdCantidad.SetFocus
  end;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if QryPartidasEfectivas.RecordCount > 0 then
    tsNumeroActividad.Hint := ' Paquete  [' + QryPartidasEfectivas.FieldValues['sWbsAnterior'] + ']';
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividad_ADMEnter(
  Sender: TObject);
begin
    tsNumeroActividad_ADM.Color := global_color_entradaERP;
    tsNumeroActividad.Color := global_color_pantalla;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividad_ADMExit(
  Sender: TObject);
begin
    tsNumeroActividad_ADM.Color := global_color_salidaERP;
    if (tsNumeroActividad_PU.KeyValue <> Null) and (tsNumeroActividad_ADM.KeyValue = Null) then
       tsNumeroActividad_ADM.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividad_ADMKeyPress(
  Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tdCantidad.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividad_PUEnter(
  Sender: TObject);
begin
    tsNumeroActividad_PU.Color := global_color_entradaERP;
    tsNumeroActividad_ADM.Color := global_color_salidaERP;
    tsNumeroActividad.Color    := global_color_pantalla;
    tsNumeroActividad.KeyValue := Null;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividad_PUExit(
  Sender: TObject);
begin
  tdPonderado.Value := 0;
  tdCantidad.Value  := 0;
  tmDescripcion.Text := '';
  tsNumeroActividad_PU.Color := global_color_salidaERP;

  LabelCantidad.Caption := '';

  if (frmBarra1.btnCancel.Enabled = True) and (not tsNumeroActividad_PU.ReadOnly) then
    if tsNumeroActividad_PU.Text <> '' then
    begin
      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';

      {Se buscan todas las actiivdades que tengan el mismo nombre...}
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := tsNumeroActividad_PU.Text;
      ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
      ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
      ActividadesIguales.Open;

      tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];

      {Se buscan los paquetes anteriores a la actividad...}
      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString;
      Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType := ftString;
      Paquete.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'];
      Paquete.Open;
      if Paquete.RecordCount > 0 then
      begin
        pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint := Paquete.FieldValues['mDescripcion'];
      end
      else
      begin
        pdPaquete.Caption := '< < Seleccione un Paquete > >';
        pdPaquete.Hint := '< < Seleccione un Paquete > >';
      end;
    end
    else
    begin
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := '';
      ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
      ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
      ActividadesIguales.Open;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString;
      Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType := ftString;
      Paquete.Params.ParamByName('Wbs').Value := '';
      Paquete.Open;

      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';
    end;

end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividad_PUKeyPress(
  Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tsNumeroActividad_ADM.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.tsIdTipoMovimientoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdCantidad.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.tdAvanceKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tmDescripcion.SetFocus
end;

function TfrmBitacoraDepartamental_2.lExisteActividadAnexo(sActividad: string): Boolean;
begin
  if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Notas' then
  begin
    sDescripcion := '';
    lExisteActividadAnexo := True
  end
  else
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select mDescripcion from actividadesxanexo a where a.sContrato = :Contrato ' +
      'And sIdConvenio = :Convenio And a.sNumeroActividad = :Actividad');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := param_global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := sActividad;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      sDescripcion := Connection.qryBusca.FieldValues['mDescripcion'];
      lExisteActividadAnexo := True
    end
    else
    begin
      sDescripcion := '';
      lExisteActividadAnexo := False
    end
  end
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadExit(Sender: TObject);
begin
  tdPonderado.Value := 0;
  tdCantidad.Value := 0;
  tmDescripcion.Text := '';

  LabelCantidad.Caption := '';

  if (frmBarra1.btnCancel.Enabled = True) and (not tsNumeroActividad.ReadOnly) then
    if tsNumeroActividad.Text <> '' then
    begin
      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';

      {Se buscan todas las actiivdades que tengan el mismo nombre...}
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
      ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
      ActividadesIguales.Open;

      tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];

      {Se buscan los paquetes anteriores a la actividad...}
      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString;
      Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType := ftString;
      Paquete.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'];
      Paquete.Open;
      if Paquete.RecordCount > 0 then
      begin
        pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint := Paquete.FieldValues['mDescripcion'];
      end
      else
      begin
        pdPaquete.Caption := '< < Seleccione un Paquete > >';
        pdPaquete.Hint := '< < Seleccione un Paquete > >';
      end;
    end
    else
    begin
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value := '';
      ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
      ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
      ActividadesIguales.Open;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString;
      Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType := ftString;
      Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType := ftString;
      Paquete.Params.ParamByName('Wbs').Value := '';
      Paquete.Open;

      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';
    end;
  tsNumeroActividad.Color := global_color_salidaERP
end;

procedure TfrmBitacoraDepartamental_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  
  UtGrid2.Destroy;
  BotonPermiso.Free;
  Action := caFree;
end;

procedure TfrmBitacoraDepartamental_2.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmBitacoraDepartamental_2.Label4DblClick(Sender: TObject);
begin
  if frmBarra1.btnAdd.Enabled = False then
  begin
    tsHoraInicio.Text := ReporteDiario.FieldValues['sOperacionInicio'];
    tsHoraFinal.Text := ReporteDiario.FieldValues['sOperacionFinal'];
  end
end;

procedure TfrmBitacoraDepartamental_2.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmBitacoraDepartamental_2.popEditClick(Sender: TObject);
begin
    btnEdit.Click;
end;

procedure TfrmBitacoraDepartamental_2.popGerencialClick(Sender: TObject);
begin
     Application.CreateForm(TfrmOpcionesGerencial, frmOpcionesGerencial);
     frmOpcionesGerencial.showModal
end;

procedure TfrmBitacoraDepartamental_2.popNotasPopup(Sender: TObject);
begin
    if QryNotasGerencial.FieldValues['lImprime'] = 'Si' then
       popConTamanio.ImageIndex := 65
    else
       popConTamanio.ImageIndex := 63;
end;

procedure TfrmBitacoraDepartamental_2.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmBitacoraDepartamental_2.RevisarOrtografia2Click(Sender: TObject);
var
  WindowName: string;
  WindowHandle: Cardinal;
  WordApp, Document, Selection: OleVariant;
  exito: boolean;
  actualizar: boolean;
  registro: tbookmark;
begin
  registro := qrybitacora.GetBookmark;
  actualizar := false;
  if (OpcButton <> 'New') and (OpcButton <> 'Edit') then
  begin
    if MessageDlgpos('Para Corregir el comentario se necesita editar el registro' + #13 + #13 + '¿Desea Actualizar el comentario?',
      mtConfirmation, [mbYes, mbNo], 0, self.Left + round(self.Width / 4) + 10, self.Top + round(self.Height / 2)) = mrYes then
      actualizar := true
    else exit;
  end;


  if (length(trim(self.tmDescripcion.Text)) > 0) then
  begin
    exito := true;
    try
      WordApp := CreateOleObject('Word.Application');
    except
      exito := false;
    end;
    if exito then
    begin
      Document := WordApp.Documents.Add;
      Selection := WordApp.Selection;
      Selection.TypeText(tmDescripcion.Text);
      WindowName := WordApp.ActiveDocument.FullName + ' - ' + WordApp.Application.Caption;
      WindowHandle := 0;
      WindowHandle := FindWindow(nil, pChar(WindowName));
      SetWindowRgn(WindowHandle, CreateRectRgn(0, 0, 0, 0), true);
      if wordapp.Options.IgnoreUppercase = true then
        wordapp.Options.IgnoreUppercase := false;
      WordApp.ActiveDocument.CheckGrammar;

      Selection.WholeStory;
      Selection.Copy;
      if actualizar then
        frmBarra1btnEditClick(sender);
      tmDescripcion.Text := Clipboard.AsText;
      wordapp.quit(false);
      if actualizar then
        frmBarra1btnPostClick(sender);
    end else
      MessageDlg('Para Verificar la ortografia necesita tener instalado Microsoft Word xp o versiones posteriores de office word.', mtWarning, [mbOk], 0);

  end;
  if actualizar then
  begin
    try
      qrybitacora.GotoBookmark(registro);
    except
      qrybitacora.FreeBookmark(registro);
    end;
    self.Grid_Bitacora.SetFocus;
  end;

end;

procedure TfrmBitacoraDepartamental_2.btnAddClick(Sender: TObject);
begin
    if QryBitacora.RecordCount > 0 then
    begin
        btnAdd.Enabled    := False;
        btnEdit.Enabled   := False;
        btnPost.Enabled   := True;
        btnCancel.Enabled := True;
        btnDelete.Enabled := False;

        popAdd.Enabled    := False;
        popEdit.Enabled   := False;
        popPost.Enabled   := True;
        popCancel.Enabled := True;
        popDelete.Enabled := False;

        btnUp.Enabled     := False;
        btnDown.Enabled   := False;
        txtConcepto.Enabled := True;

        //Deahabilitamos los demas botones
        tsNumeroActividad.Enabled := False;
        tdPonderado.Enabled := False;
        tsIdTipoMovimiento.Enabled := False;
        tdCantidad.Enabled := False;
        chkImprime.Enabled := False;
        chkCancelada.Enabled := False;
        tsHoraInicio.ReadOnly := False;
        tsHoraFinal.ReadOnly := False;
        tmDescripcion.ReadOnly := False;

        txtConcepto.Text   := '';
        tmDescripcion.Text := '';

        QryNotasGerencial.Last;
        if QryNotasGerencial.RecordCount > 0 then
        begin
            tsHoraInicio.Text := QryNotasGerencial.FieldValues['sHorafinal'];
            tsHoraFinal.Text  := QryNotasGerencial.FieldValues['sHoraFinal'];
        end
        else
        begin
            tsHoraInicio.Text := '00:00';
            tsHoraFinal.Text  := '00:00';
        end;

        sOpcion := 'Nuevo';

        tsHoraInicio.SetFocus;
    end
    else
       messageDLG('No existen Partidas / Notas Generales Registradas', mtInformation, [mbOk], 0);
end;

procedure TfrmBitacoraDepartamental_2.btnCancelClick(Sender: TObject);
begin
    btnAdd.Enabled    := True;
    btnEdit.Enabled   := True;
    btnPost.Enabled   := False;
    btnCancel.Enabled := False;
    btnDelete.Enabled := True;

    popAdd.Enabled    := True;
    popEdit.Enabled   := True;
    popPost.Enabled   := False;
    popCancel.Enabled := False;
    popDelete.Enabled := True;

    btnUp.Enabled     := True;
    btnDown.Enabled   := True;
    txtConcepto.Enabled := False;

    tsNumeroActividad.Enabled := True;
    tdPonderado.Enabled := True;
    tsIdTipoMovimiento.Enabled := True;
    tdCantidad.Enabled := True;
    chkImprime.Enabled := True;
    chkCancelada.Enabled := True;
    tsHoraInicio.ReadOnly := True;
    tsHoraFinal.ReadOnly := True;
    tmDescripcion.ReadOnly := True;

    GridNotas.Enabled := True;

    sOpcion := '';
end;

procedure TfrmBitacoraDepartamental_2.btnDeleteClick(Sender: TObject);
var
  SavePlace   : TBookmark;
begin

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM bitacoradeactividades WHERE sContrato = :contrato and ' +
      'dIdFecha = :fecha and iIdDiario = :diario');
    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value    := param_Global_Contrato;
    Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
    Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
    Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
    Connection.zCommand.Params.ParamByName('diario').value      := qryNotasGerencial.FieldValues['iIdDiario'];
    connection.zCommand.ExecSQL;

    try
       SavePlace := QryNotasGerencial.GetBookmark ;
       QryNotasGerencial.Refresh;
       QryNotasGerencial.GotoBookmark(SavePlace);
       QryNotasGerencial.FreeBookmark(SavePlace);
    Except
    end;
end;

procedure TfrmBitacoraDepartamental_2.btnDownClick(Sender: TObject);
begin
    OrdenarNotas('Abajo');
end;

procedure TfrmBitacoraDepartamental_2.btnEditClick(Sender: TObject);
begin
    if QryBitacora.RecordCount > 0 then
    begin
        btnAdd.Enabled    := False;
        btnEdit.Enabled   := False;
        btnPost.Enabled   := True;
        btnCancel.Enabled := True;
        btnDelete.Enabled := False;

        popAdd.Enabled    := False;
        popEdit.Enabled   := False;
        popPost.Enabled   := True;
        popCancel.Enabled := True;
        popDelete.Enabled := False;

        btnUp.Enabled     := False;
        btnDown.Enabled   := False;
        txtConcepto.Enabled := True;

        tsNumeroActividad.Enabled := False;
        tdPonderado.Enabled := False;
        tsIdTipoMovimiento.Enabled := False;
        tdCantidad.Enabled := False;
        chkImprime.Enabled := False;
        chkCancelada.Enabled := False;
        tsHoraInicio.ReadOnly := False;
        tsHoraFinal.ReadOnly := False;
        tmDescripcion.ReadOnly := False;
        sOpcion := 'Edit';
    end
    else
       messageDLG('No existen Partidas / Notas Generales Registradas', mtInformation, [mbOk], 0);
end;

procedure TfrmBitacoraDepartamental_2.btnMayusClick(Sender: TObject);
begin
  tmDescripcion.Text := UpperCase(tmDescripcion.Text);
end;

procedure TfrmBitacoraDepartamental_2.btnPostClick(Sender: TObject);
var
   iDiario     : integer;
   lIncorrecto : boolean;
   SavePlace   : TBookmark;
begin
    if tmDescripcion.Text = '' then
    begin
       messageDLG('Debe escribir una descripcion de la nota!', mtInformation, [mbOk], 0);
       exit;
    end;   

    {Validacion de jornada hora > 24:00}
    lIncorrecto := False;
    if (StrToInt(copy(tsHoraInicio.Text, 1, 2)) = 24) and (StrToInt(copy(tsHoraInicio.Text, 4, 5)) > 0) then
      lIncorrecto := True
    else
      if (StrToInt(copy(tsHoraInicio.Text, 1, 2)) > 24) then
        lIncorrecto := True;

    if lIncorrecto then
    begin
      messageDLG('La Hora de Inicio es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
      tsHoraInicio.SetFocus;
      exit;
    end;

    if (StrToInt(copy(tsHoraFinal.Text, 1, 2)) = 24) and (StrToInt(copy(tsHoraFinal.Text, 4, 5)) > 0) then
      lIncorrecto := True
    else
      if (StrToInt(copy(tsHoraFinal.Text, 1, 2)) > 24) then
        lIncorrecto := True;

    if lIncorrecto then
    begin
      messageDLG('La Hora de Final es Mayor a 24:00 Hrs', mtInformation, [mbOk], 0);
      tsHoraFinal.SetFocus;
      exit;
    end;

    //Validaciones de notas dentro del corte del gerencial
    if (tshoraInicio.Text <> '00:00') and (tsHoraFinal.Text <> '00:00') then
    begin
       if tsHoraInicio.Text < tsHoraFinal.Text then       
          if tsHorafinal.Text > QryBitacora.FieldValues['sHoraFinal'] then
             messageDLG('La hora de Termino de la Actividad es mayor a '+ tsHoraFinal.Text , mtWarning, [mbOk], 0);
    end;

   {Continua insercion de datos}
    if (tsHoraInicio.Text = '  :  ') or (tsHoraFinal.Text = '  :  ') then
    begin
        ShowMessage('Los horarios no deben estar vacios!!');
        tsHoraFinal.SetFocus;
    end;

    if sOpcion = 'Nuevo' then
    begin
        if (tsHoraInicio.Text <> '00:00') and (tsHoraFinal.Text <> '00:00') then
        begin
             if(QryNotasGerencial.Locate('sHoraInicio', tsHoraInicio.Text, [loCaseInsensitive]) = True) and
               (QryNotasGerencial.Locate('sHoraFinal', tsHoraFinal.Text, [loCaseInsensitive]) = True) then
             begin
                showmessage('El Horario ya Existe!');
                exit;
             end;
        end;

        MaximoDiario.Active := False;
        MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
        MaximoDiario.Params.ParamByName('Contrato').Value    := param_Global_Contrato;
        MaximoDiario.Params.ParamByName('Fecha').DataType    := ftDate;
        MaximoDiario.Params.ParamByName('Fecha').Value       := tdIdFecha.Date;
        MaximoDiario.Params.ParamByName('Inicio').DataType   := ftInteger;
        MaximoDiario.Params.ParamByName('Inicio').Value      := global_inicio;
        MaximoDiario.Params.ParamByName('Final').DataType    := ftInteger;
        MaximoDiario.Params.ParamByName('Final').Value       := global_final;
        MaximoDiario.Open;
        if MaximoDiario.FieldByName('TotalDiario').IsNull then
          iDiario := global_inicio + 1
        else
          iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sNumeroActividad, ' +
          ' sNumeroOrden, sWbs, sIdTipoMovimiento, sHoraInicio, sHoraFinal, mDescripcion, lImprime, sConceptoGerencial, iIdDiarioNota) ' +
          ' VALUES (:contrato, :fecha, :diario, :turno, :actividad, :orden, :Wbs, :tipo, :inicio, :final, :descripcion, :imprime, :Concepto, :Id)');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := param_Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := iDiario;
        Connection.zCommand.Params.ParamByName('turno').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('turno').value       := global_turno_reporte;
        Connection.zCommand.Params.ParamByName('orden').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('orden').value       := tsNumeroOrden.KeyValue;
        Connection.zCommand.Params.ParamByName('wbs').DataType      := ftString;
        Connection.zCommand.Params.ParamByName('actividad').DataType:= ftString;
        if QryBitacora.FieldValues['sIdTipoMovimiento'] = 'N' then
        begin
            Connection.zCommand.Params.ParamByName('wbs').value      := Null;
            Connection.zCommand.Params.ParamByName('actividad').value:= '';
        end
        else
        begin
            Connection.zCommand.Params.ParamByName('wbs').value      := QryBitacora.FieldValues['sWbs'];
            Connection.zCommand.Params.ParamByName('actividad').value:= QryBitacora.FieldValues['sNumeroActividad'];
        end;
        Connection.zCommand.Params.ParamByName('tipo').DataType     := ftString;
        Connection.zCommand.Params.ParamByName('tipo').value        := 'G';
        Connection.zCommand.Params.ParamByName('inicio').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('inicio').value      := tsHoraInicio.Text;
        Connection.zCommand.Params.ParamByName('final').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('final').value       := tsHoraFinal.Text;
        Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
        Connection.zCommand.Params.ParamByName('descripcion').value    := tmDescripcion.Text;
        Connection.zCommand.Params.ParamByName('Imprime').DataType  := ftString;
        Connection.zCommand.Params.ParamByName('Imprime').value     := 'Si';
        Connection.zCommand.Params.ParamByName('Concepto').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Concepto').value    := txtConcepto.Text;
        Connection.zCommand.Params.ParamByName('Id').DataType       := ftInteger;
        Connection.zCommand.Params.ParamByName('Id').value          := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ExecSQL;

        tsHoraInicio.Text := tsHoraFinal.Text;
        tmDescripcion.Text := '';
    end;

    if sOpcion = 'Edit' then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET sHoraInicio = :inicio, sHoraFinal = :final, mDescripcion = :descripcion, sConceptoGerencial = :Concepto ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := param_Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := qryNotasGerencial.FieldValues['iIdDiario'];
        Connection.zCommand.Params.ParamByName('inicio').DataType   := ftString;
        Connection.zCommand.Params.ParamByName('inicio').value      := tsHoraInicio.Text;
        Connection.zCommand.Params.ParamByName('final').DataType    := ftString;
        Connection.zCommand.Params.ParamByName('final').value       := tsHoraFinal.Text;
        Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
        Connection.zCommand.Params.ParamByName('descripcion').value    := tmDescripcion.Text;
        Connection.zCommand.Params.ParamByName('Concepto').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Concepto').value    := txtConcepto.Text;
        connection.zCommand.ExecSQL;
        sOpcion := '';

        btnCancel.Click;
    end;

    SavePlace := QryNotasGerencial.GetBookmark ;
    QryNotasGerencial.Refresh;
    QryNotasGerencial.GotoBookmark(SavePlace);
    QryNotasGerencial.FreeBookmark(SavePlace);   
    tsHoraInicio.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.btnUpClick(Sender: TObject);
begin
    OrdenarNotas('Arriba');
end;

procedure TfrmBitacoraDepartamental_2.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmBitacoraDepartamental_2.popCancelClick(Sender: TObject);
begin
    btnCancel.Click;
end;

procedure TfrmBitacoraDepartamental_2.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmBitacoraDepartamental_2.ExportaraExcelNotasGerenciales1Click(
  Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
  function GenerarPlantilla: Boolean;
  var
     Resultado: Boolean;
     procedure DatosPlantilla;
       var
          CadFecha, tmpNombre, cadena: string;
          fs: tStream;
          Alto: Extended;
          Ren: integer;
          total, Posicion, numero : integer;
          hora, minutos, sHoraI, sHoraF, sDescripcion : string;
          lHoraOk : boolean;
     begin
          Ren := 2;
          // Realizar los ajustes visuales y de formato de hoja
          Excel.ActiveWindow.Zoom := 100;
          Excel.Columns['A:B'].ColumnWidth := 10.50;
          Excel.Columns['C:C'].ColumnWidth := 120;

          // Colocar los encabezados de la plantilla...
          Hoja.Range['A1:A1'].Select;
          Excel.Selection.Value := 'Hora Inicio';
          FormatoEncabezado;
          Hoja.Range['B1:B1'].Select;
          Excel.Selection.Value := 'Hora Final';
          FormatoEncabezado;
          Hoja.Range['C1:C1'].Select;
          Excel.Selection.Value := 'Descripcion';
          FormatoEncabezado;

          total := tmDescripcion.Lines.Count;            
          while Ren <= total do
          begin
              //Obtenermos la linea
              cadena       := trim(tmDescripcion.Lines.Strings[Ren-2]);
              sDescripcion := cadena;

              sHoraI := '';
              sHoraF := '';
              while cadena <> '' do
              begin
                  Posicion := pos(':',cadena);                    
                  //Verificamos si es un horario correcto..
                  hora    := copy(cadena, Posicion-2, 2);
                  minutos := copy(cadena, Posicion + 1,2);
                  lHoraOk := True;
                  try
                     numero := StrToInt(hora);
                     numero := StrToInt(minutos);
                     if sHoraI = '' then
                        sHoraI := hora +':'+minutos
                     else
                     begin   
                         If sHoraF = '' then   
                            sHoraF := hora +':'+minutos;
                     end;
                  Except
                      lHoraOk := False;
                  end;
                  if Posicion = 0 then
                     cadena := ''
                  else   
                  begin
                      cadena := copy(cadena, Posicion + 3, length(cadena));
                      sDescripcion := trim(cadena);
                      if ((sHoraI <> '') and (sHoraF <> '')) then
                         cadena := '';
                  end;
              end;                 

              //Ahora comenzamos a separ la cadena..   
              if (sHoraI <> '') and (sHoraF <> '') then
              begin
                  Hoja.Cells[Ren, 1].Select;
                  Excel.Selection.Value := sHoraI;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Size := 11;
                  Excel.Selection.Font.Bold := False;                     
                  Excel.Selection.Font.Name := 'Calibri';

                  Hoja.Cells[Ren, 2].Select;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Size := 11;
                  Excel.Selection.Font.Bold := False;
                  Excel.Selection.Value := sHoraF;
              end;

              Hoja.Cells[Ren, 3].Select;
              Excel.Selection.Value := sDescripcion;
              Excel.Selection.Font.Size := 10;
              Excel.Selection.Font.Bold := False;
              Excel.Selection.Font.Name := 'Arial';
              Excel.Selection.HorizontalAlignment := xlLeft;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Inc(Ren);
          end;

          Hoja.Range['A1:C1'].Select;
          // Formato general de encabezado de datos..
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment   := xlCenter;
          Excel.Selection.Interior.ColorIndex := 24;
          Excel.Selection.Interior.Pattern    := xlSolid;
       end;

  begin
      Resultado := True;
      try
        Hoja := Libro.Sheets[1];
        Hoja.Select;
        Hoja.Name := 'NOTAS DE REPORTE DIARIO';
        DatosPlantilla;
      except
        on e: exception do
        begin
          Resultado := False;
          CadError := 'Se ha producido el siguiente error al generar Anexo C:' + #10 + #10 + e.Message;
        end;
      end;

      Result := Resultado;
  end;
begin
    tmDescripcion.Lines.Count;
    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;

    // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

    // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

    // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

    // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
      // Grabar el archivo de excel con el nombre dado
      messageDlg('El Archivo de Excel se Generó Correctamente!', mtConfirmation, [mbOk], 0);

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);
end;

procedure TfrmBitacoraDepartamental_2.popDeleteClick(Sender: TObject);
begin
    btnDelete.Click;
end;

procedure TfrmBitacoraDepartamental_2.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmBitacoraDepartamental_2.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroOrdenExit(Sender: TObject);
var
  ListItem: TListItem;
  qryGrupos: tZReadOnlyQuery;
  qryPuntos: tZReadOnlyQuery;
begin
  frmBarra1.btnCancel.Click;
  if tsNumeroOrden.Text <> '' then
  begin
    qryPuntos := tzReadOnlyQuery.Create(Self);
    qryPuntos.Connection := connection.zConnection;
    qryPuntos.Active := False;
    qryPuntos.SQL.Clear;
    qryPuntos.SQL.Add('select sIsometrico from puntosdeinspeccion where sContrato = :Contrato And sNumeroOrden = :Orden Order By sIsometrico');
    qryPuntos.Params.ParamByName('Contrato').DataType := ftString;
    qryPuntos.Params.ParamByName('Contrato').Value := param_global_contrato;
    qryPuntos.Params.ParamByName('Orden').DataType := ftString;
    qryPuntos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryPuntos.Open;
    qryPuntos.Destroy;

    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);

    // Limpia valores
    tdPonderado.Value := 0;
    tdCantidad.Value := 0;
    tmDescripcion.Text := '';
    tsHoraInicio.Text := '00:00';
    tsHoraFinal.Text := '00:00';

    // Termina Limpia
    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := param_global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    QryPartidasEfectivas.Open;

    QryBitacora.Active := False;
    QryBitacora.Params.ParamByName('contrato').DataType := ftString;
    QryBitacora.Params.ParamByName('contrato').Value := param_global_contrato;
    QryBitacora.Params.ParamByName('convenio').DataType := ftString;
    QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryBitacora.Params.ParamByName('orden').DataType := ftString;
    QryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
    QryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
    QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
    QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
    QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    QryBitacora.Open;

    qryGrupos := tzReadOnlyQuery.Create(Self);
    qryGrupos.Connection := connection.zConnection;
    qryGrupos.Active := False;
    qryGrupos.Params.ParamByName('Contrato').DataType := ftString;
    qryGrupos.Params.ParamByName('Contrato').Value := param_global_contrato;
    qryGrupos.Params.ParamByName('Orden').DataType := ftString;
    qryGrupos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryGrupos.Open;
    Panel_Grupos.Items.Clear;
    if qryGrupos.RecordCount > 0 then
      with Panel_Grupos do
      begin
        qryGrupos.First;
        while not qryGrupos.Eof do
        begin
          ListItem := Items.Add;
          ListItem.Caption := qryGrupos.FieldValues['sGrupo'];
          ListItem.ImageIndex := 0;
          qryGrupos.Next
        end
      end;
    qryGrupos.Destroy;
  end;

  tsNumeroOrden.Color := global_color_salidaERP
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin        
  if Key = #13 then
      tsHoraInicio.SetFocus ;
end;

procedure TfrmBitacoraDepartamental_2.Panel_GruposClick(Sender: TObject);
var
  sHoraInicio, sHoraFinal, sTiempoEfectivo: string;
  iDiario: Integer;
  dAvance, dAvanceAnterior: Double;

  dCantidadGrupo: Double;
  lContinua: Boolean;
  lFiltro: Boolean;
  Consolidado: Boolean;
begin
  lContinua := True;
  if Trim(tsNumeroOrden.Text) <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := param_global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
    begin
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lContinua := False;
      end
    end;
    if (Panel_Grupos.ItemIndex >= 0) and lContinua then
      if Panel_Grupos.Items.Item[Panel_Grupos.ItemIndex].Caption <> '' then
      begin
        try
          dCantidadGrupo := rfnDecimal(InputBox('Inteligent', 'Introduzca el Cantidad de Grupos a Anexar a la QryBitacora?', '0'));
        except
          on e: exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Volumenes de Obra y Notas', 'Al hacer click en el panel lateral', 0);
          end;
        end;
        if dCantidadGrupo > 0 then
        begin
          Connection.qryBusca2.Active := False;
          Connection.qryBusca2.SQL.Clear;
          Connection.qryBusca2.SQL.Add('Select sWbs, sNumeroActividad, dCantidad From actividadesxgrupo Where sContrato = :Contrato And sNumeroOrden = :Orden And sGrupo = :Grupo');
          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
          Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
          Connection.qryBusca2.Params.ParamByName('Grupo').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Grupo').Value := Panel_Grupos.Items.Item[Panel_Grupos.ItemIndex].Caption;
          Connection.qryBusca2.Open;
          if Connection.qryBusca2.RecordCount > 0 then
            if OpcButton <> '' then
              frmBarra1.btnCancel.Click;

          Connection.qryBusca2.First;
          while not Connection.qryBusca2.Eof do
          begin
            dAvance := 0;
            tdCantidad.Value := 0;
            dAvanceAnterior := 0;
            lFiltro := True;
            sTiempoEfectivo := connection.configuracion.FieldValues['sTipoOperacion'];
            sWbsFormulario := Connection.qryBusca2.FieldValues['sWbs'];
            tdCantidad.Value := Connection.qryBusca2.FieldValues['dCantidad'] * dCantidadGrupo;
            sHoraInicio := '00:00';
            sHoraFinal := '00:00';

            lFiltro := fnValidaPartidaAnexo(Connection.qryBusca2.FieldValues['sNumeroActividad']);
            if lFiltro then
              lFiltro := fnValidaPartidaOrden(sWbsFormulario, Connection.qryBusca2.FieldValues['sNumeroActividad']);

            if lFiltro then
            begin
                     // Aqui .. primero busco si existe la partida en el dia ... Orden, Paquete, PArtida, si existe las une ...
              Consolidado := False;
              QryExistePartida.Active := False;
              QryExistePartida.Params.ParamByName('Contrato').DataType := ftString;
              QryExistePartida.Params.ParamByName('Contrato').Value := param_global_contrato;
              QryExistePartida.Params.ParamByName('Fecha').DataType := ftDate;
              QryExistePartida.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              QryExistePartida.Params.ParamByName('Orden').DataType := ftString;
              QryExistePartida.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
              QryExistePartida.Params.ParamByName('Wbs').DataType := ftString;
              QryExistePartida.Params.ParamByName('Wbs').Value := sWbsFormulario;
              QryExistePartida.Params.ParamByName('Actividad').DataType := ftString;
              QryExistePartida.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
              QryExistePartida.Params.ParamByName('Turno').DataType := ftString;
              QryExistePartida.Params.ParamByName('Turno').Value := global_turno_reporte;
              QryExistePartida.Params.ParamByName('Tipo').DataType := ftString;
              QryExistePartida.Params.ParamByName('Tipo').Value := sTiempoEfectivo;
              QryExistePartida.Params.ParamByName('Isometrico').DataType := ftString;
              QryExistePartida.Params.ParamByName('Isometrico').Value := '';
              QryExistePartida.Open;
              if QryExistePartida.RecordCount > 0 then
                if MessageDlg('Se encontro una coincidencia del Paquete-Partida en la bitacora, ¿Desea consolidar el movimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  Consolidado := True
                else
                  Consolidado := False;

              if Consolidado then
              begin
                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                  'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];


                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha = :fecha and sIdTurno < :Turno And ' +
                  'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                dAvance := (100 / dCantidadOrden) * tdCantidad.Value;
                if dAvanceAnterior = 100 then
                  dAvance := QryExistePartida.FieldValues['dAvance']
                else if (dInstaladoOrden1 + tdCantidad.Value) >= dCantidadOrden then
                  dAvance := 100 - dAvanceAnterior
                else
                  dAvance := dAvance + QryExistePartida.FieldValues['dAvance'];

                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dCantidad = :Cantidad, dAvance = :Avance ' +
                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                  Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  Connection.zCommand.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
                  Connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                  Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('Cantidad').value := (tdCantidad.Value + QryExistePartida.FieldValues['dCantidad']);
                  connection.zCommand.ExecSQL;

                  if fnActualizaAcumuladosOrden('', sWbsFormulario, Connection.qryBusca2.FieldValues['sNumeroActividad'],
                    dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                    if fnActualizaAcumuladosContrato('', Connection.qryBusca2.FieldValues['sNumeroActividad'],
                      dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                    else
                      MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + Connection.qryBusca2.FieldValues['sNumeroActividad'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                  else
                    MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);

                except
                  MessageDlg('Ocurrio un error al actualizar la bitacora de actividades, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                end
              end
              else
              begin
                if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
                  global_inicio := global_inicio + 8000;

                MaximoDiario.Active := False;
                MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
                MaximoDiario.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
                MaximoDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                MaximoDiario.Params.ParamByName('Inicio').DataType := ftInteger;
                MaximoDiario.Params.ParamByName('Inicio').Value := global_inicio;
                MaximoDiario.Params.ParamByName('Final').DataType := ftInteger;
                MaximoDiario.Params.ParamByName('Final').Value := global_final;
                MaximoDiario.Open;
                if MaximoDiario.FieldByName('TotalDiario').IsNull then
                  iDiario := global_inicio + 1
                else
                  iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                  'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha = :fecha and sIdTurno <= :Turno And ' +
                  'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := param_Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                dAvance := (100 / dCantidadOrden) * tdCantidad.Value;
                if (dInstaladoOrden + tdCantidad.Value) >= dCantidadOrden then
                  dAvance := 100 - dAvanceAnterior;

                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                    ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad , mDescripcion ) ' +
                    ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :wbs, :actividad, :tipo, :inicio, :final, :avance, :cantidad, :descripcion)');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := param_Global_Contrato;
                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                  Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  Connection.zCommand.Params.ParamByName('diario').value := iDiario;
                  Connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('turno').value := global_turno_reporte;
                  Connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('depto').value := global_depto;
                  Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden.KeyValue;
                  Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('wbs').value := sWbsFormulario;
                  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('actividad').value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                  Connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('tipo').value := sTiempoEfectivo;
                  Connection.zCommand.Params.ParamByName('avance').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('avance').value := dAvance;
                  Connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('cantidad').value := tdCantidad.Value;
                  Connection.zCommand.Params.ParamByName('inicio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('inicio').value := sHoraInicio;
                  Connection.zCommand.Params.ParamByName('final').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('final').value := sHoraFinal;
                  Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                  Connection.zCommand.Params.ParamByName('descripcion').value := sDescripcion;
                  connection.zCommand.ExecSQL;

                  if fnActualizaAcumuladosOrden('', sWbsFormulario, Connection.qryBusca2.FieldValues['sNumeroActividad'],
                    dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                    if fnActualizaAcumuladosContrato('', Connection.qryBusca2.FieldValues['sNumeroActividad'],
                      dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                    else
                      MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + Connection.qryBusca2.FieldValues['sNumeroActividad'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                  else
                    MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                except
                  MessageDlg('Ocurrio un error al actualizar la bitacora de actividades, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                end

              end
            end;
            Connection.qryBusca2.Next
          end;
            // Termime de Actualizar
          QryBitacora.Active := False;
          QryBitacora.Open;

          Insertar1.Enabled := True;
          Editar1.Enabled := True;
          Registrar1.Enabled := False;
          Can1.Enabled := False;
          Eliminar1.Enabled := True;
          Refresh1.Enabled := True;
          ActividadesIguales.Active := False;
          Grid_Bitacora.SetFocus
          // Termino de meter el grupo ...
        end
      end;
  end
end;

procedure TfrmBitacoraDepartamental_2.tdIdFechaEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tdIdFecha.Color := global_color_entradaERP;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroOrdenEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tsNumeroOrden.Color := global_color_entradaERP;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadEnter(
  Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entradaERP;
  tsNumeroActividad_ADM.KeyValue := Null;
  tsNumeroActividad_PU.KeyValue  := Null;
  tsNumeroActividad_PU.Color  := global_color_pantalla;
  tsNumeroActividad_ADM.Color := global_color_pantalla;
  imgNotas.Visible := False;
end;

procedure TfrmBitacoraDepartamental_2.tsHoraFinalEnter(Sender: TObject);
begin
  tsHoraFinal.Color := global_color_entradaERP
end;

procedure TfrmBitacoraDepartamental_2.tsHoraFinalExit(Sender: TObject);
begin
     tsHoraFinal.Color := global_color_salidaERP;

     if (tsHoraInicio.Text <> '00:00') or (tsHoraFinal.Text <> '00:00') then
     begin
         txtConcepto.Text := '';
         txtConcepto.Enabled := False;
     end;

     if (tsHoraInicio.Text = '00:00') and (tsHoraFinal.Text = '00:00') then
        if trim(txtConcepto.Text) = '' then
        begin
            txtConcepto.Enabled := True;
            txtConcepto.Text    := 'NOTA:';
        end;
end;

procedure TfrmBitacoraDepartamental_2.tsHoraFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if tdCantidad.Enabled then
      tdCantidad.SetFocus
    else
      tmDescripcion.SetFocus

end;

procedure TfrmBitacoraDepartamental_2.tsHoraInicioEnter(Sender: TObject);
begin
  tsHoraInicio.Color := global_color_entradaERP
end;

procedure TfrmBitacoraDepartamental_2.tsHoraInicioExit(Sender: TObject);
begin
     tsHoraInicio.Color := global_color_salidaERP;

     if (tsHoraInicio.Text <> '00:00') or (tsHoraFinal.Text <> '00:00') then
     begin
         txtConcepto.Text := '';
         txtConcepto.Enabled := False;
     end;

     if (tsHoraInicio.Text = '00:00') and (tsHoraFinal.Text = '00:00') then
        if trim(txtConcepto.Text) = '' then
        begin
            txtConcepto.Enabled := True;
            txtConcepto.Text    := 'NOTA:';
        end;
end;

procedure TfrmBitacoraDepartamental_2.tsHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsHoraFinal.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.tsIdTipoMovimientoEnter(
  Sender: TObject);
begin
  tsIdTipoMovimiento.Color := global_color_entradaERP
end;

procedure TfrmBitacoraDepartamental_2.tsIdTipoMovimientoExit(
  Sender: TObject);
begin
  if tiposdemovimiento.FieldValues['sIdTipoMovimiento'] = 'N' then
    tmNotas.Enabled := False;

  if tiposdemovimiento.FieldValues['sIdTipoMovimiento'] = 'R' then
  begin
     // PanelVisita.Visible  := True;
    label4.Visible := False;
    tsHoraInicio.Visible := False;
    label5.Caption := 'Tiempo Total';
  end
  else
  begin
  //    PanelVisita.Visible := False;
    label4.Visible := True;
    tsHoraInicio.Visible := True;
    label5.Caption := 'Hora de Termino';
  end;

  tsIdTipoMovimiento.Color := global_color_salidaERP;
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadChange(Sender: TObject);
begin
  //TRxCalcEditChangef(tdCantidad, 'Cantidad');
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaERP;
    if (tsNumeroActividad_PU.KeyValue <> Null) and (tsNumeroActividad_ADM.KeyValue = Null) then
        tsNumeroActividad_ADM.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salidaERP
end;

procedure TfrmBitacoraDepartamental_2.tmDescripcionDblClick(Sender: TObject);
begin
  if global_Editor <> 'Nuevo' then
  begin
    sTituloVentana := ' DESCRIPCION PARTIDA / NOTAS GENERALES';
    frmEditorBitacoraDepartamental.ShowModal;
  end;
end;

procedure TfrmBitacoraDepartamental_2.tmNotasDblClick(Sender: TObject);
begin
  if global_Editor <> 'Nuevo' then
  begin
    sTituloVentana := ' NOTAS / COMENTARIOS POR PARTIDA';
    frmEditorBitacoraDepartamental.ShowModal;
  end;
end;

procedure TfrmBitacoraDepartamental_2.tmNotasEnter(Sender: TObject);
begin
  tmNotas.Color := global_color_entradaERP;
end;

procedure TfrmBitacoraDepartamental_2.tmNotasExit(Sender: TObject);
begin
  tmNotas.Color := global_color_salidaERP;
end;

procedure TfrmBitacoraDepartamental_2.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;


procedure TfrmBitacoraDepartamental_2.grid_igualesDblClick(Sender: TObject);
begin
  //**************************BRITO 30/05/11********************************
  if pdPaquete.Left = 0 then
  begin
    pdPaquete.Left := 352;
    pdPaquete.Width := 522;
    pdPaquete.Height := 126;
    grid_iguales.Height := 105;
    grid_iguales.Enabled := false;
  end;
  //**************************BRITO 30/05/11********************************
end;

procedure TfrmBitacoraDepartamental_2.grid_igualesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dCantidad').AsFloat = (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dInstalado').AsFloat then
    Background := clGradientInactiveCaption
end;


procedure TfrmBitacoraDepartamental_2.grid_igualesTitleClick(Column: TColumn);
begin
  UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraDepartamental_2.popPostClick(Sender: TObject);
begin
    btnPost.Click;
end;

procedure TfrmBitacoraDepartamental_2.TiposdeMovimientoAfterScroll(
  DataSet: TDataSet);
begin
  if TiposdeMovimiento.FieldValues['sClasificacion'] <> 'Tiempo en Operacion' then
  begin
    pdPaquete.Caption := '< < No aplica seleccion de paquetes > >';
    pdPaquete.Hint := '< < No aplica seleccion de paquetes > >';
    tsNumeroActividad.Color := global_color_pantalla;
    tdCantidad.Color := global_color_pantalla;
    tsNumeroActividad.KeyValue := '';
    tsNumeroActividad.Enabled := False;
    tmDescripcion.Text := '';
    tsHoraInicio.Text := '00:00';
    tsHoraFinal.Text := '00:00';
    ActividadesIguales.Active := False;
    tdCantidad.Enabled := False;
  end
  else
  begin
    pdPaquete.Caption := '< < Seleccione un Paquete > >';
    pdPaquete.Hint := '< < Seleccione un Paquete > >';
    tsNumeroActividad.Color := global_color_text;
    tdCantidad.Color := global_color_text;
    tsNumeroActividad.Enabled := True;
    tdCantidad.Enabled := True;
  end;
end;

procedure TfrmBitacoraDepartamental_2.ComentariosAdicionalesClick(
  Sender: TObject);
begin
  global_partida := QryBitacora.FieldValues['sNumeroActividad']; ;
  if (IntToStr(global_iIdDiario) <> '') and (global_partida <> '') then
  begin
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show;
  end
  else
    ShowMessage('No ha seleccionado alguna actividad !');
end;

procedure TfrmBitacoraDepartamental_2.MayusClick(
  Sender: TObject);
begin
  tmDescripcion.Text := UpperCase(tmDescripcion.Text);
  self.Editar1.Click;
end;

procedure TfrmBitacoraDepartamental_2.MinusClick(
  Sender: TObject);
begin
  tmDescripcion.Text := LowerCase(tmDescripcion.Text);
  self.Editar1.Click;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadChange(
  Sender: TObject);
begin
  global_partida := tsNumeroActividad.Text; 
end;

procedure TfrmBitacoraDepartamental_2.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmBitacoraDepartamental_2.ActividadesIgualesAfterScroll(
  DataSet: TDataSet);
begin
  if ActividadesIguales.State <> dsInactive then
  begin
    if ActividadesIguales.Active and (ActividadesIguales.RecordCount > 0) then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sWbsAnterior from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad ="Paquete" ');
      connection.QryBusca.ParamByName('Contrato').AsString := param_global_contrato;
      connection.QryBusca.ParamByName('Convenio').AsString := convenio_reporte;
      connection.QryBusca.ParamByName('Orden').AsString := tsNumeroOrden.Text;
      connection.QryBusca.ParamByName('Wbs').AsString := ActividadesIguales.FieldValues['sWbsAnterior'];
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sNumeroActividad, mDescripcion from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad ="Paquete" ');
        connection.QryBusca2.ParamByName('Contrato').AsString := param_global_contrato;
        connection.QryBusca2.ParamByName('Convenio').AsString := convenio_reporte;
        connection.QryBusca2.ParamByName('Orden').AsString := tsNumeroOrden.Text;
        connection.QryBusca2.ParamByName('Wbs').AsString := connection.QryBusca.FieldValues['sWbsAnterior'];
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
          mObra.Text := connection.QryBusca2.FieldValues['sNumeroActividad'] + ' .- ' + connection.QryBusca2.FieldValues['mDescripcion']
        else
          mObra.Text := 'Paquete Principal';
      end
      else
        mObra.Text := '';
    end
    else
      mObra.Text := '';

    if tsNumeroActividad.ReadOnly = False then
      if ActividadesIguales.RecordCount > 0 then
      begin
        if (strPos(pchar('ACTIVIDAD'), pchar(ActividadesIguales.FieldByName('sMedida').AsString)) <> nil) then
           LabelCantidad.Caption := '% Avance'
        else
           LabelCantidad.Caption := 'Cantidad a Instalar';

        tmDescripcion.Text := ActividadesIguales.FieldValues['mDescripcion'];
        Grid_Iguales.Hint := ActividadesIguales.FieldValues['mDescripcion'];
        Paquete.Active := False;
        Paquete.Params.ParamByName('contrato').DataType := ftString;
        Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
        Paquete.Params.ParamByName('Convenio').DataType := ftString;
        Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
        Paquete.Params.ParamByName('orden').DataType := ftString;
        Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
        Paquete.Params.ParamByName('wbs').DataType := ftString;
        Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'];
        Paquete.Open;

        if Paquete.RecordCount > 0 then
        begin
          pdPaquete.Caption := Paquete.FieldValues['sNumeroActividad'] + ' .- ' + Paquete.FieldValues['mDescripcion'];
          pdPaquete.Hint := Paquete.FieldValues['sNumeroActividad'] + ' .- ' + Paquete.FieldValues['mDescripcion']
        end
        else
        begin
          pdPaquete.Caption := '< < Seleccione un Paquete > >';
          pdPaquete.Hint := '< < Seleccione un Paquete > >'
        end;
        tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];
      end;
  end
  else
    mObra.Text := '';
end;

procedure TfrmBitacoraDepartamental_2.mnFichaTecnicaClick(Sender: TObject);
begin
  try
    //Traemos las descripciones y descripciones de contrato de acuerdo al parametro..
    ActualizaConfiguraciones(param_global_contrato);
    if tsNumeroActividad.Text <> '' then
      procFichaTecnica(param_global_contrato, convenio_reporte, tsNumeroActividad.Text, frmBitacoraDepartamental_2, connection.configuracion.fieldbyname('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e: exception do
    begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar el registro', 0);
        //Regresamos las descripciones y descripciones de contrato de acuerdo al parametro..
        ActualizaConfiguraciones(global_contrato);
    end;
  end;
  //Regresamos las descripciones y descripciones de contrato de acuerdo al parametro..
  ActualizaConfiguraciones(global_contrato);
end;

procedure TfrmBitacoraDepartamental_2.QryBitacoraCalcFields(
  DataSet: TDataSet);
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
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al cambiar de registro', 0);
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.qryNotasGerencialAfterScroll(
  DataSet: TDataSet);
begin
     if qryNotasGerencial.RecordCount > 0 then
     begin
         if (sOpcion = '') and (lMostrarNotas) then
         begin
             tsHoraInicio.Text  := QryNOtasGerencial.FieldValues['sHoraInicio'];
             tsHoraFinal.Text   := QryNOtasGerencial.FieldValues['sHoraFinal'];
             tmDescripcion.Text := QryNOtasGerencial.FieldValues['mDescripcion'];
             txtConcepto.Text   := QryNOtasGerencial.FieldValues['sConceptoGerencial'];
             tmDescripcion.Color := $00FFC54A ;
         end;
     end;
end;

procedure TfrmBitacoraDepartamental_2.QryBitacoraAfterScroll(
  DataSet: TDataSet);
var
   sCondicion, sNumeroActividad : string;
begin
  imgNotas.Visible := False;
  mObra.Text := '';

  if QryBitacora.RecordCount > 0 then
  begin
     //Colores Descripcion
     if (QryBitacora.FieldValues['sHoraInicio'] <> '00:00') then
         tmDescripcion.Color := $00ADE86C ;

     if (QryBitacora.FieldValues['sIdTipoMovimiento'] = 'N') then
         tmDescripcion.Color := $00E6FEFF ;

    {Activar o no check box..}
    if QryBitacora.FieldValues['lImprime'] = 'Si' then
    begin
        chkImprime.Checked := True;
        chkImprime.Font.Color := clBlack;
        chkImprime.Font.Style := [];
    end
    else
    begin
        chkImprime.Checked := False;
        chkImprime.Font.Color := clRed;
        chkImprime.Font.Style := [fsBold];
    end;

    if QryBitacora.FieldValues['lCancelada'] = 'Si' then
      chkCancelada.Checked := True
    else
      chkCancelada.Checked := False;

    // tsPuntosInspeccion.ItemIndex := tsPuntosInspeccion.Items.IndexOf(QryBitacora.fieldByName('sIsometrico').AsString);
    tsIdTipoMovimiento.KeyValue    := QryBitacora.FieldValues['sIdTipoMovimiento'];
    tsNumeroActividad.KeyValue     := QryBitacora.FieldValues['sNumeroActividad'];
    tsNumeroActividad_ADM.KeyValue := QryBitacora.FieldValues['sNumeroActividad_ADM'];
    tsNumeroActividad_PU.KeyValue  := QryBitacora.FieldValues['sNumeroActividad'];

    if tsNumeroActividad.KeyValue <> Null then
    begin
       sNumeroActividad        := tsNumeroActividad.Text;
       tsNumeroActividad_PU.Color  := global_color_pantalla;
       tsNumeroActividad_ADM.Color := global_color_pantalla;
       tsNumeroActividad.Color     := global_color_salidaERP;
    end
    else
    begin
        sNumeroActividad := tsNumeroActividad_PU.Text;
        tsNumeroActividad_PU.Color  := global_color_salidaERP;
        tsNumeroActividad_ADM.Color := global_color_salidaERP;
        tsNumeroActividad.Color     := global_color_pantalla;
    end;

    tmNotas.Text := QryBitacora.FieldValues['mNotas'];
    tmDescripcion.Text := QryBitacora.FieldValues['mDescripcion'];

    rxAvances.Active := True;
    rxAvances.EmptyTable;

    tdCantidad.Text := FormatFLoat('0.00000', QryBitacora.FieldValues['dCantidad']);
    tsHoraInicio.Text := QryBitacora.FieldValues['sHoraInicio'];
    tsHoraFinal.Text := QryBitacora.FieldValues['sHoraFinal'];

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType  := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value     := param_global_contrato;
    Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('actividad').Value    := sNumeroActividad;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      imgNotas.Visible := True;

    ActividadesIguales.Active := False;
    ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
    ActividadesIguales.Params.ParamByName('contrato').Value := param_global_contrato;
    ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
    ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
    ActividadesIguales.Params.ParamByName('orden').DataType := ftString;
    ActividadesIguales.Params.ParamByName('orden').Value    := tsNumeroOrden.KeyValue;
    ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
    ActividadesIguales.Params.ParamByName('actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
    ActividadesIguales.ParamByName('turno').AsString := global_turno_reporte;
    ActividadesIguales.ParamByName('fecha').AsDate := tdIdFecha.Date;
    ActividadesIguales.Open;
    ActividadesIguales.Locate('sWbs', QryBitacora.FieldValues['sWbs'], [loPartialKey]);
    Grid_Iguales.Enabled := False;
    if ActividadesIguales.RecordCount > 0 then
      tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado']
    else
      tdPonderado.Value := 0;

    Paquete.Active := False;
    Paquete.Params.ParamByName('contrato').DataType := ftString;
    Paquete.Params.ParamByName('contrato').Value := param_global_contrato;
    Paquete.Params.ParamByName('Convenio').DataType := ftString;
    Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
    Paquete.Params.ParamByName('orden').DataType := ftString;
    Paquete.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    Paquete.Params.ParamByName('wbs').DataType := ftString;
    Paquete.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbsAnterior'];
    Paquete.Open;

    if Paquete.RecordCount > 0 then
    begin
      pdPaquete.Caption := Paquete.FieldValues['sNumeroActividad'] + ' .- ' + Paquete.FieldValues['mDescripcion'];
      pdPaquete.Hint := Paquete.FieldValues['sNumeroActividad'] + ' .- ' + Paquete.FieldValues['mDescripcion'];
    end
    else
    begin
      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';
    end;

    if QryBitacora.FieldValues['sIdTipoMovimiento'] <> 'N' then
       sCondicion := ' and sWbs =:Wbs '
    else
       sCondicion := '';

    QryNotasGerencial.Active := false;
    QryNotasGerencial.SQL.Clear;
    QryNotasGerencial.SQL.Add('select iIdDiario, mDescripcion, sHoraInicio, sHoraFinal, sConceptoGerencial, '+
                              'concat(sHoraInicio," - ",sHoraFinal) as Nota, lImprime '+
                              'from bitacoradeactividades where sContrato =:Contrato '+
                              'and dIdFecha =:Fecha and iIdDiarioNota =:Id '+sCondicion+' and sIdTipoMovimiento = "G"');
    QryNotasGerencial.ParamByName('Contrato').AsString := param_global_Contrato;
    QryNotasGerencial.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
    QryNotasGerencial.ParamByName('Id').AsInteger      := QryBitacora.FieldValues['iIdDiario'];
    if (QryBitacora.FieldValues['sIdTipoMovimiento'] <> 'N') and (QryBitacora.FieldValues['sIdTipoMovimiento'] <> 'B') then
       QryNotasGerencial.ParamByName('Wbs').AsString   := QryBitacora.FieldValues['sWbs'];
    QryNotasGerencial.Open;

    if QryNotasGerencial.RecordCount > 0 then
    begin
        btnAdd.Enabled    := True;
        btnEdit.Enabled   := True;
        btnPost.Enabled   := False;
        btnCancel.Enabled := False;
        btnDelete.Enabled := True;
        btnUp.Enabled     := True;
        btnDown.Enabled   := True;

        GridNotas.Enabled := True;
        GridNotas.Color     := clGradientActiveCaption;
    end
    else
    begin
        btnAdd.Enabled    := True;
        btnEdit.Enabled   := True;
        btnPost.Enabled   := False;
        btnCancel.Enabled := False;
        btnDelete.Enabled := True;
        btnUp.Enabled     := False;
        btnDown.Enabled   := False;

        GridNotas.Enabled := False;
        GridNotas.Color   := clGradientActiveCaption;
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnPrinterClick(
  Sender: TObject);
begin
  try
    //Traemos las descripciones y descripciones de contrato de acuerdo al parametro..
    ActualizaConfiguraciones(param_global_contrato);
    procAnalisisFinanciero(param_global_contrato, tsNumeroOrden.Text, convenio_reporte, tdIdFecha.Date, tdIdFecha.Date, frmBitacoraDepartamental_2, rDiario.OnGETValue, connection.configuracion.fieldbyname('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  except
    on e: exception do
    begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar la bitacora de actividades', 0);
        //Regresamos las descripciones y descripciones de contrato de acuerdo al parametro..
        ActualizaConfiguraciones(global_contrato);
    end;
  end;
  //Regresamos las descripciones y descripciones de contrato de acuerdo al parametro..
  ActualizaConfiguraciones(global_contrato);
end;

procedure TfrmBitacoraDepartamental_2.rDiarioGetValue(
  const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'ORDEN') = 0 then
    Value := 'DE LA ORDEN DE TRABAJO ' + tsNumeroOrden.Text;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
    Value := tdIdFecha.Date;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := tdIdFecha.Date;

  if CompareText(VarName, 'SEMANA') = 0 then
    Value := WeekOfTheMonth(tdIdFecha.Date);

  if CompareText(VarName, 'DIAS_SEMANA') = 0 then
    Value := '1';

  if CompareText(VarName, 'MONEDA') = 0 then
    Value := 'M.N.';
end;



procedure TfrmBitacoraDepartamental_2.mnEliminaNotaClick(Sender: TObject);
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
      tmDescripcion.Text := '';
end;

procedure TfrmBitacoraDepartamental_2.mnInsertaNotaClick(Sender: TObject);
var
   sNumeroActividad : string;
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
      if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Tiempo en Operacion' then
      begin
         if tsNumeroActividad.KeyValue <> Null then
            sNumeroActividad := tsNumeroActividad.Text
         else
            sNumeroActividad := tsNumeroActividad_PU.Text;
            
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select mDescripcion from actividadesxanexo where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
          'sNumeroActividad = :Actividad');
        connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
        connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Convenio').Value := convenio_reporte;
        connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Actividad').Value := sNumeroActividad;
        connection.QryBusca2.Open;
        if connection.QryBusca2.RecordCount > 0 then
          sDescripcion := connection.QryBusca2.FieldValues['mDescripcion'];

        tmDescripcion.Text := tmDescripcion.Text + sDescripcion;
        tmDescripcion.SelStart := length(tmDescripcion.Text)
      end;
end;

procedure TfrmBitacoraDepartamental_2.mnNotaAntClick(Sender: TObject);
var
   sNumeroActividad : string;
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
    begin
        if tsNumeroActividad.KeyValue <> Null then
           sNumeroActividad := tsNumeroActividad.Text
        else
           sNumeroActividad := tsNumeroActividad_PU.Text;

        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select mDescripcion from bitacoradeactividades where sContrato = :Contrato and dIdFecha < :fecha And ' +
          'sNumeroOrden = :Orden and sWbs = :wbs and sNumeroActividad = :Actividad Order By dIdFecha desc');
        connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
        connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
        connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
        connection.QryBusca2.Params.ParamByName('wbs').DataType := ftString;
        if ActividadesIguales.State <> dsInactive then
          connection.QryBusca2.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs']
        else
          connection.QryBusca2.Params.ParamByName('wbs').Value := '';
        connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Actividad').Value := sNumeroActividad;
        connection.QryBusca2.Open;
        if connection.QryBusca2.RecordCount > 0 then
        begin
          tmDescripcion.Text := '';
          sDescripcion := connection.QryBusca2.FieldValues['mDescripcion'];
        end;
        tmDescripcion.Text := tmDescripcion.Text + sDescripcion;
        tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;
end;

procedure TfrmBitacoraDepartamental_2.popAddClick(Sender: TObject);
begin
    btnAdd.Click;
end;

procedure TfrmBitacoraDepartamental_2.mnAlbumClick(Sender: TObject);
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
    begin
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select r.iImagen, r.sDescripcion from reportediario rf inner join reportefotografico r on ' +
        '(rf.sContrato = r.sContrato and rf.sNumeroReporte = r.sNumeroReporte) ' +
        'Where rf.sContrato = :Contrato and rf.dIdFecha = :fecha And rf.sNumeroOrden = :Orden and rf.sIdTurno = :turno');
      connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Contrato').Value := param_global_contrato;
      connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      connection.QryBusca2.Params.ParamByName('Turno').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca2.Open;
      while not connection.QryBusca2.Eof do
      begin
        tmDescripcion.Lines.Add('');
        tmDescripcion.Lines.Add('Fotografia # ' + connection.QryBusca2.fieldByName('iImagen').asString + '.');
        tmDescripcion.Lines.Add(connection.QryBusca2.FieldValues['sDescripcion']);
        connection.QryBusca2.Next
      end;
      tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;
end;

procedure Tfrmbitacoradepartamental_2.CopiaMemo(Sender: TObject);
begin
  tmDescripcion.Text := (Sender as tMemo).Text;
end;

procedure Tfrmbitacoradepartamental_2.CopiaMemo2(Sender: TObject);
begin
  tmNotas.Text := (Sender as tMemo).Text;
end;


procedure TfrmBitacoraDepartamental_2.CosolidarNotasGerenciales1Click(
  Sender: TObject);
var
   sConcepto   : string;
   Diario      : integer;
   Wbs         : string;
   sComentario, sHoraInicio, sHoraFinal : string;
begin
    if QryBitacora.RecordCount > 0 then
    begin
        sHoraInicio := '';
        sHoraFinal  := '';

        //Se Toma la primera nota o comentario del Reporte Diario
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select min(iIdDiario) as iIdDiario, mDescripcion '+
                                    'from bitacoradeactividades where sContrato =:Contrato '+
                                    'and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTipoMovimiento = "N" group by sContrato ');
        connection.zCommand.ParamByName('Contrato').AsString := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
        connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
            Diario      := connection.zCommand.FieldValues['iIdDiario'];
            sComentario := connection.zCommand.FieldValues['mDescripcion'];
        end
        else
        begin
            messageDLG('No se puede Continuar, No se encontro una Nota General del Reporte Diario.', mtWarning, [mbOk], 0);
            exit;
        end;

        //Consultamos la fecha de inicio del dia anterior del Gerencial que continua al siguiente dia...
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select sHoraInicio, sHoraFinal from bitacoradeactividades where sContrato =:Contrato '+
                                    'and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTipoMovimiento <> "G" and sHoraInicio > sHoraFinal group by sHoraInicio order by sHoraInicio DESC ');
        connection.zCommand.ParamByName('Contrato').AsString := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date - 1;
        connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
        begin
            sHoraInicio := connection.zCommand.FieldValues['sHoraInicio'];
            sHoraFinal  := connection.zCommand.FieldValues['sHoraFinal'];
        end;

        //Tomamos los horarios maximos y minimos del reporte
        if sHoraInicio = '' then
        begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('select MIN(sHoraInicio) as sHoraInicio from bitacoradeactividades where sContrato =:Contrato ' +
                                        'and dIdFecha =:fecha and sNumeroOrden =:orden and sIdTipoMovimiento <> "G" group by sContrato');
            connection.zCommand.ParamByName('Contrato').AsString := param_global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
            connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
            connection.zCommand.Open;

            if connection.zCommand.RecordCount > 0 then
               sHoraFinal  := connection.zCommand.FieldValues['sHoraInicio'];
        end;

        //Consolidar las notas del gerencial a las notas del reporte diario
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select b.sWbs, b.sNumeroActividad, b.sHoraInicio, b.sHoraFinal, b.sConceptoGerencial, b.mDescripcion '+
                                    'from bitacoradeactividades b '+
                                    'left join actividadesxorden o on (o.sContrato = b.sContrato and o.sIdConvenio =:Convenio '+
                                    'and o.sNumeroOrden = b.sNumeroOrden and o.sWbs = b.sWbs and o.sTipoActividad = "Actividad") '+
                                    'where b.sContrato =:Contrato and b.dIdFecha >=:fechaI and b.dIdFecha <=:fechaF and b.sNumeroOrden =:Orden and b.sIdTipoMovimiento <> "G" group by b.sWbs order by o.iItemOrden, b.iIdDiario');
        connection.zCommand.ParamByName('Contrato').AsString := param_global_contrato;
        connection.zCommand.ParamByName('FechaI').AsDate     := tdIdFecha.Date - 1;
        connection.zCommand.ParamByName('FechaF').AsDate     := tdIdFecha.Date;
        connection.zCommand.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
        connection.zCommand.ParamByName('Convenio').AsString := convenio_reporte;
        connection.zCommand.Open;

        sConcepto := 'iv@n';
        Wbs       := 'iv@n';
        tmDescripcion.Text := sComentario;
        tmDescripcion.Lines.Add(#13);
        while not connection.zCommand.Eof do
        begin
            if sConcepto <> connection.zCommand.FieldValues['sConceptoGerencial'] then
            begin
               sConcepto := connection.zCommand.FieldValues['sConceptoGerencial'];
            end;

            if Wbs <> connection.zCommand.FieldValues['sWbs'] then
            begin
                if connection.zCommand.FieldValues['sWbs'] <> Null then
                begin
                    tmDescripcion.Lines.Add('PARTIDA '+ connection.zCommand.FieldValues['sNumeroActividad']);
                    Wbs := connection.zCommand.FieldValues['sWbs'];

                    //Consolidamos movimientos anteriores del dia anterior..
                    if sHoraInicio <> '' then
                    begin
                        connection.QryBusca2.Active := False;
                        connection.QryBusca2.SQL.Clear;
                        connection.QryBusca2.SQL.Add('select b.sWbs, b.sNumeroActividad, b.sHoraInicio, b.sHoraFinal, b.sConceptoGerencial, b.mDescripcion '+
                                                    'from bitacoradeactividades b '+
                                                    'where b.sContrato =:Contrato and b.dIdFecha =:fecha and b.sNumeroOrden =:Orden and b.sWbs =:Wbs ' +
                                                    'and b.sHoraFinal > "00:00" and b.sHoraFinal <=:Final and b.sIdTipoMovimiento = "G" order by b.sHoraInicio');
                        connection.QryBusca2.ParamByName('Contrato').AsString := param_global_contrato;
                        connection.QryBusca2.ParamByName('Fecha').AsDate      := tdIdFecha.Date - 1;
                        connection.QryBusca2.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
                        connection.QryBusca2.ParamByName('Wbs').AsString      := Wbs;
                        connection.QryBusca2.ParamByName('Final').AsString    := sHoraFinal;
                        connection.QryBusca2.Open;

                        while not connection.QryBusca2.Eof do
                        begin
                            if connection.QryBusca2.FieldValues['sHoraInicio'] > sHoraFinal then
                                tmDescripcion.Lines.Add( '00:00'+ ' - ' +
                                      connection.QryBusca2.FieldValues['sHoraFinal'] + '  '+connection.QryBusca2.FieldValues['mDescripcion'])
                            else
                                tmDescripcion.Lines.Add(connection.QryBusca2.FieldValues['sHoraInicio']+ ' - ' +
                                      connection.QryBusca2.FieldValues['sHoraFinal'] + '  '+connection.QryBusca2.FieldValues['mDescripcion']);
                            tmDescripcion.Lines.Add('');
                            connection.QryBusca2.Next;
                        end;
                    end;

                    //Consolidamos movimientos actuales
                    connection.QryBusca2.Active := False;
                    connection.QryBusca2.SQL.Clear;
                    connection.QryBusca2.SQL.Add('select b.sWbs, b.sNumeroActividad, b.sHoraInicio, b.sHoraFinal, b.sConceptoGerencial, b.mDescripcion '+
                                                'from bitacoradeactividades b '+
                                                'where b.sContrato =:Contrato and b.dIdFecha =:fecha and b.sNumeroOrden =:Orden and b.sWbs =:Wbs ' +
                                                'and b.sHoraInicio >=:Inicio and b.sHoraInicio < "24:00" and b.sIdTipoMovimiento = "G" order by b.sHoraInicio');
                    connection.QryBusca2.ParamByName('Contrato').AsString := param_global_contrato;
                    connection.QryBusca2.ParamByName('Fecha').AsDate      := tdIdFecha.Date ;
                    connection.QryBusca2.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
                    connection.QryBusca2.ParamByName('Wbs').AsString      := Wbs;
                    connection.QryBusca2.ParamByName('Inicio').AsString   := sHoraFinal;
                    connection.QryBusca2.Open;

                    while not connection.QryBusca2.Eof do
                    begin
                        if (connection.QryBusca2.FieldValues['sHoraFinal'] > '00:00') and (connection.QryBusca2.FieldValues['sHoraFinal'] <= sHoraFinal) then
                            tmDescripcion.Lines.Add(connection.QryBusca2.FieldValues['sHoraInicio']+ ' - ' +
                                   '24:00' + '  '+connection.QryBusca2.FieldValues['mDescripcion'])
                        else
                            tmDescripcion.Lines.Add(connection.QryBusca2.FieldValues['sHoraInicio']+ ' - ' +
                                   connection.QryBusca2.FieldValues['sHoraFinal'] + '  '+connection.QryBusca2.FieldValues['mDescripcion']);
                        tmDescripcion.Lines.Add('');
                        connection.QryBusca2.Next;
                    end;
                end;
            end;
            connection.zCommand.Next;
        end;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update bitacoradeactividades set mDescripcion =:Descripcion '+
                                    'where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Id ');
        connection.zCommand.ParamByName('Contrato').AsString  := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').AsDate       := tdIdFecha.Date;
        connection.zCommand.ParamByName('Descripcion').AsMemo := tmDescripcion.Text;
        connection.zCommand.ParamByName('Id').AsInteger       := Diario;
        connection.zCommand.ExecSQL;

        QryBitacora.Refresh;
        messageDLG('Proceso Terminado con Exito!', mtInformation, [mbOk], 0);
    end;
end;

procedure TfrmBitacoraDepartamental_2.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    lMostrarNotas := False;
    //Colores Descripcion
    if (QryBitacora.FieldValues['sHoraInicio'] <> '00:00') then
        tmDescripcion.Color := $00ADE86C ;                                                                           

    if (QryBitacora.FieldValues['sIdTipoMovimiento'] = 'N') then
        tmDescripcion.Color := $00E6FEFF ;
end;

procedure TfrmBitacoraDepartamental_2.cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  var x: integer;
begin
//   if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
 //    if QryBitacora.RecordCount > 0 then
 //    begin
 //      AFont.Color := clBlack;
 //      if i > 1 then
  //     begin
  //       for x := 1 to i - 1 do
   //      begin
   //        if ListaPEQ[x] = QryBitacora.FieldValues['iIdDiario'] then
   //        begin
 //         Afont.Style := [fsBold];
   //          Afont.Size := 8;
   //          AFont.Color := clBlue;
   //        end;
   //      end;
    //   end;

     //  if (QryBitacora.FieldValues['sHoraInicio'] <> '00:00') then
     //     Background := $00BDED89 ;
    //
    //   if (QryBitacora.FieldValues['sIdTipoMovimiento'] = 'N') and (QryBitacora.FieldValues['sHoraInicio'] <> '00:00') then
    //      Background :=  clBtnFace;

   //    if (QryBitacora.FieldValues['sIdTipoMovimiento'] = 'N') and (QryBitacora.FieldValues['sHoraInicio'] = '00:00') then
   //       Background := $00E6FEFF ;
   //  end;
end;

{_______________________________________________________________________________
 FUNCION PARA ACTUALIZAR EL ID DIARIO DE PERSONAL, EQUIPO Y PERNOCTA CARGADO A LA PARTIDA
--------------------------------------------------------------------------------}

procedure Tfrmbitacoradepartamental_2.ActualizaIdDiario(dParamContrato: string; dParamFecha: TDate; dParamIdDiario, dParamIdDiarioOld: Integer);
var
  Q_BuscaId: TZReadOnlyQuery;
begin
  Q_BuscaId := TZReadOnlyQuery.Create(self);
  Q_BuscaId.Connection := connection.zConnection;

    {Actualiza IdDiario Bitacora de Personal}
  Q_BuscaId.Active := False;
  Q_BuscaId.SQL.Clear;
  Q_BuscaId.SQL.Add('Update bitacoradepersonal set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
  Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaId.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaId.ParamByName('Id').AsInteger := dParamIdDiario;
  Q_BuscaId.ParamByName('IdOld').AsInteger := dParamIdDiarioOld;
  Q_BuscaId.ExecSQL;

    {Actualiza IdDiario Bitacora de Personal}
  Q_BuscaId.Active := False;
  Q_BuscaId.SQL.Clear;
  Q_BuscaId.SQL.Add('Update bitacoradeequipos set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
  Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaId.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaId.ParamByName('Id').AsInteger := dParamIdDiario;
  Q_BuscaId.ParamByName('IdOld').AsInteger := dParamIdDiarioOld;
  Q_BuscaId.ExecSQL;

    {Actualiza IdDiario Bitacora de Materiales}
  Q_BuscaId.Active := False;
  Q_BuscaId.SQL.Clear;
  Q_BuscaId.SQL.Add('Update bitacorademateriales set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
  Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaId.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaId.ParamByName('Id').AsInteger := dParamIdDiario;
  Q_BuscaId.ParamByName('IdOld').AsInteger := dParamIdDiarioOld;
  Q_BuscaId.ExecSQL;

     {Actualiza IdDiario Bitacora de Pernocta auxiliar..}
  Q_BuscaId.Active := False;
  Q_BuscaId.SQL.Clear;
  Q_BuscaId.SQL.Add('Update bitacoradepernocta_aux set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
  Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaId.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaId.ParamByName('Id').AsInteger := dParamIdDiario;
  Q_BuscaId.ParamByName('IdOld').AsInteger := dParamIdDiarioOld;
  Q_BuscaId.ExecSQL;       

   {Actualiza IdDiario Bitacora de Movimeinto de Gerencial..}
  Q_BuscaId.Active := False;
  Q_BuscaId.SQL.Clear;
  Q_BuscaId.SQL.Add('Update bitacoradeactividades set iIdDiarioNota =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiarioNota =:IdOld');
  Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaId.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaId.ParamByName('Id').AsInteger := dParamIdDiario;
  Q_BuscaId.ParamByName('IdOld').AsInteger := dParamIdDiarioOld;
  Q_BuscaId.ExecSQL;
end;

procedure Tfrmbitacoradepartamental_2.OrdenarNotas(sParamOrden: string);
var
   idAuxiliar, idAuxiliar2 : integer;
   SavePlace   : TBookmark;
begin
    if qryNotasGerencial.RecordCount > 0 then
    begin
        if sParamOrden = 'Arriba' then
        begin
            idAuxiliar2 := QryNotasGerencial.FieldValues['iIdDiario'];
            QryNotasGerencial.Prior;

            idAuxiliar  := QryNotasGerencial.FieldValues['iIdDiario'];
            QryNotasGerencial.Next;
        end;

        if sParamOrden = 'Abajo' then
        begin
            idAuxiliar2 := QryNotasGerencial.FieldValues['iIdDiario'];
            QryNotasGerencial.Next;

            idAuxiliar  := QryNotasGerencial.FieldValues['iIdDiario'];
            QryNotasGerencial.Prior;
        end;
        //Colocamos un id mayor para evitar duplicidad..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET iIdDiario = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := param_Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar2;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar + 500;
        connection.zCommand.ExecSQL;

        //Ahora actualizamos el item mayor
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET iIdDiario = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := param_Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar ;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar2;
        connection.zCommand.ExecSQL;

         //Ahora actualizamos el item alterado
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET iIdDiario = :DiarioNuevo ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario ');
        Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        Connection.zCommand.Params.ParamByName('contrato').value    := param_Global_Contrato;
        Connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        Connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        Connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value      := idAuxiliar + 500;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value    := idAuxiliar;
        connection.zCommand.ExecSQL;

        if sParamOrden = 'Arriba' then
           QryNotasGerencial.Prior
        else
           QryNotasGerencial.Next;

        SavePlace := QryNotasGerencial.GetBookmark;
        QryNotasGerencial.Refresh;
        QryNotasGerencial.GotoBookmark(SavePlace);
        QryNotasGerencial.FreeBookmark(SavePlace);
    end;
end;


procedure TfrmBitacoradepartamental_2.ActualizaImprime;
var
    zQryActualiza : tzReadOnlyQuery;
begin
    zQryActualiza := tzReadOnlyQuery.Create(self);
    zQryActualiza.Connection := connection.zConnection;

    zQryActualiza.Active := False;
    zQryActualiza.SQL.Clear;
    zQryActualiza.SQL.Add('UPDATE bitacoradeactividades SET lImprime =:Imprime ' +
                      ' where sContrato =:contrato And dIdFecha = :fecha and sIdTurno =:Turno And sWbs =:Wbs and sIdTipoMovimiento = "G" ');
    zQryActualiza.Params.ParamByName('contrato').DataType := ftString;
    zQryActualiza.Params.ParamByName('contrato').value    := param_Global_Contrato;
    zQryActualiza.Params.ParamByName('fecha').DataType    := ftDate;
    zQryActualiza.Params.ParamByName('fecha').value       := tdIdFecha.Date;
    zQryActualiza.Params.ParamByName('Turno').DataType    := ftString;
    zQryActualiza.Params.ParamByName('Turno').value       := QryBitacora.FieldValues['sIdTurno'];
    zQryActualiza.Params.ParamByName('Wbs').DataType      := ftString;
    zQryActualiza.Params.ParamByName('Wbs').value         := QryBitacora.FieldValues['sWbs'];
    zQryActualiza.Params.ParamByName('Imprime').DataType  := ftString;
    if chkImprime.Checked then
       zQryActualiza.Params.ParamByName('Imprime').value  := 'Si'
    else
       zQryActualiza.Params.ParamByName('Imprime').value  := 'No';
    zQryActualiza.ExecSQL;

    zQryActualiza.Destroy;
end;

procedure TfrmBitacoradepartamental_2.formatoEncabezado;
begin
    Excel.Selection.MergeCells := False;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment   := xlCenter;
    Excel.Selection.Font.Size := 10;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Color:= clNavy;
    Excel.Selection.Font.Name := 'Arial';
end;



end.

