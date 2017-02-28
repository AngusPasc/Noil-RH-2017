unit frm_ImprimeDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, frm_ConfiguracionRH,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, Jpeg,
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
  cxPC, RxRichEd, rxDBRichEd, cxRichEdit, cxDBRichEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, cxRadioGroup, cxGroupBox, ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControlAdapters, Menus, cxImage, cxButtons, cxLabel, cxCalc,
  cxListView, ExportaExcel, cxCheckBox, dxGDIPlusClasses;

type
  TfrmImprimeDocumentos = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    fsc_1: TFormAutoScaler;
    cxRadioGroup1: TcxRadioGroup;
    cxCredencial: TcxRadioButton;
    cxConstanciaSua: TcxRadioButton;
    cxPageDatos: TcxPageControl;
    cxPage1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxCredencialFolio: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxCredencialNombres: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxCredencialApellidos: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxCredencialPuesto: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxCredencialCURP: TcxTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxCredencialTipoSangre: TcxTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxCredencialVigencia: TcxDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxCredencialNombreC: TcxTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxPage2: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxSUANombre: TcxTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxSUAIfe: TcxTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxSUAPuesto: TcxTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxSUAFechaI: TcxDateEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxSUAVacacionesInicio: TcxDateEdit;
    dxLVacacionesI: TdxLayoutItem;
    cxSUAVacacionesFin: TcxDateEdit;
    dxLVacacionesF: TdxLayoutItem;
    cxSUANombreFirma: TcxTextEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxSUAPuestoFirma: TcxTextEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    cxImprimeCredencial: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxImprimirSUA: TcxButton;
    dxLayoutControl3Item10: TdxLayoutItem;
    cxCredencialImagen: TcxImage;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
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
    rxCredencialesbImagen: TBlobField;
    rxCredencialessTelefonoCel_1: TStringField;
    rxCredencialesbQr_1: TBlobField;
    rxCredencialesdVigencia: TDateField;
    rxCredencialessNombre_emergencia_1: TStringField;
    rxCredencialessNumero_emergencia_1: TStringField;
    rxCredencialessApellidos_1: TStringField;
    frxDBConfiguracion: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxCredencialTierra: TfrxDBDataset;
    rxCredencialesPuestoEmpleado_1: TStringField;
    rxConstanciaSUA: TRxMemoryData;
    dsSUA: TfrxDBDataset;
    rxConstanciaSUAsRfc: TStringField;
    rxConstanciaSUAsRegistroPatronal: TStringField;
    rxConstanciaSUAsCalle: TStringField;
    rxConstanciaSUAsNumero: TStringField;
    rxConstanciaSUAsColonia: TStringField;
    rxConstanciaSUAsCiudad: TStringField;
    rxConstanciaSUAsEstado: TStringField;
    rxConstanciaSUANombre: TStringField;
    rxConstanciaSUAsIFE: TStringField;
    rxConstanciaSUAdFechaSUA: TDateField;
    rxConstanciaSUAtitulocargo: TStringField;
    rxConstanciaSUAImporte: TFloatField;
    rxConstanciaSUAdFechaVacacionesFin: TDateField;
    rxConstanciaSUAdFechaVacacionesInicio: TDateField;
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
    rxCredencialessApellidos_2: TStringField;
    rxCredencialessTelefonoCel_2: TStringField;
    rxCredencialesbQr_2: TBlobField;
    rxCredencialessNombre_emergencia_2: TStringField;
    rxCredencialessNumero_emergencia_2: TStringField;
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
    rxCredencialessTelefonoCel_3: TStringField;
    rxCredencialesbQr_3: TBlobField;
    rxCredencialessNombre_emergencia_3: TStringField;
    rxCredencialessNumero_emergencia_3: TStringField;
    rxCredencialessApellido_3: TStringField;
    cxAgregaCredencial: TcxButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    cxTotalLabel: TcxLabel;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxCredencialImss: TcxMaskEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    cxCredencialTelefonoC: TcxMaskEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxSUASueldo: TcxCalcEdit;
    dxLSUASueldo: TdxLayoutItem;
    cxPage3: TcxTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxgrdEmpleados: TcxGrid;
    G_Empleados: TcxGridDBTableView;
    cxgrdbclmnG_EmpleadossIdEmpleado1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossNombreCompleto1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossApellidoPaterno1: TcxGridDBColumn;
    cxgrdbclmnG_EmpleadossApellidoMaterno1: TcxGridDBColumn;
    Glv_EmpleadosGrid1Level1: TcxGridLevel;
    cxButton2: TcxButton;
    dxLayoutControl4Item2: TdxLayoutItem;
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
    zQEmpleadossStatusTipoPersonal: TStringField;
    zQEmpleadossStatusPersonal: TStringField;
    zQEmpleadossCalle: TStringField;
    zQEmpleadossNumero: TStringField;
    zQEmpleadossColonia: TStringField;
    zQEmpleadossEstado: TStringField;
    strngfldFolioQEmpleadossDescripcion: TStringField;
    zQEmpleadosiIdNacionalidad: TIntegerField;
    zQEmpleadossBanco: TStringField;
    strngfldQEmpleadossSucursal: TStringField;
    strngfldQEmpleadostitulocargo: TStringField;
    fltfldQEmpleadosimporte: TFloatField;
    zQEmpleadosdSueldoIntegrado: TFloatField;
    fltfldQEmpleadosdSueldoDiario: TFloatField;
    dszQEmpleados: TDataSource;
    cxRegistrados: TcxRadioButton;
    cxLista: TcxListView;
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
    frx_ReporteEmpleados: TfrxDBDataset;
    frxDBStatus: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
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
    cxCredencialDBInicio: TcxDateEdit;
    cxCredencialDBFin: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    qryEmpleadosCredencial: TZReadOnlyQuery;
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
    qryEmpleadosCredencialiIdRegistroPatronal: TIntegerField;
    qryEmpleadosCredencialiIdPeriodo: TIntegerField;
    qryEmpleadosCredencialbQR: TBlobField;
    qryEmpleadosCredencialsCalle: TStringField;
    qryEmpleadosCredencialsNumero: TStringField;
    qryEmpleadosCredencialsEstado: TStringField;
    qryEmpleadosCredencialsColonia: TStringField;
    qryEmpleadosCredencialiddepartamento: TIntegerField;
    qryEmpleadosCredencialtitulodepartamento: TStringField;
    qryEmpleadosCredencialiIdNacionalidad: TIntegerField;
    cxCredencialRFC: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    cxSUASexo: TcxComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup;
    cxSUAContratado: TcxCheckBox;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group3: TdxLayoutAutoCreatedGroup;
    cxSUAFechaF: TcxDateEdit;
    dxFechaF: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutAutoCreatedGroup;
    rxConstanciaSUAdFechasSUAF: TDateField;
    rxConstanciaSUAsSexo: TStringField;
    procedure cxCredencialClick(Sender: TObject);
    procedure cxConstanciaSuaClick(Sender: TObject);
    procedure cxImprimeCredencialClick(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure cxImprimirSUAClick(Sender: TObject);
    procedure RefrescaConfRH;
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LimpiaDatosCredencial;
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);
    procedure cxAgregaCredencialClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxRegistradosClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxPageDatosChange(Sender: TObject);
    procedure cxListaClick(Sender: TObject);
    procedure cxSUAContratadoClick(Sender: TObject);
    procedure cxCredencialImagenClick(Sender: TObject);
  private
    NetoPagar: Real;
    cdGenerales: TClientDataSet;
    YaCreado: Boolean;
    IsOpen:Boolean;
    { Private declarations }
  public
    { Public declarations }
    FechaSubida : string;
  end;

