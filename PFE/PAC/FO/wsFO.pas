unit wsFO;

interface

uses
  PFacturaElectronica, XMLDoc, XMLIntf, XMLDom, msxml, msxmldom, ComObj,
  SysUtils, Forms, IdCoderMIME, Dialogs, PFacturaElectronica_Reglamentaciones;

type
  WSConecFO = class(TObject)
    public
      //function noTimbresUsados(URLws: String;IdCredencial: String; PassCred: String; Desde,Hasta: TDate; Rfc: String): integer;
      function timbrado(layout: WideString; parametros : TPFParametros): TPFResultados;
      function cancelado(UUID: String; parametros : TPFParametros): TPFResultados;
      function base64encode(strLinea: ansiString): ansiString;
      function base64decode(strLinea: ansiString): ansiString;
  end;

implementation

function WSConecFO.timbrado( layout: WideString; parametros : TPFParametros ): TPFResultados;
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
  Prueba: String;
  XMLDOM: IXMLDOMDOcument;
  nodeList: IXMLDOMNodeList;
begin
  emisorRFC := Parametros.EmisorRFC;
  urlTimbrado := Parametros.URLTimbrado;
  userId := Parametros.UserId;
  userPass := Parametros.UserPassword;

  UTF8Str := UTF8Encode(layout);
  UnicodeStr := UTF8Str;


  LayoutB64 := base64encode(UnicodeStr);

  layoutB64 := base64encode(UnicodeStr);

  XMLHTTPCFDI := CreateOleObject('Microsoft.XMLHTTP');

  XMLHTTPCFDI.Open('POST', urlTimbrado);
  XMLHTTPCFDI.setRequestHeader('Content-Type', 'text/xml; charset=utf-8');
  XMLHTTPCFDI.send( '<?xml version="1.0" encoding="UTF-8"?>' +
                    '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:stam="http://facturacion.finkok.com/stamp">' +
                      '<soapenv:Header/>' +
                      '<soapenv:Body>' +
                        '<stam:stamp>' +
                          '<stam:xml>' + layoutB64 + '</stam:xml>' +
                          '<stam:username>' + userId + '</stam:username>' +
                          '<stam:password>' + userPass + '</stam:password>' +
                        '</stam:stamp>' +
                      '</soapenv:Body>' +
                    '</soapenv:Envelope>');


  //Application.Me
  while (XMLHTTPCFDI.readyState <>  4) do
    Application.ProcessMessages;

  soapResponse := XMLHTTPCFDI.responseText;

  XMLDOM := CreateOleObject('MSXML2.DOMDocument.3.0') as IXMLDOMDocument;


  if XMLDOM.loadXML(soapResponse) then begin
    Respuesta_NumeroExcepcion := '0';

    Try
      nodeList := XMLDOM.getElementsByTagName('s0:CodigoError');
      if nodeList.length > 0 then begin
        Respuesta_NumeroExcepcion := XMLDOM.getElementsByTagName('s0:CodigoError').Item[0].Text;
        Respuesta_DescripcionExcepcion := XMLDOM.getElementsByTagName('s0:MensajeIncidencia').Item[0].Text;
      end else begin
        nodeList := XMLDOM.getElementsByTagName('s0:CodEstatus');
        if nodeList.length > 0 then begin
          Respuesta_DescripcionExcepcion := XMLDOM.getElementsByTagName('s0:CodEstatus').Item[0].Text;
          Respuesta_XML := XMLDOM.getElementsByTagName('s0:xml').Item[0].Text;
        end;
      end;
    Finally
      nodeList := nil;
      XMLDOM := nil;
    End;

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

function WSConecFO.cancelado(uuid: string; parametros: TPFParametros) : TPFResultados;
var
  xmlString: string;
  archivoTXT: TextFile;
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

  CertB64, LlavB64: String;

  XMLDOM: IXMLDOMDOcument;
  nodeList: IXMLDOMNodeList;

