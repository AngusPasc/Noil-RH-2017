unit CFDI;

interface

uses
  PFacturaElectronica, PFacturaElectronica_Reglamentaciones,
  SysUtils, Forms, XMLDoc, XMLIntf, DateUtils, XSLProd,
  ClaseCertificadoSellos, SelloDigital, Classes, StrUtils;

type
  TPFComplementoNomina = class
    private
      fComplementoNominaXML: TXMLDocument;
      fXMLComplemento: IXMLNode;
      fXMLPercepciones: IXMLNode;
      fXMLDeducciones: IXMLNode;
      fXMLIncapacidades: IXMLNode;
      fXMLHorasExtra: IXMLNode;
      fArrConceptos_Percepciones: TPFNomina_Conceptos;
      fArrConceptos_Deducciones: TPFNomina_Conceptos;
      fArrIncapacidades: TPFNomina_Incapacidades;
      fArrHorasExtra: TPFNomina_HorasExtra;
      fTotalPercepciones_Gravado: Real;
      fTotalPercepciones_Exento: Real;
      fTotalPercepciones: Real;
      fTotalDeducciones_Gravado: Real;
      fTotalDeducciones_Exento: Real;
      fTotalDeducciones: Real;
      fTotalPorHorasExtra: Real;
      fTotalPorIncapacidades: Real;
      fDiasPagados: Real;
      fTotalDescuentos: Real;
      fNominaGenerada: Boolean;
      constructor Create(cEmisor, cReceptor: TPFContribuyente);
      procedure GenerarNomina;
      procedure AgregarPercepcionesNominaXML;
      procedure AgregarDeduccionesNominaXML;
      procedure AgregarIncapacidadesNominaXML;
      procedure AgregarHorasExtraNominaXML;
      function XMLNomina: String;
      function ListarPercepciones: TPFNomina_Conceptos;
      function ListarDeducciones: TPFNomina_Conceptos;
    public
      FechaDePago: TDateTime;
      PeriodoDePagoInicial: TDateTime;
      PeriodoDePagoFinal: TDateTime;
      Antiguedad: Integer;
      property DiasPagados: Real read fDiasPagados;
      property XML: String read XMLNomina;
      property Percepciones: TPFNomina_Conceptos read ListarPercepciones;
      property Deducciones: TPFNomina_Conceptos read ListarDeducciones;
      property TotalPercepciones: Real read fTotalPercepciones;
      property TotalDeducciones: Real read fTotalDeducciones;
    public
      procedure AgregarConceptos(Concepto: TPFNomina_Concepto; Tipo: TPFTipoConcepto); overload;
      procedure AgregarConceptos(Conceptos: TPFNomina_Conceptos; Tipo: TPFTipoConcepto); overload;
      procedure AgregarIncapacidades(Incapacidad: TPFNomina_Incapacidad); overload;
      procedure AgregarIncapacidades(Incapacidades: TPFNomina_Incapacidades); overload;
      procedure AgregarHorasExtra(HoraExtra: TPFNomina_HoraExtra); overload;
      procedure AgregarHorasExtra(HorasExtra: TPFNomina_HorasExtra); overload;
  end;

  TPFFacturaElectronica = class
    private
      fFacturaXML: TXMLDocument;
      fAddendaXML: TXMLDocument;
      fXMLComprobante: IXMLNode;
      fXMLEmisor: IXMLNode;
      fXMLReceptor: IXMLNode;
      fXMLEmisorDomicilio: IXMLNode;
      fXMLReceptorDomicilio: IXMLNode;
      fXMLRegimenFiscal: IXMLNode;
      fXMLConceptos: IXMLNode;
      fXMLImpuestos: IXMLNode;
      fXMLComplemento: IXMLNode;
      fXMLAddenda: IXMLNode;
      fXMLAddendaSTR: String;
      fEmisor: TPFContribuyente;
      fReceptor: TPFContribuyente;
      fTipoComprobante: TPFTipoComprobante;
      fArrConceptos: TPFConceptos;
      fArrImpuestos: TPFImpuestos;
      fArrImpuestosTrasladados: TPFImpuestos;
      fArrImpuestosRetenidos: TPFImpuestos;
      fSubTotal: Currency;
      fTotal: Currency;
      fDescuentos: Currency;
      fTotalImpuestosTrasladados: Currency;
      fTotalImpuestosRetenidos: Currency;
      fTimbreFiscal: TPFTimbre;
      fFueTimbrado: Boolean;
      fContieneAddenda: Boolean;
      fXMLGenerado: Boolean;
      fLugarExpedicion: String;
      fCertificado: TPFCertificado;
      fFechaGeneracion: TDateTime;
      fCadenaOriginal: String;
      fCSD: TPFCSD;
      fSellarXML: Boolean;
      fCadenaOriginalCalculada: String;
      fSelloCFD: String;
      fXMLCFD: String;
      Fxserie : String ;
      procedure RegistrarEmisor(cEmisor: TPFContribuyente);
      procedure RegistrarReceptor(cReceptor: TPFContribuyente);
      procedure SetXML(XML: WideString);
      procedure AsignarConceptosXML;
      procedure AsignarImpuestosXML;
      procedure AsignarPropiedadesXML;
      procedure AsignarComplementoNominaXML;
      procedure AsignarAddendaXML;
      procedure _SellarXML;
      function _CalcularCadenaOriginal: String;
      function ObtenerImporte(Concepto: TPFConcepto): Currency;
      function GetXML: WideString;
      function GetCadenaOriginal: String;
    public
      Folio: TPFFolio;
      Propiedades: TPFPropiedades;
      PropiedadesNomina: TPFComplementoNomina;
      property XML: WideString read GetXML write SetXML;
      property Total: Currency read fTotal;
      property CadenaOriginal: String read GetCadenaOriginal;
      property LugarDeExpedicion: String read fLugarExpedicion;
      property Certificado: TPFCertificado read fCertificado;
      property FechaGeneracion: TDateTime read fFechaGeneracion;
      property CadenaCalculada: String read _CalcularCadenaOriginal;
    public
      constructor Create(cEmisor, cReceptor: TPFContribuyente; cTipoComprobante: TPFTipoComprobante);
      procedure Guardar(Ruta: String);
      procedure AgregarConceptos(Concepto: TPFConcepto); overload;
      procedure AgregarConceptos(Conceptos: TPFConceptos); overload;
      procedure AgregarImpuestos(Impuesto: TPFImpuesto); overload;
      procedure AgregarImpuestos(Impuestos: TPFImpuestos); overload;
      procedure InsertarAddenda(XML: String);
      procedure SellarXML(CSD: TPFCSD);
      procedure Generar;
      procedure AsignarTimbreFiscal(Timbre: TPFTimbre);
  end;

