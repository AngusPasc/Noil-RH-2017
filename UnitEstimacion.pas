unit UnitEstimacion;

interface
uses Controls, Classes, frm_connection, DB, SysUtils, utilerias, ZDataset, dialogs, Math, Forms,
    sTrUtils, StdCtrls, DBCtrls, RXDBCtrl, global, DBGrids;

    procedure procCreateObject(tOrigen: TComponent);
    procedure ActualizaAcumulados(dParamContrato, dParamEstimacion, dParamEstimacionSub, dParamTipo :string; tOrigen: TComponent);
    procedure OrdenaEstimaciones(dParamEstimacion, dParamTipoEstimacion : string; dParamConsecutivo :integer);
    procedure ActualizaIdGlobal(dParamTabla, dParamNombreId, dParamNuevoId, dParamIdAnt : string);
type
    TEventHandlers = class // create a dummy class
       procedure ButtonClick(Sender: TObject) ;
   end;

var
    LocalItem : string;

implementation
var
    Q_Actividades,
    Q_Acumulados,
    Q_Actualiza,
    Q_Anexos    : TZReadOnlyQuery;
    ActividadesxEstimacion  : TZQuery;
    ds_actividades          : tDataSource;

procedure TEventHandlers.ButtonClick(Sender: TObject) ;
begin
   global_opcion_window := 'Si' ;
end;

