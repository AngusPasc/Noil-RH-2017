unit frm_ConsultadeActividades2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet, ToolWin,
  Menus, RXDBCtrl, utilerias, Newpanel, UnitTBotonesPermisos,
  ZAbstractRODataset, ZDataset, RxLookup, rxToolEdit, rxCurrEdit, udbgrid, unitexcepciones, UnitValidaTexto, UFunctionsGHH;

type
  TfrmConsultaActividad2 = class(TForm)
    ds_bitacora: TDataSource;
    ds_actividadesxorden: TDataSource;
    sbPaquete: TStatusBar;
    btnSalir: TBitBtn;
    ds_Resumen: TDataSource;
    PopupPrincipal: TPopupMenu;
    ComentariosAdicionales: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    ds_Historico: TDataSource;
    PanelHistorico: TGroupBox;
    Grid_Historico: TRxDBGrid;
    HistorialdeSuministros1: TMenuItem;
    mnFichaTecnica: TMenuItem;
    imgNotas: TImage;
    PanelPartidas: tNewGroupBox;
    GridActividades: TDBGrid;
    tNewGroupBox1: tNewGroupBox;
    grid_bitacora: TDBGrid;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdensNumeroOrden: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdendInstalado: TFloatField;
    ActividadesxOrdendExcedente: TFloatField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdensDescripcion: TStringField;
    ActividadesxOrdendPendiente: TFloatField;
    ActividadesxOrdendInstaladoTotal: TFloatField;
    AvGeneral: TZReadOnlyQuery;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ResumendeAlcances: TZReadOnlyQuery;
    ResumendeAlcancesiFase: TIntegerField;
    ResumendeAlcancesdPonderado: TFloatField;
    ResumendeAlcancessDescripcion: TStringField;
    ResumendeAlcancesdCantidad: TFloatField;
    Bitacora: TZReadOnlyQuery;
    BitacorasContrato: TStringField;
    BitacoradIdFecha: TDateField;
    BitacoraiIdDiario: TIntegerField;
    BitacorasIdTurno: TStringField;
    BitacorasNumeroOrden: TStringField;
    BitacorasNumeroActividad: TStringField;
    BitacoradCantidad: TFloatField;
    BitacoradAvance: TFloatField;
    BitacorasIdTipoMovimiento: TStringField;
    BitacoralAlcance: TStringField;
    BitacorasNumeroReporte: TStringField;
    BitacorasIdConvenio: TStringField;
    BitacorasOrigenTierra: TStringField;
    BitacorasTitulo: TStringField;
    BitacorasDescripcionTurno: TStringField;
    Historico: TZReadOnlyQuery;
    HistoricodFechaAviso: TDateField;
    HistoricoiFolio: TIntegerField;
    HistoricosReferencia: TStringField;
    HistoricosDescripcion: TStringField;
    HistoricomComentarios: TMemoField;
    HistoricosNumeroActividad: TStringField;
    HistoricodCantidad: TFloatField;
    rDiario: TfrxReport;
    BitacorasWbs: TStringField;
    ds_Partidas: TDataSource;
    QryPartidas: TZReadOnlyQuery;
    PopupMenu2: TPopupMenu;
    VerocultarHistorialdeSuministros1: TMenuItem;
    tNewGroupBox2: tNewGroupBox;
    Grid_Resumen: TDBGrid;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label11: TLabel;
    tdPonderado: TCurrencyEdit;
    tdVentaMN: TCurrencyEdit;
    tdCantidadAnexo: TCurrencyEdit;
    tdInstalado: TCurrencyEdit;
    tdPendiente: TCurrencyEdit;
    tdExcedente: TCurrencyEdit;
    tsWbs: TEdit;
    tsMedida: TEdit;
    tNewGroupBox3: tNewGroupBox;
    gridActividadesAnexo: TDBGrid;
    Label2: TLabel;
    tsNumeroActividad: TRxDBLookupCombo;
    qryPartidasDelAnexo: TZReadOnlyQuery;
    dsPartidasDelAnexo: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure BitacoraCalcFields(DataSet: TDataSet);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure HistorialdeSuministros1Click(Sender: TObject);
    procedure grid_bitacoraDblClick(Sender: TObject);
    procedure grid_bitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure ActividadesxOrdenAfterScroll(DataSet: TDataSet);
    procedure Grid_ResumenMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ResumenMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ResumenTitleClick(Column: TColumn);
    procedure GridActividadesTitleClick(Column: TColumn);
    procedure grid_bitacoraTitleClick(Column: TColumn);
    procedure GridActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_bitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_bitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Cut1Click(Sender: TObject);
    procedure VerocultarHistorialdeSuministros1Click(Sender: TObject);
    procedure qryPartidasDelAnexoAfterScroll(DataSet: TDataSet);
  private
    sMenuP: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaActividad2: TfrmConsultaActividad2;
  sOpcion: string;
  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  utgrid3: ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmConsultaActividad2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree;
  utgrid.Destroy;
  utgrid2.destroy;
  utgrid3.destroy;
