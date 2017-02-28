unit frmEstadodeCuenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, ZAbstractRODataset, ZDataset, Grids, DBGrids,
  global, Mask, frxClass, frxDBSet, Buttons, DBCtrls, Menus, Utilerias, RXDBCtrl,
  rxToolEdit, rxCurrEdit, UDbGrid, cxGraphics, cxControls, cxLookAndFeels,
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
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu,
  ImgList, ExportaExcel, ExtCtrls, dxRibbon, ZAbstractDataset, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray ;

type
  Tfrm_EstadodeCuenta = class(TForm)
   pgEgresos: TPageControl;
    zQCuentasBancarias: TZReadOnlyQuery;
    zQTesoreriaEgresos: TZReadOnlyQuery;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    frxEgresos: TfrxDBDataset;
    rDiario: TfrxReport;
    tMonto: TCurrencyEdit;
    tdMontoFinal: TCurrencyEdit;
    Label5: TLabel;
    tdSaldo: TCurrencyEdit;
    Memo1: TMemo;
    Label6: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    cxDBGridConceptos: TcxGrid;
    GridConceptos: TcxGridDBTableView;
    CxGridNivelGrid1Level1: TcxGridLevel;
    col_fecha1: TcxGridDBColumn;
    Col_factura: TcxGridDBColumn;
    Col__tipomovimiento: TcxGridDBColumn;
    Col__Referencia: TcxGridDBColumn;
    Col__NumeroOrden: TcxGridDBColumn;
    Col__RazonSocial: TcxGridDBColumn;
    Col__Comprobado: TcxGridDBColumn;
    Col__NumeroCuenta: TcxGridDBColumn;
    Col__ImporteTotal: TcxGridDBColumn;
    Col__Iva: TcxGridDBColumn;
    Col__total: TcxGridDBColumn;
    Col_Folio: TcxGridDBColumn;
    Col__Nombre: TcxGridDBColumn;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxstylGreen: TcxStyle;
    cxstylMaroon: TcxStyle;
    cxstylBlackStrong: TcxStyle;
    cxstylPurple: TcxStyle;
    dxBarManager1: TdxBarManager;
    CostoOperativo1: TdxBarButton;
    mnEditarCaratula: TdxBarButton;
    mnImprimirEdoCuenta: TdxBarButton;
    GraficasdeBancos1: TdxBarButton;
    IngresosVSGastosGenerales1: TdxBarButton;
    GraficadeIngresosvsEgresosporCuentas1: TdxBarButton;
    cxImageList1: TcxImageList;
    ExportaraExcel: TdxBarButton;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label9: TLabel;
    popup_principal: TdxRibbonPopupMenu;
    dszqtesoreriaegresos: TDataSource;
    zQTesoreriaEgresossNombre: TStringField;
    zQTesoreriaEgresosdIdFecha: TDateField;
    zQTesoreriaEgresosiIdFolio: TIntegerField;
    zQTesoreriaEgresossTipoMovimiento: TStringField;
    zQTesoreriaEgresossIdArea: TStringField;
    zQTesoreriaEgresossIdNumeroCuenta: TStringField;
    zQTesoreriaEgresossNumeroOrden: TStringField;
    zQTesoreriaEgresossReferencia: TStringField;
    zQTesoreriaEgresossIdProveedor: TStringField;
    zQTesoreriaEgresossIdCompania: TStringField;
    zQTesoreriaEgresossRFC: TStringField;
    zQTesoreriaEgresossRazonSocial: TStringField;
    zQTesoreriaEgresossDomicilio: TStringField;
    zQTesoreriaEgresossCiudad: TStringField;
    zQTesoreriaEgresossCP: TStringField;
    zQTesoreriaEgresossEstado: TStringField;
    zQTesoreriaEgresossTelefono: TStringField;
    zQTesoreriaEgresosdImporteTotal: TFloatField;
    zQTesoreriaEgresosdImporteSubTotal: TFloatField;
    zQTesoreriaEgresoslComprobado: TStringField;
    zQTesoreriaEgresossStatus: TStringField;
    zQTesoreriaEgresosmDescripcion: TMemoField;
    zQTesoreriaEgresosdIva: TFloatField;
    zQTesoreriaEgresosdIva_Porcentaje: TFloatField;
    zQTesoreriaEgresoslAplicaiva: TStringField;
    zQTesoreriaEgresossPoliza: TStringField;
    zQTesoreriaEgresosdFechaFactura: TDateField;
    zQTesoreriaEgresosdFechaRecepcion: TDateField;
    zQTesoreriaEgresosiFolio: TIntegerField;
    zQTesoreriaEgresosiIdStatus: TIntegerField;
    zQTesoreriaEgresossTipoPago: TStringField;
    zQTesoreriaEgresossFormaPago: TIntegerField;
    zQTesoreriaEgresossNumeroDeCuenta: TStringField;
    zQTesoreriaEgresossNumeroPedido: TStringField;
    zQTesoreriaEgresosiImprimeProveedor: TIntegerField;
    zQTesoreriaEgresossMes: TStringField;
    zQTesoreriaEgresoslAplicaPagoParcial: TStringField;
    zQTesoreriaEgresosdParcialidad: TFloatField;
    zQTesoreriaEgresossProyecto: TStringField;
    zQTesoreriaEgresosCFDI_sTipoDocumento: TStringField;
    zQTesoreriaEgresosCFDI_sUUID: TStringField;
    zQTesoreriaEgresosCFDI_dFechaEmision: TDateTimeField;
    zQTesoreriaEgresosCFDI_dFechaTimbrado: TDateTimeField;
    zQTesoreriaEgresosCFDI_sSelloCFD: TStringField;
    zQTesoreriaEgresosCFDI_sSelloSAT: TStringField;
    zQTesoreriaEgresosCFDI_sCertificadoCFD: TStringField;
    zQTesoreriaEgresosCFDI_sCertificadoSAT: TStringField;
    zQTesoreriaEgresosCFDI_sCadenaOriginal: TStringField;
    zQTesoreriaEgresosCFDI_bbCode: TBlobField;
    zQTesoreriaEgresosCFDI_sEstado: TStringField;
    zQTesoreriaEgresosCFDI_sRegimenFiscal: TStringField;
    zQTesoreriaEgresosCFDI_sLugarExpedicion: TStringField;
    zQTesoreriaEgresosCFDI_sFormaDePago: TStringField;
    zQTesoreriaEgresosCFDI_sMetodoDePago: TStringField;
    zQTesoreriaEgresosCFDI_sTipoComprobante: TStringField;
    zQTesoreriaEgresossUsuario: TStringField;
    zQTesoreriaEgresosiEjercicio: TIntegerField;
    zQTesoreriaEgresosiIdTipoMoneda: TStringField;
    zQTesoreriaEgresosiIdPrecioMoneda: TIntegerField;
    zQTesoreriaEgresostotal: TFloatField;
    zQTesoreriaEgresosSaldo: TFloatField;
    Col__saldo: TcxGridDBColumn;
    zQTesoreriaEgresostotal2: TFloatField;
    zQTesoreriaEgresoslNotaCredito: TStringField;
    zQTesoreriaEgresossaldo2: TFloatField;
    strngfldQTesoreriaEgresossNombreCuenta: TStringField;
    Col__IvaRet: TcxGridDBColumn;
    Col__isrRet: TcxGridDBColumn;
    zQTesoreriaEgresosdIvaRet: TFloatField;
    zQTesoreriaEgresosdIsrRet: TFloatField;
    Col__fechaExp: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgEgresosChange(Sender: TObject);
    procedure GridConceptosDblClick(Sender: TObject);
    procedure rptReporteGetValue(const VarName: string; var Value: Variant);
    procedure Actualiza ;
    procedure pgEgresosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure CostoOperativo1Click(Sender: TObject);
    procedure mnEditarCaratulaClick(Sender: TObject);
    procedure mnImprimirEdoCuentaClick(Sender: TObject);
    procedure GridConceptosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure GraficasdeBancos1Click(Sender: TObject);
    procedure IngresosVSGastosGenerales1Click(Sender: TObject);
    procedure GridConceptosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridConceptosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridConceptosTitleClick(Column: TColumn);
    procedure GraficadeIngresosvsEgresosporCuentas1Click(Sender: TObject);
    procedure GridConceptosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure GridConceptosNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure ExportaraExcelClick(Sender: TObject);

    procedure Calcula(DataSet: TDataSet);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);

    function formatoFecha(fecha: TDate) : string;
    procedure zQTesoreriaEgresosCalcFields(DataSet: TDataSet);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);//Sam
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rfrm_EstadodeCuenta: Tfrm_EstadodeCuenta;
  utgrid:ticdbgrid;
  calculos : TDataSetNotifyEvent;
  dNotaCredito : double;
