unit frmEmpleados;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, StrUtils, frm_barra, ZAbstractRODataset, NxDBColumns,
  Grids, DBGrids, DBCtrls, ZAbstractDataset, NxCustomGridControl,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGrid, NxPageControl, Jpeg,
  NxDBGrid, NxColumns, global, StdCtrls, Mask, rxToolEdit, Menus, masUtilerias,
  frxClass, frxDBSet, RXDBCtrl, NxGrid, Buttons, ExtDlgs,
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
  cxGroupBox, dxdbtrel, SysUtils, cxCalendar, cxDBEdit, cxCalc,
  dxBarBuiltInMenu, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  cxPC, dxLayoutControlAdapters, unitGenerales;
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
  PanelContenedorFichas1: TPanel;
  btnCancelarCartaRec: TButton;
  Image1: TImage;
  PopupElimarAltas: TPopupMenu;
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
  ZQPeriodoiIdPeriodo: TIntegerField;
  qryEmpleadosiIdPeriodo: TIntegerField;
  qryEmpleadosCredencialiIdPeriodo: TIntegerField;
  zqDescanso: TZQuery;
  StringField6: TStringField;
  ds_descanso: TDataSource;
  zqDescansoiIdDiasdescanso: TIntegerField;
  qryEmpleadosiIdDiasDescanso: TIntegerField;
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
    cdDetalleNom: TZQuery;
    cdDetalleNomImporte: TFloatField;
    Pendiente: TcxStyle;
    Contratado: TcxStyle;
    NoContratado: TcxStyle;
    BView_EmpleadossStatusPersonal: TcxGridDBColumn;
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
    zqConfiguracionRhsDomicilio_Firmante1: TStringField;
    zqConfiguracionRhsDomicilio_Firmante2: TStringField;
    zqConfiguracionRhsNotario: TStringField;
    zqConfiguracionRhsDomicilio_Notario: TStringField;
    zqConfiguracionRhsPostulanteMasc: TStringField;
    zqConfiguracionRhiPostulanteConsec: TLargeintField;
    zqConfiguracionRhsEmpleadoMasc: TStringField;
    zqConfiguracionRhiEmpleadoConsec: TLargeintField;
    zqConfiguracionRheQR: TStringField;
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
    ds_organizacion: TDataSource;
    QryOrganizacion: TZReadOnlyQuery;
    ds_organizacionDatos: TDataSource;
    QryOrganizacionDatos: TZReadOnlyQuery;
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
    ds_pais: TDataSource;
    zqPais: TZReadOnlyQuery;
    zQEmpleadosiIdNacionalidad: TIntegerField;
    qryEmpleadosCredencialiIdNacionalidad: TIntegerField;
    qryEmpleadosiIdNacionalidad: TIntegerField;
    zqryCartaRecomendacioniIdNacionalidad: TIntegerField;
    zQEmpleadoscalculado1: TIntegerField;
    dlgWord: TJvOpenDialog;
    zqBlobWord: TZQuery;
    zWord: TZQuery;
    dsWord: TDataSource;
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
    zQEmpleadosdSueldoIntegrado: TFloatField;
    rxCredencialessNombre_emergencia_1: TStringField;
    rxCredencialessNumero_emergencia_1: TStringField;
    rxCredencialessApellidos_1: TStringField;
    zQEmpleadosdSueldoDiario: TFloatField;
    ds_bancos: TDataSource;
    zqBancos: TZReadOnlyQuery;
    zQEmpleadossIdBanco: TStringField;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1CheckBoxItem1: TcxEditRepositoryCheckBoxItem;
    frxExperiencia: TfrxDBDataset;
    zqExperiencia: TZReadOnlyQuery;
    zqExperienciaidPersonal: TIntegerField;
    zqExperienciasEmpresa: TStringField;
    zqExperienciasPuesto: TStringField;
    zqExperienciadFechaInicio: TDateField;
    zqExperienciadFechaFinal: TDateField;
    zqExperienciamDescripcion: TMemoField;
    qrCurriculumsDescripcion: TStringField;
    dtfldQEmpleadosdFechaInicioLabores: TDateField;
    dtfldQEmpleadosdFechaTerminoLabores: TDateField;
    tcxRfc: TcxGridDBColumn;
    dlgOpenPDF: TOpenDialog;
    BView_EmpleadosColumn2: TcxGridDBColumn;
    BView_EmpleadosColumn3: TcxGridDBColumn;

    BView_EmpleadosdSueldo: TcxGridDBColumn;
    BView_EmpleadosdSueldoIntegrado: TcxGridDBColumn;
    BView_EmpleadosdSueldodiario: TcxGridDBColumn;
    intgrfldQDepartamentosIdPadre: TIntegerField;
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
    zq_EquiposPorEmpleadosNombreRecibe: TStringField;
    zq_EquiposPorEmpleadodescripcion: TStringField;
    zq_EquiposPorEmpleadosNumeroserie: TStringField;
    zqRptEntregaEquiposModelo: TStringField;
    zqRptEntregaEquiposIdMarca: TStringField;
    zqRptEntregaEquiposNombreRecibe: TStringField;
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
    zq_EquiposPorEmpleadodCantidad: TIntegerField;
    zQEmpleadosdFechaSUA: TDateField;
    ConstanciaSUA1: TMenuItem;
    zQEmpleadosdFechaVacacionesInicio: TDateField;
    zQEmpleadosdFechaVacacionesFin: TDateField;
    zQEmpleadossIFE: TStringField;
    zqConstanciaSUA: TZQuery;
    zqConstanciaSUAsRfc: TStringField;
    zqConstanciaSUAsRegistroPatronal: TStringField;
    zqConstanciaSUAsCalle: TStringField;
    zqConstanciaSUAsNumero: TStringField;
    zqConstanciaSUAsColonia: TStringField;
    zqConstanciaSUAsCiudad: TStringField;
    zqConstanciaSUAsEstado: TStringField;
    zqConstanciaSUANombre: TStringField;
    zqConstanciaSUAsIFE: TStringField;
    zqConstanciaSUAdFechaSUA: TDateField;
    zqConstanciaSUAtitulocargo: TStringField;
    zqConstanciaSUAImporte: TFloatField;
    zqConstanciaSUAdFechaVacacionesFin: TDateField;
    zqConstanciaSUAdFechaVacacionesInicio: TDateField;
    cxPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxEmpresa: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxIdEmpleado: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxNombreEmpleado: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxApellidoP: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxApellidoM: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxCalle: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxNumero: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxColonia: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxCiudad: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxLocalidad: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxCP: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxEstado: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    cxPais: TcxDBLookupComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    cxTelefono: TcxDBCalcEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxMovil: TcxDBCalcEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxDepartamento: TcxDBLookupComboBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxCategoria: TcxDBLookupComboBox;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxTipoPersonal: TcxDBComboBox;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxEstatus: TcxDBLookupComboBox;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxRegistroPatronal: TcxDBLookupComboBox;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxSalarioDiario: TcxDBCalcEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxSalarioDiarioIntegrado: TcxDBCalcEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxSueldoPactado: TcxDBCalcEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group2: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Item10: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl2Item11: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group5: TdxLayoutAutoCreatedGroup;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxBanco: TcxDBLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxSucursal: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxCuenta: TcxDBCalcEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxClabe: TcxDBCalcEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxCentroCosto: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup;
    cxButton5: TcxButton;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutAutoCreatedGroup;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    bImagen_: TcxImage;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxEstadoCivil: TcxDBComboBox;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxSexo: TcxDBComboBox;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup;
    cxFechaNacimiento: TcxDBDateEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    BtnTallas: TcxButton;
    dxLayoutControl4Item6: TdxLayoutItem;
    cxButMuestra: TcxButton;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group3: TdxLayoutAutoCreatedGroup;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxProfesion: TcxDBLookupComboBox;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxEscuela: TcxDBLookupComboBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutControl5Item3: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5Group2: TdxLayoutAutoCreatedGroup;
    cxGroupBox3: TcxGroupBox;
    dxLayoutControl5Item5: TdxLayoutItem;
    dxLayoutControl5Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    cxIfe: TcxDBTextEdit;
    dxLayoutControl6Item1: TdxLayoutItem;
    cxCurp: TcxDBTextEdit;
    dxLayoutControl6Item2: TdxLayoutItem;
    cxRfc: TcxDBTextEdit;
    dxLayoutControl6Item3: TdxLayoutItem;
    cxNSS: TcxDBTextEdit;
    dxLayoutControl6Item4: TdxLayoutItem;
    cxFolioInfonavit: TcxDBTextEdit;
    dxLayoutControl6Item5: TdxLayoutItem;
    cxCartillaM: TcxDBTextEdit;
    dxLayoutControl6Item6: TdxLayoutItem;
    cxSUA: TcxDBDateEdit;
    dxLayoutControl6Item8: TdxLayoutItem;
    cxInicioVacaciones: TcxDBDateEdit;
    dxLayoutControl6Item9: TdxLayoutItem;
    cxFinVacaciones: TcxDBDateEdit;
    dxLayoutControl6Item10: TdxLayoutItem;
    dxLayoutControl6Group1: TdxLayoutAutoCreatedGroup;
    cxButton8: TcxButton;
    dxLayoutControl6Item11: TdxLayoutItem;
    dxLayoutControl6Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl6Group4: TdxLayoutAutoCreatedGroup;
    cxCedula: TcxDBTextEdit;
    dxLayoutControl5Item6: TdxLayoutItem;
    cxCorreo: TcxDBTextEdit;
    dxLayoutControl4Item8: TdxLayoutItem;
    cxTabSheet4: TcxTabSheet;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    cxGroupBox4: TcxGroupBox;
    dxLayoutControl7Item1: TdxLayoutItem;
    cxgrdEmpleados: TcxGrid;
    G_Empleados: TcxGridDBTableView;
    cxgrdbclmnG_EmpleadossIdEmpleado1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossNombreCompleto1: TcxGridDBColumn;
    Glv_EmpleadosGrid1Level1: TcxGridLevel;
    cxDiaDescanso: TcxDBLookupComboBox;
    dxLayoutControl7Item2: TdxLayoutItem;
    cxHorario: TcxDBLookupComboBox;
    dxLayoutControl7Item3: TdxLayoutItem;
    dxLayoutControl7Group1: TdxLayoutAutoCreatedGroup;
    cxNomina: TcxDBLookupComboBox;
    dxLayoutControl7Item4: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutControl7Item5: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutControl7Item6: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutControl7Item7: TdxLayoutItem;
    dxLayoutControl7Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl7Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl7Group4: TdxLayoutAutoCreatedGroup;
    cxTabSheet5: TcxTabSheet;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    cxGroupBox5: TcxGroupBox;
    dxLayoutControl8Item1: TdxLayoutItem;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    cxNombreEmergencia: TcxDBTextEdit;
    dxLayoutControl9Item1: TdxLayoutItem;
    cxParentesco: TcxDBTextEdit;
    dxLayoutControl9Item2: TdxLayoutItem;
    cxTipoSangre: TcxDBTextEdit;
    dxLayoutControl9Item3: TdxLayoutItem;
    cxTelefonoEmergencia: TcxDBTextEdit;
    dxLayoutControl9Item4: TdxLayoutItem;
    dxLayoutControl9Group1: TdxLayoutAutoCreatedGroup;
    cxButton12: TcxButton;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Group7: TdxLayoutAutoCreatedGroup;
    BView_EmpleadosEmpresa: TcxGridDBColumn;
    zQEmpleadosnombreorganizacion: TStringField;
    BView_EmpleadosNombreEmpleado: TcxGridDBColumn;
    zQEmpleadosNombreEmpleado: TStringField;
    cxEdad: TcxCalcEdit;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutAutoCreatedGroup;
    G_EmpleadosColumn1: TcxGridDBColumn;
    zqHistorialsDescripcion: TStringField;
    zqRptEntregaEquipodCantidad: TIntegerField;
    dxLayoutControl6Group5: TdxLayoutAutoCreatedGroup;
    cxTipoInfonavit: TcxDBComboBox;
    dxLayoutControl6Item7: TdxLayoutItem;
    cxCantidadInfonavit: TcxDBCalcEdit;
    dxLayoutControl6Item12: TdxLayoutItem;
    dxLayoutControl6Group6: TdxLayoutAutoCreatedGroup;
    zQEmpleadossTipoInfonavit: TStringField;
    zQEmpleadosdCantidadInfonavit: TFloatField;
    dxLayoutControl5Group4: TdxLayoutAutoCreatedGroup;
    zQPersonalTipoInfonavit: TStringField;
    zQPersonalCantidadInfonavit: TFloatField;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnPrinterClick(Sender: TObject);
  procedure zQEmpleadosAfterScroll(DataSet: TDataSet);
  procedure btnDeleteClick(Sender: TObject);
  procedure btnPrinterClick(Sender: TObject);
  procedure Imprimircartaresponsiva1Click(Sender: TObject);
  procedure IMPRESIONEMPLEADOS1Click(Sender: TObject);
  procedure IMPRESIONSUELDOS1Click(Sender: TObject);
  procedure MostrarSoportesEmpleados1Click(Sender: TObject);
  procedure IntegridadReferencial(IdEmpleado,TablaForanea,Operacion:string);
  procedure ImprimirCartaResponsiva2Click(Sender: TObject);
  procedure IGetValue(const VarName: string; var Value: Variant);
  procedure Btn_ReporteCartaRecomendacionClick(Sender: TObject);
  procedure ImprimirCartadeRecomendacin1Click(Sender: TObject);
  procedure btnperiodoClick(Sender: TObject);
  procedure btnhorariosClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure FormResize(Sender: TObject);
  procedure tsIdEmpleadoEnter(Sender: TObject);
  procedure CredenciaAbordo1Click(Sender: TObject);
  procedure Btn_ReporteCredencialesClick(Sender: TObject);
  procedure CredencialTierra1Click(Sender: TObject);
  procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  procedure Insertar1Click(Sender: TObject);
  procedure Editar1Click(Sender: TObject);
  procedure Salir1Click(Sender: TObject);
  procedure btnDepartamentosClick(Sender: TObject);
  procedure btnCancelarCartaRecClick(Sender: TObject);
  procedure btnSueldosClick(Sender: TObject);
  procedure PageControl2Change(Sender: TObject);
  procedure dblSexoChange(Sender: TObject);
  procedure ImprimirReportedeIncidencias1Click(Sender: TObject);
  procedure ReportedeIncidencias1Click(Sender: TObject);
  procedure Imprimir1Click(Sender: TObject);
  procedure DatosGenerales1Click(Sender: TObject);
  procedure Button11Click(Sender: TObject);
  procedure CmdDetalleHorarioClick(Sender: TObject);
  procedure CmdDetallesPagosClick(Sender: TObject);
  procedure CmdDetalleDescansosClick(Sender: TObject);
  procedure btnHistorialClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure Inserta_nuc_personal;
    procedure cmdVigenciasClick(Sender: TObject);
    procedure btnLibretasVencidasClick(Sender: TObject);
    procedure ds_organizacionDataChange(Sender: TObject; Field: TField);
    procedure ActualizaCuenta;
    function  ValidaDoctos : boolean;
    procedure OrdenarImagenes(sParamOrden : string);
    procedure btnWordAddClick(Sender: TObject);
    procedure btnExportaWordClick(Sender: TObject);
    procedure ImprimirCurriculum1Click(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure cmdExperienciaClick(Sender: TObject);
    procedure cdStatusCalcFields(DataSet: TDataSet);
    procedure ConstanciaSUA1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxImage1Click(Sender: TObject);
    procedure cxButMuestraClick(Sender: TObject);
    procedure BtnTallasClick(Sender: TObject);
    procedure cxFechaNacimientoPropertiesChange(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxEmpresaPropertiesChange(Sender: TObject);

    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

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
Uses frmEquiposPorEmpleado, frmEquiposPorEmpleadoQuitar,
     frm_inteligent, frmCatalogoAreas, frmCatalogoDePuestos, frm_CatalogoEstatusEmpleados, frmHistorialSueldos,
     frm_catalogoentidadeseducativas, frm_CatalogoProfesiones, frmRegistrosPatronales, frm_catalogohorariolabores,
     frm_CatalogoPeriodosPago, frm_CatalogoDiasdescanso, UTFrmContratarWizard,
  UnitValidacion, UnitValidaTexto,frm_CatalgoCuentas, UTFrmHistorialLibretas, UTFrmHistorialEquipoSeguridad, UTFrmHistorialSalarios,
  frmBancos, frm_ExperienciaEmpleado, Func_Genericas, UTFrmDepartamentos,
  UFrmVisorPdf, frm_asigna_salario;

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

procedure Tfrm_Empleados.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure Tfrm_Empleados.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure Tfrm_Empleados.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBLookUpComboBox) then
        tcxDBLookUpComboBox(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBCalcEdit) then
        tcxDBCalcEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

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

procedure Tfrm_Empleados.btnperiodoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPeriododePagoRH, frmPeriododePagoRH);
  frmPeriododePagoRH.ShowModal;
  ZQPeriodo.Refresh;
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

