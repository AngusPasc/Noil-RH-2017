unit frm_EquipoSeguridad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DateUtils, Grids, DBGrids, ZAbstractRODataset, global, ZAbstractDataset, RXCtrls,
  StrUtils,  ExtCtrls, DBCtrls,
  ZAbstractTable, ZDataset, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, NxDBColumns, NxColumns,  Mask, frm_barra, frxClass,
  JvExMask, JvToolEdit, JvDBControls, Buttons, frm_connection, udbgrid, frxDBSet,
  AdvGlowButton, UnitValidaTexto, NxCollection,
  FormAutoScaler, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmEquipoSeguridad = class(TForm)
    dszQEquipos: TDataSource;
    zQEquipos: TZQuery;
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
    Label4: TLabel;
    txtFiltroDescripcion: TEdit;
    dsProvedores: TDataSource;
    zqEquiposxEmpleado: TZQuery;
    ds_EquiposxEmpleado: TDataSource;
    zqEquiposxEmpleadosNombreCompleto: TStringField;
    zqEquiposxEmpleadoiIdEquipo: TIntegerField;
    dsGrupos: TDataSource;
    grupos: TZReadOnlyQuery;
    qrySubfamilia: TZQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    ds_Subfamilia: TDataSource;
    ds_Marcas: TDataSource;
    qryMarcas: TZQuery;
    qryMarcassIdMarca: TStringField;
    qryMarcassMarca: TStringField;
    zQEquiposiIdEquipoSeguridad: TIntegerField;
    zQEquipossNumeroserie: TStringField;
    zQEquipossTalla: TStringField;
    zQEquipossMedida: TStringField;
    zQEquipossIdMarca: TStringField;
    zQEquiposiIdSubfamilia: TIntegerField;
    zQEquipossIdProveedor: TStringField;
    zQEquipossIdFamilia: TStringField;
    zQEquipossModelo: TStringField;
    zQEquiposdescripcion: TStringField;
    zQEquipossDescripcion: TMemoField;
    Filtrar: TLabel;
    cblkFamilia: TDBLookupComboBox;
    dblkSubFam: TDBLookupComboBox;
    filtroSubfam: TLabel;
    zqFiltroFam: TZQuery;
    ds_filtroFam: TDataSource;
    zQEquipossIdEquipo: TStringField;
    zqConfiguracion: TZQuery;
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
    frxDBConfiguracionn: TfrxDBDataset;
    frxseguridad: TfrxDBDataset;
    frxsegurida: TfrxReport;
    Zreporte: TZQuery;
    frxIndivSeguridad: TfrxDBDataset;
    frxIndEquipo: TfrxReport;
    zequipo: TZQuery;
    ZreporteiIdEquipoSeguridad: TIntegerField;
    ZreportesDescripcion: TMemoField;
    ZreportesNumeroserie: TStringField;
    ZreportesTalla: TStringField;
    ZreportesMedida: TStringField;
    ZreportesIdMarca: TStringField;
    ZreporteiIdSubfamilia: TIntegerField;
    ZreportesIdProveedor: TStringField;
    ZreportesIdFamilia: TStringField;
    ZreportesModelo: TStringField;
    ZreportesIdEquipo: TStringField;
    Zreportesubfamilia: TStringField;
    ZreportesMarca: TStringField;
    Zreportefamilia: TStringField;
    zequipoiIdEquipoSeguridad: TIntegerField;
    zequiposDescripcion: TMemoField;
    zequiposNumeroserie: TStringField;
    zequiposTalla: TStringField;
    zequiposMedida: TStringField;
    zequiposIdMarca: TStringField;
    zequipoiIdSubfamilia: TIntegerField;
    zequiposIdProveedor: TStringField;
    zequiposIdFamilia: TStringField;
    zequiposModelo: TStringField;
    zequiposIdEquipo: TStringField;
    zequiposubfamilia: TStringField;
    zequiposMarca: TStringField;
    zequipofamilia: TStringField;
    ZreporteiCantidad: TFloatField;
    zequipoiCantidad: TFloatField;
    Panel1: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    lbCantidad: TLabel;
    Label7: TLabel;
    cbSubfamilia: TDBLookupComboBox;
    cbxProveedor: TDBLookupComboBox;
    memoDescripcion: TDBMemo;
    txtModelo: TDBEdit;
    cbGrupos: TDBLookupComboBox;
    dbTalla: TDBEdit;
    dbMedida: TDBEdit;
    dbMarcas: TDBLookupComboBox;
    btnEntradas: TAdvGlowButton;
    idmaterial: TDBEdit;
    btnCatalogoSubFamilia: TButton;
    btnCatalogoProveedor: TButton;
    btnCatalogoMarcas: TButton;
    btnCatalogoFamilia: TButton;
    Panel2: TPanel;
    Filtros: TGroupBox;
    frmBarra1: TfrmBarra;
    fsc_EquipoS: TFormAutoScaler;
    grid_Comunidades: TcxGrid;
    grid_ComunidadesDBTableView1: TcxGridDBTableView;
    grid_ComunidadesDBTableView1Column1: TcxGridDBColumn;
    grid_ComunidadesDBTableView1Column2: TcxGridDBColumn;
    grid_ComunidadesDBTableView1Column3: TcxGridDBColumn;
    grid_ComunidadesDBTableView1Column4: TcxGridDBColumn;
    grid_ComunidadesDBTableView1Column5: TcxGridDBColumn;
    grid_ComunidadesLevel1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure txtFiltroDescripcionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure txtModeloKeyPress(Sender: TObject; var Key: Char);
    procedure txtSerieKeyPress(Sender: TObject; var Key: Char);
    procedure dtFechaCompraKeyPress(Sender: TObject; var Key: Char);
    procedure zQEquiposAfterScroll(DataSet: TDataSet);
    procedure cbGruposClick(Sender: TObject);
    procedure cbGruposKeyPress(Sender: TObject; var Key: Char);
    procedure cbxProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure dbMarcasKeyPress(Sender: TObject; var Key: Char);
    procedure dbTallaKeyPress(Sender: TObject; var Key: Char);
    procedure dbMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure cblkFamiliaClick(Sender: TObject);
    procedure dblkSubFamClick(Sender: TObject);
    procedure idmaterialKeyPress(Sender: TObject; var Key: Char);
    procedure cbSubfamiliaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure idmaterialEnter(Sender: TObject);
    procedure idmaterialExit(Sender: TObject);
    procedure cbGruposEnter(Sender: TObject);
    procedure cbGruposExit(Sender: TObject);
    procedure cbSubfamiliaEnter(Sender: TObject);
    procedure cbSubfamiliaExit(Sender: TObject);
    procedure txtModeloEnter(Sender: TObject);
    procedure txtModeloExit(Sender: TObject);
    procedure cbxProveedorEnter(Sender: TObject);
    procedure cbxProveedorExit(Sender: TObject);
    procedure memoDescripcionEnter(Sender: TObject);
    procedure memoDescripcionExit(Sender: TObject);
    procedure dbMarcasEnter(Sender: TObject);
    procedure dbMarcasExit(Sender: TObject);
    procedure dbMedidaEnter(Sender: TObject);
    procedure dbMedidaExit(Sender: TObject);
    procedure dbTallaEnter(Sender: TObject);
    procedure dbTallaExit(Sender: TObject);
    procedure btnCatalogoFamiliaClick(Sender: TObject);
    procedure btnCatalogoSubFamiliaClick(Sender: TObject);
    procedure btnCatalogoMarcasClick(Sender: TObject);
    procedure btnCatalogoProveedorClick(Sender: TObject);
    procedure memoDescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure txtFiltroDescripcionEnter(Sender: TObject);
    procedure txtFiltroDescripcionExit(Sender: TObject);
    procedure cblkFamiliaDropDown(Sender: TObject);
    procedure cblkFamiliaEnter(Sender: TObject);
    procedure dblkSubFamEnter(Sender: TObject);
    procedure dblkSubFamExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEquipoSeguridad: TfrmEquipoSeguridad;
  comboCategorias : TZquery;
  dscomboCategorias : TDataSource;
  //utgrid:ticdbgrid;
  sOpcion : string;
  EquipodeSeguridad : integer;
