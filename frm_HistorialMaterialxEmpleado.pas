unit frm_HistorialMaterialxEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, DBCtrls, StdCtrls, Buttons, Grids,
  DBGrids, sLabel, ZAbstractDataset, global, frm_connection, ExtCtrls, Mask,
  rxToolEdit, AdvGlowButton, ImgList, frxClass, frxDBSet, JvMemoryDataset,
  WinXP, NxCollection, sGroupBox;

type
  TfrmHistorialMaterialxEmpleado = class(TForm)
    lbEmpleado: TsWebLabel;
    tzEmpleado: TZReadOnlyQuery;
    dsEmpleado: TDataSource;
    txtEmpleado: TEdit;
    dgEmpleados: TDBGrid;
    sWebLabel3: TsWebLabel;
    deInicio: TDateEdit;
    sWebLabel1: TsWebLabel;
    sWebLabel2: TsWebLabel;
    deFin: TDateEdit;
    ImgBtns: TImageList;
    ReporteMaterialesxPersonal: TfrxReport;
    fdsMaterialesxPersona: TfrxDBDataset;
    tzMaterialesxPersona: TZQuery;
    tzEmpleadosContrato: TStringField;
    tzEmpleadosIdEmpleado: TStringField;
    tzEmpleadosDomicilio: TStringField;
    tzEmpleadosCiudad: TStringField;
    tzEmpleadosTelefono: TStringField;
    tzEmpleadosCurp: TStringField;
    tzEmpleadosRfc: TStringField;
    tzEmpleadosImss: TStringField;
    tzMaterialesxPersonasNombre: TStringField;
    tzMaterialesxPersonamaterial: TMemoField;
    tzMaterialesxPersonadFechaEntrega: TDateField;
    tzMaterialesxPersonadFechaExpira: TDateField;
    tzMaterialesxPersonasDescripcion: TStringField;
    tzMaterialesxPersonaalmacen: TStringField;
    tzMaterialesxPersonasIdEmpleado: TStringField;
    tzMaterialesxPersonapuesto: TStringField;
    sWebLabel4: TsWebLabel;
    sWebLabel5: TsWebLabel;
    tzqProyecto: TZQuery;
    tzqFrente: TZQuery;
    dsProyecto: TDataSource;
    dsFrente: TDataSource;
    cbProyecto: TDBLookupComboBox;
    cbFrente: TDBLookupComboBox;
    tzMaterialesxPersonasCantidad: TIntegerField;
    ReporteAsignacion: TfrxReport;
    fdsAsignados: TfrxDBDataset;
    memoAsignadosNumero: TIntegerField;
    memoAsignadosNombre: TStringField;
    memoAsignadosCategoria: TStringField;
    memoAsignadosProyecto: TStringField;
    memoAsignadosFrente: TStringField;
    memoAsignadosOCantidad: TIntegerField;
    memoAsignadosOMarca: TStringField;
    memoAsignadosBTipo: TStringField;
    memoAsignadosBSerie: TStringField;
    memoAsignadosBMarca: TStringField;
    memoAsignadosGTpvc: TIntegerField;
    memoAsignadosGTcarnaza: TIntegerField;
    memoAsignadosGTsteel: TIntegerField;
    memoAsignadosGTmulti: TIntegerField;
    memoAsignadosGTelec: TIntegerField;
    memoAsignadosGTsold: TIntegerField;
    memoAsignadosFCantidad: TIntegerField;
    memoAsignadosLentes: TIntegerField;
    memoAsignadosCascos: TIntegerField;
    memoAsignadosTapAudi: TIntegerField;
    memoAsignadosBarriquejo: TIntegerField;
    memoAsignadosChaleco: TIntegerField;
    memoAsignados: TJvMemoryData;
    HeaderEmpleados: TNxHeaderPanel;
    filtros: TsGroupBox;
    btnConsultar: TAdvGlowButton;
    memoAsignadosidEmpleado: TStringField;
    memoAsignadosOTalla: TStringField;
    memoAsignadosBTalla: TStringField;
    memoAsignadosFTalla: TStringField;
    tzEmpleadosDescripcion: TStringField;
    tzEmpleadosIdFolio: TStringField;
    tzEmpleadosNombreCompleto: TStringField;
    Panel2: TPanel;
    btnSeleccionados: TAdvGlowButton;
    btnTodos: TAdvGlowButton;
    tipo_reporte: TGroupBox;
    rbnAsigAct: TRadioButton;
    rbnAsigPas: TRadioButton;
    tzqProyectosContrato: TStringField;
    tzqProyectocontrato: TMemoField;
    tzqFrentesIdFolio: TStringField;
    tzqFrentesNumeroOrden: TStringField;
    tzqFrentenFrente: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure txtEmpleadoEnter(Sender: TObject);
    procedure txtEmpleadoExit(Sender: TObject);
    procedure txtEmpleadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSeleccionadosClick(Sender: TObject);
    procedure deInicioEnter(Sender: TObject);
    procedure deInicioExit(Sender: TObject);
    procedure deFinEnter(Sender: TObject);
    procedure deFinExit(Sender: TObject);
    procedure btnTodosClick(Sender: TObject);
    procedure cbProyectoClick(Sender: TObject);
    procedure cbProyectoEnter(Sender: TObject);
    procedure cbProyectoExit(Sender: TObject);
    procedure cbFrenteEnter(Sender: TObject);
    procedure cbFrenteExit(Sender: TObject);
    procedure ReporteMaterialesxPersonalPrintReport(Sender: TObject);
    procedure Asignados_Actuales;
    procedure btnConsultarClick(Sender: TObject);
    procedure cbFrenteClick(Sender: TObject);
    procedure deInicioChange(Sender: TObject);
    procedure deFinChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistorialMaterialxEmpleado: TfrmHistorialMaterialxEmpleado;
  Actual_almacen: string;
  IdEmpleado : string;
  SavePlace: TBookmark;
  iGrid : integer;
  iGridEmpleados : integer;
  cadena, empleados : string;
  consulta : string;
  material : string;
  contrato, frente, empleado, folio : string;
  tzFolio : TZQuery;
  tzqEmpleados, tzqOveroles, tzqBotas, tzqGuantesPvc, tzqGuantesCarnaza, tzqGuantesSteel, tzqGuantesMulti,
  tzqGuantesElect, tzqGuantesSold, tzqFaja, tzqLentes, tzqCasco, tzqTapAudi, tzqBarbiquejo, tzqChaleco, qryPlataforma  : TZQuery;
  Linea : Integer;
  Siguiente, entra : Boolean;
  Numero : Integer;
  familias, subfamilias : string;
  TipoSubFamilia : Integer;