implementation

constructor TPFFacturaElectronica.Create(cEmisor, cReceptor: TPFContribuyente; cTipoComprobante: TPFTipoComprobante);
begin
  fFacturaXML := TXMLDocument.Create(Application);
  fFacturaXML.Active := True;
  fFacturaXML.Options := fFacturaXML.Options + [doNodeAutoIndent];
  fFacturaXML.ParseOptions := fFacturaXML.ParseOptions + [poPreserveWhiteSpace];
  fFacturaXML.Version:='1.0';
  fFacturaXML.Encoding:='UTF-8';

  fFueTimbrado := False;

  fFechaGeneracion := Now;

  fXMLComprobante := fFacturaXML.AddChild('cfdi:Comprobante');
  fXMLComprobante.Attributes['xmlns:cfdi'] := 'http://www.sat.gob.mx/cfd/3';
  fXMLComprobante.Attributes['xmlns:xsi'] := 'http://www.w3.org/2001/XMLSchema-instance';
  fXMLComprobante.Attributes['xmlns:xs'] := 'http://www.w3.org/2001/XMLSchema';
  fXMLComprobante.Attributes['xsi:schemaLocation'] := 'http://www.sat.gob.mx/cfd/3 http://www.sat.gob.mx/sitio_internet/cfd/3/cfdv32.xsd';
  fXMLComprobante.Attributes['version'] := '3.2';
  fXMLComprobante.Attributes['fecha'] := TFEReglamentacion.ComoFechaHora(fFechaGeneracion);
//  fXMLComprobante.Attributes['sello'] := '0';
//  fXMLComprobante.Attributes['noCertificado'] := '0';
//  fXMLComprobante.Attributes['certificado'] := '0';

  if (cEmisor.ExpedidoEn.Numero <> cEmisor.Domicilio.Numero) AND (cEmisor.ExpedidoEn.Calle <> cEmisor.Domicilio.Calle) then begin
    fXMLComprobante.Attributes['LugarExpedicion'] := cEmisor.ExpedidoEn.Municipio + ', ' + cEmisor.ExpedidoEn.Estado + ', ' + cEmisor.ExpedidoEn.Pais;
  end else begin
    fXMLComprobante.Attributes['LugarExpedicion'] := cEmisor.Domicilio.Municipio + ', ' + cEmisor.Domicilio.Estado + ', ' + cEmisor.Domicilio.Pais;
  end;

  fLugarExpedicion := fXMLComprobante.Attributes['LugarExpedicion'];

  RegistrarEmisor(cEmisor);
  RegistrarReceptor(cReceptor);
  fContieneAddenda := False;

  fXMLConceptos := fXMLComprobante.AddChild('cfdi:Conceptos');

  fTipoComprobante := cTipoComprobante;

  if cTipoComprobante = trNomina then begin
    PropiedadesNomina := TPFComplementoNomina.Create(cEmisor, cReceptor);
    PropiedadesNomina.fNominaGenerada := false;
  end;

end;

function TPFFacturaElectronica.GetXML: WideString;
begin
  Result := fFacturaXML.XML.Text;
end;

procedure TPFFacturaElectronica.SetXML(XML: WideString);
Var
  documentoXMLTimbrado: IXMLDocument;
  XMLTimbrado: TXMLDocument;
  Root: IXMLNode;
begin
//  fXMLComplemento := fXMLComprobante.AddChild('cfdi:Complemento');
//  XMLTimbrado := TXMLDocument.Create(Application);
//  XMLTimbrado.LoadFromXML(fTimbreFiscal.Timbre);
//  XMLTimbrado.Active := True;
//
//  fXMLComplemento.ChildNodes.Add(XMLTimbrado.DocumentElement);

  fFacturaXML.XML.Text := XML;
//  fFacturaXML.XML := XML;

  documentoXMLTimbrado := LoadXMLData(XML);

  Root := documentoXMLTimbrado.DocumentElement;

  if fFueTimbrado then begin
    fCertificado.NumeroSerie := Root.Attributes['noCertificado'];
  end;

end;

procedure TPFFacturaElectronica.Guardar(Ruta: string);
begin
  fFacturaXML.Active := True;
  fFacturaXML.XML.Text := xmlDoc.FormatXMLData(fFacturaXML.XML.Text);
  fFacturaXML.Active := True;
  fFacturaXML.SaveToFile(Ruta);
end;

procedure TPFFacturaElectronica.Generar;
Var
  i: Integer;
  Concepto: TPFConcepto;
  Impuesto: TPFImpuesto;
  DescuentosPorRetencion: Real;
begin
  fFacturaXML.Active := True;
  if fTipoComprobante = trNomina then begin
    PropiedadesNomina.GenerarNomina;
    Propiedades.TipoDeComprobante := 'egreso';
    Concepto.Cantidad := 1;
    Concepto.Unidad := 'SERVICIO';
    Concepto.Descripcion := 'PAGO DE NOMINA';
    Concepto.PrecioUnitario := PropiedadesNomina.fTotalPercepciones;
    AgregarConceptos(Concepto);
    DescuentosPorRetencion := 0;
    for i := Low(PropiedadesNomina.fArrConceptos_Deducciones) to High(PropiedadesNomina.fArrConceptos_Deducciones) do begin
      if PropiedadesNomina.fArrConceptos_Deducciones[i].EsDeduccionTipoImpuestoRetenido then begin
        Impuesto.Tipo := impRetenido;
        Impuesto.Impuesto := PropiedadesNomina.fArrConceptos_Deducciones[i].Concepto;
        Impuesto.Importe := PropiedadesNomina.fArrConceptos_Deducciones[i].ImporteExento;
        Impuesto.Tasa := 0;
        AgregarImpuestos(Impuesto);
        DescuentosPorRetencion := DescuentosPorRetencion + Impuesto.Importe;
      end;
    end;

    Propiedades.DescuentoImporte := PropiedadesNomina.fTotalDeducciones - DescuentosPorRetencion;
    Propiedades.DescuentoDescripcion := 'DEDUCCIONES DE NOMINA';
  end;
  AsignarPropiedadesXML;
  AsignarConceptosXML;
  AsignarImpuestosXML;
  if fTipoComprobante = trNomina then begin
    AsignarComplementoNominaXML;
  end;
  AsignarAddendaXML;

  fTotal := (fSubtotal) - fDescuentos - fTotalImpuestosRetenidos + fTotalImpuestosTrasladados;
  fXMLComprobante.Attributes['subTotal'] := TFEReglamentacion.ComoMoneda(fSubtotal);
  fXMLComprobante.Attributes['total'] := TFEReglamentacion.ComoMoneda(fTotal);
  fFacturaXML.Active := True;

  fXMLGenerado := True;

  if fSellarXML then begin
    fFacturaXML.SaveToXML(fXMLCFD);
    _SellarXML;
  end;
