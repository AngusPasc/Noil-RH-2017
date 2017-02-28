unit frm_AsignaciondeEquipoSeg;

interface

uses                   
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, StdCtrls,
  NxCollection, NxEdit, Buttons, DBCtrls, rxToolEdit, RXDBCtrl, Mask, frm_barra,
  NxPageControl, ExtCtrls, ZAbstractDataset, frm_Connection, JvExMask,
  JvToolEdit, JvDBControls, JvBaseEdits, global, Menus, frxClass, frxDBSet;
type
  Evalidaciones = class(Exception)
end;
type
  TfrmAsignaciondeEquipoSeg = class(TForm)
    ds_Empleados: TDataSource;
    NxHeaderPanel1: TNxHeaderPanel;
    lblEmpleados: TLabel;
    DBGrid_Empleados: TDBGrid;
    Panel1: TPanel;
    NxPageControl1: TNxPageControl;
    NxTabSheet2: TNxTabSheet;
    lbFechaAsig: TLabel;
    lbSerie: TLabel;
    lbMotivo: TLabel;
    Label4: TLabel;
    gridInsXEmpl: TDBGrid;
    DateEdit3: TDateEdit;
    ckbVigencia: TCheckBox;
    gridInsumos: TDBGrid;
    btnAsignar: TBitBtn;
    btnDenegar: TBitBtn;
    guardar: TButton;
    Motivo: TDBEdit;
    dbSerie: TDBEdit;
    btnCancelar: TBitBtn;
    ds_Folios: TDataSource;
    zQFolios: TZQuery;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    txtBusEmpleado: TEdit;
    zQEquipoSeg: TZQuery;
    ds_EquipoSeg: TDataSource;
    zQEquipoSegiIdEquipoSeguridad: TIntegerField;
    zQEquipoSegsDescripcion: TMemoField;
    zQEquipoSegsNumeroserie: TStringField;
    zQEquipoSegsTalla: TStringField;
    zQEquipoSegsMedida: TStringField;
    zQEquipoSegsIdMarca: TStringField;
    zQEquipoSegsIdProveedor: TStringField;
    zQEquipoSegsModelo: TStringField;
    zQEquipoSegsIdFamilia: TStringField;
    zQEquipoSegiIdSubfamilia: TIntegerField;
    zQEquipoSegiIdExistenciaeqs: TIntegerField;
    zQEquipoSegiIdEquipoSeguridad_1: TIntegerField;
    zQEquipoSegDescripcion: TStringField;
    zqtransaction: TZQuery;
    zQEquipos_x_folio: TZQuery;
    ds_EquiposxFolio: TDataSource;
    zQEquipos_x_folioiId: TIntegerField;
    zQEquipos_x_folioiIdFolio: TIntegerField;
    zQEquipos_x_folioiIdEquipoSeguridad: TIntegerField;
    zQEquipos_x_foliodFechaEntrega: TDateField;
    zQEquipos_x_foliodFechaExpira: TDateField;
    zQEquipos_x_folioiActivo: TIntegerField;
    zQEquipos_x_foliosDescripcion: TStringField;
    zQEquipos_x_foliosNumeroSerie: TStringField;
    zQEquipos_x_folioDescripcion: TStringField;
    fchVigencia: TJvDBDateEdit;
    fchaAsignacion: TJvDBDateEdit;
    tsdCantidad: TJvDBCalcEdit;
    zQtodoslosequipos: TZQuery;
    ds_todoslosequipos: TDataSource;
    zQtodoslosequiposiIdEquipoSeguridad: TIntegerField;
    zQtodoslosequipossDescripcion: TMemoField;
    zQtodoslosequipossNumeroserie: TStringField;
    zQtodoslosequipossTalla: TStringField;
    zQtodoslosequipossMedida: TStringField;
    zQtodoslosequipossIdMarca: TStringField;
    zQtodoslosequipossIdProveedor: TStringField;
    zQtodoslosequipossModelo: TStringField;
    zQtodoslosequipossIdFamilia: TStringField;
    zQtodoslosequiposiIdSubfamilia: TIntegerField;
    zQtodoslosequiposDescripcion: TStringField;
    zQEquipos_x_folioEquipodeSeguridad: TStringField;
    zQEquipoSegsIdEquipo: TStringField;
    zQtodoslosequipossIdEquipo: TStringField;
    zQEquipos_x_foliosIdEquipo: TStringField;
    dblcb_Frente: TDBLookupComboBox;
    zQfrente: TZQuery;
    ds_frente: TDataSource;
    zQfrentesIdFolio: TStringField;
    zQfrentesContrato: TStringField;
    zQfrentesNumeroOrden: TStringField;
    Label6: TLabel;
    zQEquipos_x_foliosContrato: TStringField;
    zQEquipos_x_foliosIdFolio: TStringField;
    zQEquipos_x_foliosNumeroOrden: TStringField;
    zQEquipoSegiCantidad: TFloatField;
    zQEquipos_x_folioiCantidad: TFloatField;
    MenuImpresion: TPopupMenu;
    Imprimir1: TMenuItem;
    ImprimirTodos1: TMenuItem;
    ZQImprimeTodos: TZReadOnlyQuery;
    frxImprimeTodos: TfrxDBDataset;
    ReporteTodos: TfrxReport;
    ZQImprimeTodossIdEmpleado: TStringField;
    ZQImprimeTodossNombreCompleto: TStringField;
    ZQImprimeTodosiIdFolios: TIntegerField;
    ZQImprimeTodossIdFolio: TStringField;
    ZQImprimeTodosdFechaEntrega: TDateField;
    ZQImprimeTodossIdEquipo: TStringField;
    ZQImprimeTodossDescripcion: TMemoField;
    ZQImprimeTodossMarca: TStringField;
    ZQImprimeTodossModelo: TStringField;
    ZQImprimeTodossTalla: TStringField;
    ZQImprimeTodosFrente: TStringField;
    ZQImprimeTodosiCantidad: TFloatField;
    ZQImprimeTodosMotivo: TStringField;
    ZQImprimeSeleccion: TZReadOnlyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    DateField1: TDateField;
    StringField4: TStringField;
    MemoField1: TMemoField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField1: TFloatField;
    StringField9: TStringField;
    ReportaSeleccion: TfrxReport;
    frxImprimeSeleccion: TfrxDBDataset;
    ZQImprimeTodossPuesto: TStringField;
    ZQImprimeSeleccionsPuesto: TStringField;
    ZQImprimeTodosdFecha: TDateField;
    ZQImprimeSelecciondFecha: TDateField;
    zQFoliosiIdFolios: TIntegerField;
    zQFoliossIdEmpleado: TStringField;
    zQFoliosdFecha: TDateField;
    zQFoliossIdFolio: TStringField;
    edBusqEquipo: TEdit;
    Label1: TLabel;
    Panel3: TPanel;
    frmBarra1: TfrmBarra;
    Panel2: TPanel;
    NxHeaderPanel2: TNxHeaderPanel;
    Label5: TLabel;
    gridFolios: TDBGrid;
    lbFolio: TLabel;
    Label3: TLabel;
    diFolio: TDBEdit;
    ds_fecha: TJvDBDateEdit;
    qryEmpleados: TZReadOnlyQuery;
    qryEmpleadosIdPersonal: TIntegerField;
    qryEmpleadossIdEmpleado: TStringField;
    qryEmpleadosiIdEstatus: TIntegerField;
    qryEmpleadossNombreCompleto: TStringField;
    qryEmpleadossRfc: TStringField;
    qryEmpleadossDomicilio: TStringField;
    qryEmpleadossCiudad: TStringField;
    qryEmpleadossPuesto: TStringField;
    qryEmpleadoscodigodepartamento: TStringField;
    qryEmpleadossTelefono: TStringField;
    qryEmpleadosseMail: TStringField;
    qryEmpleadosdSueldo: TFloatField;
    qryEmpleadossCuenta: TStringField;
    qryEmpleadoslLabora: TStringField;
    qryEmpleadossBanco: TStringField;
    qryEmpleadossCuentaInterbancaria: TStringField;
    qryEmpleadossCurp: TStringField;
    qryEmpleadossImss: TStringField;
    qryEmpleadossEstadoCivil: TStringField;
    qryEmpleadosdFechaNacimiento: TDateField;
    qryEmpleadosdFechaTerminoLabores: TDateField;
    qryEmpleadosdFechaInicioLabores: TDateField;
    qryEmpleadosiId_Puesto: TIntegerField;
    qryEmpleadossLibretaMar: TStringField;
    qryEmpleadossCartilla: TStringField;
    qryEmpleadossCedulaProfesional: TStringField;
    qryEmpleadossLugarNacimiento: TStringField;
    qryEmpleadossCarrera: TStringField;
    qryEmpleadosdSalarioDiario: TFloatField;
    qryEmpleadosdFactorIntegracion: TFloatField;
    qryEmpleadosdPromedioVariables: TFloatField;
    qryEmpleadosdSalarioIntegrado: TFloatField;
    qryEmpleadossIdPersonal: TStringField;
    qryEmpleadossContrato: TStringField;
    qryEmpleadossTipoSangre: TStringField;
    qryEmpleadosdVigenciaLibreta: TDateField;
    qryEmpleadosdVigenciaCertMedico: TDateField;
    qryEmpleadossComentario: TStringField;
    qryEmpleadosIid_NumeroDeCuenta: TIntegerField;
    qryEmpleadoslImprimeNomina: TStringField;
    qryEmpleadosiEdad: TIntegerField;
    qryEmpleadoslSexo: TStringField;
    qryEmpleadosiIdhorario: TIntegerField;
    qryEmpleadossStatus: TStringField;
    qryEmpleadosidorganizacion: TIntegerField;
    qryEmpleadosiIdEstatusDiario: TIntegerField;
    qryEmpleadossCP: TStringField;
    qryEmpleadossApellidoPaterno: TStringField;
    qryEmpleadossApellidoMaterno: TStringField;
    qryEmpleadossInfonavit: TStringField;
    qryEmpleadossNoCreditoInfonavit: TStringField;
    qryEmpleadosiIdProfesiones: TIntegerField;
    qryEmpleadosid_entidadeseducativas: TIntegerField;
    qryEmpleadossTelefonoCelular: TStringField;
    qryEmpleadossNombre_Emergencia: TStringField;
    qryEmpleadossParentesco_Emergencia: TStringField;
    qryEmpleadossNumero_Emergencia: TStringField;
    qryEmpleadosiIdRegistroPatronal: TIntegerField;
    qryEmpleadosiIdPeriodo: TIntegerField;
    qryEmpleadosiIdDiasDescanso: TIntegerField;
    qryEmpleadosiIdNacionalidad: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure qryEmpleadosAfterScroll(DataSet: TDataSet);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure txtBusEmpleadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBusqEquipoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAsignarClick(Sender: TObject);
    procedure guardarClick(Sender: TObject);
    procedure btnDenegarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure zQEquipoSegAfterScroll(DataSet: TDataSet);
    procedure zQFoliosAfterScroll(DataSet: TDataSet);
    procedure tsdCantidadKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckbVigenciaClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure dblcb_FrenteEnter(Sender: TObject);
    procedure dblcb_FrenteExit(Sender: TObject);
    procedure dblcb_FrenteKeyPress(Sender: TObject; var Key: Char);
    procedure fchaAsignacionEnter(Sender: TObject);
    procedure fchaAsignacionExit(Sender: TObject);
    procedure dbSerieExit(Sender: TObject);
    procedure dbSerieEnter(Sender: TObject);
    procedure MotivoEnter(Sender: TObject);
    procedure MotivoExit(Sender: TObject);
    procedure tsdCantidadEnter(Sender: TObject);
    procedure tsdCantidadExit(Sender: TObject);
    procedure fchVigenciaExit(Sender: TObject);
    procedure fchVigenciaEnter(Sender: TObject);
    procedure fchaAsignacionKeyPress(Sender: TObject; var Key: Char);
    procedure dbSerieKeyPress(Sender: TObject; var Key: Char);
    procedure tsdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure MotivoKeyPress(Sender: TObject; var Key: Char);
    procedure fchVigenciaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirTodos1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure txtBusEmpleadoEnter(Sender: TObject);
    procedure txtBusEmpleadoExit(Sender: TObject);
    procedure diFolioEnter(Sender: TObject);
    procedure diFolioExit(Sender: TObject);
    procedure edBusqEquipoEnter(Sender: TObject);
    procedure edBusqEquipoExit(Sender: TObject);
    procedure ds_fechaEnter(Sender: TObject);
    procedure ds_fechaExit(Sender: TObject);
    procedure DBGrid_EmpleadosCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure cancelatransaccion;
    procedure finalizatransaccion;
    procedure iniciatransaccion;
  public
    { Public declarations }
  end;

