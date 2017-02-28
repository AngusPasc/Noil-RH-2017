unit frmReportesIngresoscias;

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
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsdxBarPainter, dxBar,
  dxRibbonRadialMenu, dxRibbon, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, CxGridExportLink, ShellApi ;

type
  Tfrm_ReportesIngresoscias = class(TForm)
    dszQIngresos: TDataSource;
    zQIngresos: TZQuery;
    dszQCuentasBancarias: TDataSource;
    zQCuentasBancarias: TZQuery;
    zQCuentasBancariassIdNumeroCuenta: TStringField;
    zQCuentasBancariassNombreCuenta: TStringField;
    zQCuentasBancariassFirmanCuenta: TStringField;
    Label9: TLabel;
    tsIdCuentaBancaria: TDBLookupComboBox;
    zQIngresosdIdFecha: TDateField;
    zQIngresosiIdFolio: TIntegerField;
    zQIngresossTipoMovimiento: TStringField;
    zQIngresossIdArea: TStringField;
    zQIngresossIdNumeroCuenta: TStringField;
    zQIngresossReferencia: TStringField;
    zQIngresossIdProveedor: TStringField;
    zQIngresossRFC: TStringField;
    zQIngresossRazonSocial: TStringField;
    zQIngresossDomicilio: TStringField;
    zQIngresossCiudad: TStringField;
    zQIngresossCP: TStringField;
    zQIngresossEstado: TStringField;
    zQIngresossTelefono: TStringField;
    zQIngresosdImporteTotal: TFloatField;
    zQIngresoslComprobado: TStringField;
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
    zQIngresosmDescripcion: TMemoField;
    OpenPicture: TOpenPictureDialog;
    ReporteFotografico: TZQuery;
    ds_ReporteFotografico: TDataSource;
    lblRecord: TLabel;
    dsCompanias: TDataSource;
    qryCompanias: TZQuery;
    zQIngresossIdCompania: TStringField;
    zQIngresosdIva: TFloatField;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    qryConsulta: TZReadOnlyQuery;
    frReporte: TfrxReport;
    frxCompania: TfrxDBDataset;
    zQIngresosdFechaFactura: TDateField;
    zQIngresosTotal: TFloatField;
    zQIngresosiFolio: TIntegerField;
    zQIngresosiIdStatus: TIntegerField;
    zq_statusfacturas: TZQuery;
    ds_statusfacturas: TDataSource;
    zq_statusfacturasiId: TIntegerField;
    zq_statusfacturassNombre: TStringField;
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
    zQIngresossStatus: TStringField;
    frxEgresos: TfrxDBDataset;
    zQIngresossCompanya: TStringField;
    zQIngresossTipoPago: TStringField;
    zQIngresossNumeroDeCuenta: TStringField;
    zQIngresossNumeroPedido: TStringField;
    zQIngresosiImprimeProveedor: TIntegerField;
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
    zQIngresossMes: TStringField;
    zQIngresosdFechaRecepcion: TDateField;
    zQIngresoslAplicaPagoParcial: TStringField;
    qryParcPagos: TZQuery;
    dsParcPagos: TDataSource;
    zQIngresosdParcialidad: TFloatField;
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
    zQIngresossProyecto: TStringField;
    frxProyecto: TfrxDBDataset;
    grid_facturas: TcxGridDBTableView;
    cxfacturasLevel1: TcxGridLevel;
    cxfacturas: TcxGrid;
    grid_facturasdIdFecha1: TcxGridDBColumn;
    grid_facturassIdNumeroCuenta1: TcxGridDBColumn;
    grid_facturassReferencia1: TcxGridDBColumn;
    grid_facturasdImporteTotal1: TcxGridDBColumn;
    grid_facturassIdCompania1: TcxGridDBColumn;
    grid_facturasdIva1: TcxGridDBColumn;
    grid_facturasdFechaFactura1: TcxGridDBColumn;
    grid_facturasTotal1: TcxGridDBColumn;
    grid_facturasiFolio1: TcxGridDBColumn;
    grid_facturassStatus1: TcxGridDBColumn;
    grid_facturassCompanya1: TcxGridDBColumn;
    grid_facturasdParcialidad1: TcxGridDBColumn;
    grid_facturassProyecto1: TcxGridDBColumn;
    styleGrid: TcxStyleRepository;
    cxstylBlue: TcxStyle;
    cxstylRed: TcxStyle;
    cxstylBlack: TcxStyle;
    cxstylGreen: TcxStyle;
    cxstylMaroon: TcxStyle;
    cxstylBlackStrong: TcxStyle;
    cxstylPurple: TcxStyle;
    dxbrmngr1: TdxBarManager;
    Porcompaias1: TdxBarButton;
    PorFechas1: TdxBarButton;
    ImprimirReporte1: TdxBarButton;
    Pagadas1: TdxBarButton;
    Canceladas1: TdxBarButton;
    Pendientes1: TdxBarButton;
    otal1: TdxBarButton;
    PorProyecto1: TdxBarButton;
    mnureportet: TdxBarSubItem;
    IngresosxCia1: TdxBarButton;
    Graficas1: TdxBarSubItem;
    ENERO1: TdxBarButton;
    ReporteXMesFacturado1: TdxBarSubItem;
    intgrfldQEgresossFormaPago: TIntegerField;
    popup_principal: TdxRibbonPopupMenu;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    dxbExcel: TdxBarButton;
    dlgSave1: TSaveDialog;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure frmBarra1btnRefreshClick(Sender: TObject);

    procedure FormKeyPress(Sender: TObject; var Key: Char);

    procedure zQIngresosBeforeInsert(DataSet: TDataSet);
    procedure frmBarra1btnDeleteClick(Sender: TObject);

    procedure FCellClick(Column: TColumn);
    procedure FKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure PorFechas1Click(Sender: TObject);
    procedure Porcompaias1Click(Sender: TObject);

    procedure zQIngresosCalcFields(DataSet: TDataSet);

    procedure ImprimirFactura1Click(Sender: TObject);

    procedure btnDeleteClick(Sender: TObject);

    procedure BitBtn1Click(Sender: TObject);

    procedure ImprimirFacturaATechnology1Click(Sender: TObject);

    procedure otal1Click(Sender: TObject);
    procedure Pagadas1Click(Sender: TObject);
    procedure Canceladas1Click(Sender: TObject);
    procedure Pendientes1Click(Sender: TObject);
    procedure chkPagoClick(Sender: TObject);
    procedure chkExpedidaClick(Sender: TObject);
    procedure chkTotalClick(Sender: TObject);
    procedure IngresosxCia1Click(Sender: TObject);

    procedure FMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FTitleClick(Column: TColumn);
    procedure grid_facturasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_facturasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_facturasTitleClick(Column: TColumn);

    procedure ENERO1Click(Sender: TObject);
    procedure dbPagosparcialesEnter(Sender: TObject);

    procedure qryParcPagosBeforePost(DataSet: TDataSet);

    procedure qryParcPagosCalcFields(DataSet: TDataSet);
    procedure PorProyecto1Click(Sender: TObject);
    procedure grid_facturasStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure ImprimirReporte1Click(Sender: TObject);
    procedure dxbExcelClick(Sender: TObject);
    procedure frReporteGetValue(const VarName: string; var Value: Variant);
    procedure zQIngresossTipoMovimientoChange(Sender: TField);
    procedure tsIdCuentaBancariaCloseUp(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdFechaInicioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frm_ReportesIngresoscias: Tfrm_ReportesIngresoscias;
   iFolio : Integer ;
   ValorCad, sArchivo      : String ;
   multi, w, x, z, iva : Double ;
   //utgrid:ticdbgrid;
   qryConsultaF   : TZReadOnlyQuery;
   dsConsultaF    : TFrxDBDataset ;


implementation

uses  frmGraficabarrasIngresos, frm_connection, frm_setup, UInteliDialog;

{$R *.dfm}


procedure Tfrm_ReportesIngresoscias.BitBtn1Click(Sender: TObject);
Var multit: String;
begin
    qryConsulta.Active := False ;
    qryConsulta.SQL.Clear ;
    qryConsulta.SQL.Text := 'SELECT IFNULL(SUM(dCantidad * dImporte), 0) AS dSumaImporte FROM con_facturas_detalles WHERE iId_Factura = :Factura;';
    qryConsulta.Params.ParamByName('Factura').AsInteger := zQIngresos.FieldByName('iIdFolio').AsInteger;
    qryConsulta.Open ;
    zQIngresos.FieldByName('dImporteTotal').AsFloat := qryConsulta.FieldByName('dSumaImporte').AsFloat;

    multit     := zQIngresos.FieldValues['dImporteTotal'];
    multi      := strToFloat(multit) ;
    multi      := multi * global_iva  ;
    zQIngresos.FieldValues['dIva']:=FloatTostr(multi) ;
end;


procedure Tfrm_ReportesIngresoscias.btnDeleteClick(Sender: TObject);
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



procedure Tfrm_ReportesIngresoscias.Canceladas1Click(Sender: TObject);
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
        frReporte.LoadFromFile(Global_Files+global_miReporte +'_CADfrFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+global_miReporte+'_CADfrFacturasT.fr3') ;


          if not FileExists(global_files + global_miReporte + '_CADfrFacturasAgrupadas.fr3') then
      begin
        showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasAgrupadas.fr3 no existe, notifique al administrador del sistema');
        exit;
       end;
        if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
        begin
            showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
           exit;
       end;

      frReporte.ShowReport() ;
   end
   else
       MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);
//    qryConsultaF.Destroy ;
//    dsConsultaF.Destroy ;
end;

procedure Tfrm_ReportesIngresoscias.chkExpedidaClick(Sender: TObject);
begin
 if chkExpedida.checked = True  Then
   begin
     chkPago.checked   := False ;
     chkTotal.Checked  := False ;
   end;
end;

procedure Tfrm_ReportesIngresoscias.chkPagoClick(Sender: TObject);
begin
   if chkPago.checked = True Then
      begin
        chkExpedida.checked   := False ;
        chkTotal.Checked      := False ;
      end;
end;

procedure Tfrm_ReportesIngresoscias.chkTotalClick(Sender: TObject);
begin
 if chkTotal.checked = True  Then
   begin
     chkPago.checked   := False ;
     chkExpedida.Checked  := False ;
   end;
end;


procedure Tfrm_ReportesIngresoscias.dbPagosparcialesEnter(Sender: TObject);
begin
    qryParcPagos.Params.ParamByName('IdFactura').DataType := ftInteger ;
    qryParcPagos.Params.ParamByName('IdFactura').Value    := zQIngresos.FieldValues['iIdFolio'];
    qryParcPagos.Open ;
    if qryParcPagos.RecordCount = 0 Then
       ValorCad := 'ORIGINAL'
    else
       ValorCad := 'PAGOS' ;
    //grid_Facturas.SetFocus ;
end;

procedure Tfrm_ReportesIngresoscias.dxbExcelClick(Sender: TObject);
  Var
  rutaArchivo : string;
  respuesta   : Integer ;
begin

  dlgSave1.FileName := '';
  if dlgSave1.Execute then
  begin
      rutaArchivo := dlgSave1.FileName + '.xls';
      ExportGridToExcel(rutaArchivo, cxFacturas);
        if InteliDialog.ShowModal('Aviso', '¿Desea abrir el documento exportado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           ShellExecute(Self.Handle, Nil, PChar(rutaArchivo), '', '', SW_SHOWNORMAL);
  end;
end;

procedure Tfrm_ReportesIngresoscias.ENERO1Click(Sender: TObject);
 Var
 Imes1, Imes2, myDay, myMonth, myYear : word;
 mes1, mes2 : String ;
begin

     DecodeDate(tdFechaInicio.date, myYear, myMonth, myDay);
     iMes1 := (myMonth) ;
     mes1  := UpperCase(LongMonthNames[iMes1]);

     DecodeDate(tdFechaFinal.date, myYear, myMonth, myDay);
     iMes2 := (myMonth) ;
     mes2  := UpperCase(LongMonthNames[iMes2]);


    zQIngresos.Refresh ;
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
        frReporte.LoadFromFile(Global_Files+global_miReporte + '_CADfrFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+global_miReporte +'_CADfrFacturasT.fr3') ;

          if not FileExists(global_files + global_miReporte + '_CADfrFacturasAgrupadas.fr3') then
      begin
        showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasAgrupadas.fr3 no existe, notifique al administrador del sistema');
        exit;
       end;

        if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
        begin
            showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
           exit;
       end;

       frReporte.ShowReport() ;
   end
   else

       MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);

end;

procedure Tfrm_ReportesIngresoscias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //utgrid.Destroy;
  action := cafree ;
end;

procedure Tfrm_ReportesIngresoscias.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_ReportesIngresoscias.FormShow(Sender: TObject);
var
  frmSetupTmp: TFrmsetup;
begin
  try
    //UtGrid:=TicdbGrid.create(grid_facturas);
    zq_StatusFacturas.Open;
     //Fecha de inicio y final
    if connection.configuracionCont.FieldByName('iEjercicio').AsInteger > 0 then
      tdFechaInicio.Date := EncodeDate(connection.configuracionCont.FieldByName('iEjercicio').AsInteger,1,1)
    else
      tdFechaInicio.Date := EncodeDate( YearOf( Date ), 1, 1 );
   tdFechaFinal.Date := Date;

    Connection.configuracion.Refresh ;
    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Open ;

    qryCompanias.Active := False ;
    qryCompanias.Open ;

    if zQCuentasBancarias.RecordCount > 0 then
        tsIdCuentaBancaria.KeyValue := zqCuentasBancarias.FieldValues['sIdNumeroCuenta'] ;

      frmSetupTmp := TFrmSetup.create(nil);
      frmSetupTmp.configuracion.Active := False;
      frmSetupTmp.configuracion.Params.ParamByName('contrato').DataType := ftString;
      frmSetupTmp.configuracion.Params.ParamByName('contrato').Value := global_contrato;
      frmSetupTmp.configuracion.Open;
      frmSetupTmp.Close;
  except
    on e: Exception do
    ShowMessage(e.Message + ' ' + e.ClassName);

  end;

end;


procedure Tfrm_ReportesIngresoscias.frmBarra1btnDeleteClick(Sender: TObject);
Var
       Marca2 : TBookmark;
begin

     Marca2 := Grid_facturas.DataController.DataSource.DataSet.GetBookmark ;
 If zQIngresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     // try
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('delete from con_facturas_detalles where iId_Factura =:Factura');
        connection.QryBusca.Params.ParamByName('Factura').DataType := ftInteger;
        connection.QryBusca.Params.ParamByName('Factura').Value    := zQIngresos.FieldValues['iIdFolio'];
        connection.QryBusca.ExecSQL ;

        zQIngresos.Delete ;
        zQIngresos.Refresh ;
        Grid_facturas.Datacontroller.DataSource.DataSet.GotoBookmark(Marca2) ;

   //   except
   ///     MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
//      end
    end

end;


procedure Tfrm_ReportesIngresoscias.frmBarra1btnExitClick(Sender: TObject);
begin
  close
end;


procedure Tfrm_ReportesIngresoscias.frmBarra1btnPrinterClick(Sender: TObject);
begin

     if not FileExists(global_files + global_miReporte + '_CADfrFechas.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFechas.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

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
    frReporte.LoadFromFile(global_files + global_miReporte +'_CADfrFechas.fr3') ;
    frReporte.ShowReport() ;
end;

procedure Tfrm_ReportesIngresoscias.frmBarra1btnRefreshClick(Sender: TObject);
begin
    Connection.configuracion.Refresh ;
    zQIngresos.Refresh ;
    zQCuentasBancarias.Refresh ;
    qryCompanias.Refresh ;
end;

procedure Tfrm_ReportesIngresoscias.frReporteGetValue(const VarName: string;
  var Value: Variant);
  Var
  Valor: Real;
begin
  Valor := 0;
  if VarName = 'IMPORTE_LETRAS' then begin
    Value := xNumerosToLletres(zQIngresos.FieldByName('dImporteTotal').AsCurrency + zQIngresos.FieldByName('dIva').AsCurrency);
  end;
  if VarName = 'IMPORTE_TOTAL_PENDIENTE' then begin
    zQIngresos.First;
    while not zQIngresos.Eof do begin
      if zQIngresos.FieldByName('sStatus').AsString <> 'PAGADA' then begin
        Valor := Valor + (zQIngresos.FieldByName('dImporteTotal').AsFloat + zQIngresos.FieldByName('dIva').AsFloat);
      end;
      zQIngresos.Next;
    end;
    Value := Valor;
  end;
  if VarName = 'IMPORTE_TOTAL_PAGADO' then begin
    zQIngresos.First;
    while not zQIngresos.Eof do begin
      if zQIngresos.FieldByName('sStatus').AsString = 'PAGADA' then begin
        Valor := Valor + (zQIngresos.FieldByName('dImporteTotal').AsFloat + zQIngresos.FieldByName('dIva').AsFloat);
      end;
      zQIngresos.Next;
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


procedure Tfrm_ReportesIngresoscias.FTitleClick(Column: TColumn);
begin

//UtGrid.DbGridTitleClick(Column);
end;



procedure Tfrm_ReportesIngresoscias.grid_facturasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_ReportesIngresoscias.grid_facturasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_ReportesIngresoscias.grid_facturasStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin

  AColumn := Sender.PatternGridView.FindItemByName('grid_facturassStatus1');

  if VarToStr(ARecord.Values[AColumn.Index]) = 'PAGADA' then
    AStyle := cxstylBlue;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'TRASPASO' then
    AStyle := cxstylGreen;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'CANCELADA') then
    AStyle := cxstylRed;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'ENTREGADA') then
    AStyle := cxstylMaroon;
  if (VarToStr(ARecord.Values[AColumn.Index]) = 'PENDIENTE') then
    AStyle := cxstylBlack;
end;

procedure Tfrm_ReportesIngresoscias.grid_facturasTitleClick(Column: TColumn);
begin
   //UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_ReportesIngresoscias.FCellClick(Column: TColumn);
begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zQIngresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zQIngresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_ReportesIngresoscias.FKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zQIngresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zQIngresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_ReportesIngresoscias.FKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteFotografico.Params.ParamByName('Fecha').Value    := zQIngresos.FieldValues['dIdFecha'] ;
    ReporteFotografico.Params.ParamByName('Folio').DataType := ftString ;
    ReporteFotografico.Params.ParamByName('Folio').Value    := zQIngresos.FieldValues['iIdFolio'] ;
    ReporteFotografico.Open ;
end;

procedure Tfrm_ReportesIngresoscias.FMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_ReportesIngresoscias.FMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_ReportesIngresoscias.ImprimirFactura1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADfactra1.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfactra1.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  frReporte.LoadFromFile(global_files + global_miReporte+ '_CADfactra1.fr3') ;
  frReporte.ShowReport();
end;

procedure Tfrm_ReportesIngresoscias.ImprimirFacturaATechnology1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADfactura2.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfactura2.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  frReporte.LoadFromFile(global_files + global_miReporte + '_CADfactura2.fr3');
  frReporte.ShowReport();
end;


procedure Tfrm_ReportesIngresoscias.ImprimirReporte1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_CADReporteFechas.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADReporteFechas.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  frReporte.LoadFromFile(Global_Files + global_miReporte+ '_CADReporteFechas.fr3');
  frReporte.ShowReport();
end;

procedure Tfrm_ReportesIngresoscias.IngresosxCia1Click(Sender: TObject);
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



procedure Tfrm_ReportesIngresoscias.otal1Click(Sender: TObject);
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
        frReporte.LoadFromFile(Global_Files+ global_miReporte +'_CADfrFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+ global_miReporte +'_CADfrFacturasT.fr3') ;

          if not FileExists(global_files + global_miReporte + '_CADfrFacturasAgrupadas.fr3') then
       begin
       showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasAgrupadas.fr3 no existe, notifique al administrador del sistema');
        exit;
       end;

         if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
        begin
         showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
          exit;
        end;

      frReporte.ShowReport() ;
    end
    else
      MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);


   // qryConsultaF.Destroy ;
   // dsConsultaF.Destroy ;
end;

procedure Tfrm_ReportesIngresoscias.Pagadas1Click(Sender: TObject);
begin
//    qryConsultaF             := TZReadOnlyQuery.Create(Self);
//    qryConsultaF.Connection  := Connection.zConnection;

//    dsConsultaF              := TfrxDBDataset.Create(Self) ;
//    dsConsultaF.DataSet      := qryConsultaF ;
//    dsConsultaF.UserName     := 'dsConsultaF' ;

    //frReporte.DataSets.Add(dsConsultaF) ;


    zQIngresos.Refresh ;
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
        frReporte.LoadFromFile(Global_Files+ global_miReporte +'_CADfrFacturasAgrupadas.fr3')
      else
        frReporte.LoadFromFile(Global_Files+global_miReporte +'_CADfrFacturasT.fr3') ;
       frReporte.ShowReport() ;
          if not FileExists(global_files + global_miReporte + '_CADfrFacturasAgrupadas.fr3') then
          begin
          showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasAgrupadas.fr3no existe, notifique al administrador del sistema');
          exit;
          end;

            if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
          begin
           showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
           exit;
          end;
   end
   else

       MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);

    //qryConsultaF.Destroy ;
    //dsConsultaF.Destroy ;
