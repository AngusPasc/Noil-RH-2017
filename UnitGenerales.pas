unit UnitGenerales;

interface
 uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin, Math, masUtilerias,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, cxProgressBar,
  Buttons, frxClass, frxDBSet,  RXDBCtrl, RxMemDS, utilerias, JvDBCheckBox, RXCtrls,
  RXSpin, DateUtils, ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel,
  rxCurrEdit, rxToolEdit, sSkinProvider, dblookup, UnitExcepciones, UdbGrid, cxGridDBTableView,
  CustomizeDlg, unittbotonespermisos, UnitValidaTexto, UnitExcel, ComObj, ZConnection,
  UnitTablasImpactadas, unitactivapop, UFunctionsGHH,strutils,JvCombobox, JvCheckBox, cxLabel;

  {busqueda de maximo id ->}      function Noil_maximoId(sParamContrato, sParamTabla, sParamCampo :string) : Integer;
  {Eliminar o actualizar }
  {Contrato, Folio, Wbs o act ->} procedure BuscaElimina_datos(iCaso :integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaConvenio, sParamEmpresa, sParamFolio, sParamWbs, sParamConv, sParamNuevaEmpresa, sParamNuevoFolio, sParamNuevaWbs, sParamNuevoConv : string; accion :string; lMensaje :boolean;BarraProgreso :TcxProgressBar);
  function BuscaAntesEliminar_datos(iCaso:integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamEmpresa, sParamFolio, sParamWbs, sParamAct, sMensaje : string; lMensaje :boolean; BarraProgreso :TcxProgressBar) : boolean;

  procedure ActualizaDatos_una_tabla_maestra(sParamTabla, sLlave, sCampo1, sCampo2, sCampo3, sValorLlave, sValorNuevoCampo1, sValorNuevoCampo2, sValorNuevoCampo3 : string; accion :string; lMensaje :boolean);

  Procedure procCargaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; tOrigen: TComponent; zqDatosParam :tzReadOnlyQuery );
  Procedure procValidaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iParamFolio :integer; tOrigen: TComponent );
  Procedure procAutorizaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iParamFolio :integer; tOrigen: TComponent );

  function encriptar(aStr: String; aKey: Integer): String;
  function desencriptar(aStr: String; aKey: Integer): String;
  function Obtener_almacen(sParamAlmacen, sParamPrincipal : string): string;
  function EsDuplicateKey(sParamMensaje: string): integer;

  function ObtenerConsecutivoDepto(sParamModulo, sParamCadenaDepto : string; iParamConsecutivoDepto : integer ):string;
  function AutoFolio(Formulario, Tabla, Campo : String):String;
  procedure ActualizarConsecutivoDepto(sParamModulo, sParamIdDepto :string; iParamConsecutivoDepto : integer);
  procedure CargarItemsSeleccion(zParamQueryDatos :tzReadOnlyQuery; sParamlista : TJvCustomCheckedComboBox; sParamCadena :string);
  function ObtenerFiltro(sParamPrefijo : string): string;
  procedure kardex_almacen(sParamMensaje: string; sOrigen: string);
  procedure BarraProgresoAvance(Barra : TcxProgressBar; dParamMin, dParamMax, dParamAvance :Extended);
  procedure BarraMostrar(lVisible :boolean; Barra : TcxProgressBar; lEtiqueta : TcxLabel );

  {$REGION 'Procedimientos Control de obra}
  procedure CargarProgramadeTrabajo(sParamContrato, sParamFolio, sParamConvenio, sParamTipo, sParamWbsAnt, sParamWbs,
                                  sParamWbsContrato, sParamActividad, sParamItem, sParamDescripcion :string;
                                  dParamFInicio, dParamFFinal : tDate; sParamMedida : string;
                                  dParamVentaMN, dParamVentaDLL, dParamCantidad, dParamPonderado : double;
                                  iParamNivel :integer; sParamTipoA, sParamAnexo, sParamActAnt : string );

  procedure CreaPlazo(sParamContrato, sParamConvenio, sParamFolio: String; dParamFInicio, dParamFFinal :tDate);
  procedure Ponderar(sParamTabla, sParamConvenio, sParamFolioProg: string; BarraProgreso : TcxProgressBar);
  procedure DistribuyeActividades(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
  procedure DistribuyePrograma(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
  function AvanceFolio(sParamContrato, sParamFolio, sParamPlazo :string; dParamFecha :tDate) : double;
  procedure ActualizaTablaAvancesFolio(sParamContrato, sParamFolio, sParamPlazo, sParamTurno :string; dParamFecha :tDate; dParamAvance : double);
  Procedure procValidaDatosValidaAutoriza_CO(sParamContrato, sParamConvenio, sParamFolio, sParamTurno : string; dParamFecha :tDate;  sParamTabla, sTipo :string; tOrigen: TComponent );
  Procedure procAutorizaDatosValidaAutoriza_CO(sParamContrato,sParamConvenio, sParamFolio, sParamTurno: string; dParamFecha :tDate; sParamTabla, sTipo :string; tOrigen: TComponent );
  procedure GraficaFisicoProgFinanciero(sParamRango, sParamContrato, sParamConvenio, sParamFolio: string; gParamProgramado, gParamFisico, gParamFinanciero, gParamContrato :tRxMemoryData; BarraProgreso : TcxProgressBar );
  procedure CopiarProgramaAnterior(sParamContrato, sParamConvenio, sParamFolio : string; dParmFecha :tDate; BarraProgreso :TcxProgressBar);
  function ChecarProgPonderado(sParamContrato, sParamConvenio, sParamFolio : string) : double;
  procedure DesplazaPartidasFechas(sParamcontrato, sParamConvenio, sParamFolio : string; dParamFechaI, dParamFechaF : tDate; iParamDias : double; sParamStatus, sParamTipoR : string; BarraProgreso :TcxProgressBar );
  procedure EliminarProgramaSinReportadas(sParamContrato, sParamConvenio, sParamFolio : string);
  procedure ActualizaFechasPaquetes(sParamContrato, sParamConvenio, sParamFolio, sParamTabla, sQlCadena, sQlCantidad : string; iParamPorcentaje : double; BarraProgreso :TcxProgressBar);
  procedure ActualizaPlazoFolioPrograma(sParamContrato, sParamConvenio, sParamFolio : string);
  procedure HomologarWbsPartidas(sParamContrato, sParamConvenio, sParamFolio : string; BarraProgreso :TcxProgressBar);
  procedure OrdenamientosPartidaIJAD(sParamContrato, sParamConvenio, sParamFolio, sParamWbsAnterior, sParamActividad, sParamWbs : string; iParamNivel : integer; BarraProgreso :TcxProgressBar; iParamAvance :integer);
  {$ENDREGION}

  Function ObtenerTipoCambio(sParamMoneda :string; dParamFecha :tDate): double;

implementation

function AutoFolio(Formulario, Tabla, Campo : String):String;
 var
  prefijo, prefijo2, Digitos, Aux : String;
  numDigitos, Inicio, i, cantVal, cantVal2, Valor, IniciarEn : Integer;
  zTempMaxCode : TZQuery;
  CodeMax, numcod, Folio : String;
begin
  if connection.zFolios.Active then
    connection.zFolios.Refresh
  else
    connection.zFolios.Open;

  if connection.zFolios.Active and (connection.zFolios.RecordCount > 0) then
  begin
    if connection.zFolios.Locate('NameForm',Formulario,[loCaseInsensitive]) then
    begin
      prefijo := connection.zFolios.FieldByName('Prefijo').AsString;
      Inicio := connection.zFolios.FieldByName('IniciarEn').AsInteger;
      numDigitos := connection.zFolios.FieldByName('NumDig').AsInteger;

      if connection.zFolios.FieldByName('Aplicar').AsString = 'Si' then
      begin
          if ((NumDigitos > 0) and (Inicio > 0)) then
          begin
              prefijo2:='^' + prefijo + '[0-9]{'+IntToStr(NumDigitos)+'}$'; //Servirá para una consulta LIKE posterior
              Digitos := '';
              i:= 0;
        //Transforma la cantidad de digitos en digitos ejemplo: 4 -> 0000
              for i := 1 to numDigitos  do
              Digitos := Digitos + '0';

              zTempMaxCode := TZQuery.Create(nil);
              zTempMaxCode.Connection  := connection.zConnection;

              zTempMaxCode.SQL.Text:= 'Select MAX('+ Campo + ') as Campo ' +
                                      'from ' + Tabla +
                                      ' where ' + Campo + ' REGEXP ' +
                                      QuotedStr(prefijo2);
              zTempMaxCode.Open;

              CodeMax := zTempMaxCode.FieldByName('Campo').AsString;

                    if not (CodeMax= '') then
                    begin
                      cantVal := Length(CodeMax) - numDigitos;
                      Delete(CodeMax, 1, cantVal);
                      Aux := CodeMax;
                      Valor := StrToInt(CodeMax) + 1;
                    end
                    else
                      Valor := connection.zFolios.FieldByName('IniciarEn').AsInteger;//CodeMax
                    Folio := prefijo + FormatFloat(Digitos,Valor);

                    zTempMaxCode.Destroy;
              end
              else if ((NumDigitos = 0) or (Inicio = 0) ) then
                Folio := Prefijo;

      end ELSE Folio := ''; // if Aplicar
    end; //if  locate
  end; // cierra  if recordcount
  Result:=Folio
end;

procedure procCargaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; tOrigen: TComponent; zqDatosParam :tzReadOnlyQuery  );
begin
    zqDatosParam.Active := False;
    zqDatosParam.SQL.Clear;

    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}

        if sParamTabla = 'reportediario' then
        begin
           zqDatosParam.SQL.Add('select sNumeroReporte as iFolio, dIdFecha as Folio, sNumeroOrden as Referencia, sIdConvenio as Solicitado, '+
           ' sIdTurno as Entrega, sIdUsuario as Usuario, lStatus as Estado '+
           ' from reportediario '+
           'where sContrato =:Contrato and lStatus <> "AUTORIZADO" order by dIdFecha DESC');
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqDatosParam.SQL.Add('select iNumeroEstimacion as iFolio, sNumeroOrden as Folio, sNumeroGenerador as Referencia, dFechaInicio as Solicitado, '+
           ' dFechaFinal as Entrega, sIdUsuario as Usuario, lStatus as Estado '+
           ' from estimaciones '+
           'where sContrato =:Contrato and lStatus <> "AUTORIZADO" ');
        end;

        if sParamTabla = 'anexo_requisicion' then
        begin
           zqDatosParam.SQL.Add('select iFolioRequisicion as iFolio, sNumFolio as Folio, sReferencia as Referencia, dFechaSolicitado as Solicitado, '+
           ' dFechaRequerido as Entrega, sIdUsuario as Usuario, sStatus as Estado '+
           ' from anexo_requisicion '+
           'where sContrato =:Contrato and sStatus <> "AUTORIZADO" ');
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqDatosParam.SQL.Add('select iFolioPedido as iFolio, sOrdenCompra as Folio, sNumeroOrden as Referencia, dIdFecha as Solicitado, '+
           ' dFechaEntrega as Entrega, sElaboro as Usuario, sStatus as Estado '+
           ' from anexo_pedidos '+
           'where sContrato =:Contrato and sStatus <> "AUTORIZADO" ');
        end;

        if sParamTabla = 'alm_recepciondemateriales' then
        begin
           zqDatosParam.SQL.Add('select iIdRecepcion as iFolio, sFolioRecepcion as Folio, "N/A" as Referencia, dFechaRecepcion as Solicitado, '+
           ' dFechaRecepcion as Entrega, sIdUsuario as Usuario, sStatus as Estado '+
           ' from alm_recepciondemateriales '+
           'where sContrato =:Contrato and sStatus <> "AUTORIZADO" ');
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           zqDatosParam.SQL.Add('select iFolioSalida as iFolio, sFolioSalida as Folio, sNumeroOrden as Referencia, dFechaSalida as Solicitado, '+
           ' dFechaSalida as Entrega, sIdUsuario as Usuario, sEstatus as Estado '+
           ' from almacen_salida '+
           'where sContrato =:Contrato and sEstatus <> "AUTORIZADO" ');
        end;
        {$endregion}
    end
    else
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqDatosParam.SQL.Add('select sNumeroReporte as iFolio, dIdFecha as Folio, sNumeroOrden as Referencia, sIdConvenio as Solicitado, '+
           ' sIdTurno as Entrega, sIdUsuario as Usuario, lStatus as Estado '+
           ' from reportediario '+
           'where sContrato =:Contrato and lStatus <> "PENDIENTE" ');
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqDatosParam.SQL.Add('select iNumeroEstimacion as iFolio, sNumeroOrden as Folio, sNumeroGenerador as Referencia, dFechaInicio as Solicitado, '+
           ' dFechaFinal as Entrega, sIdUsuario as Usuario, lStatus as Estado '+
           ' from estimaciones '+
           'where sContrato =:Contrato and lStatus <> "PENDIENTE" ');
        end;

        if sParamTabla = 'anexo_requisicion' then
        begin
           zqDatosParam.SQL.Add('select iFolioRequisicion as iFolio, sNumFolio as Folio, sReferencia as Referencia, dFechaSolicitado as Solicitado, '+
           ' dFechaRequerido as Entrega, sIdUsuario as Usuario, sStatus as Estado '+
           ' from anexo_requisicion '+
           'where sContrato =:Contrato and sStatus <> "PENDIENTE" ');
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqDatosParam.SQL.Add('select iFolioPedido as iFolio, sOrdenCompra as Folio, sNumeroOrden as Referencia, dIdFecha as Solicitado, '+
           ' dFechaEntrega as Entrega, sElaboro as Usuario, sStatus as Estado '+
           ' from anexo_pedidos '+
           'where sContrato =:Contrato and sStatus <> "PENDIENTE" ');
        end;

        if sParamTabla = 'alm_recepciondemateriales' then
        begin
           zqDatosParam.SQL.Add('select iIdRecepcion as iFolio, sFolioRecepcion as Folio, "N/A" as Referencia, dFechaRecepcion as Solicitado, '+
           ' dFechaRecepcion as Entrega, sIdUsuario as Usuario, sStatus as Estado '+
           ' from alm_recepciondemateriales '+
           'where sContrato =:Contrato and sStatus <> "PENDIENTE" ');
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           zqDatosParam.SQL.Add('select iFolioSalida as iFolio, sFolioSalida as Folio, sNumeroOrden as Referencia, dFechaSalida as Solicitado, '+
           ' dFechaSalida as Entrega, sIdUsuario as Usuario, sEstatus as Estado '+
           ' from almacen_salida '+
           'where sContrato =:Contrato and sEstatus <> "PENDIENTE" ');
        end;
        {$endregion}
    end;
    zqDatosParam.ParamByName('Contrato').AsString := sParamContrato;
    zqDatosParam.Open;
end;

procedure procValidaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iParamFolio :integer; tOrigen: TComponent  );
var
    zqValida: tzReadOnlyQuery;