procedure Tfrm_Empleados.ConstanciaSUA1Click(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_ConstanciaSUA.fr3') then
   begin
    showmessage('El archivo de reporte '+global_Mireporte+'_ConstanciaSUA.fr3 no existe, notifique al administrador del sistema');
    exit;
   end;

   zqConstanciaSUA.Active := false;
   zqConstanciaSUA.ParamByName('personal').asinteger := zqempleados.FieldByName('idpersonal').asinteger;
   zqConstanciaSUA.open;

   frxReport1.LoadFromFile( global_files + global_miReporte+'_ConstanciaSUA.fr3' );
   frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.btnLibretasVencidasClick(Sender: TObject);
begin
  //Si el boton esta parpadeando, entonces checar la tabla con los datos de las Libretas de Mar Vencidas
  Application.CreateForm(TfrmLibretasVencidas, frmLibretasVencidas);
  frmLibretasVencidas.Show;
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
            empl:=BView_Empleados.Controller.SelectedRows[iGrid].Values[1];//FieldValues['sIdEmpleado'];
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


procedure Tfrm_Empleados.btnCancelarCartaRecClick(Sender: TObject);
begin
  SeleccionarFecha.Visible := False;
  Grid_Empleados.Enabled := true;
end;

procedure Tfrm_Empleados.cdStatusCalcFields(DataSet: TDataSet);
begin
   if zq_registrospatronales.Locate('iIdRegistroPatronal', cdStatus.FieldByName('iIdRegistroPatronal').AsInteger,[]) then
      cdStatus.FieldByName('sRegistroPatronal').AsString := zq_registrospatronales.FieldByName('sRegistroPatronal').AsString;
end;

procedure Tfrm_Empleados.CredenciaAbordo1Click(Sender: TObject);
begin
   tNewGroupBox11.Visible := True;
end;

procedure Tfrm_Empleados.CredencialTierra1Click(Sender: TObject);
begin
  SeleccionarFecha.Visible := True;
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
          ListBox1.Items.Add(BView_Empleados.Controller.SelectedRows[i].Values[1]);
      except

      end;
    end;
  end;
end;

procedure Tfrm_Empleados.cxButton12Click(Sender: TObject);
begin
   try
    FrmAsignaSalario.SetFocus;
  except
    Application.CreateForm(TFrmAsignaSalario, FrmAsignaSalario);
    FrmAsignaSalario.Show;
  end;
end;

procedure Tfrm_Empleados.cxButton1Click(Sender: TObject);
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

procedure Tfrm_Empleados.cxButton2Click(Sender: TObject);
begin
  try
    FrmCatalogoCargos.SetFocus;
  except
    Application.CreateForm(TFrmCatalogoCargos, FrmCatalogoCargos);
    FrmCatalogoCargos.Show;
  end;
end;

procedure Tfrm_Empleados.cxButton3Click(Sender: TObject);
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

procedure Tfrm_Empleados.cxButton5Click(Sender: TObject);
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

procedure Tfrm_Empleados.cxButton6Click(Sender: TObject);
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

procedure Tfrm_Empleados.cxButton7Click(Sender: TObject);
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

procedure Tfrm_Empleados.BtnTallasClick(Sender: TObject);
var
  zBuscaUltimo: TZQuery;
  Cursor: TCursor;
begin
//  try
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
//  Except
//    on e: exception do
//      MessageDlg('Ha ocurrido un error inesperado, informar al administrador del sistema del siguiente error: ' + e.Message, mtError, [mbOK], 0);
//  end;

end;

procedure Tfrm_Empleados.cxButMuestraClick(Sender: TObject);
var
  QryBusca: TZQuery;
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if cxButMuestra.Caption = 'Mostrar' then
  begin
    bMostrar := True;
  end
  else
  begin
    bMostrar := False;
  end;
  if bMostrar then
  begin
    cxButMuestra.Caption := 'Ocultar';
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
    cxButMuestra.Caption := 'Mostrar';
    bImagen_.Picture.Graphic := Nil;
  end;
end;

procedure Tfrm_Empleados.cxDbGridTablaStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
//  AItem:= (Sender as TcxGridDBTableView).GetColumnByFieldName('sStatusPersonal');
//  if VarToStr(ARecord.Values[AItem.Index])='Contratado' then
//    AStyle:=Contratado
//  else
//  begin
//    if VarToStr(ARecord.Values[AItem.Index])='Pendiente' then
//      AStyle:=Pendiente
//    else
//      AStyle:=NoContratado;
//  end;
end;

procedure Tfrm_Empleados.cxEmpresaPropertiesChange(Sender: TObject);
begin
    zqDepartamentos.Filtered := false;
    zqDepartamentos.Filter :=' idorganizacion= '+QuotedStr(IntToStr(cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger));
    zqDepartamentos.Filtered := True;

    zq_Puestos.Filtered := false;
    zq_Puestos.Filter :=' idorganizacion= '+QuotedStr(IntToStr(cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger));
    zq_Puestos.Filtered := True;
end;

procedure Tfrm_Empleados.cxFechaNacimientoPropertiesChange(Sender: TObject);
var
  Anios,
  edad : Integer;

begin
  cxFechaNacimiento.style.Color := global_color_salidaPU;
//  if zQEmpleados.State <> dsbrowse then
//  begin
    Anios := yearof( date ) - yearof(cxFechaNacimiento.date);

    if ( MonthOf( Date ) < MonthOf( cxFechaNacimiento.date ) ) then
    begin
        edad := Anios - 1;
    end
    else
    begin
      if ( MonthOf( Date ) = MonthOf( cxFechaNacimiento.date ) ) then
      begin
        if DayOf( Date ) < DayOf( cxFechaNacimiento.date ) then
          edad := Anios - 1
        else
          Edad := Anios;

      end
      else
        edad := Anios;

    end;

    cxEdad.EditValue := edad;
//
//  end;
end;

procedure Tfrm_Empleados.cxImage1Click(Sender: TObject);
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

procedure Tfrm_Empleados.dblSexoChange(Sender: TObject);
begin
  if cxSexo.Text =  'FEMENINO' then
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture)
  else
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture);


  if (zQEmpleados.State in [dsInsert]) or (zQEmpleados.State in [dsEdit]) then
    zQEmpleados.FieldByName('lSexo').AsString := cxSexo.Text;
