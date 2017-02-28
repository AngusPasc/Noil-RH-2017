unit frmFacturaElectronica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  StdCtrls, NxEdit, NxStdCtrls, frm_barra, NxPageControl, Mask, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxLookup, Grids, DBGrids,
  NxDBColumns, NxColumns, strUtils, ComCtrls, Buttons, FramedPanel, RXDBCtrl,
  Newpanel, DateUtils, global, JPeg, rxToolEdit, ExtCtrls, ExtDlgs, 
  frxClass, frxDBSet, Menus, DBLabelEdit, dblookup, DBTables, Utilerias, UDbGrid,
  AdvGlowButton, rxCurrEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxScrollBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsdxBarPainter, dxBar,
  dxRibbonRadialMenu;

type
  Tfrm_Depositoscias = class(TForm)
    frmBarra1: TfrmBarra;
    dszQEgresos: TDataSource;
    zQEgresos: TZQuery;
    dszQCuentasBancarias: TDataSource;
    zQCuentasBancarias: TZQuery;
    zQCuentasBancariassIdNumeroCuenta: TStringField;
    zQCuentasBancariassNombreCuenta: TStringField;
    zQCuentasBancariassFirmanCuenta: TStringField;
    zQCuentasBancariasiFolioCheque: TIntegerField;
    Label9: TLabel;
    tsIdCuentaBancaria: TDBLookupComboBox;
    zQEgresosdIdFecha: TDateField;
    zQEgresosiIdFolio: TIntegerField;
    zQEgresossTipoMovimiento: TStringField;
    zQEgresossIdArea: TStringField;
    zQEgresossIdNumeroCuenta: TStringField;
    zQEgresossReferencia: TStringField;
    zQEgresossIdProveedor: TStringField;
    zQEgresossRFC: TStringField;
    zQEgresossRazonSocial: TStringField;
    zQEgresossDomicilio: TStringField;
    zQEgresossCiudad: TStringField;
    zQEgresossCP: TStringField;
    zQEgresossEstado: TStringField;
    zQEgresossTelefono: TStringField;
    zQEgresosdImporteTotal: TFloatField;
    zQEgresoslComprobado: TStringField;
    zCommand: TZQuery;
    zQProveedores: TZQuery;
    zQProveedoressIdProveedor: TStringField;
    zQProveedoressRFC: TStringField;
    zQProveedoressRazonSocial: TStringField;
    zQProveedoressDomicilio: TStringField;
    zQProveedoressCiudad: TStringField;
    zQProveedoressCP: TStringField;
    zQProveedoressEstado: TStringField;
    zQProveedoressTelefono: TStringField;
    zQProveedoresdMontoCredito: TFloatField;
    zQProveedoreslStatus: TStringField;
    zQEgresosmDescripcion: TMemoField;
    OpenPicture: TOpenPictureDialog;
    ReporteFotografico: TZQuery;
    ds_ReporteFotografico: TDataSource;
    lblRecord: TLabel;
    dsCompanias: TDataSource;
    qryCompanias: TZQuery;
    zQEgresossIdCompania: TStringField;
    zQEgresosdIva: TFloatField;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    qryConsulta: TZReadOnlyQuery;
    frReporte: TfrxReport;
    frxCompania: TfrxDBDataset;
    zQEgresosdFechaFactura: TDateField;
    zQEgresosTotal: TFloatField;
    zQEgresosiFolio: TIntegerField;
    zQEgresosiIdStatus: TIntegerField;
    zq_statusfacturas: TZQuery;
    ds_statusfacturas: TDataSource;
    zq_statusfacturasiId: TIntegerField;
    zq_statusfacturassNombre: TStringField;
    frxReport1: TfrxReport;
    Print_Factura: TfrxDBDataset;
    Print_InfoCliente: TfrxDBDataset;
    zq_DetallesFacturas: TZQuery;
    ds_DetallesFacturas: TDataSource;
    Print_DetallesdeFactura: TfrxDBDataset;
    zq_DetallesFacturasiId: TIntegerField;
    zq_DetallesFacturasiId_Factura: TIntegerField;
    zq_DetallesFacturasdCantidad: TFloatField;
    zq_DetallesFacturasdImporte: TFloatField;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1dCantidadporConcepto: TFloatField;
    zq_DetallesFacturasstrDesc: TStringField;
    zQEgresossStatus: TStringField;
    frxEgresos: TfrxDBDataset;
    zQEgresossCompanya: TStringField;
    zQEgresossTipoPago: TStringField;
    zQEgresossFormaPago: TStringField;
    zQEgresossNumeroDeCuenta: TStringField;
    zQEgresossNumeroPedido: TStringField;
    zQEgresosiImprimeProveedor: TIntegerField;
    qryCompaniassIdCompania: TStringField;
    qryCompaniassRFC: TStringField;
    qryCompaniassRazonSocial: TStringField;
    qryCompaniassDomicilio: TStringField;
    qryCompaniassCiudad: TStringField;
    qryCompaniassCP: TStringField;
    qryCompaniassEstado: TStringField;
    qryCompaniassTelefono: TStringField;
    qryCompaniasdMontoCredito: TFloatField;
    qryCompaniaslStatus: TStringField;
    qryCompaniassNumeroProveedor: TStringField;
    zq_DetallesFacturassMedida: TStringField;
    zq_DetallesFacturassDescripcion: TMemoField;
    qryFotografico: TZQuery;
    frxfotografia: TfrxDBDataset;
    qryFotograficoildFolio: TIntegerField;
    qryFotograficodIdFecha: TDateField;
    qryFotograficoiImagen: TIntegerField;
    qryFotograficobImagen: TBlobField;
    qryAuxiliar: TZQuery;
    Label4: TLabel;
    chkPago: TCheckBox;
    chkExpedida: TCheckBox;
    chkTotal: TCheckBox;
    chkAgrupado: TCheckBox;
    dsConsultaf: TfrxDBDataset;
    qryConsultaf: TZReadOnlyQuery;
    zQEgresossMes: TStringField;
    zQEgresosdFechaRecepcion: TDateField;
    Panel: tNewGroupBox;
    grid_factpag: TDBGrid;
    zQEgresoslAplicaPagoParcial: TStringField;
    btAplicar: TButton;
    qryParcPagos: TZQuery;
    dsParcPagos: TDataSource;
    btCancelar: TButton;
    DBText1: TDBText;
    Label24: TLabel;
    zQEgresosdParcialidad: TFloatField;
    Label26: TLabel;
    lblPendiente: TLabel;
    qryParcPagosdImporte: TFloatField;
    qryParcPagosdIva: TFloatField;
    qryParcPagostotalp: TFloatField;
    qryParcPagosdIdFecha: TDateField;
    qryParcPagossDescripcion: TStringField;
    qryParcPagoslPago: TStringField;
    qryParcPagosiIdFolio: TIntegerField;
    qryParcPagossTipo: TStringField;
    zQProyectos: TZQuery;
    dszQProyectos: TDataSource;
    zQProyectossNumeroOrden: TStringField;
    zQProyectossDescripcionCorta: TStringField;
    zQEgresossProyecto: TStringField;
    frxProyecto: TfrxDBDataset;
    chkAplicaCuadre: TCheckBox;
    cxscrlbxSecundario: TcxScrollBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtIva: TEdit;
    txtTotal: TEdit;
    txtSubtotal: TEdit;
    NxPageControl1: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    Label11: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    tmDescripcion: TDBMemo;
    dbiFolio: TDBEdit;
    tdFechaExp: TDBDateEdit;
    dbIva: TDBEdit;
    dbCompania: TDBLookupComboBox;
    tdFecha: TDBDateEdit;
    tdImporteTotal: TDBEdit;
    tsReferencia: TDBEdit;
    dbEstado: TDBLookupListBox;
    BitBtn1: TBitBtn;
    a: TMemo;
    e: TMemo;
    i: TMemo;
    o: TMemo;
    u: TMemo;
    dbFechaRecepcion: TDBDateEdit;
    cmbmeses: TDBComboBox;
    dbPagosparciales: TDBCheckBox;
    dbProyecto: TDBLookupComboBox;
    NxTabSheet2: TNxTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    DBLabelEdit1: TDBLabelEdit;
    Label21: TLabel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnPost: TBitBtn;
    btnCancel: TBitBtn;
    btnDelete: TBitBtn;
    DBMemo2: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    cxGrid1: TcxGrid;
    DBGrid1: TcxGridDBTableView;
    DBGrid1dCantidad1: TcxGridDBColumn;
    DBGrid1strDesc1: TcxGridDBColumn;
    DBGrid1dImporte1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    NxTabSheet3: TNxTabSheet;
    Label19: TLabel;
    Label20: TLabel;
    Label28: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    NxTabSheet4: TNxTabSheet;
    GroupBox2: TGroupBox;
    bImagen: TImage;
    lblRecord1: TLabel;
    btnPreview: TBitBtn;
    tNewGroupBox1: tNewGroupBox;
    DBText2: TDBText;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxstylGreen: TcxStyle;
    cxstylMaroon: TcxStyle;
    cxstylBlackStrong: TcxStyle;
    cxstylPurple: TcxStyle;
    dxbrmngr1: TdxBarManager;
    ImprimirFormato1: TdxBarSubItem;
    Reporte1: TdxBarSubItem;
    Editar1: TdxBarButton;
    Registrar1: TdxBarButton;
    Can1: TdxBarButton;
    Eliminar1: TdxBarButton;
    Salir1: TdxBarButton;
    Refresh1: TdxBarButton;
    Insertar1: TdxBarButton;
    Imprimir1: TdxBarSubItem;
    ImprimirFactura1: TdxBarButton;
    ImprimirFacturaATechnology1: TdxBarButton;
    Porcompaias1: TdxBarButton;
    PorFechas1: TdxBarButton;
    ImprimirReporte1: TdxBarButton;
    ImprimirfacturaOriginal1: TdxBarButton;
    mnureportet: TdxBarSubItem;
    Pagadas1: TdxBarButton;
    Canceladas1: TdxBarButton;
    Pendientes1: TdxBarButton;
    otal1: TdxBarButton;
    PorProyecto1: TdxBarButton;
    Graficas1: TdxBarSubItem;
    IngresosxCia1: TdxBarButton;
    Ventasx1: TdxBarButton;
    ReporteXMesFacturado1: TdxBarSubItem;
    ENERO1: TdxBarButton;
    PopupPrincipal: TdxRibbonRadialMenu;
    Panel1: TPanel;
    gridPrincipal: TcxGrid;
    Grid_facturas: TcxGridDBTableView;
    Grid_facturasdFechaFactura1: TcxGridDBColumn;
    Grid_facturasdIdFecha1: TcxGridDBColumn;
    Grid_facturasiIdFolio1: TcxGridDBColumn;
    Grid_facturassIdNumeroCuenta1: TcxGridDBColumn;
    Grid_facturassReferencia1: TcxGridDBColumn;
    Grid_facturasdImporteTotal1: TcxGridDBColumn;
    Grid_facturasdIva1: TcxGridDBColumn;
    Grid_facturasTotal1: TcxGridDBColumn;
    grdColumCompania: TcxGridDBColumn;
    Grid_facturassStatus1: TcxGridDBColumn;
    Grid_facturasdParcialidad1: TcxGridDBColumn;
    gridPrincipalLevel1: TcxGridLevel;
    strngfldQEgresossIdCompaniaConf: TStringField;
    function Tamanyo (Archivo : String): Real ;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure zQEgresosAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure tdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure zQEgresossTipoMovimientoChange(Sender: TField);
    procedure tsIdCuentaBancariaExit(Sender: TObject);
    procedure zQEgresosBeforeInsert(DataSet: TDataSet);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure ReporteFotograficoAfterCancel(DataSet: TDataSet);
    procedure btnPreviewClick(Sender: TObject);
    procedure ReporteFotograficoAfterDelete(DataSet: TDataSet);
    procedure ReporteFotograficoAfterEdit(DataSet: TDataSet);
    procedure ReporteFotograficoAfterInsert(DataSet: TDataSet);
    procedure ReporteFotograficoAfterScroll(DataSet: TDataSet);
    procedure ReporteFotograficoBeforeDelete(DataSet: TDataSet);
    procedure ReporteFotograficoBeforeEdit(DataSet: TDataSet);
    procedure ReporteFotograficoBeforeInsert(DataSet: TDataSet);
    procedure ReporteFotograficoBeforePost(DataSet: TDataSet);
    procedure FCellClick(Column: TColumn);
    procedure FKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbCompaniaExit(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure PorFechas1Click(Sender: TObject);
    procedure Porcompaias1Click(Sender: TObject);
    procedure tdImporteTotalExit(Sender: TObject);
    procedure zQEgresosCalcFields(DataSet: TDataSet);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure ImprimirFactura1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure zQEgresosAfterScroll(DataSet: TDataSet);
    procedure zq_DetallesFacturasAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure ImprimirReporte1Click(Sender: TObject);
    procedure ImprimirFacturaATechnology1Click(Sender: TObject);
    procedure ImprimirfacturaOriginal1Click(Sender: TObject);
    procedure zq_DetallesFacturasBeforePost(DataSet: TDataSet);
    procedure otal1Click(Sender: TObject);
    procedure Pagadas1Click(Sender: TObject);
    procedure Canceladas1Click(Sender: TObject);
    procedure Pendientes1Click(Sender: TObject);
    procedure chkPagoClick(Sender: TObject);
    procedure chkExpedidaClick(Sender: TObject);
    procedure chkTotalClick(Sender: TObject);
    procedure IngresosxCia1Click(Sender: TObject);
    procedure NxPageControl1Change(Sender: TObject);
    procedure FMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FTitleClick(Column: TColumn);
    procedure grid_facturasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_facturasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_facturasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_facturasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_facturasTitleClick(Column: TColumn);
    procedure grid_facturasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dbiFolioEnter(Sender: TObject);
    procedure dbiFolioExit(Sender: TObject);
    procedure ENERO1Click(Sender: TObject);
    procedure dbPagosparcialesEnter(Sender: TObject);
    procedure btAplicarClick(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure qryParcPagosBeforePost(DataSet: TDataSet);
    procedure btCancelarClick(Sender: TObject);
    procedure qryParcPagosAfterInsert(DataSet: TDataSet);
    procedure qryParcPagosCalcFields(DataSet: TDataSet);
    procedure PorProyecto1Click(Sender: TObject);
    procedure Ventasx1Click(Sender: TObject);
    procedure tsIdCuentaBancariaCloseUp(Sender: TObject);
    procedure Grid_facturasStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frm_Depositoscias: Tfrm_Depositoscias;
   iFolio : Integer ;
   ValorCad, sArchivo      : String ;
   multi, w, x, z, iva : Double ;
   utgrid:ticdbgrid;
   qryConsultaF   : TZReadOnlyQuery;
   dsConsultaF    : TFrxDBDataset ;


implementation

uses  frmGraficabarrasIngresos, frm_connection, frm_setup;
//  frmGraficabarrasxmesIngresos;

{$R *.dfm}


procedure Tfrm_Depositoscias.BitBtn1Click(Sender: TObject);
Var multit: String;
begin
    qryConsulta.Active := False ;
    qryConsulta.SQL.Clear ;
    qryConsulta.SQL.Text := 'SELECT IFNULL(SUM(dCantidad * dImporte), 0) AS dSumaImporte FROM con_facturas_detalles WHERE iId_Factura = :Factura;';
    qryConsulta.Params.ParamByName('Factura').AsInteger := zQEgresos.FieldByName('iIdFolio').AsInteger;
    qryConsulta.Open ;
    zQEgresos.FieldByName('dImporteTotal').AsFloat := qryConsulta.FieldByName('dSumaImporte').AsFloat;

    multit     := zQegresos.FieldValues['dImporteTotal'];
    multi      := strToFloat(multit) ;
    multi      := multi * global_iva  ;
    zQegresos.FieldValues['dIva']:=FloatTostr(multi) ;
end;

procedure Tfrm_Depositoscias.btnAddClick(Sender: TObject);
begin
  btnAdd.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  btnPost.Enabled := True;
  btnCancel.Enabled := True;
  zq_DetallesFacturas.Append ;
  zq_DetallesFacturas.FieldByName('iId_Factura').AsInteger := zqEgresos.FieldByName('iIdFolio').AsInteger;
  DBMemo2.SetFocus ;
end;

procedure Tfrm_Depositoscias.btnCancelClick(Sender: TObject);
begin
  btnAdd.Enabled := True;
  btnEdit.Enabled := True;
  btnPost.Enabled := False;
  btnCancel.Enabled := False;
  btnDelete.Enabled := True;
  chkAplicacuadre.Checked := False;
  Try
    zq_DetallesFacturas.Cancel;
  Finally
    //;
  End;
end;

procedure Tfrm_Depositoscias.btnDeleteClick(Sender: TObject);
begin
  If zq_DetallesFacturas.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        zq_DetallesFacturas.Delete ;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end
end;

procedure Tfrm_Depositoscias.btnEditClick(Sender: TObject);
begin
  btnAdd.Enabled := False;
  btnDelete.Enabled := False;
  btnPost.Enabled := True;
  btnCancel.Enabled := True;
end;

procedure Tfrm_Depositoscias.btnPostClick(Sender: TObject);
var
  sum : Double;
begin
  btnAdd.Enabled := True;
  btnEdit.Enabled := True;
  btnPost.Enabled := False;
  btnCancel.Enabled := False;
  btnDelete.Enabled := True;
  Try
    if zq_DetallesFacturas.State = dsInsert then
    begin
        zq_DetallesFacturas.Post;
        zq_DetallesFacturas.Refresh;
        zq_DetallesFacturas.First;
    end;
    if zq_DetallesFacturas.RecordCount > 0 then
    begin
        sum := 0;
        zq_DetallesFacturas.First ;
        while not zq_DetallesFacturas.Eof do
        begin
          sum := sum +  (zq_DetallesFacturas.FieldValues['dImporte']*zq_DetallesFacturas.FieldValues['dCantidad']) ;
          zq_DetallesFacturas.Next ;
        end;

        if chkAplicaCuadre.Checked then
        begin
            try
               zQEgresos.Edit;
               zQEgresos.FieldValues['dImporteTotal'] :=  StrToFloat(txtSubtotal.Text);
               zqEgresos.FieldValues['dIva']          :=  StrToFloat(txtIva.Text);
               zQEgresos.Post;
               zQEgresos.Refresh;

               zq_DetallesFacturas.Active := False;
               zq_DetallesFacturas.Params.ParamByName('Factura').AsInteger := zQEgresos.FieldByName('iIdFolio').AsInteger;
               zq_DetallesFacturas.Open;


               txtSubtotal.Text := '$ ' + zQEgresos.FieldByName('dImporteTotal').AsString;
               txtIva.Text := '$ ' + zQEgresos.FieldByName('dIva').AsString;
               txtTotal.Text := '$ ' + FloatToStr(zQEgresos.FieldByName('dImporteTotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat);

            Except
                messageDLG('Esta Ingresando un caracter no valido!', mtInformation, [mbOk], 0);
            end;
        end
        else
        begin
            zQEgresos.Edit;
            zQEgresos.FieldValues['dImporteTotal'] := sum ;
            zqEgresos.FieldValues['dIva']          := zqEgresos.FieldValues['dImporteTotal'] * global_iva ;
            zQEgresos.Post;
        end;
    end;
    zq_DetallesFacturas.Last;
  Except

  End;
  chkAplicacuadre.Checked := False;
end;

procedure Tfrm_Depositoscias.btnPreviewClick(Sender: TObject);
  var
   bS  : TStream;
   Pic : TJpegImage;
   BlobField : tField ;
begin
    If ReporteFotoGrafico.RecordCount > 0 then
    Begin
        bImagen.Picture.Bitmap := Nil ;
        If  (ReporteFotografico.State <> dsInsert) And
            (ReporteFotografico.State <> dsEdit) Then
            If ReporteFotografico.RecordCount > 0 then
            Begin
                BlobField := reportefotografico.FieldByName('bImagen') ;
                BS := reportefotografico.CreateBlobStream(BlobField, bmRead) ;
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
    End
end;

procedure Tfrm_Depositoscias.btAplicarClick(Sender: TObject);
Var
    sumasubiva, subtotal1, iva1 : Double ;
    Marca : TBookmark;
begin
   Marca := Grid_facturas.datacontroller.DataSource.DataSet.GetBookmark ;
  if qryParcPagos.RecordCount > 0 then
     begin
        Connection.QryBusca.Active := False ;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select sum(dImporte) as subtotal, sum(dIva) as iva from con_parcfacturas Where iIdFolio =:Folio And lPago="Si"');
        Connection.QryBusca.Params.ParamByName('Folio').DataType := ftInteger ;
        Connection.QryBusca.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
        Connection.QryBusca.Open ;

        if Connection.QryBusca.RecordCount > 0 Then
          begin
            If Connection.QryBusca.FieldByName('subtotal').IsNull Then
               subtotal1 := 0
            else
               subtotal1 := Connection.QryBusca.FieldValues['subtotal'] ;

            If Connection.QryBusca.FieldByName('iva').IsNull Then
               iva1 := 0
            else
               iva1 := Connection.QryBusca.FieldValues['iva'] ;

              sumasubiva :=  subtotal1 +  iva1 ;
             if sumasubiva <= (zqEgresos.FieldValues['dImporteTotal'] +  zqEgresos.FieldValues['dIva'])   Then
                 begin
                   Connection.zCommand.Active := False ;
                   Connection.zCommand.SQL.Clear ;
                   Connection.zCommand.SQL.Add('Update con_tesoreriaegresos Set dParcialidad =:Importetotal Where iIdFolio=:Folio');
                   Connection.zCommand.Params.ParamByName('Importetotal').DataType := ftFloat ;
                   Connection.zCommand.Params.ParamByName('Importetotal').Value    := Connection.qryBusca.FieldValues['subtotal']+ Connection.qryBusca.FieldValues['Iva'];
                   Connection.zCommand.Params.ParamByName('Folio').DataType        := ftInteger ;
                   Connection.zCommand.Params.ParamByName('Folio').Value           := zqEgresos.FieldValues['iIdFolio']  ;
                   Connection.zCommand.ExecSQL ;
                   MessageDlg('El Monto se Aplico a la Factura', mtInformation, [mbOk], 0);
                   zqEgresos.Refresh ;
                end
            else
              begin
                 MessageDlg('El Monto Total de las Parcialidades es Mayor a la Factura', mtInformation, [mbOk], 0);

              end;
         end;
     end;
 
     BitBtn1.Enabled := False;
     zQEgresos.Cancel ;
     frmBarra1.btnCancelClick(Sender);
     zqEgresos.FieldValues['lAplicaPagoParcial']  := 'SI' ;
     Panel.Visible := False ;
     Grid_facturas.datacontroller.DataSource.DataSet.GotoBookmark(Marca) ;

end;

procedure Tfrm_Depositoscias.btCancelarClick(Sender: TObject);
begin
   Panel.Visible := False ;
   BitBtn1.Enabled := False;
   zQEgresos.Cancel ;
   frmBarra1.btnCancelClick(Sender);
end;

procedure Tfrm_Depositoscias.Canceladas1Click(Sender: TObject);
begin
//    qryConsultaF             := TZReadOnlyQuery.Create(Self);
//    qryConsultaF.Connection  := Connection.zConnection;

//    dsConsultaF              := TfrxDBDataset.Create(Self) ;
//    dsConsultaF.DataSet      := qryConsultaF ;
//    dsConsultaF.UserName     := 'dsConsultaF' ;

//    frReporte.DataSets.Add(dsConsultaF) ;

    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;
  If (chkTotal.Checked = true )or (chkPago.checked=true) or (chkExpedida.checked=true) Then
     begin

       if chkTotal.Checked = True  Then
          qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                            'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="CANCELADA" order by i.iFolio ') ;

       if chkPago.Checked = True  Then
          qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                            'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="CANCELADA" ' +
                            'And i.dIdFecha >=:Fecha1 And i.dIdFecha <=:Fecha2 Order by i.iFolio ');

       if chkExpedida.Checked = True  Then
          qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                            'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="CANCELADA" ' +
                            'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 Group by i.sIdCompania Order by i.iFolio ');

      if ( chkPago.Checked = True) Or ( chkExpedida.checked = True) Or (chkExpedida.Checked = True ) Then
        begin
          qryConsultaF.Params.ParamByName('Fecha1').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
          qryConsultaF.Params.ParamByName('Fecha2').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
        end;

     qryConsultaF.Open ;
     frReporte.PreviewOptions.MDIChild := False ;
     frReporte.PreviewOptions.Modal := True ;
     frReporte.PreviewOptions.ShowCaptions := False ;
     frReporte.Previewoptions.ZoomMode := zmPageWidth ;
     if chkAgrupado.Checked = True Then
        frReporte.LoadFromFile(Global_Files+'frFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+'frFacturasT.fr3') ;

      frReporte.ShowReport() ;
   end
   else
       MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);
//    qryConsultaF.Destroy ;
//    dsConsultaF.Destroy ;
end;

procedure Tfrm_Depositoscias.chkExpedidaClick(Sender: TObject);
begin
 if chkExpedida.checked = True  Then
   begin
     chkPago.checked   := False ;
     chkTotal.Checked  := False ;
   end;
end;

procedure Tfrm_Depositoscias.chkPagoClick(Sender: TObject);
begin
   if chkPago.checked = True Then
      begin
        chkExpedida.checked   := False ;
        chkTotal.Checked      := False ;
      end;
end;

procedure Tfrm_Depositoscias.chkTotalClick(Sender: TObject);
begin
 if chkTotal.checked = True  Then
   begin
     chkPago.checked   := False ;
     chkExpedida.Checked  := False ;
   end;
end;

procedure Tfrm_Depositoscias.dbCompaniaExit(Sender: TObject);
begin
   zQEgresos.FieldValues['sIdCompania']     := dbCompania.KeyValue ;
   zqProyectos.Active  := False ;
   zQProyectos.Params.ParamByName('Proyecto').DataType := FtString ;
   zQProyectos.Params.ParamByName('Proyecto').Value    := dbCompania.KeyValue ;
   zqProyectos.Open ;
end;

procedure Tfrm_Depositoscias.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  DBEdit3.SetFocus
end;

procedure Tfrm_Depositoscias.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    DBEdit6.SetFocus
end;

procedure Tfrm_Depositoscias.dbiFolioEnter(Sender: TObject);
begin
  dbiFolio.Color := global_color_entrada
end;

procedure Tfrm_Depositoscias.dbiFolioExit(Sender: TObject);
begin
  dbiFolio.Color := global_color_salida
end;

procedure Tfrm_Depositoscias.dbPagosparcialesEnter(Sender: TObject);
begin
    Panel.Visible := Not Panel.Visible ;

    grid_factpag.Columns[0].ReadOnly := False ;
    grid_factpag.Columns[1].ReadOnly := False ;
    grid_factpag.Columns[2].ReadOnly := False ;
    grid_factpag.Columns[3].ReadOnly := False ;
    grid_factpag.Columns[4].ReadOnly := False ;
    grid_factpag.Columns[5].ReadOnly := False ;
    qryParcPagos.Params.ParamByName('IdFactura').DataType := ftInteger ;
    qryParcPagos.Params.ParamByName('IdFactura').Value    := zqEgresos.FieldValues['iIdFolio'];
    qryParcPagos.Open ;
    if qryParcPagos.RecordCount = 0 Then
       ValorCad := 'ORIGINAL'
    else
       ValorCad := 'PAGOS' ;
    //grid_Facturas.SetFocus ;
end;

procedure Tfrm_Depositoscias.ENERO1Click(Sender: TObject);
 Var
 Imes1, Imes2, myDay, myMonth, myYear : word;
 mes1, mes2 : String ;
begin
    connection.configuracionCont.Active := false;
    connection.configuracionCont.SQL.Clear;
    connection.configuracionCont.SQL.Add('select * from con_configuracion');
    connection.configuracionCont.Open ;

     DecodeDate(tdFechaInicio.date, myYear, myMonth, myDay);
     iMes1 := (myMonth) ;
     mes1  := UpperCase(LongMonthNames[iMes1]);

     DecodeDate(tdFechaFinal.date, myYear, myMonth, myDay);
     iMes2 := (myMonth) ;
     mes2  := UpperCase(LongMonthNames[iMes2]);


    zQEgresos.Refresh ;
    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;
   If (chkTotal.Checked = true )or (chkPago.checked=true) or (chkExpedida.checked=true) Then
     begin
       if chkTotal.Checked = True  Then
           qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and i.sMes =:Mes order by i.sIdCompania, i.iFolio ') ;

       if chkPago.Checked = True Then
           qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and i.sMes =:Mes ' +
                             'Order by i.sIdCompania, i.iFolio ') ;

       if chkExpedida.Checked = True Then
           qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and i.sMes =:Mes  ' +
                             'Order by i.sIdCompania, i.iFolio ') ;

    if (chkPago.Checked = True Or chkExpedida.checked = True) Then
      begin
          qryConsultaF.Params.ParamByName('Mes').DataType := ftString ;
          qryConsultaF.Params.ParamByName('Mes').Value    := Mes1 ;
      end;

    qryConsultaF.Open ;

     frReporte.PreviewOptions.MDIChild := False ;
     frReporte.PreviewOptions.Modal := True ;
     frReporte.PreviewOptions.ShowCaptions := False ;
     frReporte.Previewoptions.ZoomMode := zmPageWidth ;
      if chkAgrupado.Checked = True Then
        frReporte.LoadFromFile(Global_Files+'frFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+'frFacturasT.fr3') ;
       frReporte.ShowReport() ;
   end
   else

       MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);

