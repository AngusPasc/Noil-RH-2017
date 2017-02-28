unit frm_CatalogoDatosBancarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  AdvGlowButton, frxClass, Global, DateUtils, Utilerias, masUtilerias, frxDBSet,
  StdCtrls, frm_connection, UDbGrid, frm_barra, Mask, rxToolEdit, RXDBCtrl,
  DBCtrls, ExtCtrls,unittbotonespermisos;

Type
  Evalidaciones = class(Exception)
  end;

type
  TfrmCatalogoDatosBancarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    frmBarra4: TfrmBarra;
    zQEmpleados: TZQuery;
    dszQEmpleados: TDataSource;
    Label1: TLabel;
    grid_Empleados: TDBGrid;
    tsFiltraEmpleados: TEdit;
    ds_DatosBancarios: TDataSource;
    Label11: TLabel;
    dbIdBanco: TDBLookupComboBox;
    Label26: TLabel;
    tsSucursal: TDBEdit;
    tsNoCuenta: TDBEdit;
    tsClaveInter: TDBEdit;
    dbEstado: TDBComboBox;
    tdFechaAplicacion: TDBDateEdit;
    dbActivo: TDBComboBox;
    tsObservaciones: TDBMemo;
    Label30: TLabel;
    Label31: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label21: TLabel;
    zqryBancos: TZQuery;
    zqryBancosidbanco: TIntegerField;
    zqryBancosnombre: TStringField;
    zqryBancosactivo: TStringField;
    ds_Bancos: TDataSource;
    qryDatosBancarios: TZQuery;
    qryDatosBancariosIdDatosBancariosxPersonal: TIntegerField;
    qryDatosBancariosIdPersonal: TIntegerField;
    qryDatosBancariosIdBanco: TIntegerField;
    qryDatosBancariosSucursal: TStringField;
    qryDatosBancariosNumerodecuenta: TStringField;
    qryDatosBancariosClaveinterbancaria: TStringField;
    qryDatosBancariosEstado: TStringField;
    qryDatosBancariosFechadeaplicacion: TDateField;
    qryDatosBancariosobservaciones: TMemoField;
    qryDatosBancariosactivo: TStringField;
    grid_DatosBancarios: TDBGrid;
    zQEmpleadosIdPersonal: TIntegerField;
    zQEmpleadossIdEmpleado: TStringField;
    zQEmpleadosiIdEstatus: TIntegerField;
    zQEmpleadossNombreCompleto: TStringField;
    zQEmpleadossApellidoPaterno: TStringField;
    zQEmpleadossApellidoMaterno: TStringField;
    zQEmpleadossRfc: TStringField;
    zQEmpleadossDomicilio: TStringField;
    zQEmpleadossCiudad: TStringField;
    zQEmpleadossPuesto: TStringField;
    zQEmpleadossIdArea: TStringField;
    zQEmpleadossTelefono: TStringField;
    zQEmpleadosseMail: TStringField;
    zQEmpleadosdSueldo: TFloatField;
    zQEmpleadossCuenta: TStringField;
    zQEmpleadoslLabora: TStringField;
    zQEmpleadossBanco: TStringField;
    zQEmpleadossCuentaInterbancaria: TStringField;
    zQEmpleadossCurp: TStringField;
    zQEmpleadossImss: TStringField;
    zQEmpleadossNacionalidad: TStringField;
    zQEmpleadossEstadoCivil: TStringField;
    zQEmpleadosdFechaNacimiento: TDateField;
    zQEmpleadosdFechaTerminoLabores: TDateField;
    zQEmpleadosdFechaInicioLabores: TDateField;
    zQEmpleadosiId_Puesto: TIntegerField;
    zQEmpleadossLibretaMar: TStringField;
    zQEmpleadossCartilla: TStringField;
    zQEmpleadossCedulaProfesional: TStringField;
    zQEmpleadossLugarNacimiento: TStringField;
    zQEmpleadossCarrera: TStringField;
    zQEmpleadosiId_RegistroPatronal: TIntegerField;
    zQEmpleadosdSalarioDiario: TFloatField;
    zQEmpleadosdFactorIntegracion: TFloatField;
    zQEmpleadosdPromedioVariables: TFloatField;
    zQEmpleadosdSalarioIntegrado: TFloatField;
    zQEmpleadossIdPersonal: TStringField;
    zQEmpleadossContrato: TStringField;
    zQEmpleadossTipoSangre: TStringField;
    zQEmpleadosdVigenciaLibreta: TDateField;
    zQEmpleadosdVigenciaCertMedico: TDateField;
    zQEmpleadossComentario: TStringField;
    zQEmpleadosiId_NumeroDeCuenta: TIntegerField;
    zQEmpleadoslImprimeNomina: TStringField;
    zQEmpleadosiEdad: TIntegerField;
    zQEmpleadoslSexo: TStringField;
    zQEmpleadossPeriodo: TIntegerField;
    zQEmpleadossDescanso: TStringField;
    zQEmpleadosiIdhorario: TIntegerField;
    zQEmpleadossStatus: TStringField;
    zQEmpleadosidorganizacion: TIntegerField;
    zQEmpleadosiIdEstatusDiario: TIntegerField;
    zQEmpleadossCP: TStringField;
    zQEmpleadossInfonavit: TStringField;
    zQEmpleadossNoCreditoInfonavit: TStringField;
    lblPersonal: TLabel;
    qryDatosBancariosNombreBanco: TStringField;
    flEstatus: TDBLookupComboBox;
    Label2: TLabel;
    qryFlEstatus: TZReadOnlyQuery;
    StringField1: TStringField;
    qryFlEstatusiIdEstatus: TLargeintField;
    ds_flEstatus: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure tsFiltraEmpleadosKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tsFiltraEmpleadosEnter(Sender: TObject);
    procedure tsFiltraEmpleadosExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_EmpleadosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_EmpleadosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_EmpleadosTitleClick(Column: TColumn);
    procedure frmBarra4btnAddClick(Sender: TObject);
    procedure frmBarra4btnPostClick(Sender: TObject);
    procedure frmBarra4btnCancelClick(Sender: TObject);
    procedure frmBarra4btnDeleteClick(Sender: TObject);
    procedure frmBarra4btnRefreshClick(Sender: TObject);
    procedure zQEmpleadosAfterScroll(DataSet: TDataSet);
    procedure frmBarra4btnExitClick(Sender: TObject);
    procedure frmBarra4btnEditClick(Sender: TObject);
    procedure dbIdBancoKeyPress(Sender: TObject; var Key: Char);
    procedure dbIdBancoEnter(Sender: TObject);
    procedure dbIdBancoExit(Sender: TObject);
    procedure tsSucursalKeyPress(Sender: TObject; var Key: Char);
    procedure tsSucursalEnter(Sender: TObject);
    procedure tsSucursalExit(Sender: TObject);
    procedure tsNoCuentaKeyPress(Sender: TObject; var Key: Char);
    procedure tsClaveInterKeyPress(Sender: TObject; var Key: Char);
    procedure dbEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaAplicacionKeyPress(Sender: TObject; var Key: Char);
    procedure dbActivoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNoCuentaEnter(Sender: TObject);
    procedure tsNoCuentaExit(Sender: TObject);
    procedure tsClaveInterEnter(Sender: TObject);
    procedure tsClaveInterExit(Sender: TObject);
    procedure dbEstadoEnter(Sender: TObject);
    procedure dbEstadoExit(Sender: TObject);
    procedure tdFechaAplicacionEnter(Sender: TObject);
    procedure tdFechaAplicacionExit(Sender: TObject);
    procedure dbActivoEnter(Sender: TObject);
    procedure dbActivoExit(Sender: TObject);
    procedure grid_EmpleadosDblClick(Sender: TObject);
    //procedure flEstatusExit(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure flEstatusExit(Sender: TObject);
    procedure grid_DatosBancariosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoDatosBancarios: TfrmCatalogoDatosBancarios;
  periodocontrato : integer;
  utgrid:ticdbgrid;
  fechaBaja : Tdate;

