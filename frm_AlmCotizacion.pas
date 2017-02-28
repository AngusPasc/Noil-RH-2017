unit frm_AlmCotizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxDBLookupComboBox,
  cxCalc, cxDropDownEdit, ZSqlUpdate, cxTextEdit, ExtCtrls, Menus, cxCalendar,
  frxClass, frxDBSet, cxGridBandedTableView, DBClient, StdCtrls, cxButtons,
  dxmdaset, cxGridDBBandedTableView, ImgList, Grids, DateUtils,Math, cxCheckBox,
  Mask, rxToolEdit, rxCurrEdit, RxLookup, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, ComCtrls, dxBar, cxLabel, Buttons, cxProgressBar, RxMemDS,
  ExcelXP, OleServer, cxSplitter, WebAdapt, WebComp, AdvGroupBox,
  AdvOfficeButtons, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, AdvMenus, cxPCdxBarPopupMenu, cxPC,
  dxBarBuiltInMenu, Excel2000, FormAutoScaler;

type
  TfrmAlmCotizacion = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Grid_Cotizaciones: TcxGrid;
    BView_Cotizacion: TcxGridDBTableView;
    Grid_CotizacionesLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Grid_Productos: TcxGrid;
    BView_Productos: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ZQalm_cotizacion: TZQuery;
    dsZQalm_cotizacion: TDataSource;
    dsalm_cotizacion_detalle: TDataSource;
    ZQalm_cotizacion_detalle: TZQuery;
    BView_CotizacioniIdCotizacion1: TcxGridDBColumn;
    BView_CotizacioniIdRequisicion1: TcxGridDBColumn;
    cxgrdbclmnBView_CotizacionsNombreProveedor: TcxGridDBColumn;
    BView_CotizacionsContrato1: TcxGridDBColumn;
    BView_CotizacioniFolioRequisicion1: TcxGridDBColumn;
    BView_CotizacionsNumeroOrden1: TcxGridDBColumn;
    BView_CotizaciondIdFecha1: TcxGridDBColumn;
    BView_CotizaciondFechaSolicitado1: TcxGridDBColumn;
    BView_CotizaciondFechaRequerido1: TcxGridDBColumn;
    BView_CotizacionsRequisita1: TcxGridDBColumn;
    BView_CotizacionsReferencia1: TcxGridDBColumn;
    BView_CotizacionsRevision1: TcxGridDBColumn;
    BView_CotizacionsSolicito1: TcxGridDBColumn;
    BView_CotizacionsStatus1: TcxGridDBColumn;
    BView_CotizacionsAutorizo1: TcxGridDBColumn;
    BView_CotizacionsVerificacion1: TcxGridDBColumn;
    BView_CotizacionsRecibido1: TcxGridDBColumn;
    BView_CotizacionsidDepartamento1: TcxGridDBColumn;
    BView_CotizacionmComentarios1: TcxGridDBColumn;
    BView_CotizacionsMotivo1: TcxGridDBColumn;
    BView_CotizacionsEstado1: TcxGridDBColumn;
    BView_CotizacionsLugarEntrega1: TcxGridDBColumn;
    BView_CotizacionsNumeroSolicitud1: TcxGridDBColumn;
    BView_CotizacionsCodigoMaterial1: TcxGridDBColumn;
    BView_CotizacionsIdUsuario1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosiIdCotizacionDetalle1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosiIdCotizacion1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosNombreProducto: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdCantidad1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdCantidadCotizada1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdPrecio1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdTasa1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdTiempoEntrega1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdFechaRequerida1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosComentario1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosiIdMoneda1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdTipoCambio1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosiItem1: TcxGridDBColumn;
    cxgrdbclmnBView_ProductosdFechaSolicitado1: TcxGridDBColumn;
    ZUalm_cotizacion_detalle: TZUpdateSQL;
    pnlPnl_Principal: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxgrdbtblvwBView_Requisiciones: TcxGridDBTableView;
    cxgrdlvla: TcxGridLevel;
    Grid_Requisiciones: TcxGrid;
    anexo_requisicion: TZQuery;
    dsanexo_requisicion: TDataSource;
    cxgrdbclmnBView_RequisicionesiFolioRequisicion: TcxGridDBColumn;
    cxgrdbclmnBView_RequisicionesColumn2: TcxGridDBColumn;
    frxDBanexo_requisicion: TfrxDBDataset;
    frxCotizacion: TfrxReport;
    frxDBZQalm_cotizacion: TfrxDBDataset;
    frxDBZQalm_cotizacion_detalle: TfrxDBDataset;
    cxgrdbclmnBView_CotizacionsIdProveedor: TcxGridDBColumn;
    cxgrdbclmnBView_ProductossMedida: TcxGridDBColumn;
    dsCotizador: TClientDataSet;
    dscdCotizador: TDataSource;
    dsProveedores: TClientDataSet;
    intgrfldds1iIdCotizacion: TIntegerField;
    intgrfldds1iIdRequisicion: TIntegerField;
    strngfldds1sIdProveedor: TStringField;
    strngfldProveedoresNombreProveedor: TStringField;
    ilImgBtns: TImageList;
    cxgrdbclmnBView_ProductossIdInsumo: TcxGridDBColumn;
    ListaProveedoresFinal: TStringGrid;
    dsAnexoPPedido: TClientDataSet;
    strngfldAnexoPedidosContrato: TStringField;
    intgrfldAnexoPedidoiFolioPedido: TIntegerField;
    strngfldAnexoPedidosIdInsumo: TStringField;
    intgrfldAnexoPedidoiItem: TIntegerField;
    strngfldAnexoPedidomDescripcion: TStringField;
    strngfldAnexoPedidosMedida: TStringField;
    dsAnexoPPedidodCantidad: TFloatField;
    dsAnexoPPedidodCosto: TFloatField;
    strngfldAnexoPedidosNumeroActividad: TStringField;
    strngfldAnexoPedidosNumeroOrden: TStringField;
    strngfldAnexoPedidosStatus: TStringField;
    dsAnexoPPedidodDescuento: TFloatField;
    strngfldAnexoPedidosNumeroSolicitud: TStringField;
    strngfldAnexoPedidosIdAlmacen: TStringField;
    dsAnexoPPedidodCostoDLL: TFloatField;
    ZQAnexo_Pedido: TZQuery;
    ds_FormaPago: TDataSource;
    FormaPago: TZReadOnlyQuery;
    ds_moneda: TDataSource;
    Moneda: TZReadOnlyQuery;
    anexo_ppedido: TZQuery;
    dxBarManager1: TdxBarManager;
    dxbrpmnCotizaciones: TdxBarPopupMenu;
    dxbrbtnExportarPlantillaaPDF1: TdxBarButton;
    dxbrbtnExportaCotizacionaPDF1: TdxBarButton;
    dxbrbtnExportarPlantillaaExcel1: TdxBarButton;
    dxbrbtnExportarCotizacionaExcel1: TdxBarButton;
    dxbrbtnCompararCotizacion1: TdxBarButton;
    dsConceptoDetalles: TClientDataSet;
    frxConceptoDetalles: TfrxDBDataset;
    intgrfldConceptoDetallesiIdCotizacionDetalle: TIntegerField;
    intgrfldConceptoDetallesiIdCotizacion: TIntegerField;
    strngfldConceptoDetallessIdInsumo: TStringField;
    dsConceptoDetallesdCantidad: TFloatField;
    dsConceptoDetallesdCantidadCotizada: TFloatField;
    dsConceptoDetallesdPrecio: TFloatField;
    dsConceptoDetallesdTasa: TFloatField;
    intgrfldConceptoDetallesdTiempoEntrega: TIntegerField;
    dtfldConceptoDetallesdFechaRequerida: TDateField;
    strngfldConceptoDetallesComentario: TStringField;
    strngfldConceptoDetallesiIdMoneda: TStringField;
    dsConceptoDetallesdTipoCambio: TFloatField;
    intgrfldConceptoDetallesiItem: TIntegerField;
    dtfldConceptoDetallesdFechaSolicitado: TDateField;
    strngfldConceptoDetallesNombreProducto: TStringField;
    strngfldConceptoDetallessMedida: TStringField;
    dxbrbtnImportarCotizacion: TdxBarButton;
    dlgOpenOpenXLS: TOpenDialog;
    ExcelApplication1: TExcelApplication;
    ExcelWorksheet1: TExcelWorksheet;
    ExcelWorkbook1: TExcelWorkbook;
    dlgSave1: TSaveDialog;
    frxReporte: TfrxReport;
    frxDBValida: TfrxDBDataset;
    RxMDValida: TRxMemoryData;
    strngfldRxMDValidasNumeroActividad: TStringField;
    strngfldRxMDValidasWbs: TStringField;
    strngfldRxMDValidadCantidad: TStringField;
    strngfldRxMDValidasuma: TStringField;
    strngfldRxMDValidaaMN: TStringField;
    strngfldRxMDValidaaDLL: TStringField;
    strngfldRxMDValidabMN: TStringField;
    strngfldRxMDValidabDLL: TStringField;
    strngfldRxMDValidadCantidadAnexo: TStringField;
    strngfldRxMDValidadescripcion: TStringField;
    strngfldRxMDValidamensaje: TStringField;
    strngfldRxMDValidasNumeroOrden: TStringField;
    strngfldRxMDValidasWbs2: TStringField;
    dsErrores: TClientDataSet;
    dsCdErrores: TDataSource;
    strngfldErroresError: TStringField;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    Lista_Proveedores: TStringGrid;
    intgrfldProveedoresiCantidadC: TIntegerField;
    ZQuery1: TZQuery;
    cxgrdbclmnBView_CotizacionColumn1: TcxGridDBColumn;
    dxbrbtn1: TdxBarButton;
    ZUalm_cotizacion: TZUpdateSQL;
    strngfldErroressIdInsumo: TStringField;
    intgrfldErroresiItem: TIntegerField;
    cxstylrpstry1: TcxStyleRepository;
    Pendiente: TcxStyle;
    Cotizado: TcxStyle;
    Cancelado: TcxStyle;
    Validado: TcxStyle;
    Enviado: TcxStyle;
    OpcionSistema: TcxStyle;
    dxbrbtn2: TdxBarButton;
    ZQProveedores: TZQuery;
    QFile: TZQuery;
    AvOfCkFormatos: TAdvOfficeCheckGroup;
    cxPDF: TcxButton;
    cxJPEG: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    PopupExportar: TAdvPopupMenu;
    ExportarPlatillaaPDF1: TMenuItem;
    ExportarCotizacionaPDF1: TMenuItem;
    ExportarPlantillaaExcel1: TMenuItem;
    ExportarCotizacionaExcel1: TMenuItem;
    Ventanas: TcxPageControl;
    DetallesOrdenCompras: TcxTabSheet;
    Exportar: TcxTabSheet;
    ImportarDatos: TcxTabSheet;
    Errores: TcxTabSheet;
    lbl1: TLabel;
    tsFormaPago: TcxLookupComboBox;
    lbl2: TLabel;
    tsMoneda: TcxLookupComboBox;
    chkTipoCambio: TcxCheckBox;
    tsTipoCambio: TcxCalcEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    tDescuentoGral: TcxCalcEdit;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    pbProgreso: TcxProgressBar;
    lbl5: TcxLabel;
    edtArchivo: TcxTextEdit;
    btnSeleccionar: TcxButton;
    btnImportar: TcxButton;
    btnSalir: TcxButton;
    pbImportacion: TcxProgressBar;
    Grid_Errores: TcxGrid;
    cxgrdbtblvwBView_Errores: TcxGridDBTableView;
    cxgrdbclmnBView_ErroresColumn1: TcxGridDBColumn;
    cxgrdbclmnBView_ErroresColumn2: TcxGridDBColumn;
    cxgrdbclmnBView_ErroresColumn3: TcxGridDBColumn;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    dxBarSubItem1: TdxBarSubItem;
    cxTabSheet1: TcxTabSheet;
    pnl2: TPanel;
    cmdAnalizar: TcxButton;
    cmdCrearOCS: TcxButton;
    cmdLimpiar: TcxButton;
    Grid_Compara: TcxGrid;
    BView_Compara: TcxGridDBBandedTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxButton7: TcxButton;
    frxDBCotizador: TfrxDBDataset;
    frmtsclr1: TFormAutoScaler;
    procedure FormShow(Sender: TObject);
    procedure ZQalm_cotizacionAfterScroll(DataSet: TDataSet);
    procedure anexo_requisicionAfterScroll(DataSet: TDataSet);
    procedure dxbrbtnExportaCotizacionaPDF1Click(Sender: TObject);
    procedure dxbrbtnCompararCotizacion1Click(Sender: TObject);
    procedure cmdAnalizarClick(Sender: TObject);
    procedure ZQalm_cotizacion_detalleBeforePost(DataSet: TDataSet);
    procedure cmdCrearOCSClick(Sender: TObject);
    procedure chkTipoCambioPropertiesEditValueChanged(Sender: TObject);
    procedure tDescuentoGralPropertiesEditValueChanged(Sender: TObject);
    procedure Llenar_Grid_Compara;
    procedure cmdLimpiarClick(Sender: TObject);
    procedure Crear_Estructura;
    procedure dxbrbtnExportarCotizacionaExcel1Click(Sender: TObject);
    function  Llenar_CDS_Exportar(var cdAlm_Cotizacion: TClientDataSet):Boolean;
    procedure dxbrbtnExportarPlantillaaExcel1Click(Sender: TObject);
    procedure dxbrbtnExportarPlantillaaPDF1Click(Sender: TObject);
    procedure ExportarPDF(Plantilla:Boolean);
    procedure dxbrbtnImportarCotizacionClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxbrbtn1Click(Sender: TObject);
    procedure ZQalm_cotizacionBeforeEdit(DataSet: TDataSet);
    procedure ZQalm_cotizacionBeforePost(DataSet: TDataSet);
    procedure Grid_CotizacionesResize(Sender: TObject);
    procedure BView_CotizacionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnInsertar(Sender: TObject);
    procedure ZQalm_cotizacion_detalleBeforeEdit(DataSet: TDataSet);
    procedure BView_CotizacionNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxPDFClick(Sender: TObject);
    procedure cxJPEGClick(Sender: TObject);
    procedure Guardar_Documento;
    procedure Eliminar_Documento;
    function Eliminar_Documento2(Tipo:String):Boolean;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure frxCotizacionGetValue(const VarName: string; var Value: Variant);
    procedure tipocambio();
    procedure tsMonedaExit(Sender: TObject);
    //fin de procedure
  private
    { Private declarations }
    isActivo, isRequisicion, Importado, Terminar:Boolean; //Variables para poder  controlar el afterscroll
    TipoAccion, TipoArchivo:string;  //Para definir que se quiere hacer si insertar, editar o eliminar
    ListaFiles:TstringList;
  public
    { Public declarations }
    StreamPDF:TStream;
  end;

var
  frmAlmCotizacion: TfrmAlmCotizacion;
  Excel, Libro, Hoja: Variant;
  columnas: array[1..260] of string;
  lContratoActual: boolean;
  flcid: integer;
  CodigoColor: array[1..4] of string;
  recursos: array[1..25000, 1..6] of string;
  registro: integer;
  THeight, TWidth :Integer;
