unit frmBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DateUtils, unittbotonespermisos, unitactivapop, UFunctionsGHH,
  Grids, DBGrids, ExtCtrls, DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid,  NxDBColumns, NxColumns, StdCtrls, Mask, frm_barra, UDbGrid, global,
  JvExMask, JvToolEdit, JvMaskEdit, JvDBControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu,cxInplaceContainer, cxDBTL, cxTLData,
  cxContainer, cxEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBEdit, cxImageComboBox, {dxSkinscxPCPainter, }
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, {dxSkinsdxBarPainter,}
  dxBar, dxRibbonRadialMenu, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FormAutoScaler, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, frxClass, frxDBSet, ExtDlgs, jpeg,
  cxCheckBox, cxGroupBox, UnitGenerales;

type
  Tfrm_BancosGral = class(TForm)
  Splitter1: TSplitter;
  frmBarra1: TfrmBarra;
    dxbrmngr1: TdxBarManager;
    dxEditar: TdxBarButton;
    dxGuardar: TdxBarButton;
    dxCancelar: TdxBarButton;
    dxEliminar: TdxBarButton;
    dxSalir: TdxBarButton;
    dxRefrescar: TdxBarButton;
    dxImprimir: TdxBarButton;
    dxInsertar: TdxBarButton;
    dxRibbonRadialMenu1: TdxRibbonRadialMenu;
    fsc_CatalogoAreas: TFormAutoScaler;
    OpenPicture: TOpenPictureDialog;
    dsBancos: TDataSource;
    bancos: TZQuery;
    dbResidencias: TfrxDBDataset;
    frxBancos: TfrxReport;
    grid_bancos: TcxGrid;
    dbgBView_areas: TcxGridDBTableView;
    Col_codigo: TcxGridDBColumn;
    Col_banco: TcxGridDBColumn;
    dbg_bancosLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    tsIdBanco: TDBEdit;
    msucursal: TDBEdit;
    tsDescripcion: TDBEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl1: TLabel;
    tsContacto: TDBEdit;
    tstelefono: TDBEdit;
    tiSAT: TDBEdit;
    tscodigo: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    grp1: TGroupBox;
    bImagen: TImage;
    Col_Ciudad: TcxGridDBColumn;
    Col_Contacto: TcxGridDBColumn;
    bancosidbanco: TIntegerField;
    bancosnombre: TStringField;
    bancossucursal: TStringField;
    bancosnumsucursal: TIntegerField;
    bancoscontacto: TStringField;
    bancostelefono: TStringField;
    bancoscodigo: TStringField;
    bancosactivo: TStringField;
    bancosIdBancoCFDI: TIntegerField;
    bancosimagen: TBlobField;
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure blbfldQCatalogodeAreasdescripcionGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
  procedure blbfldQCatalogodeAreascomentariosGetText(Sender: TField;
    var Text: string; DisplayText: Boolean);
  procedure grid_ComunidadesDblClick(Sender: TObject);
    procedure dbgBView_areasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure closeFormulario;
    procedure tsIdBancoEnter(Sender: TObject);
    procedure tsIdBancoExit(Sender: TObject);
    procedure tsIdBancoKeyPress(Sender: TObject; var Key: Char);
    procedure tiSATKeyPress(Sender: TObject; var Key: Char);
    procedure tiSATEnter(Sender: TObject);
    procedure tiSATExit(Sender: TObject);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);

    procedure tscodigoKeyPress(Sender: TObject; var Key: Char);
    procedure tscodigoEnter(Sender: TObject);
    procedure tscodigoExit(Sender: TObject);
    procedure tsContactoKeyPress(Sender: TObject; var Key: Char);
    procedure tsContactoEnter(Sender: TObject);
    procedure tsContactoExit(Sender: TObject);
    procedure tstelefonoEnter(Sender: TObject);
    procedure tstelefonoExit(Sender: TObject);
    procedure tstelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure bImagenClick(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure bancosAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxImprimirClick(Sender: TObject);
    procedure dxSalirClick(Sender: TObject);
    procedure msucursalKeyPress(Sender: TObject; var Key: Char);
  //Fin de procedures
private
  { Private declarations }
  sMenuP: String;
public
  { Public declarations }
end;

var
  frm_BancosGral: Tfrm_BancosGral;
  sOpcion : string;
implementation

uses frm_connection, frmEmpleados, utilerias, frm_requisiondepersonal,
  UnitExcepciones, UnitValidaTexto;

{$R *.dfm}

procedure Tfrm_BancosGral.bancosAfterScroll(DataSet: TDataSet);
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
      BlobField := Bancos.FieldByName('imagen') ;
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

procedure Tfrm_BancosGral.bImagenClick(Sender: TObject);
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

procedure Tfrm_BancosGral.blbfldQCatalogodeAreascomentariosGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure Tfrm_BancosGral.blbfldQCatalogodeAreasdescripcionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

procedure Tfrm_BancosGral.dbgBView_areasCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //Cuando se de coble click, entonces debe mostrar el departamento en el combo de empleados
  closeFormulario;
end;

procedure Tfrm_BancosGral.dxImprimirClick(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click ;
end;

procedure Tfrm_BancosGral.dxSalirClick(Sender: TObject);
begin
  close ;
end;

procedure Tfrm_BancosGral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := cafree ;
end;

procedure Tfrm_BancosGral.FormShow(Sender: TObject);
begin
   sMenuP:=stMenu;
   OpcButton := '' ;
   Bancos.Active := False ;
   Bancos.Open ;
end;

procedure Tfrm_BancosGral.frmBarra1btnAddClick(Sender: TObject);
begin
  bImagen.Picture := Nil ;
  OpenPicture.FileName := '' ;
  global_movimiento := 'Insertó';
  tsIdBanco.SetFocus ;
  //BotonPermiso.permisosBotones(frmBarra1);
  grid_bancos.Enabled:=False;
  bancos.Append ;
  bancos.FieldValues['nombre']     := '*';
  bancos.FieldValues['sucursal']   := '*';
  bancos.FieldValues['Codigo']     := '*';
  bancos.FieldValues['contacto']   := '*';
  bancos.FieldValues['telefono']   := '*';
  bancos.FieldValues['activo']     := 'Si' ;
  bancos.FieldValues['IdBancoCFDI'] := 0 ;
  frmBarra1.btnAddClick(Sender);
end;

procedure Tfrm_BancosGral.frmBarra1btnCancelClick(Sender: TObject);
begin
  //desactivapop(popupprincipal);
  frmBarra1.btnCancelClick(Sender);
  grid_bancos.Enabled:=True;
  global_movimiento := '';
  bancos.Cancel ;
end;

procedure Tfrm_BancosGral.frmBarra1btnDeleteClick(Sender: TObject);
var mov:String;
begin
  If bancos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
        global_movimiento := 'Eliminó';
        mov:= 'Se realizó la eliminación del Banco No. [' + bancos.FieldByName('IdBanco').AsString + ']';
        connection.zCommand.Sql.Clear ;
        connection.zcommand.SQL.Text := 'Update con_bancos Set activo="No" Where idBanco =:IdBanco' ;
        connection.zCommand.Params.ParamByName('IdBanco').Value := bancos.FieldByName('idBanco').asString ;
        connection.zCommand.ExecSQL ;
        kardex_almacen(mov, global_movimiento);
        bancos.Refresh ;
      except
        on e : exception do
        begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Opcion Bancos', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure Tfrm_BancosGral.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  grid_bancos.Enabled:=False;

  if Bancos.recordcount > 0 then
  begin
    try
      global_movimiento := 'Modificó';
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
end;

procedure Tfrm_BancosGral.frmBarra1btnExitClick(Sender: TObject);
begin
 // frmBarra1.btnExitClick(Sender);
  close  ;
end;

procedure Tfrm_BancosGral.frmBarra1btnPostClick(Sender: TObject);
Var
  bS  : TStream;
  Pic : TJpegImage;
  BlobField : tField ;
  nombres, cadenas: TStringList;
  image : Integer;
  mov : String;
begin
  {Validacion de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Descripcion');cadenas.Add(tsDescripcion.Text);
  if not validaTexto(nombres, cadenas, 'Si', tsIdBanco.Text) then
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
          BlobField := bancos.FieldByName('imagen') ;
          BS := bancos.CreateBlobStream ( BlobField , bmWrite ) ;
          image := 1;
          try
               Pic:=TJpegImage.Create;
               try
                  Pic.LoadFromFile(OpenPicture.FileName) ;
                  Pic.SaveToStream(Bs) ;
               finally
                  Pic.Free;
               end;
          finally
               bS.Free
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
      bancos.post ;

    if global_movimiento = 'Insertó' then
      mov:= 'Se realizó la inserción del Banco No. [' + bancos.FieldByName('IdBanco').AsString + ']'
    else if global_movimiento = 'Modificó' then
      mov:= 'Se realizó la modificación del Banco No. [' + bancos.FieldByName('IdBanco').AsString + ']';

    kardex_almacen(mov, global_movimiento);

      closeFormulario;
      grid_bancos.Enabled:=True;
      frmBarra1.btnPostClick(Sender);
    end;
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Modulo Bancos Nominas-RH', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;

end;

procedure Tfrm_BancosGral.frmBarra1btnPrinterClick(Sender: TObject);
begin
 try
    If Bancos.RecordCount > 0 Then

        if not FileExists(global_files + global_miReporte + '_CADfrBancos.fr3') then
        begin
            showmessage('El archivo de reporte '+global_Mireporte+'_CADfrBancos.fr3 no existe, notifique al administrador del sistema');
            exit;
        end;

      frxBancos.PreviewOptions.Modal := False ;
      frxBancos.PreviewOptions.ShowCaptions := False ;
      frxBancos.Previewoptions.ZoomMode := zmPageWidth ;
      frxBancos.LoadFromFile (global_files + global_miReporte+'_CADfrbancos.fr3') ;

      frxBancos.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP))
  except
  end;
end;

procedure Tfrm_BancosGral.frmBarra1btnRefreshClick(Sender: TObject);
begin
  bancos.Refresh;
end;

procedure Tfrm_BancosGral.grid_ComunidadesDblClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_BancosGral.msucursalKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then tsContacto.SetFocus ;  
end;

procedure Tfrm_BancosGral.tiSATEnter(Sender: TObject);
begin
  tiSat.Color := global_color_entradaERP;
end;

procedure Tfrm_BancosGral.tiSATExit(Sender: TObject);
begin
  tiSat.Color := global_color_salidaERP;
end;

procedure Tfrm_BancosGral.tiSATKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then tscodigo.SetFocus;
end;


procedure Tfrm_BancosGral.tscodigoEnter(Sender: TObject);
begin
  tsCodigo.Color := global_color_entradaERP;
end;

procedure Tfrm_BancosGral.tscodigoExit(Sender: TObject);
begin
  tsCodigo.Color := global_color_salidaERP;
end;

procedure Tfrm_BancosGral.tscodigoKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then tsContacto.SetFocus;
end;

procedure Tfrm_BancosGral.tsContactoEnter(Sender: TObject);
begin
  tsContacto.Color := global_color_entradaERP
end;

procedure Tfrm_BancosGral.tsContactoExit(Sender: TObject);
begin
  tsContacto.Color := global_color_salidaERP
end;

procedure Tfrm_BancosGral.tsContactoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsTelefono.SetFocus
end;

procedure Tfrm_BancosGral.tsDescripcionEnter(Sender: TObject);
begin
   tsDescripcion.Color := global_color_entradaERP;
end;

procedure Tfrm_BancosGral.tsDescripcionExit(Sender: TObject);
begin
   tsDescripcion.Color := global_color_salidaERP;
end;

procedure Tfrm_BancosGral.tsDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        mSucursal.SetFocus;
end;

procedure Tfrm_BancosGral.tsIdBancoEnter(Sender: TObject);
begin
    tsIdBanco.Color := global_color_entradaERP;
end;

procedure Tfrm_BancosGral.tsIdBancoExit(Sender: TObject);
begin
    tsIdBanco.Color := global_color_salidaERP;
end;

procedure Tfrm_BancosGral.tsIdBancoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsDescripcion.SetFocus ;
end;

procedure Tfrm_BancosGral.tstelefonoEnter(Sender: TObject);
begin
  tsTelefono.Color := global_color_entradaERP
end;

procedure Tfrm_BancosGral.tstelefonoExit(Sender: TObject);
begin
  tsTelefono.Color := global_color_salidaERP
end;

procedure Tfrm_BancosGral.tstelefonoKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then tiSat.SetFocus;
end;

procedure Tfrm_BancosGral.closeFormulario;
begin
    try
      if Assigned(frm_Empleados)then
      begin
          frm_Empleados.zQBancos.Refresh;
          frm_Empleados.cxBanco.DataBinding.DataSource.DataSet.FieldByName('idBanco').AsInteger := bancos.FieldByName('idBanco').AsInteger;          Close;      end;    Except
    end;end;

end.