var
  frmImprimeDocumentos: TfrmImprimeDocumentos;
  periodocontrato : integer;
  utgrid:ticdbgrid;
  fechaBaja : Tdate;
  NumRec: Integer;
  Cadena: String;
  sueldot: Extended;
  sd,sueldocalculado: Double;
  i, indice, total : integer;

implementation

{$R *.dfm}

procedure TfrmImprimeDocumentos.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmImprimeDocumentos.EnterControl(Sender: TObject);
begin
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

    if (sender is tcxDateEdit) then
        tcxDateEdit(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxMaskEdit) then
        tcxMaskEdit(sender).Style.Color := global_color_entradaERP;

     if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_entradaERP;
end;

procedure TfrmImprimeDocumentos.FormShow(Sender: TObject);
begin
   indice := 1;

   zQEmpleados.Close;
   zQEmpleados.Open;

    Connection.configuracionRecHum.Active := False;
    Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
    Connection.configuracionRecHum.Open  ;
end;

procedure TfrmImprimeDocumentos.SalidaControl(Sender: TObject);
begin
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_salidaERP;

    if (sender is tcxDateEdit) then
    begin
        tcxDateEdit(sender).Style.Color := global_color_SalidaERP;
        if cxSUAVacacionesFin.Date < cxSUAVacacionesInicio.Date then
           messageDLG('La Fecha Final es menor la fecha de inicio!', mtInformation, [mbOk],0);
    end;

    if (sender is tcxMaskEdit) then
        tcxMaskEdit(sender).Style.Color := global_color_SalidaERP;

    if (sender is tcxCalcEdit) then
        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmImprimeDocumentos.cxAgregaCredencialClick(Sender: TObject);