end;

procedure TPFFacturaElectronica.SellarXML(CSD: TPFCSD);
Var
  SellosCSD: TCertificadoSellos;
begin
  fCSD := CSD;
  Try
    SellosCSD := TCertificadoSellos.Create(CSD);
    if Not SellosCSD.Vigente then begin
      raise Exception.Create('El certificado está vencido');
    end;

    if Not SellosCSD.EsParejaDe then begin
      raise Exception.Create('El certificado y la llave no corresponden al mismo emisor');
    end;

    fCertificado := SellosCSD.Certificado;

    fXMLComprobante.Attributes['noCertificado'] := fCertificado.NumeroSerie;

    fXMLComprobante.Attributes['certificado'] := StringReplace(SellosCSD.ComoBase64, chr(13)+CHR(10), '',[rfReplaceAll, rfIgnoreCase]);
    fSellarXML:= True;
  Finally
    SellosCSD.Free;
  End;
end;

procedure TPFFacturaElectronica._SellarXML;
Var
  CadenaOriginalCalculada: String;
  SelloDigital: TSelloDigital;
  aUTF8Str: UTF8String;

begin
  CadenaOriginalCalculada := CadenaCalculada;
  Try
    SelloDigital := TSelloDigital.Create(CadenaOriginalCalculada, fCSD);
    fSelloCFD := SelloDigital.SelloCalculado;
    fXMLComprobante.Attributes['sello'] := fSelloCFD;
  Finally
    FreeAndNil(SelloDigital);
  End;
end;

function TPFFacturaElectronica._CalcularCadenaOriginal: String;
Var
  aXML: IXMLDocument;
  aXSL: IXMLDocument;
  CadenaOriginalCalculada: WideString;
begin
  if fXMLGenerado then
  begin
    if fCadenaOriginalCalculada = '' then
    begin
      fFacturaXML.Active := True;
      aXML := LoadXMLData(fXMLCFD);
      aXSL := LoadXMLDocument('xslt_32/cadenaoriginal_3_2.xslt');

      aXML.DocumentElement.TransformNode(aXSL.DocumentElement, CadenaOriginalCalculada);


//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'á', 'a', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'é', 'e', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'í', 'i', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'ó', 'o', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'ú', 'u', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'Á', 'A', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'É', 'E', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'Í', 'I', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'Ó', 'O', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'Ú', 'U', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'ñ', '&ntilde;', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, 'Ñ', '&Ntilde;', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, '&', '&amp;', [rfReplaceAll, rfIgnoreCase]);
//      CadenaOriginalCalculada := StringReplace(CadenaOriginalCalculada, '"', '&amp;', [rfReplaceAll, rfIgnoreCase]);
//

      fCadenaOriginalCalculada := UTF8Encode(CadenaOriginalCalculada);
      fCadenaOriginalCalculada := '|' + fCadenaOriginalCalculada + '||';
      result := fCadenaOriginalCalculada;
    end else begin
      result := fCadenaOriginalCalculada;
    end;
  end else begin
    result := 'Se requiere generar primero el XML para visualizar la Cadena Original';
  end;
end;

procedure TPFFacturaElectronica.AsignarTimbreFiscal(Timbre: TPFTimbre);
begin
  fTimbreFiscal:= Timbre;
  if fTimbreFiscal.UUID <> '' then begin
    fFueTimbrado := True;
  end;
  xml := Timbre.XML;
end;

function TPFFacturaElectronica.GetCadenaOriginal;
Var
  XML: IXMLDocument;
  XSL: IXMLDocument;
  CadenaOriginal: WideString;
begin
  if fCadenaOriginal = '' then begin
    if fFueTimbrado then begin
      XML := LoadXMLData(fTimbreFiscal.XML);
      XSL := LoadXMLDocument('xslt_32/cadenaoriginal_TFD_1_0.xslt');

      XML.DocumentElement.TransformNode(XSL.DocumentElement, CadenaOriginal);

      fCadenaOriginal := UTF8Encode(CadenaOriginal);
      result := fCadenaOriginal;
    end else begin
      result := '';
    end;
  end else begin
    result := fCadenaOriginal;
  end;
end;

procedure TPFFacturaElectronica.AsignarPropiedadesXML;
begin
  fFacturaXML.Active := True;

 if Folio.Folio <> 0 then begin
    fXMLComprobante.Attributes['folio'] := Folio.Folio;
  end;
  if Propiedades.TipoDeComprobante <> '' then begin
    fXMLComprobante.Attributes['tipoDeComprobante'] := Propiedades.TipoDeComprobante;
  end else begin
    raise Exception.Create('No se definió el tipo de comprobante: "Ingreso", "Egreso", "Traslado"');
  end;
  if Propiedades.FormaDePago <> '' then begin
    fXMLComprobante.Attributes['formaDePago'] := Propiedades.FormaDePago;
  end else begin
    raise Exception.Create('No se definió la forma de pago: "En una sola exhibición", "Plazos"');
  end;
  if Propiedades.MetodoDePago <> '' then begin
    fXMLComprobante.Attributes['metodoDePago'] := Propiedades.MetodoDePago;
  end else begin
    raise Exception.Create('No se definió el método de pago: "Transferencia Electronica", "Efectivo"');
  end;

  if Propiedades.CondicionesDePago <> '' then begin
    fXMLComprobante.Attributes['condicionesDePago'] := Propiedades.CondicionesDePago;
  end;
  if Propiedades.DescuentoDescripcion <> '' then begin
    fXMLComprobante.Attributes['motivoDescuento'] := Propiedades.DescuentoDescripcion;
  end;
  if Propiedades.DescuentoImporte <> 0 then begin
    fXMLComprobante.Attributes['descuento'] := Propiedades.DescuentoImporte;
    fDescuentos := Propiedades.DescuentoImporte;
  end;
  if Propiedades.Moneda <> '' then begin
    fXMLComprobante.Attributes['Moneda'] := Propiedades.Moneda;
  end;

  if Propiedades.NumeroDeCuenta <> '' then begin
    fXMLComprobante.Attributes['NumCtaPago'] := Propiedades.NumeroDeCuenta;
  end;

 //Ojo saul
  if Propiedades.FolioFiscalOrig <> '' then begin
    fXMLComprobante.Attributes['FolioFiscalOrig'] := Propiedades.FolioFiscalOrig;
  end;
  if Propiedades.SerieFolioFiscalOrig <> '' then begin
    fXMLComprobante.Attributes['SerieFolioFiscalOrig'] := Propiedades.SerieFolioFiscalOrig;
  end;
  if Propiedades.FechaValida <> '' then begin
    fXMLComprobante.Attributes['FechaFolioFiscalOrig'] := TFEReglamentacion.ComoFechaHora(Propiedades.FechaFolioFiscalOrig); ;
  end;
  if Propiedades.MontoFolioFiscalOrig <> 0 then begin
    fXMLComprobante.Attributes['MontoFolioFiscalOrig'] := Propiedades.MontoFolioFiscalOrig;
  end;




