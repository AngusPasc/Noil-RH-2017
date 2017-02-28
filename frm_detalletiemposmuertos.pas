unit frm_detalletiemposmuertos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, db, Menus, OleCtrls,
  frxClass, frxDBSet, Buttons,  utilerias,
  ZAbstractRODataset, ZDataset, ZAbstractDataset, Newpanel, strUtils,
  rxToolEdit, rxCurrEdit, sSkinProvider, ZConnection, RxMemDS;

type
  Tfrmdetallestiemposmuertos = class(TForm)
    sSkinProvider1: TsSkinProvider;
    btnExit: TBitBtn;
    QOperacion: TZQuery;
    DTMPE: TDataSource;
    QTMPE: TZQuery;
    ds_personalEquipo: TDataSource;
    QDatos: TZQuery;
    grupLista: TGroupBox;
    DBGDatos: TDBGrid;
    grupAfectado: TGroupBox;
    DBGCargados: TDBGrid;
    btnAsigna: TBitBtn;
    btnDenegar: TBitBtn;
    grupOpcion: TGroupBox;
    RBtnPersonal: TRadioButton;
    RBtnEquipo: TRadioButton;
    lblTotal: TLabel;
    tTotalAfectado: TEdit;
    grupCantidad: TGroupBox;
    Label3: TLabel;
    cmdAceptar: TButton;
    cmdCancelar: TButton;
    tsCantidad: TEdit;
    Label1: TLabel;
    tsCantidadAfectada: TEdit;
    PopupAfectacion: TPopupMenu;
    CargarPersonalyEquipodeAfectacionAnterior1: TMenuItem;
    RxPersonalEquipo: TRxMemoryData;
    RxPersonalEquiposIdRecurso: TStringField;
    RxPersonalEquipodCantidad: TFloatField;
    RxPersonalEquipoDescripcion: TStringField;
    ds_datos: TDataSource;
    cmdAplicar: TBitBtn;
    EliminarPersonalEquipo: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure cargar;
    procedure cargados;
    procedure DBCMBContratosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RBtnEquipoClick(Sender: TObject);
    procedure RBtnPersonalClick(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure cmdAceptarClick(Sender: TObject);
    procedure RxPersonalEquipodCantidadChange(Sender: TField);
    procedure cmdAplicarClick(Sender: TObject);
    procedure CargarPersonalyEquipodeAfectacionAnterior1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmdetallestiemposmuertos     : Tfrmdetallestiemposmuertos;
   sGrupo               : String ;
   sOpcion, tipo, campo : String ;
   qryAnexo             : TZReadOnlyQuery;
   qryAgregar           : TzQuery ;
   tabla                : string;
   sql                  : String;
   totalPE              : integer;

implementation

uses
    frm_JornadasDiarias;

{$R *.dfm}

procedure Tfrmdetallestiemposmuertos.btnAsignaClick(Sender: TObject);
begin
      grupCantidad.Visible := True;
      grupCantidad.Caption := tipo;
      tsCantidad.SetFocus;
end;


procedure Tfrmdetallestiemposmuertos.btnDenegarClick(Sender: TObject);
begin
    //PROCEDIMIENTO PARA ELIMINAR DATOS ALMACENADOS EN LA NUEVA TABLA TIEMPOMUERTOPE
    If rbtnpersonal.Checked then
      tipo:='Personal'
    else
      tipo:='Equipo';
    sql:='delete from tiempomuertopersonal where sContrato=:CONT and dIdFecha =:Fecha and sNumeroOrden =:Frente '+
         'and sIdTurno =:Turno and sHoraInicio =:Hora and sIdPersonalEquipo =:Id and sTipo =:Tipo';
    QOperacion.SQL.Text:=sql;
    QOperacion.ParamByName('CONT').AsString   := param_Global_Contrato ;
    QOperacion.ParamByName('Fecha').AsDate    := frmJornadasDiarias.tdIdFecha.Date ;
    QOperacion.ParamByName('Frente').AsString := frmJornadasDiarias.tsNumeroOrden.Text;
    QOperacion.ParamByName('Turno').AsString  := global_turno_reporte ;
    QOperacion.ParamByName('Id').AsString     := DBGCargados.Fields[2].Text;
    QOperacion.ParamByName('Hora').AsString   := frmJornadasDiarias.tsHoraInicio.Text;
    QOperacion.ParamByName('Tipo').AsString   := tipo;
    QOperacion.ExecSQL;
    cargados;
end;

procedure Tfrmdetallestiemposmuertos.btnExitClick(Sender: TObject);
begin
   if cmdAplicar.Visible = False then
      close
   else
      messageDLG('No ha Aplicado Cambios!', mtInformation, [mbOk], 0);
end;

procedure Tfrmdetallestiemposmuertos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if cmdAplicar.Visible = False then
      action := cafree
   else
   begin
       connection.zCommand.Active := False;
       connection.zCommand.SQL.Clear;
       connection.zCommand.SQL.Add('Update tiempomuertopersonal set dCantidad = 0 where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sHoraInicio =:Hora and sTipo = "Personal" ');
       connection.zCommand.ParamByName('Contrato').AsString  := param_global_contrato;
       connection.zCommand.ParamByName('Fecha').AsDate       := frmJornadasDiarias.tdIdFecha.Date;
       connection.zCommand.ParamByName('Orden').AsString     := frmJornadasDiarias.tsNumeroOrden.Text;
       connection.zCommand.ParamByName('Turno').AsString     := global_turno_reporte;
       connection.zCommand.ParamByName('Hora').AsString      := frmJornadasDiarias.tsHoraInicio.Text;
       connection.zCommand.ExecSQL;
       messageDLG('No Aplicó Cambios!', mtInformation, [mbOk], 0);
   end;
end;


procedure Tfrmdetallestiemposmuertos.FormShow(Sender: TObject);
begin
   grupLista.Caption       := 'Listado de Personal';
   grupAfectado.Caption    := 'Personal Afectado' ;
   tsCantidadAfectada.Text := currTostr(frmJornadasDiarias.tdFrente.Value);
   Cargar   ;
   Cargados ;
end;

procedure Tfrmdetallestiemposmuertos.RBtnEquipoClick(Sender: TObject);
begin
    if cmdAplicar.Visible = False then
    begin
        cargar ;
        grupLista.Caption    := 'Listado de Equipo';
        grupAfectado.Caption := 'Equipo Utilizado' ;
        cargados  ;
    end
    else
    begin
        messageDLG('Debe Ajustar la Cantidad de Personal Afectado!', mtInformation, [mbOk], 0);
        rbtnPersonal.Checked := true;
        grupLista.Caption    := 'Listado de Personal';
        grupAfectado.Caption := 'Personal Afectado' ;
        cargados;
    end;
end;

procedure Tfrmdetallestiemposmuertos.RBtnPersonalClick(Sender: TObject);
begin
   cargar ;
   grupLista.Caption      := 'Listado de Personal';
   grupAfectado.Caption   := 'Personal Afectado' ;
   //lblTotal.Visible       := True;
   //tTotalAfectado.Visible := True;
   cargados  ;
end;

procedure Tfrmdetallestiemposmuertos.RxPersonalEquipodCantidadChange(
  Sender: TField);
begin
    cmdAplicar.Visible := True;
end;

procedure Tfrmdetallestiemposmuertos.DBCMBContratosClick(Sender: TObject);
begin
   cargar    ;
   cargados  ;
end;



procedure TfrmDetallestiemposmuertos.cargar;
begin                      //MUESTRA EL PERSONAL Y EQUIPO DISPONIBLE PARA ESE CONTRATO

   if rbtnpersonal.Checked then
   begin
      tabla:='personal'  ;
      campo:='sIdPersonal';
   end else
      begin
        tabla:='equipos';
        campo:='sIdEquipo';
      end;
   QDatos.Active := False;
   QDatos.SQL.Clear;
   QDatos.SQL.Add('select '+ campo +' as Id , sDescripcion as Descripcion ' + 'from '+ tabla + ' where sContrato= :Contrato Order by sDescripcion ');
   QDatos.ParamByName('Contrato').AsString := param_Global_Contrato ;
   QDatos.Open;
   DBGDatos.Columns[0].Visible:=false;
   totalPE := QDatos.RecordCount;
end;

procedure Tfrmdetallestiemposmuertos.CargarPersonalyEquipodeAfectacionAnterior1Click(
  Sender: TObject);
var
   suma : integer;
begin
    //Primero buscamos si existe un tiempo inactivo anterior a esta Afectación.
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select max(sHoraInicio) as sHoraInicio from tiempomuertopersonal where sContrato =:Contrato '+
                                'and dIdFecha =:fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sHoraInicio < :Hora Group by sContrato ');
    connection.QryBusca2.ParamByName('Contrato').AsString  := param_global_contrato;
    connection.QryBusca2.ParamByName('Fecha').AsDate       := frmJornadasDiarias.tdIdFecha.Date;
    connection.QryBusca2.ParamByName('Orden').AsString     := frmJornadasDiarias.tsNumeroOrden.Text;
    connection.QryBusca2.ParamByName('Turno').AsString     := global_turno_reporte;
    connection.QryBusca2.ParamByName('Hora').AsString      := frmJornadasDiarias.tsHoraInicio.Text;
    connection.QryBusca2.Open;

    if connection.QryBusca2.RecordCount > 0 then
    begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select * from tiempomuertopersonal where sContrato =:Contrato '+
                                    'and dIdFecha =:fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sHoraInicio = :Hora ');
        connection.zCommand.ParamByName('Contrato').AsString  := param_global_contrato;
        connection.zCommand.ParamByName('Fecha').AsDate       := frmJornadasDiarias.tdIdFecha.Date;
        connection.zCommand.ParamByName('Orden').AsString     := frmJornadasDiarias.tsNumeroOrden.Text;
        connection.zCommand.ParamByName('Turno').AsString     := global_turno_reporte;
        connection.zCommand.ParamByName('Hora').AsString      := connection.QryBusca2.FieldValues['sHoraInicio'];
        connection.zCommand.Open;

        while not connection.zCommand.Eof do
        begin
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('insert into tiempomuertopersonal (sContrato, dIdFecha, sNumeroOrden, sIdTurno, sIdPersonalEquipo, dCantidad, sHoraInicio, sTipo) '+
                                       'values(:Contrato, :fecha, :Orden, :Turno, :Id, :Cantidad, :Hora, :tipo)' );
            connection.QryBusca.ParamByName('Contrato').AsString := param_global_contrato;
            connection.QryBusca.ParamByName('Fecha').AsDate      := frmJornadasDiarias.tdIdFecha.Date;
            connection.QryBusca.ParamByName('Orden').AsString    := frmJornadasDiarias.tsNumeroOrden.Text;
            connection.QryBusca.ParamByName('Turno').AsString    := global_turno_reporte;
            connection.QryBusca.ParamByName('Id').AsString       := connection.zCommand.FieldValues['sIdPersonalEquipo'];
            connection.QryBusca.ParamByName('Cantidad').AsFloat  := connection.zCommand.FieldValues['dCantidad'];
            connection.QryBusca.ParamByName('Hora').AsString     := frmJornadasDiarias.tsHoraInicio.Text;
            connection.QryBusca.ParamByName('tipo').AsString     := connection.zCommand.FieldValues['sTipo'];
            connection.QryBusca.ExecSQL;
            connection.zCommand.Next;
        end;

        //Aqui direccionamos los Datos para comparar el personal..
        rbtnPersonal.Checked := true;
        grupLista.Caption    := 'Listado de Personal';
        grupAfectado.Caption := 'Personal Afectado' ;
        cargados;

        if tipo = 'Personal' then
        begin
            suma := 0;
            rxPersonalEquipo.First;
            while not rxPersonalEquipo.Eof do
            begin
                suma := suma + rxPersonalEquipo.FieldValues['dCantidad'];
                rxPersonalEquipo.Next;
            end;

            tTotalAfectado.Text := IntToStr(suma);

            if (strToint(tTotalAfectado.Text) > strToInt(tsCantidadAfectada.Text)) then
            begin
                cmdAplicar.Visible := True;
                MessageDLG('La Cantidad de Personal ( '+IntToStr(suma)+' ) es mayor a la Cantidad Afectada ( '+tsCantidadAfectada.Text +' ) '+#13+'Favor de Verificar !',mtWarning, [mbOk], 0);
                tsCantidad.Text := '0';
                DBGCargados.SetFocus;
                exit;
            end;
        end;
    end
    else
       messageDlG('No existen Afectaciones Anteriores!', mtInformation, [mbOk], 0);

end;

procedure Tfrmdetallestiemposmuertos.cmdAceptarClick(Sender: TObject);
Var
  x,aux,suma  :integer;
begin
  //AQUI SE VALIDAN CAMPOS PARA EVITAR ERRORES
  if (totalPE > 0) and (DBGDatos.Fields[1].Text <> '') then
  begin
    try
      x := StrToInt(tsCantidad.Text);
      if x > 0  then
      begin
        try
          if tipo = 'Personal' then
             if (strToint(tsCantidad.Text) + strToint(tTotalAfectado.Text)) > strToInt(tsCantidadAfectada.Text) then
             begin
                 suma := (strToint(tsCantidad.Text) + strToint(tTotalAfectado.Text));
                 MessageDLG('La Cantidad de Personal ( '+IntToStr(suma)+' ) es mayor a la Cantidad Afectada ( '+tsCantidadAfectada.Text +' ) '+#13+'Favor de Verificar !',mtWarning, [mbOk], 0);
                 tsCantidad.Text := '0';
                 tsCantidad.SetFocus;
                 exit;
             end;

          //AQUI SE INSERTAN LOS DATOS A LA TABLA
          sql:='Insert into tiempomuertopersonal (sContrato, dIdFecha, sNumeroOrden, sIdTurno, sIdPersonalEquipo, dCantidad, sHoraInicio, sTipo) '+
               'values(:CONT,:Fecha,:Frente,:Turno,:Id,:Cantidad,:Hora,:Tipo) ';
          QOperacion.SQL.Text:=sql;
          QOperacion.ParamByName('CONT').AsString      := param_global_Contrato;
          QOperacion.ParamByName('Fecha').AsDate       := frmJornadasDiarias.tdIdFecha.Date ;
          QOperacion.ParamByName('Frente').AsString    := frmJornadasDiarias.tsNumeroOrden.Text;
          QOperacion.ParamByName('Turno').AsString     := global_turno_reporte ;
          QOperacion.ParamByName('Id').AsString        := DBGDatos.Fields[0].Text;
          QOperacion.ParamByName('Cantidad').AsInteger := StrToInt(tsCantidad.Text);
          QOperacion.ParamByName('Hora').AsString      := frmJornadasDiarias.tsHoraInicio.Text;
          QOperacion.ParamByName('Tipo').AsString      := tipo;
          QOperacion.ExecSQL ;
          cargados;
          DBGDatos.DataSource.DataSet.Next;
        except
          on E:exception do
            if e.ClassName='EZSQLException' then      // SI HAY DUPLICIDAD DE LLAVE PRIMARIA
            begin                                     //ENTONCES SE MODIFICA SOLO LA CANTIDAD
               sql:='select dCantidad from tiempomuertopersonal where sContrato=:CONT and dIdFecha =:Fecha and sNumeroOrden =:Frente '+
                    'and sIdTurno =:Turno and sHoraInicio =:Hora and sIdPersonalEquipo =:Id and sTipo =:Tipo';
               QOperacion.SQL.Text:=sql;
               QOperacion.ParamByName('CONT').AsString   := param_Global_Contrato ;
               QOperacion.ParamByName('Fecha').AsDate    := frmJornadasDiarias.tdIdFecha.Date   ;
               QOperacion.ParamByName('Frente').AsString := frmJornadasDiarias.tsNumeroOrden.Text;
               QOperacion.ParamByName('Turno').AsString  := global_turno_reporte ;
               QOperacion.ParamByName('Id').AsString     := DBGDatos.Fields[0].Text;
               QOperacion.ParamByName('Hora').AsString   := frmJornadasDiarias.tsHoraInicio.Text;
               QOperacion.ParamByName('Tipo').AsString   := tipo;
               QOperacion.ExecSQL;
               QOperacion.Active:=true;
               if QOperacion.RecordCount > 0 then
                  aux:=StrToInt(QOperacion.FieldValues['dCantidad'])
               else
                  aux:= 0;
              if messagedlg('¿Dese Agregar la Cantidad al Registro selecionado? '+#13+'Si Escoje NO, la cantidad sera Reemplazada',mtconfirmation,[mbyes,mbno],0)=mryes then
              begin      // AQUI SE SUMA X EJEMPLO SI YA HABIAMOS PUESTO 3 SOLDADORES Y VOLVEMOS A PONER 2, ENTONCES SE PREGUNTA
                         // SI SE DESEA ACTUALIZAR ES REGISTRO, ESTO ES 3 + 2 = 5, SI DAMOS Q NO SOLO SUSTITUYE EN 3 POR EL 2
                sql:='update tiempomuertopersonal set dCantidad =:CANT where sContrato=:CONT and dIdFecha =:Fecha and sNumeroOrden =:Frente '+
                     'and sIdTurno =:Turno and sHoraInicio =:Hora and sIdPersonalEquipo =:Id and sTipo =:Tipo';
                QOperacion.SQL.Text:=sql;
                QOperacion.ParamByName('CONT').AsString   := param_Global_Contrato ;
                QOperacion.ParamByName('Fecha').AsDate    := frmJornadasDiarias.tdIdFecha.Date ;
                QOperacion.ParamByName('Frente').AsString := frmJornadasDiarias.tsNumeroOrden.Text;
                QOperacion.ParamByName('Turno').AsString  := global_turno_reporte ;
                QOperacion.ParamByName('Id').AsString     := DBGDatos.Fields[0].Text;
                QOperacion.ParamByName('Hora').AsString   := frmJornadasDiarias.tsHoraInicio.Text;
                QOperacion.ParamByName('Tipo').AsString   := tipo;
                QOperacion.ParamByName('CANT').AsInteger  := aux + x;
                QOperacion.ExecSQL;
                cargados;
                DBGDatos.DataSource.DataSet.Next;
              end else
              begin
                sql:='update tiempomuertopersonal set dCantidad =:CANT where sContrato=:CONT and dIdFecha =:Fecha and sNumeroOrden =:Frente '+
                     'and sIdTurno =:Turno and sHoraInicio =:Hora and sIdPersonalEquipo =:Id and sTipo =:Tipo';
                QOperacion.SQL.Text:=sql;
                QOperacion.ParamByName('CONT').AsString   := param_Global_Contrato ;
                QOperacion.ParamByName('Fecha').AsDate    := frmJornadasDiarias.tdIdFecha.Date;
                QOperacion.ParamByName('Frente').AsString := frmJornadasDiarias.tsNumeroOrden.Text;
                QOperacion.ParamByName('Turno').AsString  := global_turno_reporte ;
                QOperacion.ParamByName('Id').AsString     := DBGDatos.Fields[0].Text;
                QOperacion.ParamByName('Hora').AsString   := frmJornadasDiarias.tsHoraInicio.Text;
                QOperacion.ParamByName('Tipo').AsString   := tipo;
                QOperacion.ParamByName('CANT').AsInteger  := x;
                QOperacion.ExecSQL;
                cargados;
                DBGDatos.DataSource.DataSet.Next;
              end;
            end;
         end;
      end else   messagedlg('La Cantidad Debe ser Mayor a Cero',mtconfirmation,[mbok],0)

    except
      on E: EConvertError do
        messagedlg('Debe Ingresar una Cantidad Numerica',mtconfirmation,[mbok],0)
    end;

  end else messagedlg('Debe Ingresar una Cantidad',mtconfirmation,[mbok],0) ;
  grupCantidad.Visible := False;
end;

procedure Tfrmdetallestiemposmuertos.cmdAplicarClick(Sender: TObject);
var
   suma : integer;
begin
    //Recorremos el Rx para hacer la sumatoria de las cantidades de personal...
    if tipo = 'Personal' then
    begin
        suma := 0;
        rxPersonalEquipo.First;
        while not rxPersonalEquipo.Eof do
        begin
            suma := suma + rxPersonalEquipo.FieldValues['dCantidad'];
            rxPersonalEquipo.Next;
        end;

        tTotalAfectado.Text := IntToStr(suma);

        if (strToint(tTotalAfectado.Text) > strToInt(tsCantidadAfectada.Text)) then
        begin
            MessageDLG('La Cantidad de Personal ( '+IntToStr(suma)+' ) es mayor a la Cantidad Afectada ( '+tsCantidadAfectada.Text +' ) '+#13+'Favor de Verificar !',mtWarning, [mbOk], 0);
            tsCantidad.Text := '0';
            DBGCargados.SetFocus;
            exit;
        end;

        rxPersonalEquipo.First;
        while not rxPersonalEquipo.Eof do
        begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update tiempomuertopersonal set dCantidad =:Cantidad where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sIdPersonalEquipo =:Id and sHoraInicio =:Hora and sTipo = "Personal" ');
            connection.zCommand.ParamByName('Contrato').AsString  := param_global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate       := frmJornadasDiarias.tdIdFecha.Date;
            connection.zCommand.ParamByName('Orden').AsString     := frmJornadasDiarias.tsNumeroOrden.Text;
            connection.zCommand.ParamByName('Turno').AsString     := global_turno_reporte;
            connection.zCommand.ParamByName('Id').AsString        := rxPersonalEquipo.FieldValues['sIdRecurso'];
            connection.zCommand.ParamByName('Hora').AsString      := frmJornadasDiarias.tsHoraInicio.Text;
            connection.zCommand.ParamByName('Cantidad').AsInteger := rxPersonalEquipo.FieldValues['dCantidad'];
            connection.zCommand.ExecSQL;
            rxPersonalEquipo.Next;
        end;
        cmdAplicar.Visible := False;
    end;

    if tipo = 'Equipo' then
    begin
        rxPersonalEquipo.First;
        while not rxPersonalEquipo.Eof do
        begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update tiempomuertopersonal set dCantidad =:Cantidad where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno and sIdPersonalEquipo =:Id and sHoraInicio =:Hora and sTipo = "Equipo"');
            connection.zCommand.ParamByName('Contrato').AsString  := param_global_contrato;
            connection.zCommand.ParamByName('Fecha').AsDate       := frmJornadasDiarias.tdIdFecha.Date;
            connection.zCommand.ParamByName('Orden').AsString     := frmJornadasDiarias.tsNumeroOrden.Text;
            connection.zCommand.ParamByName('Turno').AsString     := global_turno_reporte;
            connection.zCommand.ParamByName('Id').AsString        := rxPersonalEquipo.FieldValues['sIdRecurso'];
            connection.zCommand.ParamByName('Hora').AsString      := frmJornadasDiarias.tsHoraInicio.Text;
            connection.zCommand.ParamByName('Cantidad').AsInteger := rxPersonalEquipo.FieldValues['dCantidad'];
            connection.zCommand.ExecSQL;
            rxPersonalEquipo.Next;
        end;
        cmdAplicar.Visible := False;
    end;
end;

procedure Tfrmdetallestiemposmuertos.cmdCancelarClick(Sender: TObject);
begin
      grupCantidad.Visible := False;
end;

procedure TfrmDetallestiemposmuertos.cargados;
begin                       //MUESTRA TODOS LOS REGISTROS CARGADOS A DETERMINADO CONTRATO, YA SEA
                            // POR EQUIPO O PERSONAL
   if rbtnpersonal.Checked then
      tipo:='Personal'
   else
      tipo:='Equipo';

   if rbtnpersonal.Checked then
   begin
      tabla:='personal'  ;
      campo:='sIdPersonal';
   end else
      begin
        tabla:='equipos';
        campo:='sIdEquipo';
      end;
   QTMPE.Active:= False;
   QTMPE.SQL.Clear;
   QTMPE.SQL.Add('select tm.dCantidad as Cantidad, t.sDescripcion as Descripcion, tm.sIdPersonalEquipo as Id  from tiempomuertopersonal tm '+
                 'inner join '+tabla+ ' t on ( t.sContrato = tm.sContrato and '+campo+' = sIdPersonalEquipo )'+
                 'where tm.sContrato=:CONT and tm.dIdFecha =:Fecha and tm.sNumeroOrden =:Frente '+
                 'and tm.sIdTurno =:Turno and sHoraInicio =:Hora and tm.sTipo =:Tipo order by Descripcion');
   QTMPE.ParamByName('CONT').AsString   := param_Global_Contrato ;
   QTMPE.ParamByName('Fecha').AsDate    := frmJornadasDiarias.tdIdFecha.Date;
   QTMPE.ParamByName('Frente').AsString := frmJornadasDiarias.tsNumeroOrden.Text;
   QTMPE.ParamByName('Turno').AsString  := global_turno_reporte ;
   QTMPE.ParamByName('Hora').AsString   := frmJornadasDiarias.tsHoraInicio.Text;
   QTMPE.ParamByName('Tipo').AsString   := tipo ;
   QTMPE.Open;

   rxPersonalEquipo.EmptyTable;
   while not QTMPE.Eof do
   begin
       rxPersonalEquipo.Append;
       rxPersonalEquipo.FieldValues['sIdRecurso']  := QTMPE.FieldValues['Id'];
       rxPersonalEquipo.FieldValues['dCantidad']   := QTMPE.FieldValues['Cantidad'];
       rxPersonalEquipo.FieldValues['Descripcion'] := QTMPE.FieldValues['Descripcion'];
       rxPersonalEquipo.Post;
       QTMPE.Next;
   end;
   cmdAplicar.Visible               := false;
   DBGCargados.Columns[2].Visible   := false;
   DBGCargados.Columns[0].Width     := 50;
   DBGCargados.Columns[1].Width     := 260;

   //Conteo de Personal o Equipo Afectado..
   sql:='select sum(dCantidad) as suma from tiempomuertopersonal where sContrato=:CONT and dIdFecha =:Fecha and sNumeroOrden =:Frente '+
        'and sIdTurno =:Turno and sHoraInicio =:Hora and sTipo =:Tipo ';
   QOperacion.SQL.Text:=sql;
   QOperacion.ParamByName('CONT').AsString   := param_Global_Contrato ;
   QOperacion.ParamByName('Fecha').AsDate    := frmJornadasDiarias.tdIdFecha.Date;
   QOperacion.ParamByName('Frente').AsString := frmJornadasDiarias.tsNumeroOrden.Text;
   QOperacion.ParamByName('Turno').AsString  := global_turno_reporte;
   QOperacion.ParamByName('Hora').AsString   := frmJornadasDiarias.tsHoraInicio.Text;
   QOperacion.ParamByName('Tipo').AsString   := tipo ;
   QOperacion.Open ;
   QOperacion.Active := True;

   if QOperacion.FieldValues['suma'] <> Null then
      tTotalAfectado.Text := QOperacion.FieldValues['suma']
   else
      tTotalAfectado.Text := '0';

    if tipo = 'Personal' then
      if strToint(tTotalAfectado.Text) > strToInt(tsCantidadAfectada.Text) then
         cmdAplicar.Visible := True;
  end;

End.
