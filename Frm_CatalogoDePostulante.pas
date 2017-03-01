unit Frm_CatalogoDePostulante;

interface

uses
  Windows, DateUtils, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxPageControl, frm_barra, Grids, DBGrids, ExtCtrls, StdCtrls, Mask,
  DBCtrls, rxToolEdit, RXDBCtrl, AdvSmoothButton, jpeg, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frm_connection, JvExMask, JvToolEdit, JvDBControls,
  JvMemoryDataset, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWGrids, IWDBGrids, global, unittbotonespermisos, unitexcepciones,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, JvExStdCtrls, JvDBCombobox, frxClass, frxDBSet, Buttons,
  Menus, Newpanel, RXCtrls, JvExControls, JvxCheckListBox, CheckLst,
  JvExCheckLst, JvCheckListBox, ComCtrls, RxMemDS, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, 
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxDBLookupComboBox, cxGridLevel, cxGridDBTableView, {dxSkinscxPCPainter, }
  FormAutoScaler, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCalendar, cxDBEdit,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, AdvGlowButton, cxButtons, ExtDlgs, cxImage,
  DBClient, dblookup, dxBarBuiltInMenu, cxPC, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxGroupBox, cxListView,
  cxCheckBox, cxLabel, cxPropertiesStore, PictureContainer, UnitGenerales;

Type
  Evalidaciones = class(Exception)
  end;

