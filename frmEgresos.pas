unit frmEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, frm_ordenes,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  StdCtrls, NxEdit, NxStdCtrls, frm_barra, NxPageControl, Mask, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxLookup, Grids, DBGrids,
  NxDBColumns, NxColumns, strUtils, ComCtrls, Buttons, FramedPanel, RXDBCtrl,
  Newpanel, DateUtils, global, frxClass, frxDBSet, Utilerias,  ExtCtrls, Menus,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,UFunctionsGHH, AdvGroupBox,
  AdvOfficeButtons,Forms, NxCollection, cxControls, AdvGlowButton, cxNavigator,
  cxDBNavigator, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, W7Classes, W7Panels, cxRadioGroup, UnitValidaTexto,
  OverbyteIcsWndControl, OverbyteIcsWSocket;

type
  Tfrm_Egresos = class(TForm)
    Label1: TLabel;
    frmBarra1: TfrmBarra;
    dszQEgresos: TDataSource;
    zQEgresos: TZQuery;
    tdFecha: TDateTimePicker;
    zQAreas: TZReadOnlyQuery;
    dszQAreas: TDataSource;
    dszQCuentasBancarias: TDataSource;
    zQCuentasBancarias: TZQuery;
    zQCuentasBancariassIdNumeroCuenta: TStringField;
    zQCuentasBancariassNombreCuenta: TStringField;
    zQCuentasBancariassFirmanCuenta: TStringField;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnBusca: TSpeedButton;
    Label9: TLabel;
    Label12: TLabel;
    tdbiIdFolio: TDBEdit;
    tdbsReferencia: TDBEdit;
    tdbsIdArea: TDBLookupComboBox;
    tsIdCuentaBancaria: TDBLookupComboBox;
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
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    tsRazonSocial: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    tsCiudad: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    zCommand: TZQuery;
    frPrinter: TfrxDBDataset;
    rptReporte: TfrxReport;
    zqEstadodeCuenta: TZQuery;
    zqEstadodeCuentadIdFecha: TDateField;
    zqEstadodeCuentaiIdFolio: TIntegerField;
    zqEstadodeCuentasTipoMovimiento: TStringField;
    zqEstadodeCuentasIdNumeroCuenta: TStringField;
    zqEstadodeCuentasReferencia: TStringField;
    zqEstadodeCuentasIdProveedor: TStringField;
    zqEstadodeCuentasRazonSocial: TStringField;
    zqEstadodeCuentadImporteTotal: TFloatField;
    zqEstadodeCuentalComprobado: TStringField;
    zqEstadodeCuentasNombreCuenta: TStringField;
    Label3: TLabel;
    tmDescripcion: TDBMemo;
    dszQOrdenesdeTrabajo: TDataSource;
    zQOrdenesdeTrabajo: TZReadOnlyQuery;
    zqEstadodeCuentasNumeroOrden: TStringField;
    zqEstadodeCuentamDescripcion: TMemoField;
    mnucheques: TPopupMenu;
    PolizaCheque1: TMenuItem;
    DoctoCheque1: TMenuItem;
    dbIVa: TDBEdit;
    Label17: TLabel;
    dbPoliza: TDBEdit;
    Label19: TLabel;
    zQEgresossIdProveedor: TStringField;
    zQEgresossPoliza: TStringField;
    zQEgresosdIdFecha: TDateField;
    zQEgresosiIdFolio: TIntegerField;
    zQEgresossTipoMovimiento: TStringField;
    zQEgresossIdArea: TStringField;
    zQEgresossIdNumeroCuenta: TStringField;
    zQEgresossNumeroOrden: TStringField;
    zQEgresossReferencia: TStringField;
    zQEgresossIdCompania: TStringField;
    zQEgresossRFC: TStringField;
    zQEgresossRazonSocial: TStringField;
    zQEgresossDomicilio: TStringField;
    zQEgresossCiudad: TStringField;
    zQEgresosdImporteTotal: TFloatField;
    zQEgresoslComprobado: TStringField;
    zQEgresossStatus: TStringField;
    zQEgresosmDescripcion: TMemoField;
    zQEgresosdIva: TFloatField;
    zQEgresosdFechaFactura: TDateField;
    zQEgresossTelefono: TStringField;
    zQEgresossEstado: TStringField;
    zQEgresossCP: TStringField;
    zQEgresoslAplicaiva: TStringField;
    zQEgresosiFolio: TIntegerField;
    zQEgresosiIdStatus: TIntegerField;
    zQEgresossTipoPago: TStringField;
    zQEgresossNumeroDeCuenta: TStringField;
    zQEgresossNumeroPedido: TStringField;
    zQEgresosiImprimeProveedor: TIntegerField;
    Label16: TLabel;
    qryOrdenesTrabajo: TZQuery;
    ds_ordenesdetrabajo: TDataSource;
    tsidOrdendeTrabajo: TDBLookupComboBox;
    QFile: TZQuery;
    AvOfCkFormatos: TAdvOfficeCheckGroup;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    zQEgresosiEjercicio: TIntegerField;
    NxHeaderPanel1: TNxHeaderPanel;
    cxDBNavigator1: TcxDBNavigator;
    btnCancelar: TAdvGlowButton;
    btnReferencia: TAdvGlowButton;
    grid_agresos: TcxGridDBTableView;
    gridEgresosLevel: TcxGridLevel;
    cxGridAgresos: TcxGrid;
    grid_agresossIdProveedor1: TcxGridDBColumn;
    grid_agresosdIdFecha1: TcxGridDBColumn;
    grid_agresosiIdFolio1: TcxGridDBColumn;
    grid_agresossIdArea1: TcxGridDBColumn;
    grid_agresossIdNumeroCuenta1: TcxGridDBColumn;
    grid_agresossNumeroOrden1: TcxGridDBColumn;
    grid_agresossReferencia1: TcxGridDBColumn;
    grid_agresossRFC1: TcxGridDBColumn;
    grid_agresossRazonSocial1: TcxGridDBColumn;
    grid_agresossDomicilio1: TcxGridDBColumn;
    grid_agresossCiudad1: TcxGridDBColumn;
    grid_agresosdImporteTotal1: TcxGridDBColumn;
    grid_agresoslComprobado1: TcxGridDBColumn;
    grid_agresossStatus1: TcxGridDBColumn;
    grid_agresosdIva1: TcxGridDBColumn;
    grid_agresossCP1: TcxGridDBColumn;
    grid_agresosColumn1: TcxGridDBColumn;
    grid_agresosColumn2: TcxGridDBColumn;
    intgrfldQEgresossFormaPago: TIntegerField;
    btnCatalogoProyectos: TButton;
    btnCatalogoBanco: TButton;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    strngfldQCuentasBancariassFolioSinCheque: TStringField;
    btnCatalogoAreas: TButton;
    pnlBusqueda: TPanel;
    headerpanelbusqueda: TNxHeaderPanel;
    chkBuscarEmpleado: TcxRadioButton;
    chkBuscarProveedor: TcxRadioButton;
    W7Panel1: TW7Panel;
    btnAceptarbusqueda: TAdvGlowButton;
    btnCancelarBusqueda: TAdvGlowButton;
    zQEmpleados: TZQuery;
    StringField2: TStringField;
    StringField5: TStringField;
    StringField8: TStringField;
    zQEmpleadossIdEmpleado: TStringField;
    zQEmpleadossNombreCompleto: TStringField;
    strngfldQEmpleadossDomicilio: TStringField;
    zQEmpleadosnombre: TStringField;
    lbl4: TLabel;
    cbbMostrarSubtotal: TComboBox;
    lbl1: TLabel;
    frxEstadosCuentas: TfrxDBDataset;
    strngfldEstadodeCuentasStatus: TStringField;
    edtSubtotal: TDBEdit;
    tdImporteTotal: TEdit;
    Label18: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    zq_provbanco: TZQuery;
    ds_provbanco: TDataSource;
    zQEgresossBancoProv: TStringField;
    zqEstadodeCuentadIva: TFloatField;
    dbIvaRet: TDBEdit;
    Label20: TLabel;
    dbIsrRet: TDBEdit;
    Label22: TLabel;
    cbIvaRet: TDBComboBox;
    Label21: TLabel;
    zQEgresosiIvaRet: TIntegerField;
    zQEgresosdIvaRet: TFloatField;
    zQEgresosdIsrRet: TFloatField;
    WSocketMensaje: TWSocket;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure zQEgresosAfterInsert(DataSet: TDataSet);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure tdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridRecibosDblClick(Sender: TObject);
    procedure GridRecibosKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscaClick(Sender: TObject);
    procedure zQCuentasBancariasAfterScroll(DataSet: TDataSet);
    procedure zQEgresossIdProveedorChange(Sender: TField);
    procedure btnReferenciaClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure rptReporteGetValue(const VarName: string; var Value: Variant);
    procedure zQEgresosAfterScroll(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure lblRegistroDblClick(Sender: TObject);
    procedure PolizaCheque1Click(Sender: TObject);
    procedure DoctoCheque1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure tdFechaCloseUp(Sender: TObject);
    procedure btnCatalogoProyectosClick(Sender: TObject);
    procedure btnCatalogoBancoClick(Sender: TObject);
    procedure btnCatalogoAreasClick(Sender: TObject);
    procedure btnAceptarbusquedaClick(Sender: TObject);
    procedure edtSubtotalKeyPress(Sender: TObject; var Key: Char);
    procedure cbbMostrarSubtotalChange(Sender: TObject);
    procedure tdImporteTotalEnter(Sender: TObject);
    procedure dbIVaEnter(Sender: TObject);
    procedure tdbiIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tdbsIdAreaKeyPress(Sender: TObject; var Key: Char);
    procedure tdbsReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure tsIdCuentaBancariaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure dbPolizaKeyPress(Sender: TObject; var Key: Char);
    procedure tsidOrdendeTrabajoKeyPress(Sender: TObject; var Key: Char);
    procedure tsRazonSocialKeyPress(Sender: TObject; var Key: Char);
    procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure EnviarMensaje (Mensaje, Ip: String);
    procedure Tablero;
  private
    { Private declarations }
    ListaFiles:TstringList;
  public
    { Public declarations }
    StreamPDF:TStream;
    abierto : boolean;
    descartarAfterScroll : boolean;
    modoInsercion : Boolean;
  end;

 

var
  frm_Egresos: Tfrm_Egresos;
  iFolio : Integer ;
  ImporteTotal : Double ;
implementation

uses frmBuscarProveedor, frmReferenciarCheque, frmReferenciarChequeiva,
   frm_connection, UFrmVisorPdf, Frm_VisorXml, frmCatalogodeCuentas,
  frmCatalogoDeCargoA, Func_Genericas, frmGastos, frmBuscarEmpleado;

{$R *.dfm}

procedure Tfrm_Egresos.btnAceptarbusquedaClick(Sender: TObject);
begin
  if zQEgresos.State in [dsEdit, dsInsert] then
  begin
    sIdProveedorBusqueda := '*';
    sParamCPProv := '*';
    sParamDomicilioProv := '*';
    sParamEstadoProv := '*';
    sParamTelfProv := '*';
    if chkBuscarEmpleado.Checked then
    begin
      sIdProveedorBusqueda := '' ;
      Application.CreateForm(Tfrm_buscarEmpleado, frm_buscarEmpleado);
      frm_buscarEmpleado.ShowModal ;
    end;
    if chkBuscarProveedor.Checked then
    begin
      sIdProveedorBusqueda := '' ;
      Application.CreateForm(Tfrm_buscarProveedor, frm_buscarProveedor);
      frm_buscarProveedor.ShowModal ;
    end;
    zQEgresos.FieldByName('sIdProveedor').AsString := sIdProveedorBusqueda ;
    zQEgresos.FieldByName('sCP').AsString := sParamCPProv;
    //zQEgresos.FieldByName('sDomicilio').AsString := sParamDomicilioProv;
    zQEgresos.FieldByName('sEstado').AsString := sParamEstadoProv;
    zQEgresos.FieldByName('sTelefono').AsString := sParamTelfProv;
//    btnCancelarBusqueda.Click;
  end;
end;

procedure Tfrm_Egresos.btnBuscaClick(Sender: TObject);
begin
  if (zqEgresos.State in [dsInsert]) or (zqEgresos.State in [dsEdit]) then
  begin
    pnlBusqueda.Visible := True;
    func_genericas.Crear_Form(pnlBusqueda,frm_Gastos,'',162, 464, 145, 250, []);

  end;

  (*sIdProveedorBusqueda := '' ;
  Application.CreateForm(Tfrm_BuscarProveedor, frm_BuscarProveedor);
  frm_BuscarProveedor.ShowModal ;
//  dbEdit1.SetFocus ;
  zQEgresos.FieldValues['sIdProveedor'] := sIdProveedorBusqueda ;
 // dbEdit1.Text := sIdProveedorBusqueda ;*)
end;

procedure Tfrm_Egresos.btnCancelarClick(Sender: TObject);
begin
  if zQEgresos.RecordCount > 0 then
      if zQEgresos.FieldValues['sStatus'] = 'Aprobado' then
          If MessageDlg('Desea Cancelar el Movimiento No. ' + zQEgresos.FieldValues['sReferencia'] + '?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
               zCommand.Active := False;
               zCommand.SQL.Clear;
               zCommand.SQL.Add('select dIdFecha from con_tesoreriapegresos Where dIdFecha = :Fecha And iIdFolio = :Folio');
               zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
               zCommand.Params.ParamByName('Fecha').Value := zQEgresos.FieldValues['dIdFecha'] ;
               zCommand.Params.ParamByName('Folio').DataType := ftInteger ;
               zCommand.Params.ParamByName('Folio').Value := zQEgresos.FieldValues['iIdFolio'] ;
               zCommand.Open ;
               if zCommand.RecordCount = 0 then
               begin
                    zQEgresos.Edit ;
                    zQEgresos.FieldValues['sStatus'] := 'Cancelado' ;
                    zQEgresos.FieldValues['dImporteTotal'] := 0 ;
                    zQEgresos.FieldValues['lComprobado'] := 'Si' ;
                    zQEgresos.Post ;
               end;
          end;
end;

procedure Tfrm_Egresos.btnCatalogoAreasClick(Sender: TObject);
begin
  //Abrir el catalogo de Areas
  Application.CreateForm(Tfrm_CatalogoDeCargoA, frm_CatalogoDeCargoA);

  frm_CatalogoDeCargoA.FormStyle := fsMDIForm;
  frm_CatalogoDeCargoA.Width := 800;
  frm_CatalogoDeCargoA.Height := 600;
  frm_CatalogoDeCargoA.Position := poDesktopCenter;
  frm_CatalogoDeCargoA.Visible := False;

  frm_CatalogoDeCargoA.ShowModal;
end;

procedure Tfrm_Egresos.btnCatalogoBancoClick(Sender: TObject);
begin
  //Abrir el catalogo de Bancos
  Application.CreateForm(Tfrm_CatalogoCuentas, frm_CatalogoCuentas);

  frm_CatalogoCuentas.FormStyle := fsMDIForm;
  frm_CatalogoCuentas.Width := 800;
  frm_CatalogoCuentas.Height := 600;
  frm_CatalogoCuentas.Position := poDesktopCenter;
  frm_CatalogoCuentas.Visible := False;

  frm_CatalogoCuentas.ShowModal;
end;

procedure Tfrm_Egresos.btnCatalogoProyectosClick(Sender: TObject);
begin
  //Mostrar el catalogo de Proyectos
  Application.CreateForm(TfrmOrdenes, frmOrdenes);

  frmOrdenes.FormStyle := fsMDIForm;
  frmOrdenes.Width := 800;
  frmOrdenes.Height := 600;
  frmOrdenes.Position := poDesktopCenter;
  frmOrdenes.Visible := False;

  frmOrdenes.ShowModal;
end;

procedure Tfrm_Egresos.btnReferenciaClick(Sender: TObject);
begin
    if zQEgresos.RecordCount > 0 then
    begin
        dParamFecha      := zQEgresos.FieldValues['dIdFecha'] ;
        iParamFolio      := zQEgresos.FieldValues['iIdFolio'] ;
        sParamProveedor  := zQEgresos.FieldValues['sIdProveedor'] ;
        dParamMonto      := zQEgresos.FieldValues['dImporteTotal'] * -1;
        sParamComprobado := zQEgresos.FieldValues['lComprobado'] ;

//        Application.CreateForm(Tfrm_ReferenciarCheque, frm_ReferenciarCheque);
//        frm_ReferenciarCheque.GridConceptos.ReadOnly := False ;
//        frm_ReferenciarCheque.Show;

        If Connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then
           begin
             Application.CreateForm(Tfrm_ReferenciarCheque, frm_ReferenciarCheque);
             frm_ReferenciarCheque.GridConceptos.ReadOnly := False ;
             frm_ReferenciarCheque.Show;
           end
        else
           begin
             dParamMonto:=(dParamMonto+(zQEgresos.FieldValues['dIva']*-1))-((zQEgresos.FieldValues['dIvaRet']*-1)+(zQEgresos.FieldValues['dIsrRet']*-1));
             Application.CreateForm(Tfrm_ReferenciarChequeiva, frm_ReferenciarChequeiva);
             frm_ReferenciarChequeiva.GridConceptos.ReadOnly := False ;
             frm_ReferenciarChequeiva.ShowModal;
           end;
        //Application.CreateForm(Tfrm_ReferenciarCheque, frm_ReferenciarCheque);
        //frm_ReferenciarCheque.GridConceptos.ReadOnly := False ;
       // frm_ReferenciarCheque.Show;
    end;
end;

procedure Tfrm_Egresos.cbbMostrarSubtotalChange(Sender: TObject);
begin
  //Si el item seleccionado es Si, entonces mostrar el campo Subtotal
  if cbbMostrarSubtotal.ItemIndex = 0 then
  begin
    lbl4.Caption:='SubTotal:';
    Label12.Visible := True;
    tdImporteTotal.Visible := True;
    tdImporteTotal.Enabled := False;

    Label17.Visible := True;
    dbIVa.Visible := True;
    dbIVa.Text:='0';
  end
  else if cbbMostrarSubtotal.ItemIndex = 1 then
  begin
    lbl4.Caption:='Total:';
    Label12.Visible := False;
    tdImporteTotal.Visible := False;
    tdImporteTotal.Enabled := False;

    Label17.Visible := False;
    dbIVa.Visible := False;
    dbIVa.Text:='0';
  end;
end;

procedure Tfrm_Egresos.cxButton1Click(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
begin
  if (zQEgresos.RecordCount>0) or (zQEgresos.State=DsInsert ) then
  begin
    QFile.Active:=false;
    if zQEgresos.State=DsInsert then
      QFile.paramByname('Folio').AsInteger:=-1
    else
      QFile.paramByname('Folio').AsInteger:= zQEgresos.FieldByNAme('iIdFolio').AsInteger;

    //QFile.paramByname('Folio').AsInteger:=
    QFile.paramByname('Movimiento').AsString:=zQEgresos.FieldByNAme('sTipoMovimiento').asstring;
    QFile.paramByname('TipoFile').AsString:='PDF';
    QFile.open;

    application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
    try
      if zQEgresos.State=DsInsert then
        FrmVisorPdf.Mode:=VsInsercion;

      if zQEgresos.State=DsEdit then
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

      if zQEgresos.State=DsBrowse then
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

      if FrmVisorPdf.showmodal=mrOk then
      begin
        if zQEgresos.State in [DsInsert,DsEdit]  then
        begin
          begin
            //StreamPDF := TFileStream.Create(FrmVisorPdf.PDFStream, fmOpenRead);
           // StreamPDF:=TMemoryStream.Create;
            //StreamPDF.position:=0;
           // StreamPDF:=FrmVisorPdf.PDFStream;//.CopyFrom(FrmVisorPdf.PDFStream,FrmVisorPdf.PDFStream.Size);

            mapdato:=IData.Create;
            if zQEgresos.State = dsInsert then
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

procedure Tfrm_Egresos.cxButton2Click(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
begin
  if (zQEgresos.RecordCount>0) or (zQEgresos.State=DsInsert ) then
  begin
    QFile.Active:=false;
    if zQEgresos.State=DsInsert then
      QFile.paramByname('Folio').AsInteger:=-1
    else
      QFile.paramByname('Folio').AsInteger:= zQEgresos.FieldByNAme('iIdFolio').AsInteger;

    //QFile.paramByname('Folio').AsInteger:=
    QFile.paramByname('Movimiento').AsString:=zQEgresos.FieldByNAme('sTipoMovimiento').asstring;
    QFile.paramByname('TipoFile').AsString:='JPEG';
    QFile.open;

    application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
    try
      if zQEgresos.State=DsInsert then
        FrmVisorPdf.Mode:=VsInsercion;

      if zQEgresos.State=DsEdit then
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

      if zQEgresos.State=DsBrowse then
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

      if FrmVisorPdf.showmodal=mrOk then
      begin
        if zQEgresos.State in [DsInsert,DsEdit]  then
        begin
          begin
            //StreamPDF := TFileStream.Create(FrmVisorPdf.PDFStream, fmOpenRead);
           // StreamPDF:=TMemoryStream.Create;
            //StreamPDF.position:=0;
           // StreamPDF:=FrmVisorPdf.PDFStream;//.CopyFrom(FrmVisorPdf.PDFStream,FrmVisorPdf.PDFStream.Size);

            mapdato:=IData.Create;

            if zQEgresos.State = dsInsert then
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

procedure Tfrm_Egresos.cxButton3Click(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
begin
  if (zQEgresos.RecordCount>0) or (zQEgresos.State=DsInsert ) then
  begin
    application.CreateForm(TFrmVisorXml,FrmVisorXml);
    QFile.Active:=false;
    if zQEgresos.State=DsInsert then
      QFile.paramByname('Folio').AsInteger:=-1
    else
      QFile.paramByname('Folio').AsInteger:= zQEgresos.FieldByNAme('iIdFolio').AsInteger;
    QFile.paramByname('Movimiento').AsString:=zQEgresos.FieldByNAme('sTipoMovimiento').asstring;
    QFile.paramByname('TipoFile').AsString:='XML';
    QFile.open;

    try
      if zQEgresos.State=DsInsert then
        FrmVisorXml.Mode:=VsInsercion;

      if zQEgresos.State=DsEdit then
        if QFile.RecordCount=0 then
          FrmVisorXml.Mode:=VsInsercion
        else
        begin
          FrmVisorXml.Mode:=VsEdicion;
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

      if zQEgresos.State=DsBrowse then
      begin
        if QFile.RecordCount=0 then
          FrmVisorXml.Mode:=VsInsercion
        else
          FrmVisorXml.Mode:=VsLectura;

        if QFile.Recordcount>0 then
        begin
          sNameFile:=GenerarTmpName('',QFile.FieldByName('sExtension').AsString);
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(QFile.FieldByName('bFile'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorXml.FileName:=sTotalFileName;
            FrmVisorXml.sNameFile:=QFile.FieldByName('sNombreFile').AsString;
          finally
            MryFile.Destroy;
          end;
        end;
      end;

      FrmVisorXml.TipoFile:=smXML;




      if FrmVisorXml.showmodal=mrOk then
      begin
        if zQEgresos.State in [DsInsert,DsEdit]  then
        begin
          begin
            //StreamPDF := TFileStream.Create(FrmVisorPdf.PDFStream, fmOpenRead);
           // StreamPDF:=TMemoryStream.Create;
            //StreamPDF.position:=0;
           // StreamPDF:=FrmVisorPdf.PDFStream;//.CopyFrom(FrmVisorPdf.PDFStream,FrmVisorPdf.PDFStream.Size);

            mapdato:=IData.Create;
            if zQEgresos.State = dsInsert then
              mapdato.IdDb:=-1
            else
              if QFile.RecordCount=0 then
                 mapdato.IdDb:=-1
              else
                mapdato.IdDb:=QFile.fieldByname('iIdFile').asinteger;


            mapdato.sNameFile:=FrmVisorXml.FileName;
            mapdato.sTypeFile:='XML';

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
      FrmVisorXml.destroy;
      QFile.close;
    end;
  end;
end;

procedure Tfrm_Egresos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       tsIdCuentaBancaria.SetFocus
end;

procedure Tfrm_Egresos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        dbPoliza.SetFocus
end;

procedure Tfrm_Egresos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
        DBEdit7.SetFocus
end;

procedure Tfrm_Egresos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      DBEdit8.SetFocus
end;

procedure Tfrm_Egresos.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
        DBLookupComboBox1.SetFocus
end;

procedure Tfrm_Egresos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
        DBEdit4.SetFocus
end;

procedure Tfrm_Egresos.dbIVaEnter(Sender: TObject);
begin
  if edtSubtotal.Text <> '' then
  begin
    if (zQEgresos.State=dsInsert) or (zQEgresos.State=dsEdit) then
      zQEgresos.FieldByName('dIva').AsFloat := StrToFloat(edtSubtotal.Text ) * global_Iva;
  end;
end;

procedure Tfrm_Egresos.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
      if Key = #13 then
        tdFecha.SetFocus
end;

procedure Tfrm_Egresos.dbPolizaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsidOrdendeTrabajo.SetFocus
end;

procedure Tfrm_Egresos.DoctoCheque1Click(Sender: TObject);
begin
     zqEstadodeCuenta.Active := False ;
     zqEstadodeCuenta.SQL.Clear ;
     zqEstadodeCuenta.SQL.Add('select te.*, c.sNombreCuenta, (te.dImporteTotal+te.dIva) as total from con_tesoreriaegresos te  ' +
                              'inner join con_cuentasbancarias c on (te.sIdNumeroCuenta = c.sIdNumeroCuenta) ' +
                              'where te.dIdFecha = :Fecha And c.sIdCompaniaconf = :Contrato order by te.sIdNumeroCuenta, te.iIdFolio') ;
     zqEstadodeCuenta.Params.ParamByName('fecha').DataType    := ftDate ;
     zqEstadodeCuenta.Params.ParamByName('fecha').Value       := tdFecha.Date ;
     zqEstadodeCuenta.Params.ParamByName('Contrato').DataType := ftString ;
     zqEstadodeCuenta.Params.ParamByName('Contrato').Value    := global_contrato ;
     zqEstadodeCuenta.Open ;
     if zqEstadodeCuenta.RecordCount > 0 then
        begin
          rptReporte.LoadFromFile(global_Files+ '_CADfrCheque.fr3') ;

        end;
          if not FileExists(global_files + global_miReporte + '_CADfrCheque.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrCheque.fr3 no existe, notifique al administrador del sistema');

  end;

  rptReporte.ShowReport() ;
end;

procedure Tfrm_Egresos.edtSubtotalKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
      tsIdCuentaBancaria.SetFocus;
      
  if not(Key in ['0'..'9','.',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure Tfrm_Egresos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ListaFiles.Clear;
  ListaFiles.destroy;
  action := cafree ;
  abierto := False;
end;

procedure Tfrm_Egresos.FormCreate(Sender: TObject);
begin
  ListaFiles:=TstringList.Create;
end;

procedure Tfrm_Egresos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
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

procedure Tfrm_Egresos.FormShow(Sender: TObject);
begin
    //Con esto descartamos el after scroll que se hace a cada rato
    descartarAfterScroll := True;

    //DesEhabilitar botones de acceso a catalogos
    btnCatalogoAreas.Enabled := False;
    btnCatalogoBanco.Enabled := False;
    btnCatalogoProyectos.Enabled := False;

    abierto := True;
    edtSubtotal.Enabled := False;
    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Params.ParamByName('Compania').DataType := ftString ;
    zQCuentasBancarias.Params.ParamByName('Compania').Value    := Global_Contrato ;
    zQCuentasBancarias.Open ;

    tdFecha.Date := Date ;

    zQEgresos.Active := False ;
    zQEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQEgresos.Params.ParamByName('fecha').Value := tdFecha.Date ;
    zQEgresos.Open ;
    if zQEgresos.RecordCount = 0 then
        btnReferencia.Enabled := False
    else
        btnReferencia.Enabled := True ;

    zQAreas.Active := False ;
    zQAreas.Open ;

    zqOrdenesdeTrabajo.Active := False ;
    zQOrdenesdeTrabajo.ParamByName('contrato').AsString := global_contrato;
    zqOrdenesdeTrabajo.Open ;

    qryOrdenesTrabajo.Active := False;
    qryOrdenesTrabajo.Params.ParamByName('contrato').AsString  := global_contrato ;
    qryOrdenesTrabajo.Open;

    btnBusca.Enabled := False ;
    tdFecha.SetFocus;

    descartarAfterScroll := False;
end;

procedure Tfrm_Egresos.frmBarra1btnAddClick(Sender: TObject);
begin
  edtSubtotal.Enabled := True;

  ListaFiles.Clear;
  frmBarra1.btnAddClick(Sender);
  btnBusca.Enabled := True ;
  zCommand.Active := False ;
  zCommand.SQL.clear ;
  zCommand.Sql.Add('select max(iIdFolio) as iIdFolio from con_tesoreriaegresos') ;
  zCommand.Open ;
  if NOT zCommand.FieldByName('iIdFolio').IsNull then
      iFolio := zCommand.FieldValues ['iIdFolio'] + 1
  Else
      iFolio := 1 ;
  tdbiIdFolio.ReadOnly := False ;
  btnBusca.Enabled := True ;
    zQEgresos.Insert ;
    zQEgresos.FieldValues['dIva'] := 0 ;
    zQEgresos.FieldValues['dIvaRet'] := 0 ;
    zQEgresos.FieldValues['dIsrRet'] := 0 ;
    zQEgresos.FieldValues['sPoliza'] := 'S/P' ;
    tdbsIdArea.SetFocus;

    //habilitar botones de acceso a catalogos
    btnCatalogoAreas.Enabled := True;
    btnCatalogoBanco.Enabled := True;
    btnCatalogoProyectos.Enabled := True;
    tdImporteTotal.Text:='';
end;

procedure Tfrm_Egresos.frmBarra1btnCancelClick(Sender: TObject);
begin
  edtSubtotal.Enabled := False;

  zQEgresos.Cancel ;
  frmBarra1.btnCancelClick(Sender);

  //Deshabilitar botones de acceso a catalogos
    btnCatalogoAreas.Enabled := False;
    btnCatalogoBanco.Enabled := False;
    btnCatalogoProyectos.Enabled := False;
end;

procedure Tfrm_Egresos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if zQEgresos.RecordCount > 0 then
  begin

  If zQEgresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try

         zCommand.Active := False;
         zCommand.SQL.Clear;
         zCommand.SQL.Add('Select * from con_tesoreriapegresos where dIdFecha = :Fecha and iIdFolio = :Folio');
         zCommand.Params.ParamByName('Fecha').DataType := ftDate;
         zCommand.Params.ParamByName('Fecha').Value := tdFecha.Date;
         zCommand.Params.ParamByName('folio').DataType := ftString ;
         zCommand.Params.ParamByName('folio').Value := zQEgresos.FieldValues['iIdFolio'];
         zCommand.Open;
         If zCommand.RecordCount > 0 Then
               MessageDlg('NO SE PUEDE ELIMINAR, EXISTEN DETALLE DEL EGRESO', mtInformation, [mbOk], 0)
         else
            begin
               zCommand.Active := False;
               zCommand.SQL.Clear;
               zCommand.SQL.Add('Delete from con_tesoreriapegresos where dIdFecha = :Fecha and iIdFolio = :Folio');
               zCommand.Params.ParamByName('Fecha').DataType := ftDate;
               zCommand.Params.ParamByName('Fecha').Value := tdFecha.Date;
               zCommand.Params.ParamByName('folio').DataType := ftString ;
               zCommand.Params.ParamByName('folio').Value := zQEgresos.FieldValues['iIdFolio'];
               zCommand.ExecSQL;
               zQEgresos.Delete ;
               zQEgresos.Active := False ;
               zQEgresos.Params.ParamByName('fecha').DataType := ftDate ;
               zQEgresos.Params.ParamByName('fecha').Value := tdFecha.Date ;
               zQEgresos.Open ;
            end;


       except
         MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end

  end;
end;

procedure Tfrm_Egresos.frmBarra1btnEditClick(Sender: TObject);
begin
  ListaFiles.Clear;
  if zQEgresos.RecordCount > 0 then
  begin
      edtSubtotal.Enabled := True;

      frmBarra1.btnEditClick(Sender);
      btnBusca.Enabled := True ;
      tdbiIdFolio.ReadOnly := False ;
      btnBusca.Enabled := True ;
      zQEgresos.Edit ;
      if zQEgresos.FieldValues['dImporteTotal'] > 0 then
           zQEgresos.FieldValues['dImporteTotal'] := zQEgresos.FieldValues['dImporteTotal'] * -1 ;
      tdbsIdArea.SetFocus;

      //habilitar botones de acceso a catalogos
    btnCatalogoAreas.Enabled := True;
    btnCatalogoBanco.Enabled := True;
    btnCatalogoProyectos.Enabled := True;
  end;
end;

procedure Tfrm_Egresos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_Egresos.frmBarra1btnPostClick(Sender: TObject);
var
  isNew:Boolean;
  BlobSTream:Tstream;
  FileStream:TFileStream;
  i:Integer;
  MapDato:IData;
  egreso, saldo, total : Real;
  nombres, cadenas: TStringList;
begin
    //empieza validacion
    nombres := TStringList.Create; cadenas := TStringList.Create;
    nombres.Add('Cargo a');
    nombres.Add('Referencia');
    nombres.Add('Proveedor');
    nombres.Add('SubTotal');
    nombres.Add('Iva'); nombres.Add('Ret. Iva'); nombres.Add('10% Isr');
    nombres.Add('Cta. Banco');
    nombres.Add('Proyecto');

    cadenas.Add(tdbsIdArea.Text);
    cadenas.Add(tdbsReferencia.Text);
    cadenas.Add(DBEdit1.Text);
    cadenas.Add(edtSubtotal.Text);
    cadenas.Add(dbIVa.Text);cadenas.Add(dbIvaRet.Text);cadenas.Add(dbIsrRet.Text);
    cadenas.Add(tsIdCuentaBancaria.Text);
    cadenas.Add(tsidOrdendeTrabajo.Text);

    if not validaTexto(nombres, cadenas, '', '') then
    begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
    end;
    //Hacer una validacion (Si la suma de los importes de los egresos es mayor al saldo inicial, mandar un mensaje de que no hay suficiente dinero para el egreso)
    //***********************************************************************************************************************************************************
    //Traer el saldo inicial
    with connection.QryBusca do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select SUM(dImporteTotal+dIva) as saldo from con_tesoreriaegresos ' +
              'where (sIdNumeroCuenta = :sIdNumeroCuenta) ' +
              'and (sReferencia = "SALDO INICIAL" ' +
              'or sReferencia = "Transferencia Electronica")'); //Saldo inicial
      Params.ParamByName('sIdNumeroCuenta').AsString := tsIdCuentaBancaria.KeyValue;
      Open;

      saldo := FieldByName('saldo').AsFloat;
    end;

    //Traer la suma de los egresos de la cuenta seleccionada
    with connection.zCommand do
    begin
      Active := False;
      SQL.Clear;
      SQL.Add('select SUM(dImporteTotal) as egreso from con_tesoreriaegresos ' +
              'where (sIdNumeroCuenta = :sIdNumeroCuenta) ' +
              'and (sReferencia <> "SALDO INICIAL"' +
              'and sReferencia <> "Transferencia Electronica")'); //Suma de egresos de la cuenta seleccionada
      Params.ParamByName('sIdNumeroCuenta').AsString := tsIdCuentaBancaria.KeyValue;
      Open;

      egreso := FieldByName('egreso').AsFloat;
    end;

    //Hacer la resta para saber cuanto se queda del saldo inicial

    total := saldo + egreso;

    if edtSubtotal.Visible = True then
    begin
      if StrToFloat(tdImporteTotal.Text) > total then
      begin
        ShowMessage('No hay suficiente dinero para generar este egreso. El saldo actual es de : ' + FloatToStr(total));
        Exit;
      end;
    end
    else
    begin
      if (StrToFloat(tdImporteTotal.Text) + StrToFloat(dbIVa.Text)) > total then
      begin
        ShowMessage('No hay suficiente dinero para generar este egreso. El saldo actual es de : ' + FloatToStr(total));
        Exit;
      end;
    end;
    //******************************************************************************************************************************



  IsNew:=false;
  if ZqEgresos.state=dsInsert then
    isNew:=true;

  if zQEgresos.FieldValues['dImporteTotal'] > 0 then
  begin
       zQEgresos.FieldValues['dImporteTotal'] := zQEgresos.FieldValues['dImporteTotal'] * -1 ;
       zQEgresos.FieldValues['dIvaRet'] := zQEgresos.FieldValues['dIvaRet'] * -1 ;
       zQEgresos.FieldValues['dIsrRet'] := zQEgresos.FieldValues['dIsrRet'] * -1 ;
       zQEgresos.FieldValues['dIva'] := zQEgresos.FieldValues['dIva'] * -1 ;
  end;
  if cbbMostrarSubtotal.ItemIndex = 1 then
    zQEgresos.FieldValues['dIva'] := 0;
  zQEgresos.FieldValues['sStatus']    := 'Aprobado' ;
  zQEgresos.FieldValues['lAplicaIva'] := 'No' ;
  zqEgresos.FieldByName('iEjercicio').AsInteger:= connection.configuracionCont.FieldByName('iEjercicio').AsInteger;
  zqEgresos.FieldByName('sIdNumeroCuenta').AsString:= tsIdCuentaBancaria.KeyValue;
  zqEgresos.FieldByName('sDomicilio').AsString:= '*';
  zQEgresos.Post ;

  if ListaFiles.Count>0 then
  begin
    for I := 0 to ListaFiles.Count - 1 do
    begin
      MapDato:=IData(ListaFiles.Objects[I]);
      QFile.Active:=false;
      QFile.paramByname('Folio').AsInteger:=zQEgresos.fieldByname('iIdFolio').AsInteger;
      QFile.paramByname('Movimiento').AsString:=zQEgresos.FieldByNAme('sTipoMovimiento').asstring;
      QFile.paramByname('TipoFile').AsString:=MapDato.sTypeFile;
      QFile.open;

      if QFile.RecordCount=0 then
      begin
        QFile.append;
        QFile.FieldByName('iIdFile').asinteger:=0;
        QFile.FieldByName('iIdFolio').asinteger:=zQEgresos.FieldByName('iIdFolio').asinteger;
        QFile.FieldByNAme('sTipoMovimiento').AsString:=zQEgresos.FieldByNAme('sTipoMovimiento').asstring;
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
      //QFile.FieldByName('sNombre').AsString:=ExtractFileName(CxBtnEdtArchivo.Text);
      QFile.post;
    end;

  end;


  if OpcButton = 'New' then
  Begin
      zQCuentasBancarias.Edit ;
      zQCuentasBancarias.fieldvalues['sFolioCheque'] := zQCuentasBancarias.fieldvalues['sFolioCheque'] + 1 ;
      zQCuentasBancarias.Post ;
  End ;

  zQEgresos.Refresh ;
  btnReferencia.Enabled := True ;
  btnBusca.Enabled := False ;
  OpcButton := 'Edit' ;
  frmBarra1.btnPostClick(Sender);
  edtSubtotal.Enabled := False;
  Tablero;
  //Deshabilitar botones de acceso a catalogos
    btnCatalogoAreas.Enabled := False;
    btnCatalogoBanco.Enabled := False;
    btnCatalogoProyectos.Enabled := False;
end;

procedure Tfrm_Egresos.frmBarra1btnPrinterClick(Sender: TObject);
begin

     if not FileExists(global_files + global_miReporte + '_CADfrEstadodeCuenta_Cheques.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrEstadodeCuenta_Cheques.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

     zqEstadodeCuenta.Active := False ;
     zqEstadodeCuenta.SQL.Clear ;
     zqEstadodeCuenta.SQL.Add('select te.*, c.sNombreCuenta, (te.dImporteTotal+te.dIva) as total from con_tesoreriaegresos te  ' +
                              'inner join con_cuentasbancarias c on (te.sIdNumeroCuenta = c.sIdNumeroCuenta) ' +
                              'where te.dIdFecha = :Fecha And c.sIdCompaniaconf = :Contrato order by te.sIdNumeroCuenta, te.iIdFolio') ;
     zqEstadodeCuenta.Params.ParamByName('fecha').DataType    := ftDate ;
     zqEstadodeCuenta.Params.ParamByName('fecha').Value       := tdFecha.Date ;
     zqEstadodeCuenta.Params.ParamByName('Contrato').DataType := ftString ;
     zqEstadodeCuenta.Params.ParamByName('Contrato').Value    := global_contrato ;
     zqEstadodeCuenta.Open ;
     rptReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrEstadodeCuenta_Cheques.fr3') ;
     rptReporte.ShowReport()

end;

procedure Tfrm_Egresos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    Connection.ConfiguracionCont.Refresh ;
    zQEgresos.Refresh ;
    zQCuentasBancarias.Refresh ;
end;

procedure Tfrm_Egresos.GridRecibosDblClick(Sender: TObject);
begin
    tdbsReferencia.setfocus
end;

procedure Tfrm_Egresos.GridRecibosKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tdbsReferencia.SetFocus
end;

procedure Tfrm_Egresos.lblRegistroDblClick(Sender: TObject);
var
   myForm : TForm;
   GridRecibos : TRxDBGrid ;
begin
   if (zQEgresos.RecordCount > 0) then
   begin
       sNuevoRecibo := '' ;
       myForm := TForm.Create(Self) ;
       try
           myForm.Position := poDesktopCenter ;
           myForm.Caption := 'Seleccione folio de cheque a consultar' ;
           MyForm.BorderIcons := [biSystemMenu] ;
           MyForm.Width := 700 ;
           MyForm.Height := 430 ;
           MyForm.BorderStyle := bsSingle ;

           GridRecibos := TRxDBGrid.Create(MyForm) ;
           GridRecibos.Parent := myForm ;
           GridRecibos.Visible := True ;
           GridRecibos.Align := alClient ;
           GridRecibos.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit] ;
           GridRecibos.TitleButtons := True ;
           GridRecibos.DataSource := dszQEgresos ;
           myForm.ShowModal;
       finally
           myForm.Free;
       end;
   end;
end;

procedure Tfrm_Egresos.PolizaCheque1Click(Sender: TObject);
begin

      if not FileExists(global_files + global_miReporte + 'CADfrPoliza.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'CADfrPoliza.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

    zqEstadodeCuenta.Active := False ;
    zqEstadodeCuenta.SQL.Clear ;
    zqEstadodeCuenta.SQL.Add('select te.*, c.sNombreCuenta from con_tesoreriaegresos te ' +
                             'inner join con_cuentasbancarias c on (te.sIdNumeroCuenta = c.sIdNumeroCuenta) ' +
                             'where te.iIdFolio = :Folio order by te.sIdNumeroCuenta, te.iIdFolio') ;
    zqEstadodeCuenta.Params.ParamByName('folio').DataType := ftInteger ;
    zqEstadodeCuenta.Params.ParamByName('folio').Value    := zqEgresos.FieldValues['iIdFolio'] ;
    zqEstadodeCuenta.Open ;

    rptReporte.LoadFromFile(global_Files+ 'CADfrPoliza.fr3') ;
    rptReporte.ShowReport()
end;

procedure Tfrm_Egresos.rptReporteGetValue(const VarName: string;
  var Value: Variant);
begin

   If CompareText(VarName, 'CANTIDAD') = 0 then
       begin
         ImporteTotal := (zqEgresos.FieldValues['dImporteTotal'] * -1) ;
         Value        := xNumerosToLletres(ImporteTotal)
       end ;

   If CompareText(VarName, 'IMPORTE') = 0 then
       begin
         ImporteTotal := (zqEgresos.FieldValues['dImporteTotal'] * -1) ;
         Value        := ImporteTotal ;
       end ;


   If CompareText(VarName, 'FECHA') = 0 then
       Value := DateToStr(tdFecha.Date) ;

   If CompareText(VarName, 'SALDO_ANTERIOR') = 0 then
   Begin
       zCommand.Active := False ;
       zCommand.SQL.Clear ;
       zCommand.SQL.Add('select sum(dImporteTotal) as dSaldoAnterior from con_tesoreriaegresos Where sIdNumeroCuenta = :Cuenta And dIdFecha < :Fecha Group By sIdNumeroCuenta') ;
       zCommand.Params.ParamByName('Cuenta').DataType := ftString ;
       zCommand.Params.ParamByName('Cuenta').Value := zqEstadodeCuenta.FieldValues['sIdNumeroCuenta'] ;
       zCommand.Params.ParamByName('fecha').DataType := ftDate ;
       zCommand.Params.ParamByName('fecha').Value := tdFecha.Date ;
       zCommand.Open ;
       if zCommand.RecordCount > 0 then
            Value := zCommand.FieldValues['dSaldoAnterior']
       ELSE
           value  := 0 ;
   End;

   If CompareText(VarName, 'SaldoActual') = 0 then
   begin
     with connection.QryBusca do
     begin
       Active := False;
       SQL.Clear;
       SQL.Add('select ' +
                'sum(te.dImporteTotal+te.dIva) as total ' +
                'from con_tesoreriaegresos te ' +
                'inner join con_cuentasbancarias c ' +
                'on (te.sIdNumeroCuenta = c.sIdNumeroCuenta) ' +
                'where ' +
                'te.dIdFecha = :Fecha ' +
                'And c.sIdCompaniaconf = :Contrato ' +
                'And te.sIdNumeroCuenta = :Cuenta ' +
                'order by te.sIdNumeroCuenta, te.iIdFolio');
       Params.ParamByName('Fecha').AsDate := tdFecha.Date;
       Params.ParamByName('Contrato').AsString := global_contrato;
       Params.ParamByName('Cuenta').AsString := zqEstadodeCuenta.FieldByName('sIdNumeroCuenta').AsString;
       Open;

       Value := FieldByName('total').AsFloat;
     end;
   end;
end;

procedure Tfrm_Egresos.tdbiIdFolioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      tdbsIdArea.SetFocus
end;

procedure Tfrm_Egresos.tdbsIdAreaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
      tdbsReferencia.SetFocus
end;

procedure Tfrm_Egresos.tdbsReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      DBEdit1.SetFocus
end;

procedure Tfrm_Egresos.tdFechaCloseUp(Sender: TObject);
begin
    btnBusca.Enabled := False ;

    AvOfCkFormatos.Checked[0]:=false;
    AvOfCkFormatos.Checked[1]:=false;
    AvOfCkFormatos.Checked[2]:=false;

    zQEgresos.Active := False ;
    zQEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQEgresos.Params.ParamByName('fecha').Value := tdFecha.Date ;
    zQEgresos.Open ;
    if zQEgresos.RecordCount = 0 then
        btnReferencia.Enabled := False
    else
    begin
        btnReferencia.Enabled := True ;
    end;
end;

procedure Tfrm_Egresos.tdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
       tdbsIdArea.SetFocus
       //frmBarra1.btnAdd.SetFocus
end;

procedure Tfrm_Egresos.tdImporteTotalEnter(Sender: TObject);
begin
  tdImporteTotal.Text := FloatToStr((StrToFloat(edtSubtotal.Text) + zQEgresos.FieldByName('dIva').AsFloat)-(zQEgresos.FieldByName('dIvaRet').AsFloat+zQEgresos.FieldByName('dIsrRet').AsFloat));
end;

procedure Tfrm_Egresos.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
      if Key = #13 then
        DBEdit6.SetFocus
end;

procedure Tfrm_Egresos.tsIdCuentaBancariaKeyPress(Sender: TObject;
  var Key: Char);
begin
      if Key = #13 then
         DBEdit2.SetFocus
end;

procedure Tfrm_Egresos.tsidOrdendeTrabajoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
        tsRazonSocial.SetFocus
end;

procedure Tfrm_Egresos.tsRazonSocialKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        tsCiudad.SetFocus
end;

procedure Tfrm_Egresos.zQCuentasBancariasAfterScroll(DataSet: TDataSet);
begin
    if (zQEgresos.State = dsEdit) Or (zQEgresos.State = dsInsert) then
        zQEgresos.FieldValues['sReferencia'] := 'CHEQUE No. ' + zQCuentasBancarias.FieldByName('sFolioCheque').AsString
end;

procedure Tfrm_Egresos.zQEgresosAfterInsert(DataSet: TDataSet);
begin
    zQEgresos.FieldValues['dIdFecha']         := tdFecha.Date ;
    zQEgresos.FieldValues['iIdFolio']         := iFolio ;
    zQEgresos.FieldValues['sReferencia']      := '*' ;
    zQEgresos.FieldValues['sTipoMovimiento']  := 'CHEQUE' ;
    zQEgresos.FieldValues['sIdProveedor']     := Connection.ConfiguracionCont.fieldvalues['sTesoreria'] ;
    zQEgresos.FieldValues['sIdArea']          := Connection.ConfiguracionCont.fieldvalues['sTesoreria'] ;
    //zQEgresos.FieldValues['dImporteTotal']    := 0 ;
    zQEgresos.FieldValues['lComprobado']      := 'No' ;
    zQEgresos.FieldValues['sRFC']             := 'S/RFC' ;
    zQEgresos.FieldValues['mDescripcion']     := '*' ;
    zQEgresos.FieldValues['sIdCompania']      := '*'
end;


procedure Tfrm_Egresos.zQEgresosAfterScroll(DataSet: TDataSet);
var
  QRFiles:TzREadOnlyQuery;
begin
  if descartarAfterScroll = False then
  begin
    try
      tdImporteTotal.Text := FloatToStr((StrToFloat(edtSubtotal.Text) + zQEgresos.FieldByName('dIva').AsFloat)-(zQEgresos.FieldByName('dIvaRet').AsFloat+zQEgresos.FieldByName('dIsrRet').AsFloat));
    except
    end;
    AvOfCkFormatos.Checked[0]:=false;
    AvOfCkFormatos.Checked[1]:=false;
    AvOfCkFormatos.Checked[2]:=false;

      if zQEgresos.FieldValues['sStatus'] = 'Cancelado' then
          tdbiIdFolio.Color := clRed
      Else
          tdbiIdFolio.Color := clWindow;

    if zQEgresos.RecordCount > 0 then
    begin
      QRFiles:=TzREadOnlyQuery.create(nil);
      try
        QRFiles.Connection:=connection.zConnection;
        QRFiles.SQL.text:='select sTipoFile from con_files where ' +
                          'iIdFolio=:Folio and sTipoMovimiento=:Movimiento';
        QrFiles.ParamByName('Folio').AsInteger:=zQEgresos.fieldByname('iIdFolio').AsInteger;
        QrFiles.ParamByName('Movimiento').AsString:=zQEgresos.fieldByname('sTipoMovimiento').AsString;
        QrFiles.Open;

        while not QrFiles.Eof do
        begin
          if QrFiles.FieldByName('sTipoFile').AsString='PDF' then
            AvOfCkFormatos.Checked[0]:=true;

          if QrFiles.FieldByName('sTipoFile').AsString='JPEG' then
            AvOfCkFormatos.Checked[1]:=true;

          if QrFiles.FieldByName('sTipoFile').AsString='XML' then
            AvOfCkFormatos.Checked[2]:=true;
          //PDF,JPEG,XML


          QrFiles.Next;
        end;
      finally
        QRFiles.destroy;
      end;
    end;
  end;

end;

procedure Tfrm_Egresos.zQEgresossIdProveedorChange(Sender: TField);
begin
  if zQEgresossIdProveedor.Text = Connection.ConfiguracionCont.fieldvalues['sTesoreria'] Then
      zQEgresos.FieldValues['sIdArea'] := Connection.ConfiguracionCont.fieldvalues['sTesoreria'] ;

  zQProveedores.Active := False ;
  zQProveedores.Params.ParamByName('Proveedor').DataType := ftString ;
  zQProveedores.Params.ParamByName('Proveedor').Value    := zQEgresossIdProveedor.Text ;
  zQProveedores.Open ;
  if zQProveedores.RecordCount > 0 then
  begin
      zQEgresos.FieldValues['sRFC']            := zQProveedores.FieldValues['sRFC'];
      zQEgresos.FieldValues['sRazonSocial']    := zQProveedores.FieldValues['sRazonSocial'] ;
      zQEgresos.FieldValues['sDomicilio']      := zQProveedores.FieldValues['sDomicilio'];
      zQEgresos.FieldValues['sCiudad']         := zQProveedores.FieldValues['sCiudad'] ;
      zQEgresos.FieldValues['sCP']             := zQProveedores.FieldValues['sCP'] ;
      zQEgresos.FieldValues['sEstado']         := zQProveedores.FieldValues['sEstado'] ;
      zQEgresos.FieldValues['sTelefono']       := zQProveedores.FieldValues['sTelefono'] ;

      zq_provbanco.Active:=False;
      zq_provbanco.ParamByName('Prov').AsString:=zQProveedores.FieldByName('sIdProveedor').AsString;
      zq_provbanco.Open;
  end
  else
  begin
    //MessageDlg('No Existe ese Proveedor', mtInformation, [mbOk], 0 ) ;
    zQEmpleados.Connection := connection.zConnection;
     zQEmpleados.Active := False ;

     zQEmpleados.Params.ParamByName('Empleado').DataType := ftString ;
     zQEmpleados.Params.ParamByName('Empleado').Value    := zQEgresossIdProveedor.Text ;
     zQEmpleados.Open ;
     if zQEmpleados.RecordCount > 0 then
      begin
         zQEgresos.FieldValues['sRFC']          := zQEmpleados.FieldValues['sRFC'];
         zQEgresos.FieldValues['sRazonSocial']  := zQEmpleados.FieldByName('nombre').AsString;
         //zQEgresos.FieldValues['sDomicilio']    := zQEmpleados.FieldValues['sDomicilio'];
         zQEgresos.FieldValues['sCiudad']       := zQEmpleados.FieldValues['sCiudad'] ;
         zQEgresos.FieldValues['sCP']           := '*' ;
         zQEgresos.FieldValues['sEstado']       := '*' ;
         zQEgresos.FieldValues['sTelefono']     := zQEmpleados.FieldValues['sTelefono'] ;
      end;
  end
//  else
//  begin
//      zQEgresos.FieldValues['sRFC']         := ' ' ;
//      zQEgresos.FieldValues['sRazonSocial'] := ' ' ;
//      zQEgresos.FieldValues['sDomicilio']   := ' ' ;
//      zQEgresos.FieldValues['sCiudad']      := ' ' ;
//      zQEgresos.FieldValues['sCP']          := ' ' ;
//      zQEgresos.FieldValues['sEstado']      := ' ' ;
//      zQEgresos.FieldValues['sTelefono']    := ' ' ;
//  end

end;

procedure Tfrm_Egresos.EnviarMensaje(Mensaje, Ip: String);
begin
  with WSocketMensaje do
  begin
    close;
    Addr := Ip;
    Port := '83';
    Proto := 'udp';
    Connect;
    SendStr(Mensaje);
  end;
  WSocketMensaje.close;
end;

procedure Tfrm_Egresos.Tablero;
var
  Qry: TZReadOnlyQuery;
begin
  Qry := TZReadOnlyQuery.Create(Self);
  Qry.Connection := Connection.zConnection;
  Qry.Active := False ;
  Qry.SQL.Clear ;
  Qry.SQL.Add('select direccionip from nuc_conexiones');
  Qry.Open;

  while not Qry.Eof do
  begin
    EnviarMensaje(zQEgresos.FieldByName('iIdFolio').AsString,Qry.FieldByName('direccionip').AsString);
    Qry.Next;
  end;
end;

end.
