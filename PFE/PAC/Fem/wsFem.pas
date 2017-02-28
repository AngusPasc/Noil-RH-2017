unit wsFem;

interface

uses
  PFacturaElectronica, XMLDoc, XMLIntf, XMLDom, msxml, msxmldom, ComObj,
  SysUtils, Forms, IdCoderMIME;

type
  WSConecFEM = class(TObject)
    public
      function timbrado(layout: WideString; parametros : TPFParametros): TPFResultados;
      function cancelado(UUID: String; parametros : TPFParametros): TPFResultados;
      function base64encode(strLinea: ansiString): ansiString;
      function base64decode(strLinea: ansiString): ansiString;
  end;

implementation

function WSConecFEM.timbrado( layout: WideString; parametros : TPFParametros ): TPFResultados;
var
  linea, strLinea, layoutB64, soapResponse, cfdi: String;
  XMLHTTPCFDI, xmldoc: OleVariant;
  emisorRFC, userPass, userId, urlTimbrado, generarPDF, generarCBB, generarTXT: string;
  CFDIBase64, PDFBase64, CBBBase64, TXTBase64, UUID: WideString;
  ch: Char;
  Resultados : TPFResultados;
  xmlNode, node: IXMLDOMNode;
  xml: IXMLDomDocument;
  caracter: WideChar;

  UnicodeStr: String;
  UTF8Str: String;

  i, idAleatorio: Integer;

  Respuesta_TipoExcepcion,
  Respuesta_NumeroExcepcion,
  Respuesta_DescripcionExcepcion,
  Respuesta_XML,
  Respuesta_CBB,
  Respuesta_CadenaOriginal: String;

begin
  emisorRFC := Parametros.EmisorRFC;
  urlTimbrado := Parametros.URLTimbrado;
  userPass := Parametros.UserPassword;
  userId := Parametros.UserId;
  if Parametros.GenerarPDF then begin
    generarPDF := 'true';
  end else begin
    generarPDF := 'false';
  end;
  if Parametros.GenerarTXT then begin
    GenerarTXT := 'true';
  end else begin
    GenerarTXT := 'false';
  end;
  if Parametros.GenerarCBB then begin
    GenerarCBB := 'true';
  end else begin
    GenerarCBB := 'false';
  end;
  idAleatorio := 500;

  UTF8Str := UTF8Encode(layout);
//  SetCodePage(UTF8Str, 0, False);
  UnicodeStr := UTF8Str;

//  layoutB64 := base64encode(PWideChar(UnicodeStr));
  layoutB64 := base64encode(UnicodeStr);

  XMLHTTPCFDI := CreateOleObject('Microsoft.XMLHTTP');
  XMLHTTPCFDI.Open('POST', urlTimbrado);
  XMLHTTPCFDI.setRequestHeader('Content-Type', 'text/xml; charset=utf-8');
  XMLHTTPCFDI.send( '<?xml version="1.0" encoding="utf-8"?>' +
                      '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ' +
                        'xmlns:xsd="http://www.w3.org/2001/XMLSchema" ' +
                        'xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">' +
                        '<soap:Body>' +
                          '<TimbraCFDI xmlns="http://localhost/">' +
                            '<usuarioIntegrador>' + userId + '</usuarioIntegrador>' +
                            '<xmlComprobanteBase64>' + layoutB64 + '</xmlComprobanteBase64>' +
                            '<idComprobante>' + IntToStr(idAleatorio) + '</idComprobante>' +
                          '</TimbraCFDI>' +
                        '</soap:Body>' +
                      '</soap:Envelope>');

  while (XMLHTTPCFDI.readyState <>  4) do
    Application.ProcessMessages;

  soapResponse := XMLHTTPCFDI.responseText;
  xmldoc := CreateOleObject('Msxml2.DOMDocument.3.0');
  if(xmldoc.loadXML(soapResponse)) then begin
    Respuesta_TipoExcepcion := xmldoc.getElementsByTagName('anyType').Item(0).Text;
    Respuesta_NumeroExcepcion := xmldoc.getElementsByTagName('anyType').Item(1).Text;
    Respuesta_DescripcionExcepcion := xmldoc.getElementsByTagName('anyType').Item(2).Text;
    Respuesta_XML := xmldoc.getElementsByTagName('anyType').Item(3).Text;
    Respuesta_CBB := xmldoc.getElementsByTagName('anyType').Item(4).Text;
    Respuesta_CadenaOriginal := xmldoc.getElementsByTagName('anyType').Item(5).Text;

    Resultados.Codigo := Respuesta_NumeroExcepcion;
    if Respuesta_NumeroExcepcion <> '0' then begin
      Resultados.Mensaje := Respuesta_DescripcionExcepcion;
      Result := resultados;
    end else begin
      Resultados.xmlb64 := UTF8Encode(Respuesta_XML);
      Resultados.cbbb64 := Respuesta_CBB;
      Result := resultados;
    end;
  end else begin
    Resultados.Codigo := 'E-001';
    Resultados.Mensaje := 'No se logró crear el XML';
    Result := resultados;
  end;