var
  frmAsignaciondeEquipoSeg: TfrmAsignaciondeEquipoSeg;
  maxFolio, EquipodeSeguridad : integer;
  SavePlace     : TBookmark;
  cantant : double;
implementation

{$R *.dfm}

procedure TfrmAsignaciondeEquipoSeg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmAsignaciondeEquipoSeg.FormShow(Sender: TObject);
begin
    qryEmpleados.Open;

    zQFolios.Active := False;
    zQFolios.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').asstring;
    zQFolios.Open;

    zQEquipoSeg.Open;

    zQEquipos_x_folio.Open;

    zQfrente.Active := False;
    zQfrente.Params.ParamByName('Usuario').AsString := Global_Usuario;
    zQfrente.Open;

end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnAddClick(Sender: TObject);
begin
  DBGrid_Empleados.Enabled := false;
  gridFolios.Enabled := false;
  gridInsXEmpl.Enabled := false;
  gridInsumos.Enabled := false;
  diFolio.Enabled:=true;
  ds_fecha.Enabled:=true;
  iniciatransaccion;
  zQFolios.Append;
  ds_fecha.Date := date;
  zQFolios.FieldByName('sIdEmpleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').asstring;


  frmBarra1.btnAddClick(Sender);

end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnCancelClick(Sender: TObject);
begin
  diFolio.Enabled:=true;
  ds_fecha.Enabled:=true;
  DBGrid_Empleados.Enabled := true;
  gridFolios.Enabled := true;
  gridInsXEmpl.Enabled := true;
  gridInsumos.Enabled := true;
  zQFolios.Cancel;
  frmBarra1.btnCancelClick(Sender);

