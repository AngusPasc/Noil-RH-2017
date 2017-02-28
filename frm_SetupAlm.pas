unit frm_SetupAlm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, cxGroupBox, cxPC, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, Menus, cxButtons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, global, frm_connection,
  ExtDlgs, cxPCdxBarPopupMenu, dxGDIPlusClasses, cxFilterControl,
  cxDBFilterControl, FormAutoScaler;

type
  TfrmSetupAlm = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    bImagen: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label97: TLabel;
    Label12: TLabel;
    Label86: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label113: TLabel;
    cxGroupBox4: TcxGroupBox;
    Label128: TLabel;
    Label123: TLabel;
    edtNumReq: TcxDBCalcEdit;
    Label124: TLabel;
    Label129: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    edtNumOdc: TcxDBCalcEdit;
    btnGuardar: TcxButton;
    cxButton2: TcxButton;
    configuracion: TZQuery;
    ds_configuracion: TDataSource;
    OpenPicture: TOpenPictureDialog;
    dbConsecutivoReq: TcxDBCalcEdit;
    Label1: TLabel;
    dbConsecutivoCom: TcxDBCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbNumSal: TcxDBCalcEdit;
    Label6: TLabel;
    dbConsecutivoSal: TcxDBCalcEdit;
    ResulE1: TEdit;
    VistaPrevia: TLabel;
    lbl1: TLabel;
    ResulE2: TEdit;
    lbl3: TLabel;
    ResulE3: TEdit;
    cxGroupBox3: TcxGroupBox;
    dbExplosion : TDBComboBox ;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    dbPrefijoSal: TcxDBTextEdit;
    cxConfReq: TcxComboBox;
    TSNombreCorto: TcxDBTextEdit;
    TSeddiaseie: TcxDBTextEdit;
    TSedanexos: TcxDBTextEdit;
    edtReqOdc: TcxDBTextEdit;
    edtPreReq: TcxDBTextEdit;
    zqconfiguracionsContrato: TStringField;
    zqconfiguracionsNombre: TStringField;
    zqconfiguracionsNombreCorto: TStringField;
    zqconfiguracionsRfc: TStringField;
    zqconfiguracionsDireccion1: TStringField;
    zqconfiguracionsDireccion2: TStringField;
    zqconfiguracionsDireccion3: TStringField;
    zqconfiguracionsCiudad: TStringField;
    zqconfiguracionsSlogan: TStringField;
    zqconfiguracionsPiePagina: TStringField;
    configuracionbImagen: TBlobField;
    zqconfiguracionsTelefono: TStringField;
    zqconfiguracionsFax: TStringField;
    zqconfiguracionsEmail: TStringField;
    zqconfiguracionsRepresentanteObra: TStringField;
    zqconfiguracionsWeb: TStringField;
    zqconfiguracionlLicencia: TStringField;
    zqconfiguracioncStatusProceso: TStringField;
    zqconfiguracioncStatusSuspendida: TStringField;
    zqconfiguracioncStatusTerminada: TStringField;
    zqconfiguracionsIdDepartamento: TStringField;
    zqconfiguracionsIdEmbarcacion: TStringField;
    intgrfldconfiguracioniRedondeoMaterial: TIntegerField;
    intgrfldconfiguracioniRedondeoEquipo: TIntegerField;
    intgrfldconfiguracioniRedondeoPersonal: TIntegerField;
    intgrfldconfiguracioniRedondeoEmbarcacion: TIntegerField;
    zqconfiguracionsRangoAjusteMenor: TStringField;
    zqconfiguracionsRangoAjusteMayor: TStringField;
    zqconfiguracionsTipoContrato: TStringField;
    zqconfiguracionsRangoEstimacion: TStringField;
    zqconfiguracionsTipoPartida: TStringField;
    zqconfiguracionlCalculaFecha: TStringField;
    zqconfiguracionsTipoOperacion: TStringField;
    zqconfiguracionsTipoAlcance: TStringField;
    zqconfiguracionsTipoCIA: TStringField;
    zqconfiguracionlAutomatico: TStringField;
    intgrfldconfiguracioniIncremento: TIntegerField;
    zqconfiguracionsDuracion: TStringField;
    zqconfiguracionsReporteDiario: TStringField;
    zqconfiguracionsGerencial: TStringField;
    zqconfiguracionsIsometricos: TStringField;
    zqconfiguracionsHost: TStringField;
    zqconfiguracionsFolder: TStringField;
    zqconfiguracionsViewIsometrico: TStringField;
    zqconfiguracioniFirmas: TStringField;
    zqconfiguracionlExporta: TStringField;
    zqconfiguracionsTipoSeguridad: TStringField;
    zqconfiguracionsFirmasElectronicas: TStringField;
    zqconfiguracionsTipsInicial: TStringField;
    zqconfiguracionlComentariosReporte: TStringField;
    zqconfiguracionsFotografias: TStringField;
    zqconfiguracionlIncluyeGrafica: TStringField;
    zqconfiguracionlIncluyeAvanceOrdenes: TStringField;
    zqconfiguracionlIncluyeAvanceContrato: TStringField;
    intgrfldconfiguracioniMeses: TIntegerField;
    zqconfiguracionlDistribucion: TStringField;
    zqconfiguracionsFasePrincipal: TStringField;
    fltfldconfiguraciondRetencion: TFloatField;
    fltfldconfiguraciondPenaConvencional: TFloatField;
    zqconfiguracionsBaseCalculo: TStringField;
    zqconfiguracionsImporteRetencion: TStringField;
    zqconfiguracionsTipoAjusteCosto: TStringField;
    zqconfiguracionsAvanceInicial: TStringField;
    zqconfiguracionsAvanceAnterior: TStringField;
    zqconfiguracionsFormato: TStringField;
    intgrfldconfiguracioniConsecutivo: TIntegerField;
    zqconfiguracionlImprimeExtraordinario: TStringField;
    zqconfiguracionsAvanceBitacora: TStringField;
    zqconfiguracionsClaveTierra: TStringField;
    zqconfiguracionsClaveSeguridad: TStringField;
    zqconfiguracionsIdPernocta: TStringField;
    zqconfiguracionsImprimePEP: TStringField;
    zqconfiguracionsImpresionPaquetes: TStringField;
    zqconfiguracionsOrdenExtraordinaria: TStringField;
    zqconfiguracionsIdFase: TStringField;
    intgrfldconfiguracioniLongActividad: TIntegerField;
    zqconfiguracionlCalculoPonderado: TStringField;
    zqconfiguracionsBaseGeneracion: TStringField;
    zqconfiguracionsTipoGeneracion: TStringField;
    zqconfiguracionsSeguridadGenerador: TStringField;
    zqconfiguracionsTipoEstimacion: TStringField;
    zqconfiguracionsTerminoPenalizacion: TStringField;
    zqconfiguracionsIdConvenio: TStringField;
    zqconfiguracionsPartidaEfectiva: TStringField;
    zqconfiguracionsOrdenPerEq: TStringField;
    intgrfldconfiguracioniReportesSinValid: TIntegerField;
    zqconfiguracionsClaveDevolucion: TStringField;
    zqconfiguracionsDevolucion: TStringField;
    zqconfiguracionsMedida: TStringField;
    zqconfiguraciontxtValidaMaterial: TStringField;
    zqconfiguraciontxtMaterialAutomatico: TStringField;
    zqconfiguracionsIdAnexo: TStringField;
    zqconfiguracionsPaquete: TStringField;
    zqconfiguracionsProteccion: TStringField;
    fltfldconfiguracioniJLunes: TFloatField;
    fltfldconfiguracioniJMartes: TFloatField;
    fltfldconfiguracioniJMiercoles: TFloatField;
    fltfldconfiguracioniJJueves: TFloatField;
    fltfldconfiguracioniJViernes: TFloatField;
    fltfldconfiguracioniJSabado: TFloatField;
    fltfldconfiguracioniJDomingo: TFloatField;
    zqconfiguracionlAsistencia: TStringField;
    zqconfiguracionsIdGuardia: TStringField;
    zqconfiguracionsFalta: TStringField;
    zqconfiguracionsEquipoSeguridad: TStringField;
    zqconfiguracionsPersonalIndependiente: TStringField;
    zqconfiguracionsCampPerf: TStringField;
    zqconfiguracionsMostrarAvances: TStringField;
    zqconfiguracionlProrrateo: TStringField;
    zqconfiguracionsGenDesp: TStringField;
    zqconfiguracionsAnexos: TStringField;
    zqconfiguracionsFormatoCliente: TStringField;
    zqconfiguracioniFirmasReportes: TStringField;
    zqconfiguracioniFirmasGeneradores: TStringField;
    zqconfiguracioniFirmasBarco: TStringField;
    zqconfiguracioniFirmasEstimaciones: TStringField;
    zqconfiguracionsLeyenda1: TStringField;
    zqconfiguracionsLeyenda2: TStringField;
    zqconfiguracionsLeyenda3: TStringField;
    fltfldconfiguraciondCostoDirecto: TFloatField;
    fltfldconfiguraciondCostoIndirectos: TFloatField;
    fltfldconfiguraciondFinanciamiento: TFloatField;
    fltfldconfiguraciondUtilidad: TFloatField;
    fltfldconfiguraciondCargosAdicionales: TFloatField;
    fltfldconfiguraciondCargosAdicionales2: TFloatField;
    fltfldconfiguraciondCargosAdicionales3: TFloatField;
    zqconfiguracionlCalculaPU: TStringField;
    zqconfiguracionsSimbolo: TStringField;
    zqconfiguracionsExplosion: TStringField;
    zqconfiguracionsReportesCIA: TStringField;
    zqconfiguracionlEnviaCorreo: TStringField;
    zqconfiguracionlValidaBarco: TStringField;
    zqconfiguracionlTiempoMuertoTurnos: TStringField;
    zqconfiguracionlHistorialPartidas: TStringField;
    zqconfiguracionlBaseRelacional: TStringField;
    zqconfiguracionsFormatos: TStringField;
    zqconfiguracionsPasswordPdf: TStringField;
    zqconfiguracionsAplicaPassword: TStringField;
    zqconfiguracionlAplicaPu: TStringField;
    fltfldconfiguraciondPorcentajeHerramienta: TFloatField;
    zqconfiguracionsRepresentante: TStringField;
    zqconfiguracionsAux1: TStringField;
    zqconfiguracionsAux2: TStringField;
    zqconfiguracionlOrdenaItem: TStringField;
    zqconfiguracionlSeguridadVigencia: TStringField;
    zqconfiguracionlImprimeNotasGerenciales: TStringField;
    zqconfiguracionlAplicaAvisos: TStringField;
    zqconfiguracionlAplicaAvisosGen: TStringField;
    fltfldconfiguraciondGalones: TFloatField;
    intgrfldconfiguracioniEjercicio: TIntegerField;
    zqconfiguracionlCompanias: TStringField;
    zqconfiguracioneIva: TStringField;
    zqconfiguracionsPresidente: TStringField;
    zqconfiguracionsTitPresidente: TStringField;
    zqconfiguracionsTesorerom: TStringField;
    zqconfiguracionsTitTesorerom: TStringField;
    intgrfldconfiguracioniId_ZonaGeografica: TIntegerField;
    zqconfiguracioneEstRep: TStringField;
    intgrfldconfiguracioniNumOrdCompra: TIntegerField;
    intgrfldconfiguracioniNumReq: TIntegerField;
    zqconfiguracionsPrefijoOrdCompra: TStringField;
    zqconfiguracionsPrefijoReq: TStringField;
    zqconfiguracionsAlmPrefijoSal: TStringField;
    intgrfldconfiguracioniAlmConsecutivoReq: TIntegerField;
    intgrfldconfiguracioniAlmConsecutivoCom: TIntegerField;
    intgrfldconfiguracioniAlmConsecutivoSal: TIntegerField;
    intgrfldconfiguracioniAlmNumSal: TIntegerField;
    configuracionnDiasEqHerrCons: TSmallintField;
    configuracionnDiasAnexos: TSmallintField;
    zqconfiguracionsConfConsecutivo: TStringField;
    lbl6: TLabel;
    frmtsclr1: TFormAutoScaler;
    tsNombre: TcxDBTextEdit;
    tsRfc: TcxDBTextEdit;
    tsDireccion1: TcxDBTextEdit;
    tsDireccion2: TcxDBTextEdit;
    tsSlogan: TcxDBTextEdit;
    tsCiudad: TcxDBTextEdit;
    tsPiePagina: TcxDBTextEdit;
    tsWeb: TcxDBTextEdit;
    tsEmail: TcxDBTextEdit;
    tsFax: TcxDBTextEdit;
    tsTelefono: TcxDBTextEdit;
    TSS1: TDBEdit;
    tsRepresentante: TcxDBTextEdit;
    cxAlmCont: TcxComboBox;
    zqconfiguracionsAlmcon: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure bImagenClick(Sender: TObject);
    procedure tsGalonKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumReqKeyPress(Sender: TObject; var Key: Char);
    procedure dbConsecutivoReqKeyPress(Sender: TObject; var Key: Char);
    procedure dbConsecutivoComKeyPress(Sender: TObject; var Key: Char);
    procedure dbNumSalKeyPress(Sender: TObject; var Key: Char);

    procedure tsRfcEnter(Sender: TObject);
    procedure tsRfcExit(Sender: TObject);
    procedure tsDireccion1Enter(Sender: TObject);
    procedure tsDireccion1Exit(Sender: TObject);
    procedure tsDireccion2Enter(Sender: TObject);
    procedure tsDireccion2Exit(Sender: TObject);

    procedure tsSloganEnter(Sender: TObject);
    procedure tsSloganExit(Sender: TObject);
    procedure tsPiePaginaEnter(Sender: TObject);
    procedure tsPiePaginaExit(Sender: TObject);
    procedure tsTelefonoEnter(Sender: TObject);
    procedure tsTelefonoExit(Sender: TObject);
    procedure tsFaxEnter(Sender: TObject);
    procedure tsFaxExit(Sender: TObject);
    procedure tsWebExit(Sender: TObject);
    procedure tsWebEnter(Sender: TObject);
    procedure tsEmailEnter(Sender: TObject);
    procedure tsEmailExit(Sender: TObject);


    procedure tsRfcKeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion1KeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion2KeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure sCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure tsSloganKeyPress(Sender: TObject; var Key: Char);
    procedure tsPiePaginaKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure tsFaxKeyPress(Sender: TObject; var Key: Char);
    procedure tsWebKeyPress(Sender: TObject; var Key: Char);
    procedure tsEmailKeyPress(Sender: TObject; var Key: Char);
    procedure tsRepKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumOdcKeyPress(Sender: TObject; var Key: Char);
    function  cadenaDigitos(sParamDigitos : string) : string;
    procedure ResulE3Enter(Sender: TObject);
    procedure ResulE2Enter(Sender: TObject);
    procedure ResulE1Enter(Sender: TObject);
    procedure edtNumReqEnter(Sender: TObject);
    procedure edtNumReqExit(Sender: TObject);
    procedure dbConsecutivoReqEnter(Sender: TObject);
    procedure dbConsecutivoReqExit(Sender: TObject);

    procedure edtNumOdcExit(Sender: TObject);
    procedure edtNumOdcEnter(Sender: TObject);
    procedure dbConsecutivoComExit(Sender: TObject);
    procedure dbConsecutivoComEnter(Sender: TObject);
    procedure dbNumSalEnter(Sender: TObject);
    procedure dbNumSalExit(Sender: TObject);
    procedure dbConsecutivoSalEnter(Sender: TObject);
    procedure dbConsecutivoSalExit(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure edtNumReqPropertiesChange(Sender: TObject);
    procedure dbNumSalPropertiesChange(Sender: TObject);
    procedure edtNumOdcPropertiesChange(Sender: TObject);
    procedure dbConsecutivoReqPropertiesChange(Sender: TObject);
    procedure dbConsecutivoSalPropertiesChange(Sender: TObject);
    procedure dbConsecutivoComPropertiesChange(Sender: TObject);
    procedure edtReqOdcKeyPress(Sender: TObject; var Key: Char);
    procedure edtReqOdcExit(Sender: TObject);
    procedure edtReqOdcEnter(Sender: TObject);
    procedure edtPreReqKeyPress(Sender: TObject; var Key: Char);
    procedure edtPreReqEnter(Sender: TObject);
    procedure edtPreReqExit(Sender: TObject);
    procedure eddbPrefijoSalKeyPress(Sender: TObject; var Key: Char);
    procedure eddbPrefijoSalEnter(Sender: TObject);
    procedure dbPrefijoSalExit(Sender: TObject);
    procedure dbPrefijoSalEnter(Sender: TObject);
    procedure dbPrefijoSalKeyPress(Sender: TObject; var Key: Char);
    procedure TSNombreCortoKeyPress(Sender: TObject; var Key: Char);
    procedure TSNombreCortoEnter(Sender: TObject);
    procedure TSNombreCortoExit(Sender: TObject);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure tsCiudadEnter(Sender: TObject);
    procedure tsCiudadExit(Sender: TObject);
    procedure tsRepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure tsRepresentanteEnter(Sender: TObject);
    procedure tsRepresentanteExit(Sender: TObject);
    procedure InicializarConsecutivos;


  private
    { Private declarations }
    procedure IniciaConf;
  public
    { Public declarations }
  end;

var
  frmSetupAlm: TfrmSetupAlm;
  sOldNumDigitos : string;
implementation

{$R *.dfm}
Procedure TfrmSetupAlm.InicializarConsecutivos;
var
  QDeptos,QFolios:TZQuery;
begin
  QDeptos:=TZQuery.Create(nil);
  QFolios:=TZQuery.Create(nil);
  try
    QDeptos.Connection:=connection.zConnection;
    QDeptos.SQL.Text:='select * from departamentos';
    QDeptos.Open;
    QFolios.Connection:=connection.zConnection;
    QFolios.SQL.Text:='select * from foliodepartamento where sContrato=:Contrato';
    QFolios.ParamByName('Contrato').AsString:=global_contrato;
    QFolios.Open;
    while not QDeptos.Eof do
    begin
      if not QFolios.Locate('sIdDepartamento',QDeptos.FieldByName('sIdDepartamento').AsString,[]) then
      begin
        QFolios.Append;
        QFolios.FieldByName('sIdDepartamento').AsString:=QDeptos.FieldByName('sIdDepartamento').AsString;
        QFolios.FieldByName('sContrato').AsString:=global_contrato;
        QFolios.FieldByName('sCadenaTexto').AsString:=QDeptos.FieldByName('sCadenaTexto').AsString;
        QFolios.FieldByName('nConsecutivo').AsInteger:=QDeptos.FieldByName('nConsecutivo').AsInteger;
        QFolios.Post;
      end;
      QDeptos.Next;
    end;

  finally
    QDeptos.Destroy;
    QFolios.Destroy;
  end;
end;

procedure TfrmSetupAlm.bImagenClick(Sender: TObject);
begin
  if (configuracion.State = dsEdit) then
  begin
    OpenPicture.Title := 'Inserta Imagen';
    if OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName);
      except
        bImagen.Picture.LoadFromFile('');
      end
    end
  end