type
  TFrmCatalogoDePostulante = class(TForm)
  frmBarra1: TfrmBarra;
  ZqPostulante: TZQuery;
  dsPostulante: TDataSource;
  ZqPostulanteIidPostulante: TIntegerField;
  ZqPostulantesNombreCompleto: TStringField;
  ZqPostulantesRfc: TStringField;
  ZqPostulantesDomicilio: TStringField;
  ZqPostulantesCiudad: TStringField;
  ZqPostulantesTelefono: TStringField;
  ZqPostulanteseMail: TStringField;
  ZqPostulantesCuenta: TStringField;
  ZqPostulantesBanco: TStringField;
  ZqPostulantesCuentaInterbancaria: TStringField;
  ZqPostulantesCurp: TStringField;
  ZqPostulantesImss: TStringField;
  ZqPostulantesEstadoCivil: TStringField;
  ZqPostulantedFechaNacimiento: TDateField;
  ZqPostulantesLibretaMar: TStringField;
  ZqPostulantesCartilla: TStringField;
  ZqPostulantesCedulaProfesional: TStringField;
  ZqPostulantesLugarNacimiento: TStringField;
  ZqPostulantesCarrera: TStringField;
  ZqPostulantesTipoSangre: TStringField;
  ZqPostulantedVigenciaLibreta: TDateField;
  ZqPostulantedVigenciaCertMedico: TDateField;
  ZqPostulantesComentario: TStringField;
  ZqPostulanteIid_NumeroDeCuenta: TIntegerField;
  ZqPostulanteiEdad: TIntegerField;
  ZqPostulantelSexo: TStringField;
  ZqPostulanteLbImagen: TBlobField;
  ZqPostulanteSActivo: TStringField;
  ZQDocxPostulante: TZQuery;
  DsDocxPostulante: TDataSource;
  ZqDocumentos: TZQuery;
  ZqDocumentosIidDocumento: TIntegerField;
  ZqDocumentosSNombreDocumento: TStringField;
  ZqDocumentosSDescripcion: TMemoField;
  ZqDocumentosSActivo: TStringField;
  ZqDocumentosSTipo: TStringField;
  MemDocumentos1: TJvMemoryData;
  ZQDocxPostulantedFechaAltaDoc: TDateField;
  ZQDocxPostulanteDFechaExpedicion: TDateField;
  ZQDocxPostulanteDFechaVigencia: TDateField;
  ZQDocxPostulanteIidDocumento: TIntegerField;
  ZQDocxPostulanteIidDocxPostulante: TIntegerField;
  ZQDocxPostulanteIidPostulante: TIntegerField;
  ZQDocxPostulantesActivo: TStringField;
  ZQDocxPostulantesNombreArchivo: TStringField;
  ZQDocxPostulanteSNombreDocumento: TStringField;
  ZQCargarImagen: TZQuery;
  ZQCargarImagenLbImagen: TBlobField;
  DsMemDocumentos1: TDataSource;
  zqryBancos: TZQuery;
  ds_Bancos: TDataSource;
  zqryBancosidbanco: TIntegerField;
  zqryBancosnombre: TStringField;
  zqryBancosactivo: TStringField;
  qryRequisicionPersonal: TZQuery;
  ds_RequisiciondePersonal: TDataSource;
  zqryMovtosRP: TZQuery;
  ds_RP: TDataSource;
  zqryMovtosRPidMovtosRequisiciondePersonal: TIntegerField;
  zqryMovtosRPIdRequisicionPersonal: TIntegerField;
  zqryMovtosRPIidPostulante: TIntegerField;
  Panel_Postulantes: TPanel;
  Postulantes: TZQuery;
  IntegerField1: TIntegerField;
  StringField1: TStringField;
  StringField22: TStringField;
  ZqPostulantesFicha: TStringField;
  zqryMovtosRPsNombreCompleto: TStringField;
  zqryMovtosRPsRfc: TStringField;
  zqryMovtosRPsDomicilio: TStringField;
  zqryMovtosRPsCiudad: TStringField;
  zqryMovtosRPsTelefono: TStringField;
  zqryMovtosRPseMail: TStringField;
  zqryMovtosRPsCuenta: TStringField;
  zqryMovtosRPsBanco: TStringField;
  zqryMovtosRPsCuentaInterbancaria: TStringField;
  zqryMovtosRPsCurp: TStringField;
  zqryMovtosRPsImss: TStringField;
  zqryMovtosRPsEstadoCivil: TStringField;
  zqryMovtosRPdFechaNacimiento: TDateField;
  zqryMovtosRPsLibretaMar: TStringField;
  zqryMovtosRPsCartilla: TStringField;
  zqryMovtosRPsCedulaProfesional: TStringField;
  zqryMovtosRPsLugarNacimiento: TStringField;
  zqryMovtosRPsCarrera: TStringField;
  zqryMovtosRPsTipoSangre: TStringField;
  zqryMovtosRPdVigenciaLibreta: TDateField;
  zqryMovtosRPdVigenciaCertMedico: TDateField;
  zqryMovtosRPsComentario: TStringField;
  zqryMovtosRPIid_NumeroDeCuenta: TIntegerField;
  zqryMovtosRPiEdad: TIntegerField;
  zqryMovtosRPlSexo: TStringField;
  zqryMovtosRPLbImagen: TBlobField;
  zqryMovtosRPsActivo: TStringField;
  zqryMovtosRPsFicha: TStringField;
  ZqPostulanteiId_Puesto: TIntegerField;
  ZqPostulantesApellidoP: TStringField;
  ZqPostulantesApellidoM: TStringField;
  frxReport1: TfrxReport;
  frx_ReporteEmpleados: TfrxDBDataset;
  frxDBConfiguracion: TfrxDBDataset;
  zqConfiguracion: TZQuery;
  zqConfiguracionsNombre: TStringField;
  zqConfiguracionsNombreCorto: TStringField;
  zqConfiguracionsRfc: TStringField;
  zqConfiguracionsDireccion1: TStringField;
  zqConfiguracionsDireccion2: TStringField;
  zqConfiguracionsDireccion3: TStringField;
  zqConfiguracionsSlogan: TStringField;
  zqConfiguracionsPiePagina: TStringField;
  zqConfiguracionbImagen: TBlobField;
  zqConfiguracionsTelefono: TStringField;
  zqConfiguracionsFax: TStringField;
  zqConfiguracionsEmail: TStringField;
  zqConfiguracionsWeb: TStringField;
  zqConfiguracionsRepresentante: TStringField;
  zqConfiguracionsFirmante2: TStringField;
  zqConfiguracionsFirmante3: TStringField;
  zqConfiguracionsCiudad: TStringField;
  zqConfiguracionbLogoFondo: TBlobField;
  zqConfiguracionbImagenCliente: TBlobField;
  ZqPostulantepuesto: TStringField;
  PopupMenu1: TPopupMenu;
  Imprimircartaresponsiva1: TMenuItem;
  dsContratacion: TfrxDBDataset;
  zqContratacion: TZQuery;
  ds_Contratacion: TDataSource;
  zqContratacionidMovtosRequisiciondePersonal: TIntegerField;
  zqContratacionIdRequisicionPersonal: TIntegerField;
  zqContratacionIidPostulante: TIntegerField;
  zqContratacionsNombreCompleto: TStringField;
  zqContratacionsApellidoP: TStringField;
  zqContratacionsApellidoM: TStringField;
  zqContrataciondSueldo: TFloatField;
  zqContratacionsPuesto: TStringField;
  zqContratacionsPuestoSolicita: TStringField;
  zqContratacionsNombreSolicitante: TStringField;
  zqContratacionsVobo: TStringField;
  zqContratacionsAutoriza: TStringField;
  zqContratacionsDescripcion: TStringField;
  qryFlPuestos: TZReadOnlyQuery;
  ds_flPuestos: TDataSource;
  qryFlPuestosiId_Puesto: TLargeintField;
  qryFlPuestossPuesto: TStringField;
  qryFlPuestossDescripcion: TStringField;
  qryFlPuestosdSueldo: TFloatField;
  zqryItemsDoctos: TZReadOnlyQuery;
  ds_ItemsDoctos: TDataSource;
  zqryMovtosRPsApellidoP: TStringField;
  zqryMovtosRPsApellidoM: TStringField;
  rx_documentos: TRxMemoryData;
  ds_documentos: TDataSource;
  rx_documentosIdDocto: TIntegerField;
  rx_documentossDescripcion: TStringField;
  rx_documentosestatus: TStringField;
  PopupMenu2: TPopupMenu;
  doc: TMenuItem;
  frx_documentos: TfrxDBDataset;
  PopupMenu3: TPopupMenu;
  RxListAsisCurso: TRxMemoryData;
  frxListAsisCurso: TfrxDBDataset;
  RxListAsisCursoIidPostulante: TIntegerField;
  RxListAsisCursosNombreCompleto: TStringField;
  RxListAsisCursosCurp: TStringField;
  RxListAsisCursosApellidoP: TStringField;
  RxListAsisCursosApellidoM: TStringField;
  qryListAsistCurso: TZQuery;
  qryListAsistCursoIidPostulante: TIntegerField;
  qryListAsistCursosNombreCompleto: TStringField;
  qryListAsistCursosCurp: TStringField;
  qryListAsistCursosApellidoP: TStringField;
  qryListAsistCursosApellidoM: TStringField;
  qryListAsistCursosPuesto: TStringField;
  RxListAsisCursosPuesto: TStringField;
  SolicituddeEmpleo: TMenuItem;
  RxListAsisCursosTelefono: TStringField;
  qryListAsistCursosTelefono: TStringField;
  zqNacionalidad: TZQuery;
  ds_nacionalidad: TDataSource;
  zqryMovtosRPiIdNacionalidad: TIntegerField;
  zqNacionalidadiIdNacionalidad: TIntegerField;
  ZqPostulanteiIdNacionalidad: TIntegerField;
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
  zQPersonalciudadnacimiento: TStringField;
  zQPersonalInfonavit: TStringField;
  zQPersonalNumeroInfonavit: TStringField;
  zQPersonalFactorInfonavit: TFloatField;
  zQPersonalestadonacimiento: TStringField;
  zQPersonaldelegacion: TStringField;
  zQPersonalfechanacimiento: TDateField;
  zQPersonalnombremadre: TStringField;
  zQPersonalnombrepadre: TStringField;
  zQPersonalsexo: TStringField;
  zQPersonalEstadoCivil: TStringField;
  zQPersonalidcargo: TIntegerField;
  zqConfiguracioneNomina: TStringField;
  ds_HistorialAltasBajas: TDataSource;
  qryHistorialAltasBajas: TZQuery;
  qryHistorialAltasBajasiId_historialaltasbajas: TIntegerField;
  qryHistorialAltasBajassIdEmpleado: TStringField;
  qryHistorialAltasBajassTipo: TStringField;
  qryHistorialAltasBajasdFecha: TDateField;
  ZqPostulantesStatusTipoPersonal: TStringField;
  zqryMovtosRPsStatusTipoPersonal: TStringField;
  zqryMovtosRPiId_Puesto: TIntegerField;
  dsZQTipoPersonal: TDataSource;
  ZQTipoPersonal: TZQuery;
  ZQTipoPersonaliIdTipo: TIntegerField;
  ZQTipoPersonalsDescripcion: TStringField;
  ZqPostulantesTipoPersonal: TIntegerField;
  zq_Puestos: TZQuery;
  ds_Puestos: TDataSource;
  cxGridViewRepository1: TcxGridViewRepository;
  BView_Puestos: TcxGridDBBandedTableView;
  BView_PuestossPuesto1: TcxGridDBBandedColumn;
  BView_PuestossDescripcion1: TcxGridDBBandedColumn;
  BView_PuestosDescripcion1: TcxGridDBBandedColumn;
  BView_Requisicion: TcxGridDBBandedTableView;
  BView_RequisicionIdRequisicionPersonal1: TcxGridDBBandedColumn;
  BView_RequisicionsNombreSolicitante1: TcxGridDBBandedColumn;
  BView_RequisicionsPuestoSolicita1: TcxGridDBBandedColumn;
  BView_RequisicioniCantidadPersonas1: TcxGridDBBandedColumn;
  BView_RequisicionsDescripcionActividades1: TcxGridDBBandedColumn;
  BView_RequisicionsRequerimientos1: TcxGridDBBandedColumn;
  BView_RequisicionsNombreJefe1: TcxGridDBBandedColumn;
  BView_RequisicionsUbicacionCentroTrabajo1: TcxGridDBBandedColumn;
  BView_RequisicionsVobo1: TcxGridDBBandedColumn;
  BView_RequisicionsAutoriza1: TcxGridDBBandedColumn;
  BView_RequisicionsIdTurno1: TcxGridDBBandedColumn;
  BView_RequisicionsStatus1: TcxGridDBBandedColumn;
  BView_RequisicioniId_Puesto1: TcxGridDBBandedColumn;
  BView_RequisiciondFecha1: TcxGridDBBandedColumn;
  BView_RequisicionsTipoPersonal1: TcxGridDBBandedColumn;
  BView_RequisicionsDescripcion1: TcxGridDBBandedColumn;
  BView_RequisicionDescripcion1: TcxGridDBBandedColumn;
    zqryMovtosRPsPuesto: TStringField;
    dbTabla: TcxGridDBTableView;
    grid_PostulantesLevel1: TcxGridLevel;
    grid_Postulantes: TcxGrid;
    dbTablaColumn1: TcxGridDBColumn;
    dbTablaColumn2: TcxGridDBColumn;
    dbTablaColumn3: TcxGridDBColumn;
    dbTablaColumn4: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    QrCargos: TZReadOnlyQuery;
    DsCargos: TDataSource;
    zqHistorial: TZQuery;
    zqHistorialiIdContrato: TIntegerField;
    zqHistorialsIdEmpleado: TStringField;
    zqHistorialdFechaInicio: TDateField;
    zqHistorialdFechaTermino: TDateField;
    zqHistorialsTipoContrato: TStringField;
    zqHistorialsPeriodoLaboral: TStringField;
    zqHistorialsIdGuardia: TStringField;
    ds_historialcontrato: TDataSource;
    fsc_AfrmEmpleado_AfrmPostulante: TFormAutoScaler;
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
    zq_PuestosDescripcion: TStringField;
    ZqPostulanteProcesado: TStringField;
    zqNacionalidadNacionalidad: TStringField;
    qryRequisicionPersonalIdRequisicionPersonal: TIntegerField;
    qryRequisicionPersonalsNombreSolicitante: TStringField;
    qryRequisicionPersonalsPuestoSolicita: TStringField;
    qryRequisicionPersonaliCantidadPersonas: TIntegerField;
    qryRequisicionPersonalsDescripcionActividades: TStringField;
    qryRequisicionPersonalsRequerimientos: TStringField;
    qryRequisicionPersonalsNombreJefe: TStringField;
    qryRequisicionPersonalsUbicacionCentroTrabajo: TStringField;
    qryRequisicionPersonalsVobo: TStringField;
    qryRequisicionPersonalsAutoriza: TStringField;
    qryRequisicionPersonalsIdTurno: TStringField;
    qryRequisicionPersonalsStatus: TStringField;
    qryRequisicionPersonaliId_Puesto: TIntegerField;
    qryRequisicionPersonalsTipoPersonal: TIntegerField;
    qryRequisicionPersonaldFecha: TDateField;
    qryRequisicionPersonalsDescripcion: TStringField;
    qryRequisicionPersonalDescripcion: TStringField;
    ZqPostulantedSueldoPactado: TFloatField;
    ZqPostulantesAutorizaSueldo: TStringField;
    ZqPostulantesSolicitaSueldo: TStringField;
    OpenDialog1: TOpenDialog;
    dlgOpenPicAspirante: TOpenPictureDialog;
    SActivo: TcxGridDBColumn;
    dbTablaColumn5: TcxGridDBColumn;
    estilo_color: TcxStyleRepository;
    salida: TcxStyle;
    zqryMovtosRPdSueldoPactado: TFloatField;
    entrada: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxPageControl2: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    tsFicha: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    dbTipoPersonal: TcxDBLookupComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    dbPuesto: TcxDBExtLookupComboBox;
    dxLayoutControl3Item3: TdxLayoutItem;
    btnTipoPuesto: TcxButton;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    tsNombre: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    tsPaterno: TcxDBTextEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    tsMaterno: TcxDBTextEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    tsDomicilio: TcxDBTextEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    tsCiudad: TcxDBTextEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    LNACIMIENTO: TcxDBTextEdit;
    dxLayoutControl4Item6: TdxLayoutItem;
    tsTelefono: TcxDBTextEdit;
    dxLayoutControl4Item7: TdxLayoutItem;
    Nacionalidad: TcxDBLookupComboBox;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutAutoCreatedGroup;
    NACIMIENTO: TcxDBDateEdit;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutAutoCreatedGroup;
    dblSexo: TcxDBComboBox;
    dxLayoutControl4Item10: TdxLayoutItem;
    dbedtiEdad: TcxDBTextEdit;
    dxLayoutControl4Item11: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    CARRERA: TcxDBTextEdit;
    dxLayoutControl5Item1: TdxLayoutItem;
    CEDULA: TcxDBTextEdit;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    BANCO: TcxDBTextEdit;
    dxLayoutControl6Item1: TdxLayoutItem;
    CUENTA: TcxDBTextEdit;
    dxLayoutControl6Item2: TdxLayoutItem;
    INTERBANCARIA: TcxDBTextEdit;
    dxLayoutControl6Item3: TdxLayoutItem;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    CURP: TcxDBTextEdit;
    dxLayoutControl7Item1: TdxLayoutItem;
    RFC: TcxDBTextEdit;
    dxLayoutControl7Item2: TdxLayoutItem;
    ESTADOCIV: TcxDBComboBox;
    dxLayoutControl7Item3: TdxLayoutItem;
    tsTipoSangre: TcxDBTextEdit;
    dxLayoutControl7Item4: TdxLayoutItem;
    IMSS: TcxDBTextEdit;
    dxLayoutControl7Item5: TdxLayoutItem;
    MAIL: TcxDBTextEdit;
    dxLayoutControl7Item6: TdxLayoutItem;
    TipoPersonal: TcxDBComboBox;
    dxLayoutControl7Item7: TdxLayoutItem;
    dxLayoutControl7Group1: TdxLayoutAutoCreatedGroup;
    tsSueldoPactado: TcxDBTextEdit;
    dxLayoutControl7Item8: TdxLayoutItem;
    tsAutorizaSueldo: TcxDBTextEdit;
    dxLayoutControl7Item9: TdxLayoutItem;
    tsSolicitaSueldo: TcxDBTextEdit;
    dxLayoutControl7Item10: TdxLayoutItem;
    dxLayoutControl7Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl7Group3: TdxLayoutAutoCreatedGroup;
    CxDbImageAspirante: TcxDBImage;
    dxLayoutControl4Item12: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    ListView1: TcxListView;
    dxLayoutControl8Item1: TdxLayoutItem;
    PanelMovtosRP: TPanel;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    tsPuesto: TcxDBTextEdit;
    dxLayoutControl9Item3: TdxLayoutItem;
    cbNumeroRequisicion: TcxExtLookupComboBox;
    dxLayoutControl9Item1: TdxLayoutItem;
    chkFiltro: TcxCheckBox;
    dxLayoutControl9Item2: TdxLayoutItem;
    lblRP: TcxLabel;
    dxLayoutControl9Item4: TdxLayoutItem;
    lblMovtosRP: TcxLabel;
    dxLayoutControl9Item5: TdxLayoutItem;
    lblRestantes: TcxLabel;
    dxLayoutControl9Item6: TdxLayoutItem;
    grid_movtosRPDBTableView1: TcxGridDBTableView;
    grid_movtosRPLevel1: TcxGridLevel;
    grid_movtosRP: TcxGrid;
    dxLayoutControl9Item7: TdxLayoutItem;
    Button1: TcxButton;
    dxLayoutControl9Item8: TdxLayoutItem;
    Button2: TcxButton;
    dxLayoutControl9Item9: TdxLayoutItem;
    dxLayoutControl9Group6: TdxLayoutAutoCreatedGroup;
    dxLayoutControl9Group2: TdxLayoutAutoCreatedGroup;
    grid_movtosRPDBTableView1Column1: TcxGridDBColumn;
    grid_movtosRPDBTableView1Column2: TcxGridDBColumn;
    grid_movtosRPDBTableView1Column3: TcxGridDBColumn;
    grid_movtosRPDBTableView1Column4: TcxGridDBColumn;
    grid_movtosRPDBTableView1Column5: TcxGridDBColumn;
    cmdContratar: TcxButton;
    dxLayoutControl9Item10: TdxLayoutItem;
    dxLayoutControl9Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl9Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl9Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl9Group5: TdxLayoutAutoCreatedGroup;
    cxPropertiesStore1: TcxPropertiesStore;
    z: TcxTextEdit;
    dxLayoutControl9Item11: TdxLayoutItem;
    PictureContainer1: TPictureContainer;
  procedure FormShow(Sender: TObject);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure ZqPostulanteAfterScroll(DataSet: TDataSet);
  procedure FormCreate(Sender: TObject);
  procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
  procedure frmBarra4btnAddClick(Sender: TObject);
  procedure frmBarra4btnCancelClick(Sender: TObject);
  procedure Button1Click(Sender: TObject);
  procedure Button2Click(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure cmdContratarClick(Sender: TObject);
  procedure frmBarra1btnPrinterClick(Sender: TObject);
  procedure chkFiltroClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure ZqPostulanteCalcFields(DataSet: TDataSet);
  procedure Imprimircartaresponsiva1Click(Sender: TObject);
  procedure FiltroEmpleadoKeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  procedure cbflPuestosClick(Sender: TObject);
  procedure tsItemsDoctosClick(Sender: TObject);
  //procedure llenaGrid (Registros : TzReadOnlyQuery);
  procedure NXListaChange(Sender: TObject; ACol, ARow: Integer);
  procedure ListView1Change(Sender: TObject; Item: TListItem;
    Change: TItemChange);
  procedure tsFichaKeyPress(Sender: TObject; var Key: Char);
  procedure dbTipoPersonalKeyPress(Sender: TObject; var Key: Char);
  procedure dbPuestoKeyPress(Sender: TObject; var Key: Char);
  procedure tsPaternoKeyPress(Sender: TObject; var Key: Char);
  procedure tsMaternoKeyPress(Sender: TObject; var Key: Char);
  procedure tsDomicilioKeyPress(Sender: TObject; var Key: Char);
  procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
  procedure LNACIMIENTOKeyPress(Sender: TObject; var Key: Char);
  procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
  procedure NACIONALIDADKeyPress(Sender: TObject; var Key: Char);
  procedure NACIMIENTOKeyPress(Sender: TObject; var Key: Char);
  procedure dblSexoKeyPress(Sender: TObject; var Key: Char);
  procedure dbedtiEdadKeyPress(Sender: TObject; var Key: Char);
  procedure CARRERAKeyPress(Sender: TObject; var Key: Char);
  procedure CEDULAKeyPress(Sender: TObject; var Key: Char);
  procedure BANCOKeyPress(Sender: TObject; var Key: Char);
  procedure CUENTAKeyPress(Sender: TObject; var Key: Char);
  procedure INTERBANCARIAKeyPress(Sender: TObject; var Key: Char);
  procedure CURPKeyPress(Sender: TObject; var Key: Char);
  procedure RFCKeyPress(Sender: TObject; var Key: Char);
  procedure sLibretaMarKeyPress(Sender: TObject; var Key: Char);
  procedure ESTADOCIVKeyPress(Sender: TObject; var Key: Char);
  procedure tsTipoSangreKeyPress(Sender: TObject; var Key: Char);
  procedure IMSSKeyPress(Sender: TObject; var Key: Char);
  procedure ZqPostulanteAfterInsert(DataSet: TDataSet);
  procedure docClick(Sender: TObject);
  procedure SolicituddeEmpleoClick(Sender: TObject);
  procedure GenerarReporte(Reporte: String);
  procedure MAILKeyPress(Sender: TObject; var Key: Char);
  procedure actualizar;
  procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure cbNumeroRequisicionPropertiesCloseUp(Sender: TObject);
    procedure NACIMIENTOPropertiesCloseUp(Sender: TObject);
    procedure CmdDetalleNacionalidadesClick(Sender: TObject);
    procedure CxDbImageAspiranteDblClick(Sender: TObject);
    procedure tsSueldoPactadoKeyPress(Sender: TObject; var Key: Char);
    procedure ZqPostulanteAfterOpen(DataSet: TDataSet);
    procedure btnTipoPuestoClick(Sender: TObject);
    procedure TipoPersonalKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure EnterControl(Sender: TObject);
      procedure SalidaControl(Sender: TObject);
    procedure NACIMIENTOExit(Sender: TObject);
   // procedure PanelMovtosRPClick(Sender: TObject);
private
  { Private declarations }
  RutaImagen: string;
  Endshow : Boolean;
  EndSave : Boolean;
public
  { Public declarations }
end;
//
var
  FrmCatalogoDePostulante: TFrmCatalogoDePostulante;
  botonpermiso: tbotonespermisos;
  Restan : Integer;
  todos : Boolean;
implementation
uses UTFrmContratarWizard,
  Utilerias, Func_Genericas,
  frm_catalogonacionalidades,
  frmcatalogodepuestos,
  frmtipopersonal, frm_inteligent, frm_empleados;

{$R *.dfm}
procedure TFrmCatalogoDePostulante.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TFrmCatalogoDePostulante.EnterControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_entradaERP;


    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDBExtLookupComboBox) then
        tcxDBExtLookupComboBox(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_entradaERP;
end;

procedure TFrmCatalogoDePostulante.SalidaControl(Sender: TObject);
begin
    if (sender is tcxDBTextEdit) then
        tcxDBTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDBDateEdit) then
        tcxDBDateEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMaskEdit) then
        tcxDBMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBMemo) then
        tcxDBMemo(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBLookupComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxDBExtLookupComboBox) then
        tcxDBExtLookupComboBox(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxComboBox) then
        tcxDBLookupComboBox(sender).Style.Color := global_color_SalidaERP;
