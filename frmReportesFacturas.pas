unit frmReportesFacturas;

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
  dxRibbonRadialMenu, PFacturaElectronica, CFDI, PFacturaElectronica_PAC,
  PACFem, GeneradorCBB, PAddenda_PEP,
  JvMemoryDataset, frxExportPDF, ShlObj, cxTextEdit, cxContainer, cxMemo,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxButtons, cxDBLookupComboBox, cxLabel,
  NxPropertyItems, NxPropertyItemClasses,
  NxDBPropertyItems, NxInspector, NxDBInspector, cxImageComboBox, ZSqlUpdate,
  cxEditRepositoryItems, cxGroupBox, cxRadioGroup, ComObj, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;


type
  Tfrm_ReportesFacturas = class(TForm)
    Panel2: TPanel;
    Label9: TLabel;
    Label4: TLabel;
    tsIdCuentaBancaria: TcxLookupComboBox;
    tdFechaInicio: TDateTimePicker;
    tdFechaFinal: TDateTimePicker;
    gridPrincipal: TcxGrid;
    Grid_facturas: TcxGridDBTableView;
    Grid_facturasdFechaFactura1: TcxGridDBColumn;
    Grid_facturasdIdFecha1: TcxGridDBColumn;
    Grid_facturasiIdFolio1: TcxGridDBColumn;
    Grid_facturassIdNumeroCuenta1: TcxGridDBColumn;
    Grid_facturasdImporteTotal1: TcxGridDBColumn;
    Grid_facturasdIva1: TcxGridDBColumn;
    Grid_facturasTotal1: TcxGridDBColumn;
    Grid_facturassStatus1: TcxGridDBColumn;
    Grid_facturasColumn2: TcxGridDBColumn;
    Grid_facturasColumn1: TcxGridDBColumn;
    Grid_facturasColumn3: TcxGridDBColumn;
    gridPrincipalLevel1: TcxGridLevel;
    cxscrlbxdetalle: TcxScrollBox;
    Grid_Conceptos: TcxGrid;
    Grid_Detalle: TcxGridDBTableView;
    Grid_DetalledCantidad1: TcxGridDBColumn;
    Grid_DetallestrDesc1: TcxGridDBColumn;
    Grid_DetalledImporte1: TcxGridDBColumn;
    Grid_ConceptosLevel1: TcxGridLevel;
    Grid_DetalleColumn1: TcxGridDBColumn;
    Grid_DetalleColumn2: TcxGridDBColumn;
    Grid_DetalleColumn3: TcxGridDBColumn;
    Grid_DetalleColumn4: TcxGridDBColumn;
    Grid_facturasColumn4: TcxGridDBColumn;
    zQEgresos: TZQuery;
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
    zQEgresosmDescripcion: TMemoField;
    zQEgresossIdCompania: TStringField;
    zQEgresosdIva: TFloatField;
    zQEgresosdFechaFactura: TDateField;
    zQEgresosTotal: TFloatField;
    zQEgresosiFolio: TIntegerField;
    zQEgresosiIdStatus: TIntegerField;
    zQEgresossStatus: TStringField;
    zQEgresossCompanya: TStringField;
    zQEgresossTipoPago: TStringField;
    zQEgresossNumeroDeCuenta: TStringField;
    zQEgresossNumeroPedido: TStringField;
    zQEgresosiImprimeProveedor: TIntegerField;
    zQEgresossMes: TStringField;
    zQEgresosdFechaRecepcion: TDateField;
    zQEgresoslAplicaPagoParcial: TStringField;
    zQEgresosdParcialidad: TFloatField;
    zQEgresossProyecto: TStringField;
    strngfldQEgresossNumeroOrden: TStringField;
    fltfldQEgresosdImporteSubTotal: TFloatField;
    fltfldQEgresosdIva_Porcentaje: TFloatField;
    strngfldQEgresoslAplicaiva: TStringField;
    strngfldQEgresossPoliza: TStringField;
    strngfldQEgresosCFDI_sTipoDocumento: TStringField;
    strngfldQEgresosCFDI_sUUID: TStringField;
    dtmfldQEgresosCFDI_dFechaEmision: TDateTimeField;
    dtmfldQEgresosCFDI_dFechaTimbrado: TDateTimeField;
    strngfldQEgresosCFDI_sSelloCFD: TStringField;
    strngfldQEgresosCFDI_sSelloSAT: TStringField;
    strngfldQEgresosCFDI_sCertificadoCFD: TStringField;
    strngfldQEgresosCFDI_sCertificadoSAT: TStringField;
    strngfldQEgresosCFDI_sCadenaOriginal: TStringField;
    blbfldQEgresosCFDI_bbCode: TBlobField;
    strngfldQEgresosCFDI_sEstado: TStringField;
    strngfldQEgresosCFDI_sRegimenFiscal: TStringField;
    strngfldQEgresosCFDI_sLugarExpedicion: TStringField;
    strngfldQEgresosCFDI_sFormaDePago: TStringField;
    strngfldQEgresosCFDI_sMetodoDePago: TStringField;
    strngfldQEgresosCFDI_sTipoComprobante: TStringField;
    zQEgresossUsuario: TStringField;
    zQEgresosiEjercicio: TIntegerField;
    zQEgresosiIdTipoMoneda: TStringField;
    zQEgresosiIdPrecioMoneda: TIntegerField;
    dszQEgresos: TDataSource;
    zq_DetallesFacturas: TZQuery;
    zq_DetallesFacturasDescripcion: TStringField;
    zq_DetallesFacturasiId: TIntegerField;
    zq_DetallesFacturasiId_Factura: TIntegerField;
    zq_DetallesFacturasdCantidad: TFloatField;
    zq_DetallesFacturasdImporte: TFloatField;
    zq_DetallesFacturasdImporte_Unitario: TFloatField;
    zq_DetallesFacturassMedida: TStringField;
    zq_DetallesFacturaslAplicaIVA: TStringField;
    ds_DetallesFacturas: TDataSource;
    zq_DetallesFacturasdNeto: TFloatField;
    zq_DetallesFacturasdIva: TFloatField;
    zq_DetallesFacturasdTotal: TFloatField;
    zQCuentasBancarias: TZQuery;
    zQCuentasBancariassIdNumeroCuenta: TStringField;
    zQCuentasBancariassNombreCuenta: TStringField;
    zQCuentasBancariassFirmanCuenta: TStringField;
    dszQCuentasBancarias: TDataSource;
    Memo_Log: TMemo;
    ds_statusfacturas: TDataSource;
    zq_statusfacturas: TZQuery;
    zq_statusfacturasiId: TIntegerField;
    zq_statusfacturassNombre: TStringField;
    qryCompanias: TZQuery;
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
    strngfldCompaniassNumeroInterior: TStringField;
    strngfldCompaniassNumeroExterior: TStringField;
    strngfldCompaniassLocalidad: TStringField;
    strngfldCompaniassMunicipio: TStringField;
    strngfldCompaniassColonia: TStringField;
    qryCompaniassMail: TStringField;
    qryCompaniassTelefono2: TStringField;
    qryCompaniassContacto: TStringField;
    qryCompaniaslTipo: TStringField;
    qryCompaniassIdCompaniaConf: TStringField;
    qryCompaniassRegistroPatronal: TStringField;
    frxReport1: TfrxReport;
    frxFacturas: TfrxDBDataset;
    frxDetalles: TfrxDBDataset;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    zq_contratos: TZQuery;
    frxContratos: TfrxDBDataset;
    zq_contratossContrato: TStringField;
    zq_contratosbImagen: TBlobField;
    dxBarButton4: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxrdgrp1: TcxRadioGroup;
    cxdtrpstry1: TcxEditRepository;
    RadioGroupItem1: TcxEditRepositoryRadioGroupItem;
    dxBarButton3: TdxBarButton;
    zq_DetallesFacturassDescripcion: TMemoField;
    intgrfldQEgresossFormaPago: TIntegerField;
    cxButton1: TcxButton;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    dxBarButton7: TdxBarButton;
    zq_Graficas: TZQuery;
    procedure zQEgresosAfterScroll(DataSet: TDataSet);
    procedure zQEgresosCalcFields(DataSet: TDataSet);
    procedure zq_DetallesFacturasCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tsIdCuentaBancariaPropertiesCloseUp(Sender: TObject);
    procedure tdFechaInicioCloseUp(Sender: TObject);
    procedure tdFechaFinalCloseUp(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxrdgrp1PropertiesChange(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
  private
    IsOpenE, IsOpenD:Boolean;
  { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ReportesFacturas: Tfrm_ReportesFacturas;
  Ropen: Boolean;

  Function ExportExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
  function LetraColumna (x:integer):string;

implementation

uses frm_repositorio;

{$R *.dfm}

procedure Tfrm_ReportesFacturas.cxButton1Click(Sender: TObject);
begin
  zQEgresos.Active := False ;
  zQEgresos.SQL.Clear ;
  zQEgresos.SQL.Add('SELECT te.* FROM con_tesoreriaegresos te '+
                    'INNER JOIN con_cuentasbancarias cb on (cb.sIdNumeroCuenta=te.sIdNumeroCuenta) '+
                    'WHERE (cb.sIdCompaniaConf=:sContrato and te.sTipoMovimiento="Deposito" '+
                    'And (:Cuenta = "-1" or (:Cuenta <> "-1" and te.sIdNumeroCuenta = :Cuenta))) and '+
                    '(te.dFechaFactura >= :Fecha1 and te.dFechaFactura <= :Fecha2) ORDER BY te.dIdFecha') ;
  zQEgresos.Params.ParamByName('Fecha1').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
  zQEgresos.Params.ParamByName('Fecha2').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
  zQEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
  zQEgresos.Params.ParamByName('cuenta').Value    := '-1' ;
  zQEgresos.Params.ParamByName('sContrato').DataType := ftString ;
  zQEgresos.Params.ParamByName('sContrato').Value    := global_contrato ;
  zQEgresos.Open ;
end;

procedure Tfrm_ReportesFacturas.cxrdgrp1PropertiesChange(Sender: TObject);
begin
  cxrdgrp1.EditingValue;
end;

procedure Tfrm_ReportesFacturas.dxBarButton1Click(Sender: TObject);
begin
  Ropen:=True;
  zQEgresos.Filtered:=False;
  zQEgresos.Filter:='iIdStatus=4';
  zQEgresos.Filtered:=True;

  if cxrdgrp1.EditingValue then
    frxReport1.LoadFromFile(global_files + global_miReporte + '_CADOrdenado_por_fecha.fr3')
  else
    frxReport1.LoadFromFile(global_files + global_miReporte + '_CADOrdenado_por_fecha_Detallado.fr3');

  frxReport1.ShowReport();

              if not FileExists(global_files + global_miReporte + '_CADOrdenado_por_fecha.fr3') then
           begin
            showmessage('El archivo de reporte '+global_Mireporte+'_CADOrdenado_por_fecha.fr3 no existe, notifique al administrador del sistema');
           exit;
            end;

 



end;

procedure Tfrm_ReportesFacturas.dxBarButton2Click(Sender: TObject);
begin
  zQEgresos.Active := False ;
  zQEgresos.SQL.Clear ;
  zQEgresos.SQL.Add('select * from con_tesoreriaegresos te ' +
                    'Where te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                    'And sTipoMovimiento="DEPOSITO" And te.sIdNumeroCuenta =:Cuenta Order by te.dFechaFactura, te.dIdFecha') ;
  zQEgresos.Params.ParamByName('Fecha1').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
  zQEgresos.Params.ParamByName('Fecha2').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
  zQEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
  zQEgresos.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.EditValue ;
  zQEgresos.Open ;

  

    if cxrdgrp1.EditingValue then
     frxReport1.LoadFromFile(global_files + global_miReporte + '_CADOrdenado_por_fecha_Expedición.fr3')
  else
    frxReport1.LoadFromFile(global_files + global_miReporte + '_CADOrdenado_por_fecha_Expedición_Detallado.fr3');

  if cxrdgrp1.EditingValue then
    begin
       if not  FileExists(global_files + global_miReporte + '_CADOrdenado_por_fecha_Expedición.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_CADOrdenado_por_fecha_Expedición.fr3 no existe, notifique al administrador del sistema');
    end 
  else
    begin
      if not fileExists (global_files + global_miReporte + '_CADOrdenado_por_fecha_Expedición_Detallado.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_CADOrdenado_por_fecha_Expedición_Detallado.fr3 no existe, notifique al administrador del sistema');
    end;

  frxReport1.ShowReport();

end;

procedure Tfrm_ReportesFacturas.dxBarButton3Click(Sender: TObject);
begin
  tdFechaInicio.OnCloseUp(tdFechaInicio);
  cxrdgrp1.EditValue:=True;
  frxReport1.LoadFromFile(global_files + global_miReporte + '_CADAuxiliar_de_movimientos.fr3');
  frxReport1.ShowReport();
    if not FileExists(global_files + global_miReporte + '_CADAuxiliar_de_movimientos.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADAuxiliar_de_movimientos.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;
end;

procedure Tfrm_ReportesFacturas.dxBarButton4Click(Sender: TObject);
begin
  zQEgresos.Active := False ;
  zQEgresos.SQL.Clear ;
  zQEgresos.SQL.Add('select * from con_tesoreriaegresos te ' +
                    'Where te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                    'And sTipoMovimiento="DEPOSITO" And te.sIdNumeroCuenta =:Cuenta Order by te.sIdCompania, te.dIdFecha') ;
  zQEgresos.Params.ParamByName('Fecha1').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
  zQEgresos.Params.ParamByName('Fecha2').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
  zQEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
  zQEgresos.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.EditValue ;
  zQEgresos.Open ;


      

   if cxrdgrp1.EditingValue then
     frxReport1.LoadFromFile(global_files + global_miReporte + '_CADAgrupado_por_cliente.fr3')
  else
    frxReport1.LoadFromFile(global_files + global_miReporte + '_CADAgrupado_por_cliente_Detallado.fr3');

  if cxrdgrp1.EditingValue then
    begin
       if not  FileExists(global_files + global_miReporte + '_CADAgrupado_por_cliente.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_CADAgrupado_por_cliente.fr3 no existe, notifique al administrador del sistema');
    end 
  else
    begin
      if not fileExists (global_files + global_miReporte + '_CADAgrupado_por_cliente_Detallado.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_CADAgrupado_por_cliente_Detallado.fr3 no existe, notifique al administrador del sistema');
    end;

  frxReport1.ShowReport();

end;

procedure Tfrm_ReportesFacturas.dxBarButton5Click(Sender: TObject);
begin
  zQEgresos.Active := False ;
  zQEgresos.SQL.Clear ;
  zQEgresos.SQL.Add('select * from con_tesoreriaegresos te ' +
                    'Where te.dIdFecha >=:Fecha1 And te.dIdFecha <=:Fecha2 ' +
                    'And sTipoMovimiento="DEPOSITO" And te.sIdNumeroCuenta =:Cuenta Order by te.sStatus, te.dIdFecha') ;
  zQEgresos.Params.ParamByName('Fecha1').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha1').Value    := tdFechaInicio.Date ;
  zQEgresos.Params.ParamByName('Fecha2').DataType := ftDate ;
  zQEgresos.Params.ParamByName('Fecha2').Value    := tdFechaFinal.Date ;
  zQEgresos.Params.ParamByName('Cuenta').DataType := ftString ;
  zQEgresos.Params.ParamByName('cuenta').Value    := tsIdCuentaBancaria.EditValue ;
  zQEgresos.Open ;

  if cxrdgrp1.EditingValue then
     frxReport1.LoadFromFile(global_files + global_miReporte + '_CADOrdenado_por_Estado.fr3')
  else
    frxReport1.LoadFromFile(global_files + global_miReporte + '_CADOrdenado_por_Estado_Detallado.fr3');

  if cxrdgrp1.EditingValue then
    begin
       if not  FileExists(global_files + global_miReporte + '_CADOrdenado_por_Estado.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_CADOrdenado_por_Estado.fr3 no existe, notifique al administrador del sistema');
    end 
  else
    begin
      if not fileExists (global_files + global_miReporte + '_CADOrdenado_por_Estado_Detallado.fr3') then
         showmessage('El archivo de reporte '+global_Mireporte+'_CADOrdenado_por_Estado_Detallado.fr3 no existe, notifique al administrador del sistema');
    end;

  frxReport1.ShowReport();
end;

procedure Tfrm_ReportesFacturas.dxBarButton6Click(Sender: TObject);
begin
  ExportExcelPersonalizado(zq_contratos,Grid_facturas,'Control de Ingresos','Reporte Facturas');
end;

procedure Tfrm_ReportesFacturas.dxBarButton7Click(Sender: TObject);
begin
  {$REGION 'Graficas en Excel'}
  zq_StatusFacturas.Active := False ;
  zq_StatusFacturas.Open;
  while not zq_StatusFacturas.Eof do
  begin
    zq_Graficas.Active:=False;
    zq_Graficas.ParamByName('sContrato').AsString:=global_contrato;
    zq_Graficas.ParamByName('estatus').AsInteger:=zq_StatusFacturas.FieldByName('iId').AsInteger;
    zq_Graficas.ParamByName('FechaI').AsDate:=tdFechaInicio.Date;
    zq_Graficas.ParamByName('FechaF').AsDate:=tdFechaFinal.Date;
    zq_Graficas.Open
  end;
  {$ENDREGION}
end;

procedure Tfrm_ReportesFacturas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure Tfrm_ReportesFacturas.FormShow(Sender: TObject);
begin
  zq_contratos.Active := False ;
  zq_contratos.Params.ParamByName('sContrato').AsString := global_contrato;
  zq_contratos.Open ;

  zq_StatusFacturas.Active := False ;
  zq_StatusFacturas.Open;
  tdFechaInicio.Date := EncodeDate(2014,01,01);
  tdFechaFinal.Date  := Date;

  zQCuentasBancarias.Active := False ;
  zQCuentasBancarias.Params.ParamByName('Compania').DataType := ftString ;
  zQCuentasBancarias.Params.ParamByName('Compania').Value    := Global_Contrato ;
  zQCuentasBancarias.Open ;
  if zQCuentasBancarias.RecordCount > 0 then  //Es mayor a cero
    tsIdCuentaBancaria.EditValue := zqCuentasBancarias.FieldByName('sIdNumeroCuenta').AsString  //asigna el valor de la cuenta bancaria
  else tsIdCuentaBancaria.EditValue := 0;

  IsOpenD := False;
  zq_DetallesFacturas.Active := False;
  zq_DetallesFacturas.Open;
  IsOpenD := True;

  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
  //tdFechaInicio.OnCloseUp(tdFechaInicio);
end;

procedure Tfrm_ReportesFacturas.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if VarName = 'Cantidad' then
  begin
    Value := Grid_Detalle.DataController.Summary.FooterSummaryValues[0];
  end;
  if VarName = 'FechaIni' then
  begin
    Value := FormatDateTime('dd/mm/yyyy',tdFechaInicio.Date);
  end;
  if VarName = 'FechaFnl' then
  begin
    Value := FormatDateTime('dd/mm/yyyy',tdFechaFinal.Date);
  end;
end;

procedure Tfrm_ReportesFacturas.tdFechaFinalCloseUp(Sender: TObject);
begin
  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_ReportesFacturas.tdFechaInicioCloseUp(Sender: TObject);
begin
  tsIdCuentaBancariaPropertiesCloseUp(tsIdCuentaBancaria);
end;

procedure Tfrm_ReportesFacturas.tsIdCuentaBancariaPropertiesCloseUp(
  Sender: TObject);
begin
  Memo_Log.Lines.Add('Cargando las facturas');
  IsOpenE:=False;
  //Para mostrar las facturas dependiendo de la cuanta seleccionada
  Grid_facturas.DataController.DataSource := nil;
  zQEgresos.Active := False ;
  zQEgresos.ParamByName('cuenta').AsString    := tsIdCuentaBancaria.EditValue ;
  zQEgresos.ParamByName('Fecha1').AsDate      := tdFechaInicio.Date;
  zQEgresos.ParamByName('Fecha2').AsDate      := tdFechaFinal.Date;
  IsOpenE:=False;
  zQEgresos.Open ;  
  Grid_facturas.DataController.DataSource := dszQEgresos;
  IsOpenE := True;
  zQEgresosAfterScroll(zQEgresos);
  Memo_Log.Lines.Add('Facturas Cargadas Exitosamente');
end;

procedure Tfrm_ReportesFacturas.zQEgresosAfterScroll(DataSet: TDataSet);
begin
  if IsOpenE then
  begin
    if zQEgresos.RecordCount  > 0 then
    begin
      Grid_Detalle.DataController.DataSource := nil;
      zq_DetallesFacturas.Filtered := False;
      zq_DetallesFacturas.Filter := 'iId_Factura = '+ IntToStr(zQEgresos.FieldByName('iIdFolio').AsInteger);
      zq_DetallesFacturas.Filtered := True;
      Grid_Detalle.DataController.DataSource := ds_DetallesFacturas;
    end;
  end;
end;

procedure Tfrm_ReportesFacturas.zQEgresosCalcFields(DataSet: TDataSet);
begin
  zQEgresos.FieldValues['Total'] := zQEgresos.FieldValues['dImportetotal'] + zQEgresos.FieldValues['dIva'] ;
end;

procedure Tfrm_ReportesFacturas.zq_DetallesFacturasCalcFields(DataSet: TDataSet);
begin
  {if frmrepositorio.ZQInsumos.Locate('sIdInsumo', zq_DetallesFacturas.FieldByName('sDescripcion').AsString, []) then
    zq_DetallesFacturas.FieldByName('Descripcion').AsString := frmrepositorio.ZQInsumos.FieldByName('mDescripcion').asString;
  }
  zq_DetallesFacturas.FieldValues['dNeto'] := zq_DetallesFacturas.FieldValues['dCantidad'] * zq_DetallesFacturas.FieldValues['dImporte'];
  zq_DetallesFacturas.FieldValues['dIva'] := zq_DetallesFacturas.FieldValues['dNeto'] * 0.16;
  zq_DetallesFacturas.FieldValues['dTotal'] := zq_DetallesFacturas.FieldValues['dNeto'] + zq_DetallesFacturas.FieldValues['dIva'];
end;

{$REGION 'Exportar a Excel'}
function LetraColumna (x:integer):string;
const letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  Result := '';
  x := x+1;
  While x > 0 do begin
    Result := letras[1 + ((x - 1) Mod length(letras))] + Result;
    x := (x - 1) div length(letras);
  End;
end;

Function ExportExcelPersonalizado(DatoImagen: TZQuery;grid: TcxGridDBTableView;TituloPestaña,encabezado: string): Boolean;
var
  Excel, Workbook, Worksheet: Variant;
  X, columx, rowx, idx, colx, NumCheked, ColIni, RowIni, ColMaxExc, columna, co: integer;
  avalorStr, valorStr: string;
  TempPath: String;
  LogoFile: String;
const
   //hoja
   xlWBATWorksheet = -4167;

   xlCenter = -4108;
   xlBottom =-4107;
   xlNone = -4142;

   //estilo de linea
   xlContinuous = $00000001;
   xlDash = $FFFFEFED;
   xlDashDot = $00000004;
   xlDashDotDot = $00000005;
   xlDot = $FFFFEFEA;
   xlDouble = $FFFFEFE9;
   xlSlantDashDot = $0000000D;
   xlLineStyleNone = $FFFFEFD2;

   //--------- Grosores en bordes de Celdas -----------------------------------
   xlThin   = $00000002; // ( 2) Fino
   xlMedium = $00000003; // ( 3) Medi

   //alineaciones  horizontal
   xlHAlignCenter = $FFFFEFF4;
   xlHAlignCenterAcrossSelection = $00000007;
   xlHAlignDistributed = $FFFFEFEB;
   xlHAlignFill = $00000005;
   xlHAlignGeneral = $00000001;
   xlHAlignJustify = $FFFFEFDE;
   xlHAlignLeft = $FFFFEFDD;
   xlHAlignRight = $FFFFEFC8;

   //alineacion vertical
   xlVAlignBottom = $FFFFEFF5;
   xlVAlignCenter = $FFFFEFF4;
   xlVAlignDistributed = $FFFFEFE5B;
   xlVAlignJustify = $FFFFEFDE;
   xlVAlignTop = $FFFFEFC0;

   //Orientation
   xlDownward = $FFFFEFB6;
   xlHorizontal = $FFFFEFE0;
   xlUpward = $FFFFEFB5;
   xlVertical = $FFFFEFBA;
   xlDiagonalDown = 5;
   xlDiagonalUp = 6;
   xlInsideVertical = 11;
   xlInsideHorizontal = 12;

   //--------- Colores en Fondo de Celdas -------------------------------------
   xl_CL_AmarLight = $00000024; // (36) Amarillo Claro
   xl_CL_AzulCielo = $00000021; // (33) Azul Cielo
   xl_CL_Turq      = $00000008; // ( 8) Truquesa
   xl_CL_TurqLight = $00000022; // (34) Turquesa Claro
   xl_CL_Rojo      = $00000003; // ( 3) Rojo
   xl_CL_Gris_Claro = $16445675;
   xlThemeColorDark1=1;

   //Color de texto
   Xl_Rojo = clRed;
   xl_Lime = clLime;
   Xl_Negro = clBlack;
   Xl_Azul = clBlue;
   Xl_Amarillo = clYellow;
   Xl_Gris = clGray;
   Xl_Blanco = clWhite;
begin

  rowx := 2;
  columx := 0;
  x := 0;
  idx := 0;
  colx := 1;

  ColMAxExc := 0;
  ColIni := 1;
  RowIni := 1;

  //HOja
  Excel := CreateOleObject('Excel.Application');
  // Mostrar el excel
  Excel.Visible:= True;
  // evitar que nos pregunte si deseamos sobreescribir el archivo
  Excel.DisplayAlerts := false;
  // agregar libro de trabajo
  Workbook := Excel.Workbooks.Add(xlWBATWorksheet);
  // tomar una referencia a la hoja creada
  WorkSheet := WorkBook.WorkSheets[1];
  WorkSheet.Name := TituloPestaña;

  TempPath := GetEnvironmentVariable('TEMP');
  LogoFile := TempPath + '\Temp.bmp';
  TBlobField( DatoImagen.FieldByName('bImagen')).SaveToFile(LogoFile);

  WorkSheet.shapes.addpicture(LogoFile, False, True, 10*colini, 10*rowini, 120, 70);
  WorkSheet.Cells[RowIni+1,ColIni+1] := Encabezado;
  WorkSheet.Cells[RowIni+1,ColIni+1].font.size := 13;
  WorkSheet.Cells[RowIni+1,ColIni+1].WrapText := True;
  WorkSheet.Cells[RowIni+1,ColIni+1].HorizontalAlignment := xlHAlignCenter;

  RowIni := RowIni+6;

    //obteniendo las columnas desde el grid y escribiendolas con formato
    columna := 0;

    while columna < grid.ColumnCount do
    begin
      if grid.Columns[columna].Visible = True then
      begin

        WorkSheet.Cells[RowIni, ColMaxExc+ColIni] := grid.Columns[columna].Caption;
        WorkSheet.Cells[RowIni, ColMaxExc+ColIni].font.Color := Xl_Negro;
        Inc(ColMaxExc);
      end;
      NumCheked := ColMaxExc;
      Inc(Columna);
    end;

    ColMaxExc := ColMaxExc - 1;
    RowIni := RowIni-6;

    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Mergecells := True;
    Excel.Range[LetraColumna(ColIni)+inttostr(RowIni+1)+':'+LetraColumna(ColMaxExc)+inttostr(RowIni+1)].Font.Bold := true;
  //ENCABEZADOS DEL EXCEL
  {while idx < ChkLst.items.Count do
  begin
    if ChkLst.Items.Items[idx].Checked = true then
    begin
      WorkSheet.cells[rowx,colx+1] := ChkLst.Items.Items[idx].Text;
      Inc(colx);
    end;
    NumCheked := colx;
    inc(idx);
  end;}

  RowIni := RowIni+6;
   //FORMATO A ENCABEZADO EXCEL
  while x < NumCheked do
  begin
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].select;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].HorizontalAlignment := xlCenter;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].VerticalAlignment := xlBottom;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Name := 'Arial';
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.size := 12;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Color := Xl_Blanco;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Font.Bold := true;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.colorIndex := 2;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.TintAndShade := 0;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.Weight := xlMedium;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders.LineStyle := xlContinuous;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalDown].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlDiagonalUp].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideVertical].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Borders[xlInsideHorizontal].LineStyle := xlNone;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Columns.autofit;
    Excel.Range[LetraColumna(columx+x)+IntToStr(RowIni)+':'+LetraColumna(columx+x)+IntToStr(RowIni)].Interior.ColorIndex:=1;
    inc(x);
  end;

  //CUERPO EXCEL
  idx := 0;
  colx := 0;
  //rowx := 12;
  columx := 2;

  //REGISTROS DEL GRID  OJO SOLO ACEPTA TCXGRIDDBTABLEVIEW...
  while idx < grid.ViewData.RowCount do
  begin
    columx := 1;
    colx := 0;
    co:=0;
    while colx < grid.ItemCount do
    begin
      //if ChkLst.Items.Items[colx].Checked = true then
      //begin
        if grid.ViewData.Rows[idx].Values[colx]=null then
          valorStr:=''
        else
          valorStr := grid.ViewData.Rows[idx].Values[colx] ;
        if grid.Columns[colx].Visible = True then
        begin
          WorkSheet.cells[idx+8,columx] := valorStr;
          Inc(columx);
        end;
        if avalorStr=valorStr then
          inc(co);
        avalorStr:=valorStr;
      //end;
      Inc(colx);
    end;
    
    if co=grid.ItemCount-1 then
    begin
      Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Mergecells := True;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Interior.ColorIndex:=15;
      Excel.Range[LetraColumna(0)+IntToStr(idx+8)+':'+LetraColumna(columx-2)+IntToStr(idx+8)].Font.Bold := true;
      //WorkSheet.cells[idx+8,columx] := valorStr;
    end;
    inc(idx);
  end;

  //TOTALES
  WorkSheet.cells[idx+8,columx-2]:= 'TOTALES DEL REPORTE';
  WorkSheet.cells[idx+9,columx-2]:= 'Subtotal';
  WorkSheet.cells[idx+10,columx-2]:= 'I.V.A.';
  WorkSheet.cells[idx+11,columx-2]:= 'Total';
  WorkSheet.cells[idx+9,columx-1]:= VarToStr(grid.DataController.Summary.FooterSummaryValues[0]);
  WorkSheet.cells[idx+10,columx-1]:= VarToStr(grid.DataController.Summary.FooterSummaryValues[1]);
  WorkSheet.cells[idx+11,columx-1]:= VarToStr(grid.DataController.Summary.FooterSummaryValues[2]);
  WorkSheet.cells[idx+8,columx-2].HorizontalAlignment := xlHAlignCenter;
  WorkSheet.cells[idx+9,columx-2].HorizontalAlignment := xlHAlignRight;
  WorkSheet.cells[idx+10,columx-2].HorizontalAlignment := xlHAlignRight;
  WorkSheet.cells[idx+11,columx-2].HorizontalAlignment := xlHAlignRight;
  Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Mergecells := True;
  Excel.Range[LetraColumna(0)+inttostr(idx+9)+':'+LetraColumna(columx-3)+inttostr(idx+9)].Mergecells := True;
  Excel.Range[LetraColumna(0)+inttostr(idx+10)+':'+LetraColumna(columx-3)+inttostr(idx+10)].Mergecells := True;
  Excel.Range[LetraColumna(0)+inttostr(idx+11)+':'+LetraColumna(columx-3)+inttostr(idx+11)].Mergecells := True;
  Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Font.Bold := true;
  Excel.Range[LetraColumna(0)+inttostr(idx+9)+':'+LetraColumna(columx-3)+inttostr(idx+9)].Font.Bold := true;
  Excel.Range[LetraColumna(0)+inttostr(idx+10)+':'+LetraColumna(columx-3)+inttostr(idx+10)].Font.Bold := true;
  Excel.Range[LetraColumna(0)+inttostr(idx+11)+':'+LetraColumna(columx-3)+inttostr(idx+11)].Font.Bold := true;
  Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Interior.ColorIndex:=1;
  Excel.Range[LetraColumna(0)+inttostr(idx+8)+':'+LetraColumna(columx-2)+inttostr(idx+8)].Font.Color := Xl_Blanco;
  Excel.Range[LetraColumna(0)+inttostr(idx+9)+':'+LetraColumna(columx-3)+inttostr(idx+9)].Interior.ColorIndex:=15;
  Excel.Range[LetraColumna(0)+inttostr(idx+10)+':'+LetraColumna(columx-3)+inttostr(idx+10)].Interior.ColorIndex:=15;
  Excel.Range[LetraColumna(0)+inttostr(idx+11)+':'+LetraColumna(columx-3)+inttostr(idx+11)].Interior.ColorIndex:=15;

  //APLICAR BORDES DELGADOS Y AUTOAJUSTE
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+11)].Borders.LineStyle := xlContinuous;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+11)].Borders.colorIndex := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+11)].Borders.TintAndShade := 0;
  Excel.Range[LetraColumna(0)+IntToStr(8)+':'+LetraColumna(columx-2)+IntToStr(idx+11)].Borders.Weight := xlThin;
  Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+11)].columns.autofit;
  //Excel.Range[LetraColumna(0)+IntToStr(7)+':'+LetraColumna(columx-2)+IntToStr(idx+7)].WrapText := True;

  {
  try
    cdExportarFilt := TClientDataSet.Create(self);
    cdExportarFilt.FieldDefs.Clear;
    cdExportarFilt.FieldDefs.Add('sCodigo', ftString, 200, False);
    cdExportarFilt.FieldDefs.Add('snoSerie', ftString, 100, false);
    cdExportarFilt.FieldDefs.Add('sTitulo', ftString, 100, false);
    cdExportarFilt.FieldDefs.Add('mDescripcion', ftMemo, 0, false);
    cdExportarFilt.FieldDefs.Add('mComentarios', ftMemo, 0, false);
    cdExportarFilt.FieldDefs.Add('dFecha', ftDate, 0, False);
    cdExportarFilt.CreateDataSet;
  finally
    FreeAndNil(cdExportarFilt);
  end;}
end;
{$ENDREGION}

end.