implementation
uses
  global, Func_Genericas, frm_connection, ExportaExcel, frm_RequisicionGen,
  UFrmVisorPdf, UFunctionsGHH;
{$R *.dfm}

procedure TfrmAlmCotizacion.anexo_requisicionAfterScroll(DataSet: TDataSet);
begin
  if isRequisicion = True then //Solo de debe ejecutar cuando de navegue no cuando carge la interfaz
  begin
    //Al cambiarse de requsicion debe actualizar los productos de esa requisicion
    BView_Cotizacion.DataController.DataSource := nil;
    ZQalm_cotizacion.Filtered := False;
    ZQalm_cotizacion.Filter   := 'iIdRequisicion = '+ IntToStr(anexo_requisicion.FieldByName('iFolioRequisicion').AsInteger);
    ZQalm_cotizacion.Filtered := True;
    BView_Cotizacion.DataController.DataSource := dsZQalm_cotizacion;
  end;
end;

procedure TfrmAlmCotizacion.btnSeleccionarClick(Sender: TObject);
var
  x, y, i: Integer;
begin
  dlgOpenOpenXLS.Title := 'Inserta Archivo de Consulta';
  if dlgOpenOpenXLS.Execute then
  begin
    edtArchivo.Text := dlgOpenOpenXLS.FileName;
     // soad - > Llenado del array..
    for x := 1 to 26 do
    begin
      columnas[x] := Chr(64 + x);
    end;

    i := 27;
    for x := 1 to 9 do
    begin
      for y := 1 to 26 do
      begin
        columnas[i] := Chr(64 + x) + Chr(64 + y);
        i := i + 1;
      end;
    end;
  end;
end;

procedure TfrmAlmCotizacion.BView_CotizacionNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 9 then
  begin
    if ZQalm_cotizacion.RecordCount = 0 then
    begin
      MSG_OK('No hay registro para editar');
      cxgrdbclmnBView_CotizacionColumn1.Options.Editing := False;
      Abort;
    end;
  end;
end;

procedure TfrmAlmCotizacion.BView_CotizacionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Pendiente' then AStyle  := Pendiente;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Cotizado' then AStyle   := Cotizado;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Cancelado' then AStyle  := Cancelado;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Validado' then AStyle := Validado;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'Enviado' then AStyle    := Enviado;
end;

procedure TfrmAlmCotizacion.btnImportarClick(Sender: TObject);
{$REGION 'Declaraciones de variables para importacion'}
var
  //Ventanas
  flcid, Fila: Integer;
  //Importar
  Contrato      :string;
  idCortizacion, idRequisicion,t, iCantidadCotizada :Integer;
  iItem, iTiempoEntrega:Integer;
  sIdInsumo, NombreProducto, iIdMoneda, Comentario, sValue:string;
  dPrecio, dTipoCambio, dTasa:Double;
  dFechaRequerida :TDateTime;
{$ENDREGION}
begin
  {cODIGOC COLORES}
  CodigoColor[1] := '';
  CodigoColor[2] := '';
  CodigoColor[3] := '';
  CodigoColor[4] := '';
  // Verificar si se ha seleccionado algun archivo
  if (edtArchivo.Text = '') or ((edtArchivo.Text <> '') and not FileExists(edtArchivo.Text)) then
  begin
    MSG_W('El archivo seleccionado es incorrecto, verifique esto e intente de nuevo.');
    Exit;
  end;
  if dsErrores.active then                       //Si el clientdataset esta activo
  begin
    dsErrores.EmptyDataSet;
    dsErrores.Close;                             //Lo cierra
  end;
  dsErrores.CreateDataSet;
  dsErrores.Open;
  //Asignacion de la ruta del archivo de Excel...
  flcid := GetUserDefaultLCID;
  ExcelApplication1.Connect;
  ExcelApplication1.Visible[flcid] := false;
  ExcelApplication1.UserControl := true;

  ExcelWorkbook1.ConnectTo(ExcelApplication1.Workbooks.Open(edtArchivo.Text,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,EmptyParam,
    EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,EmptyParam, flcid));

  ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as ExcelWorkSheet);  //Para conectarse a excel
  {$REGION 'Para importar un plantilla'}
    //*******************************************************************************************
    Contrato := ExcelWorksheet1.Range['C' + Trim(IntToStr(3)), 'C' + Trim(IntToStr(3))].Value2;

    try
      idRequisicion := StrToInt(ExcelWorksheet1.Range['C' + Trim(IntToStr(9)), 'C' + Trim(IntToStr(9))].Value2);
    except
      on E: Exception do
      begin
        MSG_W(Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['C' + Trim(IntToStr(9)), 'C' + Trim(IntToStr(9))].Value2 + '" no es un número entero o el archivo que quiere importar es incorrecto');
        ExcelApplication1.Visible[flcid] := True;
        //ExcelApplication1.Quit;
        ExcelApplication1.Disconnect;
        Exit;
      end;
    end;

    try
      idCortizacion := StrToInt(ExcelWorksheet1.Range['F' + Trim(IntToStr(9)), 'F' + Trim(IntToStr(9))].Value2);
    except
      on E: Exception do
      begin
        MSG_W(Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['F' + Trim(IntToStr(9)), 'F' + Trim(IntToStr(9))].Value2 + '" no es un número entero o el archivo que quiere importar es incorrecto');
        ExcelApplication1.Visible[flcid] := True;
        //ExcelApplication1.Quit;
        ExcelApplication1.Disconnect;
        Exit;
      end;
    end;
    if Contrato <> global_contrato then
    begin
      MSG_W('El contrato no pertenece a esta requisicion o el archivo es incorrecto, por favor verifique y vuelva a intentarlo!');
      ExcelApplication1.Visible[flcid] := True;
      //ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
      Exit;
    end;
    if ZQalm_cotizacion.FieldByName('iIdRequisicion').AsInteger <> idRequisicion then
    begin
      MSG_W('El numero de requisicion no pertence a esta cotizacion o el archivo es incorrecto, por favor verifique y vuelva a intentarlo!');
      ExcelApplication1.Visible[flcid] := True;
      //ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
      Exit;
    end;
    if ZQalm_cotizacion.FieldByName('iIdCotizacion').AsInteger <> idCortizacion then
    begin
      MSG_W('El numero de cotizacion no coincide o el archivo es incorrecto, por favor verifique y vuelva a intentarlo!');
      ExcelApplication1.Visible[flcid] := True;
      //ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
      Exit;
    end;
    I := 1;  //Para el numero total de filas
    Fila := 14;   //Inicia las columnas para empezar a importar
    sValue := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
    while (sValue <> '') do
    begin
      sIdInsumo         := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
      NombreProducto    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
      iItem             := StrToInt(ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2);
      //dFechaRequerida   := FloatToDateTime(ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2);
      //Inicia bloque para la captura de errores
      try
        begin
          iCantidadCotizada := StrToInt(ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2);
        end;
      except
        on E: Exception do
        begin
          dsErrores.Append;
          dsErrores.FieldByName('sIdInsumo').AsString := sIdInsumo;
          dsErrores.FieldByName('iItem').AsInteger    := iItem;
          //dsErrores.FieldByName('Error').AsString := 'El material con ID: '+ sIdInsumo + ' e Item: '+ IntToStr(iItem) + ', Error:'+ e.ClassName + ' - ' + e.Message;
          dsErrores.FieldByName('Error').AsString := Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2 + '" no es un número entero';
          dsErrores.Post;
        end;
      end;
      try
        begin
          dPrecio:= strtofloat(ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2);
         end;
      except
        on E: Exception do
        begin
          dsErrores.Append;
          dsErrores.FieldByName('sIdInsumo').AsString := sIdInsumo;
          dsErrores.FieldByName('iItem').AsInteger    := iItem;
          //dsErrores.FieldByName('Error').AsString := 'El material con ID: '+ sIdInsumo + ' e Item: '+IntToStr(iItem)+ ' Error:'+ e.ClassName + ' - ' + e.Message;
          dsErrores.FieldByName('Error').AsString := Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2 + '" no es un número real';
          dsErrores.Post;
        end;
      end;
      try
        begin
          dTasa:= strtofloat(ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2);
        end;
      except
        on E: Exception do
        begin
          dsErrores.Append;
          dsErrores.FieldByName('sIdInsumo').AsString := sIdInsumo;
          dsErrores.FieldByName('iItem').AsInteger    := iItem;
          //dsErrores.FieldByName('Error').AsString := 'El material con ID: '+ sIdInsumo + ' e Item: '+IntToStr(iItem)+ ' Error:'+ e.ClassName + ' - ' + e.Message;
          dsErrores.FieldByName('Error').AsString := Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2 + '" no es un número real';
          dsErrores.Post;
        end;
      end;
      try
        begin
          iTiempoEntrega    := StrToInt(ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2);
        end;
      except
        on E: Exception do
        begin
          dsErrores.Append;
          dsErrores.FieldByName('sIdInsumo').AsString := sIdInsumo;
          dsErrores.FieldByName('iItem').AsInteger    := iItem;
          //dsErrores.FieldByName('Error').AsString := 'El material con ID: '+ sIdInsumo + ' e Item: '+IntToStr(iItem)+ ' Error:'+ e.ClassName + ' - ' + e.Message;
          dsErrores.FieldByName('Error').AsString := Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2 + '" no es un número entero';
          dsErrores.Post;
        end;
      end;
      try
        begin
          dTipoCambio := ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2;
        end;
      except
        on E: Exception do
        begin
          dsErrores.Append;
          dsErrores.FieldByName('sIdInsumo').AsString := sIdInsumo;
          dsErrores.FieldByName('iItem').AsInteger    := iItem;
          //dsErrores.FieldByName('Error').AsString := 'El material con ID: '+ sIdInsumo + ' e Item: '+IntToStr(iItem)+ ' Error:'+ e.ClassName + ' - ' + e.Message;
          dsErrores.FieldByName('Error').AsString     := Mostrar_Excepciones(e.ClassName) + ' - "' + ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2 + '" no es número real';
          dsErrores.Post;
        end;
      end;
      //Si alguno de estos valores es cero que inicie el proceso de validaciones
      if (iCantidadCotizada <= 0) and (RoundTo(dPrecio,-2) <= RoundTo(0,-2)) and (RoundTo(dTasa,-2) <= RoundTo(0,-2)) and (iTiempoEntrega < 0) then
      begin
        dsErrores.Append;
        dsErrores.FieldByName('sIdInsumo').AsString := sIdInsumo;
        dsErrores.FieldByName('iItem').AsInteger    := iItem;
        dsErrores.FieldByName('Error').AsString := 'Error: Verifique que la informacion no este incompleta';
        dsErrores.Post;
      end;
      Inc(I);  //Incrementa para saber cuanto registro leera
      Inc(Fila);    //Para leer el siguiente registro
      sValue := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;  //Para obtener el valor del siguiente registro
    end;
    pbImportacion.Properties.Max := I;
    //Procedemos a leer el archivo de Excel..
    if dsErrores.RecordCount > 0 then
    begin
      ExcelApplication1.Visible[flcid] := True;
      //ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
      Grid_Errores.Align := alClient;
      Crear_Form(Ventanas, 'Errores de errores', 400, 800, [biSystemMenu,biMaximize], 3); //Para mostrar los errores
      Exit;
    end;
    try //Para empezar la importacion
      Connection.zConnection.StartTransaction;
      Fila := 14;
      sValue := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
      while (sValue <> '') do
      begin
        pbImportacion.Position := (t/I)*100;
        inc(t);
        //Inicio de informacion para importar
        sIdInsumo         := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
        NombreProducto    := ExcelWorksheet1.Range['C' + Trim(IntToStr(Fila)), 'C' + Trim(IntToStr(Fila))].Value2;
        iItem             := StrToInt(ExcelWorksheet1.Range['D' + Trim(IntToStr(Fila)), 'D' + Trim(IntToStr(Fila))].Value2);
        //dFechaRequerida   := FloatToDateTime(ExcelWorksheet1.Range['E' + Trim(IntToStr(Fila)), 'E' + Trim(IntToStr(Fila))].Value2);
        //Fin de informacion para importar
        //Inicio de Datos para importar
        iCantidadCotizada := StrToInt(ExcelWorksheet1.Range['F' + Trim(IntToStr(Fila)), 'F' + Trim(IntToStr(Fila))].Value2);
        dPrecio           := strtofloat(ExcelWorksheet1.Range['G' + Trim(IntToStr(Fila)), 'G' + Trim(IntToStr(Fila))].Value2);
        dTasa             := strtofloat(ExcelWorksheet1.Range['H' + Trim(IntToStr(Fila)), 'H' + Trim(IntToStr(Fila))].Value2);
        iTiempoEntrega    := StrToInt(ExcelWorksheet1.Range['I' + Trim(IntToStr(Fila)), 'I' + Trim(IntToStr(Fila))].Value2);
        iIdMoneda         := ExcelWorksheet1.Range['J' + Trim(IntToStr(Fila)), 'J' + Trim(IntToStr(Fila))].Value2;
        dTipoCambio       := strtofloat(ExcelWorksheet1.Range['K' + Trim(IntToStr(Fila)), 'K' + Trim(IntToStr(Fila))].Value2);
        Comentario        := ExcelWorksheet1.Range['L' + Trim(IntToStr(Fila)), 'L' + Trim(IntToStr(Fila))].Value2;
        Inc(Fila);
        if ZQalm_cotizacion_detalle.Locate('iIdCotizacion;sIdInsumo;iItem',VarArrayOf([idCortizacion,sIdInsumo,iItem]), []) then
        begin
          ZQalm_cotizacion_detalle.edit;
          ZQalm_cotizacion_detalle.FieldByName('iCantidadCotizada').AsInteger:= iCantidadCotizada;
          ZQalm_cotizacion_detalle.FieldByName('dPrecio').AsFloat           := dPrecio;
          ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat             := dTasa;
          ZQalm_cotizacion_detalle.FieldByName('iTiempoEntrega').asInteger  := iTiempoEntrega;
          ZQalm_cotizacion_detalle.FieldByName('iIdMoneda').AsString        := iIdMoneda;
          ZQalm_cotizacion_detalle.FieldByName('dTipoCambio').AsFloat       := dTipoCambio;
          ZQalm_cotizacion_detalle.FieldByName('Comentario').AsString       := Comentario;
          ZQalm_cotizacion_detalle.post;
          Importado := True;
        end;
        sValue := ExcelWorksheet1.Range['B' + Trim(IntToStr(Fila)), 'B' + Trim(IntToStr(Fila))].Value2;
      end;
      //Si la importacion se llevo correctamente se cambia el estatus y se guardar en el kardex
      if Importado then
      begin
        if ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Enviado' then
        begin
          ZQalm_cotizacion.Edit;
          ZQalm_cotizacion.FieldByName('sStatus').AsString := 'Cotizado';
          isActivo := False;
          ZQalm_cotizacion.Post;
          isActivo := True;
          ZQalm_cotizacionAfterScroll(ZQalm_cotizacion);
        end;
        Guardar_Kardex(global_contrato, global_usuario, ('Importacion de la Cotización: [' + ZQalm_cotizacion.FieldByName('iIdCotizacion').AsString +  '] Registrado el [' + DateToStr(Date) +  '] Usuario [ ' + global_usuario + ']' ), 'Otros Movimientos');
        Connection.zConnection.Commit; // Si todo ha sido correcto se deberá generar físicamente la información en la base de datos
      end;
      MSG_OK('Proceso Terminado con exito...');
      ExcelApplication1.Quit;
      ExcelApplication1.Disconnect;
    except
      on E: Exception do
      begin
        Connection.zConnection.RollBack; // Ante un error, cancelar todos los cambios realizados
        //Termina Exception para subir anexos...
        pbImportacion.Position := 0;
        Excel.Visible:= False;
        ExcelApplication1.Quit;
        ExcelApplication1.Disconnect;
        MSG_W(e.ClassName + ' - ' + e.Message);
      end;
    end;
  {$ENDREGION}
