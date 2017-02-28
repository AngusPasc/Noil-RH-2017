unit frmNomina_ProcesarNomina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_Connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, dblookup, CustomizeDlg,
  UnitExcel, ComObj, masUtilerias, 
  JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, AdvEdit,
  DBAdvEd, DBDateTimePicker, DBLabelEdit, HTMLabel, ShlObj, 
  PFacturaElectronica, CFDI, PFacturaElectronica_PAC, PACFem, GeneradorCBB;

type
  Tfrm_Nomina_ProcesarNomina = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    btnGuardar: TButton;
    zq_ConsultaGeneral: TZQuery;
    DataSource2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Progreso_Proceso: TProgressBar;
    Label4: TLabel;
    zq_DetallesEgresos: TZQuery;
    zq_Egresos: TZQuery;
    zq_EgresosdIdFecha: TDateField;
    zq_EgresosiIdFolio: TIntegerField;
    zq_EgresossTipoMovimiento: TStringField;
    zq_EgresossIdArea: TStringField;
    zq_EgresossIdNumeroCuenta: TStringField;
    zq_EgresossNumeroOrden: TStringField;
    zq_EgresossReferencia: TStringField;
    zq_EgresossIdProveedor: TStringField;
    zq_EgresossIdCompania: TStringField;
    zq_EgresossRFC: TStringField;
    zq_EgresossRazonSocial: TStringField;
    zq_EgresossDomicilio: TStringField;
    zq_EgresossCiudad: TStringField;
    zq_EgresossCP: TStringField;
    zq_EgresossEstado: TStringField;
    zq_EgresossTelefono: TStringField;
    zq_EgresosdImporteTotal: TFloatField;
    zq_EgresoslComprobado: TStringField;
    zq_EgresossStatus: TStringField;
    zq_EgresosmDescripcion: TMemoField;
    zq_EgresosdIva: TFloatField;
    zq_EgresoslAplicaiva: TStringField;
    zq_EgresossPoliza: TStringField;
    zq_EgresosdFechaFactura: TDateField;
    zq_EgresosiFolio: TIntegerField;
    zq_EgresosiIdStatus: TIntegerField;
    zq_EgresossTipoPago: TStringField;
    zq_EgresossFormaPago: TStringField;
    zq_EgresossNumeroDeCuenta: TStringField;
    zq_EgresossNumeroPedido: TStringField;
    zq_EgresosiImprimeProveedor: TIntegerField;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nomina_ProcesarNomina: Tfrm_Nomina_ProcesarNomina;
  Excel, Libro, Hoja: Variant;
  Id_Nomina, iIdEgreso: Integer;
  DiasTotales: Double;
  NombreDeNomina: String;

  //NOMINA CFDI
  Nomina: TPFFacturaElectronica;
  Empresa,
  Empleado: TPFContribuyente;
  PercepcionesNomina,
  DeduccionesNomina: TPFNomina_Conceptos;
  Incapacidades: TPFNomina_Incapacidades;
  HorasExtra: TPFNomina_HorasExtra;

  PercepcionNomina,
  DeduccionNomina: TPFNomina_Concepto;
  Incapacidad: TPFNomina_Incapacidad;
  HoraExtra: TPFNomina_HoraExtra;
  generadorCBB: TGeneradorCBB;
  ProveedorTimbrado : TPFPAC;
  TimbreDeFactura : TPFTimbre;
  CredencialesPAC: TPFCredenciales;

  Function GetDesktopFolder: String;


implementation

uses frmNomina_ImprimirRecibos;

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

procedure Tfrm_Nomina_ProcesarNomina.btnGuardarClick(Sender: TObject);
Var
  Query, QryBusca, QueryBusca, Qry, QryNomina: TZQuery;
  sIdEmpleado, QryTxt: String;
  SumaPercepciones, SumaDeducciones,
  dImporteForma, dPorcentaje,
  dSalarioTotalDiario, dImporteTotal,
  DiasTrabajados, FaltasEmpleado: Real;
  NominaXML, NominaCBB, 
  CarpetaCFDI, CarpetaEmisor, s: String;
  i: Integer;