end;

procedure Tfrm_Depositoscias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_Depositoscias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) And not (ActiveControl is TDBMemo) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
    
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure Tfrm_Depositoscias.FormShow(Sender: TObject);
var
  frmSetupTmp: TfrmSetup;
begin
    //UtGrid:=TicdbGrid.create(grid_facturas);
    zq_StatusFacturas.Open;
    tdFechaInicio.Date := Date() ;
    tdFechaFinal.Date  := Date() ;

    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Params.ParamByName('Compania').DataType := ftString ;
    zQCuentasBancarias.Params.ParamByName('Compania').Value    := Global_Contrato ;
    zQCuentasBancarias.Open ;

    if zQCuentasBancarias.RecordCount > 0 then
        tsIdCuentaBancaria.KeyValue := zqCuentasBancarias.FieldValues['sIdNumeroCuenta'] ;
    zQEgresos.Active := False ;
    zQEgresos.Params.ParamByName('cuenta').DataType := ftString ;

    if zQCuentasBancarias.RecordCount > 0 then
        zQEgresos.Params.ParamByName('cuenta').Value := tsIdCuentaBancaria.KeyValue ;
    zQEgresos.Open ;
    NxPageControl1.ActivePage := NxTabSheet1;

    qryCompanias.Active := False ;
    qryCompanias.Open ;

 //   zqProyectos.Active := False ;
 //   zqProyectos.Open ;
    frmSetupTmp := TfrmSetup.Create(nil);
    frmSetupTmp.configuracion.Active := False;
    frmSetupTmp.configuracion.Params.ParamByName('contrato').DataType := ftString;
    frmSetupTmp.configuracion.Params.ParamByName('contrato').Value := global_contrato;
    frmSetupTmp.configuracion.Open;
    frmSetupTmp.Close;

   //btnInsertar.Click := btnAdd.Click; 
