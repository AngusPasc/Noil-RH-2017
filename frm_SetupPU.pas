unit frm_SetupPU;

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
  cxDBFilterControl, FormAutoScaler, cxLabel;

type
  TfrmSetupPu = class(TForm)
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
    btnGuardar: TcxButton;
    btnSalir: TcxButton;
    configuracion: TZQuery;
    ds_configuracion: TDataSource;
    OpenPicture: TOpenPictureDialog;
    cxGroupBox3: TcxGroupBox;
    dbExplosion : TDBComboBox ;
    TSNombreCorto: TcxDBTextEdit;
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
    zqconfiguracionsAlmcon: TStringField;
    cxAlmCont: TcxComboBox;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxlbl8: TcxLabel;
    tsCi: TcxDBTextEdit;
    tsFinanc: TcxDBTextEdit;
    tsUtilidad: TcxDBTextEdit;
    tsCargosAdic: TcxDBTextEdit;
    tsOtrosCa: TcxDBTextEdit;
    tsSimbolo: TcxDBTextEdit;
    cxlbl9: TcxLabel;
    cblCalculaPU: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure bImagenClick(Sender: TObject);


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
    procedure tsCiKeyPress(Sender: TObject; var Key: Char);
    procedure tsCiEnter(Sender: TObject);
    procedure tsCiExit(Sender: TObject);
    procedure tsFinancKeyPress(Sender: TObject; var Key: Char);
    procedure tsFinancEnter(Sender: TObject);
    procedure tsFinancExit(Sender: TObject);
    procedure tsUtilidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsUtilidadEnter(Sender: TObject);
    procedure tsUtilidadExit(Sender: TObject);
    procedure tsCargosAdicEnter(Sender: TObject);
    procedure tsCargosAdicExit(Sender: TObject);
    procedure tsCargosAdicKeyPress(Sender: TObject; var Key: Char);
    procedure tsOtrosCaKeyPress(Sender: TObject; var Key: Char);
    procedure tsOtrosCaEnter(Sender: TObject);
    procedure tsOtrosCaExit(Sender: TObject);
    procedure tsSimboloKeyPress(Sender: TObject; var Key: Char);
    procedure tsSimboloEnter(Sender: TObject);
    procedure tsSimboloExit(Sender: TObject);
    procedure cblCalculaPUEnter(Sender: TObject);
    procedure cblCalculaPUExit(Sender: TObject);

  private
    { Private declarations }
    procedure IniciaConf;
  public
    { Public declarations }
  end;

var
  frmSetupPu: TfrmSetupPu;
  sOldNumDigitos : string;
implementation

{$R *.dfm}

procedure TfrmSetupPu.bImagenClick(Sender: TObject);
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

procedure TfrmSetupPu.btnGuardarClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  error:boolean ;
begin
  if configuracion.State = dsEdit then
  begin
    error:=False;


    {begin
      MessageDlg('“Registros incompletos”: Debe ingresar todos los datos para poder  salvar', mtinformation,[mbOK],0 );
      error := True;
    end;  }

    if error = False then
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

        Configuracion.FieldByName('sAlmcon').AsString          := cxAlmCont.Text ;
        configuracion.Post;

        connection.configuracion.refresh;
        configuracion.Close;
        Close;
    end;

  end;

end;


procedure TfrmSetupPu.btnSalirClick(Sender: TObject);
begin
  if configuracion.State = dsEdit then
    configuracion.Cancel;
  configuracion.Close;
  Close;
end;

procedure TfrmSetupPu.cblCalculaPUEnter(Sender: TObject);
begin
  cblCalculaPu.Color := Global_Color_EntradaERP;
end;

procedure TfrmSetupPu.cblCalculaPUExit(Sender: TObject);
begin
 cblCalculaPu.Color := Global_Color_SalidaERP;
end;

procedure TfrmSetupPu.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  if global_contrato <> '' then
  begin
    IniciaConf;
    cxAlmCont.Text := Configuracion.FieldByName('sAlmcon').AsString   ;

    if configuracion.RecordCount > 0 then
    begin
      configuracion.Edit;
      BlobField := configuracion.FieldByName('bImagen');
      bs := configuracion.CreateBlobStream(BlobField, bmRead);
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





procedure TfrmSetupPu.sCiudadKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    tsSlogan.SetFocus;
end;



procedure TfrmSetupPu.tsCargosAdicEnter(Sender: TObject);
begin
 tsCargosAdic.Style.Color := Global_Color_EntradaERP;
end;

procedure TfrmSetupPu.tsCargosAdicExit(Sender: TObject);
begin
   tsCargosAdic.Style.Color := Global_Color_SalidaERP;
end;

procedure TfrmSetupPu.tsCargosAdicKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
       tsOtrosCa.SetFocus ;
end;

procedure TfrmSetupPu.tsCiEnter(Sender: TObject);
begin
 tsCi.Style.Color := Global_Color_EntradaERP;
end;

procedure TfrmSetupPu.tsCiExit(Sender: TObject);
begin
 tsCi.Style.Color := Global_Color_SalidaERP;
end;

procedure TfrmSetupPu.tsCiKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    tsFinanc.setFocus;
end;

procedure TfrmSetupPu.tsCiudadEnter(Sender: TObject);
begin
  tsCiudad.Style.Color := Global_Color_EntradaERP ;
end;

procedure TfrmSetupPu.tsCiudadExit(Sender: TObject);
begin
  tsCiudad.Style.Color := Global_color_SalidaERP ;
end;

procedure TfrmSetupPu.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   tsSlogan.SetFocus ;
end;

