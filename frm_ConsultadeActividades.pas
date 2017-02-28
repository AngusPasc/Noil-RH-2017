unit frm_ConsultadeActividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  ADODB, Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet, ToolWin,
  Menus, RXDBCtrl, utilerias, Newpanel, UnitTBotonesPermisos,
  ZAbstractRODataset, ZDataset, RxLookup, rxToolEdit, rxCurrEdit, udbgrid, unitexcepciones;

type
  TfrmConsultaActividad = class(TForm)
    ds_bitacora: TDataSource;
    btnSalir: TBitBtn;
    sbPaquete: TStatusBar;
    GroupBox2: TGroupBox;
    grid_bitacora: TDBGrid;
    Grid_Resumen: TDBGrid;
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
    rDiario: TfrxReport;
    mnFichaTecnica: TMenuItem;
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
    ds_actividadesxorden: TDataSource;
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
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    PanelPartidas: tNewGroupBox;
    GridActividades: TDBGrid;
    ds_Resumen: TDataSource;
    ResumendeAlcances: TZReadOnlyQuery;
    ResumendeAlcancesiFase: TIntegerField;
    ResumendeAlcancesdPonderado: TFloatField;
    ResumendeAlcancessDescripcion: TStringField;
    ResumendeAlcancesdCantidad: TFloatField;
    AvGeneral: TZReadOnlyQuery;
    Historico: TZReadOnlyQuery;
    QryBitacora: TZReadOnlyQuery;
    Label2: TLabel;
    Label9: TLabel;
    imgNotas: TImage;
    tsFiltro: TComboBox;
    tsNumeroActividad: TRxDBLookupCombo;
    ds_Partidas: TDataSource;
    QryPartidas: TZReadOnlyQuery;
    PopupMenu2: TPopupMenu;
    VerocultarHistorialdeSuministros1: TMenuItem;
    dsPartidasDelAnexo: TDataSource;
    qryPartidasDelAnexo: TZReadOnlyQuery;
    gridActividadesAnexo: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure tsFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure tsFiltroEnter(Sender: TObject);
    procedure tsFiltroExit(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure HistorialdeSuministros1Click(Sender: TObject);
    procedure grid_bitacoraDblClick(Sender: TObject);
    procedure grid_bitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure ActividadesxOrdenAfterScroll(DataSet: TDataSet);
    procedure GridActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridActividadesTitleClick(Column: TColumn);
    procedure grid_bitacoraTitleClick(Column: TColumn);
    procedure grid_bitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_bitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure VerocultarHistorialdeSuministros1Click(Sender: TObject);
    procedure qryPartidasDelAnexoAfterScroll(DataSet: TDataSet);
    procedure tdPonderadoEnter(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tsWbsEnter(Sender: TObject);
    procedure tdCantidadAnexoEnter(Sender: TObject);
    procedure tdInstaladoEnter(Sender: TObject);
    procedure tdPendienteEnter(Sender: TObject);
    procedure tdExcedenteEnter(Sender: TObject);
    procedure tdPonderadoExit(Sender: TObject);
    procedure tsMedidaExit(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tsWbsExit(Sender: TObject);
    procedure tdCantidadAnexoExit(Sender: TObject);
    procedure tdInstaladoExit(Sender: TObject);
    procedure tdPendienteExit(Sender: TObject);
    procedure tdExcedenteExit(Sender: TObject);
    procedure tdPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tsWbsKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure tdInstaladoKeyPress(Sender: TObject; var Key: Char);
    procedure tdPendienteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaActividad: TfrmConsultaActividad;
  Fases: array[1..99] of Integer;
  sOpcion: string;
  UtGrid: TicDbGrid;
  UtGrid2: TicDbGrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmConsultaActividad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  BotonPermiso.Free;
  UtGrid.Destroy;
  UtGrid2.Destroy;
  action := cafree;
end;

procedure TfrmConsultaActividad.FormShow(Sender: TObject);
var
  iFaseDef: Integer;
  iFase: Integer;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cConsulta3', PopupPrincipal);
  BotonPermiso.permisosBotones(nil);
  try
    UtGrid := TicdbGrid.create(gridActividades);
    UtGrid2 := TicdbGrid.create(grid_Bitacora);
    connection.configuracion.refresh;
    QryPartidas.Active := False;
    QryPartidas.Params.ParamByName('Contrato').DataType := ftString;
    QryPartidas.Params.ParamByName('Contrato').Value := global_contrato;
    QryPartidas.Params.ParamByName('Convenio').DataType := ftString;
    QryPartidas.Params.ParamByName('Convenio').Value := global_convenio;
    QryPartidas.Open;
    qryBitacora.Active := False;
    tsNumeroActividad.SetFocus
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al iniciar el formulario', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad.GridActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.datasource.DataSet.IsEmpty = false then
    if gridactividades.DataSource.DataSet.RecordCount > 0 then
      UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmConsultaActividad.GridActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if gridactividades.datasource.DataSet.IsEmpty = false then
    if gridactividades.DataSource.DataSet.RecordCount > 0 then
      UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmConsultaActividad.GridActividadesTitleClick(Column: TColumn);
begin
  if gridactividades.datasource.DataSet.IsEmpty = false then
    if gridactividades.DataSource.DataSet.RecordCount > 0 then
      UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaPU;;
end;

procedure TfrmConsultaActividad.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsFiltro.SetFocus
end;

procedure TfrmConsultaActividad.tsWbsEnter(Sender: TObject);
begin
tsWbs.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tsWbsExit(Sender: TObject);
begin
tsWbs.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tsWbsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdCantidadAnexo.SetFocus
end;

procedure TfrmConsultaActividad.VerocultarHistorialdeSuministros1Click(
  Sender: TObject);
begin
  PanelHistorico.Visible := not PanelHistorico.Visible;
end;

procedure TfrmConsultaActividad.tsNumeroActividadEnter(Sender: TObject);
begin
  PanelHistorico.Visible := False;
  tsNumeroActividad.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.btnSalirClick(Sender: TObject);
begin
  close
end;

procedure TfrmConsultaActividad.tsFiltroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdPonderado.SetFocus
end;

procedure TfrmConsultaActividad.tsMedidaEnter(Sender: TObject);
begin
tsMedida.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tsMedidaExit(Sender: TObject);
begin
tsMedida.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tsMedidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdVentaMN.SetFocus
end;

procedure TfrmConsultaActividad.tdCantidadAnexoEnter(Sender: TObject);
begin
tdCantidadAnexo.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tdCantidadAnexoExit(Sender: TObject);
begin
tdCantidadAnexo.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tdCantidadAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdInstalado.SetFocus
end;

procedure TfrmConsultaActividad.tdExcedenteEnter(Sender: TObject);
begin
tdExcedente.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tdExcedenteExit(Sender: TObject);
begin
tdExcedente.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tdInstaladoEnter(Sender: TObject);
begin
tdInstalado.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tdInstaladoExit(Sender: TObject);
begin
tdInstalado.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tdInstaladoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdPendiente.SetFocus
end;

procedure TfrmConsultaActividad.tdPendienteEnter(Sender: TObject);
begin
tdPendiente.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tdPendienteExit(Sender: TObject);
begin
tdPendiente.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tdPendienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdExcedente.SetFocus
end;

procedure TfrmConsultaActividad.tdPonderadoEnter(Sender: TObject);
begin
tdPonderado.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tdPonderadoExit(Sender: TObject);
begin
tdPonderado.Color := global_color_SalidaPU;
end;

procedure TfrmConsultaActividad.tdPonderadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsMedida.SetFocus
end;

procedure TfrmConsultaActividad.tdVentaMNEnter(Sender: TObject);
begin
tdVentaMN.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tdVentaMNExit(Sender: TObject);
begin
tdVentaMN.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad.tdVentaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
        if Key = #13 then
    tsWbs.SetFocus
end;

procedure TfrmConsultaActividad.tsFiltroEnter(Sender: TObject);
begin
  tsFiltro.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad.tsFiltroExit(Sender: TObject);
begin
  tsFiltro.Color := global_color_salidaPU;
  sbPaquete.Panels.Items[1].Text := '0';
  if tsNumeroActividad.text <> '' then
  begin
    if ActividadesxOrden.RecordCount > 0 then
      if tsFiltro.ItemIndex = 0 then
      begin
        qryBitacora.Active := False;
        qryBitacora.SQL.Clear;
        qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.sReferencia, ' +
          'a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
          'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
          'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
          'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.dIdFecha, b.iIdDiario');
        qryBitacora.Params.ParamByName('Contrato').DataType := ftString;
        qryBitacora.Params.ParamByName('Contrato').Value := global_contrato;
        qryBitacora.Params.ParamByName('Orden').DataType := ftString;
        qryBitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
        qryBitacora.Params.ParamByName('Wbs').DataType := ftString;
        qryBitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
        qryBitacora.Params.ParamByName('Actividad').DataType := ftString;
        qryBitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
        qryBitacora.Open;
      end
      else
      begin
        qryBitacora.Active := False;
        qryBitacora.SQL.Clear;
        qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.sReferencia, ' +
          'a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
          'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
          'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
          'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
          'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad And b.iFase = :Fase Order By b.dIdFecha, b.iIdDiario');
        qryBitacora.Params.ParamByName('Contrato').DataType := ftString;
        qryBitacora.Params.ParamByName('Contrato').Value := global_contrato;
        qryBitacora.Params.ParamByName('Orden').DataType := ftString;
        qryBitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
        qryBitacora.Params.ParamByName('Wbs').DataType := ftString;
        qryBitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
        qryBitacora.Params.ParamByName('Actividad').DataType := ftString;
        qryBitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
        qryBitacora.Params.ParamByName('Fase').DataType := ftInteger;
        qryBitacora.Params.ParamByName('Fase').Value := Fases[tsFiltro.ItemIndex];
        qryBitacora.Open;
      end;

    AvGeneral.Active := False;
    AvGeneral.SQL.Clear;
    if tsFiltro.ItemIndex > 0 then
    begin
      AvGeneral.SQL.Add('select sum(dAvance) as dAvance, sum(dCantidad) as dCantidad from bitacoradealcances ' +
        'where sContrato = :contrato and sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad= :Actividad And iFase = :Fase Group By sContrato');
      AvGeneral.Params.ParamByName('Fase').DataType := ftInteger;
      AvGeneral.Params.ParamByName('Fase').Value := Fases[tsFiltro.ItemIndex];
    end
    else
      AvGeneral.SQL.Add('select sum(dAvance) as dAvance, 0 as dCantidad from bitacoradealcances ' +
        'where sContrato = :contrato and sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad= :Actividad Group By sContrato');
    AvGeneral.Params.ParamByName('contrato').DataType := ftString;
    AvGeneral.Params.ParamByName('contrato').Value := global_contrato;
    AvGeneral.Params.ParamByName('Orden').DataType := ftString;
    AvGeneral.Params.ParamByName('Orden').Value := qryBitacora.FieldValues['sNumeroOrden'];
    AvGeneral.Params.ParamByName('Wbs').DataType := ftString;
    AvGeneral.Params.ParamByName('Wbs').Value := qryBitacora.FieldValues['sWbs'];
    AvGeneral.Params.ParamByName('Actividad').DataType := ftString;
    AvGeneral.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
    AvGeneral.Open;
    if AvGeneral.RecordCount > 0 then
      sbPaquete.Panels.Items[1].Text := avGeneral.FieldValues['dAvance'];
  end
end;

procedure TfrmConsultaActividad.tsNumeroActividadChange(Sender: TObject);

begin
  try

    qryPartidasDelAnexo.Active := False;
    qryPartidasDelAnexo.Params.ParamByName('contrato').DataType := ftString;
    qryPartidasDelAnexo.Params.ParamByName('contrato').Value := global_contrato;
    qryPartidasDelAnexo.Params.ParamByName('convenio').DataType := ftString;
    qryPartidasDelAnexo.Params.ParamByName('convenio').Value := global_convenio;
    qryPartidasDelAnexo.Params.ParamByName('actividad').DataType := ftString;
    qryPartidasDelAnexo.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    qryPartidasDelAnexo.Open;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al realizar consultas de registro', 0);
    end;
  end;
end;


procedure TfrmConsultaActividad.HistorialdeSuministros1Click(
  Sender: TObject);
begin
  PanelHistorico.Visible := not PanelHistorico.Visible;
end;

procedure TfrmConsultaActividad.grid_bitacoraDblClick(Sender: TObject);
begin
  if tsNumeroActividad.Text <> '' then
    if qryBitacora.RecordCount > 0 then
       // procReporteDiario (qryBitacora.FieldValues['sContrato'] , qryBitacora.FieldValues['sNumeroOrden'], qryBitacora.FieldValues['sNumeroReporte'], qryBitacora.FieldValues['sIdTurno'], qryBitacora.FieldValues['sIdConvenio'], qryBitacora.FieldValues['dIdFecha'], '' , frmConsultaActividad, rDiario.OnGetValue )
end;

procedure TfrmConsultaActividad.grid_bitacoraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if qryBitacora.RecordCount > 0 then
         // procReporteDiario (qryBitacora.FieldValues['sContrato'] , qryBitacora.FieldValues['sNumeroOrden'], qryBitacora.FieldValues['sNumeroReporte'], qryBitacora.FieldValues['sIdTurno'], qryBitacora.FieldValues['sIdConvenio'], qryBitacora.FieldValues['dIdFecha'], '' , frmConsultaActividad, rDiario.OnGetValue )
end;

procedure TfrmConsultaActividad.grid_bitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if grid_bitacora.datasource.DataSet.IsEmpty = false then
    if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
      UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmConsultaActividad.grid_bitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if grid_bitacora.datasource.DataSet.IsEmpty = false then
    if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
      UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmConsultaActividad.grid_bitacoraTitleClick(Column: TColumn);
begin
  if grid_bitacora.datasource.DataSet.IsEmpty = false then
    if grid_bitacora.DataSource.DataSet.RecordCount > 0 then
      UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad.rDiarioGetValue(const VarName: string;
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
    if qryBitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSuperIntendente
    else
      Value := sSuperIntendentePatio;

  if CompareText(VarName, 'SUPERVISOR') = 0 then
    if qryBitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSupervisor
    else
      Value := sSupervisorPatio;

  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    if qryBitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sSupervisorTierra
    else
      Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    if qryBitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSuperIntendente
    else
      Value := sPuestoSuperIntendentePatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    if qryBitacora.FieldValues['sOrigenTierra'] = 'No' then
      Value := sPuestoSupervisor
    else
      Value := sPuestoSupervisorPatio;

  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    if qryBitacora.FieldValues['sOrigenTierra'] = 'No' then
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

procedure TfrmConsultaActividad.mnFichaTecnicaClick(Sender: TObject);
begin
  try
    if gridActividades.DataSource.Dataset.isempty = false then
    begin
      if gridActividades.DataSource.DataSet.RecordCount > 0 then
      begin
        if tsNumeroActividad.Text <> '' then
          procFichaTecnica(global_contrato, global_convenio, tsNumeroActividad.Text, frmConsultaActividad);
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

procedure TfrmConsultaActividad.qryPartidasDelAnexoAfterScroll(
  DataSet: TDataSet);
var
  sDescripcion: string;
  iFase: Integer;
begin
  try

    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Select sWbs, sNumeroActividad, mDescripcion, dCantidadAnexo, sMedida, dVentaMN, dPonderado, dInstalado, dExcedente from actividadesxanexo ' +
      'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroActividad = :actividad and sWbs = :wbs and sTipoActividad = "Actividad"');
    connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
    connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
    connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
    connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := qryPartidasDelAnexo.FieldByName('sWbs').AsString;

    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
      global_partida := tsNumeroActividad.Text;
      tdCantidadAnexo.Value := connection.QryBusca.FieldValues['dCantidadAnexo'];
      tdInstalado.Value := connection.QryBusca.FieldValues['dInstalado'];
      tdPendiente.Value := connection.QryBusca.FieldValues['dCantidadAnexo'] - connection.QryBusca.FieldValues['dInstalado'];
      tdExcedente.Value := connection.QryBusca.FieldValues['dExcedente'];
      tsWbs.Text := connection.QryBusca.FieldValues['sWbs'];
      tdVentaMN.Value := connection.QryBusca.FieldValues['dVentaMN'];
      tsMedida.Text := connection.QryBusca.FieldValues['sMedida'];
      tdPonderado.Value := connection.QryBusca.FieldValues['dPonderado'];
      frmConsultaActividad.Hint := connection.QryBusca.FieldValues['mDescripcion'];
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
      frmConsultaActividad.Hint := '';
      sbPaquete.Panels.Items[1].Text := '0';
      PanelHistorico.Visible := False;
    end;

    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
      imgNotas.Visible := True;

    Historico.Active := False;
    Historico.Params.ParamByName('Contrato').DataType := ftString;
    Historico.Params.ParamByName('Contrato').Value := global_contrato;
    Historico.Params.ParamByName('Actividad').DataType := ftString;
    Historico.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
    Historico.Open;


    ResumendeAlcances.Active := False;
    ResumendeAlcances.Params.ParamByName('contrato').DataType := ftString;
    ResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato;
    ResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString;
    ResumendeAlcances.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
    ResumendeAlcances.Open;

    tsFiltro.Items.Clear;
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select iFase, sDescripcion From alcancesxactividad Where sContrato = :Contrato ' +
      ' And sNumeroActividad = :Actividad and sWbs=:wbs Order By iFase');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value := qryPartidasDelAnexo.FieldByName('sWbs').AsString;
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
    begin
      tsFiltro.Items.Add('TODOS LOS ALCANCES');
      Connection.QryBusca.First;
      iFase := 1;
      while not Connection.QryBusca.Eof do
      begin
        Fases[iFase] := Connection.QryBusca.FieldValues['iFase'];
        iFase := iFase + 1;
        tsFiltro.Items.Add(Connection.QryBusca.FieldValues['sDescripcion']);
        Connection.QryBusca.Next
      end;
      tsFiltro.ItemIndex := 0;
    end;

    ActividadesxOrden.Active := False;
    ActividadesxOrden.Params.ParamByName('contrato').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('contrato').Value := global_contrato;
    ActividadesxOrden.Params.ParamByName('convenio').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('convenio').Value := global_convenio;
    ActividadesxOrden.Params.ParamByName('actividad').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    ActividadesxOrden.Params.ParamByName('wbsContrato').DataType := ftString;
    ActividadesxOrden.Params.ParamByName('wbsContrato').Value := qryPartidasDelAnexo.FieldByName('sWbs').AsString;
    ActividadesxOrden.Open;


    qryBitacora.Active := False;
    qryBitacora.SQL.Clear;
    qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.sReferencia, ' +
      'a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
      ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroActividad=b.sNumeroActividad and ao.sWbs=b.sWbs  )  ' +
      ' INNER JOIN alcancesxactividad a ON (a.sContrato = ao.sContrato And a.sNumeroActividad = ao.sNumeroActividad and a.sWbs=ao.sWbsContrato  And b.iFase = a.iFase) ' +
      ' INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
      ' INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
      'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden and ao.sIdConvenio=:convenio  And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.dIdFecha, b.iIdDiario');
    qryBitacora.Params.ParamByName('Contrato').DataType := ftString;
    qryBitacora.Params.ParamByName('Contrato').Value := global_contrato;
    qryBitacora.Params.ParamByName('Convenio').DataType := ftString;
    qryBitacora.Params.ParamByName('Convenio').Value := global_convenio;

    qryBitacora.Params.ParamByName('Orden').DataType := ftString;
    if ActividadesxOrden.RecordCount > 0 then
      qryBitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden']
    else
      qryBitacora.Params.ParamByName('Orden').Value := '';
    qryBitacora.Params.ParamByName('Wbs').DataType := ftString;
    if ActividadesxOrden.RecordCount > 0 then
      qryBitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs']
    else
      qryBitacora.Params.ParamByName('Wbs').Value := '';
    qryBitacora.Params.ParamByName('Actividad').DataType := ftString;
    if ActividadesxOrden.RecordCount > 0 then
      qryBitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad']
    else
      qryBitacora.Params.ParamByName('Actividad').Value := '';
    qryBitacora.Open;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al obtener el número de concepto', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad.ComentariosAdicionalesClick(
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

