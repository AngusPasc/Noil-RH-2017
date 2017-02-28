unit frm_ValidaEstimacionGral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, frm_connection, StdCtrls, Buttons, global,
  DBCtrls, StrUtils, RXDBCtrl, Mask, utilerias, masUtilerias,
  frxClass, Menus, ZAbstractRODataset, ZDataset, Gauges,
  RXCtrls, ExtCtrls, ZAbstractDataset, Math, ComCtrls,
  AdvGlowButton, JvBaseDlg, JvDesktopAlert, IdMessage, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdAttachmentFile, frxExportPDF, UnitEstimacion, udbgrid, unitexcepciones ;

type
  TfrmValidaEstimacionGral = class(TForm)
    pgValidacion: TPageControl;
    Progress: TGauge;
    SecretPanel1: TSecretPanel;
    TabEstimaciones: TTabSheet;
    Grid_Estimaciones: TRxDBGrid;
    ds_Estimaciones: TDataSource;
    Estimaciones: TZReadOnlyQuery;
    EstimacionesiNumeroEstimacion: TStringField;
    EstimacionessIdTipoEstimacion: TStringField;
    EstimacioneslEstimado: TStringField;
    EstimacionesdFechaInicio: TDateField;
    EstimacionesdFechaFinal: TDateField;
    EstimacionesdMontoMN: TFloatField;
    EstimacionessDescripcion: TStringField;
    btnExit: TAdvGlowButton;
    btnAutoriza: TAdvGlowButton;
    BtnValida: TAdvGlowButton;
    EstimacionessIdMoneda: TStringField;
    EstimacioneslStatus: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExitClick(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAutorizaClick(Sender: TObject);
    procedure EstimacionesCalcFields(DataSet: TDataSet);
    procedure Grid_EstimacionesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  iPausa = 1000 ;
var
  frmValidaEstimacionGral: TfrmValidaEstimacionGral;
  dMonto   : Currency ;
  sJornada : String ;
  lRecordChange : Boolean ;
  iRecord  : Integer ;
  utgrid:ticdbgrid;
implementation

uses frm_seguridad, frm_bitacoraxalcance, frm_bitacoradepartamental_2,
  frm_ReporteDiarioTurno, frm_EditaEstimacion, frm_EstimacionGeneral;

{$R *.dfm}

procedure TfrmValidaEstimacionGral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSeguridad.tsIdUsuarioValida.Text := '' ;
  frmSeguridad.tsPasswordValida.Text := '' ;
  action := cafree ;
  utgrid.Destroy;
end;

procedure TfrmValidaEstimacionGral.BtnExitClick(Sender: TObject);
begin
    close
end;

procedure TfrmValidaEstimacionGral.btnValidaClick(Sender: TObject);
var
     SavePlace     : TBookmark;

     Q_Ordenes,
     Q_Acumulados,
     Q_Actualiza  : TZReadOnlyQuery;

     dMontoEstimacionMN, dMontoEstimacionDLL,
     dMontoAcumuladoEstimacionMN, dMontoAcumuladoEstimacionDLL         : currency ;

     iGrid : integer;
begin
 TRY
if (grid_estimaciones.DataSource.DataSet.IsEmpty=true) or (grid_estimaciones.DataSource.DataSet.RecordCount<=0) then
 begin
   showmessage('No hay registros');
   exit
 end;
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT lValidaEstimacion FROM usuarios  WHERE sIdUsuario = :usuario');
  connection.QryBusca.ParamByName('usuario').value := global_usuario;
  connection.QryBusca.Open;
  if connection.QryBusca.FieldByName('lValidaEstimacion').AsString = 'No' then begin
    MessageDlg('Este usuario no tiene permisos para realizar esta acción.', mtWarning, [mbOk], 0);
  end
  else begin
    if (Estimaciones.RecordCount > 0) and (Grid_Estimaciones.SelectedRows.Count > 0) then
    begin

       {Inciamos el proceso de acumulados de la Estimacion...}
       //crear los componentes usados para las consultas de actualizacion
       Q_Ordenes := TZReadOnlyQuery.Create(self);
       Q_Ordenes.Connection := Connection.zConnection;

       Q_Acumulados := TZReadOnlyQuery.Create(self);
       Q_Acumulados.Connection := Connection.zConnection;

       Q_Actualiza := TZReadOnlyQuery.Create(self);
       Q_Actualiza.Connection := Connection.zConnection;

       SavePlace := Grid_Estimaciones.DataSource.DataSet.GetBookmark ;
       //recorrer los registros seleccionados (multiselect)
       for iGrid := 0 To Grid_Estimaciones.SelectedRows.Count-1 do
       Begin
          Estimaciones.GotoBookmark(pointer(Grid_Estimaciones.SelectedRows.Items[iGrid]));
          {Primero buscamos todas las ordenes existentes en la estimacion..}
          Q_Ordenes.Active := False ;
          Q_Ordenes.SQL.Clear ;
          Q_Ordenes.SQL.Add('Select * From estimacion_orden ' +
                            'Where iNumeroEstimacion = :Estimacion and sIdTipoEstimacion =:Tipo Order by iConsecutivo ') ;
          Q_Ordenes.Params.ParamByName('Estimacion').AsString  := Estimaciones.FieldValues['iNumeroEstimacion'] ;
          Q_Ordenes.Params.ParamByName('Tipo').AsString        := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
          Q_Ordenes.Open ;

          while not Q_Ordenes.Eof do
          begin
              {Llamamos la funcion de Calculo de Acumulados de la Orden ..}
              ActualizaAcumulados(Q_Ordenes.FieldValues['sContrato'], Q_Ordenes.FieldValues['iNumeroEstimacion'],
                                  Q_Ordenes.FieldValues['iNumeroEstimacionSub'], Q_Ordenes.FieldValues['sIdTipoEstimacion'], frmValidaEstimacionGral);
              Q_Ordenes.Next;
          end;

          {Ahora Consultamos las ordesnes para actualizar los montos de la Estimacion..}
          Q_Acumulados.Active := False ;
          Q_Acumulados.SQL.Clear ;
          Q_Acumulados.SQL.Add('Select Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From estimacion_orden ' +
                               'Where iNumeroEstimacion = :Estimacion and sIdTipoEstimacion =:Tipo Group By iNumeroEstimacion') ;
          Q_Acumulados.Params.ParamByName('Estimacion').AsString  := Estimaciones.FieldValues['iNumeroEstimacion'] ;
          Q_Acumulados.Params.ParamByName('Tipo').AsString        := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
          Q_Acumulados.Open ;

          If Q_Acumulados.RecordCount > 0 then
          Begin
              dMontoEstimacionMN   := Q_Acumulados.FieldValues['dMontoMN'] ;
              dMontoEstimacionDLL  := Q_Acumulados.FieldValues['dMontoDLL'] ;
          End
          Else
          Begin
              dMontoEstimacionMN   := 0 ;
              dMontoEstimacionDLL  := 0 ;
          End ;

          {Primero sacamos el Maximo Id ..}
          Q_Ordenes.Active := False ;
          Q_Ordenes.SQL.Clear ;
          Q_Ordenes.SQL.Add('Select max(iConsecutivo) as iConsecutivo From estimacion_orden ' +
                            'Where iNumeroEstimacion = :Estimacion and sIdTipoEstimacion =:Tipo Order by iNumeroEstimacion ') ;
          Q_Ordenes.Params.ParamByName('Estimacion').AsString  := Estimaciones.FieldValues['iNumeroEstimacion'] ;
          Q_Ordenes.Params.ParamByName('Tipo').AsString        := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
          Q_Ordenes.Open ;

          Q_Acumulados.Active := False ;
          Q_Acumulados.SQL.Clear ;
          Q_Acumulados.SQL.Add('Select Sum(dMontoAcumuladoMN) as dMontoAcumuladoMN, Sum(dMontoAcumuladoDLL) as dMontoAcumuladoDLL From estimacion_orden ' +
                               'Where iConsecutivo <= :Consecutivo Group By iConsecutivo') ;
          if Q_Ordenes.FieldValues['iConsecutivo'] <> Null then
              Q_Acumulados.Params.ParamByName('consecutivo').AsInteger := Q_Ordenes.FieldValues['iConsecutivo']
          else
              Q_Acumulados.Params.ParamByName('consecutivo').AsInteger := 0;
          Q_Acumulados.Open ;

          dMontoAcumuladoEstimacionMN  := 0 ;
          dMontoAcumuladoEstimacionDLL := 0 ;

          while not Q_Acumulados.Eof do
          begin
              dMontoAcumuladoEstimacionMN  := dMontoAcumuladoEstimacionMN +  Q_Acumulados.FieldValues['dMontoAcumuladoMN'] ;
              dMontoAcumuladoEstimacionDLL := dMontoAcumuladoEstimacionDLL + Q_Acumulados.FieldValues['dMontoAcumuladoDLL'] ;
              Q_Acumulados.Next;
          end;

          {Ahora Actualizamos los montos de la orden  General..}
          Q_Actualiza.Active := False ;
          Q_Actualiza.SQL.Clear ;
          Q_Actualiza.SQL.Add('Update estimacion_general set dMontoMN =:EstimadoMN, dMontoDLL =:EstimadoDLL, dMontoAcumuladoMN =:EstimadoAcumMN, dMontoAcumuladoDLL =:EstimadoAcumDLL,'+
                              'lStatus =:Status, sIdUsuarioValida =:Valida ' +
                              'Where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo ') ;
          Q_Actualiza.Params.ParamByName('Estimacion').AsString     := Estimaciones.FieldValues['iNumeroEstimacion'] ;
          Q_Actualiza.Params.ParamByName('Tipo').AsString           := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
          Q_Actualiza.Params.ParamByName('EstimadoMN').AsFloat      := dMontoEstimacionMN ;
          Q_Actualiza.Params.ParamByName('EstimadoDLL').AsFloat     := dMontoEstimacionDLL ;
          Q_Actualiza.Params.ParamByName('EstimadoAcumMN').AsFloat  := dMontoAcumuladoEstimacionMN ;
          Q_Actualiza.Params.ParamByName('EstimadoAcumDLL').AsFloat := dMontoAcumuladoEstimacionDLL ;
          Q_Actualiza.Params.ParamByName('Status').AsString         := 'Validado' ;
          Q_Actualiza.Params.ParamByName('Valida').AsString         := global_valida ;
          Q_Actualiza.ExecSQL;

          // Actualizo Kardex del Sistema ....
          Sleep(iPausa) ;
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                        'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
          connection.zCommand.Params.ParamByName('Contrato').DataType    := ftString ;
          connection.zCommand.Params.ParamByName('Contrato').Value       := Global_Contrato_barco ;
          connection.zCommand.Params.ParamByName('Usuario').DataType     := ftString ;
          connection.zCommand.Params.ParamByName('Usuario').Value        := Global_Usuario ;
          connection.zCommand.Params.ParamByName('Fecha').DataType       := ftDate ;
          connection.zCommand.Params.ParamByName('Fecha').Value          := Date ;
          connection.zCommand.Params.ParamByName('Hora').DataType        := ftString ;
          connection.zCommand.Params.ParamByName('Hora').value           := FormatDateTime('hh:mm:ss', Now) ;
          connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
          connection.zCommand.Params.ParamByName('Descripcion').Value    := 'Validación del Estimacion General No. [' +  Estimaciones.FieldValues ['iNumeroEstimacion']  + ']. VALIDA ' + global_valida ;
          connection.zCommand.Params.ParamByName('Origen').DataType      := ftString ;
          connection.zCommand.Params.ParamByName('Origen').Value         := 'Estimaciones Generales' ;
          connection.zCommand.ExecSQL () ;
       End;

       //actualizar el contenido del grid
       Estimaciones.Active := False ;
       Estimaciones.Open ;
       //recuperar la posicion original
       Try
           Grid_Estimaciones.DataSource.DataSet.GotoBookmark(SavePlace);
       Except
       Else
           Grid_Estimaciones.DataSource.DataSet.FreeBookmark(SavePlace);
       End ;
       MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);

       //destruir los componentes usados para las consultas de actualizacion
       Q_Ordenes.Destroy;
       Q_Acumulados.Destroy;
       Q_Actualiza.Destroy;

    end;
  end
 EXCEPT
      on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'VALIDA ESTIMACIONES GENERALES', 'En el proceso valida reportes', 0);
      end;
 END;