end;

procedure TfrmConsultaActividad2.FormShow(Sender: TObject);
begin
  gridActividadesAnexo.Visible := false;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cConsulta1', PopupPrincipal);
  BotonPermiso.permisosBotones(nil);
  try
    sMenuP := stMenu;
    UtGrid := TicdbGrid.create(grid_resumen);
    UtGrid2 := TicdbGrid.create(gridactividades);
    UtGrid3 := TicdbGrid.create(grid_bitacora);
    connection.configuracion.refresh;
    QryPartidas.Active := False;
    QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
    QryPartidas.Params.ParamByName('Contrato').Value := global_contrato;
    QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
    QryPartidas.Params.ParamByName('Convenio').Value := global_convenio;
    QryPartidas.Open;
    Bitacora.Active := False;
    tsNumeroActividad.SetFocus;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al iniciar el formulario', 0);
    end;
  end;

end;

procedure TfrmConsultaActividad2.GridActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.datasource.DataSet.IsEmpty = false then
    if gridactividades.DataSource.DataSet.RecordCount > 0 then
      UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmConsultaActividad2.GridActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.datasource.DataSet.IsEmpty = false then
    if gridactividades.DataSource.DataSet.RecordCount > 0 then
      UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmConsultaActividad2.GridActividadesTitleClick(Column: TColumn);
begin
  if gridactividades.datasource.DataSet.IsEmpty = false then
    if gridactividades.DataSource.DataSet.RecordCount > 0 then
      UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad2.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad2.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    gridActividadesAnexo.SetFocus
end;

procedure TfrmConsultaActividad2.VerocultarHistorialdeSuministros1Click(
  Sender: TObject);
begin
  PanelHistorico.Visible := not PanelHistorico.Visible;
end;

procedure TfrmConsultaActividad2.tsNumeroActividadEnter(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entradaPU;
end;


procedure TfrmConsultaActividad2.btnSalirClick(Sender: TObject);
begin
  close
end;

procedure TfrmConsultaActividad2.BitacoraCalcFields(DataSet: TDataSet);
begin
  if Bitacora.FieldValues['sIdTipoMovimiento'] = Connection.configuracion.FieldValues['sTipoAlcance'] then
  begin
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select a.sDescripcion From bitacoradealcances b INNER JOIN alcancesxactividad a ON ' +
      '(b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
      'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.iIdDiario = :Diario');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    Connection.QryBusca.Params.ParamByName('Fecha').Value := Bitacora.FieldValues['dIdFecha'];
    Connection.QryBusca.Params.ParamByName('Diario').DataType := ftInteger;
    Connection.QryBusca.Params.ParamByName('Diario').Value := Bitacora.FieldValues['iIdDiario'];
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
      BitacorasTitulo.Text := Connection.QryBusca.FieldValues['sDescripcion']
  end
  else
    BitacorasTitulo.Text := 'VOLUMEN DE OBRA';
end;


procedure TfrmConsultaActividad2.ComentariosAdicionalesClick(
  Sender: TObject);