end;

procedure TfrmAlmCotizacion.chkTipoCambioPropertiesEditValueChanged(
  Sender: TObject);
begin
  if chkTipoCambio.Checked then
  begin
    tsTipoCambio.Enabled  := True;
    tDescuentoGral.Enabled:= True;
  end else
  begin
    tsTipoCambio.Enabled    := False;
    //tDescuentoGral.Enabled  := False;
    tsTipoCambio.EditValue  := 0;
    tDescuentoGral.EditValue:= 0;
  end;
end;

procedure TfrmAlmCotizacion.cmdAnalizarClick(Sender: TObject);
{Creo: Rafael
Descriocion: Procedimiento para comparar cual es el mejor proveedor}
var
  NombreColumna, insumo, sIdProveedor :string;
  Fecha_Solicitado, Fecha_Requerida: TDateTime;
  //Inicio de Variables Integer
  Proveedor, TEntrega1, TEntrega2, Proveedor1,
  Proveedor2, ProveedorGanador, xx, columna,
  fila, ProveedorTiempoGanador, colum,
  CantidadCotizada1,CantidadCotizada2,
  CantidadCotizadaGanadora, PGanadorCantidadC,
  a, b, c, items, CantidadCompradaProveedor1,
  CantidadCompradaProveedor2, CantidadCompradaProveedorGanador:Integer;
  //Fin de Variables Integer
  Encontro, Guardar, PrimeraVez: Boolean;
  decPrecio1, decPrecio2, PrecioGanador: Double;
begin
  Llenar_Grid_Compara;
  fila:= 0;
  for fila := 0 to BView_Compara.DataController.RowCount - 1 do
  begin
    Insumo          := BView_Compara.ViewData.Rows[fila].Values[1];
    Fecha_Solicitado:= StrToDate(BView_Compara.ViewData.Rows[fila].Values[4]);
    Fecha_Requerida := StrToDate(BView_Compara.ViewData.Rows[fila].Values[5]);
    items           := StrToInt(BView_Compara.ViewData.Rows[fila].Values[6]);
    ListaProveedoresFinal.ColCount := 1;
    ListaProveedoresFinal.RowCount := 0;
    //Inicialiazo las variables para que no quede crear errores
    Proveedor               := 0;
    TEntrega1               := 0;
    TEntrega2               := 0;
    Proveedor1              := 0;
    Proveedor2              := 0;
    ProveedorGanador        := 0;
    xx                      := 0;
    columna                 := 0;
    ProveedorTiempoGanador  := 0;
    PrecioGanador           := 0;
    Encontro                := False;
    Guardar                 := False;
    PrimeraVez              := True;
    decPrecio1              := 0;
    decPrecio2              := 0;
    CantidadCotizada1       := 0;
    CantidadCotizada2       := 0;
    CantidadCotizadaGanadora:= 0;
    PGanadorCantidadC       := 0;
    colum                   := 0;
    CantidadCompradaProveedorGanador := 0;
    while proveedor < dsProveedores.RecordCount do  //Para sacar la informacion del primer proveedor
    begin
      Proveedor1 := proveedor + 1;
      //Para sacar el Proveedor
      Colum := (1 + ((proveedor+1)*6));
      if BView_Compara.ViewData.Rows[fila].Values[colum] = null then
        sIdProveedor := '*'                //quiere decir que esta vacio
      else
        sIdProveedor := BView_Compara.ViewData.Rows[fila].Values[Colum];
      if ZQProveedores.Locate('sIdProveedor', sIdProveedor, []) then
        CantidadCompradaProveedor1 := ZQProveedores.FieldByName('iCantidadC').AsInteger;

      //Aqui saco la cantidad cotizada
      Colum := (2 + ((proveedor+1)*6));       //Para la cantidad cotizada
      if BView_Compara.ViewData.Rows[fila].Values[colum] = null then
        CantidadCotizada1 := 0                //quiere decir que esta vacio
      else
        CantidadCotizada1 := StrToInt(BView_Compara.ViewData.Rows[fila].Values[Colum]);

      //Aqui saco el precio
      Colum := (3 + ((proveedor+1)*6));       //Para el precio
      if BView_Compara.ViewData.Rows[fila].Values[colum] = null then
        decPrecio1 := 0                       //quiere decir que esta vacio
      else
        decPrecio1 := StrToFloat(BView_Compara.ViewData.Rows[fila].Values[Colum]);

      //Aqui saco el valor de la fecha de entrega
      Colum := (4 + ((proveedor+1)*6));           //Para el tiempo de entrega
      if BView_Compara.ViewData.Rows[fila].Values[colum] = null then
        TEntrega1 := 0  //quiere decir que esta vacio
      else
        TEntrega1 := StrToInt(BView_Compara.ViewData.Rows[fila].Values[colum]); //Le sumo uno en caso de que sea entrega el mismo dia y tenga el valor de 0

      if (RoundTo(decPrecio1,-2)= RoundTo(0,-2)) or (CantidadCotizada1 = 0) then
        //Si entra aqui debe salir sin asignar nada
      else
      begin
        if PrimeraVez then                      //Si es el primer recorrido
        begin
          //TEntrega1 := TEntrega1 -1;
          if (TEntrega1 < 0) then //Es por el valor es vacio
          begin
            CantidadCotizadaGanadora        := 0;
            PGanadorCantidadC               := 0;
            ProveedorGanador                := 0;
            ProveedorTiempoGanador          := 0;
            PrecioGanador                   := 0;
            CantidadCompradaProveedorGanador:= 0;
          end else
          if (TEntrega1 >= 0) then
          begin
            //Si el tiempo de entrega mas la fecha solicitada es mayor a la fecha requerida
            if (IncDay(Fecha_Solicitado,TEntrega1) > Fecha_Requerida) then
            begin
              CantidadCotizadaGanadora        := 0;
              PGanadorCantidadC               := 0;
              ProveedorGanador                := 0;
              ProveedorTiempoGanador          := 0;
              PrecioGanador                   := 0;
              CantidadCompradaProveedorGanador:= 0;
            end else
            //Si el tiempo de entrega mas la fecha solicitada es menor la fecha requerida
            if (IncDay(Fecha_Solicitado,TEntrega1) <= Fecha_Requerida) then
            begin
              CantidadCotizadaGanadora        := CantidadCotizada1;
              PGanadorCantidadC               := Proveedor1;
              ProveedorGanador                := Proveedor1;
              ProveedorTiempoGanador          := TEntrega1;
              PrecioGanador                   := decPrecio1;
              CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
            end;
          end;
          PrimeraVez := False;
        end else if not PrimeraVez then
        begin
          if (TEntrega1 >= 0) then
          begin
            //TEntrega1:= TEntrega1-1;  //Le quito el uno para poder distinguir cuales son entrega inmediata
            //Si la fecha de entrega 1 mas la fecha solicitada es mayor a la fecha
            if (IncDay(Fecha_Solicitado,TEntrega1) > Fecha_Requerida) and (IncDay(Fecha_Solicitado,TEntrega2) > Fecha_Requerida) then //Si la fecha
            begin
              ProveedorGanador                := 0;
              ProveedorTiempoGanador          := 0;
              PrecioGanador                   := 0;
              CantidadCotizadaGanadora        := 0;
              PGanadorCantidadC               := 0;
              CantidadCompradaProveedorGanador:= 0;
            end
            else if (IncDay(Fecha_Solicitado,TEntrega1) > Fecha_Requerida) and (IncDay(Fecha_Solicitado,TEntrega2) <= Fecha_Requerida) then
            //si la fecha de entrega del proveedor 2 es menor a la fecha requerida el proveedor correcto es el P2
            begin
              ProveedorGanador                := Proveedor2;
              ProveedorTiempoGanador          := TEntrega2;
              PrecioGanador                   := decPrecio2;
              CantidadCotizadaGanadora        := CantidadCotizada2;
              PGanadorCantidadC               := Proveedor2;
              CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
            end
            else if (IncDay(Fecha_Solicitado,TEntrega1) <= Fecha_Requerida) and (IncDay(Fecha_Solicitado,TEntrega2) > Fecha_Requerida) then
            //Si la fecha de entrega del proveedor 1 es menor a la fecha requerida
            begin
              ProveedorGanador                := Proveedor1;
              ProveedorTiempoGanador          := TEntrega1;
              PrecioGanador                   := decPrecio1;
              CantidadCotizadaGanadora        := CantidadCotizada1;
              PGanadorCantidadC               := Proveedor1;
              CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
            end
            else if (IncDay(Fecha_Solicitado,TEntrega1) <= Fecha_Requerida) and (IncDay(Fecha_Solicitado,TEntrega2) <= Fecha_Requerida) then
            //Si las 2 fechas de entrega de los proveedores proveedores son menores a la fecha de entrega
            begin
              if (TEntrega1 > TEntrega2) and (RoundTo(decPrecio1,-2) > RoundTo(decPrecio2,-2)) then       //P2
              begin
                ProveedorGanador                := Proveedor2;
                ProveedorTiempoGanador          := TEntrega2;
                PrecioGanador                   := decprecio2;
                CantidadCotizadaGanadora        := CantidadCotizada2;
                PGanadorCantidadC               := Proveedor2;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
              end
              else if (TEntrega1 < TEntrega2) and (RoundTo(decPrecio1,-2) > RoundTo(decPrecio2,-2)) then  //P2
              begin
                ProveedorGanador                := Proveedor2;
                ProveedorTiempoGanador          := TEntrega2;
                PrecioGanador                   := decPrecio2;
                CantidadCotizadaGanadora        := CantidadCotizada2;
                PGanadorCantidadC               := Proveedor2;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
              end
              else if (TEntrega1 = TEntrega2) and (RoundTo(decPrecio1,-2) > RoundTo(decPrecio2,-2)) then  //P2
              begin
                ProveedorGanador                := Proveedor2;
                ProveedorTiempoGanador          := TEntrega2;
                PrecioGanador                   := decPrecio2;
                CantidadCotizadaGanadora        := CantidadCotizada2;
                PGanadorCantidadC               := Proveedor2;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
              end
              else if (TEntrega1 > TEntrega2) and (RoundTo(decPrecio1,-2) = RoundTo(decPrecio2,-2)) then  //P2
              begin
                ProveedorGanador                := Proveedor2;
                ProveedorTiempoGanador          := TEntrega2;
                PrecioGanador                   := decPrecio2;
                CantidadCotizadaGanadora        := CantidadCotizada2;
                PGanadorCantidadC               := Proveedor2;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
              end
              else if (TEntrega1 = TEntrega2) and (RoundTo(decPrecio1,-2) = RoundTo(decPrecio2,-2)) then //P2
              begin
                if CantidadCotizada1 > CantidadCotizada2 then
                begin
                  ProveedorGanador                := Proveedor1;
                  ProveedorTiempoGanador          := TEntrega1;
                  PrecioGanador                   := decPrecio1;
                  CantidadCotizadaGanadora        := CantidadCotizada1;
                  PGanadorCantidadC               := Proveedor1;
                  CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
                end else
                if CantidadCotizada1 < CantidadCotizada2 then
                begin
                  ProveedorGanador                := Proveedor2;
                  ProveedorTiempoGanador          := TEntrega2;
                  PrecioGanador                   := decPrecio2;
                  CantidadCotizadaGanadora        := CantidadCotizada2;
                  PGanadorCantidadC               := Proveedor2;
                  CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
                end else
                if CantidadCotizada1 = CantidadCotizada2 then
                begin
                  //Antes debo sacar la cantidad de producto que se le compro a cada proveedor
                  if CantidadCompradaProveedor1 > CantidadCompradaProveedor2 then          //P1
                  begin
                    ProveedorGanador                := Proveedor1;
                    ProveedorTiempoGanador          := TEntrega1;
                    PrecioGanador                   := decPrecio1;
                    CantidadCotizadaGanadora        := CantidadCotizada1;
                    PGanadorCantidadC               := Proveedor1;
                    CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
                  end
                  else if CantidadCompradaProveedor1 < CantidadCompradaProveedor2 then     //P2
                  begin
                    ProveedorGanador                := Proveedor2;
                    ProveedorTiempoGanador          := TEntrega2;
                    PrecioGanador                   := decPrecio2;
                    CantidadCotizadaGanadora        := CantidadCotizada2;
                    PGanadorCantidadC               := Proveedor2;
                    CantidadCompradaProveedorGanador:= CantidadCompradaProveedor2;
                  end
                  else if CantidadCompradaProveedor1 = CantidadCompradaProveedor2 then    //P1
                  begin
                    ProveedorGanador                := Proveedor1;
                    ProveedorGanador                := TEntrega1;
                    PrecioGanador                   := decPrecio2;
                    CantidadCotizadaGanadora        := CantidadCotizada1;
                    PGanadorCantidadC               := Proveedor1;
                    CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
                  end
                end;
              end
              else if (TEntrega1 < TEntrega2) and (RoundTo(decPrecio1,-2) = RoundTo(decPrecio2,-2)) and (CantidadCotizada1 = CantidadCotizada2) and (CantidadCompradaProveedor1 = CantidadCompradaProveedor2) then    //P1
              begin
                ProveedorGanador        := Proveedor1;
                ProveedorTiempoGanador  := TEntrega1;
                PrecioGanador           := decPrecio1;
                CantidadCotizadaGanadora:= CantidadCotizada1;
                PGanadorCantidadC       := Proveedor1;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
              end
              else if (TEntrega1 = TEntrega2) and (RoundTo(decPrecio1,-2) < RoundTo(decPrecio2,-2)) then    //P1
              begin
                ProveedorGanador        := Proveedor1;
                ProveedorTiempoGanador  := TEntrega1;
                PrecioGanador           := decPrecio1;
                CantidadCotizadaGanadora:= CantidadCotizada1;
                PGanadorCantidadC       := Proveedor1;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
              end
              else if (TEntrega1 < TEntrega2) and (RoundTo(decPrecio1,-2) < RoundTo(decPrecio2,-2)) then    //P1
              begin
                ProveedorGanador        := Proveedor1;
                ProveedorTiempoGanador  := TEntrega1;
                PrecioGanador           := decPrecio1;
                CantidadCotizadaGanadora:= CantidadCotizada1;
                PGanadorCantidadC       := Proveedor1;
                CantidadCompradaProveedorGanador:= CantidadCompradaProveedor1;
              end;
            end;
          end else
          begin
            ProveedorGanador        := 0;
            ProveedorTiempoGanador  := 0;
            PrecioGanador           := 0;
            CantidadCotizadaGanadora:= 0;
            PGanadorCantidadC       := 0;
            CantidadCompradaProveedorGanador:= 0;
          end;
        end;
      end;
      if (ProveedorGanador > 0) then
      begin
        TEntrega2                 := ProveedorTiempoGanador; //Para tener un valor para comparar
        decPrecio2                := PrecioGanador;
        Proveedor2                := ProveedorGanador;
        CantidadCotizada2         := CantidadCotizadaGanadora;
        CantidadCompradaProveedor2:= CantidadCompradaProveedorGanador;
      end;
      inc(proveedor);
    end;
    //Despues de que se saco cual es el proveedor ideal
    for xx := 0 to ListaProveedoresFinal.ColCount - 1 do
    begin
      if ListaProveedoresFinal.Cells[0,xx] = IntToStr(Proveedor2) then encontro := True;
    end;
    if not encontro then
      ListaProveedoresFinal.Cells[0,(ListaProveedoresFinal.ColCount-1)] := IntToStr(Proveedor2);
    //Crear_Form(pnlComparaValores, 'Compara', 500, 1100, [biSystemMenu]);
    //Despues de saber cual es el proveedor debo ser capaz de seleccionar la celdas con los datos del proveedor
    for xx := 0 to ListaProveedoresFinal.ColCount - 1 do
    begin
      a:= StrToInt(ListaProveedoresFinal.Cells[0,xx]);  //Para sabe cual es el proveedor ganador
      if a > 0 then
      begin
        NombreColumna:= 'Proveedor' + formatfloat('00',a) + '_Seleccionado';     //Columna 10
        dsCotizador.Locate('sIdInsumo;iItem',VarArrayOf([insumo, items]),[]);    //Para posicionarse en el registro correcto
        dsCotizador.Edit;
        dsCotizador.FieldByName(NombreColumna).AsBoolean := True;
        dsCotizador.Post;
      end;
    end;
    /////// Fin de la seleccion del proveedor ///////
  end;
  dsCotizador.First;