end;

procedure Tfrm_ReportesIngresoscias.Pendientes1Click(Sender: TObject);
begin
//    qryConsultaF             := TZReadOnlyQuery.Create(Self);
//    qryConsultaF.Connection  := Connection.zConnection;

//    dsConsultaF              := TfrxDBDataset.Create(Self) ;
//    dsConsultaF.DataSet      := qryConsultaF ;
//    dsConsultaF.UserName     := 'dsConsultaF' ;

  //  frReporte.DataSets.Add(dsConsultaF) ;
    zQIngresos.Refresh ;
    qryConsultaF.Active := False ;
    qryConsultaF.SQL.Clear ;
    zQIngresos.Refresh ;
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
        frReporte.LoadFromFile(Global_Files+global_miReporte+'_CADfrFacturasAgrupadas.fr3')
    else
        frReporte.LoadFromFile(Global_Files+global_miReporte+'_CADfrFacturasT.fr3') ;

        if not FileExists(global_files + global_miReporte + '_CADfrFacturasAgrupadas.fr3') then
          begin
          showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasAgrupadas.fr3 no existe, notifique al administrador del sistema');
          exit;
          end;

            if not FileExists(global_files + global_miReporte + '_CADfrFacturasT.fr3') then
          begin
           showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFacturasT.fr3 no existe, notifique al administrador del sistema');
           exit;
          end;

    frReporte.ShowReport() ;
  end
  else
      MessageDlg('Debe elegir una opcion...', mtInformation, [mbOk], 0);

  //  qryConsultaF.Destroy ;
  //  dsConsultaF.Destroy ;
