unit frm_FacturaElectronica;

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
  dxRibbonRadialMenu, frm_connection, JvExGrids, JvStringGrid, NxCollection,
  JvExControls, JvLabel, frxExportPDF, JvMemoryDataset, ShlObj, 
  XMLDoc, XMLIntf, XMLDom,
  PFacturaElectronica, CFDI, PFacturaElectronica_PAC, PACFem, GeneradorCBB;


type
  TfrmFacturaElectronica = class(TForm)
    Panel_Datos: TPanel;
    lNodosFactura: TLabel;
    lCantidad: TJvLabel;
    lUnidad: TJvLabel;
    lDescripcion: TJvLabel;
    lPU: TJvLabel;
    lItemsTotal: TJvLabel;
    lItemsIVA: TJvLabel;
    Grupo_Emisor: TGroupBox;
    lEmisor: TLabel;
    tsIdFactura: TEdit;
    cmbEmisor: TNxComboBox;
    Grupo_DatosReceptor: TGroupBox;
    lCalle: TLabel;
    lNumero: TLabel;
    lInterior: TLabel;
    lColonia: TLabel;
    lLocalidad: TLabel;
    lMunicipio: TLabel;
    lEstado: TLabel;
    lCP: TLabel;
    lRFC: TLabel;
    tsCalle: TEdit;
    tsNumeroExterior: TEdit;
    tsNumeroInterior: TEdit;
    tsColonia: TEdit;
    tsLocalidad: TEdit;
    tsMunicipio: TEdit;
    tsEstado: TEdit;
    tsCP: TEdit;
    tsRFC: TEdit;
    Grupo_Receptor: TGroupBox;
    cmbReceptor: TNxComboBox;
    btnAgregar: TNxButton;
    Panel_Espera: TPanel;
    sb_CajaConceptos: TScrollBox;
    tUnidad_0: TEdit;
    tDescripcion_0: TEdit;
    tPu_0: TEdit;
    tTotal_0: TEdit;
    tCantidad_0: TEdit;
    tIVA_0: TCheckBox;
    Panel_Totales: TPanel;
    lIva: TLabel;
    lSubtotal: TLabel;
    lTotal: TLabel;
    lTipoPago: TLabel;
    lPago: TLabel;
    lCorreo: TLabel;
    tsIva: TEdit;
    tsIvaImporte: TEdit;
    tsSubtotal: TEdit;
    tsTotal: TEdit;
    tsTipoPago: TEdit;
    tsFormaPago: TEdit;
    btnGenerar: TButton;
    cb_Timbrar: TCheckBox;
    cb_EnviarMail: TCheckBox;
    Memoria_Conceptos: TJvMemoryData;
    Memoria_ConceptosdCantidad: TFloatField;
    Memoria_ConceptossUnidad: TStringField;
    Memoria_ConceptossDescripcion: TStringField;
    Memoria_ConceptosdValorUnitario: TFloatField;
    Memoria_ConceptosdTotal: TFloatField;
    Memoria_Factura: TJvMemoryData;
    Memoria_FacturasFolioFactura: TStringField;
    Memoria_FacturasFolioFiscal: TStringField;
    Memoria_FacturasSerieCSD: TStringField;
    Memoria_FacturasRFC: TStringField;
    Memoria_FacturasRegimenFiscal: TStringField;
    Memoria_FacturasLugarFechaExpedicion: TStringField;
    Memoria_FacturasRFC_Receptor: TStringField;
    Memoria_FacturasTotal: TStringField;
    Memoria_FacturadSubTotal: TFloatField;
    Memoria_FacturadIva: TFloatField;
    Memoria_FacturadTotal: TFloatField;
    Memoria_FacturasSelloDigital: TStringField;
    Memoria_FacturasSelloSAT: TStringField;
    Memoria_FacturasCadenaOriginal: TStringField;
    Memoria_FacturasSerieCertificado: TStringField;
    Memoria_FacturasFecha_Hora: TStringField;
    Memoria_FacturabBBCode: TBlobField;
    Memoria_FacturasTipoPago: TStringField;
    Memoria_FacturasFormaPago: TStringField;
    Memoria_FacturadFechaEmision: TDateTimeField;
    Memoria_FacturabLogoEmpresa: TBlobField;
    frxDS_Factura: TfrxDBDataset;
    frxDS_Conceptos: TfrxDBDataset;
    Panel_Log: TPanel;
    Memo_Log: TMemo;
    frx_Reporte: TfrxReport;
    frx_ExportaPDF: TfrxPDFExport;
    Label1: TLabel;
    cmbCuentasBancarias: TNxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure tCantidad_0Enter(Sender: TObject);
    procedure tCantidad_0KeyPress(Sender: TObject; var Key: Char);
    procedure tTotal_0Change(Sender: TObject);
    procedure tIVA_0Click(Sender: TObject);
    procedure tsSubtotalChange(Sender: TObject);
    procedure tsIvaImporteChange(Sender: TObject);
    procedure cmbReceptorChange(Sender: TObject);
    procedure cmbEmisorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFacturaElectronica: TfrmFacturaElectronica;
  Edits: Array[0..4] Of TEdit;
  Alineacion: Array[0..5] Of Integer;
  Texto: Array[0..5] Of String;
  Tamaño: Array[0..5] Of Integer;
  Nombres: Array[0..5] Of String;
  iTop, iItem: Integer;
  ItemEmisor,
  ItemReceptor: String;

  //CFDI
  Emisor, Receptor: TPFContribuyente;
  Factura: TPFFacturaElectronica;
  Conceptos: TPFConceptos;
  Impuestos: TPFImpuestos;
  Impuesto: TPFImpuesto;
  ProveedorTimbrado: TPFPac;
  Credenciales: TPFCredenciales;
  TimbreDeFactura: TPFTimbre;
  archivoFacturaXML: String;
  rutaImagenCBB: String;
  GeneradorCBB: TGeneradorCBB;

  Function GetDesktopFolder: String;