begin

  emisorRFC := Parametros.EmisorRFC;
  UserId := Parametros.UserId;
  UserPass := Parametros.UserPassword;
  URLCancelado := Parametros.UrlCancelado;
  CertB64 := base64encode(Parametros.CertificadoB64);
  LlavB64 := base64encode(Parametros.LlaveB64);

  xmlString := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:can="http://facturacion.finkok.com/cancel" xmlns:apps="apps.services.soap.core.views" xmlns:can1="http://facturacion.finkok.com/cancellation">' +
                      '<soapenv:Header/>' +
                      '<soapenv:Body>' +
                        '<can:cancel>' +
                          '<can:UUIDS>' +
                            '<apps:uuids>' +
                              '<can1:string>' + uuid + '</can1:string>' +
                            '</apps:uuids>' +
                          '</can:UUIDS>' +
                        '<can:username>' + UserId + '</can:username>' +
                        '<can:password>' + UserPass + '</can:password>' +
                        '<can:taxpayer_id>' + emisorRFC + '</can:taxpayer_id>' +
                        '<can:cer>'+CertB64+'</can:cer>' +
                        '<can:key>'+LlavB64+'</can:key>' +
                        '</can:cancel>' +
                      '</soapenv:Body>' +
                    '</soapenv:Envelope>';

  AssignFile(archivoTxt, 'XMLEnvelope.txt');
  try
    Rewrite(archivoTXT);
    Writeln(archivoTXT, xmlString);
  finally
    Closefile(archivoTXT);
  end;



  XMLHTTPCFDI := CreateOleObject('Microsoft.XMLHTTP');
  XMLHTTPCFDI.Open('POST', urlCancelado);
  XMLHTTPCFDI.setRequestHeader('Content-Type', 'text/xml; charset=utf-8');
  //XMLHTTPCFDI.send( xmlString );
  XMLHTTPCFDI.send( '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:can="http://facturacion.finkok.com/cancel" xmlns:apps="apps.services.soap.core.views" xmlns:can1="http://facturacion.finkok.com/cancellation">' +
                      '<soapenv:Header/>' +
                      '<soapenv:Body>' +
                        '<can:cancel>' +
                          '<can:UUIDS>' +
                            '<apps:uuids>' +
                              '<can1:string>' + uuid + '</can1:string>' +
                            '</apps:uuids>' +
                          '</can:UUIDS>' +
                        '<can:username>' + UserId + '</can:username>' +
                        '<can:password>' + UserPass + '</can:password>' +
                        '<can:taxpayer_id>' + emisorRFC + '</can:taxpayer_id>' +
                        '<can:cer>'+CertB64+'</can:cer>' +
                        '<can:key>'+LlavB64+'</can:key>' +
                        '</can:cancel>' +
                      '</soapenv:Body>' +
                    '</soapenv:Envelope>' );

  while (XMLHTTPCFDI.readyState <>  4) do
    Application.ProcessMessages;

  //Showmessage((XMLHTTPCFDI.responseText));
  soapResponse := XMLHTTPCFDI.responseText;

  XMLDOM := CreateOleObject('MSXML2.DOMDocument.3.0') as IXMLDOMDocument;


  if XMLDOM.loadXML(soapResponse) then begin
    Respuesta_NumeroExcepcion := '0';

    Try
      nodeList := XMLDOM.getElementsByTagName('s0:EstatusUUID');
      if nodeList.length > 0 then begin
        Respuesta_NumeroExcepcion := XMLDOM.getElementsByTagName('s0:EstatusUUID').Item[0].Text;
        Respuesta_DescripcionExcepcion := '';
      end else begin
        nodeList := XMLDOM.getElementsByTagName('s0:CodEstatus');
        if nodeList.length > 0 then begin
          Respuesta_NumeroExcepcion := '0';
          Respuesta_DescripcionExcepcion := XMLDOM.getElementsByTagName('s0:CodEstatus').Item[0].Text;
        end else begin
          Respuesta_NumeroExcepcion := '0';
          Respuesta_DescripcionExcepcion := '';
        end;
      end;
    Finally
      nodeList := nil;
      XMLDOM := nil;
    End;

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
//
//function WSConecFO.noTimbresUsados(URLws: String; IdCredencial: String; PassCred: String; Desde,Hasta: TDate; Rfc: String): integer;
//var
//  linea, strLinea, layoutB64, soapResponse, cfdi: String;
//  XMLHTTPCFDI, xmldoc: OleVariant;
//  emisorRFC, userPass, userId, urlTimbrado, generarPDF, generarCBB, generarTXT: string;
//  CFDIBase64, PDFBase64, CBBBase64, TXTBase64, UUID: WideString;
//  ch: Char;
//  Resultados : TPFResultados;
//  xmlNode, node: IXMLDOMNode;
//  xml: IXMLDomDocument;
//  caracter: WideChar;
//
//  UnicodeStr: String;
//  UTF8Str: String;
//
//  i, idAleatorio: Integer;
//
//  Respuesta_TipoExcepcion,
//  Respuesta_NumeroExcepcion,
//  Respuesta_DescripcionExcepcion,
//  Respuesta_XML,
//  Respuesta_CBB,
//  Respuesta_CadenaOriginal: String;
//  Prueba: String;
//  XMLDOM: IXMLDOMDOcument;
//  nodeList: IXMLDOMNodeList;
//begin
//
//  XMLHTTPCFDI := CreateOleObject('Microsoft.XMLHTTP');
//
//  XMLHTTPCFDI.Open('POST', urlws);
//  XMLHTTPCFDI.setRequestHeader('Content-Type', 'text/xml; charset=utf-8');
//  XMLHTTPCFDI.send( '<?xml version="1.0" encoding="UTF-8"?>' +
//                    '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:util="http://facturacion.finkok.com/utilities">' +
//                      '<soapenv:Header/>' +
//                      '<soapenv:Body>' +
//                        '<util:report_total>' +
//                          '<util:username>' + IdCredencial + '</util:username>' +
//                          '<util:password>' + PassCred + '</util:password>' +
//                           '<util:taxpayer_id>' + rfc + '</util:taxpayer_id>' +
//                           '<util:date_from>' + TFEReglamentacion.ComoFechaHora(Desde) + '</util:date_from>' +
//                           '<util:date_to>' + TFEReglamentacion.ComoFechaHora(Hasta) + '</util:date_to>' +
//                        '</util:report_total>' +
//                      '</soapenv:Body>' +
//                    '</soapenv:Envelope>');
//
//
//  while (XMLHTTPCFDI.readyState <>  4) do
//    Application.ProcessMessages;
//
//  soapResponse := XMLHTTPCFDI.responseText;
//
//  XMLDOM := CreateOleObject('MSXML2.DOMDocument.3.0') as IXMLDOMDocument;
//  if XMLDOM.loadXML(soapResponse) then
//  begin
//    Respuesta_NumeroExcepcion := '0';
//    Try
//      nodeList := XMLDOM.getElementsByTagName('s0:total');
//      Result := strtoint(XMLDOM.getElementsByTagName('s0:total').Item[0].Text);
//    Finally
//      nodeList := nil;
//      XMLDOM := nil;
//    End;
//  end
//  else
//  begin
//    Resultados.Codigo := 'E-001';
//    Resultados.Mensaje := 'No se logró crear el XML';
//    Result := -1;
//  end;
//end;

function WSConecFO.base64encode(strLinea: AnsiString): ansiString;
  var Encoder : TIdEncoderMime;
  begin
    Encoder := TIdEncoderMime.Create(nil);
    try
      Result := Encoder.EncodeString(strLinea);
    finally
      FreeAndNil(Encoder);
  end;
end;

function WSConecFO.base64decode(strLinea: AnsiString): ansiString;
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
