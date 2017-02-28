unit PACFo;

interface

uses
  Classes, Forms,
  wsFO, SysUtils,
  PFacturaElectronica,
  PFacturaElectronica_PAC,
  PFacturaElectronica_Reglamentaciones,
  XMLDoc, XMLIntF;

type
  TPFPACFo = class(TPFPAC)
  private
    fCredenciales : TPFCredenciales;
    function AsignarTimbreDeRespuestaFO(const XMLTimbrado: WideString): TPFTimbre;
  public
    procedure AsignarCredenciales(Credenciales: TPFCredenciales); override;
    function TimbrarXML(XML: String): TPFTimbre; override;
    function CancelarXML(UUID: String): TStringList; override;
    //Function noTimbresXML(URLws: String; IdCredencial: String; PassCred: String; Desde,Hasta: TDate; Rfc: String): Integer;
  end;

implementation

procedure TPFPACFo.AsignarCredenciales(Credenciales: TPFCredenciales);
begin
  fCredenciales := Credenciales;



  if fCredenciales.RFC = 'AAD990814BP7' then begin
    fCredenciales.ID := 'facturas@inteli-code.com.mx';
  end else begin
    fCredenciales.ID := 'facturas@intel-code.com.mx';
  end;

  //fCredenciales.Clave := 'Major$*Tom_1';
  // fCredenciales.ID := 'facturas@inteli-code.com.mx';
  fCredenciales.Clave := 'Intelcode2014#';
end;

function TPFPACFo.TimbrarXML(XML: String): TPFTimbre;
var
  url: string;
  timbrar : WSConecFO;
  Parametros : TPFParametros;
  Resultados : TPFResultados;
begin
  if fCredenciales.RFC = 'AAD990814BP7' then
    url := 'http://demo-facturacion.finkok.com/servicios/soap/stamp.wsdl'
  else
    url := 'https://facturacion.finkok.com/servicios/soap/stamp.wsdl';
    (*url := 'https://72.172.186.22/servicios/soap/stamp.wsdl';*)

  parametros.UserID := fCredenciales.ID;
  parametros.UserPassword := fCredenciales.Clave;
  Parametros.URLTimbrado := url;

  Resultados := timbrar.timbrado(XML, parametros);
  if Resultados.Codigo <> '0' then
  begin
    raise Exception.Create('Error al timbrar en API:' + Resultados.Mensaje);
  end;

  Result := AsignarTimbreDeRespuestaFO(Resultados.xmlb64);
end;

function TPFPACFo.CancelarXML(UUID: String): TStringList;
var
  cod, msg, rfc, pass, id, url : string;
  cancelar : WSConecFO;
  Parametros : TPFParametros;
  Resultados : TPFResultados;
  ResultadoCancelacion: TStringList;
begin
  if fCredenciales.RFC = 'AAD990814BP7' then
    url := 'http://demo-facturacion.finkok.com/servicios/soap/cancel.wsdl'
  else
    url := 'https://facturacion.finkok.com/servicios/soap/cancel.wsdl';

  Parametros.EmisorRFC := fCredenciales.RFC;
  Parametros.UserId := fCredenciales.ID;
  Parametros.UserPassword := fCredenciales.Clave;
  Parametros.UrlCancelado := url;
  Parametros.CertificadoB64 := fCredenciales.CertificadoB64;
  Parametros.LlaveB64 := fCredenciales.LlaveB64;

  resultados := cancelar.cancelado(uuid, parametros);
  cod := Resultados.Codigo;
  msg := Resultados.Mensaje;

  ResultadoCancelacion := TStringList.Create;

  if cod = '201' then
  begin
    ResultadoCancelacion.Add('1');
    ResultadoCancelacion.Add('El CFDI fue cancelado');
  end
  else
  if msg = 'CFDI cancelado existosamente.' then
  begin
    ResultadoCancelacion.Add('1');
    ResultadoCancelacion.Add('El CFDI fue cancelado.');
  end
  else
  if msg = 'UUID no existe' then
  begin
    ResultadoCancelacion.Add('3');
    ResultadoCancelacion.Add(msg);
  end
  else
  begin
    ResultadoCancelacion.Add('0');
    ResultadoCancelacion.Add(msg);
  end;

  Result := ResultadoCancelacion;
end;

//
//function TPFPACFo.noTimbresXML(URLws: String; IdCredencial: String; PassCred: String; Desde,Hasta: TDate; Rfc: String): Integer;
//var
//  url: string;
//  timbrar : WSConecFO;
//  Parametros : TPFParametros;
//  Resultados : TPFResultados;
//begin
//  if Rfc = 'AAD990814BP7' then
//    url := 'http://demo-facturacion.finkok.com/servicios/soap/utilities.wsdl'
//  else
//    url := 'http://demo-facturacion.finkok.com/servicios/soap/utilities.wsdl';
//
//  Result := timbrar.noTimbresUsados(Url, IdCredencial, PassCred, desde, Hasta, Rfc);
//end;

function TPFPACFo.AsignarTimbreDeRespuestaFO(const XMLTimbrado: WideString): TPFTimbre;
var
  comprobanteTimbrado: IXMLNode;
  nodoXMLTimbre: IXMLNode;
  Clase: TClass;
  documentoXMLTimbrado,
  documentoXMLTimbre: IXmlDocument;
  TargetNamespace: String;
  TimbreFiscal: IXMLNode;
  i, j:Integer;

  OuterRoot, EntryNode:IXMLNode;
  Nombre, Valor: String;
  Timbrado: Boolean;
begin
  if XMLTimbrado = '' then
  begin
    raise Exception.Create('La respuesta del servicio de timbrado fue nula');
  end;

  (*documentoXMLTimbrado := LoadXMLData(XMLTimbrado); *)
  documentoXMLTimbrado := TXMLDocument.Create(Application);
  documentoXMLTimbrado.LoadFromXML(XMLTimbrado);

  (*documentoXMLTimbrado.Active := True;*)
  (*documentoXMLTimbrado.Version:='1.0';*)
  (*documentoXMLTimbrado.Encoding:='UTF-8';*)

  Timbrado := False;
  OuterRoot := documentoXMLTimbrado.DocumentElement;
  for i := 0 to OuterRoot.ChildNodes.Count -1 do
  begin
    Nombre := OuterRoot.ChildNodes[i].NodeName;
    if OuterRoot.ChildNodes[i].NodeName='cfdi:Complemento' then
    begin
      EntryNode := OuterRoot.ChildNodes[i];
      for j := 0 to EntryNode.ChildNodes.Count -1 do
      begin
        if EntryNode.ChildNodes[j].NodeName = 'tfd:TimbreFiscalDigital' then
        begin
          nodoXMLTimbre := EntryNode.ChildNodes[j];
          Timbrado := True;
        end;
      end;
    end;
  end;

  if not Timbrado then
    raise Exception.Create('No se encontró el timbre en el XML recibido.');


  Result.Version:= nodoXMLTimbre.Attributes['version'];
  Result.UUID:= nodoXMLTimbre.Attributes['UUID'];
  Result.FechaTimbrado:= TFEReglamentacion.DeFechaHoraISO8601(nodoXMLTimbre.Attributes['FechaTimbrado']);
  Result.SelloCFD:=nodoXMLTimbre.Attributes['selloCFD'];
  Result.NoCertificadoSAT:=nodoXMLTimbre.Attributes['noCertificadoSAT'];
  Result.SelloSAT:=nodoXMLTimbre.Attributes['selloSAT'];
  Result.XML := XMLTimbrado;
  Result.Timbre := nodoXMLTimbre.XML;
end;
end.