implementation
Uses frmCatalogoDeCategoriasDeEquipos, frm_grupofamilias, frm_SubFamProductos, frm_MarcasxSubFam, frm_proveedores;

{$R *.dfm}

procedure TfrmEquipoSeguridad.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CatalogoDeCategoriasDeEquipos, frm_CatalogoDeCategoriasDeEquipos);
  frm_CatalogoDeCategoriasDeEquipos.ShowModal;
 // qryCatEquipos.Refresh;
end;

procedure TfrmEquipoSeguridad.btnCatalogoFamiliaClick(Sender: TObject);
begin
    application.CreateForm(TfrmGrupoFamilias, frmGrupoFamilias);
    frmGrupoFamilias.ShowModal;
    grupos.Refresh;
end;

procedure TfrmEquipoSeguridad.btnCatalogoMarcasClick(Sender: TObject);
begin
      Application.CreateForm(TfrmMarcasxSubFam, frmMarcasxSubFam);
      frmMarcasxSubFam.showModal;
      qryMarcas.Refresh;
end;

procedure TfrmEquipoSeguridad.btnCatalogoProveedorClick(Sender: TObject);
begin
      Application.CreateForm(TfrmProveedores, frmProveedores);
      frmProveedores.showModal;
      qryProveedores.Refresh;

