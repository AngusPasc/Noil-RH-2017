unit frm_ConsultadeActividades4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, StdCtrls, DBCtrls, ComCtrls, ExtCtrls, DB,
  Mask, Grids, DBGrids, global, Buttons, frxClass, frxDBSet, ToolWin,
  Menus, RXDBCtrl, RxLookup, StrUtils,UnitTBotonesPermisos,
  RxMemDS, utilerias, ZAbstractRODataset, ZDataset, rxSpeedbar,
  udbgrid, unitexcepciones, unitvalidatexto, UFunctionsGHH ;

type
  TfrmConsultaActividad4 = class(TForm)
    ds_bitacora: TDataSource;
    ds_actividadesiguales: TDataSource;
    sbPaquete: TStatusBar;
    ds_Resumen: TDataSource;
    GroupBox3: TGroupBox;
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
    Label2: TLabel;
    Label3: TLabel;
    tsPaquete: TRxDBLookupCombo;
    ds_ordenesdetrabajo: TDataSource;
    ds_Paquetes: TDataSource;
    tsNumeroOrden: TRxDBLookupCombo;
    Panel1: TPanel;
    Grid_Resumen: TDBGrid;
    GroupBox2: TGroupBox;
    grid_bitacora: TDBGrid;
    GridActividades: TRxDBGrid;
    imgNotas: TImage;
    tmDescripcion: TDBMemo;
    OptionsBar: TSpeedBar;
    Reportes: TSpeedbarSection;
    btnDetalle: TSpeedItem;
    btnStatus: TSpeedItem;
    btnRetraso: TSpeedItem;
    dbReporte: TfrxDBDataset;
    rxAnexo: TRxMemoryData;
    rxAnexosNumeroOrden: TStringField;
    rxAnexosNumeroActividad: TStringField;
    rxAnexomDescripcion: TMemoField;
    rxAnexosMedida: TStringField;
    rxAnexodCantidadAnexo: TFloatField;
    rxAnexodPonderado: TFloatField;
    rxAnexodVentaMN: TCurrencyField;
    rxAnexodReportado: TFloatField;
    rxAnexodGenerado: TFloatField;
    rxAnexodPReportar: TFloatField;
    rxAnexodPGenerar: TFloatField;
    rxPartidasAvance: TRxMemoryData;
    rxPartidasAvancesContrato: TStringField;
    rxPartidasAvancesPaquete: TStringField;
    StringField8: TStringField;
    rxPartidasAvancemDescripcion: TMemoField;
    StringField9: TStringField;
    rxPartidasAvancedPonderado: TFloatField;
    rxPartidasAvancedCantidadAnexo: TFloatField;
    rxPartidasAvancedCantidadProgramada: TFloatField;
    rxPartidasAvancedAvanceProgramado: TFloatField;
    rxPartidasAvancedCantidadReal: TFloatField;
    rxPartidasAvancedAvanceReal: TFloatField;
    rxPartidasAvancedFechaInicio: TDateField;
    rxPartidasAvancedFechaFinal: TDateField;
    rxPartidasAvanceiRetraso: TIntegerField;
    rxPartidasAvancedVentaMN: TCurrencyField;
    rxPartidasAvancedVentaDLL: TCurrencyField;
    btnAlcances: TSpeedItem;
    rDiario: TfrxReport;
    mnFichaTecnica: TMenuItem;
    ActividadesIguales: TZReadOnlyQuery;
    ActividadesIgualessContrato: TStringField;
    ActividadesIgualessNumeroOrden: TStringField;
    ActividadesIgualessWbs: TStringField;
    ActividadesIgualessWbsAnterior: TStringField;
    ActividadesIgualessNumeroActividad: TStringField;
    ActividadesIgualesmDescripcion: TMemoField;
    ActividadesIgualesdPonderado: TFloatField;
    ActividadesIgualessMedida: TStringField;
    ActividadesIgualesdCantidad: TFloatField;
    ActividadesIgualesdInstalado: TFloatField;
    ActividadesIgualesdExcedente: TFloatField;
    ActividadesIgualesdVentaMN: TFloatField;
    ActividadesIgualesdVentaDLL: TFloatField;
    Paquetes: TZReadOnlyQuery;
    PaquetessWbs: TStringField;
    PaquetesmDescripcion: TMemoField;
    PaquetessDescripcion: TStringField;
    OrdenesdeTrabajo: TZReadOnlyQuery;
    QryResumendeAlcances: TZReadOnlyQuery;
    QryResumendeAlcancesiFase: TIntegerField;
    QryResumendeAlcancesdPonderado: TFloatField;
    QryResumendeAlcancessDescripcion: TStringField;
    QryResumendeAlcancesdCantidad: TFloatField;
    Historico: TZReadOnlyQuery;
    AvGeneral: TZReadOnlyQuery;
    QryBitacora: TZReadOnlyQuery;
    QryBitacorasContrato: TStringField;
    QryBitacoradIdFecha: TDateField;
    QryBitacoraiIdDiario: TIntegerField;
    QryBitacorasIdTurno: TStringField;
    QryBitacorasNumeroOrden: TStringField;
    QryBitacorasNumeroActividad: TStringField;
    QryBitacoradCantidad: TFloatField;
    QryBitacoradAvance: TFloatField;
    QryBitacorasIdTipoMovimiento: TStringField;
    QryBitacoralAlcance: TStringField;
    QryBitacorasNumeroReporte: TStringField;
    QryBitacorasIdConvenio: TStringField;
    QryBitacorasOrigenTierra: TStringField;
    QryBitacorasTitulo: TStringField;
    QryBitacorasDescripcionTurno: TStringField;
    QryBitacorasWbs: TStringField;
    rxAnexoswbs: TStringField;
    ActividadesIgualesdPendiente: TFloatField;
    ActividadesIgualesiItemOrden: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure ActividadesIgualesCalcFields(DataSet: TDataSet);
    procedure ActividadesIgualesAfterScroll(DataSet: TDataSet);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure HistorialdeSuministros1Click(Sender: TObject);
    procedure tsPaqueteEnter(Sender: TObject);
    procedure tsPaqueteChange(Sender: TObject);
    procedure tsNumeroOrdenChange(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsPaqueteExit(Sender: TObject);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure GridActividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure PaquetesCalcFields(DataSet: TDataSet);
    procedure GridActividadesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btnDetalleClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnRetrasoClick(Sender: TObject);
    procedure btnAlcancesClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: String; var Value: Variant);
    procedure grid_bitacoraDblClick(Sender: TObject);
    procedure grid_bitacoraKeyPress(Sender: TObject; var Key: Char);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure QryBitacoraCalcFields(DataSet: TDataSet);
    procedure GridActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grid_bitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GridActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_bitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GridActividadesTitleClick(Column: TColumn);
    procedure grid_bitacoraTitleClick(Column: TColumn);
    procedure Cut1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaActividad4: TfrmConsultaActividad4;
  Fases      : Array  [1 ..99 ] Of Integer ;
  sOpcion    : String ;
  utgrid:ticdbgrid;
  utgrid2:ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_comentariosxanexo;