implementation

{$R *.dfm}

procedure TfrmHistorialMaterialxEmpleado.btnTodosClick(Sender: TObject);
begin

    if cbProyecto.Text <> '' then begin
        contrato := ' AND d.sContrato = ' + ''''+ tzqProyecto.FieldByName('sContrato').AsString + ''' ';
    end else begin
        contrato := '';
    end;
    if cbFrente.Text <> '' then begin
        frente := ' AND d.sIdFolio = ' + ''''+ tzqFrente.FieldByName('sIdFolio').AsString + ''' ';
    end else begin
        frente := '';
    end;
    if txtEmpleado.Text <> '' then begin
        empleado := ' AND e.sNombreCompleto LIKE ' + QuotedStr('%' + txtEmpleado.Text + '%')+' ';
    end else begin
        empleado := '';
    end;

    ////////////////////////////////si selecciona Asignaciones Pasadas
    if rbnAsigPas.Checked then
    begin
        consulta := 'SELECT ' +
                   'f.dFechaEntrega, ' +
                   'a.dFechaDevolucion, ' +
                   'alm.sDescripcion AS almacen, ' +
                   'e.sNombreCompleto, ' +
                   'per.sDescripcion AS puesto, ' +
                   'ins.mDescripcion AS material, ' +
                   'e.sIdEmpleado, ' +
                   'a.sMotivo, ' +
                   'f.iCantidad ' +
                  'FROM ' +
                   'alm_devolucioninsumos AS a ' +
                   'INNER JOIN alm_foliosinsumos AS b ' +
                    'ON (a.iFolios = b.iFolios) ' +
                   'INNER JOIN insumos AS ins ' +
                    'ON (ins.sIdInsumo = a.sIdInsumo) ' +
                   'INNER JOIN almacenes AS alm ' +
                    'ON (alm.sIdAlmacen = ins.sIdAlmacen) ' +
                   'INNER JOIN empleados AS e ' +
                    'ON (b.sIdEmpleado = e.sIdEmpleado) ' +
                   'INNER JOIN personal AS per ' +
                    'ON (e.sIdPersonal = per.sIdPersonal AND e.sContrato = per.sContrato) ' +
                    'INNER JOIN alm_empleado_insumo AS f ' +
                     'ON (f.iId = a.iId) ' +
                    'INNER JOIN guardias AS d ' +
                      'ON (b.sIdEmpleado = d.sIdEmpleado) ' +
                  'WHERE ' +
                   '(d.dFechaSubida = :FechaI AND d.dFechaBajada = :FechaF) ' +
                  'AND dFechaDevolucion BETWEEN :FechaI AND :FechaF ' +
                  'AND e.sContrato = :ContratoP ' +
                  contrato +
                  frente +
                  empleado;
          tzMaterialesxPersona.Active := False;
          tzMaterialesxPersona.SQL.Clear;
          tzMaterialesxPersona.SQL.Text := consulta;
          tzMaterialesxPersona.Params.ParamByName('FechaI').AsDate      :=  deInicio.Date;
          tzMaterialesxPersona.Params.ParamByName('FechaF').AsDate      :=  deFin.Date;
          tzMaterialesxPersona.Params.ParamByName('ContratoP').AsString :=  global_contrato;
          tzMaterialesxPersona.Open;
          if tzMaterialesxPersona.RecordCount > 0 then
          begin
                tzFolio.SQL.Text := 'SELECT MAX(iFolios) AS folio FROM alm_empleado_insumo;';
                tzFolio.Open;
                folio := IntToStr(tzFolio.FieldByName('folio').AsInteger + 1);
                case length(folio) of
                    1 : begin folio := '000'+folio; end;
                    2 : begin folio := '00'+folio; end;
                    3 : begin folio := '0'+folio; end;
                end;
                ReporteMaterialesxPersonal.Variables.Variables['frente'] := QuotedStr(''+tzqFrente.FieldByName('sIdFolio').AsString+'');
                ReporteMaterialesxPersonal.Variables.Variables['plataforma'] := QuotedStr(''+qryPlataforma.FieldByName('plataforma').AsString+'');
                ReporteMaterialesxPersonal.Variables.Variables['fecha2'] := QuotedStr('Fecha de Devolución');
                ReporteMaterialesxPersonal.Variables.Variables['leyenda'] := QuotedStr('Materiales que le han asignado al Trabajador entre las fechas: ');
                ReporteMaterialesxPersonal.Variables.Variables['folio'] := QuotedStr(''+folio+'');
                ReporteMaterialesxPersonal.Variables.Variables['fecha_Inicio'] := QuotedStr(''+deInicio.text+'');
                ReporteMaterialesxPersonal.Variables.Variables['fecha_Fin'] := QuotedStr(''+deFin.text+'');
                ReporteMaterialesxPersonal.ShowReport();
          end else begin
              MessageDlg('No Hay Materiales Devueltos para los o el Empleado entre el Rango de Fechas Seleccionado.',mtConfirmation,[mbOk],0);
          end;
      end;
      ////////////////////////////////////si selecciona Asignaciones Actuales
      if rbnAsigAct.Checked then
      begin
          tzqEmpleados.SQL.Text := 'SELECT e.sIdEmpleado, e.sNombreCompleto, b.sDescripcion ' +
                                   'FROM empleados As e ' +
                                   'INNER JOIN personal AS b ON (e.sIdPersonal = b.sIdPersonal AND e.sContrato = b.sContrato) ' +
                                   'INNER JOIN guardias AS d ON (e.sIdEmpleado = d.sIdEmpleado) '+
                                   'WHERE (d.dFechaBajada = :FechaI AND d.dFechaSubida = :FechaF) ' +
                                   contrato +
                                   frente +
                                   empleado +
                                   'ORDER BY sNombreCompleto;';
          //showMessage(tzqEmpleados.SQL.Text);
          tzqEmpleados.Params.ParamByName('FechaI').AsDate := deInicio.Date;
          tzqEmpleados.Params.ParamByName('FechaF').AsDate := deFin.Date;
          tzqEmpleados.Open;
          Asignados_Actuales;
      end;
