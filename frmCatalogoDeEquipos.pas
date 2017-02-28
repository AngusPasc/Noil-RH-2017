unit frmCatalogoDeEquipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DateUtils, Grids, DBGrids, ZAbstractRODataset, global, ZAbstractDataset, RXCtrls,
  StrUtils,  ExtCtrls, DBCtrls, Utilerias,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns,  Mask, frm_barra, frxClass,
  JvExMask, JvToolEdit, JvDBControls, Buttons, frm_connection, udbgrid, frxDBSet,
  Menus, RXDBCtrl, AdvGlowButton, FormAutoScaler, cxGraphics, cxControls,
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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TCategoria = Class
  ide: Integer;
  titulo: String;
End;
  Tfrm_CatalogoDeEquipos = class(TForm)
  dszQEquipos: TDataSource;
  zQEquipos: TZQuery;
  qryCatEquipos: TZQuery;
  dsCatEquipos: TDataSource;
  qryCatEquiposiId: TIntegerField;
  qryCatEquipossCategoria: TStringField;
  qryProveedores: TZQuery;
  qryProveedoressIdProveedor: TStringField;
  qryProveedoressRFC: TStringField;
  qryProveedoressRazonSocial: TStringField;
  qryProveedoressPropietario: TStringField;
  qryProveedoressDomicilio: TStringField;
  qryProveedoressCiudad: TStringField;
  qryProveedoressCP: TStringField;
  qryProveedoressEstado: TStringField;
  qryProveedoressTelefono: TStringField;
  qryProveedoresdMontoCredito: TFloatField;
  qryProveedoreslStatus: TStringField;
  qryProveedoressCuenta: TStringField;
  Panel1: TPanel;
  Label10: TLabel;
  cbxCategorias: TDBLookupComboBox;
  BitBtn1: TBitBtn;
  Label11: TLabel;
  txtSerie: TDBEdit;
  Label12: TLabel;
  txtClave: TDBEdit;
  Label13: TLabel;
  cbxProveedor: TDBLookupComboBox;
  Label14: TLabel;
  txtNombre: TDBEdit;
  Label15: TLabel;
  dtFechaCompra: TJvDBDateEdit;
  Label16: TLabel;
  txtMarca: TDBEdit;
  Label17: TLabel;
  memoDescripcion: TDBMemo;
  Label18: TLabel;
  txtModelo: TDBEdit;
  FILTROS: TGroupBox;
  Label3: TLabel;
  dsProvedores: TDataSource;
  tsAsignado: TDBEdit;
  Lbasignado: TLabel;
  zqEquiposxEmpleado: TZQuery;
  ds_EquiposxEmpleado: TDataSource;
  zqEquiposxEmpleadosNombreCompleto: TStringField;
  zqEquiposxEmpleadoiIdEquipo: TIntegerField;
  zequipo: TZQuery;
  frxequipos: TfrxDBDataset;
  frxReport1: TfrxReport;
  frxDBConfiguracionn: TfrxDBDataset;
  zqConfiguracion: TZQuery;
  Zreporte: TZQuery;
  ZreporteiId: TIntegerField;
  ZreporteiId_Categoria: TIntegerField;
  ZreportesClave: TStringField;
  ZreportesNombre: TStringField;
  ZreportesModelo: TStringField;
  ZreportesDescripcion: TStringField;
  ZreportesMarca: TStringField;
  ZreportesNumeroSerie: TStringField;
  ZreportesIdProveedor: TStringField;
  ZreportedFechaCompra: TDateField;
  Zreportescategoria: TStringField;
  PopEquipos: TPopupMenu;
  HistorialEquipos: TMenuItem;
  frxHistorialEquipos: TfrxDBDataset;
  zqHistorialdeEquipos: TZQuery;
  IntegerField1: TIntegerField;
  StringField1: TStringField;
  StringField2: TStringField;
  StringField3: TStringField;
  StringField4: TStringField;
  IntegerField2: TIntegerField;
  StringField5: TStringField;
  StringField6: TStringField;
  StringField7: TStringField;
  DateField1: TDateField;
  zqHistorialdeEquiposiIdEquipo: TIntegerField;
  zqHistorialdeEquipossIdEmpleado: TStringField;
  zqHistorialdeEquiposdFecha_Recepcion: TDateField;
  zqHistorialdeEquiposdFecha_Remocion: TDateField;
  zqHistorialdeEquipossStatus_Recepcion: TStringField;
  zqHistorialdeEquipossStatus_Entrega: TStringField;
  zqHistorialdeEquiposbActivo: TStringField;
  zqHistorialdeEquipossNombreEntrega: TStringField;
  zqHistorialdeEquipossNombreAutorizacion: TStringField;
  zqHistorialdeEquiposiId_1: TIntegerField;
  zqHistorialdeEquiposbStatus: TStringField;
  zqHistorialdeEquipossNombreCompleto: TStringField;
  Panel2: TPanel;
  frmBarra1: TfrmBarra;
  Splitter1: TSplitter;
  zqHistorialdeEquipossApellidoPaterno: TStringField;
  zqHistorialdeEquipossApellidoMaterno: TStringField;
  BitBtn2: TBitBtn;
  Label1: TLabel;
  dsCatEstatus: TDataSource;
  qryCatEstatus: TZReadOnlyQuery;
  zQEquiposiId: TIntegerField;
  zQEquiposiId_Categoria: TIntegerField;
  zQEquipossClave: TStringField;
  zQEquipossNombre: TStringField;
  zQEquipossModelo: TStringField;
  zQEquipossDescripcion: TStringField;
  zQEquipossMarca: TStringField;
  zQEquipossNumeroSerie: TStringField;
  zQEquipossIdProveedor: TStringField;
  zQEquiposdFechaCompra: TDateField;
  zQEquiposbStatus: TStringField;
  zQEquiposiId_Estatus: TIntegerField;
  tsCatEstatus: TDBLookupComboBox;
  qryCatEstatusiId_Estatus: TIntegerField;
  qryCatEstatussDescripcion: TStringField;
  qryCatEstatusiColor: TIntegerField;
  qryCatEstatusiAplicaEquiposActivos: TStringField;
  zq_EquiposPorEmpleado: TZQuery;
  zq_EquiposPorEmpleadoiId: TIntegerField;
  zq_EquiposPorEmpleadobActivo: TStringField;
  ds_EquiposPorEmpleado: TDataSource;
  zq_EquiposPorEmpleadoiIdEquipo: TIntegerField;
  zq_EquiposPorEmpleadosIdEmpleado: TStringField;
  zq_EquiposPorEmpleadodFecha_Recepcion: TDateField;
  zq_EquiposPorEmpleadodFecha_Remocion: TDateField;
  zq_EquiposPorEmpleadosStatus_Recepcion: TStringField;
  zq_EquiposPorEmpleadosStatus_Entrega: TStringField;
  zq_EquiposPorEmpleadosNombreEntrega: TStringField;
  zq_EquiposPorEmpleadosNombreAutorizacion: TStringField;
  ReporteEquiposDisponibles1: TMenuItem;
  ReporteEquiposNoDisponibles1: TMenuItem;
  frxDBEquipos: TfrxDBDataset;
    fsc_CatdeEquipos: TFormAutoScaler;
    zqConfiguracionsNombre: TStringField;
    zqConfiguracionsNombreCorto: TStringField;
    zqConfiguracionsRfc: TStringField;
    zqConfiguracionsDireccion1: TStringField;
    zqConfiguracionsDireccion2: TStringField;
    zqConfiguracionsDireccion3: TStringField;
    zqConfiguracionsSlogan: TStringField;
    zqConfiguracionsPiePagina: TStringField;
    zqConfiguracionbImagen: TBlobField;
    zqConfiguracionsTelefono: TStringField;
    zqConfiguracionsFax: TStringField;
    zqConfiguracionsEmail: TStringField;
    zqConfiguracionsWeb: TStringField;
    zqConfiguracionsRepresentante: TStringField;
    zqConfiguracionsFirmante2: TStringField;
    zqConfiguracionsFirmante3: TStringField;
    zqConfiguracionsCiudad: TStringField;
    zqConfiguracionbLogoFondo: TBlobField;
    zqConfiguracionbImagenCliente: TBlobField;
    zqConfiguracionsDomicilio_Firmante1: TStringField;
    zqConfiguracionsDomicilio_Firmante2: TStringField;
    zqConfiguracionsNotario: TStringField;
    zqConfiguracionsDomicilio_Notario: TStringField;
    zqConfiguracionsPostulanteMasc: TStringField;
    zqConfiguracioniPostulanteConsec: TLargeintField;
    zqConfiguracionsEmpleadoMasc: TStringField;
    zqConfiguracioniEmpleadoConsec: TLargeintField;
    zqConfiguracioneNomina: TStringField;
    btnProveedores: TBitBtn;
    grid_equipos: TcxGrid;
    BView_areas: TcxGridDBTableView;
    sClave: TcxGridDBColumn;
    sNombre: TcxGridDBColumn;
    grid_equiposLevel1: TcxGridLevel;
    sModelo: TcxGridDBColumn;
    sDescripcion: TcxGridDBColumn;
    tsCategorias: TDBLookupComboBox;
    ds_categorias: TDataSource;
    QryCategorias: TZReadOnlyQuery;
    Estado: TcxGridDBColumn;
    zQEquiposestado: TStringField;
    dtFechaCompra1: TJvDBDateEdit;
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure frmBarra1btnAddClick(Sender: TObject);
  procedure frmBarra1btnEditClick(Sender: TObject);
  procedure frmBarra1btnPostClick(Sender: TObject);
  procedure frmBarra1btnCancelClick(Sender: TObject);
  procedure frmBarra1btnDeleteClick(Sender: TObject);
  procedure frmBarra1btnRefreshClick(Sender: TObject);
  procedure frmBarra1btnExitClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure cbxCategoriasKeyPress(Sender: TObject; var Key: Char);
  procedure txtClaveKeyPress(Sender: TObject; var Key: Char);
  procedure txtNombreKeyPress(Sender: TObject; var Key: Char);
  procedure txtMarcaKeyPress(Sender: TObject; var Key: Char);
  procedure txtModeloKeyPress(Sender: TObject; var Key: Char);
  procedure txtSerieKeyPress(Sender: TObject; var Key: Char);
  procedure cbxProveedorKeyPress(Sender: TObject; var Key: Char);
  procedure dtFechaCompraKeyPress(Sender: TObject; var Key: Char);
  procedure zQEquiposAfterScroll(DataSet: TDataSet);
  procedure grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
  procedure grid_ComunidadesMouseUp(Sender: TObject; Button: TMouseButton;Shift: TShiftState; X, Y: Integer);
  procedure grid_ComunidadesTitleClick(Column: TColumn);
  procedure frmBarra1btnPrinterClick(Sender: TObject);
  procedure cbxCategoriassEnter(Sender: TObject);
  procedure cbxCategoriasExit(Sender: TObject);
  procedure txtClaveEnter(Sender: TObject);
  procedure txtClaveExit(Sender: TObject);
  procedure txtNombreEnter(Sender: TObject);
  procedure txtNombreExit(Sender: TObject);
  procedure txtMarcaEnter(Sender: TObject);
  procedure txtMarcaExit(Sender: TObject);
  procedure txtModeloEnter(Sender: TObject);
  procedure txtModeloExit(Sender: TObject);
  procedure txtSerieEnter(Sender: TObject);
  procedure txtSerieExit(Sender: TObject);
  procedure cbxProveedorEnter(Sender: TObject);
  procedure cbxProveedorExit(Sender: TObject);
  procedure dtFechaCompraEnter(Sender: TObject);
  procedure dtFechaCompraExit(Sender: TObject);
  procedure memoDescripcionEnter(Sender: TObject);
  procedure memoDescripcionExit(Sender: TObject);
  procedure tsAsignadoEnter(Sender: TObject);
  procedure tsAsignadoExit(Sender: TObject);
  procedure HistorialEquiposClick(Sender: TObject);
  procedure Grid_equiposGetCellParams(Sender: TObject; Field: TField;AFont: TFont; var Background: TColor; Highlight: Boolean);
  procedure BitBtn2Click(Sender: TObject);
  procedure tsCatEstatusEnter(Sender: TObject);
  procedure tsCatEstatusExit(Sender: TObject);
  procedure tsCatEstatusKeyPress(Sender: TObject; var Key: Char);
  procedure ReporteEquiposDisponibles1Click(Sender: TObject);
  procedure ReporteEquiposNoDisponibles1Click(Sender: TObject);
  procedure actualizacion;
  procedure btnRefreshClick(Sender: TObject);
  procedure BitBtn1Click(Sender: TObject);
  procedure btnProveedoresClick(Sender: TObject);
  procedure ds_categoriasDataChange(Sender: TObject; Field: TField);
  procedure zQEquiposCalcFields(DataSet: TDataSet);
    procedure dtFechaCompra1Enter(Sender: TObject);
    procedure dtFechaCompra1Exit(Sender: TObject);
    procedure dtFechaCompra1KeyPress(Sender: TObject; var Key: Char);
    procedure tsCategoriasEnter(Sender: TObject);
    procedure tsCategoriasExit(Sender: TObject);
  private
    { Private declarations }
    TipoCategoria: TCategoria;
  public
    idproveedor : string;
    { Public declarations }
  end;
  //