implementation

uses frmEditEgresos,
  frmGraficabarrasIngresosBancos, frmGraficabarrasIngresosvsEgresos,
  frm_connection, frmGraficabarrasIngresosvsEgresosxcuenta, frm_setup;
{$R *.dfm}

procedure Tfrm_EstadodeCuenta.Actualiza ;
begin
    dNotaCredito := 0;
    GridConceptos.DataController.DataSource.DataSet := nil;
    Sleep(50);
    tMonto.Value := 0 ;
    tdMontoFinal.Value := 0 ;
    //ESTE ES EL QUERY DE LOS INGRESOS
    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Sql.Clear ;
    zQCuentasBancarias.SQL.Add('select sum(te.dImporteTotal+te.dIva) as dImporteTotal from con_tesoreriaegresos te ' +
                               'inner join con_cuentasbancarias cb on (cb.sIdNumeroCuenta = te.sIdNumeroCuenta And cb.sNombreCuenta = :Cuenta) '  +
                               'Where te.dIdFecha >= :FechaI And te.dIdFecha <= :FechaF and (te.sTipoMovimiento="DEPOSITO" or te.sTipoMovimiento="TRASPASO") and (iIdStatus=4 or iIdStatus=5) Group By te.sIdNumeroCuenta') ;
    zQCuentasBancarias.Params.ParamByName('Cuenta').DataType  := ftString ;
    zQCuentasBancarias.Params.ParamByName('Cuenta').Value     := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
    zQCuentasBancarias.Params.ParamByName('FechaI').DataType  := ftDate ;
    zQCuentasBancarias.Params.ParamByName('FechaI').Value     := tdFechaInicio.Date ;
    zQCuentasBancarias.Params.ParamByName('FechaF').DataType  := ftDate ;
    zQCuentasBancarias.Params.ParamByName('FechaF').Value     := tdFechaFinal.Date ;
    zQCuentasBancarias.Open ;
    tMonto.Value := 0 ;
    if zQCuentasBancarias.RecordCount > 0 then
        tMonto.Value := zQCuentasBancarias.FieldValues['dImporteTotal'] ;


        //ESTE ES EL QUERY DE LOS GASTOS
    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Sql.Clear ;
    zQCuentasBancarias.SQL.Add('select sum((te.dImporteTotal+te.dIva)-(IFNULL(te.dIvaRet,0)+IFNULL(te.dIsrRet,0))) as dImporteTotal from con_tesoreriaegresos te ' +
                               'inner join con_cuentasbancarias cb on (cb.sIdNumeroCuenta = te.sIdNumeroCuenta And cb.sNombreCuenta = :Cuenta) '  +
                               'Where te.dIdFecha >= :FechaI And te.dIdFecha <= :FechaF And (te.sTipoMovimiento="GASTOS" Or te.sTipoMovimiento="CHEQUE") and lComprobado ="Si" Group By te.sIdNumeroCuenta') ;
    zQCuentasBancarias.Params.ParamByName('Cuenta').DataType := ftString ;
    zQCuentasBancarias.Params.ParamByName('Cuenta').Value    := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
    zQCuentasBancarias.Params.ParamByName('FechaI').DataType  := ftDate ;
    zQCuentasBancarias.Params.ParamByName('FechaI').Value     := tdFechaInicio.Date ;
    zQCuentasBancarias.Params.ParamByName('FechaF').DataType  := ftDate ;
    zQCuentasBancarias.Params.ParamByName('FechaF').Value     := tdFechaFinal.Date ;;
    zQCuentasBancarias.Open ;
    tdMontoFinal.Value := 0 ;
    if zQCuentasBancarias.RecordCount > 0 then
        tdMontoFinal.Value := zQCuentasBancarias.FieldValues['dImporteTotal'] ;


    //LA RESTA
    tdSaldo.Value := tMonto.Value  + tdMontoFinal.Value ;


    zQTesoreriaEgresos.Active := False ;
    zQTesoreriaEgresos.Sql.Clear ;

    zQTesoreriaEgresos.SQL.Add('select ' +
                               ' f.sNombre, tes.*, ' +
                                '((tes.dImporteTotal+tes.dIva)-(IFNULL(tes.dIvaRet,0)+IFNULL(tes.dIsrRet,0)))as total, ' +
                                'cb.sNombreCuenta, ' +
                                '(SELECT if ( ' +
                                '(select IFNULL(sum((te1.dImporteTotal+te1.dIva)-(IFNULL(te1.dIvaRet,0)+IFNULL(te1.dIsrRet,0))), 0) as Gasto  ' +
                                'from con_tesoreriaegresos te1  ' +
                                'Where te1.dIdFecha >= :fechaI ' +
                                'And te1.dIdFecha <= tes.dIdFecha ' +
                                'And (te1.sTipoMovimiento="GASTOS" Or te1.sTipoMovimiento="CHEQUE") ' +
                                'And lComprobado ="Si" ' +
                                'And te1.sIdNumeroCuenta = tes.sIdNumeroCuenta) < 0 , ' +
                                '(select ifnull(sum(teI1.dImporteTotal + teI1.dIva),0) as Ingreso ' +
                                'from con_tesoreriaegresos teI1  ' +
                                'where teI1.dIdFecha >= :fechaI  ' +
                                'and teI1.dIdFecha <= tes.dIdFecha ' +
                                'and teI1.sTipoMovimiento="DEPOSITO"  ' +
                                'and (iIdStatus=4 or iIdStatus=5) ' +
                                'and teI1.sIdNumeroCuenta = tes.sIdNumeroCuenta) ' +

                                '+' +

                                '(select IFNULL(sum((teG1.dImporteTotal+teG1.dIva)-(IFNULL(teG1.dIvaRet,0)+IFNULL(teG1.dIsrRet,0))), 0) as Gasto  ' +
                                'from con_tesoreriaegresos teG1 ' +
                                'Where teG1.dIdFecha >= :fechaI ' +
                                'And teG1.dIdFecha <= tes.dIdFecha  ' +
                                'And (teG1.sTipoMovimiento="GASTOS" Or teG1.sTipoMovimiento="CHEQUE") ' +
                                'And lComprobado ="Si" and lNotaCredito = "No"  ' +
                                'And teG1.sIdNumeroCuenta = tes.sIdNumeroCuenta), ' +
                                '(select ifnull(sum(teI2.dImporteTotal + teI2.dIva),0) as Ingreso ' +
                                'from con_tesoreriaegresos teI2  ' +
                                'where teI2.dIdFecha >= :fechaI  ' +
                                'and teI2.dIdFecha <= tes.dIdFecha  ' +
                                'and teI2.sTipoMovimiento="DEPOSITO"  ' +
                                'and (iIdStatus=4 or iIdStatus=5) ' +
                                'and teI2.sIdNumeroCuenta = tes.sIdNumeroCuenta) ' +

                                '-' +

                                '(select IFNULL(sum((teG2.dImporteTotal+teG2.dIva)-(IFNULL(teG2.dIvaRet,0)+IFNULL(teG2.dIsrRet,0))), 0) as Gasto  ' +
                                'from con_tesoreriaegresos teG2  ' +
                                'Where teG2.dIdFecha >= :fechaI  ' +
                                'And teG2.dIdFecha <= tes.dIdFecha  ' +
                                'And (teG2.sTipoMovimiento="GASTOS" Or teG2.sTipoMovimiento="CHEQUE") ' +
                                'And lComprobado ="Si" ' +
                                'And teG2.sIdNumeroCuenta = tes.sIdNumeroCuenta) ' +
                                ') ) as Saldo ' +


                                'from con_tesoreriaegresos tes ' +
                                'inner join con_cuentasbancarias cb ' +
                                'on (cb.sIdNumeroCuenta = tes.sIdNumeroCuenta And cb.sNombreCuenta = :cuenta) ' +
                                'Left Join con_facturas_status f ' +
                                'On (f.iId=tes.iIdStatus) ' +
                                'where tes.dIdFecha >= :fechaI ' +
                                'And tes.dIdFecha <= :fechaF ' +
                                'Order By tes.dIdfecha, tes.sReferencia');


    zQTesoreriaEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
    zQTesoreriaEgresos.Params.ParamByName('Cuenta').Value    := PgEgresos.Pages[pgEgresos.ActivePageIndex].Caption ;
    zQTesoreriaEgresos.Params.ParamByName('FechaI').DataType := ftString ;
    zQTesoreriaEgresos.Params.ParamByName('FechaI').Value    := formatoFecha(tdFechaInicio.Date);
    zQTesoreriaEgresos.Params.ParamByName('FechaF').DataType := ftString ;
    zQTesoreriaEgresos.Params.ParamByName('FechaF').Value    := formatoFecha(tdFechaFinal.Date) ;
    zQTesoreriaEgresos.Open ;

    GridConceptos.DataController.DataSource.DataSet := zQTesoreriaEgresos;
