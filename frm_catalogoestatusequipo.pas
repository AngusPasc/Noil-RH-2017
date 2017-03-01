unit frm_catalogoestatusequipo;

interface
             
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frm_connection, global, ComCtrls, ToolWin,
  StdCtrls, ExtCtrls, DBCtrls, Mask, frm_barra, adodb, db, Menus, OleCtrls,
  frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  udbgrid, unitexcepciones, unittbotonespermisos, UnitValidaTexto,
  unitactivapop, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, dxBar,
  dxRibbonRadialMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, UnitGenerales;

type
  TfrmCatalogoEstatusEquipo = class(TForm)
  Panel1: TPanel;
  Panel2: TPanel;
  Label2: TLabel;
  Label1: TLabel;
  Label3: TLabel;
  tsDescripcion: TDBEdit;
  tiColores: TColorBox;
  dbequipos: TDBComboBox;
  qryCatEstatus: TZQuery;
  dsCatEstatus: TDataSource;
  qryCatEstatusiId_Estatus: TIntegerField;
  qryCatEstatussDescripcion: TStringField;
  qryCatEstatusiColor: TIntegerField;
  qryCatEstatusiAplicaEquiposActivos: TStringField;
  dxBarManager1: TdxBarManager;
  dxInsertar: TdxBarLargeButton;
  dxEditar: TdxBarLargeButton;
  dxGuardar: TdxBarLargeButton;
  dxCancelar: TdxBarLargeButton;
  dxEliminar: TdxBarLargeButton;
  dxRefrescar: TdxBarLargeButton;
  dxSalir: TdxBarLargeButton;
  dxImprimir: TdxBarLargeButton;
  PopupMenu: TdxRibbonRadialMenu;
    BView_EstatusEquipos: TcxGridDBTableView;
    Grid_EstatusLevel1: TcxGridLevel;
    Grid_Estatus: TcxGrid;
    BView_EstatusEquiposColumn1: TcxGridDBColumn;
    BView_EstatusEquiposColumn2: TcxGridDBColumn;
    frmBarra1: TfrmBarra;
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
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure FormShow(Sender: TObject);
  procedure tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure tsIdGrupoKeyPress(Sender: TObject; var Key: Char);
  procedure tsDescripcionEnter(Sender: TObject);
  procedure tsDescripcionExit(Sender: TObject);
  procedure tiColoresEnter(Sender: TObject);
  procedure tiColoresExit(Sender: TObject);
  procedure qryCatEstatusAfterScroll(DataSet: TDataSet);
  procedure dbequiposEnter(Sender: TObject);
  procedure dbequiposExit(Sender: TObject);
  procedure dbequiposKeyPress(Sender: TObject; var Key: Char);
  procedure qryCatEstatusAfterInsert(DataSet: TDataSet);
  procedure cambio_estado;
    procedure btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
private
  { Private declarations }
public
  { Public declarations }
end;

var
  frmCatalogoEstatusEquipo : TfrmCatalogoEstatusEquipo;
  utgrid           : ticdbgrid;
  sOldId           : string;
  botonpermiso     : tbotonespermisos;
  sOpcion          : string;

implementation
uses
  frm_consumibles, frm_repositorio, Func_Genericas;
{$R *.dfm}

procedure TfrmCatalogoEstatusEquipo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure TfrmCatalogoEstatusEquipo.FormShow(Sender: TObject);
begin
   BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuFamiliadePro', PopupPrincipal);
   OpcButton := '' ;
   frmbarra1.btnCancel.Click ;

   qryCatEstatus.Active := False ;
   qryCatEstatus.Open ;
   grid_estatus.SetFocus;

   BotonPermiso.permisosBotones(frmBarra1);
   frmbarra1.btnPrinter.Enabled := False;

end;
procedure TfrmCatalogoEstatusEquipo.tsIdPersonalKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsDescripcion.SetFocus ;
end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnAddClick(Sender: TObject);
begin
   frmBarra1.btnAddClick(Sender);
   Insertar1.Enabled := False ;
   Editar1.Enabled := False ;
   Registrar1.Enabled := True ;
   Can1.Enabled := True ;
   Eliminar1.Enabled := False ;
   Refresh1.Enabled := False ;
   Salir1.Enabled := False ;
   global_movimiento := 'Insertó';

  dbequipos.SetFocus;
  qryCatEstatus.Append ;
  qryCatEstatus.FieldValues['sDescripcion'] := '';
  tsDescripcion.SetFocus;

  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  grid_estatus.Enabled := False;
