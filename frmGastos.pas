unit frmGastos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  StdCtrls, NxEdit, NxStdCtrls, frm_barra, NxPageControl, Mask, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RxLookup, Grids, DBGrids,
  NxDBColumns, NxColumns, strUtils, ComCtrls, Buttons, FramedPanel, RXDBCtrl,
  Newpanel, DateUtils, global, utilerias, frxClass, frxDBSet,  ExtCtrls,
  Menus, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  UFunctionsGHH, AdvGroupBox, AdvOfficeButtons,Forms, cxControls, cxNavigator,
  cxDBNavigator, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, NxCollection,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, AdvGlowButton, cxRadioGroup, W7Classes,
  W7Panels, func_genericas, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, UnitValidaTexto,
  OverbyteIcsWndControl, OverbyteIcsWSocket;

type
  Tfrm_Gastos = class(TForm)
   Label1: TLabel;
    frmBarra1: TfrmBarra;
    dszQEgresos: TDataSource;
    zQEgresos: TZQuery;
    tdFecha: TDateTimePicker;
    zQEgresosdIdFecha: TDateField;
    zQEgresosiIdFolio: TIntegerField;
    zQEgresossReferencia: TStringField;
    zQAreas: TZReadOnlyQuery;
    dszQAreas: TDataSource;
    zQEgresossIdArea: TStringField;
    zQEgresosdImporteTotal: TFloatField;
    dszQCuentasBancarias: TDataSource;
    zQEgresossIdNumeroCuenta: TStringField;
    zQCuentasBancarias: TZQuery;
    zQCuentasBancariassIdNumeroCuenta: TStringField;
    zQCuentasBancariassNombreCuenta: TStringField;
    zQCuentasBancariassFirmanCuenta: TStringField;
    zQEgresossTipoMovimiento: TStringField;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
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
    zQEgresossIdProveedor: TStringField;
    zQEgresossRFC: TStringField;
    zQEgresossRazonSocial: TStringField;
    zQEgresossDomicilio: TStringField;
    zQEgresossCiudad: TStringField;
    zQEgresossCP: TStringField;
    zQEgresossEstado: TStringField;
    zQEgresossTelefono: TStringField;
    zQEgresoslComprobado: TStringField;
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
    zQEgresossStatus: TStringField;
    zQEgresosmDescripcion: TMemoField;
    Label3: TLabel;
    Label16: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    dszQOrdenesdeTrabajo: TDataSource;
    zQOrdenesdeTrabajo: TZReadOnlyQuery;
    zQEgresossNumeroOrden: TStringField;
    zqEstadodeCuentasNumeroOrden: TStringField;
    zqEstadodeCuentamDescripcion: TMemoField;
    mnuExtra: TPopupMenu;
    Recibo1: TMenuItem;
    qryBueno: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    qryBuenomDescripcion: TMemoField;
    qryBuenodIdFecha: TDateField;
    qryBuenoiIdFolio: TIntegerField;
    qryBuenosIdEgreso: TStringField;
    qryBuenosTipoEgreso: TStringField;
    qryBuenosIdProveedor: TStringField;
    qryBuenosRazonSocial: TStringField;
    qryBuenosIdFactura: TStringField;
    qryBuenomDescripcion_1: TMemoField;
    qryBuenodImporte: TFloatField;
    qryBuenosRfc: TStringField;
    ReciboPorProveedores1: TMenuItem;
    qryBuenosIdNumeroCuenta: TStringField;
    dbIVa: TDBEdit;
    zQEgresosdIva: TFloatField;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    zQEmpleados: TZQuery;
    StringField2: TStringField;
    StringField5: TStringField;
    StringField8: TStringField;
    zQEmpleadossIdEmpleado: TStringField;
    zQEmpleadossNombreCompleto: TStringField;
    zQEgresossPoliza: TStringField;
    QFile: TZQuery;
    AvOfCkFormatos: TAdvOfficeCheckGroup;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    fltfldEstadodeCuentadIva: TFloatField;
    zqEstadodeCuentaiFolio: TIntegerField;
    zqEstadodeCuentaiIdStatus: TIntegerField;
    fltfldEstadodeCuentasaldo1: TFloatField;
    fltfldEstadodeCuentatotal1: TFloatField;
    frxEstadosCuentas: TfrxDBDataset;
    dsConfiguracion: TDataSource;
    strngfldEstadodeCuentasNombreCuenta: TStringField;
    zQEgresosiEjercicio: TIntegerField;
    lbl1: TLabel;
    dbPoliza: TDBEdit;
    btn1: TSpeedButton;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    tssRFC: TDBEdit;
    tssRazonSocial: TDBEdit;
    tssDomicilio: TDBEdit;
    tssCiudad: TDBEdit;
    tssCP: TDBEdit;
    tssEstado: TDBEdit;
    tssTelefono: TDBEdit;
    cxDBNavigator1: TcxDBNavigator;
    tmDescripcion: TDBMemo;
    NxHeaderPanel1: TNxHeaderPanel;
    cxGrid1: TcxGrid;
    gridEgresos: TcxGridDBTableView;
    gridEgresosiIdFolio1: TcxGridDBColumn;
    gridEgresossIdNumeroCuenta1: TcxGridDBColumn;
    gridEgresossReferencia1: TcxGridDBColumn;
    gridEgresosdImporteTotal1: TcxGridDBColumn;
    gridEgresossIdArea1: TcxGridDBColumn;
    gridEgresossIdProveedor1: TcxGridDBColumn;
    gridEgresossRFC1: TcxGridDBColumn;
    gridEgresossRazonSocial1: TcxGridDBColumn;
    gridEgresossDomicilio1: TcxGridDBColumn;
    gridEgresossCiudad1: TcxGridDBColumn;
    gridEgresossCP1: TcxGridDBColumn;
    gridEgresossEstado1: TcxGridDBColumn;
    gridEgresossTelefono1: TcxGridDBColumn;
    gridEgresosmDescripcion1: TcxGridDBColumn;
    gridEgresossNumeroOrden1: TcxGridDBColumn;
    gridEgresosdIva1: TcxGridDBColumn;
    gridEgresossPoliza1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btnSalirDistribuir: TAdvGlowButton;
    btnReferencia: TAdvGlowButton;
    pnlBusqueda: TPanel;
    headerpanelbusqueda: TNxHeaderPanel;
    chkBuscarEmpleado: TcxRadioButton;
    chkBuscarProveedor: TcxRadioButton;
    W7Panel1: TW7Panel;
    btnAceptarbusqueda: TAdvGlowButton;
    btnCancelarBusqueda: TAdvGlowButton;
    btnCatalogoBanco: TButton;
    btnCatalogoProyectos: TButton;
    strngfldQCuentasBancariassFolioCheque: TStringField;
    strngfldQCuentasBancariassFolioSinCheque: TStringField;
    btnCatalogoAreas: TButton;
    strngfldQEmpleadossDomicilio: TStringField;
    zQEmpleadosnombre: TStringField;
    lbl4: TLabel;
    lblIva: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    cbbMostrarSubtotal: TComboBox;
    strngfldEstadodeCuentasStatus: TStringField;
    edtSubtotal: TDBEdit;
    tdImporteTotal: TEdit;
    Label18: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    zq_provbanco: TZQuery;
    ds_provbanco: TDataSource;
    zQEgresossBancoProv: TStringField;
    Label21: TLabel;
    cbIvaRet: TDBComboBox;
    Label20: TLabel;
    dbIvaRet: TDBEdit;
    dbIsrRet: TDBEdit;
    Label22: TLabel;
    zQEgresosiIvaPorRet: TIntegerField;
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
    procedure zQCuentasBancariasAfterScroll(DataSet: TDataSet);
    procedure zQEgresossIdProveedorChange(Sender: TField);
    procedure btnReferenciaClick(Sender: TObject);
    procedure tdFechaChange(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure rptReporteGetValue(const VarName: string; var Value: Variant);
    procedure zQEgresosAfterScroll(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure lblRegistroDblClick(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure ReciboPorProveedores1Click(Sender: TObject);
    procedure tdbsIdAreaKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdCuentaBancariaKeyPress(Sender: TObject; var Key: Char);
    procedure tdbsReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tdImporteTotalKeyPress(Sender: TObject; var Key: Char);
    procedure dbIVaKeyPress(Sender: TObject; var Key: Char);
    procedure dbPolizaKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAceptarbusquedaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnCatalogoBancoClick(Sender: TObject);
    procedure btnCatalogoProyectosClick(Sender: TObject);
    procedure btnCatalogoAreasClick(Sender: TObject);
    procedure edtSubtotalKeyPress(Sender: TObject; var Key: Char);
    procedure cbbMostrarSubtotalChange(Sender: TObject);
    procedure tdImporteTotalEnter(Sender: TObject);
    procedure dbIVaEnter(Sender: TObject);
    procedure tdbiIdFolioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure dbIsrRetKeyPress(Sender: TObject; var Key: Char);
    procedure tssRazonSocialKeyPress(Sender: TObject; var Key: Char);
    procedure tssCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure tssCPKeyPress(Sender: TObject; var Key: Char);
    procedure tssRFCKeyPress(Sender: TObject; var Key: Char);
    procedure tssDomicilioKeyPress(Sender: TObject; var Key: Char);
    procedure tssEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure tssTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure EnviarMensaje (Mensaje, Ip: String);
    procedure Tablero;
  private
    { Private declarations }
    ListaFiles:TstringList;
  public
    { Public declarations }
    var
      abierto : Boolean;
      descartarAfterScroll : Boolean;
  end;

var
  frm_Gastos: Tfrm_Gastos;
  iFolio : Integer ;
  ImporteTotal : Double ;
implementation

uses  frmReferenciarCheque, frmReferenciarChequeiva, frmBuscarProveedor, frmBuscarEmpleado,
  frm_connection, UFrmVisorPdf, Frm_VisorXml, frmCatalogodeCuentas, frm_ordenes,
  frmCatalogoDeCargoA;

{$R *.dfm}


procedure Tfrm_Gastos.btn1Click(Sender: TObject);
begin
  if (zqEgresos.State in [dsInsert]) or (zqEgresos.State in [dsEdit]) then
  begin
    pnlBusqueda.Visible := True;
    func_genericas.Crear_Form(pnlBusqueda,frm_Gastos,'',162, 464, 145, 250, []);

  end;
end;

procedure Tfrm_Gastos.btnCancelarClick(Sender: TObject);
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

procedure Tfrm_Gastos.btnCatalogoAreasClick(Sender: TObject);
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

procedure Tfrm_Gastos.btnCatalogoBancoClick(Sender: TObject);
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

procedure Tfrm_Gastos.btnCatalogoProyectosClick(Sender: TObject);
begin
  //Mostrar el catalogo de Proyectos
  Application.CreateForm(TfrmOrdenes, frmOrdenes);

  frmOrdenes.FormStyle := fsMDIForm;
  frmOrdenes.Width := 800;
  frmOrdenes.Height := 600;
  frmOrdenes.Position := poDesktopCenter;
  frmOrdenes.Visible := False;

  frmOrdenes.ShowModal;
  (*frmOrdenes.FormStyle := fsNormal;
  frmOrdenes.Visible := False;
  frmOrdenes.ShowModal; *)
end;

procedure Tfrm_Gastos.btnReferenciaClick(Sender: TObject);
begin
      if zQEgresos.RecordCount > 0 then begin
        Global_Poliza    := zQEgresos.FieldValues['sPoliza'] ;
        Global_Cheque    := zQEgresos.FieldValues['sReferencia'] ;
        dParamFecha      := zQEgresos.FieldValues['dIdFecha'] ;
        iParamFolio      := zQEgresos.FieldValues['iIdFolio'] ;
        sParamStatusFolio     := zQEgresos.FieldByName('lComprobado').AsString;
        sParamProveedor  := zQEgresos.FieldValues['sIdProveedor'] ;
        dParamMonto      := zQEgresos.FieldValues['dImporteTotal'] * -1;
        sParamComprobado := zQEgresos.FieldValues['lComprobado'];



        If Connection.ConfiguracionCont.FieldValues['eIva'] = 'Normal' Then begin
             Application.CreateForm(Tfrm_ReferenciarCheque, frm_ReferenciarCheque);
             frm_ReferenciarCheque.GridConceptos.ReadOnly := False ;
             frm_ReferenciarCheque.Show;
        end else begin
             dParamMonto:=(dParamMonto+(zQEgresos.FieldValues['dIva']*-1))-((zQEgresos.FieldValues['dIvaRet']*-1)+(zQEgresos.FieldValues['dIsrRet']*-1));
             Application.CreateForm(Tfrm_ReferenciarChequeiva, frm_ReferenciarChequeiva);
             frm_ReferenciarChequeiva.GridConceptos.ReadOnly := False ;
             frm_ReferenciarChequeiva.Show;
        end;


    end;
end;

procedure Tfrm_Gastos.cbbMostrarSubtotalChange(Sender: TObject);
begin
  //Si el item seleccionado es Si, entonces mostrar el campo Subtotal
  if cbbMostrarSubtotal.ItemIndex = 0 then
  begin
    lbl4.Caption:='SubTotal:';
    Label12.Visible := True;
    tdImporteTotal.Visible := True;
    tdImporteTotal.Enabled := False;

    lblIva.Visible := True;
    dbIVa.Visible := True;
    dbIVa.Text:='0';
  end
  else if cbbMostrarSubtotal.ItemIndex = 1 then
  begin
    lbl4.Caption:='Total:';
    Label12.Visible := False;
    tdImporteTotal.Visible := False;
    tdImporteTotal.Enabled := False;

    lblIva.Visible := False;
    dbIVa.Visible := False;
    dbIVa.Text:='0';
  end;
end;

procedure Tfrm_Gastos.cxButton1Click(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
  StreamPDF : TMemoryStream;

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

      FrmVisorPdf.TipoFile:=smPdf;

      if FrmVisorPdf.showmodal=mrOk then
      begin
        if zQEgresos.State in [DsInsert,DsEdit]  then
        begin
          begin
          //  StreamPDF := TFileStream.Create(FrmVisorPdf.PDFStream, fmOpenRead);
            StreamPDF:=TMemoryStream.Create;
            StreamPDF.position:=0;
            StreamPDF.CopyFrom(FrmVisorPdf.PDFStream,FrmVisorPdf.PDFStream.Size);

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

procedure Tfrm_Gastos.cxButton2Click(Sender: TObject);
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

procedure Tfrm_Gastos.cxButton3Click(Sender: TObject);
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

procedure Tfrm_Gastos.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       tsIdCuentaBancaria.SetFocus ;
end;

procedure Tfrm_Gastos.dbIsrRetKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
       tsIdCuentaBancaria.SetFocus ;
end;

procedure Tfrm_Gastos.dbIVaEnter(Sender: TObject);
begin
  if edtSubtotal.Text <> '' then
  begin
    if (zQEgresos.State=dsInsert) or (zQEgresos.State=dsEdit) then
      zQEgresos.FieldByName('dIva').AsFloat := StrToFloat(edtSubtotal.Text ) * global_Iva;    
  end;
end;

procedure Tfrm_Gastos.dbIVaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      dbPoliza.SetFocus ;
end;

procedure Tfrm_Gastos.DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
          dbPoliza.SetFocus ;
end;

procedure Tfrm_Gastos.dbPolizaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      tdbiIdFolio.SetFocus ;
end;

procedure Tfrm_Gastos.edtSubtotalKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
      tsIdCuentaBancaria.SetFocus;
   if not(Key in ['0'..'9','.',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure Tfrm_Gastos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ListaFiles.Clear;
  ListaFiles.destroy;
  Action := caFree;
  abierto := False;
end;

procedure Tfrm_Gastos.FormCreate(Sender: TObject);
begin
  ListaFiles:=TstringList.Create;
end;

procedure Tfrm_Gastos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //if Key = #13 then                        { si es la tecla <enter> }
  //  if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
  //  begin
  //    Key := #0;                           { nos comemos la tecla }
  //    Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
  //  end
  //  else
  //       if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
  //          with TDBGrid(ActiveControl) do
  //             if selectedindex < (fieldcount -1) then
  //                 selectedindex := selectedindex +1
  //             else
   //                selectedindex := 0;
end;

procedure Tfrm_Gastos.FormShow(Sender: TObject);
begin
    descartarAfterScroll := True; //Con este descartamos los afterscroll que solo esten haciendo mas uso de memoria innecesaria


    abierto := True;
    edtSubtotal.Enabled := False;
    Connection.ConfiguracionCont.Refresh ;

    zQCuentasBancarias.Active := False ;
    zQCuentasBancarias.Params.ParamByName('Compania').DataType := ftString ;
    zQCuentasBancarias.Params.ParamByName('Compania').Value    := Global_Contrato ;
    zQCuentasBancarias.Open ;

    tdFecha.Date := Date ;
    zQEgresos.Active := False ;
    zQEgresos.ParamByName('contrato').AsString := global_contrato;
    zQEgresos.Params.ParamByName('fecha').DataType := ftDate ;
    zQEgresos.Params.ParamByName('fecha').Value := tdFecha.Date ;
    zQEgresos.Open;
    if zQEgresos.RecordCount = 0 then
        btnReferencia.Enabled := False
    else
        btnReferencia.Enabled := True ;
    if zQEgresos.RecordCount > 0 then

    zQAreas.Active := False ;
    zQAreas.Open ;

    zqOrdenesdeTrabajo.Active := False ;
    zQOrdenesdeTrabajo.ParamByName('contrato').AsString := global_contrato;
    zqOrdenesdeTrabajo.Open ;

    tdFecha.SetFocus;

    //Deshabilitar botones de acceso a catalogos
    btnCatalogoAreas.Enabled := False;
    btnCatalogoBanco.Enabled := False;
    btnCatalogoProyectos.Enabled := False;

    descartarAfterScroll := False;
end;

procedure Tfrm_Gastos.frmBarra1btnAddClick(Sender: TObject);
begin
  edtSubtotal.Enabled := True;

  ListaFiles.Clear;
  frmBarra1.btnAddClick(Sender);
  zCommand.Active := False ;
  zCommand.SQL.clear ;
  zCommand.Sql.Add('select max(iIdFolio) as iIdFolio from con_tesoreriaegresos') ;
  zCommand.Open ;
  if NOT zCommand.FieldByName('iIdFolio').IsNull then
      iFolio := zCommand.FieldValues ['iIdFolio'] + 1
  Else
      iFolio := 1 ;
  tdbiIdFolio.ReadOnly := False ;
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

procedure Tfrm_Gastos.frmBarra1btnCancelClick(Sender: TObject);
begin
  edtSubtotal.Enabled := False;

  zQEgresos.Cancel ;
  frmBarra1.btnCancelClick(Sender);

  //Deshabilitar botones de acceso a catalogos
  btnCatalogoAreas.Enabled := False;
  btnCatalogoBanco.Enabled := False;
  btnCatalogoProyectos.Enabled := False;
end;

procedure Tfrm_Gastos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if zQEgresos.RecordCount > 0 then
  begin

   If zQEgresos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try

         connection.QryBusca.Active := False;
         connection.QryBusca.SQL.Clear;
         connection.QryBusca.SQL.Add('Select * from con_tesoreriapegresos where dIdFecha = :Fecha and iIdFolio = :Folio');
         connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
         connection.QryBusca.Params.ParamByName('Fecha').Value := tdFecha.Date;
         connection.QryBusca.Params.ParamByName('folio').DataType := ftString ;
         connection.QryBusca.Params.ParamByName('folio').Value := zQEgresos.FieldValues['iIdFolio'];
         connection.QryBusca.Open;
         If connection.QryBusca.RecordCount > 0 Then
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

               zCommand.Active := False;
               zCommand.SQL.Clear;
               zCommand.SQL.Add('Delete from con_tesoreriaegresos where dIdFecha = :Fecha and iIdFolio = :Folio');
               zCommand.Params.ParamByName('Fecha').DataType := ftDate;
               zCommand.Params.ParamByName('Fecha').Value := tdFecha.Date;
               zCommand.Params.ParamByName('folio').DataType := ftString ;
               zCommand.Params.ParamByName('folio').Value := zQEgresos.FieldValues['iIdFolio'];
               zCommand.ExecSQL;
               
               zQEgresos.Active := False ;
               zQEgresos.Params.ParamByName('fecha').DataType := ftDate ;
               zQEgresos.Params.ParamByName('fecha').Value := tdFecha.Date ;
               zQEgresos.Open ;
            end;


       except
         MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end ;
  end;

end;

procedure Tfrm_Gastos.frmBarra1btnEditClick(Sender: TObject);
begin
   ListaFiles.Clear;
  if zQEgresos.RecordCount > 0 then
  begin
      edtSubtotal.Enabled := True;

      frmBarra1.btnEditClick(Sender);
      tdbiIdFolio.ReadOnly := False ;
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

procedure Tfrm_Gastos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure Tfrm_Gastos.frmBarra1btnPostClick(Sender: TObject);
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
  nombres.Add('Beneficiario o Proveedor');
  nombres.Add('SubTotal');
  nombres.Add('Iva'); nombres.Add('Ret. Iva'); nombres.Add('10% Isr');
  nombres.Add('Cta. Banco');
  nombres.Add('Proyecto');

  cadenas.Add(tdbsIdArea.Text);
  cadenas.Add(tdbsReferencia.Text);
  cadenas.Add(DBEdit9.Text);
  cadenas.Add(edtSubtotal.Text);
  cadenas.Add(dbIVa.Text);cadenas.Add(dbIvaRet.Text);cadenas.Add(dbIsrRet.Text);
  cadenas.Add(tsIdCuentaBancaria.Text);
  cadenas.Add(tsNumeroOrden.Text);

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
            'where sIdNumeroCuenta = :sIdNumeroCuenta ' +
            'and sReferencia = "SALDO INICIAL" ' +
            'or sReferencia = "Transferencia Electronica"'); //Saldo inicial
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

  //***********************************************************************************************************************************************************



  if zQEgresos.FieldValues['dImporteTotal'] > 0 then
  begin
       zQEgresos.FieldValues['dImporteTotal'] := zQEgresos.FieldValues['dImporteTotal'] * -1 ;
       zQEgresos.FieldValues['dIvaRet'] := zQEgresos.FieldValues['dIvaRet'] * -1 ;
       zQEgresos.FieldValues['dIsrRet'] := zQEgresos.FieldValues['dIsrRet'] * -1 ;
       zQEgresos.FieldValues['dIva'] := zQEgresos.FieldValues['dIva'] * -1 ;
       if cbbMostrarSubtotal.ItemIndex = 1 then
        zQEgresos.FieldValues['dIva'] := 0;
  end;
  zqEgresos.FieldByName('iEjercicio').AsInteger:= connection.configuracionCont.FieldByName('iEjercicio').AsInteger;
  //zqEgresos.FieldByName('sDomicilio').AsString:= '*';
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
      zQCuentasBancarias.fieldvalues['sFolioSinCheque'] := zQCuentasBancarias.fieldvalues['sFolioSinCheque'] + 1 ;
      zQCuentasBancarias.Post ;
  End ;

  zQEgresos.Refresh ;
  btnReferencia.Enabled := True ;
  OpcButton := 'Edit' ;
  frmBarra1.btnPostClick(Sender);
  edtSubtotal.Enabled := False;
  Tablero;
  //Deshabilitar botones de acceso a catalogos
  btnCatalogoAreas.Enabled := False;
  btnCatalogoBanco.Enabled := False;
  btnCatalogoProyectos.Enabled := False;
end;

procedure Tfrm_Gastos.frmBarra1btnPrinterClick(Sender: TObject);
begin
      if not FileExists(global_files + global_miReporte + '_CADfrEstadodeCuenta.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrEstadodeCuenta.fr3 no existe, notifique al administrador del sistema');
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
    rptReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrEstadodeCuenta.fr3') ;
    rptReporte.ShowReport()
end;

procedure Tfrm_Gastos.frmBarra1btnRefreshClick(Sender: TObject);
begin
    Connection.ConfiguracionCont.Refresh ;
    zQEgresos.Refresh ;
    zQCuentasBancarias.Refresh ;
end;

procedure Tfrm_Gastos.GridRecibosDblClick(Sender: TObject);
begin
    tdbsReferencia.setfocus
end;

procedure Tfrm_Gastos.GridRecibosKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       tdbsReferencia.SetFocus
end;

procedure Tfrm_Gastos.lblRegistroDblClick(Sender: TObject);
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
           myForm.Caption := 'Seleccione folio de gasto a consultar' ;
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

procedure Tfrm_Gastos.Recibo1Click(Sender: TObject);
begin
       if not FileExists(global_files + global_miReporte + '_CADfrBueno.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrBueno.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

    qryBueno.Active := False ;
    qryBueno.SQL.Clear ;
    qryBueno.SQL.Add('select t.sIdNumeroCuenta, t.mDescripcion,tp.*, e.sRfc from con_tesoreriaegresos t ' +
                     'inner join con_tesoreriapegresos tp On (t.iIdFolio=tp.iIdFolio) ' +
                     'inner join empleados e On (tp.sIdProveedor=e.sIdEmpleado) ' +
                     'Where t.iidFolio =:Folio') ;
    qryBueno.Params.ParamByName('folio').DataType  := ftInteger ;
    qryBueno.Params.ParamByName('folio').Value     := tdbiIdFolio.Text ;
    qryBueno.Open ;
    rptReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrBueno.fr3') ;
    rptReporte.ShowReport()


end;

procedure Tfrm_Gastos.ReciboPorProveedores1Click(Sender: TObject);
begin
      if not FileExists(global_files + global_miReporte + '_CADfrBueno.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrBueno.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

    qryBueno.Active := False ;
    qryBueno.SQL.Clear ;
    qryBueno.SQL.Add('select t.sIdNumeroCuenta, t.mDescripcion,tp.*, p.sRfc, p.sDomicilio from con_tesoreriaegresos t ' +
                     'inner join con_tesoreriapegresos tp On (t.iIdFolio=tp.iIdFolio) ' +
                     'inner join proveedores p On (tp.sIdProveedor=p.sIdProveedor) ' +
                     'Where t.iidFolio =:Folio ') ;
    qryBueno.Params.ParamByName('folio').DataType  := ftInteger ;
    qryBueno.Params.ParamByName('folio').Value     := tdbiIdFolio.Text ;
    qryBueno.Open ;
    rptReporte.LoadFromFile(global_files+ global_miReporte + '_CADfrBueno.fr3') ;
    rptReporte.ShowReport()
end;

procedure Tfrm_Gastos.rptReporteGetValue(const VarName: string;
  var Value: Variant);
begin
   If CompareText(VarName, 'FECHA') = 0 then
       Value := DateToStr(tdFecha.Date) ;

   If CompareText(VarName, 'SALDO_ANTERIOR') = 0 then
   Begin
       zCommand.Active := False ;
       zCommand.SQL.Clear ;
       zCommand.SQL.Add('select sum(dImporteTotal) as dSaldoAnterior from con_tesoreriaegresos Where sIdNumeroCuenta = :Cuenta And dIdFecha < :Fecha Group By sIdNumeroCuenta') ;
       zCommand.Params.ParamByName('Cuenta').DataType := ftString ;
       zCommand.Params.ParamByName('Cuenta').Value := zqEstadodeCuenta.FieldValues['sIdNumeroCuenta'];
       zCommand.Params.ParamByName('fecha').DataType := ftDate ;
       zCommand.Params.ParamByName('fecha').Value := tdFecha.Date ;
       zCommand.Open ;
       if zCommand.RecordCount > 0 then
            Value := zCommand.FieldValues['dSaldoAnterior']
   End;

   If CompareText(VarName, 'CANTIDAD') = 0 then
   begin
     ImporteTotal := qryBueno.FieldValues['dImporte'] ;
     Value        := xNumerosToLletres(ImporteTotal)
   end;

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




procedure Tfrm_Gastos.btnAceptarbusquedaClick(Sender: TObject);
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
    zQEgresos.FieldByName('sDomicilio').AsString := sParamDomicilioProv;
    zQEgresos.FieldByName('sEstado').AsString := sParamEstadoProv;
    zQEgresos.FieldByName('sTelefono').AsString := sParamTelfProv;
//    btnCancelarBusqueda.Click;
  end;
end;

procedure Tfrm_Gastos.tdbiIdFolioKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
       tdbsIdArea.SetFocus ;
end;

procedure Tfrm_Gastos.tdbsIdAreaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
       tdbsReferencia.SetFocus ;
end;

procedure Tfrm_Gastos.tdbsReferenciaKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 Then
    DBEdit9.setFocus ;
end;

procedure Tfrm_Gastos.tdFechaChange(Sender: TObject);
begin
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

procedure Tfrm_Gastos.tdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        frmBarra1.btnAdd.SetFocus
end;

procedure Tfrm_Gastos.tdImporteTotalEnter(Sender: TObject);
begin
  tdImporteTotal.Text := FloatToStr((StrToFloat(edtSubtotal.Text) + zQEgresos.FieldByName('dIva').AsFloat)-(zQEgresos.FieldByName('dIvaRet').AsFloat+zQEgresos.FieldByName('dIsrRet').AsFloat));
end;

procedure Tfrm_Gastos.tdImporteTotalKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
         begin
           dbIva.SetFocus ;
           dbIva.Text := '0' ;
         end;
end;

procedure Tfrm_Gastos.tsIdCuentaBancariaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
       tsNumeroOrden.SetFocus ;
end;

procedure Tfrm_Gastos.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
       tdImporteTotal.SetFocus ;
end;

procedure Tfrm_Gastos.tssCiudadKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
          tssCP.SetFocus ;
end;

procedure Tfrm_Gastos.tssCPKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
          tssDomicilio.SetFocus ;
end;

procedure Tfrm_Gastos.tssDomicilioKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
           tssEstado.SetFocus ;
end;

procedure Tfrm_Gastos.tssEstadoKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
       tsIdCuentaBancaria.SetFocus ;
end;

procedure Tfrm_Gastos.tssRazonSocialKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
          tssTelefono.SetFocus ;
end;

procedure Tfrm_Gastos.tssRFCKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
         tsIdCuentaBancaria.SetFocus ;
end;

procedure Tfrm_Gastos.tssTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
       if Key = #13 then
          DBLookupComboBox1.SetFocus ;
end;

procedure Tfrm_Gastos.zQCuentasBancariasAfterScroll(DataSet: TDataSet);
begin
    if (zQEgresos.State = dsEdit) Or (zQEgresos.State = dsInsert) then
        zQEgresos.FieldValues['sReferencia'] := 'GASTOS No. ' + zQCuentasBancarias.FieldByName('sFolioSinCheque').AsString
end;

procedure Tfrm_Gastos.zQEgresosAfterInsert(DataSet: TDataSet);
begin
    zQEgresos.FieldValues['dIdFecha']        := tdFecha.Date ;
    zQEgresos.FieldValues['iIdFolio']        := iFolio ;
    zQEgresos.FieldValues['sReferencia']     := '*' ;
    zQEgresos.FieldValues['sNumeroOrden']    := Connection.ConfiguracionCont.fieldvalues['sNumeroOrden'] ;
    zQEgresos.FieldValues['sTipoMovimiento'] := 'GASTOS' ;
    zQEgresos.FieldValues['sIdProveedor']    := Connection.ConfiguracionCont.fieldvalues['sTesoreria'] ;
    zQEgresos.FieldValues['sIdArea']         := Connection.ConfiguracionCont.fieldvalues['sTesoreria'] ;
    //zQEgresos.FieldValues['dImporteTotal']   := 0 ;
    zQEgresos.FieldValues['lComprobado']     := 'No' ;
    zQEgresos.FieldValues['mDescripcion']    := '*' ;
end;                     


procedure Tfrm_Gastos.zQEgresosAfterScroll(DataSet: TDataSet);
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

      if zQEgresos.RecordCount > 0 then
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

procedure Tfrm_Gastos.zQEgresossIdProveedorChange(Sender: TField);
begin
  if zQEgresossIdProveedor.Text = Connection.ConfiguracionCont.fieldvalues['sTesoreria'] Then
      zQEgresos.FieldValues['sIdArea'] := Connection.ConfiguracionCont.fieldvalues['sTesoreria'] ;

  zQProveedores.Active := False ;
  zQProveedores.Params.ParamByName('Proveedor').DataType := ftString ;
  zQProveedores.Params.ParamByName('Proveedor').Value    := zQEgresossIdProveedor.Text ;
  //zQProveedores.Params.ParamByName('Contrato').DataType  := ftString ;
  //zQProveedores.Params.ParamByName('Contrato').Value     := global_contrato ;

  zQProveedores.Open ;
  if zQProveedores.RecordCount > 0 then
  begin
      zQEgresos.FieldValues['sRFC']          := zQProveedores.FieldValues['sRFC'];
      zQEgresos.FieldValues['sRazonSocial']  := zQProveedores.FieldValues['sRazonSocial'] ;
      zQEgresos.FieldValues['sDomicilio']    := zQProveedores.FieldValues['sDomicilio'];
      zQEgresos.FieldValues['sCiudad']       := zQProveedores.FieldValues['sCiudad'] ;
      zQEgresos.FieldValues['sCP']           := zQProveedores.FieldValues['sCP'] ;
      zQEgresos.FieldValues['sEstado']       := zQProveedores.FieldValues['sEstado'] ;
      zQEgresos.FieldValues['sTelefono']     := zQProveedores.FieldValues['sTelefono'];

      zq_provbanco.Active:=False;
      zq_provbanco.ParamByName('Prov').AsString:=zQProveedores.FieldByName('sIdProveedor').AsString;
      zq_provbanco.Open;
   end
  else
  begin
    //MessageDlg('No Existe ese Proveedor', mtInformation, [mbOk], 0 ) ;
     zQEmpleados.Active := False ;
     zQEmpleados.Params.ParamByName('Empleado').DataType := ftString ;
     zQEmpleados.Params.ParamByName('Empleado').Value    := zQEgresossIdProveedor.Text ;
     zQEmpleados.Open ;
     if zQEmpleados.RecordCount > 0 then
      begin
         zQEgresos.FieldValues['sRFC']          := zQEmpleados.FieldValues['sRFC'];
         zQEgresos.FieldValues['sRazonSocial']  := zQEmpleados.FieldByName('nombre').AsString;
         zQEgresos.FieldValues['sDomicilio']    := zQEmpleados.FieldValues['sDomicilio'];
         zQEgresos.FieldValues['sCiudad']       := zQEmpleados.FieldValues['sCiudad'] ;
         zQEgresos.FieldValues['sCP']           := '*' ;
         zQEgresos.FieldValues['sEstado']       := '*' ;
         zQEgresos.FieldValues['sTelefono']     := zQEmpleados.FieldValues['sTelefono'] ;
      end;
  end

end;

procedure Tfrm_Gastos.EnviarMensaje(Mensaje, Ip: String);
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

procedure Tfrm_Gastos.Tablero;
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