end;

procedure Tfrm_EstadodeCuenta.CostoOperativo1Click(Sender: TObject);
begin
//    If zQTesoreriaEgresos.FieldValues['sTipoMovimiento'] <> 'DEPOSITO' Then
//        procCostoOperativo (zQTesoreriaEgresos.FieldValues['sNumeroOrden'] );

end;

procedure Tfrm_EstadodeCuenta.ExportaraExcelClick(Sender: TObject);
var
QueryImagen: TZQuery;
begin
  try
    QueryImagen := TZQuery.Create(Self);

    QueryImagen.Connection := connection.ZConnection;
    QueryImagen.Active:=False;
    QueryImagen.SQL.Clear;
    QueryImagen.SQL.Add('SELECT bImagen FROM contratos WHERE sContrato=:sContrato');
    QueryImagen.ParamByName('sContrato').AsString:=global_contrato;
    QueryImagen.Open;

    //dxRibbonRadialMenu1
    ExportExcelPersonalizado(QueryImagen,GridConceptos,'Control de Ingresos','Estado de Cuenta Bancario');
  finally

  end;
end;

procedure Tfrm_EstadodeCuenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_EstadodeCuenta.FormShow(Sender: TObject);
Var
    MiPagina  : tTabSheet;
begin
    //UtGrid:=TicdbGrid.create(GridConceptos);
    //GridConceptos.Parent := Self ;
    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Sql.Clear ;

    if not global_EdoCuBanc then
    begin
      zQCuentasBancarias.SQL.Add('select sNombreCuenta from con_cuentasbancarias where sIdCompaniaConf = :compania order by sIdNumeroCuenta') ;
      zQCuentasBancarias.ParamByName('compania').AsString := global_contrato;
    end
    else
      zQCuentasBancarias.SQL.Add('select sNombreCuenta from con_cuentasbancarias order by sIdNumeroCuenta') ;

    zQCuentasBancarias.Open ;
    while NOT zQCuentasBancarias.Eof do
    begin
        MiPagina := tTabSheet.Create(pgEgresos) ;
        with MiPagina do
        begin
            PageControl := pgEgresos;
            Caption     := zQCuentasBancarias.FieldValues['sNombreCuenta'] ;
        end;
       zQCuentasBancarias.Next
    end;
    tdFechaInicio.Date := StrToDate('01/01/' + IntToStr(connection.configuracionCont.FieldByName('iEjercicio').AsInteger));
    tdFechaFinal.Date := Date ;

    Actualiza ;
    pgEgresos.ActivePageIndex := 0 ;
    //GridConceptos.Parent := pgEgresos.Pages[pgEgresos.ActivePageIndex] ;
    //GridConceptos.Align := alClient ;
    PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
    tdFechaInicio.SetFocus;