end;

procedure Tfrm_Depositoscias.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   NxPageControl1.ActivePage := NxTabSheet1;
   OpcButton := 'New' ;
   zCommand.Active := False ;
   zCommand.SQL.clear ;
   zCommand.Sql.Add('select max(iIdFolio) as iIdFolio from con_tesoreriaegresos where sIdCompaniaConf = :Compania') ;
   zCommand.Params.ParamByName('Compania').DataType := ftString ;
   Zcommand.Params.ParamByName('Compania').Value    := global_contrato ;
   zCommand.Open ;

   if NOT zCommand.FieldByName('iIdFolio').IsNull then
      iFolio := zCommand.FieldValues ['iIdFolio'] + 1
   Else
      iFolio := 1 ;

    zQEgresos.Append ;
    zqEgresos.FieldValues['dIva']     := 0 ;
    zQEgresos.FieldByName('iIdStatus').AsInteger := 1;
    zqEgresos.FieldValues['lAplicaPagoParcial']  := False;
    zQEgresos.FieldValues['sIdCompaniaConf']     := global_contrato ;

    tdImporteTotal.Enabled := True ;

    dbiFolio.Enabled         := True ;
    tdFechaExp.Enabled       := True ;
    dbfechaRecepcion.Enabled := True ;
    tdFecha.Enabled          := True ;
    tmDescripcion.Enabled    := True ;
    dbCompania.Enabled       := True ;
    dbProyecto.Enabled       := True ;
    dbIva.Enabled            := True ;
    tsReferencia.Enabled     := True ;
    cmbMeses.Enabled         := True ;

    dbestado.Enabled := True;

    dbiFolio.SetFocus;
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Imprimir1.Enabled := False ;
    Salir1.Enabled := False ;