end;

procedure TfrmEquipoSeguridad.btnCatalogoSubFamiliaClick(Sender: TObject);
begin
      Application.CreateForm(TfrmSubFamProductos, frmSubFamProductos);
      frmSubFamProductos.ShowModal;
      qrysubFamilia.Refresh;

end;

procedure TfrmEquipoSeguridad.cbGruposClick(Sender: TObject);
begin
    qrysubfamilia.Active := False;
    qrysubfamilia.SQL.Clear;
    qrysubfamilia.SQL.Add('SELECT * FROM alm_subfamilia WHERE sIdFamilia = :Familia ');
    qrysubfamilia.Params.ParamByName('Familia').AsString := grupos.FieldByName('sIdFamilia').AsString;
    qrysubfamilia.Open;
end;

procedure TfrmEquipoSeguridad.cbGruposEnter(Sender: TObject);
begin
  cbGrupos.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.cbGruposExit(Sender: TObject);
begin
  cbGrupos.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.cbGruposKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
    cbSubfamilia.Setfocus
end;

procedure TfrmEquipoSeguridad.cbxProveedorEnter(Sender: TObject);
begin
  cbxProveedor.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.cbxProveedorExit(Sender: TObject);
begin
  cbxProveedor.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.cbxProveedorKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
    dbMarcas.Setfocus
end;

procedure TfrmEquipoSeguridad.cblkFamiliaClick(Sender: TObject);
begin
  if zqFiltroFam.FieldByName('sIdFamilia').AsString = '*' then
    begin
     zQEquipos.Filtered := False;
     zQEquipos.Filter := '';
     zQEquipos.Filtered := True;
    end
    else
    begin
     zQEquipos.Filtered := False;
     zQEquipos.Filter := 'sIdFamilia = '+QuotedStr(cblkFamilia.KeyValue);
     zQEquipos.Filtered := True;
    end;

    qrysubfamilia.Active := False;
    qrysubfamilia.SQL.Clear;
    qrysubfamilia.SQL.Add('SELECT * FROM alm_subfamilia WHERE sIdFamilia = :Familia ');
    qrysubfamilia.Params.ParamByName('Familia').AsString := zqFiltroFam.FieldByName('sIdFamilia').AsString;
    qrysubfamilia.Open;

end;

procedure TfrmEquipoSeguridad.cblkFamiliaDropDown(Sender: TObject);
begin
  cblkFamilia.Color := global_color_entradaERP;
end;

procedure TfrmEquipoSeguridad.cblkFamiliaEnter(Sender: TObject);
begin
   cblkFamilia.Color := global_color_salidaERP;
end;

procedure TfrmEquipoSeguridad.cbSubfamiliaEnter(Sender: TObject);
begin
  cbSubfamilia.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.cbSubfamiliaExit(Sender: TObject);
begin
  cbSubfamilia.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.cbSubfamiliaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    txtModelo.Setfocus
end;

procedure TfrmEquipoSeguridad.dblkSubFamClick(Sender: TObject);
begin
 if dblkSubFam.Text <> '' then
 begin
   zQEquipos.Filtered := False;
   zQEquipos.Filter := 'sIdFamilia = '+QuotedStr(cblkFamilia.KeyValue) + ' AND iIdSubfamilia = '+QuotedStr(IntToStr(dblkSubFam.KeyValue));
   zQEquipos.Filtered := True;
 end;
end;

procedure TfrmEquipoSeguridad.dblkSubFamEnter(Sender: TObject);
begin
   dblkSubFam.Color := global_color_entradaERP;
end;

