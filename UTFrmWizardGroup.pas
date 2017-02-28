unit UTFrmWizardGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxListBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, AdvSmoothPageSlider, cxLabel, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxGroupBox, cxCalendar, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBExtLookupComboBox, cxImage, dxGDIPlusClasses, dxImageSlider,
  cxCurrencyEdit, cxProgressBar, cxCheckBox, DBClient, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxRadioGroup, AdvCircularProgress,
  cxEditRepositoryItems, cxButtonEdit, dxSkinsdxBarPainter, dxBar, dxRibbon,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, DateUtils, cxPC, dxDockPanel, dxDockControl,
  dxRibbonMiniToolbar, frxClass, frxDBSet, cxMemo, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView;

type
  TFrmWizardGroup = class(TForm)
    AdvPSlider1: TAdvSmoothPageSlider;
    AdvPageOrganizacion: TAdvSmoothPage;
    CxCbbOrganizacion: TcxLookupComboBox;
    AdvPageTipoNomina: TAdvSmoothPage;
    CxLblEmpresa: TcxLabel;
    pnlBotonera: TPanel;
    CxBtnSiguiente: TcxButton;
    CxBtnAnterior: TcxButton;
    CxBtCancel: TcxButton;
    CxLbl1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    CxLbl2: TcxLabel;
    CxLblEmpresaDatos: TcxLabel;
    CxLblFrentesDatos: TcxLabel;
    CxCbbTipoNomina: TcxLookupComboBox;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxDbTxtDiasT: TcxDBTextEdit;
    CxDbTxtDiasD: TcxDBTextEdit;
    AdvPageGuardias: TAdvSmoothPage;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    CxLblNombreEmpresa: TcxLabel;
    CxLblNombreFrente: TcxLabel;
    CxLbl6: TcxLabel;
    CxLblTipoNominaDatos: TcxLabel;
    CxCbbGuardias: TcxLookupComboBox;
    CxLbl7: TcxLabel;
    AdvPageDatosEmpleados: TAdvSmoothPage;
    CxCollectionPanel: TcxImageCollection;
    CxImgCollection1: TcxImageCollectionItem;
    CxImgCollection2: TcxImageCollectionItem;
    CxImgCollection3: TcxImageCollectionItem;
    CxImgCollection4: TcxImageCollectionItem;
    dxImageSlider1: TdxImageSlider;
    dsOrganizacion: TDataSource;
    dsOrganizacion2: TDataSource;
    dsTipoNomina: TDataSource;
    dsGuardias: TDataSource;
    dsPersonalImssR: TDataSource;
    CxCbbPeriodoGuardia: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    CdMemoraContratos: TClientDataSet;
    zOrganizacion: TZQuery;
    zOrganizacion2: TZQuery;
    zTipoNomina: TZQuery;
    zGuardias: TZQuery;
    zPersonalImssR: TZQuery;
    zPersonalImssB: TZQuery;
    CxCbbFrentes: TcxLookupComboBox;
    CxLbl15: TcxLabel;
    zPGuardias: TZQuery;
    dsPGuardias: TDataSource;
    pnlWait: TPanel;
    AdvCircularProgress1: TAdvCircularProgress;
    CxLblleyenda: TcxLabel;
    zPersonal: TZQuery;
    tmrMSG: TTimer;
    dsMemoraContratos: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxstylBackGround: TcxStyle;
    zCargo: TZQuery;
    dsCargo: TDataSource;
    CxGridReposCargos: TcxGridViewRepository;
    CxGridCargos: TcxGridDBTableView;
    CxColumnTituloCargo: TcxGridDBColumn;
    CxColumnTituloRango: TcxGridDBColumn;
    CxColumnFechaAplicacion: TcxGridDBColumn;
    CxLblBienvenida: TcxLabel;
    CxLblNombreModulo: TcxLabel;
    CxLblMision: TcxLabel;
    CxImgBienvenido: TcxImage;
    CxLbl16: TcxLabel;
    CxGridDepartamentos: TcxGridDBTableView;
    CxColumnTituloDepto: TcxGridDBColumn;
    zDepartamentos: TZQuery;
    dsDepartamentos: TDataSource;
    cxGBPopup: TcxGroupBox;
    CxGridDeptos: TcxGridDBTableView;
    CxLevelDeptos: TcxGridLevel;
    CxGridDatos: TcxGrid;
    CxColumnCodigoDepto: TcxGridDBColumn;
    CxColumnTituloDeptoP: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    CxBtnSeleccionar: TcxButton;
    CxChkBoxTodos: TcxCheckBox;
    DxBManagerMain: TdxBarManager;
    DxPopMenuGridEmpleado: TdxRibbonPopupMenu;
    DxBarBtnSeleccionarTodos: TdxBarButton;
    DxBarBtnSeleccionarInversar: TdxBarButton;
    CxLevelPuestos: TcxGridLevel;
    CxGridPuestos: TcxGridDBTableView;
    CxColumnTituloCargoP: TcxGridDBColumn;
    CxColumnRangoSalarioP: TcxGridDBColumn;
    CxColumnImporteRangoSp: TcxGridDBColumn;
    CxColumnAplicacionSalarioP: TcxGridDBColumn;
    CxColumnCodigoCargo: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    zDiasFestivos: TZQuery;
    cxGBDetalleContrato: TcxGroupBox;
    zFactorIntegracion: TZQuery;
    zGrupoSalarios: TZQuery;
    zSalarios: TZQuery;
    DxBarBtnDeseleccionar: TdxBarButton;
    DxBarBtnEstablecerCargos: TdxBarButton;
    DxBarBtnEstablecerFrentes: TdxBarButton;
    zSalMinDF: TZQuery;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    CxLblFestivosGenerales: TcxLabel;
    CxLblDomingosGenerales: TcxLabel;
    CxLblL: TcxLabel;
    CxLblListadoDiasFestivos: TcxLabel;
    DxMiniToolMain: TdxRibbonMiniToolbar;
    DxBarMain: TdxBar;
    DxBarBtnPrevisualizarReporte: TdxBarLargeButton;
    cxGroupBox3: TcxGroupBox;
    cxLabel13: TcxLabel;
    CxLblNombreEmpresaDC: TcxLabel;
    cxLabel16: TcxLabel;
    CxLblTipoNominaDC: TcxLabel;
    cxLabel18: TcxLabel;
    CxLblGuardiaDC: TcxLabel;
    cxLabel20: TcxLabel;
    CxLblPGuardiaDC: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    CxGridVista: TcxGrid;
    CxGridDatosEmpleado: TcxGridDBTableView;
    CxColumnLista: TcxGridDBColumn;
    CxColumnEmpleado: TcxGridDBColumn;
    CxColumnProgreso: TcxGridDBColumn;
    CxColumnFrentes: TcxGridDBColumn;
    CxColumnDepto: TcxGridDBColumn;
    CxColumnPuesto: TcxGridDBColumn;
    CxColumnContratacion: TcxGridDBColumn;
    CxColumnBaja: TcxGridDBColumn;
    CxColumnRango: TcxGridDBColumn;
    CxColumnSalario: TcxGridDBColumn;
    CxColumnSalarioIntegrado: TcxGridDBColumn;
    CxColumnJornada: TcxGridDBColumn;
    CxColumnCobraFestivos: TcxGridDBColumn;
    CxLevel1: TcxGridLevel;
    cxStyleRepository2: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylBack2: TcxStyle;
    DxBarBtnValidarContratacion: TdxBarLargeButton;
    DxBarBtnNext: TdxBarLargeButton;
    DxBarBtnBack: TdxBarLargeButton;
    DxBarBtnCancel: TdxBarLargeButton;
    DxBarBtnContratar: TdxBarLargeButton;
    DxBarSiteMain: TdxBarDockControl;
    FrxCdMemoriaContratos: TfrxDBDataset;
    FrxReportContratacion: TfrxReport;
    FrxCdOrganizacion: TfrxDBDataset;
    FrxCdGuardia: TfrxDBDataset;
    FrxCdPGuardia: TfrxDBDataset;
    FrxCdTipoNomina: TfrxDBDataset;
    CxColumnEstatus: TcxGridDBColumn;
    cxGBErrores: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxstylStyleGridOK: TcxStyle;
    cxstylStyleGridBad: TcxStyle;
    CxGridPpEmpleados: TcxGridPopupMenu;
    CxLevel2: TcxGridLevel;
    CxCardViewDatosEmpledo: TcxGridDBCardView;
    CxRowNombreCompleto: TcxGridDBCardViewRow;
    CxRowFrente: TcxGridDBCardViewRow;
    CxRowEstatus: TcxGridDBCardViewRow;
    CxRowDepto: TcxGridDBCardViewRow;
    CxRowPuesto: TcxGridDBCardViewRow;
    CxRowContratacion: TcxGridDBCardViewRow;
    CxRowBaja: TcxGridDBCardViewRow;
    CxRowSalario: TcxGridDBCardViewRow;
    CxRowSalarioIntegrado: TcxGridDBCardViewRow;
    CxRowJornada: TcxGridDBCardViewRow;
    CxRowCobraFestivos: TcxGridDBCardViewRow;
    CxRowLista: TcxGridDBCardViewRow;
    cxstylNombres: TcxStyle;
    cxstylContent: TcxStyle;
    CdMemPercepciones: TClientDataSet;
    CdMemDeducciones: TClientDataSet;
    DxBarBtnCalculosVirtuales: TdxBarLargeButton;
    FrxCdMemPercepciones: TfrxDBDataset;
    FrxCdMemDeducciones: TfrxDBDataset;
    CdConMemPer: TClientDataSet;
    CdConMemDed: TClientDataSet;
    zqHistorial: TZQuery;
    zqHistorialiIdContrato: TIntegerField;
    zqHistorialsIdEmpleado: TStringField;
    zqHistorialdFechaInicio: TDateField;
    zqHistorialdFechaTermino: TDateField;
    zqHistorialsTipoContrato: TStringField;
    zqHistorialsPeriodoLaboral: TStringField;
    zqHistorialsIdGuardia: TStringField;
    zqHistorialID_PeriodoGuardia: TIntegerField;
    CxGroupSalarios: TcxGroupBox;
    cxlblSalario: TcxLabel;
    cxbtnOK: TcxButton;
    cxbtnCancel: TcxButton;
    dsSalarios: TDataSource;
    CxLookUpSalarios: TcxComboBox;
    procedure CxBtCancelClick(Sender: TObject);
    procedure CxBtnSiguienteClick(Sender: TObject);
    procedure CxBtnAnteriorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxCbbOrganizacionPropertiesChange(Sender: TObject);
    procedure CxCbbGuardiasPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrMSGTimer(Sender: TObject);
    procedure CxCbbTipoNominaPropertiesChange(Sender: TObject);
    procedure CxCbbFrentesPropertiesChange(Sender: TObject);
    procedure CxBtnSeleccionarClick(Sender: TObject);
    procedure CxColumnDeptoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DxBarBtnSeleccionarTodosClick(Sender: TObject);
    procedure DxBarBtnSeleccionarInversarClick(Sender: TObject);
    procedure CxCbbPeriodoGuardiaPropertiesChange(Sender: TObject);
    procedure CxColumnRangoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DxDockPanelGridCloseQuery(Sender: TdxCustomDockControl;
      var CanClose: Boolean);
    procedure DxBarBtnDeseleccionarClick(Sender: TObject);
    procedure CxCbbOrganizacionPropertiesInitPopup(Sender: TObject);
    procedure CxCbbFrentesPropertiesInitPopup(Sender: TObject);
    procedure CxCbbTipoNominaPropertiesInitPopup(Sender: TObject);
    procedure CxCbbPeriodoGuardiaPropertiesInitPopup(Sender: TObject);
    procedure CxCbbGuardiasPropertiesInitPopup(Sender: TObject);
    procedure DxBarBtnCancelClick(Sender: TObject);
    procedure DxBarBtnNextClick(Sender: TObject);
    procedure DxBarBtnBackClick(Sender: TObject);
    procedure DxBarBtnPrevisualizarReporteClick(Sender: TObject);
    procedure DxBarBtnContratarClick(Sender: TObject);
    procedure CxCbbGuardiasPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CdMemoraContratosAfterScroll(DataSet: TDataSet);
    procedure CxColumnEstatusPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CdMemoraContratosAfterPost(DataSet: TDataSet);
    procedure CxGridDatosEmpleadoStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure DxBarBtnValidarContratacionClick(Sender: TObject);
    procedure DxBarBtnCalculosVirtualesClick(Sender: TObject);
    procedure DxBarBtnEstablecerCargosClick(Sender: TObject);
    procedure DxBarBtnEstablecerFrentesClick(Sender: TObject);
    procedure AdvPSlider1PageChanging(Sender: TObject; FromPage,
      ToPage: Integer; var AllowChange: Boolean);
    procedure AdvPSlider1PageMoved(Sender: TObject; FromPos, ToPos: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrxReportContratacionGetValue(const VarName: string;
      var Value: Variant);
    procedure CxColumnSalarioPropertiesEditValueChanged(Sender: TObject);
    procedure CxColumnSalarioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnOKClick(Sender: TObject);
  private
    gForm: TForm;
    fForm: TForm;

    NetoPagar: Currency;
    TotalPercepciones,
    TotalDeducciones: Double;

    YaValidadoOrg: Boolean;
    creandoForm: Boolean;
    Imprimiendo: Boolean;
    Calculando: Boolean;
    YaValidado: Boolean;
    YaCargado: Boolean;
    YaLeidoOrganizacion: Boolean;
    YaLeidoOrganizacion2: Boolean;
    YaLeidoTipoNomina: Boolean;
    YaLeidoPGuardia: Boolean;
    YaLeidoGuardia: Boolean;

    ListaCampos: TStringList;
    ListaTituloCampos: TStringList;
    NoDomingosGeneral: Integer;
    NoFestivosGeneral: Integer;
    ListaFestivosGeneral: string;
    AForm: TForm;


    function validarContratos: Boolean;
    function ContarErroneos: Integer;
    function ContarSeleccionados: Integer;
    function CalcularSDI(Salario: Real): Real;

    //Funciones para borrar datos
    procedure setNullSalarios;
    procedure setNullOrganizacion;
    procedure SetNullFrentes;
    procedure SetNullContratos;
    procedure SetNullCargos;
    //Personal
    procedure CargarPersonal;
    procedure SetFechasContrato;
    procedure ReSetFechasContrato;
    procedure setDatosAutoEmpleado;
    //Departamentos
    procedure setDepartamentos;
    procedure CargarDeptos(IdOrganizacion: Integer);
    //Puestos
    procedure setPuestos;
    procedure CargarPuestosAnteriores;
    procedure CargarPuestos(IdOrganizacion: Integer; IdTipoNomina: Integer);
    //Salarios y Rangos de Salarios
    procedure setSalarios(IdRangoSalario: Integer; IdSalario: Integer; NoDomingos: Integer; NoFestives: Integer; var SD: Real;Todos: Boolean);
    procedure setRangoFechas(Inicio: TDate; Termino: TDate);
    //funciones Genéricas
    function ValidaPagina(Pagina: TAdvSmoothPage): Boolean;
    procedure setEnabledGrid(Enabled: Boolean);
    procedure ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaInicio, LocFechaTermino: TDate;  var Domingos: Integer; var Festivos: Integer; var ListaFestivos: string);
    procedure onShowVentanita(Sender: TObject);
    procedure CreatePopup(Var Panel: TcxGroupBox);
    procedure setContratado(IdCargo, IdPeriodoGuardia: Integer; CodigoPersonal, IdGuardia: String; Inicio, Termino: TDate);
    procedure llenarComboSalarios(IdRangoSalario: Integer; IdSalario: Integer; NoDomingos: Integer; NoFestives: Integer; var SD: Real; Todos: Boolean);

    { Private declarations }
  public
    dsDatosEmpleado: TDatasource;
    dsEmpleados: TDataSource;
    ParNombreFrente: string;
    ParIdGuardia: Integer;
    ParIdPeriodosGuardia: Integer;
    ParIdTipoNomina: string;
    ListaEmpleados: TStringList;
    { Public declarations }
  end;

