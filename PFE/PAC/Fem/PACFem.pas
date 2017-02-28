unit PACFem;

interface

uses
  Classes, Forms,
  wsFem, SysUtils,
  PFacturaElectronica,
  PFacturaElectronica_PAC,
  PFacturaElectronica_Reglamentaciones,
  XMLDoc, XMLIntF;

type
  TPFPACFem = class(TPFPAC)
  private
    fCredenciales : TPFCredenciales;
    function AsignarTimbreDeRespuestaFEM(const XMLTimbrado: WideString): TPFTimbre;
  public
    procedure AsignarCredenciales(Credenciales: TPFCredenciales); override;
    function TimbrarXML(XML: String): TPFTimbre; override;
    function CancelarXML(UUID: String): TStringList; override;
  end;

  TSpecXMLNode = class(TXMLNode)
  public
    procedure AfterConstruction; override;
    function GetField: string;
  end;

  TCualquiera = class
    public
      Variable: String;
  end;

implementation

procedure TSpecXMLNode.AfterConstruction;
begin
//  Writeln(TSpecXMLNode.ClassName + ' AfterConstruction.');
end;

function TSpecXMLNode.GetField: String;
begin
  Result := 'FieldValue';
end;

procedure TPFPACFem.AsignarCredenciales(Credenciales: TPFCredenciales);
begin
  fCredenciales := Credenciales;
  if fCredenciales.ID = '' then begin
    if fCredenciales.RFC = 'AAA010101AAA' then begin
      fCredenciales.ID := 'mvpNUXmQfK8=';
    end else begin
      fCredenciales.ID := '7YcvZB1KvQ5wTNyKNg6ExQ==';
    end;
  end;
end;

function TPFPACFem.TimbrarXML(XML: String): TPFTimbre;
var
  url: string;
  timbrar : WSConecFEM;
  Parametros : TPFParametros;
  Resultados : TPFResultados;
begin
  if fCredenciales.ID = 'mvpNUXmQfK8=' then begin
    url := 'http://74.81.83.152/ServicioIntegracionPruebas/Timbrado.asmx?wsdl';
  end else begin
    url := 'http://74.81.83.152/serviciointegracion/Timbrado.asmx';
  end;
  parametros.UserID := fCredenciales.ID;
  Parametros.URLTimbrado := url;

  Resultados := timbrar.timbrado(XML, parametros);
  if Resultados.Codigo <> '0' then begin
    raise Exception.Create('Error al timbrar en API:' + Resultados.Mensaje);
  end;

  Result := AsignarTimbreDeRespuestaFEM(Resultados.xmlb64);
end;

function TPFPACFem.CancelarXML(UUID: String): TStringList;
var
  msg, rfc, pass, id, url : string;
  cancelar : WSConecFEM;
  Parametros : TPFParametros;
  Resultados : TPFResultados;
  ResultadoCancelacion: TStringList;
begin
  if fCredenciales.ID = 'mvpNUXmQfK8=' then begin
    url := 'http://74.81.83.152/ServicioIntegracionPruebas/Timbrado.asmx?wsdl';
  end else begin
    url := 'http://74.81.83.152/serviciointegracion/Timbrado.asmx';
  end;
  Parametros.EmisorRFC := fCredenciales.RFC;
  Parametros.UserId := fCredenciales.ID;
  Parametros.UrlCancelado := url;

  resultados := cancelar.cancelado(uuid, parametros);
  msg := Resultados.Mensaje;

  ResultadoCancelacion := TStringList.Create;

  if msg = 'El UUID ha sido previamente cancelado.' then begin
    ResultadoCancelacion.Add('2');
    ResultadoCancelacion.Add(msg);
  end else if msg = 'CFDI cancelado existosamente.' then begin
    ResultadoCancelacion.Add('1');
    ResultadoCancelacion.Add('El CFDI fue cancelado.');
  end else if msg = 'UUID no existe' then begin
    ResultadoCancelacion.Add('3');
    ResultadoCancelacion.Add(msg);
  end else begin
    ResultadoCancelacion.Add('0');
    ResultadoCancelacion.Add(msg);
  end;

  Result := ResultadoCancelacion;
end;


function TPFPACFem.AsignarTimbreDeRespuestaFEM(const XMLTimbrado: WideString): TPFTimbre;
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
  if XMLTimbrado = '' then begin
    raise Exception.Create('La respuesta del servicio de timbrado fue nula');
  end;

//  documentoXMLTimbrado := LoadXMLData(XMLTimbrado);
  documentoXMLTimbrado := TXMLDocument.Create(Application);
  documentoXMLTimbrado.LoadFromXML(XMLTimbrado);

//  documentoXMLTimbrado.Active := True;
//  documentoXMLTimbrado.Version:='1.0';
//  documentoXMLTimbrado.Encoding:='UTF-8';

  Timbrado := False;
  OuterRoot := documentoXMLTimbrado.DocumentElement;
  for i := 0 to OuterRoot.ChildNodes.Count -1 do begin
    Nombre := OuterRoot.ChildNodes[i].NodeName;
    if OuterRoot.ChildNodes[i].NodeName='cfdi:Complemento' then begin
      EntryNode := OuterRoot.ChildNodes[i];
      for j := 0 to EntryNode.ChildNodes.Count -1 do begin
        if EntryNode.ChildNodes[j].NodeName = 'tfd:TimbreFiscalDigital' then begin
          nodoXMLTimbre := EntryNode.ChildNodes[j];
          Timbrado := True;
        end;
      end;
    end;
  end;

  if not Timbrado then begin
    raise Exception.Create('No se encontró el timbre en el XML recibido.');
  end;

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