begin
    zqValida := TzReadOnlyQuery.create(nil);
    zqValida.Connection := Connection.zConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.SQL.Add('Update anexo_requisicion set sStatus = "VALIDADO" '+
           'where sContrato =:Contrato and iFolioRequisicion =:Folio ');
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.SQL.Add('Update anexo_pedidos set sStatus = "VALIDADO" '+
           'where sContrato =:Contrato and iFolioPedido =:Folio ');
        end;

        if sParamTabla = 'alm_recepciondemateriales' then
        begin
           zqValida.SQL.Add('Update alm_recepciondemateriales set sStatus = "VALIDADO" '+
           'where sContrato =:Contrato and iId =:Folio ');
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           zqValida.SQL.Add('Update almacen_salida set sEstatus = "VALIDADO" '+
           'where sContrato =:Contrato and iFolioSalida =:Folio ');
        end;
        {$endregion}

    end
    else
    begin
        {$region 'Sqls'}
      if sParamTabla = 'anexo_requisicion' then
      begin
         zqValida.SQL.Add('Update anexo_requisicion set sStatus = "PENDIENTE" '+
         'where sContrato =:Contrato and iFolioRequisicion =:Folio ');
      end;

      if sParamTabla = 'anexo_pedidos' then
      begin
         zqValida.SQL.Add('Update anexo_pedidos set sStatus = "PENDIENTE" '+
         'where sContrato =:Contrato and iFolioPedido =:Folio ');
      end;

      if sParamTabla = 'alm_recepciondemateriales' then
      begin
         zqValida.SQL.Add('Update alm_recepciondemateriales set sStatus = "PENDIENTE" '+
         'where sContrato =:Contrato and iId =:Folio ');
      end;

      if sParamTabla = 'almacen_salida' then
      begin
         zqValida.SQL.Add('Update almacen_salida set sEstatus = "PENDIENTE" '+
         'where sContrato =:Contrato and iFolioSalida =:Folio ');
      end;
      {$endregion}

    end;
    zqValida.ParamByName('Contrato').AsString := sParamContrato;
    zqValida.ParamByName('Folio').AsInteger   := iParamFolio;
    zqValida.ExecSQL;

    zqValida.Destroy;
end;

procedure procAutorizaDatosValidaAutoriza(sParamContrato, sParamTabla, sTipo :string; iParamFolio :integer; tOrigen: TComponent  );
var
    zqValida: tzReadOnlyQuery;
begin
    zqValida := TzReadOnlyQuery.create(nil);
    zqValida.Connection := Connection.zConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.SQL.Add('Update anexo_requisicion set sStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and iFolioRequisicion =:Folio ');
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.SQL.Add('Update anexo_pedidos set sStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and iFolioPedido =:Folio ');
        end;

        if sParamTabla = 'alm_recepciondemateriales' then
        begin
           zqValida.SQL.Add('Update alm_recepciondemateriales set sStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and iId =:Folio ');
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           zqValida.SQL.Add('Update almacen_salida set sEstatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and iFolioSalida =:Folio ');
        end;
        {$endregion}

    end
    else
    begin
        {$region 'Sqls'}
        if sParamTabla = 'anexo_requisicion' then
        begin
           zqValida.SQL.Add('Update anexo_requisicion set sStatus = "VALIDADO" '+
           'where sContrato =:Contrato and iFolioRequisicion =:Folio ');
        end;

        if sParamTabla = 'anexo_pedidos' then
        begin
           zqValida.SQL.Add('Update anexo_pedidos set sStatus = "VALIDADO" '+
           'where sContrato =:Contrato and iFolioPedido =:Folio ');
        end;

        if sParamTabla = 'alm_recepciondemateriales' then
        begin
           zqValida.SQL.Add('Update alm_recepciondemateriales set sStatus = "VALIDADO" '+
           'where sContrato =:Contrato and iId =:Folio ');
        end;

        if sParamTabla = 'almacen_salida' then
        begin
           zqValida.SQL.Add('Update almacen_salida set sEstatus = "VALIDADO" '+
           'where sContrato =:Contrato and iFolioSalida =:Folio ');
        end;
        {$endregion}

    end;
    zqValida.ParamByName('Contrato').AsString := sParamContrato;
    zqValida.ParamByName('Folio').AsInteger   := iParamFolio;
    zqValida.ExecSQL;

    zqValida.Destroy;
end;

function encriptar(aStr: String; aKey: Integer): String;
begin
  Result:='';
  RandSeed:=aKey;
  for aKey:=1 to Length(aStr) do
    //Result:=Result+AnsiChar(ord(aStr[aKey]) xor (random(254)+1));
     Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

function desencriptar(aStr: String; aKey: Integer): String;
begin
  Result:='';
  RandSeed:=aKey;
  for aKey:=1 to Length(aStr) do
  //    Result:=Result+AnsiChar(ord(aStr[aKey]) xor (random(254)+1));
  Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

function Noil_maximoId(sParamContrato, sParamTabla, sParamCampo :string) : Integer;
var
    QryMaximo    : TZQuery;
begin

     QryMaximo:=TzQuery.create(nil);
    Try
      {Creacion de objetos de consulta}
      QryMaximo.Connection := Connection.zConnection;

      QryMaximo.Active := False;
      if trim(sParamContrato) <> '' then
      begin
         QryMaximo.SQL.Add('select max('+sParamCampo+') as Maximo from '+sParamTabla+' where sContrato =:Contrato group by sContrato ');
         QryMaximo.ParamByName('contrato').AsString := sParamContrato;
      end
      else
         QryMaximo.SQL.Add('select max('+sParamCampo+') as Maximo from '+sParamTabla+' ');
      QryMaximo.Open;

      result:= 1;
      if QryMaximo.RecordCount > 0 then
         result := QryMaximo.FieldByName('Maximo').AsInteger + 1;

    Finally
        QryMaximo.Destroy;
    End;
end;


procedure BuscaElimina_datos(iCaso: integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaConvenio,
          sParamEmpresa, sParamFolio, sParamWbs, sParamConv, sParamNuevaEmpresa, sParamNuevoFolio, sParamNuevaWbs,
          sParamNuevoConv : string; accion :string; lMensaje :boolean; BarraProgreso :TcxProgressBar);