var
  FrmWizardGroup: TFrmWizardGroup;

implementation
Uses
  frm_connection, rhh_genericclasses, frm_EmpleadosGuardias;
{$R *.dfm}

procedure TFrmWizardGroup.AdvPSlider1PageChanging(Sender: TObject; FromPage,
  ToPage: Integer; var AllowChange: Boolean);
var
  sender2: TComponent;
begin
  AdvPSlider1.OnPageChanging := Nil;
  try
    if (AdvPSlider1.ActivePage = AdvPageOrganizacion) and (ToPage = -1) then
    begin
      AllowChange := False;
      Exit;
    end;

    if FromPage > ToPage then
      Exit;

    if not ValidaPagina(AdvPSlider1.ActivePage) then
    begin
      AllowChange := False;
      Exit;
    end;
//    else
//    if (AdvPSlider1.ActivePage = AdvPageGuardias) or ((zTipoNomina.active) and (zTipoNomina.FieldByName('DiasDescanso').AsInteger = 0)) then
//      CxBtnSiguiente.Click;

  finally
    AdvPSlider1.OnpageChanging := AdvPSlider1PageChanging;
  end;
end;

procedure TFrmWizardGroup.AdvPSlider1PageMoved(Sender: TObject; FromPos,
  ToPos: Integer);
var
  sender2: TComponent;
begin

end;

function TFrmWizardGroup.CalcularSDI(Salario: Real): Real;
var
  LocFactor: Real;
begin
  if Not zSalMinDF.Active then
  begin
    zSalMinDF.Active := False;
    zSalMinDF.Connection := connection.zConnection;
    zSalMinDF.Params.ParamByName('fechaAplicacion').AsDateTime := Now();
    zSalMinDF.Params.ParamByName('TipoSalario').AsString := 'SMVDF';
    zSalMinDF.Open;
  end;
  
  if zSalMinDF.RecordCount = 0 then
  begin
    MessageDlg('No se encontró Salario Minimo del DF definido.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if Not zFactorIntegracion.Active then
  begin
    zFactorIntegracion.Active := False;
    zFactorIntegracion.Connection := connection.zConnection;
    zFactorIntegracion.Params.ParamByName('IdOrganizacion').AsInteger := CxCbbOrganizacion.EditValue;
    zFactorIntegracion.Params.ParamByName('IdTipoNomina').AsInteger := CxCbbTipoNomina.EditValue;
    zFactorIntegracion.Params.ParamByName('Anios').AsInteger := 1;
    zFactorIntegracion.Params.ParamByName('Aplicacion').AsDate := Now;
    zFactorIntegracion.Open;
  end;

  if (zFactorIntegracion.Active) and (zFactorIntegracion.RecordCount > 0) and (Not zFactorIntegracion.FieldByName('Factor').IsNull) then
  begin
    //Si el salario minimo sobrepasa el el total de multiplicar el tope de Salarios minimos por el Sal Min del Df
    if zOrganizacion.Locate('IdOrganizacion', CxCbbOrganizacion.EditValue, []) then
    begin
      LocFactor := zFactorIntegracion.FieldByName('Factor').AsFloat;
      if ((LocFactor * Salario) <= (zSalMinDF.FieldByName('Salario').AsFloat * zOrganizacion.FieldByName('NSMTopeIntIMSS').AsInteger)) then
        Result := (LocFactor * Salario)
      else
        Result := (zSalMinDF.FieldByName('Salario').AsFloat * zOrganizacion.FieldByName('NSMTopeIntIMSS').AsInteger);
    end;
  end
  else
  begin
    Result := 0;
    MessageDlg('El sistema tiene problema de configuración, puede que el usuario no lo haya configurado correctamente, contactar a su administrador de sistema', mtWarning, [mbOK], 0);
  end;
end;

procedure TFrmWizardGroup.CargarDeptos(IdOrganizacion: Integer);
begin
  try
    fForm := TForm.Create(Self);
    fForm.Caption := '';
    fForm.BorderStyle := bsNone;
    fForm.Width := 305;
    fForm.Height := 85;
    fForm.Position := poScreenCenter;

    pnlWait.Parent := fForm;
    pnlWait.Align := alClient;
    pnlWait.Visible := True;

    CxLblleyenda.Caption := 'Cargando Puestos activos. ' + #10#13 + 'Por favor espere...';
    fForm.OnShow := onShowVentanita;
    fForm.ShowModal;

    zDepartamentos.Params.ParamByName('IdOrganizacion').AsInteger := IdOrganizacion;
    if zDepartamentos.active then
      zDepartamentos.Refresh
    else
      zDepartamentos.Open;

    YaCargado := True;
  finally
    if Assigned(fForm) then
    begin
      pnlWait.Visible := False;
      pnlWait.Align := alNone;
      pnlWait.Parent := Self;
      fForm.Destroy;
    end;
  end;
end;

procedure TFrmWizardGroup.CargarPersonal;
var
  Lista: string;
  i: Integer;
  LocFechaInicioGuardia: TDate;
  LocFechaFinGuardia: TDate;
  LocFechaSubida: TDate;
  LocFechaBajada: TDate;
  ListaFest: string;
  noDom: Integer;
  noFest: Integer;
begin
  try
    //Limpiar el Dataset para no meter Shit
    CdMemoraContratos.EmptyDataSet;
    
    fForm := TForm.Create(Self);
    fForm.Caption := '';
    fForm.BorderStyle := bsNone;
    fForm.Width := 305;
    fForm.Height := 85;
    fForm.Position := poScreenCenter;

    pnlWait.Parent := fForm;
    pnlWait.Align := alClient;
    pnlWait.Visible := True;

    if (ListaEmpleados.Count > 0) then
    begin
      CxLblleyenda.Caption := 'Cargando personal seleccionado. ' + #10#13 + 'Por favor espere...';
      fForm.OnShow := onShowVentanita;
      fForm.ShowModal;

      //Crear lista de parametros para el DataSet
      for i := 0 to ListaEmpleados.Count - 1 do
        Lista := Trim(ListaEmpleados[i]) + ',' + Lista;

      zPersonal.Params.ParamByName('CodigoPersonal').AsString := Lista;
      zPersonal.Open;

      zPersonal.First;
      while Not zPersonal.Eof do
      begin

        CdMemoraContratos.Append;
        CdMemoraContratos.FieldByName('IdPersonal').AsInteger := zPersonal.FieldByName('IdPersonal').AsInteger;
        CdMemoraContratos.FieldByName('NombreCompleto').AsString := zPersonal.FieldByName('NombreCompleto').AsString;
        CdMemoraContratos.FieldByName('CodigoPersonal').AsString := zPersonal.FieldByName('CodigoPersonal').AsString;
        CdMemoraContratos.FieldByName('Rfc').AsString := zPersonal.FieldByName('Rfc').AsString;
        CdMemoraContratos.FieldByName('Curp').AsString := zPersonal.FieldByName('Curp').AsString;
        CdMemoraContratos.FieldByName('FechaNacimiento').AsDateTime := zPersonal.FieldByName('FechaNacimiento').AsDateTime;
        CdMemoraContratos.FieldByName('NumeroSeguroSocial').AsString := zPersonal.FieldByName('NumeroSeguroSocial').AsString;
        CdMemoraContratos.FieldByName('Sexo').AsString := zPersonal.FieldByName('Sexo').AsString;
        CdMemoraContratos.FieldByName('EstadoCivil').AsString := zPersonal.FieldByName('EstadoCivil').AsString;

        CdMemoraContratos.FieldByName('IdOrganizacion2').AsInteger := CxCbbFrentes.EditValue;
        CdMemoraContratos.FieldByName('NombreOrganizacion2').AsString := CxCbbFrentes.Text;
        CdMemoraContratos.FieldByName('IdOrganizacion').AsInteger := CxCbbOrganizacion.EditValue;

        CdMemoraContratos.FieldByName('IdDepartamento').AsInteger    := zDepartamentos.FieldByName('idDepartamento').AsInteger;
        CdMemoraContratos.FieldByName('TituloDepartamento').AsString := zDepartamentos.FieldByName('Titulodepartamento').AsString;


        if TZQuery(dsDatosEmpleado.dataset).Locate('sidEmpleado', zPersonal.fieldByname('CodigoPersonal').asString, []) then
        begin
          CdmemoraContratos.FieldByName('IdCargo').AsInteger := TZQuery(dsDatosEmpleado.Dataset).FieldByName('Iid_Puesto').AsInteger;
          CdMemoraContratos.FieldByName('TituloCargo').AsString := TZQuery(dsDatosEmpleado.DataSet).FieldByName('sPuesto').AsString;
        end;

        if (CxCbbPeriodoGuardia.EditValue = null) Or (CxCbbPeriodoGuardia.ItemIndex = -1) then
          CdMemoraContratos.FieldByName('IdPeriodosGuardia').Clear
        else
          CdMemoraContratos.FieldByName('IdPeriodosGuardia').AsInteger := CxCbbPeriodoGuardia.EditValue;

        CdMemoraContratos.FieldByName('CobraFestivos').AsString := 'No';
        CdMemoraContratos.FieldByName('Jornada').AsInteger := 8;

        CdMemoraContratos.FieldByName('Incluir').AsBoolean := True;
        CdMemoraContratos.Post;
        zPersonal.Next;
      end;
      YaCargado := True;
    end
    else
      MessageDlg('No hay personal seleccionado dentro del sistema, o no se encuentra disponible el personal seleccionado.', mtInformation, [mbOK],0);
  finally
    if Assigned(fForm) then
    begin
      pnlWait.Visible := False;
      pnlWait.Align := alNone;
      pnlWait.Parent := Self;
      fForm.Destroy;
    end;
  end;
end;

procedure TFrmWizardGroup.CargarPuestos(IdOrganizacion, IdTipoNomina: Integer);
begin
  try
    fForm := TForm.Create(Self);
    fForm.Caption := '';
    fForm.BorderStyle := bsNone;
    fForm.Width := 305;
    fForm.Height := 85;
    fForm.Position := poScreenCenter;

    pnlWait.Parent := fForm;
    pnlWait.Align := alClient;
    pnlWait.Visible := True;

    if zOrganizacion.Locate('IdOrganizacion', IdOrganizacion, []) then
    Begin
      CxLblleyenda.Caption := 'Cargando Puestos activos. ' + #10#13 + 'Por favor espere...';
      fForm.OnShow := onShowVentanita;
      fForm.ShowModal;

      zCargo.Params.ParamByName('FechaAplicacion').AsDate    := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      zCargo.Params.ParamByName('IdTipoNomina').AsInteger    := IdTipoNomina;
      zCargo.Params.ParamByName('IdOrganizacion').AsInteger  := IdOrganizacion;
      zCargo.Open;

      YaCargado := True;
    End;
  finally
    if Assigned(fForm) then
    begin
      pnlWait.Visible := False;
      pnlWait.Align := alNone;
      pnlWait.Parent := Self;
      fForm.Destroy;
    end;
  end;
end;

procedure TFrmWizardGroup.CargarPuestosAnteriores;
begin

end;

procedure TFrmWizardGroup.CdMemoraContratosAfterPost(DataSet: TDataSet);
var
  LocDomingos: Integer;
  LocFestivos: Integer;
  LocRangoPuesto: Integer;
  SDCorrespondiente: Real;
  SDICorrespondiente: Real;
begin
  CdMemoraContratos.AfterPost := nil;
  CdMemoraContratos.AfterScroll := nil;
  SDCorrespondiente := 0;
  SDICorrespondiente := 0;
  LocDomingos := 0;
  LocFestivos := 0;
  try
    ReSetFechasContrato;
    if YaValidado then
      DxBarBtnValidarContratacionClick(Nil);

  finally
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
  end;
end;

procedure TFrmWizardGroup.CdMemoraContratosAfterScroll(DataSet: TDataSet);
begin
  if (Not Calculando) and (CdMemoraContratos.RecordCount > 0) and (YaValidado) then
  begin
    cxMemo1.Text := '';
    cxGBErrores.Caption := CdMemoraContratos.FieldByName('NombreCompleto').AsString;
    cxMemo1.Text := CdMemoraContratos.FieldByName('Errores').AsString;
  end;

  if (Imprimiendo) and not (Calculando) then
  begin
    if (CdConMemPer.Active) then
    begin
      CdConMemPer.Filtered := False;
      CdConMemPer.Filter := 'IdPersonal = ' + CdMemoraContratos.FieldByName('IdPersonal').AsString + ' and Modo = ' + QuotedStr('PERCEPCION');
      CdConMemPer.Filtered := True;
    end;

    if (CdConMemDed.Active) then
    begin
      CdConMemDed.Filtered := False;
      CdConMemDed.Filter := 'IdPersonal = ' + CdMemoraContratos.FieldByName('IdPersonal').AsString + ' and Modo = ' + QuotedStr('DEDUCCION');
      CdConMemDed.Filtered := True;
    end;

    NetoPagar := 0;
    TotalPercepciones := 0;
    while not CdConMemPer.Eof do
    begin
      if CompareText(CdConMemPer.FieldByName('Modo').AsString, 'PERCEPCION') = 0 then
        TotalPercepciones := TotalPercepciones + StrToFloat(CdConMemPer.FieldByName('Importe').AsString);

      CdConMemPer.Next;
    end;
    CdConMemPer.First;

    CdConMemDed.First;
    TotalDeducciones := 0;
    while not CdConMemDed.Eof do
    begin
      if CompareText(CdConMemDed.FieldByName('Modo').AsString, 'DEDUCCION') = 0 then
        TotalDeducciones := TotalDeducciones + StrToFloat(CdConMemDed.FieldByName('Importe').AsString);
      CdConMemDed.Next;
    end;
    CdConMemDed.First;

    if Imprimiendo then
    try
      zGuardias.Filtered := False;
      zGuardias.Filter := 'IdGuardia = ' + QuotedStr(VarToStr(CxCbbGuardias.EditValue));
      zGuardias.Filtered := True;

      zPGuardias.Filtered := False;
      zPGuardias.Filter := 'IdPeriodosGuardia = ' + QuotedStr(VarToStr(CxCbbPeriodoGuardia.EditValue));
      zPGuardias.Filtered := True;
    except
      zGuardias.Filtered := False;
      zPGuardias.Filtered := False;
    end;
    NetoPagar := TotalPercepciones - TotalDeducciones;
  end;
end;

function TFrmWizardGroup.ContarErroneos: Integer;
var
  cont: Integer;
begin
  cont := 0;
  if (CdMemoraContratos.Active)  and (CdMemoraContratos.RecordCount > 0)then
  begin
    CdMemoraContratos.First;
    while not CdMemoraContratos.eof do
    begin
      if CdMemoraContratos.FieldByName('Estatus').AsString = 'Error' then
        Inc(cont);
      cdMemoraContratos.Next;
    end;
    Result := cont;
    Exit;
  end
  else
    Result := 0;
end;

procedure TFrmWizardGroup.ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaInicio, LocFechaTermino: TDate; var Domingos: Integer; var Festivos: Integer; var ListaFestivos: String);
const
  NomMes: Array [1 .. 12] of String = ('ENE', 'FEB', 'MAR', 'ABR', 'MAY', 'JUN', 'JUL', 'AGO', 'SEP', 'OCT', 'NOV', 'DIC');