{$R *.dfm}

procedure TfrmConsultaActividad4.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  utgrid.destroy;
  utgrid2.Destroy;
  Botonpermiso.Free;
  action := cafree ;

end;

procedure TfrmConsultaActividad4.FormShow(Sender: TObject);
Var
    iFaseDef : Integer ;
    iFase : Integer ;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cConsulta4',PopupPrincipal);
  BotonPermiso.permisosBotones(nil);
  if not BotonPermiso.imprimir then
  begin
    OptionsBar.Enabled := false;
  end;
  sMenuP:=stMenu;
  UtGrid:=TicdbGrid.create(gridactividades);
  UtGrid2:=TicdbGrid.create(grid_bitacora);
  connection.configuracion.refresh ;
  OrdenesdeTrabajo.Active := False ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
  OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato ;
  ordenesdetrabajo.Params.ParamByName('status').DataType := ftString ;
  ordenesdetrabajo.Params.ParamByName('status').Value :=  connection.configuracion.FieldValues [ 'cStatusProceso' ];
  OrdenesdeTrabajo.Open ;
  If OrdenesdeTrabajo.RecordCount > 0 Then
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues ['sNumeroOrden'] ;
  tsNumeroOrden.SetFocus
end;

procedure TfrmConsultaActividad4.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmConsultaActividad4.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
      tsPaquete.SetFocus
end;

procedure TfrmConsultaActividad4.ActividadesIgualesCalcFields(
  DataSet: TDataSet);
begin
    If ActividadesIguales.FieldValues['dCantidad'] >= ActividadesIguales.FieldValues['dInstalado'] Then
        ActividadesIgualesdPendiente.Value := ActividadesIguales.FieldValues['dCantidad'] - ActividadesIguales.FieldValues['dInstalado']
    Else
        ActividadesIgualesdPendiente.Value := 0 ;
end;

procedure TfrmConsultaActividad4.ActividadesIgualesAfterScroll(
  DataSet: TDataSet);
begin
    sbPaquete.Panels.Items[1].Text := '0' ;
    sbPaquete.Panels.Items[3].Text := '0' ;
    global_partida := '' ;
    If ActividadesIguales.RecordCount > 0 Then
    Begin
          global_partida := ActividadesIguales.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Active := False ;
          Connection.qryBusca.SQL.Clear ;
          Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad') ;
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
          Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString ;
          Connection.qryBusca.Params.ParamByName('actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad'] ;
          Connection.qryBusca.Open ;
          If Connection.qryBusca.RecordCount > 0 Then
              imgNotas.Visible := True ;

          Historico.Active := False ;
          Historico.Params.ParamByName('Contrato').DataType := ftString ;
          Historico.Params.ParamByName('Contrato').Value := global_contrato ;
          Historico.Params.ParamByName('Actividad').DataType := ftString ;
          Historico.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad'] ;
          Historico.Open ;


          QryResumendeAlcances.Active := False ;
          QryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString ;
          QryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato ;
          QryResumendeAlcances.Params.ParamByName('wbs').DataType := ftString ;
          QryResumendeAlcances.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs'] ;
          QryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString ;
          QryResumendeAlcances.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad'] ;
          QryResumendeAlcances.Open ;

          QryBitacora.Active := False ;
          QryBitacora.Params.ParamByName('Contrato').DataType := ftString ;
          QryBitacora.Params.ParamByName('Contrato').Value := global_contrato ;
          QryBitacora.Params.ParamByName('Orden').DataType := ftString ;
          QryBitacora.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
          QryBitacora.Params.ParamByName('Wbs').DataType := ftString ;
          QryBitacora.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbs'] ;
          QryBitacora.Params.ParamByName('Actividad').DataType := ftString ;
          QryBitacora.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad'] ;
          QryBitacora.Open ;
          If QryBitacora.RecordCount > 0 Then
          Begin
              AvGeneral.Active := False ;
              AvGeneral.SQL.Clear ;
              AvGeneral.SQL.Add('select sum(dAvance) as dAvance, 0 as dCantidad from bitacoradealcances ' +
                                'where sContrato = :contrato and sNumeroOrden = :Orden and sWbs = :Wbs and sNumeroActividad= :Actividad Group By sContrato') ;
              AvGeneral.Params.ParamByName('contrato').DataType := ftString ;
              AvGeneral.Params.ParamByName('contrato').Value := global_contrato ;
              AvGeneral.Params.ParamByName('Orden').DataType := ftString ;
              AvGeneral.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
              AvGeneral.Params.ParamByName('Wbs').DataType := ftString ;
              AvGeneral.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbs'] ;
              AvGeneral.Params.ParamByName('Actividad').DataType := ftString ;
              AvGeneral.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad'] ;
              AvGeneral.Open ;
              If AvGeneral.RecordCount > 0 Then
              Begin
                  sbPaquete.Panels.Items[1].Text := avGeneral.FieldValues['dAvance'] ;
                  sbPaquete.Panels.Items[3].Text := avGeneral.FieldValues['dCantidad']
              End
        End
    End
    Else
    Begin
        QryBitacora.Active := False ;
        QryBitacora.Params.ParamByName('Contrato').DataType := ftString ;
        QryBitacora.Params.ParamByName('Contrato').Value := global_contrato ;
        QryBitacora.Params.ParamByName('Orden').DataType := ftString ;
        QryBitacora.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        QryBitacora.Params.ParamByName('Wbs').DataType := ftString ;
        QryBitacora.Params.ParamByName('Wbs').Value := '' ;
        QryBitacora.Params.ParamByName('Actividad').DataType := ftString ;
        QryBitacora.Params.ParamByName('Actividad').Value := '' ;
        QryBitacora.Open ;

        AvGeneral.Active := False ;

        Historico.Active := False ;
        Historico.Params.ParamByName('Contrato').DataType := ftString ;
        Historico.Params.ParamByName('Contrato').Value := global_contrato ;
        Historico.Params.ParamByName('Actividad').DataType := ftString ;
        Historico.Params.ParamByName('Actividad').Value := '' ;
        Historico.Open ;

        QryResumendeAlcances.Active := False ;
        QryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString ;
        QryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato ;
        QryResumendeAlcances.Params.ParamByName('Wbs').DataType := ftString ;
        QryResumendeAlcances.Params.ParamByName('Wbs').Value := '' ;
        QryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString ;
        QryResumendeAlcances.Params.ParamByName('Actividad').Value := '' ;
        QryResumendeAlcances.Open ;

    End
