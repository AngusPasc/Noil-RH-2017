unit frm_comparativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, frm_connection , global, StdCtrls,
  DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, ComCtrls, RxMemDS,
  RXCtrls, RxLookup, Buttons, StrUtils, fqbClass, fqbSynmemo, ExtCtrls,
  TeeProcs, TeEngine, Chart, Series, DbChart, Newpanel, DateUtils,
  ZAbstractRODataset, ZDataset, utilerias, Gauges, AdvGroupBox,
  JvExStdCtrls, JvRichEdit, rtflabel, UFunctionsGHH, unitexcepciones,UnitTBotonesPermisos,
  DBDateTimePicker;
type
  TfrmCompara = class(TForm)
    dsInforme: TfrxDBDataset;
    rxPartidasAvance: TRxMemoryData;
    rxPartidasAvancesContrato: TStringField;
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
    rxCantProgramada: TRxMemoryData;
    rxCantProgramadasContrato: TStringField;
    rxCantProgramadasIdClave: TStringField;
    rxCantProgramadasDescripcion: TStringField;
    rxCantProgramadadCantidad: TFloatField;
    rxCantProgramadasRenglon: TStringField;
    rxCantProgramadasMedida: TStringField;
    rxCantProgramadaiMes: TIntegerField;
    rxCantProgramadaiAnno: TIntegerField;
    dsCantProgramada: TfrxDBDataset;
    rxCantProgramadaiItemOrden: TIntegerField;
    rxCostoProgramado: TRxMemoryData;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    rxCostoProgramadodCostoMN: TCurrencyField;
    dbCostoProgramado: TfrxDBDataset;
    rxPartidasAvancedVentaMN: TCurrencyField;
    rxPartidasAvancedVentaDLL: TCurrencyField;
    rxAnexoGenerado: TRxMemoryData;
    StringField6: TStringField;
    StringField7: TStringField;
    MemoField1: TMemoField;
    StringField10: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    rxAnexoGeneradodGenerado: TFloatField;
    rxAnexoGeneradodPendiente: TFloatField;
    rxAnexoGeneradodAdicional: TFloatField;
    rxAnexoGeneradodPonderado: TFloatField;
    Label11: TLabel;
    rxSuministroAnexo: TRxMemoryData;
    StringField11: TStringField;
    StringField12: TStringField;
    MemoField2: TMemoField;
    StringField13: TStringField;
    FloatField2: TFloatField;
    CurrencyField2: TCurrencyField;
    FloatField6: TFloatField;
    FloatField8: TFloatField;
    rxSuministroAnexosReferencia: TStringField;
    rxSuministroAnexodCantidad: TFloatField;
    rxSuministroAnexodPReportar: TFloatField;
    rxSuministroAnexodPSuministrar: TFloatField;
    ActividadesxAnexo: TZReadOnlyQuery;
    ActividadesxOrden: TZReadOnlyQuery;
    ActividadesxOrdensContrato: TStringField;
    ActividadesxOrdeniNivel: TIntegerField;
    ActividadesxOrdeniColor: TIntegerField;
    ActividadesxOrdensTipoActividad: TStringField;
    ActividadesxOrdensWbs: TStringField;
    ActividadesxOrdensNumeroActividad: TStringField;
    ActividadesxOrdenmDescripcion: TMemoField;
    ActividadesxOrdensMedida: TStringField;
    ActividadesxOrdendCantidad: TFloatField;
    ActividadesxOrdendPonderado: TFloatField;
    ActividadesxOrdendVentaMN: TFloatField;
    ActividadesxOrdendReportado: TFloatField;
    ActividadesxOrdendSuministrado: TFloatField;
    ActividadesxOrdendGenerado: TFloatField;
    ActividadesxOrdensNumeroOrden: TStringField;
    dbActividadesxAnexo: TfrxDBDataset;
    ActividadesxOrdensWbsAnterior: TStringField;
    ActividadesxOrdendFechaInicio: TDateField;
    ActividadesxOrdendFechaFinal: TDateField;
    ActividadesxOrdendMontoMN: TCurrencyField;
    dbActividadesxOrden: TfrxDBDataset;
    rxPartidasAvanceiNivel: TIntegerField;
    rxPartidasAvancesWbsAnterior: TStringField;
    rxPartidasAvancesNumeroActividad: TStringField;
    rxPartidasAvancesTipoActividad: TStringField;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    tsFiltro: TComboBox;
    tsOrdenado: TComboBox;
    tsNumeroOrden: TComboBox;
    gbParametros: tNewGroupBox;
    tNewGroupBox1: tNewGroupBox;
    btnPanel: TGroupBox;
    btnTerminadas: TButton;
    btnAdicionales: TButton;
    btnPendientes: TButton;
    btnTodas: TButton;
    btnSinGenerar: TButton;
    tNewGroupBox4: tNewGroupBox;
    Reporte: TZReadOnlyQuery;
    ActividadesxOrdendSubContrato: TFloatField;
    rInforme: TfrxReport;
    GroupBox1: TGroupBox;
    rbCantidad: TRadioButton;
    rbCostos: TRadioButton;
    btnEquipos: TButton;
    btnPersonal: TButton;
    GroupBox2: TGroupBox;
    Progress: TGauge;
    GroupBox3: TGroupBox;
    btnDetalleGeneracion: TButton;
    Label1: TLabel;
    tsNumeroEstimacion: TDBLookupComboBox;
    btnAcumuladoTrinomio: TButton;
    ActividadesxAnexosContrato: TStringField;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexosWbsAnterior: TStringField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexodMontoMN: TCurrencyField;
    ActividadesxAnexodMontoDLL: TCurrencyField;
    ActividadesxAnexodReportado: TFloatField;
    ActividadesxAnexodSuministrado: TFloatField;
    ActividadesxAnexodGenerado: TFloatField;
    ActividadesxAnexodEstimado: TFloatField;
    ActividadesxAnexodSubContrato: TFloatField;
    btnSinReportar: TButton;
    rxAnexoGeneradolTitulo: TStringField;
    qryBuscaP: TZReadOnlyQuery;
    dsPartidas: TfrxDBDataset;
    Label3: TLabel;
    GrupoMoneda: TGroupBox;
    chkMN: TCheckBox;
    chkDLL: TCheckBox;
    ActividadesxOrdendMontoDLL: TFloatField;
    ActividadesxOrdendVentaDLL: TFloatField;
    rxAnexoGeneradodVentaDLL: TFloatField;
    btTrinomiodll: TButton;
    roqOrdenes: TZReadOnlyQuery;
    btnStatus: TButton;
    btnReportadoVsGenerado: TButton;
    btnFiltroAnexo: TButton;
    btnAnexoVsEstimaciones: TButton;
    btnSubContratos: TButton;
    btnPartidasRetraso: TButton;
    btnSuministros: TButton;
    cmdExcedentes: TButton;
    cmdConceptos: TButton;
    rx_Isometricos: TRxMemoryData;
    rx_IsometricossContrato: TStringField;
    rx_IsometricossWbs: TStringField;
    rx_IsometricossNumeroOrden: TStringField;
    rx_IsometricosmIsometrico: TStringField;
    rx_IsometricossNumeroActividad: TStringField;
    rx_IsometricosmDescripcion: TStringField;
    rx_IsometricosdIdFecha: TDateField;
    rx_IsometricosdCantidad: TFloatField;
    rx_IsometricosdReportado: TFloatField;
    rx_IsometricosdAvanceReportado: TFloatField;
    rx_IsometricosdGenerado: TFloatField;
    rx_IsometricosdAvanceGenerado: TFloatField;
    rx_IsometricossWbsAnterior: TStringField;
    ds_isometricos: TfrxDBDataset;
    cmdComparativo: TButton;
    RxMDValida: TRxMemoryData;
    RxMDValidasNumeroActividad: TStringField;
    RxMDValidasWbs: TStringField;
    RxMDValidadCantidad: TStringField;
    RxMDValidasuma: TStringField;
    RxMDValidaaMN: TStringField;
    RxMDValidaaDLL: TStringField;
    RxMDValidabMN: TStringField;
    RxMDValidabDLL: TStringField;
    RxMDValidadCantidadAnexo: TStringField;
    RxMDValidadescripcion: TStringField;
    RxMDValidamensaje: TStringField;
    RxMDValidasNumeroOrden: TStringField;
    RxMDValidasWbs2: TStringField;
    frxDBValida: TfrxDBDataset;
    tdIdFecha1: TDBDateTimePicker;
    tdIdFecha: TDBDateTimePicker;
    procedure btnStatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure btnFiltroAnexoClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure rptDetalladeGeneradoresGetValue(const VarName: String;
      var Value: Variant);
    procedure rptCmpAnexoGeneradoGetValue(const VarName: String;
      var Value: Variant);
    procedure btnPartidasRetrasoClick(Sender: TObject);
    procedure rptProgramadoGetValue(const VarName: String;
      var Value: Variant);
    procedure btnDetalleGeneracionClick(Sender: TObject);
    procedure btnPersonalClick(Sender: TObject);
    procedure btnEquiposClick(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tsFiltroEnter(Sender: TObject);
    procedure tsFiltroExit(Sender: TObject);
    procedure tsFiltroKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrdenadoEnter(Sender: TObject);
    procedure tsOrdenadoExit(Sender: TObject);
    procedure tsOrdenadoKeyPress(Sender: TObject; var Key: Char);
    procedure rptProgramadoOTGetValue(const VarName: String;
      var Value: Variant);
    procedure btnPanelExit(Sender: TObject);
    procedure btnTerminadasClick(Sender: TObject);
    procedure btnAdicionalesClick(Sender: TObject);
    procedure btnPendientesClick(Sender: TObject);
    procedure btnTodasClick(Sender: TObject);
    procedure btnSinGenerarClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure btnSuministrosClick(Sender: TObject);
    procedure tsNumeroEstimacionEnter(Sender: TObject);
    procedure tsNumeroEstimacionExit(Sender: TObject);
    procedure tsNumeroEstimacionKeyPress(Sender: TObject; var Key: Char);
    procedure btnAcumuladoTrinomioClick(Sender: TObject);
    procedure ActividadesxOrdenCalcFields(DataSet: TDataSet);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure rInformeGetValue(const VarName: String; var Value: Variant);
    procedure btnReportadoVsGeneradoClick(Sender: TObject);
    procedure btnAnexoVsEstimacionesClick(Sender: TObject);
    procedure btnSubContratosClick(Sender: TObject);
    procedure btnSinReportarClick(Sender: TObject);
    procedure cmdConceptosClick(Sender: TObject);
    procedure chkDLLClick(Sender: TObject);
    procedure chkDLLEnter(Sender: TObject);
    procedure cmdExcedentesClick(Sender: TObject);
    procedure btTrinomiodllClick(Sender: TObject);
    procedure tsNumeroOrdenChange(Sender: TObject);
    procedure cmdComparativoClick(Sender: TObject);
    procedure tdIdFecha1Enter(Sender: TObject);
    procedure tdIdFecha1Exit(Sender: TObject);
    procedure tdIdFecha1KeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaChange(Sender: TObject);
    procedure tdIdFecha1Change(Sender: TObject);
  private
    sMenuP: String;
    { Private declarations }
    procedure acumularDiferencia(suma, sMensaje: string);
    function cantidadesDiferentes(sWBSContrato: string): string;
    procedure ventasDiferentes(sWBSContrato, suma: string);

  public
    { Public declarations }
  end;

var
  frmCompara: TfrmCompara;
  Opcion : String ;
  Registro_Actual : String ;
  dCantidadInstalar : Double ;
  sSuperintendente, sSupervisor : String ;
  sPuestoSuperintendente, sPuestoSupervisor : String ;
  sSupervisorTierra, sPuestoSupervisorTierra : String ;
  tsAlcances : Array [1..10] Of String ;
  dTotalGenerado : Real ;
  sOpcion   : String ;
  sConvenio : String ;
  avProgramado,
  avFisico  : Currency ;
  BotonPermiso: TBotonesPermisos;


implementation

uses Frm_FiltroIsometricos;

{$R *.dfm}

procedure TfrmCompara.btnStatusClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha1.Date>tdIdFecha.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        ActividadesxAnexo.Active := False ;
        ActividadesxAnexo.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, "" as cancelada from actividadesxanexo Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio order by iItemOrden')
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
            ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, "" as cancelada  from actividadesxanexo Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio order by dPonderado DESC')
            Else
                ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, "" as cancelada  from actividadesxanexo Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio order by (dVentaMN * dCantidadAnexo) DESC') ;
        ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
        ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Convenio').Value := sConvenio ;
        ActividadesxAnexo.Open ;

        //Obtenemos los reportes en M.N. o en Dólares.
        if chkMN.Checked = True then
          begin
            rInforme.LoadFromFile (global_files + 'Estatus Contrato.fr3');
            if not FileExists(global_files + 'Estatus Contrato.fr3') then
              showmessage('El archivo de reporte Estatus Contrato.fr3 no existe, notifique al administrador del sistema');
          end
        else
        begin
           rInforme.LoadFromFile (global_files + 'Estatus ContratoDLL.fr3');
           if not FileExists(global_files + 'Estatus ContratoDLL.fr3') then
             showmessage('El archivo de reporte Estatus ContratoDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
    Else
    Begin
        ActividadesxOrden.Active := False ;
        ActividadesxOrden.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL ' +

                                      ',(select lCancelada from bitacoradeactividades b ' +
                                      ' where a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden ' +
                                      'and a.swbs = b.swbs and lCancelada = "Si" limit 1) as cancelada ' +

                                      ' from actividadesxorden a Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden order by iItemOrden')
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL ' +

                                      ',(select lCancelada from bitacoradeactividades b ' +
                                      ' where a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden ' +
                                      'and a.swbs = b.swbs and lCancelada = "Si" limit 1) as cancelada ' +

                                      'from actividadesxorden a Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden order by dPonderado DESC')
            Else
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL ' +

                                      ',(select lCancelada from bitacoradeactividades b ' +
                                      ' where a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden ' +
                                      'and a.swbs = b.swbs and lCancelada = "Si" limit 1) as cancelada ' +

                                      ' from actividadesxOrden a Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden order by (dVentaMN * dCantidad) DESC') ;
        ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Contrato').Value := global_contrato ;
        ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Convenio').Value := sConvenio ;
        ActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        ActividadesxOrden.Open ;
        //Obtenemos los reportes en M.N. o en Dólares.
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'Estatus Orden.fr3');
           if not FileExists(global_files + 'Estatus Orden.fr3') then
             showmessage('El archivo de reporte Estatus Orden.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'Estatus OrdenDLL.fr3');
           if not FileExists(global_files + 'Estatus OrdenDLL.fr3') then
             showmessage('El archivo de reporte Estatus OrdenDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
  except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar Status de conceptos', 0);
        end;
  end;
end;

procedure TfrmCompara.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rComparativo');
  BotonPermiso.permisosBotones(nil);
  if not BotonPermiso.imprimir then
    Begin
    btnStatus.Enabled:=False;
    btnReportadoVsGenerado.Enabled:=False;
    btnFiltroAnexo.Enabled:=False;
    btnAnexoVsEstimaciones.Enabled:=False;
    btnSubContratos.Enabled:=False;
    btnPartidasRetraso.Enabled:=False;
    btnSuministros.Enabled:=False;
    cmdExcedentes.Enabled:=False;
    cmdConceptos.Enabled:=False;
    cmdComparativo.Enabled:=False;
    btnDetalleGeneracion.Enabled:=False;
    btnAcumuladoTrinomio.Enabled:=False;
    btTrinomiodll.Enabled:=False;
    btnPersonal.Enabled:=False;
    btnEquipos.Enabled:=False;

    End;
  try
    sMenuP:=stMenu;
    tdIdFecha.Date       := Date ;
    tdIdFecha1.Date      := Date ;
    tsFiltro.ItemIndex   := 0 ;
    tsOrdenado.ItemIndex := 0 ;

    tsNumeroOrden.Items.Clear ;
    tsNumeroOrden.Items.Add('CONTRATO No. ' + global_contrato)  ;

    roqOrdenes.Active := False ;
    roqOrdenes.ParamByName('Contrato').AsString := Global_Contrato ;
    roqOrdenes.ParamByName('status').AsString :=  connection.configuracion.FieldValues [ 'sOrdenExtraordinaria' ];
    roqOrdenes.Open;
    While NOT roqOrdenes.Eof Do
    Begin
      tsNumeroOrden.Items.Add(roqOrdenes.FieldValues['sNumeroOrden']) ;
      roqOrdenes.Next
    End ;
    tsNumeroOrden.ItemIndex := 0;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select * From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
        sConvenio := Connection.qryBusca.FieldValues['sIdConvenio']
    Else
        sConvenio := global_convenio ;
        
    tdIdFecha1.SetFocus;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al iniciar el formulario', 0);
    end;
  end;

end;

procedure TfrmCompara.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  BotonPermiso.Free;
  action := cafree ;
end;

procedure TfrmCompara.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsFiltro.SetFocus 
end;

procedure TfrmCompara.btnFiltroAnexoClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    If rxAnexoGenerado.RecordCount > 0 Then
        rxAnexoGenerado.EmptyTable ;
    sOpcion := '' ;
    btnPanel.Visible := True ;
    btnTerminadas.SetFocus
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar cantidad Anexo vs generado', 0);
    end;
  end;
end;

procedure TfrmCompara.tdIdFecha1Change(Sender: TObject);
begin
  tdIdFecha.Date:=tdIdFecha1.Date;
end;

procedure TfrmCompara.tdIdFecha1Enter(Sender: TObject);
begin
tdidfecha1.Color := global_color_entrada
end;

procedure TfrmCompara.tdIdFecha1Exit(Sender: TObject);
begin
tdidfecha1.Color := global_color_salida
end;

procedure TfrmCompara.tdIdFecha1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tdidfecha.SetFocus
end;

procedure TfrmCompara.tdIdFechaChange(Sender: TObject);
begin
 // tdIdFecha.Date:=tdIdFecha1.Date;
end;

procedure TfrmCompara.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmCompara.tdIdFechaExit(Sender: TObject);
begin
  try
    tdIdFecha.Color := global_color_salida ;
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select * From reportediario Where sContrato = :Contrato And dIdFecha = :Fecha') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;
    If Connection.qryBusca.RecordCount > 0 Then
        sConvenio := Connection.qryBusca.FieldValues['sIdConvenio']
    Else
        sConvenio := global_convenio ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al seleccionar la fecha final', 0);
    end;
  end;
end;

procedure TfrmCompara.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsnumeroorden.SetFocus
end;

procedure TfrmCompara.rptDetalladeGeneradoresGetValue(
  const VarName: String; var Value: Variant);
begin
  If CompareText(VarName, 'MI_FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;
end;

procedure TfrmCompara.rptCmpAnexoGeneradoGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'MI_FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;
end;


procedure TfrmCompara.btnPartidasRetrasoClick(Sender: TObject);
Var
    dAvance   : Double ;
    iRetraso  : Integer ;
    lFiltro   : Boolean ;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    // Calculo de los avances de la orden o del contrato ....
    // Avance Programado
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
        Connection.qryBusca.SQL.Add('Select Sum(dAvancePonderadoDia) as dProgramado From avancesglobales ' +
                                    'where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = "" and dIdFecha <= :Fecha Group By sNumeroOrden')
    Else
    Begin
        Connection.qryBusca.SQL.Add('Select Sum(dAvancePonderadoDia) as dProgramado From avancesglobales ' +
                                    'where sContrato = :Contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden and dIdFecha <= :Fecha Group By sContrato') ;
        Connection.qryBusca.Params.ParamByName('orden').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
    End ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;
    IF Connection.qryBusca.RecordCount > 0 Then
        avProgramado := Connection.qryBusca.FieldValues['dProgramado']
    Else
        avProgramado := 0 ;

    // Avance Fisico
    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
        Connection.qryBusca.SQL.Add('Select Sum(dAvance) as dReal From avancesglobalesxorden where sContrato = :Contrato And ' +
                                     'sIdConvenio = :Convenio And sNumeroOrden = "" and dIdFecha <= :Fecha Group By sContrato')
    Else
    Begin
        Connection.qryBusca.SQL.Add('Select Sum(dAvance) as dReal From avancesglobalesxorden where sContrato = :Contrato And ' +
                                    'sIdConvenio = :Convenio And sNumeroOrden = :orden and dIdFecha <= :Fecha Group By sNumeroOrden') ;
        Connection.qryBusca.Params.ParamByName('orden').DataType := ftString ;
        Connection.qryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text ;
    End ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
    Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
    Connection.qryBusca.Open ;
    IF Connection.qryBusca.RecordCount > 0 Then
        avFisico := Connection.qryBusca.FieldValues['dReal']
    Else
        avFisico := 0 ;


    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dInstalado, a.dExcedente, ' +
                                        'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                        'From actividadesxanexo a LEFT JOIN distribuciondeanexo d ON (a.sContrato = d.sContrato And ' +
                                        'a.sIdConvenio = d.sIdConvenio And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) Where ' +
                                        'a.sContrato = :Contrato And a.sIdConvenio = :Convenio Group By a.sWbs, a.sNumeroActividad Order By a.iItemOrden')
        Else
          If tsOrdenado.Text = 'PONDERADO' Then
              connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dInstalado, a.dExcedente, ' +
                                          'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                          'From actividadesxanexo a INNER JOIN distribuciondeanexo d ON (a.sContrato = d.sContrato And ' +
                                          'a.sIdConvenio = d.sIdConvenio And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) Where ' +
                                          'a.sContrato = :Contrato And a.sIdConvenio = :Convenio Group By a.sWbs, a.sNumeroActividad Order By a.dPonderado DESC')

          Else
              If tsOrdenado.Text = 'PRECIO UNITARIO' Then
                  connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dInstalado, a.dExcedente, ' +
                                              'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                              'From actividadesxanexo a INNER JOIN distribuciondeanexo d ON (a.sContrato = d.sContrato And ' +
                                              'a.sIdConvenio = d.sIdConvenio And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                              'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio Group By a.sWbs, a.sNumeroActividad Order By (a.dVentaMN * dCantidadAnexo) DESC') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        connection.QryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        connection.QryBusca.Open ;

        If rxPartidasAvance.RecordCount > 0 Then
           rxPartidasAvance.EmptyTable ;

        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := rxPartidasAvance ;
        Progress.Visible := True ;
        Progress.MinValue := 1 ;
        Progress.MaxValue := connection.QryBusca.RecordCount ;
        While NOT connection.QryBusca.Eof Do
        Begin
            If tdIdFecha.Date > connection.QryBusca.FieldValues['dFechaFinal'] Then
                If (connection.QryBusca.FieldValues['dInstalado'] + connection.QryBusca.FieldValues['dExcedente']) < connection.QryBusca.FieldValues['dCantidadAnexo']Then
                    iRetraso := tdIdFecha.Date - connection.QryBusca.FieldValues['dFechaFinal']
                Else
                    iRetraso := 0
            Else
                iRetraso := 0 ;

            If tsFiltro.Text = 'CON RETRASO' Then
                If iRetraso > 0 then
                    lFiltro := True
                Else
                    lFiltro := False
            Else
                If tsFiltro.Text = 'DESFASADAS' Then
                    If iRetraso = 0 then
                        lFiltro := True
                    Else
                        lFiltro := False
                Else
                    lFiltro := True ;

            If lFiltro Then
            Begin
                rxPartidasAvance.Append ;
                rxPartidasAvance.FieldValues['sContrato'] := global_contrato ;
                rxPartidasAvance.FieldValues['iNivel'] := connection.QryBusca.FieldValues['iNivel'] ;
                rxPartidasAvance.FieldValues['sTipoActividad'] := connection.QryBusca.FieldValues['sTipoActividad'] ;
                rxPartidasAvance.FieldValues['sWbsAnterior'] := connection.QryBusca.FieldValues['sWbsAnterior'] ;
                rxPartidasAvance.FieldValues['sWbs'] := connection.QryBusca.FieldValues['sWbs'] ;
                rxPartidasAvance.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                rxPartidasAvance.FieldValues['mDescripcion'] := Copy (connection.QryBusca.FieldValues['mDescripcion'], 1, 100 ) + ' ..' ;
                rxPartidasAvance.FieldValues['dCantidadAnexo'] := connection.QryBusca.FieldValues['dCantidadAnexo'] ;
                rxPartidasAvance.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
                rxPartidasAvance.FieldValues['dPonderado'] := connection.QryBusca.FieldValues['dPonderado'] ;
                rxPartidasAvance.FieldValues['dFechaInicio'] := connection.QryBusca.FieldValues['dFechaInicio'] ;
                rxPartidasAvance.FieldValues['dFechaFinal'] := connection.QryBusca.FieldValues['dFechaFinal'] ;
                rxPartidasAvance.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                rxPartidasAvance.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                If connection.QryBusca.FieldValues['sTipoActividad'] = 'Actividad' Then
                Begin
                    rxPartidasAvance.FieldValues['dCantidadProgramada'] := connection.QryBusca.FieldValues['dProgramado'] ;
                    If ((connection.QryBusca.FieldValues['dProgramado'] / connection.QryBusca.FieldValues['dCantidadAnexo']) * connection.QryBusca.FieldValues['dPonderado']) > 0 Then
                        rxPartidasAvance.FieldValues['dAvanceProgramado'] := ((connection.QryBusca.FieldValues['dProgramado'] / connection.QryBusca.FieldValues['dCantidadAnexo']) * connection.QryBusca.FieldValues['dPonderado'] ) ;
                    rxPartidasAvance.FieldValues['dCantidadReal'] := (connection.QryBusca.FieldValues['dInstalado'] + connection.QryBusca.FieldValues['dExcedente']) ;
                    If rxPartidasAvance.FieldValues['dCantidadReal']  < connection.QryBusca.FieldValues['dCantidadAnexo'] Then
                    Begin
                        connection.QryBusca2.Active := False ;
                        connection.QryBusca2.SQL.Clear ;
                        connection.QryBusca2.SQL.Add('Select sum(b.dAvance) as dAvance, a.dCantidadAnexo, a2.dCantidad From bitacoradeactividades b ' +
                                                     'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato And a2.sPaquete = b.sPaquete And a2.sNumeroActividad = b.sNumeroActividad And a2.sIdConvenio = :Convenio And a2.sTipoActividad = "Actividad" )' +
                                                     'INNER JOIN actividadesxanexo a ON (a.sContrato = b.sContrato And a.sNumeroActividad = b.sNumeroActividad And a.sIdConvenio = a2.sIdConvenio) ' +
                                                      'Where b.sContrato = :contrato And b.sNumeroActividad = :Actividad And b.dIdFecha <= :Fecha Group By b.sPaquete' ) ;
                        connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                        connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
                        connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
                        connection.QryBusca2.Params.ParamByName('Convenio').Value := sConvenio ;
                        connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
                        connection.QryBusca2.Params.ParamByName('Actividad').Value := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                        connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
                        connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
                        connection.QryBusca2.Open ;
                        dAvance := 0 ;
                        While NOT connection.QryBusca2.Eof Do
                        Begin
                            dAvance := dAvance + (connection.QryBusca2.FieldValues['dAvance'] * connection.QryBusca2.FieldValues['dCantidad']) / connection.QryBusca2.FieldValues['dCantidadAnexo'] ;
                            connection.QryBusca2.Next ;
                        End ;
                        rxPartidasAvance.FieldValues['dAvanceReal'] := dAvance ;
                    End
                    Else
                        rxPartidasAvance.FieldValues['dAvanceReal'] := 100 ;
                    If tdIdFecha.Date > connection.QryBusca.FieldValues['dFechaFinal'] Then
                        If rxPartidasAvance.FieldValues['dCantidadReal'] < rxPartidasAvance.FieldValues['dCantidadAnexo'] Then
                            rxPartidasAvance.FieldValues['iRetraso'] := tdIdFecha.Date - connection.QryBusca.FieldValues['dFechaFinal']
                        Else
                            rxPartidasAvance.FieldValues['iRetraso'] := 0
                    Else
                        rxPartidasAvance.FieldValues['iRetraso'] := 0 ;
                    If (rxPartidasAvance.FieldValues['dAvanceReal'] = 0) And (rxPartidasAvance.FieldValues['dCantidadReal'] > 0) Then
                        If rxPartidasAvance.FieldValues['dCantidadAnexo'] > 0 Then
                            rxPartidasAvance.FieldValues['dAvanceReal'] := (rxPartidasAvance.FieldValues['dCantidadReal'] / rxPartidasAvance.FieldValues['dCantidadAnexo']) * 100 ;
                End ;
                rxPartidasAvance.Post ;
            End ;
            connection.QryBusca.Next ;
            progress.Progress := connection.QryBusca.RecNo ;
        End ;
        progress.Visible := False ;
        progress.Progress := 0 ;
        //Obtenemos Reporte en Dolares y M.N
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'RetrazosContrato.fr3');
           if not FileExists(global_files + 'RetrazosContrato.fr3') then
             showmessage('El archivo de reporte RetrazosContrato.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'RetrazosContratoDLL.fr3');
           if not FileExists(global_files + 'RetrazosContratoDLL.fr3') then
             showmessage('El archivo de reporte RetrazosContratoDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
    Else
    Begin
        // Orden de Trabajo
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad, a.dInstalado, a.dExcedente, ' +
                                        'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                        'From actividadesxorden a LEFT JOIN distribuciondeactividades d ON (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And ' +
                                        'a.sNumeroOrden = d.sNumeroOrden And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                        'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden  ' +
                                        'Group By a.sWbs, a.sNumeroActividad Order By a.iItemOrden')
        Else
          If tsOrdenado.Text = 'PONDERADO' Then
              connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad, a.dInstalado, a.dExcedente, ' +
                                          'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                          'From actividadesxorden a INNER JOIN distribuciondeactividades d ON (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And ' +
                                          'a.sNumeroOrden = d.sNumeroOrden And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                          'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden ' +
                                          'Group By a.sWbs, a.sNumeroActividad Order By a.dPonderado DESC')
          Else
              If tsOrdenado.Text = 'PRECIO UNITARIO' Then
                    connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad, a.dInstalado, a.dExcedente, ' +
                                              'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                              'From actividadesxorden a INNER JOIN distribuciondeactividades d ON (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And ' +
                                              'a.sNumeroOrden = d.sNumeroOrden And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                              'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio And a.sNumeroOrden = :Orden ' +
                                              'Group By a.sWbs, a.sNumeroActividad Order By (a2.dVentaMN * a.dCantidad) DESC') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        connection.QryBusca.Params.ParamByName('Fecha').DataType := ftDate ;
        connection.QryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        connection.QryBusca.Open ;
        If rxPartidasAvance.RecordCount > 0 Then
           rxPartidasAvance.EmptyTable ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := rxPartidasAvance ;
        Progress.Visible := True ;
        Progress.MinValue := 1 ;
        Progress.MaxValue := connection.QryBusca.RecordCount ;
        While NOT connection.QryBusca.Eof Do
        Begin
            If tdIdFecha.Date > connection.QryBusca.FieldValues['dFechaFinal'] Then
                If (connection.QryBusca.FieldValues['dInstalado'] + connection.QryBusca.FieldValues['dExcedente']) < connection.QryBusca.FieldValues['dCantidad']Then
                    iRetraso := tdIdFecha.Date - connection.QryBusca.FieldValues['dFechaFinal']
                Else
                    iRetraso := 0
            Else
                iRetraso := 0 ;

            If tsFiltro.Text = 'CON RETRASO' Then
                If iRetraso > 0 then
                    lFiltro := True
                Else
                    lFiltro := False
            Else
                If tsFiltro.Text = 'DESFASADAS' Then
                    If iRetraso = 0 then
                        lFiltro := True
                    Else
                        lFiltro := False
                Else
                    lFiltro := True ;

            If lFiltro Then
            Begin
                rxPartidasAvance.Append ;
                rxPartidasAvance.FieldValues['sContrato'] := global_contrato ;
                rxPartidasAvance.FieldValues['iNivel'] := connection.QryBusca.FieldValues['iNivel'] ;
                rxPartidasAvance.FieldValues['sTipoActividad'] := connection.QryBusca.FieldValues['sTipoActividad'] ;
                rxPartidasAvance.FieldValues['sWbsAnterior'] := connection.QryBusca.FieldValues['sWbsAnterior'] ;
                rxPartidasAvance.FieldValues['sWbs'] := connection.QryBusca.FieldValues['sWbs'] ;
                rxPartidasAvance.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                rxPartidasAvance.FieldValues['mDescripcion'] := Copy (connection.QryBusca.FieldValues['mDescripcion'], 1, 120 ) + ' .' ;
                rxPartidasAvance.FieldValues['dCantidadAnexo'] := connection.QryBusca.FieldValues['dCantidad'] ;
                rxPartidasAvance.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
                rxPartidasAvance.FieldValues['dPonderado'] := connection.QryBusca.FieldValues['dPonderado'] ;
                rxPartidasAvance.FieldValues['dFechaInicio'] := connection.QryBusca.FieldValues['dFechaInicio'] ;
                rxPartidasAvance.FieldValues['dFechaFinal'] := connection.QryBusca.FieldValues['dFechaFinal'] ;
                rxPartidasAvance.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                rxPartidasAvance.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                rxPartidasAvance.FieldValues['dCantidadProgramada'] := connection.QryBusca.FieldValues['dProgramado'] ;
                If ((connection.QryBusca.FieldValues['dProgramado'] / connection.QryBusca.FieldValues['dCantidad']) * connection.QryBusca.FieldValues['dPonderado']) > 0 Then
                    rxPartidasAvance.FieldValues['dAvanceProgramado'] := ((connection.QryBusca.FieldValues['dProgramado'] / connection.QryBusca.FieldValues['dCantidad']) * connection.QryBusca.FieldValues['dPonderado'] ) ;
                rxPartidasAvance.FieldValues['dCantidadReal'] := (connection.QryBusca.FieldValues['dInstalado'] + connection.QryBusca.FieldValues['dExcedente']) ;
                If rxPartidasAvance.FieldValues['dCantidadReal']  < connection.QryBusca.FieldValues['dCantidad'] Then
                Begin
                    connection.QryBusca2.Active := False ;
                    connection.QryBusca2.SQL.Clear ;
                    connection.QryBusca2.SQL.Add('Select sum(b.dAvance) as dAvance From bitacoradeactividades b ' +
                                      'INNER JOIN actividadesxorden a2 ON (a2.sContrato = b.sContrato And a2.sWbs = b.sWbs And a2.sNumeroActividad = b.sNumeroActividad And a2.sIdConvenio = :Convenio And a2.sTipoActividad = "Actividad" )' +
                                      'Where b.sContrato = :contrato And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad And b.dIdFecha <= :Fecha Group By b.sWbs, b.sNumeroActividad' ) ;
                    connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
                    connection.QryBusca2.Params.ParamByName('Contrato').Value := global_Contrato ;
                    connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString ;
                    connection.QryBusca2.Params.ParamByName('Convenio').Value := sConvenio ;
                    connection.QryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
                    connection.QryBusca2.Params.ParamByName('Wbs').Value := connection.QryBusca.FieldValues['sWbs'] ;
                    connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
                    connection.QryBusca2.Params.ParamByName('Actividad').Value := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                    connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
                    connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
                    connection.QryBusca2.Open ;
                    dAvance := 0 ;
                    While NOT connection.QryBusca2.Eof Do
                    Begin
                        dAvance := dAvance + connection.QryBusca2.FieldValues['dAvance'] ;
                        connection.QryBusca2.Next ;
                    End ;
                    rxPartidasAvance.FieldValues['dAvanceReal'] := dAvance ;
                End
                Else
                    rxPartidasAvance.FieldValues['dAvanceReal'] := 100 ;

                If tdIdFecha.Date > connection.QryBusca.FieldValues['dFechaFinal'] Then
                    If rxPartidasAvance.FieldValues['dCantidadReal'] < rxPartidasAvance.FieldValues['dCantidadAnexo'] Then
                        rxPartidasAvance.FieldValues['iRetraso'] := tdIdFecha.Date - connection.QryBusca.FieldValues['dFechaFinal']
                    Else
                        rxPartidasAvance.FieldValues['iRetraso'] := 0
                Else
                    rxPartidasAvance.FieldValues['iRetraso'] := 0 ;

                If (rxPartidasAvance.FieldValues['dAvanceReal'] = 0) And (rxPartidasAvance.FieldValues['dCantidadReal'] > 0) Then
                    If rxPartidasAvance.FieldValues['dCantidadAnexo'] > 0 Then
                        rxPartidasAvance.FieldValues['dAvanceReal'] := (rxPartidasAvance.FieldValues['dCantidadReal'] / rxPartidasAvance.FieldValues['dCantidadAnexo']) * 100 ;
                rxPartidasAvance.Post ;
            End ;
            connection.QryBusca.Next ;
            progress.Progress := connection.QryBusca.RecNo ;
        End ;
        progress.Visible := False ;
        progress.Progress := 0 ;
        //Obtenemos Reporte en Dolares y M.N
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'RetrazosOrden.fr3');
           if not FileExists(global_files + 'RetrazosOrden.fr3') then
             showmessage('El archivo de reporte RetrazosOrden.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'RetrazosOrdenDLL.fr3');
           if not FileExists(global_files + 'RetrazosOrdenDLL.fr3') then
             showmessage('El archivo de reporte RetrazosOrdenDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        
    End ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar partidas con retraso', 0);
    end;
  end;
end;

procedure TfrmCompara.rptProgramadoGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'MI_FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;
  If CompareText(VarName, 'PROGRAMADO') = 0 then
      Value := avProgramado ;

  If CompareText(VarName, 'REAL') = 0 then
     Value := avFisico ;

  If CompareText(VarName, 'TEXTO') = 0 then
     If avProgramado > avFisico Then
          Value := 'ATRASO DEL '
     Else
          Value := 'AVANCE DEL ' ;

  If CompareText(VarName, 'DIFERENCIA') = 0 then
     If avProgramado > avFisico Then
          Value := avProgramado - avFisico
     Else
          Value := avFisico - avProgramado

end;

procedure TfrmCompara.btnDetalleGeneracionClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    rDiarioFirmas (global_contrato, '' , 'A',tdIdFecha.Date, frmCompara ) ;
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('Select e.iNumeroEstimacion, If( e.sTipoActividad = "Paquete", e.sWbs , ' +
                                'concat("      "  , e.sNumeroActividad)) as sConcepto, e.mDescripcion, e.sMedida, ' +
                                'If( e.sTipoActividad = "Paquete", 0 , e.dCantidadAnexo) as dCantidadAnexo, e.dVentaMN, e.dCantidad, e.dMontoMN ' +
                                'From actividadesxestimacion e ' +
                                'INNER JOIN estimacionperiodo e2 ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion And ' +
                                'e.iNumeroEstimacion <= :Estimacion And e2.lEstimado = "Si") ' +
                                'Where e.sContrato = :Contrato Order By e.iNumeroEstimacion, e.iItemOrden') ;
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
    connection.QryBusca.Params.ParamByName('Estimacion').DataType := ftString ;
    connection.QryBusca.Params.ParamByName('Estimacion').Value := tsNumeroEstimacion.KeyValue ;
    dsInforme.FieldAliases.Clear ;
    dsInforme.DataSet := connection.QryBusca ;
    connection.QryBusca.Open ;
    If MessageDlg('Desea imprimir el consolidado en Importes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        rInforme.LoadFromFile (global_files + 'ConcentradoEstimacionesDetalle.fr3');
        if not FileExists(global_files + 'ConcentradoEstimacionesDetalle.fr3') then
           showmessage('El archivo de reporte ConcentradoEstimacionesDetalle.fr3 no existe, notifique al administrador del sistema');

    end
    Else
        rInforme.LoadFromFile (global_files + 'ConcentradoEstimacionesDetalleVolumen.fr3') ;
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'ConcentradoEstimacionesDetalleVolumen.fr3') then
           showmessage('El archivo de reporte ConcentradoEstimacionesDetalleVolumen.fr3 no existe, notifique al administrador del sistema');
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'En el proceso Detalle generación por estimación', 0);
    end;
  end;
end;

procedure TfrmCompara.btnPersonalClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    If rbCantidad.Checked Then
    Begin
        If rxCantProgramada.RecordCount > 0 then
             rxCantProgramada.EmptyTable  ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.iItemOrden, a.sIdPersonal, a.sDescripcion, a.sMedida, year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, Sum(d.dCantidad) as dMensual from personal a ' +
                                    'inner join distribuciondepersonal d on (a.sContrato = d.sContrato And a.sIdPersonal = d.sIdPersonal) ' +
                                    'Where a.sContrato = :contrato Group By d.sContrato, d.sIdPersonal, Year(d.dIdFecha), month(d.dIdFecha) ' +
                                    'Order By a.iItemOrden, d.sIdPersonal, Year(d.dIdFecha), month(d.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;

        While NOT connection.QryBusca.Eof Do
        Begin
            rxCantProgramada.Append ;
            rxCantProgramada.FieldValues['sContrato'] := global_Contrato ;
            rxCantProgramada.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCantProgramada.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdPersonal'] ;
            rxCantProgramada.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCantProgramada.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCantProgramada.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCantProgramada.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCantProgramada.FieldValues['sRenglon'] := 'PROGRAMADO' ;
            rxCantProgramada.FieldValues['dCantidad'] := connection.QryBusca.FieldValues['dMensual'] ;
            rxCantProgramada.Post ;
            connection.QryBusca.Next
        End ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.iItemOrden, a.sIdPersonal, a.sDescripcion, a.sMedida, year(bp.dIdFecha) as dAnno , month(bp.dIdFecha) as dMes, Sum(bp.dCantidad) as dMensual from personal a ' +
                                    'inner join bitacoradepersonal bp on (a.sContrato = bp.sContrato And a.sIdPersonal = bp.sIdPersonal) ' +
                                    'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                                    'Where a.sContrato = :contrato Group By bp.sContrato, bp.sIdPersonal, Year(bp.dIdFecha), month(bp.dIdFecha) ' +
                                    'Order By a.iItemOrden, bp.sIdPersonal, Year(bp.dIdFecha), month(bp.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;

        While NOT connection.QryBusca.Eof Do
        Begin
            rxCantProgramada.Append ;
            rxCantProgramada.FieldValues['sContrato'] := global_Contrato ;
            rxCantProgramada.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCantProgramada.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdPersonal'] ;
            rxCantProgramada.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCantProgramada.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCantProgramada.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCantProgramada.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCantProgramada.FieldValues['sRenglon'] := 'REAL' ;
            rxCantProgramada.FieldValues['dCantidad'] := connection.QryBusca.FieldValues['dMensual'] ;
            rxCantProgramada.Post ;
            connection.QryBusca.Next
        End ;
        rInforme.LoadFromFile (global_files + 'PersonalCantidadProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'PersonalCantidadProgramadoReal.fr3') then
           showmessage('El archivo de reporte PersonalCantidadProgramadoReal.fr3 no existe, notifique al administrador del sistema');

    End
    Else
    Begin
        If rxCostoProgramado.RecordCount > 0 then
             rxCostoProgramado.EmptyTable  ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.iItemOrden, a.sIdPersonal, a.sDescripcion, a.sMedida, year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, Sum(d.dCantidad * a.dCostoMN) as dMensualMN from personal a ' +
                                    'inner join distribuciondepersonal d on (a.sContrato = d.sContrato And a.sIdPersonal = d.sIdPersonal) ' +
                                    'Where a.sContrato = :contrato Group By d.sContrato, d.sIdPersonal, Year(d.dIdFecha), month(d.dIdFecha) ' +
                                    'Order By a.iItemOrden, d.sIdPersonal, Year(d.dIdFecha), month(d.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;
        While NOT connection.QryBusca.Eof Do
        Begin
            rxCostoProgramado.Append ;
            rxCostoProgramado.FieldValues['sContrato'] := global_Contrato ;
            rxCostoProgramado.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCostoProgramado.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdPersonal'] ;
            rxCostoProgramado.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCostoProgramado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCostoProgramado.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCostoProgramado.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCostoProgramado.FieldValues['sRenglon'] := 'PROGRAMADO' ;
            rxCostoProgramado.FieldValues['dCostoMN'] := connection.QryBusca.FieldValues['dMensualMN'] ;
            rxCostoProgramado.Post ;
            connection.QryBusca.Next
        End ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.iItemOrden, a.sIdPersonal, a.sDescripcion, a.sMedida, year(bp.dIdFecha) as dAnno , month(bp.dIdFecha) as dMes, Sum(bp.dCantidad * bp.dCostoMN) as dMensualMN from personal a ' +
                                    'inner join bitacoradepersonal bp on (a.sContrato = bp.sContrato And a.sIdPersonal = bp.sIdPersonal) ' +
                                    'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                                    'Where a.sContrato = :contrato Group By bp.sContrato, bp.sIdPersonal, Year(bp.dIdFecha), month(bp.dIdFecha) ' +
                                    'Order By a.iItemOrden, bp.sIdPersonal, Year(bp.dIdFecha), month(bp.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;
        While NOT connection.QryBusca.Eof Do
        Begin
            rxCostoProgramado.Append ;
            rxCostoProgramado.FieldValues['sContrato'] := global_Contrato ;
            rxCostoProgramado.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCostoProgramado.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdPersonal'] ;
            rxCostoProgramado.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCostoProgramado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCostoProgramado.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCostoProgramado.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCostoProgramado.FieldValues['sRenglon'] := 'REAL' ;
            rxCostoProgramado.FieldValues['dCostoMN'] := connection.QryBusca.FieldValues['dMensualMN'] ;
            rxCostoProgramado.Post ;
            connection.QryBusca.Next
        End ;
        rInforme.LoadFromFile (global_files + 'PersonalCostoProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'PersonalCostoProgramadoReal.fr3') then
           showmessage('El archivo de reporte PersonalCostoProgramadoReal.fr3 no existe, notifique al administrador del sistema');
    End
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'En el proceso costo de instalación personal', 0);
    end;
  end;
end;

procedure TfrmCompara.btnEquiposClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    If rbCantidad.Checked Then
    Begin
        If rxCantProgramada.RecordCount > 0 then
             rxCantProgramada.EmptyTable  ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.*, year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, Sum(d.dCantidad) as dMensual from equipos a ' +
                             'inner join distribuciondeequipos d on (a.sContrato = d.sContrato And a.sIdEquipo = d.sIdEquipo) ' +
                             'Where a.sContrato = :contrato Group By d.sContrato, d.sIdEquipo, Year(d.dIdFecha), month(d.dIdFecha) ' +
                             'Order By a.iItemOrden, d.sIdEquipo, Year(d.dIdFecha), month(d.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;
        While NOT connection.QryBusca.Eof Do
        Begin
            rxCantProgramada.Append ;
            rxCantProgramada.FieldValues['sContrato'] := global_Contrato ;
            rxCantProgramada.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCantProgramada.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
            rxCantProgramada.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCantProgramada.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCantProgramada.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCantProgramada.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCantProgramada.FieldValues['sRenglon'] := 'PROGRAMADO' ;
            rxCantProgramada.FieldValues['dCantidad'] := connection.QryBusca.FieldValues['dMensual'] ;
            rxCantProgramada.Post ;
            connection.QryBusca.Next
        End ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.*, year(bp.dIdFecha) as dAnno , month(bp.dIdFecha) as dMes, Sum(bp.dCantidad) as dMensual from equipos a ' +
                             'inner join bitacoradeequipos bp on (a.sContrato = bp.sContrato And a.sIdEquipo = bp.sIdEquipo) ' +
                             'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                             'Where a.sContrato = :contrato Group By bp.sContrato, bp.sIdEquipo, Year(bp.dIdFecha), month(bp.dIdFecha) ' +
                             'Order By a.iItemOrden, bp.sIdEquipo, Year(bp.dIdFecha), month(bp.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;

        While NOT connection.QryBusca.Eof Do
        Begin
            rxCantProgramada.Append ;
            rxCantProgramada.FieldValues['sContrato'] := global_Contrato ;
            rxCantProgramada.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCantProgramada.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
            rxCantProgramada.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCantProgramada.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCantProgramada.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCantProgramada.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCantProgramada.FieldValues['sRenglon'] := 'REAL' ;
            rxCantProgramada.FieldValues['dCantidad'] := connection.QryBusca.FieldValues['dMensual'] ;
            rxCantProgramada.Post ;
            connection.QryBusca.Next
        End ;
        rInforme.LoadFromFile (global_files + 'EquiposCantidadProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'EquiposCantidadProgramadoReal.fr3') then
           showmessage('El archivo de reporte EquiposCantidadProgramadoReal.fr3 no existe, notifique al administrador del sistema');
    End
    Else
    Begin
        If rxCostoProgramado.RecordCount > 0 then
             rxCostoProgramado.EmptyTable  ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.iItemOrden, a.sIdEquipo, a.sDescripcion, a.sMedida, year(d.dIdFecha) as dAnno , month(d.dIdFecha) as dMes, Sum(d.dCantidad * a.dCostoMN) as dMensualMN from equipos a ' +
                             'inner join distribuciondeequipos d on (a.sContrato = d.sContrato And a.sIdEquipo = d.sIdEquipo) ' +
                             'Where a.sContrato = :contrato Group By d.sContrato, d.sIdEquipo, Year(d.dIdFecha), month(d.dIdFecha) ' +
                             'Order By a.iItemOrden, d.sIdEquipo, Year(d.dIdFecha), month(d.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;

        While NOT connection.QryBusca.Eof Do
        Begin
            rxCostoProgramado.Append ;
            rxCostoProgramado.FieldValues['sContrato'] := global_Contrato ;
            rxCostoProgramado.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCostoProgramado.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
            rxCostoProgramado.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCostoProgramado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCostoProgramado.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCostoProgramado.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCostoProgramado.FieldValues['sRenglon'] := 'PROGRAMADO' ;
            rxCostoProgramado.FieldValues['dCostoMN'] := connection.QryBusca.FieldValues['dMensualMN'] ;
            rxCostoProgramado.Post ;
            connection.QryBusca.Next
        End ;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select a.iItemOrden, a.sIdEquipo, a.sDescripcion, a.sMedida, year(bp.dIdFecha) as dAnno , month(bp.dIdFecha) as dMes, Sum(bp.dCantidad * bp.dCostoMN) as dMensualMN from equipos a ' +
                             'inner join bitacoradeequipos bp on (a.sContrato = bp.sContrato And a.sIdEquipo = bp.sIdEquipo) ' +
                             'inner join bitacoradeactividades b ON (b.sContrato = bp.sContrato and b.dIdFecha = bp.dIdFecha And b.iIdDiario = bp.iIdDiario) ' +
                             'Where a.sContrato = :contrato Group By bp.sContrato, bp.sIdEquipo, Year(bp.dIdFecha), month(bp.dIdFecha) ' +
                             'Order By a.iItemOrden, bp.sIdEquipo, Year(bp.dIdFecha), month(bp.dIdFecha)') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
        connection.QryBusca.Open ;

        While NOT connection.QryBusca.Eof Do
        Begin
            rxCostoProgramado.Append ;
            rxCostoProgramado.FieldValues['sContrato'] := global_Contrato ;
            rxCostoProgramado.FieldValues['iItemOrden'] := connection.QryBusca.FieldValues['iItemOrden'] ;
            rxCostoProgramado.FieldValues['sIdClave'] := connection.QryBusca.FieldValues['sIdEquipo'] ;
            rxCostoProgramado.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'] ;
            rxCostoProgramado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
            rxCostoProgramado.FieldValues['iAnno'] := connection.QryBusca.FieldValues['dAnno'] ;
            rxCostoProgramado.FieldValues['iMes'] := connection.QryBusca.FieldValues['dMes'] ;
            rxCostoProgramado.FieldValues['sRenglon'] := 'REAL' ;
            rxCostoProgramado.FieldValues['dCostoMN'] := connection.QryBusca.FieldValues['dMensualMN'] ;
            rxCostoProgramado.Post ;
            connection.QryBusca.Next
        End ;
        rInforme.LoadFromFile (global_files + 'EquiposCostoProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'EquiposCostoProgramadoReal.fr3') then
           showmessage('El archivo de reporte EquiposCostoProgramadoReal.fr3 no existe, notifique al administrador del sistema');
    End
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'En el proceso costo de instalación de equipos', 0);
    end;
  end;
end;

procedure TfrmCompara.tsNumeroOrdenChange(Sender: TObject);
begin
 try
  roqOrdenes.Locate('snumeroorden', tsNumeroOrden.Text, []);
 except
  on e : exception do begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al seleccionar el frente de trabajo', 0);
  end;
 end;
end;

procedure TfrmCompara.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmCompara.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmCompara.tsFiltroEnter(Sender: TObject);
begin
    tsFiltro.Color := global_color_entrada
end;

procedure TfrmCompara.tsFiltroExit(Sender: TObject);
begin
    tsFiltro.Color := global_color_salida
end;

procedure TfrmCompara.tsFiltroKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsOrdenado.SetFocus 
end;

procedure TfrmCompara.tsOrdenadoEnter(Sender: TObject);
begin
    tsOrdenado.Color := global_color_entrada
end;

procedure TfrmCompara.tsOrdenadoExit(Sender: TObject);
begin
    tsOrdenado.Color := global_color_salida
end;

procedure TfrmCompara.tsOrdenadoKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        btnPartidasRetraso.SetFocus 
end;

procedure TfrmCompara.rptProgramadoOTGetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'MI_FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;

  If CompareText(VarName, 'PROGRAMADO') = 0 then
      Value := avProgramado ;

  If CompareText(VarName, 'REAL') = 0 then
     Value := avFisico ;

  If CompareText(VarName, 'TEXTO') = 0 then
     If avProgramado > avFisico Then
          Value := 'ATRASO DEL '
     Else
          Value := 'AVANCE DEL ' ;

  If CompareText(VarName, 'DIFERENCIA') = 0 then
     If avProgramado > avFisico Then
          Value := avProgramado - avFisico
     Else
          Value := avFisico - avProgramado
end;

procedure TfrmCompara.btnPanelExit(Sender: TObject);
Var
    lFiltro        : Boolean ;
    lCambio        : Boolean ;
    dGenerado      : Double ;
    dCantidadTotal : Double ;
    dReportado     : Double ;
begin
 If rxAnexoGenerado.RecordCount > 0 Then
        rxAnexoGenerado.EmptyTable ;

 If sOpcion <> '' Then
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dInstalado ' +
                              'From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By iItemOrden')
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
                connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dInstalado ' +
                                  'From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By dPonderado DESC')
            Else
                connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dInstalado ' +
                                  'From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By (dCantidadAnexo * dVentaMN) DESC') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        connection.QryBusca.Open ;
        While NOT connection.QryBusca.Eof Do
        Begin
            lFiltro := False ;
            lCambio := False ;

            If Connection.qryBusca.FieldValues['dInstalado'] > 0 Then
                dReportado := Connection.qryBusca.FieldValues['dInstalado']
            Else
                dReportado := 0 ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(a.dCantidad) as dGenerado FROM estimacionxpartida a ' +
                                         'INNER JOIN estimaciones e ON (a.sContrato = e.sContrato And a.sNumeroOrden = e.sNumeroOrden And ' +
                                         'a.sNumeroGenerador = e.sNumeroGenerador And e.dFechaFinal <= :Fecha And e.lStatus = "Autorizado") ' +
                                         'Where a.sContrato = :contrato And a.sNumeroActividad = :Actividad Group By a.sNumeroActividad ') ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Actividad').Value := Connection.qryBusca.FieldValues['sNumeroActividad'] ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
                dGenerado := Connection.qryBusca2.FieldValues['dGenerado']
            Else
                dGenerado := 0 ;

            If sOpcion = 'Terminadas' Then
            Begin
                If dGenerado = Connection.qryBusca.FieldValues['dCantidadAnexo'] Then
                    lFiltro := True
            End
            Else
                If sOpcion = 'Adicionales' Then
                Begin
                    If dGenerado > Connection.qryBusca.FieldValues['dCantidadAnexo'] Then
                        lFiltro := True
                End
                Else
                    If sOpcion = 'Sin Generar' Then
                    Begin
                        If dGenerado = 0 Then
                            lFiltro := True
                    End
                    Else
                        If sOpcion = 'Pendientes' Then
                        Begin
                            If dGenerado < Connection.qryBusca.FieldValues['dCantidadAnexo'] Then
                                lFiltro := True
                        End
                        Else
                           If sOpcion = 'Generadas' Then
                           Begin
                                If dGenerado > 0 Then
                                   lFiltro := True
                           End
                           Else
                               If sOpcion = 'Reportadas' Then
                               Begin
                                   lFiltro := True;
                                   lCambio := True;
                               End
                               Else
                                   lFiltro := True ;

            If lFiltro and lCambio Then
            begin
               if dReportado > 0 then
               begin
                    rxAnexoGenerado.Append ;
                    rxAnexoGenerado.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                    rxAnexoGenerado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
                    rxAnexoGenerado.FieldValues['mDescripcion'] := MidStr(connection.QryBusca.FieldValues['mDescripcion'], 1, 100) + ' ..' ;
                    rxAnexoGenerado.FieldValues['dCantidadAnexo'] := connection.QryBusca.FieldValues['dCantidadAnexo'] ;
                    rxAnexoGenerado.FieldValues['dPonderado'] := connection.QryBusca.FieldValues['dPonderado'] ;
                    rxAnexoGenerado.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                    rxAnexoGenerado.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                    rxAnexoGenerado.FieldValues['dGenerado'] := dGenerado ;
                    rxAnexoGenerado.FieldValues['dAdicional'] := dReportado;
                    rxAnexoGenerado.FieldValues['lTitulo'] := 'VOL. REPORTADO';

                    If dGenerado < connection.QryBusca.FieldValues['dCantidadAnexo'] Then
                        rxAnexoGenerado.FieldValues['dPendiente'] := dReportado - dGenerado ;
                    rxAnexoGenerado.Post ;
               end;
            End;

            If lFiltro and lCambio = False Then
            begin
                    rxAnexoGenerado.Append ;
                    rxAnexoGenerado.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                    rxAnexoGenerado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
                    rxAnexoGenerado.FieldValues['mDescripcion'] := MidStr(connection.QryBusca.FieldValues['mDescripcion'], 1, 100) + ' ..' ;
                    rxAnexoGenerado.FieldValues['dCantidadAnexo'] := connection.QryBusca.FieldValues['dCantidadAnexo'] ;
                    rxAnexoGenerado.FieldValues['dPonderado'] := connection.QryBusca.FieldValues['dPonderado'] ;
                    rxAnexoGenerado.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                    rxAnexoGenerado.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                    rxAnexoGenerado.FieldValues['dGenerado'] := dGenerado ;
                    rxAnexoGenerado.FieldValues['lTitulo'] := 'VOL. ADICIONAL';

                    If dGenerado >= connection.QryBusca.FieldValues['dCantidadAnexo'] Then
                    begin
                         rxAnexoGenerado.FieldValues['dAdicional'] := dGenerado - connection.QryBusca.FieldValues['dCantidadAnexo'] ;
                    end;

                    If dGenerado < connection.QryBusca.FieldValues['dCantidadAnexo'] Then
                        rxAnexoGenerado.FieldValues['dPendiente'] := connection.QryBusca.FieldValues['dCantidadAnexo'] - dGenerado ;
                    rxAnexoGenerado.Post ;
            End;

            connection.QryBusca.Next
        End ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := rxAnexoGenerado ;

        //Reportes en Dolares y en M.N.
        if chkMN.Checked = True then
        begin
           If sOpcion = 'Reportadas' Then
           begin
              rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptos2.fr3');
        if not FileExists(global_files + 'EstatusGeneradoConceptos2.fr3') then
           showmessage('El archivo de reporte EstatusGeneradoConceptos2.fr3 no existe, notifique al administrador del sistema');
           end
           Else
           begin
              rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptos.fr3') ;
              if not FileExists(global_files + 'EstatusGeneradoConceptos.fr3') then
           showmessage('El archivo de reporte EstatusGeneradoConceptos.fr3 no existe, notifique al administrador del sistema');
           end;
         end
        else
        begin
            If sOpcion = 'Reportadas' Then
            begin
               rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptos2DLL.fr3');
            if not FileExists(global_files + 'EstatusGeneradoConceptos2DLL.fr3') then
            showmessage('El archivo de reporte EstatusGeneradoConceptos2DLL.fr3 no existe, notifique al administrador del sistema');

            end
            Else
            begin
               rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptosDLL.fr3') ;
            if not FileExists(global_files + 'EstatusGeneradoConceptosDLL.fr3') then
            showmessage('El archivo de reporte EstatusGeneradoConceptosDLL.fr3 no existe, notifique al administrador del sistema');


            end;
        end;

        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

    End
    Else
    Begin
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, dPonderado, sMedida, Sum(dCantidad) as dCantidadAnexo, dVentaMN, dVentaDLL, dInstalado From actividadesxorden a ' +
                              'Where sContrato = :contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" And sNumeroOrden = :Orden And sTipoActividad = "Actividad" Group By sNumeroActividad Order By iItemOrden')
         Else
            If tsOrdenado.Text = 'PONDERADO' Then
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, dPonderado, sMedida, Sum(dCantidad) as dCantidadAnexo, dVentaMN, dVentaDLL, dInstalado From actividadesxorden a ' +
                              'Where sContrato = :contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" And sNumeroOrden = :Orden And sTipoActividad = "Actividad" Group By sNumeroActividad Order By dPonderado DESC')
            Else
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, dPonderado, sMedida, Sum(dCantidad) as dCantidadAnexo, dVentaMN, dVentaDLL, dInstalado From actividadesxorden a ' +
                              'Where sContrato = :contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" And sNumeroOrden = :Orden And sTipoActividad = "Actividad" Group By sNumeroActividad Order By (dCantidad * dVentaMN) DESC') ;
        connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
        connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
        connection.QryBusca.Params.ParamByName('Orden').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        connection.QryBusca.Open ;
        While NOT connection.QryBusca.Eof Do
        Begin
            lFiltro := False ;
            lCambio := False ;

            If Connection.qryBusca.FieldValues['dInstalado'] > 0 Then
                dReportado := Connection.qryBusca.FieldValues['dInstalado']
            Else
                dReportado := 0 ;

            If NOT connection.QryBusca.FieldByName('dCantidadAnexo').IsNull Then
                dCantidadTotal  := connection.QryBusca.FieldValues['dCantidadAnexo']
            Else
                dCantidadTotal  := 0 ;

            Connection.qryBusca2.Active := False ;
            Connection.qryBusca2.SQL.Clear ;
            Connection.qryBusca2.SQL.Add('Select Sum(a.dCantidad) as dGenerado FROM estimacionxpartida a ' +
                                         'INNER JOIN estimaciones e ON (a.sContrato = e.sContrato And a.sNumeroOrden = e.sNumeroOrden And ' +
                                         'a.sNumeroGenerador = e.sNumeroGenerador And e.dFechaFinal <= :Fecha And e.lStatus = "Autorizado") ' +
                                         'Where a.sContrato = :contrato and a.sNumeroOrden = :Orden And a.sNumeroActividad = :Actividad Group By a.sNumeroActividad ') ;
            Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
            Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
            Connection.qryBusca2.Params.ParamByName('Actividad').Value := connection.QryBusca.FieldValues['sNumeroActividad'] ;
            Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
            Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
            Connection.qryBusca2.Open ;
            If Connection.qryBusca2.RecordCount > 0 Then
                dGenerado := Connection.qryBusca2.FieldValues['dGenerado']
            Else
                dGenerado := 0 ;

            If sOpcion = 'Terminadas' Then
            Begin
                If dGenerado = dCantidadTotal Then
                    lFiltro := True
            End
            Else
                If sOpcion = 'Adicionales' Then
                Begin
                   If dGenerado > dCantidadTotal Then
                       lFiltro := True
                End
                Else
                   If sOpcion = 'Sin Generar' Then
                   Begin
                       If dGenerado = 0 Then
                           lFiltro := True
                   End
                   Else
                       If tsFiltro.Text = 'Pendientes' Then
                       Begin
                           If dGenerado < dCantidadTotal Then
                               lFiltro := True
                       End
                       Else
                           If sOpcion = 'Generadas' Then
                           Begin
                                If dGenerado > 0 Then
                                   lFiltro := True
                           End
                             Else
                              If sOpcion = 'Reportadas' Then
                               Begin
                                   lFiltro := True;
                                   lCambio := True;
                               End
                                 Else
                                    lFiltro := True ;
            If lFiltro and lCambio Then
            begin
               if dReportado > 0 then
               begin
                    rxAnexoGenerado.Append ;
                    rxAnexoGenerado.FieldValues['sNumeroOrden'] := tsNumeroOrden.Text ;
                    rxAnexoGenerado.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                    rxAnexoGenerado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
                    rxAnexoGenerado.FieldValues['mDescripcion'] := MidStr(connection.QryBusca.FieldValues['mDescripcion'],1 ,100 ) + '..' ;
                    rxAnexoGenerado.FieldValues['dCantidadAnexo'] := dCantidadTotal ;
                    rxAnexoGenerado.FieldValues['dPonderado'] := connection.QryBusca.FieldValues['dPonderado'] ;
                    rxAnexoGenerado.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                    rxAnexoGenerado.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                    rxAnexoGenerado.FieldValues['dGenerado'] := dGenerado ;
                    rxAnexoGenerado.FieldValues['lTitulo'] := 'VOL. REPORTADO';
                    rxAnexoGenerado.FieldValues['dAdicional'] := dReportado ;
                    If dGenerado < dCantidadTotal Then
                        rxAnexoGenerado.FieldValues['dPendiente'] := dReportado - dGenerado ;
                    rxAnexoGenerado.Post ;
               end;
            End;

            If lFiltro and lCambio = False Then
            begin
                rxAnexoGenerado.Append ;
                rxAnexoGenerado.FieldValues['sNumeroOrden'] := tsNumeroOrden.Text ;
                rxAnexoGenerado.FieldValues['sNumeroActividad'] := connection.QryBusca.FieldValues['sNumeroActividad'] ;
                rxAnexoGenerado.FieldValues['sMedida'] := connection.QryBusca.FieldValues['sMedida'] ;
                rxAnexoGenerado.FieldValues['mDescripcion'] := MidStr(connection.QryBusca.FieldValues['mDescripcion'],1 ,100 ) + '..' ;
                rxAnexoGenerado.FieldValues['dCantidadAnexo'] := dCantidadTotal ;
                rxAnexoGenerado.FieldValues['dPonderado'] := connection.QryBusca.FieldValues['dPonderado'] ;
                rxAnexoGenerado.FieldValues['dVentaMN'] := connection.QryBusca.FieldValues['dVentaMN'] ;
                rxAnexoGenerado.FieldValues['dVentaDLL'] := connection.QryBusca.FieldValues['dVentaDLL'] ;
                rxAnexoGenerado.FieldValues['dGenerado'] := dGenerado ;
                rxAnexoGenerado.FieldValues['lTitulo'] := 'VOL. ADICIONAL';
                If dGenerado >= dCantidadTotal Then
                    rxAnexoGenerado.FieldValues['dAdicional'] := dGenerado - dCantidadTotal ;
                If dGenerado < dCantidadTotal Then
                    rxAnexoGenerado.FieldValues['dPendiente'] := dCantidadTotal - dGenerado ;
                rxAnexoGenerado.Post ;
            End ;


            connection.QryBusca.Next
        End ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := rxAnexoGenerado ;
        //Reportes en Dolares y Moneda Nacional
        if chkMN.Checked = True then
        begin
            If sOpcion = 'Reportadas' Then
            begin
               rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptosOrden2.fr3');
        if not FileExists(global_files + 'EstatusGeneradoConceptosOrden2.fr3') then
           showmessage('El archivo de reporte EstatusGeneradoConceptosOrden2.fr3 no existe, notifique al administrador del sistema');

            end
            Else
            begin
               rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptosOrden.fr3') ;
         if not FileExists(global_files + 'EstatusGeneradoConceptosOrden.fr3') then
           showmessage('El archivo de reporte EstatusGeneradoConceptosOrden.fr3 no existe, notifique al administrador del sistema');

            end;
        end
        else
        begin
           If sOpcion = 'Reportadas' Then
           begin
               rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptosOrden2DLL.fr3');
        if not FileExists(global_files + 'EstatusGeneradoConceptosOrden2DLL.fr3') then
           showmessage('El archivo de reporte EstatusGeneradoConceptosOrden2DLL.fr3 no existe, notifique al administrador del sistema');

           end
           Else
           begin
               rInforme.LoadFromFile (global_files + 'EstatusGeneradoConceptosOrdenDLL.fr3') ;
        if not FileExists(global_files + 'EstatusGeneradoConceptosOrdenDLL.fr3') then
           showmessage('El archivo de reporte EstatusGeneradoConceptosOrdenDLL.fr3 no existe, notifique al administrador del sistema');

           end;
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
    End ;

    btnPanel.Visible := False