implementation

{$R *.dfm}

function GetDesktopFolder: string;
var
 buf: array[0..255] of char;
 pidList: PItemIDList;
begin
 Result := 'No Desktop Folder found.';
 SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOP, pidList);
 if (pidList <> nil) then
  if (SHGetPathFromIDList(pidList, buf)) then
    Result := buf;
end;

function ExisteCadena(lista : TStringList; cadena : string) : boolean;
var
 posicion : integer;
begin
  lista.Sort;
  existeCadena := lista.Find(cadena, posicion);
end;


procedure TfrmFacturaElectronica.btnGenerarClick(Sender: TObject);
Var
  Qry, QryConceptos: TZQuery;
  IdRegistro: String;
  i, x, Encontrados: Integer;
  oCantidad, oUnidad, oDescripcion, oPu, oTotal, oIVA: TComponent;
  CarpetaCFDI, CarpetaEmisor, s: String;
  dTotalFactura: Real;
  m, f: TStream;
  oExportfilter: TfrxCustomExportFilter;
  FacturaTimbrada: Boolean;
  FechaEmision: TDateTime;
  iFolioActual: Integer;
//  parametros : TDictionary<string, string>;
begin
  Panel_Espera.Visible := True;
  Panel_Log.Visible := True;
  Memoria_Factura.Open;
  Memoria_Factura.EmptyTable;
  Memoria_Conceptos.Open;
  Memoria_Conceptos.EmptyTable;
  Try
    Qry := TZQuery.Create(Self);
    Qry.Connection := Connection.zConnection;

    Try
      Qry.SQL.Text := 'SELECT * FROM con_companias WHERE sIdCompania = ' + QuotedStr(ItemEmisor);
      Qry.Open;

      Emisor.RFC:= Qry.FieldByName('sRFC').AsString;
      Emisor.RazonSocial:= Qry.FieldByName('sRazonSocial').AsString;
      Emisor.Domicilio.Calle:= Qry.FieldByName('sDomicilio').AsString;
      Emisor.Domicilio.Numero:= Qry.FieldByName('sNumeroExterior').AsString;
      Emisor.Domicilio.NumeroInterior:= Qry.FieldByName('sNumeroInterior').AsString;
      Emisor.Domicilio.CodigoPostal:= Qry.FieldByName('sCP').AsString;
      Emisor.Domicilio.Colonia:= Qry.FieldByName('sColonia').AsString;
      Emisor.Domicilio.Municipio:= Qry.FieldByName('sMunicipio').AsString;
      Emisor.Domicilio.Estado:= Qry.FieldByName('sEstado').AsString;
      Emisor.Domicilio.Pais:= 'MEXICO';
      Emisor.Domicilio.Localidad:= Qry.FieldByName('sLocalidad').AsString;

      Emisor.ExpedidoEn := Emisor.Domicilio;
      Emisor.RegimenFiscal := 'REGIMEN GENERAL DE LEY';

      Receptor.RFC:= tsRFC.Text;
      Receptor.RazonSocial:= cmbReceptor.ItemValue;
      Receptor.Correo:= lCorreo.Caption;
      Receptor.Domicilio.Calle:= tsCalle.Text;
      Receptor.Domicilio.Numero:= tsNumeroExterior.Text;
      Receptor.Domicilio.NumeroInterior:= tsNumeroInterior.Text;
      Receptor.Domicilio.CodigoPostal:= tsCP.Text;
      Receptor.Domicilio.Colonia:= tsColonia.Text;
      Receptor.Domicilio.Municipio:= tsMunicipio.Text;
      Receptor.Domicilio.Estado:= tsEstado.Text;
      Receptor.Domicilio.Pais:='MEXICO';
      Receptor.Domicilio.Localidad:= tsLocalidad.Text;

      Memo_Log.Lines.Add('Generando Factura CFD');
      Application.ProcessMessages;
      Factura := TPFFacturaElectronica.Create(Emisor, Receptor, trFactura);

      Factura.Folio.Serie := 'A';
      Factura.Folio.Folio := 150;

      Factura.Propiedades.TipoDeComprobante := 'ingreso';
      Factura.Propiedades.FormaDePago := tsTipoPago.Text;
      Factura.Propiedades.MetodoDePago := tsFormaPago.Text;
      Factura.Propiedades.Moneda := 'MXP';
      if cmbCuentasBancarias.ItemIndex > -1 then begin
        Factura.Propiedades.NumeroDeCuenta := cmbCuentasBancarias.ItemName;
      end;

      //Genera los conceptos
      SetLength(Conceptos, iItem);
      for i := Low(Conceptos) to High(Conceptos) do begin
        Encontrados := 0;
        oCantidad := Nil;
        oUnidad := Nil;
        oDescripcion := Nil;
        oPu := Nil;
        oTotal := Nil;
        for x := 0 to ComponentCount - 1 do begin
          if LowerCase(Components[x].Name) = LowerCase('tCantidad_' + IntToStr(i)) then begin
            oCantidad := Components[x];
            Inc(Encontrados);
          end;
          if LowerCase(Components[x].Name) = LowerCase('tUnidad_' + IntToStr(i)) then begin
            oUnidad := Components[x];
            Inc(Encontrados);
          end;
          if LowerCase(Components[x].Name) = LowerCase('tDescripcion_' + IntToStr(i)) then begin
            oDescripcion := Components[x];
            Inc(Encontrados);
          end;
          if LowerCase(Components[x].Name) = LowerCase('tPu_' + IntToStr(i)) then begin
            oPu := Components[x];
            Inc(Encontrados);
          end;
          if LowerCase(Components[x].Name) = LowerCase('tTotal_' + IntToStr(i)) then begin
            oTotal := Components[x];
            Inc(Encontrados);
          end;
          if LowerCase(Components[x].Name) = LowerCase('tIVA_' + IntToStr(i)) then begin
            oIVA := Components[x];
            Inc(Encontrados);
          end;
          if Encontrados > 5 then break;
        end;

        Conceptos[i].Cantidad := StrToFloat(Trim(TEdit(oCantidad).Text));
        Conceptos[i].Unidad := TEdit(oUnidad).Text;
        Conceptos[i].Descripcion := TEdit(oDescripcion).Text;
        Conceptos[i].PrecioUnitario := StrToFloat(Trim(TEdit(oPu).Text));
        if TCheckBox(oIVA).Checked then begin
          Conceptos[i].AplicaIVA  := 'Si';
        end else begin
          Conceptos[i].AplicaIVA := 'No';
        end;