end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnEditClick(Sender: TObject);
begin
  If qryCatEstatus.RecordCount > 0 Then
  Begin
    try
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled := False ;
      Editar1.Enabled := False ;
      Registrar1.Enabled := True ;
      Can1.Enabled := True ;
      Eliminar1.Enabled := False ;
      Refresh1.Enabled := False ;
      Salir1.Enabled := False ;
      sOpcion := 'Edit';
      global_movimiento := 'Modificó';
      tsDescripcion.SetFocus;
      qryCatEstatus.Edit;
      grid_estatus.Enabled := False;
    except
      on e : exception do
      begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Clasificacion de Familia de Materiales', 'Al agregar registro', 0);
      end;
    end;
//    cambio_estado;
  End;
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnPostClick(Sender: TObject);
var
  lEdicion : boolean;
  mov : String;
begin
//77  try
  frmBarra1.btnPostClick(Sender);
    if trim(tsDescripcion.Text) = '' then
    begin
       MessageDlg('La descripcion debe tener un valor!', mtInformation, [mbOk], 0);
       exit;
    end;

    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(iId_Estatus) AS id FROM rh_estatuscatalogodeequipos;');
    connection.QryBusca.Open;
    if connection.QryBusca.FieldByName('id').IsNull Then
    begin
       qryCatEstatus.FieldValues['iId_Estatus'] := 0 ;
    end
    else
     begin
       if connection.QryBusca.FieldValues['id'] = 0 then
        qryCatEstatus.FieldValues['iId_Estatus'] := 1
       else
        qryCatEstatus.FieldValues['iId_Estatus'] := connection.QryBusca.FieldValues['id'] + 1;
     end;

    qryCatEstatus.FieldValues['iColor'] := tiColores.ItemIndex;
    qryCatEstatus.Post ;
    if global_movimiento = 'Insertó' then
      mov:= 'Se realizó la inserción del Estatus de Equipos No. [' + qryCatEstatus.FieldByName('iId_Estatus').AsString + ']'
    else if global_movimiento = 'Modificó' then
      mov:= 'Se realizó la modificación del Estatus de Equipos No. [' + qryCatEstatus.FieldByName('iId_Estatus').AsString + ']';

    kardex_almacen(mov, global_movimiento);

    Insertar1.Enabled  := True ;
    Editar1.Enabled    := True ;
    Registrar1.Enabled := False ;
    Can1.Enabled       := False ;
    Eliminar1.Enabled  := True ;
    Refresh1.Enabled   := True ;

    Salir1.Enabled     := True ;
    grid_estatus.Enabled := True;

    desactivapop(popupprincipal);
  //  cambio_estado;
 // except
 //   on E:Exception do
 //   begin
 //       ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
 //   end;
  //end;

end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  global_movimiento := '';
  qryCatEstatus.Cancel;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  frmbarra1.btnPrinter.Enabled := False;
  grid_estatus.Enabled := True;
  sOpcion := '';
  global_movimiento := '';
  
end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnDeleteClick(Sender: TObject);
var mov : String;
begin
  If qryCatEstatus.RecordCount > 0 then
  begin
    if msg_yn('Desea eliminar el Registro Activo?') then
    begin
      try
        global_movimiento := 'Eliminó';
        mov:= 'Se realizó la eliminación del Estatus de Equipos No. [' + qryCatEstatus.FieldByName('iId_Estatus').AsString + ']';
        qryCatEstatus.Delete;
        kardex_almacen(mov, global_movimiento);
      except
        on e : exception do
        begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Catalogo de Estatus de Empleados', 'Al eliminar registro', 0);
        end;
      end
    end
  end;
end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnRefreshClick(Sender: TObject);
begin
  qryCatEstatus.refresh ;
end;

procedure TfrmCatalogoEstatusEquipo.Insertar1Click(Sender: TObject);
begin
      frmBarra1.btnAdd.Click
