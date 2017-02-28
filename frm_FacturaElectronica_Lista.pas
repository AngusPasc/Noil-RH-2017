unit frm_FacturaElectronica_Lista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, NxCollection, ExtCtrls,
  frm_Connection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  PFacturaElectronica, CFDI, PFacturaElectronica_PAC, PACFO, ShellAPI, global,
  ZSqlUpdate, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Menus, StdCtrls, cxButtons,
  cxDropDownEdit, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray;

type
  TfrmFacturaElectronica_Lista = class(TForm)
    Panel1: TPanel;
    NxButton3: TcxButton;
    zq_listafacturas: TZQuery;
    ds_ListaFacturas: TDataSource;
    zq_listafacturasdIdFecha: TDateField;
    zq_listafacturasiIdFolio: TIntegerField;
    zq_listafacturassTipoMovimiento: TStringField;
    zq_listafacturassIdArea: TStringField;
    zq_listafacturassIdNumeroCuenta: TStringField;
    zq_listafacturassNumeroOrden: TStringField;
    zq_listafacturassReferencia: TStringField;
    zq_listafacturassIdProveedor: TStringField;
    zq_listafacturassIdCompania: TStringField;
    zq_listafacturassRFC: TStringField;
    zq_listafacturassRazonSocial: TStringField;
    zq_listafacturassDomicilio: TStringField;
    zq_listafacturassCiudad: TStringField;
    zq_listafacturassCP: TStringField;
    zq_listafacturassEstado: TStringField;
    zq_listafacturassTelefono: TStringField;
    zq_listafacturasdImporteTotal: TFloatField;
    zq_listafacturasdImporteSubTotal: TFloatField;
    zq_listafacturaslComprobado: TStringField;
    zq_listafacturassStatus: TStringField;
    zq_listafacturasmDescripcion: TMemoField;
    zq_listafacturasdIva: TFloatField;
    zq_listafacturasdIva_Porcentaje: TFloatField;
    zq_listafacturaslAplicaiva: TStringField;
    zq_listafacturassPoliza: TStringField;
    zq_listafacturasdFechaFactura: TDateField;
    zq_listafacturasdFechaRecepcion: TDateField;
    zq_listafacturasiFolio: TIntegerField;
    zq_listafacturasiIdStatus: TIntegerField;
    zq_listafacturassTipoPago: TStringField;
    zq_listafacturassNumeroDeCuenta: TStringField;
    zq_listafacturassNumeroPedido: TStringField;
    zq_listafacturasiImprimeProveedor: TIntegerField;
    zq_listafacturassMes: TStringField;
    zq_listafacturaslAplicaPagoParcial: TStringField;
    zq_listafacturasdParcialidad: TFloatField;
    zq_listafacturassProyecto: TStringField;
    zq_listafacturasCFDI_sTipoDocumento: TStringField;
    zq_listafacturasCFDI_sUUID: TStringField;
    zq_listafacturasCFDI_dFechaEmision: TDateTimeField;
    zq_listafacturasCFDI_dFechaTimbrado: TDateTimeField;
    zq_listafacturasCFDI_sSelloCFD: TStringField;
    zq_listafacturasCFDI_sSelloSAT: TStringField;
    zq_listafacturasCFDI_sCertificadoCFD: TStringField;
    zq_listafacturasCFDI_sCertificadoSAT: TStringField;
    zq_listafacturasCFDI_sCadenaOriginal: TStringField;
    zq_listafacturasCFDI_bbCode: TBlobField;
    zq_listafacturasCFDI_sEstado: TStringField;
    zq_listafacturasCFDI_sRegimenFiscal: TStringField;
    zq_listafacturasCFDI_sLugarExpedicion: TStringField;
    zq_listafacturasCFDI_sFormaDePago: TStringField;
    zq_listafacturasCFDI_sMetodoDePago: TStringField;
    zq_listafacturasCFDI_sTipoComprobante: TStringField;
    zq_listafacturasEmpresa: TStringField;
    strngfld_listafacturassNombre: TStringField;
    ZUzq_listafacturas: TZUpdateSQL;
    zq_listafacturassFormaPago: TIntegerField;
    cxgrdbtblvwGrid2DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid2Level1: TcxGridLevel;
    Grid_Facturas: TcxGrid;
    cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column6: TcxGridDBColumn;
    cxstylrpstryRepositorio: TcxStyleRepository;
    Timbrada: TcxStyle;
    Cancelada: TcxStyle;
    cxgrdbclmnGrid2DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column8: TcxGridDBColumn;
    zq_listafacturasTotal: TFloatField;
    Seleccion: TcxStyle;
    cxButton1: TcxButton;
    cxgrdbclmnGrid2DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column10: TcxGridDBColumn;
    strngfld_listafacturassUsuario: TStringField;
    intgrfld_listafacturasiEjercicio: TIntegerField;
    strngfld_listafacturasiIdTipoMoneda: TStringField;
    intgrfld_listafacturasiIdPrecioMoneda: TIntegerField;
    strngfld_listafacturaslNotaCredito: TStringField;
    cxgrdbclmnGrid2DBTableView1Column11: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column12: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column13: TcxGridDBColumn;
    procedure NxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ResultadoDeCancelacion(Resultado: Integer);
    procedure JvDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxgrdbtblvwGrid2DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure zq_listafacturasCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFacturaElectronica_Lista: TfrmFacturaElectronica_Lista;
  ProveedorTimbrado : TPFPAC;
  CredencialesPAC: TPFCredenciales;
  CSD: TPFCSD;