end;

procedure TfrmSetupAlm.btnGuardarClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  error:boolean ;
begin
  if configuracion.State = dsEdit then
  begin
    error:=False;

    if (dbConsecutivoReq.Text = '') or (edtPreReq.Text = '') or (dbConsecutivoReq.Text = '')
       or (dbPrefijoSal.Text = '') or (dbNumSal.Text = '') or (dbConsecutivoSal.Text = '')
       or (edtNumOdc.Text = '')or (edtReqOdc.Text = '') or (dbConsecutivoCom.Text = '') then

    begin
      MessageDlg('“Registros incompletos”: Debe ingresar todos los datos para poder  salvar', mtinformation,[mbOK],0 );
      error := True;
    end;

    if error = False then
    begin
      if OpenPicture.FileName<>'' then
      begin
        try
          BlobField := configuracion.FieldByName('bImagen');
          BS := configuracion.CreateBlobStream(BlobField, bmWrite);
          try
          Pic := TJpegImage.Create;
            try
              Pic.LoadFromFile(OpenPicture.FileName);
              Pic.SaveToStream(Bs);
            finally
              Pic.Free;
            end;
          finally
            bS.Free
          end
        except
        end;
      end;

      if Configuracion.FieldByName('sConfConsecutivo').AsString <> cxConfReq.Text then
        if cxConfReq.Text='CONTRATOS-DEPTOS' then
          InicializarConsecutivos;

      Configuracion.FieldByName('sConfConsecutivo').AsString := cxConfReq.Text ;
      Configuracion.FieldByName('sAlmcon').AsString          := cxAlmCont.Text ;
      configuracion.Post;

      connection.configuracion.refresh;
      configuracion.Close;
      Close;
    end;

  end;