var
  Cta: Integer;
  Cadena: String;
begin
  if Not zDiasFestivos.Active then
  begin
    zDiasFestivos.Active := False;
    zDiasFestivos.Connection := connection.zConnection;
    zDiasFestivos.Params.ParamByName('AnioInicio').AsDate := LocFechaInicioGuardia;
    zDiasFestivos.Params.ParamByName('AnioTermino').AsDate := LocFechaFinGuardia;
    zDiasFestivos.Open;
  end
  else
  begin
    zDiasFestivos.Close;
    zDiasFestivos.Params.ParamByName('AnioInicio').AsDate := LocFechaInicioGuardia;
    zDiasFestivos.Params.ParamByName('AnioTermino').AsDate := LocFechaFinGuardia;
    zDiasFestivos.Open;
  end;

  // Verificar cuales son los festivos que se está considerando
  if ((zDiasFestivos.Active) and (zDiasFestivos.RecordCount > 0)) then
  begin
    // Contar los domingos
    Cta := 0;
    while LocFechaInicioGuardia <= LocFechaFinGuardia do
    begin
      if DayOfWeek(LocFechaInicioGuardia) = 1 then
        Inc(Cta);
      LocFechaInicioGuardia := IncDay(LocFechaInicioGuardia);
    end;
    Domingos := Cta;

    // Contar los días festivos
    Cta := 0;
    Cadena := '';  //Listar los festivos que se atraviesan en esa guardia
    zDiasFestivos.First;
    while not zDiasFestivos.Eof do
    begin
      if (zDiasFestivos.FieldByName('Fecha').AsDateTime >= LocFechaInicio) and (zDiasFestivos.FieldByName('Fecha').AsDateTime <= LocFechaTermino) then
      begin
        if Cadena <> '' then
          Cadena := Cadena + ', ';

        Cadena := Cadena + IntToStr(DayOf(zDiasFestivos.FieldByName('Fecha').AsDateTime)) + '-' + NomMes[MonthOf(zDiasFestivos.FieldByName('Fecha').AsDateTime)];
        Inc(Cta);
      end;
      zDiasFestivos.Next;
    end;
    Festivos := Cta;
    ListaFestivos := Cadena;
  end;
end;

function TFrmWizardGroup.ContarSeleccionados: Integer;
var
  cont: Integer;
begin
  cont := 0;
  if (CdMemoraContratos.Active)  and (CdMemoraContratos.RecordCount > 0)then
  begin
    CdMemoraContratos.First;
    while not CdMemoraContratos.eof do
    begin
      if CdMemoraContratos.FieldByName('Incluir').AsBoolean = True then
        Inc(cont);
      CdMemoraContratos.Next;
    end;
    Result := cont;
    Exit;
  end
  else
    Result := 0;
end;

procedure TFrmWizardGroup.CreatePopup(var Panel: TcxGroupBox);
begin
  try
    gForm := TForm.Create(Self);
    gForm.Name := 'FrmAdd';
    gForm.Position := poScreenCenter;
    gForm.Width := 415;
    gForm.Height := 460;
    gForm.Caption := 'Selección de datos.';
    gForm.BorderStyle := bsDialog;
    Panel.Parent := gForm;
    panel.Align := alClient;
    Panel.Visible := True;
    gForm.ShowModal;
  finally
    if Panel.Parent <> self then
    begin
      Panel.Visible := False;
      Panel.Align := alNone;
      Panel.Parent := Self;
    end;

    if Assigned(FindComponent('FrmAdd')) then
      TForm(FindComponent('FrmAdd')).Destroy;
  end;
end;

procedure TFrmWizardGroup.CxBtCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmWizardGroup.CxBtnAnteriorClick(Sender: TObject);
begin
  if AdvPSlider1.ActivePage = AdvPageOrganizacion then
  begin
    AdvPSlider1.ActivePage := AdvPageOrganizacion;
    dxImageSlider1.ItemIndex := 0;
    dxImageSlider1.Visible := true;
    Self.WindowState := wsNormal;
    CxBtnSiguiente.Enabled := True;
    exit;
  end;
  if AdvPSlider1.ActivePage = AdvPageTipoNomina then
  begin
    AdvPSlider1.ActivePage := AdvPageOrganizacion;
    dxImageSlider1.ItemIndex := 0;
    dxImageSlider1.Visible := true;
    Self.WindowState := wsNormal;
    CxBtnSiguiente.Enabled := True;
    exit;
  end;
  if AdvPSlider1.ActivePage = AdvPageGuardias then
  begin
    AdvPSlider1.ActivePage := AdvPageTipoNomina;
    dxImageSlider1.ItemIndex := 1;
    dxImageSlider1.Visible := True;
    Self.WindowState := wsNormal;
    CxBtnSiguiente.Enabled := True;
    exit;
  end;
  if AdvPSlider1.ActivePage = AdvPageDatosEmpleados then
  begin
    AdvPSlider1.ActivePage := AdvPageGuardias;
    dxImageSlider1.ItemIndex := 2;
    dxImageSlider1.Visible := True;
    CxBtnSiguiente.Enabled := True;
    Self.WindowState := wsNormal;
    exit;
  end;
end;                                                              

procedure TFrmWizardGroup.cxbtnOKClick(Sender: TObject);
begin
  zSalarios.Locate('IdSalario', CxLookUpSalarios.EditValue, []);
end;

procedure TFrmWizardGroup.CxBtnSeleccionarClick(Sender: TObject);
begin
  if CxGridDatos.ActiveLevel = CxLevelDeptos then
    setDepartamentos;
  if CxGridDatos.ActiveLevel = CxLevelPuestos then
    setPuestos;

  if YaValidado then
    DxBarBtnValidarContratacionClick(nil);

  gForm.Close;
end;

procedure TFrmWizardGroup.CxBtnSiguienteClick(Sender: TObject);
begin

  if (not creandoForm) then
  begin
    if AdvPSlider1.ActivePage = AdvPageOrganizacion then
    begin
      AdvPSlider1.ActivePage := AdvPageTipoNomina;
      dxImageSlider1.ItemIndex := 1;
      dxImageSlider1.Visible := True;
      CxBtnSiguiente.Enabled := True;
      Self.WindowState := wsNormal;
      exit;
    end;

    if (zTipoNomina.Locate('IdTipoNomina', CxCbbTipoNomina.EditValue, []))  and (zTipoNomina.FieldByName('DiasDescanso').AsInteger > 0) then
    begin
      if AdvPSlider1.ActivePage = AdvPageTipoNomina then
      begin
        AdvPSlider1.ActivePage := AdvPageGuardias;
        dxImageSlider1.ItemIndex := 2;
        dxImageSlider1.Visible := True;
        CxBtnSiguiente.Enabled := True;
        Self.WindowState := wsNormal;
        exit;
      end;
    end
    else  if (CxCbbTipoNomina.EditValue <> null) and (Not zTipoNomina.Locate('IdTipoNomina', CxCbbTipoNomina.EditValue, [])) and (zTipoNomina.FieldByName('DiasDescanso').AsInteger = 0) then
    begin
      AdvPSlider1.ActivePage := AdvPageDatosEmpleados;
      CxBtnSiguiente.Enabled := False;
      if YaCargado = False then
      begin
        CargarPuestos(CxCbbOrganizacion.EditValue, CxCbbTipoNomina.EditValue);
        if CxCbbFrentes.EditValue <> -1  then
          CargarDeptos(CxCbbFrentes.EditValue)
        else
          CargarDeptos(CxCbbOrganizacion.EditValue);

        CargarPersonal;
        SetFechasContrato;

        //Si ya se definieron configuraciones
        YaCargado := True;
        YaLeidoOrganizacion := True;
        YaLeidoOrganizacion2 := True;
        YaLeidoTipoNomina := True;
        YaLeidoPGuardia := True;
        YaLeidoGuardia := True;
        //setRangoFechas(zPGuardias.FieldByName('FechaInicio').AsDateTime,zPGuardias.FieldByName('FechaTermino').AsDateTime);
      end;

       if (YaCargado) and  ((YaLeidoTipoNomina = False) or (YaLeidoGuardia = False) or (YaLeidoPGuardia = False)) then
       begin
          SetFechasContrato;
          YaCargado := True;
          YaLeidoOrganizacion := True;
          YaLeidoOrganizacion2 := True;
          YaLeidoTipoNomina := True;
          YaLeidoPGuardia := True;
          YaLeidoGuardia := True;
       end;
      dxImageSlider1.Visible := False;
      dxImageSlider1.ItemIndex := 3;
      Self.WindowState := wsMaximized;
      exit;
    end;

    //Mostrar La pagina de los datos de contratación
    if (AdvPSlider1.ActivePage = AdvPageGuardias)  then
    begin
      AdvPSlider1.ActivePage := AdvPageDatosEmpleados;
      CxBtnSiguiente.Enabled := False;
      if YaCargado = false then
      begin
        CargarPuestos(CxCbbOrganizacion.EditValue, CxCbbTipoNomina.EditValue);
        if CxCbbFrentes.EditValue <> -1  then
          CargarDeptos(CxCbbOrganizacion.EditValue)
        else
          CargarDeptos(CxCbbOrganizacion.EditValue);

        CargarPersonal;
        SetFechasContrato;

        setDatosAutoEmpleado;

        //Si ya se definieron configuraciones
        YaCargado := True;
        YaLeidoOrganizacion := True;
        YaLeidoOrganizacion2 := True;
        YaLeidoTipoNomina := True;
        YaLeidoPGuardia := True;
        YaLeidoGuardia := True;
        //setRangoFechas(zPGuardias.FieldByName('FechaInicio').AsDateTime,zPGuardias.FieldByName('FechaTermino').AsDateTime);
      end;

       if (YaCargado) and  ((YaLeidoTipoNomina = False) or (YaLeidoGuardia = False) or (YaLeidoPGuardia = False)) then
       begin
          SetFechasContrato;
          YaCargado := True;
          YaLeidoOrganizacion := True;
          YaLeidoOrganizacion2 := True;
          YaLeidoTipoNomina := True;
          YaLeidoPGuardia := True;
          YaLeidoGuardia := True;
       end;
      dxImageSlider1.Visible := False;
      dxImageSlider1.ItemIndex := 3;
      Self.WindowState := wsMaximized;
      exit;
    end;
  end;
end;

procedure TFrmWizardGroup.CxCbbFrentesPropertiesChange(Sender: TObject);
begin
  CxLblEmpresaDatos.Caption := CxCbbOrganizacion.Text;
  CxLblFrentesDatos.Caption := CxCbbFrentes.Text;
  CxLblNombreEmpresa.Caption := CxCbbOrganizacion.Text;
  CxLblNombreFrente.Caption := CxCbbFrentes.Text;
  CxLblNombreEmpresaDC.Caption := CxCbbOrganizacion.Text;

  if CxCbbFrentes.EditValue <> null then
    zOrganizacion2.Locate('IdOrganizacion', CxCbbFrentes.EditValue, []);
end;