begin
  zq_ConsultaGeneral.Active := False;
  zq_ConsultaGeneral.SQL.Text :=  'SELECT ' +
                                  ' en.*, ' +
                                  ' em.sNombreCompleto, ' +
                                  ' em.sRFC, ' +
                                  ' em.sIdEmpleado, ' +
                                  ' em.sCurp, ' +
                                  ' em.sImss, ' +
                                  ' nom.sNomina, ' +
                                  ' nom.dFechaInicial, ' +
                                  ' nom.dFechaFinal AS dFechaPago ' +
                                  'FROM nom_empleadospornomina AS en ' +
                                  ' INNER JOIN nom_nominas AS nom ON (en.iId_Nomina = nom.iId) ' +
                                  ' LEFT JOIN empleados AS em ON (em.sIdEmpleado = en.sIdEmpleado) ' +
                                  'WHERE en.iId_Nomina = ' + IntToStr(Id_Nomina);
  zq_ConsultaGeneral.Open;

  if zq_ConsultaGeneral.RecordCount > 0 then begin
    Progreso_Proceso.Max := zq_ConsultaGeneral.RecordCount;
    while Not zq_ConsultaGeneral.Eof do begin
      sIdEmpleado := zq_ConsultaGeneral.FieldByName('sIdEmpleado').AsString;
      DiasTrabajados := DiasTotales;

//      ********************************************
//      NOMINA CFDI
//      ********************************************
      Try
        Qry := TZQuery.Create(Self);
        Qry.Connection := Connection.zConnection;
        Qry.SQL.Text := 'SELECT * FROM con_companias WHERE sIdCompania = "ATECHNOL"';
        Qry.Open;

        Empresa.RFC:= 'AAA010101AAA';//Qry.FieldByName('sRFC').AsString;
        Empresa.RazonSocial:= Qry.FieldByName('sRazonSocial').AsString;
//        Empresa.RegistroPatronal := Qry.FieldByName('sRegistroPatronal').AsString; (*Opcional*)
        Empresa.RegimenFiscal := 'REGIMEN GENERAL DE LEY';

        Empresa.ExpedidoEn.Calle := 'CONOCIDO';
        Empresa.ExpedidoEn.Numero := '1';
        Empresa.ExpedidoEn.Colonia := Qry.FieldByName('sColonia').AsString;
        Empresa.ExpedidoEn.CodigoPostal := Qry.FieldByName('sCP').AsString;
        Empresa.ExpedidoEn.Municipio := Qry.FieldByName('sMunicipio').AsString;
        Empresa.ExpedidoEn.Localidad := Qry.FieldByName('sLocalidad').AsString;
        Empresa.ExpedidoEn.Estado := Qry.FieldByName('sEstado').AsString;
        Empresa.ExpedidoEn.Pais := 'MEXICO';

        CarpetaCFDI := GetDesktopFolder() + '\CFDI';
        if Not(DirectoryExists(GetDesktopFolder() + '\CFDI')) then begin
          CreateDir(GetDesktopFolder() + '\CFDI');
        end;

        CarpetaEmisor := CarpetaCFDI + '\' + Empresa.RFC;

        if Not(DirectoryExists(CarpetaEmisor)) then begin
          CreateDir(CarpetaEmisor);
        end;

        CarpetaEmisor := CarpetaEmisor + '\' + 'NOMINAS';

        if Not(DirectoryExists(CarpetaEmisor)) then begin
          CreateDir(CarpetaEmisor);
        end;

        CarpetaEmisor := CarpetaEmisor + '\' +  zq_ConsultaGeneral.FieldByName('sNomina').AsString;

        if Not(DirectoryExists(CarpetaEmisor)) then begin
          CreateDir(CarpetaEmisor);
        end;

        Qry.SQL.Text := 'SELECT ' +
                        ' em.*, ' +
                        ' IFNULL(dep.sDescripcion, "VARIOS") AS sDescripcion_Departamento, ' +
                        ' cp.sPuesto AS sPuestoTrabajador ' +
                        'FROM empleados AS em ' +
                        ' LEFT JOIN departamentos AS dep ON (dep.sIdDepartamento = em.codigodepartamento) ' +
                        ' INNER JOIN con_catalogodepuestos AS cp ON (cp.iId_Puesto = em.iId_Puesto) ' + 
                        'WHERE em.sIdEmpleado = ' + QuotedStr(sIdEmpleado);
        Qry.Open;

        Empleado.RFC:= Qry.FieldByName('sRFC').AsString;
        Empleado.RazonSocial:= Qry.FieldByName('sNombreCompleto').AsString;
        Empleado.ComplementoNomina.NumeroEmpleado := Qry.FieldByName('sIdEmpleado').AsString;
        Empleado.ComplementoNomina.Curp := Qry.FieldByName('sCurp').AsString;
        Empleado.ComplementoNomina.NumeroSeguridadSocial := Qry.FieldByName('sImss').AsString;
        Empleado.ComplementoNomina.Departamento := Qry.FieldByName('sDescripcion_Departamento').AsString;