end;

procedure Tfrm_Depositoscias.frmBarra1btnCancelClick(Sender: TObject);
begin
    BitBtn1.Enabled := False;
    zQEgresos.Cancel ;
    frmBarra1.btnCancelClick(Sender);
     dbiFolio.Enabled         := False ;
     tdFechaExp.Enabled       := False ;
     dbfechaRecepcion.Enabled := False ;
     tdFecha.Enabled          := False ;
     tmDescripcion.Enabled    := False ;
     dbCompania.Enabled       := False ;
     dbProyecto.Enabled       := False ;
     dbIva.Enabled            := False ;
     tsReferencia.Enabled     := False ;
     cmbMeses.Enabled         := False ;
     dbestado.Enabled         := False;
end;

procedure Tfrm_Depositoscias.frmBarra1btnDeleteClick(Sender: TObject);
Var
       Marca2 : TBookmark;
begin

     Marca2 := Grid_facturas.DataController.DataSource.DataSet.GetBookmark ;
 If zQEgresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     // try
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('delete from con_facturas_detalles where iId_Factura =:Factura');
        connection.QryBusca.Params.ParamByName('Factura').DataType := ftInteger;
        connection.QryBusca.Params.ParamByName('Factura').Value    := zqEgresos.FieldValues['iIdFolio'];
        connection.QryBusca.ExecSQL ;

        zQEgresos.Delete ;
        zqEgresos.Refresh ;
        Grid_facturas.Datacontroller.DataSource.DataSet.GotoBookmark(Marca2) ;

   //   except
   ///     MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
//      end
    end

end;

procedure Tfrm_Depositoscias.frmBarra1btnEditClick(Sender: TObject);

begin
  if zQEgresos.RecordCount > 0 then
  begin
    tdImporteTotal.Enabled := False ;
    BitBtn1.Enabled        := True ;

    dbiFolio.Enabled         := True ;
    tdFechaExp.Enabled       := True ;
    dbfechaRecepcion.Enabled := True ;
    tdFecha.Enabled          := True ;
    tmDescripcion.Enabled    := True ;
    dbCompania.Enabled       := True ;
    dbProyecto.Enabled       := True ;
    dbIva.Enabled            := True ;
    tsReferencia.Enabled     := True ;
    cmbMeses.Enabled         := True ;
    dbestado.Enabled         := True ;

    dbPagosParciales.Enabled := True ;
    qryConsulta.Active := False;
    qryConsulta.SQL.Text := 'SELECT COUNT(*) AS EscaneosTotales FROM con_facturasfotografico WHERE ildFolio = :Factura ORDER BY iImagen';
    if dbiFolio.text = '' then
       qryConsulta.Params.ParamByName('Factura').Value := 0
    else
       qryConsulta.Params.ParamByName('Factura').Value := dbiFolio.text ;
    qryConsulta.Open;

    frmBarra1.btnEditClick(Sender);
    zQEgresos.Edit ;
    Insertar1.Enabled := False ;
    Editar1.Enabled := False ;
    Registrar1.Enabled := True ;
    Can1.Enabled := True ;
    Eliminar1.Enabled := False ;
    Refresh1.Enabled := False ;
    Imprimir1.Enabled := False ;
    Salir1.Enabled := False ;
  end;
end;

procedure Tfrm_Depositoscias.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_Depositoscias.frmBarra1btnPostClick(Sender: TObject);
   Var
       Marca : TBookmark;
       sMensaje : string;