end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnDeleteClick(Sender: TObject);
begin
if zQFolios.RecordCount>0 then
  begin

      try
        if zQEquipos_x_folio.RecordCount>0 then
        begin
          raise Evalidaciones.Create('No se puede eliminar el Folio; el Folio contiene Equipos asignados.');
        end;
          iniciatransaccion;
          zQFolios.Delete;
          finalizatransaccion;
      except
        on e:Evalidaciones do
        begin
          messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
        end;
        on E:Exception do begin
        ShowMessage('Ocurrio un error al Eliminar, intentelo nuevamente mas tarde.' + E.Message);
        cancelatransaccion;
        frmBarra1.btnCancelClick(Sender);
        end;
      end;

  end;
end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnEditClick(Sender: TObject);
begin
  if zQFolios.RecordCount>0 then
  begin
  diFolio.Enabled:=true;
  ds_fecha.Enabled:=true;
  DBGrid_Empleados.Enabled := false;
  gridFolios.Enabled := false;
  gridInsXEmpl.Enabled := false;
  gridInsumos.Enabled := false;
  iniciatransaccion;
  zQFolios.Edit;
  frmBarra1.btnEditClick(Sender);
  end;
end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnPostClick(Sender: TObject);
var
  QryBusca : tzquery;
begin
  try
    if diFolio.Text='' then
    begin
       raise Evalidaciones.Create('"Debe Asignar un Folio."');
    end;
    QryBusca := TZQuery.Create(Self);
    QryBusca.Connection := connection.zConnection;
    QryBusca.Active := False;
    QryBusca.SQL.Text := 'select sIdFolio from folioasignacion_es where sIdFolio = :Folio and sIdEmpleado= :Empleado ';
    QryBusca.Params.ParamByName('Folio').AsString := diFolio.Text;
    QryBusca.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').asstring;
    QryBusca.Open;

    if QryBusca.RecordCount>0 then
    begin
      raise Evalidaciones.Create('"El Folio ya a sido asignado con anterioridad a otro registro."');
    end;

    zQFolios.Post;
    finalizatransaccion;
    

    DBGrid_Empleados.Enabled := true;
    gridFolios.Enabled := true;
    gridInsXEmpl.Enabled := true;
    gridInsumos.Enabled := true;
    diFolio.Enabled:=false;
    ds_fecha.Enabled:=false;
    frmBarra1.btnPostClick(Sender);
  except
    on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do begin
    ShowMessage('No se pudo generar el Folio, Intente mas tarde ' + E.Message);
    cancelatransaccion;
    frmBarra1.btnCancelClick(Sender);
    end;
  end;

