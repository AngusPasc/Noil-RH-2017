unit frm_RecepciondeMateriales;

interface

uses
  Windows, Messages, Math, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet,  RXDBCtrl,  RxLookup, DateUtils,unitactivapop,
  RXCtrls, CheckLst, ToolWin, RxMemDS, ExcelXP, OleServer, Newpanel,
  Excel2000, zDataset, ZAbstractRODataset, ZAbstractDataset, rxCurrEdit,
  rxToolEdit, RxRichEd, rxDBRichEd, NxCollection, AdvGlowButton, udbgrid,
  unitexcepciones, unittbotonespermisos,UnitValidaTexto, UFunctionsGHH,
  UnitValidacion, JvExStdCtrls, JvDBCombobox, JvExControls, JvDBLookup,
  FormAutoScaler, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxButtons,masUtilerias;

type
  TfrmRecepcionDeMateriales = class(TForm)
    ds_anexo_requisicion: TDataSource;
    ds_anexo_prequisicion: TDataSource;
    frxDBReporte: TfrxDBDataset;
    GroupBox3: TGroupBox;
    frmBarra2: TfrmBarra;
    OpenXLS: TOpenDialog;
    anexo_prequisicion: TZQuery;
    anexo_requisicion: TZQuery;
    Reporte: TZReadOnlyQuery;
    Maxfolio: TZQuery;
    ReportedAcumulado: TFloatField;
    ReportesContrato: TStringField;
    ReporteiFolioRequisicion: TIntegerField;
    ReportesNumeroOrden: TStringField;
    ReportedIdFecha: TDateField;
    ReportesReferencia: TStringField;
    ReportemComentarios: TMemoField;
    ReporteiItem: TIntegerField;
    ReportedCantidad: TFloatField;
    ReportemDescripcion: TMemoField;
    ReportesMedida: TStringField;
    ReportedFechaRequerimiento: TDateField;
    dtsPartidas: TDataSource;
    Partidas: TZReadOnlyQuery;
    PgControl: TPageControl;
    TabSheet1: TTabSheet;
    pgPartidas: TTabSheet;
    tsPlataforma: TLabel;
    imgNotas: TImage;
    frmBarra1: TfrmBarra;
    consumibles: TZReadOnlyQuery;
    dtConsumibles: TDataSource;
    anexo_prequisicionsContrato: TStringField;
    anexo_prequisicioniFolioRequisicion: TIntegerField;
    anexo_prequisicionsIdInsumo: TStringField;
    anexo_prequisicioniItem: TIntegerField;
    anexo_prequisicionmDescripcion: TMemoField;
    anexo_prequisicionsMedida: TStringField;
    anexo_prequisiciondFechaRequerimiento: TDateField;
    anexo_prequisiciondCantidad: TFloatField;
    anexo_prequisiciondCosto: TFloatField;
    anexo_prequisicionsNumeroActividad: TStringField;
    anexo_prequisicionsNumeroOrden: TStringField;
    anexo_prequisicionsMedidaAnexo: TStringField;
    anexo_prequisiciondCantidad_1: TFloatField;
    anexo_prequisicionsDescripcion: TStringField;
    anexo_prequisiciondMontoMN: TFloatField;
    ReportesNumeroActividad: TStringField;
    ReportedCosto: TFloatField;
    frxEntrada: TfrxReport;
    ReportedCostoMN: TFloatField;
    consumiblessDescripcion: TStringField;
    consumiblessIdInsumo: TStringField;
    consumiblesmDescripcion: TMemoField;
    consumiblesdCantidad: TFloatField;
    consumiblessMedida: TStringField;
    consumiblesdCostoMN: TFloatField;
    consumiblesdExistencia: TFloatField;
    Departamentos: TZReadOnlyQuery;
    ds_departamentos: TDataSource;
    NxHeaderPanel1: TNxHeaderPanel;
    Label7: TLabel;
    NxHeaderPanel2: TNxHeaderPanel;
    tsNumeroActividad: TLabel;
    rxSeguimiento_Mat: TRxMemoryData;
    rxSeguimiento_MatsContrato: TStringField;
    rxSeguimiento_MatsNumeroActividad: TStringField;
    rxSeguimiento_MatDescripcionAnexo: TStringField;
    rxSeguimiento_MatCantidadAnexo: TFloatField;
    rxSeguimiento_MatMedidaAnexo: TStringField;
    rxSeguimiento_MatCostoMNAnexo: TFloatField;
    rxSeguimiento_MatCostoDLLAnexo: TFloatField;
    rxSeguimiento_MatTipo: TStringField;
    rxSeguimiento_MatId: TStringField;
    rxSeguimiento_MatDescripcion: TStringField;
    rxSeguimiento_MatUnidad: TStringField;
    rxSeguimiento_MatCantidad: TFloatField;
    rxSeguimiento_MatCostoMN: TFloatField;
    rxSeguimiento_MatCostoDLL: TFloatField;
    frxSeguimiento_Mat: TfrxDBDataset;
    rxSeguimiento_MatdCantidadReq: TFloatField;
    rxSeguimiento_MatFolioReq: TIntegerField;
    rxSeguimiento_MatItemReq: TIntegerField;
    rxSeguimiento_MatPartida: TStringField;
    rxSeguimiento_MatdRestanteReq: TFloatField;
    rxSeguimiento_MatdExcedenteReq: TFloatField;
    rxSeguimiento_MatdPorcentajeReq: TFloatField;
    rxSeguimiento_MatFolioOC: TIntegerField;
    rxSeguimiento_MatItemOC: TIntegerField;
    rxSeguimiento_MatdCantidadOC: TFloatField;
    rxSeguimiento_MatdRestanteOC: TFloatField;
    rxSeguimiento_MatdExcedenteOC: TFloatField;
    rxSeguimiento_MatdPorcentajeOC: TFloatField;
    rxSeguimiento_MatFolioIn: TIntegerField;
    rxSeguimiento_MatItemIn: TIntegerField;
    rxSeguimiento_MatdCantidadIn: TFloatField;
    rxSeguimiento_MatdRestanteIn: TFloatField;
    rxSeguimiento_MatdExcedenteIn: TFloatField;
    rxSeguimiento_MatdPorcentajeIn: TFloatField;
    rxSeguimiento_MatFolioOut: TIntegerField;
    rxSeguimiento_MatItemOut: TIntegerField;
    rxSeguimiento_MatdCantidadOut: TFloatField;
    rxSeguimiento_MatdRestanteOut: TFloatField;
    rxSeguimiento_MatdExcedenteOut: TFloatField;
    rxSeguimiento_MatdPorcentajeOut: TFloatField;
    rxSeguimiento_MatdCantidadRD: TFloatField;
    rxSeguimiento_MatdRestanteRD: TFloatField;
    rxSeguimiento_MatdExcedenteRD: TFloatField;
    rxSeguimiento_MatdPorcentajeRD: TFloatField;
    rxSeguimiento_MatNumeroReporte: TStringField;
    rxSeguimiento_MatFechaRD: TDateField;
    rxSeguimiento_MatFrenteRD: TStringField;
    rxSeguimiento_MatiNumeroEstimacion: TIntegerField;
    rxSeguimiento_MatsNumeroOrden: TStringField;
    rxSeguimiento_MatsNumeroGenerador: TStringField;
    rxSeguimiento_MatdCantidadGen: TFloatField;
    rxSeguimiento_MatdExcedenteGen: TFloatField;
    rxSeguimiento_MatdRestanteGen: TFloatField;
    rxSeguimiento_MatdPorcentajeGen: TFloatField;
    rxSeguimiento_MatdPorcentajeReq_T: TFloatField;
    rxSeguimiento_MatdPorcentajeOC_T: TFloatField;
    rxSeguimiento_MatdPorcentajeRD_T: TFloatField;
    rxSeguimiento_Mat3: TRxMemoryData;
    StringField7: TStringField;
    FloatField4: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    frxSeguimiento_Mat2: TfrxDBDataset;
    rxSeguimiento_Mat2: TRxMemoryData;
    StringField20: TStringField;
    FloatField37: TFloatField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    frxSeguimiento_Mat3: TfrxDBDataset;
    rxSeguimiento_Mat4: TRxMemoryData;
    StringField8: TStringField;
    FloatField5: TFloatField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    frxSeguimiento_Mat4: TfrxDBDataset;
    rxSeguimiento_Mat5: TRxMemoryData;
    StringField22: TStringField;
    FloatField43: TFloatField;
    DateField2: TDateField;
    StringField26: TStringField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    frxSeguimiento_Mat5: TfrxDBDataset;
    rxSeguimiento_Mat6: TRxMemoryData;
    StringField35: TStringField;
    FloatField81: TFloatField;
    IntegerField31: TIntegerField;
    StringField40: TStringField;
    StringField41: TStringField;
    FloatField107: TFloatField;
    FloatField108: TFloatField;
    FloatField109: TFloatField;
    FloatField110: TFloatField;
    frxSeguimiento_Mat6: TfrxDBDataset;
    rxSeguimiento_Mat6CantidadAnexo: TFloatField;
    GroupBox1: TGroupBox;
    frmBarra3: TfrmBarra;
    RxDBGrid1: TRxDBGrid;
    frxSeguimiento_Mat1: TfrxDBDataset;
    rxSeguimiento_Mat1: TRxMemoryData;
    StringField9: TStringField;
    FloatField6: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    rxSeguimiento_Mat1dCantidadReq_T: TFloatField;
    rxSeguimiento_Mat1dRestanteReq_T: TFloatField;
    rxSeguimiento_Mat1dExcedenteReq_T: TFloatField;
    rxSeguimiento_Mat1Unidad: TStringField;
    rxSeguimiento_Mat2dCantidadOC_T: TFloatField;
    rxSeguimiento_Mat2dRestanteOC_T: TFloatField;
    rxSeguimiento_Mat2dExcedenteOC_T: TFloatField;
    rxSeguimiento_Mat3dCantidadIn_T: TFloatField;
    rxSeguimiento_Mat3dExcedenteIn_T: TFloatField;
    rxSeguimiento_Mat4dCantidadOut_T: TFloatField;
    rxSeguimiento_Mat4dExcedenteOut_T: TFloatField;
    rxSeguimiento_Mat5dCantidadRD_T: TFloatField;
    rxSeguimiento_Mat5dRestanteRD_T: TFloatField;
    rxSeguimiento_Mat5dExcedenteRD_T: TFloatField;
    QPernoctan: TZQuery;
    DsPernoctan: TDataSource;
    ReportedFechaSolicitado: TDateField;
    ReportedFechaRequerido: TDateField;
    ReportesRequisita: TStringField;
    ReportesRevision: TStringField;
    ReportesSolicito: TStringField;
    ReportesStatus: TStringField;
    ReportesAutorizo: TStringField;
    ReportesVerificacion: TStringField;
    ReportesRecibido: TStringField;
    ReportesidDepartamento: TStringField;
    ReportesMotivo: TStringField;
    ReportesEstado: TStringField;
    ReportesLugarEntrega: TStringField;
    ReporteiItemOrden: TStringField;
    Reporteesi: TStringField;
    Reporteeno: TStringField;
    Reportedepartamento: TStringField;
    Reportelugarentrega: TStringField;
    Reportedestino: TStringField;
    consumiblesdStockMax: TFloatField;
    consumiblesdStockMin: TFloatField;
    anexo_prequisiciondExistencia: TFloatField;
    ReportesIdInsumo: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnAlmacenes: TBitBtn;
    DBMemo1: TDBMemo;
    zq_recepciondemateriales: TZQuery;
    ds_recepciondemateriales: TDataSource;
    zq_recepciondematerialesiId: TIntegerField;
    zq_recepciondematerialessContrato: TStringField;
    zq_recepciondematerialessTipoMovimiento: TStringField;
    zq_recepciondematerialesdFechaRecepcion: TDateField;
    zq_recepciondematerialessIdAlmacen: TStringField;
    zq_recepciondematerialesmNotas: TMemoField;
    zq_recepciondematerialessFolio: TStringField;
    zq_almacenes: TZQuery;
    ds_almacenes: TDataSource;
    zq_insumos: TZQuery;
    ds_insumos: TDataSource;
    zq_detallesderecepcion: TZQuery;
    ds_detallesderecepcion: TDataSource;
    zq_detallesderecepcioniId: TIntegerField;
    zq_detallesderecepcioniId_recepcion: TIntegerField;
    zq_detallesderecepcionsIdInsumo: TStringField;
    zq_detallesderecepciondCantidad: TFloatField;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    zq_detallesderecepcionsDescInsumo: TStringField;
    zq_detallesderecepcionsMedida: TStringField;
    zq_recepciondematerialessStatus: TStringField;
    zq_recepciondematerialesQuienValida: TStringField;
    frx_Recepciondemateriales: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    Frx_DetallesDeRecepcion: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    zq_recepciondematerialessNombreAlmacen: TStringField;
    zq_detallesderecepciondCantidadAnterior: TFloatField;
    zq_detallesderecepciondCantidadTotal: TFloatField;
    ExcelApplication1: TExcelApplication;
    ExcelWorkbook1: TExcelWorkbook;
    ExcelWorksheet1: TExcelWorksheet;
    FormAutoScaler1: TFormAutoScaler;
    Grid_Entradas: TcxGrid;
    Grid_EntradasDBTableView1: TcxGridDBTableView;
    Grid_EntradasDBTableView1Column1: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column2: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column3: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column4: TcxGridDBColumn;
    Grid_EntradasDBTableView1Column5: TcxGridDBColumn;
    Grid_EntradasLevel1: TcxGridLevel;
    Panel1: TPanel;
    dbMatPart: TcxGrid;
    dbMatPartView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnPost: TcxButton;
    btnCancel: TcxButton;
    tdCantidad: TRxCalcEdit;
    Label14: TLabel;
    GridPartidas: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure frmBarra3btnExitClick(Sender: TObject);
    procedure frmBarra3btnPostClick(Sender: TObject);
    procedure frmBarra3btnAddClick(Sender: TObject);
    procedure frmBarra3btnEditClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure pgPartidasShow(Sender: TObject);
    procedure zq_recepciondematerialesAfterScroll(DataSet: TDataSet);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure PgControlChange(Sender: TObject);
    procedure btnAlmacenesClick(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecepcionDeMateriales: TfrmRecepcionDeMateriales;
  sDescripcion    : String ;
  txtAux          : String ;
  lNuevo          : Boolean ;
  OpcButton1      : String ;
  Valida          : boolean;
  TipoExplosion   : string;
  NoLimpiar       : Boolean;

  sSuperintendente, sSupervisor              : String ;
  sPuestoSuperintendente, sPuestoSupervisor  : String ;
  sSupervisorTierra, sPuestoSupervisorTierra : String ;
  sBackup    : String ;
  MontoTotal : Currency ;
  lExiste    : boolean;
  xxxxxxxxxxx: Integer;

  //utgrid:ticdbgrid;
  //utgrid2:ticdbgrid;
  //utgrid3:ticdbgrid;
  botonpermiso:tbotonespermisos;
implementation

uses frm_connection ,
     frm_comentariosxanexo,
     frm_Consumibles,
     frm_ordenes,
     frm_pernoctan,
     frm_deptos,
     Func_Genericas,
     frm_Almacenes;

{$R *.dfm}

procedure filtra;
begin
  //
end;

procedure TfrmRecepcionDeMateriales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  botonpermiso.Free;

  //utgrid.Destroy;
  //utgrid2.Destroy;
  //utgrid3.Destroy;
  action := cafree ;
end;


procedure TfrmRecepcionDeMateriales.FormShow(Sender: TObject);
begin
    sMenuP:=stMenu;
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'CapturadeRecepcindeMateriales1', PopupPrincipal);
    //UtGrid:=TicdbGrid.create(grid_entradas);
    //UtGrid2:=TicdbGrid.create(dbmatpart);
    //UtGrid3:=TicdbGrid.create(gridpartidas);
    frmBarra2.btnAdd.Enabled     := true;
    frmBarra2.btnEdit.Enabled    := true;
    frmBarra2.btnDelete.Enabled  := true;
    frmBarra2.btnPrinter.Enabled := true;
    ZQuery1.Active := False;
    ZQuery1.Params.ParamByName('sContrato').AsString := Global_Contrato;
    ZQuery1.Open;
    zq_almacenes.Active := False;
    zq_almacenes.Params.ParamByName('Usuario').AsString := Global_Usuario;
    zq_almacenes.Open;
    zq_recepciondemateriales.Params.ParamByName('sContrato').AsString := Global_Contrato;
    zq_recepciondemateriales.Open;
    if zq_recepciondemateriales.RecordCount > 0 then begin
      zq_insumos.Params.ParamByName('sContrato').AsString := Global_Contrato;
      zq_insumos.Params.ParamByName('Almacen').AsString := zq_recepciondemateriales.FieldByName('sIdAlmacen').AsString;
      zq_insumos.Open;
    end;
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmRecepcionDeMateriales.BtnExitClick(Sender: TObject);
begin
    Close ;
