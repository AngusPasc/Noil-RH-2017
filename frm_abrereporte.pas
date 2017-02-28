unit frm_abrereporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, frm_connection, StdCtrls, Buttons, global,
  DBCtrls, RXDBCtrl, Mask, frxClass, utilerias, masUtilerias, UnitExcepciones,
  Menus, Gauges, ZAbstractRODataset, ZDataset, RXCtrls, ExtCtrls,
  ComCtrls, AdvGlowButton, udbgrid, ZAbstractDataset, sGauge;

type
  TfrmAbreReporte = class(TForm)
    ds_reportediario: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    pgValidacion: TPageControl;
    TabReportes: TTabSheet;
    TabGeneradores: TTabSheet;
    ds_estimaciones: TDataSource;
    Grid_Generadores: TRxDBGrid;
    frGenerador: TfrxReport;
    rDiario: TfrxReport;
    PopSistemas: TPopupMenu;
    mnTiemposMuertos: TMenuItem;
    mnRegeneraAvances: TMenuItem;
    mnValidacionReportes: TMenuItem;
    ordenesdetrabajo: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    ReporteDiariosContrato: TStringField;
    ReporteDiariosNumeroOrden: TStringField;
    ReporteDiariodIdFecha: TDateField;
    ReporteDiariosNumeroReporte: TStringField;
    ReporteDiariosIdTurno: TStringField;
    ReporteDiariosIdConvenio: TStringField;
    ReporteDiariolStatus: TStringField;
    ReporteDiariosIdUsuario: TStringField;
    ReporteDiariosIdUsuarioValida: TStringField;
    ReporteDiariosIdUsuarioAutoriza: TStringField;
    ReporteDiariosTiempoMuerto: TStringField;
    ReporteDiariosOrigen: TStringField;
    ReporteDiariosOrigenTierra: TStringField;
    ReporteDiariosDescripcion: TStringField;
    Estimaciones: TZReadOnlyQuery;
    SecretPanel1: TSecretPanel;
    TabEstimaciones: TTabSheet;
    Grid_Estimaciones: TRxDBGrid;
    EstimacionPeriodo: TZReadOnlyQuery;
    EstimacionPeriodoiNumeroEstimacion: TStringField;
    EstimacionPeriodosIdTipoEstimacion: TStringField;
    EstimacionPeriodolEstimado: TStringField;
    EstimacionPeriododFechaInicio: TDateField;
    EstimacionPeriododFechaFinal: TDateField;
    EstimacionPeriododMontoMN: TFloatField;
    EstimacionPeriododRetencionMN: TFloatField;
    EstimacionPeriodosDescripcion: TStringField;
    dsEstimacionPeriodo: TDataSource;
    EstimacionPeriodosIdUsuarioAutoriza: TStringField;
    mnAsignaAvfisico: TMenuItem;
    TabRequisicion: TTabSheet;
    TabOrdenCompra: TTabSheet;
    Grid_requisicion: TRxDBGrid;
    Grid_OrdenCompra: TRxDBGrid;
    Requisicion: TZReadOnlyQuery;
    ds_requisicion: TDataSource;
    OrdenCompra: TZReadOnlyQuery;
    ds_OrdenCompra: TDataSource;
    BtnValida: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    btnAutoriza: TAdvGlowButton;
    btnExit: TAdvGlowButton;
    Grid_reportes: TRxDBGrid;
    tabRecepMateriales: TTabSheet;
    dbgRecepcion: TRxDBGrid;
    qryRecepcionMateriales: TZQuery;
    dsRecepcionMateriales: TDataSource;
    qryRecepcionMaterialesiId: TIntegerField;
    qryRecepcionMaterialessContrato: TStringField;
    qryRecepcionMaterialessFolio: TStringField;
    qryRecepcionMaterialessTipoMovimiento: TStringField;
    qryRecepcionMaterialesdFechaRecepcion: TDateField;
    qryRecepcionMaterialessIdAlmacen: TStringField;
    qryRecepcionMaterialesmNotas: TMemoField;
    qryRecepcionMaterialessStatus: TStringField;
    qryRecepcionMaterialesQuienValida: TStringField;
    Progress: TsGauge;
    TabSheet1: TTabSheet;
    grid_salidas: TRxDBGrid;
    QrySalida: TZReadOnlyQuery;
    ds_salida: TDataSource;
    pnl1: TPanel;
    tsNumeroOrden: TDBLookupComboBox;
    Label2: TLabel;
    //Progress: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
    procedure btnAutorizaClick(Sender: TObject);
    procedure Grid_reportesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure frGeneradorGetValue(const VarName: string;
      var Value: Variant);
    procedure Grid_reportesDblClick(Sender: TObject);
    procedure Grid_GeneradoresDblClick(Sender: TObject);
    procedure ReporteDiarioCalcFields(DataSet: TDataSet);
    procedure mnTiemposMuertosClick(Sender: TObject);
    procedure mnRegeneraAvancesClick(Sender: TObject);
    procedure mnValidacionReportesClick(Sender: TObject);
    procedure procAjustaBitacoraAlcances(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
    procedure procAjustaBitacoraActividades(sParamContrato, sParamOrden, sParamTurno, sParamConvenio: string; dParamFecha: tDate);
    procedure Grid_GeneradoresGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure EstimacionPeriodoCalcFields(DataSet: TDataSet);
    procedure mnAsignaAvfisicoClick(Sender: TObject);
    procedure Grid_requisicionGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_OrdenCompraGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure pgValidacionChange(Sender: TObject);
    procedure Grid_EstimacionesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_reportesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_reportesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_reportesTitleClick(Column: TColumn);
    procedure Grid_GeneradoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_GeneradoresMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_GeneradoresTitleClick(Column: TColumn);
    procedure Grid_EstimacionesTitleClick(Column: TColumn);
    procedure Grid_EstimacionesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EstimacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_requisicionMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_requisicionMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_requisicionTitleClick(Column: TColumn);
    procedure Grid_OrdenCompraTitleClick(Column: TColumn);
    procedure Grid_OrdenCompraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_OrdenCompraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgRecepcionGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure kardex_almacen(sParamMensaje, sOrigen : string );
    procedure grid_salidasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  iPausa = 1000;

var
  frmAbreReporte : TfrmAbreReporte;
  sJornada       : string;
  iRecord        : Integer;
  SavePlace2     : TBookMark;

implementation

uses frm_seguridad, Func_Genericas, frm_Pedidos, frm_RequisicionPerf;

{$R *.dfm}

procedure TfrmAbreReporte.pgValidacionChange(Sender: TObject);
begin
  if pgValidacion.ActivePageIndex = 0 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Reportes Diarios';
    btnAutoriza.Caption := '&Autoriza Apertura Reportes Diarios';
  end;
  if pgValidacion.ActivePageIndex = 1 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Generadores';
    btnAutoriza.Caption := '&Autoriza Apertura Generadores';
  end;
  if pgValidacion.ActivePageIndex = 2 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Estimaciones';
    btnAutoriza.Caption := '&Autoriza Apertura Estimaciones';
  end;
  if pgValidacion.ActivePageIndex = 3 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Requisiciones';
    btnAutoriza.Caption := '&Autoriza Apertura Requisiciones';
  end;
  if pgValidacion.ActivePageIndex = 4 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Orden de Compra';
    btnAutoriza.Caption := '&Autoriza Apertura Orden de Compra';
  end;
  if pgValidacion.ActivePageIndex = 5 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Recepción de Mateiales';
    btnAutoriza.Caption := '&Autoriza Apertura Recepción de Mateiales';
    qryRecepcionMateriales.Active := False;
    qryRecepcionMateriales.Params.ParamByName('contrato').AsString := global_contrato;
    qryRecepcionMateriales.Open;
  end;
  if pgValidacion.ActivePageIndex = 6 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Apertura Salida de Mateiales';
    btnAutoriza.Caption := '&Autoriza Apertura Salida de Mateiales';
    QrySalida.Active := False;
    QrySalida.Params.ParamByName('contrato').AsString := global_contrato;
    QrySalida.Open;
  end;

end;

procedure TfrmAbreReporte.procAjustaBitacoraActividades(sParamContrato, sParamOrden, sParamTurno, sParamConvenio: string; dParamFecha: tDate);
var
  qryBitacora: tzReadOnlyQuery;
  sPaqueteBusqueda,
    sPartidaOriginal: string;
  dCantidadAnterior,
    dAvanceAnterior: Currency;
begin
  qryBitacora := tzReadOnlyQuery.Create(self);
  qryBitacora.Connection := connection.ConnTrx;

    // Inicializo la Bitacora Principal

  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Update bitacoradeactividades SET dCantidadAnterior = 0, dAvanceAnterior = 0, dCantidadActual = 0, dAvanceActual = 0 ' +
    'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
  connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.ExecSQL;
  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
  qryBitacora.SQL.Add('select b.sWbs, b.sNumeroActividad, b.iIdDiario , Sum(b.dCantidad) as dCantidadActual, Sum(b.dAvance) as dAvanceActual, ' +
    'sum((b.dAvance * a.dPonderado)/100) as dAvanceReal from bitacoradeactividades b ' +
    'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroOrden = a.sNumeroOrden And ' +
    'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
    'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion = :clasificacion) ' +
    'where b.sContrato = :contrato and b.dIdFecha = :fecha And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno ' +
    'Group by b.sWbs, b.sNumeroActividad order by a.iItemOrden, a.sNumeroActividad asc');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := global_contrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := sParamTurno;
  qryBitacora.Params.ParamByName('clasificacion').DataType := ftString;
  qryBitacora.Params.ParamByName('clasificacion').Value := 'Tiempo en Operacion';
  qryBitacora.Open;
  if QryBitacora.RecordCount > 0 then
  begin
    Progress.Visible := True;
    Progress.Progress := 1;
    Progress.MinValue := 1;
    Progress.MaxValue := QryBitacora.RecordCount;
    QryBitacora.First;
    for iRecord := 1 to Progress.MaxValue do
    begin
      try
                // Aqui almaceno el avance anterior acumulado .........
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from bitacoradeactividades where sContrato = :Contrato and ' +
          'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := qryBitacora.FieldValues['sWbs'];
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
        connection.qryBusca.Open;
        dCantidadAnterior := 0;
        dAvanceAnterior := 0;
        if connection.qryBusca.RecordCount > 0 then
        begin
          dCantidadAnterior := connection.qryBusca.FieldValues['dInstalado'];
          dAvanceAnterior := connection.qryBusca.FieldValues['dAvance'];
        end;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance + :Avance  ' +
          'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And InStr(:wbs, concat(sWbs,".")) > 0');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').value := sParamOrden;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').value := sParamConvenio;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
        connection.zCommand.Params.ParamByName('wbs').value := QryBitacora.FieldValues['sWbs'];
        connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('Avance').value := QryBitacora.FieldValues['dAvanceReal'];
        connection.zCommand.ExecSQL;
      except
        MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades', mtWarning, [mbOk], 0);
      end;
      Progress.Progress := iRecord;
      QryBitacora.Next;
    end;
    Progress.Visible := False;
  end;
  QryBitacora.Destroy;