var
base, tabla, campo, cad : string;
datos : array[ 1..200] of String;
i,x,cuenta_campo : Integer;
QryTablas, QryDatos    : TZQuery;
begin
    QryDatos := TzQuery.create(nil);
    QryDatos.Connection := Connection.zConnection;
    QryTablas:= TzQuery.create(nil);
    QryTablas.Connection := Connection.zConnection;
    try
     QryTablas.Active := False ;
     QryTablas.SQL.Clear ;
     QryTablas.SQL.Add('Show tables') ;
     QryTablas.Open ;
     base := 'Tables_in_'+global_db;
     i := 1;

     while not QryTablas.Eof do
     begin
         tabla :=  QryTablas.FieldValues[base];
         qryDatos.Active := False ;
         qryDatos.SQL.Clear ;
         qryDatos.SQL.Add('describe '+tabla+' ');
         qryDatos.Open ;

         if qryDatos.RecordCount > 0 then
         begin
             cuenta_campo := 0;
             while not qryDatos.Eof do
             begin
                 case iCaso of

                 1: {$REGION 'CASO 1 Frentes de trabajo,Folio,Contrato'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio, wbs, plazo
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaConvenio <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo)
                                     else
                                        If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                           inc(cuenta_campo);

                            if cuenta_campo  = 4 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, folio, wbs.
                             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                       inc(cuenta_campo)
                                    else
                                       If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                          inc(cuenta_campo);

                                if cuenta_campo  = 3 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end
                             else
                                //Seleccionamos primero los contrato, folio..
                               if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                               begin
                                   If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                      inc(cuenta_campo)
                                   else
                                      If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                         inc(cuenta_campo);

                                  if cuenta_campo  = 2 then
                                  begin
                                       datos[i] := tabla;
                                       i:= i + 1;
                                       cuenta_campo := 0;
                                  end;
                               end
                               else
                                 //Seleccionamos primero los contrato
                                 if (sLlevaEmpresa <> '')  then
                                 begin
                                     If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                        inc(cuenta_campo);

                                    if cuenta_campo  = 1 then
                                    begin
                                         datos[i] := tabla;
                                         i:= i + 1;
                                         cuenta_campo := 0;
                                    end;
                                 end;
                     end;
                     {$ENDREGION}

                 2: {$REGION 'CASO 2 Catalogo de conceptos'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio, wbs.
                         if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') and (sLlevaWbs <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo);

                            if cuenta_campo  = 3 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, folio.
                             if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                       inc(cuenta_campo);

                                if cuenta_campo  = 2 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end;

                     end;
                     {$ENDREGION}

                 3: {$REGION 'CASO 3 Convenios'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio.
                         if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                         begin
                            If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                  inc(cuenta_campo)
                               else
                                  If qryDatos.FieldValues['Field'] = sLlevaConvenio then
                                     inc(cuenta_campo);

                              if cuenta_campo  = 2 then
                              begin
                                   datos[i] := tabla;
                                   i:= i + 1;
                                   cuenta_campo := 0;
                              end;
                         end;

                     end;
                     {$ENDREGION}

                 end;
                 qryDatos.Next;
             end;
         end;
         BarraProgresoAvance(BarraProgreso, 0,100,40/QryTablas.RecordCount);
         QryTablas.Next;
     end;

     //Elimina todos los registros...
     if accion = 'borrar' then
     begin
         x := i-1;
         while x >= 1 do
         begin
             tabla := datos[x];
             QryTablas.Active := False ;
             QryTablas.SQL.Clear ;
             case iCaso of
             1: {$REGION 'Programa de trabajo, Folio, Contrato'}
                 if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '')  and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sWbs like :Wbs and sTipoAnexo ="PT"');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                     begin
                         QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs like :Wbs and sTipoanexo = "PT"');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                         QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     end
                     else
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                         begin
                             QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio ');
                             QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                             QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                         end
                         else
                             if (sLlevaEmpresa <> '') then
                             begin
                                 QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato ');
                                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                             end;
             {$ENDREGION}

             2: {$REGION 'Catalogo de conceptos, Convenio'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') and (sLlevaWbs <> '')  then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo and sWbs like :Wbs and sTipoAnexo = "CC"');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                     begin
                         QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo and sTipoAnexo ="CC"');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     end;
                 {$ENDREGION}

             3: {$REGION 'Convenios'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('delete from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Plazo ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                 end;
                 {$ENDREGION}
             end;

             BarraProgresoAvance(BarraProgreso, 0,100,11/i);
             QryTablas.ExecSQL ;
             x := x-1;
         end;

         if BarraProgreso.Position < 100 then
         begin
            BarraProgresoAvance(BarraProgreso, 0,100,50);
            sleep(150);
         end;
     end;
     // Actualiza todos los registros..
     if accion = 'actualizar' then
     begin
         for x := 1 to i -1 do
         begin
             tabla := datos[x];
             QryTablas.Active := False ;
             QryTablas.SQL.Clear ;

             case iCaso of

             1: {$REGION 'Programa de trabajo, Folio, Contrato'}
                 if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva  where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sWbs =:Wbs and sTipoAnexo = "PT" ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                     begin
                         QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs =:Wbs and sTipoAnexo = "PT"');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                         QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                         QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
                     end
                     else
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                         begin
                             QryTablas.SQL.Add('update ' +tabla+ ' set sNumeroOrden =:NuevoFolio where sContrato = :Contrato and sNumeroOrden =:Folio ');
                             QryTablas.Params.ParamByName('Contrato').AsString   := sParamEmpresa ;
                             QryTablas.Params.ParamByName('Folio').AsString      := sParamFolio;
                             QryTablas.Params.ParamByName('NuevoFolio').AsString := sParamNuevoFolio;
                         end
                         else
                             if (sLlevaEmpresa <> '') then
                             begin
                                 QryTablas.SQL.Add('update ' +tabla+ ' set sContrato =:NuevoContrato where sContrato = :Contrato ');
                                 QryTablas.Params.ParamByName('Contrato').AsString       := sParamEmpresa ;
                                 QryTablas.Params.ParamByName('NuevoContrato').AsString  := sParamNuevaEmpresa ;
                             end;
                   {$ENDREGION}

             2: {$REGION 'Catalogo de conceptos'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') and (sLlevaWbs <> '')  then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva  where sContrato = :Contrato and sIdConvenio =:Plazo and sWbs =:Wbs and sTipoAnexo = "CC"');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString     := sParamConv;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                     QryTablas.Params.ParamByName('WbsNueva').AsString  := sParamNuevaWbs;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                     begin
                         QryTablas.SQL.Add('update ' +tabla+ ' set sWbs =:WbsNueva where sContrato = :Contrato and sIdConvenio =:Plazo and sTipoAnexo = "CC"');
                         QryTablas.Params.ParamByName('Contrato').AsString   := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Plazo').AsString      := sParamConv;
                         QryTablas.Params.ParamByName('WbsNueva').AsString   := sParamNuevaWbs;
                     end;
                   {$ENDREGION}

             3: {$REGION 'Convenios'}
                 if (sLlevaEmpresa <> '') and (sLlevaConvenio <> '') then
                 begin
                     QryTablas.SQL.Add('update ' +tabla+ ' set sIdConvenio =:NuevoPlazo where sContrato = :Contrato and sIdConvenio =:Plazo ');
                     QryTablas.Params.ParamByName('Contrato').AsString   := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Plazo').AsString      := sParamConv;
                     QryTablas.Params.ParamByName('NuevoPlazo').AsString := sParamNuevoConv;
                 end;
               {$ENDREGION}

             end;
             QryTablas.ExecSQL ;
             BarraProgresoAvance(BarraProgreso, 0,100,11/i);
         end;

         if BarraProgreso.Position < 100 then
         begin
            BarraProgresoAvance(BarraProgreso, 0,100,50);
            sleep(150);
         end;
     end;

     if lMensaje = True then
     begin
        BarraProgresoAvance(BarraProgreso, 0,100,50);
        messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
     end;

    finally
        QryDatos.destroy;
        QryTablas.destroy;
    end;
end;

function BuscaAntesEliminar_datos(iCaso : integer; sParamTabla, sLlevaEmpresa, sLlevaFolio, sLlevaWbs, sLLevaAct, sParamEmpresa, sParamFolio, sParamWbs, sParamAct, sMensaje : string; lMensaje :boolean; BarraProgreso :TcxProgressBar) : boolean;
var
   base, tabla, campo, cad : string;
   datos : array[ 1..200] of String;
   i,x,cuenta_campo    : Integer;
   QryTablas, QryDatos : TZQuery;
   zNuevaConexion : tzConnection;
begin
    QryDatos := TzQuery.create(nil);
    QryDatos.Connection := Connection.zConnection;
    QryTablas:= TzQuery.create(nil);
    QryTablas.Connection := Connection.zConnection;

    zNuevaConexion:= tzConnection.create(nil);
    zNuevaConexion.Catalog  := connection.zConnection.Catalog;
    zNuevaConexion.Database := connection.zConnection.DataBase;
    zNuevaConexion.HostName := connection.zConnection.HostName;
    zNuevaConexion.PassWord := connection.zConnection.PassWord;
    zNuevaConexion.Port     := connection.zConnection.Port;
    zNuevaConexion.User     := connection.zConnection.User;
    zNuevaConexion.Protocol := connection.zConnection.Protocol;
    zNuevaConexion.Properties := connection.zConnection.Properties;
    zNuevaConexion.TransactIsolationLevel := connection.zConnection.TransactIsolationLevel;
    zNuevaConexion.Connect;

    try
     QryTablas.Active := False ;
     QryTablas.SQL.Clear ;
     QryTablas.SQL.Add('Show tables') ;
     QryTablas.Open ;
     base := 'Tables_in_'+global_db;
     i := 1;
     result := False;
     while not QryTablas.Eof do
     begin
         tabla :=  QryTablas.FieldValues[base];
         qryDatos.Active := False ;
         qryDatos.SQL.Clear ;
         qryDatos.SQL.Add('describe '+tabla+' ');
         qryDatos.Open ;
         {$region 'Busca Campos'}
         if qryDatos.RecordCount > 0 then
         begin
             cuenta_campo := 0;
             while not qryDatos.Eof do
             begin
                 case iCaso of
                  1:{$REGION 'CASE 1 Folios, Programas'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, folio, wbs, act.
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo)
                                     else
                                        If qryDatos.FieldValues['Field'] = sLlevaAct then
                                           inc(cuenta_campo);

                            if cuenta_campo  = 4 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, folio, act.
                             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                       inc(cuenta_campo)
                                    else
                                       If qryDatos.FieldValues['Field'] = sLlevaAct then
                                          inc(cuenta_campo);

                                if cuenta_campo  = 3 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end
                             else
                                //Seleccionamos primero los contrato, folio..
                               if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                               begin
                                   If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                      inc(cuenta_campo)
                                   else
                                      If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                         inc(cuenta_campo);

                                  if cuenta_campo  = 2 then
                                  begin
                                       datos[i] := tabla;
                                       i:= i + 1;
                                       cuenta_campo := 0;
                                  end;
                               end
                               else
                                 //Seleccionamos primero los contrato
                                 if (sLlevaEmpresa <> '')  then
                                 begin
                                     If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                        inc(cuenta_campo);

                                    if cuenta_campo  = 1 then
                                    begin
                                         datos[i] := tabla;
                                         i:= i + 1;
                                         cuenta_campo := 0;
                                    end;
                                 end;
                     end;
                 {$ENDREGION}

                  2:{$REGION 'CASE 2 Catalogo de conceptos'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, convenio, wbs.
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo)
                                else
                                   If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                      inc(cuenta_campo);

                            if cuenta_campo  = 3 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end
                         else
                             //Seleccionamos primero los contrato, wbs.
                             if (sLlevaEmpresa <> '')  and (sLlevaWbs <> '') then
                             begin
                                 If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                    inc(cuenta_campo)
                                 else
                                    If qryDatos.FieldValues['Field'] = sLlevaWbs then
                                       inc(cuenta_campo);

                                if cuenta_campo  = 2 then
                                begin
                                     datos[i] := tabla;
                                     i:= i + 1;
                                     cuenta_campo := 0;
                                end;
                             end;
                     end;
                 {$ENDREGION}

                  3:{$REGION 'CASE 3 Convenios'}
                     if pos(tabla, sParamTabla) = 0 then
                     begin
                         //Seleccionamos primero los contrato, convenio, wbs.
                         if (sLlevaEmpresa <> '') and (sLlevaFolio <> '')  then
                         begin
                             If qryDatos.FieldValues['Field'] = sLlevaEmpresa then
                                inc(cuenta_campo)
                             else
                                If qryDatos.FieldValues['Field'] = sLlevaFolio then
                                   inc(cuenta_campo);

                            if cuenta_campo  = 2 then
                            begin
                                 datos[i] := tabla;
                                 i:= i + 1;
                                 cuenta_campo := 0;
                            end;
                         end;
                     end;
                 {$ENDREGION}

                 end;
                 qryDatos.Next;
             end;
         end;
         BarraProgresoAvance(BarraProgreso, 0,100,40/QryTablas.RecordCount);
         {$endregion}
         QryTablas.Next;
     end;

     x := i-1;
     while x >= 1 do
     begin
         tabla := datos[x];
         QryTablas.Active := False ;
         QryTablas.SQL.Clear ;
         case iCaso of
         1: {$REGION 'CASE 1 Folios, Programas'}
             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') and (sLlevaAct <> '') then
             begin
                 QryTablas.SQL.Add('select sNumeroOrden from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sWbs like:Wbs and sNumeroActividad =:Act group by sContrato ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                 QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                 QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
             end
             else
                 if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaAct <> '') then
                 begin
                     QryTablas.SQL.Add('select sNumeroOrden ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio and sNumeroActividad =:Act group by sContrato ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     QryTablas.Params.ParamByName('Act').AsString       := sParamAct;
                 end
                 else
                     if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
                     begin
                         QryTablas.SQL.Add('select sNumeroOrden from ' +tabla+ ' where sContrato = :Contrato and sNumeroOrden =:Folio ');
                         QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         QryTablas.Params.ParamByName('Folio').AsString     := sParamFolio;
                     end
                     else
                         if (sLlevaEmpresa <> '') then
                         begin
                             QryTablas.SQL.Add('select sNumeroOrden from ' +tabla+ ' where sContrato = :Contrato group by sContrato');
                             QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                         end;
            {$ENDREGION}

         2: {$REGION 'CASE 2 Catalogo de conceptos'}
             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') and (sLlevaWbs <> '') then
             begin
                 QryTablas.SQL.Add('select sContrato from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Folio and sWbs like :Wbs group by sContrato ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                 QryTablas.Params.ParamByName('Convenio').AsString  := sParamFolio;
                 QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
             end
             else
                 if (sLlevaEmpresa <> '') and (sLlevaWbs <> '') then
                 begin
                     QryTablas.SQL.Add('select sContrato from ' +tabla+ ' where sContrato = :Contrato and sWbs like :Wbs group by sContrato ');
                     QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                     QryTablas.Params.ParamByName('Wbs').AsString       := sParamWbs;
                 end;
            {$ENDREGION}

         3: {$REGION 'CASE 3 Convenios'}
             if (sLlevaEmpresa <> '') and (sLlevaFolio <> '') then
             begin
                 QryTablas.SQL.Add('select sIdConvenio from ' +tabla+ ' where sContrato = :Contrato and sIdConvenio =:Convenio group by sIdConvenio ');
                 QryTablas.Params.ParamByName('Contrato').AsString  := sParamEmpresa ;
                 QryTablas.Params.ParamByName('Convenio').AsString  := sParamFolio;
             end;
            {$ENDREGION}

         end;
         QryTablas.Open;

         if QryTablas.RecordCount > 0 then
         begin
             QryDatos.Connection := zNuevaConexion;

             QryDatos.Active := False;
             QryDatos.SQL.Clear;
             QryDatos.SQL.Add('USE information_schema ; ');

             QryDatos.ExecSQL;

             QryDatos.Active := False;
             QryDatos.SQL.Clear;
             QryDatos.SQL.Add('SELECT TABLE_COMMENT FROM tables WHERE TABLE_SCHEMA = :bd AND TABLE_NAME = :tabla ;');
             QryDatos.ParamByName('bd').AsString    :=  connection.zConnection.Database;
             QryDatos.ParamByName('tabla').AsString :=  tabla;
             QryDatos.Open;

             cad := cad + #13 + QryDatos.FieldByName('TABLE_COMMENT').AsString;
         end;
         BarraProgresoAvance(BarraProgreso, 0,100,11/i);
         x := x-1;
     end;

     if cad <> '' then
     begin
         result := True;
         if lMensaje = True then
         begin
            BarraProgresoAvance(BarraProgreso, 0,100,50);
            messageDLG('No se puede eliminar '+sMensaje+' se encuentra en: '+cad, mtWarning, [mbOk], 0);
         end;
     end;

    finally
        QryDatos.destroy;
        QryTablas.destroy;
        zNuevaConexion.Destroy;
    end;
end;

procedure ActualizaDatos_una_tabla_maestra(sParamTabla, sLlave, sCampo1, sCampo2, sCampo3, sValorLlave, sValorNuevoCampo1, sValorNuevoCampo2, sValorNuevoCampo3 : string; accion :string; lMensaje :boolean);
var
   QryTablas    : TZQuery;
begin

    QryTablas:= TzQuery.create(nil);
    QryTablas.Connection := Connection.zConnection;
    try
     // Actualiza todos los registros..
     if accion = 'actualizar' then
     begin
         QryTablas.Active := False ;
         QryTablas.SQL.Clear ;
         QryTablas.SQL.Add('update ' +sParamTabla+ ' set '+sCampo1+ sValorNuevoCampo1+ sCampo2+ sValorNuevoCampo2+ sCampo3+sValorNuevoCampo3+' where '+sLlave+' = :Llave ');
         QryTablas.Params.ParamByName('Llave').AsString      := sValorLlave ;
         QryTablas.ExecSQL ;
     end;
     if lMensaje = True then
        messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);

    finally
        QryTablas.destroy;
    end;
end;

function Obtener_almacen(sParamAlmacen, sParamPrincipal : string): string;
var
   QryConsulta    : TZQuery;
begin
   QryConsulta:= TzQuery.create(nil);
   QryConsulta.Connection := Connection.zConnection;

   QryConsulta.Active := False;
   QryConsulta.SQL.Add('select sDescripcion from almacenes where sIdAlmacen =:almacen ');
   if sParamPrincipal <> '' then
      QryConsulta.SQL.Add(' and lPrincipal :principal ');
   QryConsulta.ParamByName('almacen').AsString   := sParamAlmacen;
   if sParamPrincipal <> '' then
      QryConsulta.ParamByName('principal').AsString := sParamPrincipal;
   QryConsulta.Open;

   result := QryConsulta.FieldByName('sDescripcion').AsString;
   QryConsulta.Destroy;
end;

function ObtenerConsecutivoDepto(sParamModulo, sParamCadenaDepto : string; iParamConsecutivoDepto : integer ):string;
var
   Aux, Aux2, i, Maximo : integer;
   Numdigitos, FolioR : string;
   QryConfiguracion    : TZQuery;
begin
   QryConfiguracion:= TzQuery.create(nil);
   QryConfiguracion.Connection := Connection.zConnection;

    if sParamModulo = 'Requisicion' then
    begin
        Aux  := Connection.configuracion.fieldByName('iNumReq').AsInteger ;
        Aux2 := iParamConsecutivoDepto ;
        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        if Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'GENERAL' Then
        begin
            Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoReq');
            FolioR := Connection.configuracion.FieldByName('sPrefijoReq').AsString+formatfloat(Numdigitos,Maximo) ;
        end;

        if Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'DEPARTAMENTOS' Then
        begin
             Aux2   := iParamConsecutivoDepto + 1;
             FolioR := sParamCadenaDepto+formatfloat(Numdigitos,Aux2);
        end;
        result := FolioR;
    end;

    if sParamModulo = 'Orden_compra' then
    begin
        Aux  := Connection.configuracion.fieldByName('iNumOrdCompra').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoCom');
        FolioR := Connection.configuracion.FieldByName('sPrefijoOrdCompra').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    if sParamModulo = 'Recepciones' then
    begin
        Aux  := Connection.configuracion.fieldByName('iNumRecepcion').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoRecepcion');
        FolioR := Connection.configuracion.FieldByName('sPrefijoRecepcion').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    if sParamModulo = 'Entradas' then
    begin
        Aux  := Connection.configuracion.fieldByName('iNumEntrada').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoEntrada');
        FolioR := Connection.configuracion.FieldByName('sPrefijoEntrada').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    if sParamModulo = 'Salidas' then
    begin
        Aux  := Connection.configuracion.fieldByName('iAlmNumSal').AsInteger ;

        Numdigitos := '';
        for i := 1 to Aux do
          Numdigitos := Numdigitos+'0';

        Maximo := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoSal');
        FolioR := Connection.configuracion.FieldByName('sAlmPrefijoSal').AsString+formatfloat(Numdigitos,Maximo) ;

        result := FolioR;
    end;

    QryConfiguracion.Destroy;
end;

procedure ActualizarConsecutivoDepto(sParamModulo, sParamIdDepto :string; iParamConsecutivoDepto : integer);
var
   QryConfiguracion    : TZQuery;
begin
    QryConfiguracion:= TzQuery.create(nil);
    QryConfiguracion.Connection := Connection.zConnection;

    if sParamModulo = 'Requisicion' then
    begin
        if Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'GENERAL' Then
        begin
            QryConfiguracion.Active := False;
            QryConfiguracion.SQL.Text := 'Update configuracion set iAlmConsecutivoReq = :valor where sContrato = :contrato';
            QryConfiguracion.ParamByName( 'contrato' ).AsString := global_contrato;
            QryConfiguracion.ParamByName( 'valor' ).AsInteger   := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoReq');
            QryConfiguracion.ExecSQL;
        end;

        If Connection.configuracion.FieldByName('sConfConsecutivo').AsString = 'DEPARTAMENTOS' Then
        begin
           QryConfiguracion.Active := False;
           QryConfiguracion.SQL.Text := 'Update departamentos set nConsecutivo = :valor Where sIdDepartamento =:IdDepto';
           QryConfiguracion.ParamByName('valor' ).AsInteger    := iParamConsecutivoDepto + 1;
           QryConfiguracion.ParamByName('IdDepto').AsString    := sParamIdDepto ;
           QryConfiguracion.ExecSQL;

        end;

    end;

    if sParamModulo = 'Orden_compra' then
    begin
         QryConfiguracion.Active := False;
         QryConfiguracion.SQL.Text := 'Update configuracion set iAlmConsecutivoCom = :valor where sContrato = :contrato';
         QryConfiguracion.ParamByName( 'contrato' ).AsString := global_contrato;
         QryConfiguracion.ParamByName( 'valor' ).AsInteger   := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoCom');
         QryConfiguracion.ExecSQL;

    end;

    if sParamModulo = 'Recepciones' then
    begin
         QryConfiguracion.Active := False;
         QryConfiguracion.SQL.Text := 'Update configuracion set iAlmConsecutivoRecepcion = :valor where sContrato = :contrato';
         QryConfiguracion.ParamByName( 'contrato' ).AsString := global_contrato;
         QryConfiguracion.ParamByName( 'valor' ).AsInteger   := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoRecepcion');
         QryConfiguracion.ExecSQL;

    end;

    if sParamModulo = 'Entrada' then
    begin
         QryConfiguracion.Active := False;
         QryConfiguracion.SQL.Text := 'Update configuracion set iAlmConsecutivoEntrada = :valor where sContrato = :contrato';
         QryConfiguracion.ParamByName( 'contrato' ).AsString := global_contrato;
         QryConfiguracion.ParamByName( 'valor' ).AsInteger   := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoEntrada');
         QryConfiguracion.ExecSQL;

    end;

    if sParamModulo = 'Salida' then
    begin
         QryConfiguracion.Active := False;
         QryConfiguracion.SQL.Text := 'Update configuracion set iAlmConsecutivoSal = :valor where sContrato = :contrato';
         QryConfiguracion.ParamByName( 'contrato' ).AsString := global_contrato;
         QryConfiguracion.ParamByName( 'valor' ).AsInteger   := Noil_maximoId(global_contrato, 'configuracion', 'iAlmConsecutivoSal');
         QryConfiguracion.ExecSQL;

    end;

    QryConfiguracion.Destroy;
end;

procedure CargarItemsSeleccion(zParamQueryDatos :tzReadOnlyQuery; sParamlista : TJvCustomCheckedComboBox; sParamCadena :string);
var
 indice : integer;
begin
    sParamlista.Clear;
    while not zParamQueryDatos.Eof do
    begin
        sParamlista.Items.Add(zParamQueryDatos.FieldByName('iITem').AsString);
        zParamQueryDatos.next;
    end;

    //Ahora checar los que se encuentran seleccionados
    zParamQueryDatos.First;
    while not zParamQueryDatos.Eof do
    begin
        if pos(zParamQueryDatos.FieldByName('iITem').AsString, sParamCadena) > 0 then
        begin
           indice := sParamlista.Items.IndexOf(zParamQueryDatos.FieldByName('iITem').AsString);
           sParamlista.Checked[indice] := True;
        end;
        zParamQueryDatos.next;
    end;

end;

function ObtenerFiltro(sParamPrefijo : string) : string;
var
   cadena : string;
   num : integer;
begin
    cadena := connection.configuracion.FieldByName('sEjercicioFiltro').AsString;

    if sParamPrefijo <> '' then
       sParamPrefijo := sParamPrefijo + '.';

    if cadena = '' then
       result := '';
    while cadena <> '' do
    begin
         num := pos(',',cadena);
         if num > 0 then
         begin
            if result = '' then
              result := result + ' and ('+sParamPrefijo+'iPeriodo = ' + copy(cadena,1,num-1)
            else
              result := result + ' or '+sParamPrefijo+'iPeriodo = ' + copy(cadena,1,num-1);
            cadena := copy(cadena, num + 1, length(cadena));
         end
         else
         begin
            if result = '' then
               result := result + ' and '+sParamPrefijo+'iPeriodo = ' + cadena
            else
               result := result + ' or '+sParamPrefijo+'iPeriodo = ' + cadena + ' )';
            cadena := '';
         end;
    end;
end;

procedure kardex_almacen(sParamMensaje: string; sOrigen: string);
begin
    {Validacion de requisiciones, ordenes de compra, recepcion de materiales y salidas de materiales.}
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
      'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
    connection.zCommand.Params.ParamByName('Contrato').AsString    := Global_Contrato;
    connection.zCommand.Params.ParamByName('Usuario').AsString     := Global_Usuario;
    connection.zCommand.Params.ParamByName('Fecha').AsDate         := Date;
    connection.zCommand.Params.ParamByName('Hora').AsString        := FormatDateTime('hh:mm:ss.zzz', Now);
    connection.zCommand.Params.ParamByName('Descripcion').AsString := sParamMensaje ;
    connection.zCommand.Params.ParamByName('Origen').AsString      := sOrigen;
    connection.zCommand.ExecSQL();
end;

procedure CargarProgramadeTrabajo(sParamContrato, sParamFolio, sParamConvenio, sParamTipo, sParamWbsAnt, sParamWbs,
                                  sParamWbsContrato, sParamActividad, sParamItem, sParamDescripcion :string;
                                  dParamFInicio, dParamFFinal : tDate; sParamMedida : string;
                                  dParamVentaMN, dParamVentaDLL, dParamCantidad, dParamPonderado : double;
                                  iParamNivel :integer; sParamTipoA, sParamAnexo, sParamActAnt : string );
var
   sSql : string;
begin

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      sSQL :='INSERT INTO actividadesxorden ( sContrato , sNumeroOrden, sIdConvenio, sTipoActividad, sWbsAnterior, ' +
             'sWbs, sNumeroActividad, iItemOrden , mDescripcion, dFechaInicio, dDuracion, dFechaFinal, ' +
             'dVentaMN, dVentaDLL, sMedida, dCantidad, dPonderado, iColor, iNivel, ' +
             'sTipoAnexo, sWbsContrato, sAnexo, sActividadAnterior ) ' +
             'VALUES (:contrato, :orden, :convenio, :tipo, :anterior, :wbs, :actividad, :Item, :Descripcion, ' +
             ':Inicio, :Duracion, :Final, :MN, :DLL, :Medida, :CantidadAnexo, :Ponderado, :color, ' +
             ':Nivel, :TipoA, :WbsContrato, :Anexo, :ActividadAnterior)';
      connection.zCommand.SQL.Add(sSQL);
      Connection.zCommand.Params.ParamByName('contrato').AsString       := sParamContrato;
      Connection.zCommand.Params.ParamByName('orden').AsString          := sParamFolio;
      Connection.zCommand.Params.ParamByName('convenio').AsString       := sParamConvenio;
      if sParamTipo = 'Paquete' then
        Connection.zCommand.Params.ParamByName('tipo').AsString         := sParamTipo
      else
        Connection.zCommand.Params.ParamByName('tipo').AsString         := 'Actividad';
      Connection.zCommand.Params.ParamByName('anterior').AsString       := Trim(sParamWbsAnt);
      if Trim(sParamWbsAnt) <> '' then
        Connection.zCommand.Params.ParamByName('wbs').AsString          := sParamWbs
      else
        Connection.zCommand.Params.ParamByName('wbs').AsString          := Trim(sParamActividad);
      Connection.zCommand.Params.ParamByName('WbsContrato').AsString    := sParamWbsContrato;
      Connection.zCommand.Params.ParamByName('actividad').AsString      := Trim(sParamActividad);
      Connection.zCommand.Params.ParamByName('Item').Asstring           := sParamItem;
      Connection.zCommand.Params.ParamByName('Descripcion').AsMemo      := Trim(sParamDescripcion);
      Connection.zCommand.Params.ParamByName('Inicio').AsDate           := dParamFInicio;
      Connection.zCommand.Params.ParamByName('Duracion').AsInteger      := DaysBetween(dParamFInicio,dParamFFinal) + 1;
      Connection.zCommand.Params.ParamByName('Final').AsDate            := dParamFFinal;
      Connection.zCommand.Params.ParamByName('MN').AsFloat              := dParamVentaMN;
      Connection.zCommand.Params.ParamByName('DLL').AsFloat             := dParamVentaDLL;
      Connection.zCommand.Params.ParamByName('Medida').AsString          := Trim(sParamMedida);
      Connection.zCommand.Params.ParamByName('CantidadAnexo').AsFloat    := dParamCantidad;
      Connection.zCommand.Params.ParamByName('Ponderado').AsFloat        := dParamPonderado;
      if sParamTipo = 'Paquete' then
        Connection.zCommand.Params.ParamByName('Color').AsInteger        := 12
      else
        Connection.zCommand.Params.ParamByName('Color').AsInteger        := 0;
      Connection.zCommand.Params.ParamByName('Nivel').AsInteger          := iParamNivel;
      Connection.zCommand.Params.ParamByName('TipoA').AsString           := sParamTipoA;
      Connection.zCommand.Params.ParamByName('Anexo').AsString           := sParamAnexo;
      Connection.zCommand.Params.ParamByName('ActividadAnterior').AsString  := sParamActAnt;
      connection.zCommand.ExecSQL;
end;

procedure CreaPlazo(sParamContrato, sParamConvenio, sParamFolio: String; dParamFInicio, dParamFFinal :tDate);
begin
     try
        //Aquí insertamos el convenio 1 en automático en repogramaciones del contrato
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('insert into convenios (sContrato, sNumeroOrden, sIdConvenio, sDescripcion, dFecha, dFechaInicio, dFechaFinal, mComentarios) '+
                                    'values (:contrato, :orden, :convenio, :descripcion, :Fecha, :fechaI, :fechaF,:comentario)');
        Connection.zCommand.Params.ParamByName('Contrato').AsString  := sParamContrato;
        Connection.zCommand.Params.ParamByName('Convenio').AsString  := sParamConvenio;
        Connection.zCommand.Params.ParamByName('Orden').AsString     := sParamFolio;
        Connection.zCommand.Params.ParamByName('descripcion').AsString := sParamFolio +' PLAZO - 0'+ sParamConvenio;
        Connection.zCommand.Params.ParamByName('fecha').AsDate         := Now();
        Connection.zCommand.Params.ParamByName('fechaI').AsDate        := dParamFInicio;
        Connection.zCommand.Params.ParamByName('fechaF').AsDate        := dParamFFinal;
        Connection.zCommand.Params.ParamByName('comentario').AsString  := 'PLAZO INICIAL';
        connection.zCommand.ExecSQL();

      Except
      end;

end;

procedure Ponderar(sParamTabla, sParamConvenio, sParamFolioProg: string; BarraProgreso : TcxProgressBar);
var
  dMontoContratoMN: Currency;
  dMontoContratoDLL: Currency;
  dPonderadoAjuste,
    Difer, Ponderado,
    decPonderado, Suma: Extended;
  sQlCadenaFolioProg, sQlCantidad : string;
begin
     if sParamFolioProg <> '' then
     begin
        sQlCadenaFolioProg := 'and sNumeroOrden =:Orden ';
        sQlCantidad := 'dCantidad';
     end
     else
     begin
        sQlCadenaFolioProg := 'and :Orden =:Orden';
        sQlCantidad := 'dCantidadAnexo';
     end;

      //Inicia proceso de estructura del proyecto ...
      // Que ponderados se calcularan ?
      // Sumo todos las partidas anexo que tengan en lCalculo <> Si



      Connection.zCommand.Active := False;
      connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('update '+sParamTabla+' SET dPonderado = 0 ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio '+ sQlCadenaFolioProg);
      connection.zCommand.Params.ParamByName('Contrato').asString := global_contrato;
      connection.zCommand.Params.ParamByName('Convenio').asString := sParamConvenio;
      connection.zCommand.Params.ParamByName('orden').AsString    := sParamFolioProg;
      connection.zCommand.ExecSQL;

      BarraProgresoAvance(BarraProgreso, 0,100,5);
      dPonderadoAjuste := 100;

      // Actualizacion de Costos ....
      dMontoContrato := 0;
      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sum('+sQlCantidad+' * dVentaMN) as dMontoMN From '+sParamTabla+
        ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        ' and lCalculo="Si" group by sContrato');
      Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
      Connection.QryBusca.Open;

      if Connection.QryBusca.RecordCount > 0 then
         dMontoContratoMN := Connection.QryBusca.FieldValues['dMontoMN'];

      if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
      begin
          {$REGION 'Ponderado Financiero'}
          if dMontoContratoMN > 0 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update '+sParamTabla+' SET dPonderado = ((('+sQlCantidad+' * dVentaMN) / :montocontrato) * :miMaximoPonderado) ' +
              'Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and '+sQlCantidad+' <> 0 ' +
              'and lCalculo="Si"');
            connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
            connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolioProg;
            connection.zcommand.params.ParamByName('montocontrato').AsFloat     := dMontoContratoMN;
            connection.zcommand.params.ParamByName('miMaximoPonderado').AsFloat := dPonderadoAjuste;
            connection.zCommand.ExecSQL;
          end;
          BarraProgresoAvance(BarraProgreso, 10,00,55);
          {$ENDREGION}
      end
      else
        if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
        begin
           {$REGION 'Ponderado Tiempo'}
            //Calculo duración del programa ...
            Connection.QryBusca.Active := False;
            Connection.QryBusca.Filtered := False;
            Connection.QryBusca.SQL.Clear;
            Connection.QryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From  '+sParamTabla+
              ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
              ' and lcalculo="Si" group by sContrato ');
            Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
            Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
            Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
            Connection.QryBusca.Open;

            if connection.QryBusca.RecordCount > 0 then
            begin
              connection.zCommand.Active := False;
              connection.zCommand.Filtered := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Text := 'select * from '+sParamTabla+' where sContrato = :Contrato And sIdConvenio = :Convenio '+sQlCadenaFolioProg+' And sTipoActividad = "Actividad" and dDuracion <> 0 ' +
                'and lCalculo="Si" order by CONVERT(SUBSTRING(iItemOrden, 6), SIGNED INTEGER)';
              connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
              connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
              connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolioProg;
              connection.zCommand.Open;

              Difer := 0; // Diferencia para ajuste entre partidas
              Ponderado := 0; // Almacenamiento de ponderado total calculado
              Suma := 0;
              while not Connection.zCommand.Eof do
              begin
                Ponderado := (Connection.zCommand.FieldByName('dDuracion').AsFloat / Connection.QryBusca.FieldValues['dDuracionTotal']);
                Ponderado := Ponderado + Difer; // Sumar la diferencia anterior para ajuste automático
                decPonderado := Trunc(Ponderado * 1000000) / 1000000;
                Difer := Ponderado - decPonderado;
                decPonderado := decPonderado * dPonderadoAjuste;

                Suma := Suma + decPonderado;

                if (Connection.zCommand.RecNo = Connection.zCommand.RecordCount) and (Suma <> dPonderadoAjuste) then
                  decPonderado := decPonderado + (dPonderadoAjuste - Suma);

                Connection.zCommand.Edit;
                Connection.zCommand.FieldByName('dPonderado').AsFloat := decPonderado;
                Connection.zCommand.Post;

                BarraProgresoAvance(BarraProgreso, 0,100,55/Connection.zCommand.RecordCount);
                Connection.zCommand.Next;
              end;
            end;
          {$ENDREGION}
      end;

      {$REGION 'Actualiza Fechas'}
       ActualizaFechasPaquetes(global_contrato, sParamConvenio, sParamFolioProg, sParamTabla, sQlCadenaFolioProg, sQlCantidad, 30, BarraProgreso);
      {$ENDREGION}

      dMontoContratoDLL := 0;
      Connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sum('+sQlCantidad+' * dVentaDLL) as dMontoDLL From  '+sParamTabla+
        ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        ' and lcalculo="Si" group by sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.qryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
      Connection.qryBusca.Open;

      if Connection.qryBusca.RecordCount > 0 then
        dMontoContratoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];

      BarraProgresoAvance(BarraProgreso,0,100,5);

      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From ' +sParamTabla+
        ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio And iNivel = 0');
      Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolioProg;
      Connection.QryBusca.Open;

      if Connection.QryBusca.RecordCount > 0 then
      begin
         //Actualizo el convenio
        connection.zCommand.Active := False;
        connection.zCommand.Filtered := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update convenios SET dFechaInicio = :Inicio, dFechaFinal = :Final, dMontoMN = :MontoMN, dMontoDLL = :MontoDLL ' +
          ' Where sContrato = :Contrato '+sQlCadenaFolioProg+' And sIdConvenio = :Convenio');
        connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
        connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
        connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolioProg;
        connection.zcommand.params.ParamByName('Inicio').AsDate     := Connection.QryBusca.FieldValues['dFechaInicio'];
        connection.zcommand.params.ParamByName('Final').AsDate      := Connection.QryBusca.FieldValues['dFechaFinal'];
        connection.zcommand.params.ParamByName('MontoMN').AsFloat   := dMontoContratoMN;
        connection.zcommand.params.ParamByName('MontoDLL').AsFloat  := dMontoContratoDLL;
        Connection.zCommand.ExecSQL;

        BarraProgresoAvance(BarraProgreso, 0,100,5);
      end;