end;

procedure TfrmRecepcionDeMateriales.frmBarra1btnAddClick(Sender: TObject);
begin
  if zq_recepciondemateriales.FieldByName('sStatus').AsString = 'PENDIENTE' then begin
    Try
      Insertar1.Enabled := False ;
      Editar1.Enabled   := False ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled  := False ;
      frmBarra1.btnAddClick(Sender);
      tdCantidad.ReadOnly := False ;
      tdCantidad.Value    := 0;
      Crear_Form(Panel1, 'Catalogo de Materiales', 255, 710, []);
    Except
      On E: Exception do begin
        ShowMessage(E.Message);
      end;
    End;
  end else begin
    ShowMessage('No se puede modificar una recepción si esta ya está Validada o Autorizada');
  end;
end;

procedure TfrmRecepcionDeMateriales.frmBarra1btnPostClick(Sender: TObject);
var
  Pos:TBookmark;
  Qtty: Double;
  total : double;
begin
  if tdCantidad.Value > 0 then begin
    Try
      Pos:=zq_detallesderecepcion.GetBookmark;
      zq_detallesderecepcion.DisableControls;

      if not zq_detallesderecepcion.Locate('sIdInsumo',zq_insumos.FieldByName('sIdInsumo').AsString,[]) then
      begin
        zq_detallesderecepcion.Append;
        zq_detallesderecepcion.FieldByName('iId_Recepcion').AsInteger := zq_recepciondemateriales.FieldByName('iId').AsInteger;
        zq_detallesderecepcion.FieldByName('sIdInsumo').AsString := zq_insumos.FieldByName('sIdInsumo').AsString;
        zq_detallesderecepcion.FieldByName('dCantidadAnterior').AsFloat := zq_insumos.FieldByName('dExistencia').AsFloat;
        zq_detallesderecepcion.FieldByName('dCantidad').AsFloat := tdCantidad.Value;
        total := (zq_insumos.FieldByName('dExistencia').AsFloat + tdCantidad.Value);
        zq_detallesderecepcion.FieldByName('dCantidadTotal').AsFloat := total;
        zq_detallesderecepcion.Post;
        zq_detallesderecepcion.EnableControls;
      end
      else begin
        if MessageDlg('Ese Material ya se encuentra cargado, desea Sumar la Cantidad Actual con la Nueva?',mtConfirmation,[mbYes,mbNo],0)=mrYes  then
        begin
          Qtty := zq_detallesderecepcion.FieldByName('dCantidad').AsFloat;
          zq_detallesderecepcion.Edit;
          zq_detallesderecepcion.FieldByName('dCantidad').AsFloat := tdCantidad.Value + zq_detallesderecepcion.FieldByName('dCantidad').AsFloat;
          total := (zq_insumos.FieldByName('dExistencia').AsFloat + tdCantidad.Value);
          zq_detallesderecepcion.FieldByName('dCantidadTotal').AsFloat := total;
          zq_detallesderecepcion.Post;
          zq_detallesderecepcion.EnableControls;
        end
        else
        begin
         zq_detallesderecepcion.EnableControls;
         Exit;
        end;
      end;
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('UPDATE insumos SET dExistencia = ' + FloatToStr(total) + ' WHERE sContrato = :Contrato and sIdInsumo = :Insumo and sIdAlmacen = :Almacen ;');
      connection.QryBusca.Params.ParamByName('Contrato').AsString := zq_insumos.FieldByName('sContrato').AsString;
      connection.QryBusca.Params.ParamByName('Insumo').AsString   := zq_insumos.FieldByName('sIdInsumo').AsString;
      connection.QryBusca.Params.ParamByName('Almacen').AsString  := zq_insumos.FieldByName('sIdAlmacen').AsString;
      connection.QryBusca.ExecSQL;
      zq_insumos.Refresh;
    Except
      On E: Exception do
      begin
        ShowMessage(E.Message);
      end;
    End;
    //tdCantidad.ReadOnly := True ;
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    frmBarra1.btnPostClick(Sender);
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
  end;