end;

procedure TfrmAbreReporte.procAjustaBitacoraAlcances(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
var
  qryBitacora: tzReadOnlyQuery;
  i: Integer;
  dCantidadAnterior,
    dAvanceAnterior: Currency;

begin
  qryBitacora := tzReadOnlyQuery.Create(self);
  qryBitacora.Connection := connection.ConnTrx;

    // Inicializo los acumulados historicos de la bitacora de Alcances ...
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Update bitacoradealcances SET dCantidadAnterior = 0, dAvanceAnterior = 0, dCantidadActual = 0, dAvanceActual = 0 ' +
    'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
  connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.ExecSQL;

    // 1. Acumulados de la Bitacora de Alcances .... los almaceno en sus historicos ...
  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
  qryBitacora.SQL.Add('select iIdDiario, sWbs, sNumeroActividad, iFase, dCantidad, dAvance From bitacoradealcances where sContrato = :contrato and ' +
    'dIdFecha = :fecha And sNumeroOrden = :Orden and sIdTurno = :Turno order by sWbs, sNumeroActividad asc');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := global_contrato;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := sParamTurno;
  qryBitacora.Open;
  if qryBitacora.RecordCount > 0 then
  begin
    Progress.Visible := True;
    Progress.Progress := 1;
    Progress.MinValue := 1;
    Progress.MaxValue := qryBitacora.RecordCount;
    qryBitacora.First;

    for iRecord := 1 to Progress.MaxValue do
    begin
      try
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select sum(dCantidad) as dInstalado, sum(dAvance) as dAvance from bitacoradealcances where sContrato = :Contrato and ' +
          'dIdFecha < :fecha And sNumeroOrden = :Orden And sWbs = :Wbs And sNumeroActividad = :Actividad And iFase = :Fase Group By sWbs, sNumeroActividad');
        connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
        connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
        connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := qryBitacora.FieldValues['sWbs'];
        connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Actividad').Value := qryBitacora.FieldValues['sNumeroActividad'];
        connection.qryBusca.Params.ParamByName('Fase').DataType := ftInteger;
        connection.qryBusca.Params.ParamByName('Fase').Value := qryBitacora.FieldValues['iFase'];
        connection.qryBusca.Open;
        dCantidadAnterior := 0;
        dAvanceAnterior := 0;
        if connection.qryBusca.RecordCount > 0 then
        begin
          dCantidadAnterior := connection.qryBusca.FieldValues['dInstalado'];
          dAvanceAnterior := connection.qryBusca.FieldValues['dAvance'];
        end;
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradealcances SET dCantidadAnterior = :CantidadAnterior, dAvanceAnterior = :AvanceAnterior, ' +
          'dCantidadActual = :CantidadActual, dAvanceActual = :AvanceActual ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value := qryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('CantidadAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadAnterior').value := dCantidadAnterior;
        connection.zCommand.Params.ParamByName('AvanceAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceAnterior').value := dAvanceAnterior;
        connection.zCommand.Params.ParamByName('CantidadActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadActual').value := qryBitacora.FieldValues['dCantidad'];
        connection.zCommand.Params.ParamByName('AvanceActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceActual').value := qryBitacora.FieldValues['dAvance'];
        connection.zCommand.ExecSQL;
      except
        MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades', mtWarning, [mbOk], 0);
      end;
      Progress.Progress := iRecord;
      QryBitacora.Next;
    end;
    Progress.Visible := False;
  end;
  QryBitacora.Destroy;
end;


procedure TfrmAbreReporte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSeguridad.tsIdUsuarioValida.Text := '';
  frmSeguridad.tsPasswordValida.Text := '';
  action := cafree;
end;

