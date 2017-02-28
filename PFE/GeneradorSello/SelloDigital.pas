{******************************************************************************
 PROYECTO FACTURACION ELECTRONICA
 Copyright (C) 2010-2014 - Bambu Code SA de CV - Ing. Luis Carrasco

 Clase usada para generar el Sello Digital de una Cadena Original proveniente
 de una factura electrónica. Aqui se especifican todas las reglas especificadas
 por el SAT para la generación del mismo.

 Este archivo pertenece al proyecto de codigo abierto de Bambu Code:
 http://bambucode.com/codigoabierto

 La licencia de este codigo fuente se encuentra en:
 http://github.com/bambucode/tfacturaelectronica/blob/master/LICENCIA
 ******************************************************************************}

unit SelloDigital;

interface

uses  Windows, PFacturaElectronica, ClaseOpenSSL;

type

///<summary>Representa el Sello Digital con el cual debemos de
/// 'sellar' la factura electrónica.
///</summary>
TSelloDigital = class
    fCadenaOriginal: String;
    fDigestion: TTipoDigestionOpenSSL;
    fOpenSSL: TOpenSSL;
    fCertificado: TPFCSD;
    fLlavePrivada: String;
private
    function calcularSello(): WideString;
public
    constructor Create(sCadenaOriginal: String; Certificado: TPFCSD);
    destructor Destroy; override;
    property SelloCalculado : WideString read calcularSello;
end;

implementation

uses Sysutils, StrUtils;

constructor TSelloDigital.Create(sCadenaOriginal: String; Certificado: TPFCSD);
begin
  inherited Create;
  // Creamos nuestra clase OpenSSL usada para hacer la digestión
  fOpenSSL:=TOpenSSL.Create();
  fCadenaOriginal:=sCadenaOriginal;
  fDigestion:= tdSHA1;
  fCertificado:=Certificado;
end;

destructor TSelloDigital.Destroy;
begin
    FreeAndNil(fOpenSSL);
    inherited Destroy;
end;

// Calcula el Sello Digital para la Cadena Original preparada en el constructor
function TSelloDigital.calcularSello : WideString;
begin
  // Realizamos la digestion de la cadena original usando el certificado
  // indicado y el modo de digestion
  Result:=fOpenSSL.HacerDigestion(fCertificado.Llave,
                                  fCertificado.Clave,
                                  fCadenaOriginal,
                                  fDigestion);
end;

end.