begin
     sMensaje := '';
     //Validacion de los campos vacios..
     if cmbmeses.Text = '' then
        sMensaje := 'MES';

     if dbProyecto.Text = '' then
        sMensaje := 'PROYECTO';

     if dbCompania.Text = '' then
        sMensaje := 'COMPAÑIA';

     if sMensaje <>'' then
     begin
         messageDLG('EXISTEN DATOS VACIOS EN '+ sMensaje +'.', mtInformation, [mbOk], 0);
         if sMensaje = 'MES' then
            cmbmeses.SetFocus;

         if sMensaje = 'PROYECTO' then
            dbProyecto.SetFocus;

         if sMensaje = 'COMPAÑIA' then
            dbCompania.SetFocus;
         exit;
     end;

     Marca := Grid_facturas.Datacontroller.DataSource.DataSet.GetBookmark ;
     zqEgresos.FieldValues['dIva']                := zqEgresos.FieldValues['dImporteTotal'] * global_iva ;
     zqEgresos.FieldValues['iIdStatus']           := zq_StatusFacturas.FieldValues['iId'] ;
     zqEgresos.FieldValues['lAplicaPagoParcial']  := 'NO' ;

     zQEgresos.Post ;
     zQEgresos.Refresh ;
     OpcButton := 'Edit' ;
     frmBarra1.btnPostClick(Sender);
     BitBtn1.Enabled  := False;
     Grid_facturas.datacontroller.DataSource.DataSet.GotoBookmark(Marca) ;

     dbiFolio.Enabled         := False ;
     tdFechaExp.Enabled       := False ;
     dbfechaRecepcion.Enabled := False ;
     tdFecha.Enabled          := False ;
     tmDescripcion.Enabled    := False ;
     dbCompania.Enabled       := False ;
     dbProyecto.Enabled       := False ;
     dbIva.Enabled            := False ;
     tsReferencia.Enabled     := False ;
     cmbMeses.Enabled         := False ;
end;

procedure Tfrm_Depositoscias.frmBarra1btnPrinterClick(Sender: TObject);
begin
    qryConsulta.Active := False ;
    qryConsulta.SQL.Clear ;
    qryConsulta.SQL.Add('select  te.dIdFecha, c.sIdCompania, c.sRazonSocial, te.sReferencia,  ' +
                        'te.mDescripcion, te.dImporteTotal, te.dIva ' +
                        'from con_tesoreriaegresos te ' +
                        'inner join con_companias c On (te.sIdCompania=c.sIdCompania ) ' +
                        'and te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                        'and sTipoMovimiento="DEPOSITO" order by month(te.dIdFecha)') ;
    qryConsulta.Params.ParamByName('Fecha1').DataType := ftDate ;
    qryConsulta.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
    qryConsulta.Params.ParamByName('Fecha2').DataType := ftDate ;
    qryConsulta.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
    qryConsulta.Open ;
    frReporte.LoadFromFile(global_files+ 'frFechas.fr3') ;
    frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.frmBarra1btnRefreshClick(Sender: TObject);
begin
    Connection.configuracion.Refresh ;
    zQEgresos.Refresh ;
    zQCuentasBancarias.Refresh ;
    qryCompanias.Refresh ;
end;

procedure Tfrm_Depositoscias.frxReport1GetValue(const VarName: string;
  var Value: Variant);
Var
  Valor: Real;
begin
  Valor := 0;
  if VarName = 'IMPORTE_LETRAS' then begin
    Value := xNumerosToLletres(zqEgresos.FieldByName('dImporteTotal').AsCurrency + zqEgresos.FieldByName('dIva').AsCurrency);
  end;
  if VarName = 'IMPORTE_TOTAL_PENDIENTE' then begin
    zQEgresos.First;
    while not zQEgresos.Eof do begin
      if zQEgresos.FieldByName('sStatus').AsString <> 'PAGADA' then begin
        Valor := Valor + (zQEgresos.FieldByName('dImporteTotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat);
      end;
      zQEgresos.Next;
    end;
    Value := Valor;
  end;
  if VarName = 'IMPORTE_TOTAL_PAGADO' then begin
    zQEgresos.First;
    while not zQEgresos.Eof do begin
      if zQEgresos.FieldByName('sStatus').AsString = 'PAGADA' then begin
        Valor := Valor + (zQEgresos.FieldByName('dImporteTotal').AsFloat + zQEgresos.FieldByName('dIva').AsFloat);
      end;
      zQEgresos.Next;
    end;
    Value := Valor;
  end;
  if VarName = 'FECHA_INICIAL' then begin
    Value := FormatDateTime('dd-mm-yyyy', tdFechaInicio.DateTime);
  end;
  if VarName = 'FECHA_FINAL' then begin
    Value := FormatDateTime('dd-mm-yyyy', tdFechaFinal.Date);
  end;
end;

procedure Tfrm_Depositoscias.FTitleClick(Column: TColumn);
begin

UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_Depositoscias.grid_facturasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
        If zQEgresos.RecordCount > 0 Then
            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'PAGADA' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clBlue
            end ;

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'CANCELADA' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clRed
            end ;

            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'PENDIENTE' then
            begin

                AFont.Color := clBlack
            end ;

            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'TRASPASO' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clGreen
            end ;

            If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'ENTREGADA' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clMaroon
            end ;
end;

procedure Tfrm_Depositoscias.grid_facturasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{   ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zqEgresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;  }
       Panel.Visible := False ; 

end;

procedure Tfrm_Depositoscias.grid_facturasKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zqEgresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;     }
        Panel.Visible := False ;
end;

procedure Tfrm_Depositoscias.grid_facturasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_Depositoscias.grid_facturasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_Depositoscias.Grid_facturasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatus');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'PAGADA' then
    AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'TRASPASO' then
    AStyle := cxstylGreen;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'CANCELADA' then
    AStyle := cxstylRed;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'ENTREGADA' then
    AStyle := cxstylMaroon;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'PENDIENTE' then
    AStyle := cxstylBlack;
end;

procedure Tfrm_Depositoscias.grid_facturasTitleClick(Column: TColumn);
begin
   UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_Depositoscias.FCellClick(Column: TColumn);
begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zqEgresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_Depositoscias.FKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zqEgresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_Depositoscias.FKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zqEgresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_Depositoscias.FMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_Depositoscias.FMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_Depositoscias.ImprimirFactura1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(global_files + 'intelcode.fr3') ;
  frxReport1.ShowReport();
end;

procedure Tfrm_Depositoscias.ImprimirFacturaATechnology1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(global_files + 'atechnologyfact.fr3');
  frxReport1.ShowReport();
end;

procedure Tfrm_Depositoscias.ImprimirfacturaOriginal1Click(Sender: TObject);
begin
   connection.configuracionCont.Active := false;
   connection.configuracionCont.SQL.Clear;
   connection.configuracionCont.SQL.Add('select * from con_configuracion');
   connection.configuracionCont.Open ;

   qryFotografico.Active := False ;
   qryFotografico.SQL.Clear;
   qryfotografico.SQL.Add('select * from con_facturasfotografico Where ildFolio =:Folio');
   qryFotografico.Params.ParamByName('Folio').DataType := ftInteger ;
   qryFotografico.Params.ParamByName('Folio').Value    := dbiFolio.Text ;
   qryFotografico.Open ;
   frxFotografia.DataSet := qryFotografico;
   frxReport1.LoadFromFile(Global_Files + 'ReporteFacturaesc.fr3') ;
   frxReport1.ShowReport() ;

end;

procedure Tfrm_Depositoscias.ImprimirReporte1Click(Sender: TObject);
begin
  connection.configuracionCont.Active := false;
  connection.configuracionCont.SQL.Clear;
  connection.configuracionCont.SQL.Add('select * from con_configuracion');
  connection.configuracionCont.Open ;

  frxReport1.LoadFromFile(Global_Files + 'ReporteFechas.fr3');
  frxReport1.ShowReport();
end;

procedure Tfrm_Depositoscias.IngresosxCia1Click(Sender: TObject);
begin

    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    sParamQuery := 'select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, sum(i.dImporteTotal+i.dIva) as Importe, ' +
                   'i.dIdFecha, f.sNombre, b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                   'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                   'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                   'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                   'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="PAGADA" ' +
                   'And i.dIdFecha >= :FechaI and i.dIdFecha <= :FechaF ' +
                   'Group by c.sIdCompania Order by i.sIdCompania, i.iFolio' ;
    sParamTipo := 'Periodo' ;
    sParamTitle := '<<Grafica>> Detalle de Ingresos Por Compañia al dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    Application.CreateForm(Tfrm_GraficabarrasIngresos, frm_GraficabarrasIngresos);
    frm_GraficabarrasIngresos.Show;
end;

procedure Tfrm_Depositoscias.Label25Click(Sender: TObject);
 Var
   sumafactura, sumafactura2 : Double ;
begin
    Panel.Visible := Not Panel.Visible ;
    qryParcPagos.Active := False ;
    qryParcPagos.Params.ParamByName('IdFactura').DataType := ftInteger ;
    qryParcPagos.Params.ParamByName('IdFactura').Value    := zqEgresos.FieldValues['iIdFolio'];
    qryParcPagos.Open ;
    grid_factpag.Columns[0].ReadOnly := True ;
    grid_factpag.Columns[1].ReadOnly := True ;
    grid_factpag.Columns[2].ReadOnly := True ;
    grid_factpag.Columns[3].ReadOnly := True ;
    grid_factpag.Columns[4].ReadOnly := True ;
    grid_factpag.Columns[5].ReadOnly := True ;
   Connection.QryBusca2.Active := False ;
   Connection.QryBusca2.SQL.Clear ;
   Connection.QryBusca2.SQL.Add('Select sum(dImporte) as subtotal, sum(dIva) as iva from con_parcfacturas Where iIdFolio =:Folio And lPago="Si"');
   Connection.QryBusca2.Params.ParamByName('Folio').DataType := ftInteger ;
   Connection.QryBusca2.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
   Connection.QryBusca2.Open ;
   if (Connection.QryBusca2.FieldValues['subtotal'] > 0) or  (Connection.QryBusca2.FieldValues['iva'] > 0) Then
       begin
          sumaFactura  := (Connection.QryBusca2.FieldValues['subtotal'] + Connection.QryBusca2.FieldValues['Iva']);
          sumaFactura2 := (zqEgresos.FieldValues['dImporteTotal'] + zqEgresos.FieldValues['dIva']) ;
          SumaFactura  := SumaFactura2 - sumaFactura ;
          lblPendiente.Caption :=  ' $ '+ FloatToStr(SumaFactura) ;
       end
       else
          lblPendiente.Caption :=  zqEgresos.FieldValues['dImporteTotal'] + zqEgresos.FieldValues['dIva'] ;


end;

procedure Tfrm_Depositoscias.NxPageControl1Change(Sender: TObject);
begin
    chkAplicacuadre.Checked := False;
end;

procedure Tfrm_Depositoscias.otal1Click(Sender: TObject);
begin
//    qryConsultaF             := TZReadOnlyQuery.Create(Self);
//    qryConsultaF.Connection  := Connection.zConnection;

//    dsConsultaF              := TfrxDBDataset.Create(Self) ;
//    dsConsultaF.DataSet      := qryConsultaF ;
//    dsConsultaF.UserName     := 'dsConsultaF' ;

//    frReporte.DataSets.Add(dsConsultaF) ;
    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;

  if (chkTotal.Checked = true )or (chkPago.checked=true) or (chkExpedida.checked=true) Then
    begin
    if chkTotal.Checked = True  Then
       qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                            'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 order by i.iFolio ') ;

    if chkPago.Checked = True  Then
       qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                            'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 ' +
                            'And i.dIdFecha >=:Fecha1 And i.dIdFecha <=:Fecha2 Order by i.iFolio ') ;

    if chkExpedida.Checked = True  Then
       qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                            'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 ' +
                            'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 Order by i.iFolio ') ;


    if (chkPago.Checked = True Or chkExpedida.checked = True) Then
      begin
          qryConsultaF.Params.ParamByName('Fecha1').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
          qryConsultaF.Params.ParamByName('Fecha2').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
      end;

     qryConsultaF.Open ;
     frReporte.PreviewOptions.MDIChild := False ;
     frReporte.PreviewOptions.Modal := True ;
     frReporte.PreviewOptions.ShowCaptions := False ;
     frReporte.Previewoptions.ZoomMode := zmPageWidth ;
     if chkAgrupado.Checked = True Then
        frReporte.LoadFromFile(Global_Files+'frFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+'frFacturasT.fr3') ;

      frReporte.ShowReport() ;
    end
    else
      MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);


   // qryConsultaF.Destroy ;
   // dsConsultaF.Destroy ;