end;

procedure BarraProgresoAvance(Barra : TcxProgressBar; dParamMin, dParamMax, dParamAvance :Extended);
begin
    if Barra.Position = dParamMin then
    begin
       Barra.Position := dParamMin;
       Barra.Properties.Max := dParamMax;
    end;
    Barra.Position := Barra.Position + dParamAvance;
    Barra.Refresh;
end;

procedure BarraMostrar(lVisible :boolean; Barra : TcxProgressBar; lEtiqueta :TcxLabel);
begin
    if lVisible then
    begin
       lEtiqueta.Visible := True;
       Barra.Visible     := True;
       lEtiqueta.Refresh;
       Barra.Position := 0;
    end
    else
    begin
       lEtiqueta.Visible := False;
       Barra.Visible     := False;
       lEtiqueta.Refresh;
    end;
end;

procedure DistribuyeActividades(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
Var
    iOrden : Byte ;
    dMontoContrato : Currency ;
    dFechaInicial   : tDate ;
    QryActividadesxOrden : TZReadOnlyQuery ;
    QryDistribucion       : TZReadOnlyQuery ;

    sWbs,
    sNumeroActividad     : String;
    dHorasTotales   : Real ;
    dHorasDiarias   : Real ;
    dDistribuido    : Currency ;
    dAjuste         : Currency ;
    dFactorDiario,
    dFactorReal     : Extended ;
    dCantidadEntera : Currency  ;
    txtAux          : String ;

    dPonderadoGlobal : Currency ;
    dPonderadoDia    : Currency ;
    dPonderadoAjuste,
    dPonderadoContrato : currency ;
    lCalculoNormal     : Boolean ;
    lContinua        : Boolean;

    iPosicion: Integer ;
    iPaquete : Integer ;
    sPaquete : String ;
    dPaquete : Extended ;
    dCantidad,
    dDiferencia : Extended ;
    sRaiz     : String ;
    lDistribuyeContinuo : boolean;
begin

    lDistribuyeContinuo := True;
    lCalculoNormal      := True;
          // Distribucion del Programa de Trabajo
          // Inicializo Borrando toda la distribucion anterior
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'DELETE FROM distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value    := Global_Contrato ;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Convenio').Value    := sParamPlazo ;
          connection.zCommand.Params.ParamByName('Orden').DataType    := ftString ;
          connection.zCommand.Params.ParamByName('Orden').Value       := sParamFolio;
          connection.zCommand.ExecSQL ;

          QryActividadesxOrden := tzReadOnlyQuery.Create(nil);
          QryActividadesxOrden.Connection := connection.zconnection ;
          If lCalculoNormal Then
          Begin
              // Distribucion de Actividades (Paquete, Partida)
              QryActividadesxOrden.Active := False ;
              QryActividadesxOrden.SQL.Clear ;
              QryActividadesxOrden.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion, dCantidad, sMedida, dFechaInicio, dFechaFinal, sTipoAnexo, lAfectaSuspension, '+
                                           '(select dFechaPeriodo_inicio from convenios where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden = :Orden) as dFechaInicioSuspension, '+
                                           '(select dFechaPeriodo_Fin from convenios where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden = :Orden) as dFechaFinSuspension, '+
                                           '(select lAplicaPeriodo from convenios where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden = :Orden) as lAplicaPeriodo '+
                                           'from actividadesxorden ' +
                                           'where sContrato = :Contrato and sIdConvenio = :Convenio and sNumeroOrden = :Orden And ' +
                                           'sTipoActividad = "Actividad" and dCantidad > 0 order by iItemOrden') ;
              QryActividadesxOrden.Params.ParamByName('contrato').DataType := ftString ;
              QryActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato ;
              QryActividadesxOrden.Params.ParamByName('convenio').DataType := ftString ;
              QryActividadesxOrden.Params.ParamByName('convenio').Value := sParamPlazo ;
              QryActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
              QryActividadesxOrden.Params.ParamByName('Orden').Value := sParamFolio;
              QryActividadesxOrden.Open ;
              If QryActividadesxOrden.RecordCount > 0 then
              Begin
                  QryActividadesxOrden.First ;
                  While Not QryActividadesxOrden.Eof Do
                  Begin
                      sWbs := QryActividadesxOrden.FieldValues['sWbs'] ;
                      sNumeroActividad := QryActividadesxOrden.FieldValues['sNumeroActividad'] ;
                      dHorasTotales := 0 ;
                      if QryActividadesxOrden.FieldByName('lAfectaSuspension').AsString = 'Si' then
                      begin
                          if QryActividadesxOrden.FieldByName('lAplicaPeriodo').AsString = 'Si' then
                          begin
                              dHorasTotales := ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaInicio'], QryActividadesxOrden.FieldValues ['dFechaInicioSuspension'] -1, BarraProgreso ) ;
                              dHorasTotales := dHorasTotales + ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaFinSuspension']+1, QryActividadesxOrden.FieldValues ['dFechaFinal'], BarraProgreso ) ;
                          end;
                      end
                      else
                          dHorasTotales := ifnJornadaTotal ( global_contrato, QryActividadesxOrden.FieldValues ['dFechaInicio'], QryActividadesxOrden.FieldValues ['dFechaFinal'], BarraProgreso ) ;
                      dFechaInicial := QryActividadesxOrden.FieldValues ['dFechaInicio'] ;

                      If lDistribuyeContinuo then
                      Begin
                          dDistribuido := 0 ;
                          dDiferencia := 0;
                          While dFechaInicial <= QryActividadesxOrden.FieldValues['dFechaFinal'] Do
                          Begin
                              lContinua := False;
                              if QryActividadesxOrden.FieldByName('lAfectaSuspension').AsString = 'Si' then
                              begin
                                  if QryActividadesxOrden.FieldByName('lAplicaPeriodo').AsString = 'Si' then
                                  begin
                                      if (dFechaInicial >= QryActividadesxOrden.FieldByName('dFechaInicioSuspension').AsDateTime) and (QryActividadesxOrden.FieldByName('dFechaFinSuspension').AsDateTime >= dFechaInicial) then
                                         lContinua := False
                                      else
                                         lContinua := True;
                                  end;
                              end
                              else
                                 lContinua := True;

                              if lContinua then
                              begin
                                  dHorasDiarias := ifnJornadaDia ( global_contrato, dFechaInicial, BarraProgreso ) ;
                                  If dHorasDiarias > 0 Then
                                  Begin

                                      dFactorReal   := ((dHorasDiarias / dHorasTotales) * QryActividadesxOrden.FieldByName('dCantidad').AsFloat) + dDiferencia;
                                      dFactorDiario := dFactorReal;
                                      dFactorDiario := Trunc(dFactorDiario * 10000) / 10000;
                                      dDiferencia   := dFactorReal - dFactorDiario;

                                      Try
                                          connection.zCommand.Active := False ;
                                          connection.zCommand.SQL.Clear ;
                                          connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad, sTipoAnexo ) ' +
                                                                        ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad, :TipoAnexo)') ;
                                          connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                          connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('convenio').value := sParamPlazo ;
                                          connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('orden').value := sParamFolio;
                                          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                          connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                          connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                          connection.zCommand.Params.ParamByName('cantidad').value := dFactorDiario ;
                                          connection.zCommand.Params.ParamByName('TipoAnexo').AsString :=  QryActividadesxOrden.FieldByName('sTipoAnexo').AsString;
                                          connection.zCommand.ExecSQL ;
                                          dDistribuido := dDistribuido + dFactorDiario ;
                                      Except
                                        on e : exception do begin
                                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al actualizar la destribución', 0);
                                        end;
                                      End ;
                                  End ;
                              end;
                              dFechaInicial := dFechaInicial + 1 ;
                          End ;

                          dAjuste := 0 ;
                          If dDistribuido > QryActividadesxOrden.FieldValues ['dCantidad'] then
                              dAjuste := ( dDistribuido - QryActividadesxOrden.FieldValues ['dCantidad'] ) * -1
                          Else
                              If dDistribuido < QryActividadesxOrden.FieldValues ['dCantidad'] then
                                  dAjuste := QryActividadesxOrden.FieldValues ['dCantidad'] -  dDistribuido ;

                          If dAjuste <> 0 then
                          Begin
                               connection.qryBusca.Active := False ;
                               connection.qryBusca.SQL.Clear ;
                               connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio and ' +
                                                           'sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :actividad Order By dIdFecha DESC') ;
                               connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                               connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('convenio').Value := sParamPlazo ;
                               connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('Orden').Value := sParamFolio;
                               connection.qryBusca.Params.ParamByName('wbs').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('wbs').Value := sWbs ;
                               connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
                               connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad ;
                               connection.qryBusca.Open ;
                               If connection.qryBusca.RecordCount > 0 Then
                               Begin
                                    Try
                                        connection.zCommand.Active := False ;
                                        connection.zCommand.SQL.Clear ;
                                        connection.zCommand.SQL.Add ( 'UPDATE distribuciondeactividades SET dCantidad = :Cantidad where sContrato = :contrato And ' +
                                                                      'dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad') ;
                                        connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
                                        connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('convenio').Value := sParamPlazo;
                                        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                        connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues ['dIdFecha'] ;
                                        connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('Orden').Value := sParamFolio;
                                        connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('wbs').Value := sWbs ;
                                        connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                                        connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                        connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                        connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues ['dCantidad'] + dAjuste ;
                                        connection.zCommand.ExecSQL ;
                                    Except
                                        MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + QryActividadesxOrden.FieldValues ['sNumeroActividad'] , mtInformation, [mbOk], 0)
                                    End
                               End
                          End
                      End
                      Else
                      Begin
                          dDistribuido := 0 ;
                          dCantidadEntera := 0 ;
                          While dFechaInicial <= QryActividadesxOrden.FieldValues ['dFechaFinal'] Do
                          Begin
                              dHorasDiarias := ifnJornadaDia ( global_contrato, dFechaInicial, BarraProgreso ) ;
                              If dHorasDiarias > 0 Then
                              Begin
                                  dFactorDiario := ( dHorasDiarias / dHorasTotales ) * QryActividadesxOrden.FieldValues ['dCantidad'] ;
                                  Str(dFactorDiario:8:8, txtAux ) ;
                                  txtAux := Copy ( txtAux , 1 , Pos ( '.', txtAux ) + 5 ) ;
                                  try
                                      dFactorDiario := rfnDecimal(txtAux) ;
                                  except
                                      on e : exception do begin
                                          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al iniciar proceso, al calcular el factor diario', 0);
                                      end;
                                  end;
                                  dCantidadEntera := dCantidadEntera + dFactorDiario ;
                                  If dFechaInicial = QryActividadesxOrden.FieldValues ['dFechaFinal'] then
                                  Begin
                                      Try
                                          connection.zCommand.Active := False ;
                                          connection.zCommand.SQL.Clear ;
                                          connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad, sTipoAnexo ) ' +
                                                                        ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad, :TipoAnexo)') ;
                                          connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                          connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('convenio').value := sParamPlazo;
                                          connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('orden').value := sParamFolio;
                                          connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                          connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                          connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                          connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                          connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                          connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                          connection.zCommand.Params.ParamByName('cantidad').value := dCantidadEntera ;
                                          connection.zCommand.Params.ParamByName('TipoAnexo').AsString :=  QryActividadesxOrden.FieldByName('sTipoAnexo').AsString;
                                          connection.zCommand.ExecSQL ;
                                          dDistribuido := dDistribuido + dCantidadEntera ;
                                      Except
                                        on e : exception do begin
                                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Programa de Trabajo', 'Al actualizar registro', 0);
                                        end;
                                      End ;
                                  end
                                  Else
                                      If Trunc(dCantidadEntera) > 0 then
                                      Begin
                                          Try
                                              connection.zCommand.Active := False ;
                                              connection.zCommand.SQL.Clear ;
                                              connection.zCommand.SQL.Add ( 'INSERT INTO distribuciondeactividades ( sContrato , sIdConvenio, sNumeroOrden, dIdFecha, sWbs, sNumeroActividad, dCantidad, sTipoAnexo ) ' +
                                                                            ' VALUES (:contrato, :convenio, :orden, :fecha, :Wbs, :Actividad, :cantidad, :TipoAnexo)') ;
                                              connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato ;
                                              connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('convenio').value := sParamPlazo;
                                              connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('orden').value := sParamFolio;
                                              connection.zCommand.Params.ParamByName('Wbs').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('Wbs').value := sWbs ;
                                              connection.zCommand.Params.ParamByName('Actividad').DataType := ftString ;
                                              connection.zCommand.Params.ParamByName('Actividad').value := sNumeroActividad ;
                                              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                              connection.zCommand.Params.ParamByName('fecha').value := dFechaInicial ;
                                              connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat ;
                                              connection.zCommand.Params.ParamByName('cantidad').value := Trunc(dCantidadEntera) ;
                                              connection.zCommand.Params.ParamByName('TipoAnexo').AsString :=  QryActividadesxOrden.FieldByName('sTipoAnexo').AsString;
                                              connection.zCommand.ExecSQL ;
                                              dDistribuido := dDistribuido + Trunc(dCantidadEntera) ;
                                              dCantidadEntera := dCantidadEntera - Trunc(dCantidadEntera) ;
                                          Except
                                              MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
                                          End ;
                                      End
                              End ;
                              dFechaInicial := dFechaInicial + + 1 ;
                          End ;

                          dAjuste := 0 ;
                          If dDistribuido > QryActividadesxOrden.FieldValues ['dCantidad'] then
                              dAjuste := ( dDistribuido - QryActividadesxOrden.FieldValues ['dCantidad'] ) * -1
                          Else
                              If dDistribuido < QryActividadesxOrden.FieldValues ['dCantidad'] then
                                  dAjuste := QryActividadesxOrden.FieldValues ['dCantidad'] - dDistribuido ;

                          If dAjuste <> 0 then
                          Begin
                              dFechaInicial := QryActividadesxOrden.FieldValues ['dFechaFinal'] ;
                              connection.qryBusca.Active := False ;
                              connection.qryBusca.SQL.Clear ;
                              connection.qryBusca.SQL.Add('Select dIdFecha, dCantidad from distribuciondeactividades Where sContrato = :contrato And sIdConvenio = :Convenio And ' +
                                                           'sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :actividad Order By dIdFecha Desc') ;
                              connection.qryBusca.Params.ParamByName('contrato').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato ;
                              connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('convenio').Value := sParamPlazo ;
                              connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('Orden').Value := sParamFolio;
                              connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('Wbs').Value := sWbs ;
                              connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
                              connection.qryBusca.Params.ParamByName('actividad').Value := sNumeroActividad ;
                              connection.qryBusca.Open ;
                              If connection.qryBusca.RecordCount > 0 Then
                              Begin
                                  Try
                                       connection.zCommand.Active := False ;
                                       connection.zCommand.SQL.Clear ;
                                       connection.zCommand.SQL.Add ( 'UPDATE distribuciondeactividades SET dCantidad = :Cantidad where sContrato = :contrato And ' +
                                                                     'dIdFecha = :fecha And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad') ;
                                       connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('contrato').Value := global_contrato ;
                                       connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('convenio').Value := sParamPlazo;
                                       connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
                                       connection.zCommand.Params.ParamByName('fecha').Value := Connection.qryBusca.FieldValues ['dIdFecha'] ;
                                       connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('Orden').Value := sParamFolio;
                                       connection.zCommand.Params.ParamByName('wbs').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('wbs').Value := sWbs ;
                                       connection.zCommand.Params.ParamByName('actividad').DataType := ftString ;
                                       connection.zCommand.Params.ParamByName('actividad').Value := sNumeroActividad ;
                                       connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat ;
                                       connection.zCommand.Params.ParamByName('Cantidad').value := Connection.qryBusca.FieldValues ['dCantidad'] + dAjuste ;
                                       connection.zCommand.ExecSQL ;
                                   Except
                                        MessageDlg('Ocurrio un error al Actualizar la Distribución de la Partida No. ' + QryActividadesxOrden.FieldValues ['sNumeroActividad'] , mtInformation, [mbOk], 0)
                                   End
                               End
                          End
                      End ;
                      QryActividadesxOrden.Next;
                      BarraProgresoAvance(BarraProgreso, 0,100,100/QryActividadesxOrden.RecordCount);
                  End
              End
          End;
          QryActividadesxOrden.Destroy ;
