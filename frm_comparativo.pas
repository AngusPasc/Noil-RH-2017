unit frm_comparativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_barra, frm_connection , global, StdCtrls,
  DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, ComCtrls, RxMemDS,
  RXCtrls, RxLookup, Buttons, StrUtils, fqbClass, fqbSynmemo, ExtCtrls,
  TeeProcs, TeEngine, Chart, Series, DbChart, Newpanel, DateUtils,
  ZAbstractRODataset, ZDataset, utilerias, Gauges, AdvGroupBox, ExcelXP, ComObj, Excel2000,
  JvExStdCtrls, JvRichEdit, rtflabel, UFunctionsGHH, unitexcepciones,UnitTBotonesPermisos,
  DBDateTimePicker, JvCheckBox;
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
    GroupBox5: TGroupBox;
    chkadmon: TCheckBox;
    chkPu: TCheckBox;
    chkPeriodo: TJvCheckBox;
    ActividadesxOrdencancelada: TStringField;
    cmdConceptos: TButton;
    PanelProgress: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    BarraEstado: TProgressBar;
    SaveDialog1: TSaveDialog;
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
    procedure chkadmonEnter(Sender: TObject);
    procedure chkPuEnter(Sender: TObject);
   procedure formatoEncabezado();
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
  Opcion, cadpua : String ;
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

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;

  //Matriz de colores
  Colores: array[1..10, 1..2] of integer;
  columnas: array[1..1400] of string;

implementation

{$R *.dfm}

procedure TfrmCompara.btnStatusClick(Sender: TObject);
var
  sOrden:string;

begin
   //Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha1.Date>tdIdFecha.Date then
   begin
      showmessage('La fecha final es menor a la fecha inicial' );
      tdIdFecha.SetFocus;
      exit;
   end;

//  try

    sOrden:='';
    if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
      sOrden:=' Order by iItemOrden '
    else
      sOrden:=' Order By mysql.udf_NaturalSortFormat(swbs,'+ IntToStr(Global_TamOrden) +  ',' +Quotedstr(Global_SepOrden) +') ';

    cadpua:='';

    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        if not FileExists(global_files + global_miReporte + '_Estatus Contrato.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Estatus Contrato.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

        if not FileExists(global_files + global_miReporte + '_Estatus ContratoDLL.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Estatus ContratoDLL.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

        if ChkPu.Checked = True Then
           cadpua := 'sTipoAnexo =  "PU" ';

        if chkadmon.Checked then
          if cadpua='' then
            cadpua := 'And sTipoAnexo = "ADM" '
          else
            cadpua := ' And (' + cadpua + 'or sTipoAnexo = "ADM") '
        else
          if cadpua<>'' then
            cadpua:= ' and ' + cadpua;



        ActividadesxAnexo.Active := False ;
        ActividadesxAnexo.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
           ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                     'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, "" as cancelada from actividadesxanexo Where sContrato = :contrato and ' +
                                     'sIdConvenio = :convenio ' + cadpua + sOrden)
        Else
           If tsOrdenado.Text = 'PONDERADO' Then
              ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                        'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, "" as cancelada  from actividadesxanexo Where sContrato = :contrato and ' +
                                        'sIdConvenio = :convenio ' + cadpua +' order by dPonderado DESC ')
           Else
               ActividadesxAnexo.SQL.Add('select sContrato, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                         'sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, "" as cancelada  from actividadesxanexo Where sContrato = :contrato and ' +
                                         'sIdConvenio = :convenio ' + cadpua + ' order by (dVentaMN * dCantidadAnexo) DESC');
        ActividadesxAnexo.Params.ParamByName('Contrato').DataType  := ftString ;
        ActividadesxAnexo.Params.ParamByName('Contrato').Value     := global_contrato ;
        ActividadesxAnexo.Params.ParamByName('Convenio').DataType  := ftString ;
        ActividadesxAnexo.Params.ParamByName('Convenio').Value     := sConvenio ;
        ActividadesxAnexo.Open ;

        //Obtenemos los reportes en M.N. o en Dólares.
        if chkMN.Checked = True then
          begin
            rInforme.LoadFromFile (global_files + global_miReporte + '_Estatus Contrato.fr3');
          end
        else
        begin
           rInforme.LoadFromFile (global_files + global_miReporte + '_Estatus ContratoDLL.fr3');
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
        if not FileExists(global_files + global_miReporte + '_Estatus Orden.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Estatus Contrato.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

        if not FileExists(global_files + global_miReporte + '_Estatus OrdenDLL.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Estatus ContratoDLL.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;
       { if ChkPu.Checked = True Then
           cadpua := 'And sTipoAnexo =  "PU" '
        else
           cadpua := 'And sTipoAnexo = "ADM" ' ;  }

        if ChkPu.Checked = True Then
           cadpua := 'sTipoAnexo =  "PU" ';

        if chkadmon.Checked then
          if cadpua='' then
            cadpua := 'And sTipoAnexo = "ADM" '
          else
            cadpua := ' And (' + cadpua + 'or sTipoAnexo = "ADM") '
        else
          if cadpua<>'' then
            cadpua:= ' and ' + cadpua;


        ActividadesxOrden.Active := False ;
        ActividadesxOrden.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL ' +

                                      ',(select lCancelada from bitacoradeactividades b ' +
                                      ' where a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden ' +
                                      'and a.swbs = b.swbs and lCancelada = "Si" limit 1) as cancelada ' +

                                      ' from actividadesxorden a Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden '+ cadpua + sOrden )
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL ' +

                                      ',(select lCancelada from bitacoradeactividades b ' +
                                      ' where a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden ' +
                                      'and a.swbs = b.swbs and lCancelada = "Si" limit 1) as cancelada ' +

                                      'from actividadesxorden a Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden '+ cadpua +'order by dPonderado DESC')
            Else
            ActividadesxOrden.SQL.Add('select sContrato, sNumeroOrden, iNivel, iColor, sTipoActividad, sWbsAnterior, sWbs, sNumeroActividad, mDescripcion, dFechaInicio, dFechaFinal, ' +
                                      'sMedida, dCantidad, dPonderado, dVentaMN, dVentaDLL, dCostoMN, dCostoDLL ' +

                                      ',(select lCancelada from bitacoradeactividades b ' +
                                      ' where a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden ' +
                                      'and a.swbs = b.swbs and lCancelada = "Si" limit 1) as cancelada ' +

                                      ' from actividadesxOrden a Where sContrato = :contrato and ' +
                                      'sIdConvenio = :convenio and sNumeroOrden = :orden '+ cadpua +' order by (dVentaMN * dCantidad) DESC') ;
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
           rInforme.LoadFromFile (global_files + global_miReporte + '_Estatus Orden.fr3');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + global_miReporte + '_Estatus OrdenDLL.fr3');
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
//  except
//        on e : exception do begin
//        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'Al generar Status de conceptos', 0);
//        end;
//  end;
end;