end;

procedure TfrmHistorialMaterialxEmpleado.btnConsultarClick(Sender: TObject);
begin
    if cbProyecto.Text = '' then begin
      MessageDlg('Seleccione el Contrato.',mtConfirmation,[mbOk],0);
      cbProyecto.SetFocus;
      exit;
    end;
    if cbFrente.Text = '' then begin
      MessageDlg('Seleccione el Frente.',mtConfirmation,[mbOk],0);
      cbFrente.SetFocus;
      exit;
    end;
    if deInicio.Text = '' then begin
      MessageDlg('Seleccione la Fecha de Inicio de la Búsqueda.',mtConfirmation,[mbOk],0);
      deInicio.SetFocus;
      exit;
    end;
    if deFin.Text = '' then begin
      MessageDlg('Seleccione la Fecha de Término de la Búsqueda.',mtConfirmation,[mbOk],0);
      deFin.SetFocus;
      exit;
    end;

    tzEmpleado.Active := False;
    tzEmpleado.Params.ParamByName('contrato').AsString := tzqProyecto.FieldByName('sContrato').AsString;
    tzEmpleado.Params.ParamByName('frente').AsString := tzqFrente.FieldByName('sIdFolio').AsString;
    tzEmpleado.Params.ParamByName('inicio').AsDate := deInicio.Date;
    tzEmpleado.Params.ParamByName('fin').AsDate := deFin.Date;
    tzEmpleado.Params.ParamByName('contrato_').AsString := global_contrato;
    tzEmpleado.Open;

    if txtEmpleado.Text <> '' then begin
        empleado := ' sNombreCompleto LIKE ' + QuotedStr('*' + txtEmpleado.Text + '* ')+' ';
    end else begin
        empleado := '';
    end;

    tzEmpleado.Filtered := False;
    tzEmpleado.Filter := empleado;
    tzEmpleado.Filtered := True;

    btnSeleccionados.Enabled := True;
    btnTodos.Enabled := True;

end;