Var
  S : TMemoryStream;
begin
    if rxCredenciales.Active = False  then
       rxCredenciales.Active := True;

    if (cxCredencialVigencia.Date > date()) then
    begin
        indice := 1;

        rxCredenciales.Insert;

        rxCredenciales.Edit;
        rxCredenciales.FieldValues['sIdEmpleado_'+inttostr(indice)]     := cxCredencialfolio.Text;
        rxCredenciales.FieldValues['sNombreCompleto_'+inttostr(indice)] := cxCredencialNombres.Text;
        rxCredenciales.FieldValues['sApellidos_'+inttostr(indice)]      := cxCredencialApellidos.Text;
        rxCredenciales.FieldValues['sRfc_'+inttostr(indice)]            := cxCredencialRFC.Text;
        rxCredenciales.FieldValues['sDomicilio_'+inttostr(indice)]      := '';
        rxCredenciales.FieldValues['sCiudad_'+inttostr(indice)]         := '';
        rxCredenciales.FieldValues['sPuesto_'+inttostr(indice)]         := cxCredencialPuesto.Text;
        rxCredenciales.FieldValues['PuestoEmpleado_'+inttostr(indice)]  := cxCredencialPuesto.Text;
        rxCredenciales.FieldValues['sTelefono_'+inttostr(indice)]       := '';
        rxCredenciales.FieldValues['sTelefonoCel_'+inttostr(indice)]    := '';
        rxCredenciales.FieldValues['sCurp_'+inttostr(indice)]           := cxCredencialCurp.Text;
        rxCredenciales.FieldValues['sImss_'+inttostr(indice)]           := cxCredencialImss.Text;
        rxCredenciales.FieldValues['sTipoSangre_'+inttostr(indice)]     := cxCredencialTipoSangre.Text;
        // rxCredenciales.FieldValues['bImagen_']         := cxCredencialImagen.Picture
        rxCredenciales.FieldValues['bQR_'+inttostr(indice)]             := '';
        rxCredenciales.FieldValues['sNombre_emergencia_'+inttostr(indice)] := cxCredencialNombreC.Text;
        rxCredenciales.FieldValues['sNumero_emergencia_'+inttostr(indice)] := cxCredencialTelefonoC.Text;
        rxCredenciales.FieldValues['dVigencia']         := cxCredencialVigencia.Date;

        try
          S := TMemoryStream.Create;
          try
            cxCredencialImagen.Picture.Graphic.SaveToStream(S);
            S.Position := -1;
            TBlobField(rxCredenciales.FieldByName('bImagen_'+inttostr(indice))).LoadFromStream(S);
          Except
          end;
        finally
          S.Free;
        end;

        inc(total);
        cxTotalLabel.Caption := 'Total Agregados ('+intToStr(total)+')';
        LimpiaDatosCredencial;

        if indice = 4 then
           rxCredenciales.Post;
    end
    else
      ShowMessage('Debe introducir una fecha que sea mayor a la Fecha Actual');
end;

procedure TfrmImprimeDocumentos.cxButton1Click(Sender: TObject);
begin
    //Esto es par refrescar antes de imprimir las credenciales la conf. de RH
    rxCredenciales.EmptyTable;
    total  := 0;
    indice := 1;
    LimpiaDatosCredencial;
    cxTotalLabel.Caption := 'Total Agregados ('+intToStr(0)+')';
end;

procedure TfrmImprimeDocumentos.cxButton2Click(Sender: TObject);
Var
  mybitmap, newbit: TBitMap;
  QryBusca: TZQuery;

  S : TMemoryStream;
  i : Integer;
  SavePlace: TBookmark;
  iGrid, ncount: Integer;
  empl: String;