end;

procedure TPFFacturaElectronica.AsignarConceptosXML;
Var
  i: Integer;
  fXML_Conceptos: IXMLNode;
begin
  for i := Low(fArrConceptos) to High(fArrConceptos) do begin
    fXML_Conceptos := fXMLConceptos.AddChild('Concepto');
    fXML_Conceptos.Attributes['cantidad'] := fArrConceptos[i].Cantidad;
    fXML_Conceptos.Attributes['unidad'] := fArrConceptos[i].Unidad;
    fXML_Conceptos.Attributes['descripcion'] := fArrConceptos[i].Descripcion;
    fXML_Conceptos.Attributes['valorUnitario'] := TFEReglamentacion.ComoMoneda(fArrConceptos[i].PrecioUnitario);
    fXML_Conceptos.Attributes['importe'] := TFEReglamentacion.ComoMoneda(ObtenerImporte(fArrConceptos[i]));
  end;
  fXMLComprobante.Attributes['subTotal'] := TFEReglamentacion.ComoMoneda(fSubtotal);
end;

procedure TPFFacturaElectronica.AsignarImpuestosXML;
var
  i: Integer;
  fXML_Impuestos,
  fXMLImpuestosTrasladados,
  fXML_ImpuestosTrasladados,
  fXMLImpuestosRetenidos,
  fXML_ImpuestosRetenidos: IXMLNode;
begin
  if Length(fArrImpuestos) > 0 then begin
    fXMLImpuestos := fXMLComprobante.AddChild('cfdi:Impuestos');
    if Length(fArrImpuestosRetenidos) > 0 then begin
      fXMLImpuestosRetenidos := fXMLImpuestos.AddChild('Retenciones');
      for i := Low(fArrImpuestosRetenidos) to High(fArrImpuestosRetenidos) do begin
        fXML_ImpuestosRetenidos := fXMLImpuestosRetenidos.AddChild('Retencion');
        fXML_ImpuestosRetenidos.Attributes['impuesto'] := fArrImpuestosRetenidos[i].Impuesto;
//        if fArrImpuestosRetenidos[i].Tasa <> 0 then begin
//          fXML_ImpuestosRetenidos.Attributes['tasa'] := TFEReglamentacion.ComoMoneda(fArrImpuestosRetenidos[i].Tasa);
//        end;
        fXML_ImpuestosRetenidos.Attributes['importe'] := TFEReglamentacion.ComoMoneda(fArrImpuestosRetenidos[i].Importe);
        fTotalImpuestosRetenidos := fTotalImpuestosRetenidos + fArrImpuestosRetenidos[i].Importe;
      end;
      fXMLImpuestos.Attributes['totalImpuestosRetenidos'] := TFEReglamentacion.ComoMoneda(fTotalImpuestosRetenidos);
    end;
    if Length(fArrImpuestosTrasladados) > 0 then begin
      fXMLImpuestosTrasladados := fXMLImpuestos.AddChild('Traslados');
      for i := Low(fArrImpuestosTrasladados) to High(fArrImpuestosTrasladados) do begin
        fXML_ImpuestosTrasladados := fXMLImpuestosTrasladados.AddChild('Traslado');
        fXML_ImpuestosTrasladados.Attributes['impuesto'] := fArrImpuestosTrasladados[i].Impuesto;
        if fArrImpuestosTrasladados[i].Tasa <> 0 then begin
          fXML_ImpuestosTrasladados.Attributes['tasa'] := TFEReglamentacion.ComoMoneda(fArrImpuestosTrasladados[i].Tasa);
        end;
        fXML_ImpuestosTrasladados.Attributes['importe'] := TFEReglamentacion.ComoMoneda(fArrImpuestosTrasladados[i].Importe);
        fTotalImpuestosTrasladados := fTotalImpuestosTrasladados + fArrImpuestosTrasladados[i].Importe;
      end;
      fXMLImpuestos.Attributes['totalImpuestosTrasladados'] := TFEReglamentacion.ComoMoneda(fTotalImpuestosTrasladados);
    end;
  end;
end;

procedure TPFFacturaElectronica.AgregarConceptos(Concepto: TPFConcepto);
begin
  SetLength(fArrConceptos, Length(fArrConceptos) + 1);
  fArrConceptos[Length(fArrConceptos) - 1] := Concepto;
  fSubTotal := fSubTotal + ObtenerImporte(Concepto);
  fTotal := fTotal + ObtenerImporte(Concepto);
end;

procedure TPFFacturaElectronica.AgregarConceptos(Conceptos: TPFConceptos);
var
  i: Integer;
begin
  for i := Low(Conceptos) to High(Conceptos) do begin
    SetLength(fArrConceptos, Length(fArrConceptos) + 1);
    fArrConceptos[Length(fArrConceptos) - 1] := Conceptos[i];
    fSubTotal := fSubTotal + ObtenerImporte(Conceptos[i]);
    fTotal := fTotal + ObtenerImporte(Conceptos[i]);
  end;
end;

procedure TPFFacturaElectronica.AgregarImpuestos(Impuesto: TPFImpuesto);
begin
  SetLength(fArrImpuestos, Length(fArrImpuestos) + 1);
  fArrImpuestos[Length(fArrImpuestos) - 1] := Impuesto;

  if Impuesto.Tipo = impRetenido then begin
    SetLength(fArrImpuestosRetenidos, Length(fArrImpuestosRetenidos) + 1);
    fArrImpuestosRetenidos[Length(fArrImpuestosRetenidos) - 1] := Impuesto;
  end;
  if Impuesto.Tipo = impTrasladado then begin
    SetLength(fArrImpuestosTrasladados, Length(fArrImpuestosTrasladados) + 1);
    fArrImpuestosTrasladados[Length(fArrImpuestosTrasladados) - 1] := Impuesto;
  end;