end;



procedure TfrmRecepcionDeMateriales.frmBarra1btnCancelClick(Sender: TObject);
begin
  Insertar1.Enabled := True ;
  Editar1.Enabled     := True ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  tdCantidad.ReadOnly := True;
  tsNumeroActividad.Caption := '';
  frmBarra1.btnCancelClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmRecepcionDeMateriales.frmBarra1btnDeleteClick(Sender: TObject);
var
  total, anterior, cantidad : double;
  qry : TZQuery;
begin
  if zq_recepciondemateriales.FieldByName('sStatus').AsString = 'PENDIENTE' then begin
    if MessageDlg('¿Estas Seguro de Eliminar el Material?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      Try
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('SELECT dExistencia FROM insumos WHERE sContrato = :Contrato AND sIdInsumo = :Insumo AND sIdAlmacen = :Almacen ;');
        connection.QryBusca2.Params.ParamByName('Contrato').AsString := zq_recepciondemateriales.FieldByName('sContrato').AsString;
        connection.QryBusca2.Params.ParamByName('Insumo').AsString   := zq_detallesderecepcion.FieldByName('sIdInsumo').AsString;
        connection.QryBusca2.Params.ParamByName('Almacen').AsString  := zq_recepciondemateriales.FieldByName('sIdAlmacen').AsString;
        connection.QryBusca2.Open;
        if connection.QryBusca2.RecordCount > 0 then begin
          total := (connection.QryBusca2.FieldByName('dExistencia').AsFloat - zq_detallesderecepcion.FieldByName('dCantidad').AsFloat);

          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('UPDATE insumos SET dExistencia = ' + FloatToStr(total) + ' WHERE sContrato = :Contrato and sIdInsumo = :Insumo and sIdAlmacen = :Almacen ;');
          connection.QryBusca.Params.ParamByName('Contrato').AsString := zq_recepciondemateriales.FieldByName('sContrato').AsString;
          connection.QryBusca.Params.ParamByName('Insumo').AsString   := zq_detallesderecepcion.FieldByName('sIdInsumo').AsString;
          connection.QryBusca.Params.ParamByName('Almacen').AsString  := zq_recepciondemateriales.FieldByName('sIdAlmacen').AsString;
          connection.QryBusca.ExecSQL;

          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('SELECT a.*');
          connection.QryBusca.SQL.Add('FROM alm_recepciondemateriales_detalle AS a');
          connection.QryBusca.SQL.Add('INNER JOIN alm_recepciondemateriales AS b on (a.iId_recepcion = b.iId)');
          connection.QryBusca.SQL.Add('WHERE a.sIdInsumo = :Insumo');
          connection.QryBusca.SQL.Add('AND b.sContrato = :Contrato');
          connection.QryBusca.SQL.Add('AND b.sIdAlmacen = :Almacen');
          connection.QryBusca.SQL.Add('AND a.iId > :Id');
          connection.QryBusca.SQL.Add('ORDER BY a.iId ASC;');
          connection.QryBusca.Params.ParamByName('Contrato').AsString := zq_recepciondemateriales.FieldByName('sContrato').AsString;
          connection.QryBusca.Params.ParamByName('Insumo').AsString   := zq_detallesderecepcion.FieldByName('sIdInsumo').AsString;
          connection.QryBusca.Params.ParamByName('Almacen').AsString  := zq_recepciondemateriales.FieldByName('sIdAlmacen').AsString;
          connection.QryBusca.Params.ParamByName('Id').AsString := zq_detallesderecepcion.FieldByName('iId').AsString;
          connection.QryBusca.Open;
          connection.QryBusca.First;
          anterior := zq_detallesderecepcion.FieldByName('dCantidadAnterior').AsFloat;
          cantidad   := zq_detallesderecepcion.FieldByName('dCantidad').AsFloat;
          qry := TZQuery.Create(self);
          qry.Connection := Connection.zConnection;
          while not connection.QryBusca.Eof do begin
            qry.Active := False;
            qry.SQL.Clear;
            qry.SQL.Add('UPDATE alm_recepciondemateriales_detalle');
            qry.SQL.Add('SET dCantidadAnterior = :Anterior, dCantidadTotal = :Actual');
            qry.SQL.Add('WHERE iId = :Id');
            qry.Params.ParamByName('Anterior').AsFloat := anterior;
            qry.Params.ParamByName('Actual').AsFloat   := (anterior + connection.QryBusca.FieldByName('dCantidad').AsFloat);
            qry.Params.ParamByName('Id').AsInteger     := connection.QryBusca.FieldByName('iId').AsInteger;
            qry.ExecSQL;
            anterior := (anterior + connection.QryBusca.FieldByName('dCantidad').AsFloat);
            cantidad := connection.QryBusca.FieldByName('dCantidad').AsFloat;
            connection.QryBusca.Next;
          end;

          zq_detallesderecepcion.Delete;
          zq_insumos.Refresh;
        end
        else begin
          MessageDlg('No existe el Material!!!'+#10+'Comunicarlo al Adminsitrador del Sistema.',mtError,[mbYes],0);
          exit;
        end;
      Except
        On E: Exception do begin
          ShowMessage(E.Message);
        end;
      End;
    end;
  end
  else begin
    ShowMessage('No se puede Modificar una Recepción si ésta ya está Validada o Autorizada');
  end;               
end;

procedure TfrmRecepcionDeMateriales.frmBarra1btnExitClick(Sender: TObject);
begin
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  frmBarra1.btnExitClick(Sender);
end;

procedure TfrmRecepcionDeMateriales.Insertar1Click(Sender: TObject);
begin
if grid_entradas.Focused then
   frmBarra2.btnAdd.Click;
if gridpartidas.Focused then
   frmBarra1.btnAdd.Click;
end;

procedure TfrmRecepcionDeMateriales.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmRecepcionDeMateriales.PgControlChange(Sender: TObject);
begin
  if PgControl.ActivePageIndex=1 then
  begin
    zq_insumos.active:=false;
    zq_insumos.Params.ParamByName('sContrato').AsString := Global_Contrato;
    zq_insumos.Params.ParamByName('Almacen').AsString := zq_recepciondemateriales.FieldByName('sIdAlmacen').AsString;
    zq_insumos.Open;

  end;
end;

procedure TfrmRecepcionDeMateriales.pgPartidasShow(Sender: TObject);
begin
  ZQuery1.Active := False;
  ZQuery1.Params.ParamByName('sContrato').AsString := Global_Contrato;
  ZQuery1.Open;
  zq_detallesderecepcion.Active := False;
  zq_detallesderecepcion.Params.ParamByName('idRecepcion').AsInteger := zq_RecepciondeMateriales.FieldByName('iId').AsInteger;
  zq_detallesderecepcion.Open;
end;

procedure TfrmRecepcionDeMateriales.Edit1Change(Sender: TObject);
begin
  if (TEdit(Sender).Text <> '') AND (TEdit(Sender).Text <> 'Filtrar...') then begin
    zq_Insumos.Filter := 'sidinsumo like ''*'+TEdit(Sender).Text+'*'' or mDescripcion LIKE ''*' + TEdit(Sender).Text + '*'' ';
    zq_Insumos.Filtered := True;
  end else begin
    zq_Insumos.Filtered := False;
    if Not NoLimpiar then begin
      NoLimpiar := False;
      TEdit(Sender).Text := 'Filtrar...';
    end;
  end;
end;

procedure TfrmRecepcionDeMateriales.Edit1Enter(Sender: TObject);
begin
  if TEdit(Sender).Text = 'Filtrar...' then begin
    NoLimpiar := True;
    TEdit(Sender).Text := '';
  end;  
end;

procedure TfrmRecepcionDeMateriales.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure TfrmRecepcionDeMateriales.Registrar1Click(Sender: TObject);
begin
    frmBarra2.btnPost.Click
end;

procedure TfrmRecepcionDeMateriales.btnAlmacenesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAlmacenes, frmAlmacenes);
  frmAlmacenes.Show;
end;

procedure TfrmRecepcionDeMateriales.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure TfrmRecepcionDeMateriales.Cancelar1Click(Sender: TObject);
begin
frmbarra2.btnCancel.Click;
end;

procedure TfrmRecepcionDeMateriales.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmRecepcionDeMateriales.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click
end;

procedure TfrmRecepcionDeMateriales.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmRecepcionDeMateriales.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click
end;

procedure TfrmRecepcionDeMateriales.zq_recepciondematerialesAfterScroll(
  DataSet: TDataSet);
begin
  zq_detallesderecepcion.Active := False;
  zq_detallesderecepcion.Params.ParamByName('idRecepcion').AsInteger := zq_RecepciondeMateriales.FieldByName('iId').AsInteger;
  zq_detallesderecepcion.Open;

//  PgControlChange(PgControl);
end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnAddClick(Sender: TObject);
begin
  try
    OpcButton1 := 'New' ;
    frmBarra2.btnAddClick(Sender);
    frmBarra1.btnCancel.Click ;
    pgControl.ActivePageIndex := 0 ;
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
    Grid_Entradas.Enabled := False;
    zq_recepciondemateriales.Append;
    zq_recepciondemateriales.FieldByName('sContrato').AsString := Global_Contrato;
    zq_recepciondemateriales.FieldByName('sStatus').AsString := 'PENDIENTE';
    zq_recepciondemateriales.FieldByName('sTipoMovimiento').AsString := 'Recepción de Material';
    DBEdit1.SetFocus;
  Except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_RecepcionDeMateriales', 'Al agregar registro ', 0);
    end;
  end;
end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnEditClick(Sender: TObject);
begin
  if (uppercase(zq_recepciondemateriales.FieldByName('sStatus').AsString) = 'PENDIENTE') then
  begin
    pgControl.ActivePageIndex := 0 ;
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
    Grid_Entradas.Enabled := False;
    zq_recepciondemateriales.Edit;
    frmBarra2.btnEditClick(Sender);
  end
  else
  begin
    ShowMessage('No se puede modificar una recepción si esta ya está Validada o Autorizada');
    frmBarra2.btnCancelClick(Sender);
  end;

end;

procedure TfrmRecepcionDeMateriales.frmBarra3btnAddClick(Sender: TObject);
begin
  frmBarra3.btnAddClick(Sender);

end;

procedure TfrmRecepcionDeMateriales.frmBarra3btnEditClick(Sender: TObject);
begin
  frmBarra3.btnEditClick(Sender);

end;

procedure TfrmRecepcionDeMateriales.frmBarra3btnExitClick(Sender: TObject);
begin
  frmBarra3.btnExitClick(Sender);
  close;
end;

procedure TfrmRecepcionDeMateriales.frmBarra3btnPostClick(Sender: TObject);
begin
  frmBarra3.btnPostClick(Sender);

end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnCancelClick(Sender: TObject);
begin
 desactivapop(popupprincipal);
 BotonPermiso.permisosBotones(frmBarra1);
 BotonPermiso.permisosBotones(frmBarra2);

 grid_entradas.Enabled:=true;
 zq_recepciondemateriales.Cancel;

 frmBarra2.btnAdd.Enabled     := True ;
 frmBarra2.btnEdit.Enabled    := True ;
 frmBarra2.btnDelete.Enabled  := True ;
 frmBarra2.btnRefresh.Enabled := True ;

 frmBarra2.btnCancelClick(Sender);
 BotonPermiso.permisosBotones(frmBarra1);
 BotonPermiso.permisosBotones(frmBarra2);
end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnDeleteClick(Sender: TObject);
begin
  if zq_recepciondemateriales.FieldByName('sStatus').AsString = 'PENDIENTE' then begin
    Try
      if zq_detallesderecepcion.RecordCount > 0 then begin
        MessageDlg('No se puede Elimnar el Registro.'+#10+'Primero Elimine los Materiales.', mtInformation,[mbOk],0);
        exit;
      end
      else begin
        zq_recepciondemateriales.Delete;
        //showmessage('Eliminado');
      end;
    Except
      On E: Exception do begin
        ShowMessage(E.Message);
      end;
    End;
  end else begin
    MessageDlg('No se puede Modificar una Recepción si ya está Validada o Autorizada.', mtInformation,[mbOk],0);
    exit;
  end;
end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  close
end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnPostClick(Sender: TObject);
var
   Maximo : integer;
   nombres, cadenas: TStringList;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Folio');nombres.Add('Tipo de Movimiento');nombres.Add('Almacén');
  cadenas.Add(DBEdit1.Text);cadenas.Add(DBEdit2.Text);cadenas.Add(DBLookupComboBox1.Text);
  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  if zq_recepciondemateriales.State=dsInsert then
  begin
    //BUSCAMOS EL MAXIMO
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select max(iId) as Folio FROM alm_recepciondemateriales');
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
       Maximo := Connection.zCommand.FieldByName('Folio').AsInteger + 1
    else
       Maximo := 1;

    zq_recepciondemateriales.FieldValues['iId']:= Maximo;
  end;


  zq_recepciondemateriales.Post;
  grid_entradas.Enabled:=true;
  frmBarra2.btnPostClick(Sender);
  frmBarra2btnRefreshClick(Sender);
end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnPrinterClick(Sender: TObject);
begin



    frxEntrada.PreviewOptions.MDIChild := False ;
    frxEntrada.PreviewOptions.Modal := True ;
    frxEntrada.PreviewOptions.Maximized := lCheckMaximized () ;
    frxEntrada.PreviewOptions.ShowCaptions := False ;
    frxEntrada.Previewoptions.ZoomMode := zmPageWidth ;
    frxEntrada.LoadFromFile (global_files + global_miReporte +'_ALMRecepcionDeMateriales.fr3') ;
      if not FileExists(global_files + global_miReporte + '_ALMRecepcionDeMateriales.fr3') then
     showmessage('El archivo de reporte '+global_Mireporte+'_ALMRecepcionDeMateriales.fr3 no existe, notifique al administrador del sistema');
    frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

end;

procedure TfrmRecepcionDeMateriales.frmBarra2btnRefreshClick(Sender: TObject);
var
  PosReg:TBookMark;
begin
  if zq_recepciondemateriales.RecordCount>0 then
    PosReg:=zq_recepciondemateriales.GetBookmark;

  zq_recepciondemateriales.Refresh;

  try
    zq_recepciondemateriales.GotoBookmark(PosReg);
  except
    zq_recepciondemateriales.FreeBookmark(PosReg);
  end;
end;

End.
