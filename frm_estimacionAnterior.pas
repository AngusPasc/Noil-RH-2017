unit frm_estimacionAnterior;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, sPageControl, frm_connection, global, ToolWin,
  ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls, frxClass, frxDBSet,
  Buttons, RxLookup, RxMemDS, utilerias, Newpanel, RXCtrls, DateUtils, math,
  strUtils, ImgList, frxPreview,  frxChart, ZAbstractRODataset, ZDataset, sSkinProvider,
  Grids, DBGrids, rxToolEdit, RXDBCtrl, CheckLst, JvExControls, JvxCheckListBox,
  ZAbstractDataset;
type
  TfrmEstimacionAnterior = class(TForm)
    CmdCancel: TButton;
    OrdenesAnexos: TZReadOnlyQuery;
    ds_OrdenesAnexos: TDataSource;
    ds_estimaciones: TDataSource;
    CmdNext: TButton;
    Label2: TLabel;
    tsOrdenes: TDBLookupComboBox;
    DBGrid_Convenios: TDBGrid;
    GrupoEstimacion: TGroupBox;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    tFecha_I: TDBDateEdit;
    tFecha_F: TDBDateEdit;
    tNumeroEstimacion: TEdit;
    lblTipo: TLabel;
    rxEstimaciones: TRxMemoryData;
    rxEstimacionessContrato: TStringField;
    rxEstimacionessIdTipoEstimacion: TStringField;
    rxEstimacionesiNumeroEstimacion: TStringField;
    rxEstimacionesdFechaInicio: TDateField;
    rxEstimacionesdFechaFinal: TDateField;
    rxEstimacionesPendienteMN: TFloatField;
    rxEstimacionesPendienteDLL: TFloatField;
    rxEstimacionesAdicionalMN: TFloatField;
    rxEstimacionesAdicionalDLL: TFloatField;
    rxEstimacionessIdConvenio: TStringField;
    rxEstimacionesiNumeroEstimacionSub: TStringField;
    rxEstimacionessIdTipo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tsOrdenesExit(Sender: TObject);
    procedure CmdNextClick(Sender: TObject);
    procedure InsertaAcumulados(dParamEstimacion, dParamEstimacionSub, dParamTipo : string; dParamConsecutivo : integer);
    procedure InsertaDatos(  paramAnexo, paramWbs, paramWbsAnt,
                             paramActividad,
                             paramItem,
                             paramDescripcion,
                             paramMedida, paramEstimacionSub : String ; paramiOrden, paramiOrigen : integer; paramCostoMN, paramCostoDLL,
                             paramVentaMN,
                             paramVentaDLL,
                             paramCantAnexo,paramCantidad : double);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstimacionAnterior: TfrmEstimacionAnterior;
  Bandera, Fecha  : string;
  oper            : integer ;
  Consecutivo     : integer;
  sNumeroSub  : string;

implementation

uses
    frm_EstimacionGeneral;

{$R *.dfm}

procedure TfrmEstimacionAnterior.CmdNextClick(Sender: TObject);
var
   Q_Ordenes,
   Q_Item,
   Q_Movimientos,
   Q_Recursos,
   Q_pt          : TZReadOnlyQuery;
   Cantidad      : double;
   Consecutivo_2 : integer;