procedure TfrmConsultaActividad.Copy1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure TfrmConsultaActividad.Cut1Click(Sender: TObject);
begin
  try
    if gridactividades.DataSource.DataSet.IsEmpty = false then
    begin
      if gridActividades.DataSource.DataSet.RecordCount > 0 then
        UtGrid.CopyRowsToClip;
    end;

  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Consulta de Partidas por Anexo', 'Al copiar registro', 0);
    end;
  end;
end;

procedure TfrmConsultaActividad.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmConsultaActividad.ActividadesxOrdenCalcFields(
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

procedure TfrmConsultaActividad.ActividadesxOrdenAfterScroll(
  DataSet: TDataSet);
begin

  sbPaquete.Panels.Items[1].Text := '0';
  if ActividadesxOrden.RecordCount > 0 then
  begin
    GridActividades.Hint := ActividadesxOrden.FieldValues['sDescripcion'];
    if tsFiltro.ItemIndex = 0 then
    begin
      qryBitacora.Active := False;
      qryBitacora.SQL.Clear;
//      qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance,  ' +
//        'b.sReferencia, a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
//        'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
//        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
//        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
//        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.dIdFecha, b.iIdDiario');
      qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.sReferencia, ' +
        'a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
        ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroActividad=b.sNumeroActividad and ao.sWbs=b.sWbs  )  ' +
        ' INNER JOIN alcancesxactividad a ON (a.sContrato = ao.sContrato And a.sNumeroActividad = ao.sNumeroActividad and a.sWbs=ao.sWbsContrato  And b.iFase = a.iFase) ' +
        ' INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        ' INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden and ao.sIdConvenio=:convenio  And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.dIdFecha, b.iIdDiario');
      qryBitacora.Params.ParamByName('Contrato').DataType := ftString;
      qryBitacora.Params.ParamByName('Contrato').Value := global_contrato;
      qryBitacora.Params.ParamByName('Convenio').DataType := ftString;
      qryBitacora.Params.ParamByName('Convenio').Value := global_convenio;
      qryBitacora.Params.ParamByName('Orden').DataType := ftString;
      qryBitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      qryBitacora.Params.ParamByName('Wbs').DataType := ftString;
      qryBitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['swbs'];
      qryBitacora.Params.ParamByName('Actividad').DataType := ftString;
      qryBitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
      qryBitacora.Open;
    end
    else
    begin
      qryBitacora.Active := False;
      qryBitacora.SQL.Clear;
     qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.sReferencia, ' +
        'a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
        ' INNER JOIN actividadesxorden ao ON ( ao.sContrato=b.sContrato and ao.sNumeroActividad=b.sNumeroActividad and ao.sWbs=b.sWbs  )  ' +
        ' INNER JOIN alcancesxactividad a ON (a.sContrato = ao.sContrato And a.sNumeroActividad = ao.sNumeroActividad and a.sWbs=ao.sWbsContrato  And b.iFase = a.iFase) ' +
        ' INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
        ' INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden and ao.sIdConvenio=:convenio  And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Order By b.dIdFecha, b.iIdDiario');