//        Conceptos[i].Total := StrToFloat(Trim(TEdit(oTotal).Text));

        Memoria_Conceptos.Append;
        Memoria_Conceptos.FieldByName('dCantidad').AsFloat := StrToFloat(Trim(TEdit(oCantidad).Text));
        Memoria_Conceptos.FieldByName('sUnidad').AsString := TEdit(oUnidad).Text;
        Memoria_Conceptos.FieldByName('sDescripcion').AsString := TEdit(oDescripcion).Text;
        Memoria_Conceptos.FieldByName('dValorUnitario').AsFloat := StrToFloat(Trim(TEdit(oPu).Text));
        Memoria_Conceptos.FieldByName('dTotal').AsFloat := StrToFloat(Trim(TEdit(oTotal).Text));
        Memoria_Conceptos.Post;

        Factura.AgregarConceptos(Conceptos[i]);
      end;

      Impuesto.Tipo := impTrasladado;
      Impuesto.Impuesto:='IVA';
      Impuesto.Tasa:=StrToFloat(Trim(tsIva.Text));
      Impuesto.Importe:= StrToFloat(Trim(tsIvaImporte.Text));
      Factura.AgregarImpuestos(Impuesto);

      CarpetaCFDI := GetDesktopFolder() + '\CFDI';
      if Not(DirectoryExists(GetDesktopFolder() + '\CFDI')) then
        CreateDir(GetDesktopFolder() + '\CFDI');

      CarpetaEmisor := CarpetaCFDI + '\' + Emisor.RFC;

      if Not(DirectoryExists(CarpetaEmisor)) then begin
        CreateDir(CarpetaEmisor);
      end;

      archivoFacturaXML := CarpetaEmisor + '\' + tsIdFactura.Text+ '-' + cmbReceptor.ItemValue + '.xml';
      rutaImagenCBB := CarpetaEmisor + '\' + tsIdFactura.Text+ '-' + cmbReceptor.ItemValue + '.jpg';

      Factura.Generar;
      FechaEmision := Now();
      dTotalFactura := StrToFloat(Trim(tsTotal.Text));
      FacturaTimbrada := False;
      Memoria_Factura.Append;
      Try
        if cb_Timbrar.Checked then begin
          ProveedorTimbrado := TPFPACFem.Create;
          Credenciales.RFC   := Emisor.RFC;

          ProveedorTimbrado.AsignarCredenciales(Credenciales);

          TimbreDeFactura := ProveedorTimbrado.TimbrarXML(Factura.XML);

          Memo_Log.Lines.Add('Solicitando Timbre al PAC...');
          Application.ProcessMessages;

          Factura.AsignarTimbreFiscal(TimbreDeFactura);
          Application.ProcessMessages;
