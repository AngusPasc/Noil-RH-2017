unit frm_ConfiguracionRH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, DB, global,Grids, DBGrids,
  Buttons, ImgList, ExtCtrls, ExtDlgs, Jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet, AdvSpin, DBAdvSp, AdvGroupBox,
  FormAutoScaler, AdvGlowButton, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxCheckBox, cxDBEdit, cxTextEdit, dxLayoutLookAndFeels,
  cxClasses, dxLayoutControl, cxPC, dxGDIPlusClasses, cxImage, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxMemo,
  cxDropDownEdit, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons
  ;

type
  TfrmConfiguracionRH = class(TForm)
    OpenPicture: TOpenPictureDialog;
    dsConfiguracion: TDataSource;
    OpenPicture_1: TOpenPictureDialog;
    OpenPicture_2: TOpenPictureDialog;
    fsc_CnRH: TFormAutoScaler;
    panelBotones: TPanel;
    PageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    tsNombre: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    tsRfc: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    tsDireccion1: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    tsDireccion2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    tsDireccion3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    tsSlogan: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    tsPiePagina: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    tsTelefono: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    tsFax: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    tsWeb: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxQR: TcxDBCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    DBCheckNom: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    chkGuardiaNormal: TcxDBCheckBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    tsMail: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    tsNombreCorto: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    bImagen: TcxImage;
    dxLayoutControl2Item1: TdxLayoutItem;
    bImagenCliente: TcxImage;
    dxLayoutControl2Item2: TdxLayoutItem;
    bLogoFondo: TcxImage;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxImage4: TcxImage;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    Label1: TLabel;
    Label2: TLabel;
    dxLayoutControl5Item1: TdxLayoutItem;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    grid_fotografico: TcxGrid;
    cxViewFotografico: TcxGridDBTableView;
    cxId: TcxGridDBColumn;
    cxDescripcion: TcxGridDBColumn;
    cxIncluye: TcxGridDBColumn;
    cxPartida: TcxGridDBColumn;
    cxFoto: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxGridFoliosDBTableView1: TcxGridDBTableView;
    cxGridFoliosLevel1: TcxGridLevel;
    cxGridFolios: TcxGrid;
    dxLayoutControl4Item1: TdxLayoutItem;
    colNomForm: TcxGridDBColumn;
    colPrefijo: TcxGridDBColumn;
    colNumDigitos: TcxGridDBColumn;
    colInicia: TcxGridDBColumn;
    colAplicar: TcxGridDBColumn;
    zFolios: TZQuery;
    dsFolios: TDataSource;
    dsTablas: TDataSource;
    dsFirma: TDataSource;
    zFirmas: TZQuery;
    dsNivelFirma: TDataSource;
    zNivelFirma: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenClick(Sender: TObject);
    procedure blogofondoClick(Sender: TObject);
    procedure bImagenClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GlobalKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnterControl(Sender: TObject);
    procedure SalidaControl(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracionRH: TfrmConfiguracionRH;
  inicialAnt: Integer;

implementation

uses
  frm_connection,
  frmEmpleados;


{$R *.dfm}


procedure TfrmConfiguracionRH.GlobalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Perform( CM_DIALOGKEY, VK_TAB, 0 );
    Key := 0;
  end;
end;

procedure TfrmConfiguracionRH.EnterControl(Sender: TObject);
begin
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_entradaERP;

//    if (sender is tcxDateEdit) then
//        tcxDateEdit(sender).Style.Color := global_color_entradaERP;

//     if (sender is tcxMaskEdit) then
//        tcxMaskEdit(sender).Style.Color := global_color_entradaERP;

//     if (sender is tcxCalcEdit) then
//        tcxCalcEdit(sender).Style.Color := global_color_entradaERP;
end;


procedure TfrmConfiguracionRH.SalidaControl(Sender: TObject);
begin
    if (sender is tcxTextEdit) then
        tcxTextEdit(sender).Style.Color := global_color_salidaERP;

//    if (sender is tcxDateEdit) then
//    begin
//        tcxDateEdit(sender).Style.Color := global_color_SalidaERP;
//        if cxSUAVacacionesFin.Date < cxSUAVacacionesInicio.Date then
//           messageDLG('La Fecha Final es menor la fecha de inicio!', mtInformation, [mbOk],0);
//    end;

//    if (sender is tcxMaskEdit) then
//       tcxMaskEdit(sender).Style.Color := global_color_SalidaERP;

//    if (sender is tcxCalcEdit) then
//        tcxCalcEdit(sender).Style.Color := global_color_SalidaERP;
end;

procedure TfrmConfiguracionRH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TfrmConfiguracionRH.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmConfiguracionRH.FormShow(Sender: TObject);
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

  uTablas: TZQuery;
  zTemp: TZQuery;
  zTemp2: TZQuery;

begin
    Connection.configuracionRecHum.Active := False;
    Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
    Connection.configuracionRecHum.Open  ;

    if Connection.configuracionRecHum.RecordCount > 0 then
    begin
      Connection.configuracionRecHum.Edit;

      Connection.configuracionRecHum.FieldByName('sNombreCorto').AsString := global_contrato;

      BlobField := Connection.configuracionRecHum.FieldByName('bImagen');
      BS := Connection.configuracionRecHum.CreateBlobStream(BlobField, bmRead);

      BlobField_logo1 := Connection.configuracionRecHum.FieldByName('bLogoFondo');
      bS_logo1 := Connection.configuracionRecHum.CreateBlobStream(BlobField_logo1, bmRead);

      BlobField_ImagenCliente := Connection.configuracionRecHum.FieldByName('bImagenCliente');
      bS_ImagenCliente := Connection.configuracionRecHum.CreateBlobStream(BlobField_ImagenCliente, bmRead);

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
            bLogoFondo.Picture.Graphic := Pic_logo1;
          finally
            Pic_logo1.Free;
          end;
        finally
          bS_logo1.Free
        end
      end;

      if bS_ImagenCliente.Size > 1 then
      begin
        try
          Pic_ImagenCliente := TJpegImage.Create;
          try
            Pic_ImagenCliente.LoadFromStream(bS_ImagenCliente);
            bImagenCliente.Picture.Graphic := Pic_ImagenCliente;
          finally
            Pic_ImagenCliente.Free;
          end;
        finally
          bS_ImagenCliente.Free
        end
      end
      else;

    end
    else
    begin

        connection.zcommand.Active := False;
        connection.zcommand.sql.clear;
        connection.zcommand.sql.add('INSERT INTO rh_configuracion (sNombreCorto) values (:contrato) ');
        connection.zcommand.parambyname('contrato').AsString := global_Contrato;
        connection.zcommand.ExecSQL;
        Connection.configuracionRecHum.refresh;
    end;
  {$region 'Configuracion de folios'}
    try
      dsTablas.DataSet := connection.zFolios;
      zFolios.ParamByName('IdFolio').AsString := '-1';
      if zFolios.Active then
        zFolios.Refresh
      else
        zFolios.Open;
    finally

    end;
  {$region}

  {$region 'Firmantes'}
    zNivelFirma.ParamByName('IdNivelFirma').AsString := '-1';
    if zNivelFirma.Active then
      zNivelFirma.Refresh
    else
      zNivelFirma.Open;

    zFirmas.ParamByName('IdFirma').AsString := '-1';

    if zFirmas.Active then
      zFirmas.Refresh
    else
      zFirmas.Open;
  {$region}
end;

procedure TfrmConfiguracionRH.btnOkClick(Sender: TObject);
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

  x, z, vacios : Integer;

begin
  if (Connection.configuracionRecHum.State = dsEdit)Or (Connection.configuracionRecHum.State = dsInsert) then
  begin
    vacios := 0;
    for x := 0 to PageControl1.PageCount - 1 do
    begin
      for z := 0 to PageControl1.Pages[x].ControlCount - 1 do
      begin
        if (PageControl1.Pages[x].Controls[z] is TDBEdit) then
        begin
          if Trim((PageControl1.Pages[x].Controls[z] as TDBEdit).Text) = '' then
          begin
            Inc(vacios);
            (PageControl1.Pages[x].Controls[z] as TDBEdit).Color := global_color_entradaERP;
          end
          else
            (PageControl1.Pages[x].Controls[z] as TDBEdit).Color := $00F0F0F0;
        end;
      end;
    end;

    if vacios = 0 then
    begin
      if OpenPicture.FileName <> '' then
      begin
        try
          BlobField := Connection.configuracionRecHum.FieldByName('bImagen');
          BS := Connection.configuracionRecHum.CreateBlobStream(BlobField, bmWrite);
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
          BlobField_logo1 := Connection.configuracionRecHum.FieldByName('bLogoFondo');
          BS_logo1 := Connection.configuracionRecHum.CreateBlobStream(BlobField_logo1, bmWrite);
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
          BlobField_ImagenCliente := Connection.configuracionRecHum.FieldByName('bImagenCliente');
          BS_ImagenCliente := Connection.configuracionRecHum.CreateBlobStream(BlobField_ImagenCliente, bmWrite);
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
      end
      else;

      Connection.configuracionRecHum.Post;

      Connection.configuracionRecHum.Active := False;
      Connection.configuracionRecHum.ParamByName('contrato').AsString := global_contrato;
      Connection.configuracionRecHum.Open;

      Try
         if Assigned(frm_Empleados) then
            frm_Empleados.frxDBConfiguracion.DataSet.Refresh;
       Except

       End;

     // close;
    end
    else
      begin
        MessageDlg('Existen campos vacios', mtWarning, [mbOk], 0);

        if tsNombre.Text = '' then
        begin
          cxTabSheet1.Show;
          tsNombre.SetFocus;
        end else if tsRfc.Text = '' then
        begin
          cxTabSheet1.Show;
          tsRfc.SetFocus;
        end else if tsDireccion1.Text = '' then
        begin
          cxTabSheet1.Show;
          tsDireccion1.SetFocus;
        end else if tsDireccion2.Text = '' then
        begin
          cxTabSheet1.Show;
          tsDireccion2.SetFocus;

        end else if tsDireccion3.Text = '' then
        begin
          cxTabSheet1.Show;
          tsDireccion3.SetFocus;

        end else if tsSlogan.Text = '' then
        begin
          cxTabSheet1.Show;
          tsSlogan.SetFocus;
        end else if tsPiePagina.Text = '' then
        begin
          cxTabSheet1.Show;
          tsPiePagina.SetFocus;
        end else if tsDireccion1.Text = '' then
        begin
          cxTabSheet1.Show;
          tsDireccion1.SetFocus;
        end else if tsTelefono.Text = '' then
        begin
          cxTabSheet1.Show;
          tsTelefono.SetFocus;
        end else if tsFax.Text = '' then
        begin
          cxTabSheet1.Show;
          tsFax.SetFocus;
        end else if tsWeb.Text = '' then
        begin
          cxTabSheet1.Show;
          tsWeb.SetFocus;
        end else if tsmail.Text = '' then
        begin
          cxTabSheet1.Show;Visible := True;
          tsmail.SetFocus;

        end;
      end;
  end;
  {$region 'Configuracion de Folios'}
    try
          zFolios.ApplyUpdates;
          if connection.zFolios.Active then
            connection.zFolios.Refresh
          else
            connection.zFolios.Open;

    finally

    end;
  {$region}
  {$region 'Firmas'}
    try
      zFirmas.ApplyUpdates;
    finally

    end;
  {$region}
end;

procedure TfrmConfiguracionRH.bImagenClick(Sender: TObject);
begin
   if (Connection.configuracionRecHum.State = dsEdit)  Then
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

procedure TfrmConfiguracionRH.bImagenClienteClick(Sender: TObject);
begin
   if (Connection.configuracionRecHum.State = dsEdit)  Then
  begin
    OpenPicture_2.Title := 'Inserta Imagen';
    if OpenPicture_2.Execute then
    begin
      try
          bImagenCliente.Picture.LoadFromFile(OpenPicture_2.FileName);
        except
        bImagenCliente.Picture.LoadFromFile('');
      end
    end
  end

end;

procedure TfrmConfiguracionRH.blogofondoClick(Sender: TObject);
begin
   if (Connection.configuracionRecHum.State = dsEdit)  Then
  begin
    OpenPicture_1.Title := 'Inserta Imagen';
    if OpenPicture_1.Execute then
    begin
      try
        blogofondo.Picture.LoadFromFile(OpenPicture_1.FileName);
      except
        blogofondo.Picture.LoadFromFile('');
      end
    end
  end

end;

procedure TfrmConfiguracionRH.BtnCancelClick(Sender: TObject);
begin
  if Connection.configuracionRecHum.State = dsEdit then
    Connection.configuracionRecHum.Cancel;

  {$region 'Configuracion de Folios'}
    try
          zFolios.CancelUpdates;
          if connection.zFolios.Active then
            connection.zFolios.Refresh
          else
            connection.zFolios.Open;

    finally

    end;
  {$region}
  {$region 'Firmas'}
    try
      zFirmas.CancelUpdates;
    finally

    end;
  {$region}

  close
end;


end.