end;

procedure TfrmCompara.btnTerminadasClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
    sOpcion := 'Terminadas' ;
    tdIdFecha.SetFocus
end;

procedure TfrmCompara.btnAdicionalesClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
    sOpcion := 'Adicionales' ;
    tdIdFecha.SetFocus
end;

procedure TfrmCompara.btnPendientesClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
    sOpcion := 'Pendientes' ;
    tdIdFecha.SetFocus
end;

procedure TfrmCompara.btnTodasClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
    sOpcion := 'Generadas' ;
    tdIdFecha.SetFocus
end;

procedure TfrmCompara.btTrinomiodllClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    rDiarioFirmas (global_contrato, '' , 'A',tdIdFecha.Date, frmCompara ) ;
    If MessageDlg('Desea imprimir el consolidado de todas las estimaciones seleccionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
        Reporte.Active := False ;
        Reporte.SQL.Clear ;
        Reporte.SQL.Add('Select ct.*, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, Sum(e.dCantidad * a.dVentaDLL) as dEstimado From estimacionxpartida e ' +
                        'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.lStatus = "Autorizado") ' +
                        'INNER JOIN contrato_trinomio ct ON (e.sContrato = ct.sContrato And e.sInstalacion = ct.sInstalacion) ' +
                        'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                        'Where e.sContrato = :Contrato And e.lEstima = "Si" ' +
                        'Group By ct.sInstalacion, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador') ;
        Reporte.Params.ParamByName('Contrato').DataType := ftString ;
        Reporte.Params.ParamByName('Contrato').Value := global_Contrato ;
        Reporte.Params.ParamByName('Convenio').DataType := ftString ;
        Reporte.Params.ParamByName('Convenio').Value := sConvenio ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := Reporte ;
        Reporte.Open ;
    End
    Else
    Begin
     if length(vartostr(Connection.EstimacionPeriodo.FieldValues['dFechaFinal']))>0 then
     begin
        Reporte.Active := False ;
        Reporte.SQL.Clear ;
        Reporte.SQL.Add('Select ct.*, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, Sum(e.dCantidad * a.dVentaDLL) as dEstimado From estimacionxpartida e ' +
                        'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.lStatus = "Autorizado" ' +
                                                       'And Month(e2.dFechaFinal) = :Mes And Year(e2.dFechaFinal) = :Anno) ' +
                        'INNER JOIN contrato_trinomio ct ON (e.sContrato = ct.sContrato And e.sInstalacion = ct.sInstalacion) ' +
                        'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                        'Where e.sContrato = :Contrato And e.lEstima = "Si" ' +
                        'Group By ct.sInstalacion, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador') ;
        Reporte.Params.ParamByName('Contrato').DataType := ftString ;
        Reporte.Params.ParamByName('Contrato').Value := global_Contrato ;
        Reporte.Params.ParamByName('Convenio').DataType := ftString ;
        Reporte.Params.ParamByName('Convenio').Value := sConvenio ;
        Reporte.Params.ParamByName('Mes').DataType := ftInteger ;
        Reporte.Params.ParamByName('Mes').Value := MonthOf(Connection.EstimacionPeriodo.FieldValues['dFechaFinal']) ;
        Reporte.Params.ParamByName('Anno').DataType := ftInteger ;
        Reporte.Params.ParamByName('Anno').Value := YearOf(Connection.EstimacionPeriodo.FieldValues['dFechaFinal']) ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := Reporte ;
        Reporte.Open ;
     end;
    End ;
    rInforme.LoadFromFile (global_files + 'TrinomioConcentrado.fr3');
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    if not FileExists(global_files + 'TrinomioConcentrado.fr3') then
     showmessage('El archivo de reporte TrinomioConcentrado.fr3 no existe, notifique al administrador del sistema');
//    frxTrinomio.ShowReport

  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'En el proceso Acumulado de generación trinomio DLL', 0);
    end;
  end;