end;

procedure Tfrm_Depositoscias.Pagadas1Click(Sender: TObject);
begin
//    qryConsultaF             := TZReadOnlyQuery.Create(Self);
//    qryConsultaF.Connection  := Connection.zConnection;

//    dsConsultaF              := TfrxDBDataset.Create(Self) ;
//    dsConsultaF.DataSet      := qryConsultaF ;
//    dsConsultaF.UserName     := 'dsConsultaF' ;

    //frReporte.DataSets.Add(dsConsultaF) ;

    connection.configuracionCont.Active := false;
    connection.configuracionCont.SQL.Clear;
    connection.configuracionCont.SQL.Add('select * from con_configuracion');
    connection.configuracionCont.Open ;

    zQEgresos.Refresh ;
    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;
   If (chkTotal.Checked = true )or (chkPago.checked=true) or (chkExpedida.checked=true) Then
     begin
       if chkTotal.Checked = True  Then
           qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="PAGADA" order by i.sIdCompania, i.iFolio ') ;

       if chkPago.Checked = True Then
           qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="PAGADA"  ' +
                             'And i.dIdFecha >=:Fecha1 And i.dIdFecha <=:Fecha2 Order by i.sIdCompania, i.iFolio ') ;

       if chkExpedida.Checked = True Then
           qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                             'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and f.sNombre="PAGADA"  ' +
                             'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 Order by i.sIdCompania, i.iFolio ') ;

    if (chkPago.Checked = True Or chkExpedida.checked = True) Then
      begin
          qryConsultaF.Params.ParamByName('Fecha1').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
          qryConsultaF.Params.ParamByName('Fecha2').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
      end;

    qryConsultaF.Open ;

     frReporte.PreviewOptions.MDIChild := False ;
     frReporte.PreviewOptions.Modal := True ;
     frReporte.PreviewOptions.ShowCaptions := False ;
     frReporte.Previewoptions.ZoomMode := zmPageWidth ;
      if chkAgrupado.Checked = True Then
        frReporte.LoadFromFile(Global_Files+'frFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+'frFacturasT.fr3') ;
       frReporte.ShowReport() ;
   end
   else

       MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);

    //qryConsultaF.Destroy ;
    //dsConsultaF.Destroy ;
end;

procedure Tfrm_Depositoscias.Pendientes1Click(Sender: TObject);
begin
//    qryConsultaF             := TZReadOnlyQuery.Create(Self);
//    qryConsultaF.Connection  := Connection.zConnection;

//    dsConsultaF              := TfrxDBDataset.Create(Self) ;
//    dsConsultaF.DataSet      := qryConsultaF ;
//    dsConsultaF.UserName     := 'dsConsultaF' ;

  //  frReporte.DataSets.Add(dsConsultaF) ;
    zQEgresos.Refresh ;
    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;
    zQEgresos.Refresh ;
  if (chkTotal.Checked = true )or (chkPago.checked=true) or (chkExpedida.checked=true) Then
    begin
      if chkTotal.Checked = True  Then
        qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                           'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                           'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                           'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                           'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                           'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and (f.sNombre="PENDIENTE" Or f.sNombre="ENTREGADA") order by i.sIdCompania, i.iFolio ') ;

      if chkPago.Checked = True  Then
        qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                           'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and (f.sNombre="PENDIENTE" Or f.sNombre="ENTREGADA") ' +
                           'And i.dIdFecha >=:Fecha1 And i.dIdFecha <=:Fecha2 Order by i.sIdCompania, i.iFolio ') ;

      if chkExpedida.Checked = True  Then
        qryConsultaF.SQL.Add('select i.dIva,i.sTipoMovimiento, i.dFechaFactura, c.sRazonSocial, i.iFolio, i.dImporteTotal, i.dIdFecha, f.sNombre, ' +
                             'b.sNombreCuenta, i.sIdCompania From con_tesoreriaegresos i ' +
                             'Inner Join con_companias c On (i.sIdCompania=c.sIdCompania ) ' +
                             'Inner Join con_facturas_status f On(i.iIdStatus=f.iId) ' +
                             'Inner Join con_cuentasbancarias b On (b.sIdNumeroCuenta=i.sIdNumeroCuenta) ' +
                           'Where i.sTipoMovimiento="DEPOSITO" and i.iFolio >0 and (f.sNombre="PENDIENTE" Or f.sNombre="ENTREGADA") ' +
                           'And i.dFechaFactura >=:Fecha1 And i.dFechaFactura <=:Fecha2 Order By i.sIdCompania, i.iFolio ') ;


    if (chkPago.Checked = True Or chkExpedida.checked = True) Then
      begin
          qryConsultaF.Params.ParamByName('Fecha1').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
          qryConsultaF.Params.ParamByName('Fecha2').DataType := ftDate ;
          qryConsultaF.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
      end;

    qryConsultaF.Open ;
    frReporte.PreviewOptions.MDIChild := False ;
    frReporte.PreviewOptions.Modal := True ;
   // frReporte.PreviewOptions.Maximized := CheckMaximized () ;
    frReporte.PreviewOptions.ShowCaptions := False ;
    frReporte.Previewoptions.ZoomMode := zmPageWidth ;
    if chkAgrupado.Checked = True Then
        frReporte.LoadFromFile(Global_Files+'frFacturasAgrupadas.fr3')
    else
        frReporte.LoadFromFile(Global_Files+'frFacturasT.fr3') ;

    frReporte.ShowReport() ;
  end
  else
      MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);

  //  qryConsultaF.Destroy ;
  //  dsConsultaF.Destroy ;
end;