implementation

uses UnitExcepciones;

{$R *.dfm}



//procedure TfrmCatalogoDatosBancarios.cbMostrarTodosClick(Sender: TObject);
//begin
//// if cbMostrarTodos.Checked then
//// begin
////      zQEmpleados.Active := False;
////      zQEmpleados.SQL.Clear;
////      zQEmpleados.SQL.Add('select * from empleados order by sNombreCompleto ');
////      zQEmpleados.Open;
//// end
//// else
//// begin
////      zQEmpleados.Active := False;
////      zQEmpleados.SQL.Clear;
////      zQEmpleados.SQL.Add('select * from empleados where sStatus = "ACTIVO" and lLabora = "Si" ' +
////                          'order by sNombreCompleto ');
////      zQEmpleados.Open;
//// end;
//
//end;

procedure TfrmCatalogoDatosBancarios.grid_DatosBancariosDblClick(
  Sender: TObject);
begin
  frmBarra4.btnEdit.Click ;

end;

procedure TfrmCatalogoDatosBancarios.grid_EmpleadosDblClick(Sender: TObject);
begin
    //Panel1.Enabled := True;

end;

procedure TfrmCatalogoDatosBancarios.grid_EmpleadosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmCatalogoDatosBancarios.grid_EmpleadosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmCatalogoDatosBancarios.grid_EmpleadosTitleClick(Column: TColumn);
begin
    UtGrid.DbGridTitleClick(Column);