procedure TfrmHistorialMaterialxEmpleado.btnSeleccionadosClick(Sender: TObject);
begin
    cadena := '';
    empleados := '';
    SavePlace := dgEmpleados.DataSource.DataSet.GetBookmark;
    with dgEmpleados.DataSource.DataSet do
    begin
        for iGridEmpleados := 0 to dgEmpleados.SelectedRows.Count - 1 do
        begin
          try
              GotoBookmark(Pointer(dgEmpleados.SelectedRows.Items[iGridEmpleados]));
              cadena := cadena + '''' + tzEmpleado.FieldByName('sIdEmpleado').AsString +''',';
          Except
            on e: exception do
              begin
                MessageDlg('Seleccione un Empleado.',mtConfirmation,[mbOk],0);
                exit;
              end;
          end;
        end;
    end;
    empleados := copy(cadena,0,Length(cadena)-1);
    if length(trim(empleados)) = 0 then
    begin
       MessageDlg('Seleccione un Empleado.',mtConfirmation,[mbOk],0);
       exit;
    end;

  if iGridEmpleados > 0 then begin
  ////////////////////////////////si selecciona Asignaciones Pasadas
    if rbnAsigPas.Checked then
    begin
        consulta := 'SELECT ' +
                   'f.dFechaEntrega, ' +
                   'a.dFechaDevolucion, ' +
                   'alm.sDescripcion AS almacen, ' +
                   'c.sNombreCompleto, ' +
                   'per.sDescripcion AS puesto, ' +
                   'ins.mDescripcion AS material, ' +
                   'c.sIdEmpleado, ' +
                   'a.sMotivo, ' +
                   'f.iCantidad ' +
                  'FROM ' +
                   'alm_devolucioninsumos AS a ' +
                   'INNER JOIN alm_foliosinsumos AS b ' +
                    'ON (a.iFolios = b.iFolios) ' +
                   'INNER JOIN insumos AS ins ' +
                    'ON (ins.sIdInsumo = a.sIdInsumo) ' +
                   'INNER JOIN almacenes AS alm ' +
                    'ON (alm.sIdAlmacen = ins.sIdAlmacen) ' +
                   'INNER JOIN empleados AS c ' +
                    'ON (b.sIdEmpleado = c.sIdEmpleado) ' +
                   'INNER JOIN personal AS per ' +
                    'ON (c.sIdPersonal = per.sIdPersonal AND c.sContrato = per.sContrato) ' +
                    'INNER JOIN alm_empleado_insumo AS f ' +
                     'ON (f.iId = a.iId) ' +
                  'WHERE ' +
                   'c.sIdEmpleado IN ('+empleados+') ' +
                  'AND dFechaDevolucion BETWEEN :FechaI AND :FechaF ';
        //ShowMessage(consulta);
        //sql.Text :=  consulta;
        tzMaterialesxPersona.Active := False;
        tzMaterialesxPersona.SQL.Clear;
        tzMaterialesxPersona.SQL.Text := consulta;
        tzMaterialesxPersona.Params.ParamByName('FechaI').AsDate := deInicio.Date;
        tzMaterialesxPersona.Params.ParamByName('FechaF').AsDate := deFin.Date;
        tzMaterialesxPersona.Open;
        if tzMaterialesxPersona.RecordCount > 0 then begin
            tzFolio.SQL.Text := 'SELECT MAX(iFolios) AS folio FROM alm_empleado_insumo;';
            tzFolio.Open;
            folio := IntToStr(tzFolio.FieldByName('folio').AsInteger + 1);
            case length(folio) of
              1 : begin folio := '000'+folio; end;
              2 : begin folio := '00'+folio; end;
              3 : begin folio := '0'+folio; end;
            end;
            ReporteMaterialesxPersonal.Variables.Variables['frente'] := QuotedStr(''+tzqFrente.FieldByName('sIdFolio').AsString+'');
            ReporteMaterialesxPersonal.Variables.Variables['plataforma'] := QuotedStr(''+qryPlataforma.FieldByName('plataforma').AsString+'');
            ReporteMaterialesxPersonal.Variables.Variables['fecha2'] := QuotedStr('Fecha de Devolución');
            ReporteMaterialesxPersonal.Variables.Variables['leyenda'] := QuotedStr('Materiales que le han asignado al Trabajador entre las fechas: ');
            ReporteMaterialesxPersonal.Variables.Variables['folio'] := QuotedStr(''+folio+'');
            ReporteMaterialesxPersonal.Variables.Variables['fecha_Inicio'] := QuotedStr(''+deInicio.text+'');
            ReporteMaterialesxPersonal.Variables.Variables['fecha_Fin'] := QuotedStr(''+deFin.text+'');
            ReporteMaterialesxPersonal.ShowReport();
        end else begin
          MessageDlg('No Hay Materiales Devueltos para los o el Empleado entre el Rango de Fechas Seleccionado.',mtConfirmation,[mbOk],0);
          exit;
        end;
    end;
    ////////////////////////////////////si selecciona Asignaciones Actuales
    if rbnAsigAct.Checked then
    begin
        tzqEmpleados.SQL.Text := 'SELECT a.sIdEmpleado, a.sNombreCompleto, b.sDescripcion ' +
                                 'FROM empleados As a ' +
                                 'INNER JOIN personal AS b ON (a.sIdPersonal = b.sIdPersonal AND a.sContrato = b.sContrato) ' +
                                 'WHERE a.sIdEmpleado IN('+empleados+');';
        //showMessage(empleados);
        tzqEmpleados.Open;
        Asignados_Actuales;
    end;
  end else begin
        MessageDlg('Seleccione un Empleado.',mtConfirmation,[mbOk],0);
        exit;
  end;