procedure TfrmAbreReporte.BtnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmAbreReporte.FormShow(Sender: TObject);
begin
  pgValidacion.ActivePageIndex := 0;

  Requisicion.Active := False;
  Requisicion.ParamByName('Contrato').DataType := ftString;
  Requisicion.ParamByName('Contrato').Value := global_contrato;
  Requisicion.Open;

  OrdenCompra.Active := False;
  OrdenCompra.ParamByName('Contrato').DataType := ftString;
  OrdenCompra.ParamByName('Contrato').Value := global_contrato;
  OrdenCompra.Open;

  QrySalida.Active := False;
  QrySalida.ParamByName('Contrato').DataType := ftString;
  QrySalida.ParamByName('Contrato').Value := global_contrato;
  QrySalida.Open;

  EstimacionPeriodo.Active := False;
  EstimacionPeriodo.Params.ParamByName('contrato').DataType := ftString;
  EstimacionPeriodo.Params.ParamByName('contrato').Value := global_contrato;
  EstimacionPeriodo.Open;

  Estimaciones.Active := False;
  Estimaciones.Params.ParamByName('contrato').DataType := ftString;
  Estimaciones.Params.ParamByName('contrato').Value := global_contrato;
  Estimaciones.Open;

  if global_orden_general <> '' then
  begin
    OrdenesdeTrabajo.Active := False;
    OrdenesdeTrabajo.SQL.Clear;
    OrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, iJornada from ordenesdetrabajo where sContrato = :Contrato and ' +
      'sNumeroOrden = :orden');
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
    ordenesdetrabajo.Params.ParamByName('orden').DataType := ftString;
    ordenesdetrabajo.Params.ParamByName('orden').Value := global_orden_general;
    OrdenesdeTrabajo.Open;
  end
  else
  begin
    OrdenesdeTrabajo.Active := False;
    OrdenesdeTrabajo.SQL.Clear;
    if (global_grupo = 'INTEL-CODE') then
      OrdenesdeTrabajo.SQL.Add('Select sNumeroOrden, iJornada from ordenesdetrabajo where sContrato = :Contrato and ' +
        'cIdStatus = :status order by sNumeroOrden')
    else
      OrdenesdeTrabajo.SQL.Add('Select  ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
        'from ordenesdetrabajo ot ' +
        'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato ' +
        'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
        'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
        'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden');
    OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('Contrato').Value := Global_Contrato;
    OrdenesdeTrabajo.Params.ParamByName('status').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
    if (global_grupo <> 'INTEL-CODE') then
    begin
      OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType := ftString;
      OrdenesdeTrabajo.Params.ParamByName('Usuario').Value := Global_Usuario;
    end;
    OrdenesdeTrabajo.Open;
  end;

  if OrdenesdeTrabajo.RecordCount > 0 then
  begin
    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('Contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('Contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
    ReporteDiario.Open;

     { Grid_reportes.SetFocus  }
  end
 { Else
      tsNumeroOrden.SetFocus  }
end;

procedure TfrmAbreReporte.tsNumeroOrdenExit(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_salida;
  ReporteDiario.Active := False;
  ReporteDiario.Params.ParamByName('Contrato').DataType := ftString;
  ReporteDiario.Params.ParamByName('Contrato').Value := global_contrato;
  ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
  ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
  ReporteDiario.Open;

  Estimaciones.Active := False;
  Estimaciones.Params.ParamByName('contrato').DataType := ftString;
  Estimaciones.Params.ParamByName('contrato').Value := global_contrato;
  Estimaciones.Open;
end;

procedure TfrmAbreReporte.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
   {If Key = #13 Then
        If pgValidacion.ActivePageIndex = 0 Then
            Grid_Reportes.SetFocus
        Else
            Grid_Generadores.SetFocus   }
end;

procedure TfrmAbreReporte.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmAbreReporte.btnValidaClick(Sender: TObject);
var
  lPoder: Boolean;
  iGrid: Integer;
  SavePlace: TBookmark;
  sMuertoReal: string;
  lRecordChange: Boolean;
  Q_User, QryBuscar: TZReadOnlyQuery;
  sFolio:String;
begin
  try
    Connection.CommandTrx.Active := False;
    Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
    Connection.CommandTrx.ExecSQL;

    QryBuscar := TZReadOnlyQuery.Create(self);
    QryBuscar.Connection := connection.zConnection;

    {En esta parte se asigna el usuario que abre el Reporte de Barco.. 23 de Febrero de 2011}
    if pgValidacion.ActivePageIndex = 0 then
    begin
      if global_contrato = global_contrato_barco then
      begin
        Q_User := TZReadOnlyQuery.Create(self);
        Q_User.Connection := connection.ConnTrx;

        Q_User.Active := False;
        Q_User.SQL.Clear;
        Q_User.SQL.Add('Update reportediario set sIdUsuarioBarco =:Usuario where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdTurno =:Turno');
        Q_User.ParamByName('Contrato').AsString := global_contrato;
        Q_User.ParamByName('Fecha').AsDate := reporteDiario.FieldValues['dIdFecha'];
        Q_User.ParamByName('Orden').AsString := reporteDiario.FieldValues['sNumeroOrden'];
        Q_User.ParamByName('Turno').AsString := reporteDiario.FieldValues['sIdTurno'];
        Q_User.ParamByName('Usuario').AsString := global_usuario;
        Q_User.ExecSQL;
      end;
        {Termina asignacion de usuario de barco.. 23 Febrero de 2011}
    end;

    {$REGION 'Proceso de Apertura Validacion de Requisiciones..'}
    //soad -> Proceso de Apertura Validacion de Requisiciones..
    if pgValidacion.ActivePageIndex = 3 then
    begin
      if Requisicion.RecordCount > 0 then
        if Grid_requisicion.SelectedRows.Count > 0 then
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        else
          raise Exception.Create('-Seleccione por lo menos una Requisición.');

      if lPoder then           //FIND_IN_SET(r.eEstado,:eEstado)
      begin
        QryBuscar.Active:=False;
        QryBuscar.SQL.Clear;
        QryBuscar.SQL.Add('select iFolioPedido from anexo_pedidos where FIND_IN_SET(:Requisicion,sFolioRequisicion) and sContrato=:Contrato');
        QryBuscar.ParamByName('Contrato').AsString:=global_contrato;
        QryBuscar.ParamByName('Requisicion').AsString:=Requisicion.FieldByName('sNumFolio').AsString;

        QryBuscar.Open;

        if QryBuscar.RecordCount>0 then
        begin
          MSG_W('La Requiscion '+Requisicion.FieldValues['sNumFolio']+ ' se encuentra enlazada con una Orden de Compra');
          Exit;
        end;

        lRecordChange := False;
        SavePlace := Grid_requisicion.DataSource.DataSet.GetBookmark;
        with Grid_requisicion.DataSource.DataSet do
          for iGrid := 0 to Grid_requisicion.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_requisicion.SelectedRows.Items[iGrid]));
            if FieldValues['sStatus'] = 'VALIDADO' then
            begin
              lRecordChange := True;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Update anexo_requisicion set sStatus ="PENDIENTE", sAutorizo="" where sContrato =:Contrato and iFolioRequisicion =:Requisicion and sIdDepartamento=:Depto ');
              connection.CommandTrx.ParamByName('Contrato').DataType    := ftString;
              connection.CommandTrx.ParamByName('Contrato').Value       := global_contrato;
              connection.CommandTrx.ParamByName('Requisicion').DataType := ftInteger;
              connection.CommandTrx.ParamByName('Requisicion').Value    := Requisicion.FieldValues['iFolioRequisicion'];
              connection.CommandTrx.ParamByName('depto').AsString := Requisicion.FieldByName('sIdDepartamento').AsString;
              connection.CommandTrx.ExecSQL;

              try
                 SavePlace2 := frmRequisicionPerf.Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GetBookmark;
                 frmRequisicionPerf.anexo_requisicion.Refresh;
                 try
                    frmRequisicionPerf.Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
                 Except
                    frmRequisicionPerf.Grid_EntradasDBTableView1.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
                 end;
              Except
              end;
            end
            else
              raise Exception.CreateFmt('-La Requisicon [%i] se encuentra en estado de Autorizado', [Requisicion['iFolioRequisicion']]);
                        //MessageDlg('La Requisicon [' + IntToStr(Requisicion ['iFolioRequisicion']) + '] se encuentra en estado de Autorizado' , mtInformation, [mbOk], 0) ;
          end;
        if lRecordChange then
        begin
          Connection.ConnTrx.Commit;

           try
                frmPedidos.requisiciones.Refresh;
                if frmPedidos.requisiciones.RecordCount > 0 then
                begin
                  frmPedidos.dbRequisicion.Clear;
                  while not frmPedidos.requisiciones.Eof do
                  begin
                    frmPedidos.dbRequisicion.Items.Add(frmPedidos.requisiciones.FieldValues['sNumFolio']);
                    frmPedidos.requisiciones.Next;
                  end;
                end;
                frmPedidos.dbRequisicion.Refresh;
            Except
            end;

          try
            Grid_requisicion.DataSource.DataSet.GotoBookmark(SavePlace);
          except
            Grid_requisicion.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          kardex_almacen('Valida Apertura de Requisicion No. [' + IntToStr(Requisicion.FieldValues['iFolioRequisicion']) + '].', 'Requisiciones');
          Requisicion.Refresh;
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura Validacion de Ordenes de Compra..'}
    //soad -> Proceso de Apertura Validacion de Ordenes de Compra..
    if pgValidacion.ActivePageIndex = 4 then
    begin
      lPoder := False;
      if OrdenCompra.RecordCount > 0 then
        if Grid_OrdenCompra.SelectedRows.Count > 0 then
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        else
          raise Exception.Create('-Seleccione por lo menos una Orden de Compra.');

      if lPoder then
      begin
        QryBuscar.Active:=False;
        QryBuscar.SQL.Clear;
        QryBuscar.SQL.Add('select iFolioEntrada from almacen_entrada where sIdTipo="OC" and iFolioMovimiento=:Odc and sContrato=:Contrato');
        QryBuscar.ParamByName('Contrato').AsString:=global_contrato;
        QryBuscar.ParamByName('Odc').AsString:=OrdenCompra.FieldByName('iFolioPedido').AsString;
        QryBuscar.Open;

        if QryBuscar.RecordCount>0 then
        begin
          MSG_W('La Orden de Compra ' + OrdenCompra.FieldValues['sOrdenCompra'] + ' se encuentra enlazada a una Entrada');
          Exit;
        end;

        lRecordChange := False;
            //SavePlace := Grid_OrdenCompra.DataSource.DataSet.GetBookmark ;
        with Grid_OrdenCompra.DataSource.DataSet do
          for iGrid := 0 to Grid_OrdenCompra.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_OrdenCompra.SelectedRows.Items[iGrid]));
            if FieldValues['sStatus'] = 'VALIDADO' then
            begin
              lRecordChange := True;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Update anexo_pedidos set sStatus ="PENDIENTE" where sContrato =:Contrato and iFolioPedido =:Pedido ');
              connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.ParamByName('Contrato').Value := global_contrato;
              connection.CommandTrx.ParamByName('Pedido').DataType := ftInteger;
              connection.CommandTrx.ParamByName('Pedido').Value := OrdenCompra.FieldValues['iFolioPedido'];
              connection.CommandTrx.ExecSQL;

              try
                  SavePlace2 := frmPedidos.dbg_OCVista.DataController.DataSource.DataSet.GetBookmark;
                  frmPedidos.anexo_ocompras.Refresh;
                  try
                     frmPedidos.dbg_OCVista.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
                  Except
                     frmPedidos.dbg_OCVista.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
                  end;
              Except
              end;
            end
            else
                raise Exception.CreateFmt('-La Orden de Compra No. [%s] se encuentra en estado de Autorizado.', [OrdenCompra.FieldByName('iFolioPedido').AsString]);
          end;
        if lRecordChange then
        begin
          Connection.ConnTrx.Commit;
          OrdenCompra.Refresh;
          try
            Grid_OrdenCompra.DataSource.DataSet.GotoBookmark(SavePlace);
          except
            Grid_OrdenCompra.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          kardex_almacen('Valida Apertura de Orden de Compra No. [' + OrdenCompra.FieldByName('sOrdenCompra').AsString + '].', 'Orden de Compra');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura de Validacion de Reporte Diario..'}
    frmSeguridad.tsPasswordValida.Text := '';
    global_tipo_autorizacion := 'Validación';
    lPoder := False;
    if pgValidacion.ActivePageIndex = 0 then
    begin
      if ReporteDiario.RecordCount > 0 then
        if Grid_reportes.SelectedRows.Count > 0 then
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        else
          raise Exception.Create('-Seleccione por lo menos un Reporte Diario.');

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark;
        with Grid_reportes.DataSource.DataSet do
          for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
            if (FieldValues['lStatus'] = 'Validado') and (FieldValues['sIdConvenio'] = Global_Convenio) then
            begin
              lRecordChange := True;
                        // Elimino los Tiempo Muertos Reales del Contrato
              sMuertoReal := '00:00';
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
                        //connection.zCommand.SQL.Add ( 'UPDATE reportediario SET sTiempoMuertoReal = :Real, iPersonal = 0 ' +
                        //                       'Where sContrato = :Contrato And dIdFecha = :Fecha') ;

              connection.CommandTrx.SQL.Add('UPDATE reportediario SET sTiempoMuertoReal = :Real, iPersonal= 0 ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha');
              connection.CommandTrx.Params.ParamByName('Real').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Real').value := sMuertoReal;
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').value := FieldValues['dIdFecha'];
              connection.CommandTrx.ExecSQL;

                        // Primero Elimino todo de la Bitacora de Paquetes de ese dia ...
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Delete from bitacoradepaquetes where sContrato = :contrato And sIdConvenio = :convenio And ' +
                'sNumeroOrden = :Orden and dIdFecha = :fecha ');
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Convenio').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Convenio').Value := FieldValues['sIdConvenio'];
              connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
              connection.CommandTrx.ExecSQL;

              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
                     //   connection.zCommand.SQL.Add ( 'Update reportediario SET lStatus = :Status , sIdUsuarioValida = :Valida, iPersonal = 0, ' +
                     //                                 'sOperacionInicio = "00:00", sOperacionFinal = "00:00", sTiempoAdicional = "00:00", sTiempoEfectivo = "00:00", sTiempoMuertoReal = "00:00" ' +
                     //                                 'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno') ;

              connection.CommandTrx.SQL.Add('Update reportediario SET lStatus = :Status , sIdUsuarioValida = null, iPersonal = 0, ' +
                'sTiempoAdicional = "00:00", sTiempoEfectivo = "00:00", sTiempoMuertoReal = "00:00" ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
              connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Turno').Value := FieldValues['sIdTurno'];
              connection.CommandTrx.Params.ParamByName('Status').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Status').Value := 'Pendiente';
              connection.CommandTrx.ExecSQL;

                        // Actualizo Kardex del Sistema ....
                        //sleep (iPausa) ;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Usuario').Value := Global_Usuario;
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := Date;
              connection.CommandTrx.Params.ParamByName('Hora').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
              connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Apertura del Reporte Diario No. [ ' + FieldValues['sNumeroReporte'] + ']. VALIDA ' + global_valida;
              connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Origen').Value := 'Reporte Diario';
              connection.CommandTrx.ExecSQL;

                        // Eliminar los avances globales reportados
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Text := 'delete from avancesglobalesxorden where scontrato = :contrato and sidconvenio = :convenio and (snumeroorden = "" or snumeroorden = :Orden) and sIdTurno = :Turno and dIdFecha = :fecha';
              connection.CommandTrx.ParamByName('contrato').AsString := ReporteDiario.FieldByName('sContrato').AsString;
              connection.CommandTrx.ParamByName('convenio').AsString := ReporteDiario.FieldByName('sIdConvenio').AsString;
              connection.CommandTrx.ParamByName('orden').AsString := ReporteDiario.FieldByName('snumeroorden').AsString;
              connection.CommandTrx.ParamByName('fecha').AsDate := ReporteDiario.FieldByName('dIdFecha').AsDateTime;
              connection.CommandTrx.ParamByName('turno').AsString := ReporteDiario.FieldByName('sIdTurno').AsString;
              connection.CommandTrx.ExecSQL;
            end
            else
            begin
              Connection.ConnTrx.Commit;
              raise Exception.CreateFmt('-El Reporte Diario [%s] se encuentra en estado de AUTORIZADO o el Reporte Diario pertenece a otro Convenio.', [FieldValues['sNumeroReporte']]);
              ReporteDiario.Active := False;
              ReporteDiario.Open;
              Grid_reportes.UnselectAll;
              Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
          end;
        if lRecordChange then
        begin
          Connection.ConnTrx.Commit;
          ReporteDiario.Refresh;
          try
            Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
          except
            Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end;
      end
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura de Validacion de Generadores y Estimaciones'}
    if (pgValidacion.ActivePageIndex = 1) or (pgValidacion.ActivePageIndex = 2) then
    begin
      if Estimaciones.RecordCount > 0 then
        if Grid_Generadores.SelectedRows.Count > 0 then
        begin
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        end
        else
          raise Exception.Create('-Seleccione por lo menos un Generador.');

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_Generadores.DataSource.DataSet.GetBookmark;
        with Grid_Generadores.DataSource.DataSet do
          for iGrid := 0 to Grid_Generadores.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_Generadores.SelectedRows.Items[iGrid]));
            if FieldValues['lStatus'] = 'Validado' then
            begin
              lRecordChange := True;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Update estimaciones SET lStatus = :Status, sIdUsuarioValida =null, dMontoMN = 0, dMontoDLL = 0 ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And iNumeroEstimacion = :Estimacion And sNumeroGenerador = :Generador');
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
              connection.CommandTrx.Params.ParamByName('Estimacion').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Estimacion').Value := FieldValues['iNumeroEstimacion'];
              connection.CommandTrx.Params.ParamByName('Generador').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'];
              connection.CommandTrx.Params.ParamByName('Status').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Status').Value := 'Pendiente';
                      //  connection.CommandTrx.Params.ParamByName('Valida').DataType := ftString ;
                      //  connection.CommandTrx.Params.ParamByName('Valida').Value := '' ;
              connection.CommandTrx.ExecSQL;

                        // Actualizo Kardex del Sistema ....
                        //Sleep(iPausa) ;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
              connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Usuario').Value := Global_Usuario;
              connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
              connection.CommandTrx.Params.ParamByName('Fecha').Value := Date;
              connection.CommandTrx.Params.ParamByName('Hora').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
              connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Apertura del Generador No. [' + FieldValues['sNumeroGenerador'] + '] de la Orden [' + tsNumeroOrden.Text + ']. VALIDA ' + global_valida;
              connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
              connection.CommandTrx.Params.ParamByName('Origen').Value := 'Generadores';
              connection.CommandTrx.ExecSQL;
            end
            else
              raise Exception.CreateFmt('-El Numero de Generador: [%s] se encuentra en estado de AUTORIZADO.', [FieldValues['sNumeroGenerador']]);
          end;

        if lRecordChange then
        begin
          Connection.ConnTrx.Commit;
          Estimaciones.Refresh;
          try
            Grid_Generadores.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            Grid_Generadores.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura de Validacion de Recepcion de Materiales'}
    if pgValidacion.ActivePageIndex = 5 then
    begin
      if qryRecepcionMateriales.RecordCount > 0 then
        if dbgRecepcion.SelectedRows.Count > 0 then
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        else
          raise Exception.Create('-Seleccione por lo menos una Recepción de Material.');

      if lPoder then
      begin
        lRecordChange := False;    //ABBY
        SavePlace := dbgRecepcion.DataSource.DataSet.GetBookmark;
        with dbgRecepcion.DataSource.DataSet do
          for iGrid := 0 to dbgRecepcion.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(dbgRecepcion.SelectedRows.Items[iGrid]));
            if FieldValues['sStatus'] = 'VALIDADO' then
            begin
              if sFolio='' then
                sFolio:=qryRecepcionMateriales.FieldValues['sFolio']
              else
                sFolio:=sFolio + ', '+ qryRecepcionMateriales.FieldValues['sFolio'];
              lRecordChange := True;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('UPDATE alm_recepciondemateriales SET sStatus = "PENDIENTE" WHERE iId = :iId;');
              connection.CommandTrx.ParamByName('iId').AsInteger := qryRecepcionMateriales.FieldByName('iId').AsInteger;
              connection.CommandTrx.ExecSQL;
            end
            else
              raise Exception.CreateFmt('-La Recepción de Material [%s] se encuentra en estado de Autorizado', [qryRecepcionMateriales['sFolio']]);
          end;
        if lRecordChange then
        begin
          Connection.ConnTrx.Commit;
          qryRecepcionMateriales.Refresh;
          try
            dbgRecepcion.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            dbgRecepcion.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
         kardex_almacen('Valida Apertura de Recepcion de Material No. [' + sFolio + '].', 'Recepcion de Materiales');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura Validacion de Salida de Materiales..'}
    //soad -> Proceso de Apertura Validacion de Salida de Materiales..
    if pgValidacion.ActivePageIndex = 6 then
    begin
      if QrySalida.RecordCount > 0 then
        if Grid_salidas.SelectedRows.Count > 0 then
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_valida <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_valida := global_usuario;
          end
        else
          raise Exception.Create('-Seleccione por lo menos una Salida de Materiales.');

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_salidas.DataSource.DataSet.GetBookmark;
        with Grid_salidas.DataSource.DataSet do
          for iGrid := 0 to Grid_salidas.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_salidas.SelectedRows.Items[iGrid]));
            if FieldValues['sEstatus'] = 'VALIDADO' then
            begin
              lRecordChange := True;
              connection.CommandTrx.Active := False;
              connection.CommandTrx.SQL.Clear;
              connection.CommandTrx.SQL.Add('Update almacen_salida set sEstatus ="PENDIENTE" where sContrato =:Contrato and iFolioSalida =:salida ');
              connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
              connection.CommandTrx.ParamByName('Contrato').Value    := global_contrato;
              connection.CommandTrx.ParamByName('salida').DataType   := ftInteger;
              connection.CommandTrx.ParamByName('salida').Value      := QrySalida.FieldValues['iFolioSalida'];
              connection.CommandTrx.ExecSQL;
            end
            else
              raise Exception.CreateFmt('-La Salida de Material [%i] se encuentra en estado de Autorizado', [QrySalida['iFolioSalida']]);
          end;
        if lRecordChange then
        begin
          Connection.ConnTrx.Commit;
          QrySalida.Refresh;
          try
            Grid_salidas.DataSource.DataSet.GotoBookmark(SavePlace);
          except
            Grid_salidas.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          kardex_almacen('Valida Apertura de Salida de Material No. [' + QrySalida.FieldValues['sFolioSalida'] + '].', 'Salida de Materiales');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
    end;
    {$ENDREGION}

  except
    on e: exception do
    begin
      Connection.ConnTrx.Rollback;
      if e.Message[1] = '-' then
        MessageDlg(e.Message, mtWarning, [mbOk], 0)
      else
        MessageDlg('Ha ocurrido un error al tratar de registrar los cambios solicitados.' + #10 + #10 +
          'Informe del siguiente error al administrador del sistema:' + #10 +
          e.Message, mtWarning, [mbOk], 0);
    end;
  end;