end;

procedure TfrmCompara.cmdComparativoClick(Sender: TObject);
var
    wbsContrato: string;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    RxMDValida.Active := True;
    If RxMDValida.RecordCount > 0 then
        RxMDValida.EmptyTable ;

    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('select sWbsContrato from actividadesxorden WHERE sContrato = :contrato AND sIdConvenio = :convenio AND sTipoActividad = "Actividad" group by sWbsContrato') ;
    connection.qryBusca2.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca2.ParamByName('convenio').Value := global_convenio;
    Connection.qryBusca2.Open ;

    if Connection.qryBusca2.RecordCount > 0 then
    begin
      Progress.Visible := True ;
      Progress.MinValue := 0 ;
      Progress.MaxValue := connection.QryBusca2.RecordCount ;
    end;

    while not connection.qryBusca2.Eof do begin
        wbsContrato := connection.qryBusca2.FieldByName('sWbsContrato').AsString;
        if wbsContrato <> '' then
            ventasDiferentes(wbsContrato, cantidadesDiferentes(wbsContrato));
        connection.qryBusca2.Next;
        Progress.Progress := connection.qryBusca2.RecNo;
    end;

    if RxMDValida.RecordCount > 0 then begin
        rInforme.LoadFromFile (global_files + 'validaActOrden.fr3') ;
        rInforme.PreviewOptions.MDIChild := True ;
        rInforme.PreviewOptions.Modal := False ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'validaActOrden.fr3') then
           showmessage('El archivo de reporte validaActOrden.fr3 no existe, notifique al administrador del sistema');

    end
    else
       messageDLG('No existen diferencias entre el Anexo C y los Frentes!', mtInformation, [mbOk], 0);
    Progress.Visible := False ;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar comparativo de programa de trabajo del anexo C ', 0);
    end;
  end;
