unit frm_AperturaEstimacionGral;

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
  IdSMTPBase, IdSMTP, IdAttachmentFile, frxExportPDF, udbgrid, unitexcepciones ;

type
  TfrmAperturaEstimacionGral = class(TForm)
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
    EstimacionessIdUsuarioAutoriza: TStringField;
    EstimacionesdMontoDLL: TFloatField;
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
  frmAperturaEstimacionGral: TfrmAperturaEstimacionGral;
  dMonto   : Currency ;
  sJornada : String ;
  lRecordChange : Boolean ;
  iRecord  : Integer ;
  utgrid:ticdbgrid;
implementation

uses frm_seguridad, frm_bitacoraxalcance, frm_bitacoradepartamental_2,
  frm_ReporteDiarioTurno, frm_EstimacionGeneral;

{$R *.dfm}

procedure TfrmAperturaEstimacionGral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSeguridad.tsIdUsuarioValida.Text := '' ;
  frmSeguridad.tsPasswordValida.Text := '' ;
  action := cafree ;
  utgrid.Destroy;
end;

procedure TfrmAperturaEstimacionGral.BtnExitClick(Sender: TObject);
begin
    close
end;

procedure TfrmAperturaEstimacionGral.btnValidaClick(Sender: TObject);
var
     SavePlace     : TBookmark;

     Q_Actividades,
     Q_Acumulados,
     Q_Actualiza  : TZReadOnlyQuery;

     dMontoEstimacionMN, dMontoEstimacionDLL         : currency ;

     iGrid : integer;
     lRecordChange : boolean;
begin
 TRY
 if (grid_estimaciones.DataSource.DataSet.IsEmpty=true) or (grid_estimaciones.DataSource.DataSet.RecordCount<=0) then
 begin
   showmessage('No hay registros');
   exit
 end;
  connection.QryBusca.Active := false;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT lDesvalidaEstimacion FROM usuarios  WHERE sIdUsuario = :usuario');
  connection.QryBusca.ParamByName('usuario').value := global_usuario;
  connection.QryBusca.Open;
  if connection.QryBusca.FieldByName('lDesvalidaEstimacion').AsString = 'No' then begin
    MessageDlg('Este usuario no tiene permisos para realizar esta acción.', mtWarning, [mbOk], 0);
  end
  else begin
     if (Estimaciones.RecordCount > 0) and (Grid_Estimaciones.SelectedRows.Count > 0) then
     begin
         SavePlace :=  Estimaciones.GetBookmark;//salvar la posicion del registro para recuperarlo al final
         //crear el componente usado para las consultas de actualizacion
         Q_Actualiza := TZReadOnlyQuery.Create(self);
         Q_Actualiza.Connection := Connection.zConnection;
         lRecordChange := false;
         //recorrer los registros seleccionados (multiselect)
         for iGrid := 0 To Grid_Estimaciones.SelectedRows.Count-1 do begin
             Estimaciones.GotoBookmark(pointer(Grid_Estimaciones.SelectedRows.Items[iGrid]));
             if (Estimaciones.FieldValues['lEstimado'] = 'Si') then//Con esta condicion, no se puede desvalidar el registro
                 messageDLG('No se puede Desvalidar, La Estimacion '+Estimaciones.FieldValues['iNumeroEstimacion']+ ' encuentra Autorizada!', mtInformation, [mbOk], 0)
             else begin
                 lRecordChange := true;//registrar que se ha hecho un cambio
                 {Ahora Actualizamos los montos de la orden  General..}
                 Q_Actualiza.Active := False ;
                 Q_Actualiza.SQL.Clear ;
                 Q_Actualiza.SQL.Add('Update estimacion_general set dMontoMN =0, dMontoDLL =0, dMontoAcumuladoMN =0, dMontoAcumuladoDLL =0, lStatus =:Status, sIdUsuarioValida ="" ' +
                                     'Where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo ') ;
                 Q_Actualiza.Params.ParamByName('Estimacion').AsString  := Estimaciones.FieldValues['iNumeroEstimacion'] ;
                 Q_Actualiza.Params.ParamByName('Tipo').AsString        := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
                 Q_Actualiza.Params.ParamByName('Status').AsString      := 'Pendiente' ;
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
                 connection.zCommand.Params.ParamByName('Descripcion').Value    := 'Desvalidacion del Estimacion General No. [' +  Estimaciones.FieldValues ['iNumeroEstimacion']  + ']. USUARIO ' + global_valida ;
                 connection.zCommand.Params.ParamByName('Origen').DataType      := ftString ;
                 connection.zCommand.Params.ParamByName('Origen').Value         := 'Estimaciones Generales' ;
                 connection.zCommand.ExecSQL () ;
             end;

         end;

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
         End;
         if lRecordChange then//en caso de cambios, mandar el mensaje
             MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
         try
            if Assigned(frmEstimacionGeneral) then
            begin
                frmEstimacionGeneral.EstimacionGeneral.Refresh;
            end;
         Except
         end;
     end;
  end;
 EXCEPT
      on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DESVALIDA-DESAUTORIZA ESTIMACION GENERAL', 'En el proceso Valida/Apertura de Reportes', 0);
      end;
 END;