end;

procedure Tfrm_EstadodeCuenta.GraficadeIngresosvsEgresosporCuentas1Click(
  Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;
    Global_Cuenta      := zQTesoreriaEgresos.FieldValues['sIdNumeroCuenta'] ;

    sParamTitle := 'Detalle de Gastos Vs Ingresos por cuenta   ' + Global_Cuenta + '  ' +  pgEgresos.Pages[pgEgresos.ActivePageIndex].Caption + '  ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    Application.CreateForm(Tfrm_GraficasIngresosvsEgresosxcuent,   frm_GraficasIngresosvsEgresosxcuent);
    frm_GraficasIngresosvsEgresosxcuent.Show;
end;

procedure Tfrm_EstadodeCuenta.GraficasdeBancos1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;

    sParamTitle := '<<Grafica>> Detalle de Saldos Por Bancos al dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    Application.CreateForm(Tfrm_GraficabarrasIngresosBancos, frm_GraficabarrasIngresosBancos);
    frm_GraficabarrasIngresosBancos.Show;
end;

procedure Tfrm_EstadodeCuenta.GridConceptosDblClick(Sender: TObject);
begin
    if zQTesoreriaEgresos.RecordCount > 0 then
    if zQTesoreriaEgresos.FieldValues['sTipoMovimiento'] = 'CHEQUE' then
    begin
        dParamFecha        := zQTesoreriaEgresos.FieldValues['dIdFecha'] ;
        iParamFolio        := zQTesoreriaEgresos.FieldValues['iIdFolio'] ;
        sParamProveedor    := zQTesoreriaEgresos.FieldValues['sIdProveedor'] ;
        dParamMonto        := zQTesoreriaEgresos.FieldValues['dImporteTotal'] * -1;
        sParamComprobado   := zQTesoreriaEgresos.FieldValues['lComprobado'] ;
       // Application.CreateForm(Tfrm_ReferenciarCheque, frm_ReferenciarCheque);
      //  frm_ReferenciarCheque.GridConceptos.ReadOnly := True ;
      //  frm_ReferenciarCheque.Show;
    end
end;

procedure Tfrm_EstadodeCuenta.GridConceptosGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
        If zQTesoreriaEgresos.RecordCount > 0 Then
            If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'GASTOS')  OR
            ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'CHEQUE') Then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clBlue
            end ;

             If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'DEPOSITO' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clGreen
            end ;

            If (((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'GASTOS') OR
             ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoMovimiento').AsString = 'CHEQUE'))

            AND ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lComprobado').AsString = 'No') then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clRed
            end ;

end;

procedure Tfrm_EstadodeCuenta.GridConceptosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_EstadodeCuenta.GridConceptosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_EstadodeCuenta.GridConceptosNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  GridConceptos.FilterRow.Visible := ((AButtonIndex = 16) and (not GridConceptos.FilterRow.Visible));
end;

procedure Tfrm_EstadodeCuenta.GridConceptosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin

  AColumn := Sender.PatternGridView.FindItemByName('GridConceptossTipoMovimiento1');
  BColumn := Sender.PatternGridView.FindItemByName('GridConceptoslComprobado1');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'GASTOS' then
    AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'CHEQUE' then
    AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'DEPOSITO' then
    AStyle := cxstylGreen;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'GASTOS') and (VarToStr(ARecord.Values[BColumn.Index]) = 'No')   then
    AStyle := cxstylRed;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'CHEQUE') and (VarToStr(ARecord.Values[BColumn.Index]) = 'No')   then
    AStyle := cxstylRed;


