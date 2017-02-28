unit PAddenda_PEP;

interface

uses
  SysUtils, Forms, XMLDoc, XMLIntf, DateUtils;

type
  TPFAddenda_PEP = class
    private
      fAddendaXML: TXMLDocument;
      fXMLAddenda: IXMLNode;
      fXMLContrato: IXMLNode;
      fXMLSurtimiento: IXMLNode;
      fXMLEstimacion: IXMLNode;
      fXMLAcreedor: IXMLNode;
      fXMLEntrada: IXMLNode;
      fXMLVURegion: IXMLNode;
      fXMLFichaE: IXMLNode;
      fXMLFichaF: IXMLNode;
      fXMLMoneda: IXMLNode;
      fXMLEjercicio: IXMLNode;
      fXML: String;
      function leerXML: String;
    public
      Contrato: String;
      Surtimiento: String;
      Estimacion: String;
      Acreedor: String;
      Entrada: String;
      VURegion: String;
      FichaE: String;
      FichaF: String;
      Moneda: String;
      Ejercicio: String;
      property XML: String read leerXML;
    public
      constructor Create;
      procedure Generar;
  end;

implementation

constructor TPFAddenda_PEP.Create;
begin
  fAddendaXML := TXMLDocument.Create(Application);
  fAddendaXML.Active := True;
  fAddendaXML.Version:='1.0';
  fAddendaXML.Encoding:='UTF-8';

  fXMLAddenda := fAddendaXML.AddChild('pm:Addenda_Pemex');
  fXMLAddenda.Attributes['xmlns:xsl'] := 'http://www.w3.org/2001/XMLSchema-instance';
  fXMLAddenda.Attributes['xmlns:pm'] := 'http://pemex.com/facturaelectronica/addenda/v2';
  fXMLAddenda.Attributes['schemaLocation'] := 'http://pemex.com/facturaelectronica/addenda/v2 https://pemex.reachcore.com/schemas/addenda-pemex-v2.xsd';
end;

procedure TPFAddenda_PEP.Generar;
begin
  fAddendaXML.Active := True;
  if Contrato <> '' then begin
    fXMLContrato := fXMLAddenda.AddChild('pm:CONTRATO');
    fXMLContrato.Text := Contrato;
  end;

  if Surtimiento <> '' then begin
    fXMLSurtimiento := fXMLAddenda.AddChild('pm:O_SURTIMIENTO');
    fXMLSurtimiento.Text := Surtimiento;
  end;

  if Estimacion <> '' then begin
    fXMLEstimacion := fXMLAddenda.AddChild('pm:N_ESTIMACION');
    fXMLEstimacion.Text := Estimacion;
  end;

  if Acreedor <> '' then begin
    fXMLAcreedor := fXMLAddenda.AddChild('pm:N_ACREEDOR');
    fXMLAcreedor.Text := Acreedor;
  end;

  if Acreedor <> '' then begin
    fXMLAcreedor := fXMLAddenda.AddChild('pm:N_ACREEDOR');
    fXMLAcreedor.Text := Acreedor;
  end;

  if Entrada <> '' then begin
    fXMLEntrada := fXMLAddenda.AddChild('pm:ENTRADA');
    fXMLEntrada.Text := Entrada;
  end;

  if VURegion <> '' then begin
    fXMLVURegion := fXMLAddenda.AddChild('pm:VUREGION');
    fXMLVURegion.Text := VURegion;
  end;

  if FichaE <> '' then begin
    fXMLFichaE := fXMLAddenda.AddChild('pm:FICHAE');
    fXMLFichaE.Text := FichaE;
  end;

  if FichaF <> '' then begin
    fXMLFichaF := fXMLAddenda.AddChild('pm:FICHAF');
    fXMLFichaF.Text := FichaF;
  end;

  if Moneda <> '' then begin
    fXMLMoneda := fXMLAddenda.AddChild('pm:MONEDA');
    fXMLMoneda.Text := Moneda;
  end;

  if Ejercicio <> '' then begin
    fXMLEjercicio := fXMLAddenda.AddChild('pm:EJERCICIO');
    fXMLEjercicio.Text := Ejercicio;
  end;
end;

function TPFAddenda_PEP.leerXML;
begin
  Result := fAddendaXML.XML.Text;
end;

end.
