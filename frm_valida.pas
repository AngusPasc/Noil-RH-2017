unit frm_valida;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, frm_connection, StdCtrls, Buttons, global,
  DBCtrls, StrUtils, RXDBCtrl, Mask, utilerias, masUtilerias, UReporteDiarioMix,
  frxClass, Menus, ZAbstractRODataset, ZDataset, Gauges,
  RXCtrls, ExtCtrls, ZAbstractDataset, Math, ComCtrls,
  AdvGlowButton, JvBaseDlg, JvDesktopAlert, frxExportPDF, udbgrid, UnitExcepciones,
  sGauge, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxCheckBox, FormAutoScaler;

type
  TfrmValida = class(TForm)
    ds_reportediario: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    pgValidacion: TPageControl;
    tabReportes: TTabSheet;
    TabGeneradores: TTabSheet;
    ds_estimaciones: TDataSource;
    Grid_reportes: TRxDBGrid;
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
    EstimacionessContrato: TStringField;
    EstimacionesiNumeroEstimacion: TStringField;
    EstimacionessNumeroOrden: TStringField;
    EstimacionessNumeroGenerador: TStringField;
    EstimacionesiSemana: TIntegerField;
    EstimacionesiConsecutivo: TIntegerField;
    EstimacionesdFechaInicio: TDateField;
    EstimacionesdFechaFinal: TDateField;
    EstimacionesdBitacoraInicio: TDateField;
    EstimacionesdBitacoraFinal: TDateField;
    EstimacionessFaseObra: TStringField;
    EstimacionesmComentarios: TMemoField;
    EstimacioneslStatus: TStringField;
    EstimacionesdMontoMN: TFloatField;
    EstimacionesdMontoDLL: TFloatField;
    EstimacionesdFinancieroGenerador: TFloatField;
    EstimacionessIdUsuario: TStringField;
    EstimacionessIdUsuarioValida: TStringField;
    EstimacionessIdUsuarioAutoriza: TStringField;
    EstimacionessIdUsuarioResidente: TStringField;
    SecretPanel1: TSecretPanel;
    TabEstimaciones: TTabSheet;
    Grid_Estimaciones: TRxDBGrid;
    dsEstimacionPeriodo: TDataSource;
    EstimacionPeriodo: TZReadOnlyQuery;
    EstimacionPeriodoiNumeroEstimacion: TStringField;
    EstimacionPeriodosIdTipoEstimacion: TStringField;
    EstimacionPeriodolEstimado: TStringField;
    EstimacionPeriododFechaInicio: TDateField;
    EstimacionPeriododFechaFinal: TDateField;
    EstimacionPeriododMontoMN: TFloatField;
    EstimacionPeriododRetencionMN: TFloatField;
    EstimacionPeriodosDescripcion: TStringField;
    TabRequisicion: TTabSheet;
    TabOrdenCompra: TTabSheet;
    Grid_requisicion: TRxDBGrid;
    Requisicion: TZReadOnlyQuery;
    ds_requisicion: TDataSource;
    OrdenCompra: TZReadOnlyQuery;
    ds_OrdenCompra: TDataSource;
    Grid_OrdenCompra: TRxDBGrid;
    btnExit: TAdvGlowButton;
    btnAutoriza: TAdvGlowButton;
    BtnValida: TAdvGlowButton;
    ReporteDiariosIdUsuarioBarco: TStringField;
    TabSheet1: TTabSheet;
    Grid_RecepcionDeMateriales: TRxDBGrid;
    zq_recepciondemateriales: TZReadOnlyQuery;
    ds_recepciondemateriales: TDataSource;
    zq_recepciondematerialesiId: TIntegerField;
    zq_recepciondematerialessContrato: TStringField;
    zq_recepciondematerialessFolio: TStringField;
    zq_recepciondematerialessTipoMovimiento: TStringField;
    zq_recepciondematerialesdFechaRecepcion: TDateField;
    zq_recepciondematerialessIdAlmacen: TStringField;
    zq_recepciondematerialesmNotas: TMemoField;
    zq_recepciondematerialesQuienValida: TStringField;
    zq_recepciondematerialessStatus: TStringField;
    zq_recepciondemateriales_detalles: TZReadOnlyQuery;
    Progress: TsGauge;
    EstimacionPeriodosIdUsuarioAutoriza: TStringField;
    TabSheet2: TTabSheet;
    grid_salidas: TRxDBGrid;
    ds_salida: TDataSource;
    QrySalida: TZReadOnlyQuery;
    FrmScaler1: TFormAutoScaler;
    chkOrdenEntregada: TcxCheckBox;
    pnl1: TPanel;
    tsNumeroOrden: TDBLookupComboBox;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExitClick(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure btnAutorizaClick(Sender: TObject);
    procedure Grid_reportesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure ReporteDiarioCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure frGeneradorGetValue(const VarName: string;
      var Value: Variant);
    procedure Grid_reportesDblClick(Sender: TObject);
    procedure Grid_GeneradoresDblClick(Sender: TObject);
    procedure mnTiemposMuertosClick(Sender: TObject);
    procedure mnRegeneraAvancesClick(Sender: TObject);
    procedure mnValidacionReportesClick(Sender: TObject);
    procedure procDelInsAvEmbarque(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
    procedure procAjustaBitacoraAlcances(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
    procedure procAjustaBitacoraActividades(sParamContrato, sParamOrden, sParamTurno, sParamConvenio: string; dParamFecha: tDate);
    procedure EstimacionPeriodoCalcFields(DataSet: TDataSet);
    procedure Grid_requisicionGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_OrdenCompraGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure pgValidacionChange(Sender: TObject);
    procedure Grid_EstimacionesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Ajuste(dParamContrato, dParamConvenio, dParamOrden: string; dParamFecha: tDate);
    procedure TabSheet1Show(Sender: TObject);
    procedure grid_salidasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_RecepcionDeMaterialesGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure kardex_almacen(sParamMensaje, sOrigen : string );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  iPausa = 1000;
var
  frmValida: TfrmValida;
  dMonto: Currency;
  sJornada: string;
  lRecordChange: Boolean;
  iRecord: Integer;
  SavePlace2 : TBookmark;

implementation

uses frm_seguridad, frm_bitacoraxalcance, frm_bitacoradepartamental_2,
  frm_ReporteDiarioTurno, frm_Pedidos, frm_RequisicionPerf;

{$R *.dfm}

procedure TfrmValida.pgValidacionChange(Sender: TObject);
begin
  if pgValidacion.ActivePageIndex = 0 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Reportes Diarios';
    btnAutoriza.Caption := '&Autoriza Reportes Diarios';
  end;
  if pgValidacion.ActivePageIndex = 1 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Generadores de Obra';
    btnAutoriza.Caption := '&Autoriza Generadores de Obra';
  end;
  if pgValidacion.ActivePageIndex = 2 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Estimaciones';
    btnAutoriza.Caption := '&Autoriza Estimaciones';
  end;
  if pgValidacion.ActivePageIndex = 3 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Requisiciones';
    btnAutoriza.Caption := '&Autoriza Requisiciones';
  end;
  if pgValidacion.ActivePageIndex = 4 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Orden de Compra';
    btnAutoriza.Caption := '&Autoriza Orden de Compra';
  end;
  if pgValidacion.ActivePageIndex = 5 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Recepcion de Materiales';
    btnAutoriza.Caption := '&Autoriza Recepcion de Materiales';
  end;

  if pgValidacion.ActivePageIndex = 6 then
  begin
    btnValida.Enabled := True;
    btnValida.Caption := '&Valida Salida de Materiales';
    btnAutoriza.Caption := '&Autoriza Salida de Materiales';
  end;

end;

procedure TfrmValida.procAjustaBitacoraActividades(sParamContrato, sParamOrden, sParamTurno, sParamConvenio: string; dParamFecha: tDate);
var
  qryBitacora: tzReadOnlyQuery;
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
  qryBitacora.SQL.Add('select b.iIdDiario, b.sWbs, b.sNumeroActividad, Sum(b.dCantidad) as dCantidadActual, Sum(b.dAvance) as dAvanceActual from bitacoradeactividades b ' +
    'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroOrden = a.sNumeroOrden And ' +
    'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
    'where b.sContrato = :contrato and b.dIdFecha = :fecha And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno ' +
    'Group by b.sWbs, b.sNumeroActividad order by a.iItemOrden, a.sNumeroActividad asc');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
  qryBitacora.Params.ParamByName('Turno').DataType := ftString;
  qryBitacora.Params.ParamByName('Turno').Value := sParamTurno;
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
        connection.qryBusca.Params.ParamByName('contrato').Value := sParamContrato;
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
        connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dCantidadAnterior = :CantidadAnterior, dAvanceAnterior = :AvanceAnterior, ' +
          'dCantidadActual = :CantidadActual, dAvanceActual = :AvanceActual ' +
          'Where sContrato = :Contrato And dIdFecha = :Fecha And iIdDiario = :Diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
        connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value := dParamFecha;
        connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value := qryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.Params.ParamByName('CantidadAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadAnterior').value := dCantidadAnterior;
        connection.zCommand.Params.ParamByName('AvanceAnterior').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceAnterior').value := dAvanceAnterior;
        connection.zCommand.Params.ParamByName('CantidadActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('CantidadActual').value := qryBitacora.FieldValues['dCantidadActual'];
        connection.zCommand.Params.ParamByName('AvanceActual').DataType := ftFloat;
        connection.zCommand.Params.ParamByName('AvanceActual').value := qryBitacora.FieldValues['dAvanceActual'];
        connection.zCommand.ExecSQL;
      except
        MessageDlg('Ocurrio un error al actualizar el registro en la bitacora de actividades', mtWarning, [mbOk], 0);
      end;
      Progress.Progress := iRecord;
      QryBitacora.Next;
    end;
    Progress.Visible := False;
  end;

    //// Bitacora de Paquetes ...
  qryBitacora.Active := False;
  qryBitacora.SQL.Clear;
  qryBitacora.SQL.Add('select b.sWbs, sum((b.dAvance * a.dPonderado)) as dAvanceReal from bitacoradeactividades b ' +
    'INNER JOIN actividadesxorden a ON (b.sContrato = a.sContrato And a.sIdConvenio = :Convenio And b.sNumeroOrden = a.sNumeroOrden And ' +
    'b.sWbs = a.sWbs And b.sNumeroActividad = a.sNumeroActividad) ' +
    'where b.sContrato = :contrato and b.dIdFecha = :fecha And b.sNumeroOrden = :Orden ' +
    'Group by b.sWbs order by b.sWbs, a.iNivel DESC');
  qryBitacora.Params.ParamByName('contrato').DataType := ftString;
  qryBitacora.Params.ParamByName('contrato').Value := sParamContrato;
  qryBitacora.Params.ParamByName('convenio').DataType := ftString;
  qryBitacora.Params.ParamByName('convenio').Value := sParamConvenio;
  qryBitacora.Params.ParamByName('Orden').DataType := ftString;
  qryBitacora.Params.ParamByName('Orden').Value := sParamOrden;
  qryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  qryBitacora.Params.ParamByName('fecha').Value := dParamFecha;
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
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance + :Avance  ' +
          'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And InStr(:wbs, concat(sWbs,".")) > 0');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value := sParamContrato;
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

procedure TfrmValida.procAjustaBitacoraAlcances(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
var
  qryBitacora: tzReadOnlyQuery;
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


procedure TfrmValida.procDelInsAvEmbarque(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
var
  sTexto: string;
  iDiario: Integer;
  StringList,
    StringListxOrden: TStrings;
  MaximoDiario: tzReadOnlyQuery;
begin
  MaximoDiario := tzReadOnlyQuery.Create(self);
  MaximoDiario.Connection := connection.zConnection;
  MaximoDiario.SQL.Clear;
  MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades ' +
    'where sContrato = :contrato and dIdFecha = :fecha  Group By sContrato');

    // Borramos todas las notas producto de los Avisos de Embarque
  connection.zCommand.Active := False;
  connection.zCommand.SQL.Clear;
  connection.zCommand.SQL.Add('Delete From bitacoradeactividades Where sContrato = :Contrato And sIdTurno = :Turno And dIdFecha = :Fecha And sIdTipoMovimiento = "AE" ');
  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
  connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
  connection.zCommand.Params.ParamByName('Turno').Value := sParamTurno;
  connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
  connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.zCommand.ExecSQL();

  StringList := TStringList.Create;
  StringListxOrden := TStringList.Create;
  StringList.Clear;
  StringList.Add('');

  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
  connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Orden').Value := 'CONTRATO NO. ' + sParamContrato;
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
  begin
    if global_title_embarque = '' then
    begin
      if Connection.qryBusca.RecordCount > 1 then
        StringList.Add('CON ESTA FECHA SE VERIFICAN Y VALIDAN LAS LISTAS DE VERIFICACIÓN DE LOS SIGUIENTES AVISOS DE EMBARQUE.')
      else
        StringList.Add('CON ESTA FECHA SE VERIFICA Y VALIDA LA LISTA DE VERIFICACIÓN DEL SIGUIENTE AVISO DE EMBARQUE.');
      StringList.Add('  #         AVISO DE EMB.                           FECHA DE RECEPCIÓN');
    end
    else
    begin
      StringList.Add(global_title_embarque);
      StringList.Add('  #         No. DE ENTRADA                          FECHA DE RECEPCIÓN');
    end;

    while not Connection.qryBusca.Eof do
    begin
      sTexto := '                                                             ';
      sTexto := StuffString(sTexto, 2, 5, Connection.qryBusca.fieldByName('iFolio').AsString);
      sTexto := StuffString(sTexto, 12, 15, Connection.qryBusca.FieldValues['sReferencia']);
      sTexto := StuffString(sTexto, 58, 10, Connection.qryBusca.fieldByName('dFechaAviso').AsString);
      StringList.Add(sTexto);
      Connection.qryBusca.Next;
    end;

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sNumeroOrden From ordenesdetrabajo Where sContrato = :Contrato And cIdStatus  = :Status');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
    connection.qryBusca.Params.ParamByName('status').DataType := ftString;
    connection.qryBusca.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
    Connection.qryBusca.Open;
    while not Connection.qryBusca.Eof do
    begin
      Connection.qryBusca2.Active := False;
      Connection.qryBusca2.SQL.Clear;
      Connection.qryBusca2.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
      Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato;
      Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      Connection.qryBusca2.Params.ParamByName('Fecha').Value := dParamFecha;
      Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
      Connection.qryBusca2.Params.ParamByName('Orden').Value := Connection.qryBusca.FieldValues['sNumeroOrden'];
      Connection.qryBusca2.Open;
      StringListxOrden.Clear;
      while not Connection.qryBusca2.Eof do
      begin
        sTexto := '                                                             ';
        sTexto := StuffString(sTexto, 2, 5, Connection.qryBusca2.fieldByName('iFolio').AsString);
        sTexto := StuffString(sTexto, 12, 15, Connection.qryBusca2.FieldValues['sReferencia']);
        sTexto := StuffString(sTexto, 58, 10, Connection.qryBusca2.fieldByName('dFechaAviso').AsString);
        StringListxOrden.Add(sTexto);
        Connection.qryBusca2.Next;
      end;
      StringListxOrden.Add('');

      if Pos('TIERRA', sParamOrden) > 0 then
        global_inicio := global_inicio + 8000;

      MaximoDiario.Active := False;
      MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
      MaximoDiario.Params.ParamByName('Contrato').Value := sParamContrato;
      MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
      MaximoDiario.Params.ParamByName('Fecha').Value := dParamFecha;
      MaximoDiario.Open;
      if MaximoDiario.FieldByName('TotalDiario').IsNull then
        iDiario := global_inicio + 1
      else
        iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Insert Into bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sIdDepartamento, sNumeroOrden, sIdTipoMovimiento, mDescripcion)' +
        'Values (:Contrato, :Fecha, :Diario, :Turno, :Depto, :Orden, :Tipo, :Descripcion) ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Diario').Value := iDiario;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').value := sParamTurno;
      connection.zCommand.Params.ParamByName('Depto').DataType := ftString;
      connection.zCommand.Params.ParamByName('Depto').Value := global_depto;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := Connection.qryBusca.FieldValues['sNumeroOrden'];
      connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
      connection.zCommand.Params.ParamByName('Tipo').Value := 'AE';
      connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
      connection.zCommand.Params.ParamByName('Descripcion').Value := StringList.Text + StringListxOrden.Text;
      connection.zCommand.ExecSQL();
      Connection.qryBusca.Next;
    end;
  end
  else
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
    connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
    connection.qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
    connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      if global_title_embarque = '' then
      begin
        if Connection.qryBusca.RecordCount > 1 then
          StringList.Add('CON ESTA FECHA SE VERIFICAN Y VALIDAN LAS LISTAS DE VERIFICACIÓN DE LOS SIGUIENTES AVISOS DE EMBARQUE.')
        else
          StringList.Add('CON ESTA FECHA SE VERIFICA Y VALIDA LA LISTA DE VERIFICACIÓN DEL SIGUIENTE AVISO DE EMBARQUE.');
        StringList.Add('  #         AVISO DE EMB.                             FECHA DE RECEPCIÓN');
      end
      else
      begin
        StringList.Add(global_title_embarque);
        StringList.Add('  #         No. DE ENTRADA                           FECHA DE RECEPCIÓN');
      end;

      while not Connection.qryBusca.Eof do
      begin
        sTexto := '                                                             ';
        sTexto := StuffString(sTexto, 2, 5, Connection.qryBusca.fieldByName('iFolio').AsString);
        sTexto := StuffString(sTexto, 12, 15, Connection.qryBusca.FieldValues['sReferencia']);
        sTexto := StuffString(sTexto, 58, 10, Connection.qryBusca.fieldByName('dFechaAviso').AsString);
        StringList.Add(sTexto);
        Connection.qryBusca.Next;
      end;
      StringList.Add('');
      if Pos('TIERRA', sParamOrden) > 0 then
        global_inicio := global_inicio + 8000;

      MaximoDiario.Active := False;
      MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
      MaximoDiario.Params.ParamByName('Contrato').Value := sParamContrato;
      MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
      MaximoDiario.Params.ParamByName('Fecha').Value := dParamFecha;
      MaximoDiario.Open;
      if MaximoDiario.FieldByName('TotalDiario').IsNull then
        iDiario := global_inicio + 1
      else
        iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Insert Into bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sIdDepartamento, sNumeroOrden, sIdTipoMovimiento, mDescripcion)' +
        'Values (:Contrato, :Fecha, :Diario, :Turno, :Depto, :Orden, :Tipo, :Descripcion) ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := sParamContrato;
      connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
      connection.zCommand.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.zCommand.Params.ParamByName('Diario').DataType := ftInteger;
      connection.zCommand.Params.ParamByName('Diario').Value := iDiario;
      connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
      connection.zCommand.Params.ParamByName('Turno').value := sParamTurno;
      connection.zCommand.Params.ParamByName('Depto').DataType := ftString;
      connection.zCommand.Params.ParamByName('Depto').Value := global_depto;
      connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
      connection.zCommand.Params.ParamByName('Orden').Value := sParamOrden;
      connection.zCommand.Params.ParamByName('Tipo').DataType := ftString;
      connection.zCommand.Params.ParamByName('Tipo').Value := 'AE';
      connection.zCommand.Params.ParamByName('Descripcion').DataType := ftMemo;
      connection.zCommand.Params.ParamByName('Descripcion').Value := StringList.Text;
      connection.zCommand.ExecSQL();
      Connection.qryBusca.Next
    end
  end;
  MaximoDiario.Destroy;
end;


procedure TfrmValida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmSeguridad.tsIdUsuarioValida.Text := '';
  frmSeguridad.tsPasswordValida.Text := '';
  action := cafree;
end;

procedure TfrmValida.BtnExitClick(Sender: TObject);
begin
  close
end;

procedure TfrmValida.btnValidaClick(Sender: TObject);
var
  dFinancieroGenerador: Real;
  dMontoMN, dMontoDLL: Double;
  iGrid: Integer;
  lPoder: Boolean;
  SavePlace : TBookmark;
  iJornada: Integer;
  iResp: Byte;
  Registro: Byte;
  QryReporteNoValidado: tZReadOnlyquery;
  sPartida,
    sPrefijo,
    sParametro: string;
  dPartidaAnexo,
    dPartidaGenerado: Double;
  dCantidad,
    dCantidadAdicional: Double;
  iConsecutivo: Word;
  CantidadAcumulada: Double;
begin
  try
    //soad -> Proceso de Validacion de Requisiciones..
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
          MessageDlg('Seleccione por lo menos una Requisicion ', mtInformation, [mbOk], 0);

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_requisicion.DataSource.DataSet.GetBookmark;
        with Grid_requisicion.DataSource.DataSet do
          for iGrid := 0 to Grid_requisicion.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_requisicion.SelectedRows.Items[iGrid]));
            if FieldValues['sStatus'] = 'PENDIENTE' then
            begin
              lRecordChange := True;
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Update anexo_requisicion set sStatus ="VALIDADO" where sContrato =:Contrato ' +
                                          'and sNumeroOrden =:Orden and iFolioRequisicion =:Requisicion and sIdDepartamento=:Depto ');

              connection.zCommand.ParamByName('Contrato').AsString    := global_contrato;
              Connection.zCommand.ParamByName('Orden').AsString       := Requisicion.FieldValues['sNumeroOrden'] ;
              connection.zCommand.ParamByName('Requisicion').AsString := Requisicion.FieldValues['iFolioRequisicion'];
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
              MessageDlg('La Requisicon [' + IntToStr(FieldValues['iFolioRequisicion']) + '] se encuentra en estado de Validado', mtInformation, [mbOk], 0);
          end;
        if lRecordChange then
        begin
          Requisicion.Refresh;
          try
            Grid_requisicion.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            Grid_requisicion.DataSource.DataSet.FreeBookmark(SavePlace);
          end;

          kardex_almacen('Validación de Requisicion No. [' + IntToStr(Requisicion.FieldValues['iFolioRequisicion']) + '].', 'Requisiciones');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          try
             frmRequisicionPerf.anexo_requisicion.Refresh ;
          Except
          end;

        end
      end;
      exit;
    end;

    //soad -> Proceso de Validacion de Ordenes de Compra..
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
          MessageDlg('Seleccione por lo menos una Orden de Compra ', mtInformation, [mbOk], 0);

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_OrdenCompra.DataSource.DataSet.GetBookmark;
        with Grid_OrdenCompra.DataSource.DataSet do
          for iGrid := 0 to Grid_OrdenCompra.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_OrdenCompra.SelectedRows.Items[iGrid]));

            if FieldValues['sStatus'] = 'ENTREGADO' then
              raise Exception.Create( 'La orden de compra ' + OrdenCompra.FieldByName( 'iFolioPedido' ).AsString + ', ya ha sido entregada.' );

            if FieldValues['sStatus'] = 'PENDIENTE' then
            begin
              lRecordChange := True;
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Text := 'Update anexo_pedidos set sStatus ="VALIDADO" where sContrato =:Contrato and iFolioPedido =:Pedido ';
              connection.zCommand.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.ParamByName('Pedido').DataType := ftInteger;
              connection.zCommand.ParamByName('Pedido').Value := OrdenCompra.FieldValues['iFolioPedido'];
              connection.zCommand.ExecSQL;

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
              MessageDlg('La Orden de Compra No. [' + IntToStr(FieldValues['iFolioPedido']) + '] se encuentra en estado de Validado', mtInformation, [mbOk], 0);
          end;
        if lRecordChange then
        begin
          OrdenCompra.Refresh;
          try
            Grid_OrdenCompra.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            Grid_OrdenCompra.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          kardex_almacen('Validación de Orden de Compra No. [' + OrdenCompra.FieldValues['sOrdenCompra'] + '].', 'Orden de Compra');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
      exit;
    end;

    if pgValidacion.ActivePageIndex = 5 then begin
      lPoder := True;
      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_RecepcionDeMateriales.DataSource.DataSet.GetBookmark;
        with Grid_RecepcionDeMateriales.DataSource.DataSet do
          for iGrid := 0 to Grid_RecepcionDeMateriales.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_RecepcionDeMateriales.SelectedRows.Items[iGrid]));
            if FieldValues['sStatus'] = 'PENDIENTE' then
            begin
              lRecordChange := True;
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Update alm_recepciondemateriales set sStatus ="VALIDADO" where sContrato =:Contrato and sFolio =:sFolio ');
              connection.zCommand.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.ParamByName('sFolio').DataType := ftString;
              connection.zCommand.ParamByName('sFolio').Value := zq_recepciondemateriales.FieldValues['sFolio'];
              connection.zCommand.ExecSQL;
            end
            else
              MessageDlg('La Recepción de Materiales No. [' + IntToStr(FieldValues['sFolio']) + '] se encuentra en estado de Validado', mtInformation, [mbOk], 0);
          end;
        if lRecordChange then
        begin
          zq_recepciondemateriales.Refresh;
          try
            Grid_RecepcionDeMateriales.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            Grid_RecepcionDeMateriales.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          kardex_almacen('Validación de Recepcion de Material No. [' + zq_recepciondemateriales.FieldValues['sFolio'] + '].', 'Recepcion de Materiales');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
      exit;
    end;

    if pgValidacion.ActivePageIndex = 6 then begin
      lPoder := True;
      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := grid_salidas.DataSource.DataSet.GetBookmark;
        with grid_salidas.DataSource.DataSet do
          for iGrid := 0 to grid_salidas.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(grid_salidas.SelectedRows.Items[iGrid]));
            if FieldValues['sEstatus'] = 'PENDIENTE' then
            begin
              lRecordChange := True;
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Update almacen_salida set sEstatus ="VALIDADO" where sContrato =:Contrato and iFolioSalida =:Folio ');
              connection.zCommand.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.ParamByName('Folio').DataType := ftInteger;
              connection.zCommand.ParamByName('Folio').Value := QrySalida.FieldValues['iFolioSalida'];
              connection.zCommand.ExecSQL;
            end
            else
              MessageDlg('La Salida de Material No. [' + IntToStr(FieldValues['sFolioSalida']) + '] se encuentra en estado de Validado', mtInformation, [mbOk], 0);
          end;
        if lRecordChange then
        begin
          QrySalida.Refresh;
          try
            grid_salidas.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            grid_salidas.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          kardex_almacen('Validación de Salida de Material No. [' + QrySalida.FieldValues['sFolioSalida'] + '].', 'Salida de Materiales');
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end;
      exit;
    end;

    frmSeguridad.tsPasswordValida.Text := '';
    global_tipo_autorizacion := 'Validación';
    lPoder := False;

    Connection.zCommand.Active := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add('Delete from actividadesxorden Where sContrato = :Contrato And sNumeroActividad ="A" And iItemOrden="" ');
    Connection.zCommand.ExecSQL();

    if pgValidacion.ActivePageIndex = 0 then
    begin
        {Revision si el reporte de barco ya fue abierto Se vuelve a refrescar los datos... 23 de Febrero de 2011}
      if ReporteDiario.FieldValues['sIdUsuarioBarco'] <> '' then
            //messageDLG('El Prorrateo de Barco necesita Actualizarse, para Hacerlo debe Imprimir el Reporte de Barco seleccionado. ', mtInformation, [mbOk], 0);
        procReporteBarco(ReporteDiario.FieldValues['sContrato'], ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['dIdFecha'], frmValida, rDiario.OnGetValue);

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
          MessageDlg('Seleccione por lo menos un reporte diario', mtInformation, [mbOk], 0);

      if lPoder then
      begin
        lRecordChange := False;
        SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark;
        with Grid_reportes.DataSource.DataSet do
          for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
          begin
            GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
            if FieldValues['lStatus'] = 'Pendiente' then
            begin
              lRecordChange := True;
                       // Primero Elimino todo de la Bitacora de Paquetes de ese dia ...
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Delete from bitacoradepaquetes where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :Orden ' +
                'And dIdFecha = :fecha ');
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
                'Where sContrato = :contrato And sIdConvenio = :convenio And sNumeroOrden = :orden And sTipoActividad = "Paquete" ' +
                'on duplicate key update dAvance=0');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
              connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
              connection.zCommand.ExecSQL();

                       // Inicia Proceso de Reajuste de Paquetes .... Primero la Bitacora de Alcances
                       // ajusto los historicos a 0 y calculo los nuevos historicos ...
              procAjustaBitacoraAlcances(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha']);

                       // Ahora la Bitacora de Actividades
                       // ajusto los historicos a 0 y calculo los nuevos historicos ...
              procAjustaBitacoraActividades(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha']);

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance / 100  ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha And sIdConvenio = :convenio And sNumeroOrden = :Orden');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
              connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('convenio').value := FieldValues['sIdConvenio'];
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').value := FieldValues['dIdFecha'];
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').value := FieldValues['sNumeroOrden'];
              connection.zCommand.ExecSQL;

                       {Llamamos funcion de ajuste de diferencias de decimales en avances Fisicos por frente ...}
              Ajuste(global_contrato, FieldValues['sIdConvenio'], FieldValues['sNumeroOrden'], FieldValues['dIdFecha']);

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
              connection.zCommand.Params.ParamByName('Orden').Value := '';
              connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
              connection.zCommand.ExecSQL;

                       // Avances del Contrato ....
              try
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('insert into bitacoradepaquetes (sContrato, sIdConvenio, dIdFecha, sNumeroOrden, sWbs, sNumeroActividad, dAvance) ' +
                  'select sContrato, sIdConvenio, :fecha, "", sWbs, sNumeroActividad, 0 from actividadesxanexo ' +
                  'Where sContrato = :contrato And sIdConvenio = :convenio And sTipoActividad = "Paquete"');
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
                connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
                connection.zCommand.Params.ParamByName('convenio').Value := FieldValues['sIdConvenio'];
                connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
                connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
                connection.zCommand.ExecSQL();
              except

              end;

                       //llama el procedimiento de ajusta contrato
              procAjustaContrato(global_contrato, FieldValues['sIdConvenio'], FieldValues['dIdFecha'], frmValida);

              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = dAvance / 100  ' +
                'Where sContrato = :Contrato And dIdFecha = :Fecha And sIdConvenio = :convenio And sNumeroOrden = :Orden');
              connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
              connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('convenio').value := FieldValues['sIdConvenio'];
              connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('fecha').value := FieldValues['dIdFecha'];
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := '';
              connection.zCommand.ExecSQL;

                       {Llamamos funcion de ajuste de diferencias de decimales en avances Fisicos...}
              Ajuste(global_contrato, FieldValues['sIdConvenio'], '', FieldValues['dIdFecha']);

                       //Determino la jornada a laborar en el dia .....
              if OrdenesdeTrabajo.FieldValues['iJornada'] = 0 then
                iJornada := ifnJornadaDia(global_contrato, FieldValues['dIdFecha'], frmValida)
              else

                iJornada := OrdenesdeTrabajo.FieldValues['iJornada'];

              if iJornada < 10 then
                sJornada := '0' + Trim(IntToStr(iJornada)) + ':00'
              else
                sJornada := Trim(IntToStr(iJornada)) + ':00';

              try
                cfnCalculaAvances(global_contrato,
                  FieldValues['sNumeroOrden'],
                  FieldValues['sIdConvenio'],
                  FieldValues['sIdTurno'],
                  True,
                  FieldValues['dIdFecha'],
                  'Avanzada',
                  frmValida);
              except
                on e: exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Valida Reportes Diarios/Generadores', 'Al calcular avances al validar', 0);
                end;
              end;

                       // Proceso para actualizacion de avances .....
              if OrdenesdeTrabajo.RecordCount > 1 then
                procAvancesHistorico(global_contrato, tsNumeroOrden.Text, FieldValues['sIdConvenio'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], True, frmValida)
              else
                procAvancesHistorico(global_contrato, tsNumeroOrden.Text, FieldValues['sIdConvenio'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], False, frmValida);

                       // Actualizar valores del reporte diario
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('Update reportediario SET lStatus = :Status , sIdUsuarioValida = :Valida, iPersonal = 0, ' +
                'sTiempoAdicional = "00:00", sTiempoEfectivo = "00:00", sTiempoMuerto = "00:00", sTiempoMuertoReal = "00:00", ' +
                'dAvProgAnteriorOrden = :ProgAntOrden, dAvProgActualOrden = :ProgActOrden, dAvRealAnteriorOrden = :RealAntOrden, dAvRealActualOrden = :RealActOrden ' +
                'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :fecha And sIdTurno = :Turno');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
              connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
              connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
              connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
              connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'];
              connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
              connection.zCommand.Params.ParamByName('Turno').Value := FieldValues['sIdTurno'];
              connection.zCommand.Params.ParamByName('Status').DataType := ftString;
              connection.zCommand.Params.ParamByName('Status').Value := 'Validado';
              connection.zCommand.Params.ParamByName('Valida').DataType := ftString;
              connection.zCommand.Params.ParamByName('Valida').Value := global_valida;
              connection.zCommand.Params.ParamByName('ProgAntOrden').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('ProgAntOrden').Value := dProgramadoOrdenAnterior;
              connection.zCommand.Params.ParamByName('ProgActOrden').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('ProgActOrden').Value := dProgramadoOrdenActual;
              connection.zCommand.Params.ParamByName('RealAntOrden').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('RealAntOrden').Value := dRealOrdenAnterior;
              connection.zCommand.Params.ParamByName('RealActOrden').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('RealActOrden').Value := dRealOrdenActual;
              connection.zCommand.ExecSQL();

                       // Actualizo los avances globales de todos reportes del dia ....
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

                       //Termino de Identificar la Jornada

              if FieldValues['sOrigenTierra'] = 'No' then
              begin //loboazul27
                procInicializaJornadas(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], sJornada, FieldValues['dIdFecha'], frmValida);
                procActualizaJornadas(global_contrato, FieldValues['sNumeroOrden'], FieldValues['dIdFecha'], frmValida);
              end;

              // Termina Proceso de Actualizacion de Avances ......


              //Patricio: Actualiza los materiales en la tabla de insumos:
              {Connection.QryBusca.Active := False;
              Connection.QryBusca.SQL.Clear;
              Connection.QryBusca.SQL.Add('SELECT a.* FROM bitacorademateriales AS a INNER JOIN reportediario AS rd ON (rd.dIdFecha = a.dIdFecha) INNER JOIN bitacoradeactividades AS c ON (c.iIdDiario = a.iIdDiario AND a.dIdFecha = c.dIdFecha) ');
              Connection.QryBusca.SQL.Add('WHERE a.sContrato = :Contrato AND c.dIdFecha = :Fecha AND rd.sNumeroOrden = :Orden');
              Connection.QryBusca.Params.ParamByName('Contrato').AsString := Global_Contrato;
              Connection.QryBusca.Params.ParamByName('Fecha').AsDateTime := FieldValues['dIdFecha'];
              Connection.QryBusca.Params.ParamByName('Orden').AsString := FieldValues['sNumeroOrden'];
              Connection.QryBusca.Open;}

              //Cantidad Acumulada
             { while Not Connection.QryBusca.Eof do begin
                Connection.QryBusca2.Active := False;
                Connection.QryBusca2.SQL.Clear;
                Connection.QryBusca2.SQL.Add('SELECT SUM(dCantidad) AS dAcumulado FROM bitacorademateriales WHERE sContrato = :Contrato AND sIdMaterial = :IdMaterial AND dIdFecha <= :Fecha');
                Connection.QryBusca2.Params.ParamByName('Contrato').AsString := Global_Contrato ;
                Connection.QryBusca2.Params.ParamByName('IdMaterial').AsString := Connection.QryBusca.FieldByName('sIdMaterial').AsString;
                Connection.QryBusca2.Params.ParamByName('Fecha').AsDate := FieldValues['dIdFecha'];
//                Connection.QryBusca2.Params.ParamByName('IdDiario').AsInteger := Connection.QryBusca.FieldByName('iIdDiario').AsInteger;
                Connection.QryBusca2.Open;

                if Connection.QryBusca2.RecordCount > 0 then begin
                  CantidadAcumulada := Connection.QryBusca2.FieldByName('dAcumulado').AsFloat;
                end;

                //Cantidad a Instalar
                Connection.QryBusca2.Active := False;
                Connection.QryBusca2.SQL.Clear;
                Connection.QryBusca2.SQL.Add('SELECT (dExistencia - :Cantidad) AS dCantidadAInstalar FROM insumos WHERE sIdInsumo = :Insumo AND sContrato = :Contrato');
                Connection.QryBusca2.Params.ParamByName('Contrato').AsString   :=  Global_Contrato;
                Connection.QryBusca2.Params.ParamByName('Cantidad').AsFloat    :=  CantidadAcumulada; //BitacoradeMateriales.FieldByName('dCantidad').AsFloat;
                Connection.QryBusca2.Params.ParamByName('Insumo').AsString     :=  Connection.QryBusca.FieldByName('sIdMaterial').AsString;
                Connection.QryBusca2.Open;

                if Connection.QryBusca2.RecordCount > 0 then begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Text := 'UPDATE insumos SET dExistencia = :Existencia WHERE sIdInsumo = :Insumo AND sContrato = :Contrato';
                  connection.zCommand.Params.ParamByName('Existencia').AsFloat := Connection.QryBusca2.FieldByName('dCantidadAInstalar').AsFloat;
                  connection.zCommand.Params.ParamByName('Insumo').AsString := Connection.QryBusca.FieldByName('sIdMaterial').AsString;
                  connection.zCommand.Params.ParamByName('Contrato').AsString := Global_Contrato;
                  connection.zCommand.ExecSQL;
  //                BitacoraDeMateriales.FieldByName('dCantidad_AInstalar').AsFloat := Connection.QryBusca2.FieldByName('dCantidadAInstalar').AsFloat;
                end;

                Connection.QryBusca.Next;
              end;}
              { Termina actualización de cantidad de insumos}

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
              connection.zCommand.Params.ParamByName('Descripcion').Value := 'Validación del Reporte Diario No. [' + FieldValues['sNumeroReporte'] + ']. VALIDA ' + global_valida;
              connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
              connection.zCommand.Params.ParamByName('Origen').Value := 'Reporte Diario';
              connection.zCommand.ExecSQL();
            end
            else
            begin
              MessageDlg('El Reporte Diario [' + FieldValues['sNumeroReporte'] + '] se encuentra en estado de Validado', mtInformation, [mbOk], 0);
              ReporteDiario.Active := False;
              ReporteDiario.Open;
              Grid_reportes.UnselectAll;
              Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
          end;
        if lRecordChange then
        begin
          ReporteDiario.Active := False;
          ReporteDiario.Open;
          try
            Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
          end;
          MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
        end
      end
    end
    else
    begin
      if Estimaciones.RecordCount > 0 then
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
        MessageDlg('Seleccione por lo menos un generador', mtInformation, [mbOk], 0);

      if lPoder then
      begin
            //Se checa si es una obra optativa y validar los reportes sin entrar a las obras programadas....
        if (Global_Optativa <> 'PROGRAMADA') or ((Global_Optativa = 'PROGRAMADA') and (Connection.Configuracion.FieldValues['sAnexos'] = 'Si')) then
        begin
          SavePlace := Grid_Generadores.DataSource.DataSet.GetBookmark;
          with ds_Estimaciones.DataSet do
          begin
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update estimaciones SET lStatus = :Status , dFinancieroGenerador = :Avance, ' +
              'dMontoMN = :MontoMN, dMontoDLL = :MontoDLL, sIdUsuarioValida = :Valida ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And iNumeroEstimacion = :Estimacion And sNumeroGenerador = :Generador');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
            connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
            connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString;
            connection.zCommand.Params.ParamByName('Estimacion').Value := FieldValues['iNumeroEstimacion'];
            connection.zCommand.Params.ParamByName('Generador').DataType := ftString;
            connection.zCommand.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'];
            connection.zCommand.Params.ParamByName('Status').DataType := ftString;
            connection.zCommand.Params.ParamByName('Status').Value := 'Validado';
            connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('Avance').Value := dFinancieroGenerador;
            connection.zCommand.Params.ParamByName('MontoMN').DataType := ftCurrency;
            connection.zCommand.Params.ParamByName('MontoMN').Value := dMontoMN;
            connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftCurrency;
            connection.zCommand.Params.ParamByName('MontoDLL').Value := dMontoDLL;
            connection.zCommand.Params.ParamByName('Valida').DataType := ftString;
            connection.zCommand.Params.ParamByName('Valida').Value := global_valida;
            connection.zCommand.ExecSQL();

                 // Actualizo Kardex del Sistema ....
                 //Sleep(iPausa) ;
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
            connection.zCommand.Params.ParamByName('Descripcion').Value := 'Validación del Generador No. [' + FieldValues['sNumeroGenerador'] + '] de la Orden [' + FieldValues['sNumeroOrden'] + ']. VALIDA ' + global_valida;
            connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
            connection.zCommand.Params.ParamByName('Origen').Value := 'Generadores';
            connection.zCommand.ExecSQL();

            Estimaciones.Active := False;
            Estimaciones.Open;
            try
              Grid_Generadores.DataSource.DataSet.GotoBookmark(SavePlace);
            except
            else
              Grid_Generadores.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end;
        end;
            //termino solo de validar generador obra optativa.. o en raros casos programadas con Muestra Anexo = Si

            //Inicia validar programadas.. (no se movio nada)
        if ((Global_Optativa = 'PROGRAMADA') and (Connection.Configuracion.FieldValues['sAnexos'] = 'No')) then
        begin
                 // Verificar que no exista ningun generador inferior al que se quiere validar que este en status de pendiente ....
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select count(sContrato) as iGeneradoresSinValid from estimaciones where sContrato = :contrato and iConsecutivo < :Consecutivo and lStatus = "Pendiente"');
          connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
          connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
          connection.QryBusca.Params.ParamByName('consecutivo').DataType := ftInteger;
          connection.QryBusca.Params.ParamByName('consecutivo').Value := Estimaciones.FieldValues['iConsecutivo'];
          connection.QryBusca.Open;
          if connection.QryBusca.fieldvalues['iGeneradoresSinValid'] > 0 then
            MessageDlg('Existen un total de ' + IntToStr(connection.QryBusca.FieldValues['iGeneradoresSinValid']) +
              ' generador(es) pendientes de validar inferiores al generador actual, valide todos los generadores anteriores antes de poder validar el generador actual.', mtInformation, [mbOk], 0)
          else
          begin
            QryReporteNoValidado := tZReadOnlyquery.Create(Self);
            QryReporteNoValidado.Connection := connection.ConnTrx;
            QryReporteNoValidado.SQL.Clear;
            QryReporteNoValidado.SQL.Add('select count(sNumeroReporte) as iReportesSinValid from reportediario where sContrato = :contrato and  sNumeroOrden =:orden and ' +
              'dIdFecha >= :fechai and dIdFecha <= :fechaf  and lStatus = :status');
            QryReporteNoValidado.Active := False;
            QryReporteNoValidado.Params.ParamByName('Contrato').DataType := ftString;
            QryReporteNoValidado.Params.ParamByName('Contrato').Value := global_contrato;
            QryReporteNoValidado.Params.ParamByName('orden').DataType := ftString;
            QryReporteNoValidado.Params.ParamByName('orden').Value := Estimaciones.FieldValues['sNumeroOrden'];
            QryReporteNoValidado.Params.ParamByName('fechai').DataType := ftDate;
            QryReporteNoValidado.Params.ParamByName('fechai').Value := Estimaciones.FieldValues['dFechaInicio'];
            QryReporteNoValidado.Params.ParamByName('fechaf').DataType := ftDate;
            QryReporteNoValidado.Params.ParamByName('fechaf').Value := Estimaciones.FieldValues['dFechaFinal'];
            QryReporteNoValidado.Params.ParamByName('Status').DataType := ftString;
            QryReporteNoValidado.Params.ParamByName('Status').Value := 'Pendiente';
            QryReporteNoValidado.Open;
            if QryReporteNoValidado.fieldvalues['iReportesSinValid'] > 0 then
              MessageDlg('En el periodo de generacion se encuentran un total de : ' + IntToStr(QryReporteNoValidado.FieldValues['iReportesSinValid']) + ' reportes diarios sin autorizar, autorize los reportes diarios para poder ejecutar esta opcion.', mtInformation, [mbOk], 0)
            else
            begin
              SavePlace := Grid_Generadores.DataSource.DataSet.GetBookmark;
              with ds_Estimaciones.DataSet do
              begin
                lPoder := False;
                if FieldValues['lStatus'] = 'Pendiente' then
                  lPoder := True
                else
                  lPoder := False;

                if (lPoder) and (Global_Optativa = 'PROGRAMADA') then
                begin
                            // Proceso que valida que todas las partidas generadas se encuentren amparadas en reportes diarios....
                  connection.QryBusca.Active := False;
                  connection.QryBusca.SQL.Clear;
                  connection.QryBusca.SQL.Add('Select sIsometrico, sPrefijo, sNumeroActividad, sWbs, dCantidad, sIsometricoReferencia,  ' +
                    'sInstalacion, iOrdenCambio, mComentarios from estimacionxpartida ' +
                    'where sContrato = :Contrato and sNumeroOrden = :Orden And sNumeroGenerador = :Generador Order By sNumeroActividad, sWbs');
                  connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
                  connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                  connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
                  connection.QryBusca.Params.ParamByName('orden').Value := FieldValues['sNumeroOrden'];
                  connection.QryBusca.Params.ParamByName('generador').DataType := ftString;
                  connection.QryBusca.Params.ParamByName('generador').Value := FieldValues['sNumeroGenerador'];
                  connection.QryBusca.Open;
                  sPartida := '';
                  while not connection.QryBusca.Eof and lPoder do
                  begin
                                // Generacion Automatica de Generadores de Obra Adicionales ......
                    lPoder := True;
                    if connection.configuracion.FieldValues['sTipoGeneracion'] = 'Generación Independiente' then
                    begin
                      if sPartida <> Connection.QryBusca.FieldValues['sNumeroActividad'] then
                      begin
                        sPartida := Connection.QryBusca.FieldValues['sNumeroActividad'];
                        Connection.QryBusca2.Active := False;
                        Connection.QryBusca2.SQL.Clear;
                        Connection.QryBusca2.SQL.Add('select dCantidadAnexo, lExtraordinario from actividadesxanexo Where sContrato = :contrato and ' +
                          'sIdConvenio = :Convenio and sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
                        Connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
                        Connection.QryBusca2.Params.ParamByName('contrato').Value := global_contrato;
                        Connection.QryBusca2.Params.ParamByName('convenio').DataType := ftString;
                        if connection.configuracion.FieldValues['sBaseGeneracion'] = 'Contrato Original' then
                          Connection.QryBusca2.Params.ParamByName('convenio').Value := ''
                        else
                          Connection.QryBusca2.Params.ParamByName('convenio').Value := global_convenio;
                        Connection.QryBusca2.Params.ParamByName('actividad').DataType := ftString;
                        Connection.QryBusca2.Params.ParamByName('actividad').Value := connection.QryBusca.FieldValues['sNumeroActividad'];
                        Connection.QryBusca2.Open;
                        if Connection.QryBusca2.RecordCount > 0 then
                        begin
                          dPartidaAnexo := Connection.QryBusca2.FieldValues['dCantidadAnexo'];
                          if connection.QryBusca2.FieldValues['lExtraordinario'] = 'Si' then
                            sPrefijo := '-E'
                          else
                            sPrefijo := '-A'
                        end
                        else
                        begin
                          dPartidaAnexo := 0;
                          sPrefijo := 'E';
                        end;
                        dPartidaGenerado := dfnGeneradoAnterior(global_contrato, connection.QryBusca.FieldValues['sNumeroActividad'], FieldValues['iConsecutivo'], frmValida);
                      end;
                                     // Detecto que la partida es adicional, ahora hay que determinar que tipo de adicional es ...
                                     // Si el acumulado anterior > es superior a la cantidad anexo entonces tipo es "A" solo debo verificar que tenga orden de cambio y despues registra
                                     // si el acumulado anterior es igual a la cantidad anexo entonces el tipo es "A" solo debo verificar que tenga orden de cambio y despues registra
                      if ((dPartidaGenerado + connection.QryBusca.FieldValues['dCantidad']) > dPartidaAnexo) then
                        if (Pos('A', FieldValues['sNumeroGenerador']) = 0) and (Pos('E', FieldValues['sNumeroGenerador']) = 0) then
                        begin
                                             // Si el acumulado anterior es inferior a la cantidad anexo pero el acumulado actual es superior a la cantidad anexo. entonces
                          if dPartidaGenerado >= dPartidaAnexo then
                          begin
                            dCantidad := 0;
                            dCantidadAdicional := connection.QryBusca.FieldValues['dCantidad']
                          end
                          else
                          begin
                            dCantidad := dPartidaAnexo - dPartidaGenerado;
                            dCantidadAdicional := connection.QryBusca.FieldValues['dCantidad'] - dCantidad;
                          end;
                                             // 1. actualizo el registro actual a la cantidad necesaria para cubrir el anexo
                          connection.zCommand.Active := False;
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('update estimacionxpartida SET dCantidad = :Cantidad ' +
                            'Where sContrato = :Contrato and sNumeroOrden = :Orden and ' +
                            'sNumeroGenerador = :Generador and sWbs = :Wbs and sNumeroActividad = :Actividad And ' +
                            'sIsometrico = :Isometrico and sPrefijo = :Prefijo');
                          connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                          connection.zCommand.Params.ParamByName('contrato').Value := global_contrato;
                          connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                          connection.zCommand.Params.ParamByName('orden').Value := FieldValues['sNumeroOrden'];
                          connection.zCommand.Params.ParamByName('generador').DataType := ftString;
                          connection.zCommand.Params.ParamByName('generador').Value := FieldValues['sNumeroGenerador'];
                          connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                          connection.zCommand.Params.ParamByName('wbs').Value := connection.QryBusca.FieldValues['sWbs'];
                          connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                          connection.zCommand.Params.ParamByName('actividad').Value := connection.QryBusca.FieldValues['sNumeroActividad'];
                          connection.zCommand.Params.ParamByName('isometrico').DataType := ftString;
                          connection.zCommand.Params.ParamByName('isometrico').Value := connection.QryBusca.FieldValues['sIsometrico'];
                          connection.zCommand.Params.ParamByName('prefijo').DataType := ftString;
                          connection.zCommand.Params.ParamByName('prefijo').Value := connection.QryBusca.FieldValues['sPrefijo'];
                          connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                          connection.zCommand.Params.ParamByName('cantidad').Value := dCantidad;
                          connection.zCommand.ExecSQL;

                          if dCantidadAdicional > 0 then
                          begin
                                                 // 2. Verifico si existe un generador Generador-Prefijo  ...
                            connection.QryBusca2.Active := False;
                            connection.QryBusca2.SQL.Clear;
                            connection.QryBusca2.SQL.Add('select sContrato from estimaciones where sContrato = :Contrato and ' +
                              'sNumeroOrden = :Orden and sNumeroGenerador = :Generador');
                            connection.QryBusca2.Params.ParamByName('contrato').DataType := ftString;
                            connection.QryBusca2.Params.ParamByName('contrato').Value := global_contrato;
                            connection.QryBusca2.Params.ParamByName('orden').DataType := ftString;
                            connection.QryBusca2.Params.ParamByName('orden').Value := fieldvalues['sNumeroOrden'];
                            connection.QryBusca2.Params.ParamByName('generador').DataType := ftString;
                            connection.QryBusca2.Params.ParamByName('generador').Value := fieldvalues['sNumeroGenerador'] + sPrefijo;
                            connection.QryBusca2.Open;
                            if connection.QryBusca2.recordcount = 0 then
                            begin
                                                      // ItemOrden Maximo de generadores .....
                              Connection.QryBusca2.Active := False;
                              Connection.QryBusca2.SQL.Clear;
                              Connection.QryBusca2.SQL.Add('Select Max(iConsecutivo) as iConsecutivo From estimaciones Where sContrato = :Contrato Group By sContrato');
                              Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
                              Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
                              Connection.QryBusca2.Open;
                              if Connection.QryBusca2.RecordCount > 0 then
                                iConsecutivo := Connection.QryBusca2.FieldValues['iConsecutivo'] + 1
                              else
                                iConsecutivo := 1;

                              connection.zCommand.Active := False;
                              connection.zCommand.SQL.Clear;
                              connection.zCommand.SQL.Add(funcsql(Estimaciones, 'estimaciones'));
                              for registro := 0 to fieldcount - 1 do
                              begin
                                sparametro := 'param' + trim(inttostr(registro + 1));
                                connection.zCommand.Params.parambyname(sparametro).datatype := fields[registro].datatype;
                                if fields[registro].DisplayName = 'sNumeroGenerador' then
                                  connection.zCommand.Params.parambyname(sparametro).value := fieldvalues['sNumeroGenerador'] + sPrefijo
                                else
                                  if fields[registro].DisplayName = 'iConsecutivo' then
                                    connection.zCommand.Params.parambyname(sparametro).value := iConsecutivo
                                  else
                                    connection.zCommand.Params.parambyname(sparametro).value := fields[registro].value;
                              end;
                              connection.zCommand.ExecSQL;
                            end;

                                                  // Ahora se insertan las partidas adicionales ....

                            connection.zCommand.Active := False;
                            connection.zCommand.SQL.Clear;
                            connection.zCommand.SQL.Add('INSERT INTO estimacionxpartida ( sContrato , sNumeroOrden, sNumeroGenerador, ' +
                              'sWbs, sNumeroActividad, sIsometrico, sPrefijo, dCantidad, dAcumulado, iOrdenCambio, sIsometricoReferencia, sInstalacion, mComentarios, lEstima ) ' +
                              'VALUES (:Contrato, :Orden, :Generador, :wbs, :Actividad, :Isometrico, :Prefijo, :Cantidad, :Acumulado, :OrdenCambio, :Referencia, :Instalacion, :Comentarios, :Genera )');
                            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Contrato').value := fieldvalues['sContrato'];
                            connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Orden').value := fieldvalues['sNumeroOrden'];
                            connection.zCommand.Params.ParamByName('Generador').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Generador').value := fieldvalues['sNumeroGenerador'] + sPrefijo;
                            connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                            connection.zCommand.Params.ParamByName('wbs').value := connection.QryBusca.fieldvalues['sWbs'];
                            connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Actividad').value := connection.QryBusca.fieldvalues['sNumeroActividad'];
                            connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Isometrico').value := connection.QryBusca.fieldvalues['sIsometrico'] + sPrefijo;
                            connection.zCommand.Params.ParamByName('Prefijo').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Prefijo').value := connection.QryBusca.fieldvalues['sPrefijo'];
                            connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                            connection.zCommand.Params.ParamByName('Cantidad').value := dCantidadAdicional;
                            connection.zCommand.Params.ParamByName('Acumulado').DataType := ftFloat;
                            connection.zCommand.Params.ParamByName('Acumulado').value := 0;
                            connection.zCommand.Params.ParamByName('OrdenCambio').DataType := ftInteger;
                            connection.zCommand.Params.ParamByName('OrdenCambio').value := 0;
                            connection.zCommand.Params.ParamByName('Referencia').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Referencia').value := connection.QryBusca.fieldvalues['sIsometricoReferencia'];
                            connection.zCommand.Params.ParamByName('Instalacion').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Instalacion').value := connection.QryBusca.fieldvalues['sInstalacion'];
                            connection.zCommand.Params.ParamByName('Comentarios').DataType := ftMemo;
                            connection.zCommand.Params.ParamByName('Comentarios').value := connection.QryBusca.fieldvalues['sWbs'] + chr(13) + 'Partida Generada Automaticamente';
                            connection.zCommand.Params.ParamByName('Genera').DataType := ftString;
                            connection.zCommand.Params.ParamByName('Genera').value := 'Si';
                            connection.zCommand.ExecSQL;
                                                  // Termino de insertar la partida adicional
                          end;
                          dPartidaGenerado := dPartidaGenerado + connection.QryBusca.FieldValues['dCantidad']
                        end
                        else
                        begin
                          if Connection.QryBusca.FieldValues['iOrdenCambio'] = 0 then
                          begin
                            if connection.configuracion.FieldValues['sBaseGeneracion'] = 'Contrato Original' then
                              MessageDlg('La configuracion del sistema indica la emision de generadores de obra independientes, ' +
                                'usted debera separar los Generadores de Obra segun la volumetria, si esta excede a la Cantidad ' +
                                'por Ejecutar segun el Contrato Original, toda el volumen excedente debera capturarse en un Generador Adicional ' + FieldValues['sNumeroGenerador'] + '-A,  ' +
                                'y adicionar una orden de cambio que ampare la realizacion de la volumentria adicional o extraordinaria al Contrato Original.' + chr(13) +
                                'Concepto Excedido ..: ' + connection.QryBusca.FieldValues['sNumeroActividad'] + '.', mtWarning, [mbOk], 0)
                            else
                              MessageDlg('La configuracion del sistema indica la emision de generadores de obra independientes, ' +
                                'usted debera separar los Generadores de Obra segun la volumetria, si esta excede a la Cantidad ' +
                                'por Ejecutar segun el Convenio Actual, toda el volumen excedente debera capturarse en un Generador Adicional ' + FieldValues['sNumeroGenerador'] + '-A,  ' +
                                'y adicionar una orden de cambio que ampare la realizacion de la volumentria adicional o extraordinaria al Convenio Actual.' + chr(13) +
                                'Concepto Excedido ..: ' + connection.QryBusca.FieldValues['sNumeroActividad'] + '.', mtWarning, [mbOk], 0);

                            lPoder := False
                          end;
                          dPartidaGenerado := dPartidaGenerado + connection.QryBusca.FieldValues['dCantidad']
                        end
                    end;
                    if lPoder then
                    begin
                                    // Checo partida por partida, si el acumulado es superior a la cantidad anexo, entonces creo automaticamente un generador adicional ...
                                    // iResp = 21  Que continue en el ciclo hasta que sea diferente de 21
                                    // iResp = 0   El usuario no desea generar la partida ...
                                    // iResp = 1   El usuario puede generar la partida
                                    // iResp = 13  El usuario no puede generar la partida pero quiere reportarla para poder generarla ...

                      iResp := 21;
                      lPoder := False;
                      while iResp = 21 do
                      begin
                        iResp := lVerificaGenerador(global_contrato, global_convenio, FieldValues['sNumeroOrden'], '',
                          connection.QryBusca.FieldValues['sNumeroActividad'], connection.QryBusca.FieldValues['sWbs'], FieldValues['dFechaFinal'],
                          FieldValues['iConsecutivo'], 0, frmValida);
                        if iResp = 1 then
                          lPoder := True
                        else
                          if iResp = 0 then
                            lPoder := False
                          else
                            if iResp = 13 then
                            begin
                                                     // 1. Detectar que exista un reporte diario sin validar en una fecha inferior al dia final del generador y que este dentro del convenio vigente ...
                                                     // 2. Detectar si la partida tiene alcances, si es con alcances bitacora de alcances, si no bitacora de actividades ...
                              connection.QryBusca.Active := False;
                              connection.QryBusca.SQL.Clear;
                              connection.QryBusca.SQL.Add('Select r.dIdFecha, r.sNumeroOrden, r.sIdTurno, r.sIdConvenio from reportediario r ' +
                                'inner join turnos t on (r.sContrato = t.sContrato and r.sIdTurno = t.sIdTurno and t.sOrigenTierra = "No") ' +
                                'Where r.sContrato = :contrato and r.sNumeroOrden = :Orden and ' +
                                'r.lStatus = "Pendiente" and r.dIdFecha <= :Fecha and r.sIdConvenio = :Convenio order by r.dIdFecha DESC');
                              connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
                              connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                              connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
                              connection.QryBusca.Params.ParamByName('orden').Value := FieldValues['sNumeroOrden'];
                              connection.QryBusca.Params.ParamByName('convenio').DataType := ftString;
                              connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio;
                              connection.QryBusca.Params.ParamByName('fecha').DataType := ftDate;
                              connection.QryBusca.Params.ParamByName('fecha').Value := Estimaciones.FieldValues['dFechaFinal'];
                              connection.QryBusca.Open;
                              if connection.QryBusca.RecordCount = 0 then
                              begin
                                                          // No existe ningun reporte diario en status pendiente, se cancela la operacion ...
                                MessageDlg('No se puede realizar la captura del volumen pendiente debido a que no existe ningun reporte diario ' +
                                  'en status de PENDIENTE perteneciente al convenio/acta vigente con fecha menor o igual a la fecha de ' +
                                  'termino de generacion.', mtWarning, [mbOk], 0);
                                iResp := 0;
                              end
                              else
                              begin
                                global_fecha := connection.QryBusca.FieldValues['dIdFecha'];
                                global_orden := connection.QryBusca.FieldValues['sNumeroOrden'];
                                global_turno_reporte := connection.QryBusca.FieldValues['sIdTurno'];
                                convenio_reporte := connection.QryBusca.FieldValues['sIdConvenio'];
                                connection.QryBusca.Active := False;
                                connection.QryBusca.SQL.Clear;
                                connection.QryBusca.SQL.Add('Select sContrato from alcancesxactividad ' +
                                  'Where sContrato = :contrato and sNumeroActividad = :Actividad');
                                connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
                                connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
                                connection.QryBusca.Params.ParamByName('actividad').DataType := ftString;
                                connection.QryBusca.Params.ParamByName('actividad').Value := connection.QryBusca.FieldValues['sNumeroActividad'];
                                connection.QryBusca.Open;
                                if connection.QryBusca.RecordCount > 0 then
                                  frmBitacoraxAlcance.showModal
                                else
                                  frmBitacoraDepartamental_2.showmodal;
                                iResp := 21;
                              end;
                            end;
                      end
                    end;
                    connection.QryBusca.Next;
                  end;
                end;

                if lPoder then
                begin
                  lRecordChange := True;
                            // Cierro el Generador ....
                  Connection.qryBusca.Active := False;
                  Connection.qryBusca.SQL.Clear;
                  Connection.qryBusca.SQL.Add('Select Sum(g.dCantidad * a.dVentaMN) as dMontoMN, Sum(g.dCantidad * a.dVentaDLL) as dMontoDLL From estimacionxpartida g ' +
                    'INNER JOIN actividadesxanexo a ON (g.sContrato = a.sContrato And a.sIdConvenio = :Convenio And g.sNumeroActividad = a.sNumeroActividad and a.sTipoActividad = "Actividad") ' +
                    'Where g.sContrato = :Contrato And g.sNumeroOrden = :Orden And g.sNumeroGenerador = :Generador And g.lEstima = "Si" ' +
                    'Group By g.sContrato, g.sNumeroOrden');
                  Connection.qryBusca.Active := False;
                  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                  connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
                  connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
                  connection.qryBusca.Params.ParamByName('Convenio').Value := Global_Convenio;
                  connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
                  connection.qryBusca.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                  connection.qryBusca.Params.ParamByName('Generador').DataType := ftString;
                  connection.qryBusca.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'];
                  Connection.qryBusca.Open;

                  dFinancieroGenerador := 0;
                  dMontoMN := 0;
                  dMontoDLL := 0;
                  if Connection.qryBusca.RecordCount > 0 then
                  begin
                    dMontoMN := Connection.qryBusca.FieldValues['dMontoMN'];
                    dMontoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];
                  end;

                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('Update estimaciones SET lStatus = :Status , dFinancieroGenerador = :Avance, ' +
                    'dMontoMN = :MontoMN, dMontoDLL = :MontoDLL, sIdUsuarioValida = :Valida ' +
                    'Where sContrato = :Contrato And sNumeroOrden = :Orden And iNumeroEstimacion = :Estimacion And sNumeroGenerador = :Generador');
                  connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
                  connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Orden').Value := FieldValues['sNumeroOrden'];
                  connection.zCommand.Params.ParamByName('Estimacion').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Estimacion').Value := FieldValues['iNumeroEstimacion'];
                  connection.zCommand.Params.ParamByName('Generador').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Generador').Value := FieldValues['sNumeroGenerador'];
                  connection.zCommand.Params.ParamByName('Status').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Status').Value := 'Validado';
                  connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                  connection.zCommand.Params.ParamByName('Avance').Value := dFinancieroGenerador;
                  connection.zCommand.Params.ParamByName('MontoMN').DataType := ftCurrency;
                  connection.zCommand.Params.ParamByName('MontoMN').Value := dMontoMN;
                  connection.zCommand.Params.ParamByName('MontoDLL').DataType := ftCurrency;
                  connection.zCommand.Params.ParamByName('MontoDLL').Value := dMontoDLL;
                  connection.zCommand.Params.ParamByName('Valida').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Valida').Value := global_valida;
                  connection.zCommand.ExecSQL();

                            // Actualizo Kardex del Sistema ....
                            //Sleep(iPausa) ;
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
                  connection.zCommand.Params.ParamByName('Descripcion').Value := 'Validación del Generador No. [' + FieldValues['sNumeroGenerador'] + '] de la Orden [' + FieldValues['sNumeroOrden'] + ']. VALIDA ' + global_valida;
                  connection.zCommand.Params.ParamByName('Origen').DataType := ftString;
                  connection.zCommand.Params.ParamByName('Origen').Value := 'Generadores';
                  connection.zCommand.ExecSQL();

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
              end
            end;
            QryReporteNoValidado.Destroy
          end
        end
      end
    end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Valida Reportes Diarios/Generadores', 'Al validar reportes', 0);
    end;
  end;