end;


function YearOf(const AValue: TDateTime): Word;
var
  LMonth, LDay: Word;
begin
  DecodeDate(AValue, Result, LMonth, LDay);
end;

procedure TFrmCatalogoDePostulante.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then cuenta.Setfocus;
end;

procedure TFrmCatalogoDePostulante.btnTipoPuestoClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CatalogoDePuestos, frm_CatalogoDePuestos);
  frm_CatalogoDePuestos.Showmodal;
end;

procedure TFrmCatalogoDePostulante.Button1Click(Sender: TObject);
var
  QryBusca, Query : tzquery;
  Aux : Integer;
begin
  if zqPostulante.FieldValues['sActivo'] = 'Si' then
  begin
      messageDLG('No se puede asignar, el Postulante ya fue contratado!', mtInformation, [mbOk], 0);
      exit;
  end;

  qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.EditValue,[]);
  if qryRequisicionPersonal.FieldByName('iId_Puesto').AsInteger <> ZqPostulante.fieldbyname('iId_Puesto').asinteger  then
  begin
    msg_w('El puesto del personal es incorrecto, por favor seleccione al empleado correcto');
    abort;
  end;
  if restan = 0 then
  begin
    msg_ok('No se puede Asignar mas personal a la Requisición!');
    exit;
  end;
  Aux:=0;
  try
    if ZqPostulante.RecordCount > 0 then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(idMovtosRequisiciondePersonal) AS id FROM rh_movtosrequisicionpersonal;');
      connection.QryBusca.Open;
      if connection.QryBusca.FieldValues['Id'] = null then
        begin
          Aux := 1;
        end
      else
      begin
        Aux := connection.QryBusca.FieldValues['Id'] + 1;
      end;
      Query := TZQuery.Create(Self);
      Query.Connection := connection.ZConnection;
      Query.Active := False;
      Query.SQL.Clear;
      Query.SQL.Add('INSERT INTO rh_movtosrequisicionpersonal (idMovtosRequisiciondePersonal, IdRequisicionPersonal, IidPostulante) ');
      Query.SQL.Add('VALUES ( :Idmovtos , :idRp, :IdPostulante)');
      Query.ParamByName('Idmovtos').AsInteger     := Aux;
      Query.ParamByName('idRp').AsInteger         := qryRequisicionPersonal.FieldByName('IdRequisicionPersonal').AsInteger;
      Query.ParamByName('IdPostulante').AsInteger := ZqPostulante.FieldByName('IidPostulante').AsInteger;
      Query.ExecSQL;
      Query.Destroy;

      ZqPostulante.Edit;
      ZqPostulante.FieldValues['sActivo'] := 'Si';
      ZqPostulante.Post;

      actualizar;
    end;
  except
    on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do
    begin
      msg_er('Ocurrio un error al INSERTAR, intentelo nuevamente mas tarde.');
      frmBarra1.btnCancelClick(Sender);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.Button2Click(Sender: TObject);
var
  QryBusca, Query : tzquery;
begin
  try
    if zqryMovtosRP.RecordCount > 0 then
    begin
      //iniciatransaccion;
      Query := TZQuery.Create(Self);
      Query.Connection := connection.ZConnection;
      Query.Active := False;
      Query.SQL.Clear;
      Query.SQL.Add('UPDATE rh_postulantes SET sActivo = "No" where IidPostulante = :IdPostulante');
      Query.Params.ParamByName('IdPostulante').AsInteger := zqryMovtosRP.FieldByName('IidPostulante').AsInteger;
      Query.ExecSQL;

      Query.SQL.Clear;
      Query.SQL.Text := 'DELETE FROM rh_movtosrequisicionpersonal WHERE IdRequisicionPersonal = :idRp and IidPostulante = :idPostulante';
      Query.Params.ParamByName('idRp').AsInteger := zqryMovtosRP.FieldByName('IdRequisicionPersonal').AsInteger;
      Query.Params.ParamByName('idPostulante').AsInteger := zqryMovtosRP.FieldByName('IidPostulante').AsInteger;
      Query.ExecSQL;
      actualizar;
      //zqPostulante.refresh;
      //zqryMovtosRP.Refresh;

      (*qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.EditValue,[]); //Para posicionar en el registro correcto
      connection.QryBusca.Active:=False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select COUNT(IdRequisicionPersonal) as Procesados from rh_movtosrequisicionpersonal where IdRequisicionPersonal = :Id');
      connection.QryBusca.ParamByName('Id').AsInteger := cbNumeroRequisicion.EditValue;
      connection.QryBusca.Open;

      lblRP.Caption := 'No. Personas Requeridas: ' + intToStr(qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger);
      lblMovtosRP.Caption := 'No. Personas Asignadas: ' + intToStr((zqryMovtosRP.RecordCount+connection.QryBusca.FieldByName('Procesados').AsInteger));

      if connection.QryBusca.FieldByName('Procesados').AsInteger = 0 then
        Restan := qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger - zqryMovtosRP.RecordCount
      else
        Restan := ((qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger) - (zqryMovtosRP.RecordCount) - (connection.QryBusca.FieldByName('Procesados').AsInteger));
      lblRestantes.Caption := 'FALTANTES: ' + intToStr(Restan);
      //Restan := qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger - zqryMovtosRP.RecordCount;
      lblRestantes.Caption := 'FALTANTES: ' + intToStr(Restan);   *)
    end;
  except
    on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do
    begin
      ShowMessage('Ocurrio un error al Eliminar, intentelo nuevamente mas tarde.' + E.Message);
      //cancelatransaccion;
      frmBarra1.btnCancelClick(Sender);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.CARRERAKeyPress(Sender: TObject;
var Key: Char);
begin
  if Key = #13 then cedula.Setfocus;
