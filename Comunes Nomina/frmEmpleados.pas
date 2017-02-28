unit frmEmpleados;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, frm_barra, ZAbstractRODataset, NxDBColumns,
  Grids, DBGrids, DBCtrls, ZAbstractDataset, NxCustomGridControl,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGrid, NxPageControl, Jpeg,
  NxDBGrid, NxColumns, global, StdCtrls, Mask, rxToolEdit, Menus, masUtilerias,
  frxClass, frxDBSet, RXDBCtrl, NxGrid, Buttons, dbnavE, ExtDlgs,
  NxColumnClasses, JvExControls, JvLinkLabel, Utilerias, frm_Connection,
  ComCtrls, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, AdvEdit, DBAdvEd,
  frm_PeriododePagoRH, frm_HorarioLaboral, AdvGlowButton, AdvPanel, UDbGrid,
  frxADOComponents, frxPreview, frxDesgn, Math, RxMemDS, Newpanel, UnitExcepciones,
  sSplitter, JvBaseThumbnail, JvThumbImage,NxCollection,
  JvImageList, acAlphaImageList, GDIPPictureContainer, PictureContainer,Datemap,
  OleCtrls, DBDateTimePicker, AdvSmoothSlider, AdvSmoothToggleButton,
  AdvSmoothStatusIndicator,AcroPDFLib_TLB, JvBaseEdits, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, ZSqlUpdate, cxGridLevel, cxGridDBTableView, {dxSkinscxPCPainter, }
  FormAutoScaler, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvMemoryDataset, ExportaExcel, DBClient,
  cxDBLookupComboBox, ExtCtrls, JvExExtCtrls, ImgList, cxImage, frxpngimage,DebenuPDFLibrary,UFunctionsGHH,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxButtons, UTFrmLibretasVencidas, rxCurrEdit,
  JvDialogs, zconnection, ShellApi, RXCtrls, cxEditRepositoryItems, UnitExcel,UTFrmCatalogoCargos, ComObj,
  cxGroupBox, dxdbtrel, SysUtils;
type
  Evalidaciones = class(Exception)
end;