begin
    if cxLista.ItemIndex = 0 then
    begin
        if not FileExists(global_files + global_miReporte + '_Datos_Generales.fr3') then
        begin
         showmessage('El archivo de reporte '+global_Mireporte+'_Datos_Generales.fr3 no existe, notifique al administrador del sistema');
             exit;
        end;

       if cdStatus.active then
          cdStatus.EmptyDataSet
       else
       begin
          cdStatus.CreateDataSet;
          cdStatus.Open;
       end;
       ExportarPDF(G_Empleados, cdStatus);
       cdStatus.IndexFieldNames:='idorganizacion';
       frxReport1.LoadFromFile(global_files + global_miReporte + '_Datos_Generales.fr3') ;
       frxReport1.ShowReport() ;
    end;


    if cxLista.ItemIndex = 1 then
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
        ExportarPDF(G_Empleados, cdStatus);
        cdStatus.IndexFieldNames:='iId_Puesto';
        frxReport1.LoadFromFile(global_files + global_MiReporte+ '_ReporteEmpleados.fr3') ;
        frxReport1.ShowReport() ;
    end;

    if cxLista.ItemIndex = 3 then
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


        if (cxCredencialDBFin.Date > cxCredencialDBInicio.Date) then
        begin
          frxDBConfiguracion.DataSet.Refresh;

          ncount:=G_Empleados.DataController.GetSelectedCount;

          if ncount = 0 then
          begin
             messageDLg('Seleccione uno o mas empleados!', mtInformation, [mbOk], 0);
             exit;
          end;

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
          SavePlace := G_Empleados.DataController.DataSource.DataSet.GetBookmark;

            with G_Empleados.DataController.DataSource.DataSet do
            for iGrid := 0 to ncount - 1 do
            begin
              empl:=G_Empleados.Controller.SelectedRows[iGrid].Values[0];
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
                rxCredenciales.FieldValues['dVigencia'] :=  cxCredencialDBFin.Date;
                if i>3 then
                begin
                  try
                      S := TMemoryStream.Create;
                      try
                        cxCredencialImagen.Picture.Graphic.SaveToStream(S);
                        S.Position := -1;
                        TBlobField(rxCredenciales.FieldByName('bImagen_'+inttostr(indice))).LoadFromStream(S);
                      Except
                      end;
                    finally
                      S.Free;
                    end;

                end;
                rxCredenciales.Post;
                qryEmpleadosCredencial.Next;
                if qryEmpleadosCredencial.Eof then Break;
              end;
            end;
              frxReport1.LoadFromFile(global_files + global_Mireporte + '_CredencialTierra.fr3');
              frxReport1.ShowReport();
            end;
        end
        else
          ShowMessage('Debe introducir una fecha que sea mayor a la fecha de inicio');
    end;

    if cxLista.ItemIndex = 2 then
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

end;

procedure TfrmImprimeDocumentos.cxConstanciaSuaClick(Sender: TObject);
begin
    cxPage3.Visible := False;
    cxPage2.Visible := true;
    cxPage1.Visible := false;
    cxPageDatos.ActivePageIndex := 1;
end;

procedure TfrmImprimeDocumentos.cxCredencialClick(Sender: TObject);
begin
    cxPage3.Visible := False;
    cxPage2.Visible := False;
    cxPage1.Visible := True;
    cxPageDatos.ActivePageIndex := 0;
end;

procedure TfrmImprimeDocumentos.cxCredencialImagenClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    cxCredencialImagen.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TfrmImprimeDocumentos.cxImprimeCredencialClick(Sender: TObject);
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

    RefrescaConfRH;
    frxReport1.LoadFromFile(global_files + global_Mireporte + '_CredencialTierra.fr3');
    frxReport1.ShowReport();
end;

procedure TfrmImprimeDocumentos.cxImprimirSUAClick(Sender: TObject);
begin
 if not FileExists(global_files + global_miReporte + '_ConstanciaSUA.fr3') then
   begin
    showmessage('El archivo de reporte '+global_Mireporte+'_ConstanciaSUA.fr3 no existe, notifique al administrador del sistema');
    exit;
   end;
   

   RefrescaConfRH;

    rxConstanciaSUA.Active := True;
    rxConstanciaSUA.EmptyTable;

    rxConstanciaSUA.Edit;
    rxConstanciaSUA.FieldValues['sRfc']              := '';
    rxConstanciaSUA.FieldValues['sRegistroPatronal'] := '';
    rxConstanciaSUA.FieldValues['sCalle']            := '';
    rxConstanciaSUA.FieldValues['sColonia']          := '';
    rxConstanciaSUA.FieldValues['sSexo']             := cxSUASexo.Text;
    rxConstanciaSUA.FieldValues['sCiudad']           := '';
    rxConstanciaSUA.FieldValues['sEstado']           := '';
    rxConstanciaSUA.FieldValues['Nombre']            := cxSUANombre.Text;
    rxConstanciaSUA.FieldValues['sIFE']              := cxSUAIfe.Text;
    rxConstanciaSUA.FieldValues['dFechaSUAI']        := cxSUAFechaI.Date;
    rxConstanciaSUA.FieldValues['dFechaSUAF']        := cxSUAFechaF.Date;
    rxConstanciaSUA.FieldValues['titulocargo']       := cxSUAPuesto.Text;
    rxConstanciaSUA.FieldValues['Importe']           := cxSUASueldo.Text;
    rxConstanciaSUA.FieldValues['dFechaVacacionesFin']    := cxSUAVacacionesInicio.Date;
    rxConstanciaSUA.FieldValues['dFechaVacacionesInicio'] := cxSUAVacacionesFin.Date;
    rxConstanciaSUA.Post;

    if cxSUAContratado.Checked then
       frxReport1.LoadFromFile( global_files + global_miReporte+'_ConstanciaSUA.fr3' )
    else
       frxReport1.LoadFromFile( global_files + global_miReporte+'_ConstanciaSUA_Constancia.fr3' );

   frxReport1.ShowReport();