procedure Tfrm_Depositoscias.Porcompaias1Click(Sender: TObject);
begin
    connection.configuracionCont.Active := false;
    connection.configuracionCont.SQL.Clear;
    connection.configuracionCont.SQL.Add('select * from con_configuracion');
    connection.configuracionCont.Open ;


    qryConsulta.Active := False ;
    qryConsulta.SQL.Clear ;
    qryConsulta.SQL.Add('select d.sNombre AS sStatus, te.*, c.sRazonSocial AS sCompanya ' +
                        'from con_tesoreriaegresos te ' +
                        'inner join con_companias c On (te.sIdCompania=c.sIdCompania ) ' +
                        'inner join con_facturas_status d ON (d.iId = te.iIdStatus) ' +
                        'and te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                        'and sTipoMovimiento="DEPOSITO" order by te.sIdCompania, te.dIdFecha') ;
    qryConsulta.Params.ParamByName('Fecha1').DataType := ftDate ;
    qryConsulta.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
    qryConsulta.Params.ParamByName('Fecha2').DataType := ftDate ;
    qryConsulta.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
    qryConsulta.Open ;
  //  dszQEgresos.DataSet := qryConsulta;
    frxReport1.LoadFromFile(Global_Files + 'ReporteCompanyas.fr3') ;
    frxReport1.ShowReport() ;
  //  dszQEgresos.DataSet := zQEgresos;
end;

procedure Tfrm_Depositoscias.PorFechas1Click(Sender: TObject);
begin
     connection.configuracionCont.Active := false;
     connection.configuracionCont.SQL.Clear;
     connection.configuracionCont.SQL.Add('select * from con_configuracion');
     connection.configuracionCont.Open ;

     qryConsulta.Active := False ;
     qryConsulta.SQL.Clear ;
     qryConsulta.SQL.Add('select  te.dIdFecha, c.sIdCompania, c.sRazonSocial, te.sReferencia,  ' +
                        'te.mDescripcion, te.dImporteTotal, te.dIva ' +
                        'from con_tesoreriaegresos te ' +
                        'inner join con_companias c On (te.sIdCompania=c.sIdCompania ) ' +
                        'and te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                        'and sTipoMovimiento="DEPOSITO" and iIdStatus= 4 order by month(te.dIdFecha)') ;
     qryConsulta.Params.ParamByName('Fecha1').DataType := ftDate ;
     qryConsulta.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
     qryConsulta.Params.ParamByName('Fecha2').DataType := ftDate ;
     qryConsulta.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
     qryConsulta.Open ;
     frReporte.LoadFromFile(global_files+ 'frFechas.fr3') ;
     frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.PorProyecto1Click(Sender: TObject);
begin
     qryAuxiliar.Active := False ;
     qryAuxiliar.SQL.Clear ;
     qryAuxiliar.SQL.Add('select o.sIdFolio, o.sNumeroOrden, o.sDescripcioncorta, o.sIdCompania, c.sRazonSocial, '+
                         'SUM(t.dImporteTotal+ t.dIva) as total from ordenesdetrabajo o  '+
                         'Inner join con_tesoreriaegresos t '+
                         'On (o.sNumeroOrden=t.sProyecto And o.sIdCompania=t.sIdCompania) '+
                         'Inner join con_companias c ' +
                         'On (o.`sIdCompania`=c.sIdCompania) ' +
                         'Where t.iIdStatus=4 Group by o.sIdCompania, o.sNumeroOrden order by o.sIdCompania');
     qryAuxiliar.Open ;
     frReporte.PreviewOptions.MDIChild := False ;
     frReporte.PreviewOptions.Modal := True ;
     frReporte.PreviewOptions.ShowCaptions := False ;
     frReporte.Previewoptions.ZoomMode := zmPageWidth ;
     frReporte.LoadFromFile(Global_Files+'reporteproyecto.fr3') ;
     frReporte.ShowReport() ;
end;

procedure Tfrm_Depositoscias.qryParcPagosAfterInsert(DataSet: TDataSet);
var
  subtotal, iva : Double ;
  cadp : String ;
begin
   cadp := 'PAGO FACTURA ' + IntTostr(zqEgresos.FieldValues['iFolio']);
   qryParcPagos.fieldValues['lPago']        := 'NO'  ;
   qryParcPagos.FieldValues['sDescripcion'] := cadp ;
   qryParcPagos.FieldValues['dIdFecha']     := date() ;
   if qryParcPagos.RecordCount = 0  Then
         begin
           qryParcPagos.fieldValues['dImporte']     := 0  ;
           qryParcPagos.fieldValues['dIva']         := 0 ;
         end
      else
         begin
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select sum(dImporte) as subtotal, sum(dIva) as iva from con_parcfacturas Where iIdFolio =:Folio And lPago="Si"');
            Connection.QryBusca.Params.ParamByName('Folio').DataType := ftInteger ;
            Connection.QryBusca.Params.ParamByName('Folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
            Connection.QryBusca.Open ;
            If Connection.QryBusca.FieldByName('subtotal').IsNull Then
               subtotal := 0
            else
               subtotal := Connection.QryBusca.FieldValues['subtotal'] ;

            If Connection.QryBusca.FieldByName('iva').IsNull Then
               iva := 0
            else
               iva := Connection.QryBusca.FieldValues['iva'] ;
                  
            qryParcPagos.fieldValues['dImporte']     := zqEgresos.FieldValues['dImporteTotal'] - subtotal  ;
            qryParcPagos.fieldValues['dIva']         := zqEgresos.FieldValues['dIva'] -  iva ;
            lblPendiente.Caption :=  qryParcPagos.fieldValues['dImporte'] +  qryParcPagos.fieldValues['dIva'] ;
         end;

end;

procedure Tfrm_Depositoscias.qryParcPagosBeforePost(DataSet: TDataSet);
begin
    if qryParcPagos.RecordCount > 0 Then
       ValorCad := 'PAGOS'
    else
       ValorCad := 'ORIGINAL' ;

   qryParcPagos.FieldValues['iIdFolio'] := zqEgresos.FieldValues['iIdFolio'] ;
   qryParcPagos.fieldValues['sTipo']    := ValorCad  ;
end;

procedure Tfrm_Depositoscias.qryParcPagosCalcFields(DataSet: TDataSet);
begin
   qryParcPagos.fieldvalues['Totalp'] := qryParcPagos.FieldValues['dImporte'] + qryParcPagos.FieldValues['dIva'] ;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoAfterCancel(DataSet: TDataSet);
begin
   btnPreview.Enabled := True ;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoAfterDelete(DataSet: TDataSet);
begin
 bImagen.Picture.Bitmap := Nil ;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoAfterEdit(DataSet: TDataSet);

Var
    size: Real ;
begin
    btnPreview.Enabled := False ;
    bImagen.Picture.Bitmap := Nil ;

    OpenPicture.Title := 'Inserta Imagen';
    sArchivo := '' ;
    If OpenPicture.Execute then
    begin
        try
            sArchivo := OpenPicture.FileName ;
            size := Tamanyo (sArchivo) ;
            If size <= 300 Then
                bImagen.Picture.LoadFromFile(OpenPicture.FileName)
            Else
                MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
        except
            bImagen.Picture.LoadFromFile('') ;
        end
    end
end;

procedure Tfrm_Depositoscias.ReporteFotograficoAfterInsert(DataSet: TDataSet);
Var
   size: Real ;
begin
    btnPreview.Enabled := False ;
    bImagen.Picture.Bitmap := Nil ;

    OpenPicture.Title := 'Inserta Imagen';
    sArchivo := '' ;
    If OpenPicture.Execute then
    begin
        try
            sArchivo := OpenPicture.FileName ;
            size := Tamanyo (sArchivo) ;
            If size <= 300 Then
                bImagen.Picture.LoadFromFile(OpenPicture.FileName)
            Else
                MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
        except
            bImagen.Picture.LoadFromFile('') ;
        end
    end;

     reportefotografico.fieldvalues['dIdFecha']     := zqEgresos.fieldvalues['dIdFecha'] ;
     reportefotografico.fieldvalues['ildFolio']     := zQEgresos.FieldValues['iFolio'];
end;

procedure Tfrm_Depositoscias.ReporteFotograficoAfterScroll(DataSet: TDataSet);
begin
    If ReporteFotografico.RecordCount > 0 Then
    begin
        if (ReporteFotografico.State  <> dsInsert) OR (ReporteFotografico.State  <> dsEdit) then
            bImagen.Picture.Bitmap := Nil ;
        lblRecord.Caption := IntToStr(ReporteFotografico.Recno) + ' de ' + IntToStr(ReporteFotografico.RecordCount) ;
    end;
end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforeDelete(DataSet: TDataSet);
begin
 if zqEgresos.RecordCount = 0 then
        abort

end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforeEdit(DataSet: TDataSet);
begin
 if zqEgresos.RecordCount = 0 then
        abort
end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforeInsert(DataSet: TDataSet);
begin
   //reportefotografico.Insert ;
   //reportefotografico.fieldvalues['dIdFecha']     := zqEgresos.fieldvalues['dIdFecha'] ;
   //reportefotografico.fieldvalues['ildFolio']     := zqEgresos.fieldvalues['iIdFolio'] ;

 if zqEgresos.RecordCount = 0 then
        abort
end;

procedure Tfrm_Depositoscias.ReporteFotograficoBeforePost(DataSet: TDataSet);
begin

//    reportefotografico.fieldvalues['dIdFecha']     := zqEgresos.fieldvalues['dIdFecha'] ;
   reportefotografico.fieldvalues['ildFolio']     := reportefotografico.fieldvalues['ildFolio']  ;

    If sArchivo <> '' Then
            TGraphicField(reportefotografico.FieldByName('bImagen')).LoadFromFile(sArchivo);
        btnPreview.Enabled := True ;
end;

procedure Tfrm_Depositoscias.tdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        frmBarra1.btnAdd.SetFocus
end;

procedure Tfrm_Depositoscias.tdImporteTotalExit(Sender: TObject);
var
  multit : string ;
begin
   multit     := zQegresos.FieldValues['dImporteTotal'];
   multi      := strToFloat(multit) ;
   multi      := multi * global_iva;

   txtSubTotal.Text := zQegresos.FieldValues['dImporteTotal'];
   txtIva.Text := FloatToStr(multi);
   TxtTotal.Text := FloatToStr(zQegresos.FieldValues['dImporteTotal'] + multi);
   //dbIva.Text := FloatTostr(multi) ;
   if zQEgresos.State in [dsEdit, dsInsert] then begin
    zQegresos.FieldValues['dIva']:=FloatTostr(multi) ;
   end;
end;

procedure Tfrm_Depositoscias.tdFechaFinalExit(Sender: TObject);
var
  x  : String ;
  y, z, z1 : Double ;
begin

    zCommand.Active := False ;
    ZCommand.SQL.Clear ;
    ZCommand.SQL.Add('select sum(te.dIva) as Iva, sum(te.dImporteTotal) as subtotal from con_tesoreriaegresos te ' +
                      'Where te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                      'And sTipoMovimiento="DEPOSITO" And te.sIdNumeroCuenta =:Cuenta ') ;
    ZCommand.Params.ParamByName('Fecha1').DataType := ftDate ;
    ZCommand.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
    ZCommand.Params.ParamByName('Fecha2').DataType := ftDate ;
    ZCommand.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
    ZCommand.Params.ParamByName('Cuenta').DataType := ftString ;
    ZCommand.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.KeyValue ;
    ZCommand.Open ;
    If zCommand.RecordCount > 0 Then
       begin
          txtSubtotal.Text := zCommand.FieldValues['subtotal'];
          txtSubtotal.text := '$ ' + txtSubtotal.text ;
          txtIva.Text      := zCommand.FieldValues['Iva'];
          txtIva.text      := '$ ' + txtIva.Text;
          y                :=  zCommand.FieldValues['subtotal'];
          z                :=  zCommand.FieldValues['Iva'];
          z1               := y + z  ;
          txttotal.Text    := FloatToStr(z1) ;
          txtTotal.text    := '$ ' + txtTotal.Text ;
       end ;


    zQEgresos.Active := False ;
    zQEgresos.SQL.Clear ;
    zQEgresos.SQL.Add('select * from con_tesoreriaegresos te ' +
                      'Where te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                      'And sTipoMovimiento="DEPOSITO" And te.sIdNumeroCuenta =:Cuenta Order by te.dIdFecha') ;
    zQEgresos.Params.ParamByName('Fecha1').DataType := ftDate ;
    zQEgresos.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
    zQEgresos.Params.ParamByName('Fecha2').DataType := ftDate ;
    zQEgresos.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
    zQEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
    zQEgresos.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.KeyValue ;
    zQEgresos.Open ;

end;

procedure Tfrm_Depositoscias.tdFechaInicioExit(Sender: TObject);
begin
    zQEgresos.Active := False ;
    zQEgresos.SQL.Clear ;
    zQEgresos.SQL.Add('select * from con_tesoreriaegresos te ' +
                      'Where te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                      'And sTipoMovimiento="DEPOSITO" And te.sIdNumeroCuenta =:Cuenta Order by te.dIdFecha') ;
    zQEgresos.Params.ParamByName('Fecha1').DataType := ftDate ;
    zQEgresos.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
    zQEgresos.Params.ParamByName('Fecha2').DataType := ftDate ;
    zQEgresos.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
    zQEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
    zQEgresos.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.KeyValue ;
    zQEgresos.Open ;

end;

procedure Tfrm_Depositoscias.tsIdCuentaBancariaCloseUp(Sender: TObject);
begin
  gridPrincipal.SetFocus;
end;

procedure Tfrm_Depositoscias.tsIdCuentaBancariaExit(Sender: TObject);
begin
    zQEgresos.Active := False ;
    zQEgresos.Params.ParamByName('cuenta').DataType := ftString ;
    zQEgresos.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.KeyValue ;
    zQEgresos.Open ;
end;

procedure Tfrm_Depositoscias.Ventasx1Click(Sender: TObject);
begin
//    dParamFechaI := tdFechaInicio.Date ;
//    dParamFechaF := tdFechaFinal.Date ;
//    Application.CreateForm(Tfrm_GraficabarrasxmesIngresos, frm_GraficabarrasxmesIngresos);
//    frm_GraficabarrasxmesIngresos.Show;
end;

procedure Tfrm_Depositoscias.zQEgresosAfterInsert(DataSet: TDataSet);
begin
    zQEgresos.FieldValues['dFechaFactura']   := Date ;
    zQEgresos.FieldValues['dFechaRecepcion'] := Date + 1 ;
    zQEgresos.FieldValues['dIdFecha']        := Date + 30 ;

    zQEgresos.FieldValues['sIdNumeroCuenta'] := tsIdCuentaBancaria.KeyValue ;
    zQEgresos.FieldValues['iIdFolio']        := iFolio ;
    zQEgresos.FieldValues['sReferencia']     := '*' ;
    zQEgresos.FieldValues['sTipoMovimiento'] := 'DEPOSITO' ;
    zQEgresos.FieldValues['sIdArea']         := Connection.configuracionCont.fieldvalues['sTesoreria'] ;
    zQEgresos.FieldValues['dImporteTotal']   := 0 ;
    zQEgresos.FieldValues['lComprobado']     := 'Si' ;
    zQEgresos.FieldValues['sIdProveedor']    := '*' ;
    zQEgresos.FieldValues['sRFC']            := '*' ;
    zQEgresos.FieldValues['sRazonSocial']    := '*' ;
    zQEgresos.FieldValues['sDomicilio']      := '*' ;
    zQEgresos.FieldValues['sCiudad']         := '*' ;
    zQEgresos.FieldValues['sCP']             := '*' ;
    zQEgresos.FieldValues['sEstado']         := '*' ;
    zQEgresos.FieldValues['sTelefono']       := '*' ;
    zQEgresos.FieldValues['sReferencia']     := 'TRANSFERENCIA BANCARIA' ;
    zQEgresos.FieldValues['sIdCompania']     := dbCompania.KeyValue ;
    zQEgresos.FieldValues['dParcialidad']    := 0 ;


end;

procedure Tfrm_Depositoscias.zQEgresosAfterScroll(DataSet: TDataSet);
Var
  multit : String;
begin
    if zQEgresos.RecordCount  > 0 then
    begin
        zq_DetallesFacturas.Active := False;
        zq_DetallesFacturas.Params.ParamByName('Factura').AsInteger := zQEgresos.FieldByName('iIdFolio').AsInteger;
        zq_DetallesFacturas.Open;


        zqProyectos.Active  := False ;
        zQProyectos.Params.ParamByName('Proyecto').DataType := FtString ;
        zQProyectos.Params.ParamByName('Proyecto').Value    := zQEgresos.FieldValues['sIdCompania'] ;
        zqProyectos.Open ;

        txtSubtotal.Text := '$ ' + zQEgresos.FieldByName('dImporteTotal').AsString;
        txtIva.Text      := '$ ' + zQEgresos.FieldByName('dIva').AsString;
        txtTotal.Text    := '$ ' + zQEgresos.FieldByName('total').AsString;

        dbestado.Enabled := False;
    end;
end;

procedure Tfrm_Depositoscias.zQEgresosBeforeInsert(DataSet: TDataSet);
begin
    if tsIdCuentaBancaria.Text = '' then
        abort
end;

procedure Tfrm_Depositoscias.zQEgresosCalcFields(DataSet: TDataSet);
begin
    zQEgresos.FieldValues['Total'] := zQEgresos.FieldValues['dImportetotal'] + zQEgresos.FieldValues['dIva'] ;
end;

procedure Tfrm_Depositoscias.zQEgresossTipoMovimientoChange(Sender: TField);
begin
    if zQEgresossTipoMovimiento.Text = 'DEPOSITO' then
        zQEgresos.FieldValues['sIdArea'] := 'XYZ' ;
end;



procedure Tfrm_Depositoscias.zq_DetallesFacturasAfterScroll(DataSet: TDataSet);
Var
 multit: String;
begin
     DBLabelEdit1.Caption := '$ ' + FloatToStr(zq_DetallesFacturas.FieldByName('dCantidad').AsFloat * zq_DetallesFacturas.FieldByName('dImporte').AsFloat);
    qryConsulta.Active := False ;
    qryConsulta.SQL.Clear ;
    qryConsulta.SQL.Text := 'SELECT IFNULL(SUM(dCantidad * dImporte), 0) AS dSumaImporte FROM con_facturas_detalles WHERE iId_Factura = :Factura;';
    qryConsulta.Params.ParamByName('Factura').AsInteger := zQEgresos.FieldByName('iIdFolio').AsInteger;
    qryConsulta.Open ;
    txtSubtotal.Text := qryConsulta.FieldByName('dSumaImporte').AsString;

    multit     := txtSubtotal.Text;
    multi      := strToFloat(multit);
    multi      := multi * global_Iva;

    if chkAplicaCuadre.Checked = False then
    begin
        txtIva.Text := FloatToStr(multi);

        txtTotal.Text := FloatToStr(StrToFloat(txtSubtotal.Text) + multi);
    end;
end;

procedure Tfrm_Depositoscias.zq_DetallesFacturasBeforePost(DataSet: TDataSet);
begin
     x := zq_DetallesFacturas.FieldValues['dCantidad'] ;
     z := zq_DetallesFacturas.FieldValues['dImporte'] ;
     w := x * z ;
     iva := w * global_Iva;
     zqEgresos.Edit ;
     tdImporteTotal.Text := FloatToStr(w) ;
     zqEgresos.FieldValues['dIva'] := iva ;
     zqEgresos.Post ;
end;

Function Tfrm_Depositoscias.Tamanyo (Archivo : String): Real;
Var
   Busca : TsearchRec;
Begin
   if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
      Result := Busca.size / 1024
   Else
      Result:=0;
End;


end.