end;

procedure Tfrm_EstadodeCuenta.GridConceptosTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_EstadodeCuenta.IngresosVSGastosGenerales1Click(Sender: TObject);
begin
    dParamFechaI := tdFechaInicio.Date ;
    dParamFechaF := tdFechaFinal.Date ;

    sParamTitle := '<<Grafica>> Detalle de Gastos Vs Ingresos al dia : ' + DateToStr(dParamFechaI) + ' al dia ' + DateToStr(dParamFechaF) ;
    Application.CreateForm(Tfrm_GraficasIngresosvsEgresos, frm_GraficasIngresosvsEgresos);
    frm_GraficasIngresosvsEgresos.Show;
end;

procedure Tfrm_EstadodeCuenta.mnEditarCaratulaClick(Sender: TObject);
Var
    iRecno : Integer ;
begin
//    dParamFecha := zQTesoreriaEgresos.FieldValues['dIdFecha'] ;
//    iParamFolio := zQTesoreriaEgresos.FieldValues['iIdFolio'] ;
//    iRecno := zQTesoreriaEgresos.RecNo ;
//    frm_EditEgresos.ShowModal;
//    zqTesoreriaEgresos.Refresh ;
//    zqTesoreriaEgresos.RecNo := iRecno ;
end;

procedure Tfrm_EstadodeCuenta.mnImprimirEdoCuentaClick(Sender: TObject);
begin
//  if Assigned(frmSetup) then
//  begin
//    frmSetup.configuracion.Active := False;
//    frmsetup.configuracion.Params.ParamByName('contrato').DataType := ftString;
//    frmsetup.configuracion.Params.ParamByName('contrato').Value := global_contrato;
//    frmsetup.configuracion.Open;
//  end
//  else
//  begin
    Application.createForm(TFrmSetup, FrmSetup);
    FrmSetup.FormStyle := fsNormal;
    FrmSetup.Visible := False;
    frmSetup.configuracion.Active := False;
    frmsetup.configuracion.Params.ParamByName('contrato').DataType := ftString;
    frmsetup.configuracion.Params.ParamByName('contrato').Value := global_contrato;
    frmsetup.configuracion.Open;
  //end;
    sTitleFecha := 'Estado de Cuenta Bancario del ' + DateToStr(tdFechaInicio.Date) + ' al ' + DateToStr(tdFechaFinal.Date) + '.'  ;

    rDiario.PreviewOptions.MDIChild := False;
    rDiario.PreviewOptions.Modal := True;
    rDiario.PreviewOptions.Maximized := True ;
    rDiario.PreviewOptions.ShowCaptions := False;
    rDiario.Previewoptions.ZoomMode := zmPageWidth;



    rDiario.ScriptText.Clear  ;
    rDiario.ScriptText.Add('Var') ;
    rDiario.ScriptText.Add('sTitleFecha      : String ;') ;
    rDiario.ScriptText.Add('sNombreCuenta    : String ;') ;
    rDiario.ScriptText.Add('Ingresos         : Double ;') ;
    rDiario.ScriptText.Add('Gastos           : Double ;') ;
    rDiario.ScriptText.Add('Saldos           : Double ;') ;
    rDiario.ScriptText.Add('Begin') ;
    rDiario.ScriptText.Add('   sTitleFecha   :=  ' + chr(39) + sTitleFecha + chr(39) + chr(59)) ;
    rDiario.ScriptText.Add('   sNombreCuenta :=  ' + chr(39) + pgEgresos.Pages[pgEgresos.ActivePageIndex].Caption + chr(39) + chr(59)) ;
    rDiario.ScriptText.Add('   Ingresos      :=  ' + FloatToStr(tMonto.Value) + chr(59)) ;
    rDiario.ScriptText.Add('   Gastos        :=  ' + FloatToStr(tdMontoFinal.Value) + ';');
    rDiario.ScriptText.Add('   Saldos        :=  ' + FloatToStr(tdSaldo.Value) + chr(59)) ;
    rDiario.ScriptText.Add('End.') ;
    rDiario.LoadFromFile(global_files + global_miReporte + '_CADfrEstadodeCuenta.fr3') ;


  if not FileExists(global_files + global_miReporte + '_CADfrEstadodeCuenta.fr3') then
   begin
    showmessage('El archivo de reporte '+global_Mireporte+'_CADfrEstadodeCuenta.fr3 no existe, notifique al administrador del sistema');
   end;

   rDiario.ShowReport() ;