end;

procedure TfrmAlmCotizacion.cmdCrearOCSClick(Sender: TObject);
(*Creo: Rafael
Descripcion: Procedimiento para crear un orden de compra despues de comparar los precios de n proveedores*)
var
  NombreColumna, cadena, Numdigitos: string;
  col, conteo, i:Integer;
  PrimeraVez, Alerta: Boolean;
  QryFolio: TZReadOnlyQuery;
begin
  if MSG_YN('Esta seguro que quiere crear la orden de compra?') then
  begin
    PrimeraVez := True;
    if dsAnexoPPedido.active then dsAnexoPPedido.EmptyDataSet   //Si ya esta activo solo lo limpio
    else                                                      //Si no esta activo
    begin
      dsAnexoPPedido.CreateDataSet;                            //Crea el dataset
      dsAnexoPPedido.Open;                                     //Abro la tabla
    end;

    QryFolio := TZReadOnlyQuery.Create(Self);
    QryFolio.Connection := Connection.zConnection;

    //Para la tabla Pedidos
    ZQAnexo_Pedido.Active := False;
    ZQAnexo_Pedido.Open;
    //Para la tabla PPedidos
    anexo_ppedido.Active:= True;
    anexo_ppedido.Open;
    dsProveedores.first;    //Se va al primer registro los proveedores
    while not dsProveedores.Eof do
    begin
      dsCotizador.First;                             //Iniciamos en el primer registro
      while not dsCotizador.Eof do                   //Mientras no sea final del archivo
      begin
        NombreColumna:= 'Proveedor' + formatfloat('00',(col+1)) + '_Seleccionado';     //Para armar el nombre de la columna
        if dsCotizador.FieldByName(NombreColumna).AsBoolean then  //Para validar que el ese proveedor tenga partidas asignadas
        begin
          try
            begin
              dsAnexoPPedido.Append;
              dsAnexoPPedido.FieldByName('sContrato').AsString        :=  global_contrato;
              dsAnexoPPedido.FieldByName('iFolioPedido').AsInteger    :=  0;
              dsAnexoPPedido.FieldByName('sIdInsumo').AsString        :=  dsCotizador.FieldByName('sIdInsumo').AsString;
              dsAnexoPPedido.FieldByName('iItem').AsInteger           :=  dsCotizador.FieldByName('iItem').AsInteger;
              dsAnexoPPedido.FieldByName('mDescripcion').AsString     :=  dsCotizador.FieldByName('NombreProducto').AsString;
              dsAnexoPPedido.FieldByName('sMedida').AsString          :=  dsCotizador.FieldByName('sMedida').AsString;
              NombreColumna:= 'Proveedor' + formatfloat('00',col+1) + '_iCantidadCotizada';
              dsAnexoPPedido.FieldByName('iCantidad').asInteger        :=  dsCotizador.FieldByName(NombreColumna).AsInteger;
              NombreColumna:= 'Proveedor' + formatfloat('00',col+1) + '_dPrecio';
              dsAnexoPPedido.FieldByName('dCosto').AsFloat            :=  dsCotizador.FieldByName(NombreColumna).AsFloat;
              dsAnexoPPedido.FieldByName('sNumeroActividad').AsString :=  'S/N';
              dsAnexoPPedido.FieldByName('sNumeroOrden').AsString     :=  anexo_requisicion.FieldByName('sNumeroOrden').AsString;
              dsAnexoPPedido.FieldByName('sStatus').AsString          :=  'Pendiente';
              dsAnexoPPedido.FieldByName('dDescuento').AsFloat        :=  0;
              dsAnexoPPedido.FieldByName('sNumeroSolicitud').AsString :=  '';
              dsAnexoPPedido.FieldByName('sIdAlmacen').AsString       :=  '';
              dsAnexoPPedido.FieldByName('dCostoDLL').AsFloat         :=  0;
              if ((dsAnexoPPedido.FieldByName('iCantidad').asInteger = 0)) or (RoundTo(dsAnexoPPedido.FieldByName('dCosto').AsFloat, -2) = RoundTo(0,-2)) then
                Abort;
              dsAnexoPPedido.Post;
            end;
          except
            on E: Exception do
            begin
              dsAnexoPPedido.Cancel;
            end;
          end;
        end;
        dsCotizador.next; //Para pasar al siguiente registro
      end;
      dsCotizador.First;
      (*Si al realizar el recorrido de todo los registros si encuentra una partida asignada a un
      proveedor creara la orden de compra*)
      if dsAnexoPPedido.RecordCount > 0 then
      begin
        try
          connection.zConnection.StartTransaction;  //Inicio de la transaccion
          FormaPago.Active    := False;
          FormaPago.open;
          Moneda.Active       := False;
          Moneda.Open;
          tsFormaPago.ItemIndex := 0;
          tsMoneda.ItemIndex    := 0;
          chkTipoCambio.Checked := False;
          chkTipoCambioPropertiesEditValueChanged(chkTipoCambio);
          if PrimeraVez then
          begin
            Crear_Form(Ventanas,'Detalle Orden de Compra', 180, 350, [], 0);
            //PrimeraVez := False;
          end;

          // Folio Orden de Compra
          QryFolio.Active:=False;
          QryFolio.SQL.Clear;
          QryFolio.SQL.Add('select sPrefijoOrdCompra, iNumOrdCompra from configuracion where scontrato = :contrato');
          QryFolio.ParamByName('contrato').AsString:=global_contrato;
          QryFolio.Open;

          Numdigitos:='';
          for i := 1 to QryFolio.FieldByName('iNumOrdCompra').AsInteger do
                  Numdigitos:=Numdigitos+'0';

          //Inicio del bloque de agregar en anexo_pedido
          ZQAnexo_Pedido.Append;
          ZQAnexo_Pedido.FieldByName('sContrato').AsString        := global_contrato;
          ZQAnexo_Pedido.FieldByName('iFolioPedido').AsInteger    := NextId('iFolioPedido','anexo_pedidos');
          ZQAnexo_Pedido.FieldByName('sOrdenCompra').AsString     := QryFolio.FieldByName('sPrefijoOrdCompra').AsString+'-'+formatfloat(Numdigitos,ZQAnexo_Pedido.FieldByName('iFolioPedido').AsInteger);
          ZQAnexo_Pedido.FieldByName('sFolioRequisicion').AsString:= anexo_requisicion.FieldByName('sNumFolio').AsString;
          ZQAnexo_Pedido.FieldByName('sIdProveedor').AsString     := dsProveedores.FieldByName('sIdProveedor').AsString;
          ZQAnexo_Pedido.FieldByName('sNumeroOrden').AsString     := anexo_requisicion.FieldByName('sNumeroOrden').AsString;
          ZQAnexo_Pedido.FieldByName('dIdFecha').AsDateTime       := Date;
          ZQAnexo_Pedido.FieldByName('dFechaEntrega').AsDateTime:= FloatToDateTime(0);
          ZQAnexo_Pedido.FieldByName('sReferencia').AsString      := anexo_requisicion.FieldByName('sReferencia').AsString;
          ZQAnexo_Pedido.FieldByName('sElaboro').AsString         := global_usuario;
          ZQAnexo_Pedido.FieldByName('sReviso1').AsString         := '';
          ZQAnexo_Pedido.FieldByName('sReviso2').AsString         := '';
          ZQAnexo_Pedido.FieldByName('sAutorizo').AsString        := '';
          //ZQAnexo_Pedido.FieldByName('sMedioTransporte').AsString := '';
          ZQAnexo_Pedido.FieldByName('sFormaPago').AsString       := tsFormaPago.EditValue;
          //ZQAnexo_Pedido.FieldByName('iPeriodoPago').AsInteger    := 0;
          //ZQAnexo_Pedido.FieldByName('lUnicoProveedor').AsString  := 'Si';
          ZQAnexo_Pedido.FieldByName('sMoneda').AsString          := tsMoneda.EditValue;
          if chkTipoCambio.Checked then
            ZQAnexo_Pedido.FieldByName('dCambio').AsFloat := tsTipoCambio.EditValue
          else
            ZQAnexo_Pedido.FieldByName('dCambio').AsFloat := 0;
          ZQAnexo_Pedido.FieldByName('mComentarios').AsString     := 'Orden de Compra generada por el cotizador';
          ZQAnexo_Pedido.FieldByName('sStatus').AsString          := 'PENDIENTE';
          ZQAnexo_Pedido.FieldByName('sLugarEntrega').AsString    := anexo_requisicion.FieldByName('sLugarEntrega').AsString;
          ZQAnexo_Pedido.FieldByName('sCondiciones').AsString     := '*';
          ZQAnexo_Pedido.FieldByName('dIVA').AsFloat              := 0;
          ZQAnexo_Pedido.FieldByName('dDescuento').AsFloat        := tDescuentoGral.EditValue;
          ZQAnexo_Pedido.FieldByName('sEntrega').AsString         := '0';
          ZQAnexo_Pedido.FieldByName('sPrecios').AsString         := '0';
          ZQAnexo_Pedido.FieldByName('sVigencia').AsString        := '';
          ZQAnexo_Pedido.FieldByName('sVendedor').AsString        := '*';
          ZQAnexo_Pedido.FieldByName('sMail').AsString            := '*';
          ZQAnexo_Pedido.FieldByName('eEntregado').AsString       := 'No';
          ZQAnexo_Pedido.Post;
          Guardar_Kardex(global_contrato, global_usuario, ('Se creo la orden de compra con folio: [' + ZQAnexo_Pedido.FieldByName('sOrdenCompra').AsString +  '] Registrado el [' + DateToStr(Date) +  '] Usuario [ ' + global_usuario + ']' ), 'Otros Movimientos');
          //Fin del bloque de agregar en anexo_pedido
          dsAnexoPPedido.First;
          while not dsAnexoPPedido.Eof do
          begin
            //Inicio del Bloque para agregar las partidas de la orden de compra
            anexo_ppedido.Append;
            anexo_ppedido.FieldByName('sContrato').AsString       := dsAnexoPPedido.FieldByName('sContrato').AsString;
            anexo_ppedido.FieldByName('iFolioPedido').AsInteger   := ZQAnexo_Pedido.FieldByName('iFolioPedido').AsInteger;
            anexo_ppedido.FieldByName('sIdInsumo').AsString       := dsAnexoPPedido.FieldByName('sIdInsumo').AsString;
            anexo_ppedido.FieldByName('iItem').AsInteger          := dsAnexoPPedido.FieldByName('iItem').AsInteger;
            anexo_ppedido.FieldByName('mDescripcion').AsString    := dsAnexoPPedido.FieldByName('mDescripcion').AsString;
            anexo_ppedido.FieldByName('sMedida').AsString         := dsAnexoPPedido.FieldByName('sMedida').AsString;
            anexo_ppedido.FieldByName('dCantidad').asFloat        :=   dsAnexoPPedido.FieldByName('iCantidad').AsFloat;
            if ZQAnexo_Pedido.FieldValues['dCambio'] > 0 then
              anexo_ppedido.FieldByName('dCosto').AsFloat := (dsAnexoPPedido.FieldByName('dCosto').AsFloat*ZQAnexo_Pedido.FieldByName('dCambio').AsFloat)
            else
              anexo_ppedido.FieldByName('dCosto').AsFloat := dsAnexoPPedido.FieldByName('dCosto').AsFloat;
            anexo_ppedido.FieldByName('sNumeroActividad').AsString:= dsAnexoPPedido.FieldByName('sNumeroActividad').AsString;
            anexo_ppedido.FieldByName('sNumeroOrden').AsString    := dsAnexoPPedido.FieldByName('sNumeroOrden').AsString;
            anexo_ppedido.FieldByName('sStatus').AsString         := dsAnexoPPedido.FieldByName('sStatus').AsString;
            anexo_ppedido.FieldByName('dDescuento').AsFloat       := dsAnexoPPedido.FieldByName('dDescuento').AsFloat;
            //anexo_ppedido.FieldByName('sNumeroSolicitud').AsString:= dsAnexoPPedido.FieldByName('sNumeroSolicitud').AsString;
            anexo_ppedido.FieldByName('sIdAlmacen').AsString      := dsAnexoPPedido.FieldByName('sIdAlmacen').AsString;
            //anexo_ppedido.FieldByName('dCostoDLL').AsFloat        := dsAnexoPPedido.FieldByName('dCostoDLL').AsFloat;
            anexo_ppedido.Post;
            //Guardar_Kardex(global_contrato, global_usuario, ('Registro de la orden de compra: [' + ZQAnexo_Pedido.FieldByName('sOrdenCompra').AsString +  '] Registrado el [' + DateToStr(Date) +  '] Usuario [ ' + global_usuario + ']' ), 'Otros Movimientos');
            //Fin del Bloque para agregar las partidas de la orden de compra
            dsAnexoPPedido.Next;
          end;
          connection.zConnection.Commit;
          cadena := 'Orden de Compra Creada Exitosamente';
          Alerta:= False;

          //Ahora consultamos cuales partidas estan pendientes para seguir mostrando o no la requisicion..
          Connection.zCommand.Active := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('select * from anexo_prequisicion ' +
            'WHERE sContrato =:Contrato And iFolioRequisicion =:Folio ');
          Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
          Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
          Connection.zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['sNumFolio'];
          Connection.zcommand.Open;

          conteo := 0;
          while not connection.zCommand.Eof do
          begin
            if connection.zCommand.FieldValues['sEstado'] <> 'PENDIENTE' then
              inc(conteo);
            connection.zCommand.Next;
          end;

          if conteo = connection.zCommand.RecordCount then
          begin
            Connection.zCommand.Active := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('Update anexo_requisicion set sEstado = "ACEPTADA" ' +
              'WHERE sContrato =:Contrato And sNumFolio =:Folio ');
            Connection.zcommand.Params.ParamByName('Contrato').DataType := ftString;
            Connection.zcommand.Params.ParamByName('Contrato').value := Global_Contrato;
            Connection.zcommand.Params.ParamByName('Folio').DataType := ftString;
            Connection.zcommand.Params.ParamByName('Folio').value := anexo_requisicion.FieldValues['sNumFolio'];
            Connection.zcommand.ExecSQL;
          end;

        except
          on E: Exception do
          begin
            MSG_W('Ocurrio un error: ' + E.Message + e.ClassName);
            connection.zConnection.Rollback;
          End;
        end;
      end else
      begin
        //Cadena := 'No hay información suficiente para crear la orden de compra';
        Alerta := True;
      end;
      dsAnexoPPedido.EmptyDataSet;
      dsProveedores.Next;
      Inc(col);
    end;
    if Alerta then MSG_W(cadena)
    else MSG_OK(cadena);
    Llenar_Grid_Compara;
  end;