end;

procedure TfrmAbreReporte.dbgRecepcionGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'AUTORIZADO' then
      Background := $00D0AD9F
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
      Background := $006FF8FF;
end;

procedure TfrmAbreReporte.btnAutorizaClick(Sender: TObject);
var
  lPoder: Boolean;
  iGrid: Integer;
  SavePlace: TBookmark;
  dFechaUltReporte: tDate;
  lAutorizaResidente,
    lRecordChange: Boolean;
  QryBusca: TZQuery;
begin
  try
    QryBusca := TZQuery.Create(nil);
    QryBusca.Connection := Connection.ConnTrx;

    try
      Connection.CommandTrx.Active := False;
      Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
      Connection.CommandTrx.ExecSQL;

    {$REGION 'Proceso de Apertura de Salida de Materiales..'}
    if pgValidacion.ActivePageIndex = 6 then
    begin
      if QrySalida.RecordCount > 0 then
      begin
         if grid_salidas.SelectedRows.Count > 0 then
            if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
            begin
              frmSeguridad.ShowModal;
              if (global_valida <> '') then
                lPoder := True
              else
                lPoder := False
            end
            else
            begin
              lPoder := True;
              global_valida := global_usuario;
            end
          else
            raise Exception.Create('-Seleccione por lo menos una Salida de Material.');
      end;
      if lPoder then
      begin
          lRecordChange := False;
          SavePlace := grid_salidas.DataSource.DataSet.GetBookmark;
          with grid_salidas.DataSource.DataSet do
            for iGrid := 0 to grid_salidas.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(grid_salidas.SelectedRows.Items[iGrid]));
              if FieldValues['sEstatus'] = 'AUTORIZADO' then
              begin
                lRecordChange := True;
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Update almacen_salida set sEstatus ="VALIDADO" where sContrato =:Contrato and iFolioSalida =:Salida ');
                connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                connection.CommandTrx.ParamByName('Contrato').Value    := global_contrato;
                connection.CommandTrx.ParamByName('Salida').DataType   := ftInteger;
                connection.CommandTrx.ParamByName('Salida').Value      := QrySalida.FieldValues['iFolioSalida'];
                connection.CommandTrx.ExecSQL;
              end
              else
                raise Exception.CreateFmt('-La Salida de Material [%i] se encuentra en estado de Pendiente.', [QrySalida['iFolioSalida']]);
            end;
          if lRecordChange then begin
            Connection.ConnTrx.Commit;
            QrySalida.Refresh;
            try
              grid_salidas.DataSource.DataSet.GotoBookmark(SavePlace);
            except
              grid_salidas.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            kardex_almacen('Autoriza Apertura de Salida de Material No. [' + IntToStr(QrySalida.FieldValues['iFolioSalida']) + '].', 'Salida de Materiales');
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end;
      end;
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura Autorizacion de Recepcion de Materiales...'}
    if pgValidacion.ActivePageIndex = 5 then
    begin
      if qryRecepcionMateriales.RecordCount > 0 then
      begin
         if dbgRecepcion.SelectedRows.Count > 0 then
            if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
            begin
              frmSeguridad.ShowModal;
              if (global_valida <> '') then
                lPoder := True
              else
                lPoder := False
            end
            else
            begin
              lPoder := True;
              global_valida := global_usuario;
            end
          else
            raise Exception.Create('-Seleccione por lo menos una Recepción de Material.');
      end;
      if lPoder then
      begin
          lRecordChange := False;
          SavePlace := dbgRecepcion.DataSource.DataSet.GetBookmark;
          with dbgRecepcion.DataSource.DataSet do
            for iGrid := 0 to dbgRecepcion.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(dbgRecepcion.SelectedRows.Items[iGrid]));
              if FieldValues['sStatus'] = 'AUTORIZADO' then
              begin
                lRecordChange := True;
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('UPDATE alm_recepciondemateriales SET sStatus = "VALIDADO" WHERE iId = '+qryRecepcionMateriales.FieldByName('iId').AsString);
                connection.CommandTrx.ExecSQL;
              end
              else
                raise Exception.CreateFmt('-La Recepción de Material [%s] se encuentra en estado de Pendiente.', [qryRecepcionMateriales['sFolio']]);
            end;
          if lRecordChange then begin
            Connection.ConnTrx.Commit;
            qryRecepcionMateriales.Refresh;
            try
              dbgRecepcion.DataSource.DataSet.GotoBookmark(SavePlace);
            except
              dbgRecepcion.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            kardex_almacen('Autoriza Apertura de Recepcion de Material No. [' + qryRecepcionMateriales.FieldValues['sFolio'] + '].', 'Recepcion de Materiales');
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end;
      end;//fin de lPoder
    end;///fin de pgValidacion.ActivePageIndex = 5
    {$ENDREGION}

    {$REGION 'Proceso de Apertura Autorizacion de Requisiciones...'}
      if pgValidacion.ActivePageIndex = 3 then
      begin
        if Requisicion.RecordCount > 0 then
          if Grid_requisicion.SelectedRows.Count > 0 then
            if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
            begin
              frmSeguridad.ShowModal;
              if (global_valida <> '') then
                lPoder := True
              else
                lPoder := False
            end
            else
            begin
              lPoder := True;
              global_valida := global_usuario;
            end
          else
            raise Exception.Create('-Seleccione por lo menos una Requisicion.');

        if lPoder then
        begin
          lRecordChange := False;
          SavePlace := Grid_requisicion.DataSource.DataSet.GetBookmark;
          with Grid_requisicion.DataSource.DataSet do
            for iGrid := 0 to Grid_requisicion.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(Grid_requisicion.SelectedRows.Items[iGrid]));
              if FieldValues['sStatus'] = 'AUTORIZADO' then
              begin
                lRecordChange := True;
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('Update anexo_requisicion set sStatus ="VALIDADO" where sContrato =:Contrato and iFolioRequisicion =:Requisicion and sIdDepartamento=:Depto ');
                connection.zCommand.ParamByName('Contrato').DataType := ftString;
                connection.zCommand.ParamByName('Contrato').Value := global_contrato;
                connection.zCommand.ParamByName('Requisicion').DataType := ftInteger;
                connection.zCommand.ParamByName('Requisicion').Value := Requisicion.FieldValues['iFolioRequisicion'];
                 connection.zCommand.ParamByName('depto').AsString := Requisicion.FieldByName('sIdDepartamento').AsString;

                connection.zCommand.ExecSQL;

                try
                   SavePlace2 := frmRequisicionPerf.Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GetBookmark;
                   frmRequisicionPerf.anexo_requisicion.Refresh;
                   try
                      frmRequisicionPerf.Grid_EntradasDBTableView1.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
                   Except
                      frmRequisicionPerf.Grid_EntradasDBTableView1.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
                   end;
                Except
                end;
              end
              else
                raise Exception.Create( 'La Requisicon '+ IntToStr( Requisicion['iFolioRequisicion'] ) +',se encuentra en estado de Validado.' );
            end;
          if lRecordChange then
          begin
            Connection.ConnTrx.Commit;
            Requisicion.Refresh;
            try
              Grid_requisicion.DataSource.DataSet.GotoBookmark(SavePlace);
            except
            else
              Grid_requisicion.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            kardex_almacen('Autoriza Apertura de Requisicion No. [' + IntToStr(Requisicion.FieldValues['iFolioRequisicion']) + '].', 'Requisiciones');
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end
        end;
      end;
      {$ENDREGION}

    {$REGION 'Proceso de Apertura Autoriza de Ordenes de Compra...'}
      if pgValidacion.ActivePageIndex = 4 then
      begin
        if OrdenCompra.RecordCount > 0 then
          if Grid_OrdenCompra.SelectedRows.Count > 0 then
            if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
            begin
              frmSeguridad.ShowModal;
              if (global_valida <> '') then
                lPoder := True
              else
                lPoder := False
            end
            else
            begin
              lPoder := True;
              global_valida := global_usuario;
            end
          else
            raise Exception.Create('Seleccione por lo menos una Orden de Compra.');

        if lPoder then
        begin
          lRecordChange := False;
          SavePlace := Grid_OrdenCompra.DataSource.DataSet.GetBookmark;
          with Grid_OrdenCompra.DataSource.DataSet do
            for iGrid := 0 to Grid_OrdenCompra.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(Grid_OrdenCompra.SelectedRows.Items[iGrid]));
              if FieldValues['sStatus'] = 'AUTORIZADO' then
              begin
                lRecordChange := True;
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('Update anexo_pedidos set sStatus ="VALIDADO", sAutorizo ="" where sContrato =:Contrato and iFolioPedido =:Pedido ');
                connection.zCommand.ParamByName('Contrato').DataType := ftString;
                connection.zCommand.ParamByName('Contrato').Value := global_contrato;
                connection.zCommand.ParamByName('Pedido').DataType := ftInteger;
                connection.zCommand.ParamByName('Pedido').Value := OrdenCompra.FieldValues['iFolioPedido'];
                connection.zCommand.ExecSQL;

                Try
                    SavePlace2 := frmPedidos.dbg_OCVista.DataController.DataSource.DataSet.GetBookmark;
                    frmPedidos.anexo_ocompras.Refresh;
                    try
                       frmPedidos.dbg_OCVista.DataController.DataSource.DataSet.GotoBookmark(SavePlace2);
                    Except
                       frmPedidos.dbg_OCVista.DataController.DataSource.DataSet.FreeBookmark(SavePlace2);
                    end;
                Except
                end;
              end
              else
                raise Exception.CreateFmt('-La Orden de Compra No. [%i] se encuentra en estado de Validado.', [OrdenCompra['iFolioPedido']]);
            end;
          if lRecordChange then
          begin
            Connection.ConnTrx.Commit;
            OrdenCompra.Refresh;
            try
              Grid_OrdenCompra.DataSource.DataSet.GotoBookmark(SavePlace);
            except
            else
              Grid_OrdenCompra.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            kardex_almacen('Autoriza Apertura de Orden de Compra No. [' + OrdenCompra.FieldValues['sOrdenCompra'] + '].', 'Orden de Compra');
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end
        end;
      end;
      {$ENDREGION}

    {$REGION 'Proceso de Apertua autoriza Reporte Diario...'}
      frmSeguridad.tsPasswordValida.Text := '';
      global_tipo_autorizacion := 'Autorización';
      lPoder := False;
      if pgValidacion.ActivePageIndex = 0 then
      begin
        dFechaUltReporte := Date;
        Connection.CommandTrx.Active := False;
        Connection.CommandTrx.SQL.Clear;
        Connection.CommandTrx.SQL.Add('Select Max(dIdFecha) as dIdFecha From reportediario Where sContrato = :Contrato');
        Connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
        Connection.CommandTrx.Params.ParamByName('Contrato').Value := global_Contrato;
        Connection.CommandTrx.Open;
        if Connection.CommandTrx.RecordCount > 0 then
          dFechaUltReporte := Connection.CommandTrx.FieldValues['dIdFecha'];
        dFechaUltReporte := dFechaUltReporte - Connection.configuracion.FieldValues['iReportesSinValid'];

        if ReporteDiario.RecordCount > 0 then
          if Grid_reportes.SelectedRows.Count > 0 then
          begin
            if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
            begin
              frmSeguridad.ShowModal;
              if (global_autoriza <> '') then
                lPoder := True
              else
                lPoder := False
            end
            else
            begin
              lPoder := True;
              global_autoriza := global_usuario;
            end
          end
          else
            raise Exception.Create('-Seleccione por lo menos un Reporte Diario.');

        if lPoder then
        begin
          lRecordChange := False;
          SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark;
          with Grid_reportes.DataSource.DataSet do
            for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
              if (FieldValues['lStatus'] = 'Autorizado') and (FieldValues['sIdConvenio'] = Global_Convenio) then
              begin
                        // Checar que no exista un generador autorizado que abarque la fecha del reporte diarios
                QryBusca.Active := False;
                QryBusca.SQL.Clear;
                QryBusca.SQL.Add('select sNumeroGenerador, dFechaInicio, dFechaFinal ' +
                  'from estimaciones Where sContrato = :Contrato and sNumeroOrden = :Orden and dFechaInicio <= :FechaI And dFechaFinal >= :FechaF And lStatus = "Autorizado"');
                QryBusca.Params.ParamByName('contrato').DataType := ftString;
                QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                QryBusca.Params.ParamByName('orden').DataType := ftString;
                QryBusca.Params.ParamByName('orden').Value := FieldValues['sNumeroOrden'];
                QryBusca.Params.ParamByName('fechai').DataType := ftDate;
                QryBusca.Params.ParamByName('fechai').Value := FieldValues['dIdFecha'];
                QryBusca.Params.ParamByName('fechaf').DataType := ftDate;
                QryBusca.Params.ParamByName('fechaf').Value := FieldValues['dIdFecha'];
                QryBusca.Open;

                        //Aqui Borro la PERNOCTA
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('DELETE FROM bitacoradepernocta Where sContrato = :contrato ' +
                  'And dIdFecha = :Fecha And sNumeroOrden = :Orden ');
                connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
                connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
                connection.CommandTrx.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
                connection.CommandTrx.ExecSQL();
                        //TERMINO DE BORRAR LA PERNOCTA

                lPoder := True;
                if QryBusca.RecordCount > 0 then
                  raise Exception.CreateFmt('-No es posible realizar la apertura de un Reporte Diario que pertenezca al periodo de generacion del ' +
                    '%s al %s del generador de obra No. %s.' + #10 + 'Realice la DesAutorización del generador de obra para poder realizar esta acción.',
                    [QryBusca.fieldByName('dFechaInicio').AsString, QryBusca.fieldByName('dFechaFinal').AsString, QryBusca.fieldByName('sNumeroGenerador').AsString]);
                        {Begin
                          lPoder := False ;
                          MessageDlg('No es posible realizar la apertura de un Reporte Diario que pertenezca al periodo de generacion del ' +
                                     connection.QryBusca.fieldByName('dFechaInicio').AsString  + ' al ' + connection.QryBusca.fieldByName('dFechaFinal').AsString +
                                     ' del generador de obra No. ' + connection.QryBusca.fieldByName('sNumeroGenerador').AsString + '. ' + chr (13) +
                                     'Realiza la DesAutorizacion del generador de obra para poder realizar esta accion.', mtWarning, [mbOk], 0);
                        end;}
                if lPoder then
                begin
                  lRecordChange := True;
                            // Actualizo Kardex del Sistema ....
                  connection.CommandTrx.Active := False;
                  connection.CommandTrx.SQL.Clear;
                  connection.CommandTrx.SQL.Add('Update reportediario SET lStatus = :Status , sIdUsuarioAutoriza = null, sIdUsuarioResidente = null ' +
                    'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
                  connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
                  connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                  connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
                  connection.CommandTrx.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                  connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Turno').Value := FieldValues['sIdTurno'];
                  connection.CommandTrx.Params.ParamByName('Status').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Status').Value := 'Validado';
                  connection.CommandTrx.ExecSQL;

                            //sleep(iPausa) ;
                  connection.CommandTrx.Active := False;
                  connection.CommandTrx.SQL.Clear;
                  connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                    'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
                  connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
                  connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Usuario').Value := Global_Usuario;
                  connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
                  connection.CommandTrx.Params.ParamByName('Fecha').Value := Date;
                  connection.CommandTrx.Params.ParamByName('Hora').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
                  connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Apertura del Reporte Diario No. [' + FieldValues['sNumeroReporte'] + ']. AUTORIZA ' + global_autoriza;
                  connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
                  connection.CommandTrx.Params.ParamByName('Origen').Value := 'Reporte Diario';
                  connection.CommandTrx.ExecSQL
                end
              end
              else
              begin
                raise Exception.CreateFmt('-El Reporte Diario: [%s] se encuentra en estado de VALIDADO o bien corresponde a otro convenio.', [FieldValues['sNumeroReporte']]);
                ReporteDiario.Active := False;
                ReporteDiario.Open;
                Grid_reportes.UnselectAll;
                Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
              end;
            end;
          if lRecordChange then
          begin
            Connection.ConnTrx.Commit;
            ReporteDiario.Active := False;
            ReporteDiario.Open;
            try
              Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
            except
              Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end;
        end
      end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura Autoriza Generador...'}
    if pgValidacion.ActivePageIndex = 1 then
    begin
      if Estimaciones.RecordCount > 0 then
        if Grid_Generadores.SelectedRows.Count > 0 then
        begin
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
              if (global_autoriza <> '') then
                lPoder := True
              else
                lPoder := False
          end
          else
          begin
            lPoder := True;
            global_autoriza := global_usuario;
          end
        end
        else
        raise Exception.Create('-Seleccione por lo menos un Generador.');

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_Generadores.DataSource.DataSet.GetBookmark;
        with Grid_Generadores.DataSource.DataSet do
          for iGrid := 0 to Grid_Generadores.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_Generadores.SelectedRows.Items[iGrid]));
            if (FieldValues['lStatus'] = 'Autorizado') then
            begin
              qryBusca.Active := False;
              qryBusca.SQL.Clear;
              qryBusca.SQL.Add('Select iNumeroEstimacion, dFechaInicio, dFechaFinal From estimacionperiodo Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And lEstimado = "Si"');
              qryBusca.Params.ParamByName('Contrato').DataType := ftString;
              qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
              qryBusca.Params.ParamByName('Estimacion').DataType := ftString;
              qryBusca.Params.ParamByName('Estimacion').Value := FieldValues['iNumeroEstimacion'];
              qryBusca.Open;
              lAutorizaResidente := False;
              lPoder := True;
              if qryBusca.RecordCount > 0 then
                raise Exception.CreateFmt('-No es posible realizar la apertura de un Generador de Obra que pertenezca al periodo de estimacion del ' +
                  '%s al %s de la Estimación No. %s.' + #10 +
                  'Realice la DesAutorización de la Estimación para poder realizar esta acción.', [QryBusca.fieldByName('dFechaInicio').AsString, QryBusca.fieldByName('dFechaFinal').AsString, QryBusca.fieldByName('iNumeroEstimacion').AsString]);
                        {Begin
                             lPoder := False ;
                             MessageDlg('No es posible realizar la apertura de un Generador de Obra que pertenezca al periodo de estimacion del ' +
                                         connection.QryBusca.fieldByName('dFechaInicio').AsString  + ' al ' + connection.QryBusca.fieldByName('dFechaFinal').AsString +
                                        ' de la Estimacion No. ' + connection.QryBusca.fieldByName('iNumeroEstimacion').AsString + '. ' + chr (13) +
                                        'Realiza la DesAutorizacion de la Estimacion para poder realizar esta accion.', mtWarning, [mbOk], 0);
                        End;}
              if lPoder then
              begin
                lRecordChange := True;
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Update estimaciones SET lStatus = :Status, sIdUsuarioAutoriza = null ' +
                  'Where sContrato = :Contrato And sNumeroOrden = :Orden And iNumeroEstimacion = :Estimacion And sNumeroGenerador = :Generador');
                connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
                connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                connection.CommandTrx.Params.ParamByName('Estimacion').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Estimacion').Value := FieldValues['iNumeroEstimacion'];
                connection.CommandTrx.Params.ParamByName('Generador').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'];
                connection.CommandTrx.Params.ParamByName('Status').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Status').Value := 'Validado';
                           // connection.CommandTrx.Params.ParamByName('Valida').DataType := ftString ;
                           // connection.CommandTrx.Params.ParamByName('Valida').Value :=null ;
                connection.CommandTrx.ExecSQL;

                            // Actualizo Kardex del Sistema ....
                            //Sleep(iPausa) ;
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                  'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
                connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Contrato').Value := Global_Contrato;
                connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Usuario').Value := Global_Usuario;
                connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
                connection.CommandTrx.Params.ParamByName('Fecha').Value := Date;
                connection.CommandTrx.Params.ParamByName('Hora').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
                connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Apertura del Generador No. [' + Estimaciones.FieldValues['sNumeroGenerador'] + '] de la Orden [' + tsNumeroOrden.Text + ']. AUTORIZA ' + global_autoriza;
                connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Origen').Value := 'Generadores';
                connection.CommandTrx.ExecSQL;
              end
            end
            else
              raise Exception.CreateFmt('-El Numero de Generador : %s se encuentra en estado de VALIDADO.', [FieldValues['sNumeroGenerador']]);
          end;//FIN DE FOR
          if lRecordChange then
          begin
            Connection.ConnTrx.Commit;
            Estimaciones.Active := False;
            Estimaciones.Open;
            try
              Grid_Generadores.DataSource.DataSet.GotoBookmark(SavePlace);
            except
            else
              Grid_Generadores.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
              MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end
      end//FIN DE lPoder
    end;
    {$ENDREGION}

    {$REGION 'Proceso de Apertura Autoriza Estimaciones...'}
    if (EstimacionPeriodo.RecordCount > 0) AND (pgValidacion.ActivePageIndex = 2) then
    begin
        if Grid_Estimaciones.SelectedRows.Count > 0 then
        begin
          if Connection.configuracion.FieldValues['sTipoSeguridad'] = 'Avanzada' then
          begin
            frmSeguridad.ShowModal;
            if (global_autoriza <> '') then
              lPoder := True
            else
              lPoder := False
          end
          else
          begin
            lPoder := True;
            global_autoriza := global_usuario;
          end
        end
        else
          raise Exception.Create('-Seleccione por lo menos una Estimación.');

        if lPoder then
        begin
          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('UPDATE estimacionperiodo SET lEstimado = "No", dMontoMNGeneradores = 0, dMontoDLLGeneradores = 0, ' +
            'dMontoMN = 0 , dMontoDLL = 0, dMontoAcumuladoMN = 0, dMontoAcumuladoDLL = 0, sIdUsuarioAutoriza = "" ' +
            'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion');
          Connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          Connection.CommandTrx.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.CommandTrx.Params.ParamByName('Estimacion').DataType := ftString;
          Connection.CommandTrx.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
          Connection.CommandTrx.ExecSQL;
          Connection.ConnTrx.Commit;
          SavePlace := Grid_Estimaciones.DataSource.DataSet.GetBookmark;
          EstimacionPeriodo.Active := False;
          EstimacionPeriodo.Open;
          try
            Grid_Estimaciones.DataSource.DataSet.GotoBookmark(SavePlace);
          except
            Grid_Estimaciones.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
        end
    end;/////////////
    {$ENDREGION}

    except
      on e: Exception do
      begin
        Connection.ConnTrx.Rollback;
        MessageDlg(e.Message, mtWarning, [mbOk], 0);
      end;
    end;
  finally
    QryBusca.Close;
    QryBusca.Destroy;
  end;