end;

procedure DistribuyePrograma(sParamContrato, sParamFolio, sParamPlazo : string; BarraProgreso : TcxProgressBar );
var
    QryDistribucion  : TZReadOnlyQuery ;
    dPonderadoGlobal : Currency ;
    dPonderadoDia    : Currency ;
    dFechaInicial    : tDate;
begin

           QryDistribucion := tzReadOnlyQuery.Create(nil);
           QryDistribucion.Connection := connection.zconnection ;

           Connection.qryBusca2.Active := False ;
           Connection.qryBusca2.SQL.Clear ;
           Connection.qryBusca2.SQL.Add('Select min(dFechaInicio) as dFIProgramado, max(dFechaFinal) as dFFProgramado from actividadesxorden ' +
                                        'Where sContrato = :Contrato And sNumeroOrden = :orden and sIdConvenio = :convenio and sTipoActividad = "Actividad"') ;
           Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
           Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato;
           Connection.qryBusca2.Params.ParamByName('orden').DataType := ftString ;
           Connection.qryBusca2.Params.ParamByName('orden').Value := sParamFolio;
           Connection.qryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
           Connection.qryBusca2.Params.ParamByName('Convenio').Value := sParamPlazo;
           Connection.qryBusca2.Open ;


           connection.zCommand.Active := False ;
           connection.zCommand.SQL.Clear ;
           connection.zCommand.SQL.Add ( 'delete from avancesglobales WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden ');
           connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
           connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
           connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
           connection.zCommand.Params.ParamByName('Convenio').Value := sParamPlazo;
           connection.zCommand.Params.ParamByName('Orden').DataType := ftString ;
           connection.zCommand.Params.ParamByName('Orden').Value := sParamFolio;
           connection.zCommand.ExecSQL ;

           dFechaInicial := Connection.qryBusca2.FieldValues['dfiProgramado'] ;
           dPonderadoglobal := 0 ;
           While dFechaInicial <= Connection.qryBusca2.FieldValues['dffProgramado']  Do
           Begin
               QryDistribucion.Active := False ;
               QryDistribucion.SQL.Clear ;
               QryDistribucion.SQL.Add('Select SUM((d.dCantidad/a.dCantidad)* a.dPonderado) as dAvance from distribuciondeactividades d inner join actividadesxorden a on ' +
                                       '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
                                       'd.sContrato = :contrato And d.sNumeroOrden = :Orden And d.sIdConvenio = :Convenio And d.dIdFecha = :fecha Group By d.dIdFecha') ;
               QryDistribucion.Params.ParamByName('contrato').DataType := ftString ;
               QryDistribucion.Params.ParamByName('contrato').Value := sParamContrato;
               QryDistribucion.Params.ParamByName('convenio').DataType := ftString ;
               QryDistribucion.Params.ParamByName('convenio').Value := sParamPlazo;
               QryDistribucion.Params.ParamByName('orden').DataType := ftString ;
               QryDistribucion.Params.ParamByName('orden').Value := sParamFolio;
               QryDistribucion.Params.ParamByName('fecha').DataType := ftDate ;
               QryDistribucion.Params.ParamByName('fecha').Value := dFechaInicial ;
               QryDistribucion.Open ;
               dPonderadoDia := 0 ;

               If QryDistribucion.RecordCount > 0 Then
                   dPonderadoDia := QryDistribucion.FieldValues['dAvance'] ;

               If dFechaInicial = Connection.qryBusca2.FieldValues['dffProgramado'] then
                  dPonderadoDia := (100 - dPonderadoGlobal);

               dPonderadoGlobal := dPonderadoGlobal + dPonderadoDia ;

               //Ajustes...
               connection.QryBusca.Active := False ;
               connection.QryBusca.SQL.Clear ;
               connection.QryBusca.SQL.Add('Select SUM((d.dCantidad/a.dCantidad)* a.dPonderado) as dAvance from distribuciondeactividades d inner join actividadesxorden a on ' +
                                           '(d.sContrato = a.sContrato And d.sIdConvenio = a.sIdConvenio And d.sNumeroOrden = a.sNumeroOrden And d.sWbs = a.sWbs And d.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") Where ' +
                                           'd.sContrato = :contrato And d.sNumeroOrden = :Orden And d.sIdConvenio = :Convenio And d.dIdFecha >:fecha Group By a.sContrato ') ;
               connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
               connection.QryBusca.Params.ParamByName('contrato').Value    := sParamContrato;
               connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
               connection.QryBusca.Params.ParamByName('convenio').Value    := sParamPlazo;
               connection.QryBusca.Params.ParamByName('orden').DataType    := ftString ;
               connection.QryBusca.Params.ParamByName('orden').Value       := sParamFolio;
               connection.QryBusca.Params.ParamByName('fecha').DataType    := ftDate ;
               connection.QryBusca.Params.ParamByName('fecha').Value       := dFechaInicial ;
               connection.QryBusca.Open ;

               if connection.QryBusca.RecordCount > 0 then
                  if (dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) > 100 then
                      dPonderadoGlobal := dPonderadoGlobal - ((dPonderadoGlobal + connection.QryBusca.FieldByName('dAvance').AsFloat) - 100);

               connection.zCommand.Active := False ;
               connection.zCommand.SQL.Clear ;
               connection.zCommand.SQL.Add ( 'insert into avancesglobales values (:contrato, :convenio, :fecha, :orden, :ponderadodia, :ponderadoglobal, 0)') ;
               connection.zCommand.Params.ParamByName('contrato').DataType := ftString ;
               connection.zCommand.Params.ParamByName('contrato').Value := sParamContrato ;
               connection.zCommand.Params.ParamByName('convenio').DataType := ftString ;
               connection.zCommand.Params.ParamByName('convenio').Value := sParamPlazo ;
               connection.zCommand.Params.ParamByName('fecha').DataType := ftDate ;
               connection.zCommand.Params.ParamByName('fecha').Value := dFechaInicial ;
               connection.zCommand.Params.ParamByName('orden').DataType := ftString ;
               connection.zCommand.Params.ParamByName('orden').Value := sParamFolio;
               connection.zCommand.Params.ParamByName('ponderadodia').DataType := ftFloat ;
               connection.zCommand.Params.ParamByName('ponderadodia').Value := dPonderadoDia ;
               connection.zCommand.Params.ParamByName('ponderadoglobal').DataType := ftFloat ;
               connection.zCommand.Params.ParamByName('ponderadoglobal').Value := dPonderadoglobal ;
               connection.zCommand.ExecSQL ;
               dFechaInicial := dFechaInicial + 1 ;
               BarraProgresoAvance(BarraProgreso, 0,100,100/(( Connection.qryBusca2.FieldValues['dffProgramado'] -  Connection.qryBusca2.FieldValues['dfiProgramado'])+1));
           End ;
          QryDistribucion.Destroy ;

