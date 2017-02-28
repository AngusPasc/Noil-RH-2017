unit frm_ImprimeContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, frm_ConfiguracionRH,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  AdvGlowButton, frxClass, Global, DateUtils, Utilerias, masUtilerias, frxDBSet,
  StdCtrls, frm_connection, UDbGrid, frm_barra, Mask, rxToolEdit, RXDBCtrl,
  DBCtrls, ExtCtrls, ExtDlgs, RxMemDS, DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,  cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FormAutoScaler, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, frm_estimaciones, Math, Func_Genericas,
  frxExportPDF, dxBarBuiltInMenu, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  cxPC, RxRichEd, rxDBRichEd, cxRichEdit, cxDBRichEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  dxLayoutcxEditAdapters, cxCheckBox, dxLayoutContainer, cxCalc, dxLayoutControl;

type
  TfrmImprimeContratos = class(TForm)
    dszQEmpleados: TDataSource;
    frxContratos: TfrxReport;
    frx_ReporteEmpleados: TfrxDBDataset;
    zqEmpresa: TZQuery;
    zqEmpresasNombre: TStringField;
    zqEmpresasNombreCorto: TStringField;
    zqEmpresasRfc: TStringField;
    zqEmpresasDireccion1: TStringField;
    zqEmpresasDireccion2: TStringField;
    zqEmpresasDireccion3: TStringField;
    zqEmpresasSlogan: TStringField;
    zqEmpresasPiePagina: TStringField;
    zqEmpresabImagen: TBlobField;
    zqEmpresasTelefono: TStringField;
    zqEmpresasFax: TStringField;
    zqEmpresasEmail: TStringField;
    zqEmpresasWeb: TStringField;
    zqEmpresasRepresentante: TStringField;
    zqEmpresasFirmante2: TStringField;
    zqEmpresasFirmante3: TStringField;
    frxDBDEmpresa: TfrxDBDataset;
    zqEmpresasCiudad: TStringField;
    zqHistorial: TZQuery;
    ds_historialcontrato: TDataSource;
    Panel5: TPanel;
    btnImprimeContratoTierra: TAdvGlowButton;
    cmdImprimeContrato: TAdvGlowButton;
    PanelFiltro: TGroupBox;
    Splitter1: TSplitter;
    frxReglamentosPlataforma: TfrxReport;
    qryFlEstatus: TZReadOnlyQuery;
    StringField1: TStringField;
    qryFlEstatusiIdEstatus: TLargeintField;
    ds_flEstatus: TDataSource;
    frxDBHistorialContrato: TfrxDBDataset;
    OpenPictureDialog1: TOpenPictureDialog;
    zQEmpleados: TZQuery;
    zQEmpleadosIdPersonal: TIntegerField;
    zQEmpleadossIdEmpleado: TStringField;
    d: TIntegerField;
    zQEmpleadossNombreCompleto: TStringField;
    zQEmpleadossRfc: TStringField;
    zQEmpleadossCiudad: TStringField;
    zQEmpleadossTelefono: TStringField;
    zQEmpleadosseMail: TStringField;
    zQEmpleadosdSueldo: TFloatField;
    zQEmpleadossCuenta: TStringField;
    zQEmpleadossCuentaInterbancaria: TStringField;
    zQEmpleadossCurp: TStringField;
    zQEmpleadossImss: TStringField;
    zQEmpleadossEstadoCivil: TStringField;
    zQEmpleadosdFechaNacimiento: TDateField;
    zQEmpleadosiId_Puesto: TIntegerField;
    zQEmpleadossLibretaMar: TStringField;
    zQEmpleadossCartilla: TStringField;
    zQEmpleadossCedulaProfesional: TStringField;
    zQEmpleadossLugarNacimiento: TStringField;
    zQEmpleadossTipoSangre: TStringField;
    zQEmpleadoslImprimeNomina: TStringField;
    zQEmpleadoslSexo: TStringField;
    zQEmpleadosiIdhorario: TIntegerField;
    zQEmpleadosidorganizacion: TIntegerField;
    zQEmpleadossCP: TStringField;
    zQEmpleadossApellidoPaterno: TStringField;
    zQEmpleadossApellidoMaterno: TStringField;
    zQEmpleadossNoCreditoInfonavit: TStringField;
    zQEmpleadosiIdProfesiones: TIntegerField;
    zQEmpleadosid_entidadeseducativas: TIntegerField;
    zQEmpleadossTelefonoCelular: TStringField;
    zQEmpleadossNombre_Emergencia: TStringField;
    zQEmpleadossParentesco_Emergencia: TStringField;
    zQEmpleadossNumero_Emergencia: TStringField;
    zQEmpleadosiIdRegistroPatronal: TIntegerField;
    zQEmpleadosiIdPeriodo: TIntegerField;
    zQEmpleadosiIdDiasdescanso: TIntegerField;
    zQEmpleadosprofesion: TStringField;
    qryEmpleados: TZReadOnlyQuery;
    qryEmpleadosIdPersonal: TIntegerField;
    qryEmpleadossIdEmpleado: TStringField;
    qryEmpleadosiIdEstatus: TIntegerField;
    qryEmpleadossNombreCompleto: TStringField;
    qryEmpleadossRfc: TStringField;
    qryEmpleadossCiudad: TStringField;
    qryEmpleadossTelefono: TStringField;
    qryEmpleadosseMail: TStringField;
    qryEmpleadosdSueldo: TFloatField;
    qryEmpleadossCuenta: TStringField;
    qryEmpleadossCuentaInterbancaria: TStringField;
    qryEmpleadossCurp: TStringField;
    qryEmpleadossImss: TStringField;
    qryEmpleadossEstadoCivil: TStringField;
    qryEmpleadosdFechaNacimiento: TDateField;
    qryEmpleadosiId_Puesto: TIntegerField;
    qryEmpleadossLibretaMar: TStringField;
    qryEmpleadossCartilla: TStringField;
    qryEmpleadossCedulaProfesional: TStringField;
    qryEmpleadossLugarNacimiento: TStringField;
    qryEmpleadossTipoSangre: TStringField;
    qryEmpleadoslImprimeNomina: TStringField;
    qryEmpleadoslSexo: TStringField;
    qryEmpleadosiIdhorario: TIntegerField;
    qryEmpleadossStatus: TStringField;
    qryEmpleadosidorganizacion: TIntegerField;
    qryEmpleadosiIdEstatusDiario: TIntegerField;
    qryEmpleadossCP: TStringField;
    qryEmpleadossApellidoPaterno: TStringField;
    qryEmpleadossApellidoMaterno: TStringField;
    qryEmpleadossNoCreditoInfonavit: TStringField;
    qryEmpleadosiIdProfesiones: TIntegerField;
    qryEmpleadosid_entidadeseducativas: TIntegerField;
    qryEmpleadossTelefonoCelular: TStringField;
    qryEmpleadossNombre_Emergencia: TStringField;
    qryEmpleadossParentesco_Emergencia: TStringField;
    frx_zqEmpleados: TfrxDBDataset;
    rxNomina: TRxMemoryData;
    frxNomina: TfrxDBDataset;
    rxNominaSueldo: TFloatField;
    rxNominaPrimaDom: TFloatField;
    rxNominaDiaFestivo: TFloatField;
    rxNominaVacaciones: TFloatField;
    rxNominaPrimaVac: TFloatField;
    rxNominaAguinaldo: TFloatField;
    rxNominaDeducciones: TFloatField;
    rxNominaNeto: TFloatField;
    ds_Guardias: TDataSource;
    zq_Guardias: TZQuery;
    zq_GuardiasiIdGuardia: TIntegerField;
    zq_GuardiassIdFolio: TStringField;
    zq_GuardiassObservaciones: TStringField;
    zq_GuardiasdFechaInicial: TDateField;
    zq_GuardiasdFechaFinal: TDateField;
    zQEmpleadossStatusTipoPersonal: TStringField;
    zQEmpleadossStatusPersonal: TStringField;
    frxdbdsEmpleado: TfrxDBDataset;
    zqryEmpleados: TZQuery;
    zqryEmpleadosiIdGuardiaMovtos: TIntegerField;
    zqryEmpleadosiIdGuardia: TIntegerField;
    zqryEmpleadossIdEmpleado: TStringField;
    zqryEmpleadosdFechaSubida: TDateField;
    zqryEmpleadosdFechaBajada: TDateField;
    zqryEmpleadossObservaciones: TStringField;
    zqryEmpleadossIdPlataforma: TStringField;
    zqryEmpleadossNumeroOrden: TStringField;
    zqryEmpleadossIdPernocta: TStringField;
    zqryEmpleadossContrato: TStringField;
    zqryEmpleadossStatus: TStringField;
    zqryEmpleadossComentario: TStringField;
    zqryEmpleadosID_GuardiaPeriodo: TIntegerField;
    zqryEmpleadosNombreCompleto: TStringField;
    zqryEmpleadossIdFolio: TStringField;
    zqryEmpleadosDescripcion_Pernocta: TStringField;
    zqryEmpleadosDescripcion_Plataforma: TStringField;
    zqryEmpleadosdias_trabajados: TIntegerField;
    zqryEmpleadosiId_Puesto: TIntegerField;
    zqryEmpleadossTranferido: TStringField;
    zqryEmpleadosReprogramacion: TDateField;
    zqryEmpleadossConfirmado: TStringField;
    zqryEmpleadossStatusPersonal: TStringField;
    zqryEmpleadossPuesto: TStringField;
    zqryEmpleadoscontratado: TStringField;
    zqryEmpleadosPagado: TStringField;
    zqryEmpleadossProgramado: TStringField;
    zqryEmpleadossStatusTipoPersonal: TStringField;
    zqryEmpleadosPagado_Todo: TStringField;
    AdvRecibo: TAdvGlowButton;
    cdBuscar: TZQuery;
    cdDetalleSave: TZQuery;
    cdPersonalDetalleNomina: TZQuery;
    cdConcepto: TZQuery;
    FDSBuscar: TfrxDBDataset;
    FDSPersonalDetalleNomina: TfrxDBDataset;
    FDSGenerales: TfrxDBDataset;
    FDSPercepciones: TfrxDBDataset;
    FDSDeducciones: TfrxDBDataset;
    memPercepciones: TClientDataSet;
    memDeducciones: TClientDataSet;
    cdDetalleNom: TZQuery;
    cdDetalleNomImporte: TFloatField;
    fsc_1: TFormAutoScaler;
    zqHistorialiIdContrato: TIntegerField;
    zqHistorialsIdEmpleado: TStringField;
    zqHistorialdFechaInicio: TDateField;
    zqHistorialdFechaTermino: TDateField;
    zqHistorialsTipoContrato: TStringField;
    zqHistorialsPeriodoLaboral: TStringField;
    zqHistorialsIdGuardia: TStringField;
    zqHistorialID_PeriodoGuardia: TIntegerField;
    rxNominaHorasExtra: TFloatField;
    zQEmpleadossCalle: TStringField;
    zQEmpleadossNumero: TStringField;
    zQEmpleadossColonia: TStringField;
    zQEmpleadossEstado: TStringField;
    qryEmpleadosiddepartamento: TIntegerField;
    lbl1: TLabel;
    cmbOrganizacion: TDBLookupComboBox;
    QryOrganizacion: TZReadOnlyQuery;
    ds_organizacion: TDataSource;
    strngfldFolioQEmpleadossDescripcion: TStringField;
    zqryContratosPagados: TZQuery;
    IdEmpleadoContratosPagadosiIdContrato: TIntegerField;
    strngfldFolioContratosPagadossIdEmpleado: TStringField;
    IdEmpleadoContratosPagadosIdFormaPago: TIntegerField;
    zQEmpleadosiIdNacionalidad: TIntegerField;
    zQEmpleadossBanco: TStringField;
    cbbReporte: TComboBox;
    lblContrato: TLabel;
    strngfldQEmpleadossSucursal: TStringField;
    strngfldQEmpleadostitulocargo: TStringField;
    fltfldQEmpleadosimporte: TFloatField;
    zQEmpleadosdSueldoIntegrado: TFloatField;
    qryEmpleadosdSueldoIntegrado: TFloatField;
    mResponsabildiad: TDBMemo;
    zqHistorialmResponsabilidad: TMemoField;
    btnEdit: TAdvGlowButton;
    btnPost: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    Label1: TLabel;
    tsPuesto: TDBLookupComboBox;
    zq_Puestos: TZQuery;
    ds_Puestos: TDataSource;
    frx_R_puesto: TfrxDBDataset;
    zq_Puestosidcargo: TIntegerField;
    zq_PuestosIdTipoNomina: TIntegerField;
    zq_PuestosIdOrganizacion: TIntegerField;
    zq_Puestoscodigocargo: TStringField;
    zq_Puestostitulocargo: TStringField;
    zq_Puestosnivel: TIntegerField;
    zq_PuestosIdSalario: TIntegerField;
    zq_PuestosJornada: TIntegerField;
    zq_PuestosCobraFestivos: TStringField;
    zq_Puestosiddocumentos: TStringField;
    zq_PuestosGrupo: TStringField;
    zq_PuestosIdRangoSalarios: TIntegerField;
    zq_PuestosActivo: TStringField;
    zq_PuestosmResponsabilidad: TMemoField;
    zq_PuestosDescripcion: TStringField;
    fltfldQEmpleadosdSueldoDiario: TFloatField;
    frxPDFExport1: TfrxPDFExport;
    zqFormatoDocto: TZReadOnlyQuery;
    ds_formatoDocto: TDataSource;
    zqFormatoDoctoid_catalogoitemschecklist_doctos: TIntegerField;
    zqFormatoDoctosDescripcion: TStringField;
    cxTipoDocumento: TcxDBLookupComboBox;
    Label2: TLabel;
    zqHistorialid_catalogoitemschecklist_doctos: TIntegerField;
    zqFormatoDoctosTipoPersonal: TIntegerField;
    zqFormatoDoctosTipoDocumento: TStringField;
    zqFormatoDoctobFormato: TBlobField;
    zqFormatoDoctosNombreFormato: TStringField;
    zqFormatoDoctosExt: TStringField;
    cxPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrdEmpleados: TcxGrid;
    G_Empleados: TcxGridDBTableView;
    cxgrdbclmnG_EmpleadossIdEmpleado1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossNombreCompleto1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossApellidoPaterno1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossApellidoMaterno1: TcxGridDBColumn;
    Glv_EmpleadosGrid1Level1: TcxGridLevel;
    RxDBGrid1: TcxGrid;
    cxViewHistorial: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    zqHistorialsNombreCompleto: TStringField;
    zqHistorialsApellidoPaterno: TStringField;
    zqHistorialsApellidoMaterno: TStringField;
    PopupMenu1: TPopupMenu;
    ImprimeTodoslosContratos1: TMenuItem;
    ReglamentoPlataforma1: TMenuItem;
    dxLViaticosGroup_Root: TdxLayoutGroup;
    dxLViaticos: TdxLayoutControl;
    cxViaticoMonto: TcxCalcEdit;
    dxLViaticosItem1: TdxLayoutItem;
    cxViaticoAutoriza: TcxTextEdit;
    dxLViaticosItem2: TdxLayoutItem;
    cxViaticoAplica: TcxCheckBox;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    zqHistorialdFechaSubida: TDateField;
    zqHistorialdFechaBajada: TDateField;
    zqHistorialTotal: TLargeintField;
    ImprimeSelccionado1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnImprimeContratoTierraClick(Sender: TObject);
    procedure frxContratosGetValue(const VarName: string; var Value: Variant);
    procedure cmdImprimeContratoClick(Sender: TObject);
    procedure tsFiltraEmpleadosKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tsFiltraEmpleadosEnter(Sender: TObject);
    procedure tsFiltraEmpleadosExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure frmBarra4btnDeleteClick(Sender: TObject);
    procedure frmBarra4btnRefreshClick(Sender: TObject);
    procedure zQEmpleadosAfterScroll(DataSet: TDataSet);
    procedure frmBarra4btnExitClick(Sender: TObject);
    //procedure cbTipoPersonalChange(Sender: TObject);
    procedure AdvReciboClick(Sender: TObject);
    procedure cdPersonalDetalleNominaAfterScroll(DataSet: TDataSet);
    procedure obtenerneto(trb: Variant);
    procedure cmbOrganizacionCloseUp(Sender: TObject);
    procedure G_EmpleadosCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure imprimirFiniquito;
    procedure ds_organizacionDataChange(Sender: TObject; Field: TField);
    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ActualizaResponsabilidad;
    procedure cmdEditarContratoClick(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure zq_GuardiasAfterScroll(DataSet: TDataSet);
    procedure zqHistorialAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxViewHistorialCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ImprimeTodoslosContratos1Click(Sender: TObject);
    procedure ReglamentoPlataforma1Click(Sender: TObject);
    procedure cxViaticoAplicaClick(Sender: TObject);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure ImprimeSelccionado1Click(Sender: TObject);
  private
    NetoPagar: Real;
    cdGenerales: TClientDataSet;
    YaCreado: Boolean;
    IsOpen, lSalto :Boolean;
    { Private declarations }
  public
    { Public declarations }
    FechaSubida : string;
  end;

var
  frmImprimeContratos: TfrmImprimeContratos;
  periodocontrato : integer;
  utgrid:ticdbgrid;
  fechaBaja : Tdate;
  NumRec: Integer;
  Cadena: String;
  sueldot: Extended;
  sd,sueldocalculado: Double;
  sArchivo : string;
  function Parte(Indice: Integer; Cadena: String): String;


implementation

{$R *.dfm}

procedure TfrmImprimeContratos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmImprimeContratos.EnterControl(Sender: TObject);
begin
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_entradaERP;
end;


procedure TfrmImprimeContratos.SalidaControl(Sender: TObject);
begin
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;


procedure TfrmImprimeContratos.cmdImprimeContratoClick(Sender: TObject);
var
iGr,count:Integer;
svPlace:TBookmark;
empl: string;
docto : Variant;
begin

  try
    GetTempPath(SizeOf(global_TempPath), global_TempPath);
    zqFormatoDocto.Locate('id_catalogoitemschecklist_doctos', zqHistorial.FieldByName('id_catalogoitemschecklist_doctos').AsInteger, [] );
    sArchivo := global_TempPath +  copy(zqFormatoDocto.FieldByName('sNombreFormato').AsString, 0, pos('.',zqFormatoDocto.FieldByName('sNombreFormato').AsString))+ 'rtf';
    if Not FileExists(sArchivo) then
    begin
       TBlobField(zqFormatoDocto.FieldByName('bFormato')).SaveToFile(sArchivo);
    end;
  except
  end;

  FechaSubida := DateToStr( zqHistorial.fieldByName('dFechaInicio').AsDateTime);
  obtenerneto(zQEmpleados.FieldByName('sIdEmpleado').AsString);
  frx_ReporteEmpleados.DataSet := zQEmpleados;

  if connection.contrato.FieldByName('sContrato').AsString = 'UTIDEL' then
  begin
    if not FileExists(global_files + global_miReporte + '_Contratos_ABordo.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_Contratos_ABordo.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

    frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordo.fr3') ;
    frxContratos.ShowReport();

  end
  else
  begin

    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin

      if cbbReporte.ItemIndex = 1 then
      begin
           if not FileExists(global_files + global_miReporte + '_Contratos_ABordoB.fr3') then
       begin
         showmessage('El archivo de reporte '+global_Mireporte+'_Contratos_ABordoB.fr3 no existe, notifique al administrador del sistema');
         exit;
        end;

        frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordoB.fr3') ;
        frxContratos.ShowReport();
      end else if cbbReporte.ItemIndex = 0 then
      begin
           if not FileExists(global_files + global_miReporte + '_Contratos_ABordoB2.fr3') then
         begin
           showmessage('El archivo de reporte '+global_Mireporte+'_Contratos_ABordoB2.fr3 no existe, notifique al administrador del sistema');
           exit;
          end;

        frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordoB2.fr3') ;
        frxContratos.ShowReport();
      end;

    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
         if not FileExists(global_files + global_miReporte + '_Contratos_ABordoB3.fr3') then
        begin
          showmessage('El archivo de reporte '+global_Mireporte+'_Contratos_ABordoB3.fr3 no existe, notifique al administrador del sistema');
           exit;
         end;
      frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordoB3.fr3') ;
      frxContratos.ShowReport();
    end;
  end;
end;

procedure TfrmImprimeContratos.AdvReciboClick(Sender: TObject);
var
  i : Integer;
  QrDatos : TzReadOnlyQuery;
  filtro : string;
begin
   if cxPage.ActivePageIndex = 0 then
   begin
      if not FileExists(global_files + global_miReporte + '_ReporteViaticos.fr3') then
      begin
          showmessage('El archivo de reporte '+global_Mireporte+'_ReporteViaticos.fr3 no existe, notifique al administrador del sistema');
         exit;
      end;
      filtro := 'sIdEmpleado = ' + QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString);
      frmImprimeContratos.dszQEmpleados.dataset.Filtered := false;
      frmImprimeContratos.dszQEmpleados.dataset.Filter := filtro;
      frmImprimeContratos.dszQEmpleados.dataset.Filtered := true;

      frxContratos.LoadFromFile(Global_Files +global_miReporte +'_ReporteViaticos.fr3') ;
      frxContratos.ShowReport();
   end
   else
   begin
        //Imprimir los contratos a bordo en un solo reporte
        QrDatos:=TzReadOnlyQuery.Create(self);
        QrDatos.connection:=Connection.zConnection;
        QrDatos.SQL.Text:='select e.*,gm.*,nr.importe,rn.sDescripcion as nacionalidad' +
                          ',nc.titulocargo, b.sDescripcion as sBanco from empleados e' + #10 +
                          'inner join guardiasmovtos gm' + #10 +
                          'on(e.sIdEmpleado=gm.sIdEmpleado)' + #10 +
                          'inner join nuc_cargo nc' + #10 +
                          'on(gm.iId_puesto=nc.idCargo)' + #10 +
                          'left join nom_rangosalarios nr' + #10 +
                          'on(nr.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
                          'left join rh_nacionalidades rn ' +
                          'on(rn.iIdNacionalidad=e.iIdNacionalidad) ' +
                          'left join rh_bancos b on (e.sIdBanco = b.sIdBanco) '+
                          'where gm.ID_GuardiaPeriodo=:Guardia';

        QrDatos.ParamByName('Guardia').AsInteger:=zq_guardias.FieldByName('iIdguardia').asInteger;
        QrDatos.Open;

        while Not QrDatos.Eof do
        begin
          if filtro = '' then
          begin
            filtro := 'sIdEmpleado = ' + QuotedStr(QrDatos.FieldByName('sIdEmpleado').AsString);
            QrDatos.Next;
          end
          else
          begin
            filtro := filtro + ' or sIdEmpleado = ' + QuotedStr(QrDatos.FieldByName('sIdEmpleado').AsString);
            QrDatos.Next;
          end;
        end;

        frmImprimeContratos.dszQEmpleados.dataset.Filtered := false;
        frmImprimeContratos.dszQEmpleados.dataset.Filter := filtro;
        frmImprimeContratos.dszQEmpleados.dataset.Filtered := true;

        //aqui creo  esta el truco, se  pasa al  frx los  valores  de  la consulta ya  filtrados.
        frmImprimeContratos.frx_ReporteEmpleados.DataSet := frmImprimeContratos.zQEmpleados;
        frmImprimeContratos.frxContratos.LoadFromFile(Global_Files +global_miReporte +'_ReporteViaticos.fr3') ;
        frmImprimeContratos.frxContratos.ShowReport();
   end;
   frmImprimeContratos.dszQEmpleados.dataset.Filtered := false;
end;

procedure TfrmImprimeContratos.btnCancelClick(Sender: TObject);
begin
     zqHistorial.Cancel;
     btnEdit.Enabled := True;
     btnPost.Enabled := False;
     btnCancel.Enabled := False;
end;

procedure TfrmImprimeContratos.btnEditClick(Sender: TObject);
begin
    if zQhistorial.RecordCount > 0 then
    begin
        if cxPage.ActivePageIndex = 0 then
           zqHistorial.Edit
        else
           cxTipoDocumento.Enabled := False;

        btnEdit.Enabled := False;
        btnPost.Enabled := True;
        btnCancel.Enabled := True;
        cxTipoDocumento.Enabled := True;
    end;
    
end;

procedure TfrmImprimeContratos.btnImprimeContratoTierraClick(Sender: TObject);
begin
    obtenerneto(qryEmpleados.FieldValues['sIdEmpleado']);
    frx_ReporteEmpleados.DataSet := zqEmpleados;
    frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_Tierrav2.fr3') ;
    frxContratos.ShowReport() ;
end;

procedure TfrmImprimeContratos.btnPostClick(Sender: TObject);
var
   SavePlace  : TBookmark;
begin
    if cxPage.ActivePageIndex = 0 then
      zqHistorial.Post
    else
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('update historialcontrato set id_catalogoitemschecklist_doctos =:Id where iIdContrato = :Idcontrato ');
        connection.QryBusca.ParamByName('Id').AsInteger         := zqFormatoDocto.FieldByName('id_catalogoitemschecklist_doctos').AsInteger;
        connection.QryBusca.ParamByName('Idcontrato').AsInteger := zqHistorial.FieldByName('iIdContrato').AsInteger;
        connection.QryBusca.ExecSQL;

        SavePlace := cxViewHistorial.DataController.DataSource.DataSet.GetBookmark;
        zqHistorial.Cancel;
        zqHistorial.Refresh;
        Try
            cxViewHistorial.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        Except
        Else
            cxViewHistorial.DataController.DataSet.FreeBookmark(SavePlace);
        End ;
        cxTipoDocumento.Enabled := False;
    end;  

    btnEdit.Enabled := True;
    btnPost.Enabled := False;
    btnCancel.Enabled := False;
end;

procedure TfrmImprimeContratos.cdPersonalDetalleNominaAfterScroll(
  DataSet: TDataSet);
begin
  if Assigned(cdGenerales) and (cdGenerales.Active) then
    cdGenerales.Locate('IdPersonal', cdPersonalDetalleNomina.FieldByName('IdPersonal').AsInteger, []);

  memPercepciones.Filtered := False;
  memPercepciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName('IdPersonal').AsString;
  memPercepciones.Filtered := True;

  memDeducciones.Filtered := False;
  memDeducciones.Filter := 'IdPersonal = ' + cdPersonalDetalleNomina.FieldByName
    ('IdPersonal').AsString;
  memDeducciones.Filtered := True;

  // Obtener el neto a pagar por empleado
  NetoPagar := 0;
  while not memPercepciones.Eof do
  begin
    NetoPagar := NetoPagar + StrToFloat(memPercepciones.FieldByName('Importe').AsString);
    memPercepciones.Next;
  end;
  memPercepciones.First;

  while not memDeducciones.Eof do
  begin
    NetoPagar := NetoPagar - StrToFloat(memDeducciones.FieldByName('Importe').AsString);
    memDeducciones.Next;
  end;
  memDeducciones.First;

end;

procedure TfrmImprimeContratos.cmbOrganizacionCloseUp(Sender: TObject);
begin
  IsOpen:= False;
    if QryOrganizacion.FieldByName('nombreorganizacion').AsString = '<<TODAS LAS EMPRESAS>>' then
       zQEmpleados.Filtered := false
    else
    begin
      zQEmpleados.Filtered := false;
      zQEmpleados.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));
      zQEmpleados.Filtered := True;
    end;
  IsOpen:= True;