//          ShowMessage(TimbreDeFactura.XML);

          Factura.Guardar(archivoFacturaXML);

          generadorCBB := TGeneradorCBB.Create;
          Try
            generadorCBB.GenerarImagen(Emisor,
                                       Receptor,
                                       Factura.Total,
                                       TimbreDeFactura.UUID,
                                       rutaImagenCBB);
          Finally
            generadorCBB.Free;
          End;

          Application.ProcessMessages;

          Try
            m := Memoria_Factura.CreateBlobStream(Memoria_Factura.FieldByName('bBBCode'), bmWrite);
            f := TFileStream.Create(rutaImagenCBB, fmOpenRead);
            m.CopyFrom(f, f.Size);
          Finally
            f.Free;
            m.Free;
          End;
          FacturaTimbrada := True;

          Memoria_Factura.FieldByName('sFolioFiscal').AsString := TimbreDeFactura.UUID;
          Memoria_Factura.FieldByName('sSelloDigital').AsString := TimbreDeFactura.SelloCFD;
          Memoria_Factura.FieldByName('sSelloSAT').AsString := TimbreDeFactura.SelloSAT;
          Memoria_Factura.FieldByName('sCadenaOriginal').AsString := Factura.CadenaOriginal;
          Memoria_Factura.FieldByName('sSerieCertificado').AsString := TimbreDeFactura.NoCertificadoSAT;
          Memoria_Factura.FieldByName('sFecha_Hora').AsDateTime := TimbreDeFactura.FechaTimbrado;

        end else begin
          Factura.Guardar(archivoFacturaXML);
        end;

        Memoria_Factura.FieldByName('sFolioFactura').AsString := tsIdFactura.Text;
        Memoria_Factura.FieldByName('sRFC').AsString := Emisor.RFC;//Qry.FieldByName('sRFC').AsString;
        Memoria_Factura.FieldByName('sRFC_Receptor').AsString := tsRFC.Text;
        Memoria_Factura.FieldByName('sRegimenFiscal').AsString := Emisor.RegimenFiscal;
        Memoria_Factura.FieldByName('dFechaEmision').AsDateTime := FechaEmision;
        //Memoria_Factura.FieldByName('bLogoEmpresa').AsVariant := //Qry.FieldByName('bLogoEmpresa').AsVariant;

        Memoria_Factura.FieldByName('sLugarFechaExpedicion').AsString := Factura.LugarDeExpedicion + ' ' + FormatDateTime('yyyy-mm-dd', Factura.FechaGeneracion) + 'T' + FormatDateTime('hh:mm:ss', Factura.FechaGeneracion);
        Memoria_Factura.FieldByName('sSerieCSD').AsString := Factura.Certificado.NumeroSerie;
        Memoria_Factura.FieldByName('sTotal').AsString := CantidadEnLetra(dTotalFactura, 1);
        Memoria_Factura.FieldByName('dSubTotal').AsFloat := StrToFloat(Trim(tsSubTotal.Text));
        Memoria_Factura.FieldByName('dIva').AsFloat := StrToFloat(Trim(tsIvaImporte.Text));
        Memoria_Factura.FieldByName('dTotal').AsFloat := dTotalFactura;

        Memoria_Factura.FieldByName('sTipoPago').AsString := tsTipoPago.Text;
        Memoria_Factura.FieldByName('sFormaPago').AsString := tsFormaPago.Text;

        Memo_Log.Lines.Add('Cadena Original del Timbre recibido:');
        Memo_Log.Lines.Add(Factura.CadenaOriginal);
        Application.ProcessMessages;


      Finally
        Memoria_Factura.Post;
        ProveedorTimbrado.Free;
      End;