end;

procedure Tfrm_Empleados.ds_organizacionDataChange(Sender: TObject;
  Field: TField);
begin
//    IsOpen:= False;
//    if QryOrganizacion.FieldByName('nombreorganizacion').AsString = '<<TODAS LAS EMPRESAS>>' then
//    begin
//       zqEmpleados.Filtered := false;
//       zqDepartamentos.Filtered := false;
//       zq_Puestos.Filtered  := false;
//    end
//    else
//    begin
//      zqEmpleados.Filtered := false;
//      zqEmpleados.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));
//      zqEmpleados.Filtered := True;
//
//      zqDepartamentos.Filtered := false;
//      zqDepartamentos.Filter :=' idorganizacion= '+QuotedStr(IntToStr(QryOrganizacion.FieldByName('idorganizacion').AsInteger));
//      zqDepartamentos.Filtered := True;
//    end;
//    IsOpen:= True;


end;

procedure Tfrm_Empleados.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
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

  qryHistorialAltasbajas.Active := False;
  if not zqEmpleados.FieldByName('sIdEmpleado').IsNull Then
    qryHistorialAltasbajas.ParamByName('empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString 
  else
    qryHistorialAltasBajas.paramByName('empleado').asString := '0';

  if not qryHistorialAltasBajas.ParamByName('Organizacion').isNull Then
     qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger
  else
     qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := 0 ;

  qryHistorialAltasbajas.Open;

  QryOrganizacion.Active := False;
  QryOrganizacion.ParamByName('padre').AsInteger := -5;
  QryOrganizacion.Open;

//  if QryOrganizacion.RecordCount > 0 then
//     cmbOrganizacion.KeyValue := 0;

  QryOrganizacionDatos.Active := False;
  QryOrganizacionDatos.ParamByName('padre').AsInteger := -5;
  QryOrganizacionDatos.Open;

  zqPais.Active := False;
  zqPais.Open;

  EstatusEmpleado := cxEstatus.Text;
  InicializarCampos;
end;

procedure Tfrm_Empleados.cargargridpdf;
begin

end;

procedure Tfrm_Empleados.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  grid_empleados.Enabled := False;
  cxPage.ActivePageIndex := 0;
  IsOpen:=false;
  global_movimiento := 'Insertó';
  zQEmpleados.Append;

  cxSexo.Text := 'MASCULINO';
  zQEmpleados.FieldByName('sIdEmpleado').AsString     := AutoFolio('Empleado','empleados','sIdEmpleado');
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
  zQEmpleados.FieldValues['dCantidadInfonavit']       :=0;

  cxFechaNacimiento.Date := DATE;
  cxEdad.Value   := 0;

  if zq_puestos.RecordCount > 0 then
  begin
    cxCategoria.DataBinding.DataSource.DataSet.FieldByName('iId_Puesto').AsInteger := zq_puestos.FieldValues['idcargo'];
    zQEmpleados.FieldValues['iId_Puesto'] := cxCategoria.DataBinding.DataSource.DataSet.FieldByName('iId_Puesto').AsInteger;
  end;

  cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger   := qryOrganizacionDatos.FieldByName('idOrganizacion').AsInteger;

  cxDiaDescanso.DataBinding.DataSource.DataSet.FieldByName('iIdDiasdescanso').AsInteger   := zqDescanso.FieldByName('iIdDiasdescanso').AsInteger;

  if zq_registrospatronales.RecordCount > 0 then
  begin
    cxRegistroPatronal.DataBinding.DataSource.DataSet.FieldByName('iIdRegistroPatronal').AsInteger := zq_registrospatronales.FieldValues['iIdRegistroPatronal'];
    zQEmpleados.FieldValues['iIdRegistroPatronal'] := cxRegistroPatronal.DataBinding.DataSource.DataSet.FieldByName('iIdRegistroPatronal').AsInteger ;
  end;

  cxsexo.ItemIndex := 1;
  zQEmpleados.FieldValues['lSexo'] := cxsexo.Text;

  if qryestatus.RecordCount > 0 then
  begin
    cxEstatus.DataBinding.DataSource.DataSet.FieldByName('iIdEstatus').AsInteger := qryEstatus.FieldByName('iIdEstatus').AsInteger;
    zQempleados.FieldValues['iIdEstatus'] :=  cxEstatus.DataBinding.DataSource.DataSet.FieldByName('iIdEstatus').AsInteger;
  end;

  if zqHorarioslab.RecordCount > 0 then
  begin
    cxHorario.DataBinding.DataSource.DataSet.FieldByName('iIdhorario').AsInteger := zqHorarioslab.FieldValues['iIdhorario'];
    zQEmpleados.FieldValues['iIdhorario'] := cxHorario.DataBinding.DataSource.DataSet.FieldByName('iIdhorario').AsInteger ;
  end;

  if zqPeriodo.RecordCount > 0 then
  begin
    cxDiaDescanso.DataBinding.DataSource.DataSet.FieldByName('iIdPeriodo').AsInteger := zqperiodo.FieldValues['iIdPeriodo'];
    zQEmpleados.FieldValues['iIdPeriodo'] := cxDiaDescanso.DataBinding.DataSource.DataSet.FieldByName('iIdPeriodo').AsInteger;
  end;

  EditarSN := False;
  cxSexo.ItemIndex := 1;

  if cxSexo.Text =  'FEMENINO' then
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture)
  else
    bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture);

  sValidaID   := '';
  sValidaRFC  := '';
  sValidaCURP := '';
  sValidaNSS  := '';
  cxIdEmpleado.Enabled:=true;

  if zQEmpleados.FieldByName('sIdEmpleado').AsString = '' then
     cxIdEmpleado.SetFocus
  else
     cxNombreEmpleado.SetFocus;