end;


procedure TfrmValida.FormShow(Sender: TObject);
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

  frmSeguridad.tsIdUsuarioValida.Text := '';
  frmSeguridad.tsPasswordValida.Text := '';

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
    OrdenesdeTrabajo.Params.ParamByName('orden').DataType := ftString;
    OrdenesdeTrabajo.Params.ParamByName('orden').Value := global_orden_general;
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
      OrdenesdeTrabajo.SQL.Add('Select  ot.iJornada, ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
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

    //Progress.Visible := False;
     { Grid_Reportes.SetFocus  }
  end
 { Else
      tsNumeroOrden.SetFocus  }
end;

procedure TfrmValida.tsNumeroOrdenExit(Sender: TObject);
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

  Progress.Visible := False;
end;

procedure TfrmValida.tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if pgValidacion.ActivePageIndex = 0 then
      Grid_Reportes.SetFocus
    else
      Grid_Generadores.SetFocus
end;

procedure TfrmValida.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmValida.btnAutorizaClick(Sender: TObject);
var
  lPoder, lFilaGrid: Boolean;
  iGrid: Integer;
  SavePlace: TBookmark;
  IdCuenta: Integer;
  dExistenciasAnteriores: Double;
  dExistenciasActuales: Double;

  dMontoGeneradoMN, dMontoGeneradoDLL,
    dMontoEstimacionMN, dMontoEstimacionDLL: currency;
  dMontoEstimacionAcumMN, dMontoEstimacionAcumDLL: currency;
  QryBusca, QryBusca2: TZQuery;
  sFolio,
  Mensaje:sTring;

  procedure procDelInsAvEmbarque(sParamContrato, sParamOrden, sParamTurno: string; dParamFecha: tDate);
  var

    sTexto: string;
    iDiario: Integer;
    StringList,
      StringListxOrden: TStrings;
    MaximoDiario: tzReadOnlyQuery;
  begin
    try
      MaximoDiario := tzReadOnlyQuery.Create(self);
      MaximoDiario.Connection := connection.ConnTrx;
      MaximoDiario.SQL.Clear;
      MaximoDiario.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades ' +
        'where sContrato = :contrato and dIdFecha = :fecha  Group By sContrato');

      // Borramos todas las notas producto de los Avisos de Embarque
      connection.CommandTrx.Active := False;
      connection.CommandTrx.SQL.Clear;
      connection.CommandTrx.SQL.Add('Delete From bitacoradeactividades Where sContrato = :Contrato And sIdTurno = :Turno And dIdFecha = :Fecha And sIdTipoMovimiento = "AE" ');
      connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
      connection.CommandTrx.Params.ParamByName('Contrato').Value := sParamContrato;
      connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
      connection.CommandTrx.Params.ParamByName('Turno').Value := sParamTurno;
      connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
      connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
      connection.CommandTrx.ExecSQL();

      StringList := TStringList.Create;
      StringListxOrden := TStringList.Create;
      StringList.Clear;
      StringList.Add('');

      qryBusca.Active := False;
      qryBusca.SQL.Clear;
      qryBusca.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
      qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
      qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
      qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
      qryBusca.Params.ParamByName('Orden').DataType := ftString;
      qryBusca.Params.ParamByName('Orden').Value := 'CONTRATO NO. ' + sParamContrato;
      qryBusca.Open;
      if qryBusca.RecordCount > 0 then
      begin
        if global_title_embarque = '' then
        begin
          if Connection.qryBusca.RecordCount > 1 then
            StringList.Add('CON ESTA FECHA SE VERIFICAN Y VALIDAN LAS LISTAS DE VERIFICACIÓN DE LOS SIGUIENTES AVISOS DE EMBARQUE.')
          else
            StringList.Add('CON ESTA FECHA SE VERIFICA Y VALIDA LA LISTA DE VERIFICACIÓN DEL SIGUIENTE AVISO DE EMBARQUE.');
          StringList.Add('  #         AVISO DE EMB.                           FECHA DE RECEPCIÓN');
        end
        else
        begin
          StringList.Add(global_title_embarque);
          StringList.Add('  #         No. DE ENTRADA                          FECHA DE RECEPCIÓN');
        end;

        while not qryBusca.Eof do
        begin
          sTexto := '                                                             ';
          sTexto := StuffString(sTexto, 2, 5, qryBusca.fieldByName('iFolio').AsString);
          sTexto := StuffString(sTexto, 12, 15, qryBusca.FieldValues['sReferencia']);
          sTexto := StuffString(sTexto, 58, 10, qryBusca.fieldByName('dFechaAviso').AsString);
          StringList.Add(sTexto);
          qryBusca.Next;
        end;

        qryBusca.Active := False;
        qryBusca.SQL.Clear;
        qryBusca.SQL.Add('Select sNumeroOrden From ordenesdetrabajo Where sContrato = :Contrato And cIdStatus  = :Status');
        qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
        qryBusca.Params.ParamByName('status').DataType := ftString;
        qryBusca.Params.ParamByName('status').Value := connection.configuracion.FieldValues['cStatusProceso'];
        qryBusca.Open;
        while not qryBusca.Eof do
        begin
          qryBusca2.Active := False;
          qryBusca2.SQL.Clear;
          qryBusca2.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
          qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
          qryBusca2.Params.ParamByName('Contrato').Value := sParamContrato;
          qryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
          qryBusca2.Params.ParamByName('Fecha').Value := dParamFecha;
          qryBusca2.Params.ParamByName('Orden').DataType := ftString;
          qryBusca2.Params.ParamByName('Orden').Value := qryBusca.FieldValues['sNumeroOrden'];
          qryBusca2.Open;
          StringListxOrden.Clear;
          while not qryBusca2.Eof do
          begin
            sTexto := '                                                             ';
            sTexto := StuffString(sTexto, 2, 5, qryBusca2.fieldByName('iFolio').AsString);
            sTexto := StuffString(sTexto, 12, 15, qryBusca2.FieldValues['sReferencia']);
            sTexto := StuffString(sTexto, 58, 10, qryBusca2.fieldByName('dFechaAviso').AsString);
            StringListxOrden.Add(sTexto);
            qryBusca2.Next;
          end;
          StringListxOrden.Add('');

          if Pos('TIERRA', sParamOrden) > 0 then
            global_inicio := global_inicio + 8000;

          MaximoDiario.Active := False;
          MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
          MaximoDiario.Params.ParamByName('Contrato').Value := sParamContrato;
          MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
          MaximoDiario.Params.ParamByName('Fecha').Value := dParamFecha;
          MaximoDiario.Open;
          if MaximoDiario.FieldByName('TotalDiario').IsNull then
            iDiario := global_inicio + 1
          else
            iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Insert Into bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sIdDepartamento, sNumeroOrden, sIdTipoMovimiento, mDescripcion)' +
            'Values (:Contrato, :Fecha, :Diario, :Turno, :Depto, :Orden, :Tipo, :Descripcion) ');
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Contrato').Value := sParamContrato;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.CommandTrx.Params.ParamByName('Diario').DataType := ftInteger;
          connection.CommandTrx.Params.ParamByName('Diario').Value := iDiario;
          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Turno').value := sParamTurno;
          connection.CommandTrx.Params.ParamByName('Depto').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Depto').Value := global_depto;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := qryBusca.FieldValues['sNumeroOrden'];
          connection.CommandTrx.Params.ParamByName('Tipo').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Tipo').Value := 'AE';
          connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftMemo;
          connection.CommandTrx.Params.ParamByName('Descripcion').Value := StringList.Text + StringListxOrden.Text;
          connection.CommandTrx.ExecSQL();

          qryBusca.Next;
        end;
      end
      else
      begin
        qryBusca.Active := False;
        qryBusca.SQL.Clear;
        qryBusca.SQL.Add('Select iFolio, sReferencia, dFechaAviso From anexo_suministro Where sContrato = :Contrato And dIdFecha = :Fecha And sNumeroOrden = :Orden Order By sReferencia');
        qryBusca.Params.ParamByName('Contrato').DataType := ftString;
        qryBusca.Params.ParamByName('Contrato').Value := sParamContrato;
        qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
        qryBusca.Params.ParamByName('Fecha').Value := dParamFecha;
        qryBusca.Params.ParamByName('Orden').DataType := ftString;
        qryBusca.Params.ParamByName('Orden').Value := sParamOrden;
        qryBusca.Open;
        if qryBusca.RecordCount > 0 then
        begin
          if global_title_embarque = '' then
          begin
            if qryBusca.RecordCount > 1 then
              StringList.Add('CON ESTA FECHA SE VERIFICAN Y VALIDAN LAS LISTAS DE VERIFICACIÓN DE LOS SIGUIENTES AVISOS DE EMBARQUE.')
            else
              StringList.Add('CON ESTA FECHA SE VERIFICA Y VALIDA LA LISTA DE VERIFICACIÓN DEL SIGUIENTE AVISO DE EMBARQUE.');
            StringList.Add('  #         AVISO DE EMB.                             FECHA DE RECEPCIÓN');
          end
          else
          begin
            StringList.Add(global_title_embarque);
            StringList.Add('  #         No. DE ENTRADA                           FECHA DE RECEPCIÓN');
          end;

          while not qryBusca.Eof do
          begin
            sTexto := '                                                             ';
            sTexto := StuffString(sTexto, 2, 5, qryBusca.fieldByName('iFolio').AsString);
            sTexto := StuffString(sTexto, 12, 15, qryBusca.FieldValues['sReferencia']);
            sTexto := StuffString(sTexto, 58, 10, qryBusca.fieldByName('dFechaAviso').AsString);
            StringList.Add(sTexto);
            qryBusca.Next;
          end;
          StringList.Add('');
          if Pos('TIERRA', sParamOrden) > 0 then
            global_inicio := global_inicio + 8000;

          MaximoDiario.Active := False;
          MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
          MaximoDiario.Params.ParamByName('Contrato').Value := sParamContrato;
          MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
          MaximoDiario.Params.ParamByName('Fecha').Value := dParamFecha;
          MaximoDiario.Open;
          if MaximoDiario.FieldByName('TotalDiario').IsNull then
            iDiario := global_inicio + 1
          else
            iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

          connection.CommandTrx.Active := False;
          connection.CommandTrx.SQL.Clear;
          connection.CommandTrx.SQL.Add('Insert Into bitacoradeactividades (sContrato, dIdFecha, iIdDiario, sIdTurno, sIdDepartamento, sNumeroOrden, sIdTipoMovimiento, mDescripcion)' +
            'Values (:Contrato, :Fecha, :Diario, :Turno, :Depto, :Orden, :Tipo, :Descripcion) ');
          connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Contrato').Value := sParamContrato;
          connection.CommandTrx.Params.ParamByName('Fecha').DataType := ftDate;
          connection.CommandTrx.Params.ParamByName('Fecha').Value := dParamFecha;
          connection.CommandTrx.Params.ParamByName('Diario').DataType := ftInteger;
          connection.CommandTrx.Params.ParamByName('Diario').Value := iDiario;
          connection.CommandTrx.Params.ParamByName('Turno').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Turno').value := sParamTurno;
          connection.CommandTrx.Params.ParamByName('Depto').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Depto').Value := global_depto;
          connection.CommandTrx.Params.ParamByName('Orden').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Orden').Value := sParamOrden;
          connection.CommandTrx.Params.ParamByName('Tipo').DataType := ftString;
          connection.CommandTrx.Params.ParamByName('Tipo').Value := 'AE';
          connection.CommandTrx.Params.ParamByName('Descripcion').DataType := ftMemo;
          connection.CommandTrx.Params.ParamByName('Descripcion').Value := StringList.Text;
          connection.CommandTrx.ExecSQL();

          qryBusca.Next;
        end
      end;
    finally
      MaximoDiario.Destroy;
    end;
  end;