end;

procedure TfrmConsultaActividad4.ComentariosAdicionalesClick(
  Sender: TObject);
begin
if GridActividades.DataSource.DataSet.IsEmpty=true then
    begin
       ShowMessage('No existen registros para generar comentarios adicionales');
     exit;
    end;
    If ActividadesIguales.RecordCount > 0 Then
    Begin
      try
          stMenu:=sMenuP;
          global_partida := ActividadesIGuales.FieldValues['sNumeroActividad'] ;
          Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo) ;
          frmComentariosxAnexo.show() ;
      except
          on e : exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Ventana Principal', 'Al abrir ventana Comentarios Adicionales a la Partida Anexo', 0);
          end;
      end;
    End
end;


procedure TfrmConsultaActividad4.Cut1Click(Sender: TObject);
begin
  if gridactividades.Focused=true then
    begin
      UtGrid.CopyRowsToClip;
    end;
  if grid_bitacora.Focused=true then
    begin
      UtGrid2.CopyRowsToClip;
    end;
end;

procedure TfrmConsultaActividad4.imgNotasDblClick(Sender: TObject);
begin
    ComentariosAdicionales.Click 
end;

procedure TfrmConsultaActividad4.HistorialdeSuministros1Click(
  Sender: TObject);
begin
    PanelHistorico.Visible := NOT PanelHistorico.Visible ;
end;

procedure TfrmConsultaActividad4.tsPaqueteEnter(Sender: TObject);
begin
    tsPaquete.Color := global_color_entradaPU;
end;

procedure TfrmConsultaActividad4.tsPaqueteChange(Sender: TObject);
begin
 try
  ActividadesIguales.Active := False ;
  ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
  ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
  ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('convenio').Value := global_convenio ;
  ActividadesIguales.Params.ParamByName('wbs').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('wbs').Value := tsPaquete.KeyValue ;
  ActividadesIguales.Params.ParamByName('Ordenado').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('Ordenado').Value := 'iItemOrden' ;
  ActividadesIguales.Open ;

  QryResumendeAlcances.Active := False ;
  QryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString ;
  QryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato ;
  QryResumendeAlcances.Params.ParamByName('Wbs').DataType := ftString ;
  QryResumendeAlcances.Params.ParamByName('Wbs').Value := '' ;
  QryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString ;
  If ActividadesIguales.RecordCount > 0 Then
      QryResumendeAlcances.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad']
  Else
      QryResumendeAlcances.Params.ParamByName('Actividad').Value := '' ;

  QryResumendeAlcances.Open ;

  QryBitacora.Active := False ;
  QryBitacora.Params.ParamByName('Contrato').DataType := ftString ;
  QryBitacora.Params.ParamByName('Contrato').Value := global_contrato ;
  QryBitacora.Params.ParamByName('Orden').DataType := ftString ;
  QryBitacora.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
  QryBitacora.Params.ParamByName('Wbs').DataType := ftString ;
  If ActividadesIguales.RecordCount > 0 Then
      QryBitacora.Params.ParamByName('Wbs').Value := ActividadesIguales.FieldValues['sWbs']
  Else
      QryBitacora.Params.ParamByName('Wbs').Value := '' ;
  QryBitacora.Params.ParamByName('Actividad').DataType := ftString ;
  If ActividadesIguales.RecordCount > 0 Then
      QryBitacora.Params.ParamByName('Actividad').Value := ActividadesIguales.FieldValues['sNumeroActividad']
  Else
      QryBitacora.Params.ParamByName('Actividad').Value := '' ;
  QryBitacora.Open ;
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'En el evento salir del combo Paquete', 0);
  end;
 end;
end;

