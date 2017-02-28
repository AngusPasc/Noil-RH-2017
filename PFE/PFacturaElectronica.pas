unit PFacturaElectronica;

interface

uses Classes, SysUtils;

type

  TPFDomicilioFiscal = record
    Calle: String;
    Numero: String;
    NumeroInterior: String;
    Colonia: String;
    CodigoPostal: String;
    Localidad: String;
    Municipio: String;
    Estado: String;
    Pais: String;
  end;

  TPFNomina_ComplementoNomina = record
    NumeroEmpleado: String;
    Curp: String;
    NumeroSeguridadSocial: String;
    Departamento: String;
    Banco: Integer;
    ClabeBancaria: String;
    FechaInicioLabores: TDateTime;
    Puesto: String;
    TipoDeContrato: String;
    TipoDeJornada: String;
    PeriodosDePago: String;
    TipoDeRiesgo: Integer;
    SalarioBase: Currency;
    SalarioDiarioIntegrado: Currency;
    FechaDePago: TDateTime;
    PeriodoDePago_Inicial: TDateTime;
    PeriodoDePago_Final: TDateTime;
    DiasPagados: Real;
    TipoDeRegimen: Integer;
  end;

  TPFNomina_Concepto = record
    Tipo: Integer;
    Clave: String;
    Concepto: String;
    ImporteGravado: Currency;
    ImporteExento: Currency;
    EsDeduccionTipoImpuestoRetenido: Boolean;
  end;

  TPFNomina_Conceptos = Array Of TPFNomina_Concepto;

  TPFNomina_Percepcion = TPFNomina_Concepto;
  TPFNomina_Percepciones = Array Of TPFNomina_Concepto;

  TPFNomina_Deduccion = TPFNomina_Concepto;
  TPFNomina_Deducciones = Array Of TPFNomina_Concepto;

  TPFNomina_Incapacidad = record
    Tipo: Integer;
    Dias: Integer;
    Descuento: Currency;
  end;

  TPFNomina_Incapacidades = Array Of TPFNomina_Incapacidad;

  TPFNomina_HoraExtra = record
    Dias: Integer;
    HorasExtra: Integer;
    TipoHoras: String;
    ImportePagado: Currency;
  end;

  TPFNomina_HorasExtra = Array Of TPFNomina_HoraExtra;

  TPFContribuyente = record
    RazonSocial: String;
    RFC: String;
    Correo: String;
    RegimenFiscal: String;
    Domicilio: TPFDomicilioFiscal;
    ExpedidoEn: TPFDomicilioFiscal;
    RegistroPatronal: String;
    ComplementoNomina: TPFNomina_ComplementoNomina;
  end;

  TPFTipoComprobante = (trFactura, trNomina);
  TPFTipoImpuesto = (impTrasladado, impRetenido);
  TPFTipoConcepto = (cPercepciones, cDeducciones);

  TPFConcepto = record
    Cantidad: Real;
    Unidad: String;
    Descripcion: String;
    PrecioUnitario: Real;
    AplicaIVA: String;
  end;

  TPFConceptos = Array of TPFConcepto;

  TPFImpuesto = record
    Tipo: TPFTipoImpuesto;
    Impuesto: String;
    Tasa: Currency;
    Importe: Currency;
  end;

  TPFImpuestos = Array of TPFImpuesto;

  TPFFolio = record
    Serie: String;
    Folio: Integer;
  end;

  TPFPropiedades = record
    TipoDeComprobante: String;
    FormaDePago: String;
    MetodoDePago: String;
    CondicionesDePago: String;
    DescuentoDescripcion: String;
    DescuentoImporte: Currency;
    Moneda: String;
    NumeroDeCuenta: String;
    Folio : String ;
    FolioFiscalOrig: String;
    SerieFolioFiscalOrig: String;
    FechaFolioFiscalOrig: TDateTime;
    FechaValida: String;
    MontoFolioFiscalOrig: Currency;
  end;

  TPFTimbre = record
    Version : WideString;
    UUID : WideString;
    FechaTimbrado : TDateTime;
    SelloCFD : WideString;
    NoCertificadoSAT : WideString;
    SelloSAT : WideString;
    XML: WideString;
    Timbre: WideString;
  end;

  TPFCredenciales = record
    RFC: String;
    ID: String;
    Clave: String;
    CertificadoB64: String;
    LlaveB64: String;
  end;

  TPFParametros = record
    EmisorRFC: String;
    UrlTimbrado: String;
    UrlCancelado: String;
    UserPassword: String;
    UserId: String;
    UUID: String;
    GenerarPDF: Boolean;
    GenerarTXT: Boolean;
    GenerarCBB: Boolean;
    CertificadoB64: String;
    LlaveB64: String;
  end;

  TPFResultados = record
    Codigo: String;
    Mensaje: String;
    xmlb64: String;
    pdfb64: String;
    txtb64: String;
    cbbb64: String;
    uuid: String;
  end;

  TPFCSD = record
    Certificado: String;
    Llave: String;
    Clave: String;
  end;

  TPFCertificado = record
    VigenciaInicio: TDateTime;
    VigenciaFin: TDateTime;
    NumeroSerie: String;
    RFC: String;
  end;

  procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
  Function CantidadEnLetra(curCantidad: Currency; MonNal: integer): String;