//      qryBitacora.SQL.Add('Select b.sContrato, b.dIdFecha, b.sIdTurno, b.sNumeroOrden, b.sWbs, b.sNumeroActividad, b.dCantidad, b.dAvance, b.sReferencia, ' +
//        'a.sDescripcion, r.sNumeroReporte, r.sIdConvenio, tu.sOrigenTierra From bitacoradealcances b ' +
//        'INNER JOIN alcancesxactividad a ON (b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
//        'INNER JOIN reportediario r ON (r.sContrato = b.sContrato And r.sNumeroOrden = b.sNumeroOrden And r.dIdFecha = b.dIdFecha And r.sIdTurno = b.sIdTurno) ' +
//        'INNER JOIN turnos tu ON (r.sContrato = tu.sContrato And r.sIdTurno = tu.sIdTurno) ' +
//        'Where b.sContrato = :Contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad And b.iFase = :Fase Order By b.dIdFecha, b.iIdDiario');
      qryBitacora.Params.ParamByName('Contrato').DataType := ftString;
      qryBitacora.Params.ParamByName('Contrato').Value := global_contrato;
      qryBitacora.Params.ParamByName('Orden').DataType := ftString;
      qryBitacora.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden'];
      qryBitacora.Params.ParamByName('Wbs').DataType := ftString;
      qryBitacora.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'];
      qryBitacora.Params.ParamByName('Actividad').DataType := ftString;
      qryBitacora.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'];
      qryBitacora.Params.ParamByName('Fase').DataType := ftInteger;
      qryBitacora.Params.ParamByName('Fase').Value := Fases[tsFiltro.ItemIndex];
      qryBitacora.Open;
    end;

    if qryBitacora.RecordCount > 0 then
    begin
      AvGeneral.Active := False;
      AvGeneral.SQL.Clear;
      if tsFiltro.ItemIndex > 0 then
      begin
        AvGeneral.SQL.Add('select sum(dAvance) as dAvance, Sum(dCantidad) as dCantidad from bitacoradealcances ' +
          'where sContrato = :contrato and sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad= :Actividad And iFase = :Fase Group By sContrato');
        AvGeneral.Params.ParamByName('Fase').DataType := ftInteger;
        AvGeneral.Params.ParamByName('Fase').Value := Fases[tsFiltro.ItemIndex];
      end
      else
        AvGeneral.SQL.Add('select sum(dAvance) as dAvance, 0 as dCantidad from bitacoradealcances ' +
          'where sContrato = :contrato and sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad= :Actividad Group By sContrato');
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
        sbPaquete.Panels.Items[1].Text := avGeneral.FieldValues['dAvance'];
    end
  end
  else
    GridActividades.Hint := '';

end;

end.