end;


procedure TfrmSetupAlm.cxButton2Click(Sender: TObject);
begin
  if configuracion.State = dsEdit then
    configuracion.Cancel;
  configuracion.Close;
  Close;
end;

procedure TfrmSetupAlm.cxPageControl1Change(Sender: TObject);
begin
     ResulE1.OnEnter(sender);
     ResulE2.OnEnter(sender);
     ResulE3.OnEnter(sender);
end;

procedure TfrmSetupAlm.dbConsecutivoComEnter(Sender: TObject);
begin
    dbConsecutivoCom.Style.Color := global_color_entradaERP;
    sOldNumDigitos := dbConsecutivoCom.Text;
end;

procedure TfrmSetupAlm.dbConsecutivoComExit(Sender: TObject);
begin
    dbConsecutivoCom.Style.Color := global_color_salidaERP;
    ResulE2.OnEnter(sender);
end;

procedure TfrmSetupAlm.dbConsecutivoComKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  dbPrefijoSal.SetFocus;
end;

procedure TfrmSetupAlm.dbConsecutivoComPropertiesChange(Sender: TObject);
begin
    try
      if StrToInt(dbConsecutivoCom.Text) > 999999 then
      begin
          messageDLG('No se acepta un consecutivo mayor a 999,999 !',mtInformation, [mbOk], 0);
          dbConsecutivoCom.Text := sOldNumDigitos;
      end;
    Except
    end;