procedure procCreateObject(tOrigen: TComponent);
begin
    {Inciamos el proceso de acumulados de la Estimacion...}
    Q_Actividades := TZReadOnlyQuery.Create(tOrigen);
    Q_Actividades.Connection := Connection.zConnection;

    Q_Acumulados := TZReadOnlyQuery.Create(tOrigen);
    Q_Acumulados.Connection := Connection.zConnection;

    Q_Actualiza := TZReadOnlyQuery.Create(tOrigen);
    Q_Actualiza.Connection := Connection.zConnection;

    Q_Anexos := TZReadOnlyQuery.Create(tOrigen);
    Q_Anexos.Connection := Connection.zConnection;

    ActividadesxEstimacion := TZQuery.Create(tOrigen);
    ActividadesxEstimacion.Connection := Connection.zConnection;

    ds_actividades          := tDataSource.Create(tOrigen);
    ds_actividades.DataSet  := ActividadesxEstimacion;

    ActividadesxEstimacion.Active := False;
    ActividadesxEstimacion.FieldDefs.Add('sContrato', ftString, 15, True);
    ActividadesxEstimacion.FieldDefs.Add('iNumeroEstimacion', ftString, 10, True);
    ActividadesxEstimacion.FieldDefs.Add('iNumeroEstimacionSub', ftString, 20, True);
    ActividadesxEstimacion.FieldDefs.Add('sWbs', ftString, 30, True);
    ActividadesxEstimacion.FieldDefs.Add('sNumeroActividad', ftString, 10, True);
    ActividadesxEstimacion.FieldDefs.Add('sTipoActividad', ftString, 9, True);
    ActividadesxEstimacion.FieldDefs.Add('dCostoMN', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dCostoDLL', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dVentaMN', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dVentaDLL', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dAcumuladoActual', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dMontoAcumuladoAnteriorMN', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dMontoAcumuladoAnteriorDLL', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dMontoMN', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dMontoDLL', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dMontoAcumuladoMN', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dMontoAcumuladoDLL', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('sAnexo', ftString, 10, True);
    ActividadesxEstimacion.FieldDefs.Add('sIdTipoEstimacion', ftString, 2, True);
    ActividadesxEstimacion.FieldDefs.Add('dCantidadRestante', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dCantidadExcedente', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('dCantidadPT', ftFloat, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('iConsecutivo', ftInteger, 0, True);
    ActividadesxEstimacion.FieldDefs.Add('iOrigen', ftInteger, 0, True);


end;

{CALCULO DE LOS ACUMULADOS DE LAS ESTIMACIONES GENERALES..}
procedure ActualizaAcumulados(dParamContrato: string; dParamEstimacion: string; dParamEstimacionSub: string; dParamTipo: string; tOrigen: TComponent);
var
    dAcumulado,
    dRestante,
    dExcedente                : Double ;
    dMontoGeneradoMN,
    dMontoGeneradoDLL,
    dMontoEstimacionMN,
    dMontoEstimacionDLL       : currency ;
    dMontoEstimacionAcumMN,
    dMontoEstimacionAcumDLL,
    dMontoAnexos              : currency ;
    dMontoAnexo               : currency;
    iTotalDias, iTotalDiasEst : integer;
    AvProgFinanciero,
    AvFisicoFinanciero        : double;

begin
    procCreateObject(tOrigen);

    {Refrescamos los datos de las Actividades del Anexo/Orden...}
    ActividadesxEstimacion.Filter := '' ;
    ActividadesxEstimacion.Active := False ;
    ActividadesxEstimacion.SQL.Clear;
    ActividadesxEstimacion.SQL.Add('Select * from estimacion_actividades Where sContrato = :contrato '+
                                   'and iNumeroEstimacion = :Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo '+
                                   'order by sAnexo, iItemOrden, iOrden');
    ActividadesxEstimacion.Params.ParamByName('Contrato').DataType      := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Contrato').Value         := dParamcontrato;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').DataType    := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Estimacion').Value       := dParamEstimacion;
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').DataType := ftString ;
    ActividadesxEstimacion.Params.ParamByName('EstimacionSub').Value    := dParamEstimacionSub;
    ActividadesxEstimacion.Params.ParamByName('Tipo').DataType          := ftString ;
    ActividadesxEstimacion.Params.ParamByName('Tipo').Value             := dparamTipo;
    ActividadesxEstimacion.Open ;


    {Iniciamos el proceso de los acumulados anteriores...}
    while not ActividadesxEstimacion.Eof do
    begin
        {Primero las Actividades y Recursos..}
        If ActividadesxEstimacion.FieldValues['sTipoActividad'] = 'Actividad' Then
        Begin
            Q_Acumulados.Active;
            Q_Acumulados.SQL.Clear;
            Q_Acumulados.SQL.Add('Select Sum(dCantidad) as Generado from estimacion_actividades '+
                                 'Where sIdTipoEstimacion =:Tipo and sContrato =:Contrato '+
                                 'and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and iConsecutivo <:Consecutivo Group By sNumeroActividad');
            Q_Acumulados.ParamByName('Tipo').AsString         := ActividadesxEstimacion.FieldValues['sIdTipoEstimacion'];
            Q_Acumulados.ParamByName('Contrato').AsString     := ActividadesxEstimacion.FieldValues['sContrato'];
            Q_Acumulados.ParamByName('Anexo').AsString        := ActividadesxEstimacion.FieldValues['sAnexo'];
            Q_Acumulados.ParamByName('Wbs').AsString          := ActividadesxEstimacion.FieldValues['sWbs'];
            Q_Acumulados.ParamByName('Actividad').AsString    := ActividadesxEstimacion.FieldValues['sNumeroActividad'];
            Q_Acumulados.ParamByName('Consecutivo').AsInteger := ActividadesxEstimacion.FieldValues['iConsecutivo'];
            Q_Acumulados.Open;

            If Q_Acumulados.RecordCount > 0 then
                dAcumulado := Q_Acumulados.FieldValues['Generado']
            Else
                dAcumulado := 0 ;

            {Actualizamos acumulados...}
            ActividadesxEstimacion.Edit ;
            ActividadesxEstimacion.FieldValues['dAcumuladoAnterior']         := dAcumulado ;
            ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorMN']  := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
            ActividadesxEstimacion.FieldValues['dMontoAcumuladoAnteriorDLL'] := dAcumulado * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;

            if ActividadesxEstimacion.FieldValues['dCantidadPT'] > ActividadesxEstimacion.FieldValues['dCantidad'] then
               ActividadesxEstimacion.FieldValues['dCantidadRestante']   := ActividadesxEstimacion.FieldValues['dCantidadPT'] - ActividadesxEstimacion.FieldValues['dCantidad'];

            if ActividadesxEstimacion.FieldValues['dCantidadPT'] < ActividadesxEstimacion.FieldValues['dCantidad'] then
               ActividadesxEstimacion.FieldValues['dCantidadExcedente']  := ActividadesxEstimacion.FieldValues['dCantidad']   - ActividadesxEstimacion.FieldValues['dCantidadPT']
            else
               ActividadesxEstimacion.FieldValues['dCantidadExcedente']  := 0;

            ActividadesxEstimacion.FieldValues['dAcumuladoActual']    := dAcumulado + ActividadesxEstimacion.FieldValues['dCantidad'] ;
            ActividadesxEstimacion.FieldValues['dMontoAcumuladoMN']   := ActividadesxEstimacion.FieldValues['dAcumuladoActual'] * ActividadesxEstimacion.FieldValues['dVentaMN'] ;
            ActividadesxEstimacion.FieldValues['dMontoAcumuladoDLL']  := ActividadesxEstimacion.FieldValues['dAcumuladoActual'] * ActividadesxEstimacion.FieldValues['dVentaDLL'] ;


            {Ahora actualizamos los recursos de la Estimacion dond se obtuvo el volumen pendiente de Cobrar...}
            if ActividadesxEstimacion.FieldValues['iOrigen'] > 0 then
            begin
                {Primero buscamos el Id siguiente con iOrigen de la estimacion para actualizar CantidadPT...}
                Q_Acumulados.Active := False;
                Q_Acumulados.SQL.Clear;
                Q_Acumulados.SQL.Add('Select min(iConsecutivo) as Consecutivo from estimacion_actividades '+
                                     'Where sContrato =:Contrato and sIdTipoEstimacion =:Tipo '+
                                     'and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and iOrigen =:Origen '+
                                     'and iConsecutivo > :Consecutivo Group By sContrato');
                Q_Acumulados.ParamByName('Contrato').AsString    := ActividadesxEstimacion.FieldValues['sContrato'];
                Q_Acumulados.ParamByName('Tipo').AsString        := ActividadesxEstimacion.FieldValues['sIdTipoEstimacion'];
                Q_Acumulados.ParamByName('Anexo').AsString       := ActividadesxEstimacion.FieldValues['sAnexo'];
                Q_Acumulados.ParamByName('Wbs').AsString         := ActividadesxEstimacion.FieldValues['sWbs'];
                Q_Acumulados.ParamByName('Actividad').AsString   := ActividadesxEstimacion.FieldValues['sNumeroActividad'];
                Q_Acumulados.ParamByName('Origen').AsString      := ActividadesxEstimacion.FieldValues['iOrigen'];
                Q_Acumulados.ParamByName('Consecutivo').AsString := ActividadesxEstimacion.FieldValues['iConsecutivo'];
                Q_Acumulados.Open;

                if Q_Acumulados.RecordCount > 0 then
                begin
                    {Actulaizacion de Cantidad PT }
                    Q_Actualiza.Active := False;
                    Q_Actualiza.SQL.Clear;
                    Q_Actualiza.SQL.Add('Update estimacion_actividades set dCantidadPT =:Cantidad where sContrato =:Contrato and sIdTipoEstimacion =:Tipo '+
                                        'and iConsecutivo =:Consecutivo and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad = "Actividad"');
                    Q_Actualiza.ParamByName('Contrato').AsString    := ActividadesxEstimacion.FieldValues['sContrato'];
                    Q_Actualiza.ParamByName('Tipo').AsString        := ActividadesxEstimacion.FieldValues['sIdTipoEstimacion'];
                    Q_Actualiza.ParamByName('Consecutivo').AsString := Q_Acumulados.FieldValues['Consecutivo'];
                    Q_Actualiza.ParamByName('Anexo').AsString       := ActividadesxEstimacion.FieldValues['sAnexo'];
                    Q_Actualiza.ParamByName('Wbs').AsString         := ActividadesxEstimacion.FieldValues['sWbs'];
                    Q_Actualiza.ParamByName('Actividad').AsString   := ActividadesxEstimacion.FieldValues['sNumeroActividad'];
                    Q_Actualiza.ParamByName('Cantidad').AsString    := ActividadesxEstimacion.FieldValues['dCantidadRestante'];
                    Q_Actualiza.ExecSQL;
                end;

                {Actulaizacion de dCantidadRestante y dCantidadExcedente ...}
                Q_Actualiza.Active := False;
                Q_Actualiza.SQL.Clear;
                Q_Actualiza.SQL.Add('Update estimacion_actividades set dCantidadRestante =:Cantidad where sContrato =:Contrato and sIdTipoEstimacion =:Tipo '+
                                    'and iConsecutivo =:Consecutivo and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad = "Actividad"');
                Q_Actualiza.ParamByName('Contrato').AsString    := ActividadesxEstimacion.FieldValues['sContrato'];
                Q_Actualiza.ParamByName('Tipo').AsString        := ActividadesxEstimacion.FieldValues['sIdTipoEstimacion'];
                Q_Actualiza.ParamByName('Consecutivo').AsString := ActividadesxEstimacion.FieldValues['iOrigen'];
                Q_Actualiza.ParamByName('Anexo').AsString       := ActividadesxEstimacion.FieldValues['sAnexo'];
                Q_Actualiza.ParamByName('Wbs').AsString         := ActividadesxEstimacion.FieldValues['sWbs'];
                Q_Actualiza.ParamByName('Actividad').AsString   := ActividadesxEstimacion.FieldValues['sNumeroActividad'];
                Q_Actualiza.ParamByName('Cantidad').AsString    := ActividadesxEstimacion.FieldValues['dCantidadRestante'];
                Q_Actualiza.ExecSQL;

                ActividadesxEstimacion.FieldValues['dCantidadRestante'] := 0;
            end
            else
            begin
                {Primero buscamos el Id siguiente con iOrigen de la estimacion para actualizar CantidadPT...}
                Q_Acumulados.Active := False;
                Q_Acumulados.SQL.Clear;
                Q_Acumulados.SQL.Add('Select min(iConsecutivo) as Consecutivo from estimacion_actividades '+
                                     'Where sContrato =:Contrato and sIdTipoEstimacion =:Tipo '+
                                     'and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and iOrigen =:Origen '+
                                     'and iConsecutivo > :Consecutivo Group By sContrato');
                Q_Acumulados.ParamByName('Contrato').AsString    := ActividadesxEstimacion.FieldValues['sContrato'];
                Q_Acumulados.ParamByName('Tipo').AsString        := ActividadesxEstimacion.FieldValues['sIdTipoEstimacion'];
                Q_Acumulados.ParamByName('Anexo').AsString       := ActividadesxEstimacion.FieldValues['sAnexo'];
                Q_Acumulados.ParamByName('Wbs').AsString         := ActividadesxEstimacion.FieldValues['sWbs'];
                Q_Acumulados.ParamByName('Actividad').AsString   := ActividadesxEstimacion.FieldValues['sNumeroActividad'];
                Q_Acumulados.ParamByName('Origen').AsString      := ActividadesxEstimacion.FieldValues['iConsecutivo'];
                Q_Acumulados.ParamByName('Consecutivo').AsString := ActividadesxEstimacion.FieldValues['iConsecutivo'];
                Q_Acumulados.Open;

                if Q_Acumulados.RecordCount > 0 then
                begin
                    {Actulaizacion de Cantidad PT }
                    Q_Actualiza.Active := False;
                    Q_Actualiza.SQL.Clear;
                    Q_Actualiza.SQL.Add('Update estimacion_actividades set dCantidadPT =:Cantidad where sContrato =:Contrato and sIdTipoEstimacion =:Tipo '+
                                        'and iConsecutivo =:Consecutivo and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad = "Actividad"');
                    Q_Actualiza.ParamByName('Contrato').AsString    := ActividadesxEstimacion.FieldValues['sContrato'];
                    Q_Actualiza.ParamByName('Tipo').AsString        := ActividadesxEstimacion.FieldValues['sIdTipoEstimacion'];
                    Q_Actualiza.ParamByName('Consecutivo').AsString := Q_Acumulados.FieldValues['Consecutivo'];
                    Q_Actualiza.ParamByName('Anexo').AsString       := ActividadesxEstimacion.FieldValues['sAnexo'];
                    Q_Actualiza.ParamByName('Wbs').AsString         := ActividadesxEstimacion.FieldValues['sWbs'];
                    Q_Actualiza.ParamByName('Actividad').AsString   := ActividadesxEstimacion.FieldValues['sNumeroActividad'];
                    Q_Actualiza.ParamByName('Cantidad').AsString    := ActividadesxEstimacion.FieldValues['dCantidadRestante'];
                    Q_Actualiza.ExecSQL;
                end;

            end;

            ActividadesxEstimacion.Post ;

        End;
        ActividadesxEstimacion.Next;
    end;

    {Actualizamos los montos en MN y DLL de las Actividades}
    Q_Actualiza.Active := False ;
    Q_Actualiza.SQL.Clear ;
    Q_Actualiza.SQL.Add('Update estimacion_actividades set dMontoMN = dCantidad * dVentaMN, dMontoDLL = dCantidad * dVentaDLL ' +
                        'Where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sTipoActividad = "Actividad" ') ;
    Q_Actualiza.Params.ParamByName('Contrato').AsString      := dParamContrato ;
    Q_Actualiza.Params.ParamByName('Estimacion').AsString    := dParamEstimacion ;
    Q_Actualiza.Params.ParamByName('EstimacionSub').AsString := dParamEstimacionSub;
    Q_Actualiza.Params.ParamByName('Tipo').AsString          := dParamTipo;
    Q_Actualiza.ExecSQL;

    {Ahora Consultamos Actividades para actualizar los montos de las Actividades..}
    Q_Acumulados.Active := False ;
    Q_Acumulados.SQL.Clear ;
    Q_Acumulados.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN, sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                         'Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From estimacion_actividades ' +
                         'Where sContrato =:Contrato and iNumeroEstimacion = :Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo And sTipoActividad = "Actividad" Group By sContrato') ;
    Q_Acumulados.Params.ParamByName('Contrato').AsString      := dParamContrato;
    Q_Acumulados.Params.ParamByName('Estimacion').AsString    := dParamEstimacion;
    Q_Acumulados.Params.ParamByName('EstimacionSub').AsString := dParamEstimacionSub;
    Q_Acumulados.Params.ParamByName('Tipo').AsString          := dParamTipo;
    Q_Acumulados.Open ;

    If Q_Acumulados.RecordCount > 0 then
    Begin
        dMontoEstimacionMN      := Q_Acumulados.FieldValues['dMontoMN'] ;
        dMontoEstimacionDLL     := Q_Acumulados.FieldValues['dMontoDLL'] ;
        dMontoEstimacionAcumMN  := Q_Acumulados.FieldValues['dMontoAnteriorMN']  + dMontoEstimacionMN ;
        dMontoEstimacionAcumDLL := Q_Acumulados.FieldValues['dMontoAnteriorDLL'] + dMontoEstimacionDLL ;
    End
    Else
    Begin
        dMontoEstimacionAcumMN  := 0 ;
        dMontoEstimacionAcumDLL := 0 ;
        dMontoEstimacionMN      := 0 ;
        dMontoEstimacionDLL     := 0 ;
    End ;

    {Ahora Actualizamos los montos de la orden  General..}
    Q_Actualiza.Active := False ;
    Q_Actualiza.SQL.Clear ;
    Q_Actualiza.SQL.Add('Update estimacion_orden set dMontoMN =:EstimadoMN, dMontoDLL =:EstimadoDLL, dMontoAcumuladoMN =:EstimadoAcumMN, dMontoAcumuladoDLL =:EstimadoAcumDLL  ' +
                        'Where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo ') ;
    Q_Actualiza.Params.ParamByName('Contrato').AsString       := dParamContrato;
    Q_Actualiza.Params.ParamByName('Estimacion').AsString     := dParamEstimacion;
    Q_Actualiza.Params.ParamByName('EstimacionSub').AsString  := dParamEstimacionSub;
    Q_Actualiza.Params.ParamByName('Tipo').AsString           := dParamTipo;
    Q_Actualiza.Params.ParamByName('EstimadoMN').AsFloat      := dMontoEstimacionMN ;
    Q_Actualiza.Params.ParamByName('EstimadoDLL').AsFloat     := dMontoEstimacionDLL ;
    Q_Actualiza.Params.ParamByName('EstimadoAcumMN').AsFloat  := dMontoEstimacionAcumMN ;
    Q_Actualiza.Params.ParamByName('EstimadoAcumDLL').AsFloat := dMontoEstimacionAcumDLL ;
    Q_Actualiza.ExecSQL;

    ActividadesxEstimacion.Refresh;

    {Consultamos los anexos existentes..}
    Q_Anexos.Active := False;
    Q_Anexos.SQL.Clear;
    Q_Anexos.SQL.Add('select a.*, '+
                     '(select dFechaFinal from estimacion_general where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo) as dFechaFinal, '+
                     '(select dMontoMN from convenios where sContrato =:Contrato) as MontoMN, '+
                     '(select dFechaInicio from convenios where sContrato =:Contrato) as FechaIContrato, '+
                     '(select dFechaFinal from convenios where sContrato =:Contrato) as FechaFContrato '+
                     'from anexos a');
    Q_Anexos.ParamByName('Contrato').AsString   := dParamcontrato;
    Q_Anexos.ParamByName('Estimacion').AsString := dParamEstimacion;
    Q_Anexos.ParamByName('Tipo').AsString       := dParamTipo;
    Q_Anexos.Open;

    dMontoAnexos := 0;

    while not Q_Anexos.Eof do
    begin
        {En esta parte Calculamos los Acumulados pero de cada Anexo..}
        Q_Acumulados.Active := False ;
        Q_Acumulados.SQL.Clear ;
        Q_Acumulados.SQL.Add('Select sum(dMontoMN) as dMontoAnexoMN, sum(dMontoAcumuladoMN) as dMontoAnteriorAnexoMN, '+
                             'sum(dMontoDLL) as dMontoAnexoDLL, sum(dMontoAcumuladoDLL) as dMontoAnteriorAnexoDLL '+
                             'From estimacion_actividades '+
                             'Where sContrato =:Contrato and iNumeroEstimacion =:Estimacion ' +
                             'and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sAnexo =:Anexo group by sContrato ') ;
        Q_Acumulados.Params.ParamByName('Contrato').AsString      := dParamContrato;
        Q_Acumulados.Params.ParamByName('Estimacion').AsString    := dParamEstimacion;
        Q_Acumulados.Params.ParamByName('EstimacionSub').AsString := dParamEstimacionSub;
        Q_Acumulados.Params.ParamByName('Tipo').AsString          := dParamTipo;
        Q_Acumulados.Params.ParamByName('Anexo').AsString         := Q_Anexos.FieldValues['sAnexo'];
        Q_Acumulados.Open;

        if Q_Acumulados.RecordCount > 0 then
        begin
            {Actualizamos los montos de la Orden x Anexo...}
            Q_Actualiza.Active := False ;
            Q_Actualiza.SQL.Clear ;
            Q_Actualiza.SQL.Add('Update estimacion_actividades set dMontoxAnexoMN =:MontoMN, dMontoxAnexoDLL =:MontoDLL, dMontoxAnexoAcumuladoMN =:MontoAcumMN, dMontoxAnexoAcumuladoDLL =:MontoAcumDLL  ' +
                                'Where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sAnexo =:Anexo') ;
            Q_Actualiza.Params.ParamByName('Contrato').AsString       := dParamContrato;
            Q_Actualiza.Params.ParamByName('Estimacion').AsString     := dParamEstimacion;
            Q_Actualiza.Params.ParamByName('EstimacionSub').AsString  := dParamEstimacionSub;
            Q_Actualiza.Params.ParamByName('Tipo').AsString           := dParamTipo;
            Q_Actualiza.Params.ParamByName('Anexo').AsString          := Q_Anexos.FieldValues['sAnexo'];
            Q_Actualiza.Params.ParamByName('MontoMN').AsFloat         := Q_Acumulados.FieldValues['dMontoAnexoMN'];
            Q_Actualiza.Params.ParamByName('MontoDLL').AsFloat        := Q_Acumulados.FieldValues['dMontoAnexoDLL'];
            Q_Actualiza.Params.ParamByName('MontoAcumMN').AsFloat     := Q_Acumulados.FieldValues['dMontoAnteriorAnexoMN'];
            Q_Actualiza.Params.ParamByName('MontoAcumDLL').AsFloat    := Q_Acumulados.FieldValues['dMontoAnteriorAnexoDLL'];
            Q_Actualiza.ExecSQL;

            if Q_Anexos.FieldValues['sTipo'] <> 'BARCO' then
               dMontoAnexos := dMontoAnexos + Q_Acumulados.FieldValues['dMontoAnteriorAnexoMN'];
        end;
        Q_Anexos.Next;
    end;

    {Avances Financieros..}
    iTotalDias       := ((Q_Anexos.FieldValues['FechaFContrato'] - Q_Anexos.FieldValues['FechaIContrato']) + 1);
    iTotalDiasEst    := ((Q_Anexos.FieldValues['dFechaFinal'] - Q_Anexos.FieldValues['FechaIContrato']) + 1);
    AvProgFinanciero := (100/iTotalDias) * iTotalDiasEst;

    if AvProgFinanciero > 100 then
       AvProgFinanciero := 100;

    try
        AvFisicoFinanciero :=  (100 / Q_Anexos.FieldValues['MontoMN']) * dMontoAnexos;
    Except

    end;

    if AvFisicoFinanciero > 100 then
       AvFisicoFinanciero := 100;

    {Actualizamos tabla de aavnces..}
    Q_Actualiza.Active := False ;
    Q_Actualiza.SQL.Clear ;
    Q_Actualiza.SQL.Add('Update avances_estimaciones set dAvanceProgramadoFinanciero =:Programado, dAvanceFisicoFinanciero =:Fisico ' +
                        'Where sContrato =:Contrato and dIdFecha =:Fecha ') ;
    Q_Actualiza.Params.ParamByName('Contrato').AsString  := dParamContrato;
    Q_Actualiza.Params.ParamByName('Fecha').AsDate       := Q_Anexos.FieldValues['dFechaFinal'];
    Q_Actualiza.Params.ParamByName('Programado').AsFloat := AvProgFinanciero;
    Q_Actualiza.Params.ParamByName('Fisico').AsFloat     := AvFisicoFinanciero;
    Q_Actualiza.ExecSQL;

    ActividadesxEstimacion.First;