begin
  if gridActividades.DataSource.DataSet.IsEmpty = false then
  begin
    if gridActividades.DataSource.DataSet.RecordCount > 0 then
    begin
      global_partida := tsNumeroActividad.Text;
      Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
      frmComentariosxAnexo.show
    end
    else
      showmessage('no existen partidas para aplicar comentarios');
  end
  else
    showmessage('no existen partidas para aplicar comentarios');
end;

procedure TfrmConsultaActividad2.Cut1Click(Sender: TObject);
begin
  if grid_resumen.Focused = true then
    if grid_resumen.datasource.DataSet.IsEmpty = false then
      if grid_resumen.DataSource.DataSet.RecordCount > 0 then
        UtGrid.CopyRowsToClip;
  if gridactividades.Focused = true then
    if gridactividades.datasource.DataSet.IsEmpty = false then
      if gridactividades.DataSource.DataSet.RecordCount > 0 then
        UtGrid2.CopyRowsToClip;
  if grid_bitacora.Focused = true then
    if grid_bitacora.datasource.DataSet.IsEmpty = false then
      if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
        UtGrid3.CopyRowsToClip;

end;

procedure TfrmConsultaActividad2.tsNumeroActividadChange(Sender: TObject);
begin

  qryPartidasDelAnexo.Active := False;
  qryPartidasDelAnexo.Params.ParamByName('contrato').DataType := ftString;
  qryPartidasDelAnexo.Params.ParamByName('contrato').Value := global_contrato;
  qryPartidasDelAnexo.Params.ParamByName('convenio').DataType := ftString;
  qryPartidasDelAnexo.Params.ParamByName('convenio').Value := global_convenio;
  qryPartidasDelAnexo.Params.ParamByName('actividad').DataType := ftString;
  qryPartidasDelAnexo.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
  qryPartidasDelAnexo.Open;

  if qryPartidasDelAnexo.RecordCount > 1 then
    gridActividadesAnexo.Visible := true
  else
    gridActividadesAnexo.Visible := false;

end;

procedure TfrmConsultaActividad2.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmConsultaActividad2.HistorialdeSuministros1Click(
  Sender: TObject);
begin
  PanelHistorico.Visible := not PanelHistorico.Visible;
end;