end;

procedure TfrmHistorialMaterialxEmpleado.cbFrenteClick(Sender: TObject);
begin
    if tzqFrente.RecordCount > 0 then
    begin
      qryPlataforma.Active := False;
      qryPlataforma.SQL.Text := 'SELECT a.sDescripcion AS plataforma FROM plataformas AS a INNER JOIN ordenesdetrabajo AS b ON (a.sIdPlataforma = b.sIdPlataforma) WHERE sContrato = ' + QuotedStr(tzqProyecto.FieldByName('sContrato').AsString) + ' AND sIdFolio = ' + QuotedStr(tzqFrente.FieldByName('sIdFolio').AsString);
      qryPlataforma.Open;
    end;
    tzEmpleado.Close;
end;

procedure TfrmHistorialMaterialxEmpleado.cbFrenteEnter(Sender: TObject);
begin
      cbFrente.Color := global_color_entradaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.cbFrenteExit(Sender: TObject);
begin
    cbFrente.Color := global_color_salidaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.cbProyectoClick(Sender: TObject);
begin
  if tzqProyecto.RecordCount > 0 then
  begin
    contrato := tzqProyecto.FieldByName('sContrato').AsString;
    tzqFrente.Active := False;
    tzqFrente.Params.ParamByName('Contrato').AsString := contrato;
    tzqFrente.Open;
    cbFrente.KeyValue := tzqFrente.FieldByName('sIdFolio').AsString;
  end;
  tzEmpleado.Close;
end;

procedure TfrmHistorialMaterialxEmpleado.cbProyectoEnter(Sender: TObject);
begin
    cbProyecto.Color := global_color_entradaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.cbProyectoExit(Sender: TObject);
begin
    cbProyecto.Color := global_color_salidaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.deFinChange(Sender: TObject);
begin
      tzEmpleado.Close;
end;

procedure TfrmHistorialMaterialxEmpleado.deFinEnter(Sender: TObject);
begin
   deFin.Color := global_color_entradaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.deFinExit(Sender: TObject);
begin
  deFin.Color := global_color_salidaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.deInicioChange(Sender: TObject);
begin
    tzEmpleado.Close;
end;

procedure TfrmHistorialMaterialxEmpleado.deInicioEnter(Sender: TObject);
begin
  deInicio.Color := global_color_entradaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.deInicioExit(Sender: TObject);
begin
  deInicio.Color := global_color_salidaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := CaFree;
end;

procedure TfrmHistorialMaterialxEmpleado.FormShow(Sender: TObject);
begin
  deInicio.Date := date();
  deFin.Date    := date();

  //cbProyecto := '-Seleccione-';
  tzqProyecto.Active := False;
  tzqProyecto.Open;
  cbProyecto.KeyValue := tzqProyecto.FieldByName('sContrato').AsString;

  //showmessage(cbProyecto.Text);
  tzFolio := TZQuery.Create(self);
  tzFolio.Name := 'tzFolio';
  tzFolio.Connection := connection.zConnection;

  qryPlataforma := TZQuery.Create(self);
  qryPlataforma.Connection := connection.zConnection;

  tzqEmpleados := TZQuery.Create(self);
  tzqEmpleados.Connection := connection.zConnection;;

end;

procedure TfrmHistorialMaterialxEmpleado.ReporteMaterialesxPersonalPrintReport(
  Sender: TObject);
begin
      tzFolio.SQL.Text := 'UPDATE alm_empleado_insumo SET iFolio = ' + IntToStr(tzFolio.FieldByName('folio').AsInteger + 1) + ';';
      tzFolio.Open;
end;

procedure TfrmHistorialMaterialxEmpleado.txtEmpleadoEnter(Sender: TObject);
begin
  txtEmpleado.Color :=  global_color_entradaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.txtEmpleadoExit(Sender: TObject);
begin
    txtEmpleado.Color :=  global_color_salidaERP;
end;

procedure TfrmHistorialMaterialxEmpleado.txtEmpleadoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if tzEmpleado.Active = True then////////////////////checar esta condicion
    begin
      if length(trim(txtEmpleado.Text)) > 0 then
      begin
        tzEmpleado.Filtered := False;
        tzEmpleado.Filter := ' sNombreCompleto LIKE ' + QuotedStr('*' + txtEmpleado.Text + '* ');
        tzEmpleado.Filtered := True;
      end else
      begin
        tzEmpleado.Filtered := False;
      end;
    end;
end;