end;

procedure TfrmAbreReporte.Grid_reportesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Autorizado' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Validado' then
      Background := $00D0AD9F;
end;

procedure TfrmAbreReporte.Grid_reportesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAbreReporte.Grid_reportesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAbreReporte.Grid_reportesTitleClick(Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmAbreReporte.Grid_requisicionGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'AUTORIZADO' then
    Background := $00D0AD9F
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
      Background := $006FF8FF;
end;

procedure TfrmAbreReporte.Grid_requisicionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid4.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAbreReporte.Grid_requisicionMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid4.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAbreReporte.Grid_requisicionTitleClick(Column: TColumn);
begin
  //UtGrid4.DbGridTitleClick(Column);
end;

procedure TfrmAbreReporte.grid_salidasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sEstatus').AsString = 'AUTORIZADO' then
       Background := $00D0AD9F
    else
       if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sEstatus').AsString = 'VALIDADO' then
          Background := $006FF8FF;
end;

procedure TfrmAbreReporte.FormActivate(Sender: TObject);
begin
  ReporteDiario.Active := False;
  Reportediario.Open;
  Estimaciones.Active := False;
  Estimaciones.Open;

  if global_grupo = 'INTEL-CODE' then
  begin
    mnTiemposMuertos.Enabled := True;
    mnRegeneraAvances.Enabled := True;
    mnValidacionReportes.Enabled := True;
  end
  else
  begin
    mnTiemposMuertos.Enabled := False;
    mnRegeneraAvances.Enabled := False;
    mnValidacionReportes.Enabled := False;
  end
end;

procedure TfrmAbreReporte.rDiarioGetValue(const VarName: string;
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
    Value := sSuperIntendente;
  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisor;
  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisor;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;

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

procedure TfrmAbreReporte.frGeneradorGetValue(const VarName: string;
  var Value: Variant);
var
  sIsometricos: string;
begin
  if CompareText(VarName, 'ISOMETRICOS') = 0 then
  begin
    sIsometricos := '';
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select distinct sIsometrico, sPrefijo From estimacionxpartida Where sContrato = :Contrato And sNumeroOrden = :Orden And ' +
      'sNumeroGenerador = :Generador And sNumeroActividad = :Actividad And sIsometricoReferencia = :Referencia');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Orden').Value := Estimaciones.FieldValues['sNumeroOrden'];
    Connection.qryBusca.Params.ParamByName('Generador').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Generador').Value := Estimaciones.FieldValues['sNumeroGenerador'];
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := Estimaciones.FieldValues['sNumeroActividad'];
    Connection.qryBusca.Params.ParamByName('Referencia').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Referencia').Value := Estimaciones.FieldValues['sIsometricoReferencia'];
    Connection.qryBusca.Open;
    while not Connection.qryBusca.Eof do
    begin
      if sIsometricos <> '' then
        sIsometricos := sIsometricos + ', ';
      sIsometricos := sIsometricos + Connection.qryBusca.FieldValues['sIsometrico'] + ' ' + Connection.qryBusca.FieldValues['sPrefijo'];
      Connection.qryBusca.Next
    end;
    Value := sIsometricos;
  end;

  if CompareText(VarName, 'ANEXO') = 0 then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sAnexo From convenios Where sContrato = :Contrato And sIdConvenio = :convenio');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      Value := Connection.qryBusca.FieldValues['sAnexo']
    else
      Value := '';
  end;
  if CompareText(VarName, 'SUPERINTENDENTE') = 0 then
    Value := sSuperIntendente;
  if CompareText(VarName, 'SUPERVISOR') = 0 then
    Value := sSupervisorGenerador;
  if CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
    Value := sSupervisorTierra;
  if CompareText(VarName, 'SUPERVISOR_RESIDENTE') = 0 then
    Value := sResidente;

  if CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
    Value := sPuestoSuperIntendente;
  if CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
    Value := sPuestoSupervisorGenerador;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
    Value := sPuestoSupervisorTierra;
  if CompareText(VarName, 'PUESTO_SUPERVISOR_RESIDENTE') = 0 then
    Value := sPuestoResidente;
end;

procedure TfrmAbreReporte.Grid_reportesDblClick(Sender: TObject);
begin
  if ReporteDiario.RecordCount > 0 then
   // procReporteDiario (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmAbreReporte, rDiario.OnGetValue )
end;

procedure TfrmAbreReporte.Grid_EstimacionesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background := $00D0AD9F;

end;

procedure TfrmAbreReporte.Grid_EstimacionesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid3.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAbreReporte.Grid_EstimacionesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid3.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAbreReporte.Grid_EstimacionesTitleClick(Column: TColumn);
begin
 // UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmAbreReporte.Grid_GeneradoresDblClick(Sender: TObject);
begin
  try
    if Estimaciones.RecordCount > 0 then
      if lfnValidaGenerador(global_contrato, global_convenio, Estimaciones.FieldValues['sNumeroOrden'], Estimaciones.FieldValues['sNumeroGenerador'], frmAbreReporte) then
        if OrdenesdeTrabajo.RecordCount > 1 then
          procCaratulaGenerador (0, global_contrato, Estimaciones.FieldValues['iNumeroEstimacion'] , Estimaciones.FieldValues['sNumeroOrden'] , Estimaciones.FieldValues['sNumeroGenerador'] , global_convenio, frmAbreReporte, frGenerador.OnGetValue, True)
        else
          procCaratulaGenerador (0, global_contrato, Estimaciones.FieldValues['iNumeroEstimacion'] , Estimaciones.FieldValues['sNumeroOrden'] , Estimaciones.FieldValues['sNumeroGenerador'] , global_convenio, frmAbreReporte, frGenerador.OnGetValue, False)
      else
        MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0);
  except
    on e: Exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Abrir Reportes Diarios/Generadores/Estimaciones', 'Al doble click en la cuadricula generadores', 0);
    end;
  end;