procedure TfrmSetupPu.tsDireccion1Enter(Sender: TObject);
begin
   tsDireccion1.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsDireccion1Exit(Sender: TObject);
begin
   tsDireccion1.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsDireccion1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13  then
 tsDireccion2.SetFocus;
end;

procedure TfrmSetupPu.tsDireccion2Enter(Sender: TObject);
begin
 tsDireccion2.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsDireccion2Exit(Sender: TObject);
begin
 tsDireccion2.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsDireccion2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 tsciudad.SetFocus;

end;

procedure TfrmSetupPu.tsEmailEnter(Sender: TObject);
begin
 tsEmail.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsEmailExit(Sender: TObject);
begin
 tsEmail.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsEmailKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   tsRepresentante.SetFocus;
end;

procedure TfrmSetupPu.tsFaxEnter(Sender: TObject);
begin
 tsFax.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsFaxExit(Sender: TObject);
begin
 tsFax.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsFaxKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsWeb.SetFocus;
end;

procedure TfrmSetupPu.tsFinancEnter(Sender: TObject);
begin
  tsFinanc.Style.Color := Global_Color_EntradaERP;
end;

procedure TfrmSetupPu.tsFinancExit(Sender: TObject);
begin
   tsFinanc.Style.Color := Global_Color_SalidaERP;
end;

procedure TfrmSetupPu.tsFinancKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   tsUtilidad.SetFocus ;
end;

procedure TfrmSetupPu.TSNombreCortoEnter(Sender: TObject);
begin
 tsNombreCorto.Style.Color := global_color_entradaERP
end;

procedure TfrmSetupPu.TSNombreCortoExit(Sender: TObject);
begin
  tsNombreCorto.Style.Color := Global_Color_SalidaERP
end;

procedure TfrmSetupPu.TSNombreCortoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  tsnombre.SetFocus;
end;

procedure TfrmSetupPu.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Style.Color := Global_Color_EntradaERP ;
end;

procedure TfrmSetupPu.tsNombreExit(Sender: TObject);
begin
 tsNombre.Style.Color := Global_Color_SalidaERP ;
end;

procedure TfrmSetupPu.tsNombreKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 tsrfc.SetFocus;
end;

procedure TfrmSetupPu.tsOtrosCaEnter(Sender: TObject);
begin
  tsOtrosCa.Style.Color := Global_color_EntradaERP;
end;

procedure TfrmSetupPu.tsOtrosCaExit(Sender: TObject);
begin
  tsOtrosCa.Style.Color := Global_color_SalidaERP;
end;

procedure TfrmSetupPu.tsOtrosCaKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
          tsSimbolo.SetFocus ;
end;

procedure TfrmSetupPu.tsPiePaginaEnter(Sender: TObject);
begin
 tsPiePagina.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsPiePaginaExit(Sender: TObject);
begin
 tsPiePagina.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsPiePaginaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsTelefono.SetFocus;
end;


procedure TfrmSetupPu.tsRepKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsNombreCorto.SetFocus;
end;

procedure TfrmSetupPu.tsRepresentanteEnter(Sender: TObject);
begin
 tsRepresentante.Style.Color := Global_color_entradaERP ;
end;

procedure TfrmSetupPu.tsRepresentanteExit(Sender: TObject);
begin
 tsRepresentante.Style.Color := Global_color_salidaERP ;
end;

procedure TfrmSetupPu.tsRepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  if key= #13 then
    tsNombreCorto.SetFocus ;
end;

procedure TfrmSetupPu.tsRfcEnter(Sender: TObject);
begin
 tsRfc.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsRfcExit(Sender: TObject);
begin
 tsRfc.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsRfcKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
    tsdireccion1.SetFocus;
end;

procedure TfrmSetupPu.tsSimboloEnter(Sender: TObject);
begin
 tsSimbolo.Style.Color := Global_Color_EntradaERP;
end;

procedure TfrmSetupPu.tsSimboloExit(Sender: TObject);
begin
  tsSimbolo.Style.Color := Global_Color_SalidaERP;
end;

procedure TfrmSetupPu.tsSimboloKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   cblCalculaPu.SetFocus ;
end;

procedure TfrmSetupPu.tsSloganEnter(Sender: TObject);
begin
 tsSlogan.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsSloganExit(Sender: TObject);
begin
 tsSlogan.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsSloganKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsPiePagina.SetFocus;
end;

procedure TfrmSetupPu.tsTelefonoEnter(Sender: TObject);
begin
 tsTelefono.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsTelefonoExit(Sender: TObject);
begin
 tsTelefono.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsTelefonoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   tsFax.SetFocus;
end;

procedure TfrmSetupPu.tsUtilidadEnter(Sender: TObject);
begin
    tsUtilidad.Style.Color := Global_Color_EntradaERP;
end;

procedure TfrmSetupPu.tsUtilidadExit(Sender: TObject);
begin
     tsUtilidad.Style.Color := Global_Color_SalidaERP;
end;

procedure TfrmSetupPu.tsUtilidadKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     tsCargosAdic.SetFocus;
end;

procedure TfrmSetupPu.tsWebEnter(Sender: TObject);
begin
 tsweb.style.color := global_color_entradaERP
end;

procedure TfrmSetupPu.tsWebExit(Sender: TObject);
begin
  tsweb.style.color := global_color_salidaERP
end;

procedure TfrmSetupPu.tsWebKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 tsEmail.SetFocus;
end;

procedure TfrmSetupPu.IniciaConf;
begin
    configuracion.Active := False;
    configuracion.Params.ParamByName('contrato').DataType := ftString;
    configuracion.Params.ParamByName('contrato').Value := global_contrato;
    configuracion.Open  ;
end;

end.