end;

procedure TfrmImprimeContratos.cmdEditarContratoClick(Sender: TObject);
begin
    if zQhistorial.RecordCount > 0 then
    begin
        zqHistorial.Edit;
        btnEdit.Enabled := False;
        btnPost.Enabled := True;
        btnCancel.Enabled := True;
    end;
end;

procedure TfrmImprimeContratos.cxViaticoAplicaClick(Sender: TObject);
begin
    if cxViaticoAplica.Checked then
    begin
       dxLViaticos.Enabled := True
    end
    else
    begin
       dxLViaticos.Enabled := False;
       cxViaticoMonto.Value := 0;
       cxViaticoAutoriza.Text := '';
    end;

end;

procedure TfrmImprimeContratos.cxViewHistorialCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if connection.contrato.FieldByName('sContrato').AsString <> 'UTIDEL' then
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin

      cbbReporte.Clear;

      cbbReporte.Items.Add('Por tiempo determinado');
      cbbReporte.Items.Add('Por tiempo indeterminado');
      cbbReporte.ItemIndex := 0;
    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
      cbbReporte.Clear;
      cbbReporte.Items.Add('Abordo');
      cbbReporte.ItemIndex := 0;
      btnImprimeContratoTierra.Enabled := False;
    end;
  end
  else
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin
      cmdImprimeContrato.Enabled := False;
    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
      btnImprimeContratoTierra.Enabled := False;
    end;
  end;