end;

procedure TfrmSetupAlm.dbConsecutivoReqEnter(Sender: TObject);
begin
    dbConsecutivoReq.Style.Color := global_color_entradaERP;
    sOldNumDigitos := dbConsecutivoReq.Text;
end;

procedure TfrmSetupAlm.dbConsecutivoReqExit(Sender: TObject);
begin
    dbConsecutivoReq.style.color := global_color_salidaERP;
    ResulE1.OnEnter(sender);
end;

procedure TfrmSetupAlm.dbConsecutivoReqKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   edtReqOdc.SetFocus;
end;

procedure TfrmSetupAlm.dbConsecutivoReqPropertiesChange(Sender: TObject);
begin
    try
      if StrToInt(dbConsecutivoReq.Text) > 999999 then
      begin
          messageDLG('No se acepta un consecutivo mayor a 999,999 !',mtInformation, [mbOk], 0);
          dbConsecutivoReq.Text := sOldNumDigitos;
      end;
    Except
    end;
end;

procedure TfrmSetupAlm.dbConsecutivoSalEnter(Sender: TObject);
begin
    dbConsecutivoSal.Style.Color := global_color_entradaERP;
    sOldNumDigitos := dbConsecutivoSal.Text;
end;

procedure TfrmSetupAlm.dbConsecutivoSalExit(Sender: TObject);
begin
    dbConsecutivoSal.Style.Color := global_color_salidaERP;
    ResulE3.OnEnter(sender);