end;


procedure TfrmAperturaEstimacionGral.FormShow(Sender: TObject);
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
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DESVALIDA-DESAUTORIZA ESTIMACION GENERAL', 'Al agregar registro', 0);
  end;
 end;
end;

procedure TfrmAperturaEstimacionGral.Grid_EstimacionesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
 If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Validado' then
        Background := $006FF8FF
    Else
        If (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Pendiente' then
            Background := $00D0AD9F ;
end;

procedure TfrmAperturaEstimacionGral.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmAperturaEstimacionGral.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmAperturaEstimacionGral.Grid_EstimacionesTitleClick(
  Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmAperturaEstimacionGral.btnAutorizaClick(Sender: TObject);
var
     SavePlace     : TBookmark;

     Q_Actividades,
     Q_Acumulados,
     Q_Actualiza  : TZReadOnlyQuery;

     dMontoEstimacionMN, dMontoEstimacionDLL         : currency ;

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
  connection.QryBusca.SQL.Add('SELECT lDesautorizaEstimacion FROM usuarios  WHERE sIdUsuario = :usuario');
  connection.QryBusca.ParamByName('usuario').value := global_usuario;
  connection.QryBusca.Open;
  if connection.QryBusca.FieldByName('lDesautorizaEstimacion').AsString = 'No' then begin
    MessageDlg('Este usuario no tiene permisos para realizar esta acción.', mtWarning, [mbOk], 0);
  end
  else begin
     if (Estimaciones.RecordCount > 0) and (Grid_Estimaciones.SelectedRows.Count > 0) then
     begin
         SavePlace :=  Estimaciones.GetBookmark;//salvar la posicion del registro para recuperarlo al final
         {Inciamos el proceso de acumulados de la Estimacion...}
         //crear el componente usado para las consultas de actualizacion
         Q_Actualiza := TZReadOnlyQuery.Create(self);
         Q_Actualiza.Connection := Connection.zConnection;
         //recorrer los registros seleccionados (multiselect)
         for iGrid := 0 To Grid_Estimaciones.SelectedRows.Count-1 do begin
             Estimaciones.GotoBookmark(pointer(Grid_Estimaciones.SelectedRows.Items[iGrid]));
             {Ahora Actualizamos los montos de la orden  General..}
             Q_Actualiza.Active := False ;
             Q_Actualiza.SQL.Clear ;
             Q_Actualiza.SQL.Add('Update estimacion_general set lStatus =:Status, sIdUsuarioAutoriza ="", lEstimado ="No" ' +
                                 'Where iNumeroEstimacion =:Estimacion and sIdTipoEstimacion =:Tipo ') ;
             Q_Actualiza.Params.ParamByName('Estimacion').AsString  := Estimaciones.FieldValues['iNumeroEstimacion'] ;
             Q_Actualiza.Params.ParamByName('Tipo').AsString        := Estimaciones.FieldValues['sIdTipoEstimacion'] ;
             Q_Actualiza.Params.ParamByName('Status').AsString      := 'Validado' ;
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
             connection.zCommand.Params.ParamByName('Descripcion').Value    := 'Desautoriza Estimacion General No. [' +  Estimaciones.FieldValues ['iNumeroEstimacion']  + ']. USUARIO ' + global_valida ;
             connection.zCommand.Params.ParamByName('Origen').DataType      := ftString ;
             connection.zCommand.Params.ParamByName('Origen').Value         := 'Estimaciones Generales' ;
             connection.zCommand.ExecSQL () ;
         end;

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
         Except
         end;
     end;
  end;
 EXCEPT
      on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'DESVALIDA-DESAUTORIZA ESTIMACION GENERAL', 'En el proceso Autoriza/Apertura de Reportes', 0);
      end;
 END;
end;



procedure TfrmAperturaEstimacionGral.EstimacionesCalcFields(DataSet: TDataSet);
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