procedure TfrmEquipoSeguridad.dblkSubFamExit(Sender: TObject);
begin
    dblkSubFam.Color := global_color_salidaERP;
end;

procedure TfrmEquipoSeguridad.dbMarcasEnter(Sender: TObject);
begin
  dbMarcas.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.dbMarcasExit(Sender: TObject);
begin
  dbMarcas.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.dbMarcasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbMedida.Setfocus
end;

procedure TfrmEquipoSeguridad.dbMedidaEnter(Sender: TObject);
begin
  dbMedida.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.dbMedidaExit(Sender: TObject);
begin
  dbMedida.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.dbMedidaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    dbTalla.Setfocus
end;

procedure TfrmEquipoSeguridad.dbTallaEnter(Sender: TObject);
begin
  dbTalla.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.dbTallaExit(Sender: TObject);
begin
  dbTalla.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.dbTallaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    idmaterial.Setfocus
end;

procedure TfrmEquipoSeguridad.dtFechaCompraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    memoDescripcion.Setfocus
end;

procedure TfrmEquipoSeguridad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //utgrid.Destroy;
  action := cafree ;
end;

procedure TfrmEquipoSeguridad.FormShow(Sender: TObject);
begin
  //UtGrid:=TicdbGrid.create(grid_Comunidades);
  comboCategorias := TZQuery.Create(self);
  comboCategorias.Connection := Connection.zConnection;
  dscomboCategorias := TDataSource.Create(self);
  dscomboCategorias.DataSet := comboCategorias;

  comboCategorias.Active := False;
  comboCategorias.SQL.Clear;
  comboCategorias.SQL.Add('SELECT "" as iId, "" as sCategoria');
  comboCategorias.SQL.Add('FROM con_catalogodeequipos_categorias');
  comboCategorias.SQL.Add('UNION');
  comboCategorias.SQL.Add('SELECT iId, sCategoria ');
  comboCategorias.SQL.Add('FROM con_catalogodeequipos_categorias');
  comboCategorias.SQL.Add('ORDER BY iId ASC;');
  comboCategorias.Open;

//  cbxFiltroCategaria.ListSource := dscomboCategorias;
//  cbxFiltroCategaria.KeyField := 'iId';
//  cbxFiltroCategaria.ListField := 'sCategoria';

  qryProveedores.Active := False;
  qryProveedores.Open;

  zQEquipos.Active := False ;
  zQEquipos.Open ;

  grupos.Active := False;
  grupos.Open;

  zqFiltroFam.Active := False;
  zqFiltroFam.Open;

  cblkFamilia.KeyValue := '*';
  qrySubfamilia.Active := False;
  qrySubfamilia.open;

  qryMarcas.Active := False;
  qryMarcas.open;

  if zQEquipos.RecordCount = 0  then
  begin
    btnEntradas.Enabled := False;
  end;
  

end;

procedure TfrmEquipoSeguridad.frmBarra1btnAddClick(Sender: TObject);
begin
  frmBarra1.btnAddClick(Sender);
  //cbxFiltroCategaria.Enabled := False;
  txtFiltroDescripcion.Enabled := False;
  comboCategorias.First;
  txtFiltroDescripcion.Text := '';
  zQEquipos.Filtered := False;
  btnEntradas.Enabled := False;
  grid_Comunidades.Enabled :=  False;
  cblkFamilia.Enabled := False;
  dblkSubFam.Enabled := False;
  idmaterial.SetFocus;
  sOpcion := 'Post'; 
  zQEquipos.Append;
end;

procedure TfrmEquipoSeguridad.frmBarra1btnCancelClick(Sender: TObject);
begin
  frmBarra1.btnCancelClick(Sender);
 // cbxFiltroCategaria.Enabled := True;
  grid_Comunidades.Enabled :=  True;
  txtFiltroDescripcion.Enabled := True;
  btnEntradas.Enabled := True;
  cblkFamilia.Enabled := True;
  dblkSubFam.Enabled := True;
  zQEquipos.Cancel
end;