end;



procedure TfrmSetupAlm.dbConsecutivoSalPropertiesChange(Sender: TObject);
begin
    try
        if StrToInt(dbConsecutivoSal.Text) > 999999 then
        begin
            messageDLG('No se acepta un consecutivo mayor a 999,999 !',mtInformation, [mbOk], 0);
            dbConsecutivoSal.Text := sOldNumDigitos;
        end;
    Except
    end;
end;

procedure TfrmSetupAlm.dbNumSalEnter(Sender: TObject);
begin
    dbNumSal.Style.Color := global_color_entradaERP;
    sOldNumDigitos       := dbNumSal.Text;
end;

procedure TfrmSetupAlm.dbNumSalExit(Sender: TObject);
begin
    dbNumSal.Style.Color := global_color_salidaERP;
    ResulE3.OnEnter(sender);
end;

procedure TfrmSetupAlm.dbNumSalKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    dbConsecutivoSal.SetFocus;
end;

procedure TfrmSetupAlm.dbNumSalPropertiesChange(Sender: TObject);
begin
    try
      if StrToInt(dbNumSal.Text) > 6 then
      begin
         messageDLG('No se aceptan más de 6 dígitos!',mtInformation, [mbOk], 0);
         dbNumSal.Text := sOldNumDigitos;
      end;
    Except
    end;