implementation
  procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
  begin
     ListOfStrings.Clear;
     ListOfStrings.Delimiter     := Delimiter;
     ListOfStrings.DelimitedText := Str;
  end;

Function CantidadEnLetra(curCantidad: Currency; MonNal: integer): String;
var
  i: integer;
  Cantidad, Centavos: Currency;
  BloqueCero, NumeroBloques, Digito: Byte;
  PrimerDigito, SegundoDigito, TercerDigito: Byte;
  Resultado, Temp, strCentavos, Bloque: String;
  Unidades: Array[0..28] of String;
  Decenas: Array[0..8] of String;
  Centenas: Array[0..8] of String;
begin

  Unidades[0] := 'UN'; Unidades[1] := 'DOS'; Unidades[2] := 'TRES'; Unidades[3] := 'CUATRO';
  Unidades[4] := 'CINCO'; Unidades[5] := 'SEIS'; Unidades[6] := 'SIETE'; Unidades[7] := 'OCHO';
  Unidades[8] := 'NUEVE'; Unidades[9] := 'DIEZ'; Unidades[10] := 'ONCE'; Unidades[11] := 'DOCE';
  Unidades[12] := 'TRECE'; Unidades[13] := 'CATORCE'; Unidades[14] := 'QUINCE'; Unidades[15] := 'DIECISÉIS';
  Unidades[16] := 'DIECISIETE'; Unidades[17] := 'DIECIOCHO'; Unidades[18] := 'DIECINUEVE';
  Unidades[19] := 'VEINTE'; Unidades[20] := 'VEINTIUNO'; Unidades[21] := 'VEINTIDÓS';
  Unidades[22] := 'VEINTITRÉS'; Unidades[23] := 'VEINTICUATRO'; Unidades[24] := 'VEINTICINCO';
  Unidades[25] := 'VEINTISÉIS'; Unidades[26] := 'VEINTISIETE'; Unidades[27] := 'VEINTIOCHO'; Unidades[28] := 'VEINTINUEVE';

  Decenas[0] := 'DIEZ'; Decenas[1] := 'VEINTE'; Decenas[2] := 'TREINTA'; Decenas[3] := 'CUARENTA';
  Decenas[4] := 'CINCUENTA'; Decenas[5] := 'SESENTA'; Decenas[6] := 'SETENTA'; Decenas[7] := 'OCHENTA'; Decenas[8] := 'NOVENTA';

  Centenas[0] := 'CIENTO'; Centenas[1] := 'DOSCIENTOS'; Centenas[2] := 'TRESCIENTOS'; Centenas[3] := 'CUATROCIENTOS';
  Centenas[4] := 'QUINIENTOS'; Centenas[5] := 'SEISCIENTOS'; Centenas[6] := 'SETECIENTOS'; Centenas[7] := 'OCHOCIENTOS'; Centenas[8] := 'NOVECIENTOS';

  Cantidad := Trunc(curCantidad);
  Centavos := (curCantidad - Cantidad) * 100;
  NumeroBloques := 1;
  Repeat
    PrimerDigito := 0;
    SegundoDigito := 0;
    TercerDigito := 0;
    Bloque := '';
    BloqueCero := 0;
    For i := 1 To 3 do begin
      Digito := Round(Cantidad) Mod 10;
      If Digito <> 0 Then begin
        Case i of
          1: begin
            Bloque := ' ' + Unidades[Digito - 1];
            PrimerDigito := Digito;
          end;
          2: begin
            if Digito <= 2 Then begin
              Bloque := ' ' + Unidades[(Digito * 10 + PrimerDigito - 1)];
            end else begin
              if PrimerDigito <> 0 then
                Temp := ' Y' else Temp := '';
              Bloque := ' ' + Decenas[Digito - 1] + Temp + Bloque;
            end;
            SegundoDigito := Digito;
          end; //case 2
          3: begin
            if (Digito = 1) and (PrimerDigito = 0) and (SegundoDigito = 0) then
              Temp := 'CIEN' else Temp := Centenas[Digito-1];
            Bloque := ' ' + Temp + Bloque;
            TercerDigito := Digito;
          end; //case 3
        end; //case
      end else begin
        BloqueCero := BloqueCero + 1;
      end;
      Cantidad := Int(Cantidad / 10);
      if Cantidad = 0 Then begin
        break;
      end; // If Cantidad=0
    end; //for
    case NumeroBloques of
      1: Resultado := Bloque;
      2: begin
        if BloqueCero = 3 then
          Temp := '' else Temp := ' MIL';
        Resultado := Bloque + Temp + Resultado;
      end;
      3: begin
        if (PrimerDigito = 1) and (SegundoDigito = 0) and (TercerDigito = 0) then
          Temp := ' MILLON' else Temp := ' MILLONES';
        Resultado := Bloque + Temp + Resultado;
      end; //case 3
    end; //case
    NumeroBloques := NumeroBloques + 1;
  Until Cantidad = 0; //repeat
  case MonNal of
    0: begin
      if curCantidad > 1 then
        Temp := ' CENTAVOS ***' else Temp := ' CENTAVO ***';
      CantidadEnLetra := Resultado + Temp;
    end;
    1: begin
      if curCantidad > 1 then
        Temp := ' PESOS '
      else
        Temp := ' PESO ';
      if Centavos = 0 then
        strCentavos := ' 00/100MN'
      else
        strCentavos := ' ' + FloatToStr(Centavos) + '/100MN';
//        strCentavos := ' ' + CantidadEnLetra(Centavos, 0);

      CantidadEnLetra := Resultado + Temp + strCentavos;
    end;
    2: begin
      if curCantidad > 1 then
        Temp := ' DOLARES '
      else
        Temp := ' DOLAR ';
      if Centavos = 0 then
        strCentavos := ' 00/100USD'
      else
        strCentavos := ' ' + FloatToStr(Centavos) + '/100USD';
//        strCentavos := ' ' + CantidadEnLetra(Centavos, 0);

      CantidadEnLetra := Resultado + Temp + strCentavos;
//      if curCantidad > 1 then
//        Temp := ' DLLS ' else Temp := ' DOLAR ';
//      if Centavos=0 then strCentavos := '' else strCentavos := 'CON '+CantidadEnLetra(Centavos, 0);
//      CantidadEnLetra := 'SON: *** ' + Resultado + Temp + strCentavos;
    end;
  end;
end;

end.