end;

procedure Tfrm_Empleados.frmBarra1btnCancelClick(Sender: TObject);
begin
  EditarSN:= FALSE;
  EliminarHistoriaAltas := False;
  frmBarra1.btnCancelClick(Sender);
  zqEmpleados.Cancel;
  grid_empleados.Enabled := True;
  cxButMuestra.Caption:= 'Mostrar';
  grid_empleados.SetFocus;
  IdEmpleadoAnt := '';
  cxTipoPersonal.Enabled:=True;
  IsOpen:=true;

end;

procedure Tfrm_Empleados.frmBarra1btnDeleteClick(Sender: TObject);
var
  Id, mov : String;

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
      global_movimiento := 'Eliminó';
      mov:= 'Se realizó la eliminación del postulante con ficha No. [' + dszQEmpleados.DataSet.FieldByName('sIdEmpleado').AsString + ']';
      kardex_almacen(mov, global_movimiento);
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end;
end;

procedure Tfrm_Empleados.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQEmpleados.RecordCount > 0 then
  begin
    IsOpen:=false;
    IdEmpleadoAnt   := cxIdEmpleado.Text;
    EstatusEmpleado := cxEstatus.Text;
    grid_empleados.Enabled := False;
    global_movimiento         := 'Modificó';
    zQEmpleados.Edit;

    EditarSN := TRUE;

    if zQEmpleados.FieldByName('sStatusTipoPersonal').AsString='A bordo' then
    begin
      connection.QryBusca.Active:=False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT sIdEmpleado FROM guardiasmovtos WHERE sIdEmpleado = :Id');
      connection.QryBusca.ParamByName('Id').AsString := cxIdEmpleado.Text;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
      begin
        if zQEmpleados.FieldByName('sStatusPersonal').AsString='Contratado' then
        begin
          cxIdEmpleado.Enabled:=False;
          cxTipoPersonal.Enabled:=False;
        end;
      end;
    end;

    if zq_registrospatronales.RecordCount > 0 then
    begin
        zq_registrospatronales.First;
        cxRegistroPatronal.DataBinding.DataSource.DataSet.FieldByName('iIdRegistroPatronal').AsInteger := zq_registrospatronales.FieldByName('iIdRegistroPatronal').AsInteger;
    end;

    sValidaID   := cxIdEmpleado.Text;
    sValidaRFC  := cxrfc.Text;
    sValidaCURP := cxcurp.Text;
    sValidaNSS  := cxnss.Text;

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
  mov        : String;