end;

procedure TfrmAsignaciondeEquipoSeg.frmBarra1btnRefreshClick(Sender: TObject);
begin
 zQFolios.Refresh;

end;

procedure TfrmAsignaciondeEquipoSeg.guardarClick(Sender: TObject);
var
  QryBusca, Query : tzquery;
  Existencia, Entradas, Salidas :double;
  Equipo:integer;
begin
  try
    if zQFolios.RecordCount>0 then
    begin
      if Not (zQFolios.State in [dsEdit, dsInsert]) then
      begin
//      Equipo:
      if ckbVigencia.Checked = True then
        begin
        fchVigencia.Enabled:= true;
         //Valiadcion de fechas
          if (fchaAsignacion.Date > fchVigencia.Date) then
          begin
              raise Evalidaciones.Create('La fecha final es menor a la fecha inicial');
              fchaAsignacion.SetFocus;
          end
      end;
      if tsdCantidad.Text='' then
      begin
        zQEquipos_x_folio.FieldByName('iCantidad').Asfloat:= 1.00;
      end;

      if zQEquipos_x_folio.state=dsInsert then
      begin
        zQEquipos_x_folio.FieldByName('iActivo').AsInteger := 1;
        zQEquipos_x_folio.FieldByName('iIdFolio').AsInteger := zQFolios.FieldByName('iIdFolios').AsInteger;
        zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger := zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger;

      end;
      zQEquipos_x_folio.Post;

      try
        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'select sum(iCantidad) as entradas from equiposeguridad_entrada where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger;
        QryBusca.Open;
        Entradas:= QryBusca.FieldByName('entradas').AsFloat;

        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'select sum(iCantidad) as salidas from equiposeguridadxfolio where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger;
        QryBusca.Open;
        Salidas:= QryBusca.FieldByName('salidas').AsFloat;

            Existencia := Entradas - Salidas;

            Query := TZQuery.Create(Self);
            Query.Connection := connection.ZConnection;
            Query.Active := False;
            Query.SQL.Clear;
            Query.SQL.Add('UPDATE equiposeguridad_existencia SET iCantidad = :Existencia WHERE iIdEquipoSeguridad = :Equipo ');
            Query.Params.ParamByName('Existencia').AsFloat := Existencia;
            Query.Params.ParamByName('Equipo').AsInteger := zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger;
            Query.ExecSQL();

      Except
         on E:Exception do begin
           ShowMessage('Error al Actualizar las Existencia del Equipo' + E.Message);
         end;
      end;
      gridFolios.Enabled := true;
      gridInsXEmpl.Enabled := true;
      gridInsumos.Enabled := true;
      DBGrid_Empleados.Enabled := true;
      guardar.Enabled := False;
      btnDenegar.Enabled := True;
      btnAsignar.Enabled := True;
      btnCancelar.Enabled :=false;
      btnCancelar.Visible :=true;
      fchVigencia.Enabled:= false;
      finalizatransaccion;
      zQEquipoSeg.Refresh;
      end;
   end;
  except
    on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do begin
    ShowMessage('No se pudo Asignar el Equipo de Seguridad, Comuniquese con el Administrador del sistema ' + E.Message);
    cancelatransaccion;
    btnCancelar.Click;
    end;
  end;