end;

procedure TPFFacturaElectronica.AgregarImpuestos(Impuestos: TPFImpuestos);
var
  i: Integer;
begin
  for i := Low(Impuestos) to High(Impuestos) do begin
    SetLength(fArrImpuestos, Length(fArrImpuestos) + 1);
    fArrImpuestos[Length(fArrImpuestos) - 1] := Impuestos[i];

    if Impuestos[i].Tipo = impRetenido then begin
      SetLength(fArrImpuestosRetenidos, Length(fArrImpuestosRetenidos) + 1);
      fArrImpuestosRetenidos[Length(fArrImpuestosRetenidos) - 1] := Impuestos[i];
    end;
    if Impuestos[i].Tipo = impTrasladado then begin
      SetLength(fArrImpuestosTrasladados, Length(fArrImpuestosTrasladados) + 1);
      fArrImpuestosTrasladados[Length(fArrImpuestosTrasladados) - 1] := Impuestos[i];
    end;
  end;
end;

procedure TPFFacturaElectronica.RegistrarEmisor(cEmisor: TPFContribuyente);
begin
  if cEmisor.RazonSocial <> '' then begin
    fEmisor := cEmisor;
    fXMLEmisor := fXMLComprobante.AddChild('cfdi:Emisor');
    fXMLEmisor.Attributes['rfc'] := cEmisor.RFC;
    fXMLEmisor.Attributes['nombre'] := cEmisor.RazonSocial;
    if cEmisor.Domicilio.Calle <> '' then begin
      fXMLEmisorDomicilio := fXMLEmisor.AddChild('cfdi:DomicilioFiscal');
      fXMLEmisorDomicilio.Attributes['calle'] := cEmisor.Domicilio.Calle;
      if cEmisor.Domicilio.Numero <> '' then begin
        fXMLEmisorDomicilio.Attributes['noExterior'] := cEmisor.Domicilio.Numero;
      end;
      if cEmisor.Domicilio.NumeroInterior <> '' then begin
        fXMLEmisorDomicilio.Attributes['noInterior'] := cEmisor.Domicilio.NumeroInterior;
      end;
      if cEmisor.Domicilio.Colonia <> '' then begin
        fXMLEmisorDomicilio.Attributes['colonia'] := cEmisor.Domicilio.Colonia;
      end;
      if cEmisor.Domicilio.CodigoPostal <> '' then begin
        fXMLEmisorDomicilio.Attributes['localidad'] := cEmisor.Domicilio.Localidad;
      end;
      if cEmisor.Domicilio.Localidad <> '' then begin
        fXMLEmisorDomicilio.Attributes['municipio'] := cEmisor.Domicilio.Municipio;
      end;
      if cEmisor.Domicilio.Municipio <> '' then begin
        fXMLEmisorDomicilio.Attributes['codigoPostal'] := cEmisor.Domicilio.CodigoPostal;
      end;
      if cEmisor.Domicilio.Estado <> '' then begin
        fXMLEmisorDomicilio.Attributes['estado'] := cEmisor.Domicilio.Estado;
      end;
      if cEmisor.Domicilio.Pais <> '' then begin
        fXMLEmisorDomicilio.Attributes['pais'] := cEmisor.Domicilio.Pais;
      end;
    end;

    if cEmisor.RegimenFiscal <> '' then begin
      fXMLRegimenFiscal := fXMLEmisor.AddChild('RegimenFiscal');
      fXMLRegimenFiscal.Attributes['xmlns'] := 'http://www.sat.gob.mx/cfd/3';
      fXMLRegimenFiscal.Attributes['Regimen'] := cEmisor.RegimenFiscal;
    end else begin
      raise Exception.Create('El emisor debe tener un regimen fiscal asignado');
    end;
  end else begin
    raise Exception.Create('El emisor no fue registrado');
  end;
end;

procedure TPFFacturaElectronica.RegistrarReceptor(cReceptor: TPFContribuyente);
begin
  if cReceptor.RazonSocial <> '' then begin
    fReceptor := cReceptor;
    fXMLReceptor := fXMLComprobante.AddChild('cfdi:Receptor');
    fXMLReceptor.Attributes['rfc'] := cReceptor.RFC;
    fXMLReceptor.Attributes['nombre'] := cReceptor.RazonSocial;
    if cReceptor.Domicilio.Calle <> '' then begin
      fXMLReceptorDomicilio := fXMLReceptor.AddChild('Domicilio');
      fXMLReceptorDomicilio.Attributes['calle'] := cReceptor.Domicilio.Calle;
      if cReceptor.Domicilio.Numero <> '' then begin
        fXMLReceptorDomicilio.Attributes['noExterior'] := cReceptor.Domicilio.Numero;
      end;
      if cReceptor.Domicilio.NumeroInterior <> '' then begin
        fXMLReceptorDomicilio.Attributes['noInterior'] := cReceptor.Domicilio.NumeroInterior;
      end;
      if cReceptor.Domicilio.Colonia <> '' then begin
        fXMLReceptorDomicilio.Attributes['colonia'] := cReceptor.Domicilio.Colonia;
      end;
      if cReceptor.Domicilio.CodigoPostal <> '' then begin
        fXMLReceptorDomicilio.Attributes['localidad'] := cReceptor.Domicilio.Localidad;
      end;
      if cReceptor.Domicilio.Localidad <> '' then begin
        fXMLReceptorDomicilio.Attributes['municipio'] := cReceptor.Domicilio.Municipio;
      end;
      if cReceptor.Domicilio.Municipio <> '' then begin
        fXMLReceptorDomicilio.Attributes['codigoPostal'] := cReceptor.Domicilio.CodigoPostal;
      end;
      if cReceptor.Domicilio.Estado <> '' then begin
        fXMLReceptorDomicilio.Attributes['estado'] := cReceptor.Domicilio.Estado;
      end;
      if cReceptor.Domicilio.Pais <> '' then begin
        fXMLReceptorDomicilio.Attributes['pais'] := cReceptor.Domicilio.Pais;
      end;
    end;

  end else begin
    raise Exception.Create('El receptor no fue registrado');
  end;
end;

function TPFFacturaElectronica.ObtenerImporte(Concepto: TPFConcepto): Currency;
begin
  Result := Concepto.Cantidad * Concepto.PrecioUnitario;