end;

procedure TfrmAlmCotizacion.cmdLimpiarClick(Sender: TObject);
begin
  Llenar_Grid_Compara;
end;

procedure TfrmAlmCotizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmAlmCotizacion.FormCreate(Sender: TObject);
begin
  THeight := frmAlmCotizacion.Height;
  TWidth  := frmAlmCotizacion.Width;
end;

procedure TfrmAlmCotizacion.FormResize(Sender: TObject);
begin
  if   THeight < frmAlmCotizacion.Height then BView_Cotizacion.OptionsView.ColumnAutoWidth := True
  else if THeight >= frmAlmCotizacion.Height then BView_Cotizacion.OptionsView.ColumnAutoWidth := False;
end;

procedure TfrmAlmCotizacion.FormShow(Sender: TObject);
begin
  try
    //Para cargar los detalles de la cotizacion
    ZQalm_cotizacion_detalle.Active := false;
    ZQalm_cotizacion_detalle.Open;

    //Para cargar las cotizaciones
    ZQalm_cotizacion.Active := false;
    ZQalm_cotizacion.ParamByName('Contrato').AsString := global_contrato;
    isActivo := False;
    ZQalm_cotizacion.Open;
    isActivo := True;

    //Para cargar las requisiciones
    anexo_requisicion.Active := False;
    anexo_requisicion.ParamByName('sContrato').AsString := global_contrato;
    isRequisicion := False;
    anexo_requisicion.Open;
    isRequisicion := True;
    anexo_requisicionAfterScroll(anexo_requisicion);
  except
    on e: exception do
    ShowMessage(e.Message + ' Clase:' + e.ClassName);
  end;
end;

procedure TfrmAlmCotizacion.frxCotizacionGetValue(const VarName: string;
  var Value: Variant);
var
  zConsulta: TZQuery;
  sSQL: string;
begin
  sSQL := 'SELECT sFirmante14 FROM firmas WHERE sContrato = :contrato AND dIdFecha <= :fecha ORDER BY dIdFecha DESC';
  zConsulta := TZQuery.Create(self);
  zConsulta.Connection := connection.zConnection;
  zConsulta.Active := False;
  zConsulta.SQL.Clear;
  zConsulta.SQL.Add(sSQL);
  zConsulta.Params.ParamByName('contrato').DataType := ftString;
  zConsulta.Params.ParamByName('contrato').Value    := global_contrato;
  zConsulta.Params.ParamByName('fecha').DataType    := ftDate;
  zConsulta.Params.ParamByName('fecha').Value       := Date;
  zConsulta.Open;
  if zConsulta.RecordCount > 0 then
  begin
    if CompareText(VarName, 'REALIZO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante14'];
  end
  else
  begin
    if CompareText(VarName, 'REALIZO_FIRMA') = 0 then
      Value := '';
  end;
  zConsulta.free;
end;

procedure TfrmAlmCotizacion.Grid_CotizacionesResize(Sender: TObject);
begin
  if   THeight < frmAlmCotizacion.Height then BView_Cotizacion.OptionsView.ColumnAutoWidth := True
  else if THeight >= frmAlmCotizacion.Height then BView_Cotizacion.OptionsView.ColumnAutoWidth := False;
end;

procedure TfrmAlmCotizacion.dxbrbtn1Click(Sender: TObject);
var
  ACotizacion, QRArchivo: TZQuery;
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No hay cotizaciones para eliminar.');
    Exit;
  end;
  if ZQalm_cotizacion.FieldByName('sStatus').AsString <> 'Pendiente' then
  begin
    MSG_W('No se puede eliminar la cotizacion por que tiene el estatus de: '+ZQalm_cotizacion.FieldByName('sStatus').AsString);
    Exit;
  end;
  if not MSG_YN('Esta seguro que quiere eliminar la cotización?') then Exit;
  //Para quitar los detales de la cotizacion
  ACotizacion := TZQuery.Create(nil);
  ACotizacion.Connection:= connection.zConnection;
  ACotizacion.Active    := False ;
  ACotizacion.SQL.Clear;
  ACotizacion.SQL.Add('delete from alm_cotizacion_detalle where (iIdCotizacion = :iIdCotizacion)');
  ACotizacion.ParamByName('iIdCotizacion').asInteger    := ZQalm_cotizacion.FieldByName('iIdCotizacion').AsInteger;
  ACotizacion.ExecSQL;
  ACotizacion.destroy;
  //Para quitar los archivos de la tabla con_files que tiene referencia a la cotizacion
  Eliminar_Documento;
  ZQalm_cotizacion.Delete;  //Para quitar la cotizacion
end;

procedure TfrmAlmCotizacion.btnInsertar(Sender: TObject);
begin
  bandera_formulario := 'frmRequisicionGen'; //Para saber de que formulario es llamado
  Application.CreateForm(TfrmRequisicionGen, frmRequisicionGen);
  frmRequisicionGen.ShowModal;
  ZQalm_cotizacion_detalle.Refresh;
  ZQalm_cotizacion.Refresh;
end;

procedure TfrmAlmCotizacion.dxbrbtnCompararCotizacion1Click(Sender: TObject);
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No hay cotizaciones para comparar');
    Exit;
  end;
  if (BView_Cotizacion.DataController.GetSelectedCount<2) or (BView_Cotizacion.DataController.GetSelectedCount>3) then
  begin
    MSG_W('Seleccione 2 o 3 cotizaciones para comparar');
    Exit;
  end;

  Llenar_Grid_Compara;
  if not Terminar then //Exit;      //Para abortar el ciclo
    Crear_Form(Ventanas, 'Analisis de Cotizaciones', 500, 1100, [biSystemMenu],4); //Creo el panel en tiempo de ejecucion
  ZQalm_cotizacion_detalle.First;
end;

procedure TfrmAlmCotizacion.Llenar_Grid_Compara;
var
  f, c, Seleccionado, col, I, colum, TBanda: integer;
  nombre, NombreColumna: string;
  gForma: TForm;
begin
  BView_Compara.DataController.DataSource := nil;
  Crear_Estructura; //Para crear las columnas del cxgrid y los campos del cliendateset
  if Terminar then Exit;  //Si hay un erro en la generacion de la estructura termina el proceso
  //Se llena el clientedataset
  if not dsCotizador.active then dsCotizador.CreateDataSet;             //si no esta activo Crea el dataset
  dsCotizador.Open;                                                     //Abro la tabla
  dsProveedores.first;    //Se va al primer registro los proveedores
  col := 1;
  while not dsProveedores.Eof do
  begin
    //Para localizar la cotizacion y poder agregar sus partidas
    ZQalm_cotizacion.Locate('iIdCotizacion', dsProveedores.fieldbyname('iIdCotizacion').AsInteger,[]);
    ZQalm_cotizacion_detalle.First;         //Se va primer registro
    while not ZQalm_cotizacion_detalle.Eof do    //Mientras no sea final de archivo
    begin
      //Busco el registro en el cliendataset dsCotizador
      if not dsCotizador.Locate('sIdInsumo;iItem',VarArrayOf([ZQalm_cotizacion_detalle.fieldbyname('sIdInsumo').asString , ZQalm_cotizacion_detalle.fieldbyname('iItem').AsInteger]),[]) then
      begin //Si no lo encuentra agrega la partida junto y los datos del proveedor
        //Llenos los campos basicos del producto cotizado
        dsCotizador.Append;    //Se abre la tabla
        dsCotizador.fieldbyname('sIdInsumo').asString         := ZQalm_cotizacion_detalle.fieldbyname('sIdInsumo').asString;
        dsCotizador.fieldbyname('NombreProducto').asString    := ZQalm_cotizacion_detalle.fieldbyname('NombreProducto').asString;
        dsCotizador.fieldbyname('iCantidad').asInteger        := ZQalm_cotizacion_detalle.fieldbyname('iCantidad').asInteger;
        dsCotizador.fieldbyname('sMedida').asString           := ZQalm_cotizacion_detalle.fieldbyname('sMedida').asString;
        dsCotizador.fieldbyname('dFechaSolicitado').AsDateTime:= ZQalm_cotizacion_detalle.fieldbyname('dFechaSolicitado').AsDateTime;
        dsCotizador.fieldbyname('dFechaRequerida').AsDateTime := ZQalm_cotizacion_detalle.fieldbyname('dFechaRequerida').AsDateTime;
        dsCotizador.fieldbyname('iItem').AsInteger            := ZQalm_cotizacion_detalle.fieldbyname('iItem').AsInteger;
        //Para llenar la informacion de las cotizaciones de los proveedores
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_sIdProveedor';  //Para el Id del Proveedor
        dsCotizador.fieldbyname(NombreColumna).AsString       := dsProveedores.fieldbyname('sIdProveedor').AsString;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_sNombreProveedor';  //Para el Id del Proveedor
        dsCotizador.fieldbyname(NombreColumna).AsString       := dsProveedores.fieldbyname('NombreProveedor').AsString;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_iCantidadCotizada'; //Para la cantidad cotizada
        dsCotizador.fieldbyname(NombreColumna).asInteger      := ZQalm_cotizacion_detalle.fieldbyname('iCantidadCotizada').asInteger;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_dPrecio'; //Para crear el campo de precio
        dsCotizador.fieldbyname(NombreColumna).AsFloat          := ZQalm_cotizacion_detalle.fieldbyname('dPrecio').asFloat;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_iTiempoEntrega';  //Para crear el campo de tiempo de entrega
        dsCotizador.fieldbyname(NombreColumna).AsInteger := ZQalm_cotizacion_detalle.fieldbyname('iTiempoEntrega').AsInteger;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_dTotal'; //Para crear el campo de tiempo de entrega
        dsCotizador.fieldbyname(NombreColumna).AsFloat       := (ZQalm_cotizacion_detalle.fieldbyname('iCantidadCotizada').asInteger)*(ZQalm_cotizacion_detalle.fieldbyname('dPrecio').asFloat);
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_Seleccionado'; //Para crear el campo de tiempo de entrega
        dsCotizador.fieldbyname(NombreColumna).AsBoolean         := False;
        dsCotizador.Post;      //Se guardan los datos
      end else
      begin
        //Si lo encuentra la partida y el item solo que actualice los datos del proveedor
        dsCotizador.Edit;   //Se edita el registro
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_sIdProveedor';
        dsCotizador.fieldbyname(NombreColumna).AsString       := dsProveedores.fieldbyname('sIdProveedor').AsString;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_sNombreProveedor';
        dsCotizador.fieldbyname(NombreColumna).AsString       := dsProveedores.fieldbyname('NombreProveedor').AsString;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_iCantidadCotizada';
        dsCotizador.fieldbyname(NombreColumna).asInteger      := ZQalm_cotizacion_detalle.fieldbyname('iCantidadCotizada').asInteger;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_dPrecio';
        dsCotizador.fieldbyname(NombreColumna).AsFloat          := ZQalm_cotizacion_detalle.fieldbyname('dPrecio').asFloat;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_iTiempoEntrega';
        dsCotizador.fieldbyname(NombreColumna).AsInteger := ZQalm_cotizacion_detalle.fieldbyname('iTiempoEntrega').AsInteger;
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_dTotal';
        dsCotizador.fieldbyname(NombreColumna).AsFloat         := (ZQalm_cotizacion_detalle.fieldbyname('iCantidadCotizada').asInteger)*(ZQalm_cotizacion_detalle.fieldbyname('dPrecio').asFloat);
        NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_Seleccionado';
        dsCotizador.fieldbyname(NombreColumna).AsBoolean      := False;
        dsCotizador.Post;     //Se guarda el cambio
      end;
      ZQalm_cotizacion_detalle.Next;   //Se pasa a la siguiente partida
    end;
    Inc(col);  //Incremento la siguiente columna para el proveedor
    dsProveedores.Next;  //Se pasa al siguiente registro del proveedor
  end;
  BView_Compara.DataController.DataSource := dscdCotizador;
  dsCotizador.First;
end;

procedure TfrmAlmCotizacion.Crear_Estructura;
var
  f, c, Seleccionado, col, I, colum, TBanda, xx: integer;
  nombre, NombreColumna: string;
  gForma: TForm;
  encontro: Boolean;
  iIdCotizacion, iIdRequisicion, iCantidadC, Errores : Integer;
  sIdProveedor, NombreProveedor, sStatus : string;