implementation

{$R *.dfm}

procedure TfrmFacturaElectronica_Lista.cxButton1Click(Sender: TObject);
begin
  zq_listafacturas.Refresh;
end;

procedure TfrmFacturaElectronica_Lista.cxgrdbtblvwGrid2DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('CFDI_sEstado');
  if VarToStr(ARecord.Values[AColumn.Index]) = 'TIMBRADA' then AStyle := Timbrada;
  if VarToStr(ARecord.Values[AColumn.Index]) = 'CANCELADA' then AStyle := Cancelada;
end;

procedure TfrmFacturaElectronica_Lista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFacturaElectronica_Lista.FormShow(Sender: TObject);
begin
  zq_listafacturas.Active := False;
  zq_listafacturas.Parambyname('Contrato').asString := Global_Contrato;
  zq_listafacturas.Open;
end;

procedure TfrmFacturaElectronica_Lista.ResultadoDeCancelacion(Resultado: Integer);
begin
  if Resultado = 1 then begin
    ShowMessage('La factura fue cancelada.');
    zq_listafacturas.Edit;
    zq_listafacturas.FieldByName('CFDI_sEstado').AsString := 'CANCELADA';
    zq_listafacturas.Post;
  end;
  if Resultado = 2 then begin
    ShowMessage('La factura ya está cancelada');
    zq_listafacturas.Edit;
    zq_listafacturas.FieldByName('CFDI_sEstado').AsString := 'CANCELADA';
    zq_listafacturas.Post;
  end;
  if Resultado = 3 then begin
    ShowMessage('Esta factura no existe en la base de datos del SAT.');
  end;
  if Resultado = 0 then begin
    ShowMessage('Error no definido.');
  end;
end;

procedure TfrmFacturaElectronica_Lista.zq_listafacturasCalcFields(
  DataSet: TDataSet);
begin
  zq_listafacturas.FieldByName('Total').AsFloat := zq_listafacturas.FieldByName('dImportetotal').AsFloat + zq_listafacturas.FieldByName('dIva').AsFloat ;
end;

procedure TfrmFacturaElectronica_Lista.JvDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    If (Sender as TJvDBGrid).DataSource.DataSet.State = dsBrowse Then
        If zq_listafacturas.RecordCount > 0 Then
            If (Sender as TJvDBGrid).DataSource.DataSet.FieldByName('Cfdi_sEstado').AsString = 'TIMBRADA' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clBlue
            end ;

             If (Sender as TJvDBGrid).DataSource.DataSet.FieldByName('Cfdi_sEstado').AsString = 'SIN TIMBRE' then
            begin
                Afont.Style := [fsBold] ;
                AFont.Color := clRed
            end ;
end;