end;

procedure TfrmImprimeContratos.cxGridDBTableView2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if connection.contrato.FieldByName('sContrato').AsString <> 'UTIDEL' then
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin

      cbbReporte.Clear;

      cbbReporte.Items.Add('Por tiempo determinado');
      cbbReporte.Items.Add('Por tiempo indeterminado');
      cbbReporte.ItemIndex := 0;         
    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
      cbbReporte.Clear;
      cbbReporte.Items.Add('Abordo');
      cbbReporte.ItemIndex := 0;
      btnImprimeContratoTierra.Enabled := False;
    end;
  end
  else
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin
      cmdImprimeContrato.Enabled := False;
    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
      btnImprimeContratoTierra.Enabled := False;
    end;
  end;
end;

procedure TfrmImprimeContratos.cxPageChange(Sender: TObject);
begin
    IsOpen:=false;
    if cxPage.ActivePageIndex = 0 then
    begin
        zQHistorial.Active := False;
        zqHistorial.SQL.Clear;
        zqHistorial.SQL.Add('SELECT  h.*, '+
                    'e.sNombreCompleto, '+
                    'e.sApellidoPaterno, '+
                    'e.sApellidoMaterno, gm.dFechaSubida, gm.dFechaBajada, DATEDIFF(gm.dFechaBajada, gm.dFechaSubida)+1 as Total '+
                    'FROM historialcontrato h '+
                    'inner join empleados e on (e.sIdEmpleado = h.sIDEmpleado) '+
                    'inner join guardiasmovtos gm on (gm.ID_GuardiaPeriodo = h.ID_PeriodoGuardia and gm.sIdEmpleado = h.sIdEmpleado )');
        zqHistorial.Open;
        cxTipoDocumento.Enabled := True;
    end;

    if cxPage.ActivePageIndex = 1 then
    begin
        zq_Guardias.Active := False;
        zq_Guardias.Open;

        zQHistorial.Active := False;
        zqHistorial.SQL.Clear;
        zqHistorial.SQL.Add('SELECT  h.*, '+
                    'e.sNombreCompleto, '+
                    'e.sApellidoPaterno, '+
                    'e.sApellidoMaterno, gm.dFechaSubida, gm.dFechaBajada, DATEDIFF(gm.dFechaBajada, gm.dFechaSubida)+1 as Total '+
                    'FROM historialcontrato h '+
                    'inner join empleados e on (e.sIdEmpleado = h.sIDEmpleado) '+
                    'inner join guardiasmovtos gm on (gm.ID_GuardiaPeriodo = h.ID_PeriodoGuardia and gm.sIdEmpleado = h.sIdEmpleado )');
        zqHistorial.Open;
        cxTipoDocumento.Enabled := False;

        zqHistorial.Filtered := false;
        zqHistorial.Filter :=' ID_PeriodoGuardia = '+ QuotedStr(IntToStr(zq_guardias.FieldByName('iIdGuardia').AsInteger));
        zqHistorial.Filtered := True;
    end;
    IsOpen:=true;
    zqHistorialAfterScroll(zqHistorial);