end;


procedure TfrmValidaEstimacionGral.FormShow(Sender: TObject);
begin
try
  UtGrid:=TicdbGrid.create(grid_estimaciones);
  pgValidacion.ActivePageIndex := 0 ;

  frmSeguridad.tsIdUsuarioValida.Text := '' ;
  frmSeguridad.tsPasswordValida.Text  := '' ;

  Estimaciones.Active := False ;
  Estimaciones.Open ;
except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'VALIDA ESTIMACION GENERALES', 'Al iniciar formulario', 0);
    end;
end;
end;

procedure TfrmValidaEstimacionGral.Grid_EstimacionesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
 If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Validado' then
        Background := $006FF8FF
    Else
        If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Pendiente' then
            Background := $00D0AD9F ;
end;

procedure TfrmValidaEstimacionGral.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmValidaEstimacionGral.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmValidaEstimacionGral.Grid_EstimacionesTitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmValidaEstimacionGral.btnAutorizaClick(Sender: TObject);
var
     SavePlace     : TBookmark;

     Q_Actividades,
     Q_Acumulados,
     Q_Actualiza  : TZReadOnlyQuery;

     dMontoEstimacionMN, dMontoEstimacionDLL         : currency ;

     iGrid : integer;
begin
 try
if (grid_estimaciones.DataSource.DataSet.IsEmpty=true) or (grid_estimaciones.DataSource.DataSet.RecordCount<=0) then
 begin
   showmessage('No hay registros');
   exit
 end;
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT lAutorizaEstimacion FROM usuarios  WHERE sIdUsuario = :usuario');
  connection.QryBusca.ParamByName('usuario').value := global_usuario;
  connection.QryBusca.Open;
  if connection.QryBusca.FieldByName('lAutorizaEstimacion').AsString = 'No' then begin
    MessageDlg('Este usuario no tiene permisos para realizar esta acción.', mtWarning, [mbOk], 0);
  end
  else begin
   if (Estimaciones.RecordCount > 0) and (Grid_Estimaciones.SelectedRows.Count > 0) then
   begin

     {Inciamos el proceso de acumulados de la Estimacion...}
     //crear el componente usado para las consultas de actualizacion
     Q_Actualiza := TZReadOnlyQuery.Create(self);
     Q_Actualiza.Connection := Connection.zConnection;

     SavePlace := Grid_Estimaciones.DataSource.DataSet.GetBookmark ;
     //recorrer los registros seleccionados (multiselect)
     for iGrid := 0 To Grid_Estimaciones.SelectedRows.Count-1 do
     Begin
         Estimaciones.GotoBookmark(pointer(Grid_Estimaciones.SelectedRows.Items[iGrid]));
         {Ahora Actualizamos los montos de la orden  General..}
         Q_Actualiza.Active := False ;
         Q_Actualiza.SQL.Clear ;
         Q_Actualiza.SQL.Add('Update estimacion_general set lStatus =:Status, sIdUsuarioAutoriza =:Valida, lEstimado ="Si" ' +
                             'Where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo ') ;
         Q_Actualiza.Params.ParamByName('Estimacion').AsString  := Estimaciones.FieldValues['iNumeroEstimacion'] ;
         Q_Actualiza.Params.ParamByName('Tipo').AsString        := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
         Q_Actualiza.Params.ParamByName('Status').AsString      := 'Autorizado' ;
         Q_Actualiza.Params.ParamByName('Valida').AsString      := global_valida ;
         Q_Actualiza.ExecSQL;

         // Actualizo Kardex del Sistema ....
         Sleep(iPausa) ;
         connection.zCommand.Active := False ;
         connection.zCommand.SQL.Clear ;
         connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
                                   'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
         connection.zCommand.Params.ParamByName('Contrato').DataType    := ftString ;
         connection.zCommand.Params.ParamByName('Contrato').Value       := Global_Contrato_barco ;
         connection.zCommand.Params.ParamByName('Usuario').DataType     := ftString ;
         connection.zCommand.Params.ParamByName('Usuario').Value        := Global_Usuario ;
         connection.zCommand.Params.ParamByName('Fecha').DataType       := ftDate ;
         connection.zCommand.Params.ParamByName('Fecha').Value          := Date ;
         connection.zCommand.Params.ParamByName('Hora').DataType        := ftString ;
         connection.zCommand.Params.ParamByName('Hora').value           := FormatDateTime('hh:mm:ss', Now) ;
         connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString ;
         connection.zCommand.Params.ParamByName('Descripcion').Value    := 'Autoriza Estimacion General No. [' +  Estimaciones.FieldValues ['iNumeroEstimacion']  + ']. AUTORIZO ' + global_valida ;
         connection.zCommand.Params.ParamByName('Origen').DataType      := ftString ;
         connection.zCommand.Params.ParamByName('Origen').Value         := 'Estimaciones Generales' ;
         connection.zCommand.ExecSQL () ;
     End;

     //destruir el componente usado para las consultas de actualizacion
     Q_Actualiza.Free;
     //actualizar el contenido del grid
     Estimaciones.Active := False ;
     Estimaciones.Open ;
     //recuperar la posicion original
     Try
        Grid_Estimaciones.DataSource.DataSet.GotoBookmark(SavePlace);
     Except
     Else
         Grid_Estimaciones.DataSource.DataSet.FreeBookmark(SavePlace);
     End ;
     MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
     //Actualizar los datos en el formulario frmEstimacionGeneral
     try
         if Assigned(frmEstimacionGeneral) then begin
             frmEstimacionGeneral.EstimacionGeneral.Refresh;
         end;
     finally
     end;

   end;
  end;
 except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'VALIDA ESTIMACION GENERALES', 'En el proceso Autoriza Reportes', 0);
    end;
 end;
end;



procedure TfrmValidaEstimacionGral.EstimacionesCalcFields(DataSet: TDataSet);
begin
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sDescripcion From tiposdeestimacion ' +
                                'Where sIdTipoEstimacion = :Tipo') ;
    Connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Tipo').Value := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 then
         EstimacionessDescripcion.Value := Connection.qryBusca.FieldValues['sDescripcion']
    Else
         EstimacionessDescripcion.Value := ''
end;

end.