end;

procedure TfrmImprimeDocumentos.cxListaClick(Sender: TObject);
begin
    Label1.Visible := False;
    Label2.Visible := False;
    cxCredencialDBInicio.Visible := False;
    cxCredencialDBFin.Visible    := False;

    if cxLista.ItemIndex = 3 then
    begin
       Label1.Visible := True;
       Label2.Visible := True;
       cxCredencialDBInicio.Visible := True;
       cxCredencialDBFin.Visible := True;

       if cxCredencialDBInicio.Text = '' then
       begin
           cxCredencialDBInicio.Date := date;
           cxCredencialDBFin.Date    := date + 30;
       end;
       
    end;
end;

procedure TfrmImprimeDocumentos.cxPageDatosChange(Sender: TObject);
begin
    cxLista.Enabled := False;
    if cxPageDatos.ActivePageIndex = 0 then
       cxCredencial.Checked := True;

    if cxPageDatos.ActivePageIndex = 1 then
       cxConstanciaSUA.Checked := True;

    if cxPageDatos.ActivePageIndex = 2 then
    begin
       cxRegistrados.Checked := True;
       cxLista.Enabled := True;
    end;

end;

procedure TfrmImprimeDocumentos.cxRegistradosClick(Sender: TObject);
begin
    cxPage3.Visible := True;
    cxPage2.Visible := False;
    cxPage1.Visible := False;
    cxPageDatos.ActivePageIndex := 2;
    cxLista.Enabled := True;
end;

procedure TfrmImprimeDocumentos.cxSUAContratadoClick(Sender: TObject);
begin
    dxLVacacionesI.Visible := True;
    dxLVacacionesF.Visible := True;
    dxFechaF.Visible := False;
    dxLSUASueldo.Visible   := True;
    if cxSUAContratado.Checked = False then
    begin
       dxFechaF.Visible := True;
       dxLVacacionesI.Visible := False;
       dxLVacacionesF.Visible := False;
       dxLSUASueldo.Visible   := False;
    end;
end;

procedure TfrmImprimeDocumentos.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin

  if VarName = 'FechaVigencia' then
      if cxpageDatos.ActivePageIndex = 0 then
         Value := UpperCase(FormatDateTime('dd-mm-yyyy',cxCredencialVigencia.Date))
      else
         Value := UpperCase(FormatDateTime('dd-mm-yyyy',cxCredencialDBFin.Date));

  if VarName = 'Hoy' then
     Value := UpperCase(FormatDateTime('dd', Now) + ' DE ' + esMes(StrToInt(FormatDateTime('mm', Now))) + ' DE ' + FormatDateTime('yyyy', Now));

  if VarName = 'Firma_rh' then
     Value := cxSUANombrefirma.Text ;

  if VarName = 'Puesto_rh' then
     Value := cxSUAPuestofirma.Text;

   if varName = 'SueldoLetras' then
     if cxSUASueldo.Text <> '' then
        value := UpperCase(LetrasNumeros(StrToFloat(cxSUASueldo.Text), 'PESOS', '/100 M.N.', 2))
     else
        value  := '';

end;

procedure TfrmImprimeDocumentos.RefrescaConfRH;
begin
    Connection.configuracionRecHum.Active := False;
    Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
    Connection.configuracionRecHum.Open;

    frxDBConfiguracion.DataSet.Refresh;
end;

procedure TfrmImprimeDocumentos.LimpiaDatosCredencial;
begin
    cxCredencialFolio.Text := '';
    cxCredencialnombres.Text := '';
    cxCredencialApellidos.Text := '';
    cxCredencialPuesto.Text := '';
    cxCredencialImss.Text := '';
    cxCredencialCurp.Text := '';
    cxCredencialTipoSangre.Text := '';
    cxCredencialNombreC.Text := '';
    cxCredencialTelefonoC.Text := '';
    cxCredencialImagen.Clear;
    cxCredencialRFc.Text := '';
    cxCredencialFolio.SetFocus;
end;

//DESCOMPOSICION DE MULTIVALUADOS


end.