//      FreeAndNil(Factura);

      Memo_Log.Lines.Add('Factura en formato XML Generada con éxito: ' + archivoFacturaXML);
      Application.ProcessMessages;

    Except
      on E: Exception do begin
        Memo_Log.Lines.Add('Ocurrio un error: ' + E.Message);
      end;
    End;

    Qry.Active := False;
    Qry.SQL.Clear;
    Qry.SQL.Text := 'SELECT MAX(iIdFolio) AS iFolio FROM con_tesoreriaegresos LIMIT 1;';
    Qry.Open;

    iFolioActual := (Qry.FieldByName('iFolio').AsInteger + 1);

    Qry.Active := False;
    Qry.SQL.Clear;
    Qry.SQL.Text := 'SELECT * FROM con_tesoreriaegresos LIMIT 1;';
    Qry.Open;

    Qry.Append;
    Qry.FieldByName('iIdFolio').AsInteger := iFolioActual;
    Qry.FieldByName('dIdFecha').AsDateTime := Memoria_Factura.FieldByName('dFechaEmision').AsDateTime;
    Qry.FieldByName('sTipoMovimiento').AsString := 'DEPOSITO';
    Qry.FieldByName('CFDI_sTipoDocumento').AsString := 'FACTURA';
    Qry.FieldByName('sIdCompania').AsString := Trim(ItemEmisor);
    Qry.FieldByName('sIdArea').AsString := 'INTELCOD';
    Qry.FieldByName('sIdNumeroCuenta').AsString := Factura.Propiedades.NumeroDeCuenta;
//    Qry.FieldByName('sFolio').AsString := Edit1.Text;
    Qry.FieldByName('sIdProveedor').AsString := Trim(ItemReceptor);
    Qry.FieldByName('CFDI_sFormaDePago').AsString := tsFormaPago.Text;
    Qry.FieldByName('dImporteSubTotal').AsFloat := StrToFloat(tsSubTotal.Text);
    Qry.FieldByName('dImporteTotal').AsFloat := StrToFloat(tsTotal.Text);
    Qry.FieldByName('CFDI_sTipoComprobante').AsString := 'ingreso';
    Qry.FieldByName('CFDI_sMetodoDePago').AsString := tsTipoPago.Text;
    Qry.FieldByName('CFDI_sLugarExpedicion').AsString := tsLocalidad.Text + ', ' + tsEstado.Text;
//    Qry.FieldByName('sLugarFechaExpedicion').AsString := JvMemoryData1.FieldByName('sLugarFechaExpedicion').AsString;
    Qry.FieldByName('dIva').AsFloat := StrToFloat(tsIvaImporte.Text);
    Qry.FieldByName('dIva_Porcentaje').AsFloat := StrToFloat(tsIva.Text);
    Qry.FieldByName('CFDI_sRegimenFiscal').AsString := Emisor.RegimenFiscal;
    Qry.FieldByName('CFDI_dFechaEmision').AsDateTime := Memoria_Factura.FieldByName('dFechaEmision').AsDateTime;//FechaEmision;
    Qry.FieldByName('CFDI_sEstado').AsString := 'SIN TIMBRE';
    Qry.FieldByName('CFDI_sCertificadoCFD').AsString := Memoria_Factura.FieldByName('sSerieCSD').AsString;
    if FacturaTimbrada then begin
      Qry.FieldByName('CFDI_sCertificadoSAT').AsString := Memoria_Factura.FieldByName('sSerieCertificado').AsString;
      Qry.FieldByName('CFDI_sUUID').AsString := Memoria_Factura.FieldByName('sFolioFiscal').AsString;
      Qry.FieldByName('CFDI_sSelloCFD').AsString := Memoria_Factura.FieldByName('sSelloDigital').AsString;
      Qry.FieldByName('CFDI_sSelloSAT').AsString := Memoria_Factura.FieldByName('sSelloSAT').AsString;
      Qry.FieldByName('CFDI_sCadenaOriginal').AsString := Memoria_Factura.FieldByName('sCadenaOriginal').AsString;
      Qry.FieldByName('CFDI_dFechaTimbrado').AsDateTime := Memoria_Factura.FieldByName('sFecha_Hora').AsDateTime;
      Qry.FieldByName('CFDI_sEstado').AsString := 'TIMBRADA';
      Qry.FieldByName('CFDI_bbCode').AsVariant := Memoria_Factura.FieldByName('bBBCode').AsVariant;
    end;
    Qry.Post;

    
    Try
      QryConceptos := TZQuery.Create(Self);
      QryConceptos.Connection := Connection.zConnection;
      QryConceptos.SQL.Text := 'SELECT * FROM con_facturas_detalles WHERE iId_Factura = ' + IntToStr(iFolioActual);
      QryConceptos.Open;

      for i := Low(Conceptos) to High(Conceptos) do begin
        QryConceptos.Append;
        QryConceptos.FieldByName('iId_Factura').AsInteger := iFolioActual;
        QryConceptos.FieldByName('dCantidad').AsFloat := Conceptos[i].Cantidad;
        QryConceptos.FieldByName('sMedida').AsString := Conceptos[i].Unidad;
        QryConceptos.FieldByName('sDescripcion').AsString := Conceptos[i].Descripcion;
        QryConceptos.FieldByName('dImporte_Unitario').AsFloat := Conceptos[i].PrecioUnitario;
        QryConceptos.FieldByName('dImporte').AsFloat := (Conceptos[i].Cantidad * Conceptos[i].PrecioUnitario);
        QryConceptos.FieldByName('lAplicaIVA').AsString := Conceptos[i].AplicaIVA;
        QryConceptos.Post;
      end;