end;

procedure TfrmImprimeContratos.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmImprimeContratos.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmImprimeContratos.DBGrid1TitleClick(Column: TColumn);
begin
UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmImprimeContratos.ds_organizacionDataChange(Sender: TObject;
  Field: TField);
begin

end;

(*procedure TfrmImprimeContratos.flEstatusClick(Sender: TObject);
begin
  flEstatus.Color := $00E6FEFF;
  isOpen:=false;
  if qryflEstatus.FieldValues['iIdEstatus'] = 0 then
    zqEmpleados.Filtered := false
  else
  begin
    zqEmpleados.Filtered := false;
    zqEmpleados.Filter := 'iIdEstatus= '+ QuotedStr(qryflEstatus.FieldValues['iIdEstatus']);
    zqEmpleados.Filtered := true;
  end;
  IsOpen:=true;
  zQEmpleadosAfterScroll(zQEmpleados);
end;    *)

(*procedure TfrmImprimeContratos.flEstatusEnter(Sender: TObject);
begin
  flEstatus.Color := global_color_entradaERP;
end;    *)

procedure TfrmImprimeContratos.tsFiltraEmpleadosEnter(Sender: TObject);
begin
 //tsFiltraEmpleados.Color := global_color_entradaERP;
end;

procedure TfrmImprimeContratos.tsFiltraEmpleadosExit(Sender: TObject);
begin
  //tsFiltraEmpleados.Color := global_color_salidaERP;
