unit frm_Almacenes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, Grids, DBGrids, frm_barra, StdCtrls,
  Mask, DBCtrls, DB, Menus, ADODB, frxClass, frxDBSet, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, udbgrid, unitexcepciones, unittbotonespermisos,
  UnitValidaTexto,unitactivapop, UFunctionsGHH, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,masUtilerias,
  cxContainer, cxCheckBox, cxDBEdit, FormAutoScaler, cxTextEdit, cxMemo;

type
  tfrmAlmacenes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    frmBarra1: TfrmBarra;
    ds_almacenes: TDataSource;
    DBAlmacenes: TfrxDBDataset;
    frxAlmacenes: TfrxReport;
    Label3: TLabel;
    Label4: TLabel;
    Almacenes: TZQuery;
    AlmacenessIdAlmacen: TStringField;
    AlmacenessCiudad: TStringField;
    AlmacenessCp: TStringField;
    AlmacenessTelefono: TStringField;
    AlmacenessDescripcion: TStringField;
    AlmacenessDireccion: TStringField;
    AlmacenessFax: TStringField;
    AlmacenessComentarios: TStringField;
    grid_MovtosDBTableView1: TcxGridDBTableView;
    grid_MovtosLevel1: TcxGridLevel;
    grid_Movtos: TcxGrid;
    grid_MovtosDBTableView1Column1: TcxGridDBColumn;
    Col_grid_MovtosDBDescripcion: TcxGridDBColumn;
    Col_grid_MovtosDBUbicacion: TcxGridDBColumn;
    pmPopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    cxDBCheckBox1: TcxDBCheckBox;
    zqAlmaceneslPrincipal: TStringField;
    frmtsclr1: TFormAutoScaler;
    tsIdAlmacen: TcxDBTextEdit;
    tsDescripcion: TcxDBTextEdit;
    tsUbicacion: TcxDBTextEdit;
    tsComentarios: TcxDBMemo;
    procedure GLOBA(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure grid_MovtosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIdAlmacenEnter(Sender: TObject);
    procedure tsIdAlmacenExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tsUbicacionEnter(Sender: TObject);
    procedure tsUbicacionExit(Sender: TObject);
    procedure tsUbicacionKeyPress(Sender: TObject; var Key: Char);
    procedure TSCOMENTARIOSEnter(Sender: TObject);
    procedure TSCOMENTARIOSExit(Sender: TObject);
    procedure TSCOMENTARIOSKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);

    procedure habilitarCajas(Activo : Boolean);
    procedure desactivaEdit(Estado: TdatasetState);

  private
  sMenuP: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlmacenes: TfrmAlmacenes;
  //UtGrid:TicDbGrid;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
implementation

uses
  frm_RecepciondeMateriales;

{$R *.dfm}