//      QryConceptos.SQL.Text := 'SELECT * FROM cfdi_facturas_impuestos WHERE id_Factura = ' + Qry.FieldByName('id').AsString;
//      QryConceptos.Open;
//      QryConceptos.Append;
//      QryConceptos.FieldByName('id_Factura').AsString := Qry.FieldByName('id').AsString;
//      QryConceptos.FieldByName('sTipo').AsString := Impuesto1.Nombre;
//      QryConceptos.FieldByName('dTasa').AsFloat := Impuesto1.Tasa;
//      QryConceptos.FieldByName('dImporte').AsFloat := Impuesto1.Importe;
//      QryConceptos.Post;

    Finally
      QryConceptos.Free;
    End;

    x := StrToInt(tsIdFactura.Text);
    x := x + 1;

//    Qry.SQL.Text := 'UPDATE cfdi_info SET iConsecutivo = ' + IntToStr(x) + ' WHERE iTipo = 1';
//    Qry.ExecSQL;

    frx_Reporte.LoadFromFile('Factura.fr3');
    oExportfilter := TfrxCustomExportFilter(frx_ExportaPDF);
    oExportFilter.ShowDialog := False;
    oExportFilter.FileName := CarpetaEmisor + '\'+tsIdFactura.Text+'-'+cmbReceptor.ItemValue+'.pdf';
    frx_Reporte.PrepareReport(True);
    frx_Reporte.Export(oExportFilter);
//    if CheckBox2.Checked then begin
//      EnviarCorreo(Receptor.Correo, parametros, CarpetaEmisor + '\'+Edit1.Text+'-'+NxComboBox1.ItemValue);
//    end;

  Finally
    Panel_Espera.Visible := False;
//    Qry.Free;
    frx_Reporte.ShowPreparedReport;
  End;
end;

procedure TfrmFacturaElectronica.tsIvaImporteChange(Sender: TObject);
Var
  dSubTotal, dTotalIva, dTotal: Real;
begin
  dSubTotal := StrToFloat(tsSubTotal.Text);
  dTotalIva := StrToFloat(tsIvaImporte.Text);
  dTotal := dSubTotal + dTotalIva;
  tsTotal.Text := FloatToStr(dTotal);
end;

procedure TfrmFacturaElectronica.tsSubtotalChange(Sender: TObject);
Var
  dSubtotal, dIva, dTotal: Real;
begin
  dSubtotal := StrToFloat(Trim(TEdit(Sender).Text));
  dIva := StrToFloat(Trim(tsIvaImporte.Text));
//  dPorcentajeIva := StrToFloat(Trim(Edit2.Text));
//  dTotal := dSubtotal * (dIva / 100);
//  Edit11.Text := FloatToStr(dTotal);
//  dTotal := dSubtotal + dTotal;
  tsTotal.Text := FloatToStr(dSubtotal + dIva);
end;

procedure TfrmFacturaElectronica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CAFree;
end;

procedure TfrmFacturaElectronica.FormShow(Sender: TObject);
Var
  Qry: TZQuery;
  iConsecutivo: Integer;