type
  Tfrm_Empleados = class(TForm)
  dszQEmpleados: TDataSource;
  zQEmpleados: TZQuery;
    zQDepartamentos: TZReadOnlyQuery;
    ds_departamentos: TDataSource;
  frx_ReporteEmpleados: TfrxDBDataset;
  qryEmpleados: TZReadOnlyQuery;
  zq_EquiposPorEmpleado: TZQuery;
  ds_EquiposPorEmpleado: TDataSource;
  zq_EquiposPorEmpleadoiId: TIntegerField;
  zq_EquiposPorEmpleadoiIdEquipo: TIntegerField;
  zq_EquiposPorEmpleadosIdEmpleado: TStringField;
  zq_EquiposPorEmpleadodFecha_Recepcion: TDateField;
  zq_EquiposPorEmpleadodFecha_Remocion: TDateField;
  frx_EquiposPorEmpleado: TfrxDBDataset;
  zq_EquiposPorEmpleadosStatus_Recepcion: TStringField;
  zq_EquiposPorEmpleadosStatus_Entrega: TStringField;
  zq_EquiposPorEmpleadosEmpleado: TStringField;
  frxEquipos: TfrxDBDataset;
  ReporteFotografico: TZQuery;
  OpenPicture: TOpenPictureDialog;
  ds_ReporteFotografico: TDataSource;
  frxReport1: TfrxReport;
  Popempleados: TPopupMenu;
  IMPRESIONSUELDOS1: TMenuItem;
  MostrarSoportesEmpleados1: TMenuItem;
  frxFotografia: TfrxDBDataset;
  zq_registrospatronales: TZQuery;
  ds_registrospatronales: TDataSource;
  zq_registrospatronalessRazonSocial: TStringField;
  zq_registrospatronalessRegistroPatronal: TStringField;
  OpenPictureDialog1: TOpenPictureDialog;
  ImprimirCartaResponsiva2: TMenuItem;
  ImprimirCartadeRecomendacin1: TMenuItem;
  frx_zqEmpleados: TfrxDBDataset;
  ZQPeriodo: TZQuery;
  dsPeriodo: TDataSource;
  ZQPeriodosDescripcion: TStringField;
  zqHorarioslab: TZQuery;
  dsHorarios: TDataSource;
  zqHorarioslabiIdhorario: TIntegerField;
  zqHorarioslabsDescripcion: TStringField;
    zqConfiguracionRh: TZQuery;
    zqConfiguracionRhsNombre: TStringField;
    zqConfiguracionRhsNombreCorto: TStringField;
    zqConfiguracionRhsRfc: TStringField;
    zqConfiguracionRhsDireccion1: TStringField;
    zqConfiguracionRhsDireccion2: TStringField;
    zqConfiguracionRhsDireccion3: TStringField;
    zqConfiguracionRhsSlogan: TStringField;
    zqConfiguracionRhsPiePagina: TStringField;
    zqConfiguracionRhbImagen: TBlobField;
    zqConfiguracionRhsTelefono: TStringField;
    zqConfiguracionRhsFax: TStringField;
    zqConfiguracionRhsEmail: TStringField;
    zqConfiguracionRhsWeb: TStringField;
    zqConfiguracionRhsRepresentante: TStringField;
    zqConfiguracionRhsFirmante2: TStringField;
    zqConfiguracionRhsFirmante3: TStringField;
    zqConfiguracionRhsCiudad: TStringField;
  frxDBConfiguracion: TfrxDBDataset;
  qryEstatus: TZReadOnlyQuery;
  StringField2: TStringField;
  ds_estatus: TDataSource;
  qryEstatusiIdEstatus: TIntegerField;
  Panel2: TPanel;
  frmBarra1: TfrmBarra;
  qryEstatusiColor: TIntegerField;
  SeleccionarFecha: TPanel;
  CredenciaAbordo1: TMenuItem;
  qryEstatuslAplicaEmpleadosActivos: TStringField;
  zq_EquiposPorEmpleadobActivo: TStringField;
  zq_EquiposPorEmpleadosNombreEntrega: TStringField;
  zq_EquiposPorEmpleadosNombreAutorizacion: TStringField;
  zqRptEntregaEquipo: TZQuery;
  zqRptEntregaEquipoiId: TIntegerField;
  zqRptEntregaEquipoiIdEquipo: TIntegerField;
  zqRptEntregaEquiposIdEmpleado: TStringField;
  zqRptEntregaEquipodFecha_Recepcion: TDateField;
  zqRptEntregaEquipodFecha_Remocion: TDateField;
  zqRptEntregaEquiposStatus_Recepcion: TStringField;
  zqRptEntregaEquiposStatus_Entrega: TStringField;
  zqRptEntregaEquipobActivo: TStringField;
  zqRptEntregaEquiposNombreEntrega: TStringField;
  zqRptEntregaEquiposNombreAutorizacion: TStringField;
  zqRptEntregaEquiposNombreCompleto: TStringField;
  zqRptEntregaEquiposNumeroSerie: TStringField;
  qryEmpleadosCredencial: TZReadOnlyQuery;
  frxCredencialTierra: TfrxDBDataset;
  PageControl1: TPageControl;
  TabSheet1: TTabSheet;
  Label44: TLabel;
  Label45: TLabel;
  Label46: TLabel;
  dtCartaRecomendacion_Inicial: TDateTimePicker;
  dtCartaRecomendacion_Final: TDateTimePicker;
  Btn_ReporteCartaRecomendacion: TButton;
  TabSheet2: TTabSheet;
  Label30: TLabel;
  dtFechavigencia: TDateTimePicker;
  Btn_ReporteCredenciales: TButton;
  rbAbordo: TRadioButton;
  rbTierra: TRadioButton;
    zqConfiguracionRhbLogoFondo: TBlobField;
    zqConfiguracionRhbImagenCliente: TBlobField;
  rxCredenciales: TRxMemoryData;
  rxCredencialessIdEmpleado: TStringField;
  rxCredencialessNombreCompleto: TStringField;
  rxCredencialessRfc: TStringField;
  rxCredencialessDomicilio: TStringField;
  rxCredencialessCiudad: TStringField;
  rxCredencialessPuesto: TStringField;
  rxCredencialessTelefono: TStringField;
  rxCredencialessCurp: TStringField;
  rxCredencialessImss: TStringField;
  rxCredencialessTipoSangre: TStringField;
  rxCredencialesPuestoEmpleado: TStringField;
  rxCredencialesbImagen: TBlobField;
  rxCredencialesbImagenHorizontal: TBlobField;
  rxCredencialessIdEmpleado_2: TStringField;
  rxCredencialessNombreCompleto_2: TStringField;
  rxCredencialessRfc_2: TStringField;
  rxCredencialessDomicilio_2: TStringField;
  rxCredencialessCiudad_2: TStringField;
  rxCredencialessPuesto_2: TStringField;
  rxCredencialessTelefono_2: TStringField;
  rxCredencialessCurp_2: TStringField;
  rxCredencialessImss_2: TStringField;
  rxCredencialessTipoSangre_2: TStringField;
  rxCredencialesPuestoEmpleado_2: TStringField;
  rxCredencialesbImagen_2: TBlobField;
  rxCredencialesbImagenHorizontal_2: TBlobField;
  rxCredencialessIdEmpleado_3: TStringField;
  rxCredencialessNombreCompleto_3: TStringField;
  rxCredencialessRfc_3: TStringField;
  rxCredencialessDomicilio_3: TStringField;
  rxCredencialessCiudad_3: TStringField;
  rxCredencialessPuesto_3: TStringField;
  rxCredencialessTelefono_3: TStringField;
  rxCredencialessCurp_3: TStringField;
  rxCredencialessImss_3: TStringField;
  rxCredencialessTipoSangre_3: TStringField;
  rxCredencialesPuestoEmpleado_3: TStringField;
  rxCredencialesbImagen_3: TBlobField;
  rxCredencialesbImagenHorizontal_3: TBlobField;
  rxCredencialessIdEmpleado_4: TStringField;
  rxCredencialessNombreCompleto_4: TStringField;
  rxCredencialessRfc_4: TStringField;
  rxCredencialessDomicilio_4: TStringField;
  rxCredencialessCiudad_4: TStringField;
  rxCredencialessPuesto_4: TStringField;
  rxCredencialessTelefono_4: TStringField;
  rxCredencialessCurp_4: TStringField;
  rxCredencialessImss_4: TStringField;
  rxCredencialessTipoSangre_4: TStringField;
  rxCredencialesPuestoEmpleado_4: TStringField;
  rxCredencialesbImagen_4: TBlobField;
  rxCredencialesbImagenHorizontal_4: TBlobField;
  rxCredencialessIdEmpleado_5: TStringField;
  rxCredencialessNombreCompleto_5: TStringField;
  rxCredencialessRfc_5: TStringField;
  rxCredencialessDomicilio_5: TStringField;
  rxCredencialessCiudad_5: TStringField;
  rxCredencialessPuesto_5: TStringField;
  rxCredencialessTelefono_5: TStringField;
  rxCredencialessCurp_5: TStringField;
  rxCredencialessImss_5: TStringField;
  rxCredencialessTipoSangre_5: TStringField;
  rxCredencialesPuestoEmpleado_5: TStringField;
  rxCredencialesbImagen_5: TBlobField;
  rxCredencialesbImagenHorizontal_5: TBlobField;
  frxCredencialAbordo: TfrxDBDataset;
  zqRptEntregaEquiposApellidoPaterno: TStringField;
  zqRptEntregaEquiposApellidoMaterno: TStringField;
    zqRptEntregaEquipoCodigoCargo: TStringField;
  zqryCartaRecomendacion: TZReadOnlyQuery;
  frx_CartaRecomendacion: TfrxDBDataset;
  qryHistorialAltasBajas: TZQuery;
  ds_HistorialAltasBajas: TDataSource;
  PnlFiltros: TPanel;
  PanelContenedorFichas1: TPanel;
  pgDatos: TNxPageControl;
  NxTabSheet1: TNxTabSheet;
  btnperiodo: TAdvGlowButton;
  btnhorarios: TAdvGlowButton;
  NxTabSheet2: TNxTabSheet;
  lblRecord: TLabel;
  Panel7: TPanel;
  btnPreview: TBitBtn;
  DBNavigatorE1: TDBNavigatorE;
  tNewGroupBox5: tNewGroupBox;
  bImagen: TImage;
  NxTabSheet3: TNxTabSheet;
  tNewGroupBox6: tNewGroupBox;
  tNewGroupBox7: tNewGroupBox;
  Label60: TLabel;
  Label61: TLabel;
  tsNombreEntrega: TEdit;
  tsNombreAutoriza: TEdit;
  PageControl2: TPageControl;
  TabSheet3: TTabSheet;
  TabSheet4: TTabSheet;
  Panel3: TPanel;
  btnDelete: TBitBtn;
  btnAdd: TBitBtn;
    btnPrinter: TBitBtn;
  DBGrid1: TDBGrid;
  btnCancelarCartaRec: TButton;
  Image1: TImage;
  JvThumbImage1: TJvThumbImage;
  tNewGroupBox1: tNewGroupBox;
  Label25: TLabel;
  Panel1: TPanel;
  tNewGroupBox2: tNewGroupBox;
  Label48: TLabel;
  Label51: TLabel;
  Label47: TLabel;
  Label52: TLabel;
  DBLCHorarios: TDBLookupComboBox;
  dblcxperiodo: TDBLookupComboBox;
  Panel5: TPanel;
  tNewGroupBox3: tNewGroupBox;
  Panel8: TPanel;
  tNewGroupBox9: tNewGroupBox;
  Label4: TLabel;
  tsEstatus: TDBLookupComboBox;
  btnEstatus: TButton;
  gpIndividual: tNewGroupBox;
  Label6: TLabel;
  Label13: TLabel;
  Label3: TLabel;
  CUENTA: TDBEdit;
  Panel11: TPanel;
  tNewGroupBox4: tNewGroupBox;
  Panel6: TPanel;
  bImagen_: TImage;
  AdvGlowButton1: TAdvGlowButton;
  PopupElimarAltas: TPopupMenu;
  Label27: TLabel;
  dbEntidadEducativa: TDBLookupComboBox;
  Button2: TButton;
  dbProfesiones: TDBLookupComboBox;
  Button3: TButton;
  zqEntidadesEducativas: TZQuery;
  dsEntidadesEducativas: TDataSource;
  zqProfesiones: TZQuery;
  zqProfesionesiIdProfesiones: TIntegerField;
  zqProfesionessDescripcion: TStringField;
  zqEntidadesEducativasid_entidadeseducativas: TIntegerField;
  zqEntidadesEducativassNombre: TStringField;
  zqEntidadesEducativassNivelAcademico: TStringField;
  zqEntidadesEducativasid_localidad: TIntegerField;
  zqEntidadesEducativasid_municipios: TIntegerField;
  zqEntidadesEducativasid_Estados: TIntegerField;
  PictureContainer1: TPictureContainer;
  frxDBAltasyBajas: TfrxDBDataset;
  ReportedeIncidencias1: TMenuItem;
  dbEntidades1: TDBLookupComboBox;
  zQRH_Profesiones: TZQuery;
  zQRH_ProfesionesiIdProfesiones: TIntegerField;
  zQRH_ProfesionessDescripcion: TStringField;
  Imprimir1: TMenuItem;
  frxDBStatus: TfrxDBDataset;
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
  qryEmpleadosidorganizacion: TIntegerField;
  qryEmpleadossCP: TStringField;
  qryEmpleadossApellidoPaterno: TStringField;
  qryEmpleadossApellidoMaterno: TStringField;
  qryEmpleadossNoCreditoInfonavit: TStringField;
  qryEmpleadosiIdProfesiones: TIntegerField;
  qryEmpleadosid_entidadeseducativas: TIntegerField;
  qryEmpleadossTelefonoCelular: TStringField;
  qryEmpleadossNombre_Emergencia: TStringField;
  qryEmpleadossParentesco_Emergencia: TStringField;
  qryEmpleadossNumero_Emergencia: TStringField;
  qryEmpleadosPuestoEmpleado: TStringField;
  OpenDialog1: TOpenDialog;
  Paneldatosdoc: TPanel;
  DlgGuardar: TSaveDialog;
  qryEmpleadosCredencialIdPersonal: TIntegerField;
  qryEmpleadosCredencialsIdEmpleado: TStringField;
  qryEmpleadosCredencialiIdEstatus: TIntegerField;
  qryEmpleadosCredencialsNombreCompleto: TStringField;
  qryEmpleadosCredencialsRfc: TStringField;
  qryEmpleadosCredencialsCiudad: TStringField;
  qryEmpleadosCredencialsTelefono: TStringField;
  qryEmpleadosCredencialseMail: TStringField;
  qryEmpleadosCredencialdSueldo: TFloatField;
  qryEmpleadosCredencialsCuenta: TStringField;
  qryEmpleadosCredencialsCuentaInterbancaria: TStringField;
  qryEmpleadosCredencialsCurp: TStringField;
  qryEmpleadosCredencialsImss: TStringField;
  qryEmpleadosCredencialsEstadoCivil: TStringField;
  qryEmpleadosCredencialdFechaNacimiento: TDateField;
  qryEmpleadosCredencialiId_Puesto: TIntegerField;
  qryEmpleadosCredencialsLibretaMar: TStringField;
  qryEmpleadosCredencialsCartilla: TStringField;
  qryEmpleadosCredencialsCedulaProfesional: TStringField;
  qryEmpleadosCredencialsLugarNacimiento: TStringField;
  qryEmpleadosCredencialsTipoSangre: TStringField;
  qryEmpleadosCredenciallImprimeNomina: TStringField;
  qryEmpleadosCredenciallSexo: TStringField;
  qryEmpleadosCredencialiIdhorario: TIntegerField;
  qryEmpleadosCredencialidorganizacion: TIntegerField;
  qryEmpleadosCredencialsCP: TStringField;
  qryEmpleadosCredencialsApellidoPaterno: TStringField;
  qryEmpleadosCredencialsApellidoMaterno: TStringField;
  qryEmpleadosCredencialsNoCreditoInfonavit: TStringField;
  qryEmpleadosCredencialiIdProfesiones: TIntegerField;
  qryEmpleadosCredencialid_entidadeseducativas: TIntegerField;
  qryEmpleadosCredencialsTelefonoCelular: TStringField;
  qryEmpleadosCredencialsNombre_Emergencia: TStringField;
  qryEmpleadosCredencialsParentesco_Emergencia: TStringField;
  qryEmpleadosCredencialsNumero_Emergencia: TStringField;
  qryEmpleadosCredencialbImagen: TBlobField;
  qryEmpleadosCredencialPuestoEmpleado: TStringField;
  zqryCartaRecomendacionIdPersonal: TIntegerField;
  zqryCartaRecomendacionsIdEmpleado: TStringField;
  zqryCartaRecomendacioniIdEstatus: TIntegerField;
  zqryCartaRecomendacionsNombreCompleto: TStringField;
  zqryCartaRecomendacionsRfc: TStringField;
  zqryCartaRecomendacionsCiudad: TStringField;
  zqryCartaRecomendacionsTelefono: TStringField;
  zqryCartaRecomendacionseMail: TStringField;
  zqryCartaRecomendaciondSueldo: TFloatField;
  zqryCartaRecomendacionsCuenta: TStringField;
  zqryCartaRecomendacionsCuentaInterbancaria: TStringField;
  zqryCartaRecomendacionsCurp: TStringField;
  zqryCartaRecomendacionsImss: TStringField;
  zqryCartaRecomendacionsEstadoCivil: TStringField;
  zqryCartaRecomendaciondFechaNacimiento: TDateField;
  zqryCartaRecomendacioniId_Puesto: TIntegerField;
  zqryCartaRecomendacionsLibretaMar: TStringField;
  zqryCartaRecomendacionsCartilla: TStringField;
  zqryCartaRecomendacionsCedulaProfesional: TStringField;
  zqryCartaRecomendacionsLugarNacimiento: TStringField;
  zqryCartaRecomendacionsTipoSangre: TStringField;
  zqryCartaRecomendacionlImprimeNomina: TStringField;
  zqryCartaRecomendacionlSexo: TStringField;
  zqryCartaRecomendacioniIdhorario: TIntegerField;
  zqryCartaRecomendacionidorganizacion: TIntegerField;
  zqryCartaRecomendacionsCP: TStringField;
  zqryCartaRecomendacionsApellidoPaterno: TStringField;
  zqryCartaRecomendacionsApellidoMaterno: TStringField;
  zqryCartaRecomendacionsNoCreditoInfonavit: TStringField;
  zqryCartaRecomendacioniIdProfesiones: TIntegerField;
  zqryCartaRecomendacionid_entidadeseducativas: TIntegerField;
  zqryCartaRecomendacionsTelefonoCelular: TStringField;
  zqryCartaRecomendacionsNombre_Emergencia: TStringField;
  zqryCartaRecomendacionsParentesco_Emergencia: TStringField;
  zqryCartaRecomendacionsNumero_Emergencia: TStringField;
  zqryCartaRecomendacionPuestoEmpleado: TStringField;
  pnlprincpdf: TPanel;
  pnl1: TPanel;
  EdtDesc: TLabel;
  EdtDEscripcion: TDBEdit;
  PnlPdf: TPanel;
  Panel10: TPanel;
  PdfRecordCount: TLabel;
  CBXPrevPdf: TCheckBox;
  PnlBarraNav: TPanel;
  BitBtnPost: TBitBtn;
  BitBtnFirst: TBitBtn;
  BitBtnNext: TBitBtn;
  BitBtnBack: TBitBtn;
  BitBtnLast: TBitBtn;
  BitBtnAdd: TBitBtn;
  BitBtnDel: TBitBtn;
  BitBtnEdit: TBitBtn;
  BitBtnCancel: TBitBtn;
  Splitter1: TSplitter;
  PnlTop: TPanel;
  PnlCent: TPanel;
  PnlBtn: TPanel;
  ZBlobPdf: TZQuery;
  ZBlobPdfiid: TIntegerField;
  ZBlobPdfsdescripcion: TStringField;
  ZBlobPdfbpdf: TBlobField;
  ZBlobPdfsidentificador: TStringField;
  ZBlobPdfsreferencia: TStringField;
  ZPdf: TZQuery;
  DsBPdf: TDataSource;
  PanelB1: TPanel;
  PanelB2: TPanel;
  Splitter2: TSplitter;
  lblRegPatronal: TLabel;
  cbRegPatronales: TDBLookupComboBox;
  btnRegP: TButton;
  zq_registrospatronalesiIdRegistroPatronal: TIntegerField;
  qryEmpleadosiIdRegistroPatronal: TIntegerField;
  zqryCartaRecomendacioniIdRegistroPatronal: TIntegerField;
  qryEmpleadosCredencialiIdRegistroPatronal: TIntegerField;
  DatosGenerales1: TMenuItem;
  frx_RegPatronales: TfrxDBDataset;
  frxDBModelo: TfrxDBDataset;
  dtFechainicio: TDateTimePicker;
  meses: TEdit;
  Label49: TLabel;
  Label50: TLabel;
  Label55: TLabel;
  CmdDetalleHorario: TButton;
  CmdDetallesPagos: TButton;
  ZQPeriodoiIdPeriodo: TIntegerField;
  CmdDetalleDescansos: TButton;
  TSDESCANSO: TDBLookupComboBox;
  qryEmpleadosiIdPeriodo: TIntegerField;
  qryEmpleadosCredencialiIdPeriodo: TIntegerField;
  zqDescanso: TZQuery;
  StringField6: TStringField;
  ds_descanso: TDataSource;
  zqDescansoiIdDiasdescanso: TIntegerField;
  qryEmpleadosiIdDiasDescanso: TIntegerField;
  btnHistorial: TBitBtn;
  Grid_Historial: tNewGroupBox;
  DBGrid2: TDBGrid;
  Button7: TButton;
    ZQEquiposporEmpleados1: TZQuery;
  IntegerField2: TIntegerField;
  IntegerField3: TIntegerField;
  StringField7: TStringField;
  DateField1: TDateField;
  DateField2: TDateField;
  StringField9: TStringField;
  StringField10: TStringField;
  StringField11: TStringField;
  StringField13: TStringField;
  StringField14: TStringField;
  StringField15: TStringField;
  StringField16: TStringField;
  dsZQEquiposporEmpleados1: TDataSource;
  dsProfesiones: TDataSource;
    INTERBANCARIA: TDBAdvEdit;
    zQPersonal: TZQuery;
    zQPersonalidpersonal: TIntegerField;
    zQPersonalcodigopersonal: TStringField;
    zQPersonalActivo: TStringField;
    zQPersonalNombres: TStringField;
    zQPersonalAPaterno: TStringField;
    zQPersonalAMaterno: TStringField;
    zQPersonalnumerosegurosocial: TStringField;
    zQPersonalcurp: TStringField;
    zQPersonalfechaalta: TDateField;
    zQPersonaltelefono: TStringField;
    zQPersonalgruposanguineo: TStringField;
    zQPersonalrfc: TStringField;
    zQPersonalcontacto: TStringField;
    zQPersonaltelefonocontacto: TStringField;
    zQPersonalCorreo: TStringField;
    zQPersonalCalle: TStringField;
    zQPersonalCiudad: TStringField;
    zQPersonalColonia: TStringField;
    zQPersonalCP: TStringField;
    zQPersonalEstado: TStringField;
    zQPersonalMunicipio: TStringField;
    zQPersonalNumero: TStringField;
    zQPersonalPais: TStringField;
    zQPersonalNumeroInfonavit: TStringField;
    zQPersonalfechanacimiento: TDateField;
    zQPersonalsexo: TStringField;
    zQ_Precontrato: TZQuery;
    zQPersonalEstadoCivil: TStringField;
    zQ_PrecontratosIdEmpleado: TStringField;
    zQ_Precontratostatus_contra: TStringField;
    zQPersonalidcargo: TIntegerField;
    zqConfiguracionRheNomina: TStringField;
    Contratar1: TMenuItem;
    TipoPersonal: TDBComboBox;
    Label64: TLabel;
    PanelBaja: TPanel;
    tNewGroupBox12: tNewGroupBox;
    Edtfechab: TDateEdit;
    LbNombre: TLabel;
    Label67: TLabel;
    Button16: TButton;
    Button11: TButton;
    Baja1: TMenuItem;
    cdBaja: TZQuery;
    ds_Puestos: TDataSource;
    zq_Puestos: TZQuery;
    cxGridViewRepository1: TcxGridViewRepository;
    BView_Puestos: TcxGridDBBandedTableView;
    BView_PuestossPuesto1: TcxGridDBBandedColumn;
    z: TEdit;
    ds_historialcontrato: TDataSource;
    zqHistorial: TZQuery;
    zqHistorialiIdContrato: TIntegerField;
    zqHistorialsIdEmpleado: TStringField;
    zqHistorialdFechaInicio: TDateField;
    zqHistorialdFechaTermino: TDateField;
    zqHistorialsTipoContrato: TStringField;
    zqHistorialsPeriodoLaboral: TStringField;
    zqHistorialsIdGuardia: TStringField;
    USqlEmpleados: TZUpdateSQL;
    Grid_empleados: TcxGrid;
    BView_Empleados: TcxGridDBTableView;
    Grid_empleadosLevel1: TcxGridLevel;
    BView_EmpleadossIdEmpleado: TcxGridDBColumn;
    BView_EmpleadossNombreCompleto: TcxGridDBColumn;
    BView_EmpleadossApellidoPaterno: TcxGridDBColumn;
    BView_EmpleadossApellidoMaterno: TcxGridDBColumn;
    BView_EmpleadosDescripcionPuesto: TcxGridDBColumn;
    BView_Empleadosdepartamento: TcxGridDBColumn;
    BView_EmpleadosEstatus: TcxGridDBColumn;
    BView_Empleadosprofesion: TcxGridDBColumn;
    BView_EmpleadossBanco: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    fsc_AsEmpleados: TFormAutoScaler;
    tNewGroupBox11: tNewGroupBox;
    ListBox1: TListBox;
    Button10: TButton;
    Button12: TButton;
    Button14: TButton;
    Panel4: TPanel;
    cdDetalleNom: TZQuery;
    cdDetalleNomImporte: TFloatField;
    Pendiente: TcxStyle;
    Contratado: TcxStyle;
    NoContratado: TcxStyle;
    BView_EmpleadossStatusPersonal: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label69: TLabel;
    Label68: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    tsSucursal: TDBEdit;
    BView_PuestosColumn1: TcxGridDBBandedColumn;
    BView_PuestosColumn2: TcxGridDBBandedColumn;
    BView_EmpleadossStatusTipoPersonal: TcxGridDBColumn;
    BView_EmpleadossCuenta: TcxGridDBColumn;
    BView_EmpleadossCuentaInterbancaria: TcxGridDBColumn;
    BView_EmpleadosiId_Puesto: TcxGridDBColumn;
    BView_Empleadosidorganizacion: TcxGridDBColumn;
    BView_EmpleadosiIdRegistroPatronal: TcxGridDBColumn;
    BView_EmpleadossImss: TcxGridDBColumn;
    BView_EmpleadossCurp: TcxGridDBColumn;
    BView_EmpleadossCalle: TcxGridDBColumn;
    BView_EmpleadossColonia: TcxGridDBColumn;
    BView_EmpleadossEstado: TcxGridDBColumn;
    BView_EmpleadossLocalidad: TcxGridDBColumn;
    BView_EmpleadossNumero: TcxGridDBColumn;
    BView_EmpleadossPais: TcxGridDBColumn;
    BView_EmpleadosdFechaInicioLabores: TcxGridDBColumn;
    BView_EmpleadosdFechaTerminoLabores: TcxGridDBColumn;
    BView_EmpleadossTelefono: TcxGridDBColumn;
    BView_EmpleadossTelefonoCelular: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    ImageList1: TImageList;
    zQEmpleadosIdPersonal: TIntegerField;
    zQEmpleadossIdEmpleado: TStringField;
    zQEmpleadosiIdEstatus: TIntegerField;
    zQEmpleadossNombreCompleto: TStringField;
    zQEmpleadossRfc: TStringField;
    zQEmpleadossCiudad: TStringField;
    zQEmpleadossTelefono: TStringField;
    zQEmpleadosseMail: TStringField;
    zQEmpleadosdSueldo: TFloatField;
    zQEmpleadossCuenta: TStringField;
    zQEmpleadossSucursal: TStringField;
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
    zQEmpleadosiIdRegistroPatronal: TIntegerField;
    zQEmpleadossTipoSangre: TStringField;
    zQEmpleadoslImprimeNomina: TStringField;
    zQEmpleadoslSexo: TStringField;
    zQEmpleadosiIdPeriodo: TIntegerField;
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
    zQEmpleadosiIdDiasDescanso: TIntegerField;
    zQEmpleadossCalle: TStringField;
    zQEmpleadossColonia: TStringField;
    zQEmpleadossEstado: TStringField;
    zQEmpleadossLocalidad: TStringField;
    zQEmpleadossNumero: TStringField;
    zQEmpleadossStatusTipoPersonal: TStringField;
    zQEmpleadossStatusPersonal: TStringField;
    zQEmpleadosCodigoCargo: TStringField;
    zQEmpleadosDescripcionPuesto: TStringField;
    zQEmpleadosEstatus: TStringField;
    zQEmpleadosDepartamento: TStringField;
    zQEmpleadosProfesion: TStringField;
    pgQR: TNxTabSheet;
    zqConfiguracionRhsDomicilio_Firmante1: TStringField;
    zqConfiguracionRhsDomicilio_Firmante2: TStringField;
    zqConfiguracionRhsNotario: TStringField;
    zqConfiguracionRhsDomicilio_Notario: TStringField;
    zqConfiguracionRhsPostulanteMasc: TStringField;
    zqConfiguracionRhiPostulanteConsec: TLargeintField;
    zqConfiguracionRhsEmpleadoMasc: TStringField;
    zqConfiguracionRhiEmpleadoConsec: TLargeintField;
    zqConfiguracionRheQR: TStringField;
    PreviewScrollBox: TScrollBox;
    imgPreview: TImage;
    cmbZoom: TcxComboBox;
    rxCredencialessTelefonoCel_1: TStringField;
    rxCredencialessTelefonoCel_2: TStringField;
    rxCredencialessTelefonoCel_3: TStringField;
    rxCredencialessTelefonoCel_4: TStringField;
    rxCredencialessTelefonoCel_5: TStringField;
    rxCredencialesbQr_1: TBlobField;
    rxCredencialesbQr_2: TBlobField;
    rxCredencialesbQr_3: TBlobField;
    rxCredencialesbQr_4: TBlobField;
    rxCredencialesbQr_5: TStringField;
    qryEmpleadosCredencialbQR: TBlobField;
    rxCredencialesdVigencia: TDateField;
    Label26: TLabel;
    cmbOrganizacion: TDBLookupComboBox;
    ds_organizacion: TDataSource;
    QryOrganizacion: TZReadOnlyQuery;
    ds_organizacionDatos: TDataSource;
    QryOrganizacionDatos: TZReadOnlyQuery;
    btnLibretasVencidas: TBitBtn;
    tmrLibretasVencidas: TTimer;
    qryEmpleadosCredencialsCalle: TStringField;
    qryEmpleadosCredencialsNumero: TStringField;
    qryEmpleadosCredencialsEstado: TStringField;
    qryEmpleadosCredencialsColonia: TStringField;
    zQDepartamentosiddepartamento: TIntegerField;
    zQDepartamentostitulodepartamento: TStringField;
    zQEmpleadosiddepartamento: TIntegerField;
    zQDepartamentosidorganizacion: TIntegerField;
    qryEmpleadosCredencialiddepartamento: TIntegerField;
    qryEmpleadosiddepartamento: TIntegerField;
    zqryCartaRecomendacioniddepartamento: TIntegerField;
    qryEmpleadosCredencialtitulodepartamento: TStringField;
    cmdVerFoto: TcxButton;
    BtnTallas: TcxButton;
    tNewGroupBox14: tNewGroupBox;
    AdvGlowButton3: TAdvGlowButton;
    Label18: TLabel;
    ESTADOCIV: TDBComboBox;
    Label19: TLabel;
    NACIMIENTO: TDBDateEdit;
    Label43: TLabel;
    dbiEdad: TRxCalcEdit;
    dblSexo: TDBComboBox;
    Label17: TLabel;
    Label11: TLabel;
    dbPuesto: TcxDBExtLookupComboBox;
    btnPuestos: TButton;
    Label33: TLabel;
    tsOrganizacion: TDBLookupComboBox;
    tsIdEmpleado: TDBEdit;
    Label1: TLabel;
    Label56: TLabel;
    Label2: TLabel;
    tsNombre: TDBEdit;
    tsApellidoM: TDBEdit;
    Label57: TLabel;
    tsApellidoP: TDBEdit;
    Label5: TLabel;
    tsCalle: TDBEdit;
    Label62: TLabel;
    num: TDBEdit;
    Label53: TLabel;
    tsCP: TDBEdit;
    tsColonia: TDBEdit;
    Label73: TLabel;
    Label72: TLabel;
    tsLocalidad: TDBEdit;
    Label7: TLabel;
    tsCiudad: TDBEdit;
    Label75: TLabel;
    tsEstado: TDBEdit;
    Label74: TLabel;
    Label28: TLabel;
    tsTelefono: TDBEdit;
    Label9: TLabel;
    tsTelefonoCelular: TDBEdit;
    btnDepartamentos: TButton;
    Label8: TLabel;
    tNewGroupBox15: tNewGroupBox;
    Label24: TLabel;
    Label23: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    LNACIMIENTO: TDBEdit;
    CEDULA: TDBEdit;
    IMSS: TDBEdit;
    CURP: TDBEdit;
    CARTILLA: TDBEdit;
    Label22: TLabel;
    tNewGroupBox10: tNewGroupBox;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label41: TLabel;
    Nombre_Emer: TDBEdit;
    Parentesco_Emer: TDBEdit;
    Telefono_Emer: TDBEdit;
    tsTipoSangre: TDBEdit;
    Label15: TLabel;
    RFC: TDBEdit;
    tNewGroupBox8: tNewGroupBox;
    Label21: TLabel;
    INICIOLAB: TDateEdit;
    RxDBGrid1: TRxDBGrid;
    btnHist: TButton;
    Label54: TLabel;
    tsNoCreditoInfonavit: TDBEdit;
    tsPais: TDBLookupComboBox;
    ds_pais: TDataSource;
    zqPais: TZReadOnlyQuery;
    zQEmpleadosiIdNacionalidad: TIntegerField;
    qryEmpleadosCredencialiIdNacionalidad: TIntegerField;
    qryEmpleadosiIdNacionalidad: TIntegerField;
    zqryCartaRecomendacioniIdNacionalidad: TIntegerField;
    zQEmpleadoscalculado1: TIntegerField;
    dlgWord: TJvOpenDialog;
    zqBlobWord: TZQuery;
    Panel12: TPanel;
    Panel13: TPanel;
    tNewGroupBox13: tNewGroupBox;
    Panel9: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    imgQR: TcxImage;
    Panel14: TPanel;
    zWord: TZQuery;
    btnWordAdd: TBitBtn;
    dsWord: TDataSource;
    btnWordCancel: TBitBtn;
    btnWordPost: TBitBtn;
    btnWordDel: TBitBtn;
    dbDescripcionWord: TDBEdit;
    Label34: TLabel;
    btnWordEdit: TBitBtn;
    pnlWord: TPanel;
    DBNavigator1: TDBNavigator;
    btnExportaWord: TButton;
    dlgSaveWord: TJvSaveDialog;
    ImprimirCurriculum1: TMenuItem;
    qrCurriculum: TZReadOnlyQuery;
    frxdbCirruculum: TfrxDBDataset;
    qrCurriculumsNombreCompleto: TStringField;
    qrCurriculumsApellidoPaterno: TStringField;
    qrCurriculumsApellidoMaterno: TStringField;
    qrCurriculumsRfc: TStringField;
    qrCurriculumsEstado: TStringField;
    qrCurriculumsCiudad: TStringField;
    qrCurriculumsCalle: TStringField;
    qrCurriculumsLocalidad: TStringField;
    qrCurriculumsNumero: TStringField;
    qrCurriculumsTelefono: TStringField;
    qrCurriculumsTelefonoCelular: TStringField;
    qrCurriculumseMail: TStringField;
    qrCurriculumsCurp: TStringField;
    qrCurriculumsImss: TStringField;
    qrCurriculumsEstadoCivil: TStringField;
    qrCurriculumdFechaNacimiento: TDateField;
    qrCurriculumsLibretaMar: TStringField;
    qrCurriculumsCartilla: TStringField;
    qrCurriculumsLugarNacimiento: TStringField;
    qrCurriculumsTipoSangre: TStringField;
    qrCurriculumlSexo: TStringField;
    qrCurriculumsCP: TStringField;
    qrCurriculumcodigocargo: TStringField;
    qrCurriculumtitulocargo: TStringField;
    qrCurriculumsTipo: TStringField;
    qrCurriculumbImagen: TBlobField;
    qrImagenPersonal: TZReadOnlyQuery;
    qrImagenPersonalbImagen: TBlobField;
    frxdbImagenPersonal: TfrxDBDataset;
    qrCurriculumsColonia: TStringField;
    zQPersonalidpostulante: TIntegerField;
    cmdVigencias: TBitBtn;
    tsListaDoctos: TRxCheckListBox;
    zQEmpleadosdSueldoIntegrado: TFloatField;
    rxCredencialessNombre_emergencia_1: TStringField;
    rxCredencialessNumero_emergencia_1: TStringField;
    rxCredencialessApellidos_1: TStringField;
    zQEmpleadosdSueldoDiario: TFloatField;
    tdBanco: TDBLookupComboBox;
    cmdBancos: TButton;
    ds_bancos: TDataSource;
    zqBancos: TZReadOnlyQuery;
    zQEmpleadossIdBanco: TStringField;
    grid_Comunidades: TcxGrid;
    BView_areas: TcxGridDBTableView;
    eIncluye: TcxGridDBColumn;
    sDescripcion: TcxGridDBColumn;
    grid_ComunidadesLevel1: TcxGridLevel;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1CheckBoxItem1: TcxEditRepositoryCheckBoxItem;
    btnUp: TAdvGlowButton;
    btnDown: TAdvGlowButton;
    cmdExperiencia: TBitBtn;
    cmdCompactar: TBitBtn;
    frxExperiencia: TfrxDBDataset;
    zqExperiencia: TZReadOnlyQuery;
    zqExperienciaidPersonal: TIntegerField;
    zqExperienciasEmpresa: TStringField;
    zqExperienciasPuesto: TStringField;
    zqExperienciadFechaInicio: TDateField;
    zqExperienciadFechaFinal: TDateField;
    zqExperienciamDescripcion: TMemoField;
    qrCurriculumsDescripcion: TStringField;
    btnImagen: TBitBtn;
    dtfldQEmpleadosdFechaInicioLabores: TDateField;
    dtfldQEmpleadosdFechaTerminoLabores: TDateField;
    tcxRfc: TcxGridDBColumn;
    dlgOpenPDF: TOpenDialog;
    btnPrevisualizarPDF: TBitBtn;
    BView_EmpleadosColumn2: TcxGridDBColumn;
    BView_EmpleadosColumn3: TcxGridDBColumn;

    BView_EmpleadosdSueldo: TcxGridDBColumn;
    BView_EmpleadosdSueldoIntegrado: TcxGridDBColumn;
    BView_EmpleadosdSueldodiario: TcxGridDBColumn;
    intgrfldQDepartamentosIdPadre: TIntegerField;
    tsIdDepartamento_beta: TdxDBLookupTreeView;
    tsIdDepartamento: TcxDBLookupComboBox;
    lbl1: TLabel;
    strngfldQEmpleadossCc: TStringField;
    cxgrdbclmnBView_EmpleadosColumn1: TcxGridDBColumn;
    strngfldEmpleadossCalle: TStringField;
    strngfldEmpleadossNumero: TStringField;
    strngfldEmpleadossColonia: TStringField;
    strngfldEmpleadossLocalidad: TStringField;
    strngfldEmpleadossEstado: TStringField;
    qryEmpleadosdSueldoIntegrado: TFloatField;
    qryEmpleadosdSueldoDiario: TFloatField;
    strngfldEmpleadossIdBanco: TStringField;
    strngfldEmpleadossSucursal: TStringField;
    strngfldEmpleadossStatusTipoPersonal: TStringField;
    strngfldEmpleadossStatusPersonal: TStringField;
    strngfldEmpleadossCc: TStringField;
    intgrfldEmpleadosiddepartamento_1: TIntegerField;
    intgrfldEmpleadosIdOrganizacion_1: TIntegerField;
    strngfldEmpleadoscodigodepartamento: TStringField;
    strngfldEmpleadosEtiqueta: TStringField;
    strngfldEmpleadostitulodepartamento: TStringField;
    anexo_Empleadosdescripcion: TBlobField;
    anexo_Empleadoscomentarios: TBlobField;
    intgrfldEmpleadosidarbol: TIntegerField;
    intgrfldEmpleadosidpadre: TIntegerField;
    smlntfldEmpleadosnivel: TSmallintField;
    strngfldEmpleadosherencia: TStringField;
    strngfldEmpleadosactivo: TStringField;
    tscentrodecostos: TDBEdit;
    Mail: TDBEdit;
    lbl3: TLabel;
    zq_EquiposPorEmpleadodCantidad: TIntegerField;
    zq_EquiposPorEmpleadosNombreRecibe: TStringField;
    zq_EquiposPorEmpleadodescripcion: TStringField;
    zq_EquiposPorEmpleadosNumeroserie: TStringField;
    zqRptEntregaEquiposModelo: TStringField;
    zqRptEntregaEquiposIdMarca: TStringField;
    zqRptEntregaEquiposNombreRecibe: TStringField;
    zqRptEntregaEquipodCantidad: TIntegerField;
    zqRptEntregaEquipodescripcion: TStringField;
    ZQEquiposporEmpleados1sNombreRecibe: TStringField;
    ZQEquiposporEmpleados1dCantidad: TIntegerField;
    ZQEquiposporEmpleados1descripcion: TStringField;
    ZQEquiposporEmpleados1sNumeroserie: TStringField;
    ZQEquiposporEmpleados1sIdMarca: TStringField;
    cdStatus: TClientDataSet;
    cdStatussIdEmpleado: TStringField;
    cdStatussNombreCompleto: TStringField;
    cdStatussApellidoPaterno: TStringField;
    cdStatussApellidoMaterno: TStringField;
    cdStatusDescripcionPuesto: TStringField;
    cdStatusdepartamento: TStringField;
    cdStatusEstatus: TStringField;
    cdStatusprofesion: TStringField;
    cdStatussBanco: TStringField;
    cdStatusnacionalidad: TStringField;
    cdStatussInfonavit: TStringField;
    cdStatussStatusTipoPersonal: TStringField;
    cdStatussCuenta: TStringField;
    cdStatussCuentaInterbancaria: TStringField;
    cdStatusiId_Puesto: TIntegerField;
    cdStatusidorganizacion: TIntegerField;
    cdStatusiIdRegistroPatronal: TIntegerField;
    cdStatussImss: TStringField;
    cdStatussCurp: TStringField;
    cdStatussCalle: TStringField;
    cdStatussColonia: TStringField;
    cdStatussEstado: TStringField;
    cdStatussLocalidad: TStringField;
    cdStatussNumero: TStringField;
    cdStatussPais: TStringField;
    cdStatusdFechaInicioLabores: TStringField;
    cdStatusdFechaTerminoLabores: TStringField;
    cdStatussTelefono: TStringField;
    cdStatussTelefonoCelular: TStringField;
    cdStatussRegistroPatronal: TStringField;
    cdStatustitulodepartamento: TStringField;
    cdStatusdescripcion: TStringField;
    strngfldStatussRfc: TStringField;
    fltfldStatusdSueldo: TFloatField;
    fltfldStatusdSueldoIntegrado: TFloatField;
    fltfldStatusdSueldoDiario: TFloatField;
    zqRptEntregaEquiposMedida: TStringField;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure tsIdEmpleadoKeyPress(Sender: TObject; var Key: Char);
  procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
  procedure tsCalleKeyPress(Sender: TObject; var Key: Char);
  procedure tsIdDepartamentoKeyPress(Sender: TObject; var Key: Char);
  procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);

  procedure tsPuestoKeyPress(Sender: TObject; var Key: Char);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnPrinterClick(Sender: TObject);
  procedure btnAddClick(Sender: TObject);
  procedure zQEmpleadosAfterScroll(DataSet: TDataSet);
  procedure btnDeleteClick(Sender: TObject);
  procedure btnPrinterClick(Sender: TObject);
  procedure Imprimircartaresponsiva1Click(Sender: TObject);
  procedure btnPreviewClick(Sender: TObject);
  procedure ReporteFotograficoAfterCancel(DataSet: TDataSet);
  procedure ReporteFotograficoAfterDelete(DataSet: TDataSet);
  procedure ReporteFotograficoAfterEdit(DataSet: TDataSet);
  procedure ReporteFotograficoBeforeInsert(DataSet: TDataSet);
  procedure ReporteFotograficoAfterScroll(DataSet: TDataSet);
  procedure ReporteFotograficoBeforeDelete(DataSet: TDataSet);
  procedure ReporteFotograficoBeforeEdit(DataSet: TDataSet);
  procedure ReporteFotograficoBeforePost(DataSet: TDataSet);
  procedure ReporteFotograficoAfterInsert(DataSet: TDataSet);
  procedure zq_EquiposPorEmpleadoAfterScroll(DataSet: TDataSet);
  procedure IMPRESIONEMPLEADOS1Click(Sender: TObject);
  procedure IMPRESIONSUELDOS1Click(Sender: TObject);
  procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
  procedure CUENTAKeyPress(Sender: TObject; var Key: Char);
  procedure BANCOKeyPress(Sender: TObject; var Key: Char);
  procedure INTERBANCARIAKeyPress(Sender: TObject; var Key: Char);
  procedure dbLaboraKeyPress(Sender: TObject; var Key: Char);
  procedure LNACIMIENTOKeyPress(Sender: TObject; var Key: Char);
  procedure CARRERAKeyPress(Sender: TObject; var Key: Char);
  procedure MailKeyPress(Sender: TObject; var Key: Char);
  procedure IMSSKeyPress(Sender: TObject; var Key: Char);
  procedure RFCKeyPress(Sender: TObject; var Key: Char);
  procedure NACIONALIDADKeyPress(Sender: TObject; var Key: Char);
  procedure ESTADOCIVKeyPress(Sender: TObject; var Key: Char);
  procedure INICIOLABKeyPress(Sender: TObject; var Key: Char);
  procedure sLibretaMarKeyPress(Sender: TObject; var Key: Char);
  procedure MostrarSoportesEmpleados1Click(Sender: TObject);
  procedure CargaTabladePrestaciones;
  procedure CargaTabladeDeducciones;
  procedure zQEmpleadosdSalarioDiarioChange(Sender: TField);
  procedure zQEmpleadosdFactorIntegracionChange(Sender: TField);
  procedure zQEmpleadosdPromedioVariablesChange(Sender: TField);
  procedure IntegridadReferencial(IdEmpleado,TablaForanea,Operacion:string);
  procedure CalcularSalarioDiario;
  procedure bImagen_Click(Sender: TObject);
  procedure ImprimirCartaResponsiva2Click(Sender: TObject);
  procedure IGetValue(const VarName: string; var Value: Variant);
  procedure Btn_ReporteCartaRecomendacionClick(Sender: TObject);
  procedure ImprimirCartadeRecomendacin1Click(Sender: TObject);
  procedure btnperiodoClick(Sender: TObject);
  procedure btnhorariosClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure AdvGlowButton1Click(Sender: TObject);
  procedure ReporteFotograficoAfterPost(DataSet: TDataSet);
  procedure LiquidacionyFiniquito1Click(Sender: TObject);
  procedure FormResize(Sender: TObject);
  procedure tsIdDepartamentoEnter(Sender: TObject);
  procedure tsIdDepartamentoExit(Sender: TObject);
  procedure tsIdEmpleadoExit(Sender: TObject);
  procedure tsIdEmpleadoEnter(Sender: TObject);
  procedure tsNombreEnter(Sender: TObject);
  procedure tsNombreExit(Sender: TObject);
  procedure tsCalleEnter(Sender: TObject);
  procedure tsCalleExit(Sender: TObject);
  procedure tsCiudadEnter(Sender: TObject);
  procedure tsCiudadExit(Sender: TObject);
  procedure dbPuestoEnter(Sender: TObject);
  procedure dbPuestoExit(Sender: TObject);
  procedure CUENTAExit(Sender: TObject);
  procedure CUENTAEnter(Sender: TObject);
  procedure BANCOEnter(Sender: TObject);
  procedure BANCOExit(Sender: TObject);
  procedure INTERBANCARIAEnter(Sender: TObject);
  procedure INTERBANCARIAExit(Sender: TObject);

  procedure tsEstatusEnter(Sender: TObject);
  procedure tsEstatusExit(Sender: TObject);
  procedure LNACIMIENTOExit(Sender: TObject);
  procedure LNACIMIENTOEnter(Sender: TObject);
  procedure tsTelefonoEnter(Sender: TObject);
  procedure tsTelefonoExit(Sender: TObject);
  procedure MailEnter(Sender: TObject);
  procedure MailExit(Sender: TObject);
  procedure CURPEnter(Sender: TObject);
  procedure CURPExit(Sender: TObject);
  procedure IMSSEnter(Sender: TObject);
  procedure IMSSExit(Sender: TObject);
  procedure RFCEnter(Sender: TObject);
  procedure RFCExit(Sender: TObject);
  procedure ESTADOCIVEnter(Sender: TObject);
  procedure ESTADOCIVExit(Sender: TObject);
  procedure NACIMIENTOEnter(Sender: TObject);
  procedure NACIMIENTOExit(Sender: TObject);
  procedure INICIOLABEnter(Sender: TObject);
  procedure INICIOLABExit(Sender: TObject);
  procedure sLibretaMarEnter(Sender: TObject);
  procedure sLibretaMarExit(Sender: TObject);
  procedure CARTILLAEnter(Sender: TObject);
  procedure CARTILLAExit(Sender: TObject);
  procedure CEDULAEnter(Sender: TObject);
  procedure CEDULAExit(Sender: TObject);
  procedure dblSexoEnter(Sender: TObject);
  procedure dblSexoExit(Sender: TObject);
  procedure DBLCHorariosEnter(Sender: TObject);
  procedure DBLCHorariosExit(Sender: TObject);
  procedure dbiEdadEnter(Sender: TObject);
  procedure dbiEdadExit(Sender: TObject);
  procedure dblcxperiodoEnter(Sender: TObject);
  procedure dblcxperiodoExit(Sender: TObject);
  procedure tsDescansoEnter(Sender: TObject);
  procedure tsDescansoExit(Sender: TObject);
  procedure Grid_empleadosGetCellParams(Sender: TObject; Field: TField;
    AFont: TFont; var Background: TColor; Highlight: Boolean);
  procedure dbPuestoKeyPress(Sender: TObject; var Key: Char);
  procedure tsEstatusKeyPress(Sender: TObject; var Key: Char);
  procedure tsNombreEntregaKeyPress(Sender: TObject; var Key: Char);
  procedure tsNombreEntregaEnter(Sender: TObject);
  procedure tsNombreEntregaExit(Sender: TObject);
  procedure tsNombreAutorizaKeyPress(Sender: TObject; var Key: Char);
  procedure tsNombreAutorizaEnter(Sender: TObject);
  procedure tsNombreAutorizaExit(Sender: TObject);
  procedure CredenciaAbordo1Click(Sender: TObject);
  procedure Btn_ReporteCredencialesClick(Sender: TObject);
  procedure CredencialTierra1Click(Sender: TObject);
  procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  procedure cmdCompactarClick(Sender: TObject);
  procedure pgDatosChange(Sender: TObject);
  procedure tsCPEnter(Sender: TObject);
  procedure tsCPExit(Sender: TObject);
  procedure tsCPKeyPress(Sender: TObject; var Key: Char);
  procedure tsApellidoPKeyPress(Sender: TObject; var Key: Char);
  procedure tsApellidoMKeyPress(Sender: TObject; var Key: Char);
  procedure dbInfonavitKeyPress(Sender: TObject; var Key: Char);
  procedure tsApellidoPEnter(Sender: TObject);
  procedure tsApellidoPExit(Sender: TObject);
  procedure tsApellidoMExit(Sender: TObject);
  procedure tsApellidoMEnter(Sender: TObject);
  procedure tsNoCreditoInfonavitExit(Sender: TObject);
  procedure tsNoCreditoInfonavitEnter(Sender: TObject);
  procedure CEDULAKeyPress(Sender: TObject; var Key: Char);
  procedure dblSexoKeyPress(Sender: TObject; var Key: Char);
  procedure DBLCHorariosKeyPress(Sender: TObject; var Key: Char);
  procedure tsTipoSangreKeyPress(Sender: TObject; var Key: Char);
  procedure dblcxperiodoKeyPress(Sender: TObject; var Key: Char);
  procedure tsTipoSangreEnter(Sender: TObject);
  procedure tsTipoSangreExit(Sender: TObject);
  procedure tsDescansoKeyPress(Sender: TObject; var Key: Char);
  procedure TERMINOLABKeyPress(Sender: TObject; var Key: Char);
  procedure Insertar1Click(Sender: TObject);
  procedure Editar1Click(Sender: TObject);
  procedure Salir1Click(Sender: TObject);
  procedure btnDepartamentosClick(Sender: TObject);
  procedure btnPuestosClick(Sender: TObject);
  procedure btnEstatusClick(Sender: TObject);
  procedure btnCancelarCartaRecClick(Sender: TObject);
  procedure btnSueldosClick(Sender: TObject);
  procedure PageControl2Change(Sender: TObject);


  procedure Button2Click(Sender: TObject);
  procedure Button3Click(Sender: TObject);
  procedure dbEntidadEducativaEnter(Sender: TObject);
  procedure dbEntidadEducativaExit(Sender: TObject);
  procedure dbEntidadEducativaKeyPress(Sender: TObject; var Key: Char);
  procedure dbProfesionesEnter(Sender: TObject);
  procedure dbProfesionesExit(Sender: TObject);
  procedure dbProfesionesKeyPress(Sender: TObject; var Key: Char);
  procedure dblSexoChange(Sender: TObject);
  procedure tsTelefonoCelularKeyPress(Sender: TObject; var Key: Char);
  procedure tsTelefonoCelularEnter(Sender: TObject);
  procedure tsTelefonoCelularExit(Sender: TObject);
  procedure tsCalleChange(Sender: TObject);
  procedure ImprimirReportedeIncidencias1Click(Sender: TObject);
  procedure ReportedeIncidencias1Click(Sender: TObject);
  procedure Imprimir1Click(Sender: TObject);
  procedure ReportePDFAfterCancel(DataSet: TDataSet);
  procedure BitBtnDelClick(Sender: TObject);
  procedure BitBtnEditClick(Sender: TObject);
  procedure CBXPrevPdfClick(Sender: TObject);

  procedure BitBtnUpClick(Sender: TObject);
  procedure BitBtnPostClick(Sender: TObject);
  procedure BitBtnCancelClick(Sender: TObject);
  procedure BitBtnFirstClick(Sender: TObject);
  procedure BitBtnBackClick(Sender: TObject);
  procedure BitBtnNextClick(Sender: TObject);
  procedure BitBtnLastClick(Sender: TObject);
  procedure ZPdfAfterRefresh(DataSet: TDataSet);
  procedure ZPdfAfterScroll(DataSet: TDataSet);
  procedure ZBlobPdfAfterCancel(DataSet: TDataSet);
  procedure ZBlobPdfAfterPost(DataSet: TDataSet);
  procedure ZBlobPdfBeforeEdit(DataSet: TDataSet);
  procedure ZBlobPdfBeforeInsert(DataSet: TDataSet);
  procedure btnRegPClick(Sender: TObject);
  procedure DatosGenerales1Click(Sender: TObject);
  procedure Button11Click(Sender: TObject);
  procedure mesesKeyPress(Sender: TObject; var Key: Char);
  procedure CmdDetalleHorarioClick(Sender: TObject);
  procedure CmdDetallesPagosClick(Sender: TObject);
  procedure cbRegPatronalesKeyPress(Sender: TObject; var Key: Char);
  procedure cbRegPatronalesEnter(Sender: TObject);
  procedure cbRegPatronalesExit(Sender: TObject);
  procedure Nombre_EmerKeyPress(Sender: TObject; var Key: Char);
  procedure Nombre_EmerEnter(Sender: TObject);
  procedure Nombre_EmerExit(Sender: TObject);
  procedure Parentesco_EmerKeyPress(Sender: TObject; var Key: Char);
  procedure Parentesco_EmerEnter(Sender: TObject);
  procedure Parentesco_EmerExit(Sender: TObject);
  procedure Telefono_EmerEnter(Sender: TObject);
  procedure Telefono_EmerExit(Sender: TObject);
  procedure CmdDetalleDescansosClick(Sender: TObject);
  procedure txtCuentasContablesKeyPress(Sender: TObject; var Key: Char);
  procedure btnHistorialClick(Sender: TObject);
  procedure Button7Click(Sender: TObject);
    procedure dPensionAlimenticiaKeyPress(Sender: TObject; var Key: Char);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Grid_empleadosDblClick(Sender: TObject);
    procedure numEnter(Sender: TObject);
    procedure numExit(Sender: TObject);
    procedure numKeyPress(Sender: TObject; var Key: Char);
    procedure Button15Click(Sender: TObject);
    procedure Contratar1Click(Sender: TObject);
    procedure StatusPersonalChange(Sender: TObject);
    procedure Baja1Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure contratar;
    procedure BView_EmpleadosDblClick(Sender: TObject);
    procedure obtenerneto(empleado: Variant);
    procedure cxDbGridTablaStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure cmddetallecuentaClick(Sender: TObject);
    procedure tscuentamaestroKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure IraCatalogoCuentasClick(Sender: TObject);
    procedure tsColoniaKeyPress(Sender: TObject; var Key: Char);
    procedure tsLocalidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsPaisKeyPress(Sender: TObject; var Key: Char);
    procedure tsColoniaEnter(Sender: TObject);
    procedure tsLocalidadEnter(Sender: TObject);
    procedure tsEstadoEnter(Sender: TObject);
    procedure tsPaisEnter(Sender: TObject);
    procedure tsColoniaExit(Sender: TObject);
    procedure tsLocalidadExit(Sender: TObject);
    procedure tsEstadoExit(Sender: TObject);
    procedure tsPaisExit(Sender: TObject);


    procedure CARTILLAKeyPress(Sender: TObject; var Key: Char);
    procedure tsSucursalKeyPress(Sender: TObject; var Key: Char);
    procedure TipoPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnHistClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure imgQRClick(Sender: TObject);
    procedure ZPdfAfterCancel(DataSet: TDataSet);
    procedure ZPdfAfterDelete(DataSet: TDataSet);
    procedure ZPdfAfterInsert(DataSet: TDataSet);
    procedure ZPdfAfterPost(DataSet: TDataSet);
    procedure ZPdfAfterOpen(DataSet: TDataSet);

    procedure Inserta_nuc_personal;
    procedure cmdVigenciasClick(Sender: TObject);
    procedure BtnTallasClick(Sender: TObject);
    procedure tsOrganizacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsOrganizacionEnter(Sender: TObject);
    procedure tsOrganizacionExit(Sender: TObject);
    procedure tmrLibretasVencidasTimer(Sender: TObject);
    procedure btnLibretasVencidasClick(Sender: TObject);
    procedure ds_organizacionDataChange(Sender: TObject; Field: TField);
    procedure ds_organizacionDatosDataChange(Sender: TObject; Field: TField);
    procedure CURPKeyPress(Sender: TObject; var Key: Char);
    procedure tsNoCreditoInfonavitKeyPress(Sender: TObject; var Key: Char);
    procedure edtLibretaMarKeyPress(Sender: TObject; var Key: Char);
    procedure dszQEmpleadosDataChange(Sender: TObject; Field: TField);

    procedure ActualizaLibretas;
    procedure ActualizaCuenta;
    function  ValidaDoctos : boolean;
    procedure OrdenarImagenes(sParamOrden : string);
    procedure btnWordAddClick(Sender: TObject);
    procedure btnWordCancelClick(Sender: TObject);
    procedure btnWordPostClick(Sender: TObject);
    procedure btnWordDelClick(Sender: TObject);
    procedure btnWordEditClick(Sender: TObject);
    procedure btnExportaWordClick(Sender: TObject);
    procedure zWordAfterOpen(DataSet: TDataSet);
    procedure zWordAfterRefresh(DataSet: TDataSet);
    procedure ImprimirCurriculum1Click(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);

    procedure NACIMIENTOKeyPress(Sender: TObject; var Key: Char);

    procedure cmdBancosClick(Sender: TObject);
    procedure tdBancoEnter(Sender: TObject);
    procedure tdBancoExit(Sender: TObject);
    procedure tdBancoKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenDblClick(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure cmdExperienciaClick(Sender: TObject);
    procedure Panel4MouseEnter(Sender: TObject);
    procedure Panel4MouseLeave(Sender: TObject);
    procedure btnPrevisualizarPDFClick(Sender: TObject);
    procedure ImprimirSalariosClick(Sender: TObject);
    procedure tscentrodecostosKeyPress(Sender: TObject; var Key: Char);
    procedure cdStatusCalcFields(DataSet: TDataSet);
    procedure BitBtnAddClick(Sender: TObject);

private

  ListaCampos:TstringList;

  sIArchivo1: String;

  //pdf
  DirTemp:string;
  ViewPrintQP: TDebenuPDFLibrary;
  ViewPrintPageNum: Integer;
  procedure LoadFilePdf(sFile: TFilename; var ViewPrintParam: TDebenuPDFLibrary);
  procedure RenderPage;
  Procedure LoadFileJPEG(sFile:TFilename);
  Procedure LoadFileJPEGPdf(sFile:TFilename;var ViewPrintParam:TDebenuPDFLibrary);

  procedure CargarDocumento(PathPdf: string);
  procedure CrearCompDocumento(Padre: Twincontrol; MuestraError: Boolean);
  procedure LimpiarCompDocumento;
  procedure cargargridpdf;
  procedure ActualizaIdEmpleado(sParamIdNuevo, sParamIdAnt : string);
  procedure CalculaEdad;
  Procedure InicializarCampos;
  //procedure PrevPdf;
  procedure MBarra(Qry:TZQuery);
  function GenerarNombreAleatorio( LongitudCaracteres : Integer = 15 ):string;

  { Private declarations }
public
  { Public declarations }
  FiltroA:TForm;

end;

var
  frm_Empleados: Tfrm_Empleados;
  sArchivo: String;
  sIArchivo: String;
  sValidaID, sValidaRFC, sValidaCURP, sValidaNSS :string;
  CaptionClick: String;
  bMostrar: Boolean;
  iId : String;
  utgrid:ticdbgrid;
  sIdOrig : string;
  CartaRecomendacion_Inicial,
  CartaRecomendacion_Final,
  FechaVigenciaCredencial: TDateTime;
  IdCuentaContable : Integer;
  EditarSN : boolean;
  EditarDOCTOS : Boolean;
  EstatusEmpleado : string;
  EliminarHistoriaAltas : Boolean;
  IdEmpleadoAnt, IdEmpleadoAct : string;
  CompDocumento : TAcroPDF;
  Cambio_V:string;
  Function Tamanyo(Archivo : String): Real;

implementation
Uses frmEquiposPorEmpleado, frmEquiposPorEmpleadoQuitar, frmLiquidacionFiniquito,
     frm_inteligent, frmCatalogoAreas, frmCatalogoDePuestos, frm_CatalogoEstatusEmpleados, frmHistorialSueldos,
     frm_catalogoentidadeseducativas, frm_CatalogoProfesiones, frmRegistrosPatronales, frm_catalogohorariolabores,
     frm_CatalogoPeriodosPago, frm_CatalogoDiasdescanso, UTFrmContratarWizard,
  UnitValidacion, UnitValidaTexto,frm_CatalgoCuentas, UTFrmHistorialLibretas, UTFrmHistorialEquipoSeguridad, UTFrmHistorialSalarios,
  frmBancos, frm_ExperienciaEmpleado, Func_Genericas, UTFrmDepartamentos,
  UFrmVisorPdf;

{$R *.dfm}

var
  lAlerta : boolean;

Function Tamanyo(Archivo : String): Real;
Var
  Busca : TsearchRec;
Begin
  if  FindFirst ( Archivo , faAnyFile, Busca )  = 0 then
    Result := Busca.size / 1024
  Else
    Result:=0;
End;

function Redimensionar(Imagen: TJpegImage; Ancho, Alto: Integer): TJpegImage;
var
  Bitmap: TBitmap;
begin
  Bitmap:= TBitmap.Create;
  try
    Bitmap.Width:= Ancho;
    Bitmap.Height:= Alto;
    Bitmap.Canvas.StretchDraw(Bitmap.Canvas.ClipRect,Imagen);
    Imagen.Assign(Bitmap);
    result := Imagen;
  finally
    Bitmap.Free;
  end;
end;

Function ConvertirBMPaJPG(RutaImagen : String): TJPEGIMage;
var
  osImagen : TMemoryStream;
  jpg: TJPEGImage;
  bmp: TBitmap;
begin
  osImagen :=  TMemoryStream.Create();
  if AnsiContainsText(RutaImagen, 'BMP') then
  begin
    bmp := TBitmap.Create;
    try
      bmp.loadFromFile(RutaImagen);
      jpg := TJpegImage.Create;
      try
        jpg.Assign(bmp);
        jpg.SavetoStream(osImagen);
      finally
        jpg.Free
      end;
    finally
      bmp.free
    end;
    result := jpg;
  end
  else
    result := jpg;
end;

function vektor(FromP, Top:TPoint): TPoint;
begin
  Result.x:= Top.x - FromP.x;
  Result.y:= Top.y - FromP.y;
end;
function xComp(Vektor: TPoint; Angle: Extended):Integer;
begin
  Result := Round(Vektor.x * cos(Angle) - (Vektor.y) * sin(Angle));
end;
function yComp(Vektor: TPoint; Angle: Extended):Integer;
begin
  Result := Round(Vektor.x * (sin(Angle)) + (Vektor.y) * cos(Angle));
end;
function RotImage(srcbit:TBitmap; Angle: Extended; FPoint: TPoint; Background:TColor):TBitmap;
var
  highest, lowest, mostleft, mostright: TPoint;
  topoverh, leftoverh: integer;
  x, y, newx, newy: integer;
begin
  Result := TBitmap.Create;

  // Drehwinkel runterrechnen auf eine Umdrehung, wenn nötig
  // Calculate angle down on one rotation, if necessary
  while Angle >= (2 * pi) do
  begin
    angle := Angle - (2 * pi);
  end;

  // neue Ausmaße festlegen
  // specify new size
  if (angle <= (pi / 2)) then
  begin
    highest := Point(0,0);                        //OL
    Lowest := Point(Srcbit.Width, Srcbit.Height); //UR
    mostleft := Point(0,Srcbit.Height);            //UL
    mostright := Point(Srcbit.Width, 0);             //OR
  end
  else
  if (angle <= pi) then
  begin
    highest := Point(0,Srcbit.Height);
    Lowest := Point(Srcbit.Width, 0);
    mostleft := Point(Srcbit.Width, Srcbit.Height);
    mostright := Point(0,0);
  end
  else
  if (Angle <= (pi * 3 / 2)) then
  begin
    highest := Point(Srcbit.Width, Srcbit.Height);
    Lowest := Point(0,0);
    mostleft := Point(Srcbit.Width, 0);
    mostright := Point(0,Srcbit.Height);
  end
  else
  begin
    highest := Point(Srcbit.Width, 0);
    Lowest := Point(0,Srcbit.Height);
    mostleft := Point(0,0);
    mostright := Point(Srcbit.Width, Srcbit.Height);
  end;

  topoverh := yComp(Vektor(FPoint, highest), Angle);
  leftoverh := xComp(Vektor(FPoint, mostleft), Angle);
  Result.Height := Abs(yComp(Vektor(FPoint, lowest), Angle)) + Abs(topOverh);
  Result.Width  := Abs(xComp(Vektor(FPoint, mostright), Angle)) + Abs(leftoverh);

  // Verschiebung des FPoint im neuen Bild gegenüber srcbit
  // change of FPoint in the new picture in relation on srcbit
  Topoverh := TopOverh + FPoint.y;
  Leftoverh := LeftOverh + FPoint.x;

  // erstmal mit Hintergrundfarbe füllen
  // at first fill with background color
  Result.Canvas.Brush.Color := Background;
  Result.Canvas.pen.Color   := background;
  Result.Canvas.Fillrect(Rect(0,0,Result.Width, Result.Height));

  // Start des eigentlichen Rotierens
  // Start of actual rotation
  for y := 0 to srcbit.Height - 1 do
  begin                       // Zeilen  ; Rows
    for x := 0 to srcbit.Width - 1 do
    begin                    // Spalten ; Columns
      newX := xComp(Vektor(FPoint, Point(x, y)), Angle);
      newY := yComp(Vektor(FPoint, Point(x, y)), Angle);
      newX := FPoint.x + newx - leftoverh;
      // Verschieben wegen der neuen Ausmaße
      newy := FPoint.y + newy - topoverh;
      // Move beacause of new size
      Result.Canvas.Pixels[newx, newy] := srcbit.Canvas.Pixels[x, y];
      // auch das Pixel daneben füllen um Leerpixel bei Drehungen zu verhindern
      // also fil lthe pixel beside to prevent empty pixels
      if ((angle < (pi / 2)) or
        ((angle > pi) and
        (angle < (pi * 3 / 2)))) then
      begin
        Result.Canvas.Pixels[newx, newy + 1] := srcbit.Canvas.Pixels[x, y];
      end
      else
      begin
        Result.Canvas.Pixels[newx + 1,newy] := srcbit.Canvas.Pixels[x, y];
      end;
    end;
  end;
end;

Procedure Tfrm_Empleados.InicializarCampos;
begin
  listaCampos.Clear;
  ListaCampos.Add('sIdEmpleado=codigopersonal');
  ListaCampos.Add('sNombreCompleto=Nombres');
  ListaCampos.Add('sApellidoPaterno=APaterno');
  ListaCampos.Add('sApellidoMaterno=AMaterno');
  ListaCampos.Add('sImss=numerosegurosocial');
  ListaCampos.Add('sCurp=curp');
  ListaCampos.Add('sTelefono=telefono');
  ListaCampos.Add('sTipoSangre=gruposanguineo');
  ListaCampos.Add('sRfc=rfc');
  ListaCampos.Add('sNombre_Emergencia=contacto');
  ListaCampos.Add('seMail=telefonocontacto');
  ListaCampos.Add('seMail=Correo');
  ListaCampos.Add('sDomicilio=Calle');
  ListaCampos.Add('sCiudad=Ciudad');
  ListaCampos.Add('sCP=CP');
  ListaCampos.Add('sNumero=Numero');
  ListaCampos.Add('sEstadoCivil=EstadoCivil');
  ListaCampos.Add('sNoCreditoInfonavit=NumeroInfonavit');
  ListaCampos.Add('dFechaNacimiento=fechanacimiento');
  ListaCampos.Add('lSexo=sexo');

end;

procedure Tfrm_Empleados.IntegridadReferencial(IdEmpleado,TablaForanea,Operacion:string);
begin
  if TablaForanea ='rh_historialaltasbajas' then
  begin
    if Operacion ='Eliminar' then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('DELETE FROM rh_historialaltasbajas WHERE sIdEmpleado = :Id');
      connection.zcommand.Params.ParamByName('Id').DataType := ftString;
      connection.zcommand.Params.ParamByName('Id').value := IdEmpleado;
      connection.zCommand.ExecSQL;
    end;
  end;
end;

procedure Tfrm_Empleados.CalcularSalarioDiario;
begin
  //Label_PreIntegrado.Caption := FloatToStr(zQEmpleados.FieldByName('dSalarioDiario').AsFloat * zQEmpleados.FieldByName('dFactorIntegracion').AsFloat);
  //zQEmpleados.FieldByName('dSalarioIntegrado').AsFloat := ((zQEmpleados.FieldByName('dSalarioDiario').AsFloat * zQEmpleados.FieldByName('dFactorIntegracion').AsFloat) + zQEmpleados.FieldByName('dPromedioVariables').AsFloat)
end;

procedure Tfrm_Empleados.CargaTabladePrestaciones;
Var
  Query: TZQuery;
  Suma: Real;
begin
//  Query := TZQuery.Create(Self);
//  Query.Connection := frm_Principal.ZConnection;
//  Query.Active := False;
//  Query.SQL.Text := 'SELECT *, (SELECT ''true'' FROM nom_prestacionesporempleado WHERE sIdEmpleado = '+QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString)+' AND iId_Prestacion = c.iId) AS eExiste, IFNULL((SELECT dImporte FROM nom_prestacionesporempleado WHERE sIdEmpleado = '+QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString)+' AND iId_Prestacion = c.iId), 0) AS dImporte FROM nom_catalogodeprestaciones AS c;';
//  Query.Open;

  //zq_Percepciones.Active := False;
//  zq_Percepciones.Params.ParamByName('Empleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
//  zq_Percepciones.Open;
//  Grid_Prestaciones.ClearRows;
//  Suma := 0;
//  while not zq_Percepciones.Eof do begin
//    Grid_Prestaciones.AddRow;
//    Grid_Prestaciones.Cells[0, Grid_Prestaciones.LastAddedRow] := zq_Percepciones.FieldByName('iId').AsString;
//    Grid_Prestaciones.Cells[1, Grid_Prestaciones.LastAddedRow] := zq_Percepciones.FieldByName('eExiste').AsString;
//    Grid_Prestaciones.Cells[2, Grid_Prestaciones.LastAddedRow] := zq_Percepciones.FieldByName('sCodigo').AsString;
//    Grid_Prestaciones.Cells[3, Grid_Prestaciones.LastAddedRow] := zq_Percepciones.FieldByName('sNombre').AsString;
//    Grid_Prestaciones.Cells[4, Grid_Prestaciones.LastAddedRow] := FloatToStr(zq_Percepciones.FieldByName('dImporte').AsFloat);
//    Grid_Prestaciones.Cells[5, Grid_Prestaciones.LastAddedRow] := zq_Percepciones.FieldByName('sTipoImporte').AsString;
//    if zq_Percepciones.FieldByName('eExiste').AsBoolean then begin
//      Suma := Suma + zq_Percepciones.FieldByName('dImporte').AsFloat;
//    end;
//    zq_Percepciones.Next;
//  end;
//  Grid_Prestaciones.Cells[4, Grid_Prestaciones.LastAddedRow] := zq_Percepciones.FieldByName('dImporte').AsString;
//  Grid_Prestaciones.Columns[4].Footer.Caption := FloatToStr(Suma);
//  Grid_Prestaciones.Enabled := False;
end;

procedure Tfrm_Empleados.CargaTabladeDeducciones;
Var
  Query: TZQuery;
  Suma: Real;
begin
//  Query := TZQuery.Create(Self);
//  Query.Connection := frm_Principal.ZConnection;
//  Query.SQL.Text := 'SELECT *, (SELECT ''true'' FROM nom_deduccionesporempleado WHERE sIdEmpleado = '+QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString)+' AND iId_Deduccion = c.iId) AS eExiste, IFNULL((SELECT dImporte FROM nom_deduccionesporempleado WHERE sIdEmpleado = '+QuotedStr(zQEmpleados.FieldByName('sIdEmpleado').AsString)+' AND iId_Deduccion = c.iId), 0) AS dImporte FROM nom_catalogodededucciones AS c;';
//  Query.Open;

//  zq_Deducciones.Active := False;
//  zq_Deducciones.Params.ParamByName('Empleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
//  zq_Deducciones.Params.ParamByName('Empleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
//  zq_Deducciones.Params.ParamByName('Empleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
////  zq_Deducciones.Params.ParamByName('Empleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
//  zq_Deducciones.Open;
//
//  Grid_Deducciones.ClearRows;
//  Suma := 0;
//  while not zq_Deducciones.Eof do begin
//    Grid_Deducciones.AddRow;
//    Grid_Deducciones.Cells[0, Grid_Deducciones.LastAddedRow] := zq_Deducciones.FieldByName('iId').AsString;
//    Grid_Deducciones.Cells[1, Grid_Deducciones.LastAddedRow] := zq_Deducciones.FieldByName('eExiste').AsString;
//    Grid_Deducciones.Cells[2, Grid_Deducciones.LastAddedRow] := zq_Deducciones.FieldByName('sCodigo').AsString;
//    Grid_Deducciones.Cells[3, Grid_Deducciones.LastAddedRow] := zq_Deducciones.FieldByName('sNombre').AsString;
//    Grid_Deducciones.Cells[4, Grid_Deducciones.LastAddedRow] := FloatToStr(zq_Deducciones.FieldByName('dImporte').AsFloat);
//    Grid_Deducciones.Cells[5, Grid_Deducciones.LastAddedRow] := zq_Deducciones.FieldByName('sTipoImporte').AsString;
//    if zq_Deducciones.FieldByName('eExiste').AsBoolean then begin
//      Suma := Suma + zq_Deducciones.FieldByName('dImporte').AsFloat;
//    end;
//    zq_Deducciones.Next;
//  end;
////  Grid_Deducciones.Cells[4, Grid_Deducciones.LastAddedRow] := zq_Deducciones.FieldByName('dImporte').AsString;
//  Grid_Deducciones.Columns[4].Footer.Caption := FloatToStr(Suma);
//  Grid_Deducciones.Enabled := False;
end;

procedure Tfrm_Empleados.btnperiodoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPeriododePagoRH, frmPeriododePagoRH);
  frmPeriododePagoRH.ShowModal;
  ZQPeriodo.Refresh;