end;

procedure TfrmSetupAlm.dbPrefijoSalEnter(Sender: TObject);
begin
    dbPrefijoSal.style.Color := global_color_EntradaERP;
    ResulE3.OnEnter(sender);
end;

procedure TfrmSetupAlm.dbPrefijoSalExit(Sender: TObject);
begin
    dbPrefijoSal.style.Color := global_color_salidaERP;
    ResulE3.OnEnter(sender);
end;

procedure TfrmSetupAlm.dbPrefijoSalKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      dbNumSal.SetFocus;
end;

procedure TfrmSetupAlm.eddbPrefijoSalEnter(Sender: TObject);
begin
  dbPrefijoSal.Style.Color := global_color_entradaERP;
end;

procedure TfrmSetupAlm.eddbPrefijoSalKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
     dbNumSal.SetFocus;
end;

procedure TfrmSetupAlm.edtNumOdcEnter(Sender: TObject);
begin
    edtNumOdc.Style.color := global_color_entradaERP;
    sOldNumDigitos        := edtNumOdc.Text;
end;

procedure TfrmSetupAlm.edtNumOdcExit(Sender: TObject);
begin
    edtNumOdc.style.color := global_color_salidaERP;
    ResulE2.OnEnter(sender);
end;

procedure TfrmSetupAlm.edtNumOdcKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
dbConsecutivoCom.SetFocus;
end;