end;

{ FUNCION DE ORDENAMIENTO DE ESTIMACIONES GENERALES.. A PARTIR DE UNA EDICION DE CONSECUTIVO..}

procedure OrdenaEstimaciones(dParamEstimacion: string; dParamTipoEstimacion : string; dParamConsecutivo :integer);
var
    Q_General,
    Q_Ordenes,
    Q_Actividad,
    Q_Actualiza,
    Q_Consulta   : TZReadOnlyQuery;
    TCrea        : TComponent;
    Numero_O,
    Numero_A     : integer;
begin

   Q_General := TZReadOnlyQuery.Create(tCrea);
   Q_General.Connection := Connection.zConnection;

   Q_Ordenes := TZReadOnlyQuery.Create(tCrea);
   Q_Ordenes.Connection := Connection.zConnection;

   Q_Actividad := TZReadOnlyQuery.Create(tCrea);
   Q_Actividad.Connection := Connection.zConnection;

   Q_Actualiza := TZReadOnlyQuery.Create(tCrea);
   Q_Actualiza.Connection := Connection.zConnection;

   Q_Consulta := TZReadOnlyQuery.Create(tCrea);
   Q_Consulta.Connection := Connection.zConnection;

   {En esta parte Checamos si la estimacion se intercala al inicio o enmedio de la lista...}
   Q_General.Active := False;
   Q_General.SQL.Clear;
   Q_General.SQL.Add('select iNumeroEstimacion,sIdTipoEstimacion,idConsecutivo from estimacion_general where idConsecutivo >=:Consecutivo order by idConsecutivo');
   Q_General.ParamByName('Consecutivo').AsInteger := dParamConsecutivo;
   Q_General.Open;

   { A h o r a   a c t u a l i z a m o s   l a s  o r d e n e s  y  a c t.  ..}
   while not Q_General.Eof do
   begin
        if Q_General.FieldValues['idConsecutivo'] = dParamConsecutivo then
        begin
            {Buscamos el siguiente consecutivo de donde se coloco la estimaicon...}
            Q_Consulta.Active := False;
            Q_Consulta.SQL.Clear;
            Q_Consulta.SQL.Add('select max(idConsecutivo) as idConsecutivo from estimacion_general where idConsecutivo < :Consecutivo group by sAgrupa ');
            Q_Consulta.ParamByName('Consecutivo').AsInteger := dParamConsecutivo;
            Q_Consulta.Open;

            if Q_Consulta.RecordCount > 0 then
            begin
                {Una vez tenemos el numero de consecutivo, buscamos todos los datos de la estimaicon para buscar primer consetitov de ordnes..}
                Q_Ordenes.Active := False;
                Q_Ordenes.SQL.Clear;
                Q_Ordenes.SQL.Add('select iNumeroEstimacion, sIdTipoEstimacion from estimacion_general where idConsecutivo =:Consecutivo ');
                Q_Ordenes.ParamByName('Consecutivo').AsInteger := Q_Consulta.FieldValues['idConsecutivo'];
                Q_Ordenes.Open;

                {Primero las Ordenes..}
                if Q_Ordenes.RecordCount > 0 then
                begin
                    {Ahora buscamos el minimo consecutivo de la estimacion seleciconada. para asignarsela a las ordneas de la estimacion con nuevo Id}
                    Q_Actividad.Active := False;
                    Q_Actividad.SQL.Clear;
                    Q_Actividad.SQL.Add('select max(iConsecutivo) as iConsecutivo from estimacion_orden where iNumeroEstimacion=:Estimacion and sIdTipoEstimacion =:Tipo group by sAgrupa');
                    Q_Actividad.ParamByName('Estimacion').AsString := Q_Ordenes.FieldValues['iNumeroEstimacion'];
                    Q_Actividad.ParamByName('Tipo').AsString       := Q_Ordenes.FieldValues['sIdTipoEstimacion'];
                    Q_Actividad.Open;

                    {ponemos el conscutivo en la variable numero.. Esta se ira incrementando..}
                    if Q_Actividad.RecordCount > 0 then
                       Numero_O := Q_Actividad.FieldValues['iConsecutivo'] + 1
                    else
                    begin
                        {Si la estimacion esta vacia.. tomamos el maximo consecutivo... se supone que no debe haber estimaicones sin ordenes..}
                        Q_Actividad.Active := False;
                        Q_Actividad.SQL.Clear;
                        Q_Actividad.SQL.Add('select max(iConsecutivo) as iConsecutivo from estimacion_orden group by sAgrupa');
                        Q_Actividad.Open;

                        if Q_Actividad.RecordCount > 0 then
                           Numero_O := Q_Actividad.FieldValues['iConsecutivo'] + 1
                        else
                           Numero_O := 1;
                    end;
                end;

                {Continuan las actividades..}
                if Q_Ordenes.RecordCount > 0 then
                begin
                    {Ahora buscamos el minimo consecutivo de la estimacion seleciconada. para asignarsela a las ordneas de la estimacion con nuevo Id}
                    Q_Actividad.Active := False;
                    Q_Actividad.SQL.Clear;
                    Q_Actividad.SQL.Add('select max(iConsecutivo) as iConsecutivo from estimacion_actividades where iNumeroEstimacion=:Estimacion and sIdTipoEstimacion =:Tipo group by sAgrupa');
                    Q_Actividad.ParamByName('Estimacion').AsString := Q_Ordenes.FieldValues['iNumeroEstimacion'];
                    Q_Actividad.ParamByName('Tipo').AsString       := Q_Ordenes.FieldValues['sIdTipoEstimacion'];
                    Q_Actividad.Open;

                    {ponemos el conscutivo en la variable numero.. Esta se ira incrementando..}
                    if Q_Actividad.RecordCount > 0 then
                       Numero_A := Q_Actividad.FieldValues['iConsecutivo'] + 1
                    else
                    begin
                        {Si la estimacion esta vacia.. tomamos el maximo consecutivo... se supone que no debe haber estimaicones sin ordenes..}
                        Q_Actividad.Active := False;
                        Q_Actividad.SQL.Clear;
                        Q_Actividad.SQL.Add('select max(iConsecutivo) as iConsecutivo from estimacion_actividades group by sAgrupa');
                        Q_Actividad.Open;

                        if Q_Actividad.RecordCount > 0 then
                           Numero_A := Q_Actividad.FieldValues['iConsecutivo'] + 1
                        else
                           Numero_A := 1;
                    end;
                end;
            end
            else
            begin
                Numero_O := 1;
                Numero_A := 1;
            end;
        end;

        {Ahora consultamos todas las ordenes de la estimacion..}
        Q_Ordenes.Active := False;
        Q_Ordenes.SQL.Clear;
        Q_Ordenes.SQL.Add('select sContrato, iConsecutivo, iNumeroEstimacion, iNumeroEstimacionSub, sIdTipoEstimacion from estimacion_orden '+
                          'where iNumeroEstimacion=:Estimacion and sIdTipoEstimacion =:Tipo order by iConsecutivo ');
        Q_Ordenes.ParamByName('Estimacion').AsString := Q_General.FieldValues['iNumeroEstimacion'];
        Q_Ordenes.ParamByName('Tipo').AsString       := Q_General.FieldValues['sIdTipoEstimacion'];
        Q_Ordenes.Open;

        while not Q_Ordenes.Eof do
        begin
            {Una vez tenemos las ordenes y los consecutivo.. actualizamos de acuerdo al numero consultado, el cual se ira incrementando..}
            Q_Actividad.Active := False;
            Q_Actividad.SQL.Clear;
            Q_Actividad.SQL.Add('Update estimacion_orden set iConsecutivo =:Numero where sContrato =:Contrato and iNumeroEstimacion=:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo ');
            Q_Actividad.ParamByName('Contrato').AsString      := Q_Ordenes.FieldValues['sContrato'];
            Q_Actividad.ParamByName('Estimacion').AsString    := Q_Ordenes.FieldValues['iNumeroEstimacion'];
            Q_Actividad.ParamByName('EstimacionSub').AsString := Q_Ordenes.FieldValues['iNumeroEstimacionSub'];
            Q_Actividad.ParamByName('Tipo').AsString          := Q_Ordenes.FieldValues['sIdTipoEstimacion'];
            Q_Actividad.ParamByName('Numero').AsInteger       := Numero_O;
            Q_Actividad.ExecSQL;

            Inc(Numero_O);
            Q_Ordenes.Next;
        end;

        {Ahora consultamos todos los recursos / actividades de la estimacion..}
        Q_Ordenes.Active := False;
        Q_Ordenes.SQL.Clear;
        Q_Ordenes.SQL.Add('select sContrato, iConsecutivo, iNumeroEstimacion, iNumeroEstimacionSub, sIdTipoEstimacion from estimacion_actividades '+
                          'where iNumeroEstimacion=:Estimacion and sIdTipoEstimacion =:Tipo group by iConsecutivo order by iConsecutivo ');
        Q_Ordenes.ParamByName('Estimacion').AsString := Q_General.FieldValues['iNumeroEstimacion'];
        Q_Ordenes.ParamByName('Tipo').AsString       := Q_General.FieldValues['sIdTipoEstimacion'];
        Q_Ordenes.Open;

        while not Q_Ordenes.Eof do
        begin
            {Una vez tenemos las ordenes y los consecutivo.. actualizamos de acuerdo al numero consultado, el cual se ira incrementando..}
            Q_Actividad.Active := False;
            Q_Actividad.SQL.Clear;
            Q_Actividad.SQL.Add('Update estimacion_actividades set iConsecutivo =:Numero where sContrato =:Contrato and iNumeroEstimacion=:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo ');
            Q_Actividad.ParamByName('Contrato').AsString      := Q_Ordenes.FieldValues['sContrato'];
            Q_Actividad.ParamByName('Estimacion').AsString    := Q_Ordenes.FieldValues['iNumeroEstimacion'];
            Q_Actividad.ParamByName('EstimacionSub').AsString := Q_Ordenes.FieldValues['iNumeroEstimacionSub'];
            Q_Actividad.ParamByName('Tipo').AsString          := Q_Ordenes.FieldValues['sIdTipoEstimacion'];
            Q_Actividad.ParamByName('Numero').AsInteger       := Numero_A;
            Q_Actividad.ExecSQL;

            Inc(Numero_A);
            Q_Ordenes.Next;
        end;
        Q_General.Next;
   end;
   Q_General.Destroy;
   Q_Ordenes.Destroy;
   Q_Actividad.Destroy;
   Q_Actualiza.Destroy;
   Q_Consulta.Destroy;
end;

{ACTUALIZACION DE IDS DE TABLAS GLOBALES...}

procedure ActualizaIdGlobal(dParamTabla : string; dParamNombreId : string; dParamNuevoId : string; dParamIdAnt : string);
var
   Q_Actualiza : TZReadOnlyQuery;
   tOrigen     : TComponent;
begin
   Q_Actualiza := TZReadOnlyQuery.Create(tOrigen);
   Q_Actualiza.Connection := connection.zConnection;

   Q_Actualiza.Active := False;
   Q_Actualiza.SQL.Clear;
   Q_Actualiza.SQL.Add('Update '+dParamTabla+' set '+dParamNombreId+ ' =:NuevoId where '+dParamNombreId+ ' = :IdOld ');
   Q_Actualiza.ParamByName('NuevoId').AsString := dParamNuevoId;
   Q_Actualiza.ParamByName('IdOld').AsString   := dParamIdAnt;
   Q_Actualiza.ExecSQL;

end;


end.