procedure TfrmConsultaActividad4.tsNumeroOrdenChange(Sender: TObject);
begin
try
  Paquetes.Active := False ;
  Paquetes.Params.ParamByName('contrato').DataType := ftString ;
  Paquetes.Params.ParamByName('contrato').Value := global_contrato ;
  Paquetes.Params.ParamByName('convenio').DataType := ftString ;
  Paquetes.Params.ParamByName('convenio').Value := global_convenio ;
  Paquetes.Params.ParamByName('orden').DataType := ftString ;
  Paquetes.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
  Paquetes.Open ;

  ActividadesIguales.Active := False ;
  ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
  ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
  ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('convenio').Value := global_convenio ;
  ActividadesIguales.Params.ParamByName('wbs').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('wbs').Value := tsPaquete.KeyValue ;
  ActividadesIguales.Params.ParamByName('Ordenado').DataType := ftString ;
  ActividadesIguales.Params.ParamByName('Ordenado').Value := 'iItemOrden' ;
  ActividadesIguales.Open ;

  QryResumendeAlcances.Active := False ;
  QryResumendeAlcances.Params.ParamByName('contrato').DataType := ftString ;
  QryResumendeAlcances.Params.ParamByName('contrato').Value := global_contrato ;
  QryResumendeAlcances.Params.ParamByName('Wbs').DataType := ftString ;
  QryResumendeAlcances.Params.ParamByName('Wbs').Value := '' ;
  QryResumendeAlcances.Params.ParamByName('Actividad').DataType := ftString ;
  QryResumendeAlcances.Params.ParamByName('Actividad').Value := '' ;
  QryResumendeAlcances.Open ;

  QryBitacora.Active := False ;
  QryBitacora.Params.ParamByName('Contrato').DataType := ftString ;
  QryBitacora.Params.ParamByName('Contrato').Value := global_contrato ;
  QryBitacora.Params.ParamByName('Orden').DataType := ftString ;
  QryBitacora.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
  QryBitacora.Params.ParamByName('Wbs').DataType := ftString ;
  QryBitacora.Params.ParamByName('Wbs').Value := '' ;
  QryBitacora.Params.ParamByName('Actividad').DataType := ftString ;
  QryBitacora.Params.ParamByName('Actividad').Value := '' ;
  QryBitacora.Open ;
except
on e : exception do begin
UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'En el evento salir del combo Frente de trabajo', 0);
end;
end;

end;

procedure TfrmConsultaActividad4.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaPU;
    PanelHistorico.Visible := False ;
end;

procedure TfrmConsultaActividad4.tsPaqueteExit(Sender: TObject);
begin
    tsPaquete.Color := global_color_salidaPU;
end;

procedure TfrmConsultaActividad4.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        GridActividades.SetFocus
end;

procedure TfrmConsultaActividad4.GridActividadesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dInstalado').AsFloat = (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dCantidad').AsFloat)
       And ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat = 0) then
       AFont.Color := clBlue
  Else
       If ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
            AFont.Color := clBlue
       Else
            AFont.Color := clBlack
end;

procedure TfrmConsultaActividad4.GridActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad4.GridActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad4.PaquetesCalcFields(DataSet: TDataSet);
begin
    PaquetessDescripcion.Text := MidStr ( Paquetes.FieldValues['mDescripcion'] , 1 , 150 )
end;

procedure TfrmConsultaActividad4.GridActividadesTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
Var
  sCampo : String ;
begin
   sCampo := Field.FieldName ;
   ActividadesIguales.Active := False ;
   ActividadesIguales.SQL.Clear ;
   If sTipoOrden = 'ASC' Then
   Begin
       ActividadesIguales.SQL.Add('Select sContrato, sNumeroOrden, iItemOrden, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dCantidad, sMedida, ' +
                                  'dVentaMN, dVentaDLL, dPonderado, dInstalado, dExcedente From actividadesxorden  ' +
                                  'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sWbs = :Wbs and sTipoActividad = "Actividad" ' +
                                  'order by :Ordenado ASC') ;
       sTipoOrden := 'DESC'
   End
   Else
   Begin
       ActividadesIguales.SQL.Add('Select sContrato, sNumeroOrden, iItemOrden, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dCantidad, sMedida, ' +
                                  'dVentaMN, dVentaDLL, dPonderado, dInstalado, dExcedente From actividadesxorden  ' +
                                  'Where sContrato = :Contrato And sNumeroOrden = :Orden And sIdConvenio = :Convenio And sWbs = :Wbs and sTipoActividad = "Actividad" ' +
                                  'order by :Ordenado DESC') ;
       sTipoOrden := 'ASC'
   End ;
   ActividadesIguales.Params.ParamByName('contrato').DataType := ftString ;
   ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato ;
   ActividadesIguales.Params.ParamByName('orden').DataType := ftString ;
   ActividadesIguales.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
   ActividadesIguales.Params.ParamByName('convenio').DataType := ftString ;
   ActividadesIguales.Params.ParamByName('convenio').Value := global_convenio ;
   ActividadesIguales.Params.ParamByName('wbs').DataType := ftString ;
   ActividadesIguales.Params.ParamByName('wbs').Value := tsPaquete.KeyValue ;
   ActividadesIguales.Params.ParamByName('Ordenado').DataType := ftString ;
   ActividadesIguales.Params.ParamByName('Ordenado').Value := sCampo ;
   ActividadesIguales.Open ;
end;


procedure TfrmConsultaActividad4.GridActividadesTitleClick(Column: TColumn);
begin
if gridactividades.datasource.DataSet.IsEmpty=false  then
if gridactividades.DataSource.DataSet.RecordCount>0 then
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad4.btnDetalleClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  if not FileExists(global_files + global_miReporte + '_DetPartidasxPaquete.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_DetPartidasxPaquete.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  //empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente de T');nombres.Add('Paquete');

  cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsPaquete.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
      MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
      exit;
  end;
  //continuainserccion de datos
  if GridActividades.DataSource.DataSet.IsEmpty=true then
  begin
      ShowMessage('No existen registros para imprimir');
      exit;
  end;
  try

   ActividadesIguales.First ;
   dbReporte.FieldAliases.Clear ;
   dbReporte.DataSet := ActividadesIguales ;
   rDiario.LoadFromFile (global_files + global_miReporte + '_DetPartidasxPaquete.fr3') ;
   If connection.configuracion.FieldValues['lLicencia'] = 'No' Then
      rDiario.PreviewOptions.Buttons := [pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator]
   Else
      rDiario.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator,pbExportQuick] ;
   rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

  except
  on e : exception do
  begin
     UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al imprimir detalle de partidas', 0);
  end;
  end;