end;

function AvanceFolio(sParamContrato, sParamFolio, sParamPlazo :string; dParamFecha :tDate) : double;
var
   dDiaSiguiente  : TDateTime;
   tdAvanceAnterior, tdAvanceAcumulado : double;
   QryAvances1, QryAvances2  : TZReadOnlyQuery ;
begin
    QryAvances1 := tzReadOnlyQuery.Create(nil);
    QryAvances1.Connection := connection.zconnection ;

    QryAvances2 := tzReadOnlyQuery.Create(nil);
    QryAvances2.Connection := connection.zconnection ;

    {Avances anteriores}
    dDiaSiguiente := dParamFecha;
    QryAvances1.SQL.Clear;
    QryAvances1.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio, :Plazo), 4) AS dAvanceAnterior;';
    QryAvances1.ParamByName('Orden').AsString := sParamContrato;
    QryAvances1.ParamByName('Folio').AsString := sParamFolio;
    QryAvances1.ParamByName('Plazo').AsString := sParamPlazo;
    QryAvances1.Open;

    //Avances Acumulados
    dDiaSiguiente := IncDay(dDiaSiguiente);
    QryAvances2.SQL.Clear;
    QryAvances2.SQL.Text := 'SELECT ROUND(AvancesAnteriores("'+FormatDateTime('yyyy-mm-dd', dDiaSiguiente)+'", :Orden, :Folio, :Plazo), 4) AS dAvanceAcumulado;';
    QryAvances2.ParamByName('Orden').AsString := sParamContrato;
    QryAvances2.ParamByName('Folio').AsString := sParamFolio;
    QryAvances2.ParamByName('Plazo').AsString := sParamPlazo;
    QryAvances2.Open;

    result := QryAvances2.FieldByName('dAvanceAcumulado').AsFloat -  QryAvances1.FieldByName('dAvanceAnterior').AsFloat;

    QryAvances1.Destroy;
    QryAvances2.Destroy;
end;

procedure ActualizaTablaAvancesFolio(sParamContrato, sParamFolio, sParamPlazo, sParamTurno :string; dParamFecha :tDate; dParamAvance : double);
begin
   //Primero se elimina avance del dia
   connection.zCommand.Active := False ;
   connection.zCommand.SQL.Clear ;
   connection.zCommand.SQL.Add ( 'delete from avancesglobalesxorden where sContrato =:contrato and sIdconvenio =:Plazo and sNumeroOrden =:orden and sIdTurno =:Turno and dIdFecha =:Fecha ') ;
   connection.zCommand.Params.ParamByName('contrato').AsString := sParamContrato ;
   connection.zCommand.Params.ParamByName('Plazo').AsString    := sParamPlazo ;
   connection.zCommand.Params.ParamByName('fecha').AsDate      := dParamFecha ;
   connection.zCommand.Params.ParamByName('orden').AsString    := sParamFolio;
   connection.zCommand.Params.ParamByName('turno').AsString    := sParamTurno;
   connection.zCommand.ExecSQL ;

   //Ahora se inserta
   connection.zCommand.Active := False ;
   connection.zCommand.SQL.Clear ;
   connection.zCommand.SQL.Add ( 'insert into avancesglobalesxorden values (:contrato, :Plazo, :fecha, :orden, :turno, :avance, 0)') ;
   connection.zCommand.Params.ParamByName('contrato').AsString := sParamContrato ;
   connection.zCommand.Params.ParamByName('Plazo').AsString := sParamPlazo ;
   connection.zCommand.Params.ParamByName('fecha').AsDate      := dParamFecha ;
   connection.zCommand.Params.ParamByName('orden').AsString    := sParamFolio;
   connection.zCommand.Params.ParamByName('turno').AsString    := sParamTurno;
   connection.zCommand.Params.ParamByName('Avance').AsFloat    := dParamAvance;
   connection.zCommand.ExecSQL ;
end;

procedure procValidaDatosValidaAutoriza_CO(sParamContrato, sParamConvenio, sParamFolio, sParamTurno :string; dParamFecha :tDate;  sParamTabla, sTipo :string; tOrigen: TComponent );
var
    zqValida: tzReadOnlyQuery;
begin
    zqValida := TzReadOnlyQuery.create(nil);
    zqValida.Connection := Connection.zConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
        {$endregion}
    end
    else
    begin
        {$region 'Sqls'}

        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "PENDIENTE", sIdUsuarioValida = null, sTiempoAdicional = "00:00", sTiempoEfectivo = "00:00", sTiempoMuertoReal = "00:00" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "PENDIENTE" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
      {$endregion}
    end;
    zqValida.ParamByName('Contrato').AsString := sParamContrato;
    zqValida.ParamByName('Folio').AsString   := sParamFolio;
    zqValida.ExecSQL;

    zqValida.Destroy;
end;

procedure procAutorizaDatosValidaAutoriza_CO(sParamContrato,sParamConvenio, sParamFolio, sParamTurno :string; dParamFecha :tDate; sParamTabla, sTipo :string; tOrigen: TComponent );
var
    zqValida: tzReadOnlyQuery;