end;

procedure TfrmAsignaciondeEquipoSeg.Imprimir1Click(Sender: TObject);
begin
 ZQImprimeSeleccion.Active:=false;
 ZQImprimeSeleccion.ParamByName('Empleado').asString:=qryEmpleados.FieldByName('sIdEmpleado').asstring;
 ZQImprimeSeleccion.Open;
 ReportaSeleccion.LoadFromFile(global_files+ 'AsignacionEquipodeSeguridad.fr3');
              ReportaSeleccion.ShowReport();
end;

procedure TfrmAsignaciondeEquipoSeg.ImprimirTodos1Click(Sender: TObject);
begin
 ZQImprimeTodos.Active:=false;
 ZQImprimeTodos.Open;
 ReporteTodos.LoadFromFile(global_files+ 'ImprimeAsignacionesTodas.fr3');
              ReporteTodos.ShowReport();
end;

procedure TfrmAsignaciondeEquipoSeg.qryEmpleadosAfterScroll(DataSet: TDataSet);
begin
  zQFolios.Active := False;
  zQFolios.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').asstring;
  zQFolios.Open;

  zQEquipos_x_folio.Active := False;
  zQEquipos_x_folio.Params.ParamByName('Folio').AsInteger := zQFolios.FieldByName('iIdFolios').AsInteger;
  zQEquipos_x_folio.Open;
end;
procedure TfrmAsignaciondeEquipoSeg.tsdCantidadEnter(Sender: TObject);
begin
tsdCantidad.Color := global_color_entradaERP;

end;

procedure TfrmAsignaciondeEquipoSeg.tsdCantidadExit(Sender: TObject);
begin

tsdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmAsignaciondeEquipoSeg.tsdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin

 if key = #13 then
       Motivo.SetFocus;
end;

procedure TfrmAsignaciondeEquipoSeg.tsdCantidadKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  QryBusca:tzquery;
  Entradas, Salidas, Existencia: Integer;
begin
if tsdCantidad.Text<>'' then
begin
if zQEquipos_x_folio.State=dsInsert then
begin
  if zQEquipoSeg.FieldByName('iCantidad').AsFloat < strtofloat(tsdCantidad.Text) then
    begin
      showmessage('La Cantidad que desea Asignar es Mayor a la Cantidad Disponible');
      tsdCantidad.Value:= 1.00;
    end;
end;

if zQEquipos_x_folio.State=dsEdit then
begin
  if (zQEquipoSeg.FieldByName('iCantidad').AsFloat + cantant) < strtofloat(tsdCantidad.Text) then
    begin
      showmessage('La Cantidad que desea Asignar es Mayor a la Cantidad Disponible');
      tsdCantidad.Value:= 1.00;
    end;