end;

procedure TFrmCatalogoDePostulante.cmdContratarClick(Sender: TObject);
var
  QryBusca, Query, xPostulantes: tzquery;
  aa, mm, dd:Word;
  fechanac, status:string;
  grabar:Boolean;
  Grabados, IdEstatus :Integer;
begin
  if zqryMovtosRP.Active then
  try
    Grabar := false;
    if zqryMovtosRP.RecordCount > 0 then
    begin
      qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.EditValue,[]); //Para posicionar en el registro correcto
      connection.QryBusca.Active:=False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select COUNT(IdRequisicionPersonal) as Procesados from rh_movtosrequisicionpersonal where IdRequisicionPersonal = :Id');
      connection.QryBusca.ParamByName('Id').AsInteger := StrToInt(cbNumeroRequisicion.EditValue);
      connection.QryBusca.Open;

      //if (restan = 0) or (connection.QryBusca.FieldByName('Procesados').AsInteger = restan) then
      if qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger >= connection.QryBusca.FieldByName('Procesados').AsInteger then
      begin
        Grabados:=0;
        //----------------------------+++++++++++++++++++++++ RECORREMOS LOS MOVIMIENTOS DE LA REQUISICION DE PERSONAL Y INSERTAMOS EN LA TABLA
        //DE EMPLEADOS UN EMPLEADO POR CADA POSTULANTE DE LA REQUISICION
        Query := TZQuery.Create(Self);
        Query.Connection := connection.ZConnection;
        //Se crea y se asigna el conneccion al tzquery que actulizara el postulante
        xPostulantes := TZQuery.Create(Self);
        xPostulantes.Connection := connection.ZConnection;
        zqryMovtosRP.First;

        //Buscamos si el personal tiene estatus dados de alta..
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Select iIdEstatus from rh_estatusempleados ');
        connection.zCommand.Open;

        if connection.zCommand.RecordCount = 0 then
        begin
            messageDLG('No existen estatus de empleados dados de alta, Favor de registrarlos!', mtInformation, [mbOk], 0);
            exit;
        end
        else
           IdEstatus := connection.zCommand.FieldValues['iIdEstatus'];

        while not zqryMovtosRP.eof do
        begin
          connection.zConnection.StartTransaction;
          Grabar:=true;
          connection.QryBusca.Active:=False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('select sIdEmpleado from empleados where sIdEmpleado = :Id');
          connection.QryBusca.ParamByName('Id').AsString := zqryMovtosRP.FieldByName('sFicha').AsString;
          connection.QryBusca.Open;

          if connection.QryBusca.RecordCount > 0 then
          begin
            MessageDlg('Este número de ficha ya esta asignado a un Empleado.', mtInformation,[mbOk],0);
            Grabar:=false;
          end;

          if (Grabar) then
          begin
            DecodeDate(zqryMovtosRP.FieldByName('dFechaNacimiento').AsDateTime,aa,mm,dd);
            fechanac:=IntToStr(aa)+'-'+IntToStr(mm)+'-'+IntToStr(dd);
            Query.Active := False;
            Query.SQL.Clear;
            Query.SQL.Add('INSERT INTO empleados (sIdEmpleado, iIdEstatus, sNombreCompleto, sApellidoPaterno, sApellidoMaterno, sRfc, sCurp, sCiudad, sTelefono, seMail,sCuenta,sCuentaInterbancaria,');
            Query.SQL.Add('sImss, sEstadoCivil, iId_Puesto, dSueldo, ');
            Query.SQL.Add('sLibretaMar, sCartilla, sCedulaProfesional, sLugarNacimiento, sTipoSangre, lSexo, dFechaNacimiento, sStatusPersonal, sStatusTipoPersonal) ');
            Query.SQL.Add('VALUES ( ' + QuotedStr(zqryMovtosRP.FieldByName('sFicha').AsString) + ', ' + intToStr(IdEstatus) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sNombreCompleto').AsString)+ ', ' + QuotedStr(zqryMovtosRP.FieldByName('sApellidoP').AsString)+ ', '+ QuotedStr(zqryMovtosRP.FieldByName('sApellidoM').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sRfc').AsString) + ', ');
            Query.SQL.Add(QuotedStr(zqryMovtosRP.FieldByName('sCurp').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sCiudad').AsString) + ', ');
            Query.SQL.Add(QuotedStr(zqryMovtosRP.FieldByName('sTelefono').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sEmail').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sCuenta').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sCuentaInterbancaria').AsString) + ', ');
            Query.SQL.Add(QuotedStr(zqryMovtosRP.FieldByName('sImss').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sEstadoCivil').AsString) + ', ' + intToStr(qryRequisicionPersonal.FieldValues['iID_Puesto']) + ', '+ QuotedStr(FloatToSTr(zqryMovtosRP.FieldByName('dSueldoPactado').AsFloat)) + ', ');
            Query.SQL.Add(QuotedStr(zqryMovtosRP.FieldByName('sLibretaMar').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sCartilla').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sCedulaProfesional').AsString) + ', ' + QuotedStr(zqryMovtosRP.FieldByName('sLugarNacimiento').AsString) + ', ');
            Query.SQL.Add(QuotedStr(zqryMovtosRP.FieldByName('sTipoSangre').AsString) + ', ');
            Query.SQL.Add(QuotedStr(zqryMovtosRP.FieldByName('lSexo').AsString)  +', ' + QuotedStr(fechanac) + ', ' +  QuotedStr('Pendiente')+ ', ' +QuotedStr(zqryMovtosRP.FieldByName('sStatusTipoPersonal').AsString)+ ')');
            Query.ExecSQL;
            MessageDlg('El empleado fue pre-contratado correctamente, dirijase al modulo de Empleados para completar la contratacion', mtConfirmation, [mbOk], 0);
            if zqConfiguracion.FieldValues['eNomina']='Si' then
            begin
              {$REGION 'Guaradar en Nomina'}
              zQPersonal.Append;
              //zQ_Precontrato.Append;
              connection.QryBusca.Active := False;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('SELECT MAX(idpersonal) AS id FROM nuc_personal;');
              connection.QryBusca.Open;

              if connection.QryBusca.FieldValues['id'] = null then
                zQPersonal.FieldValues['idpersonal'] := 1
              else
                zQPersonal.FieldValues['idpersonal'] := connection.QryBusca.FieldValues['id'] + 1;

              zQPersonal.FieldByName('fechaalta').AsDateTime:=Date;
              qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.editvalue,[]);

              if connection.QryBusca.RecordCount>0 then
                zQPersonal.FieldByName('idcargo').AsInteger:=qryRequisicionPersonal.fieldbyname('iId_Puesto').asinteger;
              zQPersonal.FieldByName('codigopersonal').AsString:=zqryMovtosRP.FieldByName('sFicha').AsString;
              zQPersonal.FieldByName('Activo').AsString:='SI';
              zQPersonal.FieldByName('Nombres').AsString:=zqryMovtosRP.FieldByName('sNombreCompleto').AsString;
              zQPersonal.FieldByName('APaterno').AsString:=zqryMovtosRP.FieldByName('sApellidoM').AsString;
              zQPersonal.FieldByName('AMaterno').AsString:=zqryMovtosRP.FieldByName('sApellidoM').AsString;
              zQPersonal.FieldByName('numerosegurosocial').AsString:=zqryMovtosRP.FieldByName('sImss').AsString;
              zQPersonal.FieldByName('curp').AsString:=zqryMovtosRP.FieldByName('sCurp').AsString;
              zQPersonal.FieldByName('telefono').AsString:=zqryMovtosRP.FieldByName('sTelefono').AsString;
              zQPersonal.FieldByName('gruposanguineo').AsString:=zqryMovtosRP.FieldByName('sTipoSangre').AsString;
              zQPersonal.FieldByName('rfc').AsString:=zqryMovtosRP.FieldByName('sRfc').AsString;
              zQPersonal.FieldByName('Correo').AsString:=zqryMovtosRP.FieldByName('seMail').AsString;
              zQPersonal.FieldByName('Calle').AsString:=zqryMovtosRP.FieldByName('sDomicilio').AsString;
              zQPersonal.FieldByName('Ciudad').AsString:=zqryMovtosRP.FieldByName('sCiudad').AsString;
              zQPersonal.FieldByName('ciudadnacimiento').AsString:=zqryMovtosRP.FieldByName('sLugarNacimiento').AsString;
              zQPersonal.FieldByName('fechanacimiento').AsDateTime:=zqryMovtosRP.FieldByName('dFechaNacimiento').AsDateTime;
              zQPersonal.FieldByName('sexo').AsString:=zqryMovtosRP.FieldByName('lSexo').AsString;
              if zqConfiguracion.FieldValues['eNomina']='Si' then
              zQPersonal.Post;
            {$ENDREGION}
            end;

            if zqryMovtosRP.FieldByName('sStatusTipoPersonal').AsString='Tierra' then
            begin
              {$REGION 'HistorialAltasBajas'}
              qryHistorialAltasBajas.Insert;
              connection.QryBusca.Active := False;
              connection.QryBusca.SQL.Clear;
              connection.QryBusca.SQL.Add('SELECT MAX(iId_HistorialAltasBajas) AS id FROM rh_historialaltasbajas;');
              connection.QryBusca.Open;

              if connection.QryBusca.FieldValues['id'] = null then
                qryHistorialAltasBajas.FieldValues['iId_HistorialAltasBajas'] := 1
              else
                qryHistorialAltasBajas.FieldValues['iId_HistorialAltasBajas'] := connection.QryBusca.FieldValues['id'] + 1;

              qryHistorialAltasBajas.FieldValues['sIdEmpleado'] := zqryMovtosRP.FieldByName('sFicha').AsString;
              qryHistorialAltasBajas.FieldValues['sTipo']       := 'Alta';
              qryHistorialAltasBajas.FieldValues['dFecha']      := Date;
              qryHistorialAltasBajas.Post;
              {$ENDREGION}
            end
            else
            begin
              Inc(Grabados);
              ProcesarContrato := True;
              //ShowMessage('El personal se ha Precontratado, para terminar la contratación diríjase al módulo de Empleados');
            end;

            {$REGION 'Generar Contrato'}
            if z.Text='contratado' then
            begin
              z.Text:='';
              zqHistorial.Append;
              zqHistorial.FieldByName('sIdEmpleado').AsString:=zqryMovtosRP.FieldByName('sFicha').AsString;
              zqHistorial.FieldByName('dFechaInicio').AsDateTime:=Date;
              zqHistorial.FieldByName('sTipoContrato').AsString :='TIERRA';
              zqHistorial.FieldByName('sPeriodoLaboral').AsString:='Indefinido';
              zqHistorial.Post;
              ShowMessage('El contrato fue creado con exito');
            end;
            {$ENDREGION}

            //Se cambia el estatus del postulantes para que no se pueda volver a contratar
            xPostulantes.Active := False;
            xPostulantes.SQL.Clear;
            xPostulantes.SQL.Add('update rh_postulantes set Procesado = "Si" where (IidPostulante = :IidPostulante)');
            xPostulantes.ParamByName('IidPostulante').AsInteger := zqryMovtosRP.FieldByName('IidPostulante').AsInteger;
            xPostulantes.ExecSQL;

            xPostulantes.Active := False;
            xPostulantes.SQL.Clear;
            xPostulantes.SQL.Add('update empleados set sStatusPersonal = "Pendiente" where (sIdEmpleado = :sIdEmpleado)');
            xPostulantes.ParamByName('sIdEmpleado').AsString := zqryMovtosRP.FieldByName('sFicha').AsString;
            xPostulantes.ExecSQL;


              connection.zConnection.Commit;
              Inc(Grabados);
          end;
          zqryMovtosRP.Next;

        end;

        qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.EditValue,[]); //Para posicionar en el registro correcto
        connection.QryBusca.Active:=False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select COUNT(IdRequisicionPersonal) as Procesados '+
                                    'from rh_movtosrequisicionpersonal rhm '+
                                    'INNER JOIN rh_postulantes rhp on (rhp.IidPostulante = rhm.IidPostulante) '+
                                    'where Procesado = "Si" and IdRequisicionPersonal = :Id');
        connection.QryBusca.ParamByName('Id').AsInteger := cbNumeroRequisicion.EditValue;
        connection.QryBusca.Open;
        if qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger = connection.QryBusca.FieldByName('Procesados').AsInteger then
        begin
          Query.SQL.Clear;
          Query.SQL.Add('UPDATE rh_requisicionpersonal SET sStatus =' + QuotedStr('CERRADA') + ' where IdRequisicionPersonal = :IdRP');
          Query.Params.ParamByName('IdRP').AsInteger := cbNumeroRequisicion.EditValue;
          Query.ExecSQL;
        end;
        //zqryMovtosRP.refresh;
        actualizar;
        //msg_ok('Proceso Terminado con Exito!');
        //++++++++++++++++-----------------------------------------------------
      end
      else
      begin
        msg_w('Aun Faltan Cubrir un Numero de Vacantes en la Requisicion de Personal.');
        exit;
      end;
      xPostulantes.Destroy;
      //qryRequisicionPersonal.Refresh;
      //zqryMovtosRP.Refresh;
    end
    else
    begin
      msg_w('No existen Movimientos para poder realizar esta Accion.');
    end;
  except
    on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do
    begin
      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
      //cancelatransaccion;
      connection.zConnection.Rollback;
      frmBarra1.btnCancelClick(Sender);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.GenerarReporte(Reporte: String);
var
  bS: TStream;
  BlobField: tField;
  SavePlace: TBookmark;
  iGrid: Integer;
begin
  try
    //ShowMessage(IntToStr(Grid_Empleados.SelCount));
    qryListAsistCurso.Close;
    qryListAsistCurso.Active := False;
    qryListAsistCurso.SQL.Clear;
    qryListAsistCurso.SQL.Add('select p.*, cp.sPuesto from rh_postulantes p ');
    qryListAsistCurso.SQL.Add('left join con_catalogodepuestos cp ');
    qryListAsistCurso.SQL.Add('on (cp.iId_Puesto = p.iId_Puesto) ');
    qryListAsistCurso.SQL.Add('Where ');

    //TcxGridDbTableView(grid_Postulantes.ActiveView).DataController.GetSelectedCount

    SavePlace := TcxGridDbTableView(grid_Postulantes.ActiveView).DataController.DataSource.DataSet.GetBookmark;
    with TcxGridDbTableView(grid_Postulantes.ActiveView).DataController.DataSource.DataSet do
     // for iGrid := 0 to grid_Postulantes.SelectedRows.Count - 1 do
      for iGrid := 0 to TcxGridDbTableView(grid_Postulantes.ActiveView).DataController.GetSelectedCount - 1 do
      begin
        //GotoBookmark(pointer(grid_Postulantes.SelectedRows.Items[iGrid]));
        GotoBookmark(pointer(TcxGridDbTableView(grid_Postulantes.ActiveView).DataController.GetSelectedRowIndex(igrid)));
        if iGrid = 0 then
        begin
          qryListAsistCurso.SQL.Add('(p.IidPostulante= ' + QuotedStr(FieldValues['IidPostulante']) + ') ');
        end
        else
        begin
          qryListAsistCurso.SQL.Add('or (p.IidPostulante= ' + QuotedStr(FieldValues['IidPostulante']) + ') ');
        end
      end;
    qryListAsistCurso.Open;
    if qryListAsistCurso.RecordCount > 0 then
    begin
      RxListAsisCurso.Active := True;
      RxListAsisCurso.EmptyTable;
      while not qryListAsistCurso.eof do
      begin
        RxListAsisCurso.Insert;
        RxListAsisCurso.Edit;
        RxListAsisCurso.FieldValues['IidPostulante'] := qryListAsistCurso.FieldByName('IidPostulante').AsInteger;
        RxListAsisCurso.FieldValues['sNombreCompleto'] := qryListAsistCurso.FieldByName('sNombreCompleto').AsString;
        RxListAsisCurso.FieldValues['sCurp'] := qryListAsistCurso.FieldByName('sCurp').AsString;
        RxListAsisCurso.FieldValues['sApellidoP'] := qryListAsistCurso.FieldByName('sApellidoP').AsString;
        RxListAsisCurso.FieldValues['sApellidoM'] := qryListAsistCurso.FieldByName('sApellidoM').AsString;
        RxListAsisCurso.FieldValues['sPuesto'] := qryListAsistCurso.FieldByName('sPuesto').AsString;
        RxListAsisCurso.FieldValues['sTelefono'] := qryListAsistCurso.FieldByName('sTelefono').AsString;
        RxListAsisCurso.Post;
        qryListAsistCurso.Next;
        if qryListAsistCurso.Eof then
        begin
          Break;
        end;
        //end
      end;
      frxReport1.LoadFromFile(global_files +global_MiReporte +Reporte) ;
      frxReport1.ShowReport();
    end
  except
    on e:Evalidaciones do
    begin
      messagedlg('Importante'+#13+#13+e.Message, mtinformation, [mbOk], 0)
    end;
    on E:Exception do
    begin
      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.CmdDetalleNacionalidadesClick(
  Sender: TObject);
begin
 if ZqPostulante.State IN [dsEdit, dsInsert] then
  begin
    if not frmInteligent.MostrarFormChild('frmcatalogoNacionalidades') then
    begin
        global_frmActivo := 'Frm_CatalogoDePostulante'  ;
        Application.CreateForm(TfrmCatalogoNacionalidades, frmCatalogoNacionalidades);
        frmCatalogoNacionalidades.show;
        zqNacionalidad.Refresh;
    end;
  end;

end;

procedure TFrmCatalogoDePostulante.CUENTAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then interbancaria.Setfocus;
end;

procedure TFrmCatalogoDePostulante.CURPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then rfc.Setfocus;
end;

procedure TFrmCatalogoDePostulante.CxDbImageAspiranteDblClick(Sender: TObject);
begin
  if ZqPostulante.State in [dsInsert, dsEdit] then
  begin
    RutaImagen := '';
    try
      if dlgOpenPicAspirante.Execute then
      begin
        RutaImagen := dlgOpenPicAspirante.FileName;
        CxDbImageAspirante.Picture.LoadFromFile(RutaImagen);
      end;
    except
      on e: Exception do
      begin
        MessageDlg(e.Message, mtError, [mbOK], 0);
        RutaImagen := '';
      end;
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.dbedtiEdadKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then Carrera.Setfocus
end;

procedure TFrmCatalogoDePostulante.dblSexoKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then dbedtiEdad.Setfocus;
end;

procedure TFrmCatalogoDePostulante.dbPuestoKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsNombre.Setfocus;
end;

procedure TFrmCatalogoDePostulante.dbTipoPersonalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then dbPuesto.Setfocus;
end;

procedure TFrmCatalogoDePostulante.docClick(Sender: TObject);
begin
  if ZQPostulante.RecordCount > 0 then
  begin
    //Consulta de la table de itemss documentos.
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT * FROM rh_catalogoitemschecklist_doctos;');
    connection.QryBusca.Open;
    //Llenado de rx con todos los items
    rx_documentos.Active := True;
    rx_documentos.EmptyTable;
    while not connection.QryBusca.Eof do
    begin
      rx_documentos.Append;
      rx_documentos.FieldValues['Iddocumento'] := connection.QryBusca.FieldValues['id_catalogoitemschecklist_doctos'];
      rx_documentos.FieldValues['estatus']     := 'No';
      rx_documentos.FieldValues['sDescripcion'] := connection.QryBusca.FieldValues['sDescripcion'];
      rx_documentos.Post;
      connection.QryBusca.Next;
    end;
    //consulta de items o documentos asignados al empleado...
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT * FROM rh_movtoschecklistitems where iIdPostulante =:Id ');
    connection.QryBusca.ParamByName('Id').AsInteger := ZQPostulante.FieldValues['iIdPostulante'];
    connection.QryBusca.Open;
    //Marcar los items
    rx_documentos.Active := True;
    while not connection.QryBusca.Eof do
    begin
      rx_documentos.First;
      while not rx_documentos.Eof do
      begin
        if rx_documentos.FieldValues['Iddocumento'] = connection.QryBusca.FieldValues['id_catalogoitemschecklist_doctos'] then
        begin
          rx_documentos.Edit;
          rx_documentos.FieldValues['estatus']   := 'Si';
          rx_documentos.Post;
        end;
        rx_documentos.Next;
      end;
      connection.QryBusca.Next;
    end;
   frxReport1.LoadFromFile(global_files + global_Mireporte + '_docPostulantes.fr3') ;
   frxReport1.ShowReport();

    if not FileExists(global_files + global_miReporte + '_docPostulantes.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_docPostulantes.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  end
  else msg_w('No hay Postulantes seleccionados');
end;

procedure TFrmCatalogoDePostulante.ESTADOCIVKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tstiposangre.Setfocus;
end;

procedure TFrmCatalogoDePostulante.cbNumeroRequisicionPropertiesCloseUp(
  Sender: TObject);
begin
  if cbNumeroRequisicion.editvalue <> 0 then
  begin
    zqryMovtosRP.Active := false;
    if cbNumeroRequisicion.EditValue <> null then
    begin
    zqryMovtosRP.ParamByName('IdRP').AsInteger :=cbNumeroRequisicion.editvalue;

    zqryMovtosRP.Open;
    qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.editvalue,[]); //Sé posiciona
    tsPuesto.Text := qryRequisicionPersonal.FieldByName('sDescripcion').AsString; //Asigna el valor del puesto
    //Totaliza el numero de personal procesado
    connection.QryBusca.Active:=False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select COUNT(IdRequisicionPersonal) as Procesados '+
                                'from rh_movtosrequisicionpersonal rhm '+
                                'INNER JOIN rh_postulantes rhp on (rhp.IidPostulante = rhm.IidPostulante) '+
                                'where Procesado = "Si" and IdRequisicionPersonal = :Id');

    connection.QryBusca.ParamByName('Id').AsInteger := cbNumeroRequisicion.EditValue;
    connection.QryBusca.Open;
    lblRP.Caption := 'No. Personas Requeridas: ' + intToStr(qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger);
    lblMovtosRP.Caption := 'No. Personas Asignadas: ' + intToStr((zqryMovtosRP.RecordCount + connection.QryBusca.FieldByName('Procesados').AsInteger));
    if connection.QryBusca.FieldByName('Procesados').AsInteger = 0 then
      Restan := qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger - zqryMovtosRP.RecordCount
    else
      Restan := ((qryRequisicionPersonal.FieldByName('iCantidadPersonas').AsInteger) - (zqryMovtosRP.RecordCount) - (connection.QryBusca.FieldByName('Procesados').AsInteger));
    lblRestantes.Caption := 'FALTANTES: ' + intToStr(Restan);
     end;
  end else
  begin
   cbNumeroRequisicion.Reset;
    tsPuesto.Text := '';
    lblRP.Caption := 'No. Personas Requeridas: 0';
    lblMovtosRP.Caption := 'No. Personas Asignadas: 0';
    lblRestantes.Caption := 'FALTANTES: 0';
    zqryMovtosRP.Active := false;
  end;
  if chkfiltro.Checked then
  begin
     try
        ZqPostulante.Active := false;
        ZqPostulante.SQL.Clear;
        ZqPostulante.SQL.Add('select * from rh_postulantes where sActivo = "No" and Procesado = "No" and iId_Puesto =:puesto '+
                             'Order By sNombreCompleto ');
        ZqPostulante.ParamByName('puesto').AsInteger := qryRequisicionPersonal.FieldValues['iId_Puesto'];
        ZqPostulante.Open;
     Except
     end;
  end
  else
  begin
    ZqPostulante.Active := false;
    ZqPostulante.SQL.Clear;
    ZqPostulante.SQL.Add('select * from rh_postulantes '+
                         'Order By sNombreCompleto ');
    ZqPostulante.Open;
  end;
end;


procedure TFrmCatalogoDePostulante.CEDULAKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then banco.Setfocus;
end;

procedure TFrmCatalogoDePostulante.chkFiltroClick(Sender: TObject);
begin
  if chkfiltro.Checked then
  begin
    if qryRequisicionPersonal.RecordCount > 0 then
    begin
      qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.editvalue,[]);
      //tsPuesto.Text := qryRequisicionPersonal.FieldByName('sDescripcion').AsString;
      ZqPostulante.Active := false;
      ZqPostulante.SQL.Clear;
      ZqPostulante.SQL.Add('select * from rh_postulantes where sActivo = "No" and Procesado = "No" and iId_Puesto =:puesto '+
                           'Order By sNombreCompleto ');
      ZqPostulante.ParamByName('puesto').AsInteger := qryRequisicionPersonal.fieldbyname('iId_Puesto').asinteger;
      ZqPostulante.Open;
    end
    else msg_w('No hay Requisiciónes de Personal');
  end
  else
  begin
    ZqPostulante.Active := false;
    ZqPostulante.SQL.Clear;
    ZqPostulante.SQL.Add('select * from rh_postulantes '+
                         'Order By sNombreCompleto ');
    ZqPostulante.Open;
  end;