procedure TfrmAlmacenes.GLOBA(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmAlmacenes.tsDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsUbicacion.SetFocus
end;


procedure TfrmAlmacenes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if frmRecepcionDeMateriales.Active then
    begin
      frmRecepcionDeMateriales.zq_almacenes.Refresh;
      frmRecepcionDeMateriales.DBLookupComboBox1.KeyValue:=Almacenes.FieldValues['sIdAlmacen'];
    end;
  Except
  end;
  Almacenes.Cancel ;
  action := cafree ;
  //utgrid.Destroy;
  botonpermiso.Free;
end;

procedure TfrmAlmacenes.frmBarra1btnAddClick(Sender: TObject);
begin
   habilitarCajas(True);
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tsIdAlmacen.Enabled:=True;
   tsIdAlmacen.SetFocus ;
   Almacenes.Append ;

   BotonPermiso.permisosBotones(frmBarra1);
   grid_movtos.Enabled := False;
   BloquearItemsPopup(pmPopupPrincipal, True );
end;

procedure TfrmAlmacenes.frmBarra1btnEditClick(Sender: TObject);
begin
   habilitarCajas(True);

   frmBarra1.btnEditClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   sOpcion := 'Edit';
   try
       Almacenes.Edit ;
   except
      on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Almacenes', 'Al agregar registro', 0);
       frmBarra1.btnCancel.Click ;
      end;
   end ;
   tsIdAlmacen.Enabled:=False;
   BotonPermiso.permisosBotones(frmBarra1);
   grid_movtos.Enabled := False;
   BloquearItemsPopup(pmPopupPrincipal, True );
end;

procedure TfrmAlmacenes.frmBarra1btnPostClick(Sender: TObject);
var
   nombres, cadenas: TStringList;
   item : Integer;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;
  cadenas:=TStringList.Create;
  nombres.Add('Id Almacen');
  nombres.Add('Descripción');
  nombres.Add('Ubicación');
  nombres.Add('Comentarios');
  cadenas.Add(tsIdAlmacen.Text);
  cadenas.Add(tsDescripcion.Text);
  cadenas.Add(tsUbicacion.Text);
  cadenas.Add(tsComentarios.Text);

  tsIdAlmacen.Enabled:=True;

  if not validaTexto(nombres, cadenas, '','') then
  begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
  end;

  {Continua insercion de datos..}

  try
    Almacenes.Post ;
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    frmBarra1.btnPostClick(Sender);
    grid_movtos.Enabled := True;
    habilitarCajas(False);
  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Almacenes', 'Al salvar registro', 0);
      frmBarra1.btnCancel.Click ;
    end;
  end;

  BotonPermiso.permisosBotones(frmBarra1);
  if sOpcion = 'Edit' then
  begin
    grid_movtos.Enabled := True;
    sOpcion := '';
  end;
  BloquearItemsPopup(pmPopupPrincipal, False );
end;

procedure TfrmAlmacenes.frmBarra1btnCancelClick(Sender: TObject);
begin
   habilitarCajas(False);

   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   tsIdAlmacen.Enabled:=True;
   Almacenes.Cancel ;

   BotonPermiso.permisosBotones(frmBarra1);
   grid_movtos.Enabled := True;
   sOpcion := '';
   BloquearItemsPopup(pmPopupPrincipal, False );
end;

procedure TfrmAlmacenes.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If Almacenes.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sIdAlmacen from insumos Where sIdAlmacen =:almacen');
          Connection.QryBusca.Params.ParamByName('almacen').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('almacen').Value    := almacenes.FieldValues['sIdAlmacen'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('No se puede Borrar el Registro por que Existe en INSUMOS', mtInformation, [mbOk], 0)
          Else
            begin
              Connection.QryBusca.Active := False ;
              Connection.QryBusca.SQL.Clear ;
              Connection.QryBusca.SQL.Add('Select sIdAlmacen from almacenesxcontratos Where sIdAlmacen =:almacen');
              Connection.QryBusca.Params.ParamByName('almacen').DataType := ftString ;
              Connection.QryBusca.Params.ParamByName('almacen').Value    := almacenes.FieldValues['sIdAlmacen'] ;
              Connection.QryBusca.Open ;
               If Connection.QryBusca.RecordCount > 0 Then
                       MessageDlg('No se puede Borrar el Registro por que Existe en Almacenes x Contratos', mtInformation, [mbOk], 0)
               Else
                  Almacenes.Delete ;
            end;


      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Almacenes', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmAlmacenes.frmBarra1btnRefreshClick(Sender: TObject);
begin
  Almacenes.Refresh ;
end;

procedure TfrmAlmacenes.frmBarra1btnExitClick(Sender: TObject);
begin
    {frmBarra1.btnExitClick(Sender);
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ; }
    close;
end;

procedure TfrmAlmacenes.grid_MovtosCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
       frmBarra1.btnCancel.Click ;
end;

procedure tfrmAlmacenes.habilitarCajas(Activo: Boolean);
begin
  //Este procedimiento habilita o deshabilita las cajas de texto
  tsIdAlmacen.Enabled := Activo;
end;

procedure TfrmAlmacenes.FormShow(Sender: TObject);
begin
  //habilitarCajas(False);

  sMenuP:=stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuCatalogodeMo', pmPopupPrincipal);
  OpcButton := '' ;
  Almacenes.Active := False ;
  Almacenes.Open ;
  frmBarra1.btnCancel.Click ;
  BotonPermiso.permisosBotones(frmBarra1);
  BloquearItemsPopup(pmPopupPrincipal, False );
end;

procedure tfrmAlmacenes.Imprimir1Click(Sender: TObject);
begin
    frmbarra1.btnPrinter.Click;
end;

procedure tfrmAlmacenes.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure tfrmAlmacenes.Pegar1Click(Sender: TObject);
begin
ModificarPortapapeles(self.ActiveControl,ftpegar)
end;

procedure tfrmAlmacenes.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure tfrmAlmacenes.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure tfrmAlmacenes.Registrar1Click(Sender: TObject);
begin
   frmBarra1.btnPost.Click
end;

procedure tfrmAlmacenes.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click
end;

procedure tfrmAlmacenes.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure tfrmAlmacenes.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure tfrmAlmacenes.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure tfrmAlmacenes.tsIdAlmacenEnter(Sender: TObject);
begin
    tsIdAlmacen.style.Color := global_color_entradaERP;
end;

procedure tfrmAlmacenes.tsIdAlmacenExit(Sender: TObject);
begin
    tsIdAlmacen.style.Color := global_color_salidaERP;
end;

procedure tfrmAlmacenes.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.style.Color := global_color_entradaERP;
end;

procedure tfrmAlmacenes.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.style.Color := global_color_salidaERP;
end;

procedure tfrmAlmacenes.frmBarra1btnPrinterClick(Sender: TObject);
begin


   If Almacenes.RecordCount > 0 Then
   begin
      frxAlmacenes.LoadFromFile(global_files + global_miReporte + '_ALMAlmacenes.fr3');

          if not FileExists(global_files + global_miReporte + '_ALMAlmacenes.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ALMAlmacenes.fr3 no existe, notifique al administrador del sistema');



      frxAlmacenes.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
   end
   else
      messageDLG('No se encontro informacion a Imprimir.' , mtInformation, [mbOk], 0);
end;

procedure tfrmAlmacenes.tsUbicacionEnter(Sender: TObject);
begin
    tsUbicacion.style.color := global_color_entradaERP;
end;

procedure tfrmAlmacenes.tsUbicacionExit(Sender: TObject);
begin
    tsUbicacion.style.Color := global_color_salidaERP;
end;

procedure tfrmAlmacenes.tsUbicacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsComentarios.SetFocus ;
end;

procedure tfrmAlmacenes.TSCOMENTARIOSEnter(Sender: TObject);
begin
    tsComentarios.style.Color := global_color_entradaERP;
end;

procedure tfrmAlmacenes.TSCOMENTARIOSExit(Sender: TObject);
begin
    tsComentarios.style.Color := global_color_salidaERP;
end;

procedure tfrmAlmacenes.TSCOMENTARIOSKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tsidalmacen.SetFocus ;
end;
procedure tfrmAlmacenes.desactivaEdit(Estado: TdatasetState);
begin
 if Estado = dsbrowse then
 begin
   tsIdAlmacen.Enabled :=false;
 end;
 if Estado <> dsbrowse then
 begin
  tsIdAlmacen.Enabled := true;
 end;
 end;


end.