end;

procedure TfrmConsultaActividad4.btnStatusClick(Sender: TObject);
Var
   dReportado : Double ;
   QryPartidas : tzReadOnlyQuery ;
  nombres, cadenas: TStringList;
begin
  if not FileExists(global_files + global_miReporte + '_DetAvancePartidasxPaquete.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_DetAvancePartidasxPaquete.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  //empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente de T');nombres.Add('Paquete');

  cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsPaquete.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  if GridActividades.DataSource.DataSet.IsEmpty=true then
  begin
      ShowMessage('No existen registros para imprimir');
      exit;
  end;
  try
   QryPartidas := tzReadOnlyQuery.Create(Self);
   QryPartidas.Connection := connection.zConnection ;

   dbReporte.FieldAliases.Clear ;
   dbReporte.DataSet := rxAnexo ;

    If rxAnexo.RecordCount > 0 Then
        rxAnexo.EmptyTable ;

   QryPartidas.Active := False ;
   QryPartidas.SQL.Clear ;
   QryPartidas.SQL.Add('Select sNumeroOrden, sWbs, sNumeroActividad, mDescripcion, dCantidad , dVentaMN, dPonderado, sMedida From actividadesxorden ' +
                       'where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbsAnterior = :Wbs And sTipoActividad = "Actividad" Order By iItemOrden, sNumeroActividad') ;
   QryPartidas.Params.ParamByName('Contrato').DataType := ftString ;
   QryPartidas.Params.ParamByName('Contrato').Value := global_contrato ;
   QryPartidas.Params.ParamByName('Convenio').DataType := ftString ;
   QryPartidas.Params.ParamByName('Convenio').Value := global_convenio ;
   QryPartidas.Params.ParamByName('Orden').DataType := ftString ;
   QryPartidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
   QryPartidas.Params.ParamByName('wbs').DataType := ftString ;
   QryPartidas.Params.ParamByName('wbs').Value := tsPaquete.KeyValue ;
   QryPartidas.Open ;

   While NOT QryPartidas.Eof Do
   Begin
       dReportado := 0 ;
       Connection.qryBusca2.Active := False ;
       Connection.qryBusca2.SQL.Clear ;
       Connection.qryBusca2.SQL.Add('Select Sum(dCantidad) as dReportado From bitacoradeactividades  ' +
                                    'Where sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sNumeroActividad') ;
       Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
       Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
       Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
       Connection.qryBusca2.Params.ParamByName('Orden').Value := QryPartidas.FieldValues['sNumeroOrden'] ;
       Connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
       Connection.qryBusca2.Params.ParamByName('Wbs').Value := QryPartidas.FieldValues['sWbs'] ;
       Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
       Connection.qryBusca2.Params.ParamByName('Actividad').Value := QryPartidas.FieldValues['sNumeroActividad'] ;
       Connection.qryBusca2.Open ;
       If Connection.qryBusca2.RecordCount > 0 Then
            dReportado := Connection.qryBusca2.FieldValues ['dReportado'] ;

       rxAnexo.Append ;
       rxAnexo.FieldValues['sNumeroOrden'] := QryPartidas.FieldValues['sNumeroOrden'] ;
       rxAnexo.FieldValues['sWbs'] := QryPartidas.FieldValues['sWbs'] ;
       rxAnexo.FieldValues['sNumeroActividad'] := QryPartidas.FieldValues['sNumeroActividad'] ;
       rxAnexo.FieldValues['mDescripcion'] := MidStr(QryPartidas.FieldValues['mDescripcion'],1,100) + ' ...' ;
       rxAnexo.FieldValues['sMedida'] := QryPartidas.FieldValues['sMedida'] ;
       rxAnexo.FieldValues['dCantidadAnexo'] := QryPartidas.FieldValues['dCantidad'] ;
       rxAnexo.FieldValues['dVentaMN'] := QryPartidas.FieldValues['dVentaMN'] ;
       rxAnexo.FieldValues['dPonderado'] := QryPartidas.FieldValues['dPonderado'] ;
       rxAnexo.FieldValues['dReportado'] := dReportado ;
       rxAnexo.Post ;
       QryPartidas.Next
  End ;

 

  QryPartidas.Destroy ;
  rDiario.LoadFromFile (global_files + global_miReporte + '_DetAvancePartidasxPaquete.fr3') ;
  If connection.configuracion.FieldValues['lLicencia'] = 'No' Then
      rDiario.PreviewOptions.Buttons := [pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator]
  Else
      rDiario.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator,pbExportQuick] ;
  rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;

 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al imprimir status de partidas', 0);
  end;
 end;
end;

procedure TfrmConsultaActividad4.btnRetrasoClick(Sender: TObject);
Var
    dAvance  : Double ;
    iRetraso : Integer ;
    QryPartidas : tzReadOnlyQuery ;
  nombres, cadenas: TStringList;