end;

procedure TFrmCatalogoDePostulante.FiltroEmpleadoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if TEdit(Sender).Text <> '' then
  begin
    zqPostulante.Filter := 'sNombreCompleto LIKE ''*'+TEdit(Sender).Text+'*''';
    zqPostulante.Filtered := True;
  end else
  begin
    zqPostulante.Filter := '';
    zqPostulante.Filtered := False;
  end;

end;

procedure TFrmCatalogoDePostulante.cbflPuestosClick(Sender: TObject);
begin
  {zQPostulante.Active := False;
  zQPostulante.SQL.Clear;
  if qryflPuestos.FieldValues['iId_Puesto'] = 0 then
    zQPostulante.SQL.Add('select * from rh_postulantes where sActivo = "No" order by sNombreCompleto')
  else
  begin
    zQPostulante.SQL.Add('select * from rh_postulantes where sActivo = "No" and iId_Puesto =:puesto order by sNombreCompleto');
    zQPostulante.ParamByName('puesto').AsInteger := cbflPuestos.EditValue;
  end;
  zQPostulante.Open; }
end;

procedure TFrmCatalogoDePostulante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TFrmCatalogoDePostulante.FormCreate(Sender: TObject);
begin
  Endshow := true;
  endsave := true
end;

procedure TFrmCatalogoDePostulante.NACIMIENTOExit(Sender: TObject);
var
  Anios,
  edad : Integer;