end;

function WSConecFEM.cancelado(uuid: string; parametros: TPFParametros) : TPFResultados;
var
  soapResponse: String;
  XMLHTTPCFDI, xmldoc: OleVariant;
  emisorRFC, userPass, userId, urlCancelado: string;
  resultados : TPFResultados;
  xmlNode, node: IxmlDomNode;
  xml: IXMLDomDocument;

  Respuesta_TipoExcepcion,
  Respuesta_NumeroExcepcion,
  Respuesta_DescripcionExcepcion,
  Respuesta_XML,
  Respuesta_CBB,
  Respuesta_CadenaOriginal: String;

begin

  emisorRFC := Parametros.EmisorRFC;
  UserId := Parametros.UserId;
  URLCancelado := Parametros.UrlCancelado;

  XMLHTTPCFDI := CreateOleObject('Microsoft.XMLHTTP');
  XMLHTTPCFDI.Open('POST', urlCancelado);
  XMLHTTPCFDI.setRequestHeader('Content-Type', 'text/xml; charset=utf-8');
  XMLHTTPCFDI.send( '<?xml version="1.0" encoding="utf-8"?>' +
                      '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ' +
                        'xmlns:xsd="http://www.w3.org/2001/XMLSchema" ' +
                        'xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">' +
                        '<soap:Body>' +
                          '<CancelaCFDI xmlns="http://localhost/">' +
                            '<usuarioIntegrador>' + userId + '</usuarioIntegrador>' +
                            '<rfcEmisor>' + emisorRFC + '</rfcEmisor>' +
                            '<folioUUID>' + uuid + '</folioUUID>' +
                          '</CancelaCFDI>' +
                        '</soap:Body>' +
                      '</soap:Envelope>');
  while (XMLHTTPCFDI.readyState <>  4) do
    Application.ProcessMessages;

  soapResponse := XMLHTTPCFDI.responseText;
  xmldoc := CreateOleObject('Msxml2.DOMDocument.3.0');
  if(xmldoc.loadXML(soapResponse)) then begin
    Respuesta_TipoExcepcion := xmldoc.getElementsByTagName('anyType').Item(0).Text;
    Respuesta_NumeroExcepcion := xmldoc.getElementsByTagName('anyType').Item(1).Text;
    Respuesta_DescripcionExcepcion := xmldoc.getElementsByTagName('anyType').Item(2).Text;
    Respuesta_XML := xmldoc.getElementsByTagName('anyType').Item(3).Text;
    Respuesta_CBB := xmldoc.getElementsByTagName('anyType').Item(4).Text;
    Respuesta_CadenaOriginal := xmldoc.getElementsByTagName('anyType').Item(5).Text;

    Resultados.Codigo := Respuesta_NumeroExcepcion;

    if Respuesta_NumeroExcepcion <> '0' then begin
      Resultados.Codigo := Respuesta_NumeroExcepcion;
      Resultados.Mensaje := Respuesta_DescripcionExcepcion;
      Result := Resultados;
    end else begin
      Resultados.Mensaje := Respuesta_DescripcionExcepcion;
      Result := Resultados;
    end;
  end else begin
    Resultados.Codigo := 'E-001';
    Resultados.Mensaje := 'No se logró crear el XML';
    Result := Resultados;
  end;
end;

function WSConecFEM.base64encode(strLinea: AnsiString): ansiString;
  var Encoder : TIdEncoderMime;
  begin
    Encoder := TIdEncoderMime.Create(nil);
    try
      Result := Encoder.EncodeString(strLinea);
    finally
      FreeAndNil(Encoder);
  end;
end;

function WSConecFEM.base64decode(strLinea: AnsiString): ansiString;
  var Decoder : TIdDecoderMime;
  begin
    Decoder := TIdDecoderMime.Create(nil);
    try
      Result := Decoder.DecodeString(strLinea);
    finally
      FreeAndNil(Decoder)
  end
end;

end.