begin
  Randomize;
  Try
    Qry := TZQuery.Create(Self);
    Qry.Connection := Connection.zConnection;

    //Llena las cuentas bancarias para deposito de la factura
    Qry.SQL.Text := 'SELECT * FROM con_cuentasbancarias ORDER BY sIdNumeroCuenta;';
    Qry.Open;
    cmbCuentasBancarias.Clear;
    if Qry.RecordCount > 0 then begin
      while Not Qry.Eof do begin
        cmbCuentasBancarias.Items.Add(Qry.FieldByName('sIdNumeroCuenta').AsString + '=' + Qry.FieldByName('sIdNumeroCuenta').AsString + ' / ' + Qry.FieldByName('sNombreCuenta').AsString);
        Qry.Next;
      end;
    end;
    cmbCuentasBancarias.ItemIndex := 1;


    Qry.SQL.Text := 'SELECT * FROM con_companias WHERE lTipo = "Emisor";';
    Qry.Open;

    cmbEmisor.Clear;
    if Qry.RecordCount > 0 then begin
      while Not Qry.Eof do begin
        cmbEmisor.Items.Add(Qry.FieldByName('sIdCompania').AsString + '=' + Qry.FieldByName('sRazonSocial').AsString);
        Qry.Next;
      end;
    end;
    cmbEmisor.ItemIndex := 1;
    iConsecutivo := Random(1000);
    tsIdFactura.Text := IntToStr(iConsecutivo);

    Qry.SQL.Text := 'SELECT * FROM con_companias;';
    Qry.Open;

    cmbReceptor.Clear;
    if Qry.RecordCount > 0 then begin
      while Not Qry.Eof do begin
        cmbReceptor.Items.Add(Qry.FieldByName('sIdCompania').AsString + '=' + Qry.FieldByName('sRazonSocial').AsString);
        Qry.Next;
      end;
    end;
    cmbReceptor.ItemIndex := 1;
    
    
  Finally

  End;

    iTop := 28;
    iItem := 1;

    //Alineación de los edit:
    Alineacion[0] := 9;
    Alineacion[1] := 64;
    Alineacion[2] := 130;
    Alineacion[3] := 455;
    Alineacion[4] := 521;
    Alineacion[5] := 587;

    //Texto de los edit:
    Texto[0] := '1';
    Texto[1] := 'Unidad';
    Texto[2] := 'Descripción...';
    Texto[3] := '0.00';
    Texto[4] := '0.00';
    Texto[5] := '';

    //Tamanyo
    Tamaño[0] := 49;
    Tamaño[1] := 60;
    Tamaño[2] := 319;
    Tamaño[3] := 60;
    Tamaño[4] := 60;
    Tamaño[5] := 21;

    //Nombres de componentes
    Nombres[0] := 'tCantidad_';
    Nombres[1] := 'tUnidad_';
    Nombres[2] := 'tDescripcion_';
    Nombres[3] := 'tPu_';
    Nombres[4] := 'tTotal_';
    Nombres[5] := 'tIVA_';

end;

procedure TfrmFacturaElectronica.btnAgregarClick(Sender: TObject);
Var
  i, x:Integer;
  CheckBox: TCheckbox;
begin
  for i:=Low(Edits) to High(Edits) do begin
    Edits[i] := TEdit.Create(Self);
    Edits[i].Parent := sb_CajaConceptos;
    Edits[i].Name := Nombres[i] + IntToStr(iItem);
    Edits[i].Left := Alineacion[i];
    Edits[i].Top := iTop;
    Edits[i].Width:= Tamaño[i];
    Edits[i].Text := Texto[i];
    if i in [0, 3, 4] then begin
      Edits[i].OnKeyPress := tCantidad_0KeyPress;
    end;
    if i = 4 then begin
      Edits[i].Hint := 'Total';
      Edits[i].OnChange := tTotal_0Change;
    end;
    Edits[i].OnEnter := tCantidad_0Enter;
  End;

  CheckBox := TCheckBox.Create(Self);
  CheckBox.Parent := sb_cajaconceptos;
  CheckBox.Name := Nombres[5] + IntToStr(iItem);
  CheckBox.Left := Alineacion[5];
  CheckBox.Top := (iTop + 3);
  CheckBox.Width := Tamaño[5];
  CheckBox.Height := 17;
  CheckBox.Caption := Texto[5];
  CheckBox.OnClick := tIVA_0Click;

  Inc(iTop, 28);
  Inc(iItem);
end;

procedure TfrmFacturaElectronica.cmbReceptorChange(Sender: TObject);
Var
  Qry: TZQuery;
  Item: String;
begin
  Try
    Qry := TZQuery.Create(Self);
    Qry.Connection := Connection.zConnection;

    Item := TNxComboBox(Sender).ItemName;
    ItemReceptor := Item;

    if Item <> '' then begin
      Qry.SQL.Text := 'SELECT * FROM con_companias WHERE sIdCompania = ' + QuotedStr(Item);
      Qry.Open;

      if Qry.RecordCount > 0 then begin
        tsCalle.Text := Qry.FieldByName('sDomicilio').AsString;
        tsNumeroExterior.Text := Qry.FieldByName('sNumeroExterior').AsString;
        tsNumeroInterior.Text := Qry.FieldByName('sNumeroInterior').AsString;
        tsColonia.Text := Qry.FieldByName('sColonia').AsString;
        tsLocalidad.Text := Qry.FieldByName('sLocalidad').AsString;
        tsMunicipio.Text := Qry.FieldByName('sMunicipio').AsString;
        tsEstado.Text := Qry.FieldByName('sEstado').AsString;
        tsCP.Text := Qry.FieldByName('sCP').AsString;
        tsRFC.Text := Qry.FieldByName('sRFC').AsString;
        lCorreo.Caption := Qry.FieldByName('sMail').AsString;
      end;
    end;
  Finally
    Qry.Free;
  End;
end;

procedure TfrmFacturaElectronica.cmbEmisorChange(Sender: TObject);
Var
  Item: String;
begin
  Item:= TNxComboBox(Sender).ItemName;
  if Item <> '' then begin
    ItemEmisor := TNxComboBox(Sender).ItemName;
  end;
