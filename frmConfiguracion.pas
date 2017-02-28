unit frmConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, DB, global,Grids, DBGrids,
  Buttons, ImgList, ExtCtrls, ExtDlgs, Jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, cxControls, cxContainer,
  cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel,
  PFacturaElectronica, CFDI, PFacturaElectronica_PAC, PACFem,
  IdCoderMIME, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu, OleCtrls,
  SHDocVw,
  MSHTML, cxCheckBox, cxPCdxBarPopupMenu, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBExtLookupComboBox, dxRibbonForm, cxGroupBox,
  cxDropDownEdit, cxMemo, JvBaseDlg, JvBrowseFolder, cxCalendar, cxCalc,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray;

type
  Tfrm_ConfiguracionCont = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Puestos: TTabSheet;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label86: TLabel;
    GroupBox4: TGroupBox;
    bImagen: TImage;
    Label10: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    OpenPicture: TOpenPictureDialog;
    dbPresidente: TDBEdit;
    DBEdit5: TDBEdit;
    TSTESORERO: TDBEdit;
    TSREGHACIENDA: TDBEdit;
    TSSINDICOM: TDBEdit;
    Label22: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    TSTTITTESORERO: TDBEdit;
    Label23: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit10: TDBEdit;
    Label30: TLabel;
    dbIva: TDBCheckBox;
    Label31: TLabel;
    DBEdit1: TDBEdit;
    dsConfiguracion: TDataSource;
    frConfiguracion: TfrxDBDataset;
    tdbsIdArea: TDBLookupComboBox;
    zQProveedores: TZReadOnlyQuery;
    dszQProveedores: TDataSource;
    Label1: TLabel;
    btnCancel: TcxButton;
    BTNoK: TcxButton;
    OpenDialog1: TOpenDialog;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    ZQEstados: TZQuery;
    dsZQEstados: TDataSource;
    ZQEstadosid_Estados: TIntegerField;
    ZQEstadossClaveEstado: TStringField;
    ZQEstadossNombre: TStringField;
    cxLabel7: TcxLabel;
    dbcxDBEstado: TcxDBLookupComboBox;
    Dirbuscar1: TJvBrowseForFolderDialog;
    RutaCFDI: TSaveDialog;
    Contabilidad: TTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    IVA: TcxDBCalcEdit;
    IESPS: TcxDBCalcEdit;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxGroupBox4: TcxGroupBox;
    cxLabel2: TcxLabel;
    tsCertificados_Certificado: TcxDBButtonEdit;
    tsCertificados_Llave: TcxDBButtonEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    tsCertificados_Contrasena: TcxDBTextEdit;
    cxGroupBox5: TcxGroupBox;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox7: TcxGroupBox;
    iAutoFactura: TDBEdit;
    lbl1: TLabel;
    tsRuta: TcxDBButtonEdit;
    VCertDesde: TcxDBDateEdit;
    VCertHasta: TcxDBDateEdit;
    DBEdit11: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    tsConsecutivo: TDBEdit;
    dbchksinproyecto: TDBCheckBox;
    tsNombreCorto: TcxDBTextEdit;
    tsNombre: TcxDBTextEdit;
    tsRFC: TcxDBTextEdit;
    tsEmail: TcxDBTextEdit;
    tsNumeroExterior: TcxDBTextEdit;
    tsDireccion1: TcxDBTextEdit;
    tsNumeroInterior: TcxDBTextEdit;
    tsDireccion3: TcxDBTextEdit;
    tsLocalidad: TcxDBTextEdit;
    tsFax: TcxDBTextEdit;
    tsDireccion2: TcxDBTextEdit;
    tsPiePagina: TcxDBTextEdit;
    tsSlogan: TcxDBTextEdit;
    tsCP: TcxDBTextEdit;
    tsWeb: TcxDBTextEdit;
    tsTelefono: TcxDBTextEdit;
    tsEjercicio: TcxDBTextEdit;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsCertificados_CertificadoClick(Sender: TObject);
    procedure tsCertificados_LlaveClick(Sender: TObject);
    procedure tsCertificados_ContrasenaEnter(Sender: TObject);
    procedure tsCertificados_ContrasenaExit(Sender: TObject);
    procedure btnRutaClick(Sender: TObject);
    procedure tsRutaClick(Sender: TObject);
    procedure validarfecha;
    procedure VCertDesdePropertiesCloseUp(Sender: TObject);
    procedure VCertHastaPropertiesCloseUp(Sender: TObject);
    procedure tsNombreCortoEnter(Sender: TObject);
    procedure tsNombreCortoExit(Sender: TObject);
    procedure tsNombreCortoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreKeyPress(Sender: TObject; var Key: Char);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure tsRFCEnter(Sender: TObject);
    procedure tsRFCExit(Sender: TObject);
    procedure tsRFCKeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion1Enter(Sender: TObject);
    procedure tsDireccion1Exit(Sender: TObject);
    procedure tsDireccion1KeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroExteriorKeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion2KeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroInteriorKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroExteriorEnter(Sender: TObject);
    procedure tsNumeroExteriorExit(Sender: TObject);
    procedure tsNumeroInteriorEnter(Sender: TObject);
    procedure tsNumeroInteriorExit(Sender: TObject);
    procedure tsDireccion3KeyPress(Sender: TObject; var Key: Char);
    procedure tsDireccion3Enter(Sender: TObject);
    procedure tsDireccion3Exit(Sender: TObject);
    procedure dbcxDBEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure dbcxDBEstadoEnter(Sender: TObject);
    procedure dbcxDBEstadoExit(Sender: TObject);
    procedure tsLocalidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsLocalidadEnter(Sender: TObject);
    procedure tsLocalidadExit(Sender: TObject);
    procedure tsCPKeyPress(Sender: TObject; var Key: Char);
    procedure tsCPEnter(Sender: TObject);
    procedure tsCPExit(Sender: TObject);
    procedure tsSloganKeyPress(Sender: TObject; var Key: Char);
    procedure tsSloganEnter(Sender: TObject);
    procedure tsSloganExit(Sender: TObject);
    procedure tsPiePaginaKeyPress(Sender: TObject; var Key: Char);
    procedure tsPiePaginaEnter(Sender: TObject);
    procedure tsPiePaginaExit(Sender: TObject);
    procedure tsTelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure tsWebKeyPress(Sender: TObject; var Key: Char);
    procedure tsTelefonoEnter(Sender: TObject);
    procedure tsTelefonoExit(Sender: TObject);
    procedure tsWebEnter(Sender: TObject);
    procedure tsWebExit(Sender: TObject);
    procedure tsEjercicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsFaxKeyPress(Sender: TObject; var Key: Char);
    procedure tsEjercicioEnter(Sender: TObject);
    procedure tsEjercicioExit(Sender: TObject);
    procedure tsFaxEnter(Sender: TObject);
    procedure tsFaxExit(Sender: TObject);
    procedure tsEmailEnter(Sender: TObject);
    procedure tsEmailExit(Sender: TObject);
  private
    { Private declarations }
    TipoFecha:string;
  public
    { Public declarations }
  end;