end;

procedure Tfrm_EstadodeCuenta.pgEgresosChange(Sender: TObject);
begin
    //GridConceptos.Align := alClient ;
    PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := True ;
    //GridConceptos.Parent := pgEgresos.Pages[pgEgresos.ActivePageIndex] ;
    Actualiza ;
end;

procedure Tfrm_EstadodeCuenta.pgEgresosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  PgEgresos.Pages[pgEgresos.ActivePageIndex].Highlighted := False;
end;

procedure Tfrm_EstadodeCuenta.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName='SaldoActual' then
    Value:=tdSaldo.Value;
  
end;

procedure Tfrm_EstadodeCuenta.rptReporteGetValue(const VarName: string;
  var Value: Variant);
begin
   If CompareText(VarName, 'SALDO_ANTERIOR') = 0 then
       Value := tMonto.Value ;
   If CompareText(VarName, 'SALDO_ACTUAL') = 0 then
       Value := tdMontoFinal.Value ;

   If CompareText(VarName, 'FECHA_INICIO') = 0 then
       Value := DateToStr(tdFechaInicio.Date) ;
   If CompareText(VarName, 'FECHA_FINAL') = 0 then
       Value := DateToStr(tdFechaFinal.Date) ;
end;

procedure Tfrm_EstadodeCuenta.tdFechaFinalExit(Sender: TObject);
begin
  Actualiza ;