procedure TfrmCompara.FormShow(Sender: TObject);
var
   x,i,y,z : integer;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rComparativo');
  BotonPermiso.permisosBotones(nil);

  // ivan - > Llenado del array de las columnas del Excel..
  for x := 1 to 26 do
    columnas[x] := Chr(64 + x);

  i := 27;
  for x := 1 to 26 do
  begin
    for y := 1 to 26 do
    begin
      columnas[i] := Chr(64 + x) + Chr(64 + y);
      i := i + 1;
    end;
  end;

  for x := 1 to 1 do
  begin
    for y := 1 to 26 do
    begin
      for z := 1 to 26 do
      begin
        columnas[i] := Chr(64 + x) + Chr(64 + y) + Chr(64 + z);
        i := i + 1;
      end;
    end;
  end;

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
   if ChkPu.Checked = True Then
        cadpua := 'And a.sTipoAnexo =  "PU" '
    else
        cadpua := 'And a.sTipoAnexo = "ADM" ' ;

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
                                        'a.sContrato = :Contrato And a.sIdConvenio = :Convenio ' + cadpua  + ' Group By a.sWbs, a.sNumeroActividad Order By a.iItemOrden')
        Else
          If tsOrdenado.Text = 'PONDERADO' Then
              connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dInstalado, a.dExcedente, ' +
                                          'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                          'From actividadesxanexo a INNER JOIN distribuciondeanexo d ON (a.sContrato = d.sContrato And ' +
                                          'a.sIdConvenio = d.sIdConvenio And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) Where ' +
                                          'a.sContrato = :Contrato And a.sIdConvenio = :Convenio ' + cadpua  + ' Group By a.sWbs, a.sNumeroActividad Order By a.dPonderado DESC')

          Else
              If tsOrdenado.Text = 'PRECIO UNITARIO' Then
                  connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidadAnexo, a.dInstalado, a.dExcedente, ' +
                                              'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                              'From actividadesxanexo a INNER JOIN distribuciondeanexo d ON (a.sContrato = d.sContrato And ' +
                                              'a.sIdConvenio = d.sIdConvenio And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                              'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio ' + cadpua  + ' Group By a.sWbs, a.sNumeroActividad Order By (a.dVentaMN * dCantidadAnexo) DESC') ;
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
                                                      'Where b.sContrato = :contrato And b.sNumeroActividad = :Actividad And b.dIdFecha <= :Fecha ' + cadpua  + ' Group By b.sPaquete' ) ;
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

        if not FileExists(global_files + global_miReporte + '_RetrazosContrato.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_RetrazosContrato.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

        if not FileExists(global_files + global_miReporte + '_RetrazosContratoDLL.fr3 ') then
        begin
           ShowMessage('El archivo de reporte'+global_MiReporte+'_RetrazosContratoDLL.fr3 no existe, notifique al administrador del sistema ');
           exit;
        end;

        progress.Visible := False ;
        progress.Progress := 0 ;
        //Obtenemos Reporte en Dolares y M.N
        if chkMN.Checked = True then
           rInforme.LoadFromFile (global_files + global_miReporte + '_RetrazosContrato.fr3')
        else
           rInforme.LoadFromFile (global_files + global_miReporte + '_RetrazosContratoDLL.fr3');

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
                                        'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio ' + cadpua  + ' And a.sNumeroOrden = :Orden  ' +
                                        'Group By a.sWbs, a.sNumeroActividad Order By a.iItemOrden')
        Else
          If tsOrdenado.Text = 'PONDERADO' Then
              connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad, a.dInstalado, a.dExcedente, ' +
                                          'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                          'From actividadesxorden a INNER JOIN distribuciondeactividades d ON (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And ' +
                                          'a.sNumeroOrden = d.sNumeroOrden And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                          'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio ' + cadpua  + ' And a.sNumeroOrden = :Orden ' +
                                          'Group By a.sWbs, a.sNumeroActividad Order By a.dPonderado DESC')
          Else
              If tsOrdenado.Text = 'PRECIO UNITARIO' Then
                    connection.QryBusca.SQL.Add('Select a.iNivel, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.sMedida, a.dCantidad, a.dInstalado, a.dExcedente, ' +
                                              'a.dVentaMN, a.dVentaDLL, a.dPonderado, a.dFechaInicio, a.dFechaFinal, sum(d.dCantidad) as dProgramado ' +
                                              'From actividadesxorden a INNER JOIN distribuciondeactividades d ON (a.sContrato = d.sContrato And a.sIdConvenio = d.sIdConvenio And ' +
                                              'a.sNumeroOrden = d.sNumeroOrden And a.sWbs = d.sWbs And a.sNumeroActividad = d.sNumeroActividad And d.dIdFecha <= :Fecha) ' +
                                              'Where a.sContrato = :Contrato And a.sIdConvenio = :Convenio ' + cadpua  + ' And a.sNumeroOrden = :Orden ' +
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
                                      'INNER JOIN actividadesxorden a ON (a.sContrato = b.sContrato And a.sWbs = b.sWbs And a.sNumeroActividad = b.sNumeroActividad And a.sIdConvenio = :Convenio And a.sTipoActividad = "Actividad" )' +
                                      'Where b.sContrato = :contrato And b.sWbs = :Wbs And b.sNumeroActividad = :Actividad ' + cadpua  + ' And b.dIdFecha <= :Fecha Group By b.sWbs, b.sNumeroActividad' ) ;
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

        if not FileExists(global_files + global_miReporte + '_RetrazosOrden.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_RetrazosOrden.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

        if not FileExists(global_files + global_miReporte + '_RetrazosOrdenDLL.fr3 ') then
        begin
           ShowMessage('El archivo de reporte'+global_MiReporte+'_RetrazosOrdenDLL.fr3 no existe, notifique al administrador del sistema ');
           exit;
        end;

        progress.Visible := False ;
        progress.Progress := 0 ;
        //Obtenemos Reporte en Dolares y M.N
        if chkMN.Checked = True then
           rInforme.LoadFromFile (global_files + global_miReporte + '_RetrazosOrden.fr3')
        else
           rInforme.LoadFromFile (global_files + global_miReporte + '_RetrazosOrdenDLL.fr3');

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
   if not FileExists(global_files + global_miReporte + '_ConcentradoEstimacionesDetalle.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ConcentradoEstimacionesDetalle.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;

   if not FileExists(global_files + global_miReporte + '_ConcentradoEstimacionesDetalleVolumen.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ConcentradoEstimacionesDetalleVolumen.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;

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
        rInforme.LoadFromFile (global_files + global_miReporte + '_ConcentradoEstimacionesDetalle.fr3');
    end
    Else
        rInforme.LoadFromFile (global_files + global_miReporte + '_ConcentradoEstimacionesDetalleVolumen.fr3') ;
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
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
        if not FileExists(global_files + global_miReporte + '_PersonalCantidadProgramadoReal.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_PersonalCantidadProgramadoReal.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

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
        rInforme.LoadFromFile (global_files + global_miReporte + '_PersonalCantidadProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
    Else
    Begin
        if not FileExists(global_files + global_miReporte + '_PersonalCostoProgramadoReal.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_PersonalCostoProgramadoReal.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

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
        rInforme.LoadFromFile (global_files + global_miReporte + '_PersonalCostoProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

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
        if not FileExists(global_files + global_miReporte + '_EquiposCantidadProgramadoReal.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_EquiposCantidadProgramadoReal.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

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
        rInforme.LoadFromFile (global_files + global_miReporte + '_EquiposCantidadProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
    End
    Else
    Begin
        if not FileExists(global_files + global_miReporte + '_EquiposCostoProgramadoReal.fr3') then
        begin
           showmessage('El archivo de reporte '+global_Mireporte+'_EquiposCostoProgramadoReal.fr3 no existe, notifique al administrador del sistema');
           exit;
        end;

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
        rInforme.LoadFromFile (global_files + global_miReporte + '_EquiposCostoProgramadoReal.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
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
   if ChkPu.Checked = True Then
        cadpua := 'And sTipoAnexo =  "PU" '
    else
        cadpua := 'And sTipoAnexo = "ADM" ' ;

 If rxAnexoGenerado.RecordCount > 0 Then
        rxAnexoGenerado.EmptyTable ;

 If sOpcion <> '' Then
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        If tsOrdenado.Text = 'ANEXO "C"' Then
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dInstalado ' +
                              'From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" ' + cadpua + ' Order By iItemOrden')
        Else
            If tsOrdenado.Text = 'PONDERADO' Then
                connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dInstalado ' +
                                  'From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" ' + cadpua + ' Order By dPonderado DESC')
            Else
                connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN, dVentaDLL, dInstalado ' +
                                  'From actividadesxanexo Where sContrato = :contrato and sIdConvenio = :Convenio and sTipoActividad = "Actividad" ' + cadpua + ' Order By (dCantidadAnexo * dVentaMN) DESC') ;
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
          if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptos2.fr3') then
          begin
            showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptos2.fr3 no existe, notifique al administrador del sistema');
            exit;
          end;
          if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptos.fr3') then
          begin
            showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptos.fr3 no existe, notifique al administrador del sistema');
            exit;
          end;

           If sOpcion = 'Reportadas' Then
              rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptos2.fr3')
           Else
              rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptos.fr3') ;

         end
        else
        begin
            if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptos2DLL.fr3') then
            begin
               showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptos2DLL.fr3 no existe, notifique al administrador del sistema');
               exit;
            end;
            if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptosDLL.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptosDLL.fr3 no existe, notifique al administrador del sistema');
                exit
            end;

            If sOpcion = 'Reportadas' Then
               rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptos2DLL.fr3')
            Else
               rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptosDLL.fr3') ;
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
                              'Where sContrato = :contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" And sNumeroOrden = :Orden ' + cadpua   +
                              'And sTipoActividad = "Actividad"  Group By sNumeroActividad Order By iItemOrden')
         Else
            If tsOrdenado.Text = 'PONDERADO' Then
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, dPonderado, sMedida, Sum(dCantidad) as dCantidadAnexo, dVentaMN, dVentaDLL, dInstalado From actividadesxorden a ' +
                              'Where sContrato = :contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" And sNumeroOrden = :Orden ' +  cadpua  +
                              'And sTipoActividad = "Actividad" Group By sNumeroActividad Order By dPonderado DESC')
            Else
            connection.QryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, dPonderado, sMedida, Sum(dCantidad) as dCantidadAnexo, dVentaMN, dVentaDLL, dInstalado From actividadesxorden a ' +
                              'Where sContrato = :contrato and sIdConvenio = :Convenio And sTipoActividad = "Actividad" And sNumeroOrden = :Orden ' + cadpua +
                              'And sTipoActividad = "Actividad" Group By sNumeroActividad Order By (dCantidad * dVentaMN) DESC') ;
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
            if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptosOrden2.fr3') then
            begin
               showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptosOrden2.fr3 no existe, notifique al administrador del sistema');
               exit;
            end;
            if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptosOrden.fr3') then
            begin
               showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptosOrden.fr3 no existe, notifique al administrador del sistema');
               exit;
            end;

            If sOpcion = 'Reportadas' Then
               rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptosOrden2.fr3')
            Else
               rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptosOrden.fr3') ;
          end;
        end
        else
        begin
            if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptosOrden2DLL.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptosOrden2DLL.fr3 no existe, notifique al administrador del sistema');
                exit;
            end;
            if not FileExists(global_files + global_miReporte + '_EstatusGeneradoConceptosOrdenDLL.fr3') then
            begin
                showmessage('El archivo de reporte '+global_Mireporte+'_EstatusGeneradoConceptosOrdenDLL.fr3 no existe, notifique al administrador del sistema');
                exit;
            end;

           If sOpcion = 'Reportadas' Then
               rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptosOrden2DLL.fr3')
           Else
               rInforme.LoadFromFile (global_files + global_miReporte + '_EstatusGeneradoConceptosOrdenDLL.fr3') ;
        end;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

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
   if not FileExists(global_files + global_miReporte + '_TrinomioConcentrado.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_TrinomioConcentrado.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

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
    rInforme.LoadFromFile (global_files + global_miReporte + '_TrinomioConcentrado.fr3');
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

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
   if not FileExists(global_files + global_miReporte + '_validaActOrden.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_validaActOrden.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

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
        rInforme.LoadFromFile (global_files + global_miReporte + '_validaActOrden.fr3') ;
        rInforme.PreviewOptions.MDIChild := True ;
        rInforme.PreviewOptions.Modal := False ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
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

procedure TfrmCompara.chkadmonEnter(Sender: TObject);
begin
  ChkPu.Checked := False ;
end;

procedure TfrmCompara.chkDLLClick(Sender: TObject);
begin
      chkMN.Checked  := False;
end;

procedure TfrmCompara.chkDLLEnter(Sender: TObject);
begin
     chkMN.Checked  := False;
end;

procedure TfrmCompara.chkPuEnter(Sender: TObject);
begin
 ChkAdmon.Checked := False
end;

procedure TfrmCompara.cmdConceptosClick(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// SEGUIMINTO DE AVANCES X PARTIDA DIAVAZ OCTUBRE 2012 //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dVolumen, dAvanceGlobal, dProgramado, dFisico: double;
      Progreso, TotalProgreso: real;
      lEncuentra : boolean;
      sColInicio, sColFinal : string;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 65;

      Excel.Columns['A:A'].ColumnWidth := 20;
      Excel.Columns['B:B'].ColumnWidth := 82.71;
      Excel.Columns['C:F'].ColumnWidth := 18;
      Excel.Columns['G:G'].ColumnWidth := 15;
      Excel.Columns['H:H'].ColumnWidth := 8.43;

      Hoja.Range['A1:A2'].Select;
      Excel.Selection.RowHeight := '42';

      Hoja.Range['B'+IntTostr(Ren-1)+':B'+IntToStr(Ren-1)].Select;
      Excel.Selection.Value := global_contrato +' '+ tsNumeroOrden.Text;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 27;
      Excel.Selection.Font.Name := 'Tahoma';

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'PDA. ANEXO-"C"';
      FormatoEncabezado;
      Hoja.Range['B'+IntTostr(Ren)+':B'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'DESCRIPCION';
      FormatoEncabezado;
      Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'POND. %';
      FormatoEncabezado;
      Hoja.Range['D'+IntTostr(Ren)+':D'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% AVANCE PARCIAL';
      FormatoEncabezado;
      Hoja.Range['E'+IntTostr(Ren)+':E'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% POR EJECUTAR';
      FormatoEncabezado;
      Hoja.Range['F'+IntTostr(Ren)+':F'+IntToStr(Ren)].Select;
      Excel.Selection.Value := '% AVANCE POND.';
      FormatoEncabezado;
      Hoja.Range['G'+IntTostr(Ren)+':G'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'Duración Días (PR)';
      FormatoEncabezado;

      //Consultamos las fechas del convenio modificatorio para impresion de las cantidades reportadas superiores al programa de trabajo.
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select max(dIdFecha) as dFechaFinal from reportediario where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden ');
      connection.QryBusca2.ParamByName('contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('Convenio').AsString := global_convenio;
      connection.QryBusca2.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
      connection.QryBusca2.Open;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value    := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value    := global_convenio;
      connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString;
      connection.QryBusca.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text;
      if chkAdmon.Checked then
         connection.QryBusca.SQL.Add(' and sTipoAnexo = "ADM" ');
      if chkPU.Checked then
         connection.QryBusca.SQL.Add(' and sTipoAnexo = "PU" ');
      if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
      begin
          connection.QryBusca.SQL.Add(' order by mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)');
          connection.QryBusca.ParamByName('tam').AsInteger      := Global_TamOrden;
          connection.QryBusca.ParamByName('separador').AsString := Global_SepOrden;
      end
      else
         connection.QryBusca.SQL.Add('order by iItemOrden');
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        MiFecha := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        MiFechaI := connection.QryBusca.FieldByName('dFechaInicio').AsDateTime;
        if connection.QryBusca2.FieldValues['dFechaFinal'] > connection.QryBusca.FieldValues['dFechaFinal'] then
           MiFechaF := connection.QryBusca2.FieldByName('dFechaFinal').AsDateTime
        else
           MiFechaF := connection.QryBusca.FieldByName('dFechaFinal').AsDateTime;
        for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
        begin
            Hoja.Cells[Ren, 8 + i].Select;
                 {Formato de las fechas archivo Excel,, 24/07/2011..}
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := DateToStr(MiFecha);
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clNavy;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Size := 12;
            Excel.Selection.Font.Name := 'Tahoma';
            Excel.Selection.Interior.ColorIndex := 24;
            MiFecha := IncDay(MiFecha);
        end;
        total := i;

        Hoja.Cells[Ren, 8 + i].Select;
        Excel.Selection.Value := 'Fin';
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 12;
        Excel.Selection.Font.Name := 'Tahoma';
        Excel.Selection.Interior.ColorIndex := 3;

        inc(Ren);
        Hoja.Range['H'+IntTostr(Ren)+':H'+IntToStr(Ren)].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment   := xlCenter;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 12;
        Excel.Selection.Font.Name := 'Tahoma';
        Excel.Selection.Value := 'PROG.';

        Hoja.Range['H'+IntTostr(Ren + 1)+':H'+IntToStr(Ren + 1)].Select;
        Excel.Selection.HorizontalAlignment := xlCenter;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Font.Size := 12;
        Excel.Selection.Font.Name := 'Tahoma';
        Excel.Selection.Value := 'REAL';

        dAvanceGlobal := 0;
        connection.QryBusca.First;
        while not connection.QryBusca.Eof do
        begin
           {Movimiento de la Barra..}
            Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
            TotalProgreso := TotalProgreso + Progreso;
            BarraEstado.Position := Trunc(TotalProgreso);

            Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren)].Select;
            Excel.Selection.RowHeight := '30';

            Hoja.Range['A'+IntTostr(Ren + 1)+':A'+IntToStr(Ren + 1)].Select;
            Excel.Selection.RowHeight := '30';

            Hoja.Range['A'+IntTostr(Ren + 2)+':A'+IntToStr(Ren + 2)].Select;
            Excel.Selection.RowHeight := '18.75';

            if connection.QryBusca.FieldValues['iNivel'] = 0 then
            begin
                Hoja.Range['A'+IntTostr(Ren)+':G'+IntToStr(Ren)].Select;
                Excel.Selection.Interior.ColorIndex := 17;

                MiFecha := MiFechaI;

                {Consultamos obtenemos los programados de la orden..}
                Q_Partidas.Active := False;
                Q_Partidas.SQL.Clear;
                Q_Partidas.SQL.Add('select * from avancesglobales where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden');
                Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
                Q_Partidas.Params.ParamByName('Contrato').Value    := global_contrato;
                Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
                Q_Partidas.Params.ParamByName('Convenio').Value    := global_convenio;
                Q_Partidas.Params.ParamByName('Orden').DataType    := ftString;
                Q_Partidas.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text;
                Q_Partidas.Open;

                if Q_Partidas.RecordCount > 0 then
                begin
                  sColInicio := '';
                  for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
                  begin
                      if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                      begin
                          if sColInicio = '' then
                             sColInicio := columnas[8 + i];
                          sColFinal := columnas[8 + i];
                          Hoja.Cells[Ren, 8 + i].Select;;
                          Excel.Selection.NumberFormat := '##0.0000';
                          Excel.Selection.Value        := Q_Partidas.FieldByName('dAvancePonderadoGlobal').AsFloat;
                          Excel.Selection.HorizontalAlignment := xlCenter;
                          Excel.Selection.VerticalAlignment := xlCenter;
                          Excel.Selection.Font.Bold := False;
                          Excel.Selection.Interior.ColorIndex := 37;
                          Q_Partidas.Next;
                      end;
                      MiFecha := IncDay(MiFecha);
                  end;
                  Hoja.Range[sColInicio + IntToStr(Ren) + ':'+sColFinal + IntToStr(Ren)].Select;
                  Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
                  Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
                  Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
                  Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
                  Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
                  Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
                  Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
                  Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
                  Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
                  Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
                  Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
                  Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
                end;

                MiFecha := MiFechaI;

                {Consultamos obtenemos los Avances Fisicos de la orden..}
                Q_Partidas.Active := False;
                Q_Partidas.SQL.Clear;
                Q_Partidas.SQL.Add('select * from avancesglobalesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and dIdFecha >=:fecha ');
                Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
                Q_Partidas.Params.ParamByName('Contrato').Value    := global_contrato;
                Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
                Q_Partidas.Params.ParamByName('Convenio').Value    := global_convenio;
                Q_Partidas.Params.ParamByName('Orden').DataType    := ftString;
                Q_Partidas.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text;
                Q_Partidas.Params.ParamByName('fecha').DataType    := ftDate;
                Q_Partidas.Params.ParamByName('fecha').Value       := MiFecha;
                Q_Partidas.Open;

                if Q_Partidas.RecordCount > 0 then
                begin
                  dFisico := 0;
                  sColInicio := '';
                  for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
                  begin
                      if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                      begin
                          if sColInicio = '' then
                             sColInicio := columnas[8 + i];
                          sColFinal := columnas[8 + i];
                          Hoja.Cells[Ren + 1, 8 + i].Select;
                          Excel.Selection.NumberFormat := '##0.0000';
                          dFisico := dFisico + Q_Partidas.FieldByName('dAvance').AsFloat;
                          Excel.Selection.Value        := dFisico;
                          Excel.Selection.HorizontalAlignment := xlCenter;
                          Excel.Selection.VerticalAlignment   := xlCenter;
                          Excel.Selection.Font.Bold := False;
                          Excel.Selection.Interior.ColorIndex := 44;
                          Q_Partidas.Next;
                      end;
                      MiFecha := IncDay(MiFecha);
                  end;
                  Hoja.Range[sColInicio + IntToStr(Ren+1) + ':'+sColFinal + IntToStr(Ren+1)].Select;
                  Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
                  Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
                  Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
                  Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
                  Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
                  Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
                  Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
                  Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
                  Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
                  Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
                  Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
                  Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
                  Excel.Selection.Borders[xlInsideVertical].LineStyle   := xlContinuous;
                  Excel.Selection.Borders[xlInsideVertical].Weight      := xlThin;
                  Excel.Selection.Borders[xlInsideVertical].Color       := clGray;
                end;
            end;

            Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
            Excel.Selection.Interior.ColorIndex := 37;

            Hoja.Range['D'+IntTostr(Ren)+':D'+IntToStr(Ren)].Select;
            Excel.Selection.Interior.ColorIndex := 44;

            Hoja.Range['G'+IntTostr(Ren)+':G'+IntToStr(Ren)].Select;
            Excel.Selection.Interior.ColorIndex := 37;

                  {Escritura de Datos en el Archvio de Excel..}
            Hoja.Cells[Ren, 1].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.Name := 'Arial';

            Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 2].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
            Excel.Selection.HorizontalAlignment := xlJustify;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.MergeCells := True;
            Excel.Selection.WrapText   := True;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Arial';

            Hoja.Range['B'+IntTostr(Ren)+':B'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 3].Select;
            Excel.Selection.NumberFormat := '##0.0000';
            Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 12;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 4].Select;
            Excel.Selection.NumberFormat := '##0.0000';
            Excel.Selection.Value := 0;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['D'+IntTostr(Ren)+':D'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 5].Select;
            Excel.Selection.NumberFormat := '##0.0000';
            Excel.Selection.Value := 0;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Color:= clRed;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['E'+IntTostr(Ren)+':E'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 6].Select;
            Excel.Selection.NumberFormat := '##0.0000';
            Excel.Selection.Value := 0;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['F'+IntTostr(Ren)+':F'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

            Hoja.Cells[Ren, 7].Select;
            Excel.Selection.Value := connection.QryBusca.FieldValues['dDuracion'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment   := xlCenter;
            Excel.Selection.Font.Size := 14;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Font.Name := 'Tahoma';

            Hoja.Range['G'+IntTostr(Ren)+':G'+IntToStr(Ren + 2)].Select;
            Excel.Selection.MergeCells := True;

                {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
              //nivel := connection.QryBusca.FieldValues['iNivel'];
              Hoja.Range['A' + IntToStr(Ren) + ':B' + IntToStr(Ren)].Select;
              //if colores[nivel + 1, 2] = 1 then
              //  Excel.Selection.Font.Color := clWhite;
              Excel.Selection.Font.Bold := True;
              //Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];

              if connection.QryBusca.FieldValues['iNivel'] > 0 then
              begin
                  //Aqui obtenermos el avance acumulado del paquete..
                  Connection.qryBusca2.Active := False ;
                  Connection.qryBusca2.SQL.Clear ;
                  Connection.qryBusca2.SQL.Add('Select a.dPonderado, '+
                             ' if((select ba.lCancelada from bitacoradeactividades ba where a.sContrato = ba.sContrato and a.sNumeroOrden = ba.sNumeroOrden and a.swbs = ba.swbs and lCancelada = "Si" limit 1) ="Si", 100, sum(b.dAvance)) as dAvance, '+
                             '    if(sum(b.dcantidad) > a.dcantidad, a.dPonderado, '+
                             '    if((select ba.lCancelada from bitacoradeactividades ba where a.sContrato = ba.sContrato and a.sNumeroOrden = ba.sNumeroOrden and a.swbs = ba.swbs and lCancelada = "Si" and ba.didfecha <= :fecha limit 1) ="Si", a.dPonderado, '+
                             '        sum(b.dcantidad * (a.dPonderado / a.dcantidad))))as dAvancePonderado '+
                             ' From actividadesxorden a inner join bitacoradeactividades b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs) '+
                             ' Where a.sContrato = :contrato and a.sIdConvenio =:Convenio and a.sNumeroOrden = :orden And b.sWbs like concat(:wbs, ".%") group by a.swbs') ;
                  Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;
                  Connection.qryBusca2.Params.ParamByName('Convenio').DataType  := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Convenio').Value     := global_convenio ;
                  Connection.qryBusca2.Params.ParamByName('Orden').DataType     := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Orden').Value        := tsNumeroOrden.Text ;
                  Connection.qryBusca2.Params.ParamByName('Fecha').DataType     := ftDate ;
                  Connection.qryBusca2.Params.ParamByName('Fecha').Value        := MiFechaF ;
                  Connection.qryBusca2.Params.ParamByName('Wbs').DataType       := ftString ;
                  Connection.qryBusca2.Params.ParamByName('Wbs').Value          := connection.QryBusca.FieldByName('sWbs').AsString;
                  Connection.qryBusca2.Open;

                  dVolumen := 0;
                  while Not Connection.QryBusca2.Eof do
                  begin
                      dVolumen := dVolumen + Connection.QryBusca2.FieldByName('dAvancePonderado').AsFloat;
                      Connection.QryBusca2.Next;
                  end;

                  //Avance de la partida..
                  Hoja.Cells[Ren, 4].Select;
                  Excel.Selection.NumberFormat := '##0.0000';
                  if connection.QryBusca.FieldValues['dPonderado'] > 0 then
                     Excel.Selection.Value := (100 / connection.QryBusca.FieldValues['dPonderado']) * dVolumen
                  else
                     Excel.Selection.Value := 0;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;

                  //Avance por ejecutar
                  Hoja.Cells[Ren, 5].Select;
                  Excel.Selection.NumberFormat := '##0.0000';
                  If connection.QryBusca.FieldValues['dPonderado'] > 0 then
                     Excel.Selection.Value := 100 - ((100 / connection.QryBusca.FieldValues['dPonderado']) * dVolumen)
                  else
                     Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Bold := False;

                  //Avance Ponderado por partida..
                  Hoja.Cells[Ren, 6].Select;
                  Excel.Selection.NumberFormat := '##0.0000';
                  Excel.Selection.Value := dVolumen;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Bold := False;
                  if dVolumen > 0 then
                     Excel.Selection.Font.Color := clBlue;
              end;
          end
          else
          begin
            MiFecha := MiFechaI;

            {Consultamos obtenemos los programados de la orden..}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('select * from distribuciondeactividades where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sNumeroActividad =:Actividad ');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value    := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
            Q_Partidas.Params.ParamByName('Convenio').Value    := global_convenio;
            Q_Partidas.Params.ParamByName('Orden').DataType    := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text;
            Q_Partidas.Params.ParamByName('Wbs').DataType      := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value         := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Params.ParamByName('Actividad').DataType:= ftString;
            Q_Partidas.Params.ParamByName('Actividad').Value   := connection.QryBusca.FieldByName('sNumeroActividad').AsString;
            Q_Partidas.Open;

            if Q_Partidas.RecordCount > 0 then
            begin
              dProgramado := 0;
              sColInicio  := '';
              for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
              begin
                  if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                  begin
                      if sColInicio = '' then
                         sColInicio := columnas[8 + i];
                      sColFinal := columnas[8 + i];
                      Hoja.Cells[Ren, 8 + i].Select;
                      Excel.Selection.NumberFormat := '##0.0000';
                      dProgramado := dProgramado + Q_Partidas.FieldByName('dCantidad').AsFloat;
                      Excel.Selection.Value        := dProgramado;
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment := xlCenter;
                      Excel.Selection.Font.Bold := False;
                      Excel.Selection.Interior.ColorIndex := 37;
                      Q_Partidas.Next;
                  end;
                  MiFecha := IncDay(MiFecha);
              end;
              Hoja.Range[sColInicio + IntToStr(Ren) + ':'+sColFinal + IntToStr(Ren)].Select;
              Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
              Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
              Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
              Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
              Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
              Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
              Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
              Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
              Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
              Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
              Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
              Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
            end;

            {Consultamos si la partida esta reprotada..}
            Q_Partidas.Active := False;
            Q_Partidas.SQL.Clear;
            Q_Partidas.SQL.Add('Select b.sWbs,b.sNumeroActividad, sum(a.dCantidad) as dCantidad, a.dIdFecha, b.dCantidad as dVolumen ' +
              'From actividadesxorden b ' +
              'left JOIN bitacoradeactividades a ' +
              'ON (a.sContrato=b.sContrato And a.sWbs=b.sWbs And a.dIdFecha <=:Final and b.sNumeroOrden=a.sNumeroOrden) ' +
              'left JOIN tiposdemovimiento t ' +
              'ON (b.sContrato=t.sContrato And a.sIdTipoMovimiento=t.sIdTipoMovimiento And t.sClasificacion="Tiempo en Operacion") ' +
              'Where b.sContrato=:Contrato And b.sIdConvenio=:Convenio And b.sNumeroOrden =:Orden and a.sWbs =:Wbs ' +
              'Group By b.sWbs,a.dIdFecha Order By b.sNumeroActividad,b.iItemOrden,a.dIdFecha');
            Q_Partidas.Params.ParamByName('Contrato').DataType := ftString;
            Q_Partidas.Params.ParamByName('Contrato').Value := global_contrato;
            Q_Partidas.Params.ParamByName('Convenio').DataType := ftString;
            Q_Partidas.Params.ParamByName('Convenio').Value := global_convenio;
            Q_Partidas.Params.ParamByName('Orden').DataType := ftString;
            Q_Partidas.Params.ParamByName('Orden').Value := tsNumeroOrden.Text;
            Q_Partidas.Params.ParamByName('Final').DataType := ftDate;
            Q_Partidas.Params.ParamByName('Final').Value := MiFechaF;
            Q_Partidas.Params.ParamByName('Wbs').DataType := ftString;
            Q_Partidas.Params.ParamByName('Wbs').Value := connection.QryBusca.FieldByName('sWbs').AsString;
            Q_Partidas.Open;

            MiFecha := MiFechaI;
            if Q_Partidas.RecordCount > 0 then
            begin
              dVolumen := 0;
              for i := 1 to (DaysBetween(MiFechaF, MiFechaI) + 1) do
              begin
                  if MiFecha = Q_Partidas.FieldByName('dIdFecha').AsDateTime then
                  begin
                      Hoja.Cells[Ren + 1, 8 + i].Select;
                      dVolumen := dVolumen + Q_Partidas.FieldByName('dCantidad').AsFloat;
                      Excel.Selection.NumberFormat := '##0.0000';
                      Excel.Selection.Value        := dVolumen;
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment   := xlCenter;
                      Excel.Selection.Font.Bold := False;
                      Excel.Selection.Interior.ColorIndex := 44;
                      Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
                      Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
                      Excel.Selection.Borders[xlEdgeLeft].Color        := clGray;
                      Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
                      Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
                      Excel.Selection.Borders[xlEdgeTop].Color         := clGray;
                      Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
                      Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
                      Excel.Selection.Borders[xlEdgeBottom].Color      := clGray;
                      Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
                      Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
                      Excel.Selection.Borders[xlEdgeRight].Color       := clGray;
                      Q_Partidas.Next;
                  end;
                  MiFecha := IncDay(MiFecha);
              end;

              //Avance de la partida..
              Hoja.Cells[Ren, 4].Select;
              Excel.Selection.NumberFormat := '##0.0000';
              Excel.Selection.Value := dVolumen;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Excel.Selection.Font.Bold  := False;
              Excel.Selection.Font.size  := 14;
              if dVolumen = 100 then
                 Excel.Selection.Font.Color := clBlue;

              //Avance por ejecutar
              Hoja.Cells[Ren, 5].Select;
              Excel.Selection.NumberFormat := '##0.0000';
              Excel.Selection.Value := 100 - dVolumen;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Excel.Selection.Font.Bold := False;
              Excel.Selection.Font.size  := 14;

              //Avance Ponderado por partida..
              Hoja.Cells[Ren, 6].Select;
              Excel.Selection.NumberFormat := '##0.0000';
              Excel.Selection.Value := (connection.QryBusca.FieldValues['dPonderado'] / 100) * dVolumen;
              Excel.Selection.HorizontalAlignment := xlCenter;
              Excel.Selection.VerticalAlignment   := xlCenter;
              Excel.Selection.Font.Bold  := False;
              Excel.Selection.Font.size  := 14;
              Excel.Selection.Font.color := clBlue;

              dAvanceGlobal := dAvanceGlobal + (connection.QryBusca.FieldValues['dPonderado'] / 100) * dVolumen;
            end;
          end;

          connection.QryBusca.Next;
          Inc(Ren,3);
        end;
      end;

      Hoja.Cells[3, 6].Select;
      Excel.Selection.NumberFormat := '##0.0000';
      if dAvanceGlobal > 100 then
         Excel.Selection.Value := 100
      else
         Excel.Selection.Value := dAvanceGlobal;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.size := 12;

      Hoja.Cells[3, 5].Select;
      Excel.Selection.NumberFormat := '##0.0000';
      if dAvanceGlobal > 100 then
         Excel.Selection.Value := 100
      else
         Excel.Selection.Value := 100 - dAvanceGlobal;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.size := 12;

      Hoja.Range['A'+IntTostr(1)+':G'+IntToStr(1)].Select;
      Excel.Selection.Interior.ColorIndex := 15;

      Hoja.Cells[3, 4].Select;
      Excel.Selection.NumberFormat := '##0.0000';
      if dAvanceGlobal > 100 then
         Excel.Selection.Value := 100
      else
         Excel.Selection.Value := dAvanceGlobal;
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.size := 12;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'AVANCES ' + tsNumeroOrden.Text;
      except
        Hoja.Name := 'AVANCES ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
      end;
    end;

    Result := Resultado;
  end;

begin
    //Verificamos si es un frente
    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        messageDLG('Seleccione un frente de trabajo!', mtInformation, [mbOk], 0);
        exit;
    End;

    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;
      // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
    end
    else
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := False;
    end;

    PanelProgress.Visible := True;
    Label15.Refresh;
    Label16.Refresh;
    BarraEstado.Position := 0;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

      // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

      // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

      // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
    begin
          // Grabar el archivo de excel con el nombre dado
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
      Excel.ScreenUpdating := True;
      PanelProgress.Visible := False;
      messageDlg('El Archivo se generó Correctamente!', mtInformation, [mbOk], 0);
    end;

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);

end;

//soad -> Reporte para verificar las paridas Excedidas ...
//******************************************************************************
procedure TfrmCompara.cmdExcedentesClick(Sender: TObject);
var
   lContinua : boolean;
begin
   if not FileExists(global_files + global_miReporte + '_Partidas_excedentes.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_Partidas_excedentes.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;
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
        rInforme.LoadFromFile (global_files + global_miReporte + '_Partidas_excedentes.fr3') ;
        rInforme.PreviewOptions.MDIChild := False ;
        rInforme.PreviewOptions.Modal := True ;
        rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
        rInforme.PreviewOptions.ShowCaptions := False ;
        rInforme.Previewoptions.ZoomMode := zmPageWidth ;
        rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
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
   if not FileExists(global_files + global_miReporte + '_ConcentradodeSuministros.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_ConcentradodeSuministros.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

   if not FileExists(global_files + global_miReporte + '_ConcentradodeSuministrosDLL.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_ConcentradodeSuministrosDLL.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

   if ChkPu.Checked = True Then
      cadpua := 'And sTipoAnexo =  "PU" '
   else
      cadpua := 'And sTipoAnexo = "ADM" ' ;
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
    Connection.qryBusca.SQL.Add('Select sNumeroActividad, mDescripcion, sMedida, dCantidadAnexo, dPonderado, dVentaMN From actividadesxanexo where sContrato = :Contrato ' +
                                'And sIdConvenio = :Convenio and sTipoActividad = "Actividad" ' + cadpua + ' Order By iItemOrden') ;
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString ;
    Connection.qryBusca.Params.ParamByName('Convenio').Value := sConvenio ;
    Connection.qryBusca.Open ;

    dsInforme.FieldAliases.Clear ;
    dsInforme.DataSet := rxSuministroAnexo ;

    if connection.QryBusca.RecordCount>0 then
    begin
      Progress.Visible := True ;
      Progress.MinValue := 1 ;
      Progress.MaxValue := connection.QryBusca.RecordCount ;
    end;
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
       rInforme.LoadFromFile (global_files + global_miReporte + '_ConcentradodeSuministros.fr3')
    else
       rInforme.LoadFromFile (global_files +global_miReporte + '_ConcentradodeSuministrosDLL.fr3');
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
   if not FileExists(global_files + global_miReporte + '_TrinomioConcentrado.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_TrinomioConcentrado.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

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
    rInforme.LoadFromFile (global_files + global_miReporte + '_TrinomioConcentrado.fr3');
    rInforme.PreviewOptions.MDIChild := False ;
    rInforme.PreviewOptions.Modal := True ;
    rInforme.PreviewOptions.Maximized := lCheckMaximized () ;
    rInforme.PreviewOptions.ShowCaptions := False ;
    rInforme.Previewoptions.ZoomMode := zmPageWidth ;
    rInforme.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_comparativo', 'En el proceso Acumulado de generacíon trinomio MN', 0);
    end;
  end;
end;

procedure TfrmCompara.ActividadesxOrdenCalcFields(DataSet: TDataSet);
var
  sPeriodo:String;
begin
  try
    ActividadesxOrdendMontoMN.Value := ActividadesxOrdendCantidad.Value * ActividadesxOrdendVentaMN.Value ;
    sPeriodo:='';

    If ActividadesxOrden.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        if (chkPeriodo.Checked) then
          sPeriodo:=' and didfecha between :Inicio and :Fecha'
        else
          sPeriodo:=' And dIdFecha <= :Fecha';

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(dCantidad) as dReportado From bitacoradeactividades ' +
                                     'Where sContrato = :contrato' + sPeriodo + ' And sNumeroOrden = :Orden And ' +
                                     'sWbs = :wbs And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        if (chkPeriodo.Checked) then
        begin
          Connection.qryBusca2.Params.ParamByName('Inicio').DataType := ftDate ;
          Connection.qryBusca2.Params.ParamByName('Inicio').Value := tdIdFecha1.Date ;
        end;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Wbs').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Wbs').Value := ActividadesxOrden.FieldValues['sWbs'] ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value := ActividadesxOrden.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxOrdendReportado.Value := Connection.qryBusca2.FieldValues ['dReportado'] ;

        if (chkPeriodo.Checked) then
          sPeriodo:=' and e2.dFechaFinal between :Inicio and :Fecha'
        else
          sPeriodo:=' And e2.dFechaFinal <= :Fecha';



        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e ' +
                                     'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And e.sNumeroGenerador = e2.sNumeroGenerador' + sPeriodo + ' And e2.lStatus = "Autorizado") ' +
                                     'Where e.sContrato = :contrato And e.sNumeroOrden = :Orden And e.sWbs = :Wbs And e.sNumeroActividad = :Actividad And e.lEstima = "Si" Group By e.sWbs, e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        if (chkPeriodo.Checked) then
        begin
          Connection.qryBusca2.Params.ParamByName('Inicio').DataType := ftDate ;
          Connection.qryBusca2.Params.ParamByName('Inicio').Value := tdIdFecha1.Date ;
        end;
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

        if (chkPeriodo.Checked) then
          sPeriodo:=' and e2.dFechaAviso between :Inicio and :Fecha'
        else
          sPeriodo:=' And e2.dFechaAviso <= :Fecha';

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dSuministrado From anexo_psuministro e INNER JOIN anexo_suministro e2 ON ' +
                                     '(e.sContrato = e2.sContrato And e.iFolio = e2.iFolio' + sPeriodo + ' and e2.sNumeroOrden = :Orden) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.Text ;
        if (chkPeriodo.Checked) then
        begin
          Connection.qryBusca2.Params.ParamByName('Inicio').DataType := ftDate ;
          Connection.qryBusca2.Params.ParamByName('Inicio').Value := tdIdFecha1.Date ;
        end;
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
var
  sPeriodo:string;
begin
  try
    ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value ;
    ActividadesxAnexodMontoDLL.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaDLL.Value ;
    If ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' Then
    Begin
        sPeriodo:='';
        if(chkPeriodo.Checked) then
          sPeriodo:=' And dIdFecha between :Inicio and :Fecha'
        else
          sPeriodo:=' And dIdFecha <= :Fecha';


        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(dCantidad) as dReportado From bitacoradeactividades ' +
                                     'Where sContrato = :contrato' + sPeriodo + ' And ' +
                                     'sNumeroActividad = :Actividad and lImprime = "Si" Group By sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;
        if(chkPeriodo.Checked) then
           Connection.qryBusca2.Params.ParamByName('Inicio').AsDate        := tdIdFecha1.Date ;

        Connection.qryBusca2.Params.ParamByName('Fecha').DataType     := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value        := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'] ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxAnexodReportado.Value := Connection.qryBusca2.FieldValues ['dReportado'] ;

        sPeriodo:='';
        if(chkPeriodo.Checked) then
          sPeriodo:=' And e2.dFechaAviso between :Inicio and :Fecha'
        else
          sPeriodo:=' And e2.dFechaAviso <= :Fecha';


        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dSuministrado From anexo_psuministro e INNER JOIN anexo_suministro e2 ON ' +
                                     '(e.sContrato = e2.sContrato And e.iFolio = e2.iFolio' + sPeriodo +') ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;

        if(chkPeriodo.Checked) then
          Connection.qryBusca2.Params.ParamByName('Inicio').AsDate        := tdIdFecha1.Date ;

        Connection.qryBusca2.Params.ParamByName('Fecha').DataType     := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value        := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
             ActividadesxAnexodSuministrado.Value := Connection.qryBusca2.FieldValues ['dSuministrado'] ;

        sPeriodo:='';
        if(chkPeriodo.Checked) then
          sPeriodo:=' And e2.dFechaFinal between :Inicio and :Fecha'
        else
          sPeriodo:=' And e2.dFechaFinal <= :Fecha';

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dGenerado From estimacionxpartida e ' +
                                     'INNER JOIN estimaciones e2 ON (e.sContrato = e2.sContrato And e.sNumeroOrden = e2.sNumeroOrden And ' +
                                     'e.sNumeroGenerador = e2.sNumeroGenerador' + sPeriodo +' and e2.lStatus = "Autorizado") ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;
        if(chkPeriodo.Checked) then
          Connection.qryBusca2.Params.ParamByName('Inicio').AsDate        := tdIdFecha1.Date ;
        Connection.qryBusca2.Params.ParamByName('Fecha').DataType     := ftDate ;
        Connection.qryBusca2.Params.ParamByName('Fecha').Value        := tdIdFecha.Date ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
              ActividadesxAnexodGenerado.Value := Connection.qryBusca2.FieldValues ['dGenerado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dEstimado From actividadesxestimacion e ' +
                                     'INNER JOIN estimacionperiodo e2 ON (e.sContrato = e2.sContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion and e2.lEstimado = "Si") ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad and e.sTipoActividad = "Actividad" Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
        Connection.qryBusca2.Open ;
        If Connection.qryBusca2.RecordCount > 0 Then
              ActividadesxAnexodEstimado.Value := Connection.qryBusca2.FieldValues ['dEstimado'] ;

        Connection.qryBusca2.Active := False ;
        Connection.qryBusca2.SQL.Clear ;
        Connection.qryBusca2.SQL.Add('Select Sum(e.dCantidad) as dEstimado From estimacionxpartidaprov e ' +
                                     'INNER JOIN estimacionxproveedor e2 ON (e.sContrato = e2.sContrato And e.sSubContrato = e2.sSubContrato And e.iNumeroEstimacion = e2.iNumeroEstimacion) ' +
                                     'Where e.sContrato = :contrato And e.sNumeroActividad = :Actividad Group By e.sNumeroActividad') ;
        Connection.qryBusca2.Params.ParamByName('Contrato').DataType  := ftString ;
        Connection.qryBusca2.Params.ParamByName('Contrato').Value     := global_contrato ;
        Connection.qryBusca2.Params.ParamByName('Actividad').DataType := ftString ;
        Connection.qryBusca2.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad']  ;
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
    sPeriodo:string;
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
        sPeriodo:='';
        if (chkPeriodo.Checked) then
          sPeriodo:=' And c.didfecha between :Inicio and :Fecha'
        else
          sPeriodo:=' and c.didfecha <= :fecha';

        Connection.QryBusca.Active := False;
        Connection.QryBusca.Sql.Text := 'select a.swbs, b.dCantidad as dCantidadOrden, sum(c.dCantidad) as dCantidad, sum(c.dAvance * (b.dCantidad / a.dCantidadAnexo)) as dAvance ' +
                               'from actividadesxanexo a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.sWbsContrato = a.sWbs) ' +
                               'left join bitacoradeactividades c on (c.scontrato = b.scontrato and c.snumeroorden = b.snumeroorden and c.swbs = b.sWbs' + sPeriodo + ') ' +
                               'where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sTipoActividad = "Actividad" and a.swbs = :wbs ' +
                               'group by a.swbs order by a.iItemOrden';
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := global_convenio;
        if (chkPeriodo.Checked) then
        begin
          connection.QryBusca.Params.ParamByName('Inicio').DataType    := ftDate ;
          connection.QryBusca.Params.ParamByName('Inicio').Value       := tdIdFecha1.Date ;
        end;
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
        sPeriodo:='';
        if (chkPeriodo.Checked) then
          sPeriodo:=' And c.didfecha between :Inicio and :Fecha'
        else
          sPeriodo:=' and c.didfecha <= :fecha';

        Connection.QryBusca.Active := False;
        Connection.QryBusca.Sql.Text := 'select o.swbs, (select sum((c.dAvance * (a.dPonderado / 100)) * (b.dCantidad / a.dCantidadAnexo)) ' +
                                        'from actividadesxanexo a left join actividadesxorden b on (b.scontrato = a.scontrato and b.sidconvenio = :convenio and b.sWbsContrato = a.sWbs) ' +
                                        'left join bitacoradeactividades c on (c.scontrato = b.scontrato and c.snumeroorden = b.snumeroorden and c.swbs = b.sWbs' + sPeriodo +') ' +
                                        'where a.scontrato = :contrato and a.sidconvenio = :convenio and a.sTipoActividad = "Actividad" and a.swbs like concat(o.swbs, ".%")) as dAvance ' +
                                        'from actividadesxanexo o where o.scontrato = :contrato and o.sIdConvenio = :convenio and o.sTipoActividad = "Paquete" and o.swbs = :wbs ' +
                                        'order by o.iItemOrden';
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := global_convenio;
        if (chkPeriodo.Checked) then
        begin
          connection.QryBusca.Params.ParamByName('Inicio').DataType    := ftDate ;
          connection.QryBusca.Params.ParamByName('Inicio').Value       := tdIdFecha1.Date ;
        end;
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
        sPeriodo:='';
        if (chkPeriodo.Checked) then
          sPeriodo:=' And b.dIdFecha between :Inicio and :Fecha'
        else
          sPeriodo:=' And b.dIdFecha <= :Fecha';

        if ActividadesxOrden.Fieldbyname('cancelada').AsString<>'Si' then
        begin
          connection.QryBusca.Active := False ;
          connection.QryBusca.SQL.Clear ;
          connection.QryBusca.SQL.Add('Select sum(b.dAvance) as dAvance From bitacoradeactividades b ' +
                                      'Where b.sContrato = :contrato And sNumeroOrden = :Orden And b.sWbs = :Wbs'+
                                      sPeriodo + ' Group By b.sWbs' ) ;
          connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString ;
          connection.QryBusca.Params.ParamByName('Contrato').Value    := global_Contrato ;
          connection.QryBusca.Params.ParamByName('Orden').DataType    := ftString ;
          connection.QryBusca.Params.ParamByName('Orden').Value       := ActividadesxOrden.FieldValues['sNumeroOrden'] ;
          Connection.QryBusca.ParamByName('wbs').AsString             := ActividadesxOrden.FieldByName('swbs').AsString;
          if (chkPeriodo.Checked) then
          begin
            connection.QryBusca.Params.ParamByName('Inicio').DataType    := ftDate ;
            connection.QryBusca.Params.ParamByName('Inicio').Value       := tdIdFecha1.Date ;
          end;
          connection.QryBusca.Params.ParamByName('Fecha').DataType    := ftDate ;
          connection.QryBusca.Params.ParamByName('Fecha').Value       := tdIdFecha.Date ;
          connection.QryBusca.Open ;
          If connection.QryBusca.RecordCount > 0 Then
              Value := connection.QryBusca.FieldValues['dAvance']
          Else
              Value := 0
        end
        else
          Value := 100;
      End
      Else
      begin
        // Totalizar los avances por paquetes

        sPeriodo:='';
        if (chkPeriodo.Checked) then
          sPeriodo:=' And b.dIdFecha between :Inicio and :Fecha'
        else
          sPeriodo:=' and b.didfecha <= :fecha';

        Connection.QryBusca.Active := False;
        Connection.QryBusca.Sql.Clear;
        (*Connection.QryBusca.Sql.Add('Select a.dPonderado, sum(b.dAvance) as dAvance, if(sum(b.dAvance) > 100, a.dPonderado, sum(b.dAvance * (a.dPonderado / 100))) as dAvancePonderado ' +
                                    'From actividadesxorden a inner join bitacoradeactividades b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs and b.didfecha <= :fecha) ' +
                                    'Where a.sContrato = :contrato and a.sIdConvenio =:Convenio and a.sNumeroOrden = :orden And b.sWbs like concat(:wbs, ".%") group by a.swbs');
        *)

        Connection.QryBusca.Sql.Add('Select a.dPonderado, if((select ba.lCancelada from bitacoradeactividades ba where a.sContrato = ba.sContrato and a.sNumeroOrden = ba.sNumeroOrden ' +
                                    'and a.swbs = ba.swbs and lCancelada = "Si" limit 1) ="Si",100,sum(b.dAvance)) as dAvance, if(sum(b.dcantidad) > a.dcantidad, a.dPonderado, if((select ba.lCancelada from bitacoradeactividades ba ' +
                                    'where a.sContrato = ba.sContrato and a.sNumeroOrden = ba.sNumeroOrden and a.swbs = ba.swbs and lCancelada = "Si" and ba.didfecha <= :fecha limit 1) ="Si",a.dPonderado, ' +
                                    'sum(b.dcantidad * (a.dPonderado / a.dcantidad))))as dAvancePonderado ' +
                                    'From actividadesxorden a inner join bitacoradeactividades b on (b.scontrato = a.scontrato and b.snumeroorden = a.snumeroorden and b.swbs = a.swbs'+speriodo+') ' +
                                    'Where a.sContrato = :contrato and a.sIdConvenio =:Convenio and a.sNumeroOrden = :orden And b.sWbs like concat(:wbs, ".%") group by a.swbs');


        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := global_convenio;
        Connection.QryBusca.ParamByName('orden').AsString    := ActividadesxOrden.FieldValues['sNumeroOrden'];
        Connection.QryBusca.ParamByName('wbs').AsString      := ActividadesxOrden.FieldValues['swbs'];
        Connection.QryBusca.ParamByName('fecha').AsDate      := tdIdFecha.Date;
        if (chkPeriodo.Checked) then
          Connection.QryBusca.ParamByName('Inicio').AsDate      := tdIdFecha1.Date;
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
   sOrden:String;
begin
   { if ChkPu.Checked = True Then
        cadpua := 'And sTipoAnexo =  "PU" '
    else
        cadpua := 'And sTipoAnexo = "ADM" ' ;    }

  cadpua:='';
  if ChkPu.Checked = True Then
    cadpua := 'sTipoAnexo =  "PU" ';

  if chkadmon.Checked then
    if cadpua='' then
      cadpua := 'And sTipoAnexo = "ADM" '
    else
      cadpua := ' And (' + cadpua + 'or sTipoAnexo = "ADM") '
  else
    if cadpua<>'' then
      cadpua:= ' and ' + cadpua;


  sOrden:='';
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
    sOrden:=' Order by iItemOrden '
  else
    sOrden:=' Order By mysql.udf_NaturalSortFormat(swbs,'+ IntToStr(Global_TamOrden) +  ',' +Quotedstr(Global_SepOrden) +') ';



//Verifica que la fecha final no sea menor que la fecha inicio
   if tdIdFecha.Date<tdIdFecha1.Date then
   begin
     showmessage('la fecha final es menor a la fecha inicial' );
     tdIdFecha.SetFocus;
     exit;
   end;
 try

    {StringReplace(before, ' a ', ' THE ',
                          [rfReplaceAll, rfIgnoreCase]);}

    If MidStr(tsNumeroOrden.Text, 1 , 8) = 'CONTRATO' Then
    Begin
        if tsFiltro.Text = 'SOLO REPORTADAS' then
           consulta := 'inner join bitacoradeactividades b '+
                       'on (a.sContrato = b.sContrato  and a.sNumeroActividad = b.sNumeroActividad and sTipoActividad = "Actividad" '+
                       'and b.dIdFecha >= :FechaI and b.dIdFecha <= :FechaF) '+
                       'Where a.sContrato = :Contrato and a.sIdConvenio = :Convenio ' + cadpua + ' group by a.sWbs' + StringReplace(sOrden,'swbs','a.swbs',[rfReplaceAll, rfIgnoreCase])
        else
        begin
            If tsOrdenado.Text = 'ANEXO "C"' Then
               consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio ' + cadpua + sOrden
            Else
               If tsOrdenado.Text = 'PONDERADO' Then
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio ' + cadpua + ' order by dPonderado DESC '
               Else
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio ' + cadpua + ' order by (dVentaMN * dCantidadAnexo) DESC'
        end;
        ActividadesxAnexo.Active := False ;
        ActividadesxAnexo.SQL.Clear ;
        ActividadesxAnexo.SQL.Add('select a.sContrato, a.iNivel, a.iColor, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.dFechaInicio, a.dFechaFinal, ' +
                                  'a.sMedida, a.dCantidadAnexo, a.dPonderado, a.dVentaMN, a.dVentaDLL, "" as cancelada  from actividadesxanexo a '+ consulta);
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
           rInforme.LoadFromFile (global_files + global_miReporte + '_ComparativoReportadoGeneradoContrato.fr3');
           if not FileExists(global_files + global_miReporte + '_ComparativoReportadoGeneradoContrato.fr3') then
             showmessage('El archivo de reporte ComparativoReportadoGeneradoContrato.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + global_miReporte + '_ComparativoReportadoGeneradoContratoDLL.fr3') ;
           if not FileExists(global_files + global_miReporte + '_ComparativoReportadoGeneradoContratoDLL.fr3') then
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
                       'Where a.sContrato = :Contrato and a.sIdConvenio = :Convenio and a.sNumeroOrden = :orden group by a.sWbs'  + StringReplace(sOrden,'swbs','a.swbs',[rfReplaceAll, rfIgnoreCase])
        else
        begin
            If tsOrdenado.Text = 'ANEXO "C"' Then
               consulta := 'Where a.sContrato = :contrato and a.sIdConvenio = :convenio and a.sNumeroOrden = :orden' + StringReplace(sOrden,'swbs','a.swbs',[rfReplaceAll, rfIgnoreCase])
            Else
               If tsOrdenado.Text = 'PONDERADO' Then
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden order by dPonderado DESC '
               Else
                  consulta := 'Where sContrato = :contrato and sIdConvenio = :convenio and sNumeroOrden = :orden order by (dVentaMN * dCantidad) DESC'
        end;
        ActividadesxOrden.Active := False ;
        ActividadesxOrden.SQL.Clear ;
        ActividadesxOrden.SQL.Add('select a.sContrato, a.sNumeroOrden, a.dCostoMN, a.dCostoDLL, a.iNivel, a.iColor, a.sTipoActividad, a.sWbsAnterior, a.sWbs, a.sNumeroActividad, a.mDescripcion, a.dFechaInicio, a.dFechaFinal, ' +
                                  'a.sMedida, a.dCantidad, a.dPonderado, a.dVentaMN, a.dVentaDLL, "" as cancelada  from actividadesxorden a '+ consulta);
        ActividadesxOrden.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Contrato').Value    := global_contrato ;
        ActividadesxOrden.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxOrden.Params.ParamByName('Convenio').Value    := sConvenio ;
        ActividadesxOrden.Params.ParamByName('Orden').DataType    := ftString ;
        ActividadesxOrden.Params.ParamByName('Orden').Value       := tsNumeroOrden.Text ;
        if tsFiltro.Text = 'SOLO REPORTADAS' then
        begin
            ActividadesxOrden.Params.ParamByName('FechaI').DataType := ftDate ;
            ActividadesxOrden.Params.ParamByName('FechaI').Value    := tdIdFecha1.Date;
            ActividadesxOrden.Params.ParamByName('FechaF').DataType := ftDate;
            ActividadesxOrden.Params.ParamByName('FechaF').Value    := tdIdFecha.Date  ;
        end;


        //Obtenemos reportes en M.N y DLL por frente de trabajo..
        ActividadesxOrden.Open ;
        if chkMN.Checked = True then
        begin
           rInforme.LoadFromFile (global_files + global_miReporte + '_ComparativoReportadoGeneradoOrden.fr3');
           if not FileExists(global_files + global_miReporte + '_ComparativoReportadoGeneradoOrden.fr3') then
             showmessage('El archivo de reporte ComparativoReportadoGeneradoOrden.fr3 no existe, notifique al administrador del sistema');
        end
        else
        begin
           rInforme.LoadFromFile (global_files + global_miReporte + '_ComparativoReportadoGeneradoOrdenDLL.fr3');
           if not FileExists(global_files + global_miReporte + '_ComparativoReportadoGeneradoOrdenDLL.fr3') then
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
   if not FileExists(global_files + global_miReporte + '_ComparativoAnexovsEstimaciones.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_ComparativoAnexovsEstimaciones.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

   if not FileExists(global_files + global_miReporte + '_ComparativoAnexovsEstimacionesDLL.fr3') then
   begin
      showmessage('El archivo de reporte '+global_Mireporte+'_ComparativoAnexovsEstimacionesDLL.fr3 no existe, notifique al administrador del sistema');
      exit;
   end;

   if ChkPu.Checked = True Then
       cadpua := 'And sTipoAnexo =  "PU" '
   else
       cadpua := 'And sTipoAnexo = "ADM" ' ;

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
                                  'sIdConvenio = :convenio ' + cadpua + ' order by iItemOrden') ;
        ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Contrato').Value := global_contrato ;
        ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString ;
        ActividadesxAnexo.Params.ParamByName('Convenio').Value := sConvenio ;
        ActividadesxAnexo.Open ;
        //Obtenemos reportes en dolares y M.N.
        if chkMN.Checked = True then
           rInforme.LoadFromFile (global_files + global_miReporte + '_ComparativoAnexovsEstimaciones.fr3')
        else
           rInforme.LoadFromFile (global_files + global_miReporte + '_ComparativoAnexovsEstimacionesDLL.fr3');

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
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// ESTATUS DE ORDNES VIGENTES DIAVAZ OCTUBRE 2012 //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena, sConvenio: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dAvanceProg, dAvanceFisico: double;
      Progreso, TotalProgreso: real;
      dFecha : tDate;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 5.86;
      Excel.Columns['B:B'].ColumnWidth := 4.29;
      Excel.Columns['C:C'].ColumnWidth := 19.14;
      Excel.Columns['D:D'].ColumnWidth := 12.14;
      Excel.Columns['E:E'].ColumnWidth := 52.00;
      Excel.Columns['F:F'].ColumnWidth := 17.43;
      Excel.Columns['G:G'].ColumnWidth := 11.29;
      Excel.Columns['H:H'].ColumnWidth := 12.86;
      Excel.Columns['I:I'].ColumnWidth := 12.00;
      Excel.Columns['J:J'].ColumnWidth := 12.00;
      Excel.Columns['K:K'].ColumnWidth := 35.00;
      Excel.Columns['L:L'].ColumnWidth := 12.71;
      Excel.Columns['M:M'].ColumnWidth := 12.71;

      Hoja.Range['A1:A2'].Select;
      Excel.Selection.RowHeight := '15';

      //Primero la vigencia de la embarcacion principal
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select sIdEmbarcacion from embarcacion_vigencia ' +
        'where sContrato =:Contrato and dFechaInicio <= :FechaI and dFechaFinal >=:FechaF ');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato_barco;
      connection.QryBusca2.ParamByName('FechaI').AsDate := tdIdFecha.Date;
      connection.QryBusca2.ParamByName('FechaF').AsDate := tdIdFecha.Date;
      connection.QryBusca2.Open;

      if connection.QryBusca2.RecordCount = 1 then
        global_barco := connection.QryBusca2.FieldValues['sIdEmbarcacion'];

      //Consultamos las fechas del convenio modificatorio para impresion de las cantidades reportadas superiores al programa de trabajo.
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select sDescripcion from embarcaciones where sContrato =:Contrato and sIdEmbarcacion =:barco ');
      connection.QryBusca2.ParamByName('contrato').AsString := global_contrato_barco;
      connection.QryBusca2.ParamByName('barco').AsString    := global_barco;
      connection.QryBusca2.Open;

      Hoja.Range['B'+IntTostr(Ren-1)+':B'+IntToStr(Ren-1)].Select;
      Excel.Selection.Value := 'ESTATUS DE ORDENES VIGENTES Y FINALIZADAS EN "'+ connection.QryBusca2.FieldValues['sDescripcion'] + '"';
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 16;
      Excel.Selection.Font.color:= clBlack;
      Excel.Selection.Font.Name := 'Calibri';

      Hoja.Range['B'+IntTostr(Ren-1)+':M'+IntToStr(Ren)].Select;
      Excel.Selection.Interior.ColorIndex := 15;
      Excel.Selection.MergeCells:= True;
      Excel.Selection.WrapText  := True;

      inc(Ren);
      Hoja.Range['B'+IntTostr(Ren)+':B'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'FECHA DE IMPRESIÓN AL DÍA: '+ DateToStr(tdIdFecha.Date);
      Excel.Selection.HorizontalAlignment := xlLeft;
      Excel.Selection.VerticalAlignment   := xlCenter;
      Excel.Selection.Font.Bold := True;
      Excel.Selection.Font.Size := 12;
      Excel.Selection.Font.Name := 'Calibri';
      Excel.Selection.RowHeight := '20.25';

      inc(Ren);
      Hoja.Range['B4:M4'].Select;
      Excel.Selection.RowHeight := '41.25';
      Excel.Selection.Interior.ColorIndex := 36;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['B'+IntTostr(Ren)+':B'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'ID';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'TIPO DE OBRA';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['D'+IntTostr(Ren)+':D'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'OT';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['E'+IntTostr(Ren)+':E'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'DESCRIPCION';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['F'+IntTostr(Ren)+':F'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'PLATAFORMA';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['G'+IntTostr(Ren)+':G'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'AVANCE PROG.';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['H'+IntTostr(Ren)+':H'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'AVANCE REAL';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['I'+IntTostr(Ren)+':I'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'FECHA INICIO';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['J'+IntTostr(Ren)+':J'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'FECHA TERMINO';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['K'+IntTostr(Ren)+':K'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'OBSERVACIONES';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['L'+IntTostr(Ren)+':L'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'FECHA INICIO REAL';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;
      Hoja.Range['M'+IntTostr(Ren)+':M'+IntToStr(Ren)].Select;
      Excel.Selection.Value := 'ULTIMO REPORTE DIARIO';
      Excel.Selection.Font.Italic := True;
      FormatoEncabezado;
      Excel.Selection.Font.Size := 11;

      inc(Ren);
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sContrato, mDescripcion, sTipoObra, mComentarios from contratos ');
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
          total := 1;
          while not connection.QryBusca.Eof do
          begin
              {Movimiento de la Barra..}
              Progreso := (1 / (connection.QryBusca.RecordCount + 1)) * (BarraEstado.Max - BarraEstado.Min);
              TotalProgreso := TotalProgreso + Progreso;
              BarraEstado.Position := Trunc(TotalProgreso);

              //Ahora consultamos los frentes de trabajo dados de alta en la consulta..
              connection.QryBusca2.Active := False;
              connection.QryBusca2.SQL.Clear;
              connection.QryBusca2.SQL.Add('select sNumeroOrden, sIdFolio from ordenesdetrabajo where sContrato =:Contrato ');
              connection.QryBusca2.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
              connection.QryBusca2.Open;

              while not connection.QryBusca2.Eof do
              begin
                  Hoja.Range['A'+IntTostr(Ren)+':A'+IntToStr(Ren)].Select;
                  Excel.Selection.RowHeight := '60';

                  Hoja.Range['B'+IntTostr(Ren)+':M'+IntToStr(Ren)].Select;
                  Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
                  Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
                  Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
                  Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
                  Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
                  Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
                  Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
                  Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
                  Excel.Selection.Borders[xlInsideVertical].LineStyle := xlContinuous;
                  Excel.Selection.Borders[xlInsideVertical].Weight    := xlThin;

                  Hoja.Range['C'+IntTostr(Ren)+':C'+IntToStr(Ren)].Select;
                  Excel.Selection.Interior.ColorIndex := 24;

                  Hoja.Range['D'+IntTostr(Ren)+':M'+IntToStr(Ren)].Select;
                  Excel.Selection.Interior.ColorIndex := 37;

                  {Escritura de Datos en el Archvio de Excel..}
                  Hoja.Cells[Ren, 2].Select;
                  Excel.Selection.Value := total;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Size := 11;
                  Excel.Selection.Font.Bold := True;
                  Excel.Selection.Font.Name := 'Tahoma';

                  Hoja.Cells[Ren, 3].Select;
                  if connection.QryBusca.FieldValues['sTipoObra'] ='PROGRAMADA' then
                  begin
                     Excel.Selection.Value     := 'PRECIO UNITARIO';
                     Excel.Selection.Font.Color := clBlue;
                  end
                  else
                  begin
                     Excel.Selection.Value := 'ADMINISTRACION';
                     Excel.Selection.Font.Color := clNavy;
                  end;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.WrapText  := True;
                  Excel.Selection.Font.Size := 12;
                  Excel.Selection.Font.Bold := True;
                  Excel.Selection.Font.Name := 'Calibri';

                  Hoja.Cells[Ren, 4].Select;
                  Excel.Selection.Value := connection.QryBusca.FieldValues['sContrato'];
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Size := 12;
                  Excel.Selection.Font.Bold := True;
                  Excel.Selection.Font.Name := 'Calibri';

                  Hoja.Cells[Ren, 5].Select;
                  Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
                  Excel.Selection.HorizontalAlignment := xlJustify;
                  Excel.Selection.VerticalAlignment   := xLCenter;
                  Excel.Selection.WrapText  := True;
                  Excel.Selection.Font.Size := 11;
                  Excel.Selection.Font.Bold := False;
                  Excel.Selection.Font.Name := 'Calibri';
                  Excel.Selection.MergeCells := True;

                  Hoja.Cells[Ren, 6].Select;
                  Excel.Selection.Value :=  connection.QryBusca2.FieldValues['sNumeroOrden'];
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.WrapText  := True;
                  Excel.Selection.Font.Size := 12;
                  Excel.Selection.Font.Bold := True;
                  Excel.Selection.Font.Name := 'Calibri';
                  Excel.Selection.MergeCells := True;

                  //Buacamos el primer reporte diario registrado para ese frente de trabajo
                  Q_Partidas.Active := False;
                  Q_Partidas.SQL.Clear;
                  Q_Partidas.SQL.Add('select dIdFecha from reportediario where sContrato =:contrato and sNumeroOrden =:orden and dIdFecha <=:fecha order by dIdFecha ASC');
                  Q_Partidas.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
                  Q_Partidas.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
                  Q_Partidas.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                  Q_Partidas.Open;

                  if Q_partidas.RecordCount > 0 then
                  begin
                      Hoja.Cells[Ren, 12].Select;
                      Excel.Selection.Value := Q_Partidas.FieldValues['dIdFecha'];
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment   := xlCenter;
                      Excel.Selection.Font.Size := 12;
                      Excel.Selection.Font.Bold := True;
                      Excel.Selection.Font.Color:= clBlue;
                      Excel.Selection.Font.Name := 'Calibri';
                  end;

                   //Buacamos el ultimo reporte diario registrado para ese frente de trabajo
                  Q_Partidas.Active := False;
                  Q_Partidas.SQL.Clear;
                  Q_Partidas.SQL.Add('select dIdFecha, sIdConvenio from reportediario where sContrato =:contrato and sNumeroOrden =:orden and dIdFecha <=:fecha order by dIdFecha DESC');
                  Q_Partidas.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
                  Q_Partidas.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
                  Q_Partidas.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                  Q_Partidas.Open;

                  if Q_partidas.RecordCount > 0 then
                  begin
                      dFecha    := Q_Partidas.FieldValues['dIdFecha'];
                      sConvenio := Q_Partidas.FieldValues['sIdConvenio'];
                      Hoja.Cells[Ren, 13].Select;
                      Excel.Selection.Value := Q_Partidas.FieldValues['dIdFecha'];
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment   := xlCenter;
                      Excel.Selection.Font.Size := 12;
                      Excel.Selection.Font.Bold := True;
                      Excel.Selection.Font.Color:= clBlue;
                      Excel.Selection.Font.Name := 'Calibri';
                  end
                  else
                  begin
                      dFecha    := 0;
                      sConvenio := '';
                  end;

                  //Ahora consultamos el avance programado a la fecha seleccionada.
                  Q_Partidas.Active := False;
                  Q_Partidas.SQL.Clear;
                  Q_Partidas.SQL.Add('select dAvancePonderadoGlobal from avancesglobales where sContrato =:Contrato and sNumeroOrden =:Orden and sIdConvenio =:Convenio and dIdFecha <=:fecha order by dIdFecha DESC ');
                  Q_Partidas.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
                  Q_Partidas.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
                  Q_Partidas.ParamByName('Convenio').AsString := sConvenio;
                  Q_Partidas.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
                  Q_Partidas.Open;

                  dAvanceProg := 0;
                  if Q_partidas.RecordCount > 0 then
                     dAvanceProg := Q_Partidas.FieldValues['dAvancePonderadoGlobal'];

                  //Ahora consultamos el avance programado a la fecha seleccionada.
                  Q_Partidas.Active := False;
                  Q_Partidas.SQL.Clear;
                  Q_Partidas.SQL.Add('select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato =:Contrato and sNumeroOrden =:Orden and sIdConvenio =:Convenio and dIdFecha <=:fecha group by sContrato');
                  Q_Partidas.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
                  Q_Partidas.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
                  Q_Partidas.ParamByName('Convenio').AsString := sConvenio;
                  Q_Partidas.ParamByName('Fecha').AsDate      := dFecha;
                  Q_Partidas.Open;

                  dAvanceFisico := 0;
                  if Q_partidas.RecordCount > 0 then
                     dAvanceFisico := Q_Partidas.FieldValues['dAvance'];

                  Hoja.Cells[Ren, 7].Select;
                  Excel.Selection.NumberFormat := '##0.0000%';
                  Excel.Selection.Value := dAvanceProg / 100;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Size := 12;
                  Excel.Selection.Font.Bold := True;
                  Excel.Selection.Font.Italic := True;
                  Excel.Selection.Font.Color:= clBlue;
                  Excel.Selection.Font.Name := 'Calibri';

                  Hoja.Cells[Ren, 8].Select;
                  Excel.Selection.NumberFormat := '##0.0000%';
                  if dAvanceFisico > 100 then
                     Excel.Selection.Value := 100 / 100
                  else
                     Excel.Selection.Value := dAvanceFisico / 100;
                  Excel.Selection.HorizontalAlignment := xlCenter;
                  Excel.Selection.VerticalAlignment   := xlCenter;
                  Excel.Selection.Font.Size := 12;
                  Excel.Selection.Font.Bold := True;
                  Excel.Selection.Font.Italic := True;
                  Excel.Selection.Font.Color:= clRed;
                  Excel.Selection.Font.Name := 'Calibri';

                  if dAvanceFisico < 100 then
                  begin
                      Hoja.Cells[Ren, 13].Select;
                      Excel.Selection.Font.Color:= clMaroon;
                  end;

                  //Ahora consultamos las fechas de incio y termino
                  Q_Partidas.Active := False;
                  Q_Partidas.SQL.Clear;
                  Q_Partidas.SQL.Add('select dFechaInicio, dFechaFinal from actividadesxorden where sContrato =:Contrato and sNumeroOrden =:Orden and sIdConvenio =:Convenio and iNivel = 0 ');
                  Q_Partidas.ParamByName('Contrato').AsString := connection.QryBusca.FieldValues['sContrato'];
                  Q_Partidas.ParamByName('Orden').AsString    := connection.QryBusca2.FieldValues['sNumeroOrden'];
                  Q_Partidas.ParamByName('Convenio').AsString := sConvenio;
                  Q_Partidas.Open;

                  if Q_partidas.RecordCount > 0 then
                  begin
                      Hoja.Cells[Ren, 9].Select;
                      Excel.Selection.Value := Q_Partidas.FieldValues['dFechaInicio'];
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment   := xlCenter;
                      Excel.Selection.Font.Size := 12;
                      Excel.Selection.Font.Bold := False;
                      Excel.Selection.Font.Name := 'Calibri';

                      Hoja.Cells[Ren, 10].Select;
                      Excel.Selection.Value := Q_Partidas.FieldValues['dFechaFinal'];
                      Excel.Selection.HorizontalAlignment := xlCenter;
                      Excel.Selection.VerticalAlignment   := xlCenter;
                      Excel.Selection.Font.Size := 12;
                      Excel.Selection.Font.Bold := False;
                      Excel.Selection.Font.Name := 'Calibri';
                  end;

                  Hoja.Cells[Ren, 11].Select;
                  Excel.Selection.Value := connection.QryBusca.FieldValues['mComentarios'];
                  Excel.Selection.HorizontalAlignment := xlJustify;
                  Excel.Selection.VerticalAlignment   := xLCenter;
                  Excel.Selection.WrapText  := True;
                  Excel.Selection.Font.Size := 11;
                  Excel.Selection.Font.Bold := False;
                  Excel.Selection.Font.Italic:= True;
                  Excel.Selection.Font.Name  := 'Calibri';
                  Excel.Selection.MergeCells := True;

                  connection.QryBusca2.Next;
                  Inc(Ren);
                  inc(Total);
              end;
              connection.QryBusca.Next;
          end;
          Hoja.Range['B5:B5'].Select;
      end;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'ESTATUS ORDENES ';
      except
        Hoja.Name := 'ESTATUS ORDEDES ';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Estatus de Ordenes:' + #10 + #10 + e.Message;
        PanelProgress.Visible := False;
      end;
    end;

    Result := Resultado;
  end;

begin
    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
    if not SaveDialog1.Execute then
      Exit;
      // Generar el ambiente de excel
    try
      Excel := CreateOleObject('Excel.Application');
    except
      FreeAndNil(Excel);
      showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
      Exit;
    end;

    if MessageDlg('Deseas visualizar el diseño del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := True;
    end
    else
    begin
      Excel.Visible := True;
      Excel.DisplayAlerts := False;
      Excel.ScreenUpdating := False;
    end;

    PanelProgress.Visible := True;
    Label15.Refresh;
    Label16.Refresh;
    BarraEstado.Position := 0;

    Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

      // Verificar si cuenta con las hojas necesarias
    while Libro.Sheets.Count < 2 do
      Libro.Sheets.Add;

      // Verificar si se pasa de hojas necesarias
    Libro.Sheets[1].Select;
    while Libro.Sheets.Count > 1 do
      Excel.ActiveWindow.SelectedSheets.Delete;

      // Proceder a generar la hoja REPORTE
    CadError := '';

    if GenerarPlantilla then
    begin
          // Grabar el archivo de excel con el nombre dado
      Excel.Visible := True;
      Excel.DisplayAlerts := True;
      Excel.ScreenUpdating := True;
      PanelProgress.Visible := False;
      messageDlg('El Archivo se Generó Correctamente!', mtInformation, [mbOk], 0);
    end;

    Excel := '';

    if CadError <> '' then
      showmessage(CadError);
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
    RxMDValida.FieldByName('sWbs').Value             := connection.QryBusca.FieldByName('sWbs').AsString;
    RxMDValida.FieldByName('dCantidad').Value        := connection.QryBusca.FieldByName('dCantidad').AsString;
    RxMDValida.FieldByName('suma').Value             := suma;
    RxMDValida.FieldByName('aMN').Value              := connection.QryBusca.FieldByName('aMN').AsString;
    RxMDValida.FieldByName('aDLL').Value             := connection.QryBusca.FieldByName('aDLL').AsString;
    RxMDValida.FieldByName('dCantidadAnexo').Value   := connection.QryBusca.FieldByName('dCantidadAnexo').AsString;
    RxMDValida.FieldByName('bMN').Value              := connection.QryBusca.FieldByName('bMN').AsString;
    RxMDValida.FieldByName('bDLL').Value             := connection.QryBusca.FieldByName('bDLL').AsString;
    RxMDValida.FieldByName('descripcion').Value      := connection.QryBusca.FieldByName('descripcion').AsString;
    RxMDValida.FieldByName('mensaje').Value          := sMensaje;
    RxMDValida.FieldByName('sNumeroOrden').Value     := connection.QryBusca.FieldByName('sNumeroOrden').AsString;
    RxMDValida.FieldByName('sWbs2').Value            := connection.QryBusca.FieldByName('wbs2').AsString;
    RxMDValida.Post;
end;


procedure TfrmCompara.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment   := xlCenter;
  Excel.Selection.WrapText  := True;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Font.Name := 'Tahoma';
  Excel.Selection.Borders[xlEdgeLeft].LineStyle    := xlContinuous;
  Excel.Selection.Borders[xlEdgeLeft].Weight       := xlThin;
  Excel.Selection.Borders[xlEdgeTop].LineStyle     := xlContinuous;
  Excel.Selection.Borders[xlEdgeTop].Weight        := xlThin;
  Excel.Selection.Borders[xlEdgeBottom].LineStyle  := xlContinuous;
  Excel.Selection.Borders[xlEdgeBottom].Weight     := xlThin;
  Excel.Selection.Borders[xlEdgeRight].LineStyle   := xlContinuous;
  Excel.Selection.Borders[xlEdgeRight].Weight      := xlThin;
end;

end.