procedure TfrmFacturaElectronica_Lista.NxButton3Click(Sender: TObject);
Var
  Qry: TZQuery;
  uuid: String;
  RespuestaPAC: TStringList;
  Archivo: TextFile;
  sLinea: String;
  Stream: TStringList;
begin
  if zq_listafacturas.RecordCount>0  then
  begin
    uuid := zq_listafacturas.FieldByName('CFDI_sUUID').AsString;
    Qry := TZQuery.Create(Self);
    Try
      Qry.Connection := Connection.zConnection;

      //Qry.SQL.Text := 'SELECT * FROM con_companias WHERE sIdCompania = ' + QuotedStr(zq_listafacturas.FieldByName('sIdCompania').AsString);
      //Qry.Open;

      //CSD.Certificado :=  connection.configuracionCont.FieldByName('sCertificados_Certificado').AsString;;
      //CSD.Llave       := connection.configuracionCont.FieldByName('sCertificados_Llave').AsString;
      //CSD.Clave       := connection.configuracionCont.FieldByName('sCertificados_Contrasena').AsString;

      Qry.SQL.Text := 'select cc.*, rhe.sNombre as Descripcion_Estado '+
                      'from con_configuracion cc '+
                      'inner join rh_estados rhe on (rhe.sClaveEstado = cc.sEstado) '+
                      'where sNombreCorto = :sNombreCorto';
      Qry.ParamByName('sNombreCorto').AsString := global_contrato;
      Qry.Open;

      CSD.Certificado := Qry.FieldByName('sCertificados_Certificado').AsString;
      CSD.Llave := Qry.FieldByName('sCertificados_Llave').AsString;
      CSD.Clave := Qry.FieldByName('sCertificados_Contrasena').AsString;

      CredencialesPAC.RFC   := Qry.FieldByName('sRFC').AsString;

      if not FileExists(CredencialesPAC.RFC+'.key.pem') then begin
        ShellExecute(0, nil, 'openssl', PChar('pkcs8 -inform DER -in "' + CSD.Llave + '" -passin pass:' + CSD.Clave + ' -out '+CredencialesPAC.RFC+'.key.pem'), nil, SW_HIDE);
  //      ShellExecute(0, nil, 'openssl', PChar('rsa -in "'+CredencialesPAC.RFC+'.key.pem" -des3 -passout pass:Major$*Tom_1 -out '+CredencialesPAC.RFC+'.key.pem'), nil, SW_HIDE);
      end;

      if not FileExists(CredencialesPAC.RFC+'.cer.pem') then begin
        ShellExecute(0, nil, 'openssl', PChar('x509 -inform DER -in "' + CSD.Certificado + '" -out '+CredencialesPAC.RFC+'.cer.pem'), nil, SW_HIDE);
      end;

      Try
        Stream := TStringList.Create;
        sLinea := '';
  //      Archivo := ;
        AssignFile(Archivo, CredencialesPAC.RFC+'.cer.pem');
        Reset(Archivo);

        while not Eof(Archivo) do begin
          ReadLn(Archivo, sLinea);
          Stream.Add(sLinea);
        end;
        CredencialesPAC.CertificadoB64 := Stream.Text;
      Finally
        CloseFile(Archivo);
        Stream.Free;
      End;

      Try
        Stream := TStringList.Create;
        sLinea := '';
  //      Archivo := nil;
        AssignFile(Archivo, CredencialesPAC.RFC+'.key.pem');
        Reset(Archivo);

        while not Eof(Archivo) do begin
          ReadLn(Archivo, sLinea);
          Stream.Add(sLinea);
        end;
        CredencialesPAC.LlaveB64 := Stream.Text;
      Finally
        CloseFile(Archivo);
        Stream.Free;
      End;

      ProveedorTimbrado := TPFPACFO.Create;
      ProveedorTimbrado.AsignarCredenciales(CredencialesPAC);
      RespuestaPAC := ProveedorTimbrado.CancelarXML(UUID);
      ResultadoDeCancelacion(StrToInt(RespuestaPAC[0]));
  //    ShowMessage(RespuestaPAC[0] + ' ' + RespuestaPAC[1]);
    Finally
      ProveedorTimbrado.Free;
      Qry.Free;
    End;
  end;
end;

end.
