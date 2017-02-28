unit frm_configuracionVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, DB, global,Grids, DBGrids,
  Buttons, ImgList, ExtCtrls, ExtDlgs, Jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, AdvSmoothSlider,
  AdvSmoothToggleButton, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, dxBar, cxClasses, dxRibbon, AdvSmoothPopup, NxCollection,
  Menus, cxButtons, JvDBDotNetControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxFontNameComboBox,
  cxDBFontNameComboBox, cxGroupBox, cxDBEdit, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxCalc;

type
  TfrmConfiguracionVTA = class(TForm)
    Paginas: TPageControl;
    TabSheet1: TTabSheet;
    Puestos: TTabSheet;
    tsNombre: TDBEdit;
    tsPiePagina: TDBEdit;
    tsEmail: TDBEdit;
    tsWeb: TDBEdit;
    tsFax: TDBEdit;
    tsTelefono: TDBEdit;
    tsSlogan: TDBEdit;
    tsDireccion3: TDBEdit;
    tsDireccion2: TDBEdit;
    tsDireccion1: TDBEdit;
    tsRfc: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label86: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    REpre: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tsRepresentante: TDBEdit;
    tsTestigo1: TDBEdit;
    tsTestigo2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    OpenPicture: TOpenPictureDialog;
    dsConfiguracion: TDataSource;
    OpenPicture_1: TOpenPictureDialog;
    OpenPicture_2: TOpenPictureDialog;
    Label6: TLabel;
    TSNOTARIO: TDBEdit;
    TSDIR1: TDBEdit;
    TSDIR2: TDBEdit;
    Label8: TLabel;
    Label13: TLabel;
    lbl1: TLabel;
    tsCotizaciones: TTabSheet;
    sldNotificaciones: TAdvSmoothSlider;
    Label5: TLabel;
    Label7: TLabel;
    sldTips: TAdvSmoothSlider;
    rbPrincipal: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    iconos: TcxImageList;
    dxBarLargeButton4: TdxBarLargeButton;
    tsLogo: TTabSheet;
    dxBarLargeButton5: TdxBarLargeButton;
    tsNotifTips: TTabSheet;
    ToolTip: TAdvSmoothPopup;
    pnlTool: TNxHeaderPanel;
    Label18: TLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    dbParrafo1: TJvDotNetDBMemo;
    dbParrafo2: TJvDotNetDBMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxDBFontNameComboBox1: TcxDBFontNameComboBox;
    Label19: TLabel;
    dbIFuenteHeader: TcxDBTextEdit;
    Label20: TLabel;
    cxGroupBox2: TcxGroupBox;
    bImagen: TImage;
    pnl1: TPanel;
    pnl2: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbCodigo: TDBEdit;
    dbConsecutivo: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenClick(Sender: TObject);
    procedure tsNombreEnter(Sender: TObject);
    procedure tsNombreExit(Sender: TObject);
    procedure tsRfcEnter(Sender: TObject);
    procedure tsRfcExit(Sender: TObject);
    procedure tsDireccion1Enter(Sender: TObject);
    procedure tsDireccion1Exit(Sender: TObject);
    procedure tsDireccion2Enter(Sender: TObject);
    procedure tsDireccion2Exit(Sender: TObject);
    procedure tsDireccion3Enter(Sender: TObject);
    procedure tsDireccion3Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure tsSloganEnter(Sender: TObject);
    procedure tsSloganExit(Sender: TObject);
    procedure tsPiePaginaEnter(Sender: TObject);
    procedure tsPiePaginaExit(Sender: TObject);
    procedure tsTelefonoEnter(Sender: TObject);
    procedure tsTelefonoExit(Sender: TObject);
    procedure tsFaxEnter(Sender: TObject);
    procedure tsFaxExit(Sender: TObject);
    procedure tsWebEnter(Sender: TObject);
    procedure tsWebExit(Sender: TObject);
    procedure tsEmailEnter(Sender: TObject);
    procedure tsEmailExit(Sender: TObject);
    procedure tsRepresentanteEnter(Sender: TObject);
    procedure tsRepresentanteExit(Sender: TObject);
    procedure tsTestigo1Enter(Sender: TObject);
    procedure tsTestigo1Exit(Sender: TObject);
    procedure tsTestigo2Enter(Sender: TObject);
    procedure tsTestigo2Exit(Sender: TObject);
    procedure TSDIR1Enter(Sender: TObject);
    procedure TSDIR1Exit(Sender: TObject);
    procedure TSDIR2Enter(Sender: TObject);
    procedure TSDIR2Exit(Sender: TObject);
    procedure TSNOTARIOEnter(Sender: TObject);
    procedure TSNOTARIOExit(Sender: TObject);
    procedure sldNotificacionesStateChanged(Sender: TObject;
      State: TAdvSmoothSliderState; Value: Double);
    procedure sldTipsStateChanged(Sender: TObject; State: TAdvSmoothSliderState;
      Value: Double);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure sldNotificacionesMouseEnter(Sender: TObject);
    procedure sldTipsMouseEnter(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure sldNotificacionesMouseLeave(Sender: TObject);
    procedure dbParrafo1Enter(Sender: TObject);
    procedure dbParrafo1Exit(Sender: TObject);
    procedure dbParrafo2Enter(Sender: TObject);
    procedure dbConsecutivoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sNotificaciones, sTips : string;
  end;

var
  frmConfiguracionVTA: TfrmConfiguracionVTA;

implementation
{Martin Samuel Esteban Diaz}
uses frm_connection, frmEmpleados;


{$R *.dfm}



procedure TfrmConfiguracionVTA.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmConfiguracionVTA.FormShow(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
  fileSkin: TextFile;
  sSkin: string;

  bS_logo1 : TStream;
  Pic_logo1 : TJpegImage;
  BlobField_logo1 : tField;

  bS_ImagenCliente : TStream;
  Pic_ImagenCliente : TJpegImage;
  BlobField_ImagenCliente : tField;

  i, x : integer;

begin
    Paginas.ActivePageIndex := 0;
    rbPrincipal.Caption := 'Configuración de ventas de ' + global_contrato;

    connection.configuracionVta.Active := False;
    connection.configuracionVta.SQL.Clear;
    connection.configuracionVta.SQL.Add('select * from vta_configuracion where sNombreCorto = :contrato');
    connection.configuracionVta.ParamByName('contrato').AsString := global_contrato;
    Connection.configuracionVta.Open  ;

    if Connection.configuracionVta.RecordCount > 0 then
    begin
      if connection.configuracionVta.FieldByName('eActivaNotificaciones').AsString = 'Si' then
        sldNotificaciones.State := ssOn;
      if connection.configuracionVta.FieldByName('eActivaNotificaciones').AsString = 'No' then
        sldNotificaciones.State := ssOff;


      if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'Si' then
        sldTips.State := ssOn;
      if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'No' then
        sldTips.State := ssOff;

      sNotificaciones := connection.configuracionVta.FieldByName('eActivaNotificaciones').AsString;
      sTips := connection.configuracionVta.FieldByName('eCotMuestraTip').AsString;

      Connection.configuracionVta.Edit;
      BlobField := Connection.configuracionVta.FieldByName('bImagen');
      BS := Connection.configuracionVta.CreateBlobStream(BlobField, bmRead);

      BlobField_logo1 := Connection.configuracionVta.FieldByName('bLogoFondo');
      bS_logo1 := Connection.configuracionVta.CreateBlobStream(BlobField_logo1, bmRead);

      BlobField_ImagenCliente := Connection.configuracionVta.FieldByName('bImagenCliente');
      bS_ImagenCliente := Connection.configuracionVta.CreateBlobStream(BlobField_ImagenCliente, bmRead);

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

      if bS_logo1.Size > 1 then
      begin
        try
          Pic_logo1 := TJpegImage.Create;
          try
            Pic_logo1.LoadFromStream(bS_logo1);
          finally
            Pic_logo1.Free;
          end;
        finally
          bS_logo1.Free
        end
      end;

    end
    else
    begin
      Connection.configuracionVta.Append;
      Connection.configuracionVta.FieldByName('sNombreCorto').AsString := global_contrato;
      sNotificaciones := 'Si';
      sTips := 'Si';

      for x := 0 to Paginas.PageCount - 1 do
      begin
        for i := 1 to Paginas.Pages[x].ControlCount - 1 do
        begin
          if Paginas.Pages[x].Controls[i] is tdbEdit then
          begin
            if (Paginas.Pages[x].Controls[i] as tdbedit).Text = ''  then
            begin
              (Paginas.Pages[x].Controls[i] as tdbedit).Text := '*';
            end;
          end;
        end;
      end;
    end;
end;

procedure TfrmConfiguracionVTA.sldNotificacionesMouseEnter(Sender: TObject);
begin
  if global_mostrartips then
  begin
    Label18.Caption := 'Active o desactive las notificaciones '+ #13 +
                       'o ToolTips que se muestran '+ #13 +
                       'en algunos de los modulos de ventas';
    ToolTip.PopupAtControl((Sender as TWinControl), pdBottomCenter);
  end;
end;

procedure TfrmConfiguracionVTA.sldNotificacionesMouseLeave(Sender: TObject);
begin
  ToolTip.ClosePopup;
end;

procedure TfrmConfiguracionVTA.sldNotificacionesStateChanged(Sender: TObject;
  State: TAdvSmoothSliderState; Value: Double);
begin
  if State = ssOn then
    sNotificaciones := 'Si';
  if State = ssOff then
    sNotificaciones := 'No';
end;

procedure TfrmConfiguracionVTA.sldTipsMouseEnter(Sender: TObject);
begin
  if global_mostrartips then
  begin
    Label18.Caption := 'Active o desactive las notificaciones '+ #13 +
                       'o ToolTips que se muestran '+ #13 +
                       'en algunos de los modulos de ventas';
    ToolTip.PopupAtControl((Sender as TWinControl), pdRightCenter);
  end;
end;

procedure TfrmConfiguracionVTA.sldTipsStateChanged(Sender: TObject;
  State: TAdvSmoothSliderState; Value: Double);
begin
  if State = ssOn then
  begin
    global_mostrartips := True;
    sTips := 'Si';
  end;
  if State = ssOff then
  begin
    global_mostrartips := False;
    sTips := 'No'
  end;
end;

procedure TfrmConfiguracionVTA.TSDIR1Enter(Sender: TObject);
begin
      TSDIR1.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.TSDIR1Exit(Sender: TObject);
begin
    TSDIR1.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.TSDIR2Enter(Sender: TObject);
begin
  TSDIR2.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.TSDIR2Exit(Sender: TObject);
begin
  TSDIR2.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsDireccion1Enter(Sender: TObject);
begin
  tsDireccion1.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsDireccion1Exit(Sender: TObject);
begin
  tsDireccion1.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsDireccion2Enter(Sender: TObject);
begin
  tsDireccion2.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsDireccion2Exit(Sender: TObject);
begin
  tsDireccion2.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsDireccion3Enter(Sender: TObject);
begin
  tsDireccion3.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsDireccion3Exit(Sender: TObject);
begin
  tsDireccion3.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsEmailEnter(Sender: TObject);
begin
  tsEmail.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsEmailExit(Sender: TObject);
begin
tsEmail.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsFaxEnter(Sender: TObject);
begin
  tsFax.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsFaxExit(Sender: TObject);
begin
  tsFax.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsNombreEnter(Sender: TObject);
begin
  tsNombre.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsNombreExit(Sender: TObject);
begin
  tsNombre.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.TSNOTARIOEnter(Sender: TObject);
begin
  TSNOTARIO.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.TSNOTARIOExit(Sender: TObject);
begin
  TSDIR1.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsPiePaginaEnter(Sender: TObject);
begin
  tsPiePagina.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsPiePaginaExit(Sender: TObject);
begin
  tsPiePagina.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsRepresentanteEnter(Sender: TObject);
begin
  tsRepresentante.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsRepresentanteExit(Sender: TObject);
begin
  tsRepresentante.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsRfcEnter(Sender: TObject);
begin
 tsRfc.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsRfcExit(Sender: TObject);
begin
  tsRfc.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsSloganEnter(Sender: TObject);
begin
  tsSlogan.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsSloganExit(Sender: TObject);
begin
  tsSlogan.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsTelefonoEnter(Sender: TObject);
begin
  tsTelefono.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsTelefonoExit(Sender: TObject);
begin
  tsTelefono.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsTestigo1Enter(Sender: TObject);
begin
  tsTestigo1.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsTestigo1Exit(Sender: TObject);
begin
  tsTestigo1.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsTestigo2Enter(Sender: TObject);
begin
  tsTestigo2.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsTestigo2Exit(Sender: TObject);
begin
  tsTestigo2.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.tsWebEnter(Sender: TObject);
begin
  tsWeb.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.tsWebExit(Sender: TObject);
begin
  tsWeb.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.btnOkClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;

  bS_logo1 : TStream;
  Pic_logo1 : TJpegImage;
  BlobField_logo1 : tField;

  bS_ImagenCliente : TStream;
  Pic_ImagenCliente : TJpegImage;
  BlobField_ImagenCliente : tField;

  vacios, i, x : integer;

begin
  vacios := 0;
  for x := 0 to Paginas.PageCount - 1 do
  begin
    for i := 1 to Paginas.Pages[x].ControlCount - 1 do
    begin
      if Paginas.Pages[x].Controls[i] is tdbEdit then
      begin
        if  (Paginas.Pages[x].Controls[i] as tdbedit).Text = ''  then
        begin
          (Paginas.Pages[x].Controls[i] as tdbedit).Color := $004080FF;
          Inc(vacios);
        end;
      end;
    end;
  end;

  if vacios = 0 then
  begin
    if (Connection.configuracionVta.State = dsEdit)Or (Connection.configuracionVta.State = dsInsert) then
    begin
         if OpenPicture.FileName <> '' then
         begin
           try
              BlobField := Connection.configuracionVta.FieldByName('bImagen');
              BS := Connection.configuracionVta.CreateBlobStream(BlobField, bmWrite);
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
              end;
            except
           end;
         end;

          if OpenPicture_1.FileName <> '' then
          begin
            try
              BlobField_logo1 := Connection.configuracionVta.FieldByName('bLogoFondo');
              BS_logo1 := Connection.configuracionVta.CreateBlobStream(BlobField_logo1, bmWrite);
              try
                Pic_logo1 := TJpegImage.Create;
                try
                  Pic_logo1.LoadFromFile(OpenPicture_1.FileName);
                  Pic_logo1.SaveToStream(Bs_logo1);
                finally
                  Pic_logo1.Free;
                end;
              finally
                bS_logo1.Free
              end;
            except
           end;
          end;

        if OpenPicture_2.FileName <> '' then
          begin
            try
              BlobField_ImagenCliente := Connection.configuracionVta.FieldByName('bImagenCliente');
              BS_ImagenCliente := Connection.configuracionVta.CreateBlobStream(BlobField_ImagenCliente, bmWrite);
              try
                Pic_ImagenCliente := TJpegImage.Create;
                try
                  Pic_ImagenCliente.LoadFromFile(OpenPicture_2.FileName);
                  Pic_ImagenCliente.SaveToStream(Bs_ImagenCliente);
                finally
                  Pic_ImagenCliente.Free;
                end;
              finally
                bS_ImagenCliente.Free
              end;
            except
           end;
          end;

      connection.configuracionVta.FieldByName('eActivaNotificaciones').AsString := sNotificaciones;
      connection.configuracionVta.FieldByName('eCotMuestraTip').AsString := sTips;
      if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'Si' then
        global_mostrartips := True
      else
        global_mostrartips := False;


      
      Connection.configuracionVta.Post;
    end;

    close;
  end;

end;

procedure TfrmConfiguracionVTA.DBEdit1Enter(Sender: TObject);
begin
  DBEdit1.Color := global_color_entradaERP
end;

procedure TfrmConfiguracionVTA.DBEdit1Exit(Sender: TObject);
begin
  DBEdit1.Color := $00F0F0F0
end;

procedure TfrmConfiguracionVTA.dbConsecutivoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in ['0'..'9',#8]) then
    begin
      Key:=#0;
    end;
end;

procedure TfrmConfiguracionVTA.dbParrafo1Enter(Sender: TObject);
begin
  if global_mostrartips then
  begin
    Label18.Caption := 'Este parrafo se muestra antes de '+ #13 + 'la tabla de conceptos ';
    ToolTip.PopupAtControl((Sender as TWinControl), pdRightCenter);
  end;
end;

procedure TfrmConfiguracionVTA.dbParrafo1Exit(Sender: TObject);
begin
    ToolTip.ClosePopup
end;

procedure TfrmConfiguracionVTA.dbParrafo2Enter(Sender: TObject);
begin
  if global_mostrartips then
  begin
    Label18.Caption := 'Este parrafo se muestra despues de '+ #13 + 'la tabla de conceptos ';
    ToolTip.PopupAtControl((Sender as TWinControl), pdRightCenter);
  end;
end;

procedure TfrmConfiguracionVTA.dxBarLargeButton1Click(Sender: TObject);
begin
  paginas.ActivePageIndex := 0;
end;

procedure TfrmConfiguracionVTA.dxBarLargeButton2Click(Sender: TObject);
begin
  paginas.ActivePageIndex := 1;
end;

procedure TfrmConfiguracionVTA.dxBarLargeButton3Click(Sender: TObject);
begin
  paginas.ActivePageIndex := 2;
end;

procedure TfrmConfiguracionVTA.dxBarLargeButton4Click(Sender: TObject);
begin
  Paginas.ActivePageIndex := 3;
end;

procedure TfrmConfiguracionVTA.dxBarLargeButton5Click(Sender: TObject);
begin
  Paginas.ActivePageIndex := 4;
end;

procedure TfrmConfiguracionVTA.bImagenClick(Sender: TObject);
begin
  if (Connection.configuracionVta.State = dsEdit) or (Connection.configuracionVta.State = dsInsert) Then
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

procedure TfrmConfiguracionVTA.BtnCancelClick(Sender: TObject);
begin
  if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'Si' then
    global_mostrartips := True
  else
    global_mostrartips := False;

  if Connection.configuracionVta.State = dsEdit then
    Connection.configuracionVta.Cancel;
  close
end;


end.