end;

procedure TPFFacturaElectronica.AsignarComplementoNominaXML;
Var
  documentoXMLTimbrado: IXMLDocument;
  XMLComplementoNomina: TXMLDocument;
begin
  fXMLComplemento := fXMLComprobante.AddChild('cfdi:Complemento');
  XMLComplementoNomina := TXMLDocument.Create(Application);
  XMLComplementoNomina.LoadFromXML(PropiedadesNomina.XML);
  XMLComplementoNomina.Active := True;

  fXMLComplemento.ChildNodes.Add(XMLComplementoNomina.DocumentElement);
end;

procedure TPFFacturaElectronica.InsertarAddenda(XML: string);
Var
  documentoXMLTimbrado: IXMLDocument;
begin
  Try
    fAddendaXML := TXMLDocument.Create(Application);
    fAddendaXML.LoadFromXML(XML);
    fAddendaXML.Active := True;
  Except
    On E: Exception do begin
      Exception.Create('El XML de la addenda es inválido');
    end;
  End;

  fContieneAddenda := True;

  if fXMLGenerado then begin
    fXMLAddenda := fXMLComprobante.AddChild('cfdi:Addenda');
    fXMLAddenda.ChildNodes.Add(fAddendaXML.DocumentElement);
  end;
end;

procedure TPFFacturaElectronica.AsignarAddendaXML;
begin
  if fContieneAddenda then begin
    if Not fXMLGenerado then begin
      fXMLAddenda := fXMLComprobante.AddChild('cfdi:Addenda');
      fXMLAddenda.ChildNodes.Add(fAddendaXML.DocumentElement);
    end;
  end;
end;


////////////////////////////////////////////////
///           COMPLEMENTO NOMINA
////////////////////////////////////////////////

constructor TPFComplementoNomina.Create(cEmisor: TPFContribuyente; cReceptor: TPFContribuyente);
begin
  fComplementoNominaXML := TXMLDocument.Create(Application);
  fComplementoNominaXML.Active := True;

  fComplementoNominaXML.Version:='1.0';
  fComplementoNominaXML.Encoding:='UTF-8';

  fXMLComplemento := fComplementoNominaXML.AddChild('nomina:Nomina');
  fXMLComplemento.Attributes['xmlns:nomina'] := 'http://www.sat.gob.mx/nomina';
  fXMLComplemento.Attributes['Version'] := '1.1';
  if cEmisor.RegistroPatronal <> '' then begin
    fXMLComplemento.Attributes['RegistroPatronal'] := cReceptor.RegistroPatronal;
  end;
  fXMLComplemento.Attributes['NumEmpleado'] := cReceptor.ComplementoNomina.NumeroEmpleado;
  fXMLComplemento.Attributes['CURP'] := cReceptor.ComplementoNomina.Curp;
  fXMLComplemento.Attributes['TipoRegimen'] := cReceptor.ComplementoNomina.TipoDeRegimen;
  if cReceptor.ComplementoNomina.NumeroSeguridadSocial <> '' then begin
    fXMLComplemento.Attributes['NumSeguridadSocial'] := cReceptor.ComplementoNomina.NumeroSeguridadSocial;
  end;
  fXMLComplemento.Attributes['FechaPago'] := TFEReglamentacion.ComoFechaComun(cReceptor.ComplementoNomina.FechaDePago);
  fXMLComplemento.Attributes['FechaInicialPago'] := TFEReglamentacion.ComoFechaComun(cReceptor.ComplementoNomina.PeriodoDePago_Inicial);
  fXMLComplemento.Attributes['FechaFinalPago'] := TFEReglamentacion.ComoFechaComun(cReceptor.ComplementoNomina.PeriodoDePago_Final);
  if cReceptor.ComplementoNomina.DiasPagados > 0 then begin
    fDiasPagados := cReceptor.ComplementoNomina.DiasPagados;
  end else begin
    fDiasPagados := DaysBetween(cReceptor.ComplementoNomina.PeriodoDePago_Final, cReceptor.ComplementoNomina.PeriodoDePago_Inicial) + 1;
    cReceptor.ComplementoNomina.DiasPagados := fDiasPagados;
  end;
  fXMLComplemento.Attributes['NumDiasPagados'] := fDiasPagados;
  if cReceptor.ComplementoNomina.Departamento <> '' then begin
    fXMLComplemento.Attributes['Departamento'] := cReceptor.ComplementoNomina.Departamento;
  end;
  if cReceptor.ComplementoNomina.ClabeBancaria <> '' then begin
    fXMLComplemento.Attributes['CLABE'] := cReceptor.ComplementoNomina.ClabeBancaria;
  end;
  if cReceptor.ComplementoNomina.Banco <> 0 then begin
    fXMLComplemento.Attributes['Banco'] := TFEReglamentacion.ComoCatalogo(cReceptor.ComplementoNomina.Banco);
  end;
  if cReceptor.ComplementoNomina.FechaInicioLabores > 0 then begin
    fXMLComplemento.Attributes['FechaInicioRelLaboral'] := TFEReglamentacion.ComoFechaComun(cReceptor.ComplementoNomina.FechaInicioLabores);
    Antiguedad := WeeksBetween(cReceptor.ComplementoNomina.FechaInicioLabores, cReceptor.ComplementoNomina.FechaDePago);
    fXMLComplemento.Attributes['Antiguedad'] := Antiguedad;
  end;
  if cReceptor.ComplementoNomina.Puesto <> '' then begin
    fXMLComplemento.Attributes['Puesto'] := cReceptor.ComplementoNomina.Puesto;
  end;
  if cReceptor.ComplementoNomina.TipoDeContrato <> '' then begin
    fXMLComplemento.Attributes['TipoContrato'] := cReceptor.ComplementoNomina.TipoDeContrato;
  end;
  if cReceptor.ComplementoNomina.TipoDeJornada <> '' then begin
    fXMLComplemento.Attributes['TipoJornada'] := cReceptor.ComplementoNomina.TipoDeJornada;
  end;
  fXMLComplemento.Attributes['PeriodicidadPago'] := cReceptor.ComplementoNomina.PeriodosDePago;
  if cReceptor.ComplementoNomina.SalarioBase > 0 then begin
    fXMLComplemento.Attributes['SalarioBaseCotApor'] := TFEReglamentacion.ComoMoneda(cReceptor.ComplementoNomina.SalarioBase);
  end;
  if cReceptor.ComplementoNomina.TipoDeRiesgo > 0 then begin
    fXMLComplemento.Attributes['RiesgoPuesto'] := TFEReglamentacion.ComoCatalogo(cReceptor.ComplementoNomina.TipoDeRiesgo);
  end;
  if cReceptor.ComplementoNomina.SalarioDiarioIntegrado > 0 then begin
    fXMLComplemento.Attributes['SalarioDiarioIntegrado'] := TFEReglamentacion.ComoMoneda(cReceptor.ComplementoNomina.SalarioDiarioIntegrado);
  end;