end;

procedure TfrmImprimeContratos.tsFiltraEmpleadosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   { if length(trim(tsFiltraEmpleados.Text)) > 0 then
        begin
        zQEmpleados.Filtered := False;
        zQEmpleados.Filter := ' sNombreCompleto LIKE ' + QuotedStr('*' + tsFiltraEmpleados.Text + '* ');
        zQEmpleados.Filtered := True;
        zQEmpleados.Refresh;
        end
     else
        begin
        zQEmpleados.Filtered := False;
        end;    }
   // PanelFiltro.Caption := 'No. Registros ' + intToStr(zqEmpleados.RecordCount);
end;

procedure TfrmImprimeContratos.zQEmpleadosAfterScroll(DataSet: TDataSet);
var
iG, counter : Integer;
SvK: TBookmark;
em: string;
begin
  if IsOpen then
  begin
    if cxPage.ActivePageIndex = 0 then
    begin
        zqHistorial.Filtered := false;
        zqHistorial.Filter :=' sIdEmpleado = '+ QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString);
        zqHistorial.Filtered := True;
    end;

    if zqHistorial.RecordCount > 0 then
    begin
      cmdImprimeContrato.enabled := True;
      btnImprimeContratoTierra.enabled := True;
    end
    else
    begin
      cmdImprimeContrato.enabled := False;
      btnImprimeContratoTierra.enabled := False;
    end;

    tsPuesto.KeyValue := zqEmpleados.fieldByName('iId_puesto').AsInteger;


  end;
end;
procedure TfrmImprimeContratos.zqHistorialAfterScroll(DataSet: TDataSet);
begin
   if cxPage.ActivePageIndex = 1 then
   begin
      if lSalto then
      begin
          if zqHistorial.RecordCount > 0 then
          begin
            zqEmpleados.Locate('sIdEmpleado',zqhistorial.FieldByName('sIdEmpleado').AsString,[]);
            cmdImprimeContrato.enabled := True;
            btnImprimeContratoTierra.enabled := True;
          end
          else
          begin
            cmdImprimeContrato.enabled := False;
            btnImprimeContratoTierra.enabled := False;
          end;
          tsPuesto.KeyValue := zqEmpleados.fieldByName('iId_puesto').AsInteger;
      end;
   end;
end;

procedure TfrmImprimeContratos.zq_GuardiasAfterScroll(DataSet: TDataSet);
begin
    if zq_guardias.RecordCount > 0 then
    begin
       if IsOpen then
       begin
           lSalto := False;
           zqHistorial.Filtered := false;
           lSalto := True;
           zqHistorial.Filter :=' ID_PeriodoGuardia = '+ QuotedStr(IntToStr(zq_guardias.FieldByName('iIdGuardia').AsInteger));
           zqHistorial.Filtered := True;

           if zqHistorial.FieldByName('id_catalogoitemschecklist_doctos').IsNull then
           begin
               connection.QryBusca.Active := False;
               connection.QryBusca.SQL.Clear;
               connection.QryBusca.SQL.Add('update historialcontrato set id_catalogoitemschecklist_doctos =:Id where ID_PeriodoGuardia =:Idguardia');
               connection.QryBusca.ParamByName('Id').AsInteger         := zqFormatoDocto.FieldByName('id_catalogoitemschecklist_doctos').AsInteger;
               connection.QryBusca.ParamByName('IdGuardia').AsInteger  := zq_guardias.FieldByName('iIdGuardia').AsInteger;
               connection.QryBusca.ExecSQL;

               zqHistorial.Refresh;
           end;
       end;
    end;
end;

procedure TfrmImprimeContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
  //utgrid2.Destroy;
  Action := CaFree;
end;

procedure TfrmImprimeContratos.FormShow(Sender: TObject);
begin

  //Refrescar los datos de la configuracion de RH para que el usuario no este llendo a la configuracion a refrescar
  Connection.configuracionRecHum.Active := False;
  Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
  Connection.configuracionRecHum.Open  ;

  //UtGrid:=TicdbGrid.create(DBGrid1);
  IsOpen:=false;

  zqHistorial.Active := False;
  zqHistorial.Open;

  zQEmpleados.Close;
  zQEmpleados.Open;

  qryEmpleados.Close;
  qryEmpleados.Open;

  zqryEmpleados.Active := False;
  zqryEmpleados.Open;

  qryFlEstatus.Active := False ;
  qryFlEstatus.Open;

    //Opciones del comboBox CmbOrganizacion
  QryOrganizacion.Active := False;
  QryOrganizacion.ParamByName('padre').AsInteger := -5;
  QryOrganizacion.Open;

  if QryOrganizacion.RecordCount > 0 then
     cmbOrganizacion.KeyValue := 0;

  IsOpen:=true;
  zQEmpleadosAfterScroll(zQEmpleados);

  YaCreado := False;

  cbbReporte.ItemIndex := 0;

  zq_puestos.Active := False;
  zq_puestos.ParamByName('id').AsInteger := connection.contrato.FieldByName('idorganizacion').AsInteger;
  zq_puestos.Open;

  zqFormatoDocto.Active := False;
  zqFormatoDocto.Open;

  //ActualizaResponsabilidad;

  //Checar si el contrato es UTIDEL, si lo es, entonces ocultar el combo de eleccion de los tipos de contratos.
  if connection.contrato.FieldByName('sContrato').AsString <> 'UTIDEL' then
  begin
    lblContrato.Visible := True;
    cbbReporte.Visible := True;

    cmdImprimeContrato.Caption := 'Imprimir Contrato';
    btnImprimeContratoTierra.Visible := False;
  end
  else
  begin
    lblContrato.Visible := False;
    cbbReporte.Visible := False;
  end;
end;

procedure TfrmImprimeContratos.frmBarra4btnDeleteClick(Sender: TObject);
begin
  if zqHistorial.RecordCount > 0 then
    begin
      if Application.MessageBox('¿Estas Seguro de Querer Eliminar el Contrato al Empleado?','ELIMINAR GUARDIA',MB_YESNO + Mb_IconQuestion) = IdYes then
      begin
          zqHistorial.Delete;
          zqHistorial.Refresh;
      end;
    end else
    begin
      ShowMessage('No existes Guardias para el Empleado.');
    end;
end;

procedure TfrmImprimeContratos.frmBarra4btnExitClick(Sender: TObject);
begin

  close;
end;

procedure TfrmImprimeContratos.frmBarra4btnRefreshClick(Sender: TObject);
begin
  if zqHistorial.RecordCount > 0 then
     zqHistorial.Refresh;
end;
//DESCOMPOSICION DE MULTIVALUADOS

function Parte(Indice: Integer; Cadena: String): String;
var
  ii: Integer;
begin
  ii := 0;
  while (ii < Indice) and (Pos('|', Cadena) > 0) do
  begin
    Inc(ii);
    Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
  end;
  Result := Copy(Cadena, 1, Pos('|', Cadena) -1);
end;

procedure TfrmImprimeContratos.frxContratosGetValue(const VarName: string;var Value: Variant);
Var
  SueldoEmpleado : TZQuery;
  edad : integer;
  Sueldo : Longint;
  iValorNumerico : Longint;
  sCadena        : String ;
  Resultado      : Real;
  mes : string;