var
  frm_CatalogoDeEquipos: Tfrm_CatalogoDeEquipos;
  comboCategorias   :     TZquery;
  dscomboCategorias : TDataSource;
  utgrid :      ticdbgrid;
  idcat, sOpcion : String;
implementation
Uses frmCatalogoDeCategoriasDeEquipos, frm_catalogoestatusequipo, frm_proveedores;

{$R *.dfm}

procedure Tfrm_CatalogoDeEquipos.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CatalogoDeCategoriasDeEquipos, frm_CatalogoDeCategoriasDeEquipos);
  frm_CatalogoDeCategoriasDeEquipos.ShowModal;
  qryCatEquipos.Refresh;
end;

procedure Tfrm_CatalogoDeEquipos.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCatalogoEstatusEquipo, frmCatalogoEstatusEquipo);
  frmCatalogoEstatusEquipo.ShowModal;
  qryCatEstatus.Refresh;
end;

procedure Tfrm_CatalogoDeEquipos.btnProveedoresClick(Sender: TObject);
begin
  bandera_formulario := 'frm_CatalogoDeEquipos'  ;
  Application.CreateForm(TfrmProveedores, frmProveedores);
  frmProveedores.Show;

  qryProveedores.active :=       false;
  qryProveedores.open;
  cbxproveedor.KeyValue := idproveedor;