begin
 // try
    if (zQEmpleados.State in [dsInsert]) or (zQEmpleados.State in [dsEdit]) then
      zQEmpleados.FieldByName('lSexo').AsString := cxSexo.Text;

    scanTable:=false;
    frmbarra1.btnPost.setfocus;
    Query := TZQuery.Create(Self);
    Query.Connection := connection.ZConnection;
    Aplica:='';

    if Length(cxClabe.Text) <> 18 then
    begin
      if StrToInt64(cxClabe.Text) = 0 then
         cxClabe.Text := '000000000000000000'
      else
      begin
          ShowMessage('El Campo de la clave interbancaria debe llevar  18 dígitos');
          cxClabe.SetFocus;
          Exit;
      end;
    end;

    nombres := TStringList.Create;
    cadenas := TStringList.Create;
    nombres.Add('Departamento'); cadenas.Add(cxDepartamento.Text);
    nombres.Add('Estatus'); cadenas.Add(cxEstatus.Text);
    nombres.Add('Puesto');  cadenas.Add(cxCategoria.Text);

    if not validaTexto(nombres, cadenas, 'Empleados', cxIdEmpleado.Text) then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        cxPage.ActivePageIndex := 1;
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

    cxButMuestra.Enabled := True;

    try
    {$REGION 'Historial de ALTAS/BAJAS'}
    if zQEmpleados.State <> dsInsert then
    begin
      if EliminarHistoriaAltas = False then
      begin
        if cxEstatus.Text <> EstatusEmpleado  then
        begin
          if zQEmpleados.State = dsEdit then

        end;
      end;
    end;
    {$ENDREGION}
    Except
    end;

    zQEmpleados.FieldValues['idorganizacion']         := cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger;
    //zQEmpleados.FieldValues['iddepartamento']         := tsIdDepartamento.KeyValue;
    zQEmpleados.FieldValues['iId_Puesto']             := cxCategoria.DataBinding.DataSource.DataSet.FieldByName('iId_Puesto').AsInteger;
    zQEmpleados.FieldValues['iIdEstatus']             := cxEstatus.DataBinding.DataSource.DataSet.FieldByName('iIdEstatus').AsInteger;;
    zQEmpleados.FieldValues['id_entidadeseducativas'] := cxEscuela.DataBinding.DataSource.DataSet.FieldByName('id_entidadeseducativas').AsInteger;
    zQEmpleados.FieldValues['iIdProfesiones']         := cxProfesion.DataBinding.DataSource.DataSet.FieldByName('iIdProfesiones').AsInteger;
    zQEmpleados.FieldValues['iIdhorario']             := cxHorario.DataBinding.DataSource.DataSet.FieldByName('iIdhorario').AsInteger;
    zQEmpleados.FieldValues['iIdDiasdescanso']        := cxDiaDescanso.DataBinding.DataSource.DataSet.FieldByName('iIdDiasdescanso').AsInteger;
    zQEmpleados.FieldValues['iIdPeriodo']             := cxNomina.DataBinding.DataSource.DataSet.FieldByName('iIdPeriodo').AsInteger;
    zQEmpleados.FieldValues['departamento']           :='*';
    zQEmpleados.FieldValues['profesion']              :='*';
    zQEmpleados.FieldValues['sCc']                    := CxcentroCosto.Text;
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

    IdEmpleadoAct := cxIdEmpleado.Text;

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
      zQPersonal.FieldByName('TipoInfonavit').AsString:=zQEmpleados.FieldByName('sTipoInfonavit').AsString;
      zQPersonal.FieldByName('CantidadInfonavit').AsFloat:=zQEmpleados.FieldByName('dCantidadInfonavit').AsFloat;
      zQPersonal.FieldByName('fechanacimiento').AsDateTime:=zQEmpleados.FieldByName('dFechaNacimiento').AsDateTime;
      zQPersonal.FieldByName('sexo').AsString:= cxSexo.Text;
      zQPersonal.FieldByName('Colonia').AsString:=zQEmpleados.FieldByName('sColonia').AsString;
      zQPersonal.FieldByName('Municipio').AsString:=zQEmpleados.FieldByName('sLocalidad').AsString;
      zQPersonal.FieldByName('Estado').AsString:=zQEmpleados.FieldByName('sEstado').AsString;
      zQPersonal.FieldByName('Pais').AsString:=cxPais.Text;
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
    IdEmpleadoAct := cxIdEmpleado.Text;
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
    if global_movimiento = 'Insertó' then
      mov:= 'Se realizó la inserción del Empleado No. [' + zQEmpleados.FieldByName('sIdEmpleado').AsString + ']'
    else if global_movimiento = 'Modificó' then
      mov:= 'Se realizó la modificacion del Empleado No. [' + zQEmpleados.FieldByName('sIdEmpleado').AsString + ']';

  kardex_almacen(mov, global_movimiento);


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
procedure Tfrm_Empleados.frxReport1GetValue(const VarName: string;var Value: Variant);
var
  r: integer;