begin
   Q_Movimientos := TZReadOnlyQuery.Create(self);
   Q_Movimientos.Connection := connection.zConnection;

   Q_Recursos := TZReadOnlyQuery.Create(self);
   Q_Recursos.Connection := connection.zConnection;

   Q_pt := TZReadOnlyQuery.Create(self);
   Q_pt.Connection := connection.zConnection;

   Q_Ordenes := TZReadOnlyQuery.Create(self);
   Q_Ordenes.Connection := connection.zConnection;

   Q_Item := TZReadOnlyQuery.Create(self);
   Q_Item.Connection := connection.zConnection;

   {Primero buscamos el consecutivo..}
   Q_Item.Active := False;
   Q_Item.SQL.Clear;
   Q_Item.SQL.Add('select MAX(iConsecutivo) as Consecutivo from estimacion_orden order by iConsecutivo ');
   Q_Item.Open;

   if Q_item.RecordCount > 0 then
   begin
      try
        Consecutivo := Q_Item.FieldValues['Consecutivo'] + 1
      Except
           Consecutivo := 1;
      end;
   end;

   try
      {Ahora buscamos si existe una Subestimacion}
      Q_Item.Active := False;
      Q_Item.SQL.Clear;
      Q_Item.SQL.Add('select max(iNumeroEstimacionSub) as Numero from estimacion_orden where sContrato =:Contrato and iNumeroEstimacion =:Estimacion order by iConsecutivo ');
      Q_Item.ParamByName('Contrato').AsString   := tsOrdenes.Text;
      Q_Item.ParamByName('Estimacion').AsString := tNumeroEstimacion.Text;
      Q_Item.Open;

      if Q_item.RecordCount > 0 then
      begin
          try
              sNumeroSub := IntToStr( StrToInt(Q_Item.FieldValues['Numero']) + 1 );
          Except
              sNumeroSub := '1';
          end;
      end;

      {Primero Guardamos los Datos de la Orden / Anexo...}
      Q_Ordenes.Active := False;
      Q_Ordenes.SQL.Clear;
      Q_Ordenes.SQL.Add('select * from estimacion_orden where iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sContrato =:Contrato ');
      Q_Ordenes.ParamByName('Estimacion').AsString    := tNumeroEstimacion.Text;
      Q_Ordenes.ParamByName('EstimacionSub').AsString := sNumeroSub;
      Q_Ordenes.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
      Q_Ordenes.ParamByName('Contrato').AsString      := tsOrdenes.Text;
      Q_Ordenes.Open;

      if Q_Ordenes.RecordCount > 0 then
      begin
           messageDLG('La Estimacion '+tNumeroEstimacion.Text +'.'+sNumeroSub+'del Anexo/Orden '+tsOrdenes.Text+' ya Existe!', mtInformation, [mbOk], 0);
           exit;
      end;

      Q_Ordenes.Active := False;
      Q_Ordenes.SQL.Clear;
      Q_Ordenes.SQL.Add('insert into estimacion_orden (iNumeroEstimacion,iNumeroEstimacionSub,sIdTipoEstimacion,sContrato,iConsecutivo,sIdConvenio,dFechaInicio_Convenio,dFechaFinal_Convenio,dFechaInicio,dFechaFinal,lStatus,sIdUsuario,mComentarios) '+
                     'values(:Estimacion,:EstimacionSub,:Tipo,:Contrato,:Id,:Convenio,:FIConvenio,:FFConvenio,:FI,:FF,:status,:usuario,"*")');
      Q_Ordenes.ParamByName('Estimacion').AsString    := frmEstimacionGeneral.EstimacionGeneral.FieldValues['iNumeroEstimacion'];
      Q_Ordenes.ParamByName('EstimacionSub').AsString := sNumeroSub;
      Q_Ordenes.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
      Q_Ordenes.ParamByName('Contrato').AsString      := tsOrdenes.Text;
      Q_Ordenes.ParamByName('Id').AsInteger           := Consecutivo;
      Q_Ordenes.ParamByName('Convenio').AsString      := rxEstimaciones.FieldValues['sIdConvenio'];
      Q_Ordenes.ParamByName('FIConvenio').AsDate      := rxEstimaciones.FieldValues['dFechaInicio'];
      Q_Ordenes.ParamByName('FFConvenio').AsDate      := rxEstimaciones.FieldValues['dFechaFinal'];
      Q_Ordenes.ParamByName('FI').AsDate              := tFecha_I.Date;
      Q_Ordenes.ParamByName('FF').AsDate              := tFecha_F.Date;
      Q_Ordenes.ParamByName('status').AsString        := 'Pendiente';
      Q_Ordenes.ParamByName('usuario').AsString       := global_usuario;
      Q_Ordenes.ExecSQL;

      {Ahora vamos a obtener el consecutivo para los recuros..}
      Q_Item.Active := False;
      Q_Item.SQL.Clear;
      Q_Item.SQL.Add('select MAX(iConsecutivo) as Consecutivo from estimacion_actividades order by iConsecutivo ');
      Q_Item.Open;

      if Q_item.RecordCount > 0 then
      begin
        try
           Consecutivo := Q_Item.FieldValues['Consecutivo'] + 1
        Except
           Consecutivo := 1;
        end;
      end;

      {Ahora buscamos los recursos seleccionados.. Continuamos con personal, equipo y pernoctas...}
      if tsOrdenes.Text <> '' then
      begin
          {Ahora buscamos los recursos seleccionados.. de la estimacion Restante..}
          Q_Recursos.Active := False;
          Q_Recursos.SQL.Clear;
          Q_Recursos.SQL.Add('select * from estimacion_actividades '+
                             'where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub =:EstimacionSub '+
                             'and sIdTipoEstimacion =:Tipo ') ;
          Q_Recursos.ParamByName('Contrato').AsString      := rxEstimaciones.FieldValues['sContrato'];
          Q_Recursos.ParamByName('Estimacion').AsString    := rxEstimaciones.FieldValues['iNumeroEstimacion'];
          Q_Recursos.ParamByName('EstimacionSub').AsString := rxEstimaciones.FieldValues['iNumeroEstimacionSub'];
          Q_Recursos.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];;
          Q_Recursos.Open;

          while Not Q_Recursos.Eof do
          begin
              if Q_Recursos.FieldValues['dCantidadRestante'] > 0 then
              begin
                 Cantidad      := Q_Recursos.FieldValues['dCantidadRestante'];
                 Consecutivo_2 := Q_Recursos.FieldValues['iConsecutivo']
              end
              else
              begin
                 Cantidad      := 0;
                 Consecutivo_2 := 0;
              end;

              {Lamamos funcion para insertar datos...}
              InsertaDatos(Q_Recursos.FieldValues['sAnexo'],
                           Q_Recursos.FieldValues['sWbs'],
                           Q_Recursos.FieldValues['sWbsAnterior'],
                           Q_Recursos.FieldValues['sNumeroActividad'],
                           Q_Recursos.FieldValues['iItemOrden'],
                           Q_Recursos.FieldValues['mDescripcion'],
                           Q_Recursos.FieldValues['sMedida'],sNumeroSub,
                           Q_Recursos.FieldValues['iOrden'],
                           Consecutivo_2,
                           Q_Recursos.FieldValues['dCostoMN'],
                           Q_Recursos.FieldValues['dCostoDLL'],
                           Q_Recursos.FieldValues['dVentaMN'],
                           Q_Recursos.FieldValues['dVentaDLL'],
                           Q_Recursos.FieldValues['dCantidadAnexo'],
                           Cantidad);

              if Cantidad > 0 then
              begin
                  {Dejamos en Cero las Cantidades Restantes.. para que el usuario determine si cobra todo o no..}
                  Q_Movimientos.Active;
                  Q_Movimientos.SQL.Clear;
                  Q_Movimientos.SQL.Add('Update estimacion_actividades set dCantidadRestante = 0 where sContrato =:Contrato and iNumeroEstimacion =:Estimacion '+
                                        'and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sAnexo =:Anexo and sWbs =:Wbs and sNumeroActividad =:Actividad and sTipoActividad  ="Actividad"');
                  Q_Movimientos.ParamByName('Contrato').AsString      := rxEstimaciones.FieldValues['sContrato'];
                  Q_Movimientos.ParamByName('Estimacion').AsString    := rxEstimaciones.FieldValues['iNumeroEstimacion'];
                  Q_Movimientos.ParamByName('EstimacionSub').AsString := rxEstimaciones.FieldValues['iNumeroEstimacionSub'];
                  Q_Movimientos.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];;
                  Q_Movimientos.ParamByName('Anexo').AsString         := Q_Recursos.FieldValues['sAnexo'];
                  Q_Movimientos.ParamByName('Wbs').AsString           := Q_Recursos.FieldValues['sWbs'];
                  Q_Movimientos.ParamByName('Actividad').AsString     := Q_Recursos.FieldValues['sNumeroActividad'];
                  Q_Movimientos.ExecSQL;
              end;
              Q_Recursos.Next;
          end;
      end;
      {Lamamos funcion de copiar datos no existentes en estimacion actual..}
      InsertaAcumulados(tNumeroEstimacion.Text, '', frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'], Consecutivo);

      tsOrdenes.OnExit(sender);
      MessageDLG('Los Datos se Guardaron Correctamente!', mtInformation, [mbOk], 0);

      frmEstimacionGeneral.EstimacionGeneral.Refresh;
   Except
      MessageDLG('Ocurrio un error al Guardar informacion!', mtWarning, [mbOk], 0);
   end;

end;

procedure TfrmEstimacionAnterior.FormShow(Sender: TObject);
begin
    OrdenesAnexos.Active;
    OrdenesAnexos.ParamByName('Contrato').AsString := global_contrato_barco;
    OrdenesAnexos.Open;

    if OrdenesAnexos.RecordCount = 0 then
       messageDLG('No existe un código principal para las Ordenes / Anexos registradas!', mtInformation, [mbOk], 0);

    tFecha_I.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaInicio'];
    tFecha_F.Date          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['dFechaFinal'];
    tNumeroEstimacion.Text := frmEstimacionGeneral.EstimacionGeneral.FieldValues['iNumeroEstimacion'];
    lblTipo.Caption        := frmEstimacionGeneral.EstimacionGeneralsDescripcion.Text;
    tsOrdenes.SetFocus;
end;

procedure TfrmEstimacionAnterior.tsOrdenesExit(Sender: TObject);
var
    Q_Datos,
    Q_Estimaciones,
    Q_Montos : TZReadOnlyQuery;
begin
    if tsOrdenes.KeyValue = Null then
        messageDLG('Seleccione un Anexo / Orden !', mtInformation, [mbOk], 0)
    else
    begin
        rxEstimaciones.Open;
        rxEstimaciones.EmptyTable;

        Q_Datos := TZReadOnlyQuery.Create(self);
        Q_Datos.Connection := connection.zConnection;

        Q_Montos := TZReadOnlyQuery.Create(self);
        Q_Montos.Connection := connection.zConnection;

        Q_Estimaciones := TZReadOnlyQuery.Create(self);
        Q_Estimaciones.Connection := connection.zConnection;

        Q_Estimaciones.Active := False;
        Q_Estimaciones.SQL.Clear;
        Q_Estimaciones.SQL.Add('select * from estimacion_orden where sContrato =:Contrato and iNumeroEstimacionSub ="" order by iConsecutivo ');
        Q_Estimaciones.ParamByName('Contrato').AsString := tsOrdenes.Text;
        Q_Estimaciones.Open;

        while not Q_Estimaciones.Eof do
        begin
            {Checamos si existen Cantidades Restantes por cobrar..}
            Q_Montos.Active := False;
            Q_Montos.SQL.Clear;
            Q_Montos.SQL.Add('select sum(dCantidadRestante)* dVentaMN as RestanteMN, sum(dCantidadRestante)* dVentaDLL as RestanteDLL, '+
                             'sum(dCantidadExcedente)* dVentaMN as AdicionalMN, sum(dCantidadExcedente)* dVentaDLL as AdicionalDLL '+
                             'from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacion =:Estimacion and iNumeroEstimacionSub = "" '+
                             'and sIdTipoEstimacion =:Tipo and dCantidadRestante > 0 group by sContrato ');
            Q_Montos.ParamByName('Contrato').AsString   := Q_Estimaciones.FieldValues['sContrato'];
            Q_Montos.ParamByName('Estimacion').AsString := Q_Estimaciones.FieldValues['iNumeroEstimacion'];
            Q_Montos.ParamByName('Tipo').AsString       := Q_Estimaciones.FieldValues['sIdTipoEstimacion'];
            Q_Montos.Open;

            if Q_Montos.RecordCount > 0 then
            begin
                rxEstimaciones.Append;
                rxEstimaciones.FieldValues['sContrato']            := Q_Estimaciones.FieldValues['sContrato'];
                rxEstimaciones.FieldValues['iNumeroEstimacion']    := Q_Estimaciones.FieldValues['iNumeroEstimacion'];
                rxEstimaciones.FieldValues['iNumeroEstimacionSub'] := ' ';
                rxEstimaciones.FieldValues['PendienteMN']          := Q_Montos.FieldValues['RestanteMN'];
                rxEstimaciones.FieldValues['PendienteDLL']         := Q_Montos.FieldValues['RestanteDLL'];
                rxEstimaciones.FieldValues['AdicionalMN']          := Q_Montos.FieldValues['AdicionalMN'];
                rxEstimaciones.FieldValues['AdicionalDLL']         := Q_Montos.FieldValues['AdicionalDLL'];
                rxEstimaciones.FieldValues['dFechaInicio']         := Q_Estimaciones.FieldValues['dFechaInicio'];
                rxEstimaciones.FieldValues['dFechaFinal']          := Q_Estimaciones.FieldValues['dFechaFinal'];
                if Q_Estimaciones.FieldValues['sIdConvenio'] = '' then
                   rxEstimaciones.FieldValues['sIdConvenio']       := ' '
                else
                   rxEstimaciones.FieldValues['sIdConvenio']       := Q_Estimaciones.FieldValues['sIdConvenio'];
                rxEstimaciones.FieldValues['sIdTipo']              := Q_Estimaciones.FieldValues['sIdTipoEstimacion'];

                {Tipo de Estimacion..}
                Q_Datos.Active := False;
                Q_Datos.SQL.Clear;
                Q_Datos.SQL.Add('Select sDescripcion From tiposdeestimacion Where sIdTipoEstimacion = :Tipo');
                Q_Datos.ParamByName('Tipo').AsString := Q_Estimaciones.FieldValues['sIdTipoEstimacion'];
                Q_Datos.Open;

                if Q_Datos.RecordCount > 0 then
                   rxEstimaciones.FieldValues['sIdTipoEstimacion'] := Q_Datos.FieldValues['sDescripcion'];
                rxEstimaciones.Post;
            end;
            Q_Estimaciones.Next;
        end;
        rxEstimaciones.Refresh;
        Q_Datos.Destroy;
        Q_Montos.Destroy;
        Q_Estimaciones.Destroy;
        DBGrid_convenios.SetFocus;
    end;
end;

procedure TfrmEstimacionAnterior.InsertaDatos(paramAnexo: string; paramWbs: string; paramWbsAnt: string; paramActividad: string; paramItem: string; paramDescripcion: string; paramMedida: string; paramEstimacionSub: string; paramiOrden: Integer; paramiOrigen: Integer; paramCostoMN: Double; paramCostoDLL: Double; paramVentaMN: Double; paramVentaDLL: Double; paramCantAnexo: Double; paramCantidad: Double);
var
    cadena     : string;
    Q_Insertar : TZReadOnlyQuery;
begin
      Q_Insertar := TZReadOnlyQuery.Create(self);
      Q_Insertar.Connection := connection.zConnection;

      {Aqui se Guardan los datos de los recursos seleccionados...}
      Q_Insertar.Active := False;
      Q_Insertar.SQL.Clear;
      Q_Insertar.SQL.Add('insert into estimacion_actividades (sContrato,iNumeroEstimacion,iNumeroEstimacionSub,sIdTipoEstimacion,iConsecutivo,sAnexo,iOrden,iOrigen,sWbs,sWbsAnterior,sNumeroActividad,iItemOrden,mDescripcion,dCostoMN,'+
                         'dCostoDLL,dVentaMN,dVentaDLL,dCantidadAnexo,sMedida,dCantidad,dCantidadPT) '+
                         'values(:Contrato,:Estimacion,:EstimacionSub,:Tipo,:Consecutivo,:Anexo,:Orden,:Origen,:Wbs,:WbsA,:Actividad,:Item,:Descripcion,:CostoMN,:CostoDLL,:VentaMN,:VentaDLL,'+
                         ':Cantidad_A,:Medida,:Cantidad,:CantidadPT)');
      Q_Insertar.ParamByName('Contrato').AsString      := tsOrdenes.Text;
      Q_Insertar.ParamByName('Estimacion').AsString    := tNumeroEstimacion.Text;
      Q_Insertar.ParamByName('EstimacionSub').AsString := paramEstimacionSub;
      Q_Insertar.ParamByName('Tipo').AsString          := frmEstimacionGeneral.EstimacionGeneral.FieldValues['sIdTipoEstimacion'];
      Q_Insertar.ParamByName('Consecutivo').AsInteger  := Consecutivo;
      Q_Insertar.ParamByName('Anexo').AsString         := paramAnexo;
      Q_Insertar.ParamByName('Wbs').AsString           := paramWbs;
      Q_Insertar.ParamByName('WbsA').AsString          := paramWbsAnt;
      Q_Insertar.ParamByName('Actividad').AsString     := paramActividad;
      Q_Insertar.ParamByName('Item').AsString          := paramItem;
      Q_Insertar.ParamByName('Orden').AsInteger        := paramiOrden;
      Q_Insertar.ParamByName('Origen').AsInteger       := paramiOrigen;
      Q_Insertar.ParamByName('Descripcion').AsString   := paramDescripcion;
      Q_Insertar.ParamByName('CostoMN').AsFloat        := paramCostoMN;
      Q_Insertar.ParamByName('CostoDLL').AsFloat       := paramCostoDLL;
      Q_Insertar.ParamByName('VentaMN').Asfloat        := paramVentaMN;
      Q_Insertar.ParamByName('VentaDLL').AsFloat       := paramVentaDLL;
      Q_Insertar.ParamByName('Cantidad_A').AsFloat     := paramCantAnexo;
      Q_Insertar.ParamByName('Medida').AsString        := paramMedida;
      Q_Insertar.ParamByName('Cantidad').AsFloat       := paramCantidad;
      Q_Insertar.ParamByName('CantidadPT').AsFloat     := paramCantidad;
      Q_Insertar.ExecSQL;
end;

procedure TfrmEstimacionAnterior.InsertaAcumulados(dParamEstimacion: string; dParamEstimacionSub: string; dParamTipo: string; dParamConsecutivo: Integer);
var
     Q_Buscar,
     Q_Item,
     Q_Actualizar  : TZReadOnlyQuery;
     Consecutivo_2  : integer;
begin
     Q_Buscar := TZReadOnlyQuery.Create(self);
     Q_Buscar.Connection := connection.zConnection;

     Q_Item := TZReadOnlyQuery.Create(self);
     Q_Item.Connection := connection.zConnection;

     Q_Actualizar := TZReadOnlyQuery.Create(self);
     Q_Actualizar.Connection := connection.zConnection;

     {Primero sacamos el ultimo consecutivo anterior}
     Q_Item.Active := False;
     Q_Item.SQL.Clear;
     Q_Item.SQL.Add('select MAX(iConsecutivo) as Consecutivo from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacionSub = "" and iConsecutivo < :Consecutivo group by sContrato ');
     Q_Item.ParamByName('Contrato').AsString     := tsOrdenes.Text;
     Q_Item.ParamByName('Consecutivo').AsInteger := dParamConsecutivo;
     Q_Item.Open;

     if Q_item.RecordCount > 0 then
        Consecutivo_2 := Q_Item.FieldValues['Consecutivo']
     else
        Consecutivo_2 := 0;

     {Iniciamos buscando la estimación anterior}
     Q_Buscar.Active;
     Q_Buscar.SQL.Clear;
     Q_Buscar.SQL.Add('select * from estimacion_actividades where sContrato =:Contrato and iConsecutivo = :Consecutivo');
     Q_Buscar.ParamByName('Contrato').AsString     := tsOrdenes.Text;
     Q_Buscar.ParamByName('Consecutivo').AsInteger := Consecutivo_2;
     Q_Buscar.Open;

     while not Q_Buscar.Eof do
     begin
         {Buscamos los recursos de la estimacion, sino existen se insertan..}
         Q_Actualizar.Active;
         Q_Actualizar.SQL.Clear;
         Q_Actualizar.SQL.Add('select * from estimacion_actividades where sContrato =:Contrato and iNumeroEstimacion =:Estimacion '+
                              'and iNumeroEstimacionSub =:EstimacionSub and sIdTipoEstimacion =:Tipo and sAnexo =:Anexo and sWbs =:Wbs '+
                              'and sNumeroActividad =:Actividad and sTipoActividad =:TipoActividad ');
         Q_Actualizar.ParamByName('Contrato').AsString      := tsOrdenes.Text;
         Q_Actualizar.ParamByName('Estimacion').AsString    := dParamEstimacion;
         Q_Actualizar.ParamByName('EstimacionSub').AsString := sNumeroSub;
         Q_Actualizar.ParamByName('Tipo').AsString          := dParamTipo;
         Q_Actualizar.ParamByName('Anexo').AsString         := Q_Buscar.FieldValues['sAnexo'];
         Q_Actualizar.ParamByName('Wbs').AsString           := Q_Buscar.FieldValues['sWbs'];
         Q_Actualizar.ParamByName('Actividad').AsString     := Q_Buscar.FieldValues['sNumeroActividad'];
         Q_Actualizar.ParamByName('TipoActividad').AsString := Q_Buscar.FieldValues['sTipoActividad'];
         Q_Actualizar.Open;

         if Q_Actualizar.RecordCount = 0 then
         begin
              try
              {Llamamos funcion para insertar datos...}
              InsertaDatos(Q_Buscar.FieldValues['sAnexo'],
                           Q_Buscar.FieldValues['sWbs'],
                           Q_Buscar.FieldValues['sWbsAnterior'],
                           Q_Buscar.FieldValues['sNumeroActividad'],
                           Q_Buscar.FieldValues['iItemOrden'],
                           Q_Buscar.FieldValues['mDescripcion'],
                           Q_Buscar.FieldValues['sMedida'], sNumeroSub,
                           Q_Buscar.FieldValues['iOrden'], 0,
                           Q_Buscar.FieldValues['dCostoMN'],
                           Q_Buscar.FieldValues['dCostoDLL'],
                           Q_Buscar.FieldValues['dVentaMN'],
                           Q_Buscar.FieldValues['dVentaDLL'],
                           Q_Buscar.FieldValues['dCantidadAnexo'],
                           0);
              Except
                  //No hace  nada continua con la insercion de datos..
              end;

         end;
         Q_Buscar.Next;
     end;

end;

end.