end;

procedure TfrmAbreReporte.ReporteDiarioCalcFields(DataSet: TDataSet);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select sDescripcion From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
  Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
  Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Convenio').Value := ReporteDiario.FieldValues['sIdConvenio'];
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    ReporteDiariosDescripcion.Value := Connection.qryBusca.FieldValues['sDescripcion']
  else
    ReporteDiariosDescripcion.Value := ''
end;

procedure TfrmAbreReporte.mnTiemposMuertosClick(Sender: TObject);
var
  iJornada,
    iGrid: Integer;
begin
  try
    if ReporteDiario.RecordCount > 0 then
      with Grid_reportes.DataSource.DataSet do
        for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
        begin
          GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
          if OrdenesdeTrabajo.FieldValues['iJornada'] = 0 then
            iJornada := ifnJornadaDia(global_contrato, FieldValues['dIdFecha'], frmAbreReporte)
          else
            iJornada := OrdenesdeTrabajo.FieldValues['iJornada'];

          if iJornada < 10 then
            sJornada := '0' + Trim(IntToStr(iJornada)) + ':00'
          else
            sJornada := Trim(IntToStr(iJornada)) + ':00';

          if FieldValues['sOrigenTierra'] = 'No' then
          begin
            procInicializaJornadas(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], sJornada, FieldValues['dIdFecha'], frmAbreReporte);
            procActualizaJornadas(global_contrato, FieldValues['sNumeroOrden'], FieldValues['dIdFecha'], frmAbreReporte);
          end
        end
  except
    on e: Exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Abrir Reportes Diarios/Generadores/Estimaciones', 'Al click en Regenera Tiempos Muertos en las Fechas Seleccionadas', 0);
    end;
  end;