begin
    zqValida := TzReadOnlyQuery.create(nil);
    zqValida.Connection := Connection.zConnection;

    zqValida.Active := False;
    zqValida.SQL.Clear;
    if sTipo = 'Valida' then
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "AUTORIZADO" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
        {$endregion}

    end
    else
    begin
        {$region 'Sqls'}
        if sParamTabla = 'reportediario' then
        begin
           zqValida.SQL.Add('Update reportediario set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sIdConvenio =:Plazo and sNumeroOrden =:Folio and sIdTurno =:Turno and dIdFecha =:Fecha ');

          zqValida.ParamByName('Plazo').AsString := sParamConvenio;
          zqValida.ParamByName('Turno').AsString := sParamTurno;
          zqValida.ParamByName('Fecha').AsDate   := dParamFecha;
        end;

        if sParamTabla = 'estimaciones' then
        begin
           zqValida.SQL.Add('Update estimaciones set lStatus = "VALIDADO" '+
           'where sContrato =:Contrato and sNumeroOrden =:Folio and sNumeroGenerador =:Generador ');

           zqValida.ParamByName('Generador').AsString := sParamConvenio;
        end;
        {$endregion}

    end;
    zqValida.ParamByName('Contrato').AsString := sParamContrato;
    zqValida.ParamByName('Folio').AsInteger   := iParamFolio;
    zqValida.ExecSQL;

    zqValida.Destroy;
end;

procedure GraficaFisicoProgFinanciero(sParamRango, sParamContrato, sParamConvenio, sParamFolio: string; gParamProgramado, gParamFisico, gParamFinanciero, gParamContrato :tRxMemoryData; BarraProgreso : TcxProgressBar );
var
    sQlAgrupa : string;
    dAvance   : double;
begin
    if sParamRango = 'Dia' then
       sQlAgrupa := ' group by a.dIdFecha ';

    if sParamRango = 'Mes' then
       sQlAgrupa := ' group by month(a.dIdFecha) ';

    if sParamRango = 'Semana' then
       sQlAgrupa := ' group by week(a.dIdFecha) ';

       //Programados de la gráfica.
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select a.dIdFecha, a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, ' +
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sIdConvenio =a.sIdConvenio and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sIdConvenio =a.sIdConvenio and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobales a ' +
                                  'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden '+sQlAgrupa+' order by a.dIdFecha');
      Connection.qryBusca.params.ParamByName('Contrato').AsString    := sParamContrato ;
      Connection.qryBusca.params.ParamByName('Convenio').AsString    := sParamConvenio;
      Connection.qryBusca.params.ParamByName('Orden').AsString       := sParamFolio;
      Connection.qryBusca.Open ;

      While NOT Connection.qryBusca.Eof Do
      Begin
          gParamProgramado.Append ;
          gParamProgramado.FieldValues['sDescripcion'] := global_contrato ;
          gParamProgramado.FieldValues['dFecha']       := Connection.qryBusca.FieldByName('dIdFecha').AsDateTime;
          gParamProgramado.FieldValues['dProgramado']  := Connection.qryBusca.FieldByName('dAvancePonderadoGlobal').AsFloat;
          gParamProgramado.Post ;
          BarraProgresoAvance(BarraProgreso, 0,100,30/Connection.qryBusca.RecordCount);
          Connection.qryBusca.Next;
      End ;

      //Avandes Programados y fisicos del Grid
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select a.dIdFecha, a.dAvancePonderadoDia, a.dAvancePonderadoGlobal, ' +
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobales a ' +
                                  'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden group by a.dIdFecha order by a.dIdFecha');
      Connection.qryBusca.params.ParamByName('Contrato').AsString    := sParamContrato ;
      Connection.qryBusca.params.ParamByName('Convenio').AsString    := sParamConvenio;
      Connection.qryBusca.params.ParamByName('Orden').AsString       := sParamFolio;
      Connection.qryBusca.Open ;

      While NOT Connection.qryBusca.Eof Do
      Begin
          dAvance := AvanceFolio(sParamContrato, sParamFolio, sParamConvenio, Connection.qryBusca.FieldByName('dIdFecha').AsDateTime);
          if dAvance <> Connection.qryBusca.FieldByName('ActualDia').AsFloat then
             ActualizaTablaAvancesFolio(sParamContrato, sParamFolio, sParamConvenio, 'A', Connection.qryBusca.FieldByName('dIdFecha').AsDateTime, dAvance);
          BarraProgresoAvance(BarraProgreso, 0,100,10/Connection.qryBusca.RecordCount);
          Connection.qryBusca.Next;
      End;

      Connection.qryBusca.Refresh;
      Connection.qryBusca.First;
      While NOT Connection.qryBusca.Eof Do
      Begin
          gParamContrato.Append ;
          gParamContrato.FieldValues['dIdFecha']         := Connection.qryBusca.FieldByName('dIdFecha').AsDateTime ;
          gParamContrato.FieldValues['dProgramadoDia']   := Connection.qryBusca.FieldByName('dAvancePonderadoDia').AsFloat;
          gParamContrato.FieldValues['dProgramadoAcum']  := Connection.qryBusca.FieldByName('dAvancePonderadoGlobal').AsFloat;
          gParamContrato.FieldValues['dFisicoDia']       := Connection.qryBusca.FieldByName('ActualDia').AsFloat;
          gParamContrato.FieldValues['dFisicoAcumulado'] := Connection.qryBusca.FieldByName('anteriorDia').AsFloat + Connection.qryBusca.FieldByName('ActualDia').AsFloat;
          gParamContrato.Post ;
          BarraProgresoAvance(BarraProgreso, 0,100,10/Connection.qryBusca.RecordCount);
          Connection.qryBusca.Next;
      End ;

      // El resto del avance Fisico .....del Grid
      Connection.qryBusca2.Active := False ;
      Connection.qryBusca2.SQL.Clear ;
      Connection.qryBusca2.SQL.Add('Select a.dIdFecha,  ' +
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobalesxorden a ' +
                                  'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden and a.dIdFecha > :fecha order by a.dIdFecha' ) ;
      Connection.qryBusca2.params.ParamByName('Contrato').AsString := sParamContrato ;
      Connection.qryBusca2.params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.qryBusca2.params.ParamByName('Orden').AsString    := sParamFolio;
      Connection.qryBusca2.params.ParamByName('fecha').AsDateTime  := connection.QryBusca.FieldByName('dIdFecha').AsDateTime ;
      Connection.qryBusca2.Open ;
      While NOT Connection.qryBusca2.Eof Do
      Begin
          gParamContrato.Append ;
          gParamContrato.FieldValues['dIdFecha']         := connection.QryBusca2.FieldByName('dIdFecha').AsDateTime;
          gParamContrato.FieldValues['dProgramadoDia']   := 0 ;
          gParamContrato.FieldValues['dProgramadoAcum']  := Connection.qryBusca.FieldByName('dAvancePonderadoGlobal').AsFloat;
          gParamContrato.FieldValues['dFisicoDia']       := Connection.qryBusca2.FieldByName('ActualDia').AsFloat;
          gParamContrato.FieldValues['dFisicoAcumulado'] := Connection.qryBusca2.FieldByName('anteriorDia').AsFloat + Connection.qryBusca2.FieldByName('ActualDia').AsFloat;
          gParamContrato.Post ;
          BarraProgresoAvance(BarraProgreso, 0,100,20/Connection.qryBusca.RecordCount);
          Connection.qryBusca2.Next
      End ;

      // Real ...
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select a.dIdFecha, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha < a.dIdFecha group by sContrato ) as anteriorDia, '+
                                  '(select sum(dAvance) as anterior from avancesglobalesxorden where sContrato = a.sContrato and sNumeroOrden = a.sNumeroOrden '+
                                  'and dIdFecha = a.dIdFecha group by sContrato ) as ActualDia '+
                                  'From avancesglobalesxorden a Where ' +
                                  'a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden '+sQlAgrupa+ ' order by a.dIdFecha ') ;
      Connection.qryBusca.params.ParamByName('Contrato').AsString := sParamContrato ;
      Connection.qryBusca.params.ParamByName('Convenio').AsString := sParamConvenio;
      Connection.qryBusca.params.ParamByName('Orden').AsString     := sParamFolio;
      Connection.qryBusca.Open ;

      While NOT Connection.qryBusca.Eof Do
      Begin
         gParamFisico.Append ;
         gParamFisico.FieldValues['sDescripcion'] := global_contrato ;
         gParamFisico.FieldValues['dFecha']       := connection.QryBusca.FieldByName('dIdFecha').AsDateTime ;
         gParamFisico.FieldValues['dFisico']      := Connection.QryBusca.FieldByName('anteriorDia').AsFloat + Connection.qryBusca.FieldByName('ActualDia').AsFloat;
         gParamFisico.Post ;
         BarraProgresoAvance(BarraProgreso, 0,100,30/Connection.qryBusca.RecordCount);
         Connection.qryBusca.Next
      End ;

      // Financiero ....     *****Pendiente******
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select year(dFechaFinal) as dAnno , month(dFechaFinal) as dMes From estimaciones Where ' +
                                   'sContrato = :Contrato And sNumeroOrden = :orden Group By Year(dFechaFinal), month(dFechaFinal)' ) ;
      Connection.qryBusca.params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.params.ParamByName('Contrato').Value := sParamContrato ;
      Connection.qryBusca.params.ParamByName('orden').DataType := ftString ;
      Connection.qryBusca.params.ParamByName('orden').Value := sParamFolio;
      Connection.qryBusca.Open ;
      While NOT Connection.qryBusca.Eof Do
      Begin
          gParamFinanciero.Append ;
          gParamFinanciero.FieldValues['sDescripcion'] := global_contrato ;
          gParamFinanciero.FieldValues['dFecha']       := 0;
          gParamFinanciero.FieldValues['dFinanciero']  := (Connection.qryBusca2.FieldValues['dReal'] / dMontoContrato) * 100 ;
          gParamFinanciero.Post ;

          Connection.qryBusca.Next
       End ;
end;

function EsDuplicateKey(sParamMensaje: string): integer;
var
  error :string;
  cmpres:integer;