begin
  if not FileExists(global_files + global_miReporte + '_DetRetrazosPaquete.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_DetRetrazosPaquete.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  //empieza validacion
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente de T');nombres.Add('Paquete');

  cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsPaquete.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  if GridActividades.DataSource.DataSet.IsEmpty=true then
  begin
      ShowMessage('No existen registros para imprimir');
      exit;
  end;
  try
    QryPartidas := tzReadOnlyQuery.Create(Self);
    QryPartidas.Connection := connection.zConnection ;

    QryPartidas.Active := False ;
    QryPartidas.SQL.Clear ;
    QryPartidas.SQL.Add('Select a.sContrato, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad, a.dVentaMN, a.dVentaDLL, ' +
                        'a.sMedida, a.dPonderado, a.dInstalado, a.dExcedente, a.dFechaInicio, a.dFechaFinal , sum(d.dCantidad) as dProgramado From actividadesxorden a ' +
                        'INNER JOIN distribuciondeactividades d ON (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And ' +
                        'a.sNumeroOrden = d.sNumeroOrden And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                        'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden And a.sWbsAnterior = :Wbs And a.sTipoActividad = "Actividad" ' +
                        'Group By a.sWbs Order By a.iItemOrden') ;
    QryPartidas.Params.ParamByName('Contrato').DataType := ftString ;
    QryPartidas.Params.ParamByName('Contrato').Value := global_contrato ;
    QryPartidas.Params.ParamByName('Convenio').DataType := ftString ;
    QryPartidas.Params.ParamByName('Convenio').Value := global_convenio ;
    QryPartidas.Params.ParamByName('Orden').DataType := ftString ;
    QryPartidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
    QryPartidas.Params.ParamByName('wbs').DataType := ftString ;
    QryPartidas.Params.ParamByName('wbs').Value := tsPaquete.KeyValue ;
    QryPartidas.Params.ParamByName('Fecha').DataType := ftDate ;
    QryPartidas.Params.ParamByName('Fecha').Value := Date ;
    QryPartidas.Open ;
    If rxPartidasAvance.RecordCount > 0 Then
        rxPartidasAvance.EmptyTable ;
    dbReporte.FieldAliases.Clear ;
    dbReporte.DataSet := rxPartidasAvance ;
    While NOT QryPartidas.Eof Do
    Begin
        If Date > QryPartidas.FieldValues['dFechaFinal'] Then
            If (QryPartidas.FieldValues['dInstalado'] + QryPartidas.FieldValues['dExcedente']) < QryPartidas.FieldValues['dCantidad']Then
                 iRetraso := Date - QryPartidas.FieldValues['dFechaFinal']
            Else
                 iRetraso := 0
        Else
            iRetraso := 0 ;

        rxPartidasAvance.Append ;
        rxPartidasAvance.FieldValues['sContrato'] := QryPartidas.FieldValues['sContrato'] ;
        rxPartidasAvance.FieldValues['sPaquete'] := QryPartidas.FieldValues['sWbs'] ;
        rxPartidasAvance.FieldValues['sNumeroActividad'] := QryPartidas.FieldValues['sNumeroActividad'] ;
        rxPartidasAvance.FieldValues['mDescripcion'] := Copy (QryPartidas.FieldValues['mDescripcion'], 1, 120 ) + ' ..' ;
        rxPartidasAvance.FieldValues['dCantidadAnexo'] := QryPartidas.FieldValues['dCantidad'] ;
        rxPartidasAvance.FieldValues['sMedida'] := QryPartidas.FieldValues['sMedida'] ;
        rxPartidasAvance.FieldValues['dPonderado'] := QryPartidas.FieldValues['dPonderado'] ;
        rxPartidasAvance.FieldValues['dFechaInicio'] := QryPartidas.FieldValues['dFechaInicio'] ;
        rxPartidasAvance.FieldValues['dFechaFinal'] := QryPartidas.FieldValues['dFechaFinal'] ;
        rxPartidasAvance.FieldValues['dVentaMN'] := QryPartidas.FieldValues['dVentaMN'] ;
        rxPartidasAvance.FieldValues['dVentaDLL'] := QryPartidas.FieldValues['dVentaDLL'] ;
        rxPartidasAvance.FieldValues['dCantidadProgramada'] := QryPartidas.FieldValues['dProgramado'] ;
        If ((QryPartidas.FieldValues['dProgramado'] / QryPartidas.FieldValues['dCantidad']) * QryPartidas.FieldValues['dPonderado']) > 0 Then
            rxPartidasAvance.FieldValues['dAvanceProgramado'] := ((QryPartidas.FieldValues['dProgramado'] / QryPartidas.FieldValues['dCantidad']) * QryPartidas.FieldValues['dPonderado'] ) ;
        rxPartidasAvance.FieldValues['dCantidadReal'] := (QryPartidas.FieldValues['dInstalado'] + QryPartidas.FieldValues['dExcedente']) ;

        If rxPartidasAvance.FieldValues['dCantidadReal']  < QryPartidas.FieldValues['dCantidad'] Then
        Begin
            connection.qryBusca.Active := False ;
            connection.qryBusca.SQL.Clear ;
            connection.qryBusca.SQL.Add('Select sum(b.dAvance) as dAvance, a2.dCantidad From bitacoradeactividades b ' +
                                        'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato And a2.sWbs = b.sWbs And ' +
                                        'a2.sNumeroActividad = b.sNumeroActividad And a2.sIdConvenio = :Convenio And a2.sTipoActividad = "Actividad" )' +
                                        'Where b.sContrato = :contrato And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad And ' +
                                        'b.dIdFecha <= :Fecha Group By b.sWbs' ) ;
            connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
            connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio ;
            connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Wbs').Value := QryPartidas.FieldValues['sWbs'] ;
            connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
            connection.qryBusca.Params.ParamByName('Actividad').Value := QryPartidas.FieldValues['sNumeroActividad'] ;
            connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
            connection.qryBusca.Params.ParamByName('Fecha').Value := Date ;
            connection.qryBusca.Open ;
            dAvance := 0 ;
            While NOT connection.qryBusca.Eof Do
            Begin
                 dAvance := dAvance + (connection.qryBusca.FieldValues['dAvance'] * connection.qryBusca.FieldValues['dCantidad']) / connection.qryBusca.FieldValues['dCantidad'] ;
                 connection.qryBusca.Next ;
            End ;
            rxPartidasAvance.FieldValues['dAvanceReal'] := dAvance ;
        End
        Else
            rxPartidasAvance.FieldValues['dAvanceReal'] := 100 ;

        If Date > QryPartidas.FieldValues['dFechaFinal'] Then
            If rxPartidasAvance.FieldValues['dCantidadReal'] < rxPartidasAvance.FieldValues['dCantidadAnexo'] Then
                rxPartidasAvance.FieldValues['iRetraso'] := Date - QryPartidas.FieldValues['dFechaFinal']
            Else
                rxPartidasAvance.FieldValues['iRetraso'] := 0
        Else
            rxPartidasAvance.FieldValues['iRetraso'] := 0 ;
        rxPartidasAvance.Post ;
        QryPartidas.Next
    End ;
    QryPartidas.Destroy ;

    rDiario.LoadFromFile (global_files + global_miReporte + '_DetRetrazosPaquete.fr3') ;
    If connection.configuracion.FieldValues['lLicencia'] = 'No' Then
       rDiario.PreviewOptions.Buttons := [pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator]
    Else
       rDiario.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator,pbExportQuick] ;
    rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    except
   on e : exception do begin
   UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al imprimir partidas con retraso', 0);
   end;
  end;