begin
  NACIMIENTO.Style.Color := global_color_salidaERP;
    if zQPostulante.State <> dsbrowse then
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

    dbedtiEdad.Text := IntToStr(edad);

  end;
end;

procedure TFrmCatalogoDePostulante.NACIMIENTOKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then dblSexo.Setfocus;
end;

procedure TFrmCatalogoDePostulante.NACIMIENTOPropertiesCloseUp(Sender: TObject);
begin
  if ZqPostulante.State in [dsInsert,dsEdit] then
  begin
    ZqPostulante.FieldByName('iEdad').AsInteger := YearOf(date) - YearOf(nacimiento.date);
  end;
end;

procedure TFrmCatalogoDePostulante.NACIONALIDADKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then Nacimiento.Setfocus
end;

procedure TFrmCatalogoDePostulante.NXListaChange(Sender: TObject; ACol,ARow: Integer);
Var
  item : Byte ;
  QryBusca, Query : tzquery;
  Aux, x : Integer;
begin
  Query := TZQuery.Create(Self);
  Query.Connection := connection.ZConnection;
  Query.Active := False;
  if ZqPostulante.State = dsEdit then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(idMovtosCheckListItems) AS id FROM rh_movtoschecklistitems;');
    connection.QryBusca.Open;
    if connection.QryBusca.FieldValues['Id'] = null then
      begin
        Aux := 1;
      end
    else
    begin
        Aux := connection.QryBusca.FieldValues['Id'] + 1;
    end;
    if aux=1 then
    begin
      Query.SQL.Clear;
      Query.SQL.Add('INSERT INTO rh_movtoschecklistitems (idMovtosCheckListItems, IidPostulante, id_catalogoitemschecklist_doctos) ');
      Query.SQL.Add('VALUES (:Id, :IdPostulante, :CatalogoItems) ');
      Query.Params.ParamByName('Id').AsInteger := Aux;
      Query.Params.ParamByName('IdPostulante').AsInteger := zqPostulante.FieldByName('IidPostulante').AsInteger;
      Query.Params.ParamByName('CatalogoItems').AsInteger := 1;
      Query.ExecSQL;
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.RFCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then tsTipoSangre.Setfocus;
end;

procedure TFrmCatalogoDePostulante.sLibretaMarKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then EstadoCiv.Setfocus;
end;

procedure TFrmCatalogoDePostulante.SolicituddeEmpleoClick(Sender: TObject);
begin

 if not FileExists(global_files + global_miReporte + '_SolicitudEmpleo.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_SolicitudEmpleo.fr3no existe, notifique al administrador del sistema');
   exit;
  end;

  if ZQPostulante.RecordCount > 0 then
  begin
    frxReport1.LoadFromFile(global_files +global_MiReporte +'_SolicitudEmpleo.fr3');
    frxReport1.ShowReport();
  end
  else msg_ok('No hay Postulantes seleccionados');
end;

procedure TFrmCatalogoDePostulante.TipoPersonalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       tsSueldoPactado.SetFocus;
end;

procedure TFrmCatalogoDePostulante.FormShow(Sender: TObject);
begin
    actualizar;
end;