end;
end;

end;

procedure TfrmAsignaciondeEquipoSeg.txtBusEmpleadoEnter(Sender: TObject);
begin
  txtBusEmpleado.Color := global_color_entradaERP
end;

procedure TfrmAsignaciondeEquipoSeg.txtBusEmpleadoExit(Sender: TObject);
begin
  txtBusEmpleado.Color := global_color_salidaERP
end;

procedure TfrmAsignaciondeEquipoSeg.txtBusEmpleadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if length(trim(txtBusEmpleado.Text)) > 0 then
        begin
        qryEmpleados.Filtered := False;
        qryEmpleados.Filter := ' sNombreCompleto LIKE ' + QuotedStr('*' + txtBusEmpleado.Text + '*');
        qryEmpleados.Filtered := True;
        end
     else
        begin
        qryEmpleados.Filtered := False;
        end;
end;

procedure TfrmAsignaciondeEquipoSeg.zQEquipoSegAfterScroll(DataSet: TDataSet);
begin
  EquipodeSeguridad := zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger;
end;

procedure TfrmAsignaciondeEquipoSeg.zQFoliosAfterScroll(DataSet: TDataSet);
begin
  zQEquipos_x_folio.Active := False;
  zQEquipos_x_folio.Params.ParamByName('Folio').AsInteger := zQFolios.FieldByName('iIdFolios').AsInteger;
  zQEquipos_x_folio.Open;
end;

procedure TfrmAsignaciondeEquipoSeg.iniciatransaccion;
begin
     zqtransaction.SQL.Text := 'start transaction';
     zqtransaction.ExecSQL;

end;

procedure TfrmAsignaciondeEquipoSeg.MotivoEnter(Sender: TObject);
begin
Motivo.Color := global_color_entradaERP;

end;

procedure TfrmAsignaciondeEquipoSeg.MotivoExit(Sender: TObject);
begin

Motivo.Color := global_color_salidaERP;
end;

procedure TfrmAsignaciondeEquipoSeg.MotivoKeyPress(Sender: TObject;
  var Key: Char);
begin

 if key = #13 then
       dblcb_Frente.SetFocus;
end;

procedure TfrmAsignaciondeEquipoSeg.btnAsignarClick(Sender: TObject);
var
  QryBusca: tzquery;
begin

  try
   if zQEquipoSeg.RecordCount<=0 then
      begin
      raise Evalidaciones.Create('No hay Equipos para asignar.');
      end;
    if zQFolios.RecordCount>0 then
    begin

      if Not (zQFolios.State in [dsEdit, dsInsert]) then
      begin
      gridInsXEmpl.Enabled := false;
      gridInsumos.Enabled := false;
      DBGrid_Empleados.Enabled := false;
      gridFolios.Enabled := false;
      guardar.Enabled := true;
      btnDenegar.Enabled := false;
      btnAsignar.Enabled := false;
      btnCancelar.Visible :=true;
      btnCancelar.Enabled :=true;
      ckbVigencia.Enabled :=true;
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := connection.zConnection;
      QryBusca.Active := False;
      QryBusca.SQL.Text := 'select iIdEquipoSeguridad from equiposeguridadxfolio where iIdEquipoSeguridad = :Equipo and iIdFolio =:Folio ';
      QryBusca.Params.ParamByName('Equipo').AsInteger := EquipodeSeguridad;
      QryBusca.Params.ParamByName('Folio').AsInteger :=zQFolios.FieldByName('iIdFolios').AsInteger;
      QryBusca.Open;
      if QryBusca.RecordCount>0 then
      begin
        if MessageDlg('Este material ya está asignado, ¿deseas cambiar la cantidad que ya tiene?', mtConfirmation, mbOkCancel, 0) = mrOk then begin
        iniciatransaccion;
        zQEquipos_x_folio.Locate('iIdEquipoSeguridad', zQEquipoSeg.FieldByName('iIdEquipoSeguridad').AsInteger,[locaseinsensitive]);
        SavePlace := zQEquipos_x_folio.GetBookmark ;
        zQEquipos_x_folio.GotoBookmark(SavePlace);
        zQEquipos_x_folio.Edit;
        cantant:= zQEquipos_x_folio.FieldByName('iCantidad').AsFloat;
        dblcb_Frente.SetFocus;
        end else begin
        zQEquipos_x_folio.Cancel;
        btnCancelar.Click;
        end;
      end else begin
       iniciatransaccion;
       zQEquipos_x_folio.Append;
       tsdCantidad.Text:= '1.00';
      fchaAsignacion.Date:= Date;
      zQfrente.RecNo:= 1;
      dblcb_Frente.KeyValue := zQfrente.FieldByName('sIdFolio').AsString;
      zQEquipos_x_folio.FieldByName('sIdFolio').AsString:=zQfrente.FieldByName('sIdFolio').AsString;
      dblcb_Frente.SetFocus;
      end;
      end;
    end;

  except
  on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do begin
    ShowMessage('No se pudo Asignar este Equipo de Seguridad; Comunique este error al Administrador ' + E.Message);
    end;
  end;
  end;