var
  frm_ConfiguracionCont: Tfrm_ConfiguracionCont;

implementation

uses frm_connection, Func_Genericas;


{$R *.dfm}



procedure Tfrm_ConfiguracionCont.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_ConfiguracionCont.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                        { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0;                           { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0);        { vamos al siguiente control }
    end
    else
         if (ActiveControl is TDBGrid) then   { si es un TDBGrid }
            with TDBGrid(ActiveControl) do
               if selectedindex < (fieldcount -1) then
                   selectedindex := selectedindex +1
               else
                   selectedindex := 0;
end;

procedure Tfrm_ConfiguracionCont.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  fileSkin: TextFile;
  sSkin: string;
begin
  PageControl1.ActivePageIndex := 0;
  TipoFecha := 'FDesde';
  ZQEstados.Active := False;
  ZQEstados.Open;

  //Connection.configuracionCont.Open  ;
  Connection.configuracionCont.Refresh;
  zQProveedores.Active := False ;
  zQProveedores.Params.ParamByName('Contrato').Value := global_contrato ;
  zQProveedores.Open ;

  if Connection.configuracionCont.RecordCount > 0 then
  begin
    Connection.configuracionCont.Edit;
    BlobField := Connection.configuracionCont.FieldByName('bImagen');
    BS := Connection.configuracionCont.CreateBlobStream(BlobField, bmRead);
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
end;

procedure Tfrm_ConfiguracionCont.tsNombreCortoEnter(Sender: TObject);
begin
  tsNombreCorto.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsNombreCortoExit(Sender: TObject);
begin
 tsNombreCorto.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsNombreCortoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
     tsNombre.SetFocus ;

  if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456780. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Style.Color := Global_Color_EntradaERP ;
end;

procedure Tfrm_ConfiguracionCont.tsNombreExit(Sender: TObject);
begin
 tsNombre.Style.Color := Global_Color_SalidaERP ;
end;

procedure Tfrm_ConfiguracionCont.tsNombreKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
        tsRfc.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsNumeroExteriorEnter(Sender: TObject);
begin
  tsNumeroExterior.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsNumeroExteriorExit(Sender: TObject);
begin
 tsNumeroExterior.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsNumeroExteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
        tsNumeroInterior.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsNumeroInteriorEnter(Sender: TObject);
begin
  tsNumeroInterior.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsNumeroInteriorExit(Sender: TObject);
begin
  tsNumeroInterior.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsNumeroInteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
        tsDireccion2.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456780.',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsPiePaginaEnter(Sender: TObject);
begin
 tsPiePagina.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsPiePaginaExit(Sender: TObject);
begin
 tsPiePagina.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsPiePaginaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
       tsTelefono.setFocus;
end;

procedure Tfrm_ConfiguracionCont.tsCertificados_CertificadoClick(
  Sender: TObject);
begin
  OpenDialog1.Filter := 'Certificados|*.cer';
  if OpenDialog1.Execute then
  begin
    TCxButtonEdit(Sender).Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrm_ConfiguracionCont.tsCertificados_ContrasenaEnter(
  Sender: TObject);
begin
  tsCertificados_Contrasena.Style.Color := global_color_entradaERP ;
end;

procedure Tfrm_ConfiguracionCont.tsCertificados_ContrasenaExit(Sender: TObject);
begin
  tsCertificados_Contrasena.Style.Color := global_color_salidaERP ;
end;

procedure Tfrm_ConfiguracionCont.tsCertificados_LlaveClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Llaves|*.key';
  if OpenDialog1.Execute then
  begin
    TCxButtonEdit(Sender).Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrm_ConfiguracionCont.tsCPEnter(Sender: TObject);
begin
  tsCp.Style.Color := Global_color_entradaErp;
end;

procedure Tfrm_ConfiguracionCont.tsCPExit(Sender: TObject);
begin
 tsCp.Style.Color := Global_color_salidaErp;
end;

procedure Tfrm_ConfiguracionCont.tsCPKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
       tssLogan.SetFocus ;
   if (strscan('123456780',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion1Enter(Sender: TObject);
begin
  tsDireccion1.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion1Exit(Sender: TObject);
begin
 tsDireccion1.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
    tsNumeroExterior.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
        tsDireccion3.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567809. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion3Enter(Sender: TObject);
begin
  tsDireccion3.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion3Exit(Sender: TObject);
begin
 tsDireccion3.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsDireccion3KeyPress(Sender: TObject;
  var Key: Char);
begin
 If key=#13 then
        tsLocalidad.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsEjercicioEnter(Sender: TObject);
begin
  tsEjercicio.Style.Color := Global_color_entradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsEjercicioExit(Sender: TObject);
begin
 tsEjercicio.Style.Color := Global_color_salidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsEjercicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
         tsFax.SetFocus ;
end;

procedure Tfrm_ConfiguracionCont.tsEmailEnter(Sender: TObject);
begin
 tsEmail.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsEmailExit(Sender: TObject);
begin
 tsEmail.Style.Color := Global_Color_salidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsFaxEnter(Sender: TObject);
begin
  tsFax.Style.Color := Global_Color_entradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsFaxExit(Sender: TObject);
begin
 tsFax.Style.Color := Global_Color_salidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsFaxKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
        tsEmail.SetFocus;
end;

procedure Tfrm_ConfiguracionCont.tsLocalidadEnter(Sender: TObject);
begin
  tsLocalidad.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsLocalidadExit(Sender: TObject);
begin
 tsLocalidad.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsLocalidadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
        dbcxDBEstado.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890. ',key)= nil) and (key <> #8)then
      key:=#0;

end;

procedure Tfrm_ConfiguracionCont.tsRFCEnter(Sender: TObject);
begin
  tsRfc.Style.Color  := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsRFCExit(Sender: TObject);
begin
    tsRfc.Style.Color  := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsRFCKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
        tsDireccion1.SetFocus ;

   if (strscan('abcdfeghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890. ',key)= nil) and (key <> #8)then
      key:=#0;
end;

procedure Tfrm_ConfiguracionCont.tsRutaClick(Sender: TObject);
  var
  direccion : string;
begin
  if Dirbuscar1.Execute then
  begin
    direccion := Dirbuscar1.Directory;
    //tsRuta.Text := direccion;
    connection.configuracionCont.FieldByName('sRuta').asString := direccion;
  end;
end;

procedure Tfrm_ConfiguracionCont.tsSloganEnter(Sender: TObject);
begin
 tsSlogan.Style.Color := Global_color_entradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsSloganExit(Sender: TObject);
begin
  tsSlogan.Style.Color := Global_color_salidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsSloganKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
        tsPiePagina.SetFocus ;
end;

procedure Tfrm_ConfiguracionCont.tsTelefonoEnter(Sender: TObject);
begin
  tsTelefono.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsTelefonoExit(Sender: TObject);
begin
   tsTelefono.Style.Color := Global_Color_salidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsTelefonoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
       tsWeb.SetFocus ;
end;

procedure Tfrm_ConfiguracionCont.tsWebEnter(Sender: TObject);
begin
 tsTelefono.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.tsWebExit(Sender: TObject);
begin
 tsTelefono.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.tsWebKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
        tsEjercicio.SetFocus;
end;

procedure Tfrm_ConfiguracionCont.btnOkClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  ProveedorTimbrado: TPFPac;
  Credenciales: TPFCredenciales;
//  CertificadoSAT: TPFCertificadoSAT;
  Respuesta: TStringList;

  Ruta_Certificado,
  Ruta_Llave: String;

  Certificadob64, Llaveb64: String;
  TextoCertificado, TextoLlave: String;
  F: TFileStream;
  strLinea: String;
  ch: Char;
  Excepcion: Boolean;
begin
  {if dsConfiguracion.DataSet.FieldByName('sCertificados_Certificado').AsString = '' then
  begin
    raise Exception.Create('Debes elegir la ruta del certificado');
  end;
  if dsConfiguracion.DataSet.FieldByName('sCertificados_Llave').AsString = '' then
  begin
    raise Exception.Create('Debes elegir la ruta de la llave');
  end;
  if dsConfiguracion.DataSet.FieldByName('sCertificados_Contrasena').AsString = '' then
  begin
    raise Exception.Create('Debes especificar la contraseña');
  end; }
  {ProveedorTimbrado := TPFPACFem.Create;
  Try
    Try
      Credenciales.RFC :=  dsConfiguracion.DataSet.FieldByName('sRFC').AsString;
      ProveedorTimbrado.AsignarCredenciales(Credenciales);

      CertificadoSAT.Certificado := dsConfiguracion.DataSet.FieldByName('sCertificados_Certificado').AsString;
      CertificadoSAT.Llave := dsConfiguracion.DataSet.FieldByName('sCertificados_Llave').AsString;
      CertificadoSAT.Contrasena := dsConfiguracion.DataSet.FieldByName('sCertificados_Contrasena').AsString;

      Respuesta := ProveedorTimbrado.AgregarEmisor(dsConfiguracion.DataSet.FieldByName('sRFC').AsString, CertificadoSAT, True);
      ShowMessage(Respuesta[0] + ': ' + Respuesta[1]);
    Except
      On E: Exception do
      begin
        Excepcion := True;
        ShowMessage(E.Message);
      end;
    End;
  Finally
    if not Excepcion then
    begin
      ProveedorTimbrado.Free;
      //zQCompanias.Post ;
      //zqCompanias.Refresh ;
      //cambio_stado1;
    end;
  End;  }
  //if (Connection.configuracionCont.State = dsEdit)then
  begin
    if OpenPicture.FileName <> '' then
    begin
      try
        BlobField := Connection.configuracionCont.FieldByName('bImagen');
        BS := Connection.configuracionCont.CreateBlobStream(BlobField, bmWrite);
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

      end
    end;
   // Connection.configuracionCont.Post;
  end;
  if tsRuta.Text = '' then
  begin
    MSG_W('La ruta de los CFDI no debe estar vacia, verifique la informacion');
    Abort;
  end;
  if DBEdit11.Text = '' then
  begin
    MSG_W('EL nombre de la carpeta donde se guardaran los CFDI no debe estar vacia, verifique la informacion');
    Abort;
  end;
  if cxDBMemo1.Text = '' then
  begin
    MSG_W('El regimen fiscal no debe estar vacio, verifique la informacion');
    Abort;
  end;
  if (IVA.Value = null) or (IVA.Value = 0) then
  begin
    MSG_W('El IVA no debe ser "0" o estar vacio, verifique la informacion');
    Abort;
  end;

  global_iva := IVA.Value/100;

  Connection.configuracionCont.FieldValues['sTrienio'] := 'PRUEBA' ;
  Connection.configuracionCont.FieldValues['lCompanias'] := 'No' ;
  Connection.configuracionCont.Post;
  close;
end;

procedure Tfrm_ConfiguracionCont.btnRutaClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Todos|*.*';
  OpenDialog1.InitialDir := '' ;
  if OpenDialog1.Execute then
  begin
    TCxButtonEdit(Sender).Text := OpenDialog1.InitialDir ;
  end;
end;

procedure Tfrm_ConfiguracionCont.dbcxDBEstadoEnter(Sender: TObject);
begin
 dbcxDBEstado.Style.Color := Global_Color_EntradaERP;
end;

procedure Tfrm_ConfiguracionCont.dbcxDBEstadoExit(Sender: TObject);
begin
  dbcxDBEstado.Style.Color := Global_Color_SalidaERP;
end;

procedure Tfrm_ConfiguracionCont.dbcxDBEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
        tsCp.SetFocus ;
end;

procedure Tfrm_ConfiguracionCont.bImagenClick(Sender: TObject);
begin
   if (Connection.configuracionCont.State = dsEdit) or (Connection.configuracionCont.State = dsInsert) Then
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

procedure Tfrm_ConfiguracionCont.BtnCancelClick(Sender: TObject);
begin
  if Connection.configuracionCont.State = dsEdit then
    Connection.configuracionCont.Cancel;
  Connection.configuracionCont.Refresh;
  close;
end;
procedure Tfrm_ConfiguracionCont.validarfecha;
begin
//Para validar que la fecha de inicio sea menor a la fecha de finalizacion de los timbres
  if VCertDesde.Date > VCertHasta.Date then
  begin
    MSG_W('La fecha de inicio debe ser menos a la fecha de termino de vigencia del certificado');
    if TipoFecha = 'FDesde' then VCertDesde.SetFocus
    else VCertHasta.SetFocus;
    Abort;
  end;
end;

procedure Tfrm_ConfiguracionCont.VCertDesdePropertiesCloseUp(Sender: TObject);
begin
  TipoFecha := 'FDesde';
  validarfecha;
end;

procedure Tfrm_ConfiguracionCont.VCertHastaPropertiesCloseUp(Sender: TObject);
begin
  TipoFecha := 'FHasta';
  validarfecha;
end;

end.