procedure TFrmCatalogoDePostulante.actualizar;
begin
  try
    RutaImagen := '';
    QrCargos.Active:=false;
    QrCargos.Open;
  
    cxPageControl1.ActivePageIndex := 0;
    zq_Puestos.Active := false;
    zq_Puestos.Open;
    qryFlPuestos.Active := False ;
    qryFlPuestos.Open;
    ZqPostulante.Active := false;
    ZqPostulante.Open;
    qryHistorialAltasbajas.Active := False;
    qryHistorialAltasbajas.ParamByName('empleado').AsString := '';
    qryHistorialAltasbajas.Open;
    qryRequisicionPersonal.Active := false;   //Para mostrar la requisicion
    qryRequisicionPersonal.Open;

    try
       cbNumeroRequisicionPropertiesCloseUp(cbNumeroRequisicion);
    Except
    end;

    zqNacionalidad.Open;
    zqConfiguracion.Open;
    zQPersonal.Active := False;
    zQPersonal.Open;
    ZQTipoPersonal.Active:=False;
    ZQTipoPersonal.Open;
    zqHistorial.Active := False;
    zqHistorial.Open;

    Postulantes.Active := false;
    Postulantes.Open;
    ListView1.Columns.Add.Caption := '';
    ListView1.Columns.Add.Caption := 'Id';
    ListView1.Columns.Add.Caption := 'Descripcion';
    ListView1.Columns[0].Width := 30;
    ListView1.Columns[1].Width := 0;
    ListView1.Columns[2].Width := 600;
    ListView1.Checkboxes := True;
    tsFicha.SetFocus;
  except
    on e:exception do
    begin
      messagedlg('Ha ocurrido un error inesperado del sistema, Avise del siguiente error al administradr: '+#10+#10+'Error'+#10+#10+e.message, mterror, [mbok], 0);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.frmBarra1btnAddClick(Sender: TObject);
begin
  try
    //Inabilitar Secciones
    RutaImagen := '';
    cxPageControl1.ActivePageIndex := 0;
    cxPageControl2.ActivePageIndex := 0;
    cxTabSheet2.TabVisible    := False;
    grid_postulantes.Enabled  := False;
    grid_movtosRP.Enabled     := False;
    PanelMovtosRP.Enabled     := False;
    Button1.enabled           := false;
    Button2.enabled           := false;
    tsFicha.enabled:=true;
    FrmBarra1.btnAddClick(sender);
    global_movimiento := 'Insertó';
    ZqPostulante.Append;
    NACIMIENTO.date           := date;
    ZqPostulante.FieldByName('SActivo').AsString := 'No';
   // NACIONALIDAD..itemindex := 0;
    tsFicha.SetFocus;
    qryRequisicionPersonal.locate('IdRequisicionPersonal',cbNumeroRequisicion.editvalue,[]);
    if zq_Puestos.RecordCount > 0 then
      ZqPostulante.FieldValues['iId_Puesto'] :=  qryRequisicionPersonal.FieldByName('iId_Puesto').AsInteger;


    ESTADOCIV.itemindex   :=0;
    ZqPostulante.FieldByName('sEstadoCivil').AsString :='Casado';
    TipoPersonal.itemindex:=0;
    ZqPostulante.FieldByName('sStatusTipoPersonal').AsString :='A bordo';
    ZqPostulante.FieldByName('iEdad').asinteger := 0;
    dblSexo.ItemIndex:=0;
    ZqPostulante.FieldByName('lSexo').AsString :='MASCULINO';
    ZqPostulante.FieldValues['sDomicilio'] := '*';
    ZqPostulante.FieldValues['sCiudad'] := '*';
    ZqPostulante.FieldValues['sLugarNacimiento'] := '*';
    ZqPostulante.FieldValues['sTelefono'] := '*';
    ZqPostulante.FieldValues['sCarrera'] := '*';
    ZqPostulante.FieldValues['sCedulaProfesional'] := '*';
    ZqPostulante.FieldValues['sBanco'] := '*';
    ZqPostulante.FieldValues['sCuenta'] := '*';
    ZqPostulante.FieldValues['sCuentaInterbancaria'] := 000000000000000000;
    ZqPostulante.FieldValues['sCurp']           := '*';
    ZqPostulante.FieldValues['sRfc']            := '*';
    ZqPostulante.FieldValues['sCartilla']       := '*';
    ZqPostulante.FieldValues['sLibretaMar']     := '*';
    ZqPostulante.FieldValues['sTipoSangre']     := '*';
    ZqPostulante.FieldValues['sImss']           := '*';
    ZqPostulante.FieldValues['seMail']          := '*';
    ZqPostulante.FieldValues['sCartilla']       := '*';
    ZqPostulante.FieldValues['dSueldoPactado']  := 0;
    ZqPostulante.FieldValues['sAutorizaSueldo'] := '*';
    ZqPostulante.FieldValues['sSolicitaSueldo'] := '*';

  except
    on e:exception do
    begin
      messagedlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.message, mterror, [mbok], 0);
      ZqPostulante.CancelUpdates;
    end;
  end;

end;

procedure TFrmCatalogoDePostulante.frmBarra1btnCancelClick(Sender: TObject);
begin
  //Habilitar Secciones
  cxPageControl1.ActivePageIndex := 0;
  cxTabSheet1.TabVisible    := True;
  cxTabSheet2.TabVisible    := True;
  grid_postulantes.Enabled  := True;
  grid_movtosRP.Enabled     := True;
  Button1.enabled           := True;
  Button2.enabled           := True;
  PanelMovtosRP.Enabled     := True;
  tsFicha.enabled           := True;
  FrmBarra1.btnCancelClick(Sender);
  ZqPostulante.Cancel;
  global_movimiento := '';
  

end;

procedure TFrmCatalogoDePostulante.frmBarra1btnDeleteClick(Sender: TObject);
var mov: String;
begin
  if ZqPostulante.RecordCount > 0 then
  begin
    if Application.MessageBox('¿Estas Seguro de Querer Eliminar Movimiento?','ELIMINAR INFO',MB_YESNO + Mb_IconQuestion) = IdYes then
    begin
      global_movimiento:= 'Eliminó';
      mov:= 'Se realizó la eliminación del postulante con ficha No. [' + dsPostulante.DataSet.FieldByName('sFicha').AsString + ']';
      ZqPostulante.Delete;
      kardex_almacen(mov, global_movimiento);
      ZqPostulante.Refresh;
    end;
  end
  else
  begin
    msg_w('No existes Movimientos para el Empleado.');
  end;
end;

procedure TFrmCatalogoDePostulante.frmBarra1btnEditClick(Sender: TObject);
begin
  RutaImagen := '';
  if ZQPostulante.RecordCount > 0 then
  begin
    FrmBarra1.btnEditClick(Sender);
    PanelMovtosRP.Enabled     := False;
    tsFicha.enabled           :=false;
    grid_postulantes.Enabled  := False;
    grid_movtosRP.Enabled     :=False;
    Button1.enabled           := false;
    Button2.enabled           := false;
    global_movimiento         := 'Modificó';
    ZqPostulante.Edit;
  end
  else msg_w('No hay Postulantes seleccionados');
end;

procedure TFrmCatalogoDePostulante.frmBarra1btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCatalogoDePostulante.frmBarra1btnPostClick(Sender: TObject);
var
  BlobStream: TStream;
  FileStream: TFileStream;
  numero : integer;
  mov : String;
begin
  if length(trim(tsFicha.Text)) =0 then
  begin
    MSG_W('El número de ficha no puede quedar vacio');
    tsFicha.SetFocus;
    Abort;
  end;

  try
    numero := StrTOInt64(interbancaria.Text)
  Except
      MSG_W('La Clave Interbancaria debe contener Numeros.');
      interbancaria.SetFocus;
      exit;
  end;

  if ZqPostulante.state in [dsinsert] then
  begin
    connection.QryBusca.Active:=False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select e.sIdEmpleado, p.sFicha from empleados e, rh_postulantes p where e.sIdEmpleado = :Id or p.sFicha=:Id');
    connection.QryBusca.ParamByName('Id').AsString := tsFicha.Text;
    connection.QryBusca.Open;
    if (connection.QryBusca.RecordCount > 0)  then
    begin
      MSG_OK('Este número de ficha ya esta asignado a un Empleado o Postulante.');
      tsFicha.SetFocus;
      Abort;
    end;
  end;
  if length(trim(tsNombre.Text)) =0 then
  begin
    msg_w('El campo "Nombre Completo" no pude estar vacio');
    tsNombre.SetFocus;
    abort
  end;
  if length(trim(tsPaterno.Text)) =0 then
  begin
    msg_w('El campo "Apellido Paterno" no pude estar vacio');
    tsPaterno.SetFocus;
    abort
  end;
  if length(trim(tsMaterno.Text)) =0 then
  begin
    msg_w('El campo "Apellido Materno" no pude estar vacio');
    tsMaterno.SetFocus;
    abort
  end;
  if length(trim(tsDomicilio.Text)) =0 then
  begin
    msg_w('El campo "Domicilio" no pude estar vacio');
    tsDomicilio.SetFocus;
    abort
  end;
  if length(trim(tsCiudad.Text)) =0 then
  begin
    msg_w('El campo "Ciudad" no pude estar vacio');
    tsCiudad.SetFocus;
    abort
  end;
  if length(trim(LNACIMIENTO.Text)) =0 then
  begin
    msg_w('El campo "Lugar de Nacimiento" no pude estar vacio');
    LNACIMIENTO.SetFocus;
    abort
  end;
  if length(trim(tsTelefono.Text)) = 0 then
  begin
    MSG_W('El campo "Telefono" no pude estar vacio');
    tsTelefono.SetFocus;
    Abort;
  end;
  if length(trim(dbedtiEdad.Text)) = 0 then
  begin
    MSG_W('El campo "Edad" no pude estar vacio');
    dbedtiEdad.SetFocus;
    Abort;
  end;
  if dbedtiEdad.Text = '0' then
  begin
    MSG_W('El campo "Edad" no puede contener un valor de "0"');
    dbedtiEdad.SetFocus;
    Abort;
  end;
  if CARRERA.Text = '' then
  begin
    MSG_W('El campo "Profesion" no puede estar vacio');
    CARRERA.SetFocus;
    Abort;
  end;
  if CEDULA.Text = '' then
  begin
    MSG_W('El campo "Cedula Prof." no puede estar vacio');
    CEDULA.SetFocus;
    Abort;
  end;
  if BANCO.Text = '' then
  begin
    MSG_W('El campo "Banco" no puede estar vacio');
    BANCO.SetFocus;
    Abort;
  end;
  if CUENTA.Text = '' then
  begin
    MSG_W('El campo "Cuenta" no puede estar vacio');
    CUENTA.SetFocus;
    Abort;
  end;
  if INTERBANCARIA.Text = '' then
  begin
    MSG_W('El campo "Clave" no puede estar vacio');
    INTERBANCARIA.SetFocus;
    Abort;
  end;
  if CURP.Text = '' then
  begin
    MSG_W('El campo "CURP" no puede estar vacio');
    CURP.SetFocus;
    Abort;
  end;
  if RFC.Text = '' then
  begin
    MSG_W('El campo "RFC" no puede estar vacio');
    RFC.SetFocus;
    Abort;
  end;

  if tsTipoSangre.Text = '' then
  begin
    MSG_W('El campo "Tipo de Sangre" no puede estar vacio');
    tsTipoSangre.SetFocus;
    Abort;
  end;
  if IMSS.Text = '' then
  begin
    MSG_W('El campo "Imss" no puede estar vacio');
    IMSS.SetFocus;
    Abort;
  end;
  if MAIL.Text = '' then
  begin
    MSG_W('El campo "E-Mail" no puede estar vacio');
    MAIL.SetFocus;
    Abort;
  end;

  if (Length(Trim(RutaImagen))) > 0 then
  begin
    BlobStream := ZqPostulante.CreateBlobStream(ZqPostulante.FieldByName('lbImagen'), bmWrite);
    try
      FileStream := TFileStream.Create(RutaImagen, fmOpenRead);
      try
        BlobStream.CopyFrom(FileStream, FileStream.Size);
      finally
        FileStream.Destroy;
      end;
    finally
      BlobStream.Destroy;
    end;
  end;

  ZqPostulante.Post;
  FrmBarra1.btnPostClick(Sender);
  if global_movimiento = 'Insertó' then
    mov:= 'Se realizó la inserción del postulante con ficha No. [' + dsPostulante.DataSet.FieldByName('sFicha').AsString + ']'
  else if global_movimiento = 'Modificó' then
    mov:= 'Se realizó la modificacion del postulante con ficha No. [' + dsPostulante.DataSet.FieldByName('sFicha').AsString + ']';

  kardex_almacen(mov, global_movimiento);
  tsFicha.enabled           := true;
  grid_postulantes.Enabled  := True;
  grid_movtosRP.Enabled     := True;
  PanelMovtosRP.Enabled     := True;
  Button1.enabled           := True;
  Button2.enabled           := True;