procedure TfrmSetupAlm.edtNumOdcPropertiesChange(Sender: TObject);
begin
    try
      if StrToInt(edtNumOdc.Text) > 6 then
      begin
         messageDLG('No se aceptan más de 6 dígitos!',mtInformation, [mbOk], 0);
         edtNumOdc.Text := sOldNumDigitos;
      end;
    Except
    end;
end;

procedure TfrmSetupAlm.edtNumReqEnter(Sender: TObject);
begin
    edtNumReq.Style.Color := global_color_entradaERP;
    sOldNumDigitos := edtNumReq.Text;
end;

procedure TfrmSetupAlm.edtNumReqExit(Sender: TObject);
begin
    edtNumReq.style.color := global_color_salidaERP;
    ResulE1.OnEnter(sender);
end;

procedure TfrmSetupAlm.edtNumReqKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   dbConsecutivoReq.SetFocus;
end;

procedure TfrmSetupAlm.edtNumReqPropertiesChange(Sender: TObject);
begin
    try
      if StrToInt(edtNumReq.Text) > 6 then
      begin
          messageDLG('No se aceptan más de 6 dígitos!',mtInformation, [mbOk], 0);
          edtNumReq.Text := sOldNumDigitos;
      end;
    Except
    end;
end;

procedure TfrmSetupAlm.edtPreReqEnter(Sender: TObject);
begin
 edtPreReq.Style.Color := global_color_entradaERP;
end;

procedure TfrmSetupAlm.edtPreReqExit(Sender: TObject);
begin
   edtPreReq.Style.color := global_color_salidaERP;
   ResulE1.OnEnter(sender);
end;

procedure TfrmSetupAlm.edtPreReqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtNumReq.SetFocus;
end;

procedure TfrmSetupAlm.edtReqOdcEnter(Sender: TObject);
begin
    edtReqOdc.style.Color := global_color_EntradaERP;
end;

procedure TfrmSetupAlm.edtReqOdcExit(Sender: TObject);
begin
   edtReqOdc.style.Color := global_color_salidaERP;
   ResulE2.OnEnter(sender);
end;

procedure TfrmSetupAlm.edtReqOdcKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    edtNumOdc.SetFocus;
end;

procedure TfrmSetupAlm.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if global_contrato <> '' then
  begin
    IniciaConf;
    cxConfReq.Text := Configuracion.FieldByName('sConfConsecutivo').AsString  ;
    cxAlmCont.Text := Configuracion.FieldByName('sAlmcon').AsString   ;

    if configuracion.RecordCount > 0 then
    begin
      configuracion.Edit;
      BlobField := configuracion.FieldByName('bImagen');
      BS := configuracion.CreateBlobStream(BlobField, bmRead);
      if bs.Size > 1 then
      begin
          try
          Pic := TJpegImage.Create;
          try
            Pic.LoadFromStream(bS);
            bImagen.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          bS.Free
        end
      end
      else
        bImagen.Picture.LoadFromFile('');
    end
    else
    begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.clear;
        connection.QryBusca.SQL.Add('insert into alm_configuracion (sContrato) values (:contrato)');
        connection.QryBusca.Params.ParamByName('contrato').AsString := global_contrato;
        connection.QryBusca.ExecSQL;

        IniciaConf;

        if configuracion.RecordCount > 0 then
           configuracion.Edit;
    end;
  end;
end;

procedure TfrmSetupAlm.ResulE1Enter(Sender: TObject);
begin
   try
       ResulE1.Text:= edtPreReq.Text + formatfloat(cadenaDigitos(edtNumReq.Text),dbconsecutivoReq.Value);
    Except

    end;
end;

procedure TfrmSetupAlm.ResulE2Enter(Sender: TObject);
begin
    try
       ResulE2.Text:= edtReqOdc.Text + formatfloat(cadenaDigitos(edtNumOdc.Text),dbconsecutivoCom.Value);
    Except
    end;
end;

procedure TfrmSetupAlm.ResulE3Enter(Sender: TObject);
begin
    try
       ResulE3.Text:= dbPrefijoSal.Text + formatfloat(cadenaDigitos(dbNumSal.Text),dbconsecutivoSal.Value);
    Except

    end;
end;


procedure TfrmSetupAlm.sCiudadKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsSlogan.SetFocus; 
end;



procedure TfrmSetupAlm.tsCiudadEnter(Sender: TObject);
begin
  tsCiudad.Style.Color := Global_Color_EntradaERP ;
end;

procedure TfrmSetupAlm.tsCiudadExit(Sender: TObject);
begin
  tsCiudad.Style.Color := Global_color_SalidaERP ;