end;

procedure TfrmConsultaActividad4.btnAlcancesClick(Sender: TObject);
var
  nombres, cadenas: TStringList;
begin
  //empieza validacion
  if not FileExists(global_files + global_miReporte + '_DetAlcancesPartidasPaquete.fr3') then
  begin
      showmessage('El archivo de reporte '+global_Mireporte+'_DetAlcancesPartidasPaquete.fr3 no existe, notifique al administrador del sistema');
      exit;
  end;

  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Frente de T');nombres.Add('Paquete');

  cadenas.Add(tsNumeroOrden.Text);cadenas.Add(tsPaquete.Text);

  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  //continuainserccion de datos
  if GridActividades.DataSource.DataSet.IsEmpty=true then
  begin
      ShowMessage('No existen registros para imprimir');
      exit;
  end;
  try
   ActividadesIguales.First ;
   dbReporte.FieldAliases.Clear ;
   dbReporte.DataSet := ActividadesIguales ;
   rDiario.LoadFromFile (global_files + global_miReporte + '_DetAlcancesPartidasPaquete.fr3') ;
   If connection.configuracion.FieldValues['lLicencia'] = 'No' Then
      rDiario.PreviewOptions.Buttons := [pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator]
   Else
      rDiario.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbOutline,pbPageSetup,pbTools,pbNavigator,pbExportQuick] ;
      rDiario.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

    except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al imprimir detalle de alcances', 0);
  end;
 end;
end;

procedure TfrmConsultaActividad4.rDiarioGetValue(const VarName: String;
  var Value: Variant);
var
    dAvance  : Real ;
    sDetalle : String ;