end;

procedure Tfrm_Empleados.AdvGlowButton1Click(Sender: TObject);
var
  QryBusca: TZQuery;
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if AdvGlowButton1.Caption = 'Mostrar' then
  begin
    bMostrar := True;
  end
  else
  begin
    bMostrar := False;
  end;
  if bMostrar then
  begin
    AdvGlowButton1.Caption := 'Ocultar';
    try
      QryBusca := TZQuery.Create(Self);
      QryBusca.Connection := connection.zConnection;
      QryBusca.Active := False;
      QryBusca.SQL.Text := 'SELECT bImagen FROM catalogo_imagenes WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado';
      QryBusca.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
      QryBusca.Open;
      if QryBusca.RecordCount > 0 then
      begin
        bImagen_.Picture.LoadFromFile('');
        BlobField := QryBusca.FieldByName('bImagen');
        BS := QryBusca.CreateBlobStream(BlobField, bmRead);
        if bs.Size > 15 then
        begin
          Try
            Pic := TJpegImage.Create;
            Try
              Pic.LoadFromStream(bS);
              bImagen_.Picture.Graphic := Pic;
            Finally
              Pic.Free;
              bMostrar := True;
            End;
          Finally
            bS.Free
          End;
        end;
      end;
    Finally
      QryBusca.Free;
    End;
  end
  else
  begin
    AdvGlowButton1.Caption := 'Mostrar';
    bImagen_.Picture.Graphic := Nil;
  end;
end;

procedure Tfrm_Empleados.AdvGlowButton2Click(Sender: TObject);
begin
  imgQRClick(Sender);
end;

procedure Tfrm_Empleados.Baja1Click(Sender: TObject);
begin
    if (zQEmpleados.FieldByName('sStatusTipoPersonal').AsString='Tierra') and (zQEmpleados.FieldByName('sStatusPersonal').AsString='Contratado') then
    begin
      LbNombre.Caption:=zQEmpleados.FieldByName('sNombreCompleto').AsString;
      Edtfechab.Date:=Date;
      PanelBaja.Height:=104;
      PanelBaja.Width:=222;
      PanelBaja.top:=100;
      PanelBaja.Left:=375;
      PanelBaja.Visible := True;
    end
    else
      ShowMessage('El empleado No es personal de Tierra Contratado.');
end;

procedure Tfrm_Empleados.BANCOEnter(Sender: TObject);
begin
    tdBANCO.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.BANCOExit(Sender: TObject);
begin
    tdBANCO.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsSucursal.SetFocus;
end;

procedure Tfrm_Empleados.btnAddClick(Sender: TObject);
begin
  //  tsNombreAutoriza.Text := zqConfiguracionRh.FieldByName('sRepresentante').AsString   ;
  //  tsNombreEntrega.Text  := zqConfiguracionRh.FieldByName('sNombre').AsString   ;
  if (tsNombreEntrega.text <> '') or (tsNombreAutoriza.Text <> '') then
  begin
    if not frmInteligent.MostrarFormChild('frm_EquiposPorEmpleado') then
    begin
      Application.CreateForm(Tfrm_EquiposPorEmpleado, frm_EquiposPorEmpleado);
      frm_EquiposPorEmpleado.ShowModal;
    end;
  end
  else
   begin
    ShowMessage('Antes de Agregar Equipos Favor Capture las Firmas de Quien Entrega y Autoriza.');
    tsNombreEntrega.SetFocus ;
   end;

end;

procedure Tfrm_Empleados.btnDeleteClick(Sender: TObject);
begin
  if zq_EquiposPorEmpleado.RecordCount > 0 then
  begin
    if zq_EquiposPorEmpleado.FieldByName('dFecha_Remocion').IsNull then
    begin
      if not frmInteligent.MostrarFormChild('frm_EquiposPorEmpleadoQuitar') then
      begin
         Application.CreateForm(Tfrm_EquiposPorEmpleadoQuitar, frm_EquiposPorEmpleadoQuitar);
         frm_EquiposPorEmpleadoQuitar.ShowModal;
      end;
    end
    else
      ShowMessage('Este personal ya no cuenta con este artículo.');
  end;
  zq_EquiposPorEmpleado.Refresh;
end;

procedure Tfrm_Empleados.btnDepartamentosClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('FrmDepartamentos') then
    begin
      bandera:='frmDepartamentos';
      Application.CreateForm(TFrmDepartamentos, frmDepartamentos);
      FrmDepartamentos.ShowModal;
      zqDepartamentos.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.btnDownClick(Sender: TObject);
begin
   OrdenarImagenes('Abajo');
end;

procedure Tfrm_Empleados.btnEstatusClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalogoEstatusEmpleados') then
    begin
      Application.CreateForm(TfrmCatalogoEstatusEmpleados, frmCatalogoEstatusEmpleados);
      frmCatalogoEstatusEmpleados.Show;
    end;
  end;

end;

procedure Tfrm_Empleados.btnExportaWordClick(Sender: TObject);
begin
  dlgSaveWord.FileName := zWord.FieldByName('sdescripcion').asstring;
  dlgSaveWord.filter := 'Documento de Word (*'+zWord.FieldByName('sext').asstring+')|*'+zWord.FieldByName('sext').asstring;
  if dlgSaveWord.Execute() then
  begin
    if not FileExists( dlgSaveWord.filename+zWord.fieldbyname('sext').asstring ) then
    begin
      TBlobField(zWord.FieldByName('bWord')).SaveToFile( dlgSaveWord.FileName + zWord.fieldbyname('sext').asstring );
      ShellExecute(Handle,'open',pansichar(dlgSaveWord.FileName+zWord.fieldbyname('sext').asstring), nil, nil,  SW_SHOWNORMAL);
    end
    else
    begin
      if MessageDlg('¿Desea reemplazar el archivo?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        try
          DeleteFile( dlgSaveWord.FileName );

          TBlobField(zWord.FieldByName('bWord')).SaveToFile( dlgSaveWord.FileName + zWord.fieldbyname('sext').asstring);
          ShellExecute(Handle,'open',pansichar(dlgSaveWord.FileName+zWord.fieldbyname('sext').asstring), nil, nil,  SW_SHOWNORMAL);
        except
          on e:exception do
            ShowMessage('No se puede tener acceso a '+ dlgSaveWord.FileName + 'verifique que el documento no este abierto');
        end;        
      end;
    end;
  end;
end;

procedure Tfrm_Empleados.btnHistorialClick(Sender: TObject);
var
  form: TForm;
begin
  application.CreateForm(TFrmHistorialEquipoSeguridad, FrmHistorialEquipoSeguridad);
  FrmHistorialEquipoSeguridad.showmodal;

//  try
//    Form := TForm.create(Self);
//    with form do
//    begin
//      Width := 680;
//      Height := 315;
//      BorderStyle := bsDialog;
//      FormStyle := fsNormal;
//      Position := poScreenCenter;
//    end;
//
//    ZQEquiposporEmpleados1.Active := False;
//    ZQEquiposporEmpleados1.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
//    ZQEquiposporEmpleados1.Open;
//    Grid_Historial.Height:=304;
//    Grid_Historial.Width:=672;
//    Grid_Historial.top:=161;
//    Grid_Historial.Left:=185;
//    Grid_Historial.Visible:=True;
//
//    Grid_Historial.Parent := Form;
//    Grid_Historial.Align := AlClient;
//    Form.ShowModal;
//  finally
//    if Grid_Historial.Parent <> self then
//    begin
//      Grid_Historial.parent := Self;
//      Grid_Historial.visible := False;
//    end;
//    Form.Free;
//  end;
end;

procedure Tfrm_Empleados.btnhorariosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmHorarioLaboral, frmHorarioLaboral);
  frmHorarioLaboral.ShowModal;
  ZqHorariosLab.Refresh;
end;

procedure Tfrm_Empleados.cmdExperienciaClick(Sender: TObject);
begin       
    if not frmInteligent.MostrarFormChild('frmExperiencia') then
    begin
        Application.CreateForm(TfrmExperienciaEmpleado, frmExperienciaEmpleado);
        frmExperienciaEmpleado.show;
    end;
end;

procedure Tfrm_Empleados.cmdVigenciasClick(Sender: TObject);
var
  zBuscaUltimo: TZQuery;
  Cursor: TCursor;