end;

procedure TfrmCompara.chkDLLClick(Sender: TObject);
begin
      chkMN.Checked  := False;
end;

procedure TfrmCompara.chkDLLEnter(Sender: TObject);
begin
     chkMN.Checked  := False;
end;

procedure TfrmCompara.cmdConceptosClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('select sTipoObra from contratos where sContrato =:Contrato') ;
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.Open ;

    if Connection.qryBusca2.FieldValues['sTipoObra']= 'PROGRAMADA' then
    begin
        If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
        Begin
          qryBuscaP.Active := False ;
          qryBuscaP.SQL.Clear ;
          If tsOrdenado.Text = 'ANEXO "C"' Then
              qryBuscaP.SQL.Add('select b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, '+
                                'a.mDescripcion, a.dCantidadAnexo, a.sMedida from actividadesxanexo a '+
                                'inner join bitacoradeactividades b '+
                                'on(b.sContrato = a.sContrato and b.dIdFecha >=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroActividad = a.sNumeroActividad '+
                                'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                                'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" and sIdFase = "" '+
                                'order by b.sNumeroActividad, a.iItemOrden')
          else
              MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );
          qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
          qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
          qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
          qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
          qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
          qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
          qryBuscaP.Open ;
          rInforme.LoadFromFile (global_files + 'AvancesxPartida.fr3') ;
          rInforme.PreviewOptions.MDIChild := False ;
          rInforme.PreviewOptions.Modal := True ;
          rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
          rInforme.PreviewOptions.ShowCaptions := False ;
          rInforme.Previewoptions.ZoomMode := zmPageWidth ;
          rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'AvancesxPartida.fr3') then
           showmessage('El archivo de reporte AvancesxPartida.fr3 no existe, notifique al administrador del sistema');

      end
      else
      Begin
        qryBuscaP.Active := False ;
        qryBuscaP.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            qryBuscaP.SQL.Add('select b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, '+
                              'a.mDescripcion, a.dCantidadAnexo, a.sMedida from actividadesxanexo a '+
                              'inner join bitacoradeactividades b '+
                              'on(b.sContrato = a.sContrato and b.dIdFecha>=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroOrden =:Orden and b.sNumeroActividad = a.sNumeroActividad '+
                              'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                              'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" and sIdFase = "" '+
                              'order by b.sNumeroActividad, a.iItemOrden')
        else
            MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );
        qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
        qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
        qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
        qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
        qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
        qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
        qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
        qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
        qryBuscaP.Params.ParamByName('Orden').DataType := ftString ;
        qryBuscaP.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        qryBuscaP.Open ;
        rInforme.LoadFromFile (global_files + 'AvancesxPartida.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'AvancesxPartida.fr3') then
           showmessage('El archivo de reporte AvancesxPartida.fr3 no existe, notifique al administrador del sistema');
    end
    end;

    if (Connection.qryBusca2.FieldValues['sTipoObra']= 'OPTATIVA') then
    begin
        If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
        Begin
            MessageDlg( 'No se pude Filtrar por esta Opcion, Seleccione Frente de Trabajo', mtWarning, [ mbOk ], 0 );
        end
        else
        Begin
          qryBuscaP.Active := False ;
          qryBuscaP.SQL.Clear ;
          If tsOrdenado.Text = 'ANEXO "C"' Then
            qryBuscaP.SQL.Add('select b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, '+
                              'a.mDescripcion, a.dCantidad as total, a.sMedida from actividadesxorden a '+
                              'inner join bitacoradeactividades b '+
                              'on(b.sContrato = a.sContrato and b.dIdFecha>=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroOrden =:Orden and b.sNumeroActividad = a.sNumeroActividad '+
                              'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                              'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" and '+
                              '(a.sMedida = "ACTIV" or a.sMedida = "ACTIVID" or a.sMedida = "ACTIVIDAD") '+
                              'order by a.sNumeroActividad, a.iItemOrden')
          else
             MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );
          qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
          qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
          qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
          qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
          qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
          qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
          qryBuscaP.Params.ParamByName('Orden').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
          qryBuscaP.Open ;

          rInforme.LoadFromFile (global_files + 'AvancesxPartidaOpt.fr3') ;
          rInforme.PreviewOptions.MDIChild := False ;
          rInforme.PreviewOptions.Modal := True ;
          rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
          rInforme.PreviewOptions.ShowCaptions := False ;
          rInforme.Previewoptions.ZoomMode := zmPageWidth ;
          rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'AvancesxPartidaOpt.fr3') then
           showmessage('El archivo de reporte AvancesxPartidaOpt.fr3 no existe, notifique al administrador del sistema');
    end
    end;

    if (Connection.qryBusca2.FieldValues['sTipoObra']= 'MIXTA') then
    begin
        If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
        Begin
            MessageDlg( 'No se pude Filtrar por esta Opcion, Seleccione Frente de Trabajo', mtWarning, [ mbOk ], 0 );
        end
        else
        Begin
          qryBuscaP.Active := False ;
          qryBuscaP.SQL.Clear ;
          If tsOrdenado.Text = 'ANEXO "C"' Then
            qryBuscaP.SQL.Add('select b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, '+
                              'a.mDescripcion, a.dCantidad as total, a.sMedida, a.sWbsAnterior from actividadesxorden a '+
                              'inner join bitacoradeactividades b '+
                              'on(b.sContrato = a.sContrato and b.dIdFecha>=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroOrden =:Orden and b.sNumeroActividad = a.sNumeroActividad and b.sWbs = a.sWbs '+
                              'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                              'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" '+
                              'order by a.sWbsAnterior, a.sNumeroActividad, a.iItemOrden')
          else
             MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );
          qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
          qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
          qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
          qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
          qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
          qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
          qryBuscaP.Params.ParamByName('Orden').DataType := ftString ;
          qryBuscaP.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
          qryBuscaP.Open ;

          rInforme.LoadFromFile (global_files + 'AvancesxPartidaOpt.fr3') ;
          rInforme.PreviewOptions.MDIChild := False ;
          rInforme.PreviewOptions.Modal := True ;
          rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
          rInforme.PreviewOptions.ShowCaptions := False ;
          rInforme.Previewoptions.ZoomMode := zmPageWidth ;
          rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'AvancesxPartidaOpt.fr3') then
           showmessage('El archivo de reporte AvancesxPartidaOpt.fr3 no existe, notifique al administrador del sistema');
      end
    end;

  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar avances x partidas', 0);
    end;
  end;