begin
  If CompareText(VarName, 'ALCANCES') = 0 then
  Begin
      sDetalle := '' ;
      QryResumendeAlcances.First ;
      While NOT QryResumendeAlcances.Eof Do
      Begin
          If sDetalle <> '' Then
              sDetalle := sDetalle + chr(13) ;
          If QryResumendeAlcances.FieldValues['dCantidad'] > 0 Then
              sDetalle := sDetalle + QryResumendeAlcances.FieldValues['sDescripcion'] + ' : ' + QryResumendeAlcances.fieldByName ('dCantidad').AsString + ' ' + ActividadesIguales.FieldValues['sMedida'] ;
          QryResumendeAlcances.Next ;
      End ;
      Value := sDetalle ;
  End ;

  If CompareText(VarName, 'AVANCE') = 0 then
  Begin
      connection.qryBusca.Active := False ;
      connection.qryBusca.SQL.Clear ;
      connection.qryBusca.SQL.Add('Select sum(b.dAvance) as dAvance, a2.dCantidad From bitacoradeactividades b ' +
                                  'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato And a2.sNumeroOrden = b.sNumeroOrden And a2.sWbs = b.sWbs And ' +
                                  'a2.sNumeroActividad = b.sNumeroActividad And a2.sIdConvenio = :Convenio And a2.sTipoActividad = "Actividad" )' +
                                  'Where b.sContrato = :contrato And b.sNumeroOrden = :Orden And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad Group By b.sNumeroActividad' ) ;
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
      connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Convenio').Value := global_Convenio ;
      connection.qryBusca.Params.ParamByName('Orden').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Orden').Value := rxAnexo.FieldValues['sNumeroOrden'] ;
      connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Wbs').Value := rxAnexo.FieldValues['sWbs'];
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Actividad').Value := rxAnexo.FieldValues['sNumeroActividad'] ;
      connection.qryBusca.Open ;
      dAvance := 0 ;
      While NOT connection.qryBusca.Eof Do
      Begin
          dAvance := dAvance + (connection.qryBusca.FieldValues['dAvance'] * connection.qryBusca.FieldValues['dCantidad']) / rxAnexo.FieldValues['dCantidadAnexo'] ;
          connection.qryBusca.Next ;
      End ;
      Value := dAvance
  End ;

  If CompareText(VarName, 'ORDEN') = 0 then
        Value := OrdenesdeTrabajo.FieldValues['sDescripcionCorta'] ;

  If CompareText(VarName, 'ENTREGABLE') = 0 then
        Value := tsPaquete.Text ;

  If CompareText(VarName, 'DESCRIPCION_CORTA') = 0 then
      Value := sDiarioDescripcionCorta ;

  If CompareText(VarName, 'IMPRIME_AVANCES') = 0 then
      Value := sDiarioComentario ;

  If CompareText(VarName, 'sNewTexto') = 0 then
      Value := sDiarioTitulo ;

  If CompareText(VarName, 'PERIODO') = 0 then
      Value := sDiarioPeriodo ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      If QryBitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSuperIntendente
      Else
          Value := sSuperIntendentePatio ;

  If CompareText(VarName, 'SUPERVISOR') = 0 then
      If QryBitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisor
      Else
          Value := sSupervisorPatio ;

  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      If QryBitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sSupervisorTierra
      Else
          Value := sResidente ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      If QryBitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSuperIntendente
      Else
          Value := sPuestoSuperIntendentePatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      If QryBitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisor
      Else
          Value := sPuestoSupervisorPatio ;

  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      If QryBitacora.FieldValues['sOrigenTierra'] = 'No' Then
          Value := sPuestoSupervisorTierra
      Else
          Value := sPuestoResidente ;

  If CompareText(VarName, 'DESCRIPCION_ORDEN') = 0 then
      Value := mDescripcionOrden  ;
  If CompareText(VarName, 'PLATAFORMA') = 0 then
      Value := sPlataformaOrden  ;
  If CompareText(VarName, 'JORNADAS_SUSPENDIDAS') = 0 then
      Value := sJornadasSuspendidas  ;
  If CompareText(VarName, 'TURNO') = 0 then
      Value := sDescripcionTurno ;

  If CompareText(VarName, 'REAL_ANTERIOR') = 0 then
      Value := dRealGlobalAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL') = 0 then
      Value := dRealGlobalActual ;
  If CompareText(VarName, 'REAL_ACUMULADO') = 0 then
      Value := dRealGlobalAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR') = 0 then
      Value := dProgramadoGlobalAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL') = 0 then
      Value := dProgramadoGlobalActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO') = 0 then
      Value := dProgramadoGlobalAcumulado;


  If CompareText(VarName, 'REAL_ANTERIOR_MULTIPLE') = 0 then
      Value := dRealOrdenAnterior ;
  If CompareText(VarName, 'REAL_ACTUAL_MULTIPLE') = 0 then
      Value := dRealOrdenActual ;
  If CompareText(VarName, 'REAL_ACUMULADO_MULTIPLE') = 0 then
      Value := dRealOrdenAcumulado ;
  If CompareText(VarName, 'PROGRAMADO_ANTERIOR_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAnterior ;
  If CompareText(VarName, 'PROGRAMADO_ACTUAL_MULTIPLE') = 0 then
      Value := dProgramadoOrdenActual ;
  If CompareText(VarName, 'PROGRAMADO_ACUMULADO_MULTIPLE') = 0 then
      Value := dProgramadoOrdenAcumulado ;
end;

procedure TfrmConsultaActividad4.Salir1Click(Sender: TObject);
begin
close;
end;

procedure TfrmConsultaActividad4.grid_bitacoraDblClick(Sender: TObject);
begin
 If QryBitacora.RecordCount > 0 Then
     // procReporteDiario (QryBitacora.FieldValues['sContrato'] , QryBitacora.FieldValues['sNumeroOrden'],
//                         QryBitacora.FieldValues['sNumeroReporte'], QryBitacora.FieldValues['sIdTurno'],
 //                        QryBitacora.FieldValues['sIdConvenio'], QryBitacora.FieldValues['dIdFecha'], '' , frmConsultaActividad4, rDiario.OnGetValue )
end;

procedure TfrmConsultaActividad4.grid_bitacoraKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
       If QryBitacora.RecordCount > 0 Then
           // procReporteDiario (QryBitacora.FieldValues['sContrato'] , QryBitacora.FieldValues['sNumeroOrden'],
             //                  QryBitacora.FieldValues['sNumeroReporte'], QryBitacora.FieldValues['sIdTurno'],
               //                QryBitacora.FieldValues['sIdConvenio'], QryBitacora.FieldValues['dIdFecha'], '' , frmConsultaActividad4, rDiario.OnGetValue )
end;

procedure TfrmConsultaActividad4.grid_bitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmConsultaActividad4.grid_bitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmConsultaActividad4.grid_bitacoraTitleClick(Column: TColumn);
begin
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmConsultaActividad4.mnFichaTecnicaClick(Sender: TObject);
begin
  try
    if GridActividades.DataSource.DataSet.IsEmpty=true then
      begin
         ShowMessage('No existen registros para generar ficha técnica');
       exit;
      end;
      If ActividadesIguales.RecordCount > 0 Then
          procFichaTecnica (global_contrato, global_convenio , ActividadesIguales.FieldValues['sNumeroActividad'], frmConsultaActividad4) ;
  except
      on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Distribución de Conceptos/Partidas del Frente de Trabajo', 'Al imprimir Ficha Tecnica', 0);
      end;
  end;
end;

procedure TfrmConsultaActividad4.QryBitacoraCalcFields(DataSet: TDataSet);
begin
  If QryBitacora.FieldValues['sIdTipoMovimiento'] = Connection.configuracion.FieldValues['sTipoAlcance'] Then
  Begin
      Connection.QryBusca.Active := False ;
      Connection.QryBusca.SQL.Clear ;
      Connection.QryBusca.SQL.Add('Select a.sDescripcion From bitacoradealcances b INNER JOIN alcancesxactividad a ON ' +
                                  '(b.sContrato = a.sContrato And b.sNumeroActividad = a.sNumeroActividad And b.iFase = a.iFase) ' +
                                  'Where b.sContrato = :Contrato And b.dIdFecha = :Fecha And b.iIdDiario = :Diario') ;
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
      Connection.QryBusca.Params.ParamByName('Fecha').Value := QryBitacora.FieldValues['dIdFecha'] ;
      Connection.QryBusca.Params.ParamByName('Diario').DataType := ftInteger ;
      Connection.QryBusca.Params.ParamByName('Diario').Value := QryBitacora.FieldValues['iIdDiario'] ;
      Connection.QryBusca.Open ;
      If Connection.QryBusca.RecordCount > 0 Then
          QryBitacorasTitulo.Text := Connection.QryBusca.FieldValues['sDescripcion']
  End
  Else
     QryBitacorasTitulo.Text := 'VOLUMEN DE OBRA' ;
end;

End.