//        Empleado.ComplementoNomina.Banco := Qry.FieldByName('iIdBanco').AsInteger;
//        Empleado.ComplementoNomina.ClabeBancaria := Qry.FieldByName('sNumeroCuenta').AsString; (*Opcional*)
        Empleado.ComplementoNomina.FechaInicioLabores := Qry.FieldByName('dFechaInicioLabores').AsDateTime;
        Empleado.ComplementoNomina.Puesto := Qry.FieldByName('sPuestoTrabajador').AsString;
        Empleado.ComplementoNomina.TipoDeContrato := Qry.FieldByName('sTipoContrato').AsString;
        Empleado.ComplementoNomina.TipoDeJornada := Qry.FieldByName('sTipoJornada').AsString;
        Empleado.ComplementoNomina.PeriodosDePago := 'QUINCENAL';
        Empleado.ComplementoNomina.TipoDeRiesgo := Qry.FieldByName('iId_Riesgo').AsInteger;
        Empleado.ComplementoNomina.SalarioBase := Qry.FieldByName('dSalarioDiario').AsCurrency;
        Empleado.ComplementoNomina.SalarioDiarioIntegrado := Qry.FieldByName('dSalarioIntegrado').AsCurrency;
        Empleado.ComplementoNomina.TipoDeRegimen := Qry.FieldByName('iId_Regimen').AsInteger;


        NominaXML := CarpetaEmisor + '\' + Empleado.RazonSocial + '.xml';
        NominaCBB := CarpetaEmisor + '\' + Empleado.RazonSocial + '.jpg';

        Memo1.Lines.Add('Generando Recibo de Nómina en XML - ' + Empleado.RazonSocial);
        Application.ProcessMessages;
        Nomina := TPFFacturaElectronica.Create(Empresa, Empleado, trNomina);
        Nomina.Propiedades.MetodoDePago:= 'TRANSFERENCIA ELECTRONICA';
        Nomina.Propiedades.FormaDePago := 'PAGO EN UNA SOLA EXHIBICION';
        Nomina.Propiedades.CondicionesDePago := 'CONTADO';

        Nomina.PropiedadesNomina.FechaDePago := zq_ConsultaGeneral.FieldByName('dFechaPago').AsDateTime;
        Nomina.PropiedadesNomina.PeriodoDePagoInicial := zq_ConsultaGeneral.FieldByName('dFechaInicial').AsDateTime;
        Nomina.PropiedadesNomina.PeriodoDePagoFinal := zq_ConsultaGeneral.FieldByName('dFechaPago').AsDateTime;

        {$REGION 'PERCEPCIONES'}
        Try
          QryBusca := TZQuery.Create(Self);
          QryBusca.Connection := Connection.zConnection;

          QryBusca.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Percepcion'' AND iId_Nomina = ' + IntToStr(Id_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado);
          QryBusca.Open;

          SetLength(PercepcionesNomina, 0);

          if QryBusca.RecordCount > 0 then begin
            i := 0;
            while Not QryBusca.Eof do begin
              if QryBusca.FieldByName('iCodigoSAT').AsInteger <> 19 then begin
                SetLength(PercepcionesNomina, (i + 1));
                PercepcionesNomina[i].Tipo := QryBusca.FieldByName('iCodigoSAT').AsInteger;
                PercepcionesNomina[i].Clave := QryBusca.FieldByName('iCodigoSAT').AsString;
                PercepcionesNomina[i].Concepto := QryBusca.FieldByName('sDescripcion').AsString;
                PercepcionesNomina[i].ImporteGravado := QryBusca.FieldByName('dImporte').AsCurrency;
                PercepcionesNomina[i].ImporteExento := 0;
                Inc(i);
              end;
              QryBusca.Next;
            end;
            Nomina.PropiedadesNomina.AgregarConceptos(PercepcionesNomina, cPercepciones);
            Memo1.Lines.Add('Agregando Percepciones de Nómina');
            Application.ProcessMessages;
          end else begin
            raise Exception.Create('No existen percepciones a generar en la nómina.');
          end;
        Finally
          QryBusca.Free;
        End;
        {$ENDREGION}

        {$REGION 'DEDUCCIONES'}
        Try
          QryBusca := TZQuery.Create(Self);
          QryBusca.Connection := Connection.zConnection;

          QryBusca.SQL.Text := 'SELECT * FROM nom_detallesporempleado WHERE lTipo = ''Deduccion'' AND iId_Nomina = ' + IntToStr(Id_Nomina) + ' AND sIdEmpleado = ' + QuotedStr(sIdEmpleado);
          QryBusca.Open;

          SetLength(DeduccionesNomina, 0);

          if QryBusca.RecordCount > 0 then begin
            i := 0;
            while Not QryBusca.Eof do begin
              if QryBusca.FieldByName('iCodigoSAT').AsInteger <> 19 then begin
                SetLength(DeduccionesNomina, (i + 1));
                DeduccionesNomina[i].Tipo := QryBusca.FieldByName('iCodigoSAT').AsInteger;
                DeduccionesNomina[i].Clave := QryBusca.FieldByName('iCodigoSAT').AsString;
                DeduccionesNomina[i].Concepto := QryBusca.FieldByName('sDescripcion').AsString;
                DeduccionesNomina[i].ImporteGravado := 0;
                DeduccionesNomina[i].ImporteExento := QryBusca.FieldByName('dImporte').AsCurrency;

                if QryBusca.FieldByName('bImpuestoRetenido').AsInteger = 1 then begin
                  DeduccionesNomina[i].EsDeduccionTipoImpuestoRetenido := True;
                end else begin
                  DeduccionesNomina[i].EsDeduccionTipoImpuestoRetenido := False;
                end;

                Inc(i);
              end;
              QryBusca.Next;
            end;
            Nomina.PropiedadesNomina.AgregarConceptos(DeduccionesNomina, cDeducciones);
            Memo1.Lines.Add('Agregando Deducciones de Nómina');
            Application.ProcessMessages;
          end;
        Finally
          QryBusca.Free;
        End;
        {$ENDREGION}

        Nomina.Generar;
        Memo1.Lines.Add('Generando Nómina');
        Application.ProcessMessages;

        Try
          if CheckBox1.Checked then begin
            ProveedorTimbrado := TPFPACFem.Create;
            CredencialesPAC.RFC := Empresa.RFC;
            CredencialesPAC.ID := 'mvpNUXmQfK8=';
            ProveedorTimbrado.AsignarCredenciales(CredencialesPAC);

            TimbreDeFactura := ProveedorTimbrado.TimbrarXML(Nomina.XML);

            Memo1.Lines.Add('Solicitando Timbre al PAC...');
            Application.ProcessMessages;

            Nomina.AsignarTimbreFiscal(TimbreDeFactura);
            Memo1.Lines.Add('Nomina timbrada correctamente, Cadena Digital: ' + Nomina.CadenaOriginal);
            Application.ProcessMessages;

            Nomina.Guardar(NominaXML);
            Memo1.Lines.Add('Recibo de Nómina en XML Timbrado Guardado en: ' + NominaXML);
            Application.ProcessMessages;

            generadorCBB := TGeneradorCBB.Create;
            Memo1.Lines.Add('Generando código bidimensional');
            Application.ProcessMessages;
            Try
              generadorCBB.GenerarImagen(Empresa,
                                         Empleado,
                                         Nomina.Total,
                                         TimbreDeFactura.UUID,
                                         NominaCBB);
            Finally
              generadorCBB.Free;
              Memo1.Lines.Add('Código bidimensional guardado en: ' + NominaXML);
              Application.ProcessMessages;
            End;

            Application.ProcessMessages;

          end else begin
            Nomina.Guardar(NominaXML);
            Memo1.Lines.Add('Recibo de Nómina en XML Guardado sin timbre en: ' + NominaXML);
            Application.ProcessMessages;
          end;
        Finally
          Qry.Free;
        End;

      Finally