procedure TfrmAsignaciondeEquipoSeg.btnCancelarClick(Sender: TObject);
begin
  if zQFolios.RecordCount>0 then
  begin
    if Not (zQFolios.State in [dsEdit, dsInsert]) then
    begin
//     cancelatransaccion;
     zQEquipos_x_folio.Cancel;
     guardar.Enabled := false;
     gridInsXEmpl.Enabled := true;
     gridInsumos.Enabled := true;
     DBGrid_Empleados.Enabled := true;
     gridFolios.Enabled := true;
     btnDenegar.Enabled := true;
     btnAsignar.Enabled := true;
     btnCancelar.Enabled :=false;
     btnCancelar.Visible :=false;
     fchVigencia.Enabled:= false;
    end;
  end;
end;

procedure TfrmAsignaciondeEquipoSeg.btnDenegarClick(Sender: TObject);
var
  QryBusca, Query : tzquery;
  Existencia, Salidas :double;
begin
try
  if zQEquipos_x_folio.RecordCount>0 then
  begin
    if Not (zQFolios.State in [dsEdit, dsInsert]) then
    begin

      try
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := connection.ZConnection;
      QryBusca.Active := False;
      QryBusca.SQL.Clear;
      QryBusca.SQL.Text := 'select sum(iCantidad) as Existencia from equiposeguridad_existencia WHERE iIdEquipoSeguridad = :Equipo ';
      QryBusca.Params.ParamByName('Equipo').AsInteger := zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger;
      QryBusca.Open;
      Existencia:=QryBusca.FieldByName('Existencia').AsFloat;

        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Text := 'select sum(iCantidad) as salidas from equiposeguridadxfolio where iIdEquipoSeguridad = :Equipo ';
        QryBusca.Params.ParamByName('Equipo').AsInteger := zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger;
        QryBusca.Open;
        Salidas:= QryBusca.FieldByName('salidas').AsFloat;

        if zQEquipos_x_folio.RecordCount>0 then
          begin

          Existencia := Existencia + Salidas;

          iniciatransaccion;
            Query := TZQuery.Create(Self);
            Query.Connection := connection.ZConnection;
            Query.Active := False;
            Query.SQL.Clear;
            Query.SQL.Add('UPDATE equiposeguridad_existencia SET iCantidad = :Existencia WHERE iIdEquipoSeguridad = :Equipo ');
            Query.Params.ParamByName('Existencia').AsFloat := Existencia;
            Query.Params.ParamByName('Equipo').AsInteger := zQEquipos_x_folio.FieldByName('iIdEquipoSeguridad').AsInteger;
            Query.ExecSQL();
          end;
          
      zQEquipos_x_folio.Delete;

      Except
         on E:Exception do begin
           ShowMessage('Error al Actualizar las Existencia del Equipo' + E.Message);
           cancelatransaccion;
         end;
      end;
      finalizatransaccion;
      zQEquipoSeg.Refresh;
      guardar.Enabled := false;
      btnDenegar.Enabled := true;
      btnAsignar.Enabled := true;
      btnCancelar.Visible :=false;
      btnCancelar.Enabled :=false;
    end;
  end;
  except
    on E:Exception do begin
    ShowMessage('No se pudo Borrar el Registro del Equipo de Seguridad, Comuniquese con el Administrador del sistema ' + E.Message);
    cancelatransaccion;
    btnCancelar.Click;
    end;
  end;
end;


procedure TfrmAsignaciondeEquipoSeg.cancelatransaccion;
begin
    zqtransaction.SQL.Text := 'rollback';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;

procedure TfrmAsignaciondeEquipoSeg.ckbVigenciaClick(Sender: TObject);
begin

 if (zQEquipos_x_folio.State in [dsEdit, dsInsert]) then
 begin
    if ckbVigencia.Checked = True then
      begin
        fchVigencia.Enabled:= true;
        fchVigencia.Date:= Date;
      end else begin
        fchVigencia.Enabled:= false;
      end;
 end;


end;