end;

procedure TPFComplementoNomina.AgregarConceptos(Concepto: TPFNomina_Concepto; Tipo: TPFTipoConcepto);
begin
  if Tipo = cPercepciones then begin
    SetLength(fArrConceptos_Percepciones, Length(fArrConceptos_Percepciones) + 1);
    fArrConceptos_Percepciones[Length(fArrConceptos_Percepciones) - 1] := Concepto;
    fTotalPercepciones_Gravado := fTotalPercepciones_Gravado + Concepto.ImporteGravado;
    fTotalPercepciones_Exento := fTotalPercepciones_Exento + Concepto.ImporteExento;
  end;
  if Tipo = cDeducciones then begin
    SetLength(fArrConceptos_Deducciones, Length(fArrConceptos_Deducciones) + 1);
    fArrConceptos_Deducciones[Length(fArrConceptos_Deducciones) - 1] := Concepto;
    fTotalDeducciones_Gravado := fTotalDeducciones_Gravado + Concepto.ImporteGravado;
    fTotalDeducciones_Exento := fTotalDeducciones_Exento + Concepto.ImporteExento;
  end;
end;

procedure TPFComplementoNomina.AgregarConceptos(Conceptos: TPFNomina_Conceptos; Tipo: TPFTipoConcepto);
Var
  i: Integer;
begin
  for i := Low(Conceptos) to High(Conceptos) do begin
    if Tipo = cPercepciones then begin
      SetLength(fArrConceptos_Percepciones, Length(fArrConceptos_Percepciones) + 1);
      fArrConceptos_Percepciones[Length(fArrConceptos_Percepciones) - 1] := Conceptos[i];
      fTotalPercepciones_Gravado := fTotalPercepciones_Gravado + Conceptos[i].ImporteGravado;
      fTotalPercepciones_Exento := fTotalPercepciones_Exento + Conceptos[i].ImporteExento;
    end;
    if Tipo = cDeducciones then begin
      SetLength(fArrConceptos_Deducciones, Length(fArrConceptos_Deducciones) + 1);
      fArrConceptos_Deducciones[Length(fArrConceptos_Deducciones) - 1] := Conceptos[i];
      fTotalDeducciones_Gravado := fTotalDeducciones_Gravado + Conceptos[i].ImporteGravado;
      fTotalDeducciones_Exento := fTotalDeducciones_Exento + Conceptos[i].ImporteExento;
    end;
  end;
end;

procedure TPFComplementoNomina.AgregarIncapacidades(Incapacidad: TPFNomina_Incapacidad);
begin
  SetLength(fArrIncapacidades, Length(fArrIncapacidades) + 1);
  fArrIncapacidades[Length(fArrIncapacidades) - 1] := Incapacidad;
  fTotalPorIncapacidades := fTotalPorIncapacidades + Incapacidad.Descuento;
end;

procedure TPFComplementoNomina.AgregarIncapacidades(Incapacidades: TPFNomina_Incapacidades);
Var
  i: Integer;
begin
  for i := Low(Incapacidades) to High(Incapacidades) do begin
    SetLength(fArrIncapacidades, Length(fArrIncapacidades) + 1);
    fArrIncapacidades[Length(fArrIncapacidades) - 1] := Incapacidades[i];
    fTotalPorIncapacidades := fTotalPorIncapacidades + Incapacidades[i].Descuento;
  end;
end;

procedure TPFComplementoNomina.AgregarHorasExtra(HoraExtra: TPFNomina_HoraExtra);
begin
  SetLength(fArrHorasExtra, Length(fArrHorasExtra) + 1);
  fArrHorasExtra[Length(fArrHorasExtra) - 1] := HoraExtra;
  fTotalPorHorasExtra := fTotalPorHorasExtra + HoraExtra.ImportePagado;
end;

procedure TPFComplementoNomina.AgregarHorasExtra(HorasExtra: TPFNomina_HorasExtra);
Var
  i: Integer;
begin
  for i := Low(HorasExtra) to High(HorasExtra) do begin
    SetLength(fArrHorasExtra, Length(fArrHorasExtra) + 1);
    fArrHorasExtra[Length(fArrHorasExtra) - 1] := HorasExtra[i];
    fTotalPorHorasExtra := fTotalPorHorasExtra + HorasExtra[i].ImportePagado;
  end;
end;

procedure TPFComplementoNomina.GenerarNomina;
Var
  PercepcionNomina, 
  DeduccionNomina: TPFNomina_Concepto;
begin
  if fTotalPorHorasExtra > 0 then begin
    PercepcionNomina.Tipo := 19;
    PercepcionNomina.Clave := '19';
    PercepcionNomina.Concepto := 'HORAS EXTRA';
    PercepcionNomina.ImporteGravado := 0;
    PercepcionNomina.ImporteExento := fTotalPorHorasExtra;
    AgregarConceptos(PercepcionNomina, cPercepciones);
  end;
  if fTotalPorIncapacidades > 0 then begin
    DeduccionNomina.Tipo := 6;
    DeduccionNomina.Clave := '6';
    DeduccionNomina.Concepto := 'DESCUENTO POR INCAPACIDAD';
    DeduccionNomina.ImporteGravado := 0;
    DeduccionNomina.ImporteExento := fTotalPorIncapacidades;
    DeduccionNomina.EsDeduccionTipoImpuestoRetenido := False;
    AgregarConceptos(DeduccionNomina, cDeducciones);
  end;
  AgregarPercepcionesNominaXML;
  AgregarDeduccionesNominaXML;
  AgregarIncapacidadesNominaXML;
  AgregarHorasExtraNominaXML;
  fNominaGenerada := True;
end;

procedure TPFComplementoNomina.AgregarPercepcionesNominaXML;
var
  i: Integer;
  fXMLPercepciones_Conceptos: IXMLNode;