end;

procedure TfrmAbreReporte.mnRegeneraAvancesClick(Sender: TObject);
var
  iGrid: Integer;
begin
  try
    if ReporteDiario.RecordCount > 0 then
      with Grid_reportes.DataSource.DataSet do
        for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
        begin
          GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE avancesglobalesxorden SET dAvance = 0.00 ' +
            'WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = "" ' +
            'And dIdFecha = :Fecha');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').Value := FieldValues['sIdConvenio'];
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
          connection.zCommand.ExecSQL();
          cfnCalculaAvances(global_contrato, '', FieldValues['sIdConvenio'], 'XXX', False, FieldValues['dIdFecha'], 'Avanzada', frmAbreReporte)
        end
  except
    on e: Exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Abrir Reportes Diarios/Generadores/Estimaciones', 'Al click en Regenera Avances Fisicos del Contrato', 0);
    end;
  end;
end;

procedure TfrmAbreReporte.mnValidacionReportesClick(Sender: TObject);
var
  iGrid: Integer;
begin
  if ReporteDiario.RecordCount > 0 then
    with Grid_reportes.DataSource.DataSet do
      for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
                // Primero Elimino todo de la Bitacora de Paquetes de ese dia ...
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Delete from bitacoradepaquetes where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :Orden ' +
          'And dIdFecha = :fecha');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
        connection.zCommand.ExecSQL;

                // Inserccion de todos los paquetes en 0 a la fecha seleccionada ....
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('insert into bitacoradepaquetes (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dAvance) ' +
          'select sContrato, sIdConvenio, :fecha, sNumeroOrden, sWbs, sNumeroActividad, 0 from actividadesxorden ' +
          'Where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :orden And sTipoActividad = "Paquete"');
        connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
        connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
        connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
        connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
        connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
        connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
        connection.zCommand.ExecSQL();

                // Inicia Proceso de Reajuste de Paquetes ....
                // Primero la Bitacora de Alcances
                // ajusto los historicos a 0 y calculo los nuevos historicos ...
        procAjustaBitacoraAlcances(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha']);

                // Ahora la Bitacora de Actividades
                // ajusto los historicos a 0 y calculo los nuevos historicos ...
        procAjustaBitacoraActividades(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha']);
      end
end;

procedure TfrmAbreReporte.Grid_GeneradoresGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Autorizado' then
    Background := $00D0AD9F
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Validado' then
      Background := $006FF8FF;
end;

procedure TfrmAbreReporte.Grid_GeneradoresMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAbreReporte.Grid_GeneradoresMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAbreReporte.Grid_GeneradoresTitleClick(Column: TColumn);
begin
  //UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmAbreReporte.Grid_OrdenCompraGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'AUTORIZADO' then
    Background := $00D0AD9F
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
      Background := $006FF8FF;
end;

procedure TfrmAbreReporte.Grid_OrdenCompraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid5.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmAbreReporte.Grid_OrdenCompraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid5.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmAbreReporte.Grid_OrdenCompraTitleClick(Column: TColumn);
begin
  //UtGrid5.DbGridTitleClick(Column);
end;

procedure TfrmAbreReporte.EstimacionPeriodoCalcFields(DataSet: TDataSet);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select sDescripcion From tiposdeestimacion ' +
    'Where sIdTipoEstimacion = :Tipo');
  Connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Tipo').Value := EstimacionPeriodo.FieldValues['sIdTipoEstimacion'];
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    EstimacionPeriodosDescripcion.Value := Connection.qryBusca.FieldValues['sDescripcion']
  else
    EstimacionPeriodosDescripcion.Value := ''
end;

procedure TfrmAbreReporte.mnAsignaAvfisicoClick(Sender: TObject);
var
  iGrid: Integer;
begin
  try
    if ReporteDiario.RecordCount > 0 then
      with Grid_reportes.DataSource.DataSet do
        for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
        begin
          GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
          procAvancesHistorico(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdConvenio'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], False, frmAbreReporte);

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Update reportediario SET dAvProgAnteriorContrato = :ProgAntContrato, ' +
            'dAvProgActualContrato = :ProgActContrato, dAvRealAnteriorContrato = :RealAntContrato, ' +
            'dAvRealActualContrato = :RealActcontrato ' +
            'Where sContrato = :Contrato And dIdFecha = :fecha');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
          connection.zCommand.Params.ParamByName('ProgAntContrato').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('ProgAntContrato').Value := dProgramadoGlobalAnterior;
          connection.zCommand.Params.ParamByName('ProgActContrato').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('ProgActContrato').Value := dProgramadoGlobalActual;
          connection.zCommand.Params.ParamByName('RealAntContrato').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('RealAntContrato').Value := dRealGlobalAnterior;
          connection.zCommand.Params.ParamByName('RealActContrato').DataType := ftFloat;
          connection.zCommand.Params.ParamByName('RealActContrato').Value := dRealGlobalActual;
          connection.zCommand.ExecSQL();
        end
  except
    on e: Exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Abrir Reportes Diarios/Generadores/Estimaciones', 'Al reportar isometricos', 0);
    end;
  end;
end;

procedure TfrmAbreReporte.kardex_almacen(sParamMensaje: string; sOrigen: string);
begin
    {Validacion de requisiciones, ordenes de compra, recepcion de materiales y salidas de materiales.}
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
      'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)');
    connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
    connection.zCommand.Params.ParamByName('Usuario').DataType := ftString;
    connection.zCommand.Params.ParamByName('Usuario').Value := Global_Usuario;
    connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
    connection.zCommand.Params.ParamByName('Fecha').Value := Date;
    connection.zCommand.Params.ParamByName('Hora').DataType := ftString;
    connection.zCommand.Params.ParamByName('Hora').value := FormatDateTime('hh:mm:ss.zzz', Now);
    connection.zCommand.Params.ParamByName('Descripcion').DataType := ftString;
    connection.zCommand.Params.ParamByName('Descripcion').Value := sParamMensaje ;
    connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
    connection.zCommand.Params.ParamByName('Origen').Value    := sOrigen;
    connection.zCommand.ExecSQL();
end;

end.