end;

procedure Tfrm_CatalogoDeEquipos.btnRefreshClick(Sender: TObject);
begin
  actualizacion;
end;

procedure Tfrm_CatalogoDeEquipos.cbxCategoriassEnter(Sender: TObject);
begin
  cbxCategorias.Color := global_color_entradaERP;
end;

procedure Tfrm_CatalogoDeEquipos.cbxCategoriasExit(Sender: TObject);
begin
  cbxCategorias.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDeEquipos.cbxCategoriasKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then txtClave.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.cbxProveedorEnter(Sender: TObject);
begin
  cbxProveedor.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.cbxProveedorExit(Sender: TObject);
begin
  cbxProveedor.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.cbxProveedorKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then dtFechaCompra.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.ds_categoriasDataChange(Sender: TObject;
  Field: TField);
begin
  if sOpcion = '' then
  begin
    if tsCategorias.KeyValue = 0 then
      zqEquipos.Filtered := False
    else
    begin
      zqEquipos.Filtered := False;
      zqEquipos.Filter   := 'iId_Categoria = '+ QuotedStr(IntToStr(qryCategorias.FieldByName('iId').AsInteger));
      zqEquipos.Filtered :=  True;
    end;
  end;
end;

procedure Tfrm_CatalogoDeEquipos.dtFechaCompra1Enter(Sender: TObject);
begin
  dtFechaCompra1.Color := global_Color_salidaERP;