procedure TfrmEquipoSeguridad.frmBarra1btnDeleteClick(Sender: TObject);
begin
 If zQEquipos.RecordCount  > 0 then
    if MessageDlg('Desea eliminar el Registro Activo?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      try
          zQEquipos.Delete
      except
        MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
      end
    end;

    if zQEquipos.RecordCount = 0  then
  begin
    btnEntradas.Enabled := False;
  end;
end;

procedure TfrmEquipoSeguridad.frmBarra1btnEditClick(Sender: TObject);
begin
  frmBarra1.btnEditClick(Sender);
  grid_Comunidades.Enabled :=  False;
    cblkFamilia.Enabled := False;
  dblkSubFam.Enabled := False;
  If zQEquipos.RecordCount > 0 Then
  begin
      btnEntradas.Enabled := False;
      //txtFiltroDescripcion.Enabled := False;
      zQEquipos.Edit ;
     
  end ;

  sOpcion := 'Edit';
end;

procedure TfrmEquipoSeguridad.frmBarra1btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  close
end;

procedure TfrmEquipoSeguridad.frmBarra1btnPostClick(Sender: TObject);
var
 nombres, cadenas : TStringList;
begin
  {Validaciones de campos}
  nombres := TStringList.Create; cadenas := TStringList.Create;

  nombres.Add('Descripcion');
  cadenas.Add(memoDescripcion.Text);

  nombres.Add('Familia');
  cadenas.Add(cbGrupos.Text);

  nombres.Add('Talla'); nombres.Add('Proveedor');
  cadenas.Add(dbTalla.Text); cadenas.Add(cbxProveedor.Text);

   nombres.Add('Marca');
  cadenas.Add(dbMarcas.Text);


  if not validaTexto(nombres, cadenas, '', '') then
  begin
    MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
    exit;
  end;

  zQEquipos.Post ;
  zQEquipos.Refresh;
  zQEquipos.Last;
  connection.QryBusca.Active :=  False;

  if sOpcion = 'Post' then  begin

  connection.QryBusca.SQL.Clear;
  connection.QryBusca.SQL.Add('INSERT INTO equiposeguridad_existencia (iIdEquipoSeguridad, iCantidad) ' +
                              'VALUES (:idEquipo, 0)');
  connection.QryBusca.Params.ParamByName('idEquipo').Value := zQEquipos.FieldByName('iIdEquipoSeguridad').AsString;
  connection.QryBusca.ExecSQL;
  end;

  grid_Comunidades.Enabled :=  True;
  txtFiltroDescripcion.Enabled := True;
  btnEntradas.Enabled := True;
  cblkFamilia.Enabled := False;
  dblkSubFam.Enabled := False;
  frmBarra1.btnPostClick(Sender);
end;

procedure TfrmEquipoSeguridad.frmBarra1btnPrinterClick(Sender: TObject);
begin
        Zreporte.Active := False;
        Zreporte.SQL.Clear;
        Zreporte.SQL.Add('select c.*, asf.sDescripcion as subfamilia,am.sMarca, f.sDescripcion as familia, ese.iCantidad from equiposeguridad c inner join alm_subfamilia asf on (asf.iIdSubfamilia = c.iIdSubfamilia) ' +
                         'left join alm_marcas am  on (am.sIdMarca = c.sIdMarca) inner join familias f on  (f.sIdFamilia = c.sIdFamilia and iAplicaEquipo = "si") ' +
                         'left join equiposeguridad_existencia ese on (ese.iIdEquipoSeguridad = c.iIdEquipoSeguridad) order by c.iIdSubfamilia');
        Zreporte.Open;

        if (cblkFamilia.Text <> 'TODOS') and (dblkSubFam.Text  <> '') then
        begin
          zequipo.Active := False;
          zequipo.SQL.Clear;
          zequipo.SQL.Add('select c.*, asf.sDescripcion as subfamilia,am.sMarca, f.sDescripcion as familia, ese.iCantidad from equiposeguridad c inner join alm_subfamilia asf on (asf.iIdSubfamilia = c.iIdSubfamilia) ' +
                         'left join alm_marcas am  on (am.sIdMarca = c.sIdMarca) inner join familias f on  (f.sIdFamilia = c.sIdFamilia and iAplicaEquipo = "si") left join ' +
                         'equiposeguridad_existencia ese on (ese.iIdEquipoSeguridad = c.iIdEquipoSeguridad) where c.sIdFamilia = :familia and c.iIdSubfamilia = :subfamilia order by c.iIdSubfamilia');

          zequipo.Params.ParamByName('familia').DataType := ftString;
          zequipo.Params.ParamByName('familia').Value := zqFiltroFam.FieldValues['sIdFamilia'];
          zequipo.Params.ParamByName('subfamilia').DataType := ftInteger;
          zequipo.Params.ParamByName('subfamilia').Value := qrysubfamilia.FieldValues['iIdSubfamilia'];
          zequipo.Open;
          if zequipo.RecordCount > 0 then
            begin
              frxIndEquipo.LoadFromFile(global_files+ 'equiposeguridadIndv.fr3');
              frxIndEquipo.ShowReport();
            end
            else
            begin
              MessageDlg('No se Encontraron Datos para la Impresión.',mtInformation,[mbOk],0);
            end;
        end;

        if (cblkFamilia.Text = 'TODOS') or  ((cblkFamilia.Text = '') and (dblkSubFam.Text = '' )) then
        if Zreporte.RecordCount > 0 then
        begin
          frxsegurida.LoadFromFile(global_files+ 'dace.fr3');
          frxsegurida.ShowReport();
        end
        else
        begin
          MessageDlg('No se Encontraron Datos para la Impresión.',mtInformation,[mbOk],0);
        end;
end;

procedure TfrmEquipoSeguridad.frmBarra1btnRefreshClick(Sender: TObject);
begin
    zQEquipos.Refresh
end;

procedure TfrmEquipoSeguridad.idmaterialEnter(Sender: TObject);
begin
  idmaterial.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.idmaterialExit(Sender: TObject);
begin
  idmaterial.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.idmaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    memoDescripcion.Setfocus
end;

procedure TfrmEquipoSeguridad.memoDescripcionEnter(Sender: TObject);
begin
  memoDescripcion.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.memoDescripcionExit(Sender: TObject);
begin
  memoDescripcion.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.memoDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then  cbGrupos.SetFocus;
   
end;

procedure TfrmEquipoSeguridad.txtFiltroDescripcionEnter(Sender: TObject);
begin
   txtFiltroDescripcion.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.txtFiltroDescripcionExit(Sender: TObject);
begin
    txtFiltroDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmEquipoSeguridad.txtFiltroDescripcionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   zQEquipos.Filtered := False;
   zQEquipos.Filter := 'sDescripcion LIKE '+QuotedStr('*'+txtFiltroDescripcion.Text+'*');
   zQEquipos.Filtered := True;
//
//      zqEquiposxEmpleado.Active:= false;
//      zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := zQEquipos.FieldByName('iId').AsInteger;
//      zqEquiposxEmpleado.Open;
//
//  end
//  else begin
//    if cbxFiltroCategaria.Text <> '' then
//    begin
//      zQEquipos.Filtered := False;
//      zQEquipos.Filter := 'iId_Categoria = ' + comboCategorias.FieldByName('iId').AsString;
//      zQEquipos.Filtered := True;
//
//      zqEquiposxEmpleado.Active:= false;
//      zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := zQEquipos.FieldByName('iId').AsInteger;
//      zqEquiposxEmpleado.Open;
//
//    end
//    else begin
//      zQEquipos.Filtered := False;
//    end;
//  end;


end;

procedure TfrmEquipoSeguridad.txtMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    txtModelo.Setfocus
end;

procedure TfrmEquipoSeguridad.txtModeloEnter(Sender: TObject);
begin
  txtModelo.Color := global_color_entradaERP
end;

procedure TfrmEquipoSeguridad.txtModeloExit(Sender: TObject);
begin
  txtModelo.Color := global_color_salidaERP
end;

procedure TfrmEquipoSeguridad.txtModeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    cbxProveedor.Setfocus
end;

procedure TfrmEquipoSeguridad.txtSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    txtModelo.Setfocus
end;

procedure TfrmEquipoSeguridad.zQEquiposAfterScroll(DataSet: TDataSet);
begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('SELECT * FROM equiposeguridad_existencia WHERE iIdEquipoSeguridad = :IdSeguridad ');
    connection.QryBusca.Params.ParamByName('IdSeguridad').Value := zQEquipos.FieldByName('iIdEquipoSeguridad').AsInteger;
    connection.QryBusca.Open;

    lbCantidad.Caption := floattostr(connection.QryBusca.FieldByName('iCantidad').AsFloat);
    EquipodeSeguridad := zQEquipos.FieldByName('iIdEquipoSeguridad').AsInteger;
//zqEquiposxEmpleado.Active:= false;
//zqEquiposxEmpleado.ParamByName('IdEquipo').AsInteger := zQEquipos.FieldByName('iId').AsInteger;
//zqEquiposxEmpleado.Open;

end;

end.