begin
  fXMLPercepciones := fXMLComplemento.AddChild('Percepciones');
  fTotalPercepciones_Gravado := 0;
  fTotalPercepciones_Exento := 0;
  for i := Low(fArrConceptos_Percepciones) to High(fArrConceptos_Percepciones) do begin
    fXMLPercepciones_Conceptos := fXMLPercepciones.AddChild('Percepcion');
    fXMLPercepciones_Conceptos.Attributes['TipoPercepcion'] := TFEReglamentacion.ComoCatalogo(fArrConceptos_Percepciones[i].Tipo);
    fXMLPercepciones_Conceptos.Attributes['Clave'] := TFEReglamentacion.ComoCatalogo(fArrConceptos_Percepciones[i].Clave);
    fXMLPercepciones_Conceptos.Attributes['Concepto'] := fArrConceptos_Percepciones[i].Concepto;
    fXMLPercepciones_Conceptos.Attributes['ImporteGravado'] := TFEReglamentacion.ComoMoneda(fArrConceptos_Percepciones[i].ImporteGravado);
    fXMLPercepciones_Conceptos.Attributes['ImporteExento'] := TFEReglamentacion.ComoMoneda(fArrConceptos_Percepciones[i].ImporteExento);

    fTotalPercepciones_Gravado := fTotalPercepciones_Gravado + fArrConceptos_Percepciones[i].ImporteGravado;
    fTotalPercepciones_Exento := fTotalPercepciones_Exento + fArrConceptos_Percepciones[i].ImporteExento;
  end;
  fTotalPercepciones := fTotalPercepciones_Gravado + fTotalPercepciones_Exento;
  fXMLPercepciones.Attributes['TotalGravado'] := TFEReglamentacion.ComoMoneda(fTotalPercepciones_Gravado);
  fXMLPercepciones.Attributes['TotalExento'] := TFEReglamentacion.ComoMoneda(fTotalPercepciones_Exento);
end;

procedure TPFComplementoNomina.AgregarDeduccionesNominaXML;
var
  i: Integer;
  fXMLDeducciones_Conceptos: IXMLNode;
begin
  fXMLDeducciones := fXMLComplemento.AddChild('Deducciones');
  fTotalDeducciones_Gravado := 0;
  fTotalDeducciones_Exento := 0;
  fTotalDeducciones := 0;
  for i := Low(fArrConceptos_Deducciones) to High(fArrConceptos_Deducciones) do begin
    fXMLDeducciones_Conceptos := fXMLDeducciones.AddChild('Deduccion');
    fXMLDeducciones_Conceptos.Attributes['TipoDeduccion'] := TFEReglamentacion.ComoCatalogo(fArrConceptos_Deducciones[i].Tipo);
    fXMLDeducciones_Conceptos.Attributes['Clave'] := TFEReglamentacion.ComoCatalogo(fArrConceptos_Deducciones[i].Clave);
    fXMLDeducciones_Conceptos.Attributes['Concepto'] := fArrConceptos_Deducciones[i].Concepto;
    fXMLDeducciones_Conceptos.Attributes['ImporteGravado'] := TFEReglamentacion.ComoMoneda(fArrConceptos_Deducciones[i].ImporteGravado);
    fXMLDeducciones_Conceptos.Attributes['ImporteExento'] := TFEReglamentacion.ComoMoneda(fArrConceptos_Deducciones[i].ImporteExento);

    fTotalDeducciones_Gravado := fTotalDeducciones_Gravado + fArrConceptos_Deducciones[i].ImporteGravado;
    fTotalDeducciones_Exento := fTotalDeducciones_Exento + fArrConceptos_Deducciones[i].ImporteExento;
  end;
  fTotalDeducciones := fTotalDeducciones_Gravado + fTotalDeducciones_Exento;
  fXMLDeducciones.Attributes['TotalGravado'] := TFEReglamentacion.ComoMoneda(fTotalDeducciones_Gravado);
  fXMLDeducciones.Attributes['TotalExento'] := TFEReglamentacion.ComoMoneda(fTotalDeducciones_Exento);
end;

procedure TPFComplementoNomina.AgregarIncapacidadesNominaXML;
Var
  i: Integer;
  fXMLIncapacidades_Conceptos: IXMLNode;
begin
  if Length(fArrIncapacidades) > 0 then begin
    fXMLIncapacidades := fXMLComplemento.AddChild('Incapacidades');
    for i := Low(fArrIncapacidades) to High(fArrIncapacidades) do begin
      fXMLIncapacidades_Conceptos := fXMLIncapacidades.AddChild('Incapacidad');
      fXMLIncapacidades_Conceptos.Attributes['DiasIncapacidad'] := fArrIncapacidades[i].Dias;
      fXMLIncapacidades_Conceptos.Attributes['TipoIncapacidad'] := TFEReglamentacion.ComoCatalogo(fArrIncapacidades[i].Tipo);
      fXMLIncapacidades_Conceptos.Attributes['Descuento'] := TFEReglamentacion.ComoMoneda(fArrIncapacidades[i].Descuento);
    end;
  end;
end;

procedure TPFComplementoNomina.AgregarHorasExtraNominaXML;
Var
  i: Integer;
  fXMLHorasExtra_Conceptos: IXMLNode;
begin
  if Length(fArrHorasExtra) > 0 then begin
    fXMLHorasExtra := fXMLComplemento.AddChild('HorasExtras');
    for i := Low(fArrHorasExtra) to High(fArrHorasExtra) do begin
      fXMLHorasExtra_Conceptos := fXMLHorasExtra.AddChild('HorasExtra');
      fXMLHorasExtra_Conceptos.Attributes['Dias'] := fArrHorasExtra[i].Dias;
      fXMLHorasExtra_Conceptos.Attributes['HorasExtra'] := fArrHorasExtra[i].HorasExtra;
      fXMLHorasExtra_Conceptos.Attributes['ImportePagado'] := TFEReglamentacion.ComoMoneda(fArrHorasExtra[i].ImportePagado);
      fXMLHorasExtra_Conceptos.Attributes['TipoHoras'] := fArrHorasExtra[i].TipoHoras;
    end;
  end;
end;

function TPFComplementoNomina.XMLNomina: String;
begin
  Result := fComplementoNominaXML.XML.Text;
end;

function TPFComplementoNomina.ListarPercepciones;
begin
  if fNominaGenerada then begin
    Result := fArrConceptos_Percepciones;
  end else begin
    raise Exception.Create('No se puede acceder a los conceptos sin que se haya generado el proceso de nomina');
  end;
end;

function TPFComplementoNomina.ListarDeducciones;
begin
  if fNominaGenerada then begin
    Result := fArrConceptos_Deducciones;
  end else begin
    raise Exception.Create('No se puede acceder a los conceptos sin que se haya generado el proceso de nomina');
  end;
end;

end.