procedure TfrmConsultaActividad2.grid_bitacoraDblClick(Sender: TObject);
begin
  try
    if tsNumeroActividad.Text <> '' then
      if Bitacora.RecordCount > 0 then
        if connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA' then
          procReporteDiarioCotemarProg(Bitacora.FieldValues['sContrato'], Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'], Bitacora.FieldValues['dIdFecha'], '', frmConsultaActividad2, rDiario.OnGetValue, nil)
        else
          if connection.contrato.FieldValues['sTipoObra'] = 'OPTATIVA' then
            procReporteDiarioCotemarOpt(Bitacora.FieldValues['sContrato'], Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'], Bitacora.FieldValues['dIdFecha'], '', frmConsultaActividad2, rDiario.OnGetValue)
          else
            if connection.contrato.FieldValues['sTipoObra'] = 'BARCO' then
              procReporteBarco(Bitacora.FieldValues['sContrato'], Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['dIdFecha'], frmConsultaActividad2, rDiario.OnGetValue)
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta x Partida Anexo', 'Al imprimir reporte diario', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad2.grid_bitacoraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
         // procReporteDiario (Bitacora.FieldValues['sContrato'] , Bitacora.FieldValues['sNumeroOrden'], Bitacora.FieldValues['sNumeroReporte'], Bitacora.FieldValues['sIdTurno'], Bitacora.FieldValues['sIdConvenio'], Bitacora.FieldValues['dIdFecha'], '' , frmConsultaActividad2, rDiario.OnGetValue )
end;

procedure TfrmConsultaActividad2.grid_bitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_bitacora.datasource.DataSet.IsEmpty = false then
    if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
      UtGrid3.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmConsultaActividad2.grid_bitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_bitacora.datasource.DataSet.IsEmpty = false then
    if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
      UtGrid3.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmConsultaActividad2.grid_bitacoraTitleClick(Column: TColumn);
begin
  if grid_bitacora.datasource.DataSet.IsEmpty = false then
    if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
      UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad2.Grid_ResumenMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_resumen.datasource.DataSet.IsEmpty = false then
    if grid_resumen.DataSource.DataSet.RecordCount > 0 then
      UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmConsultaActividad2.Grid_ResumenMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_resumen.datasource.DataSet.IsEmpty = false then
    if grid_resumen.DataSource.DataSet.RecordCount > 0 then
      UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmConsultaActividad2.Grid_ResumenTitleClick(Column: TColumn);
begin
  if grid_resumen.datasource.DataSet.IsEmpty = false then
    if grid_resumen.DataSource.DataSet.RecordCount > 0 then
      UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad2.rDiarioGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
    Value := sDiarioDescripcionCorta;

  if CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
    Value := sDiarioComentario;

  if CompareText(VarName, 'sNewTexto') = 0 then
    Value := sDiarioTitulo;

  if CompareText(VarName, 'PERIODO') = 0 then
    Value := sDiarioPeriodo;


  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSuperIntendente
    else
      Value := sSuperIntendentePatio;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSupervisor
    else
      Value := sSupervisorPatio;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSupervisorTierra
    else
      Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSuperIntendente
    else
      Value := sPuestoSuperIntendentePatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSupervisor
    else
      Value := sPuestoSupervisorPatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    if Bitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSupervisorTierra
    else
      Value := sPuestoResidente;

  if CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
    Value := mDescripcionOrden;
  if CompareText(VarName, 'PLATAFORMA') = 0 then
    Value := sPlataformaOrden;
  if CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
    Value := sJornadasSuspendidas;
  if CompareText(VarName, 'TURNO') = 0 then
    Value := sDescripcionTurno;

  if CompareText(VarName, 'REAL_ANTERIOR') = 0 then
    Value := dRealGlobalAnterior;
  if CompareText(VarName, 'REAL_ACTUAL') = 0 then
    Value := dRealGlobalActual;
  if CompareText(VarName, 'REAL_ACUMULADO') = 0 then
    Value := dRealGlobalAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
    Value := dProgramadoGlobalAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
    Value := dProgramadoGlobalActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
    Value := dProgramadoGlobalAcumulado;


  if CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
    Value := dRealOrdenAnterior;
  if CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
    Value := dRealOrdenActual;
  if CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
    Value := dRealOrdenAcumulado;
  if CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAnterior;
  if CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
    Value := dProgramadoOrdenActual;
  if CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
    Value := dProgramadoOrdenAcumulado;
end;

procedure TfrmConsultaActividad2.mnFichaTecnicaClick(Sender: TObject);
begin
  try
    if gridActividades.DataSource.Dataset.isempty = false then
    begin
      if gridActividades.DataSource.DataSet.RecordCount > 0 then
      begin
        if tsNumeroActividad.Text <> '' then
          procFichaTecnica(global_contrato, global_convenio, tsNumeroActividad.Text, frmConsultaActividad2, connection.configuracion.fieldbyname('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      end
      else
        showmessage('no existen partidas para generar ficha técnica ');
    end
    else
      showmessage('no existen partidas para generar ficha técnica ');
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al imprimir ficha tecnica', 0);
    end;
  end;
end;



procedure TfrmConsultaActividad2.qryPartidasDelAnexoAfterScroll(
  DataSet: TDataSet);
begin

//  connection.QryBusca.Active := False;
//  connection.QryBusca.SQL.Clear;
//  connection.QryBusca.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion, dCantidadAnexo, sMedida, dVentaMN, dPonderado, dInstalado, dExcedente from actividadesxanexo ' +
//    'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroActividad = :actividad and sTipoActividad = "Actividad"');
//  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
//  connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
//  connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
//  connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
//  connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
//  connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;

//
//  try
//    connection.QryBusca.Open;
//  except
//    on e: exception do begin
//      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al consultar la tabla ActividadesxAnexo', 0);
//    end;
//  end;

  try
    if qryPartidasDelAnexo.RecordCount > 0 then
    begin
      global_partida := tsNumeroActividad.Text;
      tdCantidadAnexo.Value := qryPartidasDelAnexo.FieldValues['dCantidadAnexo'];
      tdInstalado.Value := qryPartidasDelAnexo.FieldValues['dInstalado'];
      tdPendiente.Value := qryPartidasDelAnexo.FieldValues['dCantidadAnexo'] - qryPartidasDelAnexo.FieldValues['dInstalado'];
      tdExcedente.Value := qryPartidasDelAnexo.FieldValues['dExcedente'];
      tsWbs.Text := qryPartidasDelAnexo.FieldValues['sWbs'];
      tdVentaMN.Value := qryPartidasDelAnexo.FieldValues['dVentaMN'];
      tsMedida.Text := qryPartidasDelAnexo.FieldValues['sMedida'];
      tdPonderado.Value := qryPartidasDelAnexo.FieldValues['dPonderado'];
      frmConsultaActividad2.Hint := qryPartidasDelAnexo.FieldValues['mDescripcion'];

      Historico.Active := False;
      Historico.Params.ParamByName('Contrato').DataType := ftString;
      Historico.Params.ParamByName('Contrato').Value := global_contrato;
      Historico.Params.ParamByName('Actividad').DataType := ftString;
      Historico.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      Historico.Params.ParamByName('wbs').DataType := ftString;
      Historico.Params.ParamByName('wbs').Value := tsWbs.Text;
      Historico.Open;

      Connection.QryBusca.Active := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad ' +
        ' and sWbs = :wbs ');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      Connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('wbs').Value := tsWbs.Text;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
        imgNotas.Visible := True;

      ActividadesxOrden.Active := False;
      ActividadesxOrden.Params.ParamByName('contrato').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesxOrden.Params.ParamByName('convenio').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio;
      ActividadesxOrden.Params.ParamByName('actividad').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      ActividadesxOrden.Params.ParamByName('wbs').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('wbs').Value := tsWbs.Text;
      ActividadesxOrden.Open;

      ResumendeAlcances.Active := False;
      ResumendeAlcances.Params.ParamByName('contrato').DataType := ftString;
      ResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato;
      ResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString;
      ResumendeAlcances.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      ResumendeAlcances.Params.ParamByName('wbs').DataType := ftString;
      ResumendeAlcances.Params.ParamByName('wbs').Value := tsWbs.Text;
      ResumendeAlcances.Open;
    end
    else
    begin
      global_partida := '';
      tdCantidadAnexo.Value := 0;
      tdInstalado.Value := 0;
      tdPendiente.Value := 0;
      tdExcedente.Value := 0;
      tsWbs.Text := '';
      tdVentaMN.Value := 0;
      tsMedida.Text := '';
      tdPonderado.Value := 0;
      frmConsultaActividad2.Hint := '';
      sbPaquete.Panels.Items[1].Text := '0';
      PanelHistorico.Visible := False;

      Historico.Active := False;
      Historico.Params.ParamByName('Contrato').DataType := ftString;
      Historico.Params.ParamByName('Contrato').Value := global_contrato;
      Historico.Params.ParamByName('Actividad').DataType := ftString;
      Historico.Params.ParamByName('Actividad').Value := '';
      Historico.Params.ParamByName('wbs').DataType := ftString;
      Historico.Params.ParamByName('wbs').Value := '';
      Historico.Open;

      imgNotas.Visible := False;

      ActividadesxOrden.Active := False;
      ActividadesxOrden.Params.ParamByName('contrato').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesxOrden.Params.ParamByName('convenio').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio;
      ActividadesxOrden.Params.ParamByName('actividad').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('actividad').Value := '';
      ActividadesxOrden.Params.ParamByName('wbs').DataType := ftString;
      ActividadesxOrden.Params.ParamByName('wbs').Value := '';
      ActividadesxOrden.Open;

      ResumendeAlcances.Active := False;
      ResumendeAlcances.Params.ParamByName('contrato').DataType := ftString;
      ResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato;
      ResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString;
      ResumendeAlcances.Params.ParamByName('Actividad').Value := '';
      ResumendeAlcances.Params.ParamByName('wbs').DataType := ftString;
      ResumendeAlcances.Params.ParamByName('wbs').Value := '';
      ResumendeAlcances.Open;

      Bitacora.Active := False;
      Bitacora.Params.ParamByName('contrato').DataType := ftString;
      Bitacora.Params.ParamByName('contrato').Value := global_contrato;
      Bitacora.Params.ParamByName('orden').DataType := ftString;
      Bitacora.Params.ParamByName('orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      Bitacora.Params.ParamByName('wbs').DataType := ftString;
      Bitacora.Params.ParamByName('wbs').Value := '';
      Bitacora.Params.ParamByName('actividad').DataType := ftString;
      Bitacora.Params.ParamByName('actividad').Value := '';
      Bitacora.Params.ParamByName('wbs').DataType := ftString;
      Bitacora.Params.ParamByName('wbs').Value := '';
      Bitacora.Open;

      sbPaquete.Panels.Items[1].Text := '0';
    end

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al obtener el número de concepto', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad2.ActividadesxOrdenCalcFields(
  DataSet: TDataSet);
begin
  if ActividadesxOrden.FieldValues['dCantidad'] >= ActividadesxOrden.FieldValues['dInstalado'] then
    ActividadesxOrdendPendiente.Value := ActividadesxOrden.FieldValues['dCantidad'] - ActividadesxOrden.FieldValues['dInstalado']
  else
    ActividadesxOrdendPendiente.Value := 0;
  ActividadesxOrdendInstaladoTotal.Value := ActividadesxOrden.FieldValues['dExcedente'] + ActividadesxOrden.FieldValues['dInstalado'];

  connection.QryBusca2.Active := False;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select mDescripcion from actividadesxorden Where sContrato = :contrato and sNumeroOrden = :orden and sIdConvenio = :convenio and sWbs = :wbs and sTipoActividad = "Paquete"');
  connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('contrato').Value := global_contrato;
  connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('convenio').Value := global_convenio;
  connection.QryBusca2.Params.ParamByName('orden').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
  connection.QryBusca2.Params.ParamByName('wbs').DataType := ftString;
  connection.QryBusca2.Params.ParamByName('wbs').Value := ActividadesxOrden.FieldValues['sWbsAnterior'];
  connection.QryBusca2.Open;
  if connection.QryBusca2.RecordCount > 0 then
    ActividadesxOrdensDescripcion.Text := connection.QryBusca2.FieldValues['mDescripcion'];

end;

procedure TfrmConsultaActividad2.ActividadesxOrdenAfterScroll(
  DataSet: TDataSet);
begin
  if ActividadesxOrden.RecordCount > 0 then
  begin
    GridActividades.Hint := ActividadesxOrden.FieldValues['mDescripcion'];

    Bitacora.Active := False;
    Bitacora.Params.ParamByName('contrato').DataType   := ftString;
    Bitacora.Params.ParamByName('contrato').Value      := global_contrato;
    Bitacora.Params.ParamByName('orden').DataType      := ftString;
    Bitacora.Params.ParamByName('orden').Value         := ActividadesxOrden.FieldValues['sNumeroOrden'];
    Bitacora.Params.ParamByName('wbs').DataType        := ftString;
    Bitacora.Params.ParamByName('wbs').Value           := ActividadesxOrden.FieldValues['sWbs'];
    Bitacora.Params.ParamByName('actividad').DataType  := ftString;
    Bitacora.Params.ParamByName('actividad').Value     := ActividadesxOrden.FieldValues['sNumeroActividad'];
    Bitacora.Open;

    AvGeneral.Active := False;
    AvGeneral.Params.ParamByName('contrato').DataType := ftString;
    AvGeneral.Params.ParamByName('contrato').Value := global_contrato;
    AvGeneral.Params.ParamByName('Orden').DataType := ftString;
    AvGeneral.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
    AvGeneral.Params.ParamByName('Wbs').DataType := ftString;
    AvGeneral.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
    AvGeneral.Params.ParamByName('Actividad').DataType := ftString;
    AvGeneral.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
    AvGeneral.Open;
    if AvGeneral.RecordCount > 0 then
      sbPaquete.Panels.Items[1].Text := avGeneral.FieldValues['dAvance']
    else
      sbPaquete.Panels.Items[1].Text := '0';
  end
  else
    GridActividades.Hint := '';
end;

end.