end;


procedure TfrmCatalogoDatosBancarios.tdFechaAplicacionEnter(Sender: TObject);
begin
      tdFechaAplicacion.Color := global_color_entradaERP
end;

procedure TfrmCatalogoDatosBancarios.tdFechaAplicacionExit(Sender: TObject);
begin
      tdFechaAplicacion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoDatosBancarios.tdFechaAplicacionKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
      dbActivo.Setfocus

end;

procedure TfrmCatalogoDatosBancarios.tsClaveInterEnter(Sender: TObject);
begin
      tsClaveInter.Color := global_color_entradaERP
end;

procedure TfrmCatalogoDatosBancarios.tsClaveInterExit(Sender: TObject);
begin
      tsClaveInter.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoDatosBancarios.tsClaveInterKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
      dbEstado.Setfocus

end;

procedure TfrmCatalogoDatosBancarios.tsFiltraEmpleadosEnter(Sender: TObject);
begin
      tsFiltraEmpleados.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoDatosBancarios.tsFiltraEmpleadosExit(Sender: TObject);
begin
tsFiltraEmpleados.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoDatosBancarios.tsFiltraEmpleadosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if length(trim(tsFiltraEmpleados.Text)) > 0 then
        begin
        zQEmpleados.Filtered := False;
        zQEmpleados.Filter := ' sNombreCompleto LIKE ' + QuotedStr('*' + tsFiltraEmpleados.Text + '* ');
        zQEmpleados.Filtered := True;
        zQEmpleados.Refresh;
        end
     else
        begin
        zQEmpleados.Filtered := False;
        end;
end;

procedure TfrmCatalogoDatosBancarios.tsNoCuentaEnter(Sender: TObject);
begin
    tsNoCuenta.Color := global_color_entradaERP
end;

procedure TfrmCatalogoDatosBancarios.tsNoCuentaExit(Sender: TObject);
begin
      tsNoCuenta.Color := global_color_salidaERP
end;

procedure TfrmCatalogoDatosBancarios.tsNoCuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key = #13 then
      tsClaveInter.Setfocus
end;

procedure TfrmCatalogoDatosBancarios.tsSucursalEnter(Sender: TObject);
begin
 tsSucursal.Color := global_color_entradaERP
end;

procedure TfrmCatalogoDatosBancarios.tsSucursalExit(Sender: TObject);
begin
    tsSucursal.Color := global_color_salidaERP
end;

procedure TfrmCatalogoDatosBancarios.tsSucursalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      tsNOcuENTA.Setfocus

end;