begin

    if CompareText(VarName,'Montoviatico') = 0 then
       Value := cxViaticoMonto.Value;

    if CompareText(VarName,'MontoLetraViatico') = 0 then
       Value := UpperCase(LetrasNumeros(cxViaticoMonto.Value, 'PESOS', '/100 M.N.', 2));

    if CompareText(VarName,'ViaticoAutoriza') = 0 then
       Value := cxViaticoAutoriza.Text;



  if CompareText(VarName,'sArchivoPath') = 0 then
     Value := sArchivo;

  If CompareText(VarName, 'CalculoSueldo') = 0 then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('SELECT npi.SalarioDiario FROM nuc_personalimss npi INNER JOIN nuc_personal np on (np.idpersonal=npi.IdPersonal AND np.codigopersonal=:Per) '+
                                'WHERE npi.TipoMovimiento="Reingreso" AND npi.IdPeriodosGuardia=:PdoG') ;
    connection.QryBusca.ParamByName('Per').Value := zQEmpleados.FieldValues['sIdEmpleado'] ;
    connection.QryBusca.ParamByName('PdoG').Value := zqHistorial.FieldValues['ID_PeriodoGuardia'] ;
    connection.QryBusca.Open ;

    sd:=connection.QryBusca.FieldByName('SalarioDiario').AsFloat;

    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
      sueldocalculado:=sd*15
    else
      sueldocalculado:=sd*zqHistorial.FieldByName('Total').AsInteger;

    Value:=sueldocalculado;
  end;

  If CompareText(VarName, 'IMPORTE') = 0 then
  begin
    sd:= zqEmpleados.FieldByName('importe').AsFloat;

    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
      sueldocalculado:=sd*15
    else
      sueldocalculado:=sd*(zqHistorial.FieldByName('Total').AsInteger);

    Value := UpperCase(LetrasNumeros(sueldocalculado, 'PESOS', '/100 M.N.', 2))
  end;

  If CompareText(VarName, 'IMPORTE_1') = 0 then
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
      sueldocalculado:=sd*15
    else
      sueldocalculado:=sd* zqHistorial.FieldByName('Total').AsInteger;
    Value := UpperCase(LetrasNumeros(sueldocalculado, 'PESOS', '/100 M.N.', 2))
  end;

  if CompareText(VarName, 'Nacionalidad') = 0 then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sNacionalidad from rh_nacionalidades Where iIdNacionalidad = :iIdNacionalidad') ;
    connection.QryBusca.Params.ParamByName('iIdNacionalidad').Value := zQEmpleados.FieldValues['iIdNacionalidad'] ;
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sNacionalidad').AsString
    else
      Value := '*';
  end;

  if VarName = 'FechaSubida' then
  begin
    //Obtener el mes en letras por ejemplo(01 = Enero, 02 = Febrero, etc)
    case MonthOf(StrToDate(FechaSubida)) of
       1 : mes := 'Enero';
       2 : mes := 'Febrero';
       3 : mes := 'Marzo';
       4 : mes := 'Abril';
       5 : mes := 'Mayo';
       6 : mes := 'Junio';
       7 : mes := 'Julio';
       8 : mes := 'Agosto';
       9 : mes := 'Septiembre';
      10 : mes := 'Octubre';
      11 : mes := 'Noviembre';
      12 : mes := 'Diciembre';
    end;

    Value := FormatDateTime('dd', StrToDate(FechaSubida)) + ' de '  +
           mes + ' del ' +
           FormatDateTime('yyyy', StrToDate(FechaSubida)) ;
  end;

  if CompareText(VarName,'DiasT') = 0 then
  begin
    Value := zqhistorial.FieldByName('Total').AsInteger;
  end;

 if VarName = 'HorarioLaboral' then
  begin
  connection.QryBusca.Active := False ;
  connection.QryBusca.SQL.Clear ;
  connection.QryBusca.SQL.Add('select sDescripcion from rh_horariolaboral Where iIdhorario = :iIdhorario') ;
  connection.QryBusca.Params.ParamByName('iIdhorario').Value := zQEmpleados.FieldByName('iIdhorario').AsInteger ;
  connection.QryBusca.Open ;
  if  connection.QryBusca.RecordCount>0 then
    Value := connection.QryBusca.FieldByName('sDescripcion').AsString
  else Value := '*';
  end
  else if VarName = 'PeriododePago' then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select sDescripcion from rh_periodopagos Where iIdPeriodo = :iIdPeriodo') ;
    connection.QryBusca.Params.ParamByName('iIdPeriodo').AsInteger := zQEmpleados.FieldByName('iIdPeriodo').AsInteger ;
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sDescripcion').AsString
    else Value := '*';
  end
  else if VarName = 'Sueldo' then
  begin
    obtenerneto(zqEmpleados.FieldByName('sIdEmpleado').asstring);
    Value := cdDetalleNom.FieldByName('Importe').AsFloat;
  end
  else if VarName = 'Edad' then
  begin
      edad:= yearof(date) - yearof(zqEmpleados.FieldByName('dFechaNacimiento').AsDateTime);
      Value := edad;
  end
  else if VarName = 'Contratacion_Dia' then
  begin
    Value := FormatDateTime('dd', zqhistorial.FieldByName('dfechainicio').AsDateTime); {zqHistorial.FieldByName('dFechaInicio').AsDateTime}
  end
  else if VarName = 'Contratacion_Mes' then
  begin
    Value := esMes(StrToInt(FormatDateTime('mm', zqhistorial.FieldByName('dfechainicio').AsDateTime)));{zqHistorial.FieldByName('dFechaInicio').AsDateTime}
  end
  else if VarName = 'Contratacion_Anyo' then
  begin
    Value := FormatDateTime('yyyy', zqhistorial.FieldByName('dfechainicio').AsDateTime); {zqHistorial.FieldByName('dFechaInicio').AsDateTime}
  end
  else if VarName = 'Vencimiento_Dia' then
  begin
    Value := FormatDateTime('dd', zqhistorial.FieldByName('dfechatermino').AsDateTime); {zqHistorial.FieldByName('dFechaTermino').AsDateTime}
  end
  else if VarName = 'Vencimiento_Mes' then
  begin
    Value := esMes(StrToInt(FormatDateTime('mm', zqhistorial.FieldByName('dfechatermino').AsDateTime)));{zqHistorial.FieldByName('dFechaTermino').AsDateTime}
  end
  else if VarName = 'Vencimiento_Anyo' then
  begin
    Value := FormatDateTime('yyyy', zqhistorial.FieldByName('dfechatermino').AsDateTime); {zqHistorial.FieldByName('dFechaTermino').AsDateTime}
  end
  else if VarName = 'SueldoMensual_Letras' then
  begin
    Value := xNumerosToLletres(sueldot{zqEmpleados.FieldByName('dSueldo').AsCurrency});
  end
  else if VarName = 'SueldoMensualC_Letras' then
  begin
    Value := xNumerosToLletres(cdDetalleNom.FieldByName('Importe').AsCurrency);
  end
  else if VarName = 'NominaNeto' then
  begin
    Value := NetoPagar;
  end
  else if VarName = 'Plataforma' then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('SELECT p.sDescripcion from guardiasmovtos gm INNER JOIN plataformas p on (gm.sIdPlataforma=p.sIdPlataforma) WHERE gm.sIdEmpleado=:empleado') ;
    connection.QryBusca.Params.ParamByName('empleado').AsString := zQEmpleados.FieldByNAme('sIdEmpleado').asstring ; {sIdEmpleado}
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sDescripcion').AsString
    else  Value := '*';
  end
  else if VarName = 'Puesto' then
  begin
    connection.QryBusca.Active := False ;
    connection.QryBusca.SQL.Clear ;
    connection.QryBusca.SQL.Add('select e.iId_Puesto,ccp.titulocargo as sPuesto from empleados e ') ;
    connection.QryBusca.SQL.Add('inner join nuc_cargo ccp on(ccp.idcargo = e.iId_Puesto) ');
    connection.QryBusca.SQL.Add('where sIdEmpleado = :iId');  {select sDescripcion as sPuesto from con_catalogodepuestos Where iId_Puesto = :iId_Puesto}
    connection.QryBusca.Params.ParamByName('iId').Asstring := zQEmpleados.FieldByName('sIdEmpleado').asstring;{iId_Puesto}
    connection.QryBusca.Open ;
    if  connection.QryBusca.RecordCount>0 then
      Value := connection.QryBusca.FieldByName('sPuesto').AsString
    else Value := '*';
  end;
end;