procedure TFrmWizardGroup.CxCbbFrentesPropertiesInitPopup(Sender: TObject);
begin
  if YaLeidoOrganizacion2 then
  begin
    if MessageDlg('Si cambia el valor de este campo, perderá las modificaciones que haya realizado en los *Frentes* del detalle de contratación.' + #10#13 + '¿Está seguro que desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      YaLeidoOrganizacion2 := False;
      SetNullFrentes;
    end
    else
      YaLeidoOrganizacion2 := True;
  end;
end;

procedure TFrmWizardGroup.CxCbbGuardiasPropertiesChange(Sender: TObject);
var
  LocGuardia: Integer;
begin
  try
    fForm := TForm.Create(Self);
    fForm.Caption := '';
    fForm.BorderStyle := bsNone;
    fForm.Width := 305;
    fForm.Height := 85;
    fForm.Position := poScreenCenter;

    pnlWait.Parent := fForm;
    pnlWait.Align := alClient;
    pnlWait.Visible := True;
    CxLblleyenda.Caption := 'Cargando periodos de guardia...';
    fForm.OnShow := onShowVentanita;
    fForm.ShowModal;

    CxLblTipoNominaDC.Caption := CxCbbTipoNomina.Text;
    CxLblGuardiaDC.Caption := CxCbbGuardias.Text;
    CxLblPGuardiaDC.Caption := CxCbbPeriodoGuardia.Text;

    if CxCbbGuardias.EditValue <> null then
    begin
      //Localizar la guardia a la cual se van a cargar sus periodos
      zGuardias.Locate('IdGuardia', CxCbbGuardias.EditValue, []);
      LocGuardia := zGuardias.FieldByName('IdGuardia').AsInteger;
      zPGuardias.Params.ParamByName('IdGuardia').AsInteger := LocGuardia;

      //Una vez localizada la guardia abrimos el dataset
      //y que siga la fiesta
      if zPGuardias.Active then
        zPGuardias.Refresh
      else
        zPGuardias.Open;
    end;
  finally
    if Assigned(fForm) then
    begin
      pnlWait.Visible := False;
      pnlWait.Align := alNone;
      pnlWait.Parent := Self;
      fForm.Destroy;
    end;
  end;
end;

procedure TFrmWizardGroup.CxCbbGuardiasPropertiesInitPopup(Sender: TObject);
begin
  if YaLeidoGuardia then
  begin
    if MessageDlg('Si cambia el valor de este campo, perderá las fechas de contratación y baja de TODO* el Personal, así como sus cargos con sus respectivos Salarios.' + #10#13 + '¿Está seguro que desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      YaLeidoGuardia := False;
      SetNullContratos;
      SetNullCargos;
      setNullSalarios;
    end
    else
      YaLeidoGuardia := True;
  end;
end;

procedure TFrmWizardGroup.CxCbbGuardiasPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  LocRangoPuesto: Integer;
  LocDomingos: Integer;
  LocFestivos: Integer;
  SDCorrespondiente: Real;
  SDICorrespondiente: Real;
  LocFechaInicioGuardia: TDate;
  LocFechaFinGuardia: TDate;
  LocFechaSubida: TDate;
  LocFechaBajada: TDate;
  NoDom, NoFest: Integer;
  ListaFest: string;
begin
  SDCorrespondiente := 0;
  if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    LocFechaInicioGuardia := zPGuardias.FieldByName('FechaInicio').AsDateTime;
    LocFechaFinGuardia := zPGuardias.FieldByName('FechaTermino').AsDateTime;
    LocFechaSubida := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
    LocFechaBajada := CdMemoraContratos.FieldByName('FechaBaja').AsDateTime;
    //Asignar los valores ubicados para que nos devuelva en las variables NoDom, NoFest, ListaFest
    ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaSubida, LocFechaBajada, NoDom, noFest, ListaFest);
    CdMemoraContratos.Edit;
    CdMemoraContratos.FieldByName('NoDomingos').AsInteger := noDom;
    CdMemoraContratos.FieldByName('NoFestivos').AsInteger := noFest;
    CdMemoraContratos.Post;


    CdMemoraContratos.Edit;
    //Localizar los domingos del empleado seleccionado
    //Debido a que cada uno puede tener una configuración diferente.
    LocDomingos := CdMemoraContratos.FieldByName('NoDomingos').AsInteger;
    LocFestivos := CdMemoraContratos.FieldByName('NoFestivos').AsInteger;

    //Buscar el Salario Correspondiente y devolverlo en la variable SDCorrespondiente
    if Not zCargo.FieldByName('IdRangoSalarios').IsNull then
    begin
      LocRangoPuesto := zCargo.FieldByName('IdRangoSalarios').AsInteger;
      try
        setSalarios(LocRangoPuesto, -9, LocDomingos, LocFestivos, SDCorrespondiente,False);
      Except
        MessageDlg('No se encontraron Rangos de Salario en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
      end;
    end
    Else if Not zCargo.FieldByName('IdSalario').IsNull then
    begin
      LocRangoPuesto := zCargo.FieldByName('IdSalario').AsInteger;
      try
        setSalarios(-9, LocRangoPuesto, LocDomingos, LocFestivos, SDCorrespondiente,False);
      Except
        MessageDlg('No se encontraron Salarios en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
      end;
    end;

    //Establecer el Salario Correspondiente
    SDICorrespondiente := CalcularSDI(SDCorrespondiente);
    CdMemoraContratos.FieldByName('SalarioDiario').AsFloat := SDCorrespondiente;
    CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat := SDICorrespondiente;
    CdMemoraContratos.Post;
  end;
end;

procedure TFrmWizardGroup.CxCbbOrganizacionPropertiesChange(Sender: TObject);
begin
  try
    zOrganizacion2.filtered := False;
    zOrganizacion2.Filter := 'Padre =' + VarToStr(CxCbbOrganizacion.EditValue) + ' or IdOrganizacion = '  + QuotedStr('-1');
    zOrganizacion2.Filtered := True;

    CxLblEmpresaDatos.Caption := CxCbbOrganizacion.Text;
    CxLblFrentesDatos.Caption := CxCbbFrentes.Text;
    CxLblNombreEmpresa.Caption := CxCbbOrganizacion.Text;
    CxLblNombreFrente.Caption := CxCbbFrentes.Text;

    if CxCbbOrganizacion.EditValue <> null then
      zOrganizacion.Locate('IdOrganizacion', CxCbbOrganizacion.EditValue, []);    
  except
    zOrganizacion2.filtered := False;
  end;
end;

procedure TFrmWizardGroup.CxCbbOrganizacionPropertiesInitPopup(Sender: TObject);
begin
  if YaLeidoOrganizacion then
  begin
    if MessageDlg('Si cambia el valor de este campo, perderá TODAS* las modificaciones que haya realizado en el detalle de contratación.' + #10#13 + '¿Está seguro que desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      YaLeidoOrganizacion := False;
      YaCargado := False;
    end
    else
      YaLeidoOrganizacion := True;
  end;
end;

procedure TFrmWizardGroup.CxCbbPeriodoGuardiaPropertiesChange(Sender: TObject);
var
  LocInicioGuardia: TDate;
  LocFinGuardia: TDate;
begin
  if CxCbbFrentes.EditValue <> null then
  begin
    //Si localiza valida los dateEdit del CxGrid
    if zPGuardias.Locate('IdPeriodosGuardia', CxCbbPeriodoGuardia.EditValue, []) then
    begin
      TcxDateEditProperties(CxColumnContratacion.Properties).MaxDate := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      TcxDateEditProperties(CxColumnContratacion.Properties).MinDate := zPGuardias.FieldByName('FechaInicio').AsDateTime;
      TcxDateEditProperties(CxColumnBaja.Properties).MaxDate := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      TcxDateEditProperties(CxColumnBaja.Properties).MinDate := zPGuardias.FieldByName('FechaInicio').AsDateTime;

      TcxDateEditProperties(CxRowContratacion.Properties).MaxDate := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      TcxDateEditProperties(CxRowContratacion.Properties).MinDate := zPGuardias.FieldByName('FechaInicio').AsDateTime;
      TcxDateEditProperties(CxRowBaja.Properties).MaxDate := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      TcxDateEditProperties(CxRowBaja.Properties).MinDate := zPGuardias.FieldByName('FechaInicio').AsDateTime;

      LocInicioGuardia := zPGuardias.FieldByName('FechaInicio').AsDateTime;
      LocFinGuardia := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      ContarFestivos(LocInicioGuardia,LocFinGuardia,LocInicioGuardia,LocFinGuardia, NoDomingosGeneral, NoFestivosGeneral, ListaFestivosGeneral);
      CxLblDomingosGenerales.Caption := VarToStr(NoDomingosGeneral);
      CxLblFestivosGenerales.Caption := VarToStr(NoFestivosGeneral);
      CxLblListadoDiasFestivos.Caption := ListaFestivosGeneral;
    end;
  end;
end;

procedure TFrmWizardGroup.CxCbbPeriodoGuardiaPropertiesInitPopup(
  Sender: TObject);
begin
  if YaLeidoPGuardia then
  begin
    if MessageDlg('Si cambia el valor de este campo, perderá las fechas de contratación y baja de TODO* el Personal, así como sus cargos con sus respectivos Salarios.' + #10#13 + '¿Está seguro que desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      YaLeidoPGuardia := False;
      SetNullContratos;
      SetNullCargos;
      setNullSalarios;
    end
    else
      YaLeidoPGuardia := True;
  end;
end;

procedure TFrmWizardGroup.CxCbbTipoNominaPropertiesChange(Sender: TObject);
begin
  CxLblTipoNominaDatos.Caption := CxCbbTipoNomina.Text;
end;

procedure TFrmWizardGroup.CxCbbTipoNominaPropertiesInitPopup(Sender: TObject);
begin
  if YaLeidoTipoNomina then
  begin
    if MessageDlg('Si cambia el valor de este campo, perderá las fechas de contratación y baja de TODO* el Personal.' + #10#13 + '¿Está seguro que desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      YaLeidoTipoNomina := False;
      SetNullContratos;
      SetNullCargos;
      setNullSalarios;
    end
    else
      YaLeidoTipoNomina := True;
  end;
end;

procedure TFrmWizardGroup.CxColumnDeptoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  LocIdDepartamento: Integer;
begin
  LocIdDepartamento := -9;
  if CdMemoraContratos.RecordCount > 0 then
  begin
    if CdMemoraContratos.FieldByName('IdOrganizacion2').AsInteger = -1 then
      LocIdDepartamento := CdMemoraContratos.FieldByName('IdOrganizacion').AsInteger
    else
      LocIdDepartamento := CdMemoraContratos.FieldByName('IdOrganizacion').AsInteger;

    CargarDeptos(LocIdDepartamento);
    CxLevelDeptos.Visible := True;
    CxLevelPuestos.Visible := False;
    CreatePopup(cxGBPopup);
  end;
end;

procedure TFrmWizardGroup.CxColumnEstatusPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  CreatePopup(cxGBErrores);
end;

procedure TFrmWizardGroup.CxColumnRangoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  CxLevelDeptos.Visible := False;
  CxLevelPuestos.Visible := True;
  CreatePopup(cxGBPopup);
end;

procedure TFrmWizardGroup.CxColumnSalarioPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  LocRangoPuesto: Integer;
  LocDomingos   : Integer;
  LocFestivos   : Integer;
  SDCorrespondiente  : Real;
  SDICorrespondiente : Real;
  LocFechaInicioGuardia : TDate;
  LocFechaFinGuardia    : TDate;
  LocFechaSubida : TDate;
  LocFechaBajada : TDate;
  NoDom, NoFest : Integer;
  ListaFest     :  string;

begin
  Try
    SDCorrespondiente := 0;
    if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
    begin
      LocFechaInicioGuardia := zPGuardias.FieldByName('FechaInicio').AsDateTime;
      LocFechaFinGuardia := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      LocFechaSubida := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
      LocFechaBajada := CdMemoraContratos.FieldByName('FechaBaja').AsDateTime;
      //Asignar los valores ubicados para que nos devuelva en las variables NoDom, NoFest, ListaFest
      ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaSubida, LocFechaBajada, NoDom, noFest, ListaFest);
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('NoDomingos').AsInteger := noDom;
      CdMemoraContratos.FieldByName('NoFestivos').AsInteger := noFest;
      CdMemoraContratos.Post;

      CdMemoraContratos.Edit;
      //Localizar los domingos del empleado seleccionado
      //Debido a que cada uno puede tener una configuración diferente.
      LocDomingos := CdMemoraContratos.FieldByName('NoDomingos').AsInteger;
      LocFestivos := CdMemoraContratos.FieldByName('NoFestivos').AsInteger;

      zCargo.Locate('idCargo', cdMemoraContratos.FieldByName('idCargo').AsInteger, []);

      //Buscar el Salario Correspondiente y devolverlo en la variable SDCorrespondiente
      if Not zCargo.FieldByName('IdRangoSalarios').IsNull then
      begin
        LocRangoPuesto := zCargo.FieldByName('IdRangoSalarios').AsInteger;
        llenarComboSalarios(LocRangoPuesto, -9, LocDomingos, LocFestivos, SDCorrespondiente,True);
      end
      Else if Not zCargo.FieldByName('IdSalario').IsNull then
      begin
        LocRangoPuesto := zCargo.FieldByName('IdSalario').AsInteger;
        llenarComboSalarios(-9, LocRangoPuesto, LocDomingos, LocFestivos, SDCorrespondiente,True);
      end;

      //*Lanzar form con salarios*/
      //if Assigned(AForm) then
        //AForm.Destroy;

      AForm := TForm.Create(Self);
      AForm.Caption := 'Selección  de Salarios';
      AForm.Width  := 300;
      AForm.Height :=  90;
      AForm.Position    := PoScreenCenter;
      AForm.BorderStyle :=       bsDialog;

      CxGroupSalarios.Enabled :=   True;
      CxGroupSalarios.Visible :=   True;
      CxGroupSalarios.Parent  :=  AForm;
      CxGroupSalarios.Align := AlClient;

      If AForm.ShowModal = mrOK then
      Begin
        SDCorrespondiente := strtofloatDef(CxLookUpSalarios.Text, 0);
        SDICorrespondiente := CalcularSDI(SDCorrespondiente);

        CdMemoraContratos.afterScroll := nil;
        CdMemoraContratos.afterPost := nil;

        //Establecer el Salario Correspondiente
        CdMemoraContratos.FieldByName('SalarioDiario').AsFloat    :=  SDCorrespondiente;
        CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat := SDICorrespondiente;
        CdMemoraContratos.Post;
      End;
    end;
  Finally
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    if AForm.Parent <> Self then
    begin
      cxGroupSalarios.Visible := False;
      cxGroupSalarios.Align := AlNone;
      AForm.Parent := Self;
    end;
  End;
end;

procedure TFrmWizardGroup.CxColumnSalarioPropertiesEditValueChanged(
  Sender: TObject);
var
  SDICorrespondiente: Extended;
begin
   SDICorrespondiente := CalcularSDI(CdMemoraContratos.FieldByName('SalarioDiario').AsFloat);
   CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat := SDICorrespondiente;
end;

procedure TFrmWizardGroup.CxGridDatosEmpleadoStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord.values[CxColumnEstatus.Index] = 'Error' then
    AStyle := cxstylStyleGridBad;

  if ARecord.values[CxColumnEstatus.Index] <> 'Error' then
    AStyle := cxstylStyleGridOK;

end;

procedure TFrmWizardGroup.DxBarBtnBackClick(Sender: TObject);
begin
  CxBtnAnteriorClick(nil);
end;

procedure TFrmWizardGroup.DxBarBtnCalculosVirtualesClick(Sender: TObject);
var
  NewSalario, NewSalarioIntegrado, NewAguinaldo, NewVacaciones, NewPrimaVacacional: Real;
begin
  if Not validarContratos  then
  begin
    MessageDlg('Se detectó un total de [' + VarToStr(ContarErroneos) + ']  Personas con información incompleta.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if MessageDlg('¿Está a punto generar calculos de proyección de Nómina, este proceso puede tardar varios minutos, dependiendo del numero de Empleados que se encuentren en la lista. ¿Está seguro que desea proceder con el cálculo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      Calculando := True;
      CdConMemPer.EmptyDataSet;
      CdConMemDed.EmptyDataSet;
      
      CdMemoraContratos.First;
      while not CdMemoraContratos.Eof do
      begin
        try
          GenerarCalculoVirtual(Self, -1,
                              zOrganizacion.FieldByName('IdOrganizacion').AsInteger,
                              zOrganizacion.FieldByName('FactorPrimaDominical').AsFloat,
                              zOrganizacion.FieldByName('FactorPrimaVacacional').AsFloat,
                              zSalMinDF.FieldByName('Salario').AsFloat,
                              zOrganizacion.FieldByName('SalMinGenZona').AsFloat,
                              zOrganizacion.FieldByName('SeguroVidaInfonavit').AsFloat,
                              zOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger,
                              zOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger,
                              zOrganizacion.FieldByName('NSMTopeIntIMSS').AsInteger,
                              zTipoNomina.FieldByName('IdTipoNomina').AsInteger,
                              zTipoNomina.FieldByName('DiasTrabajados').AsInteger,
                              zTipoNomina.FieldByName('DiasDescanso').AsInteger,
                              CdMemoraContratos.FieldByName('NoFestivos').AsInteger,
                              CdMemoraContratos.FieldByName('NoDomingos').AsInteger,
                              zTipoNomina.FieldByName('InicioSemana').AsString,
                              zTipoNomina.FieldByName('IdTipoTablaIspt').AsInteger,
                              zTipoNomina.FieldByName('Periodicidad').AsFloat,
                              CdMemoraContratos.FieldByName('SalarioDiario').AsFloat,
                              CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat,
                              CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime,
                              CdMemoraContratos.FieldByName('FechaBaja').AsDateTime,
                              CdMemPercepciones,
                              CdMemDeducciones,
                              NewSalario,
                              NewSalarioIntegrado,
                              NewAguinaldo,
                              NewVacaciones,
                              NewPrimaVacacional,
                              false);

          try
//            CdMemPercepciones.Filtered := False;
//            CdMemPercepciones.Filter := 'Modo = ' + QuotedStr('PERCEPCION');
//            CdMemPercepciones.Filtered := True;

            if CdMemPercepciones.RecordCount > 0 then
            begin
              CdMemPercepciones.First;
              while not CdMemPercepciones.Eof do
              begin
                CdConMemPer.Append;
                CdConMemPer.FieldByName('IdPersonal').AsInteger := CdMemoraContratos.FieldByName('IdPersonal').AsInteger;
                CdConMemPer.FieldByName('CodigoConcepto').AsString := CdMemPercepciones.FieldByName('CodigoConcepto').AsString;
                CdConMemPer.FieldByName('Titulo').AsString := CdMemPercepciones.FieldByName('Titulo').AsString;
                CdConMemPer.FieldByName('Nombre').AsString := CdMemPercepciones.FieldByName('Nombre').AsString;
                CdConMemPer.FieldByName('Modo').AsString := CdMemPercepciones.FieldByName('Modo').AsString;
                CdConMemPer.FieldByName('Importe').AsFloat := CdMemPercepciones.FieldByName('Importe').AsFloat;
                CdConMemPer.Post;
                CdMemPercepciones.Next;
              end;
            end;
          finally
            //CdMemPercepciones.Filtered := False;
          end;

          try
//            CdMemDeducciones.Filtered := False;
//            CdMemDeducciones.Filter := 'Modo = ' + QuotedStr('DEDUCCION');
//            CdMemDeducciones.Filtered := True;

            if CdMemDeducciones.RecordCount > 0 then
            begin
              CdMemDeducciones.First;
              while not CdMemDeducciones.Eof do
              begin
                CdConMemDed.Append;
                CdConMemDed.FieldByName('IdPersonal').AsInteger := CdMemoraContratos.FieldByName('IdPersonal').AsInteger;
                CdConMemDed.FieldByName('CodigoConcepto').AsString := CdMemDeducciones.FieldByName('CodigoConcepto').AsString;
                CdConMemDed.FieldByName('Titulo').AsString := CdMemDeducciones.FieldByName('Titulo').AsString;
                CdConMemDed.FieldByName('Nombre').AsString := CdMemDeducciones.FieldByName('Nombre').AsString;
                CdConMemDed.FieldByName('Modo').AsString := CdMemDeducciones.FieldByName('Modo').AsString;
                CdConMemDed.FieldByName('Importe').AsFloat := CdMemDeducciones.FieldByName('Importe').AsFloat;
                CdConMemDed.Post;
                CdMemDeducciones.Next;
              end;
            end;
          finally
            //CdMemDeducciones.Filtered := False;
          end;

          CdMemPercepciones.EmptyDataSet;
          CdMemDeducciones.EmptyDataSet;
          CdMemPercepciones.FieldDefs.Clear;
          CdMemDeducciones.FieldDefs.Clear;
          CdMemPercepciones := nil;
          CdMemDeducciones := nil;
        finally
          gcForma.Destroy;
          gcForma := Nil;
        end;
        CdMemoraContratos.Next;
      end;
      Calculando := False;
      if MessageDlg('Proyecciones de Nómina Generada correctamente. ¿Desea ver el reporte preliminar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        DxBarBtnPrevisualizarReporteClick(nil);  
    finally
      Calculando := False;
    end;
  end;
end;

procedure TFrmWizardGroup.DxBarBtnCancelClick(Sender: TObject);
begin
  DxBarBtnCancelClick(nil);
end;

procedure TFrmWizardGroup.DxBarBtnContratarClick(Sender: TObject);
var
  Cursor: TCursor;
  LocCobraFestivos: Integer;
  MaxPg: Integer;
  MinPg: Integer;
  TmpCodigoPersonal, TmpIdGuardia: string;
  tmpIdCargo, TmpIdPeriodoGuardia: Integer;
  TmpInicio, TmpTermino: TDate;
  noRec: integer;
begin
  try
    TmpCodigoPersonal := '';
    TmpInicio := null;
    TmpTermino := null;
    TmpIdGuardia := '';
    TmpIdPeriodoGuardia := -9;
    IdCargo := -9;
    // SI hay errores no procede
    if Not validarContratos  then
    begin
      MessageDlg('Se detectó un total de [' + VarToStr(ContarErroneos) + ']  Personas con información incompleta.', mtWarning, [mbOK], 0);
      Exit;
    end;

    if MessageDlg('¿Está seguro que desea contratar al personal seleccionado [' + VarToStr(ContarSeleccionados) + ']?' , mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin

      CxColumnProgreso.Visible := True;
      Cursor := Screen.Cursor;

      CdMemoraContratos.Filtered := True;
      CdMemoraContratos.Filter := 'Incluir = ' + QuotedStr('True');

      try
        Screen.Cursor := crAppStart;
        CdMemoraContratos.First;

        while not CdMemoraContratos.Eof do
        begin

          if Not zPersonalImssR.Active then
          begin
            zPersonalImssR.Active := False;
            zPersonalImssR.Connection := connection.zConnection;
            zPersonalImssR.Params.ParamByName('IdPersonalImss').AsInteger := -9;
            zPersonalImssR.Open;
          end;

          if Not zPersonalImssB.Active then
          begin
            zPersonalImssB.Active := False;
            zPersonalImssB.Connection := connection.zConnection;
            zPersonalImssB.Params.ParamByName('IdPersonalImss').AsInteger := -9;
            zPersonalImssB.Open;
          end;

          if (zPersonalImssR.Active) and (zPersonalImssB.Active) then
          begin
            Norec := CdMemoraContratos.RecNo;
            zPersonalImssR.Append;
            zPersonalImssB.Append;

            if CdMemoraContratos.FieldByName('Cobrafestivos').AsString = 'Si' then
              LocCobraFestivos := 1
            else
              LocCobraFestivos := 0;

            zPersonalImssR.FieldByName('IdPersonal').AsInteger := CdMemoraContratos.FieldByName('IdPersonal').AsInteger;
            zPersonalImssB.FieldByName('IdPersonal').AsInteger := CdMemoraContratos.FieldByName('IdPersonal').AsInteger;

            zPersonalImssR.FieldByName('FechaMovimiento').AsDateTime := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
            zPersonalImssB.FieldByName('FechaMovimiento').AsDateTime := CdMemoraContratos.FieldByName('fechaBaja').AsDateTime;

            zPersonalImssR.FieldByName('FechaRegistro').AsDateTime := Now;
            zPersonalImssB.FieldByName('FechaRegistro').AsDateTime := Now;

            zPersonalImssR.FieldByName('TipoMovimiento').AsString := 'Reingreso';
            zPersonalImssB.FieldByName('TipoMovimiento').AsString := 'Baja';

            zPersonalImssR.FieldByName('Jornada').AsInteger := CdMemoraContratos.FieldByName('Jornada').AsInteger;
            zPersonalImssB.FieldByName('Jornada').AsInteger := CdMemoraContratos.FieldByName('Jornada').AsInteger;

            zPersonalImssR.FieldByName('CobraFestivos').AsInteger := LocCobraFestivos;
            zPersonalImssB.FieldByName('CobraFestivos').AsInteger := LocCobraFestivos;

            zPersonalImssR.FieldByName('IdPlazaDetalle').AsInteger := -1;
            zPersonalImssB.FieldByName('IdPlazaDetalle').AsInteger := -1;

            zPersonalImssR.FieldByName('RegistroPatronal').AsString := zOrganizacion.FieldByName('regPatImss').AsString;
            zPersonalImssB.FieldByName('RegistroPatronal').AsString := zOrganizacion.FieldByName('regPatImss').AsString;

            zPersonalImssR.FieldByName('SalarioDiario').AsFloat := CdMemoraContratos.FieldByName('SalarioDiario').AsFloat;
            zPersonalImssB.FieldByName('SalarioDiario').AsFloat := CdMemoraContratos.FieldByName('SalarioDiario').AsFloat;

            zPersonalImssR.FieldByName('SalarioIntegrado').AsFloat := CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat;
            zPersonalImssB.FieldByName('SalarioIntegrado').AsFloat := CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat;

            zPersonalImssR.FieldByName('Procesado').AsString := 'Si';
            zPersonalImssB.FieldByName('Procesado').AsString := 'Si';

            if Not CdMemoraContratos.FieldByName('IdPeriodosGuardia').IsNull then
            begin
              zPersonalImssR.FieldByName('IdPeriodosGuardia').AsInteger := CdMemoraContratos.FieldByName('IdPeriodosGuardia').AsInteger;
              zPersonalImssB.FieldByName('IdPeriodosGuardia').AsInteger := CdMemoraContratos.FieldByName('IdPeriodosGuardia').AsInteger;
            end
            else
            begin
              zPersonalImssR.FieldByName('IdPeriodosGuardia').Clear;
              zPersonalImssB.FieldByName('IdPeriodosGuardia').Clear;
            end;

            zPersonalImssR.FieldByName('IdDepartamento').AsInteger := CdMemoraContratos.FieldByName('IdDepartamento').AsInteger;
            zPersonalImssB.FieldByName('IdDepartamento').AsInteger := CdMemoraContratos.FieldByName('IdDepartamento').AsInteger;

            zPersonalImssR.FieldByName('IdCargo').AsInteger := CdMemoraContratos.FieldByName('IdCargo').AsInteger;
            zPersonalImssB.FieldByName('IdCargo').AsInteger := CdMemoraContratos.FieldByName('IdCargo').AsInteger;

            zPersonalImssR.FieldByName('IdTipoNomina').AsInteger := CxCbbTipoNomina.EditValue;
            zPersonalImssB.FieldByName('IdTipoNomina').AsInteger := CxCbbTipoNomina.EditValue;

            if (CxCbbFrentes.EditValue = Null) or (CxCbbFrentes.ItemIndex = -1) or (CxCbbFrentes.EditValue = -1) then
            begin
              zPersonalImssR.FieldByName('IdOrganizacion').AsInteger := CdMemoraContratos.FieldByName('IdOrganizacion').AsInteger;
              zPersonalImssB.FieldByName('IdOrganizacion').AsInteger := CdMemoraContratos.FieldByName('IdOrganizacion').AsInteger;
            end
            else
            begin
              zPersonalImssR.FieldByName('IdOrganizacion').AsInteger := CdMemoraContratos.FieldByName('IdOrganizacion2').AsInteger;
              zPersonalImssB.FieldByName('IdOrganizacion').AsInteger := CdMemoraContratos.FieldByName('IdOrganizacion2').AsInteger;
            end;

            zPersonalImssR.FieldByName('TipoFiniquito').Clear;
            zPersonalImssB.FieldByName('TipoFiniquito').Clear;

            TmpCodigoPersonal := CdMemoraContratos.FieldByName('CodigoPersonal').AsString;
            tmpIdCargo := CdMemoraContratos.FieldByName('IdCargo').AsInteger;
            TmpInicio := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
            TmpTermino := CdMemoraContratos.FieldByName('FechaBaja').AsDateTime;
            TmpIdGuardia := VarToStr(CxCbbGuardias.EditValue);
            TmpIdPeriodoGuardia := CdMemoraContratos.FieldByName('IdPeriodosGuardia').AsInteger;;

            //IdPersonalImss reingreso
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('SELECT MAX(idPersonalImss) AS id FROM nuc_personalimss;');
            connection.QryBusca.Open;

            if connection.QryBusca.FieldValues['id'] = null then
              zPersonalImssR.FieldByName('idPersonalImss').AsInteger := 1
            else
              zPersonalImssR.FieldByName('idPersonalImss').AsInteger := connection.QryBusca.FieldValues['id'] + 1;

            if zPersonalImssR.State = dsInsert then
            begin
              zPersonalImssR.Post;
            end;

            //IdPersonalImss Baja
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('SELECT MAX(idPersonalImss) AS id FROM nuc_personalimss;');
            connection.QryBusca.Open;

            if connection.QryBusca.FieldValues['id'] = null then
              zPersonalImssB.FieldByName('idPersonalImss').AsInteger := 1
            else
              zPersonalImssB.FieldByName('idPersonalImss').AsInteger := connection.QryBusca.FieldValues['id'] + 1;

            if zPersonalImssB.State = dsInsert then
            begin
              zPersonalImssB.Post;
            end;

            if (tmpIdCargo <> -9) and (Length(Trim(TmpCodigoPersonal)) > 0) then
              setContratado(tmpIdCargo,TmpIdPeriodoGuardia,TmpCodigoPersonal,TmpIdGuardia,TmpInicio,TmpTermino);

            CdMemoraContratos.Edit;
            CdMemoraContratos.FieldByName('Progreso').AsInteger := 420;
            try
              CdMemoraContratos.AfterPost := nil;
              CdMemoraContratos.Post;
            finally
              CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
            end;
            CdMemoraContratos.RecNo := noRec;
          end;

          CdMemoraContratos.Next;
        end;
        MessageDlg('Proceso de contratación finalizado correctamente', mtInformation, [mbOK], 0);
        //setEnabledGrid(True);
        CxGridVista.Enabled := True;
        DxBarBtnContratar.Enabled := False;
        DxBarBtnValidarContratacion.Enabled := False;
        CxBtnAnterior.Enabled := False;
      finally
        Screen.Cursor := Cursor;
        CdMemoraContratos.Filtered := False;
      end;
    end;
  except
    on e:Exception do
      MessageDlg('Ha ocurrido un error inesperado, informe del siguiente error a su administrador del sistema' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmWizardGroup.DxBarBtnDeseleccionarClick(Sender: TObject);
begin
  try
    CdMemoraContratos.AfterPost := Nil;
    CdMemoraContratos.AfterScroll := Nil;
    if CdMemoraContratos.RecordCount > 0 then
    begin
      CdMemoraContratos.First;
      while Not CdMemoraContratos.Eof do
      begin
        CdMemoraContratos.Edit;
        CdMemoraContratos.FieldByName('incluir').AsBoolean := False;
        CdMemoraContratos.Post;
        CdMemoraContratos.Next;
      end;
    end;
  finally
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
  end;
end;

procedure TFrmWizardGroup.DxBarBtnEstablecerCargosClick(Sender: TObject);
begin
  CxLevelDeptos.Visible := False;
  CxLevelPuestos.Visible := True;
  CreatePopup(cxGBPopup);
end;

procedure TFrmWizardGroup.DxBarBtnEstablecerFrentesClick(Sender: TObject);
var
  LocIdDepartamento: Integer;
begin
  LocIdDepartamento := -9;
  if CdMemoraContratos.RecordCount > 0 then
  begin
    if CdMemoraContratos.FieldByName('IdOrganizacion2').AsInteger = -1 then
      LocIdDepartamento := CdMemoraContratos.FieldByName('IdOrganizacion').AsInteger
    else
      LocIdDepartamento := CdMemoraContratos.FieldByName('IdOrganizacion2').AsInteger;

    CargarDeptos(LocIdDepartamento);
    CxLevelDeptos.Visible := True;
    CxLevelPuestos.Visible := False;
    CreatePopup(cxGBPopup);
  end;
end;

procedure TFrmWizardGroup.DxBarBtnNextClick(Sender: TObject);
begin
  CxBtnSiguienteClick(nil);
end;

procedure TFrmWizardGroup.DxBarBtnPrevisualizarReporteClick(Sender: TObject);
begin
  try
    CdMemoraContratos.Filtered := True;
    CdMemoraContratos.Filter := 'Incluir = ' + QuotedStr('True');

    Imprimiendo := True;
    FrxReportContratacion.ShowReport(true);
  finally
    CdMemoraContratos.Filtered := False;
    Imprimiendo := False;
    zGuardias.Filtered := False;
    zPGuardias.Filtered := False;
  end;
end;

procedure TFrmWizardGroup.DxBarBtnSeleccionarInversarClick(Sender: TObject);
begin
  try
    CdMemoraContratos.AfterScroll := nil;
    CdMemoraContratos.AfterPost := nil;
    if CdMemoraContratos.RecordCount > 0 then
    begin
      CdMemoraContratos.First;
      while Not CdMemoraContratos.Eof do
      begin
        CdMemoraContratos.Edit;
        CdMemoraContratos.FieldByName('incluir').AsBoolean := not CdMemoraContratos.FieldByName('Incluir').AsBoolean;
        CdMemoraContratos.Post;
        CdMemoraContratos.Next;
      end;
    end;
  finally
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
  end;
end;

procedure TFrmWizardGroup.DxBarBtnSeleccionarTodosClick(Sender: TObject);
begin
  try
    CdMemoraContratos.AfterPost := nil;
    CdMemoraContratos.AfterScroll := nil;
    if CdMemoraContratos.RecordCount > 0 then
    begin
      CdMemoraContratos.First;
      while Not CdMemoraContratos.Eof do
      begin
        CdMemoraContratos.Edit;
        CdMemoraContratos.FieldByName('incluir').AsBoolean := True;
        CdMemoraContratos.Post;
        CdMemoraContratos.Next;
      end;
    end;
  finally
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
  end;
end;

procedure TFrmWizardGroup.DxBarBtnValidarContratacionClick(Sender: TObject);
begin
  validarContratos;
end;

procedure TFrmWizardGroup.DxDockPanelGridCloseQuery(
  Sender: TdxCustomDockControl; var CanClose: Boolean);
begin
  //CanClose := False;
  //DxDockPanelGrid.DockTo(DxDockSiteGrid, dtClient, 0);
end;

procedure TFrmWizardGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if Assigned(FindComponent('DSPedidoFadul')) then
    begin
      TDataSource(FindComponent('DsPedidoFadul')).DataSet := nil;
      TDataSource(FindComponent('DsPedidoFadul')).Destroy;
    end;
  except
    on e: exception do
      ShowMessage(e.Message);
  end;
end;

procedure TFrmWizardGroup.FormCreate(Sender: TObject);
begin
  creandoForm := True;
  Calculando := False;
  Imprimiendo := False;
  
  ListaEmpleados := TStringList.Create;
  ListaEmpleados.Clear;

  ListaCampos := TStringList.Create;
  ListaCampos.Clear;

  ListaTituloCampos := TStringList.Create;
  ListaTituloCampos.Clear;

  dsDatosEmpleado :=  TDataSource.Create(self);
  dsDatosEmpleado.Name := 'DSPedidoFadul';


  YaValidado := False;
  YaCargado := False;
  YaLeidoOrganizacion := False;
  YaLeidoOrganizacion2 := False;
  YaLeidoTipoNomina := False;

  CdMemoraContratos.FieldDefs.Add('IdPersonal', ftInteger, 0, True);
  CdMemoraContratos.FieldDefs.Add('NombreCompleto', ftString, 255, False);
  CdMemoraContratos.FieldDefs.Add('CodigoPersonal', ftString, 255, False);
  CdMemoraContratos.FieldDefs.Add('Curp', ftString, 100, False);
  CdMemoraContratos.FieldDefs.Add('Rfc', ftString, 50, False);
  CdMemoraContratos.FieldDefs.Add('NumeroSeguroSocial', ftString, 100, False);
  CdMemoraContratos.FieldDefs.Add('FechaNacimiento', ftDate, 0, False);
  CdMemoraContratos.FieldDefs.Add('Sexo', ftString, 50, False);
  CdMemoraContratos.FieldDefs.Add('EstadoCivil', ftString, 255, False);

  CdMemoraContratos.FieldDefs.Add('FechaMovimiento', ftDate, 0, False);
  CdMemoraContratos.FieldDefs.Add('FechaBaja', ftDate, 0, False);
  CdMemoraContratos.FieldDefs.Add('FechaReal', ftDate, 0, False);
  CdMemoraContratos.FieldDefs.Add('FechaRegistro', ftDate, 0, False);
  CdMemoraContratos.FieldDefs.Add('TipoMovimiento', ftString, 100, False);

  CdMemoraContratos.FieldDefs.Add('Jornada', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('CobraFestivos', ftString, 10, False);
  CdMemoraContratos.FieldDefs.Add('IdPlazaDetalle', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('RegistroPatronal', ftString, 200, False);

  CdMemoraContratos.FieldDefs.Add('SalarioDiario', ftFloat, 0, False);
  CdMemoraContratos.FieldDefs.Add('SalarioIntegrado', ftFloat, 0, False);

  CdMemoraContratos.FieldDefs.Add('Procesado', ftString, 2, False);
  CdMemoraContratos.FieldDefs.Add('IdPeriodosGuardia', ftInteger, 0, False);

  CdMemoraContratos.FieldDefs.Add('IdOrganizacion', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('NombreOrganizacion', ftString, 200, False);
  CdMemoraContratos.FieldDefs.Add('IdOrganizacion2', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('NombreOrganizacion2', ftString, 200, False);
  CdMemoraContratos.FieldDefs.Add('IdDepartamento', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('TituloDepartamento', ftString, 200, False);

  CdMemoraContratos.FieldDefs.Add('IdCargo', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('TituloCargo', ftString, 200, False);

  CdMemoraContratos.FieldDefs.Add('IdTipoNomina', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('DoctoAutorizacion', ftBlob, 0, False);
  CdMemoraContratos.FieldDefs.Add('Comentarios', ftMemo, 0, False);
  CdMemoraContratos.FieldDefs.Add('TipoFiniquito', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('Incluir', ftBoolean, 0, False);

  CdMemoraContratos.FieldDefs.Add('NoDomingos', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('NoFestivos', ftInteger, 0, False);

  CdMemoraContratos.FieldDefs.Add('Progreso', ftInteger, 0, False);
  CdMemoraContratos.FieldDefs.Add('Estatus', ftString, 10, False);
  CdMemoraContratos.FieldDefs.Add('Errores', ftMemo, 0, False);

  CdMemoraContratos.CreateDataSet;
  CdMemoraContratos.EmptyDataSet;

  CdConMemPer.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
  CdConMemPer.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
  CdConMemPer.FieldDefs.Add('Titulo', ftString, 20, False);
  CdConMemPer.FieldDefs.Add('Nombre', ftString, 80, False);
  CdConMemPer.FieldDefs.Add('Modo', ftString, 20, False);
  CdConMemPer.FieldDefs.Add('Importe', ftFloat, 0, False);
  CdConMemPer.CreateDataSet;
  CdConMemPer.Open;

  CdConMemDed.FieldDefs.Add('IdPersonal', ftInteger, 0, False);
  CdConMemDed.FieldDefs.Add('CodigoConcepto', ftString, 6, False);
  CdConMemDed.FieldDefs.Add('Titulo', ftString, 20, False);
  CdConMemDed.FieldDefs.Add('Nombre', ftString, 80, False);
  CdConMemDed.FieldDefs.Add('Modo', ftString, 20, False);
  CdConMemDed.FieldDefs.Add('Importe', ftFloat, 0, False);
  CdConMemDed.CreateDataSet;
  CdConMemDed.Open;
end;

procedure TFrmWizardGroup.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  AdvPSlider1.ActivePage := AdvPageOrganizacion;
  //Cargar datos de todos los Datasets para acelerar la navegación entre páginas
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      //Organizaciones
      zOrganizacion.Active := False;
      zOrganizacion.Connection := Connection.ZConnection;
      zOrganizacion.Params.ParamByName('padre').AsInteger := -5;
      zOrganizacion.Params.ParamByName('FechaAplicacion').AsDate := Now();
      zOrganizacion.Open;

      //Organizaciones Hijas
      zOrganizacion2.Active := False;
      zOrganizacion2.Connection := Connection.ZConnection;
      zOrganizacion2.Params.ParamByName('padre').AsInteger := -1; //Cargar todos las Organizaciones
      zOrganizacion2.Params.ParamByName('FechaAplicacion').AsDate := Now();
      zOrganizacion2.Open;

      //Cargar los tipos de nomina
      //Ojo solo las que tienen tipoNomina_liga = NULL
      zTipoNomina.Active := False;
      zTipoNomina.Connection := connection.zConnection;
      zTipoNomina.Params.ParamByName('IdTipoNomina').AsInteger := -1;
      zTipoNomina.Open;

//      try
//        zTipoNomina.Filtered := False;
//        zTipoNomina.Filter := 'IdTipoNomina = ' + QuotedStr(ParIdTipoNomina);
//        zTipoNomina.Filtered := True;
//      except
//        zTipoNomina.Filtered := False;
//      end;

      //Cargar las guardias correspondientes al tipo de Nómina seleccionado
      zGuardias.Active := False;
      zGuardias.Connection := connection.zConnection;
      zGuardias.Params.ParamByName('IdGuardia').AsInteger := -1;
      zGuardias.Params.ParamByName('IdTipoNomina').AsInteger := -1;
      zGuardias.open;

      //Preconfigurar el Dataset del periodo de las guardias
      zPGuardias.Active := False;
      zPGuardias.Connection := connection.zConnection;

      //Preconfigurar el Dataset del Personal seleccionado
      zPersonal.Active := False;
      zPersonal.Connection := connection.zConnection;

      //Preconfigurar el Dataset de los puestos
      zCargo.Active := False;
      zCargo.Connection := connection.zConnection;

      //Preconfigurar el Dataset de los Departamentos
      zDepartamentos.Active := False;
      zDepartamentos.Connection := connection.zConnection;

      zqHistorial.Open;
      //Lista de personal de ejemplo
//      ListaEmpleados.Add('UTI-CC-13-P0495');
//      ListaEmpleados.Add('UTI-CC-12-P0371');
//      ListaEmpleados.Add('UTI-CC-08-P0177');
//      ListaEmpleados.Add('UTI-CC-09-P0184');
//      ListaEmpleados.Add('UTI-CC-09-P0197');
//      ListaEmpleados.Add('UTI-CC-09-P0212');
//      ListaEmpleados.Add('UTI-CC-09-P0211');
//      ListaEmpleados.Add('UTI-CC-09-P0232');
//      ListaEmpleados.Add('UTI-CC-09-P0254');
//      ListaEmpleados.Add('UTI-CC-10-P0300');

      //Lista de Campos a Ser validados
      ListaCampos.Add('IdPersonal');
      ListaCampos.Add('FechaMovimiento');
      ListaCampos.Add('IdOrganizacion');
      ListaCampos.Add('IdDepartamento');
      //ListaCampos.Add('TipoMovimiento');
      ListaCampos.Add('Jornada');
      ListaCampos.Add('CobraFestivos');
      //ListaCampos.Add('RegistroPatronal');
      ListaCampos.Add('SalarioDiario');
      ListaCampos.Add('SalarioIntegrado');
      ListaCampos.Add('IdCargo');
      //ListaCampos.Add('IdTipoNomina');
      ListaCampos.Add('IdPeriodosGuardia');

      //Nombre Real de los Campos a ser validados
      ListaTituloCampos.Add('IdPersonal');
      ListaTituloCampos.Add('Fecha de Subida');
      ListaTituloCampos.Add('Organización');
      ListaTituloCampos.Add('Departamento');
      //ListaTituloCamposCampos.Add('TipoMovimiento');
      ListaTituloCampos.Add('Jornada');
      ListaTituloCampos.Add('Cobra Festivos');
      //ListaTituloCamposCampos.Add('Registro Patronal');
      ListaTituloCampos.Add('Salario Diario');
      ListaTituloCampos.Add('Salario Diario Integrado');
      ListaTituloCampos.Add('Puesto');
      //ListaTituloCampos.Add('Tipo de Nómina');
      ListaTituloCampos.Add('Periodo de Guardia');

      CxGridDatosEmpleado.OptionsView.GroupByBox := False;
      CxColumnProgreso.Visible := False;
      CxColumnEstatus.Visible := False;
      cxMemo1.Text := '';
      Self.Height := 500;
      Self.Width := 760;

      //Cargar valores por default
      //Organizacion
      try
        if zOrganizacion.Locate('IdOrganizacion', connection.contrato.FieldByName('IdOrganizacion').AsInteger, []) then
          CxCbbOrganizacion.EditValue := zOrganizacion.FieldByName('IdOrganizacion').AsInteger
        else
          CxCbbOrganizacion.EditValue := Null;
      except
        CxCbbOrganizacion.EditValue := Null;
      end;

      try
        if zOrganizacion2.Locate('NombreOrganizacion', ParNombreFrente, []) then
          CxCbbFrentes.EditValue := zOrganizacion2.FieldByName('IdOrganizacion').AsInteger
        else
        begin
            if pos('ASIGNAR', zOrganizacion2.FieldByName('nombreorganizacion').asString) > 0 then
               zOrganizacion2.Next;
            CxCbbFrentes.EditValue := zOrganizacion2.FieldByName('IdOrganizacion').AsInteger;
        end;
      Except
        CxCbbFrentes.EditValue := Null;
      end;

      try
        CxCbbTipoNomina.EditValue := zGuardias.FieldByName('idTipoNomina').AsInteger;
      except
        CxCbbTipoNomina.EditValue := Null;
      end;

      try
        if zGuardias.Locate('IdGuardia', ParIdGuardia, []) then
          CxCbbGuardias.EditValue := ParIdGuardia
        else
          CxCbbGuardias.EditValue := Null;
      except
        CxCbbGuardias.EditValue := Null;
      end;

      try
        if zPGuardias.Locate('IdPeriodosGuardia', ParIdPeriodosGuardia, []) then
          CxCbbPeriodoGuardia.EditValue := ParIdPeriodosGuardia
        else
          CxCbbPeriodoGuardia.EditValue := Null;
      Except
        CxCbbPeriodoGuardia.EditValue := Null;
      end;

    finally
      creandoForm := False;
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
      MessageDlg('Ha ocurrido un error desconocido, informe del siguiente error al administrador del sistema.' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmWizardGroup.FrxReportContratacionGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'NetoPagar') = 0 then
    Value := NetoPagar;
end;

procedure TFrmWizardGroup.llenarComboSalarios(IdRangoSalario, IdSalario,
  NoDomingos, NoFestives: Integer; var SD: Real; Todos: Boolean);
var
  cadenaFilter: string;
begin
  //Llena el combo con los 3 salarios de un empleado
  //Si no has cargado nada haslo
  if (Not zSalarios.Active) then
  begin
    zSalarios.Close;
    zSalarios.Connection := connection.zConnection;
    zSalarios.Params.ParamByName('IdOrganizacion').AsInteger := CxCbbOrganizacion.EditValue;
    zSalarios.Params.ParamByName('fechaAplicacion').AsDate   := zPGuardias.FieldByName('FechaTermino').AsDateTime;
    zSalarios.Params.ParamByName('AnioAplicacion').AsInteger := YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime);
    zSalarios.Open;
  end;
  //Si no nos regresa Id en El Rango de Salarios o Salario Fijo
  if (IdRangoSalario <> -9) or (IdSalario <> -9) then
  begin
    //Setear la cadena a buscar, o bien por rango o por IdSalario
    if IdRangoSalario <> -9 then
      cadenaFilter := 'IdRangoSalarios = ' + QuotedStr(VarToStr(IdRangoSalario))
    else if IdSalario <> -9 then
      cadenaFilter := 'IdSalario = ' + VarToStr(IdSalario);
    //Validamos que tenga registros y el Dataset se ecnuentre activo
    if (zSalarios.Active) and (zSalarios.RecordCount > 0) then
    begin
      try
        zSalarios.Filtered := False;
        //Si todos está en verdadero entonces es por que voy a lanzar una ventana de selección,
        //Sino que el usuario se joda y tome el determinado por el sistema
        if (Todos = False) and (idRangoSalario <> -9) then
          zSalarios.Filter := cadenaFilter +  ' and Domingos = ' + QuotedStr(VarToStr(NoDomingos)) + ' and Festivos = ' + QuotedStr(VarToStr(NoFestives))
        else
          zSalarios.Filter := cadenaFilter;

        zSalarios.Filtered := True;

        CxLookUpSalarios.Properties.Items.Clear;

        //Devolver el Salario correspondiente al empleado
        if zSalarios.Recordcount >= 1 then
        begin
          zSalarios.First;
          while Not zSalarios.Eof do
          begin
            CxLookUpSalarios.Properties.Items.Add(FloatToStr(zSalarios.FieldByName('Salario').AsFloat));
            zSalarios.Next;
          end;

          CxLookUpSalarios.ItemIndex := 0;
        end
        else
          CxLookUpSalarios.ItemIndex := -1;
        //else if zSalarios.RecordCount = 0 then
          //MessageDlg('No se encontraron Rangos de Salario en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido', mtInformation, [mbOK], 0);

      Finally //Y por si la cago jajajaja
        zSalarios.Filtered := False;
      end;
    end;
  end;
end;

procedure TFrmWizardGroup.onShowVentanita(Sender: TObject);
begin
  Application.ProcessMessages;
  tmrMSG.Enabled := True;
end;

procedure TFrmWizardGroup.ReSetFechasContrato;
var
  LocRangoPuesto: Integer;
  LocDomingos: Integer;
  LocFestivos: Integer;
  SDCorrespondiente: Real;
  SDICorrespondiente: Real;
  LocFechaInicioGuardia: TDate;
  LocFechaFinGuardia: TDate;
  LocFechaSubida: TDate;
  LocFechaBajada: TDate;
  NoDom, NoFest: Integer;
  ListaFest: string;
begin
  CdMemoraContratos.AfterPost := nil;
  CdMemoraContratos.AfterScroll := nil;
  try
    SDCorrespondiente := 0;

    LocFechaInicioGuardia := zPGuardias.FieldByName('FechaInicio').AsDateTime;
    LocFechaFinGuardia := zPGuardias.FieldByName('FechaTermino').AsDateTime;
    LocFechaSubida := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
    LocFechaBajada := CdMemoraContratos.FieldByName('FechaBaja').AsDateTime;
    //Asignar los valores ubicados para que nos devuelva en las variables NoDom, NoFest, ListaFest
    ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaSubida, LocFechaBajada, NoDom, noFest, ListaFest);

    CdMemoraContratos.Edit;
    CdMemoraContratos.FieldByName('NoDomingos').AsInteger := noDom;
    CdMemoraContratos.FieldByName('NoFestivos').AsInteger := noFest;
    CdMemoraContratos.Post;

    CdMemoraContratos.Edit;
    //Localizar los domingos del empleado seleccionado
    //Debido a que cada uno puede tener una configuración diferente.
    LocDomingos := CdMemoraContratos.FieldByName('NoDomingos').AsInteger;
    LocFestivos := CdMemoraContratos.FieldByName('NoFestivos').AsInteger;

    zCargo.Locate('idCargo', cdMemoraContratos.FieldByName('idCargo').AsInteger, []);

    //Buscar el Salario Correspondiente y devolverlo en la variable SDCorrespondiente
    if Not zCargo.FieldByName('IdRangoSalarios').IsNull then
    begin
      LocRangoPuesto := zCargo.FieldByName('IdRangoSalarios').AsInteger;
      try
        setSalarios(LocRangoPuesto, -9, LocDomingos, LocFestivos, SDCorrespondiente,False);
      Except
        MessageDlg('No se encontraron Rangos de Salario en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
      end;
    end
    Else if Not zCargo.FieldByName('IdSalario').IsNull then
    begin
      LocRangoPuesto := zCargo.FieldByName('IdSalario').AsInteger;
      try
        setSalarios(-9, LocRangoPuesto, LocDomingos, LocFestivos, SDCorrespondiente,False);
      Except
        MessageDlg('No se encontraron Salarios en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
      end;
    end;

    //Establecer el Salario Correspondiente
    SDICorrespondiente := CalcularSDI(SDCorrespondiente);
    CdMemoraContratos.FieldByName('SalarioDiario').AsFloat := SDCorrespondiente;
    CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat := SDICorrespondiente;
    CdMemoraContratos.Post;
  finally
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
  end;
end;

procedure TFrmWizardGroup.setContratado(IdCargo, IdPeriodoGuardia: Integer;
  CodigoPersonal, IdGuardia: String; Inicio, Termino: TDate);
var
  Query: TZQuery;
begin
  Query := TZQuery.Create(Self);
  try
    try
      Query.Connection := connection.ZConnection;
      Query.Active := False;
      Query.SQL.Clear;
      Query.SQL.Add('UPDATE empleados SET sStatusPersonal = ' +  QuotedStr('Contratado') + ', iId_Puesto=' + IntToStr(IdCargo) + ' WHERE sIdEmpleado = ' + QuotedStr(CodigoPersonal));
      Query.ExecSQL;

//      if Assigned(frmEmpleadosGuardias) then
//      begin
        try
          zqHistorial.Append;
          zqHistorial.FieldByName('iIdContrato').AsInteger        :=0;
          zqHistorial.FieldByName('sIdEmpleado').AsString         := CodigoPersonal; //Le asigno el sIdContrato
          zqHistorial.FieldByName('sTipoContrato').AsString       := 'ABORDO';    //Le asigna el tipo de contrato a bordo
          zqHistorial.FieldByName('dFechaInicio').AsDateTime      := inicio;
          zqHistorial.FieldByName('dFechaTermino').AsDateTime     := Termino;       //Asigna la fecha final
          zqHistorial.FieldByName('sPeriodoLaboral').asstring     := 'del '+DateToStr(Inicio)+' al '+DateToStr(Termino);
          zqHistorial.FieldByName('sIdGuardia').asstring          := IdGuardia;
          zqHistorial.FieldByName('ID_PeriodoGuardia').AsInteger  := IdPeriodoGuardia;
          zqHistorial.Post;
        except
          on e:exception do
          begin
            ShowMessage('No fue posible crear el contrato. Error: ' + e.Message + ', ' + e.ClassName);
            zqHistorial.Cancel;
          end;
        end;
//      end;
    finally
      Query.Destroy;
    end;
  except
    on e: Exception do
      MessageDlg('Ha ocurrido un error al intentar establecer el parametro a "Contratado" al Empleado [' + CodigoPersonal + '] ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrmWizardGroup.setDatosAutoEmpleado;
var
  cursor: TCursor;

  LocDomingos: Integer;
  LocFestivos: Integer;
  LocRangoPuesto: Integer;
  SDCorrespondiente: Real;
  SDICorrespondiente: Real;
  LocFechaInicioGuardia: TDate;
  LocFechaFinGuardia: TDate;
  LocFechaSubida: TDate;
  LocFechaBajada: TDate;

  NoDom, NoFest: Integer;
  ListaFest: string;
begin
  SDCorrespondiente := 0;
  SDICorrespondiente := 0;
  LocDomingos := 0;
  LocFestivos := 0;
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;

    if (dsDatosEmpleado.DataSet <> nil) and (TZQuery(dsDatosEmpleado.DataSet).RecordCount > 0) and
       (MessageDlg('Al parecer hay información que puede precargarse en Automático a los empleados seleccionados, ¿Deseas aplicarlos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
      begin
        CdMemoraContratos.First;
        while not CdMemoraContratos.Eof do
        begin
          if TZQuery(dsDatosEmpleado.DataSet).Locate('sidEmpleado', CdMemoraContratos.FieldByName('CodigoPersonal').AsString, []) then
          begin
            CdMemoraContratos.Edit;
            CdMemoraContratos.FieldByName('IdCargo').AsInteger := TZQuery(dsDatosEmpleado.Dataset).FieldByName('Iid_Puesto').AsInteger;
            CdMemoraContratos.FieldByName('TituloCargo').AsString := TZQuery(dsDatosEmpleado.DataSet).FieldByName('sPuesto').AsString;
            CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime := TZQuery(dsDatosEmpleado.DataSet).FieldByName('dFechaSubida').AsDateTime;
            CdMemoraContratos.FieldByName('FechaBaja').AsDateTime := TZQuery(dsDatosEmpleado.DataSet).FieldByName('dFechaBajada').AsDateTime;

            // /*Prueba saul*/

            LocFechaInicioGuardia := zPGuardias.FieldByName('FechaInicio').AsDateTime;
            LocFechaFinGuardia := zPGuardias.FieldByName('FechaTermino').AsDateTime;
            LocFechaSubida := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
            LocFechaBajada := CdMemoraContratos.FieldByName('FechaBaja').AsDateTime;
            //Asignar los valores ubicados para que nos devuelva en las variables NoDom, NoFest, ListaFest
            ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaSubida, LocFechaBajada, NoDom, noFest, ListaFest);
            CdMemoraContratos.FieldByName('NoDomingos').AsInteger := noDom;
            CdMemoraContratos.FieldByName('NoFestivos').AsInteger := noFest;

            LocDomingos := CdMemoraContratos.FieldByName('NoDomingos').AsInteger;
            LocFestivos := CdMemoraContratos.FieldByName('NoFestivos').AsInteger;

            //Buscar el Salario Correspondiente y devolverlo en la variable SDCorrespondiente
            if zCargo.Locate('IdCargo', CdMemoraContratos.FieldByName('IdCargo').AsInteger, []) then
            begin
              if Not zCargo.FieldByName('IdRangoSalarios').IsNull then
              begin
                LocRangoPuesto := zCargo.FieldByName('IdRangoSalarios').AsInteger;
                try
                  setSalarios(LocRangoPuesto, -9, LocDomingos, LocFestivos, SDCorrespondiente,False);
                Except
                  MessageDlg('No se encontraron Rangos de Salario en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
                end;
              end
              Else if Not zCargo.FieldByName('IdSalario').IsNull then
              begin
                LocRangoPuesto := zCargo.FieldByName('IdSalario').AsInteger;
                try
                  setSalarios(-9, LocRangoPuesto, LocDomingos, LocFestivos, SDCorrespondiente,False);
                Except
                  MessageDlg('No se encontraron Salarios en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
                end;
              end;

              //Establecer el Salario Correspondiente
              SDICorrespondiente := CalcularSDI(SDCorrespondiente);
            end
            else
            begin
              SDCorrespondiente := 0;
              SDICorrespondiente := 0;
            end;
            cdMemoraContratos.Edit;
            CdMemoraContratos.FieldByName('SalarioDiario').AsFloat := SDCorrespondiente;
            CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat := SDICorrespondiente;
            CdMemoraContratos.Post;
          end;
          CdMemoraContratos.Next;
        end;
      end;
    end;
  finally
    Screen.Cursor := Cursor;
  end;
end;


procedure TFrmWizardGroup.setDepartamentos;
procedure editarDeptos;
begin
  try
    CdMemoraContratos.AfterScroll := nil;
    CdMemoraContratos.AfterPost := nil;
    if (CdMemoraContratos.Active) and (FrxCdMemoriaContratos.RecordCount > 0) then
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('IdDepartamento').AsInteger := zDepartamentos.FieldByName('IdDepartamento').AsInteger;
      CdMemoraContratos.FieldByName('TituloDepartamento').AsString := zDepartamentos.FieldByName('TituloDepartamento').AsString;
      CdMemoraContratos.Post;
    end;
  finally
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
  end;
end;
begin
  if (CxChkBoxTodos.Checked) and (MessageDlg('¿Está seguro que desea aplicar esta configuración a todos los seleccionados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if CxGridDatos.ActiveLevel = CxLevelDeptos then
    begin
      CdMemoraContratos.First;
      while Not CdMemoraContratos.Eof do
      begin
        if CdMemoraContratos.FieldByName('Incluir').AsBoolean = true then
          editarDeptos;
        CdMemoraContratos.Next;
      end;
    end;
  end
  else
    editarDeptos;
end;

procedure TFrmWizardGroup.setEnabledGrid(Enabled: Boolean);
begin

end;

procedure TFrmWizardGroup.SetFechasContrato;
var
  LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaSubida, LocFechaBajada: TDate;
  NoDom, NoFest: Integer;
  ListaFest: String;
begin
  if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    CdMemoraContratos.First;
    while Not CdMemoraContratos.Eof do
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime := zPGuardias.FieldByName('FechaInicio').AsDateTime;
      CdMemoraContratos.FieldByName('FechaBaja').AsDateTime := zPGuardias.FieldByName('FechaTermino').AsDateTime;

      //ubicar fechas para conocer el número de domingos y festivos que se pagaran
      LocFechaInicioGuardia := zPGuardias.FieldByName('FechaInicio').AsDateTime;
      LocFechaFinGuardia := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      LocFechaSubida := CdMemoraContratos.FieldByName('FechaMovimiento').AsDateTime;
      LocFechaBajada := CdMemoraContratos.FieldByName('FechaBaja').AsDateTime;
      //Asignar los valores ubicados para que nos devuelva en las variables NoDom, NoFest, ListaFest
      ContarFestivos(LocFechaInicioGuardia, LocFechaFinGuardia, LocFechaSubida, LocFechaBajada, NoDom, noFest, ListaFest);
      CdMemoraContratos.FieldByName('NoDomingos').AsInteger := noDom;
      CdMemoraContratos.FieldByName('NoFestivos').AsInteger := noFest;

      CdMemoraContratos.Post;
      CdMemoraContratos.Next;
    end;
  end;
end;

procedure TFrmWizardGroup.SetNullCargos;
begin
  if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    CdMemoraContratos.First;
    while Not CdMemoraContratos.Eof do
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('IdCargo').Clear;
      CdMemoraContratos.FieldByName('TituloCargo').Clear;
      CdMemoraContratos.Post;
      CdMemoraContratos.Next;
    end;
  end;
end;

procedure TFrmWizardGroup.SetNullContratos;
begin
  if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    CdMemoraContratos.First;
    while Not CdMemoraContratos.Eof do
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('FechaMovimiento').Clear;
      CdMemoraContratos.FieldByName('FechaBaja').Clear;
      CdMemoraContratos.Post;
      CdMemoraContratos.Next;
    end;
  end;
end;

procedure TFrmWizardGroup.SetNullFrentes;
begin
  if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    CdMemoraContratos.First;
    while Not CdMemoraContratos.Eof do
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('NombreOrganizacion2').Clear;
      CdMemoraContratos.FieldByName('IdOrganizacion2').Clear;
      CdMemoraContratos.Post;
      CdMemoraContratos.Next;
    end;
  end;
end;

procedure TFrmWizardGroup.setNullOrganizacion;
begin
  if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    CdMemoraContratos.First;
    while Not CdMemoraContratos.Eof do
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('IdOrganizacion').Clear;
      CdMemoraContratos.FieldByName('NombreOrganizacion').Clear;
      CdMemoraContratos.Post;
      CdMemoraContratos.Next;
    end;
  end;
end;

procedure TFrmWizardGroup.setNullSalarios;
begin
   if (CdMemoraContratos.Active) and (CdMemoraContratos.RecordCount > 0) then
  begin
    CdMemoraContratos.First;
    while Not CdMemoraContratos.Eof do
    begin
      CdMemoraContratos.Edit;
      CdMemoraContratos.FieldByName('SalarioDiario').Clear;
      CdMemoraContratos.FieldByName('SalarioIntegrado').Clear;
      CdMemoraContratos.Post;
      CdMemoraContratos.Next;
    end;
  end;
end;

procedure TFrmWizardGroup.setPuestos;
procedure editarPuestos;
var
  LocRangoPuesto: Integer;
  LocDomingos: Integer;
  LocFestivos: Integer;
  SDCorrespondiente: Real;
  SDICorrespondiente: Real;
begin
  CdMemoraContratos.AfterScroll := nil;
  CdMemoraContratos.AfterPost := Nil;
  try
    SDCorrespondiente := 0;
    CdMemoraContratos.Edit;
    CdMemoraContratos.FieldByName('IdCargo').AsInteger := zCargo.FieldByName('IdCargo').AsInteger;
    CdMemoraContratos.FieldByName('TituloCargo').AsString := zCargo.FieldByName('TituloCargo').AsString;

    //Localizar los domingos del empleado seleccionado
    //Debido a que cada uno puede tener una configuración diferente.
    LocDomingos := CdMemoraContratos.FieldByName('NoDomingos').AsInteger;
    LocFestivos := CdMemoraContratos.FieldByName('NoFestivos').AsInteger;

    //Buscar el Salario Correspondiente y devolverlo en la variable SDCorrespondiente
    if Not zCargo.FieldByName('IdRangoSalarios').IsNull then
    begin
      LocRangoPuesto := zCargo.FieldByName('IdRangoSalarios').AsInteger;
      try
        setSalarios(LocRangoPuesto, -9, LocDomingos, LocFestivos, SDCorrespondiente,False);
      Except
        MessageDlg('No se encontraron Rangos de Salario en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
      end;
    end
    Else if Not zCargo.FieldByName('IdSalario').IsNull then
    begin
      LocRangoPuesto := zCargo.FieldByName('IdSalario').AsInteger;
      try
        setSalarios(-9, LocRangoPuesto, LocDomingos, LocFestivos, SDCorrespondiente,False);
      Except
        MessageDlg('No se encontraron Salarios en '+IntToStr(YearOf(zPGuardias.FieldByName('FechaTermino').AsDateTime))+' para el puesto establecido[' + cdMemoraContratos.FieldByName('TituloCargo').asString + ']', mtInformation, [mbOK], 0);
      end;
    end;

    //Establecer el Salario Correspondiente
    SDICorrespondiente := CalcularSDI(SDCorrespondiente);
    CdMemoraContratos.FieldByName('SalarioDiario').AsFloat := SDCorrespondiente;
    CdMemoraContratos.FieldByName('SalarioIntegrado').AsFloat := SDICorrespondiente;
    CdMemoraContratos.Post;
  finally
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
    CdMemoraContratos.AfterPost := CdMemoraContratosAfterPost;
  end;
end;
begin
  if (CxChkBoxTodos.Checked) and (MessageDlg('¿Está seguro que desea aplicar esta configuración a todos los seleccionados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if CxGridDatos.ActiveLevel = CxLevelPuestos then
    begin
      CdMemoraContratos.First;
      while Not CdMemoraContratos.Eof do
      begin
        if CdMemoraContratos.FieldByName('Incluir').AsBoolean = true then
          editarPuestos;
        CdMemoraContratos.Next;
      end;
    end;
  end
  else
    editarPuestos;
end;

procedure TFrmWizardGroup.setRangoFechas(Inicio, Termino: TDate);
begin
  TcxDateEdit(CxColumnContratacion.Properties).Properties.MaxDate := Inicio;
  TcxDateEdit(CxColumnContratacion.Properties).Properties.MinDate := Termino;
  TcxDateEdit(CxColumnBaja.Properties).Properties.MaxDate := Inicio;
  TcxDateEdit(CxColumnBaja.Properties).Properties.MinDate := Termino;
end;

procedure TFrmWizardGroup.setSalarios(IdRangoSalario: Integer; IdSalario: Integer; NoDomingos: Integer; NoFestives: Integer; var SD: Real; Todos: Boolean);
var
  cadenaFilter: string;
begin
  try
    //Si no has cargado nada haslo
    if (Not zSalarios.Active) then
    begin
      zSalarios.Close;
      zSalarios.Connection := connection.zConnection;
      zSalarios.Params.ParamByName('IdOrganizacion').AsInteger := CxCbbOrganizacion.EditValue;
      zSalarios.Params.ParamByName('fechaAplicacion').AsDate   := zPGuardias.FieldByName('FechaTermino').AsDateTime;
      zSalarios.Params.ParamByName('AnioAplicacion').AsInteger := -1;
      zSalarios.Open;
    end;
    //Si no nos regresa Id en El Rango de Salarios o Salario Fijo
    if (IdRangoSalario <> -9) or (IdSalario <> -9) then
    begin
      //Setear la cadena a buscar, o bien por rango o por IdSalario
      if IdRangoSalario <> -9 then
        cadenaFilter := 'IdRangoSalarios = ' + QuotedStr(VarToStr(IdRangoSalario))
      else if IdSalario <> -9 then
        cadenaFilter := 'IdSalario = ' + VarToStr(IdSalario);
      //Validamos que tenga registros y el Dataset se ecnuentre activo
      if (zSalarios.Active) and (zSalarios.RecordCount > 0) then
      begin
        try
          zSalarios.Filtered := False;
          //Si todos está en verdadero entonces es por que voy a lanzar una ventana de selección,
          //Sino que el usuario se joda y tome el determinado por el sistema
          if (Todos = False) and (idRangoSalario <> -9) then
            zSalarios.Filter := cadenaFilter +  ' and Domingos = ' + QuotedStr(VarToStr(NoDomingos)) + ' and Festivos = ' + QuotedStr(VarToStr(NoFestives))
          else
            zSalarios.Filter := cadenaFilter;

          zSalarios.Filtered := True;
          //Devolver el Salario correspondiente al empleado
          if zSalarios.Recordcount >= 1 then
            SD := zSalarios.FieldbyName('Salario').asFloat
          else if zSalarios.RecordCount = 0 then
            raise exception.create('***');

        Finally //Y por si la cago jajajaja
          zSalarios.Filtered := False;
        end;
      end;
    end;
  except
    raise;
  end;
end;

procedure TFrmWizardGroup.tmrMSGTimer(Sender: TObject);
begin
  fForm.Close;
  tmrMSG.Enabled := False;
end;

function TFrmWizardGroup.ValidaPagina(Pagina: TAdvSmoothPage): Boolean;
var
  continua: Boolean;
begin
  if Not creandoForm then
  begin
    if Pagina = AdvPageOrganizacion  then
    begin
      if (CxCbbOrganizacion.EditValue = null) and (CxCbbOrganizacion.ItemIndex = -1) then
      begin
        MessageDlg('Debe seleccionar al menos un elemento de la lista de organizacion.', mtInformation, [mbOK], 0);
        if CxCbbOrganizacion.CanFocus then
          CxCbbOrganizacion.SetFocus;

        AdvPSlider1.ActivePage := AdvPageOrganizacion;
        Result := False;
        Exit;
      end
      else
        Result := True;

      if (CxCbbFrentes.EditValue = null) and (CxCbbFrentes.ItemIndex = -1) then
      begin
        MessageDlg('Debe seleccionar al menos un elemento de la lista de los Frentes o bien seleccionar <ASIGNAR A LA EMPRESA PRINCIPAL>, si no se desea asignar algún frente.', mtInformation, [mbOK], 0);
        if CxCbbFrentes.CanFocus then
          CxCbbFrentes.SetFocus;

        AdvPSlider1.ActivePage := AdvPageOrganizacion;
        Result := False;
        Exit;
      end
      else
        Result := True;
    end;

    if Pagina = AdvPageTipoNomina then
    begin
      if (CxCbbTipoNomina.EditValue = Null) and (CxCbbTipoNomina.ItemIndex = -1) then
      begin
        MessageDlg('Debe seleccionar al menos un tipo de Nómina de la lista.', mtInformation, [mbOK], 0);
        if CxCbbTipoNomina.CanFocus then
          CxCbbTipoNomina.SetFocus;

        AdvPSlider1.ActivePage := AdvPageTipoNomina;
        Result := False;
        Exit;
      end
      else
        Result := True;
    end;

    if Pagina = AdvPageGuardias then
    begin
      if (CxCbbGuardias.EditValue = Null) and (CxCbbGuardias.ItemIndex = -1) then
      begin
        MessageDlg('Debe seleccionar al menos una Guardia* de la lista.', mtInformation, [mbOK], 0);
        if CxCbbGuardias.CanFocus then
          CxCbbGuardias.SetFocus;

        AdvPSlider1.ActivePage := AdvPageGuardias;
        Result := False;
        Exit;
      end
      else
        Result := True;

      if (CxCbbPeriodoGuardia.EditValue = Null) and (CxCbbPeriodoGuardia.ItemIndex = -1) then
      begin
        MessageDlg('Debe seleccionar al menos un Periodo de Guardia* de la lista.', mtInformation, [mbOK], 0);
        if CxCbbPeriodoGuardia.CanFocus then
          CxCbbPeriodoGuardia.SetFocus;

        AdvPSlider1.ActivePage := AdvPageGuardias;
        Result := False;
        Exit;
      end
      else
        Result := True;
    end;
  end;
end;

function TFrmWizardGroup.validarContratos: Boolean;
var
  i: Integer;
  Errores: string;
  Procede: Boolean;
begin
   Procede := True;
  //Si hay cuadro de validaciones
  CdMemoraContratos.AfterPOst := nil;
  CdMemoraContratos.AfterScroll := nil;
  try
    if Assigned(ListaCampos) and (ListaCampos.Count > 0) then
    begin
      if (CdMemoraContratos.Active)  and (CdMemoraContratos.RecordCount > 0) then
      begin
        CdMemoraContratos.first;
        //Validar solo los seleccionados
        while Not CdMemoraContratos.Eof do
        begin
          if CdMemoraContratos.FieldByName('Incluir').AsBoolean = True then
          begin
            Errores := '';
            for I := 0 to ListaCampos.Count - 1 do
            begin
              //Si hay error por parte del usuario... listamelos para cagarlo
              If CdMemoraContratos.FieldByName(ListaCampos[i]).IsNull then
                Errores := Errores + 'No se asignó el siguiente valor [' + ListaTituloCampos[i] + ']' + #10#13;
            end;

            //Si hay errores lo guardamos en memorio para poder mostrarselos
            if Length(Trim(Errores)) > 0 then
            begin
              CdMemoraContratos.Edit;
              CdMemoraContratos.FieldByName('Estatus').AsString := 'Error';
              CdMemoraContratos.FieldByName('Errores').AsString := Errores;
              CdMemoraContratos.Post;
              Procede := False;
            end
            else
            begin
              CdMemoraContratos.Edit;
              CdMemoraContratos.FieldByName('Estatus').AsString := 'OK!';
              CdMemoraContratos.FieldByName('Errores').AsString := 'Datos correctos de contratación.';
              CdMemoraContratos.Post;
            end;
          end;
          CdMemoraContratos.Next;
        end;
        YaValidado := True;
        CxColumnEstatus.Visible := True;
      end;
    end;
  finally
    Result := Procede;

    //if procede then
      //MessageDlg('La información del personal seleccionado no contiene errores, puede proceder a contratar.', mtInformation, [mbOK], 0);

    CdMemoraContratos.AfterPOst := CdMemoraContratosAfterPost;
    CdMemoraContratos.AfterScroll := CdMemoraContratosAfterScroll;
  end;
end;

end.