end;

//soad -> Reporte para verificar las paridas Excedidas ...
//******************************************************************************
procedure TfrmCompara.cmdExcedentesClick(Sender: TObject);
var
   lContinua : boolean;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    lContinua := False;
    Connection.qryBusca2.Active := False ;
    Connection.qryBusca2.SQL.Clear ;
    Connection.qryBusca2.SQL.Add('select sTipoObra from contratos where sContrato =:Contrato') ;
    Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca2.Open ;

    if (Connection.qryBusca2.FieldValues['sTipoObra']= 'PROGRAMADA') or (Connection.qryBusca2.FieldValues['sTipoObra']= 'MIXTA') or (Connection.qryBusca2.FieldValues['sTipoObra']= 'OPTATIVA' ) then
    begin
      If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
      Begin
          qryBuscaP.Active := False ;
          qryBuscaP.SQL.Clear ;
          If tsOrdenado.Text = 'ANEXO "C"' Then
          begin
              qryBuscaP.SQL.Add('select a.sWbs, b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, b.dAvanceAnterior, (b.dAvanceActual + b.dAvanceAnterior) as Avance, a.dExcedente, '+
                                'a.mDescripcion, a.dCantidadAnexo, a.dInstalado, a.sMedida, b.dCantidadActual, b.dCantidadAnterior from actividadesxanexo a '+
                                'inner join bitacoradeactividades b '+
                                'on(b.sContrato = a.sContrato and b.dIdFecha >=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroActividad = a.sNumeroActividad '+
                                'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                                'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" and a.dExcedente > 0 '+
                                'order by b.sNumeroActividad, a.iItemOrden');
              qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
              qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
              qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
              qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
              qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
              qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
              qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
              qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
              qryBuscaP.Open ;
              lContinua := True;
          end
          else
              MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );
      end
      else
      Begin
        qryBuscaP.Active := False ;
        qryBuscaP.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
        begin
            qryBuscaP.SQL.Add('select a.sWbs, b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, b.dAvanceAnterior, (b.dAvanceActual + b.dAvanceAnterior) as Avance , a.dExcedente, '+
                              'a.mDescripcion, a.dCantidadAnexo, a.dInstalado, a.sMedida, b.dCantidadActual, b.dCantidadAnterior from actividadesxanexo a '+
                              'inner join bitacoradeactividades b '+
                              'on(b.sContrato = a.sContrato and b.dIdFecha>=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroOrden =:Orden and b.sNumeroActividad = a.sNumeroActividad '+
                              'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                              'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" and a.sIdFase = "" and a.dExcedente > 0 '+
                              'order by b.sNumeroActividad, a.iItemOrden');
            qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
            qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
            qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
            qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
            qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
            qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
            qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
            qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
            qryBuscaP.Params.ParamByName('Orden').DataType := ftString ;
            qryBuscaP.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
            qryBuscaP.Open ;
            lContinua := True;
        end
        else
            MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );
      end
    end;

    if Connection.qryBusca2.FieldValues['sTipoObra']= 'OPTATIVA' then
    begin
        If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
        Begin
            MessageDlg( 'No se pude Filtrar por esta Opcion, Seleccione Frente de Trabajo', mtWarning, [ mbOk ], 0 );
        end
        else
        Begin
          qryBuscaP.Active := False ;
          qryBuscaP.SQL.Clear ;
          If tsOrdenado.Text = 'ANEXO "C"' Then
          begin
              qryBuscaP.SQL.Add('select a.sWbs, b.dIdFecha, b.sNumeroOrden, b.dCantidad, b.dAvance, a.sNumeroActividad, b.dAvanceAnterior, (b.dAvanceActual + b.dAvanceAnterior) as Avance , a.dExcedente, '+
                              'a.mDescripcion, a.dCantidad as dCantidadAnexo, a.dInstalado, a.sMedida, b.dCantidadActual, b.dCantidadAnterior from actividadesxorden a '+
                              'inner join bitacoradeactividades b '+
                              'on(b.sContrato = a.sContrato and b.dIdFecha>=:FechaI and b.dIdFecha<=:FechaF and b.sNumeroOrden =:Orden and b.sNumeroActividad = a.sNumeroActividad '+
                              'and b.dCantidad >0 and b.sNumeroActividad <> "" ) '+
                              'Where a.sContrato =:Contrato and a.sIdConvenio =:Convenio and a.sTipoActividad = "Actividad" and '+
                              '(a.sMedida = "ACTIV" or a.sMedida = "ACTIVID" or a.sMedida = "ACTIVIDAD") '+
                              'order by a.sNumeroActividad, a.iItemOrden');
              qryBuscaP.Params.ParamByName('Contrato').DataType := ftString ;
              qryBuscaP.Params.ParamByName('Contrato').Value := global_contrato ;
              qryBuscaP.Params.ParamByName('Convenio').DataType := ftString ;
              qryBuscaP.Params.ParamByName('Convenio').Value := global_convenio ;
              qryBuscaP.Params.ParamByName('FechaI').DataType := ftDate ;
              qryBuscaP.Params.ParamByName('FechaI').Value := tdIdFecha1.Date ;
              qryBuscaP.Params.ParamByName('FechaF').DataType := ftDate ;
              qryBuscaP.Params.ParamByName('FechaF').Value := tdIdFecha.Date ;
              qryBuscaP.Params.ParamByName('Orden').DataType := ftString ;
              qryBuscaP.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
              qryBuscaP.Open ;
              lContinua := True;
          end
          else
             MessageDlg( 'No se pude Filtrar por esta Opcion', mtWarning, [ mbOk ], 0 );

        end
    end;

    if lContinua then
    begin
        rInforme.LoadFromFile (global_files + 'Partidas_excedentes.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
        if not FileExists(global_files + 'Partidas_excedentes.fr3') then
           showmessage('El archivo de reporte Partidas_excedentes.fr3 no existe, notifique al administrador del sistema');
    end;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generando partidas excedidas', 0);
    end;
  end;
end;


procedure TfrmCompara.btnSinGenerarClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
    sOpcion := 'Sin Generar' ;
    tdIdFecha.SetFocus
end;

procedure TfrmCompara.btnSinReportarClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
   sOpcion := 'Reportadas' ;
   tdIdFecha.SetFocus
end;

procedure TfrmCompara.TabSheet1Show(Sender: TObject);
begin
    tdIdFecha.SetFocus
end;

procedure TfrmCompara.TabSheet2Show(Sender: TObject);
begin
    sConvenio := global_convenio ;
end;

procedure TfrmCompara.TabSheet4Show(Sender: TObject);
begin
    sConvenio := global_convenio ;
end;

procedure TfrmCompara.btnSuministrosClick(Sender: TObject);
Var
    dGenerado, dSuministrado : Double ;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    If rxSuministroAnexo.RecordCount > 0 Then
        rxSuministroAnexo.EmptyTable ;

    Connection.qryBusca.Active := False ;
    Connection.qryBusca.SQL.Clear ;
    Connection.qryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN From actividadesxanexo where sContrato = :Contrato And sIdConvenio = :Convenio and sTipoActividad = "Actividad" Order By iItemOrden') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
    Connection.qryBusca.Open ;

    dsInforme.FieldAliases.Clear ;
    dsInforme.DataSet := rxSuministroAnexo ;

    Progress.Visible := True ;
    Progress.MinValue := 1 ;
    Progress.MaxValue := connection.QryBusca.RecordCount ;
    While NOT Connection.qryBusca.Eof Do
    Begin
        dGenerado := 0 ;
        dSuministrado := 0 ;
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dSuministrado From anexo_psuministro e INNER JOIN anexo_suministro e2 ON ' +
                                     '(e.sContrato = e2.sContrato And e.iFolio = e2.iFolio And e2.dFechaAviso <= :Fecha) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := Connection.qryBusca.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
            dSuministrado := Connection.qryBusca2.FieldValues ['dSuministrado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e INNER JOIN estimaciones e2 ON ' +
                                    '(e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.dFechaFinal <= :Fecha) ' +
                                    'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad And e.lEstima = "Si" Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := Connection.qryBusca.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             dGenerado := Connection.qryBusca2.FieldValues ['dGenerado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select e2.sReferencia, e.dCantidad From anexo_psuministro e INNER JOIN anexo_suministro e2 ON ' +
                                     '(e.sContrato = e2.sContrato And e.iFolio = e2.iFolio And e2.dFechaAviso <= :Fecha) ' +
                                      'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Order By e2.dFechaAviso') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := Connection.qryBusca.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             While NOT Connection.qryBusca2.Eof Do
             Begin
                  rxSuministroAnexo.Append ;
                  rxSuministroAnexo.FieldValues['sNumeroActividad'] := Connection.qryBusca.FieldValues['sNumeroActividad'] ;
                  rxSuministroAnexo.FieldValues['mDescripcion'] := MidStr(Connection.qryBusca.FieldValues['mDescripcion'],1,100) + ' ..' ;
                  rxSuministroAnexo.FieldValues['sMedida'] := Connection.qryBusca.FieldValues['sMedida'] ;
                  rxSuministroAnexo.FieldValues['dCantidadAnexo'] := Connection.qryBusca.FieldValues['dCantidadAnexo'] ;
                  rxSuministroAnexo.FieldValues['dPonderado'] := Connection.qryBusca.FieldValues['dPonderado'] ;
                  rxSuministroAnexo.FieldValues['dVentaMN'] := Connection.qryBusca.FieldValues['dVentaMN'] ;
                  rxSuministroAnexo.FieldValues['sReferencia'] := Connection.qryBusca2.FieldValues['sReferencia'] ;
                  rxSuministroAnexo.FieldValues['dCantidad'] := Connection.qryBusca2.FieldValues['dCantidad'] ;
                  rxSuministroAnexo.FieldValues['dGenerado'] := dGenerado ;
                  If dGenerado > dSuministrado Then
                  Begin
                      rxSuministroAnexo.FieldValues['dPGenerar'] := 0 ;
                      rxSuministroAnexo.FieldValues['dPReportar'] := dGenerado - dSuministrado ;
                  End
                  Else
                  Begin
                      rxSuministroAnexo.FieldValues['dPGenerar'] := dSuministrado - dGenerado ;
                      rxSuministroAnexo.FieldValues['dPReportar'] := 0 ;
                  End ;
                  If Connection.qryBusca.FieldValues['dCantidadAnexo'] > dSuministrado Then
                      rxSuministroAnexo.FieldValues['dPSuministrar'] := Connection.qryBusca.FieldValues['dCantidadAnexo'] - dSuministrado
                  Else
                      rxSuministroAnexo.FieldValues['dPSuministrar'] := 0 ;
                  rxSuministroAnexo.Post ;
                  Connection.qryBusca2.Next ;
             End
         Else
         Begin
             rxSuministroAnexo.Append ;
             rxSuministroAnexo.FieldValues['sNumeroActividad'] := Connection.qryBusca.FieldValues['sNumeroActividad'] ;
             rxSuministroAnexo.FieldValues['mDescripcion'] := MidStr(Connection.qryBusca.FieldValues['mDescripcion'],1,100) + ' ..' ;
             rxSuministroAnexo.FieldValues['sMedida'] := Connection.qryBusca.FieldValues['sMedida'] ;
             rxSuministroAnexo.FieldValues['dCantidadAnexo'] := Connection.qryBusca.FieldValues['dCantidadAnexo'] ;
             rxSuministroAnexo.FieldValues['dPonderado'] := Connection.qryBusca.FieldValues['dPonderado'] ;
             rxSuministroAnexo.FieldValues['dVentaMN'] := Connection.qryBusca.FieldValues['dVentaMN'] ;
             rxSuministroAnexo.FieldValues['sReferencia'] := 'SIN AVISO DE EMBARQUE' ;
             rxSuministroAnexo.FieldValues['dCantidad'] := 0 ;
             rxSuministroAnexo.FieldValues['dGenerado'] := dGenerado ;
             If dGenerado > dSuministrado Then
             Begin
                 rxSuministroAnexo.FieldValues['dPGenerar'] := 0 ;
                 rxSuministroAnexo.FieldValues['dPReportar'] := dGenerado - dSuministrado ;
             End
             Else
             Begin
                 rxSuministroAnexo.FieldValues['dPGenerar'] := dSuministrado - dGenerado ;
                 rxSuministroAnexo.FieldValues['dPReportar'] := 0 ;
             End ;
             If Connection.qryBusca.FieldValues['dCantidadAnexo'] > dSuministrado Then
                 rxSuministroAnexo.FieldValues['dPSuministrar'] := Connection.qryBusca.FieldValues['dCantidadAnexo'] - dSuministrado
             Else
                 rxSuministroAnexo.FieldValues['dPSuministrar'] := 0 ;
             rxSuministroAnexo.Post ;
         End ;
         Connection.qryBusca.Next ;
         progress.Progress := connection.QryBusca.RecNo ;
    End ;
    progress.Visible := False ;
    progress.Progress := 0 ;
    //Obtenemos Reporte en Dolares y M.N
    if chkMN.Checked = True then
    begin
       rInforme.LoadFromFile (global_files + 'ConcentradodeSuministros.fr3');
       if not FileExists(global_files + 'ConcentradodeSuministros.fr3') then
          showmessage('El archivo de reporte ConcentradodeSuministros.fr3 no existe, notifique al administrador del sistema');
    end
    else
    begin
       rInforme.LoadFromFile (global_files + 'ConcentradodeSuministrosDLL.fr3');
       if not FileExists(global_files + 'ConcentradodeSuministrosDLL.fr3') then
          showmessage('El archivo de reporte ConcentradodeSuministrosDLL.fr3 no existe, notifique al administrador del sistema');
    end;
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar concentrado de suministros', 0);
    end;
  end;
end;

procedure TfrmCompara.tsNumeroEstimacionEnter(Sender: TObject);
begin
    tsNumeroEstimacion.Color := global_Color_entrada
end;

procedure TfrmCompara.tsNumeroEstimacionExit(Sender: TObject);
begin
    tsNumeroEstimacion.Color := global_Color_salida
end;

procedure TfrmCompara.tsNumeroEstimacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        btnDetalleGeneracion.SetFocus
end;

procedure TfrmCompara.btnAcumuladoTrinomioClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    rDiarioFirmas (global_contrato, '' , 'A',tdIdFecha.Date, frmCompara ) ;
    If MessageDlg('Desea imprimir el consolidado de todas las estimaciones seleccionadas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
        Reporte.Active := False ;
        Reporte.SQL.Clear ;
        Reporte.SQL.Add('Select ct.*, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, Sum(e.dCantidad * a.dVentaMN) as dEstimado From estimacionxpartida e ' +
                        'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.lStatus = "Autorizado") ' +
                        'INNER JOIN contrato_trinomio ct ON (e.sContrato = ct.sContrato And e.sInstalacion = ct.sInstalacion) ' +
                        'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                        'Where e.sContrato = :Contrato And e.lEstima = "Si" ' +
                        'Group By ct.sInstalacion, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador') ;
        Reporte.Params.ParamByName('Contrato').DataType := ftString ;
        Reporte.Params.ParamByName('Contrato').Value := global_Contrato ;
        Reporte.Params.ParamByName('Convenio').DataType := ftString ;
        Reporte.Params.ParamByName('Convenio').Value := sConvenio ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := Reporte ;
        Reporte.Open ;
    End
    Else
    Begin
     if length(vartostr(Connection.EstimacionPeriodo.FieldValues['dFechaFinal']))>0 then
     begin
        Reporte.Active := False ;
        Reporte.SQL.Clear ;
        Reporte.SQL.Add('Select ct.*, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador, Sum(e.dCantidad * a.dVentaMN) as dEstimado From estimacionxpartida e ' +
                        'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.lStatus = "Autorizado" ' +
                                                       'And Month(e2.dFechaFinal) = :Mes And Year(e2.dFechaFinal) = :Anno) ' +
                        'INNER JOIN contrato_trinomio ct ON (e.sContrato = ct.sContrato And e.sInstalacion = ct.sInstalacion) ' +
                        'INNER JOIN actividadesxanexo a ON (e.sContrato = a.sContrato And e.sNumeroActividad = a.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad") ' +
                        'Where e.sContrato = :Contrato And e.lEstima = "Si" ' +
                        'Group By ct.sInstalacion, e2.iNumeroEstimacion, e2.sNumeroOrden, e2.sNumeroGenerador') ;
        Reporte.Params.ParamByName('Contrato').DataType := ftString ;
        Reporte.Params.ParamByName('Contrato').Value := global_Contrato ;
        Reporte.Params.ParamByName('Convenio').DataType := ftString ;
        Reporte.Params.ParamByName('Convenio').Value := sConvenio ;
        Reporte.Params.ParamByName('Mes').DataType := ftInteger ;
        Reporte.Params.ParamByName('Mes').Value := MonthOf(Connection.EstimacionPeriodo.FieldValues['dFechaFinal']) ;
        Reporte.Params.ParamByName('Anno').DataType := ftInteger ;
        Reporte.Params.ParamByName('Anno').Value := YearOf(Connection.EstimacionPeriodo.FieldValues['dFechaFinal']) ;
        dsInforme.FieldAliases.Clear ;
        dsInforme.DataSet := Reporte ;
        Reporte.Open ;
     end;
    End ;
    rInforme.LoadFromFile (global_files + 'TrinomioConcentrado.fr3');
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
      if not FileExists(global_files + 'TrinomioConcentrado.fr3') then
        showmessage('El archivo de reporte TrinomioConcentrado.fr3 no existe, notifique al administrador del sistema');
//    frxTrinomio.ShowReport

  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'En el proceso Acumulado de generacíon trinomio MN', 0);
    end;
  end;
end;

procedure TfrmCompara.ActividadesxOrdenCalcFields(DataSet: TDataSet);
begin
  try
    ActividadesxOrdendMontoMN.Value := ActividadesxOrdendCantidad.Value * ActividadesxOrdendVentaMN.Value ;
    If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(dCantidad) as dReportado From bitacoradeactividades ' +
                                     'Where sContrato = :contrato And dIdFecha <= :Fecha And sNumeroOrden = :Orden And ' +
                                     'sWbs = :wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxOrdendReportado.Value := Connection.qryBusca2.FieldValues ['dReportado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e ' +
                                     'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador And e2.dFechaFinal <= :Fecha And e2.lStatus = "Autorizado") ' +
                                     'Where e.sContrato = :contrato And e.sNumeroOrden = :Orden And e.sWbs = :Wbs And e.sNumeroActividad = :Actividad And e.lEstima = "Si" Group By e.sWbs, e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxOrdendGenerado.Value := Connection.qryBusca2.FieldValues ['dGenerado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dSuministrado From anexo_psuministro e INNER JOIN anexo_suministro e2 ON ' +
                                     '(e.sContrato = e2.sContrato And e.iFolio = e2.iFolio And e2.dFechaAviso <= :Fecha and e2.sNumeroOrden = :Orden) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxOrdendSuministrado.Value := Connection.qryBusca2.FieldValues ['dSuministrado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dEstimado From estimacionxpartidaprov e ' +
                                     'INNER JOIN estimacionxproveedor e2 ON (e.sContrato = e2.sContrato And e.sSubContrato = e2.sSubContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroOrden = :Orden and e.sWbs = :Wbs And e.sNumeroActividad = :Actividad Group By e.sNumeroOrden') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := ActividadesxOrden.FieldValues['sNumeroOrden']  ;
        Connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs']  ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad']  ;

        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
              ActividadesxOrdendSubContrato.Value := Connection.qryBusca2.FieldValues ['dEstimado'] ;
    End
  except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al ejecutar el proceso actividadesxordencalcfield ', 0);
        end;
  end;