begin

  if varName = 'SueldoLetras' then
     if zqConstanciaSUa.RecordCount > 0 then
        value := UpperCase(LetrasNumeros(zqConstanciaSUa.FieldByName('importe').AsFloat, 'PESOS', '/100 M.N.', 2))
     else
        value  := '';

  if VarName = 'Firma_rh' then
     Value :=  connection.configuracionRecHum.FieldValues['sRepresentante'] ;

  if VarName = 'Puesto_rh' then
     Value :=  '';

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

procedure Tfrm_Empleados.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click;
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

procedure Tfrm_Empleados.PageControl2Change(Sender: TObject);
begin
  if cxPage.ActivePageIndex = 3 then
  begin
    qryHistorialAltasbajas.Active := False;
    qryHistorialAltasbajas.ParamByName('empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
    qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  :=cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger ;
    qryHistorialAltasbajas.Open;
    qryHistorialAltasBajas.Refresh;
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
   qryHistorialAltasBajas.ParamByName('Organizacion').AsInteger  := cxEmpresa.DataBinding.DataSource.DataSet.FieldByName('idOrganizacion').AsInteger ;
   qryHistorialAltasBajas.Open;


  frxReport1.LoadFromFile(global_files + global_miReporte + '_HistorialEmpleados.fr3') ;
  frxReport1.ShowReport();
end;

procedure Tfrm_Empleados.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure Tfrm_Empleados.tsIdEmpleadoEnter(Sender: TObject);
begin

  Cambio_V:=cxIdEmpleado.Text;
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
  if IsOpen then
  begin
    obtenerneto(zQEmpleados.FieldValues['sIdEmpleado']);

    if zqEmpleados.FieldByName('lSexo').AsString = 'MASCULINO' then
      bImagen_.Picture.Assign(PictureContainer1.Items.Items[0].Picture)
    else
      bImagen_.Picture.Assign(PictureContainer1.Items.Items[1].Picture);

    EstatusEmpleado := cxEstatus.Text;

    if cxpage.ActivePageIndex = 3 then
    begin
        zqHistorial.Active := False;
        zqHistorial.ParamByName('empleado').AsString := zqEmpleados.FieldByName('sIdEmpleado').AsString;
        zqHistorial.Open;
    end;

    if cxPage.ActivePageIndex = 0 then
    begin
       if cxPage.ActivePageIndex = 0 then
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
                cxButMuestra.Caption := 'Mostrar';
                bImagen_.Picture.Graphic := Nil;
                if cxSexo.Text =  'FEMENINO' then
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
      FrmContratarWizard.dtpcontratacion.Date:=date;
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

end;

procedure Tfrm_Empleados.LimpiarCompDocumento;

begin

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
  zqHistorial.FieldByName('dFechaInicio').AsDateTime:=date;
  zqHistorial.FieldByName('sTipoContrato').AsString :='TIERRA';
  zqHistorial.FieldByName('sPeriodoLaboral').AsString:='Indefinido';
  zqHistorial.Post;

  zQEmpleados.Refresh;
  ShowMessage('El contrato fue creado con exito');
end;

procedure Tfrm_Empleados.obtenerneto (empleado: Variant);
begin

end;

{$REGION 'PDF'}

procedure Tfrm_Empleados.LoadFileJPEG(sFile: TFilename);
begin
end;

procedure Tfrm_Empleados.LoadFileJPEGPdf(sFile: TFilename;
  var ViewPrintParam: TDebenuPDFLibrary);
begin

end;

procedure Tfrm_Empleados.LoadFilePdf(sFile: TFilename;
  var ViewPrintParam: TDebenuPDFLibrary);
begin

end;


procedure Tfrm_Empleados.RenderPage;

begin

end;

procedure Tfrm_Empleados.MBarra(Qry:TZQuery);
begin



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
    connection.QryBusca.ParamByName('pais').AsString      := cxPais.Text;
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
        connection.QryBusca.SQL.Add('select idDatosBancariosxPersonal from rhu_datosbancariosxpersonal where idPostulante = :Id');
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
            connection.zCommand.ParamByName('idDatos').AsInteger := connection.QryBusca.FieldByName('idDatosBancariosxPersonal').AsInteger;
            connection.zCommand.ExecSQL;
        end
        else
        begin
            //sino existe se crea un registro nuevo..
            connection.QryBusca.Active := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add('select max(idDatosBancariosxPersonal) as maximo from rhu_datosbancariosxpersonal ');
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
        if (cxIdEmpleado.Text <> '*') and (trim(cxIdEmpleado.Text) <> '') then
           if sValidaID <> cxIdEmpleado.Text then
              if connection.QryBusca.Locate('sIdEmpleado', cxIdEmpleado.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('Este Id de Empleado ya existe.', mtInformation,[mbOk],0);
                  cxIdEmpleado.SetFocus;
                  result := True;
              end;
        //RFC del empleado
        if (cxrfc.Text <> '*') and (trim(cxrfc.text) <> '') then
           if sValidaRFC <> cxrfc.Text then
              if connection.QryBusca.Locate('sRfc', cxrfc.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('El RFC del Empleado ya fue dado de alta.', mtInformation,[mbOk],0);
                  cxrfc.SetFocus;
                  result := True;
              end;
        //NSS del empleado
        if (cxnss.Text <> '*') and (trim(cxnss.Text) <> '') then
           if sValidaNSS <> cxnss.Text then
              if connection.QryBusca.Locate('sImss', cxnss.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('El NSS del Empleado ya fue dado de alta.', mtInformation,[mbOk],0);
                  cxnss.SetFocus;
                  result := True;
              end;
        //CURP del empleado
        if (cxcurp.Text <> '*') and (trim(cxcurp.Text) <> '') then
           if sValidaCURP <> cxcurp.Text then
              if connection.QryBusca.Locate('sCurp', cxcurp.Text, [loCaseInsensitive]) then
              begin
                  MessageDlg('El CURP del Empleado ya fue dado de alta.', mtInformation,[mbOk],0);
                  cxcurp.SetFocus;
                  result := True;
              end;
    end;

    connection.QryBusca.Active:=False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select sFicha from rh_postulantes where sFicha = :Id');
    connection.QryBusca.ParamByName('Id').AsString := cxIdEmpleado.Text;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
        MessageDlg('Este número de ficha '+connection.QryBusca.FieldByName('sFicha').AsString+' esta apartado para un postulante.', mtInformation,[mbOk],0);
        cxIdEmpleado.SetFocus;
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