end;

procedure Tfrm_EstadodeCuenta.tdFechaInicioExit(Sender: TObject);
begin
  Actualiza ;
end;

procedure Tfrm_EstadodeCuenta.zQTesoreriaEgresosCalcFields(DataSet: TDataSet);
begin
    zQTesoreriaEgresos.FieldByName('total2').AsFloat :=  zQTesoreriaEgresos.FieldByName('total').AsFloat ;
    if zQTesoreriaEgresos.FieldByName('lNotacredito').AsString = 'Si' then
    begin
       zQTesoreriaEgresos.FieldByName('total2').AsFloat :=  zQTesoreriaEgresos.FieldByName('total').AsFloat * -1 ;
       dNotaCredito := dNotaCredito + zQTesoreriaEgresos.FieldByName('total').AsFloat ;
    end;

      zQTesoreriaEgresos.FieldByName('saldo2').AsFloat :=  zQTesoreriaEgresos.FieldByName('saldo').AsFloat - dNotaCredito;

end;

procedure Tfrm_EstadodeCuenta.Calcula(DataSet: TDataSet);
 Var
    sQueryI, SqueryG, squerytotal, valorc, sacumulados   : String ;
    Ingresos, Gastos, Restax, Acumulado, SumaIngreso              : Double ;
    qrySumaTotal, qryIngresos, qryGastos, qryTotalCuentas  : TZReadOnlyQuery;
    i    : Byte ;
    primerafecha : string ;