end;

procedure TfrmSetupAlm.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   tsSlogan.SetFocus ;  
end;

procedure TfrmSetupAlm.tsDireccion1Enter(Sender: TObject);
begin
   tsDireccion1.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsDireccion1Exit(Sender: TObject);
begin
   tsDireccion1.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsDireccion1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13  then
 tsDireccion2.SetFocus;
end;

procedure TfrmSetupAlm.tsDireccion2Enter(Sender: TObject);
begin
 tsDireccion2.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsDireccion2Exit(Sender: TObject);
begin
 tsDireccion2.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsDireccion2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 tsciudad.SetFocus;

end;

procedure TfrmSetupAlm.tsEmailEnter(Sender: TObject);
begin
 tsEmail.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsEmailExit(Sender: TObject);
begin
 tsEmail.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsEmailKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   tsRepresentante.SetFocus;
end;

procedure TfrmSetupAlm.tsFaxEnter(Sender: TObject);
begin
 tsFax.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsFaxExit(Sender: TObject);
begin
 tsFax.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsFaxKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsWeb.SetFocus;
end;

procedure TfrmSetupAlm.tsGalonKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   edtPreReq.SetFocus;
end;


procedure TfrmSetupAlm.TSNombreCortoEnter(Sender: TObject);
begin
 tsNombreCorto.Style.Color := global_color_entradaERP
end;

procedure TfrmSetupAlm.TSNombreCortoExit(Sender: TObject);
begin
  tsNombreCorto.Style.Color := Global_Color_SalidaERP
end;

procedure TfrmSetupAlm.TSNombreCortoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  tsnombre.SetFocus;
end;

procedure TfrmSetupAlm.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Style.Color := Global_Color_EntradaERP ;
end;

procedure TfrmSetupAlm.tsNombreExit(Sender: TObject);
begin
 tsNombre.Style.Color := Global_Color_SalidaERP ;
end;

procedure TfrmSetupAlm.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 tsrfc.SetFocus;
end;

procedure TfrmSetupAlm.tsPiePaginaEnter(Sender: TObject);
begin
 tsPiePagina.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsPiePaginaExit(Sender: TObject);
begin
 tsPiePagina.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsPiePaginaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsTelefono.SetFocus; 
end;


procedure TfrmSetupAlm.tsRepKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsNombreCorto.SetFocus; 
end;

procedure TfrmSetupAlm.tsRepresentanteEnter(Sender: TObject);
begin
 tsRepresentante.Style.Color := Global_color_entradaERP ;
end;

procedure TfrmSetupAlm.tsRepresentanteExit(Sender: TObject);
begin
 tsRepresentante.Style.Color := Global_color_salidaERP ;
end;

procedure TfrmSetupAlm.tsRepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    tsNombreCorto.SetFocus ;
end;

procedure TfrmSetupAlm.tsRfcEnter(Sender: TObject);
begin
 tsRfc.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsRfcExit(Sender: TObject);
begin
 tsRfc.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsRfcKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    tsdireccion1.SetFocus;
end;

procedure TfrmSetupAlm.tsSloganEnter(Sender: TObject);
begin
 tsSlogan.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsSloganExit(Sender: TObject);
begin
 tsSlogan.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsSloganKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsPiePagina.SetFocus;
end;

procedure TfrmSetupAlm.tsTelefonoEnter(Sender: TObject);
begin
 tsTelefono.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsTelefonoExit(Sender: TObject);
begin
 tsTelefono.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   tsFax.SetFocus;
end;

procedure TfrmSetupAlm.tsWebEnter(Sender: TObject);
begin
 tsweb.style.color := global_color_entradaERP
end;

procedure TfrmSetupAlm.tsWebExit(Sender: TObject);
begin
  tsweb.style.color := global_color_salidaERP
end;

procedure TfrmSetupAlm.tsWebKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsEmail.SetFocus;
end;

function TfrmSetupAlm.cadenaDigitos(sParamDigitos: string): string;
var Numdigitos : string;
    i : integer;
begin
   Numdigitos := '';
   for i := 1 to StrToInt(sParamdigitos) do
         Numdigitos := Numdigitos+'0';
   result := Numdigitos;
end;

procedure TfrmSetupAlm.IniciaConf;
begin
    configuracion.Active := False;
    configuracion.Params.ParamByName('contrato').DataType := ftString;
    configuracion.Params.ParamByName('contrato').Value := global_contrato;
    configuracion.Open  ;
end;

end.