end;

procedure TFrmCatalogoDePostulante.frmBarra1btnPrinterClick(Sender: TObject);
var
  filtra : string;
begin

  if not FileExists(global_files + global_miReporte + '_postulantes.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_postulantes.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;


  filtra := dbTabla.DataController.Filter.FilterText;
  filtra := StringReplace(filtra, '%', '*',[rfReplaceAll, rfIgnoreCase]);

  zqPostulante.Filtered := False;
  zqPostulante.Filter   := filtra;
  zqPostulante.Filtered := True;

   connection.configuracionRecHum.Active := false;
   connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
   connection.configuracionRecHum.Open;


  if not FileExists(global_files + global_miReporte + '_postulantes.fr3') then
   begin
     showmessage('El archivo de reporte '+global_Mireporte+'_postulantes.fr3 no existe, notifique al administrador del sistema');
     exit;
  end
  else
   begin
      frxReport1.LoadFromFile(global_files +global_MiReporte +'_postulantes.fr3' ) ;
      frxReport1.ShowReport();

   end;
  zqPostulante.Filtered := False;
  dbTabla.DataController.Filter.FilterText := StringReplace(filtra, '*', '%',[rfReplaceAll, rfIgnoreCase]);

end;

procedure TFrmCatalogoDePostulante.frmBarra1btnRefreshClick(Sender: TObject);
begin
  actualizar;
  {NxPageControl1.ActivePageIndex := 0;
  zq_Puestos.Refresh;
  qryFlPuestos.Refresh;
  ZqPostulante.Refresh;
  qryHistorialAltasbajas.Refresh;
  qryRequisicionPersonal.Refresh;
  //cbNumeroRequisicion.ItemIndex:=0;
  ZqryMovtosRP.Refresh;
  zqNacionalidad.Refresh;
  zqConfiguracion.Refresh;
  zQPersonal.Refresh;
  ZQTipoPersonal.Refresh;
  if qryRequisicionPersonal.RecordCount = 1 then
    cbNumeroRequisicion.ItemIndex :=0;

  if qryRequisicionPersonal.RecordCount > 1 then
  begin
    qryRequisicionPersonal.Next;
    cbNumeroRequisicion.EditValue := qryRequisicionPersonal.FieldValues['IdRequisicionPersonal'];
  end;
  cbNumeroRequisicionPropertiesCloseUp(cbNumeroRequisicion);   }
  //if qryFlPuestos.RecordCount = 1 then

end;

procedure TFrmCatalogoDePostulante.frmBarra4btnAddClick(Sender: TObject);
begin
  try
    if ZqPostulante.RecordCount > 0 then
    begin
      Panel_Postulantes.Enabled := False;
      PanelMovtosRP.Enabled := False;
    end;
  except
    on e:exception do
    begin
      messagedlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.message, mterror, [mbok], 0);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.frmBarra4btnCancelClick(Sender: TObject);
begin
  PanelMovtosRP.Enabled := tRUE;
  Panel_Postulantes.Enabled := TRue;
end;

procedure TFrmCatalogoDePostulante.Imprimircartaresponsiva1Click(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_postulante_contratacion.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_postulante_contratacion.fr3 no existe, notifique al administrador del sistema');
   exit;
  end;

  zqContratacion.Active := false;
  zqContratacion.ParamByName('IdRP').AsInteger := qryRequisicionPersonal.FieldByName('IdRequisicionPersonal').AsInteger;
  zqContratacion.ParamByName('postulante').AsInteger := zqryMovtosRP.FieldByName('IidPostulante').AsInteger;
  zqContratacion.Open;
  if zqContratacion.RecordCount >0 then
  begin
    frxReport1.LoadFromFile(global_files +global_MiReporte+ '_postulante_contratacion.fr3');
    frxReport1.ShowReport();
  end;
end;

procedure TFrmCatalogoDePostulante.IMSSKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then mail.Setfocus;
end;

procedure TFrmCatalogoDePostulante.INTERBANCARIAKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then curp.SetFocus;
  if not(Key in ['0'..'9',#8]) then
  begin
    Key:=#0;
  end;
end;

procedure TFrmCatalogoDePostulante.ListView1Change(Sender: TObject;
  Item: TListItem; Change: TItemChange);
Var
  QryBusca, Query : tzquery;
  Aux, x : Integer;
begin
  try
    Query := TZQuery.Create(Self);
    Query.Connection := connection.ZConnection;
    Query.Active := False;
    if ZqPostulante.State = dsEdit then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT MAX(idMovtosCheckListItems) AS id FROM rh_movtoschecklistitems;');
      connection.QryBusca.Open;
      if connection.QryBusca.FieldValues['Id'] = null then
        begin
          Aux := 1;
        end
      else
      begin
          Aux := connection.QryBusca.FieldValues['Id'] + 1;
      end;
      x := item.Index ;

      If Listview1.Items[x].Checked = true then
      begin
        Query.SQL.Clear;
        Query.SQL.Add('INSERT INTO rh_movtoschecklistitems (idMovtosCheckListItems, IidPostulante, id_catalogoitemschecklist_doctos) ');
        Query.SQL.Add('VALUES (:Id, :IdPostulante, :CatalogoItems) ');
        Query.Params.ParamByName('Id').AsInteger := Aux;
        Query.Params.ParamByName('IdPostulante').AsInteger := zqPostulante.FieldByName('IidPostulante').AsInteger;
        Query.Params.ParamByName('CatalogoItems').AsInteger := StrToInt(Listview1.Items[x].SubItems[0]);
        Query.ExecSQL;
      end else
      begin
        //showmessage(ListView1.Items[x].Caption + intToStr(zqPostulante.FieldByName('IidPostulante').AsInteger));
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add('delete from rh_movtoschecklistitems where id_catalogoitemschecklist_doctos = :IdItem  and IidPostulante = :Postulante' ) ;
        connection.zCommand.Params.ParamByName('IdItem').AsInteger := StrToInt(Listview1.Items[x].SubItems[0]);
        connection.zCommand.Params.ParamByName('Postulante').AsInteger := zqPostulante.FieldByName('IidPostulante').AsInteger;
        connection.zCommand.ExecSQL;
      end;
    end;
  except
    on e:Evalidaciones do
    begin
      messagedlg('Aviso: '+#10+#10+e.Message, mtinformation, [mbok], 0);
    end;
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.LNACIMIENTOKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsTelefono.Setfocus;
end;

procedure TFrmCatalogoDePostulante.MAILKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then TipoPersonal.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsCiudadKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then lNacimiento.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsDomicilioKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsCiudad.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsFichaKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then dbTipoPersonal.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsItemsDoctosClick(Sender: TObject);
Var
  item : Byte ;
  QryBusca, Query : tzquery;
  Aux, x : Integer;
begin
  Query := TZQuery.Create(Self);
  Query.Connection := connection.ZConnection;
  Query.Active := False;
  if ZqPostulante.State = dsEdit then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(idMovtosCheckListItems) AS id FROM rh_movtoschecklistitems;');
    connection.QryBusca.Open;
    if connection.QryBusca.FieldValues['Id'] = null then
      begin
        Aux := 1;
      end
    else
    begin
      Aux := connection.QryBusca.FieldValues['Id'] + 1;
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.tsMaternoKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsDomicilio.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsNombreKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsPaterno.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsPaternoKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then tsMaterno.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsSueldoPactadoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
       tsAutorizaSueldo.SetFocus;
end;

procedure TFrmCatalogoDePostulante.tsTelefonoKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then Nacionalidad.Setfocus;
end;

procedure TFrmCatalogoDePostulante.tsTipoSangreKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then imss.Setfocus;
end;

procedure TFrmCatalogoDePostulante.ZqPostulanteAfterInsert(DataSet: TDataSet);
begin
  ZqPostulante.FieldValues['lSexo'] := 'MASCULINO' ;
  ZqPostulante.FieldValues['sTipoPersonal'] := 1 ;
end;

procedure TFrmCatalogoDePostulante.ZqPostulanteAfterOpen(DataSet: TDataSet);
begin
    zqPostulante.SortedFields := 'puesto';
end;

procedure TFrmCatalogoDePostulante.ZqPostulanteAfterScroll(DataSet: TDataSet);
VAR
  i : Integer;
  Item: TListItem;
begin
  try
    CxDbImageAspirante.Picture.Assign(PictureContainer1.Items.Items[0].Picture);

    zqryItemsDoctos.Active := False;
    zqryItemsDoctos.Params.ParamByName('Tipo').DataType := ftString;
    zqryItemsDoctos.Params.ParamByName('Tipo').Value :=  zqPostulante.FieldValues['sTipoPersonal'];
    zqryItemsDoctos.Open;
    ListView1.Clear;
    If zqryItemsDoctos.RecordCount > 0 Then
    Begin
      zqryItemsDoctos.First;
      While NOT zqryItemsDoctos.Eof Do
      Begin
        Item := ListView1.Items.Add;
        Item.SubItems.Add (zqryItemsDoctos.FieldValues['id_catalogoitemschecklist_doctos']);
        Item.SubItems.Add (zqryItemsDoctos.FieldValues['sDescripcion']);
        zqryItemsDoctos.Next;
      End
    End;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT id_catalogoitemschecklist_doctos AS item FROM rh_movtoschecklistitems where IidPostulante= :idPostulante;');
    connection.QryBusca.Params.ParamByName('idPostulante').Value :=  zqPostulante.FieldValues['iIdPostulante'];
    connection.QryBusca.Open;

    If connection.QryBusca.RecordCount > 0 Then
    Begin
      While NOT connection.QryBusca.Eof Do
      Begin
        i := 0;
        while i < Listview1.Items.Count do
        begin
          if strToInt(ListView1.Items[i].SubItems[0] ) = connection.QryBusca.FieldValues['item'] then
          begin
              Listview1.Items[i].Checked := true;
              break;
          end;
          i := i + 1;
        end;
        connection.QryBusca.Next;
      End
    End;
  except
    on e:exception do
    begin
      messagedlg('Ha ocurrido un error inesperado del sistema al cargar el detalle del postulante, Avise del siguiente error al administradr: '+#10+#10+'Error'+#10+#10+e.message, mterror, [mbok], 0);
    end;
  end;
end;

procedure TFrmCatalogoDePostulante.ZqPostulanteCalcFields(DataSet: TDataSet);
begin
  if ZqPostulante.RecordCount > 0 then
  begin
    if zq_puestos.locate('idcargo', ZqPostulante.Fieldbyname('iID_Puesto').asinteger,[]) then
      ZqPostulante.FieldValues['puesto'] :=  zq_puestos.FieldValues['TituloCargo'];
  end;
end;
end.