//        Qry.Free;
      End;

      dImporteTotal := SumaPercepciones - SumaDeducciones;

      {$REGION 'CONCENTRADO FINAL DEL EMPLEADO}
//      Try
//        Qry := TZQuery.Create(Self);
//        Qry.Connection := Connection.zConnection;
//        Qry.SQL.Text := 'SELECT * FROM nom_empleadospornomina WHERE sIdEmpleado = '+QuotedStr(sIdEmpleado)+' AND iId_Nomina = ' + IntToStr(Id_Nomina);
//        Qry.Open;
//        if Qry.RecordCount > 0 then begin
//          QryTxt := 'UPDATE nom_empleadospornomina SET dImporte = '+FloatToStr(dImporteTotal)+', lIncluir = True, dDiasLaborados = '+FloatToStr(DiasTrabajados)+', dFaltas = '+FloatToStr(FaltasEmpleado)+' WHERE sIdEmpleado = '+QuotedStr(sIdEmpleado)+' AND iId_Nomina = ' + IntToStr(Id_Nomina);
//        end else begin
//          QryTxt := 'INSERT INTO nom_empleadospornomina (iId_Nomina, sIdEmpleado, dImporte, dDiasLaborados, dFaltas, lIncluir) VALUES ('+IntToStr(Id_Nomina)+', '+QuotedStr(sIdEmpleado)+', '+FloatToStr(dImporteTotal)+', '+FloatToStr(DiasTrabajados)+', '+FloatToStr(FaltasEmpleado)+', ''True'')';
//        end;
//        Qry.Active := False;
//        Qry.SQL.Clear;
//        Qry.SQL.Text := QryTxt;
//        Qry.ExecSQL;
//      Finally
//        Qry.Free;
//      End;
      {$ENDREGION}

      zq_ConsultaGeneral.Next;
      Progreso_Proceso.Position := Progreso_Proceso.Position + 1;
    end;
    Progreso_Proceso.Position := 0;
  end;

//  Try
//    Query := TZQuery.Create(Self);
//    Query.Connection := Connection.zConnection;
//
//    Query.SQL.Text := 'UPDATE nom_nominas SET iStatus = 1 WHERE iId = ' + IntToStr(Id_Nomina);
//    Query.ExecSQL;
//  Finally
//
//  End;

  If MessageDlg('LA NOMINA ' + NombreDeNomina + ' FUE PROCESADA, ¿DESEA IMPRIMIR LOS RECIBOS?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    Application.CreateForm(Tfrm_Nomina_ImprimirRecibos, frm_Nomina_ImprimirRecibos);
    frm_Nomina_ImprimirRecibos.show;
  end;

  Close;
end;

procedure Tfrm_Nomina_ProcesarNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_Nomina_ProcesarNomina.FormShow(Sender: TObject);
Var
  Query: TZQuery;
  I: Integer;
begin
  Try
    Query := TZQuery.Create(Self);
    Query.Connection := Connection.zConnection;
    Query.SQL.Text := 'SELECT n.*, (SELECT COUNT(iId) FROM nom_empleadospornomina WHERE iId_Nomina = n.iId) AS dTotalEmpleados, MAX(n.iId) FROM nom_nominas AS n WHERE n.iProcesada = 1';
    
    Query.Open;
    if Query.RecordCount > 0 then begin
      Id_Nomina := Query.FieldByName('iId').AsInteger;
      DiasTotales := Query.FieldByName('dDias').AsFloat;
      iIdEgreso := Query.FieldByName('iIdEgreso').AsInteger;
      NombreDeNomina := Query.FieldByName('sNomina').AsString + ' DE ' + Query.FieldByName('dFechaInicial').AsString + ' A ' + Query.FieldByName('dFechaFinal').AsString;
      for i := 0 to ComponentCount - 1 do begin
        if (Components[i] is TLabel) then begin
          TLabel(Components[i]).Caption := MultiStringReplace(TLabel(Components[i]).Caption, ['{NOMINA}', '{FECHA_INICIAL}', '{FECHA_FINAL}', '{CANT_EMPLEADOS}', '{DIAS_NOMINA}'], [Query.FieldByName('sNomina').AsString, Query.FieldByName('dFechaInicial').AsString, Query.FieldByName('dFechaFinal').AsString, Query.FieldByName('dTotalEmpleados').AsString, Query.FieldByName('dDias').AsString], [rfReplaceAll, rfIgnoreCase]);
        end;
      end;
    end;
  Finally
    Query.Free;
  End;
end;

end.