end;

procedure Tfrm_ReportesIngresoscias.Porcompaias1Click(Sender: TObject);
begin

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

  frReporte.LoadFromFile(Global_Files + global_miReporte + '_CADReporteCompanyas.fr3') ;
  frReporte.ShowReport() ;
    if not FileExists(global_files + global_miReporte + '_CADReporteCompanyas.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADReporteCompanyas.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

end;

procedure Tfrm_ReportesIngresoscias.PorFechas1Click(Sender: TObject);
begin
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
  frReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrFechas.fr3') ;
  frReporte.ShowReport() ;
     if not FileExists(global_files + global_miReporte + '_CADfrFechas.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrFechas.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

end;

procedure Tfrm_ReportesIngresoscias.PorProyecto1Click(Sender: TObject);
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
  frReporte.LoadFromFile(Global_Files+global_miReporte +'CADreporteproyecto.fr3') ;
  frReporte.ShowReport() ;
     if not FileExists(global_files + global_miReporte + 'CADreporteproyecto.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'CADreporteproyecto.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

end;


procedure Tfrm_ReportesIngresoscias.qryParcPagosBeforePost(DataSet: TDataSet);
begin
  if qryParcPagos.RecordCount > 0 Then
    ValorCad := 'PAGOS'
  else
    ValorCad := 'ORIGINAL' ;

  qryParcPagos.FieldValues['iIdFolio'] := zqIngresos.FieldValues['iIdFolio'] ;
  qryParcPagos.fieldValues['sTipo']    := ValorCad  ;
end;

procedure Tfrm_ReportesIngresoscias.qryParcPagosCalcFields(DataSet: TDataSet);
begin
  qryParcPagos.fieldvalues['Totalp'] := qryParcPagos.FieldValues['dImporte'] + qryParcPagos.FieldValues['dIva'] ;
end;







procedure Tfrm_ReportesIngresoscias.tdFechaFinalExit(Sender: TObject);
begin
  tsIdCuentaBancariaCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_ReportesIngresoscias.tdFechaInicioExit(Sender: TObject);
begin
   tsIdCuentaBancariaCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_ReportesIngresoscias.tsIdCuentaBancariaCloseUp(Sender: TObject);
begin
    zQIngresos.Active := False ;
    zQIngresos.Params.ParamByName('cuenta').AsString  := tsIdCuentaBancaria.KeyValue ;
    zQIngresos.Params.ParamByName('fecha1').AsDate    := tdFechaInicio.Date;
    zQIngresos.Params.ParamByName('fecha2').AsDate    := tdFechaFinal.Date;
    zQIngresos.Open ;
    grid_facturas.Focused := True;
end;

procedure Tfrm_ReportesIngresoscias.zQIngresosBeforeInsert(DataSet: TDataSet);
begin
    if tsIdCuentaBancaria.Text = '' then
        abort
end;

procedure Tfrm_ReportesIngresoscias.zQIngresosCalcFields(DataSet: TDataSet);
begin
    zQIngresos.FieldValues['Total'] := zQIngresos.FieldValues['dImportetotal'] + zQIngresos.FieldValues['dIva'] ;
end;

procedure Tfrm_ReportesIngresoscias.zQIngresossTipoMovimientoChange(Sender: TField);
begin
    if zQIngresossTipoMovimiento.Text = 'DEPOSITO' then
        zQIngresos.FieldValues['sIdArea'] := 'XYZ' ;
end;





end.