end;

procedure Tfrm_CatalogoDeEquipos.dtFechaCompra1Exit(Sender: TObject);
begin
  dtFechaCompra1.Color := global_Color_salidaERP;
end;

procedure Tfrm_CatalogoDeEquipos.dtFechaCompra1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key  = #13  then memoDescripcion.SetFocus;
end;

procedure Tfrm_CatalogoDeEquipos.dtFechaCompraEnter(Sender: TObject);
begin
  dtFechaCompra.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.dtFechaCompraExit(Sender: TObject);
begin
  dtFechaCompra.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.dtFechaCompraKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then memoDescripcion.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  action := cafree ;
end;

procedure Tfrm_CatalogoDeEquipos.FormShow(Sender: TObject);
begin
  comboCategorias   :=     TZQuery.Create(self);
  dscomboCategorias := TDataSource.Create(self);
  dscomboCategorias.DataSet :=  comboCategorias;
  TipoCategoria     :=        TCategoria.Create;
  comboCategorias.Connection := Connection.zConnection;
  actualizacion;
  zqConfiguracion.Active := False;
  zqConfiguracion.SQL.Clear;
  zqConfiguracion.SQL.Add('select * from rh_configuracion where sNombreCorto = :contrato');
  zqConfiguracion.ParamByName('contrato').AsString := global_contrato;
  zqConfiguracion.Open;

  qryCategorias.Active  := False;
  qryCategorias.Open;

  qryCatEquipos.Active  := False;
  qryCatEquipos.Open;

  qryCatEstatus.Active  := False;
  qryCatEstatus.Open;

  qryProveedores.Active := False;
  qryProveedores.Open;

  tsCategorias.KeyValue :=     0;

  zqEquipos.Active      := False;
  zqEquipos.Open;
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  tsCategorias.Enabled   := False;
  dtFechaCompra1.Enabled :=  True;
  tsCatEstatus.Enabled   :=  True;
  grid_equipos.Enabled   := False;

  zQEquipos.Append;
  zQEquipos.FieldByName('bStatus').AsString := '1';
  if qryCatEstatus.RecordCount > 0 then
  begin
    tsCatEstatus.KeyValue := 1;
    zQEquipos.FieldValues['iId_Estatus'] :=  tsCatEstatus.KeyValue;
   end;
   sOpcion := 'New';

  zQEquipos.FieldValues['iId_Categoria'] := cbxCategorias.KeyValue;
  dtFechaCompra1.date := date;
  cbxCategorias.SetFocus;
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
  tsCategorias.Enabled := True;
  grid_equipos.Enabled := True;
  zQEquipos.Cancel;
  sOpcion :=    '';
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnDeleteClick(Sender: TObject);
begin
  try
    If zQEquipos.RecordCount  > 0 then
      if MessageDlg('Desea eliminar el Registro Activo?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        try
          connection.QryBusca.Active := False;
          connection.QryBusca.SQL.Clear;
          connection.QryBusca.SQL.Add('SELECT * FROM con_equiposporempleado WHERE iIdEquipo = '+ zQEquipos.FieldByName('iId').AsString);
          connection.QryBusca.Open;
          if connection.QryBusca.RecordCount = 0 then zQEquipos.Delete
          else MessageDlg('NO SE PUEDE BORRAR, ESTA ASIGNADO A UN EMPLEADO.', mtError, [mbOk], 0);
        except
          MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
        end
      end
  except
    on E:Exception do
      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
  end;
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  If zQEquipos.RecordCount > 0 Then
  begin
    grid_equipos.Enabled := False;
    tsCategorias.Enabled := False;
    zQEquipos.Edit;
    cbxCategorias.SetFocus;
    tsCatEstatus.SetFocus;
    dtFechaCompra1.date := date;
    sOpcion := 'New';
  end ;
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close;
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnPostClick(Sender: TObject);
begin
  try
    zq_EquiposPorEmpleado.Active := False ;
    zq_EquiposPorEmpleado.SQL.Clear ;
    zq_EquiposPorEmpleado.SQL.Add('Select * from con_equiposporempleado Where iIdEquipo = :Id');
    zq_EquiposPorEmpleado.Params.ParamByName('Id').DataType := ftString ;
    zq_EquiposPorEmpleado.Params.ParamByName('Id').Value    := zQEquipos.FieldValues['iId'] ;
    zq_EquiposPorEmpleado.Open;
    if zq_EquiposPorEmpleado.FieldByName('bActivo').AsString = 'Si' then
    begin
      MessageDlg('No se puede cambiar estatus, el equipo esta asignado a un empleado', mtInformation,[mbOk],0);
      Exit;
    end else
    begin
      if qryCatEstatus.FieldValues['iAplicaEquiposActivos'] = 'Si' then
        zQEquipos.FieldValues['bStatus']    := '1'
      else zQEquipos.FieldValues['bStatus'] := '0';
    end;
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT MAX(iId) AS id FROM con_catalogodeequipos;');
    connection.QryBusca.Open;
    if connection.QryBusca.FieldValues['id'] = null then
    begin
      zQEquipos.FieldValues['iId'] := 1;
    end else
    begin
      zQEquipos.FieldValues['iId'] := connection.QryBusca.FieldValues['id'] + 1;
    end;
    zQEquipos.FieldValues['iId_categoria'] := QryCatEquipos.FieldByName('iId').AsInteger;
    zQEquipos.Post;
    QryCategorias.Refresh;
    tsCategorias.Enabled := True;
    grid_equipos.Enabled := True;
    frmBarra1.btnPostClick(Sender);
    sOpcion := '';
  except
    on E:Exception do
      ShowMessage('Ocurrio un error al Insertar, intentelo nuevamente mas tarde.' + E.Message);
  end;
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnPrinterClick(Sender: TObject);
begin

  if not FileExists(global_files + global_miReporte + '_generalequipo.fr3') then
  begin
    showmessage('El archivo de reporte '+global_Mireporte+'_generalequipo.fr3 no existe, notifique al administrador del sistema');
    exit;
  end;

  Zreporte.Active := False;
  Zreporte.SQL.Clear;
  Zreporte.SQL.Add('select c.*, cat.sCategoria from con_catalogodeequipos c inner join con_catalogodeequipos_categorias cat on (c.iId_Categoria = cat.iId) ');
  if tsCategorias.Text = '<Todas>' then
      zReporte.SQL.Add(' order by iId_Categoria, sClave ')
  else
  begin
    zReporte.SQL.Add(' where c.iId_categoria =:Categoria order by iId_Categoria, sClave ');
    Zreporte.Params.ParamByName('categoria').Value := tsCategorias.KeyValue;
  end;
  Zreporte.Open;
  frxReport1.LoadFromFile(global_files + global_Mireporte +'_generalequipo.fr3');
  frxReport1.ShowReport();
end;

procedure Tfrm_CatalogoDeEquipos.frmBarra1btnRefreshClick(Sender: TObject);
begin
  zQEquipos.Refresh
end;

procedure Tfrm_CatalogoDeEquipos.grid_ComunidadesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure Tfrm_CatalogoDeEquipos.grid_ComunidadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure Tfrm_CatalogoDeEquipos.grid_ComunidadesTitleClick(Column: TColumn);
begin
  UtGrid.DbGridTitleClick(Column);
end;

procedure Tfrm_CatalogoDeEquipos.Grid_equiposGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if zQEquipos.RecordCount > 0 then
      begin
        if zQEquipos.FieldByName('bStatus').AsInteger  = 0 then  //Si el equipo esta disponible aparece sin colr
        begin
          AFont.Color := esColor(6);
          Background := Global.EsBkColor [2];
        end else if zQEquipos.FieldByName('bStatus').AsInteger  = 1 then AFont.Color := esColor(12);  //Si el equipo esta como no disponible se colorea de azul
      end;
  except
  end;
end;

procedure Tfrm_CatalogoDeEquipos.HistorialEquiposClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_HistorialPorEquipos.fr3') then
  begin
    showmessage('El archivo de reporte '+global_Mireporte+'_HistorialPorEquipos.fr3 no existe, notifique al administrador del sistema');
    exit;
  end;

  zqHistorialdeEquipos.Active := False;
  zqHistorialdeEquipos.Params.ParamByName('iIdEquipo').AsInteger := zQEquipos.FieldByName('iId').AsInteger;
  zqHistorialdeEquipos.Open;
  if zqHistorialdeEquipos.RecordCount > 0 then
  begin
    frxReport1.LoadFromFile(global_files + global_Mireporte + '_HistorialPorEquipos.fr3') ;
    frxReport1.ShowReport();
  end else showmessage('Este Equipo NO Tiene Historial de Movimientos.');
end;

procedure Tfrm_CatalogoDeEquipos.memoDescripcionEnter(Sender: TObject);
begin
  memoDescripcion.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.memoDescripcionExit(Sender: TObject);
begin
  memoDescripcion.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.ReporteEquiposDisponibles1Click(Sender: TObject);
var
  Qrdatos:TzReadOnlyQUery;
begin
  if not FileExists(global_files + global_miReporte + '_EquiposDisponibles.fr3') then
  begin
    showmessage('El archivo de reporte '+global_Mireporte+'_EquiposDisponibles.fr3 no existe, notifique al administrador del sistema');
    exit;
  end;

  Qrdatos:=TzReadOnlyQuery.Create(nil);

  try
    Qrdatos.Connection:=Connection.zConnection;

    if tsCategorias.Text='<Todas>' then
      QrDatos.SQL.Text:='Select * from con_catalogodeequipos where bStatus = 1'
    else
    begin
      idcat:=(inttoSTR(tsCategorias.KeyValue));
      QrDatos.SQL.Text:='Select * from con_catalogodeequipos where bStatus = 1 and iId_Categoria = '+idcat;
    end;
    
    QrDatos.open;
    frxDBEquipos.DataSet:=QrDatos;
    frxDBEquipos.FieldAliases.Clear;
    frxReport1.LoadFromFile(global_files + global_MiReporte +'_EquiposDisponibles.fr3') ;
    frxReport1.ShowReport();
  finally
    Qrdatos.Destroy;
  end;
end;

procedure Tfrm_CatalogoDeEquipos.ReporteEquiposNoDisponibles1Click(Sender: TObject);
var
  Qrdatos:TzReadOnlyQUery;
begin
  if not FileExists(global_files + global_miReporte + '_EquiposNoDisponibles.fr3') then
  begin
    showmessage('El archivo de reporte '+global_Mireporte+'_EquiposNoDisponibles.fr3 no existe, notifique al administrador del sistema');
    exit;
  end;

  Qrdatos:=TzReadOnlyQuery.Create(nil);

  try
    Qrdatos.Connection:=Connection.zConnection;

    if tsCategorias.Text='<Todas>' then
      QrDatos.SQL.Text:='Select * from con_catalogodeequipos where bStatus <> 1'
    else
    begin
      idcat:=(inttoSTR(tsCategorias.KeyValue));
      QrDatos.SQL.Text:='Select * from con_catalogodeequipos where bStatus <> 1 and iId_Categoria = '+idcat;
    end;
    
    QrDatos.open;
    frxDBEquipos.DataSet:=QrDatos;
    frxDBEquipos.FieldAliases.Clear;
    frxReport1.LoadFromFile(global_files + global_MiReporte +'_EquiposNoDisponibles.fr3') ;
    frxReport1.ShowReport();
  finally
    Qrdatos.Destroy;
  end;
end;

procedure Tfrm_CatalogoDeEquipos.tsAsignadoEnter(Sender: TObject);
begin
  tsAsignado.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.tsAsignadoExit(Sender: TObject);
begin
  tsAsignado.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.tsCategoriasEnter(Sender: TObject);
begin
  tsCategorias.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.tsCategoriasExit(Sender: TObject);
begin
   tsCatEstatus.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.tsCatEstatusEnter(Sender: TObject);
begin
  tsCatEstatus.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.tsCatEstatusExit(Sender: TObject);
begin
  tsCatEstatus.Color := global_color_salidaERP;
end;

procedure Tfrm_CatalogoDeEquipos.tsCatEstatusKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tsCatEstatus.SetFocus;
end;

procedure Tfrm_CatalogoDeEquipos.txtClaveEnter(Sender: TObject);
begin
  txtClave.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtClaveExit(Sender: TObject);
begin
  txtClave.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtClaveKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then txtNombre.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.txtMarcaEnter(Sender: TObject);
begin
  txtMarca.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtMarcaExit(Sender: TObject);
begin
  txtMarca.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtMarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then txtModelo.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.txtModeloEnter(Sender: TObject);
begin
  txtModelo.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtModeloExit(Sender: TObject);
begin
  txtModelo.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtModeloKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then txtSerie.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.txtNombreEnter(Sender: TObject);
begin
  txtNombre.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtNombreExit(Sender: TObject);
begin
  txtNombre.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtNombreKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then txtMarca.Setfocus
end;

procedure Tfrm_CatalogoDeEquipos.txtSerieEnter(Sender: TObject);
begin
  txtSerie.Color := global_color_entradaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtSerieExit(Sender: TObject);
begin
  txtSerie.Color := global_color_salidaERP
end;

procedure Tfrm_CatalogoDeEquipos.txtSerieKeyPress(Sender: TObject;var Key: Char);
begin
  if Key = #13 then cbxProveedor.SetFocus;
end;

procedure Tfrm_CatalogoDeEquipos.zQEquiposAfterScroll(DataSet: TDataSet);
begin
  zqEquiposxEmpleado.Active := false;
  zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := zQEquipos.FieldByName('iId').AsInteger;
  zqEquiposxEmpleado.Open;
end;

procedure Tfrm_CatalogoDeEquipos.zQEquiposCalcFields(DataSet: TDataSet);
begin
  if zqEquipos.RecordCount > 0 then
  begin
    if zqEquipos.FieldByName('bStatus').AsInteger = 0 then
       zqEquipos.FieldByName('estado').AsString := 'OCUPADO'
    else
       zqEquipos.FieldByName('estado').AsString := 'DISPONIBLE';
  end;
end;

procedure Tfrm_CatalogoDeEquipos.actualizacion;
begin
  zqConfiguracion.Active := False;
  zqConfiguracion.ParamByName('contrato').AsString := global_contrato;
  zqConfiguracion.Open;
end;
end.