procedure TfrmCatalogoDatosBancarios.zQEmpleadosAfterScroll(DataSet: TDataSet);
begin
  try
      try

        qryDatosBancarios.Active := False;
        qryDatosBancarios.SQL.Clear;
        qryDatosBancarios.SQL.Add('select * from rhu_datosbancariosxpersonal where IdPersonal = :IdPersonal');
        qryDatosBancarios.Params.ParamByName('IdPersonal').AsInteger := ZqEmpleados.FieldByName('IdPersonal').AsInteger;
        qryDatosBancarios.Open;

        lblPersonal.Caption := zQEmpleados.FieldByName('sIdEmpleado').AsString + ' ' + zQEmpleados.FieldByName('sNombreCompleto').AsString +
     ' ' + zQEmpleados.FieldByName('sApellidoPaterno').AsString + ' ' + zQEmpleados.FieldByName('sApellidoMaterno').AsString;

    finally
      //Image1.Picture.Graphic := Nil;
    end;
  except
    on e:exception do
    begin
      messagedlg('Ha ocurrido un error inesperado del sistema al cargar el detalle del postulante, Avise del siguiente error al administradr: '+#10+#10+'Error'+#10+#10+e.message, mterror, [mbok], 0);
      //ZQDocxPostulante.Close;
    end;
  end;

end;

procedure TfrmCatalogoDatosBancarios.dbActivoEnter(Sender: TObject);
begin
      dbActivo.Color := global_color_entradaERP
end;

procedure TfrmCatalogoDatosBancarios.dbActivoExit(Sender: TObject);
begin
      dbActivo.Color := global_color_salidaERP
end;

procedure TfrmCatalogoDatosBancarios.dbActivoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
      tsObservaciones.Setfocus

end;

procedure TfrmCatalogoDatosBancarios.DBComboBox1Change(Sender: TObject);
begin
  //flEstatus.Color := $00E6FEFF;
  zQEmpleados.Active := False;
  zQEmpleados.SQL.Clear;
//  if qryflEstatus.FieldValues['iIdEstatus'] = 0 then
//     zQEmpleados.SQL.Add('select * from empleados order by sNombreCompleto')
//  else
//  begin
     zQEmpleados.SQL.Add('select * from empleados where iIdEstatus =:estatus order by sNombreCompleto');
     zQEmpleados.ParamByName('estatus').AsInteger := qryflEstatus.FieldValues['iIdEstatus'];
//  end;
  zQEmpleados.Open;

end;

procedure TfrmCatalogoDatosBancarios.dbEstadoEnter(Sender: TObject);
begin
      dbEstado.Color := global_color_entradaERP
end;

procedure TfrmCatalogoDatosBancarios.dbEstadoExit(Sender: TObject);
begin
       dbEstado.Color := global_color_salidaERP
end;

procedure TfrmCatalogoDatosBancarios.dbEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
      tdFechaAplicacion.Setfocus

end;

procedure TfrmCatalogoDatosBancarios.dbIdBancoEnter(Sender: TObject);
begin
  dbIdBanco.Color := global_color_entradaERP

end;

procedure TfrmCatalogoDatosBancarios.dbIdBancoExit(Sender: TObject);
begin
  dbIdBanco.Color := global_color_salidaERP

end;

procedure TfrmCatalogoDatosBancarios.dbIdBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      tsSucursal.Setfocus

end;


procedure TfrmCatalogoDatosBancarios.flEstatusExit(Sender: TObject);
begin
  flEstatus.Color := $00E6FEFF;
  zQEmpleados.Active := False;
  zQEmpleados.SQL.Clear;
  if qryflEstatus.FieldValues['iIdEstatus'] = 0 then
     zQEmpleados.SQL.Add('select * from empleados order by sNombreCompleto')
  else
  begin
     zQEmpleados.SQL.Add('select * from empleados where iIdEstatus =:estatus order by sNombreCompleto');
     zQEmpleados.ParamByName('estatus').AsInteger := qryflEstatus.FieldValues['iIdEstatus'];
  end;
  zQEmpleados.Open;

end;

procedure TfrmCatalogoDatosBancarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
utgrid.Destroy;
end;

procedure TfrmCatalogoDatosBancarios.FormShow(Sender: TObject);
begin
      try
        UtGrid:=TicdbGrid.create(grid_DatosBancarios);

        qryFlEstatus.Active := False ;
        qryFlEstatus.Open;

        if qryFlEstatus.RecordCount = 1 then
            flEstatus.KeyValue := 0;

        if qryFlEstatus.RecordCount > 1 then
        begin
            qryFlEstatus.Next;
            flEstatus.KeyValue := qryFlEstatus.FieldValues['iIdEstatus'];
        end;

        zQEmpleados.Active := false;
        zQEmpleados.Open;

        zqryBancos.Active := False;
        zqryBancos.open;

        qryDatosBancarios.Active := False;
        qryDatosBancarios.Params.ParamByName('idPersonal').AsInteger := zQEmpleados.FieldByName('IdPersonal').AsInteger;
        qryDatosBancarios.Open;
        //Panel1.Enabled := False;

      except
        on e:exception do
        begin
          messagedlg('Ha ocurrido un error inesperado del sistema, Avise del siguiente error al administradr: '+#10+#10+'Error'+#10+#10+e.message, mterror, [mbok], 0);
          PostMessage(self.Handle, WM_CLOSE, 0, 0);
        end;
      end;

end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnAddClick(Sender: TObject);
var
wAnyo, wMes, wDia: Word;
primerDia: Tdate;
begin
    try

      grid_DatosBancarios.Enabled := False;
      Panel2.Enabled := False;

      FrmBarra4.btnAdd.Enabled := False ;
      FrmBarra4.btnEdit.Enabled := False ;
      FrmBarra4.btnPost.Enabled := True ;
      FrmBarra4.btnCancel.Enabled := True ;
      FrmBarra4.btnDelete.Enabled := False ;
      FrmBarra4.btnPrinter.Enabled := False ;
      FrmBarra4.btnRefresh.Enabled := False ;
      FrmBarra4.btnExit.Enabled := False ;
      qryDatosBancarios.Append;
      qryDatosBancarios.FieldByName('IdPersonal').AsInteger := zqEmpleados.FieldByName('IdPersonal').AsInteger;
      dbidBanco.SetFocus;

    except
      on e:exception do
      begin
        messagedlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.message, mterror, [mbok], 0);
        qryDatosBancarios.CancelUpdates;
      end;
    end;

end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnCancelClick(Sender: TObject);
begin
    frmBarra4.Enabled := True;
    Panel2.Enabled := True;
    grid_DatosBancarios.Enabled := True;
    frmBarra4.btnCancelClick(Sender);
    qryDatosBancarios.Cancel;

end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnDeleteClick(Sender: TObject);
begin
  if qryDatosBancarios.RecordCount > 0 then
    begin
      if Application.MessageBox('¿Estas Seguro de Querer Eliminar el Contrato al Empleado?','ELIMINAR GUARDIA',MB_YESNO + Mb_IconQuestion) = IdYes then
      begin
          qryDatosBancarios.Delete;
          qryDatosBancarios.Refresh;
      end;
    end else
    begin
      ShowMessage('No existes Guardias para el Empleado.');
    end;
end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnEditClick(Sender: TObject);
begin

    If qryDatosBancarios.RecordCount > 0 Then
    Begin
              try
                  //Inabilitar Secciones
                grid_DatosBancarios.Enabled := False;
                Panel2.Enabled := False;

                frmBarra4.btnEditClick(Sender);
                //Insertar1.Enabled := False ;
                //Editar1.Enabled := False ;
                //Registrar1.Enabled := True ;
                //Can1.Enabled := True ;
                //Eliminar1.Enabled := False ;
                //Refresh1.Enabled := False ;
                //Salir1.Enabled := False ;
                //NxPageControl1.Enabled := True;
                //tdFechaSalida.SetFocus;
                qryDatosBancarios.Edit;
                //grid_salidas.Enabled := False;
              except
                 on e : exception do begin
                 UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Datos Bancarios', 'Al Editar Registro', 0);
                 end;
              end;
             //BotonPermiso.permisosBotones(frmBarra3);
             frmbarra4.btnPrinter.Enabled := False;
    End;

end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnExitClick(Sender: TObject);
begin
  frmBarra4.btnExitClick(Sender);
  close
end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnPostClick(Sender: TObject);
begin
    try

    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(IdDatosBancariosxPersonal) AS id FROM rhu_datosbancariosxpersonal;');
    connection.QryBusca.Open;
    if connection.QryBusca.FieldValues['id'] = null then
        qryDatosBancarios.FieldValues['IdDatosBancariosxPersonal'] := 1
    else
         qryDatosBancarios.FieldValues['IdDatosBancariosxPersonal'] := connection.QryBusca.FieldValues['id'] + 1;

    if length(trim(dbIdBanco.Text)) =0 then
      raise EValidaciones.Create(' "Debe Escoger  Un Banco de la Lista" no pude estar vacio');

    if length(trim(tsNoCuenta.Text)) = 0 then
      raise EValidaciones.Create('El campo "Numero de Cuenta" no pude estar vacio');

    if length(trim(tdFechaAplicacion.Text)) = 0 then
      raise EValidaciones.Create('El campo "Fecha" no pude estar vacio');

    if length(trim(dbEstado.Text)) = 0 then
      raise EValidaciones.Create('El campo "Estado" no pude estar vacio');

    if length(trim(dbActivo.Text)) = 0 then
      raise EValidaciones.Create('El campo "Activo" no pude estar vacio');

    qryDatosBancarios.Post;
    FrmBarra4.btnAdd.Enabled := True ;
    FrmBarra4.btnEdit.Enabled := True ;
    FrmBarra4.btnPost.Enabled := False ;
    FrmBarra4.btnCancel.Enabled := False ;
    FrmBarra4.btnDelete.Enabled := True ;
    FrmBarra4.btnPrinter.Enabled := True ;
    FrmBarra4.btnRefresh.Enabled := True ;
    FrmBarra4.btnExit.Enabled := True ;
    grid_DatosBancarios.Enabled := True;
    Panel2.Enabled := True;

  except
    on e:Evalidaciones do
    begin
      messagedlg('Aviso: '+#10+#10+e.Message, mtinformation, [mbok], 0);
    end;

    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
      qryDatosBancarios.CancelUpdates;
    end;
  end;

  FrmBarra4.btnCancel.Click ;

end;

procedure TfrmCatalogoDatosBancarios.frmBarra4btnRefreshClick(Sender: TObject);
begin
  if qryDatosBancarios.RecordCount > 0 then
  Begin
     qryDatosBancarios.Refresh;
     zqEmpleados.Refresh;
  end;

end;






end.