end;

procedure TfrmFacturaElectronica.tCantidad_0Enter(Sender: TObject);
Var
  ListaNombres: TStringList;
  i: Integer;
  iFila: String;
  Suma, dCantidad, dPu: Real;
  Found: Boolean;
  Cantidad, Pu: TComponent;
  Encontrados: Integer;
begin
  if TEdit(Sender).Text = 'Cantidad' then begin
    TEdit(Sender).Text := '';
  end;
  if TEdit(Sender).Text = 'Unidad' then begin
    TEdit(Sender).Text := '';
  end;
  if TEdit(Sender).Text = 'Descripción...' then begin
    TEdit(Sender).Text := '';
  end;
  if TEdit(Sender).Text = 'P/U' then begin
    TEdit(Sender).Text := '';
  end;
  if TEdit(Sender).Text = 'Total' then begin
    TEdit(Sender).Text := '';
  end;
  if TEdit(Sender).Hint = 'Total' then begin
    Try
      ListaNombres := TStringList.Create;
      Split('_', TEdit(Sender).Name, ListaNombres);
      iFila := ListaNombres[1];

      Found := False;
      Encontrados := 0;
      for i := 0 to ComponentCount - 1 do begin
        if LowerCase(Components[i].Name) = LowerCase('tCantidad_' + iFila) then begin
          Cantidad := Components[i];
          Inc(Encontrados);
        end;
        if LowerCase(Components[i].Name) = LowerCase('tPu_' + iFila) then begin
          Pu := Components[i];
          Inc(Encontrados);
        end;
        if Encontrados > 1 then break;
      end;

      dCantidad := StrToFloat(Trim(TEdit(Cantidad).Text));
      dPu := StrToFloat(Trim(TEdit(Pu).Text));
      Suma := dCantidad * dPu;
      TEdit(Sender).Text := FloatToStr(Suma);
    Finally
      ListaNombres.Free;
    End;
  end;
end;


procedure TfrmFacturaElectronica.tCantidad_0KeyPress(Sender: TObject;
  var Key: Char);
begin
  if POS('.', TEdit(Sender).Text) = 0 then begin
    if Not (Key in ['0'..'9', '.', #8]) then begin
      Key := #0;
    end;
  end else begin
    if Not (Key in ['0'..'9', #8]) then begin
      Key := #0;
    end;
  end;
end;

procedure TfrmFacturaElectronica.tIVA_0Click(Sender: TObject);
Var
  ListaNombres, ListaIVA, Nombre: TStringList;
  iFila: String;
  Found: Boolean;
  Encontrados, i: Integer;
  Componente: TComponent;
  CheckBox: TCheckBox;
  Edit: TEdit;
  PorcentajeIva, Suma, dIva: Real;
begin
  Try
    ListaNombres := TStringList.Create;
    ListaIVA:= TStringList.Create;
    Split('_', TEdit(Sender).Name, ListaNombres);
    iFila := ListaNombres[1];

    PorcentajeIva := StrToFloat(tsIva.Text);
    Suma:= 0;

    Found := False;
    Encontrados := 0;
    for i := 0 to ComponentCount - 1 do begin
      Componente := Components[i];
      if(Componente is TCheckBox) then begin
        CheckBox := TCheckBox(Components[i]);
        if (CheckBox.Checked) AND (CheckBox.Parent = sb_CajaConceptos) then begin
          Try
            Nombre := TStringList.Create;
            Split('_', Components[i].Name, Nombre);
            ListaIVA.Add(LowerCase('tTotal_' + Nombre[1]));
          Finally
            Nombre.Free;
          End;
        end;
      end;
    end;

    for i := 0 to ComponentCount - 1 do begin
      if ExisteCadena(ListaIVA, LowerCase(Components[i].Name)) then begin
        Edit := TEdit(Components[i]);
        dIva:= (StrToFloat(Edit.Text) * (PorcentajeIva / 100));
        Suma := Suma + dIva;
      end;
    end;

    tsIvaImporte.Text := FloatToStr(Suma);
  Finally
    ListaNombres.Free;
    ListaIVA.Free;
  End;
end;

procedure TfrmFacturaElectronica.tTotal_0Change(Sender: TObject);
Var
  i: Integer;
  Suma, ValorItem: Real;
begin
  Suma := 0;
  for i := 0 to ComponentCount - 1 do begin
    if Components[i] is TEdit then begin
      if TEdit(Components[i]).Hint = 'Total' then begin
        if TEdit(Components[i]).Text <> '' then begin
          ValorItem := StrToFloat(Trim(TEdit(Components[i]).Text));
          Suma := Suma + ValorItem;
        end;
      end;
    end;
  end;
  tsSubTotal.Text := FloatToStr(Suma);
end;

end.