procedure TfrmImprimeContratos.G_EmpleadosCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Si el empleado seleccionado es de Tierra, entonces deshabilitar el boton Imprimir Contrato A BOrdo

  if connection.contrato.FieldByName('sContrato').AsString <> 'UTIDEL' then
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin

      cbbReporte.Clear;

      cbbReporte.Items.Add('Por tiempo determinado');
      cbbReporte.Items.Add('Por tiempo indeterminado');
      cbbReporte.ItemIndex := 0;
    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
      cbbReporte.Clear;
      cbbReporte.Items.Add('Abordo');
      cbbReporte.ItemIndex := 0;
      btnImprimeContratoTierra.Enabled := False;
    end;
  end
  else
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'Tierra' then
    begin
      cmdImprimeContrato.Enabled := False;
    end else if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString = 'A bordo' then
    begin
      btnImprimeContratoTierra.Enabled := False;
    end;
  end;

end;

procedure TfrmImprimeContratos.ImprimeSelccionado1Click(Sender: TObject);
begin
   cmdImprimeContrato.Click;
end;

procedure TfrmImprimeContratos.ImprimeTodoslosContratos1Click(Sender: TObject);
var
  i : Integer;
  QrDatos : TzReadOnlyQuery;
  filtro : string;
  cursor : TCursor;
begin
    //Imprimir los contratos a bordo en un solo reporte
    QrDatos:=TzReadOnlyQuery.Create(self);
    QrDatos.connection:=Connection.zConnection;
    QrDatos.SQL.Text:='select e.*,gm.*,nr.importe,rn.sDescripcion as nacionalidad' +
                      ',nc.titulocargo, b.sDescripcion as sBanco from empleados e' + #10 +
                      'inner join guardiasmovtos gm' + #10 +
                      'on(e.sIdEmpleado=gm.sIdEmpleado)' + #10 +
                      'inner join nuc_cargo nc' + #10 +
                      'on(gm.iId_puesto=nc.idCargo)' + #10 +
                      'left join nom_rangosalarios nr' + #10 +
                      'on(nr.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
                      'left join rh_nacionalidades rn ' +
                      'on(rn.iIdNacionalidad=e.iIdNacionalidad) ' +
                      'left join rh_bancos b on (e.sIdBanco = b.sIdBanco) '+
                      'where gm.ID_GuardiaPeriodo=:Guardia';

    QrDatos.ParamByName('Guardia').AsInteger:=zq_guardias.FieldByName('iIdguardia').asInteger;
    QrDatos.Open;


    try
      GetTempPath(SizeOf(global_TempPath), global_TempPath);
      frmImprimeContratos.zqFormatoDocto.Locate('id_catalogoitemschecklist_doctos', frmImprimeContratos.zqHistorial.FieldByName('id_catalogoitemschecklist_doctos').AsInteger, [] );
      sArchivo := global_TempPath +  copy(frmImprimeContratos.zqFormatoDocto.FieldByName('sNombreFormato').AsString, 0, pos('.',frmImprimeContratos.zqFormatoDocto.FieldByName('sNombreFormato').AsString))+ 'rtf';
      if Not FileExists(sArchivo) then
      begin
         TBlobField(frmImprimeContratos.zqFormatoDocto.FieldByName('bFormato')).SaveToFile(sArchivo);
      end;
    except
    end;

    while Not QrDatos.Eof do
    begin
      if filtro = '' then
      begin
        filtro := 'sIdEmpleado = ' + QuotedStr(QrDatos.FieldByName('sIdEmpleado').AsString);
        QrDatos.Next;
      end
      else
      begin
        filtro := filtro + ' or sIdEmpleado = ' + QuotedStr(QrDatos.FieldByName('sIdEmpleado').AsString);
        QrDatos.Next;
      end;
    end;

    frmImprimeContratos.FechaSubida := DateToStr(zq_guardias.fieldByName('dFechaInicial').AsDateTime);
    frmImprimeContratos.dszQEmpleados.dataset.Filtered := false;
    frmImprimeContratos.dszQEmpleados.dataset.Filter := filtro;
    frmImprimeContratos.dszQEmpleados.dataset.Filtered := true;

    //aqui creo  esta el truco, se  pasa al  frx los  valores  de  la consulta ya  filtrados.
    frmImprimeContratos.frx_ReporteEmpleados.DataSet := frmImprimeContratos.zQEmpleados;
    frmImprimeContratos.frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Contratos_ABordoB3_General.fr3') ;
    frmImprimeContratos.frxContratos.ShowReport();

end;

//Imprime el finiquito
procedure TfrmImprimeContratos.imprimirFiniquito;
var
  QrDatos:TzReadOnlyQuery;
  Concept: string;
  Monto: string;
  i: Integer;