procedure TfrmHistorialMaterialxEmpleado.Asignados_Actuales;
begin
   tzqOveroles := TZQuery.Create(self);
   tzqBotas := TZQuery.Create(Self);
   tzqGuantesPvc := TZQuery.Create(Self);
   tzqGuantesCarnaza := TZQuery.Create(Self);
   tzqGuantesSteel := TZQuery.Create(Self);
   tzqGuantesMulti := TZQuery.Create(Self);
   tzqGuantesElect := TZQuery.Create(Self);
   tzqGuantesSold := TZQuery.Create(Self);
   tzqFaja := TZQuery.Create(Self);
   tzqLentes := TZQuery.Create(Self);
   tzqCasco := TZQuery.Create(Self);
   tzqTapAudi := TZQuery.Create(Self);
   tzqBarbiquejo := TZQuery.Create(Self);
   tzqChaleco := TZQuery.Create(Self);

   tzqOveroles.Connection := connection.zConnection;
   tzqBotas.Connection := connection.zConnection;
   tzqGuantesPvc.Connection := connection.zConnection;
   tzqGuantesCarnaza.Connection := connection.zConnection;
   tzqGuantesSteel.Connection := connection.zConnection;
   tzqGuantesMulti.Connection := connection.zConnection;
   tzqGuantesElect.Connection := connection.zConnection;
   tzqGuantesSold.Connection := connection.zConnection;
   tzqFaja.Connection := connection.zConnection;
   tzqLentes.Connection := connection.zConnection;
   tzqCasco.Connection := connection.zConnection;
   tzqTapAudi.Connection := connection.zConnection;
   tzqBarbiquejo.Connection := connection.zConnection;
   tzqChaleco.Connection := connection.zConnection;

   entra := False;//sirve para identificar si salio algun resultado de las consultas
   Familias := 'L51';////idfamilia de Equipos de Seguridad
   memoAsignados.EmptyTable;
   if tzqEmpleados.RecordCount > 0 then
   begin
      memoAsignados.Open;
      Numero := 0;
        while not tzqEmpleados.Eof do begin
          Siguiente := True;////es para saber si se hace otra fila
          Linea := 0;///controla las filas de la memory
          Numero := Numero + 1;
          while Siguiente = True do
          begin
              //showMessage(inttostr(Linea));
              Siguiente := False;
              memoAsignados.Append;
              memoAsignados.FieldByName('idEmpleado').AsString := tzqEmpleados.FieldByName('sIdEmpleado').AsString;
              memoAsignados.FieldByName('Numero').AsString := inttostr(Numero);
              memoAsignados.FieldByName('Nombre').AsString := tzqEmpleados.FieldByName('sNombreCompleto').AsString;
              memoAsignados.FieldByName('Categoria').AsString := tzqEmpleados.FieldByName('sDescripcion').AsString;

              /////////////QUERY OVEROLES
              tzqOveroles.Active := False;
              SubFamilias := inttostr(1);//idSubfamilia de overoles
              tzqOveroles.SQL.Text := 'SELECT SUM(a.iCantidad) AS cantidad, b.dTalla, c.sMarca ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS d ON (a.iFolios = d.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'LEFT JOIN alm_marcas as c ON (b.sIdMarca = c.sIdMarca) ' +
                                'WHERE d.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' '  +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              //showMessage(tzqOveroles.SQL.Text);
              tzqOveroles.Open;
              if tzqOveroles.RecordCount > 0 then
              begin
                  Siguiente := True;
                  entra := True;
                  while not tzqOveroles.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('OCantidad').AsInteger := tzqOveroles.FieldByName('cantidad').AsInteger;
                      memoAsignados.FieldByName('OTalla').AsString := tzqOveroles.FieldByName('dTalla').AsString;
                      memoAsignados.FieldByName('OMarca').AsString :=tzqOveroles.FieldByName('sMarca').AsString;
                      tzqOveroles.Next;
                  end;
              end;

              /////////////QUERY BOTAS
              tzqBotas.Active := False;
              SubFamilias := inttostr(2);//idSubfamilia de botas
              tzqBotas.SQL.Text := 'SELECT d.sTipo, a.sNumeroSerie, b.dTalla, c.sMarca ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'LEFT JOIN alm_marcas AS c ON (b.sIdMarca = c.sIdMarca) ' +
                                'LEFT JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' '  +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqBotas.Open;
              //showMessage(tzqBotas.SQL.Text);
              //showMessage(inttostr(Linea));
              if tzqBotas.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqBotas.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('BTipo').AsString := tzqBotas.FieldByName('sTipo').AsString;
                      memoAsignados.FieldByName('BSerie').AsString := tzqBotas.FieldByName('sNumeroSerie').AsString;
                      memoAsignados.FieldByName('BMarca').AsString :=tzqBotas.FieldByName('sMarca').AsString;
                      memoAsignados.FieldByName('BTalla').AsString :=tzqBotas.FieldByName('dTalla').AsString;
                      tzqBotas.Next;
                  end;
              end;

              /////////////QUERY GUANTES PVC
              tzqGuantesPvc.Active := False;
              SubFamilias := inttostr(3);//idSubfamilia de guantes
              TipoSubFamilia := 21;//IdTipoSubFamilia de pvc
              tzqGuantesPvc.SQL.Text := 'SELECT SUM(a.iCantidad) AS  pvc ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' '  +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqGuantesPvc.Open;
              if tzqGuantesPvc.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqGuantesPvc.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('GTpvc').AsInteger := tzqGuantesPvc.FieldByName('pvc').AsInteger;
                      tzqGuantesPvc.Next;
                  end;
              end;

              /////////////QUERY GUANTES CARNAZA
              tzqGuantesCarnaza.Active := False;
              SubFamilias := inttostr(3);//idSubfamilia de guantes
              TipoSubFamilia := 35;//IdTipoSubFamilia de carnaza
              tzqGuantesCarnaza.SQL.Text := 'SELECT SUM(a.iCantidad) AS  carnaza ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqGuantesCarnaza.Open;
              if tzqGuantesCarnaza.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqGuantesCarnaza.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('GTcarnaza').AsInteger := tzqGuantesCarnaza.FieldByName('carnaza').AsInteger;
                      tzqGuantesCarnaza.Next;
                  end;
              end;

              /////////////QUERY GUANTES STEEL PRO
              tzqGuantesSteel.Active := False;
              SubFamilias := inttostr(3);//idSubfamilia de guantes
              TipoSubFamilia := 36;//IdTipoSubFamilia de Steel pro
              tzqGuantesSteel.SQL.Text := 'SELECT SUM(a.iCantidad) AS  steel ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqGuantesSteel.Open;
              if tzqGuantesSteel.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqGuantesSteel.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('GTsteel').AsInteger := tzqGuantesSteel.FieldByName('steel').AsInteger;
                      tzqGuantesSteel.Next;
                  end;
              end;

              /////////////QUERY GUANTES MULTI FLEX
              tzqGuantesMulti.Active := False;
              SubFamilias := inttostr(3);//idSubfamilia de guantes
              TipoSubFamilia := 39;//IdTipoSubFamilia de multi flex
              tzqGuantesMulti.SQL.Text := 'SELECT SUM(a.iCantidad) AS  multi ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqGuantesMulti.Open;
              if tzqGuantesMulti.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqGuantesMulti.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('GTmulti').AsInteger := tzqGuantesMulti.FieldByName('multi').AsInteger;
                      tzqGuantesMulti.Next;
                  end;
              end;

              /////////////QUERY GUANTES ELECTRICISTA
              tzqGuantesElect.Active := False;
              SubFamilias := inttostr(3);//idSubfamilia de guantes
              TipoSubFamilia := 40;//IdTipoSubFamilia de electricista
              tzqGuantesElect.SQL.Text := 'SELECT SUM(a.iCantidad) AS  elec ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqGuantesElect.Open;
              if tzqGuantesElect.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqGuantesElect.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('GTelec').AsInteger := tzqGuantesElect.FieldByName('elec').AsInteger;
                      tzqGuantesElect.Next;
                  end;
              end;

              /////////////QUERY GUANTES SOLDADOR
              tzqGuantesSold.Active := False;
              SubFamilias := inttostr(3);//idSubfamilia de guantes
              TipoSubFamilia := 41;//IdTipoSubFamilia de soldador
              tzqGuantesSold.SQL.Text := 'SELECT SUM(a.iCantidad) AS  sold ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqGuantesSold.Open;
              if tzqGuantesSold.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqGuantesSold.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('GTsold').AsInteger := tzqGuantesSold.FieldByName('sold').AsInteger;
                      tzqGuantesSold.Next;
                  end;
              end;

              /////////////QUERY FAJA
              tzqFaja.Active := False;
              SubFamilias := inttostr(14);//idSubfamilia de Faja
              tzqFaja.SQL.Text := 'SELECT SUM(a.iCantidad) AS  faja, b.dTalla ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS d ON (a.iFolios = d.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'WHERE d.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqFaja.Open;
              if tzqFaja.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqFaja.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('FCantidad').AsInteger := tzqFaja.FieldByName('faja').AsInteger;
                      memoAsignados.FieldByName('FTalla').AsString := tzqFaja.FieldByName('dTalla').AsString;
                      tzqFaja.Next;
                  end;
              end;

              /////////////QUERY Lentes
              tzqLentes.Active := False;
              SubFamilias := inttostr(15);//idSubfamilia de lentes
              TipoSubFamilia := 42;//IdTipoSubFamilia de uvex
              tzqLentes.SQL.Text := 'SELECT SUM(a.iCantidad) AS  lentes ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS r ON (a.iFolios = r.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'INNER JOIN alm_tipo_subfamilia AS d ON (b.iIdTipoSubFamilia = d.iIdTipoSubFamilia) ' +
                                'WHERE r.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND b.iIdTipoSubfamilia = ' + inttostr(TipoSubFamilia) + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqLentes.Open;
              if tzqLentes.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqLentes.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('Lentes').AsInteger := tzqLentes.FieldByName('lentes').AsInteger;
                      tzqLentes.Next;
                  end;
              end;

              /////////////QUERY CASCOS
              tzqCasco.Active := False;
              SubFamilias := inttostr(8);//idSubfamilia de Cascos
              tzqCasco.SQL.Text := 'SELECT SUM(a.iCantidad) AS  cascos ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS d ON (a.iFolios = d.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'WHERE d.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqCasco.Open;
              if tzqCasco.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqCasco.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('Cascos').AsInteger := tzqCasco.FieldByName('cascos').AsInteger;
                      tzqCasco.Next;
                  end;
              end;

              /////////////QUERY tapones Auditivos
              tzqTapAudi.Active := False;
              SubFamilias := inttostr(16);//idSubfamilia de tapones auditivos
              tzqTapAudi.SQL.Text := 'SELECT SUM(a.iCantidad) AS  tapaudi ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS d ON (a.iFolios = d.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'WHERE d.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqTapAudi.Open;
              if tzqTapAudi.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqTapAudi.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('TapAudi').AsInteger := tzqTapAudi.FieldByName('tapaudi').AsInteger;
                      tzqTapAudi.Next;
                  end;
              end;

              /////////////QUERY Barbiquejo
              tzqBarbiquejo.Active := False;
              SubFamilias := inttostr(17);//idSubfamilia de Barbiquejo
              tzqBarbiquejo.SQL.Text := 'SELECT SUM(a.iCantidad) AS  barbiquejos ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS d ON (a.iFolios = d.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'WHERE d.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqBarbiquejo.Open;
              if tzqBarbiquejo.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqBarbiquejo.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('Barbiquejo').AsInteger := tzqBarbiquejo.FieldByName('barbiquejos').AsInteger;
                      tzqBarbiquejo.Next;
                  end;
              end;

              /////////////QUERY CHALECO
              tzqChaleco.Active := False;
              SubFamilias := inttostr(18);//idSubfamilia de Chaleco
              tzqChaleco.SQL.Text := 'SELECT SUM(a.iCantidad) AS chalecos ' +
                                'FROM alm_empleado_insumo AS a ' +
                                'INNER JOIN alm_foliosinsumos AS d ON (a.iFolios = d.iFolios) ' +
                                'INNER JOIN insumos AS b ON (a.sIdInsumo = b.sIdInsumo) ' +
                                'WHERE d.sIdEmpleado = ' + QuotedStr(tzqEmpleados.FieldByName('sIdEmpleado').AsString) + ' ' +
                                'AND a.dFechaEntrega BETWEEN  '''+DateToStr(deInicio.Date)+''' AND '''+DateToStr(deFin.Date) + ''' ' +
                                'AND b.sIdGrupo = ' + QuotedStr(Familias) + ' ' +
                                'AND b.iIdSubfamilia = ' + SubFamilias + ' ' +
                                'AND a.iActivo = 1 ' +
                                'GROUP BY a.sIdInsumo ' +
                                'LIMIT '+inttostr(Linea)+',1;';
              tzqChaleco.Open;
              if tzqChaleco.RecordCount > 0 then
              begin
                   Siguiente := True;
                   entra := True;
                   while not tzqChaleco.Eof do begin
                      //MemoryInsumosReporte.FieldByName('sIdInsumo').AsString := 'sInsumo';
                      memoAsignados.FieldByName('Chaleco').AsInteger := tzqChaleco.FieldByName('chalecos').AsInteger;
                      tzqChaleco.Next;
                  end;
              end;

              Linea := Linea + 1;
              memoAsignados.Post;

              ///si no entro en ningun material pues que elimine el ultimo registro agregado por que se agregaria solo el empleado
              if Siguiente = False then
              begin
                  memoAsignados.Delete;
              end;
              
          end;//fin de while siguiente
            tzqEmpleados.Next;
        end;//fin de tzqEmpleados.Eof
   if entra = True then ///si trajo algun valor de los materiales
   begin
        ShortDateFormat := 'dd / mm / yyyy';
        ReporteAsignacion.Variables.Variables['frente'] := QuotedStr(''+tzqFrente.FieldByName('sIdFolio').AsString+'');
        ReporteAsignacion.Variables.Variables['contrato'] := QuotedStr(''+tzqFrente.FieldByName('nFrente').AsString+'');
        ReporteAsignacion.Variables.Variables['leyenda'] := QuotedStr('Materiales que le han asignado a los Trabajadores entre las fechas: ');
        ReporteAsignacion.Variables.Variables['fecha_Inicio'] := QuotedStr(''+DateToStr(deInicio.date)+'');
        ReporteAsignacion.Variables.Variables['fecha_Fin'] := QuotedStr(''+DateToStr(deFin.date)+'');
        ReporteAsignacion.ShowReport();
   end else////si no mensaje de no hay materiales asignados al o los empleados seleccionados
   begin
       ShowMessage('No hay Materiales asignados al o los Empleados Seleccionados');
       exit;
   end;
   end;//fin de tzqEmpleados.RecordCount >0
end;

end.