begin
  try
    QryBusca := TZQuery.Create(nil);
    QryBusca.Connection := Connection.ConnTrx;

    QryBusca2 := TZQuery.Create(nil);
    QryBusca2.Connection := Connection.ConnTrx;

    try
      Connection.CommandTrx.Active := False;
      Connection.CommandTrx.SQL.Text := 'START TRANSACTION';
      Connection.CommandTrx.ExecSQL;

      {$REGION 'Autorizacion de Requisiciones..'}
      //soad -> Proceso de Autorizacion de Rquisiciones..
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
              if FieldValues['sStatus'] = 'VALIDADO' then
              begin
                lRecordChange := True;
                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('Update anexo_requisicion set sStatus ="AUTORIZADO", sAutorizo=:Usuario where sContrato =:Contrato and iFolioRequisicion =:Requisicion and sidDepartamento=:depto ');
                connection.zCommand.ParamByName('Contrato').DataType := ftString;
                connection.zCommand.ParamByName('Contrato').Value := global_contrato;
                connection.zCommand.ParamByName('Requisicion').DataType := ftInteger;
                connection.zCommand.ParamByName('Requisicion').Value := Requisicion.FieldValues['iFolioRequisicion'];
                connection.zCommand.ParamByName('Usuario').DataType := ftString;
                connection.zCommand.ParamByName('Usuario').Value := global_usuario;
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
            end;
          if lRecordChange then
          begin
            lFilaGrid := True;
            Requisicion.Active := False;
            Requisicion.Open;

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
               lFilaGrid := False;
               Grid_requisicion.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            kardex_almacen('Autorización de Requisicion No. [' + IntToStr(Requisicion.FieldValues['iFolioRequisicion']) + '].', 'Requisiciones');
            MessageDlg('-Proceso terminado con Exito.', mtInformation, [mbOk], 0);

            try
               frmRequisicionPerf.anexo_requisicion.Refresh ;
            Except
            end;

            exit;
          end;

          //Aqui actualizamos las requisiciones autorizadas en las ordenes de compra.


        end;
      end;
      {$ENDREGION}

      {$REGION 'Autorizacion de Ordenes de Compra..'}
      //soad -> Proceso de Autorizacion de Ordenes de Compra..
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
            raise Exception.Create('-Seleccione por lo menos una Orden de Compra.');

        if lPoder then
        begin
          lRecordChange := False;
          SavePlace := Grid_OrdenCompra.DataSource.DataSet.GetBookmark;
          with Grid_OrdenCompra.DataSource.DataSet do
            for iGrid := 0 to Grid_OrdenCompra.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(Grid_OrdenCompra.SelectedRows.Items[iGrid]));
              if FieldValues['sStatus'] = 'VALIDADO' then
              begin

                Mensaje := 'Al autorizar la orden de compra: ' + OrdenCompra.FieldByName( 'iFolioPedido' ).AsString + ' se marcará como entregada y ya no la podra modificar.' + #13 + #10 ;
                Mensaje := Mensaje + '¿Desea realmente autorizar esta orden de compra?.' + #13 + #10 ;

                if MessageDlg( Mensaje, mtConfirmation, [ mbYes, mbNo ], 0 ) = mrYes then
                begin

                  lRecordChange := True;
                  connection.CommandTrx.Active := False;
                  connection.CommandTrx.SQL.Clear;
                  connection.CommandTrx.SQL.Add('Update anexo_pedidos set sStatus ="AUTORIZADO", sAutorizo =:sNombre where sContrato =:Contrato and iFolioPedido =:Pedido ');
                  connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                  connection.CommandTrx.ParamByName('Contrato').Value := global_contrato;
                  connection.CommandTrx.ParamByName('Pedido').DataType := ftInteger;
                  connection.CommandTrx.ParamByName('Pedido').Value := OrdenCompra.FieldValues['iFolioPedido'];
                  connection.CommandTrx.ParamByName('sNombre').AsString := global_usuario;
                  connection.CommandTrx.ExecSQL;
                  Connection.ConnTrx.Commit;

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

                  if ( chkOrdenEntregada.Checked ) then
                  begin

                    with connection.zCommand do
                    begin
                      Active := False;
                      SQL.Text := 'update anexo_pedidos set eEntregado = "Si" '+
                                  'where sContrato = :contrato && iFolioPedido = :Pedido;';
                      ParamByName( 'contrato' ).AsString := global_contrato;
                      ParamByName( 'pedido' ).AsInteger := OrdenCompra.FieldByName( 'iFolioPedido' ).AsInteger;
                      ExecSQL;
                    end;

                    with connection.zCommand do
                    begin
                      Active := False;
                      SQL.Text := 'update anexo_requisicion set sStatus = "COMPRADO" '+
                                  'where sContrato = :contrato and FIND_IN_SET(sNumFolio,( select sFolioRequisicion from anexo_pedidos where iFolioPedido = :orden_compra ));';
                      ParamByName( 'contrato' ).AsString := global_contrato;
                      ParamByName( 'orden_compra' ).AsInteger := OrdenCompra.FieldByName( 'iFolioPedido' ).AsInteger;
                      ExecSQL;
                    end;

                  end;

                end;

              end
            end;

          if lRecordChange then
          begin
              lFilaGrid := True;
              OrdenCompra.Active:=false ;
              OrdenCompra.Open;
            try
              lFilaGrid := False;
              Grid_OrdenCompra.DataSource.DataSet.GotoBookmark(SavePlace);
            except
                Grid_OrdenCompra.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            kardex_almacen('Autorización de Orden de Compra No. [' + OrdenCompra.FieldValues['sOrdenCompra'] + '].', 'Orden de Compra');
            MessageDlg('-Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end
        end;
        Connection.ConnTrx.Commit;
        exit;
      end;
      {$ENDREGION}

      {$REGION 'Autorizacion de Recepcion de Materiales..'}
      if pgValidacion.ActivePageIndex = 5 then
      begin
        lPoder := True;

        if lPoder then
        begin
          lRecordChange := False;
          sFolio:='';
          SavePlace := Grid_RecepcionDeMateriales.DataSource.DataSet.GetBookmark;
          with Grid_RecepcionDeMateriales.DataSource.DataSet do
            for iGrid := 0 to Grid_RecepcionDeMateriales.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(Grid_RecepcionDeMateriales.SelectedRows.Items[iGrid]));
              if FieldValues['sStatus'] = 'VALIDADO' then
              begin
                if sFolio='' then
                  sFolio:=zq_recepciondemateriales.FieldValues['sFolio']
                else
                  sFolio:=sFolio +', '+ zq_recepciondemateriales.FieldValues['sFolio'] ;

                lRecordChange := True;
                zq_recepciondemateriales_detalles.Params.ParamByName('IdRecepcion').AsInteger := zq_recepciondemateriales.FieldValues['iId'];
                zq_recepciondemateriales_Detalles.Open;

                connection.zCommand.Active := False;
                connection.zCommand.SQL.Clear;
                connection.zCommand.SQL.Add('Update alm_recepciondemateriales set sStatus ="AUTORIZADO" where sContrato =:Contrato and sFolio =:sFolio ');
                connection.zCommand.ParamByName('Contrato').DataType := ftString;
                connection.zCommand.ParamByName('Contrato').Value := global_contrato;
                connection.zCommand.ParamByName('sFolio').DataType := ftString;
                connection.zCommand.ParamByName('sFolio').Value := zq_recepciondemateriales.FieldValues['sFolio'];
                connection.zCommand.ExecSQL;

              end
            end;

          if lRecordChange then
          begin
            lFilaGrid := True;
            zq_recepciondemateriales.Active:=false ;
            zq_recepciondemateriales.Open;
            try
              Grid_RecepcionDeMateriales.DataSource.DataSet.GotoBookmark(SavePlace);
            except
               lFilaGrid := False;
               Grid_RecepcionDeMateriales.DataSource.DataSet.freeBookmark(SavePlace);
            end;
            kardex_almacen('Autorización de Recepcion de Material No. [' + sFolio + '].', 'Recepcion de Materiales');
            MessageDlg('-Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end
        end;
        Connection.ConnTrx.Commit;
        exit;
      end;
      {$ENDREGION}

      {$REGION 'Autorizacion de Salida de Materiales..'}
      if pgValidacion.ActivePageIndex = 6 then
      begin
          lPoder := True;
          if lPoder then
          begin
            lRecordChange := False;
            SavePlace := grid_salidas.DataSource.DataSet.GetBookmark;
            with grid_salidas.DataSource.DataSet do
              for iGrid := 0 to grid_salidas.SelectedRows.Count - 1 do
              begin
                GotoBookmark(pointer(grid_salidas.SelectedRows.Items[iGrid]));
                if FieldValues['sEstatus'] = 'VALIDADO' then
                begin
                  lRecordChange := True;
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('Update almacen_salida set sEstatus ="AUTORIZADO" where sContrato =:Contrato and iFolioSalida =:Folio ');
                  connection.zCommand.ParamByName('Contrato').DataType := ftString;
                  connection.zCommand.ParamByName('Contrato').Value := global_contrato;
                  connection.zCommand.ParamByName('Folio').DataType := ftInteger;
                  connection.zCommand.ParamByName('Folio').Value := QrySalida.FieldValues['iFolioSalida'];
                  connection.zCommand.ExecSQL;
                end
              end;
            if lRecordChange then
            begin
              lFilaGrid := True;
              QrySalida.Refresh;
              try
                 lFilaGrid := False;
                 grid_salidas.DataSource.DataSet.GotoBookmark(SavePlace);
              except
                 grid_salidas.DataSource.DataSet.GotoBookmark(SavePlace);
              end;
              kardex_almacen('Autorización de Salida de Material No. [' + QrySalida.FieldValues['sFolioSalida'] + '].', 'Salida de Materiales');
              MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
            end
          end;
          exit;
      end;
      {$ENDREGION}

      //Validamos que la informacion correspondiente a los mails no este vacia..
      if connection.configuracion.FieldValues['lEnviaCorreo'] = 'Si' then
      begin
        try
          Connection.CommandTrx.Active := False;
          Connection.CommandTrx.SQL.Clear;
          Connection.CommandTrx.SQL.Add('select u.sDestino, g.sMail, u.sIdGrupo from usuarios u inner join grupos g on (u.sIdGrupo = g.sIdGrupo) where u.sIdUsuario =:Usuario and u.lEnviaCorreo = "Si" ');
          Connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
          Connection.CommandTrx.Params.ParamByName('Usuario').Value := global_usuario;
          Connection.CommandTrx.Open;

          if connection.CommandTrx.RecordCount > 0 then
          begin
            if connection.CommandTrx.FieldValues['sMail'] = '' then
              raise Exception.CreateFmt('- Opción [Enviar Correo] Activada.' + #10 +
                ' » No se encontró un Correo para el Grupo %s.' + #10 +
                'Favor de verificar esto.', [Connection.CommandTrx.FieldValues['sIdGrupo']]);
            if connection.CommandTrx.FieldValues['sDestino'] = '' then
              raise Exception.Create('- Opción [Enviar Correo] Activada.' + #10 +
                ' » No se encontró el Destinatario del Correo.' + #10 +
                'Favor de verificar esto.');
          end;
        finally
          Connection.CommandTrx.Close;
        end;
      end;

      {$REGION 'Autorizacion de Reportes Diarios..'}
      frmSeguridad.tsPasswordValida.Text := '';
      global_tipo_autorizacion := 'Autorización';
      lPoder := False;
      if pgValidacion.ActivePageIndex = 0 then
      begin
        if ReporteDiario.RecordCount > 0 then
          if Grid_reportes.SelectedRows.Count > 0 then
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
          else
            raise Exception.Create('-Seleccione por lo menos un reporte diario.');

        if lPoder then
        begin
          lRecordChange := False;

          SavePlace := Grid_reportes.DataSource.DataSet.GetBookmark;
          with Grid_reportes.DataSource.DataSet do
            for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
            begin
              GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
              if FieldValues['lStatus'] = 'Validado' then
              begin
                       //Aqui Inserto los Totalizados por Plataformas  de Pernoctas
                QryBusca.Active := False;
                QryBusca.SQL.Clear;
                QryBusca.SQL.Add('select bp.sTipoPernocta, bp.sIdPernocta, bp.sContrato, ba.sNumeroOrden, bp.dIdFecha, ba.iIdDiario, ' +
                  'sum(bp.dCantidad) as dCantidad from bitacoradepersonal bp ' +
                  'Inner Join bitacoradeactividades ba ' +
                  'On (bp.sContrato=ba.sContrato And bp.dIdFecha=ba.dIdFecha And bp.iIdDiario=ba.iIdDiario and ba.sIdTurno =:Turno) ' +
                  'inner join pernoctan per on (per.sIdPernocta = bp.sIdPernocta and per.sClasificacion = "FLOTEL") ' +
                  'inner join personal p on (p.sContrato = bp.sContrato and p.sIdPersonal = bp.sIdPersonal and p.lPernocta = "Si") ' +
                  'Where bp.dIdFecha=:Fecha And bp.scontrato =:Contrato ' +
                  'And sNumeroOrden =:Orden and bp.lAplicaPernocta = "Si" And bp.sDescripcion not like "%TIEMPO EXTRA%" ' +
                  'Group by bp.dIdFecha, ba.sNumeroOrden, bp.sTipoPernocta ');
                QryBusca.Params.ParamByName('Contrato').DataType := ftString;
                QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
                QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                QryBusca.Params.ParamByName('Orden').DataType := ftString;
                QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
                QryBusca.Params.ParamByName('Turno').DataType := ftString;
                QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'];
                QryBusca.Open;

                while not qryBusca.Eof do
                begin
                  Connection.CommandTrx.Active := False;
                  Connection.CommandTrx.Sql.Text := 'select * from bitacoradepernocta where sContrato = :Contrato and dIdFecha = :Fecha and sNumeroOrden = :Orden and sIdCuenta = :Cuenta';
                  Connection.CommandTrx.ParamByName('Contrato').AsString := Global_Contrato;
                  Connection.CommandTrx.ParamByName('Fecha').AsDate := ReporteDiario.FieldValues['dIdFecha'];
                  Connection.CommandTrx.ParamByName('Orden').AsString := tsNumeroOrden.KeyValue;
                  Connection.CommandTrx.ParamByName('Cuenta').AsString := QryBusca.FieldValues['sTipoPernocta'];
                  Connection.CommandTrx.Open;

                  if Connection.CommandTrx.RecordCount = 0 then
                  begin
                    Connection.CommandTrx.Active := False;
                    connection.CommandTrx.SQL.Clear;
                    connection.CommandTrx.SQL.Add(' insert into bitacoradepernocta ' +
                      ' set sContrato=:Contrato ,' +
                      ' dIdFecha     =:Fecha,' +
                      ' sNumeroOrden =:NumeroOrden,' +
                      ' sIdCuenta    =:Actividad,' +
                      ' dCantidad    =:Cantidad, ' +
                      ' iIdDiario    =:Diario ');
                    connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                    connection.CommandTrx.ParamByName('Contrato').Value := Global_Contrato;
                    connection.CommandTrx.ParamByName('Fecha').DataType := ftDate;
                    connection.CommandTrx.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                    connection.CommandTrx.ParamByName('NumeroOrden').DataType := ftString;
                    connection.CommandTrx.ParamByName('NumeroOrden').Value := tsNumeroOrden.KeyValue;
                    connection.CommandTrx.ParamByName('Actividad').DataType := ftString;
                    connection.CommandTrx.ParamByName('Actividad').Value := QryBusca.FieldValues['sTipoPernocta'];
                    connection.CommandTrx.ParamByName('Cantidad').DataType := ftFloat;
                    connection.CommandTrx.ParamByName('Cantidad').Value := QryBusca.FieldValues['dCantidad'];
                    connection.CommandTrx.ParamByName('Diario').DataType := ftInteger;
                    connection.CommandTrx.ParamByName('Diario').Value := QryBusca.FieldValues['iIdDiario'];
                    connection.CommandTrx.ExecSQL;
                  end
                  else
                  begin
                               {Sumamos las cantidades por turno,,}
                    Connection.CommandTrx.Edit;
                    Connection.CommandTrx.FieldByName('dCantidad').AsFloat := Connection.CommandTrx.FieldByName('dCantidad').AsFloat + QryBusca.FieldValues['dCantidad'];
                    Connection.CommandTrx.Post;
                  end;

                  QryBusca.Next;
                end;

                       {En esta otra parte insertamos las parnoctas asignadas directamente...}
                QryBusca.Active := False;
                QryBusca.SQL.Clear;
                QryBusca.SQL.Add('select bp.sIdCuenta, bp.sContrato, ba.sNumeroOrden, bp.dIdFecha, ba.iIdDiario, ' +
                  'sum(bp.dCantidad) as dCantidad from bitacoradepernocta_aux bp ' +
                  'Inner Join bitacoradeactividades ba ' +
                  'On (bp.sContrato=ba.sContrato And bp.dIdFecha=ba.dIdFecha And bp.iIdDiario=ba.iIdDiario and ba.sIdTurno =:Turno ) ' +
                  'Where bp.dIdFecha=:Fecha And bp.scontrato =:Contrato ' +
                  'And sNumeroOrden =:Orden Group by bp.dIdFecha, ba.sNumeroOrden, bp.sIdCuenta  ');
                QryBusca.Params.ParamByName('Contrato').DataType := ftString;
                QryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
                QryBusca.Params.ParamByName('Fecha').DataType := ftDate;
                QryBusca.Params.ParamByName('Fecha').Value := ReporteDiario.FieldValues['dIdFecha'];
                QryBusca.Params.ParamByName('Orden').DataType := ftString;
                QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
                QryBusca.Params.ParamByName('Turno').DataType := ftString;
                QryBusca.Params.ParamByName('Turno').Value := ReporteDiario.FieldValues['sIdTurno'];
                QryBusca.Open;

                if QryBusca.RecordCount > 0 then
                begin
                  while not qryBusca.Eof do
                  begin
                    try
                                 //Insertamos la pernocta en caso se que no exista en la bitacora de pernoctass..
                      connection.CommandTrx.SQL.Clear;
                      connection.CommandTrx.SQL.Add(' insert into bitacoradepernocta ' +
                        ' set sContrato=:Contrato ,' +
                        ' dIdFecha     =:Fecha,' +
                        ' sNumeroOrden =:NumeroOrden,' +
                        ' sIdCuenta    =:Actividad,' +
                        ' dCantidad    =:Cantidad, ' +
                        ' iIdDiario     =:Diario ');
                      connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                      connection.CommandTrx.ParamByName('Contrato').Value := Global_Contrato;
                      connection.CommandTrx.ParamByName('Fecha').DataType := ftDate;
                      connection.CommandTrx.ParamByName('Fecha').Value := QryBusca.FieldValues['dIdfecha'];
                      connection.CommandTrx.ParamByName('NumeroOrden').DataType := ftString;
                      connection.CommandTrx.ParamByName('NumeroOrden').Value := QryBusca.FieldValues['sNumeroOrden'];
                      connection.CommandTrx.ParamByName('Actividad').DataType := ftString;
                      connection.CommandTrx.ParamByName('Actividad').Value := QryBusca.FieldValues['sIdCuenta']; ;
                      connection.CommandTrx.ParamByName('Cantidad').DataType := ftFloat;
                      connection.CommandTrx.ParamByName('Cantidad').Value := QryBusca.FieldValues['dCantidad'];
                      connection.CommandTrx.ParamByName('Diario').DataType := ftInteger;
                      connection.CommandTrx.ParamByName('Diario').Value := QryBusca.FieldValues['iIdDiario'];
                      connection.CommandTrx.ExecSQL;
                    except
                                 //En caso contrario solo totalizamos las pernictas para el generador..
                      connection.CommandTrx.SQL.Clear;
                      connection.CommandTrx.SQL.Add(' update bitacoradepernocta set dCantidad = dCantidad + :Cantidad ' +
                        ' where sContrato =:Contrato and dIdFecha =:Fecha and sNumeroOrden =:Orden and sIdCuenta =:Cuenta ');
                      connection.CommandTrx.ParamByName('Contrato').DataType := ftString;
                      connection.CommandTrx.ParamByName('Contrato').Value := Global_Contrato;
                      connection.CommandTrx.ParamByName('Fecha').DataType := ftDate;
                      connection.CommandTrx.ParamByName('Fecha').Value := QryBusca.FieldValues['dIdfecha'];
                      connection.CommandTrx.ParamByName('Orden').DataType := ftString;
                      connection.CommandTrx.ParamByName('Orden').Value := QryBusca.FieldValues['sNumeroOrden'];
                      connection.CommandTrx.ParamByName('Cuenta').DataType := ftString;
                      connection.CommandTrx.ParamByName('Cuenta').Value := QryBusca.FieldValues['sIdCuenta'];
                      connection.CommandTrx.ParamByName('Cantidad').DataType := ftFloat;
                      connection.CommandTrx.ParamByName('Cantidad').Value := QryBusca.FieldValues['dCantidad'];
                      connection.CommandTrx.ExecSQL;
                    end;

                    QryBusca.Next
                  end;
                end;

                lRecordChange := True;
                        // Al Autorizar un reporte el sistema debera crear las notas automaticamente de los avisos de embarque recibidos ...
                procDelInsAvEmbarque(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha']);

                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Update reportediario SET lStatus = :Status , sIdUsuarioAutoriza = :Valida , sIdUsuarioResidente = :Residente ' +
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
                connection.CommandTrx.Params.ParamByName('Status').Value := 'Autorizado';
                connection.CommandTrx.Params.ParamByName('Valida').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Valida').Value := global_autoriza;
                connection.CommandTrx.Params.ParamByName('Residente').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Residente').Value := global_autoriza;
                connection.CommandTrx.ExecSQL();

                        // Actualizo Kardex del Sistema ....
                        //Sleep(iPausa) ;
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
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
                connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Autorización del Reporte Diario No. [' + FieldValues['sNumeroReporte'] + '] del dia [' + ReporteDiario.fieldByName('dIdFecha').AsString + ']. AUTORIZA ' + global_autoriza;
                connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Origen').Value := 'Reporte Diario';
                connection.CommandTrx.ExecSQL();

                        /////////// E N V I O  D E  C O R R E O S ////////////
                        //||||||||||||||||||||||||||||||||||||||||||||||||||||
                global_enviaMail := '';
                if connection.configuracion.FieldValues['lEnviaCorreo'] = 'Si' then
                begin
                  Connection.QryBusca2.Active := False;
                  Connection.QryBusca2.SQL.Clear;
                  Connection.QryBusca2.SQL.Add('select u.*, g.sMail as sMailPrincipal, g.sPassword as clave from usuarios u inner join grupos g on (u.sIdGrupo = g.sIdGrupo) where u.sIdUsuario =:Usuario and u.lEnviaCorreo = "Si" ');
                  Connection.QryBusca2.Params.ParamByName('Usuario').DataType := ftString;
                  Connection.QryBusca2.Params.ParamByName('Usuario').Value := global_usuario;
                  Connection.QryBusca2.Open;

                  if connection.QryBusca2.RecordCount > 0 then
                  begin
                    try
                      global_enviaMail := 'Si';
                                  //Se manda a imprimir el reporte diario..
                      if connection.contrato.FieldValues['sTipoObra'] = 'PROGRAMADA' then
                        procReporteDiarioCotemarProg(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sNumeroReporte'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], '', frmValida, rDiario.OnGetValue, nil)
                      else
                        if connection.contrato.FieldValues['sTipoObra'] = 'OPTATIVA' then
                          procReporteDiarioCotemarOpt(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sNumeroReporte'], FieldValues['sIdTurno'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], '', frmValida, rDiario.OnGetValue)
                        else
                          if connection.contrato.FieldValues['sTipoObra'] = 'MIXTA' then
                            procReporteDiarioCotemarMix(Self, rDiarioGetValue, nil, global_contrato, FieldValues['sNumeroOrden'], FieldValues['sNumeroReporte'], FieldValues['sIdConvenio'], FieldValues['dIdFecha'], global_turno, 'Screen')
                          else
                            if connection.contrato.FieldValues['sTipoObra'] = 'BARCO' then
                              procReporteBarco(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], FieldValues['dIdFecha'], frmDiarioTurno, rDiario.OnGetValue);
                    except
                      on e: exception do begin
                        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Valida Reportes Diarios/Generadores', 'Al imprimir reporte diario', 0);
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                raise Exception.CreateFmt('-El Reporte Diario [%s] no se encuentra en estado de Validado.', [FieldValues['sNumeroReporte']]);
                ReporteDiario.Active := False;
                ReporteDiario.Open;
                Grid_reportes.UnselectAll;
                Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
              end;
            end;
          if lRecordChange then
          begin
            global_enviaMail := '';
            ReporteDiario.Active := False;
            Reportediario.Open;
            try
              Grid_reportes.DataSource.DataSet.GotoBookmark(SavePlace);
            except

            else
              Grid_reportes.DataSource.DataSet.FreeBookmark(SavePlace);
            end;
            MessageDlg('Proceso terminado con Exito.', mtInformation, [mbOk], 0);
          end
        end
      end
      {$ENDREGION}
      else
       {$REGION 'Autorizacion de Generadores..'}
        if pgValidacion.ActivePageIndex = 1 then
        begin
          if Estimaciones.RecordCount > 0 then
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
          else
            raise Exception.Create('-Seleccione por lo menos un generador.');

          if lPoder then
          begin
            lRecordChange := False;
            SavePlace := Grid_Generadores.DataSource.DataSet.GetBookmark;
            with ds_Estimaciones.DataSet do
            begin
              if FieldValues['lStatus'] = 'Validado' then
              begin
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Update estimaciones SET lStatus = :Status, sIdUsuarioAutoriza = :Valida ' +
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
                connection.CommandTrx.Params.ParamByName('Status').Value := 'Autorizado';
                connection.CommandTrx.Params.ParamByName('Valida').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Valida').Value := global_autoriza;
                connection.CommandTrx.ExecSQL();

                        // Actualizo Kardex del Sistema ....
                        //Sleep(iPausa) ;
                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen)' +
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
                connection.CommandTrx.Params.ParamByName('Descripcion').Value := 'Autorización del Generador No. [' + FieldValues['sNumeroGenerador'] + '] de la Orden [' + FieldValues['sNumeroOrden'] + ']. AUTORIZA ' + global_autoriza;
                connection.CommandTrx.Params.ParamByName('Origen').DataType := ftString;
                connection.CommandTrx.Params.ParamByName('Origen').Value := 'Generadores';
                connection.CommandTrx.ExecSQL();

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
              else
                raise Exception.CreateFmt('-El Numero de Generador : %s se encuentra en estado de "Pendiente", es necesario validar el generador para poder autorizarlo.',
                  [FieldValues['sNumeroGenerador']]);
            end
          end
        end
        else
        begin
          if pgValidacion.ActivePageIndex = 1 then
          begin
            if EstimacionPeriodo.RecordCount > 0 then
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
            else
              raise Exception.Create('-Seleccione por lo menos un generador.');


            if lPoder then
            begin
              qryBusca.Active := False;
              qryBusca.SQL.Clear;
              qryBusca.SQL.Add('Select sContrato From estimaciones Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And lStatus <> "Autorizado" ');
              qryBusca.Params.ParamByName('Contrato').DataType := ftString;
              qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
              qryBusca.Params.ParamByName('Estimacion').DataType := ftString;
              qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
              qryBusca.Open;
              if qryBusca.RecordCount > 0 then
                raise Exception.Create('-Existen Generadores pertenecientes a la estimación en status [PENDIENTE DE APLICAR], favor de aplicar dichos generadores.')
              else
              begin
                    // Ajuste de Monto de Estimaciones ...

                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Update actividadesxestimacion SET dMontoAcumuladoAnteriorMN = (dAcumuladoAnterior * dVentaMN) , ' +
                  'dMontoAcumuladoAnteriorDLL = (dAcumuladoAnterior * dVentaDLL) , ' +
                  'dMontoMN = (dCantidad * dVentaMN) , ' +
                  'dMontoDLL = (dCantidad * dVentaDLL) ' +
                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sTipoActividad = "Actividad"');
                connection.CommandTrx.params.ParamByName('Contrato').DataType := ftString;
                connection.CommandTrx.params.ParamByName('Contrato').Value := global_contrato;
                connection.CommandTrx.params.ParamByName('Estimacion').DataType := ftString;
                connection.CommandTrx.params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                Connection.CommandTrx.ExecSQL;

                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('Update actividadesxestimacion SET dMontoAcumuladoMN = dMontoAcumuladoAnteriorMN + dMontoMN, ' +
                  'dMontoAcumuladoDLL = dMontoAcumuladoAnteriorDLL + dMontoDLL ' +
                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sTipoActividad = "Actividad"');
                connection.CommandTrx.params.ParamByName('Contrato').DataType := ftString;
                connection.CommandTrx.params.ParamByName('Contrato').Value := global_contrato;
                connection.CommandTrx.params.ParamByName('Estimacion').DataType := ftString;
                connection.CommandTrx.params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                Connection.CommandTrx.ExecSQL;

                QryBusca2.Active := False;
                QryBusca2.SQL.Clear;
                QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxestimacion ' +
                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sTipoActividad = "Paquete" Order By iNivel DESC');
                QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
                QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
                QryBusca2.Params.ParamByName('Estimacion').DataType := ftString;
                QryBusca2.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                QryBusca2.Open;
                while not QryBusca2.Eof do
                begin
                  QryBusca.Active := False;
                  QryBusca.SQL.Clear;
                  QryBusca.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN,  sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                    'sum(dMontoMN) as dMontoMN, sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                    'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sWBSAnterior = :Paquete Group By sWbsAnterior');
                  QryBusca.Params.ParamByName('Contrato').DataType := ftString;
                  QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
                  QryBusca.Params.ParamByName('Estimacion').DataType := ftString;
                  QryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                  QryBusca.Params.ParamByName('Paquete').DataType := ftString;
                  QryBusca.Params.ParamByName('Paquete').Value := QryBusca2.FieldValues['sWBS'];
                  QryBusca.Open;
                  if QryBusca.RecordCount > 0 then
                  begin
                    connection.CommandTrx.Active := False;
                    connection.CommandTrx.SQL.Clear;
                    connection.CommandTrx.SQL.Add('Update actividadesxestimacion SET dMontoAcumuladoAnteriorMN = :MontoAnteriorMN, dMontoAcumuladoAnteriorDLL= :MontoAnteriorDLL, ' +
                      'dMontoMN = :MontoMN, dMontoAcumuladoMN = :AcumuladoMN, dMontoDLL = :MontoDLL, dMontoAcumuladoDLL = :AcumuladoDLL ' +
                      'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion And sWBS = :Paquete');
                    connection.CommandTrx.params.ParamByName('Contrato').DataType := ftString;
                    connection.CommandTrx.params.ParamByName('Contrato').Value := global_contrato;
                    connection.CommandTrx.params.ParamByName('Estimacion').DataType := ftString;
                    connection.CommandTrx.params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                    connection.CommandTrx.params.ParamByName('Paquete').DataType := ftString;
                    connection.CommandTrx.params.ParamByName('Paquete').Value := QryBusca2.FieldValues['sWBS'];
                    connection.CommandTrx.params.ParamByName('MontoAnteriorMN').DataType := ftFloat;
                    connection.CommandTrx.params.ParamByName('MontoAnteriorMN').Value := QryBusca.FieldValues['dMontoAnteriorMN'];
                    connection.CommandTrx.params.ParamByName('MontoMN').DataType := ftFloat;
                    connection.CommandTrx.params.ParamByName('MontoMN').Value := QryBusca.FieldValues['dMontoMN'];
                    connection.CommandTrx.params.ParamByName('AcumuladoMN').DataType := ftFloat;
                    connection.CommandTrx.params.ParamByName('AcumuladoMN').Value := roundto(QryBusca.FieldValues['dMontoAnteriorMN'], -2) + roundto(QryBusca.FieldValues['dMontoMN'], -2);
                    connection.CommandTrx.params.ParamByName('MontoAnteriorDLL').DataType := ftFloat;
                    connection.CommandTrx.params.ParamByName('MontoAnteriorDLL').Value := QryBusca.FieldValues['dMontoAnteriorDLL'];
                    connection.CommandTrx.params.ParamByName('MontoDLL').DataType := ftFloat;
                    connection.CommandTrx.params.ParamByName('MontoDLL').Value := QryBusca.FieldValues['dMontoDLL'];
                    connection.CommandTrx.params.ParamByName('AcumuladoDLL').DataType := ftFloat;
                    connection.CommandTrx.params.ParamByName('AcumuladoDLL').Value := QryBusca.FieldValues['dMontoAnteriorDLL'] + QryBusca.FieldValues['dMontoDLL'];
                    Connection.CommandTrx.ExecSQL;
                  end;
                  QryBusca2.Next
                end;

                qryBusca.Active := False;
                qryBusca.SQL.Clear;
                qryBusca.SQL.Add('Select sum(dMontoAcumuladoAnteriorMN) as dMontoAnteriorMN, sum(dMontoAcumuladoAnteriorDLL) as dMontoAnteriorDLL, ' +
                  'Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From actividadesxestimacion ' +
                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and sTipoActividad = "Paquete" And iNivel = 0 Group By sContrato');
                qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
                qryBusca.Params.ParamByName('Estimacion').DataType := ftString;
                qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                qryBusca.Open;
                if qryBusca.RecordCount > 0 then
                begin
                  dMontoEstimacionMN := qryBusca.FieldValues['dMontoMN'];
                  dMontoEstimacionDLL := qryBusca.FieldValues['dMontoDLL'];
                  dMontoEstimacionAcumMN := qryBusca.FieldValues['dMontoAnteriorMN'] + dMontoEstimacionMN;
                  dMontoEstimacionAcumDLL := qryBusca.FieldValues['dMontoAnteriorDLL'] + dMontoEstimacionDLL;
                end
                else
                begin
                  dMontoEstimacionMN := 0;
                  dMontoEstimacionDLL := 0;
                  dMontoEstimacionAcumMN := 0;
                  dMontoEstimacionAcumDLL := 0;
                end;

                qryBusca.Active := False;
                qryBusca.SQL.Clear;
                qryBusca.SQL.Add('Select Sum(dMontoMN) as dMontoMN, Sum(dMontoDLL) as dMontoDLL From estimaciones ' +
                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion and lStatus = "Autorizado" Group By sContrato');
                qryBusca.Params.ParamByName('Contrato').DataType := ftString;
                qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
                qryBusca.Params.ParamByName('Estimacion').DataType := ftString;
                qryBusca.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                qryBusca.Open;
                if qryBusca.RecordCount > 0 then
                begin
                  dMontoGeneradoMN := qryBusca.FieldValues['dMontoMN'];
                  dMontoGeneradoMN := qryBusca.FieldValues['dMontoDLL'];
                end
                else
                begin
                  dMontoGeneradoMN := 0;
                  dMontoGeneradoDLL := 0;
                end;

                connection.CommandTrx.Active := False;
                connection.CommandTrx.SQL.Clear;
                connection.CommandTrx.SQL.Add('UPDATE estimacionperiodo SET lEstimado = "Si", dMontoMNGeneradores = :GeneradorMN, dMontoDLLGeneradores = :GeneradorDLL, ' +
                  'dMontoMN = :EstimacionMN , dMontoDLL = :EstimacionDLL, dMontoAcumuladoMN = :dMontoAcumMN, dMontoAcumuladoDLL = :dMontoAcumDLL, sIdUsuarioAutoriza = :Usuario ' +
                  'Where sContrato = :Contrato And iNumeroEstimacion = :Estimacion');
                Connection.CommandTrx.Params.ParamByName('Contrato').DataType := ftString;
                Connection.CommandTrx.Params.ParamByName('Contrato').Value := global_contrato;
                Connection.CommandTrx.Params.ParamByName('Estimacion').DataType := ftString;
                Connection.CommandTrx.Params.ParamByName('Estimacion').Value := EstimacionPeriodo.FieldValues['iNumeroEstimacion'];
                Connection.CommandTrx.Params.ParamByName('GeneradorMN').DataType := ftFloat;
                Connection.CommandTrx.Params.ParamByName('GeneradorMN').Value := dMontoGeneradoMN;
                Connection.CommandTrx.Params.ParamByName('GeneradorDLL').DataType := ftFloat;
                Connection.CommandTrx.Params.ParamByName('GeneradorDLL').Value := dMontoGeneradoDLL;
                Connection.CommandTrx.Params.ParamByName('EstimacionMN').DataType := ftFloat;
                Connection.CommandTrx.Params.ParamByName('EstimacionMN').Value := dMontoEstimacionMN;
                Connection.CommandTrx.Params.ParamByName('EstimacionDLL').DataType := ftFloat;
                Connection.CommandTrx.Params.ParamByName('EstimacionDLL').Value := dMontoEstimacionDLL;
                Connection.CommandTrx.Params.ParamByName('dMontoAcumMN').DataType := ftFloat;
                Connection.CommandTrx.Params.ParamByName('dMontoAcumMN').Value := dMontoEstimacionAcumMN;
                Connection.CommandTrx.Params.ParamByName('dMontoAcumDLL').DataType := ftFloat;
                Connection.CommandTrx.Params.ParamByName('dMontoAcumDLL').Value := dMontoEstimacionAcumDLL;
                Connection.CommandTrx.Params.ParamByName('Usuario').DataType := ftString;
                Connection.CommandTrx.Params.ParamByName('Usuario').Value := global_autoriza;
                Connection.CommandTrx.ExecSQL;
                SavePlace := Grid_Estimaciones.DataSource.DataSet.GetBookmark;
                EstimacionPeriodo.Active := False;
                EstimacionPeriodo.Open;
                try
                  Grid_Estimaciones.DataSource.DataSet.GotoBookmark(SavePlace);
                except
               // else
                  Grid_Estimaciones.DataSource.DataSet.FreeBookmark(SavePlace);
                end;
              end;
            end;
          end;
        end;
       {$ENDREGION}
      Connection.ConnTrx.Commit;
    except
      on e: Exception do
      begin
        Connection.ConnTrx.Rollback;

        if lFilaGrid then
           if e.Message[1] = '-' then
              MessageDlg(e.Message, mtWarning, [mbOk], 0)
           else
              MessageDlg('Ha ocurrido un error al tratar de registrar los cambios solicitados.' + #10 + #10 +
               'Informe del siguiente error al administrador del sistema:' + #10 +
              e.Message, mtWarning, [mbOk], 0);
      end;
    end;
  finally
    QryBusca.Destroy;
    QryBusca2.Destroy;
  end;
end;

procedure TfrmValida.Grid_reportesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Validado' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('lStatus').AsString = 'Pendiente' then
      Background := $00D0AD9F;
end;

procedure TfrmValida.Grid_requisicionGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'PENDIENTE' then
      Background := $00D0AD9F;
end;

procedure TfrmValida.grid_salidasGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sEstatus').AsString = 'VALIDADO' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sEstatus').AsString = 'PENDIENTE' then
      Background := $00D0AD9F;
end;

procedure TfrmValida.ReporteDiarioCalcFields(DataSet: TDataSet);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select sDescripcion From convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := ReporteDiario.FieldValues['sContrato'];
  connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Convenio').Value := ReporteDiario.FieldValues['sIdConvenio'];
  Connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    ReporteDiariosDescripcion.Value := Connection.qryBusca.FieldValues['sDescripcion']
  else
    ReporteDiariosDescripcion.Value := ''
end;

procedure TfrmValida.TabSheet1Show(Sender: TObject);
begin
  zq_recepciondemateriales.Params.ParamByName('Contrato').AsString := Global_Contrato;
  zq_recepciondemateriales.Open;
end;

procedure TfrmValida.Grid_OrdenCompraGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'PENDIENTE' then
      Background := $00D0AD9F;
end;

procedure TfrmValida.Grid_RecepcionDeMaterialesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'VALIDADO' then
    Background := $006FF8FF
  else
    if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sStatus').AsString = 'PENDIENTE' then
      Background := $00D0AD9F;
end;

procedure TfrmValida.FormActivate(Sender: TObject);
begin
  Connection.qryBusca.Active := False;
  Connection.qryBusca.SQL.Clear;
  Connection.qryBusca.SQL.Add('Select dMontoMN from convenios Where sContrato = :Contrato And sIdConvenio = :Convenio');
  connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Contrato').Value := Global_Contrato;
  connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
  connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
  Connection.qryBusca.Open;
  dMonto := 0;
  if Connection.qryBusca.RecordCount > 0 then
    dMonto := Connection.qryBusca.FieldValues['dMontoMN'];

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
  end;

  if pgValidacion.TabIndex = 1 then begin
    ReporteDiario.Refresh;
  end;
  if pgValidacion.TabIndex = 5 then begin
    zq_recepciondemateriales.Refresh;
  end;

end;

procedure TfrmValida.rDiarioGetValue(const VarName: string;
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

procedure TfrmValida.frGeneradorGetValue(const VarName: string;
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
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Orden').Value := Estimaciones.FieldValues['sNumeroOrden'];
    connection.qryBusca.Params.ParamByName('Generador').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Generador').Value := Estimaciones.FieldValues['sNumeroGenerador'];
    connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Actividad').Value := Estimaciones.FieldValues['sNumeroActividad'];
    connection.qryBusca.Params.ParamByName('Referencia').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Referencia').Value := Estimaciones.FieldValues['sIsometricoReferencia'];
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
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
    connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio;
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

  if CompareText(VarName, 'HAYFOTOS') = 0 then
    Value := 'SI';
end;

procedure TfrmValida.Grid_reportesDblClick(Sender: TObject);
begin
  if ReporteDiario.RecordCount > 0 then
   // procReporteDiario (ReporteDiario.FieldValues['sContrato'] , ReporteDiario.FieldValues['sNumeroOrden'], ReporteDiario.FieldValues['sNumeroReporte'], ReporteDiario.FieldValues['sIdTurno'], ReporteDiario.FieldValues['sIdConvenio'] , ReporteDiario.FieldValues['dIdFecha'], '' , frmValida , rDiario.OnGetValue )
end;


procedure TfrmValida.Grid_EstimacionesGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background := $00D0AD9F;
end;

procedure TfrmValida.Grid_GeneradoresDblClick(Sender: TObject);
begin
  try
    if Estimaciones.RecordCount > 0 then
      if lfnValidaGenerador(global_contrato, global_convenio, Estimaciones.FieldValues['sNumeroOrden'], Estimaciones.FieldValues['sNumeroGenerador'], frmValida) then
        if tsNumeroOrden.Text <> global_contrato then
          procCaratulaGenerador(0, global_contrato, Estimaciones.FieldValues['iNumeroEstimacion'], Estimaciones.FieldValues['sNumeroOrden'], Estimaciones.FieldValues['sNumeroGenerador'], global_convenio, frmValida, frGenerador.OnGetValue, True)
        else
          procCaratulaGenerador(0, global_contrato, Estimaciones.FieldValues['iNumeroEstimacion'], Estimaciones.FieldValues['sNumeroOrden'], Estimaciones.FieldValues['sNumeroGenerador'], global_convenio, frmValida, frGenerador.OnGetValue, False)
      else
        MessageDlg('Existen partidas adicionales de anexo en el generador seleccionado, es necesario adicionar la nota de cambio acerca del motivo por el cual se excedieron las partidas.', mtWarning, [mbOk], 0);
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Valida Reportes Diarios/Generadores', 'Al doble click en cuadricula generadores', 0);
    end;
  end;
end;

procedure TfrmValida.mnTiemposMuertosClick(Sender: TObject);
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
            iJornada := ifnJornadaDia(global_contrato, FieldValues['dIdFecha'], frmValida)
          else
            iJornada := OrdenesdeTrabajo.FieldValues['iJornada'];

          if iJornada < 10 then
            sJornada := '0' + Trim(IntToStr(iJornada)) + ':00'
          else
            sJornada := Trim(IntToStr(iJornada)) + ':00';

          if FieldValues['sOrigenTierra'] = 'No' then
          begin
            procInicializaJornadas(global_contrato, FieldValues['sNumeroOrden'], FieldValues['sIdTurno'], sJornada, FieldValues['dIdFecha'], frmValida);
            procActualizaJornadas(global_contrato, FieldValues['sNumeroOrden'], FieldValues['dIdFecha'], frmValida);
          end
        end
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Valida Reportes Diarios/Generadores', 'Al hacer click en Regenera Tiempos Muertos en las Fechas Seleccionadas', 0);
    end;
  end;
end;

procedure TfrmValida.mnRegeneraAvancesClick(Sender: TObject);
var
  iGrid: Integer;
begin
  if ReporteDiario.RecordCount > 0 then
    with Grid_reportes.DataSource.DataSet do
      for iGrid := 0 to Grid_reportes.SelectedRows.Count - 1 do
      begin
        GotoBookmark(pointer(Grid_reportes.SelectedRows.Items[iGrid]));
                {connection.zCommand.Active := False ;
                connection.zCommand.SQL.Clear ;
                connection.zCommand.SQL.Add ( 'UPDATE avancesglobalesxorden SET dAvance = 0.00 ' +
                                              'WHERE sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = "" ' +
                                              'And dIdFecha = :Fecha');
                connection.zCommand.Params.ParamByName('Contrato').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato ;
                connection.zCommand.Params.ParamByName('Convenio').DataType := ftString ;
                connection.zCommand.Params.ParamByName('Convenio').Value := FieldValues['sIdConvenio'] ;
                connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate ;
                connection.zCommand.Params.ParamByName('Fecha').Value := FieldValues['dIdFecha'] ;
                connection.zCommand.ExecSQL () ;}
        cfnCalculaAvances(global_contrato,
          FieldValues['sNumeroOrden'],
          FieldValues['sIdConvenio'],
          FieldValues['sIdTurno'],
          False,
          FieldValues['dIdFecha'],
          'Avanzada',
          frmValida)
      end
end;

procedure TfrmValida.mnValidacionReportesClick(Sender: TObject);
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

procedure TfrmValida.EstimacionPeriodoCalcFields(DataSet: TDataSet);
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

procedure TfrmValida.Ajuste(dParamContrato: string; dParamConvenio: string; dParamOrden: string; dParamFecha: TDate);
var
  Q_BuscaPaquete,
    Q_BuscaAvance,
    Q_Actualiza,
    Q_SumaOrden: TZReadOnlyQuery;
  Avance,
    diferencia: Double;
  Nivel, Total,
    num: integer;
  LineTabla: string;
  lContinua: boolean;
begin
  if dParamOrden <> '' then
    LineTabla := 'actividadesxorden'
  else
    LineTabla := 'actividadesxanexo';

  lContinua := False;

  Q_BuscaPaquete := TZReadOnlyQuery.Create(self);
  Q_BuscaPaquete.Connection := connection.ConnTrx;

  Q_BuscaAvance := TZReadOnlyQuery.Create(self);
  Q_BuscaAvance.Connection := connection.ConnTrx;

  Q_Actualiza := TZReadOnlyQuery.Create(self);
  Q_Actualiza.Connection := connection.ConnTrx;

  Q_SumaOrden := TZReadOnlyQuery.Create(self);
  Q_SumaOrden.Connection := connection.ConnTrx;

   {Buscamos el avance General del Contrato del dia..}
  Q_BuscaAvance.Active;
  Q_BuscaAvance.SQL.Clear;
  Q_BuscaAvance.SQL.Add('Select * From avancesglobalesxorden  Where ' +
    'sContrato =:Contrato And sNumeroOrden=:Orden And sIdConvenio =:Convenio And dIdFecha =:Fecha');
  Q_BuscaAvance.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaAvance.ParamByName('Convenio').AsString := dParamConvenio;
  Q_BuscaAvance.ParamByName('Orden').AsString := dParamOrden;
  Q_BuscaAvance.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaAvance.Open;

   {Buscamos los paquetes Reportados en el dia..}
  Q_BuscaPaquete.Active;
  Q_BuscaPaquete.SQL.Clear;
  Q_BuscaPaquete.SQL.Add('Select b.*, a.iNivel, a.iItemOrden, a.sWbsAnterior From bitacoradepaquetes  b ' +
    'inner join ' + LineTabla + ' a on (a.sContrato = b.sContrato and a.sIdConvenio = b.sIdConvenio and a.sWbs = b.sWbs ' +
    'and a.sNumeroActividad = b.sNumeroActividad and a.sTipoActividad = "Paquete") ' +
    'Where b.sContrato =:Contrato And b.sNumeroOrden=:Orden And b.sIdConvenio =:Convenio and b.dAvance > 0 And b.dIdFecha =:Fecha order by a.iItemorden');
  Q_BuscaPaquete.ParamByName('Contrato').AsString := dParamContrato;
  Q_BuscaPaquete.ParamByName('Convenio').AsString := dParamConvenio;
  Q_BuscaPaquete.ParamByName('Orden').AsString := dParamOrden;
  Q_BuscaPaquete.ParamByName('Fecha').AsDate := dParamFecha;
  Q_BuscaPaquete.Open;

  Nivel := 0;
  if Q_BuscaPaquete.RecordCount > 0 then
  begin
       {Primero buscamos el paquete principal..}
    while not Q_BuscaPaquete.Eof do
    begin
      if (Q_BuscaPaquete.FieldValues['sWbsAnterior'] = '') or (Q_BuscaPaquete.FieldValues['sWbs'] = 'A') then
        Avance := Q_BuscaPaquete.FieldValues['dAvance'];

      if Nivel < Q_BuscaPaquete.FieldValues['iNivel'] then
        Inc(Nivel);
      Q_BuscaPaquete.Next;
    end;

       {Luego comparamos si vairan los decimales...}
    if (Avance <> Q_BuscaAvance.FieldValues['dAvance']) and (Q_BuscaAvance.FieldValues['dAvance'] <> Null) then
      lContinua := True;

       {Si hubo diferencia en Decimales entramos al ajuste de decimales..}
    Q_BuscaPaquete.First;
    if lContinua then
    begin
            {Primero Actualizamos los niveles maximos..}
      for num := 0 to Nivel do
      begin
                {Contamos cuantos paquetes estan en el nivel maximo..}

        Total := 0;
        Q_BuscaPaquete.First;
        while not Q_BuscaPaquete.Eof do
        begin
          if num = Q_BuscaPaquete.FieldValues['iNivel'] then
            Inc(Total);
          Q_BuscaPaquete.Next;
        end;

        {Ahora vamos a repartir la diferencia entre el numero de paquetes..}

        if Avance < Q_BuscaAvance.FieldValues['dAvance'] then
          diferencia := (Q_BuscaAvance.FieldByName('dAvance').AsFloat - Avance) / Total
        else
        begin
            if total > 0 then
               diferencia := (Avance - Q_BuscaAvance.FieldByName('dAvance').AsFloat) / Total;
        end;

        Q_BuscaPaquete.First;
        while not Q_BuscaPaquete.Eof do
        begin
          if Q_BuscaPaquete.FieldValues['iNivel'] = num then
          begin
                        {Actualizamos el dato..}
            Q_Actualiza.Active := False;
            Q_Actualiza.SQL.Clear;
            Q_Actualiza.SQL.Add('UPDATE bitacoradepaquetes SET dAvance = :Avance  ' +
              'Where sContrato = :Contrato And sNumeroOrden = :Orden And dIdFecha = :Fecha And sIdConvenio = :convenio And sWbs =:Wbs ');
            Q_Actualiza.Params.ParamByName('contrato').DataType := ftString;
            Q_Actualiza.Params.ParamByName('contrato').value := dParamContrato;
            Q_Actualiza.Params.ParamByName('Orden').DataType := ftString;
            Q_Actualiza.Params.ParamByName('Orden').value := dParamOrden;
            Q_Actualiza.Params.ParamByName('convenio').DataType := ftString;
            Q_Actualiza.Params.ParamByName('convenio').value := dParamConvenio;
            Q_Actualiza.Params.ParamByName('fecha').DataType := ftDate;
            Q_Actualiza.Params.ParamByName('fecha').value := dParamFecha;
            Q_Actualiza.Params.ParamByName('wbs').DataType := ftString;
            Q_Actualiza.Params.ParamByName('wbs').value := Q_BuscaPaquete.FieldValues['sWbs'];
            Q_Actualiza.Params.ParamByName('Avance').DataType := ftFloat;
            if Avance < Q_BuscaAvance.FieldValues['dAvance'] then
              Q_Actualiza.Params.ParamByName('Avance').value := Q_BuscaPaquete.FieldValues['dAvance'] + diferencia
            else
              Q_Actualiza.Params.ParamByName('Avance').value := Q_BuscaPaquete.FieldValues['dAvance'] - diferencia;
            Q_Actualiza.ExecSQL;
          end;
          Q_BuscaPaquete.Next;
        end;
      end;
    end;
  end;
  Q_BuscaPaquete.Destroy;
  Q_BuscaAvance.Destroy;
  Q_Actualiza.Destroy;

end;

procedure TfrmValida.kardex_almacen(sParamMensaje: string; sOrigen: string);
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