procedure TfrmAsignaciondeEquipoSeg.DBGrid_EmpleadosCellClick(Column: TColumn);
begin
    zQFolios.Active := False;
    zQFolios.SQL.Text := 'select * from folioasignacion_es where sIdEmpleado = :Empleado';
    zQFolios.Params.ParamByName('Empleado').AsString := qryEmpleados.FieldByName('sIdEmpleado').asstring;
    zQFolios.Open;
end;

procedure TfrmAsignaciondeEquipoSeg.dblcb_FrenteEnter(Sender: TObject);
begin
dblcb_Frente.Color := global_color_entradaERP;

end;

procedure TfrmAsignaciondeEquipoSeg.dblcb_FrenteExit(Sender: TObject);
begin

dblcb_Frente.Color := global_color_salidaERP;
end;

procedure TfrmAsignaciondeEquipoSeg.dblcb_FrenteKeyPress(Sender: TObject;
  var Key: Char);
begin

 if key = #13 then
       fchaAsignacion.SetFocus;
end;

procedure TfrmAsignaciondeEquipoSeg.dbSerieEnter(Sender: TObject);
begin
dbSerie.Color := global_color_entradaERP;

end;

procedure TfrmAsignaciondeEquipoSeg.dbSerieExit(Sender: TObject);
begin

dbSerie.Color := global_color_salidaERP;
end;

procedure TfrmAsignaciondeEquipoSeg.dbSerieKeyPress(Sender: TObject;
  var Key: Char);
begin

 if key = #13 then
       tsdCantidad.SetFocus;
end;

procedure TfrmAsignaciondeEquipoSeg.diFolioEnter(Sender: TObject);
begin
  diFolio.Color := global_color_entradaERP
end;

procedure TfrmAsignaciondeEquipoSeg.diFolioExit(Sender: TObject);
begin
  diFolio.Color := global_color_salidaERP
end;

procedure TfrmAsignaciondeEquipoSeg.ds_fechaEnter(Sender: TObject);
begin
  ds_fecha.Color := global_color_entradaERP
end;

procedure TfrmAsignaciondeEquipoSeg.ds_fechaExit(Sender: TObject);
begin
  ds_fecha.Color := global_color_salidaERP
end;

procedure TfrmAsignaciondeEquipoSeg.edBusqEquipoEnter(Sender: TObject);
begin
  edBusqEquipo.Color := global_color_entradaERP
end;

procedure TfrmAsignaciondeEquipoSeg.edBusqEquipoExit(Sender: TObject);
begin
  edBusqEquipo.Color := global_color_salidaERP
end;

procedure TfrmAsignaciondeEquipoSeg.edBusqEquipoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if length(trim(edBusqEquipo.Text)) > 0 then
        begin
        zQEquipoSeg.Filtered := False;
        zQEquipoSeg.Filter := ' sDescripcion LIKE ' + QuotedStr('*' + edBusqEquipo.Text + '* ');
        zQEquipoSeg.Filtered := True;
        end
     else
        begin
        zQEquipoSeg.Filtered := False;
        end;
end;

procedure TfrmAsignaciondeEquipoSeg.fchaAsignacionEnter(Sender: TObject);
begin
fchaAsignacion.Color := global_color_entradaERP;

end;

procedure TfrmAsignaciondeEquipoSeg.fchaAsignacionExit(Sender: TObject);
begin
fchaAsignacion.Color := global_color_salidaERP;
end;

procedure TfrmAsignaciondeEquipoSeg.fchaAsignacionKeyPress(Sender: TObject;
  var Key: Char);
begin

    if ckbVigencia.Checked = True then
      begin
         if key = #13 then
         fchVigencia.SetFocus;
      end else begin
        if ckbVigencia.Checked = false then
        begin
        if key = #13 then
        dbSerie.SetFocus;
        end;
      end;
end;

procedure TfrmAsignaciondeEquipoSeg.fchVigenciaEnter(Sender: TObject);
begin
fchVigencia.Color := global_color_entrada;

end;

procedure TfrmAsignaciondeEquipoSeg.fchVigenciaExit(Sender: TObject);
begin

fchVigencia.Color := global_color_salida;
end;

procedure TfrmAsignaciondeEquipoSeg.fchVigenciaKeyPress(Sender: TObject;
  var Key: Char);
begin

    if ckbVigencia.Checked = True then
      begin
         if key = #13 then
       dbSerie.SetFocus;
      end;

end;

procedure TfrmAsignaciondeEquipoSeg.finalizatransaccion;
begin
    zqtransaction.SQL.Text := 'commit';
    zqtransaction.ExecSQL;
    zqtransaction.Close;
end;
end.