begin
  //Imprime el finiquito del contrato seleccionado
  QrDatos:=TzReadOnlyQuery.Create(nil);
    try
      QrDatos.connection:=Connection.zConnection;
      QrDatos.SQL.Text:='select e.*,gm.*,nr.importe, ' +
                        'nc.titulocargo from empleados e' + #10 +
                        'inner join guardiasmovtos gm' + #10 +
                        'on(e.sIdEmpleado=gm.sIdEmpleado)' + #10 +
                        'inner join nuc_cargo nc' + #10 +
                        'on(gm.iId_puesto=nc.idCargo)' + #10 +
                        'inner join nom_rangosalarios nr' + #10 +
                        'on(nr.IdRangoSalarios=nc.IdRangoSalarios)' + #10 +
                        'where e.sIdEmpleado=:Empleado and gm.ID_GuardiaPeriodo=:Guardia';

      //dtBaja:=False;
      QrDatos.ParamByName('Empleado').asString:=zQEmpleados.FieldByName('sIdEmpleado').asString;
      QrDatos.ParamByName('Guardia').AsInteger:=zqHistorial.FieldByName('Id_periodoGuardia').AsInteger;
      QrDatos.Open;
      if QrDatos.RecordCount>0 then
      begin
        if QrDatos.FieldByName('sStatusTipoPersonal').AsString='Tierra' then

          MSG_ER('No se puede imprimir el finiquito por que es un personal de Base y no se genera contrato')
        else

          if zqHistorial.recordcount>0 then
          begin

            {$REGION 'DESCOMPOSICION DE CAMPOS MULTIVALUADOS'}
            connection.QryBusca.Active := False ;
            connection.QryBusca.SQL.Clear ;
            //connection.QryBusca.SQL.Add('select Conceptos, Valores from precontrato Where sIdEmpleado = :sIdEmpleado and status_contra = "Contratado" and IdGuardia=:sIdGuardia') ;
            //connection.QryBusca.Params.ParamByName('sIdEmpleado').Value := zQEmpleados.Fieldbyname('sIdEmpleado').AsString ;
            //connection.QryBusca.Params.ParamByName('sIdGuardia').Value  := zqHistorial.Fieldbyname('sIdGuardia').AsString ;
            connection.QryBusca.SQL.text:=
            'SELECT' + #10 +
             'npi.IdPersonal,' + #10 +
             'p.codigopersonal,' + #10 +
             'npi.IdPeriodosGuardia,' + #10 +
             'dn.Clave as conceptos,' + #10 +
             'dn.Valor as valores' + #10 +
            'FROM' + #10 +
             'nuc_personalimss as npi' + #10 +
            'INNER JOIN' + #10 +
             'nuc_personal as p' + #10 +
            'ON' + #10 +
             'npi.IdPersonal = p.idpersonal' + #10 +

            'INNER JOIN' + #10 +
             'nom_nominapersonal as np' + #10 +
            'ON' + #10 +
             'npi.IdPersonal = np.IdPersonal' + #10 +
            'inner join nom_nomina nn' + #10 +
              'on(nn.Idnomina=np.Idnomina and nn.idPeriodosguardia=npi.IdPeriodosGuardia) '  +
            'INNER JOIN' + #10 +
             'nom_detallenomina as dn' + #10 +
            'ON' + #10 +
             '(npi.IdPersonal = dn.IdPersonal and dn.Idnomina=nn.Idnomina)' + #10 +
            'WHERE' + #10 +
             'NOT np.IdFormaPago IS NULL AND TipoMovimiento = "Baja" and p.codigopersonal =:Personal '+
             'and npi.IdPeriodosGuardia=:Periodo';
             //ID_PeriodoGuardia
             connection.QryBusca.ParamByName('Personal').AsString:= QrDatos.FieldByName('sIdEmpleado').AsString;
             connection.QryBusca.ParamByName('Periodo').asinteger:=QrDatos.FieldByName('ID_GuardiaPeriodo').AsInteger;

            connection.QryBusca.Open ;
            rxNomina.Active :=false;
             rxNomina.Active := True;

             rxNomina.EmptyTable;

            if  connection.QryBusca.RecordCount>0 then
            begin


              // Identificar cuantos registros componen su nómina
              NumRec := 0;
              Cadena := connection.QryBusca.FieldByName('Conceptos').AsString;
              while Pos('|', Cadena) > 0 do
              begin
                Inc(NumRec);
                Cadena := Copy(Cadena, Pos('|', Cadena) +1, Length(Cadena));
              end;

              // Obtener el universo de conceptos de entre todos los empleados
              //connection.QryBusca.First;
              while not connection.QryBusca.Eof do
              begin
                rxNomina.Insert;
                rxNomina.Edit;
                for i := 0 to NumRec -1 do
                begin
                  Concept := Parte(i, connection.QryBusca.FieldByName('Conceptos').AsString);
                  Monto := Parte(i, connection.QryBusca.FieldByName('Valores').AsString);
                  if Concept='SUELDO' then
                  rxNomina.FieldValues['Sueldo'] := StrToFloat(Monto);
                  if Concept='PrimaDominical' then
                  rxNomina.FieldValues['PrimaDom'] := StrToFloat(Monto);
                  if Concept='DiasFestivos' then
                  rxNomina.FieldValues['DiaFestivo'] := StrToFloat(Monto);
                  if Concept='Vacaciones' then
                  rxNomina.FieldValues['Vacaciones'] := StrToFloat(Monto);
                  if Concept='PrimaVacacional' then
                  rxNomina.FieldValues['PrimaVac'] := StrToFloat(Monto);
                  if Concept='Aguinaldo' then
                  rxNomina.FieldValues['Aguinaldo'] := StrToFloat(Monto);
                  if Concept='TOTDED' then
                  rxNomina.FieldValues['Deducciones'] := StrToFloat(Monto);
                  if Concept='HorasExtraImporte' then
                  rxNomina.FieldValues['HorasExtra'] := StrToFloat(Monto);
                  if Concept='NETO' then
                  begin
                    rxNomina.FieldValues['Neto'] := StrToFloat(Monto);
                    sueldot:=StrToFloat(Monto);
                  end;
                end;
                rxNomina.Post;
                connection.QryBusca.Next;
              end;
            end;

            {$ENDREGION}
            //origen_contrato:='finiquito';
            frx_ReporteEmpleados.DataSet := QrDatos;
            frx_ReporteEmpleados.FieldAliases.Clear;


            frxContratos.LoadFromFile(Global_Files +global_miReporte +'_Finiquito.fr3') ;
            // if frxContratos.Variables.IndexOf('SueldoMensualC_Letras')<>-1 then

            {SueldoMensual_Letras
            frxContratos.Variables.variables['SueldoMensualC'] :=quotedstr(xNumerosToLletres(QrDatos.FieldByName('importe').AsCurrency));
           }

            frxContratos.Variables.variables['SueldoMensual_Letras'] :=quotedstr(xNumerosToLletres(rxNomina.FieldByName('Neto').ascurrency));
            frxContratos.Variables.variables['Contratacion_Dia'] :=quotedstr(FormatDateTime('dd',QrDatos.FieldByName('dFechaSubida').AsDateTime));
            frxContratos.Variables.variables['Contratacion_Mes'] :=quotedstr(Uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('dFechaSubida').AsDateTime)));
            frxContratos.Variables.variables['Contratacion_Anyo'] :=quotedstr(FormatDateTime('yy', QrDatos.FieldByName('dFechaSubida').AsDateTime));
            //zqryEmpleados.FieldByName('Reprogramacion').AsDateTime = 0
            if (QrDatos.fieldbyname('Reprogramacion').AsDateTime =0)  then
            begin
              frxContratos.Variables.variables['Vencimiento_Dia'] :=quotedstr(FormatDateTime('dd', QrDatos.FieldByName('dFechaBajada').AsDateTime));
              frxContratos.Variables.variables['Vencimiento_Mes'] :=quotedstr(uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('dFechaBajada').AsDateTime)));
              frxContratos.Variables.variables['Vencimiento_Anyo'] :=quotedstr(FormatDateTime('yy', QrDatos.FieldByName('dFechaBajada').AsDateTime));
            end
            else
            begin
              frxContratos.Variables.variables['Vencimiento_Dia'] :=quotedstr(FormatDateTime('dd', QrDatos.FieldByName('Reprogramacion').AsDateTime));
              frxContratos.Variables.variables['Vencimiento_Mes'] :=quotedstr(uppercase(FormatDateTime('mmmm', QrDatos.FieldByName('Reprogramacion').AsDateTime)));
              frxContratos.Variables.variables['Vencimiento_Anyo'] :=quotedstr(FormatDateTime('yy', QrDatos.FieldByName('Reprogramacion').AsDateTime));

            end;
            frxContratos.ShowReport() ;
          end
          else MSG_ER('El contrato no fue localizado');

      end;
    finally
      QrDatos.destroy;
    end;
end;

procedure TfrmImprimeContratos.obtenerneto (trb: variant);
var
icount : Integer;
emp, empl : string;
begin
  cdDetalleNom.Active := False;
  connection.QryBusca.Active := False ;
  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('SELECT nnp.IdNomina, np.idpersonal FROM nuc_personal np ');
  connection.QryBusca.SQL.Add('INNER JOIN nom_nominapersonal nnp ON (np.idpersonal=nnp.IdPersonal) '); {np.codigopersonal=:id}
  connection.QryBusca.SQL.Add('Where np.codigopersonal=:id');
  connection.QryBusca.ParamByName('id').Value := trb;//zQEmpleados.FieldValues['sIdEmpleado'];
  connection.QryBusca.Open ;

  if  connection.QryBusca.RecordCount>0 then
  begin

    cdDetalleNom.ParamByName('Clave').AsString:='NETO';
    cdDetalleNom.ParamByName('IdPersonal').AsInteger:=connection.QryBusca.FieldByName('idpersonal').AsInteger;
    cdDetalleNom.ParamByName('IdNomina').AsInteger:=connection.QryBusca.FieldByName('IdNomina').AsInteger;
    cdDetalleNom.ParamByName('FechaInicio').AsDateTime:=zqHistorial.FieldByName('dFechaInicio').AsDateTime;
    cdDetalleNom.ParamByName('FechaTermino').AsDateTime:=zqHistorial.FieldByName('dFechaTermino').AsDateTime;
    //cdDetalleNom.ParamByName('FechaInicio').AsDateTime:=zqHistorial.FieldByName('dFechaInicio').AsDateTime;
    cdDetalleNom.Open;
  end;
end;

procedure TfrmImprimeContratos.ReglamentoPlataforma1Click(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_reglamento_interno_Plataforma.fr3') then
 begin
  showmessage('El archivo de reporte '+global_Mireporte+'_reglamento_interno_Plataforma.fr3 no existe, notifique al administrador del sistema');
  exit;
 end;
  frx_ReporteEmpleados.DataSet := zqEmpleados;
  frxReglamentosplataforma.LoadFromFile(Global_Files +global_miReporte +'_reglamento_interno_Plataforma.fr3') ;
  frxReglamentosplataforma.ShowReport();
end;

procedure TfrmImprimeContratos.ActualizaResponsabilidad;
begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select h.iIdContrato, h.sIdEmpleado, h.mResponsabilidad as ResponsablidadH, c.titulocargo, c.mResponsabilidad '+
                                'from historialcontrato h '+
                                'inner join empleados e on (e.idorganizacion = :id and e.sIdEmpleado = h.sIdEmpleado) '+
                                'inner join nuc_cargo c on (c.IdOrganizacion = e.idorganizacion and e.iId_Puesto = c.idcargo) '+
                                'where (h.mResponsabilidad is Null or h.mResponsabilidad = "")');
    connection.zCommand.ParamByName('Id').AsInteger := connection.contrato.FieldByName('idorganizacion').AsInteger;
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Update historialcontrato set mResponsabilidad =:Responsabilidad where iIdContrato =:Id');
        connection.QryBusca.ParamByName('Responsabilidad').AsMemo := connection.zCommand.FieldByName('mResponsabilidad').AsVariant;
        connection.QryBusca.ParamByName('Id').AsInteger           := connection.zCommand.FieldByName('iIdContrato').AsInteger;
        connection.QryBusca.ExecSQL;

        connection.zCommand.Next;
    end;
end;

end.