begin
  //try
  ZQProveedores.active := False;
  ZQProveedores.Open;
  Errores := 0;
  //Para guardar los datos que necesito para generar la cotizacion
  if dsProveedores.active then dsProveedores.EmptyDataSet   //Si ya esta activo solo lo limpio
  else                                                      //Si no esta activo
  begin
    dsProveedores.CreateDataSet;                            //Crea el dataset
    dsProveedores.Open;                                     //Abro la tabla
  end;
  {Procedimiento para llenar el cliendataset que necesito para llenar los proveedores}
  with BView_Cotizacion.DataController.DataSource.DataSet do
  for f := 0 to (BView_Cotizacion.DataController.GetSelectedCount - 1) do
  begin
    c := 0;  //Para que inicie en la primera columna
    while c < BView_Cotizacion.ColumnCount do   //Para identificar la columna que necesito
    begin
      if BView_Cotizacion.Columns[c].DataBinding.FieldName       = 'iIdCotizacion'  then
        iIdCotizacion := StrToInt(BView_Cotizacion.Controller.SelectedRows[f].Values[c])
      else if BView_Cotizacion.Columns[c].DataBinding.FieldName  = 'iIdRequisicion' then
        iIdRequisicion:= StrToInt(BView_Cotizacion.Controller.SelectedRows[f].Values[c])
      else if BView_Cotizacion.Columns[c].DataBinding.FieldName  = 'sIdProveedor'   then
        sIdProveedor   := BView_Cotizacion.Controller.SelectedRows[f].Values[c]
      else if BView_Cotizacion.Columns[c].DataBinding.FieldName  = 'NombreProveedor'then
        NombreProveedor:= BView_Cotizacion.Controller.SelectedRows[f].Values[c]
      //else if BView_Cotizacion.Columns[c].DataBinding.FieldName  = 'iCantidadC'then
      //  iCantidadC := StrToInt(BView_Cotizacion.Controller.SelectedRows[f].Values[c])
      else if BView_Cotizacion.Columns[c].DataBinding.FieldName  = 'sStatus'then
        sStatus := BView_Cotizacion.Controller.SelectedRows[f].Values[c];
      inc(c);
    end;
    //if sStatus <> 'Autorizado' then inc(Errores);
    if sStatus <> 'Validado' then
    begin
      MSG_W('Solo se pueden comparar cotizaciones con el estatus de "Validado"');
      Terminar := True;
      Exit;
    end;
    if not dsProveedores.Locate('sIdProveedor',sIdProveedor, []) then
    begin
      dsProveedores.Append;
      dsProveedores.FieldByName('iIdCotizacion').AsInteger  := iIdCotizacion;
      dsProveedores.FieldByName('iIdRequisicion').AsInteger := iIdRequisicion;
      dsProveedores.FieldByName('sIdProveedor').AsString    := sIdProveedor;
      dsProveedores.FieldByName('NombreProveedor').AsString := NombreProveedor;
      (*if ZQProveedores.Locate('sIdProveedor', sIdProveedor, []) then
        iCantidadC := ZQProveedores.FieldByName('iCantidadC').AsInteger
      else iCantidadC := 0;*)
      dsProveedores.FieldByName('iCantidadC').AsInteger     := iCantidadC;
      dsProveedores.Post;
    end else
    begin
      MSG_W('A seleccionado 2 veces el mismo proveedor. verifique la información');
      Terminar := True;
      Exit;
    end;
    Terminar := False;
  end;
  dsProveedores.IndexFieldNames:='iIdCotizacion';   //Para ordenarlo por proveedor
  dsProveedores.First; //Me posiciono en el primer registro
  (*if Errores > 0 then
  begin
    MSG_W('Solo se pueden comparar cotizaciones Autorizadas');
    Terminar := True;
    Exit;
  end; *)
  (*Creo el dataset que me servira para guardar la informacion de los proveedores y sus partidas*)
  {Realizo un ciclo para crear todas las columnas para los proveedores
  Creo 6 columnas por cada proveedor que encuentra}
  if dsCotizador.active then                //Si el clientdataset esta activo
  begin
    BView_Compara.ClearItems;      //Borro todos los item del grid
    BView_Compara.Bands.Clear;     //Borro todas las bandas del grid
    dsCotizador.EmptyDataSet;
    dsCotizador.fielddefs.Clear;            //Borra todos los field del cliendataset
    dsCotizador.Close;                                  //Lo cierra
  end;
  colum := 0;                               //Empieza de la columna 0
  //Se crean las columnas y los field de el cliendataset
  BView_Compara.Bands.Add;                                                    //Agrego una banda
  TBanda := BView_Compara.Bands.RootItemCount - 1;                            //Saco cuantas bandas estan creadas
  BView_Compara.Bands.Items[TBanda].Caption := 'Articulo Cotizado';           //Le cambia el nombre a la banda
  //Se crean las fields del cliendataset y cxgrid
  //Se crea la de Nombre Producto
  dsCotizador.fielddefs.add('NombreProducto', ftString, 500, false);                    //Columna 0
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'NombreProducto';
  BView_Compara.Columns[colum].Caption               := 'Articulo';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'NombreProducto';
  BView_Compara.Columns[colum].Width                 := 300;
  BView_Compara.Columns[colum].Options.Editing       := False;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);  //Se incrementa el id de la columna
  //Se crea la de sIdInsumo
  dsCotizador.fielddefs.add('sIdInsumo', ftString, 25, false);                          //Columna 1
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'sIdInsumo';
  BView_Compara.Columns[colum].Caption               := 'Clave';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'sIdInsumo';
  BView_Compara.Columns[colum].Width                 := 100;
  BView_Compara.Columns[colum].Visible               := True;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);
  //Se crea la columna de iCantidad
  dsCotizador.fielddefs.add('iCantidad', ftInteger, 0, false);                            //Columna 2
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'iCantidad';
  BView_Compara.Columns[colum].Caption               := 'Cantidad';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'iCantidad';
  BView_Compara.Columns[colum].Width                 := 50;
  BView_Compara.Columns[colum].Options.Editing       := False;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);
  //Se crea la unidad de medida
  dsCotizador.fielddefs.add('sMedida', ftString, 8, false);                             //Columna 3
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'sMedida';
  BView_Compara.Columns[colum].Caption               := 'Unidad';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'sMedida';
  BView_Compara.Columns[colum].Width                 := 50;
  BView_Compara.Columns[colum].Options.Editing       := False;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);
  //Se crea la el campo fecha de solicitud
  dsCotizador.fielddefs.add('dFechaSolicitado', ftDate, 0, false);                      //Columna 4
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'dFechaSolicitado';
  BView_Compara.Columns[colum].Caption               := 'Fecha Solicitud';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'dFechaSolicitado';
  BView_Compara.Columns[colum].Width                 := 80;
  BView_Compara.Columns[colum].Options.Editing       := False;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);
  //Se crea la fecha_requerida
  dsCotizador.fielddefs.add('dFechaRequerida', ftDate, 0, false);                       //Columna 5
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'dFechaRequerida';
  BView_Compara.Columns[colum].Caption               := 'Fecha Requerida';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'dFechaRequerida';
  BView_Compara.Columns[colum].Width                 := 90;
  BView_Compara.Columns[colum].Options.Editing       := False;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);
  //Se crea la de items
  dsCotizador.fielddefs.add('iItem', ftInteger, 0, false);                              //Columna 6
  BView_Compara.CreateColumn;
  BView_Compara.Columns[colum].Name                  := 'BView_Compara'+'iItems';
  BView_Compara.Columns[colum].Caption               := 'Item';
  BView_Compara.Columns[colum].DataBinding.FieldName := 'iItem';
  BView_Compara.Columns[colum].Width                 := 30;
  BView_Compara.Columns[colum].Options.Editing       := False;
  BView_Compara.Columns[colum].Visible               := True;
  BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
  Inc(colum);
  //Bloque para agregar los proveedores a las columnas
  col := 1;
  dsProveedores.First;              //Se va al primer registro
  while not dsProveedores.Eof do    //Mientras no sea final de archivo
  begin
    //for xx := 0 to ListaProveedoresFinal.ColCount - 1 do
    //begin
    //  if ListaProveedoresFinal.Cells[0,xx] = dsProveedores.FieldByName('sIdProveedor').AsString then encontro := True;
    //end;
    //if not encontro then
    //begin
      ListaProveedoresFinal.Cells[0,(ListaProveedoresFinal.ColCount-1)] := dsProveedores.FieldByName('sIdProveedor').AsString;
      ListaProveedoresFinal.ColCount := ListaProveedoresFinal.ColCount + 1;
      //Para crear el campo de Nombre Proveedor
      BView_Compara.Bands.Add;
      TBanda := BView_Compara.Bands.RootItemCount-1;
      BView_Compara.Bands.Items[TBanda].Caption := dsProveedores.FieldByName('NombreProveedor').AsString;
      //Se crea la columna para el sIdProveedor
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_sIdProveedor';         //Columna 7
      dsCotizador.fielddefs.add(NombreColumna, ftString, 25, false);
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_sNombreProveedor';         //Columna 7
      dsCotizador.fielddefs.add(NombreColumna, ftString, 25, false);
      BView_Compara.CreateColumn;
      BView_Compara.Columns[colum].Name                  := 'BView_Compara'+NombreColumna;
      BView_Compara.Columns[colum].Caption               := 'ID Proveedor';
      BView_Compara.Columns[colum].DataBinding.FieldName := NombreColumna;
      BView_Compara.Columns[colum].Width                 := 100;
      BView_Compara.Columns[colum].Visible               := False;
      BView_Compara.Columns[colum].Options.Editing       := False;
      BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
      Inc(colum);
      //Se crea la columna de cantidad
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_iCantidadCotizada';         //Columna 8
      dsCotizador.fielddefs.add(NombreColumna, ftInteger, 0, false);
      BView_Compara.CreateColumn;
      BView_Compara.Columns[colum].Name                  := 'BView_Compara'+NombreColumna;
      BView_Compara.Columns[colum].Caption               := 'Cantidad Cotizada';
      BView_Compara.Columns[colum].DataBinding.FieldName := NombreColumna;
      BView_Compara.Columns[colum].Width                 := 100;
      BView_Compara.Columns[colum].Options.Editing       := False;
      BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
      Inc(colum);
      //Para crear el campo de precio
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_dPrecio';                   //Columna 9
      dsCotizador.fielddefs.add(NombreColumna, ftFloat, 0, false);
      BView_Compara.CreateColumn;
      BView_Compara.Columns[colum].Name                  := 'BView_Compara'+NombreColumna;
      BView_Compara.Columns[colum].Caption               := 'Precio';
      BView_Compara.Columns[colum].DataBinding.FieldName := NombreColumna;
      BView_Compara.Columns[colum].Width                 := 50;
      BView_Compara.Columns[colum].Options.Editing       := False;
      BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
      Inc(colum);
      //Para crear el campo de tiempo de entrega
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_iTiempoEntrega';            //Columna 10
      dsCotizador.fielddefs.add(NombreColumna, ftInteger, 0, false);
      BView_Compara.CreateColumn;
      BView_Compara.Columns[colum].Name                  := 'BView_Compara'+NombreColumna;
      BView_Compara.Columns[colum].Caption               := 'Tiempo Entrega';
      BView_Compara.Columns[colum].DataBinding.FieldName := NombreColumna;
      BView_Compara.Columns[colum].Width                 := 90;
      BView_Compara.Columns[colum].Options.Editing       := False;
      BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
      Inc(colum);
      //Para crear el campo de tiempo de entrega
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_dTotal';                    //Columna 11
      dsCotizador.fielddefs.add(NombreColumna, ftfloat, 0, false);
      BView_Compara.CreateColumn;
      BView_Compara.Columns[colum].Name                  := 'BView_Compara'+NombreColumna;
      BView_Compara.Columns[colum].Caption               := 'Total';
      BView_Compara.Columns[colum].DataBinding.FieldName := NombreColumna;
      BView_Compara.Columns[colum].Width                 := 50;
      BView_Compara.Columns[colum].Options.Editing       := False;
      BView_Compara.Columns[colum].Position.BandIndex    := TBanda;
      Inc(colum);
      //Para crear el campo de seleccionado que es para definir si el proveedor
      //Es la mejor opcion o no
      NombreColumna:= 'Proveedor' + formatfloat('00',col) + '_Seleccionado';                    //Columna 12
      dsCotizador.fielddefs.add(NombreColumna, ftBoolean, 0, false);
      BView_Compara.CreateColumn;
      BView_Compara.Columns[colum].Options.Editing             := True;
      BView_Compara.Columns[colum].Name                        := 'BView_Compara'+NombreColumna;
      BView_Compara.Columns[colum].Caption                     := 'Asignado';
      BView_Compara.Columns[colum].DataBinding.FieldName       := NombreColumna;
      BView_Compara.Columns[colum].Width                       := 60;
      BView_Compara.Columns[colum].PropertiesClassName         := 'TcxCheckBoxProperties';
      with (BView_Compara.GetColumnByFieldName(NombreColumna).Properties as TcxCheckBoxProperties) do
      begin
        NullStyle     := nssUnchecked;
        ValueChecked  := True;
        ValueUnchecked:= False;
      end;
      BView_Compara.Columns[colum].Properties.ImmediatePost    := True;
      BView_Compara.Columns[colum].Position.BandIndex          := TBanda;
      BView_Compara.Columns[colum].Styles.Content  := OpcionSistema;
      Inc(colum);
      Inc(col);
    //end;
    dsProveedores.Next;
  end;
  if dsProveedores.RecordCount<3 then
  begin
    dsCotizador.fielddefs.add('Proveedor03_sIdProveedor', ftString, 25, false);
    dsCotizador.fielddefs.add('Proveedor03_sNombreProveedor', ftString, 25, false);
    dsCotizador.fielddefs.add('Proveedor03_dPrecio', ftFloat, 0, false);
    dsCotizador.fielddefs.add('Proveedor03_Seleccionado', ftBoolean, 0, false);
  end;
  BView_Compara.OptionsView.CellAutoHeight := True;
  Grid_Compara.Align := alClient;    //Para que el grid ocupe todo el formulario
  (*except
      on E: Exception do
      begin
        //MSG_ER('Ocurrio un error: ' + E.Message + e.ClassName);
        MSG_W('A selecionado 2 veces al proveedor:'+sIdProveedor+', verique la informacion');
      End;
    End;*)
end;

procedure TfrmAlmCotizacion.cxButton4Click(Sender: TObject);
begin
  PopupExportar.PopupAtCursor;
end;