begin
     qryIngresos                 := TZReadOnlyQuery.Create(nil);
     qryIngresos.Connection      := Connection.ZConnection;
     qryGastos                   := TZReadOnlyQuery.Create(nil);
     qryGastos.Connection        := Connection.ZConnection;

     sQueryI := 'select sum(te.dImporteTotal+te.dIva) as dImporteTotal '+
                'from con_tesoreriaegresos te '+
                'where te.dIdFecha >= :fechaI '+
                'and te.dIdFecha <= :fechaF '+
                'and te.sTipoMovimiento="DEPOSITO" '+
                'and (iIdStatus=4 or iIdStatus=5) '+
                'and te.sIdNumeroCuenta = :cuenta';

     qryIngresos.Active := False ;
     qryIngresos.Sql.Clear ;
     qryIngresos.SQL.Add(sQueryI) ;
     qryIngresos.Params.ParamByName('fechaI').DataType  := ftDate ;
     qryIngresos.Params.ParamByName('fechaI').Value     := tdFechaInicio.Date ;
     qryIngresos.Params.ParamByName('fechaF').DataType  := ftDate ;
     qryIngresos.Params.ParamByName('fechaF').Value     := zQTesoreriaEgresos.FieldValues['dIdFecha'] ;
     qryIngresos.Params.ParamByName('Cuenta').DataType  := ftString ;
     qryIngresos.Params.ParamByName('Cuenta').Value     := zQTesoreriaEgresos.FieldValues['sIdNumeroCuenta'] ;
     qryIngresos.Open ;

     Ingresos := qryIngresos.FieldByName('dImporteTotal').AsFloat;

     sQueryG := 'select IFNULL(sum(te.dImporteTotal), 0) as dGasto '+
                'from con_tesoreriaegresos te '+
                'Where te.dIdFecha >= :fechaI '+
                'And te.dIdFecha <= :fechaF '+
                'And te.sTipoMovimiento="GASTOS" '+
                'And lComprobado ="Si" '+
                'And te.sIdNumeroCuenta = :cuenta';

     qryGastos.Active := False ;
     qryGastos.Sql.Clear ;
     qryGastos.SQL.Add(sQueryG) ;
     qryGastos.Params.ParamByName('fechaI').DataType  := ftDate ;
     qryGastos.Params.ParamByName('fechaI').Value     := tdFechaInicio.Date ;
     qryGastos.Params.ParamByName('fechaF').DataType  := ftDate ;
     qryGastos.Params.ParamByName('fechaF').Value     := zQTesoreriaEgresos.FieldValues['dIdFecha'] ;
     qryGastos.Params.ParamByName('Cuenta').DataType  := ftString ;
     qryGastos.Params.ParamByName('Cuenta').Value     := zQTesoreriaEgresos.FieldValues['sIdNumeroCuenta'] ;
     qryGastos.Open ;

     Gastos := qryGastos.FieldByName('dGasto').AsFloat;

//                   if qryIngresos.RecordCount > 0 then
//                   begin
//                       if (qryIngresos.FieldValues['sTipoMovimiento'] = 'DEPOSITO') and (zQTesoreriaEgresos.FieldValues['iFolio'] <> Null) then
//                       begin
//                           SumaIngreso := 0 ;
//                           qryIngresos.First;
//                           while not qryIngresos.Eof do
//                           begin
//                               if qryIngresos.FieldValues['iIdFolio'] <= zQTesoreriaEgresos.FieldValues['iIdFolio'] then
//                                  SumaIngreso := SumaIngreso + qryIngresos.FieldValues['dImporteTotal'];
//                               qryIngresos.Next;
//                           end;
//                           Ingresos := Ingresos + SumaIngreso;
//                       end;
//                   end;

     if gastos < 0 Then
       Restax := Ingresos + Gastos
     else
       Restax := Ingresos - Gastos ;

     Acumulado  := Restax + Acumulado  ;
     DataSet.FieldValues['saldo']:= Acumulado ;

     qryIngresos.Destroy ;
     qryGastos.Destroy ;
end;

function Tfrm_EstadodeCuenta.formatoFecha(fecha: TDate) : string;//Sam
var
  anio, mes, dia : Word;
  resultado : string;
begin
  DecodeDate(fecha, anio, mes, dia);
  resultado := IntToStr(anio) + '/' + IntToStr(mes) + '/' + IntToStr(dia);//Sam
  Result := resultado;
end;

End.
