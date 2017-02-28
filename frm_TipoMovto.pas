unit frm_TipoMovto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frm_connection, global, Grids, DBGrids, frm_barra, StdCtrls,
  Mask, DBCtrls, DB, Menus, ADODB, frxClass, frxDBSet, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, UDBGRID, unitexcepciones,
  unittbotonespermisos, UnitValidaTexto,unitactivapop, cxGraphics, cxControls,
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
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,masUtilerias,
  FormAutoScaler;

type
  tfrmMovtos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    tsIdTipo: TDBEdit;
    tsDescripcion: TDBEdit;
    frmBarra1: TfrmBarra;
    tsClasificacion: TDBComboBox;
    Label5: TLabel;
    ds_MovtosAlmacen: TDataSource;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    movimientosdealmacen: TZQuery;
    grid_Movtos: TcxGrid;
    grid_MovtosDBTableView1: TcxGridDBTableView;
    grid_MovtosDBTableView1Column1: TcxGridDBColumn;
    grid_MovtosDBTableView1Column2: TcxGridDBColumn;
    grid_MovtosDBTableView1Column3: TcxGridDBColumn;
    grid_MovtosLevel1: TcxGridLevel;
    Pegar1: TMenuItem;
    Copiar1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    procedure tsIdTipoKeyPress(Sender: TObject; var Key: Char);
    procedure tsDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tdIVAKeyPress(Sender: TObject; var Key: Char);
    procedure grid_MovtosCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsClasificacionKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTipoEnter(Sender: TObject);
    procedure tsIdTipoExit(Sender: TObject);
    procedure tsDescripcionEnter(Sender: TObject);
    procedure tsDescripcionExit(Sender: TObject);
    procedure tsClasificacionEnter(Sender: TObject);
    procedure tsClasificacionExit(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovtos: TfrmMovtos;
  //utgrid:ticdbgrid;
  botonpermiso:tbotonespermisos;
  sOpcion : string;
implementation

{$R *.dfm}

procedure TfrmMovtos.tsIdTipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsDescripcion.SetFocus
end;

procedure TfrmMovtos.tsDescripcionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsClasificacion.SetFocus
end;


procedure TfrmMovtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MovimientosdeAlmacen.Cancel ;
  action := cafree ;
  botonpermiso.Free;
  end;

procedure TfrmMovtos.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   tsIdTipo.ReadOnly:=False;
   tsIdTipo.SetFocus ;
   MovimientosdeAlmacen.Append ;
   BloquearItemsPopup(PopupPrincipal, True );
   BotonPermiso.permisosBotones(frmBarra1);
   grid_movtos.Enabled := False;
end;

procedure TfrmMovtos.frmBarra1btnEditClick(Sender: TObject);
begin
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
       MovimientosdeAlmacen.Edit ;
       BloquearItemsPopup(PopupPrincipal, True );
   except
     on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_tipomovto', 'Al agregar registro', 0);
       frmBarra1.btnCancel.Click ;
     end;
   end ;
   tsIdTipo.ReadOnly:=True;
   tsDescripcion.SetFocus;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmMovtos.frmBarra1btnPostClick(Sender: TObject);
var
   nombres, cadenas: TStringList;
begin
  {Validaciones de campos}
  nombres:=TStringList.Create;cadenas:=TStringList.Create;
  nombres.Add('Tipo');        nombres.Add('Descripcion');
  cadenas.Add(tsIdTipo.Text); cadenas.Add(tsDescripcion.Text);

  nombres.Add('Clasificacion');
  cadenas.Add(tsClasificacion.Text);

  if not validaTexto(nombres, cadenas, 'Tipo',tsIdTipo.Text) then
  begin
     MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
     exit;
  end;

  {Continua insercion de datos..}
   try
       MovimientosdeAlmacen.Post ;
       Insertar1.Enabled := True ;
       Editar1.Enabled := True ;
       Registrar1.Enabled := False ;
       Can1.Enabled := False ;
       Eliminar1.Enabled := True ;
       Refresh1.Enabled := True ;
       Salir1.Enabled := True ;
       frmBarra1.btnPostClick(Sender);
       BloquearItemsPopup(PopupPrincipal, False );
       tsIdTipo.ReadOnly:=False;
   except
       on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_tipomovto', 'Al salvar registro', 0);
       frmBarra1.btnCancel.Click ;

       end;
   end;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_movtos.Enabled := True;
   if sOpcion = 'Edit' then
   begin
       grid_movtos.Enabled := True;
       sOpcion := '';
   end;
end;

procedure TfrmMovtos.frmBarra1btnCancelClick(Sender: TObject);
begin
   frmBarra1.btnCancelClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled := True ;
   MovimientosdeAlmacen.Cancel ;
   BloquearItemsPopup(PopupPrincipal, False );
   tsIdTipo.ReadOnly:=False;
   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;
   grid_movtos.Enabled := True;
   sOpcion := '';
end;

procedure TfrmMovtos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  If MovimientosdeAlmacen.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          Connection.QryBusca.Active := False ;
          Connection.QryBusca.SQL.Clear ;
          Connection.QryBusca.SQL.Add('Select sIdTipo from anexo_suministro Where sIdTipo =:Tipo');
          Connection.QryBusca.Params.ParamByName('Tipo').DataType := ftString ;
          Connection.QryBusca.Params.ParamByName('Tipo').Value    := MovimientosdeAlmacen.FieldValues['sIdTipo'] ;
          Connection.QryBusca.Open ;
          If Connection.QryBusca.RecordCount > 0 Then
             MessageDlg('No se puede Borrar el Registro por que Existe en INSUMOS', mtInformation, [mbOk], 0)
          Else
             MovimientosdeAlmacen.Delete ;
      except
        on e : exception do begin
           UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_tipomovto', 'Al eliminar registro', 0);
        end;
      end
    end
end;

procedure TfrmMovtos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  MovimientosdeAlmacen.Active := False ;
  MovimientosdeAlmacen.Open
end;

procedure TfrmMovtos.frmBarra1btnExitClick(Sender: TObject);
begin
    frmBarra1.btnExitClick(Sender);
    Insertar1.Enabled := True ;
    Editar1.Enabled := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled := False ;
    Eliminar1.Enabled := True ;
    Refresh1.Enabled := True ;
    Salir1.Enabled := True ;
    close
end;

procedure TfrmMovtos.tdIVAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsIdTipo.SetFocus
end;

procedure TfrmMovtos.grid_MovtosCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
       frmBarra1.btnCancel.Click ;
end;

procedure TfrmMovtos.FormShow(Sender: TObject);
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuCatalogodeMo', PopupPrincipal);
  movimientosdealmacen.open ;
  OpcButton := '' ;
  frmBarra1.btnCancel.Click ;
  BloquearItemsPopup(PopupPrincipal, False );
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure tfrmMovtos.Insertar1Click(Sender: TObject);
begin
    frmBarra1.btnAdd.Click
end;

procedure tfrmMovtos.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure tfrmMovtos.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure tfrmMovtos.Editar1Click(Sender: TObject);
begin
    frmBarra1.btnEdit.Click 
end;

procedure tfrmMovtos.Registrar1Click(Sender: TObject);
begin
    frmBarra1.btnPost.Click 
end;

procedure tfrmMovtos.Can1Click(Sender: TObject);
begin
    frmBarra1.btnCancel.Click 
end;

procedure tfrmMovtos.Eliminar1Click(Sender: TObject);
begin
    frmBarra1.btnDelete.Click 
end;

procedure tfrmMovtos.Refresh1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click 
end;

procedure tfrmMovtos.Salir1Click(Sender: TObject);
begin
    frmBarra1.btnExit.Click 
end;

procedure tfrmMovtos.tsClasificacionKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsIdTipo.SetFocus 
end;

procedure tfrmMovtos.tsIdTipoEnter(Sender: TObject);
begin
    tsIdTipo.Color := global_color_entradaERP;
end;

procedure tfrmMovtos.tsIdTipoExit(Sender: TObject);
begin
    tsIdTipo.Color := global_color_salidaERP;
end;

procedure tfrmMovtos.tsDescripcionEnter(Sender: TObject);
begin
    tsDescripcion.Color := global_color_entradaERP
end;

procedure tfrmMovtos.tsDescripcionExit(Sender: TObject);
begin
    tsDescripcion.Color := global_color_salidaERP
end;

procedure tfrmMovtos.tsClasificacionEnter(Sender: TObject);
begin
    tsClasificacion.Color := global_color_entradaERP
end;

procedure tfrmMovtos.tsClasificacionExit(Sender: TObject);
begin
    tsClasificacion.Color := global_color_salidaERP
end;

end.