end;

procedure TfrmCatalogoEstatusEquipo.frmBarra1btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCatalogoEstatusEquipo.qryCatEstatusAfterInsert(DataSet: TDataSet);
begin
  qryCatEstatus.FieldValues['sDescripcion'] := '*' ;
  qryCatEstatus.FieldValues['iAplicaEquiposActivos'] := 'N/A' ;
end;

procedure TfrmCatalogoEstatusEquipo.qryCatEstatusAfterScroll(DataSet: TDataSet);
begin
  if qryCatEstatus.RecordCount > 0 then
  begin
    if (qryCatEstatus.State <> dsInsert) then
      tiColores.ItemIndex := qryCatEstatus.FieldValues['iColor'];
  end;
end;

procedure TfrmCatalogoEstatusEquipo.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmCatalogoEstatusEquipo.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmCatalogoEstatusEquipo.Salir1Click(Sender: TObject);
begin
frmBarra1.btnExit.Click
end;

procedure TfrmCatalogoEstatusEquipo.dbequiposEnter(Sender: TObject);
begin
  dbequipos.Color := global_color_entradaERP;
end;

procedure TfrmCatalogoEstatusEquipo.dbequiposExit(Sender: TObject);
begin
  dbequipos.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusEquipo.dbequiposKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then tsdescripcion.SetFocus;
end;

procedure TfrmCatalogoEstatusEquipo.Editar1Click(Sender: TObject);
begin
      frmBarra1.btnEdit.Click
end;

procedure TfrmCatalogoEstatusEquipo.Eliminar1Click(Sender: TObject);
begin
      frmBarra1.btnDelete.Click
end;

procedure TfrmCatalogoEstatusEquipo.tsIdGrupoKeyPress(Sender: TObject;var Key: Char);
begin
  If Key = #13 Then tsDescripcion.SetFocus
end;

procedure TfrmCatalogoEstatusEquipo.tiColoresEnter(Sender: TObject);
begin
  tiColores.Color := $00E6FEFF;
end;

procedure TfrmCatalogoEstatusEquipo.tiColoresExit(Sender: TObject);
begin
  tiColores.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusEquipo.tsDescripcionEnter(Sender: TObject);
begin
  tsDescripcion.Color := global_color_entradaERP
end;

procedure TfrmCatalogoEstatusEquipo.tsDescripcionExit(Sender: TObject);
begin
  tsDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmCatalogoEstatusEquipo.btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
   Insertar1.Enabled := True ;
   Editar1.Enabled := True ;
   Registrar1.Enabled := False ;
   Can1.Enabled := False ;
   Eliminar1.Enabled := True ;
   Refresh1.Enabled := True ;
   Salir1.Enabled   := True ;
   Close
end;

procedure TfrmCatalogoEstatusEquipo.cambio_estado;
begin
  if qryCatEstatus.State in [dsInsert,dsEdit] then
  begin
    dxInsertar.Enabled      :=False;
    dxEditar.Enabled        :=False;
    dxGuardar.Enabled       :=True;
    dxCancelar.Enabled      :=True;
    dxEliminar.Enabled      :=False;
    dxImprimir.Enabled      :=False;
    dxRefrescar.Enabled     :=False;
    dxSalir.Enabled         :=False;
    grid_estatus.Enabled    :=False;
  end else
  if qryCatEstatus.State in [dsBrowse] then
  begin
    dxInsertar.Enabled      :=True;
    dxEditar.Enabled        :=True;
    dxGuardar.Enabled       :=False;
    dxCancelar.Enabled      :=False;
    dxEliminar.Enabled      :=True;
    dxImprimir.Enabled      :=True;
    dxRefrescar.Enabled     :=True;
    dxSalir.Enabled         :=True;
    grid_estatus.Enabled    :=True;
  end;
end;
procedure TfrmCatalogoEstatusEquipo.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmCatalogoEstatusEquipo.Copy1Click(Sender: TObject);
begin
  UtGrid.AddRowsFromClip;
end;

procedure TfrmCatalogoEstatusEquipo.Cut1Click(Sender: TObject);
begin
    UtGrid.CopyRowsToClip;
end;

end.