begin
    error := sParamMensaje;
    error := copy(error,length(error)-16,length(error)-2);
    cmpres :=CompareStr(LowerCase(error),'for key '+#39+'primary'+#39) ;
    result := cmpres;
end;

procedure EliminarProgramaSinReportadas(sParamcontrato, sParamConvenio, sParamFolio : string);
begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('delete from avancesglobales  Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.ExecSQL;

    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('delete from distribuciondeactividades  Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.ExecSQL;


    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('delete from actividadesxorden  Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.ExecSQL;
end;

procedure CopiarProgramaAnterior(sParamcontrato, sParamConvenio, sParamFolio : string; dParmFecha :tDate; BarraProgreso :TcxProgressBar);
var
   registro   : integer;
   sparametro : string;
begin
    Connection.QryBusca.Active := False ;
    Connection.QryBusca.SQL.Clear ;
    Connection.QryBusca.SQL.Add('Select a.sIdConvenio, '+
              '(select count(sIdConvenio) as total from bitacoradeactividades where sContrato = a.sContrato and sIdConvenio = a.sIdConvenio and sWbs = a.sWbs group by sContrato ) as total '+
              'from actividadesxorden a Where a.sContrato = :Contrato and a.sNumeroOrden =:Folio And a.sIdConvenio =:Convenio ') ;
    Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
    Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca.Open;

    if connection.QryBusca.RecordCount = 0 then
    begin
        Connection.QryBusca2.Active := False ;
        Connection.QryBusca2.SQL.Clear ;
        Connection.QryBusca2.SQL.Add('Select sIdConvenio from convenios Where sContrato = :Contrato and sNumeroOrden =:Folio And dFechaFinal < :Fecha order by dFechaFinal DESC ') ;
        Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
        Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
        Connection.QryBusca2.Params.ParamByName('Fecha').AsDateTime  := dParmFecha ;
        Connection.QryBusca2.Open;

        If Connection.QryBusca2.RecordCount > 0 Then
        Begin
            Connection.QryBusca.Active := False ;
            Connection.QryBusca.SQL.Clear ;
            Connection.QryBusca.SQL.Add('Select * from actividadesxorden Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio') ;
            Connection.QryBusca.Params.ParamByName('Contrato').AsString := sParamcontrato ;
            Connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio ;
            Connection.QryBusca.Params.ParamByName('Convenio').AsString := Connection.QryBusca2.FieldByName('sIdConvenio').AsString;
            Connection.QryBusca.Open;

            While NOT Connection.QryBusca.Eof Do
            Begin
                connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( funcsql(Connection.QryBusca , 'actividadesxorden')) ;
                for registro := 0 to Connection.QryBusca.fieldcount - 1 do
                begin
                    sparametro := 'param' + trim(inttostr(registro + 1)) ;
                    connection.zCommand.Params.parambyname(sparametro).datatype := Connection.QryBusca.fields[registro].datatype ;
                    If Connection.QryBusca.fields[registro].DisplayName = 'sIdConvenio' Then
                        connection.zCommand.Params.parambyname(sparametro).value := sParamConvenio
                    Else
                       connection.zCommand.Params.parambyname(sparametro).value := Connection.QryBusca.fields[registro].value ;
                end ;
                connection.zCommand.ExecSQL ;
                BarraProgresoAvance(BarraProgreso, 0,100,100/Connection.qryBusca.RecordCount);
                Connection.QryBusca.Next;
            End ;
        End
        else
        begin
            messageDLG('No se encontró un Plazo menor a la Reprogramación Actual!', mtWarning, [mbOK], 0);
        end;
    end
    else
    begin
        if Connection.QryBusca.FieldByName('total').AsInteger = 0 then
        begin
             if MessageDlg('Desea eliminar el Programa de Trabajo del Plazo '+sParamConvenio+'?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
             begin
                EliminarProgramaSinReportadas(sParamcontrato, sParamConvenio, sParamFolio);
             end;
        end
        else
           messageDLG('No se puede realizar la Copia del Programa: '+#13+ 'Existen partidas reportadas.', mtWarning, [mbOk], 0);
    end;
end;

function ChecarProgPonderado(sParamcontrato, sParamConvenio, sParamFolio : string) : double;
begin
   connection.QryBusca.Active := False ;
   connection.QryBusca.SQL.Clear ;
   connection.QryBusca.SQL.Add('Select SUM(dPonderado) as Ponderado from actividadesxorden Where ' +
                               'sContrato = :contrato And sNumeroOrden = :Folio And sIdConvenio = :Plazo group by sContrato ') ;
   connection.QryBusca.Params.ParamByName('contrato').AsString := sParamcontrato;
   connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio;
   connection.QryBusca.Params.ParamByName('Plazo').AsString    := sParamConvenio;
   connection.QryBusca.Open ;

   result := connection.QryBusca.FieldByName('Ponderado').AsFloat;
end;

procedure DesplazaPartidasFechas(sParamcontrato, sParamConvenio, sParamFolio : string; dParamFechaI, dParamFechaF : tDate; iParamDias : double; sParamStatus, sParamTipoR : string; BarraProgreso :TcxProgressBar );
var
    lContinua, lAplica : boolean;
    dFechaMenorPartida : tDate;
begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('Select o.sWbs, sum(b.dCantidad) as Cantidad, dFechaInicio, dFechaFinal, o.dCantidad as dCantidadFolio from actividadesxorden o '+
               ' left join bitacoradeactividades b on (b.sContrato = o.sContrato and b.sNumeroOrden = o.sNumeroOrden and b.sWbs = o.sWbs) '+
               ' Where o.sContrato = :contrato And o.sNumeroOrden = :Folio and o.sIdConvenio =:Plazo and o.sTipoActividad = "Actividad" '+
               ' group by o.sWbs') ;
    connection.QryBusca.Params.ParamByName('contrato').AsString := sParamcontrato;
    connection.QryBusca.Params.ParamByName('Folio').AsString    := sParamFolio;
    connection.QryBusca.Params.ParamByName('Plazo').AsString    := sParamConvenio;
    connection.QryBusca.Open ;

    if sParamTipoR = 'Periodo' then
    begin
        dFechaMenorPartida :=  dParamFechaI;
        while not connection.QryBusca.Eof do
        begin
            if sParamStatus = 'Todas' then
            begin
               if (connection.QryBusca.FieldByName('Cantidad').AsFloat <= connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
                  if  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dFechaMenorPartida then
                      dFechaMenorPartida :=  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
            end
            else
            begin
               if sParamStatus = 'Pendiente' then
                  if connection.QryBusca.FieldByName('Cantidad').AsFloat = 0 then
                     if  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dFechaMenorPartida then
                         dFechaMenorPartida :=  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;

               if (sParamStatus = 'Proceso') or (sParamStatus = 'Afectadas') then
                  if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
                     if  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dFechaMenorPartida then
                         dFechaMenorPartida :=  connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
            end;
            BarraProgresoAvance(BarraProgreso, 0,100,40/Connection.qryBusca.RecordCount);
            connection.QryBusca.Next;
        end;
        connection.QryBusca.First;
    end;

    while not connection.QryBusca.Eof do
    begin
        lContinua := False;
        if sParamStatus = 'Pendiente' then
           if connection.QryBusca.FieldByName('Cantidad').AsFloat = 0 then
              lContinua := True;

        if (sParamStatus = 'Proceso') or (sParamStatus = 'Afectadas') then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if sParamStatus = 'Terminada' then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat = connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if sParamStatus = 'Todas' then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat <= connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if lContinua then
        begin
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;

            if sParamTipoR = 'Periodo' then
            begin
                if sParamStatus = 'Afectadas' then
                begin
                    if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) and (connection.QryBusca.FieldByName('Cantidad').AsFloat > 0) then
                    begin
                        if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime < dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime >= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime <= dParamFechaF) then
                        begin
                            Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaFinal = :FechaF, lAfectaSuspension = "Si" '+
                                       'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                            Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                            Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                            Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                            Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                            Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime  + DaysBetween(dParamFechaI,dParamFechaF)+1;
                            Connection.QryBusca2.ExecSQL;
                        end
                        else
                        if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime <= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime >= dParamFechaF) then
                        begin
                            Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaFinal = :FechaF, lAfectaSuspension = "Si" '+
                                       'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                            Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                            Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                            Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                            Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                            Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime  + DaysBetween(dParamFechaI,dParamFechaF)+1;
                            Connection.QryBusca2.ExecSQL;
                        end;
                    end;
                end
                else
                begin
                    Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = :FechaI, dFechaFinal = :FechaF '+
                               'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                    Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                    Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                    Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                    Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                    Connection.QryBusca2.Params.ParamByName('FechaI').AsDate     := dParamFechaF + DaysBetween(connection.QryBusca.FieldByName('dFechaInicio').AsDateTime,dFechaMenorPartida) +1;
                    Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := dParamFechaF + DaysBetween(connection.QryBusca.FieldByName('dFechaFinal').AsDateTime, dFechaMenorPartida) +1;
                    Connection.QryBusca2.ExecSQL;
                end;
            end;

            if sParamTipoR = 'Dias' then
            begin
                Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = DATE_ADD(dFechaInicio,INTERVAL :dias DAY), dFechaFinal = DATE_ADD(dFechaFinal,INTERVAL :dias DAY) '+
                           'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs') ;
                Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                Connection.QryBusca2.Params.ParamByName('Dias').AsFloat      := iParamDias;
                Connection.QryBusca2.ExecSQL;
            end;
        end;

        if sParamTipoR = 'Periodo' then
           BarraProgresoAvance(BarraProgreso, 0,100,40/Connection.qryBusca.RecordCount)
        else
           BarraProgresoAvance(BarraProgreso, 0,100,80/Connection.qryBusca.RecordCount);
        connection.QryBusca.Next;
    end;

    connection.QryBusca.First;
    while not connection.QryBusca.Eof do
    begin
        lContinua := False;

        if (sParamStatus = 'Afectadas') then
           if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) then
              lContinua := True;

        if lContinua then
        begin
            Connection.QryBusca2.Active := False ;
            Connection.QryBusca2.SQL.Clear ;

            if sParamTipoR = 'Periodo' then
            begin
                if (connection.QryBusca.FieldByName('Cantidad').AsFloat < connection.QryBusca.FieldByName('dCantidadFolio').AsFloat) and (connection.QryBusca.FieldByName('Cantidad').AsFloat > 0) then
                begin
                    if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime >= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime >= dParamFechaI) and (connection.QryBusca.FieldByName('dFechaFinal').AsDateTime <= dParamFechaF) then
                    begin
                        Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = :FechaI, dFechaFinal = :FechaF '+
                                   'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                        Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                        Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                        Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                        Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                        Connection.QryBusca2.Params.ParamByName('FechaI').AsDate     := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI)+ 1;
                        Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI) + 1;
                        Connection.QryBusca2.ExecSQL;
                    end
                    else
                      if (connection.QryBusca.FieldByName('dFechaInicio').AsDateTime >= dParamFechaF) then
                      begin
                          Connection.QryBusca2.SQL.Add('Update actividadesxorden set dFechaInicio = :FechaI, dFechaFinal = :FechaF '+
                                   'Where sContrato = :Contrato and sNumeroOrden =:Folio And sIdConvenio =:Convenio and sWbs =:Wbs');
                          Connection.QryBusca2.Params.ParamByName('Contrato').AsString := sParamcontrato ;
                          Connection.QryBusca2.Params.ParamByName('Folio').AsString    := sParamFolio ;
                          Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
                          Connection.QryBusca2.Params.ParamByName('Wbs').AsString      := connection.QryBusca.FieldByName('sWbs').AsString;
                          Connection.QryBusca2.Params.ParamByName('FechaI').AsDate     := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI)+ 1;
                          Connection.QryBusca2.Params.ParamByName('FechaF').AsDate     := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime + DaysBetween(dParamFechaF,dParamFechaI) + 1;
                          Connection.QryBusca2.ExecSQL;
                      end;
                end;
            end;
        end;
        connection.QryBusca.Next;
    end;

    ActualizaFechasPaquetes(global_contrato, sParamConvenio, sParamFolio, 'actividadesxorden', 'and sNumeroOrden =:Orden', 'dCantidad', 20, BarraProgreso);
    ActualizaPlazoFolioPrograma(sParamcontrato, sParamConvenio, sParamFolio);
end;

procedure ActualizaFechasPaquetes(sParamcontrato, sParamConvenio, sParamFolio, sParamTabla, sQlCadena, sQlCantidad : string; iParamPorcentaje :double; BarraProgreso :TcxProgressBar);
begin
    Connection.QryBusca2.Active := False;
    Connection.QryBusca2.SQL.Clear;
    Connection.QryBusca2.SQL.Add('Select Distinct sWBS From ' +sParamTabla+
      ' Where sContrato = :Contrato '+sQlCadena+' And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
    Connection.QryBusca2.Params.ParamByName('Contrato').AsString := global_contrato;
    Connection.QryBusca2.Params.ParamByName('Convenio').AsString := sParamConvenio;
    Connection.QryBusca2.Params.ParamByName('Orden').AsString    := sParamFolio;
    Connection.QryBusca2.Open;

    while not Connection.QryBusca2.Eof do
    begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Filtered := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
          ' sum('+sQlCantidad+' * dVentaMN) as dMontoMN, sum('+sQlCantidad+' * dVentaDLL) as dMontoDLL From ' +sParamTabla+
          ' Where sContrato = :Contrato '+sQlCadena+' And sIdConvenio = :Convenio And sWBSAnterior = :Paquete ' +
          ' and lCalculo="Si" Group By sWBSAnterior');
        Connection.QryBusca.Params.ParamByName('Contrato').AsString := global_contrato;
        Connection.QryBusca.Params.ParamByName('Convenio').AsString := sParamConvenio;
        Connection.QryBusca.Params.ParamByName('Orden').AsString    := sParamFolio;
        Connection.QryBusca.Params.ParamByName('Paquete').AsString  := Connection.QryBusca2.FieldValues['sWBS'];
        Connection.QryBusca.Open;

        if Connection.QryBusca.RecordCount > 0 then
          if (not Connection.QryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.QryBusca.FieldByName('dFechaFinal').IsNull) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update '+sParamTabla+' SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio '+sQlCadena+' And ' +
              'sWBS = :Paquete And sTipoActividad = "Paquete"');
            connection.zcommand.params.ParamByName('Contrato').AsString := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').AsString := sParamConvenio;
            connection.zcommand.params.ParamByName('Orden').AsString    := sParamFolio;
            connection.zcommand.params.ParamByName('Paquete').AsString  := Connection.QryBusca2.FieldValues['sWBS'];
            connection.zcommand.params.ParamByName('Inicio').AsDate     := Connection.QryBusca.FieldValues['dFechaInicio'];
            connection.zcommand.params.ParamByName('Final').AsDate      := Connection.QryBusca.FieldValues['dFechaFinal'];
            if roundTo(Connection.QryBusca.FieldValues['dPonderado'], -2) >= 100 then
              connection.zcommand.params.ParamByName('Ponderado').Value := 100
            else
              connection.zcommand.params.ParamByName('Ponderado').AsFloat := Connection.QryBusca.FieldValues['dPonderado'];
            connection.zcommand.params.ParamByName('MontoMN').AsFloat     := Connection.QryBusca.FieldValues['dMontoMN'];
            connection.zcommand.params.ParamByName('MontoDLL').AsFloat    := Connection.QryBusca.FieldValues['dMontoDLL'];
            Connection.zCommand.ExecSQL;
          end;
        Connection.QryBusca2.Next;
        BarraProgresoAvance(BarraProgreso, 0,100, iParamPorcentaje/Connection.QryBusca2.RecordCount);
    end;
end;

procedure ActualizaPlazoFolioPrograma(sParamcontrato, sParamConvenio, sParamFolio : string);
var
    zqPlazo: tzReadOnlyQuery;
begin
    zqPlazo := TzReadOnlyQuery.create(nil);
    zqPlazo.Connection := Connection.zConnection;

    zqPlazo.Active := False ;
    zqPlazo.SQL.Clear ;
    zqPlazo.SQL.Add('update ordenesdetrabajo set sIdConvenio =:Convenio Where sContrato = :Contrato and sNumeroOrden =:Folio ');
    zqPlazo.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPlazo.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqPlazo.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPlazo.ExecSQL;

    zqPlazo.Destroy;
end;

procedure HomologarWbsPartidas(sParamcontrato, sParamConvenio, sParamFolio : string; BarraProgreso :TcxProgressBar);
var
    zqPartidas: tzReadOnlyQuery;
begin
    zqPartidas := TzReadOnlyQuery.create(nil);
    zqPartidas.Connection := Connection.zConnection;

    BarraProgresoAvance(BarraProgreso, 0,100, 15);
    sleep(500);
    zqPartidas.Active := False ;
    zqPartidas.SQL.Clear ;
    zqPartidas.SQL.Add('update actividadesxorden set sWbs = concat(sWbsAnterior,".",sAnexo,".",sNumeroActividad) Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio and sTipoActividad = "Actividad"');
    zqPartidas.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPartidas.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqPartidas.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPartidas.ExecSQL;
    BarraProgresoAvance(BarraProgreso, 0,100, 15);

    zqPartidas.Active := False ;
    zqPartidas.SQL.Clear ;
    zqPartidas.SQL.Add('select sWbs, sWbsAnterior, sNumeroActividad, iNivel from actividadesxorden Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio ');
    zqPartidas.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqPartidas.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqPartidas.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqPartidas.Open;

    while not zqPartidas.Eof do
    begin
        OrdenamientosPartidaIJAD(sParamContrato, sParamConvenio, sParamFolio, zqPartidas.FieldByName('sWbsAnterior').AsString, zqPartidas.FieldByName('sNumeroActividad').AsString, zqPartidas.FieldByName('sWbs').AsString, zqPartidas.FieldByName('iNivel').AsInteger, BarraProgreso, zqPartidas.RecordCount );
        zqPartidas.Next;
    end;

    zqPartidas.Destroy;
end;

procedure OrdenamientosPartidaIJAD(sParamContrato, sParamConvenio, sParamFolio, sParamWbsAnterior, sParamActividad, sParamWbs : string; iParamNivel : integer; BarraProgreso :TcxProgressBar; iParamAvance :integer);
var
   folio  : longint;
   indice : integer;
   sItem  : string;
   zqOrdenamiento: tzReadOnlyQuery;
   c : char;
begin
    zqOrdenamiento := TzReadOnlyQuery.create(nil);
    zqOrdenamiento.Connection := Connection.zConnection;

    folio := iParamNivel;
    indice := 1;
    while indice <= length(sParamWbsAnterior) do
    begin
       c := sParamWbsAnterior[indice];
       folio := folio + ord(c) ;
       inc(indice);
    end;

    indice := 1;
    while indice <= length(sParamActividad) do
    begin
       c := sParamActividad[indice];
       folio := folio + ord(c) ;
       inc(indice);
    end;

    sItem := intToStr(folio);

    zqOrdenamiento.Active := False ;
    zqOrdenamiento.SQL.Clear ;
    zqOrdenamiento.SQL.Add('update actividadesxorden set iItemOrden = :item Where sContrato = :Contrato and sIdConvenio =:convenio and sNumeroOrden =:Folio and sWbs =:Wbs ');
    zqOrdenamiento.Params.ParamByName('Contrato').AsString := sParamcontrato ;
    zqOrdenamiento.Params.ParamByName('Folio').AsString    := sParamFolio ;
    zqOrdenamiento.Params.ParamByName('Convenio').AsString := sParamConvenio;
    zqOrdenamiento.Params.ParamByName('Wbs').AsString      := sParamWbs;
    zqOrdenamiento.Params.ParamByName('item').AsString     := sItem;
    zqOrdenamiento.ExecSQL;

    if iParamAvance > 0 then
       BarraProgresoAvance(BarraProgreso, 0,100,70/iParamAvance);

end;

Function ObtenerTipoCambio(sParamMoneda :string; dParamFecha :tDate): double;
begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from tiposdecambio where sIdMonedaConv =:Moneda and dIdFecha =:Fecha order by dIdFecha DESC ');
    connection.zCommand.ParamByName('Moneda').AsString := sParamMoneda;
    connection.zCommand.ParamByName('Fecha').AsDate    := dParamFecha;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount = 0 then
       result := 0
    else
       result := connection.zCommand.FieldByName('dCambio').AsFloat;
end;



end.