end;

procedure TfrmCompara.ActividadesxAnexoCalcFields(DataSet: TDataSet);
begin
  try
    ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value ;
    ActividadesxAnexodMontoDLL.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaDLL.Value ;
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(dCantidad) as dReportado From bitacoradeactividades ' +
                                     'Where sContrato = :contrato And dIdFecha <= :Fecha And ' +
                                     'sNumeroActividad = :Actividad Group By sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxAnexodReportado.Value := Connection.qryBusca2.FieldValues ['dReportado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dSuministrado From anexo_psuministro e INNER JOIN anexo_suministro e2 ON ' +
                                     '(e.sContrato = e2.sContrato And e.iFolio = e2.iFolio And e2.dFechaAviso <= :Fecha) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxAnexodSuministrado.Value := Connection.qryBusca2.FieldValues ['dSuministrado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e ' +
                                     'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                     'e.sNumeroGenerador = e2.sNumeroGenerador And e2.dFechaFinal <= :Fecha and e2.lStatus = "Autorizado") ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
              ActividadesxAnexodGenerado.Value := Connection.qryBusca2.FieldValues ['dGenerado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dEstimado From actividadesxestimacion e ' +
                                     'INNER JOIN estimacionperiodo e2 ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion and e2.lEstimado = "Si") ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad and e.sTipoActividad = "Actividad" Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
              ActividadesxAnexodEstimado.Value := Connection.qryBusca2.FieldValues ['dEstimado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dEstimado From estimacionxpartidaprov e ' +
                                     'INNER JOIN estimacionxproveedor e2 ON (e.sContrato = e2.sContrato And e.sSubContrato = e2.sSubContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
              ActividadesxAnexodSubContrato.Value := Connection.qryBusca2.FieldValues ['dEstimado'] ;


    End
  except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al ejecutar el proceso actividadesxanexocalcfields ', 0);
        end;
  end;
end;

procedure TfrmCompara.rInformeGetValue(const VarName: String;
var Value: Variant);
var
    dAvance : Currency ;
    eAvance: Extended;
begin
  if roqOrdenes.Found then
  begin
    if CompareText(VarName, 'DESC_CONTRATO') = 0 then
      Value := Connection.contrato.FieldByName('mDescripcion').AsString;
    if CompareText(VarName, 'DESC_ORDEN') = 0 then
      Value := roqOrdenes.FieldByName('mDescripcion').AsString;
  end
  else
  begin
    if CompareText(VarName, 'DESC_CONTRATO') = 0 then
      Value := '';
    if CompareText(VarName, 'DESC_ORDEN') = 0 then
      Value := Connection.contrato.FieldByName('mDescripcion').AsString;
  end;

  If CompareText(VarName, 'ORDEN') = 0 then
      Value := tsNumeroOrden.Text ;
  If CompareText(VarName, 'MI_FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;
  If CompareText(VarName, 'MI_FECHA1') = 0 then
      Value := DateToStr(tdIdFecha1.Date) ;
  If CompareText(VarName, 'PROGRAMADO') = 0 then
      Value := avProgramado ;

  If CompareText(VarName, 'REAL') = 0 then
     Value := avFisico ;

  If CompareText(VarName, 'TEXTO') = 0 then
     If avProgramado > avFisico Then
          Value := 'ATRASO DEL '
     Else
          Value := 'AVANCE DEL ' ;

  If CompareText(VarName, 'DIFERENCIA') = 0 then
     If avProgramado > avFisico Then
          Value := avProgramado - avFisico
     Else
          Value := avFisico - avProgramado ;

   If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
       Value := sSupervisorTierra ;

   If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
       Value := sPuestoSupervisorTierra ;

  If CompareText(VarName, 'ULTIMO_REPORTE') = 0 then
  Begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select max(dIdFecha) as dIdFecha From reportediario Where sContrato = :Contrato') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Open ;
      If Connection.qryBusca.RecordCount > 0 Then
          Value := DateToStr(Connection.qryBusca.FieldValues['dIdFecha'] )
      Else
          Value := 'S/REPORTE'
  End ;

  If CompareText(VarName, 'FECHA') = 0 then
      Value := DateToStr(tdIdFecha.Date) ;

  If CompareText(VarName, 'AVANCE_CONTRATO') = 0 then
      If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
      Begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Sql.Text := 'select a.swbs, b.dCantidad as dCantidadOrden, sum(c.dCantidad) as dCantidad, sum(c.dAvance * (b.dCantidad / a.dCantidadAnexo)) as dAvance ' +
                               'from actividadesxanexo a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.sWbsContrato = a.sWbs) ' +
                               'left join bitacoradeactividades c on (c.scontrato = b.scontrato and c.snumeroorden = b.snumeroorden and c.swbs = b.sWbs and c.didfecha <= :fecha) ' +
                               'where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sTipoActividad = "Actividad" and a.swbs = :wbs ' +
                               'group by a.swbs order by a.iItemOrden';
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := global_convenio;
        Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
        Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxAnexo.FieldByName('sWbs').AsString;
        Connection.QryBusca.Open;
        dAvance := 0;
        while not Connection.QryBusca.Eof do
        begin
          dAvance := dAvance + Connection.QryBusca.FieldByName('dAvance').AsFloat;
          Connection.QryBusca.Next;
        end;
        Value := dAvance;
      End
      Else
      begin
        // Totalizar los avances por paquetes
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Sql.Text := 'select o.swbs, (select sum((c.dAvance * (b.dPonderado / 100)) * (b.dCantidad / a.dCantidadAnexo)) ' +
                                        'from actividadesxanexo a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.sWbsContrato = a.sWbs) ' +
                                        'left join bitacoradeactividades c on (c.scontrato = b.scontrato and c.snumeroorden = b.snumeroorden and c.swbs = b.sWbs and c.didfecha <= :fecha) ' +
                                        'where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sTipoActividad = "Actividad" and a.swbs like concat(o.swbs, ".%")) as dAvance ' +
                                        'from actividadesxanexo o where o.scontrato = :contrato and o.sIdConvenio = :convenio and o.sTipoActividad = "Paquete" and o.swbs = :wbs ' +
                                        'order by o.iItemOrden';
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := global_convenio;
        Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
        Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxAnexo.FieldByName('sWbs').AsString;
        Connection.QryBusca.Open;
        dAvance := 0;
        while not Connection.QryBusca.Eof do
        begin
          dAvance := dAvance + Connection.QryBusca.FieldByName('dAvance').AsFloat;
          Connection.QryBusca.Next;
        end;
        Value := dAvance;
      end;

  If CompareText(VarName, 'AVANCE_ORDEN') = 0 then
      If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
      Begin
          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.Add('Select sum(b.dAvance) as dAvance From bitacoradeactividades b ' +
                                      'Where b.sContrato = :contrato And sNumeroOrden = :Orden And b.sWbs = :Wbs And b.dIdFecha <= :Fecha Group By b.sWbs' ) ;
          connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.QryBusca.Params.ParamByName('Contrato').Value    := global_Contrato ;
          connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
          connection.QryBusca.Params.ParamByName('Orden').Value       := ActividadesxOrden.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.ParamByName('wbs').AsString             := ActividadesxOrden.FieldByName('swbs').AsString;
          connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
          connection.QryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
          connection.QryBusca.Open ;
          If connection.QryBusca.RecordCount > 0 Then
              Value := connection.QryBusca.FieldValues['dAvance']
          Else
              Value := 0
      End
      Else
      begin
        // Totalizar los avances por paquetes
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Sql.Clear;
        Connection.QryBusca.Sql.Add('Select a.dPonderado, sum(b.dAvance) as dAvance, if(sum(b.dAvance) > 100, a.dPonderado, sum(b.dAvance * (a.dPonderado / 100))) as dAvancePonderado ' +
                                    'From actividadesxorden a inner join bitacoradeactividades b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs and b.didfecha <= :fecha) ' +
                                    'Where a.sContrato = :contrato and a.sIdConvenio =:Convenio and a.sNumeroOrden = :orden And b.sWbs like concat(:wbs, ".%") group by a.swbs');
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := global_convenio;
        Connection.QryBusca.ParamByName('orden').AsString    := ActividadesxOrden.FieldValues['sNumeroOrden'];
        Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxOrden.FieldValues['swbs'];
        Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
        Connection.QryBusca.Open;

        eAvance := 0;
        while Not Connection.QryBusca.Eof do
        begin
          eAvance := eAvance + Connection.QryBusca.FieldByName('dAvancePonderado').AsFloat;
          Connection.QryBusca.Next;
        end;
        Connection.QryBusca.Close;

        Value := eAvance;
      end;
end;

procedure TfrmCompara.btnReportadoVsGeneradoClick(Sender: TObject);
var
   consulta : string;
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
 try
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        if tsFiltro.Text = 'SOLO REPORTADAS' then
           consulta := 'inner join bitacoradeactividades b '+
                       'on (a.sContrato = b.sContrato  and a.sNumeroActividad = b.sNumeroActividad and sTipoActividad = "Actividad" '+
                       'and b.dIdFecha >= :FechaI and b.dIdFecha <= :FechaF) '+
                       'Where a.sContrato = :Contrato and a.sIdConvenio = :Convenio group by a.sWbs order by iItemOrden '
        else
        begin
            If tsOrdenado.Text = 'ANEXO "C"' Then
               consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio order by iItemOrden '
            Else
               If tsOrdenado.Text = 'PONDERADO' Then
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio order by dPonderado DESC '
               Else
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio order by (dVentaMN * dCantidadAnexo) DESC'
        end;
        ActividadesxAnexo.Active := False ;
        ActividadesxAnexo.SQL.Clear ;
        ActividadesxAnexo.SQL.Add('select a.sContrato, a.iNivel, a.iColor, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.dFechaInicio, a.dFechaFinal, ' +
                                  'a.sMedida, a.dCantidadAnexo, a.dPonderado, a.dVentaMN, a.dVentaDLL  from actividadesxanexo a '+ consulta);
        ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Contrato').Value    := global_contrato ;
        ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Convenio').Value    := sConvenio ;
        if tsFiltro.Text = 'SOLO REPORTADAS' then
        begin
            ActividadesxAnexo.Params.ParamByName('FechaI').DataType := ftDate ;
            ActividadesxAnexo.Params.ParamByName('FechaI').Value    := tdIdFecha1.Date;
            ActividadesxAnexo.Params.ParamByName('FechaF').DataType := ftDate;
            ActividadesxAnexo.Params.ParamByName('FechaF').Value    := tdIdFecha.Date  ;
        end;

        ActividadesxAnexo.Open ;
        //Obtenemos reportes en M.N y DLL por contrato..
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'ComparativoReportadoGeneradoContrato.fr3');
           if not FileExists(global_files + 'ComparativoReportadoGeneradoContrato.fr3') then
             showmessage('El archivo de reporte ComparativoReportadoGeneradoContrato.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'ComparativoReportadoGeneradoContratoDLL.fr3') ;
           if not FileExists(global_files + 'ComparativoReportadoGeneradoContratoDLL.fr3') then
             showmessage('El archivo de reporte ComparativoReportadoGeneradoContratoDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
    Else
    Begin
        if tsFiltro.Text = 'SOLO REPORTADAS' then
           consulta := 'inner join bitacoradeactividades b '+
                       'on (a.sContrato = b.sContrato  and a.sNumeroActividad = b.sNumeroActividad and sTipoActividad = "Actividad" '+
                       'and b.dIdFecha >= :FechaI and b.dIdFecha <= :FechaF) '+
                       'Where a.sContrato = :Contrato and a.sIdConvenio = :Convenio group by a.sWbs order by iItemOrden '
        else
        begin
            If tsOrdenado.Text = 'ANEXO "C"' Then
               consulta := 'Where a.sContrato = :contrato and a.sIdConvenio = :convenio and a.sNumeroOrden = :orden order by a.iItemOrden '
            Else
               If tsOrdenado.Text = 'PONDERADO' Then
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden order by dPonderado DESC '
               Else
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden order by (dVentaMN * dCantidad) DESC'
        end;
        ActividadesxOrden.Active := False ;
        ActividadesxOrden.SQL.Clear ;
        ActividadesxOrden.SQL.Add('select a.sContrato, a.sNumeroOrden, a.dCostoMN, a.dCostoDLL, a.iNivel, a.iColor, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.dFechaInicio, a.dFechaFinal, ' +
                                  'a.sMedida, a.dCantidad, a.dPonderado, a.dVentaMN, a.dVentaDLL  from actividadesxorden a '+ consulta);
        ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Contrato').Value    := global_contrato ;
        ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Convenio').Value    := sConvenio ;
        ActividadesxOrden.Params.ParamByName('Orden').DataType    := ftString ;
        ActividadesxOrden.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
        //Obtenemos reportes en M.N y DLL por frente de trabajo..
        ActividadesxOrden.Open ;
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'ComparativoReportadoGeneradoOrden.fr3');
           if not FileExists(global_files + 'ComparativoReportadoGeneradoOrden.fr3') then
             showmessage('El archivo de reporte ComparativoReportadoGeneradoOrden.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'ComparativoReportadoGeneradoOrdenDLL.fr3');
           if not FileExists(global_files + 'ComparativoReportadoGeneradoOrdenDLL.fr3') then
             showmessage('El archivo de reporte ComparativoReportadoGeneradoOrdenDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End

 except
        on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar reportado vs generado', 0);
        end;
 end;
end;

procedure TfrmCompara.btnAnexoVsEstimacionesClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
        ActividadesxAnexo.Active := False ;
        ActividadesxAnexo.SQL.Clear ;
        ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                  'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL  from actividadesxanexo Where sContrato = :contrato and ' +
                                  'sIdConvenio = :convenio order by iItemOrden') ;
        ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
        ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Convenio').Value := sConvenio ;
        ActividadesxAnexo.Open ;
        //Obtenemos reportes en dolares y M.N.
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'ComparativoAnexovsEstimaciones.fr3');
           if not FileExists(global_files + 'ComparativoAnexovsEstimaciones.fr3') then
             showmessage('El archivo de reporte ComparativoAnexovsEstimaciones.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'ComparativoAnexovsEstimacionesDLL.fr3');
           if not FileExists(global_files + 'ComparativoAnexovsEstimacionesDLL.fr3') then
             showmessage('El archivo de reporte ComparativoAnexovsEstimacionesDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar cantidad Anexo vs estimaciones', 0);
    end;
  end;
end;

procedure TfrmCompara.btnSubContratosClick(Sender: TObject);
begin
//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
   showmessage('la fecha final es menor a la fecha inicial' );
   tdIdFecha.SetFocus;
   exit;
   end;
  try
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        ActividadesxAnexo.Active := False ;
        ActividadesxAnexo.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL  from actividadesxanexo Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio order by iItemOrden')
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
            ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL from actividadesxanexo Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio order by dPonderado DESC')
            Else
                ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL  from actividadesxanexo Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio order by (dVentaMN * dCantidadAnexo) DESC') ;
        ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
        ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Convenio').Value := sConvenio ;
        ActividadesxAnexo.Open ;
        //Obtenemos Reportes en dolares y M.N.
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'Estatus SubContrato Contrato.fr3');
           if not FileExists(global_files + 'Estatus SubContrato Contrato.fr3') then
             showmessage('El archivo de reporte Estatus SubContrato Contrato.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'Estatus SubContrato ContratoDLL.fr3');
           if not FileExists(global_files + 'Estatus SubContrato ContratoDLL.fr3') then
             showmessage('El archivo de reporte Estatus SubContrato ContratoDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
    Else
    Begin
        ActividadesxOrden.Active := False ;
        ActividadesxOrden.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL  from actividadesxOrden Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden order by iItemOrden')
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL  from actividadesxOrden Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden order by dPonderado DESC')
            Else
                ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL  from actividadesxOrden Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden order by (dVentaMN * dCantidad) DESC') ;
        ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Contrato').Value := global_contrato ;
        ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Convenio').Value := sConvenio ;
        ActividadesxOrden.Params.ParamByName('Orden').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        ActividadesxOrden.Open ;
        //Obtenemos Reporte en Dolares y M.N
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + 'Estatus SubContrato Orden.fr3');
           if not FileExists(global_files + 'Estatus SubContrato Orden.fr3') then
             showmessage('El archivo de reporte Estatus SubContrato Orden.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + 'Estatus SubContrato OrdenDLL.fr3');
           if not FileExists(global_files + 'Estatus SubContrato OrdenDLL.fr3') then
             showmessage('El archivo de reporte Estatus SubContrato OrdenDLL.fr3 no existe, notifique al administrador del sistema');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End;
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar cantidad Anexo vs estimaciones subcontratos', 0);
    end;
  end;
end;

//*********************************BRITO 28-03-11*******************************
procedure TfrmCompara.ventasDiferentes(sWBSContrato, suma: string);
var
    sSQL: string;
    lError1, lError2: boolean;
begin
          sSQL := 'SELECT ' +
          'b.sNumeroActividad, b.sWbs, a.dCantidad, substr(b.mDescripcion,1,255) as descripcion, ' +
          'a.dVentaMN as aMN, a.dVentaDLL as aDLL, a.sTipoActividad, a.sNumeroOrden, a.sWbs as wbs2, ' +
          'b.dCantidadAnexo,  b.dVentaMN as bMN, b.dVentaDLL as bDLL  ' +
          'FROM actividadesxorden a ' +
          'INNER JOIN  actividadesxanexo b ' +
          'ON a.sContrato = b.sContrato ' +
          'AND a.sIdConvenio = b.sIdConvenio ' +
          'AND a.sWbsContrato = b.sWbs ' +
          'AND a.sTipoActividad = "Actividad" ' +
          'WHERE a.sContrato = :contrato ' +
          'AND a.sIdConvenio = :convenio ' +
          'AND a.sWbsContrato = :wbscontrato ' +
          'AND a.sTipoActividad = "Actividad" '+
          'ORDER BY b.sWbs';

          connection.QryBusca.Active := false;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add(sSQL);
          connection.QryBusca.ParamByName('wbscontrato').Value := sWBSContrato;
          connection.QryBusca.ParamByName('contrato').Value := global_contrato;
          connection.QryBusca.ParamByName('convenio').Value := global_convenio;
          connection.QryBusca.Open;

          lError1 := false;
          lError2 := false;
          while not connection.QryBusca.Eof do begin
              if (connection.QryBusca.FieldByName('aMN').Value <>
                connection.QryBusca.FieldByName('bMN').Value)
              or (connection.QryBusca.FieldByName('aDLL').Value <>
                connection.QryBusca.FieldByName('bDLL').Value) then begin
                  acumularDiferencia(suma, 'Existe diferencia entre los valores de ventas');
                  lError1 := true;
              end
              else begin
                  if (not lError1) and (not lError2) then begin
                      if (connection.QryBusca.FieldByName('dCantidadAnexo').Value <> suma) then
                          lError2 := true;
                  end;
              end;
              connection.QryBusca.Next;
          end;
          if (not lError1) and (lError2) then begin
              connection.QryBusca.First;
              while not connection.QryBusca.Eof do begin
                  acumularDiferencia(suma, 'Existe diferencia entre la suma total de las cantidades y la cantidad del anexo');
                  connection.QryBusca.Next;
              end;
          end;
end;

function TfrmCompara.cantidadesDiferentes(sWBSContrato: string): string;
var
    sSQL: string;
begin
          result := '';

          sSQL := 'SELECT ' +
          'sum(a.dCantidad) as suma ' +
          'FROM actividadesxorden a ' +
          'INNER JOIN  actividadesxanexo b ' +
          'ON a.sContrato = b.sContrato ' +
          'AND a.sIdConvenio = b.sIdConvenio ' +
          'AND a.sWbsContrato = b.sWbs ' +
          'AND a.sTipoActividad = "Actividad" ' +
          'WHERE a.sContrato = :contrato ' +
          'AND a.sIdConvenio = :convenio ' +
          'AND a.sWbsContrato = :wbscontrato ' +
          'AND a.sTipoActividad = "Actividad"';

          connection.QryBusca.Active := false;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add(sSQL);
          connection.QryBusca.ParamByName('wbscontrato').Value := sWBSContrato;
          connection.QryBusca.ParamByName('contrato').Value := global_contrato;
          connection.QryBusca.ParamByName('convenio').Value := global_convenio;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount > 0 then
              result :=  connection.QryBusca.FieldByName('suma').AsString
end;

procedure TfrmCompara.acumularDiferencia(suma, sMensaje: string);
begin
    RxMDValida.Append;
    RxMDValida.FieldByName('sNumeroActividad').Value := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
    RxMDValida.FieldByName('sWbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
    RxMDValida.FieldByName('dCantidad').Value := connection.QryBusca.FieldByName('dCantidad').AsString;
    RxMDValida.FieldByName('suma').Value := suma;
    RxMDValida.FieldByName('aMN').Value := connection.QryBusca.FieldByName('aMN').AsString;
    RxMDValida.FieldByName('aDLL').Value := connection.QryBusca.FieldByName('aDLL').AsString;
    RxMDValida.FieldByName('dCantidadAnexo').Value := connection.QryBusca.FieldByName('dCantidadAnexo').AsString;
    RxMDValida.FieldByName('bMN').Value := connection.QryBusca.FieldByName('bMN').AsString;
    RxMDValida.FieldByName('bDLL').Value := connection.QryBusca.FieldByName('bDLL').AsString;
    RxMDValida.FieldByName('descripcion').Value := connection.QryBusca.FieldByName('descripcion').AsString;
    RxMDValida.FieldByName('mensaje').Value := sMensaje;
    RxMDValida.FieldByName('sNumeroOrden').Value := connection.QryBusca.FieldByName('sNumeroOrden').AsString;
    RxMDValida.FieldByName('sWbs2').Value := connection.QryBusca.FieldByName('wbs2').AsString;
    RxMDValida.Post;
end;
//*********************************BRITO 28-03-11*******************************
end.