begin
  try
    if (zQEmpleados.FieldByName('idPersonal').IsNull) then
    begin
      if MessageDlg('Para proceder a dar de alta la libreta de mar, es necesario primero guardar los datos del empleado. ¿Desea Guardarlo en este instante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        frmBarra1btnPostClick(nil);
        zQEmpleados.Refresh;

        Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait;
        zBuscaUltimo := TZQuery.Create(self);
        try
          zBuscaUltimo.Active := False;
          zBuscaUltimo.Connection := connection.zConnection;
          zBuscaUltimo.SQL.Clear;
          zBuscaUltimo.SQL.Text := 'Select max(idPersonal) as IdPersonal from empleados';
          zBuscaUltimo.Open;

          if zBuscaUltimo.RecordCount > 0 then
          begin
            if zQEmpleados.Locate('', zBuscaUltimo.FieldByName('idPersonal').AsInteger,[]) then
            begin
              frmBarra1btnEditClick(nil);
              cmdVigenciasClick(nil);
            end;
          end;
        finally
          Screen.Cursor := Cursor;
          zBuscaUltimo.Destroy;
        end;
      end;
    end
    else if (Not zQEmpleados.FieldByName('idPersonal').IsNull) then
    begin
        if (zQEmpleados.FieldValues['idorganizacion'] = null) or  (zQEmpleados.FieldValues['idorganizacion'] = 0) then
        begin
            MSG_W('El personal no está asignado a una Empresa!');
            exit ;
        end;
        Application.CreateForm(TFrmHistorialLibretas, frmHistorialLibretas);
        FrmHistorialLibretas.idPersonal := zQEmpleados.FieldByName('IdPersonal').AsInteger;
        FrmHistorialLibretas.ShowModal;
    end;
  Except
    on e: exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure Tfrm_Empleados.btnLibretasVencidasClick(Sender: TObject);
begin
  //Si el boton esta parpadeando, entonces checar la tabla con los datos de las Libretas de Mar Vencidas
  Application.CreateForm(TfrmLibretasVencidas, frmLibretasVencidas);
  frmLibretasVencidas.Show;
end;

procedure Tfrm_Empleados.btnPreviewClick(Sender: TObject);
var
  BS  : TStream;
  Pic : TJpegImage;
  BlobField : tField ;
begin
  EditarDOCTOS := False;
  ReporteFotografico.Active := False ;
  ReporteFotografico.Params.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;;
  ReporteFotografico.Open;

  If ReporteFotoGrafico.RecordCount > 0 then
  Begin
    bImagen.Picture.Bitmap := Nil ;
    If  (ReporteFotografico.State <> dsInsert) And
      (ReporteFotografico.State <> dsEdit) Then
      If ReporteFotografico.RecordCount > 0 then
      Begin
        //Aqui consultamos la imagen...
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select bImagen from rh_escaneos_imagenes where iId =:Id ');
        connection.zCommand.ParamByName('Id').AsInteger := ReporteFotografico.FieldValues['iId'];
        connection.zCommand.Open;

        BlobField := connection.zCommand.FieldByName('bImagen') ;
        BS := connection.zCommand.CreateBlobStream(BlobField, bmRead) ;
        If bs.Size > 1 Then
        Begin
          try
            Pic:=TJpegImage.Create;
            try
              Pic.LoadFromStream(bS);
              bImagen.Picture.Graphic := Pic;
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          End
        End
      End ;
  End
end;

procedure Tfrm_Empleados.btnPrevisualizarPDFClick(Sender: TObject);
var
  Vista : TForm;
  VistaPDF: TAcroPDF;

  Ruta : string;

begin
 {
  Ruta := ExtractFilePath( Application.ExeName ) + GenerarNombreAleatorio( ) + '.pdf' ;

  TBlobField(zPDF.FieldByName('bPdf')).SaveToFile( Ruta );

  Vista := TForm.Create( nil );
  Vista.BorderStyle := bsDialog;
  Vista.Position := poScreenCenter;
  Vista.Width := 700;
  Vista.Height := 670;
  Vista.Caption := 'Vista Previa';



  VistaPDF := TAcroPDF.Create( nil );
  VistaPDF.Parent := grpVistaPdf;
  VistaPDF.Align := alClient;
  VistaPDF.LoadFile( Ruta );
  VistaPDF.Show;

  Vista.ShowModal;

  grpVistaPdf.Parent := Self;
  grpVistaPdf.Visible := False;
  grpVistaPdf.Align := alNone;
  grpVistaPdf.Width := 0;
  grpVistaPdf.Height := 0;
  grpVistaPdf.Left := 0;
  grpVistaPdf.Top := 0;

  VistaPDF.Free;

  try
    DeleteFile( Ruta );
  except
  end;
             }
end;

procedure Tfrm_Empleados.btnPrinterClick(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_EquiposPorEmpleado.fr3') then
 begin
  showmessage('El archivo de reporte '+global_Mireporte+'_EquiposPorEmpleado.fr3 no existe, notifique al administrador del sistema');
  exit;
 end;

  zqRptEntregaEquipo.Active := False;
  zqRptEntregaEquipo.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  zqRptEntregaEquipo.Open;
  if  zqrptEntregaEquipo.RecordCount >0 then
  begin
    frxReport1.LoadFromFile(global_files + global_Mireporte + '_EquiposPorEmpleado.fr3') ;
    frxReport1.ShowReport() ;
  end;
end;

procedure Tfrm_Empleados.btnPuestosClick(Sender: TObject);
begin
   try
    FrmCatalogoCargos.SetFocus;
  except
    Application.CreateForm(TFrmCatalogoCargos, FrmCatalogoCargos);
    FrmCatalogoCargos.Show;
  end;
end;

procedure Tfrm_Empleados.btnRegPClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frm_RegistrosPatronales') then
    begin
      Application.CreateForm(Tfrm_RegistrosPatronales, frm_RegistrosPatronales);
      frm_RegistrosPatronales.Show;
      zq_registrospatronales.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.btnUpClick(Sender: TObject);
begin
    OrdenarImagenes('Arriba');
end;

procedure Tfrm_Empleados.btnWordAddClick(Sender: TObject);
var
  BlobStream : TStream;
  FileStream : TFileStream;
  Archivo,
  Ext : string;
begin
  try
    if zqEmpleados.State in [dsInsert, dsEdit] then
      raise Exception.Create('Guarde sus Cambios');

    dlgWord.FileName := '';

    if not dlgWord.Execute() then
      exit;

    Archivo := dlgWord.FileName;

    if not FileExists(Archivo) then
      raise exception.Create('No se encontro el archivo especificado');

    Ext := ExtractFileExt(Archivo);

    if ( Ext <> '.doc' ) and ( Ext <> '.docx' ) and ( Ext <> '.docm') then
      raise exception.Create('El archivo no es valido');

    zWord.Insert;
    zWord.FieldByName('iid').AsInteger := 0;
    zWord.FieldByName('sidentificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
    zWord.FieldByName('sreferencia').AsString := 'Documentacion_EmpleadoWord';
    zWord.FieldByName('sext').AsString := Ext;
    zWord.FieldByName('sdescripcion').AsString := ExtractFileName(Archivo);
    TBlobField(zWord.FieldByName('bWord')).LoadfromFile(archivo);

    btnWordAdd.Enabled := False;
    btnWordDel.Enabled := False;
    btnWordPost.Enabled := True;
    btnWordCancel.Enabled := True;
    btnWordEdit.Enabled := False;
    pnlWord.Enabled := False;
  except
    on e:exception do
    begin
      MessageDlg(e.Message, mtinformation, [mbOk], 0);
      if zWord.state in [dsInsert, dsEdit] then
        zWord.Cancel;
    end;
  end;
end;

procedure Tfrm_Empleados.btnSueldosClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsbrowse] then
  begin
    if Not zQEmpleados.FieldByName('IdPersonal').IsNull then
    begin
      Application.CreateForm(TFrmHistorialSalarios, FrmHistorialSalarios);
      FrmHistorialSalarios.IdPersonal := zQEmpleados.FieldByName('IdPersonal').AsInteger;
      FrmHistorialSalarios.ShowModal;
    end;


//    if not frmInteligent.MostrarFormChild('frm_HistorialSueldos') then
//    begin
//      Application.CreateForm(Tfrm_HistorialSueldos, frm_HistorialSueldos);
//      frm_HistorialSueldos.FormStyle := fsNormal;
//      frm_HistorialSueldos.qrySueldos.ParamByName('empleado').AsString := zqEmpleados.FieldValues['sIdEmpleado'];
//      try
//        frm_HistorialSueldos.showModal;
//      finally
//        frm_HistorialSueldos.destroy;
//      end;
//    end;
  end;
end;

procedure Tfrm_Empleados.Btn_ReporteCartaRecomendacionClick(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_CartaDeRecomendacion.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_CartaDeRecomendacion.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;

  zqryCartaRecomendacion.Active := False;
  zqryCartaRecomendacion.ParamByName('empleado').AsString := zqEmpleados.FieldValues['sIdEmpleado'];
  zqryCartaRecomendacion.Open ;

  CartaRecomendacion_Inicial := dtCartaRecomendacion_Inicial.DateTime;
  CartaRecomendacion_Final := dtCartaRecomendacion_Final.DateTime;
  frxReport1.LoadFromFile(global_files + global_Mireporte + '_CartaDeRecomendacion.fr3');
  frxReport1.ShowReport();
  SeleccionarFecha.Visible := False;
end;

procedure Tfrm_Empleados.Btn_ReporteCredencialesClick(Sender: TObject);
Var
  mybitmap, newbit: TBitMap;
  QryBusca: TZQuery;
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  Img : TMemoryStream;
  i : Integer;
  SavePlace: TBookmark;
  iGrid, ncount: Integer;
  empl: String;
begin
      if not FileExists(global_files + global_miReporte + '_CredencialTierra.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_CredencialTierra.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;

     if not FileExists(global_files + global_miReporte + '_CredencialAbordo.fr3') then
    begin
       showmessage('El archivo de reporte '+global_Mireporte+'_CredencialAbordo.fr3 no existe, notifique al administrador del sistema');
       exit;
    end;


  if (dtFechainicio.DateTime < dtFechavigencia.DateTime) then
  begin
    try
      tNewGroupBox11.Visible := True;
      //Esto es par refrescar antes de imprimir las credenciales la conf. de RH
      Connection.configuracionRecHum.Active := False;
      Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
      Connection.configuracionRecHum.Open  ;

      frxDBConfiguracion.DataSet.Refresh;

      if tNewGroupBox11.Visible=True then
        ncount:=listbox1.Items.Count
      else
        ncount:=BView_Empleados.DataController.GetSelectedCount;   //.SelectedRows.Count;

      if rbTierra.Checked = True then
      begin
        qryEmpleadosCredencial.Close;
        qryEmpleadosCredencial.Active := False;
        qryEmpleadosCredencial.SQL.Clear;
        qryEmpleadosCredencial.SQL.Add('select e.*, a.*, i.bImagen, i.bQR, cp.titulocargo AS PuestoEmpleado from empleados e ');
        qryEmpleadosCredencial.SQL.Add('left join nuc_departamento a ');
        qryEmpleadosCredencial.SQL.Add('on a.iddepartamento = e.iddepartamento ');
        qryEmpleadosCredencial.SQL.Add('left join nuc_cargo cp ');
        qryEmpleadosCredencial.SQL.Add('on (cp.IdCargo = e.iId_Puesto) ');
        qryEmpleadosCredencial.SQL.Add('left join catalogo_imagenes i ');
        qryEmpleadosCredencial.SQL.Add('on ((i.sIdentificador = e.sIdEmpleado) and (sReferencia="Catalogo_Empleados"))');
        qryEmpleadosCredencial.SQL.Add('Where ');
        SavePlace := BView_Empleados.DataController.DataSource.DataSet.GetBookmark;

        with BView_Empleados.DataController.DataSource.DataSet do
        for iGrid := 0 to ncount - 1 do
        begin
          if tNewGroupBox11.Visible=True then
            empl:=ListBox1.Items[iGrid]
          else
          begin
            //Locate('sIdEmpleado',cxDbGridTabla.Controller.SelectedRows[i].Values[0],[]);

            //GotoBookmark(pointer(Grid_Empleados.SelectedRows.Items[iGrid]));
            empl:=BView_Empleados.Controller.SelectedRows[iGrid].Values[0];//FieldValues['sIdEmpleado'];
          end;

          if iGrid = 0 then
            qryEmpleadosCredencial.SQL.Add(' (e.sIdEmpleado = ' + QuotedStr(empl) + ') ')
          else qryEmpleadosCredencial.SQL.Add(' or (e.sIdEmpleado = ' + QuotedStr(empl) + ') ');
        end;
        qryEmpleadosCredencial.Open;
        if qryEmpleadosCredencial.RecordCount > 0 then
        begin
          rxCredenciales.Active := True;
          rxCredenciales.EmptyTable;

          while not qryEmpleadosCredencial.eof do
          begin
            rxCredenciales.Insert;
          for i := 1 to 1 do
          begin
            if i >1 then rxCredenciales.Edit;
            rxCredenciales.FieldValues['sIdEmpleado_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sIdEmpleado').AsString;
            rxCredenciales.FieldValues['sNombreCompleto_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sNombreCompleto').AsString;
            rxCredenciales.FieldValues['sApellidos_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sApellidoPaterno').AsString +' '+ qryEmpleadosCredencial.FieldByName('sApellidoMaterno').AsString;
            rxCredenciales.FieldValues['sRfc_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sRfc').AsString;
            rxCredenciales.FieldValues['sDomicilio_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sCalle').AsString +
            qryEmpleadosCredencial.FieldByName('sNumero').AsString + qryEmpleadosCredencial.FieldByName('sColonia').AsString +
            qryEmpleadosCredencial.FieldByName('sCiudad').AsString + qryEmpleadosCredencial.FieldByName('sEstado').AsString;
            rxCredenciales.FieldValues['sCiudad_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sCiudad').AsString;
            rxCredenciales.FieldValues['sPuesto_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('titulodepartamento').AsString;
            rxCredenciales.FieldValues['sTelefono_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sTelefono').AsString;
            rxCredenciales.FieldValues['sTelefonoCel_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sTelefonoCelular').AsString;
            rxCredenciales.FieldValues['sCurp_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sCurp').AsString;
            rxCredenciales.FieldValues['sImss_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sImss').AsString;
            rxCredenciales.FieldValues['sTipoSangre_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sTipoSangre').AsString;
            rxCredenciales.FieldValues['PuestoEmpleado_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('PuestoEmpleado').AsString;
            rxCredenciales.FieldValues['bImagen_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('bImagen').AsVariant;
            rxCredenciales.FieldValues['bQR_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('bQR').AsVariant;
            rxCredenciales.FieldValues['sNombre_emergencia_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sNombre_emergencia').AsString;
            rxCredenciales.FieldValues['sNumero_emergencia_' + IntToStr(i)] := qryEmpleadosCredencial.FieldByName('sNumero_emergencia').AsString;
            rxCredenciales.FieldValues['dVigencia'] := dtFechaVigencia.Date;
            if i>3 then
            begin
              BlobField := qryEmpleadosCredencial.FieldByName('bImagen');
              bS := qryEmpleadosCredencial.CreateBlobStream(BlobField, bmRead);
              if bs.Size > 15 then
              begin
                Try
                  Pic := TJpegImage.Create;
                  Pic.LoadFromStream(bS);
                  mybitmap := TBitmap.Create;
                  mybitmap.Assign(Pic);
                  newbit := RotImage(mybitmap, DegToRad(270),
                  Point(mybitmap.Width div 2, mybitmap.Height div 2), clBlack);
                  Img := TMemoryStream.Create;
                  newbit.SavetoStream(Img);
                  TBlobField(rxCredenciales.FieldByName('bImagenHorizontal_' + IntToStr(i))).LoadFromStream(Img);
                Finally
                  bS.Free;
                  Pic.Free;
                  mybitmap.Free;
                End
              end;
            end;
            rxCredenciales.Post;
            qryEmpleadosCredencial.Next;
            if qryEmpleadosCredencial.Eof then Break;
          end;
        end;
          FechaVigenciaCredencial := dtFechaVigencia.DateTime;
          frxReport1.LoadFromFile(global_files + global_Mireporte + '_CredencialTierra.fr3');
          frxReport1.ShowReport();
        end;
      end
      else
      begin
        qryEmpleadosCredencial.Close;
        qryEmpleadosCredencial.Active := False;
        qryEmpleadosCredencial.SQL.Clear;
        qryEmpleadosCredencial.SQL.Add('select e.*, a.*, i.bImagen, i.bQr, cp.titulocargo AS PuestoEmpleado from empleados e ');
        qryEmpleadosCredencial.SQL.Add('left join nuc_departamento a ');
        qryEmpleadosCredencial.SQL.Add('on a.iddepartamento = e.iddepartamento ');
        qryEmpleadosCredencial.SQL.Add('left join nuc_cargo cp ');
        qryEmpleadosCredencial.SQL.Add('on (cp.IdCargo = e.iId_Puesto) ');
        qryEmpleadosCredencial.SQL.Add('left join catalogo_imagenes i ');
        qryEmpleadosCredencial.SQL.Add('on ((i.sIdentificador = e.sIdEmpleado) and (sReferencia="Catalogo_Empleados"))');
        qryEmpleadosCredencial.SQL.Add('Where ');
        SavePlace := BView_Empleados.DataController.DataSource.DataSet.GetBookmark;
        with BView_Empleados.DataController.DataSource.DataSet do
        for iGrid := 0 to ncount - 1 do
        begin
          if tNewGroupBox11.Visible=True then
            empl:=ListBox1.Items[iGrid]
          else
          begin
            //GotoBookmark(pointer(Grid_Empleados.SelectedRows.Items[iGrid]));
            //empl:=FieldValues['sIdEmpleado'];

            empl:=BView_Empleados.Controller.SelectedRows[iGrid].Values[0];
          end;

          if iGrid = 0 then
            qryEmpleadosCredencial.SQL.Add(' (e.sIdEmpleado= ' + QuotedStr(empl) + ') ')
          else qryEmpleadosCredencial.SQL.Add(' or (e.sIdEmpleado= ' + QuotedStr(empl) + ') ');
        end;
        qryEmpleadosCredencial.Open;

        if qryEmpleadosCredencial.RecordCount > 0 then
        begin
          FechaVigenciaCredencial := dtFechaVigencia.DateTime;
          frxReport1.LoadFromFile(global_files + global_Mireporte + '_CredencialAbordo.fr3');
          frxReport1.ShowReport();
        end;
      end;
      Grid_Empleados.Enabled := True;
      SeleccionarFecha.Visible := False;
      tNewGroupBox11.Visible   := False;
    except
      on e:Evalidaciones do
      begin
        messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
      end;
      on E:Exception do
      begin
        ShowMessage('Ocurrió un error al Insertar, inténtelo nuevamente mas tarde.' + E.Message);
        SeleccionarFecha.Visible := True;
        Grid_Empleados.Enabled := False;
      end;
    end;
  end
  else
    ShowMessage('Debe introducir una fecha que sea mayor a la fecha de inicio');
end;

Procedure CompactarImagen(Sender: TObject);
Begin

End;


procedure Tfrm_Empleados.Button10Click(Sender: TObject);
begin
  ListBox1.Clear;
end;

procedure Tfrm_Empleados.Button11Click(Sender: TObject);
begin
  PanelBaja.Visible:=False;
end;

procedure Tfrm_Empleados.Button12Click(Sender: TObject);
begin
  if ListBox1.Items.Count = 0 then
  begin
      messageDLG('No existen empleados en la lista de impesión, (Haga doble click sobre el Empleado para seleccionar)', mtInformation, [mbOk], 0);
      exit;
  end;

  if global_contrato = 'CMMI' then
  begin
    rbAbordo.visible := False;
    rbTierra.Caption := 'Tierra/Abordo';
  end;

  SeleccionarFecha.Visible := True;
  if (rbAbordo.Checked = False) and (rbTierra.Checked = False) then
    rbTierra.Checked := True;

  PageControl1.Pages[0].TabVisible := False;
  PageControl1.Pages[1].TabVisible := True;
  if dtFechaInicio.Date < date then
  begin
    dtFechaInicio.Date   := date;
    dtFechaVigencia.Date := date;
  end;

  if meses.Text = '0' then
  begin
      meses.Text := '6';
      dtFechavigencia.Date:=IncMonth(dtFechainicio.Date,StrToInt(meses.Text));
  end;
  Grid_Empleados.Enabled := False;
end;

procedure Tfrm_Empleados.Button13Click(Sender: TObject);
begin
  if tNewGroupBox11.Visible=False then
    tNewGroupBox11.Visible:=True
  else
    tNewGroupBox11.Visible:=False;
end;

procedure Tfrm_Empleados.Button14Click(Sender: TObject);
var
 i: integer;
begin
 for i := ListBox1.Items.Count - 1 downto 0 do
  if ListBox1.Selected[i] then
    ListBox1.Items.Delete(i);
end;

procedure Tfrm_Empleados.Button15Click(Sender: TObject);
begin
  Application.CreateForm(TFrmContratarWizard, FrmContratarWizard);
  FrmContratarWizard.lblNombre.Caption.Text:=zqempleados.FieldByName('sNombreCompleto').AsString;
  FrmContratarWizard.cdbusqueda.Active:=False;
  FrmContratarWizard.cdbusqueda.Open;
  FrmContratarWizard.cdbusqueda.ParamByName('codigopersonal').AsString:=zQEmpleados.FieldByName('sIdEmpleado').AsString;
  if FrmContratarWizard.cdbusqueda.Active then
    FrmContratarWizard.cdbusqueda.Refresh
  else
    FrmContratarWizard.cdbusqueda.Open;
  FrmContratarWizard.showModal;
end;

procedure Tfrm_Empleados.Button16Click(Sender: TObject);
var
idnpi: Integer;
begin
  if MessageDlg('¿Esta seguro que desea dar de Baja a este empleado?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('SELECT MAX(IdPersonalIMSS) AS id FROM nuc_personalimss');
        connection.QryBusca.Open;
        if connection.QryBusca.FieldValues['id'] = null then
          idnpi := 1
        else
          idnpi := connection.QryBusca.FieldByName('id').AsInteger + 1;

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('SELECT npi.* FROM nuc_personal np, nuc_personalimss npi ');
        connection.QryBusca.SQL.Add('WHERE np.codigopersonal=:sIdEmpleado AND np.idpersonal=npi.IdPersonal AND npi.TipoMovimiento="Reingreso" ');
        connection.QryBusca.SQL.Add('ORDER BY npi.FechaMovimiento LIMIT 1');
        connection.QryBusca.Params.ParamByName('sIdEmpleado').Value := zQEmpleados.FieldValues['sIdEmpleado'];
        connection.QryBusca.Open;

        if (connection.QryBusca.FieldByName('FechaMovimiento').AsDateTime < Edtfechab.Date) and (connection.QryBusca.FieldByName('TipoMovimiento').AsString<>'Baja') then
        begin
          cdBaja.Append;
          cdBaja.FieldByName('IdPersonalIMSS').AsInteger := idnpi;
          cdBaja.FieldByName('IdPersonal').AsInteger := connection.QryBusca.FieldByName('IdPersonal').AsInteger;
          cdBaja.FieldByName('IdTipoNomina').AsInteger := connection.QryBusca.FieldByName('IdTipoNomina').AsInteger;
          cdBaja.FieldByName('FechaMovimiento').AsDateTime := Edtfechab.Date;
          cdBaja.FieldByName('FechaRegistro').AsDateTime := Now();
          cdBaja.FieldByName('TipoMovimiento').AsString := 'Baja';
          cdBaja.FieldByName('IdPlazaDetalle').AsInteger := connection.QryBusca.FieldByName('IdPlazaDetalle').AsInteger;
          cdBaja.FieldByName('RegistroPatronal').AsString := connection.QryBusca.FieldByName('RegistroPatronal').AsString;
          cdBaja.FieldByName('SalarioDiario').AsFloat := connection.QryBusca.FieldByName('SalarioDiario').AsFloat;
          cdBaja.FieldByName('SalarioIntegrado').AsFloat := connection.QryBusca.FieldByName('SalarioIntegrado').AsFloat;
          cdBaja.FieldByName('Procesado').AsString := 'No';
          cdBaja.FieldByName('cobrafestivos').AsString := connection.QryBusca.FieldByName('cobrafestivos').AsString;
          cdBaja.FieldByName('jornada').AsInteger := connection.QryBusca.FieldByName('jornada').AsInteger;
          cdBaja.FieldByName('IdDepartamento').AsInteger := connection.QryBusca.FieldByName('IdDepartamento').AsInteger;
          cdBaja.FieldByName('IdCargo').AsInteger := connection.QryBusca.FieldByName('IdCargo').AsInteger;
          cdBaja.FieldByName('IdOrganizacion').AsInteger := connection.QryBusca.FieldByName('IdOrganizacion').AsInteger;
          cdBaja.Post;

          zQEmpleados.Edit;
          zQEmpleados.FieldValues['sStatusPersonal']:= 'No Contratado';
          zQEmpleados.FieldValues['iIdEstatus']:= 6;
          zQEmpleados.Post;
          ShowMessage('Se ha dado de baja al Empleado');
          PanelBaja.Visible:=False;
        end
        else
          ShowMessage('La Fecha de baja debe de ser mayor a la de Reingreso');
      except
        MessageDlg('Ocurrio un error dar de Baja a este empleado.', mtInformation, [mbOk], 0);
      end
    end;

end;

procedure Tfrm_Empleados.btnHistClick(Sender: TObject);
begin
  {if qryHistorialAltasBajas.RecordCount>0 then
  begin
    if qryHistorialAltasBajas.State=dsBrowse then
    begin
      qryHistorialAltasBajas.edit;
      btnHist.Caption:='Save';
    end
    else
    begin
      qryHistorialAltasBajas.fieldByname('dFecha').AsDateTime:=InicioLab.Date;
      qryHistorialAltasBajas.post;
      btnHist.Caption:='Edit';
    end;
  end; }
end;


procedure Tfrm_Empleados.IraCatalogoCuentasClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frm_CatalogoCuentas') then
    begin
      bandera_formulario := 'frmempleados';
      Application.CreateForm(TfrmCatalgoCuentas, frmCatalgoCuentas);
      frmCatalgoCuentas.show;
    end;
  end;
end;

procedure Tfrm_Empleados.cmdCompactarClick(Sender: TObject);
var
  jpg: TJPEGImage;
  bmp: TBitmap;
  img: TImage;
  strm : TMemoryStream;
  Bitmap: TBitmap;
  Stream: TStream;
  osImagen : TMemoryStream;
  JPGMS: TMemoryStream;
  BMPMS: TMemoryStream;
  MyJpg: TJPEGImage;
  s1,s2: Integer;
Begin
  if bImagen.Picture.Graphic is TJPegImage then
  begin
    try
      jpg := TJPEGImage.Create;
      jpg.Assign(bImagen.Picture);
      strm := TMemoryStream.Create;
      strm.Position:= 0;
      jpg.SaveToStream(strm);
      bImagen.Picture.Graphic := Nil;
      if strm.size > 300000 then
      begin
        Bitmap:= TBitmap.Create;
        try
          Bitmap.Width:= 1050;
          Bitmap.Height:= 1600;
          Bitmap.Canvas.StretchDraw(Bitmap.Canvas.ClipRect,jpg);
          jpg.Assign(Bitmap);

          Stream:= TMemoryStream.Create;
          jpg.SaveToStream(Stream);

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Update rn_escaneos_imagenes set bImagen =:Imagen Where iId =:Id ');
          connection.zcommand.Params.ParamByName('Imagen').LoadFromStream(Stream,ftGraphic);
          connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
          connection.zcommand.Params.ParamByName('Id').value := reportefotografico.FieldByName('iId').AsInteger;
          connection.zCommand.ExecSQL;
        finally
              Bitmap.Free;
        end;
      end;
    finally
      bImagen.Picture.Graphic:= jpg;
      strm.Free;
      jpg.Free;
    end;
  end
  else
  begin
    if bImagen.Picture.Graphic is TBitmap then
    begin
      MyJpg := TJPEGImage.Create;

      JPGMS := TMemoryStream.Create;
      BMPMS := TMemoryStream.Create;

      bImagen.Picture.Bitmap.SaveToStream (BMPMS);
      BMPMS.Seek(soFromBeginning ,0);

      MyJpg.Assign(bImagen.Picture.Bitmap);
      MyJpg.Compress;

      MyJpg.SaveToStream(JPGMS);
      JPGMS.Seek(soFromBeginning ,0);

      s1 := BMPMS.Size;
      s2 := JPGMS.Size;

      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Update rh_escaneos_imagenes set bImagen =:Imagen Where iId =:Id ');
      connection.zcommand.Params.ParamByName('Imagen').LoadFromStream(JPGMS,ftGraphic);
      connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
      connection.zcommand.Params.ParamByName('Id').value := reportefotografico.FieldByName('iId').AsInteger;
      connection.zCommand.ExecSQL;

      MyJpg.Free;
      BMPMS.Free;
      JPGMS.Free;
    end
  end;
end;

procedure Tfrm_Empleados.Button2Click(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmcatalogoentidadeseducativas') then
    begin
      Application.CreateForm(Tfrmcatalogoentidadeseducativas, frmcatalogoentidadeseducativas);
      frmcatalogoentidadeseducativas.Show;
      zqEntidadesEducativas.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.Button3Click(Sender: TObject);
begin

  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalogoProfesiones') then
    begin
      Application.CreateForm(TfrmCatalogoProfesiones, frmCatalogoProfesiones);
      frmCatalogoProfesiones.show;
      zqProfesiones.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.Button7Click(Sender: TObject);
begin
  Grid_Historial.Visible:=False;
end;

procedure Tfrm_Empleados.btnCancelarCartaRecClick(Sender: TObject);
begin
  SeleccionarFecha.Visible := False;
  Grid_Empleados.Enabled := true;
end;

procedure Tfrm_Empleados.CARRERAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then estadociv.SetFocus;
end;

procedure Tfrm_Empleados.CARTILLAEnter(Sender: TObject);
begin
  CARTILLA.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.CARTILLAExit(Sender: TObject);
begin
  CARTILLA.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.CARTILLAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cedula.SetFocus;
end;

procedure Tfrm_Empleados.CBXPrevPdfClick(Sender: TObject);
begin
  if CBXPrevPdf.Checked then
  begin
    if zqEmpleados.RecordCount>0 then
      if (not ZPdf.Active)
      or ((ZPdf.Active) and (ZPdf.RecordCount=0))then
      begin
        ZPdf.Close;
        ZPdf.ParamByName('sidentificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        ZPdf.Open;
      end;

    ZPdfAfterScroll(ZPdf);
  end
  else
    imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
end;


procedure Tfrm_Empleados.cdStatusCalcFields(DataSet: TDataSet);
begin
   if zq_registrospatronales.Locate('iIdRegistroPatronal', cdStatus.FieldByName('iIdRegistroPatronal').AsInteger,[]) then
      cdStatus.FieldByName('sRegistroPatronal').AsString := zq_registrospatronales.FieldByName('sRegistroPatronal').AsString;
end;

procedure Tfrm_Empleados.CEDULAEnter(Sender: TObject);
begin
  CEDULA.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.CEDULAExit(Sender: TObject);
begin
  CEDULA.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.CEDULAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then mail.SetFocus;
end;

procedure Tfrm_Empleados.cbRegPatronalesEnter(Sender: TObject);
begin
  cbRegPatronales.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.cbRegPatronalesExit(Sender: TObject);
begin
  cbRegPatronales.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.cbRegPatronalesKeyPress(Sender: TObject;var Key: Char);
begin
  if key =#13 then TipoPersonal.SetFocus;
end;

procedure Tfrm_Empleados.CredenciaAbordo1Click(Sender: TObject);
begin
   tNewGroupBox11.Visible := True;
  {SeleccionarFecha.Visible := True;
  if (rbAbordo.Checked = False) and (rbTierra.Checked = False) then
    rbAbordo.Checked := True;

  PageControl1.Pages[0].TabVisible := False;
  PageControl1.Pages[1].TabVisible := True;
  if dtFechaInicio.Date < date then
  begin
    dtFechaInicio.Date   := date;
    dtFechaVigencia.Date := date;
  end;

  if meses.Text = '0' then
  begin
      meses.Text := '2';
      dtFechavigencia.Date:=IncMonth(dtFechainicio.Date,StrToInt(meses.Text));
  end;
  PageControl1.Align := alClient;

  Grid_Empleados.Enabled := False; }
end;

procedure Tfrm_Empleados.CredencialTierra1Click(Sender: TObject);
begin
  SeleccionarFecha.Visible := True;
end;

procedure Tfrm_Empleados.CUENTAEnter(Sender: TObject);
begin
  CUENTA.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.CUENTAExit(Sender: TObject);
begin
  CUENTA.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.CUENTAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsSucursal.SetFocus;
end;

procedure Tfrm_Empleados.CURPEnter(Sender: TObject);
begin
  CURP.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.CURPExit(Sender: TObject);
begin
  CURP.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.CURPKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
       rfc.SetFocus;
end;

procedure Tfrm_Empleados.BtnTallasClick(Sender: TObject);
var
  zBuscaUltimo: TZQuery;
  Cursor: TCursor;
begin
  try
    if (zQEmpleados.State in [dsInsert, dsEdit]) and (zQEmpleados.FieldByName('idPersonal').IsNull) then
    begin
      if MessageDlg('Para proceder a dar el equipo de seguridad y tallas, es necesario primero guardar los datos del empleado. ¿Desea Guardarlo en este instante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        frmBarra1btnPostClick(nil);
        zQEmpleados.Refresh;

        Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait;
        zBuscaUltimo := TZQuery.Create(self);
        try
          zBuscaUltimo.Active := False;
          zBuscaUltimo.Connection := connection.zConnection;
          zBuscaUltimo.SQL.Clear;
          zBuscaUltimo.SQL.Text := 'Select max(idPersonal) as IdPersonal from empleados';
          zBuscaUltimo.Open;

          if zBuscaUltimo.RecordCount > 0 then
          begin
            if zQEmpleados.Locate('IdPersonal', zBuscaUltimo.FieldByName('idPersonal').AsInteger,[]) then
            begin
              frmBarra1btnEditClick(nil);
              BtnTallasClick(nil);
            end;
          end;
        finally
          Screen.Cursor := Cursor;
          zBuscaUltimo.Destroy;
        end;
      end;
    end
    else if (zQEmpleados.State in [dsInsert, dsEdit]) and (Not zQEmpleados.FieldByName('idPersonal').IsNull) then
    begin
      Application.CreateForm(TFrmHistorialEquipoSeguridad, FrmHistorialEquipoSeguridad);
      FrmHistorialEquipoSeguridad.idPersonal := zQEmpleados.FieldByName('IdPersonal').AsInteger;
      FrmHistorialEquipoSeguridad.ShowModal;
    end;
  Except
    on e: exception do
      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
  end;

end;

procedure Tfrm_Empleados.BView_EmpleadosDblClick(Sender: TObject);
var
  i:Integer;
  pos:Tbookmark;
begin
  for i := 0 to BView_Empleados.DataController.GetSelectedCount-1 do//   .SelectedRows.Count do
  begin
    if tNewGroupBox11.Visible=True then
    begin
      try
          ListBox1.Items.Add(BView_Empleados.Controller.SelectedRows[i].Values[0]);
      except

      end;
    end;
  end;
end;

procedure Tfrm_Empleados.cxDbGridTablaStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  AItem:= (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatusPersonal');
  if VarToStr(ARecord.Values[AItem.Index])='Contratado' then
    AStyle:=Contratado
  else
  begin
    if VarToStr(ARecord.Values[AItem.Index])='Pendiente' then
      AStyle:=Pendiente
    else
      AStyle:=NoContratado;
  end;
end;

procedure Tfrm_Empleados.DatosGenerales1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_Datos_Generales.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_Datos_Generales.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;

 if cdStatus.active then cdStatus.EmptyDataSet
  else
  begin
    cdStatus.CreateDataSet;
    cdStatus.Open;
  end;
  ExportarPDF(BView_Empleados, cdStatus);
  cdStatus.IndexFieldNames:='idorganizacion';
  frxReport1.LoadFromFile(global_files + global_miReporte + '_Datos_Generales.fr3') ;
  frxReport1.ShowReport() ;
end;

procedure Tfrm_Empleados.tsSucursalKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then interbancaria.SetFocus;
end;

procedure Tfrm_Empleados.dbEntidadEducativaEnter(Sender: TObject);
begin
  dbEntidadEducativa.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.dbEntidadEducativaExit(Sender: TObject);
begin
  dbEntidadEducativa.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.dbEntidadEducativaKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then dbProfesiones.SetFocus;
end;

procedure Tfrm_Empleados.dbiEdadEnter(Sender: TObject);
begin
  dbiEdad.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.dbiEdadExit(Sender: TObject);
begin
  dbiEdad.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.dbInfonavitKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if tsNoCREDITOinfonaVIT.enabled = true then
      tsNoCREDITOinfonaVIT.SetFocus
  end;
end;

procedure Tfrm_Empleados.dbLaboraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then lNacimiento.setFocus;
end;

procedure Tfrm_Empleados.DBLCHorariosEnter(Sender: TObject);
begin
  DBLCHorarios.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.DBLCHorariosExit(Sender: TObject);
begin
  DBLCHorarios.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.DBLCHorariosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsDescanso.SetFocus;
end;

procedure Tfrm_Empleados.dblcxperiodoEnter(Sender: TObject);
begin
  dblcxperiodo.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.dblcxperiodoExit(Sender: TObject);
begin
  dblcxperiodo.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.dblcxperiodoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Nombre_Emer.SetFocus;
end;

procedure Tfrm_Empleados.tsOrganizacionEnter(Sender: TObject);
begin
    tsOrganizacion.Color := global_color_entradaPU;;
end;

procedure Tfrm_Empleados.tsOrganizacionExit(Sender: TObject);
begin
    tsOrganizacion.Color := $00E6FEFF;
end;

procedure Tfrm_Empleados.tsOrganizacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       tsIdEmpleado.SetFocus;
end;

procedure Tfrm_Empleados.dblSexoChange(Sender: TObject);
begin
  if dblSexo.Text =  'FEMENINO' then
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture)
  else
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture);


  if (zQEmpleados.State in [dsInsert]) or (zQEmpleados.State in [dsEdit]) then
    zQEmpleados.FieldByName('lSexo').AsString := dblSexo.Text;
end;

procedure Tfrm_Empleados.dblSexoEnter(Sender: TObject);
begin
  dblSexo.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.dblSexoExit(Sender: TObject);
begin
  dblSexo.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.dblSexoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then estadociv.SetFocus;
end;

procedure Tfrm_Empleados.dbProfesionesEnter(Sender: TObject);
begin
  dbProfesiones.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.dbProfesionesExit(Sender: TObject);
begin
  dbProfesiones.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.dbProfesionesKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then lnacimiento.SetFocus;
end;

procedure Tfrm_Empleados.dbPuestoEnter(Sender: TObject);
begin
  dbPuesto.Style.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.dbPuestoExit(Sender: TObject);
begin
  dbPuesto.Style.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.dbPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then tdBanco.SetFocus;
end;

procedure Tfrm_Empleados.dPensionAlimenticiaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       DBLCHorarios.SetFocus;
end;

procedure Tfrm_Empleados.dszQEmpleadosDataChange(Sender: TObject;
  Field: TField);
var
    edad: Integer;
begin
    NACIMIENTO.Color := global_color_salidaPU;
    edad:= yearof(date) - yearof(nacimiento.date);
    dbiedad.Value := edad;
end;

procedure Tfrm_Empleados.ds_organizacionDataChange(Sender: TObject;
  Field: TField);
begin
    IsOpen:= False;
    if QryOrganizacion.FieldByName('nombreorganizacion').AsString = '<<TODAS LAS EMPRESAS>>' then
    begin
       zqEmpleados.Filtered := false;
       zqDepartamentos.Filtered := false;
       zq_Puestos.Filtered  := false;
    end
    else
    begin
      zqEmpleados.Filtered := false;
      zqEmpleados.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));
      zqEmpleados.Filtered := True;

      zqDepartamentos.Filtered := false;
      zqDepartamentos.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));
      zqDepartamentos.Filtered := True;   
    end;
    IsOpen:= True;


end;

procedure Tfrm_Empleados.ds_organizacionDatosDataChange(Sender: TObject;
  Field: TField);
begin
    if QryOrganizacionDatos.FieldByName('nombreorganizacion').AsString = '<<TODAS LAS EMPRESAS>>' then
       zqDepartamentos.Filtered := false
    else
    begin
        zqDepartamentos.Filtered := false;
        zqDepartamentos.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacionDatos.FieldByName('idorganizacion').AsInteger));
        zqDepartamentos.Filtered := True;

        zq_Puestos.Filtered := false;
        zq_Puestos.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacionDatos.FieldByName('idorganizacion').AsInteger));
        zq_Puestos.Filtered := True;
    end;
end;

procedure Tfrm_Empleados.txtCuentasContablesKeyPress(Sender: TObject;var Key: Char);
begin
  if key =#13 then cbRegPatronales.SetFocus;
end;

procedure Tfrm_Empleados.ZBlobPdfAfterCancel(DataSet: TDataSet);
begin
  EdtDEscripcion.ReadOnly := true;
  MBarra(Zblobpdf);
end;

procedure Tfrm_Empleados.ZBlobPdfAfterPost(DataSet: TDataSet);
begin
  EdtDEscripcion.ReadOnly := true;
  MBarra(Zblobpdf);
end;

procedure Tfrm_Empleados.ZBlobPdfBeforeEdit(DataSet: TDataSet);
begin
  EdtDEscripcion.ReadOnly := false;
  MBarra(Zblobpdf);
end;

procedure Tfrm_Empleados.ZBlobPdfBeforeInsert(DataSet: TDataSet);
begin
  EdtDEscripcion.ReadOnly := false;
  MBarra(Zblobpdf);
end;

procedure Tfrm_Empleados.ZPdfAfterCancel(DataSet: TDataSet);
begin
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.ZPdfAfterDelete(DataSet: TDataSet);
begin
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.ZPdfAfterInsert(DataSet: TDataSet);
begin
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.ZPdfAfterOpen(DataSet: TDataSet);
begin
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.ZPdfAfterPost(DataSet: TDataSet);
begin
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.ZPdfAfterRefresh(DataSet: TDataSet);
begin
  if ZBlobPdf.State = dsBrowse then cargargridpdf;
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.ZPdfAfterScroll(DataSet: TDataSet);
var
  pathtemp:string;
  ident:string;
begin
  PdfRecordCount.Caption := IntToStr(ZPdf.RecNo)+' de '+IntToStr(ZPdf.RecordCount);
  try
    //barra

    if CBXPrevPdf.Checked then
    begin
      {BitBtnFirst.Enabled := ZPdf.RecNo > 1;
      BitBtnBack.Enabled := ZPdf.RecNo > 1;
      BitBtnLast.Enabled := ZPdf.RecNo < ZPdf.RecordCount;
      BitBtnnext.Enabled := ZPdf.RecNo < ZPdf.RecordCount;

      BitBtnAdd.Enabled := not(ZBlobPdf.State in [dsEdit,dsInsert]);
      BitBtnEdit.Enabled := ((ZPdf.RecordCount>0) and (ZPdf.RecNo>0));
      BitBtnDel.Enabled := ((ZPdf.RecordCount>0) and (ZPdf.RecNo>0));;
                                                                         }
      Mbarra(ZPdf);
      ident := ZPdf.FieldByName('iid').AsString;

      ZBlobPdf.Close;
      ZBlobPdf.ParamByName('iid').AsString := ident;
      ZBlobPdf.Open;

      if ZBlobPdf.RecordCount = 1 then
      begin

        pathtemp := DirTemp+'\'+'inteligentpdftmp';
        if FileExists(pathtemp) then
        begin
          DeleteFile(pathtemp);
        end;

        TBlobField(ZBlobPdf.FieldByName('bPdf')).SaveToFile(pathtemp);
        //LimpiarCompDocumento;{+'\'+ZqCtrlDoctos.FieldByName('sfolio').AsString}
        imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
        LoadFilePdf(tfilename(pathtemp),ViewPrintQP);
        //CargarDocumento(pathtemp);
      end;
    end;
  except
    on e:exception do;
  end;
end;

procedure Tfrm_Empleados.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure Tfrm_Empleados.edtLibretaMarKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
       mail.SetFocus;
end;


procedure Tfrm_Empleados.ESTADOCIVEnter(Sender: TObject);
begin
  ESTADOCIV.Color := global_color_entradaPU
end;

procedure Tfrm_Empleados.ESTADOCIVExit(Sender: TObject);
begin
  ESTADOCIV.Color := global_color_salidaPU
end;

procedure Tfrm_Empleados.ESTADOCIVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then nacimiento.SetFocus;
end;

procedure Tfrm_Empleados.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin
  listaCampos.Destroy;
  action := cafree ;
end;

procedure Tfrm_Empleados.FormCreate(Sender: TObject);
begin
  listaCampos:=TstringList.Create;
end;

procedure Tfrm_Empleados.FormResize(Sender: TObject);
var
  tamaño:integer;
begin
  tamaño := (self.Width div 3);
end;

procedure Tfrm_Empleados.FormShow(Sender: TObject);
begin
  lAlerta := True;

  DirTemp := ExtractFilePath(Application.ExeName)+'temp';
  if not DirectoryExists(dirtemp) then
    MkDir(dirtemp);
  Mbarra(ZPdf);    
  OpcButton := '' ;
  sIdOrig := '';
  EditarSN := False;
  EditarDOCTOS := False;
  EliminarHistoriaAltas := False;

  //Esto es par refrescar antes de imprimir las credenciales la conf. de RH
  Connection.configuracionRecHum.Active := False;
  Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
  Connection.configuracionRecHum.Open  ;

  bMostrar := false;
  pgDatos.ActivePage := NxTabSheet1;
  PageControl2.ActivePageIndex := 0;

  zQRH_Profesiones.Active := False ;
  zQRH_Profesiones.Open;

  zqProfesiones.Active := False;
  zqProfesiones.Open;

  zqHistorial.Active := False;
  zqHistorial.Open;

  cdBaja.Active := False;
  cdBaja.Open;

  IsOpen:=false;
  zQEmpleados.DisableControls;

  try
    zQEmpleados.Active := False;
    zQEmpleados.Open;
  finally
    StatusPersonalChange(self);
    zqEmpleados.EnableControls;
    IsOpen:=true;
    zQEmpleadosAfterScroll(zQEmpleados);
  end;

  qryEstatus.Active := False;
  qryEstatus.Open;

  zQDepartamentos.Active := False;
  zQDepartamentos.Open;

   zqConfiguracionRh.Active := False;
   zqConfiguracionRh.ParamByName('contrato').AsString := global_contrato;
   zqConfiguracionRh.Open;

   tsNombreAutoriza.Text := zqConfiguracionRh.FieldByName('sRepresentante').AsString   ;
   tsNombreEntrega.Text  := zqConfiguracionRh.FieldByName('sNombre').AsString   ;

  //Mostrar o no el codigo QR
  if zqConfiguracionRh.FieldByName('eQR').AsString = 'Si' then
    pgQR.TabVisible := True
  else
    pgQR.TabVisible := False;

  zq_Puestos.Active := False;
  zq_Puestos.Open;

  zqPeriodo.Open;
  zqHorarioslab.Open;

  zqEntidadesEducativas.Active := False;
  zqEntidadesEducativas.Open;

  zq_registrospatronales.Active := False;
  zq_registrospatronales.Open;

  ZPdf.active:=false;
  ZPdf.Open;

  zqDescanso.Active := False;
  zqDescanso.Open;

  zqBancos.Active := False;
  zqBancos.Open;

  dtFechavigencia.Date := Date;
  dtCartaRecomendacion_Inicial.Date := Date;
  dtCartaRecomendacion_Final.Date := Date;
  InicioLab.Date := Date;

  qryHistorialAltasbajas.Active := False;
  if not zqEmpleados.FieldByName('sIdEmpleado').IsNull Then
    qryHistorialAltasbajas.ParamByName('empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString 
  else
    qryHistorialAltasBajas.paramByName('empleado').asString := '0';

  if not qryHistorialAltasBajas.ParamByName('Organizacion').isNull Then
     qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := tsOrganizacion.KeyValue
  else
     qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := 0 ;

  qryHistorialAltasbajas.Open;

  QryOrganizacion.Active := False;
  QryOrganizacion.ParamByName('padre').AsInteger := -5;
  QryOrganizacion.Open;

  if QryOrganizacion.RecordCount > 0 then
     cmbOrganizacion.KeyValue := 0;

  QryOrganizacionDatos.Active := False;
  QryOrganizacionDatos.ParamByName('padre').AsInteger := -5;
  QryOrganizacionDatos.Open;

  zqPais.Active := False;
  zqPais.Open;

  EstatusEmpleado := tsEstatus.Text;
  InicializarCampos;
  ActualizaLibretas;
end;

procedure Tfrm_Empleados.cargargridpdf;
begin

end;

procedure Tfrm_Empleados.frmBarra1btnAddClick(Sender: TObject);
begin
  pgDatos.ActivePage := NxTabSheet1;
  frmBarra1.btnAddClick(Sender);
  Pagecontrol2.ActivePageIndex := 0;
  grid_empleados.Enabled := False;
  IsOpen:=false;
  zQEmpleados.Append;

  dblSexo.Text := 'MASCULINO';

  //Asignamos valosres por default
//  if zqDepartamentos.RecordCount > 0 then
//    tsIdDepartamento.KeyField   := zqDepartamentos.FieldValues['iddepartamento'];

  zQEmpleados.FieldValues['sCuenta']                  := '0000000000';
  zQEmpleados.FieldValues['sCuentaInterbancaria']     := '000000000000000000';
  zQEmpleados.FieldValues['dSueldo']                  := 0;
  zQEmpleados.FieldValues['sLugarNacimiento']         := '*';
  zQEmpleados.FieldValues['sCurp']                    := '*';
  zQEmpleados.FieldValues['sImss']                    := '*';
  zQEmpleados.FieldValues['sRfc']                     := '*';
  zQEmpleados.FieldValues['sEstadoCivil']             := 'Soltero';
  zQEmpleados.FieldValues['sLibretaMar']              := '*';
  zQEmpleados.FieldValues['sCartilla']                := '*';
  zQEmpleados.FieldValues['sCedulaProfesional']       := '*';
  zQEmpleados.FieldValues['sCp']                      := '*';
  zQEmpleados.FieldValues['sTipoSangre']              := '*';
  zQEmpleados.FieldValues['sApellidoPaterno']         := '*';
  zQEmpleados.FieldValues['sApellidoMaterno']         := '*';
  zQEmpleados.FieldValues['sNoCreditoInfonavit']      := '-';
  zQEmpleados.FieldValues['sNombre_Emergencia']       := '*';
  zQEmpleados.FieldValues['sParentesco_Emergencia']   := '*';
  zQEmpleados.FieldValues['sNumero']                  := '*';
  zQEmpleados.FieldValues['sTelefonoCelular']         := '*';
  zQEmpleados.FieldValues['sTelefono']                := '*';
  zQEmpleados.FieldValues['sStatusPersonal']          := 'Pendiente';
  zQEmpleados.FieldValues['sSucursal']                :='xxx';
  zQEmpleados.FieldValues['sEmail']                   :='*';
  zQEmpleados.FieldValues['sCalle']                   :='*';
  zQEmpleados.FieldValues['sNumero']                  :=' ';
  zQEmpleados.FieldValues['sColonia']                 :='*';
  zQEmpleados.FieldValues['sCiudad']                  :='*';
  zQEmpleados.FieldValues['sLocalidad']               :='*';
  zQEmpleados.FieldValues['sEstado']                  :='*';
  zqPais.first;
  zQEmpleados.FieldValues['iIdNacionalidad']          := zqPais.FieldByName('iIdNacionalidad').AsInteger;
  zQEmpleados.FieldValues['sStatusTipoPersonal']      :='A bordo';

  NACIMIENTO.Date := DATE;

  INICIOLAB.DatE  := DATE;
  dbiEdad.Value   := 0;

  if zq_puestos.RecordCount > 0 then
  begin
    dbPuesto.EditValue := zq_puestos.FieldValues['idcargo'];
    zQEmpleados.FieldValues['iId_Puesto'] := dbPuesto.EditValue;
  end;

  tsOrganizacion.KeyValue   := cmbOrganizacion.KeyValue;
  //tsIdDepartamento.KeyValue := 4;

  if zq_registrospatronales.RecordCount > 0 then
  begin
    cbRegPatronales.KeyValue := zq_registrospatronales.FieldValues['iIdRegistroPatronal'];
    zQEmpleados.FieldValues['iIdRegistroPatronal'] := cbRegPatronales.KeyValue;
  end;

  dblsexo.ItemIndex := 1;
  zQEmpleados.FieldValues['lSexo'] := dblsexo.Text;

  if qryestatus.RecordCount > 0 then
  begin
    //tsEstatus.KeyValue := 1;
    tsEstatus.KeyValue := qryEstatus.FieldByName('iIdEstatus').AsInteger;
    zQempleados.FieldValues['iIdEstatus'] :=  tsEstatus.KeyValue;
  end;

  if zqHorarioslab.RecordCount > 0 then
  begin
    dblchorarios.KeyValue := zqHorarioslab.FieldValues['iIdhorario'];
    zQEmpleados.FieldValues['iIdhorario'] := dblchorarios.KeyValue;
  end;

  if zqPeriodo.RecordCount > 0 then
  begin
    dblcxperiodo.KeyValue := zqperiodo.FieldValues['iIdPeriodo'];
    zQEmpleados.FieldValues['iIdPeriodo'] := dblcxperiodo.KeyValue;
  end;

  EditarSN := False;
  dblSexo.ItemIndex := 1;
 // tdSueldo.Text := '0';


  if dblSexo.Text =  'FEMENINO' then
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture)
  else
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture);

  sValidaID   := '';
  sValidaRFC  := '';
  sValidaCURP := '';
  sValidaNSS  := '';
  tsIdEmpleado.Enabled:=true;
  tsIdEmpleado.SetFocus;
  PnlFiltros.Enabled := False;
end;

procedure Tfrm_Empleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  EditarSN:= FALSE;
  EliminarHistoriaAltas := False;
  frmBarra1.btnCancelClick(Sender);
  zqEmpleados.Cancel;
  grid_empleados.Enabled := True;
  AdvGlowButton1.Caption:= 'Mostrar';
  PnlFiltros.Enabled := True;
  grid_empleados.SetFocus;
  IdEmpleadoAnt := '';
  TipoPersonal.Enabled:=True;
  IsOpen:=true;

end;

procedure Tfrm_Empleados.frmBarra1btnDeleteClick(Sender: TObject);
var
  Id : String;
begin
  If zQEmpleados.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        if zQEmpleados.FieldByName('sStatusPersonal').AsString='Contratado' then
          MessageDlg('NO SE PUEDE BORRAR, YA QUE EL PERSONAL ESTA CONTRATADO', mtInformation, [mbOk], 0);

        connection.QryBusca.Active := False ;
        connection.qryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select sIdProveedor from con_tesoreriapegresos Where sIdProveedor =:Empleado');
        connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('Empleado').Value    := zQEmpleados.FieldValues['sIdEmpleado'] ;
        connection.QryBusca.Open;
        If connection.QryBusca.RecordCount > 0 Then
            MessageDlg('NO SE PUEDE BORRAR, EXISTE CON MOVIMIENTOS DE COMPROBACION', mtInformation, [mbOk], 0)
        Else
        begin
          connection.QryBusca.Active := False ;
          connection.qryBusca.SQL.Clear ;
          connection.QryBusca.SQL.Add('Select * from rh_historialsueldos Where sIdEmpleado =:Empleado');
          connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString ;
          connection.QryBusca.Params.ParamByName('Empleado').Value    := zQEmpleados.FieldValues['sIdEmpleado'] ;
          connection.QryBusca.Open;
          If connection.QryBusca.RecordCount > 0 Then
             MessageDlg('NO SE PUEDE BORRAR, EXISTE HISTORIAL DE SUELDOS', mtInformation, [mbOk], 0)
          Else
          begin
            connection.QryBusca.Active := False ;
            connection.qryBusca.SQL.Clear ;
            connection.QryBusca.SQL.Add('Select * from rh_historialaltasbajas Where sIdEmpleado =:Empleado');
            connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString ;
            connection.QryBusca.Params.ParamByName('Empleado').Value    := zQEmpleados.FieldValues['sIdEmpleado'] ;
            connection.QryBusca.Open;
            If connection.QryBusca.RecordCount > 0 Then
                MessageDlg('NO SE PUEDE BORRAR, EXISTE MOVIMIENTOS DE HISTORIAL DE ALTAS Y BAJAS', mtInformation, [mbOk], 0)
            Else
            begin
              connection.QryBusca.Active := False ;
              connection.qryBusca.SQL.Clear ;
              connection.QryBusca.SQL.Add('Select * from rh_escaneos_imagenes Where sIdEmpleado =:Empleado');
              connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString ;
              connection.QryBusca.Params.ParamByName('Empleado').Value    := zQEmpleados.FieldValues['sIdEmpleado'] ;
              connection.QryBusca.Open;
              If connection.QryBusca.RecordCount > 0 Then
                  MessageDlg('NO SE PUEDE BORRAR, EXISTE DOCUMENTOS SOPORTE ANEXADOS', mtInformation, [mbOk], 0)
              Else
              begin
                connection.QryBusca.Active := False ;
                connection.qryBusca.SQL.Clear ;
                connection.QryBusca.SQL.Add('Select * from con_equiposporempleado Where sIdEmpleado =:Empleado');
                connection.QryBusca.Params.ParamByName('Empleado').DataType := ftString ;
                connection.QryBusca.Params.ParamByName('Empleado').Value    := zQEmpleados.FieldValues['sIdEmpleado'] ;
                connection.QryBusca.Open;
                If connection.QryBusca.RecordCount > 0 Then
                  MessageDlg('NO SE PUEDE BORRAR, EXISTEN EQUIPOS ASIGNADOS AL EMPLEADO', mtInformation, [mbOk], 0)
                Else
                begin
                  Id := zQEmpleados.FieldValues['sIdEmpleado'];

                  zQEmpleados.Delete;
                  IntegridadReferencial(Id,'rh_historialaltasbajas','Eliminar');

                  if zqConfiguracionRh.FieldValues['eNomina']='Si' then
                  begin
                    zQPersonal.Active := False;
                    zQPersonal.ParamByName('codigopersonal').AsString := Id;
                    zQPersonal.Open;
                    if zQPersonal.RecordCount > 0 then
                    begin
                      zQPersonal.Edit;
                      zQPersonal.FieldByName('Activo').AsString:='NO';
                      zQPersonal.Post;
                    end;

                    zQ_Precontrato.Active := False;
                    zQ_Precontrato.ParamByName('sIdEmpleado').AsString := Id;
                    zQ_Precontrato.Open;
                    if zQPersonal.RecordCount > 0 then
                    begin
                      zQ_Precontrato.Edit;
                      zQ_Precontrato.FieldByName('status_contra').AsString:='Baja';
                      zQ_Precontrato.Post;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end;
    PnlFiltros.Enabled := true;
end;

procedure Tfrm_Empleados.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQEmpleados.RecordCount > 0 then
  begin
    IsOpen:=false;
    IdEmpleadoAnt   := tsIdEmpleado.Text;
    EstatusEmpleado := tsEstatus.Text;
    grid_empleados.Enabled := False;
    zQEmpleados.Edit;

    EditarSN := TRUE;
    PnlFiltros.Enabled := False;

    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString='A bordo' then
    begin
      connection.QryBusca.Active:=False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT sIdEmpleado FROM guardiasmovtos WHERE sIdEmpleado = :Id');
      connection.QryBusca.ParamByName('Id').AsString := tsIdEmpleado.Text;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
      begin
        if zQEmpleados.FieldByName('sStatusPersonal').AsString='Contratado' then
        begin
          tsIdEmpleado.Enabled:=False;
          TipoPersonal.Enabled:=False;
        end;
      end;
    end;

    if zq_registrospatronales.RecordCount > 0 then
    begin
        zq_registrospatronales.First;
        cbRegPatronales.KeyValue := zq_registrospatronales.FieldByName('iIdRegistroPatronal').AsInteger;
    end;

    sValidaID   := tsIdEmpleado.Text;
    sValidaRFC  := rfc.Text;
    sValidaCURP := curp.Text;
    sValidaNSS  := imss.Text;

  end;
end;

procedure Tfrm_Empleados.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_Empleados.frmBarra1btnPostClick(Sender: TObject);
Var i, cuenta: Integer;
  Query, zCommand: TZQuery;
  Aplica     : String;
  nombres,
  cadenas    : TStringList;
  scanTable  : Boolean;
  Indice     : Integer;
  SavePlace  : TBookmark;
begin
 // try
    if (zQEmpleados.State in [dsInsert]) or (zQEmpleados.State in [dsEdit]) then
      zQEmpleados.FieldByName('lSexo').AsString := dblSexo.Text;

    scanTable:=false;
    frmbarra1.btnPost.setfocus;
    Query := TZQuery.Create(Self);
    Query.Connection := connection.ZConnection;
    Aplica:='';

    if Length(INTERBANCARIA.Text) <> 18 then
    begin
      if StrToInt64(interbancaria.Text) = 0 then
         interbancaria.Text := '000000000000000000'
      else
      begin
          ShowMessage('El Campo de la clave interbancaria debe llevar  18 dígitos');
          INTERBANCARIA.SetFocus;
          Exit;
      end;
    end;

     if QryOrganizacionDatos.FieldByName('nombreorganizacion').AsString = '<<TODAS LAS EMPRESAS>>' then
     begin
         ShowMessage('Debe Seleccionar una organización');
         tsOrganizacion.SetFocus;
         Exit;
     end;     

    nombres := TStringList.Create;
    cadenas := TStringList.Create;
    nombres.Add('Departamento');  cadenas.Add(TsIdDepartamento.Text);
    nombres.Add('Puesto');  cadenas.Add(dbPuesto.Text);

    if not validaTexto(nombres, cadenas, 'Empleados', tsIdEmpleado.Text) then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;

    //Funcio para validar datos.
    if ValidaDoctos then
       exit;

    if sIArchivo <> '' then
    begin
      Query.Active := False;
      Query.SQL.Text := 'SELECT iId FROM catalogo_imagenes WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado';
      Query.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
      Query.Open;
      cuenta:=Query.RecordCount;
      zCommand := TZQuery.Create(Self);
      zCommand.Connection := connection.ZConnection;

      zCommand.Active := False;
      zCommand.SQL.Clear;
      if Query.RecordCount > 0 then
      begin
        zcommand.SQL.Add('UPDATE catalogo_imagenes SET bImagen = :Imagen WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado');
      end
      else
      begin
          zcommand.SQL.Add('INSERT INTO catalogo_imagenes (sReferencia, sIdentificador, bImagen) VALUES ("Catalogo_Empleados", :IdEmpleado, :Imagen)');
      end;

      zcommand.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
      zcommand.Params.ParamByName('Imagen').LoadFromFile(sIArchivo, ftGraphic);
      Try
        zCommand.ExecSQL();
        if FileExists(sIArchivo) then
            DeleteFile(Pchar(sIArchivo));
        sIArchivo := '';
      Except
        on E:Exception do
        begin
          ShowMessage('No se pudo guardar la imagen ' + E.Message);
        end;
      End;
    end
    else if sIArchivo1 <> '' then
    begin
      Query.Active := False;
      Query.SQL.Text := 'SELECT iId FROM catalogo_imagenes WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado';
      Query.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
      Query.Open;
      cuenta:=Query.RecordCount;
      zCommand := TZQuery.Create(Self);
      zCommand.Connection := connection.ZConnection;
      zCommand.Active := False;
      zCommand.SQL.Clear;
      if Query.RecordCount > 0 then
      begin
        zcommand.SQL.Add('UPDATE catalogo_imagenes SET bQR = :ImagenQR WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado');
      end
      else
      begin
        zcommand.SQL.Add('INSERT INTO catalogo_imagenes (sReferencia, sIdentificador, bImagen, bQR) VALUES ("Catalogo_Empleados", :IdEmpleado, :Imagen, :ImagenQR)');
      end;
      zcommand.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
      zcommand.Params.ParamByName('ImagenQR').LoadFromFile(sIArchivo1, ftGraphic);
      Try
        zCommand.ExecSQL();
         if FileExists(sIArchivo1) then
            DeleteFile(Pchar(sIArchivo1));
        sIArchivo1 := '';
      Except
        on E:Exception do
        begin
        ShowMessage('No se pudo guardar la imagen ' + E.Message);
        end;
      End;
    end;

    AdvGlowButton1.Enabled := True;
    PnlFiltros.Enabled := True;

    try
    {$REGION 'Historial de ALTAS/BAJAS'}
    if zQEmpleados.State <> dsInsert then
    begin
      if EliminarHistoriaAltas = False then
      begin
        if tsEstatus.Text <> EstatusEmpleado  then
        begin
          if zQEmpleados.State = dsEdit then

        end;
      end;
    end;
    {$ENDREGION}
    Except
    end;

    zQEmpleados.FieldValues['idorganizacion']         := tsOrganizacion.KeyValue;
    //zQEmpleados.FieldValues['iddepartamento']         := tsIdDepartamento.KeyValue;
    zQEmpleados.FieldValues['iId_Puesto']             := dbPuesto.EditValue;
    zQEmpleados.FieldValues['iIdEstatus']             := tsEstatus.KeyValue;
    zQEmpleados.FieldValues['id_entidadeseducativas'] := dbEntidades1.KeyValue;
    zQEmpleados.FieldValues['iIdProfesiones']         := dbProfesiones.KeyValue;
    zQEmpleados.FieldValues['iIdhorario']             := DBLChorarios.KeyValue;
    zQEmpleados.FieldValues['iIdDiasdescanso']        := tsDescanso.KeyValue;
    zQEmpleados.FieldValues['iIdPeriodo']             := dblcxperiodo.KeyValue;
    zQEmpleados.FieldValues['departamento']           :='*';
    zQEmpleados.FieldValues['profesion']              :='*';
   // zQEmpleados.FieldValues['dSueldo']                := StrToFloat(tdSueldo.Text);
    zQEmpleados.FieldValues['sCc']                    := tscentrodecostos.Text;
    zQEmpleados.FieldValues['Estatus']                :='*';
    zQEmpleados.FieldValues['CodigoCargo']            :='*';
    zQEmpleados.FieldValues['DescripcionPuesto']      :='*';
    zQEmpleados.FieldValues['iIdRegistroPatronal']    :=zq_registrospatronales.FieldByName('iIdRegistroPatronal').AsInteger;

  if zqConfiguracionRh.FieldValues['eNomina']='Si' then
  begin
    case zQEmpleados.state of
      dsEdit:
      begin
        scanTable:=false;
        zQPersonal.Active := False;
        zQPersonal.ParamByName('codigopersonal').AsString := VarToStr(zQEmpleados.FieldByName('sIdEmpleado').OldValue);
        zQPersonal.Open;
        if zQPersonal.RecordCount > 0 then
          zQPersonal.Edit
        else
        begin
            //raise exception.Create('El registro no esta guardado en nuc_personal.');
            {Funcion para dar de alta el personal cuando no existe en el nuc_personal}
            if MessageDlg('El registro no esta guardado en nuc_personal, desea Guardarlo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                Inserta_nuc_personal;
                zQPersonal.Active := False;
                zQPersonal.ParamByName('codigopersonal').AsString := VarToStr(zQEmpleados.FieldByName('sIdEmpleado').OldValue);
                zQPersonal.Open;
                zQPersonal.Edit;
            end
            else
               raise exception.Create('El registro no se ha actualizado..');
        end;
      end;
      dsInsert:
      begin
        zQPersonal.Active := False;
        zQPersonal.Open;
        zQPersonal.Append;

        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('SELECT MAX(idpersonal) AS id FROM nuc_personal;');
        connection.QryBusca.Open;

          if connection.QryBusca.FieldValues['id'] = null then
            zQPersonal.FieldValues['idpersonal'] := 1
          else
            zQPersonal.FieldValues['idpersonal'] := connection.QryBusca.FieldValues['id'] + 1;

        if EditarSN = False then
        begin
           zQPersonal.FieldByName('fechaalta').AsDateTime   := Date;
           zQPersonal.FieldByName('idpostulante').AsInteger := 0;
        end;
      end;
    end;

    zQPersonal.FieldByName('idcargo').AsInteger:=zQEmpleados.FieldByname('iId_Puesto').asinteger;

    IdEmpleadoAct := tsIdEmpleado.Text;

    if Not(scanTable) then
    begin
      zQPersonal.FieldByName('codigopersonal').AsString:=zQEmpleados.FieldByName('sIdEmpleado').AsString;
      zQPersonal.FieldByName('Activo').AsString:='SI';
      zQPersonal.FieldByName('Nombres').AsString:=zQEmpleados.FieldByName('sNombreCompleto').AsString;
      zQPersonal.FieldByName('APaterno').AsString:=zQEmpleados.FieldByName('sApellidoPaterno').AsString;
      zQPersonal.FieldByName('AMaterno').AsString:=zQEmpleados.FieldByName('sApellidoMaterno').AsString;
      zQPersonal.FieldByName('numerosegurosocial').AsString:=zQEmpleados.FieldByName('sImss').AsString;
      zQPersonal.FieldByName('curp').AsString:=zQEmpleados.FieldByName('sCurp').AsString;
      zQPersonal.FieldByName('telefono').AsString:=zQEmpleados.FieldByName('sTelefono').AsString;
      zQPersonal.FieldByName('gruposanguineo').AsString:=zQEmpleados.FieldByName('sTipoSangre').AsString;
      zQPersonal.FieldByName('rfc').AsString:=zQEmpleados.FieldByName('sRfc').AsString;
      zQPersonal.FieldByName('contacto').AsString:=zQEmpleados.FieldByName('sNombre_Emergencia').AsString;
      zQPersonal.FieldByName('telefonocontacto').AsString:=zQEmpleados.FieldByName('sNumero_Emergencia').AsString;
      zQPersonal.FieldByName('Correo').AsString:=zQEmpleados.FieldByName('seMail').AsString;
      zQPersonal.FieldByName('Calle').AsString:=zQEmpleados.FieldByName('sCalle').AsString;
      zQPersonal.FieldByName('Ciudad').AsString:=zQEmpleados.FieldByName('sCiudad').AsString;
      zQPersonal.FieldByName('CP').AsString:=zQEmpleados.FieldByName('sCP').AsString;
      zQPersonal.FieldByName('Numero').AsString:=zQEmpleados.FieldByName('sNumero').AsString;
      zQPersonal.FieldByName('EstadoCivil').AsString:=zQEmpleados.FieldByName('sEstadoCivil').AsString;
      zQPersonal.FieldByName('NumeroInfonavit').AsString:=zQEmpleados.FieldByName('sNoCreditoInfonavit').AsString;
      zQPersonal.FieldByName('fechanacimiento').AsDateTime:=zQEmpleados.FieldByName('dFechaNacimiento').AsDateTime;
      zQPersonal.FieldByName('sexo').AsString:= dblSexo.Text;
      zQPersonal.FieldByName('Colonia').AsString:=zQEmpleados.FieldByName('sColonia').AsString;
      zQPersonal.FieldByName('Municipio').AsString:=zQEmpleados.FieldByName('sLocalidad').AsString;
      zQPersonal.FieldByName('Estado').AsString:=zQEmpleados.FieldByName('sEstado').AsString;
      zQPersonal.FieldByName('Pais').AsString:=tsPais.Text;
    end
    else
    begin
      for I := 0 to zQEmpleados.Fields.Count-1 do
      begin
        if zQEmpleados.Fields[i].Value<> zQEmpleados.Fields[i].OldValue then
        begin
          Indice:=ListaCampos.IndexOfName(zQEmpleados.Fields[i].FieldName);
          if Indice>-1 then
          begin
            zQPersonal.FieldByName(ListaCampos.Values[zQEmpleados.Fields[i].FieldName]).Value:=zQEmpleados.Fields[i].value;
          end;
        end;
      end;
    end;
    zQEmpleados.Post;
    zQPersonal.Post;
  end
  else
  begin
    IdEmpleadoAct := tsIdEmpleado.Text;
    zQEmpleados.Post;
  end;



    //Aqui llamamos a la funcion para editar los ids de los empleados,,,
    if IdEmpleadoAnt <> '' then
      if IdEmpleadoAct <> IdEmpleadoAnt then
        ActualizaIdEmpleado(IdEmpleadoAct, IdEmpleadoAnt);

    if EditarSN = False then
    begin
        zQEmpleados.Refresh;
        BView_Empleados.DataController.ClearSelection;
        BView_Empleados.DataController.DataSource.DataSet.Locate('sIdEmpleado', IdEmpleadoAct,[]);
        indice := BView_Empleados.DataController.GetRootDataController.GetSelectionAnchorRowIndex;
        BView_Empleados.DataController.SelectRows(indice, indice);
    end;

    IdEmpleadoAnt := '';
    IdEmpleadoAct := '';

    SavePlace := BView_Empleados.DataController.DataSource.DataSet.GetBookmark;
    if EditarSN then
        zQEmpleados.Refresh;
    Try
        BView_Empleados.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    Except
    Else
        BView_Empleados.DataController.DataSet.FreeBookmark(SavePlace);
    End ;
    qryHistorialAltasBajas.Refresh;
    EliminarHistoriaAltas := False;
    frmBarra1.btnPostClick(Sender);

    nombres.destroy;
    cadenas.destroy;
    ActualizaCuenta;

    if zQEmpleados.State = dsBrowse then
      grid_empleados.Enabled := True;
    grid_empleados.SetFocus;
//  except
//    on e:Evalidaciones do
//    begin
//      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
//    end;
//    on E:Exception do
//    begin
//      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.');
//    end;
//  end;
  frmBarra1.btnCancel.Click ;
end;

procedure Tfrm_Empleados.frmBarra1btnPrinterClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_ReporteEmpleados.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_ReporteEmpleados.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;

  qryEmpleados.Active := False;
  qryEmpleados.Open ;
  frxReport1.LoadFromFile(global_files+ global_miReporte + '_ReporteEmpleados.fr3') ;
  frxReport1.ShowReport() ;
end;

procedure Tfrm_Empleados.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zqHorarioslab.Refresh;
  ZQPeriodo.Refresh;
  zqConfiguracionRh.Refresh;
  IsOpen:= False;
  zQEmpleados.Refresh;
  IsOpen:= True;
end;

procedure Tfrm_Empleados.IGetValue(const VarName: string;var Value: Variant);
begin
  connection.QryBusca.Active := False ;
  connection.QryBusca.SQL.Clear ;
  connection.QryBusca.SQL.Add('select sDescripcion from rh_horariolaboral Where iIdhorario = :iIdhorario') ;
  connection.QryBusca.Params.ParamByName('iIdhorario').Value := zQEmpleados.FieldValues['iIdhorario'] ;
  connection.QryBusca.Open ;
  if  connection.QryBusca.RecordCount>0 then
  begin
    if VarName = 'HorarioLaboral' then
    begin
      Value := connection.QryBusca.FieldByName('sDescripcion').AsString;
    end;
  end
  else
  begin
    if VarName = 'HorarioLaboral' then
    begin
      Value := '*';
    end;
  end;
  connection.QryBusca.Active := False ;
  connection.QryBusca.SQL.Clear ;
  connection.QryBusca.SQL.Add('select sDescripcion from rh_periodopagos Where sPeriodo = :sPeriodo') ;
  connection.QryBusca.Params.ParamByName('sPeriodo').Value := zQEmpleados.FieldValues['sPeriodo'] ;
  connection.QryBusca.Open ;
  if  connection.QryBusca.RecordCount>0 then
    begin
      if VarName = 'PeriododePago' then
      begin
        Value := connection.QryBusca.FieldByName('sDescripcion').AsString;
      end;
  end
  else
  begin
    if VarName = 'PeriododePago' then
    begin
       Value := '*';
    end;
  end;
  if VarName = 'Edad' then
  begin
    Value := YearsBetween(zqEmpleados.FieldByName('dFechaNacimiento').AsDateTime, Now());
  end;
  if VarName = 'Contratacion_Dia' then
  begin
    Value := FormatDateTime('dd', zqEmpleados.FieldByName('dFechaInicioLabores').AsDateTime);
  end;
  if VarName = 'Contratacion_Mes' then
  begin
    Value := esMes(StrToInt(FormatDateTime('mm', zqEmpleados.FieldByName('dFechaInicioLabores').AsDateTime)));
  end;
  if VarName = 'Contratacion_Anyo' then
  begin
    Value := FormatDateTime('yy', zqEmpleados.FieldByName('dFechaInicioLabores').AsDateTime);
  end;

  if VarName = 'Vencimiento_Dia' then
  begin
    Value := FormatDateTime('dd', IncYear(zqEmpleados.FieldByName('dFechaInicioLabores').AsDateTime, 1));
  end;
  if VarName = 'Vencimiento_Mes' then
  begin
    Value := FormatDateTime('mm', IncYear(zqEmpleados.FieldByName('dFechaInicioLabores').AsDateTime, 1));
  end;
  if VarName = 'Vencimiento_Anyo' then
  begin
    Value := FormatDateTime('yy', IncYear(zqEmpleados.FieldByName('dFechaInicioLabores').AsDateTime, 1));
  end;
  if VarName = 'SueldoMensual_Letras' then
  begin
    Value := xNumerosToLletres(zqEmpleados.FieldByName('dSueldo').AsCurrency);
  end;
end;
procedure Tfrm_Empleados.imgQRClick(Sender: TObject);
var
  Size : Real;
begin
if zQEmpleados.State in [dsInsert, dsEdit] then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    sIArchivo1 := '';
    if OpenPicture.Execute then
    begin
      Try
        sIArchivo1 := RedimensionarJPG(OpenPicture.FileName);
        Size := Tamanyo(sIArchivo1);
        if Size <= 350 then
          imgQR.Picture.LoadFromFile(OpenPicture.FileName)
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      Except
        imgQR.Picture.LoadFromFile('');
      End
    end;
  end;
end;

procedure Tfrm_Empleados.frxReport1GetValue(const VarName: string;var Value: Variant);
var
  r: integer;
begin
  if VarName = 'FechaVigencia' then
  begin
    Value := UpperCase(FormatDateTime('dd-mm-yyyy',dtFechaVigencia.DateTime));
  end;
  if VarName = 'FechaInicio' then
  begin
    Value := UpperCase(FormatDateTime('dd-mm-yyyy',dtFechainicio.DateTime));
  end;
  //FechaVigenciaCredencial
  if VarName = 'Hoy' then
  begin
    Value := UpperCase(FormatDateTime('dd', Now) + ' DE ' + esMes(StrToInt(FormatDateTime('mm', Now))) + ' DE ' + FormatDateTime('yyyy', Now));
  end;
  if VarName = 'Rango' then
  begin
    Value := UpperCase(FormatDateTime('dd',dtCartaRecomendacion_Inicial.DateTime) + ' DE ' + esMes(StrToInt(FormatDateTime('mm', dtCartaRecomendacion_Inicial.DateTime))) + ' DE ' + FormatDateTime('yyyy', dtCartaRecomendacion_Inicial.DateTime) + ' AL ' + FormatDateTime('dd', dtCartaRecomendacion_Final.DateTime) + ' DE ' + esMes(StrToInt(FormatDateTime('mm', dtCartaRecomendacion_Final.DateTime))) + ' DE ' + FormatDateTime('yyyy', dtCartaRecomendacion_Final.DateTime));
  end;
  if VarName = 'DiaActual' then
  begin
    Value := UpperCase(FormatDateTime('dd', Now) + ' DE ' + UpperCase(FormatDateTime('mmmm', Now)) + ' DE ' + FormatDateTime('yyyy', Now));
  end;

  if connection.configuracionRecHum.FieldValues['eNomina'] = 'Si' then
  begin
      if VarName = 'Sueldo' then
      begin
        obtenerneto(zQEmpleados.FieldValues['sIdEmpleado']);
        Value := cdDetalleNom.FieldByName('Importe').AsFloat;
      end;
  end
  else
  begin
      if VarName = 'Sueldo' then
         Value := zQEmpleados.FieldValues['dSueldo'];
  end;

  connection.QryBusca.Active := False ;
  connection.QryBusca.SQL.Clear ;
  connection.QryBusca.SQL.Add('select titulocargo as sPuesto from nuc_cargo Where IdCargo = :iId_Puesto') ;
  connection.QryBusca.Params.ParamByName('iId_Puesto').Value := zQEmpleados.FieldValues['iId_Puesto'] ;
  connection.QryBusca.Open ;
  if  connection.QryBusca.RecordCount>0 then
  begin
    if VarName = 'Puesto' then begin
      Value := connection.QryBusca.FieldByName('sPuesto').AsString;
    end;
  end else begin
    if VarName = 'Puesto' then begin
      Value := '*';
    end;
  end;
end;

procedure Tfrm_Empleados.Grid_empleadosDblClick(Sender: TObject);
var i : integer;
begin

end;

procedure Tfrm_Empleados.Grid_empleadosGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  {try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if zQEmpleados.RecordCount > 0 then
      begin

        AFont.Color := esColor(qryEstatus.FieldValues['iColor']);


      end;
  except
  end; }
end;

procedure Tfrm_Empleados.bImagenDblClick(Sender: TObject);
Var
  size: Real ;
begin
  btnPreview.Enabled := False ;
  bImagen.Picture.Bitmap := Nil ;

  sArchivo := '' ;
  If OpenPicture.Execute then
  begin
    try
      sArchivo := OpenPicture.FileName ;
      size := Tamanyo (sArchivo) ;
      If size <= 300 Then
        bImagen.Picture.LoadFromFile(OpenPicture.FileName)
      Else
        MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
    except
      bImagen.Picture.LoadFromFile('') ;
    end
  end
end;

procedure Tfrm_Empleados.bImagen_Click(Sender: TObject);
var
  Size: Real;
begin
  if zQEmpleados.State in [dsInsert, dsEdit] then
  begin
    bImagen_.Picture.Bitmap := nil;
    OpenPicture.Title := 'Inserta Imagen';
    sIArchivo := '';
    if OpenPicture.Execute then
    begin
      Try
        sIArchivo := RedimensionarJPG(OpenPicture.FileName);
        Size := Tamanyo(sIArchivo);
        if Size <= 350 then
          bImagen_.Picture.LoadFromFile(OpenPicture.FileName)
        else
          MessageDlg('La imagen a adjuntar no debe ser mayor a 350 kb.', mtInformation, [mbOk], 0);
      Except
        bImagen_.Picture.LoadFromFile('');
      End
    end;
  end;
end;

procedure Tfrm_Empleados.BitBtn2Click(Sender: TObject);
begin
  if zq_EquiposPorEmpleado.Active then
    if zq_EquiposPorEmpleado.RecordCount>0 then
    begin
      zq_EquiposPorEmpleado.edit;
      zq_EquiposPorEmpleado.FieldValues['sNombreEntrega']       := tsNombreEntrega.text;
      zq_EquiposPorEmpleado.FieldValues['sNombreAutorizacion']  := tsNombreAutoriza.text;
      zq_EquiposPorEmpleado.post;
    end;
end;

procedure Tfrm_Empleados.BitBtnAddClick(Sender: TObject);
var
  sTmpFile:String;
  MapDato:IData;
  IndReg:Integer;
  TmpDir:TFilename;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
begin
  if (zQEmpleados.RecordCount>0)  then
  begin
    if not ZBlobPdf.Active then
    begin
      ZBlobPdf.ParamByName('iid').AsInteger := -9;
      ZBlobPdf.Open
    end;
    application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
    try
      FrmVisorPdf.Mode:=VsInsercion;
      FrmVisorPdf.TipoFile:=smPdf;

      if FrmVisorPdf.showmodal=mrOk then
      begin
        ZBlobPdf.Append;
        ZBlobPdf.FieldByName('iId').AsInteger:=0;
        ZBlobPdf.FieldByName('sreferencia').AsString:='Documentacion_EmpleadoPdf';
        ZBlobPdf.FieldByName('sidentificador').AsString:=zQEmpleados.FieldByName('sIdEmpleado').AsString;
        TBlobField(ZBlobPdf.FieldByName('bpdf')).LoadFromStream(FrmVisorPdf.PDFStream);
        ZBlobPdf.post;


        if CBXPrevPdf.Checked then
        begin
          CBXPrevPdf.Checked:=False;
          ZPdf.Refresh;
          ZPdf.Last;
          CBXPrevPdf.Checked:=True;
          ZPdfAfterScroll(ZPdf);
        end;


      end;

    finally
      FrmVisorPdf.destroy;
    end;
  end;
end;

procedure Tfrm_Empleados.btnWordCancelClick(Sender: TObject);
begin
  if zWord.State in [dsEdit, dsInsert] then
  begin
    zWord.Cancel;
    btnWordAdd.Enabled := True;
    btnWordDel.Enabled := True;
    btnWordPost.Enabled := False;
    btnWordCancel.Enabled := False;
    btnWordEdit.Enabled := True;
    pnlWord.Enabled := True;
  end;
end;

procedure Tfrm_Empleados.btnWordPostClick(Sender: TObject);
begin
  if ( Length( Trim( dbDescripcionWord.Text ) ) > 0 ) and ( zWord.State in [dsEdit, dsInsert] ) then
  begin
    zWord.Post;
    zWord.Refresh;

    btnWordAdd.Enabled := True;
    btnWordDel.Enabled := True;
    btnWordPost.Enabled := False;
    btnWordCancel.Enabled := False;
    btnWordEdit.Enabled := True;
    pnlWord.Enabled := True;
  end
  else
    MessageDlg('No se ha especificado una descripcion del archivo', mtInformation, [mbok], 0);
end;

procedure Tfrm_Empleados.btnWordDelClick(Sender: TObject);
begin
  if zWord.RecordCount > 0 then
  begin
    if MessageDlg('¿Desea eliminar el registro activo?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
      zWord.Delete;
  end;
end;

procedure Tfrm_Empleados.btnWordEditClick(Sender: TObject);
var
  Archivo,
  Ext : string;
begin
  try
    if zWord.RecordCount > 0 then
    begin
      zWord.Edit;

      dlgWord.FileName := '';

      if not dlgWord.Execute() then
        exit;

      Archivo := dlgWord.FileName;

      if not FileExists(Archivo) then
        raise exception.Create('No se encontro el archivo especificado');

      Ext := ExtractFileExt(Archivo);

      if ( Ext <> '.doc' ) and ( Ext <> '.docx' ) and ( Ext <> '.docm') then
        raise exception.Create('El archivo no es valido');

      zWord.Fieldbyname('sext').AsString := Ext;
      TBlobField(zWord.FieldByName('bWord')).LoadfromFile(archivo);

      btnWordAdd.Enabled := False;
      btnWordDel.Enabled := False;
      btnWordPost.Enabled := True;
      btnWordCancel.Enabled := True;
      btnWordEdit.Enabled := False;
      pnlWord.Enabled := False;
    end;
  except
    on e:exception do
      MessageDlg(e.Message, mtinformation, [mbok], 0);
  end;
end;

procedure Tfrm_Empleados.BitBtnBackClick(Sender: TObject);
begin
  ZPdf.Prior;
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.BitBtnCancelClick(Sender: TObject);
begin
  if ZBlobPdf.State in [dsInsert,dsEdit] then
    ZBlobPdf.Cancel;
  DsBPdf.DataSet := ZPdf;
  imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.BitBtnEditClick(Sender: TObject);
var
  desc:string;
  sNameFile,sTotalFileName:String;
  MryFile:TMemoryStream;
  TmpDir:TFilename;
begin
  if ZPdf.RecordCount>0 then
  begin
    try
      DsBPdf.DataSet := ZBlobPdf;
      ZBlobPdf.Close;
      ZBlobPdf.ParamByName('iid').AsInteger := zpdf.FieldByName('iid').AsInteger;
      ZBlobPdf.Open;
      if ZBlobPdf.RecordCount <> 1 then
      begin
        zpdf.Refresh;
        raise Exception.Create('El registro ya no está disponible.');
      end;
      ZBlobPdf.Edit;
      Mbarra(ZBlobPdf);
      if MessageDlg('¿Requiere cambiar el archivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        application.CreateForm(TFrmVisorPdf,FrmVisorPdf);
        try
          FrmVisorPdf.Mode:=VsEdicion;
          sNameFile:=GenerarTmpName('','.pdf');
          TmpDir:=obtenerDirectorioTemporal;
          sTotalFileName:=obtenerDirectorioTemporal + sNameFile;
          try
            MryFile:=BlobToStream(ZBlobPdf.FieldByName('bpdf'));
            MryFile.SaveToFile(sTotalFileName);
            FrmVisorPdf.FileName:=sTotalFileName;
            FrmVisorPdf.sNameFile:=AnsiReplaceStr(ZBlobPdf.FieldByName('sIdentificador').AsString, '*', '-')+ '.pdf';

          finally
            MryFile.Destroy;
          end;
          FrmVisorPdf.TipoFile:=smPdf;
          if FrmVisorPdf.showmodal=mrOk then
          begin
            ZBlobPdf.edit;
            TBlobField(ZBlobPdf.FieldByName('bpdf')).LoadFromStream(FrmVisorPdf.PDFStream);
            ZBlobPdf.post;

            //ZPdf.Refresh;
            if CBXPrevPdf.Checked then
            begin
              CBXPrevPdf.Checked:=False;
              ZPdf.Refresh;
              //ZPdf.Last;
              CBXPrevPdf.Checked:=True;
              ZPdfAfterScroll(ZPdf);
            end;
          end;

        finally
          FrmVisorPdf.destroy;

        end;
      end;
    except
      on e:Exception do
      begin
        Mbarra(ZPdf);
        ShowMessage('No se pudo realizar el proceso por el siguiente motivo: '+#10+#13+e.Message);
      end;
    end;
  end;
end;

procedure Tfrm_Empleados.BitBtnFirstClick(Sender: TObject);
begin
  ZPdf.First;
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.BitBtnLastClick(Sender: TObject);
begin
  ZPdf.Last;
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.BitBtnNextClick(Sender: TObject);
begin
  ZPdf.Next;
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.BitBtnPostClick(Sender: TObject);
begin
  if length(trim(EdtDEscripcion.Text)) > 0 then
  begin
    if ZBlobPdf.State in [dsInsert,dsEdit] then
    begin
      ZBlobPdf.Post;
      ZPdf.Refresh;
      Mbarra(zpdf);
    end;
    DsBPdf.DataSet := ZPdf;
  end
  else
  begin
    Mbarra(ZBlobPdf);
    ShowMessage('Debe agregar una descripcion del documento que está subiendo.');
    EdtDEscripcion.SetFocus;
  end;

end;

procedure Tfrm_Empleados.BitBtnUpClick(Sender: TObject);
begin
  if ZBlobPdf.State in [dsInsert, dsEdit] then
  begin
    try
      openDialog1.Filter := 'PDF|*.pdf';
      if openDialog1.Execute then
      begin
        TBlobField(ZBlobPdf.FieldByName('bPdf')).LoadfromFile(openDialog1.FileName);
        imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
        CargarDocumento(openDialog1.FileName);
      end;
    finally
      openDialog1.free;
    end;
  end;
end;

procedure Tfrm_Empleados.BitBtnDelClick(Sender: TObject);
var
  OrigCheck:Boolean;
begin

  if CBXPrevPdf.Checked then
    OrigCheck:=true
  else
    OrigCheck:=False;

  CBXPrevPdf.Checked := False;

  if zpdf.RecordCount>0 then
  begin
    if MessageDlg('¿Está seguro que desea eliminar el registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zpdf.Delete;
      imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
      zpdf.Refresh;
      if OrigCheck then
      begin
        CBXPrevPdf.Checked:=True;
        ZPdfAfterScroll(ZPdf);
      end;
    end;
  end;
  Mbarra(ZPdf);
end;

procedure Tfrm_Empleados.IMPRESIONEMPLEADOS1Click(Sender: TObject);
begin
  qryEmpleados.Active := False;
  qryEmpleados.ParamByName('estatus').AsInteger := qryEstatus.FieldValues['iIdEstatus'];
  qryEmpleados.Open ;

  frxReport1.LoadFromFile(global_files + 'frEmpleadosFadul.fr3');
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.IMPRESIONSUELDOS1Click(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_ReporteEmpleados.fr3') then
 begin
  showmessage('El archivo de reporte '+global_Mireporte+'_ReporteEmpleados.fr3 no existe, notifique al administrador del sistema');
       exit;
 end;


  if cdStatus.active then cdStatus.EmptyDataSet
  else
  begin
    cdStatus.CreateDataSet;
    cdStatus.Open;
  end;                                   
  ExportarPDF(BView_Empleados, cdStatus);
  cdStatus.IndexFieldNames:='iId_Puesto';
  frxReport1.LoadFromFile(global_files + global_MiReporte+ '_ReporteEmpleados.fr3') ;
  frxReport1.ShowReport() ;
end;

procedure Tfrm_Empleados.Imprimir1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_StatusEmpleado.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_StatusEmpleado.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;


  if cdStatus.active then cdStatus.EmptyDataSet
  else
  begin
    cdStatus.CreateDataSet;
    cdStatus.Open;
  end;
  ExportarPDF(BView_Empleados, cdStatus);
  cdStatus.IndexFieldNames:='sStatusTipoPersonal'; 
  frxReport1.LoadFromFile(global_files + global_miReporte + '_StatusEmpleado.fr3') ;
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.ImprimirCartadeRecomendacin1Click(Sender: TObject);
begin
  SeleccionarFecha.Visible := True;
  PageControl1.Pages[0].TabVisible := True;
  PageControl1.Pages[1].TabVisible := False;
end;

procedure Tfrm_Empleados.Imprimircartaresponsiva1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile(global_files + global_Mireporte +'_ReporteOficioResponsiva.fr3');
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.ImprimirCartaResponsiva2Click(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_TodoslosEquiposPorEmpleado.fr3') then
 begin
       showmessage('El archivo de reporte '+global_Mireporte+'_TodoslosEquiposPorEmpleado.fr3 no existe, notifique al administrador del sistema');
       exit;
 end;

  zqRptEntregaEquipo.Active := False;
  zqRptEntregaEquipo.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  zqRptEntregaEquipo.Open;

  frxReport1.LoadFromFile(global_files + global_miReporte + '_TodoslosEquiposPorEmpleado.fr3') ;
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.ImprimirCurriculum1Click(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_Curriculum.fr3') then
 begin
  showmessage('El archivo de reporte '+global_Mireporte+'_Curriculum.fr3 no existe, notifique al administrador del sistema');
  exit;
 end;

  qrImagenPersonal.active := false;
  qrImagenPersonal.parambyname('identificador').asstring := zqempleados.FieldByName('sidempleado').asstring;
  qrimagenpersonal.open;

  qrcurriculum.Active := false;
  qrcurriculum.ParamByName('personal').asinteger := zqempleados.FieldByName('idpersonal').asinteger;
  qrcurriculum.parambyname('identificador').asstring := zqempleados.FieldByName('sidempleado').asstring;
  qrCurriculum.open;

  zqExperiencia.Active := false;
  zqExperiencia.ParamByName('personal').asinteger := zqempleados.FieldByName('idpersonal').asinteger;
  zqExperiencia.open;

  frxReport1.LoadFromFile( global_files + global_miReporte+'_Curriculum.fr3' );
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.ImprimirReportedeIncidencias1Click(Sender: TObject);
begin
if not FileExists(global_files + global_miReporte + '_HistorialEmpleados.fr3') then
 begin
  showmessage('El archivo de reporte '+global_Mireporte+'_HistorialEmpleados.fr3 no existe, notifique al administrador del sistema');
  exit;
  end;
  frxReport1.LoadFromFile(global_files +global_miReporte+ '_HistorialEmpleados.fr3') ;
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.ImprimirSalariosClick(Sender: TObject);
begin
{  if cdStatus.active then cdStatus.EmptyDataSet
  else
  begin
    cdStatus.CreateDataSet;
    cdStatus.Open;
  end;
  ExportarPDF(BView_Empleados, cdStatus);
  cdStatus.IndexFieldNames:='idorganizacion';
  frxReport1.LoadFromFile(global_files + global_MiReporte+ '_Empleados_salarios.fr3') ;
  frxReport1.ShowReport() ;   }
end;

procedure Tfrm_Empleados.IMSSEnter(Sender: TObject);
begin
  IMSS.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.IMSSExit(Sender: TObject);
begin
  IMSS.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.IMSSKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsNoCreditoInfonavit.SetFocus;
end;

procedure Tfrm_Empleados.INICIOLABEnter(Sender: TObject);
begin
  INICIOLAB.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.INICIOLABExit(Sender: TObject);
begin
  INICIOLAB.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.INICIOLABKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageControl2.ActivePageIndex := 1;
    DBEntidadEducativa.SetFocus;
  end;
end;

procedure Tfrm_Empleados.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click;
end;

procedure Tfrm_Empleados.INTERBANCARIAEnter(Sender: TObject);
begin
  INTERBANCARIA.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.INTERBANCARIAExit(Sender: TObject);
begin
  INTERBANCARIA.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.INTERBANCARIAKeyPress(Sender: TObject; var Key: Char);
begin
  
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure Tfrm_Empleados.LiquidacionyFiniquito1Click(Sender: TObject);
begin
  if not frmInteligent.MostrarFormChild('frm_LiqFini') then
  begin
    Application.CreateForm(Tfrm_LiqFini, frm_LiqFini);
    frm_LiqFini.show;
  end;
end;

procedure Tfrm_Empleados.LNACIMIENTOEnter(Sender: TObject);
begin
  LNACIMIENTO.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.LNACIMIENTOExit(Sender: TObject);
begin
  LNACIMIENTO.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.LNACIMIENTOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then curp.SetFocus;
end;

procedure Tfrm_Empleados.MailEnter(Sender: TObject);
begin
  MAIL.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.MailExit(Sender: TObject);
begin
  MAIL.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.MailKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then DBLCHorarios.SetFocus;
end;

procedure Tfrm_Empleados.mesesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dtFechavigencia.Date:=IncMonth(dtFechainicio.Date,StrToInt(meses.Text));
end;

procedure Tfrm_Empleados.MostrarSoportesEmpleados1Click(Sender: TObject);
begin
  //Aqui colocamos la consutla completa con las imagenes..
  ReporteFotografico.Active := False ;
  ReporteFotografico.SQL.Clear;
  ReporteFotografico.SQL.Add('SELECT iId, sTipo, sIdEmpleado, bImagen '+
                             'FROM rh_escaneos_imagenes WHERE sTipo = "DOCUMENTOS_PERSONAL" AND sIdEmpleado = :Identificador ORDER BY iId ASC ');
  ReporteFotografico.Params.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  ReporteFotografico.Open;

  frxFotografia.DataSet := ReporteFotografico;
  frxReport1.LoadFromFile(Global_Files + global_miReporte+ '_Reportesoportedoctos.fr3') ;
  frxReport1.ShowReport();

  //Ahora Devolvemos el data set
  ReporteFotografico.Active := False ;
  ReporteFotografico.SQL.Clear;
  ReporteFotografico.SQL.Add('SELECT iId, sTipo, sIdEmpleado, eIncluye, sDescripcion, iOrden '+
                             'FROM rh_escaneos_imagenes WHERE sTipo = "DOCUMENTOS_PERSONAL" AND sIdEmpleado = :Identificador ORDER BY iId ASC ');
  ReporteFotografico.Params.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  ReporteFotografico.Open;
end;

procedure Tfrm_Empleados.NACIMIENTOEnter(Sender: TObject);
begin
  NACIMIENTO.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.NACIMIENTOExit(Sender: TObject);
var
  Anios,
  edad : Integer;

begin
  NACIMIENTO.Color := global_color_salidaPU;
  if zQEmpleados.State <> dsbrowse then
  begin

    Anios := yearof( date ) - yearof(nacimiento.date);

    if ( MonthOf( Date ) < MonthOf( Nacimiento.date ) ) then
    begin
      edad := Anios - 1;
    end
    else
    begin
      if ( MonthOf( Date ) = MonthOf( Nacimiento.date ) ) then
      begin
        if DayOf( Date ) < DayOf( Nacimiento.date ) then
          edad := Anios - 1
        else
          Edad := Anios;
        
      end
      else
        edad := Anios;

    end;

    dbiedad.Value := edad;

  end;

end;

procedure Tfrm_Empleados.NACIMIENTOKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       dbiedad.SetFocus;
end;

procedure Tfrm_Empleados.NACIONALIDADKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then LNACIMIENTO.SetFocus;
end;

procedure Tfrm_Empleados.Nombre_EmerEnter(Sender: TObject);
begin
  Nombre_Emer.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.Nombre_EmerExit(Sender: TObject);
begin
  Nombre_Emer.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.Nombre_EmerKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then parentesco_emer.SetFocus;
end;

procedure Tfrm_Empleados.numEnter(Sender: TObject);
begin
  num.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.numExit(Sender: TObject);
begin
  num.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.numKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsCP.SetFocus;
end;

procedure Tfrm_Empleados.PageControl2Change(Sender: TObject);
begin
  if pagecontrol2.ActivePageIndex = 0 then
  begin
    qryHistorialAltasbajas.Active := False;
    qryHistorialAltasbajas.ParamByName('empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
    qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := tsOrganizacion.KeyValue ;
    qryHistorialAltasbajas.Open;
    qryHistorialAltasBajas.Refresh;
  end;
end;

procedure Tfrm_Empleados.Panel4MouseEnter(Sender: TObject);
begin
  //Cuando el mouse este encima del grupo de botones con los colores, que aparezca dicho panel que esta escondido
  GroupBox1.Visible := True;
end;

procedure Tfrm_Empleados.Panel4MouseLeave(Sender: TObject);
begin
  //Ocultar el agrupoador de botones
  GroupBox1.Visible := False;
end;

procedure Tfrm_Empleados.Parentesco_EmerEnter(Sender: TObject);
begin
  Parentesco_Emer.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.Parentesco_EmerExit(Sender: TObject);
begin
  Parentesco_Emer.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.Parentesco_EmerKeyPress(Sender: TObject;var Key: Char);
begin
  if key =#13 then tstipoSangre.SetFocus;
end;

procedure Tfrm_Empleados.pgDatosChange(Sender: TObject);
begin
  if pgDatos.ActivePageIndex = 1 then
  begin
    ReporteFotografico.Active := False ;
    ReporteFotografico.Open ;
    btnPreview.Click;
  end;

  if pgDatos.ActivePageIndex = 2 then
  begin
    zq_EquiposPorEmpleado.Active := False;
    zq_EquiposPorEmpleado.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
    zq_EquiposPorEmpleado.Open;

    btnadd.Enabled := True;
    btnDelete.Enabled := True;
    btnPrinter.Enabled := True;
    btnHistorial.Enabled:=true;
  end;

  if pgDatos.ActivePageIndex = 3 then
  begin
    zWord.Active := False;
    zWord.parambyname('identificador').asstring := zQEmpleados.fieldbyname('sIdEmpleado').asstring;
    zWord.Open;
  end;
end;

procedure Tfrm_Empleados.ReportedeIncidencias1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_HistorialEmpleados.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_HistorialEmpleados.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

   qryHistorialAltasBajas.Active := False;
   qryHistorialAltasBajas.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
   qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := tsOrganizacion.KeyValue   ;
   qryHistorialAltasBajas.Open;


  frxReport1.LoadFromFile(global_files + global_miReporte + '_HistorialEmpleados.fr3') ;
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.ReporteFotograficoAfterCancel(DataSet: TDataSet);
begin
  btnPreview.Enabled := True ;
  EditarDOCTOS := False;
  sDescripcion.Options.Editing := False;
  eIncluye.Options.Editing     := False;
end;

procedure Tfrm_Empleados.ReporteFotograficoAfterDelete(DataSet: TDataSet);
begin
  EditarDOCTOS := False;
  bImagen.Picture.Bitmap := Nil ;
  ReporteFotografico.Refresh;
  ReporteFotografico.Active := False ;
  ReporteFotografico.Params.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;;
  ReporteFotografico.Open;
  if ReporteFotografico.RecordCount>=0 then
  begin
    lblRecord.Caption := '0 de 0';
  end;
end;

procedure Tfrm_Empleados.ReporteFotograficoAfterEdit(DataSet: TDataSet);
begin
  OpenPicture.Title := 'Inserta Imagen';
  EditarDOCTOS := True;
  sDescripcion.Options.Editing := True;
  eIncluye.Options.Editing     := True;
end;

procedure Tfrm_Empleados.ReporteFotograficoAfterInsert(DataSet: TDataSet);
Var
  size: Real;
begin
  sDescripcion.Options.Editing := True;
  eIncluye.Options.Editing     := True;
  reportefotografico.fieldvalues['sIdEmpleado'] := zqEmpleados.FieldByName('sIdEmpleado').AsString;
  reportefotografico.fieldvalues['sTipo']       := 'DOCUMENTOS_PERSONAL';
  reportefotografico.fieldvalues['eIncluye']    := 'Si';
  reportefotografico.fieldvalues['sDescripcion']:= 'DOCUMENTO '+ IntToStr(reportefotografico.RecordCount +1);

  btnPreview.Enabled := False;
  bImagen.Picture.Bitmap := Nil;

  OpenPicture.Title := 'Inserta Imagen';
  sArchivo := '' ;
  If OpenPicture.Execute then
  begin
    Try
      sArchivo := OpenPicture.FileName ;
      size := Tamanyo (sArchivo) ;
      If size <= 300 Then
        bImagen.Picture.LoadFromFile(OpenPicture.FileName)
      Else
        MessageDlg('La imagen a adjuntar no debe ser mayor a 300 kb.', mtInformation, [mbOk], 0);
    except
      bImagen.Picture.Bitmap := Nil ;
      bImagen.Picture.LoadFromFile('') ;
    end
  end
end;

procedure Tfrm_Empleados.ReporteFotograficoAfterPost(DataSet: TDataSet);
begin
  ReporteFotografico.Refresh;
  sDescripcion.Options.Editing := False;
  eIncluye.Options.Editing     := False;
end;


procedure Tfrm_Empleados.ReporteFotograficoAfterScroll(DataSet: TDataSet);
var
  BS  : TStream;
  Pic : TJpegImage;
  BlobField : tField;
begin
  If ReporteFotografico.RecordCount > 0 Then
  begin
    if (ReporteFotografico.State  <> dsInsert) OR (ReporteFotografico.State  <> dsEdit) then
    begin
      if Not ReporteFotografico.FieldByName('iId').IsNull  then
      begin
        //Aqui consultamos la imagen...
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select bImagen from rh_escaneos_imagenes where iId =:Id ');
        connection.zCommand.ParamByName('Id').AsInteger := ReporteFotografico.FieldValues['iId'];
        connection.zCommand.Open;

        BlobField := connection.zCommand.FieldByName('bImagen') ;
        BS := connection.zCommand.CreateBlobStream(BlobField, bmRead) ;
        If bs.Size > 1 Then
        Begin
          Try
            Pic:=TJpegImage.Create;
            Try
              Pic.LoadFromStream(BS);
              bImagen.Picture.Graphic := Pic;
            Finally
              Pic.Free;
            End
          except
            BS.Free;
            bImagen.Picture.Graphic:= nil;
            BlobField := connection.zCommand.FieldByName('bImagen');
            BS := reportefotografico.CreateBlobStream(BlobField,bmRead);
            bimagen.Picture.Graphic:= TBitMap.Create;
            bImagen.Picture.Graphic.LoadFromStream(BS);
          end;
        End

      end;
    end;
    lblRecord.Caption := IntToStr(ReporteFotografico.Recno) + ' de ' + IntToStr(ReporteFotografico.RecordCount)
  end;
end;

procedure Tfrm_Empleados.ReporteFotograficoBeforeDelete(DataSet: TDataSet);
begin
  if zqEmpleados.RecordCount = 0 then abort;
end;

procedure Tfrm_Empleados.ReporteFotograficoBeforeEdit(DataSet: TDataSet);
begin
  if zqEmpleados.RecordCount = 0 then abort;
end;

procedure Tfrm_Empleados.ReporteFotograficoBeforeInsert(DataSet: TDataSet);
begin
  if zqEmpleados.RecordCount = 0 then abort;
end;

procedure Tfrm_Empleados.ReporteFotograficoBeforePost(DataSet: TDataSet);
Var
  indice, maximo   : integer;
  cadena : string;
begin
  indice:=0;
  If sArchivo <> '' Then
  begin
    if EditarDOCTOS = False then
      while indice < OpenPicture.Files.Count  do
      begin
        //Buscamos el maximo item de ordenamiento..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select max(iOrden) indice from rh_escaneos_imagenes where  sTipo = "DOCUMENTOS_PERSONAL" AND sIdEmpleado = :Identificador group by sIdEmpleado');
        connection.zCommand.ParamByName('Identificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        connection.zCommand.Open;

        maximo := 1;
        if connection.zCommand.RecordCount > 0 then
           maximo := connection.zCommand.FieldByName('indice').AsInteger + 1;

        sArchivo := OpenPicture.Files.Strings[indice];
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zcommand.SQL.Add ( 'Insert Into rh_escaneos_imagenes (sTipo, bImagen, sIdEmpleado, iOrden, sDescripcion, eIncluye) ' +
                                      'Values (:tipo, :Imagen, :Id, :orden, :descripcion, :incluye)') ;
        connection.zcommand.Params.ParamByName('tipo').DataType := ftString ;
        connection.zcommand.Params.ParamByName('tipo').Value    := 'DOCUMENTOS_PERSONAL' ;
        connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
        connection.zcommand.Params.ParamByName('Id').DataType   := ftString;
        connection.zcommand.Params.ParamByName('Id').value      := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        connection.zcommand.ParamByName('Orden').AsInteger      := maximo;
        connection.zcommand.ParamByName('Descripcion').AsString := reportefotografico.FieldValues['sDescripcion'];
        connection.zCommand.ParamByName('Incluye').AsString     := reportefotografico.FieldValues['eIncluye'];
        connection.zCommand.ExecSQL ();
        inc(indice);
      end
  end;

  if EditarDOCTOS = True then
  begin
      if sArchivo <> '' then
         cadena := ' bImagen =:Imagen, ';
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Update rh_escaneos_imagenes set '+cadena+' sDescripcion =:Descripcion, eIncluye =:Incluye Where iId =:Id ');
      if sArchivo <> '' then
         connection.zcommand.Params.ParamByName('Imagen').LoadFromFile(sArchivo, ftGraphic) ;
      connection.zcommand.Params.ParamByName('Id').DataType := ftInteger;
      connection.zcommand.Params.ParamByName('Id').value := reportefotografico.FieldByName('iId').AsInteger;
      connection.zCommand.ParamByName('Descripcion').AsString := reportefotografico.FieldByName('sDescripcion').AsString;
      connection.zCommand.ParamByName('Incluye').AsString     := reportefotografico.FieldByName('eIncluye').AsString;
      connection.zCommand.ExecSQL;
  end;

  ReporteFotografico.Cancel;
  ReporteFotografico.Refresh;

  btnPreview.Enabled := True ;
  EditarDOCTOS := False;
end;

procedure Tfrm_Empleados.ReportePDFAfterCancel(DataSet: TDataSet);
begin
  btnPreview.Enabled := True ;
  EditarDOCTOS := False;
end;

procedure Tfrm_Empleados.RFCEnter(Sender: TObject);
begin
  RFC.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.RFCExit(Sender: TObject);
begin
  RFC.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.RFCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then imss.SetFocus;
end;

procedure Tfrm_Empleados.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure Tfrm_Empleados.sLibretaMarEnter(Sender: TObject);
begin
  //sLibretaMar.Color := global_color_entradaPU
end;

procedure Tfrm_Empleados.sLibretaMarExit(Sender: TObject);
begin
  //sLibretaMar.Color := global_color_salidaPU
end;

procedure Tfrm_Empleados.sLibretaMarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then CARTILLA.SetFocus;
end;

procedure Tfrm_Empleados.tdBancoEnter(Sender: TObject);
begin
    tdBanco.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tdBancoExit(Sender: TObject);
begin
    tdBanco.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tdBancoKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       cuenta.SetFocus;
end;




procedure Tfrm_Empleados.Telefono_EmerEnter(Sender: TObject);
begin
  Telefono_emer.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.Telefono_EmerExit(Sender: TObject);
begin
  Telefono_emer.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.TERMINOLABKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then tsTipoSangre.SetFocus;
end;

procedure Tfrm_Empleados.TipoPersonalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbPuesto.SetFocus;
end;

procedure Tfrm_Empleados.tmrLibretasVencidasTimer(Sender: TObject);
begin
    //El boton de Libretas de Mar Vencidas parpadeara si hay libretas vencidas en la BD
    if lAlerta = True then
    begin
        if tmrLibretasVencidas.Interval = 900 then
        begin
            btnLibretasVencidas.Visible := False;
            tmrLibretasVencidas.Interval := 1000;
        end
        else
        begin
            btnLibretasVencidas.Visible := True;
            tmrLibretasVencidas.Interval := 900;
        end
    end;
end;

procedure Tfrm_Empleados.tsApellidoMEnter(Sender: TObject);
begin
  tsApellidoM.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsApellidoMExit(Sender: TObject);
begin
  tsApellidoM.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsApellidoMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tsCalle.SetFocus
  end;
end;

procedure Tfrm_Empleados.tsApellidoPEnter(Sender: TObject);
begin
  tsApellidoP.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsApellidoPExit(Sender: TObject);
begin
  tsApellidoP.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsApellidoPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tsApellidoM.SetFocus
  end;
end;

procedure Tfrm_Empleados.tsCiudadEnter(Sender: TObject);
begin
  tsCiudad.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsCiudadExit(Sender: TObject);
begin
  tsCiudad.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsEstado.SetFocus;
end;

procedure Tfrm_Empleados.tsColoniaEnter(Sender: TObject);
begin
  tsColonia.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsColoniaExit(Sender: TObject);
begin
  tsColonia.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsColoniaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsLocalidad.SetFocus;
end;

procedure Tfrm_Empleados.tsCPEnter(Sender: TObject);
begin
  tsCP.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsCPExit(Sender: TObject);
begin
  tsCP.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsCPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsColonia.SetFocus;
end;

procedure Tfrm_Empleados.tscuentamaestroKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then nombre_emer.SetFocus;

end;

procedure Tfrm_Empleados.tsDescansoEnter(Sender: TObject);
begin
  tsDescanso.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsDescansoExit(Sender: TObject);
begin
  tsDescanso.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsDescansoKeyPress(Sender: TObject; var Key: Char);
begin
  if key =#13 then dblcxperiodo.SetFocus;
end;

procedure Tfrm_Empleados.tsCalleChange(Sender: TObject);
begin
  tsCalle.Hint := zQEmpleados.FieldByName('sCalle').AsString;
end;

procedure Tfrm_Empleados.tsCalleEnter(Sender: TObject);
begin
  tsCalle.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsCalleExit(Sender: TObject);
begin
  tsCalle.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsCalleKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then num.SetFocus;
end;

procedure Tfrm_Empleados.tscentrodecostosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then dblSexo.SetFocus;

end;

procedure Tfrm_Empleados.tsEstadoEnter(Sender: TObject);
begin
  tsEstado.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsEstadoExit(Sender: TObject);
begin
  tsEstado.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsEstadoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsPais.SetFocus;
end;

procedure Tfrm_Empleados.tsEstatusEnter(Sender: TObject);
begin
  tsEstatus.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsEstatusExit(Sender: TObject);
begin
  tsEstatus.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsEstatusKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then cbRegPatronales.SetFocus;
end;

procedure Tfrm_Empleados.tsIdDepartamentoEnter(Sender: TObject);
begin
  //tsIdDepartamento.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsIdDepartamentoExit(Sender: TObject);
begin
  //tsIdDepartamento.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsIdDepartamentoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsEstatus.Setfocus;
end;

procedure Tfrm_Empleados.tsIdEmpleadoEnter(Sender: TObject);
begin
  //tsIdEmpleado.Color := global_color_entradaPU;
  Cambio_V:=tsIdEmpleado.Text;
end;

procedure Tfrm_Empleados.tsIdEmpleadoExit(Sender: TObject);
begin
  //tsIdEmpleado.Color := global_color_salidaPU
end;

procedure Tfrm_Empleados.tsIdEmpleadoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsNombre.SetFocus;
end;

procedure Tfrm_Empleados.tsLocalidadEnter(Sender: TObject);
begin
  tsLocalidad.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsLocalidadExit(Sender: TObject);
begin
  tsLocalidad.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsLocalidadKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsCiudad.SetFocus;
end;

procedure Tfrm_Empleados.tsNoCreditoInfonavitEnter(Sender: TObject);
begin
  tsNoCreditoInfonavit.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsNoCreditoInfonavitExit(Sender: TObject);
begin
  tsNoCreditoInfonavit.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsNoCreditoInfonavitKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       cartilla.SetFocus;
end;

procedure Tfrm_Empleados.tsNombreAutorizaEnter(Sender: TObject);
begin
  tsNombreAutoriza.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsNombreAutorizaExit(Sender: TObject);
begin
  tsNombreAutoriza.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsNombreAutorizaKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then btnAdd.SetFocus;
end;

procedure Tfrm_Empleados.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsNombreEntregaEnter(Sender: TObject);
begin
  tsNombreEntrega.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsNombreEntregaExit(Sender: TObject);
begin
  tsNombreEntrega.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsNombreEntregaKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsNombreAutoriza.SetFocus;
end;

procedure Tfrm_Empleados.tsNombreExit(Sender: TObject);
begin
  tsNombre.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tsApellidoP.SetFocus
  end;
end;

procedure Tfrm_Empleados.tsPaisEnter(Sender: TObject);
begin
  tsPais.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsPaisExit(Sender: TObject);
begin
  tsPais.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsPaisKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsTelefono.SetFocus;
end;

procedure Tfrm_Empleados.tsPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13  then tsTelefono.SetFocus;
end;




procedure Tfrm_Empleados.tsTelefonoCelularEnter(Sender: TObject);
begin
  tsTelefonoCelular.Color := global_color_entradaPU;;
end;

procedure Tfrm_Empleados.tsTelefonoCelularExit(Sender: TObject);
begin
  tsTelefonoCelular.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsTelefonoCelularKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsIdDepartamento.SetFocus;
end;

procedure Tfrm_Empleados.tsTelefonoEnter(Sender: TObject);
begin
  tsTelefono.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsTelefonoExit(Sender: TObject);
begin
  tsTelefono.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsTelefonocelular.SetFocus;
end;

procedure Tfrm_Empleados.tsTipoSangreEnter(Sender: TObject);
begin
  tsTipoSangre.Color := global_color_entradaPU;
end;

procedure Tfrm_Empleados.tsTipoSangreExit(Sender: TObject);
begin
  tsTipoSangre.Color := global_color_salidaPU;
end;

procedure Tfrm_Empleados.tsTipoSangreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then telefono_emer.SetFocus;
end;

procedure Tfrm_Empleados.zQEmpleadosAfterScroll(DataSet: TDataSet);
Var
  QryBusca: TZQuery;
  BlobField: TField;
  Bs: TStream;
  Pic: TJPegImage;
  Pic1 : TJPEGImage;
  bmp1:TBitmap;
  edad : integer;
begin
  imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
  if IsOpen then
  begin
    if pgDatos.ActivePageIndex = 3 then
    begin
      zWord.Active := False;
      zWord.parambyname('identificador').asstring := zQEmpleados.fieldbyname('sIdEmpleado').asstring;
      zWord.Open;
    end;

    obtenerneto(zQEmpleados.FieldValues['sIdEmpleado']);

    if zqEmpleados.FieldByName('lSexo').AsString = 'MASCULINO' then
      bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture)
    else
      bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture);

    //tsIdDepartamento.text := zQDepartamentos.fieldByName('TituloDepartamento').asString;
    tsOrganizacion.KeyValue   := zQEmpleados.FieldValues['idOrganizacion'];

    if pgDatos.ActivePageIndex = 1 then
    begin
      btnPreview.Click;
      if ZPdf.RecordCount > 0 then
         PdfRecordCount.Caption := IntToStr(ZPdf.RecNo)+' de '+IntToStr(ZPdf.RecordCount);
    end;

    if pgDatos.ActivePageIndex = 2 then
    begin
      zq_EquiposPorEmpleado.Active := False;
      zq_EquiposPorEmpleado.Params.ParamByName('Empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
      zq_EquiposPorEmpleado.Open;
    end;

   // tdSueldo.Text := FloatToStr(zqEmpleados.FieldByName('dSueldo').AsFloat);


    if pgDatos.ActivePageIndex = 3 then
    begin
      CargaTablaDePrestaciones;
      CargaTablaDeDeducciones;
    end;

    EstatusEmpleado := tsEstatus.Text;

    edad:= yearof(date) - yearof(nacimiento.date);
    dbiedad.Value := edad;

    if pgDatos.ActivePageIndex = 1 then
    begin
        //LimpiarCompDocumento;
        ZPdf.Close;
        ZPdf.ParamByName('sidentificador').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        ZPdf.Open;
        //cargargridpdf;
        PdfRecordCount.Caption := IntToStr(ZPdf.RecNo)+' de '+IntToStr(ZPdf.RecordCount);
        bImagen.Picture.Graphic := Nil;
    end;


    if pageControl2.ActivePageIndex = 1 then
    begin
        qryHistorialAltasbajas.Cancel;
        qryHistorialAltasbajas.Active := False;
        qryHistorialAltasbajas.ParamByName('empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := tsOrganizacion.KeyValue  ;
        qryHistorialAltasbajas.Open;
        qryHistorialAltasBajas.Refresh;

        {agregamos los documentos con vigencia}
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select etipodocumento, sFolioDocumento from rh_historialdocumentos where idorganizacion =:organizacion and iidempleado =:id and eReemplazada = "No"');
        connection.zCommand.ParamByName('organizacion').AsInteger := zqEmpleados.FieldByName('idorganizacion').AsInteger;
        connection.zCommand.ParamByName('id').AsInteger           := zqEmpleados.FieldByName('idPersonal').AsInteger;
        connection.zCommand.Open;

        tsListaDoctos.Clear;
        while not connection.zCommand.Eof do
        begin
            tslistaDoctos.Items.Add(connection.zCommand.FieldValues['etipodocumento']+' F. '+ connection.zCommand.FieldValues['sFolioDocumento']);
            connection.zCommand.Next;
        end;

        tsNombreEntrega.Text  := '';
        tsNombreAutoriza.Text :='';
        if zq_EquiposPorEmpleado.Active then
          if zq_EquiposPorEmpleado.RecordCount>0 then
          begin
              tsNombreEntrega.Text := zq_EquiposPorEmpleado.FieldByName('sNombreEntrega').AsString;
              tsNombreAutoriza.Text := zq_EquiposPorEmpleado.FieldByName('sNombreAutorizacion').AsString;
          end;
    end;

    if pgDatos.ActivePageIndex = 3 then
    begin
      //Cargar QR
      Try
        QryBusca := TZQuery.Create(Self);
        QryBusca.Connection := connection.zConnection;
        QryBusca.Active := False;
        QryBusca.SQL.Text := 'SELECT bQR FROM catalogo_imagenes WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado';
        QryBusca.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          imgQR.Picture.Bitmap := nil;
          imgQR.Picture.LoadFromFile('');
          BlobField := QryBusca.FieldByName('bqr');
          bS := QryBusca.CreateBlobStream(BlobField, bmRead);
          if bs.Size > 15 then
          begin
            Try
              Pic1 := TJpegImage.Create;
              Try
                Pic1.LoadFromStream(bs);
                imgQR.Picture.Graphic := Pic1;
              Finally
                Pic1.Free;
                bMostrar := True;
              End;
            Finally
              bS.Free
            End;
          end;
        end
        else
        begin
           imgQR.Picture.Graphic := nil;
           imgQR.Picture.Bitmap := nil;
           imgQR.Picture := nil;
           imgQR.Picture.LoadFromFile('');
        end;
      Finally
        QryBusca.Free;
      End;
    end;

    if pgDatos.ActivePageIndex = 0 then
    begin
       if pageControl2.ActivePageIndex = 0 then
       begin
          //Foto del Empleado
          Try
            QryBusca := TZQuery.Create(Self);
            QryBusca.Connection := connection.zConnection;
            QryBusca.Active := False;
            QryBusca.SQL.Text := 'SELECT bImagen FROM catalogo_imagenes WHERE sReferencia = "Catalogo_Empleados" AND sIdentificador = :IdEmpleado';
            QryBusca.Params.ParamByName('IdEmpleado').AsString := zQEmpleados.FieldByName('sIdEmpleado').AsString;
            QryBusca.Open;
            if QryBusca.RecordCount > 0 then
            begin
              bImagen_.Picture.Bitmap := nil;
              bImagen_.Picture.LoadFromFile('');
              BlobField := QryBusca.FieldByName('bImagen');
              bS := QryBusca.CreateBlobStream(BlobField, bmRead);
              if bs.Size > 15 then
              begin
                Try
                  Pic1 := TJpegImage.Create;
                  Try
                    Pic1.LoadFromStream(bs);
                    bImagen_.Picture.Graphic := Pic1;
                  Finally
                    Pic1.Free;
                    bMostrar := True;
                  End;
                Finally
                  bS.Free
                End;
              end;
            end
            else
            begin
                AdvGlowButton1.Caption := 'Mostrar';
                bImagen_.Picture.Graphic := Nil;
                if dblSexo.Text =  'FEMENINO' then
                  bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture)
                else
                  bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture);
            end;
          Finally
            QryBusca.Free;
          End;
      end;
    end;

  end;
end;

procedure Tfrm_Empleados.zQEmpleadosdFactorIntegracionChange(Sender: TField);
begin
  CalcularSalarioDiario;
end;

procedure Tfrm_Empleados.zQEmpleadosdPromedioVariablesChange(Sender: TField);
begin
  CalcularSalarioDiario;
end;

procedure Tfrm_Empleados.zQEmpleadosdSalarioDiarioChange(Sender: TField);
begin
  CalcularSalarioDiario;
end;

procedure Tfrm_Empleados.zq_EquiposPorEmpleadoAfterScroll(DataSet: TDataSet);
begin
{ // zqEquipos.Locate('iId', zq_EquiposPorEmpleado.FieldByName('iIdEquipo').AsString, []);
  if zq_EquiposPorEmpleado.FieldByName('iIdEquipo').AsString <> '' then
  begin
      tsNombreEntrega.Text := zq_EquiposPorEmpleado.FieldByName('sNombreEntrega').AsString;
      tsNombreAutoriza.Text := zq_EquiposPorEmpleado.FieldByName('sNombreAutorizacion').AsString;
  end;    }
end;

procedure Tfrm_Empleados.zWordAfterOpen(DataSet: TDataSet);
begin
  if zWord.RecordCount > 0 then
    btnExportaWord.Enabled := True;
end;

procedure Tfrm_Empleados.zWordAfterRefresh(DataSet: TDataSet);
begin
  if zWord.RecordCount > 0 then
    btnExportaWord.Enabled := True;
end;

procedure Tfrm_Empleados.CmdDetalleDescansosClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalogoDiasdescanso') then
    begin
      Application.CreateForm(TfrmCatalogoDiasdescanso, frmCatalogoDiasdescanso);
      frmCatalogoDiasdescanso.show;
      zqHorarioslab.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.CmdDetalleHorarioClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalogoHorarioLabores') then
    begin
      Application.CreateForm(TfrmCatalogoHorarioLabores, frmcatalogohorariolabores);
      frmcatalogohorariolabores.show;
      zqHorarioslab.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.cmbZoomPropertiesChange(Sender: TObject);
begin
   RenderPage;
end;

procedure Tfrm_Empleados.cmdBancosClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmBancos') then
    begin
        Application.CreateForm(Tfrm_BancosGral, frm_bancosGral);
        frm_bancosGral.show;
    end;
  end
end;

procedure Tfrm_Empleados.cmddetallecuentaClick(Sender: TObject);
begin
if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalgoCuentas') then
    begin
      Application.CreateForm(TfrmCatalgoCuentas, frmCatalgoCuentas);
      frmCatalgoCuentas.show;
      zqHorarioslab.Refresh;
    end;
  end
end;

procedure Tfrm_Empleados.CmdDetallesPagosClick(Sender: TObject);
begin
  if zQEmpleados.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmCatalogoPerodosPago') then
    begin
      Application.CreateForm(TfrmCatalogoPeriodosPago, frmCatalogoPeriodosPago);
      frmCatalogoPeriodosPago.show;
      zqHorarioslab.Refresh;
    end;
  end;
end;

procedure Tfrm_Empleados.StatusPersonalChange(Sender: TObject);
var
  Reactivar:Boolean;
begin
  Reactivar:=false;

  if not(sender is Tform) then
  begin
    zqEmpleados.DisableControls;
    Reactivar:=true;
    IsOpen:=false;
  end;

  if reactivar then
  begin
    zqEmpleados.EnableControls;
    IsOpen:=true;
  end;
end;




procedure Tfrm_Empleados.Contratar1Click(Sender: TObject);
begin
  if zQEmpleados.FieldByName('sStatusPersonal').AsString = 'Contratado' then
  begin
    MSG_ER('El personal ya ha sido contratado');
    exit;
  end
  else
  begin
    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString='Tierra' then
    begin
      Application.CreateForm(TFrmContratarWizard, FrmContratarWizard);
      FrmContratarWizard.lblNombre.Caption.Text:=zqempleados.FieldByName('sNombreCompleto').AsString;
      FrmContratarWizard.cdbusqueda.Active:=False;
      FrmContratarWizard.cdbusqueda.Open;
      FrmContratarWizard.cdbusqueda.ParamByName('codigopersonal').AsString:=zQEmpleados.FieldByName('sIdEmpleado').AsString;
      if FrmContratarWizard.cdbusqueda.Active then
        FrmContratarWizard.cdbusqueda.Refresh
      else
        FrmContratarWizard.cdbusqueda.Open;

      FrmContratarWizard.cdTipoNomina.Active:=False;
      FrmContratarWizard.cdTipoNomina.ParamByName('Tn').AsInteger:=2;
      FrmContratarWizard.cdTipoNomina.Open;

      FrmContratarWizard.CdCargo.Active:=False;
      FrmContratarWizard.CdCargo.ParamByName('idcargo').AsInteger:=zQEmpleados.FieldByName('iId_Puesto').AsInteger;
      FrmContratarWizard.CdCargo.Open;
      FrmContratarWizard.dtpcontratacion.Date:=INICIOLAB.Date;
      FrmContratarWizard.lblTexto.Caption :='frm_empleados';
      FrmContratarWizard.showModal;
    end
    else
    MessageDlg('El Empleado no es personal de Tierra, para contratarlo diríjase al Control de Guardias', mtInformation, [mbOk], 0);

    if z.Text='contratado' then
    begin
      z.Text:='';
      contratar;
    end;
  end

end;

procedure Tfrm_Empleados.CrearCompDocumento(Padre:Twincontrol;MuestraError:Boolean);
begin
  try
    try
      CompDocumento := TAcroPDF.Create(Padre);
      CompDocumento.Parent := Padre;
      CompDocumento.Align:= alClient;
      CompDocumento.DoubleBuffered := False;
    except
      on e:Exception do
        if MuestraError then
          ShowMessage('Error al crear el Preview de archivos PDF de documentos, Puede que necesite instalar un lector de archivos PDF o bién el plugin de Acrobat reader falló: '+e.Message)
        else;
    end;
  finally
    Padre.Visible := False;
  end;
end;

procedure Tfrm_Empleados.CargarDocumento(PathPdf:string);
begin
  //Cargar pdf
  if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
  begin
    if (length(trim(PathPdf)) > 0) and (FileExists(PathPdf))  then
    begin
      CompDocumento.LoadFile(PathPdf);
      CompDocumento.Parent.Visible := True;
    end
    else
      imgPreview.Canvas.Fillrect(imgPreview.Canvas.ClipRect);
  end;
end;

procedure Tfrm_Empleados.LimpiarCompDocumento;
var
  padre: TWinControl;
begin
  try
    //Limpiar el componente
    if (Assigned(CompDocumento)) and (CompDocumento <> nil) then
    begin
      padre := CompDocumento.Parent;
      FreeAndNil(CompDocumento);
      CrearCompDocumento(padre,False);
    end;
  except
    on e:exception do ;
  end;
end;

//Buscamos las tabalas que no pueden por ciertas caracteriticas actualizarse por integridad,, jjfs 10-oct-2013 by ivan,,
procedure Tfrm_Empleados.ActualizaIdEmpleado(sParamIdNuevo: string; sParamIdAnt: string);
var
  tablas: array[1..3,1..4] of string;
  i : integer;
begin
  tablas[1,1] := 'catalogo_imagenes';
  tablas[1,2] := 'con_tesoreriapegresos';
  tablas[1,3] := 'con_tesoreriapegresos_v1';
  tablas[1,4] := 'rh_escaneos_imagenes';
  tablas[2,1] := 'sIdentificador';
  tablas[2,2] := 'sIdProveedor';
  tablas[2,3] := 'sIdproveedor';
  tablas[2,4] := 'sIdEmpleado';
  tablas[3,1] := 'and ((sReferencia = "Catalogo_empleados") or (sReferencia = "Documentacion_empleadoPdf")';
  tablas[3,2] := 'and sTipoEgreso = "Empleados" ';
  tablas[3,3] := 'and sTipoEgreso = "Empleados" ';
  tablas[3,4] := 'and sIdentificador <> "" ';

  //Recorremos el array
  for i := 1 to 4 do
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' +tablas[1,i]+ ' set '+tablas[2,i]+' =:IdActual where '+tablas[2,i]+' =:IdAnterior ');
    connection.QryBusca.ParamByName('IdAnterior').AsString := sParamIdAnt;
    connection.QryBusca.ParamByName('IdActual').AsString   := sParamIdNuevo;
    connection.QryBusca.ExecSQL;
  end;
end;

//Porcedimiento para calcular las fecha de nacimiento by JJFS - ivan 3-OCT-2013
procedure Tfrm_Empleados.CalculaEdad;
begin
  while not zQEmpleados.Eof  do
  begin
    zQEmpleados.Next;
  end;
end;

procedure Tfrm_Empleados.contratar;
begin
  zqHistorial.Append;
  zqHistorial.FieldByName('sIdEmpleado').AsString:=zQEmpleados.FieldByName('sIdEmpleado').AsString;
  zqHistorial.FieldByName('dFechaInicio').AsDateTime:=INICIOLAB.Date;
  zqHistorial.FieldByName('sTipoContrato').AsString :='TIERRA';
  zqHistorial.FieldByName('sPeriodoLaboral').AsString:='Indefinido';
  zqHistorial.Post;

  zQEmpleados.Refresh;
  ShowMessage('El contrato fue creado con exito');
end;

procedure Tfrm_Empleados.obtenerneto (empleado: Variant);
begin
//    cdDetalleNom.Active := False;
//    connection.QryBusca.Active := False ;
//    connection.QryBusca.SQL.Clear;
//    connection.QryBusca.SQL.Add('SELECT MAX(nnp.IdNomina) AS nomina, np.idpersonal FROM nuc_personal np ');
//    connection.QryBusca.SQL.Add('INNER JOIN nom_nominapersonal nnp ON (np.idpersonal=nnp.IdPersonal) WHERE np.codigopersonal=:id');
//    connection.QryBusca.ParamByName('id').Value := empleado;
//    connection.QryBusca.Open ;
//    if  connection.QryBusca.RecordCount>0 then
//    begin
//      cdDetalleNom.ParamByName('Clave').AsString:='NETO';
//      cdDetalleNom.ParamByName('IdPersonal').AsInteger:=connection.QryBusca.FieldByName('idpersonal').AsInteger;
//      cdDetalleNom.ParamByName('IdNomina').AsInteger:=connection.QryBusca.FieldByName('nomina').AsInteger;
//      cdDetalleNom.Open;
//      tdSueldo.Text:=FloatToStr(cdDetalleNom.FieldByName('Importe').AsFloat);
//    end;
end;

{$REGION 'PDF'}

procedure Tfrm_Empleados.LoadFileJPEG(sFile: TFilename);
var
  Password: string;
  R: Integer;
  BlankBM: TBitmap;
begin

  if FileExists(string(sFile)) then
  begin
    try
      imgPreview.Picture.LoadFromFile(CompressImage(string(sFile),80));
      imgPreview.AutoSize:=true;
    Except
      MessageDlg('El Archivo JPEG no puede leerse.', mtError, [mbOK], 0);
    end;
    //ViewPrintQP.Free;
      //ViewPrintQP := nil;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
  end;
end;

procedure Tfrm_Empleados.LoadFileJPEGPdf(sFile: TFilename;
  var ViewPrintParam: TDebenuPDFLibrary);
var
  Password: string;
  R: Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
  lWidth :Integer;
  lHeight:Integer;
begin

 // ViewPrintParam.addi
  CanProceed:=false;
  if FileExists(string(sFile)) then
  begin
    ViewPrintParam := TDebenuPDFLibrary.Create;
    if ViewPrintParam.UnlockKey('jt3m77ty7ph97a6bp8t54f35y') = 1 then
    begin
      try
        ViewPrintParam.AddImageFromFile(CompressImage(string(sFile),80),0);
        lWidth := ViewPrintParam.ImageWidth();
        lHeight := ViewPrintParam.ImageHeight();
        ViewPrintParam.SetPageDimensions(lWidth, lHeight);
        ViewPrintParam.DrawImage(0, lHeight, lWidth, lHeight);

        CanProceed := True;
      except
        MessageDlg('El Archivo PDF no puede leerse.', mtError, [mbOK], 0);
      end;
    end
    else
      MessageDlg('La licencia es Incorrecta o a Expirado.', mtError, [mbOK], 0);
  end;

  if CanProceed then
  begin
    ViewPrintPageNum := 1;
    RenderPage;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
    ViewPrintQP.Free;
    ViewPrintQP := nil;
  end;


end;

procedure Tfrm_Empleados.LoadFilePdf(sFile: TFilename;
  var ViewPrintParam: TDebenuPDFLibrary);
var
  Password: string;
  R: Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
begin
  CanProceed:=false;
  if FileExists(string(sFile)) then
  begin
    ViewPrintParam := TDebenuPDFLibrary.Create;
    if ViewPrintParam.UnlockKey('jt3m77ty7ph97a6bp8t54f35y') = 1 then
    begin
      if ViewPrintParam.LoadFromFile(string(sFile), '') = 1 then
      begin
        CanProceed := True;
      end
      else
        MessageDlg('El Archivo PDF no puede leerse.', mtError, [mbOK], 0);
    end
    else
      MessageDlg('La licencia es Incorrecta o a Expirado.', mtError, [mbOK], 0);
  end;

  if CanProceed then
  begin
    ViewPrintPageNum := 1;
    RenderPage;
  end
  else
  begin
    BlankBM := TBitmap.Create;
    try
      imgPreview.Picture.Assign(BlankBM);
    finally
      BlankBM.Free;
    end;
    ViewPrintQP.Free;
    ViewPrintQP := nil;
  end;
end;


procedure Tfrm_Empleados.RenderPage;
var
  BM: TBitmap;
  MS: TMemoryStream;
  DPI: Integer;
begin
  BM := TBitmap.Create;
  try
    imgPreview.Picture.Assign(BM);
    PreviewScrollBox.HorzScrollBar.Position := 0;
    PreviewScrollBox.VertScrollBar.Position := 0;
    imgPreview.Left := 0;
    imgPreview.Top := 0;
  finally
    BM.Free;
  end;

  if Assigned(ViewPrintQP) then
  begin
    MS := TMemoryStream.Create;
    try
      DPI := ((cmbZoom.ItemIndex + 1) * 25 * 96) div 100;
      ViewPrintQP.RenderPageToStream(DPI, ViewPrintPageNum, 0, MS);
      MS.Seek(0, soFromBeginning);
      BM := TBitmap.Create;
      try
        BM.LoadFromStream(MS);
        imgPreview.AutoSize := True;
        imgPreview.Picture.Assign(BM);
      finally
        BM.Free;
      end;
    finally
      MS.Free;
    end;
  end;
end;

procedure Tfrm_Empleados.MBarra(Qry:TZQuery);
begin
  if Qry.State = dsbrowse then
  begin
    BitBtnfirst.Enabled:= (Qry.RecordCount > 0) and (Qry.recno <> 1);
    BitBtnLast.Enabled := (Qry.RecordCount > 0) and (Qry.recno <> Qry.recordcount);
    BitBtnBack.Enabled := (Qry.RecordCount > 0) and (Qry.recno <> 1);
    BitBtnNext.Enabled := (Qry.RecordCount > 0) and (Qry.recno <> Qry.recordcount);
    BitBtnAdd.Enabled := True;
    BitBtnEdit.Enabled := (Qry.RecordCount > 0);
    BitBtnDel.Enabled := (Qry.RecordCount > 0);
    BitBtnPost.Enabled := False;
    BitBtnCancel.Enabled := False;
  end
  else
  begin
    if Qry.State in [dsedit,dsinsert] then
    begin
      BitBtnfirst.Enabled := False;
      BitBtnLast.Enabled := False;
      BitBtnBack.Enabled := False;
      BitBtnNext.Enabled := False;
      BitBtnAdd.Enabled := False;
      BitBtnEdit.Enabled := False;
      BitBtnDel.Enabled := False;
      BitBtnPost.Enabled := True;
      BitBtnCancel.Enabled := True;
    end
    else
    begin
      BitBtnfirst.Enabled := False;
      BitBtnLast.Enabled := False;
      BitBtnBack.Enabled := False;
      BitBtnNext.Enabled := False;
      BitBtnAdd.Enabled := False;
      BitBtnEdit.Enabled := False;
      BitBtnDel.Enabled := False;
      BitBtnPost.Enabled := False;
      BitBtnCancel.Enabled := False;
    end;
  end;


end;
{$ENDREGION}

procedure Tfrm_Empleados.Inserta_nuc_personal;
var
   maximo : integer;
begin
    {insertamos el registor en la base de datos de nuc_personal}
    {busqueda del maximo Id}
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select max(idPersonal) as maximo from nuc_personal ');
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
       maximo := connection.QryBusca.FieldValues['maximo'] + 1
    else
       maximo := 0;

    {insertamos los datos}
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('insert into nuc_personal '+
                                '(idpersonal,codigopersonal,Activo,Nombres,APaterno,AMaterno,numerosegurosocial,curp, '+
                                'telefono,gruposanguineo,rfc,contacto,telefonocontacto,idpostulante,Correo,Calle,Ciudad,Colonia,CP,Estado, '+
                                'Municipio,Numero,Pais,idcargo,idplaza,EstadoCivil,ciudadnacimiento,Infonavit,NumeroInfonavit,FactorInfonavit, '+
                                'fechanacimiento,sexo,nacionalidad,IdPlazaDetalle) '+
                                'values '+
                                '(:Id, :codigo, "Si", :nombres, :Apaterno, :Amaterno, :segsocial, :curp, '+
                                ':telefono, :gruposang, :rfc, :contacto, :telefono, :idpostulante, :correo, :calle, :ciudad, :colonia, :cp, :estado, '+
                                ':municipio, :numero, :pais, :idcargo, :idplaza, :estadociv, :cuidadnac, :infonavit, :numinfonavit, :factor, '+
                                ':fechanac, :sexo, :nacionalidad, :idplaza)');
    connection.QryBusca.ParamByName('Id').AsInteger       := maximo;
    connection.QryBusca.ParamByName('codigo').AsString    := zQEmpleados['sIdEmpleado'];
    connection.QryBusca.ParamByName('nombres').AsString   := zqEmpleados['sNombreCompleto'];
    connection.QryBusca.ParamByName('Apaterno').AsString  := zqEmpleados.FieldByName('sApellidoPaterno').asString;
    connection.QryBusca.ParamByName('Amaterno').AsString  := zqEmpleados.FieldByName('sApellidoMaterno').AsString;
    connection.QryBusca.ParamByName('segsocial').AsString := zqEmpleados.FieldByName('sImss').AsString;
    connection.QryBusca.ParamByName('curp').AsString      := zqEmpleados.FieldByName('sCurp').AsString;
    connection.QryBusca.ParamByName('telefono').AsString  := zqEmpleados.FieldByName('sTelefono').AsString;
    connection.QryBusca.ParamByName('gruposang').AsString := zqEmpleados.FieldByName('sTipoSangre').AsString;
    connection.QryBusca.ParamByName('rfc').AsString       := zqEmpleados.FieldByName('sRfc').AsString;
    connection.QryBusca.ParamByName('contacto').AsString  := zqEmpleados.FieldByName('sParentesco_Emergencia').AsString;
    connection.QryBusca.ParamByName('telefono').AsString  := zqEmpleados.FieldByName('sNumero_Emergencia').AsString;
    connection.QryBusca.ParamByName('idpostulante').AsInteger := maximo;
    connection.QryBusca.ParamByName('correo').AsString    := zqEmpleados.FieldByName('seMail').AsString;
    connection.QryBusca.ParamByName('calle').AsString     := zqEmpleados.FieldByName('sCalle').AsString;
    connection.QryBusca.ParamByName('ciudad').AsString    := zqEmpleados.FieldByName('sCiudad').AsString;
    connection.QryBusca.ParamByName('colonia').AsString   := zqEmpleados.FieldByName('sColonia').AsString;
    connection.QryBusca.ParamByName('cp').AsString        := zqEmpleados.FieldByName('sCP').AsString;
    connection.QryBusca.ParamByName('estado').AsString    := zqEmpleados.FieldByName('sEstado').AsString;
    connection.QryBusca.ParamByName('municipio').AsString := zqEmpleados.FieldByName('sLocalidad').AsString;
    connection.QryBusca.ParamByName('numero').AsString    := zqEmpleados.FieldByName('sNumero').AsString;
    connection.QryBusca.ParamByName('pais').AsString      := tsPais.Text;
    connection.QryBusca.ParamByName('idcargo').AsInteger  := zqEmpleados.FieldByName('iId_Puesto').AsInteger;
    connection.QryBusca.ParamByName('idplaza').AsInteger  := maximo;
    connection.QryBusca.ParamByName('estadociv').AsString := zqEmpleados.FieldByName('sEstadoCivil').AsString;
    connection.QryBusca.ParamByName('cuidadnac').AsString := zqEmpleados.FieldByName('sLugarNacimiento').AsString;
    connection.QryBusca.ParamByName('numinfonavit').AsString := zqEmpleados.FieldByName('sNoCreditoInfonavit').AsString;
    connection.QryBusca.ParamByName('fechanac').AsDate  := zqEmpleados.FieldByName('dFechaNacimiento').AsDateTime;
    connection.QryBusca.ParamByName('sexo').AsString      := zqEmpleados.FieldByName('lSexo').AsString;
    connection.QryBusca.ParamByName('idPlaza').asInteger  := maximo;
    connection.QryBusca.ExecSQL;

end;

procedure Tfrm_Empleados.ActualizaLibretas;
var
   dFecha : TDate;
begin
    dFecha := Date;
    {Aqui se actualizan las libretas}
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Update rh_historialdocumentos set eVencida = "Si" where dFechaVigencia <=:fecha ');
    connection.zCommand.ParamByName('fecha').AsDate := IncDay(dFecha, connection.configuracionRecHum.FieldByName('iDiasLibreta').AsInteger);
    connection.zCommand.ExecSQL;

    {Ahora activamos el mensaje si existen libretas Vencidas y no reemplazadas}
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select dFechaVigencia from rh_historialdocumentos where eVencida = "Si" and eReemplazada = "No" ');
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
       lAlerta := True;
       btnLibretasVencidas.Visible := True;
    end
    else
    begin
       lAlerta := False;
       btnLibretasVencidas.Visible := False;
    end;

end;

procedure Tfrm_Empleados.ActualizaCuenta;
var
   indice : integer;
begin
    {Primero se busca el codigo del empleado}
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Select idpersonal from nuc_personal where codigopersonal =:id');
    connection.zCommand.ParamByName('Id').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
        {Ahora buscamos en cuentas bancarias que este personal exista}
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select idDatosBancariosxpersonal from rhu_datosbancariosxpersonal where idPostulante = :Id');
        connection.QryBusca.ParamByName('Id').AsInteger := connection.zCommand.FieldValues['idpersonal'];
        connection.QryBusca.Open;

        if connection.QryBusca.RecordCount > 0 then
        begin
            //se actualiza la cuenta bancaria
            connection.zCommand.Active := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('update rhu_datosbancariosxpersonal set Numerodecuenta =:cuenta, sucursal =:sucursal, Claveinterbancaria =:clave where idDatosBancariosxPersonal =:idDatos');
            connection.zCommand.ParamByName('cuenta').AsString   := zqEmpleados.FieldByName('sCuenta').AsString;
            connection.zCommand.ParamByName('sucursal').AsString := zqEmpleados.FieldByName('sSucursal').AsString;
            connection.zCommand.ParamByName('clave').AsString    := zqEmpleados.FieldByName('sCuentainterbancaria').AsString;
            connection.zCommand.ParamByName('idDatos').AsInteger := connection.QryBusca.FieldByName('idDatosBancariosxpersonal').AsInteger;
            connection.zCommand.ExecSQL;
        end
        else
        begin
            //sino existe se crea un registro nuevo..
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select max(idDatosBancariosxpersonal) as maximo from rhu_datosbancariosxPersonal ');
            connection.QryBusca.Open;

            indice := 0;
            if connection.QryBusca.RecordCount > 0 then
               indice := connection.QryBusca.FieldByName('maximo').AsInteger + 1;

            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('insert into rhu_datosbancariosxpersonal (idDatosBancariosxPersonal, idPostulante, idBanco, Sucursal, NumerodeCuenta, Claveinterbancaria, Estado, Fechadeaplicacion, activo) '+
                                       'values (:id, :idPersonal, 1, :sucursal, :cuenta, :clave, "Activada", :fecha, "Si")');
            connection.QryBusca.ParamByName('id').AsInteger         := indice;
            connection.QryBusca.ParamByName('idPersonal').AsInteger := connection.zCommand.FieldByName('idpersonal').AsInteger;
            connection.QryBusca.ParamByName('sucursal').AsString    := zqEmpleados.FieldByName('sSucursal').AsString;
            connection.QryBusca.ParamByName('cuenta').AsString      := zqEmpleados.FieldByName('sCuenta').AsString;
            connection.QryBusca.ParamByName('clave').AsString       := zqEmpleados.FieldByName('sCuentainterbancaria').AsString;
            connection.QryBusca.ParamByName('fecha').AsDate         := date;
            connection.QryBusca.ExecSQL;

        end;
    end;
end;

function Tfrm_empleados.ValidaDoctos;
begin
    result := False;
    connection.QryBusca.Active:=False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sIdEmpleado, sRfc, sImss, sCurp from empleados');
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        //Id Empleado
        if (tsIdEmpleado.Text <> '*') and (trim(tsIdEmpleado.Text) <> '') then
           if sValidaID <> tsIdEmpleado.Text then
              if connection.QryBusca.Locate('sIdEmpleado', tsIdEmpleado.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('Este Id de Empleado ya existe.', mtInformation,[mbOk],0);
                  tsIdEmpleado.SetFocus;
                  result := True;
              end;
        //RFC del empleado
        if (rfc.Text <> '*') and (trim(rfc.text) <> '') then
           if sValidaRFC <> rfc.Text then
              if connection.QryBusca.Locate('sRfc', rfc.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('El RFC del Empleado ya fue dado de alta.', mtInformation,[mbOk],0);
                  rfc.SetFocus;
                  result := True;
              end;
        //NSS del empleado
        if (imss.Text <> '*') and (trim(imss.Text) <> '') then
           if sValidaNSS <> imss.Text then
              if connection.QryBusca.Locate('sImss', imss.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('El NSS del Empleado ya fue dado de alta.', mtInformation,[mbOk],0);
                  imss.SetFocus;
                  result := True;
              end;
        //CURP del empleado
        if (curp.Text <> '*') and (trim(curp.Text) <> '') then
           if sValidaCURP <> curp.Text then
              if connection.QryBusca.Locate('sCurp', curp.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('El CURP del Empleado ya fue dado de alta.', mtInformation,[mbOk],0);
                  curp.SetFocus;
                  result := True;
              end;
    end;

    connection.QryBusca.Active:=False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sFicha from rh_postulantes where sFicha = :Id');
    connection.QryBusca.ParamByName('Id').AsString := tsIdEmpleado.Text;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        MessageDlg('Este número de ficha '+connection.QryBusca.FieldByName('sFicha').AsString+' esta apartado para un postulante.', mtInformation,[mbOk],0);
        tsIdEmpleado.SetFocus;
        result := True;
    end;
end;



procedure Tfrm_empleados.OrdenarImagenes(sParamOrden: string);
var
   idAuxiliar, idAuxiliar2 : integer;
   SavePlace   : TBookmark;
begin
    if reportefotografico.RecordCount > 0 then
    begin
        if sParamOrden = 'Arriba' then
        begin
            idAuxiliar2 := reportefotografico.FieldValues['iOrden'];
            reportefotografico.Prior;

            idAuxiliar  := reportefotografico.FieldValues['iOrden'];
            reportefotografico.Next;
        end;

        if sParamOrden = 'Abajo' then
        begin
            idAuxiliar2 := reportefotografico.FieldValues['iOrden'];
            reportefotografico.Next;

            idAuxiliar  := reportefotografico.FieldValues['iOrden'];
            reportefotografico.Prior;
        end;
        //Colocamos un id mayor para evitar duplicidad..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE rh_escaneos_imagenes SET iOrden = :DiarioNuevo ' +
                                    'WHERE sTipo = "DOCUMENTOS_PERSONAL" AND sIdEmpleado = :Identificador  And iOrden = :diario ');
        Connection.zCommand.Params.ParamByName('Identificador').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Identificador').value    := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        Connection.zCommand.Params.ParamByName('diario').DataType        := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value           := idAuxiliar2;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value      := idAuxiliar + 500;
        connection.zCommand.ExecSQL;

        //Ahora actualizamos el item mayor
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE rh_escaneos_imagenes SET iOrden = :DiarioNuevo ' +
                                    'WHERE sTipo = "DOCUMENTOS_PERSONAL" AND sIdEmpleado = :Identificador  And iOrden = :diario ');
        Connection.zCommand.Params.ParamByName('Identificador').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Identificador').value    := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        Connection.zCommand.Params.ParamByName('diario').DataType        := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value           := idAuxiliar ;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value      := idAuxiliar2;
        connection.zCommand.ExecSQL;

         //Ahora actualizamos el item alterado
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('UPDATE rh_escaneos_imagenes SET iOrden = :DiarioNuevo ' +
                                    'WHERE sTipo = "DOCUMENTOS_PERSONAL" AND sIdEmpleado = :Identificador  And iOrden = :diario');
        Connection.zCommand.Params.ParamByName('Identificador').DataType := ftString;
        Connection.zCommand.Params.ParamByName('Identificador').value    := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        Connection.zCommand.Params.ParamByName('diario').DataType        := ftInteger;
        Connection.zCommand.Params.ParamByName('diario').value           := idAuxiliar + 500;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').DataType   := ftInteger;
        Connection.zCommand.Params.ParamByName('DiarioNuevo').value      := idAuxiliar;
        connection.zCommand.ExecSQL;

        if sParamOrden = 'Arriba' then
           reportefotografico.Prior
        else
           reportefotografico.Next;

        SavePlace := reportefotografico.GetBookmark;
        reportefotografico.Refresh;
        reportefotografico.GotoBookmark(SavePlace);
        reportefotografico.FreeBookmark(SavePlace);
    end;
end;

function Tfrm_Empleados.GenerarNombreAleatorio( LongitudCaracteres : Integer = 15 ):string;
const
  ALFABETO = 'ABCDEFGHJKLMNPQRSTUVWXYZ';

var
  C : Char;
  Nombre : string;
  Count : Integer;
begin
  Nombre := '';
  for Count := 1 to LongitudCaracteres - 1 do
    Nombre := Nombre + Trim( ALFABETO[ Random( Length( ALFABETO ) ) + 1 ] );

  Result := Nombre;

end;


end.