procedure TfrmAlmCotizacion.cxButton7Click(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_ALMComparaPrecios.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMComparaPrecios.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

  frxCotizacion.LoadFromFile (global_files + global_miReporte +'_ALMComparaPrecios.fr3');
  frxCotizacion.ShowReport();
end;

procedure TfrmAlmCotizacion.cxJPEGClick(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
begin
  TipoArchivo := 'JPEG';
  if (ZQalm_cotizacion.RecordCount>0) or (ZQalm_cotizacion.State=DsInsert ) then
  begin
    QFile.Active:=false;
    if ZQalm_cotizacion.State=DsInsert then
      QFile.paramByname('Folio').AsInteger:=-1
    else
      QFile.paramByname('Folio').AsInteger:= ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;

    QFile.paramByname('Movimiento').AsString:= 'Cotizaciones';
    QFile.paramByname('TipoFile').AsString  :='JPEG';
    QFile.open;

    if (QFile.RecordCount = 0) and (ZQalm_cotizacion.state in [dsBrowse]) then
    begin
      MSG_W('No hay registros para mostrar');
      Exit;
    end;

    application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
    try
      if ZQalm_cotizacion.State=DsInsert then
        FrmVisorPdf.Mode:=VsInsercion;

      if ZQalm_cotizacion.State=DsEdit then
        if QFile.RecordCount=0 then
          FrmVisorPdf.Mode:=VsInsercion
        else
        begin
          FrmVisorPdf.Mode:=VsEdicion;
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;

      if ZQalm_cotizacion.State=DsBrowse then
      begin
        if QFile.RecordCount=0 then
          FrmVisorPdf.Mode:=VsInsercion
        else
          FrmVisorPdf.Mode:=VsLectura;

        if QFile.Recordcount>0 then
        begin
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;
      end;

      FrmVisorPdf.TipoFile:=smJPeg;
      FrmVisorPdf.Caption := 'Visor de JPEG';
      if FrmVisorPdf.showmodal=mrOk then
      begin
        if ZQalm_cotizacion.State in [DsInsert,DsEdit]  then
        begin
          begin
            mapdato:=IData.Create;
            if ZQalm_cotizacion.State = dsInsert then
              mapdato.IdDb:=-1
            else
              if QFile.RecordCount=0 then
                 mapdato.IdDb:=-1
              else
                mapdato.IdDb:=QFile.fieldByname('iIdFile').asinteger;

            mapdato.sNameFile:=FrmVisorPdf.FileName;
            mapdato.sTypeFile:='JPEG';

            IndReg:=ListaFiles.IndexOf(mapdato.sTypeFile);
            if IndReg=-1 then
            begin
              ListaFiles.AddObject(mapdato.sTypeFile,mapdato);
            end
            else
            begin
              ListaFiles.Delete(IndReg);
              ListaFiles.AddObject(mapdato.sTypeFile,mapdato);
            end;
          end;
        end;
      end;
    finally
      FrmVisorPdf.destroy;
      QFile.close;
    end;
  end;
end;

procedure TfrmAlmCotizacion.cxPDFClick(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
begin
  TipoArchivo := 'PDF';
  if (ZQalm_cotizacion.RecordCount>0) or (ZQalm_cotizacion.State=DsInsert ) then
  begin
    QFile.Active:=false;
    if ZQalm_cotizacion.State=DsInsert then
      QFile.paramByname('Folio').AsInteger:=-1
    else
      QFile.paramByname('Folio').AsInteger:= ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;

    //QFile.paramByname('Folio').AsInteger:=
    QFile.paramByname('Movimiento').AsString:= 'Cotizaciones';
    QFile.paramByname('TipoFile').AsString:='PDF';
    QFile.open;

    if (QFile.RecordCount = 0) and (ZQalm_cotizacion.state in [dsBrowse]) then
    begin
      MSG_W('No hay registros para mostrar');
      Exit;
    end;

    application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
    try
      if ZQalm_cotizacion.State=DsInsert then
        FrmVisorPdf.Mode:=VsInsercion;

      if ZQalm_cotizacion.State=DsEdit then
      begin
        if QFile.RecordCount=0 then
          FrmVisorPdf.Mode:=VsInsercion
        else
        begin
          FrmVisorPdf.Mode:=VsEdicion;
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;
      end;

      if ZQalm_cotizacion.State=DsBrowse then
      begin
        if QFile.RecordCount=0 then
          FrmVisorPdf.Mode:=VsInsercion
        else
          FrmVisorPdf.Mode:=VsLectura;

        if QFile.Recordcount>0 then
        begin
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;
      end;

      FrmVisorPdf.TipoFile:=smPdf;
      FrmVisorPdf.Caption := 'Visor de PDF';
      if FrmVisorPdf.showmodal=mrOk then
      begin
        if ZQalm_cotizacion.State in [DsInsert,DsEdit]  then
        begin
          begin
            mapdato:=IData.Create;
            if ZQalm_cotizacion.State = dsInsert then
              mapdato.IdDb:=-1
            else
              if QFile.RecordCount=0 then
                 mapdato.IdDb:=-1
              else
                mapdato.IdDb:=QFile.fieldByname('iIdFile').asinteger;

            mapdato.sNameFile:=FrmVisorPdf.FileName;
            mapdato.sTypeFile:='PDF';

            IndReg:=ListaFiles.IndexOf(mapdato.sTypeFile);
            if IndReg=-1 then
            begin
              ListaFiles.AddObject(mapdato.sTypeFile,mapdato);
            end
            else
            begin
              ListaFiles.Delete(IndReg);
              ListaFiles.AddObject(mapdato.sTypeFile,mapdato);
            end;
          end;
        end;
      end;
    finally
      FrmVisorPdf.destroy;
      QFile.close;
    end;
  end;
end;

procedure TfrmAlmCotizacion.dxbrbtnExportaCotizacionaPDF1Click(Sender: TObject);
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No hay registro para Emportar');
    Exit;
  end;
  if (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Validado') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Cotizado') then
  begin
    ExportarPDF(False);
  end
  else MSG_W('Solo se pueden exportar las requsicion con estatus "Cotizado" y "Validado"');
end;

procedure TfrmAlmCotizacion.dxbrbtnExportarCotizacionaExcel1Click(Sender: TObject);
var
  cdAlm_Cotizacion: TClientDataSet;
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No hay registro para Emportar');
    Exit;
  end;
  if (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Validado') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Cotizado') then
  begin
    Llenar_CDS_Exportar(cdAlm_Cotizacion);
    ExportarExcelCotizacion(cdAlm_Cotizacion, ZQalm_cotizacion_detalle,'Cotizacion',cdAlm_Cotizacion.FieldByName('mCliente').AsString,cdAlm_Cotizacion.FieldByName('sContrato').AsString, '', pbProgreso, Ventanas, 1, False);
  end
  else MSG_W('Solo se pueden exportar las requsicion con estatus "Cotizado" y "Validado"');
end;

procedure TfrmAlmCotizacion.dxbrbtnExportarPlantillaaExcel1Click(Sender: TObject);
var
  cdAlm_Cotizacion: TClientDataSet;
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No hay registro para Emportar');
    Exit;
  end;
  if ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Pendiente' then
  begin
    ZQalm_cotizacion.Edit;
    ZQalm_cotizacion.FieldByName('sStatus').AsString := 'Enviado';
    isActivo := False;
    ZQalm_cotizacion.Post;
    isActivo := True;
    ZQalm_cotizacionAfterScroll(ZQalm_cotizacion);
  end;
  Llenar_CDS_Exportar(cdAlm_Cotizacion);
  ExportarExcelCotizacion(cdAlm_Cotizacion, ZQalm_cotizacion_detalle, 'Cotizacion', cdAlm_Cotizacion.FieldByName('mCliente').AsString, cdAlm_Cotizacion.FieldByName('sContrato').AsString, 'subtitulo', pbProgreso, Ventanas, 1, True);
end;

procedure TfrmAlmCotizacion.dxbrbtnExportarPlantillaaPDF1Click(Sender: TObject);
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No hay registro para Emportar');
    Exit;
  end;
  ExportarPDF(True);
  Ventanas.visible := False;
  if ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Pendiente' then
  begin
    ZQalm_cotizacion.Edit;
    ZQalm_cotizacion.FieldByName('sStatus').AsString := 'Enviado';
    isActivo := False;
    ZQalm_cotizacion.Post;
    isActivo := True;
    ZQalm_cotizacionAfterScroll(ZQalm_cotizacion);
  end;
end;

procedure TfrmAlmCotizacion.dxbrbtnImportarCotizacionClick(Sender: TObject);
begin
  if ZQalm_cotizacion.RecordCount = 0 then
  begin
    MSG_OK('No existe una cotizacion para que se importe la información.');
    Exit;
  end;
  if (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Validado') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Cancelado')then
  begin
    MSG_OK('No se puede importar la cotizacion por que se encuentra: '+ ZQalm_cotizacion.FieldByName('sStatus').AsString);
    exit;
  end;
  edtArchivo.Text:= '';
  pbImportacion.Properties.Max := 0;
  pbImportacion.Position := 0;
  Crear_Form(Ventanas, 'Importar Cotizacion', 150, 405, [biSystemMenu,biMaximize],2); //Creo el panel en tiempo de ejecucion
  ZQalm_cotizacion_detalle.first;
end;

function TfrmAlmCotizacion.Llenar_CDS_Exportar(var cdAlm_Cotizacion: TClientDataSet):Boolean;
begin
  {$REGION 'Para crear el clientdataset en tiempo de ejecucion'}
    cdAlm_Cotizacion  := TClientDataSet.Create(nil);  //Creo el cliendataset
    if cdAlm_Cotizacion.active then                //Si el clientdataset esta activo
    begin
      cdAlm_Cotizacion.EmptyDataSet;
      cdAlm_Cotizacion.fielddefs.Clear;            //Borra todos los field del cliendataset
      cdAlm_Cotizacion.Close;                                  //Lo cierra
    end;
    cdAlm_Cotizacion.fielddefs.add('iIdCotizacion',       ftInteger,  0,    false);
    cdAlm_Cotizacion.fielddefs.add('iIdRequisicion',      ftInteger,  0,    false);
    cdAlm_Cotizacion.fielddefs.add('sIdProveedor',        ftString,   5,    false);
    cdAlm_Cotizacion.fielddefs.add('sContrato',           ftString,   15,   false);
    cdAlm_Cotizacion.fielddefs.add('iFolioRequisicion',   ftInteger,  0,    false);
    cdAlm_Cotizacion.fielddefs.add('sNumeroOrden',        ftString,   35,   false);
    cdAlm_Cotizacion.fielddefs.add('dIdFecha',            ftDate,     0,    false);
    cdAlm_Cotizacion.fielddefs.add('dFechaSolicitado',    ftDate,     0,    false);
    cdAlm_Cotizacion.fielddefs.add('dFechaRequerido',     ftDate,     0,    false);
    cdAlm_Cotizacion.fielddefs.add('sRequisita',          ftString,   30,   false);
    cdAlm_Cotizacion.fielddefs.add('sReferencia',         ftString,   30,   false);
    cdAlm_Cotizacion.fielddefs.add('sRevision',           ftString,   10,   false);
    cdAlm_Cotizacion.fielddefs.add('sSolicito',           ftString,   50,   false);
    cdAlm_Cotizacion.fielddefs.add('sStatus',             ftString,   10,   false);
    cdAlm_Cotizacion.fielddefs.add('sAutorizo',           ftString,   50,   false);
    cdAlm_Cotizacion.fielddefs.add('sVerificacion',       ftString,   50,   false);
    cdAlm_Cotizacion.fielddefs.add('sRecibido',           ftString,   50,   false);
    cdAlm_Cotizacion.fielddefs.add('sidDepartamento',     ftString,   4,    false);
    cdAlm_Cotizacion.fielddefs.add('mComentarios',        ftString,   500,  false);
    cdAlm_Cotizacion.fielddefs.add('sMotivo',             ftString,   20,   false);
    cdAlm_Cotizacion.fielddefs.add('sEstado',             ftString,   20,   false);
    cdAlm_Cotizacion.fielddefs.add('sLugarEntrega',       ftString,   10,   false);
    cdAlm_Cotizacion.fielddefs.add('sNumeroSolicitud',    ftString,   20,   false);
    cdAlm_Cotizacion.fielddefs.add('sCodigoMaterial',     ftString,   20,   false);
    cdAlm_Cotizacion.fielddefs.add('sIdUsuario',          ftString,   50,   false);
    cdAlm_Cotizacion.fielddefs.add('NombreProveedor',     ftString,   50,   false);
    cdAlm_Cotizacion.fielddefs.add('bImagen',             ftBlob,     0,    false);
    cdAlm_Cotizacion.fielddefs.add('bImagenPemex',        ftBlob,     0,    false);
    cdAlm_Cotizacion.fielddefs.add('mCliente',            ftString,   500,  false);
    cdAlm_Cotizacion.fielddefs.add('Descripcion_Contrato',ftString,   150,  false);
    cdAlm_Cotizacion.CreateDataSet;
    cdAlm_Cotizacion.Open;
  {$ENDREGION}
  {$REGION 'Para llenar el cliendataset'}
    cdAlm_Cotizacion.Append;
    cdAlm_Cotizacion.FieldByName('iIdCotizacion').asInteger       := ZQalm_cotizacion.FieldByName('iIdCotizacion').asInteger;
    cdAlm_Cotizacion.FieldByName('iIdRequisicion').asInteger      := ZQalm_cotizacion.FieldByName('iIdRequisicion').asInteger;
    cdAlm_Cotizacion.FieldByName('sIdProveedor').AsString         := ZQalm_cotizacion.FieldByName('sIdProveedor').AsString;
    cdAlm_Cotizacion.FieldByName('sContrato').AsString            := ZQalm_cotizacion.FieldByName('sContrato').AsString;
    cdAlm_Cotizacion.FieldByName('iFolioRequisicion').AsInteger   := ZQalm_cotizacion.FieldByName('iFolioRequisicion').AsInteger;
    cdAlm_Cotizacion.FieldByName('sNumeroOrden').AsString         := ZQalm_cotizacion.FieldByName('sNumeroOrden').AsString;
    cdAlm_Cotizacion.FieldByName('dIdFecha').AsDateTime           := ZQalm_cotizacion.FieldByName('dIdFecha').AsDateTime;
    cdAlm_Cotizacion.FieldByName('dFechaSolicitado').AsDateTime   := ZQalm_cotizacion.FieldByName('dFechaSolicitado').AsDateTime;
    cdAlm_Cotizacion.FieldByName('dFechaRequerido').AsDateTime    := ZQalm_cotizacion.FieldByName('dFechaRequerido').AsDateTime;
    cdAlm_Cotizacion.FieldByName('sRequisita').AsString           := ZQalm_cotizacion.FieldByName('sRequisita').AsString;
    cdAlm_Cotizacion.FieldByName('sReferencia').AsString          := ZQalm_cotizacion.FieldByName('sReferencia').AsString;
    cdAlm_Cotizacion.FieldByName('sRevision').AsString            := ZQalm_cotizacion.FieldByName('sRevision').AsString;
    cdAlm_Cotizacion.FieldByName('sSolicito').AsString            := ZQalm_cotizacion.FieldByName('sSolicito').AsString;
    cdAlm_Cotizacion.FieldByName('sStatus').AsString              := ZQalm_cotizacion.FieldByName('sStatus').AsString;
    cdAlm_Cotizacion.FieldByName('sAutorizo').AsString            := ZQalm_cotizacion.FieldByName('sAutorizo').AsString;
    cdAlm_Cotizacion.FieldByName('sVerificacion').AsString        := ZQalm_cotizacion.FieldByName('sVerificacion').AsString;
    cdAlm_Cotizacion.FieldByName('sRecibido').AsString            := ZQalm_cotizacion.FieldByName('sRecibido').AsString;
    cdAlm_Cotizacion.FieldByName('sidDepartamento').AsString      := ZQalm_cotizacion.FieldByName('sidDepartamento').AsString;
    cdAlm_Cotizacion.FieldByName('mComentarios').AsString         := ZQalm_cotizacion.FieldByName('mComentarios').AsString;
    cdAlm_Cotizacion.FieldByName('sMotivo').AsString              := ZQalm_cotizacion.FieldByName('sMotivo').AsString;
    cdAlm_Cotizacion.FieldByName('sEstado').AsString              := ZQalm_cotizacion.FieldByName('sEstado').AsString;
    cdAlm_Cotizacion.FieldByName('sLugarEntrega').AsString        := ZQalm_cotizacion.FieldByName('sLugarEntrega').AsString;
    //cdAlm_Cotizacion.FieldByName('sNumeroSolicitud').AsString     := ZQalm_cotizacion.FieldByName('sNumeroSolicitud').AsString;
    //cdAlm_Cotizacion.FieldByName('sCodigoMaterial').AsString      := ZQalm_cotizacion.FieldByName('sCodigoMaterial').AsString;
    cdAlm_Cotizacion.FieldByName('sIdUsuario').AsString           := ZQalm_cotizacion.FieldByName('sIdUsuario').AsString;
    cdAlm_Cotizacion.FieldByName('NombreProveedor').AsString      := ZQalm_cotizacion.FieldByName('NombreProveedor').AsString;
    cdAlm_Cotizacion.FieldByName('bImagen').AsVariant             := connection.configuracion.FieldByName('bImagen').AsVariant;
    cdAlm_Cotizacion.FieldByName('bImagenPemex').AsVariant        := connection.contrato.FieldByName('bImagen').AsVariant;
    cdAlm_Cotizacion.FieldByName('mCliente').AsString             := connection.contrato.FieldByName('mCliente').AsString;
    cdAlm_Cotizacion.FieldByName('Descripcion_Contrato').AsString := connection.contrato.FieldByName('mDescripcion').AsString;
    cdAlm_Cotizacion.Post;
  {$ENDREGION}
end;
procedure TfrmAlmCotizacion.tDescuentoGralPropertiesEditValueChanged(
  Sender: TObject);
begin
  {if tDescuentoGral.EditValue > 100 then
  begin
    MSG_W('El porcetaje no debe ser mayor al 100%');
    tDescuentoGral.EditValue := 0;
    tDescuentoGral.SetFocus;
  end;}
end;

procedure TfrmAlmCotizacion.ZQalm_cotizacionAfterScroll(DataSet: TDataSet);
var
  QRFiles:TzREadOnlyQuery;
begin
  if isActivo then //Solo de debe ejecutar cuando de navegue no cuando carge la interfaz
  begin
    //Al cambiarse de requsicion debe actualizar los productos de esa requisicion
    BView_Productos.DataController.DataSource := nil;
    ZQalm_cotizacion_detalle.Filtered := False;
    ZQalm_cotizacion_detalle.Filter   := ' iIdCotizacion = '+ IntToStr(ZQalm_cotizacion.FieldByName('iIdCotizacion').AsInteger);
    ZQalm_cotizacion_detalle.Filtered := True;
    BView_Productos.DataController.DataSource := dsalm_cotizacion_detalle;
    if (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Validado') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Cancelado') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Pendiente') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Enviado') then
    begin
      cxgrdbclmnBView_ProductosdCantidadCotizada1.Options.Editing := False;
      cxgrdbclmnBView_ProductosdPrecio1.Options.Editing           := False;
      cxgrdbclmnBView_ProductosdTiempoEntrega1.Options.Editing    := False;
      cxgrdbclmnBView_ProductosdTasa1.Options.Editing             := False;
      cxgrdbclmnBView_ProductosiIdMoneda1.Options.Editing         := False;
      cxgrdbclmnBView_ProductosdTipoCambio1.Options.Editing       := False;
      cxgrdbclmnBView_ProductosComentario1.Options.Editing        := False;
    end else
    begin
      cxgrdbclmnBView_ProductosdCantidadCotizada1.Options.Editing := True;
      cxgrdbclmnBView_ProductosdPrecio1.Options.Editing           := True;
      cxgrdbclmnBView_ProductosdTiempoEntrega1.Options.Editing    := True;
      cxgrdbclmnBView_ProductosdTasa1.Options.Editing             := True;
      cxgrdbclmnBView_ProductosiIdMoneda1.Options.Editing         := True;
      cxgrdbclmnBView_ProductosdTipoCambio1.Options.Editing       := True;
      cxgrdbclmnBView_ProductosComentario1.Options.Editing        := True;
    end;
    if (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Cotizado') or (ZQalm_cotizacion.FieldByName('sStatus').AsString = 'Validado') then
    begin
      cxPDF.enabled := True;
      cxJPEG.enabled:= True;
    end else
    begin
      cxPDF.enabled := False;
      cxJPEG.enabled:= False;
    end;
    //Para chequear una de las opciones
    AvOfCkFormatos.Checked[0]:=false;
    AvOfCkFormatos.Checked[1]:=false;
    if ZQalm_cotizacion.RecordCount > 0 then
    begin
      QRFiles:=TzREadOnlyQuery.create(nil);
      try
        QRFiles.Connection:=connection.zConnection;
        QRFiles.SQL.text:='select sTipoFile from con_files where ' +
                          'iIdFolio=:Folio and sTipoMovimiento=:Movimiento';
        QrFiles.ParamByName('Folio').AsInteger    := ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;
        QrFiles.ParamByName('Movimiento').AsString:= 'Cotizaciones';
        QrFiles.Open;
        while not QrFiles.Eof do
        begin
          if QrFiles.FieldByName('sTipoFile').AsString='PDF' then
            AvOfCkFormatos.Checked[0]:=true;

          if QrFiles.FieldByName('sTipoFile').AsString='JPEG' then
            AvOfCkFormatos.Checked[1]:=true;
          QrFiles.Next;
        end;
      finally
        QRFiles.destroy;
      end;
    end;

  end;
end;
procedure TfrmAlmCotizacion.ZQalm_cotizacionBeforeEdit(DataSet: TDataSet);
begin
  cxgrdbclmnBView_CotizacionColumn1.Options.Editing := True;
  ListaFiles:=TstringList.Create;
end;

procedure TfrmAlmCotizacion.ZQalm_cotizacionBeforePost(DataSet: TDataSet);
var
  isNew:Boolean;
  BlobSTream:Tstream;
  FileStream:TFileStream;
  i:Integer;
  MapDato:IData;
  QRArchivo: TZQuery;
begin
  cxgrdbclmnBView_CotizacionColumn1.Options.Editing := False;
  if AccionVisor = 'Eliminar' then
  begin
    AccionVisor := '';
    //Para quitar los archivos de la tabla con_files que tiene referencia a la cotizacion
    Eliminar_Documento2(TipoArchivo);
    TipoArchivo := '';
  end else
  if ListaFiles.Count>0 then
  begin
    for I := 0 to ListaFiles.Count - 1 do
    begin
      MapDato:=IData(ListaFiles.Objects[I]);
      QFile.Active:=false;
      QFile.paramByname('Folio').AsInteger    := ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;
      QFile.paramByname('Movimiento').AsString:= 'Cotizaciones';
      QFile.paramByname('TipoFile').AsString  := MapDato.sTypeFile;
      QFile.open;

      if QFile.RecordCount = 0 then
      begin
        QFile.append;
        QFile.FieldByName('iIdFile').asinteger        := 0;
        QFile.FieldByName('iIdFolio').asinteger       := ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;
        QFile.FieldByNAme('sTipoMovimiento').AsString := 'Cotizaciones';
      end
      else
      begin
        QFile.edit;
      end;

      QFile.FieldByNAme('sNombreFile').AsString:=ExtractFileName(MapDato.sNameFile);
      QFile.FieldByNAme('sExtension').AsString:=ExtractFileExt(MapDato.sNameFile);
      QFile.FieldByNAme('sTipoFile').AsString:=MapDato.sTypeFile;

      BlobSTream:=QFile.CreateBlobStream(QFile.FieldByName('bFile'),bmwrite);
      try
        FileStream := TFileStream.Create(MapDato.sNameFile, fmOpenRead);
        try
          BlobStream.CopyFrom(FileStream, FileStream.Size);
        finally
          FileStream.Destroy;
        end;
      Finally
        BlobStream.Destroy;
      end;
      QFile.post;
    end;
    ListaFiles.Destroy;
  end;
end;

procedure TfrmAlmCotizacion.ZQalm_cotizacion_detalleBeforeEdit(
  DataSet: TDataSet);
begin
  if ZQalm_cotizacion_detalle.RecordCount = 0 then
    MSG_OK('No hay registros para editar');
end;

procedure TfrmAlmCotizacion.ZQalm_cotizacion_detalleBeforePost(
  DataSet: TDataSet);
begin
  //Si la cantidad tecleada es mayor a 100
  if ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat > 100 then
  begin
    ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat := 0.00;
    MSG_W('El iva no puede ser mayor al 100% por favor verifique');
    Abort;
  end else //si la cantidad es mayor a 1 y menos o igual a 100
  //Realiza una conversion para mostrar el IVA como decimal
  if (ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat <= 100) and (ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat > 1) then
    ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat := ZQalm_cotizacion_detalle.FieldByName('dTasa').AsFloat /100
end;

procedure TfrmAlmCotizacion.ExportarPDF(Plantilla:Boolean);
begin
  if Plantilla then
  begin
    try
      if dsConceptoDetalles.active then dsConceptoDetalles.EmptyDataSet
      else
      begin
        dsConceptoDetalles.CreateDataSet;
        dsConceptoDetalles.Open;
      end;
      VerPageControl(Ventanas, 1);
      pbProgreso.Position := 0;
      pbProgreso.Properties.Max := ZQalm_cotizacion_detalle.RecordCount;
      ZQalm_cotizacion_detalle.First;
      while not ZQalm_cotizacion_detalle.Eof do
      begin
        dsConceptoDetalles.Append;
        dsConceptoDetalles.FieldByName('iIdCotizacionDetalle').AsInteger:= ZQalm_cotizacion_detalle.FieldByName('iIdCotizacionDetalle').AsInteger;
        dsConceptoDetalles.FieldByName('iIdCotizacion').AsInteger       := ZQalm_cotizacion_detalle.FieldByName('iIdCotizacion').AsInteger;
        dsConceptoDetalles.FieldByName('sIdInsumo').AsString            := ZQalm_cotizacion_detalle.FieldByName('sIdInsumo').AsString;
        dsConceptoDetalles.FieldByName('iCantidad').AsInteger           := ZQalm_cotizacion_detalle.FieldByName('iCantidad').AsInteger;
        dsConceptoDetalles.FieldByName('dFechaRequerida').AsDateTime    := ZQalm_cotizacion_detalle.FieldByName('dFechaRequerida').AsDateTime;
        dsConceptoDetalles.FieldByName('iItem').AsInteger               := ZQalm_cotizacion_detalle.FieldByName('iItem').AsInteger;
        dsConceptoDetalles.FieldByName('dFechaSolicitado').AsDateTime   := ZQalm_cotizacion_detalle.FieldByName('dFechaSolicitado').AsDateTime;
        dsConceptoDetalles.FieldByName('NombreProducto').AsString       := ZQalm_cotizacion_detalle.FieldByName('NombreProducto').AsString;
        dsConceptoDetalles.FieldByName('sMedida').AsString              := ZQalm_cotizacion_detalle.FieldByName('sMedida').AsString;
        dsConceptoDetalles.Post;
        ZQalm_cotizacion_detalle.Next;
        pbProgreso.Position := pbProgreso.Position +1; 
      end;





      frxCotizacion.LoadFromFile (global_files + global_miReporte + '_ALMAlm_Cotizacion1.fr3');
      if not FileExists(global_files + global_miReporte + '_ALMAlm_Cotizacion1.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMAlm_Cotizacion1.fr3 no existe, notifique al administrador del sistema');
      frxCotizacion.ShowReport();
    except
      on E: Exception do
      begin
        MSG_ER('Ocurrio un error: ' + E.Message + e.ClassName);
      End;
    End;
  end
  else
  begin
    try




      frxCotizacion.LoadFromFile (global_files + global_miReporte + '_ALMAlm_Cotizacion.fr3');
       if not FileExists(global_files + global_miReporte + '_ALMAlm_Cotizacion.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMAlm_Cotizacion.fr3 no existe, notifique al administrador del sistema');
      frxCotizacion.ShowReport();
    except
      on E: Exception do
      begin
        MSG_ER('Ocurrio un error: ' + E.Message + e.ClassName);
      End;
    End;
  end;

end;
procedure TfrmAlmCotizacion.Guardar_Documento;
var
  isNew:Boolean;
  BlobSTream:Tstream;
  FileStream:TFileStream;
  i:Integer;
  MapDato:IData;
begin
  if (ListaFiles.Count > 0) then
  begin
    for I := 0 to ListaFiles.Count - 1 do
    begin
      MapDato:=IData(ListaFiles.Objects[I]);
      QFile.Active:=false;
      QFile.paramByname('Folio').AsInteger    := ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;
      QFile.paramByname('Movimiento').AsString:= 'Cotizaciones';
      QFile.paramByname('TipoFile').AsString  := MapDato.sTypeFile;
      QFile.open;

      if QFile.RecordCount=0 then
      begin
        QFile.append;
        QFile.FieldByName('iIdFile').asinteger        := 0;
        QFile.FieldByName('iIdFolio').asinteger       := ZQalm_cotizacion.FieldByNAme('iIdCotizacion').AsInteger;
        QFile.FieldByNAme('sTipoMovimiento').AsString := 'Cotizaciones';
      end
      else
      begin
        QFile.edit;
      end;

      QFile.FieldByNAme('sNombreFile').AsString :=ExtractFileName(MapDato.sNameFile);
      QFile.FieldByNAme('sExtension').AsString  :=ExtractFileExt(MapDato.sNameFile);
      QFile.FieldByNAme('sTipoFile').AsString   :=MapDato.sTypeFile;

      BlobSTream:=QFile.CreateBlobStream(QFile.FieldByName('bFile'),bmwrite);
      try
        FileStream := TFileStream.Create(MapDato.sNameFile, fmOpenRead);
        try
          BlobStream.CopyFrom(FileStream, FileStream.Size);
        finally
          FileStream.Destroy;
        end;
      Finally
        BlobStream.Destroy;
      end;
      QFile.post;
    end;
  end;
end;
procedure TfrmAlmCotizacion.Eliminar_Documento;
var
  QRArchivo:TZQuery;
begin
  QRArchivo := TZQuery.Create(nil);
  QRArchivo.Connection:= connection.zConnection;
  QRArchivo.Active    := False ;
  QRArchivo.SQL.Clear;
  QRArchivo.SQL.Add('delete from con_files where (iIdFolio = :iIdFolio and sTipoMovimiento = "Cotizaciones")');
  QRArchivo.ParamByName('iIdFolio').asInteger    := ZQalm_cotizacion.FieldByName('iIdCotizacion').AsInteger;
  QRArchivo.ExecSQL;
  QRArchivo.destroy;
end;

function TfrmAlmCotizacion.Eliminar_Documento2(Tipo:string):Boolean;
var
  QRArchivo:TZQuery;
begin
  QRArchivo := TZQuery.Create(nil);
  QRArchivo.Connection:= connection.zConnection;
  QRArchivo.Active    := False ;
  QRArchivo.SQL.Clear;
  QRArchivo.SQL.Add('delete from con_files where (iIdFolio = :iIdFolio and sTipoMovimiento = "Cotizaciones" and sTipoFile = :sTipoFile)');
  QRArchivo.ParamByName('iIdFolio').asInteger := ZQalm_cotizacion.FieldByName('iIdCotizacion').AsInteger;
  QRArchivo.ParamByName('sTipoFile').AsString := Tipo;
  QRArchivo.ExecSQL;
  QRArchivo.destroy;
end;

procedure TfrmAlmCotizacion.tipocambio;
begin
  if tsMoneda.Text <> '' then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from tiposdecambio where sIdMoneda =:Moneda and dIdFecha <=:Fecha order by dIdFecha DESC ');
    connection.zCommand.ParamByName('Moneda').AsString := moneda.FieldValues['sIdMoneda'];
    connection.zCommand.ParamByName('Fecha').AsDate := Date;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
      tsTipoCambio.Value := connection.zCommand.FieldValues['dCambio']
    else
      tsTipoCambio.Value := 0;
  end;
end;

procedure TfrmAlmCotizacion.tsMonedaExit(Sender: TObject);
begin
  tipocambio;
end;

end.
