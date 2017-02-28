unit frm_bancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, frm_barra, Grids, DBGrids, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, Menus, frxClass, frxDBSet, ADODB, ExtDlgs,
  jpeg, ZAbstractRODataset, ZAbstractDataset, ZDataset, unitexcepciones, udbgrid,
  unittbotonespermisos, UnitValidaTexto, unitactivapop,
  UFunctionsGHH, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxSkinsdxBarPainter, dxBar, dxRibbonRadialMenu,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxRibbon;

type
  TfrmBancos = class(TForm)
  frmBarra1: TfrmBarra;
  dbResidencias: TfrxDBDataset;
  frxResidencias: TfrxReport;
  dsBancos: TDataSource;
  bancos: TZQuery;
  bancossIdBanco: TStringField;
  bancossDescripcion: TStringField;
  bancossCiudad: TStringField;
  bancossCodigoPostal: TStringField;
  bancossContacto: TStringField;
  bancossTelefono: TStringField;
  bancosbImagen: TBlobField;
  OpenPicture: TOpenPictureDialog;
  pnlBancos: TPanel;
  dxbrmngr1: TdxBarManager;
  Editar1: TdxBarButton;
  Registrar1: TdxBarButton;
  Can1: TdxBarButton;
  Eliminar1: TdxBarButton;
  Salir1: TdxBarButton;
  Refresh1: TdxBarButton;
  Imprimir1: TdxBarButton;
  Insertar1: TdxBarButton;
  Cut1: TdxBarButton;
  Copy1: TdxBarButton;
    bancosiCodigoSAT: TIntegerField;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    N1: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N2: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N3: TMenuItem;
    MenuItem7: TMenuItem;
    Paste1: TMenuItem;
    N4: TMenuItem;
    MenuItem8: TMenuItem;
    pm1: TdxRibbonPopupMenu;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tstelefono: TDBEdit;
    tsContacto: TDBEdit;
    tscodigo: TDBEdit;
    tsCiudad: TDBEdit;
    tsDescripcion: TDBEdit;
    tsIdBanco: TDBEdit;
    GroupBox1: TGroupBox;
    bImagen: TImage;
    DBEdit1: TDBEdit;
    grid_bancos: TcxGrid;
    BView_grid_bancos: TcxGridDBTableView;
    BView_grid_bancossIdBanco1: TcxGridDBColumn;
    BView_grid_bancossDescripcion1: TcxGridDBColumn;
    BView_grid_bancossContacto1: TcxGridDBColumn;
    grid_bancosLevel1: TcxGridLevel;
  procedure tsIdEmbarcacionKeyPress(Sender: TObject; var Key: Char);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure grid_bancosCellClick(Column: TColumn);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure Insertar1Click(Sender: TObject);
  procedure Editar1Click(Sender: TObject);
  procedure Registrar1Click(Sender: TObject);
  procedure Can1Click(Sender: TObject);
  procedure Eliminar1Click(Sender: TObject);
  procedure Refresh1Click(Sender: TObject);
  procedure Salir1Click(Sender: TObject);
  procedure tsIdBancoEnter(Sender: TObject);
  procedure tsIdBancoExit(Sender: TObject);
  procedure tscodigoEnter(Sender: TObject);
  procedure tscodigoExit(Sender: TObject);
  procedure frmBarra1btnPrinterClick(Sender: TObject);
  procedure bImagenClick(Sender: TObject);
  procedure bancosAfterScroll(DataSet: TDataSet);
  procedure grid_bancosEnter(Sender: TObject);
  procedure tsIdBancoKeyPress(Sender: TObject; var Key: Char);
  procedure grid_bancosMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure grid_bancosMouseUp(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  procedure grid_bancosTitleClick(Column: TColumn);
  procedure Cut1Click(Sender: TObject);
  procedure Copy1Click(Sender: TObject);
  procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
  procedure tsCiudadKeyPress(Sender: TObject; var Key: Char);
  procedure tscodigoKeyPress(Sender: TObject; var Key: Char);
  procedure tsContactoKeyPress(Sender: TObject; var Key: Char);
  procedure tsCiudadEnter(Sender: TObject);
  procedure tsCiudadExit(Sender: TObject);
  procedure tsDescripcionEnter(Sender: TObject);
  procedure tsDescripcionExit(Sender: TObject);
  procedure tsContactoEnter(Sender: TObject);
  procedure tsContactoExit(Sender: TObject);
  procedure tstelefonoEnter(Sender: TObject);
  procedure tstelefonoExit(Sender: TObject);
  procedure Imprimir1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure tstelefonoKeyPress(Sender: TObject; var Key: Char);
private
  sMenuP: String;
    { Private declarations }
public
    { Public declarations }
    descartarAfterScroll : boolean;
end;

var
  frmBancos: TfrmBancos;
  utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
  sIdOrig : string;

implementation

uses frm_activos, frmCatalogodeCuentas, frm_proveedores;

{$R *.dfm}

procedure TfrmBancos.tsIdEmbarcacionKeyPress(Sender: TObject;
var
  Key: Char);
begin
  if key = #13 then tsDescripcion.SetFocus
end;

procedure TfrmBancos.tstelefonoEnter(Sender: TObject);
begin
  tsTelefono.Color := global_color_entradaERP;
end;

procedure TfrmBancos.tstelefonoExit(Sender: TObject);
begin
  tsTelefono.Color := clWhite;
end;

procedure TfrmBancos.tstelefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsIdBanco.SetFocus;
end;

procedure TfrmBancos.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin
  Bancos.Cancel ;
  action := cafree ;
  //utgrid.destroy;
  botonpermiso.Free;
end;

procedure TfrmBancos.FormShow(Sender: TObject);
begin
  //Connection.ConfiguracionCont.Refresh ;
  sMenuP:=stMenu;
  //BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'adActivos', PopupPrincipal);
  //UtGrid:=TicdbGrid.create(grid_bancos);
  OpcButton := '' ;
  //frmBarra1.btnCancel.Click ;
  Bancos.Active := False ;
  try
    bancos.AfterScroll := nil;
    Bancos.Open ;
  finally
    bancos.AfterScroll :=  bancosAfterScroll;
  end;
  //BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBancos.grid_bancosCellClick(Column: TColumn);
begin
  {if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;}
end;

procedure TfrmBancos.frmBarra1btnAddClick(Sender: TObject);
begin
  //activapop(frmBancos, popupprincipal);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Refresh1.Enabled := False ;
  Imprimir1.Enabled := False ;
  Salir1.Enabled := False ;
  bImagen.Picture := Nil ;
  OpenPicture.FileName := '' ;
  tsIdBanco.SetFocus ;
  //BotonPermiso.permisosBotones(frmBarra1);
  grid_bancos.Enabled:=False;
  bancos.Append ;
  frmBarra1.btnAddClick(Sender);
end;

procedure TfrmBancos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  Insertar1.Enabled := False ;
  Editar1.Enabled := False ;
  Registrar1.Enabled := True ;
  Can1.Enabled := True ;
  Eliminar1.Enabled := False ;
  Imprimir1.Enabled := False ;
  Refresh1.Enabled := False ;
  Salir1.Enabled := False ;
  grid_bancos.Enabled:=False;
  if Bancos.recordcount > 0 then
  begin
    try
      //activapop(frmBancos, popupprincipal);
      Bancos.Edit ;
    except
      on e : exception do
      begin
       UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Opcion Bancos', 'Al editar registro', 0);
       frmBarra1.btnCancel.Click ;
      end;
    end ;
    tsIdBanco.SetFocus;
  end;
  //BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBancos.frmBarra1btnPostClick(Sender: TObject);
Var
  bS  : TStream;
  Pic : TJpegImage;
  BlobField : tField ;
  nombres, cadenas: TStringList;
  image : Integer;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
  if not validaTexto(nombres, cadenas, 'Activo', tsIdBanco.Text) then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;
  {Continua insercion de datos}
  Try
    If (OpenPicture.FileName = '') OR (OpenPicture.FileName = ' ') Then
    begin
      If FileExists(global_ruta + 'MiImagen.jpg') Then
      begin
          OpenPicture.FileName := global_ruta +  'MiImagen.jpg' ;
          image := 1;
      end
      else
      begin
        if bancos.state = dsEdit then
        begin
          image := 1;
        end
        else
        begin
          ShowMessage('Necesita registrar una imagen.');
          image := 0;
        end;
      end;
    end;
    If OpenPicture.FileName <> '' Then
    Begin
      Try
          BlobField := bancos.FieldByName('bImagen') ;
          BS := bancos.CreateBlobStream ( BlobField , bmWrite ) ;
          image := 1;
          try
               Pic:=TJpegImage.Create;
               try
                  Pic.LoadFromFile(OpenPicture.FileName) ;
                  Pic.SaveToStream(Bs) ;
               finally
                  Pic.Free;
                  OpenPicture.FileName := '';
               end;
          finally
               bS.Free;
          end
      Except

      End
    End Else
    Begin
      //if image = 0 then
        //desactivapop(popupprincipal);
    End;
    if image = 1 then
    begin
      //Activos.FieldValues['bImagen'] := Null;
      try
         bancos.post ;
      except
         on e:exception do
         begin
           ShowMessage(e.Message);
         end;
      end;


      Insertar1.Enabled := True ;
      Editar1.Enabled := True ;
      Registrar1.Enabled := False ;
      Can1.Enabled := False ;
      Eliminar1.Enabled := True ;
      Refresh1.Enabled := True ;
      Salir1.Enabled := True ;
      Imprimir1.Enabled := true ;
      grid_bancos.Enabled:=True;
      frmBarra1.btnPostClick(Sender);

      //Una vez que se registro el banco, entonces se debe de cerrar esta ventna
       try
           if Assigned(frm_CatalogoCuentas)then
           begin
               frmCatalogodeCuentas.frm_CatalogoCuentas.qryBancos.Refresh;
               frmCatalogodeCuentas.frm_CatalogoCuentas.dbBanco.DataBinding.DataSource.DataSet.FieldByName('sIdBanco').AsString := Bancos.FieldValues['sIdBanco'];
               frmCatalogodeCuentas.frm_CatalogoCuentas.dbBanco.SetFocus;
               Close;
           end;
           if Assigned(frmProveedores) then
           begin
               frmProveedores.qryBancos.Refresh;
               frmProveedores.cbbBanco.KeyValue := Bancos.FieldValues['sIdBanco'];
               frmProveedores.cbbBanco.SetFocus;
               Close;
           end;


        Except
    end;
    end;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Activos Integrales', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;
   //BotonPermiso.permisosBotones(frmBarra1);


end;

procedure TfrmBancos.frmBarra1btnCancelClick(Sender: TObject);
begin
  //desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  Imprimir1.Enabled := true ;
  grid_bancos.Enabled:=True;
  bancos.Cancel ;
  //BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBancos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If bancos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        bancos.Delete ;
      except
        on e : exception do
        begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Opcion Bancos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmBancos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  bancos.Refresh;
end;

procedure TfrmBancos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  Salir1.Enabled := True ;
  close  ;
end;

procedure TfrmBancos.tsDescripcionEnter(Sender: TObject);
begin
   tsDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmBancos.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := clWhite;
end;

procedure TfrmBancos.tsDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsCiudad.SetFocus;
end;

procedure TfrmBancos.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;

procedure TfrmBancos.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmBancos.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmBancos.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmBancos.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmBancos.Copy1Click(Sender: TObject);
begin
  //BView_grid_bancos.NewItemRow;
end;

procedure TfrmBancos.Cut1Click(Sender: TObject);
begin
  //BView_grid_bancos.CopyToClipboard;
end;

procedure TfrmBancos.DBEdit1Enter(Sender: TObject);
begin
  DBEdit1.Color := global_color_entradaERP;
end;

procedure TfrmBancos.DBEdit1Exit(Sender: TObject);
begin
  DBEdit1.Color := clWhite;
end;

procedure TfrmBancos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsDescripcion.SetFocus;
end;

procedure TfrmBancos.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmBancos.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmBancos.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmBancos.tsIdBancoEnter(Sender: TObject);
begin
  tsIdBanco.Color := global_color_entradaERP;
end;

procedure TfrmBancos.tsIdBancoExit(Sender: TObject);
begin
  tsIdBanco.Color := global_color_salidaERP; 
end;

procedure TfrmBancos.tsIdBancoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then DBEdit1.SetFocus;
end;

procedure TfrmBancos.tsCiudadEnter(Sender: TObject);
begin
  tsCiudad.Color := global_color_entradaERP;
end;

procedure TfrmBancos.tsCiudadExit(Sender: TObject);
begin
  tsCiudad.Color := clWhite;
end;

procedure TfrmBancos.tsCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsCodigo.SetFocus;
end;

procedure TfrmBancos.tscodigoEnter(Sender: TObject);
begin
  tsCodigo.Color := global_color_entradaERP;
end;

procedure TfrmBancos.tscodigoExit(Sender: TObject);
begin
  tsCodigo.Color := clWhite;
end;

procedure TfrmBancos.tscodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsContacto.SetFocus;
end;

procedure TfrmBancos.tsContactoEnter(Sender: TObject);
begin
  tsContacto.Color := global_color_entradaERP;
end;

procedure TfrmBancos.tsContactoExit(Sender: TObject);
begin
  tsContacto.Color := clWhite;
end;

procedure TfrmBancos.tsContactoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsTelefono.SetFocus

end;

procedure TfrmBancos.frmBarra1btnPrinterClick(Sender: TObject);
begin


  try
  If Bancos.RecordCount > 0 Then
    frxResidencias.PreviewOptions.Modal := False ;
    frxResidencias.PreviewOptions.ShowCaptions := False ;
    frxResidencias.Previewoptions.ZoomMode := zmPageWidth ;
    frxResidencias.LoadFromFile (global_files + global_miReporte + '_CADfrbancos.fr3') ;
      if not FileExists(global_files + global_miReporte + '_CADfrbancos.fr3') then
  begin
   showmessage('El archivo de reporte '+global_Mireporte+'_CADfrbancos.fr3 no existe, notifique al administrador del sistema');

  end;
      frxResidencias.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  except
  end;
end;

procedure TfrmBancos.bImagenClick(Sender: TObject);
begin
  If (Bancos.State = dsInsert) or (Bancos.State = dsEdit) then
  Begin
    OpenPicture.Title := 'Inserta Imagen';
    If OpenPicture.Execute then
    begin
      try
        bImagen.Picture.LoadFromFile(OpenPicture.FileName) ;
        
      except
        bImagen.Picture.LoadFromFile(global_ruta +  'MiImagen.jpg') ;
      end
    end
  end
end;

procedure TfrmBancos.bancosAfterScroll(DataSet: TDataSet);
var
  bS,bSX  : TStream;
  Pic : TJpegImage;
  BlobField,BlobFieldX : tField ;
  error:boolean;
begin
    error:=false;
    If Bancos.State = dsBrowse Then
    begin
      If Bancos.RecordCount > 0 Then
      Begin
        BlobField := Bancos.FieldByName('bImagen') ;
        BS := Bancos.CreateBlobStream ( BlobField , bmRead ) ;
        try
          If bs.Size > 1 Then
          Begin     //**************************************************************************
            Pic:=TJpegImage.Create;
            try
              TRY
                Pic.LoadFromStream(bS);
                bImagen.Picture.Graphic:=Pic;
                // SHOWMESSAGE('Abierto');
              EXCEPT
                on e : exception do
                begin
                  error:=true;
                end;
              END;
            finally
              Pic.Free;
            end;
          End  //*****************************************************************
          Else
            bImagen.Picture := Nil    ;
        finally
          bS.Free
        End
      End
    end;
    if error then
    begin
      OpenPicture.FileName := global_ruta +  'SEARCH.jpg' ;
      frmBarra1btnEditClick(Self);
      frmBarra1btnPostClick(Self);
    end;
end;

procedure TfrmBancos.grid_bancosEnter(Sender: TObject);
begin
  {If frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click ;}
end;

procedure TfrmBancos.grid_bancosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmBancos.grid_bancosMouseUp(Sender: TObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmBancos.grid_bancosTitleClick(Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
end;
end.
